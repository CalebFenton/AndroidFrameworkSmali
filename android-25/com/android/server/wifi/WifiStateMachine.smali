.class public Lcom/android/server/wifi/WifiStateMachine;
.super Lcom/android/internal/util/StateMachine;
.source "WifiStateMachine.java"

# interfaces
.implements Lcom/android/server/wifi/WifiNative$WifiRssiEventHandler;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;,
        Lcom/android/server/wifi/WifiStateMachine$ConnectedState;,
        Lcom/android/server/wifi/WifiStateMachine$DefaultState;,
        Lcom/android/server/wifi/WifiStateMachine$DisconnectedState;,
        Lcom/android/server/wifi/WifiStateMachine$DisconnectingState;,
        Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;,
        Lcom/android/server/wifi/WifiStateMachine$DriverStartingState;,
        Lcom/android/server/wifi/WifiStateMachine$DriverStoppedState;,
        Lcom/android/server/wifi/WifiStateMachine$DriverStoppingState;,
        Lcom/android/server/wifi/WifiStateMachine$InitialState;,
        Lcom/android/server/wifi/WifiStateMachine$IpManagerCallback;,
        Lcom/android/server/wifi/WifiStateMachine$L2ConnectedState;,
        Lcom/android/server/wifi/WifiStateMachine$ObtainingIpState;,
        Lcom/android/server/wifi/WifiStateMachine$RoamingState;,
        Lcom/android/server/wifi/WifiStateMachine$ScanModeState;,
        Lcom/android/server/wifi/WifiStateMachine$SimAuthRequestData;,
        Lcom/android/server/wifi/WifiStateMachine$SoftApState;,
        Lcom/android/server/wifi/WifiStateMachine$SupplicantStartedState;,
        Lcom/android/server/wifi/WifiStateMachine$SupplicantStartingState;,
        Lcom/android/server/wifi/WifiStateMachine$SupplicantStoppingState;,
        Lcom/android/server/wifi/WifiStateMachine$UntrustedWifiNetworkFactory;,
        Lcom/android/server/wifi/WifiStateMachine$WaitForP2pDisableState;,
        Lcom/android/server/wifi/WifiStateMachine$WifiNetworkAgent;,
        Lcom/android/server/wifi/WifiStateMachine$WifiNetworkFactory;,
        Lcom/android/server/wifi/WifiStateMachine$WpsRunningState;
    }
.end annotation


# static fields
.field private static final ADD_OR_UPDATE_SOURCE:I = -0x3

.field static final BASE:I = 0x20000

.field static final CMD_ACCEPT_UNVALIDATED:I = 0x20099

.field static final CMD_ADD_OR_UPDATE_NETWORK:I = 0x20034

.field static final CMD_ADD_PASSPOINT_MO:I = 0x20066

.field static final CMD_AP_STOPPED:I = 0x20018

.field static final CMD_ASSOCIATED_BSSID:I = 0x20093

.field static final CMD_AUTO_CONNECT:I = 0x2008f

.field static final CMD_AUTO_ROAM:I = 0x20091

.field static final CMD_AUTO_SAVE_NETWORK:I = 0x20092

.field static final CMD_BLACKLIST_NETWORK:I = 0x20038

.field static final CMD_BLUETOOTH_ADAPTER_STATE_CHANGE:I = 0x2001f

.field public static final CMD_BOOT_COMPLETED:I = 0x20086

.field static final CMD_CLEAR_BLACKLIST:I = 0x20039

.field static final CMD_CONFIG_ND_OFFLOAD:I = 0x200cc

.field static final CMD_DELAYED_NETWORK_DISCONNECT:I = 0x20057

.field static final CMD_DISABLE_EPHEMERAL_NETWORK:I = 0x20062

.field public static final CMD_DISABLE_P2P_REQ:I = 0x20084

.field public static final CMD_DISABLE_P2P_RSP:I = 0x20085

.field static final CMD_DISCONNECT:I = 0x20049

.field static final CMD_DISCONNECTING_WATCHDOG_TIMER:I = 0x20060

.field static final CMD_DRIVER_START_TIMED_OUT:I = 0x20013

.field static final CMD_ENABLE_ALL_NETWORKS:I = 0x20037

.field static final CMD_ENABLE_AUTOJOIN_WHEN_ASSOCIATED:I = 0x200a7

.field static final CMD_ENABLE_NETWORK:I = 0x20036

.field public static final CMD_ENABLE_P2P:I = 0x20083

.field static final CMD_ENABLE_RSSI_POLL:I = 0x20052

.field static final CMD_ENABLE_TDLS:I = 0x2005c

.field static final CMD_ENABLE_WIFI_CONNECTIVITY_MANAGER:I = 0x200a6

.field static final CMD_FIRMWARE_ALERT:I = 0x20064

.field static final CMD_GET_CAPABILITY_FREQ:I = 0x2003c

.field static final CMD_GET_CONFIGURED_NETWORKS:I = 0x2003b

.field static final CMD_GET_CONNECTION_STATISTICS:I = 0x2004c

.field static final CMD_GET_LINK_LAYER_STATS:I = 0x2003f

.field static final CMD_GET_MATCHING_CONFIG:I = 0x20063

.field static final CMD_GET_PRIVILEGED_CONFIGURED_NETWORKS:I = 0x2003e

.field static final CMD_GET_SUPPORTED_FEATURES:I = 0x2003d

.field static final CMD_INSTALL_PACKET_FILTER:I = 0x200ca

.field static final CMD_IPV4_PROVISIONING_FAILURE:I = 0x200c9

.field static final CMD_IPV4_PROVISIONING_SUCCESS:I = 0x200c8

.field static final CMD_IP_CONFIGURATION_LOST:I = 0x2008b

.field static final CMD_IP_CONFIGURATION_SUCCESSFUL:I = 0x2008a

.field static final CMD_IP_REACHABILITY_LOST:I = 0x20095

.field static final CMD_MATCH_PROVIDER_NETWORK:I = 0x20069

.field static final CMD_MODIFY_PASSPOINT_MO:I = 0x20067

.field static final CMD_NETWORK_STATUS:I = 0x20094

.field static final CMD_NO_NETWORKS_PERIODIC_SCAN:I = 0x20058

.field static final CMD_OBTAINING_IP_ADDRESS_WATCHDOG_TIMER:I = 0x2005d

.field static final CMD_PING_SUPPLICANT:I = 0x20033

.field static final CMD_QUERY_OSU_ICON:I = 0x20068

.field static final CMD_REASSOCIATE:I = 0x2004b

.field static final CMD_RECONNECT:I = 0x2004a

.field static final CMD_RELOAD_TLS_AND_RECONNECT:I = 0x2008e

.field static final CMD_REMOVE_APP_CONFIGURATIONS:I = 0x20061

.field static final CMD_REMOVE_NETWORK:I = 0x20035

.field static final CMD_REMOVE_USER_CONFIGURATIONS:I = 0x20098

.field static final CMD_RESET_SIM_NETWORKS:I = 0x20065

.field static final CMD_RESET_SUPPLICANT_STATE:I = 0x2006f

.field static final CMD_ROAM_WATCHDOG_TIMER:I = 0x2005e

.field static final CMD_RSSI_POLL:I = 0x20053

.field static final CMD_RSSI_THRESHOLD_BREACH:I = 0x200a4

.field static final CMD_SAVE_CONFIG:I = 0x2003a

.field static final CMD_SCREEN_STATE_CHANGED:I = 0x2005f

.field static final CMD_SET_FALLBACK_PACKET_FILTERING:I = 0x200cb

.field static final CMD_SET_FREQUENCY_BAND:I = 0x2005a

.field static final CMD_SET_HIGH_PERF_MODE:I = 0x2004d

.field static final CMD_SET_OPERATIONAL_MODE:I = 0x20048

.field static final CMD_SET_SUSPEND_OPT_ENABLED:I = 0x20056

.field static final CMD_START_AP:I = 0x20015

.field static final CMD_START_AP_FAILURE:I = 0x20016

.field static final CMD_START_DRIVER:I = 0x2000d

.field static final CMD_START_IP_PACKET_OFFLOAD:I = 0x200a0

.field static final CMD_START_RSSI_MONITORING_OFFLOAD:I = 0x200a2

.field static final CMD_START_SCAN:I = 0x20047

.field static final CMD_START_SUPPLICANT:I = 0x2000b

.field static final CMD_STATIC_IP_FAILURE:I = 0x20010

.field static final CMD_STATIC_IP_SUCCESS:I = 0x2000f

.field static final CMD_STOP_AP:I = 0x20017

.field static final CMD_STOP_DRIVER:I = 0x2000e

.field static final CMD_STOP_IP_PACKET_OFFLOAD:I = 0x200a1

.field static final CMD_STOP_RSSI_MONITORING_OFFLOAD:I = 0x200a3

.field static final CMD_STOP_SUPPLICANT:I = 0x2000c

.field static final CMD_STOP_SUPPLICANT_FAILED:I = 0x20011

.field static final CMD_TARGET_BSSID:I = 0x2008d

.field static final CMD_TEST_NETWORK_DISCONNECT:I = 0x20059

.field static final CMD_UNWANTED_NETWORK:I = 0x20090

.field static final CMD_UPDATE_ASSOCIATED_SCAN_PERMISSION:I = 0x2009e

.field static final CMD_UPDATE_LINKPROPERTIES:I = 0x2008c

.field static final CMD_USER_SWITCH:I = 0x200a5

.field public static final CONNECT_MODE:I = 0x1

.field private static final CONNECT_TIMEOUT_MSEC:I = 0xbb8

.field private static final CUSTOMIZED_SCAN_SETTING:Ljava/lang/String; = "customized_scan_settings"

.field private static final CUSTOMIZED_SCAN_WORKSOURCE:Ljava/lang/String; = "customized_scan_worksource"

.field private static DBG:Z = false

.field private static final DEBUG_PARSE:Z = false

.field public static final DFS_RESTRICTED_SCAN_REQUEST:I = -0x6

.field static final DISCONNECTING_GUARD_TIMER_MSEC:I = 0x1388

.field private static final DRIVER_START_TIME_OUT_MSECS:I = 0x2710

.field private static final ENABLE_WIFI:I = -0x5

.field private static final FAILURE:I = -0x1

.field private static final GOOGLE_OUI:Ljava/lang/String; = "DA-A1-19"

.field private static final LINK_FLAPPING_DEBOUNCE_MSEC:I = 0xfa0

.field private static final LOGD_LEVEL_DEBUG:Ljava/lang/String; = "D"

.field private static final LOGD_LEVEL_VERBOSE:Ljava/lang/String; = "V"

.field private static MESSAGE_HANDLING_STATUS_DEFERRED:I = 0x0

.field private static MESSAGE_HANDLING_STATUS_DISCARD:I = 0x0

.field private static MESSAGE_HANDLING_STATUS_FAIL:I = 0x0

.field private static MESSAGE_HANDLING_STATUS_HANDLING_ERROR:I = 0x0

.field private static MESSAGE_HANDLING_STATUS_LOOPED:I = 0x0

.field private static MESSAGE_HANDLING_STATUS_OBSOLETE:I = 0x0

.field private static MESSAGE_HANDLING_STATUS_OK:I = 0x0

.field private static MESSAGE_HANDLING_STATUS_PROCESSED:I = 0x0

.field private static MESSAGE_HANDLING_STATUS_REFUSED:I = 0x0

.field private static MESSAGE_HANDLING_STATUS_UNKNOWN:I = 0x0

.field private static final MIN_INTERVAL_ENABLE_ALL_NETWORKS_MS:I = 0x927c0

.field private static final NETWORKTYPE:Ljava/lang/String; = "WIFI"

.field private static final NETWORKTYPE_UNTRUSTED:Ljava/lang/String; = "WIFI_UT"

.field private static final NETWORK_STATUS_UNWANTED_DISABLE_AUTOJOIN:I = 0x2

.field private static final NETWORK_STATUS_UNWANTED_DISCONNECT:I = 0x0

.field private static final NETWORK_STATUS_UNWANTED_VALIDATION_FAILED:I = 0x1

.field public static final NUM_LOG_RECS_NORMAL:S = 0x64s

.field public static final NUM_LOG_RECS_VERBOSE:S = 0xbb8s

.field public static final NUM_LOG_RECS_VERBOSE_LOW_MEMORY:S = 0xc8s

.field static final OBTAINING_IP_ADDRESS_GUARD_TIMER_MSEC:I = 0x9c40

.field private static final ONE_HOUR_MILLI:I = 0x36ee80

.field private static final POLL_RSSI_INTERVAL_MSECS:I = 0xbb8

.field static final ROAM_GUARD_TIMER_MSEC:I = 0x3a98

.field public static final SCAN_ONLY_MODE:I = 0x2

.field public static final SCAN_ONLY_WITH_WIFI_OFF_MODE:I = 0x3

.field static final SCAN_PERMISSION_UPDATE_THROTTLE_MILLI:J = 0x4e20L

.field private static final SCAN_REQUEST:I = 0x0

.field private static final SCAN_REQUEST_BUFFER_MAX_SIZE:I = 0xa

.field private static final SCAN_REQUEST_TIME:Ljava/lang/String; = "scan_request_time"

.field private static final SET_ALLOW_UNTRUSTED_SOURCE:I = -0x4

.field private static final SUCCESS:I = 0x1

.field private static final SUPPLICANT_RESTART_INTERVAL_MSECS:I = 0x1388

.field private static final SUPPLICANT_RESTART_TRIES:I = 0x5

.field private static final SUSPEND_DUE_TO_DHCP:I = 0x1

.field private static final SUSPEND_DUE_TO_HIGH_PERF:I = 0x2

.field private static final SUSPEND_DUE_TO_SCREEN:I = 0x4

.field private static final SYSTEM_PROPERTY_LOG_CONTROL_WIFIHAL:Ljava/lang/String; = "log.tag.WifiHAL"

.field private static final TAG:Ljava/lang/String; = "WifiStateMachine"

.field private static final TETHER_NOTIFICATION_TIME_OUT_MSECS:I = 0x1388

.field private static final UNKNOWN_SCAN_SOURCE:I = -0x1

.field private static USE_PAUSE_SCANS:Z = false

.field public static final WIFI_WORK_SOURCE:Landroid/os/WorkSource;

.field private static mRandom:Ljava/util/Random; = null

.field private static final sFrameworkMinScanIntervalSaneValue:I = 0x2710

.field private static final sMessageClasses:[Ljava/lang/Class;

.field private static sScanAlarmIntentCount:I

.field private static final sSmToString:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private didBlackListBSSID:Z

.field disconnectingWatchdogCount:I

.field private lastConnectAttemptTimestamp:J

.field private lastForgetConfigurationAttempt:Landroid/net/wifi/WifiConfiguration;

.field private lastLinkLayerStatsUpdate:J

.field private lastOntimeReportTimeStamp:J

.field private lastSavedConfigurationAttempt:Landroid/net/wifi/WifiConfiguration;

.field private lastScanFreqs:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private lastScreenStateChangeTimeStamp:J

.field private linkDebouncing:Z

.field private mAggressiveHandover:I

.field private mAlarmManager:Landroid/app/AlarmManager;

.field private mAutoRoaming:Z

.field private final mBackgroundScanSupported:Z

.field private final mBackupManagerProxy:Lcom/android/server/wifi/BackupManagerProxy;

.field private final mBatteryStats:Lcom/android/internal/app/IBatteryStats;

.field private mBluetoothConnectionActive:Z

.field private final mBufferedScanMsg:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue",
            "<",
            "Landroid/os/Message;",
            ">;"
        }
    .end annotation
.end field

.field private final mBuildProperties:Lcom/android/server/wifi/BuildProperties;

.field private final mClock:Lcom/android/server/wifi/Clock;

.field private mCm:Landroid/net/ConnectivityManager;

.field private mConnectModeState:Lcom/android/internal/util/State;

.field mConnectedModeGScanOffloadStarted:Z

.field private mConnectedState:Lcom/android/internal/util/State;

.field private mConnectionReqCount:I
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mWifiReqCountLock"
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private final mCountryCode:Lcom/android/server/wifi/WifiCountryCode;

.field private final mDefaultFrameworkScanIntervalMs:I

.field private mDefaultState:Lcom/android/internal/util/State;

.field private final mDfltNetworkCapabilities:Landroid/net/NetworkCapabilities;

.field private mDhcpResults:Landroid/net/DhcpResults;

.field private final mDhcpResultsLock:Ljava/lang/Object;

.field private mDisconnectedState:Lcom/android/internal/util/State;

.field private mDisconnectedTimeStamp:J

.field private mDisconnectingState:Lcom/android/internal/util/State;

.field private mDriverStartToken:I

.field private mDriverStartedState:Lcom/android/internal/util/State;

.field private mDriverStartingState:Lcom/android/internal/util/State;

.field private mDriverStoppedState:Lcom/android/internal/util/State;

.field private mDriverStoppingState:Lcom/android/internal/util/State;

.field private mEnableRssiPolling:Z

.field private mFacade:Lcom/android/server/wifi/FrameworkFacade;

.field private mFrequencyBand:Ljava/util/concurrent/atomic/AtomicInteger;

.field private mGScanPeriodMilli:J

.field private mGScanStartTimeMilli:J

.field private mInitialState:Lcom/android/internal/util/State;

.field private final mInterfaceName:Ljava/lang/String;

.field private final mIpManager:Landroid/net/ip/IpManager;

.field private mIsFullScanOngoing:Z

.field private mIsRunning:Z

.field private mIsScanOngoing:Z

.field private mL2ConnectedState:Lcom/android/internal/util/State;

.field private mLastBssid:Ljava/lang/String;

.field private mLastDriverRoamAttempt:J

.field private mLastEnableAllNetworksTime:J

.field private mLastNetworkId:I

.field private final mLastRunningWifiUids:Landroid/os/WorkSource;

.field mLastScanPermissionUpdate:J

.field private mLastSignalLevel:I

.field private mLinkProperties:Landroid/net/LinkProperties;

.field private mNetworkAgent:Lcom/android/server/wifi/WifiStateMachine$WifiNetworkAgent;

.field private final mNetworkCapabilitiesFilter:Landroid/net/NetworkCapabilities;

.field private mNetworkFactory:Lcom/android/server/wifi/WifiStateMachine$WifiNetworkFactory;

.field private mNetworkInfo:Landroid/net/NetworkInfo;

.field private final mNetworkMisc:Landroid/net/NetworkMisc;

.field private final mNoNetworksPeriodicScan:I

.field private mNumScanResultsKnown:I

.field private mNumScanResultsReturned:I

.field private mNwService:Landroid/os/INetworkManagementService;

.field private mObtainingIpState:Lcom/android/internal/util/State;

.field private mOnTime:I

.field private mOnTimeLastReport:I

.field private mOnTimeScreenStateChange:I

.field private mOperationalMode:I

.field private final mP2pConnected:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final mP2pSupported:Z

.field private mPeriodicScanToken:I

.field private final mPrimaryDeviceType:Ljava/lang/String;

.field private final mPropertyService:Lcom/android/server/wifi/PropertyService;

.field private mReplyChannel:Lcom/android/internal/util/AsyncChannel;

.field private mReportedRunning:Z

.field private mRoamFailCount:I

.field private mRoamingState:Lcom/android/internal/util/State;

.field private mRssiPollToken:I

.field private mRssiRanges:[B

.field mRunningBeaconCount:I

.field private final mRunningWifiUids:Landroid/os/WorkSource;

.field private mRxTime:I

.field private mRxTimeLastReport:I

.field private mScanIntent:Landroid/app/PendingIntent;

.field private mScanModeState:Lcom/android/internal/util/State;

.field private mScanResults:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/server/wifi/ScanDetail;",
            ">;"
        }
    .end annotation
.end field

.field private final mScanResultsLock:Ljava/lang/Object;

.field private mScanWorkSource:Landroid/os/WorkSource;

.field private mScreenBroadcastReceived:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private mScreenOn:Z

.field private mSendScanResultsBroadcast:Z

.field private mSoftApState:Lcom/android/internal/util/State;

.field private mSupplicantRestartCount:I

.field private mSupplicantScanIntervalMs:J

.field private mSupplicantStartedState:Lcom/android/internal/util/State;

.field private mSupplicantStartingState:Lcom/android/internal/util/State;

.field private mSupplicantStateTracker:Lcom/android/server/wifi/SupplicantStateTracker;

.field private mSupplicantStopFailureToken:I

.field private mSupplicantStoppingState:Lcom/android/internal/util/State;

.field private mSuspendOptNeedsDisabled:I

.field private mSuspendWakeLock:Landroid/os/PowerManager$WakeLock;

.field private mSystemUiUid:I

.field private mTargetNetworkId:I

.field private mTargetRoamBSSID:Ljava/lang/String;

.field private final mTcpBufferSizes:Ljava/lang/String;

.field private mTemporarilyDisconnectWifi:Z

.field private mTetherInterfaceName:Ljava/lang/String;

.field private mTetherToken:I

.field private mTxTime:I

.field private mTxTimeLastReport:I

.field private mUntrustedNetworkFactory:Lcom/android/server/wifi/WifiStateMachine$UntrustedWifiNetworkFactory;

.field private mUntrustedReqCount:I
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mWifiReqCountLock"
    .end annotation
.end field

.field private mUserWantsSuspendOpt:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private mVerboseLoggingLevel:I

.field private mWaitForP2pDisableState:Lcom/android/internal/util/State;

.field private mWakeLock:Landroid/os/PowerManager$WakeLock;

.field private mWhiteListedSsids:[Ljava/lang/String;

.field private mWifiApConfigStore:Lcom/android/server/wifi/WifiApConfigStore;

.field private final mWifiApState:Ljava/util/concurrent/atomic/AtomicInteger;

.field private mWifiConfigManager:Lcom/android/server/wifi/WifiConfigManager;

.field private mWifiConnectionStatistics:Landroid/net/wifi/WifiConnectionStatistics;

.field private mWifiConnectivityManager:Lcom/android/server/wifi/WifiConnectivityManager;

.field private final mWifiInfo:Landroid/net/wifi/WifiInfo;

.field private mWifiInjector:Lcom/android/server/wifi/WifiInjector;

.field private mWifiLastResortWatchdog:Lcom/android/server/wifi/WifiLastResortWatchdog;

.field private mWifiLinkLayerStatsSupported:I

.field private mWifiLogger:Lcom/android/server/wifi/BaseWifiLogger;

.field private mWifiMetrics:Lcom/android/server/wifi/WifiMetrics;

.field private mWifiMonitor:Lcom/android/server/wifi/WifiMonitor;

.field private mWifiNative:Lcom/android/server/wifi/WifiNative;

.field private mWifiP2pChannel:Lcom/android/internal/util/AsyncChannel;

.field private mWifiP2pServiceImpl:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;

.field private mWifiQualifiedNetworkSelector:Lcom/android/server/wifi/WifiQualifiedNetworkSelector;

.field private final mWifiReqCountLock:Ljava/lang/Object;

.field private mWifiScanner:Landroid/net/wifi/WifiScanner;

.field mWifiScoreReport:Lcom/android/server/wifi/WifiScoreReport;

.field private final mWifiState:Ljava/util/concurrent/atomic/AtomicInteger;

.field private mWpsRunningState:Lcom/android/internal/util/State;

.field private messageHandlingStatus:I

.field obtainingIpWatchdogCount:I

.field roamWatchdogCount:I

.field private targetWificonfiguration:Landroid/net/wifi/WifiConfiguration;

.field private testNetworkDisconnect:Z

.field private testNetworkDisconnectCounter:I


# direct methods
.method static synthetic -get0()Z
    .locals 1

    #@0
    sget-boolean v0, Lcom/android/server/wifi/WifiStateMachine;->DBG:Z

    #@2
    return v0
.end method

.method static synthetic -get1()I
    .locals 1

    #@0
    sget v0, Lcom/android/server/wifi/WifiStateMachine;->MESSAGE_HANDLING_STATUS_DEFERRED:I

    #@2
    return v0
.end method

.method static synthetic -get10(Lcom/android/server/wifi/WifiStateMachine;)Ljava/util/Queue;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mBufferedScanMsg:Ljava/util/Queue;

    #@2
    return-object v0
.end method

.method static synthetic -get11(Lcom/android/server/wifi/WifiStateMachine;)Landroid/net/ConnectivityManager;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mCm:Landroid/net/ConnectivityManager;

    #@2
    return-object v0
.end method

.method static synthetic -get12(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/internal/util/State;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mConnectedState:Lcom/android/internal/util/State;

    #@2
    return-object v0
.end method

.method static synthetic -get13(Lcom/android/server/wifi/WifiStateMachine;)I
    .locals 1

    #@0
    iget v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mConnectionReqCount:I

    #@2
    return v0
.end method

.method static synthetic -get14(Lcom/android/server/wifi/WifiStateMachine;)Landroid/content/Context;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mContext:Landroid/content/Context;

    #@2
    return-object v0
.end method

.method static synthetic -get15(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiCountryCode;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mCountryCode:Lcom/android/server/wifi/WifiCountryCode;

    #@2
    return-object v0
.end method

.method static synthetic -get16(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/internal/util/State;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mDisconnectedState:Lcom/android/internal/util/State;

    #@2
    return-object v0
.end method

.method static synthetic -get17(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/internal/util/State;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mDisconnectingState:Lcom/android/internal/util/State;

    #@2
    return-object v0
.end method

.method static synthetic -get18(Lcom/android/server/wifi/WifiStateMachine;)I
    .locals 1

    #@0
    iget v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mDriverStartToken:I

    #@2
    return v0
.end method

.method static synthetic -get19(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/internal/util/State;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mDriverStartedState:Lcom/android/internal/util/State;

    #@2
    return-object v0
.end method

.method static synthetic -get2()I
    .locals 1

    #@0
    sget v0, Lcom/android/server/wifi/WifiStateMachine;->MESSAGE_HANDLING_STATUS_DISCARD:I

    #@2
    return v0
.end method

.method static synthetic -get20(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/internal/util/State;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mDriverStartingState:Lcom/android/internal/util/State;

    #@2
    return-object v0
.end method

.method static synthetic -get21(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/internal/util/State;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mDriverStoppedState:Lcom/android/internal/util/State;

    #@2
    return-object v0
.end method

.method static synthetic -get22(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/internal/util/State;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mDriverStoppingState:Lcom/android/internal/util/State;

    #@2
    return-object v0
.end method

.method static synthetic -get23(Lcom/android/server/wifi/WifiStateMachine;)Z
    .locals 1

    #@0
    iget-boolean v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mEnableRssiPolling:Z

    #@2
    return v0
.end method

.method static synthetic -get24(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/FrameworkFacade;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mFacade:Lcom/android/server/wifi/FrameworkFacade;

    #@2
    return-object v0
.end method

.method static synthetic -get25(Lcom/android/server/wifi/WifiStateMachine;)Ljava/util/concurrent/atomic/AtomicInteger;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mFrequencyBand:Ljava/util/concurrent/atomic/AtomicInteger;

    #@2
    return-object v0
.end method

.method static synthetic -get26(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/internal/util/State;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mInitialState:Lcom/android/internal/util/State;

    #@2
    return-object v0
.end method

.method static synthetic -get27(Lcom/android/server/wifi/WifiStateMachine;)Ljava/lang/String;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mInterfaceName:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method static synthetic -get28(Lcom/android/server/wifi/WifiStateMachine;)Landroid/net/ip/IpManager;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mIpManager:Landroid/net/ip/IpManager;

    #@2
    return-object v0
.end method

.method static synthetic -get29(Lcom/android/server/wifi/WifiStateMachine;)Z
    .locals 1

    #@0
    iget-boolean v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mIsFullScanOngoing:Z

    #@2
    return v0
.end method

.method static synthetic -get3()I
    .locals 1

    #@0
    sget v0, Lcom/android/server/wifi/WifiStateMachine;->MESSAGE_HANDLING_STATUS_FAIL:I

    #@2
    return v0
.end method

.method static synthetic -get30(Lcom/android/server/wifi/WifiStateMachine;)Ljava/lang/String;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mLastBssid:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method static synthetic -get31(Lcom/android/server/wifi/WifiStateMachine;)J
    .locals 2

    #@0
    iget-wide v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mLastDriverRoamAttempt:J

    #@2
    return-wide v0
.end method

.method static synthetic -get32(Lcom/android/server/wifi/WifiStateMachine;)J
    .locals 2

    #@0
    iget-wide v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mLastEnableAllNetworksTime:J

    #@2
    return-wide v0
.end method

.method static synthetic -get33(Lcom/android/server/wifi/WifiStateMachine;)I
    .locals 1

    #@0
    iget v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mLastNetworkId:I

    #@2
    return v0
.end method

.method static synthetic -get34(Lcom/android/server/wifi/WifiStateMachine;)Landroid/net/LinkProperties;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mLinkProperties:Landroid/net/LinkProperties;

    #@2
    return-object v0
.end method

.method static synthetic -get35(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiStateMachine$WifiNetworkAgent;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mNetworkAgent:Lcom/android/server/wifi/WifiStateMachine$WifiNetworkAgent;

    #@2
    return-object v0
.end method

.method static synthetic -get36(Lcom/android/server/wifi/WifiStateMachine;)Landroid/net/NetworkCapabilities;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mNetworkCapabilitiesFilter:Landroid/net/NetworkCapabilities;

    #@2
    return-object v0
.end method

.method static synthetic -get37(Lcom/android/server/wifi/WifiStateMachine;)Landroid/net/NetworkInfo;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mNetworkInfo:Landroid/net/NetworkInfo;

    #@2
    return-object v0
.end method

.method static synthetic -get38(Lcom/android/server/wifi/WifiStateMachine;)Landroid/net/NetworkMisc;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mNetworkMisc:Landroid/net/NetworkMisc;

    #@2
    return-object v0
.end method

.method static synthetic -get39(Lcom/android/server/wifi/WifiStateMachine;)I
    .locals 1

    #@0
    iget v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mNoNetworksPeriodicScan:I

    #@2
    return v0
.end method

.method static synthetic -get4()I
    .locals 1

    #@0
    sget v0, Lcom/android/server/wifi/WifiStateMachine;->MESSAGE_HANDLING_STATUS_REFUSED:I

    #@2
    return v0
.end method

.method static synthetic -get40(Lcom/android/server/wifi/WifiStateMachine;)Landroid/os/INetworkManagementService;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mNwService:Landroid/os/INetworkManagementService;

    #@2
    return-object v0
.end method

.method static synthetic -get41(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/internal/util/State;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mObtainingIpState:Lcom/android/internal/util/State;

    #@2
    return-object v0
.end method

.method static synthetic -get42(Lcom/android/server/wifi/WifiStateMachine;)I
    .locals 1

    #@0
    iget v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mOperationalMode:I

    #@2
    return v0
.end method

.method static synthetic -get43(Lcom/android/server/wifi/WifiStateMachine;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mP2pConnected:Ljava/util/concurrent/atomic/AtomicBoolean;

    #@2
    return-object v0
.end method

.method static synthetic -get44(Lcom/android/server/wifi/WifiStateMachine;)Z
    .locals 1

    #@0
    iget-boolean v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mP2pSupported:Z

    #@2
    return v0
.end method

.method static synthetic -get45(Lcom/android/server/wifi/WifiStateMachine;)I
    .locals 1

    #@0
    iget v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mPeriodicScanToken:I

    #@2
    return v0
.end method

.method static synthetic -get46(Lcom/android/server/wifi/WifiStateMachine;)Ljava/lang/String;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mPrimaryDeviceType:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method static synthetic -get47(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/PropertyService;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mPropertyService:Lcom/android/server/wifi/PropertyService;

    #@2
    return-object v0
.end method

.method static synthetic -get48(Lcom/android/server/wifi/WifiStateMachine;)I
    .locals 1

    #@0
    iget v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mRoamFailCount:I

    #@2
    return v0
.end method

.method static synthetic -get49(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/internal/util/State;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mRoamingState:Lcom/android/internal/util/State;

    #@2
    return-object v0
.end method

.method static synthetic -get5(Lcom/android/server/wifi/WifiStateMachine;)Z
    .locals 1

    #@0
    iget-boolean v0, p0, Lcom/android/server/wifi/WifiStateMachine;->linkDebouncing:Z

    #@2
    return v0
.end method

.method static synthetic -get50(Lcom/android/server/wifi/WifiStateMachine;)I
    .locals 1

    #@0
    iget v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mRssiPollToken:I

    #@2
    return v0
.end method

.method static synthetic -get51(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/internal/util/State;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mScanModeState:Lcom/android/internal/util/State;

    #@2
    return-object v0
.end method

.method static synthetic -get52(Lcom/android/server/wifi/WifiStateMachine;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mScreenBroadcastReceived:Ljava/util/concurrent/atomic/AtomicBoolean;

    #@2
    return-object v0
.end method

.method static synthetic -get53(Lcom/android/server/wifi/WifiStateMachine;)Z
    .locals 1

    #@0
    iget-boolean v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mScreenOn:Z

    #@2
    return v0
.end method

.method static synthetic -get54(Lcom/android/server/wifi/WifiStateMachine;)Z
    .locals 1

    #@0
    iget-boolean v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mSendScanResultsBroadcast:Z

    #@2
    return v0
.end method

.method static synthetic -get55(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/internal/util/State;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mSoftApState:Lcom/android/internal/util/State;

    #@2
    return-object v0
.end method

.method static synthetic -get56(Lcom/android/server/wifi/WifiStateMachine;)I
    .locals 1

    #@0
    iget v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mSupplicantRestartCount:I

    #@2
    return v0
.end method

.method static synthetic -get57(Lcom/android/server/wifi/WifiStateMachine;)J
    .locals 2

    #@0
    iget-wide v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mSupplicantScanIntervalMs:J

    #@2
    return-wide v0
.end method

.method static synthetic -get58(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/internal/util/State;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mSupplicantStartingState:Lcom/android/internal/util/State;

    #@2
    return-object v0
.end method

.method static synthetic -get59(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/SupplicantStateTracker;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mSupplicantStateTracker:Lcom/android/server/wifi/SupplicantStateTracker;

    #@2
    return-object v0
.end method

.method static synthetic -get6(Lcom/android/server/wifi/WifiStateMachine;)I
    .locals 1

    #@0
    iget v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mAggressiveHandover:I

    #@2
    return v0
.end method

.method static synthetic -get60(Lcom/android/server/wifi/WifiStateMachine;)I
    .locals 1

    #@0
    iget v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mSupplicantStopFailureToken:I

    #@2
    return v0
.end method

.method static synthetic -get61(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/internal/util/State;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mSupplicantStoppingState:Lcom/android/internal/util/State;

    #@2
    return-object v0
.end method

.method static synthetic -get62(Lcom/android/server/wifi/WifiStateMachine;)I
    .locals 1

    #@0
    iget v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mSuspendOptNeedsDisabled:I

    #@2
    return v0
.end method

.method static synthetic -get63(Lcom/android/server/wifi/WifiStateMachine;)Landroid/os/PowerManager$WakeLock;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mSuspendWakeLock:Landroid/os/PowerManager$WakeLock;

    #@2
    return-object v0
.end method

.method static synthetic -get64(Lcom/android/server/wifi/WifiStateMachine;)I
    .locals 1

    #@0
    iget v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mSystemUiUid:I

    #@2
    return v0
.end method

.method static synthetic -get65(Lcom/android/server/wifi/WifiStateMachine;)I
    .locals 1

    #@0
    iget v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mTargetNetworkId:I

    #@2
    return v0
.end method

.method static synthetic -get66(Lcom/android/server/wifi/WifiStateMachine;)Ljava/lang/String;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mTargetRoamBSSID:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method static synthetic -get67(Lcom/android/server/wifi/WifiStateMachine;)Ljava/lang/String;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mTcpBufferSizes:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method static synthetic -get68(Lcom/android/server/wifi/WifiStateMachine;)Z
    .locals 1

    #@0
    iget-boolean v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mTemporarilyDisconnectWifi:Z

    #@2
    return v0
.end method

.method static synthetic -get69(Lcom/android/server/wifi/WifiStateMachine;)I
    .locals 1

    #@0
    iget v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mUntrustedReqCount:I

    #@2
    return v0
.end method

.method static synthetic -get7(Lcom/android/server/wifi/WifiStateMachine;)Z
    .locals 1

    #@0
    iget-boolean v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mAutoRoaming:Z

    #@2
    return v0
.end method

.method static synthetic -get70(Lcom/android/server/wifi/WifiStateMachine;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mUserWantsSuspendOpt:Ljava/util/concurrent/atomic/AtomicBoolean;

    #@2
    return-object v0
.end method

.method static synthetic -get71(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/internal/util/State;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mWaitForP2pDisableState:Lcom/android/internal/util/State;

    #@2
    return-object v0
.end method

.method static synthetic -get72(Lcom/android/server/wifi/WifiStateMachine;)Landroid/os/PowerManager$WakeLock;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    #@2
    return-object v0
.end method

.method static synthetic -get73(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiApConfigStore;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiApConfigStore:Lcom/android/server/wifi/WifiApConfigStore;

    #@2
    return-object v0
.end method

.method static synthetic -get74(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigManager;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiConfigManager:Lcom/android/server/wifi/WifiConfigManager;

    #@2
    return-object v0
.end method

.method static synthetic -get75(Lcom/android/server/wifi/WifiStateMachine;)Landroid/net/wifi/WifiConnectionStatistics;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiConnectionStatistics:Landroid/net/wifi/WifiConnectionStatistics;

    #@2
    return-object v0
.end method

.method static synthetic -get76(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConnectivityManager;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiConnectivityManager:Lcom/android/server/wifi/WifiConnectivityManager;

    #@2
    return-object v0
.end method

.method static synthetic -get77(Lcom/android/server/wifi/WifiStateMachine;)Landroid/net/wifi/WifiInfo;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    #@2
    return-object v0
.end method

.method static synthetic -get78(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiInjector;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiInjector:Lcom/android/server/wifi/WifiInjector;

    #@2
    return-object v0
.end method

.method static synthetic -get79(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiLastResortWatchdog;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiLastResortWatchdog:Lcom/android/server/wifi/WifiLastResortWatchdog;

    #@2
    return-object v0
.end method

.method static synthetic -get8(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/BackupManagerProxy;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mBackupManagerProxy:Lcom/android/server/wifi/BackupManagerProxy;

    #@2
    return-object v0
.end method

.method static synthetic -get80(Lcom/android/server/wifi/WifiStateMachine;)I
    .locals 1

    #@0
    iget v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiLinkLayerStatsSupported:I

    #@2
    return v0
.end method

.method static synthetic -get81(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/BaseWifiLogger;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiLogger:Lcom/android/server/wifi/BaseWifiLogger;

    #@2
    return-object v0
.end method

.method static synthetic -get82(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiMetrics;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiMetrics:Lcom/android/server/wifi/WifiMetrics;

    #@2
    return-object v0
.end method

.method static synthetic -get83(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiMonitor;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiMonitor:Lcom/android/server/wifi/WifiMonitor;

    #@2
    return-object v0
.end method

.method static synthetic -get84(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiNative;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    #@2
    return-object v0
.end method

.method static synthetic -get85(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/internal/util/AsyncChannel;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiP2pChannel:Lcom/android/internal/util/AsyncChannel;

    #@2
    return-object v0
.end method

.method static synthetic -get86(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiP2pServiceImpl:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;

    #@2
    return-object v0
.end method

.method static synthetic -get87(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiQualifiedNetworkSelector;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiQualifiedNetworkSelector:Lcom/android/server/wifi/WifiQualifiedNetworkSelector;

    #@2
    return-object v0
.end method

.method static synthetic -get88(Lcom/android/server/wifi/WifiStateMachine;)Ljava/lang/Object;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiReqCountLock:Ljava/lang/Object;

    #@2
    return-object v0
.end method

.method static synthetic -get89(Lcom/android/server/wifi/WifiStateMachine;)Landroid/net/wifi/WifiScanner;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiScanner:Landroid/net/wifi/WifiScanner;

    #@2
    return-object v0
.end method

.method static synthetic -get9(Lcom/android/server/wifi/WifiStateMachine;)Z
    .locals 1

    #@0
    iget-boolean v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mBluetoothConnectionActive:Z

    #@2
    return v0
.end method

.method static synthetic -get90(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/internal/util/State;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mWpsRunningState:Lcom/android/internal/util/State;

    #@2
    return-object v0
.end method

.method static synthetic -get91(Lcom/android/server/wifi/WifiStateMachine;)Landroid/net/wifi/WifiConfiguration;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->targetWificonfiguration:Landroid/net/wifi/WifiConfiguration;

    #@2
    return-object v0
.end method

.method static synthetic -get92(Lcom/android/server/wifi/WifiStateMachine;)Z
    .locals 1

    #@0
    iget-boolean v0, p0, Lcom/android/server/wifi/WifiStateMachine;->testNetworkDisconnect:Z

    #@2
    return v0
.end method

.method static synthetic -get93(Lcom/android/server/wifi/WifiStateMachine;)I
    .locals 1

    #@0
    iget v0, p0, Lcom/android/server/wifi/WifiStateMachine;->testNetworkDisconnectCounter:I

    #@2
    return v0
.end method

.method static synthetic -set0(Lcom/android/server/wifi/WifiStateMachine;Z)Z
    .locals 0

    #@0
    iput-boolean p1, p0, Lcom/android/server/wifi/WifiStateMachine;->didBlackListBSSID:Z

    #@2
    return p1
.end method

.method static synthetic -set1(Lcom/android/server/wifi/WifiStateMachine;J)J
    .locals 1

    #@0
    iput-wide p1, p0, Lcom/android/server/wifi/WifiStateMachine;->lastConnectAttemptTimestamp:J

    #@2
    return-wide p1
.end method

.method static synthetic -set10(Lcom/android/server/wifi/WifiStateMachine;Z)Z
    .locals 0

    #@0
    iput-boolean p1, p0, Lcom/android/server/wifi/WifiStateMachine;->mEnableRssiPolling:Z

    #@2
    return p1
.end method

.method static synthetic -set11(Lcom/android/server/wifi/WifiStateMachine;Z)Z
    .locals 0

    #@0
    iput-boolean p1, p0, Lcom/android/server/wifi/WifiStateMachine;->mIsFullScanOngoing:Z

    #@2
    return p1
.end method

.method static synthetic -set12(Lcom/android/server/wifi/WifiStateMachine;Z)Z
    .locals 0

    #@0
    iput-boolean p1, p0, Lcom/android/server/wifi/WifiStateMachine;->mIsRunning:Z

    #@2
    return p1
.end method

.method static synthetic -set13(Lcom/android/server/wifi/WifiStateMachine;Z)Z
    .locals 0

    #@0
    iput-boolean p1, p0, Lcom/android/server/wifi/WifiStateMachine;->mIsScanOngoing:Z

    #@2
    return p1
.end method

.method static synthetic -set14(Lcom/android/server/wifi/WifiStateMachine;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    #@0
    iput-object p1, p0, Lcom/android/server/wifi/WifiStateMachine;->mLastBssid:Ljava/lang/String;

    #@2
    return-object p1
.end method

.method static synthetic -set15(Lcom/android/server/wifi/WifiStateMachine;J)J
    .locals 1

    #@0
    iput-wide p1, p0, Lcom/android/server/wifi/WifiStateMachine;->mLastDriverRoamAttempt:J

    #@2
    return-wide p1
.end method

.method static synthetic -set16(Lcom/android/server/wifi/WifiStateMachine;J)J
    .locals 1

    #@0
    iput-wide p1, p0, Lcom/android/server/wifi/WifiStateMachine;->mLastEnableAllNetworksTime:J

    #@2
    return-wide p1
.end method

.method static synthetic -set17(Lcom/android/server/wifi/WifiStateMachine;I)I
    .locals 0

    #@0
    iput p1, p0, Lcom/android/server/wifi/WifiStateMachine;->mLastNetworkId:I

    #@2
    return p1
.end method

.method static synthetic -set18(Lcom/android/server/wifi/WifiStateMachine;I)I
    .locals 0

    #@0
    iput p1, p0, Lcom/android/server/wifi/WifiStateMachine;->mLastSignalLevel:I

    #@2
    return p1
.end method

.method static synthetic -set19(Lcom/android/server/wifi/WifiStateMachine;Lcom/android/server/wifi/WifiStateMachine$WifiNetworkAgent;)Lcom/android/server/wifi/WifiStateMachine$WifiNetworkAgent;
    .locals 0

    #@0
    iput-object p1, p0, Lcom/android/server/wifi/WifiStateMachine;->mNetworkAgent:Lcom/android/server/wifi/WifiStateMachine$WifiNetworkAgent;

    #@2
    return-object p1
.end method

.method static synthetic -set2(Lcom/android/server/wifi/WifiStateMachine;Landroid/net/wifi/WifiConfiguration;)Landroid/net/wifi/WifiConfiguration;
    .locals 0

    #@0
    iput-object p1, p0, Lcom/android/server/wifi/WifiStateMachine;->lastForgetConfigurationAttempt:Landroid/net/wifi/WifiConfiguration;

    #@2
    return-object p1
.end method

.method static synthetic -set20(Lcom/android/server/wifi/WifiStateMachine;I)I
    .locals 0

    #@0
    iput p1, p0, Lcom/android/server/wifi/WifiStateMachine;->mOperationalMode:I

    #@2
    return p1
.end method

.method static synthetic -set21(Lcom/android/server/wifi/WifiStateMachine;I)I
    .locals 0

    #@0
    iput p1, p0, Lcom/android/server/wifi/WifiStateMachine;->mPeriodicScanToken:I

    #@2
    return p1
.end method

.method static synthetic -set22(Lcom/android/server/wifi/WifiStateMachine;I)I
    .locals 0

    #@0
    iput p1, p0, Lcom/android/server/wifi/WifiStateMachine;->mRoamFailCount:I

    #@2
    return p1
.end method

.method static synthetic -set23(Lcom/android/server/wifi/WifiStateMachine;I)I
    .locals 0

    #@0
    iput p1, p0, Lcom/android/server/wifi/WifiStateMachine;->mRssiPollToken:I

    #@2
    return p1
.end method

.method static synthetic -set24(Lcom/android/server/wifi/WifiStateMachine;[B)[B
    .locals 0

    #@0
    iput-object p1, p0, Lcom/android/server/wifi/WifiStateMachine;->mRssiRanges:[B

    #@2
    return-object p1
.end method

.method static synthetic -set25(Lcom/android/server/wifi/WifiStateMachine;Ljava/util/List;)Ljava/util/List;
    .locals 0

    #@0
    iput-object p1, p0, Lcom/android/server/wifi/WifiStateMachine;->mScanResults:Ljava/util/List;

    #@2
    return-object p1
.end method

.method static synthetic -set26(Lcom/android/server/wifi/WifiStateMachine;Z)Z
    .locals 0

    #@0
    iput-boolean p1, p0, Lcom/android/server/wifi/WifiStateMachine;->mSendScanResultsBroadcast:Z

    #@2
    return p1
.end method

.method static synthetic -set27(Lcom/android/server/wifi/WifiStateMachine;I)I
    .locals 0

    #@0
    iput p1, p0, Lcom/android/server/wifi/WifiStateMachine;->mSupplicantRestartCount:I

    #@2
    return p1
.end method

.method static synthetic -set28(Lcom/android/server/wifi/WifiStateMachine;J)J
    .locals 1

    #@0
    iput-wide p1, p0, Lcom/android/server/wifi/WifiStateMachine;->mSupplicantScanIntervalMs:J

    #@2
    return-wide p1
.end method

.method static synthetic -set29(Lcom/android/server/wifi/WifiStateMachine;I)I
    .locals 0

    #@0
    iput p1, p0, Lcom/android/server/wifi/WifiStateMachine;->mSupplicantStopFailureToken:I

    #@2
    return p1
.end method

.method static synthetic -set3(Lcom/android/server/wifi/WifiStateMachine;Landroid/net/wifi/WifiConfiguration;)Landroid/net/wifi/WifiConfiguration;
    .locals 0

    #@0
    iput-object p1, p0, Lcom/android/server/wifi/WifiStateMachine;->lastSavedConfigurationAttempt:Landroid/net/wifi/WifiConfiguration;

    #@2
    return-object p1
.end method

.method static synthetic -set30(Lcom/android/server/wifi/WifiStateMachine;I)I
    .locals 0

    #@0
    iput p1, p0, Lcom/android/server/wifi/WifiStateMachine;->mTargetNetworkId:I

    #@2
    return p1
.end method

.method static synthetic -set31(Lcom/android/server/wifi/WifiStateMachine;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    #@0
    iput-object p1, p0, Lcom/android/server/wifi/WifiStateMachine;->mTargetRoamBSSID:Ljava/lang/String;

    #@2
    return-object p1
.end method

.method static synthetic -set32(Lcom/android/server/wifi/WifiStateMachine;Z)Z
    .locals 0

    #@0
    iput-boolean p1, p0, Lcom/android/server/wifi/WifiStateMachine;->mTemporarilyDisconnectWifi:Z

    #@2
    return p1
.end method

.method static synthetic -set33(Lcom/android/server/wifi/WifiStateMachine;I)I
    .locals 0

    #@0
    iput p1, p0, Lcom/android/server/wifi/WifiStateMachine;->mUntrustedReqCount:I

    #@2
    return p1
.end method

.method static synthetic -set34(Lcom/android/server/wifi/WifiStateMachine;[Ljava/lang/String;)[Ljava/lang/String;
    .locals 0

    #@0
    iput-object p1, p0, Lcom/android/server/wifi/WifiStateMachine;->mWhiteListedSsids:[Ljava/lang/String;

    #@2
    return-object p1
.end method

.method static synthetic -set35(Lcom/android/server/wifi/WifiStateMachine;Lcom/android/server/wifi/WifiApConfigStore;)Lcom/android/server/wifi/WifiApConfigStore;
    .locals 0

    #@0
    iput-object p1, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiApConfigStore:Lcom/android/server/wifi/WifiApConfigStore;

    #@2
    return-object p1
.end method

.method static synthetic -set36(Lcom/android/server/wifi/WifiStateMachine;Lcom/android/server/wifi/WifiConnectivityManager;)Lcom/android/server/wifi/WifiConnectivityManager;
    .locals 0

    #@0
    iput-object p1, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiConnectivityManager:Lcom/android/server/wifi/WifiConnectivityManager;

    #@2
    return-object p1
.end method

.method static synthetic -set37(Lcom/android/server/wifi/WifiStateMachine;Lcom/android/internal/util/AsyncChannel;)Lcom/android/internal/util/AsyncChannel;
    .locals 0

    #@0
    iput-object p1, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiP2pChannel:Lcom/android/internal/util/AsyncChannel;

    #@2
    return-object p1
.end method

.method static synthetic -set38(Lcom/android/server/wifi/WifiStateMachine;Landroid/net/wifi/WifiScanner;)Landroid/net/wifi/WifiScanner;
    .locals 0

    #@0
    iput-object p1, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiScanner:Landroid/net/wifi/WifiScanner;

    #@2
    return-object p1
.end method

.method static synthetic -set39(Lcom/android/server/wifi/WifiStateMachine;I)I
    .locals 0

    #@0
    iput p1, p0, Lcom/android/server/wifi/WifiStateMachine;->messageHandlingStatus:I

    #@2
    return p1
.end method

.method static synthetic -set4(Lcom/android/server/wifi/WifiStateMachine;Z)Z
    .locals 0

    #@0
    iput-boolean p1, p0, Lcom/android/server/wifi/WifiStateMachine;->linkDebouncing:Z

    #@2
    return p1
.end method

.method static synthetic -set40(Lcom/android/server/wifi/WifiStateMachine;Landroid/net/wifi/WifiConfiguration;)Landroid/net/wifi/WifiConfiguration;
    .locals 0

    #@0
    iput-object p1, p0, Lcom/android/server/wifi/WifiStateMachine;->targetWificonfiguration:Landroid/net/wifi/WifiConfiguration;

    #@2
    return-object p1
.end method

.method static synthetic -set41(Lcom/android/server/wifi/WifiStateMachine;I)I
    .locals 0

    #@0
    iput p1, p0, Lcom/android/server/wifi/WifiStateMachine;->testNetworkDisconnectCounter:I

    #@2
    return p1
.end method

.method static synthetic -set5(Lcom/android/server/wifi/WifiStateMachine;Z)Z
    .locals 0

    #@0
    iput-boolean p1, p0, Lcom/android/server/wifi/WifiStateMachine;->mAutoRoaming:Z

    #@2
    return p1
.end method

.method static synthetic -set6(Lcom/android/server/wifi/WifiStateMachine;Z)Z
    .locals 0

    #@0
    iput-boolean p1, p0, Lcom/android/server/wifi/WifiStateMachine;->mBluetoothConnectionActive:Z

    #@2
    return p1
.end method

.method static synthetic -set7(Lcom/android/server/wifi/WifiStateMachine;I)I
    .locals 0

    #@0
    iput p1, p0, Lcom/android/server/wifi/WifiStateMachine;->mConnectionReqCount:I

    #@2
    return p1
.end method

.method static synthetic -set8(Lcom/android/server/wifi/WifiStateMachine;J)J
    .locals 1

    #@0
    iput-wide p1, p0, Lcom/android/server/wifi/WifiStateMachine;->mDisconnectedTimeStamp:J

    #@2
    return-wide p1
.end method

.method static synthetic -set9(Lcom/android/server/wifi/WifiStateMachine;I)I
    .locals 0

    #@0
    iput p1, p0, Lcom/android/server/wifi/WifiStateMachine;->mDriverStartToken:I

    #@2
    return p1
.end method

.method static synthetic -wrap0(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;)Landroid/net/wifi/SupplicantState;
    .locals 1
    .param p1, "message"    # Landroid/os/Message;

    #@0
    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/wifi/WifiStateMachine;->handleSupplicantStateChange(Landroid/os/Message;)Landroid/net/wifi/SupplicantState;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method static synthetic -wrap1(Lcom/android/server/wifi/WifiStateMachine;)Landroid/os/Message;
    .locals 1

    #@0
    invoke-virtual {p0}, Lcom/android/server/wifi/WifiStateMachine;->getCurrentMessage()Landroid/os/Message;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method static synthetic -wrap10(Lcom/android/server/wifi/WifiStateMachine;)Ljava/lang/String;
    .locals 1

    #@0
    invoke-direct {p0}, Lcom/android/server/wifi/WifiStateMachine;->getTargetSsid()Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method static synthetic -wrap11(Lcom/android/server/wifi/WifiStateMachine;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "ipAddress"    # Ljava/lang/String;

    #@0
    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/wifi/WifiStateMachine;->macAddressFromRoute(Ljava/lang/String;)Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method static synthetic -wrap12(Lcom/android/server/wifi/WifiStateMachine;I)Ljava/lang/String;
    .locals 1
    .param p1, "timeout"    # I

    #@0
    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/wifi/WifiStateMachine;->updateDefaultRouteMacAddress(I)Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method static synthetic -wrap13(Lcom/android/server/wifi/WifiStateMachine;ILandroid/net/wifi/WifiConfiguration;)V
    .locals 0
    .param p1, "wifiCredentialEventType"    # I
    .param p2, "config"    # Landroid/net/wifi/WifiConfiguration;

    #@0
    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/server/wifi/WifiStateMachine;->broadcastWifiCredentialChanged(ILandroid/net/wifi/WifiConfiguration;)V

    #@3
    return-void
.end method

.method static synthetic -wrap14(Lcom/android/server/wifi/WifiStateMachine;)V
    .locals 0

    #@0
    invoke-direct {p0}, Lcom/android/server/wifi/WifiStateMachine;->checkAndSetConnectivityInstance()V

    #@3
    return-void
.end method

.method static synthetic -wrap15(Lcom/android/server/wifi/WifiStateMachine;)V
    .locals 0

    #@0
    invoke-direct {p0}, Lcom/android/server/wifi/WifiStateMachine;->cleanWifiScore()V

    #@3
    return-void
.end method

.method static synthetic -wrap16(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;)V
    .locals 0
    .param p1, "msg"    # Landroid/os/Message;

    #@0
    .prologue
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/WifiStateMachine;->deferMessage(Landroid/os/Message;)V

    #@3
    return-void
.end method

.method static synthetic -wrap17(Lcom/android/server/wifi/WifiStateMachine;Landroid/net/wifi/RssiPacketCountInfo;)V
    .locals 0
    .param p1, "info"    # Landroid/net/wifi/RssiPacketCountInfo;

    #@0
    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/wifi/WifiStateMachine;->fetchPktcntNative(Landroid/net/wifi/RssiPacketCountInfo;)V

    #@3
    return-void
.end method

.method static synthetic -wrap18(Lcom/android/server/wifi/WifiStateMachine;)V
    .locals 0

    #@0
    invoke-direct {p0}, Lcom/android/server/wifi/WifiStateMachine;->fetchRssiLinkSpeedAndFrequencyNative()V

    #@3
    return-void
.end method

.method static synthetic -wrap19(Lcom/android/server/wifi/WifiStateMachine;)V
    .locals 0

    #@0
    invoke-direct {p0}, Lcom/android/server/wifi/WifiStateMachine;->handleIPv4Failure()V

    #@3
    return-void
.end method

.method static synthetic -wrap2(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;)Z
    .locals 1
    .param p1, "msg"    # Landroid/os/Message;

    #@0
    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/wifi/WifiStateMachine;->checkOrDeferScanAllowed(Landroid/os/Message;)Z

    #@3
    move-result v0

    #@4
    return v0
.end method

.method static synthetic -wrap20(Lcom/android/server/wifi/WifiStateMachine;Landroid/net/DhcpResults;)V
    .locals 0
    .param p1, "dhcpResults"    # Landroid/net/DhcpResults;

    #@0
    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/wifi/WifiStateMachine;->handleIPv4Success(Landroid/net/DhcpResults;)V

    #@3
    return-void
.end method

.method static synthetic -wrap21(Lcom/android/server/wifi/WifiStateMachine;)V
    .locals 0

    #@0
    invoke-direct {p0}, Lcom/android/server/wifi/WifiStateMachine;->handleIpConfigurationLost()V

    #@3
    return-void
.end method

.method static synthetic -wrap22(Lcom/android/server/wifi/WifiStateMachine;)V
    .locals 0

    #@0
    invoke-direct {p0}, Lcom/android/server/wifi/WifiStateMachine;->handleIpReachabilityLost()V

    #@3
    return-void
.end method

.method static synthetic -wrap23(Lcom/android/server/wifi/WifiStateMachine;)V
    .locals 0

    #@0
    invoke-direct {p0}, Lcom/android/server/wifi/WifiStateMachine;->handleNetworkDisconnect()V

    #@3
    return-void
.end method

.method static synthetic -wrap24(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;)V
    .locals 0
    .param p1, "message"    # Landroid/os/Message;

    #@0
    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/wifi/WifiStateMachine;->handleScanRequest(Landroid/os/Message;)V

    #@3
    return-void
.end method

.method static synthetic -wrap25(Lcom/android/server/wifi/WifiStateMachine;Z)V
    .locals 0
    .param p1, "screenOn"    # Z

    #@0
    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/wifi/WifiStateMachine;->handleScreenStateChanged(Z)V

    #@3
    return-void
.end method

.method static synthetic -wrap26(Lcom/android/server/wifi/WifiStateMachine;)V
    .locals 0

    #@0
    invoke-direct {p0}, Lcom/android/server/wifi/WifiStateMachine;->handleSuccessfulIpConfiguration()V

    #@3
    return-void
.end method

.method static synthetic -wrap27(Lcom/android/server/wifi/WifiStateMachine;Z)V
    .locals 0
    .param p1, "killSupplicant"    # Z

    #@0
    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/wifi/WifiStateMachine;->handleSupplicantConnectionLoss(Z)V

    #@3
    return-void
.end method

.method static synthetic -wrap28(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;Lcom/android/internal/util/State;)V
    .locals 0
    .param p1, "message"    # Landroid/os/Message;
    .param p2, "state"    # Lcom/android/internal/util/State;

    #@0
    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/server/wifi/WifiStateMachine;->logStateAndMessage(Landroid/os/Message;Lcom/android/internal/util/State;)V

    #@3
    return-void
.end method

.method static synthetic -wrap29(Lcom/android/server/wifi/WifiStateMachine;Ljava/lang/String;)V
    .locals 0
    .param p1, "s"    # Ljava/lang/String;

    #@0
    .prologue
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/WifiStateMachine;->logw(Ljava/lang/String;)V

    #@3
    return-void
.end method

.method static synthetic -wrap3(Lcom/android/server/wifi/WifiStateMachine;)Z
    .locals 1

    #@0
    invoke-direct {p0}, Lcom/android/server/wifi/WifiStateMachine;->hasConnectionRequests()Z

    #@3
    move-result v0

    #@4
    return v0
.end method

.method static synthetic -wrap30(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;I)V
    .locals 0
    .param p1, "msg"    # Landroid/os/Message;
    .param p2, "what"    # I

    #@0
    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/server/wifi/WifiStateMachine;->replyToMessage(Landroid/os/Message;I)V

    #@3
    return-void
.end method

.method static synthetic -wrap31(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;II)V
    .locals 0
    .param p1, "msg"    # Landroid/os/Message;
    .param p2, "what"    # I
    .param p3, "arg1"    # I

    #@0
    .prologue
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/wifi/WifiStateMachine;->replyToMessage(Landroid/os/Message;II)V

    #@3
    return-void
.end method

.method static synthetic -wrap32(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;ILjava/lang/Object;)V
    .locals 0
    .param p1, "msg"    # Landroid/os/Message;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    #@0
    .prologue
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/wifi/WifiStateMachine;->replyToMessage(Landroid/os/Message;ILjava/lang/Object;)V

    #@3
    return-void
.end method

.method static synthetic -wrap33(Lcom/android/server/wifi/WifiStateMachine;II)V
    .locals 0
    .param p1, "level2FailureCode"    # I
    .param p2, "connectivityFailureCode"    # I

    #@0
    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/server/wifi/WifiStateMachine;->reportConnectionAttemptEnd(II)V

    #@3
    return-void
.end method

.method static synthetic -wrap34(Lcom/android/server/wifi/WifiStateMachine;)V
    .locals 0

    #@0
    invoke-direct {p0}, Lcom/android/server/wifi/WifiStateMachine;->sendConnectedState()V

    #@3
    return-void
.end method

.method static synthetic -wrap35(Lcom/android/server/wifi/WifiStateMachine;Ljava/lang/String;)V
    .locals 0
    .param p1, "bssid"    # Ljava/lang/String;

    #@0
    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/wifi/WifiStateMachine;->sendNetworkStateChangeBroadcast(Ljava/lang/String;)V

    #@3
    return-void
.end method

.method static synthetic -wrap36(Lcom/android/server/wifi/WifiStateMachine;I)V
    .locals 0
    .param p1, "newRssi"    # I

    #@0
    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/wifi/WifiStateMachine;->sendRssiChangeBroadcast(I)V

    #@3
    return-void
.end method

.method static synthetic -wrap37(Lcom/android/server/wifi/WifiStateMachine;Z)V
    .locals 0
    .param p1, "connected"    # Z

    #@0
    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/wifi/WifiStateMachine;->sendSupplicantConnectionChangedBroadcast(Z)V

    #@3
    return-void
.end method

.method static synthetic -wrap38(Lcom/android/server/wifi/WifiStateMachine;)V
    .locals 0

    #@0
    invoke-direct {p0}, Lcom/android/server/wifi/WifiStateMachine;->setFrequencyBand()V

    #@3
    return-void
.end method

.method static synthetic -wrap39(Lcom/android/server/wifi/WifiStateMachine;)V
    .locals 0

    #@0
    invoke-direct {p0}, Lcom/android/server/wifi/WifiStateMachine;->setScanResults()V

    #@3
    return-void
.end method

.method static synthetic -wrap4(Lcom/android/server/wifi/WifiStateMachine;Landroid/net/NetworkInfo$DetailedState;)Z
    .locals 1
    .param p1, "state"    # Landroid/net/NetworkInfo$DetailedState;

    #@0
    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/wifi/WifiStateMachine;->setNetworkDetailedState(Landroid/net/NetworkInfo$DetailedState;)Z

    #@3
    move-result v0

    #@4
    return v0
.end method

.method static synthetic -wrap40(Lcom/android/server/wifi/WifiStateMachine;IZ)V
    .locals 0
    .param p1, "reason"    # I
    .param p2, "enabled"    # Z

    #@0
    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/server/wifi/WifiStateMachine;->setSuspendOptimizationsNative(IZ)V

    #@3
    return-void
.end method

.method static synthetic -wrap41(Lcom/android/server/wifi/WifiStateMachine;IZ)V
    .locals 0
    .param p1, "reason"    # I
    .param p2, "enabled"    # Z

    #@0
    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/server/wifi/WifiStateMachine;->setSuspendOptimizations(IZ)V

    #@3
    return-void
.end method

.method static synthetic -wrap42(Lcom/android/server/wifi/WifiStateMachine;II)V
    .locals 0
    .param p1, "wifiApState"    # I
    .param p2, "reason"    # I

    #@0
    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/server/wifi/WifiStateMachine;->setWifiApState(II)V

    #@3
    return-void
.end method

.method static synthetic -wrap43(Lcom/android/server/wifi/WifiStateMachine;I)V
    .locals 0
    .param p1, "wifiState"    # I

    #@0
    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/wifi/WifiStateMachine;->setWifiState(I)V

    #@3
    return-void
.end method

.method static synthetic -wrap44(Lcom/android/server/wifi/WifiStateMachine;)V
    .locals 0

    #@0
    invoke-direct {p0}, Lcom/android/server/wifi/WifiStateMachine;->stopIpManager()V

    #@3
    return-void
.end method

.method static synthetic -wrap45(Lcom/android/server/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p1, "destState"    # Lcom/android/internal/util/IState;

    #@0
    .prologue
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/WifiStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    #@3
    return-void
.end method

.method static synthetic -wrap46(Lcom/android/server/wifi/WifiStateMachine;Landroid/net/wifi/WifiConfiguration;)V
    .locals 0
    .param p1, "config"    # Landroid/net/wifi/WifiConfiguration;

    #@0
    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/wifi/WifiStateMachine;->updateCapabilities(Landroid/net/wifi/WifiConfiguration;)V

    #@3
    return-void
.end method

.method static synthetic -wrap47(Lcom/android/server/wifi/WifiStateMachine;Landroid/net/LinkProperties;)V
    .locals 0
    .param p1, "newLp"    # Landroid/net/LinkProperties;

    #@0
    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/wifi/WifiStateMachine;->updateLinkProperties(Landroid/net/LinkProperties;)V

    #@3
    return-void
.end method

.method static synthetic -wrap48(Lcom/android/server/wifi/WifiStateMachine;Lcom/android/server/wifi/WnmData;)V
    .locals 0
    .param p1, "event"    # Lcom/android/server/wifi/WnmData;

    #@0
    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/wifi/WifiStateMachine;->wnmFrameReceived(Lcom/android/server/wifi/WnmData;)V

    #@3
    return-void
.end method

.method static synthetic -wrap5(Lcom/android/server/wifi/WifiStateMachine;)Z
    .locals 1

    #@0
    invoke-direct {p0}, Lcom/android/server/wifi/WifiStateMachine;->setRandomMacOui()Z

    #@3
    move-result v0

    #@4
    return v0
.end method

.method static synthetic -wrap6(Lcom/android/server/wifi/WifiStateMachine;Landroid/net/wifi/WifiConfiguration;Ljava/lang/String;)Z
    .locals 1
    .param p1, "config"    # Landroid/net/wifi/WifiConfiguration;
    .param p2, "bssid"    # Ljava/lang/String;

    #@0
    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/server/wifi/WifiStateMachine;->setTargetBssid(Landroid/net/wifi/WifiConfiguration;Ljava/lang/String;)Z

    #@3
    move-result v0

    #@4
    return v0
.end method

.method static synthetic -wrap7(Lcom/android/server/wifi/WifiStateMachine;)Z
    .locals 1

    #@0
    invoke-direct {p0}, Lcom/android/server/wifi/WifiStateMachine;->setupDriverForSoftAp()Z

    #@3
    move-result v0

    #@4
    return v0
.end method

.method static synthetic -wrap8(Lcom/android/server/wifi/WifiStateMachine;Ljava/lang/String;)[B
    .locals 1
    .param p1, "macString"    # Ljava/lang/String;

    #@0
    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/wifi/WifiStateMachine;->macAddressFromString(Ljava/lang/String;)[B

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method static synthetic -wrap9(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/internal/util/IState;
    .locals 1

    #@0
    invoke-virtual {p0}, Lcom/android/server/wifi/WifiStateMachine;->getCurrentState()Lcom/android/internal/util/IState;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 7

    #@0
    .prologue
    const/4 v6, 0x2

    #@1
    const/4 v5, 0x1

    #@2
    const/4 v4, 0x0

    #@3
    .line 157
    sput-boolean v4, Lcom/android/server/wifi/WifiStateMachine;->DBG:Z

    #@5
    .line 158
    sput-boolean v4, Lcom/android/server/wifi/WifiStateMachine;->USE_PAUSE_SCANS:Z

    #@7
    .line 399
    new-instance v0, Ljava/util/Random;

    #@9
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    #@c
    move-result-object v1

    #@d
    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeInMillis()J

    #@10
    move-result-wide v2

    #@11
    invoke-direct {v0, v2, v3}, Ljava/util/Random;-><init>(J)V

    #@14
    sput-object v0, Lcom/android/server/wifi/WifiStateMachine;->mRandom:Ljava/util/Random;

    #@16
    .line 822
    const/4 v0, 0x3

    #@17
    new-array v0, v0, [Ljava/lang/Class;

    #@19
    .line 823
    const-class v1, Lcom/android/internal/util/AsyncChannel;

    #@1b
    aput-object v1, v0, v4

    #@1d
    const-class v1, Lcom/android/server/wifi/WifiStateMachine;

    #@1f
    aput-object v1, v0, v5

    #@21
    const-class v1, Landroid/net/dhcp/DhcpClient;

    #@23
    aput-object v1, v0, v6

    #@25
    .line 822
    sput-object v0, Lcom/android/server/wifi/WifiStateMachine;->sMessageClasses:[Ljava/lang/Class;

    #@27
    .line 825
    sget-object v0, Lcom/android/server/wifi/WifiStateMachine;->sMessageClasses:[Ljava/lang/Class;

    #@29
    invoke-static {v0}, Lcom/android/internal/util/MessageUtils;->findMessageNames([Ljava/lang/Class;)Landroid/util/SparseArray;

    #@2c
    move-result-object v0

    #@2d
    .line 824
    sput-object v0, Lcom/android/server/wifi/WifiStateMachine;->sSmToString:Landroid/util/SparseArray;

    #@2f
    .line 961
    new-instance v0, Landroid/os/WorkSource;

    #@31
    const/16 v1, 0x3f2

    #@33
    invoke-direct {v0, v1}, Landroid/os/WorkSource;-><init>(I)V

    #@36
    sput-object v0, Lcom/android/server/wifi/WifiStateMachine;->WIFI_WORK_SOURCE:Landroid/os/WorkSource;

    #@38
    .line 988
    sput v4, Lcom/android/server/wifi/WifiStateMachine;->sScanAlarmIntentCount:I

    #@3a
    .line 1503
    sput v6, Lcom/android/server/wifi/WifiStateMachine;->MESSAGE_HANDLING_STATUS_PROCESSED:I

    #@3c
    .line 1504
    sput v5, Lcom/android/server/wifi/WifiStateMachine;->MESSAGE_HANDLING_STATUS_OK:I

    #@3e
    .line 1505
    sput v4, Lcom/android/server/wifi/WifiStateMachine;->MESSAGE_HANDLING_STATUS_UNKNOWN:I

    #@40
    .line 1506
    const/4 v0, -0x1

    #@41
    sput v0, Lcom/android/server/wifi/WifiStateMachine;->MESSAGE_HANDLING_STATUS_REFUSED:I

    #@43
    .line 1507
    const/4 v0, -0x2

    #@44
    sput v0, Lcom/android/server/wifi/WifiStateMachine;->MESSAGE_HANDLING_STATUS_FAIL:I

    #@46
    .line 1508
    const/4 v0, -0x3

    #@47
    sput v0, Lcom/android/server/wifi/WifiStateMachine;->MESSAGE_HANDLING_STATUS_OBSOLETE:I

    #@49
    .line 1509
    const/4 v0, -0x4

    #@4a
    sput v0, Lcom/android/server/wifi/WifiStateMachine;->MESSAGE_HANDLING_STATUS_DEFERRED:I

    #@4c
    .line 1510
    const/4 v0, -0x5

    #@4d
    sput v0, Lcom/android/server/wifi/WifiStateMachine;->MESSAGE_HANDLING_STATUS_DISCARD:I

    #@4f
    .line 1511
    const/4 v0, -0x6

    #@50
    sput v0, Lcom/android/server/wifi/WifiStateMachine;->MESSAGE_HANDLING_STATUS_LOOPED:I

    #@52
    .line 1512
    const/4 v0, -0x7

    #@53
    sput v0, Lcom/android/server/wifi/WifiStateMachine;->MESSAGE_HANDLING_STATUS_HANDLING_ERROR:I

    #@55
    .line 150
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/wifi/FrameworkFacade;Landroid/os/Looper;Landroid/os/UserManager;Lcom/android/server/wifi/WifiInjector;Lcom/android/server/wifi/BackupManagerProxy;Lcom/android/server/wifi/WifiCountryCode;)V
    .locals 17
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "facade"    # Lcom/android/server/wifi/FrameworkFacade;
    .param p3, "looper"    # Landroid/os/Looper;
    .param p4, "userManager"    # Landroid/os/UserManager;
    .param p5, "wifiInjector"    # Lcom/android/server/wifi/WifiInjector;
    .param p6, "backupManagerProxy"    # Lcom/android/server/wifi/BackupManagerProxy;
    .param p7, "countryCode"    # Lcom/android/server/wifi/WifiCountryCode;

    #@0
    .prologue
    .line 1005
    const-string/jumbo v2, "WifiStateMachine"

    #@3
    move-object/from16 v0, p0

    #@5
    move-object/from16 v1, p3

    #@7
    invoke-direct {v0, v2, v1}, Lcom/android/internal/util/StateMachine;-><init>(Ljava/lang/String;Landroid/os/Looper;)V

    #@a
    .line 165
    const/4 v2, 0x0

    #@b
    move-object/from16 v0, p0

    #@d
    iput v2, v0, Lcom/android/server/wifi/WifiStateMachine;->mVerboseLoggingLevel:I

    #@f
    .line 169
    const/4 v2, 0x0

    #@10
    move-object/from16 v0, p0

    #@12
    iput-boolean v2, v0, Lcom/android/server/wifi/WifiStateMachine;->didBlackListBSSID:Z

    #@14
    .line 198
    new-instance v2, Ljava/util/concurrent/atomic/AtomicBoolean;

    #@16
    const/4 v3, 0x0

    #@17
    invoke-direct {v2, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    #@1a
    move-object/from16 v0, p0

    #@1c
    iput-object v2, v0, Lcom/android/server/wifi/WifiStateMachine;->mP2pConnected:Ljava/util/concurrent/atomic/AtomicBoolean;

    #@1e
    .line 199
    const/4 v2, 0x0

    #@1f
    move-object/from16 v0, p0

    #@21
    iput-boolean v2, v0, Lcom/android/server/wifi/WifiStateMachine;->mTemporarilyDisconnectWifi:Z

    #@23
    .line 207
    new-instance v2, Ljava/util/ArrayList;

    #@25
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    #@28
    move-object/from16 v0, p0

    #@2a
    iput-object v2, v0, Lcom/android/server/wifi/WifiStateMachine;->mScanResults:Ljava/util/List;

    #@2c
    .line 208
    new-instance v2, Ljava/lang/Object;

    #@2e
    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    #@31
    move-object/from16 v0, p0

    #@33
    iput-object v2, v0, Lcom/android/server/wifi/WifiStateMachine;->mScanResultsLock:Ljava/lang/Object;

    #@35
    .line 215
    const/4 v2, 0x0

    #@36
    move-object/from16 v0, p0

    #@38
    iput-boolean v2, v0, Lcom/android/server/wifi/WifiStateMachine;->mScreenOn:Z

    #@3a
    .line 224
    const/4 v2, -0x1

    #@3b
    move-object/from16 v0, p0

    #@3d
    iput v2, v0, Lcom/android/server/wifi/WifiStateMachine;->mLastSignalLevel:I

    #@3f
    .line 227
    const/4 v2, 0x0

    #@40
    move-object/from16 v0, p0

    #@42
    iput-boolean v2, v0, Lcom/android/server/wifi/WifiStateMachine;->linkDebouncing:Z

    #@44
    .line 263
    const/4 v2, 0x0

    #@45
    move-object/from16 v0, p0

    #@47
    iput-boolean v2, v0, Lcom/android/server/wifi/WifiStateMachine;->testNetworkDisconnect:Z

    #@49
    .line 265
    const/4 v2, 0x0

    #@4a
    move-object/from16 v0, p0

    #@4c
    iput-boolean v2, v0, Lcom/android/server/wifi/WifiStateMachine;->mEnableRssiPolling:Z

    #@4e
    .line 266
    const/4 v2, 0x0

    #@4f
    move-object/from16 v0, p0

    #@51
    iput v2, v0, Lcom/android/server/wifi/WifiStateMachine;->mRssiPollToken:I

    #@53
    .line 272
    const/4 v2, 0x1

    #@54
    move-object/from16 v0, p0

    #@56
    iput v2, v0, Lcom/android/server/wifi/WifiStateMachine;->mOperationalMode:I

    #@58
    .line 273
    const/4 v2, 0x0

    #@59
    move-object/from16 v0, p0

    #@5b
    iput-boolean v2, v0, Lcom/android/server/wifi/WifiStateMachine;->mIsScanOngoing:Z

    #@5d
    .line 274
    const/4 v2, 0x0

    #@5e
    move-object/from16 v0, p0

    #@60
    iput-boolean v2, v0, Lcom/android/server/wifi/WifiStateMachine;->mIsFullScanOngoing:Z

    #@62
    .line 275
    const/4 v2, 0x0

    #@63
    move-object/from16 v0, p0

    #@65
    iput-boolean v2, v0, Lcom/android/server/wifi/WifiStateMachine;->mSendScanResultsBroadcast:Z

    #@67
    .line 277
    new-instance v2, Ljava/util/LinkedList;

    #@69
    invoke-direct {v2}, Ljava/util/LinkedList;-><init>()V

    #@6c
    move-object/from16 v0, p0

    #@6e
    iput-object v2, v0, Lcom/android/server/wifi/WifiStateMachine;->mBufferedScanMsg:Ljava/util/Queue;

    #@70
    .line 278
    const/4 v2, 0x0

    #@71
    move-object/from16 v0, p0

    #@73
    iput-object v2, v0, Lcom/android/server/wifi/WifiStateMachine;->mScanWorkSource:Landroid/os/WorkSource;

    #@75
    .line 293
    new-instance v2, Ljava/util/concurrent/atomic/AtomicBoolean;

    #@77
    const/4 v3, 0x0

    #@78
    invoke-direct {v2, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    #@7b
    move-object/from16 v0, p0

    #@7d
    iput-object v2, v0, Lcom/android/server/wifi/WifiStateMachine;->mScreenBroadcastReceived:Ljava/util/concurrent/atomic/AtomicBoolean;

    #@7f
    .line 295
    const/4 v2, 0x0

    #@80
    move-object/from16 v0, p0

    #@82
    iput-boolean v2, v0, Lcom/android/server/wifi/WifiStateMachine;->mBluetoothConnectionActive:Z

    #@84
    .line 321
    const/4 v2, 0x0

    #@85
    move-object/from16 v0, p0

    #@87
    iput v2, v0, Lcom/android/server/wifi/WifiStateMachine;->mSupplicantRestartCount:I

    #@89
    .line 323
    const/4 v2, 0x0

    #@8a
    move-object/from16 v0, p0

    #@8c
    iput v2, v0, Lcom/android/server/wifi/WifiStateMachine;->mSupplicantStopFailureToken:I

    #@8e
    .line 331
    const/4 v2, 0x0

    #@8f
    move-object/from16 v0, p0

    #@91
    iput v2, v0, Lcom/android/server/wifi/WifiStateMachine;->mTetherToken:I

    #@93
    .line 339
    const/4 v2, 0x0

    #@94
    move-object/from16 v0, p0

    #@96
    iput v2, v0, Lcom/android/server/wifi/WifiStateMachine;->mDriverStartToken:I

    #@98
    .line 354
    const/4 v2, 0x0

    #@99
    move-object/from16 v0, p0

    #@9b
    iput v2, v0, Lcom/android/server/wifi/WifiStateMachine;->mPeriodicScanToken:I

    #@9d
    .line 361
    new-instance v2, Ljava/lang/Object;

    #@9f
    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    #@a2
    move-object/from16 v0, p0

    #@a4
    iput-object v2, v0, Lcom/android/server/wifi/WifiStateMachine;->mDhcpResultsLock:Ljava/lang/Object;

    #@a6
    .line 370
    const/4 v2, 0x4

    #@a7
    move-object/from16 v0, p0

    #@a9
    iput v2, v0, Lcom/android/server/wifi/WifiStateMachine;->mWifiLinkLayerStatsSupported:I

    #@ab
    .line 373
    const/4 v2, 0x0

    #@ac
    move-object/from16 v0, p0

    #@ae
    iput-boolean v2, v0, Lcom/android/server/wifi/WifiStateMachine;->mAutoRoaming:Z

    #@b0
    .line 376
    const/4 v2, 0x0

    #@b1
    move-object/from16 v0, p0

    #@b3
    iput v2, v0, Lcom/android/server/wifi/WifiStateMachine;->mRoamFailCount:I

    #@b5
    .line 382
    const-string/jumbo v2, "any"

    #@b8
    move-object/from16 v0, p0

    #@ba
    iput-object v2, v0, Lcom/android/server/wifi/WifiStateMachine;->mTargetRoamBSSID:Ljava/lang/String;

    #@bc
    .line 386
    const/4 v2, -0x1

    #@bd
    move-object/from16 v0, p0

    #@bf
    iput v2, v0, Lcom/android/server/wifi/WifiStateMachine;->mTargetNetworkId:I

    #@c1
    .line 388
    const-wide/16 v2, 0x0

    #@c3
    move-object/from16 v0, p0

    #@c5
    iput-wide v2, v0, Lcom/android/server/wifi/WifiStateMachine;->mLastDriverRoamAttempt:J

    #@c7
    .line 390
    const/4 v2, 0x0

    #@c8
    move-object/from16 v0, p0

    #@ca
    iput-object v2, v0, Lcom/android/server/wifi/WifiStateMachine;->targetWificonfiguration:Landroid/net/wifi/WifiConfiguration;

    #@cc
    .line 393
    const/4 v2, 0x0

    #@cd
    move-object/from16 v0, p0

    #@cf
    iput-object v2, v0, Lcom/android/server/wifi/WifiStateMachine;->lastSavedConfigurationAttempt:Landroid/net/wifi/WifiConfiguration;

    #@d1
    .line 396
    const/4 v2, 0x0

    #@d2
    move-object/from16 v0, p0

    #@d4
    iput-object v2, v0, Lcom/android/server/wifi/WifiStateMachine;->lastForgetConfigurationAttempt:Landroid/net/wifi/WifiConfiguration;

    #@d6
    .line 536
    new-instance v2, Ljava/util/concurrent/atomic/AtomicInteger;

    #@d8
    const/4 v3, 0x0

    #@d9
    invoke-direct {v2, v3}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    #@dc
    move-object/from16 v0, p0

    #@de
    iput-object v2, v0, Lcom/android/server/wifi/WifiStateMachine;->mFrequencyBand:Ljava/util/concurrent/atomic/AtomicInteger;

    #@e0
    .line 539
    new-instance v2, Lcom/android/internal/util/AsyncChannel;

    #@e2
    invoke-direct {v2}, Lcom/android/internal/util/AsyncChannel;-><init>()V

    #@e5
    move-object/from16 v0, p0

    #@e7
    iput-object v2, v0, Lcom/android/server/wifi/WifiStateMachine;->mReplyChannel:Lcom/android/internal/util/AsyncChannel;

    #@e9
    .line 549
    const/4 v2, 0x0

    #@ea
    move-object/from16 v0, p0

    #@ec
    iput v2, v0, Lcom/android/server/wifi/WifiStateMachine;->mConnectionReqCount:I

    #@ee
    .line 552
    const/4 v2, 0x0

    #@ef
    move-object/from16 v0, p0

    #@f1
    iput v2, v0, Lcom/android/server/wifi/WifiStateMachine;->mUntrustedReqCount:I

    #@f3
    .line 555
    new-instance v2, Ljava/lang/Object;

    #@f5
    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    #@f8
    move-object/from16 v0, p0

    #@fa
    iput-object v2, v0, Lcom/android/server/wifi/WifiStateMachine;->mWifiReqCountLock:Ljava/lang/Object;

    #@fc
    .line 557
    const/4 v2, 0x0

    #@fd
    move-object/from16 v0, p0

    #@ff
    iput-object v2, v0, Lcom/android/server/wifi/WifiStateMachine;->mWhiteListedSsids:[Ljava/lang/String;

    #@101
    .line 564
    new-instance v2, Landroid/net/wifi/WifiConnectionStatistics;

    #@103
    invoke-direct {v2}, Landroid/net/wifi/WifiConnectionStatistics;-><init>()V

    #@106
    move-object/from16 v0, p0

    #@108
    iput-object v2, v0, Lcom/android/server/wifi/WifiStateMachine;->mWifiConnectionStatistics:Landroid/net/wifi/WifiConnectionStatistics;

    #@10a
    .line 567
    new-instance v2, Landroid/net/NetworkCapabilities;

    #@10c
    invoke-direct {v2}, Landroid/net/NetworkCapabilities;-><init>()V

    #@10f
    move-object/from16 v0, p0

    #@111
    iput-object v2, v0, Lcom/android/server/wifi/WifiStateMachine;->mNetworkCapabilitiesFilter:Landroid/net/NetworkCapabilities;

    #@113
    .line 570
    new-instance v2, Landroid/net/NetworkMisc;

    #@115
    invoke-direct {v2}, Landroid/net/NetworkMisc;-><init>()V

    #@118
    move-object/from16 v0, p0

    #@11a
    iput-object v2, v0, Lcom/android/server/wifi/WifiStateMachine;->mNetworkMisc:Landroid/net/NetworkMisc;

    #@11c
    .line 669
    const/4 v2, 0x0

    #@11d
    move-object/from16 v0, p0

    #@11f
    iput v2, v0, Lcom/android/server/wifi/WifiStateMachine;->testNetworkDisconnectCounter:I

    #@121
    .line 684
    const/4 v2, 0x0

    #@122
    move-object/from16 v0, p0

    #@124
    iput v2, v0, Lcom/android/server/wifi/WifiStateMachine;->roamWatchdogCount:I

    #@126
    .line 723
    const/4 v2, 0x0

    #@127
    move-object/from16 v0, p0

    #@129
    iput v2, v0, Lcom/android/server/wifi/WifiStateMachine;->obtainingIpWatchdogCount:I

    #@12b
    .line 729
    const/4 v2, 0x0

    #@12c
    move-object/from16 v0, p0

    #@12e
    iput v2, v0, Lcom/android/server/wifi/WifiStateMachine;->disconnectingWatchdogCount:I

    #@130
    .line 844
    const/4 v2, 0x0

    #@131
    move-object/from16 v0, p0

    #@133
    iput v2, v0, Lcom/android/server/wifi/WifiStateMachine;->mSuspendOptNeedsDisabled:I

    #@135
    .line 851
    new-instance v2, Ljava/util/concurrent/atomic/AtomicBoolean;

    #@137
    const/4 v3, 0x1

    #@138
    invoke-direct {v2, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    #@13b
    move-object/from16 v0, p0

    #@13d
    iput-object v2, v0, Lcom/android/server/wifi/WifiStateMachine;->mUserWantsSuspendOpt:Ljava/util/concurrent/atomic/AtomicBoolean;

    #@13f
    .line 883
    const/4 v2, 0x0

    #@140
    move-object/from16 v0, p0

    #@142
    iput v2, v0, Lcom/android/server/wifi/WifiStateMachine;->mRunningBeaconCount:I

    #@144
    .line 886
    new-instance v2, Lcom/android/server/wifi/WifiStateMachine$DefaultState;

    #@146
    move-object/from16 v0, p0

    #@148
    invoke-direct {v2, v0}, Lcom/android/server/wifi/WifiStateMachine$DefaultState;-><init>(Lcom/android/server/wifi/WifiStateMachine;)V

    #@14b
    move-object/from16 v0, p0

    #@14d
    iput-object v2, v0, Lcom/android/server/wifi/WifiStateMachine;->mDefaultState:Lcom/android/internal/util/State;

    #@14f
    .line 888
    new-instance v2, Lcom/android/server/wifi/WifiStateMachine$InitialState;

    #@151
    move-object/from16 v0, p0

    #@153
    invoke-direct {v2, v0}, Lcom/android/server/wifi/WifiStateMachine$InitialState;-><init>(Lcom/android/server/wifi/WifiStateMachine;)V

    #@156
    move-object/from16 v0, p0

    #@158
    iput-object v2, v0, Lcom/android/server/wifi/WifiStateMachine;->mInitialState:Lcom/android/internal/util/State;

    #@15a
    .line 890
    new-instance v2, Lcom/android/server/wifi/WifiStateMachine$SupplicantStartingState;

    #@15c
    move-object/from16 v0, p0

    #@15e
    invoke-direct {v2, v0}, Lcom/android/server/wifi/WifiStateMachine$SupplicantStartingState;-><init>(Lcom/android/server/wifi/WifiStateMachine;)V

    #@161
    move-object/from16 v0, p0

    #@163
    iput-object v2, v0, Lcom/android/server/wifi/WifiStateMachine;->mSupplicantStartingState:Lcom/android/internal/util/State;

    #@165
    .line 892
    new-instance v2, Lcom/android/server/wifi/WifiStateMachine$SupplicantStartedState;

    #@167
    move-object/from16 v0, p0

    #@169
    invoke-direct {v2, v0}, Lcom/android/server/wifi/WifiStateMachine$SupplicantStartedState;-><init>(Lcom/android/server/wifi/WifiStateMachine;)V

    #@16c
    move-object/from16 v0, p0

    #@16e
    iput-object v2, v0, Lcom/android/server/wifi/WifiStateMachine;->mSupplicantStartedState:Lcom/android/internal/util/State;

    #@170
    .line 894
    new-instance v2, Lcom/android/server/wifi/WifiStateMachine$SupplicantStoppingState;

    #@172
    move-object/from16 v0, p0

    #@174
    invoke-direct {v2, v0}, Lcom/android/server/wifi/WifiStateMachine$SupplicantStoppingState;-><init>(Lcom/android/server/wifi/WifiStateMachine;)V

    #@177
    move-object/from16 v0, p0

    #@179
    iput-object v2, v0, Lcom/android/server/wifi/WifiStateMachine;->mSupplicantStoppingState:Lcom/android/internal/util/State;

    #@17b
    .line 896
    new-instance v2, Lcom/android/server/wifi/WifiStateMachine$DriverStartingState;

    #@17d
    move-object/from16 v0, p0

    #@17f
    invoke-direct {v2, v0}, Lcom/android/server/wifi/WifiStateMachine$DriverStartingState;-><init>(Lcom/android/server/wifi/WifiStateMachine;)V

    #@182
    move-object/from16 v0, p0

    #@184
    iput-object v2, v0, Lcom/android/server/wifi/WifiStateMachine;->mDriverStartingState:Lcom/android/internal/util/State;

    #@186
    .line 898
    new-instance v2, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;

    #@188
    move-object/from16 v0, p0

    #@18a
    invoke-direct {v2, v0}, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;-><init>(Lcom/android/server/wifi/WifiStateMachine;)V

    #@18d
    move-object/from16 v0, p0

    #@18f
    iput-object v2, v0, Lcom/android/server/wifi/WifiStateMachine;->mDriverStartedState:Lcom/android/internal/util/State;

    #@191
    .line 903
    new-instance v2, Lcom/android/server/wifi/WifiStateMachine$WaitForP2pDisableState;

    #@193
    move-object/from16 v0, p0

    #@195
    invoke-direct {v2, v0}, Lcom/android/server/wifi/WifiStateMachine$WaitForP2pDisableState;-><init>(Lcom/android/server/wifi/WifiStateMachine;)V

    #@198
    move-object/from16 v0, p0

    #@19a
    iput-object v2, v0, Lcom/android/server/wifi/WifiStateMachine;->mWaitForP2pDisableState:Lcom/android/internal/util/State;

    #@19c
    .line 905
    new-instance v2, Lcom/android/server/wifi/WifiStateMachine$DriverStoppingState;

    #@19e
    move-object/from16 v0, p0

    #@1a0
    invoke-direct {v2, v0}, Lcom/android/server/wifi/WifiStateMachine$DriverStoppingState;-><init>(Lcom/android/server/wifi/WifiStateMachine;)V

    #@1a3
    move-object/from16 v0, p0

    #@1a5
    iput-object v2, v0, Lcom/android/server/wifi/WifiStateMachine;->mDriverStoppingState:Lcom/android/internal/util/State;

    #@1a7
    .line 907
    new-instance v2, Lcom/android/server/wifi/WifiStateMachine$DriverStoppedState;

    #@1a9
    move-object/from16 v0, p0

    #@1ab
    invoke-direct {v2, v0}, Lcom/android/server/wifi/WifiStateMachine$DriverStoppedState;-><init>(Lcom/android/server/wifi/WifiStateMachine;)V

    #@1ae
    move-object/from16 v0, p0

    #@1b0
    iput-object v2, v0, Lcom/android/server/wifi/WifiStateMachine;->mDriverStoppedState:Lcom/android/internal/util/State;

    #@1b2
    .line 909
    new-instance v2, Lcom/android/server/wifi/WifiStateMachine$ScanModeState;

    #@1b4
    move-object/from16 v0, p0

    #@1b6
    invoke-direct {v2, v0}, Lcom/android/server/wifi/WifiStateMachine$ScanModeState;-><init>(Lcom/android/server/wifi/WifiStateMachine;)V

    #@1b9
    move-object/from16 v0, p0

    #@1bb
    iput-object v2, v0, Lcom/android/server/wifi/WifiStateMachine;->mScanModeState:Lcom/android/internal/util/State;

    #@1bd
    .line 911
    new-instance v2, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;

    #@1bf
    move-object/from16 v0, p0

    #@1c1
    invoke-direct {v2, v0}, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;-><init>(Lcom/android/server/wifi/WifiStateMachine;)V

    #@1c4
    move-object/from16 v0, p0

    #@1c6
    iput-object v2, v0, Lcom/android/server/wifi/WifiStateMachine;->mConnectModeState:Lcom/android/internal/util/State;

    #@1c8
    .line 913
    new-instance v2, Lcom/android/server/wifi/WifiStateMachine$L2ConnectedState;

    #@1ca
    move-object/from16 v0, p0

    #@1cc
    invoke-direct {v2, v0}, Lcom/android/server/wifi/WifiStateMachine$L2ConnectedState;-><init>(Lcom/android/server/wifi/WifiStateMachine;)V

    #@1cf
    move-object/from16 v0, p0

    #@1d1
    iput-object v2, v0, Lcom/android/server/wifi/WifiStateMachine;->mL2ConnectedState:Lcom/android/internal/util/State;

    #@1d3
    .line 915
    new-instance v2, Lcom/android/server/wifi/WifiStateMachine$ObtainingIpState;

    #@1d5
    move-object/from16 v0, p0

    #@1d7
    invoke-direct {v2, v0}, Lcom/android/server/wifi/WifiStateMachine$ObtainingIpState;-><init>(Lcom/android/server/wifi/WifiStateMachine;)V

    #@1da
    move-object/from16 v0, p0

    #@1dc
    iput-object v2, v0, Lcom/android/server/wifi/WifiStateMachine;->mObtainingIpState:Lcom/android/internal/util/State;

    #@1de
    .line 917
    new-instance v2, Lcom/android/server/wifi/WifiStateMachine$ConnectedState;

    #@1e0
    move-object/from16 v0, p0

    #@1e2
    invoke-direct {v2, v0}, Lcom/android/server/wifi/WifiStateMachine$ConnectedState;-><init>(Lcom/android/server/wifi/WifiStateMachine;)V

    #@1e5
    move-object/from16 v0, p0

    #@1e7
    iput-object v2, v0, Lcom/android/server/wifi/WifiStateMachine;->mConnectedState:Lcom/android/internal/util/State;

    #@1e9
    .line 919
    new-instance v2, Lcom/android/server/wifi/WifiStateMachine$RoamingState;

    #@1eb
    move-object/from16 v0, p0

    #@1ed
    invoke-direct {v2, v0}, Lcom/android/server/wifi/WifiStateMachine$RoamingState;-><init>(Lcom/android/server/wifi/WifiStateMachine;)V

    #@1f0
    move-object/from16 v0, p0

    #@1f2
    iput-object v2, v0, Lcom/android/server/wifi/WifiStateMachine;->mRoamingState:Lcom/android/internal/util/State;

    #@1f4
    .line 921
    new-instance v2, Lcom/android/server/wifi/WifiStateMachine$DisconnectingState;

    #@1f6
    move-object/from16 v0, p0

    #@1f8
    invoke-direct {v2, v0}, Lcom/android/server/wifi/WifiStateMachine$DisconnectingState;-><init>(Lcom/android/server/wifi/WifiStateMachine;)V

    #@1fb
    move-object/from16 v0, p0

    #@1fd
    iput-object v2, v0, Lcom/android/server/wifi/WifiStateMachine;->mDisconnectingState:Lcom/android/internal/util/State;

    #@1ff
    .line 923
    new-instance v2, Lcom/android/server/wifi/WifiStateMachine$DisconnectedState;

    #@201
    move-object/from16 v0, p0

    #@203
    invoke-direct {v2, v0}, Lcom/android/server/wifi/WifiStateMachine$DisconnectedState;-><init>(Lcom/android/server/wifi/WifiStateMachine;)V

    #@206
    move-object/from16 v0, p0

    #@208
    iput-object v2, v0, Lcom/android/server/wifi/WifiStateMachine;->mDisconnectedState:Lcom/android/internal/util/State;

    #@20a
    .line 925
    new-instance v2, Lcom/android/server/wifi/WifiStateMachine$WpsRunningState;

    #@20c
    move-object/from16 v0, p0

    #@20e
    invoke-direct {v2, v0}, Lcom/android/server/wifi/WifiStateMachine$WpsRunningState;-><init>(Lcom/android/server/wifi/WifiStateMachine;)V

    #@211
    move-object/from16 v0, p0

    #@213
    iput-object v2, v0, Lcom/android/server/wifi/WifiStateMachine;->mWpsRunningState:Lcom/android/internal/util/State;

    #@215
    .line 927
    new-instance v2, Lcom/android/server/wifi/WifiStateMachine$SoftApState;

    #@217
    move-object/from16 v0, p0

    #@219
    invoke-direct {v2, v0}, Lcom/android/server/wifi/WifiStateMachine$SoftApState;-><init>(Lcom/android/server/wifi/WifiStateMachine;)V

    #@21c
    move-object/from16 v0, p0

    #@21e
    iput-object v2, v0, Lcom/android/server/wifi/WifiStateMachine;->mSoftApState:Lcom/android/internal/util/State;

    #@220
    .line 945
    new-instance v2, Ljava/util/concurrent/atomic/AtomicInteger;

    #@222
    const/4 v3, 0x1

    #@223
    invoke-direct {v2, v3}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    #@226
    move-object/from16 v0, p0

    #@228
    iput-object v2, v0, Lcom/android/server/wifi/WifiStateMachine;->mWifiState:Ljava/util/concurrent/atomic/AtomicInteger;

    #@22a
    .line 954
    new-instance v2, Ljava/util/concurrent/atomic/AtomicInteger;

    #@22c
    const/16 v3, 0xb

    #@22e
    invoke-direct {v2, v3}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    #@231
    move-object/from16 v0, p0

    #@233
    iput-object v2, v0, Lcom/android/server/wifi/WifiStateMachine;->mWifiApState:Ljava/util/concurrent/atomic/AtomicInteger;

    #@235
    .line 966
    const/4 v2, 0x0

    #@236
    move-object/from16 v0, p0

    #@238
    iput-boolean v2, v0, Lcom/android/server/wifi/WifiStateMachine;->mIsRunning:Z

    #@23a
    .line 971
    const/4 v2, 0x0

    #@23b
    move-object/from16 v0, p0

    #@23d
    iput-boolean v2, v0, Lcom/android/server/wifi/WifiStateMachine;->mReportedRunning:Z

    #@23f
    .line 976
    new-instance v2, Landroid/os/WorkSource;

    #@241
    invoke-direct {v2}, Landroid/os/WorkSource;-><init>()V

    #@244
    move-object/from16 v0, p0

    #@246
    iput-object v2, v0, Lcom/android/server/wifi/WifiStateMachine;->mRunningWifiUids:Landroid/os/WorkSource;

    #@248
    .line 981
    new-instance v2, Landroid/os/WorkSource;

    #@24a
    invoke-direct {v2}, Landroid/os/WorkSource;-><init>()V

    #@24d
    move-object/from16 v0, p0

    #@24f
    iput-object v2, v0, Lcom/android/server/wifi/WifiStateMachine;->mLastRunningWifiUids:Landroid/os/WorkSource;

    #@251
    .line 999
    const/4 v2, -0x1

    #@252
    move-object/from16 v0, p0

    #@254
    iput v2, v0, Lcom/android/server/wifi/WifiStateMachine;->mSystemUiUid:I

    #@256
    .line 1358
    const-wide/16 v2, 0x0

    #@258
    move-object/from16 v0, p0

    #@25a
    iput-wide v2, v0, Lcom/android/server/wifi/WifiStateMachine;->mLastScanPermissionUpdate:J

    #@25c
    .line 1359
    const/4 v2, 0x0

    #@25d
    move-object/from16 v0, p0

    #@25f
    iput-boolean v2, v0, Lcom/android/server/wifi/WifiStateMachine;->mConnectedModeGScanOffloadStarted:Z

    #@261
    .line 1367
    const/4 v2, 0x0

    #@262
    move-object/from16 v0, p0

    #@264
    iput v2, v0, Lcom/android/server/wifi/WifiStateMachine;->mAggressiveHandover:I

    #@266
    .line 1485
    const-wide/16 v2, 0x0

    #@268
    move-object/from16 v0, p0

    #@26a
    iput-wide v2, v0, Lcom/android/server/wifi/WifiStateMachine;->mDisconnectedTimeStamp:J

    #@26c
    .line 1498
    const-wide/16 v2, 0x0

    #@26e
    move-object/from16 v0, p0

    #@270
    iput-wide v2, v0, Lcom/android/server/wifi/WifiStateMachine;->lastConnectAttemptTimestamp:J

    #@272
    .line 1499
    const/4 v2, 0x0

    #@273
    move-object/from16 v0, p0

    #@275
    iput-object v2, v0, Lcom/android/server/wifi/WifiStateMachine;->lastScanFreqs:Ljava/util/Set;

    #@277
    .line 1514
    const/4 v2, 0x0

    #@278
    move-object/from16 v0, p0

    #@27a
    iput v2, v0, Lcom/android/server/wifi/WifiStateMachine;->messageHandlingStatus:I

    #@27c
    .line 1528
    const/4 v2, 0x0

    #@27d
    move-object/from16 v0, p0

    #@27f
    iput v2, v0, Lcom/android/server/wifi/WifiStateMachine;->mOnTime:I

    #@281
    .line 1529
    const/4 v2, 0x0

    #@282
    move-object/from16 v0, p0

    #@284
    iput v2, v0, Lcom/android/server/wifi/WifiStateMachine;->mTxTime:I

    #@286
    .line 1530
    const/4 v2, 0x0

    #@287
    move-object/from16 v0, p0

    #@289
    iput v2, v0, Lcom/android/server/wifi/WifiStateMachine;->mRxTime:I

    #@28b
    .line 1532
    const/4 v2, 0x0

    #@28c
    move-object/from16 v0, p0

    #@28e
    iput v2, v0, Lcom/android/server/wifi/WifiStateMachine;->mOnTimeScreenStateChange:I

    #@290
    .line 1533
    const-wide/16 v2, 0x0

    #@292
    move-object/from16 v0, p0

    #@294
    iput-wide v2, v0, Lcom/android/server/wifi/WifiStateMachine;->lastOntimeReportTimeStamp:J

    #@296
    .line 1534
    const-wide/16 v2, 0x0

    #@298
    move-object/from16 v0, p0

    #@29a
    iput-wide v2, v0, Lcom/android/server/wifi/WifiStateMachine;->lastScreenStateChangeTimeStamp:J

    #@29c
    .line 1535
    const/4 v2, 0x0

    #@29d
    move-object/from16 v0, p0

    #@29f
    iput v2, v0, Lcom/android/server/wifi/WifiStateMachine;->mOnTimeLastReport:I

    #@2a1
    .line 1536
    const/4 v2, 0x0

    #@2a2
    move-object/from16 v0, p0

    #@2a4
    iput v2, v0, Lcom/android/server/wifi/WifiStateMachine;->mTxTimeLastReport:I

    #@2a6
    .line 1537
    const/4 v2, 0x0

    #@2a7
    move-object/from16 v0, p0

    #@2a9
    iput v2, v0, Lcom/android/server/wifi/WifiStateMachine;->mRxTimeLastReport:I

    #@2ab
    .line 1539
    const-wide/16 v2, 0x0

    #@2ad
    move-object/from16 v0, p0

    #@2af
    iput-wide v2, v0, Lcom/android/server/wifi/WifiStateMachine;->lastLinkLayerStatsUpdate:J

    #@2b1
    .line 3236
    const/4 v2, 0x0

    #@2b2
    move-object/from16 v0, p0

    #@2b4
    iput-object v2, v0, Lcom/android/server/wifi/WifiStateMachine;->mWifiScoreReport:Lcom/android/server/wifi/WifiScoreReport;

    #@2b6
    .line 1006
    move-object/from16 v0, p5

    #@2b8
    move-object/from16 v1, p0

    #@2ba
    iput-object v0, v1, Lcom/android/server/wifi/WifiStateMachine;->mWifiInjector:Lcom/android/server/wifi/WifiInjector;

    #@2bc
    .line 1007
    move-object/from16 v0, p0

    #@2be
    iget-object v2, v0, Lcom/android/server/wifi/WifiStateMachine;->mWifiInjector:Lcom/android/server/wifi/WifiInjector;

    #@2c0
    invoke-virtual {v2}, Lcom/android/server/wifi/WifiInjector;->getWifiMetrics()Lcom/android/server/wifi/WifiMetrics;

    #@2c3
    move-result-object v2

    #@2c4
    move-object/from16 v0, p0

    #@2c6
    iput-object v2, v0, Lcom/android/server/wifi/WifiStateMachine;->mWifiMetrics:Lcom/android/server/wifi/WifiMetrics;

    #@2c8
    .line 1008
    invoke-virtual/range {p5 .. p5}, Lcom/android/server/wifi/WifiInjector;->getWifiLastResortWatchdog()Lcom/android/server/wifi/WifiLastResortWatchdog;

    #@2cb
    move-result-object v2

    #@2cc
    move-object/from16 v0, p0

    #@2ce
    iput-object v2, v0, Lcom/android/server/wifi/WifiStateMachine;->mWifiLastResortWatchdog:Lcom/android/server/wifi/WifiLastResortWatchdog;

    #@2d0
    .line 1009
    invoke-virtual/range {p5 .. p5}, Lcom/android/server/wifi/WifiInjector;->getClock()Lcom/android/server/wifi/Clock;

    #@2d3
    move-result-object v2

    #@2d4
    move-object/from16 v0, p0

    #@2d6
    iput-object v2, v0, Lcom/android/server/wifi/WifiStateMachine;->mClock:Lcom/android/server/wifi/Clock;

    #@2d8
    .line 1010
    invoke-virtual/range {p5 .. p5}, Lcom/android/server/wifi/WifiInjector;->getPropertyService()Lcom/android/server/wifi/PropertyService;

    #@2db
    move-result-object v2

    #@2dc
    move-object/from16 v0, p0

    #@2de
    iput-object v2, v0, Lcom/android/server/wifi/WifiStateMachine;->mPropertyService:Lcom/android/server/wifi/PropertyService;

    #@2e0
    .line 1011
    invoke-virtual/range {p5 .. p5}, Lcom/android/server/wifi/WifiInjector;->getBuildProperties()Lcom/android/server/wifi/BuildProperties;

    #@2e3
    move-result-object v2

    #@2e4
    move-object/from16 v0, p0

    #@2e6
    iput-object v2, v0, Lcom/android/server/wifi/WifiStateMachine;->mBuildProperties:Lcom/android/server/wifi/BuildProperties;

    #@2e8
    .line 1012
    move-object/from16 v0, p1

    #@2ea
    move-object/from16 v1, p0

    #@2ec
    iput-object v0, v1, Lcom/android/server/wifi/WifiStateMachine;->mContext:Landroid/content/Context;

    #@2ee
    .line 1013
    move-object/from16 v0, p2

    #@2f0
    move-object/from16 v1, p0

    #@2f2
    iput-object v0, v1, Lcom/android/server/wifi/WifiStateMachine;->mFacade:Lcom/android/server/wifi/FrameworkFacade;

    #@2f4
    .line 1014
    invoke-static {}, Lcom/android/server/wifi/WifiNative;->getWlanNativeInterface()Lcom/android/server/wifi/WifiNative;

    #@2f7
    move-result-object v2

    #@2f8
    move-object/from16 v0, p0

    #@2fa
    iput-object v2, v0, Lcom/android/server/wifi/WifiStateMachine;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    #@2fc
    .line 1015
    move-object/from16 v0, p6

    #@2fe
    move-object/from16 v1, p0

    #@300
    iput-object v0, v1, Lcom/android/server/wifi/WifiStateMachine;->mBackupManagerProxy:Lcom/android/server/wifi/BackupManagerProxy;

    #@302
    .line 1018
    move-object/from16 v0, p0

    #@304
    iget-object v2, v0, Lcom/android/server/wifi/WifiStateMachine;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    #@306
    move-object/from16 v0, p0

    #@308
    iget-object v3, v0, Lcom/android/server/wifi/WifiStateMachine;->mContext:Landroid/content/Context;

    #@30a
    invoke-virtual {v2, v3}, Lcom/android/server/wifi/WifiNative;->initContext(Landroid/content/Context;)V

    #@30d
    .line 1019
    move-object/from16 v0, p0

    #@30f
    iget-object v2, v0, Lcom/android/server/wifi/WifiStateMachine;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    #@311
    invoke-virtual {v2}, Lcom/android/server/wifi/WifiNative;->getInterfaceName()Ljava/lang/String;

    #@314
    move-result-object v2

    #@315
    move-object/from16 v0, p0

    #@317
    iput-object v2, v0, Lcom/android/server/wifi/WifiStateMachine;->mInterfaceName:Ljava/lang/String;

    #@319
    .line 1020
    new-instance v2, Landroid/net/NetworkInfo;

    #@31b
    const-string/jumbo v3, "WIFI"

    #@31e
    const-string/jumbo v4, ""

    #@321
    const/4 v5, 0x1

    #@322
    const/4 v6, 0x0

    #@323
    invoke-direct {v2, v5, v6, v3, v4}, Landroid/net/NetworkInfo;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    #@326
    move-object/from16 v0, p0

    #@328
    iput-object v2, v0, Lcom/android/server/wifi/WifiStateMachine;->mNetworkInfo:Landroid/net/NetworkInfo;

    #@32a
    .line 1021
    move-object/from16 v0, p0

    #@32c
    iget-object v2, v0, Lcom/android/server/wifi/WifiStateMachine;->mFacade:Lcom/android/server/wifi/FrameworkFacade;

    #@32e
    .line 1022
    const-string/jumbo v3, "batterystats"

    #@331
    .line 1021
    invoke-virtual {v2, v3}, Lcom/android/server/wifi/FrameworkFacade;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    #@334
    move-result-object v2

    #@335
    invoke-static {v2}, Lcom/android/internal/app/IBatteryStats$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/app/IBatteryStats;

    #@338
    move-result-object v2

    #@339
    move-object/from16 v0, p0

    #@33b
    iput-object v2, v0, Lcom/android/server/wifi/WifiStateMachine;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    #@33d
    .line 1024
    move-object/from16 v0, p0

    #@33f
    iget-object v2, v0, Lcom/android/server/wifi/WifiStateMachine;->mFacade:Lcom/android/server/wifi/FrameworkFacade;

    #@341
    const-string/jumbo v3, "network_management"

    #@344
    invoke-virtual {v2, v3}, Lcom/android/server/wifi/FrameworkFacade;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    #@347
    move-result-object v9

    #@348
    .line 1025
    .local v9, "b":Landroid/os/IBinder;
    invoke-static {v9}, Landroid/os/INetworkManagementService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/INetworkManagementService;

    #@34b
    move-result-object v2

    #@34c
    move-object/from16 v0, p0

    #@34e
    iput-object v2, v0, Lcom/android/server/wifi/WifiStateMachine;->mNwService:Landroid/os/INetworkManagementService;

    #@350
    .line 1027
    move-object/from16 v0, p0

    #@352
    iget-object v2, v0, Lcom/android/server/wifi/WifiStateMachine;->mContext:Landroid/content/Context;

    #@354
    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    #@357
    move-result-object v2

    #@358
    .line 1028
    const-string/jumbo v3, "android.hardware.wifi.direct"

    #@35b
    .line 1027
    invoke-virtual {v2, v3}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    #@35e
    move-result v2

    #@35f
    move-object/from16 v0, p0

    #@361
    iput-boolean v2, v0, Lcom/android/server/wifi/WifiStateMachine;->mP2pSupported:Z

    #@363
    .line 1030
    move-object/from16 v0, p0

    #@365
    iget-object v2, v0, Lcom/android/server/wifi/WifiStateMachine;->mFacade:Lcom/android/server/wifi/FrameworkFacade;

    #@367
    move-object/from16 v0, p0

    #@369
    iget-object v4, v0, Lcom/android/server/wifi/WifiStateMachine;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    #@36b
    .line 1031
    move-object/from16 v0, p0

    #@36d
    iget-object v3, v0, Lcom/android/server/wifi/WifiStateMachine;->mWifiInjector:Lcom/android/server/wifi/WifiInjector;

    #@36f
    invoke-virtual {v3}, Lcom/android/server/wifi/WifiInjector;->getClock()Lcom/android/server/wifi/Clock;

    #@372
    move-result-object v6

    #@373
    move-object/from16 v0, p0

    #@375
    iget-object v3, v0, Lcom/android/server/wifi/WifiStateMachine;->mWifiInjector:Lcom/android/server/wifi/WifiInjector;

    #@377
    invoke-virtual {v3}, Lcom/android/server/wifi/WifiInjector;->getKeyStore()Landroid/security/KeyStore;

    #@37a
    move-result-object v8

    #@37b
    move-object/from16 v3, p1

    #@37d
    move-object/from16 v5, p2

    #@37f
    move-object/from16 v7, p4

    #@381
    .line 1030
    invoke-virtual/range {v2 .. v8}, Lcom/android/server/wifi/FrameworkFacade;->makeWifiConfigManager(Landroid/content/Context;Lcom/android/server/wifi/WifiNative;Lcom/android/server/wifi/FrameworkFacade;Lcom/android/server/wifi/Clock;Landroid/os/UserManager;Landroid/security/KeyStore;)Lcom/android/server/wifi/WifiConfigManager;

    #@384
    move-result-object v2

    #@385
    move-object/from16 v0, p0

    #@387
    iput-object v2, v0, Lcom/android/server/wifi/WifiStateMachine;->mWifiConfigManager:Lcom/android/server/wifi/WifiConfigManager;

    #@389
    .line 1033
    invoke-static {}, Lcom/android/server/wifi/WifiMonitor;->getInstance()Lcom/android/server/wifi/WifiMonitor;

    #@38c
    move-result-object v2

    #@38d
    move-object/from16 v0, p0

    #@38f
    iput-object v2, v0, Lcom/android/server/wifi/WifiStateMachine;->mWifiMonitor:Lcom/android/server/wifi/WifiMonitor;

    #@391
    .line 1035
    move-object/from16 v0, p0

    #@393
    iget-object v2, v0, Lcom/android/server/wifi/WifiStateMachine;->mContext:Landroid/content/Context;

    #@395
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@398
    move-result-object v2

    #@399
    .line 1036
    const v3, 0x112001b

    #@39c
    .line 1035
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    #@39f
    move-result v11

    #@3a0
    .line 1038
    .local v11, "enableFirmwareLogs":Z
    if-eqz v11, :cond_1

    #@3a2
    .line 1039
    move-object/from16 v0, p0

    #@3a4
    iget-object v2, v0, Lcom/android/server/wifi/WifiStateMachine;->mContext:Landroid/content/Context;

    #@3a6
    move-object/from16 v0, p0

    #@3a8
    iget-object v3, v0, Lcom/android/server/wifi/WifiStateMachine;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    #@3aa
    move-object/from16 v0, p0

    #@3ac
    iget-object v4, v0, Lcom/android/server/wifi/WifiStateMachine;->mBuildProperties:Lcom/android/server/wifi/BuildProperties;

    #@3ae
    move-object/from16 v0, p2

    #@3b0
    move-object/from16 v1, p0

    #@3b2
    invoke-virtual {v0, v2, v1, v3, v4}, Lcom/android/server/wifi/FrameworkFacade;->makeRealLogger(Landroid/content/Context;Lcom/android/server/wifi/WifiStateMachine;Lcom/android/server/wifi/WifiNative;Lcom/android/server/wifi/BuildProperties;)Lcom/android/server/wifi/BaseWifiLogger;

    #@3b5
    move-result-object v2

    #@3b6
    move-object/from16 v0, p0

    #@3b8
    iput-object v2, v0, Lcom/android/server/wifi/WifiStateMachine;->mWifiLogger:Lcom/android/server/wifi/BaseWifiLogger;

    #@3ba
    .line 1044
    :goto_0
    new-instance v2, Landroid/net/wifi/WifiInfo;

    #@3bc
    invoke-direct {v2}, Landroid/net/wifi/WifiInfo;-><init>()V

    #@3bf
    move-object/from16 v0, p0

    #@3c1
    iput-object v2, v0, Lcom/android/server/wifi/WifiStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    #@3c3
    .line 1045
    new-instance v2, Lcom/android/server/wifi/WifiQualifiedNetworkSelector;

    #@3c5
    move-object/from16 v0, p0

    #@3c7
    iget-object v3, v0, Lcom/android/server/wifi/WifiStateMachine;->mWifiConfigManager:Lcom/android/server/wifi/WifiConfigManager;

    #@3c9
    .line 1046
    move-object/from16 v0, p0

    #@3cb
    iget-object v4, v0, Lcom/android/server/wifi/WifiStateMachine;->mContext:Landroid/content/Context;

    #@3cd
    move-object/from16 v0, p0

    #@3cf
    iget-object v5, v0, Lcom/android/server/wifi/WifiStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    #@3d1
    move-object/from16 v0, p0

    #@3d3
    iget-object v6, v0, Lcom/android/server/wifi/WifiStateMachine;->mWifiInjector:Lcom/android/server/wifi/WifiInjector;

    #@3d5
    invoke-virtual {v6}, Lcom/android/server/wifi/WifiInjector;->getClock()Lcom/android/server/wifi/Clock;

    #@3d8
    move-result-object v6

    #@3d9
    .line 1045
    invoke-direct {v2, v3, v4, v5, v6}, Lcom/android/server/wifi/WifiQualifiedNetworkSelector;-><init>(Lcom/android/server/wifi/WifiConfigManager;Landroid/content/Context;Landroid/net/wifi/WifiInfo;Lcom/android/server/wifi/Clock;)V

    #@3dc
    move-object/from16 v0, p0

    #@3de
    iput-object v2, v0, Lcom/android/server/wifi/WifiStateMachine;->mWifiQualifiedNetworkSelector:Lcom/android/server/wifi/WifiQualifiedNetworkSelector;

    #@3e0
    .line 1047
    move-object/from16 v0, p0

    #@3e2
    iget-object v2, v0, Lcom/android/server/wifi/WifiStateMachine;->mFacade:Lcom/android/server/wifi/FrameworkFacade;

    #@3e4
    .line 1048
    move-object/from16 v0, p0

    #@3e6
    iget-object v3, v0, Lcom/android/server/wifi/WifiStateMachine;->mWifiConfigManager:Lcom/android/server/wifi/WifiConfigManager;

    #@3e8
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wifi/WifiStateMachine;->getHandler()Landroid/os/Handler;

    #@3eb
    move-result-object v4

    #@3ec
    .line 1047
    move-object/from16 v0, p1

    #@3ee
    invoke-virtual {v2, v0, v3, v4}, Lcom/android/server/wifi/FrameworkFacade;->makeSupplicantStateTracker(Landroid/content/Context;Lcom/android/server/wifi/WifiConfigManager;Landroid/os/Handler;)Lcom/android/server/wifi/SupplicantStateTracker;

    #@3f1
    move-result-object v2

    #@3f2
    move-object/from16 v0, p0

    #@3f4
    iput-object v2, v0, Lcom/android/server/wifi/WifiStateMachine;->mSupplicantStateTracker:Lcom/android/server/wifi/SupplicantStateTracker;

    #@3f6
    .line 1050
    new-instance v2, Landroid/net/LinkProperties;

    #@3f8
    invoke-direct {v2}, Landroid/net/LinkProperties;-><init>()V

    #@3fb
    move-object/from16 v0, p0

    #@3fd
    iput-object v2, v0, Lcom/android/server/wifi/WifiStateMachine;->mLinkProperties:Landroid/net/LinkProperties;

    #@3ff
    .line 1052
    move-object/from16 v0, p0

    #@401
    iget-object v2, v0, Lcom/android/server/wifi/WifiStateMachine;->mFacade:Lcom/android/server/wifi/FrameworkFacade;

    #@403
    const-string/jumbo v3, "wifip2p"

    #@406
    invoke-virtual {v2, v3}, Lcom/android/server/wifi/FrameworkFacade;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    #@409
    move-result-object v16

    #@40a
    .line 1053
    .local v16, "s1":Landroid/os/IBinder;
    invoke-static/range {v16 .. v16}, Landroid/net/wifi/p2p/IWifiP2pManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/wifi/p2p/IWifiP2pManager;

    #@40d
    move-result-object v2

    #@40e
    check-cast v2, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;

    #@410
    move-object/from16 v0, p0

    #@412
    iput-object v2, v0, Lcom/android/server/wifi/WifiStateMachine;->mWifiP2pServiceImpl:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;

    #@414
    .line 1055
    move-object/from16 v0, p0

    #@416
    iget-object v2, v0, Lcom/android/server/wifi/WifiStateMachine;->mNetworkInfo:Landroid/net/NetworkInfo;

    #@418
    const/4 v3, 0x0

    #@419
    invoke-virtual {v2, v3}, Landroid/net/NetworkInfo;->setIsAvailable(Z)V

    #@41c
    .line 1056
    const/4 v2, 0x0

    #@41d
    move-object/from16 v0, p0

    #@41f
    iput-object v2, v0, Lcom/android/server/wifi/WifiStateMachine;->mLastBssid:Ljava/lang/String;

    #@421
    .line 1057
    const/4 v2, -0x1

    #@422
    move-object/from16 v0, p0

    #@424
    iput v2, v0, Lcom/android/server/wifi/WifiStateMachine;->mLastNetworkId:I

    #@426
    .line 1058
    const/4 v2, -0x1

    #@427
    move-object/from16 v0, p0

    #@429
    iput v2, v0, Lcom/android/server/wifi/WifiStateMachine;->mLastSignalLevel:I

    #@42b
    .line 1060
    move-object/from16 v0, p0

    #@42d
    iget-object v2, v0, Lcom/android/server/wifi/WifiStateMachine;->mFacade:Lcom/android/server/wifi/FrameworkFacade;

    #@42f
    move-object/from16 v0, p0

    #@431
    iget-object v3, v0, Lcom/android/server/wifi/WifiStateMachine;->mContext:Landroid/content/Context;

    #@433
    move-object/from16 v0, p0

    #@435
    iget-object v4, v0, Lcom/android/server/wifi/WifiStateMachine;->mInterfaceName:Ljava/lang/String;

    #@437
    new-instance v5, Lcom/android/server/wifi/WifiStateMachine$IpManagerCallback;

    #@439
    move-object/from16 v0, p0

    #@43b
    invoke-direct {v5, v0}, Lcom/android/server/wifi/WifiStateMachine$IpManagerCallback;-><init>(Lcom/android/server/wifi/WifiStateMachine;)V

    #@43e
    invoke-virtual {v2, v3, v4, v5}, Lcom/android/server/wifi/FrameworkFacade;->makeIpManager(Landroid/content/Context;Ljava/lang/String;Landroid/net/ip/IpManager$Callback;)Landroid/net/ip/IpManager;

    #@441
    move-result-object v2

    #@442
    move-object/from16 v0, p0

    #@444
    iput-object v2, v0, Lcom/android/server/wifi/WifiStateMachine;->mIpManager:Landroid/net/ip/IpManager;

    #@446
    .line 1061
    move-object/from16 v0, p0

    #@448
    iget-object v2, v0, Lcom/android/server/wifi/WifiStateMachine;->mIpManager:Landroid/net/ip/IpManager;

    #@44a
    const/4 v3, 0x1

    #@44b
    invoke-virtual {v2, v3}, Landroid/net/ip/IpManager;->setMulticastFilter(Z)V

    #@44e
    .line 1063
    move-object/from16 v0, p0

    #@450
    iget-object v2, v0, Lcom/android/server/wifi/WifiStateMachine;->mContext:Landroid/content/Context;

    #@452
    const-string/jumbo v3, "alarm"

    #@455
    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    #@458
    move-result-object v2

    #@459
    check-cast v2, Landroid/app/AlarmManager;

    #@45b
    move-object/from16 v0, p0

    #@45d
    iput-object v2, v0, Lcom/android/server/wifi/WifiStateMachine;->mAlarmManager:Landroid/app/AlarmManager;

    #@45f
    .line 1066
    move-object/from16 v0, p0

    #@461
    iget-object v2, v0, Lcom/android/server/wifi/WifiStateMachine;->mContext:Landroid/content/Context;

    #@463
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@466
    move-result-object v2

    #@467
    .line 1067
    const v3, 0x10e0032

    #@46a
    .line 1066
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    #@46d
    move-result v14

    #@46e
    .line 1068
    .local v14, "period":I
    const/16 v2, 0x2710

    #@470
    if-ge v14, v2, :cond_0

    #@472
    .line 1069
    const/16 v14, 0x2710

    #@474
    .line 1071
    :cond_0
    move-object/from16 v0, p0

    #@476
    iput v14, v0, Lcom/android/server/wifi/WifiStateMachine;->mDefaultFrameworkScanIntervalMs:I

    #@478
    .line 1073
    move-object/from16 v0, p0

    #@47a
    iget-object v2, v0, Lcom/android/server/wifi/WifiStateMachine;->mContext:Landroid/content/Context;

    #@47c
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@47f
    move-result-object v2

    #@480
    .line 1074
    const v3, 0x10e0033

    #@483
    .line 1073
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    #@486
    move-result v2

    #@487
    move-object/from16 v0, p0

    #@489
    iput v2, v0, Lcom/android/server/wifi/WifiStateMachine;->mNoNetworksPeriodicScan:I

    #@48b
    .line 1076
    move-object/from16 v0, p0

    #@48d
    iget-object v2, v0, Lcom/android/server/wifi/WifiStateMachine;->mContext:Landroid/content/Context;

    #@48f
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@492
    move-result-object v2

    #@493
    .line 1077
    const v3, 0x1120018

    #@496
    .line 1076
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    #@499
    move-result v2

    #@49a
    move-object/from16 v0, p0

    #@49c
    iput-boolean v2, v0, Lcom/android/server/wifi/WifiStateMachine;->mBackgroundScanSupported:Z

    #@49e
    .line 1079
    move-object/from16 v0, p0

    #@4a0
    iget-object v2, v0, Lcom/android/server/wifi/WifiStateMachine;->mContext:Landroid/content/Context;

    #@4a2
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@4a5
    move-result-object v2

    #@4a6
    .line 1080
    const v3, 0x1040037

    #@4a9
    .line 1079
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    #@4ac
    move-result-object v2

    #@4ad
    move-object/from16 v0, p0

    #@4af
    iput-object v2, v0, Lcom/android/server/wifi/WifiStateMachine;->mPrimaryDeviceType:Ljava/lang/String;

    #@4b1
    .line 1082
    move-object/from16 v0, p7

    #@4b3
    move-object/from16 v1, p0

    #@4b5
    iput-object v0, v1, Lcom/android/server/wifi/WifiStateMachine;->mCountryCode:Lcom/android/server/wifi/WifiCountryCode;

    #@4b7
    .line 1084
    move-object/from16 v0, p0

    #@4b9
    iget-object v3, v0, Lcom/android/server/wifi/WifiStateMachine;->mUserWantsSuspendOpt:Ljava/util/concurrent/atomic/AtomicBoolean;

    #@4bb
    move-object/from16 v0, p0

    #@4bd
    iget-object v2, v0, Lcom/android/server/wifi/WifiStateMachine;->mFacade:Lcom/android/server/wifi/FrameworkFacade;

    #@4bf
    move-object/from16 v0, p0

    #@4c1
    iget-object v4, v0, Lcom/android/server/wifi/WifiStateMachine;->mContext:Landroid/content/Context;

    #@4c3
    .line 1085
    const-string/jumbo v5, "wifi_suspend_optimizations_enabled"

    #@4c6
    const/4 v6, 0x1

    #@4c7
    .line 1084
    invoke-virtual {v2, v4, v5, v6}, Lcom/android/server/wifi/FrameworkFacade;->getIntegerSetting(Landroid/content/Context;Ljava/lang/String;I)I

    #@4ca
    move-result v2

    #@4cb
    .line 1085
    const/4 v4, 0x1

    #@4cc
    .line 1084
    if-ne v2, v4, :cond_2

    #@4ce
    const/4 v2, 0x1

    #@4cf
    :goto_1
    invoke-virtual {v3, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    #@4d2
    .line 1087
    move-object/from16 v0, p0

    #@4d4
    iget-object v2, v0, Lcom/android/server/wifi/WifiStateMachine;->mNetworkCapabilitiesFilter:Landroid/net/NetworkCapabilities;

    #@4d6
    const/4 v3, 0x1

    #@4d7
    invoke-virtual {v2, v3}, Landroid/net/NetworkCapabilities;->addTransportType(I)Landroid/net/NetworkCapabilities;

    #@4da
    .line 1088
    move-object/from16 v0, p0

    #@4dc
    iget-object v2, v0, Lcom/android/server/wifi/WifiStateMachine;->mNetworkCapabilitiesFilter:Landroid/net/NetworkCapabilities;

    #@4de
    const/16 v3, 0xc

    #@4e0
    invoke-virtual {v2, v3}, Landroid/net/NetworkCapabilities;->addCapability(I)Landroid/net/NetworkCapabilities;

    #@4e3
    .line 1089
    move-object/from16 v0, p0

    #@4e5
    iget-object v2, v0, Lcom/android/server/wifi/WifiStateMachine;->mNetworkCapabilitiesFilter:Landroid/net/NetworkCapabilities;

    #@4e7
    const/16 v3, 0xb

    #@4e9
    invoke-virtual {v2, v3}, Landroid/net/NetworkCapabilities;->addCapability(I)Landroid/net/NetworkCapabilities;

    #@4ec
    .line 1090
    move-object/from16 v0, p0

    #@4ee
    iget-object v2, v0, Lcom/android/server/wifi/WifiStateMachine;->mNetworkCapabilitiesFilter:Landroid/net/NetworkCapabilities;

    #@4f0
    const/16 v3, 0xd

    #@4f2
    invoke-virtual {v2, v3}, Landroid/net/NetworkCapabilities;->addCapability(I)Landroid/net/NetworkCapabilities;

    #@4f5
    .line 1091
    move-object/from16 v0, p0

    #@4f7
    iget-object v2, v0, Lcom/android/server/wifi/WifiStateMachine;->mNetworkCapabilitiesFilter:Landroid/net/NetworkCapabilities;

    #@4f9
    const/high16 v3, 0x100000

    #@4fb
    invoke-virtual {v2, v3}, Landroid/net/NetworkCapabilities;->setLinkUpstreamBandwidthKbps(I)V

    #@4fe
    .line 1092
    move-object/from16 v0, p0

    #@500
    iget-object v2, v0, Lcom/android/server/wifi/WifiStateMachine;->mNetworkCapabilitiesFilter:Landroid/net/NetworkCapabilities;

    #@502
    const/high16 v3, 0x100000

    #@504
    invoke-virtual {v2, v3}, Landroid/net/NetworkCapabilities;->setLinkDownstreamBandwidthKbps(I)V

    #@507
    .line 1094
    new-instance v2, Landroid/net/NetworkCapabilities;

    #@509
    move-object/from16 v0, p0

    #@50b
    iget-object v3, v0, Lcom/android/server/wifi/WifiStateMachine;->mNetworkCapabilitiesFilter:Landroid/net/NetworkCapabilities;

    #@50d
    invoke-direct {v2, v3}, Landroid/net/NetworkCapabilities;-><init>(Landroid/net/NetworkCapabilities;)V

    #@510
    move-object/from16 v0, p0

    #@512
    iput-object v2, v0, Lcom/android/server/wifi/WifiStateMachine;->mDfltNetworkCapabilities:Landroid/net/NetworkCapabilities;

    #@514
    .line 1096
    new-instance v12, Landroid/content/IntentFilter;

    #@516
    invoke-direct {v12}, Landroid/content/IntentFilter;-><init>()V

    #@519
    .line 1097
    .local v12, "filter":Landroid/content/IntentFilter;
    const-string/jumbo v2, "android.intent.action.SCREEN_ON"

    #@51c
    invoke-virtual {v12, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    #@51f
    .line 1098
    const-string/jumbo v2, "android.intent.action.SCREEN_OFF"

    #@522
    invoke-virtual {v12, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    #@525
    .line 1099
    move-object/from16 v0, p0

    #@527
    iget-object v2, v0, Lcom/android/server/wifi/WifiStateMachine;->mContext:Landroid/content/Context;

    #@529
    .line 1100
    new-instance v3, Lcom/android/server/wifi/WifiStateMachine$1;

    #@52b
    move-object/from16 v0, p0

    #@52d
    invoke-direct {v3, v0}, Lcom/android/server/wifi/WifiStateMachine$1;-><init>(Lcom/android/server/wifi/WifiStateMachine;)V

    #@530
    .line 1099
    invoke-virtual {v2, v3, v12}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    #@533
    .line 1113
    move-object/from16 v0, p0

    #@535
    iget-object v2, v0, Lcom/android/server/wifi/WifiStateMachine;->mContext:Landroid/content/Context;

    #@537
    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    #@53a
    move-result-object v2

    #@53b
    .line 1114
    const-string/jumbo v3, "wifi_suspend_optimizations_enabled"

    #@53e
    .line 1113
    invoke-static {v3}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    #@541
    move-result-object v3

    #@542
    .line 1115
    new-instance v4, Lcom/android/server/wifi/WifiStateMachine$2;

    #@544
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wifi/WifiStateMachine;->getHandler()Landroid/os/Handler;

    #@547
    move-result-object v5

    #@548
    move-object/from16 v0, p0

    #@54a
    invoke-direct {v4, v0, v5}, Lcom/android/server/wifi/WifiStateMachine$2;-><init>(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Handler;)V

    #@54d
    .line 1114
    const/4 v5, 0x0

    #@54e
    .line 1113
    invoke-virtual {v2, v3, v5, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    #@551
    .line 1123
    move-object/from16 v0, p0

    #@553
    iget-object v2, v0, Lcom/android/server/wifi/WifiStateMachine;->mContext:Landroid/content/Context;

    #@555
    .line 1124
    new-instance v3, Lcom/android/server/wifi/WifiStateMachine$3;

    #@557
    move-object/from16 v0, p0

    #@559
    invoke-direct {v3, v0}, Lcom/android/server/wifi/WifiStateMachine$3;-><init>(Lcom/android/server/wifi/WifiStateMachine;)V

    #@55c
    .line 1130
    new-instance v4, Landroid/content/IntentFilter;

    #@55e
    const-string/jumbo v5, "android.intent.action.LOCKED_BOOT_COMPLETED"

    #@561
    invoke-direct {v4, v5}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    #@564
    .line 1123
    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    #@567
    .line 1132
    move-object/from16 v0, p0

    #@569
    iget-object v2, v0, Lcom/android/server/wifi/WifiStateMachine;->mContext:Landroid/content/Context;

    #@56b
    const-string/jumbo v3, "power"

    #@56e
    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    #@571
    move-result-object v15

    #@572
    check-cast v15, Landroid/os/PowerManager;

    #@574
    .line 1133
    .local v15, "powerManager":Landroid/os/PowerManager;
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wifi/WifiStateMachine;->getName()Ljava/lang/String;

    #@577
    move-result-object v2

    #@578
    const/4 v3, 0x1

    #@579
    invoke-virtual {v15, v3, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    #@57c
    move-result-object v2

    #@57d
    move-object/from16 v0, p0

    #@57f
    iput-object v2, v0, Lcom/android/server/wifi/WifiStateMachine;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    #@581
    .line 1135
    const-string/jumbo v2, "WifiSuspend"

    #@584
    const/4 v3, 0x1

    #@585
    invoke-virtual {v15, v3, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    #@588
    move-result-object v2

    #@589
    move-object/from16 v0, p0

    #@58b
    iput-object v2, v0, Lcom/android/server/wifi/WifiStateMachine;->mSuspendWakeLock:Landroid/os/PowerManager$WakeLock;

    #@58d
    .line 1136
    move-object/from16 v0, p0

    #@58f
    iget-object v2, v0, Lcom/android/server/wifi/WifiStateMachine;->mSuspendWakeLock:Landroid/os/PowerManager$WakeLock;

    #@591
    const/4 v3, 0x0

    #@592
    invoke-virtual {v2, v3}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    #@595
    .line 1138
    move-object/from16 v0, p0

    #@597
    iget-object v2, v0, Lcom/android/server/wifi/WifiStateMachine;->mContext:Landroid/content/Context;

    #@599
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@59c
    move-result-object v2

    #@59d
    .line 1139
    const v3, 0x104005c

    #@5a0
    .line 1138
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    #@5a3
    move-result-object v2

    #@5a4
    move-object/from16 v0, p0

    #@5a6
    iput-object v2, v0, Lcom/android/server/wifi/WifiStateMachine;->mTcpBufferSizes:Ljava/lang/String;

    #@5a8
    .line 1142
    move-object/from16 v0, p0

    #@5aa
    iget-object v2, v0, Lcom/android/server/wifi/WifiStateMachine;->mDefaultState:Lcom/android/internal/util/State;

    #@5ac
    move-object/from16 v0, p0

    #@5ae
    invoke-virtual {v0, v2}, Lcom/android/server/wifi/WifiStateMachine;->addState(Lcom/android/internal/util/State;)V

    #@5b1
    .line 1143
    move-object/from16 v0, p0

    #@5b3
    iget-object v2, v0, Lcom/android/server/wifi/WifiStateMachine;->mInitialState:Lcom/android/internal/util/State;

    #@5b5
    move-object/from16 v0, p0

    #@5b7
    iget-object v3, v0, Lcom/android/server/wifi/WifiStateMachine;->mDefaultState:Lcom/android/internal/util/State;

    #@5b9
    move-object/from16 v0, p0

    #@5bb
    invoke-virtual {v0, v2, v3}, Lcom/android/server/wifi/WifiStateMachine;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    #@5be
    .line 1144
    move-object/from16 v0, p0

    #@5c0
    iget-object v2, v0, Lcom/android/server/wifi/WifiStateMachine;->mSupplicantStartingState:Lcom/android/internal/util/State;

    #@5c2
    move-object/from16 v0, p0

    #@5c4
    iget-object v3, v0, Lcom/android/server/wifi/WifiStateMachine;->mDefaultState:Lcom/android/internal/util/State;

    #@5c6
    move-object/from16 v0, p0

    #@5c8
    invoke-virtual {v0, v2, v3}, Lcom/android/server/wifi/WifiStateMachine;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    #@5cb
    .line 1145
    move-object/from16 v0, p0

    #@5cd
    iget-object v2, v0, Lcom/android/server/wifi/WifiStateMachine;->mSupplicantStartedState:Lcom/android/internal/util/State;

    #@5cf
    move-object/from16 v0, p0

    #@5d1
    iget-object v3, v0, Lcom/android/server/wifi/WifiStateMachine;->mDefaultState:Lcom/android/internal/util/State;

    #@5d3
    move-object/from16 v0, p0

    #@5d5
    invoke-virtual {v0, v2, v3}, Lcom/android/server/wifi/WifiStateMachine;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    #@5d8
    .line 1146
    move-object/from16 v0, p0

    #@5da
    iget-object v2, v0, Lcom/android/server/wifi/WifiStateMachine;->mDriverStartingState:Lcom/android/internal/util/State;

    #@5dc
    move-object/from16 v0, p0

    #@5de
    iget-object v3, v0, Lcom/android/server/wifi/WifiStateMachine;->mSupplicantStartedState:Lcom/android/internal/util/State;

    #@5e0
    move-object/from16 v0, p0

    #@5e2
    invoke-virtual {v0, v2, v3}, Lcom/android/server/wifi/WifiStateMachine;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    #@5e5
    .line 1147
    move-object/from16 v0, p0

    #@5e7
    iget-object v2, v0, Lcom/android/server/wifi/WifiStateMachine;->mDriverStartedState:Lcom/android/internal/util/State;

    #@5e9
    move-object/from16 v0, p0

    #@5eb
    iget-object v3, v0, Lcom/android/server/wifi/WifiStateMachine;->mSupplicantStartedState:Lcom/android/internal/util/State;

    #@5ed
    move-object/from16 v0, p0

    #@5ef
    invoke-virtual {v0, v2, v3}, Lcom/android/server/wifi/WifiStateMachine;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    #@5f2
    .line 1148
    move-object/from16 v0, p0

    #@5f4
    iget-object v2, v0, Lcom/android/server/wifi/WifiStateMachine;->mScanModeState:Lcom/android/internal/util/State;

    #@5f6
    move-object/from16 v0, p0

    #@5f8
    iget-object v3, v0, Lcom/android/server/wifi/WifiStateMachine;->mDriverStartedState:Lcom/android/internal/util/State;

    #@5fa
    move-object/from16 v0, p0

    #@5fc
    invoke-virtual {v0, v2, v3}, Lcom/android/server/wifi/WifiStateMachine;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    #@5ff
    .line 1149
    move-object/from16 v0, p0

    #@601
    iget-object v2, v0, Lcom/android/server/wifi/WifiStateMachine;->mConnectModeState:Lcom/android/internal/util/State;

    #@603
    move-object/from16 v0, p0

    #@605
    iget-object v3, v0, Lcom/android/server/wifi/WifiStateMachine;->mDriverStartedState:Lcom/android/internal/util/State;

    #@607
    move-object/from16 v0, p0

    #@609
    invoke-virtual {v0, v2, v3}, Lcom/android/server/wifi/WifiStateMachine;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    #@60c
    .line 1150
    move-object/from16 v0, p0

    #@60e
    iget-object v2, v0, Lcom/android/server/wifi/WifiStateMachine;->mL2ConnectedState:Lcom/android/internal/util/State;

    #@610
    move-object/from16 v0, p0

    #@612
    iget-object v3, v0, Lcom/android/server/wifi/WifiStateMachine;->mConnectModeState:Lcom/android/internal/util/State;

    #@614
    move-object/from16 v0, p0

    #@616
    invoke-virtual {v0, v2, v3}, Lcom/android/server/wifi/WifiStateMachine;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    #@619
    .line 1151
    move-object/from16 v0, p0

    #@61b
    iget-object v2, v0, Lcom/android/server/wifi/WifiStateMachine;->mObtainingIpState:Lcom/android/internal/util/State;

    #@61d
    move-object/from16 v0, p0

    #@61f
    iget-object v3, v0, Lcom/android/server/wifi/WifiStateMachine;->mL2ConnectedState:Lcom/android/internal/util/State;

    #@621
    move-object/from16 v0, p0

    #@623
    invoke-virtual {v0, v2, v3}, Lcom/android/server/wifi/WifiStateMachine;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    #@626
    .line 1152
    move-object/from16 v0, p0

    #@628
    iget-object v2, v0, Lcom/android/server/wifi/WifiStateMachine;->mConnectedState:Lcom/android/internal/util/State;

    #@62a
    move-object/from16 v0, p0

    #@62c
    iget-object v3, v0, Lcom/android/server/wifi/WifiStateMachine;->mL2ConnectedState:Lcom/android/internal/util/State;

    #@62e
    move-object/from16 v0, p0

    #@630
    invoke-virtual {v0, v2, v3}, Lcom/android/server/wifi/WifiStateMachine;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    #@633
    .line 1153
    move-object/from16 v0, p0

    #@635
    iget-object v2, v0, Lcom/android/server/wifi/WifiStateMachine;->mRoamingState:Lcom/android/internal/util/State;

    #@637
    move-object/from16 v0, p0

    #@639
    iget-object v3, v0, Lcom/android/server/wifi/WifiStateMachine;->mL2ConnectedState:Lcom/android/internal/util/State;

    #@63b
    move-object/from16 v0, p0

    #@63d
    invoke-virtual {v0, v2, v3}, Lcom/android/server/wifi/WifiStateMachine;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    #@640
    .line 1154
    move-object/from16 v0, p0

    #@642
    iget-object v2, v0, Lcom/android/server/wifi/WifiStateMachine;->mDisconnectingState:Lcom/android/internal/util/State;

    #@644
    move-object/from16 v0, p0

    #@646
    iget-object v3, v0, Lcom/android/server/wifi/WifiStateMachine;->mConnectModeState:Lcom/android/internal/util/State;

    #@648
    move-object/from16 v0, p0

    #@64a
    invoke-virtual {v0, v2, v3}, Lcom/android/server/wifi/WifiStateMachine;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    #@64d
    .line 1155
    move-object/from16 v0, p0

    #@64f
    iget-object v2, v0, Lcom/android/server/wifi/WifiStateMachine;->mDisconnectedState:Lcom/android/internal/util/State;

    #@651
    move-object/from16 v0, p0

    #@653
    iget-object v3, v0, Lcom/android/server/wifi/WifiStateMachine;->mConnectModeState:Lcom/android/internal/util/State;

    #@655
    move-object/from16 v0, p0

    #@657
    invoke-virtual {v0, v2, v3}, Lcom/android/server/wifi/WifiStateMachine;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    #@65a
    .line 1156
    move-object/from16 v0, p0

    #@65c
    iget-object v2, v0, Lcom/android/server/wifi/WifiStateMachine;->mWpsRunningState:Lcom/android/internal/util/State;

    #@65e
    move-object/from16 v0, p0

    #@660
    iget-object v3, v0, Lcom/android/server/wifi/WifiStateMachine;->mConnectModeState:Lcom/android/internal/util/State;

    #@662
    move-object/from16 v0, p0

    #@664
    invoke-virtual {v0, v2, v3}, Lcom/android/server/wifi/WifiStateMachine;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    #@667
    .line 1157
    move-object/from16 v0, p0

    #@669
    iget-object v2, v0, Lcom/android/server/wifi/WifiStateMachine;->mWaitForP2pDisableState:Lcom/android/internal/util/State;

    #@66b
    move-object/from16 v0, p0

    #@66d
    iget-object v3, v0, Lcom/android/server/wifi/WifiStateMachine;->mSupplicantStartedState:Lcom/android/internal/util/State;

    #@66f
    move-object/from16 v0, p0

    #@671
    invoke-virtual {v0, v2, v3}, Lcom/android/server/wifi/WifiStateMachine;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    #@674
    .line 1158
    move-object/from16 v0, p0

    #@676
    iget-object v2, v0, Lcom/android/server/wifi/WifiStateMachine;->mDriverStoppingState:Lcom/android/internal/util/State;

    #@678
    move-object/from16 v0, p0

    #@67a
    iget-object v3, v0, Lcom/android/server/wifi/WifiStateMachine;->mSupplicantStartedState:Lcom/android/internal/util/State;

    #@67c
    move-object/from16 v0, p0

    #@67e
    invoke-virtual {v0, v2, v3}, Lcom/android/server/wifi/WifiStateMachine;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    #@681
    .line 1159
    move-object/from16 v0, p0

    #@683
    iget-object v2, v0, Lcom/android/server/wifi/WifiStateMachine;->mDriverStoppedState:Lcom/android/internal/util/State;

    #@685
    move-object/from16 v0, p0

    #@687
    iget-object v3, v0, Lcom/android/server/wifi/WifiStateMachine;->mSupplicantStartedState:Lcom/android/internal/util/State;

    #@689
    move-object/from16 v0, p0

    #@68b
    invoke-virtual {v0, v2, v3}, Lcom/android/server/wifi/WifiStateMachine;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    #@68e
    .line 1160
    move-object/from16 v0, p0

    #@690
    iget-object v2, v0, Lcom/android/server/wifi/WifiStateMachine;->mSupplicantStoppingState:Lcom/android/internal/util/State;

    #@692
    move-object/from16 v0, p0

    #@694
    iget-object v3, v0, Lcom/android/server/wifi/WifiStateMachine;->mDefaultState:Lcom/android/internal/util/State;

    #@696
    move-object/from16 v0, p0

    #@698
    invoke-virtual {v0, v2, v3}, Lcom/android/server/wifi/WifiStateMachine;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    #@69b
    .line 1161
    move-object/from16 v0, p0

    #@69d
    iget-object v2, v0, Lcom/android/server/wifi/WifiStateMachine;->mSoftApState:Lcom/android/internal/util/State;

    #@69f
    move-object/from16 v0, p0

    #@6a1
    iget-object v3, v0, Lcom/android/server/wifi/WifiStateMachine;->mDefaultState:Lcom/android/internal/util/State;

    #@6a3
    move-object/from16 v0, p0

    #@6a5
    invoke-virtual {v0, v2, v3}, Lcom/android/server/wifi/WifiStateMachine;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    #@6a8
    .line 1164
    move-object/from16 v0, p0

    #@6aa
    iget-object v2, v0, Lcom/android/server/wifi/WifiStateMachine;->mInitialState:Lcom/android/internal/util/State;

    #@6ac
    move-object/from16 v0, p0

    #@6ae
    invoke-virtual {v0, v2}, Lcom/android/server/wifi/WifiStateMachine;->setInitialState(Lcom/android/internal/util/State;)V

    #@6b1
    .line 1166
    const/16 v2, 0x64

    #@6b3
    move-object/from16 v0, p0

    #@6b5
    invoke-virtual {v0, v2}, Lcom/android/server/wifi/WifiStateMachine;->setLogRecSize(I)V

    #@6b8
    .line 1167
    const/4 v2, 0x0

    #@6b9
    move-object/from16 v0, p0

    #@6bb
    invoke-virtual {v0, v2}, Lcom/android/server/wifi/WifiStateMachine;->setLogOnlyTransitions(Z)V

    #@6be
    .line 1170
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wifi/WifiStateMachine;->start()V

    #@6c1
    .line 1172
    move-object/from16 v0, p0

    #@6c3
    iget-object v2, v0, Lcom/android/server/wifi/WifiStateMachine;->mWifiMonitor:Lcom/android/server/wifi/WifiMonitor;

    #@6c5
    move-object/from16 v0, p0

    #@6c7
    iget-object v3, v0, Lcom/android/server/wifi/WifiStateMachine;->mInterfaceName:Ljava/lang/String;

    #@6c9
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wifi/WifiStateMachine;->getHandler()Landroid/os/Handler;

    #@6cc
    move-result-object v4

    #@6cd
    const v5, 0x2008d

    #@6d0
    invoke-virtual {v2, v3, v5, v4}, Lcom/android/server/wifi/WifiMonitor;->registerHandler(Ljava/lang/String;ILandroid/os/Handler;)V

    #@6d3
    .line 1173
    move-object/from16 v0, p0

    #@6d5
    iget-object v2, v0, Lcom/android/server/wifi/WifiStateMachine;->mWifiMonitor:Lcom/android/server/wifi/WifiMonitor;

    #@6d7
    move-object/from16 v0, p0

    #@6d9
    iget-object v3, v0, Lcom/android/server/wifi/WifiStateMachine;->mInterfaceName:Ljava/lang/String;

    #@6db
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wifi/WifiStateMachine;->getHandler()Landroid/os/Handler;

    #@6de
    move-result-object v4

    #@6df
    const v5, 0x20093

    #@6e2
    invoke-virtual {v2, v3, v5, v4}, Lcom/android/server/wifi/WifiMonitor;->registerHandler(Ljava/lang/String;ILandroid/os/Handler;)V

    #@6e5
    .line 1174
    move-object/from16 v0, p0

    #@6e7
    iget-object v2, v0, Lcom/android/server/wifi/WifiStateMachine;->mWifiMonitor:Lcom/android/server/wifi/WifiMonitor;

    #@6e9
    move-object/from16 v0, p0

    #@6eb
    iget-object v3, v0, Lcom/android/server/wifi/WifiStateMachine;->mInterfaceName:Ljava/lang/String;

    #@6ed
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wifi/WifiStateMachine;->getHandler()Landroid/os/Handler;

    #@6f0
    move-result-object v4

    #@6f1
    const v5, 0x2402c

    #@6f4
    invoke-virtual {v2, v3, v5, v4}, Lcom/android/server/wifi/WifiMonitor;->registerHandler(Ljava/lang/String;ILandroid/os/Handler;)V

    #@6f7
    .line 1175
    move-object/from16 v0, p0

    #@6f9
    iget-object v2, v0, Lcom/android/server/wifi/WifiStateMachine;->mWifiMonitor:Lcom/android/server/wifi/WifiMonitor;

    #@6fb
    move-object/from16 v0, p0

    #@6fd
    iget-object v3, v0, Lcom/android/server/wifi/WifiStateMachine;->mInterfaceName:Ljava/lang/String;

    #@6ff
    .line 1176
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wifi/WifiStateMachine;->getHandler()Landroid/os/Handler;

    #@702
    move-result-object v4

    #@703
    .line 1175
    const v5, 0x2402b

    #@706
    invoke-virtual {v2, v3, v5, v4}, Lcom/android/server/wifi/WifiMonitor;->registerHandler(Ljava/lang/String;ILandroid/os/Handler;)V

    #@709
    .line 1177
    move-object/from16 v0, p0

    #@70b
    iget-object v2, v0, Lcom/android/server/wifi/WifiStateMachine;->mWifiMonitor:Lcom/android/server/wifi/WifiMonitor;

    #@70d
    move-object/from16 v0, p0

    #@70f
    iget-object v3, v0, Lcom/android/server/wifi/WifiStateMachine;->mInterfaceName:Ljava/lang/String;

    #@711
    .line 1178
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wifi/WifiStateMachine;->getHandler()Landroid/os/Handler;

    #@714
    move-result-object v4

    #@715
    .line 1177
    const v5, 0x24007

    #@718
    invoke-virtual {v2, v3, v5, v4}, Lcom/android/server/wifi/WifiMonitor;->registerHandler(Ljava/lang/String;ILandroid/os/Handler;)V

    #@71b
    .line 1179
    move-object/from16 v0, p0

    #@71d
    iget-object v2, v0, Lcom/android/server/wifi/WifiStateMachine;->mWifiMonitor:Lcom/android/server/wifi/WifiMonitor;

    #@71f
    move-object/from16 v0, p0

    #@721
    iget-object v3, v0, Lcom/android/server/wifi/WifiStateMachine;->mInterfaceName:Ljava/lang/String;

    #@723
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wifi/WifiStateMachine;->getHandler()Landroid/os/Handler;

    #@726
    move-result-object v4

    #@727
    const v5, 0x2400c

    #@72a
    invoke-virtual {v2, v3, v5, v4}, Lcom/android/server/wifi/WifiMonitor;->registerHandler(Ljava/lang/String;ILandroid/os/Handler;)V

    #@72d
    .line 1180
    move-object/from16 v0, p0

    #@72f
    iget-object v2, v0, Lcom/android/server/wifi/WifiStateMachine;->mWifiMonitor:Lcom/android/server/wifi/WifiMonitor;

    #@731
    move-object/from16 v0, p0

    #@733
    iget-object v3, v0, Lcom/android/server/wifi/WifiStateMachine;->mInterfaceName:Ljava/lang/String;

    #@735
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wifi/WifiStateMachine;->getHandler()Landroid/os/Handler;

    #@738
    move-result-object v4

    #@739
    const v5, 0x24034

    #@73c
    invoke-virtual {v2, v3, v5, v4}, Lcom/android/server/wifi/WifiMonitor;->registerHandler(Ljava/lang/String;ILandroid/os/Handler;)V

    #@73f
    .line 1181
    move-object/from16 v0, p0

    #@741
    iget-object v2, v0, Lcom/android/server/wifi/WifiStateMachine;->mWifiMonitor:Lcom/android/server/wifi/WifiMonitor;

    #@743
    move-object/from16 v0, p0

    #@745
    iget-object v3, v0, Lcom/android/server/wifi/WifiStateMachine;->mInterfaceName:Ljava/lang/String;

    #@747
    .line 1182
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wifi/WifiStateMachine;->getHandler()Landroid/os/Handler;

    #@74a
    move-result-object v4

    #@74b
    .line 1181
    const v5, 0x24033

    #@74e
    invoke-virtual {v2, v3, v5, v4}, Lcom/android/server/wifi/WifiMonitor;->registerHandler(Ljava/lang/String;ILandroid/os/Handler;)V

    #@751
    .line 1183
    move-object/from16 v0, p0

    #@753
    iget-object v2, v0, Lcom/android/server/wifi/WifiStateMachine;->mWifiMonitor:Lcom/android/server/wifi/WifiMonitor;

    #@755
    move-object/from16 v0, p0

    #@757
    iget-object v3, v0, Lcom/android/server/wifi/WifiStateMachine;->mInterfaceName:Ljava/lang/String;

    #@759
    .line 1184
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wifi/WifiStateMachine;->getHandler()Landroid/os/Handler;

    #@75c
    move-result-object v4

    #@75d
    .line 1183
    const v5, 0x2403d

    #@760
    invoke-virtual {v2, v3, v5, v4}, Lcom/android/server/wifi/WifiMonitor;->registerHandler(Ljava/lang/String;ILandroid/os/Handler;)V

    #@763
    .line 1185
    move-object/from16 v0, p0

    #@765
    iget-object v2, v0, Lcom/android/server/wifi/WifiStateMachine;->mWifiMonitor:Lcom/android/server/wifi/WifiMonitor;

    #@767
    move-object/from16 v0, p0

    #@769
    iget-object v3, v0, Lcom/android/server/wifi/WifiStateMachine;->mInterfaceName:Ljava/lang/String;

    #@76b
    .line 1186
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wifi/WifiStateMachine;->getHandler()Landroid/os/Handler;

    #@76e
    move-result-object v4

    #@76f
    .line 1185
    const v5, 0x24003

    #@772
    invoke-virtual {v2, v3, v5, v4}, Lcom/android/server/wifi/WifiMonitor;->registerHandler(Ljava/lang/String;ILandroid/os/Handler;)V

    #@775
    .line 1187
    move-object/from16 v0, p0

    #@777
    iget-object v2, v0, Lcom/android/server/wifi/WifiStateMachine;->mWifiMonitor:Lcom/android/server/wifi/WifiMonitor;

    #@779
    move-object/from16 v0, p0

    #@77b
    iget-object v3, v0, Lcom/android/server/wifi/WifiStateMachine;->mInterfaceName:Ljava/lang/String;

    #@77d
    .line 1188
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wifi/WifiStateMachine;->getHandler()Landroid/os/Handler;

    #@780
    move-result-object v4

    #@781
    .line 1187
    const v5, 0x24004

    #@784
    invoke-virtual {v2, v3, v5, v4}, Lcom/android/server/wifi/WifiMonitor;->registerHandler(Ljava/lang/String;ILandroid/os/Handler;)V

    #@787
    .line 1189
    move-object/from16 v0, p0

    #@789
    iget-object v2, v0, Lcom/android/server/wifi/WifiStateMachine;->mWifiMonitor:Lcom/android/server/wifi/WifiMonitor;

    #@78b
    move-object/from16 v0, p0

    #@78d
    iget-object v3, v0, Lcom/android/server/wifi/WifiStateMachine;->mInterfaceName:Ljava/lang/String;

    #@78f
    .line 1190
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wifi/WifiStateMachine;->getHandler()Landroid/os/Handler;

    #@792
    move-result-object v4

    #@793
    .line 1189
    const v5, 0x24035

    #@796
    invoke-virtual {v2, v3, v5, v4}, Lcom/android/server/wifi/WifiMonitor;->registerHandler(Ljava/lang/String;ILandroid/os/Handler;)V

    #@799
    .line 1191
    move-object/from16 v0, p0

    #@79b
    iget-object v2, v0, Lcom/android/server/wifi/WifiStateMachine;->mWifiMonitor:Lcom/android/server/wifi/WifiMonitor;

    #@79d
    move-object/from16 v0, p0

    #@79f
    iget-object v3, v0, Lcom/android/server/wifi/WifiStateMachine;->mInterfaceName:Ljava/lang/String;

    #@7a1
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wifi/WifiStateMachine;->getHandler()Landroid/os/Handler;

    #@7a4
    move-result-object v4

    #@7a5
    const v5, 0x24011

    #@7a8
    invoke-virtual {v2, v3, v5, v4}, Lcom/android/server/wifi/WifiMonitor;->registerHandler(Ljava/lang/String;ILandroid/os/Handler;)V

    #@7ab
    .line 1192
    move-object/from16 v0, p0

    #@7ad
    iget-object v2, v0, Lcom/android/server/wifi/WifiStateMachine;->mWifiMonitor:Lcom/android/server/wifi/WifiMonitor;

    #@7af
    move-object/from16 v0, p0

    #@7b1
    iget-object v3, v0, Lcom/android/server/wifi/WifiStateMachine;->mInterfaceName:Ljava/lang/String;

    #@7b3
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wifi/WifiStateMachine;->getHandler()Landroid/os/Handler;

    #@7b6
    move-result-object v4

    #@7b7
    const v5, 0x24005

    #@7ba
    invoke-virtual {v2, v3, v5, v4}, Lcom/android/server/wifi/WifiMonitor;->registerHandler(Ljava/lang/String;ILandroid/os/Handler;)V

    #@7bd
    .line 1193
    move-object/from16 v0, p0

    #@7bf
    iget-object v2, v0, Lcom/android/server/wifi/WifiStateMachine;->mWifiMonitor:Lcom/android/server/wifi/WifiMonitor;

    #@7c1
    move-object/from16 v0, p0

    #@7c3
    iget-object v3, v0, Lcom/android/server/wifi/WifiStateMachine;->mInterfaceName:Ljava/lang/String;

    #@7c5
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wifi/WifiStateMachine;->getHandler()Landroid/os/Handler;

    #@7c8
    move-result-object v4

    #@7c9
    const v5, 0x2400e

    #@7cc
    invoke-virtual {v2, v3, v5, v4}, Lcom/android/server/wifi/WifiMonitor;->registerHandler(Ljava/lang/String;ILandroid/os/Handler;)V

    #@7cf
    .line 1194
    move-object/from16 v0, p0

    #@7d1
    iget-object v2, v0, Lcom/android/server/wifi/WifiStateMachine;->mWifiMonitor:Lcom/android/server/wifi/WifiMonitor;

    #@7d3
    move-object/from16 v0, p0

    #@7d5
    iget-object v3, v0, Lcom/android/server/wifi/WifiStateMachine;->mInterfaceName:Ljava/lang/String;

    #@7d7
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wifi/WifiStateMachine;->getHandler()Landroid/os/Handler;

    #@7da
    move-result-object v4

    #@7db
    const v5, 0x2400d

    #@7de
    invoke-virtual {v2, v3, v5, v4}, Lcom/android/server/wifi/WifiMonitor;->registerHandler(Ljava/lang/String;ILandroid/os/Handler;)V

    #@7e1
    .line 1195
    move-object/from16 v0, p0

    #@7e3
    iget-object v2, v0, Lcom/android/server/wifi/WifiStateMachine;->mWifiMonitor:Lcom/android/server/wifi/WifiMonitor;

    #@7e5
    move-object/from16 v0, p0

    #@7e7
    iget-object v3, v0, Lcom/android/server/wifi/WifiStateMachine;->mInterfaceName:Ljava/lang/String;

    #@7e9
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wifi/WifiStateMachine;->getHandler()Landroid/os/Handler;

    #@7ec
    move-result-object v4

    #@7ed
    const v5, 0x24001

    #@7f0
    invoke-virtual {v2, v3, v5, v4}, Lcom/android/server/wifi/WifiMonitor;->registerHandler(Ljava/lang/String;ILandroid/os/Handler;)V

    #@7f3
    .line 1196
    move-object/from16 v0, p0

    #@7f5
    iget-object v2, v0, Lcom/android/server/wifi/WifiStateMachine;->mWifiMonitor:Lcom/android/server/wifi/WifiMonitor;

    #@7f7
    move-object/from16 v0, p0

    #@7f9
    iget-object v3, v0, Lcom/android/server/wifi/WifiStateMachine;->mInterfaceName:Ljava/lang/String;

    #@7fb
    .line 1197
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wifi/WifiStateMachine;->getHandler()Landroid/os/Handler;

    #@7fe
    move-result-object v4

    #@7ff
    .line 1196
    const v5, 0x24002

    #@802
    invoke-virtual {v2, v3, v5, v4}, Lcom/android/server/wifi/WifiMonitor;->registerHandler(Ljava/lang/String;ILandroid/os/Handler;)V

    #@805
    .line 1198
    move-object/from16 v0, p0

    #@807
    iget-object v2, v0, Lcom/android/server/wifi/WifiStateMachine;->mWifiMonitor:Lcom/android/server/wifi/WifiMonitor;

    #@809
    move-object/from16 v0, p0

    #@80b
    iget-object v3, v0, Lcom/android/server/wifi/WifiStateMachine;->mInterfaceName:Ljava/lang/String;

    #@80d
    .line 1199
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wifi/WifiStateMachine;->getHandler()Landroid/os/Handler;

    #@810
    move-result-object v4

    #@811
    .line 1198
    const v5, 0x24006

    #@814
    invoke-virtual {v2, v3, v5, v4}, Lcom/android/server/wifi/WifiMonitor;->registerHandler(Ljava/lang/String;ILandroid/os/Handler;)V

    #@817
    .line 1200
    move-object/from16 v0, p0

    #@819
    iget-object v2, v0, Lcom/android/server/wifi/WifiStateMachine;->mWifiMonitor:Lcom/android/server/wifi/WifiMonitor;

    #@81b
    move-object/from16 v0, p0

    #@81d
    iget-object v3, v0, Lcom/android/server/wifi/WifiStateMachine;->mInterfaceName:Ljava/lang/String;

    #@81f
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wifi/WifiStateMachine;->getHandler()Landroid/os/Handler;

    #@822
    move-result-object v4

    #@823
    const v5, 0x2400f

    #@826
    invoke-virtual {v2, v3, v5, v4}, Lcom/android/server/wifi/WifiMonitor;->registerHandler(Ljava/lang/String;ILandroid/os/Handler;)V

    #@829
    .line 1201
    move-object/from16 v0, p0

    #@82b
    iget-object v2, v0, Lcom/android/server/wifi/WifiStateMachine;->mWifiMonitor:Lcom/android/server/wifi/WifiMonitor;

    #@82d
    move-object/from16 v0, p0

    #@82f
    iget-object v3, v0, Lcom/android/server/wifi/WifiStateMachine;->mInterfaceName:Ljava/lang/String;

    #@831
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wifi/WifiStateMachine;->getHandler()Landroid/os/Handler;

    #@834
    move-result-object v4

    #@835
    const v5, 0x24010

    #@838
    invoke-virtual {v2, v3, v5, v4}, Lcom/android/server/wifi/WifiMonitor;->registerHandler(Ljava/lang/String;ILandroid/os/Handler;)V

    #@83b
    .line 1202
    move-object/from16 v0, p0

    #@83d
    iget-object v2, v0, Lcom/android/server/wifi/WifiStateMachine;->mWifiMonitor:Lcom/android/server/wifi/WifiMonitor;

    #@83f
    move-object/from16 v0, p0

    #@841
    iget-object v3, v0, Lcom/android/server/wifi/WifiStateMachine;->mInterfaceName:Ljava/lang/String;

    #@843
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wifi/WifiStateMachine;->getHandler()Landroid/os/Handler;

    #@846
    move-result-object v4

    #@847
    const v5, 0x24009

    #@84a
    invoke-virtual {v2, v3, v5, v4}, Lcom/android/server/wifi/WifiMonitor;->registerHandler(Ljava/lang/String;ILandroid/os/Handler;)V

    #@84d
    .line 1203
    move-object/from16 v0, p0

    #@84f
    iget-object v2, v0, Lcom/android/server/wifi/WifiStateMachine;->mWifiMonitor:Lcom/android/server/wifi/WifiMonitor;

    #@851
    move-object/from16 v0, p0

    #@853
    iget-object v3, v0, Lcom/android/server/wifi/WifiStateMachine;->mInterfaceName:Ljava/lang/String;

    #@855
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wifi/WifiStateMachine;->getHandler()Landroid/os/Handler;

    #@858
    move-result-object v4

    #@859
    const v5, 0x2400a

    #@85c
    invoke-virtual {v2, v3, v5, v4}, Lcom/android/server/wifi/WifiMonitor;->registerHandler(Ljava/lang/String;ILandroid/os/Handler;)V

    #@85f
    .line 1204
    move-object/from16 v0, p0

    #@861
    iget-object v2, v0, Lcom/android/server/wifi/WifiStateMachine;->mWifiMonitor:Lcom/android/server/wifi/WifiMonitor;

    #@863
    move-object/from16 v0, p0

    #@865
    iget-object v3, v0, Lcom/android/server/wifi/WifiStateMachine;->mInterfaceName:Ljava/lang/String;

    #@867
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wifi/WifiStateMachine;->getHandler()Landroid/os/Handler;

    #@86a
    move-result-object v4

    #@86b
    const v5, 0x24008

    #@86e
    invoke-virtual {v2, v3, v5, v4}, Lcom/android/server/wifi/WifiMonitor;->registerHandler(Ljava/lang/String;ILandroid/os/Handler;)V

    #@871
    .line 1205
    move-object/from16 v0, p0

    #@873
    iget-object v2, v0, Lcom/android/server/wifi/WifiStateMachine;->mWifiMonitor:Lcom/android/server/wifi/WifiMonitor;

    #@875
    move-object/from16 v0, p0

    #@877
    iget-object v3, v0, Lcom/android/server/wifi/WifiStateMachine;->mInterfaceName:Ljava/lang/String;

    #@879
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wifi/WifiStateMachine;->getHandler()Landroid/os/Handler;

    #@87c
    move-result-object v4

    #@87d
    const v5, 0x2400b

    #@880
    invoke-virtual {v2, v3, v5, v4}, Lcom/android/server/wifi/WifiMonitor;->registerHandler(Ljava/lang/String;ILandroid/os/Handler;)V

    #@883
    .line 1207
    new-instance v13, Landroid/content/Intent;

    #@885
    const-string/jumbo v2, "wifi_scan_available"

    #@888
    invoke-direct {v13, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    #@88b
    .line 1208
    .local v13, "intent":Landroid/content/Intent;
    const/high16 v2, 0x4000000

    #@88d
    invoke-virtual {v13, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    #@890
    .line 1209
    const-string/jumbo v2, "scan_enabled"

    #@893
    const/4 v3, 0x1

    #@894
    invoke-virtual {v13, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    #@897
    .line 1210
    move-object/from16 v0, p0

    #@899
    iget-object v2, v0, Lcom/android/server/wifi/WifiStateMachine;->mContext:Landroid/content/Context;

    #@89b
    sget-object v3, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    #@89d
    invoke-virtual {v2, v13, v3}, Landroid/content/Context;->sendStickyBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    #@8a0
    .line 1213
    :try_start_0
    move-object/from16 v0, p0

    #@8a2
    iget-object v2, v0, Lcom/android/server/wifi/WifiStateMachine;->mContext:Landroid/content/Context;

    #@8a4
    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    #@8a7
    move-result-object v2

    #@8a8
    const-string/jumbo v3, "com.android.systemui"

    #@8ab
    .line 1214
    const/high16 v4, 0x100000

    #@8ad
    const/4 v5, 0x0

    #@8ae
    .line 1213
    invoke-virtual {v2, v3, v4, v5}, Landroid/content/pm/PackageManager;->getPackageUidAsUser(Ljava/lang/String;II)I

    #@8b1
    move-result v2

    #@8b2
    move-object/from16 v0, p0

    #@8b4
    iput v2, v0, Lcom/android/server/wifi/WifiStateMachine;->mSystemUiUid:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    #@8b6
    .line 1219
    :goto_2
    move-object/from16 v0, p0

    #@8b8
    iget-object v2, v0, Lcom/android/server/wifi/WifiStateMachine;->mFacade:Lcom/android/server/wifi/FrameworkFacade;

    #@8ba
    .line 1220
    move-object/from16 v0, p0

    #@8bc
    iget-object v3, v0, Lcom/android/server/wifi/WifiStateMachine;->mContext:Landroid/content/Context;

    #@8be
    const-string/jumbo v4, "wifi_verbose_logging_enabled"

    #@8c1
    const/4 v5, 0x0

    #@8c2
    .line 1219
    invoke-virtual {v2, v3, v4, v5}, Lcom/android/server/wifi/FrameworkFacade;->getIntegerSetting(Landroid/content/Context;Ljava/lang/String;I)I

    #@8c5
    move-result v2

    #@8c6
    move-object/from16 v0, p0

    #@8c8
    iput v2, v0, Lcom/android/server/wifi/WifiStateMachine;->mVerboseLoggingLevel:I

    #@8ca
    .line 1221
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wifi/WifiStateMachine;->updateLoggingLevel()V

    #@8cd
    .line 1004
    return-void

    #@8ce
    .line 1041
    .end local v12    # "filter":Landroid/content/IntentFilter;
    .end local v13    # "intent":Landroid/content/Intent;
    .end local v14    # "period":I
    .end local v15    # "powerManager":Landroid/os/PowerManager;
    .end local v16    # "s1":Landroid/os/IBinder;
    :cond_1
    invoke-virtual/range {p2 .. p2}, Lcom/android/server/wifi/FrameworkFacade;->makeBaseLogger()Lcom/android/server/wifi/BaseWifiLogger;

    #@8d1
    move-result-object v2

    #@8d2
    move-object/from16 v0, p0

    #@8d4
    iput-object v2, v0, Lcom/android/server/wifi/WifiStateMachine;->mWifiLogger:Lcom/android/server/wifi/BaseWifiLogger;

    #@8d6
    goto/16 :goto_0

    #@8d8
    .line 1084
    .restart local v14    # "period":I
    .restart local v16    # "s1":Landroid/os/IBinder;
    :cond_2
    const/4 v2, 0x0

    #@8d9
    goto/16 :goto_1

    #@8db
    .line 1215
    .restart local v12    # "filter":Landroid/content/IntentFilter;
    .restart local v13    # "intent":Landroid/content/Intent;
    .restart local v15    # "powerManager":Landroid/os/PowerManager;
    :catch_0
    move-exception v10

    #@8dc
    .line 1216
    .local v10, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string/jumbo v2, "Unable to resolve SystemUI\'s UID."

    #@8df
    move-object/from16 v0, p0

    #@8e1
    invoke-virtual {v0, v2}, Lcom/android/server/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V

    #@8e4
    goto :goto_2
.end method

.method private broadcastWifiCredentialChanged(ILandroid/net/wifi/WifiConfiguration;)V
    .locals 4
    .param p1, "wifiCredentialEventType"    # I
    .param p2, "config"    # Landroid/net/wifi/WifiConfiguration;

    #@0
    .prologue
    .line 7820
    if-eqz p2, :cond_0

    #@2
    iget-object v1, p2, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    #@4
    if-eqz v1, :cond_0

    #@6
    .line 7821
    new-instance v0, Landroid/content/Intent;

    #@8
    const-string/jumbo v1, "android.net.wifi.WIFI_CREDENTIAL_CHANGED"

    #@b
    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    #@e
    .line 7822
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v1, "ssid"

    #@11
    iget-object v2, p2, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    #@13
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    #@16
    .line 7823
    const-string/jumbo v1, "et"

    #@19
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    #@1c
    .line 7825
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine;->mContext:Landroid/content/Context;

    #@1e
    sget-object v2, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    #@20
    .line 7826
    const-string/jumbo v3, "android.permission.RECEIVE_WIFI_CREDENTIAL_CHANGE"

    #@23
    .line 7825
    invoke-virtual {v1, v0, v2, v3}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    #@26
    .line 7819
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_0
    return-void
.end method

.method private buildIdentity(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p1, "eapMethod"    # I
    .param p2, "imsi"    # Ljava/lang/String;
    .param p3, "mccMnc"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v6, 0x6

    #@1
    const/4 v5, 0x0

    #@2
    const/4 v4, 0x3

    #@3
    .line 6425
    if-eqz p2, :cond_0

    #@5
    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    #@8
    move-result v3

    #@9
    if-eqz v3, :cond_1

    #@b
    .line 6426
    :cond_0
    const-string/jumbo v3, ""

    #@e
    return-object v3

    #@f
    .line 6428
    :cond_1
    const/4 v3, 0x4

    #@10
    if-ne p1, v3, :cond_4

    #@12
    .line 6429
    const-string/jumbo v2, "1"

    #@15
    .line 6438
    .local v2, "prefix":Ljava/lang/String;
    :goto_0
    if-eqz p3, :cond_2

    #@17
    invoke-virtual {p3}, Ljava/lang/String;->isEmpty()Z

    #@1a
    move-result v3

    #@1b
    if-eqz v3, :cond_7

    #@1d
    .line 6445
    :cond_2
    invoke-virtual {p2, v5, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@20
    move-result-object v0

    #@21
    .line 6446
    .local v0, "mcc":Ljava/lang/String;
    invoke-virtual {p2, v4, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@24
    move-result-object v1

    #@25
    .line 6449
    .local v1, "mnc":Ljava/lang/String;
    :cond_3
    :goto_1
    new-instance v3, Ljava/lang/StringBuilder;

    #@27
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@2a
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2d
    move-result-object v3

    #@2e
    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@31
    move-result-object v3

    #@32
    const-string/jumbo v4, "@wlan.mnc"

    #@35
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@38
    move-result-object v3

    #@39
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3c
    move-result-object v3

    #@3d
    const-string/jumbo v4, ".mcc"

    #@40
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@43
    move-result-object v3

    #@44
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@47
    move-result-object v3

    #@48
    const-string/jumbo v4, ".3gppnetwork.org"

    #@4b
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4e
    move-result-object v3

    #@4f
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@52
    move-result-object v3

    #@53
    return-object v3

    #@54
    .line 6430
    .end local v0    # "mcc":Ljava/lang/String;
    .end local v1    # "mnc":Ljava/lang/String;
    .end local v2    # "prefix":Ljava/lang/String;
    :cond_4
    const/4 v3, 0x5

    #@55
    if-ne p1, v3, :cond_5

    #@57
    .line 6431
    const-string/jumbo v2, "0"

    #@5a
    .restart local v2    # "prefix":Ljava/lang/String;
    goto :goto_0

    #@5b
    .line 6432
    .end local v2    # "prefix":Ljava/lang/String;
    :cond_5
    if-ne p1, v6, :cond_6

    #@5d
    .line 6433
    const-string/jumbo v2, "6"

    #@60
    .restart local v2    # "prefix":Ljava/lang/String;
    goto :goto_0

    #@61
    .line 6435
    .end local v2    # "prefix":Ljava/lang/String;
    :cond_6
    const-string/jumbo v3, ""

    #@64
    return-object v3

    #@65
    .line 6439
    .restart local v2    # "prefix":Ljava/lang/String;
    :cond_7
    invoke-virtual {p3, v5, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@68
    move-result-object v0

    #@69
    .line 6440
    .restart local v0    # "mcc":Ljava/lang/String;
    invoke-virtual {p3, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    #@6c
    move-result-object v1

    #@6d
    .line 6441
    .restart local v1    # "mnc":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    #@70
    move-result v3

    #@71
    const/4 v4, 0x2

    #@72
    if-ne v3, v4, :cond_3

    #@74
    .line 6442
    new-instance v3, Ljava/lang/StringBuilder;

    #@76
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@79
    const-string/jumbo v4, "0"

    #@7c
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@7f
    move-result-object v3

    #@80
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@83
    move-result-object v3

    #@84
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@87
    move-result-object v1

    #@88
    goto :goto_1
.end method

.method private checkAndSetConnectivityInstance()V
    .locals 2

    #@0
    .prologue
    .line 2960
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mCm:Landroid/net/ConnectivityManager;

    #@2
    if-nez v0, :cond_0

    #@4
    .line 2961
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mContext:Landroid/content/Context;

    #@6
    const-string/jumbo v1, "connectivity"

    #@9
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    #@c
    move-result-object v0

    #@d
    check-cast v0, Landroid/net/ConnectivityManager;

    #@f
    iput-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mCm:Landroid/net/ConnectivityManager;

    #@11
    .line 2959
    :cond_0
    return-void
.end method

.method private checkOrDeferScanAllowed(Landroid/os/Message;)Z
    .locals 8
    .param p1, "msg"    # Landroid/os/Message;

    #@0
    .prologue
    .line 1519
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    #@3
    move-result-wide v2

    #@4
    .line 1520
    .local v2, "now":J
    iget-wide v4, p0, Lcom/android/server/wifi/WifiStateMachine;->lastConnectAttemptTimestamp:J

    #@6
    const-wide/16 v6, 0x0

    #@8
    cmp-long v1, v4, v6

    #@a
    if-eqz v1, :cond_0

    #@c
    iget-wide v4, p0, Lcom/android/server/wifi/WifiStateMachine;->lastConnectAttemptTimestamp:J

    #@e
    sub-long v4, v2, v4

    #@10
    const-wide/16 v6, 0x2710

    #@12
    cmp-long v1, v4, v6

    #@14
    if-gez v1, :cond_0

    #@16
    .line 1521
    invoke-static {p1}, Landroid/os/Message;->obtain(Landroid/os/Message;)Landroid/os/Message;

    #@19
    move-result-object v0

    #@1a
    .line 1522
    .local v0, "dmsg":Landroid/os/Message;
    iget-wide v4, p0, Lcom/android/server/wifi/WifiStateMachine;->lastConnectAttemptTimestamp:J

    #@1c
    sub-long v4, v2, v4

    #@1e
    const-wide/16 v6, 0x2af8

    #@20
    sub-long v4, v6, v4

    #@22
    invoke-virtual {p0, v0, v4, v5}, Lcom/android/server/wifi/WifiStateMachine;->sendMessageDelayed(Landroid/os/Message;J)V

    #@25
    .line 1523
    const/4 v1, 0x0

    #@26
    return v1

    #@27
    .line 1525
    .end local v0    # "dmsg":Landroid/os/Message;
    :cond_0
    const/4 v1, 0x1

    #@28
    return v1
.end method

.method private chooseApChannel(I)I
    .locals 7
    .param p1, "apBand"    # I

    #@0
    .prologue
    .line 3800
    if-nez p1, :cond_4

    #@2
    .line 3802
    iget-object v4, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiApConfigStore:Lcom/android/server/wifi/WifiApConfigStore;

    #@4
    invoke-virtual {v4}, Lcom/android/server/wifi/WifiApConfigStore;->getAllowed2GChannel()Ljava/util/ArrayList;

    #@7
    move-result-object v0

    #@8
    .line 3803
    .local v0, "allowed2GChannel":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    if-eqz v0, :cond_0

    #@a
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    #@d
    move-result v4

    #@e
    if-nez v4, :cond_3

    #@10
    .line 3805
    :cond_0
    sget-boolean v4, Lcom/android/server/wifi/WifiStateMachine;->DBG:Z

    #@12
    if-eqz v4, :cond_1

    #@14
    .line 3806
    const-string/jumbo v4, "WifiStateMachine"

    #@17
    const-string/jumbo v5, "No specified 2G allowed channel list"

    #@1a
    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@1d
    .line 3808
    :cond_1
    const/4 v1, 0x6

    #@1e
    .line 3825
    .end local v0    # "allowed2GChannel":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .local v1, "apChannel":I
    :goto_0
    sget-boolean v4, Lcom/android/server/wifi/WifiStateMachine;->DBG:Z

    #@20
    if-eqz v4, :cond_2

    #@22
    .line 3826
    const-string/jumbo v4, "WifiStateMachine"

    #@25
    new-instance v5, Ljava/lang/StringBuilder;

    #@27
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@2a
    const-string/jumbo v6, "SoftAp set on channel "

    #@2d
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@30
    move-result-object v5

    #@31
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@34
    move-result-object v5

    #@35
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@38
    move-result-object v5

    #@39
    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@3c
    .line 3829
    :cond_2
    return v1

    #@3d
    .line 3810
    .end local v1    # "apChannel":I
    .restart local v0    # "allowed2GChannel":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :cond_3
    sget-object v4, Lcom/android/server/wifi/WifiStateMachine;->mRandom:Ljava/util/Random;

    #@3f
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    #@42
    move-result v5

    #@43
    invoke-virtual {v4, v5}, Ljava/util/Random;->nextInt(I)I

    #@46
    move-result v3

    #@47
    .line 3811
    .local v3, "index":I
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@4a
    move-result-object v4

    #@4b
    check-cast v4, Ljava/lang/Integer;

    #@4d
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    #@50
    move-result v1

    #@51
    .restart local v1    # "apChannel":I
    goto :goto_0

    #@52
    .line 3815
    .end local v0    # "allowed2GChannel":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .end local v1    # "apChannel":I
    .end local v3    # "index":I
    :cond_4
    iget-object v4, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    #@54
    const/4 v5, 0x2

    #@55
    invoke-virtual {v4, v5}, Lcom/android/server/wifi/WifiNative;->getChannelsForBand(I)[I

    #@58
    move-result-object v2

    #@59
    .line 3816
    .local v2, "channel":[I
    if-eqz v2, :cond_5

    #@5b
    array-length v4, v2

    #@5c
    if-lez v4, :cond_5

    #@5e
    .line 3817
    sget-object v4, Lcom/android/server/wifi/WifiStateMachine;->mRandom:Ljava/util/Random;

    #@60
    array-length v5, v2

    #@61
    invoke-virtual {v4, v5}, Ljava/util/Random;->nextInt(I)I

    #@64
    move-result v4

    #@65
    aget v1, v2, v4

    #@67
    .line 3818
    .restart local v1    # "apChannel":I
    invoke-direct {p0, v1}, Lcom/android/server/wifi/WifiStateMachine;->convertFrequencyToChannelNumber(I)I

    #@6a
    move-result v1

    #@6b
    goto :goto_0

    #@6c
    .line 3820
    .end local v1    # "apChannel":I
    :cond_5
    const-string/jumbo v4, "WifiStateMachine"

    #@6f
    const-string/jumbo v5, "SoftAp do not get available channel list"

    #@72
    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@75
    .line 3821
    const/4 v1, 0x0

    #@76
    .restart local v1    # "apChannel":I
    goto :goto_0
.end method

.method private cleanWifiScore()V
    .locals 4

    #@0
    .prologue
    const-wide/16 v2, 0x0

    #@2
    .line 3228
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    #@4
    iput-wide v2, v0, Landroid/net/wifi/WifiInfo;->txBadRate:D

    #@6
    .line 3229
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    #@8
    iput-wide v2, v0, Landroid/net/wifi/WifiInfo;->txSuccessRate:D

    #@a
    .line 3230
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    #@c
    iput-wide v2, v0, Landroid/net/wifi/WifiInfo;->txRetriesRate:D

    #@e
    .line 3231
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    #@10
    iput-wide v2, v0, Landroid/net/wifi/WifiInfo;->rxSuccessRate:D

    #@12
    .line 3232
    const/4 v0, 0x0

    #@13
    iput-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiScoreReport:Lcom/android/server/wifi/WifiScoreReport;

    #@15
    .line 3227
    return-void
.end method

.method private clearLinkProperties()V
    .locals 2

    #@0
    .prologue
    .line 3306
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine;->mDhcpResultsLock:Ljava/lang/Object;

    #@2
    monitor-enter v1

    #@3
    .line 3307
    :try_start_0
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mDhcpResults:Landroid/net/DhcpResults;

    #@5
    if-eqz v0, :cond_0

    #@7
    .line 3308
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mDhcpResults:Landroid/net/DhcpResults;

    #@9
    invoke-virtual {v0}, Landroid/net/DhcpResults;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@c
    :cond_0
    monitor-exit v1

    #@d
    .line 3313
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mLinkProperties:Landroid/net/LinkProperties;

    #@f
    invoke-virtual {v0}, Landroid/net/LinkProperties;->clear()V

    #@12
    .line 3314
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mNetworkAgent:Lcom/android/server/wifi/WifiStateMachine$WifiNetworkAgent;

    #@14
    if-eqz v0, :cond_1

    #@16
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mNetworkAgent:Lcom/android/server/wifi/WifiStateMachine$WifiNetworkAgent;

    #@18
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine;->mLinkProperties:Landroid/net/LinkProperties;

    #@1a
    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiStateMachine$WifiNetworkAgent;->sendLinkProperties(Landroid/net/LinkProperties;)V

    #@1d
    .line 3303
    :cond_1
    return-void

    #@1e
    .line 3306
    :catchall_0
    move-exception v0

    #@1f
    monitor-exit v1

    #@20
    throw v0
.end method

.method private static concat([B[B[B)[B
    .locals 7
    .param p0, "array1"    # [B
    .param p1, "array2"    # [B
    .param p2, "array3"    # [B

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 7881
    array-length v5, p0

    #@2
    array-length v6, p1

    #@3
    add-int/2addr v5, v6

    #@4
    array-length v6, p2

    #@5
    add-int v2, v5, v6

    #@7
    .line 7883
    .local v2, "len":I
    array-length v5, p0

    #@8
    if-eqz v5, :cond_0

    #@a
    .line 7884
    add-int/lit8 v2, v2, 0x1

    #@c
    .line 7887
    :cond_0
    array-length v5, p1

    #@d
    if-eqz v5, :cond_1

    #@f
    .line 7888
    add-int/lit8 v2, v2, 0x1

    #@11
    .line 7891
    :cond_1
    array-length v5, p2

    #@12
    if-eqz v5, :cond_2

    #@14
    .line 7892
    add-int/lit8 v2, v2, 0x1

    #@16
    .line 7895
    :cond_2
    new-array v3, v2, [B

    #@18
    .line 7897
    .local v3, "result":[B
    const/4 v1, 0x0

    #@19
    .line 7898
    .local v1, "index":I
    array-length v5, p0

    #@1a
    if-eqz v5, :cond_3

    #@1c
    .line 7899
    array-length v5, p0

    #@1d
    and-int/lit16 v5, v5, 0xff

    #@1f
    int-to-byte v5, v5

    #@20
    aput-byte v5, v3, v1

    #@22
    .line 7900
    const/4 v1, 0x1

    #@23
    .line 7901
    array-length v6, p0

    #@24
    move v5, v4

    #@25
    :goto_0
    if-ge v5, v6, :cond_3

    #@27
    aget-byte v0, p0, v5

    #@29
    .line 7902
    .local v0, "b":B
    aput-byte v0, v3, v1

    #@2b
    .line 7903
    add-int/lit8 v1, v1, 0x1

    #@2d
    .line 7901
    add-int/lit8 v5, v5, 0x1

    #@2f
    goto :goto_0

    #@30
    .line 7907
    .end local v0    # "b":B
    :cond_3
    array-length v5, p1

    #@31
    if-eqz v5, :cond_4

    #@33
    .line 7908
    array-length v5, p1

    #@34
    and-int/lit16 v5, v5, 0xff

    #@36
    int-to-byte v5, v5

    #@37
    aput-byte v5, v3, v1

    #@39
    .line 7909
    add-int/lit8 v1, v1, 0x1

    #@3b
    .line 7910
    array-length v6, p1

    #@3c
    move v5, v4

    #@3d
    :goto_1
    if-ge v5, v6, :cond_4

    #@3f
    aget-byte v0, p1, v5

    #@41
    .line 7911
    .restart local v0    # "b":B
    aput-byte v0, v3, v1

    #@43
    .line 7912
    add-int/lit8 v1, v1, 0x1

    #@45
    .line 7910
    add-int/lit8 v5, v5, 0x1

    #@47
    goto :goto_1

    #@48
    .line 7916
    .end local v0    # "b":B
    :cond_4
    array-length v5, p2

    #@49
    if-eqz v5, :cond_5

    #@4b
    .line 7917
    array-length v5, p2

    #@4c
    and-int/lit16 v5, v5, 0xff

    #@4e
    int-to-byte v5, v5

    #@4f
    aput-byte v5, v3, v1

    #@51
    .line 7918
    add-int/lit8 v1, v1, 0x1

    #@53
    .line 7919
    array-length v5, p2

    #@54
    :goto_2
    if-ge v4, v5, :cond_5

    #@56
    aget-byte v0, p2, v4

    #@58
    .line 7920
    .restart local v0    # "b":B
    aput-byte v0, v3, v1

    #@5a
    .line 7921
    add-int/lit8 v1, v1, 0x1

    #@5c
    .line 7919
    add-int/lit8 v4, v4, 0x1

    #@5e
    goto :goto_2

    #@5f
    .line 7924
    .end local v0    # "b":B
    :cond_5
    return-object v3
.end method

.method private static concatHex([B[B)[B
    .locals 7
    .param p0, "array1"    # [B
    .param p1, "array2"    # [B

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 7929
    array-length v5, p0

    #@2
    array-length v6, p1

    #@3
    add-int v2, v5, v6

    #@5
    .line 7931
    .local v2, "len":I
    new-array v3, v2, [B

    #@7
    .line 7933
    .local v3, "result":[B
    const/4 v1, 0x0

    #@8
    .line 7934
    .local v1, "index":I
    array-length v5, p0

    #@9
    if-eqz v5, :cond_0

    #@b
    .line 7935
    array-length v6, p0

    #@c
    move v5, v4

    #@d
    :goto_0
    if-ge v5, v6, :cond_0

    #@f
    aget-byte v0, p0, v5

    #@11
    .line 7936
    .local v0, "b":B
    aput-byte v0, v3, v1

    #@13
    .line 7937
    add-int/lit8 v1, v1, 0x1

    #@15
    .line 7935
    add-int/lit8 v5, v5, 0x1

    #@17
    goto :goto_0

    #@18
    .line 7941
    .end local v0    # "b":B
    :cond_0
    array-length v5, p1

    #@19
    if-eqz v5, :cond_1

    #@1b
    .line 7942
    array-length v5, p1

    #@1c
    :goto_1
    if-ge v4, v5, :cond_1

    #@1e
    aget-byte v0, p1, v4

    #@20
    .line 7943
    .restart local v0    # "b":B
    aput-byte v0, v3, v1

    #@22
    .line 7944
    add-int/lit8 v1, v1, 0x1

    #@24
    .line 7942
    add-int/lit8 v4, v4, 0x1

    #@26
    goto :goto_1

    #@27
    .line 7948
    .end local v0    # "b":B
    :cond_1
    return-object v3
.end method

.method private configureVerboseHalLogging(Z)V
    .locals 3
    .param p1, "enableVerbose"    # Z

    #@0
    .prologue
    .line 1351
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mBuildProperties:Lcom/android/server/wifi/BuildProperties;

    #@2
    invoke-interface {v0}, Lcom/android/server/wifi/BuildProperties;->isUserBuild()Z

    #@5
    move-result v0

    #@6
    if-eqz v0, :cond_0

    #@8
    .line 1352
    return-void

    #@9
    .line 1354
    :cond_0
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine;->mPropertyService:Lcom/android/server/wifi/PropertyService;

    #@b
    const-string/jumbo v2, "log.tag.WifiHAL"

    #@e
    .line 1355
    if-eqz p1, :cond_1

    #@10
    const-string/jumbo v0, "V"

    #@13
    .line 1354
    :goto_0
    invoke-interface {v1, v2, v0}, Lcom/android/server/wifi/PropertyService;->set(Ljava/lang/String;Ljava/lang/String;)V

    #@16
    .line 1350
    return-void

    #@17
    .line 1355
    :cond_1
    const-string/jumbo v0, "D"

    #@1a
    goto :goto_0
.end method

.method private convertFrequencyToChannelNumber(I)I
    .locals 1
    .param p1, "frequency"    # I

    #@0
    .prologue
    .line 3786
    const/16 v0, 0x96c

    #@2
    if-lt p1, v0, :cond_0

    #@4
    const/16 v0, 0x9b4

    #@6
    if-gt p1, v0, :cond_0

    #@8
    .line 3787
    add-int/lit16 v0, p1, -0x96c

    #@a
    div-int/lit8 v0, v0, 0x5

    #@c
    add-int/lit8 v0, v0, 0x1

    #@e
    return v0

    #@f
    .line 3788
    :cond_0
    const/16 v0, 0x1432

    #@11
    if-lt p1, v0, :cond_1

    #@13
    const/16 v0, 0x16c1

    #@15
    if-gt p1, v0, :cond_1

    #@17
    .line 3790
    add-int/lit16 v0, p1, -0x1432

    #@19
    div-int/lit8 v0, v0, 0x5

    #@1b
    add-int/lit8 v0, v0, 0x22

    #@1d
    return v0

    #@1e
    .line 3792
    :cond_1
    const/4 v0, 0x0

    #@1f
    return v0
.end method

.method private fetchPktcntNative(Landroid/net/wifi/RssiPacketCountInfo;)V
    .locals 9
    .param p1, "info"    # Landroid/net/wifi/RssiPacketCountInfo;

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    .line 3250
    iget-object v6, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    #@3
    invoke-virtual {v6}, Lcom/android/server/wifi/WifiNative;->pktcntPoll()Ljava/lang/String;

    #@6
    move-result-object v3

    #@7
    .line 3252
    .local v3, "pktcntPoll":Ljava/lang/String;
    if-eqz v3, :cond_3

    #@9
    .line 3253
    const-string/jumbo v6, "\n"

    #@c
    invoke-virtual {v3, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    #@f
    move-result-object v2

    #@10
    .line 3254
    .local v2, "lines":[Ljava/lang/String;
    array-length v6, v2

    #@11
    :goto_0
    if-ge v5, v6, :cond_3

    #@13
    aget-object v1, v2, v5

    #@15
    .line 3255
    .local v1, "line":Ljava/lang/String;
    const-string/jumbo v7, "="

    #@18
    invoke-virtual {v1, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    #@1b
    move-result-object v4

    #@1c
    .line 3256
    .local v4, "prop":[Ljava/lang/String;
    array-length v7, v4

    #@1d
    const/4 v8, 0x2

    #@1e
    if-ge v7, v8, :cond_1

    #@20
    .line 3254
    :cond_0
    :goto_1
    add-int/lit8 v5, v5, 0x1

    #@22
    goto :goto_0

    #@23
    .line 3258
    :cond_1
    const/4 v7, 0x0

    #@24
    :try_start_0
    aget-object v7, v4, v7

    #@26
    const-string/jumbo v8, "TXGOOD"

    #@29
    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@2c
    move-result v7

    #@2d
    if-eqz v7, :cond_2

    #@2f
    .line 3259
    const/4 v7, 0x1

    #@30
    aget-object v7, v4, v7

    #@32
    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    #@35
    move-result v7

    #@36
    iput v7, p1, Landroid/net/wifi/RssiPacketCountInfo;->txgood:I

    #@38
    goto :goto_1

    #@39
    .line 3263
    :catch_0
    move-exception v0

    #@3a
    .local v0, "e":Ljava/lang/NumberFormatException;
    goto :goto_1

    #@3b
    .line 3260
    .end local v0    # "e":Ljava/lang/NumberFormatException;
    :cond_2
    const/4 v7, 0x0

    #@3c
    aget-object v7, v4, v7

    #@3e
    const-string/jumbo v8, "TXBAD"

    #@41
    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@44
    move-result v7

    #@45
    if-eqz v7, :cond_0

    #@47
    .line 3261
    const/4 v7, 0x1

    #@48
    aget-object v7, v4, v7

    #@4a
    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    #@4d
    move-result v7

    #@4e
    iput v7, p1, Landroid/net/wifi/RssiPacketCountInfo;->txbad:I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    #@50
    goto :goto_1

    #@51
    .line 3249
    .end local v1    # "line":Ljava/lang/String;
    .end local v2    # "lines":[Ljava/lang/String;
    .end local v4    # "prop":[Ljava/lang/String;
    :cond_3
    return-void
.end method

.method private fetchRssiLinkSpeedAndFrequencyNative()V
    .locals 14

    #@0
    .prologue
    const/16 v13, -0x7f

    #@2
    const/4 v9, 0x0

    #@3
    .line 3149
    const/4 v5, 0x0

    #@4
    .line 3150
    .local v5, "newRssi":Ljava/lang/Integer;
    const/4 v4, 0x0

    #@5
    .line 3151
    .local v4, "newLinkSpeed":Ljava/lang/Integer;
    const/4 v3, 0x0

    #@6
    .line 3153
    .local v3, "newFrequency":Ljava/lang/Integer;
    iget-object v10, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    #@8
    invoke-virtual {v10}, Lcom/android/server/wifi/WifiNative;->signalPoll()Ljava/lang/String;

    #@b
    move-result-object v8

    #@c
    .line 3155
    .local v8, "signalPoll":Ljava/lang/String;
    if-eqz v8, :cond_4

    #@e
    .line 3156
    const-string/jumbo v10, "\n"

    #@11
    invoke-virtual {v8, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    #@14
    move-result-object v2

    #@15
    .line 3157
    .local v2, "lines":[Ljava/lang/String;
    array-length v10, v2

    #@16
    .end local v3    # "newFrequency":Ljava/lang/Integer;
    .end local v4    # "newLinkSpeed":Ljava/lang/Integer;
    .end local v5    # "newRssi":Ljava/lang/Integer;
    :goto_0
    if-ge v9, v10, :cond_4

    #@18
    aget-object v1, v2, v9

    #@1a
    .line 3158
    .local v1, "line":Ljava/lang/String;
    const-string/jumbo v11, "="

    #@1d
    invoke-virtual {v1, v11}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    #@20
    move-result-object v7

    #@21
    .line 3159
    .local v7, "prop":[Ljava/lang/String;
    array-length v11, v7

    #@22
    const/4 v12, 0x2

    #@23
    if-ge v11, v12, :cond_1

    #@25
    .line 3157
    :cond_0
    :goto_1
    add-int/lit8 v9, v9, 0x1

    #@27
    goto :goto_0

    #@28
    .line 3161
    :cond_1
    const/4 v11, 0x0

    #@29
    :try_start_0
    aget-object v11, v7, v11

    #@2b
    const-string/jumbo v12, "RSSI"

    #@2e
    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@31
    move-result v11

    #@32
    if-eqz v11, :cond_2

    #@34
    .line 3162
    const/4 v11, 0x1

    #@35
    aget-object v11, v7, v11

    #@37
    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    #@3a
    move-result v11

    #@3b
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@3e
    move-result-object v5

    #@3f
    .local v5, "newRssi":Ljava/lang/Integer;
    goto :goto_1

    #@40
    .line 3163
    .end local v5    # "newRssi":Ljava/lang/Integer;
    :cond_2
    const/4 v11, 0x0

    #@41
    aget-object v11, v7, v11

    #@43
    const-string/jumbo v12, "LINKSPEED"

    #@46
    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@49
    move-result v11

    #@4a
    if-eqz v11, :cond_3

    #@4c
    .line 3164
    const/4 v11, 0x1

    #@4d
    aget-object v11, v7, v11

    #@4f
    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    #@52
    move-result v11

    #@53
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@56
    move-result-object v4

    #@57
    .local v4, "newLinkSpeed":Ljava/lang/Integer;
    goto :goto_1

    #@58
    .line 3165
    .end local v4    # "newLinkSpeed":Ljava/lang/Integer;
    :cond_3
    const/4 v11, 0x0

    #@59
    aget-object v11, v7, v11

    #@5b
    const-string/jumbo v12, "FREQUENCY"

    #@5e
    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@61
    move-result v11

    #@62
    if-eqz v11, :cond_0

    #@64
    .line 3166
    const/4 v11, 0x1

    #@65
    aget-object v11, v7, v11

    #@67
    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    #@6a
    move-result v11

    #@6b
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    #@6e
    move-result-object v3

    #@6f
    .local v3, "newFrequency":Ljava/lang/Integer;
    goto :goto_1

    #@70
    .line 3174
    .end local v1    # "line":Ljava/lang/String;
    .end local v2    # "lines":[Ljava/lang/String;
    .end local v3    # "newFrequency":Ljava/lang/Integer;
    .end local v7    # "prop":[Ljava/lang/String;
    :cond_4
    sget-boolean v9, Lcom/android/server/wifi/WifiStateMachine;->DBG:Z

    #@72
    if-eqz v9, :cond_5

    #@74
    .line 3175
    new-instance v9, Ljava/lang/StringBuilder;

    #@76
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    #@79
    const-string/jumbo v10, "fetchRssiLinkSpeedAndFrequencyNative rssi="

    #@7c
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@7f
    move-result-object v9

    #@80
    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@83
    move-result-object v9

    #@84
    .line 3176
    const-string/jumbo v10, " linkspeed="

    #@87
    .line 3175
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@8a
    move-result-object v9

    #@8b
    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@8e
    move-result-object v9

    #@8f
    .line 3176
    const-string/jumbo v10, " freq="

    #@92
    .line 3175
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@95
    move-result-object v9

    #@96
    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@99
    move-result-object v9

    #@9a
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@9d
    move-result-object v9

    #@9e
    invoke-virtual {p0, v9}, Lcom/android/server/wifi/WifiStateMachine;->logd(Ljava/lang/String;)V

    #@a1
    .line 3179
    :cond_5
    if-eqz v5, :cond_c

    #@a3
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    #@a6
    move-result v9

    #@a7
    if-le v9, v13, :cond_c

    #@a9
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    #@ac
    move-result v9

    #@ad
    const/16 v10, 0xc8

    #@af
    if-ge v9, v10, :cond_c

    #@b1
    .line 3184
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    #@b4
    move-result v9

    #@b5
    if-lez v9, :cond_6

    #@b7
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    #@ba
    move-result v9

    #@bb
    add-int/lit16 v9, v9, -0x100

    #@bd
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@c0
    move-result-object v5

    #@c1
    .line 3185
    :cond_6
    iget-object v9, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    #@c3
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    #@c6
    move-result v10

    #@c7
    invoke-virtual {v9, v10}, Landroid/net/wifi/WifiInfo;->setRssi(I)V

    #@ca
    .line 3189
    iget-object v9, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiMetrics:Lcom/android/server/wifi/WifiMetrics;

    #@cc
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    #@cf
    move-result v10

    #@d0
    invoke-virtual {v9, v10}, Lcom/android/server/wifi/WifiMetrics;->incrementRssiPollRssiCount(I)V

    #@d3
    .line 3200
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    #@d6
    move-result v9

    #@d7
    const/4 v10, 0x5

    #@d8
    invoke-static {v9, v10}, Landroid/net/wifi/WifiManager;->calculateSignalLevel(II)I

    #@db
    move-result v6

    #@dc
    .line 3201
    .local v6, "newSignalLevel":I
    iget v9, p0, Lcom/android/server/wifi/WifiStateMachine;->mLastSignalLevel:I

    #@de
    if-eq v6, v9, :cond_7

    #@e0
    .line 3202
    invoke-virtual {p0}, Lcom/android/server/wifi/WifiStateMachine;->getCurrentWifiConfiguration()Landroid/net/wifi/WifiConfiguration;

    #@e3
    move-result-object v9

    #@e4
    invoke-direct {p0, v9}, Lcom/android/server/wifi/WifiStateMachine;->updateCapabilities(Landroid/net/wifi/WifiConfiguration;)V

    #@e7
    .line 3203
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    #@ea
    move-result v9

    #@eb
    invoke-direct {p0, v9}, Lcom/android/server/wifi/WifiStateMachine;->sendRssiChangeBroadcast(I)V

    #@ee
    .line 3205
    :cond_7
    iput v6, p0, Lcom/android/server/wifi/WifiStateMachine;->mLastSignalLevel:I

    #@f0
    .line 3211
    .end local v6    # "newSignalLevel":I
    :goto_2
    if-eqz v4, :cond_8

    #@f2
    .line 3212
    iget-object v9, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    #@f4
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    #@f7
    move-result v10

    #@f8
    invoke-virtual {v9, v10}, Landroid/net/wifi/WifiInfo;->setLinkSpeed(I)V

    #@fb
    .line 3214
    :cond_8
    if-eqz v3, :cond_b

    #@fd
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    #@100
    move-result v9

    #@101
    if-lez v9, :cond_b

    #@103
    .line 3215
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    #@106
    move-result v9

    #@107
    invoke-static {v9}, Landroid/net/wifi/ScanResult;->is5GHz(I)Z

    #@10a
    move-result v9

    #@10b
    if-eqz v9, :cond_9

    #@10d
    .line 3216
    iget-object v9, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiConnectionStatistics:Landroid/net/wifi/WifiConnectionStatistics;

    #@10f
    iget v10, v9, Landroid/net/wifi/WifiConnectionStatistics;->num5GhzConnected:I

    #@111
    add-int/lit8 v10, v10, 0x1

    #@113
    iput v10, v9, Landroid/net/wifi/WifiConnectionStatistics;->num5GhzConnected:I

    #@115
    .line 3218
    :cond_9
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    #@118
    move-result v9

    #@119
    invoke-static {v9}, Landroid/net/wifi/ScanResult;->is24GHz(I)Z

    #@11c
    move-result v9

    #@11d
    if-eqz v9, :cond_a

    #@11f
    .line 3219
    iget-object v9, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiConnectionStatistics:Landroid/net/wifi/WifiConnectionStatistics;

    #@121
    iget v10, v9, Landroid/net/wifi/WifiConnectionStatistics;->num24GhzConnected:I

    #@123
    add-int/lit8 v10, v10, 0x1

    #@125
    iput v10, v9, Landroid/net/wifi/WifiConnectionStatistics;->num24GhzConnected:I

    #@127
    .line 3221
    :cond_a
    iget-object v9, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    #@129
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    #@12c
    move-result v10

    #@12d
    invoke-virtual {v9, v10}, Landroid/net/wifi/WifiInfo;->setFrequency(I)V

    #@130
    .line 3223
    :cond_b
    iget-object v9, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiConfigManager:Lcom/android/server/wifi/WifiConfigManager;

    #@132
    iget-object v10, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    #@134
    invoke-virtual {v9, v10}, Lcom/android/server/wifi/WifiConfigManager;->updateConfiguration(Landroid/net/wifi/WifiInfo;)V

    #@137
    .line 3148
    return-void

    #@138
    .line 3207
    :cond_c
    iget-object v9, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    #@13a
    invoke-virtual {v9, v13}, Landroid/net/wifi/WifiInfo;->setRssi(I)V

    #@13d
    .line 3208
    invoke-virtual {p0}, Lcom/android/server/wifi/WifiStateMachine;->getCurrentWifiConfiguration()Landroid/net/wifi/WifiConfiguration;

    #@140
    move-result-object v9

    #@141
    invoke-direct {p0, v9}, Lcom/android/server/wifi/WifiStateMachine;->updateCapabilities(Landroid/net/wifi/WifiConfiguration;)V

    #@144
    goto :goto_2

    #@145
    .line 3168
    .restart local v1    # "line":Ljava/lang/String;
    .restart local v2    # "lines":[Ljava/lang/String;
    .restart local v7    # "prop":[Ljava/lang/String;
    :catch_0
    move-exception v0

    #@146
    .local v0, "e":Ljava/lang/NumberFormatException;
    goto/16 :goto_1
.end method

.method private static getLinkPropertiesSummary(Landroid/net/LinkProperties;)Ljava/lang/String;
    .locals 2
    .param p0, "lp"    # Landroid/net/LinkProperties;

    #@0
    .prologue
    .line 8218
    new-instance v0, Ljava/util/ArrayList;

    #@2
    const/4 v1, 0x6

    #@3
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    #@6
    .line 8219
    .local v0, "attributes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p0}, Landroid/net/LinkProperties;->hasIPv4Address()Z

    #@9
    move-result v1

    #@a
    if-eqz v1, :cond_0

    #@c
    .line 8220
    const-string/jumbo v1, "v4"

    #@f
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@12
    .line 8222
    :cond_0
    invoke-virtual {p0}, Landroid/net/LinkProperties;->hasIPv4DefaultRoute()Z

    #@15
    move-result v1

    #@16
    if-eqz v1, :cond_1

    #@18
    .line 8223
    const-string/jumbo v1, "v4r"

    #@1b
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@1e
    .line 8225
    :cond_1
    invoke-virtual {p0}, Landroid/net/LinkProperties;->hasIPv4DnsServer()Z

    #@21
    move-result v1

    #@22
    if-eqz v1, :cond_2

    #@24
    .line 8226
    const-string/jumbo v1, "v4dns"

    #@27
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@2a
    .line 8228
    :cond_2
    invoke-virtual {p0}, Landroid/net/LinkProperties;->hasGlobalIPv6Address()Z

    #@2d
    move-result v1

    #@2e
    if-eqz v1, :cond_3

    #@30
    .line 8229
    const-string/jumbo v1, "v6"

    #@33
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@36
    .line 8231
    :cond_3
    invoke-virtual {p0}, Landroid/net/LinkProperties;->hasIPv6DefaultRoute()Z

    #@39
    move-result v1

    #@3a
    if-eqz v1, :cond_4

    #@3c
    .line 8232
    const-string/jumbo v1, "v6r"

    #@3f
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@42
    .line 8234
    :cond_4
    invoke-virtual {p0}, Landroid/net/LinkProperties;->hasIPv6DnsServer()Z

    #@45
    move-result v1

    #@46
    if-eqz v1, :cond_5

    #@48
    .line 8235
    const-string/jumbo v1, "v6dns"

    #@4b
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@4e
    .line 8238
    :cond_5
    const-string/jumbo v1, " "

    #@51
    invoke-static {v1, v0}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    #@54
    move-result-object v1

    #@55
    return-object v1
.end method

.method private getNetworkDetailedState()Landroid/net/NetworkInfo$DetailedState;
    .locals 1

    #@0
    .prologue
    .line 3490
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mNetworkInfo:Landroid/net/NetworkInfo;

    #@2
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method private getTargetSsid()Ljava/lang/String;
    .locals 4

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 8270
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiConfigManager:Lcom/android/server/wifi/WifiConfigManager;

    #@3
    iget v2, p0, Lcom/android/server/wifi/WifiStateMachine;->mTargetNetworkId:I

    #@5
    invoke-virtual {v1, v2}, Lcom/android/server/wifi/WifiConfigManager;->getWifiConfiguration(I)Landroid/net/wifi/WifiConfiguration;

    #@8
    move-result-object v0

    #@9
    .line 8271
    .local v0, "currentConfig":Landroid/net/wifi/WifiConfiguration;
    if-eqz v0, :cond_0

    #@b
    .line 8272
    iget-object v1, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    #@d
    return-object v1

    #@e
    .line 8274
    :cond_0
    return-object v3
.end method

.method private getWiFiInfoForUid(I)Landroid/net/wifi/WifiInfo;
    .locals 6
    .param p1, "uid"    # I

    #@0
    .prologue
    .line 3399
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    #@3
    move-result v4

    #@4
    invoke-static {}, Landroid/os/Process;->myUid()I

    #@7
    move-result v5

    #@8
    if-ne v4, v5, :cond_0

    #@a
    .line 3400
    iget-object v4, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    #@c
    return-object v4

    #@d
    .line 3403
    :cond_0
    new-instance v3, Landroid/net/wifi/WifiInfo;

    #@f
    iget-object v4, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    #@11
    invoke-direct {v3, v4}, Landroid/net/wifi/WifiInfo;-><init>(Landroid/net/wifi/WifiInfo;)V

    #@14
    .line 3404
    .local v3, "result":Landroid/net/wifi/WifiInfo;
    const-string/jumbo v4, "02:00:00:00:00:00"

    #@17
    invoke-virtual {v3, v4}, Landroid/net/wifi/WifiInfo;->setMacAddress(Ljava/lang/String;)V

    #@1a
    .line 3406
    iget-object v4, p0, Lcom/android/server/wifi/WifiStateMachine;->mFacade:Lcom/android/server/wifi/FrameworkFacade;

    #@1c
    const-string/jumbo v5, "package"

    #@1f
    invoke-virtual {v4, v5}, Lcom/android/server/wifi/FrameworkFacade;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    #@22
    move-result-object v0

    #@23
    .line 3407
    .local v0, "binder":Landroid/os/IBinder;
    invoke-static {v0}, Landroid/content/pm/IPackageManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/pm/IPackageManager;

    #@26
    move-result-object v2

    #@27
    .line 3410
    .local v2, "packageManager":Landroid/content/pm/IPackageManager;
    :try_start_0
    const-string/jumbo v4, "android.permission.LOCAL_MAC_ADDRESS"

    #@2a
    invoke-interface {v2, v4, p1}, Landroid/content/pm/IPackageManager;->checkUidPermission(Ljava/lang/String;I)I

    #@2d
    move-result v4

    #@2e
    if-nez v4, :cond_1

    #@30
    .line 3412
    iget-object v4, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    #@32
    invoke-virtual {v4}, Landroid/net/wifi/WifiInfo;->getMacAddress()Ljava/lang/String;

    #@35
    move-result-object v4

    #@36
    invoke-virtual {v3, v4}, Landroid/net/wifi/WifiInfo;->setMacAddress(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@39
    .line 3418
    :cond_1
    :goto_0
    return-object v3

    #@3a
    .line 3414
    :catch_0
    move-exception v1

    #@3b
    .line 3415
    .local v1, "e":Landroid/os/RemoteException;
    const-string/jumbo v4, "WifiStateMachine"

    #@3e
    const-string/jumbo v5, "Error checking receiver permission"

    #@41
    invoke-static {v4, v5, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@44
    goto :goto_0
.end method

.method private handleIPv4Failure()V
    .locals 4

    #@0
    .prologue
    const/4 v3, 0x4

    #@1
    .line 3738
    iget-object v2, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiLogger:Lcom/android/server/wifi/BaseWifiLogger;

    #@3
    invoke-virtual {v2, v3}, Lcom/android/server/wifi/BaseWifiLogger;->captureBugReportData(I)V

    #@6
    .line 3739
    sget-boolean v2, Lcom/android/server/wifi/WifiStateMachine;->DBG:Z

    #@8
    if-eqz v2, :cond_1

    #@a
    .line 3740
    const/4 v1, -0x1

    #@b
    .line 3741
    .local v1, "count":I
    invoke-virtual {p0}, Lcom/android/server/wifi/WifiStateMachine;->getCurrentWifiConfiguration()Landroid/net/wifi/WifiConfiguration;

    #@e
    move-result-object v0

    #@f
    .line 3742
    .local v0, "config":Landroid/net/wifi/WifiConfiguration;
    if-eqz v0, :cond_0

    #@11
    .line 3743
    invoke-virtual {v0}, Landroid/net/wifi/WifiConfiguration;->getNetworkSelectionStatus()Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;

    #@14
    move-result-object v2

    #@15
    invoke-virtual {v2, v3}, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->getDisableReasonCounter(I)I

    #@18
    move-result v1

    #@19
    .line 3746
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    #@1b
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@1e
    const-string/jumbo v3, "DHCP failure count="

    #@21
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@24
    move-result-object v2

    #@25
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@28
    move-result-object v2

    #@29
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2c
    move-result-object v2

    #@2d
    invoke-virtual {p0, v2}, Lcom/android/server/wifi/WifiStateMachine;->log(Ljava/lang/String;)V

    #@30
    .line 3749
    .end local v0    # "config":Landroid/net/wifi/WifiConfiguration;
    .end local v1    # "count":I
    :cond_1
    const/16 v2, 0xa

    #@32
    .line 3750
    const/4 v3, 0x2

    #@33
    .line 3748
    invoke-direct {p0, v2, v3}, Lcom/android/server/wifi/WifiStateMachine;->reportConnectionAttemptEnd(II)V

    #@36
    .line 3751
    iget-object v3, p0, Lcom/android/server/wifi/WifiStateMachine;->mDhcpResultsLock:Ljava/lang/Object;

    #@38
    monitor-enter v3

    #@39
    .line 3752
    :try_start_0
    iget-object v2, p0, Lcom/android/server/wifi/WifiStateMachine;->mDhcpResults:Landroid/net/DhcpResults;

    #@3b
    if-eqz v2, :cond_2

    #@3d
    .line 3753
    iget-object v2, p0, Lcom/android/server/wifi/WifiStateMachine;->mDhcpResults:Landroid/net/DhcpResults;

    #@3f
    invoke-virtual {v2}, Landroid/net/DhcpResults;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@42
    :cond_2
    monitor-exit v3

    #@43
    .line 3756
    sget-boolean v2, Lcom/android/server/wifi/WifiStateMachine;->DBG:Z

    #@45
    if-eqz v2, :cond_3

    #@47
    .line 3757
    const-string/jumbo v2, "handleIPv4Failure"

    #@4a
    invoke-virtual {p0, v2}, Lcom/android/server/wifi/WifiStateMachine;->logd(Ljava/lang/String;)V

    #@4d
    .line 3735
    :cond_3
    return-void

    #@4e
    .line 3751
    :catchall_0
    move-exception v2

    #@4f
    monitor-exit v3

    #@50
    throw v2
.end method

.method private handleIPv4Success(Landroid/net/DhcpResults;)V
    .locals 5
    .param p1, "dhcpResults"    # Landroid/net/DhcpResults;

    #@0
    .prologue
    .line 3680
    sget-boolean v3, Lcom/android/server/wifi/WifiStateMachine;->DBG:Z

    #@2
    if-eqz v3, :cond_0

    #@4
    .line 3681
    new-instance v3, Ljava/lang/StringBuilder;

    #@6
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@9
    const-string/jumbo v4, "handleIPv4Success <"

    #@c
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@f
    move-result-object v3

    #@10
    invoke-virtual {p1}, Landroid/net/DhcpResults;->toString()Ljava/lang/String;

    #@13
    move-result-object v4

    #@14
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@17
    move-result-object v3

    #@18
    const-string/jumbo v4, ">"

    #@1b
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1e
    move-result-object v3

    #@1f
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@22
    move-result-object v3

    #@23
    invoke-virtual {p0, v3}, Lcom/android/server/wifi/WifiStateMachine;->logd(Ljava/lang/String;)V

    #@26
    .line 3682
    new-instance v3, Ljava/lang/StringBuilder;

    #@28
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@2b
    const-string/jumbo v4, "link address "

    #@2e
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@31
    move-result-object v3

    #@32
    iget-object v4, p1, Landroid/net/DhcpResults;->ipAddress:Landroid/net/LinkAddress;

    #@34
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@37
    move-result-object v3

    #@38
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3b
    move-result-object v3

    #@3c
    invoke-virtual {p0, v3}, Lcom/android/server/wifi/WifiStateMachine;->logd(Ljava/lang/String;)V

    #@3f
    .line 3686
    :cond_0
    iget-object v4, p0, Lcom/android/server/wifi/WifiStateMachine;->mDhcpResultsLock:Ljava/lang/Object;

    #@41
    monitor-enter v4

    #@42
    .line 3687
    :try_start_0
    iput-object p1, p0, Lcom/android/server/wifi/WifiStateMachine;->mDhcpResults:Landroid/net/DhcpResults;

    #@44
    .line 3688
    iget-object v3, p1, Landroid/net/DhcpResults;->ipAddress:Landroid/net/LinkAddress;

    #@46
    invoke-virtual {v3}, Landroid/net/LinkAddress;->getAddress()Ljava/net/InetAddress;

    #@49
    move-result-object v0

    #@4a
    check-cast v0, Ljava/net/Inet4Address;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@4c
    .local v0, "addr":Ljava/net/Inet4Address;
    monitor-exit v4

    #@4d
    .line 3691
    invoke-virtual {p0}, Lcom/android/server/wifi/WifiStateMachine;->isRoaming()Z

    #@50
    move-result v3

    #@51
    if-eqz v3, :cond_1

    #@53
    .line 3692
    iget-object v3, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    #@55
    invoke-virtual {v3}, Landroid/net/wifi/WifiInfo;->getIpAddress()I

    #@58
    move-result v2

    #@59
    .line 3693
    .local v2, "previousAddress":I
    invoke-static {v0}, Landroid/net/NetworkUtils;->inetAddressToInt(Ljava/net/Inet4Address;)I

    #@5c
    move-result v1

    #@5d
    .line 3694
    .local v1, "newAddress":I
    if-eq v2, v1, :cond_1

    #@5f
    .line 3695
    new-instance v3, Ljava/lang/StringBuilder;

    #@61
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@64
    const-string/jumbo v4, "handleIPv4Success, roaming and address changed"

    #@67
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6a
    move-result-object v3

    #@6b
    .line 3696
    iget-object v4, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    #@6d
    .line 3695
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@70
    move-result-object v3

    #@71
    .line 3696
    const-string/jumbo v4, " got: "

    #@74
    .line 3695
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@77
    move-result-object v3

    #@78
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@7b
    move-result-object v3

    #@7c
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@7f
    move-result-object v3

    #@80
    invoke-virtual {p0, v3}, Lcom/android/server/wifi/WifiStateMachine;->logd(Ljava/lang/String;)V

    #@83
    .line 3699
    .end local v1    # "newAddress":I
    .end local v2    # "previousAddress":I
    :cond_1
    iget-object v3, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    #@85
    invoke-virtual {v3, v0}, Landroid/net/wifi/WifiInfo;->setInetAddress(Ljava/net/InetAddress;)V

    #@88
    .line 3700
    iget-object v3, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    #@8a
    invoke-virtual {v3}, Landroid/net/wifi/WifiInfo;->getMeteredHint()Z

    #@8d
    move-result v3

    #@8e
    if-nez v3, :cond_2

    #@90
    .line 3701
    iget-object v3, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    #@92
    invoke-virtual {p1}, Landroid/net/DhcpResults;->hasMeteredHint()Z

    #@95
    move-result v4

    #@96
    invoke-virtual {v3, v4}, Landroid/net/wifi/WifiInfo;->setMeteredHint(Z)V

    #@99
    .line 3702
    invoke-virtual {p0}, Lcom/android/server/wifi/WifiStateMachine;->getCurrentWifiConfiguration()Landroid/net/wifi/WifiConfiguration;

    #@9c
    move-result-object v3

    #@9d
    invoke-direct {p0, v3}, Lcom/android/server/wifi/WifiStateMachine;->updateCapabilities(Landroid/net/wifi/WifiConfiguration;)V

    #@a0
    .line 3679
    :cond_2
    return-void

    #@a1
    .line 3686
    .end local v0    # "addr":Ljava/net/Inet4Address;
    :catchall_0
    move-exception v3

    #@a2
    monitor-exit v4

    #@a3
    throw v3
.end method

.method private handleIpConfigurationLost()V
    .locals 3

    #@0
    .prologue
    .line 3762
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    #@2
    const/4 v1, 0x0

    #@3
    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiInfo;->setInetAddress(Ljava/net/InetAddress;)V

    #@6
    .line 3763
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    #@8
    const/4 v1, 0x0

    #@9
    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiInfo;->setMeteredHint(Z)V

    #@c
    .line 3765
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiConfigManager:Lcom/android/server/wifi/WifiConfigManager;

    #@e
    iget v1, p0, Lcom/android/server/wifi/WifiStateMachine;->mLastNetworkId:I

    #@10
    .line 3766
    const/4 v2, 0x4

    #@11
    .line 3765
    invoke-virtual {v0, v1, v2}, Lcom/android/server/wifi/WifiConfigManager;->updateNetworkSelectionStatus(II)Z

    #@14
    .line 3771
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    #@16
    invoke-virtual {v0}, Lcom/android/server/wifi/WifiNative;->disconnect()Z

    #@19
    .line 3761
    return-void
.end method

.method private handleIpReachabilityLost()V
    .locals 2

    #@0
    .prologue
    .line 3776
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    #@2
    const/4 v1, 0x0

    #@3
    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiInfo;->setInetAddress(Ljava/net/InetAddress;)V

    #@6
    .line 3777
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    #@8
    const/4 v1, 0x0

    #@9
    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiInfo;->setMeteredHint(Z)V

    #@c
    .line 3782
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    #@e
    invoke-virtual {v0}, Lcom/android/server/wifi/WifiNative;->disconnect()Z

    #@11
    .line 3775
    return-void
.end method

.method private handleNetworkDisconnect()V
    .locals 5

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    const/4 v3, 0x0

    #@2
    .line 3557
    sget-boolean v0, Lcom/android/server/wifi/WifiStateMachine;->DBG:Z

    #@4
    if-eqz v0, :cond_0

    #@6
    new-instance v0, Ljava/lang/StringBuilder;

    #@8
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@b
    const-string/jumbo v1, "handleNetworkDisconnect: Stopping DHCP and clearing IP stack:"

    #@e
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@11
    move-result-object v0

    #@12
    .line 3558
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    #@15
    move-result-object v1

    #@16
    invoke-virtual {v1}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    #@19
    move-result-object v1

    #@1a
    const/4 v2, 0x2

    #@1b
    aget-object v1, v1, v2

    #@1d
    invoke-virtual {v1}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    #@20
    move-result-object v1

    #@21
    .line 3557
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@24
    move-result-object v0

    #@25
    .line 3559
    const-string/jumbo v1, " - "

    #@28
    .line 3557
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2b
    move-result-object v0

    #@2c
    .line 3559
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    #@2f
    move-result-object v1

    #@30
    invoke-virtual {v1}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    #@33
    move-result-object v1

    #@34
    const/4 v2, 0x3

    #@35
    aget-object v1, v1, v2

    #@37
    invoke-virtual {v1}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    #@3a
    move-result-object v1

    #@3b
    .line 3557
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3e
    move-result-object v0

    #@3f
    .line 3560
    const-string/jumbo v1, " - "

    #@42
    .line 3557
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@45
    move-result-object v0

    #@46
    .line 3560
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    #@49
    move-result-object v1

    #@4a
    invoke-virtual {v1}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    #@4d
    move-result-object v1

    #@4e
    const/4 v2, 0x4

    #@4f
    aget-object v1, v1, v2

    #@51
    invoke-virtual {v1}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    #@54
    move-result-object v1

    #@55
    .line 3557
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@58
    move-result-object v0

    #@59
    .line 3561
    const-string/jumbo v1, " - "

    #@5c
    .line 3557
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5f
    move-result-object v0

    #@60
    .line 3561
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    #@63
    move-result-object v1

    #@64
    invoke-virtual {v1}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    #@67
    move-result-object v1

    #@68
    const/4 v2, 0x5

    #@69
    aget-object v1, v1, v2

    #@6b
    invoke-virtual {v1}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    #@6e
    move-result-object v1

    #@6f
    .line 3557
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@72
    move-result-object v0

    #@73
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@76
    move-result-object v0

    #@77
    invoke-virtual {p0, v0}, Lcom/android/server/wifi/WifiStateMachine;->log(Ljava/lang/String;)V

    #@7a
    .line 3563
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/wifi/WifiStateMachine;->stopRssiMonitoringOffload()I

    #@7d
    .line 3565
    const-string/jumbo v0, "handleNetworkDisconnect"

    #@80
    invoke-virtual {p0, v0}, Lcom/android/server/wifi/WifiStateMachine;->clearCurrentConfigBSSID(Ljava/lang/String;)V

    #@83
    .line 3567
    invoke-direct {p0}, Lcom/android/server/wifi/WifiStateMachine;->stopIpManager()V

    #@86
    .line 3570
    iput-object v3, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiScoreReport:Lcom/android/server/wifi/WifiScoreReport;

    #@88
    .line 3571
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    #@8a
    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->reset()V

    #@8d
    .line 3572
    iput-boolean v4, p0, Lcom/android/server/wifi/WifiStateMachine;->linkDebouncing:Z

    #@8f
    .line 3574
    iput-boolean v4, p0, Lcom/android/server/wifi/WifiStateMachine;->mAutoRoaming:Z

    #@91
    .line 3576
    sget-object v0, Landroid/net/NetworkInfo$DetailedState;->DISCONNECTED:Landroid/net/NetworkInfo$DetailedState;

    #@93
    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiStateMachine;->setNetworkDetailedState(Landroid/net/NetworkInfo$DetailedState;)Z

    #@96
    .line 3577
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mNetworkAgent:Lcom/android/server/wifi/WifiStateMachine$WifiNetworkAgent;

    #@98
    if-eqz v0, :cond_1

    #@9a
    .line 3578
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mNetworkAgent:Lcom/android/server/wifi/WifiStateMachine$WifiNetworkAgent;

    #@9c
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine;->mNetworkInfo:Landroid/net/NetworkInfo;

    #@9e
    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiStateMachine$WifiNetworkAgent;->sendNetworkInfo(Landroid/net/NetworkInfo;)V

    #@a1
    .line 3579
    iput-object v3, p0, Lcom/android/server/wifi/WifiStateMachine;->mNetworkAgent:Lcom/android/server/wifi/WifiStateMachine$WifiNetworkAgent;

    #@a3
    .line 3581
    :cond_1
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiConfigManager:Lcom/android/server/wifi/WifiConfigManager;

    #@a5
    iget v1, p0, Lcom/android/server/wifi/WifiStateMachine;->mLastNetworkId:I

    #@a7
    sget-object v2, Landroid/net/NetworkInfo$DetailedState;->DISCONNECTED:Landroid/net/NetworkInfo$DetailedState;

    #@a9
    invoke-virtual {v0, v1, v2}, Lcom/android/server/wifi/WifiConfigManager;->updateStatus(ILandroid/net/NetworkInfo$DetailedState;)V

    #@ac
    .line 3584
    invoke-direct {p0}, Lcom/android/server/wifi/WifiStateMachine;->clearLinkProperties()V

    #@af
    .line 3587
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mLastBssid:Ljava/lang/String;

    #@b1
    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiStateMachine;->sendNetworkStateChangeBroadcast(Ljava/lang/String;)V

    #@b4
    .line 3590
    iget v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mLastNetworkId:I

    #@b6
    const-string/jumbo v1, "any"

    #@b9
    invoke-virtual {p0, v0, v1}, Lcom/android/server/wifi/WifiStateMachine;->autoRoamSetBSSID(ILjava/lang/String;)V

    #@bc
    .line 3591
    iput-object v3, p0, Lcom/android/server/wifi/WifiStateMachine;->mLastBssid:Ljava/lang/String;

    #@be
    .line 3592
    invoke-virtual {p0}, Lcom/android/server/wifi/WifiStateMachine;->registerDisconnected()V

    #@c1
    .line 3593
    const/4 v0, -0x1

    #@c2
    iput v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mLastNetworkId:I

    #@c4
    .line 3556
    return-void
.end method

.method private handleScanRequest(Landroid/os/Message;)V
    .locals 12
    .param p1, "message"    # Landroid/os/Message;

    #@0
    .prologue
    const v11, 0x20047

    #@3
    const/4 v10, 0x0

    #@4
    .line 1616
    const/4 v6, 0x0

    #@5
    .line 1617
    .local v6, "settings":Landroid/net/wifi/ScanSettings;
    const/4 v7, 0x0

    #@6
    .line 1620
    .local v7, "workSource":Landroid/os/WorkSource;
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@8
    check-cast v0, Landroid/os/Bundle;

    #@a
    .line 1622
    .local v0, "bundle":Landroid/os/Bundle;
    if-eqz v0, :cond_0

    #@c
    .line 1623
    const-string/jumbo v8, "customized_scan_settings"

    #@f
    invoke-virtual {v0, v8}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    #@12
    move-result-object v6

    #@13
    .end local v6    # "settings":Landroid/net/wifi/ScanSettings;
    check-cast v6, Landroid/net/wifi/ScanSettings;

    #@15
    .line 1624
    .local v6, "settings":Landroid/net/wifi/ScanSettings;
    const-string/jumbo v8, "customized_scan_worksource"

    #@18
    invoke-virtual {v0, v8}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    #@1b
    move-result-object v7

    #@1c
    .end local v7    # "workSource":Landroid/os/WorkSource;
    check-cast v7, Landroid/os/WorkSource;

    #@1e
    .line 1627
    .end local v6    # "settings":Landroid/net/wifi/ScanSettings;
    :cond_0
    const/4 v3, 0x0

    #@1f
    .line 1628
    .local v3, "freqs":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    if-eqz v6, :cond_1

    #@21
    iget-object v8, v6, Landroid/net/wifi/ScanSettings;->channelSet:Ljava/util/Collection;

    #@23
    if-eqz v8, :cond_1

    #@25
    .line 1629
    new-instance v3, Ljava/util/HashSet;

    #@27
    .end local v3    # "freqs":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    #@2a
    .line 1630
    .local v3, "freqs":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    iget-object v8, v6, Landroid/net/wifi/ScanSettings;->channelSet:Ljava/util/Collection;

    #@2c
    invoke-interface {v8}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@2f
    move-result-object v2

    #@30
    .local v2, "channel$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    #@33
    move-result v8

    #@34
    if-eqz v8, :cond_1

    #@36
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@39
    move-result-object v1

    #@3a
    check-cast v1, Landroid/net/wifi/WifiChannel;

    #@3c
    .line 1631
    .local v1, "channel":Landroid/net/wifi/WifiChannel;
    iget v8, v1, Landroid/net/wifi/WifiChannel;->freqMHz:I

    #@3e
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@41
    move-result-object v8

    #@42
    invoke-interface {v3, v8}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    #@45
    goto :goto_0

    #@46
    .line 1636
    .end local v1    # "channel":Landroid/net/wifi/WifiChannel;
    .end local v2    # "channel$iterator":Ljava/util/Iterator;
    .end local v3    # "freqs":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    :cond_1
    iget-object v8, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiConfigManager:Lcom/android/server/wifi/WifiConfigManager;

    #@48
    invoke-virtual {v8}, Lcom/android/server/wifi/WifiConfigManager;->getHiddenConfiguredNetworkIds()Ljava/util/Set;

    #@4b
    move-result-object v4

    #@4c
    .line 1639
    .local v4, "hiddenNetworkIds":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    invoke-direct {p0, v3, v4, v7}, Lcom/android/server/wifi/WifiStateMachine;->startScanNative(Ljava/util/Set;Ljava/util/Set;Landroid/os/WorkSource;)Z

    #@4f
    move-result v8

    #@50
    if-eqz v8, :cond_4

    #@52
    .line 1641
    if-nez v3, :cond_2

    #@54
    .line 1642
    iget-object v8, p0, Lcom/android/server/wifi/WifiStateMachine;->mBufferedScanMsg:Ljava/util/Queue;

    #@56
    invoke-interface {v8}, Ljava/util/Queue;->clear()V

    #@59
    .line 1643
    :cond_2
    sget v8, Lcom/android/server/wifi/WifiStateMachine;->MESSAGE_HANDLING_STATUS_OK:I

    #@5b
    iput v8, p0, Lcom/android/server/wifi/WifiStateMachine;->messageHandlingStatus:I

    #@5d
    .line 1644
    if-eqz v7, :cond_3

    #@5f
    .line 1647
    const/4 v8, 0x1

    #@60
    iput-boolean v8, p0, Lcom/android/server/wifi/WifiStateMachine;->mSendScanResultsBroadcast:Z

    #@62
    .line 1649
    :cond_3
    return-void

    #@63
    .line 1654
    :cond_4
    iget-boolean v8, p0, Lcom/android/server/wifi/WifiStateMachine;->mIsScanOngoing:Z

    #@65
    if-nez v8, :cond_6

    #@67
    .line 1658
    iget-object v8, p0, Lcom/android/server/wifi/WifiStateMachine;->mBufferedScanMsg:Ljava/util/Queue;

    #@69
    invoke-interface {v8}, Ljava/util/Queue;->size()I

    #@6c
    move-result v8

    #@6d
    if-lez v8, :cond_5

    #@6f
    .line 1659
    iget-object v8, p0, Lcom/android/server/wifi/WifiStateMachine;->mBufferedScanMsg:Ljava/util/Queue;

    #@71
    invoke-interface {v8}, Ljava/util/Queue;->remove()Ljava/lang/Object;

    #@74
    move-result-object v8

    #@75
    check-cast v8, Landroid/os/Message;

    #@77
    invoke-virtual {p0, v8}, Lcom/android/server/wifi/WifiStateMachine;->sendMessage(Landroid/os/Message;)V

    #@7a
    .line 1661
    :cond_5
    sget v8, Lcom/android/server/wifi/WifiStateMachine;->MESSAGE_HANDLING_STATUS_DISCARD:I

    #@7c
    iput v8, p0, Lcom/android/server/wifi/WifiStateMachine;->messageHandlingStatus:I

    #@7e
    .line 1615
    :goto_1
    return-void

    #@7f
    .line 1662
    :cond_6
    iget-boolean v8, p0, Lcom/android/server/wifi/WifiStateMachine;->mIsFullScanOngoing:Z

    #@81
    if-nez v8, :cond_9

    #@83
    .line 1665
    if-nez v3, :cond_7

    #@85
    .line 1666
    iget-object v8, p0, Lcom/android/server/wifi/WifiStateMachine;->mBufferedScanMsg:Ljava/util/Queue;

    #@87
    invoke-interface {v8}, Ljava/util/Queue;->clear()V

    #@8a
    .line 1667
    :cond_7
    iget-object v8, p0, Lcom/android/server/wifi/WifiStateMachine;->mBufferedScanMsg:Ljava/util/Queue;

    #@8c
    invoke-interface {v8}, Ljava/util/Queue;->size()I

    #@8f
    move-result v8

    #@90
    const/16 v9, 0xa

    #@92
    if-ge v8, v9, :cond_8

    #@94
    .line 1669
    iget v8, p1, Landroid/os/Message;->arg1:I

    #@96
    iget v9, p1, Landroid/os/Message;->arg2:I

    #@98
    .line 1668
    invoke-virtual {p0, v11, v8, v9, v0}, Lcom/android/server/wifi/WifiStateMachine;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    #@9b
    move-result-object v5

    #@9c
    .line 1670
    .local v5, "msg":Landroid/os/Message;
    iget-object v8, p0, Lcom/android/server/wifi/WifiStateMachine;->mBufferedScanMsg:Ljava/util/Queue;

    #@9e
    invoke-interface {v8, v5}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    #@a1
    .line 1680
    :goto_2
    sget v8, Lcom/android/server/wifi/WifiStateMachine;->MESSAGE_HANDLING_STATUS_LOOPED:I

    #@a3
    iput v8, p0, Lcom/android/server/wifi/WifiStateMachine;->messageHandlingStatus:I

    #@a5
    goto :goto_1

    #@a6
    .line 1673
    .end local v5    # "msg":Landroid/os/Message;
    :cond_8
    new-instance v0, Landroid/os/Bundle;

    #@a8
    .end local v0    # "bundle":Landroid/os/Bundle;
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    #@ab
    .line 1674
    .restart local v0    # "bundle":Landroid/os/Bundle;
    const-string/jumbo v8, "customized_scan_settings"

    #@ae
    invoke-virtual {v0, v8, v10}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    #@b1
    .line 1675
    const-string/jumbo v8, "customized_scan_worksource"

    #@b4
    invoke-virtual {v0, v8, v7}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    #@b7
    .line 1676
    iget v8, p1, Landroid/os/Message;->arg1:I

    #@b9
    iget v9, p1, Landroid/os/Message;->arg2:I

    #@bb
    invoke-virtual {p0, v11, v8, v9, v0}, Lcom/android/server/wifi/WifiStateMachine;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    #@be
    move-result-object v5

    #@bf
    .line 1677
    .restart local v5    # "msg":Landroid/os/Message;
    iget-object v8, p0, Lcom/android/server/wifi/WifiStateMachine;->mBufferedScanMsg:Ljava/util/Queue;

    #@c1
    invoke-interface {v8}, Ljava/util/Queue;->clear()V

    #@c4
    .line 1678
    iget-object v8, p0, Lcom/android/server/wifi/WifiStateMachine;->mBufferedScanMsg:Ljava/util/Queue;

    #@c6
    invoke-interface {v8, v5}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    #@c9
    goto :goto_2

    #@ca
    .line 1683
    .end local v5    # "msg":Landroid/os/Message;
    :cond_9
    sget v8, Lcom/android/server/wifi/WifiStateMachine;->MESSAGE_HANDLING_STATUS_FAIL:I

    #@cc
    iput v8, p0, Lcom/android/server/wifi/WifiStateMachine;->messageHandlingStatus:I

    #@ce
    goto :goto_1
.end method

.method private handleScreenStateChanged(Z)V
    .locals 7
    .param p1, "screenOn"    # Z

    #@0
    .prologue
    const v6, 0x20056

    #@3
    const/4 v5, 0x1

    #@4
    const/4 v4, 0x0

    #@5
    .line 2923
    iput-boolean p1, p0, Lcom/android/server/wifi/WifiStateMachine;->mScreenOn:Z

    #@7
    .line 2924
    sget-boolean v1, Lcom/android/server/wifi/WifiStateMachine;->DBG:Z

    #@9
    if-eqz v1, :cond_0

    #@b
    .line 2925
    new-instance v1, Ljava/lang/StringBuilder;

    #@d
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@10
    const-string/jumbo v2, " handleScreenStateChanged Enter: screenOn="

    #@13
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@16
    move-result-object v1

    #@17
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@1a
    move-result-object v1

    #@1b
    .line 2926
    const-string/jumbo v2, " mUserWantsSuspendOpt="

    #@1e
    .line 2925
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@21
    move-result-object v1

    #@22
    .line 2926
    iget-object v2, p0, Lcom/android/server/wifi/WifiStateMachine;->mUserWantsSuspendOpt:Ljava/util/concurrent/atomic/AtomicBoolean;

    #@24
    .line 2925
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@27
    move-result-object v1

    #@28
    .line 2927
    const-string/jumbo v2, " state "

    #@2b
    .line 2925
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2e
    move-result-object v1

    #@2f
    .line 2927
    invoke-virtual {p0}, Lcom/android/server/wifi/WifiStateMachine;->getCurrentState()Lcom/android/internal/util/IState;

    #@32
    move-result-object v2

    #@33
    invoke-interface {v2}, Lcom/android/internal/util/IState;->getName()Ljava/lang/String;

    #@36
    move-result-object v2

    #@37
    .line 2925
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3a
    move-result-object v1

    #@3b
    .line 2928
    const-string/jumbo v2, " suppState:"

    #@3e
    .line 2925
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@41
    move-result-object v1

    #@42
    .line 2928
    iget-object v2, p0, Lcom/android/server/wifi/WifiStateMachine;->mSupplicantStateTracker:Lcom/android/server/wifi/SupplicantStateTracker;

    #@44
    invoke-virtual {v2}, Lcom/android/server/wifi/SupplicantStateTracker;->getSupplicantStateName()Ljava/lang/String;

    #@47
    move-result-object v2

    #@48
    .line 2925
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4b
    move-result-object v1

    #@4c
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@4f
    move-result-object v1

    #@50
    invoke-virtual {p0, v1}, Lcom/android/server/wifi/WifiStateMachine;->logd(Ljava/lang/String;)V

    #@53
    .line 2930
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/WifiStateMachine;->enableRssiPolling(Z)V

    #@56
    .line 2931
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine;->mUserWantsSuspendOpt:Ljava/util/concurrent/atomic/AtomicBoolean;

    #@58
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    #@5b
    move-result v1

    #@5c
    if-eqz v1, :cond_1

    #@5e
    .line 2932
    const/4 v0, 0x0

    #@5f
    .line 2933
    .local v0, "shouldReleaseWakeLock":I
    if-eqz p1, :cond_4

    #@61
    .line 2934
    invoke-virtual {p0, v6, v4, v0}, Lcom/android/server/wifi/WifiStateMachine;->sendMessage(III)V

    #@64
    .line 2944
    .end local v0    # "shouldReleaseWakeLock":I
    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine;->mScreenBroadcastReceived:Ljava/util/concurrent/atomic/AtomicBoolean;

    #@66
    invoke-virtual {v1, v5}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    #@69
    .line 2946
    invoke-virtual {p0, v4}, Lcom/android/server/wifi/WifiStateMachine;->getWifiLinkLayerStats(Z)Landroid/net/wifi/WifiLinkLayerStats;

    #@6c
    .line 2947
    iget v1, p0, Lcom/android/server/wifi/WifiStateMachine;->mOnTime:I

    #@6e
    iput v1, p0, Lcom/android/server/wifi/WifiStateMachine;->mOnTimeScreenStateChange:I

    #@70
    .line 2948
    iget-wide v2, p0, Lcom/android/server/wifi/WifiStateMachine;->lastLinkLayerStatsUpdate:J

    #@72
    iput-wide v2, p0, Lcom/android/server/wifi/WifiStateMachine;->lastScreenStateChangeTimeStamp:J

    #@74
    .line 2950
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiMetrics:Lcom/android/server/wifi/WifiMetrics;

    #@76
    invoke-virtual {v1, p1}, Lcom/android/server/wifi/WifiMetrics;->setScreenState(Z)V

    #@79
    .line 2952
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiConnectivityManager:Lcom/android/server/wifi/WifiConnectivityManager;

    #@7b
    if-eqz v1, :cond_2

    #@7d
    .line 2953
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiConnectivityManager:Lcom/android/server/wifi/WifiConnectivityManager;

    #@7f
    invoke-virtual {v1, p1}, Lcom/android/server/wifi/WifiConnectivityManager;->handleScreenStateChanged(Z)V

    #@82
    .line 2956
    :cond_2
    sget-boolean v1, Lcom/android/server/wifi/WifiStateMachine;->DBG:Z

    #@84
    if-eqz v1, :cond_3

    #@86
    new-instance v1, Ljava/lang/StringBuilder;

    #@88
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@8b
    const-string/jumbo v2, "handleScreenStateChanged Exit: "

    #@8e
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@91
    move-result-object v1

    #@92
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@95
    move-result-object v1

    #@96
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@99
    move-result-object v1

    #@9a
    invoke-virtual {p0, v1}, Lcom/android/server/wifi/WifiStateMachine;->log(Ljava/lang/String;)V

    #@9d
    .line 2922
    :cond_3
    return-void

    #@9e
    .line 2936
    .restart local v0    # "shouldReleaseWakeLock":I
    :cond_4
    invoke-virtual {p0}, Lcom/android/server/wifi/WifiStateMachine;->isConnected()Z

    #@a1
    move-result v1

    #@a2
    if-eqz v1, :cond_5

    #@a4
    .line 2938
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine;->mSuspendWakeLock:Landroid/os/PowerManager$WakeLock;

    #@a6
    const-wide/16 v2, 0x7d0

    #@a8
    invoke-virtual {v1, v2, v3}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    #@ab
    .line 2939
    const/4 v0, 0x1

    #@ac
    .line 2941
    :cond_5
    invoke-virtual {p0, v6, v5, v0}, Lcom/android/server/wifi/WifiStateMachine;->sendMessage(III)V

    #@af
    goto :goto_0
.end method

.method private handleSuccessfulIpConfiguration()V
    .locals 4

    #@0
    .prologue
    .line 3707
    const/4 v2, -0x1

    #@1
    iput v2, p0, Lcom/android/server/wifi/WifiStateMachine;->mLastSignalLevel:I

    #@3
    .line 3708
    invoke-virtual {p0}, Lcom/android/server/wifi/WifiStateMachine;->getCurrentWifiConfiguration()Landroid/net/wifi/WifiConfiguration;

    #@6
    move-result-object v0

    #@7
    .line 3709
    .local v0, "c":Landroid/net/wifi/WifiConfiguration;
    if-eqz v0, :cond_0

    #@9
    .line 3711
    invoke-virtual {v0}, Landroid/net/wifi/WifiConfiguration;->getNetworkSelectionStatus()Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;

    #@c
    move-result-object v2

    #@d
    .line 3712
    const/4 v3, 0x4

    #@e
    .line 3711
    invoke-virtual {v2, v3}, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->clearDisableReasonCounter(I)V

    #@11
    .line 3715
    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiStateMachine;->updateCapabilities(Landroid/net/wifi/WifiConfiguration;)V

    #@14
    .line 3717
    :cond_0
    if-eqz v0, :cond_1

    #@16
    .line 3718
    invoke-virtual {p0}, Lcom/android/server/wifi/WifiStateMachine;->getCurrentScanResult()Landroid/net/wifi/ScanResult;

    #@19
    move-result-object v1

    #@1a
    .line 3719
    .local v1, "result":Landroid/net/wifi/ScanResult;
    if-nez v1, :cond_2

    #@1c
    .line 3720
    new-instance v2, Ljava/lang/StringBuilder;

    #@1e
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@21
    const-string/jumbo v3, "WifiStateMachine: handleSuccessfulIpConfiguration and no scan results"

    #@24
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@27
    move-result-object v2

    #@28
    .line 3721
    invoke-virtual {v0}, Landroid/net/wifi/WifiConfiguration;->configKey()Ljava/lang/String;

    #@2b
    move-result-object v3

    #@2c
    .line 3720
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2f
    move-result-object v2

    #@30
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@33
    move-result-object v2

    #@34
    invoke-virtual {p0, v2}, Lcom/android/server/wifi/WifiStateMachine;->logd(Ljava/lang/String;)V

    #@37
    .line 3706
    .end local v1    # "result":Landroid/net/wifi/ScanResult;
    :cond_1
    :goto_0
    return-void

    #@38
    .line 3724
    .restart local v1    # "result":Landroid/net/wifi/ScanResult;
    :cond_2
    const/4 v2, 0x0

    #@39
    iput v2, v1, Landroid/net/wifi/ScanResult;->numIpConfigFailures:I

    #@3b
    .line 3730
    iget-object v2, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiConfigManager:Lcom/android/server/wifi/WifiConfigManager;

    #@3d
    invoke-virtual {v2}, Lcom/android/server/wifi/WifiConfigManager;->clearBssidBlacklist()V

    #@40
    goto :goto_0
.end method

.method private handleSupplicantConnectionLoss(Z)V
    .locals 2
    .param p1, "killSupplicant"    # Z

    #@0
    .prologue
    .line 3600
    if-eqz p1, :cond_0

    #@2
    .line 3601
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiMonitor:Lcom/android/server/wifi/WifiMonitor;

    #@4
    iget-boolean v1, p0, Lcom/android/server/wifi/WifiStateMachine;->mP2pSupported:Z

    #@6
    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiMonitor;->killSupplicant(Z)V

    #@9
    .line 3603
    :cond_0
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    #@b
    invoke-virtual {v0}, Lcom/android/server/wifi/WifiNative;->closeSupplicantConnection()V

    #@e
    .line 3604
    const/4 v0, 0x0

    #@f
    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiStateMachine;->sendSupplicantConnectionChangedBroadcast(Z)V

    #@12
    .line 3605
    const/4 v0, 0x1

    #@13
    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiStateMachine;->setWifiState(I)V

    #@16
    .line 3596
    return-void
.end method

.method private handleSupplicantStateChange(Landroid/os/Message;)Landroid/net/wifi/SupplicantState;
    .locals 10
    .param p1, "message"    # Landroid/os/Message;

    #@0
    .prologue
    const/4 v9, 0x2

    #@1
    const/4 v8, 0x1

    #@2
    const/4 v7, 0x0

    #@3
    const/16 v6, 0x22

    #@5
    .line 3494
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@7
    check-cast v3, Lcom/android/server/wifi/StateChangeResult;

    #@9
    .line 3495
    .local v3, "stateChangeResult":Lcom/android/server/wifi/StateChangeResult;
    iget-object v2, v3, Lcom/android/server/wifi/StateChangeResult;->state:Landroid/net/wifi/SupplicantState;

    #@b
    .line 3500
    .local v2, "state":Landroid/net/wifi/SupplicantState;
    iget-object v4, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    #@d
    invoke-virtual {v4, v2}, Landroid/net/wifi/WifiInfo;->setSupplicantState(Landroid/net/wifi/SupplicantState;)V

    #@10
    .line 3504
    iget-object v4, v3, Lcom/android/server/wifi/StateChangeResult;->wifiSsid:Landroid/net/wifi/WifiSsid;

    #@12
    if-eqz v4, :cond_0

    #@14
    .line 3505
    iget-object v4, v3, Lcom/android/server/wifi/StateChangeResult;->wifiSsid:Landroid/net/wifi/WifiSsid;

    #@16
    invoke-virtual {v4}, Landroid/net/wifi/WifiSsid;->toString()Ljava/lang/String;

    #@19
    move-result-object v4

    #@1a
    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    #@1d
    move-result v4

    #@1e
    .line 3504
    if-eqz v4, :cond_1

    #@20
    .line 3505
    :cond_0
    iget-boolean v4, p0, Lcom/android/server/wifi/WifiStateMachine;->linkDebouncing:Z

    #@22
    .line 3504
    if-eqz v4, :cond_1

    #@24
    .line 3506
    return-object v2

    #@25
    .line 3509
    :cond_1
    invoke-static {v2}, Landroid/net/wifi/SupplicantState;->isConnecting(Landroid/net/wifi/SupplicantState;)Z

    #@28
    move-result v4

    #@29
    if-eqz v4, :cond_4

    #@2b
    .line 3510
    iget-object v4, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    #@2d
    iget v5, v3, Lcom/android/server/wifi/StateChangeResult;->networkId:I

    #@2f
    invoke-virtual {v4, v5}, Landroid/net/wifi/WifiInfo;->setNetworkId(I)V

    #@32
    .line 3515
    :goto_0
    iget-object v4, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    #@34
    iget-object v5, v3, Lcom/android/server/wifi/StateChangeResult;->BSSID:Ljava/lang/String;

    #@36
    invoke-virtual {v4, v5}, Landroid/net/wifi/WifiInfo;->setBSSID(Ljava/lang/String;)V

    #@39
    .line 3517
    iget-object v4, p0, Lcom/android/server/wifi/WifiStateMachine;->mWhiteListedSsids:[Ljava/lang/String;

    #@3b
    if-eqz v4, :cond_2

    #@3d
    .line 3518
    iget-object v4, p0, Lcom/android/server/wifi/WifiStateMachine;->mWhiteListedSsids:[Ljava/lang/String;

    #@3f
    array-length v4, v4

    #@40
    if-lez v4, :cond_2

    #@42
    .line 3519
    iget-object v4, v3, Lcom/android/server/wifi/StateChangeResult;->wifiSsid:Landroid/net/wifi/WifiSsid;

    #@44
    if-eqz v4, :cond_2

    #@46
    .line 3520
    iget-object v4, v3, Lcom/android/server/wifi/StateChangeResult;->wifiSsid:Landroid/net/wifi/WifiSsid;

    #@48
    invoke-virtual {v4}, Landroid/net/wifi/WifiSsid;->toString()Ljava/lang/String;

    #@4b
    move-result-object v0

    #@4c
    .line 3521
    .local v0, "SSID":Ljava/lang/String;
    iget-object v4, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    #@4e
    invoke-virtual {v4}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    #@51
    move-result-object v1

    #@52
    .line 3522
    .local v1, "currentSSID":Ljava/lang/String;
    if-eqz v0, :cond_2

    #@54
    if-eqz v1, :cond_2

    #@56
    const-string/jumbo v4, "<unknown ssid>"

    #@59
    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@5c
    move-result v4

    #@5d
    if-eqz v4, :cond_5

    #@5f
    .line 3541
    .end local v0    # "SSID":Ljava/lang/String;
    .end local v1    # "currentSSID":Ljava/lang/String;
    :cond_2
    :goto_1
    iget-object v4, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    #@61
    iget-object v5, v3, Lcom/android/server/wifi/StateChangeResult;->wifiSsid:Landroid/net/wifi/WifiSsid;

    #@63
    invoke-virtual {v4, v5}, Landroid/net/wifi/WifiInfo;->setSSID(Landroid/net/wifi/WifiSsid;)V

    #@66
    .line 3542
    iget-object v4, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    #@68
    iget-object v5, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiConfigManager:Lcom/android/server/wifi/WifiConfigManager;

    #@6a
    iget-object v6, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    #@6c
    invoke-virtual {v6}, Landroid/net/wifi/WifiInfo;->getNetworkId()I

    #@6f
    move-result v6

    #@70
    invoke-virtual {v5, v6}, Lcom/android/server/wifi/WifiConfigManager;->isEphemeral(I)Z

    #@73
    move-result v5

    #@74
    invoke-virtual {v4, v5}, Landroid/net/wifi/WifiInfo;->setEphemeral(Z)V

    #@77
    .line 3543
    iget-object v4, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    #@79
    invoke-virtual {v4}, Landroid/net/wifi/WifiInfo;->getMeteredHint()Z

    #@7c
    move-result v4

    #@7d
    if-nez v4, :cond_3

    #@7f
    .line 3544
    iget-object v4, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    #@81
    iget-object v5, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiConfigManager:Lcom/android/server/wifi/WifiConfigManager;

    #@83
    iget-object v6, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    #@85
    invoke-virtual {v6}, Landroid/net/wifi/WifiInfo;->getNetworkId()I

    #@88
    move-result v6

    #@89
    invoke-virtual {v5, v6}, Lcom/android/server/wifi/WifiConfigManager;->getMeteredHint(I)Z

    #@8c
    move-result v5

    #@8d
    invoke-virtual {v4, v5}, Landroid/net/wifi/WifiInfo;->setMeteredHint(Z)V

    #@90
    .line 3547
    :cond_3
    iget-object v4, p0, Lcom/android/server/wifi/WifiStateMachine;->mSupplicantStateTracker:Lcom/android/server/wifi/SupplicantStateTracker;

    #@92
    invoke-static {p1}, Landroid/os/Message;->obtain(Landroid/os/Message;)Landroid/os/Message;

    #@95
    move-result-object v5

    #@96
    invoke-virtual {v4, v5}, Lcom/android/server/wifi/SupplicantStateTracker;->sendMessage(Landroid/os/Message;)V

    #@99
    .line 3549
    return-object v2

    #@9a
    .line 3512
    :cond_4
    iget-object v4, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    #@9c
    const/4 v5, -0x1

    #@9d
    invoke-virtual {v4, v5}, Landroid/net/wifi/WifiInfo;->setNetworkId(I)V

    #@a0
    goto :goto_0

    #@a1
    .line 3524
    .restart local v0    # "SSID":Ljava/lang/String;
    .restart local v1    # "currentSSID":Ljava/lang/String;
    :cond_5
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    #@a4
    move-result v4

    #@a5
    if-lt v4, v9, :cond_6

    #@a7
    invoke-virtual {v0, v7}, Ljava/lang/String;->charAt(I)C

    #@aa
    move-result v4

    #@ab
    if-ne v4, v6, :cond_6

    #@ad
    .line 3525
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    #@b0
    move-result v4

    #@b1
    add-int/lit8 v4, v4, -0x1

    #@b3
    invoke-virtual {v0, v4}, Ljava/lang/String;->charAt(I)C

    #@b6
    move-result v4

    #@b7
    if-ne v4, v6, :cond_6

    #@b9
    .line 3526
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    #@bc
    move-result v4

    #@bd
    add-int/lit8 v4, v4, -0x1

    #@bf
    invoke-virtual {v0, v8, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@c2
    move-result-object v0

    #@c3
    .line 3528
    :cond_6
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    #@c6
    move-result v4

    #@c7
    if-lt v4, v9, :cond_7

    #@c9
    invoke-virtual {v1, v7}, Ljava/lang/String;->charAt(I)C

    #@cc
    move-result v4

    #@cd
    if-ne v4, v6, :cond_7

    #@cf
    .line 3529
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    #@d2
    move-result v4

    #@d3
    add-int/lit8 v4, v4, -0x1

    #@d5
    invoke-virtual {v1, v4}, Ljava/lang/String;->charAt(I)C

    #@d8
    move-result v4

    #@d9
    if-ne v4, v6, :cond_7

    #@db
    .line 3530
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    #@de
    move-result v4

    #@df
    add-int/lit8 v4, v4, -0x1

    #@e1
    invoke-virtual {v1, v8, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@e4
    move-result-object v1

    #@e5
    .line 3532
    :cond_7
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@e8
    move-result v4

    #@e9
    if-nez v4, :cond_2

    #@eb
    invoke-virtual {p0}, Lcom/android/server/wifi/WifiStateMachine;->getCurrentState()Lcom/android/internal/util/IState;

    #@ee
    move-result-object v4

    #@ef
    iget-object v5, p0, Lcom/android/server/wifi/WifiStateMachine;->mConnectedState:Lcom/android/internal/util/State;

    #@f1
    if-ne v4, v5, :cond_2

    #@f3
    .line 3533
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    #@f6
    move-result-wide v4

    #@f7
    iput-wide v4, p0, Lcom/android/server/wifi/WifiStateMachine;->lastConnectAttemptTimestamp:J

    #@f9
    .line 3535
    iget-object v4, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiConfigManager:Lcom/android/server/wifi/WifiConfigManager;

    #@fb
    iget-object v5, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    #@fd
    invoke-virtual {v5}, Landroid/net/wifi/WifiInfo;->getNetworkId()I

    #@100
    move-result v5

    #@101
    invoke-virtual {v4, v5}, Lcom/android/server/wifi/WifiConfigManager;->getWifiConfiguration(I)Landroid/net/wifi/WifiConfiguration;

    #@104
    move-result-object v4

    #@105
    .line 3534
    iput-object v4, p0, Lcom/android/server/wifi/WifiStateMachine;->targetWificonfiguration:Landroid/net/wifi/WifiConfiguration;

    #@107
    .line 3536
    iget-object v4, p0, Lcom/android/server/wifi/WifiStateMachine;->mRoamingState:Lcom/android/internal/util/State;

    #@109
    invoke-virtual {p0, v4}, Lcom/android/server/wifi/WifiStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    #@10c
    goto/16 :goto_1
.end method

.method private hasConnectionRequests()Z
    .locals 3

    #@0
    .prologue
    const/4 v0, 0x1

    #@1
    const/4 v1, 0x0

    #@2
    .line 8282
    iget v2, p0, Lcom/android/server/wifi/WifiStateMachine;->mConnectionReqCount:I

    #@4
    if-gtz v2, :cond_0

    #@6
    iget v2, p0, Lcom/android/server/wifi/WifiStateMachine;->mUntrustedReqCount:I

    #@8
    if-lez v2, :cond_1

    #@a
    :cond_0
    :goto_0
    return v0

    #@b
    :cond_1
    move v0, v1

    #@c
    goto :goto_0
.end method

.method private logStateAndMessage(Landroid/os/Message;Lcom/android/internal/util/State;)V
    .locals 2
    .param p1, "message"    # Landroid/os/Message;
    .param p2, "state"    # Lcom/android/internal/util/State;

    #@0
    .prologue
    .line 2385
    const/4 v0, 0x0

    #@1
    iput v0, p0, Lcom/android/server/wifi/WifiStateMachine;->messageHandlingStatus:I

    #@3
    .line 2386
    sget-boolean v0, Lcom/android/server/wifi/WifiStateMachine;->DBG:Z

    #@5
    if-eqz v0, :cond_0

    #@7
    .line 2387
    new-instance v0, Ljava/lang/StringBuilder;

    #@9
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@c
    const-string/jumbo v1, " "

    #@f
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@12
    move-result-object v0

    #@13
    invoke-virtual {p2}, Lcom/android/internal/util/State;->getClass()Ljava/lang/Class;

    #@16
    move-result-object v1

    #@17
    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    #@1a
    move-result-object v1

    #@1b
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1e
    move-result-object v0

    #@1f
    const-string/jumbo v1, " "

    #@22
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@25
    move-result-object v0

    #@26
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/WifiStateMachine;->getLogRecString(Landroid/os/Message;)Ljava/lang/String;

    #@29
    move-result-object v1

    #@2a
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2d
    move-result-object v0

    #@2e
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@31
    move-result-object v0

    #@32
    invoke-virtual {p0, v0}, Lcom/android/server/wifi/WifiStateMachine;->logd(Ljava/lang/String;)V

    #@35
    .line 2384
    :cond_0
    return-void
.end method

.method private macAddressFromRoute(Ljava/lang/String;)Ljava/lang/String;
    .locals 11
    .param p1, "ipAddress"    # Ljava/lang/String;

    #@0
    .prologue
    .line 3881
    const/4 v5, 0x0

    #@1
    .line 3882
    .local v5, "macAddress":Ljava/lang/String;
    const/4 v6, 0x0

    #@2
    .line 3884
    .local v6, "reader":Ljava/io/BufferedReader;
    :try_start_0
    new-instance v7, Ljava/io/BufferedReader;

    #@4
    new-instance v9, Ljava/io/FileReader;

    #@6
    const-string/jumbo v10, "/proc/net/arp"

    #@9
    invoke-direct {v9, v10}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    #@c
    invoke-direct {v7, v9}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@f
    .line 3887
    .end local v6    # "reader":Ljava/io/BufferedReader;
    .local v7, "reader":Ljava/io/BufferedReader;
    :try_start_1
    invoke-virtual {v7}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    #@12
    move-result-object v3

    #@13
    .line 3889
    .local v3, "line":Ljava/lang/String;
    :cond_0
    invoke-virtual {v7}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    #@16
    move-result-object v3

    #@17
    if-eqz v3, :cond_1

    #@19
    .line 3890
    const-string/jumbo v9, "[ ]+"

    #@1c
    invoke-virtual {v3, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    #@1f
    move-result-object v8

    #@20
    .line 3891
    .local v8, "tokens":[Ljava/lang/String;
    array-length v9, v8

    #@21
    const/4 v10, 0x6

    #@22
    if-lt v9, v10, :cond_0

    #@24
    .line 3897
    const/4 v9, 0x0

    #@25
    aget-object v2, v8, v9

    #@27
    .line 3898
    .local v2, "ip":Ljava/lang/String;
    const/4 v9, 0x3

    #@28
    aget-object v4, v8, v9

    #@2a
    .line 3900
    .local v4, "mac":Ljava/lang/String;
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@2d
    move-result v9

    #@2e
    if-eqz v9, :cond_0

    #@30
    .line 3901
    move-object v5, v4

    #@31
    .line 3906
    .end local v2    # "ip":Ljava/lang/String;
    .end local v4    # "mac":Ljava/lang/String;
    .end local v5    # "macAddress":Ljava/lang/String;
    .end local v8    # "tokens":[Ljava/lang/String;
    :cond_1
    if-nez v5, :cond_2

    #@33
    .line 3907
    new-instance v9, Ljava/lang/StringBuilder;

    #@35
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    #@38
    const-string/jumbo v10, "Did not find remoteAddress {"

    #@3b
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3e
    move-result-object v9

    #@3f
    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@42
    move-result-object v9

    #@43
    const-string/jumbo v10, "} in "

    #@46
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@49
    move-result-object v9

    #@4a
    .line 3908
    const-string/jumbo v10, "/proc/net/arp"

    #@4d
    .line 3907
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@50
    move-result-object v9

    #@51
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@54
    move-result-object v9

    #@55
    invoke-virtual {p0, v9}, Lcom/android/server/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_6
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_7
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    #@58
    .line 3917
    :cond_2
    if-eqz v7, :cond_3

    #@5a
    .line 3918
    :try_start_2
    invoke-virtual {v7}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    #@5d
    :cond_3
    :goto_0
    move-object v6, v7

    #@5e
    .line 3924
    .end local v3    # "line":Ljava/lang/String;
    .end local v7    # "reader":Ljava/io/BufferedReader;
    :cond_4
    :goto_1
    return-object v5

    #@5f
    .line 3920
    .restart local v3    # "line":Ljava/lang/String;
    .restart local v7    # "reader":Ljava/io/BufferedReader;
    :catch_0
    move-exception v1

    #@60
    .local v1, "e":Ljava/io/IOException;
    goto :goto_0

    #@61
    .line 3913
    .end local v1    # "e":Ljava/io/IOException;
    .end local v3    # "line":Ljava/lang/String;
    .end local v7    # "reader":Ljava/io/BufferedReader;
    .restart local v5    # "macAddress":Ljava/lang/String;
    .restart local v6    # "reader":Ljava/io/BufferedReader;
    :catch_1
    move-exception v1

    #@62
    .line 3914
    .end local v5    # "macAddress":Ljava/lang/String;
    .end local v6    # "reader":Ljava/io/BufferedReader;
    .restart local v1    # "e":Ljava/io/IOException;
    :goto_2
    :try_start_3
    const-string/jumbo v9, "Could not read /proc/net/arp to lookup mac address"

    #@65
    invoke-virtual {p0, v9}, Lcom/android/server/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@68
    .line 3917
    if-eqz v6, :cond_4

    #@6a
    .line 3918
    :try_start_4
    invoke-virtual {v6}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    #@6d
    goto :goto_1

    #@6e
    .line 3920
    :catch_2
    move-exception v1

    #@6f
    goto :goto_1

    #@70
    .line 3911
    .end local v1    # "e":Ljava/io/IOException;
    .restart local v5    # "macAddress":Ljava/lang/String;
    .restart local v6    # "reader":Ljava/io/BufferedReader;
    :catch_3
    move-exception v0

    #@71
    .line 3912
    .end local v5    # "macAddress":Ljava/lang/String;
    .end local v6    # "reader":Ljava/io/BufferedReader;
    .local v0, "e":Ljava/io/FileNotFoundException;
    :goto_3
    :try_start_5
    const-string/jumbo v9, "Could not open /proc/net/arp to lookup mac address"

    #@74
    invoke-virtual {p0, v9}, Lcom/android/server/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    #@77
    .line 3917
    if-eqz v6, :cond_4

    #@79
    .line 3918
    :try_start_6
    invoke-virtual {v6}, Ljava/io/BufferedReader;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4

    #@7c
    goto :goto_1

    #@7d
    .line 3920
    :catch_4
    move-exception v1

    #@7e
    .restart local v1    # "e":Ljava/io/IOException;
    goto :goto_1

    #@7f
    .line 3915
    .end local v0    # "e":Ljava/io/FileNotFoundException;
    .end local v1    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v9

    #@80
    .line 3917
    :goto_4
    if-eqz v6, :cond_5

    #@82
    .line 3918
    :try_start_7
    invoke-virtual {v6}, Ljava/io/BufferedReader;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_5

    #@85
    .line 3915
    :cond_5
    :goto_5
    throw v9

    #@86
    .line 3920
    :catch_5
    move-exception v1

    #@87
    .restart local v1    # "e":Ljava/io/IOException;
    goto :goto_5

    #@88
    .line 3915
    .end local v1    # "e":Ljava/io/IOException;
    .restart local v7    # "reader":Ljava/io/BufferedReader;
    :catchall_1
    move-exception v9

    #@89
    move-object v6, v7

    #@8a
    .end local v7    # "reader":Ljava/io/BufferedReader;
    .local v6, "reader":Ljava/io/BufferedReader;
    goto :goto_4

    #@8b
    .line 3911
    .end local v6    # "reader":Ljava/io/BufferedReader;
    .restart local v7    # "reader":Ljava/io/BufferedReader;
    :catch_6
    move-exception v0

    #@8c
    .restart local v0    # "e":Ljava/io/FileNotFoundException;
    move-object v6, v7

    #@8d
    .end local v7    # "reader":Ljava/io/BufferedReader;
    .restart local v6    # "reader":Ljava/io/BufferedReader;
    goto :goto_3

    #@8e
    .line 3913
    .end local v0    # "e":Ljava/io/FileNotFoundException;
    .end local v6    # "reader":Ljava/io/BufferedReader;
    .restart local v7    # "reader":Ljava/io/BufferedReader;
    :catch_7
    move-exception v1

    #@8f
    .restart local v1    # "e":Ljava/io/IOException;
    move-object v6, v7

    #@90
    .end local v7    # "reader":Ljava/io/BufferedReader;
    .restart local v6    # "reader":Ljava/io/BufferedReader;
    goto :goto_2
.end method

.method private macAddressFromString(Ljava/lang/String;)[B
    .locals 6
    .param p1, "macString"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v5, 0x6

    #@1
    .line 3864
    const-string/jumbo v4, ":"

    #@4
    invoke-virtual {p1, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    #@7
    move-result-object v3

    #@8
    .line 3865
    .local v3, "macBytes":[Ljava/lang/String;
    array-length v4, v3

    #@9
    if-eq v4, v5, :cond_0

    #@b
    .line 3866
    new-instance v4, Ljava/lang/IllegalArgumentException;

    #@d
    const-string/jumbo v5, "MAC address should be 6 bytes long!"

    #@10
    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@13
    throw v4

    #@14
    .line 3868
    :cond_0
    new-array v2, v5, [B

    #@16
    .line 3869
    .local v2, "mac":[B
    const/4 v1, 0x0

    #@17
    .local v1, "i":I
    :goto_0
    array-length v4, v3

    #@18
    if-ge v1, v4, :cond_1

    #@1a
    .line 3870
    aget-object v4, v3, v1

    #@1c
    const/16 v5, 0x10

    #@1e
    invoke-static {v4, v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    #@21
    move-result v4

    #@22
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@25
    move-result-object v0

    #@26
    .line 3871
    .local v0, "hexVal":Ljava/lang/Integer;
    invoke-virtual {v0}, Ljava/lang/Integer;->byteValue()B

    #@29
    move-result v4

    #@2a
    aput-byte v4, v2, v1

    #@2c
    .line 3869
    add-int/lit8 v1, v1, 0x1

    #@2e
    goto :goto_0

    #@2f
    .line 3873
    .end local v0    # "hexVal":Ljava/lang/Integer;
    :cond_1
    return-object v2
.end method

.method private static makeHex([B)Ljava/lang/String;
    .locals 8
    .param p0, "bytes"    # [B

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 7864
    new-instance v1, Ljava/lang/StringBuilder;

    #@3
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@6
    .line 7865
    .local v1, "sb":Ljava/lang/StringBuilder;
    array-length v4, p0

    #@7
    move v2, v3

    #@8
    :goto_0
    if-ge v2, v4, :cond_0

    #@a
    aget-byte v0, p0, v2

    #@c
    .line 7866
    .local v0, "b":B
    const-string/jumbo v5, "%02x"

    #@f
    const/4 v6, 0x1

    #@10
    new-array v6, v6, [Ljava/lang/Object;

    #@12
    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    #@15
    move-result-object v7

    #@16
    aput-object v7, v6, v3

    #@18
    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@1b
    move-result-object v5

    #@1c
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1f
    .line 7865
    add-int/lit8 v2, v2, 0x1

    #@21
    goto :goto_0

    #@22
    .line 7868
    .end local v0    # "b":B
    :cond_0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@25
    move-result-object v2

    #@26
    return-object v2
.end method

.method private static makeHex([BII)Ljava/lang/String;
    .locals 6
    .param p0, "bytes"    # [B
    .param p1, "from"    # I
    .param p2, "len"    # I

    #@0
    .prologue
    .line 7872
    new-instance v1, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    .line 7873
    .local v1, "sb":Ljava/lang/StringBuilder;
    const/4 v0, 0x0

    #@6
    .local v0, "i":I
    :goto_0
    if-ge v0, p2, :cond_0

    #@8
    .line 7874
    const-string/jumbo v2, "%02x"

    #@b
    const/4 v3, 0x1

    #@c
    new-array v3, v3, [Ljava/lang/Object;

    #@e
    add-int v4, p1, v0

    #@10
    aget-byte v4, p0, v4

    #@12
    invoke-static {v4}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    #@15
    move-result-object v4

    #@16
    const/4 v5, 0x0

    #@17
    aput-object v4, v3, v5

    #@19
    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@1c
    move-result-object v2

    #@1d
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@20
    .line 7873
    add-int/lit8 v0, v0, 0x1

    #@22
    goto :goto_0

    #@23
    .line 7876
    :cond_0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@26
    move-result-object v2

    #@27
    return-object v2
.end method

.method private obtainMessageWithWhatAndArg2(Landroid/os/Message;I)Landroid/os/Message;
    .locals 2
    .param p1, "srcMsg"    # Landroid/os/Message;
    .param p2, "what"    # I

    #@0
    .prologue
    .line 7808
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    #@3
    move-result-object v0

    #@4
    .line 7809
    .local v0, "msg":Landroid/os/Message;
    iput p2, v0, Landroid/os/Message;->what:I

    #@6
    .line 7810
    iget v1, p1, Landroid/os/Message;->arg2:I

    #@8
    iput v1, v0, Landroid/os/Message;->arg2:I

    #@a
    .line 7811
    return-object v0
.end method

.method private static parseHex(C)I
    .locals 3
    .param p0, "ch"    # C

    #@0
    .prologue
    .line 7831
    const/16 v0, 0x30

    #@2
    if-gt v0, p0, :cond_0

    #@4
    const/16 v0, 0x39

    #@6
    if-gt p0, v0, :cond_0

    #@8
    .line 7832
    add-int/lit8 v0, p0, -0x30

    #@a
    return v0

    #@b
    .line 7833
    :cond_0
    const/16 v0, 0x61

    #@d
    if-gt v0, p0, :cond_1

    #@f
    const/16 v0, 0x66

    #@11
    if-gt p0, v0, :cond_1

    #@13
    .line 7834
    add-int/lit8 v0, p0, -0x61

    #@15
    add-int/lit8 v0, v0, 0xa

    #@17
    return v0

    #@18
    .line 7835
    :cond_1
    const/16 v0, 0x41

    #@1a
    if-gt v0, p0, :cond_2

    #@1c
    const/16 v0, 0x46

    #@1e
    if-gt p0, v0, :cond_2

    #@20
    .line 7836
    add-int/lit8 v0, p0, -0x41

    #@22
    add-int/lit8 v0, v0, 0xa

    #@24
    return v0

    #@25
    .line 7838
    :cond_2
    new-instance v0, Ljava/lang/NumberFormatException;

    #@27
    new-instance v1, Ljava/lang/StringBuilder;

    #@29
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@2c
    const-string/jumbo v2, ""

    #@2f
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@32
    move-result-object v1

    #@33
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@36
    move-result-object v1

    #@37
    const-string/jumbo v2, " is not a valid hex digit"

    #@3a
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3d
    move-result-object v1

    #@3e
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@41
    move-result-object v1

    #@42
    invoke-direct {v0, v1}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    #@45
    throw v0
.end method

.method private parseHex(Ljava/lang/String;)[B
    .locals 8
    .param p1, "hex"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v6, 0x0

    #@1
    .line 7844
    if-nez p1, :cond_0

    #@3
    .line 7845
    new-array v5, v6, [B

    #@5
    return-object v5

    #@6
    .line 7848
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    #@9
    move-result v5

    #@a
    rem-int/lit8 v5, v5, 0x2

    #@c
    if-eqz v5, :cond_1

    #@e
    .line 7849
    new-instance v5, Ljava/lang/NumberFormatException;

    #@10
    new-instance v6, Ljava/lang/StringBuilder;

    #@12
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@15
    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@18
    move-result-object v6

    #@19
    const-string/jumbo v7, " is not a valid hex string"

    #@1c
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1f
    move-result-object v6

    #@20
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@23
    move-result-object v6

    #@24
    invoke-direct {v5, v6}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    #@27
    throw v5

    #@28
    .line 7852
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    #@2b
    move-result v5

    #@2c
    div-int/lit8 v5, v5, 0x2

    #@2e
    add-int/lit8 v5, v5, 0x1

    #@30
    new-array v3, v5, [B

    #@32
    .line 7853
    .local v3, "result":[B
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    #@35
    move-result v5

    #@36
    div-int/lit8 v5, v5, 0x2

    #@38
    int-to-byte v5, v5

    #@39
    aput-byte v5, v3, v6

    #@3b
    .line 7854
    const/4 v1, 0x0

    #@3c
    .local v1, "i":I
    const/4 v2, 0x1

    #@3d
    .local v2, "j":I
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    #@40
    move-result v5

    #@41
    if-ge v1, v5, :cond_2

    #@43
    .line 7855
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    #@46
    move-result v5

    #@47
    invoke-static {v5}, Lcom/android/server/wifi/WifiStateMachine;->parseHex(C)I

    #@4a
    move-result v5

    #@4b
    mul-int/lit8 v5, v5, 0x10

    #@4d
    add-int/lit8 v6, v1, 0x1

    #@4f
    invoke-virtual {p1, v6}, Ljava/lang/String;->charAt(I)C

    #@52
    move-result v6

    #@53
    invoke-static {v6}, Lcom/android/server/wifi/WifiStateMachine;->parseHex(C)I

    #@56
    move-result v6

    #@57
    add-int v4, v5, v6

    #@59
    .line 7856
    .local v4, "val":I
    and-int/lit16 v5, v4, 0xff

    #@5b
    int-to-byte v0, v5

    #@5c
    .line 7857
    .local v0, "b":B
    aput-byte v0, v3, v2

    #@5e
    .line 7854
    add-int/lit8 v1, v1, 0x2

    #@60
    add-int/lit8 v2, v2, 0x1

    #@62
    goto :goto_0

    #@63
    .line 7860
    .end local v0    # "b":B
    .end local v4    # "val":I
    :cond_2
    return-object v3
.end method

.method private replyToMessage(Landroid/os/Message;I)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;
    .param p2, "what"    # I

    #@0
    .prologue
    .line 7783
    iget-object v1, p1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    #@2
    if-nez v1, :cond_0

    #@4
    return-void

    #@5
    .line 7784
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/android/server/wifi/WifiStateMachine;->obtainMessageWithWhatAndArg2(Landroid/os/Message;I)Landroid/os/Message;

    #@8
    move-result-object v0

    #@9
    .line 7785
    .local v0, "dstMsg":Landroid/os/Message;
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine;->mReplyChannel:Lcom/android/internal/util/AsyncChannel;

    #@b
    invoke-virtual {v1, p1, v0}, Lcom/android/internal/util/AsyncChannel;->replyToMessage(Landroid/os/Message;Landroid/os/Message;)V

    #@e
    .line 7782
    return-void
.end method

.method private replyToMessage(Landroid/os/Message;II)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;
    .param p2, "what"    # I
    .param p3, "arg1"    # I

    #@0
    .prologue
    .line 7789
    iget-object v1, p1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    #@2
    if-nez v1, :cond_0

    #@4
    return-void

    #@5
    .line 7790
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/android/server/wifi/WifiStateMachine;->obtainMessageWithWhatAndArg2(Landroid/os/Message;I)Landroid/os/Message;

    #@8
    move-result-object v0

    #@9
    .line 7791
    .local v0, "dstMsg":Landroid/os/Message;
    iput p3, v0, Landroid/os/Message;->arg1:I

    #@b
    .line 7792
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine;->mReplyChannel:Lcom/android/internal/util/AsyncChannel;

    #@d
    invoke-virtual {v1, p1, v0}, Lcom/android/internal/util/AsyncChannel;->replyToMessage(Landroid/os/Message;Landroid/os/Message;)V

    #@10
    .line 7788
    return-void
.end method

.method private replyToMessage(Landroid/os/Message;ILjava/lang/Object;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 7796
    iget-object v1, p1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    #@2
    if-nez v1, :cond_0

    #@4
    return-void

    #@5
    .line 7797
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/android/server/wifi/WifiStateMachine;->obtainMessageWithWhatAndArg2(Landroid/os/Message;I)Landroid/os/Message;

    #@8
    move-result-object v0

    #@9
    .line 7798
    .local v0, "dstMsg":Landroid/os/Message;
    iput-object p3, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@b
    .line 7799
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine;->mReplyChannel:Lcom/android/internal/util/AsyncChannel;

    #@d
    invoke-virtual {v1, p1, v0}, Lcom/android/internal/util/AsyncChannel;->replyToMessage(Landroid/os/Message;Landroid/os/Message;)V

    #@10
    .line 7795
    return-void
.end method

.method private reportConnectionAttemptEnd(II)V
    .locals 1
    .param p1, "level2FailureCode"    # I
    .param p2, "connectivityFailureCode"    # I

    #@0
    .prologue
    .line 3668
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiMetrics:Lcom/android/server/wifi/WifiMetrics;

    #@2
    invoke-virtual {v0, p1, p2}, Lcom/android/server/wifi/WifiMetrics;->endConnectionEvent(II)V

    #@5
    .line 3669
    sparse-switch p1, :sswitch_data_0

    #@8
    .line 3675
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiLogger:Lcom/android/server/wifi/BaseWifiLogger;

    #@a
    invoke-virtual {v0}, Lcom/android/server/wifi/BaseWifiLogger;->reportConnectionFailure()V

    #@d
    .line 3667
    :sswitch_0
    return-void

    #@e
    .line 3669
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x8 -> :sswitch_0
    .end sparse-switch
.end method

.method private sendConnectedState()V
    .locals 5

    #@0
    .prologue
    .line 6887
    invoke-virtual {p0}, Lcom/android/server/wifi/WifiStateMachine;->getCurrentWifiConfiguration()Landroid/net/wifi/WifiConfiguration;

    #@3
    move-result-object v0

    #@4
    .line 6888
    .local v0, "config":Landroid/net/wifi/WifiConfiguration;
    iget-object v2, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiConfigManager:Lcom/android/server/wifi/WifiConfigManager;

    #@6
    invoke-virtual {v2, v0}, Lcom/android/server/wifi/WifiConfigManager;->isLastSelectedConfiguration(Landroid/net/wifi/WifiConfiguration;)Z

    #@9
    move-result v2

    #@a
    if-eqz v2, :cond_2

    #@c
    .line 6890
    iget-object v2, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiConfigManager:Lcom/android/server/wifi/WifiConfigManager;

    #@e
    iget v3, v0, Landroid/net/wifi/WifiConfiguration;->lastConnectUid:I

    #@10
    invoke-virtual {v2, v3}, Lcom/android/server/wifi/WifiConfigManager;->checkConfigOverridePermission(I)Z

    #@13
    move-result v1

    #@14
    .line 6891
    .local v1, "prompt":Z
    sget-boolean v2, Lcom/android/server/wifi/WifiStateMachine;->DBG:Z

    #@16
    if-eqz v2, :cond_0

    #@18
    .line 6892
    new-instance v2, Ljava/lang/StringBuilder;

    #@1a
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@1d
    const-string/jumbo v3, "Network selected by UID "

    #@20
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@23
    move-result-object v2

    #@24
    iget v3, v0, Landroid/net/wifi/WifiConfiguration;->lastConnectUid:I

    #@26
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@29
    move-result-object v2

    #@2a
    const-string/jumbo v3, " prompt="

    #@2d
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@30
    move-result-object v2

    #@31
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@34
    move-result-object v2

    #@35
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@38
    move-result-object v2

    #@39
    invoke-virtual {p0, v2}, Lcom/android/server/wifi/WifiStateMachine;->log(Ljava/lang/String;)V

    #@3c
    .line 6894
    :cond_0
    if-eqz v1, :cond_2

    #@3e
    .line 6898
    sget-boolean v2, Lcom/android/server/wifi/WifiStateMachine;->DBG:Z

    #@40
    if-eqz v2, :cond_1

    #@42
    .line 6899
    new-instance v2, Ljava/lang/StringBuilder;

    #@44
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@47
    const-string/jumbo v3, "explictlySelected acceptUnvalidated="

    #@4a
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4d
    move-result-object v2

    #@4e
    iget-boolean v3, v0, Landroid/net/wifi/WifiConfiguration;->noInternetAccessExpected:Z

    #@50
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@53
    move-result-object v2

    #@54
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@57
    move-result-object v2

    #@58
    invoke-virtual {p0, v2}, Lcom/android/server/wifi/WifiStateMachine;->log(Ljava/lang/String;)V

    #@5b
    .line 6901
    :cond_1
    iget-object v2, p0, Lcom/android/server/wifi/WifiStateMachine;->mNetworkAgent:Lcom/android/server/wifi/WifiStateMachine$WifiNetworkAgent;

    #@5d
    iget-boolean v3, v0, Landroid/net/wifi/WifiConfiguration;->noInternetAccessExpected:Z

    #@5f
    invoke-virtual {v2, v3}, Lcom/android/server/wifi/WifiStateMachine$WifiNetworkAgent;->explicitlySelected(Z)V

    #@62
    .line 6905
    .end local v1    # "prompt":Z
    :cond_2
    sget-object v2, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    #@64
    invoke-direct {p0, v2}, Lcom/android/server/wifi/WifiStateMachine;->setNetworkDetailedState(Landroid/net/NetworkInfo$DetailedState;)Z

    #@67
    .line 6906
    iget-object v2, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiConfigManager:Lcom/android/server/wifi/WifiConfigManager;

    #@69
    iget v3, p0, Lcom/android/server/wifi/WifiStateMachine;->mLastNetworkId:I

    #@6b
    sget-object v4, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    #@6d
    invoke-virtual {v2, v3, v4}, Lcom/android/server/wifi/WifiConfigManager;->updateStatus(ILandroid/net/NetworkInfo$DetailedState;)V

    #@70
    .line 6907
    iget-object v2, p0, Lcom/android/server/wifi/WifiStateMachine;->mLastBssid:Ljava/lang/String;

    #@72
    invoke-direct {p0, v2}, Lcom/android/server/wifi/WifiStateMachine;->sendNetworkStateChangeBroadcast(Ljava/lang/String;)V

    #@75
    .line 6884
    return-void
.end method

.method private sendLinkConfigurationChangedBroadcast()V
    .locals 4

    #@0
    .prologue
    .line 3422
    new-instance v0, Landroid/content/Intent;

    #@2
    const-string/jumbo v1, "android.net.wifi.LINK_CONFIGURATION_CHANGED"

    #@5
    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    #@8
    .line 3423
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v1, 0x4000000

    #@a
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    #@d
    .line 3424
    const-string/jumbo v1, "linkProperties"

    #@10
    new-instance v2, Landroid/net/LinkProperties;

    #@12
    iget-object v3, p0, Lcom/android/server/wifi/WifiStateMachine;->mLinkProperties:Landroid/net/LinkProperties;

    #@14
    invoke-direct {v2, v3}, Landroid/net/LinkProperties;-><init>(Landroid/net/LinkProperties;)V

    #@17
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    #@1a
    .line 3425
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine;->mContext:Landroid/content/Context;

    #@1c
    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    #@1e
    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    #@21
    .line 3421
    return-void
.end method

.method private sendNetworkStateChangeBroadcast(Ljava/lang/String;)V
    .locals 5
    .param p1, "bssid"    # Ljava/lang/String;

    #@0
    .prologue
    .line 3380
    new-instance v0, Landroid/content/Intent;

    #@2
    const-string/jumbo v2, "android.net.wifi.STATE_CHANGE"

    #@5
    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    #@8
    .line 3381
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v2, 0x4000000

    #@a
    invoke-virtual {v0, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    #@d
    .line 3382
    const-string/jumbo v2, "networkInfo"

    #@10
    new-instance v3, Landroid/net/NetworkInfo;

    #@12
    iget-object v4, p0, Lcom/android/server/wifi/WifiStateMachine;->mNetworkInfo:Landroid/net/NetworkInfo;

    #@14
    invoke-direct {v3, v4}, Landroid/net/NetworkInfo;-><init>(Landroid/net/NetworkInfo;)V

    #@17
    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    #@1a
    .line 3383
    const-string/jumbo v2, "linkProperties"

    #@1d
    new-instance v3, Landroid/net/LinkProperties;

    #@1f
    iget-object v4, p0, Lcom/android/server/wifi/WifiStateMachine;->mLinkProperties:Landroid/net/LinkProperties;

    #@21
    invoke-direct {v3, v4}, Landroid/net/LinkProperties;-><init>(Landroid/net/LinkProperties;)V

    #@24
    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    #@27
    .line 3384
    if-eqz p1, :cond_0

    #@29
    .line 3385
    const-string/jumbo v2, "bssid"

    #@2c
    invoke-virtual {v0, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    #@2f
    .line 3386
    :cond_0
    iget-object v2, p0, Lcom/android/server/wifi/WifiStateMachine;->mNetworkInfo:Landroid/net/NetworkInfo;

    #@31
    invoke-virtual {v2}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    #@34
    move-result-object v2

    #@35
    sget-object v3, Landroid/net/NetworkInfo$DetailedState;->VERIFYING_POOR_LINK:Landroid/net/NetworkInfo$DetailedState;

    #@37
    if-eq v2, v3, :cond_1

    #@39
    .line 3387
    iget-object v2, p0, Lcom/android/server/wifi/WifiStateMachine;->mNetworkInfo:Landroid/net/NetworkInfo;

    #@3b
    invoke-virtual {v2}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    #@3e
    move-result-object v2

    #@3f
    sget-object v3, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    #@41
    if-ne v2, v3, :cond_2

    #@43
    .line 3390
    :cond_1
    invoke-direct {p0}, Lcom/android/server/wifi/WifiStateMachine;->fetchRssiLinkSpeedAndFrequencyNative()V

    #@46
    .line 3391
    new-instance v1, Landroid/net/wifi/WifiInfo;

    #@48
    iget-object v2, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    #@4a
    invoke-direct {v1, v2}, Landroid/net/wifi/WifiInfo;-><init>(Landroid/net/wifi/WifiInfo;)V

    #@4d
    .line 3392
    .local v1, "sentWifiInfo":Landroid/net/wifi/WifiInfo;
    const-string/jumbo v2, "02:00:00:00:00:00"

    #@50
    invoke-virtual {v1, v2}, Landroid/net/wifi/WifiInfo;->setMacAddress(Ljava/lang/String;)V

    #@53
    .line 3393
    const-string/jumbo v2, "wifiInfo"

    #@56
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    #@59
    .line 3395
    .end local v1    # "sentWifiInfo":Landroid/net/wifi/WifiInfo;
    :cond_2
    iget-object v2, p0, Lcom/android/server/wifi/WifiStateMachine;->mContext:Landroid/content/Context;

    #@5b
    sget-object v3, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    #@5d
    invoke-virtual {v2, v0, v3}, Landroid/content/Context;->sendStickyBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    #@60
    .line 3379
    return-void
.end method

.method private sendRssiChangeBroadcast(I)V
    .locals 4
    .param p1, "newRssi"    # I

    #@0
    .prologue
    .line 3369
    :try_start_0
    iget-object v2, p0, Lcom/android/server/wifi/WifiStateMachine;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    #@2
    invoke-interface {v2, p1}, Lcom/android/internal/app/IBatteryStats;->noteWifiRssiChanged(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@5
    .line 3373
    :goto_0
    new-instance v1, Landroid/content/Intent;

    #@7
    const-string/jumbo v2, "android.net.wifi.RSSI_CHANGED"

    #@a
    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    #@d
    .line 3374
    .local v1, "intent":Landroid/content/Intent;
    const/high16 v2, 0x4000000

    #@f
    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    #@12
    .line 3375
    const-string/jumbo v2, "newRssi"

    #@15
    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    #@18
    .line 3376
    iget-object v2, p0, Lcom/android/server/wifi/WifiStateMachine;->mContext:Landroid/content/Context;

    #@1a
    sget-object v3, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    #@1c
    invoke-virtual {v2, v1, v3}, Landroid/content/Context;->sendStickyBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    #@1f
    .line 3367
    return-void

    #@20
    .line 3370
    .end local v1    # "intent":Landroid/content/Intent;
    :catch_0
    move-exception v0

    #@21
    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method private sendSupplicantConnectionChangedBroadcast(Z)V
    .locals 3
    .param p1, "connected"    # Z

    #@0
    .prologue
    .line 3429
    new-instance v0, Landroid/content/Intent;

    #@2
    const-string/jumbo v1, "android.net.wifi.supplicant.CONNECTION_CHANGE"

    #@5
    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    #@8
    .line 3430
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v1, 0x4000000

    #@a
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    #@d
    .line 3431
    const-string/jumbo v1, "connected"

    #@10
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    #@13
    .line 3432
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine;->mContext:Landroid/content/Context;

    #@15
    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    #@17
    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    #@1a
    .line 3428
    return-void
.end method

.method private setFrequencyBand()V
    .locals 3

    #@0
    .prologue
    .line 2970
    const/4 v0, 0x0

    #@1
    .line 2972
    .local v0, "band":I
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    #@3
    invoke-virtual {v1, v0}, Lcom/android/server/wifi/WifiNative;->setBand(I)Z

    #@6
    move-result v1

    #@7
    if-eqz v1, :cond_2

    #@9
    .line 2973
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine;->mFrequencyBand:Ljava/util/concurrent/atomic/AtomicInteger;

    #@b
    invoke-virtual {v1, v0}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    #@e
    .line 2974
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiConnectivityManager:Lcom/android/server/wifi/WifiConnectivityManager;

    #@10
    if-eqz v1, :cond_0

    #@12
    .line 2975
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiConnectivityManager:Lcom/android/server/wifi/WifiConnectivityManager;

    #@14
    invoke-virtual {v1, v0}, Lcom/android/server/wifi/WifiConnectivityManager;->setUserPreferredBand(I)V

    #@17
    .line 2977
    :cond_0
    sget-boolean v1, Lcom/android/server/wifi/WifiStateMachine;->DBG:Z

    #@19
    if-eqz v1, :cond_1

    #@1b
    .line 2978
    new-instance v1, Ljava/lang/StringBuilder;

    #@1d
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@20
    const-string/jumbo v2, "done set frequency band "

    #@23
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@26
    move-result-object v1

    #@27
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@2a
    move-result-object v1

    #@2b
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2e
    move-result-object v1

    #@2f
    invoke-virtual {p0, v1}, Lcom/android/server/wifi/WifiStateMachine;->logd(Ljava/lang/String;)V

    #@32
    .line 2969
    :cond_1
    :goto_0
    return-void

    #@33
    .line 2981
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    #@35
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@38
    const-string/jumbo v2, "Failed to set frequency band "

    #@3b
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3e
    move-result-object v1

    #@3f
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@42
    move-result-object v1

    #@43
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@46
    move-result-object v1

    #@47
    invoke-virtual {p0, v1}, Lcom/android/server/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V

    #@4a
    goto :goto_0
.end method

.method private setNetworkDetailedState(Landroid/net/NetworkInfo$DetailedState;)Z
    .locals 5
    .param p1, "state"    # Landroid/net/NetworkInfo$DetailedState;

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    const/4 v3, 0x0

    #@2
    .line 3441
    const/4 v0, 0x0

    #@3
    .line 3443
    .local v0, "hidden":Z
    iget-boolean v1, p0, Lcom/android/server/wifi/WifiStateMachine;->linkDebouncing:Z

    #@5
    if-nez v1, :cond_0

    #@7
    invoke-virtual {p0}, Lcom/android/server/wifi/WifiStateMachine;->isRoaming()Z

    #@a
    move-result v1

    #@b
    if-eqz v1, :cond_1

    #@d
    .line 3456
    :cond_0
    const/4 v0, 0x1

    #@e
    .line 3458
    :cond_1
    sget-boolean v1, Lcom/android/server/wifi/WifiStateMachine;->DBG:Z

    #@10
    if-eqz v1, :cond_2

    #@12
    .line 3459
    new-instance v1, Ljava/lang/StringBuilder;

    #@14
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@17
    const-string/jumbo v2, "setDetailed state, old ="

    #@1a
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1d
    move-result-object v1

    #@1e
    .line 3460
    iget-object v2, p0, Lcom/android/server/wifi/WifiStateMachine;->mNetworkInfo:Landroid/net/NetworkInfo;

    #@20
    invoke-virtual {v2}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    #@23
    move-result-object v2

    #@24
    .line 3459
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@27
    move-result-object v1

    #@28
    .line 3460
    const-string/jumbo v2, " and new state="

    #@2b
    .line 3459
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2e
    move-result-object v1

    #@2f
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@32
    move-result-object v1

    #@33
    .line 3461
    const-string/jumbo v2, " hidden="

    #@36
    .line 3459
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@39
    move-result-object v1

    #@3a
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@3d
    move-result-object v1

    #@3e
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@41
    move-result-object v1

    #@42
    invoke-virtual {p0, v1}, Lcom/android/server/wifi/WifiStateMachine;->log(Ljava/lang/String;)V

    #@45
    .line 3463
    :cond_2
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine;->mNetworkInfo:Landroid/net/NetworkInfo;

    #@47
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getExtraInfo()Ljava/lang/String;

    #@4a
    move-result-object v1

    #@4b
    if-eqz v1, :cond_3

    #@4d
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    #@4f
    invoke-virtual {v1}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    #@52
    move-result-object v1

    #@53
    if-eqz v1, :cond_3

    #@55
    .line 3464
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    #@57
    invoke-virtual {v1}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    #@5a
    move-result-object v1

    #@5b
    const-string/jumbo v2, "<unknown ssid>"

    #@5e
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@61
    move-result v1

    #@62
    if-eqz v1, :cond_4

    #@64
    .line 3474
    :cond_3
    :goto_0
    if-eqz v0, :cond_6

    #@66
    .line 3475
    return v4

    #@67
    .line 3466
    :cond_4
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine;->mNetworkInfo:Landroid/net/NetworkInfo;

    #@69
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getExtraInfo()Ljava/lang/String;

    #@6c
    move-result-object v1

    #@6d
    iget-object v2, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    #@6f
    invoke-virtual {v2}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    #@72
    move-result-object v2

    #@73
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@76
    move-result v1

    #@77
    if-nez v1, :cond_3

    #@79
    .line 3467
    sget-boolean v1, Lcom/android/server/wifi/WifiStateMachine;->DBG:Z

    #@7b
    if-eqz v1, :cond_5

    #@7d
    .line 3468
    new-instance v1, Ljava/lang/StringBuilder;

    #@7f
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@82
    const-string/jumbo v2, "setDetailed state send new extra info"

    #@85
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@88
    move-result-object v1

    #@89
    iget-object v2, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    #@8b
    invoke-virtual {v2}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    #@8e
    move-result-object v2

    #@8f
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@92
    move-result-object v1

    #@93
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@96
    move-result-object v1

    #@97
    invoke-virtual {p0, v1}, Lcom/android/server/wifi/WifiStateMachine;->log(Ljava/lang/String;)V

    #@9a
    .line 3470
    :cond_5
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine;->mNetworkInfo:Landroid/net/NetworkInfo;

    #@9c
    iget-object v2, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    #@9e
    invoke-virtual {v2}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    #@a1
    move-result-object v2

    #@a2
    invoke-virtual {v1, v2}, Landroid/net/NetworkInfo;->setExtraInfo(Ljava/lang/String;)V

    #@a5
    .line 3471
    invoke-direct {p0, v3}, Lcom/android/server/wifi/WifiStateMachine;->sendNetworkStateChangeBroadcast(Ljava/lang/String;)V

    #@a8
    goto :goto_0

    #@a9
    .line 3478
    :cond_6
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine;->mNetworkInfo:Landroid/net/NetworkInfo;

    #@ab
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    #@ae
    move-result-object v1

    #@af
    if-eq p1, v1, :cond_8

    #@b1
    .line 3479
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine;->mNetworkInfo:Landroid/net/NetworkInfo;

    #@b3
    iget-object v2, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    #@b5
    invoke-virtual {v2}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    #@b8
    move-result-object v2

    #@b9
    invoke-virtual {v1, p1, v3, v2}, Landroid/net/NetworkInfo;->setDetailedState(Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;Ljava/lang/String;)V

    #@bc
    .line 3480
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine;->mNetworkAgent:Lcom/android/server/wifi/WifiStateMachine$WifiNetworkAgent;

    #@be
    if-eqz v1, :cond_7

    #@c0
    .line 3481
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine;->mNetworkAgent:Lcom/android/server/wifi/WifiStateMachine$WifiNetworkAgent;

    #@c2
    iget-object v2, p0, Lcom/android/server/wifi/WifiStateMachine;->mNetworkInfo:Landroid/net/NetworkInfo;

    #@c4
    invoke-virtual {v1, v2}, Lcom/android/server/wifi/WifiStateMachine$WifiNetworkAgent;->sendNetworkInfo(Landroid/net/NetworkInfo;)V

    #@c7
    .line 3483
    :cond_7
    invoke-direct {p0, v3}, Lcom/android/server/wifi/WifiStateMachine;->sendNetworkStateChangeBroadcast(Ljava/lang/String;)V

    #@ca
    .line 3484
    const/4 v1, 0x1

    #@cb
    return v1

    #@cc
    .line 3486
    :cond_8
    return v4
.end method

.method private setRandomMacOui()Z
    .locals 9

    #@0
    .prologue
    const/4 v8, 0x2

    #@1
    const/4 v7, 0x1

    #@2
    const/4 v6, 0x0

    #@3
    const/16 v5, 0x10

    #@5
    .line 1402
    iget-object v3, p0, Lcom/android/server/wifi/WifiStateMachine;->mContext:Landroid/content/Context;

    #@7
    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@a
    move-result-object v3

    #@b
    const v4, 0x1040038

    #@e
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    #@11
    move-result-object v0

    #@12
    .line 1403
    .local v0, "oui":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@15
    move-result v3

    #@16
    if-eqz v3, :cond_0

    #@18
    .line 1404
    const-string/jumbo v0, "DA-A1-19"

    #@1b
    .line 1406
    :cond_0
    const-string/jumbo v3, "-"

    #@1e
    invoke-virtual {v0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    #@21
    move-result-object v2

    #@22
    .line 1407
    .local v2, "ouiParts":[Ljava/lang/String;
    const/4 v3, 0x3

    #@23
    new-array v1, v3, [B

    #@25
    .line 1408
    .local v1, "ouiBytes":[B
    aget-object v3, v2, v6

    #@27
    invoke-static {v3, v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    #@2a
    move-result v3

    #@2b
    and-int/lit16 v3, v3, 0xff

    #@2d
    int-to-byte v3, v3

    #@2e
    aput-byte v3, v1, v6

    #@30
    .line 1409
    aget-object v3, v2, v7

    #@32
    invoke-static {v3, v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    #@35
    move-result v3

    #@36
    and-int/lit16 v3, v3, 0xff

    #@38
    int-to-byte v3, v3

    #@39
    aput-byte v3, v1, v7

    #@3b
    .line 1410
    aget-object v3, v2, v8

    #@3d
    invoke-static {v3, v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    #@40
    move-result v3

    #@41
    and-int/lit16 v3, v3, 0xff

    #@43
    int-to-byte v3, v3

    #@44
    aput-byte v3, v1, v8

    #@46
    .line 1412
    new-instance v3, Ljava/lang/StringBuilder;

    #@48
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@4b
    const-string/jumbo v4, "Setting OUI to "

    #@4e
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@51
    move-result-object v3

    #@52
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@55
    move-result-object v3

    #@56
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@59
    move-result-object v3

    #@5a
    invoke-virtual {p0, v3}, Lcom/android/server/wifi/WifiStateMachine;->logd(Ljava/lang/String;)V

    #@5d
    .line 1413
    iget-object v3, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    #@5f
    invoke-virtual {v3, v1}, Lcom/android/server/wifi/WifiNative;->setScanningMacOui([B)Z

    #@62
    move-result v3

    #@63
    return v3
.end method

.method private setScanResults()V
    .locals 22

    #@0
    .prologue
    .line 3080
    const/16 v18, 0x0

    #@2
    move/from16 v0, v18

    #@4
    move-object/from16 v1, p0

    #@6
    iput v0, v1, Lcom/android/server/wifi/WifiStateMachine;->mNumScanResultsKnown:I

    #@8
    .line 3081
    const/16 v18, 0x0

    #@a
    move/from16 v0, v18

    #@c
    move-object/from16 v1, p0

    #@e
    iput v0, v1, Lcom/android/server/wifi/WifiStateMachine;->mNumScanResultsReturned:I

    #@10
    .line 3083
    move-object/from16 v0, p0

    #@12
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    #@14
    move-object/from16 v18, v0

    #@16
    invoke-virtual/range {v18 .. v18}, Lcom/android/server/wifi/WifiNative;->getScanResults()Ljava/util/ArrayList;

    #@19
    move-result-object v17

    #@1a
    .line 3085
    .local v17, "scanResults":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wifi/ScanDetail;>;"
    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->isEmpty()Z

    #@1d
    move-result v18

    #@1e
    if-eqz v18, :cond_0

    #@20
    .line 3086
    new-instance v18, Ljava/util/ArrayList;

    #@22
    invoke-direct/range {v18 .. v18}, Ljava/util/ArrayList;-><init>()V

    #@25
    move-object/from16 v0, v18

    #@27
    move-object/from16 v1, p0

    #@29
    iput-object v0, v1, Lcom/android/server/wifi/WifiStateMachine;->mScanResults:Ljava/util/List;

    #@2b
    .line 3087
    return-void

    #@2c
    .line 3090
    :cond_0
    move-object/from16 v0, p0

    #@2e
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine;->mWifiConfigManager:Lcom/android/server/wifi/WifiConfigManager;

    #@30
    move-object/from16 v18, v0

    #@32
    const/16 v19, 0x0

    #@34
    invoke-virtual/range {v18 .. v19}, Lcom/android/server/wifi/WifiConfigManager;->trimANQPCache(Z)V

    #@37
    .line 3092
    move-object/from16 v0, p0

    #@39
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine;->mLastBssid:Ljava/lang/String;

    #@3b
    move-object/from16 v18, v0

    #@3d
    if-eqz v18, :cond_6

    #@3f
    const/4 v12, 0x1

    #@40
    .line 3093
    .local v12, "connected":Z
    :goto_0
    const-wide/16 v6, 0x0

    #@42
    .line 3094
    .local v6, "activeBssid":J
    if-eqz v12, :cond_1

    #@44
    .line 3096
    :try_start_0
    move-object/from16 v0, p0

    #@46
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine;->mLastBssid:Ljava/lang/String;

    #@48
    move-object/from16 v18, v0

    #@4a
    invoke-static/range {v18 .. v18}, Lcom/android/server/wifi/hotspot2/Utils;->parseMac(Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    #@4d
    move-result-wide v6

    #@4e
    .line 3102
    .end local v12    # "connected":Z
    :cond_1
    :goto_1
    move-object/from16 v0, p0

    #@50
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine;->mScanResultsLock:Ljava/lang/Object;

    #@52
    move-object/from16 v19, v0

    #@54
    monitor-enter v19

    #@55
    .line 3103
    const/4 v8, 0x0

    #@56
    .line 3104
    .local v8, "activeScanDetail":Lcom/android/server/wifi/ScanDetail;
    :try_start_1
    move-object/from16 v0, v17

    #@58
    move-object/from16 v1, p0

    #@5a
    iput-object v0, v1, Lcom/android/server/wifi/WifiStateMachine;->mScanResults:Ljava/util/List;

    #@5c
    .line 3105
    move-object/from16 v0, p0

    #@5e
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine;->mScanResults:Ljava/util/List;

    #@60
    move-object/from16 v18, v0

    #@62
    invoke-interface/range {v18 .. v18}, Ljava/util/List;->size()I

    #@65
    move-result v18

    #@66
    move/from16 v0, v18

    #@68
    move-object/from16 v1, p0

    #@6a
    iput v0, v1, Lcom/android/server/wifi/WifiStateMachine;->mNumScanResultsReturned:I

    #@6c
    .line 3106
    move-object/from16 v0, p0

    #@6e
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine;->mScanResults:Ljava/util/List;

    #@70
    move-object/from16 v18, v0

    #@72
    invoke-interface/range {v18 .. v18}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@75
    move-result-object v16

    #@76
    .end local v8    # "activeScanDetail":Lcom/android/server/wifi/ScanDetail;
    .local v16, "resultDetail$iterator":Ljava/util/Iterator;
    :cond_2
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    #@79
    move-result v18

    #@7a
    if-eqz v18, :cond_8

    #@7c
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@7f
    move-result-object v15

    #@80
    check-cast v15, Lcom/android/server/wifi/ScanDetail;

    #@82
    .line 3107
    .local v15, "resultDetail":Lcom/android/server/wifi/ScanDetail;
    if-eqz v12, :cond_4

    #@84
    invoke-virtual {v15}, Lcom/android/server/wifi/ScanDetail;->getNetworkDetail()Lcom/android/server/wifi/hotspot2/NetworkDetail;

    #@87
    move-result-object v18

    #@88
    invoke-virtual/range {v18 .. v18}, Lcom/android/server/wifi/hotspot2/NetworkDetail;->getBSSID()J

    #@8b
    move-result-wide v20

    #@8c
    cmp-long v18, v20, v6

    #@8e
    if-nez v18, :cond_4

    #@90
    .line 3108
    if-eqz v8, :cond_3

    #@92
    .line 3109
    invoke-virtual {v8}, Lcom/android/server/wifi/ScanDetail;->getNetworkDetail()Lcom/android/server/wifi/hotspot2/NetworkDetail;

    #@95
    move-result-object v18

    #@96
    invoke-virtual/range {v18 .. v18}, Lcom/android/server/wifi/hotspot2/NetworkDetail;->getBSSID()J

    #@99
    move-result-wide v20

    #@9a
    cmp-long v18, v20, v6

    #@9c
    if-eqz v18, :cond_7

    #@9e
    .line 3111
    :cond_3
    :goto_2
    move-object v8, v15

    #@9f
    .line 3119
    :cond_4
    invoke-virtual {v15}, Lcom/android/server/wifi/ScanDetail;->getNetworkDetail()Lcom/android/server/wifi/hotspot2/NetworkDetail;

    #@a2
    move-result-object v14

    #@a3
    .line 3120
    .local v14, "networkDetail":Lcom/android/server/wifi/hotspot2/NetworkDetail;
    if-eqz v14, :cond_2

    #@a5
    invoke-virtual {v14}, Lcom/android/server/wifi/hotspot2/NetworkDetail;->getDtimInterval()I

    #@a8
    move-result v18

    #@a9
    if-lez v18, :cond_2

    #@ab
    .line 3122
    move-object/from16 v0, p0

    #@ad
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine;->mWifiConfigManager:Lcom/android/server/wifi/WifiConfigManager;

    #@af
    move-object/from16 v18, v0

    #@b1
    move-object/from16 v0, v18

    #@b3
    invoke-virtual {v0, v15}, Lcom/android/server/wifi/WifiConfigManager;->getSavedNetworkFromScanDetail(Lcom/android/server/wifi/ScanDetail;)Ljava/util/List;

    #@b6
    move-result-object v11

    #@b7
    .line 3123
    .local v11, "associatedWifiConfigurations":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/WifiConfiguration;>;"
    if-eqz v11, :cond_2

    #@b9
    .line 3124
    invoke-interface {v11}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@bc
    move-result-object v10

    #@bd
    .local v10, "associatedConf$iterator":Ljava/util/Iterator;
    :cond_5
    :goto_3
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    #@c0
    move-result v18

    #@c1
    if-eqz v18, :cond_2

    #@c3
    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@c6
    move-result-object v9

    #@c7
    check-cast v9, Landroid/net/wifi/WifiConfiguration;

    #@c9
    .line 3125
    .local v9, "associatedConf":Landroid/net/wifi/WifiConfiguration;
    if-eqz v9, :cond_5

    #@cb
    .line 3126
    invoke-virtual {v14}, Lcom/android/server/wifi/hotspot2/NetworkDetail;->getDtimInterval()I

    #@ce
    move-result v18

    #@cf
    move/from16 v0, v18

    #@d1
    iput v0, v9, Landroid/net/wifi/WifiConfiguration;->dtimInterval:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@d3
    goto :goto_3

    #@d4
    .line 3102
    .end local v9    # "associatedConf":Landroid/net/wifi/WifiConfiguration;
    .end local v10    # "associatedConf$iterator":Ljava/util/Iterator;
    .end local v11    # "associatedWifiConfigurations":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/WifiConfiguration;>;"
    .end local v14    # "networkDetail":Lcom/android/server/wifi/hotspot2/NetworkDetail;
    .end local v15    # "resultDetail":Lcom/android/server/wifi/ScanDetail;
    .end local v16    # "resultDetail$iterator":Ljava/util/Iterator;
    :catchall_0
    move-exception v18

    #@d5
    monitor-exit v19

    #@d6
    throw v18

    #@d7
    .line 3092
    .end local v6    # "activeBssid":J
    :cond_6
    const/4 v12, 0x0

    #@d8
    goto/16 :goto_0

    #@da
    .line 3097
    .restart local v6    # "activeBssid":J
    .restart local v12    # "connected":Z
    :catch_0
    move-exception v13

    #@db
    .line 3098
    .local v13, "iae":Ljava/lang/IllegalArgumentException;
    const/4 v12, 0x0

    #@dc
    .local v12, "connected":Z
    goto/16 :goto_1

    #@de
    .line 3110
    .end local v12    # "connected":Z
    .end local v13    # "iae":Ljava/lang/IllegalArgumentException;
    .restart local v15    # "resultDetail":Lcom/android/server/wifi/ScanDetail;
    .restart local v16    # "resultDetail$iterator":Ljava/util/Iterator;
    :cond_7
    :try_start_2
    invoke-virtual {v8}, Lcom/android/server/wifi/ScanDetail;->getNetworkDetail()Lcom/android/server/wifi/hotspot2/NetworkDetail;

    #@e1
    move-result-object v18

    #@e2
    invoke-virtual/range {v18 .. v18}, Lcom/android/server/wifi/hotspot2/NetworkDetail;->getANQPElements()Ljava/util/Map;

    #@e5
    move-result-object v18

    #@e6
    if-nez v18, :cond_4

    #@e8
    goto :goto_2

    #@e9
    .line 3132
    .end local v15    # "resultDetail":Lcom/android/server/wifi/ScanDetail;
    :cond_8
    move-object/from16 v0, p0

    #@eb
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine;->mWifiConfigManager:Lcom/android/server/wifi/WifiConfigManager;

    #@ed
    move-object/from16 v18, v0

    #@ef
    move-object/from16 v0, v18

    #@f1
    invoke-virtual {v0, v8}, Lcom/android/server/wifi/WifiConfigManager;->setActiveScanDetail(Lcom/android/server/wifi/ScanDetail;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@f4
    monitor-exit v19

    #@f5
    .line 3135
    move-object/from16 v0, p0

    #@f7
    iget-boolean v0, v0, Lcom/android/server/wifi/WifiStateMachine;->linkDebouncing:Z

    #@f9
    move/from16 v18, v0

    #@fb
    if-eqz v18, :cond_9

    #@fd
    .line 3141
    move-object/from16 v0, p0

    #@ff
    iget v0, v0, Lcom/android/server/wifi/WifiStateMachine;->mLastNetworkId:I

    #@101
    move/from16 v18, v0

    #@103
    const v19, 0x20091

    #@106
    const/16 v20, 0x1

    #@108
    const/16 v21, 0x0

    #@10a
    move-object/from16 v0, p0

    #@10c
    move/from16 v1, v19

    #@10e
    move/from16 v2, v18

    #@110
    move/from16 v3, v20

    #@112
    move-object/from16 v4, v21

    #@114
    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/server/wifi/WifiStateMachine;->sendMessage(IIILjava/lang/Object;)V

    #@117
    .line 3079
    :cond_9
    return-void
.end method

.method private setSuspendOptimizations(IZ)V
    .locals 2
    .param p1, "reason"    # I
    .param p2, "enabled"    # Z

    #@0
    .prologue
    .line 3016
    sget-boolean v0, Lcom/android/server/wifi/WifiStateMachine;->DBG:Z

    #@2
    if-eqz v0, :cond_0

    #@4
    new-instance v0, Ljava/lang/StringBuilder;

    #@6
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@9
    const-string/jumbo v1, "setSuspendOptimizations: "

    #@c
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@f
    move-result-object v0

    #@10
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@13
    move-result-object v0

    #@14
    const-string/jumbo v1, " "

    #@17
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1a
    move-result-object v0

    #@1b
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@1e
    move-result-object v0

    #@1f
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@22
    move-result-object v0

    #@23
    invoke-virtual {p0, v0}, Lcom/android/server/wifi/WifiStateMachine;->log(Ljava/lang/String;)V

    #@26
    .line 3017
    :cond_0
    if-eqz p2, :cond_2

    #@28
    .line 3018
    iget v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mSuspendOptNeedsDisabled:I

    #@2a
    not-int v1, p1

    #@2b
    and-int/2addr v0, v1

    #@2c
    iput v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mSuspendOptNeedsDisabled:I

    #@2e
    .line 3022
    :goto_0
    sget-boolean v0, Lcom/android/server/wifi/WifiStateMachine;->DBG:Z

    #@30
    if-eqz v0, :cond_1

    #@32
    new-instance v0, Ljava/lang/StringBuilder;

    #@34
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@37
    const-string/jumbo v1, "mSuspendOptNeedsDisabled "

    #@3a
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3d
    move-result-object v0

    #@3e
    iget v1, p0, Lcom/android/server/wifi/WifiStateMachine;->mSuspendOptNeedsDisabled:I

    #@40
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@43
    move-result-object v0

    #@44
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@47
    move-result-object v0

    #@48
    invoke-virtual {p0, v0}, Lcom/android/server/wifi/WifiStateMachine;->log(Ljava/lang/String;)V

    #@4b
    .line 3015
    :cond_1
    return-void

    #@4c
    .line 3020
    :cond_2
    iget v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mSuspendOptNeedsDisabled:I

    #@4e
    or-int/2addr v0, p1

    #@4f
    iput v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mSuspendOptNeedsDisabled:I

    #@51
    goto :goto_0
.end method

.method private setSuspendOptimizationsNative(IZ)V
    .locals 7
    .param p1, "reason"    # I
    .param p2, "enabled"    # Z

    #@0
    .prologue
    const/4 v6, 0x5

    #@1
    const/4 v5, 0x4

    #@2
    const/4 v4, 0x3

    #@3
    const/4 v3, 0x2

    #@4
    const/4 v2, 0x0

    #@5
    .line 2986
    sget-boolean v0, Lcom/android/server/wifi/WifiStateMachine;->DBG:Z

    #@7
    if-eqz v0, :cond_0

    #@9
    .line 2987
    new-instance v0, Ljava/lang/StringBuilder;

    #@b
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@e
    const-string/jumbo v1, "setSuspendOptimizationsNative: "

    #@11
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@14
    move-result-object v0

    #@15
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@18
    move-result-object v0

    #@19
    const-string/jumbo v1, " "

    #@1c
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1f
    move-result-object v0

    #@20
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@23
    move-result-object v0

    #@24
    .line 2988
    const-string/jumbo v1, " -want "

    #@27
    .line 2987
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2a
    move-result-object v0

    #@2b
    .line 2988
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine;->mUserWantsSuspendOpt:Ljava/util/concurrent/atomic/AtomicBoolean;

    #@2d
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    #@30
    move-result v1

    #@31
    .line 2987
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@34
    move-result-object v0

    #@35
    .line 2989
    const-string/jumbo v1, " stack:"

    #@38
    .line 2987
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3b
    move-result-object v0

    #@3c
    .line 2989
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    #@3f
    move-result-object v1

    #@40
    invoke-virtual {v1}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    #@43
    move-result-object v1

    #@44
    aget-object v1, v1, v3

    #@46
    invoke-virtual {v1}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    #@49
    move-result-object v1

    #@4a
    .line 2987
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4d
    move-result-object v0

    #@4e
    .line 2990
    const-string/jumbo v1, " - "

    #@51
    .line 2987
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@54
    move-result-object v0

    #@55
    .line 2990
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    #@58
    move-result-object v1

    #@59
    invoke-virtual {v1}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    #@5c
    move-result-object v1

    #@5d
    aget-object v1, v1, v4

    #@5f
    invoke-virtual {v1}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    #@62
    move-result-object v1

    #@63
    .line 2987
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@66
    move-result-object v0

    #@67
    .line 2991
    const-string/jumbo v1, " - "

    #@6a
    .line 2987
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6d
    move-result-object v0

    #@6e
    .line 2991
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    #@71
    move-result-object v1

    #@72
    invoke-virtual {v1}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    #@75
    move-result-object v1

    #@76
    aget-object v1, v1, v5

    #@78
    invoke-virtual {v1}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    #@7b
    move-result-object v1

    #@7c
    .line 2987
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@7f
    move-result-object v0

    #@80
    .line 2992
    const-string/jumbo v1, " - "

    #@83
    .line 2987
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@86
    move-result-object v0

    #@87
    .line 2992
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    #@8a
    move-result-object v1

    #@8b
    invoke-virtual {v1}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    #@8e
    move-result-object v1

    #@8f
    aget-object v1, v1, v6

    #@91
    invoke-virtual {v1}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    #@94
    move-result-object v1

    #@95
    .line 2987
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@98
    move-result-object v0

    #@99
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@9c
    move-result-object v0

    #@9d
    invoke-virtual {p0, v0}, Lcom/android/server/wifi/WifiStateMachine;->log(Ljava/lang/String;)V

    #@a0
    .line 2996
    :cond_0
    if-eqz p2, :cond_3

    #@a2
    .line 2997
    iget v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mSuspendOptNeedsDisabled:I

    #@a4
    not-int v1, p1

    #@a5
    and-int/2addr v0, v1

    #@a6
    iput v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mSuspendOptNeedsDisabled:I

    #@a8
    .line 2999
    iget v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mSuspendOptNeedsDisabled:I

    #@aa
    if-nez v0, :cond_2

    #@ac
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mUserWantsSuspendOpt:Ljava/util/concurrent/atomic/AtomicBoolean;

    #@ae
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    #@b1
    move-result v0

    #@b2
    if-eqz v0, :cond_2

    #@b4
    .line 3000
    sget-boolean v0, Lcom/android/server/wifi/WifiStateMachine;->DBG:Z

    #@b6
    if-eqz v0, :cond_1

    #@b8
    .line 3001
    new-instance v0, Ljava/lang/StringBuilder;

    #@ba
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@bd
    const-string/jumbo v1, "setSuspendOptimizationsNative do it "

    #@c0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@c3
    move-result-object v0

    #@c4
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@c7
    move-result-object v0

    #@c8
    const-string/jumbo v1, " "

    #@cb
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@ce
    move-result-object v0

    #@cf
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@d2
    move-result-object v0

    #@d3
    .line 3002
    const-string/jumbo v1, " stack:"

    #@d6
    .line 3001
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@d9
    move-result-object v0

    #@da
    .line 3002
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    #@dd
    move-result-object v1

    #@de
    invoke-virtual {v1}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    #@e1
    move-result-object v1

    #@e2
    aget-object v1, v1, v3

    #@e4
    invoke-virtual {v1}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    #@e7
    move-result-object v1

    #@e8
    .line 3001
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@eb
    move-result-object v0

    #@ec
    .line 3003
    const-string/jumbo v1, " - "

    #@ef
    .line 3001
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@f2
    move-result-object v0

    #@f3
    .line 3003
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    #@f6
    move-result-object v1

    #@f7
    invoke-virtual {v1}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    #@fa
    move-result-object v1

    #@fb
    aget-object v1, v1, v4

    #@fd
    invoke-virtual {v1}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    #@100
    move-result-object v1

    #@101
    .line 3001
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@104
    move-result-object v0

    #@105
    .line 3004
    const-string/jumbo v1, " - "

    #@108
    .line 3001
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@10b
    move-result-object v0

    #@10c
    .line 3004
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    #@10f
    move-result-object v1

    #@110
    invoke-virtual {v1}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    #@113
    move-result-object v1

    #@114
    aget-object v1, v1, v5

    #@116
    invoke-virtual {v1}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    #@119
    move-result-object v1

    #@11a
    .line 3001
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@11d
    move-result-object v0

    #@11e
    .line 3005
    const-string/jumbo v1, " - "

    #@121
    .line 3001
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@124
    move-result-object v0

    #@125
    .line 3005
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    #@128
    move-result-object v1

    #@129
    invoke-virtual {v1}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    #@12c
    move-result-object v1

    #@12d
    aget-object v1, v1, v6

    #@12f
    invoke-virtual {v1}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    #@132
    move-result-object v1

    #@133
    .line 3001
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@136
    move-result-object v0

    #@137
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@13a
    move-result-object v0

    #@13b
    invoke-virtual {p0, v0}, Lcom/android/server/wifi/WifiStateMachine;->log(Ljava/lang/String;)V

    #@13e
    .line 3007
    :cond_1
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    #@140
    const/4 v1, 0x1

    #@141
    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiNative;->setSuspendOptimizations(Z)Z

    #@144
    .line 2985
    :cond_2
    :goto_0
    return-void

    #@145
    .line 3010
    :cond_3
    iget v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mSuspendOptNeedsDisabled:I

    #@147
    or-int/2addr v0, p1

    #@148
    iput v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mSuspendOptNeedsDisabled:I

    #@14a
    .line 3011
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    #@14c
    invoke-virtual {v0, v2}, Lcom/android/server/wifi/WifiNative;->setSuspendOptimizations(Z)Z

    #@14f
    goto :goto_0
.end method

.method private setTargetBssid(Landroid/net/wifi/WifiConfiguration;Ljava/lang/String;)Z
    .locals 5
    .param p1, "config"    # Landroid/net/wifi/WifiConfiguration;
    .param p2, "bssid"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 448
    if-nez p1, :cond_0

    #@3
    .line 449
    return v4

    #@4
    .line 452
    :cond_0
    iget-object v1, p1, Landroid/net/wifi/WifiConfiguration;->BSSID:Ljava/lang/String;

    #@6
    if-eqz v1, :cond_1

    #@8
    .line 453
    iget-object p2, p1, Landroid/net/wifi/WifiConfiguration;->BSSID:Ljava/lang/String;

    #@a
    .line 454
    sget-boolean v1, Lcom/android/server/wifi/WifiStateMachine;->DBG:Z

    #@c
    if-eqz v1, :cond_1

    #@e
    .line 455
    const-string/jumbo v1, "WifiStateMachine"

    #@11
    new-instance v2, Ljava/lang/StringBuilder;

    #@13
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@16
    const-string/jumbo v3, "force BSSID to "

    #@19
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1c
    move-result-object v2

    #@1d
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@20
    move-result-object v2

    #@21
    const-string/jumbo v3, "due to config"

    #@24
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@27
    move-result-object v2

    #@28
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2b
    move-result-object v2

    #@2c
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@2f
    .line 459
    :cond_1
    if-nez p2, :cond_2

    #@31
    .line 460
    const-string/jumbo p2, "any"

    #@34
    .line 463
    :cond_2
    invoke-virtual {p1}, Landroid/net/wifi/WifiConfiguration;->getNetworkSelectionStatus()Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;

    #@37
    move-result-object v1

    #@38
    invoke-virtual {v1}, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->getNetworkSelectionBSSID()Ljava/lang/String;

    #@3b
    move-result-object v0

    #@3c
    .line 465
    .local v0, "networkSelectionBSSID":Ljava/lang/String;
    if-eqz v0, :cond_4

    #@3e
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@41
    move-result v1

    #@42
    if-eqz v1, :cond_4

    #@44
    .line 466
    sget-boolean v1, Lcom/android/server/wifi/WifiStateMachine;->DBG:Z

    #@46
    if-eqz v1, :cond_3

    #@48
    .line 467
    const-string/jumbo v1, "WifiStateMachine"

    #@4b
    const-string/jumbo v2, "Current preferred BSSID is the same as the target one"

    #@4e
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@51
    .line 469
    :cond_3
    return v4

    #@52
    .line 472
    :cond_4
    sget-boolean v1, Lcom/android/server/wifi/WifiStateMachine;->DBG:Z

    #@54
    if-eqz v1, :cond_5

    #@56
    .line 473
    const-string/jumbo v1, "WifiStateMachine"

    #@59
    new-instance v2, Ljava/lang/StringBuilder;

    #@5b
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@5e
    const-string/jumbo v3, "target set to "

    #@61
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@64
    move-result-object v2

    #@65
    iget-object v3, p1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    #@67
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6a
    move-result-object v2

    #@6b
    const-string/jumbo v3, ":"

    #@6e
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@71
    move-result-object v2

    #@72
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@75
    move-result-object v2

    #@76
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@79
    move-result-object v2

    #@7a
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@7d
    .line 475
    :cond_5
    iput-object p2, p0, Lcom/android/server/wifi/WifiStateMachine;->mTargetRoamBSSID:Ljava/lang/String;

    #@7f
    .line 476
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiConfigManager:Lcom/android/server/wifi/WifiConfigManager;

    #@81
    invoke-virtual {v1, p1, p2}, Lcom/android/server/wifi/WifiConfigManager;->saveWifiConfigBSSID(Landroid/net/wifi/WifiConfiguration;Ljava/lang/String;)V

    #@84
    .line 477
    const/4 v1, 0x1

    #@85
    return v1
.end method

.method private setWifiApState(II)V
    .locals 5
    .param p1, "wifiApState"    # I
    .param p2, "reason"    # I

    #@0
    .prologue
    .line 3050
    iget-object v3, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiApState:Ljava/util/concurrent/atomic/AtomicInteger;

    #@2
    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    #@5
    move-result v2

    #@6
    .line 3053
    .local v2, "previousWifiApState":I
    const/16 v3, 0xd

    #@8
    if-ne p1, v3, :cond_3

    #@a
    .line 3054
    :try_start_0
    iget-object v3, p0, Lcom/android/server/wifi/WifiStateMachine;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    #@c
    invoke-interface {v3}, Lcom/android/internal/app/IBatteryStats;->noteWifiOn()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@f
    .line 3063
    :cond_0
    :goto_0
    iget-object v3, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiApState:Ljava/util/concurrent/atomic/AtomicInteger;

    #@11
    invoke-virtual {v3, p1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    #@14
    .line 3065
    sget-boolean v3, Lcom/android/server/wifi/WifiStateMachine;->DBG:Z

    #@16
    if-eqz v3, :cond_1

    #@18
    new-instance v3, Ljava/lang/StringBuilder;

    #@1a
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@1d
    const-string/jumbo v4, "setWifiApState: "

    #@20
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@23
    move-result-object v3

    #@24
    invoke-virtual {p0}, Lcom/android/server/wifi/WifiStateMachine;->syncGetWifiApStateByName()Ljava/lang/String;

    #@27
    move-result-object v4

    #@28
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2b
    move-result-object v3

    #@2c
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2f
    move-result-object v3

    #@30
    invoke-virtual {p0, v3}, Lcom/android/server/wifi/WifiStateMachine;->log(Ljava/lang/String;)V

    #@33
    .line 3067
    :cond_1
    new-instance v1, Landroid/content/Intent;

    #@35
    const-string/jumbo v3, "android.net.wifi.WIFI_AP_STATE_CHANGED"

    #@38
    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    #@3b
    .line 3068
    .local v1, "intent":Landroid/content/Intent;
    const/high16 v3, 0x4000000

    #@3d
    invoke-virtual {v1, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    #@40
    .line 3069
    const-string/jumbo v3, "wifi_state"

    #@43
    invoke-virtual {v1, v3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    #@46
    .line 3070
    const-string/jumbo v3, "previous_wifi_state"

    #@49
    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    #@4c
    .line 3071
    const/16 v3, 0xe

    #@4e
    if-ne p1, v3, :cond_2

    #@50
    .line 3073
    const-string/jumbo v3, "wifi_ap_error_code"

    #@53
    invoke-virtual {v1, v3, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    #@56
    .line 3076
    :cond_2
    iget-object v3, p0, Lcom/android/server/wifi/WifiStateMachine;->mContext:Landroid/content/Context;

    #@58
    sget-object v4, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    #@5a
    invoke-virtual {v3, v1, v4}, Landroid/content/Context;->sendStickyBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    #@5d
    .line 3049
    return-void

    #@5e
    .line 3055
    .end local v1    # "intent":Landroid/content/Intent;
    :cond_3
    const/16 v3, 0xb

    #@60
    if-ne p1, v3, :cond_0

    #@62
    .line 3056
    :try_start_1
    iget-object v3, p0, Lcom/android/server/wifi/WifiStateMachine;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    #@64
    invoke-interface {v3}, Lcom/android/internal/app/IBatteryStats;->noteWifiOff()V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    #@67
    goto :goto_0

    #@68
    .line 3058
    :catch_0
    move-exception v0

    #@69
    .line 3059
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v3, "Failed to note battery stats in wifi"

    #@6c
    invoke-virtual {p0, v3}, Lcom/android/server/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V

    #@6f
    goto :goto_0
.end method

.method private setWifiState(I)V
    .locals 5
    .param p1, "wifiState"    # I

    #@0
    .prologue
    .line 3026
    iget-object v3, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiState:Ljava/util/concurrent/atomic/AtomicInteger;

    #@2
    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    #@5
    move-result v2

    #@6
    .line 3029
    .local v2, "previousWifiState":I
    const/4 v3, 0x3

    #@7
    if-ne p1, v3, :cond_2

    #@9
    .line 3030
    :try_start_0
    iget-object v3, p0, Lcom/android/server/wifi/WifiStateMachine;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    #@b
    invoke-interface {v3}, Lcom/android/internal/app/IBatteryStats;->noteWifiOn()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@e
    .line 3038
    :cond_0
    :goto_0
    iget-object v3, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiState:Ljava/util/concurrent/atomic/AtomicInteger;

    #@10
    invoke-virtual {v3, p1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    #@13
    .line 3040
    sget-boolean v3, Lcom/android/server/wifi/WifiStateMachine;->DBG:Z

    #@15
    if-eqz v3, :cond_1

    #@17
    new-instance v3, Ljava/lang/StringBuilder;

    #@19
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@1c
    const-string/jumbo v4, "setWifiState: "

    #@1f
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@22
    move-result-object v3

    #@23
    invoke-virtual {p0}, Lcom/android/server/wifi/WifiStateMachine;->syncGetWifiStateByName()Ljava/lang/String;

    #@26
    move-result-object v4

    #@27
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2a
    move-result-object v3

    #@2b
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2e
    move-result-object v3

    #@2f
    invoke-virtual {p0, v3}, Lcom/android/server/wifi/WifiStateMachine;->log(Ljava/lang/String;)V

    #@32
    .line 3042
    :cond_1
    new-instance v1, Landroid/content/Intent;

    #@34
    const-string/jumbo v3, "android.net.wifi.WIFI_STATE_CHANGED"

    #@37
    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    #@3a
    .line 3043
    .local v1, "intent":Landroid/content/Intent;
    const/high16 v3, 0x4000000

    #@3c
    invoke-virtual {v1, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    #@3f
    .line 3044
    const-string/jumbo v3, "wifi_state"

    #@42
    invoke-virtual {v1, v3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    #@45
    .line 3045
    const-string/jumbo v3, "previous_wifi_state"

    #@48
    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    #@4b
    .line 3046
    iget-object v3, p0, Lcom/android/server/wifi/WifiStateMachine;->mContext:Landroid/content/Context;

    #@4d
    sget-object v4, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    #@4f
    invoke-virtual {v3, v1, v4}, Landroid/content/Context;->sendStickyBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    #@52
    .line 3025
    return-void

    #@53
    .line 3031
    .end local v1    # "intent":Landroid/content/Intent;
    :cond_2
    const/4 v3, 0x1

    #@54
    if-ne p1, v3, :cond_0

    #@56
    .line 3032
    :try_start_1
    iget-object v3, p0, Lcom/android/server/wifi/WifiStateMachine;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    #@58
    invoke-interface {v3}, Lcom/android/internal/app/IBatteryStats;->noteWifiOff()V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    #@5b
    goto :goto_0

    #@5c
    .line 3034
    :catch_0
    move-exception v0

    #@5d
    .line 3035
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v3, "Failed to note battery stats in wifi"

    #@60
    invoke-virtual {p0, v3}, Lcom/android/server/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V

    #@63
    goto :goto_0
.end method

.method private setupDriverForSoftAp()Z
    .locals 5

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 3834
    iget-object v2, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    #@3
    invoke-virtual {v2}, Lcom/android/server/wifi/WifiNative;->loadDriver()Z

    #@6
    move-result v2

    #@7
    if-nez v2, :cond_0

    #@9
    .line 3835
    const-string/jumbo v2, "WifiStateMachine"

    #@c
    const-string/jumbo v3, "Failed to load driver for softap"

    #@f
    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@12
    .line 3836
    return v4

    #@13
    .line 3839
    :cond_0
    iget-object v2, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    #@15
    iget-object v3, p0, Lcom/android/server/wifi/WifiStateMachine;->mInterfaceName:Ljava/lang/String;

    #@17
    invoke-virtual {v2, v3}, Lcom/android/server/wifi/WifiNative;->queryInterfaceIndex(Ljava/lang/String;)I

    #@1a
    move-result v1

    #@1b
    .line 3840
    .local v1, "index":I
    const/4 v2, -0x1

    #@1c
    if-eq v1, v2, :cond_1

    #@1e
    .line 3841
    iget-object v2, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    #@20
    invoke-virtual {v2, v4}, Lcom/android/server/wifi/WifiNative;->setInterfaceUp(Z)Z

    #@23
    move-result v2

    #@24
    if-nez v2, :cond_2

    #@26
    .line 3842
    const-string/jumbo v2, "WifiStateMachine"

    #@29
    const-string/jumbo v3, "toggleInterface failed"

    #@2c
    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@2f
    .line 3843
    return v4

    #@30
    .line 3846
    :cond_1
    sget-boolean v2, Lcom/android/server/wifi/WifiStateMachine;->DBG:Z

    #@32
    if-eqz v2, :cond_2

    #@34
    const-string/jumbo v2, "WifiStateMachine"

    #@37
    const-string/jumbo v3, "No interfaces to bring down"

    #@3a
    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@3d
    .line 3850
    :cond_2
    :try_start_0
    iget-object v2, p0, Lcom/android/server/wifi/WifiStateMachine;->mNwService:Landroid/os/INetworkManagementService;

    #@3f
    iget-object v3, p0, Lcom/android/server/wifi/WifiStateMachine;->mInterfaceName:Ljava/lang/String;

    #@41
    const-string/jumbo v4, "AP"

    #@44
    invoke-interface {v2, v3, v4}, Landroid/os/INetworkManagementService;->wifiFirmwareReload(Ljava/lang/String;Ljava/lang/String;)V

    #@47
    .line 3851
    sget-boolean v2, Lcom/android/server/wifi/WifiStateMachine;->DBG:Z

    #@49
    if-eqz v2, :cond_3

    #@4b
    const-string/jumbo v2, "WifiStateMachine"

    #@4e
    const-string/jumbo v3, "Firmware reloaded in AP mode"

    #@51
    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    #@54
    .line 3856
    :cond_3
    :goto_0
    iget-object v2, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    #@56
    invoke-virtual {v2}, Lcom/android/server/wifi/WifiNative;->startHal()Z

    #@59
    move-result v2

    #@5a
    if-nez v2, :cond_4

    #@5c
    .line 3858
    const-string/jumbo v2, "WifiStateMachine"

    #@5f
    const-string/jumbo v3, "Failed to start HAL"

    #@62
    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@65
    .line 3860
    :cond_4
    const/4 v2, 0x1

    #@66
    return v2

    #@67
    .line 3852
    :catch_0
    move-exception v0

    #@68
    .line 3853
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v2, "WifiStateMachine"

    #@6b
    new-instance v3, Ljava/lang/StringBuilder;

    #@6d
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@70
    const-string/jumbo v4, "Failed to reload AP firmware "

    #@73
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@76
    move-result-object v3

    #@77
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@7a
    move-result-object v3

    #@7b
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@7e
    move-result-object v3

    #@7f
    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@82
    goto :goto_0
.end method

.method private startScanNative(Ljava/util/Set;Ljava/util/Set;Landroid/os/WorkSource;)Z
    .locals 14
    .param p3, "workSource"    # Landroid/os/WorkSource;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Integer;",
            ">;",
            "Landroid/os/WorkSource;",
            ")Z"
        }
    .end annotation

    #@0
    .prologue
    .line 1695
    .local p1, "freqs":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    .local p2, "hiddenNetworkIds":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    new-instance v10, Landroid/net/wifi/WifiScanner$ScanSettings;

    #@2
    invoke-direct {v10}, Landroid/net/wifi/WifiScanner$ScanSettings;-><init>()V

    #@5
    .line 1696
    .local v10, "settings":Landroid/net/wifi/WifiScanner$ScanSettings;
    if-nez p1, :cond_1

    #@7
    .line 1697
    const/4 v11, 0x7

    #@8
    iput v11, v10, Landroid/net/wifi/WifiScanner$ScanSettings;->band:I

    #@a
    .line 1706
    :cond_0
    const/4 v11, 0x3

    #@b
    iput v11, v10, Landroid/net/wifi/WifiScanner$ScanSettings;->reportEvents:I

    #@d
    .line 1708
    if-eqz p2, :cond_2

    #@f
    invoke-interface/range {p2 .. p2}, Ljava/util/Set;->size()I

    #@12
    move-result v11

    #@13
    if-lez v11, :cond_2

    #@15
    .line 1709
    const/4 v3, 0x0

    #@16
    .line 1710
    .local v3, "i":I
    invoke-interface/range {p2 .. p2}, Ljava/util/Set;->size()I

    #@19
    move-result v11

    #@1a
    new-array v11, v11, [I

    #@1c
    iput-object v11, v10, Landroid/net/wifi/WifiScanner$ScanSettings;->hiddenNetworkIds:[I

    #@1e
    .line 1711
    invoke-interface/range {p2 .. p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@21
    move-result-object v9

    #@22
    .local v9, "netId$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    #@25
    move-result v11

    #@26
    if-eqz v11, :cond_2

    #@28
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@2b
    move-result-object v8

    #@2c
    check-cast v8, Ljava/lang/Integer;

    #@2e
    .line 1712
    .local v8, "netId":Ljava/lang/Integer;
    iget-object v11, v10, Landroid/net/wifi/WifiScanner$ScanSettings;->hiddenNetworkIds:[I

    #@30
    add-int/lit8 v4, v3, 0x1

    #@32
    .end local v3    # "i":I
    .local v4, "i":I
    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    #@35
    move-result v12

    #@36
    aput v12, v11, v3

    #@38
    move v3, v4

    #@39
    .end local v4    # "i":I
    .restart local v3    # "i":I
    goto :goto_0

    #@3a
    .line 1699
    .end local v3    # "i":I
    .end local v8    # "netId":Ljava/lang/Integer;
    .end local v9    # "netId$iterator":Ljava/util/Iterator;
    :cond_1
    const/4 v11, 0x0

    #@3b
    iput v11, v10, Landroid/net/wifi/WifiScanner$ScanSettings;->band:I

    #@3d
    .line 1700
    const/4 v5, 0x0

    #@3e
    .line 1701
    .local v5, "index":I
    invoke-interface {p1}, Ljava/util/Set;->size()I

    #@41
    move-result v11

    #@42
    new-array v11, v11, [Landroid/net/wifi/WifiScanner$ChannelSpec;

    #@44
    iput-object v11, v10, Landroid/net/wifi/WifiScanner$ScanSettings;->channels:[Landroid/net/wifi/WifiScanner$ChannelSpec;

    #@46
    .line 1702
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@49
    move-result-object v2

    #@4a
    .local v2, "freq$iterator":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    #@4d
    move-result v11

    #@4e
    if-eqz v11, :cond_0

    #@50
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@53
    move-result-object v1

    #@54
    check-cast v1, Ljava/lang/Integer;

    #@56
    .line 1703
    .local v1, "freq":Ljava/lang/Integer;
    iget-object v11, v10, Landroid/net/wifi/WifiScanner$ScanSettings;->channels:[Landroid/net/wifi/WifiScanner$ChannelSpec;

    #@58
    add-int/lit8 v6, v5, 0x1

    #@5a
    .end local v5    # "index":I
    .local v6, "index":I
    new-instance v12, Landroid/net/wifi/WifiScanner$ChannelSpec;

    #@5c
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    #@5f
    move-result v13

    #@60
    invoke-direct {v12, v13}, Landroid/net/wifi/WifiScanner$ChannelSpec;-><init>(I)V

    #@63
    aput-object v12, v11, v5

    #@65
    move v5, v6

    #@66
    .end local v6    # "index":I
    .restart local v5    # "index":I
    goto :goto_1

    #@67
    .line 1715
    .end local v1    # "freq":Ljava/lang/Integer;
    .end local v2    # "freq$iterator":Ljava/util/Iterator;
    .end local v5    # "index":I
    :cond_2
    new-instance v7, Lcom/android/server/wifi/WifiStateMachine$4;

    #@69
    invoke-direct {v7, p0}, Lcom/android/server/wifi/WifiStateMachine$4;-><init>(Lcom/android/server/wifi/WifiStateMachine;)V

    #@6c
    .line 1730
    .local v7, "nativeScanListener":Landroid/net/wifi/WifiScanner$ScanListener;
    iget-object v11, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiScanner:Landroid/net/wifi/WifiScanner;

    #@6e
    move-object/from16 v0, p3

    #@70
    invoke-virtual {v11, v10, v7, v0}, Landroid/net/wifi/WifiScanner;->startScan(Landroid/net/wifi/WifiScanner$ScanSettings;Landroid/net/wifi/WifiScanner$ScanListener;Landroid/os/WorkSource;)V

    #@73
    .line 1731
    const/4 v11, 0x1

    #@74
    iput-boolean v11, p0, Lcom/android/server/wifi/WifiStateMachine;->mIsScanOngoing:Z

    #@76
    .line 1732
    if-nez p1, :cond_3

    #@78
    const/4 v11, 0x1

    #@79
    :goto_2
    iput-boolean v11, p0, Lcom/android/server/wifi/WifiStateMachine;->mIsFullScanOngoing:Z

    #@7b
    .line 1733
    iput-object p1, p0, Lcom/android/server/wifi/WifiStateMachine;->lastScanFreqs:Ljava/util/Set;

    #@7d
    .line 1734
    const/4 v11, 0x1

    #@7e
    return v11

    #@7f
    .line 1732
    :cond_3
    const/4 v11, 0x0

    #@80
    goto :goto_2
.end method

.method private stopIpManager()V
    .locals 1

    #@0
    .prologue
    .line 1286
    invoke-virtual {p0}, Lcom/android/server/wifi/WifiStateMachine;->handlePostDhcpSetup()V

    #@3
    .line 1287
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mIpManager:Landroid/net/ip/IpManager;

    #@5
    invoke-virtual {v0}, Landroid/net/ip/IpManager;->stop()V

    #@8
    .line 1284
    return-void
.end method

.method static unexpectedDisconnectedReason(I)Z
    .locals 2
    .param p0, "reason"    # I

    #@0
    .prologue
    const/4 v0, 0x1

    #@1
    .line 8161
    const/4 v1, 0x2

    #@2
    if-eq p0, v1, :cond_0

    #@4
    .line 8162
    const/4 v1, 0x6

    #@5
    if-ne p0, v1, :cond_1

    #@7
    .line 8161
    :cond_0
    :goto_0
    return v0

    #@8
    .line 8163
    :cond_1
    const/4 v1, 0x7

    #@9
    if-eq p0, v1, :cond_0

    #@b
    .line 8164
    const/16 v1, 0x8

    #@d
    if-eq p0, v1, :cond_0

    #@f
    .line 8165
    const/16 v1, 0x9

    #@11
    if-eq p0, v1, :cond_0

    #@13
    .line 8166
    const/16 v1, 0xe

    #@15
    if-eq p0, v1, :cond_0

    #@17
    .line 8167
    const/16 v1, 0xf

    #@19
    if-eq p0, v1, :cond_0

    #@1b
    .line 8168
    const/16 v1, 0x10

    #@1d
    if-eq p0, v1, :cond_0

    #@1f
    .line 8169
    const/16 v1, 0x12

    #@21
    if-eq p0, v1, :cond_0

    #@23
    .line 8170
    const/16 v1, 0x13

    #@25
    if-eq p0, v1, :cond_0

    #@27
    .line 8171
    const/16 v1, 0x17

    #@29
    if-eq p0, v1, :cond_0

    #@2b
    .line 8172
    const/16 v1, 0x22

    #@2d
    if-eq p0, v1, :cond_0

    #@2f
    const/4 v0, 0x0

    #@30
    goto :goto_0
.end method

.method private updateCapabilities(Landroid/net/wifi/WifiConfiguration;)V
    .locals 3
    .param p1, "config"    # Landroid/net/wifi/WifiConfiguration;

    #@0
    .prologue
    const/16 v2, 0xe

    #@2
    .line 6289
    new-instance v0, Landroid/net/NetworkCapabilities;

    #@4
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine;->mDfltNetworkCapabilities:Landroid/net/NetworkCapabilities;

    #@6
    invoke-direct {v0, v1}, Landroid/net/NetworkCapabilities;-><init>(Landroid/net/NetworkCapabilities;)V

    #@9
    .line 6290
    .local v0, "networkCapabilities":Landroid/net/NetworkCapabilities;
    if-eqz p1, :cond_0

    #@b
    .line 6291
    iget-boolean v1, p1, Landroid/net/wifi/WifiConfiguration;->ephemeral:Z

    #@d
    if-eqz v1, :cond_2

    #@f
    .line 6292
    invoke-virtual {v0, v2}, Landroid/net/NetworkCapabilities;->removeCapability(I)Landroid/net/NetworkCapabilities;

    #@12
    .line 6300
    :goto_0
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    #@14
    invoke-virtual {v1}, Landroid/net/wifi/WifiInfo;->getRssi()I

    #@17
    move-result v1

    #@18
    const/16 v2, -0x7f

    #@1a
    if-eq v1, v2, :cond_3

    #@1c
    .line 6301
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    #@1e
    invoke-virtual {v1}, Landroid/net/wifi/WifiInfo;->getRssi()I

    #@21
    move-result v1

    #@22
    .line 6299
    :goto_1
    invoke-virtual {v0, v1}, Landroid/net/NetworkCapabilities;->setSignalStrength(I)V

    #@25
    .line 6305
    :cond_0
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    #@27
    invoke-virtual {v1}, Landroid/net/wifi/WifiInfo;->getMeteredHint()Z

    #@2a
    move-result v1

    #@2b
    if-eqz v1, :cond_1

    #@2d
    .line 6306
    const/16 v1, 0xb

    #@2f
    invoke-virtual {v0, v1}, Landroid/net/NetworkCapabilities;->removeCapability(I)Landroid/net/NetworkCapabilities;

    #@32
    .line 6309
    :cond_1
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine;->mNetworkAgent:Lcom/android/server/wifi/WifiStateMachine$WifiNetworkAgent;

    #@34
    invoke-virtual {v1, v0}, Lcom/android/server/wifi/WifiStateMachine$WifiNetworkAgent;->sendNetworkCapabilities(Landroid/net/NetworkCapabilities;)V

    #@37
    .line 6288
    return-void

    #@38
    .line 6295
    :cond_2
    invoke-virtual {v0, v2}, Landroid/net/NetworkCapabilities;->addCapability(I)Landroid/net/NetworkCapabilities;

    #@3b
    goto :goto_0

    #@3c
    .line 6302
    :cond_3
    const/high16 v1, -0x80000000

    #@3e
    goto :goto_1
.end method

.method private updateDefaultRouteMacAddress(I)Ljava/lang/String;
    .locals 8
    .param p1, "timeout"    # I

    #@0
    .prologue
    .line 3321
    const/4 v0, 0x0

    #@1
    .line 3322
    .local v0, "address":Ljava/lang/String;
    iget-object v6, p0, Lcom/android/server/wifi/WifiStateMachine;->mLinkProperties:Landroid/net/LinkProperties;

    #@3
    invoke-virtual {v6}, Landroid/net/LinkProperties;->getRoutes()Ljava/util/List;

    #@6
    move-result-object v6

    #@7
    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@a
    move-result-object v5

    #@b
    .end local v0    # "address":Ljava/lang/String;
    .local v5, "route$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    #@e
    move-result v6

    #@f
    if-eqz v6, :cond_3

    #@11
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@14
    move-result-object v4

    #@15
    check-cast v4, Landroid/net/RouteInfo;

    #@17
    .line 3323
    .local v4, "route":Landroid/net/RouteInfo;
    invoke-virtual {v4}, Landroid/net/RouteInfo;->isDefaultRoute()Z

    #@1a
    move-result v6

    #@1b
    if-eqz v6, :cond_0

    #@1d
    invoke-virtual {v4}, Landroid/net/RouteInfo;->hasGateway()Z

    #@20
    move-result v6

    #@21
    if-eqz v6, :cond_0

    #@23
    .line 3324
    invoke-virtual {v4}, Landroid/net/RouteInfo;->getGateway()Ljava/net/InetAddress;

    #@26
    move-result-object v2

    #@27
    .line 3325
    .local v2, "gateway":Ljava/net/InetAddress;
    instance-of v6, v2, Ljava/net/Inet4Address;

    #@29
    if-eqz v6, :cond_0

    #@2b
    .line 3326
    sget-boolean v6, Lcom/android/server/wifi/WifiStateMachine;->DBG:Z

    #@2d
    if-eqz v6, :cond_1

    #@2f
    .line 3327
    new-instance v6, Ljava/lang/StringBuilder;

    #@31
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@34
    const-string/jumbo v7, "updateDefaultRouteMacAddress found Ipv4 default :"

    #@37
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3a
    move-result-object v6

    #@3b
    .line 3328
    invoke-virtual {v2}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    #@3e
    move-result-object v7

    #@3f
    .line 3327
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@42
    move-result-object v6

    #@43
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@46
    move-result-object v6

    #@47
    invoke-virtual {p0, v6}, Lcom/android/server/wifi/WifiStateMachine;->logd(Ljava/lang/String;)V

    #@4a
    .line 3330
    :cond_1
    invoke-virtual {v2}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    #@4d
    move-result-object v6

    #@4e
    invoke-direct {p0, v6}, Lcom/android/server/wifi/WifiStateMachine;->macAddressFromRoute(Ljava/lang/String;)Ljava/lang/String;

    #@51
    move-result-object v0

    #@52
    .line 3332
    .local v0, "address":Ljava/lang/String;
    if-nez v0, :cond_2

    #@54
    if-lez p1, :cond_2

    #@56
    .line 3335
    :try_start_0
    invoke-virtual {v2, p1}, Ljava/net/InetAddress;->isReachable(I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@59
    move-result v3

    #@5a
    .line 3341
    .local v3, "reachable":Z
    if-eqz v3, :cond_2

    #@5c
    .line 3343
    invoke-virtual {v2}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    #@5f
    move-result-object v6

    #@60
    invoke-direct {p0, v6}, Lcom/android/server/wifi/WifiStateMachine;->macAddressFromRoute(Ljava/lang/String;)Ljava/lang/String;

    #@63
    move-result-object v0

    #@64
    .line 3344
    sget-boolean v6, Lcom/android/server/wifi/WifiStateMachine;->DBG:Z

    #@66
    if-eqz v6, :cond_2

    #@68
    .line 3345
    new-instance v6, Ljava/lang/StringBuilder;

    #@6a
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@6d
    const-string/jumbo v7, "updateDefaultRouteMacAddress reachable (tried again) :"

    #@70
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@73
    move-result-object v6

    #@74
    .line 3346
    invoke-virtual {v2}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    #@77
    move-result-object v7

    #@78
    .line 3345
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@7b
    move-result-object v6

    #@7c
    .line 3346
    const-string/jumbo v7, " found "

    #@7f
    .line 3345
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@82
    move-result-object v6

    #@83
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@86
    move-result-object v6

    #@87
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@8a
    move-result-object v6

    #@8b
    invoke-virtual {p0, v6}, Lcom/android/server/wifi/WifiStateMachine;->logd(Ljava/lang/String;)V

    #@8e
    .line 3351
    .end local v3    # "reachable":Z
    :cond_2
    :goto_1
    if-eqz v0, :cond_0

    #@90
    .line 3352
    iget-object v6, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiConfigManager:Lcom/android/server/wifi/WifiConfigManager;

    #@92
    iget v7, p0, Lcom/android/server/wifi/WifiStateMachine;->mLastNetworkId:I

    #@94
    invoke-virtual {v6, v7, v0}, Lcom/android/server/wifi/WifiConfigManager;->setDefaultGwMacAddress(ILjava/lang/String;)V

    #@97
    goto/16 :goto_0

    #@99
    .line 3336
    :catch_0
    move-exception v1

    #@9a
    .line 3337
    .local v1, "e":Ljava/lang/Exception;
    :try_start_1
    new-instance v6, Ljava/lang/StringBuilder;

    #@9c
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@9f
    const-string/jumbo v7, "updateDefaultRouteMacAddress exception reaching :"

    #@a2
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a5
    move-result-object v6

    #@a6
    .line 3338
    invoke-virtual {v2}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    #@a9
    move-result-object v7

    #@aa
    .line 3337
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@ad
    move-result-object v6

    #@ae
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@b1
    move-result-object v6

    #@b2
    invoke-virtual {p0, v6}, Lcom/android/server/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@b5
    goto :goto_1

    #@b6
    .line 3340
    .end local v1    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v6

    #@b7
    throw v6

    #@b8
    .line 3357
    .end local v0    # "address":Ljava/lang/String;
    .end local v2    # "gateway":Ljava/net/InetAddress;
    .end local v4    # "route":Landroid/net/RouteInfo;
    :cond_3
    return-object v0
.end method

.method private updateLinkProperties(Landroid/net/LinkProperties;)V
    .locals 3
    .param p1, "newLp"    # Landroid/net/LinkProperties;

    #@0
    .prologue
    .line 3271
    sget-boolean v1, Lcom/android/server/wifi/WifiStateMachine;->DBG:Z

    #@2
    if-eqz v1, :cond_0

    #@4
    .line 3272
    new-instance v1, Ljava/lang/StringBuilder;

    #@6
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@9
    const-string/jumbo v2, "Link configuration changed for netId: "

    #@c
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@f
    move-result-object v1

    #@10
    iget v2, p0, Lcom/android/server/wifi/WifiStateMachine;->mLastNetworkId:I

    #@12
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@15
    move-result-object v1

    #@16
    .line 3273
    const-string/jumbo v2, " old: "

    #@19
    .line 3272
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1c
    move-result-object v1

    #@1d
    .line 3273
    iget-object v2, p0, Lcom/android/server/wifi/WifiStateMachine;->mLinkProperties:Landroid/net/LinkProperties;

    #@1f
    .line 3272
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@22
    move-result-object v1

    #@23
    .line 3273
    const-string/jumbo v2, " new: "

    #@26
    .line 3272
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@29
    move-result-object v1

    #@2a
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@2d
    move-result-object v1

    #@2e
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@31
    move-result-object v1

    #@32
    invoke-virtual {p0, v1}, Lcom/android/server/wifi/WifiStateMachine;->log(Ljava/lang/String;)V

    #@35
    .line 3276
    :cond_0
    iput-object p1, p0, Lcom/android/server/wifi/WifiStateMachine;->mLinkProperties:Landroid/net/LinkProperties;

    #@37
    .line 3277
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine;->mNetworkAgent:Lcom/android/server/wifi/WifiStateMachine$WifiNetworkAgent;

    #@39
    if-eqz v1, :cond_1

    #@3b
    .line 3278
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine;->mNetworkAgent:Lcom/android/server/wifi/WifiStateMachine$WifiNetworkAgent;

    #@3d
    iget-object v2, p0, Lcom/android/server/wifi/WifiStateMachine;->mLinkProperties:Landroid/net/LinkProperties;

    #@3f
    invoke-virtual {v1, v2}, Lcom/android/server/wifi/WifiStateMachine$WifiNetworkAgent;->sendLinkProperties(Landroid/net/LinkProperties;)V

    #@42
    .line 3281
    :cond_1
    invoke-direct {p0}, Lcom/android/server/wifi/WifiStateMachine;->getNetworkDetailedState()Landroid/net/NetworkInfo$DetailedState;

    #@45
    move-result-object v1

    #@46
    sget-object v2, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    #@48
    if-ne v1, v2, :cond_2

    #@4a
    .line 3284
    invoke-direct {p0}, Lcom/android/server/wifi/WifiStateMachine;->sendLinkConfigurationChangedBroadcast()V

    #@4d
    .line 3287
    :cond_2
    sget-boolean v1, Lcom/android/server/wifi/WifiStateMachine;->DBG:Z

    #@4f
    if-eqz v1, :cond_4

    #@51
    .line 3288
    new-instance v0, Ljava/lang/StringBuilder;

    #@53
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@56
    .line 3289
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string/jumbo v1, "updateLinkProperties nid: "

    #@59
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5c
    move-result-object v1

    #@5d
    iget v2, p0, Lcom/android/server/wifi/WifiStateMachine;->mLastNetworkId:I

    #@5f
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@62
    .line 3290
    const-string/jumbo v1, " state: "

    #@65
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@68
    move-result-object v1

    #@69
    invoke-direct {p0}, Lcom/android/server/wifi/WifiStateMachine;->getNetworkDetailedState()Landroid/net/NetworkInfo$DetailedState;

    #@6c
    move-result-object v2

    #@6d
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@70
    .line 3292
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine;->mLinkProperties:Landroid/net/LinkProperties;

    #@72
    if-eqz v1, :cond_3

    #@74
    .line 3293
    const-string/jumbo v1, " "

    #@77
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@7a
    .line 3294
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine;->mLinkProperties:Landroid/net/LinkProperties;

    #@7c
    invoke-static {v1}, Lcom/android/server/wifi/WifiStateMachine;->getLinkPropertiesSummary(Landroid/net/LinkProperties;)Ljava/lang/String;

    #@7f
    move-result-object v1

    #@80
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@83
    .line 3296
    :cond_3
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@86
    move-result-object v1

    #@87
    invoke-virtual {p0, v1}, Lcom/android/server/wifi/WifiStateMachine;->logd(Ljava/lang/String;)V

    #@8a
    .line 3270
    .end local v0    # "sb":Ljava/lang/StringBuilder;
    :cond_4
    return-void
.end method

.method private wnmFrameReceived(Lcom/android/server/wifi/WnmData;)V
    .locals 6
    .param p1, "event"    # Lcom/android/server/wifi/WnmData;

    #@0
    .prologue
    .line 8245
    new-instance v1, Landroid/content/Intent;

    #@2
    const-string/jumbo v2, "android.net.wifi.PASSPOINT_WNM_FRAME_RECEIVED"

    #@5
    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    #@8
    .line 8246
    .local v1, "intent":Landroid/content/Intent;
    const/high16 v2, 0x4000000

    #@a
    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    #@d
    .line 8248
    const-string/jumbo v2, "bssid"

    #@10
    invoke-virtual {p1}, Lcom/android/server/wifi/WnmData;->getBssid()J

    #@13
    move-result-wide v4

    #@14
    invoke-virtual {v1, v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    #@17
    .line 8249
    const-string/jumbo v2, "url"

    #@1a
    invoke-virtual {p1}, Lcom/android/server/wifi/WnmData;->getUrl()Ljava/lang/String;

    #@1d
    move-result-object v3

    #@1e
    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    #@21
    .line 8251
    invoke-virtual {p1}, Lcom/android/server/wifi/WnmData;->isDeauthEvent()Z

    #@24
    move-result v2

    #@25
    if-eqz v2, :cond_1

    #@27
    .line 8252
    const-string/jumbo v2, "ess"

    #@2a
    invoke-virtual {p1}, Lcom/android/server/wifi/WnmData;->isEss()Z

    #@2d
    move-result v3

    #@2e
    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    #@31
    .line 8253
    const-string/jumbo v2, "delay"

    #@34
    invoke-virtual {p1}, Lcom/android/server/wifi/WnmData;->getDelay()I

    #@37
    move-result v3

    #@38
    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    #@3b
    .line 8262
    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/android/server/wifi/WifiStateMachine;->mContext:Landroid/content/Context;

    #@3d
    sget-object v3, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    #@3f
    invoke-virtual {v2, v1, v3}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    #@42
    .line 8241
    return-void

    #@43
    .line 8255
    :cond_1
    const-string/jumbo v2, "method"

    #@46
    invoke-virtual {p1}, Lcom/android/server/wifi/WnmData;->getMethod()I

    #@49
    move-result v3

    #@4a
    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    #@4d
    .line 8256
    invoke-virtual {p0}, Lcom/android/server/wifi/WifiStateMachine;->getCurrentWifiConfiguration()Landroid/net/wifi/WifiConfiguration;

    #@50
    move-result-object v0

    #@51
    .line 8257
    .local v0, "config":Landroid/net/wifi/WifiConfiguration;
    if-eqz v0, :cond_0

    #@53
    iget-object v2, v0, Landroid/net/wifi/WifiConfiguration;->FQDN:Ljava/lang/String;

    #@55
    if-eqz v2, :cond_0

    #@57
    .line 8258
    const-string/jumbo v2, "match"

    #@5a
    .line 8259
    iget-object v3, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiConfigManager:Lcom/android/server/wifi/WifiConfigManager;

    #@5c
    iget-object v4, v0, Landroid/net/wifi/WifiConfiguration;->FQDN:Ljava/lang/String;

    #@5e
    invoke-virtual {v3, v4}, Lcom/android/server/wifi/WifiConfigManager;->matchProviderWithCurrentNetwork(Ljava/lang/String;)I

    #@61
    move-result v3

    #@62
    .line 8258
    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    #@65
    goto :goto_0
.end method


# virtual methods
.method public addToBlacklist(Ljava/lang/String;)V
    .locals 1
    .param p1, "bssid"    # Ljava/lang/String;

    #@0
    .prologue
    .line 2127
    const v0, 0x20038

    #@3
    invoke-virtual {p0, v0, p1}, Lcom/android/server/wifi/WifiStateMachine;->sendMessage(ILjava/lang/Object;)V

    #@6
    .line 2126
    return-void
.end method

.method public autoConnectToNetwork(ILjava/lang/String;)V
    .locals 3
    .param p1, "networkId"    # I
    .param p2, "bssid"    # Ljava/lang/String;

    #@0
    .prologue
    .line 8130
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiReqCountLock:Ljava/lang/Object;

    #@2
    monitor-enter v1

    #@3
    .line 8131
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/wifi/WifiStateMachine;->hasConnectionRequests()Z

    #@6
    move-result v0

    #@7
    if-eqz v0, :cond_0

    #@9
    .line 8132
    const v0, 0x2008f

    #@c
    const/4 v2, 0x0

    #@d
    invoke-virtual {p0, v0, p1, v2, p2}, Lcom/android/server/wifi/WifiStateMachine;->sendMessage(IIILjava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@10
    :cond_0
    monitor-exit v1

    #@11
    .line 8129
    return-void

    #@12
    .line 8130
    :catchall_0
    move-exception v0

    #@13
    monitor-exit v1

    #@14
    throw v0
.end method

.method public autoRoamSetBSSID(ILjava/lang/String;)V
    .locals 1
    .param p1, "netId"    # I
    .param p2, "bssid"    # Ljava/lang/String;

    #@0
    .prologue
    .line 406
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiConfigManager:Lcom/android/server/wifi/WifiConfigManager;

    #@2
    invoke-virtual {v0, p1}, Lcom/android/server/wifi/WifiConfigManager;->getWifiConfiguration(I)Landroid/net/wifi/WifiConfiguration;

    #@5
    move-result-object v0

    #@6
    invoke-virtual {p0, v0, p2}, Lcom/android/server/wifi/WifiStateMachine;->autoRoamSetBSSID(Landroid/net/wifi/WifiConfiguration;Ljava/lang/String;)Z

    #@9
    .line 405
    return-void
.end method

.method public autoRoamSetBSSID(Landroid/net/wifi/WifiConfiguration;Ljava/lang/String;)Z
    .locals 4
    .param p1, "config"    # Landroid/net/wifi/WifiConfiguration;
    .param p2, "bssid"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 410
    const/4 v0, 0x1

    #@2
    .line 411
    .local v0, "ret":Z
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine;->mTargetRoamBSSID:Ljava/lang/String;

    #@4
    if-nez v1, :cond_0

    #@6
    const-string/jumbo v1, "any"

    #@9
    iput-object v1, p0, Lcom/android/server/wifi/WifiStateMachine;->mTargetRoamBSSID:Ljava/lang/String;

    #@b
    .line 412
    :cond_0
    if-nez p2, :cond_1

    #@d
    const-string/jumbo p2, "any"

    #@10
    .line 413
    :cond_1
    if-nez p1, :cond_2

    #@12
    return v2

    #@13
    .line 415
    :cond_2
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine;->mTargetRoamBSSID:Ljava/lang/String;

    #@15
    if-eqz v1, :cond_3

    #@17
    .line 416
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine;->mTargetRoamBSSID:Ljava/lang/String;

    #@19
    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@1c
    move-result v1

    #@1d
    .line 415
    if-eqz v1, :cond_3

    #@1f
    .line 416
    iget-object v1, p1, Landroid/net/wifi/WifiConfiguration;->BSSID:Ljava/lang/String;

    #@21
    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@24
    move-result v1

    #@25
    .line 415
    if-eqz v1, :cond_3

    #@27
    .line 417
    return v2

    #@28
    .line 419
    :cond_3
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine;->mTargetRoamBSSID:Ljava/lang/String;

    #@2a
    const-string/jumbo v2, "any"

    #@2d
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@30
    move-result v1

    #@31
    if-nez v1, :cond_4

    #@33
    const-string/jumbo v1, "any"

    #@36
    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@39
    move-result v1

    #@3a
    if-eqz v1, :cond_4

    #@3c
    .line 422
    const/4 v0, 0x0

    #@3d
    .line 425
    :cond_4
    iget-object v1, p1, Landroid/net/wifi/WifiConfiguration;->BSSID:Ljava/lang/String;

    #@3f
    if-eqz v1, :cond_5

    #@41
    .line 426
    iget-object p2, p1, Landroid/net/wifi/WifiConfiguration;->BSSID:Ljava/lang/String;

    #@43
    .line 427
    sget-boolean v1, Lcom/android/server/wifi/WifiStateMachine;->DBG:Z

    #@45
    if-eqz v1, :cond_5

    #@47
    .line 428
    const-string/jumbo v1, "WifiStateMachine"

    #@4a
    new-instance v2, Ljava/lang/StringBuilder;

    #@4c
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@4f
    const-string/jumbo v3, "force BSSID to "

    #@52
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@55
    move-result-object v2

    #@56
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@59
    move-result-object v2

    #@5a
    const-string/jumbo v3, "due to config"

    #@5d
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@60
    move-result-object v2

    #@61
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@64
    move-result-object v2

    #@65
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@68
    .line 432
    :cond_5
    sget-boolean v1, Lcom/android/server/wifi/WifiStateMachine;->DBG:Z

    #@6a
    if-eqz v1, :cond_6

    #@6c
    .line 433
    new-instance v1, Ljava/lang/StringBuilder;

    #@6e
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@71
    const-string/jumbo v2, "autoRoamSetBSSID "

    #@74
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@77
    move-result-object v1

    #@78
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@7b
    move-result-object v1

    #@7c
    const-string/jumbo v2, " key="

    #@7f
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@82
    move-result-object v1

    #@83
    invoke-virtual {p1}, Landroid/net/wifi/WifiConfiguration;->configKey()Ljava/lang/String;

    #@86
    move-result-object v2

    #@87
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@8a
    move-result-object v1

    #@8b
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@8e
    move-result-object v1

    #@8f
    invoke-virtual {p0, v1}, Lcom/android/server/wifi/WifiStateMachine;->logd(Ljava/lang/String;)V

    #@92
    .line 435
    :cond_6
    iput-object p2, p0, Lcom/android/server/wifi/WifiStateMachine;->mTargetRoamBSSID:Ljava/lang/String;

    #@94
    .line 436
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiConfigManager:Lcom/android/server/wifi/WifiConfigManager;

    #@96
    invoke-virtual {v1, p1, p2}, Lcom/android/server/wifi/WifiConfigManager;->saveWifiConfigBSSID(Landroid/net/wifi/WifiConfiguration;Ljava/lang/String;)V

    #@99
    .line 437
    return v0
.end method

.method public autoRoamToNetwork(ILandroid/net/wifi/ScanResult;)V
    .locals 2
    .param p1, "networkId"    # I
    .param p2, "scanResult"    # Landroid/net/wifi/ScanResult;

    #@0
    .prologue
    .line 8144
    const v0, 0x20091

    #@3
    const/4 v1, 0x0

    #@4
    invoke-virtual {p0, v0, p1, v1, p2}, Lcom/android/server/wifi/WifiStateMachine;->sendMessage(IIILjava/lang/Object;)V

    #@7
    .line 8143
    return-void
.end method

.method public clearANQPCache()V
    .locals 2

    #@0
    .prologue
    .line 1378
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiConfigManager:Lcom/android/server/wifi/WifiConfigManager;

    #@2
    const/4 v1, 0x1

    #@3
    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiConfigManager;->trimANQPCache(Z)V

    #@6
    .line 1377
    return-void
.end method

.method public clearBlacklist()V
    .locals 1

    #@0
    .prologue
    .line 2134
    const v0, 0x20039

    #@3
    invoke-virtual {p0, v0}, Lcom/android/server/wifi/WifiStateMachine;->sendMessage(I)V

    #@6
    .line 2133
    return-void
.end method

.method clearConfigBSSID(Landroid/net/wifi/WifiConfiguration;Ljava/lang/String;)V
    .locals 2
    .param p1, "config"    # Landroid/net/wifi/WifiConfiguration;
    .param p2, "dbg"    # Ljava/lang/String;

    #@0
    .prologue
    .line 6500
    if-nez p1, :cond_0

    #@2
    .line 6501
    return-void

    #@3
    .line 6502
    :cond_0
    sget-boolean v0, Lcom/android/server/wifi/WifiStateMachine;->DBG:Z

    #@5
    if-eqz v0, :cond_1

    #@7
    .line 6503
    new-instance v0, Ljava/lang/StringBuilder;

    #@9
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@c
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@f
    move-result-object v0

    #@10
    const-string/jumbo v1, " "

    #@13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@16
    move-result-object v0

    #@17
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine;->mTargetRoamBSSID:Ljava/lang/String;

    #@19
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1c
    move-result-object v0

    #@1d
    const-string/jumbo v1, " config "

    #@20
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@23
    move-result-object v0

    #@24
    invoke-virtual {p1}, Landroid/net/wifi/WifiConfiguration;->configKey()Ljava/lang/String;

    #@27
    move-result-object v1

    #@28
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2b
    move-result-object v0

    #@2c
    .line 6504
    const-string/jumbo v1, " config.NetworkSelectionStatus.mNetworkSelectionBSSID "

    #@2f
    .line 6503
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@32
    move-result-object v0

    #@33
    .line 6505
    invoke-virtual {p1}, Landroid/net/wifi/WifiConfiguration;->getNetworkSelectionStatus()Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;

    #@36
    move-result-object v1

    #@37
    invoke-virtual {v1}, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->getNetworkSelectionBSSID()Ljava/lang/String;

    #@3a
    move-result-object v1

    #@3b
    .line 6503
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3e
    move-result-object v0

    #@3f
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@42
    move-result-object v0

    #@43
    invoke-virtual {p0, v0}, Lcom/android/server/wifi/WifiStateMachine;->logd(Ljava/lang/String;)V

    #@46
    .line 6507
    :cond_1
    sget-boolean v0, Lcom/android/server/wifi/WifiStateMachine;->DBG:Z

    #@48
    if-eqz v0, :cond_2

    #@4a
    .line 6508
    new-instance v0, Ljava/lang/StringBuilder;

    #@4c
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@4f
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@52
    move-result-object v0

    #@53
    const-string/jumbo v1, " "

    #@56
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@59
    move-result-object v0

    #@5a
    iget-object v1, p1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    #@5c
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5f
    move-result-object v0

    #@60
    .line 6509
    const-string/jumbo v1, " nid="

    #@63
    .line 6508
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@66
    move-result-object v0

    #@67
    .line 6509
    iget v1, p1, Landroid/net/wifi/WifiConfiguration;->networkId:I

    #@69
    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    #@6c
    move-result-object v1

    #@6d
    .line 6508
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@70
    move-result-object v0

    #@71
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@74
    move-result-object v0

    #@75
    invoke-virtual {p0, v0}, Lcom/android/server/wifi/WifiStateMachine;->logd(Ljava/lang/String;)V

    #@78
    .line 6511
    :cond_2
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiConfigManager:Lcom/android/server/wifi/WifiConfigManager;

    #@7a
    const-string/jumbo v1, "any"

    #@7d
    invoke-virtual {v0, p1, v1}, Lcom/android/server/wifi/WifiConfigManager;->saveWifiConfigBSSID(Landroid/net/wifi/WifiConfiguration;Ljava/lang/String;)V

    #@80
    .line 6499
    return-void
.end method

.method clearCurrentConfigBSSID(Ljava/lang/String;)V
    .locals 1
    .param p1, "dbg"    # Ljava/lang/String;

    #@0
    .prologue
    .line 6494
    invoke-virtual {p0}, Lcom/android/server/wifi/WifiStateMachine;->getCurrentWifiConfiguration()Landroid/net/wifi/WifiConfiguration;

    #@3
    move-result-object v0

    #@4
    .line 6495
    .local v0, "config":Landroid/net/wifi/WifiConfiguration;
    if-nez v0, :cond_0

    #@6
    .line 6496
    return-void

    #@7
    .line 6497
    :cond_0
    invoke-virtual {p0, v0, p1}, Lcom/android/server/wifi/WifiStateMachine;->clearConfigBSSID(Landroid/net/wifi/WifiConfiguration;Ljava/lang/String;)V

    #@a
    .line 6492
    return-void
.end method

.method public deauthenticateNetwork(Lcom/android/internal/util/AsyncChannel;JZ)V
    .locals 0
    .param p1, "channel"    # Lcom/android/internal/util/AsyncChannel;
    .param p2, "holdoff"    # J
    .param p4, "ess"    # Z

    #@0
    .prologue
    .line 1954
    return-void
.end method

.method deferForUserInput(Landroid/os/Message;IZ)Z
    .locals 4
    .param p1, "message"    # Landroid/os/Message;
    .param p2, "netId"    # I
    .param p3, "allowOverride"    # Z

    #@0
    .prologue
    const/4 v3, 0x1

    #@1
    const/4 v2, 0x0

    #@2
    .line 509
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiConfigManager:Lcom/android/server/wifi/WifiConfigManager;

    #@4
    invoke-virtual {v1, p2}, Lcom/android/server/wifi/WifiConfigManager;->getWifiConfiguration(I)Landroid/net/wifi/WifiConfiguration;

    #@7
    move-result-object v0

    #@8
    .line 512
    .local v0, "config":Landroid/net/wifi/WifiConfiguration;
    if-nez v0, :cond_0

    #@a
    .line 513
    new-instance v1, Ljava/lang/StringBuilder;

    #@c
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@f
    const-string/jumbo v2, "deferForUserInput: configuration for netId="

    #@12
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@15
    move-result-object v1

    #@16
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@19
    move-result-object v1

    #@1a
    const-string/jumbo v2, " not stored"

    #@1d
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@20
    move-result-object v1

    #@21
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@24
    move-result-object v1

    #@25
    invoke-virtual {p0, v1}, Lcom/android/server/wifi/WifiStateMachine;->logd(Ljava/lang/String;)V

    #@28
    .line 514
    return v3

    #@29
    .line 517
    :cond_0
    iget v1, v0, Landroid/net/wifi/WifiConfiguration;->userApproved:I

    #@2b
    packed-switch v1, :pswitch_data_0

    #@2e
    .line 525
    iput v3, v0, Landroid/net/wifi/WifiConfiguration;->userApproved:I

    #@30
    .line 526
    return v2

    #@31
    .line 520
    :pswitch_0
    return v2

    #@32
    .line 517
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public disableEphemeralNetwork(Ljava/lang/String;)V
    .locals 1
    .param p1, "SSID"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1959
    if-eqz p1, :cond_0

    #@2
    .line 1960
    const v0, 0x20062

    #@5
    invoke-virtual {p0, v0, p1}, Lcom/android/server/wifi/WifiStateMachine;->sendMessage(ILjava/lang/Object;)V

    #@8
    .line 1958
    :cond_0
    return-void
.end method

.method public disconnectCommand()V
    .locals 1

    #@0
    .prologue
    .line 1968
    const v0, 0x20049

    #@3
    invoke-virtual {p0, v0}, Lcom/android/server/wifi/WifiStateMachine;->sendMessage(I)V

    #@6
    .line 1967
    return-void
.end method

.method public disconnectCommand(II)V
    .locals 1
    .param p1, "uid"    # I
    .param p2, "reason"    # I

    #@0
    .prologue
    .line 1972
    const v0, 0x20049

    #@3
    invoke-virtual {p0, v0, p1, p2}, Lcom/android/server/wifi/WifiStateMachine;->sendMessage(III)V

    #@6
    .line 1971
    return-void
.end method

.method doNetworkStatus(I)V
    .locals 1
    .param p1, "status"    # I

    #@0
    .prologue
    .line 6412
    const v0, 0x20094

    #@3
    invoke-virtual {p0, v0, p1}, Lcom/android/server/wifi/WifiStateMachine;->sendMessage(II)V

    #@6
    .line 6411
    return-void
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 4
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    const/4 v3, 0x1

    #@2
    .line 2308
    array-length v1, p3

    #@3
    if-le v1, v3, :cond_0

    #@5
    const-string/jumbo v1, "wifiMetricsProto"

    #@8
    aget-object v2, p3, v2

    #@a
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@d
    move-result v1

    #@e
    if-eqz v1, :cond_0

    #@10
    .line 2309
    const-string/jumbo v1, "clean"

    #@13
    aget-object v2, p3, v3

    #@15
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@18
    move-result v1

    #@19
    .line 2308
    if-eqz v1, :cond_0

    #@1b
    .line 2311
    invoke-virtual {p0}, Lcom/android/server/wifi/WifiStateMachine;->updateWifiMetrics()V

    #@1e
    .line 2312
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiMetrics:Lcom/android/server/wifi/WifiMetrics;

    #@20
    invoke-virtual {v1, p1, p2, p3}, Lcom/android/server/wifi/WifiMetrics;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    #@23
    .line 2313
    return-void

    #@24
    .line 2315
    :cond_0
    invoke-super {p0, p1, p2, p3}, Lcom/android/internal/util/StateMachine;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    #@27
    .line 2316
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine;->mSupplicantStateTracker:Lcom/android/server/wifi/SupplicantStateTracker;

    #@29
    invoke-virtual {v1, p1, p2, p3}, Lcom/android/server/wifi/SupplicantStateTracker;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    #@2c
    .line 2317
    new-instance v1, Ljava/lang/StringBuilder;

    #@2e
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@31
    const-string/jumbo v2, "mLinkProperties "

    #@34
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@37
    move-result-object v1

    #@38
    iget-object v2, p0, Lcom/android/server/wifi/WifiStateMachine;->mLinkProperties:Landroid/net/LinkProperties;

    #@3a
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@3d
    move-result-object v1

    #@3e
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@41
    move-result-object v1

    #@42
    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@45
    .line 2318
    new-instance v1, Ljava/lang/StringBuilder;

    #@47
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@4a
    const-string/jumbo v2, "mWifiInfo "

    #@4d
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@50
    move-result-object v1

    #@51
    iget-object v2, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    #@53
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@56
    move-result-object v1

    #@57
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@5a
    move-result-object v1

    #@5b
    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@5e
    .line 2319
    new-instance v1, Ljava/lang/StringBuilder;

    #@60
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@63
    const-string/jumbo v2, "mDhcpResults "

    #@66
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@69
    move-result-object v1

    #@6a
    iget-object v2, p0, Lcom/android/server/wifi/WifiStateMachine;->mDhcpResults:Landroid/net/DhcpResults;

    #@6c
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@6f
    move-result-object v1

    #@70
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@73
    move-result-object v1

    #@74
    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@77
    .line 2320
    new-instance v1, Ljava/lang/StringBuilder;

    #@79
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@7c
    const-string/jumbo v2, "mNetworkInfo "

    #@7f
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@82
    move-result-object v1

    #@83
    iget-object v2, p0, Lcom/android/server/wifi/WifiStateMachine;->mNetworkInfo:Landroid/net/NetworkInfo;

    #@85
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@88
    move-result-object v1

    #@89
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@8c
    move-result-object v1

    #@8d
    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@90
    .line 2321
    new-instance v1, Ljava/lang/StringBuilder;

    #@92
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@95
    const-string/jumbo v2, "mLastSignalLevel "

    #@98
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@9b
    move-result-object v1

    #@9c
    iget v2, p0, Lcom/android/server/wifi/WifiStateMachine;->mLastSignalLevel:I

    #@9e
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@a1
    move-result-object v1

    #@a2
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@a5
    move-result-object v1

    #@a6
    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@a9
    .line 2322
    new-instance v1, Ljava/lang/StringBuilder;

    #@ab
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@ae
    const-string/jumbo v2, "mLastBssid "

    #@b1
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b4
    move-result-object v1

    #@b5
    iget-object v2, p0, Lcom/android/server/wifi/WifiStateMachine;->mLastBssid:Ljava/lang/String;

    #@b7
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@ba
    move-result-object v1

    #@bb
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@be
    move-result-object v1

    #@bf
    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@c2
    .line 2323
    new-instance v1, Ljava/lang/StringBuilder;

    #@c4
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@c7
    const-string/jumbo v2, "mLastNetworkId "

    #@ca
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@cd
    move-result-object v1

    #@ce
    iget v2, p0, Lcom/android/server/wifi/WifiStateMachine;->mLastNetworkId:I

    #@d0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@d3
    move-result-object v1

    #@d4
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@d7
    move-result-object v1

    #@d8
    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@db
    .line 2324
    new-instance v1, Ljava/lang/StringBuilder;

    #@dd
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@e0
    const-string/jumbo v2, "mOperationalMode "

    #@e3
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@e6
    move-result-object v1

    #@e7
    iget v2, p0, Lcom/android/server/wifi/WifiStateMachine;->mOperationalMode:I

    #@e9
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@ec
    move-result-object v1

    #@ed
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@f0
    move-result-object v1

    #@f1
    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@f4
    .line 2325
    new-instance v1, Ljava/lang/StringBuilder;

    #@f6
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@f9
    const-string/jumbo v2, "mUserWantsSuspendOpt "

    #@fc
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@ff
    move-result-object v1

    #@100
    iget-object v2, p0, Lcom/android/server/wifi/WifiStateMachine;->mUserWantsSuspendOpt:Ljava/util/concurrent/atomic/AtomicBoolean;

    #@102
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@105
    move-result-object v1

    #@106
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@109
    move-result-object v1

    #@10a
    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@10d
    .line 2326
    new-instance v1, Ljava/lang/StringBuilder;

    #@10f
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@112
    const-string/jumbo v2, "mSuspendOptNeedsDisabled "

    #@115
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@118
    move-result-object v1

    #@119
    iget v2, p0, Lcom/android/server/wifi/WifiStateMachine;->mSuspendOptNeedsDisabled:I

    #@11b
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@11e
    move-result-object v1

    #@11f
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@122
    move-result-object v1

    #@123
    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@126
    .line 2327
    new-instance v1, Ljava/lang/StringBuilder;

    #@128
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@12b
    const-string/jumbo v2, "Supplicant status "

    #@12e
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@131
    move-result-object v1

    #@132
    iget-object v2, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    #@134
    invoke-virtual {v2, v3}, Lcom/android/server/wifi/WifiNative;->status(Z)Ljava/lang/String;

    #@137
    move-result-object v2

    #@138
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@13b
    move-result-object v1

    #@13c
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@13f
    move-result-object v1

    #@140
    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@143
    .line 2328
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine;->mCountryCode:Lcom/android/server/wifi/WifiCountryCode;

    #@145
    invoke-virtual {v1}, Lcom/android/server/wifi/WifiCountryCode;->getCountryCodeSentToDriver()Ljava/lang/String;

    #@148
    move-result-object v1

    #@149
    if-eqz v1, :cond_1

    #@14b
    .line 2329
    new-instance v1, Ljava/lang/StringBuilder;

    #@14d
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@150
    const-string/jumbo v2, "CountryCode sent to driver "

    #@153
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@156
    move-result-object v1

    #@157
    iget-object v2, p0, Lcom/android/server/wifi/WifiStateMachine;->mCountryCode:Lcom/android/server/wifi/WifiCountryCode;

    #@159
    invoke-virtual {v2}, Lcom/android/server/wifi/WifiCountryCode;->getCountryCodeSentToDriver()Ljava/lang/String;

    #@15c
    move-result-object v2

    #@15d
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@160
    move-result-object v1

    #@161
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@164
    move-result-object v1

    #@165
    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@168
    .line 2338
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    #@16a
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@16d
    const-string/jumbo v2, "mConnectedModeGScanOffloadStarted "

    #@170
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@173
    move-result-object v1

    #@174
    iget-boolean v2, p0, Lcom/android/server/wifi/WifiStateMachine;->mConnectedModeGScanOffloadStarted:Z

    #@176
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@179
    move-result-object v1

    #@17a
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@17d
    move-result-object v1

    #@17e
    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@181
    .line 2339
    new-instance v1, Ljava/lang/StringBuilder;

    #@183
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@186
    const-string/jumbo v2, "mGScanPeriodMilli "

    #@189
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@18c
    move-result-object v1

    #@18d
    iget-wide v2, p0, Lcom/android/server/wifi/WifiStateMachine;->mGScanPeriodMilli:J

    #@18f
    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    #@192
    move-result-object v1

    #@193
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@196
    move-result-object v1

    #@197
    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@19a
    .line 2340
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine;->mWhiteListedSsids:[Ljava/lang/String;

    #@19c
    if-eqz v1, :cond_3

    #@19e
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine;->mWhiteListedSsids:[Ljava/lang/String;

    #@1a0
    array-length v1, v1

    #@1a1
    if-lez v1, :cond_3

    #@1a3
    .line 2341
    const-string/jumbo v1, "SSID whitelist :"

    #@1a6
    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@1a9
    .line 2342
    const/4 v0, 0x0

    #@1aa
    .local v0, "i":I
    :goto_1
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine;->mWhiteListedSsids:[Ljava/lang/String;

    #@1ac
    array-length v1, v1

    #@1ad
    if-ge v0, v1, :cond_3

    #@1af
    .line 2343
    new-instance v1, Ljava/lang/StringBuilder;

    #@1b1
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@1b4
    const-string/jumbo v2, "       "

    #@1b7
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1ba
    move-result-object v1

    #@1bb
    iget-object v2, p0, Lcom/android/server/wifi/WifiStateMachine;->mWhiteListedSsids:[Ljava/lang/String;

    #@1bd
    aget-object v2, v2, v0

    #@1bf
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1c2
    move-result-object v1

    #@1c3
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1c6
    move-result-object v1

    #@1c7
    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@1ca
    .line 2342
    add-int/lit8 v0, v0, 0x1

    #@1cc
    goto :goto_1

    #@1cd
    .line 2331
    .end local v0    # "i":I
    :cond_1
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine;->mCountryCode:Lcom/android/server/wifi/WifiCountryCode;

    #@1cf
    invoke-virtual {v1}, Lcom/android/server/wifi/WifiCountryCode;->getCountryCode()Ljava/lang/String;

    #@1d2
    move-result-object v1

    #@1d3
    if-eqz v1, :cond_2

    #@1d5
    .line 2332
    new-instance v1, Ljava/lang/StringBuilder;

    #@1d7
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@1da
    const-string/jumbo v2, "CountryCode: "

    #@1dd
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1e0
    move-result-object v1

    #@1e1
    .line 2333
    iget-object v2, p0, Lcom/android/server/wifi/WifiStateMachine;->mCountryCode:Lcom/android/server/wifi/WifiCountryCode;

    #@1e3
    invoke-virtual {v2}, Lcom/android/server/wifi/WifiCountryCode;->getCountryCode()Ljava/lang/String;

    #@1e6
    move-result-object v2

    #@1e7
    .line 2332
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1ea
    move-result-object v1

    #@1eb
    .line 2333
    const-string/jumbo v2, " was not sent to driver"

    #@1ee
    .line 2332
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1f1
    move-result-object v1

    #@1f2
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1f5
    move-result-object v1

    #@1f6
    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@1f9
    goto/16 :goto_0

    #@1fb
    .line 2335
    :cond_2
    const-string/jumbo v1, "CountryCode was not initialized"

    #@1fe
    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@201
    goto/16 :goto_0

    #@203
    .line 2346
    :cond_3
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine;->mNetworkFactory:Lcom/android/server/wifi/WifiStateMachine$WifiNetworkFactory;

    #@205
    if-eqz v1, :cond_5

    #@207
    .line 2347
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine;->mNetworkFactory:Lcom/android/server/wifi/WifiStateMachine$WifiNetworkFactory;

    #@209
    invoke-virtual {v1, p1, p2, p3}, Lcom/android/server/wifi/WifiStateMachine$WifiNetworkFactory;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    #@20c
    .line 2352
    :goto_2
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine;->mUntrustedNetworkFactory:Lcom/android/server/wifi/WifiStateMachine$UntrustedWifiNetworkFactory;

    #@20e
    if-eqz v1, :cond_6

    #@210
    .line 2353
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine;->mUntrustedNetworkFactory:Lcom/android/server/wifi/WifiStateMachine$UntrustedWifiNetworkFactory;

    #@212
    invoke-virtual {v1, p1, p2, p3}, Lcom/android/server/wifi/WifiStateMachine$UntrustedWifiNetworkFactory;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    #@215
    .line 2357
    :goto_3
    new-instance v1, Ljava/lang/StringBuilder;

    #@217
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@21a
    const-string/jumbo v2, "Wlan Wake Reasons:"

    #@21d
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@220
    move-result-object v1

    #@221
    iget-object v2, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    #@223
    invoke-virtual {v2}, Lcom/android/server/wifi/WifiNative;->getWlanWakeReasonCount()Landroid/net/wifi/WifiWakeReasonAndCounts;

    #@226
    move-result-object v2

    #@227
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@22a
    move-result-object v1

    #@22b
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@22e
    move-result-object v1

    #@22f
    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@232
    .line 2358
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    #@235
    .line 2359
    invoke-virtual {p0}, Lcom/android/server/wifi/WifiStateMachine;->updateWifiMetrics()V

    #@238
    .line 2360
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiMetrics:Lcom/android/server/wifi/WifiMetrics;

    #@23a
    invoke-virtual {v1, p1, p2, p3}, Lcom/android/server/wifi/WifiMetrics;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    #@23d
    .line 2361
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    #@240
    .line 2363
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiConfigManager:Lcom/android/server/wifi/WifiConfigManager;

    #@242
    invoke-virtual {v1, p1, p2, p3}, Lcom/android/server/wifi/WifiConfigManager;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    #@245
    .line 2364
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    #@248
    .line 2365
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiLogger:Lcom/android/server/wifi/BaseWifiLogger;

    #@24a
    const/4 v2, 0x7

    #@24b
    invoke-virtual {v1, v2}, Lcom/android/server/wifi/BaseWifiLogger;->captureBugReportData(I)V

    #@24e
    .line 2366
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiLogger:Lcom/android/server/wifi/BaseWifiLogger;

    #@250
    invoke-virtual {v1, p1, p2, p3}, Lcom/android/server/wifi/BaseWifiLogger;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    #@253
    .line 2367
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiQualifiedNetworkSelector:Lcom/android/server/wifi/WifiQualifiedNetworkSelector;

    #@255
    invoke-virtual {v1, p1, p2, p3}, Lcom/android/server/wifi/WifiQualifiedNetworkSelector;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    #@258
    .line 2368
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/wifi/WifiStateMachine;->dumpIpManager(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    #@25b
    .line 2369
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiConnectivityManager:Lcom/android/server/wifi/WifiConnectivityManager;

    #@25d
    if-eqz v1, :cond_4

    #@25f
    .line 2370
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiConnectivityManager:Lcom/android/server/wifi/WifiConnectivityManager;

    #@261
    invoke-virtual {v1, p1, p2, p3}, Lcom/android/server/wifi/WifiConnectivityManager;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    #@264
    .line 2307
    :cond_4
    return-void

    #@265
    .line 2349
    :cond_5
    const-string/jumbo v1, "mNetworkFactory is not initialized"

    #@268
    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@26b
    goto :goto_2

    #@26c
    .line 2355
    :cond_6
    const-string/jumbo v1, "mUntrustedNetworkFactory is not initialized"

    #@26f
    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@272
    goto :goto_3
.end method

.method public dumpIpManager(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 1
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    #@0
    .prologue
    .line 2303
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mIpManager:Landroid/net/ip/IpManager;

    #@2
    invoke-virtual {v0, p1, p2, p3}, Landroid/net/ip/IpManager;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    #@5
    .line 2302
    return-void
.end method

.method enableAggressiveHandover(I)V
    .locals 0
    .param p1, "enabled"    # I

    #@0
    .prologue
    .line 1374
    iput p1, p0, Lcom/android/server/wifi/WifiStateMachine;->mAggressiveHandover:I

    #@2
    .line 1373
    return-void
.end method

.method public enableAllNetworks()V
    .locals 1

    #@0
    .prologue
    .line 2142
    const v0, 0x20037

    #@3
    invoke-virtual {p0, v0}, Lcom/android/server/wifi/WifiStateMachine;->sendMessage(I)V

    #@6
    .line 2141
    return-void
.end method

.method public enableRssiPolling(Z)V
    .locals 3
    .param p1, "enabled"    # Z

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 2138
    if-eqz p1, :cond_0

    #@3
    const/4 v0, 0x1

    #@4
    :goto_0
    const v2, 0x20052

    #@7
    invoke-virtual {p0, v2, v0, v1}, Lcom/android/server/wifi/WifiStateMachine;->sendMessage(III)V

    #@a
    .line 2137
    return-void

    #@b
    :cond_0
    move v0, v1

    #@c
    .line 2138
    goto :goto_0
.end method

.method public enableTdls(Ljava/lang/String;Z)V
    .locals 3
    .param p1, "remoteMacAddress"    # Ljava/lang/String;
    .param p2, "enable"    # Z

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 2210
    if-eqz p2, :cond_0

    #@3
    const/4 v0, 0x1

    #@4
    .line 2211
    .local v0, "enabler":I
    :goto_0
    const v2, 0x2005c

    #@7
    invoke-virtual {p0, v2, v0, v1, p1}, Lcom/android/server/wifi/WifiStateMachine;->sendMessage(IIILjava/lang/Object;)V

    #@a
    .line 2209
    return-void

    #@b
    .end local v0    # "enabler":I
    :cond_0
    move v0, v1

    #@c
    .line 2210
    goto :goto_0
.end method

.method enableVerboseLogging(I)V
    .locals 3
    .param p1, "verbose"    # I

    #@0
    .prologue
    .line 1302
    iget v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mVerboseLoggingLevel:I

    #@2
    if-ne v0, p1, :cond_0

    #@4
    .line 1305
    return-void

    #@5
    .line 1307
    :cond_0
    iput p1, p0, Lcom/android/server/wifi/WifiStateMachine;->mVerboseLoggingLevel:I

    #@7
    .line 1308
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mFacade:Lcom/android/server/wifi/FrameworkFacade;

    #@9
    .line 1309
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine;->mContext:Landroid/content/Context;

    #@b
    const-string/jumbo v2, "wifi_verbose_logging_enabled"

    #@e
    .line 1308
    invoke-virtual {v0, v1, v2, p1}, Lcom/android/server/wifi/FrameworkFacade;->setIntegerSetting(Landroid/content/Context;Ljava/lang/String;I)Z

    #@11
    .line 1310
    invoke-virtual {p0}, Lcom/android/server/wifi/WifiStateMachine;->updateLoggingLevel()V

    #@14
    .line 1301
    return-void
.end method

.method public enableWifiConnectivityManager(Z)V
    .locals 2
    .param p1, "enabled"    # Z

    #@0
    .prologue
    .line 8153
    if-eqz p1, :cond_0

    #@2
    const/4 v0, 0x1

    #@3
    :goto_0
    const v1, 0x200a6

    #@6
    invoke-virtual {p0, v1, v0}, Lcom/android/server/wifi/WifiStateMachine;->sendMessage(II)V

    #@9
    .line 8152
    return-void

    #@a
    .line 8153
    :cond_0
    const/4 v0, 0x0

    #@b
    goto :goto_0
.end method

.method getAggressiveHandover()I
    .locals 1

    #@0
    .prologue
    .line 1370
    iget v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mAggressiveHandover:I

    #@2
    return v0
.end method

.method public getAllowScansWithTraffic()I
    .locals 1

    #@0
    .prologue
    .line 1386
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiConfigManager:Lcom/android/server/wifi/WifiConfigManager;

    #@2
    iget-object v0, v0, Lcom/android/server/wifi/WifiConfigManager;->mAlwaysEnableScansWhileAssociated:Ljava/util/concurrent/atomic/AtomicInteger;

    #@4
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    #@7
    move-result v0

    #@8
    return v0
.end method

.method public getConfigFile()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 2225
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiConfigManager:Lcom/android/server/wifi/WifiConfigManager;

    #@2
    invoke-virtual {v0}, Lcom/android/server/wifi/WifiConfigManager;->getConfigFile()Ljava/lang/String;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method getCurrentBSSID()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 5351
    iget-boolean v0, p0, Lcom/android/server/wifi/WifiStateMachine;->linkDebouncing:Z

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 5352
    const/4 v0, 0x0

    #@5
    return-object v0

    #@6
    .line 5354
    :cond_0
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mLastBssid:Ljava/lang/String;

    #@8
    return-object v0
.end method

.method public getCurrentNetwork()Landroid/net/Network;
    .locals 2

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 2183
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mNetworkAgent:Lcom/android/server/wifi/WifiStateMachine$WifiNetworkAgent;

    #@3
    if-eqz v0, :cond_0

    #@5
    .line 2184
    new-instance v0, Landroid/net/Network;

    #@7
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine;->mNetworkAgent:Lcom/android/server/wifi/WifiStateMachine$WifiNetworkAgent;

    #@9
    iget v1, v1, Lcom/android/server/wifi/WifiStateMachine$WifiNetworkAgent;->netId:I

    #@b
    invoke-direct {v0, v1}, Landroid/net/Network;-><init>(I)V

    #@e
    return-object v0

    #@f
    .line 2186
    :cond_0
    return-object v1
.end method

.method getCurrentScanResult()Landroid/net/wifi/ScanResult;
    .locals 5

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 5332
    invoke-virtual {p0}, Lcom/android/server/wifi/WifiStateMachine;->getCurrentWifiConfiguration()Landroid/net/wifi/WifiConfiguration;

    #@4
    move-result-object v1

    #@5
    .line 5333
    .local v1, "config":Landroid/net/wifi/WifiConfiguration;
    if-nez v1, :cond_0

    #@7
    .line 5334
    return-object v4

    #@8
    .line 5336
    :cond_0
    iget-object v3, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    #@a
    invoke-virtual {v3}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;

    #@d
    move-result-object v0

    #@e
    .line 5337
    .local v0, "BSSID":Ljava/lang/String;
    if-nez v0, :cond_1

    #@10
    .line 5338
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mTargetRoamBSSID:Ljava/lang/String;

    #@12
    .line 5341
    :cond_1
    iget-object v3, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiConfigManager:Lcom/android/server/wifi/WifiConfigManager;

    #@14
    invoke-virtual {v3, v1}, Lcom/android/server/wifi/WifiConfigManager;->getScanDetailCache(Landroid/net/wifi/WifiConfiguration;)Lcom/android/server/wifi/ScanDetailCache;

    #@17
    move-result-object v2

    #@18
    .line 5343
    .local v2, "scanDetailCache":Lcom/android/server/wifi/ScanDetailCache;
    if-nez v2, :cond_2

    #@1a
    .line 5344
    return-object v4

    #@1b
    .line 5347
    :cond_2
    invoke-virtual {v2, v0}, Lcom/android/server/wifi/ScanDetailCache;->get(Ljava/lang/String;)Landroid/net/wifi/ScanResult;

    #@1e
    move-result-object v3

    #@1f
    return-object v3
.end method

.method public getCurrentWifiConfiguration()Landroid/net/wifi/WifiConfiguration;
    .locals 2

    #@0
    .prologue
    .line 5325
    iget v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mLastNetworkId:I

    #@2
    const/4 v1, -0x1

    #@3
    if-ne v0, v1, :cond_0

    #@5
    .line 5326
    const/4 v0, 0x0

    #@6
    return-object v0

    #@7
    .line 5328
    :cond_0
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiConfigManager:Lcom/android/server/wifi/WifiConfigManager;

    #@9
    iget v1, p0, Lcom/android/server/wifi/WifiStateMachine;->mLastNetworkId:I

    #@b
    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiConfigManager;->getWifiConfiguration(I)Landroid/net/wifi/WifiConfiguration;

    #@e
    move-result-object v0

    #@f
    return-object v0
.end method

.method public getDisconnectedTimeMilli()J
    .locals 6

    #@0
    .prologue
    const-wide/16 v4, 0x0

    #@2
    .line 1488
    invoke-virtual {p0}, Lcom/android/server/wifi/WifiStateMachine;->getCurrentState()Lcom/android/internal/util/IState;

    #@5
    move-result-object v2

    #@6
    iget-object v3, p0, Lcom/android/server/wifi/WifiStateMachine;->mDisconnectedState:Lcom/android/internal/util/State;

    #@8
    if-ne v2, v3, :cond_0

    #@a
    .line 1489
    iget-wide v2, p0, Lcom/android/server/wifi/WifiStateMachine;->mDisconnectedTimeStamp:J

    #@c
    cmp-long v2, v2, v4

    #@e
    if-eqz v2, :cond_0

    #@10
    .line 1490
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    #@13
    move-result-wide v0

    #@14
    .line 1491
    .local v0, "now_ms":J
    iget-wide v2, p0, Lcom/android/server/wifi/WifiStateMachine;->mDisconnectedTimeStamp:J

    #@16
    sub-long v2, v0, v2

    #@18
    return-wide v2

    #@19
    .line 1493
    .end local v0    # "now_ms":J
    :cond_0
    return-wide v4
.end method

.method public getEnableAutoJoinWhenAssociated()Z
    .locals 1

    #@0
    .prologue
    .line 1398
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiConfigManager:Lcom/android/server/wifi/WifiConfigManager;

    #@2
    invoke-virtual {v0}, Lcom/android/server/wifi/WifiConfigManager;->getEnableAutoJoinWhenAssociated()Z

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public getFrequencyBand()I
    .locals 1

    #@0
    .prologue
    .line 2218
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mFrequencyBand:Ljava/util/concurrent/atomic/AtomicInteger;

    #@2
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method getGsmSimAuthResponse([Ljava/lang/String;Landroid/telephony/TelephonyManager;)Ljava/lang/String;
    .locals 19
    .param p1, "requestData"    # [Ljava/lang/String;
    .param p2, "tm"    # Landroid/telephony/TelephonyManager;

    #@0
    .prologue
    .line 7953
    new-instance v11, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    .line 7954
    .local v11, "sb":Ljava/lang/StringBuilder;
    const/4 v15, 0x0

    #@6
    move-object/from16 v0, p1

    #@8
    array-length v0, v0

    #@9
    move/from16 v16, v0

    #@b
    :goto_0
    move/from16 v0, v16

    #@d
    if-ge v15, v0, :cond_8

    #@f
    aget-object v4, p1, v15

    #@11
    .line 7955
    .local v4, "challenge":Ljava/lang/String;
    if-eqz v4, :cond_0

    #@13
    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    #@16
    move-result v17

    #@17
    if-eqz v17, :cond_1

    #@19
    .line 7954
    :cond_0
    :goto_1
    add-int/lit8 v15, v15, 0x1

    #@1b
    goto :goto_0

    #@1c
    .line 7958
    :cond_1
    new-instance v17, Ljava/lang/StringBuilder;

    #@1e
    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    #@21
    const-string/jumbo v18, "RAND = "

    #@24
    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@27
    move-result-object v17

    #@28
    move-object/from16 v0, v17

    #@2a
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2d
    move-result-object v17

    #@2e
    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@31
    move-result-object v17

    #@32
    move-object/from16 v0, p0

    #@34
    move-object/from16 v1, v17

    #@36
    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiStateMachine;->logd(Ljava/lang/String;)V

    #@39
    .line 7960
    const/4 v9, 0x0

    #@3a
    .line 7962
    .local v9, "rand":[B
    :try_start_0
    move-object/from16 v0, p0

    #@3c
    invoke-direct {v0, v4}, Lcom/android/server/wifi/WifiStateMachine;->parseHex(Ljava/lang/String;)[B
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    #@3f
    move-result-object v9

    #@40
    .line 7969
    .local v9, "rand":[B
    const/16 v17, 0x2

    #@42
    .line 7968
    move/from16 v0, v17

    #@44
    invoke-static {v9, v0}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    #@47
    move-result-object v3

    #@48
    .line 7972
    .local v3, "base64Challenge":Ljava/lang/String;
    const/16 v17, 0x2

    #@4a
    .line 7973
    const/16 v18, 0x80

    #@4c
    .line 7972
    move-object/from16 v0, p2

    #@4e
    move/from16 v1, v17

    #@50
    move/from16 v2, v18

    #@52
    invoke-virtual {v0, v1, v2, v3}, Landroid/telephony/TelephonyManager;->getIccAuthentication(IILjava/lang/String;)Ljava/lang/String;

    #@55
    move-result-object v14

    #@56
    .line 7974
    .local v14, "tmResponse":Ljava/lang/String;
    if-nez v14, :cond_2

    #@58
    .line 7977
    const/16 v17, 0x1

    #@5a
    .line 7978
    const/16 v18, 0x80

    #@5c
    .line 7977
    move-object/from16 v0, p2

    #@5e
    move/from16 v1, v17

    #@60
    move/from16 v2, v18

    #@62
    invoke-virtual {v0, v1, v2, v3}, Landroid/telephony/TelephonyManager;->getIccAuthentication(IILjava/lang/String;)Ljava/lang/String;

    #@65
    move-result-object v14

    #@66
    .line 7980
    :cond_2
    new-instance v17, Ljava/lang/StringBuilder;

    #@68
    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    #@6b
    const-string/jumbo v18, "Raw Response - "

    #@6e
    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@71
    move-result-object v17

    #@72
    move-object/from16 v0, v17

    #@74
    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@77
    move-result-object v17

    #@78
    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@7b
    move-result-object v17

    #@7c
    move-object/from16 v0, p0

    #@7e
    move-object/from16 v1, v17

    #@80
    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiStateMachine;->logv(Ljava/lang/String;)V

    #@83
    .line 7982
    if-eqz v14, :cond_3

    #@85
    invoke-virtual {v14}, Ljava/lang/String;->length()I

    #@88
    move-result v17

    #@89
    const/16 v18, 0x4

    #@8b
    move/from16 v0, v17

    #@8d
    move/from16 v1, v18

    #@8f
    if-gt v0, v1, :cond_4

    #@91
    .line 7983
    :cond_3
    new-instance v15, Ljava/lang/StringBuilder;

    #@93
    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    #@96
    const-string/jumbo v16, "bad response - "

    #@99
    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@9c
    move-result-object v15

    #@9d
    invoke-virtual {v15, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a0
    move-result-object v15

    #@a1
    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@a4
    move-result-object v15

    #@a5
    move-object/from16 v0, p0

    #@a7
    invoke-virtual {v0, v15}, Lcom/android/server/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V

    #@aa
    .line 7984
    const/4 v15, 0x0

    #@ab
    return-object v15

    #@ac
    .line 7963
    .end local v3    # "base64Challenge":Ljava/lang/String;
    .end local v14    # "tmResponse":Ljava/lang/String;
    .local v9, "rand":[B
    :catch_0
    move-exception v5

    #@ad
    .line 7964
    .local v5, "e":Ljava/lang/NumberFormatException;
    const-string/jumbo v17, "malformed challenge"

    #@b0
    move-object/from16 v0, p0

    #@b2
    move-object/from16 v1, v17

    #@b4
    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V

    #@b7
    goto/16 :goto_1

    #@b9
    .line 7987
    .end local v5    # "e":Ljava/lang/NumberFormatException;
    .restart local v3    # "base64Challenge":Ljava/lang/String;
    .local v9, "rand":[B
    .restart local v14    # "tmResponse":Ljava/lang/String;
    :cond_4
    const/16 v17, 0x0

    #@bb
    move/from16 v0, v17

    #@bd
    invoke-static {v14, v0}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    #@c0
    move-result-object v10

    #@c1
    .line 7988
    .local v10, "result":[B
    new-instance v17, Ljava/lang/StringBuilder;

    #@c3
    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    #@c6
    const-string/jumbo v18, "Hex Response -"

    #@c9
    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@cc
    move-result-object v17

    #@cd
    invoke-static {v10}, Lcom/android/server/wifi/WifiStateMachine;->makeHex([B)Ljava/lang/String;

    #@d0
    move-result-object v18

    #@d1
    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@d4
    move-result-object v17

    #@d5
    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@d8
    move-result-object v17

    #@d9
    move-object/from16 v0, p0

    #@db
    move-object/from16 v1, v17

    #@dd
    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiStateMachine;->logv(Ljava/lang/String;)V

    #@e0
    .line 7989
    const/16 v17, 0x0

    #@e2
    aget-byte v13, v10, v17

    #@e4
    .line 7990
    .local v13, "sres_len":I
    array-length v0, v10

    #@e5
    move/from16 v17, v0

    #@e7
    move/from16 v0, v17

    #@e9
    if-lt v13, v0, :cond_5

    #@eb
    .line 7991
    new-instance v15, Ljava/lang/StringBuilder;

    #@ed
    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    #@f0
    const-string/jumbo v16, "malfomed response - "

    #@f3
    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@f6
    move-result-object v15

    #@f7
    invoke-virtual {v15, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@fa
    move-result-object v15

    #@fb
    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@fe
    move-result-object v15

    #@ff
    move-object/from16 v0, p0

    #@101
    invoke-virtual {v0, v15}, Lcom/android/server/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V

    #@104
    .line 7992
    const/4 v15, 0x0

    #@105
    return-object v15

    #@106
    .line 7994
    :cond_5
    const/16 v17, 0x1

    #@108
    move/from16 v0, v17

    #@10a
    invoke-static {v10, v0, v13}, Lcom/android/server/wifi/WifiStateMachine;->makeHex([BII)Ljava/lang/String;

    #@10d
    move-result-object v12

    #@10e
    .line 7995
    .local v12, "sres":Ljava/lang/String;
    add-int/lit8 v8, v13, 0x1

    #@110
    .line 7996
    .local v8, "kc_offset":I
    array-length v0, v10

    #@111
    move/from16 v17, v0

    #@113
    move/from16 v0, v17

    #@115
    if-lt v8, v0, :cond_6

    #@117
    .line 7997
    new-instance v15, Ljava/lang/StringBuilder;

    #@119
    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    #@11c
    const-string/jumbo v16, "malfomed response - "

    #@11f
    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@122
    move-result-object v15

    #@123
    invoke-virtual {v15, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@126
    move-result-object v15

    #@127
    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@12a
    move-result-object v15

    #@12b
    move-object/from16 v0, p0

    #@12d
    invoke-virtual {v0, v15}, Lcom/android/server/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V

    #@130
    .line 7998
    const/4 v15, 0x0

    #@131
    return-object v15

    #@132
    .line 8000
    :cond_6
    aget-byte v7, v10, v8

    #@134
    .line 8001
    .local v7, "kc_len":I
    add-int v17, v8, v7

    #@136
    array-length v0, v10

    #@137
    move/from16 v18, v0

    #@139
    move/from16 v0, v17

    #@13b
    move/from16 v1, v18

    #@13d
    if-le v0, v1, :cond_7

    #@13f
    .line 8002
    new-instance v15, Ljava/lang/StringBuilder;

    #@141
    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    #@144
    const-string/jumbo v16, "malfomed response - "

    #@147
    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@14a
    move-result-object v15

    #@14b
    invoke-virtual {v15, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@14e
    move-result-object v15

    #@14f
    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@152
    move-result-object v15

    #@153
    move-object/from16 v0, p0

    #@155
    invoke-virtual {v0, v15}, Lcom/android/server/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V

    #@158
    .line 8003
    const/4 v15, 0x0

    #@159
    return-object v15

    #@15a
    .line 8005
    :cond_7
    add-int/lit8 v17, v8, 0x1

    #@15c
    move/from16 v0, v17

    #@15e
    invoke-static {v10, v0, v7}, Lcom/android/server/wifi/WifiStateMachine;->makeHex([BII)Ljava/lang/String;

    #@161
    move-result-object v6

    #@162
    .line 8006
    .local v6, "kc":Ljava/lang/String;
    const-string/jumbo v17, ":"

    #@165
    move-object/from16 v0, v17

    #@167
    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@16a
    move-result-object v17

    #@16b
    move-object/from16 v0, v17

    #@16d
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@170
    move-result-object v17

    #@171
    const-string/jumbo v18, ":"

    #@174
    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@177
    move-result-object v17

    #@178
    move-object/from16 v0, v17

    #@17a
    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@17d
    .line 8007
    new-instance v17, Ljava/lang/StringBuilder;

    #@17f
    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    #@182
    const-string/jumbo v18, "kc:"

    #@185
    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@188
    move-result-object v17

    #@189
    move-object/from16 v0, v17

    #@18b
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@18e
    move-result-object v17

    #@18f
    const-string/jumbo v18, " sres:"

    #@192
    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@195
    move-result-object v17

    #@196
    move-object/from16 v0, v17

    #@198
    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@19b
    move-result-object v17

    #@19c
    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@19f
    move-result-object v17

    #@1a0
    move-object/from16 v0, p0

    #@1a2
    move-object/from16 v1, v17

    #@1a4
    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiStateMachine;->logv(Ljava/lang/String;)V

    #@1a7
    goto/16 :goto_1

    #@1a9
    .line 8010
    .end local v3    # "base64Challenge":Ljava/lang/String;
    .end local v4    # "challenge":Ljava/lang/String;
    .end local v6    # "kc":Ljava/lang/String;
    .end local v7    # "kc_len":I
    .end local v8    # "kc_offset":I
    .end local v9    # "rand":[B
    .end local v10    # "result":[B
    .end local v12    # "sres":Ljava/lang/String;
    .end local v13    # "sres_len":I
    .end local v14    # "tmResponse":Ljava/lang/String;
    :cond_8
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1ac
    move-result-object v15

    #@1ad
    return-object v15
.end method

.method protected getLogRecString(Landroid/os/Message;)Ljava/lang/String;
    .locals 28
    .param p1, "msg"    # Landroid/os/Message;

    #@0
    .prologue
    .line 2412
    new-instance v20, Ljava/lang/StringBuilder;

    #@2
    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    .line 2413
    .local v20, "sb":Ljava/lang/StringBuilder;
    move-object/from16 v0, p0

    #@7
    iget-boolean v0, v0, Lcom/android/server/wifi/WifiStateMachine;->mScreenOn:Z

    #@9
    move/from16 v23, v0

    #@b
    if-eqz v23, :cond_0

    #@d
    .line 2414
    const-string/jumbo v23, "!"

    #@10
    move-object/from16 v0, v20

    #@12
    move-object/from16 v1, v23

    #@14
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@17
    .line 2416
    :cond_0
    move-object/from16 v0, p0

    #@19
    iget v0, v0, Lcom/android/server/wifi/WifiStateMachine;->messageHandlingStatus:I

    #@1b
    move/from16 v23, v0

    #@1d
    sget v24, Lcom/android/server/wifi/WifiStateMachine;->MESSAGE_HANDLING_STATUS_UNKNOWN:I

    #@1f
    move/from16 v0, v23

    #@21
    move/from16 v1, v24

    #@23
    if-eq v0, v1, :cond_1

    #@25
    .line 2417
    const-string/jumbo v23, "("

    #@28
    move-object/from16 v0, v20

    #@2a
    move-object/from16 v1, v23

    #@2c
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2f
    move-result-object v23

    #@30
    move-object/from16 v0, p0

    #@32
    iget v0, v0, Lcom/android/server/wifi/WifiStateMachine;->messageHandlingStatus:I

    #@34
    move/from16 v24, v0

    #@36
    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@39
    move-result-object v23

    #@3a
    const-string/jumbo v24, ")"

    #@3d
    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@40
    .line 2419
    :cond_1
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/wifi/WifiStateMachine;->smToString(Landroid/os/Message;)Ljava/lang/String;

    #@43
    move-result-object v23

    #@44
    move-object/from16 v0, v20

    #@46
    move-object/from16 v1, v23

    #@48
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4b
    .line 2420
    move-object/from16 v0, p1

    #@4d
    iget v0, v0, Landroid/os/Message;->sendingUid:I

    #@4f
    move/from16 v23, v0

    #@51
    if-lez v23, :cond_2

    #@53
    move-object/from16 v0, p1

    #@55
    iget v0, v0, Landroid/os/Message;->sendingUid:I

    #@57
    move/from16 v23, v0

    #@59
    const/16 v24, 0x3f2

    #@5b
    move/from16 v0, v23

    #@5d
    move/from16 v1, v24

    #@5f
    if-eq v0, v1, :cond_2

    #@61
    .line 2421
    const-string/jumbo v23, " uid="

    #@64
    move-object/from16 v0, v20

    #@66
    move-object/from16 v1, v23

    #@68
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6b
    move-result-object v23

    #@6c
    move-object/from16 v0, p1

    #@6e
    iget v0, v0, Landroid/os/Message;->sendingUid:I

    #@70
    move/from16 v24, v0

    #@72
    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@75
    .line 2423
    :cond_2
    const-string/jumbo v23, " "

    #@78
    move-object/from16 v0, v20

    #@7a
    move-object/from16 v1, v23

    #@7c
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@7f
    move-result-object v23

    #@80
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wifi/WifiStateMachine;->printTime()Ljava/lang/String;

    #@83
    move-result-object v24

    #@84
    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@87
    .line 2424
    move-object/from16 v0, p1

    #@89
    iget v0, v0, Landroid/os/Message;->what:I

    #@8b
    move/from16 v23, v0

    #@8d
    sparse-switch v23, :sswitch_data_0

    #@90
    .line 2912
    const-string/jumbo v23, " "

    #@93
    move-object/from16 v0, v20

    #@95
    move-object/from16 v1, v23

    #@97
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@9a
    .line 2913
    move-object/from16 v0, p1

    #@9c
    iget v0, v0, Landroid/os/Message;->arg1:I

    #@9e
    move/from16 v23, v0

    #@a0
    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    #@a3
    move-result-object v23

    #@a4
    move-object/from16 v0, v20

    #@a6
    move-object/from16 v1, v23

    #@a8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@ab
    .line 2914
    const-string/jumbo v23, " "

    #@ae
    move-object/from16 v0, v20

    #@b0
    move-object/from16 v1, v23

    #@b2
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b5
    .line 2915
    move-object/from16 v0, p1

    #@b7
    iget v0, v0, Landroid/os/Message;->arg2:I

    #@b9
    move/from16 v23, v0

    #@bb
    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    #@be
    move-result-object v23

    #@bf
    move-object/from16 v0, v20

    #@c1
    move-object/from16 v1, v23

    #@c3
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@c6
    .line 2919
    :cond_3
    :goto_0
    :sswitch_0
    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@c9
    move-result-object v23

    #@ca
    return-object v23

    #@cb
    .line 2426
    :sswitch_1
    const-string/jumbo v23, " "

    #@ce
    move-object/from16 v0, v20

    #@d0
    move-object/from16 v1, v23

    #@d2
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@d5
    .line 2427
    move-object/from16 v0, p1

    #@d7
    iget v0, v0, Landroid/os/Message;->arg1:I

    #@d9
    move/from16 v23, v0

    #@db
    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    #@de
    move-result-object v23

    #@df
    move-object/from16 v0, v20

    #@e1
    move-object/from16 v1, v23

    #@e3
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@e6
    .line 2428
    const-string/jumbo v23, " "

    #@e9
    move-object/from16 v0, v20

    #@eb
    move-object/from16 v1, v23

    #@ed
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@f0
    .line 2429
    move-object/from16 v0, p1

    #@f2
    iget v0, v0, Landroid/os/Message;->arg2:I

    #@f4
    move/from16 v23, v0

    #@f6
    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    #@f9
    move-result-object v23

    #@fa
    move-object/from16 v0, v20

    #@fc
    move-object/from16 v1, v23

    #@fe
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@101
    .line 2430
    const-string/jumbo v23, " autojoinAllowed="

    #@104
    move-object/from16 v0, v20

    #@106
    move-object/from16 v1, v23

    #@108
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@10b
    .line 2431
    move-object/from16 v0, p0

    #@10d
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine;->mWifiConfigManager:Lcom/android/server/wifi/WifiConfigManager;

    #@10f
    move-object/from16 v23, v0

    #@111
    invoke-virtual/range {v23 .. v23}, Lcom/android/server/wifi/WifiConfigManager;->getEnableAutoJoinWhenAssociated()Z

    #@114
    move-result v23

    #@115
    move-object/from16 v0, v20

    #@117
    move/from16 v1, v23

    #@119
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@11c
    .line 2432
    const-string/jumbo v23, " withTraffic="

    #@11f
    move-object/from16 v0, v20

    #@121
    move-object/from16 v1, v23

    #@123
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@126
    move-result-object v23

    #@127
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wifi/WifiStateMachine;->getAllowScansWithTraffic()I

    #@12a
    move-result v24

    #@12b
    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@12e
    .line 2433
    const-string/jumbo v23, " tx="

    #@131
    move-object/from16 v0, v20

    #@133
    move-object/from16 v1, v23

    #@135
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@138
    move-result-object v23

    #@139
    move-object/from16 v0, p0

    #@13b
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    #@13d
    move-object/from16 v24, v0

    #@13f
    move-object/from16 v0, v24

    #@141
    iget-wide v0, v0, Landroid/net/wifi/WifiInfo;->txSuccessRate:D

    #@143
    move-wide/from16 v24, v0

    #@145
    invoke-virtual/range {v23 .. v25}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    #@148
    .line 2434
    const-string/jumbo v23, "/"

    #@14b
    move-object/from16 v0, v20

    #@14d
    move-object/from16 v1, v23

    #@14f
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@152
    move-result-object v23

    #@153
    const/16 v24, 0x8

    #@155
    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@158
    .line 2435
    const-string/jumbo v23, " rx="

    #@15b
    move-object/from16 v0, v20

    #@15d
    move-object/from16 v1, v23

    #@15f
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@162
    move-result-object v23

    #@163
    move-object/from16 v0, p0

    #@165
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    #@167
    move-object/from16 v24, v0

    #@169
    move-object/from16 v0, v24

    #@16b
    iget-wide v0, v0, Landroid/net/wifi/WifiInfo;->rxSuccessRate:D

    #@16d
    move-wide/from16 v24, v0

    #@16f
    invoke-virtual/range {v23 .. v25}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    #@172
    .line 2436
    const-string/jumbo v23, "/"

    #@175
    move-object/from16 v0, v20

    #@177
    move-object/from16 v1, v23

    #@179
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@17c
    move-result-object v23

    #@17d
    const/16 v24, 0x10

    #@17f
    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@182
    .line 2437
    const-string/jumbo v23, " -> "

    #@185
    move-object/from16 v0, v20

    #@187
    move-object/from16 v1, v23

    #@189
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@18c
    move-result-object v23

    #@18d
    move-object/from16 v0, p0

    #@18f
    iget-boolean v0, v0, Lcom/android/server/wifi/WifiStateMachine;->mConnectedModeGScanOffloadStarted:Z

    #@191
    move/from16 v24, v0

    #@193
    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@196
    goto/16 :goto_0

    #@198
    .line 2440
    :sswitch_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    #@19b
    move-result-wide v24

    #@19c
    invoke-static/range {v24 .. v25}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    #@19f
    move-result-object v16

    #@1a0
    .line 2441
    .local v16, "now":Ljava/lang/Long;
    const-string/jumbo v23, " "

    #@1a3
    move-object/from16 v0, v20

    #@1a5
    move-object/from16 v1, v23

    #@1a7
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1aa
    .line 2442
    move-object/from16 v0, p1

    #@1ac
    iget v0, v0, Landroid/os/Message;->arg1:I

    #@1ae
    move/from16 v23, v0

    #@1b0
    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    #@1b3
    move-result-object v23

    #@1b4
    move-object/from16 v0, v20

    #@1b6
    move-object/from16 v1, v23

    #@1b8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1bb
    .line 2443
    const-string/jumbo v23, " "

    #@1be
    move-object/from16 v0, v20

    #@1c0
    move-object/from16 v1, v23

    #@1c2
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1c5
    .line 2444
    move-object/from16 v0, p1

    #@1c7
    iget v0, v0, Landroid/os/Message;->arg2:I

    #@1c9
    move/from16 v23, v0

    #@1cb
    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    #@1ce
    move-result-object v23

    #@1cf
    move-object/from16 v0, v20

    #@1d1
    move-object/from16 v1, v23

    #@1d3
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1d6
    .line 2445
    const-string/jumbo v23, " ic="

    #@1d9
    move-object/from16 v0, v20

    #@1db
    move-object/from16 v1, v23

    #@1dd
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1e0
    .line 2446
    sget v23, Lcom/android/server/wifi/WifiStateMachine;->sScanAlarmIntentCount:I

    #@1e2
    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    #@1e5
    move-result-object v23

    #@1e6
    move-object/from16 v0, v20

    #@1e8
    move-object/from16 v1, v23

    #@1ea
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1ed
    .line 2447
    move-object/from16 v0, p1

    #@1ef
    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@1f1
    move-object/from16 v23, v0

    #@1f3
    if-eqz v23, :cond_4

    #@1f5
    .line 2448
    move-object/from16 v0, p1

    #@1f7
    iget-object v5, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@1f9
    check-cast v5, Landroid/os/Bundle;

    #@1fb
    .line 2449
    .local v5, "bundle":Landroid/os/Bundle;
    const-string/jumbo v23, "scan_request_time"

    #@1fe
    const-wide/16 v24, 0x0

    #@200
    move-object/from16 v0, v23

    #@202
    move-wide/from16 v1, v24

    #@204
    invoke-virtual {v5, v0, v1, v2}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    #@207
    move-result-wide v24

    #@208
    invoke-static/range {v24 .. v25}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    #@20b
    move-result-object v18

    #@20c
    .line 2450
    .local v18, "request":Ljava/lang/Long;
    invoke-virtual/range {v18 .. v18}, Ljava/lang/Long;->longValue()J

    #@20f
    move-result-wide v24

    #@210
    const-wide/16 v26, 0x0

    #@212
    cmp-long v23, v24, v26

    #@214
    if-eqz v23, :cond_4

    #@216
    .line 2451
    const-string/jumbo v23, " proc(ms):"

    #@219
    move-object/from16 v0, v20

    #@21b
    move-object/from16 v1, v23

    #@21d
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@220
    move-result-object v23

    #@221
    invoke-virtual/range {v16 .. v16}, Ljava/lang/Long;->longValue()J

    #@224
    move-result-wide v24

    #@225
    invoke-virtual/range {v18 .. v18}, Ljava/lang/Long;->longValue()J

    #@228
    move-result-wide v26

    #@229
    sub-long v24, v24, v26

    #@22b
    invoke-virtual/range {v23 .. v25}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    #@22e
    .line 2454
    .end local v5    # "bundle":Landroid/os/Bundle;
    .end local v18    # "request":Ljava/lang/Long;
    :cond_4
    move-object/from16 v0, p0

    #@230
    iget-boolean v0, v0, Lcom/android/server/wifi/WifiStateMachine;->mIsScanOngoing:Z

    #@232
    move/from16 v23, v0

    #@234
    if-eqz v23, :cond_5

    #@236
    const-string/jumbo v23, " onGoing"

    #@239
    move-object/from16 v0, v20

    #@23b
    move-object/from16 v1, v23

    #@23d
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@240
    .line 2455
    :cond_5
    move-object/from16 v0, p0

    #@242
    iget-boolean v0, v0, Lcom/android/server/wifi/WifiStateMachine;->mIsFullScanOngoing:Z

    #@244
    move/from16 v23, v0

    #@246
    if-eqz v23, :cond_6

    #@248
    const-string/jumbo v23, " full"

    #@24b
    move-object/from16 v0, v20

    #@24d
    move-object/from16 v1, v23

    #@24f
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@252
    .line 2456
    :cond_6
    const-string/jumbo v23, " rssi="

    #@255
    move-object/from16 v0, v20

    #@257
    move-object/from16 v1, v23

    #@259
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@25c
    move-result-object v23

    #@25d
    move-object/from16 v0, p0

    #@25f
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    #@261
    move-object/from16 v24, v0

    #@263
    invoke-virtual/range {v24 .. v24}, Landroid/net/wifi/WifiInfo;->getRssi()I

    #@266
    move-result v24

    #@267
    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@26a
    .line 2457
    const-string/jumbo v23, " f="

    #@26d
    move-object/from16 v0, v20

    #@26f
    move-object/from16 v1, v23

    #@271
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@274
    move-result-object v23

    #@275
    move-object/from16 v0, p0

    #@277
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    #@279
    move-object/from16 v24, v0

    #@27b
    invoke-virtual/range {v24 .. v24}, Landroid/net/wifi/WifiInfo;->getFrequency()I

    #@27e
    move-result v24

    #@27f
    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@282
    .line 2458
    const-string/jumbo v23, " sc="

    #@285
    move-object/from16 v0, v20

    #@287
    move-object/from16 v1, v23

    #@289
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@28c
    move-result-object v23

    #@28d
    move-object/from16 v0, p0

    #@28f
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    #@291
    move-object/from16 v24, v0

    #@293
    move-object/from16 v0, v24

    #@295
    iget v0, v0, Landroid/net/wifi/WifiInfo;->score:I

    #@297
    move/from16 v24, v0

    #@299
    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@29c
    .line 2459
    const-string/jumbo v23, " link="

    #@29f
    move-object/from16 v0, v20

    #@2a1
    move-object/from16 v1, v23

    #@2a3
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2a6
    move-result-object v23

    #@2a7
    move-object/from16 v0, p0

    #@2a9
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    #@2ab
    move-object/from16 v24, v0

    #@2ad
    invoke-virtual/range {v24 .. v24}, Landroid/net/wifi/WifiInfo;->getLinkSpeed()I

    #@2b0
    move-result v24

    #@2b1
    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@2b4
    .line 2460
    const-string/jumbo v23, " tx=%.1f,"

    #@2b7
    const/16 v24, 0x1

    #@2b9
    move/from16 v0, v24

    #@2bb
    new-array v0, v0, [Ljava/lang/Object;

    #@2bd
    move-object/from16 v24, v0

    #@2bf
    move-object/from16 v0, p0

    #@2c1
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    #@2c3
    move-object/from16 v25, v0

    #@2c5
    move-object/from16 v0, v25

    #@2c7
    iget-wide v0, v0, Landroid/net/wifi/WifiInfo;->txSuccessRate:D

    #@2c9
    move-wide/from16 v26, v0

    #@2cb
    invoke-static/range {v26 .. v27}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    #@2ce
    move-result-object v25

    #@2cf
    const/16 v26, 0x0

    #@2d1
    aput-object v25, v24, v26

    #@2d3
    invoke-static/range {v23 .. v24}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@2d6
    move-result-object v23

    #@2d7
    move-object/from16 v0, v20

    #@2d9
    move-object/from16 v1, v23

    #@2db
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2de
    .line 2461
    const-string/jumbo v23, " %.1f,"

    #@2e1
    const/16 v24, 0x1

    #@2e3
    move/from16 v0, v24

    #@2e5
    new-array v0, v0, [Ljava/lang/Object;

    #@2e7
    move-object/from16 v24, v0

    #@2e9
    move-object/from16 v0, p0

    #@2eb
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    #@2ed
    move-object/from16 v25, v0

    #@2ef
    move-object/from16 v0, v25

    #@2f1
    iget-wide v0, v0, Landroid/net/wifi/WifiInfo;->txRetriesRate:D

    #@2f3
    move-wide/from16 v26, v0

    #@2f5
    invoke-static/range {v26 .. v27}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    #@2f8
    move-result-object v25

    #@2f9
    const/16 v26, 0x0

    #@2fb
    aput-object v25, v24, v26

    #@2fd
    invoke-static/range {v23 .. v24}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@300
    move-result-object v23

    #@301
    move-object/from16 v0, v20

    #@303
    move-object/from16 v1, v23

    #@305
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@308
    .line 2462
    const-string/jumbo v23, " %.1f "

    #@30b
    const/16 v24, 0x1

    #@30d
    move/from16 v0, v24

    #@30f
    new-array v0, v0, [Ljava/lang/Object;

    #@311
    move-object/from16 v24, v0

    #@313
    move-object/from16 v0, p0

    #@315
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    #@317
    move-object/from16 v25, v0

    #@319
    move-object/from16 v0, v25

    #@31b
    iget-wide v0, v0, Landroid/net/wifi/WifiInfo;->txBadRate:D

    #@31d
    move-wide/from16 v26, v0

    #@31f
    invoke-static/range {v26 .. v27}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    #@322
    move-result-object v25

    #@323
    const/16 v26, 0x0

    #@325
    aput-object v25, v24, v26

    #@327
    invoke-static/range {v23 .. v24}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@32a
    move-result-object v23

    #@32b
    move-object/from16 v0, v20

    #@32d
    move-object/from16 v1, v23

    #@32f
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@332
    .line 2463
    const-string/jumbo v23, " rx=%.1f"

    #@335
    const/16 v24, 0x1

    #@337
    move/from16 v0, v24

    #@339
    new-array v0, v0, [Ljava/lang/Object;

    #@33b
    move-object/from16 v24, v0

    #@33d
    move-object/from16 v0, p0

    #@33f
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    #@341
    move-object/from16 v25, v0

    #@343
    move-object/from16 v0, v25

    #@345
    iget-wide v0, v0, Landroid/net/wifi/WifiInfo;->rxSuccessRate:D

    #@347
    move-wide/from16 v26, v0

    #@349
    invoke-static/range {v26 .. v27}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    #@34c
    move-result-object v25

    #@34d
    const/16 v26, 0x0

    #@34f
    aput-object v25, v24, v26

    #@351
    invoke-static/range {v23 .. v24}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@354
    move-result-object v23

    #@355
    move-object/from16 v0, v20

    #@357
    move-object/from16 v1, v23

    #@359
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@35c
    .line 2464
    move-object/from16 v0, p0

    #@35e
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine;->lastScanFreqs:Ljava/util/Set;

    #@360
    move-object/from16 v23, v0

    #@362
    if-eqz v23, :cond_7

    #@364
    .line 2465
    const-string/jumbo v23, " list="

    #@367
    move-object/from16 v0, v20

    #@369
    move-object/from16 v1, v23

    #@36b
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@36e
    .line 2466
    move-object/from16 v0, p0

    #@370
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine;->lastScanFreqs:Ljava/util/Set;

    #@372
    move-object/from16 v23, v0

    #@374
    invoke-interface/range {v23 .. v23}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@377
    move-result-object v12

    #@378
    .local v12, "freq$iterator":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    #@37b
    move-result v23

    #@37c
    if-eqz v23, :cond_7

    #@37e
    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@381
    move-result-object v23

    #@382
    check-cast v23, Ljava/lang/Integer;

    #@384
    invoke-virtual/range {v23 .. v23}, Ljava/lang/Integer;->intValue()I

    #@387
    move-result v11

    #@388
    .line 2467
    .local v11, "freq":I
    move-object/from16 v0, v20

    #@38a
    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@38d
    move-result-object v23

    #@38e
    const-string/jumbo v24, ","

    #@391
    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@394
    goto :goto_1

    #@395
    .line 2470
    .end local v11    # "freq":I
    .end local v12    # "freq$iterator":Ljava/util/Iterator;
    :cond_7
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wifi/WifiStateMachine;->reportOnTime()Ljava/lang/String;

    #@398
    move-result-object v17

    #@399
    .line 2471
    .local v17, "report":Ljava/lang/String;
    if-eqz v17, :cond_3

    #@39b
    .line 2472
    const-string/jumbo v23, " "

    #@39e
    move-object/from16 v0, v20

    #@3a0
    move-object/from16 v1, v23

    #@3a2
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3a5
    move-result-object v23

    #@3a6
    move-object/from16 v0, v23

    #@3a8
    move-object/from16 v1, v17

    #@3aa
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3ad
    goto/16 :goto_0

    #@3af
    .line 2476
    .end local v16    # "now":Ljava/lang/Long;
    .end local v17    # "report":Ljava/lang/String;
    :sswitch_3
    const-string/jumbo v23, " "

    #@3b2
    move-object/from16 v0, v20

    #@3b4
    move-object/from16 v1, v23

    #@3b6
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3b9
    .line 2477
    move-object/from16 v0, p1

    #@3bb
    iget v0, v0, Landroid/os/Message;->arg1:I

    #@3bd
    move/from16 v23, v0

    #@3bf
    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    #@3c2
    move-result-object v23

    #@3c3
    move-object/from16 v0, v20

    #@3c5
    move-object/from16 v1, v23

    #@3c7
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3ca
    .line 2478
    const-string/jumbo v23, " "

    #@3cd
    move-object/from16 v0, v20

    #@3cf
    move-object/from16 v1, v23

    #@3d1
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3d4
    .line 2479
    move-object/from16 v0, p1

    #@3d6
    iget v0, v0, Landroid/os/Message;->arg2:I

    #@3d8
    move/from16 v23, v0

    #@3da
    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    #@3dd
    move-result-object v23

    #@3de
    move-object/from16 v0, v20

    #@3e0
    move-object/from16 v1, v23

    #@3e2
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3e5
    .line 2480
    move-object/from16 v0, p1

    #@3e7
    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@3e9
    move-object/from16 v22, v0

    #@3eb
    check-cast v22, Lcom/android/server/wifi/StateChangeResult;

    #@3ed
    .line 2481
    .local v22, "stateChangeResult":Lcom/android/server/wifi/StateChangeResult;
    if-eqz v22, :cond_3

    #@3ef
    .line 2482
    invoke-virtual/range {v22 .. v22}, Lcom/android/server/wifi/StateChangeResult;->toString()Ljava/lang/String;

    #@3f2
    move-result-object v23

    #@3f3
    move-object/from16 v0, v20

    #@3f5
    move-object/from16 v1, v23

    #@3f7
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3fa
    goto/16 :goto_0

    #@3fc
    .line 2487
    .end local v22    # "stateChangeResult":Lcom/android/server/wifi/StateChangeResult;
    :sswitch_4
    const-string/jumbo v23, " "

    #@3ff
    move-object/from16 v0, v20

    #@401
    move-object/from16 v1, v23

    #@403
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@406
    .line 2488
    move-object/from16 v0, p1

    #@408
    iget v0, v0, Landroid/os/Message;->arg1:I

    #@40a
    move/from16 v23, v0

    #@40c
    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    #@40f
    move-result-object v23

    #@410
    move-object/from16 v0, v20

    #@412
    move-object/from16 v1, v23

    #@414
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@417
    .line 2489
    const-string/jumbo v23, " "

    #@41a
    move-object/from16 v0, v20

    #@41c
    move-object/from16 v1, v23

    #@41e
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@421
    .line 2490
    move-object/from16 v0, p1

    #@423
    iget v0, v0, Landroid/os/Message;->arg2:I

    #@425
    move/from16 v23, v0

    #@427
    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    #@42a
    move-result-object v23

    #@42b
    move-object/from16 v0, v20

    #@42d
    move-object/from16 v1, v23

    #@42f
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@432
    .line 2491
    move-object/from16 v0, p0

    #@434
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine;->lastSavedConfigurationAttempt:Landroid/net/wifi/WifiConfiguration;

    #@436
    move-object/from16 v23, v0

    #@438
    if-eqz v23, :cond_3

    #@43a
    .line 2492
    const-string/jumbo v23, " "

    #@43d
    move-object/from16 v0, v20

    #@43f
    move-object/from16 v1, v23

    #@441
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@444
    move-result-object v23

    #@445
    move-object/from16 v0, p0

    #@447
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine;->lastSavedConfigurationAttempt:Landroid/net/wifi/WifiConfiguration;

    #@449
    move-object/from16 v24, v0

    #@44b
    invoke-virtual/range {v24 .. v24}, Landroid/net/wifi/WifiConfiguration;->configKey()Ljava/lang/String;

    #@44e
    move-result-object v24

    #@44f
    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@452
    .line 2493
    const-string/jumbo v23, " nid="

    #@455
    move-object/from16 v0, v20

    #@457
    move-object/from16 v1, v23

    #@459
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@45c
    move-result-object v23

    #@45d
    move-object/from16 v0, p0

    #@45f
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine;->lastSavedConfigurationAttempt:Landroid/net/wifi/WifiConfiguration;

    #@461
    move-object/from16 v24, v0

    #@463
    move-object/from16 v0, v24

    #@465
    iget v0, v0, Landroid/net/wifi/WifiConfiguration;->networkId:I

    #@467
    move/from16 v24, v0

    #@469
    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@46c
    .line 2494
    move-object/from16 v0, p0

    #@46e
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine;->lastSavedConfigurationAttempt:Landroid/net/wifi/WifiConfiguration;

    #@470
    move-object/from16 v23, v0

    #@472
    move-object/from16 v0, v23

    #@474
    iget-boolean v0, v0, Landroid/net/wifi/WifiConfiguration;->hiddenSSID:Z

    #@476
    move/from16 v23, v0

    #@478
    if-eqz v23, :cond_8

    #@47a
    .line 2495
    const-string/jumbo v23, " hidden"

    #@47d
    move-object/from16 v0, v20

    #@47f
    move-object/from16 v1, v23

    #@481
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@484
    .line 2497
    :cond_8
    move-object/from16 v0, p0

    #@486
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine;->lastSavedConfigurationAttempt:Landroid/net/wifi/WifiConfiguration;

    #@488
    move-object/from16 v23, v0

    #@48a
    move-object/from16 v0, v23

    #@48c
    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    #@48e
    move-object/from16 v23, v0

    #@490
    if-eqz v23, :cond_9

    #@492
    .line 2498
    move-object/from16 v0, p0

    #@494
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine;->lastSavedConfigurationAttempt:Landroid/net/wifi/WifiConfiguration;

    #@496
    move-object/from16 v23, v0

    #@498
    move-object/from16 v0, v23

    #@49a
    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    #@49c
    move-object/from16 v23, v0

    #@49e
    const-string/jumbo v24, "*"

    #@4a1
    invoke-virtual/range {v23 .. v24}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@4a4
    move-result v23

    #@4a5
    if-eqz v23, :cond_c

    #@4a7
    .line 2501
    :cond_9
    :goto_2
    move-object/from16 v0, p0

    #@4a9
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine;->lastSavedConfigurationAttempt:Landroid/net/wifi/WifiConfiguration;

    #@4ab
    move-object/from16 v23, v0

    #@4ad
    move-object/from16 v0, v23

    #@4af
    iget-boolean v0, v0, Landroid/net/wifi/WifiConfiguration;->ephemeral:Z

    #@4b1
    move/from16 v23, v0

    #@4b3
    if-eqz v23, :cond_a

    #@4b5
    .line 2502
    const-string/jumbo v23, " ephemeral"

    #@4b8
    move-object/from16 v0, v20

    #@4ba
    move-object/from16 v1, v23

    #@4bc
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4bf
    .line 2504
    :cond_a
    move-object/from16 v0, p0

    #@4c1
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine;->lastSavedConfigurationAttempt:Landroid/net/wifi/WifiConfiguration;

    #@4c3
    move-object/from16 v23, v0

    #@4c5
    move-object/from16 v0, v23

    #@4c7
    iget-boolean v0, v0, Landroid/net/wifi/WifiConfiguration;->selfAdded:Z

    #@4c9
    move/from16 v23, v0

    #@4cb
    if-eqz v23, :cond_b

    #@4cd
    .line 2505
    const-string/jumbo v23, " selfAdded"

    #@4d0
    move-object/from16 v0, v20

    #@4d2
    move-object/from16 v1, v23

    #@4d4
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4d7
    .line 2507
    :cond_b
    const-string/jumbo v23, " cuid="

    #@4da
    move-object/from16 v0, v20

    #@4dc
    move-object/from16 v1, v23

    #@4de
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4e1
    move-result-object v23

    #@4e2
    move-object/from16 v0, p0

    #@4e4
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine;->lastSavedConfigurationAttempt:Landroid/net/wifi/WifiConfiguration;

    #@4e6
    move-object/from16 v24, v0

    #@4e8
    move-object/from16 v0, v24

    #@4ea
    iget v0, v0, Landroid/net/wifi/WifiConfiguration;->creatorUid:I

    #@4ec
    move/from16 v24, v0

    #@4ee
    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@4f1
    .line 2508
    const-string/jumbo v23, " suid="

    #@4f4
    move-object/from16 v0, v20

    #@4f6
    move-object/from16 v1, v23

    #@4f8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4fb
    move-result-object v23

    #@4fc
    move-object/from16 v0, p0

    #@4fe
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine;->lastSavedConfigurationAttempt:Landroid/net/wifi/WifiConfiguration;

    #@500
    move-object/from16 v24, v0

    #@502
    move-object/from16 v0, v24

    #@504
    iget v0, v0, Landroid/net/wifi/WifiConfiguration;->lastUpdateUid:I

    #@506
    move/from16 v24, v0

    #@508
    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@50b
    goto/16 :goto_0

    #@50d
    .line 2499
    :cond_c
    const-string/jumbo v23, " hasPSK"

    #@510
    move-object/from16 v0, v20

    #@512
    move-object/from16 v1, v23

    #@514
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@517
    goto :goto_2

    #@518
    .line 2512
    :sswitch_5
    const-string/jumbo v23, " "

    #@51b
    move-object/from16 v0, v20

    #@51d
    move-object/from16 v1, v23

    #@51f
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@522
    .line 2513
    move-object/from16 v0, p1

    #@524
    iget v0, v0, Landroid/os/Message;->arg1:I

    #@526
    move/from16 v23, v0

    #@528
    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    #@52b
    move-result-object v23

    #@52c
    move-object/from16 v0, v20

    #@52e
    move-object/from16 v1, v23

    #@530
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@533
    .line 2514
    const-string/jumbo v23, " "

    #@536
    move-object/from16 v0, v20

    #@538
    move-object/from16 v1, v23

    #@53a
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@53d
    .line 2515
    move-object/from16 v0, p1

    #@53f
    iget v0, v0, Landroid/os/Message;->arg2:I

    #@541
    move/from16 v23, v0

    #@543
    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    #@546
    move-result-object v23

    #@547
    move-object/from16 v0, v20

    #@549
    move-object/from16 v1, v23

    #@54b
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@54e
    .line 2516
    move-object/from16 v0, p0

    #@550
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine;->lastForgetConfigurationAttempt:Landroid/net/wifi/WifiConfiguration;

    #@552
    move-object/from16 v23, v0

    #@554
    if-eqz v23, :cond_3

    #@556
    .line 2517
    const-string/jumbo v23, " "

    #@559
    move-object/from16 v0, v20

    #@55b
    move-object/from16 v1, v23

    #@55d
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@560
    move-result-object v23

    #@561
    move-object/from16 v0, p0

    #@563
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine;->lastForgetConfigurationAttempt:Landroid/net/wifi/WifiConfiguration;

    #@565
    move-object/from16 v24, v0

    #@567
    invoke-virtual/range {v24 .. v24}, Landroid/net/wifi/WifiConfiguration;->configKey()Ljava/lang/String;

    #@56a
    move-result-object v24

    #@56b
    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@56e
    .line 2518
    const-string/jumbo v23, " nid="

    #@571
    move-object/from16 v0, v20

    #@573
    move-object/from16 v1, v23

    #@575
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@578
    move-result-object v23

    #@579
    move-object/from16 v0, p0

    #@57b
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine;->lastForgetConfigurationAttempt:Landroid/net/wifi/WifiConfiguration;

    #@57d
    move-object/from16 v24, v0

    #@57f
    move-object/from16 v0, v24

    #@581
    iget v0, v0, Landroid/net/wifi/WifiConfiguration;->networkId:I

    #@583
    move/from16 v24, v0

    #@585
    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@588
    .line 2519
    move-object/from16 v0, p0

    #@58a
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine;->lastForgetConfigurationAttempt:Landroid/net/wifi/WifiConfiguration;

    #@58c
    move-object/from16 v23, v0

    #@58e
    move-object/from16 v0, v23

    #@590
    iget-boolean v0, v0, Landroid/net/wifi/WifiConfiguration;->hiddenSSID:Z

    #@592
    move/from16 v23, v0

    #@594
    if-eqz v23, :cond_d

    #@596
    .line 2520
    const-string/jumbo v23, " hidden"

    #@599
    move-object/from16 v0, v20

    #@59b
    move-object/from16 v1, v23

    #@59d
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5a0
    .line 2522
    :cond_d
    move-object/from16 v0, p0

    #@5a2
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine;->lastForgetConfigurationAttempt:Landroid/net/wifi/WifiConfiguration;

    #@5a4
    move-object/from16 v23, v0

    #@5a6
    move-object/from16 v0, v23

    #@5a8
    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    #@5aa
    move-object/from16 v23, v0

    #@5ac
    if-eqz v23, :cond_e

    #@5ae
    .line 2523
    const-string/jumbo v23, " hasPSK"

    #@5b1
    move-object/from16 v0, v20

    #@5b3
    move-object/from16 v1, v23

    #@5b5
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5b8
    .line 2525
    :cond_e
    move-object/from16 v0, p0

    #@5ba
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine;->lastForgetConfigurationAttempt:Landroid/net/wifi/WifiConfiguration;

    #@5bc
    move-object/from16 v23, v0

    #@5be
    move-object/from16 v0, v23

    #@5c0
    iget-boolean v0, v0, Landroid/net/wifi/WifiConfiguration;->ephemeral:Z

    #@5c2
    move/from16 v23, v0

    #@5c4
    if-eqz v23, :cond_f

    #@5c6
    .line 2526
    const-string/jumbo v23, " ephemeral"

    #@5c9
    move-object/from16 v0, v20

    #@5cb
    move-object/from16 v1, v23

    #@5cd
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5d0
    .line 2528
    :cond_f
    move-object/from16 v0, p0

    #@5d2
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine;->lastForgetConfigurationAttempt:Landroid/net/wifi/WifiConfiguration;

    #@5d4
    move-object/from16 v23, v0

    #@5d6
    move-object/from16 v0, v23

    #@5d8
    iget-boolean v0, v0, Landroid/net/wifi/WifiConfiguration;->selfAdded:Z

    #@5da
    move/from16 v23, v0

    #@5dc
    if-eqz v23, :cond_10

    #@5de
    .line 2529
    const-string/jumbo v23, " selfAdded"

    #@5e1
    move-object/from16 v0, v20

    #@5e3
    move-object/from16 v1, v23

    #@5e5
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5e8
    .line 2531
    :cond_10
    const-string/jumbo v23, " cuid="

    #@5eb
    move-object/from16 v0, v20

    #@5ed
    move-object/from16 v1, v23

    #@5ef
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5f2
    move-result-object v23

    #@5f3
    move-object/from16 v0, p0

    #@5f5
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine;->lastForgetConfigurationAttempt:Landroid/net/wifi/WifiConfiguration;

    #@5f7
    move-object/from16 v24, v0

    #@5f9
    move-object/from16 v0, v24

    #@5fb
    iget v0, v0, Landroid/net/wifi/WifiConfiguration;->creatorUid:I

    #@5fd
    move/from16 v24, v0

    #@5ff
    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@602
    .line 2532
    const-string/jumbo v23, " suid="

    #@605
    move-object/from16 v0, v20

    #@607
    move-object/from16 v1, v23

    #@609
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@60c
    move-result-object v23

    #@60d
    move-object/from16 v0, p0

    #@60f
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine;->lastForgetConfigurationAttempt:Landroid/net/wifi/WifiConfiguration;

    #@611
    move-object/from16 v24, v0

    #@613
    move-object/from16 v0, v24

    #@615
    iget v0, v0, Landroid/net/wifi/WifiConfiguration;->lastUpdateUid:I

    #@617
    move/from16 v24, v0

    #@619
    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@61c
    .line 2534
    move-object/from16 v0, p0

    #@61e
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine;->lastForgetConfigurationAttempt:Landroid/net/wifi/WifiConfiguration;

    #@620
    move-object/from16 v23, v0

    #@622
    invoke-virtual/range {v23 .. v23}, Landroid/net/wifi/WifiConfiguration;->getNetworkSelectionStatus()Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;

    #@625
    move-result-object v15

    #@626
    .line 2535
    .local v15, "netWorkSelectionStatus":Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;
    const-string/jumbo v23, " ajst="

    #@629
    move-object/from16 v0, v20

    #@62b
    move-object/from16 v1, v23

    #@62d
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@630
    move-result-object v23

    #@631
    .line 2536
    invoke-virtual {v15}, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->getNetworkStatusString()Ljava/lang/String;

    #@634
    move-result-object v24

    #@635
    .line 2535
    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@638
    goto/16 :goto_0

    #@63a
    .line 2540
    .end local v15    # "netWorkSelectionStatus":Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;
    :sswitch_6
    const-string/jumbo v23, " "

    #@63d
    move-object/from16 v0, v20

    #@63f
    move-object/from16 v1, v23

    #@641
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@644
    .line 2541
    move-object/from16 v0, p1

    #@646
    iget v0, v0, Landroid/os/Message;->arg1:I

    #@648
    move/from16 v23, v0

    #@64a
    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    #@64d
    move-result-object v23

    #@64e
    move-object/from16 v0, v20

    #@650
    move-object/from16 v1, v23

    #@652
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@655
    .line 2542
    const-string/jumbo v23, " "

    #@658
    move-object/from16 v0, v20

    #@65a
    move-object/from16 v1, v23

    #@65c
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@65f
    .line 2543
    move-object/from16 v0, p1

    #@661
    iget v0, v0, Landroid/os/Message;->arg2:I

    #@663
    move/from16 v23, v0

    #@665
    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    #@668
    move-result-object v23

    #@669
    move-object/from16 v0, v20

    #@66b
    move-object/from16 v1, v23

    #@66d
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@670
    .line 2544
    move-object/from16 v0, p1

    #@672
    iget-object v4, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@674
    check-cast v4, Ljava/lang/String;

    #@676
    .line 2545
    .local v4, "bssid":Ljava/lang/String;
    if-eqz v4, :cond_11

    #@678
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    #@67b
    move-result v23

    #@67c
    if-lez v23, :cond_11

    #@67e
    .line 2546
    const-string/jumbo v23, " "

    #@681
    move-object/from16 v0, v20

    #@683
    move-object/from16 v1, v23

    #@685
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@688
    .line 2547
    move-object/from16 v0, v20

    #@68a
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@68d
    .line 2549
    :cond_11
    const-string/jumbo v23, " blacklist="

    #@690
    move-object/from16 v0, v20

    #@692
    move-object/from16 v1, v23

    #@694
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@697
    move-result-object v23

    #@698
    move-object/from16 v0, p0

    #@69a
    iget-boolean v0, v0, Lcom/android/server/wifi/WifiStateMachine;->didBlackListBSSID:Z

    #@69c
    move/from16 v24, v0

    #@69e
    invoke-static/range {v24 .. v24}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    #@6a1
    move-result-object v24

    #@6a2
    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6a5
    goto/16 :goto_0

    #@6a7
    .line 2552
    .end local v4    # "bssid":Ljava/lang/String;
    :sswitch_7
    const-string/jumbo v23, " "

    #@6aa
    move-object/from16 v0, v20

    #@6ac
    move-object/from16 v1, v23

    #@6ae
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6b1
    .line 2553
    move-object/from16 v0, p1

    #@6b3
    iget v0, v0, Landroid/os/Message;->arg1:I

    #@6b5
    move/from16 v23, v0

    #@6b7
    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    #@6ba
    move-result-object v23

    #@6bb
    move-object/from16 v0, v20

    #@6bd
    move-object/from16 v1, v23

    #@6bf
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6c2
    .line 2554
    const-string/jumbo v23, " "

    #@6c5
    move-object/from16 v0, v20

    #@6c7
    move-object/from16 v1, v23

    #@6c9
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6cc
    .line 2555
    move-object/from16 v0, p1

    #@6ce
    iget v0, v0, Landroid/os/Message;->arg2:I

    #@6d0
    move/from16 v23, v0

    #@6d2
    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    #@6d5
    move-result-object v23

    #@6d6
    move-object/from16 v0, v20

    #@6d8
    move-object/from16 v1, v23

    #@6da
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6dd
    .line 2556
    move-object/from16 v0, p0

    #@6df
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine;->mScanResults:Ljava/util/List;

    #@6e1
    move-object/from16 v23, v0

    #@6e3
    if-eqz v23, :cond_12

    #@6e5
    .line 2557
    const-string/jumbo v23, " found="

    #@6e8
    move-object/from16 v0, v20

    #@6ea
    move-object/from16 v1, v23

    #@6ec
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6ef
    .line 2558
    move-object/from16 v0, p0

    #@6f1
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine;->mScanResults:Ljava/util/List;

    #@6f3
    move-object/from16 v23, v0

    #@6f5
    invoke-interface/range {v23 .. v23}, Ljava/util/List;->size()I

    #@6f8
    move-result v23

    #@6f9
    move-object/from16 v0, v20

    #@6fb
    move/from16 v1, v23

    #@6fd
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@700
    .line 2560
    :cond_12
    const-string/jumbo v23, " known="

    #@703
    move-object/from16 v0, v20

    #@705
    move-object/from16 v1, v23

    #@707
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@70a
    move-result-object v23

    #@70b
    move-object/from16 v0, p0

    #@70d
    iget v0, v0, Lcom/android/server/wifi/WifiStateMachine;->mNumScanResultsKnown:I

    #@70f
    move/from16 v24, v0

    #@711
    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@714
    .line 2561
    const-string/jumbo v23, " got="

    #@717
    move-object/from16 v0, v20

    #@719
    move-object/from16 v1, v23

    #@71b
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@71e
    move-result-object v23

    #@71f
    move-object/from16 v0, p0

    #@721
    iget v0, v0, Lcom/android/server/wifi/WifiStateMachine;->mNumScanResultsReturned:I

    #@723
    move/from16 v24, v0

    #@725
    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@728
    .line 2562
    const-string/jumbo v23, " bcn=%d"

    #@72b
    const/16 v24, 0x1

    #@72d
    move/from16 v0, v24

    #@72f
    new-array v0, v0, [Ljava/lang/Object;

    #@731
    move-object/from16 v24, v0

    #@733
    move-object/from16 v0, p0

    #@735
    iget v0, v0, Lcom/android/server/wifi/WifiStateMachine;->mRunningBeaconCount:I

    #@737
    move/from16 v25, v0

    #@739
    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@73c
    move-result-object v25

    #@73d
    const/16 v26, 0x0

    #@73f
    aput-object v25, v24, v26

    #@741
    invoke-static/range {v23 .. v24}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@744
    move-result-object v23

    #@745
    move-object/from16 v0, v20

    #@747
    move-object/from16 v1, v23

    #@749
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@74c
    .line 2563
    const-string/jumbo v23, " con=%d"

    #@74f
    const/16 v24, 0x1

    #@751
    move/from16 v0, v24

    #@753
    new-array v0, v0, [Ljava/lang/Object;

    #@755
    move-object/from16 v24, v0

    #@757
    move-object/from16 v0, p0

    #@759
    iget v0, v0, Lcom/android/server/wifi/WifiStateMachine;->mConnectionReqCount:I

    #@75b
    move/from16 v25, v0

    #@75d
    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@760
    move-result-object v25

    #@761
    const/16 v26, 0x0

    #@763
    aput-object v25, v24, v26

    #@765
    invoke-static/range {v23 .. v24}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@768
    move-result-object v23

    #@769
    move-object/from16 v0, v20

    #@76b
    move-object/from16 v1, v23

    #@76d
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@770
    .line 2564
    const-string/jumbo v23, " untrustedcn=%d"

    #@773
    const/16 v24, 0x1

    #@775
    move/from16 v0, v24

    #@777
    new-array v0, v0, [Ljava/lang/Object;

    #@779
    move-object/from16 v24, v0

    #@77b
    move-object/from16 v0, p0

    #@77d
    iget v0, v0, Lcom/android/server/wifi/WifiStateMachine;->mUntrustedReqCount:I

    #@77f
    move/from16 v25, v0

    #@781
    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@784
    move-result-object v25

    #@785
    const/16 v26, 0x0

    #@787
    aput-object v25, v24, v26

    #@789
    invoke-static/range {v23 .. v24}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@78c
    move-result-object v23

    #@78d
    move-object/from16 v0, v20

    #@78f
    move-object/from16 v1, v23

    #@791
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@794
    .line 2565
    move-object/from16 v0, p0

    #@796
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine;->mWifiConfigManager:Lcom/android/server/wifi/WifiConfigManager;

    #@798
    move-object/from16 v23, v0

    #@79a
    invoke-virtual/range {v23 .. v23}, Lcom/android/server/wifi/WifiConfigManager;->getLastSelectedConfiguration()Ljava/lang/String;

    #@79d
    move-result-object v14

    #@79e
    .line 2566
    .local v14, "key":Ljava/lang/String;
    if-eqz v14, :cond_3

    #@7a0
    .line 2567
    const-string/jumbo v23, " last="

    #@7a3
    move-object/from16 v0, v20

    #@7a5
    move-object/from16 v1, v23

    #@7a7
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@7aa
    move-result-object v23

    #@7ab
    move-object/from16 v0, v23

    #@7ad
    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@7b0
    goto/16 :goto_0

    #@7b2
    .line 2573
    .end local v14    # "key":Ljava/lang/String;
    :sswitch_8
    const-string/jumbo v23, " "

    #@7b5
    move-object/from16 v0, v20

    #@7b7
    move-object/from16 v1, v23

    #@7b9
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@7bc
    .line 2574
    move-object/from16 v0, p1

    #@7be
    iget v0, v0, Landroid/os/Message;->arg1:I

    #@7c0
    move/from16 v23, v0

    #@7c2
    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    #@7c5
    move-result-object v23

    #@7c6
    move-object/from16 v0, v20

    #@7c8
    move-object/from16 v1, v23

    #@7ca
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@7cd
    .line 2575
    const-string/jumbo v23, " "

    #@7d0
    move-object/from16 v0, v20

    #@7d2
    move-object/from16 v1, v23

    #@7d4
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@7d7
    .line 2576
    move-object/from16 v0, p1

    #@7d9
    iget v0, v0, Landroid/os/Message;->arg2:I

    #@7db
    move/from16 v23, v0

    #@7dd
    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    #@7e0
    move-result-object v23

    #@7e1
    move-object/from16 v0, v20

    #@7e3
    move-object/from16 v1, v23

    #@7e5
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@7e8
    .line 2577
    const-string/jumbo v23, " "

    #@7eb
    move-object/from16 v0, v20

    #@7ed
    move-object/from16 v1, v23

    #@7ef
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@7f2
    move-result-object v23

    #@7f3
    move-object/from16 v0, p0

    #@7f5
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine;->mLastBssid:Ljava/lang/String;

    #@7f7
    move-object/from16 v24, v0

    #@7f9
    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@7fc
    .line 2578
    const-string/jumbo v23, " nid="

    #@7ff
    move-object/from16 v0, v20

    #@801
    move-object/from16 v1, v23

    #@803
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@806
    move-result-object v23

    #@807
    move-object/from16 v0, p0

    #@809
    iget v0, v0, Lcom/android/server/wifi/WifiStateMachine;->mLastNetworkId:I

    #@80b
    move/from16 v24, v0

    #@80d
    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@810
    .line 2579
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wifi/WifiStateMachine;->getCurrentWifiConfiguration()Landroid/net/wifi/WifiConfiguration;

    #@813
    move-result-object v7

    #@814
    .line 2580
    .local v7, "config":Landroid/net/wifi/WifiConfiguration;
    if-eqz v7, :cond_13

    #@816
    .line 2581
    const-string/jumbo v23, " "

    #@819
    move-object/from16 v0, v20

    #@81b
    move-object/from16 v1, v23

    #@81d
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@820
    move-result-object v23

    #@821
    invoke-virtual {v7}, Landroid/net/wifi/WifiConfiguration;->configKey()Ljava/lang/String;

    #@824
    move-result-object v24

    #@825
    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@828
    .line 2583
    :cond_13
    move-object/from16 v0, p0

    #@82a
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine;->mWifiConfigManager:Lcom/android/server/wifi/WifiConfigManager;

    #@82c
    move-object/from16 v23, v0

    #@82e
    invoke-virtual/range {v23 .. v23}, Lcom/android/server/wifi/WifiConfigManager;->getLastSelectedConfiguration()Ljava/lang/String;

    #@831
    move-result-object v14

    #@832
    .line 2584
    .restart local v14    # "key":Ljava/lang/String;
    if-eqz v14, :cond_3

    #@834
    .line 2585
    const-string/jumbo v23, " last="

    #@837
    move-object/from16 v0, v20

    #@839
    move-object/from16 v1, v23

    #@83b
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@83e
    move-result-object v23

    #@83f
    move-object/from16 v0, v23

    #@841
    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@844
    goto/16 :goto_0

    #@846
    .line 2590
    .end local v7    # "config":Landroid/net/wifi/WifiConfiguration;
    .end local v14    # "key":Ljava/lang/String;
    :sswitch_9
    const-string/jumbo v23, " "

    #@849
    move-object/from16 v0, v20

    #@84b
    move-object/from16 v1, v23

    #@84d
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@850
    .line 2591
    move-object/from16 v0, p1

    #@852
    iget v0, v0, Landroid/os/Message;->arg1:I

    #@854
    move/from16 v23, v0

    #@856
    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    #@859
    move-result-object v23

    #@85a
    move-object/from16 v0, v20

    #@85c
    move-object/from16 v1, v23

    #@85e
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@861
    .line 2592
    const-string/jumbo v23, " "

    #@864
    move-object/from16 v0, v20

    #@866
    move-object/from16 v1, v23

    #@868
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@86b
    .line 2593
    move-object/from16 v0, p1

    #@86d
    iget v0, v0, Landroid/os/Message;->arg2:I

    #@86f
    move/from16 v23, v0

    #@871
    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    #@874
    move-result-object v23

    #@875
    move-object/from16 v0, v20

    #@877
    move-object/from16 v1, v23

    #@879
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@87c
    .line 2594
    move-object/from16 v0, p1

    #@87e
    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@880
    move-object/from16 v23, v0

    #@882
    if-eqz v23, :cond_14

    #@884
    .line 2595
    const-string/jumbo v23, " BSSID="

    #@887
    move-object/from16 v0, v20

    #@889
    move-object/from16 v1, v23

    #@88b
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@88e
    move-result-object v24

    #@88f
    move-object/from16 v0, p1

    #@891
    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@893
    move-object/from16 v23, v0

    #@895
    check-cast v23, Ljava/lang/String;

    #@897
    move-object/from16 v0, v24

    #@899
    move-object/from16 v1, v23

    #@89b
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@89e
    .line 2597
    :cond_14
    move-object/from16 v0, p0

    #@8a0
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine;->mTargetRoamBSSID:Ljava/lang/String;

    #@8a2
    move-object/from16 v23, v0

    #@8a4
    if-eqz v23, :cond_15

    #@8a6
    .line 2598
    const-string/jumbo v23, " Target="

    #@8a9
    move-object/from16 v0, v20

    #@8ab
    move-object/from16 v1, v23

    #@8ad
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@8b0
    move-result-object v23

    #@8b1
    move-object/from16 v0, p0

    #@8b3
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine;->mTargetRoamBSSID:Ljava/lang/String;

    #@8b5
    move-object/from16 v24, v0

    #@8b7
    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@8ba
    .line 2600
    :cond_15
    const-string/jumbo v23, " roam="

    #@8bd
    move-object/from16 v0, v20

    #@8bf
    move-object/from16 v1, v23

    #@8c1
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@8c4
    move-result-object v23

    #@8c5
    move-object/from16 v0, p0

    #@8c7
    iget-boolean v0, v0, Lcom/android/server/wifi/WifiStateMachine;->mAutoRoaming:Z

    #@8c9
    move/from16 v24, v0

    #@8cb
    invoke-static/range {v24 .. v24}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    #@8ce
    move-result-object v24

    #@8cf
    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@8d2
    goto/16 :goto_0

    #@8d4
    .line 2603
    :sswitch_a
    move-object/from16 v0, p1

    #@8d6
    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@8d8
    move-object/from16 v23, v0

    #@8da
    if-eqz v23, :cond_16

    #@8dc
    .line 2604
    const-string/jumbo v23, " "

    #@8df
    move-object/from16 v0, v20

    #@8e1
    move-object/from16 v1, v23

    #@8e3
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@8e6
    move-result-object v24

    #@8e7
    move-object/from16 v0, p1

    #@8e9
    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@8eb
    move-object/from16 v23, v0

    #@8ed
    check-cast v23, Ljava/lang/String;

    #@8ef
    move-object/from16 v0, v24

    #@8f1
    move-object/from16 v1, v23

    #@8f3
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@8f6
    .line 2606
    :cond_16
    const-string/jumbo v23, " nid="

    #@8f9
    move-object/from16 v0, v20

    #@8fb
    move-object/from16 v1, v23

    #@8fd
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@900
    move-result-object v23

    #@901
    move-object/from16 v0, p1

    #@903
    iget v0, v0, Landroid/os/Message;->arg1:I

    #@905
    move/from16 v24, v0

    #@907
    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@90a
    .line 2607
    const-string/jumbo v23, " reason="

    #@90d
    move-object/from16 v0, v20

    #@90f
    move-object/from16 v1, v23

    #@911
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@914
    move-result-object v23

    #@915
    move-object/from16 v0, p1

    #@917
    iget v0, v0, Landroid/os/Message;->arg2:I

    #@919
    move/from16 v24, v0

    #@91b
    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@91e
    .line 2608
    move-object/from16 v0, p0

    #@920
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine;->mLastBssid:Ljava/lang/String;

    #@922
    move-object/from16 v23, v0

    #@924
    if-eqz v23, :cond_17

    #@926
    .line 2609
    const-string/jumbo v23, " lastbssid="

    #@929
    move-object/from16 v0, v20

    #@92b
    move-object/from16 v1, v23

    #@92d
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@930
    move-result-object v23

    #@931
    move-object/from16 v0, p0

    #@933
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine;->mLastBssid:Ljava/lang/String;

    #@935
    move-object/from16 v24, v0

    #@937
    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@93a
    .line 2611
    :cond_17
    move-object/from16 v0, p0

    #@93c
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    #@93e
    move-object/from16 v23, v0

    #@940
    invoke-virtual/range {v23 .. v23}, Landroid/net/wifi/WifiInfo;->getFrequency()I

    #@943
    move-result v23

    #@944
    const/16 v24, -0x1

    #@946
    move/from16 v0, v23

    #@948
    move/from16 v1, v24

    #@94a
    if-eq v0, v1, :cond_18

    #@94c
    .line 2612
    const-string/jumbo v23, " freq="

    #@94f
    move-object/from16 v0, v20

    #@951
    move-object/from16 v1, v23

    #@953
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@956
    move-result-object v23

    #@957
    move-object/from16 v0, p0

    #@959
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    #@95b
    move-object/from16 v24, v0

    #@95d
    invoke-virtual/range {v24 .. v24}, Landroid/net/wifi/WifiInfo;->getFrequency()I

    #@960
    move-result v24

    #@961
    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@964
    .line 2613
    const-string/jumbo v23, " rssi="

    #@967
    move-object/from16 v0, v20

    #@969
    move-object/from16 v1, v23

    #@96b
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@96e
    move-result-object v23

    #@96f
    move-object/from16 v0, p0

    #@971
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    #@973
    move-object/from16 v24, v0

    #@975
    invoke-virtual/range {v24 .. v24}, Landroid/net/wifi/WifiInfo;->getRssi()I

    #@978
    move-result v24

    #@979
    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@97c
    .line 2615
    :cond_18
    move-object/from16 v0, p0

    #@97e
    iget-boolean v0, v0, Lcom/android/server/wifi/WifiStateMachine;->linkDebouncing:Z

    #@980
    move/from16 v23, v0

    #@982
    if-eqz v23, :cond_3

    #@984
    .line 2616
    const-string/jumbo v23, " debounce"

    #@987
    move-object/from16 v0, v20

    #@989
    move-object/from16 v1, v23

    #@98b
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@98e
    goto/16 :goto_0

    #@990
    .line 2621
    :sswitch_b
    const-string/jumbo v23, " nid="

    #@993
    move-object/from16 v0, v20

    #@995
    move-object/from16 v1, v23

    #@997
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@99a
    move-result-object v23

    #@99b
    move-object/from16 v0, p1

    #@99d
    iget v0, v0, Landroid/os/Message;->arg1:I

    #@99f
    move/from16 v24, v0

    #@9a1
    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@9a4
    .line 2622
    move-object/from16 v0, p1

    #@9a6
    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@9a8
    move-object/from16 v23, v0

    #@9aa
    if-eqz v23, :cond_19

    #@9ac
    .line 2623
    const-string/jumbo v23, " "

    #@9af
    move-object/from16 v0, v20

    #@9b1
    move-object/from16 v1, v23

    #@9b3
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@9b6
    move-result-object v24

    #@9b7
    move-object/from16 v0, p1

    #@9b9
    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@9bb
    move-object/from16 v23, v0

    #@9bd
    check-cast v23, Ljava/lang/String;

    #@9bf
    move-object/from16 v0, v24

    #@9c1
    move-object/from16 v1, v23

    #@9c3
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@9c6
    .line 2625
    :cond_19
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wifi/WifiStateMachine;->getCurrentWifiConfiguration()Landroid/net/wifi/WifiConfiguration;

    #@9c9
    move-result-object v7

    #@9ca
    .line 2626
    .restart local v7    # "config":Landroid/net/wifi/WifiConfiguration;
    if-eqz v7, :cond_3

    #@9cc
    .line 2628
    invoke-virtual {v7}, Landroid/net/wifi/WifiConfiguration;->getNetworkSelectionStatus()Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;

    #@9cf
    move-result-object v15

    #@9d0
    .line 2629
    .restart local v15    # "netWorkSelectionStatus":Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;
    const-string/jumbo v23, " cur="

    #@9d3
    move-object/from16 v0, v20

    #@9d5
    move-object/from16 v1, v23

    #@9d7
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@9da
    move-result-object v23

    #@9db
    invoke-virtual {v7}, Landroid/net/wifi/WifiConfiguration;->configKey()Ljava/lang/String;

    #@9de
    move-result-object v24

    #@9df
    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@9e2
    .line 2630
    const-string/jumbo v23, " ajst="

    #@9e5
    move-object/from16 v0, v20

    #@9e7
    move-object/from16 v1, v23

    #@9e9
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@9ec
    move-result-object v23

    #@9ed
    invoke-virtual {v15}, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->getNetworkStatusString()Ljava/lang/String;

    #@9f0
    move-result-object v24

    #@9f1
    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@9f4
    .line 2631
    iget-boolean v0, v7, Landroid/net/wifi/WifiConfiguration;->selfAdded:Z

    #@9f6
    move/from16 v23, v0

    #@9f8
    if-eqz v23, :cond_1a

    #@9fa
    .line 2632
    const-string/jumbo v23, " selfAdded"

    #@9fd
    move-object/from16 v0, v20

    #@9ff
    move-object/from16 v1, v23

    #@a01
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a04
    .line 2634
    :cond_1a
    iget v0, v7, Landroid/net/wifi/WifiConfiguration;->status:I

    #@a06
    move/from16 v23, v0

    #@a08
    if-eqz v23, :cond_1b

    #@a0a
    .line 2635
    const-string/jumbo v23, " st="

    #@a0d
    move-object/from16 v0, v20

    #@a0f
    move-object/from16 v1, v23

    #@a11
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a14
    move-result-object v23

    #@a15
    iget v0, v7, Landroid/net/wifi/WifiConfiguration;->status:I

    #@a17
    move/from16 v24, v0

    #@a19
    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@a1c
    .line 2636
    const-string/jumbo v23, " rs="

    #@a1f
    move-object/from16 v0, v20

    #@a21
    move-object/from16 v1, v23

    #@a23
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a26
    move-result-object v23

    #@a27
    .line 2637
    invoke-virtual {v15}, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->getNetworkDisableReasonString()Ljava/lang/String;

    #@a2a
    move-result-object v24

    #@a2b
    .line 2636
    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a2e
    .line 2639
    :cond_1b
    iget-wide v0, v7, Landroid/net/wifi/WifiConfiguration;->lastConnected:J

    #@a30
    move-wide/from16 v24, v0

    #@a32
    const-wide/16 v26, 0x0

    #@a34
    cmp-long v23, v24, v26

    #@a36
    if-eqz v23, :cond_1c

    #@a38
    .line 2640
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    #@a3b
    move-result-wide v24

    #@a3c
    invoke-static/range {v24 .. v25}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    #@a3f
    move-result-object v16

    #@a40
    .line 2641
    .restart local v16    # "now":Ljava/lang/Long;
    const-string/jumbo v23, " lastconn="

    #@a43
    move-object/from16 v0, v20

    #@a45
    move-object/from16 v1, v23

    #@a47
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a4a
    move-result-object v23

    #@a4b
    invoke-virtual/range {v16 .. v16}, Ljava/lang/Long;->longValue()J

    #@a4e
    move-result-wide v24

    #@a4f
    iget-wide v0, v7, Landroid/net/wifi/WifiConfiguration;->lastConnected:J

    #@a51
    move-wide/from16 v26, v0

    #@a53
    sub-long v24, v24, v26

    #@a55
    invoke-virtual/range {v23 .. v25}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    #@a58
    move-result-object v23

    #@a59
    const-string/jumbo v24, "(ms)"

    #@a5c
    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a5f
    .line 2643
    .end local v16    # "now":Ljava/lang/Long;
    :cond_1c
    move-object/from16 v0, p0

    #@a61
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine;->mLastBssid:Ljava/lang/String;

    #@a63
    move-object/from16 v23, v0

    #@a65
    if-eqz v23, :cond_1d

    #@a67
    .line 2644
    const-string/jumbo v23, " lastbssid="

    #@a6a
    move-object/from16 v0, v20

    #@a6c
    move-object/from16 v1, v23

    #@a6e
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a71
    move-result-object v23

    #@a72
    move-object/from16 v0, p0

    #@a74
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine;->mLastBssid:Ljava/lang/String;

    #@a76
    move-object/from16 v24, v0

    #@a78
    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a7b
    .line 2646
    :cond_1d
    move-object/from16 v0, p0

    #@a7d
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    #@a7f
    move-object/from16 v23, v0

    #@a81
    invoke-virtual/range {v23 .. v23}, Landroid/net/wifi/WifiInfo;->getFrequency()I

    #@a84
    move-result v23

    #@a85
    const/16 v24, -0x1

    #@a87
    move/from16 v0, v23

    #@a89
    move/from16 v1, v24

    #@a8b
    if-eq v0, v1, :cond_3

    #@a8d
    .line 2647
    const-string/jumbo v23, " freq="

    #@a90
    move-object/from16 v0, v20

    #@a92
    move-object/from16 v1, v23

    #@a94
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a97
    move-result-object v23

    #@a98
    move-object/from16 v0, p0

    #@a9a
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    #@a9c
    move-object/from16 v24, v0

    #@a9e
    invoke-virtual/range {v24 .. v24}, Landroid/net/wifi/WifiInfo;->getFrequency()I

    #@aa1
    move-result v24

    #@aa2
    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@aa5
    .line 2648
    const-string/jumbo v23, " rssi="

    #@aa8
    move-object/from16 v0, v20

    #@aaa
    move-object/from16 v1, v23

    #@aac
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@aaf
    move-result-object v23

    #@ab0
    move-object/from16 v0, p0

    #@ab2
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    #@ab4
    move-object/from16 v24, v0

    #@ab6
    invoke-virtual/range {v24 .. v24}, Landroid/net/wifi/WifiInfo;->getRssi()I

    #@ab9
    move-result v24

    #@aba
    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@abd
    .line 2649
    const-string/jumbo v23, " bssid="

    #@ac0
    move-object/from16 v0, v20

    #@ac2
    move-object/from16 v1, v23

    #@ac4
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@ac7
    move-result-object v23

    #@ac8
    move-object/from16 v0, p0

    #@aca
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    #@acc
    move-object/from16 v24, v0

    #@ace
    invoke-virtual/range {v24 .. v24}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;

    #@ad1
    move-result-object v24

    #@ad2
    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@ad5
    goto/16 :goto_0

    #@ad7
    .line 2656
    .end local v7    # "config":Landroid/net/wifi/WifiConfiguration;
    .end local v15    # "netWorkSelectionStatus":Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;
    :sswitch_c
    const-string/jumbo v23, " "

    #@ada
    move-object/from16 v0, v20

    #@adc
    move-object/from16 v1, v23

    #@ade
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@ae1
    .line 2657
    move-object/from16 v0, p1

    #@ae3
    iget v0, v0, Landroid/os/Message;->arg1:I

    #@ae5
    move/from16 v23, v0

    #@ae7
    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    #@aea
    move-result-object v23

    #@aeb
    move-object/from16 v0, v20

    #@aed
    move-object/from16 v1, v23

    #@aef
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@af2
    .line 2658
    const-string/jumbo v23, " "

    #@af5
    move-object/from16 v0, v20

    #@af7
    move-object/from16 v1, v23

    #@af9
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@afc
    .line 2659
    move-object/from16 v0, p1

    #@afe
    iget v0, v0, Landroid/os/Message;->arg2:I

    #@b00
    move/from16 v23, v0

    #@b02
    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    #@b05
    move-result-object v23

    #@b06
    move-object/from16 v0, v20

    #@b08
    move-object/from16 v1, v23

    #@b0a
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b0d
    .line 2660
    move-object/from16 v0, p0

    #@b0f
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    #@b11
    move-object/from16 v23, v0

    #@b13
    invoke-virtual/range {v23 .. v23}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    #@b16
    move-result-object v23

    #@b17
    if-eqz v23, :cond_1e

    #@b19
    .line 2661
    move-object/from16 v0, p0

    #@b1b
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    #@b1d
    move-object/from16 v23, v0

    #@b1f
    invoke-virtual/range {v23 .. v23}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    #@b22
    move-result-object v23

    #@b23
    if-eqz v23, :cond_1e

    #@b25
    .line 2662
    const-string/jumbo v23, " "

    #@b28
    move-object/from16 v0, v20

    #@b2a
    move-object/from16 v1, v23

    #@b2c
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b2f
    move-result-object v23

    #@b30
    move-object/from16 v0, p0

    #@b32
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    #@b34
    move-object/from16 v24, v0

    #@b36
    invoke-virtual/range {v24 .. v24}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    #@b39
    move-result-object v24

    #@b3a
    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b3d
    .line 2663
    :cond_1e
    move-object/from16 v0, p0

    #@b3f
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    #@b41
    move-object/from16 v23, v0

    #@b43
    invoke-virtual/range {v23 .. v23}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;

    #@b46
    move-result-object v23

    #@b47
    if-eqz v23, :cond_1f

    #@b49
    .line 2664
    const-string/jumbo v23, " "

    #@b4c
    move-object/from16 v0, v20

    #@b4e
    move-object/from16 v1, v23

    #@b50
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b53
    move-result-object v23

    #@b54
    move-object/from16 v0, p0

    #@b56
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    #@b58
    move-object/from16 v24, v0

    #@b5a
    invoke-virtual/range {v24 .. v24}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;

    #@b5d
    move-result-object v24

    #@b5e
    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b61
    .line 2665
    :cond_1f
    const-string/jumbo v23, " rssi="

    #@b64
    move-object/from16 v0, v20

    #@b66
    move-object/from16 v1, v23

    #@b68
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b6b
    move-result-object v23

    #@b6c
    move-object/from16 v0, p0

    #@b6e
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    #@b70
    move-object/from16 v24, v0

    #@b72
    invoke-virtual/range {v24 .. v24}, Landroid/net/wifi/WifiInfo;->getRssi()I

    #@b75
    move-result v24

    #@b76
    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@b79
    .line 2666
    const-string/jumbo v23, " f="

    #@b7c
    move-object/from16 v0, v20

    #@b7e
    move-object/from16 v1, v23

    #@b80
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b83
    move-result-object v23

    #@b84
    move-object/from16 v0, p0

    #@b86
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    #@b88
    move-object/from16 v24, v0

    #@b8a
    invoke-virtual/range {v24 .. v24}, Landroid/net/wifi/WifiInfo;->getFrequency()I

    #@b8d
    move-result v24

    #@b8e
    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@b91
    .line 2667
    const-string/jumbo v23, " sc="

    #@b94
    move-object/from16 v0, v20

    #@b96
    move-object/from16 v1, v23

    #@b98
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b9b
    move-result-object v23

    #@b9c
    move-object/from16 v0, p0

    #@b9e
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    #@ba0
    move-object/from16 v24, v0

    #@ba2
    move-object/from16 v0, v24

    #@ba4
    iget v0, v0, Landroid/net/wifi/WifiInfo;->score:I

    #@ba6
    move/from16 v24, v0

    #@ba8
    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@bab
    .line 2668
    const-string/jumbo v23, " link="

    #@bae
    move-object/from16 v0, v20

    #@bb0
    move-object/from16 v1, v23

    #@bb2
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@bb5
    move-result-object v23

    #@bb6
    move-object/from16 v0, p0

    #@bb8
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    #@bba
    move-object/from16 v24, v0

    #@bbc
    invoke-virtual/range {v24 .. v24}, Landroid/net/wifi/WifiInfo;->getLinkSpeed()I

    #@bbf
    move-result v24

    #@bc0
    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@bc3
    .line 2669
    const-string/jumbo v23, " tx=%.1f,"

    #@bc6
    const/16 v24, 0x1

    #@bc8
    move/from16 v0, v24

    #@bca
    new-array v0, v0, [Ljava/lang/Object;

    #@bcc
    move-object/from16 v24, v0

    #@bce
    move-object/from16 v0, p0

    #@bd0
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    #@bd2
    move-object/from16 v25, v0

    #@bd4
    move-object/from16 v0, v25

    #@bd6
    iget-wide v0, v0, Landroid/net/wifi/WifiInfo;->txSuccessRate:D

    #@bd8
    move-wide/from16 v26, v0

    #@bda
    invoke-static/range {v26 .. v27}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    #@bdd
    move-result-object v25

    #@bde
    const/16 v26, 0x0

    #@be0
    aput-object v25, v24, v26

    #@be2
    invoke-static/range {v23 .. v24}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@be5
    move-result-object v23

    #@be6
    move-object/from16 v0, v20

    #@be8
    move-object/from16 v1, v23

    #@bea
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@bed
    .line 2670
    const-string/jumbo v23, " %.1f,"

    #@bf0
    const/16 v24, 0x1

    #@bf2
    move/from16 v0, v24

    #@bf4
    new-array v0, v0, [Ljava/lang/Object;

    #@bf6
    move-object/from16 v24, v0

    #@bf8
    move-object/from16 v0, p0

    #@bfa
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    #@bfc
    move-object/from16 v25, v0

    #@bfe
    move-object/from16 v0, v25

    #@c00
    iget-wide v0, v0, Landroid/net/wifi/WifiInfo;->txRetriesRate:D

    #@c02
    move-wide/from16 v26, v0

    #@c04
    invoke-static/range {v26 .. v27}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    #@c07
    move-result-object v25

    #@c08
    const/16 v26, 0x0

    #@c0a
    aput-object v25, v24, v26

    #@c0c
    invoke-static/range {v23 .. v24}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@c0f
    move-result-object v23

    #@c10
    move-object/from16 v0, v20

    #@c12
    move-object/from16 v1, v23

    #@c14
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@c17
    .line 2671
    const-string/jumbo v23, " %.1f "

    #@c1a
    const/16 v24, 0x1

    #@c1c
    move/from16 v0, v24

    #@c1e
    new-array v0, v0, [Ljava/lang/Object;

    #@c20
    move-object/from16 v24, v0

    #@c22
    move-object/from16 v0, p0

    #@c24
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    #@c26
    move-object/from16 v25, v0

    #@c28
    move-object/from16 v0, v25

    #@c2a
    iget-wide v0, v0, Landroid/net/wifi/WifiInfo;->txBadRate:D

    #@c2c
    move-wide/from16 v26, v0

    #@c2e
    invoke-static/range {v26 .. v27}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    #@c31
    move-result-object v25

    #@c32
    const/16 v26, 0x0

    #@c34
    aput-object v25, v24, v26

    #@c36
    invoke-static/range {v23 .. v24}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@c39
    move-result-object v23

    #@c3a
    move-object/from16 v0, v20

    #@c3c
    move-object/from16 v1, v23

    #@c3e
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@c41
    .line 2672
    const-string/jumbo v23, " rx=%.1f"

    #@c44
    const/16 v24, 0x1

    #@c46
    move/from16 v0, v24

    #@c48
    new-array v0, v0, [Ljava/lang/Object;

    #@c4a
    move-object/from16 v24, v0

    #@c4c
    move-object/from16 v0, p0

    #@c4e
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    #@c50
    move-object/from16 v25, v0

    #@c52
    move-object/from16 v0, v25

    #@c54
    iget-wide v0, v0, Landroid/net/wifi/WifiInfo;->rxSuccessRate:D

    #@c56
    move-wide/from16 v26, v0

    #@c58
    invoke-static/range {v26 .. v27}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    #@c5b
    move-result-object v25

    #@c5c
    const/16 v26, 0x0

    #@c5e
    aput-object v25, v24, v26

    #@c60
    invoke-static/range {v23 .. v24}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@c63
    move-result-object v23

    #@c64
    move-object/from16 v0, v20

    #@c66
    move-object/from16 v1, v23

    #@c68
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@c6b
    .line 2673
    const-string/jumbo v23, " bcn=%d"

    #@c6e
    const/16 v24, 0x1

    #@c70
    move/from16 v0, v24

    #@c72
    new-array v0, v0, [Ljava/lang/Object;

    #@c74
    move-object/from16 v24, v0

    #@c76
    move-object/from16 v0, p0

    #@c78
    iget v0, v0, Lcom/android/server/wifi/WifiStateMachine;->mRunningBeaconCount:I

    #@c7a
    move/from16 v25, v0

    #@c7c
    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@c7f
    move-result-object v25

    #@c80
    const/16 v26, 0x0

    #@c82
    aput-object v25, v24, v26

    #@c84
    invoke-static/range {v23 .. v24}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@c87
    move-result-object v23

    #@c88
    move-object/from16 v0, v20

    #@c8a
    move-object/from16 v1, v23

    #@c8c
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@c8f
    .line 2674
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wifi/WifiStateMachine;->reportOnTime()Ljava/lang/String;

    #@c92
    move-result-object v17

    #@c93
    .line 2675
    .restart local v17    # "report":Ljava/lang/String;
    if-eqz v17, :cond_20

    #@c95
    .line 2676
    const-string/jumbo v23, " "

    #@c98
    move-object/from16 v0, v20

    #@c9a
    move-object/from16 v1, v23

    #@c9c
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@c9f
    move-result-object v23

    #@ca0
    move-object/from16 v0, v23

    #@ca2
    move-object/from16 v1, v17

    #@ca4
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@ca7
    .line 2678
    :cond_20
    move-object/from16 v0, p0

    #@ca9
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine;->mWifiScoreReport:Lcom/android/server/wifi/WifiScoreReport;

    #@cab
    move-object/from16 v23, v0

    #@cad
    if-eqz v23, :cond_21

    #@caf
    .line 2679
    move-object/from16 v0, p0

    #@cb1
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine;->mWifiScoreReport:Lcom/android/server/wifi/WifiScoreReport;

    #@cb3
    move-object/from16 v23, v0

    #@cb5
    invoke-virtual/range {v23 .. v23}, Lcom/android/server/wifi/WifiScoreReport;->getReport()Ljava/lang/String;

    #@cb8
    move-result-object v23

    #@cb9
    move-object/from16 v0, v20

    #@cbb
    move-object/from16 v1, v23

    #@cbd
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@cc0
    .line 2681
    :cond_21
    move-object/from16 v0, p0

    #@cc2
    iget-boolean v0, v0, Lcom/android/server/wifi/WifiStateMachine;->mConnectedModeGScanOffloadStarted:Z

    #@cc4
    move/from16 v23, v0

    #@cc6
    if-eqz v23, :cond_22

    #@cc8
    .line 2682
    const-string/jumbo v23, " offload-started periodMilli "

    #@ccb
    move-object/from16 v0, v20

    #@ccd
    move-object/from16 v1, v23

    #@ccf
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@cd2
    move-result-object v23

    #@cd3
    move-object/from16 v0, p0

    #@cd5
    iget-wide v0, v0, Lcom/android/server/wifi/WifiStateMachine;->mGScanPeriodMilli:J

    #@cd7
    move-wide/from16 v24, v0

    #@cd9
    invoke-virtual/range {v23 .. v25}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    #@cdc
    goto/16 :goto_0

    #@cde
    .line 2684
    :cond_22
    const-string/jumbo v23, " offload-stopped"

    #@ce1
    move-object/from16 v0, v20

    #@ce3
    move-object/from16 v1, v23

    #@ce5
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@ce8
    goto/16 :goto_0

    #@cea
    .line 2689
    .end local v17    # "report":Ljava/lang/String;
    :sswitch_d
    const-string/jumbo v23, " "

    #@ced
    move-object/from16 v0, v20

    #@cef
    move-object/from16 v1, v23

    #@cf1
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@cf4
    .line 2690
    move-object/from16 v0, p1

    #@cf6
    iget v0, v0, Landroid/os/Message;->arg1:I

    #@cf8
    move/from16 v23, v0

    #@cfa
    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    #@cfd
    move-result-object v23

    #@cfe
    move-object/from16 v0, v20

    #@d00
    move-object/from16 v1, v23

    #@d02
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@d05
    .line 2691
    const-string/jumbo v23, " "

    #@d08
    move-object/from16 v0, v20

    #@d0a
    move-object/from16 v1, v23

    #@d0c
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@d0f
    .line 2692
    move-object/from16 v0, p1

    #@d11
    iget v0, v0, Landroid/os/Message;->arg2:I

    #@d13
    move/from16 v23, v0

    #@d15
    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    #@d18
    move-result-object v23

    #@d19
    move-object/from16 v0, v20

    #@d1b
    move-object/from16 v1, v23

    #@d1d
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@d20
    .line 2693
    move-object/from16 v0, p0

    #@d22
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine;->mWifiConfigManager:Lcom/android/server/wifi/WifiConfigManager;

    #@d24
    move-object/from16 v23, v0

    #@d26
    move-object/from16 v0, p1

    #@d28
    iget v0, v0, Landroid/os/Message;->arg1:I

    #@d2a
    move/from16 v24, v0

    #@d2c
    invoke-virtual/range {v23 .. v24}, Lcom/android/server/wifi/WifiConfigManager;->getWifiConfiguration(I)Landroid/net/wifi/WifiConfiguration;

    #@d2f
    move-result-object v7

    #@d30
    .line 2694
    .restart local v7    # "config":Landroid/net/wifi/WifiConfiguration;
    if-eqz v7, :cond_23

    #@d32
    .line 2695
    const-string/jumbo v23, " "

    #@d35
    move-object/from16 v0, v20

    #@d37
    move-object/from16 v1, v23

    #@d39
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@d3c
    move-result-object v23

    #@d3d
    invoke-virtual {v7}, Landroid/net/wifi/WifiConfiguration;->configKey()Ljava/lang/String;

    #@d40
    move-result-object v24

    #@d41
    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@d44
    .line 2696
    iget-object v0, v7, Landroid/net/wifi/WifiConfiguration;->visibility:Landroid/net/wifi/WifiConfiguration$Visibility;

    #@d46
    move-object/from16 v23, v0

    #@d48
    if-eqz v23, :cond_23

    #@d4a
    .line 2697
    const-string/jumbo v23, " "

    #@d4d
    move-object/from16 v0, v20

    #@d4f
    move-object/from16 v1, v23

    #@d51
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@d54
    move-result-object v23

    #@d55
    iget-object v0, v7, Landroid/net/wifi/WifiConfiguration;->visibility:Landroid/net/wifi/WifiConfiguration$Visibility;

    #@d57
    move-object/from16 v24, v0

    #@d59
    invoke-virtual/range {v24 .. v24}, Landroid/net/wifi/WifiConfiguration$Visibility;->toString()Ljava/lang/String;

    #@d5c
    move-result-object v24

    #@d5d
    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@d60
    .line 2700
    :cond_23
    move-object/from16 v0, p0

    #@d62
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine;->mTargetRoamBSSID:Ljava/lang/String;

    #@d64
    move-object/from16 v23, v0

    #@d66
    if-eqz v23, :cond_24

    #@d68
    .line 2701
    const-string/jumbo v23, " "

    #@d6b
    move-object/from16 v0, v20

    #@d6d
    move-object/from16 v1, v23

    #@d6f
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@d72
    move-result-object v23

    #@d73
    move-object/from16 v0, p0

    #@d75
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine;->mTargetRoamBSSID:Ljava/lang/String;

    #@d77
    move-object/from16 v24, v0

    #@d79
    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@d7c
    .line 2703
    :cond_24
    const-string/jumbo v23, " roam="

    #@d7f
    move-object/from16 v0, v20

    #@d81
    move-object/from16 v1, v23

    #@d83
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@d86
    move-result-object v23

    #@d87
    move-object/from16 v0, p0

    #@d89
    iget-boolean v0, v0, Lcom/android/server/wifi/WifiStateMachine;->mAutoRoaming:Z

    #@d8b
    move/from16 v24, v0

    #@d8d
    invoke-static/range {v24 .. v24}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    #@d90
    move-result-object v24

    #@d91
    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@d94
    .line 2704
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wifi/WifiStateMachine;->getCurrentWifiConfiguration()Landroid/net/wifi/WifiConfiguration;

    #@d97
    move-result-object v7

    #@d98
    .line 2705
    if-eqz v7, :cond_3

    #@d9a
    .line 2706
    invoke-virtual {v7}, Landroid/net/wifi/WifiConfiguration;->configKey()Ljava/lang/String;

    #@d9d
    move-result-object v23

    #@d9e
    move-object/from16 v0, v20

    #@da0
    move-object/from16 v1, v23

    #@da2
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@da5
    .line 2707
    iget-object v0, v7, Landroid/net/wifi/WifiConfiguration;->visibility:Landroid/net/wifi/WifiConfiguration$Visibility;

    #@da7
    move-object/from16 v23, v0

    #@da9
    if-eqz v23, :cond_3

    #@dab
    .line 2708
    const-string/jumbo v23, " "

    #@dae
    move-object/from16 v0, v20

    #@db0
    move-object/from16 v1, v23

    #@db2
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@db5
    move-result-object v23

    #@db6
    iget-object v0, v7, Landroid/net/wifi/WifiConfiguration;->visibility:Landroid/net/wifi/WifiConfiguration$Visibility;

    #@db8
    move-object/from16 v24, v0

    #@dba
    invoke-virtual/range {v24 .. v24}, Landroid/net/wifi/WifiConfiguration$Visibility;->toString()Ljava/lang/String;

    #@dbd
    move-result-object v24

    #@dbe
    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@dc1
    goto/16 :goto_0

    #@dc3
    .line 2713
    .end local v7    # "config":Landroid/net/wifi/WifiConfiguration;
    :sswitch_e
    const-string/jumbo v23, " "

    #@dc6
    move-object/from16 v0, v20

    #@dc8
    move-object/from16 v1, v23

    #@dca
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@dcd
    .line 2714
    move-object/from16 v0, p1

    #@dcf
    iget v0, v0, Landroid/os/Message;->arg1:I

    #@dd1
    move/from16 v23, v0

    #@dd3
    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    #@dd6
    move-result-object v23

    #@dd7
    move-object/from16 v0, v20

    #@dd9
    move-object/from16 v1, v23

    #@ddb
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@dde
    .line 2715
    const-string/jumbo v23, " "

    #@de1
    move-object/from16 v0, v20

    #@de3
    move-object/from16 v1, v23

    #@de5
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@de8
    .line 2716
    move-object/from16 v0, p1

    #@dea
    iget v0, v0, Landroid/os/Message;->arg2:I

    #@dec
    move/from16 v23, v0

    #@dee
    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    #@df1
    move-result-object v23

    #@df2
    move-object/from16 v0, v20

    #@df4
    move-object/from16 v1, v23

    #@df6
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@df9
    .line 2717
    move-object/from16 v0, p1

    #@dfb
    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@dfd
    move-object/from16 v19, v0

    #@dff
    check-cast v19, Landroid/net/wifi/ScanResult;

    #@e01
    .line 2718
    .local v19, "result":Landroid/net/wifi/ScanResult;
    if-eqz v19, :cond_25

    #@e03
    .line 2719
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    #@e06
    move-result-wide v24

    #@e07
    invoke-static/range {v24 .. v25}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    #@e0a
    move-result-object v16

    #@e0b
    .line 2720
    .restart local v16    # "now":Ljava/lang/Long;
    const-string/jumbo v23, " bssid="

    #@e0e
    move-object/from16 v0, v20

    #@e10
    move-object/from16 v1, v23

    #@e12
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@e15
    move-result-object v23

    #@e16
    move-object/from16 v0, v19

    #@e18
    iget-object v0, v0, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    #@e1a
    move-object/from16 v24, v0

    #@e1c
    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@e1f
    .line 2721
    const-string/jumbo v23, " rssi="

    #@e22
    move-object/from16 v0, v20

    #@e24
    move-object/from16 v1, v23

    #@e26
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@e29
    move-result-object v23

    #@e2a
    move-object/from16 v0, v19

    #@e2c
    iget v0, v0, Landroid/net/wifi/ScanResult;->level:I

    #@e2e
    move/from16 v24, v0

    #@e30
    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@e33
    .line 2722
    const-string/jumbo v23, " freq="

    #@e36
    move-object/from16 v0, v20

    #@e38
    move-object/from16 v1, v23

    #@e3a
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@e3d
    move-result-object v23

    #@e3e
    move-object/from16 v0, v19

    #@e40
    iget v0, v0, Landroid/net/wifi/ScanResult;->frequency:I

    #@e42
    move/from16 v24, v0

    #@e44
    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@e47
    .line 2723
    move-object/from16 v0, v19

    #@e49
    iget-wide v0, v0, Landroid/net/wifi/ScanResult;->seen:J

    #@e4b
    move-wide/from16 v24, v0

    #@e4d
    const-wide/16 v26, 0x0

    #@e4f
    cmp-long v23, v24, v26

    #@e51
    if-lez v23, :cond_27

    #@e53
    move-object/from16 v0, v19

    #@e55
    iget-wide v0, v0, Landroid/net/wifi/ScanResult;->seen:J

    #@e57
    move-wide/from16 v24, v0

    #@e59
    invoke-virtual/range {v16 .. v16}, Ljava/lang/Long;->longValue()J

    #@e5c
    move-result-wide v26

    #@e5d
    cmp-long v23, v24, v26

    #@e5f
    if-gez v23, :cond_27

    #@e61
    .line 2724
    const-string/jumbo v23, " seen="

    #@e64
    move-object/from16 v0, v20

    #@e66
    move-object/from16 v1, v23

    #@e68
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@e6b
    move-result-object v23

    #@e6c
    invoke-virtual/range {v16 .. v16}, Ljava/lang/Long;->longValue()J

    #@e6f
    move-result-wide v24

    #@e70
    move-object/from16 v0, v19

    #@e72
    iget-wide v0, v0, Landroid/net/wifi/ScanResult;->seen:J

    #@e74
    move-wide/from16 v26, v0

    #@e76
    sub-long v24, v24, v26

    #@e78
    invoke-virtual/range {v23 .. v25}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    #@e7b
    .line 2730
    .end local v16    # "now":Ljava/lang/Long;
    :cond_25
    :goto_3
    move-object/from16 v0, p0

    #@e7d
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine;->mTargetRoamBSSID:Ljava/lang/String;

    #@e7f
    move-object/from16 v23, v0

    #@e81
    if-eqz v23, :cond_26

    #@e83
    .line 2731
    const-string/jumbo v23, " "

    #@e86
    move-object/from16 v0, v20

    #@e88
    move-object/from16 v1, v23

    #@e8a
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@e8d
    move-result-object v23

    #@e8e
    move-object/from16 v0, p0

    #@e90
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine;->mTargetRoamBSSID:Ljava/lang/String;

    #@e92
    move-object/from16 v24, v0

    #@e94
    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@e97
    .line 2733
    :cond_26
    const-string/jumbo v23, " roam="

    #@e9a
    move-object/from16 v0, v20

    #@e9c
    move-object/from16 v1, v23

    #@e9e
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@ea1
    move-result-object v23

    #@ea2
    move-object/from16 v0, p0

    #@ea4
    iget-boolean v0, v0, Lcom/android/server/wifi/WifiStateMachine;->mAutoRoaming:Z

    #@ea6
    move/from16 v24, v0

    #@ea8
    invoke-static/range {v24 .. v24}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    #@eab
    move-result-object v24

    #@eac
    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@eaf
    .line 2734
    const-string/jumbo v23, " fail count="

    #@eb2
    move-object/from16 v0, v20

    #@eb4
    move-object/from16 v1, v23

    #@eb6
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@eb9
    move-result-object v23

    #@eba
    move-object/from16 v0, p0

    #@ebc
    iget v0, v0, Lcom/android/server/wifi/WifiStateMachine;->mRoamFailCount:I

    #@ebe
    move/from16 v24, v0

    #@ec0
    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    #@ec3
    move-result-object v24

    #@ec4
    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@ec7
    goto/16 :goto_0

    #@ec9
    .line 2727
    .restart local v16    # "now":Ljava/lang/Long;
    :cond_27
    const-string/jumbo v23, " !seen="

    #@ecc
    move-object/from16 v0, v20

    #@ece
    move-object/from16 v1, v23

    #@ed0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@ed3
    move-result-object v23

    #@ed4
    move-object/from16 v0, v19

    #@ed6
    iget-wide v0, v0, Landroid/net/wifi/ScanResult;->seen:J

    #@ed8
    move-wide/from16 v24, v0

    #@eda
    invoke-virtual/range {v23 .. v25}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    #@edd
    goto :goto_3

    #@ede
    .line 2737
    .end local v16    # "now":Ljava/lang/Long;
    .end local v19    # "result":Landroid/net/wifi/ScanResult;
    :sswitch_f
    const-string/jumbo v23, " "

    #@ee1
    move-object/from16 v0, v20

    #@ee3
    move-object/from16 v1, v23

    #@ee5
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@ee8
    .line 2738
    move-object/from16 v0, p1

    #@eea
    iget v0, v0, Landroid/os/Message;->arg1:I

    #@eec
    move/from16 v23, v0

    #@eee
    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    #@ef1
    move-result-object v23

    #@ef2
    move-object/from16 v0, v20

    #@ef4
    move-object/from16 v1, v23

    #@ef6
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@ef9
    .line 2739
    const-string/jumbo v23, " "

    #@efc
    move-object/from16 v0, v20

    #@efe
    move-object/from16 v1, v23

    #@f00
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@f03
    .line 2740
    move-object/from16 v0, p1

    #@f05
    iget v0, v0, Landroid/os/Message;->arg2:I

    #@f07
    move/from16 v23, v0

    #@f09
    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    #@f0c
    move-result-object v23

    #@f0d
    move-object/from16 v0, v20

    #@f0f
    move-object/from16 v1, v23

    #@f11
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@f14
    .line 2741
    move-object/from16 v0, p1

    #@f16
    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@f18
    move-object/from16 v23, v0

    #@f1a
    if-eqz v23, :cond_3

    #@f1c
    .line 2742
    move-object/from16 v0, p1

    #@f1e
    iget-object v7, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@f20
    check-cast v7, Landroid/net/wifi/WifiConfiguration;

    #@f22
    .line 2743
    .restart local v7    # "config":Landroid/net/wifi/WifiConfiguration;
    const-string/jumbo v23, " "

    #@f25
    move-object/from16 v0, v20

    #@f27
    move-object/from16 v1, v23

    #@f29
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@f2c
    move-result-object v23

    #@f2d
    invoke-virtual {v7}, Landroid/net/wifi/WifiConfiguration;->configKey()Ljava/lang/String;

    #@f30
    move-result-object v24

    #@f31
    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@f34
    .line 2744
    const-string/jumbo v23, " prio="

    #@f37
    move-object/from16 v0, v20

    #@f39
    move-object/from16 v1, v23

    #@f3b
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@f3e
    move-result-object v23

    #@f3f
    iget v0, v7, Landroid/net/wifi/WifiConfiguration;->priority:I

    #@f41
    move/from16 v24, v0

    #@f43
    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@f46
    .line 2745
    const-string/jumbo v23, " status="

    #@f49
    move-object/from16 v0, v20

    #@f4b
    move-object/from16 v1, v23

    #@f4d
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@f50
    move-result-object v23

    #@f51
    iget v0, v7, Landroid/net/wifi/WifiConfiguration;->status:I

    #@f53
    move/from16 v24, v0

    #@f55
    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@f58
    .line 2746
    iget-object v0, v7, Landroid/net/wifi/WifiConfiguration;->BSSID:Ljava/lang/String;

    #@f5a
    move-object/from16 v23, v0

    #@f5c
    if-eqz v23, :cond_28

    #@f5e
    .line 2747
    const-string/jumbo v23, " "

    #@f61
    move-object/from16 v0, v20

    #@f63
    move-object/from16 v1, v23

    #@f65
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@f68
    move-result-object v23

    #@f69
    iget-object v0, v7, Landroid/net/wifi/WifiConfiguration;->BSSID:Ljava/lang/String;

    #@f6b
    move-object/from16 v24, v0

    #@f6d
    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@f70
    .line 2749
    :cond_28
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wifi/WifiStateMachine;->getCurrentWifiConfiguration()Landroid/net/wifi/WifiConfiguration;

    #@f73
    move-result-object v9

    #@f74
    .line 2750
    .local v9, "curConfig":Landroid/net/wifi/WifiConfiguration;
    if-eqz v9, :cond_3

    #@f76
    .line 2751
    invoke-virtual {v9}, Landroid/net/wifi/WifiConfiguration;->configKey()Ljava/lang/String;

    #@f79
    move-result-object v23

    #@f7a
    invoke-virtual {v7}, Landroid/net/wifi/WifiConfiguration;->configKey()Ljava/lang/String;

    #@f7d
    move-result-object v24

    #@f7e
    invoke-virtual/range {v23 .. v24}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@f81
    move-result v23

    #@f82
    if-eqz v23, :cond_29

    #@f84
    .line 2752
    const-string/jumbo v23, " is current"

    #@f87
    move-object/from16 v0, v20

    #@f89
    move-object/from16 v1, v23

    #@f8b
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@f8e
    goto/16 :goto_0

    #@f90
    .line 2754
    :cond_29
    const-string/jumbo v23, " current="

    #@f93
    move-object/from16 v0, v20

    #@f95
    move-object/from16 v1, v23

    #@f97
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@f9a
    move-result-object v23

    #@f9b
    invoke-virtual {v9}, Landroid/net/wifi/WifiConfiguration;->configKey()Ljava/lang/String;

    #@f9e
    move-result-object v24

    #@f9f
    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@fa2
    .line 2755
    const-string/jumbo v23, " prio="

    #@fa5
    move-object/from16 v0, v20

    #@fa7
    move-object/from16 v1, v23

    #@fa9
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@fac
    move-result-object v23

    #@fad
    iget v0, v9, Landroid/net/wifi/WifiConfiguration;->priority:I

    #@faf
    move/from16 v24, v0

    #@fb1
    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@fb4
    .line 2756
    const-string/jumbo v23, " status="

    #@fb7
    move-object/from16 v0, v20

    #@fb9
    move-object/from16 v1, v23

    #@fbb
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@fbe
    move-result-object v23

    #@fbf
    iget v0, v9, Landroid/net/wifi/WifiConfiguration;->status:I

    #@fc1
    move/from16 v24, v0

    #@fc3
    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@fc6
    goto/16 :goto_0

    #@fc8
    .line 2763
    .end local v7    # "config":Landroid/net/wifi/WifiConfiguration;
    .end local v9    # "curConfig":Landroid/net/wifi/WifiConfiguration;
    :sswitch_10
    const-string/jumbo v23, " "

    #@fcb
    move-object/from16 v0, v20

    #@fcd
    move-object/from16 v1, v23

    #@fcf
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@fd2
    .line 2764
    move-object/from16 v0, p1

    #@fd4
    iget v0, v0, Landroid/os/Message;->arg1:I

    #@fd6
    move/from16 v23, v0

    #@fd8
    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    #@fdb
    move-result-object v23

    #@fdc
    move-object/from16 v0, v20

    #@fde
    move-object/from16 v1, v23

    #@fe0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@fe3
    .line 2765
    const-string/jumbo v23, " "

    #@fe6
    move-object/from16 v0, v20

    #@fe8
    move-object/from16 v1, v23

    #@fea
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@fed
    .line 2766
    move-object/from16 v0, p1

    #@fef
    iget v0, v0, Landroid/os/Message;->arg2:I

    #@ff1
    move/from16 v23, v0

    #@ff3
    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    #@ff6
    move-result-object v23

    #@ff7
    move-object/from16 v0, v20

    #@ff9
    move-object/from16 v1, v23

    #@ffb
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@ffe
    .line 2767
    move-object/from16 v0, p0

    #@1000
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine;->mWifiConfigManager:Lcom/android/server/wifi/WifiConfigManager;

    #@1002
    move-object/from16 v23, v0

    #@1004
    invoke-virtual/range {v23 .. v23}, Lcom/android/server/wifi/WifiConfigManager;->getLastSelectedConfiguration()Ljava/lang/String;

    #@1007
    move-result-object v14

    #@1008
    .line 2768
    .restart local v14    # "key":Ljava/lang/String;
    if-eqz v14, :cond_2a

    #@100a
    .line 2769
    const-string/jumbo v23, " last="

    #@100d
    move-object/from16 v0, v20

    #@100f
    move-object/from16 v1, v23

    #@1011
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1014
    move-result-object v23

    #@1015
    move-object/from16 v0, v23

    #@1017
    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@101a
    .line 2771
    :cond_2a
    move-object/from16 v0, p0

    #@101c
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine;->mWifiConfigManager:Lcom/android/server/wifi/WifiConfigManager;

    #@101e
    move-object/from16 v23, v0

    #@1020
    move-object/from16 v0, p1

    #@1022
    iget v0, v0, Landroid/os/Message;->arg1:I

    #@1024
    move/from16 v24, v0

    #@1026
    invoke-virtual/range {v23 .. v24}, Lcom/android/server/wifi/WifiConfigManager;->getWifiConfiguration(I)Landroid/net/wifi/WifiConfiguration;

    #@1029
    move-result-object v7

    #@102a
    .line 2772
    .restart local v7    # "config":Landroid/net/wifi/WifiConfiguration;
    if-eqz v7, :cond_3

    #@102c
    if-eqz v14, :cond_2b

    #@102e
    invoke-virtual {v7}, Landroid/net/wifi/WifiConfiguration;->configKey()Ljava/lang/String;

    #@1031
    move-result-object v23

    #@1032
    move-object/from16 v0, v23

    #@1034
    invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@1037
    move-result v23

    #@1038
    if-nez v23, :cond_3

    #@103a
    .line 2773
    :cond_2b
    const-string/jumbo v23, " target="

    #@103d
    move-object/from16 v0, v20

    #@103f
    move-object/from16 v1, v23

    #@1041
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1044
    move-result-object v23

    #@1045
    move-object/from16 v0, v23

    #@1047
    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@104a
    goto/16 :goto_0

    #@104c
    .line 2777
    .end local v7    # "config":Landroid/net/wifi/WifiConfiguration;
    .end local v14    # "key":Ljava/lang/String;
    :sswitch_11
    const-string/jumbo v23, " "

    #@104f
    move-object/from16 v0, v20

    #@1051
    move-object/from16 v1, v23

    #@1053
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1056
    .line 2778
    move-object/from16 v0, p1

    #@1058
    iget v0, v0, Landroid/os/Message;->arg1:I

    #@105a
    move/from16 v23, v0

    #@105c
    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    #@105f
    move-result-object v23

    #@1060
    move-object/from16 v0, v20

    #@1062
    move-object/from16 v1, v23

    #@1064
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1067
    .line 2779
    const-string/jumbo v23, " "

    #@106a
    move-object/from16 v0, v20

    #@106c
    move-object/from16 v1, v23

    #@106e
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1071
    .line 2780
    move-object/from16 v0, p1

    #@1073
    iget v0, v0, Landroid/os/Message;->arg2:I

    #@1075
    move/from16 v23, v0

    #@1077
    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    #@107a
    move-result-object v23

    #@107b
    move-object/from16 v0, v20

    #@107d
    move-object/from16 v1, v23

    #@107f
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1082
    .line 2781
    const-string/jumbo v23, " num="

    #@1085
    move-object/from16 v0, v20

    #@1087
    move-object/from16 v1, v23

    #@1089
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@108c
    move-result-object v23

    #@108d
    move-object/from16 v0, p0

    #@108f
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine;->mWifiConfigManager:Lcom/android/server/wifi/WifiConfigManager;

    #@1091
    move-object/from16 v24, v0

    #@1093
    invoke-virtual/range {v24 .. v24}, Lcom/android/server/wifi/WifiConfigManager;->getConfiguredNetworksSize()I

    #@1096
    move-result v24

    #@1097
    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@109a
    goto/16 :goto_0

    #@109c
    .line 2784
    :sswitch_12
    const-string/jumbo v23, " "

    #@109f
    move-object/from16 v0, v20

    #@10a1
    move-object/from16 v1, v23

    #@10a3
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@10a6
    .line 2785
    move-object/from16 v0, p1

    #@10a8
    iget v0, v0, Landroid/os/Message;->arg1:I

    #@10aa
    move/from16 v23, v0

    #@10ac
    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    #@10af
    move-result-object v23

    #@10b0
    move-object/from16 v0, v20

    #@10b2
    move-object/from16 v1, v23

    #@10b4
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@10b7
    .line 2786
    const-string/jumbo v23, " "

    #@10ba
    move-object/from16 v0, v20

    #@10bc
    move-object/from16 v1, v23

    #@10be
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@10c1
    .line 2787
    move-object/from16 v0, p1

    #@10c3
    iget v0, v0, Landroid/os/Message;->arg2:I

    #@10c5
    move/from16 v23, v0

    #@10c7
    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    #@10ca
    move-result-object v23

    #@10cb
    move-object/from16 v0, v20

    #@10cd
    move-object/from16 v1, v23

    #@10cf
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@10d2
    .line 2788
    const-string/jumbo v23, " txpkts="

    #@10d5
    move-object/from16 v0, v20

    #@10d7
    move-object/from16 v1, v23

    #@10d9
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@10dc
    move-result-object v23

    #@10dd
    move-object/from16 v0, p0

    #@10df
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    #@10e1
    move-object/from16 v24, v0

    #@10e3
    move-object/from16 v0, v24

    #@10e5
    iget-wide v0, v0, Landroid/net/wifi/WifiInfo;->txSuccess:J

    #@10e7
    move-wide/from16 v24, v0

    #@10e9
    invoke-virtual/range {v23 .. v25}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    #@10ec
    .line 2789
    const-string/jumbo v23, ","

    #@10ef
    move-object/from16 v0, v20

    #@10f1
    move-object/from16 v1, v23

    #@10f3
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@10f6
    move-result-object v23

    #@10f7
    move-object/from16 v0, p0

    #@10f9
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    #@10fb
    move-object/from16 v24, v0

    #@10fd
    move-object/from16 v0, v24

    #@10ff
    iget-wide v0, v0, Landroid/net/wifi/WifiInfo;->txBad:J

    #@1101
    move-wide/from16 v24, v0

    #@1103
    invoke-virtual/range {v23 .. v25}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    #@1106
    .line 2790
    const-string/jumbo v23, ","

    #@1109
    move-object/from16 v0, v20

    #@110b
    move-object/from16 v1, v23

    #@110d
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1110
    move-result-object v23

    #@1111
    move-object/from16 v0, p0

    #@1113
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    #@1115
    move-object/from16 v24, v0

    #@1117
    move-object/from16 v0, v24

    #@1119
    iget-wide v0, v0, Landroid/net/wifi/WifiInfo;->txRetries:J

    #@111b
    move-wide/from16 v24, v0

    #@111d
    invoke-virtual/range {v23 .. v25}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    #@1120
    goto/16 :goto_0

    #@1122
    .line 2793
    :sswitch_13
    const-string/jumbo v23, " "

    #@1125
    move-object/from16 v0, v20

    #@1127
    move-object/from16 v1, v23

    #@1129
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@112c
    .line 2794
    move-object/from16 v0, p1

    #@112e
    iget v0, v0, Landroid/os/Message;->arg1:I

    #@1130
    move/from16 v23, v0

    #@1132
    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    #@1135
    move-result-object v23

    #@1136
    move-object/from16 v0, v20

    #@1138
    move-object/from16 v1, v23

    #@113a
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@113d
    .line 2795
    const-string/jumbo v23, " "

    #@1140
    move-object/from16 v0, v20

    #@1142
    move-object/from16 v1, v23

    #@1144
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1147
    .line 2796
    move-object/from16 v0, p1

    #@1149
    iget v0, v0, Landroid/os/Message;->arg2:I

    #@114b
    move/from16 v23, v0

    #@114d
    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    #@1150
    move-result-object v23

    #@1151
    move-object/from16 v0, v20

    #@1153
    move-object/from16 v1, v23

    #@1155
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1158
    .line 2797
    move-object/from16 v0, p1

    #@115a
    iget v0, v0, Landroid/os/Message;->arg1:I

    #@115c
    move/from16 v23, v0

    #@115e
    const/16 v24, 0x1

    #@1160
    move/from16 v0, v23

    #@1162
    move/from16 v1, v24

    #@1164
    if-ne v0, v1, :cond_2d

    #@1166
    .line 2798
    const-string/jumbo v23, " OK "

    #@1169
    move-object/from16 v0, v20

    #@116b
    move-object/from16 v1, v23

    #@116d
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1170
    .line 2802
    :cond_2c
    :goto_4
    move-object/from16 v0, p0

    #@1172
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine;->mLinkProperties:Landroid/net/LinkProperties;

    #@1174
    move-object/from16 v23, v0

    #@1176
    if-eqz v23, :cond_3

    #@1178
    .line 2803
    const-string/jumbo v23, " "

    #@117b
    move-object/from16 v0, v20

    #@117d
    move-object/from16 v1, v23

    #@117f
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1182
    .line 2804
    move-object/from16 v0, p0

    #@1184
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine;->mLinkProperties:Landroid/net/LinkProperties;

    #@1186
    move-object/from16 v23, v0

    #@1188
    invoke-static/range {v23 .. v23}, Lcom/android/server/wifi/WifiStateMachine;->getLinkPropertiesSummary(Landroid/net/LinkProperties;)Ljava/lang/String;

    #@118b
    move-result-object v23

    #@118c
    move-object/from16 v0, v20

    #@118e
    move-object/from16 v1, v23

    #@1190
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1193
    goto/16 :goto_0

    #@1195
    .line 2799
    :cond_2d
    move-object/from16 v0, p1

    #@1197
    iget v0, v0, Landroid/os/Message;->arg1:I

    #@1199
    move/from16 v23, v0

    #@119b
    const/16 v24, 0x2

    #@119d
    move/from16 v0, v23

    #@119f
    move/from16 v1, v24

    #@11a1
    if-ne v0, v1, :cond_2c

    #@11a3
    .line 2800
    const-string/jumbo v23, " FAIL "

    #@11a6
    move-object/from16 v0, v20

    #@11a8
    move-object/from16 v1, v23

    #@11aa
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@11ad
    goto :goto_4

    #@11ae
    .line 2808
    :sswitch_14
    const-string/jumbo v23, " "

    #@11b1
    move-object/from16 v0, v20

    #@11b3
    move-object/from16 v1, v23

    #@11b5
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@11b8
    .line 2809
    move-object/from16 v0, p1

    #@11ba
    iget v0, v0, Landroid/os/Message;->arg1:I

    #@11bc
    move/from16 v23, v0

    #@11be
    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    #@11c1
    move-result-object v23

    #@11c2
    move-object/from16 v0, v20

    #@11c4
    move-object/from16 v1, v23

    #@11c6
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@11c9
    .line 2810
    const-string/jumbo v23, " "

    #@11cc
    move-object/from16 v0, v20

    #@11ce
    move-object/from16 v1, v23

    #@11d0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@11d3
    .line 2811
    move-object/from16 v0, p1

    #@11d5
    iget v0, v0, Landroid/os/Message;->arg2:I

    #@11d7
    move/from16 v23, v0

    #@11d9
    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    #@11dc
    move-result-object v23

    #@11dd
    move-object/from16 v0, v20

    #@11df
    move-object/from16 v1, v23

    #@11e1
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@11e4
    .line 2812
    move-object/from16 v0, p1

    #@11e6
    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@11e8
    move-object/from16 v23, v0

    #@11ea
    if-eqz v23, :cond_3

    #@11ec
    .line 2813
    move-object/from16 v0, p1

    #@11ee
    iget-object v13, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@11f0
    check-cast v13, Landroid/net/NetworkInfo;

    #@11f2
    .line 2814
    .local v13, "info":Landroid/net/NetworkInfo;
    invoke-virtual {v13}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    #@11f5
    move-result-object v21

    #@11f6
    .line 2815
    .local v21, "state":Landroid/net/NetworkInfo$State;
    invoke-virtual {v13}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    #@11f9
    move-result-object v10

    #@11fa
    .line 2816
    .local v10, "detailedState":Landroid/net/NetworkInfo$DetailedState;
    if-eqz v21, :cond_2e

    #@11fc
    .line 2817
    const-string/jumbo v23, " st="

    #@11ff
    move-object/from16 v0, v20

    #@1201
    move-object/from16 v1, v23

    #@1203
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1206
    move-result-object v23

    #@1207
    move-object/from16 v0, v23

    #@1209
    move-object/from16 v1, v21

    #@120b
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@120e
    .line 2819
    :cond_2e
    if-eqz v10, :cond_3

    #@1210
    .line 2820
    const-string/jumbo v23, "/"

    #@1213
    move-object/from16 v0, v20

    #@1215
    move-object/from16 v1, v23

    #@1217
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@121a
    move-result-object v23

    #@121b
    move-object/from16 v0, v23

    #@121d
    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@1220
    goto/16 :goto_0

    #@1222
    .line 2825
    .end local v10    # "detailedState":Landroid/net/NetworkInfo$DetailedState;
    .end local v13    # "info":Landroid/net/NetworkInfo;
    .end local v21    # "state":Landroid/net/NetworkInfo$State;
    :sswitch_15
    const/4 v8, -0x1

    #@1223
    .line 2826
    .local v8, "count":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wifi/WifiStateMachine;->getCurrentWifiConfiguration()Landroid/net/wifi/WifiConfiguration;

    #@1226
    move-result-object v6

    #@1227
    .line 2827
    .local v6, "c":Landroid/net/wifi/WifiConfiguration;
    if-eqz v6, :cond_2f

    #@1229
    .line 2828
    invoke-virtual {v6}, Landroid/net/wifi/WifiConfiguration;->getNetworkSelectionStatus()Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;

    #@122c
    move-result-object v23

    #@122d
    .line 2829
    const/16 v24, 0x4

    #@122f
    .line 2828
    invoke-virtual/range {v23 .. v24}, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->getDisableReasonCounter(I)I

    #@1232
    move-result v8

    #@1233
    .line 2831
    :cond_2f
    const-string/jumbo v23, " "

    #@1236
    move-object/from16 v0, v20

    #@1238
    move-object/from16 v1, v23

    #@123a
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@123d
    .line 2832
    move-object/from16 v0, p1

    #@123f
    iget v0, v0, Landroid/os/Message;->arg1:I

    #@1241
    move/from16 v23, v0

    #@1243
    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    #@1246
    move-result-object v23

    #@1247
    move-object/from16 v0, v20

    #@1249
    move-object/from16 v1, v23

    #@124b
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@124e
    .line 2833
    const-string/jumbo v23, " "

    #@1251
    move-object/from16 v0, v20

    #@1253
    move-object/from16 v1, v23

    #@1255
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1258
    .line 2834
    move-object/from16 v0, p1

    #@125a
    iget v0, v0, Landroid/os/Message;->arg2:I

    #@125c
    move/from16 v23, v0

    #@125e
    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    #@1261
    move-result-object v23

    #@1262
    move-object/from16 v0, v20

    #@1264
    move-object/from16 v1, v23

    #@1266
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1269
    .line 2835
    const-string/jumbo v23, " failures: "

    #@126c
    move-object/from16 v0, v20

    #@126e
    move-object/from16 v1, v23

    #@1270
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1273
    .line 2836
    invoke-static {v8}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    #@1276
    move-result-object v23

    #@1277
    move-object/from16 v0, v20

    #@1279
    move-object/from16 v1, v23

    #@127b
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@127e
    .line 2837
    const-string/jumbo v23, "/"

    #@1281
    move-object/from16 v0, v20

    #@1283
    move-object/from16 v1, v23

    #@1285
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1288
    .line 2838
    move-object/from16 v0, p0

    #@128a
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine;->mWifiConfigManager:Lcom/android/server/wifi/WifiConfigManager;

    #@128c
    move-object/from16 v23, v0

    #@128e
    invoke-virtual/range {v23 .. v23}, Lcom/android/server/wifi/WifiConfigManager;->getMaxDhcpRetries()I

    #@1291
    move-result v23

    #@1292
    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    #@1295
    move-result-object v23

    #@1296
    move-object/from16 v0, v20

    #@1298
    move-object/from16 v1, v23

    #@129a
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@129d
    .line 2839
    move-object/from16 v0, p0

    #@129f
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    #@12a1
    move-object/from16 v23, v0

    #@12a3
    invoke-virtual/range {v23 .. v23}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;

    #@12a6
    move-result-object v23

    #@12a7
    if-eqz v23, :cond_30

    #@12a9
    .line 2840
    const-string/jumbo v23, " "

    #@12ac
    move-object/from16 v0, v20

    #@12ae
    move-object/from16 v1, v23

    #@12b0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@12b3
    move-result-object v23

    #@12b4
    move-object/from16 v0, p0

    #@12b6
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    #@12b8
    move-object/from16 v24, v0

    #@12ba
    invoke-virtual/range {v24 .. v24}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;

    #@12bd
    move-result-object v24

    #@12be
    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@12c1
    .line 2842
    :cond_30
    const-string/jumbo v23, " bcn=%d"

    #@12c4
    const/16 v24, 0x1

    #@12c6
    move/from16 v0, v24

    #@12c8
    new-array v0, v0, [Ljava/lang/Object;

    #@12ca
    move-object/from16 v24, v0

    #@12cc
    move-object/from16 v0, p0

    #@12ce
    iget v0, v0, Lcom/android/server/wifi/WifiStateMachine;->mRunningBeaconCount:I

    #@12d0
    move/from16 v25, v0

    #@12d2
    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@12d5
    move-result-object v25

    #@12d6
    const/16 v26, 0x0

    #@12d8
    aput-object v25, v24, v26

    #@12da
    invoke-static/range {v23 .. v24}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@12dd
    move-result-object v23

    #@12de
    move-object/from16 v0, v20

    #@12e0
    move-object/from16 v1, v23

    #@12e2
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@12e5
    goto/16 :goto_0

    #@12e7
    .line 2845
    .end local v6    # "c":Landroid/net/wifi/WifiConfiguration;
    .end local v8    # "count":I
    :sswitch_16
    const-string/jumbo v23, " "

    #@12ea
    move-object/from16 v0, v20

    #@12ec
    move-object/from16 v1, v23

    #@12ee
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@12f1
    .line 2846
    move-object/from16 v0, p1

    #@12f3
    iget v0, v0, Landroid/os/Message;->arg1:I

    #@12f5
    move/from16 v23, v0

    #@12f7
    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    #@12fa
    move-result-object v23

    #@12fb
    move-object/from16 v0, v20

    #@12fd
    move-object/from16 v1, v23

    #@12ff
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1302
    .line 2847
    const-string/jumbo v23, " "

    #@1305
    move-object/from16 v0, v20

    #@1307
    move-object/from16 v1, v23

    #@1309
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@130c
    .line 2848
    move-object/from16 v0, p1

    #@130e
    iget v0, v0, Landroid/os/Message;->arg2:I

    #@1310
    move/from16 v23, v0

    #@1312
    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    #@1315
    move-result-object v23

    #@1316
    move-object/from16 v0, v20

    #@1318
    move-object/from16 v1, v23

    #@131a
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@131d
    .line 2849
    move-object/from16 v0, p0

    #@131f
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine;->mLinkProperties:Landroid/net/LinkProperties;

    #@1321
    move-object/from16 v23, v0

    #@1323
    if-eqz v23, :cond_3

    #@1325
    .line 2850
    const-string/jumbo v23, " "

    #@1328
    move-object/from16 v0, v20

    #@132a
    move-object/from16 v1, v23

    #@132c
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@132f
    .line 2851
    move-object/from16 v0, p0

    #@1331
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine;->mLinkProperties:Landroid/net/LinkProperties;

    #@1333
    move-object/from16 v23, v0

    #@1335
    invoke-static/range {v23 .. v23}, Lcom/android/server/wifi/WifiStateMachine;->getLinkPropertiesSummary(Landroid/net/LinkProperties;)Ljava/lang/String;

    #@1338
    move-result-object v23

    #@1339
    move-object/from16 v0, v20

    #@133b
    move-object/from16 v1, v23

    #@133d
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1340
    goto/16 :goto_0

    #@1342
    .line 2855
    :sswitch_17
    move-object/from16 v0, p1

    #@1344
    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@1346
    move-object/from16 v23, v0

    #@1348
    if-eqz v23, :cond_3

    #@134a
    .line 2856
    const-string/jumbo v23, " "

    #@134d
    move-object/from16 v0, v20

    #@134f
    move-object/from16 v1, v23

    #@1351
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1354
    move-result-object v24

    #@1355
    move-object/from16 v0, p1

    #@1357
    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@1359
    move-object/from16 v23, v0

    #@135b
    check-cast v23, Ljava/lang/String;

    #@135d
    move-object/from16 v0, v24

    #@135f
    move-object/from16 v1, v23

    #@1361
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1364
    goto/16 :goto_0

    #@1366
    .line 2860
    :sswitch_18
    const-string/jumbo v23, " len="

    #@1369
    move-object/from16 v0, v20

    #@136b
    move-object/from16 v1, v23

    #@136d
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1370
    move-result-object v24

    #@1371
    move-object/from16 v0, p1

    #@1373
    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@1375
    move-object/from16 v23, v0

    #@1377
    check-cast v23, [B

    #@1379
    move-object/from16 v0, v23

    #@137b
    array-length v0, v0

    #@137c
    move/from16 v23, v0

    #@137e
    move-object/from16 v0, v24

    #@1380
    move/from16 v1, v23

    #@1382
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@1385
    goto/16 :goto_0

    #@1387
    .line 2863
    :sswitch_19
    const-string/jumbo v23, " enabled="

    #@138a
    move-object/from16 v0, v20

    #@138c
    move-object/from16 v1, v23

    #@138e
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1391
    move-result-object v24

    #@1392
    move-object/from16 v0, p1

    #@1394
    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@1396
    move-object/from16 v23, v0

    #@1398
    check-cast v23, Ljava/lang/Boolean;

    #@139a
    invoke-virtual/range {v23 .. v23}, Ljava/lang/Boolean;->booleanValue()Z

    #@139d
    move-result v23

    #@139e
    move-object/from16 v0, v24

    #@13a0
    move/from16 v1, v23

    #@13a2
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@13a5
    goto/16 :goto_0

    #@13a7
    .line 2866
    :sswitch_1a
    const-string/jumbo v23, " "

    #@13aa
    move-object/from16 v0, v20

    #@13ac
    move-object/from16 v1, v23

    #@13ae
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@13b1
    .line 2867
    move-object/from16 v0, p1

    #@13b3
    iget v0, v0, Landroid/os/Message;->arg1:I

    #@13b5
    move/from16 v23, v0

    #@13b7
    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    #@13ba
    move-result-object v23

    #@13bb
    move-object/from16 v0, v20

    #@13bd
    move-object/from16 v1, v23

    #@13bf
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@13c2
    .line 2868
    const-string/jumbo v23, " "

    #@13c5
    move-object/from16 v0, v20

    #@13c7
    move-object/from16 v1, v23

    #@13c9
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@13cc
    .line 2869
    move-object/from16 v0, p1

    #@13ce
    iget v0, v0, Landroid/os/Message;->arg2:I

    #@13d0
    move/from16 v23, v0

    #@13d2
    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    #@13d5
    move-result-object v23

    #@13d6
    move-object/from16 v0, v20

    #@13d8
    move-object/from16 v1, v23

    #@13da
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@13dd
    .line 2870
    const-string/jumbo v23, " cur="

    #@13e0
    move-object/from16 v0, v20

    #@13e2
    move-object/from16 v1, v23

    #@13e4
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@13e7
    move-result-object v23

    #@13e8
    move-object/from16 v0, p0

    #@13ea
    iget v0, v0, Lcom/android/server/wifi/WifiStateMachine;->roamWatchdogCount:I

    #@13ec
    move/from16 v24, v0

    #@13ee
    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@13f1
    goto/16 :goto_0

    #@13f3
    .line 2873
    :sswitch_1b
    const-string/jumbo v23, " "

    #@13f6
    move-object/from16 v0, v20

    #@13f8
    move-object/from16 v1, v23

    #@13fa
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@13fd
    .line 2874
    move-object/from16 v0, p1

    #@13ff
    iget v0, v0, Landroid/os/Message;->arg1:I

    #@1401
    move/from16 v23, v0

    #@1403
    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    #@1406
    move-result-object v23

    #@1407
    move-object/from16 v0, v20

    #@1409
    move-object/from16 v1, v23

    #@140b
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@140e
    .line 2875
    const-string/jumbo v23, " "

    #@1411
    move-object/from16 v0, v20

    #@1413
    move-object/from16 v1, v23

    #@1415
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1418
    .line 2876
    move-object/from16 v0, p1

    #@141a
    iget v0, v0, Landroid/os/Message;->arg2:I

    #@141c
    move/from16 v23, v0

    #@141e
    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    #@1421
    move-result-object v23

    #@1422
    move-object/from16 v0, v20

    #@1424
    move-object/from16 v1, v23

    #@1426
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1429
    .line 2877
    const-string/jumbo v23, " cur="

    #@142c
    move-object/from16 v0, v20

    #@142e
    move-object/from16 v1, v23

    #@1430
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1433
    move-result-object v23

    #@1434
    move-object/from16 v0, p0

    #@1436
    iget v0, v0, Lcom/android/server/wifi/WifiStateMachine;->disconnectingWatchdogCount:I

    #@1438
    move/from16 v24, v0

    #@143a
    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@143d
    goto/16 :goto_0

    #@143f
    .line 2882
    :sswitch_1c
    const-string/jumbo v23, " rssi="

    #@1442
    move-object/from16 v0, v20

    #@1444
    move-object/from16 v1, v23

    #@1446
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1449
    .line 2883
    move-object/from16 v0, p1

    #@144b
    iget v0, v0, Landroid/os/Message;->arg1:I

    #@144d
    move/from16 v23, v0

    #@144f
    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    #@1452
    move-result-object v23

    #@1453
    move-object/from16 v0, v20

    #@1455
    move-object/from16 v1, v23

    #@1457
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@145a
    .line 2884
    const-string/jumbo v23, " thresholds="

    #@145d
    move-object/from16 v0, v20

    #@145f
    move-object/from16 v1, v23

    #@1461
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1464
    .line 2885
    move-object/from16 v0, p0

    #@1466
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine;->mRssiRanges:[B

    #@1468
    move-object/from16 v23, v0

    #@146a
    invoke-static/range {v23 .. v23}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    #@146d
    move-result-object v23

    #@146e
    move-object/from16 v0, v20

    #@1470
    move-object/from16 v1, v23

    #@1472
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1475
    goto/16 :goto_0

    #@1477
    .line 2888
    :sswitch_1d
    const-string/jumbo v23, " userId="

    #@147a
    move-object/from16 v0, v20

    #@147c
    move-object/from16 v1, v23

    #@147e
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1481
    .line 2889
    move-object/from16 v0, p1

    #@1483
    iget v0, v0, Landroid/os/Message;->arg1:I

    #@1485
    move/from16 v23, v0

    #@1487
    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    #@148a
    move-result-object v23

    #@148b
    move-object/from16 v0, v20

    #@148d
    move-object/from16 v1, v23

    #@148f
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1492
    goto/16 :goto_0

    #@1494
    .line 2892
    :sswitch_1e
    const-string/jumbo v23, " "

    #@1497
    move-object/from16 v0, v20

    #@1499
    move-object/from16 v1, v23

    #@149b
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@149e
    .line 2893
    move-object/from16 v0, p1

    #@14a0
    iget v0, v0, Landroid/os/Message;->arg1:I

    #@14a2
    move/from16 v23, v0

    #@14a4
    const/16 v24, 0x1

    #@14a6
    move/from16 v0, v23

    #@14a8
    move/from16 v1, v24

    #@14aa
    if-ne v0, v1, :cond_31

    #@14ac
    .line 2894
    const-string/jumbo v23, "DHCP_OK"

    #@14af
    move-object/from16 v0, v20

    #@14b1
    move-object/from16 v1, v23

    #@14b3
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@14b6
    goto/16 :goto_0

    #@14b8
    .line 2895
    :cond_31
    move-object/from16 v0, p1

    #@14ba
    iget v0, v0, Landroid/os/Message;->arg1:I

    #@14bc
    move/from16 v23, v0

    #@14be
    const v24, 0x2000f

    #@14c1
    move/from16 v0, v23

    #@14c3
    move/from16 v1, v24

    #@14c5
    if-ne v0, v1, :cond_32

    #@14c7
    .line 2896
    const-string/jumbo v23, "STATIC_OK"

    #@14ca
    move-object/from16 v0, v20

    #@14cc
    move-object/from16 v1, v23

    #@14ce
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@14d1
    goto/16 :goto_0

    #@14d3
    .line 2898
    :cond_32
    move-object/from16 v0, p1

    #@14d5
    iget v0, v0, Landroid/os/Message;->arg1:I

    #@14d7
    move/from16 v23, v0

    #@14d9
    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    #@14dc
    move-result-object v23

    #@14dd
    move-object/from16 v0, v20

    #@14df
    move-object/from16 v1, v23

    #@14e1
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@14e4
    goto/16 :goto_0

    #@14e6
    .line 2902
    :sswitch_1f
    const-string/jumbo v23, " "

    #@14e9
    move-object/from16 v0, v20

    #@14eb
    move-object/from16 v1, v23

    #@14ed
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@14f0
    .line 2903
    move-object/from16 v0, p1

    #@14f2
    iget v0, v0, Landroid/os/Message;->arg1:I

    #@14f4
    move/from16 v23, v0

    #@14f6
    const/16 v24, 0x2

    #@14f8
    move/from16 v0, v23

    #@14fa
    move/from16 v1, v24

    #@14fc
    if-ne v0, v1, :cond_33

    #@14fe
    .line 2904
    const-string/jumbo v23, "DHCP_FAIL"

    #@1501
    move-object/from16 v0, v20

    #@1503
    move-object/from16 v1, v23

    #@1505
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1508
    goto/16 :goto_0

    #@150a
    .line 2905
    :cond_33
    move-object/from16 v0, p1

    #@150c
    iget v0, v0, Landroid/os/Message;->arg1:I

    #@150e
    move/from16 v23, v0

    #@1510
    const v24, 0x20010

    #@1513
    move/from16 v0, v23

    #@1515
    move/from16 v1, v24

    #@1517
    if-ne v0, v1, :cond_34

    #@1519
    .line 2906
    const-string/jumbo v23, "STATIC_FAIL"

    #@151c
    move-object/from16 v0, v20

    #@151e
    move-object/from16 v1, v23

    #@1520
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1523
    goto/16 :goto_0

    #@1525
    .line 2908
    :cond_34
    move-object/from16 v0, p1

    #@1527
    iget v0, v0, Landroid/os/Message;->arg1:I

    #@1529
    move/from16 v23, v0

    #@152b
    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    #@152e
    move-result-object v23

    #@152f
    move-object/from16 v0, v20

    #@1531
    move-object/from16 v1, v23

    #@1533
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1536
    goto/16 :goto_0

    #@1538
    .line 2424
    :sswitch_data_0
    .sparse-switch
        0x20034 -> :sswitch_f
        0x20036 -> :sswitch_10
        0x2003b -> :sswitch_11
        0x20047 -> :sswitch_2
        0x20053 -> :sswitch_c
        0x2005e -> :sswitch_1a
        0x20060 -> :sswitch_1b
        0x2008b -> :sswitch_15
        0x2008c -> :sswitch_16
        0x2008d -> :sswitch_9
        0x2008f -> :sswitch_d
        0x20090 -> :sswitch_c
        0x20091 -> :sswitch_e
        0x20092 -> :sswitch_4
        0x20093 -> :sswitch_9
        0x20095 -> :sswitch_17
        0x2009e -> :sswitch_1
        0x200a2 -> :sswitch_1c
        0x200a3 -> :sswitch_1c
        0x200a4 -> :sswitch_1c
        0x200a5 -> :sswitch_1d
        0x200c8 -> :sswitch_1e
        0x200c9 -> :sswitch_1f
        0x200ca -> :sswitch_18
        0x200cb -> :sswitch_19
        0x2300b -> :sswitch_14
        0x24003 -> :sswitch_8
        0x24004 -> :sswitch_a
        0x24005 -> :sswitch_7
        0x24006 -> :sswitch_3
        0x2400d -> :sswitch_b
        0x2400e -> :sswitch_b
        0x24011 -> :sswitch_0
        0x2402b -> :sswitch_6
        0x25001 -> :sswitch_d
        0x25004 -> :sswitch_5
        0x25007 -> :sswitch_4
        0x25011 -> :sswitch_10
        0x25014 -> :sswitch_c
        0x30003 -> :sswitch_12
        0x30004 -> :sswitch_13
    .end sparse-switch
.end method

.method public getMessenger()Landroid/os/Messenger;
    .locals 2

    #@0
    .prologue
    .line 1423
    new-instance v0, Landroid/os/Messenger;

    #@2
    invoke-virtual {p0}, Lcom/android/server/wifi/WifiStateMachine;->getHandler()Landroid/os/Handler;

    #@5
    move-result-object v1

    #@6
    invoke-direct {v0, v1}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    #@9
    return-object v0
.end method

.method protected getOperationalModeForTest()I
    .locals 1

    #@0
    .prologue
    .line 1896
    iget v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mOperationalMode:I

    #@2
    return v0
.end method

.method getPrivateBroadcast(Ljava/lang/String;I)Landroid/app/PendingIntent;
    .locals 4
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "requestCode"    # I

    #@0
    .prologue
    .line 1291
    new-instance v0, Landroid/content/Intent;

    #@2
    const/4 v1, 0x0

    #@3
    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    #@6
    .line 1292
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v1, 0x4000000

    #@8
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    #@b
    .line 1293
    const-string/jumbo v1, "android"

    #@e
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    #@11
    .line 1294
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine;->mFacade:Lcom/android/server/wifi/FrameworkFacade;

    #@13
    iget-object v2, p0, Lcom/android/server/wifi/WifiStateMachine;->mContext:Landroid/content/Context;

    #@15
    const/4 v3, 0x0

    #@16
    invoke-virtual {v1, v2, p2, v0, v3}, Lcom/android/server/wifi/FrameworkFacade;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    #@19
    move-result-object v1

    #@1a
    return-object v1
.end method

.method public getRxPacketRate()D
    .locals 2

    #@0
    .prologue
    .line 3243
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    #@2
    iget-wide v0, v0, Landroid/net/wifi/WifiInfo;->rxSuccessRate:D

    #@4
    return-wide v0
.end method

.method public getTxPacketRate()D
    .locals 2

    #@0
    .prologue
    .line 3239
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    #@2
    iget-wide v0, v0, Landroid/net/wifi/WifiInfo;->txSuccessRate:D

    #@4
    return-wide v0
.end method

.method getVerboseLoggingLevel()I
    .locals 1

    #@0
    .prologue
    .line 1298
    iget v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mVerboseLoggingLevel:I

    #@2
    return v0
.end method

.method public getWifiInfo()Landroid/net/wifi/WifiInfo;
    .locals 1

    #@0
    .prologue
    .line 1863
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    #@2
    return-object v0
.end method

.method getWifiLinkLayerStats(Z)Landroid/net/wifi/WifiLinkLayerStats;
    .locals 8
    .param p1, "dbg"    # Z

    #@0
    .prologue
    .line 1562
    const/4 v5, 0x0

    #@1
    .line 1563
    .local v5, "stats":Landroid/net/wifi/WifiLinkLayerStats;
    iget v6, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiLinkLayerStatsSupported:I

    #@3
    if-lez v6, :cond_0

    #@5
    .line 1564
    const-string/jumbo v4, "wlan0"

    #@8
    .line 1565
    .local v4, "name":Ljava/lang/String;
    iget-object v6, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    #@a
    invoke-virtual {v6, v4}, Lcom/android/server/wifi/WifiNative;->getWifiLinkLayerStats(Ljava/lang/String;)Landroid/net/wifi/WifiLinkLayerStats;

    #@d
    move-result-object v5

    #@e
    .line 1566
    .local v5, "stats":Landroid/net/wifi/WifiLinkLayerStats;
    if-eqz v4, :cond_2

    #@10
    if-nez v5, :cond_2

    #@12
    iget v6, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiLinkLayerStatsSupported:I

    #@14
    if-lez v6, :cond_2

    #@16
    .line 1567
    iget v6, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiLinkLayerStatsSupported:I

    #@18
    add-int/lit8 v6, v6, -0x1

    #@1a
    iput v6, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiLinkLayerStatsSupported:I

    #@1c
    .line 1576
    .end local v4    # "name":Ljava/lang/String;
    .end local v5    # "stats":Landroid/net/wifi/WifiLinkLayerStats;
    :cond_0
    :goto_0
    if-eqz v5, :cond_1

    #@1e
    iget v6, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiLinkLayerStatsSupported:I

    #@20
    if-gtz v6, :cond_3

    #@22
    .line 1577
    :cond_1
    iget-object v6, p0, Lcom/android/server/wifi/WifiStateMachine;->mFacade:Lcom/android/server/wifi/FrameworkFacade;

    #@24
    iget-object v7, p0, Lcom/android/server/wifi/WifiStateMachine;->mInterfaceName:Ljava/lang/String;

    #@26
    invoke-virtual {v6, v7}, Lcom/android/server/wifi/FrameworkFacade;->getTxPackets(Ljava/lang/String;)J

    #@29
    move-result-wide v2

    #@2a
    .line 1578
    .local v2, "mTxPkts":J
    iget-object v6, p0, Lcom/android/server/wifi/WifiStateMachine;->mFacade:Lcom/android/server/wifi/FrameworkFacade;

    #@2c
    iget-object v7, p0, Lcom/android/server/wifi/WifiStateMachine;->mInterfaceName:Ljava/lang/String;

    #@2e
    invoke-virtual {v6, v7}, Lcom/android/server/wifi/FrameworkFacade;->getRxPackets(Ljava/lang/String;)J

    #@31
    move-result-wide v0

    #@32
    .line 1579
    .local v0, "mRxPkts":J
    iget-object v6, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    #@34
    invoke-virtual {v6, v2, v3, v0, v1}, Landroid/net/wifi/WifiInfo;->updatePacketRates(JJ)V

    #@37
    .line 1583
    .end local v0    # "mRxPkts":J
    .end local v2    # "mTxPkts":J
    :goto_1
    return-object v5

    #@38
    .line 1568
    .restart local v4    # "name":Ljava/lang/String;
    .restart local v5    # "stats":Landroid/net/wifi/WifiLinkLayerStats;
    :cond_2
    if-eqz v5, :cond_0

    #@3a
    .line 1569
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    #@3d
    move-result-wide v6

    #@3e
    iput-wide v6, p0, Lcom/android/server/wifi/WifiStateMachine;->lastLinkLayerStatsUpdate:J

    #@40
    .line 1570
    iget v6, v5, Landroid/net/wifi/WifiLinkLayerStats;->on_time:I

    #@42
    iput v6, p0, Lcom/android/server/wifi/WifiStateMachine;->mOnTime:I

    #@44
    .line 1571
    iget v6, v5, Landroid/net/wifi/WifiLinkLayerStats;->tx_time:I

    #@46
    iput v6, p0, Lcom/android/server/wifi/WifiStateMachine;->mTxTime:I

    #@48
    .line 1572
    iget v6, v5, Landroid/net/wifi/WifiLinkLayerStats;->rx_time:I

    #@4a
    iput v6, p0, Lcom/android/server/wifi/WifiStateMachine;->mRxTime:I

    #@4c
    .line 1573
    iget v6, v5, Landroid/net/wifi/WifiLinkLayerStats;->beacon_rx:I

    #@4e
    iput v6, p0, Lcom/android/server/wifi/WifiStateMachine;->mRunningBeaconCount:I

    #@50
    goto :goto_0

    #@51
    .line 1581
    .end local v4    # "name":Ljava/lang/String;
    .end local v5    # "stats":Landroid/net/wifi/WifiLinkLayerStats;
    :cond_3
    iget-object v6, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    #@53
    invoke-virtual {v6, v5}, Landroid/net/wifi/WifiInfo;->updatePacketRates(Landroid/net/wifi/WifiLinkLayerStats;)V

    #@56
    goto :goto_1
.end method

.method handle3GAuthRequest(Lcom/android/server/wifi/WifiStateMachine$SimAuthRequestData;)V
    .locals 26
    .param p1, "requestData"    # Lcom/android/server/wifi/WifiStateMachine$SimAuthRequestData;

    #@0
    .prologue
    .line 8043
    new-instance v20, Ljava/lang/StringBuilder;

    #@2
    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    .line 8044
    .local v20, "sb":Ljava/lang/StringBuilder;
    const/4 v14, 0x0

    #@6
    .line 8045
    .local v14, "rand":[B
    const/4 v4, 0x0

    #@7
    .line 8046
    .local v4, "authn":[B
    const-string/jumbo v17, "UMTS-AUTH"

    #@a
    .line 8048
    .local v17, "res_type":Ljava/lang/String;
    move-object/from16 v0, p0

    #@c
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine;->targetWificonfiguration:Landroid/net/wifi/WifiConfiguration;

    #@e
    move-object/from16 v24, v0

    #@10
    if-eqz v24, :cond_0

    #@12
    .line 8049
    move-object/from16 v0, p0

    #@14
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine;->targetWificonfiguration:Landroid/net/wifi/WifiConfiguration;

    #@16
    move-object/from16 v24, v0

    #@18
    move-object/from16 v0, v24

    #@1a
    iget v0, v0, Landroid/net/wifi/WifiConfiguration;->networkId:I

    #@1c
    move/from16 v24, v0

    #@1e
    move-object/from16 v0, p1

    #@20
    iget v0, v0, Lcom/android/server/wifi/WifiStateMachine$SimAuthRequestData;->networkId:I

    #@22
    move/from16 v25, v0

    #@24
    move/from16 v0, v24

    #@26
    move/from16 v1, v25

    #@28
    if-ne v0, v1, :cond_2

    #@2a
    .line 8050
    :cond_0
    const-string/jumbo v24, "id matches targetWifiConfiguration"

    #@2d
    move-object/from16 v0, p0

    #@2f
    move-object/from16 v1, v24

    #@31
    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiStateMachine;->logd(Ljava/lang/String;)V

    #@34
    .line 8055
    move-object/from16 v0, p1

    #@36
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$SimAuthRequestData;->data:[Ljava/lang/String;

    #@38
    move-object/from16 v24, v0

    #@3a
    move-object/from16 v0, v24

    #@3c
    array-length v0, v0

    #@3d
    move/from16 v24, v0

    #@3f
    const/16 v25, 0x2

    #@41
    move/from16 v0, v24

    #@43
    move/from16 v1, v25

    #@45
    if-ne v0, v1, :cond_3

    #@47
    .line 8057
    :try_start_0
    move-object/from16 v0, p1

    #@49
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$SimAuthRequestData;->data:[Ljava/lang/String;

    #@4b
    move-object/from16 v24, v0

    #@4d
    const/16 v25, 0x0

    #@4f
    aget-object v24, v24, v25

    #@51
    move-object/from16 v0, p0

    #@53
    move-object/from16 v1, v24

    #@55
    invoke-direct {v0, v1}, Lcom/android/server/wifi/WifiStateMachine;->parseHex(Ljava/lang/String;)[B

    #@58
    move-result-object v14

    #@59
    .line 8058
    .local v14, "rand":[B
    move-object/from16 v0, p1

    #@5b
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$SimAuthRequestData;->data:[Ljava/lang/String;

    #@5d
    move-object/from16 v24, v0

    #@5f
    const/16 v25, 0x1

    #@61
    aget-object v24, v24, v25

    #@63
    move-object/from16 v0, p0

    #@65
    move-object/from16 v1, v24

    #@67
    invoke-direct {v0, v1}, Lcom/android/server/wifi/WifiStateMachine;->parseHex(Ljava/lang/String;)[B
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    #@6a
    move-result-object v4

    #@6b
    .line 8066
    .end local v4    # "authn":[B
    .end local v14    # "rand":[B
    :goto_0
    const-string/jumbo v23, ""

    #@6e
    .line 8067
    .local v23, "tmResponse":Ljava/lang/String;
    if-eqz v14, :cond_1

    #@70
    if-eqz v4, :cond_1

    #@72
    .line 8069
    invoke-static {v14, v4}, Lcom/android/server/wifi/WifiStateMachine;->concatHex([B[B)[B

    #@75
    move-result-object v24

    #@76
    const/16 v25, 0x2

    #@78
    .line 8068
    invoke-static/range {v24 .. v25}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    #@7b
    move-result-object v7

    #@7c
    .line 8072
    .local v7, "base64Challenge":Ljava/lang/String;
    move-object/from16 v0, p0

    #@7e
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine;->mContext:Landroid/content/Context;

    #@80
    move-object/from16 v24, v0

    #@82
    const-string/jumbo v25, "phone"

    #@85
    invoke-virtual/range {v24 .. v25}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    #@88
    move-result-object v22

    #@89
    .line 8071
    check-cast v22, Landroid/telephony/TelephonyManager;

    #@8b
    .line 8073
    .local v22, "tm":Landroid/telephony/TelephonyManager;
    if-eqz v22, :cond_4

    #@8d
    .line 8074
    const/16 v24, 0x2

    #@8f
    .line 8075
    const/16 v25, 0x81

    #@91
    .line 8074
    move-object/from16 v0, v22

    #@93
    move/from16 v1, v24

    #@95
    move/from16 v2, v25

    #@97
    invoke-virtual {v0, v1, v2, v7}, Landroid/telephony/TelephonyManager;->getIccAuthentication(IILjava/lang/String;)Ljava/lang/String;

    #@9a
    move-result-object v23

    #@9b
    .line 8076
    new-instance v24, Ljava/lang/StringBuilder;

    #@9d
    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    #@a0
    const-string/jumbo v25, "Raw Response - "

    #@a3
    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a6
    move-result-object v24

    #@a7
    move-object/from16 v0, v24

    #@a9
    move-object/from16 v1, v23

    #@ab
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@ae
    move-result-object v24

    #@af
    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@b2
    move-result-object v24

    #@b3
    move-object/from16 v0, p0

    #@b5
    move-object/from16 v1, v24

    #@b7
    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiStateMachine;->logv(Ljava/lang/String;)V

    #@ba
    .line 8082
    .end local v7    # "base64Challenge":Ljava/lang/String;
    .end local v22    # "tm":Landroid/telephony/TelephonyManager;
    :cond_1
    :goto_1
    const/4 v11, 0x0

    #@bb
    .line 8083
    .local v11, "good_response":Z
    if-eqz v23, :cond_7

    #@bd
    invoke-virtual/range {v23 .. v23}, Ljava/lang/String;->length()I

    #@c0
    move-result v24

    #@c1
    const/16 v25, 0x4

    #@c3
    move/from16 v0, v24

    #@c5
    move/from16 v1, v25

    #@c7
    if-le v0, v1, :cond_7

    #@c9
    .line 8085
    const/16 v24, 0x0

    #@cb
    .line 8084
    invoke-static/range {v23 .. v24}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    #@ce
    move-result-object v19

    #@cf
    .line 8086
    .local v19, "result":[B
    new-instance v24, Ljava/lang/StringBuilder;

    #@d1
    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    #@d4
    const-string/jumbo v25, "Hex Response - "

    #@d7
    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@da
    move-result-object v24

    #@db
    invoke-static/range {v19 .. v19}, Lcom/android/server/wifi/WifiStateMachine;->makeHex([B)Ljava/lang/String;

    #@de
    move-result-object v25

    #@df
    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@e2
    move-result-object v24

    #@e3
    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@e6
    move-result-object v24

    #@e7
    move-object/from16 v0, p0

    #@e9
    move-object/from16 v1, v24

    #@eb
    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V

    #@ee
    .line 8087
    const/16 v24, 0x0

    #@f0
    aget-byte v21, v19, v24

    #@f2
    .line 8088
    .local v21, "tag":B
    const/16 v24, -0x25

    #@f4
    move/from16 v0, v21

    #@f6
    move/from16 v1, v24

    #@f8
    if-ne v0, v1, :cond_5

    #@fa
    .line 8089
    const-string/jumbo v24, "successful 3G authentication "

    #@fd
    move-object/from16 v0, p0

    #@ff
    move-object/from16 v1, v24

    #@101
    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiStateMachine;->logv(Ljava/lang/String;)V

    #@104
    .line 8090
    const/16 v24, 0x1

    #@106
    aget-byte v16, v19, v24

    #@108
    .line 8091
    .local v16, "res_len":I
    const/16 v24, 0x2

    #@10a
    move-object/from16 v0, v19

    #@10c
    move/from16 v1, v24

    #@10e
    move/from16 v2, v16

    #@110
    invoke-static {v0, v1, v2}, Lcom/android/server/wifi/WifiStateMachine;->makeHex([BII)Ljava/lang/String;

    #@113
    move-result-object v15

    #@114
    .line 8092
    .local v15, "res":Ljava/lang/String;
    add-int/lit8 v24, v16, 0x2

    #@116
    aget-byte v9, v19, v24

    #@118
    .line 8093
    .local v9, "ck_len":I
    add-int/lit8 v24, v16, 0x3

    #@11a
    move-object/from16 v0, v19

    #@11c
    move/from16 v1, v24

    #@11e
    invoke-static {v0, v1, v9}, Lcom/android/server/wifi/WifiStateMachine;->makeHex([BII)Ljava/lang/String;

    #@121
    move-result-object v8

    #@122
    .line 8094
    .local v8, "ck":Ljava/lang/String;
    add-int v24, v16, v9

    #@124
    add-int/lit8 v24, v24, 0x3

    #@126
    aget-byte v13, v19, v24

    #@128
    .line 8095
    .local v13, "ik_len":I
    add-int v24, v16, v9

    #@12a
    add-int/lit8 v24, v24, 0x4

    #@12c
    move-object/from16 v0, v19

    #@12e
    move/from16 v1, v24

    #@130
    invoke-static {v0, v1, v13}, Lcom/android/server/wifi/WifiStateMachine;->makeHex([BII)Ljava/lang/String;

    #@133
    move-result-object v12

    #@134
    .line 8096
    .local v12, "ik":Ljava/lang/String;
    const-string/jumbo v24, ":"

    #@137
    move-object/from16 v0, v20

    #@139
    move-object/from16 v1, v24

    #@13b
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@13e
    move-result-object v24

    #@13f
    move-object/from16 v0, v24

    #@141
    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@144
    move-result-object v24

    #@145
    const-string/jumbo v25, ":"

    #@148
    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@14b
    move-result-object v24

    #@14c
    move-object/from16 v0, v24

    #@14e
    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@151
    move-result-object v24

    #@152
    const-string/jumbo v25, ":"

    #@155
    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@158
    move-result-object v24

    #@159
    move-object/from16 v0, v24

    #@15b
    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@15e
    .line 8097
    new-instance v24, Ljava/lang/StringBuilder;

    #@160
    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    #@163
    const-string/jumbo v25, "ik:"

    #@166
    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@169
    move-result-object v24

    #@16a
    move-object/from16 v0, v24

    #@16c
    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@16f
    move-result-object v24

    #@170
    const-string/jumbo v25, "ck:"

    #@173
    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@176
    move-result-object v24

    #@177
    move-object/from16 v0, v24

    #@179
    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@17c
    move-result-object v24

    #@17d
    const-string/jumbo v25, " res:"

    #@180
    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@183
    move-result-object v24

    #@184
    move-object/from16 v0, v24

    #@186
    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@189
    move-result-object v24

    #@18a
    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@18d
    move-result-object v24

    #@18e
    move-object/from16 v0, p0

    #@190
    move-object/from16 v1, v24

    #@192
    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiStateMachine;->logv(Ljava/lang/String;)V

    #@195
    .line 8098
    const/4 v11, 0x1

    #@196
    .line 8114
    .end local v8    # "ck":Ljava/lang/String;
    .end local v9    # "ck_len":I
    .end local v12    # "ik":Ljava/lang/String;
    .end local v13    # "ik_len":I
    .end local v15    # "res":Ljava/lang/String;
    .end local v16    # "res_len":I
    .end local v19    # "result":[B
    .end local v21    # "tag":B
    :goto_2
    if-eqz v11, :cond_8

    #@198
    .line 8115
    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@19b
    move-result-object v18

    #@19c
    .line 8116
    .local v18, "response":Ljava/lang/String;
    new-instance v24, Ljava/lang/StringBuilder;

    #@19e
    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    #@1a1
    const-string/jumbo v25, "Supplicant Response -"

    #@1a4
    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1a7
    move-result-object v24

    #@1a8
    move-object/from16 v0, v24

    #@1aa
    move-object/from16 v1, v18

    #@1ac
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1af
    move-result-object v24

    #@1b0
    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1b3
    move-result-object v24

    #@1b4
    move-object/from16 v0, p0

    #@1b6
    move-object/from16 v1, v24

    #@1b8
    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiStateMachine;->logv(Ljava/lang/String;)V

    #@1bb
    .line 8117
    move-object/from16 v0, p0

    #@1bd
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    #@1bf
    move-object/from16 v24, v0

    #@1c1
    move-object/from16 v0, p1

    #@1c3
    iget v0, v0, Lcom/android/server/wifi/WifiStateMachine$SimAuthRequestData;->networkId:I

    #@1c5
    move/from16 v25, v0

    #@1c7
    move-object/from16 v0, v24

    #@1c9
    move/from16 v1, v25

    #@1cb
    move-object/from16 v2, v17

    #@1cd
    move-object/from16 v3, v18

    #@1cf
    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/wifi/WifiNative;->simAuthResponse(ILjava/lang/String;Ljava/lang/String;)Z

    #@1d2
    .line 8042
    .end local v18    # "response":Ljava/lang/String;
    :goto_3
    return-void

    #@1d3
    .line 8052
    .end local v11    # "good_response":Z
    .end local v23    # "tmResponse":Ljava/lang/String;
    .restart local v4    # "authn":[B
    .local v14, "rand":[B
    :cond_2
    const-string/jumbo v24, "id does not match targetWifiConfiguration"

    #@1d6
    move-object/from16 v0, p0

    #@1d8
    move-object/from16 v1, v24

    #@1da
    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiStateMachine;->logd(Ljava/lang/String;)V

    #@1dd
    .line 8053
    return-void

    #@1de
    .line 8059
    .end local v14    # "rand":[B
    :catch_0
    move-exception v10

    #@1df
    .line 8060
    .local v10, "e":Ljava/lang/NumberFormatException;
    const-string/jumbo v24, "malformed challenge"

    #@1e2
    move-object/from16 v0, p0

    #@1e4
    move-object/from16 v1, v24

    #@1e6
    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V

    #@1e9
    goto/16 :goto_0

    #@1eb
    .line 8063
    .end local v10    # "e":Ljava/lang/NumberFormatException;
    .restart local v14    # "rand":[B
    :cond_3
    const-string/jumbo v24, "malformed challenge"

    #@1ee
    move-object/from16 v0, p0

    #@1f0
    move-object/from16 v1, v24

    #@1f2
    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V

    #@1f5
    goto/16 :goto_0

    #@1f7
    .line 8078
    .end local v4    # "authn":[B
    .end local v14    # "rand":[B
    .restart local v7    # "base64Challenge":Ljava/lang/String;
    .restart local v22    # "tm":Landroid/telephony/TelephonyManager;
    .restart local v23    # "tmResponse":Ljava/lang/String;
    :cond_4
    const-string/jumbo v24, "could not get telephony manager"

    #@1fa
    move-object/from16 v0, p0

    #@1fc
    move-object/from16 v1, v24

    #@1fe
    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V

    #@201
    goto/16 :goto_1

    #@203
    .line 8099
    .end local v7    # "base64Challenge":Ljava/lang/String;
    .end local v22    # "tm":Landroid/telephony/TelephonyManager;
    .restart local v11    # "good_response":Z
    .restart local v19    # "result":[B
    .restart local v21    # "tag":B
    :cond_5
    const/16 v24, -0x24

    #@205
    move/from16 v0, v21

    #@207
    move/from16 v1, v24

    #@209
    if-ne v0, v1, :cond_6

    #@20b
    .line 8100
    const-string/jumbo v24, "synchronisation failure"

    #@20e
    move-object/from16 v0, p0

    #@210
    move-object/from16 v1, v24

    #@212
    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V

    #@215
    .line 8101
    const/16 v24, 0x1

    #@217
    aget-byte v6, v19, v24

    #@219
    .line 8102
    .local v6, "auts_len":I
    const/16 v24, 0x2

    #@21b
    move-object/from16 v0, v19

    #@21d
    move/from16 v1, v24

    #@21f
    invoke-static {v0, v1, v6}, Lcom/android/server/wifi/WifiStateMachine;->makeHex([BII)Ljava/lang/String;

    #@222
    move-result-object v5

    #@223
    .line 8103
    .local v5, "auts":Ljava/lang/String;
    const-string/jumbo v17, "UMTS-AUTS"

    #@226
    .line 8104
    const-string/jumbo v24, ":"

    #@229
    move-object/from16 v0, v20

    #@22b
    move-object/from16 v1, v24

    #@22d
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@230
    move-result-object v24

    #@231
    move-object/from16 v0, v24

    #@233
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@236
    .line 8105
    new-instance v24, Ljava/lang/StringBuilder;

    #@238
    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    #@23b
    const-string/jumbo v25, "auts:"

    #@23e
    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@241
    move-result-object v24

    #@242
    move-object/from16 v0, v24

    #@244
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@247
    move-result-object v24

    #@248
    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@24b
    move-result-object v24

    #@24c
    move-object/from16 v0, p0

    #@24e
    move-object/from16 v1, v24

    #@250
    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiStateMachine;->logv(Ljava/lang/String;)V

    #@253
    .line 8106
    const/4 v11, 0x1

    #@254
    goto/16 :goto_2

    #@256
    .line 8108
    .end local v5    # "auts":Ljava/lang/String;
    .end local v6    # "auts_len":I
    :cond_6
    new-instance v24, Ljava/lang/StringBuilder;

    #@258
    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    #@25b
    const-string/jumbo v25, "bad response - unknown tag = "

    #@25e
    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@261
    move-result-object v24

    #@262
    move-object/from16 v0, v24

    #@264
    move/from16 v1, v21

    #@266
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@269
    move-result-object v24

    #@26a
    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@26d
    move-result-object v24

    #@26e
    move-object/from16 v0, p0

    #@270
    move-object/from16 v1, v24

    #@272
    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V

    #@275
    goto/16 :goto_2

    #@277
    .line 8111
    .end local v19    # "result":[B
    .end local v21    # "tag":B
    :cond_7
    new-instance v24, Ljava/lang/StringBuilder;

    #@279
    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    #@27c
    const-string/jumbo v25, "bad response - "

    #@27f
    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@282
    move-result-object v24

    #@283
    move-object/from16 v0, v24

    #@285
    move-object/from16 v1, v23

    #@287
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@28a
    move-result-object v24

    #@28b
    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@28e
    move-result-object v24

    #@28f
    move-object/from16 v0, p0

    #@291
    move-object/from16 v1, v24

    #@293
    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V

    #@296
    goto/16 :goto_2

    #@298
    .line 8119
    :cond_8
    move-object/from16 v0, p0

    #@29a
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    #@29c
    move-object/from16 v24, v0

    #@29e
    move-object/from16 v0, p1

    #@2a0
    iget v0, v0, Lcom/android/server/wifi/WifiStateMachine$SimAuthRequestData;->networkId:I

    #@2a2
    move/from16 v25, v0

    #@2a4
    invoke-virtual/range {v24 .. v25}, Lcom/android/server/wifi/WifiNative;->umtsAuthFailedResponse(I)Z

    #@2a7
    goto/16 :goto_3
.end method

.method handleGsmAuthRequest(Lcom/android/server/wifi/WifiStateMachine$SimAuthRequestData;)V
    .locals 5
    .param p1, "requestData"    # Lcom/android/server/wifi/WifiStateMachine$SimAuthRequestData;

    #@0
    .prologue
    .line 8015
    iget-object v2, p0, Lcom/android/server/wifi/WifiStateMachine;->targetWificonfiguration:Landroid/net/wifi/WifiConfiguration;

    #@2
    if-eqz v2, :cond_0

    #@4
    .line 8016
    iget-object v2, p0, Lcom/android/server/wifi/WifiStateMachine;->targetWificonfiguration:Landroid/net/wifi/WifiConfiguration;

    #@6
    iget v2, v2, Landroid/net/wifi/WifiConfiguration;->networkId:I

    #@8
    iget v3, p1, Lcom/android/server/wifi/WifiStateMachine$SimAuthRequestData;->networkId:I

    #@a
    if-ne v2, v3, :cond_1

    #@c
    .line 8017
    :cond_0
    const-string/jumbo v2, "id matches targetWifiConfiguration"

    #@f
    invoke-virtual {p0, v2}, Lcom/android/server/wifi/WifiStateMachine;->logd(Ljava/lang/String;)V

    #@12
    .line 8024
    iget-object v2, p0, Lcom/android/server/wifi/WifiStateMachine;->mContext:Landroid/content/Context;

    #@14
    const-string/jumbo v3, "phone"

    #@17
    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    #@1a
    move-result-object v1

    #@1b
    .line 8023
    check-cast v1, Landroid/telephony/TelephonyManager;

    #@1d
    .line 8026
    .local v1, "tm":Landroid/telephony/TelephonyManager;
    if-nez v1, :cond_2

    #@1f
    .line 8027
    const-string/jumbo v2, "could not get telephony manager"

    #@22
    invoke-virtual {p0, v2}, Lcom/android/server/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V

    #@25
    .line 8028
    iget-object v2, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    #@27
    iget v3, p1, Lcom/android/server/wifi/WifiStateMachine$SimAuthRequestData;->networkId:I

    #@29
    invoke-virtual {v2, v3}, Lcom/android/server/wifi/WifiNative;->simAuthFailedResponse(I)Z

    #@2c
    .line 8029
    return-void

    #@2d
    .line 8019
    .end local v1    # "tm":Landroid/telephony/TelephonyManager;
    :cond_1
    const-string/jumbo v2, "id does not match targetWifiConfiguration"

    #@30
    invoke-virtual {p0, v2}, Lcom/android/server/wifi/WifiStateMachine;->logd(Ljava/lang/String;)V

    #@33
    .line 8020
    return-void

    #@34
    .line 8032
    .restart local v1    # "tm":Landroid/telephony/TelephonyManager;
    :cond_2
    iget-object v2, p1, Lcom/android/server/wifi/WifiStateMachine$SimAuthRequestData;->data:[Ljava/lang/String;

    #@36
    invoke-virtual {p0, v2, v1}, Lcom/android/server/wifi/WifiStateMachine;->getGsmSimAuthResponse([Ljava/lang/String;Landroid/telephony/TelephonyManager;)Ljava/lang/String;

    #@39
    move-result-object v0

    #@3a
    .line 8033
    .local v0, "response":Ljava/lang/String;
    if-nez v0, :cond_3

    #@3c
    .line 8034
    iget-object v2, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    #@3e
    iget v3, p1, Lcom/android/server/wifi/WifiStateMachine$SimAuthRequestData;->networkId:I

    #@40
    invoke-virtual {v2, v3}, Lcom/android/server/wifi/WifiNative;->simAuthFailedResponse(I)Z

    #@43
    .line 8014
    :goto_0
    return-void

    #@44
    .line 8036
    :cond_3
    new-instance v2, Ljava/lang/StringBuilder;

    #@46
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@49
    const-string/jumbo v3, "Supplicant Response -"

    #@4c
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4f
    move-result-object v2

    #@50
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@53
    move-result-object v2

    #@54
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@57
    move-result-object v2

    #@58
    invoke-virtual {p0, v2}, Lcom/android/server/wifi/WifiStateMachine;->logv(Ljava/lang/String;)V

    #@5b
    .line 8037
    iget-object v2, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    #@5d
    iget v3, p1, Lcom/android/server/wifi/WifiStateMachine$SimAuthRequestData;->networkId:I

    #@5f
    const-string/jumbo v4, "GSM-AUTH"

    #@62
    invoke-virtual {v2, v3, v4, v0}, Lcom/android/server/wifi/WifiNative;->simAuthResponse(ILjava/lang/String;Ljava/lang/String;)Z

    #@65
    goto :goto_0
.end method

.method handlePostDhcpSetup()V
    .locals 3

    #@0
    .prologue
    const/4 v1, 0x1

    #@1
    .line 3652
    invoke-direct {p0, v1, v1}, Lcom/android/server/wifi/WifiStateMachine;->setSuspendOptimizationsNative(IZ)V

    #@4
    .line 3653
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    #@6
    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiNative;->setPowerSave(Z)V

    #@9
    .line 3655
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiP2pChannel:Lcom/android/internal/util/AsyncChannel;

    #@b
    const v1, 0x2300f

    #@e
    .line 3656
    const/4 v2, 0x0

    #@f
    .line 3655
    invoke-virtual {v0, v1, v2}, Lcom/android/internal/util/AsyncChannel;->sendMessage(II)V

    #@12
    .line 3659
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    #@14
    .line 3660
    const/4 v1, 0x2

    #@15
    .line 3659
    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiNative;->setBluetoothCoexistenceMode(I)Z

    #@18
    .line 3650
    return-void
.end method

.method handlePreDhcpSetup()V
    .locals 4

    #@0
    .prologue
    const/4 v3, 0x1

    #@1
    const/4 v2, 0x0

    #@2
    .line 3609
    iget-boolean v1, p0, Lcom/android/server/wifi/WifiStateMachine;->mBluetoothConnectionActive:Z

    #@4
    if-nez v1, :cond_0

    #@6
    .line 3627
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    #@8
    invoke-virtual {v1, v3}, Lcom/android/server/wifi/WifiNative;->setBluetoothCoexistenceMode(I)Z

    #@b
    .line 3635
    :cond_0
    invoke-direct {p0, v3, v2}, Lcom/android/server/wifi/WifiStateMachine;->setSuspendOptimizationsNative(IZ)V

    #@e
    .line 3636
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    #@10
    invoke-virtual {v1, v2}, Lcom/android/server/wifi/WifiNative;->setPowerSave(Z)V

    #@13
    .line 3639
    invoke-virtual {p0, v2}, Lcom/android/server/wifi/WifiStateMachine;->getWifiLinkLayerStats(Z)Landroid/net/wifi/WifiLinkLayerStats;

    #@16
    .line 3642
    new-instance v0, Landroid/os/Message;

    #@18
    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    #@1b
    .line 3643
    .local v0, "msg":Landroid/os/Message;
    const v1, 0x2300f

    #@1e
    iput v1, v0, Landroid/os/Message;->what:I

    #@20
    .line 3644
    iput v3, v0, Landroid/os/Message;->arg1:I

    #@22
    .line 3645
    const v1, 0x30006

    #@25
    iput v1, v0, Landroid/os/Message;->arg2:I

    #@27
    .line 3646
    iput-object p0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@29
    .line 3647
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiP2pChannel:Lcom/android/internal/util/AsyncChannel;

    #@2b
    invoke-virtual {v1, v0}, Lcom/android/internal/util/AsyncChannel;->sendMessage(Landroid/os/Message;)V

    #@2e
    .line 3608
    return-void
.end method

.method public handleUserSwitch(I)V
    .locals 1
    .param p1, "userId"    # I

    #@0
    .prologue
    .line 2375
    const v0, 0x200a5

    #@3
    invoke-virtual {p0, v0, p1}, Lcom/android/server/wifi/WifiStateMachine;->sendMessage(II)V

    #@6
    .line 2374
    return-void
.end method

.method public isConnected()Z
    .locals 2

    #@0
    .prologue
    .line 1822
    invoke-virtual {p0}, Lcom/android/server/wifi/WifiStateMachine;->getCurrentState()Lcom/android/internal/util/IState;

    #@3
    move-result-object v0

    #@4
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine;->mConnectedState:Lcom/android/internal/util/State;

    #@6
    if-ne v0, v1, :cond_0

    #@8
    const/4 v0, 0x1

    #@9
    :goto_0
    return v0

    #@a
    :cond_0
    const/4 v0, 0x0

    #@b
    goto :goto_0
.end method

.method public isDisconnected()Z
    .locals 2

    #@0
    .prologue
    .line 1826
    invoke-virtual {p0}, Lcom/android/server/wifi/WifiStateMachine;->getCurrentState()Lcom/android/internal/util/IState;

    #@3
    move-result-object v0

    #@4
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine;->mDisconnectedState:Lcom/android/internal/util/State;

    #@6
    if-ne v0, v1, :cond_0

    #@8
    const/4 v0, 0x1

    #@9
    :goto_0
    return v0

    #@a
    :cond_0
    const/4 v0, 0x0

    #@b
    goto :goto_0
.end method

.method public isLinkDebouncing()Z
    .locals 1

    #@0
    .prologue
    .line 1850
    iget-boolean v0, p0, Lcom/android/server/wifi/WifiStateMachine;->linkDebouncing:Z

    #@2
    return v0
.end method

.method isRoaming()Z
    .locals 1

    #@0
    .prologue
    .line 402
    iget-boolean v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mAutoRoaming:Z

    #@2
    return v0
.end method

.method public isSupplicantTransientState()Z
    .locals 4

    #@0
    .prologue
    .line 1830
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    #@2
    invoke-virtual {v1}, Landroid/net/wifi/WifiInfo;->getSupplicantState()Landroid/net/wifi/SupplicantState;

    #@5
    move-result-object v0

    #@6
    .line 1831
    .local v0, "SupplicantState":Landroid/net/wifi/SupplicantState;
    sget-object v1, Landroid/net/wifi/SupplicantState;->ASSOCIATING:Landroid/net/wifi/SupplicantState;

    #@8
    if-eq v0, v1, :cond_0

    #@a
    .line 1832
    sget-object v1, Landroid/net/wifi/SupplicantState;->AUTHENTICATING:Landroid/net/wifi/SupplicantState;

    #@c
    if-ne v0, v1, :cond_2

    #@e
    .line 1836
    :cond_0
    sget-boolean v1, Lcom/android/server/wifi/WifiStateMachine;->DBG:Z

    #@10
    if-eqz v1, :cond_1

    #@12
    .line 1837
    const-string/jumbo v1, "WifiStateMachine"

    #@15
    new-instance v2, Ljava/lang/StringBuilder;

    #@17
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@1a
    const-string/jumbo v3, "Supplicant is under transient state: "

    #@1d
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@20
    move-result-object v2

    #@21
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@24
    move-result-object v2

    #@25
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@28
    move-result-object v2

    #@29
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@2c
    .line 1839
    :cond_1
    const/4 v1, 0x1

    #@2d
    return v1

    #@2e
    .line 1833
    :cond_2
    sget-object v1, Landroid/net/wifi/SupplicantState;->FOUR_WAY_HANDSHAKE:Landroid/net/wifi/SupplicantState;

    #@30
    if-eq v0, v1, :cond_0

    #@32
    .line 1834
    sget-object v1, Landroid/net/wifi/SupplicantState;->GROUP_HANDSHAKE:Landroid/net/wifi/SupplicantState;

    #@34
    if-eq v0, v1, :cond_0

    #@36
    .line 1841
    sget-boolean v1, Lcom/android/server/wifi/WifiStateMachine;->DBG:Z

    #@38
    if-eqz v1, :cond_3

    #@3a
    .line 1842
    const-string/jumbo v1, "WifiStateMachine"

    #@3d
    new-instance v2, Ljava/lang/StringBuilder;

    #@3f
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@42
    const-string/jumbo v3, "Supplicant is under steady state: "

    #@45
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@48
    move-result-object v2

    #@49
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@4c
    move-result-object v2

    #@4d
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@50
    move-result-object v2

    #@51
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@54
    .line 1846
    :cond_3
    const/4 v1, 0x0

    #@55
    return v1
.end method

.method protected log(Ljava/lang/String;)V
    .locals 1
    .param p1, "s"    # Ljava/lang/String;

    #@0
    .prologue
    .line 183
    invoke-virtual {p0}, Lcom/android/server/wifi/WifiStateMachine;->getName()Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@7
    .line 182
    return-void
.end method

.method protected logd(Ljava/lang/String;)V
    .locals 1
    .param p1, "s"    # Ljava/lang/String;

    #@0
    .prologue
    .line 180
    invoke-virtual {p0}, Lcom/android/server/wifi/WifiStateMachine;->getName()Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@7
    .line 179
    return-void
.end method

.method protected loge(Ljava/lang/String;)V
    .locals 1
    .param p1, "s"    # Ljava/lang/String;

    #@0
    .prologue
    .line 177
    invoke-virtual {p0}, Lcom/android/server/wifi/WifiStateMachine;->getName()Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@7
    .line 176
    return-void
.end method

.method public matchProviderWithCurrentNetwork(Lcom/android/internal/util/AsyncChannel;Ljava/lang/String;)I
    .locals 3
    .param p1, "channel"    # Lcom/android/internal/util/AsyncChannel;
    .param p2, "fqdn"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1943
    const v2, 0x20069

    #@3
    invoke-virtual {p1, v2, p2}, Lcom/android/internal/util/AsyncChannel;->sendMessageSynchronously(ILjava/lang/Object;)Landroid/os/Message;

    #@6
    move-result-object v1

    #@7
    .line 1944
    .local v1, "resultMsg":Landroid/os/Message;
    iget v0, v1, Landroid/os/Message;->arg1:I

    #@9
    .line 1945
    .local v0, "result":I
    invoke-virtual {v1}, Landroid/os/Message;->recycle()V

    #@c
    .line 1946
    return v0
.end method

.method maybeRegisterNetworkFactory()V
    .locals 6

    #@0
    .prologue
    .line 4006
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mNetworkFactory:Lcom/android/server/wifi/WifiStateMachine$WifiNetworkFactory;

    #@2
    if-nez v0, :cond_0

    #@4
    .line 4007
    invoke-direct {p0}, Lcom/android/server/wifi/WifiStateMachine;->checkAndSetConnectivityInstance()V

    #@7
    .line 4008
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mCm:Landroid/net/ConnectivityManager;

    #@9
    if-eqz v0, :cond_0

    #@b
    .line 4009
    new-instance v0, Lcom/android/server/wifi/WifiStateMachine$WifiNetworkFactory;

    #@d
    invoke-virtual {p0}, Lcom/android/server/wifi/WifiStateMachine;->getHandler()Landroid/os/Handler;

    #@10
    move-result-object v1

    #@11
    invoke-virtual {v1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    #@14
    move-result-object v2

    #@15
    iget-object v3, p0, Lcom/android/server/wifi/WifiStateMachine;->mContext:Landroid/content/Context;

    #@17
    .line 4010
    const-string/jumbo v4, "WIFI"

    #@1a
    iget-object v5, p0, Lcom/android/server/wifi/WifiStateMachine;->mNetworkCapabilitiesFilter:Landroid/net/NetworkCapabilities;

    #@1c
    move-object v1, p0

    #@1d
    .line 4009
    invoke-direct/range {v0 .. v5}, Lcom/android/server/wifi/WifiStateMachine$WifiNetworkFactory;-><init>(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Looper;Landroid/content/Context;Ljava/lang/String;Landroid/net/NetworkCapabilities;)V

    #@20
    iput-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mNetworkFactory:Lcom/android/server/wifi/WifiStateMachine$WifiNetworkFactory;

    #@22
    .line 4011
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mNetworkFactory:Lcom/android/server/wifi/WifiStateMachine$WifiNetworkFactory;

    #@24
    const/16 v1, 0x3c

    #@26
    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiStateMachine$WifiNetworkFactory;->setScoreFilter(I)V

    #@29
    .line 4012
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mNetworkFactory:Lcom/android/server/wifi/WifiStateMachine$WifiNetworkFactory;

    #@2b
    invoke-virtual {v0}, Lcom/android/server/wifi/WifiStateMachine$WifiNetworkFactory;->register()V

    #@2e
    .line 4016
    new-instance v0, Lcom/android/server/wifi/WifiStateMachine$UntrustedWifiNetworkFactory;

    #@30
    invoke-virtual {p0}, Lcom/android/server/wifi/WifiStateMachine;->getHandler()Landroid/os/Handler;

    #@33
    move-result-object v1

    #@34
    invoke-virtual {v1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    #@37
    move-result-object v2

    #@38
    .line 4017
    iget-object v3, p0, Lcom/android/server/wifi/WifiStateMachine;->mContext:Landroid/content/Context;

    #@3a
    const-string/jumbo v4, "WIFI_UT"

    #@3d
    iget-object v5, p0, Lcom/android/server/wifi/WifiStateMachine;->mNetworkCapabilitiesFilter:Landroid/net/NetworkCapabilities;

    #@3f
    move-object v1, p0

    #@40
    .line 4016
    invoke-direct/range {v0 .. v5}, Lcom/android/server/wifi/WifiStateMachine$UntrustedWifiNetworkFactory;-><init>(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Looper;Landroid/content/Context;Ljava/lang/String;Landroid/net/NetworkCapabilities;)V

    #@43
    iput-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mUntrustedNetworkFactory:Lcom/android/server/wifi/WifiStateMachine$UntrustedWifiNetworkFactory;

    #@45
    .line 4018
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mUntrustedNetworkFactory:Lcom/android/server/wifi/WifiStateMachine$UntrustedWifiNetworkFactory;

    #@47
    const v1, 0x7fffffff

    #@4a
    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiStateMachine$UntrustedWifiNetworkFactory;->setScoreFilter(I)V

    #@4d
    .line 4019
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mUntrustedNetworkFactory:Lcom/android/server/wifi/WifiStateMachine$UntrustedWifiNetworkFactory;

    #@4f
    invoke-virtual {v0}, Lcom/android/server/wifi/WifiStateMachine$UntrustedWifiNetworkFactory;->register()V

    #@52
    .line 4005
    :cond_0
    return-void
.end method

.method noteWifiDisabledWhileAssociated()V
    .locals 8

    #@0
    .prologue
    .line 5291
    iget-object v6, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    #@2
    invoke-virtual {v6}, Landroid/net/wifi/WifiInfo;->getRssi()I

    #@5
    move-result v5

    #@6
    .line 5292
    .local v5, "rssi":I
    invoke-virtual {p0}, Lcom/android/server/wifi/WifiStateMachine;->getCurrentWifiConfiguration()Landroid/net/wifi/WifiConfiguration;

    #@9
    move-result-object v0

    #@a
    .line 5293
    .local v0, "config":Landroid/net/wifi/WifiConfiguration;
    invoke-virtual {p0}, Lcom/android/server/wifi/WifiStateMachine;->getCurrentState()Lcom/android/internal/util/IState;

    #@d
    move-result-object v6

    #@e
    iget-object v7, p0, Lcom/android/server/wifi/WifiStateMachine;->mConnectedState:Lcom/android/internal/util/State;

    #@10
    if-ne v6, v7, :cond_0

    #@12
    .line 5294
    const/16 v6, -0x7f

    #@14
    if-eq v5, v6, :cond_0

    #@16
    .line 5295
    if-eqz v0, :cond_0

    #@18
    .line 5296
    iget-object v6, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    #@1a
    invoke-virtual {v6}, Landroid/net/wifi/WifiInfo;->is24GHz()Z

    #@1d
    move-result v1

    #@1e
    .line 5297
    .local v1, "is24GHz":Z
    if-eqz v1, :cond_1

    #@20
    iget-object v6, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiConfigManager:Lcom/android/server/wifi/WifiConfigManager;

    #@22
    iget-object v6, v6, Lcom/android/server/wifi/WifiConfigManager;->mThresholdMinimumRssi24:Ljava/util/concurrent/atomic/AtomicInteger;

    #@24
    invoke-virtual {v6}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    #@27
    move-result v6

    #@28
    if-ge v5, v6, :cond_1

    #@2a
    const/4 v2, 0x1

    #@2b
    .line 5300
    .local v2, "isBadRSSI":Z
    :goto_0
    if-eqz v1, :cond_3

    #@2d
    iget-object v6, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiConfigManager:Lcom/android/server/wifi/WifiConfigManager;

    #@2f
    iget-object v6, v6, Lcom/android/server/wifi/WifiConfigManager;->mThresholdQualifiedRssi24:Ljava/util/concurrent/atomic/AtomicInteger;

    #@31
    invoke-virtual {v6}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    #@34
    move-result v6

    #@35
    if-ge v5, v6, :cond_3

    #@37
    const/4 v4, 0x1

    #@38
    .line 5303
    .local v4, "isLowRSSI":Z
    :goto_1
    if-eqz v1, :cond_5

    #@3a
    .line 5304
    iget-object v6, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiConfigManager:Lcom/android/server/wifi/WifiConfigManager;

    #@3c
    iget-object v6, v6, Lcom/android/server/wifi/WifiConfigManager;->mThresholdSaturatedRssi24:Ljava/util/concurrent/atomic/AtomicInteger;

    #@3e
    invoke-virtual {v6}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    #@41
    move-result v6

    #@42
    .line 5303
    if-lt v5, v6, :cond_5

    #@44
    const/4 v3, 0x1

    #@45
    .line 5307
    .local v3, "isHighRSSI":Z
    :goto_2
    if-eqz v2, :cond_7

    #@47
    .line 5309
    iget v6, v0, Landroid/net/wifi/WifiConfiguration;->numUserTriggeredWifiDisableLowRSSI:I

    #@49
    add-int/lit8 v6, v6, 0x1

    #@4b
    iput v6, v0, Landroid/net/wifi/WifiConfiguration;->numUserTriggeredWifiDisableLowRSSI:I

    #@4d
    .line 5289
    .end local v1    # "is24GHz":Z
    .end local v2    # "isBadRSSI":Z
    .end local v3    # "isHighRSSI":Z
    .end local v4    # "isLowRSSI":Z
    :cond_0
    :goto_3
    return-void

    #@4e
    .line 5298
    .restart local v1    # "is24GHz":Z
    :cond_1
    if-nez v1, :cond_2

    #@50
    iget-object v6, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiConfigManager:Lcom/android/server/wifi/WifiConfigManager;

    #@52
    iget-object v6, v6, Lcom/android/server/wifi/WifiConfigManager;->mThresholdMinimumRssi5:Ljava/util/concurrent/atomic/AtomicInteger;

    #@54
    invoke-virtual {v6}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    #@57
    move-result v6

    #@58
    if-ge v5, v6, :cond_2

    #@5a
    const/4 v2, 0x1

    #@5b
    .restart local v2    # "isBadRSSI":Z
    goto :goto_0

    #@5c
    .end local v2    # "isBadRSSI":Z
    :cond_2
    const/4 v2, 0x0

    #@5d
    .restart local v2    # "isBadRSSI":Z
    goto :goto_0

    #@5e
    .line 5301
    :cond_3
    if-nez v1, :cond_4

    #@60
    iget-object v6, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    #@62
    invoke-virtual {v6}, Landroid/net/wifi/WifiInfo;->getRssi()I

    #@65
    move-result v6

    #@66
    .line 5302
    iget-object v7, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiConfigManager:Lcom/android/server/wifi/WifiConfigManager;

    #@68
    iget-object v7, v7, Lcom/android/server/wifi/WifiConfigManager;->mThresholdQualifiedRssi5:Ljava/util/concurrent/atomic/AtomicInteger;

    #@6a
    invoke-virtual {v7}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    #@6d
    move-result v7

    #@6e
    .line 5301
    if-ge v6, v7, :cond_4

    #@70
    const/4 v4, 0x1

    #@71
    .restart local v4    # "isLowRSSI":Z
    goto :goto_1

    #@72
    .end local v4    # "isLowRSSI":Z
    :cond_4
    const/4 v4, 0x0

    #@73
    .restart local v4    # "isLowRSSI":Z
    goto :goto_1

    #@74
    .line 5305
    :cond_5
    if-nez v1, :cond_6

    #@76
    iget-object v6, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    #@78
    invoke-virtual {v6}, Landroid/net/wifi/WifiInfo;->getRssi()I

    #@7b
    move-result v6

    #@7c
    .line 5306
    iget-object v7, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiConfigManager:Lcom/android/server/wifi/WifiConfigManager;

    #@7e
    iget-object v7, v7, Lcom/android/server/wifi/WifiConfigManager;->mThresholdSaturatedRssi5:Ljava/util/concurrent/atomic/AtomicInteger;

    #@80
    invoke-virtual {v7}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    #@83
    move-result v7

    #@84
    .line 5305
    if-lt v6, v7, :cond_6

    #@86
    const/4 v3, 0x1

    #@87
    .restart local v3    # "isHighRSSI":Z
    goto :goto_2

    #@88
    .end local v3    # "isHighRSSI":Z
    :cond_6
    const/4 v3, 0x0

    #@89
    .restart local v3    # "isHighRSSI":Z
    goto :goto_2

    #@8a
    .line 5310
    :cond_7
    if-eqz v4, :cond_8

    #@8c
    .line 5312
    iget v6, v0, Landroid/net/wifi/WifiConfiguration;->numUserTriggeredWifiDisableBadRSSI:I

    #@8e
    add-int/lit8 v6, v6, 0x1

    #@90
    iput v6, v0, Landroid/net/wifi/WifiConfiguration;->numUserTriggeredWifiDisableBadRSSI:I

    #@92
    goto :goto_3

    #@93
    .line 5313
    :cond_8
    if-nez v3, :cond_0

    #@95
    .line 5315
    iget v6, v0, Landroid/net/wifi/WifiConfiguration;->numUserTriggeredWifiDisableNotHighRSSI:I

    #@97
    add-int/lit8 v6, v6, 0x1

    #@99
    iput v6, v0, Landroid/net/wifi/WifiConfiguration;->numUserTriggeredWifiDisableNotHighRSSI:I

    #@9b
    goto :goto_3
.end method

.method public onRssiThresholdBreached(B)V
    .locals 3
    .param p1, "curRssi"    # B

    #@0
    .prologue
    .line 231
    sget-boolean v0, Lcom/android/server/wifi/WifiStateMachine;->DBG:Z

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 232
    const-string/jumbo v0, "WifiStateMachine"

    #@7
    new-instance v1, Ljava/lang/StringBuilder;

    #@9
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@c
    const-string/jumbo v2, "onRssiThresholdBreach event. Cur Rssi = "

    #@f
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@12
    move-result-object v1

    #@13
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@16
    move-result-object v1

    #@17
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1a
    move-result-object v1

    #@1b
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@1e
    .line 234
    :cond_0
    const v0, 0x200a4

    #@21
    invoke-virtual {p0, v0, p1}, Lcom/android/server/wifi/WifiStateMachine;->sendMessage(II)V

    #@24
    .line 230
    return-void
.end method

.method printTime()Ljava/lang/String;
    .locals 4

    #@0
    .prologue
    .line 2395
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    .line 2396
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string/jumbo v1, " rt="

    #@8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b
    move-result-object v1

    #@c
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    #@f
    move-result-wide v2

    #@10
    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    #@13
    .line 2397
    const-string/jumbo v1, "/"

    #@16
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@19
    move-result-object v1

    #@1a
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    #@1d
    move-result-wide v2

    #@1e
    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    #@21
    .line 2398
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@24
    move-result-object v1

    #@25
    return-object v1
.end method

.method public processRssiThreshold(BI)V
    .locals 7
    .param p1, "curRssi"    # B
    .param p2, "reason"    # I

    #@0
    .prologue
    .line 238
    const/16 v4, 0x7f

    #@2
    if-eq p1, v4, :cond_0

    #@4
    const/16 v4, -0x80

    #@6
    if-ne p1, v4, :cond_1

    #@8
    .line 239
    :cond_0
    const-string/jumbo v4, "WifiStateMachine"

    #@b
    new-instance v5, Ljava/lang/StringBuilder;

    #@d
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@10
    const-string/jumbo v6, "processRssiThreshold: Invalid rssi "

    #@13
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@16
    move-result-object v5

    #@17
    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@1a
    move-result-object v5

    #@1b
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1e
    move-result-object v5

    #@1f
    invoke-static {v4, v5}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    #@22
    .line 240
    return-void

    #@23
    .line 242
    :cond_1
    const/4 v0, 0x0

    #@24
    .local v0, "i":I
    :goto_0
    iget-object v4, p0, Lcom/android/server/wifi/WifiStateMachine;->mRssiRanges:[B

    #@26
    array-length v4, v4

    #@27
    if-ge v0, v4, :cond_2

    #@29
    .line 243
    iget-object v4, p0, Lcom/android/server/wifi/WifiStateMachine;->mRssiRanges:[B

    #@2b
    aget-byte v4, v4, v0

    #@2d
    if-ge p1, v4, :cond_3

    #@2f
    .line 246
    iget-object v4, p0, Lcom/android/server/wifi/WifiStateMachine;->mRssiRanges:[B

    #@31
    aget-byte v1, v4, v0

    #@33
    .line 247
    .local v1, "maxRssi":B
    iget-object v4, p0, Lcom/android/server/wifi/WifiStateMachine;->mRssiRanges:[B

    #@35
    add-int/lit8 v5, v0, -0x1

    #@37
    aget-byte v2, v4, v5

    #@39
    .line 251
    .local v2, "minRssi":B
    iget-object v4, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    #@3b
    invoke-virtual {v4, p1}, Landroid/net/wifi/WifiInfo;->setRssi(I)V

    #@3e
    .line 252
    invoke-virtual {p0}, Lcom/android/server/wifi/WifiStateMachine;->getCurrentWifiConfiguration()Landroid/net/wifi/WifiConfiguration;

    #@41
    move-result-object v4

    #@42
    invoke-direct {p0, v4}, Lcom/android/server/wifi/WifiStateMachine;->updateCapabilities(Landroid/net/wifi/WifiConfiguration;)V

    #@45
    .line 253
    invoke-virtual {p0, v1, v2}, Lcom/android/server/wifi/WifiStateMachine;->startRssiMonitoringOffload(BB)I

    #@48
    move-result v3

    #@49
    .line 254
    .local v3, "ret":I
    const-string/jumbo v4, "WifiStateMachine"

    #@4c
    new-instance v5, Ljava/lang/StringBuilder;

    #@4e
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@51
    const-string/jumbo v6, "Re-program RSSI thresholds for "

    #@54
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@57
    move-result-object v5

    #@58
    invoke-virtual {p0, p2}, Lcom/android/server/wifi/WifiStateMachine;->smToString(I)Ljava/lang/String;

    #@5b
    move-result-object v6

    #@5c
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5f
    move-result-object v5

    #@60
    .line 255
    const-string/jumbo v6, ": ["

    #@63
    .line 254
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@66
    move-result-object v5

    #@67
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@6a
    move-result-object v5

    #@6b
    .line 255
    const-string/jumbo v6, ", "

    #@6e
    .line 254
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@71
    move-result-object v5

    #@72
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@75
    move-result-object v5

    #@76
    .line 255
    const-string/jumbo v6, "], curRssi="

    #@79
    .line 254
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@7c
    move-result-object v5

    #@7d
    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@80
    move-result-object v5

    #@81
    .line 255
    const-string/jumbo v6, " ret="

    #@84
    .line 254
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@87
    move-result-object v5

    #@88
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@8b
    move-result-object v5

    #@8c
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@8f
    move-result-object v5

    #@90
    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@93
    .line 237
    .end local v1    # "maxRssi":B
    .end local v2    # "minRssi":B
    .end local v3    # "ret":I
    :cond_2
    return-void

    #@94
    .line 242
    :cond_3
    add-int/lit8 v0, v0, 0x1

    #@96
    goto :goto_0
.end method

.method public reassociateCommand()V
    .locals 1

    #@0
    .prologue
    .line 1986
    const v0, 0x2004b

    #@3
    invoke-virtual {p0, v0}, Lcom/android/server/wifi/WifiStateMachine;->sendMessage(I)V

    #@6
    .line 1985
    return-void
.end method

.method public reconnectCommand()V
    .locals 1

    #@0
    .prologue
    .line 1979
    const v0, 0x2004a

    #@3
    invoke-virtual {p0, v0}, Lcom/android/server/wifi/WifiStateMachine;->sendMessage(I)V

    #@6
    .line 1978
    return-void
.end method

.method recordUidIfAuthorized(Landroid/net/wifi/WifiConfiguration;IZ)Z
    .locals 1
    .param p1, "config"    # Landroid/net/wifi/WifiConfiguration;
    .param p2, "uid"    # I
    .param p3, "onlyAnnotate"    # Z

    #@0
    .prologue
    .line 484
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiConfigManager:Lcom/android/server/wifi/WifiConfigManager;

    #@2
    invoke-virtual {v0, p1}, Lcom/android/server/wifi/WifiConfigManager;->isNetworkConfigured(Landroid/net/wifi/WifiConfiguration;)Z

    #@5
    move-result v0

    #@6
    if-nez v0, :cond_1

    #@8
    .line 485
    iput p2, p1, Landroid/net/wifi/WifiConfiguration;->creatorUid:I

    #@a
    .line 486
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mContext:Landroid/content/Context;

    #@c
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    #@f
    move-result-object v0

    #@10
    invoke-virtual {v0, p2}, Landroid/content/pm/PackageManager;->getNameForUid(I)Ljava/lang/String;

    #@13
    move-result-object v0

    #@14
    iput-object v0, p1, Landroid/net/wifi/WifiConfiguration;->creatorName:Ljava/lang/String;

    #@16
    .line 491
    :cond_0
    iput p2, p1, Landroid/net/wifi/WifiConfiguration;->lastUpdateUid:I

    #@18
    .line 492
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mContext:Landroid/content/Context;

    #@1a
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    #@1d
    move-result-object v0

    #@1e
    invoke-virtual {v0, p2}, Landroid/content/pm/PackageManager;->getNameForUid(I)Ljava/lang/String;

    #@21
    move-result-object v0

    #@22
    iput-object v0, p1, Landroid/net/wifi/WifiConfiguration;->lastUpdateName:Ljava/lang/String;

    #@24
    .line 494
    const/4 v0, 0x1

    #@25
    return v0

    #@26
    .line 487
    :cond_1
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiConfigManager:Lcom/android/server/wifi/WifiConfigManager;

    #@28
    invoke-virtual {v0, p2, p1, p3}, Lcom/android/server/wifi/WifiConfigManager;->canModifyNetwork(ILandroid/net/wifi/WifiConfiguration;Z)Z

    #@2b
    move-result v0

    #@2c
    if-nez v0, :cond_0

    #@2e
    .line 488
    const/4 v0, 0x0

    #@2f
    return v0
.end method

.method registerConnected()V
    .locals 5

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 5257
    iget v2, p0, Lcom/android/server/wifi/WifiStateMachine;->mLastNetworkId:I

    #@3
    const/4 v3, -0x1

    #@4
    if-eq v2, v3, :cond_1

    #@6
    .line 5258
    iget-object v2, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiConfigManager:Lcom/android/server/wifi/WifiConfigManager;

    #@8
    iget v3, p0, Lcom/android/server/wifi/WifiStateMachine;->mLastNetworkId:I

    #@a
    invoke-virtual {v2, v3}, Lcom/android/server/wifi/WifiConfigManager;->getWifiConfiguration(I)Landroid/net/wifi/WifiConfiguration;

    #@d
    move-result-object v0

    #@e
    .line 5259
    .local v0, "config":Landroid/net/wifi/WifiConfiguration;
    if-eqz v0, :cond_0

    #@10
    .line 5262
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    #@13
    move-result-wide v2

    #@14
    iput-wide v2, v0, Landroid/net/wifi/WifiConfiguration;->lastConnected:J

    #@16
    .line 5263
    iget v2, v0, Landroid/net/wifi/WifiConfiguration;->numAssociation:I

    #@18
    add-int/lit8 v2, v2, 0x1

    #@1a
    iput v2, v0, Landroid/net/wifi/WifiConfiguration;->numAssociation:I

    #@1c
    .line 5265
    invoke-virtual {v0}, Landroid/net/wifi/WifiConfiguration;->getNetworkSelectionStatus()Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;

    #@1f
    move-result-object v1

    #@20
    .line 5266
    .local v1, "networkSelectionStatus":Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;
    invoke-virtual {v1}, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->clearDisableReasonCounter()V

    #@23
    .line 5267
    const/4 v2, 0x1

    #@24
    invoke-virtual {v1, v2}, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->setHasEverConnected(Z)V

    #@27
    .line 5270
    .end local v1    # "networkSelectionStatus":Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;
    :cond_0
    iput-object v4, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiScoreReport:Lcom/android/server/wifi/WifiScoreReport;

    #@29
    .line 5256
    .end local v0    # "config":Landroid/net/wifi/WifiConfiguration;
    :cond_1
    return-void
.end method

.method registerDisconnected()V
    .locals 4

    #@0
    .prologue
    .line 5275
    iget v1, p0, Lcom/android/server/wifi/WifiStateMachine;->mLastNetworkId:I

    #@2
    const/4 v2, -0x1

    #@3
    if-eq v1, v2, :cond_0

    #@5
    .line 5278
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiConfigManager:Lcom/android/server/wifi/WifiConfigManager;

    #@7
    iget v2, p0, Lcom/android/server/wifi/WifiStateMachine;->mLastNetworkId:I

    #@9
    invoke-virtual {v1, v2}, Lcom/android/server/wifi/WifiConfigManager;->getWifiConfiguration(I)Landroid/net/wifi/WifiConfiguration;

    #@c
    move-result-object v0

    #@d
    .line 5279
    .local v0, "config":Landroid/net/wifi/WifiConfiguration;
    if-eqz v0, :cond_0

    #@f
    .line 5280
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    #@12
    move-result-wide v2

    #@13
    iput-wide v2, v0, Landroid/net/wifi/WifiConfiguration;->lastDisconnected:J

    #@15
    .line 5281
    iget-boolean v1, v0, Landroid/net/wifi/WifiConfiguration;->ephemeral:Z

    #@17
    if-eqz v1, :cond_0

    #@19
    .line 5283
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiConfigManager:Lcom/android/server/wifi/WifiConfigManager;

    #@1b
    iget v2, p0, Lcom/android/server/wifi/WifiStateMachine;->mLastNetworkId:I

    #@1d
    invoke-virtual {v1, v2}, Lcom/android/server/wifi/WifiConfigManager;->forgetNetwork(I)Z

    #@20
    .line 5274
    .end local v0    # "config":Landroid/net/wifi/WifiConfiguration;
    :cond_0
    return-void
.end method

.method public reloadTlsNetworksAndReconnect()V
    .locals 1

    #@0
    .prologue
    .line 1994
    const v0, 0x2008e

    #@3
    invoke-virtual {p0, v0}, Lcom/android/server/wifi/WifiStateMachine;->sendMessage(I)V

    #@6
    .line 1993
    return-void
.end method

.method public removeAppConfigs(Ljava/lang/String;I)V
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "uid"    # I

    #@0
    .prologue
    .line 2240
    new-instance v0, Landroid/content/pm/ApplicationInfo;

    #@2
    invoke-direct {v0}, Landroid/content/pm/ApplicationInfo;-><init>()V

    #@5
    .line 2241
    .local v0, "ai":Landroid/content/pm/ApplicationInfo;
    iput-object p1, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    #@7
    .line 2242
    iput p2, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    #@9
    .line 2243
    const v1, 0x20061

    #@c
    invoke-virtual {p0, v1, v0}, Lcom/android/server/wifi/WifiStateMachine;->sendMessage(ILjava/lang/Object;)V

    #@f
    .line 2238
    return-void
.end method

.method public removeUserConfigs(I)V
    .locals 1
    .param p1, "userId"    # I

    #@0
    .prologue
    .line 2250
    const v0, 0x20098

    #@3
    invoke-virtual {p0, v0, p1}, Lcom/android/server/wifi/WifiStateMachine;->sendMessage(II)V

    #@6
    .line 2249
    return-void
.end method

.method reportOnTime()Ljava/lang/String;
    .locals 14

    #@0
    .prologue
    const/4 v13, 0x2

    #@1
    const/4 v12, 0x1

    #@2
    const/4 v11, 0x0

    #@3
    .line 1542
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    #@6
    move-result-wide v0

    #@7
    .line 1543
    .local v0, "now":J
    new-instance v5, Ljava/lang/StringBuilder;

    #@9
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@c
    .line 1545
    .local v5, "sb":Ljava/lang/StringBuilder;
    iget v7, p0, Lcom/android/server/wifi/WifiStateMachine;->mOnTime:I

    #@e
    iget v8, p0, Lcom/android/server/wifi/WifiStateMachine;->mOnTimeLastReport:I

    #@10
    sub-int v2, v7, v8

    #@12
    .line 1546
    .local v2, "on":I
    iget v7, p0, Lcom/android/server/wifi/WifiStateMachine;->mOnTime:I

    #@14
    iput v7, p0, Lcom/android/server/wifi/WifiStateMachine;->mOnTimeLastReport:I

    #@16
    .line 1547
    iget v7, p0, Lcom/android/server/wifi/WifiStateMachine;->mTxTime:I

    #@18
    iget v8, p0, Lcom/android/server/wifi/WifiStateMachine;->mTxTimeLastReport:I

    #@1a
    sub-int v6, v7, v8

    #@1c
    .line 1548
    .local v6, "tx":I
    iget v7, p0, Lcom/android/server/wifi/WifiStateMachine;->mTxTime:I

    #@1e
    iput v7, p0, Lcom/android/server/wifi/WifiStateMachine;->mTxTimeLastReport:I

    #@20
    .line 1549
    iget v7, p0, Lcom/android/server/wifi/WifiStateMachine;->mRxTime:I

    #@22
    iget v8, p0, Lcom/android/server/wifi/WifiStateMachine;->mRxTimeLastReport:I

    #@24
    sub-int v4, v7, v8

    #@26
    .line 1550
    .local v4, "rx":I
    iget v7, p0, Lcom/android/server/wifi/WifiStateMachine;->mRxTime:I

    #@28
    iput v7, p0, Lcom/android/server/wifi/WifiStateMachine;->mRxTimeLastReport:I

    #@2a
    .line 1551
    iget-wide v8, p0, Lcom/android/server/wifi/WifiStateMachine;->lastOntimeReportTimeStamp:J

    #@2c
    sub-long v8, v0, v8

    #@2e
    long-to-int v3, v8

    #@2f
    .line 1552
    .local v3, "period":I
    iput-wide v0, p0, Lcom/android/server/wifi/WifiStateMachine;->lastOntimeReportTimeStamp:J

    #@31
    .line 1553
    const-string/jumbo v7, "[on:%d tx:%d rx:%d period:%d]"

    #@34
    const/4 v8, 0x4

    #@35
    new-array v8, v8, [Ljava/lang/Object;

    #@37
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@3a
    move-result-object v9

    #@3b
    aput-object v9, v8, v11

    #@3d
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@40
    move-result-object v9

    #@41
    aput-object v9, v8, v12

    #@43
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@46
    move-result-object v9

    #@47
    aput-object v9, v8, v13

    #@49
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@4c
    move-result-object v9

    #@4d
    const/4 v10, 0x3

    #@4e
    aput-object v9, v8, v10

    #@50
    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@53
    move-result-object v7

    #@54
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@57
    .line 1555
    iget v7, p0, Lcom/android/server/wifi/WifiStateMachine;->mOnTime:I

    #@59
    iget v8, p0, Lcom/android/server/wifi/WifiStateMachine;->mOnTimeScreenStateChange:I

    #@5b
    sub-int v2, v7, v8

    #@5d
    .line 1556
    iget-wide v8, p0, Lcom/android/server/wifi/WifiStateMachine;->lastScreenStateChangeTimeStamp:J

    #@5f
    sub-long v8, v0, v8

    #@61
    long-to-int v3, v8

    #@62
    .line 1557
    const-string/jumbo v7, " from screen [on:%d period:%d]"

    #@65
    new-array v8, v13, [Ljava/lang/Object;

    #@67
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@6a
    move-result-object v9

    #@6b
    aput-object v9, v8, v11

    #@6d
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@70
    move-result-object v9

    #@71
    aput-object v9, v8, v12

    #@73
    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@76
    move-result-object v7

    #@77
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@7a
    .line 1558
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@7d
    move-result-object v7

    #@7e
    return-object v7
.end method

.method public declared-synchronized resetSimAuthNetworks(Z)V
    .locals 2
    .param p1, "simPresent"    # Z

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 2175
    if-eqz p1, :cond_0

    #@3
    const/4 v0, 0x1

    #@4
    :goto_0
    const v1, 0x20065

    #@7
    :try_start_0
    invoke-virtual {p0, v1, v0}, Lcom/android/server/wifi/WifiStateMachine;->sendMessage(II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@a
    monitor-exit p0

    #@b
    .line 2174
    return-void

    #@c
    .line 2175
    :cond_0
    const/4 v0, 0x0

    #@d
    goto :goto_0

    #@e
    :catchall_0
    move-exception v0

    #@f
    monitor-exit p0

    #@10
    throw v0
.end method

.method public sendBluetoothAdapterStateChange(I)V
    .locals 2
    .param p1, "state"    # I

    #@0
    .prologue
    .line 2232
    const v0, 0x2001f

    #@3
    const/4 v1, 0x0

    #@4
    invoke-virtual {p0, v0, p1, v1}, Lcom/android/server/wifi/WifiStateMachine;->sendMessage(III)V

    #@7
    .line 2231
    return-void
.end method

.method sendScanResultsAvailableBroadcast(Z)V
    .locals 3
    .param p1, "scanSucceeded"    # Z

    #@0
    .prologue
    .line 3361
    new-instance v0, Landroid/content/Intent;

    #@2
    const-string/jumbo v1, "android.net.wifi.SCAN_RESULTS"

    #@5
    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    #@8
    .line 3362
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v1, 0x4000000

    #@a
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    #@d
    .line 3363
    const-string/jumbo v1, "resultsUpdated"

    #@10
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    #@13
    .line 3364
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine;->mContext:Landroid/content/Context;

    #@15
    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    #@17
    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    #@1a
    .line 3360
    return-void
.end method

.method public setAllowScansWithTraffic(I)V
    .locals 1
    .param p1, "enabled"    # I

    #@0
    .prologue
    .line 1382
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiConfigManager:Lcom/android/server/wifi/WifiConfigManager;

    #@2
    iget-object v0, v0, Lcom/android/server/wifi/WifiConfigManager;->mAlwaysEnableScansWhileAssociated:Ljava/util/concurrent/atomic/AtomicInteger;

    #@4
    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    #@7
    .line 1381
    return-void
.end method

.method public setDriverStart(Z)V
    .locals 1
    .param p1, "enable"    # Z

    #@0
    .prologue
    .line 1876
    if-eqz p1, :cond_0

    #@2
    .line 1877
    const v0, 0x2000d

    #@5
    invoke-virtual {p0, v0}, Lcom/android/server/wifi/WifiStateMachine;->sendMessage(I)V

    #@8
    .line 1875
    :goto_0
    return-void

    #@9
    .line 1879
    :cond_0
    const v0, 0x2000e

    #@c
    invoke-virtual {p0, v0}, Lcom/android/server/wifi/WifiStateMachine;->sendMessage(I)V

    #@f
    goto :goto_0
.end method

.method public setEnableAutoJoinWhenAssociated(Z)Z
    .locals 3
    .param p1, "enabled"    # Z

    #@0
    .prologue
    const/4 v1, 0x1

    #@1
    .line 1393
    if-eqz p1, :cond_0

    #@3
    move v0, v1

    #@4
    :goto_0
    const v2, 0x200a7

    #@7
    invoke-virtual {p0, v2, v0}, Lcom/android/server/wifi/WifiStateMachine;->sendMessage(II)V

    #@a
    .line 1394
    return v1

    #@b
    .line 1393
    :cond_0
    const/4 v0, 0x0

    #@c
    goto :goto_0
.end method

.method public setFrequencyBand(IZ)V
    .locals 2
    .param p1, "band"    # I
    .param p2, "persist"    # Z

    #@0
    .prologue
    .line 2198
    if-eqz p2, :cond_0

    #@2
    .line 2199
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mContext:Landroid/content/Context;

    #@4
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    #@7
    move-result-object v0

    #@8
    .line 2200
    const-string/jumbo v1, "wifi_frequency_band"

    #@b
    .line 2199
    invoke-static {v0, v1, p1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    #@e
    .line 2203
    :cond_0
    const v0, 0x2005a

    #@11
    const/4 v1, 0x0

    #@12
    invoke-virtual {p0, v0, p1, v1}, Lcom/android/server/wifi/WifiStateMachine;->sendMessage(III)V

    #@15
    .line 2197
    return-void
.end method

.method public setHighPerfModeEnabled(Z)V
    .locals 3
    .param p1, "enable"    # Z

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 2167
    if-eqz p1, :cond_0

    #@3
    const/4 v0, 0x1

    #@4
    :goto_0
    const v2, 0x2004d

    #@7
    invoke-virtual {p0, v2, v0, v1}, Lcom/android/server/wifi/WifiStateMachine;->sendMessage(III)V

    #@a
    .line 2166
    return-void

    #@b
    :cond_0
    move v0, v1

    #@c
    .line 2167
    goto :goto_0
.end method

.method public setHostApRunning(Landroid/net/wifi/WifiConfiguration;Z)V
    .locals 1
    .param p1, "wifiConfig"    # Landroid/net/wifi/WifiConfiguration;
    .param p2, "enable"    # Z

    #@0
    .prologue
    .line 1752
    if-eqz p2, :cond_0

    #@2
    .line 1753
    const v0, 0x20015

    #@5
    invoke-virtual {p0, v0, p1}, Lcom/android/server/wifi/WifiStateMachine;->sendMessage(ILjava/lang/Object;)V

    #@8
    .line 1751
    :goto_0
    return-void

    #@9
    .line 1755
    :cond_0
    const v0, 0x20017

    #@c
    invoke-virtual {p0, v0}, Lcom/android/server/wifi/WifiStateMachine;->sendMessage(I)V

    #@f
    goto :goto_0
.end method

.method public setOperationalMode(I)V
    .locals 2
    .param p1, "mode"    # I

    #@0
    .prologue
    .line 1887
    sget-boolean v0, Lcom/android/server/wifi/WifiStateMachine;->DBG:Z

    #@2
    if-eqz v0, :cond_0

    #@4
    new-instance v0, Ljava/lang/StringBuilder;

    #@6
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@9
    const-string/jumbo v1, "setting operational mode to "

    #@c
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@f
    move-result-object v0

    #@10
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    #@13
    move-result-object v1

    #@14
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@17
    move-result-object v0

    #@18
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1b
    move-result-object v0

    #@1c
    invoke-virtual {p0, v0}, Lcom/android/server/wifi/WifiStateMachine;->log(Ljava/lang/String;)V

    #@1f
    .line 1888
    :cond_0
    const v0, 0x20048

    #@22
    const/4 v1, 0x0

    #@23
    invoke-virtual {p0, v0, p1, v1}, Lcom/android/server/wifi/WifiStateMachine;->sendMessage(III)V

    #@26
    .line 1886
    return-void
.end method

.method setSupplicantLogLevel()V
    .locals 2

    #@0
    .prologue
    .line 1317
    iget v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mVerboseLoggingLevel:I

    #@2
    if-lez v0, :cond_0

    #@4
    .line 1318
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    #@6
    const-string/jumbo v1, "DEBUG"

    #@9
    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiNative;->setSupplicantLogLevel(Ljava/lang/String;)V

    #@c
    .line 1316
    :goto_0
    return-void

    #@d
    .line 1320
    :cond_0
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    #@f
    const-string/jumbo v1, "INFO"

    #@12
    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiNative;->setSupplicantLogLevel(Ljava/lang/String;)V

    #@15
    goto :goto_0
.end method

.method public setSupplicantRunning(Z)V
    .locals 1
    .param p1, "enable"    # Z

    #@0
    .prologue
    .line 1741
    if-eqz p1, :cond_0

    #@2
    .line 1742
    const v0, 0x2000b

    #@5
    invoke-virtual {p0, v0}, Lcom/android/server/wifi/WifiStateMachine;->sendMessage(I)V

    #@8
    .line 1740
    :goto_0
    return-void

    #@9
    .line 1744
    :cond_0
    const v0, 0x2000c

    #@c
    invoke-virtual {p0, v0}, Lcom/android/server/wifi/WifiStateMachine;->sendMessage(I)V

    #@f
    goto :goto_0
.end method

.method public setWifiApConfiguration(Landroid/net/wifi/WifiConfiguration;)V
    .locals 1
    .param p1, "config"    # Landroid/net/wifi/WifiConfiguration;

    #@0
    .prologue
    .line 1760
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiApConfigStore:Lcom/android/server/wifi/WifiApConfigStore;

    #@2
    invoke-virtual {v0, p1}, Lcom/android/server/wifi/WifiApConfigStore;->setApConfiguration(Landroid/net/wifi/WifiConfiguration;)V

    #@5
    .line 1759
    return-void
.end method

.method smToString(I)Ljava/lang/String;
    .locals 3
    .param p1, "what"    # I

    #@0
    .prologue
    .line 5124
    sget-object v1, Lcom/android/server/wifi/WifiStateMachine;->sSmToString:Landroid/util/SparseArray;

    #@2
    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Ljava/lang/String;

    #@8
    .line 5125
    .local v0, "s":Ljava/lang/String;
    if-eqz v0, :cond_0

    #@a
    .line 5126
    return-object v0

    #@b
    .line 5128
    :cond_0
    sparse-switch p1, :sswitch_data_0

    #@e
    .line 5250
    new-instance v1, Ljava/lang/StringBuilder;

    #@10
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@13
    const-string/jumbo v2, "what:"

    #@16
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@19
    move-result-object v1

    #@1a
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    #@1d
    move-result-object v2

    #@1e
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@21
    move-result-object v1

    #@22
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@25
    move-result-object v0

    #@26
    .line 5253
    :goto_0
    return-object v0

    #@27
    .line 5130
    :sswitch_0
    const-string/jumbo v0, "DRIVER_HUNG_EVENT"

    #@2a
    goto :goto_0

    #@2b
    .line 5133
    :sswitch_1
    const-string/jumbo v0, "AsyncChannel.CMD_CHANNEL_HALF_CONNECTED"

    #@2e
    goto :goto_0

    #@2f
    .line 5136
    :sswitch_2
    const-string/jumbo v0, "AsyncChannel.CMD_CHANNEL_DISCONNECTED"

    #@32
    goto :goto_0

    #@33
    .line 5139
    :sswitch_3
    const-string/jumbo v0, "WifiP2pServiceImpl.DISCONNECT_WIFI_REQUEST"

    #@36
    goto :goto_0

    #@37
    .line 5142
    :sswitch_4
    const-string/jumbo v0, "WifiManager.DISABLE_NETWORK"

    #@3a
    goto :goto_0

    #@3b
    .line 5145
    :sswitch_5
    const-string/jumbo v0, "CONNECT_NETWORK"

    #@3e
    goto :goto_0

    #@3f
    .line 5148
    :sswitch_6
    const-string/jumbo v0, "SAVE_NETWORK"

    #@42
    goto :goto_0

    #@43
    .line 5151
    :sswitch_7
    const-string/jumbo v0, "FORGET_NETWORK"

    #@46
    goto :goto_0

    #@47
    .line 5154
    :sswitch_8
    const-string/jumbo v0, "SUP_CONNECTION_EVENT"

    #@4a
    goto :goto_0

    #@4b
    .line 5157
    :sswitch_9
    const-string/jumbo v0, "SUP_DISCONNECTION_EVENT"

    #@4e
    goto :goto_0

    #@4f
    .line 5160
    :sswitch_a
    const-string/jumbo v0, "SCAN_RESULTS_EVENT"

    #@52
    goto :goto_0

    #@53
    .line 5163
    :sswitch_b
    const-string/jumbo v0, "SCAN_FAILED_EVENT"

    #@56
    goto :goto_0

    #@57
    .line 5166
    :sswitch_c
    const-string/jumbo v0, "SUPPLICANT_STATE_CHANGE_EVENT"

    #@5a
    goto :goto_0

    #@5b
    .line 5169
    :sswitch_d
    const-string/jumbo v0, "AUTHENTICATION_FAILURE_EVENT"

    #@5e
    goto :goto_0

    #@5f
    .line 5172
    :sswitch_e
    const-string/jumbo v0, "SSID_TEMP_DISABLED"

    #@62
    goto :goto_0

    #@63
    .line 5175
    :sswitch_f
    const-string/jumbo v0, "SSID_REENABLED"

    #@66
    goto :goto_0

    #@67
    .line 5178
    :sswitch_10
    const-string/jumbo v0, "WPS_SUCCESS_EVENT"

    #@6a
    goto :goto_0

    #@6b
    .line 5181
    :sswitch_11
    const-string/jumbo v0, "WPS_FAIL_EVENT"

    #@6e
    goto :goto_0

    #@6f
    .line 5184
    :sswitch_12
    const-string/jumbo v0, "SUP_REQUEST_IDENTITY"

    #@72
    goto :goto_0

    #@73
    .line 5187
    :sswitch_13
    const-string/jumbo v0, "NETWORK_CONNECTION_EVENT"

    #@76
    goto :goto_0

    #@77
    .line 5190
    :sswitch_14
    const-string/jumbo v0, "NETWORK_DISCONNECTION_EVENT"

    #@7a
    goto :goto_0

    #@7b
    .line 5193
    :sswitch_15
    const-string/jumbo v0, "ASSOCIATION_REJECTION_EVENT"

    #@7e
    goto :goto_0

    #@7f
    .line 5196
    :sswitch_16
    const-string/jumbo v0, "WifiMonitor.ANQP_DONE_EVENT"

    #@82
    goto :goto_0

    #@83
    .line 5199
    :sswitch_17
    const-string/jumbo v0, "WifiMonitor.RX_HS20_ANQP_ICON_EVENT"

    #@86
    goto :goto_0

    #@87
    .line 5202
    :sswitch_18
    const-string/jumbo v0, "WifiMonitor.GAS_QUERY_DONE_EVENT"

    #@8a
    goto :goto_0

    #@8b
    .line 5205
    :sswitch_19
    const-string/jumbo v0, "WifiMonitor.HS20_REMEDIATION_EVENT"

    #@8e
    goto :goto_0

    #@8f
    .line 5208
    :sswitch_1a
    const-string/jumbo v0, "WifiMonitor.GAS_QUERY_START_EVENT"

    #@92
    goto :goto_0

    #@93
    .line 5211
    :sswitch_1b
    const-string/jumbo v0, "GROUP_CREATING_TIMED_OUT"

    #@96
    goto :goto_0

    #@97
    .line 5214
    :sswitch_1c
    const-string/jumbo v0, "P2P_CONNECTION_CHANGED"

    #@9a
    goto :goto_0

    #@9b
    .line 5217
    :sswitch_1d
    const-string/jumbo v0, "P2P.DISCONNECT_WIFI_RESPONSE"

    #@9e
    goto :goto_0

    #@9f
    .line 5220
    :sswitch_1e
    const-string/jumbo v0, "P2P.SET_MIRACAST_MODE"

    #@a2
    goto :goto_0

    #@a3
    .line 5223
    :sswitch_1f
    const-string/jumbo v0, "P2P.BLOCK_DISCOVERY"

    #@a6
    goto :goto_0

    #@a7
    .line 5226
    :sswitch_20
    const-string/jumbo v0, "CANCEL_WPS"

    #@aa
    goto/16 :goto_0

    #@ac
    .line 5229
    :sswitch_21
    const-string/jumbo v0, "CANCEL_WPS_FAILED"

    #@af
    goto/16 :goto_0

    #@b1
    .line 5232
    :sswitch_22
    const-string/jumbo v0, "CANCEL_WPS_SUCCEDED"

    #@b4
    goto/16 :goto_0

    #@b6
    .line 5235
    :sswitch_23
    const-string/jumbo v0, "START_WPS"

    #@b9
    goto/16 :goto_0

    #@bb
    .line 5238
    :sswitch_24
    const-string/jumbo v0, "START_WPS_SUCCEEDED"

    #@be
    goto/16 :goto_0

    #@c0
    .line 5241
    :sswitch_25
    const-string/jumbo v0, "WPS_FAILED"

    #@c3
    goto/16 :goto_0

    #@c5
    .line 5244
    :sswitch_26
    const-string/jumbo v0, "WPS_COMPLETED"

    #@c8
    goto/16 :goto_0

    #@ca
    .line 5247
    :sswitch_27
    const-string/jumbo v0, "RSSI_PKTCNT_FETCH"

    #@cd
    goto/16 :goto_0

    #@cf
    .line 5128
    nop

    #@d0
    :sswitch_data_0
    .sparse-switch
        0x11000 -> :sswitch_1
        0x11004 -> :sswitch_2
        0x23001 -> :sswitch_1b
        0x2300b -> :sswitch_1c
        0x2300c -> :sswitch_3
        0x2300d -> :sswitch_1d
        0x2300e -> :sswitch_1e
        0x2300f -> :sswitch_1f
        0x24001 -> :sswitch_8
        0x24002 -> :sswitch_9
        0x24003 -> :sswitch_13
        0x24004 -> :sswitch_14
        0x24005 -> :sswitch_a
        0x24006 -> :sswitch_c
        0x24007 -> :sswitch_d
        0x24008 -> :sswitch_10
        0x24009 -> :sswitch_11
        0x2400c -> :sswitch_0
        0x2400d -> :sswitch_e
        0x2400e -> :sswitch_f
        0x2400f -> :sswitch_12
        0x24011 -> :sswitch_b
        0x2402b -> :sswitch_15
        0x2402c -> :sswitch_16
        0x24033 -> :sswitch_1a
        0x24034 -> :sswitch_18
        0x24035 -> :sswitch_17
        0x2403d -> :sswitch_19
        0x25001 -> :sswitch_5
        0x25004 -> :sswitch_7
        0x25007 -> :sswitch_6
        0x2500a -> :sswitch_23
        0x2500b -> :sswitch_24
        0x2500c -> :sswitch_25
        0x2500d -> :sswitch_26
        0x2500e -> :sswitch_20
        0x2500f -> :sswitch_21
        0x25010 -> :sswitch_22
        0x25011 -> :sswitch_4
        0x25014 -> :sswitch_27
    .end sparse-switch
.end method

.method smToString(Landroid/os/Message;)Ljava/lang/String;
    .locals 1
    .param p1, "message"    # Landroid/os/Message;

    #@0
    .prologue
    .line 5120
    iget v0, p1, Landroid/os/Message;->what:I

    #@2
    invoke-virtual {p0, v0}, Lcom/android/server/wifi/WifiStateMachine;->smToString(I)Ljava/lang/String;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public startFilteringMulticastPackets()V
    .locals 2

    #@0
    .prologue
    .line 2149
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mIpManager:Landroid/net/ip/IpManager;

    #@2
    const/4 v1, 0x1

    #@3
    invoke-virtual {v0, v1}, Landroid/net/ip/IpManager;->setMulticastFilter(Z)V

    #@6
    .line 2148
    return-void
.end method

.method startRssiMonitoringOffload(BB)I
    .locals 1
    .param p1, "maxRssi"    # B
    .param p2, "minRssi"    # B

    #@0
    .prologue
    .line 1608
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    #@2
    invoke-virtual {v0, p1, p2, p0}, Lcom/android/server/wifi/WifiNative;->startRssiMonitoring(BBLcom/android/server/wifi/WifiNative$WifiRssiEventHandler;)I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public startScan(IILandroid/net/wifi/ScanSettings;Landroid/os/WorkSource;)V
    .locals 4
    .param p1, "callingUid"    # I
    .param p2, "scanCounter"    # I
    .param p3, "settings"    # Landroid/net/wifi/ScanSettings;
    .param p4, "workSource"    # Landroid/os/WorkSource;

    #@0
    .prologue
    .line 1447
    new-instance v0, Landroid/os/Bundle;

    #@2
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    #@5
    .line 1448
    .local v0, "bundle":Landroid/os/Bundle;
    const-string/jumbo v1, "customized_scan_settings"

    #@8
    invoke-virtual {v0, v1, p3}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    #@b
    .line 1449
    const-string/jumbo v1, "customized_scan_worksource"

    #@e
    invoke-virtual {v0, v1, p4}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    #@11
    .line 1450
    const-string/jumbo v1, "scan_request_time"

    #@14
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    #@17
    move-result-wide v2

    #@18
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    #@1b
    .line 1451
    const v1, 0x20047

    #@1e
    invoke-virtual {p0, v1, p1, p2, v0}, Lcom/android/server/wifi/WifiStateMachine;->sendMessage(IIILjava/lang/Object;)V

    #@21
    .line 1446
    return-void
.end method

.method startScanForConfiguration(Landroid/net/wifi/WifiConfiguration;)Z
    .locals 7
    .param p1, "config"    # Landroid/net/wifi/WifiConfiguration;

    #@0
    .prologue
    const/4 v6, 0x1

    #@1
    const/4 v5, 0x0

    #@2
    .line 6453
    if-nez p1, :cond_0

    #@4
    .line 6454
    return v5

    #@5
    .line 6462
    :cond_0
    iget-object v3, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiConfigManager:Lcom/android/server/wifi/WifiConfigManager;

    #@7
    invoke-virtual {v3, p1}, Lcom/android/server/wifi/WifiConfigManager;->getScanDetailCache(Landroid/net/wifi/WifiConfiguration;)Lcom/android/server/wifi/ScanDetailCache;

    #@a
    move-result-object v2

    #@b
    .line 6463
    .local v2, "scanDetailCache":Lcom/android/server/wifi/ScanDetailCache;
    if-eqz v2, :cond_1

    #@d
    .line 6464
    iget-object v3, p1, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    #@f
    invoke-virtual {v3, v6}, Ljava/util/BitSet;->get(I)Z

    #@12
    move-result v3

    #@13
    if-eqz v3, :cond_1

    #@15
    .line 6465
    invoke-virtual {v2}, Lcom/android/server/wifi/ScanDetailCache;->size()I

    #@18
    move-result v3

    #@19
    const/4 v4, 0x6

    #@1a
    if-le v3, v4, :cond_2

    #@1c
    .line 6467
    :cond_1
    return v6

    #@1d
    .line 6469
    :cond_2
    iget-object v3, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiConfigManager:Lcom/android/server/wifi/WifiConfigManager;

    #@1f
    const v4, 0x36ee80

    #@22
    invoke-virtual {v3, p1, v4}, Lcom/android/server/wifi/WifiConfigManager;->makeChannelList(Landroid/net/wifi/WifiConfiguration;I)Ljava/util/HashSet;

    #@25
    move-result-object v0

    #@26
    .line 6470
    .local v0, "freqs":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Integer;>;"
    if-eqz v0, :cond_5

    #@28
    invoke-virtual {v0}, Ljava/util/HashSet;->size()I

    #@2b
    move-result v3

    #@2c
    if-eqz v3, :cond_5

    #@2e
    .line 6472
    new-instance v3, Ljava/lang/StringBuilder;

    #@30
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@33
    const-string/jumbo v4, "starting scan for "

    #@36
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@39
    move-result-object v3

    #@3a
    invoke-virtual {p1}, Landroid/net/wifi/WifiConfiguration;->configKey()Ljava/lang/String;

    #@3d
    move-result-object v4

    #@3e
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@41
    move-result-object v3

    #@42
    const-string/jumbo v4, " with "

    #@45
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@48
    move-result-object v3

    #@49
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@4c
    move-result-object v3

    #@4d
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@50
    move-result-object v3

    #@51
    invoke-virtual {p0, v3}, Lcom/android/server/wifi/WifiStateMachine;->logd(Ljava/lang/String;)V

    #@54
    .line 6474
    new-instance v1, Ljava/util/HashSet;

    #@56
    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    #@59
    .line 6475
    .local v1, "hiddenNetworkIds":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    iget-boolean v3, p1, Landroid/net/wifi/WifiConfiguration;->hiddenSSID:Z

    #@5b
    if-eqz v3, :cond_3

    #@5d
    .line 6476
    iget v3, p1, Landroid/net/wifi/WifiConfiguration;->networkId:I

    #@5f
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@62
    move-result-object v3

    #@63
    invoke-interface {v1, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    #@66
    .line 6479
    :cond_3
    sget-object v3, Lcom/android/server/wifi/WifiStateMachine;->WIFI_WORK_SOURCE:Landroid/os/WorkSource;

    #@68
    invoke-direct {p0, v0, v1, v3}, Lcom/android/server/wifi/WifiStateMachine;->startScanNative(Ljava/util/Set;Ljava/util/Set;Landroid/os/WorkSource;)Z

    #@6b
    move-result v3

    #@6c
    if-eqz v3, :cond_4

    #@6e
    .line 6480
    sget v3, Lcom/android/server/wifi/WifiStateMachine;->MESSAGE_HANDLING_STATUS_OK:I

    #@70
    iput v3, p0, Lcom/android/server/wifi/WifiStateMachine;->messageHandlingStatus:I

    #@72
    .line 6485
    :goto_0
    return v6

    #@73
    .line 6483
    :cond_4
    sget v3, Lcom/android/server/wifi/WifiStateMachine;->MESSAGE_HANDLING_STATUS_HANDLING_ERROR:I

    #@75
    iput v3, p0, Lcom/android/server/wifi/WifiStateMachine;->messageHandlingStatus:I

    #@77
    goto :goto_0

    #@78
    .line 6487
    .end local v1    # "hiddenNetworkIds":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    :cond_5
    sget-boolean v3, Lcom/android/server/wifi/WifiStateMachine;->DBG:Z

    #@7a
    if-eqz v3, :cond_6

    #@7c
    new-instance v3, Ljava/lang/StringBuilder;

    #@7e
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@81
    const-string/jumbo v4, "no channels for "

    #@84
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@87
    move-result-object v3

    #@88
    invoke-virtual {p1}, Landroid/net/wifi/WifiConfiguration;->configKey()Ljava/lang/String;

    #@8b
    move-result-object v4

    #@8c
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@8f
    move-result-object v3

    #@90
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@93
    move-result-object v3

    #@94
    invoke-virtual {p0, v3}, Lcom/android/server/wifi/WifiStateMachine;->logd(Ljava/lang/String;)V

    #@97
    .line 6488
    :cond_6
    return v5
.end method

.method startWifiIPPacketOffload(ILcom/android/server/connectivity/KeepalivePacketData;I)I
    .locals 4
    .param p1, "slot"    # I
    .param p2, "packetData"    # Lcom/android/server/connectivity/KeepalivePacketData;
    .param p3, "intervalSeconds"    # I

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 1587
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    #@3
    mul-int/lit16 v2, p3, 0x3e8

    #@5
    invoke-virtual {v1, p1, p2, v2}, Lcom/android/server/wifi/WifiNative;->startSendingOffloadedPacket(ILcom/android/server/connectivity/KeepalivePacketData;I)I

    #@8
    move-result v0

    #@9
    .line 1588
    .local v0, "ret":I
    if-eqz v0, :cond_0

    #@b
    .line 1589
    new-instance v1, Ljava/lang/StringBuilder;

    #@d
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@10
    const-string/jumbo v2, "startWifiIPPacketOffload("

    #@13
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@16
    move-result-object v1

    #@17
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@1a
    move-result-object v1

    #@1b
    const-string/jumbo v2, ", "

    #@1e
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@21
    move-result-object v1

    #@22
    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@25
    move-result-object v1

    #@26
    .line 1590
    const-string/jumbo v2, "): hardware error "

    #@29
    .line 1589
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2c
    move-result-object v1

    #@2d
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@30
    move-result-object v1

    #@31
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@34
    move-result-object v1

    #@35
    invoke-virtual {p0, v1}, Lcom/android/server/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V

    #@38
    .line 1591
    const/16 v1, -0x1f

    #@3a
    return v1

    #@3b
    .line 1593
    :cond_0
    return v3
.end method

.method public stopFilteringMulticastPackets()V
    .locals 2

    #@0
    .prologue
    .line 2156
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mIpManager:Landroid/net/ip/IpManager;

    #@2
    const/4 v1, 0x0

    #@3
    invoke-virtual {v0, v1}, Landroid/net/ip/IpManager;->setMulticastFilter(Z)V

    #@6
    .line 2155
    return-void
.end method

.method stopRssiMonitoringOffload()I
    .locals 1

    #@0
    .prologue
    .line 1612
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    #@2
    invoke-virtual {v0}, Lcom/android/server/wifi/WifiNative;->stopRssiMonitoring()I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method stopWifiIPPacketOffload(I)I
    .locals 3
    .param p1, "slot"    # I

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 1598
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    #@3
    invoke-virtual {v1, p1}, Lcom/android/server/wifi/WifiNative;->stopSendingOffloadedPacket(I)I

    #@6
    move-result v0

    #@7
    .line 1599
    .local v0, "ret":I
    if-eqz v0, :cond_0

    #@9
    .line 1600
    new-instance v1, Ljava/lang/StringBuilder;

    #@b
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@e
    const-string/jumbo v2, "stopWifiIPPacketOffload("

    #@11
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@14
    move-result-object v1

    #@15
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@18
    move-result-object v1

    #@19
    const-string/jumbo v2, "): hardware error "

    #@1c
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1f
    move-result-object v1

    #@20
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@23
    move-result-object v1

    #@24
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@27
    move-result-object v1

    #@28
    invoke-virtual {p0, v1}, Lcom/android/server/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V

    #@2b
    .line 1601
    const/16 v1, -0x1f

    #@2d
    return v1

    #@2e
    .line 1603
    :cond_0
    return v2
.end method

.method public syncAddOrUpdateNetwork(Lcom/android/internal/util/AsyncChannel;Landroid/net/wifi/WifiConfiguration;)I
    .locals 3
    .param p1, "channel"    # Lcom/android/internal/util/AsyncChannel;
    .param p2, "config"    # Landroid/net/wifi/WifiConfiguration;

    #@0
    .prologue
    .line 2003
    const v2, 0x20034

    #@3
    invoke-virtual {p1, v2, p2}, Lcom/android/internal/util/AsyncChannel;->sendMessageSynchronously(ILjava/lang/Object;)Landroid/os/Message;

    #@6
    move-result-object v1

    #@7
    .line 2004
    .local v1, "resultMsg":Landroid/os/Message;
    iget v0, v1, Landroid/os/Message;->arg1:I

    #@9
    .line 2005
    .local v0, "result":I
    invoke-virtual {v1}, Landroid/os/Message;->recycle()V

    #@c
    .line 2006
    return v0
.end method

.method public syncAddPasspointManagementObject(Lcom/android/internal/util/AsyncChannel;Ljava/lang/String;)I
    .locals 3
    .param p1, "channel"    # Lcom/android/internal/util/AsyncChannel;
    .param p2, "managementObject"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1914
    const v2, 0x20066

    #@3
    invoke-virtual {p1, v2, p2}, Lcom/android/internal/util/AsyncChannel;->sendMessageSynchronously(ILjava/lang/Object;)Landroid/os/Message;

    #@6
    move-result-object v1

    #@7
    .line 1915
    .local v1, "resultMsg":Landroid/os/Message;
    iget v0, v1, Landroid/os/Message;->arg1:I

    #@9
    .line 1916
    .local v0, "result":I
    invoke-virtual {v1}, Landroid/os/Message;->recycle()V

    #@c
    .line 1917
    return v0
.end method

.method public syncDisableNetwork(Lcom/android/internal/util/AsyncChannel;I)Z
    .locals 4
    .param p1, "channel"    # Lcom/android/internal/util/AsyncChannel;
    .param p2, "netId"    # I

    #@0
    .prologue
    .line 2105
    const v2, 0x25011

    #@3
    invoke-virtual {p1, v2, p2}, Lcom/android/internal/util/AsyncChannel;->sendMessageSynchronously(II)Landroid/os/Message;

    #@6
    move-result-object v1

    #@7
    .line 2106
    .local v1, "resultMsg":Landroid/os/Message;
    iget v2, v1, Landroid/os/Message;->arg1:I

    #@9
    const v3, 0x25012

    #@c
    if-eq v2, v3, :cond_0

    #@e
    const/4 v0, 0x1

    #@f
    .line 2107
    .local v0, "result":Z
    :goto_0
    invoke-virtual {v1}, Landroid/os/Message;->recycle()V

    #@12
    .line 2108
    return v0

    #@13
    .line 2106
    .end local v0    # "result":Z
    :cond_0
    const/4 v0, 0x0

    #@14
    .restart local v0    # "result":Z
    goto :goto_0
.end method

.method public syncEnableNetwork(Lcom/android/internal/util/AsyncChannel;IZ)Z
    .locals 4
    .param p1, "channel"    # Lcom/android/internal/util/AsyncChannel;
    .param p2, "netId"    # I
    .param p3, "disableOthers"    # Z

    #@0
    .prologue
    .line 2092
    if-eqz p3, :cond_0

    #@2
    const/4 v2, 0x1

    #@3
    .line 2091
    :goto_0
    const v3, 0x20036

    #@6
    invoke-virtual {p1, v3, p2, v2}, Lcom/android/internal/util/AsyncChannel;->sendMessageSynchronously(III)Landroid/os/Message;

    #@9
    move-result-object v1

    #@a
    .line 2093
    .local v1, "resultMsg":Landroid/os/Message;
    iget v2, v1, Landroid/os/Message;->arg1:I

    #@c
    const/4 v3, -0x1

    #@d
    if-eq v2, v3, :cond_1

    #@f
    const/4 v0, 0x1

    #@10
    .line 2094
    .local v0, "result":Z
    :goto_1
    invoke-virtual {v1}, Landroid/os/Message;->recycle()V

    #@13
    .line 2095
    return v0

    #@14
    .line 2092
    .end local v0    # "result":Z
    .end local v1    # "resultMsg":Landroid/os/Message;
    :cond_0
    const/4 v2, 0x0

    #@15
    goto :goto_0

    #@16
    .line 2093
    .restart local v1    # "resultMsg":Landroid/os/Message;
    :cond_1
    const/4 v0, 0x0

    #@17
    .restart local v0    # "result":Z
    goto :goto_1
.end method

.method public syncGetConfiguredNetworks(ILcom/android/internal/util/AsyncChannel;)Ljava/util/List;
    .locals 3
    .param p1, "uuid"    # I
    .param p2, "channel"    # Lcom/android/internal/util/AsyncChannel;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/android/internal/util/AsyncChannel;",
            ")",
            "Ljava/util/List",
            "<",
            "Landroid/net/wifi/WifiConfiguration;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 2017
    const v2, 0x2003b

    #@3
    invoke-virtual {p2, v2, p1}, Lcom/android/internal/util/AsyncChannel;->sendMessageSynchronously(II)Landroid/os/Message;

    #@6
    move-result-object v1

    #@7
    .line 2018
    .local v1, "resultMsg":Landroid/os/Message;
    iget-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@9
    check-cast v0, Ljava/util/List;

    #@b
    .line 2019
    .local v0, "result":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/WifiConfiguration;>;"
    invoke-virtual {v1}, Landroid/os/Message;->recycle()V

    #@e
    .line 2020
    return-object v0
.end method

.method public syncGetConnectionStatistics(Lcom/android/internal/util/AsyncChannel;)Landroid/net/wifi/WifiConnectionStatistics;
    .locals 3
    .param p1, "channel"    # Lcom/android/internal/util/AsyncChannel;

    #@0
    .prologue
    .line 2044
    const v2, 0x2004c

    #@3
    invoke-virtual {p1, v2}, Lcom/android/internal/util/AsyncChannel;->sendMessageSynchronously(I)Landroid/os/Message;

    #@6
    move-result-object v1

    #@7
    .line 2045
    .local v1, "resultMsg":Landroid/os/Message;
    iget-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@9
    check-cast v0, Landroid/net/wifi/WifiConnectionStatistics;

    #@b
    .line 2046
    .local v0, "result":Landroid/net/wifi/WifiConnectionStatistics;
    invoke-virtual {v1}, Landroid/os/Message;->recycle()V

    #@e
    .line 2047
    return-object v0
.end method

.method public syncGetDhcpResults()Landroid/net/DhcpResults;
    .locals 3

    #@0
    .prologue
    .line 1867
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine;->mDhcpResultsLock:Ljava/lang/Object;

    #@2
    monitor-enter v1

    #@3
    .line 1868
    :try_start_0
    new-instance v0, Landroid/net/DhcpResults;

    #@5
    iget-object v2, p0, Lcom/android/server/wifi/WifiStateMachine;->mDhcpResults:Landroid/net/DhcpResults;

    #@7
    invoke-direct {v0, v2}, Landroid/net/DhcpResults;-><init>(Landroid/net/DhcpResults;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@a
    monitor-exit v1

    #@b
    return-object v0

    #@c
    .line 1867
    :catchall_0
    move-exception v0

    #@d
    monitor-exit v1

    #@e
    throw v0
.end method

.method public syncGetLinkLayerStats(Lcom/android/internal/util/AsyncChannel;)Landroid/net/wifi/WifiLinkLayerStats;
    .locals 3
    .param p1, "channel"    # Lcom/android/internal/util/AsyncChannel;

    #@0
    .prologue
    .line 2065
    const v2, 0x2003f

    #@3
    invoke-virtual {p1, v2}, Lcom/android/internal/util/AsyncChannel;->sendMessageSynchronously(I)Landroid/os/Message;

    #@6
    move-result-object v1

    #@7
    .line 2066
    .local v1, "resultMsg":Landroid/os/Message;
    iget-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@9
    check-cast v0, Landroid/net/wifi/WifiLinkLayerStats;

    #@b
    .line 2067
    .local v0, "result":Landroid/net/wifi/WifiLinkLayerStats;
    invoke-virtual {v1}, Landroid/os/Message;->recycle()V

    #@e
    .line 2068
    return-object v0
.end method

.method public syncGetMatchingWifiConfig(Landroid/net/wifi/ScanResult;Lcom/android/internal/util/AsyncChannel;)Landroid/net/wifi/WifiConfiguration;
    .locals 2
    .param p1, "scanResult"    # Landroid/net/wifi/ScanResult;
    .param p2, "channel"    # Lcom/android/internal/util/AsyncChannel;

    #@0
    .prologue
    .line 2032
    const v1, 0x20063

    #@3
    invoke-virtual {p2, v1, p1}, Lcom/android/internal/util/AsyncChannel;->sendMessageSynchronously(ILjava/lang/Object;)Landroid/os/Message;

    #@6
    move-result-object v0

    #@7
    .line 2033
    .local v0, "resultMsg":Landroid/os/Message;
    iget-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@9
    check-cast v1, Landroid/net/wifi/WifiConfiguration;

    #@b
    return-object v1
.end method

.method public syncGetPrivilegedConfiguredNetwork(Lcom/android/internal/util/AsyncChannel;)Ljava/util/List;
    .locals 3
    .param p1, "channel"    # Lcom/android/internal/util/AsyncChannel;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/util/AsyncChannel;",
            ")",
            "Ljava/util/List",
            "<",
            "Landroid/net/wifi/WifiConfiguration;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 2025
    const v2, 0x2003e

    #@3
    .line 2024
    invoke-virtual {p1, v2}, Lcom/android/internal/util/AsyncChannel;->sendMessageSynchronously(I)Landroid/os/Message;

    #@6
    move-result-object v1

    #@7
    .line 2026
    .local v1, "resultMsg":Landroid/os/Message;
    iget-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@9
    check-cast v0, Ljava/util/List;

    #@b
    .line 2027
    .local v0, "result":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/WifiConfiguration;>;"
    invoke-virtual {v1}, Landroid/os/Message;->recycle()V

    #@e
    .line 2028
    return-object v0
.end method

.method public syncGetScanResultsList()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/net/wifi/ScanResult;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 1903
    iget-object v4, p0, Lcom/android/server/wifi/WifiStateMachine;->mScanResultsLock:Ljava/lang/Object;

    #@2
    monitor-enter v4

    #@3
    .line 1904
    :try_start_0
    new-instance v2, Ljava/util/ArrayList;

    #@5
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    #@8
    .line 1905
    .local v2, "scanList":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/ScanResult;>;"
    iget-object v3, p0, Lcom/android/server/wifi/WifiStateMachine;->mScanResults:Ljava/util/List;

    #@a
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@d
    move-result-object v1

    #@e
    .local v1, "result$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@11
    move-result v3

    #@12
    if-eqz v3, :cond_0

    #@14
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@17
    move-result-object v0

    #@18
    check-cast v0, Lcom/android/server/wifi/ScanDetail;

    #@1a
    .line 1906
    .local v0, "result":Lcom/android/server/wifi/ScanDetail;
    new-instance v3, Landroid/net/wifi/ScanResult;

    #@1c
    invoke-virtual {v0}, Lcom/android/server/wifi/ScanDetail;->getScanResult()Landroid/net/wifi/ScanResult;

    #@1f
    move-result-object v5

    #@20
    invoke-direct {v3, v5}, Landroid/net/wifi/ScanResult;-><init>(Landroid/net/wifi/ScanResult;)V

    #@23
    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@26
    goto :goto_0

    #@27
    .line 1903
    .end local v0    # "result":Lcom/android/server/wifi/ScanDetail;
    .end local v1    # "result$iterator":Ljava/util/Iterator;
    .end local v2    # "scanList":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/ScanResult;>;"
    :catchall_0
    move-exception v3

    #@28
    monitor-exit v4

    #@29
    throw v3

    #@2a
    .restart local v1    # "result$iterator":Ljava/util/Iterator;
    .restart local v2    # "scanList":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/ScanResult;>;"
    :cond_0
    monitor-exit v4

    #@2b
    .line 1908
    return-object v2
.end method

.method public syncGetSupportedFeatures(Lcom/android/internal/util/AsyncChannel;)I
    .locals 3
    .param p1, "channel"    # Lcom/android/internal/util/AsyncChannel;

    #@0
    .prologue
    .line 2055
    const v2, 0x2003d

    #@3
    invoke-virtual {p1, v2}, Lcom/android/internal/util/AsyncChannel;->sendMessageSynchronously(I)Landroid/os/Message;

    #@6
    move-result-object v0

    #@7
    .line 2056
    .local v0, "resultMsg":Landroid/os/Message;
    iget v1, v0, Landroid/os/Message;->arg1:I

    #@9
    .line 2057
    .local v1, "supportedFeatureSet":I
    invoke-virtual {v0}, Landroid/os/Message;->recycle()V

    #@c
    .line 2058
    return v1
.end method

.method public syncGetWifiApConfiguration()Landroid/net/wifi/WifiConfiguration;
    .locals 1

    #@0
    .prologue
    .line 1764
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiApConfigStore:Lcom/android/server/wifi/WifiApConfigStore;

    #@2
    invoke-virtual {v0}, Lcom/android/server/wifi/WifiApConfigStore;->getApConfiguration()Landroid/net/wifi/WifiConfiguration;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public syncGetWifiApState()I
    .locals 1

    #@0
    .prologue
    .line 1798
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiApState:Ljava/util/concurrent/atomic/AtomicInteger;

    #@2
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public syncGetWifiApStateByName()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 1805
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiApState:Ljava/util/concurrent/atomic/AtomicInteger;

    #@2
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    #@5
    move-result v0

    #@6
    packed-switch v0, :pswitch_data_0

    #@9
    .line 1817
    const-string/jumbo v0, "[invalid state]"

    #@c
    return-object v0

    #@d
    .line 1807
    :pswitch_0
    const-string/jumbo v0, "disabling"

    #@10
    return-object v0

    #@11
    .line 1809
    :pswitch_1
    const-string/jumbo v0, "disabled"

    #@14
    return-object v0

    #@15
    .line 1811
    :pswitch_2
    const-string/jumbo v0, "enabling"

    #@18
    return-object v0

    #@19
    .line 1813
    :pswitch_3
    const-string/jumbo v0, "enabled"

    #@1c
    return-object v0

    #@1d
    .line 1815
    :pswitch_4
    const-string/jumbo v0, "failed"

    #@20
    return-object v0

    #@21
    .line 1805
    nop

    #@22
    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public syncGetWifiState()I
    .locals 1

    #@0
    .prologue
    .line 1771
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiState:Ljava/util/concurrent/atomic/AtomicInteger;

    #@2
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public syncGetWifiStateByName()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 1778
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiState:Ljava/util/concurrent/atomic/AtomicInteger;

    #@2
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    #@5
    move-result v0

    #@6
    packed-switch v0, :pswitch_data_0

    #@9
    .line 1790
    const-string/jumbo v0, "[invalid state]"

    #@c
    return-object v0

    #@d
    .line 1780
    :pswitch_0
    const-string/jumbo v0, "disabling"

    #@10
    return-object v0

    #@11
    .line 1782
    :pswitch_1
    const-string/jumbo v0, "disabled"

    #@14
    return-object v0

    #@15
    .line 1784
    :pswitch_2
    const-string/jumbo v0, "enabling"

    #@18
    return-object v0

    #@19
    .line 1786
    :pswitch_3
    const-string/jumbo v0, "enabled"

    #@1c
    return-object v0

    #@1d
    .line 1788
    :pswitch_4
    const-string/jumbo v0, "unknown state"

    #@20
    return-object v0

    #@21
    .line 1778
    nop

    #@22
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public syncGetWpsNfcConfigurationToken(I)Ljava/lang/String;
    .locals 1
    .param p1, "netId"    # I

    #@0
    .prologue
    .line 2117
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    #@2
    invoke-virtual {v0, p1}, Lcom/android/server/wifi/WifiNative;->getNfcWpsConfigurationToken(I)Ljava/lang/String;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public syncModifyPasspointManagementObject(Lcom/android/internal/util/AsyncChannel;Ljava/lang/String;Ljava/util/List;)I
    .locals 4
    .param p1, "channel"    # Lcom/android/internal/util/AsyncChannel;
    .param p2, "fqdn"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/util/AsyncChannel;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Landroid/net/wifi/PasspointManagementObjectDefinition;",
            ">;)I"
        }
    .end annotation

    #@0
    .prologue
    .line 1923
    .local p3, "managementObjectDefinitions":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/PasspointManagementObjectDefinition;>;"
    new-instance v0, Landroid/os/Bundle;

    #@2
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    #@5
    .line 1924
    .local v0, "bundle":Landroid/os/Bundle;
    const-string/jumbo v3, "FQDN"

    #@8
    invoke-virtual {v0, v3, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    #@b
    .line 1925
    const-string/jumbo v3, "MOS"

    #@e
    invoke-virtual {v0, v3, p3}, Landroid/os/Bundle;->putParcelableList(Ljava/lang/String;Ljava/util/List;)V

    #@11
    .line 1926
    const v3, 0x20067

    #@14
    invoke-virtual {p1, v3, v0}, Lcom/android/internal/util/AsyncChannel;->sendMessageSynchronously(ILjava/lang/Object;)Landroid/os/Message;

    #@17
    move-result-object v2

    #@18
    .line 1927
    .local v2, "resultMsg":Landroid/os/Message;
    iget v1, v2, Landroid/os/Message;->arg1:I

    #@1a
    .line 1928
    .local v1, "result":I
    invoke-virtual {v2}, Landroid/os/Message;->recycle()V

    #@1d
    .line 1929
    return v1
.end method

.method public syncPingSupplicant(Lcom/android/internal/util/AsyncChannel;)Z
    .locals 4
    .param p1, "channel"    # Lcom/android/internal/util/AsyncChannel;

    #@0
    .prologue
    .line 1430
    const v2, 0x20033

    #@3
    invoke-virtual {p1, v2}, Lcom/android/internal/util/AsyncChannel;->sendMessageSynchronously(I)Landroid/os/Message;

    #@6
    move-result-object v1

    #@7
    .line 1431
    .local v1, "resultMsg":Landroid/os/Message;
    iget v2, v1, Landroid/os/Message;->arg1:I

    #@9
    const/4 v3, -0x1

    #@a
    if-eq v2, v3, :cond_0

    #@c
    const/4 v0, 0x1

    #@d
    .line 1432
    .local v0, "result":Z
    :goto_0
    invoke-virtual {v1}, Landroid/os/Message;->recycle()V

    #@10
    .line 1433
    return v0

    #@11
    .line 1431
    .end local v0    # "result":Z
    :cond_0
    const/4 v0, 0x0

    #@12
    .restart local v0    # "result":Z
    goto :goto_0
.end method

.method public syncQueryPasspointIcon(Lcom/android/internal/util/AsyncChannel;JLjava/lang/String;)Z
    .locals 6
    .param p1, "channel"    # Lcom/android/internal/util/AsyncChannel;
    .param p2, "bssid"    # J
    .param p4, "fileName"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v3, 0x1

    #@1
    .line 1933
    new-instance v0, Landroid/os/Bundle;

    #@3
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    #@6
    .line 1934
    .local v0, "bundle":Landroid/os/Bundle;
    const-string/jumbo v4, "BSSID"

    #@9
    invoke-virtual {v0, v4, p2, p3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    #@c
    .line 1935
    const-string/jumbo v4, "FILENAME"

    #@f
    invoke-virtual {v0, v4, p4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    #@12
    .line 1936
    const v4, 0x20068

    #@15
    invoke-virtual {p1, v4, v0}, Lcom/android/internal/util/AsyncChannel;->sendMessageSynchronously(ILjava/lang/Object;)Landroid/os/Message;

    #@18
    move-result-object v2

    #@19
    .line 1937
    .local v2, "resultMsg":Landroid/os/Message;
    iget v1, v2, Landroid/os/Message;->arg1:I

    #@1b
    .line 1938
    .local v1, "result":I
    invoke-virtual {v2}, Landroid/os/Message;->recycle()V

    #@1e
    .line 1939
    if-ne v1, v3, :cond_0

    #@20
    :goto_0
    return v3

    #@21
    :cond_0
    const/4 v3, 0x0

    #@22
    goto :goto_0
.end method

.method public syncRemoveNetwork(Lcom/android/internal/util/AsyncChannel;I)Z
    .locals 4
    .param p1, "channel"    # Lcom/android/internal/util/AsyncChannel;
    .param p2, "networkId"    # I

    #@0
    .prologue
    .line 2077
    const v2, 0x20035

    #@3
    invoke-virtual {p1, v2, p2}, Lcom/android/internal/util/AsyncChannel;->sendMessageSynchronously(II)Landroid/os/Message;

    #@6
    move-result-object v1

    #@7
    .line 2078
    .local v1, "resultMsg":Landroid/os/Message;
    iget v2, v1, Landroid/os/Message;->arg1:I

    #@9
    const/4 v3, -0x1

    #@a
    if-eq v2, v3, :cond_0

    #@c
    const/4 v0, 0x1

    #@d
    .line 2079
    .local v0, "result":Z
    :goto_0
    invoke-virtual {v1}, Landroid/os/Message;->recycle()V

    #@10
    .line 2080
    return v0

    #@11
    .line 2078
    .end local v0    # "result":Z
    :cond_0
    const/4 v0, 0x0

    #@12
    .restart local v0    # "result":Z
    goto :goto_0
.end method

.method public syncRequestConnectionInfo()Landroid/net/wifi/WifiInfo;
    .locals 1

    #@0
    .prologue
    .line 1859
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    #@3
    move-result v0

    #@4
    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiStateMachine;->getWiFiInfoForUid(I)Landroid/net/wifi/WifiInfo;

    #@7
    move-result-object v0

    #@8
    return-object v0
.end method

.method public syncSaveConfig(Lcom/android/internal/util/AsyncChannel;)Z
    .locals 4
    .param p1, "channel"    # Lcom/android/internal/util/AsyncChannel;

    #@0
    .prologue
    .line 2261
    const v2, 0x2003a

    #@3
    invoke-virtual {p1, v2}, Lcom/android/internal/util/AsyncChannel;->sendMessageSynchronously(I)Landroid/os/Message;

    #@6
    move-result-object v1

    #@7
    .line 2262
    .local v1, "resultMsg":Landroid/os/Message;
    iget v2, v1, Landroid/os/Message;->arg1:I

    #@9
    const/4 v3, -0x1

    #@a
    if-eq v2, v3, :cond_0

    #@c
    const/4 v0, 0x1

    #@d
    .line 2263
    .local v0, "result":Z
    :goto_0
    invoke-virtual {v1}, Landroid/os/Message;->recycle()V

    #@10
    .line 2264
    return v0

    #@11
    .line 2262
    .end local v0    # "result":Z
    :cond_0
    const/4 v0, 0x0

    #@12
    .restart local v0    # "result":Z
    goto :goto_0
.end method

.method unwantedNetwork(I)V
    .locals 1
    .param p1, "reason"    # I

    #@0
    .prologue
    .line 6408
    const v0, 0x20090

    #@3
    invoke-virtual {p0, v0, p1}, Lcom/android/server/wifi/WifiStateMachine;->sendMessage(II)V

    #@6
    .line 6407
    return-void
.end method

.method updateAssociatedScanPermission()V
    .locals 0

    #@0
    .prologue
    .line 1364
    return-void
.end method

.method public updateBatteryWorkSource(Landroid/os/WorkSource;)V
    .locals 5
    .param p1, "newSource"    # Landroid/os/WorkSource;

    #@0
    .prologue
    .line 2268
    iget-object v2, p0, Lcom/android/server/wifi/WifiStateMachine;->mRunningWifiUids:Landroid/os/WorkSource;

    #@2
    monitor-enter v2

    #@3
    .line 2270
    if-eqz p1, :cond_0

    #@5
    .line 2271
    :try_start_0
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine;->mRunningWifiUids:Landroid/os/WorkSource;

    #@7
    invoke-virtual {v1, p1}, Landroid/os/WorkSource;->set(Landroid/os/WorkSource;)V

    #@a
    .line 2273
    :cond_0
    iget-boolean v1, p0, Lcom/android/server/wifi/WifiStateMachine;->mIsRunning:Z

    #@c
    if-eqz v1, :cond_3

    #@e
    .line 2274
    iget-boolean v1, p0, Lcom/android/server/wifi/WifiStateMachine;->mReportedRunning:Z

    #@10
    if-eqz v1, :cond_2

    #@12
    .line 2277
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine;->mLastRunningWifiUids:Landroid/os/WorkSource;

    #@14
    iget-object v3, p0, Lcom/android/server/wifi/WifiStateMachine;->mRunningWifiUids:Landroid/os/WorkSource;

    #@16
    invoke-virtual {v1, v3}, Landroid/os/WorkSource;->diff(Landroid/os/WorkSource;)Z

    #@19
    move-result v1

    #@1a
    if-eqz v1, :cond_1

    #@1c
    .line 2278
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    #@1e
    iget-object v3, p0, Lcom/android/server/wifi/WifiStateMachine;->mLastRunningWifiUids:Landroid/os/WorkSource;

    #@20
    .line 2279
    iget-object v4, p0, Lcom/android/server/wifi/WifiStateMachine;->mRunningWifiUids:Landroid/os/WorkSource;

    #@22
    .line 2278
    invoke-interface {v1, v3, v4}, Lcom/android/internal/app/IBatteryStats;->noteWifiRunningChanged(Landroid/os/WorkSource;Landroid/os/WorkSource;)V

    #@25
    .line 2280
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine;->mLastRunningWifiUids:Landroid/os/WorkSource;

    #@27
    iget-object v3, p0, Lcom/android/server/wifi/WifiStateMachine;->mRunningWifiUids:Landroid/os/WorkSource;

    #@29
    invoke-virtual {v1, v3}, Landroid/os/WorkSource;->set(Landroid/os/WorkSource;)V

    #@2c
    .line 2296
    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    #@2e
    invoke-virtual {v1, p1}, Landroid/os/PowerManager$WakeLock;->setWorkSource(Landroid/os/WorkSource;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@31
    :goto_1
    monitor-exit v2

    #@32
    .line 2267
    return-void

    #@33
    .line 2284
    :cond_2
    :try_start_1
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    #@35
    iget-object v3, p0, Lcom/android/server/wifi/WifiStateMachine;->mRunningWifiUids:Landroid/os/WorkSource;

    #@37
    invoke-interface {v1, v3}, Lcom/android/internal/app/IBatteryStats;->noteWifiRunning(Landroid/os/WorkSource;)V

    #@3a
    .line 2285
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine;->mLastRunningWifiUids:Landroid/os/WorkSource;

    #@3c
    iget-object v3, p0, Lcom/android/server/wifi/WifiStateMachine;->mRunningWifiUids:Landroid/os/WorkSource;

    #@3e
    invoke-virtual {v1, v3}, Landroid/os/WorkSource;->set(Landroid/os/WorkSource;)V

    #@41
    .line 2286
    const/4 v1, 0x1

    #@42
    iput-boolean v1, p0, Lcom/android/server/wifi/WifiStateMachine;->mReportedRunning:Z

    #@44
    goto :goto_0

    #@45
    .line 2297
    :catch_0
    move-exception v0

    #@46
    .local v0, "ignore":Landroid/os/RemoteException;
    goto :goto_1

    #@47
    .line 2289
    .end local v0    # "ignore":Landroid/os/RemoteException;
    :cond_3
    iget-boolean v1, p0, Lcom/android/server/wifi/WifiStateMachine;->mReportedRunning:Z

    #@49
    if-eqz v1, :cond_1

    #@4b
    .line 2291
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    #@4d
    iget-object v3, p0, Lcom/android/server/wifi/WifiStateMachine;->mLastRunningWifiUids:Landroid/os/WorkSource;

    #@4f
    invoke-interface {v1, v3}, Lcom/android/internal/app/IBatteryStats;->noteWifiStopped(Landroid/os/WorkSource;)V

    #@52
    .line 2292
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine;->mLastRunningWifiUids:Landroid/os/WorkSource;

    #@54
    invoke-virtual {v1}, Landroid/os/WorkSource;->clear()V

    #@57
    .line 2293
    const/4 v1, 0x0

    #@58
    iput-boolean v1, p0, Lcom/android/server/wifi/WifiStateMachine;->mReportedRunning:Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@5a
    goto :goto_0

    #@5b
    .line 2268
    :catchall_0
    move-exception v1

    #@5c
    monitor-exit v2

    #@5d
    throw v1
.end method

.method updateLoggingLevel()V
    .locals 3

    #@0
    .prologue
    const/4 v1, 0x1

    #@1
    const/4 v2, 0x0

    #@2
    .line 1325
    iget v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mVerboseLoggingLevel:I

    #@4
    if-lez v0, :cond_2

    #@6
    .line 1326
    sput-boolean v1, Lcom/android/server/wifi/WifiStateMachine;->DBG:Z

    #@8
    .line 1327
    invoke-static {}, Landroid/app/ActivityManager;->isLowRamDeviceStatic()Z

    #@b
    move-result v0

    #@c
    if-eqz v0, :cond_1

    #@e
    .line 1328
    const/16 v0, 0xc8

    #@10
    .line 1327
    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/server/wifi/WifiStateMachine;->setLogRecSize(I)V

    #@13
    .line 1333
    :goto_1
    iget v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mVerboseLoggingLevel:I

    #@15
    if-lez v0, :cond_3

    #@17
    move v0, v1

    #@18
    :goto_2
    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiStateMachine;->configureVerboseHalLogging(Z)V

    #@1b
    .line 1334
    invoke-virtual {p0}, Lcom/android/server/wifi/WifiStateMachine;->setSupplicantLogLevel()V

    #@1e
    .line 1335
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mCountryCode:Lcom/android/server/wifi/WifiCountryCode;

    #@20
    iget v1, p0, Lcom/android/server/wifi/WifiStateMachine;->mVerboseLoggingLevel:I

    #@22
    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiCountryCode;->enableVerboseLogging(I)V

    #@25
    .line 1336
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiLogger:Lcom/android/server/wifi/BaseWifiLogger;

    #@27
    sget-boolean v1, Lcom/android/server/wifi/WifiStateMachine;->DBG:Z

    #@29
    invoke-virtual {v0, v1}, Lcom/android/server/wifi/BaseWifiLogger;->startLogging(Z)V

    #@2c
    .line 1337
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiMonitor:Lcom/android/server/wifi/WifiMonitor;

    #@2e
    iget v1, p0, Lcom/android/server/wifi/WifiStateMachine;->mVerboseLoggingLevel:I

    #@30
    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiMonitor;->enableVerboseLogging(I)V

    #@33
    .line 1338
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    #@35
    iget v1, p0, Lcom/android/server/wifi/WifiStateMachine;->mVerboseLoggingLevel:I

    #@37
    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiNative;->enableVerboseLogging(I)V

    #@3a
    .line 1339
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiConfigManager:Lcom/android/server/wifi/WifiConfigManager;

    #@3c
    iget v1, p0, Lcom/android/server/wifi/WifiStateMachine;->mVerboseLoggingLevel:I

    #@3e
    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiConfigManager;->enableVerboseLogging(I)V

    #@41
    .line 1340
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mSupplicantStateTracker:Lcom/android/server/wifi/SupplicantStateTracker;

    #@43
    iget v1, p0, Lcom/android/server/wifi/WifiStateMachine;->mVerboseLoggingLevel:I

    #@45
    invoke-virtual {v0, v1}, Lcom/android/server/wifi/SupplicantStateTracker;->enableVerboseLogging(I)V

    #@48
    .line 1341
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiQualifiedNetworkSelector:Lcom/android/server/wifi/WifiQualifiedNetworkSelector;

    #@4a
    iget v1, p0, Lcom/android/server/wifi/WifiStateMachine;->mVerboseLoggingLevel:I

    #@4c
    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiQualifiedNetworkSelector;->enableVerboseLogging(I)V

    #@4f
    .line 1342
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiConnectivityManager:Lcom/android/server/wifi/WifiConnectivityManager;

    #@51
    if-eqz v0, :cond_0

    #@53
    .line 1343
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiConnectivityManager:Lcom/android/server/wifi/WifiConnectivityManager;

    #@55
    iget v1, p0, Lcom/android/server/wifi/WifiStateMachine;->mVerboseLoggingLevel:I

    #@57
    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiConnectivityManager;->enableVerboseLogging(I)V

    #@5a
    .line 1324
    :cond_0
    return-void

    #@5b
    .line 1328
    :cond_1
    const/16 v0, 0xbb8

    #@5d
    goto :goto_0

    #@5e
    .line 1330
    :cond_2
    sput-boolean v2, Lcom/android/server/wifi/WifiStateMachine;->DBG:Z

    #@60
    .line 1331
    const/16 v0, 0x64

    #@62
    invoke-virtual {p0, v0}, Lcom/android/server/wifi/WifiStateMachine;->setLogRecSize(I)V

    #@65
    goto :goto_1

    #@66
    :cond_3
    move v0, v2

    #@67
    .line 1333
    goto :goto_2
.end method

.method updateWifiMetrics()V
    .locals 12

    #@0
    .prologue
    .line 8179
    iget-object v10, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiConfigManager:Lcom/android/server/wifi/WifiConfigManager;

    #@2
    invoke-virtual {v10}, Lcom/android/server/wifi/WifiConfigManager;->getConfiguredNetworksSize()I

    #@5
    move-result v9

    #@6
    .line 8180
    .local v9, "numSavedNetworks":I
    const/4 v6, 0x0

    #@7
    .line 8181
    .local v6, "numOpenNetworks":I
    const/4 v8, 0x0

    #@8
    .line 8182
    .local v8, "numPersonalNetworks":I
    const/4 v2, 0x0

    #@9
    .line 8183
    .local v2, "numEnterpriseNetworks":I
    const/4 v5, 0x0

    #@a
    .line 8184
    .local v5, "numNetworksAddedByUser":I
    const/4 v4, 0x0

    #@b
    .line 8185
    .local v4, "numNetworksAddedByApps":I
    const/4 v3, 0x0

    #@c
    .line 8186
    .local v3, "numHiddenNetworks":I
    const/4 v7, 0x0

    #@d
    .line 8187
    .local v7, "numPasspoint":I
    iget-object v10, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiConfigManager:Lcom/android/server/wifi/WifiConfigManager;

    #@f
    invoke-virtual {v10}, Lcom/android/server/wifi/WifiConfigManager;->getSavedNetworks()Ljava/util/List;

    #@12
    move-result-object v10

    #@13
    invoke-interface {v10}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@16
    move-result-object v1

    #@17
    .local v1, "config$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@1a
    move-result v10

    #@1b
    if-eqz v10, :cond_5

    #@1d
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@20
    move-result-object v0

    #@21
    check-cast v0, Landroid/net/wifi/WifiConfiguration;

    #@23
    .line 8188
    .local v0, "config":Landroid/net/wifi/WifiConfiguration;
    iget-object v10, v0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    #@25
    const/4 v11, 0x0

    #@26
    invoke-virtual {v10, v11}, Ljava/util/BitSet;->get(I)Z

    #@29
    move-result v10

    #@2a
    if-eqz v10, :cond_2

    #@2c
    .line 8189
    add-int/lit8 v6, v6, 0x1

    #@2e
    .line 8195
    :goto_1
    iget-boolean v10, v0, Landroid/net/wifi/WifiConfiguration;->selfAdded:Z

    #@30
    if-eqz v10, :cond_4

    #@32
    .line 8196
    add-int/lit8 v5, v5, 0x1

    #@34
    .line 8200
    :goto_2
    iget-boolean v10, v0, Landroid/net/wifi/WifiConfiguration;->hiddenSSID:Z

    #@36
    if-eqz v10, :cond_1

    #@38
    .line 8201
    add-int/lit8 v3, v3, 0x1

    #@3a
    .line 8203
    :cond_1
    invoke-virtual {v0}, Landroid/net/wifi/WifiConfiguration;->isPasspoint()Z

    #@3d
    move-result v10

    #@3e
    if-eqz v10, :cond_0

    #@40
    .line 8204
    add-int/lit8 v7, v7, 0x1

    #@42
    goto :goto_0

    #@43
    .line 8190
    :cond_2
    invoke-virtual {v0}, Landroid/net/wifi/WifiConfiguration;->isEnterprise()Z

    #@46
    move-result v10

    #@47
    if-eqz v10, :cond_3

    #@49
    .line 8191
    add-int/lit8 v2, v2, 0x1

    #@4b
    goto :goto_1

    #@4c
    .line 8193
    :cond_3
    add-int/lit8 v8, v8, 0x1

    #@4e
    goto :goto_1

    #@4f
    .line 8198
    :cond_4
    add-int/lit8 v4, v4, 0x1

    #@51
    goto :goto_2

    #@52
    .line 8207
    .end local v0    # "config":Landroid/net/wifi/WifiConfiguration;
    :cond_5
    iget-object v10, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiMetrics:Lcom/android/server/wifi/WifiMetrics;

    #@54
    invoke-virtual {v10, v9}, Lcom/android/server/wifi/WifiMetrics;->setNumSavedNetworks(I)V

    #@57
    .line 8208
    iget-object v10, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiMetrics:Lcom/android/server/wifi/WifiMetrics;

    #@59
    invoke-virtual {v10, v6}, Lcom/android/server/wifi/WifiMetrics;->setNumOpenNetworks(I)V

    #@5c
    .line 8209
    iget-object v10, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiMetrics:Lcom/android/server/wifi/WifiMetrics;

    #@5e
    invoke-virtual {v10, v8}, Lcom/android/server/wifi/WifiMetrics;->setNumPersonalNetworks(I)V

    #@61
    .line 8210
    iget-object v10, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiMetrics:Lcom/android/server/wifi/WifiMetrics;

    #@63
    invoke-virtual {v10, v2}, Lcom/android/server/wifi/WifiMetrics;->setNumEnterpriseNetworks(I)V

    #@66
    .line 8211
    iget-object v10, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiMetrics:Lcom/android/server/wifi/WifiMetrics;

    #@68
    invoke-virtual {v10, v5}, Lcom/android/server/wifi/WifiMetrics;->setNumNetworksAddedByUser(I)V

    #@6b
    .line 8212
    iget-object v10, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiMetrics:Lcom/android/server/wifi/WifiMetrics;

    #@6d
    invoke-virtual {v10, v4}, Lcom/android/server/wifi/WifiMetrics;->setNumNetworksAddedByApps(I)V

    #@70
    .line 8213
    iget-object v10, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiMetrics:Lcom/android/server/wifi/WifiMetrics;

    #@72
    invoke-virtual {v10, v3}, Lcom/android/server/wifi/WifiMetrics;->setNumHiddenNetworks(I)V

    #@75
    .line 8214
    iget-object v10, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiMetrics:Lcom/android/server/wifi/WifiMetrics;

    #@77
    invoke-virtual {v10, v7}, Lcom/android/server/wifi/WifiMetrics;->setNumPasspointNetworks(I)V

    #@7a
    .line 8178
    return-void
.end method
