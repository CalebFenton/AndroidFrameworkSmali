.class public Lcom/android/server/ConnectivityService;
.super Landroid/net/IConnectivityManager$Stub;
.source "ConnectivityService.java"

# interfaces
.implements Landroid/app/PendingIntent$OnFinished;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/ConnectivityService$-void__init__android_content_Context_context_android_os_INetworkManagementService_netManager_android_net_INetworkStatsService_statsService_android_net_INetworkPolicyManager_policyManager_android_net_metrics_IpConnectivityLog_logger_LambdaImpl0;,
        Lcom/android/server/ConnectivityService$1;,
        Lcom/android/server/ConnectivityService$2;,
        Lcom/android/server/ConnectivityService$3;,
        Lcom/android/server/ConnectivityService$InternalHandler;,
        Lcom/android/server/ConnectivityService$LegacyTypeTracker;,
        Lcom/android/server/ConnectivityService$NetworkFactoryInfo;,
        Lcom/android/server/ConnectivityService$NetworkRequestInfo;,
        Lcom/android/server/ConnectivityService$NetworkStateTrackerHandler;,
        Lcom/android/server/ConnectivityService$ReapUnvalidatedNetworks;,
        Lcom/android/server/ConnectivityService$SettingsObserver;,
        Lcom/android/server/ConnectivityService$UnneededFor;,
        Lcom/android/server/ConnectivityService$ValidationLog;
    }
.end annotation


# static fields
.field private static final synthetic -com-android-server-ConnectivityService$UnneededForSwitchesValues:[I = null

.field private static final synthetic -com-android-server-connectivity-NetworkNotificationManager$NotificationTypeSwitchesValues:[I = null

.field private static final ATTR_MCC:Ljava/lang/String; = "mcc"

.field private static final ATTR_MNC:Ljava/lang/String; = "mnc"

.field private static final DBG:Z = true

.field private static final DEFAULT_LINGER_DELAY_MS:I = 0x7530

.field private static final DEFAULT_TCP_BUFFER_SIZES:Ljava/lang/String; = "4096,87380,110208,4096,16384,110208"

.field private static final DEFAULT_TCP_RWND_KEY:Ljava/lang/String; = "net.tcp.default_init_rwnd"

.field private static final DISABLED:I = 0x0

.field private static final ENABLED:I = 0x1

.field private static final EVENT_APPLY_GLOBAL_HTTP_PROXY:I = 0x9

.field private static final EVENT_CHANGE_MOBILE_DATA_ENABLED:I = 0x2

.field private static final EVENT_CLEAR_NET_TRANSITION_WAKELOCK:I = 0x8

.field private static final EVENT_CONFIGURE_MOBILE_DATA_ALWAYS_ON:I = 0x1e

.field private static final EVENT_EXPIRE_NET_TRANSITION_WAKELOCK:I = 0x18

.field private static final EVENT_PROMPT_UNVALIDATED:I = 0x1d

.field private static final EVENT_PROXY_HAS_CHANGED:I = 0x10

.field private static final EVENT_REGISTER_NETWORK_AGENT:I = 0x12

.field private static final EVENT_REGISTER_NETWORK_FACTORY:I = 0x11

.field private static final EVENT_REGISTER_NETWORK_LISTENER:I = 0x15

.field private static final EVENT_REGISTER_NETWORK_LISTENER_WITH_INTENT:I = 0x1f

.field private static final EVENT_REGISTER_NETWORK_REQUEST:I = 0x13

.field private static final EVENT_REGISTER_NETWORK_REQUEST_WITH_INTENT:I = 0x1a

.field private static final EVENT_RELEASE_NETWORK_REQUEST:I = 0x16

.field private static final EVENT_RELEASE_NETWORK_REQUEST_WITH_INTENT:I = 0x1b

.field private static final EVENT_REQUEST_LINKPROPERTIES:I = 0x20

.field private static final EVENT_REQUEST_NETCAPABILITIES:I = 0x21

.field private static final EVENT_SET_ACCEPT_UNVALIDATED:I = 0x1c

.field private static final EVENT_SET_AVOID_UNVALIDATED:I = 0x23

.field private static final EVENT_SYSTEM_READY:I = 0x19

.field private static final EVENT_TIMEOUT_NETWORK_REQUEST:I = 0x14

.field private static final EVENT_UNREGISTER_NETWORK_FACTORY:I = 0x17

.field private static final INET_CONDITION_LOG_MAX_SIZE:I = 0xf

.field private static final LINGER_DELAY_PROPERTY:Ljava/lang/String; = "persist.netmon.linger"

.field private static final LOGD_BLOCKED_NETWORKINFO:Z = true

.field private static final LOGD_RULES:Z = false

.field private static final MAX_NETWORK_INFO_LOGS:I = 0x64

.field private static final MAX_NETWORK_REQUESTS_PER_UID:I = 0x64

.field private static final MAX_NETWORK_REQUEST_LOGS:I = 0x14

.field private static final MAX_NET_ID:I = 0xffff

.field private static final MAX_VALIDATION_LOGS:I = 0xa

.field private static final MIN_NET_ID:I = 0x64

.field private static final NETWORK_RESTORE_DELAY_PROP_NAME:Ljava/lang/String; = "android.telephony.apn-restore"

.field private static final PROMPT_UNVALIDATED_DELAY_MS:I = 0x1f40

.field private static final PROVISIONING_URL_PATH:Ljava/lang/String; = "/data/misc/radio/provisioning_urls.xml"

.field private static final RESTORE_DEFAULT_NETWORK_DELAY:I = 0xea60

.field private static final TAG:Ljava/lang/String;

.field private static final TAG_PROVISIONING_URL:Ljava/lang/String; = "provisioningUrl"

.field private static final TAG_PROVISIONING_URLS:Ljava/lang/String; = "provisioningUrls"

.field private static final VDBG:Z

.field private static final sMagicDecoderRing:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static sServiceInstance:Lcom/android/server/ConnectivityService;


# instance fields
.field final mAvoidBadWifiTracker:Landroid/net/util/AvoidBadWifiTracker;

.field private final mBlockedAppUids:Ljava/util/HashSet;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mBlockedAppUids"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mContext:Landroid/content/Context;

.field private mCurrentTcpBufferSizes:Ljava/lang/String;

.field private mDataActivityObserver:Landroid/net/INetworkManagementEventObserver;

.field private mDataConnectionStats:Lcom/android/server/connectivity/DataConnectionStats;

.field private mDefaultInetConditionPublished:I

.field private final mDefaultMobileDataRequest:Landroid/net/NetworkRequest;

.field private volatile mDefaultProxy:Landroid/net/ProxyInfo;

.field private mDefaultProxyDisabled:Z

.field private final mDefaultRequest:Landroid/net/NetworkRequest;

.field private mGlobalProxy:Landroid/net/ProxyInfo;

.field private final mHandler:Lcom/android/server/ConnectivityService$InternalHandler;

.field protected final mHandlerThread:Landroid/os/HandlerThread;

.field private mInetLog:Ljava/util/ArrayList;

.field private mInitialBroadcast:Landroid/content/Intent;

.field private mKeepaliveTracker:Lcom/android/server/connectivity/KeepaliveTracker;

.field private mKeyStore:Landroid/security/KeyStore;

.field private mLegacyTypeTracker:Lcom/android/server/ConnectivityService$LegacyTypeTracker;

.field protected mLingerDelayMs:I

.field private mLingerMonitor:Lcom/android/server/connectivity/LingerMonitor;

.field private mLockdownEnabled:Z

.field private mLockdownTracker:Lcom/android/server/net/LockdownVpnTracker;

.field private mMeteredIfaces:Landroid/util/ArraySet;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mRulesLock"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mMetricsLog:Landroid/net/metrics/IpConnectivityLog;

.field mNetConfigs:[Landroid/net/NetworkConfig;

.field private final mNetIdInUse:Landroid/util/SparseBooleanArray;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mNetworkForNetId"
    .end annotation
.end field

.field private mNetTransitionWakeLock:Landroid/os/PowerManager$WakeLock;

.field private mNetTransitionWakeLockCausedBy:Ljava/lang/String;

.field private mNetTransitionWakeLockSerialNumber:I

.field private mNetTransitionWakeLockTimeout:I

.field private mNetd:Landroid/os/INetworkManagementService;

.field private final mNetworkAgentInfos:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/os/Messenger;",
            "Lcom/android/server/connectivity/NetworkAgentInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final mNetworkFactoryInfos:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/os/Messenger;",
            "Lcom/android/server/ConnectivityService$NetworkFactoryInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final mNetworkForNetId:Landroid/util/SparseArray;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mNetworkForNetId"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/android/server/connectivity/NetworkAgentInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final mNetworkForRequestId:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/android/server/connectivity/NetworkAgentInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final mNetworkInfoBlockingLogs:Landroid/util/LocalLog;

.field private mNetworkPreference:I

.field private final mNetworkRequestInfoLogs:Landroid/util/LocalLog;

.field private final mNetworkRequests:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/net/NetworkRequest;",
            "Lcom/android/server/ConnectivityService$NetworkRequestInfo;",
            ">;"
        }
    .end annotation
.end field

.field mNetworksDefined:I

.field private mNextNetId:I

.field private mNextNetworkRequestId:I

.field private mNotifier:Lcom/android/server/connectivity/NetworkNotificationManager;

.field private mNumDnsEntries:I

.field private mPacManager:Lcom/android/server/connectivity/PacManager;

.field private final mPendingIntentWakeLock:Landroid/os/PowerManager$WakeLock;

.field private final mPermissionMonitor:Lcom/android/server/connectivity/PermissionMonitor;

.field private mPolicyListener:Landroid/net/INetworkPolicyListener;

.field private mPolicyManager:Landroid/net/INetworkPolicyManager;

.field mProtectedNetworks:Ljava/util/List;

.field private final mProvisioningUrlFile:Ljava/io/File;

.field private mProxyLock:Ljava/lang/Object;

.field private final mReleasePendingIntentDelayMs:I

.field private mRestrictBackground:Z
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mRulesLock"
    .end annotation
.end field

.field private mRulesLock:Ljava/lang/Object;

.field private final mSettingsObserver:Lcom/android/server/ConnectivityService$SettingsObserver;

.field private mStatsService:Landroid/net/INetworkStatsService;

.field private mSystemReady:Z

.field mTelephonyManager:Landroid/telephony/TelephonyManager;

.field private mTestMode:Z

.field private mTethering:Lcom/android/server/connectivity/Tethering;

.field private final mTrackerHandler:Lcom/android/server/ConnectivityService$NetworkStateTrackerHandler;

.field private mUidRules:Landroid/util/SparseIntArray;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mRulesLock"
    .end annotation
.end field

.field private final mUidToNetworkRequestCount:Landroid/util/SparseIntArray;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mUidToNetworkRequestCount"
    .end annotation
.end field

.field private mUserIntentReceiver:Landroid/content/BroadcastReceiver;

.field private mUserManager:Landroid/os/UserManager;

.field private final mValidationLogs:Ljava/util/ArrayDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayDeque",
            "<",
            "Lcom/android/server/ConnectivityService$ValidationLog;",
            ">;"
        }
    .end annotation
.end field

.field private final mVpns:Landroid/util/SparseArray;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mVpns"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/android/server/connectivity/Vpn;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static synthetic -get0()Ljava/lang/String;
    .locals 1

    #@0
    sget-object v0, Lcom/android/server/ConnectivityService;->TAG:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method static synthetic -get1(Lcom/android/server/ConnectivityService;)Lcom/android/server/connectivity/KeepaliveTracker;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mKeepaliveTracker:Lcom/android/server/connectivity/KeepaliveTracker;

    #@2
    return-object v0
.end method

.method static synthetic -get10(Lcom/android/server/ConnectivityService;)Ljava/lang/Object;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mRulesLock:Ljava/lang/Object;

    #@2
    return-object v0
.end method

.method static synthetic -get11(Lcom/android/server/ConnectivityService;)Lcom/android/server/connectivity/Tethering;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mTethering:Lcom/android/server/connectivity/Tethering;

    #@2
    return-object v0
.end method

.method static synthetic -get12(Lcom/android/server/ConnectivityService;)Landroid/util/SparseIntArray;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mUidRules:Landroid/util/SparseIntArray;

    #@2
    return-object v0
.end method

.method static synthetic -get13(Lcom/android/server/ConnectivityService;)Landroid/util/SparseIntArray;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mUidToNetworkRequestCount:Landroid/util/SparseIntArray;

    #@2
    return-object v0
.end method

.method static synthetic -get2(Lcom/android/server/ConnectivityService;)Landroid/util/ArraySet;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mMeteredIfaces:Landroid/util/ArraySet;

    #@2
    return-object v0
.end method

.method static synthetic -get3(Lcom/android/server/ConnectivityService;)Landroid/os/PowerManager$WakeLock;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mNetTransitionWakeLock:Landroid/os/PowerManager$WakeLock;

    #@2
    return-object v0
.end method

.method static synthetic -get4(Lcom/android/server/ConnectivityService;)Ljava/lang/String;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mNetTransitionWakeLockCausedBy:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method static synthetic -get5(Lcom/android/server/ConnectivityService;)I
    .locals 1

    #@0
    iget v0, p0, Lcom/android/server/ConnectivityService;->mNetTransitionWakeLockSerialNumber:I

    #@2
    return v0
.end method

.method static synthetic -get6(Lcom/android/server/ConnectivityService;)Landroid/os/INetworkManagementService;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mNetd:Landroid/os/INetworkManagementService;

    #@2
    return-object v0
.end method

.method static synthetic -get7(Lcom/android/server/ConnectivityService;)Ljava/util/HashMap;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mNetworkAgentInfos:Ljava/util/HashMap;

    #@2
    return-object v0
.end method

.method static synthetic -get8(Lcom/android/server/ConnectivityService;)Landroid/util/SparseArray;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mNetworkForNetId:Landroid/util/SparseArray;

    #@2
    return-object v0
.end method

.method static synthetic -get9(Lcom/android/server/ConnectivityService;)Lcom/android/server/connectivity/NetworkNotificationManager;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mNotifier:Lcom/android/server/connectivity/NetworkNotificationManager;

    #@2
    return-object v0
.end method

.method private static synthetic -getcom-android-server-ConnectivityService$UnneededForSwitchesValues()[I
    .locals 3

    #@0
    sget-object v0, Lcom/android/server/ConnectivityService;->-com-android-server-ConnectivityService$UnneededForSwitchesValues:[I

    #@2
    if-eqz v0, :cond_0

    #@4
    sget-object v0, Lcom/android/server/ConnectivityService;->-com-android-server-ConnectivityService$UnneededForSwitchesValues:[I

    #@6
    return-object v0

    #@7
    :cond_0
    invoke-static {}, Lcom/android/server/ConnectivityService$UnneededFor;->values()[Lcom/android/server/ConnectivityService$UnneededFor;

    #@a
    move-result-object v0

    #@b
    array-length v0, v0

    #@c
    new-array v0, v0, [I

    #@e
    :try_start_0
    sget-object v1, Lcom/android/server/ConnectivityService$UnneededFor;->LINGER:Lcom/android/server/ConnectivityService$UnneededFor;

    #@10
    invoke-virtual {v1}, Lcom/android/server/ConnectivityService$UnneededFor;->ordinal()I

    #@13
    move-result v1

    #@14
    const/4 v2, 0x1

    #@15
    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_1

    #@17
    :goto_0
    :try_start_1
    sget-object v1, Lcom/android/server/ConnectivityService$UnneededFor;->TEARDOWN:Lcom/android/server/ConnectivityService$UnneededFor;

    #@19
    invoke-virtual {v1}, Lcom/android/server/ConnectivityService$UnneededFor;->ordinal()I

    #@1c
    move-result v1

    #@1d
    const/4 v2, 0x2

    #@1e
    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_0

    #@20
    :goto_1
    sput-object v0, Lcom/android/server/ConnectivityService;->-com-android-server-ConnectivityService$UnneededForSwitchesValues:[I

    #@22
    return-object v0

    #@23
    :catch_0
    move-exception v1

    #@24
    goto :goto_1

    #@25
    :catch_1
    move-exception v1

    #@26
    goto :goto_0
.end method

.method private static synthetic -getcom-android-server-connectivity-NetworkNotificationManager$NotificationTypeSwitchesValues()[I
    .locals 3

    #@0
    sget-object v0, Lcom/android/server/ConnectivityService;->-com-android-server-connectivity-NetworkNotificationManager$NotificationTypeSwitchesValues:[I

    #@2
    if-eqz v0, :cond_0

    #@4
    sget-object v0, Lcom/android/server/ConnectivityService;->-com-android-server-connectivity-NetworkNotificationManager$NotificationTypeSwitchesValues:[I

    #@6
    return-object v0

    #@7
    :cond_0
    invoke-static {}, Lcom/android/server/connectivity/NetworkNotificationManager$NotificationType;->values()[Lcom/android/server/connectivity/NetworkNotificationManager$NotificationType;

    #@a
    move-result-object v0

    #@b
    array-length v0, v0

    #@c
    new-array v0, v0, [I

    #@e
    :try_start_0
    sget-object v1, Lcom/android/server/connectivity/NetworkNotificationManager$NotificationType;->LOST_INTERNET:Lcom/android/server/connectivity/NetworkNotificationManager$NotificationType;

    #@10
    invoke-virtual {v1}, Lcom/android/server/connectivity/NetworkNotificationManager$NotificationType;->ordinal()I

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
    sget-object v1, Lcom/android/server/connectivity/NetworkNotificationManager$NotificationType;->NETWORK_SWITCH:Lcom/android/server/connectivity/NetworkNotificationManager$NotificationType;

    #@19
    invoke-virtual {v1}, Lcom/android/server/connectivity/NetworkNotificationManager$NotificationType;->ordinal()I

    #@1c
    move-result v1

    #@1d
    const/4 v2, 0x5

    #@1e
    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_2

    #@20
    :goto_1
    :try_start_2
    sget-object v1, Lcom/android/server/connectivity/NetworkNotificationManager$NotificationType;->NO_INTERNET:Lcom/android/server/connectivity/NetworkNotificationManager$NotificationType;

    #@22
    invoke-virtual {v1}, Lcom/android/server/connectivity/NetworkNotificationManager$NotificationType;->ordinal()I

    #@25
    move-result v1

    #@26
    const/4 v2, 0x2

    #@27
    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_1

    #@29
    :goto_2
    :try_start_3
    sget-object v1, Lcom/android/server/connectivity/NetworkNotificationManager$NotificationType;->SIGN_IN:Lcom/android/server/connectivity/NetworkNotificationManager$NotificationType;

    #@2b
    invoke-virtual {v1}, Lcom/android/server/connectivity/NetworkNotificationManager$NotificationType;->ordinal()I

    #@2e
    move-result v1

    #@2f
    const/4 v2, 0x6

    #@30
    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_0

    #@32
    :goto_3
    sput-object v0, Lcom/android/server/ConnectivityService;->-com-android-server-connectivity-NetworkNotificationManager$NotificationTypeSwitchesValues:[I

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

.method static synthetic -set0(Lcom/android/server/ConnectivityService;Z)Z
    .locals 0

    #@0
    iput-boolean p1, p0, Lcom/android/server/ConnectivityService;->mRestrictBackground:Z

    #@2
    return p1
.end method

.method static synthetic -wrap0(Lcom/android/server/ConnectivityService;Lcom/android/server/connectivity/NetworkAgentInfo;)Z
    .locals 1
    .param p1, "nai"    # Lcom/android/server/connectivity/NetworkAgentInfo;

    #@0
    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/ConnectivityService;->isDefaultNetwork(Lcom/android/server/connectivity/NetworkAgentInfo;)Z

    #@3
    move-result v0

    #@4
    return v0
.end method

.method static synthetic -wrap1(Lcom/android/server/ConnectivityService;Lcom/android/server/connectivity/NetworkAgentInfo;I)Z
    .locals 1
    .param p1, "nai"    # Lcom/android/server/connectivity/NetworkAgentInfo;
    .param p2, "what"    # I

    #@0
    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/server/ConnectivityService;->isLiveNetworkAgent(Lcom/android/server/connectivity/NetworkAgentInfo;I)Z

    #@3
    move-result v0

    #@4
    return v0
.end method

.method static synthetic -wrap10(Lcom/android/server/ConnectivityService;Lcom/android/server/connectivity/NetworkAgentInfo;)V
    .locals 0
    .param p1, "nai"    # Lcom/android/server/connectivity/NetworkAgentInfo;

    #@0
    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/ConnectivityService;->handleNetworkUnvalidated(Lcom/android/server/connectivity/NetworkAgentInfo;)V

    #@3
    return-void
.end method

.method static synthetic -wrap11(Lcom/android/server/ConnectivityService;Landroid/net/Network;)V
    .locals 0
    .param p1, "network"    # Landroid/net/Network;

    #@0
    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/ConnectivityService;->handlePromptUnvalidated(Landroid/net/Network;)V

    #@3
    return-void
.end method

.method static synthetic -wrap12(Lcom/android/server/ConnectivityService;Lcom/android/server/connectivity/NetworkAgentInfo;)V
    .locals 0
    .param p1, "na"    # Lcom/android/server/connectivity/NetworkAgentInfo;

    #@0
    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/ConnectivityService;->handleRegisterNetworkAgent(Lcom/android/server/connectivity/NetworkAgentInfo;)V

    #@3
    return-void
.end method

.method static synthetic -wrap13(Lcom/android/server/ConnectivityService;Lcom/android/server/ConnectivityService$NetworkFactoryInfo;)V
    .locals 0
    .param p1, "nfi"    # Lcom/android/server/ConnectivityService$NetworkFactoryInfo;

    #@0
    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/ConnectivityService;->handleRegisterNetworkFactory(Lcom/android/server/ConnectivityService$NetworkFactoryInfo;)V

    #@3
    return-void
.end method

.method static synthetic -wrap14(Lcom/android/server/ConnectivityService;Landroid/os/Message;)V
    .locals 0
    .param p1, "msg"    # Landroid/os/Message;

    #@0
    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/ConnectivityService;->handleRegisterNetworkRequestWithIntent(Landroid/os/Message;)V

    #@3
    return-void
.end method

.method static synthetic -wrap15(Lcom/android/server/ConnectivityService;Lcom/android/server/ConnectivityService$NetworkRequestInfo;)V
    .locals 0
    .param p1, "nri"    # Lcom/android/server/ConnectivityService$NetworkRequestInfo;

    #@0
    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/ConnectivityService;->handleRegisterNetworkRequest(Lcom/android/server/ConnectivityService$NetworkRequestInfo;)V

    #@3
    return-void
.end method

.method static synthetic -wrap16(Lcom/android/server/ConnectivityService;Landroid/app/PendingIntent;I)V
    .locals 0
    .param p1, "pendingIntent"    # Landroid/app/PendingIntent;
    .param p2, "callingUid"    # I

    #@0
    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/server/ConnectivityService;->handleReleaseNetworkRequestWithIntent(Landroid/app/PendingIntent;I)V

    #@3
    return-void
.end method

.method static synthetic -wrap17(Lcom/android/server/ConnectivityService;Landroid/net/NetworkRequest;I)V
    .locals 0
    .param p1, "request"    # Landroid/net/NetworkRequest;
    .param p2, "callingUid"    # I

    #@0
    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/server/ConnectivityService;->handleReleaseNetworkRequest(Landroid/net/NetworkRequest;I)V

    #@3
    return-void
.end method

.method static synthetic -wrap18(Lcom/android/server/ConnectivityService;Landroid/net/NetworkRequest;I)V
    .locals 0
    .param p1, "request"    # Landroid/net/NetworkRequest;
    .param p2, "callingUid"    # I

    #@0
    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/server/ConnectivityService;->handleRequestLinkProperties(Landroid/net/NetworkRequest;I)V

    #@3
    return-void
.end method

.method static synthetic -wrap19(Lcom/android/server/ConnectivityService;Landroid/net/NetworkRequest;I)V
    .locals 0
    .param p1, "request"    # Landroid/net/NetworkRequest;
    .param p2, "callingUid"    # I

    #@0
    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/server/ConnectivityService;->handleRequestNetworkCapabilities(Landroid/net/NetworkRequest;I)V

    #@3
    return-void
.end method

.method static synthetic -wrap2(Lcom/android/server/ConnectivityService;Landroid/net/Network;)Lcom/android/server/connectivity/NetworkAgentInfo;
    .locals 1
    .param p1, "network"    # Landroid/net/Network;

    #@0
    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/ConnectivityService;->getNetworkAgentInfoForNetwork(Landroid/net/Network;)Lcom/android/server/connectivity/NetworkAgentInfo;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method static synthetic -wrap20(Lcom/android/server/ConnectivityService;Landroid/net/Network;ZZ)V
    .locals 0
    .param p1, "network"    # Landroid/net/Network;
    .param p2, "accept"    # Z
    .param p3, "always"    # Z

    #@0
    .prologue
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/ConnectivityService;->handleSetAcceptUnvalidated(Landroid/net/Network;ZZ)V

    #@3
    return-void
.end method

.method static synthetic -wrap21(Lcom/android/server/ConnectivityService;Landroid/net/Network;)V
    .locals 0
    .param p1, "network"    # Landroid/net/Network;

    #@0
    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/ConnectivityService;->handleSetAvoidUnvalidated(Landroid/net/Network;)V

    #@3
    return-void
.end method

.method static synthetic -wrap22(Lcom/android/server/ConnectivityService;Landroid/os/Messenger;)V
    .locals 0
    .param p1, "messenger"    # Landroid/os/Messenger;

    #@0
    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/ConnectivityService;->handleUnregisterNetworkFactory(Landroid/os/Messenger;)V

    #@3
    return-void
.end method

.method static synthetic -wrap23(Ljava/lang/String;)V
    .locals 0
    .param p0, "s"    # Ljava/lang/String;

    #@0
    .prologue
    invoke-static {p0}, Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V

    #@3
    return-void
.end method

.method static synthetic -wrap24(Ljava/lang/String;)V
    .locals 0
    .param p0, "s"    # Ljava/lang/String;

    #@0
    .prologue
    invoke-static {p0}, Lcom/android/server/ConnectivityService;->loge(Ljava/lang/String;)V

    #@3
    return-void
.end method

.method static synthetic -wrap25(Lcom/android/server/ConnectivityService;I)V
    .locals 0
    .param p1, "userId"    # I

    #@0
    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/ConnectivityService;->onUserAdded(I)V

    #@3
    return-void
.end method

.method static synthetic -wrap26(Lcom/android/server/ConnectivityService;I)V
    .locals 0
    .param p1, "userId"    # I

    #@0
    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/ConnectivityService;->onUserRemoved(I)V

    #@3
    return-void
.end method

.method static synthetic -wrap27(Lcom/android/server/ConnectivityService;I)V
    .locals 0
    .param p1, "userId"    # I

    #@0
    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/ConnectivityService;->onUserStart(I)V

    #@3
    return-void
.end method

.method static synthetic -wrap28(Lcom/android/server/ConnectivityService;I)V
    .locals 0
    .param p1, "userId"    # I

    #@0
    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/ConnectivityService;->onUserStop(I)V

    #@3
    return-void
.end method

.method static synthetic -wrap29(Lcom/android/server/ConnectivityService;I)V
    .locals 0
    .param p1, "userId"    # I

    #@0
    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/ConnectivityService;->onUserUnlocked(I)V

    #@3
    return-void
.end method

.method static synthetic -wrap3(Lcom/android/server/ConnectivityService;Landroid/net/NetworkRequest;)V
    .locals 0
    .param p1, "request"    # Landroid/net/NetworkRequest;

    #@0
    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/ConnectivityService;->ensureNetworkRequestHasType(Landroid/net/NetworkRequest;)V

    #@3
    return-void
.end method

.method static synthetic -wrap30(Lcom/android/server/ConnectivityService;IZJ)V
    .locals 1
    .param p1, "deviceType"    # I
    .param p2, "active"    # Z
    .param p3, "tsNanos"    # J

    #@0
    .prologue
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/ConnectivityService;->sendDataActivityBroadcast(IZJ)V

    #@3
    return-void
.end method

.method static synthetic -wrap31(Lcom/android/server/ConnectivityService;Lcom/android/server/connectivity/NetworkAgentInfo;Landroid/net/NetworkInfo$DetailedState;I)V
    .locals 0
    .param p1, "nai"    # Lcom/android/server/connectivity/NetworkAgentInfo;
    .param p2, "state"    # Landroid/net/NetworkInfo$DetailedState;
    .param p3, "type"    # I

    #@0
    .prologue
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/ConnectivityService;->sendLegacyNetworkBroadcast(Lcom/android/server/connectivity/NetworkAgentInfo;Landroid/net/NetworkInfo$DetailedState;I)V

    #@3
    return-void
.end method

.method static synthetic -wrap32(Lcom/android/server/ConnectivityService;Lcom/android/server/connectivity/NetworkAgentInfo;)V
    .locals 0
    .param p1, "nai"    # Lcom/android/server/connectivity/NetworkAgentInfo;

    #@0
    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/ConnectivityService;->sendUpdatedScoreToFactories(Lcom/android/server/connectivity/NetworkAgentInfo;)V

    #@3
    return-void
.end method

.method static synthetic -wrap33(Lcom/android/server/ConnectivityService;ILcom/android/server/connectivity/NetworkAgentInfo;Landroid/net/NetworkCapabilities;)V
    .locals 0
    .param p1, "oldScore"    # I
    .param p2, "nai"    # Lcom/android/server/connectivity/NetworkAgentInfo;
    .param p3, "networkCapabilities"    # Landroid/net/NetworkCapabilities;

    #@0
    .prologue
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/ConnectivityService;->updateCapabilities(ILcom/android/server/connectivity/NetworkAgentInfo;Landroid/net/NetworkCapabilities;)V

    #@3
    return-void
.end method

.method static synthetic -wrap34(Lcom/android/server/ConnectivityService;Lcom/android/server/connectivity/NetworkAgentInfo;)V
    .locals 0
    .param p1, "nai"    # Lcom/android/server/connectivity/NetworkAgentInfo;

    #@0
    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/ConnectivityService;->updateInetCondition(Lcom/android/server/connectivity/NetworkAgentInfo;)V

    #@3
    return-void
.end method

.method static synthetic -wrap35(Lcom/android/server/ConnectivityService;Lcom/android/server/connectivity/NetworkAgentInfo;Landroid/net/LinkProperties;)V
    .locals 0
    .param p1, "networkAgent"    # Lcom/android/server/connectivity/NetworkAgentInfo;
    .param p2, "oldLp"    # Landroid/net/LinkProperties;

    #@0
    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/server/ConnectivityService;->updateLinkProperties(Lcom/android/server/connectivity/NetworkAgentInfo;Landroid/net/LinkProperties;)V

    #@3
    return-void
.end method

.method static synthetic -wrap36(Lcom/android/server/ConnectivityService;Lcom/android/server/connectivity/NetworkAgentInfo;Landroid/net/NetworkInfo;)V
    .locals 0
    .param p1, "networkAgent"    # Lcom/android/server/connectivity/NetworkAgentInfo;
    .param p2, "newInfo"    # Landroid/net/NetworkInfo;

    #@0
    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/server/ConnectivityService;->updateNetworkInfo(Lcom/android/server/connectivity/NetworkAgentInfo;Landroid/net/NetworkInfo;)V

    #@3
    return-void
.end method

.method static synthetic -wrap37(Lcom/android/server/ConnectivityService;Lcom/android/server/connectivity/NetworkAgentInfo;I)V
    .locals 0
    .param p1, "nai"    # Lcom/android/server/connectivity/NetworkAgentInfo;
    .param p2, "score"    # I

    #@0
    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/server/ConnectivityService;->updateNetworkScore(Lcom/android/server/connectivity/NetworkAgentInfo;I)V

    #@3
    return-void
.end method

.method static synthetic -wrap4(Lcom/android/server/ConnectivityService;Landroid/net/ProxyInfo;)V
    .locals 0
    .param p1, "proxy"    # Landroid/net/ProxyInfo;

    #@0
    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/ConnectivityService;->handleApplyDefaultProxy(Landroid/net/ProxyInfo;)V

    #@3
    return-void
.end method

.method static synthetic -wrap5(Lcom/android/server/ConnectivityService;Landroid/os/Message;)V
    .locals 0
    .param p1, "msg"    # Landroid/os/Message;

    #@0
    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/ConnectivityService;->handleAsyncChannelDisconnected(Landroid/os/Message;)V

    #@3
    return-void
.end method

.method static synthetic -wrap6(Lcom/android/server/ConnectivityService;Landroid/os/Message;)V
    .locals 0
    .param p1, "msg"    # Landroid/os/Message;

    #@0
    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/ConnectivityService;->handleAsyncChannelHalfConnect(Landroid/os/Message;)V

    #@3
    return-void
.end method

.method static synthetic -wrap7(Lcom/android/server/ConnectivityService;)V
    .locals 0

    #@0
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->handleDeprecatedGlobalHttpProxy()V

    #@3
    return-void
.end method

.method static synthetic -wrap8(Lcom/android/server/ConnectivityService;Lcom/android/server/connectivity/NetworkAgentInfo;)V
    .locals 0
    .param p1, "oldNetwork"    # Lcom/android/server/connectivity/NetworkAgentInfo;

    #@0
    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/ConnectivityService;->handleLingerComplete(Lcom/android/server/connectivity/NetworkAgentInfo;)V

    #@3
    return-void
.end method

.method static synthetic -wrap9(Lcom/android/server/ConnectivityService;)V
    .locals 0

    #@0
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->handleMobileDataAlwaysOn()V

    #@3
    return-void
.end method

.method static constructor <clinit>()V
    .locals 3

    #@0
    .prologue
    .line 180
    const-class v0, Lcom/android/server/ConnectivityService;

    #@2
    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    #@5
    move-result-object v0

    #@6
    sput-object v0, Lcom/android/server/ConnectivityService;->TAG:Ljava/lang/String;

    #@8
    .line 254
    const/4 v0, 0x4

    #@9
    new-array v0, v0, [Ljava/lang/Class;

    #@b
    const-class v1, Lcom/android/internal/util/AsyncChannel;

    #@d
    const/4 v2, 0x0

    #@e
    aput-object v1, v0, v2

    #@10
    const-class v1, Lcom/android/server/ConnectivityService;

    #@12
    const/4 v2, 0x1

    #@13
    aput-object v1, v0, v2

    #@15
    const-class v1, Landroid/net/NetworkAgent;

    #@17
    const/4 v2, 0x2

    #@18
    aput-object v1, v0, v2

    #@1a
    .line 255
    const-class v1, Lcom/android/server/connectivity/NetworkAgentInfo;

    #@1c
    const/4 v2, 0x3

    #@1d
    aput-object v1, v0, v2

    #@1f
    .line 253
    invoke-static {v0}, Lcom/android/internal/util/MessageUtils;->findMessageNames([Ljava/lang/Class;)Landroid/util/SparseArray;

    #@22
    move-result-object v0

    #@23
    sput-object v0, Lcom/android/server/ConnectivityService;->sMagicDecoderRing:Landroid/util/SparseArray;

    #@25
    .line 178
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/INetworkManagementService;Landroid/net/INetworkStatsService;Landroid/net/INetworkPolicyManager;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "netManager"    # Landroid/os/INetworkManagementService;
    .param p3, "statsService"    # Landroid/net/INetworkStatsService;
    .param p4, "policyManager"    # Landroid/net/INetworkPolicyManager;

    #@0
    .prologue
    .line 699
    new-instance v5, Landroid/net/metrics/IpConnectivityLog;

    #@2
    invoke-direct {v5}, Landroid/net/metrics/IpConnectivityLog;-><init>()V

    #@5
    move-object v0, p0

    #@6
    move-object v1, p1

    #@7
    move-object v2, p2

    #@8
    move-object v3, p3

    #@9
    move-object v4, p4

    #@a
    invoke-direct/range {v0 .. v5}, Lcom/android/server/ConnectivityService;-><init>(Landroid/content/Context;Landroid/os/INetworkManagementService;Landroid/net/INetworkStatsService;Landroid/net/INetworkPolicyManager;Landroid/net/metrics/IpConnectivityLog;)V

    #@d
    .line 698
    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;Landroid/os/INetworkManagementService;Landroid/net/INetworkStatsService;Landroid/net/INetworkPolicyManager;Landroid/net/metrics/IpConnectivityLog;)V
    .locals 24
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "netManager"    # Landroid/os/INetworkManagementService;
    .param p3, "statsService"    # Landroid/net/INetworkStatsService;
    .param p4, "policyManager"    # Landroid/net/INetworkPolicyManager;
    .param p5, "logger"    # Landroid/net/metrics/IpConnectivityLog;

    #@0
    .prologue
    .line 703
    invoke-direct/range {p0 .. p0}, Landroid/net/IConnectivityManager$Stub;-><init>()V

    #@3
    .line 217
    new-instance v2, Landroid/util/SparseArray;

    #@5
    invoke-direct {v2}, Landroid/util/SparseArray;-><init>()V

    #@8
    move-object/from16 v0, p0

    #@a
    iput-object v2, v0, Lcom/android/server/ConnectivityService;->mVpns:Landroid/util/SparseArray;

    #@c
    .line 223
    new-instance v2, Ljava/lang/Object;

    #@e
    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    #@11
    move-object/from16 v0, p0

    #@13
    iput-object v2, v0, Lcom/android/server/ConnectivityService;->mRulesLock:Ljava/lang/Object;

    #@15
    .line 226
    new-instance v2, Landroid/util/SparseIntArray;

    #@17
    invoke-direct {v2}, Landroid/util/SparseIntArray;-><init>()V

    #@1a
    move-object/from16 v0, p0

    #@1c
    iput-object v2, v0, Lcom/android/server/ConnectivityService;->mUidRules:Landroid/util/SparseIntArray;

    #@1e
    .line 229
    new-instance v2, Landroid/util/ArraySet;

    #@20
    invoke-direct {v2}, Landroid/util/ArraySet;-><init>()V

    #@23
    move-object/from16 v0, p0

    #@25
    iput-object v2, v0, Lcom/android/server/ConnectivityService;->mMeteredIfaces:Landroid/util/ArraySet;

    #@27
    .line 237
    const/4 v2, 0x0

    #@28
    move-object/from16 v0, p0

    #@2a
    iput v2, v0, Lcom/android/server/ConnectivityService;->mDefaultInetConditionPublished:I

    #@2c
    .line 419
    const-string/jumbo v2, ""

    #@2f
    move-object/from16 v0, p0

    #@31
    iput-object v2, v0, Lcom/android/server/ConnectivityService;->mNetTransitionWakeLockCausedBy:Ljava/lang/String;

    #@33
    .line 429
    const/4 v2, 0x0

    #@34
    move-object/from16 v0, p0

    #@36
    iput-object v2, v0, Lcom/android/server/ConnectivityService;->mDefaultProxy:Landroid/net/ProxyInfo;

    #@38
    .line 430
    new-instance v2, Ljava/lang/Object;

    #@3a
    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    #@3d
    move-object/from16 v0, p0

    #@3f
    iput-object v2, v0, Lcom/android/server/ConnectivityService;->mProxyLock:Ljava/lang/Object;

    #@41
    .line 431
    const/4 v2, 0x0

    #@42
    move-object/from16 v0, p0

    #@44
    iput-boolean v2, v0, Lcom/android/server/ConnectivityService;->mDefaultProxyDisabled:Z

    #@46
    .line 434
    const/4 v2, 0x0

    #@47
    move-object/from16 v0, p0

    #@49
    iput-object v2, v0, Lcom/android/server/ConnectivityService;->mGlobalProxy:Landroid/net/ProxyInfo;

    #@4b
    .line 436
    const/4 v2, 0x0

    #@4c
    move-object/from16 v0, p0

    #@4e
    iput-object v2, v0, Lcom/android/server/ConnectivityService;->mPacManager:Lcom/android/server/connectivity/PacManager;

    #@50
    .line 459
    const/16 v2, 0x64

    #@52
    move-object/from16 v0, p0

    #@54
    iput v2, v0, Lcom/android/server/ConnectivityService;->mNextNetId:I

    #@56
    .line 462
    const/4 v2, 0x1

    #@57
    move-object/from16 v0, p0

    #@59
    iput v2, v0, Lcom/android/server/ConnectivityService;->mNextNetworkRequestId:I

    #@5b
    .line 466
    new-instance v2, Landroid/util/LocalLog;

    #@5d
    const/16 v3, 0x14

    #@5f
    invoke-direct {v2, v3}, Landroid/util/LocalLog;-><init>(I)V

    #@62
    move-object/from16 v0, p0

    #@64
    iput-object v2, v0, Lcom/android/server/ConnectivityService;->mNetworkRequestInfoLogs:Landroid/util/LocalLog;

    #@66
    .line 471
    new-instance v2, Landroid/util/LocalLog;

    #@68
    const/16 v3, 0x64

    #@6a
    invoke-direct {v2, v3}, Landroid/util/LocalLog;-><init>(I)V

    #@6d
    move-object/from16 v0, p0

    #@6f
    iput-object v2, v0, Lcom/android/server/ConnectivityService;->mNetworkInfoBlockingLogs:Landroid/util/LocalLog;

    #@71
    .line 487
    new-instance v2, Ljava/util/ArrayDeque;

    #@73
    const/16 v3, 0xa

    #@75
    invoke-direct {v2, v3}, Ljava/util/ArrayDeque;-><init>(I)V

    #@78
    .line 486
    move-object/from16 v0, p0

    #@7a
    iput-object v2, v0, Lcom/android/server/ConnectivityService;->mValidationLogs:Ljava/util/ArrayDeque;

    #@7c
    .line 690
    new-instance v2, Lcom/android/server/ConnectivityService$LegacyTypeTracker;

    #@7e
    move-object/from16 v0, p0

    #@80
    invoke-direct {v2, v0}, Lcom/android/server/ConnectivityService$LegacyTypeTracker;-><init>(Lcom/android/server/ConnectivityService;)V

    #@83
    move-object/from16 v0, p0

    #@85
    iput-object v2, v0, Lcom/android/server/ConnectivityService;->mLegacyTypeTracker:Lcom/android/server/ConnectivityService$LegacyTypeTracker;

    #@87
    .line 1398
    new-instance v2, Lcom/android/server/ConnectivityService$1;

    #@89
    move-object/from16 v0, p0

    #@8b
    invoke-direct {v2, v0}, Lcom/android/server/ConnectivityService$1;-><init>(Lcom/android/server/ConnectivityService;)V

    #@8e
    move-object/from16 v0, p0

    #@90
    iput-object v2, v0, Lcom/android/server/ConnectivityService;->mDataActivityObserver:Landroid/net/INetworkManagementEventObserver;

    #@92
    .line 1503
    new-instance v2, Lcom/android/server/ConnectivityService$2;

    #@94
    move-object/from16 v0, p0

    #@96
    invoke-direct {v2, v0}, Lcom/android/server/ConnectivityService$2;-><init>(Lcom/android/server/ConnectivityService;)V

    #@99
    move-object/from16 v0, p0

    #@9b
    iput-object v2, v0, Lcom/android/server/ConnectivityService;->mPolicyListener:Landroid/net/INetworkPolicyListener;

    #@9d
    .line 3780
    new-instance v2, Ljava/io/File;

    #@9f
    const-string/jumbo v3, "/data/misc/radio/provisioning_urls.xml"

    #@a2
    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    #@a5
    move-object/from16 v0, p0

    #@a7
    iput-object v2, v0, Lcom/android/server/ConnectivityService;->mProvisioningUrlFile:Ljava/io/File;

    #@a9
    .line 3961
    new-instance v2, Lcom/android/server/ConnectivityService$3;

    #@ab
    move-object/from16 v0, p0

    #@ad
    invoke-direct {v2, v0}, Lcom/android/server/ConnectivityService$3;-><init>(Lcom/android/server/ConnectivityService;)V

    #@b0
    move-object/from16 v0, p0

    #@b2
    iput-object v2, v0, Lcom/android/server/ConnectivityService;->mUserIntentReceiver:Landroid/content/BroadcastReceiver;

    #@b4
    .line 3983
    new-instance v2, Ljava/util/HashMap;

    #@b6
    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    #@b9
    .line 3982
    move-object/from16 v0, p0

    #@bb
    iput-object v2, v0, Lcom/android/server/ConnectivityService;->mNetworkFactoryInfos:Ljava/util/HashMap;

    #@bd
    .line 3985
    new-instance v2, Ljava/util/HashMap;

    #@bf
    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    #@c2
    .line 3984
    move-object/from16 v0, p0

    #@c4
    iput-object v2, v0, Lcom/android/server/ConnectivityService;->mNetworkRequests:Ljava/util/HashMap;

    #@c6
    .line 3990
    new-instance v2, Landroid/util/SparseIntArray;

    #@c8
    invoke-direct {v2}, Landroid/util/SparseIntArray;-><init>()V

    #@cb
    move-object/from16 v0, p0

    #@cd
    iput-object v2, v0, Lcom/android/server/ConnectivityService;->mUidToNetworkRequestCount:Landroid/util/SparseIntArray;

    #@cf
    .line 4372
    new-instance v2, Landroid/util/SparseArray;

    #@d1
    invoke-direct {v2}, Landroid/util/SparseArray;-><init>()V

    #@d4
    .line 4371
    move-object/from16 v0, p0

    #@d6
    iput-object v2, v0, Lcom/android/server/ConnectivityService;->mNetworkForRequestId:Landroid/util/SparseArray;

    #@d8
    .line 4377
    new-instance v2, Landroid/util/SparseArray;

    #@da
    invoke-direct {v2}, Landroid/util/SparseArray;-><init>()V

    #@dd
    .line 4376
    move-object/from16 v0, p0

    #@df
    iput-object v2, v0, Lcom/android/server/ConnectivityService;->mNetworkForNetId:Landroid/util/SparseArray;

    #@e1
    .line 4382
    new-instance v2, Landroid/util/SparseBooleanArray;

    #@e3
    invoke-direct {v2}, Landroid/util/SparseBooleanArray;-><init>()V

    #@e6
    move-object/from16 v0, p0

    #@e8
    iput-object v2, v0, Lcom/android/server/ConnectivityService;->mNetIdInUse:Landroid/util/SparseBooleanArray;

    #@ea
    .line 4388
    new-instance v2, Ljava/util/HashMap;

    #@ec
    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    #@ef
    .line 4387
    move-object/from16 v0, p0

    #@f1
    iput-object v2, v0, Lcom/android/server/ConnectivityService;->mNetworkAgentInfos:Ljava/util/HashMap;

    #@f3
    .line 4391
    new-instance v2, Ljava/util/HashSet;

    #@f5
    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    #@f8
    move-object/from16 v0, p0

    #@fa
    iput-object v2, v0, Lcom/android/server/ConnectivityService;->mBlockedAppUids:Ljava/util/HashSet;

    #@fc
    .line 706
    const-string/jumbo v2, "ConnectivityService starting up"

    #@ff
    invoke-static {v2}, Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V

    #@102
    .line 708
    move-object/from16 v0, p5

    #@104
    move-object/from16 v1, p0

    #@106
    iput-object v0, v1, Lcom/android/server/ConnectivityService;->mMetricsLog:Landroid/net/metrics/IpConnectivityLog;

    #@108
    .line 709
    sget-object v2, Landroid/net/NetworkRequest$Type;->REQUEST:Landroid/net/NetworkRequest$Type;

    #@10a
    const/4 v3, -0x1

    #@10b
    move-object/from16 v0, p0

    #@10d
    invoke-direct {v0, v3, v2}, Lcom/android/server/ConnectivityService;->createInternetRequestForTransport(ILandroid/net/NetworkRequest$Type;)Landroid/net/NetworkRequest;

    #@110
    move-result-object v2

    #@111
    move-object/from16 v0, p0

    #@113
    iput-object v2, v0, Lcom/android/server/ConnectivityService;->mDefaultRequest:Landroid/net/NetworkRequest;

    #@115
    .line 710
    new-instance v12, Lcom/android/server/ConnectivityService$NetworkRequestInfo;

    #@117
    move-object/from16 v0, p0

    #@119
    iget-object v2, v0, Lcom/android/server/ConnectivityService;->mDefaultRequest:Landroid/net/NetworkRequest;

    #@11b
    new-instance v3, Landroid/os/Binder;

    #@11d
    invoke-direct {v3}, Landroid/os/Binder;-><init>()V

    #@120
    const/4 v4, 0x0

    #@121
    move-object/from16 v0, p0

    #@123
    invoke-direct {v12, v0, v4, v2, v3}, Lcom/android/server/ConnectivityService$NetworkRequestInfo;-><init>(Lcom/android/server/ConnectivityService;Landroid/os/Messenger;Landroid/net/NetworkRequest;Landroid/os/IBinder;)V

    #@126
    .line 711
    .local v12, "defaultNRI":Lcom/android/server/ConnectivityService$NetworkRequestInfo;
    move-object/from16 v0, p0

    #@128
    iget-object v2, v0, Lcom/android/server/ConnectivityService;->mNetworkRequests:Ljava/util/HashMap;

    #@12a
    move-object/from16 v0, p0

    #@12c
    iget-object v3, v0, Lcom/android/server/ConnectivityService;->mDefaultRequest:Landroid/net/NetworkRequest;

    #@12e
    invoke-virtual {v2, v3, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@131
    .line 712
    move-object/from16 v0, p0

    #@133
    iget-object v2, v0, Lcom/android/server/ConnectivityService;->mNetworkRequestInfoLogs:Landroid/util/LocalLog;

    #@135
    new-instance v3, Ljava/lang/StringBuilder;

    #@137
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@13a
    const-string/jumbo v4, "REGISTER "

    #@13d
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@140
    move-result-object v3

    #@141
    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@144
    move-result-object v3

    #@145
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@148
    move-result-object v3

    #@149
    invoke-virtual {v2, v3}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    #@14c
    .line 715
    sget-object v2, Landroid/net/NetworkRequest$Type;->BACKGROUND_REQUEST:Landroid/net/NetworkRequest$Type;

    #@14e
    const/4 v3, 0x0

    #@14f
    .line 714
    move-object/from16 v0, p0

    #@151
    invoke-direct {v0, v3, v2}, Lcom/android/server/ConnectivityService;->createInternetRequestForTransport(ILandroid/net/NetworkRequest$Type;)Landroid/net/NetworkRequest;

    #@154
    move-result-object v2

    #@155
    move-object/from16 v0, p0

    #@157
    iput-object v2, v0, Lcom/android/server/ConnectivityService;->mDefaultMobileDataRequest:Landroid/net/NetworkRequest;

    #@159
    .line 717
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/ConnectivityService;->createHandlerThread()Landroid/os/HandlerThread;

    #@15c
    move-result-object v2

    #@15d
    move-object/from16 v0, p0

    #@15f
    iput-object v2, v0, Lcom/android/server/ConnectivityService;->mHandlerThread:Landroid/os/HandlerThread;

    #@161
    .line 718
    move-object/from16 v0, p0

    #@163
    iget-object v2, v0, Lcom/android/server/ConnectivityService;->mHandlerThread:Landroid/os/HandlerThread;

    #@165
    invoke-virtual {v2}, Landroid/os/HandlerThread;->start()V

    #@168
    .line 719
    new-instance v2, Lcom/android/server/ConnectivityService$InternalHandler;

    #@16a
    move-object/from16 v0, p0

    #@16c
    iget-object v3, v0, Lcom/android/server/ConnectivityService;->mHandlerThread:Landroid/os/HandlerThread;

    #@16e
    invoke-virtual {v3}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    #@171
    move-result-object v3

    #@172
    move-object/from16 v0, p0

    #@174
    invoke-direct {v2, v0, v3}, Lcom/android/server/ConnectivityService$InternalHandler;-><init>(Lcom/android/server/ConnectivityService;Landroid/os/Looper;)V

    #@177
    move-object/from16 v0, p0

    #@179
    iput-object v2, v0, Lcom/android/server/ConnectivityService;->mHandler:Lcom/android/server/ConnectivityService$InternalHandler;

    #@17b
    .line 720
    new-instance v2, Lcom/android/server/ConnectivityService$NetworkStateTrackerHandler;

    #@17d
    move-object/from16 v0, p0

    #@17f
    iget-object v3, v0, Lcom/android/server/ConnectivityService;->mHandlerThread:Landroid/os/HandlerThread;

    #@181
    invoke-virtual {v3}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    #@184
    move-result-object v3

    #@185
    move-object/from16 v0, p0

    #@187
    invoke-direct {v2, v0, v3}, Lcom/android/server/ConnectivityService$NetworkStateTrackerHandler;-><init>(Lcom/android/server/ConnectivityService;Landroid/os/Looper;)V

    #@18a
    move-object/from16 v0, p0

    #@18c
    iput-object v2, v0, Lcom/android/server/ConnectivityService;->mTrackerHandler:Lcom/android/server/ConnectivityService$NetworkStateTrackerHandler;

    #@18e
    .line 723
    const-string/jumbo v2, "net.hostname"

    #@191
    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    #@194
    move-result-object v2

    #@195
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@198
    move-result v2

    #@199
    if-eqz v2, :cond_0

    #@19b
    .line 724
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    #@19e
    move-result-object v2

    #@19f
    .line 725
    const-string/jumbo v3, "android_id"

    #@1a2
    .line 724
    invoke-static {v2, v3}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    #@1a5
    move-result-object v15

    #@1a6
    .line 726
    .local v15, "id":Ljava/lang/String;
    if-eqz v15, :cond_0

    #@1a8
    invoke-virtual {v15}, Ljava/lang/String;->length()I

    #@1ab
    move-result v2

    #@1ac
    if-lez v2, :cond_0

    #@1ae
    .line 727
    new-instance v2, Ljava/lang/String;

    #@1b0
    const-string/jumbo v3, "android-"

    #@1b3
    invoke-direct {v2, v3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    #@1b6
    invoke-virtual {v2, v15}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    #@1b9
    move-result-object v19

    #@1ba
    .line 728
    .local v19, "name":Ljava/lang/String;
    const-string/jumbo v2, "net.hostname"

    #@1bd
    move-object/from16 v0, v19

    #@1bf
    invoke-static {v2, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    #@1c2
    .line 732
    .end local v15    # "id":Ljava/lang/String;
    .end local v19    # "name":Ljava/lang/String;
    :cond_0
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    #@1c5
    move-result-object v2

    #@1c6
    .line 733
    const-string/jumbo v3, "connectivity_release_pending_intent_delay_ms"

    #@1c9
    const/16 v4, 0x1388

    #@1cb
    .line 732
    invoke-static {v2, v3, v4}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    #@1ce
    move-result v2

    #@1cf
    move-object/from16 v0, p0

    #@1d1
    iput v2, v0, Lcom/android/server/ConnectivityService;->mReleasePendingIntentDelayMs:I

    #@1d3
    .line 735
    const-string/jumbo v2, "persist.netmon.linger"

    #@1d6
    const/16 v3, 0x7530

    #@1d8
    invoke-static {v2, v3}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    #@1db
    move-result v2

    #@1dc
    move-object/from16 v0, p0

    #@1de
    iput v2, v0, Lcom/android/server/ConnectivityService;->mLingerDelayMs:I

    #@1e0
    .line 737
    const-string/jumbo v2, "missing Context"

    #@1e3
    move-object/from16 v0, p1

    #@1e5
    invoke-static {v0, v2}, Lcom/android/server/ConnectivityService;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    #@1e8
    move-result-object v2

    #@1e9
    check-cast v2, Landroid/content/Context;

    #@1eb
    move-object/from16 v0, p0

    #@1ed
    iput-object v2, v0, Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;

    #@1ef
    .line 738
    const-string/jumbo v2, "missing INetworkManagementService"

    #@1f2
    move-object/from16 v0, p2

    #@1f4
    invoke-static {v0, v2}, Lcom/android/server/ConnectivityService;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    #@1f7
    move-result-object v2

    #@1f8
    check-cast v2, Landroid/os/INetworkManagementService;

    #@1fa
    move-object/from16 v0, p0

    #@1fc
    iput-object v2, v0, Lcom/android/server/ConnectivityService;->mNetd:Landroid/os/INetworkManagementService;

    #@1fe
    .line 739
    const-string/jumbo v2, "missing INetworkStatsService"

    #@201
    move-object/from16 v0, p3

    #@203
    invoke-static {v0, v2}, Lcom/android/server/ConnectivityService;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    #@206
    move-result-object v2

    #@207
    check-cast v2, Landroid/net/INetworkStatsService;

    #@209
    move-object/from16 v0, p0

    #@20b
    iput-object v2, v0, Lcom/android/server/ConnectivityService;->mStatsService:Landroid/net/INetworkStatsService;

    #@20d
    .line 740
    const-string/jumbo v2, "missing INetworkPolicyManager"

    #@210
    move-object/from16 v0, p4

    #@212
    invoke-static {v0, v2}, Lcom/android/server/ConnectivityService;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    #@215
    move-result-object v2

    #@216
    check-cast v2, Landroid/net/INetworkPolicyManager;

    #@218
    move-object/from16 v0, p0

    #@21a
    iput-object v2, v0, Lcom/android/server/ConnectivityService;->mPolicyManager:Landroid/net/INetworkPolicyManager;

    #@21c
    .line 741
    invoke-static {}, Landroid/security/KeyStore;->getInstance()Landroid/security/KeyStore;

    #@21f
    move-result-object v2

    #@220
    move-object/from16 v0, p0

    #@222
    iput-object v2, v0, Lcom/android/server/ConnectivityService;->mKeyStore:Landroid/security/KeyStore;

    #@224
    .line 742
    move-object/from16 v0, p0

    #@226
    iget-object v2, v0, Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;

    #@228
    const-string/jumbo v3, "phone"

    #@22b
    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    #@22e
    move-result-object v2

    #@22f
    check-cast v2, Landroid/telephony/TelephonyManager;

    #@231
    move-object/from16 v0, p0

    #@233
    iput-object v2, v0, Lcom/android/server/ConnectivityService;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    #@235
    .line 745
    :try_start_0
    move-object/from16 v0, p0

    #@237
    iget-object v2, v0, Lcom/android/server/ConnectivityService;->mPolicyManager:Landroid/net/INetworkPolicyManager;

    #@239
    move-object/from16 v0, p0

    #@23b
    iget-object v3, v0, Lcom/android/server/ConnectivityService;->mPolicyListener:Landroid/net/INetworkPolicyListener;

    #@23d
    invoke-interface {v2, v3}, Landroid/net/INetworkPolicyManager;->setConnectivityListener(Landroid/net/INetworkPolicyListener;)V

    #@240
    .line 746
    move-object/from16 v0, p0

    #@242
    iget-object v2, v0, Lcom/android/server/ConnectivityService;->mPolicyManager:Landroid/net/INetworkPolicyManager;

    #@244
    invoke-interface {v2}, Landroid/net/INetworkPolicyManager;->getRestrictBackground()Z

    #@247
    move-result v2

    #@248
    move-object/from16 v0, p0

    #@24a
    iput-boolean v2, v0, Lcom/android/server/ConnectivityService;->mRestrictBackground:Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@24c
    .line 753
    :goto_0
    const-string/jumbo v2, "power"

    #@24f
    .line 752
    move-object/from16 v0, p1

    #@251
    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    #@254
    move-result-object v21

    #@255
    check-cast v21, Landroid/os/PowerManager;

    #@257
    .line 754
    .local v21, "powerManager":Landroid/os/PowerManager;
    sget-object v2, Lcom/android/server/ConnectivityService;->TAG:Ljava/lang/String;

    #@259
    const/4 v3, 0x1

    #@25a
    move-object/from16 v0, v21

    #@25c
    invoke-virtual {v0, v3, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    #@25f
    move-result-object v2

    #@260
    move-object/from16 v0, p0

    #@262
    iput-object v2, v0, Lcom/android/server/ConnectivityService;->mNetTransitionWakeLock:Landroid/os/PowerManager$WakeLock;

    #@264
    .line 755
    move-object/from16 v0, p0

    #@266
    iget-object v2, v0, Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;

    #@268
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@26b
    move-result-object v2

    #@26c
    .line 756
    const v3, 0x10e000f

    #@26f
    .line 755
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    #@272
    move-result v2

    #@273
    move-object/from16 v0, p0

    #@275
    iput v2, v0, Lcom/android/server/ConnectivityService;->mNetTransitionWakeLockTimeout:I

    #@277
    .line 757
    sget-object v2, Lcom/android/server/ConnectivityService;->TAG:Ljava/lang/String;

    #@279
    const/4 v3, 0x1

    #@27a
    move-object/from16 v0, v21

    #@27c
    invoke-virtual {v0, v3, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    #@27f
    move-result-object v2

    #@280
    move-object/from16 v0, p0

    #@282
    iput-object v2, v0, Lcom/android/server/ConnectivityService;->mPendingIntentWakeLock:Landroid/os/PowerManager$WakeLock;

    #@284
    .line 759
    const/16 v2, 0x12

    #@286
    new-array v2, v2, [Landroid/net/NetworkConfig;

    #@288
    move-object/from16 v0, p0

    #@28a
    iput-object v2, v0, Lcom/android/server/ConnectivityService;->mNetConfigs:[Landroid/net/NetworkConfig;

    #@28c
    .line 762
    const-string/jumbo v2, "ro.radio.noril"

    #@28f
    const/4 v3, 0x0

    #@290
    invoke-static {v2, v3}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    #@293
    move-result v23

    #@294
    .line 763
    .local v23, "wifiOnly":Z
    new-instance v2, Ljava/lang/StringBuilder;

    #@296
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@299
    const-string/jumbo v3, "wifiOnly="

    #@29c
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@29f
    move-result-object v2

    #@2a0
    move/from16 v0, v23

    #@2a2
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@2a5
    move-result-object v2

    #@2a6
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2a9
    move-result-object v2

    #@2aa
    invoke-static {v2}, Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V

    #@2ad
    .line 764
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@2b0
    move-result-object v2

    #@2b1
    .line 765
    const v3, 0x107000f

    #@2b4
    .line 764
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    #@2b7
    move-result-object v18

    #@2b8
    .line 766
    .local v18, "naStrings":[Ljava/lang/String;
    const/4 v2, 0x0

    #@2b9
    move-object/from16 v0, v18

    #@2bb
    array-length v3, v0

    #@2bc
    :goto_1
    if-ge v2, v3, :cond_4

    #@2be
    aget-object v17, v18, v2

    #@2c0
    .line 768
    .local v17, "naString":Ljava/lang/String;
    :try_start_1
    new-instance v16, Landroid/net/NetworkConfig;

    #@2c2
    invoke-direct/range {v16 .. v17}, Landroid/net/NetworkConfig;-><init>(Ljava/lang/String;)V

    #@2c5
    .line 770
    .local v16, "n":Landroid/net/NetworkConfig;
    move-object/from16 v0, v16

    #@2c7
    iget v4, v0, Landroid/net/NetworkConfig;->type:I

    #@2c9
    const/16 v6, 0x11

    #@2cb
    if-le v4, v6, :cond_1

    #@2cd
    .line 771
    new-instance v4, Ljava/lang/StringBuilder;

    #@2cf
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@2d2
    const-string/jumbo v6, "Error in networkAttributes - ignoring attempt to define type "

    #@2d5
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2d8
    move-result-object v4

    #@2d9
    .line 772
    move-object/from16 v0, v16

    #@2db
    iget v6, v0, Landroid/net/NetworkConfig;->type:I

    #@2dd
    .line 771
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@2e0
    move-result-object v4

    #@2e1
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2e4
    move-result-object v4

    #@2e5
    invoke-static {v4}, Lcom/android/server/ConnectivityService;->loge(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    #@2e8
    .line 766
    .end local v16    # "n":Landroid/net/NetworkConfig;
    :goto_2
    add-int/lit8 v2, v2, 0x1

    #@2ea
    goto :goto_1

    #@2eb
    .line 747
    .end local v17    # "naString":Ljava/lang/String;
    .end local v18    # "naStrings":[Ljava/lang/String;
    .end local v21    # "powerManager":Landroid/os/PowerManager;
    .end local v23    # "wifiOnly":Z
    :catch_0
    move-exception v13

    #@2ec
    .line 749
    .local v13, "e":Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/StringBuilder;

    #@2ee
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@2f1
    const-string/jumbo v3, "unable to register INetworkPolicyListener"

    #@2f4
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2f7
    move-result-object v2

    #@2f8
    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@2fb
    move-result-object v2

    #@2fc
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2ff
    move-result-object v2

    #@300
    invoke-static {v2}, Lcom/android/server/ConnectivityService;->loge(Ljava/lang/String;)V

    #@303
    goto/16 :goto_0

    #@305
    .line 775
    .end local v13    # "e":Landroid/os/RemoteException;
    .restart local v16    # "n":Landroid/net/NetworkConfig;
    .restart local v17    # "naString":Ljava/lang/String;
    .restart local v18    # "naStrings":[Ljava/lang/String;
    .restart local v21    # "powerManager":Landroid/os/PowerManager;
    .restart local v23    # "wifiOnly":Z
    :cond_1
    if-eqz v23, :cond_2

    #@307
    :try_start_2
    move-object/from16 v0, v16

    #@309
    iget v4, v0, Landroid/net/NetworkConfig;->type:I

    #@30b
    invoke-static {v4}, Landroid/net/ConnectivityManager;->isNetworkTypeMobile(I)Z

    #@30e
    move-result v4

    #@30f
    if-eqz v4, :cond_2

    #@311
    .line 776
    new-instance v4, Ljava/lang/StringBuilder;

    #@313
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@316
    const-string/jumbo v6, "networkAttributes - ignoring mobile as this dev is wifiOnly "

    #@319
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@31c
    move-result-object v4

    #@31d
    .line 777
    move-object/from16 v0, v16

    #@31f
    iget v6, v0, Landroid/net/NetworkConfig;->type:I

    #@321
    .line 776
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@324
    move-result-object v4

    #@325
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@328
    move-result-object v4

    #@329
    invoke-static {v4}, Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V

    #@32c
    goto :goto_2

    #@32d
    .line 789
    .end local v16    # "n":Landroid/net/NetworkConfig;
    :catch_1
    move-exception v14

    #@32e
    .local v14, "e":Ljava/lang/Exception;
    goto :goto_2

    #@32f
    .line 780
    .end local v14    # "e":Ljava/lang/Exception;
    .restart local v16    # "n":Landroid/net/NetworkConfig;
    :cond_2
    move-object/from16 v0, p0

    #@331
    iget-object v4, v0, Lcom/android/server/ConnectivityService;->mNetConfigs:[Landroid/net/NetworkConfig;

    #@333
    move-object/from16 v0, v16

    #@335
    iget v6, v0, Landroid/net/NetworkConfig;->type:I

    #@337
    aget-object v4, v4, v6

    #@339
    if-eqz v4, :cond_3

    #@33b
    .line 781
    new-instance v4, Ljava/lang/StringBuilder;

    #@33d
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@340
    const-string/jumbo v6, "Error in networkAttributes - ignoring attempt to redefine type "

    #@343
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@346
    move-result-object v4

    #@347
    .line 782
    move-object/from16 v0, v16

    #@349
    iget v6, v0, Landroid/net/NetworkConfig;->type:I

    #@34b
    .line 781
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@34e
    move-result-object v4

    #@34f
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@352
    move-result-object v4

    #@353
    invoke-static {v4}, Lcom/android/server/ConnectivityService;->loge(Ljava/lang/String;)V

    #@356
    goto :goto_2

    #@357
    .line 785
    :cond_3
    move-object/from16 v0, p0

    #@359
    iget-object v4, v0, Lcom/android/server/ConnectivityService;->mLegacyTypeTracker:Lcom/android/server/ConnectivityService$LegacyTypeTracker;

    #@35b
    move-object/from16 v0, v16

    #@35d
    iget v6, v0, Landroid/net/NetworkConfig;->type:I

    #@35f
    invoke-virtual {v4, v6}, Lcom/android/server/ConnectivityService$LegacyTypeTracker;->addSupportedType(I)V

    #@362
    .line 787
    move-object/from16 v0, p0

    #@364
    iget-object v4, v0, Lcom/android/server/ConnectivityService;->mNetConfigs:[Landroid/net/NetworkConfig;

    #@366
    move-object/from16 v0, v16

    #@368
    iget v6, v0, Landroid/net/NetworkConfig;->type:I

    #@36a
    aput-object v16, v4, v6

    #@36c
    .line 788
    move-object/from16 v0, p0

    #@36e
    iget v4, v0, Lcom/android/server/ConnectivityService;->mNetworksDefined:I

    #@370
    add-int/lit8 v4, v4, 0x1

    #@372
    move-object/from16 v0, p0

    #@374
    iput v4, v0, Lcom/android/server/ConnectivityService;->mNetworksDefined:I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    #@376
    goto/16 :goto_2

    #@378
    .line 795
    .end local v16    # "n":Landroid/net/NetworkConfig;
    .end local v17    # "naString":Ljava/lang/String;
    :cond_4
    move-object/from16 v0, p0

    #@37a
    iget-object v2, v0, Lcom/android/server/ConnectivityService;->mNetConfigs:[Landroid/net/NetworkConfig;

    #@37c
    const/16 v3, 0x11

    #@37e
    aget-object v2, v2, v3

    #@380
    if-nez v2, :cond_5

    #@382
    .line 798
    move-object/from16 v0, p0

    #@384
    iget-object v2, v0, Lcom/android/server/ConnectivityService;->mLegacyTypeTracker:Lcom/android/server/ConnectivityService$LegacyTypeTracker;

    #@386
    const/16 v3, 0x11

    #@388
    invoke-virtual {v2, v3}, Lcom/android/server/ConnectivityService$LegacyTypeTracker;->addSupportedType(I)V

    #@38b
    .line 799
    move-object/from16 v0, p0

    #@38d
    iget v2, v0, Lcom/android/server/ConnectivityService;->mNetworksDefined:I

    #@38f
    add-int/lit8 v2, v2, 0x1

    #@391
    move-object/from16 v0, p0

    #@393
    iput v2, v0, Lcom/android/server/ConnectivityService;->mNetworksDefined:I

    #@395
    .line 804
    :cond_5
    new-instance v2, Ljava/util/ArrayList;

    #@397
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    #@39a
    move-object/from16 v0, p0

    #@39c
    iput-object v2, v0, Lcom/android/server/ConnectivityService;->mProtectedNetworks:Ljava/util/List;

    #@39e
    .line 805
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@3a1
    move-result-object v2

    #@3a2
    .line 806
    const v3, 0x1070010

    #@3a5
    .line 805
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getIntArray(I)[I

    #@3a8
    move-result-object v22

    #@3a9
    .line 807
    .local v22, "protectedNetworks":[I
    const/4 v2, 0x0

    #@3aa
    move-object/from16 v0, v22

    #@3ac
    array-length v3, v0

    #@3ad
    :goto_3
    if-ge v2, v3, :cond_7

    #@3af
    aget v20, v22, v2

    #@3b1
    .line 808
    .local v20, "p":I
    move-object/from16 v0, p0

    #@3b3
    iget-object v4, v0, Lcom/android/server/ConnectivityService;->mNetConfigs:[Landroid/net/NetworkConfig;

    #@3b5
    aget-object v4, v4, v20

    #@3b7
    if-eqz v4, :cond_6

    #@3b9
    move-object/from16 v0, p0

    #@3bb
    iget-object v4, v0, Lcom/android/server/ConnectivityService;->mProtectedNetworks:Ljava/util/List;

    #@3bd
    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@3c0
    move-result-object v6

    #@3c1
    invoke-interface {v4, v6}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    #@3c4
    move-result v4

    #@3c5
    if-nez v4, :cond_6

    #@3c7
    .line 809
    move-object/from16 v0, p0

    #@3c9
    iget-object v4, v0, Lcom/android/server/ConnectivityService;->mProtectedNetworks:Ljava/util/List;

    #@3cb
    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@3ce
    move-result-object v6

    #@3cf
    invoke-interface {v4, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@3d2
    .line 807
    :goto_4
    add-int/lit8 v2, v2, 0x1

    #@3d4
    goto :goto_3

    #@3d5
    .line 811
    :cond_6
    new-instance v4, Ljava/lang/StringBuilder;

    #@3d7
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@3da
    const-string/jumbo v6, "Ignoring protectedNetwork "

    #@3dd
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3e0
    move-result-object v4

    #@3e1
    move/from16 v0, v20

    #@3e3
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@3e6
    move-result-object v4

    #@3e7
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3ea
    move-result-object v4

    #@3eb
    invoke-static {v4}, Lcom/android/server/ConnectivityService;->loge(Ljava/lang/String;)V

    #@3ee
    goto :goto_4

    #@3ef
    .line 815
    .end local v20    # "p":I
    :cond_7
    const-string/jumbo v2, "cm.test.mode"

    #@3f2
    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    #@3f5
    move-result-object v2

    #@3f6
    const-string/jumbo v3, "true"

    #@3f9
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@3fc
    move-result v2

    #@3fd
    if-eqz v2, :cond_8

    #@3ff
    .line 816
    const-string/jumbo v2, "ro.build.type"

    #@402
    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    #@405
    move-result-object v2

    #@406
    const-string/jumbo v3, "eng"

    #@409
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@40c
    move-result v2

    #@40d
    .line 815
    :goto_5
    move-object/from16 v0, p0

    #@40f
    iput-boolean v2, v0, Lcom/android/server/ConnectivityService;->mTestMode:Z

    #@411
    .line 818
    new-instance v2, Lcom/android/server/connectivity/Tethering;

    #@413
    move-object/from16 v0, p0

    #@415
    iget-object v3, v0, Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;

    #@417
    move-object/from16 v0, p0

    #@419
    iget-object v4, v0, Lcom/android/server/ConnectivityService;->mNetd:Landroid/os/INetworkManagementService;

    #@41b
    move-object/from16 v0, p0

    #@41d
    iget-object v6, v0, Lcom/android/server/ConnectivityService;->mPolicyManager:Landroid/net/INetworkPolicyManager;

    #@41f
    move-object/from16 v0, p3

    #@421
    invoke-direct {v2, v3, v4, v0, v6}, Lcom/android/server/connectivity/Tethering;-><init>(Landroid/content/Context;Landroid/os/INetworkManagementService;Landroid/net/INetworkStatsService;Landroid/net/INetworkPolicyManager;)V

    #@424
    move-object/from16 v0, p0

    #@426
    iput-object v2, v0, Lcom/android/server/ConnectivityService;->mTethering:Lcom/android/server/connectivity/Tethering;

    #@428
    .line 820
    new-instance v2, Lcom/android/server/connectivity/PermissionMonitor;

    #@42a
    move-object/from16 v0, p0

    #@42c
    iget-object v3, v0, Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;

    #@42e
    move-object/from16 v0, p0

    #@430
    iget-object v4, v0, Lcom/android/server/ConnectivityService;->mNetd:Landroid/os/INetworkManagementService;

    #@432
    invoke-direct {v2, v3, v4}, Lcom/android/server/connectivity/PermissionMonitor;-><init>(Landroid/content/Context;Landroid/os/INetworkManagementService;)V

    #@435
    move-object/from16 v0, p0

    #@437
    iput-object v2, v0, Lcom/android/server/ConnectivityService;->mPermissionMonitor:Lcom/android/server/connectivity/PermissionMonitor;

    #@439
    .line 823
    new-instance v5, Landroid/content/IntentFilter;

    #@43b
    invoke-direct {v5}, Landroid/content/IntentFilter;-><init>()V

    #@43e
    .line 824
    .local v5, "intentFilter":Landroid/content/IntentFilter;
    const-string/jumbo v2, "android.intent.action.USER_STARTED"

    #@441
    invoke-virtual {v5, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    #@444
    .line 825
    const-string/jumbo v2, "android.intent.action.USER_STOPPED"

    #@447
    invoke-virtual {v5, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    #@44a
    .line 826
    const-string/jumbo v2, "android.intent.action.USER_ADDED"

    #@44d
    invoke-virtual {v5, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    #@450
    .line 827
    const-string/jumbo v2, "android.intent.action.USER_REMOVED"

    #@453
    invoke-virtual {v5, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    #@456
    .line 828
    const-string/jumbo v2, "android.intent.action.USER_UNLOCKED"

    #@459
    invoke-virtual {v5, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    #@45c
    .line 829
    move-object/from16 v0, p0

    #@45e
    iget-object v2, v0, Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;

    #@460
    .line 830
    move-object/from16 v0, p0

    #@462
    iget-object v3, v0, Lcom/android/server/ConnectivityService;->mUserIntentReceiver:Landroid/content/BroadcastReceiver;

    #@464
    sget-object v4, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    #@466
    const/4 v6, 0x0

    #@467
    const/4 v7, 0x0

    #@468
    .line 829
    invoke-virtual/range {v2 .. v7}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    #@46b
    .line 833
    :try_start_3
    move-object/from16 v0, p0

    #@46d
    iget-object v2, v0, Lcom/android/server/ConnectivityService;->mNetd:Landroid/os/INetworkManagementService;

    #@46f
    move-object/from16 v0, p0

    #@471
    iget-object v3, v0, Lcom/android/server/ConnectivityService;->mTethering:Lcom/android/server/connectivity/Tethering;

    #@473
    invoke-interface {v2, v3}, Landroid/os/INetworkManagementService;->registerObserver(Landroid/net/INetworkManagementEventObserver;)V

    #@476
    .line 834
    move-object/from16 v0, p0

    #@478
    iget-object v2, v0, Lcom/android/server/ConnectivityService;->mNetd:Landroid/os/INetworkManagementService;

    #@47a
    move-object/from16 v0, p0

    #@47c
    iget-object v3, v0, Lcom/android/server/ConnectivityService;->mDataActivityObserver:Landroid/net/INetworkManagementEventObserver;

    #@47e
    invoke-interface {v2, v3}, Landroid/os/INetworkManagementService;->registerObserver(Landroid/net/INetworkManagementEventObserver;)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_2

    #@481
    .line 840
    :goto_6
    new-instance v2, Ljava/util/ArrayList;

    #@483
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    #@486
    move-object/from16 v0, p0

    #@488
    iput-object v2, v0, Lcom/android/server/ConnectivityService;->mInetLog:Ljava/util/ArrayList;

    #@48a
    .line 843
    new-instance v2, Lcom/android/server/ConnectivityService$SettingsObserver;

    #@48c
    move-object/from16 v0, p0

    #@48e
    iget-object v3, v0, Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;

    #@490
    move-object/from16 v0, p0

    #@492
    iget-object v4, v0, Lcom/android/server/ConnectivityService;->mHandler:Lcom/android/server/ConnectivityService$InternalHandler;

    #@494
    invoke-direct {v2, v3, v4}, Lcom/android/server/ConnectivityService$SettingsObserver;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    #@497
    move-object/from16 v0, p0

    #@499
    iput-object v2, v0, Lcom/android/server/ConnectivityService;->mSettingsObserver:Lcom/android/server/ConnectivityService$SettingsObserver;

    #@49b
    .line 844
    invoke-direct/range {p0 .. p0}, Lcom/android/server/ConnectivityService;->registerSettingsCallbacks()V

    #@49e
    .line 846
    new-instance v2, Lcom/android/server/connectivity/DataConnectionStats;

    #@4a0
    move-object/from16 v0, p0

    #@4a2
    iget-object v3, v0, Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;

    #@4a4
    invoke-direct {v2, v3}, Lcom/android/server/connectivity/DataConnectionStats;-><init>(Landroid/content/Context;)V

    #@4a7
    move-object/from16 v0, p0

    #@4a9
    iput-object v2, v0, Lcom/android/server/ConnectivityService;->mDataConnectionStats:Lcom/android/server/connectivity/DataConnectionStats;

    #@4ab
    .line 847
    move-object/from16 v0, p0

    #@4ad
    iget-object v2, v0, Lcom/android/server/ConnectivityService;->mDataConnectionStats:Lcom/android/server/connectivity/DataConnectionStats;

    #@4af
    invoke-virtual {v2}, Lcom/android/server/connectivity/DataConnectionStats;->startMonitoring()V

    #@4b2
    .line 849
    new-instance v2, Lcom/android/server/connectivity/PacManager;

    #@4b4
    move-object/from16 v0, p0

    #@4b6
    iget-object v3, v0, Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;

    #@4b8
    move-object/from16 v0, p0

    #@4ba
    iget-object v4, v0, Lcom/android/server/ConnectivityService;->mHandler:Lcom/android/server/ConnectivityService$InternalHandler;

    #@4bc
    const/16 v6, 0x10

    #@4be
    invoke-direct {v2, v3, v4, v6}, Lcom/android/server/connectivity/PacManager;-><init>(Landroid/content/Context;Landroid/os/Handler;I)V

    #@4c1
    move-object/from16 v0, p0

    #@4c3
    iput-object v2, v0, Lcom/android/server/ConnectivityService;->mPacManager:Lcom/android/server/connectivity/PacManager;

    #@4c5
    .line 851
    const-string/jumbo v2, "user"

    #@4c8
    move-object/from16 v0, p1

    #@4ca
    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    #@4cd
    move-result-object v2

    #@4ce
    check-cast v2, Landroid/os/UserManager;

    #@4d0
    move-object/from16 v0, p0

    #@4d2
    iput-object v2, v0, Lcom/android/server/ConnectivityService;->mUserManager:Landroid/os/UserManager;

    #@4d4
    .line 853
    new-instance v2, Lcom/android/server/connectivity/KeepaliveTracker;

    #@4d6
    move-object/from16 v0, p0

    #@4d8
    iget-object v3, v0, Lcom/android/server/ConnectivityService;->mHandler:Lcom/android/server/ConnectivityService$InternalHandler;

    #@4da
    invoke-direct {v2, v3}, Lcom/android/server/connectivity/KeepaliveTracker;-><init>(Landroid/os/Handler;)V

    #@4dd
    move-object/from16 v0, p0

    #@4df
    iput-object v2, v0, Lcom/android/server/ConnectivityService;->mKeepaliveTracker:Lcom/android/server/connectivity/KeepaliveTracker;

    #@4e1
    .line 854
    new-instance v3, Lcom/android/server/connectivity/NetworkNotificationManager;

    #@4e3
    move-object/from16 v0, p0

    #@4e5
    iget-object v4, v0, Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;

    #@4e7
    move-object/from16 v0, p0

    #@4e9
    iget-object v6, v0, Lcom/android/server/ConnectivityService;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    #@4eb
    .line 855
    move-object/from16 v0, p0

    #@4ed
    iget-object v2, v0, Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;

    #@4ef
    const-class v7, Landroid/app/NotificationManager;

    #@4f1
    invoke-virtual {v2, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    #@4f4
    move-result-object v2

    #@4f5
    check-cast v2, Landroid/app/NotificationManager;

    #@4f7
    .line 854
    invoke-direct {v3, v4, v6, v2}, Lcom/android/server/connectivity/NetworkNotificationManager;-><init>(Landroid/content/Context;Landroid/telephony/TelephonyManager;Landroid/app/NotificationManager;)V

    #@4fa
    move-object/from16 v0, p0

    #@4fc
    iput-object v3, v0, Lcom/android/server/ConnectivityService;->mNotifier:Lcom/android/server/connectivity/NetworkNotificationManager;

    #@4fe
    .line 857
    move-object/from16 v0, p0

    #@500
    iget-object v2, v0, Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;

    #@502
    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    #@505
    move-result-object v2

    #@506
    .line 858
    const-string/jumbo v3, "network_switch_notification_daily_limit"

    #@509
    .line 859
    const/4 v4, 0x3

    #@50a
    .line 857
    invoke-static {v2, v3, v4}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    #@50d
    move-result v9

    #@50e
    .line 860
    .local v9, "dailyLimit":I
    move-object/from16 v0, p0

    #@510
    iget-object v2, v0, Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;

    #@512
    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    #@515
    move-result-object v2

    #@516
    .line 861
    const-string/jumbo v3, "network_switch_notification_rate_limit_millis"

    #@519
    .line 862
    const-wide/32 v6, 0xea60

    #@51c
    .line 860
    invoke-static {v2, v3, v6, v7}, Landroid/provider/Settings$Global;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    #@51f
    move-result-wide v10

    #@520
    .line 863
    .local v10, "rateLimit":J
    new-instance v6, Lcom/android/server/connectivity/LingerMonitor;

    #@522
    move-object/from16 v0, p0

    #@524
    iget-object v7, v0, Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;

    #@526
    move-object/from16 v0, p0

    #@528
    iget-object v8, v0, Lcom/android/server/ConnectivityService;->mNotifier:Lcom/android/server/connectivity/NetworkNotificationManager;

    #@52a
    invoke-direct/range {v6 .. v11}, Lcom/android/server/connectivity/LingerMonitor;-><init>(Landroid/content/Context;Lcom/android/server/connectivity/NetworkNotificationManager;IJ)V

    #@52d
    move-object/from16 v0, p0

    #@52f
    iput-object v6, v0, Lcom/android/server/ConnectivityService;->mLingerMonitor:Lcom/android/server/connectivity/LingerMonitor;

    #@531
    .line 866
    move-object/from16 v0, p0

    #@533
    iget-object v2, v0, Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;

    #@535
    move-object/from16 v0, p0

    #@537
    iget-object v3, v0, Lcom/android/server/ConnectivityService;->mHandler:Lcom/android/server/ConnectivityService$InternalHandler;

    #@539
    new-instance v4, Lcom/android/server/ConnectivityService$-void__init__android_content_Context_context_android_os_INetworkManagementService_netManager_android_net_INetworkStatsService_statsService_android_net_INetworkPolicyManager_policyManager_android_net_metrics_IpConnectivityLog_logger_LambdaImpl0;

    #@53b
    move-object/from16 v0, p0

    #@53d
    invoke-direct {v4, v0}, Lcom/android/server/ConnectivityService$-void__init__android_content_Context_context_android_os_INetworkManagementService_netManager_android_net_INetworkStatsService_statsService_android_net_INetworkPolicyManager_policyManager_android_net_metrics_IpConnectivityLog_logger_LambdaImpl0;-><init>(Lcom/android/server/ConnectivityService;)V

    #@540
    .line 865
    move-object/from16 v0, p0

    #@542
    invoke-virtual {v0, v2, v3, v4}, Lcom/android/server/ConnectivityService;->createAvoidBadWifiTracker(Landroid/content/Context;Landroid/os/Handler;Ljava/lang/Runnable;)Landroid/net/util/AvoidBadWifiTracker;

    #@545
    move-result-object v2

    #@546
    move-object/from16 v0, p0

    #@548
    iput-object v2, v0, Lcom/android/server/ConnectivityService;->mAvoidBadWifiTracker:Landroid/net/util/AvoidBadWifiTracker;

    #@54a
    .line 705
    return-void

    #@54b
    .line 815
    .end local v5    # "intentFilter":Landroid/content/IntentFilter;
    .end local v9    # "dailyLimit":I
    .end local v10    # "rateLimit":J
    :cond_8
    const/4 v2, 0x0

    #@54c
    goto/16 :goto_5

    #@54e
    .line 835
    .restart local v5    # "intentFilter":Landroid/content/IntentFilter;
    :catch_2
    move-exception v13

    #@54f
    .line 836
    .restart local v13    # "e":Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/StringBuilder;

    #@551
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@554
    const-string/jumbo v3, "Error registering observer :"

    #@557
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@55a
    move-result-object v2

    #@55b
    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@55e
    move-result-object v2

    #@55f
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@562
    move-result-object v2

    #@563
    invoke-static {v2}, Lcom/android/server/ConnectivityService;->loge(Ljava/lang/String;)V

    #@566
    goto/16 :goto_6
.end method

.method private addLegacyRouteToHost(Landroid/net/LinkProperties;Ljava/net/InetAddress;II)Z
    .locals 5
    .param p1, "lp"    # Landroid/net/LinkProperties;
    .param p2, "addr"    # Ljava/net/InetAddress;
    .param p3, "netId"    # I
    .param p4, "uid"    # I

    #@0
    .prologue
    .line 1477
    invoke-virtual {p1}, Landroid/net/LinkProperties;->getAllRoutes()Ljava/util/List;

    #@3
    move-result-object v3

    #@4
    invoke-static {v3, p2}, Landroid/net/RouteInfo;->selectBestRoute(Ljava/util/Collection;Ljava/net/InetAddress;)Landroid/net/RouteInfo;

    #@7
    move-result-object v0

    #@8
    .line 1478
    .local v0, "bestRoute":Landroid/net/RouteInfo;
    if-nez v0, :cond_0

    #@a
    .line 1479
    invoke-virtual {p1}, Landroid/net/LinkProperties;->getInterfaceName()Ljava/lang/String;

    #@d
    move-result-object v3

    #@e
    invoke-static {p2, v3}, Landroid/net/RouteInfo;->makeHostRoute(Ljava/net/InetAddress;Ljava/lang/String;)Landroid/net/RouteInfo;

    #@11
    move-result-object v0

    #@12
    .line 1491
    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    #@14
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@17
    const-string/jumbo v4, "Adding legacy route "

    #@1a
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1d
    move-result-object v3

    #@1e
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@21
    move-result-object v3

    #@22
    .line 1492
    const-string/jumbo v4, " for UID/PID "

    #@25
    .line 1491
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@28
    move-result-object v3

    #@29
    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@2c
    move-result-object v3

    #@2d
    .line 1492
    const-string/jumbo v4, "/"

    #@30
    .line 1491
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@33
    move-result-object v3

    #@34
    .line 1492
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    #@37
    move-result v4

    #@38
    .line 1491
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@3b
    move-result-object v3

    #@3c
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3f
    move-result-object v3

    #@40
    invoke-static {v3}, Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V

    #@43
    .line 1494
    :try_start_0
    iget-object v3, p0, Lcom/android/server/ConnectivityService;->mNetd:Landroid/os/INetworkManagementService;

    #@45
    invoke-interface {v3, p3, v0, p4}, Landroid/os/INetworkManagementService;->addLegacyRouteForNetId(ILandroid/net/RouteInfo;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    #@48
    .line 1500
    const/4 v3, 0x1

    #@49
    return v3

    #@4a
    .line 1481
    :cond_0
    invoke-virtual {v0}, Landroid/net/RouteInfo;->getInterface()Ljava/lang/String;

    #@4d
    move-result-object v2

    #@4e
    .line 1482
    .local v2, "iface":Ljava/lang/String;
    invoke-virtual {v0}, Landroid/net/RouteInfo;->getGateway()Ljava/net/InetAddress;

    #@51
    move-result-object v3

    #@52
    invoke-virtual {v3, p2}, Ljava/net/InetAddress;->equals(Ljava/lang/Object;)Z

    #@55
    move-result v3

    #@56
    if-eqz v3, :cond_1

    #@58
    .line 1484
    invoke-static {p2, v2}, Landroid/net/RouteInfo;->makeHostRoute(Ljava/net/InetAddress;Ljava/lang/String;)Landroid/net/RouteInfo;

    #@5b
    move-result-object v0

    #@5c
    goto :goto_0

    #@5d
    .line 1488
    :cond_1
    invoke-virtual {v0}, Landroid/net/RouteInfo;->getGateway()Ljava/net/InetAddress;

    #@60
    move-result-object v3

    #@61
    invoke-static {p2, v3, v2}, Landroid/net/RouteInfo;->makeHostRoute(Ljava/net/InetAddress;Ljava/net/InetAddress;Ljava/lang/String;)Landroid/net/RouteInfo;

    #@64
    move-result-object v0

    #@65
    goto :goto_0

    #@66
    .line 1495
    .end local v2    # "iface":Ljava/lang/String;
    :catch_0
    move-exception v1

    #@67
    .line 1497
    .local v1, "e":Ljava/lang/Exception;
    new-instance v3, Ljava/lang/StringBuilder;

    #@69
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@6c
    const-string/jumbo v4, "Exception trying to add a route: "

    #@6f
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@72
    move-result-object v3

    #@73
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@76
    move-result-object v3

    #@77
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@7a
    move-result-object v3

    #@7b
    invoke-static {v3}, Lcom/android/server/ConnectivityService;->loge(Ljava/lang/String;)V

    #@7e
    .line 1498
    const/4 v3, 0x0

    #@7f
    return v3
.end method

.method private addValidationLogs(Landroid/util/LocalLog$ReadOnlyLocalLog;Landroid/net/Network;Ljava/lang/String;)V
    .locals 3
    .param p1, "log"    # Landroid/util/LocalLog$ReadOnlyLocalLog;
    .param p2, "network"    # Landroid/net/Network;
    .param p3, "networkExtraInfo"    # Ljava/lang/String;

    #@0
    .prologue
    .line 490
    iget-object v1, p0, Lcom/android/server/ConnectivityService;->mValidationLogs:Ljava/util/ArrayDeque;

    #@2
    monitor-enter v1

    #@3
    .line 491
    :goto_0
    :try_start_0
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mValidationLogs:Ljava/util/ArrayDeque;

    #@5
    invoke-virtual {v0}, Ljava/util/ArrayDeque;->size()I

    #@8
    move-result v0

    #@9
    const/16 v2, 0xa

    #@b
    if-lt v0, v2, :cond_0

    #@d
    .line 492
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mValidationLogs:Ljava/util/ArrayDeque;

    #@f
    invoke-virtual {v0}, Ljava/util/ArrayDeque;->removeLast()Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@12
    goto :goto_0

    #@13
    .line 490
    :catchall_0
    move-exception v0

    #@14
    monitor-exit v1

    #@15
    throw v0

    #@16
    .line 494
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mValidationLogs:Ljava/util/ArrayDeque;

    #@18
    new-instance v2, Lcom/android/server/ConnectivityService$ValidationLog;

    #@1a
    invoke-direct {v2, p2, p3, p1}, Lcom/android/server/ConnectivityService$ValidationLog;-><init>(Landroid/net/Network;Ljava/lang/String;Landroid/util/LocalLog$ReadOnlyLocalLog;)V

    #@1d
    invoke-virtual {v0, v2}, Ljava/util/ArrayDeque;->addFirst(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@20
    monitor-exit v1

    #@21
    .line 489
    return-void
.end method

.method private argsContain([Ljava/lang/String;Ljava/lang/String;)Z
    .locals 5
    .param p1, "args"    # [Ljava/lang/String;
    .param p2, "target"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 1929
    array-length v3, p1

    #@2
    move v1, v2

    #@3
    :goto_0
    if-ge v1, v3, :cond_1

    #@5
    aget-object v0, p1, v1

    #@7
    .line 1930
    .local v0, "arg":Ljava/lang/String;
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@a
    move-result v4

    #@b
    if-eqz v4, :cond_0

    #@d
    const/4 v1, 0x1

    #@e
    return v1

    #@f
    .line 1929
    :cond_0
    add-int/lit8 v1, v1, 0x1

    #@11
    goto :goto_0

    #@12
    .line 1932
    .end local v0    # "arg":Ljava/lang/String;
    :cond_1
    return v2
.end method

.method private callCallbackForRequest(Lcom/android/server/ConnectivityService$NetworkRequestInfo;Lcom/android/server/connectivity/NetworkAgentInfo;II)V
    .locals 6
    .param p1, "nri"    # Lcom/android/server/ConnectivityService$NetworkRequestInfo;
    .param p2, "networkAgent"    # Lcom/android/server/connectivity/NetworkAgentInfo;
    .param p3, "notificationType"    # I
    .param p4, "arg1"    # I

    #@0
    .prologue
    .line 4734
    iget-object v3, p1, Lcom/android/server/ConnectivityService$NetworkRequestInfo;->messenger:Landroid/os/Messenger;

    #@2
    if-nez v3, :cond_0

    #@4
    return-void

    #@5
    .line 4735
    :cond_0
    new-instance v0, Landroid/os/Bundle;

    #@7
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    #@a
    .line 4736
    .local v0, "bundle":Landroid/os/Bundle;
    const-class v3, Landroid/net/NetworkRequest;

    #@c
    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    #@f
    move-result-object v3

    #@10
    .line 4737
    new-instance v4, Landroid/net/NetworkRequest;

    #@12
    iget-object v5, p1, Lcom/android/server/ConnectivityService$NetworkRequestInfo;->request:Landroid/net/NetworkRequest;

    #@14
    invoke-direct {v4, v5}, Landroid/net/NetworkRequest;-><init>(Landroid/net/NetworkRequest;)V

    #@17
    .line 4736
    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    #@1a
    .line 4738
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    #@1d
    move-result-object v2

    #@1e
    .line 4739
    .local v2, "msg":Landroid/os/Message;
    const v3, 0x80005

    #@21
    if-eq p3, v3, :cond_1

    #@23
    .line 4740
    const v3, 0x80008

    #@26
    if-eq p3, v3, :cond_1

    #@28
    .line 4741
    const-class v3, Landroid/net/Network;

    #@2a
    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    #@2d
    move-result-object v3

    #@2e
    iget-object v4, p2, Lcom/android/server/connectivity/NetworkAgentInfo;->network:Landroid/net/Network;

    #@30
    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    #@33
    .line 4743
    :cond_1
    packed-switch p3, :pswitch_data_0

    #@36
    .line 4759
    :goto_0
    :pswitch_0
    iput p3, v2, Landroid/os/Message;->what:I

    #@38
    .line 4760
    invoke-virtual {v2, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    #@3b
    .line 4766
    :try_start_0
    iget-object v3, p1, Lcom/android/server/ConnectivityService$NetworkRequestInfo;->messenger:Landroid/os/Messenger;

    #@3d
    invoke-virtual {v3, v2}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@40
    .line 4733
    :goto_1
    return-void

    #@41
    .line 4745
    :pswitch_1
    iput p4, v2, Landroid/os/Message;->arg1:I

    #@43
    goto :goto_0

    #@44
    .line 4749
    :pswitch_2
    const-class v3, Landroid/net/NetworkCapabilities;

    #@46
    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    #@49
    move-result-object v3

    #@4a
    .line 4750
    new-instance v4, Landroid/net/NetworkCapabilities;

    #@4c
    iget-object v5, p2, Lcom/android/server/connectivity/NetworkAgentInfo;->networkCapabilities:Landroid/net/NetworkCapabilities;

    #@4e
    invoke-direct {v4, v5}, Landroid/net/NetworkCapabilities;-><init>(Landroid/net/NetworkCapabilities;)V

    #@51
    .line 4749
    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    #@54
    goto :goto_0

    #@55
    .line 4754
    :pswitch_3
    const-class v3, Landroid/net/LinkProperties;

    #@57
    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    #@5a
    move-result-object v3

    #@5b
    .line 4755
    new-instance v4, Landroid/net/LinkProperties;

    #@5d
    iget-object v5, p2, Lcom/android/server/connectivity/NetworkAgentInfo;->linkProperties:Landroid/net/LinkProperties;

    #@5f
    invoke-direct {v4, v5}, Landroid/net/LinkProperties;-><init>(Landroid/net/LinkProperties;)V

    #@62
    .line 4754
    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    #@65
    goto :goto_0

    #@66
    .line 4767
    :catch_0
    move-exception v1

    #@67
    .line 4769
    .local v1, "e":Landroid/os/RemoteException;
    new-instance v3, Ljava/lang/StringBuilder;

    #@69
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@6c
    const-string/jumbo v4, "RemoteException caught trying to send a callback msg for "

    #@6f
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@72
    move-result-object v3

    #@73
    iget-object v4, p1, Lcom/android/server/ConnectivityService$NetworkRequestInfo;->request:Landroid/net/NetworkRequest;

    #@75
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@78
    move-result-object v3

    #@79
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@7c
    move-result-object v3

    #@7d
    invoke-static {v3}, Lcom/android/server/ConnectivityService;->loge(Ljava/lang/String;)V

    #@80
    goto :goto_1

    #@81
    .line 4743
    nop

    #@82
    :pswitch_data_0
    .packed-switch 0x80003
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private canonicalizeProxyInfo(Landroid/net/ProxyInfo;)Landroid/net/ProxyInfo;
    .locals 2
    .param p1, "proxy"    # Landroid/net/ProxyInfo;

    #@0
    .prologue
    .line 3219
    if-eqz p1, :cond_1

    #@2
    invoke-virtual {p1}, Landroid/net/ProxyInfo;->getHost()Ljava/lang/String;

    #@5
    move-result-object v0

    #@6
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@9
    move-result v0

    #@a
    if-eqz v0, :cond_1

    #@c
    .line 3220
    invoke-virtual {p1}, Landroid/net/ProxyInfo;->getPacFileUrl()Landroid/net/Uri;

    #@f
    move-result-object v0

    #@10
    if-eqz v0, :cond_0

    #@12
    sget-object v0, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    #@14
    invoke-virtual {p1}, Landroid/net/ProxyInfo;->getPacFileUrl()Landroid/net/Uri;

    #@17
    move-result-object v1

    #@18
    invoke-virtual {v0, v1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    #@1b
    move-result v0

    #@1c
    .line 3219
    if-eqz v0, :cond_1

    #@1e
    .line 3221
    :cond_0
    const/4 p1, 0x0

    #@1f
    .line 3223
    .end local p1    # "proxy":Landroid/net/ProxyInfo;
    :cond_1
    return-object p1
.end method

.method private static checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .param p1, "message"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    #@0
    .prologue
    .line 3456
    .local p0, "value":Ljava/lang/Object;, "TT;"
    if-nez p0, :cond_0

    #@2
    .line 3457
    new-instance v0, Ljava/lang/NullPointerException;

    #@4
    invoke-direct {v0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@7
    throw v0

    #@8
    .line 3459
    :cond_0
    return-object p0
.end method

.method private createInternetRequestForTransport(ILandroid/net/NetworkRequest$Type;)Landroid/net/NetworkRequest;
    .locals 4
    .param p1, "transportType"    # I
    .param p2, "type"    # Landroid/net/NetworkRequest$Type;

    #@0
    .prologue
    const/4 v3, -0x1

    #@1
    .line 871
    new-instance v0, Landroid/net/NetworkCapabilities;

    #@3
    invoke-direct {v0}, Landroid/net/NetworkCapabilities;-><init>()V

    #@6
    .line 872
    .local v0, "netCap":Landroid/net/NetworkCapabilities;
    const/16 v1, 0xc

    #@8
    invoke-virtual {v0, v1}, Landroid/net/NetworkCapabilities;->addCapability(I)Landroid/net/NetworkCapabilities;

    #@b
    .line 873
    const/16 v1, 0xd

    #@d
    invoke-virtual {v0, v1}, Landroid/net/NetworkCapabilities;->addCapability(I)Landroid/net/NetworkCapabilities;

    #@10
    .line 874
    if-le p1, v3, :cond_0

    #@12
    .line 875
    invoke-virtual {v0, p1}, Landroid/net/NetworkCapabilities;->addTransportType(I)Landroid/net/NetworkCapabilities;

    #@15
    .line 877
    :cond_0
    new-instance v1, Landroid/net/NetworkRequest;

    #@17
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->nextNetworkRequestId()I

    #@1a
    move-result v2

    #@1b
    invoke-direct {v1, v0, v3, v2, p2}, Landroid/net/NetworkRequest;-><init>(Landroid/net/NetworkCapabilities;IILandroid/net/NetworkRequest$Type;)V

    #@1e
    return-object v1
.end method

.method private createVpnInfo(Lcom/android/server/connectivity/Vpn;)Lcom/android/internal/net/VpnInfo;
    .locals 7
    .param p1, "vpn"    # Lcom/android/server/connectivity/Vpn;

    #@0
    .prologue
    const/4 v6, 0x0

    #@1
    const/4 v4, 0x0

    #@2
    .line 3593
    invoke-virtual {p1}, Lcom/android/server/connectivity/Vpn;->getVpnInfo()Lcom/android/internal/net/VpnInfo;

    #@5
    move-result-object v1

    #@6
    .line 3594
    .local v1, "info":Lcom/android/internal/net/VpnInfo;
    if-nez v1, :cond_0

    #@8
    .line 3595
    return-object v4

    #@9
    .line 3597
    :cond_0
    invoke-virtual {p1}, Lcom/android/server/connectivity/Vpn;->getUnderlyingNetworks()[Landroid/net/Network;

    #@c
    move-result-object v3

    #@d
    .line 3600
    .local v3, "underlyingNetworks":[Landroid/net/Network;
    if-nez v3, :cond_3

    #@f
    .line 3601
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->getDefaultNetwork()Lcom/android/server/connectivity/NetworkAgentInfo;

    #@12
    move-result-object v0

    #@13
    .line 3602
    .local v0, "defaultNetwork":Lcom/android/server/connectivity/NetworkAgentInfo;
    if-eqz v0, :cond_1

    #@15
    iget-object v5, v0, Lcom/android/server/connectivity/NetworkAgentInfo;->linkProperties:Landroid/net/LinkProperties;

    #@17
    if-eqz v5, :cond_1

    #@19
    .line 3603
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->getDefaultNetwork()Lcom/android/server/connectivity/NetworkAgentInfo;

    #@1c
    move-result-object v5

    #@1d
    iget-object v5, v5, Lcom/android/server/connectivity/NetworkAgentInfo;->linkProperties:Landroid/net/LinkProperties;

    #@1f
    invoke-virtual {v5}, Landroid/net/LinkProperties;->getInterfaceName()Ljava/lang/String;

    #@22
    move-result-object v5

    #@23
    iput-object v5, v1, Lcom/android/internal/net/VpnInfo;->primaryUnderlyingIface:Ljava/lang/String;

    #@25
    .line 3611
    .end local v0    # "defaultNetwork":Lcom/android/server/connectivity/NetworkAgentInfo;
    :cond_1
    :goto_0
    iget-object v5, v1, Lcom/android/internal/net/VpnInfo;->primaryUnderlyingIface:Ljava/lang/String;

    #@27
    if-nez v5, :cond_2

    #@29
    move-object v1, v4

    #@2a
    .end local v1    # "info":Lcom/android/internal/net/VpnInfo;
    :cond_2
    return-object v1

    #@2b
    .line 3605
    .restart local v1    # "info":Lcom/android/internal/net/VpnInfo;
    :cond_3
    array-length v5, v3

    #@2c
    if-lez v5, :cond_1

    #@2e
    .line 3606
    aget-object v5, v3, v6

    #@30
    invoke-virtual {p0, v5}, Lcom/android/server/ConnectivityService;->getLinkProperties(Landroid/net/Network;)Landroid/net/LinkProperties;

    #@33
    move-result-object v2

    #@34
    .line 3607
    .local v2, "linkProperties":Landroid/net/LinkProperties;
    if-eqz v2, :cond_1

    #@36
    .line 3608
    invoke-virtual {v2}, Landroid/net/LinkProperties;->getInterfaceName()Ljava/lang/String;

    #@39
    move-result-object v5

    #@3a
    iput-object v5, v1, Lcom/android/internal/net/VpnInfo;->primaryUnderlyingIface:Ljava/lang/String;

    #@3c
    goto :goto_0
.end method

.method private dumpAvoidBadWifiSettings(Lcom/android/internal/util/IndentingPrintWriter;)V
    .locals 7
    .param p1, "pw"    # Lcom/android/internal/util/IndentingPrintWriter;

    #@0
    .prologue
    .line 2792
    iget-object v5, p0, Lcom/android/server/ConnectivityService;->mAvoidBadWifiTracker:Landroid/net/util/AvoidBadWifiTracker;

    #@2
    invoke-virtual {v5}, Landroid/net/util/AvoidBadWifiTracker;->configRestrictsAvoidBadWifi()Z

    #@5
    move-result v0

    #@6
    .line 2793
    .local v0, "configRestrict":Z
    if-nez v0, :cond_0

    #@8
    .line 2794
    const-string/jumbo v5, "Bad Wi-Fi avoidance: unrestricted"

    #@b
    invoke-virtual {p1, v5}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    #@e
    .line 2795
    return-void

    #@f
    .line 2798
    :cond_0
    new-instance v5, Ljava/lang/StringBuilder;

    #@11
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@14
    const-string/jumbo v6, "Bad Wi-Fi avoidance: "

    #@17
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1a
    move-result-object v5

    #@1b
    invoke-virtual {p0}, Lcom/android/server/ConnectivityService;->avoidBadWifi()Z

    #@1e
    move-result v6

    #@1f
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@22
    move-result-object v5

    #@23
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@26
    move-result-object v5

    #@27
    invoke-virtual {p1, v5}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    #@2a
    .line 2799
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()V

    #@2d
    .line 2800
    new-instance v5, Ljava/lang/StringBuilder;

    #@2f
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@32
    const-string/jumbo v6, "Config restrict:   "

    #@35
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@38
    move-result-object v5

    #@39
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@3c
    move-result-object v5

    #@3d
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@40
    move-result-object v5

    #@41
    invoke-virtual {p1, v5}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    #@44
    .line 2802
    iget-object v5, p0, Lcom/android/server/ConnectivityService;->mAvoidBadWifiTracker:Landroid/net/util/AvoidBadWifiTracker;

    #@46
    invoke-virtual {v5}, Landroid/net/util/AvoidBadWifiTracker;->getSettingsValue()Ljava/lang/String;

    #@49
    move-result-object v4

    #@4a
    .line 2805
    .local v4, "value":Ljava/lang/String;
    const-string/jumbo v5, "0"

    #@4d
    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@50
    move-result v5

    #@51
    if-eqz v5, :cond_2

    #@53
    .line 2806
    const-string/jumbo v1, "get stuck"

    #@56
    .line 2814
    .local v1, "description":Ljava/lang/String;
    :goto_0
    new-instance v5, Ljava/lang/StringBuilder;

    #@58
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@5b
    const-string/jumbo v6, "User setting:      "

    #@5e
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@61
    move-result-object v5

    #@62
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@65
    move-result-object v5

    #@66
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@69
    move-result-object v5

    #@6a
    invoke-virtual {p1, v5}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    #@6d
    .line 2815
    const-string/jumbo v5, "Network overrides:"

    #@70
    invoke-virtual {p1, v5}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    #@73
    .line 2816
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()V

    #@76
    .line 2817
    iget-object v5, p0, Lcom/android/server/ConnectivityService;->mNetworkAgentInfos:Ljava/util/HashMap;

    #@78
    invoke-virtual {v5}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    #@7b
    move-result-object v5

    #@7c
    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@7f
    move-result-object v3

    #@80
    .local v3, "nai$iterator":Ljava/util/Iterator;
    :cond_1
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    #@83
    move-result v5

    #@84
    if-eqz v5, :cond_5

    #@86
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@89
    move-result-object v2

    #@8a
    check-cast v2, Lcom/android/server/connectivity/NetworkAgentInfo;

    #@8c
    .line 2818
    .local v2, "nai":Lcom/android/server/connectivity/NetworkAgentInfo;
    iget-boolean v5, v2, Lcom/android/server/connectivity/NetworkAgentInfo;->avoidUnvalidated:Z

    #@8e
    if-eqz v5, :cond_1

    #@90
    .line 2819
    invoke-virtual {v2}, Lcom/android/server/connectivity/NetworkAgentInfo;->name()Ljava/lang/String;

    #@93
    move-result-object v5

    #@94
    invoke-virtual {p1, v5}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    #@97
    goto :goto_1

    #@98
    .line 2807
    .end local v1    # "description":Ljava/lang/String;
    .end local v2    # "nai":Lcom/android/server/connectivity/NetworkAgentInfo;
    .end local v3    # "nai$iterator":Ljava/util/Iterator;
    :cond_2
    if-nez v4, :cond_3

    #@9a
    .line 2808
    const-string/jumbo v1, "prompt"

    #@9d
    .restart local v1    # "description":Ljava/lang/String;
    goto :goto_0

    #@9e
    .line 2809
    .end local v1    # "description":Ljava/lang/String;
    :cond_3
    const-string/jumbo v5, "1"

    #@a1
    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@a4
    move-result v5

    #@a5
    if-eqz v5, :cond_4

    #@a7
    .line 2810
    const-string/jumbo v1, "avoid"

    #@aa
    .restart local v1    # "description":Ljava/lang/String;
    goto :goto_0

    #@ab
    .line 2812
    .end local v1    # "description":Ljava/lang/String;
    :cond_4
    new-instance v5, Ljava/lang/StringBuilder;

    #@ad
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@b0
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b3
    move-result-object v5

    #@b4
    const-string/jumbo v6, " (?)"

    #@b7
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@ba
    move-result-object v5

    #@bb
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@be
    move-result-object v1

    #@bf
    .restart local v1    # "description":Ljava/lang/String;
    goto :goto_0

    #@c0
    .line 2822
    .restart local v3    # "nai$iterator":Ljava/util/Iterator;
    :cond_5
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()V

    #@c3
    .line 2823
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()V

    #@c6
    .line 2791
    return-void
.end method

.method private dumpNetworkDiagnostics(Lcom/android/internal/util/IndentingPrintWriter;)V
    .locals 12
    .param p1, "pw"    # Lcom/android/internal/util/IndentingPrintWriter;

    #@0
    .prologue
    .line 1936
    new-instance v6, Ljava/util/ArrayList;

    #@2
    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    #@5
    .line 1937
    .local v6, "netDiags":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/connectivity/NetworkDiagnostics;>;"
    const-wide/16 v0, 0x1388

    #@7
    .line 1938
    .local v0, "DIAG_TIME_MS":J
    iget-object v7, p0, Lcom/android/server/ConnectivityService;->mNetworkAgentInfos:Ljava/util/HashMap;

    #@9
    invoke-virtual {v7}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    #@c
    move-result-object v7

    #@d
    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@10
    move-result-object v3

    #@11
    .local v3, "nai$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    #@14
    move-result v7

    #@15
    if-eqz v7, :cond_0

    #@17
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@1a
    move-result-object v2

    #@1b
    check-cast v2, Lcom/android/server/connectivity/NetworkAgentInfo;

    #@1d
    .line 1940
    .local v2, "nai":Lcom/android/server/connectivity/NetworkAgentInfo;
    new-instance v7, Lcom/android/server/connectivity/NetworkDiagnostics;

    #@1f
    .line 1941
    iget-object v8, v2, Lcom/android/server/connectivity/NetworkAgentInfo;->network:Landroid/net/Network;

    #@21
    .line 1942
    new-instance v9, Landroid/net/LinkProperties;

    #@23
    iget-object v10, v2, Lcom/android/server/connectivity/NetworkAgentInfo;->linkProperties:Landroid/net/LinkProperties;

    #@25
    invoke-direct {v9, v10}, Landroid/net/LinkProperties;-><init>(Landroid/net/LinkProperties;)V

    #@28
    .line 1943
    const-wide/16 v10, 0x1388

    #@2a
    .line 1940
    invoke-direct {v7, v8, v9, v10, v11}, Lcom/android/server/connectivity/NetworkDiagnostics;-><init>(Landroid/net/Network;Landroid/net/LinkProperties;J)V

    #@2d
    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@30
    goto :goto_0

    #@31
    .line 1946
    .end local v2    # "nai":Lcom/android/server/connectivity/NetworkAgentInfo;
    :cond_0
    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@34
    move-result-object v5

    #@35
    .local v5, "netDiag$iterator":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    #@38
    move-result v7

    #@39
    if-eqz v7, :cond_1

    #@3b
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@3e
    move-result-object v4

    #@3f
    check-cast v4, Lcom/android/server/connectivity/NetworkDiagnostics;

    #@41
    .line 1947
    .local v4, "netDiag":Lcom/android/server/connectivity/NetworkDiagnostics;
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    #@44
    .line 1948
    invoke-virtual {v4}, Lcom/android/server/connectivity/NetworkDiagnostics;->waitForMeasurements()V

    #@47
    .line 1949
    invoke-virtual {v4, p1}, Lcom/android/server/connectivity/NetworkDiagnostics;->dump(Lcom/android/internal/util/IndentingPrintWriter;)V

    #@4a
    goto :goto_1

    #@4b
    .line 1935
    .end local v4    # "netDiag":Lcom/android/server/connectivity/NetworkDiagnostics;
    :cond_1
    return-void
.end method

.method private enforceAccessPermission()V
    .locals 3

    #@0
    .prologue
    .line 1599
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;

    #@2
    .line 1600
    const-string/jumbo v1, "android.permission.ACCESS_NETWORK_STATE"

    #@5
    .line 1601
    const-string/jumbo v2, "ConnectivityService"

    #@8
    .line 1599
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    #@b
    .line 1598
    return-void
.end method

.method private enforceChangePermission()V
    .locals 1

    #@0
    .prologue
    .line 1605
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;

    #@2
    invoke-static {v0}, Landroid/net/ConnectivityManager;->enforceChangePermission(Landroid/content/Context;)V

    #@5
    .line 1604
    return-void
.end method

.method private enforceConnectivityInternalPermission()V
    .locals 3

    #@0
    .prologue
    .line 1615
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;

    #@2
    .line 1616
    const-string/jumbo v1, "android.permission.CONNECTIVITY_INTERNAL"

    #@5
    .line 1617
    const-string/jumbo v2, "ConnectivityService"

    #@8
    .line 1615
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    #@b
    .line 1614
    return-void
.end method

.method private enforceConnectivityRestrictedNetworksPermission()V
    .locals 4

    #@0
    .prologue
    .line 1622
    :try_start_0
    iget-object v1, p0, Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;

    #@2
    .line 1623
    const-string/jumbo v2, "android.permission.CONNECTIVITY_USE_RESTRICTED_NETWORKS"

    #@5
    .line 1624
    const-string/jumbo v3, "ConnectivityService"

    #@8
    .line 1622
    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    #@b
    .line 1625
    return-void

    #@c
    .line 1626
    :catch_0
    move-exception v0

    #@d
    .line 1627
    .local v0, "e":Ljava/lang/SecurityException;
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->enforceConnectivityInternalPermission()V

    #@10
    .line 1620
    return-void
.end method

.method private enforceCrossUserPermission(I)V
    .locals 3
    .param p1, "userId"    # I

    #@0
    .prologue
    .line 1583
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    #@3
    move-result v0

    #@4
    if-ne p1, v0, :cond_0

    #@6
    .line 1585
    return-void

    #@7
    .line 1587
    :cond_0
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;

    #@9
    .line 1588
    const-string/jumbo v1, "android.permission.INTERACT_ACROSS_USERS_FULL"

    #@c
    .line 1589
    const-string/jumbo v2, "ConnectivityService"

    #@f
    .line 1587
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    #@12
    .line 1582
    return-void
.end method

.method private enforceInternetPermission()V
    .locals 3

    #@0
    .prologue
    .line 1593
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;

    #@2
    .line 1594
    const-string/jumbo v1, "android.permission.INTERNET"

    #@5
    .line 1595
    const-string/jumbo v2, "ConnectivityService"

    #@8
    .line 1593
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    #@b
    .line 1592
    return-void
.end method

.method private enforceKeepalivePermission()V
    .locals 3

    #@0
    .prologue
    .line 1631
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;

    #@2
    const-string/jumbo v1, "android.permission.PACKET_KEEPALIVE_OFFLOAD"

    #@5
    const-string/jumbo v2, "ConnectivityService"

    #@8
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    #@b
    .line 1630
    return-void
.end method

.method private enforceMeteredApnPolicy(Landroid/net/NetworkCapabilities;)V
    .locals 6
    .param p1, "networkCapabilities"    # Landroid/net/NetworkCapabilities;

    #@0
    .prologue
    const/16 v5, 0xb

    #@2
    .line 4198
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    #@5
    move-result v0

    #@6
    .line 4199
    .local v0, "uid":I
    invoke-direct {p0, v0}, Lcom/android/server/ConnectivityService;->isSystem(I)Z

    #@9
    move-result v2

    #@a
    if-eqz v2, :cond_0

    #@c
    .line 4200
    return-void

    #@d
    .line 4203
    :cond_0
    invoke-virtual {p1, v5}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    #@10
    move-result v2

    #@11
    if-nez v2, :cond_1

    #@13
    .line 4205
    iget-object v3, p0, Lcom/android/server/ConnectivityService;->mRulesLock:Ljava/lang/Object;

    #@15
    monitor-enter v3

    #@16
    .line 4206
    :try_start_0
    iget-object v2, p0, Lcom/android/server/ConnectivityService;->mUidRules:Landroid/util/SparseIntArray;

    #@18
    const/16 v4, 0x20

    #@1a
    invoke-virtual {v2, v0, v4}, Landroid/util/SparseIntArray;->get(II)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1d
    move-result v1

    #@1e
    .local v1, "uidRules":I
    monitor-exit v3

    #@1f
    .line 4208
    iget-boolean v2, p0, Lcom/android/server/ConnectivityService;->mRestrictBackground:Z

    #@21
    if-eqz v2, :cond_1

    #@23
    and-int/lit8 v2, v1, 0x1

    #@25
    if-nez v2, :cond_1

    #@27
    .line 4209
    and-int/lit8 v2, v1, 0x2

    #@29
    if-nez v2, :cond_1

    #@2b
    .line 4212
    invoke-virtual {p1, v5}, Landroid/net/NetworkCapabilities;->addCapability(I)Landroid/net/NetworkCapabilities;

    #@2e
    .line 4197
    .end local v1    # "uidRules":I
    :cond_1
    return-void

    #@2f
    .line 4205
    :catchall_0
    move-exception v2

    #@30
    monitor-exit v3

    #@31
    throw v2
.end method

.method private enforceNetworkRequestPermissions(Landroid/net/NetworkCapabilities;)V
    .locals 1
    .param p1, "networkCapabilities"    # Landroid/net/NetworkCapabilities;

    #@0
    .prologue
    .line 4169
    const/16 v0, 0xd

    #@2
    invoke-virtual {p1, v0}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    #@5
    move-result v0

    #@6
    if-nez v0, :cond_0

    #@8
    .line 4170
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->enforceConnectivityRestrictedNetworksPermission()V

    #@b
    .line 4168
    :goto_0
    return-void

    #@c
    .line 4172
    :cond_0
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->enforceChangePermission()V

    #@f
    goto :goto_0
.end method

.method private enforceTetherAccessPermission()V
    .locals 3

    #@0
    .prologue
    .line 1609
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;

    #@2
    .line 1610
    const-string/jumbo v1, "android.permission.ACCESS_NETWORK_STATE"

    #@5
    .line 1611
    const-string/jumbo v2, "ConnectivityService"

    #@8
    .line 1609
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    #@b
    .line 1608
    return-void
.end method

.method private ensureNetworkRequestHasType(Landroid/net/NetworkRequest;)V
    .locals 2
    .param p1, "request"    # Landroid/net/NetworkRequest;

    #@0
    .prologue
    .line 4005
    iget-object v0, p1, Landroid/net/NetworkRequest;->type:Landroid/net/NetworkRequest$Type;

    #@2
    sget-object v1, Landroid/net/NetworkRequest$Type;->NONE:Landroid/net/NetworkRequest$Type;

    #@4
    if-ne v0, v1, :cond_0

    #@6
    .line 4006
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@8
    .line 4007
    const-string/jumbo v1, "All NetworkRequests in ConnectivityService must have a type"

    #@b
    .line 4006
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@e
    throw v0

    #@f
    .line 4004
    :cond_0
    return-void
.end method

.method private ensureRequestableCapabilities(Landroid/net/NetworkCapabilities;)V
    .locals 4
    .param p1, "networkCapabilities"    # Landroid/net/NetworkCapabilities;

    #@0
    .prologue
    .line 4082
    invoke-virtual {p1}, Landroid/net/NetworkCapabilities;->describeFirstNonRequestableCapability()Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    .line 4083
    .local v0, "badCapability":Ljava/lang/String;
    if-eqz v0, :cond_0

    #@6
    .line 4084
    new-instance v1, Ljava/lang/IllegalArgumentException;

    #@8
    new-instance v2, Ljava/lang/StringBuilder;

    #@a
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@d
    const-string/jumbo v3, "Cannot request network with "

    #@10
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@13
    move-result-object v2

    #@14
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@17
    move-result-object v2

    #@18
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1b
    move-result-object v2

    #@1c
    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@1f
    throw v1

    #@20
    .line 4081
    :cond_0
    return-void
.end method

.method private filterNetworkStateForUid(Landroid/net/NetworkState;IZ)V
    .locals 6
    .param p1, "state"    # Landroid/net/NetworkState;
    .param p2, "uid"    # I
    .param p3, "ignoreBlocked"    # Z

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    .line 1089
    if-eqz p1, :cond_0

    #@3
    iget-object v1, p1, Landroid/net/NetworkState;->networkInfo:Landroid/net/NetworkInfo;

    #@5
    if-nez v1, :cond_1

    #@7
    :cond_0
    return-void

    #@8
    :cond_1
    iget-object v1, p1, Landroid/net/NetworkState;->linkProperties:Landroid/net/LinkProperties;

    #@a
    if-eqz v1, :cond_0

    #@c
    .line 1091
    iget-object v1, p1, Landroid/net/NetworkState;->linkProperties:Landroid/net/LinkProperties;

    #@e
    invoke-direct {p0, v1, p2, p3}, Lcom/android/server/ConnectivityService;->isNetworkWithLinkPropertiesBlocked(Landroid/net/LinkProperties;IZ)Z

    #@11
    move-result v1

    #@12
    if-eqz v1, :cond_2

    #@14
    .line 1092
    iget-object v1, p1, Landroid/net/NetworkState;->networkInfo:Landroid/net/NetworkInfo;

    #@16
    sget-object v4, Landroid/net/NetworkInfo$DetailedState;->BLOCKED:Landroid/net/NetworkInfo$DetailedState;

    #@18
    invoke-virtual {v1, v4, v5, v5}, Landroid/net/NetworkInfo;->setDetailedState(Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;Ljava/lang/String;)V

    #@1b
    .line 1094
    :cond_2
    iget-object v1, p0, Lcom/android/server/ConnectivityService;->mLockdownTracker:Lcom/android/server/net/LockdownVpnTracker;

    #@1d
    if-eqz v1, :cond_3

    #@1f
    .line 1095
    iget-object v1, p0, Lcom/android/server/ConnectivityService;->mLockdownTracker:Lcom/android/server/net/LockdownVpnTracker;

    #@21
    iget-object v4, p1, Landroid/net/NetworkState;->networkInfo:Landroid/net/NetworkInfo;

    #@23
    invoke-virtual {v1, v4}, Lcom/android/server/net/LockdownVpnTracker;->augmentNetworkInfo(Landroid/net/NetworkInfo;)V

    #@26
    .line 1099
    :cond_3
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    #@29
    move-result-wide v2

    #@2a
    .line 1101
    .local v2, "token":J
    :try_start_0
    iget-object v1, p1, Landroid/net/NetworkState;->networkInfo:Landroid/net/NetworkInfo;

    #@2c
    iget-object v4, p0, Lcom/android/server/ConnectivityService;->mPolicyManager:Landroid/net/INetworkPolicyManager;

    #@2e
    invoke-interface {v4, p1}, Landroid/net/INetworkPolicyManager;->isNetworkMetered(Landroid/net/NetworkState;)Z

    #@31
    move-result v4

    #@32
    invoke-virtual {v1, v4}, Landroid/net/NetworkInfo;->setMetered(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@35
    .line 1104
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@38
    .line 1088
    :goto_0
    return-void

    #@39
    .line 1102
    :catch_0
    move-exception v0

    #@3a
    .line 1104
    .local v0, "e":Landroid/os/RemoteException;
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@3d
    goto :goto_0

    #@3e
    .line 1103
    .end local v0    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v1

    #@3f
    .line 1104
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@42
    .line 1103
    throw v1
.end method

.method private findExistingNetworkRequestInfo(Landroid/app/PendingIntent;)Lcom/android/server/ConnectivityService$NetworkRequestInfo;
    .locals 6
    .param p1, "pendingIntent"    # Landroid/app/PendingIntent;

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    .line 2457
    invoke-virtual {p1}, Landroid/app/PendingIntent;->getIntent()Landroid/content/Intent;

    #@4
    move-result-object v3

    #@5
    .line 2458
    .local v3, "intent":Landroid/content/Intent;
    iget-object v4, p0, Lcom/android/server/ConnectivityService;->mNetworkRequests:Ljava/util/HashMap;

    #@7
    invoke-virtual {v4}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    #@a
    move-result-object v4

    #@b
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@e
    move-result-object v1

    #@f
    .local v1, "entry$iterator":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@12
    move-result v4

    #@13
    if-eqz v4, :cond_1

    #@15
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@18
    move-result-object v0

    #@19
    check-cast v0, Ljava/util/Map$Entry;

    #@1b
    .line 2459
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/net/NetworkRequest;Lcom/android/server/ConnectivityService$NetworkRequestInfo;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    #@1e
    move-result-object v4

    #@1f
    check-cast v4, Lcom/android/server/ConnectivityService$NetworkRequestInfo;

    #@21
    iget-object v2, v4, Lcom/android/server/ConnectivityService$NetworkRequestInfo;->mPendingIntent:Landroid/app/PendingIntent;

    #@23
    .line 2460
    .local v2, "existingPendingIntent":Landroid/app/PendingIntent;
    if-eqz v2, :cond_0

    #@25
    .line 2461
    invoke-virtual {v2}, Landroid/app/PendingIntent;->getIntent()Landroid/content/Intent;

    #@28
    move-result-object v4

    #@29
    invoke-virtual {v4, v3}, Landroid/content/Intent;->filterEquals(Landroid/content/Intent;)Z

    #@2c
    move-result v4

    #@2d
    .line 2460
    if-eqz v4, :cond_0

    #@2f
    .line 2462
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    #@32
    move-result-object v4

    #@33
    check-cast v4, Lcom/android/server/ConnectivityService$NetworkRequestInfo;

    #@35
    return-object v4

    #@36
    .line 2465
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/net/NetworkRequest;Lcom/android/server/ConnectivityService$NetworkRequestInfo;>;"
    .end local v2    # "existingPendingIntent":Landroid/app/PendingIntent;
    :cond_1
    return-object v5
.end method

.method private flushVmDnsCache()V
    .locals 5

    #@0
    .prologue
    .line 1893
    new-instance v2, Landroid/content/Intent;

    #@2
    const-string/jumbo v3, "android.intent.action.CLEAR_DNS_CACHE"

    #@5
    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    #@8
    .line 1894
    .local v2, "intent":Landroid/content/Intent;
    const/high16 v3, 0x20000000

    #@a
    invoke-virtual {v2, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    #@d
    .line 1898
    const/high16 v3, 0x4000000

    #@f
    invoke-virtual {v2, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    #@12
    .line 1899
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    #@15
    move-result-wide v0

    #@16
    .line 1901
    .local v0, "ident":J
    :try_start_0
    iget-object v3, p0, Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;

    #@18
    sget-object v4, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    #@1a
    invoke-virtual {v3, v2, v4}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1d
    .line 1903
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@20
    .line 1889
    return-void

    #@21
    .line 1902
    :catchall_0
    move-exception v3

    #@22
    .line 1903
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@25
    .line 1902
    throw v3
.end method

.method private getActiveNetworkForUidInternal(IZ)Landroid/net/Network;
    .locals 7
    .param p1, "uid"    # I
    .param p2, "ignoreBlocked"    # Z

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 1138
    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    #@4
    move-result v1

    #@5
    .line 1139
    .local v1, "user":I
    const/4 v3, 0x0

    #@6
    .line 1140
    .local v3, "vpnNetId":I
    iget-object v5, p0, Lcom/android/server/ConnectivityService;->mVpns:Landroid/util/SparseArray;

    #@8
    monitor-enter v5

    #@9
    .line 1141
    :try_start_0
    iget-object v6, p0, Lcom/android/server/ConnectivityService;->mVpns:Landroid/util/SparseArray;

    #@b
    invoke-virtual {v6, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    #@e
    move-result-object v2

    #@f
    check-cast v2, Lcom/android/server/connectivity/Vpn;

    #@11
    .line 1142
    .local v2, "vpn":Lcom/android/server/connectivity/Vpn;
    if-eqz v2, :cond_0

    #@13
    invoke-virtual {v2, p1}, Lcom/android/server/connectivity/Vpn;->appliesToUid(I)Z

    #@16
    move-result v6

    #@17
    if-eqz v6, :cond_0

    #@19
    invoke-virtual {v2}, Lcom/android/server/connectivity/Vpn;->getNetId()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1c
    move-result v3

    #@1d
    :cond_0
    monitor-exit v5

    #@1e
    .line 1145
    if-eqz v3, :cond_1

    #@20
    .line 1146
    iget-object v5, p0, Lcom/android/server/ConnectivityService;->mNetworkForNetId:Landroid/util/SparseArray;

    #@22
    monitor-enter v5

    #@23
    .line 1147
    :try_start_1
    iget-object v6, p0, Lcom/android/server/ConnectivityService;->mNetworkForNetId:Landroid/util/SparseArray;

    #@25
    invoke-virtual {v6, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    #@28
    move-result-object v0

    #@29
    check-cast v0, Lcom/android/server/connectivity/NetworkAgentInfo;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    #@2b
    .local v0, "nai":Lcom/android/server/connectivity/NetworkAgentInfo;
    monitor-exit v5

    #@2c
    .line 1149
    if-eqz v0, :cond_1

    #@2e
    iget-object v4, v0, Lcom/android/server/connectivity/NetworkAgentInfo;->network:Landroid/net/Network;

    #@30
    return-object v4

    #@31
    .line 1140
    .end local v0    # "nai":Lcom/android/server/connectivity/NetworkAgentInfo;
    .end local v2    # "vpn":Lcom/android/server/connectivity/Vpn;
    :catchall_0
    move-exception v4

    #@32
    monitor-exit v5

    #@33
    throw v4

    #@34
    .line 1146
    .restart local v2    # "vpn":Lcom/android/server/connectivity/Vpn;
    :catchall_1
    move-exception v4

    #@35
    monitor-exit v5

    #@36
    throw v4

    #@37
    .line 1151
    :cond_1
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->getDefaultNetwork()Lcom/android/server/connectivity/NetworkAgentInfo;

    #@3a
    move-result-object v0

    #@3b
    .line 1152
    .restart local v0    # "nai":Lcom/android/server/connectivity/NetworkAgentInfo;
    if-eqz v0, :cond_2

    #@3d
    .line 1153
    iget-object v5, v0, Lcom/android/server/connectivity/NetworkAgentInfo;->linkProperties:Landroid/net/LinkProperties;

    #@3f
    invoke-direct {p0, v5, p1, p2}, Lcom/android/server/ConnectivityService;->isNetworkWithLinkPropertiesBlocked(Landroid/net/LinkProperties;IZ)Z

    #@42
    move-result v5

    #@43
    .line 1152
    if-eqz v5, :cond_2

    #@45
    .line 1154
    const/4 v0, 0x0

    #@46
    .line 1156
    .end local v0    # "nai":Lcom/android/server/connectivity/NetworkAgentInfo;
    :cond_2
    if-eqz v0, :cond_3

    #@48
    iget-object v4, v0, Lcom/android/server/connectivity/NetworkAgentInfo;->network:Landroid/net/Network;

    #@4a
    :cond_3
    return-object v4
.end method

.method private getDefaultNetwork()Lcom/android/server/connectivity/NetworkAgentInfo;
    .locals 2

    #@0
    .prologue
    .line 4401
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mNetworkForRequestId:Landroid/util/SparseArray;

    #@2
    iget-object v1, p0, Lcom/android/server/ConnectivityService;->mDefaultRequest:Landroid/net/NetworkRequest;

    #@4
    iget v1, v1, Landroid/net/NetworkRequest;->requestId:I

    #@6
    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    #@9
    move-result-object v0

    #@a
    check-cast v0, Lcom/android/server/connectivity/NetworkAgentInfo;

    #@c
    return-object v0
.end method

.method private getDefaultProxy()Landroid/net/ProxyInfo;
    .locals 3

    #@0
    .prologue
    .line 3191
    iget-object v2, p0, Lcom/android/server/ConnectivityService;->mProxyLock:Ljava/lang/Object;

    #@2
    monitor-enter v2

    #@3
    .line 3192
    :try_start_0
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mGlobalProxy:Landroid/net/ProxyInfo;

    #@5
    .line 3193
    .local v0, "ret":Landroid/net/ProxyInfo;
    if-nez v0, :cond_0

    #@7
    iget-boolean v1, p0, Lcom/android/server/ConnectivityService;->mDefaultProxyDisabled:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@9
    if-eqz v1, :cond_1

    #@b
    :cond_0
    :goto_0
    monitor-exit v2

    #@c
    .line 3194
    return-object v0

    #@d
    .line 3193
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mDefaultProxy:Landroid/net/ProxyInfo;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@f
    goto :goto_0

    #@10
    .line 3191
    .end local v0    # "ret":Landroid/net/ProxyInfo;
    :catchall_0
    move-exception v1

    #@11
    monitor-exit v2

    #@12
    throw v1
.end method

.method private getFilteredNetworkState(IIZ)Landroid/net/NetworkState;
    .locals 8
    .param p1, "networkType"    # I
    .param p2, "uid"    # I
    .param p3, "ignoreBlocked"    # Z

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 940
    iget-object v2, p0, Lcom/android/server/ConnectivityService;->mLegacyTypeTracker:Lcom/android/server/ConnectivityService$LegacyTypeTracker;

    #@3
    invoke-virtual {v2, p1}, Lcom/android/server/ConnectivityService$LegacyTypeTracker;->isTypeSupported(I)Z

    #@6
    move-result v2

    #@7
    if-eqz v2, :cond_1

    #@9
    .line 941
    iget-object v2, p0, Lcom/android/server/ConnectivityService;->mLegacyTypeTracker:Lcom/android/server/ConnectivityService$LegacyTypeTracker;

    #@b
    invoke-virtual {v2, p1}, Lcom/android/server/ConnectivityService$LegacyTypeTracker;->getNetworkForType(I)Lcom/android/server/connectivity/NetworkAgentInfo;

    #@e
    move-result-object v7

    #@f
    .line 943
    .local v7, "nai":Lcom/android/server/connectivity/NetworkAgentInfo;
    if-eqz v7, :cond_0

    #@11
    .line 944
    invoke-virtual {v7}, Lcom/android/server/connectivity/NetworkAgentInfo;->getNetworkState()Landroid/net/NetworkState;

    #@14
    move-result-object v0

    #@15
    .line 945
    .local v0, "state":Landroid/net/NetworkState;
    iget-object v2, v0, Landroid/net/NetworkState;->networkInfo:Landroid/net/NetworkInfo;

    #@17
    invoke-virtual {v2, p1}, Landroid/net/NetworkInfo;->setType(I)V

    #@1a
    .line 954
    :goto_0
    invoke-direct {p0, v0, p2, p3}, Lcom/android/server/ConnectivityService;->filterNetworkStateForUid(Landroid/net/NetworkState;IZ)V

    #@1d
    .line 955
    return-object v0

    #@1e
    .line 947
    .end local v0    # "state":Landroid/net/NetworkState;
    :cond_0
    new-instance v1, Landroid/net/NetworkInfo;

    #@20
    .line 948
    invoke-static {p1}, Landroid/net/ConnectivityManager;->getNetworkTypeName(I)Ljava/lang/String;

    #@23
    move-result-object v2

    #@24
    const-string/jumbo v3, ""

    #@27
    .line 947
    const/4 v5, 0x0

    #@28
    invoke-direct {v1, p1, v5, v2, v3}, Landroid/net/NetworkInfo;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    #@2b
    .line 949
    .local v1, "info":Landroid/net/NetworkInfo;
    sget-object v2, Landroid/net/NetworkInfo$DetailedState;->DISCONNECTED:Landroid/net/NetworkInfo$DetailedState;

    #@2d
    invoke-virtual {v1, v2, v4, v4}, Landroid/net/NetworkInfo;->setDetailedState(Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;Ljava/lang/String;)V

    #@30
    .line 950
    const/4 v2, 0x1

    #@31
    invoke-virtual {v1, v2}, Landroid/net/NetworkInfo;->setIsAvailable(Z)V

    #@34
    .line 951
    new-instance v0, Landroid/net/NetworkState;

    #@36
    new-instance v2, Landroid/net/LinkProperties;

    #@38
    invoke-direct {v2}, Landroid/net/LinkProperties;-><init>()V

    #@3b
    new-instance v3, Landroid/net/NetworkCapabilities;

    #@3d
    invoke-direct {v3}, Landroid/net/NetworkCapabilities;-><init>()V

    #@40
    move-object v5, v4

    #@41
    move-object v6, v4

    #@42
    invoke-direct/range {v0 .. v6}, Landroid/net/NetworkState;-><init>(Landroid/net/NetworkInfo;Landroid/net/LinkProperties;Landroid/net/NetworkCapabilities;Landroid/net/Network;Ljava/lang/String;Ljava/lang/String;)V

    #@45
    .restart local v0    # "state":Landroid/net/NetworkState;
    goto :goto_0

    #@46
    .line 957
    .end local v0    # "state":Landroid/net/NetworkState;
    .end local v1    # "info":Landroid/net/NetworkInfo;
    .end local v7    # "nai":Lcom/android/server/connectivity/NetworkAgentInfo;
    :cond_1
    sget-object v2, Landroid/net/NetworkState;->EMPTY:Landroid/net/NetworkState;

    #@48
    return-object v2
.end method

.method private getNetworkAgentInfoForNetwork(Landroid/net/Network;)Lcom/android/server/connectivity/NetworkAgentInfo;
    .locals 3
    .param p1, "network"    # Landroid/net/Network;

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 962
    if-nez p1, :cond_0

    #@3
    .line 963
    return-object v0

    #@4
    .line 965
    :cond_0
    iget-object v1, p0, Lcom/android/server/ConnectivityService;->mNetworkForNetId:Landroid/util/SparseArray;

    #@6
    monitor-enter v1

    #@7
    .line 966
    :try_start_0
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mNetworkForNetId:Landroid/util/SparseArray;

    #@9
    iget v2, p1, Landroid/net/Network;->netId:I

    #@b
    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    #@e
    move-result-object v0

    #@f
    check-cast v0, Lcom/android/server/connectivity/NetworkAgentInfo;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@11
    monitor-exit v1

    #@12
    return-object v0

    #@13
    .line 965
    :catchall_0
    move-exception v0

    #@14
    monitor-exit v1

    #@15
    throw v0
.end method

.method private getNetworkCapabilitiesInternal(Lcom/android/server/connectivity/NetworkAgentInfo;)Landroid/net/NetworkCapabilities;
    .locals 2
    .param p1, "nai"    # Lcom/android/server/connectivity/NetworkAgentInfo;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 1340
    if-eqz p1, :cond_1

    #@3
    .line 1341
    monitor-enter p1

    #@4
    .line 1342
    :try_start_0
    iget-object v0, p1, Lcom/android/server/connectivity/NetworkAgentInfo;->networkCapabilities:Landroid/net/NetworkCapabilities;

    #@6
    if-eqz v0, :cond_0

    #@8
    .line 1343
    new-instance v0, Landroid/net/NetworkCapabilities;

    #@a
    iget-object v1, p1, Lcom/android/server/connectivity/NetworkAgentInfo;->networkCapabilities:Landroid/net/NetworkCapabilities;

    #@c
    invoke-direct {v0, v1}, Landroid/net/NetworkCapabilities;-><init>(Landroid/net/NetworkCapabilities;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@f
    monitor-exit p1

    #@10
    return-object v0

    #@11
    :cond_0
    monitor-exit p1

    #@12
    .line 1347
    :cond_1
    return-object v1

    #@13
    .line 1341
    :catchall_0
    move-exception v0

    #@14
    monitor-exit p1

    #@15
    throw v0
.end method

.method private getNetworkPermission(Landroid/net/NetworkCapabilities;)Ljava/lang/String;
    .locals 1
    .param p1, "nc"    # Landroid/net/NetworkCapabilities;

    #@0
    .prologue
    .line 4604
    const/16 v0, 0xd

    #@2
    invoke-virtual {p1, v0}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    #@5
    move-result v0

    #@6
    if-nez v0, :cond_0

    #@8
    .line 4605
    const-string/jumbo v0, "SYSTEM"

    #@b
    return-object v0

    #@c
    .line 4607
    :cond_0
    const/16 v0, 0x12

    #@e
    invoke-virtual {p1, v0}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    #@11
    move-result v0

    #@12
    if-nez v0, :cond_1

    #@14
    .line 4608
    const-string/jumbo v0, "NETWORK"

    #@17
    return-object v0

    #@18
    .line 4610
    :cond_1
    const/4 v0, 0x0

    #@19
    return-object v0
.end method

.method private getNriForAppRequest(Landroid/net/NetworkRequest;ILjava/lang/String;)Lcom/android/server/ConnectivityService$NetworkRequestInfo;
    .locals 6
    .param p1, "request"    # Landroid/net/NetworkRequest;
    .param p2, "callingUid"    # I
    .param p3, "requestedOperation"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    .line 2557
    iget-object v1, p0, Lcom/android/server/ConnectivityService;->mNetworkRequests:Ljava/util/HashMap;

    #@3
    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@6
    move-result-object v0

    #@7
    check-cast v0, Lcom/android/server/ConnectivityService$NetworkRequestInfo;

    #@9
    .line 2559
    .local v0, "nri":Lcom/android/server/ConnectivityService$NetworkRequestInfo;
    if-eqz v0, :cond_0

    #@b
    .line 2560
    const/16 v1, 0x3e8

    #@d
    if-eq v1, p2, :cond_0

    #@f
    iget v1, v0, Lcom/android/server/ConnectivityService$NetworkRequestInfo;->mUid:I

    #@11
    if-eq v1, p2, :cond_0

    #@13
    .line 2561
    const-string/jumbo v1, "UID %d attempted to %s for unowned request %s"

    #@16
    const/4 v2, 0x3

    #@17
    new-array v2, v2, [Ljava/lang/Object;

    #@19
    .line 2562
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@1c
    move-result-object v3

    #@1d
    const/4 v4, 0x0

    #@1e
    aput-object v3, v2, v4

    #@20
    const/4 v3, 0x1

    #@21
    aput-object p3, v2, v3

    #@23
    const/4 v3, 0x2

    #@24
    aput-object v0, v2, v3

    #@26
    .line 2561
    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@29
    move-result-object v1

    #@2a
    invoke-static {v1}, Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V

    #@2d
    .line 2563
    return-object v5

    #@2e
    .line 2567
    :cond_0
    return-object v0
.end method

.method private getProvisioningUrlBaseFromFile()Ljava/lang/String;
    .locals 14

    #@0
    .prologue
    const/4 v13, 0x0

    #@1
    .line 3792
    const/4 v6, 0x0

    #@2
    .line 3793
    .local v6, "fileReader":Ljava/io/FileReader;
    const/4 v10, 0x0

    #@3
    .line 3794
    .local v10, "parser":Lorg/xmlpull/v1/XmlPullParser;
    iget-object v11, p0, Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;

    #@5
    invoke-virtual {v11}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@8
    move-result-object v11

    #@9
    invoke-virtual {v11}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    #@c
    move-result-object v0

    #@d
    .line 3797
    .local v0, "config":Landroid/content/res/Configuration;
    :try_start_0
    new-instance v7, Ljava/io/FileReader;

    #@f
    iget-object v11, p0, Lcom/android/server/ConnectivityService;->mProvisioningUrlFile:Ljava/io/File;

    #@11
    invoke-direct {v7, v11}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_a
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_6
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@14
    .line 3798
    .end local v6    # "fileReader":Ljava/io/FileReader;
    .local v7, "fileReader":Ljava/io/FileReader;
    :try_start_1
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    #@17
    move-result-object v10

    #@18
    .line 3799
    .local v10, "parser":Lorg/xmlpull/v1/XmlPullParser;
    invoke-interface {v10, v7}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/Reader;)V

    #@1b
    .line 3800
    const-string/jumbo v11, "provisioningUrls"

    #@1e
    invoke-static {v10, v11}, Lcom/android/internal/util/XmlUtils;->beginDocument(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V

    #@21
    .line 3803
    :cond_0
    :goto_0
    invoke-static {v10}, Lcom/android/internal/util/XmlUtils;->nextElement(Lorg/xmlpull/v1/XmlPullParser;)V

    #@24
    .line 3805
    invoke-interface {v10}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_b
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_c
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    #@27
    move-result-object v5

    #@28
    .line 3806
    .local v5, "element":Ljava/lang/String;
    if-nez v5, :cond_2

    #@2a
    .line 3833
    if-eqz v7, :cond_1

    #@2c
    .line 3835
    :try_start_2
    invoke-virtual {v7}, Ljava/io/FileReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3

    #@2f
    .line 3825
    :cond_1
    :goto_1
    return-object v13

    #@30
    .line 3808
    :cond_2
    :try_start_3
    const-string/jumbo v11, "provisioningUrl"

    #@33
    invoke-virtual {v5, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@36
    move-result v11

    #@37
    if-eqz v11, :cond_0

    #@39
    .line 3809
    const-string/jumbo v11, "mcc"

    #@3c
    const/4 v12, 0x0

    #@3d
    invoke-interface {v10, v12, v11}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_3
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_3 .. :try_end_3} :catch_b
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_c
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    #@40
    move-result-object v8

    #@41
    .line 3811
    .local v8, "mcc":Ljava/lang/String;
    if-eqz v8, :cond_0

    #@43
    :try_start_4
    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    #@46
    move-result v11

    #@47
    iget v12, v0, Landroid/content/res/Configuration;->mcc:I

    #@49
    if-ne v11, v12, :cond_0

    #@4b
    .line 3812
    const-string/jumbo v11, "mnc"

    #@4e
    const/4 v12, 0x0

    #@4f
    invoke-interface {v10, v12, v11}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@52
    move-result-object v9

    #@53
    .line 3813
    .local v9, "mnc":Ljava/lang/String;
    if-eqz v9, :cond_0

    #@55
    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    #@58
    move-result v11

    #@59
    iget v12, v0, Landroid/content/res/Configuration;->mnc:I

    #@5b
    if-ne v11, v12, :cond_0

    #@5d
    .line 3814
    invoke-interface {v10}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    #@60
    .line 3815
    invoke-interface {v10}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    #@63
    move-result v11

    #@64
    const/4 v12, 0x4

    #@65
    if-ne v11, v12, :cond_0

    #@67
    .line 3816
    invoke-interface {v10}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;
    :try_end_4
    .catch Ljava/lang/NumberFormatException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_4 .. :try_end_4} :catch_b
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_c
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    #@6a
    move-result-object v11

    #@6b
    .line 3833
    if-eqz v7, :cond_3

    #@6d
    .line 3835
    :try_start_5
    invoke-virtual {v7}, Ljava/io/FileReader;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0

    #@70
    .line 3816
    :cond_3
    :goto_2
    return-object v11

    #@71
    .line 3836
    :catch_0
    move-exception v2

    #@72
    .local v2, "e":Ljava/io/IOException;
    goto :goto_2

    #@73
    .line 3820
    .end local v2    # "e":Ljava/io/IOException;
    .end local v9    # "mnc":Ljava/lang/String;
    :catch_1
    move-exception v3

    #@74
    .line 3821
    .local v3, "e":Ljava/lang/NumberFormatException;
    :try_start_6
    new-instance v11, Ljava/lang/StringBuilder;

    #@76
    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    #@79
    const-string/jumbo v12, "NumberFormatException in getProvisioningUrlBaseFromFile: "

    #@7c
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@7f
    move-result-object v11

    #@80
    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@83
    move-result-object v11

    #@84
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@87
    move-result-object v11

    #@88
    invoke-static {v11}, Lcom/android/server/ConnectivityService;->loge(Ljava/lang/String;)V
    :try_end_6
    .catch Ljava/io/FileNotFoundException; {:try_start_6 .. :try_end_6} :catch_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_6 .. :try_end_6} :catch_b
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_c
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    #@8b
    goto :goto_0

    #@8c
    .line 3826
    .end local v3    # "e":Ljava/lang/NumberFormatException;
    .end local v5    # "element":Ljava/lang/String;
    .end local v8    # "mcc":Ljava/lang/String;
    .end local v10    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    :catch_2
    move-exception v1

    #@8d
    .local v1, "e":Ljava/io/FileNotFoundException;
    move-object v6, v7

    #@8e
    .line 3827
    .end local v7    # "fileReader":Ljava/io/FileReader;
    :goto_3
    :try_start_7
    const-string/jumbo v11, "Carrier Provisioning Urls file not found"

    #@91
    invoke-static {v11}, Lcom/android/server/ConnectivityService;->loge(Ljava/lang/String;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    #@94
    .line 3833
    if-eqz v6, :cond_4

    #@96
    .line 3835
    :try_start_8
    invoke-virtual {v6}, Ljava/io/FileReader;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_8

    #@99
    .line 3839
    .end local v1    # "e":Ljava/io/FileNotFoundException;
    :cond_4
    :goto_4
    return-object v13

    #@9a
    .line 3836
    .restart local v5    # "element":Ljava/lang/String;
    .restart local v7    # "fileReader":Ljava/io/FileReader;
    .restart local v10    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    :catch_3
    move-exception v2

    #@9b
    .restart local v2    # "e":Ljava/io/IOException;
    goto :goto_1

    #@9c
    .line 3830
    .end local v2    # "e":Ljava/io/IOException;
    .end local v5    # "element":Ljava/lang/String;
    .end local v7    # "fileReader":Ljava/io/FileReader;
    .restart local v6    # "fileReader":Ljava/io/FileReader;
    .local v10, "parser":Lorg/xmlpull/v1/XmlPullParser;
    :catch_4
    move-exception v2

    #@9d
    .line 3831
    .end local v6    # "fileReader":Ljava/io/FileReader;
    .end local v10    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v2    # "e":Ljava/io/IOException;
    :goto_5
    :try_start_9
    new-instance v11, Ljava/lang/StringBuilder;

    #@9f
    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    #@a2
    const-string/jumbo v12, "I/O exception reading Carrier Provisioning Urls file: "

    #@a5
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a8
    move-result-object v11

    #@a9
    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@ac
    move-result-object v11

    #@ad
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@b0
    move-result-object v11

    #@b1
    invoke-static {v11}, Lcom/android/server/ConnectivityService;->loge(Ljava/lang/String;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    #@b4
    .line 3833
    if-eqz v6, :cond_4

    #@b6
    .line 3835
    :try_start_a
    invoke-virtual {v6}, Ljava/io/FileReader;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_5

    #@b9
    goto :goto_4

    #@ba
    .line 3836
    :catch_5
    move-exception v2

    #@bb
    goto :goto_4

    #@bc
    .line 3828
    .end local v2    # "e":Ljava/io/IOException;
    .restart local v6    # "fileReader":Ljava/io/FileReader;
    .restart local v10    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    :catch_6
    move-exception v4

    #@bd
    .line 3829
    .end local v6    # "fileReader":Ljava/io/FileReader;
    .end local v10    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .local v4, "e":Lorg/xmlpull/v1/XmlPullParserException;
    :goto_6
    :try_start_b
    new-instance v11, Ljava/lang/StringBuilder;

    #@bf
    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    #@c2
    const-string/jumbo v12, "Xml parser exception reading Carrier Provisioning Urls file: "

    #@c5
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@c8
    move-result-object v11

    #@c9
    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@cc
    move-result-object v11

    #@cd
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@d0
    move-result-object v11

    #@d1
    invoke-static {v11}, Lcom/android/server/ConnectivityService;->loge(Ljava/lang/String;)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    #@d4
    .line 3833
    if-eqz v6, :cond_4

    #@d6
    .line 3835
    :try_start_c
    invoke-virtual {v6}, Ljava/io/FileReader;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_7

    #@d9
    goto :goto_4

    #@da
    .line 3836
    :catch_7
    move-exception v2

    #@db
    .restart local v2    # "e":Ljava/io/IOException;
    goto :goto_4

    #@dc
    .end local v2    # "e":Ljava/io/IOException;
    .end local v4    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    .restart local v1    # "e":Ljava/io/FileNotFoundException;
    :catch_8
    move-exception v2

    #@dd
    .restart local v2    # "e":Ljava/io/IOException;
    goto :goto_4

    #@de
    .line 3832
    .end local v1    # "e":Ljava/io/FileNotFoundException;
    .end local v2    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v11

    #@df
    .line 3833
    :goto_7
    if-eqz v6, :cond_5

    #@e1
    .line 3835
    :try_start_d
    invoke-virtual {v6}, Ljava/io/FileReader;->close()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_9

    #@e4
    .line 3832
    :cond_5
    :goto_8
    throw v11

    #@e5
    .line 3836
    :catch_9
    move-exception v2

    #@e6
    .restart local v2    # "e":Ljava/io/IOException;
    goto :goto_8

    #@e7
    .line 3832
    .end local v2    # "e":Ljava/io/IOException;
    .restart local v7    # "fileReader":Ljava/io/FileReader;
    :catchall_1
    move-exception v11

    #@e8
    move-object v6, v7

    #@e9
    .end local v7    # "fileReader":Ljava/io/FileReader;
    .local v6, "fileReader":Ljava/io/FileReader;
    goto :goto_7

    #@ea
    .line 3826
    .local v6, "fileReader":Ljava/io/FileReader;
    .restart local v10    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    :catch_a
    move-exception v1

    #@eb
    .restart local v1    # "e":Ljava/io/FileNotFoundException;
    goto :goto_3

    #@ec
    .line 3828
    .end local v1    # "e":Ljava/io/FileNotFoundException;
    .end local v6    # "fileReader":Ljava/io/FileReader;
    .end local v10    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v7    # "fileReader":Ljava/io/FileReader;
    :catch_b
    move-exception v4

    #@ed
    .restart local v4    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    move-object v6, v7

    #@ee
    .end local v7    # "fileReader":Ljava/io/FileReader;
    .local v6, "fileReader":Ljava/io/FileReader;
    goto :goto_6

    #@ef
    .line 3830
    .end local v4    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    .end local v6    # "fileReader":Ljava/io/FileReader;
    .restart local v7    # "fileReader":Ljava/io/FileReader;
    :catch_c
    move-exception v2

    #@f0
    .restart local v2    # "e":Ljava/io/IOException;
    move-object v6, v7

    #@f1
    .end local v7    # "fileReader":Ljava/io/FileReader;
    .restart local v6    # "fileReader":Ljava/io/FileReader;
    goto :goto_5
.end method

.method private getSignalStrengthThresholds(Lcom/android/server/connectivity/NetworkAgentInfo;)Ljava/util/ArrayList;
    .locals 4
    .param p1, "nai"    # Lcom/android/server/connectivity/NetworkAgentInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/connectivity/NetworkAgentInfo;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 4089
    new-instance v2, Ljava/util/TreeSet;

    #@2
    invoke-direct {v2}, Ljava/util/TreeSet;-><init>()V

    #@5
    .line 4090
    .local v2, "thresholds":Ljava/util/SortedSet;, "Ljava/util/SortedSet<Ljava/lang/Integer;>;"
    monitor-enter p1

    #@6
    .line 4091
    :try_start_0
    iget-object v3, p0, Lcom/android/server/ConnectivityService;->mNetworkRequests:Ljava/util/HashMap;

    #@8
    invoke-virtual {v3}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    #@b
    move-result-object v3

    #@c
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@f
    move-result-object v1

    #@10
    .local v1, "nri$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@13
    move-result v3

    #@14
    if-eqz v3, :cond_1

    #@16
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@19
    move-result-object v0

    #@1a
    check-cast v0, Lcom/android/server/ConnectivityService$NetworkRequestInfo;

    #@1c
    .line 4092
    .local v0, "nri":Lcom/android/server/ConnectivityService$NetworkRequestInfo;
    iget-object v3, v0, Lcom/android/server/ConnectivityService$NetworkRequestInfo;->request:Landroid/net/NetworkRequest;

    #@1e
    iget-object v3, v3, Landroid/net/NetworkRequest;->networkCapabilities:Landroid/net/NetworkCapabilities;

    #@20
    invoke-virtual {v3}, Landroid/net/NetworkCapabilities;->hasSignalStrength()Z

    #@23
    move-result v3

    #@24
    if-eqz v3, :cond_0

    #@26
    .line 4093
    iget-object v3, v0, Lcom/android/server/ConnectivityService$NetworkRequestInfo;->request:Landroid/net/NetworkRequest;

    #@28
    invoke-virtual {p1, v3}, Lcom/android/server/connectivity/NetworkAgentInfo;->satisfiesImmutableCapabilitiesOf(Landroid/net/NetworkRequest;)Z

    #@2b
    move-result v3

    #@2c
    .line 4092
    if-eqz v3, :cond_0

    #@2e
    .line 4094
    iget-object v3, v0, Lcom/android/server/ConnectivityService$NetworkRequestInfo;->request:Landroid/net/NetworkRequest;

    #@30
    iget-object v3, v3, Landroid/net/NetworkRequest;->networkCapabilities:Landroid/net/NetworkCapabilities;

    #@32
    invoke-virtual {v3}, Landroid/net/NetworkCapabilities;->getSignalStrength()I

    #@35
    move-result v3

    #@36
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@39
    move-result-object v3

    #@3a
    invoke-interface {v2, v3}, Ljava/util/SortedSet;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@3d
    goto :goto_0

    #@3e
    .line 4090
    .end local v0    # "nri":Lcom/android/server/ConnectivityService$NetworkRequestInfo;
    .end local v1    # "nri$iterator":Ljava/util/Iterator;
    :catchall_0
    move-exception v3

    #@3f
    monitor-exit p1

    #@40
    throw v3

    #@41
    .restart local v1    # "nri$iterator":Ljava/util/Iterator;
    :cond_1
    monitor-exit p1

    #@42
    .line 4098
    new-instance v3, Ljava/util/ArrayList;

    #@44
    invoke-direct {v3, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    #@47
    return-object v3
.end method

.method private getUnfilteredActiveNetworkState(I)Landroid/net/NetworkState;
    .locals 4
    .param p1, "uid"    # I

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 984
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->getDefaultNetwork()Lcom/android/server/connectivity/NetworkAgentInfo;

    #@4
    move-result-object v0

    #@5
    .line 986
    .local v0, "nai":Lcom/android/server/connectivity/NetworkAgentInfo;
    invoke-direct {p0, p1}, Lcom/android/server/ConnectivityService;->getVpnUnderlyingNetworks(I)[Landroid/net/Network;

    #@8
    move-result-object v1

    #@9
    .line 987
    .local v1, "networks":[Landroid/net/Network;
    if-eqz v1, :cond_0

    #@b
    .line 993
    array-length v2, v1

    #@c
    if-lez v2, :cond_1

    #@e
    .line 994
    aget-object v2, v1, v3

    #@10
    invoke-direct {p0, v2}, Lcom/android/server/ConnectivityService;->getNetworkAgentInfoForNetwork(Landroid/net/Network;)Lcom/android/server/connectivity/NetworkAgentInfo;

    #@13
    move-result-object v0

    #@14
    .line 1000
    .end local v0    # "nai":Lcom/android/server/connectivity/NetworkAgentInfo;
    :cond_0
    :goto_0
    if-eqz v0, :cond_2

    #@16
    .line 1001
    invoke-virtual {v0}, Lcom/android/server/connectivity/NetworkAgentInfo;->getNetworkState()Landroid/net/NetworkState;

    #@19
    move-result-object v2

    #@1a
    return-object v2

    #@1b
    .line 996
    .restart local v0    # "nai":Lcom/android/server/connectivity/NetworkAgentInfo;
    :cond_1
    const/4 v0, 0x0

    #@1c
    .local v0, "nai":Lcom/android/server/connectivity/NetworkAgentInfo;
    goto :goto_0

    #@1d
    .line 1003
    .end local v0    # "nai":Lcom/android/server/connectivity/NetworkAgentInfo;
    :cond_2
    sget-object v2, Landroid/net/NetworkState;->EMPTY:Landroid/net/NetworkState;

    #@1f
    return-object v2
.end method

.method private getVpnUnderlyingNetworks(I)[Landroid/net/Network;
    .locals 5
    .param p1, "uid"    # I

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 971
    iget-boolean v2, p0, Lcom/android/server/ConnectivityService;->mLockdownEnabled:Z

    #@3
    if-nez v2, :cond_1

    #@5
    .line 972
    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    #@8
    move-result v0

    #@9
    .line 973
    .local v0, "user":I
    iget-object v3, p0, Lcom/android/server/ConnectivityService;->mVpns:Landroid/util/SparseArray;

    #@b
    monitor-enter v3

    #@c
    .line 974
    :try_start_0
    iget-object v2, p0, Lcom/android/server/ConnectivityService;->mVpns:Landroid/util/SparseArray;

    #@e
    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    #@11
    move-result-object v1

    #@12
    check-cast v1, Lcom/android/server/connectivity/Vpn;

    #@14
    .line 975
    .local v1, "vpn":Lcom/android/server/connectivity/Vpn;
    if-eqz v1, :cond_0

    #@16
    invoke-virtual {v1, p1}, Lcom/android/server/connectivity/Vpn;->appliesToUid(I)Z

    #@19
    move-result v2

    #@1a
    if-eqz v2, :cond_0

    #@1c
    .line 976
    invoke-virtual {v1}, Lcom/android/server/connectivity/Vpn;->getUnderlyingNetworks()[Landroid/net/Network;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1f
    move-result-object v2

    #@20
    monitor-exit v3

    #@21
    return-object v2

    #@22
    :cond_0
    monitor-exit v3

    #@23
    .line 980
    .end local v0    # "user":I
    .end local v1    # "vpn":Lcom/android/server/connectivity/Vpn;
    :cond_1
    return-object v4

    #@24
    .line 973
    .restart local v0    # "user":I
    :catchall_0
    move-exception v2

    #@25
    monitor-exit v3

    #@26
    throw v2
.end method

.method private handleApplyDefaultProxy(Landroid/net/ProxyInfo;)V
    .locals 3
    .param p1, "proxy"    # Landroid/net/ProxyInfo;

    #@0
    .prologue
    .line 3327
    if-eqz p1, :cond_0

    #@2
    invoke-virtual {p1}, Landroid/net/ProxyInfo;->getHost()Ljava/lang/String;

    #@5
    move-result-object v0

    #@6
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@9
    move-result v0

    #@a
    if-eqz v0, :cond_0

    #@c
    .line 3328
    sget-object v0, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    #@e
    invoke-virtual {p1}, Landroid/net/ProxyInfo;->getPacFileUrl()Landroid/net/Uri;

    #@11
    move-result-object v1

    #@12
    invoke-virtual {v0, v1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    #@15
    move-result v0

    #@16
    .line 3327
    if-eqz v0, :cond_0

    #@18
    .line 3329
    const/4 p1, 0x0

    #@19
    .line 3331
    .end local p1    # "proxy":Landroid/net/ProxyInfo;
    :cond_0
    iget-object v1, p0, Lcom/android/server/ConnectivityService;->mProxyLock:Ljava/lang/Object;

    #@1b
    monitor-enter v1

    #@1c
    .line 3332
    :try_start_0
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mDefaultProxy:Landroid/net/ProxyInfo;

    #@1e
    if-eqz v0, :cond_1

    #@20
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mDefaultProxy:Landroid/net/ProxyInfo;

    #@22
    invoke-virtual {v0, p1}, Landroid/net/ProxyInfo;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@25
    move-result v0

    #@26
    if-eqz v0, :cond_1

    #@28
    monitor-exit v1

    #@29
    return-void

    #@2a
    .line 3333
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mDefaultProxy:Landroid/net/ProxyInfo;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@2c
    if-ne v0, p1, :cond_2

    #@2e
    monitor-exit v1

    #@2f
    return-void

    #@30
    .line 3334
    :cond_2
    if-eqz p1, :cond_3

    #@32
    :try_start_2
    invoke-virtual {p1}, Landroid/net/ProxyInfo;->isValid()Z

    #@35
    move-result v0

    #@36
    if-eqz v0, :cond_5

    #@38
    .line 3344
    :cond_3
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mGlobalProxy:Landroid/net/ProxyInfo;

    #@3a
    if-eqz v0, :cond_4

    #@3c
    if-eqz p1, :cond_4

    #@3e
    .line 3345
    sget-object v0, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    #@40
    invoke-virtual {p1}, Landroid/net/ProxyInfo;->getPacFileUrl()Landroid/net/Uri;

    #@43
    move-result-object v2

    #@44
    invoke-virtual {v0, v2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    #@47
    move-result v0

    #@48
    if-eqz v0, :cond_6

    #@4a
    .line 3351
    :cond_4
    iput-object p1, p0, Lcom/android/server/ConnectivityService;->mDefaultProxy:Landroid/net/ProxyInfo;

    #@4c
    .line 3353
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mGlobalProxy:Landroid/net/ProxyInfo;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@4e
    if-eqz v0, :cond_7

    #@50
    monitor-exit v1

    #@51
    return-void

    #@52
    .line 3335
    :cond_5
    :try_start_3
    new-instance v0, Ljava/lang/StringBuilder;

    #@54
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@57
    const-string/jumbo v2, "Invalid proxy properties, ignoring: "

    #@5a
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5d
    move-result-object v0

    #@5e
    invoke-virtual {p1}, Landroid/net/ProxyInfo;->toString()Ljava/lang/String;

    #@61
    move-result-object v2

    #@62
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@65
    move-result-object v0

    #@66
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@69
    move-result-object v0

    #@6a
    invoke-static {v0}, Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@6d
    monitor-exit v1

    #@6e
    .line 3336
    return-void

    #@6f
    .line 3346
    :cond_6
    :try_start_4
    invoke-virtual {p1}, Landroid/net/ProxyInfo;->getPacFileUrl()Landroid/net/Uri;

    #@72
    move-result-object v0

    #@73
    iget-object v2, p0, Lcom/android/server/ConnectivityService;->mGlobalProxy:Landroid/net/ProxyInfo;

    #@75
    invoke-virtual {v2}, Landroid/net/ProxyInfo;->getPacFileUrl()Landroid/net/Uri;

    #@78
    move-result-object v2

    #@79
    invoke-virtual {v0, v2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    #@7c
    move-result v0

    #@7d
    .line 3344
    if-eqz v0, :cond_4

    #@7f
    .line 3347
    iput-object p1, p0, Lcom/android/server/ConnectivityService;->mGlobalProxy:Landroid/net/ProxyInfo;

    #@81
    .line 3348
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mGlobalProxy:Landroid/net/ProxyInfo;

    #@83
    invoke-direct {p0, v0}, Lcom/android/server/ConnectivityService;->sendProxyBroadcast(Landroid/net/ProxyInfo;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    #@86
    monitor-exit v1

    #@87
    .line 3349
    return-void

    #@88
    .line 3354
    :cond_7
    :try_start_5
    iget-boolean v0, p0, Lcom/android/server/ConnectivityService;->mDefaultProxyDisabled:Z

    #@8a
    if-nez v0, :cond_8

    #@8c
    .line 3355
    invoke-direct {p0, p1}, Lcom/android/server/ConnectivityService;->sendProxyBroadcast(Landroid/net/ProxyInfo;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    #@8f
    :cond_8
    monitor-exit v1

    #@90
    .line 3326
    return-void

    #@91
    .line 3331
    :catchall_0
    move-exception v0

    #@92
    monitor-exit v1

    #@93
    throw v0
.end method

.method private handleAsyncChannelDisconnected(Landroid/os/Message;)V
    .locals 12
    .param p1, "msg"    # Landroid/os/Message;

    #@0
    .prologue
    const/4 v11, 0x0

    #@1
    const/4 v10, 0x0

    #@2
    .line 2372
    iget-object v7, p0, Lcom/android/server/ConnectivityService;->mNetworkAgentInfos:Ljava/util/HashMap;

    #@4
    iget-object v8, p1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    #@6
    invoke-virtual {v7, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@9
    move-result-object v3

    #@a
    check-cast v3, Lcom/android/server/connectivity/NetworkAgentInfo;

    #@c
    .line 2373
    .local v3, "nai":Lcom/android/server/connectivity/NetworkAgentInfo;
    if-eqz v3, :cond_7

    #@e
    .line 2375
    new-instance v7, Ljava/lang/StringBuilder;

    #@10
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    #@13
    invoke-virtual {v3}, Lcom/android/server/connectivity/NetworkAgentInfo;->name()Ljava/lang/String;

    #@16
    move-result-object v8

    #@17
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1a
    move-result-object v7

    #@1b
    const-string/jumbo v8, " got DISCONNECTED, was satisfying "

    #@1e
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@21
    move-result-object v7

    #@22
    invoke-virtual {v3}, Lcom/android/server/connectivity/NetworkAgentInfo;->numNetworkRequests()I

    #@25
    move-result v8

    #@26
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@29
    move-result-object v7

    #@2a
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2d
    move-result-object v7

    #@2e
    invoke-static {v7}, Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V

    #@31
    .line 2382
    iget-object v7, v3, Lcom/android/server/connectivity/NetworkAgentInfo;->networkInfo:Landroid/net/NetworkInfo;

    #@33
    invoke-virtual {v7}, Landroid/net/NetworkInfo;->isConnected()Z

    #@36
    move-result v7

    #@37
    if-eqz v7, :cond_0

    #@39
    .line 2383
    iget-object v7, v3, Lcom/android/server/connectivity/NetworkAgentInfo;->networkInfo:Landroid/net/NetworkInfo;

    #@3b
    sget-object v8, Landroid/net/NetworkInfo$DetailedState;->DISCONNECTED:Landroid/net/NetworkInfo$DetailedState;

    #@3d
    invoke-virtual {v7, v8, v10, v10}, Landroid/net/NetworkInfo;->setDetailedState(Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;Ljava/lang/String;)V

    #@40
    .line 2386
    :cond_0
    invoke-direct {p0, v3}, Lcom/android/server/ConnectivityService;->isDefaultNetwork(Lcom/android/server/connectivity/NetworkAgentInfo;)Z

    #@43
    move-result v6

    #@44
    .line 2387
    .local v6, "wasDefault":Z
    if-eqz v6, :cond_1

    #@46
    .line 2388
    iput v11, p0, Lcom/android/server/ConnectivityService;->mDefaultInetConditionPublished:I

    #@48
    .line 2393
    invoke-direct {p0, v10, v3}, Lcom/android/server/ConnectivityService;->logDefaultNetworkEvent(Lcom/android/server/connectivity/NetworkAgentInfo;Lcom/android/server/connectivity/NetworkAgentInfo;)V

    #@4b
    .line 2395
    :cond_1
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->notifyIfacesChangedForNetworkStats()V

    #@4e
    .line 2400
    const v7, 0x80004

    #@51
    invoke-virtual {p0, v3, v7}, Lcom/android/server/ConnectivityService;->notifyNetworkCallbacks(Lcom/android/server/connectivity/NetworkAgentInfo;I)V

    #@54
    .line 2401
    iget-object v7, p0, Lcom/android/server/ConnectivityService;->mKeepaliveTracker:Lcom/android/server/connectivity/KeepaliveTracker;

    #@56
    .line 2402
    const/16 v8, -0x14

    #@58
    .line 2401
    invoke-virtual {v7, v3, v8}, Lcom/android/server/connectivity/KeepaliveTracker;->handleStopAllKeepalives(Lcom/android/server/connectivity/NetworkAgentInfo;I)V

    #@5b
    .line 2403
    iget-object v7, v3, Lcom/android/server/connectivity/NetworkAgentInfo;->networkMonitor:Lcom/android/server/connectivity/NetworkMonitor;

    #@5d
    const v8, 0x82007

    #@60
    invoke-virtual {v7, v8}, Lcom/android/server/connectivity/NetworkMonitor;->sendMessage(I)V

    #@63
    .line 2404
    iget-object v7, p0, Lcom/android/server/ConnectivityService;->mNetworkAgentInfos:Ljava/util/HashMap;

    #@65
    iget-object v8, p1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    #@67
    invoke-virtual {v7, v8}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    #@6a
    .line 2405
    iget-object v7, v3, Lcom/android/server/connectivity/NetworkAgentInfo;->linkProperties:Landroid/net/LinkProperties;

    #@6c
    invoke-direct {p0, v10, v7, v3}, Lcom/android/server/ConnectivityService;->updateClat(Landroid/net/LinkProperties;Landroid/net/LinkProperties;Lcom/android/server/connectivity/NetworkAgentInfo;)V

    #@6f
    .line 2406
    iget-object v8, p0, Lcom/android/server/ConnectivityService;->mNetworkForNetId:Landroid/util/SparseArray;

    #@71
    monitor-enter v8

    #@72
    .line 2409
    :try_start_0
    iget-object v7, p0, Lcom/android/server/ConnectivityService;->mNetworkForNetId:Landroid/util/SparseArray;

    #@74
    iget-object v9, v3, Lcom/android/server/connectivity/NetworkAgentInfo;->network:Landroid/net/Network;

    #@76
    iget v9, v9, Landroid/net/Network;->netId:I

    #@78
    invoke-virtual {v7, v9}, Landroid/util/SparseArray;->remove(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@7b
    monitor-exit v8

    #@7c
    .line 2412
    const/4 v2, 0x0

    #@7d
    .local v2, "i":I
    :goto_0
    invoke-virtual {v3}, Lcom/android/server/connectivity/NetworkAgentInfo;->numNetworkRequests()I

    #@80
    move-result v7

    #@81
    if-ge v2, v7, :cond_3

    #@83
    .line 2413
    invoke-virtual {v3, v2}, Lcom/android/server/connectivity/NetworkAgentInfo;->requestAt(I)Landroid/net/NetworkRequest;

    #@86
    move-result-object v5

    #@87
    .line 2414
    .local v5, "request":Landroid/net/NetworkRequest;
    iget-object v7, p0, Lcom/android/server/ConnectivityService;->mNetworkForRequestId:Landroid/util/SparseArray;

    #@89
    iget v8, v5, Landroid/net/NetworkRequest;->requestId:I

    #@8b
    invoke-virtual {v7, v8}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    #@8e
    move-result-object v0

    #@8f
    check-cast v0, Lcom/android/server/connectivity/NetworkAgentInfo;

    #@91
    .line 2415
    .local v0, "currentNetwork":Lcom/android/server/connectivity/NetworkAgentInfo;
    if-eqz v0, :cond_2

    #@93
    iget-object v7, v0, Lcom/android/server/connectivity/NetworkAgentInfo;->network:Landroid/net/Network;

    #@95
    iget v7, v7, Landroid/net/Network;->netId:I

    #@97
    iget-object v8, v3, Lcom/android/server/connectivity/NetworkAgentInfo;->network:Landroid/net/Network;

    #@99
    iget v8, v8, Landroid/net/Network;->netId:I

    #@9b
    if-ne v7, v8, :cond_2

    #@9d
    .line 2416
    iget-object v7, p0, Lcom/android/server/ConnectivityService;->mNetworkForRequestId:Landroid/util/SparseArray;

    #@9f
    iget v8, v5, Landroid/net/NetworkRequest;->requestId:I

    #@a1
    invoke-virtual {v7, v8}, Landroid/util/SparseArray;->remove(I)V

    #@a4
    .line 2417
    invoke-direct {p0, v5, v11}, Lcom/android/server/ConnectivityService;->sendUpdatedScoreToFactories(Landroid/net/NetworkRequest;I)V

    #@a7
    .line 2412
    :cond_2
    add-int/lit8 v2, v2, 0x1

    #@a9
    goto :goto_0

    #@aa
    .line 2406
    .end local v0    # "currentNetwork":Lcom/android/server/connectivity/NetworkAgentInfo;
    .end local v2    # "i":I
    .end local v5    # "request":Landroid/net/NetworkRequest;
    :catchall_0
    move-exception v7

    #@ab
    monitor-exit v8

    #@ac
    throw v7

    #@ad
    .line 2420
    .restart local v2    # "i":I
    :cond_3
    invoke-virtual {v3}, Lcom/android/server/connectivity/NetworkAgentInfo;->clearLingerState()V

    #@b0
    .line 2421
    iget-object v7, p0, Lcom/android/server/ConnectivityService;->mDefaultRequest:Landroid/net/NetworkRequest;

    #@b2
    iget v7, v7, Landroid/net/NetworkRequest;->requestId:I

    #@b4
    invoke-virtual {v3, v7}, Lcom/android/server/connectivity/NetworkAgentInfo;->isSatisfyingRequest(I)Z

    #@b7
    move-result v7

    #@b8
    if-eqz v7, :cond_4

    #@ba
    .line 2422
    invoke-direct {p0, v3}, Lcom/android/server/ConnectivityService;->removeDataActivityTracking(Lcom/android/server/connectivity/NetworkAgentInfo;)V

    #@bd
    .line 2423
    invoke-direct {p0, v3}, Lcom/android/server/ConnectivityService;->notifyLockdownVpn(Lcom/android/server/connectivity/NetworkAgentInfo;)V

    #@c0
    .line 2424
    invoke-virtual {v3}, Lcom/android/server/connectivity/NetworkAgentInfo;->name()Ljava/lang/String;

    #@c3
    move-result-object v7

    #@c4
    invoke-direct {p0, v7}, Lcom/android/server/ConnectivityService;->requestNetworkTransitionWakelock(Ljava/lang/String;)V

    #@c7
    .line 2426
    :cond_4
    iget-object v7, p0, Lcom/android/server/ConnectivityService;->mLegacyTypeTracker:Lcom/android/server/ConnectivityService$LegacyTypeTracker;

    #@c9
    invoke-virtual {v7, v3, v6}, Lcom/android/server/ConnectivityService$LegacyTypeTracker;->remove(Lcom/android/server/connectivity/NetworkAgentInfo;Z)V

    #@cc
    .line 2427
    invoke-direct {p0, v10, v11}, Lcom/android/server/ConnectivityService;->rematchAllNetworksAndRequests(Lcom/android/server/connectivity/NetworkAgentInfo;I)V

    #@cf
    .line 2428
    iget-object v7, p0, Lcom/android/server/ConnectivityService;->mLingerMonitor:Lcom/android/server/connectivity/LingerMonitor;

    #@d1
    invoke-virtual {v7, v3}, Lcom/android/server/connectivity/LingerMonitor;->noteDisconnect(Lcom/android/server/connectivity/NetworkAgentInfo;)V

    #@d4
    .line 2429
    iget-boolean v7, v3, Lcom/android/server/connectivity/NetworkAgentInfo;->created:Z

    #@d6
    if-eqz v7, :cond_5

    #@d8
    .line 2439
    :try_start_1
    iget-object v7, p0, Lcom/android/server/ConnectivityService;->mNetd:Landroid/os/INetworkManagementService;

    #@da
    iget-object v8, v3, Lcom/android/server/connectivity/NetworkAgentInfo;->network:Landroid/net/Network;

    #@dc
    iget v8, v8, Landroid/net/Network;->netId:I

    #@de
    invoke-interface {v7, v8}, Landroid/os/INetworkManagementService;->removeNetwork(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    #@e1
    .line 2444
    :cond_5
    :goto_1
    iget-object v8, p0, Lcom/android/server/ConnectivityService;->mNetworkForNetId:Landroid/util/SparseArray;

    #@e3
    monitor-enter v8

    #@e4
    .line 2445
    :try_start_2
    iget-object v7, p0, Lcom/android/server/ConnectivityService;->mNetIdInUse:Landroid/util/SparseBooleanArray;

    #@e6
    iget-object v9, v3, Lcom/android/server/connectivity/NetworkAgentInfo;->network:Landroid/net/Network;

    #@e8
    iget v9, v9, Landroid/net/Network;->netId:I

    #@ea
    invoke-virtual {v7, v9}, Landroid/util/SparseBooleanArray;->delete(I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    #@ed
    monitor-exit v8

    #@ee
    .line 2371
    .end local v2    # "i":I
    .end local v6    # "wasDefault":Z
    :cond_6
    :goto_2
    return-void

    #@ef
    .line 2440
    .restart local v2    # "i":I
    .restart local v6    # "wasDefault":Z
    :catch_0
    move-exception v1

    #@f0
    .line 2441
    .local v1, "e":Ljava/lang/Exception;
    new-instance v7, Ljava/lang/StringBuilder;

    #@f2
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    #@f5
    const-string/jumbo v8, "Exception removing network: "

    #@f8
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@fb
    move-result-object v7

    #@fc
    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@ff
    move-result-object v7

    #@100
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@103
    move-result-object v7

    #@104
    invoke-static {v7}, Lcom/android/server/ConnectivityService;->loge(Ljava/lang/String;)V

    #@107
    goto :goto_1

    #@108
    .line 2444
    .end local v1    # "e":Ljava/lang/Exception;
    :catchall_1
    move-exception v7

    #@109
    monitor-exit v8

    #@10a
    throw v7

    #@10b
    .line 2448
    .end local v2    # "i":I
    .end local v6    # "wasDefault":Z
    :cond_7
    iget-object v7, p0, Lcom/android/server/ConnectivityService;->mNetworkFactoryInfos:Ljava/util/HashMap;

    #@10d
    iget-object v8, p1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    #@10f
    invoke-virtual {v7, v8}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    #@112
    move-result-object v4

    #@113
    check-cast v4, Lcom/android/server/ConnectivityService$NetworkFactoryInfo;

    #@115
    .line 2449
    .local v4, "nfi":Lcom/android/server/ConnectivityService$NetworkFactoryInfo;
    if-eqz v4, :cond_6

    #@117
    new-instance v7, Ljava/lang/StringBuilder;

    #@119
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    #@11c
    const-string/jumbo v8, "unregisterNetworkFactory for "

    #@11f
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@122
    move-result-object v7

    #@123
    iget-object v8, v4, Lcom/android/server/ConnectivityService$NetworkFactoryInfo;->name:Ljava/lang/String;

    #@125
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@128
    move-result-object v7

    #@129
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@12c
    move-result-object v7

    #@12d
    invoke-static {v7}, Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V

    #@130
    goto :goto_2
.end method

.method private handleAsyncChannelHalfConnect(Landroid/os/Message;)V
    .locals 9
    .param p1, "msg"    # Landroid/os/Message;

    #@0
    .prologue
    const/4 v6, 0x0

    #@1
    .line 2334
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@3
    check-cast v0, Lcom/android/internal/util/AsyncChannel;

    #@5
    .line 2335
    .local v0, "ac":Lcom/android/internal/util/AsyncChannel;
    iget-object v5, p0, Lcom/android/server/ConnectivityService;->mNetworkFactoryInfos:Ljava/util/HashMap;

    #@7
    iget-object v7, p1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    #@9
    invoke-virtual {v5, v7}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    #@c
    move-result v5

    #@d
    if-eqz v5, :cond_4

    #@f
    .line 2336
    iget v5, p1, Landroid/os/Message;->arg1:I

    #@11
    if-nez v5, :cond_2

    #@13
    .line 2339
    iget-object v5, p0, Lcom/android/server/ConnectivityService;->mNetworkRequests:Ljava/util/HashMap;

    #@15
    invoke-virtual {v5}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    #@18
    move-result-object v5

    #@19
    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@1c
    move-result-object v3

    #@1d
    .local v3, "nri$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    #@20
    move-result v5

    #@21
    if-eqz v5, :cond_3

    #@23
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@26
    move-result-object v2

    #@27
    check-cast v2, Lcom/android/server/ConnectivityService$NetworkRequestInfo;

    #@29
    .line 2340
    .local v2, "nri":Lcom/android/server/ConnectivityService$NetworkRequestInfo;
    iget-object v5, v2, Lcom/android/server/ConnectivityService$NetworkRequestInfo;->request:Landroid/net/NetworkRequest;

    #@2b
    invoke-virtual {v5}, Landroid/net/NetworkRequest;->isListen()Z

    #@2e
    move-result v5

    #@2f
    if-nez v5, :cond_0

    #@31
    .line 2341
    iget-object v5, p0, Lcom/android/server/ConnectivityService;->mNetworkForRequestId:Landroid/util/SparseArray;

    #@33
    iget-object v7, v2, Lcom/android/server/ConnectivityService$NetworkRequestInfo;->request:Landroid/net/NetworkRequest;

    #@35
    iget v7, v7, Landroid/net/NetworkRequest;->requestId:I

    #@37
    invoke-virtual {v5, v7}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    #@3a
    move-result-object v1

    #@3b
    check-cast v1, Lcom/android/server/connectivity/NetworkAgentInfo;

    #@3d
    .line 2343
    .local v1, "nai":Lcom/android/server/connectivity/NetworkAgentInfo;
    if-eqz v1, :cond_1

    #@3f
    invoke-virtual {v1}, Lcom/android/server/connectivity/NetworkAgentInfo;->getCurrentScore()I

    #@42
    move-result v5

    #@43
    :goto_1
    iget-object v7, v2, Lcom/android/server/ConnectivityService$NetworkRequestInfo;->request:Landroid/net/NetworkRequest;

    #@45
    .line 2342
    const v8, 0x83000

    #@48
    invoke-virtual {v0, v8, v5, v6, v7}, Lcom/android/internal/util/AsyncChannel;->sendMessage(IIILjava/lang/Object;)V

    #@4b
    goto :goto_0

    #@4c
    :cond_1
    move v5, v6

    #@4d
    .line 2343
    goto :goto_1

    #@4e
    .line 2346
    .end local v1    # "nai":Lcom/android/server/connectivity/NetworkAgentInfo;
    .end local v2    # "nri":Lcom/android/server/ConnectivityService$NetworkRequestInfo;
    .end local v3    # "nri$iterator":Ljava/util/Iterator;
    :cond_2
    const-string/jumbo v5, "Error connecting NetworkFactory"

    #@51
    invoke-static {v5}, Lcom/android/server/ConnectivityService;->loge(Ljava/lang/String;)V

    #@54
    .line 2347
    iget-object v5, p0, Lcom/android/server/ConnectivityService;->mNetworkFactoryInfos:Ljava/util/HashMap;

    #@56
    iget-object v6, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@58
    invoke-virtual {v5, v6}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    #@5b
    .line 2333
    :cond_3
    :goto_2
    return-void

    #@5c
    .line 2349
    :cond_4
    iget-object v5, p0, Lcom/android/server/ConnectivityService;->mNetworkAgentInfos:Ljava/util/HashMap;

    #@5e
    iget-object v6, p1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    #@60
    invoke-virtual {v5, v6}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    #@63
    move-result v5

    #@64
    if-eqz v5, :cond_3

    #@66
    .line 2350
    iget v5, p1, Landroid/os/Message;->arg1:I

    #@68
    if-nez v5, :cond_5

    #@6a
    .line 2353
    iget-object v5, p0, Lcom/android/server/ConnectivityService;->mNetworkAgentInfos:Ljava/util/HashMap;

    #@6c
    iget-object v6, p1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    #@6e
    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@71
    move-result-object v5

    #@72
    check-cast v5, Lcom/android/server/connectivity/NetworkAgentInfo;

    #@74
    iget-object v5, v5, Lcom/android/server/connectivity/NetworkAgentInfo;->asyncChannel:Lcom/android/internal/util/AsyncChannel;

    #@76
    .line 2354
    const v6, 0x11001

    #@79
    .line 2353
    invoke-virtual {v5, v6}, Lcom/android/internal/util/AsyncChannel;->sendMessage(I)V

    #@7c
    goto :goto_2

    #@7d
    .line 2356
    :cond_5
    const-string/jumbo v5, "Error connecting NetworkAgent"

    #@80
    invoke-static {v5}, Lcom/android/server/ConnectivityService;->loge(Ljava/lang/String;)V

    #@83
    .line 2357
    iget-object v5, p0, Lcom/android/server/ConnectivityService;->mNetworkAgentInfos:Ljava/util/HashMap;

    #@85
    iget-object v6, p1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    #@87
    invoke-virtual {v5, v6}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    #@8a
    move-result-object v1

    #@8b
    check-cast v1, Lcom/android/server/connectivity/NetworkAgentInfo;

    #@8d
    .line 2358
    .restart local v1    # "nai":Lcom/android/server/connectivity/NetworkAgentInfo;
    if-eqz v1, :cond_3

    #@8f
    .line 2359
    invoke-direct {p0, v1}, Lcom/android/server/ConnectivityService;->isDefaultNetwork(Lcom/android/server/connectivity/NetworkAgentInfo;)Z

    #@92
    move-result v4

    #@93
    .line 2360
    .local v4, "wasDefault":Z
    iget-object v6, p0, Lcom/android/server/ConnectivityService;->mNetworkForNetId:Landroid/util/SparseArray;

    #@95
    monitor-enter v6

    #@96
    .line 2361
    :try_start_0
    iget-object v5, p0, Lcom/android/server/ConnectivityService;->mNetworkForNetId:Landroid/util/SparseArray;

    #@98
    iget-object v7, v1, Lcom/android/server/connectivity/NetworkAgentInfo;->network:Landroid/net/Network;

    #@9a
    iget v7, v7, Landroid/net/Network;->netId:I

    #@9c
    invoke-virtual {v5, v7}, Landroid/util/SparseArray;->remove(I)V

    #@9f
    .line 2362
    iget-object v5, p0, Lcom/android/server/ConnectivityService;->mNetIdInUse:Landroid/util/SparseBooleanArray;

    #@a1
    iget-object v7, v1, Lcom/android/server/connectivity/NetworkAgentInfo;->network:Landroid/net/Network;

    #@a3
    iget v7, v7, Landroid/net/Network;->netId:I

    #@a5
    invoke-virtual {v5, v7}, Landroid/util/SparseBooleanArray;->delete(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@a8
    monitor-exit v6

    #@a9
    .line 2365
    iget-object v5, p0, Lcom/android/server/ConnectivityService;->mLegacyTypeTracker:Lcom/android/server/ConnectivityService$LegacyTypeTracker;

    #@ab
    invoke-virtual {v5, v1, v4}, Lcom/android/server/ConnectivityService$LegacyTypeTracker;->remove(Lcom/android/server/connectivity/NetworkAgentInfo;Z)V

    #@ae
    goto :goto_2

    #@af
    .line 2360
    :catchall_0
    move-exception v5

    #@b0
    monitor-exit v6

    #@b1
    throw v5
.end method

.method private handleDeprecatedGlobalHttpProxy()V
    .locals 10

    #@0
    .prologue
    const/4 v9, 0x1

    #@1
    const/4 v8, 0x0

    #@2
    .line 3375
    iget-object v6, p0, Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;

    #@4
    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    #@7
    move-result-object v6

    #@8
    .line 3376
    const-string/jumbo v7, "http_proxy"

    #@b
    .line 3375
    invoke-static {v6, v7}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    #@e
    move-result-object v3

    #@f
    .line 3377
    .local v3, "proxy":Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@12
    move-result v6

    #@13
    if-nez v6, :cond_2

    #@15
    .line 3378
    const-string/jumbo v6, ":"

    #@18
    invoke-virtual {v3, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    #@1b
    move-result-object v0

    #@1c
    .line 3379
    .local v0, "data":[Ljava/lang/String;
    array-length v6, v0

    #@1d
    if-nez v6, :cond_0

    #@1f
    .line 3380
    return-void

    #@20
    .line 3383
    :cond_0
    aget-object v4, v0, v8

    #@22
    .line 3384
    .local v4, "proxyHost":Ljava/lang/String;
    const/16 v5, 0x1f90

    #@24
    .line 3385
    .local v5, "proxyPort":I
    array-length v6, v0

    #@25
    if-le v6, v9, :cond_1

    #@27
    .line 3387
    const/4 v6, 0x1

    #@28
    :try_start_0
    aget-object v6, v0, v6

    #@2a
    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    #@2d
    move-result v5

    #@2e
    .line 3392
    :cond_1
    new-instance v2, Landroid/net/ProxyInfo;

    #@30
    aget-object v6, v0, v8

    #@32
    const-string/jumbo v7, ""

    #@35
    invoke-direct {v2, v6, v5, v7}, Landroid/net/ProxyInfo;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    #@38
    .line 3393
    .local v2, "p":Landroid/net/ProxyInfo;
    invoke-virtual {p0, v2}, Lcom/android/server/ConnectivityService;->setGlobalProxy(Landroid/net/ProxyInfo;)V

    #@3b
    .line 3374
    .end local v0    # "data":[Ljava/lang/String;
    .end local v2    # "p":Landroid/net/ProxyInfo;
    .end local v4    # "proxyHost":Ljava/lang/String;
    .end local v5    # "proxyPort":I
    :cond_2
    return-void

    #@3c
    .line 3388
    .restart local v0    # "data":[Ljava/lang/String;
    .restart local v4    # "proxyHost":Ljava/lang/String;
    .restart local v5    # "proxyPort":I
    :catch_0
    move-exception v1

    #@3d
    .line 3389
    .local v1, "e":Ljava/lang/NumberFormatException;
    return-void
.end method

.method private handleLingerComplete(Lcom/android/server/connectivity/NetworkAgentInfo;)V
    .locals 2
    .param p1, "oldNetwork"    # Lcom/android/server/connectivity/NetworkAgentInfo;

    #@0
    .prologue
    .line 4787
    if-nez p1, :cond_0

    #@2
    .line 4788
    const-string/jumbo v0, "Unknown NetworkAgentInfo in handleLingerComplete"

    #@5
    invoke-static {v0}, Lcom/android/server/ConnectivityService;->loge(Ljava/lang/String;)V

    #@8
    .line 4789
    return-void

    #@9
    .line 4791
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    #@b
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@e
    const-string/jumbo v1, "handleLingerComplete for "

    #@11
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@14
    move-result-object v0

    #@15
    invoke-virtual {p1}, Lcom/android/server/connectivity/NetworkAgentInfo;->name()Ljava/lang/String;

    #@18
    move-result-object v1

    #@19
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1c
    move-result-object v0

    #@1d
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@20
    move-result-object v0

    #@21
    invoke-static {v0}, Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V

    #@24
    .line 4795
    invoke-virtual {p1}, Lcom/android/server/connectivity/NetworkAgentInfo;->clearLingerState()V

    #@27
    .line 4797
    sget-object v0, Lcom/android/server/ConnectivityService$UnneededFor;->TEARDOWN:Lcom/android/server/ConnectivityService$UnneededFor;

    #@29
    invoke-direct {p0, p1, v0}, Lcom/android/server/ConnectivityService;->unneeded(Lcom/android/server/connectivity/NetworkAgentInfo;Lcom/android/server/ConnectivityService$UnneededFor;)Z

    #@2c
    move-result v0

    #@2d
    if-eqz v0, :cond_1

    #@2f
    .line 4799
    invoke-direct {p0, p1}, Lcom/android/server/ConnectivityService;->teardownUnneededNetwork(Lcom/android/server/connectivity/NetworkAgentInfo;)V

    #@32
    .line 4786
    :goto_0
    return-void

    #@33
    .line 4802
    :cond_1
    invoke-virtual {p1}, Lcom/android/server/connectivity/NetworkAgentInfo;->getCurrentScore()I

    #@36
    move-result v0

    #@37
    .line 4803
    iget-object v1, p1, Lcom/android/server/connectivity/NetworkAgentInfo;->networkCapabilities:Landroid/net/NetworkCapabilities;

    #@39
    .line 4802
    invoke-direct {p0, v0, p1, v1}, Lcom/android/server/ConnectivityService;->updateCapabilities(ILcom/android/server/connectivity/NetworkAgentInfo;Landroid/net/NetworkCapabilities;)V

    #@3c
    goto :goto_0
.end method

.method private handleMobileDataAlwaysOn()V
    .locals 6

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    const/4 v1, 0x1

    #@2
    const/4 v2, 0x0

    #@3
    .line 893
    iget-object v3, p0, Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;

    #@5
    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    #@8
    move-result-object v3

    #@9
    const-string/jumbo v4, "mobile_data_always_on"

    #@c
    .line 892
    invoke-static {v3, v4, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    #@f
    move-result v3

    #@10
    if-ne v3, v1, :cond_0

    #@12
    const/4 v0, 0x1

    #@13
    .line 894
    .local v0, "enable":Z
    :goto_0
    iget-object v3, p0, Lcom/android/server/ConnectivityService;->mNetworkRequests:Ljava/util/HashMap;

    #@15
    iget-object v4, p0, Lcom/android/server/ConnectivityService;->mDefaultMobileDataRequest:Landroid/net/NetworkRequest;

    #@17
    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@1a
    move-result-object v3

    #@1b
    if-eqz v3, :cond_1

    #@1d
    .line 895
    .local v1, "isEnabled":Z
    :goto_1
    if-ne v0, v1, :cond_2

    #@1f
    .line 896
    return-void

    #@20
    .line 892
    .end local v0    # "enable":Z
    .end local v1    # "isEnabled":Z
    :cond_0
    const/4 v0, 0x0

    #@21
    .restart local v0    # "enable":Z
    goto :goto_0

    #@22
    :cond_1
    move v1, v2

    #@23
    .line 894
    goto :goto_1

    #@24
    .line 899
    .restart local v1    # "isEnabled":Z
    :cond_2
    if-eqz v0, :cond_3

    #@26
    .line 900
    new-instance v2, Lcom/android/server/ConnectivityService$NetworkRequestInfo;

    #@28
    .line 901
    iget-object v3, p0, Lcom/android/server/ConnectivityService;->mDefaultMobileDataRequest:Landroid/net/NetworkRequest;

    #@2a
    new-instance v4, Landroid/os/Binder;

    #@2c
    invoke-direct {v4}, Landroid/os/Binder;-><init>()V

    #@2f
    .line 900
    invoke-direct {v2, p0, v5, v3, v4}, Lcom/android/server/ConnectivityService$NetworkRequestInfo;-><init>(Lcom/android/server/ConnectivityService;Landroid/os/Messenger;Landroid/net/NetworkRequest;Landroid/os/IBinder;)V

    #@32
    invoke-direct {p0, v2}, Lcom/android/server/ConnectivityService;->handleRegisterNetworkRequest(Lcom/android/server/ConnectivityService$NetworkRequestInfo;)V

    #@35
    .line 891
    :goto_2
    return-void

    #@36
    .line 903
    :cond_3
    iget-object v2, p0, Lcom/android/server/ConnectivityService;->mDefaultMobileDataRequest:Landroid/net/NetworkRequest;

    #@38
    const/16 v3, 0x3e8

    #@3a
    invoke-direct {p0, v2, v3}, Lcom/android/server/ConnectivityService;->handleReleaseNetworkRequest(Landroid/net/NetworkRequest;I)V

    #@3d
    goto :goto_2
.end method

.method private handleNetworkUnvalidated(Lcom/android/server/connectivity/NetworkAgentInfo;)V
    .locals 3
    .param p1, "nai"    # Lcom/android/server/connectivity/NetworkAgentInfo;

    #@0
    .prologue
    .line 2866
    iget-object v0, p1, Lcom/android/server/connectivity/NetworkAgentInfo;->networkCapabilities:Landroid/net/NetworkCapabilities;

    #@2
    .line 2867
    .local v0, "nc":Landroid/net/NetworkCapabilities;
    new-instance v1, Ljava/lang/StringBuilder;

    #@4
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@7
    const-string/jumbo v2, "handleNetworkUnvalidated "

    #@a
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@d
    move-result-object v1

    #@e
    invoke-virtual {p1}, Lcom/android/server/connectivity/NetworkAgentInfo;->name()Ljava/lang/String;

    #@11
    move-result-object v2

    #@12
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@15
    move-result-object v1

    #@16
    const-string/jumbo v2, " cap="

    #@19
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1c
    move-result-object v1

    #@1d
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@20
    move-result-object v1

    #@21
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@24
    move-result-object v1

    #@25
    invoke-static {v1}, Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V

    #@28
    .line 2869
    const/4 v1, 0x1

    #@29
    invoke-virtual {v0, v1}, Landroid/net/NetworkCapabilities;->hasTransport(I)Z

    #@2c
    move-result v1

    #@2d
    if-eqz v1, :cond_0

    #@2f
    .line 2870
    iget-object v1, p0, Lcom/android/server/ConnectivityService;->mAvoidBadWifiTracker:Landroid/net/util/AvoidBadWifiTracker;

    #@31
    invoke-virtual {v1}, Landroid/net/util/AvoidBadWifiTracker;->shouldNotifyWifiUnvalidated()Z

    #@34
    move-result v1

    #@35
    .line 2869
    if-eqz v1, :cond_0

    #@37
    .line 2871
    sget-object v1, Lcom/android/server/connectivity/NetworkNotificationManager$NotificationType;->LOST_INTERNET:Lcom/android/server/connectivity/NetworkNotificationManager$NotificationType;

    #@39
    invoke-direct {p0, p1, v1}, Lcom/android/server/ConnectivityService;->showValidationNotification(Lcom/android/server/connectivity/NetworkAgentInfo;Lcom/android/server/connectivity/NetworkNotificationManager$NotificationType;)V

    #@3c
    .line 2865
    :cond_0
    return-void
.end method

.method private handlePromptUnvalidated(Landroid/net/Network;)V
    .locals 2
    .param p1, "network"    # Landroid/net/Network;

    #@0
    .prologue
    .line 2853
    invoke-direct {p0, p1}, Lcom/android/server/ConnectivityService;->getNetworkAgentInfoForNetwork(Landroid/net/Network;)Lcom/android/server/connectivity/NetworkAgentInfo;

    #@3
    move-result-object v0

    #@4
    .line 2858
    .local v0, "nai":Lcom/android/server/connectivity/NetworkAgentInfo;
    if-eqz v0, :cond_0

    #@6
    iget-boolean v1, v0, Lcom/android/server/connectivity/NetworkAgentInfo;->everValidated:Z

    #@8
    if-nez v1, :cond_0

    #@a
    iget-boolean v1, v0, Lcom/android/server/connectivity/NetworkAgentInfo;->everCaptivePortalDetected:Z

    #@c
    if-nez v1, :cond_0

    #@e
    .line 2859
    iget-object v1, v0, Lcom/android/server/connectivity/NetworkAgentInfo;->networkMisc:Landroid/net/NetworkMisc;

    #@10
    iget-boolean v1, v1, Landroid/net/NetworkMisc;->explicitlySelected:Z

    #@12
    if-eqz v1, :cond_0

    #@14
    iget-object v1, v0, Lcom/android/server/connectivity/NetworkAgentInfo;->networkMisc:Landroid/net/NetworkMisc;

    #@16
    iget-boolean v1, v1, Landroid/net/NetworkMisc;->acceptUnvalidated:Z

    #@18
    .line 2858
    if-eqz v1, :cond_1

    #@1a
    .line 2860
    :cond_0
    return-void

    #@1b
    .line 2862
    :cond_1
    sget-object v1, Lcom/android/server/connectivity/NetworkNotificationManager$NotificationType;->NO_INTERNET:Lcom/android/server/connectivity/NetworkNotificationManager$NotificationType;

    #@1d
    invoke-direct {p0, v0, v1}, Lcom/android/server/ConnectivityService;->showValidationNotification(Lcom/android/server/connectivity/NetworkAgentInfo;Lcom/android/server/connectivity/NetworkNotificationManager$NotificationType;)V

    #@20
    .line 2851
    return-void
.end method

.method private handleRegisterNetworkAgent(Lcom/android/server/connectivity/NetworkAgentInfo;)V
    .locals 5
    .param p1, "na"    # Lcom/android/server/connectivity/NetworkAgentInfo;

    #@0
    .prologue
    .line 4435
    iget-object v1, p0, Lcom/android/server/ConnectivityService;->mNetworkAgentInfos:Ljava/util/HashMap;

    #@2
    iget-object v2, p1, Lcom/android/server/connectivity/NetworkAgentInfo;->messenger:Landroid/os/Messenger;

    #@4
    invoke-virtual {v1, v2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@7
    .line 4436
    iget-object v2, p0, Lcom/android/server/ConnectivityService;->mNetworkForNetId:Landroid/util/SparseArray;

    #@9
    monitor-enter v2

    #@a
    .line 4437
    :try_start_0
    iget-object v1, p0, Lcom/android/server/ConnectivityService;->mNetworkForNetId:Landroid/util/SparseArray;

    #@c
    iget-object v3, p1, Lcom/android/server/connectivity/NetworkAgentInfo;->network:Landroid/net/Network;

    #@e
    iget v3, v3, Landroid/net/Network;->netId:I

    #@10
    invoke-virtual {v1, v3, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@13
    monitor-exit v2

    #@14
    .line 4439
    iget-object v1, p1, Lcom/android/server/connectivity/NetworkAgentInfo;->asyncChannel:Lcom/android/internal/util/AsyncChannel;

    #@16
    iget-object v2, p0, Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;

    #@18
    iget-object v3, p0, Lcom/android/server/ConnectivityService;->mTrackerHandler:Lcom/android/server/ConnectivityService$NetworkStateTrackerHandler;

    #@1a
    iget-object v4, p1, Lcom/android/server/connectivity/NetworkAgentInfo;->messenger:Landroid/os/Messenger;

    #@1c
    invoke-virtual {v1, v2, v3, v4}, Lcom/android/internal/util/AsyncChannel;->connect(Landroid/content/Context;Landroid/os/Handler;Landroid/os/Messenger;)V

    #@1f
    .line 4440
    iget-object v0, p1, Lcom/android/server/connectivity/NetworkAgentInfo;->networkInfo:Landroid/net/NetworkInfo;

    #@21
    .line 4441
    .local v0, "networkInfo":Landroid/net/NetworkInfo;
    const/4 v1, 0x0

    #@22
    iput-object v1, p1, Lcom/android/server/connectivity/NetworkAgentInfo;->networkInfo:Landroid/net/NetworkInfo;

    #@24
    .line 4442
    invoke-direct {p0, p1, v0}, Lcom/android/server/ConnectivityService;->updateNetworkInfo(Lcom/android/server/connectivity/NetworkAgentInfo;Landroid/net/NetworkInfo;)V

    #@27
    .line 4433
    return-void

    #@28
    .line 4436
    .end local v0    # "networkInfo":Landroid/net/NetworkInfo;
    :catchall_0
    move-exception v1

    #@29
    monitor-exit v2

    #@2a
    throw v1
.end method

.method private handleRegisterNetworkFactory(Lcom/android/server/ConnectivityService$NetworkFactoryInfo;)V
    .locals 4
    .param p1, "nfi"    # Lcom/android/server/ConnectivityService$NetworkFactoryInfo;

    #@0
    .prologue
    .line 4344
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    const-string/jumbo v1, "Got NetworkFactory Messenger for "

    #@8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b
    move-result-object v0

    #@c
    iget-object v1, p1, Lcom/android/server/ConnectivityService$NetworkFactoryInfo;->name:Ljava/lang/String;

    #@e
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@11
    move-result-object v0

    #@12
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@15
    move-result-object v0

    #@16
    invoke-static {v0}, Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V

    #@19
    .line 4345
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mNetworkFactoryInfos:Ljava/util/HashMap;

    #@1b
    iget-object v1, p1, Lcom/android/server/ConnectivityService$NetworkFactoryInfo;->messenger:Landroid/os/Messenger;

    #@1d
    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@20
    .line 4346
    iget-object v0, p1, Lcom/android/server/ConnectivityService$NetworkFactoryInfo;->asyncChannel:Lcom/android/internal/util/AsyncChannel;

    #@22
    iget-object v1, p0, Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;

    #@24
    iget-object v2, p0, Lcom/android/server/ConnectivityService;->mTrackerHandler:Lcom/android/server/ConnectivityService$NetworkStateTrackerHandler;

    #@26
    iget-object v3, p1, Lcom/android/server/ConnectivityService$NetworkFactoryInfo;->messenger:Landroid/os/Messenger;

    #@28
    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/util/AsyncChannel;->connect(Landroid/content/Context;Landroid/os/Handler;Landroid/os/Messenger;)V

    #@2b
    .line 4343
    return-void
.end method

.method private handleRegisterNetworkRequest(Lcom/android/server/ConnectivityService$NetworkRequestInfo;)V
    .locals 7
    .param p1, "nri"    # Lcom/android/server/ConnectivityService$NetworkRequestInfo;

    #@0
    .prologue
    const/4 v6, 0x0

    #@1
    const/4 v5, 0x0

    #@2
    .line 2481
    iget-object v2, p0, Lcom/android/server/ConnectivityService;->mNetworkRequests:Ljava/util/HashMap;

    #@4
    iget-object v3, p1, Lcom/android/server/ConnectivityService$NetworkRequestInfo;->request:Landroid/net/NetworkRequest;

    #@6
    invoke-virtual {v2, v3, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@9
    .line 2482
    iget-object v2, p0, Lcom/android/server/ConnectivityService;->mNetworkRequestInfoLogs:Landroid/util/LocalLog;

    #@b
    new-instance v3, Ljava/lang/StringBuilder;

    #@d
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@10
    const-string/jumbo v4, "REGISTER "

    #@13
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@16
    move-result-object v3

    #@17
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@1a
    move-result-object v3

    #@1b
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1e
    move-result-object v3

    #@1f
    invoke-virtual {v2, v3}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    #@22
    .line 2483
    iget-object v2, p1, Lcom/android/server/ConnectivityService$NetworkRequestInfo;->request:Landroid/net/NetworkRequest;

    #@24
    invoke-virtual {v2}, Landroid/net/NetworkRequest;->isListen()Z

    #@27
    move-result v2

    #@28
    if-eqz v2, :cond_1

    #@2a
    .line 2484
    iget-object v2, p0, Lcom/android/server/ConnectivityService;->mNetworkAgentInfos:Ljava/util/HashMap;

    #@2c
    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    #@2f
    move-result-object v2

    #@30
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@33
    move-result-object v1

    #@34
    .local v1, "network$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@37
    move-result v2

    #@38
    if-eqz v2, :cond_1

    #@3a
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@3d
    move-result-object v0

    #@3e
    check-cast v0, Lcom/android/server/connectivity/NetworkAgentInfo;

    #@40
    .line 2485
    .local v0, "network":Lcom/android/server/connectivity/NetworkAgentInfo;
    iget-object v2, p1, Lcom/android/server/ConnectivityService$NetworkRequestInfo;->request:Landroid/net/NetworkRequest;

    #@42
    iget-object v2, v2, Landroid/net/NetworkRequest;->networkCapabilities:Landroid/net/NetworkCapabilities;

    #@44
    invoke-virtual {v2}, Landroid/net/NetworkCapabilities;->hasSignalStrength()Z

    #@47
    move-result v2

    #@48
    if-eqz v2, :cond_0

    #@4a
    .line 2486
    iget-object v2, p1, Lcom/android/server/ConnectivityService$NetworkRequestInfo;->request:Landroid/net/NetworkRequest;

    #@4c
    invoke-virtual {v0, v2}, Lcom/android/server/connectivity/NetworkAgentInfo;->satisfiesImmutableCapabilitiesOf(Landroid/net/NetworkRequest;)Z

    #@4f
    move-result v2

    #@50
    .line 2485
    if-eqz v2, :cond_0

    #@52
    .line 2487
    const-string/jumbo v2, "REGISTER"

    #@55
    iget-object v3, p1, Lcom/android/server/ConnectivityService$NetworkRequestInfo;->request:Landroid/net/NetworkRequest;

    #@57
    invoke-direct {p0, v0, v2, v3}, Lcom/android/server/ConnectivityService;->updateSignalStrengthThresholds(Lcom/android/server/connectivity/NetworkAgentInfo;Ljava/lang/String;Landroid/net/NetworkRequest;)V

    #@5a
    goto :goto_0

    #@5b
    .line 2491
    .end local v0    # "network":Lcom/android/server/connectivity/NetworkAgentInfo;
    .end local v1    # "network$iterator":Ljava/util/Iterator;
    :cond_1
    invoke-direct {p0, v6, v5}, Lcom/android/server/ConnectivityService;->rematchAllNetworksAndRequests(Lcom/android/server/connectivity/NetworkAgentInfo;I)V

    #@5e
    .line 2492
    iget-object v2, p1, Lcom/android/server/ConnectivityService$NetworkRequestInfo;->request:Landroid/net/NetworkRequest;

    #@60
    invoke-virtual {v2}, Landroid/net/NetworkRequest;->isRequest()Z

    #@63
    move-result v2

    #@64
    if-eqz v2, :cond_2

    #@66
    iget-object v2, p0, Lcom/android/server/ConnectivityService;->mNetworkForRequestId:Landroid/util/SparseArray;

    #@68
    iget-object v3, p1, Lcom/android/server/ConnectivityService$NetworkRequestInfo;->request:Landroid/net/NetworkRequest;

    #@6a
    iget v3, v3, Landroid/net/NetworkRequest;->requestId:I

    #@6c
    invoke-virtual {v2, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    #@6f
    move-result-object v2

    #@70
    if-nez v2, :cond_2

    #@72
    .line 2493
    iget-object v2, p1, Lcom/android/server/ConnectivityService$NetworkRequestInfo;->request:Landroid/net/NetworkRequest;

    #@74
    invoke-direct {p0, v2, v5}, Lcom/android/server/ConnectivityService;->sendUpdatedScoreToFactories(Landroid/net/NetworkRequest;I)V

    #@77
    .line 2480
    :cond_2
    return-void
.end method

.method private handleRegisterNetworkRequestWithIntent(Landroid/os/Message;)V
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    #@0
    .prologue
    .line 2469
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@2
    check-cast v1, Lcom/android/server/ConnectivityService$NetworkRequestInfo;

    #@4
    .line 2471
    .local v1, "nri":Lcom/android/server/ConnectivityService$NetworkRequestInfo;
    iget-object v2, v1, Lcom/android/server/ConnectivityService$NetworkRequestInfo;->mPendingIntent:Landroid/app/PendingIntent;

    #@6
    invoke-direct {p0, v2}, Lcom/android/server/ConnectivityService;->findExistingNetworkRequestInfo(Landroid/app/PendingIntent;)Lcom/android/server/ConnectivityService$NetworkRequestInfo;

    #@9
    move-result-object v0

    #@a
    .line 2472
    .local v0, "existingRequest":Lcom/android/server/ConnectivityService$NetworkRequestInfo;
    if-eqz v0, :cond_0

    #@c
    .line 2473
    new-instance v2, Ljava/lang/StringBuilder;

    #@e
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@11
    const-string/jumbo v3, "Replacing "

    #@14
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@17
    move-result-object v2

    #@18
    iget-object v3, v0, Lcom/android/server/ConnectivityService$NetworkRequestInfo;->request:Landroid/net/NetworkRequest;

    #@1a
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@1d
    move-result-object v2

    #@1e
    const-string/jumbo v3, " with "

    #@21
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@24
    move-result-object v2

    #@25
    .line 2474
    iget-object v3, v1, Lcom/android/server/ConnectivityService$NetworkRequestInfo;->request:Landroid/net/NetworkRequest;

    #@27
    .line 2473
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@2a
    move-result-object v2

    #@2b
    .line 2474
    const-string/jumbo v3, " because their intents matched."

    #@2e
    .line 2473
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@31
    move-result-object v2

    #@32
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@35
    move-result-object v2

    #@36
    invoke-static {v2}, Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V

    #@39
    .line 2475
    iget-object v2, v0, Lcom/android/server/ConnectivityService$NetworkRequestInfo;->request:Landroid/net/NetworkRequest;

    #@3b
    invoke-static {}, Lcom/android/server/ConnectivityService;->getCallingUid()I

    #@3e
    move-result v3

    #@3f
    invoke-direct {p0, v2, v3}, Lcom/android/server/ConnectivityService;->handleReleaseNetworkRequest(Landroid/net/NetworkRequest;I)V

    #@42
    .line 2477
    :cond_0
    invoke-direct {p0, v1}, Lcom/android/server/ConnectivityService;->handleRegisterNetworkRequest(Lcom/android/server/ConnectivityService$NetworkRequestInfo;)V

    #@45
    .line 2468
    return-void
.end method

.method private handleReleaseNetworkRequest(Landroid/net/NetworkRequest;I)V
    .locals 21
    .param p1, "request"    # Landroid/net/NetworkRequest;
    .param p2, "callingUid"    # I

    #@0
    .prologue
    .line 2600
    const-string/jumbo v17, "release NetworkRequest"

    #@3
    .line 2599
    move-object/from16 v0, p0

    #@5
    move-object/from16 v1, p1

    #@7
    move/from16 v2, p2

    #@9
    move-object/from16 v3, v17

    #@b
    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/ConnectivityService;->getNriForAppRequest(Landroid/net/NetworkRequest;ILjava/lang/String;)Lcom/android/server/ConnectivityService$NetworkRequestInfo;

    #@e
    move-result-object v10

    #@f
    .line 2601
    .local v10, "nri":Lcom/android/server/ConnectivityService$NetworkRequestInfo;
    if-nez v10, :cond_0

    #@11
    return-void

    #@12
    .line 2603
    :cond_0
    iget-object v0, v10, Lcom/android/server/ConnectivityService$NetworkRequestInfo;->request:Landroid/net/NetworkRequest;

    #@14
    move-object/from16 v17, v0

    #@16
    invoke-virtual/range {v17 .. v17}, Landroid/net/NetworkRequest;->isRequest()Z

    #@19
    move-result v17

    #@1a
    if-eqz v17, :cond_1

    #@1c
    new-instance v17, Ljava/lang/StringBuilder;

    #@1e
    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    #@21
    const-string/jumbo v18, "releasing "

    #@24
    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@27
    move-result-object v17

    #@28
    move-object/from16 v0, v17

    #@2a
    move-object/from16 v1, p1

    #@2c
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@2f
    move-result-object v17

    #@30
    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@33
    move-result-object v17

    #@34
    invoke-static/range {v17 .. v17}, Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V

    #@37
    .line 2604
    :cond_1
    invoke-virtual {v10}, Lcom/android/server/ConnectivityService$NetworkRequestInfo;->unlinkDeathRecipient()V

    #@3a
    .line 2605
    move-object/from16 v0, p0

    #@3c
    iget-object v0, v0, Lcom/android/server/ConnectivityService;->mNetworkRequests:Ljava/util/HashMap;

    #@3e
    move-object/from16 v17, v0

    #@40
    move-object/from16 v0, v17

    #@42
    move-object/from16 v1, p1

    #@44
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    #@47
    .line 2606
    move-object/from16 v0, p0

    #@49
    iget-object v0, v0, Lcom/android/server/ConnectivityService;->mUidToNetworkRequestCount:Landroid/util/SparseIntArray;

    #@4b
    move-object/from16 v18, v0

    #@4d
    monitor-enter v18

    #@4e
    .line 2607
    :try_start_0
    move-object/from16 v0, p0

    #@50
    iget-object v0, v0, Lcom/android/server/ConnectivityService;->mUidToNetworkRequestCount:Landroid/util/SparseIntArray;

    #@52
    move-object/from16 v17, v0

    #@54
    iget v0, v10, Lcom/android/server/ConnectivityService$NetworkRequestInfo;->mUid:I

    #@56
    move/from16 v19, v0

    #@58
    const/16 v20, 0x0

    #@5a
    move-object/from16 v0, v17

    #@5c
    move/from16 v1, v19

    #@5e
    move/from16 v2, v20

    #@60
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->get(II)I

    #@63
    move-result v14

    #@64
    .line 2608
    .local v14, "requests":I
    const/16 v17, 0x1

    #@66
    move/from16 v0, v17

    #@68
    if-ge v14, v0, :cond_4

    #@6a
    .line 2609
    sget-object v17, Lcom/android/server/ConnectivityService;->TAG:Ljava/lang/String;

    #@6c
    new-instance v19, Ljava/lang/StringBuilder;

    #@6e
    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    #@71
    const-string/jumbo v20, "BUG: too small request count "

    #@74
    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@77
    move-result-object v19

    #@78
    move-object/from16 v0, v19

    #@7a
    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@7d
    move-result-object v19

    #@7e
    const-string/jumbo v20, " for UID "

    #@81
    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@84
    move-result-object v19

    #@85
    .line 2610
    iget v0, v10, Lcom/android/server/ConnectivityService$NetworkRequestInfo;->mUid:I

    #@87
    move/from16 v20, v0

    #@89
    .line 2609
    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@8c
    move-result-object v19

    #@8d
    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@90
    move-result-object v19

    #@91
    move-object/from16 v0, v17

    #@93
    move-object/from16 v1, v19

    #@95
    invoke-static {v0, v1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@98
    :goto_0
    monitor-exit v18

    #@99
    .line 2618
    move-object/from16 v0, p0

    #@9b
    iget-object v0, v0, Lcom/android/server/ConnectivityService;->mNetworkRequestInfoLogs:Landroid/util/LocalLog;

    #@9d
    move-object/from16 v17, v0

    #@9f
    new-instance v18, Ljava/lang/StringBuilder;

    #@a1
    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    #@a4
    const-string/jumbo v19, "RELEASE "

    #@a7
    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@aa
    move-result-object v18

    #@ab
    move-object/from16 v0, v18

    #@ad
    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@b0
    move-result-object v18

    #@b1
    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@b4
    move-result-object v18

    #@b5
    invoke-virtual/range {v17 .. v18}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    #@b8
    .line 2619
    iget-object v0, v10, Lcom/android/server/ConnectivityService$NetworkRequestInfo;->request:Landroid/net/NetworkRequest;

    #@ba
    move-object/from16 v17, v0

    #@bc
    invoke-virtual/range {v17 .. v17}, Landroid/net/NetworkRequest;->isRequest()Z

    #@bf
    move-result v17

    #@c0
    if-eqz v17, :cond_c

    #@c2
    .line 2620
    const/16 v16, 0x0

    #@c4
    .line 2621
    .local v16, "wasKept":Z
    move-object/from16 v0, p0

    #@c6
    iget-object v0, v0, Lcom/android/server/ConnectivityService;->mNetworkForRequestId:Landroid/util/SparseArray;

    #@c8
    move-object/from16 v17, v0

    #@ca
    iget-object v0, v10, Lcom/android/server/ConnectivityService$NetworkRequestInfo;->request:Landroid/net/NetworkRequest;

    #@cc
    move-object/from16 v18, v0

    #@ce
    move-object/from16 v0, v18

    #@d0
    iget v0, v0, Landroid/net/NetworkRequest;->requestId:I

    #@d2
    move/from16 v18, v0

    #@d4
    invoke-virtual/range {v17 .. v18}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    #@d7
    move-result-object v6

    #@d8
    check-cast v6, Lcom/android/server/connectivity/NetworkAgentInfo;

    #@da
    .line 2622
    .local v6, "nai":Lcom/android/server/connectivity/NetworkAgentInfo;
    if-eqz v6, :cond_2

    #@dc
    .line 2623
    invoke-virtual {v6}, Lcom/android/server/connectivity/NetworkAgentInfo;->isBackgroundNetwork()Z

    #@df
    move-result v15

    #@e0
    .line 2624
    .local v15, "wasBackgroundNetwork":Z
    iget-object v0, v10, Lcom/android/server/ConnectivityService$NetworkRequestInfo;->request:Landroid/net/NetworkRequest;

    #@e2
    move-object/from16 v17, v0

    #@e4
    move-object/from16 v0, v17

    #@e6
    iget v0, v0, Landroid/net/NetworkRequest;->requestId:I

    #@e8
    move/from16 v17, v0

    #@ea
    move/from16 v0, v17

    #@ec
    invoke-virtual {v6, v0}, Lcom/android/server/connectivity/NetworkAgentInfo;->removeRequest(I)V

    #@ef
    .line 2631
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    #@f2
    move-result-wide v18

    #@f3
    move-object/from16 v0, p0

    #@f5
    move-wide/from16 v1, v18

    #@f7
    invoke-direct {v0, v6, v1, v2}, Lcom/android/server/ConnectivityService;->updateLingerState(Lcom/android/server/connectivity/NetworkAgentInfo;J)V

    #@fa
    .line 2632
    sget-object v17, Lcom/android/server/ConnectivityService$UnneededFor;->TEARDOWN:Lcom/android/server/ConnectivityService$UnneededFor;

    #@fc
    move-object/from16 v0, p0

    #@fe
    move-object/from16 v1, v17

    #@100
    invoke-direct {v0, v6, v1}, Lcom/android/server/ConnectivityService;->unneeded(Lcom/android/server/connectivity/NetworkAgentInfo;Lcom/android/server/ConnectivityService$UnneededFor;)Z

    #@103
    move-result v17

    #@104
    if-eqz v17, :cond_6

    #@106
    .line 2633
    new-instance v17, Ljava/lang/StringBuilder;

    #@108
    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    #@10b
    const-string/jumbo v18, "no live requests for "

    #@10e
    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@111
    move-result-object v17

    #@112
    invoke-virtual {v6}, Lcom/android/server/connectivity/NetworkAgentInfo;->name()Ljava/lang/String;

    #@115
    move-result-object v18

    #@116
    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@119
    move-result-object v17

    #@11a
    const-string/jumbo v18, "; disconnecting"

    #@11d
    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@120
    move-result-object v17

    #@121
    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@124
    move-result-object v17

    #@125
    invoke-static/range {v17 .. v17}, Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V

    #@128
    .line 2634
    move-object/from16 v0, p0

    #@12a
    invoke-direct {v0, v6}, Lcom/android/server/ConnectivityService;->teardownUnneededNetwork(Lcom/android/server/connectivity/NetworkAgentInfo;)V

    #@12d
    .line 2638
    :goto_1
    move-object/from16 v0, p0

    #@12f
    iget-object v0, v0, Lcom/android/server/ConnectivityService;->mNetworkForRequestId:Landroid/util/SparseArray;

    #@131
    move-object/from16 v17, v0

    #@133
    iget-object v0, v10, Lcom/android/server/ConnectivityService$NetworkRequestInfo;->request:Landroid/net/NetworkRequest;

    #@135
    move-object/from16 v18, v0

    #@137
    move-object/from16 v0, v18

    #@139
    iget v0, v0, Landroid/net/NetworkRequest;->requestId:I

    #@13b
    move/from16 v18, v0

    #@13d
    invoke-virtual/range {v17 .. v18}, Landroid/util/SparseArray;->remove(I)V

    #@140
    .line 2639
    if-nez v15, :cond_2

    #@142
    invoke-virtual {v6}, Lcom/android/server/connectivity/NetworkAgentInfo;->isBackgroundNetwork()Z

    #@145
    move-result v17

    #@146
    if-eqz v17, :cond_2

    #@148
    .line 2641
    invoke-virtual {v6}, Lcom/android/server/connectivity/NetworkAgentInfo;->getCurrentScore()I

    #@14b
    move-result v17

    #@14c
    iget-object v0, v6, Lcom/android/server/connectivity/NetworkAgentInfo;->networkCapabilities:Landroid/net/NetworkCapabilities;

    #@14e
    move-object/from16 v18, v0

    #@150
    move-object/from16 v0, p0

    #@152
    move/from16 v1, v17

    #@154
    move-object/from16 v2, v18

    #@156
    invoke-direct {v0, v1, v6, v2}, Lcom/android/server/ConnectivityService;->updateCapabilities(ILcom/android/server/connectivity/NetworkAgentInfo;Landroid/net/NetworkCapabilities;)V

    #@159
    .line 2651
    .end local v15    # "wasBackgroundNetwork":Z
    :cond_2
    move-object/from16 v0, p0

    #@15b
    iget-object v0, v0, Lcom/android/server/ConnectivityService;->mNetworkAgentInfos:Ljava/util/HashMap;

    #@15d
    move-object/from16 v17, v0

    #@15f
    invoke-virtual/range {v17 .. v17}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    #@162
    move-result-object v17

    #@163
    invoke-interface/range {v17 .. v17}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@166
    move-result-object v12

    #@167
    .local v12, "otherNai$iterator":Ljava/util/Iterator;
    :cond_3
    :goto_2
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    #@16a
    move-result v17

    #@16b
    if-eqz v17, :cond_8

    #@16d
    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@170
    move-result-object v11

    #@171
    check-cast v11, Lcom/android/server/connectivity/NetworkAgentInfo;

    #@173
    .line 2652
    .local v11, "otherNai":Lcom/android/server/connectivity/NetworkAgentInfo;
    iget-object v0, v10, Lcom/android/server/ConnectivityService$NetworkRequestInfo;->request:Landroid/net/NetworkRequest;

    #@175
    move-object/from16 v17, v0

    #@177
    move-object/from16 v0, v17

    #@179
    iget v0, v0, Landroid/net/NetworkRequest;->requestId:I

    #@17b
    move/from16 v17, v0

    #@17d
    move/from16 v0, v17

    #@17f
    invoke-virtual {v11, v0}, Lcom/android/server/connectivity/NetworkAgentInfo;->isSatisfyingRequest(I)Z

    #@182
    move-result v17

    #@183
    if-eqz v17, :cond_3

    #@185
    if-eq v11, v6, :cond_3

    #@187
    .line 2653
    sget-object v18, Lcom/android/server/ConnectivityService;->TAG:Ljava/lang/String;

    #@189
    new-instance v17, Ljava/lang/StringBuilder;

    #@18b
    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    #@18e
    const-string/jumbo v19, "Request "

    #@191
    move-object/from16 v0, v17

    #@193
    move-object/from16 v1, v19

    #@195
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@198
    move-result-object v17

    #@199
    iget-object v0, v10, Lcom/android/server/ConnectivityService$NetworkRequestInfo;->request:Landroid/net/NetworkRequest;

    #@19b
    move-object/from16 v19, v0

    #@19d
    move-object/from16 v0, v17

    #@19f
    move-object/from16 v1, v19

    #@1a1
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@1a4
    move-result-object v17

    #@1a5
    const-string/jumbo v19, " satisfied by "

    #@1a8
    move-object/from16 v0, v17

    #@1aa
    move-object/from16 v1, v19

    #@1ac
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1af
    move-result-object v17

    #@1b0
    .line 2654
    invoke-virtual {v11}, Lcom/android/server/connectivity/NetworkAgentInfo;->name()Ljava/lang/String;

    #@1b3
    move-result-object v19

    #@1b4
    .line 2653
    move-object/from16 v0, v17

    #@1b6
    move-object/from16 v1, v19

    #@1b8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1bb
    move-result-object v17

    #@1bc
    .line 2654
    const-string/jumbo v19, ", but mNetworkAgentInfos says "

    #@1bf
    .line 2653
    move-object/from16 v0, v17

    #@1c1
    move-object/from16 v1, v19

    #@1c3
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1c6
    move-result-object v19

    #@1c7
    .line 2655
    if-eqz v6, :cond_7

    #@1c9
    invoke-virtual {v6}, Lcom/android/server/connectivity/NetworkAgentInfo;->name()Ljava/lang/String;

    #@1cc
    move-result-object v17

    #@1cd
    .line 2653
    :goto_3
    move-object/from16 v0, v19

    #@1cf
    move-object/from16 v1, v17

    #@1d1
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1d4
    move-result-object v17

    #@1d5
    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1d8
    move-result-object v17

    #@1d9
    move-object/from16 v0, v18

    #@1db
    move-object/from16 v1, v17

    #@1dd
    invoke-static {v0, v1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    #@1e0
    goto :goto_2

    #@1e1
    .line 2611
    .end local v6    # "nai":Lcom/android/server/connectivity/NetworkAgentInfo;
    .end local v11    # "otherNai":Lcom/android/server/connectivity/NetworkAgentInfo;
    .end local v12    # "otherNai$iterator":Ljava/util/Iterator;
    .end local v16    # "wasKept":Z
    :cond_4
    const/16 v17, 0x1

    #@1e3
    move/from16 v0, v17

    #@1e5
    if-ne v14, v0, :cond_5

    #@1e7
    .line 2612
    :try_start_1
    move-object/from16 v0, p0

    #@1e9
    iget-object v0, v0, Lcom/android/server/ConnectivityService;->mUidToNetworkRequestCount:Landroid/util/SparseIntArray;

    #@1eb
    move-object/from16 v17, v0

    #@1ed
    .line 2613
    move-object/from16 v0, p0

    #@1ef
    iget-object v0, v0, Lcom/android/server/ConnectivityService;->mUidToNetworkRequestCount:Landroid/util/SparseIntArray;

    #@1f1
    move-object/from16 v19, v0

    #@1f3
    iget v0, v10, Lcom/android/server/ConnectivityService$NetworkRequestInfo;->mUid:I

    #@1f5
    move/from16 v20, v0

    #@1f7
    invoke-virtual/range {v19 .. v20}, Landroid/util/SparseIntArray;->indexOfKey(I)I

    #@1fa
    move-result v19

    #@1fb
    .line 2612
    move-object/from16 v0, v17

    #@1fd
    move/from16 v1, v19

    #@1ff
    invoke-virtual {v0, v1}, Landroid/util/SparseIntArray;->removeAt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@202
    goto/16 :goto_0

    #@204
    .line 2606
    .end local v14    # "requests":I
    :catchall_0
    move-exception v17

    #@205
    monitor-exit v18

    #@206
    throw v17

    #@207
    .line 2615
    .restart local v14    # "requests":I
    :cond_5
    :try_start_2
    move-object/from16 v0, p0

    #@209
    iget-object v0, v0, Lcom/android/server/ConnectivityService;->mUidToNetworkRequestCount:Landroid/util/SparseIntArray;

    #@20b
    move-object/from16 v17, v0

    #@20d
    iget v0, v10, Lcom/android/server/ConnectivityService$NetworkRequestInfo;->mUid:I

    #@20f
    move/from16 v19, v0

    #@211
    add-int/lit8 v20, v14, -0x1

    #@213
    move-object/from16 v0, v17

    #@215
    move/from16 v1, v19

    #@217
    move/from16 v2, v20

    #@219
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@21c
    goto/16 :goto_0

    #@21e
    .line 2636
    .restart local v6    # "nai":Lcom/android/server/connectivity/NetworkAgentInfo;
    .restart local v15    # "wasBackgroundNetwork":Z
    .restart local v16    # "wasKept":Z
    :cond_6
    const/16 v16, 0x1

    #@220
    goto/16 :goto_1

    #@222
    .line 2655
    .end local v15    # "wasBackgroundNetwork":Z
    .restart local v11    # "otherNai":Lcom/android/server/connectivity/NetworkAgentInfo;
    .restart local v12    # "otherNai$iterator":Ljava/util/Iterator;
    :cond_7
    const-string/jumbo v17, "null"

    #@225
    goto :goto_3

    #@226
    .line 2664
    .end local v11    # "otherNai":Lcom/android/server/connectivity/NetworkAgentInfo;
    :cond_8
    iget-object v0, v10, Lcom/android/server/ConnectivityService$NetworkRequestInfo;->request:Landroid/net/NetworkRequest;

    #@228
    move-object/from16 v17, v0

    #@22a
    move-object/from16 v0, v17

    #@22c
    iget v0, v0, Landroid/net/NetworkRequest;->legacyType:I

    #@22e
    move/from16 v17, v0

    #@230
    const/16 v18, -0x1

    #@232
    move/from16 v0, v17

    #@234
    move/from16 v1, v18

    #@236
    if-eq v0, v1, :cond_b

    #@238
    if-eqz v6, :cond_b

    #@23a
    .line 2665
    const/4 v4, 0x1

    #@23b
    .line 2666
    .local v4, "doRemove":Z
    if-eqz v16, :cond_a

    #@23d
    .line 2669
    const/4 v5, 0x0

    #@23e
    .local v5, "i":I
    :goto_4
    invoke-virtual {v6}, Lcom/android/server/connectivity/NetworkAgentInfo;->numNetworkRequests()I

    #@241
    move-result v17

    #@242
    move/from16 v0, v17

    #@244
    if-ge v5, v0, :cond_a

    #@246
    .line 2670
    invoke-virtual {v6, v5}, Lcom/android/server/connectivity/NetworkAgentInfo;->requestAt(I)Landroid/net/NetworkRequest;

    #@249
    move-result-object v13

    #@24a
    .line 2671
    .local v13, "otherRequest":Landroid/net/NetworkRequest;
    iget v0, v13, Landroid/net/NetworkRequest;->legacyType:I

    #@24c
    move/from16 v17, v0

    #@24e
    iget-object v0, v10, Lcom/android/server/ConnectivityService$NetworkRequestInfo;->request:Landroid/net/NetworkRequest;

    #@250
    move-object/from16 v18, v0

    #@252
    move-object/from16 v0, v18

    #@254
    iget v0, v0, Landroid/net/NetworkRequest;->legacyType:I

    #@256
    move/from16 v18, v0

    #@258
    move/from16 v0, v17

    #@25a
    move/from16 v1, v18

    #@25c
    if-ne v0, v1, :cond_9

    #@25e
    .line 2672
    invoke-virtual {v13}, Landroid/net/NetworkRequest;->isRequest()Z

    #@261
    move-result v17

    #@262
    .line 2671
    if-eqz v17, :cond_9

    #@264
    .line 2673
    const-string/jumbo v17, " still have other legacy request - leaving"

    #@267
    invoke-static/range {v17 .. v17}, Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V

    #@26a
    .line 2674
    const/4 v4, 0x0

    #@26b
    .line 2669
    :cond_9
    add-int/lit8 v5, v5, 0x1

    #@26d
    goto :goto_4

    #@26e
    .line 2679
    .end local v5    # "i":I
    .end local v13    # "otherRequest":Landroid/net/NetworkRequest;
    :cond_a
    if-eqz v4, :cond_b

    #@270
    .line 2680
    move-object/from16 v0, p0

    #@272
    iget-object v0, v0, Lcom/android/server/ConnectivityService;->mLegacyTypeTracker:Lcom/android/server/ConnectivityService$LegacyTypeTracker;

    #@274
    move-object/from16 v17, v0

    #@276
    iget-object v0, v10, Lcom/android/server/ConnectivityService$NetworkRequestInfo;->request:Landroid/net/NetworkRequest;

    #@278
    move-object/from16 v18, v0

    #@27a
    move-object/from16 v0, v18

    #@27c
    iget v0, v0, Landroid/net/NetworkRequest;->legacyType:I

    #@27e
    move/from16 v18, v0

    #@280
    const/16 v19, 0x0

    #@282
    move-object/from16 v0, v17

    #@284
    move/from16 v1, v18

    #@286
    move/from16 v2, v19

    #@288
    invoke-virtual {v0, v1, v6, v2}, Lcom/android/server/ConnectivityService$LegacyTypeTracker;->remove(ILcom/android/server/connectivity/NetworkAgentInfo;Z)V

    #@28b
    .line 2684
    .end local v4    # "doRemove":Z
    :cond_b
    move-object/from16 v0, p0

    #@28d
    iget-object v0, v0, Lcom/android/server/ConnectivityService;->mNetworkFactoryInfos:Ljava/util/HashMap;

    #@28f
    move-object/from16 v17, v0

    #@291
    invoke-virtual/range {v17 .. v17}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    #@294
    move-result-object v17

    #@295
    invoke-interface/range {v17 .. v17}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@298
    move-result-object v9

    #@299
    .local v9, "nfi$iterator":Ljava/util/Iterator;
    :goto_5
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    #@29c
    move-result v17

    #@29d
    if-eqz v17, :cond_e

    #@29f
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@2a2
    move-result-object v8

    #@2a3
    check-cast v8, Lcom/android/server/ConnectivityService$NetworkFactoryInfo;

    #@2a5
    .line 2685
    .local v8, "nfi":Lcom/android/server/ConnectivityService$NetworkFactoryInfo;
    iget-object v0, v8, Lcom/android/server/ConnectivityService$NetworkFactoryInfo;->asyncChannel:Lcom/android/internal/util/AsyncChannel;

    #@2a7
    move-object/from16 v17, v0

    #@2a9
    .line 2686
    iget-object v0, v10, Lcom/android/server/ConnectivityService$NetworkRequestInfo;->request:Landroid/net/NetworkRequest;

    #@2ab
    move-object/from16 v18, v0

    #@2ad
    .line 2685
    const v19, 0x83001

    #@2b0
    move-object/from16 v0, v17

    #@2b2
    move/from16 v1, v19

    #@2b4
    move-object/from16 v2, v18

    #@2b6
    invoke-virtual {v0, v1, v2}, Lcom/android/internal/util/AsyncChannel;->sendMessage(ILjava/lang/Object;)V

    #@2b9
    goto :goto_5

    #@2ba
    .line 2691
    .end local v6    # "nai":Lcom/android/server/connectivity/NetworkAgentInfo;
    .end local v8    # "nfi":Lcom/android/server/ConnectivityService$NetworkFactoryInfo;
    .end local v9    # "nfi$iterator":Ljava/util/Iterator;
    .end local v12    # "otherNai$iterator":Ljava/util/Iterator;
    .end local v16    # "wasKept":Z
    :cond_c
    move-object/from16 v0, p0

    #@2bc
    iget-object v0, v0, Lcom/android/server/ConnectivityService;->mNetworkAgentInfos:Ljava/util/HashMap;

    #@2be
    move-object/from16 v17, v0

    #@2c0
    invoke-virtual/range {v17 .. v17}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    #@2c3
    move-result-object v17

    #@2c4
    invoke-interface/range {v17 .. v17}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@2c7
    move-result-object v7

    #@2c8
    .local v7, "nai$iterator":Ljava/util/Iterator;
    :cond_d
    :goto_6
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    #@2cb
    move-result v17

    #@2cc
    if-eqz v17, :cond_e

    #@2ce
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@2d1
    move-result-object v6

    #@2d2
    check-cast v6, Lcom/android/server/connectivity/NetworkAgentInfo;

    #@2d4
    .line 2692
    .restart local v6    # "nai":Lcom/android/server/connectivity/NetworkAgentInfo;
    iget-object v0, v10, Lcom/android/server/ConnectivityService$NetworkRequestInfo;->request:Landroid/net/NetworkRequest;

    #@2d6
    move-object/from16 v17, v0

    #@2d8
    move-object/from16 v0, v17

    #@2da
    iget v0, v0, Landroid/net/NetworkRequest;->requestId:I

    #@2dc
    move/from16 v17, v0

    #@2de
    move/from16 v0, v17

    #@2e0
    invoke-virtual {v6, v0}, Lcom/android/server/connectivity/NetworkAgentInfo;->removeRequest(I)V

    #@2e3
    .line 2693
    iget-object v0, v10, Lcom/android/server/ConnectivityService$NetworkRequestInfo;->request:Landroid/net/NetworkRequest;

    #@2e5
    move-object/from16 v17, v0

    #@2e7
    move-object/from16 v0, v17

    #@2e9
    iget-object v0, v0, Landroid/net/NetworkRequest;->networkCapabilities:Landroid/net/NetworkCapabilities;

    #@2eb
    move-object/from16 v17, v0

    #@2ed
    invoke-virtual/range {v17 .. v17}, Landroid/net/NetworkCapabilities;->hasSignalStrength()Z

    #@2f0
    move-result v17

    #@2f1
    if-eqz v17, :cond_d

    #@2f3
    .line 2694
    iget-object v0, v10, Lcom/android/server/ConnectivityService$NetworkRequestInfo;->request:Landroid/net/NetworkRequest;

    #@2f5
    move-object/from16 v17, v0

    #@2f7
    move-object/from16 v0, v17

    #@2f9
    invoke-virtual {v6, v0}, Lcom/android/server/connectivity/NetworkAgentInfo;->satisfiesImmutableCapabilitiesOf(Landroid/net/NetworkRequest;)Z

    #@2fc
    move-result v17

    #@2fd
    .line 2693
    if-eqz v17, :cond_d

    #@2ff
    .line 2695
    const-string/jumbo v17, "RELEASE"

    #@302
    iget-object v0, v10, Lcom/android/server/ConnectivityService$NetworkRequestInfo;->request:Landroid/net/NetworkRequest;

    #@304
    move-object/from16 v18, v0

    #@306
    move-object/from16 v0, p0

    #@308
    move-object/from16 v1, v17

    #@30a
    move-object/from16 v2, v18

    #@30c
    invoke-direct {v0, v6, v1, v2}, Lcom/android/server/ConnectivityService;->updateSignalStrengthThresholds(Lcom/android/server/connectivity/NetworkAgentInfo;Ljava/lang/String;Landroid/net/NetworkRequest;)V

    #@30f
    goto :goto_6

    #@310
    .line 2699
    .end local v6    # "nai":Lcom/android/server/connectivity/NetworkAgentInfo;
    .end local v7    # "nai$iterator":Ljava/util/Iterator;
    :cond_e
    const/16 v17, 0x0

    #@312
    const v18, 0x80008

    #@315
    const/16 v19, 0x0

    #@317
    move-object/from16 v0, p0

    #@319
    move-object/from16 v1, v17

    #@31b
    move/from16 v2, v18

    #@31d
    move/from16 v3, v19

    #@31f
    invoke-direct {v0, v10, v1, v2, v3}, Lcom/android/server/ConnectivityService;->callCallbackForRequest(Lcom/android/server/ConnectivityService$NetworkRequestInfo;Lcom/android/server/connectivity/NetworkAgentInfo;II)V

    #@322
    .line 2598
    return-void
.end method

.method private handleReleaseNetworkRequestWithIntent(Landroid/app/PendingIntent;I)V
    .locals 2
    .param p1, "pendingIntent"    # Landroid/app/PendingIntent;
    .param p2, "callingUid"    # I

    #@0
    .prologue
    .line 2499
    invoke-direct {p0, p1}, Lcom/android/server/ConnectivityService;->findExistingNetworkRequestInfo(Landroid/app/PendingIntent;)Lcom/android/server/ConnectivityService$NetworkRequestInfo;

    #@3
    move-result-object v0

    #@4
    .line 2500
    .local v0, "nri":Lcom/android/server/ConnectivityService$NetworkRequestInfo;
    if-eqz v0, :cond_0

    #@6
    .line 2501
    iget-object v1, v0, Lcom/android/server/ConnectivityService$NetworkRequestInfo;->request:Landroid/net/NetworkRequest;

    #@8
    invoke-direct {p0, v1, p2}, Lcom/android/server/ConnectivityService;->handleReleaseNetworkRequest(Landroid/net/NetworkRequest;I)V

    #@b
    .line 2498
    :cond_0
    return-void
.end method

.method private handleRequestCallbackUpdate(Landroid/net/NetworkRequest;ILjava/lang/String;I)V
    .locals 4
    .param p1, "request"    # Landroid/net/NetworkRequest;
    .param p2, "callingUid"    # I
    .param p3, "description"    # Ljava/lang/String;
    .param p4, "callbackType"    # I

    #@0
    .prologue
    .line 2572
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/ConnectivityService;->getNriForAppRequest(Landroid/net/NetworkRequest;ILjava/lang/String;)Lcom/android/server/ConnectivityService$NetworkRequestInfo;

    #@3
    move-result-object v1

    #@4
    .line 2573
    .local v1, "nri":Lcom/android/server/ConnectivityService$NetworkRequestInfo;
    if-nez v1, :cond_0

    #@6
    return-void

    #@7
    .line 2575
    :cond_0
    iget-object v2, p0, Lcom/android/server/ConnectivityService;->mNetworkForRequestId:Landroid/util/SparseArray;

    #@9
    iget-object v3, v1, Lcom/android/server/ConnectivityService$NetworkRequestInfo;->request:Landroid/net/NetworkRequest;

    #@b
    iget v3, v3, Landroid/net/NetworkRequest;->requestId:I

    #@d
    invoke-virtual {v2, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    #@10
    move-result-object v0

    #@11
    check-cast v0, Lcom/android/server/connectivity/NetworkAgentInfo;

    #@13
    .line 2584
    .local v0, "nai":Lcom/android/server/connectivity/NetworkAgentInfo;
    if-nez v0, :cond_1

    #@15
    return-void

    #@16
    .line 2585
    :cond_1
    const/4 v2, 0x0

    #@17
    invoke-direct {p0, v1, v0, p4, v2}, Lcom/android/server/ConnectivityService;->callCallbackForRequest(Lcom/android/server/ConnectivityService$NetworkRequestInfo;Lcom/android/server/connectivity/NetworkAgentInfo;II)V

    #@1a
    .line 2571
    return-void
.end method

.method private handleRequestLinkProperties(Landroid/net/NetworkRequest;I)V
    .locals 2
    .param p1, "request"    # Landroid/net/NetworkRequest;
    .param p2, "callingUid"    # I

    #@0
    .prologue
    .line 2590
    const-string/jumbo v0, "request LinkProperties"

    #@3
    const v1, 0x80007

    #@6
    .line 2589
    invoke-direct {p0, p1, p2, v0, v1}, Lcom/android/server/ConnectivityService;->handleRequestCallbackUpdate(Landroid/net/NetworkRequest;ILjava/lang/String;I)V

    #@9
    .line 2588
    return-void
.end method

.method private handleRequestNetworkCapabilities(Landroid/net/NetworkRequest;I)V
    .locals 2
    .param p1, "request"    # Landroid/net/NetworkRequest;
    .param p2, "callingUid"    # I

    #@0
    .prologue
    .line 2595
    const-string/jumbo v0, "request NetworkCapabilities"

    #@3
    const v1, 0x80006

    #@6
    .line 2594
    invoke-direct {p0, p1, p2, v0, v1}, Lcom/android/server/ConnectivityService;->handleRequestCallbackUpdate(Landroid/net/NetworkRequest;ILjava/lang/String;I)V

    #@9
    .line 2593
    return-void
.end method

.method private handleSetAcceptUnvalidated(Landroid/net/Network;ZZ)V
    .locals 5
    .param p1, "network"    # Landroid/net/Network;
    .param p2, "accept"    # Z
    .param p3, "always"    # Z

    #@0
    .prologue
    .line 2716
    new-instance v2, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    const-string/jumbo v3, "handleSetAcceptUnvalidated network="

    #@8
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b
    move-result-object v2

    #@c
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@f
    move-result-object v2

    #@10
    .line 2717
    const-string/jumbo v3, " accept="

    #@13
    .line 2716
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@16
    move-result-object v2

    #@17
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@1a
    move-result-object v2

    #@1b
    .line 2717
    const-string/jumbo v3, " always="

    #@1e
    .line 2716
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@21
    move-result-object v2

    #@22
    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@25
    move-result-object v2

    #@26
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@29
    move-result-object v2

    #@2a
    invoke-static {v2}, Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V

    #@2d
    .line 2719
    invoke-direct {p0, p1}, Lcom/android/server/ConnectivityService;->getNetworkAgentInfoForNetwork(Landroid/net/Network;)Lcom/android/server/connectivity/NetworkAgentInfo;

    #@30
    move-result-object v0

    #@31
    .line 2720
    .local v0, "nai":Lcom/android/server/connectivity/NetworkAgentInfo;
    if-nez v0, :cond_0

    #@33
    .line 2722
    return-void

    #@34
    .line 2725
    :cond_0
    iget-boolean v2, v0, Lcom/android/server/connectivity/NetworkAgentInfo;->everValidated:Z

    #@36
    if-eqz v2, :cond_1

    #@38
    .line 2727
    return-void

    #@39
    .line 2730
    :cond_1
    iget-object v2, v0, Lcom/android/server/connectivity/NetworkAgentInfo;->networkMisc:Landroid/net/NetworkMisc;

    #@3b
    iget-boolean v2, v2, Landroid/net/NetworkMisc;->explicitlySelected:Z

    #@3d
    if-nez v2, :cond_2

    #@3f
    .line 2731
    sget-object v2, Lcom/android/server/ConnectivityService;->TAG:Ljava/lang/String;

    #@41
    const-string/jumbo v3, "BUG: setAcceptUnvalidated non non-explicitly selected network"

    #@44
    invoke-static {v2, v3}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    #@47
    .line 2734
    :cond_2
    iget-object v2, v0, Lcom/android/server/connectivity/NetworkAgentInfo;->networkMisc:Landroid/net/NetworkMisc;

    #@49
    iget-boolean v2, v2, Landroid/net/NetworkMisc;->acceptUnvalidated:Z

    #@4b
    if-eq p2, v2, :cond_3

    #@4d
    .line 2735
    invoke-virtual {v0}, Lcom/android/server/connectivity/NetworkAgentInfo;->getCurrentScore()I

    #@50
    move-result v1

    #@51
    .line 2736
    .local v1, "oldScore":I
    iget-object v2, v0, Lcom/android/server/connectivity/NetworkAgentInfo;->networkMisc:Landroid/net/NetworkMisc;

    #@53
    iput-boolean p2, v2, Landroid/net/NetworkMisc;->acceptUnvalidated:Z

    #@55
    .line 2737
    invoke-direct {p0, v0, v1}, Lcom/android/server/ConnectivityService;->rematchAllNetworksAndRequests(Lcom/android/server/connectivity/NetworkAgentInfo;I)V

    #@58
    .line 2738
    invoke-direct {p0, v0}, Lcom/android/server/ConnectivityService;->sendUpdatedScoreToFactories(Lcom/android/server/connectivity/NetworkAgentInfo;)V

    #@5b
    .line 2741
    .end local v1    # "oldScore":I
    :cond_3
    if-eqz p3, :cond_4

    #@5d
    .line 2742
    iget-object v3, v0, Lcom/android/server/connectivity/NetworkAgentInfo;->asyncChannel:Lcom/android/internal/util/AsyncChannel;

    #@5f
    .line 2743
    if-eqz p2, :cond_6

    #@61
    const/4 v2, 0x1

    #@62
    :goto_0
    const v4, 0x81009

    #@65
    .line 2742
    invoke-virtual {v3, v4, v2}, Lcom/android/internal/util/AsyncChannel;->sendMessage(II)V

    #@68
    .line 2746
    :cond_4
    if-nez p2, :cond_5

    #@6a
    .line 2748
    iget-object v2, v0, Lcom/android/server/connectivity/NetworkAgentInfo;->asyncChannel:Lcom/android/internal/util/AsyncChannel;

    #@6c
    const v3, 0x8100f

    #@6f
    invoke-virtual {v2, v3}, Lcom/android/internal/util/AsyncChannel;->sendMessage(I)V

    #@72
    .line 2750
    invoke-direct {p0, v0}, Lcom/android/server/ConnectivityService;->teardownUnneededNetwork(Lcom/android/server/connectivity/NetworkAgentInfo;)V

    #@75
    .line 2715
    :cond_5
    return-void

    #@76
    .line 2743
    :cond_6
    const/4 v2, 0x0

    #@77
    goto :goto_0
.end method

.method private handleSetAvoidUnvalidated(Landroid/net/Network;)V
    .locals 3
    .param p1, "network"    # Landroid/net/Network;

    #@0
    .prologue
    .line 2756
    invoke-direct {p0, p1}, Lcom/android/server/ConnectivityService;->getNetworkAgentInfoForNetwork(Landroid/net/Network;)Lcom/android/server/connectivity/NetworkAgentInfo;

    #@3
    move-result-object v0

    #@4
    .line 2757
    .local v0, "nai":Lcom/android/server/connectivity/NetworkAgentInfo;
    if-eqz v0, :cond_0

    #@6
    iget-boolean v2, v0, Lcom/android/server/connectivity/NetworkAgentInfo;->lastValidated:Z

    #@8
    if-eqz v2, :cond_1

    #@a
    .line 2759
    :cond_0
    return-void

    #@b
    .line 2761
    :cond_1
    iget-boolean v2, v0, Lcom/android/server/connectivity/NetworkAgentInfo;->avoidUnvalidated:Z

    #@d
    if-nez v2, :cond_2

    #@f
    .line 2762
    invoke-virtual {v0}, Lcom/android/server/connectivity/NetworkAgentInfo;->getCurrentScore()I

    #@12
    move-result v1

    #@13
    .line 2763
    .local v1, "oldScore":I
    const/4 v2, 0x1

    #@14
    iput-boolean v2, v0, Lcom/android/server/connectivity/NetworkAgentInfo;->avoidUnvalidated:Z

    #@16
    .line 2764
    invoke-direct {p0, v0, v1}, Lcom/android/server/ConnectivityService;->rematchAllNetworksAndRequests(Lcom/android/server/connectivity/NetworkAgentInfo;I)V

    #@19
    .line 2765
    invoke-direct {p0, v0}, Lcom/android/server/ConnectivityService;->sendUpdatedScoreToFactories(Lcom/android/server/connectivity/NetworkAgentInfo;)V

    #@1c
    .line 2755
    .end local v1    # "oldScore":I
    :cond_2
    return-void
.end method

.method private handleUnregisterNetworkFactory(Landroid/os/Messenger;)V
    .locals 3
    .param p1, "messenger"    # Landroid/os/Messenger;

    #@0
    .prologue
    .line 4356
    iget-object v1, p0, Lcom/android/server/ConnectivityService;->mNetworkFactoryInfos:Ljava/util/HashMap;

    #@2
    invoke-virtual {v1, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Lcom/android/server/ConnectivityService$NetworkFactoryInfo;

    #@8
    .line 4357
    .local v0, "nfi":Lcom/android/server/ConnectivityService$NetworkFactoryInfo;
    if-nez v0, :cond_0

    #@a
    .line 4358
    const-string/jumbo v1, "Failed to find Messenger in unregisterNetworkFactory"

    #@d
    invoke-static {v1}, Lcom/android/server/ConnectivityService;->loge(Ljava/lang/String;)V

    #@10
    .line 4359
    return-void

    #@11
    .line 4361
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    #@13
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@16
    const-string/jumbo v2, "unregisterNetworkFactory for "

    #@19
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1c
    move-result-object v1

    #@1d
    iget-object v2, v0, Lcom/android/server/ConnectivityService$NetworkFactoryInfo;->name:Ljava/lang/String;

    #@1f
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@22
    move-result-object v1

    #@23
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@26
    move-result-object v1

    #@27
    invoke-static {v1}, Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V

    #@2a
    .line 4355
    return-void
.end method

.method private hasWifiNetworkListenPermission(Landroid/net/NetworkCapabilities;)Z
    .locals 7
    .param p1, "nc"    # Landroid/net/NetworkCapabilities;

    #@0
    .prologue
    const/4 v6, 0x1

    #@1
    const/4 v5, 0x0

    #@2
    .line 4253
    if-nez p1, :cond_0

    #@4
    .line 4254
    return v5

    #@5
    .line 4256
    :cond_0
    invoke-virtual {p1}, Landroid/net/NetworkCapabilities;->getTransportTypes()[I

    #@8
    move-result-object v1

    #@9
    .line 4257
    .local v1, "transportTypes":[I
    array-length v2, v1

    #@a
    if-ne v2, v6, :cond_1

    #@c
    aget v2, v1, v5

    #@e
    if-eq v2, v6, :cond_2

    #@10
    .line 4258
    :cond_1
    return v5

    #@11
    .line 4261
    :cond_2
    :try_start_0
    iget-object v2, p0, Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;

    #@13
    .line 4262
    const-string/jumbo v3, "android.permission.ACCESS_WIFI_STATE"

    #@16
    .line 4263
    const-string/jumbo v4, "ConnectivityService"

    #@19
    .line 4261
    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    #@1c
    .line 4267
    return v6

    #@1d
    .line 4264
    :catch_0
    move-exception v0

    #@1e
    .line 4265
    .local v0, "e":Ljava/lang/SecurityException;
    return v5
.end method

.method private isDefaultNetwork(Lcom/android/server/connectivity/NetworkAgentInfo;)Z
    .locals 1
    .param p1, "nai"    # Lcom/android/server/connectivity/NetworkAgentInfo;

    #@0
    .prologue
    .line 4405
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->getDefaultNetwork()Lcom/android/server/connectivity/NetworkAgentInfo;

    #@3
    move-result-object v0

    #@4
    if-ne p1, v0, :cond_0

    #@6
    const/4 v0, 0x1

    #@7
    :goto_0
    return v0

    #@8
    :cond_0
    const/4 v0, 0x0

    #@9
    goto :goto_0
.end method

.method private isDefaultRequest(Lcom/android/server/ConnectivityService$NetworkRequestInfo;)Z
    .locals 2
    .param p1, "nri"    # Lcom/android/server/ConnectivityService$NetworkRequestInfo;

    #@0
    .prologue
    .line 4409
    iget-object v0, p1, Lcom/android/server/ConnectivityService$NetworkRequestInfo;->request:Landroid/net/NetworkRequest;

    #@2
    iget v0, v0, Landroid/net/NetworkRequest;->requestId:I

    #@4
    iget-object v1, p0, Lcom/android/server/ConnectivityService;->mDefaultRequest:Landroid/net/NetworkRequest;

    #@6
    iget v1, v1, Landroid/net/NetworkRequest;->requestId:I

    #@8
    if-ne v0, v1, :cond_0

    #@a
    const/4 v0, 0x1

    #@b
    :goto_0
    return v0

    #@c
    :cond_0
    const/4 v0, 0x0

    #@d
    goto :goto_0
.end method

.method private isLiveNetworkAgent(Lcom/android/server/connectivity/NetworkAgentInfo;I)Z
    .locals 5
    .param p1, "nai"    # Lcom/android/server/connectivity/NetworkAgentInfo;
    .param p2, "what"    # I

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 2105
    iget-object v2, p1, Lcom/android/server/connectivity/NetworkAgentInfo;->network:Landroid/net/Network;

    #@3
    if-nez v2, :cond_0

    #@5
    return v4

    #@6
    .line 2106
    :cond_0
    iget-object v2, p1, Lcom/android/server/connectivity/NetworkAgentInfo;->network:Landroid/net/Network;

    #@8
    invoke-direct {p0, v2}, Lcom/android/server/ConnectivityService;->getNetworkAgentInfoForNetwork(Landroid/net/Network;)Lcom/android/server/connectivity/NetworkAgentInfo;

    #@b
    move-result-object v1

    #@c
    .line 2107
    .local v1, "officialNai":Lcom/android/server/connectivity/NetworkAgentInfo;
    if-eqz v1, :cond_1

    #@e
    invoke-virtual {v1, p1}, Lcom/android/server/connectivity/NetworkAgentInfo;->equals(Ljava/lang/Object;)Z

    #@11
    move-result v2

    #@12
    if-eqz v2, :cond_1

    #@14
    const/4 v2, 0x1

    #@15
    return v2

    #@16
    .line 2108
    :cond_1
    if-nez v1, :cond_2

    #@18
    .line 2113
    :goto_0
    return v4

    #@19
    .line 2109
    :cond_2
    sget-object v2, Lcom/android/server/ConnectivityService;->sMagicDecoderRing:Landroid/util/SparseArray;

    #@1b
    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    #@1e
    move-result-object v3

    #@1f
    invoke-virtual {v2, p2, v3}, Landroid/util/SparseArray;->get(ILjava/lang/Object;)Ljava/lang/Object;

    #@22
    move-result-object v0

    #@23
    check-cast v0, Ljava/lang/String;

    #@25
    .line 2110
    .local v0, "msg":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    #@27
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@2a
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2d
    move-result-object v2

    #@2e
    const-string/jumbo v3, " - isLiveNetworkAgent found mismatched netId: "

    #@31
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@34
    move-result-object v2

    #@35
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@38
    move-result-object v2

    #@39
    .line 2111
    const-string/jumbo v3, " - "

    #@3c
    .line 2110
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3f
    move-result-object v2

    #@40
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@43
    move-result-object v2

    #@44
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@47
    move-result-object v2

    #@48
    invoke-static {v2}, Lcom/android/server/ConnectivityService;->loge(Ljava/lang/String;)V

    #@4b
    goto :goto_0
.end method

.method private isNetworkWithLinkPropertiesBlocked(Landroid/net/LinkProperties;IZ)Z
    .locals 10
    .param p1, "lp"    # Landroid/net/LinkProperties;
    .param p2, "uid"    # I
    .param p3, "ignoreBlocked"    # Z

    #@0
    .prologue
    const/4 v6, 0x1

    #@1
    const/4 v5, 0x0

    #@2
    .line 1013
    if-eqz p3, :cond_0

    #@4
    return v5

    #@5
    .line 1015
    :cond_0
    invoke-direct {p0, p2}, Lcom/android/server/ConnectivityService;->isSystem(I)Z

    #@8
    move-result v7

    #@9
    if-eqz v7, :cond_1

    #@b
    return v5

    #@c
    .line 1020
    :cond_1
    iget-object v7, p0, Lcom/android/server/ConnectivityService;->mVpns:Landroid/util/SparseArray;

    #@e
    monitor-enter v7

    #@f
    .line 1021
    :try_start_0
    iget-object v8, p0, Lcom/android/server/ConnectivityService;->mVpns:Landroid/util/SparseArray;

    #@11
    invoke-static {p2}, Landroid/os/UserHandle;->getUserId(I)I

    #@14
    move-result v9

    #@15
    invoke-virtual {v8, v9}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    #@18
    move-result-object v4

    #@19
    check-cast v4, Lcom/android/server/connectivity/Vpn;

    #@1b
    .line 1022
    .local v4, "vpn":Lcom/android/server/connectivity/Vpn;
    if-eqz v4, :cond_2

    #@1d
    invoke-virtual {v4, p2}, Lcom/android/server/connectivity/Vpn;->isBlockingUid(I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@20
    move-result v8

    #@21
    if-eqz v8, :cond_2

    #@23
    monitor-exit v7

    #@24
    .line 1023
    return v6

    #@25
    :cond_2
    monitor-exit v7

    #@26
    .line 1027
    if-nez p1, :cond_5

    #@28
    const-string/jumbo v1, ""

    #@2b
    .line 1028
    .local v1, "iface":Ljava/lang/String;
    :goto_0
    iget-object v7, p0, Lcom/android/server/ConnectivityService;->mRulesLock:Ljava/lang/Object;

    #@2d
    monitor-enter v7

    #@2e
    .line 1029
    :try_start_1
    iget-object v8, p0, Lcom/android/server/ConnectivityService;->mMeteredIfaces:Landroid/util/ArraySet;

    #@30
    invoke-virtual {v8, v1}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    #@33
    move-result v2

    #@34
    .line 1030
    .local v2, "networkMetered":Z
    iget-object v8, p0, Lcom/android/server/ConnectivityService;->mUidRules:Landroid/util/SparseIntArray;

    #@36
    const/4 v9, 0x0

    #@37
    invoke-virtual {v8, p2, v9}, Landroid/util/SparseIntArray;->get(II)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    #@3a
    move-result v3

    #@3b
    .local v3, "uidRules":I
    monitor-exit v7

    #@3c
    .line 1033
    const/4 v0, 0x1

    #@3d
    .line 1035
    .local v0, "allowed":Z
    if-eqz v2, :cond_3

    #@3f
    .line 1036
    and-int/lit8 v7, v3, 0x4

    #@41
    if-eqz v7, :cond_6

    #@43
    .line 1039
    const/4 v0, 0x0

    #@44
    .line 1052
    :cond_3
    :goto_1
    if-eqz v0, :cond_4

    #@46
    .line 1053
    and-int/lit8 v7, v3, 0x40

    #@48
    if-nez v7, :cond_a

    #@4a
    const/4 v0, 0x1

    #@4b
    .line 1057
    :cond_4
    :goto_2
    if-eqz v0, :cond_b

    #@4d
    :goto_3
    return v5

    #@4e
    .line 1020
    .end local v0    # "allowed":Z
    .end local v1    # "iface":Ljava/lang/String;
    .end local v2    # "networkMetered":Z
    .end local v3    # "uidRules":I
    .end local v4    # "vpn":Lcom/android/server/connectivity/Vpn;
    :catchall_0
    move-exception v5

    #@4f
    monitor-exit v7

    #@50
    throw v5

    #@51
    .line 1027
    .restart local v4    # "vpn":Lcom/android/server/connectivity/Vpn;
    :cond_5
    invoke-virtual {p1}, Landroid/net/LinkProperties;->getInterfaceName()Ljava/lang/String;

    #@54
    move-result-object v1

    #@55
    .restart local v1    # "iface":Ljava/lang/String;
    goto :goto_0

    #@56
    .line 1028
    :catchall_1
    move-exception v5

    #@57
    monitor-exit v7

    #@58
    throw v5

    #@59
    .line 1041
    .restart local v0    # "allowed":Z
    .restart local v2    # "networkMetered":Z
    .restart local v3    # "uidRules":I
    :cond_6
    iget-boolean v7, p0, Lcom/android/server/ConnectivityService;->mRestrictBackground:Z

    #@5b
    if-eqz v7, :cond_7

    #@5d
    .line 1042
    and-int/lit8 v7, v3, 0x1

    #@5f
    if-eqz v7, :cond_8

    #@61
    .line 1041
    :cond_7
    const/4 v0, 0x1

    #@62
    goto :goto_1

    #@63
    .line 1043
    :cond_8
    and-int/lit8 v7, v3, 0x2

    #@65
    if-eqz v7, :cond_9

    #@67
    const/4 v0, 0x1

    #@68
    goto :goto_1

    #@69
    :cond_9
    const/4 v0, 0x0

    #@6a
    goto :goto_1

    #@6b
    .line 1053
    :cond_a
    const/4 v0, 0x0

    #@6c
    goto :goto_2

    #@6d
    :cond_b
    move v5, v6

    #@6e
    .line 1057
    goto :goto_3
.end method

.method private isSystem(I)Z
    .locals 1
    .param p1, "uid"    # I

    #@0
    .prologue
    .line 4194
    const/16 v0, 0x2710

    #@2
    if-ge p1, v0, :cond_0

    #@4
    const/4 v0, 0x1

    #@5
    :goto_0
    return v0

    #@6
    :cond_0
    const/4 v0, 0x0

    #@7
    goto :goto_0
.end method

.method private loadGlobalProxy()V
    .locals 8

    #@0
    .prologue
    .line 3292
    iget-object v6, p0, Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;

    #@2
    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    #@5
    move-result-object v5

    #@6
    .line 3293
    .local v5, "res":Landroid/content/ContentResolver;
    const-string/jumbo v6, "global_http_proxy_host"

    #@9
    invoke-static {v5, v6}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    #@c
    move-result-object v1

    #@d
    .line 3294
    .local v1, "host":Ljava/lang/String;
    const-string/jumbo v6, "global_http_proxy_port"

    #@10
    const/4 v7, 0x0

    #@11
    invoke-static {v5, v6, v7}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    #@14
    move-result v3

    #@15
    .line 3296
    .local v3, "port":I
    const-string/jumbo v6, "global_http_proxy_exclusion_list"

    #@18
    .line 3295
    invoke-static {v5, v6}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    #@1b
    move-result-object v0

    #@1c
    .line 3297
    .local v0, "exclList":Ljava/lang/String;
    const-string/jumbo v6, "global_proxy_pac_url"

    #@1f
    invoke-static {v5, v6}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    #@22
    move-result-object v2

    #@23
    .line 3298
    .local v2, "pacFileUrl":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@26
    move-result v6

    #@27
    if-eqz v6, :cond_0

    #@29
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@2c
    move-result v6

    #@2d
    if-eqz v6, :cond_0

    #@2f
    .line 3291
    :goto_0
    return-void

    #@30
    .line 3300
    :cond_0
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@33
    move-result v6

    #@34
    if-nez v6, :cond_1

    #@36
    .line 3301
    new-instance v4, Landroid/net/ProxyInfo;

    #@38
    invoke-direct {v4, v2}, Landroid/net/ProxyInfo;-><init>(Ljava/lang/String;)V

    #@3b
    .line 3305
    .local v4, "proxyProperties":Landroid/net/ProxyInfo;
    :goto_1
    invoke-virtual {v4}, Landroid/net/ProxyInfo;->isValid()Z

    #@3e
    move-result v6

    #@3f
    if-nez v6, :cond_2

    #@41
    .line 3306
    new-instance v6, Ljava/lang/StringBuilder;

    #@43
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@46
    const-string/jumbo v7, "Invalid proxy properties, ignoring: "

    #@49
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4c
    move-result-object v6

    #@4d
    invoke-virtual {v4}, Landroid/net/ProxyInfo;->toString()Ljava/lang/String;

    #@50
    move-result-object v7

    #@51
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@54
    move-result-object v6

    #@55
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@58
    move-result-object v6

    #@59
    invoke-static {v6}, Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V

    #@5c
    .line 3307
    return-void

    #@5d
    .line 3303
    .end local v4    # "proxyProperties":Landroid/net/ProxyInfo;
    :cond_1
    new-instance v4, Landroid/net/ProxyInfo;

    #@5f
    invoke-direct {v4, v1, v3, v0}, Landroid/net/ProxyInfo;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    #@62
    .restart local v4    # "proxyProperties":Landroid/net/ProxyInfo;
    goto :goto_1

    #@63
    .line 3310
    :cond_2
    iget-object v6, p0, Lcom/android/server/ConnectivityService;->mProxyLock:Ljava/lang/Object;

    #@65
    monitor-enter v6

    #@66
    .line 3311
    :try_start_0
    iput-object v4, p0, Lcom/android/server/ConnectivityService;->mGlobalProxy:Landroid/net/ProxyInfo;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@68
    monitor-exit v6

    #@69
    goto :goto_0

    #@6a
    .line 3310
    :catchall_0
    move-exception v7

    #@6b
    monitor-exit v6

    #@6c
    throw v7
.end method

.method private static log(Ljava/lang/String;)V
    .locals 1
    .param p0, "s"    # Ljava/lang/String;

    #@0
    .prologue
    .line 3448
    sget-object v0, Lcom/android/server/ConnectivityService;->TAG:Ljava/lang/String;

    #@2
    invoke-static {v0, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@5
    .line 3447
    return-void
.end method

.method private logDefaultNetworkEvent(Lcom/android/server/connectivity/NetworkAgentInfo;Lcom/android/server/connectivity/NetworkAgentInfo;)V
    .locals 8
    .param p1, "newNai"    # Lcom/android/server/connectivity/NetworkAgentInfo;
    .param p2, "prevNai"    # Lcom/android/server/connectivity/NetworkAgentInfo;

    #@0
    .prologue
    .line 5533
    const/4 v1, 0x0

    #@1
    .line 5534
    .local v1, "newNetid":I
    const/4 v3, 0x0

    #@2
    .line 5535
    .local v3, "prevNetid":I
    const/4 v0, 0x0

    #@3
    new-array v2, v0, [I

    #@5
    .line 5536
    .local v2, "transports":[I
    const/4 v4, 0x0

    #@6
    .line 5537
    .local v4, "hadIPv4":Z
    const/4 v5, 0x0

    #@7
    .line 5539
    .local v5, "hadIPv6":Z
    if-eqz p1, :cond_0

    #@9
    .line 5540
    iget-object v0, p1, Lcom/android/server/connectivity/NetworkAgentInfo;->network:Landroid/net/Network;

    #@b
    iget v1, v0, Landroid/net/Network;->netId:I

    #@d
    .line 5541
    iget-object v0, p1, Lcom/android/server/connectivity/NetworkAgentInfo;->networkCapabilities:Landroid/net/NetworkCapabilities;

    #@f
    invoke-virtual {v0}, Landroid/net/NetworkCapabilities;->getTransportTypes()[I

    #@12
    move-result-object v2

    #@13
    .line 5543
    :cond_0
    if-eqz p2, :cond_1

    #@15
    .line 5544
    iget-object v0, p2, Lcom/android/server/connectivity/NetworkAgentInfo;->network:Landroid/net/Network;

    #@17
    iget v3, v0, Landroid/net/Network;->netId:I

    #@19
    .line 5545
    iget-object v6, p2, Lcom/android/server/connectivity/NetworkAgentInfo;->linkProperties:Landroid/net/LinkProperties;

    #@1b
    .line 5546
    .local v6, "lp":Landroid/net/LinkProperties;
    invoke-virtual {v6}, Landroid/net/LinkProperties;->hasIPv4Address()Z

    #@1e
    move-result v0

    #@1f
    if-eqz v0, :cond_2

    #@21
    invoke-virtual {v6}, Landroid/net/LinkProperties;->hasIPv4DefaultRoute()Z

    #@24
    move-result v4

    #@25
    .line 5547
    .end local v4    # "hadIPv4":Z
    :goto_0
    invoke-virtual {v6}, Landroid/net/LinkProperties;->hasGlobalIPv6Address()Z

    #@28
    move-result v0

    #@29
    if-eqz v0, :cond_3

    #@2b
    invoke-virtual {v6}, Landroid/net/LinkProperties;->hasIPv6DefaultRoute()Z

    #@2e
    move-result v5

    #@2f
    .line 5550
    .end local v5    # "hadIPv6":Z
    .end local v6    # "lp":Landroid/net/LinkProperties;
    :cond_1
    :goto_1
    iget-object v7, p0, Lcom/android/server/ConnectivityService;->mMetricsLog:Landroid/net/metrics/IpConnectivityLog;

    #@31
    new-instance v0, Landroid/net/metrics/DefaultNetworkEvent;

    #@33
    invoke-direct/range {v0 .. v5}, Landroid/net/metrics/DefaultNetworkEvent;-><init>(I[IIZZ)V

    #@36
    invoke-virtual {v7, v0}, Landroid/net/metrics/IpConnectivityLog;->log(Landroid/os/Parcelable;)V

    #@39
    .line 5532
    return-void

    #@3a
    .line 5546
    .restart local v4    # "hadIPv4":Z
    .restart local v5    # "hadIPv6":Z
    .restart local v6    # "lp":Landroid/net/LinkProperties;
    :cond_2
    const/4 v4, 0x0

    #@3b
    goto :goto_0

    #@3c
    .line 5547
    .end local v4    # "hadIPv4":Z
    :cond_3
    const/4 v5, 0x0

    #@3d
    goto :goto_1
.end method

.method private logNetworkEvent(Lcom/android/server/connectivity/NetworkAgentInfo;I)V
    .locals 3
    .param p1, "nai"    # Lcom/android/server/connectivity/NetworkAgentInfo;
    .param p2, "evtype"    # I

    #@0
    .prologue
    .line 5554
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mMetricsLog:Landroid/net/metrics/IpConnectivityLog;

    #@2
    new-instance v1, Landroid/net/metrics/NetworkEvent;

    #@4
    iget-object v2, p1, Lcom/android/server/connectivity/NetworkAgentInfo;->network:Landroid/net/Network;

    #@6
    iget v2, v2, Landroid/net/Network;->netId:I

    #@8
    invoke-direct {v1, v2, p2}, Landroid/net/metrics/NetworkEvent;-><init>(II)V

    #@b
    invoke-virtual {v0, v1}, Landroid/net/metrics/IpConnectivityLog;->log(Landroid/os/Parcelable;)V

    #@e
    .line 5553
    return-void
.end method

.method private static loge(Ljava/lang/String;)V
    .locals 1
    .param p0, "s"    # Ljava/lang/String;

    #@0
    .prologue
    .line 3452
    sget-object v0, Lcom/android/server/ConnectivityService;->TAG:Ljava/lang/String;

    #@2
    invoke-static {v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@5
    .line 3451
    return-void
.end method

.method private makeDefault(Lcom/android/server/connectivity/NetworkAgentInfo;)V
    .locals 3
    .param p1, "newNetwork"    # Lcom/android/server/connectivity/NetworkAgentInfo;

    #@0
    .prologue
    .line 4808
    new-instance v1, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    const-string/jumbo v2, "Switching to new default network: "

    #@8
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b
    move-result-object v1

    #@c
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@f
    move-result-object v1

    #@10
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@13
    move-result-object v1

    #@14
    invoke-static {v1}, Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V

    #@17
    .line 4809
    invoke-direct {p0, p1}, Lcom/android/server/ConnectivityService;->setupDataActivityTracking(Lcom/android/server/connectivity/NetworkAgentInfo;)V

    #@1a
    .line 4811
    :try_start_0
    iget-object v1, p0, Lcom/android/server/ConnectivityService;->mNetd:Landroid/os/INetworkManagementService;

    #@1c
    iget-object v2, p1, Lcom/android/server/connectivity/NetworkAgentInfo;->network:Landroid/net/Network;

    #@1e
    iget v2, v2, Landroid/net/Network;->netId:I

    #@20
    invoke-interface {v1, v2}, Landroid/os/INetworkManagementService;->setDefaultNetId(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    #@23
    .line 4815
    :goto_0
    invoke-direct {p0, p1}, Lcom/android/server/ConnectivityService;->notifyLockdownVpn(Lcom/android/server/connectivity/NetworkAgentInfo;)V

    #@26
    .line 4816
    iget-object v1, p1, Lcom/android/server/connectivity/NetworkAgentInfo;->linkProperties:Landroid/net/LinkProperties;

    #@28
    invoke-virtual {v1}, Landroid/net/LinkProperties;->getHttpProxy()Landroid/net/ProxyInfo;

    #@2b
    move-result-object v1

    #@2c
    invoke-direct {p0, v1}, Lcom/android/server/ConnectivityService;->handleApplyDefaultProxy(Landroid/net/ProxyInfo;)V

    #@2f
    .line 4817
    invoke-direct {p0, p1}, Lcom/android/server/ConnectivityService;->updateTcpBufferSizes(Lcom/android/server/connectivity/NetworkAgentInfo;)V

    #@32
    .line 4818
    iget-object v1, p1, Lcom/android/server/connectivity/NetworkAgentInfo;->linkProperties:Landroid/net/LinkProperties;

    #@34
    invoke-virtual {v1}, Landroid/net/LinkProperties;->getDnsServers()Ljava/util/List;

    #@37
    move-result-object v1

    #@38
    invoke-direct {p0, v1}, Lcom/android/server/ConnectivityService;->setDefaultDnsSystemProperties(Ljava/util/Collection;)V

    #@3b
    .line 4807
    return-void

    #@3c
    .line 4812
    :catch_0
    move-exception v0

    #@3d
    .line 4813
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/StringBuilder;

    #@3f
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@42
    const-string/jumbo v2, "Exception setting default network :"

    #@45
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@48
    move-result-object v1

    #@49
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@4c
    move-result-object v1

    #@4d
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@50
    move-result-object v1

    #@51
    invoke-static {v1}, Lcom/android/server/ConnectivityService;->loge(Ljava/lang/String;)V

    #@54
    goto :goto_0
.end method

.method private makeGeneralIntent(Landroid/net/NetworkInfo;Ljava/lang/String;)Landroid/content/Intent;
    .locals 4
    .param p1, "info"    # Landroid/net/NetworkInfo;
    .param p2, "bcastType"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1645
    iget-object v2, p0, Lcom/android/server/ConnectivityService;->mLockdownTracker:Lcom/android/server/net/LockdownVpnTracker;

    #@2
    if-eqz v2, :cond_0

    #@4
    .line 1646
    new-instance v0, Landroid/net/NetworkInfo;

    #@6
    invoke-direct {v0, p1}, Landroid/net/NetworkInfo;-><init>(Landroid/net/NetworkInfo;)V

    #@9
    .line 1647
    .end local p1    # "info":Landroid/net/NetworkInfo;
    .local v0, "info":Landroid/net/NetworkInfo;
    iget-object v2, p0, Lcom/android/server/ConnectivityService;->mLockdownTracker:Lcom/android/server/net/LockdownVpnTracker;

    #@b
    invoke-virtual {v2, v0}, Lcom/android/server/net/LockdownVpnTracker;->augmentNetworkInfo(Landroid/net/NetworkInfo;)V

    #@e
    move-object p1, v0

    #@f
    .line 1650
    .end local v0    # "info":Landroid/net/NetworkInfo;
    .restart local p1    # "info":Landroid/net/NetworkInfo;
    :cond_0
    new-instance v1, Landroid/content/Intent;

    #@11
    invoke-direct {v1, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    #@14
    .line 1651
    .local v1, "intent":Landroid/content/Intent;
    const-string/jumbo v2, "networkInfo"

    #@17
    new-instance v3, Landroid/net/NetworkInfo;

    #@19
    invoke-direct {v3, p1}, Landroid/net/NetworkInfo;-><init>(Landroid/net/NetworkInfo;)V

    #@1c
    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    #@1f
    .line 1652
    const-string/jumbo v2, "networkType"

    #@22
    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getType()I

    #@25
    move-result v3

    #@26
    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    #@29
    .line 1653
    invoke-virtual {p1}, Landroid/net/NetworkInfo;->isFailover()Z

    #@2c
    move-result v2

    #@2d
    if-eqz v2, :cond_1

    #@2f
    .line 1654
    const-string/jumbo v2, "isFailover"

    #@32
    const/4 v3, 0x1

    #@33
    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    #@36
    .line 1655
    const/4 v2, 0x0

    #@37
    invoke-virtual {p1, v2}, Landroid/net/NetworkInfo;->setFailover(Z)V

    #@3a
    .line 1657
    :cond_1
    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getReason()Ljava/lang/String;

    #@3d
    move-result-object v2

    #@3e
    if-eqz v2, :cond_2

    #@40
    .line 1658
    const-string/jumbo v2, "reason"

    #@43
    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getReason()Ljava/lang/String;

    #@46
    move-result-object v3

    #@47
    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    #@4a
    .line 1660
    :cond_2
    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getExtraInfo()Ljava/lang/String;

    #@4d
    move-result-object v2

    #@4e
    if-eqz v2, :cond_3

    #@50
    .line 1661
    const-string/jumbo v2, "extraInfo"

    #@53
    .line 1662
    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getExtraInfo()Ljava/lang/String;

    #@56
    move-result-object v3

    #@57
    .line 1661
    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    #@5a
    .line 1664
    :cond_3
    const-string/jumbo v2, "inetCondition"

    #@5d
    iget v3, p0, Lcom/android/server/ConnectivityService;->mDefaultInetConditionPublished:I

    #@5f
    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    #@62
    .line 1665
    return-object v1
.end method

.method private maybeLogBlockedNetworkInfo(Landroid/net/NetworkInfo;I)V
    .locals 5
    .param p1, "ni"    # Landroid/net/NetworkInfo;
    .param p2, "uid"    # I

    #@0
    .prologue
    .line 1061
    if-eqz p1, :cond_2

    #@2
    .line 1064
    const/4 v1, 0x0

    #@3
    .line 1065
    .local v1, "removed":Z
    const/4 v0, 0x0

    #@4
    .line 1066
    .local v0, "added":Z
    iget-object v3, p0, Lcom/android/server/ConnectivityService;->mBlockedAppUids:Ljava/util/HashSet;

    #@6
    monitor-enter v3

    #@7
    .line 1067
    :try_start_0
    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    #@a
    move-result-object v2

    #@b
    sget-object v4, Landroid/net/NetworkInfo$DetailedState;->BLOCKED:Landroid/net/NetworkInfo$DetailedState;

    #@d
    if-ne v2, v4, :cond_3

    #@f
    iget-object v2, p0, Lcom/android/server/ConnectivityService;->mBlockedAppUids:Ljava/util/HashSet;

    #@11
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@14
    move-result-object v4

    #@15
    invoke-virtual {v2, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@18
    move-result v2

    #@19
    if-eqz v2, :cond_3

    #@1b
    .line 1068
    const/4 v0, 0x1

    #@1c
    :cond_0
    :goto_0
    monitor-exit v3

    #@1d
    .line 1073
    if-eqz v0, :cond_4

    #@1f
    .line 1074
    new-instance v2, Ljava/lang/StringBuilder;

    #@21
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@24
    const-string/jumbo v3, "Returning blocked NetworkInfo to uid="

    #@27
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2a
    move-result-object v2

    #@2b
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@2e
    move-result-object v2

    #@2f
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@32
    move-result-object v2

    #@33
    invoke-static {v2}, Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V

    #@36
    .line 1075
    iget-object v2, p0, Lcom/android/server/ConnectivityService;->mNetworkInfoBlockingLogs:Landroid/util/LocalLog;

    #@38
    new-instance v3, Ljava/lang/StringBuilder;

    #@3a
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@3d
    const-string/jumbo v4, "BLOCKED "

    #@40
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@43
    move-result-object v3

    #@44
    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@47
    move-result-object v3

    #@48
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@4b
    move-result-object v3

    #@4c
    invoke-virtual {v2, v3}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    #@4f
    .line 1060
    :cond_1
    :goto_1
    return-void

    #@50
    .line 1062
    .end local v0    # "added":Z
    .end local v1    # "removed":Z
    :cond_2
    return-void

    #@51
    .line 1069
    .restart local v0    # "added":Z
    .restart local v1    # "removed":Z
    :cond_3
    :try_start_1
    invoke-virtual {p1}, Landroid/net/NetworkInfo;->isConnected()Z

    #@54
    move-result v2

    #@55
    if-eqz v2, :cond_0

    #@57
    iget-object v2, p0, Lcom/android/server/ConnectivityService;->mBlockedAppUids:Ljava/util/HashSet;

    #@59
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@5c
    move-result-object v4

    #@5d
    invoke-virtual {v2, v4}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@60
    move-result v2

    #@61
    if-eqz v2, :cond_0

    #@63
    .line 1070
    const/4 v1, 0x1

    #@64
    goto :goto_0

    #@65
    .line 1066
    :catchall_0
    move-exception v2

    #@66
    monitor-exit v3

    #@67
    throw v2

    #@68
    .line 1076
    :cond_4
    if-eqz v1, :cond_1

    #@6a
    .line 1077
    new-instance v2, Ljava/lang/StringBuilder;

    #@6c
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@6f
    const-string/jumbo v3, "Returning unblocked NetworkInfo to uid="

    #@72
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@75
    move-result-object v2

    #@76
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@79
    move-result-object v2

    #@7a
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@7d
    move-result-object v2

    #@7e
    invoke-static {v2}, Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V

    #@81
    .line 1078
    iget-object v2, p0, Lcom/android/server/ConnectivityService;->mNetworkInfoBlockingLogs:Landroid/util/LocalLog;

    #@83
    new-instance v3, Ljava/lang/StringBuilder;

    #@85
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@88
    const-string/jumbo v4, "UNBLOCKED "

    #@8b
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@8e
    move-result-object v3

    #@8f
    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@92
    move-result-object v3

    #@93
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@96
    move-result-object v3

    #@97
    invoke-virtual {v2, v3}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    #@9a
    goto :goto_1
.end method

.method private declared-synchronized nextNetworkRequestId()I
    .locals 2

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 920
    :try_start_0
    iget v0, p0, Lcom/android/server/ConnectivityService;->mNextNetworkRequestId:I

    #@3
    add-int/lit8 v1, v0, 0x1

    #@5
    iput v1, p0, Lcom/android/server/ConnectivityService;->mNextNetworkRequestId:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@7
    monitor-exit p0

    #@8
    return v0

    #@9
    :catchall_0
    move-exception v0

    #@a
    monitor-exit p0

    #@b
    throw v0
.end method

.method private notifyIfacesChangedForNetworkStats()V
    .locals 2

    #@0
    .prologue
    .line 5409
    :try_start_0
    iget-object v1, p0, Lcom/android/server/ConnectivityService;->mStatsService:Landroid/net/INetworkStatsService;

    #@2
    invoke-interface {v1}, Landroid/net/INetworkStatsService;->forceUpdateIfaces()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    #@5
    .line 5407
    :goto_0
    return-void

    #@6
    .line 5410
    :catch_0
    move-exception v0

    #@7
    .local v0, "ignored":Ljava/lang/Exception;
    goto :goto_0
.end method

.method private notifyLockdownVpn(Lcom/android/server/connectivity/NetworkAgentInfo;)V
    .locals 2
    .param p1, "nai"    # Lcom/android/server/connectivity/NetworkAgentInfo;

    #@0
    .prologue
    .line 5176
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mLockdownTracker:Lcom/android/server/net/LockdownVpnTracker;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 5177
    if-eqz p1, :cond_1

    #@6
    invoke-virtual {p1}, Lcom/android/server/connectivity/NetworkAgentInfo;->isVPN()Z

    #@9
    move-result v0

    #@a
    if-eqz v0, :cond_1

    #@c
    .line 5178
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mLockdownTracker:Lcom/android/server/net/LockdownVpnTracker;

    #@e
    iget-object v1, p1, Lcom/android/server/connectivity/NetworkAgentInfo;->networkInfo:Landroid/net/NetworkInfo;

    #@10
    invoke-virtual {v0, v1}, Lcom/android/server/net/LockdownVpnTracker;->onVpnStateChanged(Landroid/net/NetworkInfo;)V

    #@13
    .line 5175
    :cond_0
    :goto_0
    return-void

    #@14
    .line 5180
    :cond_1
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mLockdownTracker:Lcom/android/server/net/LockdownVpnTracker;

    #@16
    invoke-virtual {v0}, Lcom/android/server/net/LockdownVpnTracker;->onNetworkInfoChanged()V

    #@19
    goto :goto_0
.end method

.method private notifyTypeToName(I)Ljava/lang/String;
    .locals 1
    .param p1, "notifyType"    # I

    #@0
    .prologue
    .line 5390
    packed-switch p1, :pswitch_data_0

    #@3
    .line 5400
    const-string/jumbo v0, "UNKNOWN"

    #@6
    return-object v0

    #@7
    .line 5391
    :pswitch_0
    const-string/jumbo v0, "PRECHECK"

    #@a
    return-object v0

    #@b
    .line 5392
    :pswitch_1
    const-string/jumbo v0, "AVAILABLE"

    #@e
    return-object v0

    #@f
    .line 5393
    :pswitch_2
    const-string/jumbo v0, "LOSING"

    #@12
    return-object v0

    #@13
    .line 5394
    :pswitch_3
    const-string/jumbo v0, "LOST"

    #@16
    return-object v0

    #@17
    .line 5395
    :pswitch_4
    const-string/jumbo v0, "UNAVAILABLE"

    #@1a
    return-object v0

    #@1b
    .line 5396
    :pswitch_5
    const-string/jumbo v0, "CAP_CHANGED"

    #@1e
    return-object v0

    #@1f
    .line 5397
    :pswitch_6
    const-string/jumbo v0, "IP_CHANGED"

    #@22
    return-object v0

    #@23
    .line 5398
    :pswitch_7
    const-string/jumbo v0, "RELEASED"

    #@26
    return-object v0

    #@27
    .line 5390
    nop

    #@28
    :pswitch_data_0
    .packed-switch 0x80001
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method

.method private onUserAdded(I)V
    .locals 5
    .param p1, "userId"    # I

    #@0
    .prologue
    .line 3933
    iget-object v4, p0, Lcom/android/server/ConnectivityService;->mVpns:Landroid/util/SparseArray;

    #@2
    monitor-enter v4

    #@3
    .line 3934
    :try_start_0
    iget-object v3, p0, Lcom/android/server/ConnectivityService;->mVpns:Landroid/util/SparseArray;

    #@5
    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    #@8
    move-result v2

    #@9
    .line 3935
    .local v2, "vpnsSize":I
    const/4 v0, 0x0

    #@a
    .local v0, "i":I
    :goto_0
    if-ge v0, v2, :cond_0

    #@c
    .line 3936
    iget-object v3, p0, Lcom/android/server/ConnectivityService;->mVpns:Landroid/util/SparseArray;

    #@e
    invoke-virtual {v3, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    #@11
    move-result-object v1

    #@12
    check-cast v1, Lcom/android/server/connectivity/Vpn;

    #@14
    .line 3937
    .local v1, "vpn":Lcom/android/server/connectivity/Vpn;
    invoke-virtual {v1, p1}, Lcom/android/server/connectivity/Vpn;->onUserAdded(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@17
    .line 3935
    add-int/lit8 v0, v0, 0x1

    #@19
    goto :goto_0

    #@1a
    .end local v1    # "vpn":Lcom/android/server/connectivity/Vpn;
    :cond_0
    monitor-exit v4

    #@1b
    .line 3932
    return-void

    #@1c
    .line 3933
    .end local v0    # "i":I
    .end local v2    # "vpnsSize":I
    :catchall_0
    move-exception v3

    #@1d
    monitor-exit v4

    #@1e
    throw v3
.end method

.method private onUserRemoved(I)V
    .locals 5
    .param p1, "userId"    # I

    #@0
    .prologue
    .line 3943
    iget-object v4, p0, Lcom/android/server/ConnectivityService;->mVpns:Landroid/util/SparseArray;

    #@2
    monitor-enter v4

    #@3
    .line 3944
    :try_start_0
    iget-object v3, p0, Lcom/android/server/ConnectivityService;->mVpns:Landroid/util/SparseArray;

    #@5
    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    #@8
    move-result v2

    #@9
    .line 3945
    .local v2, "vpnsSize":I
    const/4 v0, 0x0

    #@a
    .local v0, "i":I
    :goto_0
    if-ge v0, v2, :cond_0

    #@c
    .line 3946
    iget-object v3, p0, Lcom/android/server/ConnectivityService;->mVpns:Landroid/util/SparseArray;

    #@e
    invoke-virtual {v3, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    #@11
    move-result-object v1

    #@12
    check-cast v1, Lcom/android/server/connectivity/Vpn;

    #@14
    .line 3947
    .local v1, "vpn":Lcom/android/server/connectivity/Vpn;
    invoke-virtual {v1, p1}, Lcom/android/server/connectivity/Vpn;->onUserRemoved(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@17
    .line 3945
    add-int/lit8 v0, v0, 0x1

    #@19
    goto :goto_0

    #@1a
    .end local v1    # "vpn":Lcom/android/server/connectivity/Vpn;
    :cond_0
    monitor-exit v4

    #@1b
    .line 3942
    return-void

    #@1c
    .line 3943
    .end local v0    # "i":I
    .end local v2    # "vpnsSize":I
    :catchall_0
    move-exception v3

    #@1d
    monitor-exit v4

    #@1e
    throw v3
.end method

.method private onUserStart(I)V
    .locals 8
    .param p1, "userId"    # I

    #@0
    .prologue
    .line 3897
    iget-object v5, p0, Lcom/android/server/ConnectivityService;->mVpns:Landroid/util/SparseArray;

    #@2
    monitor-enter v5

    #@3
    .line 3898
    :try_start_0
    iget-object v4, p0, Lcom/android/server/ConnectivityService;->mVpns:Landroid/util/SparseArray;

    #@5
    invoke-virtual {v4, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    #@8
    move-result-object v3

    #@9
    check-cast v3, Lcom/android/server/connectivity/Vpn;

    #@b
    .line 3899
    .local v3, "userVpn":Lcom/android/server/connectivity/Vpn;
    if-eqz v3, :cond_0

    #@d
    .line 3900
    const-string/jumbo v4, "Starting user already has a VPN"

    #@10
    invoke-static {v4}, Lcom/android/server/ConnectivityService;->loge(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@13
    monitor-exit v5

    #@14
    .line 3901
    return-void

    #@15
    .line 3903
    :cond_0
    :try_start_1
    new-instance v3, Lcom/android/server/connectivity/Vpn;

    #@17
    .end local v3    # "userVpn":Lcom/android/server/connectivity/Vpn;
    iget-object v4, p0, Lcom/android/server/ConnectivityService;->mHandler:Lcom/android/server/ConnectivityService$InternalHandler;

    #@19
    invoke-virtual {v4}, Lcom/android/server/ConnectivityService$InternalHandler;->getLooper()Landroid/os/Looper;

    #@1c
    move-result-object v4

    #@1d
    iget-object v6, p0, Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;

    #@1f
    iget-object v7, p0, Lcom/android/server/ConnectivityService;->mNetd:Landroid/os/INetworkManagementService;

    #@21
    invoke-direct {v3, v4, v6, v7, p1}, Lcom/android/server/connectivity/Vpn;-><init>(Landroid/os/Looper;Landroid/content/Context;Landroid/os/INetworkManagementService;I)V

    #@24
    .line 3904
    .restart local v3    # "userVpn":Lcom/android/server/connectivity/Vpn;
    iget-object v4, p0, Lcom/android/server/ConnectivityService;->mVpns:Landroid/util/SparseArray;

    #@26
    invoke-virtual {v4, p1, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    #@29
    .line 3906
    iget-object v4, p0, Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;

    #@2b
    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    #@2e
    move-result-object v2

    #@2f
    .line 3908
    .local v2, "cr":Landroid/content/ContentResolver;
    const-string/jumbo v4, "always_on_vpn_app"

    #@32
    .line 3907
    invoke-static {v2, v4, p1}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    #@35
    move-result-object v1

    #@36
    .line 3910
    .local v1, "alwaysOnPackage":Ljava/lang/String;
    const-string/jumbo v4, "always_on_vpn_lockdown"

    #@39
    const/4 v6, 0x0

    #@3a
    .line 3909
    invoke-static {v2, v4, v6, p1}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    #@3d
    move-result v4

    #@3e
    if-eqz v4, :cond_3

    #@40
    const/4 v0, 0x1

    #@41
    .line 3911
    .local v0, "alwaysOnLockdown":Z
    :goto_0
    if-eqz v1, :cond_1

    #@43
    .line 3912
    invoke-virtual {v3, v1, v0}, Lcom/android/server/connectivity/Vpn;->setAlwaysOnPackage(Ljava/lang/String;Z)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@46
    :cond_1
    monitor-exit v5

    #@47
    .line 3915
    iget-object v4, p0, Lcom/android/server/ConnectivityService;->mUserManager:Landroid/os/UserManager;

    #@49
    invoke-virtual {v4, p1}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    #@4c
    move-result-object v4

    #@4d
    invoke-virtual {v4}, Landroid/content/pm/UserInfo;->isPrimary()Z

    #@50
    move-result v4

    #@51
    if-eqz v4, :cond_2

    #@53
    invoke-static {}, Lcom/android/server/net/LockdownVpnTracker;->isEnabled()Z

    #@56
    move-result v4

    #@57
    if-eqz v4, :cond_2

    #@59
    .line 3916
    invoke-virtual {p0}, Lcom/android/server/ConnectivityService;->updateLockdownVpn()Z

    #@5c
    .line 3896
    :cond_2
    return-void

    #@5d
    .line 3909
    .end local v0    # "alwaysOnLockdown":Z
    :cond_3
    const/4 v0, 0x0

    #@5e
    .restart local v0    # "alwaysOnLockdown":Z
    goto :goto_0

    #@5f
    .line 3897
    .end local v0    # "alwaysOnLockdown":Z
    .end local v1    # "alwaysOnPackage":Ljava/lang/String;
    .end local v2    # "cr":Landroid/content/ContentResolver;
    .end local v3    # "userVpn":Lcom/android/server/connectivity/Vpn;
    :catchall_0
    move-exception v4

    #@60
    monitor-exit v5

    #@61
    throw v4
.end method

.method private onUserStop(I)V
    .locals 3
    .param p1, "userId"    # I

    #@0
    .prologue
    .line 3921
    iget-object v2, p0, Lcom/android/server/ConnectivityService;->mVpns:Landroid/util/SparseArray;

    #@2
    monitor-enter v2

    #@3
    .line 3922
    :try_start_0
    iget-object v1, p0, Lcom/android/server/ConnectivityService;->mVpns:Landroid/util/SparseArray;

    #@5
    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    #@8
    move-result-object v0

    #@9
    check-cast v0, Lcom/android/server/connectivity/Vpn;

    #@b
    .line 3923
    .local v0, "userVpn":Lcom/android/server/connectivity/Vpn;
    if-nez v0, :cond_0

    #@d
    .line 3924
    const-string/jumbo v1, "Stopped user has no VPN"

    #@10
    invoke-static {v1}, Lcom/android/server/ConnectivityService;->loge(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@13
    monitor-exit v2

    #@14
    .line 3925
    return-void

    #@15
    .line 3927
    :cond_0
    :try_start_1
    invoke-virtual {v0}, Lcom/android/server/connectivity/Vpn;->onUserStopped()V

    #@18
    .line 3928
    iget-object v1, p0, Lcom/android/server/ConnectivityService;->mVpns:Landroid/util/SparseArray;

    #@1a
    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->delete(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@1d
    monitor-exit v2

    #@1e
    .line 3920
    return-void

    #@1f
    .line 3921
    .end local v0    # "userVpn":Lcom/android/server/connectivity/Vpn;
    :catchall_0
    move-exception v1

    #@20
    monitor-exit v2

    #@21
    throw v1
.end method

.method private onUserUnlocked(I)V
    .locals 1
    .param p1, "userId"    # I

    #@0
    .prologue
    .line 3954
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mUserManager:Landroid/os/UserManager;

    #@2
    invoke-virtual {v0, p1}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    #@5
    move-result-object v0

    #@6
    invoke-virtual {v0}, Landroid/content/pm/UserInfo;->isPrimary()Z

    #@9
    move-result v0

    #@a
    if-eqz v0, :cond_0

    #@c
    invoke-static {}, Lcom/android/server/net/LockdownVpnTracker;->isEnabled()Z

    #@f
    move-result v0

    #@10
    if-eqz v0, :cond_0

    #@12
    .line 3955
    invoke-virtual {p0}, Lcom/android/server/ConnectivityService;->updateLockdownVpn()Z

    #@15
    .line 3952
    :goto_0
    return-void

    #@16
    .line 3957
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/server/ConnectivityService;->startAlwaysOnVpn(I)Z

    #@19
    goto :goto_0
.end method

.method private processListenRequests(Lcom/android/server/connectivity/NetworkAgentInfo;Z)V
    .locals 5
    .param p1, "nai"    # Lcom/android/server/connectivity/NetworkAgentInfo;
    .param p2, "capabilitiesChanged"    # Z

    #@0
    .prologue
    .line 4823
    iget-object v3, p0, Lcom/android/server/ConnectivityService;->mNetworkRequests:Ljava/util/HashMap;

    #@2
    invoke-virtual {v3}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    #@5
    move-result-object v3

    #@6
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@9
    move-result-object v2

    #@a
    .local v2, "nri$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    #@d
    move-result v3

    #@e
    if-eqz v3, :cond_1

    #@10
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@13
    move-result-object v1

    #@14
    check-cast v1, Lcom/android/server/ConnectivityService$NetworkRequestInfo;

    #@16
    .line 4824
    .local v1, "nri":Lcom/android/server/ConnectivityService$NetworkRequestInfo;
    iget-object v0, v1, Lcom/android/server/ConnectivityService$NetworkRequestInfo;->request:Landroid/net/NetworkRequest;

    #@18
    .line 4825
    .local v0, "nr":Landroid/net/NetworkRequest;
    invoke-virtual {v0}, Landroid/net/NetworkRequest;->isListen()Z

    #@1b
    move-result v3

    #@1c
    if-eqz v3, :cond_0

    #@1e
    .line 4826
    iget v3, v0, Landroid/net/NetworkRequest;->requestId:I

    #@20
    invoke-virtual {p1, v3}, Lcom/android/server/connectivity/NetworkAgentInfo;->isSatisfyingRequest(I)Z

    #@23
    move-result v3

    #@24
    if-eqz v3, :cond_0

    #@26
    invoke-virtual {p1, v0}, Lcom/android/server/connectivity/NetworkAgentInfo;->satisfies(Landroid/net/NetworkRequest;)Z

    #@29
    move-result v3

    #@2a
    if-nez v3, :cond_0

    #@2c
    .line 4827
    iget-object v3, v1, Lcom/android/server/ConnectivityService$NetworkRequestInfo;->request:Landroid/net/NetworkRequest;

    #@2e
    iget v3, v3, Landroid/net/NetworkRequest;->requestId:I

    #@30
    invoke-virtual {p1, v3}, Lcom/android/server/connectivity/NetworkAgentInfo;->removeRequest(I)V

    #@33
    .line 4828
    const v3, 0x80004

    #@36
    const/4 v4, 0x0

    #@37
    invoke-direct {p0, v1, p1, v3, v4}, Lcom/android/server/ConnectivityService;->callCallbackForRequest(Lcom/android/server/ConnectivityService$NetworkRequestInfo;Lcom/android/server/connectivity/NetworkAgentInfo;II)V

    #@3a
    goto :goto_0

    #@3b
    .line 4832
    .end local v0    # "nr":Landroid/net/NetworkRequest;
    .end local v1    # "nri":Lcom/android/server/ConnectivityService$NetworkRequestInfo;
    :cond_1
    if-eqz p2, :cond_2

    #@3d
    .line 4833
    const v3, 0x80006

    #@40
    invoke-virtual {p0, p1, v3}, Lcom/android/server/ConnectivityService;->notifyNetworkCallbacks(Lcom/android/server/connectivity/NetworkAgentInfo;I)V

    #@43
    .line 4836
    :cond_2
    iget-object v3, p0, Lcom/android/server/ConnectivityService;->mNetworkRequests:Ljava/util/HashMap;

    #@45
    invoke-virtual {v3}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    #@48
    move-result-object v3

    #@49
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@4c
    move-result-object v2

    #@4d
    :cond_3
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    #@50
    move-result v3

    #@51
    if-eqz v3, :cond_4

    #@53
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@56
    move-result-object v1

    #@57
    check-cast v1, Lcom/android/server/ConnectivityService$NetworkRequestInfo;

    #@59
    .line 4837
    .restart local v1    # "nri":Lcom/android/server/ConnectivityService$NetworkRequestInfo;
    iget-object v0, v1, Lcom/android/server/ConnectivityService$NetworkRequestInfo;->request:Landroid/net/NetworkRequest;

    #@5b
    .line 4838
    .restart local v0    # "nr":Landroid/net/NetworkRequest;
    invoke-virtual {v0}, Landroid/net/NetworkRequest;->isListen()Z

    #@5e
    move-result v3

    #@5f
    if-eqz v3, :cond_3

    #@61
    .line 4839
    invoke-virtual {p1, v0}, Lcom/android/server/connectivity/NetworkAgentInfo;->satisfies(Landroid/net/NetworkRequest;)Z

    #@64
    move-result v3

    #@65
    if-eqz v3, :cond_3

    #@67
    iget v3, v0, Landroid/net/NetworkRequest;->requestId:I

    #@69
    invoke-virtual {p1, v3}, Lcom/android/server/connectivity/NetworkAgentInfo;->isSatisfyingRequest(I)Z

    #@6c
    move-result v3

    #@6d
    if-nez v3, :cond_3

    #@6f
    .line 4840
    invoke-virtual {p1, v0}, Lcom/android/server/connectivity/NetworkAgentInfo;->addRequest(Landroid/net/NetworkRequest;)Z

    #@72
    .line 4841
    invoke-virtual {p0, p1, v1}, Lcom/android/server/ConnectivityService;->notifyNetworkCallback(Lcom/android/server/connectivity/NetworkAgentInfo;Lcom/android/server/ConnectivityService$NetworkRequestInfo;)V

    #@75
    goto :goto_1

    #@76
    .line 4821
    .end local v0    # "nr":Landroid/net/NetworkRequest;
    .end local v1    # "nri":Lcom/android/server/ConnectivityService$NetworkRequestInfo;
    :cond_4
    return-void
.end method

.method private proxyInfoEqual(Landroid/net/ProxyInfo;Landroid/net/ProxyInfo;)Z
    .locals 2
    .param p1, "a"    # Landroid/net/ProxyInfo;
    .param p2, "b"    # Landroid/net/ProxyInfo;

    #@0
    .prologue
    .line 3236
    invoke-direct {p0, p1}, Lcom/android/server/ConnectivityService;->canonicalizeProxyInfo(Landroid/net/ProxyInfo;)Landroid/net/ProxyInfo;

    #@3
    move-result-object p1

    #@4
    .line 3237
    invoke-direct {p0, p2}, Lcom/android/server/ConnectivityService;->canonicalizeProxyInfo(Landroid/net/ProxyInfo;)Landroid/net/ProxyInfo;

    #@7
    move-result-object p2

    #@8
    .line 3240
    invoke-static {p1, p2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    #@b
    move-result v0

    #@c
    if-eqz v0, :cond_1

    #@e
    if-eqz p1, :cond_0

    #@10
    invoke-virtual {p1}, Landroid/net/ProxyInfo;->getHost()Ljava/lang/String;

    #@13
    move-result-object v0

    #@14
    invoke-virtual {p2}, Landroid/net/ProxyInfo;->getHost()Ljava/lang/String;

    #@17
    move-result-object v1

    #@18
    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    #@1b
    move-result v0

    #@1c
    :goto_0
    return v0

    #@1d
    :cond_0
    const/4 v0, 0x1

    #@1e
    goto :goto_0

    #@1f
    :cond_1
    const/4 v0, 0x0

    #@20
    goto :goto_0
.end method

.method private registerSettingsCallbacks()V
    .locals 3

    #@0
    .prologue
    .line 909
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mSettingsObserver:Lcom/android/server/ConnectivityService$SettingsObserver;

    #@2
    .line 910
    const-string/jumbo v1, "http_proxy"

    #@5
    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    #@8
    move-result-object v1

    #@9
    .line 911
    const/16 v2, 0x9

    #@b
    .line 909
    invoke-virtual {v0, v1, v2}, Lcom/android/server/ConnectivityService$SettingsObserver;->observe(Landroid/net/Uri;I)V

    #@e
    .line 914
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mSettingsObserver:Lcom/android/server/ConnectivityService$SettingsObserver;

    #@10
    .line 915
    const-string/jumbo v1, "mobile_data_always_on"

    #@13
    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    #@16
    move-result-object v1

    #@17
    .line 916
    const/16 v2, 0x1e

    #@19
    .line 914
    invoke-virtual {v0, v1, v2}, Lcom/android/server/ConnectivityService$SettingsObserver;->observe(Landroid/net/Uri;I)V

    #@1c
    .line 907
    return-void
.end method

.method private releasePendingNetworkRequestWithDelay(Landroid/app/PendingIntent;)V
    .locals 5
    .param p1, "operation"    # Landroid/app/PendingIntent;

    #@0
    .prologue
    .line 4236
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mHandler:Lcom/android/server/ConnectivityService$InternalHandler;

    #@2
    .line 4237
    iget-object v1, p0, Lcom/android/server/ConnectivityService;->mHandler:Lcom/android/server/ConnectivityService$InternalHandler;

    #@4
    .line 4238
    invoke-static {}, Lcom/android/server/ConnectivityService;->getCallingUid()I

    #@7
    move-result v2

    #@8
    .line 4237
    const/16 v3, 0x1b

    #@a
    .line 4238
    const/4 v4, 0x0

    #@b
    .line 4237
    invoke-virtual {v1, v3, v2, v4, p1}, Lcom/android/server/ConnectivityService$InternalHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    #@e
    move-result-object v1

    #@f
    .line 4238
    iget v2, p0, Lcom/android/server/ConnectivityService;->mReleasePendingIntentDelayMs:I

    #@11
    int-to-long v2, v2

    #@12
    .line 4236
    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/ConnectivityService$InternalHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    #@15
    .line 4235
    return-void
.end method

.method private rematchAllNetworksAndRequests(Lcom/android/server/connectivity/NetworkAgentInfo;I)V
    .locals 7
    .param p1, "changed"    # Lcom/android/server/connectivity/NetworkAgentInfo;
    .param p2, "oldScore"    # I

    #@0
    .prologue
    .line 5138
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    #@3
    move-result-wide v2

    #@4
    .line 5139
    .local v2, "now":J
    if-eqz p1, :cond_1

    #@6
    invoke-virtual {p1}, Lcom/android/server/connectivity/NetworkAgentInfo;->getCurrentScore()I

    #@9
    move-result v4

    #@a
    if-ge p2, v4, :cond_1

    #@c
    .line 5140
    sget-object v4, Lcom/android/server/ConnectivityService$ReapUnvalidatedNetworks;->REAP:Lcom/android/server/ConnectivityService$ReapUnvalidatedNetworks;

    #@e
    invoke-direct {p0, p1, v4, v2, v3}, Lcom/android/server/ConnectivityService;->rematchNetworkAndRequests(Lcom/android/server/connectivity/NetworkAgentInfo;Lcom/android/server/ConnectivityService$ReapUnvalidatedNetworks;J)V

    #@11
    .line 5129
    :cond_0
    return-void

    #@12
    .line 5142
    :cond_1
    iget-object v4, p0, Lcom/android/server/ConnectivityService;->mNetworkAgentInfos:Ljava/util/HashMap;

    #@14
    invoke-virtual {v4}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    #@17
    move-result-object v4

    #@18
    .line 5143
    iget-object v5, p0, Lcom/android/server/ConnectivityService;->mNetworkAgentInfos:Ljava/util/HashMap;

    #@1a
    invoke-virtual {v5}, Ljava/util/HashMap;->size()I

    #@1d
    move-result v5

    #@1e
    new-array v5, v5, [Lcom/android/server/connectivity/NetworkAgentInfo;

    #@20
    .line 5142
    invoke-interface {v4, v5}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    #@23
    move-result-object v1

    #@24
    check-cast v1, [Lcom/android/server/connectivity/NetworkAgentInfo;

    #@26
    .line 5147
    .local v1, "nais":[Lcom/android/server/connectivity/NetworkAgentInfo;
    invoke-static {v1}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    #@29
    .line 5148
    const/4 v4, 0x0

    #@2a
    array-length v6, v1

    #@2b
    move v5, v4

    #@2c
    :goto_0
    if-ge v5, v6, :cond_0

    #@2e
    aget-object v0, v1, v5

    #@30
    .line 5153
    .local v0, "nai":Lcom/android/server/connectivity/NetworkAgentInfo;
    array-length v4, v1

    #@31
    add-int/lit8 v4, v4, -0x1

    #@33
    aget-object v4, v1, v4

    #@35
    if-eq v0, v4, :cond_2

    #@37
    sget-object v4, Lcom/android/server/ConnectivityService$ReapUnvalidatedNetworks;->DONT_REAP:Lcom/android/server/ConnectivityService$ReapUnvalidatedNetworks;

    #@39
    .line 5149
    :goto_1
    invoke-direct {p0, v0, v4, v2, v3}, Lcom/android/server/ConnectivityService;->rematchNetworkAndRequests(Lcom/android/server/connectivity/NetworkAgentInfo;Lcom/android/server/ConnectivityService$ReapUnvalidatedNetworks;J)V

    #@3c
    .line 5148
    add-int/lit8 v4, v5, 0x1

    #@3e
    move v5, v4

    #@3f
    goto :goto_0

    #@40
    .line 5154
    :cond_2
    sget-object v4, Lcom/android/server/ConnectivityService$ReapUnvalidatedNetworks;->REAP:Lcom/android/server/ConnectivityService$ReapUnvalidatedNetworks;

    #@42
    goto :goto_1
.end method

.method private rematchForAvoidBadWifiUpdate()V
    .locals 4

    #@0
    .prologue
    .line 2781
    const/4 v2, 0x0

    #@1
    const/4 v3, 0x0

    #@2
    invoke-direct {p0, v2, v3}, Lcom/android/server/ConnectivityService;->rematchAllNetworksAndRequests(Lcom/android/server/connectivity/NetworkAgentInfo;I)V

    #@5
    .line 2782
    iget-object v2, p0, Lcom/android/server/ConnectivityService;->mNetworkAgentInfos:Ljava/util/HashMap;

    #@7
    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    #@a
    move-result-object v2

    #@b
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@e
    move-result-object v1

    #@f
    .local v1, "nai$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@12
    move-result v2

    #@13
    if-eqz v2, :cond_1

    #@15
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@18
    move-result-object v0

    #@19
    check-cast v0, Lcom/android/server/connectivity/NetworkAgentInfo;

    #@1b
    .line 2783
    .local v0, "nai":Lcom/android/server/connectivity/NetworkAgentInfo;
    iget-object v2, v0, Lcom/android/server/connectivity/NetworkAgentInfo;->networkCapabilities:Landroid/net/NetworkCapabilities;

    #@1d
    const/4 v3, 0x1

    #@1e
    invoke-virtual {v2, v3}, Landroid/net/NetworkCapabilities;->hasTransport(I)Z

    #@21
    move-result v2

    #@22
    if-eqz v2, :cond_0

    #@24
    .line 2784
    invoke-direct {p0, v0}, Lcom/android/server/ConnectivityService;->sendUpdatedScoreToFactories(Lcom/android/server/connectivity/NetworkAgentInfo;)V

    #@27
    goto :goto_0

    #@28
    .line 2780
    .end local v0    # "nai":Lcom/android/server/connectivity/NetworkAgentInfo;
    :cond_1
    return-void
.end method

.method private rematchNetworkAndRequests(Lcom/android/server/connectivity/NetworkAgentInfo;Lcom/android/server/ConnectivityService$ReapUnvalidatedNetworks;J)V
    .locals 33
    .param p1, "newNetwork"    # Lcom/android/server/connectivity/NetworkAgentInfo;
    .param p2, "reapUnvalidatedNetworks"    # Lcom/android/server/ConnectivityService$ReapUnvalidatedNetworks;
    .param p3, "now"    # J

    #@0
    .prologue
    .line 4875
    move-object/from16 v0, p1

    #@2
    iget-boolean v5, v0, Lcom/android/server/connectivity/NetworkAgentInfo;->everConnected:Z

    #@4
    if-nez v5, :cond_0

    #@6
    return-void

    #@7
    .line 4876
    :cond_0
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/connectivity/NetworkAgentInfo;->isVPN()Z

    #@a
    move-result v17

    #@b
    .line 4877
    .local v17, "keep":Z
    const/16 v16, 0x0

    #@d
    .line 4878
    .local v16, "isNewDefault":Z
    const/16 v24, 0x0

    #@f
    .line 4880
    .local v24, "oldDefaultNetwork":Lcom/android/server/connectivity/NetworkAgentInfo;
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/connectivity/NetworkAgentInfo;->isBackgroundNetwork()Z

    #@12
    move-result v31

    #@13
    .line 4881
    .local v31, "wasBackgroundNetwork":Z
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/connectivity/NetworkAgentInfo;->getCurrentScore()I

    #@16
    move-result v26

    #@17
    .line 4887
    .local v26, "score":I
    new-instance v11, Ljava/util/ArrayList;

    #@19
    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    #@1c
    .line 4888
    .local v11, "affectedNetworks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/connectivity/NetworkAgentInfo;>;"
    new-instance v10, Ljava/util/ArrayList;

    #@1e
    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    #@21
    .line 4889
    .local v10, "addedRequests":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/ConnectivityService$NetworkRequestInfo;>;"
    move-object/from16 v0, p1

    #@23
    iget-object v0, v0, Lcom/android/server/connectivity/NetworkAgentInfo;->networkCapabilities:Landroid/net/NetworkCapabilities;

    #@25
    move-object/from16 v20, v0

    #@27
    .line 4891
    .local v20, "nc":Landroid/net/NetworkCapabilities;
    move-object/from16 v0, p0

    #@29
    iget-object v5, v0, Lcom/android/server/ConnectivityService;->mNetworkRequests:Ljava/util/HashMap;

    #@2b
    invoke-virtual {v5}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    #@2e
    move-result-object v5

    #@2f
    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@32
    move-result-object v23

    #@33
    .end local v17    # "keep":Z
    .end local v24    # "oldDefaultNetwork":Lcom/android/server/connectivity/NetworkAgentInfo;
    .local v23, "nri$iterator":Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface/range {v23 .. v23}, Ljava/util/Iterator;->hasNext()Z

    #@36
    move-result v5

    #@37
    if-eqz v5, :cond_8

    #@39
    invoke-interface/range {v23 .. v23}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@3c
    move-result-object v22

    #@3d
    check-cast v22, Lcom/android/server/ConnectivityService$NetworkRequestInfo;

    #@3f
    .line 4896
    .local v22, "nri":Lcom/android/server/ConnectivityService$NetworkRequestInfo;
    move-object/from16 v0, v22

    #@41
    iget-object v5, v0, Lcom/android/server/ConnectivityService$NetworkRequestInfo;->request:Landroid/net/NetworkRequest;

    #@43
    invoke-virtual {v5}, Landroid/net/NetworkRequest;->isListen()Z

    #@46
    move-result v5

    #@47
    if-nez v5, :cond_1

    #@49
    .line 4898
    move-object/from16 v0, p0

    #@4b
    iget-object v5, v0, Lcom/android/server/ConnectivityService;->mNetworkForRequestId:Landroid/util/SparseArray;

    #@4d
    move-object/from16 v0, v22

    #@4f
    iget-object v6, v0, Lcom/android/server/ConnectivityService$NetworkRequestInfo;->request:Landroid/net/NetworkRequest;

    #@51
    iget v6, v6, Landroid/net/NetworkRequest;->requestId:I

    #@53
    invoke-virtual {v5, v6}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    #@56
    move-result-object v4

    #@57
    check-cast v4, Lcom/android/server/connectivity/NetworkAgentInfo;

    #@59
    .line 4899
    .local v4, "currentNetwork":Lcom/android/server/connectivity/NetworkAgentInfo;
    move-object/from16 v0, v22

    #@5b
    iget-object v5, v0, Lcom/android/server/ConnectivityService$NetworkRequestInfo;->request:Landroid/net/NetworkRequest;

    #@5d
    move-object/from16 v0, p1

    #@5f
    invoke-virtual {v0, v5}, Lcom/android/server/connectivity/NetworkAgentInfo;->satisfies(Landroid/net/NetworkRequest;)Z

    #@62
    move-result v25

    #@63
    .line 4900
    .local v25, "satisfies":Z
    move-object/from16 v0, p1

    #@65
    if-ne v0, v4, :cond_2

    #@67
    if-eqz v25, :cond_2

    #@69
    .line 4905
    const/16 v17, 0x1

    #@6b
    .line 4906
    .local v17, "keep":Z
    goto :goto_0

    #@6c
    .line 4911
    .end local v17    # "keep":Z
    :cond_2
    if-eqz v25, :cond_6

    #@6e
    .line 4919
    if-eqz v4, :cond_3

    #@70
    invoke-virtual {v4}, Lcom/android/server/connectivity/NetworkAgentInfo;->getCurrentScore()I

    #@73
    move-result v5

    #@74
    move/from16 v0, v26

    #@76
    if-ge v5, v0, :cond_1

    #@78
    .line 4921
    :cond_3
    if-eqz v4, :cond_4

    #@7a
    .line 4923
    move-object/from16 v0, v22

    #@7c
    iget-object v5, v0, Lcom/android/server/ConnectivityService$NetworkRequestInfo;->request:Landroid/net/NetworkRequest;

    #@7e
    iget v5, v5, Landroid/net/NetworkRequest;->requestId:I

    #@80
    invoke-virtual {v4, v5}, Lcom/android/server/connectivity/NetworkAgentInfo;->removeRequest(I)V

    #@83
    .line 4924
    move-object/from16 v0, v22

    #@85
    iget-object v5, v0, Lcom/android/server/ConnectivityService$NetworkRequestInfo;->request:Landroid/net/NetworkRequest;

    #@87
    move-object/from16 v0, p0

    #@89
    iget v6, v0, Lcom/android/server/ConnectivityService;->mLingerDelayMs:I

    #@8b
    int-to-long v8, v6

    #@8c
    move-wide/from16 v6, p3

    #@8e
    invoke-virtual/range {v4 .. v9}, Lcom/android/server/connectivity/NetworkAgentInfo;->lingerRequest(Landroid/net/NetworkRequest;JJ)V

    #@91
    .line 4925
    invoke-virtual {v11, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@94
    .line 4929
    :cond_4
    move-object/from16 v0, v22

    #@96
    iget-object v5, v0, Lcom/android/server/ConnectivityService$NetworkRequestInfo;->request:Landroid/net/NetworkRequest;

    #@98
    move-object/from16 v0, p1

    #@9a
    invoke-virtual {v0, v5}, Lcom/android/server/connectivity/NetworkAgentInfo;->unlingerRequest(Landroid/net/NetworkRequest;)Z

    #@9d
    .line 4930
    move-object/from16 v0, p0

    #@9f
    iget-object v5, v0, Lcom/android/server/ConnectivityService;->mNetworkForRequestId:Landroid/util/SparseArray;

    #@a1
    move-object/from16 v0, v22

    #@a3
    iget-object v6, v0, Lcom/android/server/ConnectivityService$NetworkRequestInfo;->request:Landroid/net/NetworkRequest;

    #@a5
    iget v6, v6, Landroid/net/NetworkRequest;->requestId:I

    #@a7
    move-object/from16 v0, p1

    #@a9
    invoke-virtual {v5, v6, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    #@ac
    .line 4931
    move-object/from16 v0, v22

    #@ae
    iget-object v5, v0, Lcom/android/server/ConnectivityService$NetworkRequestInfo;->request:Landroid/net/NetworkRequest;

    #@b0
    move-object/from16 v0, p1

    #@b2
    invoke-virtual {v0, v5}, Lcom/android/server/connectivity/NetworkAgentInfo;->addRequest(Landroid/net/NetworkRequest;)Z

    #@b5
    move-result v5

    #@b6
    if-nez v5, :cond_5

    #@b8
    .line 4932
    sget-object v5, Lcom/android/server/ConnectivityService;->TAG:Ljava/lang/String;

    #@ba
    new-instance v6, Ljava/lang/StringBuilder;

    #@bc
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@bf
    const-string/jumbo v7, "BUG: "

    #@c2
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@c5
    move-result-object v6

    #@c6
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/connectivity/NetworkAgentInfo;->name()Ljava/lang/String;

    #@c9
    move-result-object v7

    #@ca
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@cd
    move-result-object v6

    #@ce
    const-string/jumbo v7, " already has "

    #@d1
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@d4
    move-result-object v6

    #@d5
    move-object/from16 v0, v22

    #@d7
    iget-object v7, v0, Lcom/android/server/ConnectivityService$NetworkRequestInfo;->request:Landroid/net/NetworkRequest;

    #@d9
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@dc
    move-result-object v6

    #@dd
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@e0
    move-result-object v6

    #@e1
    invoke-static {v5, v6}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    #@e4
    .line 4934
    :cond_5
    move-object/from16 v0, v22

    #@e6
    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@e9
    .line 4935
    const/16 v17, 0x1

    #@eb
    .line 4941
    .restart local v17    # "keep":Z
    move-object/from16 v0, v22

    #@ed
    iget-object v5, v0, Lcom/android/server/ConnectivityService$NetworkRequestInfo;->request:Landroid/net/NetworkRequest;

    #@ef
    move-object/from16 v0, p0

    #@f1
    move/from16 v1, v26

    #@f3
    invoke-direct {v0, v5, v1}, Lcom/android/server/ConnectivityService;->sendUpdatedScoreToFactories(Landroid/net/NetworkRequest;I)V

    #@f6
    .line 4942
    move-object/from16 v0, p0

    #@f8
    move-object/from16 v1, v22

    #@fa
    invoke-direct {v0, v1}, Lcom/android/server/ConnectivityService;->isDefaultRequest(Lcom/android/server/ConnectivityService$NetworkRequestInfo;)Z

    #@fd
    move-result v5

    #@fe
    if-eqz v5, :cond_1

    #@100
    .line 4943
    const/16 v16, 0x1

    #@102
    .line 4944
    move-object/from16 v24, v4

    #@104
    .line 4945
    .local v24, "oldDefaultNetwork":Lcom/android/server/connectivity/NetworkAgentInfo;
    if-eqz v4, :cond_1

    #@106
    .line 4946
    move-object/from16 v0, p0

    #@108
    iget-object v5, v0, Lcom/android/server/ConnectivityService;->mLingerMonitor:Lcom/android/server/connectivity/LingerMonitor;

    #@10a
    move-object/from16 v0, p1

    #@10c
    invoke-virtual {v5, v4, v0}, Lcom/android/server/connectivity/LingerMonitor;->noteLingerDefaultNetwork(Lcom/android/server/connectivity/NetworkAgentInfo;Lcom/android/server/connectivity/NetworkAgentInfo;)V

    #@10f
    goto/16 :goto_0

    #@111
    .line 4950
    .end local v17    # "keep":Z
    .end local v24    # "oldDefaultNetwork":Lcom/android/server/connectivity/NetworkAgentInfo;
    :cond_6
    move-object/from16 v0, v22

    #@113
    iget-object v5, v0, Lcom/android/server/ConnectivityService$NetworkRequestInfo;->request:Landroid/net/NetworkRequest;

    #@115
    iget v5, v5, Landroid/net/NetworkRequest;->requestId:I

    #@117
    move-object/from16 v0, p1

    #@119
    invoke-virtual {v0, v5}, Lcom/android/server/connectivity/NetworkAgentInfo;->isSatisfyingRequest(I)Z

    #@11c
    move-result v5

    #@11d
    if-eqz v5, :cond_1

    #@11f
    .line 4959
    new-instance v5, Ljava/lang/StringBuilder;

    #@121
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@124
    const-string/jumbo v6, "Network "

    #@127
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@12a
    move-result-object v5

    #@12b
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/connectivity/NetworkAgentInfo;->name()Ljava/lang/String;

    #@12e
    move-result-object v6

    #@12f
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@132
    move-result-object v5

    #@133
    const-string/jumbo v6, " stopped satisfying"

    #@136
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@139
    move-result-object v5

    #@13a
    .line 4960
    const-string/jumbo v6, " request "

    #@13d
    .line 4959
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@140
    move-result-object v5

    #@141
    .line 4960
    move-object/from16 v0, v22

    #@143
    iget-object v6, v0, Lcom/android/server/ConnectivityService$NetworkRequestInfo;->request:Landroid/net/NetworkRequest;

    #@145
    iget v6, v6, Landroid/net/NetworkRequest;->requestId:I

    #@147
    .line 4959
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@14a
    move-result-object v5

    #@14b
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@14e
    move-result-object v5

    #@14f
    invoke-static {v5}, Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V

    #@152
    .line 4962
    move-object/from16 v0, v22

    #@154
    iget-object v5, v0, Lcom/android/server/ConnectivityService$NetworkRequestInfo;->request:Landroid/net/NetworkRequest;

    #@156
    iget v5, v5, Landroid/net/NetworkRequest;->requestId:I

    #@158
    move-object/from16 v0, p1

    #@15a
    invoke-virtual {v0, v5}, Lcom/android/server/connectivity/NetworkAgentInfo;->removeRequest(I)V

    #@15d
    .line 4963
    move-object/from16 v0, p1

    #@15f
    if-ne v4, v0, :cond_7

    #@161
    .line 4964
    move-object/from16 v0, p0

    #@163
    iget-object v5, v0, Lcom/android/server/ConnectivityService;->mNetworkForRequestId:Landroid/util/SparseArray;

    #@165
    move-object/from16 v0, v22

    #@167
    iget-object v6, v0, Lcom/android/server/ConnectivityService$NetworkRequestInfo;->request:Landroid/net/NetworkRequest;

    #@169
    iget v6, v6, Landroid/net/NetworkRequest;->requestId:I

    #@16b
    invoke-virtual {v5, v6}, Landroid/util/SparseArray;->remove(I)V

    #@16e
    .line 4965
    move-object/from16 v0, v22

    #@170
    iget-object v5, v0, Lcom/android/server/ConnectivityService$NetworkRequestInfo;->request:Landroid/net/NetworkRequest;

    #@172
    const/4 v6, 0x0

    #@173
    move-object/from16 v0, p0

    #@175
    invoke-direct {v0, v5, v6}, Lcom/android/server/ConnectivityService;->sendUpdatedScoreToFactories(Landroid/net/NetworkRequest;I)V

    #@178
    .line 4978
    :goto_1
    const v5, 0x80004

    #@17b
    const/4 v6, 0x0

    #@17c
    move-object/from16 v0, p0

    #@17e
    move-object/from16 v1, v22

    #@180
    move-object/from16 v2, p1

    #@182
    invoke-direct {v0, v1, v2, v5, v6}, Lcom/android/server/ConnectivityService;->callCallbackForRequest(Lcom/android/server/ConnectivityService$NetworkRequestInfo;Lcom/android/server/connectivity/NetworkAgentInfo;II)V

    #@185
    goto/16 :goto_0

    #@187
    .line 4967
    :cond_7
    sget-object v5, Lcom/android/server/ConnectivityService;->TAG:Ljava/lang/String;

    #@189
    new-instance v6, Ljava/lang/StringBuilder;

    #@18b
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@18e
    const-string/jumbo v7, "BUG: Removing request "

    #@191
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@194
    move-result-object v6

    #@195
    move-object/from16 v0, v22

    #@197
    iget-object v7, v0, Lcom/android/server/ConnectivityService$NetworkRequestInfo;->request:Landroid/net/NetworkRequest;

    #@199
    iget v7, v7, Landroid/net/NetworkRequest;->requestId:I

    #@19b
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@19e
    move-result-object v6

    #@19f
    const-string/jumbo v7, " from "

    #@1a2
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1a5
    move-result-object v6

    #@1a6
    .line 4968
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/connectivity/NetworkAgentInfo;->name()Ljava/lang/String;

    #@1a9
    move-result-object v7

    #@1aa
    .line 4967
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1ad
    move-result-object v6

    #@1ae
    .line 4969
    const-string/jumbo v7, " without updating mNetworkForRequestId or factories!"

    #@1b1
    .line 4967
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1b4
    move-result-object v6

    #@1b5
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1b8
    move-result-object v6

    #@1b9
    invoke-static {v5, v6}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    #@1bc
    goto :goto_1

    #@1bd
    .line 4981
    .end local v4    # "currentNetwork":Lcom/android/server/connectivity/NetworkAgentInfo;
    .end local v22    # "nri":Lcom/android/server/ConnectivityService$NetworkRequestInfo;
    .end local v25    # "satisfies":Z
    :cond_8
    if-eqz v16, :cond_a

    #@1bf
    .line 4983
    invoke-direct/range {p0 .. p1}, Lcom/android/server/ConnectivityService;->makeDefault(Lcom/android/server/connectivity/NetworkAgentInfo;)V

    #@1c2
    .line 4985
    move-object/from16 v0, p0

    #@1c4
    move-object/from16 v1, p1

    #@1c6
    move-object/from16 v2, v24

    #@1c8
    invoke-direct {v0, v1, v2}, Lcom/android/server/ConnectivityService;->logDefaultNetworkEvent(Lcom/android/server/connectivity/NetworkAgentInfo;Lcom/android/server/connectivity/NetworkAgentInfo;)V

    #@1cb
    .line 4986
    monitor-enter p0

    #@1cc
    .line 4990
    :try_start_0
    move-object/from16 v0, p0

    #@1ce
    iget-object v5, v0, Lcom/android/server/ConnectivityService;->mNetTransitionWakeLock:Landroid/os/PowerManager$WakeLock;

    #@1d0
    invoke-virtual {v5}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    #@1d3
    move-result v5

    #@1d4
    if-eqz v5, :cond_9

    #@1d6
    .line 4991
    move-object/from16 v0, p0

    #@1d8
    iget-object v5, v0, Lcom/android/server/ConnectivityService;->mHandler:Lcom/android/server/ConnectivityService$InternalHandler;

    #@1da
    move-object/from16 v0, p0

    #@1dc
    iget-object v6, v0, Lcom/android/server/ConnectivityService;->mHandler:Lcom/android/server/ConnectivityService$InternalHandler;

    #@1de
    .line 4993
    move-object/from16 v0, p0

    #@1e0
    iget v7, v0, Lcom/android/server/ConnectivityService;->mNetTransitionWakeLockSerialNumber:I

    #@1e2
    .line 4992
    const/16 v8, 0x8

    #@1e4
    .line 4993
    const/4 v9, 0x0

    #@1e5
    .line 4991
    invoke-virtual {v6, v8, v7, v9}, Lcom/android/server/ConnectivityService$InternalHandler;->obtainMessage(III)Landroid/os/Message;

    #@1e8
    move-result-object v6

    #@1e9
    .line 4994
    const-wide/16 v8, 0x3e8

    #@1eb
    .line 4991
    invoke-virtual {v5, v6, v8, v9}, Lcom/android/server/ConnectivityService$InternalHandler;->sendMessageDelayed(Landroid/os/Message;J)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1ee
    :cond_9
    monitor-exit p0

    #@1ef
    .line 4999
    :cond_a
    move-object/from16 v0, p1

    #@1f1
    iget-object v5, v0, Lcom/android/server/connectivity/NetworkAgentInfo;->networkCapabilities:Landroid/net/NetworkCapabilities;

    #@1f3
    move-object/from16 v0, v20

    #@1f5
    invoke-virtual {v5, v0}, Landroid/net/NetworkCapabilities;->equalRequestableCapabilities(Landroid/net/NetworkCapabilities;)Z

    #@1f8
    move-result v5

    #@1f9
    if-nez v5, :cond_b

    #@1fb
    .line 5000
    sget-object v5, Lcom/android/server/ConnectivityService;->TAG:Ljava/lang/String;

    #@1fd
    .line 5001
    const-string/jumbo v6, "BUG: %s changed requestable capabilities during rematch: %s -> %s"

    #@200
    .line 5000
    const/4 v7, 0x2

    #@201
    new-array v7, v7, [Ljava/lang/Object;

    #@203
    .line 5002
    const/4 v8, 0x0

    #@204
    aput-object v20, v7, v8

    #@206
    move-object/from16 v0, p1

    #@208
    iget-object v8, v0, Lcom/android/server/connectivity/NetworkAgentInfo;->networkCapabilities:Landroid/net/NetworkCapabilities;

    #@20a
    const/4 v9, 0x1

    #@20b
    aput-object v8, v7, v9

    #@20d
    .line 5000
    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@210
    move-result-object v6

    #@211
    invoke-static {v5, v6}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    #@214
    .line 5004
    :cond_b
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/connectivity/NetworkAgentInfo;->getCurrentScore()I

    #@217
    move-result v5

    #@218
    move/from16 v0, v26

    #@21a
    if-eq v5, v0, :cond_c

    #@21c
    .line 5005
    sget-object v5, Lcom/android/server/ConnectivityService;->TAG:Ljava/lang/String;

    #@21e
    .line 5006
    const-string/jumbo v6, "BUG: %s changed score during rematch: %d -> %d"

    #@221
    .line 5005
    const/4 v7, 0x2

    #@222
    new-array v7, v7, [Ljava/lang/Object;

    #@224
    .line 5007
    invoke-static/range {v26 .. v26}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@227
    move-result-object v8

    #@228
    const/4 v9, 0x0

    #@229
    aput-object v8, v7, v9

    #@22b
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/connectivity/NetworkAgentInfo;->getCurrentScore()I

    #@22e
    move-result v8

    #@22f
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@232
    move-result-object v8

    #@233
    const/4 v9, 0x1

    #@234
    aput-object v8, v7, v9

    #@236
    .line 5005
    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@239
    move-result-object v6

    #@23a
    invoke-static {v5, v6}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    #@23d
    .line 5011
    :cond_c
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/connectivity/NetworkAgentInfo;->isBackgroundNetwork()Z

    #@240
    move-result v5

    #@241
    move/from16 v0, v31

    #@243
    if-eq v0, v5, :cond_d

    #@245
    .line 5016
    move-object/from16 v0, p1

    #@247
    iget-object v5, v0, Lcom/android/server/connectivity/NetworkAgentInfo;->networkCapabilities:Landroid/net/NetworkCapabilities;

    #@249
    move-object/from16 v0, p0

    #@24b
    move/from16 v1, v26

    #@24d
    move-object/from16 v2, p1

    #@24f
    invoke-direct {v0, v1, v2, v5}, Lcom/android/server/ConnectivityService;->updateCapabilities(ILcom/android/server/connectivity/NetworkAgentInfo;Landroid/net/NetworkCapabilities;)V

    #@252
    .line 5023
    :goto_2
    invoke-interface {v10}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@255
    move-result-object v23

    #@256
    :goto_3
    invoke-interface/range {v23 .. v23}, Ljava/util/Iterator;->hasNext()Z

    #@259
    move-result v5

    #@25a
    if-eqz v5, :cond_e

    #@25c
    invoke-interface/range {v23 .. v23}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@25f
    move-result-object v22

    #@260
    check-cast v22, Lcom/android/server/ConnectivityService$NetworkRequestInfo;

    #@262
    .restart local v22    # "nri":Lcom/android/server/ConnectivityService$NetworkRequestInfo;
    move-object/from16 v0, p0

    #@264
    move-object/from16 v1, p1

    #@266
    move-object/from16 v2, v22

    #@268
    invoke-virtual {v0, v1, v2}, Lcom/android/server/ConnectivityService;->notifyNetworkCallback(Lcom/android/server/connectivity/NetworkAgentInfo;Lcom/android/server/ConnectivityService$NetworkRequestInfo;)V

    #@26b
    goto :goto_3

    #@26c
    .line 4986
    .end local v22    # "nri":Lcom/android/server/ConnectivityService$NetworkRequestInfo;
    :catchall_0
    move-exception v5

    #@26d
    monitor-exit p0

    #@26e
    throw v5

    #@26f
    .line 5018
    :cond_d
    const/4 v5, 0x0

    #@270
    move-object/from16 v0, p0

    #@272
    move-object/from16 v1, p1

    #@274
    invoke-direct {v0, v1, v5}, Lcom/android/server/ConnectivityService;->processListenRequests(Lcom/android/server/connectivity/NetworkAgentInfo;Z)V

    #@277
    goto :goto_2

    #@278
    .line 5027
    :cond_e
    invoke-interface {v11}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@27b
    move-result-object v19

    #@27c
    .local v19, "nai$iterator":Ljava/util/Iterator;
    :goto_4
    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->hasNext()Z

    #@27f
    move-result v5

    #@280
    if-eqz v5, :cond_f

    #@282
    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@285
    move-result-object v18

    #@286
    check-cast v18, Lcom/android/server/connectivity/NetworkAgentInfo;

    #@288
    .line 5028
    .local v18, "nai":Lcom/android/server/connectivity/NetworkAgentInfo;
    move-object/from16 v0, p0

    #@28a
    move-object/from16 v1, v18

    #@28c
    move-wide/from16 v2, p3

    #@28e
    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/ConnectivityService;->updateLingerState(Lcom/android/server/connectivity/NetworkAgentInfo;J)V

    #@291
    goto :goto_4

    #@292
    .line 5032
    .end local v18    # "nai":Lcom/android/server/connectivity/NetworkAgentInfo;
    :cond_f
    move-object/from16 v0, p0

    #@294
    move-object/from16 v1, p1

    #@296
    move-wide/from16 v2, p3

    #@298
    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/ConnectivityService;->updateLingerState(Lcom/android/server/connectivity/NetworkAgentInfo;J)V

    #@29b
    .line 5034
    if-eqz v16, :cond_11

    #@29d
    .line 5039
    if-eqz v24, :cond_10

    #@29f
    .line 5040
    move-object/from16 v0, p0

    #@2a1
    iget-object v5, v0, Lcom/android/server/ConnectivityService;->mLegacyTypeTracker:Lcom/android/server/ConnectivityService$LegacyTypeTracker;

    #@2a3
    move-object/from16 v0, v24

    #@2a5
    iget-object v6, v0, Lcom/android/server/connectivity/NetworkAgentInfo;->networkInfo:Landroid/net/NetworkInfo;

    #@2a7
    invoke-virtual {v6}, Landroid/net/NetworkInfo;->getType()I

    #@2aa
    move-result v6

    #@2ab
    .line 5041
    const/4 v7, 0x1

    #@2ac
    .line 5040
    move-object/from16 v0, v24

    #@2ae
    invoke-virtual {v5, v6, v0, v7}, Lcom/android/server/ConnectivityService$LegacyTypeTracker;->remove(ILcom/android/server/connectivity/NetworkAgentInfo;Z)V

    #@2b1
    .line 5043
    :cond_10
    move-object/from16 v0, p1

    #@2b3
    iget-boolean v5, v0, Lcom/android/server/connectivity/NetworkAgentInfo;->lastValidated:Z

    #@2b5
    if-eqz v5, :cond_14

    #@2b7
    const/16 v5, 0x64

    #@2b9
    :goto_5
    move-object/from16 v0, p0

    #@2bb
    iput v5, v0, Lcom/android/server/ConnectivityService;->mDefaultInetConditionPublished:I

    #@2bd
    .line 5044
    move-object/from16 v0, p0

    #@2bf
    iget-object v5, v0, Lcom/android/server/ConnectivityService;->mLegacyTypeTracker:Lcom/android/server/ConnectivityService$LegacyTypeTracker;

    #@2c1
    move-object/from16 v0, p1

    #@2c3
    iget-object v6, v0, Lcom/android/server/connectivity/NetworkAgentInfo;->networkInfo:Landroid/net/NetworkInfo;

    #@2c5
    invoke-virtual {v6}, Landroid/net/NetworkInfo;->getType()I

    #@2c8
    move-result v6

    #@2c9
    move-object/from16 v0, p1

    #@2cb
    invoke-virtual {v5, v6, v0}, Lcom/android/server/ConnectivityService$LegacyTypeTracker;->add(ILcom/android/server/connectivity/NetworkAgentInfo;)V

    #@2ce
    .line 5045
    invoke-direct/range {p0 .. p1}, Lcom/android/server/ConnectivityService;->notifyLockdownVpn(Lcom/android/server/connectivity/NetworkAgentInfo;)V

    #@2d1
    .line 5048
    :cond_11
    if-eqz v17, :cond_16

    #@2d3
    .line 5053
    :try_start_1
    invoke-static {}, Lcom/android/server/am/BatteryStatsService;->getService()Lcom/android/internal/app/IBatteryStats;

    #@2d6
    move-result-object v13

    #@2d7
    .line 5054
    .local v13, "bs":Lcom/android/internal/app/IBatteryStats;
    move-object/from16 v0, p1

    #@2d9
    iget-object v5, v0, Lcom/android/server/connectivity/NetworkAgentInfo;->networkInfo:Landroid/net/NetworkInfo;

    #@2db
    invoke-virtual {v5}, Landroid/net/NetworkInfo;->getType()I

    #@2de
    move-result v30

    #@2df
    .line 5056
    .local v30, "type":I
    move-object/from16 v0, p1

    #@2e1
    iget-object v5, v0, Lcom/android/server/connectivity/NetworkAgentInfo;->linkProperties:Landroid/net/LinkProperties;

    #@2e3
    invoke-virtual {v5}, Landroid/net/LinkProperties;->getInterfaceName()Ljava/lang/String;

    #@2e6
    move-result-object v12

    #@2e7
    .line 5057
    .local v12, "baseIface":Ljava/lang/String;
    move/from16 v0, v30

    #@2e9
    invoke-interface {v13, v12, v0}, Lcom/android/internal/app/IBatteryStats;->noteNetworkInterfaceType(Ljava/lang/String;I)V

    #@2ec
    .line 5058
    move-object/from16 v0, p1

    #@2ee
    iget-object v5, v0, Lcom/android/server/connectivity/NetworkAgentInfo;->linkProperties:Landroid/net/LinkProperties;

    #@2f0
    invoke-virtual {v5}, Landroid/net/LinkProperties;->getStackedLinks()Ljava/util/List;

    #@2f3
    move-result-object v5

    #@2f4
    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@2f7
    move-result-object v28

    #@2f8
    .local v28, "stacked$iterator":Ljava/util/Iterator;
    :goto_6
    invoke-interface/range {v28 .. v28}, Ljava/util/Iterator;->hasNext()Z

    #@2fb
    move-result v5

    #@2fc
    if-eqz v5, :cond_12

    #@2fe
    invoke-interface/range {v28 .. v28}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@301
    move-result-object v27

    #@302
    check-cast v27, Landroid/net/LinkProperties;

    #@304
    .line 5059
    .local v27, "stacked":Landroid/net/LinkProperties;
    invoke-virtual/range {v27 .. v27}, Landroid/net/LinkProperties;->getInterfaceName()Ljava/lang/String;

    #@307
    move-result-object v29

    #@308
    .line 5060
    .local v29, "stackedIface":Ljava/lang/String;
    move-object/from16 v0, v29

    #@30a
    move/from16 v1, v30

    #@30c
    invoke-interface {v13, v0, v1}, Lcom/android/internal/app/IBatteryStats;->noteNetworkInterfaceType(Ljava/lang/String;I)V

    #@30f
    .line 5061
    move-object/from16 v0, v29

    #@311
    invoke-static {v0, v12}, Lcom/android/internal/net/NetworkStatsFactory;->noteStackedIface(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    #@314
    goto :goto_6

    #@315
    .line 5063
    .end local v12    # "baseIface":Ljava/lang/String;
    .end local v13    # "bs":Lcom/android/internal/app/IBatteryStats;
    .end local v27    # "stacked":Landroid/net/LinkProperties;
    .end local v28    # "stacked$iterator":Ljava/util/Iterator;
    .end local v29    # "stackedIface":Ljava/lang/String;
    .end local v30    # "type":I
    :catch_0
    move-exception v15

    #@316
    .line 5080
    :cond_12
    const/4 v14, 0x0

    #@317
    .local v14, "i":I
    :goto_7
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/connectivity/NetworkAgentInfo;->numNetworkRequests()I

    #@31a
    move-result v5

    #@31b
    if-ge v14, v5, :cond_15

    #@31d
    .line 5081
    move-object/from16 v0, p1

    #@31f
    invoke-virtual {v0, v14}, Lcom/android/server/connectivity/NetworkAgentInfo;->requestAt(I)Landroid/net/NetworkRequest;

    #@322
    move-result-object v21

    #@323
    .line 5082
    .local v21, "nr":Landroid/net/NetworkRequest;
    move-object/from16 v0, v21

    #@325
    iget v5, v0, Landroid/net/NetworkRequest;->legacyType:I

    #@327
    const/4 v6, -0x1

    #@328
    if-eq v5, v6, :cond_13

    #@32a
    invoke-virtual/range {v21 .. v21}, Landroid/net/NetworkRequest;->isRequest()Z

    #@32d
    move-result v5

    #@32e
    if-eqz v5, :cond_13

    #@330
    .line 5084
    move-object/from16 v0, p0

    #@332
    iget-object v5, v0, Lcom/android/server/ConnectivityService;->mLegacyTypeTracker:Lcom/android/server/ConnectivityService$LegacyTypeTracker;

    #@334
    move-object/from16 v0, v21

    #@336
    iget v6, v0, Landroid/net/NetworkRequest;->legacyType:I

    #@338
    move-object/from16 v0, p1

    #@33a
    invoke-virtual {v5, v6, v0}, Lcom/android/server/ConnectivityService$LegacyTypeTracker;->add(ILcom/android/server/connectivity/NetworkAgentInfo;)V

    #@33d
    .line 5080
    :cond_13
    add-int/lit8 v14, v14, 0x1

    #@33f
    goto :goto_7

    #@340
    .line 5043
    .end local v14    # "i":I
    .end local v21    # "nr":Landroid/net/NetworkRequest;
    :cond_14
    const/4 v5, 0x0

    #@341
    goto/16 :goto_5

    #@343
    .line 5092
    .restart local v14    # "i":I
    :cond_15
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/connectivity/NetworkAgentInfo;->isVPN()Z

    #@346
    move-result v5

    #@347
    if-eqz v5, :cond_16

    #@349
    .line 5093
    move-object/from16 v0, p0

    #@34b
    iget-object v5, v0, Lcom/android/server/ConnectivityService;->mLegacyTypeTracker:Lcom/android/server/ConnectivityService$LegacyTypeTracker;

    #@34d
    const/16 v6, 0x11

    #@34f
    move-object/from16 v0, p1

    #@351
    invoke-virtual {v5, v6, v0}, Lcom/android/server/ConnectivityService$LegacyTypeTracker;->add(ILcom/android/server/connectivity/NetworkAgentInfo;)V

    #@354
    .line 5096
    .end local v14    # "i":I
    :cond_16
    sget-object v5, Lcom/android/server/ConnectivityService$ReapUnvalidatedNetworks;->REAP:Lcom/android/server/ConnectivityService$ReapUnvalidatedNetworks;

    #@356
    move-object/from16 v0, p2

    #@358
    if-ne v0, v5, :cond_19

    #@35a
    .line 5097
    move-object/from16 v0, p0

    #@35c
    iget-object v5, v0, Lcom/android/server/ConnectivityService;->mNetworkAgentInfos:Ljava/util/HashMap;

    #@35e
    invoke-virtual {v5}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    #@361
    move-result-object v5

    #@362
    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@365
    move-result-object v19

    #@366
    :cond_17
    :goto_8
    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->hasNext()Z

    #@369
    move-result v5

    #@36a
    if-eqz v5, :cond_19

    #@36c
    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@36f
    move-result-object v18

    #@370
    check-cast v18, Lcom/android/server/connectivity/NetworkAgentInfo;

    #@372
    .line 5098
    .restart local v18    # "nai":Lcom/android/server/connectivity/NetworkAgentInfo;
    sget-object v5, Lcom/android/server/ConnectivityService$UnneededFor;->TEARDOWN:Lcom/android/server/ConnectivityService$UnneededFor;

    #@374
    move-object/from16 v0, p0

    #@376
    move-object/from16 v1, v18

    #@378
    invoke-direct {v0, v1, v5}, Lcom/android/server/ConnectivityService;->unneeded(Lcom/android/server/connectivity/NetworkAgentInfo;Lcom/android/server/ConnectivityService$UnneededFor;)Z

    #@37b
    move-result v5

    #@37c
    if-eqz v5, :cond_17

    #@37e
    .line 5099
    invoke-virtual/range {v18 .. v18}, Lcom/android/server/connectivity/NetworkAgentInfo;->getLingerExpiry()J

    #@381
    move-result-wide v6

    #@382
    const-wide/16 v8, 0x0

    #@384
    cmp-long v5, v6, v8

    #@386
    if-lez v5, :cond_18

    #@388
    .line 5107
    move-object/from16 v0, p0

    #@38a
    move-object/from16 v1, v18

    #@38c
    move-wide/from16 v2, p3

    #@38e
    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/ConnectivityService;->updateLingerState(Lcom/android/server/connectivity/NetworkAgentInfo;J)V

    #@391
    goto :goto_8

    #@392
    .line 5109
    :cond_18
    new-instance v5, Ljava/lang/StringBuilder;

    #@394
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@397
    const-string/jumbo v6, "Reaping "

    #@39a
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@39d
    move-result-object v5

    #@39e
    invoke-virtual/range {v18 .. v18}, Lcom/android/server/connectivity/NetworkAgentInfo;->name()Ljava/lang/String;

    #@3a1
    move-result-object v6

    #@3a2
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3a5
    move-result-object v5

    #@3a6
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3a9
    move-result-object v5

    #@3aa
    invoke-static {v5}, Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V

    #@3ad
    .line 5110
    move-object/from16 v0, p0

    #@3af
    move-object/from16 v1, v18

    #@3b1
    invoke-direct {v0, v1}, Lcom/android/server/ConnectivityService;->teardownUnneededNetwork(Lcom/android/server/connectivity/NetworkAgentInfo;)V

    #@3b4
    goto :goto_8

    #@3b5
    .line 4874
    .end local v18    # "nai":Lcom/android/server/connectivity/NetworkAgentInfo;
    :cond_19
    return-void
.end method

.method private removeDataActivityTracking(Lcom/android/server/connectivity/NetworkAgentInfo;)V
    .locals 5
    .param p1, "networkAgent"    # Lcom/android/server/connectivity/NetworkAgentInfo;

    #@0
    .prologue
    .line 1793
    iget-object v3, p1, Lcom/android/server/connectivity/NetworkAgentInfo;->linkProperties:Landroid/net/LinkProperties;

    #@2
    invoke-virtual {v3}, Landroid/net/LinkProperties;->getInterfaceName()Ljava/lang/String;

    #@5
    move-result-object v2

    #@6
    .line 1794
    .local v2, "iface":Ljava/lang/String;
    iget-object v0, p1, Lcom/android/server/connectivity/NetworkAgentInfo;->networkCapabilities:Landroid/net/NetworkCapabilities;

    #@8
    .line 1796
    .local v0, "caps":Landroid/net/NetworkCapabilities;
    if-eqz v2, :cond_1

    #@a
    const/4 v3, 0x0

    #@b
    invoke-virtual {v0, v3}, Landroid/net/NetworkCapabilities;->hasTransport(I)Z

    #@e
    move-result v3

    #@f
    if-nez v3, :cond_0

    #@11
    .line 1797
    const/4 v3, 0x1

    #@12
    invoke-virtual {v0, v3}, Landroid/net/NetworkCapabilities;->hasTransport(I)Z

    #@15
    move-result v3

    #@16
    .line 1796
    if-eqz v3, :cond_1

    #@18
    .line 1800
    :cond_0
    :try_start_0
    iget-object v3, p0, Lcom/android/server/ConnectivityService;->mNetd:Landroid/os/INetworkManagementService;

    #@1a
    invoke-interface {v3, v2}, Landroid/os/INetworkManagementService;->removeIdleTimer(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    #@1d
    .line 1792
    :cond_1
    :goto_0
    return-void

    #@1e
    .line 1801
    :catch_0
    move-exception v1

    #@1f
    .line 1802
    .local v1, "e":Ljava/lang/Exception;
    new-instance v3, Ljava/lang/StringBuilder;

    #@21
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@24
    const-string/jumbo v4, "Exception in removeDataActivityTracking "

    #@27
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2a
    move-result-object v3

    #@2b
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@2e
    move-result-object v3

    #@2f
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@32
    move-result-object v3

    #@33
    invoke-static {v3}, Lcom/android/server/ConnectivityService;->loge(Ljava/lang/String;)V

    #@36
    goto :goto_0
.end method

.method private requestNetworkTransitionWakelock(Ljava/lang/String;)V
    .locals 6
    .param p1, "forWhom"    # Ljava/lang/String;

    #@0
    .prologue
    .line 3132
    const/4 v0, 0x0

    #@1
    .line 3133
    .local v0, "serialNum":I
    monitor-enter p0

    #@2
    .line 3134
    :try_start_0
    iget-object v2, p0, Lcom/android/server/ConnectivityService;->mNetTransitionWakeLock:Landroid/os/PowerManager$WakeLock;

    #@4
    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->isHeld()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@7
    move-result v2

    #@8
    if-eqz v2, :cond_0

    #@a
    monitor-exit p0

    #@b
    return-void

    #@c
    .line 3135
    :cond_0
    :try_start_1
    iget v2, p0, Lcom/android/server/ConnectivityService;->mNetTransitionWakeLockSerialNumber:I

    #@e
    add-int/lit8 v1, v2, 0x1

    #@10
    iput v1, p0, Lcom/android/server/ConnectivityService;->mNetTransitionWakeLockSerialNumber:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@12
    .line 3136
    .end local v0    # "serialNum":I
    .local v1, "serialNum":I
    :try_start_2
    iget-object v2, p0, Lcom/android/server/ConnectivityService;->mNetTransitionWakeLock:Landroid/os/PowerManager$WakeLock;

    #@14
    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->acquire()V

    #@17
    .line 3137
    iput-object p1, p0, Lcom/android/server/ConnectivityService;->mNetTransitionWakeLockCausedBy:Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    #@19
    monitor-exit p0

    #@1a
    .line 3139
    iget-object v2, p0, Lcom/android/server/ConnectivityService;->mHandler:Lcom/android/server/ConnectivityService$InternalHandler;

    #@1c
    iget-object v3, p0, Lcom/android/server/ConnectivityService;->mHandler:Lcom/android/server/ConnectivityService$InternalHandler;

    #@1e
    .line 3140
    const/16 v4, 0x18

    #@20
    const/4 v5, 0x0

    #@21
    .line 3139
    invoke-virtual {v3, v4, v1, v5}, Lcom/android/server/ConnectivityService$InternalHandler;->obtainMessage(III)Landroid/os/Message;

    #@24
    move-result-object v3

    #@25
    .line 3141
    iget v4, p0, Lcom/android/server/ConnectivityService;->mNetTransitionWakeLockTimeout:I

    #@27
    int-to-long v4, v4

    #@28
    .line 3139
    invoke-virtual {v2, v3, v4, v5}, Lcom/android/server/ConnectivityService$InternalHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    #@2b
    .line 3142
    return-void

    #@2c
    .line 3133
    .end local v1    # "serialNum":I
    .restart local v0    # "serialNum":I
    :catchall_0
    move-exception v2

    #@2d
    :goto_0
    monitor-exit p0

    #@2e
    throw v2

    #@2f
    .end local v0    # "serialNum":I
    .restart local v1    # "serialNum":I
    :catchall_1
    move-exception v2

    #@30
    move v0, v1

    #@31
    .end local v1    # "serialNum":I
    .restart local v0    # "serialNum":I
    goto :goto_0
.end method

.method private scheduleUnvalidatedPrompt(Lcom/android/server/connectivity/NetworkAgentInfo;)V
    .locals 4
    .param p1, "nai"    # Lcom/android/server/connectivity/NetworkAgentInfo;

    #@0
    .prologue
    .line 2771
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mHandler:Lcom/android/server/ConnectivityService$InternalHandler;

    #@2
    .line 2772
    iget-object v1, p0, Lcom/android/server/ConnectivityService;->mHandler:Lcom/android/server/ConnectivityService$InternalHandler;

    #@4
    iget-object v2, p1, Lcom/android/server/connectivity/NetworkAgentInfo;->network:Landroid/net/Network;

    #@6
    const/16 v3, 0x1d

    #@8
    invoke-virtual {v1, v3, v2}, Lcom/android/server/ConnectivityService$InternalHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    #@b
    move-result-object v1

    #@c
    .line 2773
    const-wide/16 v2, 0x1f40

    #@e
    .line 2771
    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/ConnectivityService$InternalHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    #@11
    .line 2769
    return-void
.end method

.method private sendDataActivityBroadcast(IZJ)V
    .locals 15
    .param p1, "deviceType"    # I
    .param p2, "active"    # Z
    .param p3, "tsNanos"    # J

    #@0
    .prologue
    .line 1673
    new-instance v3, Landroid/content/Intent;

    #@2
    const-string/jumbo v2, "android.net.conn.DATA_ACTIVITY_CHANGE"

    #@5
    invoke-direct {v3, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    #@8
    .line 1674
    .local v3, "intent":Landroid/content/Intent;
    const-string/jumbo v2, "deviceType"

    #@b
    move/from16 v0, p1

    #@d
    invoke-virtual {v3, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    #@10
    .line 1675
    const-string/jumbo v2, "isActive"

    #@13
    move/from16 v0, p2

    #@15
    invoke-virtual {v3, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    #@18
    .line 1676
    const-string/jumbo v2, "tsNanos"

    #@1b
    move-wide/from16 v0, p3

    #@1d
    invoke-virtual {v3, v2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    #@20
    .line 1677
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    #@23
    move-result-wide v12

    #@24
    .line 1679
    .local v12, "ident":J
    :try_start_0
    iget-object v2, p0, Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;

    #@26
    sget-object v4, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    #@28
    .line 1680
    const-string/jumbo v5, "android.permission.RECEIVE_DATA_ACTIVITY_CHANGE"

    #@2b
    const/4 v6, 0x0

    #@2c
    const/4 v7, 0x0

    #@2d
    const/4 v8, 0x0

    #@2e
    const/4 v9, 0x0

    #@2f
    const/4 v10, 0x0

    #@30
    .line 1679
    invoke-virtual/range {v2 .. v10}, Landroid/content/Context;->sendOrderedBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;Landroid/content/BroadcastReceiver;Landroid/os/Handler;ILjava/lang/String;Landroid/os/Bundle;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@33
    .line 1682
    invoke-static {v12, v13}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@36
    .line 1672
    return-void

    #@37
    .line 1681
    :catchall_0
    move-exception v2

    #@38
    .line 1682
    invoke-static {v12, v13}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@3b
    .line 1681
    throw v2
.end method

.method private sendGeneralBroadcast(Landroid/net/NetworkInfo;Ljava/lang/String;)V
    .locals 1
    .param p1, "info"    # Landroid/net/NetworkInfo;
    .param p2, "bcastType"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1669
    invoke-direct {p0, p1, p2}, Lcom/android/server/ConnectivityService;->makeGeneralIntent(Landroid/net/NetworkInfo;Ljava/lang/String;)Landroid/content/Intent;

    #@3
    move-result-object v0

    #@4
    invoke-direct {p0, v0}, Lcom/android/server/ConnectivityService;->sendStickyBroadcast(Landroid/content/Intent;)V

    #@7
    .line 1668
    return-void
.end method

.method private sendInetConditionBroadcast(Landroid/net/NetworkInfo;)V
    .locals 1
    .param p1, "info"    # Landroid/net/NetworkInfo;

    #@0
    .prologue
    .line 1641
    const-string/jumbo v0, "android.net.conn.INET_CONDITION_ACTION"

    #@3
    invoke-direct {p0, p1, v0}, Lcom/android/server/ConnectivityService;->sendGeneralBroadcast(Landroid/net/NetworkInfo;Ljava/lang/String;)V

    #@6
    .line 1640
    return-void
.end method

.method private sendIntent(Landroid/app/PendingIntent;Landroid/content/Intent;)V
    .locals 7
    .param p1, "pendingIntent"    # Landroid/app/PendingIntent;
    .param p2, "intent"    # Landroid/content/Intent;

    #@0
    .prologue
    .line 4710
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mPendingIntentWakeLock:Landroid/os/PowerManager$WakeLock;

    #@2
    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    #@5
    .line 4712
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    #@7
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@a
    const-string/jumbo v1, "Sending "

    #@d
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@10
    move-result-object v0

    #@11
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@14
    move-result-object v0

    #@15
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@18
    move-result-object v0

    #@19
    invoke-static {v0}, Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V

    #@1c
    .line 4713
    iget-object v1, p0, Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;

    #@1e
    const/4 v2, 0x0

    #@1f
    const/4 v5, 0x0

    #@20
    move-object v0, p1

    #@21
    move-object v3, p2

    #@22
    move-object v4, p0

    #@23
    invoke-virtual/range {v0 .. v5}, Landroid/app/PendingIntent;->send(Landroid/content/Context;ILandroid/content/Intent;Landroid/app/PendingIntent$OnFinished;Landroid/os/Handler;)V
    :try_end_0
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_0 .. :try_end_0} :catch_0

    #@26
    .line 4709
    :goto_0
    return-void

    #@27
    .line 4714
    :catch_0
    move-exception v6

    #@28
    .line 4715
    .local v6, "e":Landroid/app/PendingIntent$CanceledException;
    new-instance v0, Ljava/lang/StringBuilder;

    #@2a
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@2d
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@30
    move-result-object v0

    #@31
    const-string/jumbo v1, " was not sent, it had been canceled."

    #@34
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@37
    move-result-object v0

    #@38
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3b
    move-result-object v0

    #@3c
    invoke-static {v0}, Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V

    #@3f
    .line 4716
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mPendingIntentWakeLock:Landroid/os/PowerManager$WakeLock;

    #@41
    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    #@44
    .line 4717
    invoke-virtual {p0, p1}, Lcom/android/server/ConnectivityService;->releasePendingNetworkRequest(Landroid/app/PendingIntent;)V

    #@47
    goto :goto_0
.end method

.method private sendLegacyNetworkBroadcast(Lcom/android/server/connectivity/NetworkAgentInfo;Landroid/net/NetworkInfo$DetailedState;I)V
    .locals 6
    .param p1, "nai"    # Lcom/android/server/connectivity/NetworkAgentInfo;
    .param p2, "state"    # Landroid/net/NetworkInfo$DetailedState;
    .param p3, "type"    # I

    #@0
    .prologue
    const/4 v5, 0x1

    #@1
    const/4 v4, 0x0

    #@2
    .line 5330
    new-instance v0, Landroid/net/NetworkInfo;

    #@4
    iget-object v3, p1, Lcom/android/server/connectivity/NetworkAgentInfo;->networkInfo:Landroid/net/NetworkInfo;

    #@6
    invoke-direct {v0, v3}, Landroid/net/NetworkInfo;-><init>(Landroid/net/NetworkInfo;)V

    #@9
    .line 5331
    .local v0, "info":Landroid/net/NetworkInfo;
    invoke-virtual {v0, p3}, Landroid/net/NetworkInfo;->setType(I)V

    #@c
    .line 5332
    sget-object v3, Landroid/net/NetworkInfo$DetailedState;->DISCONNECTED:Landroid/net/NetworkInfo$DetailedState;

    #@e
    if-eq p2, v3, :cond_1

    #@10
    .line 5333
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getExtraInfo()Ljava/lang/String;

    #@13
    move-result-object v3

    #@14
    invoke-virtual {v0, p2, v4, v3}, Landroid/net/NetworkInfo;->setDetailedState(Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;Ljava/lang/String;)V

    #@17
    .line 5334
    invoke-virtual {p0, v0}, Lcom/android/server/ConnectivityService;->sendConnectedBroadcast(Landroid/net/NetworkInfo;)V

    #@1a
    .line 5323
    :cond_0
    :goto_0
    return-void

    #@1b
    .line 5336
    :cond_1
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getReason()Ljava/lang/String;

    #@1e
    move-result-object v3

    #@1f
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getExtraInfo()Ljava/lang/String;

    #@22
    move-result-object v4

    #@23
    invoke-virtual {v0, p2, v3, v4}, Landroid/net/NetworkInfo;->setDetailedState(Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;Ljava/lang/String;)V

    #@26
    .line 5337
    new-instance v1, Landroid/content/Intent;

    #@28
    const-string/jumbo v3, "android.net.conn.CONNECTIVITY_CHANGE"

    #@2b
    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    #@2e
    .line 5338
    .local v1, "intent":Landroid/content/Intent;
    const-string/jumbo v3, "networkInfo"

    #@31
    invoke-virtual {v1, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    #@34
    .line 5339
    const-string/jumbo v3, "networkType"

    #@37
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    #@3a
    move-result v4

    #@3b
    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    #@3e
    .line 5340
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isFailover()Z

    #@41
    move-result v3

    #@42
    if-eqz v3, :cond_2

    #@44
    .line 5341
    const-string/jumbo v3, "isFailover"

    #@47
    invoke-virtual {v1, v3, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    #@4a
    .line 5342
    iget-object v3, p1, Lcom/android/server/connectivity/NetworkAgentInfo;->networkInfo:Landroid/net/NetworkInfo;

    #@4c
    const/4 v4, 0x0

    #@4d
    invoke-virtual {v3, v4}, Landroid/net/NetworkInfo;->setFailover(Z)V

    #@50
    .line 5344
    :cond_2
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getReason()Ljava/lang/String;

    #@53
    move-result-object v3

    #@54
    if-eqz v3, :cond_3

    #@56
    .line 5345
    const-string/jumbo v3, "reason"

    #@59
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getReason()Ljava/lang/String;

    #@5c
    move-result-object v4

    #@5d
    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    #@60
    .line 5347
    :cond_3
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getExtraInfo()Ljava/lang/String;

    #@63
    move-result-object v3

    #@64
    if-eqz v3, :cond_4

    #@66
    .line 5348
    const-string/jumbo v3, "extraInfo"

    #@69
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getExtraInfo()Ljava/lang/String;

    #@6c
    move-result-object v4

    #@6d
    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    #@70
    .line 5350
    :cond_4
    const/4 v2, 0x0

    #@71
    .line 5351
    .local v2, "newDefaultAgent":Lcom/android/server/connectivity/NetworkAgentInfo;
    iget-object v3, p0, Lcom/android/server/ConnectivityService;->mDefaultRequest:Landroid/net/NetworkRequest;

    #@73
    iget v3, v3, Landroid/net/NetworkRequest;->requestId:I

    #@75
    invoke-virtual {p1, v3}, Lcom/android/server/connectivity/NetworkAgentInfo;->isSatisfyingRequest(I)Z

    #@78
    move-result v3

    #@79
    if-eqz v3, :cond_5

    #@7b
    .line 5352
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->getDefaultNetwork()Lcom/android/server/connectivity/NetworkAgentInfo;

    #@7e
    move-result-object v2

    #@7f
    .line 5353
    .local v2, "newDefaultAgent":Lcom/android/server/connectivity/NetworkAgentInfo;
    if-eqz v2, :cond_6

    #@81
    .line 5354
    const-string/jumbo v3, "otherNetwork"

    #@84
    .line 5355
    iget-object v4, v2, Lcom/android/server/connectivity/NetworkAgentInfo;->networkInfo:Landroid/net/NetworkInfo;

    #@86
    .line 5354
    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    #@89
    .line 5360
    .end local v2    # "newDefaultAgent":Lcom/android/server/connectivity/NetworkAgentInfo;
    :cond_5
    :goto_1
    const-string/jumbo v3, "inetCondition"

    #@8c
    .line 5361
    iget v4, p0, Lcom/android/server/ConnectivityService;->mDefaultInetConditionPublished:I

    #@8e
    .line 5360
    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    #@91
    .line 5362
    invoke-direct {p0, v1}, Lcom/android/server/ConnectivityService;->sendStickyBroadcast(Landroid/content/Intent;)V

    #@94
    .line 5363
    if-eqz v2, :cond_0

    #@96
    .line 5364
    iget-object v3, v2, Lcom/android/server/connectivity/NetworkAgentInfo;->networkInfo:Landroid/net/NetworkInfo;

    #@98
    invoke-virtual {p0, v3}, Lcom/android/server/ConnectivityService;->sendConnectedBroadcast(Landroid/net/NetworkInfo;)V

    #@9b
    goto/16 :goto_0

    #@9d
    .line 5357
    .restart local v2    # "newDefaultAgent":Lcom/android/server/connectivity/NetworkAgentInfo;
    :cond_6
    const-string/jumbo v3, "noConnectivity"

    #@a0
    invoke-virtual {v1, v3, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    #@a3
    goto :goto_1
.end method

.method private sendPendingIntentForRequest(Lcom/android/server/ConnectivityService$NetworkRequestInfo;Lcom/android/server/connectivity/NetworkAgentInfo;I)V
    .locals 3
    .param p1, "nri"    # Lcom/android/server/ConnectivityService$NetworkRequestInfo;
    .param p2, "networkAgent"    # Lcom/android/server/connectivity/NetworkAgentInfo;
    .param p3, "notificationType"    # I

    #@0
    .prologue
    .line 4699
    const v1, 0x80002

    #@3
    if-ne p3, v1, :cond_0

    #@5
    iget-boolean v1, p1, Lcom/android/server/ConnectivityService$NetworkRequestInfo;->mPendingIntentSent:Z

    #@7
    if-eqz v1, :cond_1

    #@9
    .line 4698
    :cond_0
    :goto_0
    return-void

    #@a
    .line 4700
    :cond_1
    new-instance v0, Landroid/content/Intent;

    #@c
    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    #@f
    .line 4701
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v1, "android.net.extra.NETWORK"

    #@12
    iget-object v2, p2, Lcom/android/server/connectivity/NetworkAgentInfo;->network:Landroid/net/Network;

    #@14
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    #@17
    .line 4702
    const-string/jumbo v1, "android.net.extra.NETWORK_REQUEST"

    #@1a
    iget-object v2, p1, Lcom/android/server/ConnectivityService$NetworkRequestInfo;->request:Landroid/net/NetworkRequest;

    #@1c
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    #@1f
    .line 4703
    const/4 v1, 0x1

    #@20
    iput-boolean v1, p1, Lcom/android/server/ConnectivityService$NetworkRequestInfo;->mPendingIntentSent:Z

    #@22
    .line 4704
    iget-object v1, p1, Lcom/android/server/ConnectivityService$NetworkRequestInfo;->mPendingIntent:Landroid/app/PendingIntent;

    #@24
    invoke-direct {p0, v1, v0}, Lcom/android/server/ConnectivityService;->sendIntent(Landroid/app/PendingIntent;Landroid/content/Intent;)V

    #@27
    goto :goto_0
.end method

.method private sendProxyBroadcast(Landroid/net/ProxyInfo;)V
    .locals 6
    .param p1, "proxy"    # Landroid/net/ProxyInfo;

    #@0
    .prologue
    .line 3398
    if-nez p1, :cond_0

    #@2
    new-instance p1, Landroid/net/ProxyInfo;

    #@4
    .end local p1    # "proxy":Landroid/net/ProxyInfo;
    const-string/jumbo v3, ""

    #@7
    const-string/jumbo v4, ""

    #@a
    const/4 v5, 0x0

    #@b
    invoke-direct {p1, v3, v5, v4}, Landroid/net/ProxyInfo;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    #@e
    .line 3399
    .restart local p1    # "proxy":Landroid/net/ProxyInfo;
    :cond_0
    iget-object v3, p0, Lcom/android/server/ConnectivityService;->mPacManager:Lcom/android/server/connectivity/PacManager;

    #@10
    invoke-virtual {v3, p1}, Lcom/android/server/connectivity/PacManager;->setCurrentProxyScriptUrl(Landroid/net/ProxyInfo;)Z

    #@13
    move-result v3

    #@14
    if-eqz v3, :cond_1

    #@16
    return-void

    #@17
    .line 3400
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    #@19
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@1c
    const-string/jumbo v4, "sending Proxy Broadcast for "

    #@1f
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@22
    move-result-object v3

    #@23
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@26
    move-result-object v3

    #@27
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2a
    move-result-object v3

    #@2b
    invoke-static {v3}, Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V

    #@2e
    .line 3401
    new-instance v2, Landroid/content/Intent;

    #@30
    const-string/jumbo v3, "android.intent.action.PROXY_CHANGE"

    #@33
    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    #@36
    .line 3402
    .local v2, "intent":Landroid/content/Intent;
    const/high16 v3, 0x24000000

    #@38
    invoke-virtual {v2, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    #@3b
    .line 3404
    const-string/jumbo v3, "android.intent.extra.PROXY_INFO"

    #@3e
    invoke-virtual {v2, v3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    #@41
    .line 3405
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    #@44
    move-result-wide v0

    #@45
    .line 3407
    .local v0, "ident":J
    :try_start_0
    iget-object v3, p0, Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;

    #@47
    sget-object v4, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    #@49
    invoke-virtual {v3, v2, v4}, Landroid/content/Context;->sendStickyBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@4c
    .line 3409
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@4f
    .line 3397
    return-void

    #@50
    .line 3408
    :catchall_0
    move-exception v3

    #@51
    .line 3409
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@54
    .line 3408
    throw v3
.end method

.method private sendStickyBroadcast(Landroid/content/Intent;)V
    .locals 9
    .param p1, "intent"    # Landroid/content/Intent;

    #@0
    .prologue
    .line 1687
    monitor-enter p0

    #@1
    .line 1688
    :try_start_0
    iget-boolean v7, p0, Lcom/android/server/ConnectivityService;->mSystemReady:Z

    #@3
    if-nez v7, :cond_0

    #@5
    .line 1689
    new-instance v7, Landroid/content/Intent;

    #@7
    invoke-direct {v7, p1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    #@a
    iput-object v7, p0, Lcom/android/server/ConnectivityService;->mInitialBroadcast:Landroid/content/Intent;

    #@c
    .line 1691
    :cond_0
    const/high16 v7, 0x4000000

    #@e
    invoke-virtual {p1, v7}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    #@11
    .line 1696
    const/4 v5, 0x0

    #@12
    .line 1697
    .local v5, "options":Landroid/os/Bundle;
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    #@15
    move-result-wide v2

    #@16
    .line 1698
    .local v2, "ident":J
    const-string/jumbo v7, "android.net.conn.CONNECTIVITY_CHANGE"

    #@19
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    #@1c
    move-result-object v8

    #@1d
    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@20
    move-result v7

    #@21
    if-eqz v7, :cond_1

    #@23
    .line 1700
    const-string/jumbo v7, "networkInfo"

    #@26
    .line 1699
    invoke-virtual {p1, v7}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    #@29
    move-result-object v4

    #@2a
    check-cast v4, Landroid/net/NetworkInfo;

    #@2c
    .line 1701
    .local v4, "ni":Landroid/net/NetworkInfo;
    invoke-virtual {v4}, Landroid/net/NetworkInfo;->getType()I

    #@2f
    move-result v7

    #@30
    const/4 v8, 0x3

    #@31
    if-ne v7, v8, :cond_2

    #@33
    .line 1702
    const-string/jumbo v7, "android.net.conn.CONNECTIVITY_CHANGE_SUPL"

    #@36
    invoke-virtual {p1, v7}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    #@39
    .line 1703
    const/high16 v7, 0x40000000    # 2.0f

    #@3b
    invoke-virtual {p1, v7}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    #@3e
    .line 1709
    .end local v5    # "options":Landroid/os/Bundle;
    :goto_0
    invoke-static {}, Lcom/android/server/am/BatteryStatsService;->getService()Lcom/android/internal/app/IBatteryStats;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    #@41
    move-result-object v0

    #@42
    .line 1712
    .local v0, "bs":Lcom/android/internal/app/IBatteryStats;
    :try_start_1
    const-string/jumbo v7, "networkType"

    #@45
    const/4 v8, -0x1

    #@46
    .line 1711
    invoke-virtual {p1, v7, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    #@49
    move-result v8

    #@4a
    .line 1713
    if-eqz v4, :cond_3

    #@4c
    invoke-virtual {v4}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    #@4f
    move-result-object v7

    #@50
    invoke-virtual {v7}, Landroid/net/NetworkInfo$State;->toString()Ljava/lang/String;

    #@53
    move-result-object v7

    #@54
    .line 1711
    :goto_1
    invoke-interface {v0, v8, v7}, Lcom/android/internal/app/IBatteryStats;->noteConnectivityChanged(ILjava/lang/String;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    #@57
    .line 1718
    .end local v0    # "bs":Lcom/android/internal/app/IBatteryStats;
    .end local v4    # "ni":Landroid/net/NetworkInfo;
    :cond_1
    :goto_2
    :try_start_2
    iget-object v7, p0, Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;

    #@59
    sget-object v8, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    #@5b
    invoke-virtual {v7, p1, v8, v5}, Landroid/content/Context;->sendStickyBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Landroid/os/Bundle;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@5e
    .line 1720
    :try_start_3
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    #@61
    monitor-exit p0

    #@62
    .line 1686
    return-void

    #@63
    .line 1705
    .restart local v4    # "ni":Landroid/net/NetworkInfo;
    .restart local v5    # "options":Landroid/os/Bundle;
    :cond_2
    :try_start_4
    invoke-static {}, Landroid/app/BroadcastOptions;->makeBasic()Landroid/app/BroadcastOptions;

    #@66
    move-result-object v6

    #@67
    .line 1706
    .local v6, "opts":Landroid/app/BroadcastOptions;
    const/16 v7, 0x17

    #@69
    invoke-virtual {v6, v7}, Landroid/app/BroadcastOptions;->setMaxManifestReceiverApiLevel(I)V

    #@6c
    .line 1707
    invoke-virtual {v6}, Landroid/app/BroadcastOptions;->toBundle()Landroid/os/Bundle;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    #@6f
    move-result-object v5

    #@70
    .local v5, "options":Landroid/os/Bundle;
    goto :goto_0

    #@71
    .line 1713
    .end local v5    # "options":Landroid/os/Bundle;
    .end local v6    # "opts":Landroid/app/BroadcastOptions;
    .restart local v0    # "bs":Lcom/android/internal/app/IBatteryStats;
    :cond_3
    :try_start_5
    const-string/jumbo v7, "?"
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    #@74
    goto :goto_1

    #@75
    .line 1719
    .end local v0    # "bs":Lcom/android/internal/app/IBatteryStats;
    .end local v4    # "ni":Landroid/net/NetworkInfo;
    :catchall_0
    move-exception v7

    #@76
    .line 1720
    :try_start_6
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@79
    .line 1719
    throw v7
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    #@7a
    .line 1687
    .end local v2    # "ident":J
    :catchall_1
    move-exception v7

    #@7b
    monitor-exit p0

    #@7c
    throw v7

    #@7d
    .line 1714
    .restart local v0    # "bs":Lcom/android/internal/app/IBatteryStats;
    .restart local v2    # "ident":J
    .restart local v4    # "ni":Landroid/net/NetworkInfo;
    :catch_0
    move-exception v1

    #@7e
    .local v1, "e":Landroid/os/RemoteException;
    goto :goto_2
.end method

.method private sendUpdatedScoreToFactories(Landroid/net/NetworkRequest;I)V
    .locals 5
    .param p1, "networkRequest"    # Landroid/net/NetworkRequest;
    .param p2, "score"    # I

    #@0
    .prologue
    .line 4691
    iget-object v2, p0, Lcom/android/server/ConnectivityService;->mNetworkFactoryInfos:Ljava/util/HashMap;

    #@2
    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    #@5
    move-result-object v2

    #@6
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@9
    move-result-object v1

    #@a
    .local v1, "nfi$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@d
    move-result v2

    #@e
    if-eqz v2, :cond_0

    #@10
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@13
    move-result-object v0

    #@14
    check-cast v0, Lcom/android/server/ConnectivityService$NetworkFactoryInfo;

    #@16
    .line 4692
    .local v0, "nfi":Lcom/android/server/ConnectivityService$NetworkFactoryInfo;
    iget-object v2, v0, Lcom/android/server/ConnectivityService$NetworkFactoryInfo;->asyncChannel:Lcom/android/internal/util/AsyncChannel;

    #@18
    const v3, 0x83000

    #@1b
    const/4 v4, 0x0

    #@1c
    invoke-virtual {v2, v3, p2, v4, p1}, Lcom/android/internal/util/AsyncChannel;->sendMessage(IIILjava/lang/Object;)V

    #@1f
    goto :goto_0

    #@20
    .line 4689
    .end local v0    # "nfi":Lcom/android/server/ConnectivityService$NetworkFactoryInfo;
    :cond_0
    return-void
.end method

.method private sendUpdatedScoreToFactories(Lcom/android/server/connectivity/NetworkAgentInfo;)V
    .locals 3
    .param p1, "nai"    # Lcom/android/server/connectivity/NetworkAgentInfo;

    #@0
    .prologue
    .line 4681
    const/4 v0, 0x0

    #@1
    .local v0, "i":I
    :goto_0
    invoke-virtual {p1}, Lcom/android/server/connectivity/NetworkAgentInfo;->numNetworkRequests()I

    #@4
    move-result v2

    #@5
    if-ge v0, v2, :cond_1

    #@7
    .line 4682
    invoke-virtual {p1, v0}, Lcom/android/server/connectivity/NetworkAgentInfo;->requestAt(I)Landroid/net/NetworkRequest;

    #@a
    move-result-object v1

    #@b
    .line 4684
    .local v1, "nr":Landroid/net/NetworkRequest;
    invoke-virtual {v1}, Landroid/net/NetworkRequest;->isListen()Z

    #@e
    move-result v2

    #@f
    if-eqz v2, :cond_0

    #@11
    .line 4681
    :goto_1
    add-int/lit8 v0, v0, 0x1

    #@13
    goto :goto_0

    #@14
    .line 4685
    :cond_0
    invoke-virtual {p1}, Lcom/android/server/connectivity/NetworkAgentInfo;->getCurrentScore()I

    #@17
    move-result v2

    #@18
    invoke-direct {p0, v1, v2}, Lcom/android/server/ConnectivityService;->sendUpdatedScoreToFactories(Landroid/net/NetworkRequest;I)V

    #@1b
    goto :goto_1

    #@1c
    .line 4680
    .end local v1    # "nr":Landroid/net/NetworkRequest;
    :cond_1
    return-void
.end method

.method private setDefaultDnsSystemProperties(Ljava/util/Collection;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Ljava/net/InetAddress;",
            ">;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 4588
    .local p1, "dnses":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/net/InetAddress;>;"
    const/4 v4, 0x0

    #@1
    .line 4589
    .local v4, "last":I
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@4
    move-result-object v1

    #@5
    .local v1, "dns$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@8
    move-result v6

    #@9
    if-eqz v6, :cond_0

    #@b
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@e
    move-result-object v0

    #@f
    check-cast v0, Ljava/net/InetAddress;

    #@11
    .line 4590
    .local v0, "dns":Ljava/net/InetAddress;
    add-int/lit8 v4, v4, 0x1

    #@13
    .line 4591
    new-instance v6, Ljava/lang/StringBuilder;

    #@15
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@18
    const-string/jumbo v7, "net.dns"

    #@1b
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1e
    move-result-object v6

    #@1f
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@22
    move-result-object v6

    #@23
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@26
    move-result-object v3

    #@27
    .line 4592
    .local v3, "key":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    #@2a
    move-result-object v5

    #@2b
    .line 4593
    .local v5, "value":Ljava/lang/String;
    invoke-static {v3, v5}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    #@2e
    goto :goto_0

    #@2f
    .line 4595
    .end local v0    # "dns":Ljava/net/InetAddress;
    .end local v3    # "key":Ljava/lang/String;
    .end local v5    # "value":Ljava/lang/String;
    :cond_0
    add-int/lit8 v2, v4, 0x1

    #@31
    .local v2, "i":I
    :goto_1
    iget v6, p0, Lcom/android/server/ConnectivityService;->mNumDnsEntries:I

    #@33
    if-gt v2, v6, :cond_1

    #@35
    .line 4596
    new-instance v6, Ljava/lang/StringBuilder;

    #@37
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@3a
    const-string/jumbo v7, "net.dns"

    #@3d
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@40
    move-result-object v6

    #@41
    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@44
    move-result-object v6

    #@45
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@48
    move-result-object v3

    #@49
    .line 4597
    .restart local v3    # "key":Ljava/lang/String;
    const-string/jumbo v6, ""

    #@4c
    invoke-static {v3, v6}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    #@4f
    .line 4595
    add-int/lit8 v2, v2, 0x1

    #@51
    goto :goto_1

    #@52
    .line 4599
    .end local v3    # "key":Ljava/lang/String;
    :cond_1
    iput v4, p0, Lcom/android/server/ConnectivityService;->mNumDnsEntries:I

    #@54
    .line 4587
    return-void
.end method

.method private setLockdownTracker(Lcom/android/server/net/LockdownVpnTracker;)V
    .locals 5
    .param p1, "tracker"    # Lcom/android/server/net/LockdownVpnTracker;

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 3673
    iget-object v1, p0, Lcom/android/server/ConnectivityService;->mLockdownTracker:Lcom/android/server/net/LockdownVpnTracker;

    #@3
    .line 3674
    .local v1, "existing":Lcom/android/server/net/LockdownVpnTracker;
    iput-object v2, p0, Lcom/android/server/ConnectivityService;->mLockdownTracker:Lcom/android/server/net/LockdownVpnTracker;

    #@5
    .line 3675
    if-eqz v1, :cond_0

    #@7
    .line 3676
    invoke-virtual {v1}, Lcom/android/server/net/LockdownVpnTracker;->shutdown()V

    #@a
    .line 3680
    :cond_0
    if-eqz p1, :cond_1

    #@c
    .line 3681
    :try_start_0
    iget-object v2, p0, Lcom/android/server/ConnectivityService;->mNetd:Landroid/os/INetworkManagementService;

    #@e
    const/4 v3, 0x1

    #@f
    invoke-interface {v2, v3}, Landroid/os/INetworkManagementService;->setFirewallEnabled(Z)V

    #@12
    .line 3682
    iget-object v2, p0, Lcom/android/server/ConnectivityService;->mNetd:Landroid/os/INetworkManagementService;

    #@14
    const-string/jumbo v3, "lo"

    #@17
    const/4 v4, 0x1

    #@18
    invoke-interface {v2, v3, v4}, Landroid/os/INetworkManagementService;->setFirewallInterfaceRule(Ljava/lang/String;Z)V

    #@1b
    .line 3683
    iput-object p1, p0, Lcom/android/server/ConnectivityService;->mLockdownTracker:Lcom/android/server/net/LockdownVpnTracker;

    #@1d
    .line 3684
    iget-object v2, p0, Lcom/android/server/ConnectivityService;->mLockdownTracker:Lcom/android/server/net/LockdownVpnTracker;

    #@1f
    invoke-virtual {v2}, Lcom/android/server/net/LockdownVpnTracker;->init()V

    #@22
    .line 3671
    :goto_0
    return-void

    #@23
    .line 3686
    :cond_1
    iget-object v2, p0, Lcom/android/server/ConnectivityService;->mNetd:Landroid/os/INetworkManagementService;

    #@25
    const/4 v3, 0x0

    #@26
    invoke-interface {v2, v3}, Landroid/os/INetworkManagementService;->setFirewallEnabled(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@29
    goto :goto_0

    #@2a
    .line 3688
    :catch_0
    move-exception v0

    #@2b
    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method private setupDataActivityTracking(Lcom/android/server/connectivity/NetworkAgentInfo;)V
    .locals 7
    .param p1, "networkAgent"    # Lcom/android/server/connectivity/NetworkAgentInfo;

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    .line 1757
    iget-object v4, p1, Lcom/android/server/connectivity/NetworkAgentInfo;->linkProperties:Landroid/net/LinkProperties;

    #@3
    invoke-virtual {v4}, Landroid/net/LinkProperties;->getInterfaceName()Ljava/lang/String;

    #@6
    move-result-object v1

    #@7
    .line 1760
    .local v1, "iface":Ljava/lang/String;
    const/4 v3, -0x1

    #@8
    .line 1762
    .local v3, "type":I
    iget-object v4, p1, Lcom/android/server/connectivity/NetworkAgentInfo;->networkCapabilities:Landroid/net/NetworkCapabilities;

    #@a
    invoke-virtual {v4, v5}, Landroid/net/NetworkCapabilities;->hasTransport(I)Z

    #@d
    move-result v4

    #@e
    if-eqz v4, :cond_1

    #@10
    .line 1764
    iget-object v4, p0, Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;

    #@12
    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    #@15
    move-result-object v4

    #@16
    .line 1765
    const-string/jumbo v5, "data_activity_timeout_mobile"

    #@19
    .line 1766
    const/16 v6, 0xa

    #@1b
    .line 1764
    invoke-static {v4, v5, v6}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    #@1e
    move-result v2

    #@1f
    .line 1767
    .local v2, "timeout":I
    const/4 v3, 0x0

    #@20
    .line 1779
    :goto_0
    if-lez v2, :cond_0

    #@22
    if-eqz v1, :cond_0

    #@24
    const/4 v4, -0x1

    #@25
    if-eq v3, v4, :cond_0

    #@27
    .line 1781
    :try_start_0
    iget-object v4, p0, Lcom/android/server/ConnectivityService;->mNetd:Landroid/os/INetworkManagementService;

    #@29
    invoke-interface {v4, v1, v2, v3}, Landroid/os/INetworkManagementService;->addIdleTimer(Ljava/lang/String;II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    #@2c
    .line 1756
    :cond_0
    :goto_1
    return-void

    #@2d
    .line 1768
    .end local v2    # "timeout":I
    :cond_1
    iget-object v4, p1, Lcom/android/server/connectivity/NetworkAgentInfo;->networkCapabilities:Landroid/net/NetworkCapabilities;

    #@2f
    .line 1769
    const/4 v5, 0x1

    #@30
    .line 1768
    invoke-virtual {v4, v5}, Landroid/net/NetworkCapabilities;->hasTransport(I)Z

    #@33
    move-result v4

    #@34
    if-eqz v4, :cond_2

    #@36
    .line 1770
    iget-object v4, p0, Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;

    #@38
    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    #@3b
    move-result-object v4

    #@3c
    .line 1771
    const-string/jumbo v5, "data_activity_timeout_wifi"

    #@3f
    .line 1772
    const/16 v6, 0xf

    #@41
    .line 1770
    invoke-static {v4, v5, v6}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    #@44
    move-result v2

    #@45
    .line 1773
    .restart local v2    # "timeout":I
    const/4 v3, 0x1

    #@46
    goto :goto_0

    #@47
    .line 1776
    .end local v2    # "timeout":I
    :cond_2
    const/4 v2, 0x0

    #@48
    .restart local v2    # "timeout":I
    goto :goto_0

    #@49
    .line 1782
    :catch_0
    move-exception v0

    #@4a
    .line 1784
    .local v0, "e":Ljava/lang/Exception;
    new-instance v4, Ljava/lang/StringBuilder;

    #@4c
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@4f
    const-string/jumbo v5, "Exception in setupDataActivityTracking "

    #@52
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@55
    move-result-object v4

    #@56
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@59
    move-result-object v4

    #@5a
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@5d
    move-result-object v4

    #@5e
    invoke-static {v4}, Lcom/android/server/ConnectivityService;->loge(Ljava/lang/String;)V

    #@61
    goto :goto_1
.end method

.method private showValidationNotification(Lcom/android/server/connectivity/NetworkAgentInfo;Lcom/android/server/connectivity/NetworkNotificationManager$NotificationType;)V
    .locals 13
    .param p1, "nai"    # Lcom/android/server/connectivity/NetworkAgentInfo;
    .param p2, "type"    # Lcom/android/server/connectivity/NetworkNotificationManager$NotificationType;

    #@0
    .prologue
    const/high16 v3, 0x10000000

    #@2
    const/4 v4, 0x0

    #@3
    .line 2828
    invoke-static {}, Lcom/android/server/ConnectivityService;->-getcom-android-server-connectivity-NetworkNotificationManager$NotificationTypeSwitchesValues()[I

    #@6
    move-result-object v0

    #@7
    invoke-virtual {p2}, Lcom/android/server/connectivity/NetworkNotificationManager$NotificationType;->ordinal()I

    #@a
    move-result v1

    #@b
    aget v0, v0, v1

    #@d
    packed-switch v0, :pswitch_data_0

    #@10
    .line 2836
    sget-object v0, Lcom/android/server/ConnectivityService;->TAG:Ljava/lang/String;

    #@12
    new-instance v1, Ljava/lang/StringBuilder;

    #@14
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@17
    const-string/jumbo v3, "Unknown notification type "

    #@1a
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1d
    move-result-object v1

    #@1e
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@21
    move-result-object v1

    #@22
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@25
    move-result-object v1

    #@26
    invoke-static {v0, v1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    #@29
    .line 2837
    return-void

    #@2a
    .line 2830
    :pswitch_0
    const-string/jumbo v12, "android.net.conn.PROMPT_UNVALIDATED"

    #@2d
    .line 2840
    .local v12, "action":Ljava/lang/String;
    :goto_0
    new-instance v2, Landroid/content/Intent;

    #@2f
    invoke-direct {v2, v12}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    #@32
    .line 2841
    .local v2, "intent":Landroid/content/Intent;
    const-string/jumbo v0, "netId"

    #@35
    iget-object v1, p1, Lcom/android/server/connectivity/NetworkAgentInfo;->network:Landroid/net/Network;

    #@37
    iget v1, v1, Landroid/net/Network;->netId:I

    #@39
    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    #@3c
    move-result-object v1

    #@3d
    invoke-static {v0, v1, v4}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    #@40
    move-result-object v0

    #@41
    invoke-virtual {v2, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    #@44
    .line 2842
    invoke-virtual {v2, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    #@47
    .line 2843
    const-string/jumbo v0, "com.android.settings"

    #@4a
    .line 2844
    const-string/jumbo v1, "com.android.settings.wifi.WifiNoInternetDialog"

    #@4d
    .line 2843
    invoke-virtual {v2, v0, v1}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    #@50
    .line 2847
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;

    #@52
    sget-object v5, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    #@54
    const/4 v1, 0x0

    #@55
    .line 2846
    invoke-static/range {v0 .. v5}, Landroid/app/PendingIntent;->getActivityAsUser(Landroid/content/Context;ILandroid/content/Intent;ILandroid/os/Bundle;Landroid/os/UserHandle;)Landroid/app/PendingIntent;

    #@58
    move-result-object v10

    #@59
    .line 2848
    .local v10, "pendingIntent":Landroid/app/PendingIntent;
    iget-object v5, p0, Lcom/android/server/ConnectivityService;->mNotifier:Lcom/android/server/connectivity/NetworkNotificationManager;

    #@5b
    iget-object v0, p1, Lcom/android/server/connectivity/NetworkAgentInfo;->network:Landroid/net/Network;

    #@5d
    iget v6, v0, Landroid/net/Network;->netId:I

    #@5f
    const/4 v11, 0x1

    #@60
    move-object v7, p2

    #@61
    move-object v8, p1

    #@62
    move-object v9, v4

    #@63
    invoke-virtual/range {v5 .. v11}, Lcom/android/server/connectivity/NetworkNotificationManager;->showNotification(ILcom/android/server/connectivity/NetworkNotificationManager$NotificationType;Lcom/android/server/connectivity/NetworkAgentInfo;Lcom/android/server/connectivity/NetworkAgentInfo;Landroid/app/PendingIntent;Z)V

    #@66
    .line 2826
    return-void

    #@67
    .line 2833
    .end local v2    # "intent":Landroid/content/Intent;
    .end local v10    # "pendingIntent":Landroid/app/PendingIntent;
    .end local v12    # "action":Ljava/lang/String;
    :pswitch_1
    const-string/jumbo v12, "android.net.conn.PROMPT_LOST_VALIDATION"

    #@6a
    .restart local v12    # "action":Ljava/lang/String;
    goto :goto_0

    #@6b
    .line 2828
    nop

    #@6c
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private startAlwaysOnVpn(I)Z
    .locals 5
    .param p1, "userId"    # I

    #@0
    .prologue
    .line 3707
    iget-object v2, p0, Lcom/android/server/ConnectivityService;->mVpns:Landroid/util/SparseArray;

    #@2
    monitor-enter v2

    #@3
    .line 3708
    :try_start_0
    iget-object v1, p0, Lcom/android/server/ConnectivityService;->mVpns:Landroid/util/SparseArray;

    #@5
    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    #@8
    move-result-object v0

    #@9
    check-cast v0, Lcom/android/server/connectivity/Vpn;

    #@b
    .line 3709
    .local v0, "vpn":Lcom/android/server/connectivity/Vpn;
    if-nez v0, :cond_0

    #@d
    .line 3712
    sget-object v1, Lcom/android/server/ConnectivityService;->TAG:Ljava/lang/String;

    #@f
    new-instance v3, Ljava/lang/StringBuilder;

    #@11
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@14
    const-string/jumbo v4, "User "

    #@17
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1a
    move-result-object v3

    #@1b
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@1e
    move-result-object v3

    #@1f
    const-string/jumbo v4, " has no Vpn configuration"

    #@22
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@25
    move-result-object v3

    #@26
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@29
    move-result-object v3

    #@2a
    invoke-static {v1, v3}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@2d
    .line 3713
    const/4 v1, 0x0

    #@2e
    monitor-exit v2

    #@2f
    return v1

    #@30
    .line 3716
    :cond_0
    :try_start_1
    invoke-virtual {v0}, Lcom/android/server/connectivity/Vpn;->startAlwaysOnVpn()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@33
    move-result v1

    #@34
    monitor-exit v2

    #@35
    return v1

    #@36
    .line 3707
    .end local v0    # "vpn":Lcom/android/server/connectivity/Vpn;
    :catchall_0
    move-exception v1

    #@37
    monitor-exit v2

    #@38
    throw v1
.end method

.method private teardownUnneededNetwork(Lcom/android/server/connectivity/NetworkAgentInfo;)V
    .locals 4
    .param p1, "nai"    # Lcom/android/server/connectivity/NetworkAgentInfo;

    #@0
    .prologue
    .line 4774
    invoke-virtual {p1}, Lcom/android/server/connectivity/NetworkAgentInfo;->numRequestNetworkRequests()I

    #@3
    move-result v2

    #@4
    if-eqz v2, :cond_1

    #@6
    .line 4775
    const/4 v0, 0x0

    #@7
    .local v0, "i":I
    :goto_0
    invoke-virtual {p1}, Lcom/android/server/connectivity/NetworkAgentInfo;->numNetworkRequests()I

    #@a
    move-result v2

    #@b
    if-ge v0, v2, :cond_1

    #@d
    .line 4776
    invoke-virtual {p1, v0}, Lcom/android/server/connectivity/NetworkAgentInfo;->requestAt(I)Landroid/net/NetworkRequest;

    #@10
    move-result-object v1

    #@11
    .line 4778
    .local v1, "nr":Landroid/net/NetworkRequest;
    invoke-virtual {v1}, Landroid/net/NetworkRequest;->isListen()Z

    #@14
    move-result v2

    #@15
    if-eqz v2, :cond_0

    #@17
    .line 4775
    add-int/lit8 v0, v0, 0x1

    #@19
    goto :goto_0

    #@1a
    .line 4779
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    #@1c
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@1f
    const-string/jumbo v3, "Dead network still had at least "

    #@22
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@25
    move-result-object v2

    #@26
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@29
    move-result-object v2

    #@2a
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2d
    move-result-object v2

    #@2e
    invoke-static {v2}, Lcom/android/server/ConnectivityService;->loge(Ljava/lang/String;)V

    #@31
    .line 4783
    .end local v0    # "i":I
    .end local v1    # "nr":Landroid/net/NetworkRequest;
    :cond_1
    iget-object v2, p1, Lcom/android/server/connectivity/NetworkAgentInfo;->asyncChannel:Lcom/android/internal/util/AsyncChannel;

    #@33
    invoke-virtual {v2}, Lcom/android/internal/util/AsyncChannel;->disconnect()V

    #@36
    .line 4773
    return-void
.end method

.method private throwIfLockdownEnabled()V
    .locals 2

    #@0
    .prologue
    .line 3694
    iget-boolean v0, p0, Lcom/android/server/ConnectivityService;->mLockdownEnabled:Z

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 3695
    new-instance v0, Ljava/lang/IllegalStateException;

    #@6
    const-string/jumbo v1, "Unavailable in lockdown mode"

    #@9
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@c
    throw v0

    #@d
    .line 3693
    :cond_0
    return-void
.end method

.method private unneeded(Lcom/android/server/connectivity/NetworkAgentInfo;Lcom/android/server/ConnectivityService$UnneededFor;)Z
    .locals 7
    .param p1, "nai"    # Lcom/android/server/connectivity/NetworkAgentInfo;
    .param p2, "reason"    # Lcom/android/server/ConnectivityService$UnneededFor;

    #@0
    .prologue
    const/4 v6, 0x1

    #@1
    const/4 v5, 0x0

    #@2
    .line 2515
    invoke-static {}, Lcom/android/server/ConnectivityService;->-getcom-android-server-ConnectivityService$UnneededForSwitchesValues()[I

    #@5
    move-result-object v3

    #@6
    invoke-virtual {p2}, Lcom/android/server/ConnectivityService$UnneededFor;->ordinal()I

    #@9
    move-result v4

    #@a
    aget v3, v3, v4

    #@c
    packed-switch v3, :pswitch_data_0

    #@f
    .line 2523
    sget-object v3, Lcom/android/server/ConnectivityService;->TAG:Ljava/lang/String;

    #@11
    const-string/jumbo v4, "Invalid reason. Cannot happen."

    #@14
    invoke-static {v3, v4}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    #@17
    .line 2524
    return v6

    #@18
    .line 2517
    :pswitch_0
    invoke-virtual {p1}, Lcom/android/server/connectivity/NetworkAgentInfo;->numRequestNetworkRequests()I

    #@1b
    move-result v2

    #@1c
    .line 2527
    .local v2, "numRequests":I
    :goto_0
    iget-boolean v3, p1, Lcom/android/server/connectivity/NetworkAgentInfo;->everConnected:Z

    #@1e
    if-eqz v3, :cond_0

    #@20
    invoke-virtual {p1}, Lcom/android/server/connectivity/NetworkAgentInfo;->isVPN()Z

    #@23
    move-result v3

    #@24
    if-nez v3, :cond_0

    #@26
    invoke-virtual {p1}, Lcom/android/server/connectivity/NetworkAgentInfo;->isLingering()Z

    #@29
    move-result v3

    #@2a
    if-nez v3, :cond_0

    #@2c
    if-lez v2, :cond_1

    #@2e
    .line 2528
    :cond_0
    return v5

    #@2f
    .line 2520
    .end local v2    # "numRequests":I
    :pswitch_1
    invoke-virtual {p1}, Lcom/android/server/connectivity/NetworkAgentInfo;->numForegroundNetworkRequests()I

    #@32
    move-result v2

    #@33
    .restart local v2    # "numRequests":I
    goto :goto_0

    #@34
    .line 2530
    :cond_1
    iget-object v3, p0, Lcom/android/server/ConnectivityService;->mNetworkRequests:Ljava/util/HashMap;

    #@36
    invoke-virtual {v3}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    #@39
    move-result-object v3

    #@3a
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@3d
    move-result-object v1

    #@3e
    .local v1, "nri$iterator":Ljava/util/Iterator;
    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@41
    move-result v3

    #@42
    if-eqz v3, :cond_5

    #@44
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@47
    move-result-object v0

    #@48
    check-cast v0, Lcom/android/server/ConnectivityService$NetworkRequestInfo;

    #@4a
    .line 2531
    .local v0, "nri":Lcom/android/server/ConnectivityService$NetworkRequestInfo;
    sget-object v3, Lcom/android/server/ConnectivityService$UnneededFor;->LINGER:Lcom/android/server/ConnectivityService$UnneededFor;

    #@4c
    if-ne p2, v3, :cond_3

    #@4e
    iget-object v3, v0, Lcom/android/server/ConnectivityService$NetworkRequestInfo;->request:Landroid/net/NetworkRequest;

    #@50
    invoke-virtual {v3}, Landroid/net/NetworkRequest;->isBackgroundRequest()Z

    #@53
    move-result v3

    #@54
    if-nez v3, :cond_2

    #@56
    .line 2538
    :cond_3
    iget-object v3, v0, Lcom/android/server/ConnectivityService$NetworkRequestInfo;->request:Landroid/net/NetworkRequest;

    #@58
    invoke-virtual {v3}, Landroid/net/NetworkRequest;->isRequest()Z

    #@5b
    move-result v3

    #@5c
    if-eqz v3, :cond_2

    #@5e
    iget-object v3, v0, Lcom/android/server/ConnectivityService$NetworkRequestInfo;->request:Landroid/net/NetworkRequest;

    #@60
    invoke-virtual {p1, v3}, Lcom/android/server/connectivity/NetworkAgentInfo;->satisfies(Landroid/net/NetworkRequest;)Z

    #@63
    move-result v3

    #@64
    if-eqz v3, :cond_2

    #@66
    .line 2539
    iget-object v3, v0, Lcom/android/server/ConnectivityService$NetworkRequestInfo;->request:Landroid/net/NetworkRequest;

    #@68
    iget v3, v3, Landroid/net/NetworkRequest;->requestId:I

    #@6a
    invoke-virtual {p1, v3}, Lcom/android/server/connectivity/NetworkAgentInfo;->isSatisfyingRequest(I)Z

    #@6d
    move-result v3

    #@6e
    if-nez v3, :cond_4

    #@70
    .line 2547
    iget-object v3, p0, Lcom/android/server/ConnectivityService;->mNetworkForRequestId:Landroid/util/SparseArray;

    #@72
    iget-object v4, v0, Lcom/android/server/ConnectivityService$NetworkRequestInfo;->request:Landroid/net/NetworkRequest;

    #@74
    iget v4, v4, Landroid/net/NetworkRequest;->requestId:I

    #@76
    invoke-virtual {v3, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    #@79
    move-result-object v3

    #@7a
    check-cast v3, Lcom/android/server/connectivity/NetworkAgentInfo;

    #@7c
    invoke-virtual {v3}, Lcom/android/server/connectivity/NetworkAgentInfo;->getCurrentScore()I

    #@7f
    move-result v3

    #@80
    .line 2548
    invoke-virtual {p1}, Lcom/android/server/connectivity/NetworkAgentInfo;->getCurrentScoreAsValidated()I

    #@83
    move-result v4

    #@84
    .line 2547
    if-ge v3, v4, :cond_2

    #@86
    .line 2549
    :cond_4
    return v5

    #@87
    .line 2552
    .end local v0    # "nri":Lcom/android/server/ConnectivityService$NetworkRequestInfo;
    :cond_5
    return v6

    #@88
    .line 2515
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private updateCapabilities(ILcom/android/server/connectivity/NetworkAgentInfo;Landroid/net/NetworkCapabilities;)V
    .locals 11
    .param p1, "oldScore"    # I
    .param p2, "nai"    # Lcom/android/server/connectivity/NetworkAgentInfo;
    .param p3, "networkCapabilities"    # Landroid/net/NetworkCapabilities;

    #@0
    .prologue
    const/16 v10, 0x12

    #@2
    const/16 v9, 0x11

    #@4
    const/16 v8, 0x10

    #@6
    .line 4625
    iget-boolean v5, p2, Lcom/android/server/connectivity/NetworkAgentInfo;->everConnected:Z

    #@8
    if-eqz v5, :cond_0

    #@a
    iget-object v5, p2, Lcom/android/server/connectivity/NetworkAgentInfo;->networkCapabilities:Landroid/net/NetworkCapabilities;

    #@c
    invoke-virtual {v5, p3}, Landroid/net/NetworkCapabilities;->equalImmutableCapabilities(Landroid/net/NetworkCapabilities;)Z

    #@f
    move-result v5

    #@10
    if-eqz v5, :cond_1

    #@12
    .line 4632
    :cond_0
    :goto_0
    new-instance v1, Landroid/net/NetworkCapabilities;

    #@14
    invoke-direct {v1, p3}, Landroid/net/NetworkCapabilities;-><init>(Landroid/net/NetworkCapabilities;)V

    #@17
    .line 4633
    .end local p3    # "networkCapabilities":Landroid/net/NetworkCapabilities;
    .local v1, "networkCapabilities":Landroid/net/NetworkCapabilities;
    iget-boolean v5, p2, Lcom/android/server/connectivity/NetworkAgentInfo;->lastValidated:Z

    #@19
    if-eqz v5, :cond_2

    #@1b
    .line 4634
    invoke-virtual {v1, v8}, Landroid/net/NetworkCapabilities;->addCapability(I)Landroid/net/NetworkCapabilities;

    #@1e
    .line 4638
    :goto_1
    iget-boolean v5, p2, Lcom/android/server/connectivity/NetworkAgentInfo;->lastCaptivePortalDetected:Z

    #@20
    if-eqz v5, :cond_3

    #@22
    .line 4639
    invoke-virtual {v1, v9}, Landroid/net/NetworkCapabilities;->addCapability(I)Landroid/net/NetworkCapabilities;

    #@25
    .line 4643
    :goto_2
    invoke-virtual {p2}, Lcom/android/server/connectivity/NetworkAgentInfo;->isBackgroundNetwork()Z

    #@28
    move-result v5

    #@29
    if-eqz v5, :cond_4

    #@2b
    .line 4644
    invoke-virtual {v1, v10}, Landroid/net/NetworkCapabilities;->removeCapability(I)Landroid/net/NetworkCapabilities;

    #@2e
    .line 4649
    :goto_3
    iget-object v5, p2, Lcom/android/server/connectivity/NetworkAgentInfo;->networkCapabilities:Landroid/net/NetworkCapabilities;

    #@30
    invoke-static {v5, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    #@33
    move-result v5

    #@34
    if-eqz v5, :cond_5

    #@36
    return-void

    #@37
    .line 4627
    .end local v1    # "networkCapabilities":Landroid/net/NetworkCapabilities;
    .restart local p3    # "networkCapabilities":Landroid/net/NetworkCapabilities;
    :cond_1
    sget-object v5, Lcom/android/server/ConnectivityService;->TAG:Ljava/lang/String;

    #@39
    new-instance v6, Ljava/lang/StringBuilder;

    #@3b
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@3e
    const-string/jumbo v7, "BUG: "

    #@41
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@44
    move-result-object v6

    #@45
    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@48
    move-result-object v6

    #@49
    const-string/jumbo v7, " changed immutable capabilities: "

    #@4c
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4f
    move-result-object v6

    #@50
    .line 4628
    iget-object v7, p2, Lcom/android/server/connectivity/NetworkAgentInfo;->networkCapabilities:Landroid/net/NetworkCapabilities;

    #@52
    .line 4627
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@55
    move-result-object v6

    #@56
    .line 4628
    const-string/jumbo v7, " -> "

    #@59
    .line 4627
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5c
    move-result-object v6

    #@5d
    invoke-virtual {v6, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@60
    move-result-object v6

    #@61
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@64
    move-result-object v6

    #@65
    invoke-static {v5, v6}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    #@68
    goto :goto_0

    #@69
    .line 4636
    .end local p3    # "networkCapabilities":Landroid/net/NetworkCapabilities;
    .restart local v1    # "networkCapabilities":Landroid/net/NetworkCapabilities;
    :cond_2
    invoke-virtual {v1, v8}, Landroid/net/NetworkCapabilities;->removeCapability(I)Landroid/net/NetworkCapabilities;

    #@6c
    goto :goto_1

    #@6d
    .line 4641
    :cond_3
    invoke-virtual {v1, v9}, Landroid/net/NetworkCapabilities;->removeCapability(I)Landroid/net/NetworkCapabilities;

    #@70
    goto :goto_2

    #@71
    .line 4646
    :cond_4
    invoke-virtual {v1, v10}, Landroid/net/NetworkCapabilities;->addCapability(I)Landroid/net/NetworkCapabilities;

    #@74
    goto :goto_3

    #@75
    .line 4651
    :cond_5
    iget-object v5, p2, Lcom/android/server/connectivity/NetworkAgentInfo;->networkCapabilities:Landroid/net/NetworkCapabilities;

    #@77
    invoke-direct {p0, v5}, Lcom/android/server/ConnectivityService;->getNetworkPermission(Landroid/net/NetworkCapabilities;)Ljava/lang/String;

    #@7a
    move-result-object v3

    #@7b
    .line 4652
    .local v3, "oldPermission":Ljava/lang/String;
    invoke-direct {p0, v1}, Lcom/android/server/ConnectivityService;->getNetworkPermission(Landroid/net/NetworkCapabilities;)Ljava/lang/String;

    #@7e
    move-result-object v2

    #@7f
    .line 4653
    .local v2, "newPermission":Ljava/lang/String;
    invoke-static {v3, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    #@82
    move-result v5

    #@83
    if-nez v5, :cond_6

    #@85
    iget-boolean v5, p2, Lcom/android/server/connectivity/NetworkAgentInfo;->created:Z

    #@87
    if-eqz v5, :cond_6

    #@89
    invoke-virtual {p2}, Lcom/android/server/connectivity/NetworkAgentInfo;->isVPN()Z

    #@8c
    move-result v5

    #@8d
    if-eqz v5, :cond_7

    #@8f
    .line 4661
    :cond_6
    :goto_4
    iget-object v4, p2, Lcom/android/server/connectivity/NetworkAgentInfo;->networkCapabilities:Landroid/net/NetworkCapabilities;

    #@91
    .line 4662
    .local v4, "prevNc":Landroid/net/NetworkCapabilities;
    monitor-enter p2

    #@92
    .line 4663
    :try_start_0
    iput-object v1, p2, Lcom/android/server/connectivity/NetworkAgentInfo;->networkCapabilities:Landroid/net/NetworkCapabilities;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@94
    monitor-exit p2

    #@95
    .line 4665
    invoke-virtual {p2}, Lcom/android/server/connectivity/NetworkAgentInfo;->getCurrentScore()I

    #@98
    move-result v5

    #@99
    if-ne v5, p1, :cond_8

    #@9b
    .line 4666
    invoke-virtual {v1, v4}, Landroid/net/NetworkCapabilities;->equalRequestableCapabilities(Landroid/net/NetworkCapabilities;)Z

    #@9e
    move-result v5

    #@9f
    .line 4665
    if-eqz v5, :cond_8

    #@a1
    .line 4671
    const/4 v5, 0x1

    #@a2
    invoke-direct {p0, p2, v5}, Lcom/android/server/ConnectivityService;->processListenRequests(Lcom/android/server/connectivity/NetworkAgentInfo;Z)V

    #@a5
    .line 4624
    :goto_5
    return-void

    #@a6
    .line 4655
    .end local v4    # "prevNc":Landroid/net/NetworkCapabilities;
    :cond_7
    :try_start_1
    iget-object v5, p0, Lcom/android/server/ConnectivityService;->mNetd:Landroid/os/INetworkManagementService;

    #@a8
    iget-object v6, p2, Lcom/android/server/connectivity/NetworkAgentInfo;->network:Landroid/net/Network;

    #@aa
    iget v6, v6, Landroid/net/Network;->netId:I

    #@ac
    invoke-interface {v5, v6, v2}, Landroid/os/INetworkManagementService;->setNetworkPermission(ILjava/lang/String;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    #@af
    goto :goto_4

    #@b0
    .line 4656
    :catch_0
    move-exception v0

    #@b1
    .line 4657
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v5, Ljava/lang/StringBuilder;

    #@b3
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@b6
    const-string/jumbo v6, "Exception in setNetworkPermission: "

    #@b9
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@bc
    move-result-object v5

    #@bd
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@c0
    move-result-object v5

    #@c1
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@c4
    move-result-object v5

    #@c5
    invoke-static {v5}, Lcom/android/server/ConnectivityService;->loge(Ljava/lang/String;)V

    #@c8
    goto :goto_4

    #@c9
    .line 4662
    .end local v0    # "e":Landroid/os/RemoteException;
    .restart local v4    # "prevNc":Landroid/net/NetworkCapabilities;
    :catchall_0
    move-exception v5

    #@ca
    monitor-exit p2

    #@cb
    throw v5

    #@cc
    .line 4675
    :cond_8
    invoke-direct {p0, p2, p1}, Lcom/android/server/ConnectivityService;->rematchAllNetworksAndRequests(Lcom/android/server/connectivity/NetworkAgentInfo;I)V

    #@cf
    .line 4676
    const v5, 0x80006

    #@d2
    invoke-virtual {p0, p2, v5}, Lcom/android/server/ConnectivityService;->notifyNetworkCallbacks(Lcom/android/server/connectivity/NetworkAgentInfo;I)V

    #@d5
    goto :goto_5
.end method

.method private updateClat(Landroid/net/LinkProperties;Landroid/net/LinkProperties;Lcom/android/server/connectivity/NetworkAgentInfo;)V
    .locals 6
    .param p1, "newLp"    # Landroid/net/LinkProperties;
    .param p2, "oldLp"    # Landroid/net/LinkProperties;
    .param p3, "nai"    # Lcom/android/server/connectivity/NetworkAgentInfo;

    #@0
    .prologue
    .line 4482
    iget-object v2, p3, Lcom/android/server/connectivity/NetworkAgentInfo;->clatd:Lcom/android/server/connectivity/Nat464Xlat;

    #@2
    if-eqz v2, :cond_1

    #@4
    iget-object v2, p3, Lcom/android/server/connectivity/NetworkAgentInfo;->clatd:Lcom/android/server/connectivity/Nat464Xlat;

    #@6
    invoke-virtual {v2}, Lcom/android/server/connectivity/Nat464Xlat;->isStarted()Z

    #@9
    move-result v1

    #@a
    .line 4483
    :goto_0
    invoke-static {p3}, Lcom/android/server/connectivity/Nat464Xlat;->requiresClat(Lcom/android/server/connectivity/NetworkAgentInfo;)Z

    #@d
    move-result v0

    #@e
    .line 4485
    .local v0, "shouldRunClat":Z
    if-nez v1, :cond_2

    #@10
    if-eqz v0, :cond_2

    #@12
    .line 4486
    new-instance v2, Lcom/android/server/connectivity/Nat464Xlat;

    #@14
    iget-object v3, p0, Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;

    #@16
    iget-object v4, p0, Lcom/android/server/ConnectivityService;->mNetd:Landroid/os/INetworkManagementService;

    #@18
    iget-object v5, p0, Lcom/android/server/ConnectivityService;->mTrackerHandler:Lcom/android/server/ConnectivityService$NetworkStateTrackerHandler;

    #@1a
    invoke-direct {v2, v3, v4, v5, p3}, Lcom/android/server/connectivity/Nat464Xlat;-><init>(Landroid/content/Context;Landroid/os/INetworkManagementService;Landroid/os/Handler;Lcom/android/server/connectivity/NetworkAgentInfo;)V

    #@1d
    iput-object v2, p3, Lcom/android/server/connectivity/NetworkAgentInfo;->clatd:Lcom/android/server/connectivity/Nat464Xlat;

    #@1f
    .line 4487
    iget-object v2, p3, Lcom/android/server/connectivity/NetworkAgentInfo;->clatd:Lcom/android/server/connectivity/Nat464Xlat;

    #@21
    invoke-virtual {v2}, Lcom/android/server/connectivity/Nat464Xlat;->start()V

    #@24
    .line 4481
    :cond_0
    :goto_1
    return-void

    #@25
    .line 4482
    .end local v0    # "shouldRunClat":Z
    :cond_1
    const/4 v1, 0x0

    #@26
    .local v1, "wasRunningClat":Z
    goto :goto_0

    #@27
    .line 4488
    .end local v1    # "wasRunningClat":Z
    .restart local v0    # "shouldRunClat":Z
    :cond_2
    if-eqz v1, :cond_0

    #@29
    if-nez v0, :cond_0

    #@2b
    .line 4489
    iget-object v2, p3, Lcom/android/server/connectivity/NetworkAgentInfo;->clatd:Lcom/android/server/connectivity/Nat464Xlat;

    #@2d
    invoke-virtual {v2}, Lcom/android/server/connectivity/Nat464Xlat;->stop()V

    #@30
    goto :goto_1
.end method

.method private updateDnses(Landroid/net/LinkProperties;Landroid/net/LinkProperties;I)V
    .locals 6
    .param p1, "newLp"    # Landroid/net/LinkProperties;
    .param p2, "oldLp"    # Landroid/net/LinkProperties;
    .param p3, "netId"    # I

    #@0
    .prologue
    .line 4568
    if-eqz p2, :cond_0

    #@2
    invoke-virtual {p1, p2}, Landroid/net/LinkProperties;->isIdenticalDnses(Landroid/net/LinkProperties;)Z

    #@5
    move-result v3

    #@6
    if-eqz v3, :cond_0

    #@8
    .line 4569
    return-void

    #@9
    .line 4572
    :cond_0
    invoke-virtual {p1}, Landroid/net/LinkProperties;->getDnsServers()Ljava/util/List;

    #@c
    move-result-object v1

    #@d
    .line 4573
    .local v1, "dnses":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/net/InetAddress;>;"
    new-instance v3, Ljava/lang/StringBuilder;

    #@f
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@12
    const-string/jumbo v4, "Setting DNS servers for network "

    #@15
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@18
    move-result-object v3

    #@19
    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@1c
    move-result-object v3

    #@1d
    const-string/jumbo v4, " to "

    #@20
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@23
    move-result-object v3

    #@24
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@27
    move-result-object v3

    #@28
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2b
    move-result-object v3

    #@2c
    invoke-static {v3}, Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V

    #@2f
    .line 4575
    :try_start_0
    iget-object v3, p0, Lcom/android/server/ConnectivityService;->mNetd:Landroid/os/INetworkManagementService;

    #@31
    .line 4576
    invoke-static {v1}, Landroid/net/NetworkUtils;->makeStrings(Ljava/util/Collection;)[Ljava/lang/String;

    #@34
    move-result-object v4

    #@35
    invoke-virtual {p1}, Landroid/net/LinkProperties;->getDomains()Ljava/lang/String;

    #@38
    move-result-object v5

    #@39
    .line 4575
    invoke-interface {v3, p3, v4, v5}, Landroid/os/INetworkManagementService;->setDnsConfigurationForNetwork(I[Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    #@3c
    .line 4580
    :goto_0
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->getDefaultNetwork()Lcom/android/server/connectivity/NetworkAgentInfo;

    #@3f
    move-result-object v0

    #@40
    .line 4581
    .local v0, "defaultNai":Lcom/android/server/connectivity/NetworkAgentInfo;
    if-eqz v0, :cond_1

    #@42
    iget-object v3, v0, Lcom/android/server/connectivity/NetworkAgentInfo;->network:Landroid/net/Network;

    #@44
    iget v3, v3, Landroid/net/Network;->netId:I

    #@46
    if-ne v3, p3, :cond_1

    #@48
    .line 4582
    invoke-direct {p0, v1}, Lcom/android/server/ConnectivityService;->setDefaultDnsSystemProperties(Ljava/util/Collection;)V

    #@4b
    .line 4584
    :cond_1
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->flushVmDnsCache()V

    #@4e
    .line 4567
    return-void

    #@4f
    .line 4577
    .end local v0    # "defaultNai":Lcom/android/server/connectivity/NetworkAgentInfo;
    :catch_0
    move-exception v2

    #@50
    .line 4578
    .local v2, "e":Ljava/lang/Exception;
    new-instance v3, Ljava/lang/StringBuilder;

    #@52
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@55
    const-string/jumbo v4, "Exception in setDnsConfigurationForNetwork: "

    #@58
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5b
    move-result-object v3

    #@5c
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@5f
    move-result-object v3

    #@60
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@63
    move-result-object v3

    #@64
    invoke-static {v3}, Lcom/android/server/ConnectivityService;->loge(Ljava/lang/String;)V

    #@67
    goto :goto_0
.end method

.method private updateInetCondition(Lcom/android/server/connectivity/NetworkAgentInfo;)V
    .locals 2
    .param p1, "nai"    # Lcom/android/server/connectivity/NetworkAgentInfo;

    #@0
    .prologue
    .line 5162
    iget-boolean v1, p1, Lcom/android/server/connectivity/NetworkAgentInfo;->everValidated:Z

    #@2
    if-nez v1, :cond_0

    #@4
    return-void

    #@5
    .line 5165
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/server/ConnectivityService;->isDefaultNetwork(Lcom/android/server/connectivity/NetworkAgentInfo;)Z

    #@8
    move-result v1

    #@9
    if-nez v1, :cond_1

    #@b
    return-void

    #@c
    .line 5167
    :cond_1
    iget-boolean v1, p1, Lcom/android/server/connectivity/NetworkAgentInfo;->lastValidated:Z

    #@e
    if-eqz v1, :cond_2

    #@10
    const/16 v0, 0x64

    #@12
    .line 5169
    .local v0, "newInetCondition":I
    :goto_0
    iget v1, p0, Lcom/android/server/ConnectivityService;->mDefaultInetConditionPublished:I

    #@14
    if-ne v0, v1, :cond_3

    #@16
    return-void

    #@17
    .line 5167
    .end local v0    # "newInetCondition":I
    :cond_2
    const/4 v0, 0x0

    #@18
    .restart local v0    # "newInetCondition":I
    goto :goto_0

    #@19
    .line 5171
    :cond_3
    iput v0, p0, Lcom/android/server/ConnectivityService;->mDefaultInetConditionPublished:I

    #@1b
    .line 5172
    iget-object v1, p1, Lcom/android/server/connectivity/NetworkAgentInfo;->networkInfo:Landroid/net/NetworkInfo;

    #@1d
    invoke-direct {p0, v1}, Lcom/android/server/ConnectivityService;->sendInetConditionBroadcast(Landroid/net/NetworkInfo;)V

    #@20
    .line 5160
    return-void
.end method

.method private updateInterfaces(Landroid/net/LinkProperties;Landroid/net/LinkProperties;I)V
    .locals 6
    .param p1, "newLp"    # Landroid/net/LinkProperties;
    .param p2, "oldLp"    # Landroid/net/LinkProperties;
    .param p3, "netId"    # I

    #@0
    .prologue
    .line 4494
    new-instance v3, Landroid/net/LinkProperties$CompareResult;

    #@2
    invoke-direct {v3}, Landroid/net/LinkProperties$CompareResult;-><init>()V

    #@5
    .line 4495
    .local v3, "interfaceDiff":Landroid/net/LinkProperties$CompareResult;, "Landroid/net/LinkProperties$CompareResult<Ljava/lang/String;>;"
    if-eqz p2, :cond_1

    #@7
    .line 4496
    invoke-virtual {p2, p1}, Landroid/net/LinkProperties;->compareAllInterfaceNames(Landroid/net/LinkProperties;)Landroid/net/LinkProperties$CompareResult;

    #@a
    move-result-object v3

    #@b
    .line 4500
    :cond_0
    :goto_0
    iget-object v4, v3, Landroid/net/LinkProperties$CompareResult;->added:Ljava/util/List;

    #@d
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@10
    move-result-object v2

    #@11
    .local v2, "iface$iterator":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    #@14
    move-result v4

    #@15
    if-eqz v4, :cond_2

    #@17
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@1a
    move-result-object v1

    #@1b
    check-cast v1, Ljava/lang/String;

    #@1d
    .line 4502
    .local v1, "iface":Ljava/lang/String;
    :try_start_0
    new-instance v4, Ljava/lang/StringBuilder;

    #@1f
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@22
    const-string/jumbo v5, "Adding iface "

    #@25
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@28
    move-result-object v4

    #@29
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2c
    move-result-object v4

    #@2d
    const-string/jumbo v5, " to network "

    #@30
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@33
    move-result-object v4

    #@34
    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@37
    move-result-object v4

    #@38
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3b
    move-result-object v4

    #@3c
    invoke-static {v4}, Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V

    #@3f
    .line 4503
    iget-object v4, p0, Lcom/android/server/ConnectivityService;->mNetd:Landroid/os/INetworkManagementService;

    #@41
    invoke-interface {v4, v1, p3}, Landroid/os/INetworkManagementService;->addInterfaceToNetwork(Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    #@44
    goto :goto_1

    #@45
    .line 4504
    :catch_0
    move-exception v0

    #@46
    .line 4505
    .local v0, "e":Ljava/lang/Exception;
    new-instance v4, Ljava/lang/StringBuilder;

    #@48
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@4b
    const-string/jumbo v5, "Exception adding interface: "

    #@4e
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@51
    move-result-object v4

    #@52
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@55
    move-result-object v4

    #@56
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@59
    move-result-object v4

    #@5a
    invoke-static {v4}, Lcom/android/server/ConnectivityService;->loge(Ljava/lang/String;)V

    #@5d
    goto :goto_1

    #@5e
    .line 4497
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v1    # "iface":Ljava/lang/String;
    .end local v2    # "iface$iterator":Ljava/util/Iterator;
    :cond_1
    if-eqz p1, :cond_0

    #@60
    .line 4498
    invoke-virtual {p1}, Landroid/net/LinkProperties;->getAllInterfaceNames()Ljava/util/List;

    #@63
    move-result-object v4

    #@64
    iput-object v4, v3, Landroid/net/LinkProperties$CompareResult;->added:Ljava/util/List;

    #@66
    goto :goto_0

    #@67
    .line 4508
    .restart local v2    # "iface$iterator":Ljava/util/Iterator;
    :cond_2
    iget-object v4, v3, Landroid/net/LinkProperties$CompareResult;->removed:Ljava/util/List;

    #@69
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@6c
    move-result-object v2

    #@6d
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    #@70
    move-result v4

    #@71
    if-eqz v4, :cond_3

    #@73
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@76
    move-result-object v1

    #@77
    check-cast v1, Ljava/lang/String;

    #@79
    .line 4510
    .restart local v1    # "iface":Ljava/lang/String;
    :try_start_1
    new-instance v4, Ljava/lang/StringBuilder;

    #@7b
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@7e
    const-string/jumbo v5, "Removing iface "

    #@81
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@84
    move-result-object v4

    #@85
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@88
    move-result-object v4

    #@89
    const-string/jumbo v5, " from network "

    #@8c
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@8f
    move-result-object v4

    #@90
    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@93
    move-result-object v4

    #@94
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@97
    move-result-object v4

    #@98
    invoke-static {v4}, Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V

    #@9b
    .line 4511
    iget-object v4, p0, Lcom/android/server/ConnectivityService;->mNetd:Landroid/os/INetworkManagementService;

    #@9d
    invoke-interface {v4, v1, p3}, Landroid/os/INetworkManagementService;->removeInterfaceFromNetwork(Ljava/lang/String;I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    #@a0
    goto :goto_2

    #@a1
    .line 4512
    :catch_1
    move-exception v0

    #@a2
    .line 4513
    .restart local v0    # "e":Ljava/lang/Exception;
    new-instance v4, Ljava/lang/StringBuilder;

    #@a4
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@a7
    const-string/jumbo v5, "Exception removing interface: "

    #@aa
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@ad
    move-result-object v4

    #@ae
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@b1
    move-result-object v4

    #@b2
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@b5
    move-result-object v4

    #@b6
    invoke-static {v4}, Lcom/android/server/ConnectivityService;->loge(Ljava/lang/String;)V

    #@b9
    goto :goto_2

    #@ba
    .line 4493
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v1    # "iface":Ljava/lang/String;
    :cond_3
    return-void
.end method

.method private updateLingerState(Lcom/android/server/connectivity/NetworkAgentInfo;J)V
    .locals 6
    .param p1, "nai"    # Lcom/android/server/connectivity/NetworkAgentInfo;
    .param p2, "now"    # J

    #@0
    .prologue
    .line 2319
    invoke-virtual {p1}, Lcom/android/server/connectivity/NetworkAgentInfo;->updateLingerTimer()V

    #@3
    .line 2320
    invoke-virtual {p1}, Lcom/android/server/connectivity/NetworkAgentInfo;->isLingering()Z

    #@6
    move-result v1

    #@7
    if-eqz v1, :cond_1

    #@9
    invoke-virtual {p1}, Lcom/android/server/connectivity/NetworkAgentInfo;->numForegroundNetworkRequests()I

    #@c
    move-result v1

    #@d
    if-lez v1, :cond_1

    #@f
    .line 2321
    new-instance v1, Ljava/lang/StringBuilder;

    #@11
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@14
    const-string/jumbo v2, "Unlingering "

    #@17
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1a
    move-result-object v1

    #@1b
    invoke-virtual {p1}, Lcom/android/server/connectivity/NetworkAgentInfo;->name()Ljava/lang/String;

    #@1e
    move-result-object v2

    #@1f
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@22
    move-result-object v1

    #@23
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@26
    move-result-object v1

    #@27
    invoke-static {v1}, Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V

    #@2a
    .line 2322
    invoke-virtual {p1}, Lcom/android/server/connectivity/NetworkAgentInfo;->unlinger()V

    #@2d
    .line 2323
    const/4 v1, 0x6

    #@2e
    invoke-direct {p0, p1, v1}, Lcom/android/server/ConnectivityService;->logNetworkEvent(Lcom/android/server/connectivity/NetworkAgentInfo;I)V

    #@31
    .line 2314
    :cond_0
    :goto_0
    return-void

    #@32
    .line 2324
    :cond_1
    sget-object v1, Lcom/android/server/ConnectivityService$UnneededFor;->LINGER:Lcom/android/server/ConnectivityService$UnneededFor;

    #@34
    invoke-direct {p0, p1, v1}, Lcom/android/server/ConnectivityService;->unneeded(Lcom/android/server/connectivity/NetworkAgentInfo;Lcom/android/server/ConnectivityService$UnneededFor;)Z

    #@37
    move-result v1

    #@38
    if-eqz v1, :cond_0

    #@3a
    invoke-virtual {p1}, Lcom/android/server/connectivity/NetworkAgentInfo;->getLingerExpiry()J

    #@3d
    move-result-wide v2

    #@3e
    const-wide/16 v4, 0x0

    #@40
    cmp-long v1, v2, v4

    #@42
    if-lez v1, :cond_0

    #@44
    .line 2325
    invoke-virtual {p1}, Lcom/android/server/connectivity/NetworkAgentInfo;->getLingerExpiry()J

    #@47
    move-result-wide v2

    #@48
    sub-long/2addr v2, p2

    #@49
    long-to-int v0, v2

    #@4a
    .line 2326
    .local v0, "lingerTime":I
    new-instance v1, Ljava/lang/StringBuilder;

    #@4c
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@4f
    const-string/jumbo v2, "Lingering "

    #@52
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@55
    move-result-object v1

    #@56
    invoke-virtual {p1}, Lcom/android/server/connectivity/NetworkAgentInfo;->name()Ljava/lang/String;

    #@59
    move-result-object v2

    #@5a
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5d
    move-result-object v1

    #@5e
    const-string/jumbo v2, " for "

    #@61
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@64
    move-result-object v1

    #@65
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@68
    move-result-object v1

    #@69
    const-string/jumbo v2, "ms"

    #@6c
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6f
    move-result-object v1

    #@70
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@73
    move-result-object v1

    #@74
    invoke-static {v1}, Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V

    #@77
    .line 2327
    invoke-virtual {p1}, Lcom/android/server/connectivity/NetworkAgentInfo;->linger()V

    #@7a
    .line 2328
    const/4 v1, 0x5

    #@7b
    invoke-direct {p0, p1, v1}, Lcom/android/server/ConnectivityService;->logNetworkEvent(Lcom/android/server/connectivity/NetworkAgentInfo;I)V

    #@7e
    .line 2329
    const v1, 0x80003

    #@81
    invoke-virtual {p0, p1, v1, v0}, Lcom/android/server/ConnectivityService;->notifyNetworkCallbacks(Lcom/android/server/connectivity/NetworkAgentInfo;II)V

    #@84
    goto :goto_0
.end method

.method private updateLinkProperties(Lcom/android/server/connectivity/NetworkAgentInfo;Landroid/net/LinkProperties;)V
    .locals 3
    .param p1, "networkAgent"    # Lcom/android/server/connectivity/NetworkAgentInfo;
    .param p2, "oldLp"    # Landroid/net/LinkProperties;

    #@0
    .prologue
    .line 4446
    iget-object v1, p1, Lcom/android/server/connectivity/NetworkAgentInfo;->linkProperties:Landroid/net/LinkProperties;

    #@2
    .line 4447
    .local v1, "newLp":Landroid/net/LinkProperties;
    iget-object v2, p1, Lcom/android/server/connectivity/NetworkAgentInfo;->network:Landroid/net/Network;

    #@4
    iget v0, v2, Landroid/net/Network;->netId:I

    #@6
    .line 4451
    .local v0, "netId":I
    iget-object v2, p1, Lcom/android/server/connectivity/NetworkAgentInfo;->clatd:Lcom/android/server/connectivity/Nat464Xlat;

    #@8
    if-eqz v2, :cond_0

    #@a
    .line 4452
    iget-object v2, p1, Lcom/android/server/connectivity/NetworkAgentInfo;->clatd:Lcom/android/server/connectivity/Nat464Xlat;

    #@c
    invoke-virtual {v2, p2}, Lcom/android/server/connectivity/Nat464Xlat;->fixupLinkProperties(Landroid/net/LinkProperties;)V

    #@f
    .line 4455
    :cond_0
    invoke-direct {p0, v1, p2, v0}, Lcom/android/server/ConnectivityService;->updateInterfaces(Landroid/net/LinkProperties;Landroid/net/LinkProperties;I)V

    #@12
    .line 4456
    invoke-direct {p0, v1, p2}, Lcom/android/server/ConnectivityService;->updateMtu(Landroid/net/LinkProperties;Landroid/net/LinkProperties;)V

    #@15
    .line 4461
    invoke-direct {p0, p1}, Lcom/android/server/ConnectivityService;->updateTcpBufferSizes(Lcom/android/server/connectivity/NetworkAgentInfo;)V

    #@18
    .line 4463
    invoke-direct {p0, v1, p2, v0}, Lcom/android/server/ConnectivityService;->updateRoutes(Landroid/net/LinkProperties;Landroid/net/LinkProperties;I)Z

    #@1b
    .line 4464
    invoke-direct {p0, v1, p2, v0}, Lcom/android/server/ConnectivityService;->updateDnses(Landroid/net/LinkProperties;Landroid/net/LinkProperties;I)V

    #@1e
    .line 4466
    invoke-direct {p0, v1, p2, p1}, Lcom/android/server/ConnectivityService;->updateClat(Landroid/net/LinkProperties;Landroid/net/LinkProperties;Lcom/android/server/connectivity/NetworkAgentInfo;)V

    #@21
    .line 4467
    invoke-direct {p0, p1}, Lcom/android/server/ConnectivityService;->isDefaultNetwork(Lcom/android/server/connectivity/NetworkAgentInfo;)Z

    #@24
    move-result v2

    #@25
    if-eqz v2, :cond_2

    #@27
    .line 4468
    invoke-virtual {v1}, Landroid/net/LinkProperties;->getHttpProxy()Landroid/net/ProxyInfo;

    #@2a
    move-result-object v2

    #@2b
    invoke-direct {p0, v2}, Lcom/android/server/ConnectivityService;->handleApplyDefaultProxy(Landroid/net/ProxyInfo;)V

    #@2e
    .line 4473
    :goto_0
    invoke-static {v1, p2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    #@31
    move-result v2

    #@32
    if-nez v2, :cond_1

    #@34
    .line 4474
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->notifyIfacesChangedForNetworkStats()V

    #@37
    .line 4475
    const v2, 0x80007

    #@3a
    invoke-virtual {p0, p1, v2}, Lcom/android/server/ConnectivityService;->notifyNetworkCallbacks(Lcom/android/server/connectivity/NetworkAgentInfo;I)V

    #@3d
    .line 4478
    :cond_1
    iget-object v2, p0, Lcom/android/server/ConnectivityService;->mKeepaliveTracker:Lcom/android/server/connectivity/KeepaliveTracker;

    #@3f
    invoke-virtual {v2, p1}, Lcom/android/server/connectivity/KeepaliveTracker;->handleCheckKeepalivesStillValid(Lcom/android/server/connectivity/NetworkAgentInfo;)V

    #@42
    .line 4445
    return-void

    #@43
    .line 4470
    :cond_2
    invoke-direct {p0, v1, p2, p1}, Lcom/android/server/ConnectivityService;->updateProxy(Landroid/net/LinkProperties;Landroid/net/LinkProperties;Lcom/android/server/connectivity/NetworkAgentInfo;)V

    #@46
    goto :goto_0
.end method

.method private updateMtu(Landroid/net/LinkProperties;Landroid/net/LinkProperties;)V
    .locals 6
    .param p1, "newLp"    # Landroid/net/LinkProperties;
    .param p2, "oldLp"    # Landroid/net/LinkProperties;

    #@0
    .prologue
    .line 1812
    invoke-virtual {p1}, Landroid/net/LinkProperties;->getInterfaceName()Ljava/lang/String;

    #@3
    move-result-object v1

    #@4
    .line 1813
    .local v1, "iface":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/net/LinkProperties;->getMtu()I

    #@7
    move-result v2

    #@8
    .line 1814
    .local v2, "mtu":I
    if-eqz p2, :cond_0

    #@a
    invoke-virtual {p1, p2}, Landroid/net/LinkProperties;->isIdenticalMtu(Landroid/net/LinkProperties;)Z

    #@d
    move-result v3

    #@e
    if-eqz v3, :cond_0

    #@10
    .line 1816
    return-void

    #@11
    .line 1819
    :cond_0
    invoke-virtual {p1}, Landroid/net/LinkProperties;->hasGlobalIPv6Address()Z

    #@14
    move-result v3

    #@15
    invoke-static {v2, v3}, Landroid/net/LinkProperties;->isValidMtu(IZ)Z

    #@18
    move-result v3

    #@19
    if-nez v3, :cond_2

    #@1b
    .line 1820
    if-eqz v2, :cond_1

    #@1d
    new-instance v3, Ljava/lang/StringBuilder;

    #@1f
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@22
    const-string/jumbo v4, "Unexpected mtu value: "

    #@25
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@28
    move-result-object v3

    #@29
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@2c
    move-result-object v3

    #@2d
    const-string/jumbo v4, ", "

    #@30
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@33
    move-result-object v3

    #@34
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@37
    move-result-object v3

    #@38
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3b
    move-result-object v3

    #@3c
    invoke-static {v3}, Lcom/android/server/ConnectivityService;->loge(Ljava/lang/String;)V

    #@3f
    .line 1821
    :cond_1
    return-void

    #@40
    .line 1825
    :cond_2
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@43
    move-result v3

    #@44
    if-eqz v3, :cond_3

    #@46
    .line 1826
    const-string/jumbo v3, "Setting MTU size with null iface."

    #@49
    invoke-static {v3}, Lcom/android/server/ConnectivityService;->loge(Ljava/lang/String;)V

    #@4c
    .line 1827
    return-void

    #@4d
    .line 1832
    :cond_3
    :try_start_0
    iget-object v3, p0, Lcom/android/server/ConnectivityService;->mNetd:Landroid/os/INetworkManagementService;

    #@4f
    invoke-interface {v3, v1, v2}, Landroid/os/INetworkManagementService;->setMtu(Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    #@52
    .line 1811
    :goto_0
    return-void

    #@53
    .line 1833
    :catch_0
    move-exception v0

    #@54
    .line 1834
    .local v0, "e":Ljava/lang/Exception;
    sget-object v3, Lcom/android/server/ConnectivityService;->TAG:Ljava/lang/String;

    #@56
    new-instance v4, Ljava/lang/StringBuilder;

    #@58
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@5b
    const-string/jumbo v5, "exception in setMtu()"

    #@5e
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@61
    move-result-object v4

    #@62
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@65
    move-result-object v4

    #@66
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@69
    move-result-object v4

    #@6a
    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@6d
    goto :goto_0
.end method

.method private updateNetworkInfo(Lcom/android/server/connectivity/NetworkAgentInfo;Landroid/net/NetworkInfo;)V
    .locals 13
    .param p1, "networkAgent"    # Lcom/android/server/connectivity/NetworkAgentInfo;
    .param p2, "newInfo"    # Landroid/net/NetworkInfo;

    #@0
    .prologue
    const/4 v8, 0x0

    #@1
    const/4 v7, 0x1

    #@2
    const/4 v12, 0x0

    #@3
    .line 5186
    invoke-virtual {p2}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    #@6
    move-result-object v5

    #@7
    .line 5187
    .local v5, "state":Landroid/net/NetworkInfo$State;
    const/4 v1, 0x0

    #@8
    .line 5188
    .local v1, "oldInfo":Landroid/net/NetworkInfo;
    invoke-virtual {p1}, Lcom/android/server/connectivity/NetworkAgentInfo;->getCurrentScore()I

    #@b
    move-result v4

    #@c
    .line 5189
    .local v4, "oldScore":I
    monitor-enter p1

    #@d
    .line 5190
    :try_start_0
    iget-object v1, p1, Lcom/android/server/connectivity/NetworkAgentInfo;->networkInfo:Landroid/net/NetworkInfo;

    #@f
    .line 5191
    .local v1, "oldInfo":Landroid/net/NetworkInfo;
    iput-object p2, p1, Lcom/android/server/connectivity/NetworkAgentInfo;->networkInfo:Landroid/net/NetworkInfo;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@11
    monitor-exit p1

    #@12
    .line 5193
    invoke-direct {p0, p1}, Lcom/android/server/ConnectivityService;->notifyLockdownVpn(Lcom/android/server/connectivity/NetworkAgentInfo;)V

    #@15
    .line 5195
    if-eqz v1, :cond_1

    #@17
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    #@1a
    move-result-object v6

    #@1b
    if-ne v6, v5, :cond_1

    #@1d
    .line 5196
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isRoaming()Z

    #@20
    move-result v6

    #@21
    invoke-virtual {p2}, Landroid/net/NetworkInfo;->isRoaming()Z

    #@24
    move-result v7

    #@25
    if-eq v6, v7, :cond_0

    #@27
    .line 5198
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->notifyIfacesChangedForNetworkStats()V

    #@2a
    .line 5201
    :cond_0
    return-void

    #@2b
    .line 5189
    .end local v1    # "oldInfo":Landroid/net/NetworkInfo;
    :catchall_0
    move-exception v6

    #@2c
    monitor-exit p1

    #@2d
    throw v6

    #@2e
    .line 5204
    .restart local v1    # "oldInfo":Landroid/net/NetworkInfo;
    :cond_1
    new-instance v6, Ljava/lang/StringBuilder;

    #@30
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@33
    invoke-virtual {p1}, Lcom/android/server/connectivity/NetworkAgentInfo;->name()Ljava/lang/String;

    #@36
    move-result-object v9

    #@37
    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3a
    move-result-object v6

    #@3b
    const-string/jumbo v9, " EVENT_NETWORK_INFO_CHANGED, going from "

    #@3e
    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@41
    move-result-object v9

    #@42
    .line 5205
    if-nez v1, :cond_7

    #@44
    const-string/jumbo v6, "null"

    #@47
    .line 5204
    :goto_0
    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@4a
    move-result-object v6

    #@4b
    .line 5206
    const-string/jumbo v9, " to "

    #@4e
    .line 5204
    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@51
    move-result-object v6

    #@52
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@55
    move-result-object v6

    #@56
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@59
    move-result-object v6

    #@5a
    invoke-static {v6}, Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V

    #@5d
    .line 5209
    iget-boolean v6, p1, Lcom/android/server/connectivity/NetworkAgentInfo;->created:Z

    #@5f
    if-nez v6, :cond_3

    #@61
    .line 5210
    sget-object v6, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;

    #@63
    if-eq v5, v6, :cond_2

    #@65
    .line 5211
    sget-object v6, Landroid/net/NetworkInfo$State;->CONNECTING:Landroid/net/NetworkInfo$State;

    #@67
    if-ne v5, v6, :cond_3

    #@69
    invoke-virtual {p1}, Lcom/android/server/connectivity/NetworkAgentInfo;->isVPN()Z

    #@6c
    move-result v6

    #@6d
    .line 5209
    if-eqz v6, :cond_3

    #@6f
    .line 5214
    :cond_2
    iget-object v6, p1, Lcom/android/server/connectivity/NetworkAgentInfo;->networkCapabilities:Landroid/net/NetworkCapabilities;

    #@71
    const/16 v9, 0x12

    #@73
    invoke-virtual {v6, v9}, Landroid/net/NetworkCapabilities;->addCapability(I)Landroid/net/NetworkCapabilities;

    #@76
    .line 5218
    :try_start_1
    invoke-virtual {p1}, Lcom/android/server/connectivity/NetworkAgentInfo;->isVPN()Z

    #@79
    move-result v6

    #@7a
    if-eqz v6, :cond_b

    #@7c
    .line 5219
    iget-object v10, p0, Lcom/android/server/ConnectivityService;->mNetd:Landroid/os/INetworkManagementService;

    #@7e
    iget-object v6, p1, Lcom/android/server/connectivity/NetworkAgentInfo;->network:Landroid/net/Network;

    #@80
    iget v11, v6, Landroid/net/Network;->netId:I

    #@82
    .line 5220
    iget-object v6, p1, Lcom/android/server/connectivity/NetworkAgentInfo;->linkProperties:Landroid/net/LinkProperties;

    #@84
    invoke-virtual {v6}, Landroid/net/LinkProperties;->getDnsServers()Ljava/util/List;

    #@87
    move-result-object v6

    #@88
    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    #@8b
    move-result v6

    #@8c
    if-eqz v6, :cond_8

    #@8e
    move v9, v8

    #@8f
    .line 5221
    :goto_1
    iget-object v6, p1, Lcom/android/server/connectivity/NetworkAgentInfo;->networkMisc:Landroid/net/NetworkMisc;

    #@91
    if-eqz v6, :cond_9

    #@93
    .line 5222
    iget-object v6, p1, Lcom/android/server/connectivity/NetworkAgentInfo;->networkMisc:Landroid/net/NetworkMisc;

    #@95
    iget-boolean v6, v6, Landroid/net/NetworkMisc;->allowBypass:Z

    #@97
    if-eqz v6, :cond_a

    #@99
    move v6, v8

    #@9a
    .line 5219
    :goto_2
    invoke-interface {v10, v11, v9, v6}, Landroid/os/INetworkManagementService;->createVirtualNetwork(IZZ)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    #@9d
    .line 5232
    :goto_3
    iput-boolean v7, p1, Lcom/android/server/connectivity/NetworkAgentInfo;->created:Z

    #@9f
    .line 5235
    :cond_3
    iget-boolean v6, p1, Lcom/android/server/connectivity/NetworkAgentInfo;->everConnected:Z

    #@a1
    if-nez v6, :cond_c

    #@a3
    sget-object v6, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;

    #@a5
    if-ne v5, v6, :cond_c

    #@a7
    .line 5236
    iput-boolean v7, p1, Lcom/android/server/connectivity/NetworkAgentInfo;->everConnected:Z

    #@a9
    .line 5238
    invoke-direct {p0, p1, v12}, Lcom/android/server/ConnectivityService;->updateLinkProperties(Lcom/android/server/connectivity/NetworkAgentInfo;Landroid/net/LinkProperties;)V

    #@ac
    .line 5239
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->notifyIfacesChangedForNetworkStats()V

    #@af
    .line 5241
    iget-object v6, p1, Lcom/android/server/connectivity/NetworkAgentInfo;->networkMonitor:Lcom/android/server/connectivity/NetworkMonitor;

    #@b1
    const v7, 0x82001

    #@b4
    invoke-virtual {v6, v7}, Lcom/android/server/connectivity/NetworkMonitor;->sendMessage(I)V

    #@b7
    .line 5242
    invoke-direct {p0, p1}, Lcom/android/server/ConnectivityService;->scheduleUnvalidatedPrompt(Lcom/android/server/connectivity/NetworkAgentInfo;)V

    #@ba
    .line 5244
    invoke-virtual {p1}, Lcom/android/server/connectivity/NetworkAgentInfo;->isVPN()Z

    #@bd
    move-result v6

    #@be
    if-eqz v6, :cond_5

    #@c0
    .line 5246
    iget-object v7, p0, Lcom/android/server/ConnectivityService;->mProxyLock:Ljava/lang/Object;

    #@c2
    monitor-enter v7

    #@c3
    .line 5247
    :try_start_2
    iget-boolean v6, p0, Lcom/android/server/ConnectivityService;->mDefaultProxyDisabled:Z

    #@c5
    if-nez v6, :cond_4

    #@c7
    .line 5248
    const/4 v6, 0x1

    #@c8
    iput-boolean v6, p0, Lcom/android/server/ConnectivityService;->mDefaultProxyDisabled:Z

    #@ca
    .line 5249
    iget-object v6, p0, Lcom/android/server/ConnectivityService;->mGlobalProxy:Landroid/net/ProxyInfo;

    #@cc
    if-nez v6, :cond_4

    #@ce
    iget-object v6, p0, Lcom/android/server/ConnectivityService;->mDefaultProxy:Landroid/net/ProxyInfo;

    #@d0
    if-eqz v6, :cond_4

    #@d2
    .line 5250
    const/4 v6, 0x0

    #@d3
    invoke-direct {p0, v6}, Lcom/android/server/ConnectivityService;->sendProxyBroadcast(Landroid/net/ProxyInfo;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    #@d6
    :cond_4
    monitor-exit v7

    #@d7
    .line 5264
    :cond_5
    const-string/jumbo v6, "CONNECT"

    #@da
    invoke-direct {p0, p1, v6, v12}, Lcom/android/server/ConnectivityService;->updateSignalStrengthThresholds(Lcom/android/server/connectivity/NetworkAgentInfo;Ljava/lang/String;Landroid/net/NetworkRequest;)V

    #@dd
    .line 5267
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    #@e0
    move-result-wide v2

    #@e1
    .line 5268
    .local v2, "now":J
    sget-object v6, Lcom/android/server/ConnectivityService$ReapUnvalidatedNetworks;->REAP:Lcom/android/server/ConnectivityService$ReapUnvalidatedNetworks;

    #@e3
    invoke-direct {p0, p1, v6, v2, v3}, Lcom/android/server/ConnectivityService;->rematchNetworkAndRequests(Lcom/android/server/connectivity/NetworkAgentInfo;Lcom/android/server/ConnectivityService$ReapUnvalidatedNetworks;J)V

    #@e6
    .line 5271
    const v6, 0x80001

    #@e9
    invoke-virtual {p0, p1, v6}, Lcom/android/server/ConnectivityService;->notifyNetworkCallbacks(Lcom/android/server/connectivity/NetworkAgentInfo;I)V

    #@ec
    .line 5185
    .end local v2    # "now":J
    :cond_6
    :goto_4
    return-void

    #@ed
    .line 5205
    :cond_7
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    #@f0
    move-result-object v6

    #@f1
    goto/16 :goto_0

    #@f3
    :cond_8
    move v9, v7

    #@f4
    .line 5220
    goto :goto_1

    #@f5
    :cond_9
    move v6, v7

    #@f6
    .line 5221
    goto :goto_2

    #@f7
    :cond_a
    move v6, v7

    #@f8
    .line 5222
    goto :goto_2

    #@f9
    .line 5224
    :cond_b
    :try_start_3
    iget-object v6, p0, Lcom/android/server/ConnectivityService;->mNetd:Landroid/os/INetworkManagementService;

    #@fb
    iget-object v8, p1, Lcom/android/server/connectivity/NetworkAgentInfo;->network:Landroid/net/Network;

    #@fd
    iget v8, v8, Landroid/net/Network;->netId:I

    #@ff
    .line 5225
    iget-object v9, p1, Lcom/android/server/connectivity/NetworkAgentInfo;->networkCapabilities:Landroid/net/NetworkCapabilities;

    #@101
    invoke-direct {p0, v9}, Lcom/android/server/ConnectivityService;->getNetworkPermission(Landroid/net/NetworkCapabilities;)Ljava/lang/String;

    #@104
    move-result-object v9

    #@105
    .line 5224
    invoke-interface {v6, v8, v9}, Landroid/os/INetworkManagementService;->createPhysicalNetwork(ILjava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    #@108
    goto :goto_3

    #@109
    .line 5227
    :catch_0
    move-exception v0

    #@10a
    .line 5228
    .local v0, "e":Ljava/lang/Exception;
    new-instance v6, Ljava/lang/StringBuilder;

    #@10c
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@10f
    const-string/jumbo v7, "Error creating network "

    #@112
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@115
    move-result-object v6

    #@116
    iget-object v7, p1, Lcom/android/server/connectivity/NetworkAgentInfo;->network:Landroid/net/Network;

    #@118
    iget v7, v7, Landroid/net/Network;->netId:I

    #@11a
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@11d
    move-result-object v6

    #@11e
    const-string/jumbo v7, ": "

    #@121
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@124
    move-result-object v6

    #@125
    .line 5229
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    #@128
    move-result-object v7

    #@129
    .line 5228
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@12c
    move-result-object v6

    #@12d
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@130
    move-result-object v6

    #@131
    invoke-static {v6}, Lcom/android/server/ConnectivityService;->loge(Ljava/lang/String;)V

    #@134
    .line 5230
    return-void

    #@135
    .line 5246
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_1
    move-exception v6

    #@136
    monitor-exit v7

    #@137
    throw v6

    #@138
    .line 5272
    :cond_c
    sget-object v6, Landroid/net/NetworkInfo$State;->DISCONNECTED:Landroid/net/NetworkInfo$State;

    #@13a
    if-ne v5, v6, :cond_e

    #@13c
    .line 5273
    iget-object v6, p1, Lcom/android/server/connectivity/NetworkAgentInfo;->asyncChannel:Lcom/android/internal/util/AsyncChannel;

    #@13e
    invoke-virtual {v6}, Lcom/android/internal/util/AsyncChannel;->disconnect()V

    #@141
    .line 5274
    invoke-virtual {p1}, Lcom/android/server/connectivity/NetworkAgentInfo;->isVPN()Z

    #@144
    move-result v6

    #@145
    if-eqz v6, :cond_6

    #@147
    .line 5275
    iget-object v7, p0, Lcom/android/server/ConnectivityService;->mProxyLock:Ljava/lang/Object;

    #@149
    monitor-enter v7

    #@14a
    .line 5276
    :try_start_4
    iget-boolean v6, p0, Lcom/android/server/ConnectivityService;->mDefaultProxyDisabled:Z

    #@14c
    if-eqz v6, :cond_d

    #@14e
    .line 5277
    const/4 v6, 0x0

    #@14f
    iput-boolean v6, p0, Lcom/android/server/ConnectivityService;->mDefaultProxyDisabled:Z

    #@151
    .line 5278
    iget-object v6, p0, Lcom/android/server/ConnectivityService;->mGlobalProxy:Landroid/net/ProxyInfo;

    #@153
    if-nez v6, :cond_d

    #@155
    iget-object v6, p0, Lcom/android/server/ConnectivityService;->mDefaultProxy:Landroid/net/ProxyInfo;

    #@157
    if-eqz v6, :cond_d

    #@159
    .line 5279
    iget-object v6, p0, Lcom/android/server/ConnectivityService;->mDefaultProxy:Landroid/net/ProxyInfo;

    #@15b
    invoke-direct {p0, v6}, Lcom/android/server/ConnectivityService;->sendProxyBroadcast(Landroid/net/ProxyInfo;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    #@15e
    :cond_d
    monitor-exit v7

    #@15f
    goto :goto_4

    #@160
    .line 5275
    :catchall_2
    move-exception v6

    #@161
    monitor-exit v7

    #@162
    throw v6

    #@163
    .line 5284
    :cond_e
    if-eqz v1, :cond_10

    #@165
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    #@168
    move-result-object v6

    #@169
    sget-object v7, Landroid/net/NetworkInfo$State;->SUSPENDED:Landroid/net/NetworkInfo$State;

    #@16b
    if-ne v6, v7, :cond_10

    #@16d
    .line 5287
    :goto_5
    invoke-virtual {p1}, Lcom/android/server/connectivity/NetworkAgentInfo;->getCurrentScore()I

    #@170
    move-result v6

    #@171
    if-eq v6, v4, :cond_f

    #@173
    .line 5288
    invoke-direct {p0, p1, v4}, Lcom/android/server/ConnectivityService;->rematchAllNetworksAndRequests(Lcom/android/server/connectivity/NetworkAgentInfo;I)V

    #@176
    .line 5290
    :cond_f
    sget-object v6, Landroid/net/NetworkInfo$State;->SUSPENDED:Landroid/net/NetworkInfo$State;

    #@178
    if-ne v5, v6, :cond_11

    #@17a
    .line 5291
    const v6, 0x8000b

    #@17d
    .line 5290
    :goto_6
    invoke-virtual {p0, p1, v6}, Lcom/android/server/ConnectivityService;->notifyNetworkCallbacks(Lcom/android/server/connectivity/NetworkAgentInfo;I)V

    #@180
    .line 5293
    iget-object v6, p0, Lcom/android/server/ConnectivityService;->mLegacyTypeTracker:Lcom/android/server/ConnectivityService$LegacyTypeTracker;

    #@182
    invoke-virtual {v6, p1}, Lcom/android/server/ConnectivityService$LegacyTypeTracker;->update(Lcom/android/server/connectivity/NetworkAgentInfo;)V

    #@185
    goto/16 :goto_4

    #@187
    .line 5285
    :cond_10
    sget-object v6, Landroid/net/NetworkInfo$State;->SUSPENDED:Landroid/net/NetworkInfo$State;

    #@189
    if-ne v5, v6, :cond_6

    #@18b
    goto :goto_5

    #@18c
    .line 5292
    :cond_11
    const v6, 0x8000c

    #@18f
    goto :goto_6
.end method

.method private updateNetworkScore(Lcom/android/server/connectivity/NetworkAgentInfo;I)V
    .locals 3
    .param p1, "nai"    # Lcom/android/server/connectivity/NetworkAgentInfo;
    .param p2, "score"    # I

    #@0
    .prologue
    .line 5299
    if-gez p2, :cond_0

    #@2
    .line 5300
    new-instance v1, Ljava/lang/StringBuilder;

    #@4
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@7
    const-string/jumbo v2, "updateNetworkScore for "

    #@a
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@d
    move-result-object v1

    #@e
    invoke-virtual {p1}, Lcom/android/server/connectivity/NetworkAgentInfo;->name()Ljava/lang/String;

    #@11
    move-result-object v2

    #@12
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@15
    move-result-object v1

    #@16
    const-string/jumbo v2, " got a negative score ("

    #@19
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1c
    move-result-object v1

    #@1d
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@20
    move-result-object v1

    #@21
    .line 5301
    const-string/jumbo v2, ").  Bumping score to min of 0"

    #@24
    .line 5300
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@27
    move-result-object v1

    #@28
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2b
    move-result-object v1

    #@2c
    invoke-static {v1}, Lcom/android/server/ConnectivityService;->loge(Ljava/lang/String;)V

    #@2f
    .line 5302
    const/4 p2, 0x0

    #@30
    .line 5305
    :cond_0
    invoke-virtual {p1}, Lcom/android/server/connectivity/NetworkAgentInfo;->getCurrentScore()I

    #@33
    move-result v0

    #@34
    .line 5306
    .local v0, "oldScore":I
    invoke-virtual {p1, p2}, Lcom/android/server/connectivity/NetworkAgentInfo;->setCurrentScore(I)V

    #@37
    .line 5308
    invoke-direct {p0, p1, v0}, Lcom/android/server/ConnectivityService;->rematchAllNetworksAndRequests(Lcom/android/server/connectivity/NetworkAgentInfo;I)V

    #@3a
    .line 5310
    invoke-direct {p0, p1}, Lcom/android/server/ConnectivityService;->sendUpdatedScoreToFactories(Lcom/android/server/connectivity/NetworkAgentInfo;)V

    #@3d
    .line 5297
    return-void
.end method

.method private updateProxy(Landroid/net/LinkProperties;Landroid/net/LinkProperties;Lcom/android/server/connectivity/NetworkAgentInfo;)V
    .locals 3
    .param p1, "newLp"    # Landroid/net/LinkProperties;
    .param p2, "oldLp"    # Landroid/net/LinkProperties;
    .param p3, "nai"    # Lcom/android/server/connectivity/NetworkAgentInfo;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 3366
    if-nez p1, :cond_1

    #@3
    const/4 v0, 0x0

    #@4
    .line 3367
    :goto_0
    if-nez p2, :cond_2

    #@6
    .line 3369
    .local v1, "oldProxyInfo":Landroid/net/ProxyInfo;
    :goto_1
    invoke-direct {p0, v0, v1}, Lcom/android/server/ConnectivityService;->proxyInfoEqual(Landroid/net/ProxyInfo;Landroid/net/ProxyInfo;)Z

    #@9
    move-result v2

    #@a
    if-nez v2, :cond_0

    #@c
    .line 3370
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->getDefaultProxy()Landroid/net/ProxyInfo;

    #@f
    move-result-object v2

    #@10
    invoke-direct {p0, v2}, Lcom/android/server/ConnectivityService;->sendProxyBroadcast(Landroid/net/ProxyInfo;)V

    #@13
    .line 3365
    :cond_0
    return-void

    #@14
    .line 3366
    .end local v1    # "oldProxyInfo":Landroid/net/ProxyInfo;
    :cond_1
    invoke-virtual {p1}, Landroid/net/LinkProperties;->getHttpProxy()Landroid/net/ProxyInfo;

    #@17
    move-result-object v0

    #@18
    .local v0, "newProxyInfo":Landroid/net/ProxyInfo;
    goto :goto_0

    #@19
    .line 3367
    .end local v0    # "newProxyInfo":Landroid/net/ProxyInfo;
    :cond_2
    invoke-virtual {p2}, Landroid/net/LinkProperties;->getHttpProxy()Landroid/net/ProxyInfo;

    #@1c
    move-result-object v1

    #@1d
    goto :goto_1
.end method

.method private updateRoutes(Landroid/net/LinkProperties;Landroid/net/LinkProperties;I)Z
    .locals 7
    .param p1, "newLp"    # Landroid/net/LinkProperties;
    .param p2, "oldLp"    # Landroid/net/LinkProperties;
    .param p3, "netId"    # I

    #@0
    .prologue
    const/4 v4, 0x1

    #@1
    .line 4523
    new-instance v3, Landroid/net/LinkProperties$CompareResult;

    #@3
    invoke-direct {v3}, Landroid/net/LinkProperties$CompareResult;-><init>()V

    #@6
    .line 4524
    .local v3, "routeDiff":Landroid/net/LinkProperties$CompareResult;, "Landroid/net/LinkProperties$CompareResult<Landroid/net/RouteInfo;>;"
    if-eqz p2, :cond_2

    #@8
    .line 4525
    invoke-virtual {p2, p1}, Landroid/net/LinkProperties;->compareAllRoutes(Landroid/net/LinkProperties;)Landroid/net/LinkProperties$CompareResult;

    #@b
    move-result-object v3

    #@c
    .line 4533
    :cond_0
    :goto_0
    iget-object v5, v3, Landroid/net/LinkProperties$CompareResult;->added:Ljava/util/List;

    #@e
    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@11
    move-result-object v2

    #@12
    .local v2, "route$iterator":Ljava/util/Iterator;
    :cond_1
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    #@15
    move-result v5

    #@16
    if-eqz v5, :cond_3

    #@18
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@1b
    move-result-object v1

    #@1c
    check-cast v1, Landroid/net/RouteInfo;

    #@1e
    .line 4534
    .local v1, "route":Landroid/net/RouteInfo;
    invoke-virtual {v1}, Landroid/net/RouteInfo;->hasGateway()Z

    #@21
    move-result v5

    #@22
    if-nez v5, :cond_1

    #@24
    .line 4537
    :try_start_0
    iget-object v5, p0, Lcom/android/server/ConnectivityService;->mNetd:Landroid/os/INetworkManagementService;

    #@26
    invoke-interface {v5, p3, v1}, Landroid/os/INetworkManagementService;->addRoute(ILandroid/net/RouteInfo;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    #@29
    goto :goto_1

    #@2a
    .line 4538
    :catch_0
    move-exception v0

    #@2b
    .line 4539
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Landroid/net/RouteInfo;->getDestination()Landroid/net/IpPrefix;

    #@2e
    move-result-object v5

    #@2f
    invoke-virtual {v5}, Landroid/net/IpPrefix;->getAddress()Ljava/net/InetAddress;

    #@32
    move-result-object v5

    #@33
    instance-of v5, v5, Ljava/net/Inet4Address;

    #@35
    if-eqz v5, :cond_1

    #@37
    .line 4540
    new-instance v5, Ljava/lang/StringBuilder;

    #@39
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@3c
    const-string/jumbo v6, "Exception in addRoute for non-gateway: "

    #@3f
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@42
    move-result-object v5

    #@43
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@46
    move-result-object v5

    #@47
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@4a
    move-result-object v5

    #@4b
    invoke-static {v5}, Lcom/android/server/ConnectivityService;->loge(Ljava/lang/String;)V

    #@4e
    goto :goto_1

    #@4f
    .line 4526
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v1    # "route":Landroid/net/RouteInfo;
    .end local v2    # "route$iterator":Ljava/util/Iterator;
    :cond_2
    if-eqz p1, :cond_0

    #@51
    .line 4527
    invoke-virtual {p1}, Landroid/net/LinkProperties;->getAllRoutes()Ljava/util/List;

    #@54
    move-result-object v5

    #@55
    iput-object v5, v3, Landroid/net/LinkProperties$CompareResult;->added:Ljava/util/List;

    #@57
    goto :goto_0

    #@58
    .line 4544
    .restart local v2    # "route$iterator":Ljava/util/Iterator;
    :cond_3
    iget-object v5, v3, Landroid/net/LinkProperties$CompareResult;->added:Ljava/util/List;

    #@5a
    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@5d
    move-result-object v2

    #@5e
    :cond_4
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    #@61
    move-result v5

    #@62
    if-eqz v5, :cond_5

    #@64
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@67
    move-result-object v1

    #@68
    check-cast v1, Landroid/net/RouteInfo;

    #@6a
    .line 4545
    .restart local v1    # "route":Landroid/net/RouteInfo;
    invoke-virtual {v1}, Landroid/net/RouteInfo;->hasGateway()Z

    #@6d
    move-result v5

    #@6e
    if-eqz v5, :cond_4

    #@70
    .line 4548
    :try_start_1
    iget-object v5, p0, Lcom/android/server/ConnectivityService;->mNetd:Landroid/os/INetworkManagementService;

    #@72
    invoke-interface {v5, p3, v1}, Landroid/os/INetworkManagementService;->addRoute(ILandroid/net/RouteInfo;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    #@75
    goto :goto_2

    #@76
    .line 4549
    :catch_1
    move-exception v0

    #@77
    .line 4550
    .restart local v0    # "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Landroid/net/RouteInfo;->getGateway()Ljava/net/InetAddress;

    #@7a
    move-result-object v5

    #@7b
    instance-of v5, v5, Ljava/net/Inet4Address;

    #@7d
    if-eqz v5, :cond_4

    #@7f
    .line 4551
    new-instance v5, Ljava/lang/StringBuilder;

    #@81
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@84
    const-string/jumbo v6, "Exception in addRoute for gateway: "

    #@87
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@8a
    move-result-object v5

    #@8b
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@8e
    move-result-object v5

    #@8f
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@92
    move-result-object v5

    #@93
    invoke-static {v5}, Lcom/android/server/ConnectivityService;->loge(Ljava/lang/String;)V

    #@96
    goto :goto_2

    #@97
    .line 4556
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v1    # "route":Landroid/net/RouteInfo;
    :cond_5
    iget-object v5, v3, Landroid/net/LinkProperties$CompareResult;->removed:Ljava/util/List;

    #@99
    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@9c
    move-result-object v2

    #@9d
    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    #@a0
    move-result v5

    #@a1
    if-eqz v5, :cond_6

    #@a3
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@a6
    move-result-object v1

    #@a7
    check-cast v1, Landroid/net/RouteInfo;

    #@a9
    .line 4559
    .restart local v1    # "route":Landroid/net/RouteInfo;
    :try_start_2
    iget-object v5, p0, Lcom/android/server/ConnectivityService;->mNetd:Landroid/os/INetworkManagementService;

    #@ab
    invoke-interface {v5, p3, v1}, Landroid/os/INetworkManagementService;->removeRoute(ILandroid/net/RouteInfo;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    #@ae
    goto :goto_3

    #@af
    .line 4560
    :catch_2
    move-exception v0

    #@b0
    .line 4561
    .restart local v0    # "e":Ljava/lang/Exception;
    new-instance v5, Ljava/lang/StringBuilder;

    #@b2
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@b5
    const-string/jumbo v6, "Exception in removeRoute: "

    #@b8
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@bb
    move-result-object v5

    #@bc
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@bf
    move-result-object v5

    #@c0
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@c3
    move-result-object v5

    #@c4
    invoke-static {v5}, Lcom/android/server/ConnectivityService;->loge(Ljava/lang/String;)V

    #@c7
    goto :goto_3

    #@c8
    .line 4564
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v1    # "route":Landroid/net/RouteInfo;
    :cond_6
    iget-object v5, v3, Landroid/net/LinkProperties$CompareResult;->added:Ljava/util/List;

    #@ca
    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    #@cd
    move-result v5

    #@ce
    if-eqz v5, :cond_7

    #@d0
    iget-object v5, v3, Landroid/net/LinkProperties$CompareResult;->removed:Ljava/util/List;

    #@d2
    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    #@d5
    move-result v5

    #@d6
    if-eqz v5, :cond_7

    #@d8
    const/4 v4, 0x0

    #@d9
    :cond_7
    return v4
.end method

.method private updateSignalStrengthThresholds(Lcom/android/server/connectivity/NetworkAgentInfo;Ljava/lang/String;Landroid/net/NetworkRequest;)V
    .locals 8
    .param p1, "nai"    # Lcom/android/server/connectivity/NetworkAgentInfo;
    .param p2, "reason"    # Ljava/lang/String;
    .param p3, "request"    # Landroid/net/NetworkRequest;

    #@0
    .prologue
    const/4 v7, 0x0

    #@1
    .line 4103
    invoke-direct {p0, p1}, Lcom/android/server/ConnectivityService;->getSignalStrengthThresholds(Lcom/android/server/connectivity/NetworkAgentInfo;)Ljava/util/ArrayList;

    #@4
    move-result-object v2

    #@5
    .line 4104
    .local v2, "thresholdsArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    new-instance v1, Landroid/os/Bundle;

    #@7
    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    #@a
    .line 4105
    .local v1, "thresholds":Landroid/os/Bundle;
    const-string/jumbo v3, "thresholds"

    #@d
    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putIntegerArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    #@10
    .line 4107
    const-string/jumbo v3, "CONNECT"

    #@13
    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@16
    move-result v3

    #@17
    if-eqz v3, :cond_0

    #@19
    .line 4118
    :goto_0
    iget-object v3, p1, Lcom/android/server/connectivity/NetworkAgentInfo;->asyncChannel:Lcom/android/internal/util/AsyncChannel;

    #@1b
    .line 4119
    const v4, 0x8100e

    #@1e
    .line 4118
    invoke-virtual {v3, v4, v7, v7, v1}, Lcom/android/internal/util/AsyncChannel;->sendMessage(IIILjava/lang/Object;)V

    #@21
    .line 4102
    return-void

    #@22
    .line 4109
    :cond_0
    if-eqz p3, :cond_1

    #@24
    iget-object v3, p3, Landroid/net/NetworkRequest;->networkCapabilities:Landroid/net/NetworkCapabilities;

    #@26
    invoke-virtual {v3}, Landroid/net/NetworkCapabilities;->hasSignalStrength()Z

    #@29
    move-result v3

    #@2a
    if-eqz v3, :cond_1

    #@2c
    .line 4110
    new-instance v3, Ljava/lang/StringBuilder;

    #@2e
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@31
    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@34
    move-result-object v3

    #@35
    const-string/jumbo v4, " "

    #@38
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3b
    move-result-object v3

    #@3c
    iget-object v4, p3, Landroid/net/NetworkRequest;->networkCapabilities:Landroid/net/NetworkCapabilities;

    #@3e
    invoke-virtual {v4}, Landroid/net/NetworkCapabilities;->getSignalStrength()I

    #@41
    move-result v4

    #@42
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@45
    move-result-object v3

    #@46
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@49
    move-result-object v0

    #@4a
    .line 4114
    .local v0, "detail":Ljava/lang/String;
    :goto_1
    const-string/jumbo v3, "updateSignalStrengthThresholds: %s, sending %s to %s"

    #@4d
    const/4 v4, 0x3

    #@4e
    new-array v4, v4, [Ljava/lang/Object;

    #@50
    .line 4115
    aput-object v0, v4, v7

    #@52
    invoke-virtual {v2}, Ljava/util/ArrayList;->toArray()[Ljava/lang/Object;

    #@55
    move-result-object v5

    #@56
    invoke-static {v5}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    #@59
    move-result-object v5

    #@5a
    const/4 v6, 0x1

    #@5b
    aput-object v5, v4, v6

    #@5d
    invoke-virtual {p1}, Lcom/android/server/connectivity/NetworkAgentInfo;->name()Ljava/lang/String;

    #@60
    move-result-object v5

    #@61
    const/4 v6, 0x2

    #@62
    aput-object v5, v4, v6

    #@64
    .line 4114
    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@67
    move-result-object v3

    #@68
    invoke-static {v3}, Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V

    #@6b
    goto :goto_0

    #@6c
    .line 4112
    .end local v0    # "detail":Ljava/lang/String;
    :cond_1
    move-object v0, p2

    #@6d
    .restart local v0    # "detail":Ljava/lang/String;
    goto :goto_1
.end method

.method private updateTcpBufferSizes(Lcom/android/server/connectivity/NetworkAgentInfo;)V
    .locals 9
    .param p1, "nai"    # Lcom/android/server/connectivity/NetworkAgentInfo;

    #@0
    .prologue
    .line 1848
    invoke-direct {p0, p1}, Lcom/android/server/ConnectivityService;->isDefaultNetwork(Lcom/android/server/connectivity/NetworkAgentInfo;)Z

    #@3
    move-result v6

    #@4
    if-nez v6, :cond_0

    #@6
    .line 1849
    return-void

    #@7
    .line 1852
    :cond_0
    iget-object v6, p1, Lcom/android/server/connectivity/NetworkAgentInfo;->linkProperties:Landroid/net/LinkProperties;

    #@9
    invoke-virtual {v6}, Landroid/net/LinkProperties;->getTcpBufferSizes()Ljava/lang/String;

    #@c
    move-result-object v4

    #@d
    .line 1853
    .local v4, "tcpBufferSizes":Ljava/lang/String;
    const/4 v5, 0x0

    #@e
    .line 1854
    .local v5, "values":[Ljava/lang/String;
    if-eqz v4, :cond_1

    #@10
    .line 1855
    const-string/jumbo v6, ","

    #@13
    invoke-virtual {v4, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    #@16
    move-result-object v5

    #@17
    .line 1858
    .end local v5    # "values":[Ljava/lang/String;
    :cond_1
    if-eqz v5, :cond_2

    #@19
    array-length v6, v5

    #@1a
    const/4 v7, 0x6

    #@1b
    if-eq v6, v7, :cond_3

    #@1d
    .line 1859
    :cond_2
    new-instance v6, Ljava/lang/StringBuilder;

    #@1f
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@22
    const-string/jumbo v7, "Invalid tcpBufferSizes string: "

    #@25
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@28
    move-result-object v6

    #@29
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2c
    move-result-object v6

    #@2d
    const-string/jumbo v7, ", using defaults"

    #@30
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@33
    move-result-object v6

    #@34
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@37
    move-result-object v6

    #@38
    invoke-static {v6}, Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V

    #@3b
    .line 1860
    const-string/jumbo v4, "4096,87380,110208,4096,16384,110208"

    #@3e
    .line 1861
    const-string/jumbo v6, ","

    #@41
    invoke-virtual {v4, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    #@44
    move-result-object v5

    #@45
    .line 1864
    :cond_3
    iget-object v6, p0, Lcom/android/server/ConnectivityService;->mCurrentTcpBufferSizes:Ljava/lang/String;

    #@47
    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@4a
    move-result v6

    #@4b
    if-eqz v6, :cond_4

    #@4d
    return-void

    #@4e
    .line 1869
    :cond_4
    :try_start_0
    const-string/jumbo v1, "/sys/kernel/ipv4/tcp_"

    #@51
    .line 1870
    .local v1, "prefix":Ljava/lang/String;
    const-string/jumbo v6, "/sys/kernel/ipv4/tcp_rmem_min"

    #@54
    const/4 v7, 0x0

    #@55
    aget-object v7, v5, v7

    #@57
    invoke-static {v6, v7}, Landroid/os/FileUtils;->stringToFile(Ljava/lang/String;Ljava/lang/String;)V

    #@5a
    .line 1871
    const-string/jumbo v6, "/sys/kernel/ipv4/tcp_rmem_def"

    #@5d
    const/4 v7, 0x1

    #@5e
    aget-object v7, v5, v7

    #@60
    invoke-static {v6, v7}, Landroid/os/FileUtils;->stringToFile(Ljava/lang/String;Ljava/lang/String;)V

    #@63
    .line 1872
    const-string/jumbo v6, "/sys/kernel/ipv4/tcp_rmem_max"

    #@66
    const/4 v7, 0x2

    #@67
    aget-object v7, v5, v7

    #@69
    invoke-static {v6, v7}, Landroid/os/FileUtils;->stringToFile(Ljava/lang/String;Ljava/lang/String;)V

    #@6c
    .line 1873
    const-string/jumbo v6, "/sys/kernel/ipv4/tcp_wmem_min"

    #@6f
    const/4 v7, 0x3

    #@70
    aget-object v7, v5, v7

    #@72
    invoke-static {v6, v7}, Landroid/os/FileUtils;->stringToFile(Ljava/lang/String;Ljava/lang/String;)V

    #@75
    .line 1874
    const-string/jumbo v6, "/sys/kernel/ipv4/tcp_wmem_def"

    #@78
    const/4 v7, 0x4

    #@79
    aget-object v7, v5, v7

    #@7b
    invoke-static {v6, v7}, Landroid/os/FileUtils;->stringToFile(Ljava/lang/String;Ljava/lang/String;)V

    #@7e
    .line 1875
    const-string/jumbo v6, "/sys/kernel/ipv4/tcp_wmem_max"

    #@81
    const/4 v7, 0x5

    #@82
    aget-object v7, v5, v7

    #@84
    invoke-static {v6, v7}, Landroid/os/FileUtils;->stringToFile(Ljava/lang/String;Ljava/lang/String;)V

    #@87
    .line 1876
    iput-object v4, p0, Lcom/android/server/ConnectivityService;->mCurrentTcpBufferSizes:Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    #@89
    .line 1881
    .end local v1    # "prefix":Ljava/lang/String;
    :goto_0
    iget-object v6, p0, Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;

    #@8b
    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    #@8e
    move-result-object v6

    #@8f
    .line 1882
    const-string/jumbo v7, "tcp_default_init_rwnd"

    #@92
    invoke-virtual {p0}, Lcom/android/server/ConnectivityService;->getDefaultTcpRwnd()I

    #@95
    move-result v8

    #@96
    .line 1881
    invoke-static {v6, v7, v8}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    #@99
    move-result v6

    #@9a
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@9d
    move-result-object v2

    #@9e
    .line 1883
    .local v2, "rwndValue":Ljava/lang/Integer;
    const-string/jumbo v3, "sys.sysctl.tcp_def_init_rwnd"

    #@a1
    .line 1884
    .local v3, "sysctlKey":Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    #@a4
    move-result v6

    #@a5
    if-eqz v6, :cond_5

    #@a7
    .line 1885
    const-string/jumbo v6, "sys.sysctl.tcp_def_init_rwnd"

    #@aa
    invoke-virtual {v2}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    #@ad
    move-result-object v7

    #@ae
    invoke-static {v6, v7}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    #@b1
    .line 1847
    :cond_5
    return-void

    #@b2
    .line 1877
    .end local v2    # "rwndValue":Ljava/lang/Integer;
    .end local v3    # "sysctlKey":Ljava/lang/String;
    :catch_0
    move-exception v0

    #@b3
    .line 1878
    .local v0, "e":Ljava/io/IOException;
    new-instance v6, Ljava/lang/StringBuilder;

    #@b5
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@b8
    const-string/jumbo v7, "Can\'t set TCP buffer sizes:"

    #@bb
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@be
    move-result-object v6

    #@bf
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@c2
    move-result-object v6

    #@c3
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@c6
    move-result-object v6

    #@c7
    invoke-static {v6}, Lcom/android/server/ConnectivityService;->loge(Ljava/lang/String;)V

    #@ca
    goto :goto_0
.end method


# virtual methods
.method synthetic -com_android_server_ConnectivityService_lambda$1()V
    .locals 0

    #@0
    .prologue
    .line 866
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->rematchForAvoidBadWifiUpdate()V

    #@3
    .line 0
    return-void
.end method

.method public addVpnAddress(Ljava/lang/String;I)Z
    .locals 3
    .param p1, "address"    # Ljava/lang/String;
    .param p2, "prefixLength"    # I

    #@0
    .prologue
    .line 5416
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->throwIfLockdownEnabled()V

    #@3
    .line 5417
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    #@6
    move-result v1

    #@7
    invoke-static {v1}, Landroid/os/UserHandle;->getUserId(I)I

    #@a
    move-result v0

    #@b
    .line 5418
    .local v0, "user":I
    iget-object v2, p0, Lcom/android/server/ConnectivityService;->mVpns:Landroid/util/SparseArray;

    #@d
    monitor-enter v2

    #@e
    .line 5419
    :try_start_0
    iget-object v1, p0, Lcom/android/server/ConnectivityService;->mVpns:Landroid/util/SparseArray;

    #@10
    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    #@13
    move-result-object v1

    #@14
    check-cast v1, Lcom/android/server/connectivity/Vpn;

    #@16
    invoke-virtual {v1, p1, p2}, Lcom/android/server/connectivity/Vpn;->addAddress(Ljava/lang/String;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@19
    move-result v1

    #@1a
    monitor-exit v2

    #@1b
    return v1

    #@1c
    .line 5418
    :catchall_0
    move-exception v1

    #@1d
    monitor-exit v2

    #@1e
    throw v1
.end method

.method public avoidBadWifi()Z
    .locals 1

    #@0
    .prologue
    .line 2777
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mAvoidBadWifiTracker:Landroid/net/util/AvoidBadWifiTracker;

    #@2
    invoke-virtual {v0}, Landroid/net/util/AvoidBadWifiTracker;->currentValue()Z

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public checkMobileProvisioning(I)I
    .locals 1
    .param p1, "suggestedTimeOutMs"    # I

    #@0
    .prologue
    .line 3767
    const/4 v0, -0x1

    #@1
    return v0
.end method

.method createAvoidBadWifiTracker(Landroid/content/Context;Landroid/os/Handler;Ljava/lang/Runnable;)Landroid/net/util/AvoidBadWifiTracker;
    .locals 1
    .param p1, "c"    # Landroid/content/Context;
    .param p2, "h"    # Landroid/os/Handler;
    .param p3, "r"    # Ljava/lang/Runnable;

    #@0
    .prologue
    .line 5524
    new-instance v0, Landroid/net/util/AvoidBadWifiTracker;

    #@2
    invoke-direct {v0, p1, p2, p3}, Landroid/net/util/AvoidBadWifiTracker;-><init>(Landroid/content/Context;Landroid/os/Handler;Ljava/lang/Runnable;)V

    #@5
    return-object v0
.end method

.method protected createHandlerThread()Landroid/os/HandlerThread;
    .locals 2

    #@0
    .prologue
    .line 694
    new-instance v0, Landroid/os/HandlerThread;

    #@2
    const-string/jumbo v1, "ConnectivityServiceThread"

    #@5
    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    #@8
    return-object v0
.end method

.method public createNetworkMonitor(Landroid/content/Context;Landroid/os/Handler;Lcom/android/server/connectivity/NetworkAgentInfo;Landroid/net/NetworkRequest;)Lcom/android/server/connectivity/NetworkMonitor;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "handler"    # Landroid/os/Handler;
    .param p3, "nai"    # Lcom/android/server/connectivity/NetworkAgentInfo;
    .param p4, "defaultRequest"    # Landroid/net/NetworkRequest;

    #@0
    .prologue
    .line 5519
    new-instance v0, Lcom/android/server/connectivity/NetworkMonitor;

    #@2
    invoke-direct {v0, p1, p2, p3, p4}, Lcom/android/server/connectivity/NetworkMonitor;-><init>(Landroid/content/Context;Landroid/os/Handler;Lcom/android/server/connectivity/NetworkAgentInfo;Landroid/net/NetworkRequest;)V

    #@5
    return-object v0
.end method

.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 23
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "writer"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    #@0
    .prologue
    .line 1955
    new-instance v13, Lcom/android/internal/util/IndentingPrintWriter;

    #@2
    const-string/jumbo v19, "  "

    #@5
    move-object/from16 v0, p2

    #@7
    move-object/from16 v1, v19

    #@9
    invoke-direct {v13, v0, v1}, Lcom/android/internal/util/IndentingPrintWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;)V

    #@c
    .line 1956
    .local v13, "pw":Lcom/android/internal/util/IndentingPrintWriter;
    move-object/from16 v0, p0

    #@e
    iget-object v0, v0, Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;

    #@10
    move-object/from16 v19, v0

    #@12
    .line 1957
    const-string/jumbo v20, "android.permission.DUMP"

    #@15
    .line 1956
    invoke-virtual/range {v19 .. v20}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    #@18
    move-result v19

    #@19
    if-eqz v19, :cond_0

    #@1b
    .line 1959
    new-instance v19, Ljava/lang/StringBuilder;

    #@1d
    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    #@20
    const-string/jumbo v20, "Permission Denial: can\'t dump ConnectivityService from from pid="

    #@23
    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@26
    move-result-object v19

    #@27
    .line 1960
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    #@2a
    move-result v20

    #@2b
    .line 1959
    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@2e
    move-result-object v19

    #@2f
    .line 1960
    const-string/jumbo v20, ", uid="

    #@32
    .line 1959
    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@35
    move-result-object v19

    #@36
    .line 1961
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    #@39
    move-result v20

    #@3a
    .line 1959
    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@3d
    move-result-object v19

    #@3e
    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@41
    move-result-object v19

    #@42
    move-object/from16 v0, v19

    #@44
    invoke-virtual {v13, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    #@47
    .line 1962
    return-void

    #@48
    .line 1965
    :cond_0
    const-string/jumbo v19, "--diag"

    #@4b
    move-object/from16 v0, p0

    #@4d
    move-object/from16 v1, p3

    #@4f
    move-object/from16 v2, v19

    #@51
    invoke-direct {v0, v1, v2}, Lcom/android/server/ConnectivityService;->argsContain([Ljava/lang/String;Ljava/lang/String;)Z

    #@54
    move-result v19

    #@55
    if-eqz v19, :cond_1

    #@57
    .line 1966
    move-object/from16 v0, p0

    #@59
    invoke-direct {v0, v13}, Lcom/android/server/ConnectivityService;->dumpNetworkDiagnostics(Lcom/android/internal/util/IndentingPrintWriter;)V

    #@5c
    .line 1967
    return-void

    #@5d
    .line 1970
    :cond_1
    const-string/jumbo v19, "NetworkFactories for:"

    #@60
    move-object/from16 v0, v19

    #@62
    invoke-virtual {v13, v0}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    #@65
    .line 1971
    move-object/from16 v0, p0

    #@67
    iget-object v0, v0, Lcom/android/server/ConnectivityService;->mNetworkFactoryInfos:Ljava/util/HashMap;

    #@69
    move-object/from16 v19, v0

    #@6b
    invoke-virtual/range {v19 .. v19}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    #@6e
    move-result-object v19

    #@6f
    invoke-interface/range {v19 .. v19}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@72
    move-result-object v8

    #@73
    .local v8, "nfi$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    #@76
    move-result v19

    #@77
    if-eqz v19, :cond_2

    #@79
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@7c
    move-result-object v7

    #@7d
    check-cast v7, Lcom/android/server/ConnectivityService$NetworkFactoryInfo;

    #@7f
    .line 1972
    .local v7, "nfi":Lcom/android/server/ConnectivityService$NetworkFactoryInfo;
    new-instance v19, Ljava/lang/StringBuilder;

    #@81
    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    #@84
    const-string/jumbo v20, " "

    #@87
    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@8a
    move-result-object v19

    #@8b
    iget-object v0, v7, Lcom/android/server/ConnectivityService$NetworkFactoryInfo;->name:Ljava/lang/String;

    #@8d
    move-object/from16 v20, v0

    #@8f
    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@92
    move-result-object v19

    #@93
    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@96
    move-result-object v19

    #@97
    move-object/from16 v0, v19

    #@99
    invoke-virtual {v13, v0}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    #@9c
    goto :goto_0

    #@9d
    .line 1974
    .end local v7    # "nfi":Lcom/android/server/ConnectivityService$NetworkFactoryInfo;
    :cond_2
    invoke-virtual {v13}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    #@a0
    .line 1975
    invoke-virtual {v13}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    #@a3
    .line 1977
    invoke-direct/range {p0 .. p0}, Lcom/android/server/ConnectivityService;->getDefaultNetwork()Lcom/android/server/connectivity/NetworkAgentInfo;

    #@a6
    move-result-object v3

    #@a7
    .line 1978
    .local v3, "defaultNai":Lcom/android/server/connectivity/NetworkAgentInfo;
    const-string/jumbo v19, "Active default network: "

    #@aa
    move-object/from16 v0, v19

    #@ac
    invoke-virtual {v13, v0}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    #@af
    .line 1979
    if-nez v3, :cond_3

    #@b1
    .line 1980
    const-string/jumbo v19, "none"

    #@b4
    move-object/from16 v0, v19

    #@b6
    invoke-virtual {v13, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    #@b9
    .line 1984
    :goto_1
    invoke-virtual {v13}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    #@bc
    .line 1986
    const-string/jumbo v19, "Current Networks:"

    #@bf
    move-object/from16 v0, v19

    #@c1
    invoke-virtual {v13, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    #@c4
    .line 1987
    invoke-virtual {v13}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()V

    #@c7
    .line 1988
    move-object/from16 v0, p0

    #@c9
    iget-object v0, v0, Lcom/android/server/ConnectivityService;->mNetworkAgentInfos:Ljava/util/HashMap;

    #@cb
    move-object/from16 v19, v0

    #@cd
    invoke-virtual/range {v19 .. v19}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    #@d0
    move-result-object v19

    #@d1
    invoke-interface/range {v19 .. v19}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@d4
    move-result-object v6

    #@d5
    .local v6, "nai$iterator":Ljava/util/Iterator;
    :goto_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    #@d8
    move-result v19

    #@d9
    if-eqz v19, :cond_5

    #@db
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@de
    move-result-object v5

    #@df
    check-cast v5, Lcom/android/server/connectivity/NetworkAgentInfo;

    #@e1
    .line 1989
    .local v5, "nai":Lcom/android/server/connectivity/NetworkAgentInfo;
    invoke-virtual {v5}, Lcom/android/server/connectivity/NetworkAgentInfo;->toString()Ljava/lang/String;

    #@e4
    move-result-object v19

    #@e5
    move-object/from16 v0, v19

    #@e7
    invoke-virtual {v13, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    #@ea
    .line 1990
    invoke-virtual {v13}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()V

    #@ed
    .line 1992
    const-string/jumbo v19, "Requests: REQUEST:%d LISTEN:%d BACKGROUND_REQUEST:%d total:%d"

    #@f0
    .line 1991
    const/16 v20, 0x4

    #@f2
    move/from16 v0, v20

    #@f4
    new-array v0, v0, [Ljava/lang/Object;

    #@f6
    move-object/from16 v20, v0

    #@f8
    .line 1993
    invoke-virtual {v5}, Lcom/android/server/connectivity/NetworkAgentInfo;->numForegroundNetworkRequests()I

    #@fb
    move-result v21

    #@fc
    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@ff
    move-result-object v21

    #@100
    const/16 v22, 0x0

    #@102
    aput-object v21, v20, v22

    #@104
    .line 1994
    invoke-virtual {v5}, Lcom/android/server/connectivity/NetworkAgentInfo;->numNetworkRequests()I

    #@107
    move-result v21

    #@108
    invoke-virtual {v5}, Lcom/android/server/connectivity/NetworkAgentInfo;->numRequestNetworkRequests()I

    #@10b
    move-result v22

    #@10c
    sub-int v21, v21, v22

    #@10e
    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@111
    move-result-object v21

    #@112
    const/16 v22, 0x1

    #@114
    aput-object v21, v20, v22

    #@116
    .line 1995
    invoke-virtual {v5}, Lcom/android/server/connectivity/NetworkAgentInfo;->numBackgroundNetworkRequests()I

    #@119
    move-result v21

    #@11a
    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@11d
    move-result-object v21

    #@11e
    const/16 v22, 0x2

    #@120
    aput-object v21, v20, v22

    #@122
    .line 1996
    invoke-virtual {v5}, Lcom/android/server/connectivity/NetworkAgentInfo;->numNetworkRequests()I

    #@125
    move-result v21

    #@126
    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@129
    move-result-object v21

    #@12a
    const/16 v22, 0x3

    #@12c
    aput-object v21, v20, v22

    #@12e
    .line 1991
    invoke-static/range {v19 .. v20}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@131
    move-result-object v19

    #@132
    move-object/from16 v0, v19

    #@134
    invoke-virtual {v13, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    #@137
    .line 1997
    invoke-virtual {v13}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()V

    #@13a
    .line 1998
    const/4 v4, 0x0

    #@13b
    .local v4, "i":I
    :goto_3
    invoke-virtual {v5}, Lcom/android/server/connectivity/NetworkAgentInfo;->numNetworkRequests()I

    #@13e
    move-result v19

    #@13f
    move/from16 v0, v19

    #@141
    if-ge v4, v0, :cond_4

    #@143
    .line 1999
    invoke-virtual {v5, v4}, Lcom/android/server/connectivity/NetworkAgentInfo;->requestAt(I)Landroid/net/NetworkRequest;

    #@146
    move-result-object v19

    #@147
    invoke-virtual/range {v19 .. v19}, Landroid/net/NetworkRequest;->toString()Ljava/lang/String;

    #@14a
    move-result-object v19

    #@14b
    move-object/from16 v0, v19

    #@14d
    invoke-virtual {v13, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    #@150
    .line 1998
    add-int/lit8 v4, v4, 0x1

    #@152
    goto :goto_3

    #@153
    .line 1982
    .end local v4    # "i":I
    .end local v5    # "nai":Lcom/android/server/connectivity/NetworkAgentInfo;
    .end local v6    # "nai$iterator":Ljava/util/Iterator;
    :cond_3
    iget-object v0, v3, Lcom/android/server/connectivity/NetworkAgentInfo;->network:Landroid/net/Network;

    #@155
    move-object/from16 v19, v0

    #@157
    move-object/from16 v0, v19

    #@159
    iget v0, v0, Landroid/net/Network;->netId:I

    #@15b
    move/from16 v19, v0

    #@15d
    move/from16 v0, v19

    #@15f
    invoke-virtual {v13, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(I)V

    #@162
    goto/16 :goto_1

    #@164
    .line 2001
    .restart local v4    # "i":I
    .restart local v5    # "nai":Lcom/android/server/connectivity/NetworkAgentInfo;
    .restart local v6    # "nai$iterator":Ljava/util/Iterator;
    :cond_4
    invoke-virtual {v13}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()V

    #@167
    .line 2002
    const-string/jumbo v19, "Lingered:"

    #@16a
    move-object/from16 v0, v19

    #@16c
    invoke-virtual {v13, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    #@16f
    .line 2003
    invoke-virtual {v13}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()V

    #@172
    .line 2004
    invoke-virtual {v5, v13}, Lcom/android/server/connectivity/NetworkAgentInfo;->dumpLingerTimers(Ljava/io/PrintWriter;)V

    #@175
    .line 2005
    invoke-virtual {v13}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()V

    #@178
    .line 2006
    invoke-virtual {v13}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()V

    #@17b
    goto/16 :goto_2

    #@17d
    .line 2008
    .end local v4    # "i":I
    .end local v5    # "nai":Lcom/android/server/connectivity/NetworkAgentInfo;
    :cond_5
    invoke-virtual {v13}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()V

    #@180
    .line 2009
    invoke-virtual {v13}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    #@183
    .line 2011
    const-string/jumbo v19, "Metered Interfaces:"

    #@186
    move-object/from16 v0, v19

    #@188
    invoke-virtual {v13, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    #@18b
    .line 2012
    invoke-virtual {v13}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()V

    #@18e
    .line 2013
    move-object/from16 v0, p0

    #@190
    iget-object v0, v0, Lcom/android/server/ConnectivityService;->mMeteredIfaces:Landroid/util/ArraySet;

    #@192
    move-object/from16 v19, v0

    #@194
    invoke-interface/range {v19 .. v19}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@197
    move-result-object v18

    #@198
    .local v18, "value$iterator":Ljava/util/Iterator;
    :goto_4
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->hasNext()Z

    #@19b
    move-result v19

    #@19c
    if-eqz v19, :cond_6

    #@19e
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@1a1
    move-result-object v17

    #@1a2
    check-cast v17, Ljava/lang/String;

    #@1a4
    .line 2014
    .local v17, "value":Ljava/lang/String;
    move-object/from16 v0, v17

    #@1a6
    invoke-virtual {v13, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    #@1a9
    goto :goto_4

    #@1aa
    .line 2016
    .end local v17    # "value":Ljava/lang/String;
    :cond_6
    invoke-virtual {v13}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()V

    #@1ad
    .line 2017
    invoke-virtual {v13}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    #@1b0
    .line 2019
    const-string/jumbo v19, "Restrict background: "

    #@1b3
    move-object/from16 v0, v19

    #@1b5
    invoke-virtual {v13, v0}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    #@1b8
    .line 2020
    move-object/from16 v0, p0

    #@1ba
    iget-boolean v0, v0, Lcom/android/server/ConnectivityService;->mRestrictBackground:Z

    #@1bc
    move/from16 v19, v0

    #@1be
    move/from16 v0, v19

    #@1c0
    invoke-virtual {v13, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Z)V

    #@1c3
    .line 2021
    invoke-virtual {v13}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    #@1c6
    .line 2023
    const-string/jumbo v19, "Status for known UIDs:"

    #@1c9
    move-object/from16 v0, v19

    #@1cb
    invoke-virtual {v13, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    #@1ce
    .line 2024
    invoke-virtual {v13}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()V

    #@1d1
    .line 2025
    move-object/from16 v0, p0

    #@1d3
    iget-object v0, v0, Lcom/android/server/ConnectivityService;->mUidRules:Landroid/util/SparseIntArray;

    #@1d5
    move-object/from16 v19, v0

    #@1d7
    invoke-virtual/range {v19 .. v19}, Landroid/util/SparseIntArray;->size()I

    #@1da
    move-result v14

    #@1db
    .line 2026
    .local v14, "size":I
    const/4 v4, 0x0

    #@1dc
    .restart local v4    # "i":I
    :goto_5
    if-ge v4, v14, :cond_7

    #@1de
    .line 2027
    move-object/from16 v0, p0

    #@1e0
    iget-object v0, v0, Lcom/android/server/ConnectivityService;->mUidRules:Landroid/util/SparseIntArray;

    #@1e2
    move-object/from16 v19, v0

    #@1e4
    move-object/from16 v0, v19

    #@1e6
    invoke-virtual {v0, v4}, Landroid/util/SparseIntArray;->keyAt(I)I

    #@1e9
    move-result v15

    #@1ea
    .line 2028
    .local v15, "uid":I
    const-string/jumbo v19, "UID="

    #@1ed
    move-object/from16 v0, v19

    #@1ef
    invoke-virtual {v13, v0}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    #@1f2
    .line 2029
    invoke-virtual {v13, v15}, Lcom/android/internal/util/IndentingPrintWriter;->print(I)V

    #@1f5
    .line 2030
    move-object/from16 v0, p0

    #@1f7
    iget-object v0, v0, Lcom/android/server/ConnectivityService;->mUidRules:Landroid/util/SparseIntArray;

    #@1f9
    move-object/from16 v19, v0

    #@1fb
    const/16 v20, 0x0

    #@1fd
    move-object/from16 v0, v19

    #@1ff
    move/from16 v1, v20

    #@201
    invoke-virtual {v0, v15, v1}, Landroid/util/SparseIntArray;->get(II)I

    #@204
    move-result v16

    #@205
    .line 2031
    .local v16, "uidRules":I
    const-string/jumbo v19, " rules="

    #@208
    move-object/from16 v0, v19

    #@20a
    invoke-virtual {v13, v0}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    #@20d
    .line 2032
    invoke-static/range {v16 .. v16}, Landroid/net/NetworkPolicyManager;->uidRulesToString(I)Ljava/lang/String;

    #@210
    move-result-object v19

    #@211
    move-object/from16 v0, v19

    #@213
    invoke-virtual {v13, v0}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    #@216
    .line 2033
    invoke-virtual {v13}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    #@219
    .line 2026
    add-int/lit8 v4, v4, 0x1

    #@21b
    goto :goto_5

    #@21c
    .line 2035
    .end local v15    # "uid":I
    .end local v16    # "uidRules":I
    :cond_7
    invoke-virtual {v13}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    #@21f
    .line 2036
    invoke-virtual {v13}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()V

    #@222
    .line 2038
    const-string/jumbo v19, "Network Requests:"

    #@225
    move-object/from16 v0, v19

    #@227
    invoke-virtual {v13, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    #@22a
    .line 2039
    invoke-virtual {v13}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()V

    #@22d
    .line 2040
    move-object/from16 v0, p0

    #@22f
    iget-object v0, v0, Lcom/android/server/ConnectivityService;->mNetworkRequests:Ljava/util/HashMap;

    #@231
    move-object/from16 v19, v0

    #@233
    invoke-virtual/range {v19 .. v19}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    #@236
    move-result-object v19

    #@237
    invoke-interface/range {v19 .. v19}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@23a
    move-result-object v10

    #@23b
    .local v10, "nri$iterator":Ljava/util/Iterator;
    :goto_6
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    #@23e
    move-result v19

    #@23f
    if-eqz v19, :cond_8

    #@241
    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@244
    move-result-object v9

    #@245
    check-cast v9, Lcom/android/server/ConnectivityService$NetworkRequestInfo;

    #@247
    .line 2041
    .local v9, "nri":Lcom/android/server/ConnectivityService$NetworkRequestInfo;
    invoke-virtual {v9}, Lcom/android/server/ConnectivityService$NetworkRequestInfo;->toString()Ljava/lang/String;

    #@24a
    move-result-object v19

    #@24b
    move-object/from16 v0, v19

    #@24d
    invoke-virtual {v13, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    #@250
    goto :goto_6

    #@251
    .line 2043
    .end local v9    # "nri":Lcom/android/server/ConnectivityService$NetworkRequestInfo;
    :cond_8
    invoke-virtual {v13}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    #@254
    .line 2044
    invoke-virtual {v13}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()V

    #@257
    .line 2046
    move-object/from16 v0, p0

    #@259
    iget-object v0, v0, Lcom/android/server/ConnectivityService;->mLegacyTypeTracker:Lcom/android/server/ConnectivityService$LegacyTypeTracker;

    #@25b
    move-object/from16 v19, v0

    #@25d
    move-object/from16 v0, v19

    #@25f
    invoke-virtual {v0, v13}, Lcom/android/server/ConnectivityService$LegacyTypeTracker;->dump(Lcom/android/internal/util/IndentingPrintWriter;)V

    #@262
    .line 2048
    monitor-enter p0

    #@263
    .line 2049
    :try_start_0
    new-instance v19, Ljava/lang/StringBuilder;

    #@265
    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    #@268
    const-string/jumbo v20, "mNetTransitionWakeLock: currently "

    #@26b
    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@26e
    move-result-object v20

    #@26f
    .line 2050
    move-object/from16 v0, p0

    #@271
    iget-object v0, v0, Lcom/android/server/ConnectivityService;->mNetTransitionWakeLock:Landroid/os/PowerManager$WakeLock;

    #@273
    move-object/from16 v19, v0

    #@275
    invoke-virtual/range {v19 .. v19}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    #@278
    move-result v19

    #@279
    if-eqz v19, :cond_9

    #@27b
    const-string/jumbo v19, ""

    #@27e
    .line 2049
    :goto_7
    move-object/from16 v0, v20

    #@280
    move-object/from16 v1, v19

    #@282
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@285
    move-result-object v19

    #@286
    .line 2050
    const-string/jumbo v20, "held"

    #@289
    .line 2049
    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@28c
    move-result-object v19

    #@28d
    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@290
    move-result-object v19

    #@291
    move-object/from16 v0, v19

    #@293
    invoke-virtual {v13, v0}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    #@296
    .line 2051
    move-object/from16 v0, p0

    #@298
    iget-object v0, v0, Lcom/android/server/ConnectivityService;->mNetTransitionWakeLockCausedBy:Ljava/lang/String;

    #@29a
    move-object/from16 v19, v0

    #@29c
    invoke-static/range {v19 .. v19}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@29f
    move-result v19

    #@2a0
    if-nez v19, :cond_a

    #@2a2
    .line 2052
    new-instance v19, Ljava/lang/StringBuilder;

    #@2a4
    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    #@2a7
    const-string/jumbo v20, ", last requested for "

    #@2aa
    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2ad
    move-result-object v19

    #@2ae
    move-object/from16 v0, p0

    #@2b0
    iget-object v0, v0, Lcom/android/server/ConnectivityService;->mNetTransitionWakeLockCausedBy:Ljava/lang/String;

    #@2b2
    move-object/from16 v20, v0

    #@2b4
    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2b7
    move-result-object v19

    #@2b8
    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2bb
    move-result-object v19

    #@2bc
    move-object/from16 v0, v19

    #@2be
    invoke-virtual {v13, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@2c1
    :goto_8
    monitor-exit p0

    #@2c2
    .line 2058
    invoke-virtual {v13}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    #@2c5
    .line 2059
    move-object/from16 v0, p0

    #@2c7
    iget-object v0, v0, Lcom/android/server/ConnectivityService;->mTethering:Lcom/android/server/connectivity/Tethering;

    #@2c9
    move-object/from16 v19, v0

    #@2cb
    move-object/from16 v0, v19

    #@2cd
    move-object/from16 v1, p1

    #@2cf
    move-object/from16 v2, p3

    #@2d1
    invoke-virtual {v0, v1, v13, v2}, Lcom/android/server/connectivity/Tethering;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    #@2d4
    .line 2061
    invoke-virtual {v13}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    #@2d7
    .line 2062
    move-object/from16 v0, p0

    #@2d9
    iget-object v0, v0, Lcom/android/server/ConnectivityService;->mKeepaliveTracker:Lcom/android/server/connectivity/KeepaliveTracker;

    #@2db
    move-object/from16 v19, v0

    #@2dd
    move-object/from16 v0, v19

    #@2df
    invoke-virtual {v0, v13}, Lcom/android/server/connectivity/KeepaliveTracker;->dump(Lcom/android/internal/util/IndentingPrintWriter;)V

    #@2e2
    .line 2064
    invoke-virtual {v13}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    #@2e5
    .line 2065
    move-object/from16 v0, p0

    #@2e7
    invoke-direct {v0, v13}, Lcom/android/server/ConnectivityService;->dumpAvoidBadWifiSettings(Lcom/android/internal/util/IndentingPrintWriter;)V

    #@2ea
    .line 2067
    invoke-virtual {v13}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    #@2ed
    .line 2068
    move-object/from16 v0, p0

    #@2ef
    iget-object v0, v0, Lcom/android/server/ConnectivityService;->mInetLog:Ljava/util/ArrayList;

    #@2f1
    move-object/from16 v19, v0

    #@2f3
    if-eqz v19, :cond_c

    #@2f5
    move-object/from16 v0, p0

    #@2f7
    iget-object v0, v0, Lcom/android/server/ConnectivityService;->mInetLog:Ljava/util/ArrayList;

    #@2f9
    move-object/from16 v19, v0

    #@2fb
    invoke-virtual/range {v19 .. v19}, Ljava/util/ArrayList;->size()I

    #@2fe
    move-result v19

    #@2ff
    if-lez v19, :cond_c

    #@301
    .line 2069
    invoke-virtual {v13}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    #@304
    .line 2070
    const-string/jumbo v19, "Inet condition reports:"

    #@307
    move-object/from16 v0, v19

    #@309
    invoke-virtual {v13, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    #@30c
    .line 2071
    invoke-virtual {v13}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()V

    #@30f
    .line 2072
    const/4 v4, 0x0

    #@310
    :goto_9
    move-object/from16 v0, p0

    #@312
    iget-object v0, v0, Lcom/android/server/ConnectivityService;->mInetLog:Ljava/util/ArrayList;

    #@314
    move-object/from16 v19, v0

    #@316
    invoke-virtual/range {v19 .. v19}, Ljava/util/ArrayList;->size()I

    #@319
    move-result v19

    #@31a
    move/from16 v0, v19

    #@31c
    if-ge v4, v0, :cond_b

    #@31e
    .line 2073
    move-object/from16 v0, p0

    #@320
    iget-object v0, v0, Lcom/android/server/ConnectivityService;->mInetLog:Ljava/util/ArrayList;

    #@322
    move-object/from16 v19, v0

    #@324
    move-object/from16 v0, v19

    #@326
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@329
    move-result-object v19

    #@32a
    move-object/from16 v0, v19

    #@32c
    invoke-virtual {v13, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/Object;)V

    #@32f
    .line 2072
    add-int/lit8 v4, v4, 0x1

    #@331
    goto :goto_9

    #@332
    .line 2050
    :cond_9
    :try_start_1
    const-string/jumbo v19, "not "

    #@335
    goto/16 :goto_7

    #@337
    .line 2054
    :cond_a
    const-string/jumbo v19, ", last requested never"

    #@33a
    move-object/from16 v0, v19

    #@33c
    invoke-virtual {v13, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@33f
    goto :goto_8

    #@340
    .line 2048
    :catchall_0
    move-exception v19

    #@341
    monitor-exit p0

    #@342
    throw v19

    #@343
    .line 2075
    :cond_b
    invoke-virtual {v13}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()V

    #@346
    .line 2078
    :cond_c
    const-string/jumbo v19, "--short"

    #@349
    move-object/from16 v0, p0

    #@34b
    move-object/from16 v1, p3

    #@34d
    move-object/from16 v2, v19

    #@34f
    invoke-direct {v0, v1, v2}, Lcom/android/server/ConnectivityService;->argsContain([Ljava/lang/String;Ljava/lang/String;)Z

    #@352
    move-result v19

    #@353
    if-nez v19, :cond_e

    #@355
    .line 2079
    invoke-virtual {v13}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    #@358
    .line 2080
    move-object/from16 v0, p0

    #@35a
    iget-object v0, v0, Lcom/android/server/ConnectivityService;->mValidationLogs:Ljava/util/ArrayDeque;

    #@35c
    move-object/from16 v20, v0

    #@35e
    monitor-enter v20

    #@35f
    .line 2081
    :try_start_2
    const-string/jumbo v19, "mValidationLogs (most recent first):"

    #@362
    move-object/from16 v0, v19

    #@364
    invoke-virtual {v13, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    #@367
    .line 2082
    move-object/from16 v0, p0

    #@369
    iget-object v0, v0, Lcom/android/server/ConnectivityService;->mValidationLogs:Ljava/util/ArrayDeque;

    #@36b
    move-object/from16 v19, v0

    #@36d
    invoke-interface/range {v19 .. v19}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@370
    move-result-object v12

    #@371
    .local v12, "p$iterator":Ljava/util/Iterator;
    :goto_a
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    #@374
    move-result v19

    #@375
    if-eqz v19, :cond_d

    #@377
    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@37a
    move-result-object v11

    #@37b
    check-cast v11, Lcom/android/server/ConnectivityService$ValidationLog;

    #@37d
    .line 2083
    .local v11, "p":Lcom/android/server/ConnectivityService$ValidationLog;
    new-instance v19, Ljava/lang/StringBuilder;

    #@37f
    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    #@382
    iget-object v0, v11, Lcom/android/server/ConnectivityService$ValidationLog;->mNetwork:Landroid/net/Network;

    #@384
    move-object/from16 v21, v0

    #@386
    move-object/from16 v0, v19

    #@388
    move-object/from16 v1, v21

    #@38a
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@38d
    move-result-object v19

    #@38e
    const-string/jumbo v21, " - "

    #@391
    move-object/from16 v0, v19

    #@393
    move-object/from16 v1, v21

    #@395
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@398
    move-result-object v19

    #@399
    iget-object v0, v11, Lcom/android/server/ConnectivityService$ValidationLog;->mNetworkExtraInfo:Ljava/lang/String;

    #@39b
    move-object/from16 v21, v0

    #@39d
    move-object/from16 v0, v19

    #@39f
    move-object/from16 v1, v21

    #@3a1
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3a4
    move-result-object v19

    #@3a5
    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3a8
    move-result-object v19

    #@3a9
    move-object/from16 v0, v19

    #@3ab
    invoke-virtual {v13, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    #@3ae
    .line 2084
    invoke-virtual {v13}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()V

    #@3b1
    .line 2085
    iget-object v0, v11, Lcom/android/server/ConnectivityService$ValidationLog;->mLog:Landroid/util/LocalLog$ReadOnlyLocalLog;

    #@3b3
    move-object/from16 v19, v0

    #@3b5
    move-object/from16 v0, v19

    #@3b7
    move-object/from16 v1, p1

    #@3b9
    move-object/from16 v2, p3

    #@3bb
    invoke-virtual {v0, v1, v13, v2}, Landroid/util/LocalLog$ReadOnlyLocalLog;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    #@3be
    .line 2086
    invoke-virtual {v13}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    #@3c1
    goto :goto_a

    #@3c2
    .line 2080
    .end local v11    # "p":Lcom/android/server/ConnectivityService$ValidationLog;
    .end local v12    # "p$iterator":Ljava/util/Iterator;
    :catchall_1
    move-exception v19

    #@3c3
    monitor-exit v20

    #@3c4
    throw v19

    #@3c5
    .restart local v12    # "p$iterator":Ljava/util/Iterator;
    :cond_d
    monitor-exit v20

    #@3c6
    .line 2090
    invoke-virtual {v13}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    #@3c9
    .line 2091
    const-string/jumbo v19, "mNetworkRequestInfoLogs (most recent first):"

    #@3cc
    move-object/from16 v0, v19

    #@3ce
    invoke-virtual {v13, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    #@3d1
    .line 2092
    invoke-virtual {v13}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()V

    #@3d4
    .line 2093
    move-object/from16 v0, p0

    #@3d6
    iget-object v0, v0, Lcom/android/server/ConnectivityService;->mNetworkRequestInfoLogs:Landroid/util/LocalLog;

    #@3d8
    move-object/from16 v19, v0

    #@3da
    move-object/from16 v0, v19

    #@3dc
    move-object/from16 v1, p1

    #@3de
    move-object/from16 v2, p3

    #@3e0
    invoke-virtual {v0, v1, v13, v2}, Landroid/util/LocalLog;->reverseDump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    #@3e3
    .line 2094
    invoke-virtual {v13}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()V

    #@3e6
    .line 2096
    invoke-virtual {v13}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    #@3e9
    .line 2097
    const-string/jumbo v19, "mNetworkInfoBlockingLogs (most recent first):"

    #@3ec
    move-object/from16 v0, v19

    #@3ee
    invoke-virtual {v13, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    #@3f1
    .line 2098
    invoke-virtual {v13}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()V

    #@3f4
    .line 2099
    move-object/from16 v0, p0

    #@3f6
    iget-object v0, v0, Lcom/android/server/ConnectivityService;->mNetworkInfoBlockingLogs:Landroid/util/LocalLog;

    #@3f8
    move-object/from16 v19, v0

    #@3fa
    move-object/from16 v0, v19

    #@3fc
    move-object/from16 v1, p1

    #@3fe
    move-object/from16 v2, p3

    #@400
    invoke-virtual {v0, v1, v13, v2}, Landroid/util/LocalLog;->reverseDump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    #@403
    .line 2100
    invoke-virtual {v13}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()V

    #@406
    .line 1954
    .end local v12    # "p$iterator":Ljava/util/Iterator;
    :cond_e
    return-void
.end method

.method public establishVpn(Lcom/android/internal/net/VpnConfig;)Landroid/os/ParcelFileDescriptor;
    .locals 3
    .param p1, "config"    # Lcom/android/internal/net/VpnConfig;

    #@0
    .prologue
    .line 3526
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->throwIfLockdownEnabled()V

    #@3
    .line 3527
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    #@6
    move-result v1

    #@7
    invoke-static {v1}, Landroid/os/UserHandle;->getUserId(I)I

    #@a
    move-result v0

    #@b
    .line 3528
    .local v0, "user":I
    iget-object v2, p0, Lcom/android/server/ConnectivityService;->mVpns:Landroid/util/SparseArray;

    #@d
    monitor-enter v2

    #@e
    .line 3529
    :try_start_0
    iget-object v1, p0, Lcom/android/server/ConnectivityService;->mVpns:Landroid/util/SparseArray;

    #@10
    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    #@13
    move-result-object v1

    #@14
    check-cast v1, Lcom/android/server/connectivity/Vpn;

    #@16
    invoke-virtual {v1, p1}, Lcom/android/server/connectivity/Vpn;->establish(Lcom/android/internal/net/VpnConfig;)Landroid/os/ParcelFileDescriptor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@19
    move-result-object v1

    #@1a
    monitor-exit v2

    #@1b
    return-object v1

    #@1c
    .line 3528
    :catchall_0
    move-exception v1

    #@1d
    monitor-exit v2

    #@1e
    throw v1
.end method

.method public factoryReset()V
    .locals 9

    #@0
    .prologue
    const/4 v8, 0x0

    #@1
    const/4 v5, 0x0

    #@2
    .line 5469
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->enforceConnectivityInternalPermission()V

    #@5
    .line 5471
    iget-object v4, p0, Lcom/android/server/ConnectivityService;->mUserManager:Landroid/os/UserManager;

    #@7
    const-string/jumbo v6, "no_network_reset"

    #@a
    invoke-virtual {v4, v6}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;)Z

    #@d
    move-result v4

    #@e
    if-eqz v4, :cond_0

    #@10
    .line 5472
    return-void

    #@11
    .line 5475
    :cond_0
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    #@14
    move-result v2

    #@15
    .line 5478
    .local v2, "userId":I
    invoke-virtual {p0, v5}, Lcom/android/server/ConnectivityService;->setAirplaneMode(Z)V

    #@18
    .line 5480
    iget-object v4, p0, Lcom/android/server/ConnectivityService;->mUserManager:Landroid/os/UserManager;

    #@1a
    const-string/jumbo v6, "no_config_tethering"

    #@1d
    invoke-virtual {v4, v6}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;)Z

    #@20
    move-result v4

    #@21
    if-nez v4, :cond_1

    #@23
    .line 5482
    invoke-virtual {p0}, Lcom/android/server/ConnectivityService;->getTetheredIfaces()[Ljava/lang/String;

    #@26
    move-result-object v6

    #@27
    array-length v7, v6

    #@28
    move v4, v5

    #@29
    :goto_0
    if-ge v4, v7, :cond_1

    #@2b
    aget-object v1, v6, v4

    #@2d
    .line 5483
    .local v1, "tether":Ljava/lang/String;
    invoke-virtual {p0, v1}, Lcom/android/server/ConnectivityService;->untether(Ljava/lang/String;)I

    #@30
    .line 5482
    add-int/lit8 v4, v4, 0x1

    #@32
    goto :goto_0

    #@33
    .line 5487
    .end local v1    # "tether":Ljava/lang/String;
    :cond_1
    iget-object v4, p0, Lcom/android/server/ConnectivityService;->mUserManager:Landroid/os/UserManager;

    #@35
    const-string/jumbo v6, "no_config_vpn"

    #@38
    invoke-virtual {v4, v6}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;)Z

    #@3b
    move-result v4

    #@3c
    if-nez v4, :cond_3

    #@3e
    .line 5489
    iget-object v6, p0, Lcom/android/server/ConnectivityService;->mVpns:Landroid/util/SparseArray;

    #@40
    monitor-enter v6

    #@41
    .line 5490
    :try_start_0
    invoke-virtual {p0, v2}, Lcom/android/server/ConnectivityService;->getAlwaysOnVpnPackage(I)Ljava/lang/String;

    #@44
    move-result-object v0

    #@45
    .line 5491
    .local v0, "alwaysOnPackage":Ljava/lang/String;
    if-eqz v0, :cond_2

    #@47
    .line 5492
    const/4 v4, 0x0

    #@48
    const/4 v7, 0x0

    #@49
    invoke-virtual {p0, v2, v4, v7}, Lcom/android/server/ConnectivityService;->setAlwaysOnVpnPackage(ILjava/lang/String;Z)Z

    #@4c
    .line 5493
    const/4 v4, 0x0

    #@4d
    invoke-virtual {p0, v0, v2, v4}, Lcom/android/server/ConnectivityService;->setVpnPackageAuthorization(Ljava/lang/String;IZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@50
    :cond_2
    monitor-exit v6

    #@51
    .line 5498
    invoke-virtual {p0, v2}, Lcom/android/server/ConnectivityService;->getVpnConfig(I)Lcom/android/internal/net/VpnConfig;

    #@54
    move-result-object v3

    #@55
    .line 5499
    .local v3, "vpnConfig":Lcom/android/internal/net/VpnConfig;
    if-eqz v3, :cond_3

    #@57
    .line 5500
    iget-boolean v4, v3, Lcom/android/internal/net/VpnConfig;->legacy:Z

    #@59
    if-eqz v4, :cond_4

    #@5b
    .line 5501
    const-string/jumbo v4, "[Legacy VPN]"

    #@5e
    const-string/jumbo v5, "[Legacy VPN]"

    #@61
    invoke-virtual {p0, v4, v5, v2}, Lcom/android/server/ConnectivityService;->prepareVpn(Ljava/lang/String;Ljava/lang/String;I)Z

    #@64
    .line 5512
    .end local v0    # "alwaysOnPackage":Ljava/lang/String;
    .end local v3    # "vpnConfig":Lcom/android/internal/net/VpnConfig;
    :cond_3
    :goto_1
    iget-object v4, p0, Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;

    #@66
    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    #@69
    move-result-object v4

    #@6a
    .line 5513
    const-string/jumbo v5, "network_avoid_bad_wifi"

    #@6d
    .line 5512
    invoke-static {v4, v5, v8}, Landroid/provider/Settings$Global;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    #@70
    .line 5468
    return-void

    #@71
    .line 5489
    :catchall_0
    move-exception v4

    #@72
    monitor-exit v6

    #@73
    throw v4

    #@74
    .line 5505
    .restart local v0    # "alwaysOnPackage":Ljava/lang/String;
    .restart local v3    # "vpnConfig":Lcom/android/internal/net/VpnConfig;
    :cond_4
    iget-object v4, v3, Lcom/android/internal/net/VpnConfig;->user:Ljava/lang/String;

    #@76
    invoke-virtual {p0, v4, v2, v5}, Lcom/android/server/ConnectivityService;->setVpnPackageAuthorization(Ljava/lang/String;IZ)V

    #@79
    .line 5507
    const-string/jumbo v4, "[Legacy VPN]"

    #@7c
    invoke-virtual {p0, v8, v4, v2}, Lcom/android/server/ConnectivityService;->prepareVpn(Ljava/lang/String;Ljava/lang/String;I)Z

    #@7f
    goto :goto_1
.end method

.method public getActiveLinkProperties()Landroid/net/LinkProperties;
    .locals 3

    #@0
    .prologue
    .line 1308
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->enforceAccessPermission()V

    #@3
    .line 1309
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    #@6
    move-result v1

    #@7
    .line 1310
    .local v1, "uid":I
    invoke-direct {p0, v1}, Lcom/android/server/ConnectivityService;->getUnfilteredActiveNetworkState(I)Landroid/net/NetworkState;

    #@a
    move-result-object v0

    #@b
    .line 1311
    .local v0, "state":Landroid/net/NetworkState;
    iget-object v2, v0, Landroid/net/NetworkState;->linkProperties:Landroid/net/LinkProperties;

    #@d
    return-object v2
.end method

.method public getActiveNetwork()Landroid/net/Network;
    .locals 2

    #@0
    .prologue
    .line 1127
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->enforceAccessPermission()V

    #@3
    .line 1128
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    #@6
    move-result v0

    #@7
    const/4 v1, 0x0

    #@8
    invoke-direct {p0, v0, v1}, Lcom/android/server/ConnectivityService;->getActiveNetworkForUidInternal(IZ)Landroid/net/Network;

    #@b
    move-result-object v0

    #@c
    return-object v0
.end method

.method public getActiveNetworkForUid(IZ)Landroid/net/Network;
    .locals 1
    .param p1, "uid"    # I
    .param p2, "ignoreBlocked"    # Z

    #@0
    .prologue
    .line 1133
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->enforceConnectivityInternalPermission()V

    #@3
    .line 1134
    invoke-direct {p0, p1, p2}, Lcom/android/server/ConnectivityService;->getActiveNetworkForUidInternal(IZ)Landroid/net/Network;

    #@6
    move-result-object v0

    #@7
    return-object v0
.end method

.method public getActiveNetworkInfo()Landroid/net/NetworkInfo;
    .locals 3

    #@0
    .prologue
    .line 1117
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->enforceAccessPermission()V

    #@3
    .line 1118
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    #@6
    move-result v1

    #@7
    .line 1119
    .local v1, "uid":I
    invoke-direct {p0, v1}, Lcom/android/server/ConnectivityService;->getUnfilteredActiveNetworkState(I)Landroid/net/NetworkState;

    #@a
    move-result-object v0

    #@b
    .line 1120
    .local v0, "state":Landroid/net/NetworkState;
    const/4 v2, 0x0

    #@c
    invoke-direct {p0, v0, v1, v2}, Lcom/android/server/ConnectivityService;->filterNetworkStateForUid(Landroid/net/NetworkState;IZ)V

    #@f
    .line 1121
    iget-object v2, v0, Landroid/net/NetworkState;->networkInfo:Landroid/net/NetworkInfo;

    #@11
    invoke-direct {p0, v2, v1}, Lcom/android/server/ConnectivityService;->maybeLogBlockedNetworkInfo(Landroid/net/NetworkInfo;I)V

    #@14
    .line 1122
    iget-object v2, v0, Landroid/net/NetworkState;->networkInfo:Landroid/net/NetworkInfo;

    #@16
    return-object v2
.end method

.method public getActiveNetworkInfoForUid(IZ)Landroid/net/NetworkInfo;
    .locals 2
    .param p1, "uid"    # I
    .param p2, "ignoreBlocked"    # Z

    #@0
    .prologue
    .line 1169
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->enforceConnectivityInternalPermission()V

    #@3
    .line 1170
    invoke-direct {p0, p1}, Lcom/android/server/ConnectivityService;->getUnfilteredActiveNetworkState(I)Landroid/net/NetworkState;

    #@6
    move-result-object v0

    #@7
    .line 1171
    .local v0, "state":Landroid/net/NetworkState;
    invoke-direct {p0, v0, p1, p2}, Lcom/android/server/ConnectivityService;->filterNetworkStateForUid(Landroid/net/NetworkState;IZ)V

    #@a
    .line 1172
    iget-object v1, v0, Landroid/net/NetworkState;->networkInfo:Landroid/net/NetworkInfo;

    #@c
    return-object v1
.end method

.method public getActiveNetworkInfoUnfiltered()Landroid/net/NetworkInfo;
    .locals 3

    #@0
    .prologue
    .line 1161
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->enforceAccessPermission()V

    #@3
    .line 1162
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    #@6
    move-result v1

    #@7
    .line 1163
    .local v1, "uid":I
    invoke-direct {p0, v1}, Lcom/android/server/ConnectivityService;->getUnfilteredActiveNetworkState(I)Landroid/net/NetworkState;

    #@a
    move-result-object v0

    #@b
    .line 1164
    .local v0, "state":Landroid/net/NetworkState;
    iget-object v2, v0, Landroid/net/NetworkState;->networkInfo:Landroid/net/NetworkInfo;

    #@d
    return-object v2
.end method

.method public getActiveNetworkQuotaInfo()Landroid/net/NetworkQuotaInfo;
    .locals 7

    #@0
    .prologue
    const/4 v6, 0x0

    #@1
    .line 1373
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->enforceAccessPermission()V

    #@4
    .line 1374
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    #@7
    move-result v4

    #@8
    .line 1375
    .local v4, "uid":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    #@b
    move-result-wide v2

    #@c
    .line 1377
    .local v2, "token":J
    :try_start_0
    invoke-direct {p0, v4}, Lcom/android/server/ConnectivityService;->getUnfilteredActiveNetworkState(I)Landroid/net/NetworkState;

    #@f
    move-result-object v1

    #@10
    .line 1378
    .local v1, "state":Landroid/net/NetworkState;
    iget-object v5, v1, Landroid/net/NetworkState;->networkInfo:Landroid/net/NetworkInfo;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@12
    if-eqz v5, :cond_0

    #@14
    .line 1380
    :try_start_1
    iget-object v5, p0, Lcom/android/server/ConnectivityService;->mPolicyManager:Landroid/net/INetworkPolicyManager;

    #@16
    invoke-interface {v5, v1}, Landroid/net/INetworkPolicyManager;->getNetworkQuotaInfo(Landroid/net/NetworkState;)Landroid/net/NetworkQuotaInfo;
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@19
    move-result-object v5

    #@1a
    .line 1386
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@1d
    .line 1380
    return-object v5

    #@1e
    .line 1381
    :catch_0
    move-exception v0

    #@1f
    .line 1386
    :cond_0
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@22
    .line 1384
    return-object v6

    #@23
    .line 1385
    .end local v1    # "state":Landroid/net/NetworkState;
    :catchall_0
    move-exception v5

    #@24
    .line 1386
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@27
    .line 1385
    throw v5
.end method

.method public getAllNetworkInfo()[Landroid/net/NetworkInfo;
    .locals 4

    #@0
    .prologue
    .line 1208
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->enforceAccessPermission()V

    #@3
    .line 1209
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    #@6
    move-result-object v2

    #@7
    .line 1210
    .local v2, "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/net/NetworkInfo;>;"
    const/4 v1, 0x0

    #@8
    .local v1, "networkType":I
    :goto_0
    const/16 v3, 0x11

    #@a
    if-gt v1, v3, :cond_1

    #@c
    .line 1212
    invoke-virtual {p0, v1}, Lcom/android/server/ConnectivityService;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    #@f
    move-result-object v0

    #@10
    .line 1213
    .local v0, "info":Landroid/net/NetworkInfo;
    if-eqz v0, :cond_0

    #@12
    .line 1214
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@15
    .line 1211
    :cond_0
    add-int/lit8 v1, v1, 0x1

    #@17
    goto :goto_0

    #@18
    .line 1217
    .end local v0    # "info":Landroid/net/NetworkInfo;
    :cond_1
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    #@1b
    move-result v3

    #@1c
    new-array v3, v3, [Landroid/net/NetworkInfo;

    #@1e
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    #@21
    move-result-object v3

    #@22
    check-cast v3, [Landroid/net/NetworkInfo;

    #@24
    return-object v3
.end method

.method public getAllNetworkState()[Landroid/net/NetworkState;
    .locals 7

    #@0
    .prologue
    .line 1359
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->enforceConnectivityInternalPermission()V

    #@3
    .line 1361
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    #@6
    move-result-object v2

    #@7
    .line 1362
    .local v2, "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/net/NetworkState;>;"
    invoke-virtual {p0}, Lcom/android/server/ConnectivityService;->getAllNetworks()[Landroid/net/Network;

    #@a
    move-result-object v4

    #@b
    const/4 v3, 0x0

    #@c
    array-length v5, v4

    #@d
    :goto_0
    if-ge v3, v5, :cond_1

    #@f
    aget-object v1, v4, v3

    #@11
    .line 1363
    .local v1, "network":Landroid/net/Network;
    invoke-direct {p0, v1}, Lcom/android/server/ConnectivityService;->getNetworkAgentInfoForNetwork(Landroid/net/Network;)Lcom/android/server/connectivity/NetworkAgentInfo;

    #@14
    move-result-object v0

    #@15
    .line 1364
    .local v0, "nai":Lcom/android/server/connectivity/NetworkAgentInfo;
    if-eqz v0, :cond_0

    #@17
    .line 1365
    invoke-virtual {v0}, Lcom/android/server/connectivity/NetworkAgentInfo;->getNetworkState()Landroid/net/NetworkState;

    #@1a
    move-result-object v6

    #@1b
    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@1e
    .line 1362
    :cond_0
    add-int/lit8 v3, v3, 0x1

    #@20
    goto :goto_0

    #@21
    .line 1368
    .end local v0    # "nai":Lcom/android/server/connectivity/NetworkAgentInfo;
    .end local v1    # "network":Landroid/net/Network;
    :cond_1
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    #@24
    move-result v3

    #@25
    new-array v3, v3, [Landroid/net/NetworkState;

    #@27
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    #@2a
    move-result-object v3

    #@2b
    check-cast v3, [Landroid/net/NetworkState;

    #@2d
    return-object v3
.end method

.method public getAllNetworks()[Landroid/net/Network;
    .locals 4

    #@0
    .prologue
    .line 1233
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->enforceAccessPermission()V

    #@3
    .line 1234
    iget-object v3, p0, Lcom/android/server/ConnectivityService;->mNetworkForNetId:Landroid/util/SparseArray;

    #@5
    monitor-enter v3

    #@6
    .line 1235
    :try_start_0
    iget-object v2, p0, Lcom/android/server/ConnectivityService;->mNetworkForNetId:Landroid/util/SparseArray;

    #@8
    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    #@b
    move-result v2

    #@c
    new-array v1, v2, [Landroid/net/Network;

    #@e
    .line 1236
    .local v1, "result":[Landroid/net/Network;
    const/4 v0, 0x0

    #@f
    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lcom/android/server/ConnectivityService;->mNetworkForNetId:Landroid/util/SparseArray;

    #@11
    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    #@14
    move-result v2

    #@15
    if-ge v0, v2, :cond_0

    #@17
    .line 1237
    iget-object v2, p0, Lcom/android/server/ConnectivityService;->mNetworkForNetId:Landroid/util/SparseArray;

    #@19
    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    #@1c
    move-result-object v2

    #@1d
    check-cast v2, Lcom/android/server/connectivity/NetworkAgentInfo;

    #@1f
    iget-object v2, v2, Lcom/android/server/connectivity/NetworkAgentInfo;->network:Landroid/net/Network;

    #@21
    aput-object v2, v1, v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@23
    .line 1236
    add-int/lit8 v0, v0, 0x1

    #@25
    goto :goto_0

    #@26
    :cond_0
    monitor-exit v3

    #@27
    .line 1239
    return-object v1

    #@28
    .line 1234
    .end local v0    # "i":I
    .end local v1    # "result":[Landroid/net/Network;
    :catchall_0
    move-exception v2

    #@29
    monitor-exit v3

    #@2a
    throw v2
.end method

.method public getAllVpnInfo()[Lcom/android/internal/net/VpnInfo;
    .locals 5

    #@0
    .prologue
    .line 3570
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->enforceConnectivityInternalPermission()V

    #@3
    .line 3571
    iget-boolean v3, p0, Lcom/android/server/ConnectivityService;->mLockdownEnabled:Z

    #@5
    if-eqz v3, :cond_0

    #@7
    .line 3572
    const/4 v3, 0x0

    #@8
    new-array v3, v3, [Lcom/android/internal/net/VpnInfo;

    #@a
    return-object v3

    #@b
    .line 3575
    :cond_0
    iget-object v4, p0, Lcom/android/server/ConnectivityService;->mVpns:Landroid/util/SparseArray;

    #@d
    monitor-enter v4

    #@e
    .line 3576
    :try_start_0
    new-instance v2, Ljava/util/ArrayList;

    #@10
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    #@13
    .line 3577
    .local v2, "infoList":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/net/VpnInfo;>;"
    const/4 v0, 0x0

    #@14
    .local v0, "i":I
    :goto_0
    iget-object v3, p0, Lcom/android/server/ConnectivityService;->mVpns:Landroid/util/SparseArray;

    #@16
    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    #@19
    move-result v3

    #@1a
    if-ge v0, v3, :cond_2

    #@1c
    .line 3578
    iget-object v3, p0, Lcom/android/server/ConnectivityService;->mVpns:Landroid/util/SparseArray;

    #@1e
    invoke-virtual {v3, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    #@21
    move-result-object v3

    #@22
    check-cast v3, Lcom/android/server/connectivity/Vpn;

    #@24
    invoke-direct {p0, v3}, Lcom/android/server/ConnectivityService;->createVpnInfo(Lcom/android/server/connectivity/Vpn;)Lcom/android/internal/net/VpnInfo;

    #@27
    move-result-object v1

    #@28
    .line 3579
    .local v1, "info":Lcom/android/internal/net/VpnInfo;
    if-eqz v1, :cond_1

    #@2a
    .line 3580
    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@2d
    .line 3577
    :cond_1
    add-int/lit8 v0, v0, 0x1

    #@2f
    goto :goto_0

    #@30
    .line 3583
    .end local v1    # "info":Lcom/android/internal/net/VpnInfo;
    :cond_2
    invoke-interface {v2}, Ljava/util/List;->size()I

    #@33
    move-result v3

    #@34
    new-array v3, v3, [Lcom/android/internal/net/VpnInfo;

    #@36
    invoke-interface {v2, v3}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    #@39
    move-result-object v3

    #@3a
    check-cast v3, [Lcom/android/internal/net/VpnInfo;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@3c
    monitor-exit v4

    #@3d
    return-object v3

    #@3e
    .line 3575
    .end local v0    # "i":I
    .end local v2    # "infoList":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/net/VpnInfo;>;"
    :catchall_0
    move-exception v3

    #@3f
    monitor-exit v4

    #@40
    throw v3
.end method

.method public getAlwaysOnVpnPackage(I)Ljava/lang/String;
    .locals 6
    .param p1, "userId"    # I

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    .line 3751
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->enforceConnectivityInternalPermission()V

    #@4
    .line 3752
    invoke-direct {p0, p1}, Lcom/android/server/ConnectivityService;->enforceCrossUserPermission(I)V

    #@7
    .line 3754
    iget-object v2, p0, Lcom/android/server/ConnectivityService;->mVpns:Landroid/util/SparseArray;

    #@9
    monitor-enter v2

    #@a
    .line 3755
    :try_start_0
    iget-object v1, p0, Lcom/android/server/ConnectivityService;->mVpns:Landroid/util/SparseArray;

    #@c
    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    #@f
    move-result-object v0

    #@10
    check-cast v0, Lcom/android/server/connectivity/Vpn;

    #@12
    .line 3756
    .local v0, "vpn":Lcom/android/server/connectivity/Vpn;
    if-nez v0, :cond_0

    #@14
    .line 3757
    sget-object v1, Lcom/android/server/ConnectivityService;->TAG:Ljava/lang/String;

    #@16
    new-instance v3, Ljava/lang/StringBuilder;

    #@18
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@1b
    const-string/jumbo v4, "User "

    #@1e
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@21
    move-result-object v3

    #@22
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@25
    move-result-object v3

    #@26
    const-string/jumbo v4, " has no Vpn configuration"

    #@29
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2c
    move-result-object v3

    #@2d
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@30
    move-result-object v3

    #@31
    invoke-static {v1, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@34
    monitor-exit v2

    #@35
    .line 3758
    return-object v5

    #@36
    .line 3760
    :cond_0
    :try_start_1
    invoke-virtual {v0}, Lcom/android/server/connectivity/Vpn;->getAlwaysOnPackage()Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@39
    move-result-object v1

    #@3a
    monitor-exit v2

    #@3b
    return-object v1

    #@3c
    .line 3754
    .end local v0    # "vpn":Lcom/android/server/connectivity/Vpn;
    :catchall_0
    move-exception v1

    #@3d
    monitor-exit v2

    #@3e
    throw v1
.end method

.method public getCaptivePortalServerUrl()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 5448
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;

    #@2
    invoke-static {v0}, Lcom/android/server/connectivity/NetworkMonitor;->getCaptivePortalServerHttpUrl(Landroid/content/Context;)Ljava/lang/String;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public getDefaultNetworkCapabilitiesForUser(I)[Landroid/net/NetworkCapabilities;
    .locals 10
    .param p1, "userId"    # I

    #@0
    .prologue
    .line 1259
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->enforceAccessPermission()V

    #@3
    .line 1261
    new-instance v5, Ljava/util/HashMap;

    #@5
    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    #@8
    .line 1263
    .local v5, "result":Ljava/util/HashMap;, "Ljava/util/HashMap<Landroid/net/Network;Landroid/net/NetworkCapabilities;>;"
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->getDefaultNetwork()Lcom/android/server/connectivity/NetworkAgentInfo;

    #@b
    move-result-object v0

    #@c
    .line 1264
    .local v0, "nai":Lcom/android/server/connectivity/NetworkAgentInfo;
    invoke-direct {p0, v0}, Lcom/android/server/ConnectivityService;->getNetworkCapabilitiesInternal(Lcom/android/server/connectivity/NetworkAgentInfo;)Landroid/net/NetworkCapabilities;

    #@f
    move-result-object v1

    #@10
    .line 1265
    .local v1, "nc":Landroid/net/NetworkCapabilities;
    if-eqz v1, :cond_0

    #@12
    .line 1266
    iget-object v7, v0, Lcom/android/server/connectivity/NetworkAgentInfo;->network:Landroid/net/Network;

    #@14
    invoke-virtual {v5, v7, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@17
    .line 1269
    :cond_0
    iget-boolean v7, p0, Lcom/android/server/ConnectivityService;->mLockdownEnabled:Z

    #@19
    if-nez v7, :cond_3

    #@1b
    .line 1270
    iget-object v8, p0, Lcom/android/server/ConnectivityService;->mVpns:Landroid/util/SparseArray;

    #@1d
    monitor-enter v8

    #@1e
    .line 1271
    :try_start_0
    iget-object v7, p0, Lcom/android/server/ConnectivityService;->mVpns:Landroid/util/SparseArray;

    #@20
    invoke-virtual {v7, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    #@23
    move-result-object v6

    #@24
    check-cast v6, Lcom/android/server/connectivity/Vpn;

    #@26
    .line 1272
    .local v6, "vpn":Lcom/android/server/connectivity/Vpn;
    if-eqz v6, :cond_2

    #@28
    .line 1273
    invoke-virtual {v6}, Lcom/android/server/connectivity/Vpn;->getUnderlyingNetworks()[Landroid/net/Network;

    #@2b
    move-result-object v3

    #@2c
    .line 1274
    .local v3, "networks":[Landroid/net/Network;
    if-eqz v3, :cond_2

    #@2e
    .line 1275
    const/4 v7, 0x0

    #@2f
    array-length v9, v3

    #@30
    :goto_0
    if-ge v7, v9, :cond_2

    #@32
    aget-object v2, v3, v7

    #@34
    .line 1276
    .local v2, "network":Landroid/net/Network;
    invoke-direct {p0, v2}, Lcom/android/server/ConnectivityService;->getNetworkAgentInfoForNetwork(Landroid/net/Network;)Lcom/android/server/connectivity/NetworkAgentInfo;

    #@37
    move-result-object v0

    #@38
    .line 1277
    invoke-direct {p0, v0}, Lcom/android/server/ConnectivityService;->getNetworkCapabilitiesInternal(Lcom/android/server/connectivity/NetworkAgentInfo;)Landroid/net/NetworkCapabilities;

    #@3b
    move-result-object v1

    #@3c
    .line 1278
    if-eqz v1, :cond_1

    #@3e
    .line 1279
    invoke-virtual {v5, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@41
    .line 1275
    :cond_1
    add-int/lit8 v7, v7, 0x1

    #@43
    goto :goto_0

    #@44
    .end local v2    # "network":Landroid/net/Network;
    .end local v3    # "networks":[Landroid/net/Network;
    :cond_2
    monitor-exit v8

    #@45
    .line 1287
    .end local v6    # "vpn":Lcom/android/server/connectivity/Vpn;
    :cond_3
    invoke-virtual {v5}, Ljava/util/HashMap;->size()I

    #@48
    move-result v7

    #@49
    new-array v4, v7, [Landroid/net/NetworkCapabilities;

    #@4b
    .line 1288
    .local v4, "out":[Landroid/net/NetworkCapabilities;
    invoke-virtual {v5}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    #@4e
    move-result-object v7

    #@4f
    invoke-interface {v7, v4}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    #@52
    move-result-object v4

    #@53
    .end local v4    # "out":[Landroid/net/NetworkCapabilities;
    check-cast v4, [Landroid/net/NetworkCapabilities;

    #@55
    .line 1289
    .restart local v4    # "out":[Landroid/net/NetworkCapabilities;
    return-object v4

    #@56
    .line 1270
    .end local v4    # "out":[Landroid/net/NetworkCapabilities;
    :catchall_0
    move-exception v7

    #@57
    monitor-exit v8

    #@58
    throw v7
.end method

.method protected getDefaultTcpRwnd()I
    .locals 2

    #@0
    .prologue
    .line 1844
    const-string/jumbo v0, "net.tcp.default_init_rwnd"

    #@3
    const/4 v1, 0x0

    #@4
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    #@7
    move-result v0

    #@8
    return v0
.end method

.method public getGlobalProxy()Landroid/net/ProxyInfo;
    .locals 2

    #@0
    .prologue
    .line 3321
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mProxyLock:Ljava/lang/Object;

    #@2
    monitor-enter v0

    #@3
    .line 3322
    :try_start_0
    iget-object v1, p0, Lcom/android/server/ConnectivityService;->mGlobalProxy:Landroid/net/ProxyInfo;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@5
    monitor-exit v0

    #@6
    return-object v1

    #@7
    .line 3321
    :catchall_0
    move-exception v1

    #@8
    monitor-exit v0

    #@9
    throw v1
.end method

.method public getLastTetherError(Ljava/lang/String;)I
    .locals 1
    .param p1, "iface"    # Ljava/lang/String;

    #@0
    .prologue
    .line 3017
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->enforceTetherAccessPermission()V

    #@3
    .line 3019
    invoke-virtual {p0}, Lcom/android/server/ConnectivityService;->isTetheringSupported()Z

    #@6
    move-result v0

    #@7
    if-eqz v0, :cond_0

    #@9
    .line 3020
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mTethering:Lcom/android/server/connectivity/Tethering;

    #@b
    invoke-virtual {v0, p1}, Lcom/android/server/connectivity/Tethering;->getLastTetherError(Ljava/lang/String;)I

    #@e
    move-result v0

    #@f
    return v0

    #@10
    .line 3022
    :cond_0
    const/4 v0, 0x3

    #@11
    return v0
.end method

.method public getLegacyVpnInfo(I)Lcom/android/internal/net/LegacyVpnInfo;
    .locals 2
    .param p1, "userId"    # I

    #@0
    .prologue
    .line 3557
    invoke-direct {p0, p1}, Lcom/android/server/ConnectivityService;->enforceCrossUserPermission(I)V

    #@3
    .line 3559
    iget-object v1, p0, Lcom/android/server/ConnectivityService;->mVpns:Landroid/util/SparseArray;

    #@5
    monitor-enter v1

    #@6
    .line 3560
    :try_start_0
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mVpns:Landroid/util/SparseArray;

    #@8
    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    #@b
    move-result-object v0

    #@c
    check-cast v0, Lcom/android/server/connectivity/Vpn;

    #@e
    invoke-virtual {v0}, Lcom/android/server/connectivity/Vpn;->getLegacyVpnInfo()Lcom/android/internal/net/LegacyVpnInfo;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@11
    move-result-object v0

    #@12
    monitor-exit v1

    #@13
    return-object v0

    #@14
    .line 3559
    :catchall_0
    move-exception v0

    #@15
    monitor-exit v1

    #@16
    throw v0
.end method

.method public getLinkProperties(Landroid/net/Network;)Landroid/net/LinkProperties;
    .locals 3
    .param p1, "network"    # Landroid/net/Network;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 1329
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->enforceAccessPermission()V

    #@4
    .line 1330
    invoke-direct {p0, p1}, Lcom/android/server/ConnectivityService;->getNetworkAgentInfoForNetwork(Landroid/net/Network;)Lcom/android/server/connectivity/NetworkAgentInfo;

    #@7
    move-result-object v0

    #@8
    .line 1331
    .local v0, "nai":Lcom/android/server/connectivity/NetworkAgentInfo;
    if-eqz v0, :cond_0

    #@a
    .line 1332
    monitor-enter v0

    #@b
    .line 1333
    :try_start_0
    new-instance v1, Landroid/net/LinkProperties;

    #@d
    iget-object v2, v0, Lcom/android/server/connectivity/NetworkAgentInfo;->linkProperties:Landroid/net/LinkProperties;

    #@f
    invoke-direct {v1, v2}, Landroid/net/LinkProperties;-><init>(Landroid/net/LinkProperties;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@12
    monitor-exit v0

    #@13
    return-object v1

    #@14
    .line 1332
    :catchall_0
    move-exception v1

    #@15
    monitor-exit v0

    #@16
    throw v1

    #@17
    .line 1336
    :cond_0
    return-object v1
.end method

.method public getLinkPropertiesForType(I)Landroid/net/LinkProperties;
    .locals 3
    .param p1, "networkType"    # I

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 1316
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->enforceAccessPermission()V

    #@4
    .line 1317
    iget-object v1, p0, Lcom/android/server/ConnectivityService;->mLegacyTypeTracker:Lcom/android/server/ConnectivityService$LegacyTypeTracker;

    #@6
    invoke-virtual {v1, p1}, Lcom/android/server/ConnectivityService$LegacyTypeTracker;->getNetworkForType(I)Lcom/android/server/connectivity/NetworkAgentInfo;

    #@9
    move-result-object v0

    #@a
    .line 1318
    .local v0, "nai":Lcom/android/server/connectivity/NetworkAgentInfo;
    if-eqz v0, :cond_0

    #@c
    .line 1319
    monitor-enter v0

    #@d
    .line 1320
    :try_start_0
    new-instance v1, Landroid/net/LinkProperties;

    #@f
    iget-object v2, v0, Lcom/android/server/connectivity/NetworkAgentInfo;->linkProperties:Landroid/net/LinkProperties;

    #@11
    invoke-direct {v1, v2}, Landroid/net/LinkProperties;-><init>(Landroid/net/LinkProperties;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@14
    monitor-exit v0

    #@15
    return-object v1

    #@16
    .line 1319
    :catchall_0
    move-exception v1

    #@17
    monitor-exit v0

    #@18
    throw v1

    #@19
    .line 1323
    :cond_0
    return-object v2
.end method

.method public getMobileProvisioningUrl()Ljava/lang/String;
    .locals 5

    #@0
    .prologue
    .line 3844
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->enforceConnectivityInternalPermission()V

    #@3
    .line 3845
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->getProvisioningUrlBaseFromFile()Ljava/lang/String;

    #@6
    move-result-object v1

    #@7
    .line 3846
    .local v1, "url":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@a
    move-result v2

    #@b
    if-eqz v2, :cond_2

    #@d
    .line 3847
    iget-object v2, p0, Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;

    #@f
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@12
    move-result-object v2

    #@13
    const v3, 0x104004a

    #@16
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    #@19
    move-result-object v1

    #@1a
    .line 3848
    new-instance v2, Ljava/lang/StringBuilder;

    #@1c
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@1f
    const-string/jumbo v3, "getMobileProvisioningUrl: mobile_provisioining_url from resource ="

    #@22
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@25
    move-result-object v2

    #@26
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@29
    move-result-object v2

    #@2a
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2d
    move-result-object v2

    #@2e
    invoke-static {v2}, Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V

    #@31
    .line 3853
    :goto_0
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@34
    move-result v2

    #@35
    if-nez v2, :cond_1

    #@37
    .line 3854
    iget-object v2, p0, Lcom/android/server/ConnectivityService;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    #@39
    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getLine1Number()Ljava/lang/String;

    #@3c
    move-result-object v0

    #@3d
    .line 3855
    .local v0, "phoneNumber":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@40
    move-result v2

    #@41
    if-eqz v2, :cond_0

    #@43
    .line 3856
    const-string/jumbo v0, "0000000000"

    #@46
    .line 3858
    :cond_0
    const/4 v2, 0x3

    #@47
    new-array v2, v2, [Ljava/lang/Object;

    #@49
    .line 3859
    iget-object v3, p0, Lcom/android/server/ConnectivityService;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    #@4b
    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getSimSerialNumber()Ljava/lang/String;

    #@4e
    move-result-object v3

    #@4f
    const/4 v4, 0x0

    #@50
    aput-object v3, v2, v4

    #@52
    .line 3860
    iget-object v3, p0, Lcom/android/server/ConnectivityService;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    #@54
    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    #@57
    move-result-object v3

    #@58
    const/4 v4, 0x1

    #@59
    aput-object v3, v2, v4

    #@5b
    .line 3861
    const/4 v3, 0x2

    #@5c
    aput-object v0, v2, v3

    #@5e
    .line 3858
    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@61
    move-result-object v1

    #@62
    .line 3864
    .end local v0    # "phoneNumber":Ljava/lang/String;
    :cond_1
    return-object v1

    #@63
    .line 3850
    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    #@65
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@68
    const-string/jumbo v3, "getMobileProvisioningUrl: mobile_provisioning_url from File ="

    #@6b
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6e
    move-result-object v2

    #@6f
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@72
    move-result-object v2

    #@73
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@76
    move-result-object v2

    #@77
    invoke-static {v2}, Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V

    #@7a
    goto :goto_0
.end method

.method public getNetworkCapabilities(Landroid/net/Network;)Landroid/net/NetworkCapabilities;
    .locals 1
    .param p1, "network"    # Landroid/net/Network;

    #@0
    .prologue
    .line 1352
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->enforceAccessPermission()V

    #@3
    .line 1353
    invoke-direct {p0, p1}, Lcom/android/server/ConnectivityService;->getNetworkAgentInfoForNetwork(Landroid/net/Network;)Lcom/android/server/connectivity/NetworkAgentInfo;

    #@6
    move-result-object v0

    #@7
    invoke-direct {p0, v0}, Lcom/android/server/ConnectivityService;->getNetworkCapabilitiesInternal(Lcom/android/server/connectivity/NetworkAgentInfo;)Landroid/net/NetworkCapabilities;

    #@a
    move-result-object v0

    #@b
    return-object v0
.end method

.method public getNetworkForType(I)Landroid/net/Network;
    .locals 4
    .param p1, "networkType"    # I

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 1222
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->enforceAccessPermission()V

    #@4
    .line 1223
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    #@7
    move-result v1

    #@8
    .line 1224
    .local v1, "uid":I
    invoke-direct {p0, p1, v1, v3}, Lcom/android/server/ConnectivityService;->getFilteredNetworkState(IIZ)Landroid/net/NetworkState;

    #@b
    move-result-object v0

    #@c
    .line 1225
    .local v0, "state":Landroid/net/NetworkState;
    iget-object v2, v0, Landroid/net/NetworkState;->linkProperties:Landroid/net/LinkProperties;

    #@e
    invoke-direct {p0, v2, v1, v3}, Lcom/android/server/ConnectivityService;->isNetworkWithLinkPropertiesBlocked(Landroid/net/LinkProperties;IZ)Z

    #@11
    move-result v2

    #@12
    if-nez v2, :cond_0

    #@14
    .line 1226
    iget-object v2, v0, Landroid/net/NetworkState;->network:Landroid/net/Network;

    #@16
    return-object v2

    #@17
    .line 1228
    :cond_0
    const/4 v2, 0x0

    #@18
    return-object v2
.end method

.method public getNetworkInfo(I)Landroid/net/NetworkInfo;
    .locals 4
    .param p1, "networkType"    # I

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 1177
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->enforceAccessPermission()V

    #@4
    .line 1178
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    #@7
    move-result v1

    #@8
    .line 1179
    .local v1, "uid":I
    invoke-direct {p0, v1}, Lcom/android/server/ConnectivityService;->getVpnUnderlyingNetworks(I)[Landroid/net/Network;

    #@b
    move-result-object v2

    #@c
    if-eqz v2, :cond_0

    #@e
    .line 1183
    invoke-direct {p0, v1}, Lcom/android/server/ConnectivityService;->getUnfilteredActiveNetworkState(I)Landroid/net/NetworkState;

    #@11
    move-result-object v0

    #@12
    .line 1184
    .local v0, "state":Landroid/net/NetworkState;
    iget-object v2, v0, Landroid/net/NetworkState;->networkInfo:Landroid/net/NetworkInfo;

    #@14
    if-eqz v2, :cond_0

    #@16
    iget-object v2, v0, Landroid/net/NetworkState;->networkInfo:Landroid/net/NetworkInfo;

    #@18
    invoke-virtual {v2}, Landroid/net/NetworkInfo;->getType()I

    #@1b
    move-result v2

    #@1c
    if-ne v2, p1, :cond_0

    #@1e
    .line 1185
    invoke-direct {p0, v0, v1, v3}, Lcom/android/server/ConnectivityService;->filterNetworkStateForUid(Landroid/net/NetworkState;IZ)V

    #@21
    .line 1186
    iget-object v2, v0, Landroid/net/NetworkState;->networkInfo:Landroid/net/NetworkInfo;

    #@23
    return-object v2

    #@24
    .line 1189
    .end local v0    # "state":Landroid/net/NetworkState;
    :cond_0
    invoke-direct {p0, p1, v1, v3}, Lcom/android/server/ConnectivityService;->getFilteredNetworkState(IIZ)Landroid/net/NetworkState;

    #@27
    move-result-object v0

    #@28
    .line 1190
    .restart local v0    # "state":Landroid/net/NetworkState;
    iget-object v2, v0, Landroid/net/NetworkState;->networkInfo:Landroid/net/NetworkInfo;

    #@2a
    return-object v2
.end method

.method public getNetworkInfoForUid(Landroid/net/Network;IZ)Landroid/net/NetworkInfo;
    .locals 3
    .param p1, "network"    # Landroid/net/Network;
    .param p2, "uid"    # I
    .param p3, "ignoreBlocked"    # Z

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 1195
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->enforceAccessPermission()V

    #@4
    .line 1196
    invoke-direct {p0, p1}, Lcom/android/server/ConnectivityService;->getNetworkAgentInfoForNetwork(Landroid/net/Network;)Lcom/android/server/connectivity/NetworkAgentInfo;

    #@7
    move-result-object v0

    #@8
    .line 1197
    .local v0, "nai":Lcom/android/server/connectivity/NetworkAgentInfo;
    if-eqz v0, :cond_0

    #@a
    .line 1198
    invoke-virtual {v0}, Lcom/android/server/connectivity/NetworkAgentInfo;->getNetworkState()Landroid/net/NetworkState;

    #@d
    move-result-object v1

    #@e
    .line 1199
    .local v1, "state":Landroid/net/NetworkState;
    invoke-direct {p0, v1, p2, p3}, Lcom/android/server/ConnectivityService;->filterNetworkStateForUid(Landroid/net/NetworkState;IZ)V

    #@11
    .line 1200
    iget-object v2, v1, Landroid/net/NetworkState;->networkInfo:Landroid/net/NetworkInfo;

    #@13
    return-object v2

    #@14
    .line 1202
    .end local v1    # "state":Landroid/net/NetworkState;
    :cond_0
    return-object v2
.end method

.method public getProxyForNetwork(Landroid/net/Network;)Landroid/net/ProxyInfo;
    .locals 6
    .param p1, "network"    # Landroid/net/Network;

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    .line 3200
    if-nez p1, :cond_0

    #@3
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->getDefaultProxy()Landroid/net/ProxyInfo;

    #@6
    move-result-object v3

    #@7
    return-object v3

    #@8
    .line 3201
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/ConnectivityService;->getGlobalProxy()Landroid/net/ProxyInfo;

    #@b
    move-result-object v0

    #@c
    .line 3202
    .local v0, "globalProxy":Landroid/net/ProxyInfo;
    if-eqz v0, :cond_1

    #@e
    return-object v0

    #@f
    .line 3203
    :cond_1
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    #@12
    move-result v3

    #@13
    iget v4, p1, Landroid/net/Network;->netId:I

    #@15
    invoke-static {v3, v4}, Landroid/net/NetworkUtils;->queryUserAccess(II)Z

    #@18
    move-result v3

    #@19
    if-nez v3, :cond_2

    #@1b
    return-object v5

    #@1c
    .line 3206
    :cond_2
    invoke-direct {p0, p1}, Lcom/android/server/ConnectivityService;->getNetworkAgentInfoForNetwork(Landroid/net/Network;)Lcom/android/server/connectivity/NetworkAgentInfo;

    #@1f
    move-result-object v1

    #@20
    .line 3207
    .local v1, "nai":Lcom/android/server/connectivity/NetworkAgentInfo;
    if-nez v1, :cond_3

    #@22
    return-object v5

    #@23
    .line 3208
    :cond_3
    monitor-enter v1

    #@24
    .line 3209
    :try_start_0
    iget-object v3, v1, Lcom/android/server/connectivity/NetworkAgentInfo;->linkProperties:Landroid/net/LinkProperties;

    #@26
    invoke-virtual {v3}, Landroid/net/LinkProperties;->getHttpProxy()Landroid/net/ProxyInfo;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@29
    move-result-object v2

    #@2a
    .line 3210
    .local v2, "proxyInfo":Landroid/net/ProxyInfo;
    if-nez v2, :cond_4

    #@2c
    monitor-exit v1

    #@2d
    return-object v5

    #@2e
    .line 3211
    :cond_4
    :try_start_1
    new-instance v3, Landroid/net/ProxyInfo;

    #@30
    invoke-direct {v3, v2}, Landroid/net/ProxyInfo;-><init>(Landroid/net/ProxyInfo;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@33
    monitor-exit v1

    #@34
    return-object v3

    #@35
    .line 3208
    .end local v2    # "proxyInfo":Landroid/net/ProxyInfo;
    :catchall_0
    move-exception v3

    #@36
    monitor-exit v1

    #@37
    throw v3
.end method

.method public getRestoreDefaultNetworkDelay(I)I
    .locals 4
    .param p1, "networkType"    # I

    #@0
    .prologue
    .line 1910
    const-string/jumbo v3, "android.telephony.apn-restore"

    #@3
    .line 1909
    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    #@6
    move-result-object v1

    #@7
    .line 1911
    .local v1, "restoreDefaultNetworkDelayStr":Ljava/lang/String;
    if-eqz v1, :cond_0

    #@9
    .line 1912
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    #@c
    move-result v3

    #@d
    if-eqz v3, :cond_0

    #@f
    .line 1914
    :try_start_0
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    #@12
    move-result v3

    #@13
    return v3

    #@14
    .line 1915
    :catch_0
    move-exception v0

    #@15
    .line 1919
    :cond_0
    const v2, 0xea60

    #@18
    .line 1921
    .local v2, "ret":I
    const/16 v3, 0x11

    #@1a
    if-gt p1, v3, :cond_1

    #@1c
    .line 1922
    iget-object v3, p0, Lcom/android/server/ConnectivityService;->mNetConfigs:[Landroid/net/NetworkConfig;

    #@1e
    aget-object v3, v3, p1

    #@20
    if-eqz v3, :cond_1

    #@22
    .line 1923
    iget-object v3, p0, Lcom/android/server/ConnectivityService;->mNetConfigs:[Landroid/net/NetworkConfig;

    #@24
    aget-object v3, v3, p1

    #@26
    iget v2, v3, Landroid/net/NetworkConfig;->restoreTime:I

    #@28
    .line 1925
    :cond_1
    return v2
.end method

.method public getTetherableBluetoothRegexs()[Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 3049
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->enforceTetherAccessPermission()V

    #@3
    .line 3050
    invoke-virtual {p0}, Lcom/android/server/ConnectivityService;->isTetheringSupported()Z

    #@6
    move-result v0

    #@7
    if-eqz v0, :cond_0

    #@9
    .line 3051
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mTethering:Lcom/android/server/connectivity/Tethering;

    #@b
    invoke-virtual {v0}, Lcom/android/server/connectivity/Tethering;->getTetherableBluetoothRegexs()[Ljava/lang/String;

    #@e
    move-result-object v0

    #@f
    return-object v0

    #@10
    .line 3053
    :cond_0
    const/4 v0, 0x0

    #@11
    new-array v0, v0, [Ljava/lang/String;

    #@13
    return-object v0
.end method

.method public getTetherableIfaces()[Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 3071
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->enforceTetherAccessPermission()V

    #@3
    .line 3072
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mTethering:Lcom/android/server/connectivity/Tethering;

    #@5
    invoke-virtual {v0}, Lcom/android/server/connectivity/Tethering;->getTetherableIfaces()[Ljava/lang/String;

    #@8
    move-result-object v0

    #@9
    return-object v0
.end method

.method public getTetherableUsbRegexs()[Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 3029
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->enforceTetherAccessPermission()V

    #@3
    .line 3030
    invoke-virtual {p0}, Lcom/android/server/ConnectivityService;->isTetheringSupported()Z

    #@6
    move-result v0

    #@7
    if-eqz v0, :cond_0

    #@9
    .line 3031
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mTethering:Lcom/android/server/connectivity/Tethering;

    #@b
    invoke-virtual {v0}, Lcom/android/server/connectivity/Tethering;->getTetherableUsbRegexs()[Ljava/lang/String;

    #@e
    move-result-object v0

    #@f
    return-object v0

    #@10
    .line 3033
    :cond_0
    const/4 v0, 0x0

    #@11
    new-array v0, v0, [Ljava/lang/String;

    #@13
    return-object v0
.end method

.method public getTetherableWifiRegexs()[Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 3039
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->enforceTetherAccessPermission()V

    #@3
    .line 3040
    invoke-virtual {p0}, Lcom/android/server/ConnectivityService;->isTetheringSupported()Z

    #@6
    move-result v0

    #@7
    if-eqz v0, :cond_0

    #@9
    .line 3041
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mTethering:Lcom/android/server/connectivity/Tethering;

    #@b
    invoke-virtual {v0}, Lcom/android/server/connectivity/Tethering;->getTetherableWifiRegexs()[Ljava/lang/String;

    #@e
    move-result-object v0

    #@f
    return-object v0

    #@10
    .line 3043
    :cond_0
    const/4 v0, 0x0

    #@11
    new-array v0, v0, [Ljava/lang/String;

    #@13
    return-object v0
.end method

.method public getTetheredDhcpRanges()[Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 3089
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->enforceConnectivityInternalPermission()V

    #@3
    .line 3090
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mTethering:Lcom/android/server/connectivity/Tethering;

    #@5
    invoke-virtual {v0}, Lcom/android/server/connectivity/Tethering;->getTetheredDhcpRanges()[Ljava/lang/String;

    #@8
    move-result-object v0

    #@9
    return-object v0
.end method

.method public getTetheredIfaces()[Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 3077
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->enforceTetherAccessPermission()V

    #@3
    .line 3078
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mTethering:Lcom/android/server/connectivity/Tethering;

    #@5
    invoke-virtual {v0}, Lcom/android/server/connectivity/Tethering;->getTetheredIfaces()[Ljava/lang/String;

    #@8
    move-result-object v0

    #@9
    return-object v0
.end method

.method public getTetheringErroredIfaces()[Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 3083
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->enforceTetherAccessPermission()V

    #@3
    .line 3084
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mTethering:Lcom/android/server/connectivity/Tethering;

    #@5
    invoke-virtual {v0}, Lcom/android/server/connectivity/Tethering;->getErroredIfaces()[Ljava/lang/String;

    #@8
    move-result-object v0

    #@9
    return-object v0
.end method

.method public getVpnConfig(I)Lcom/android/internal/net/VpnConfig;
    .locals 4
    .param p1, "userId"    # I

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 3622
    invoke-direct {p0, p1}, Lcom/android/server/ConnectivityService;->enforceCrossUserPermission(I)V

    #@4
    .line 3623
    iget-object v2, p0, Lcom/android/server/ConnectivityService;->mVpns:Landroid/util/SparseArray;

    #@6
    monitor-enter v2

    #@7
    .line 3624
    :try_start_0
    iget-object v1, p0, Lcom/android/server/ConnectivityService;->mVpns:Landroid/util/SparseArray;

    #@9
    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    #@c
    move-result-object v0

    #@d
    check-cast v0, Lcom/android/server/connectivity/Vpn;

    #@f
    .line 3625
    .local v0, "vpn":Lcom/android/server/connectivity/Vpn;
    if-eqz v0, :cond_0

    #@11
    .line 3626
    invoke-virtual {v0}, Lcom/android/server/connectivity/Vpn;->getVpnConfig()Lcom/android/internal/net/VpnConfig;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@14
    move-result-object v1

    #@15
    monitor-exit v2

    #@16
    return-object v1

    #@17
    :cond_0
    monitor-exit v2

    #@18
    .line 3628
    return-object v3

    #@19
    .line 3623
    .end local v0    # "vpn":Lcom/android/server/connectivity/Vpn;
    :catchall_0
    move-exception v1

    #@1a
    monitor-exit v2

    #@1b
    throw v1
.end method

.method public isActiveNetworkMetered()Z
    .locals 2

    #@0
    .prologue
    .line 1392
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->enforceAccessPermission()V

    #@3
    .line 1394
    invoke-virtual {p0}, Lcom/android/server/ConnectivityService;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    #@6
    move-result-object v0

    #@7
    .line 1395
    .local v0, "info":Landroid/net/NetworkInfo;
    if-eqz v0, :cond_0

    #@9
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isMetered()Z

    #@c
    move-result v1

    #@d
    :goto_0
    return v1

    #@e
    :cond_0
    const/4 v1, 0x0

    #@f
    goto :goto_0
.end method

.method public isNetworkSupported(I)Z
    .locals 1
    .param p1, "networkType"    # I

    #@0
    .prologue
    .line 1294
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->enforceAccessPermission()V

    #@3
    .line 1295
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mLegacyTypeTracker:Lcom/android/server/ConnectivityService$LegacyTypeTracker;

    #@5
    invoke-virtual {v0, p1}, Lcom/android/server/ConnectivityService$LegacyTypeTracker;->isTypeSupported(I)Z

    #@8
    move-result v0

    #@9
    return v0
.end method

.method public isTetheringSupported()Z
    .locals 6

    #@0
    .prologue
    const/4 v2, 0x1

    #@1
    const/4 v3, 0x0

    #@2
    .line 3098
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->enforceTetherAccessPermission()V

    #@5
    .line 3099
    const-string/jumbo v4, "ro.tether.denied"

    #@8
    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    #@b
    move-result-object v4

    #@c
    const-string/jumbo v5, "true"

    #@f
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@12
    move-result v4

    #@13
    if-eqz v4, :cond_2

    #@15
    const/4 v0, 0x0

    #@16
    .line 3100
    .local v0, "defaultVal":I
    :goto_0
    iget-object v4, p0, Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;

    #@18
    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    #@1b
    move-result-object v4

    #@1c
    .line 3101
    const-string/jumbo v5, "tether_supported"

    #@1f
    .line 3100
    invoke-static {v4, v5, v0}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    #@22
    move-result v4

    #@23
    if-eqz v4, :cond_4

    #@25
    .line 3102
    iget-object v4, p0, Lcom/android/server/ConnectivityService;->mUserManager:Landroid/os/UserManager;

    #@27
    const-string/jumbo v5, "no_config_tethering"

    #@2a
    invoke-virtual {v4, v5}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;)Z

    #@2d
    move-result v4

    #@2e
    if-eqz v4, :cond_3

    #@30
    move v1, v3

    #@31
    .line 3103
    .local v1, "tetherEnabledInSettings":Z
    :goto_1
    if-eqz v1, :cond_1

    #@33
    iget-object v4, p0, Lcom/android/server/ConnectivityService;->mUserManager:Landroid/os/UserManager;

    #@35
    invoke-virtual {v4}, Landroid/os/UserManager;->isAdminUser()Z

    #@38
    move-result v4

    #@39
    if-eqz v4, :cond_1

    #@3b
    .line 3104
    iget-object v4, p0, Lcom/android/server/ConnectivityService;->mTethering:Lcom/android/server/connectivity/Tethering;

    #@3d
    invoke-virtual {v4}, Lcom/android/server/connectivity/Tethering;->getTetherableUsbRegexs()[Ljava/lang/String;

    #@40
    move-result-object v4

    #@41
    array-length v4, v4

    #@42
    if-nez v4, :cond_0

    #@44
    .line 3105
    iget-object v4, p0, Lcom/android/server/ConnectivityService;->mTethering:Lcom/android/server/connectivity/Tethering;

    #@46
    invoke-virtual {v4}, Lcom/android/server/connectivity/Tethering;->getTetherableWifiRegexs()[Ljava/lang/String;

    #@49
    move-result-object v4

    #@4a
    array-length v4, v4

    #@4b
    if-eqz v4, :cond_5

    #@4d
    .line 3107
    :cond_0
    :goto_2
    iget-object v4, p0, Lcom/android/server/ConnectivityService;->mTethering:Lcom/android/server/connectivity/Tethering;

    #@4f
    invoke-virtual {v4}, Lcom/android/server/connectivity/Tethering;->getUpstreamIfaceTypes()[I

    #@52
    move-result-object v4

    #@53
    array-length v4, v4

    #@54
    if-eqz v4, :cond_6

    #@56
    :goto_3
    move v3, v2

    #@57
    .line 3103
    :cond_1
    return v3

    #@58
    .line 3099
    .end local v0    # "defaultVal":I
    .end local v1    # "tetherEnabledInSettings":Z
    :cond_2
    const/4 v0, 0x1

    #@59
    .restart local v0    # "defaultVal":I
    goto :goto_0

    #@5a
    :cond_3
    move v1, v2

    #@5b
    .line 3102
    goto :goto_1

    #@5c
    :cond_4
    move v1, v3

    #@5d
    .line 3100
    goto :goto_1

    #@5e
    .line 3106
    .restart local v1    # "tetherEnabledInSettings":Z
    :cond_5
    iget-object v4, p0, Lcom/android/server/ConnectivityService;->mTethering:Lcom/android/server/connectivity/Tethering;

    #@60
    invoke-virtual {v4}, Lcom/android/server/connectivity/Tethering;->getTetherableBluetoothRegexs()[Ljava/lang/String;

    #@63
    move-result-object v4

    #@64
    array-length v4, v4

    #@65
    if-eqz v4, :cond_1

    #@67
    goto :goto_2

    #@68
    :cond_6
    move v2, v3

    #@69
    .line 3107
    goto :goto_3
.end method

.method public listenForNetwork(Landroid/net/NetworkCapabilities;Landroid/os/Messenger;Landroid/os/IBinder;)Landroid/net/NetworkRequest;
    .locals 6
    .param p1, "networkCapabilities"    # Landroid/net/NetworkCapabilities;
    .param p2, "messenger"    # Landroid/os/Messenger;
    .param p3, "binder"    # Landroid/os/IBinder;

    #@0
    .prologue
    .line 4273
    invoke-direct {p0, p1}, Lcom/android/server/ConnectivityService;->hasWifiNetworkListenPermission(Landroid/net/NetworkCapabilities;)Z

    #@3
    move-result v3

    #@4
    if-nez v3, :cond_0

    #@6
    .line 4274
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->enforceAccessPermission()V

    #@9
    .line 4277
    :cond_0
    new-instance v0, Landroid/net/NetworkCapabilities;

    #@b
    invoke-direct {v0, p1}, Landroid/net/NetworkCapabilities;-><init>(Landroid/net/NetworkCapabilities;)V

    #@e
    .line 4278
    .local v0, "nc":Landroid/net/NetworkCapabilities;
    iget-object v3, p0, Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;

    #@10
    invoke-static {v3}, Landroid/net/ConnectivityManager;->checkChangePermission(Landroid/content/Context;)Z

    #@13
    move-result v3

    #@14
    if-nez v3, :cond_1

    #@16
    .line 4284
    const/16 v3, 0x12

    #@18
    invoke-virtual {v0, v3}, Landroid/net/NetworkCapabilities;->addCapability(I)Landroid/net/NetworkCapabilities;

    #@1b
    .line 4287
    :cond_1
    new-instance v1, Landroid/net/NetworkRequest;

    #@1d
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->nextNetworkRequestId()I

    #@20
    move-result v3

    #@21
    .line 4288
    sget-object v4, Landroid/net/NetworkRequest$Type;->LISTEN:Landroid/net/NetworkRequest$Type;

    #@23
    .line 4287
    const/4 v5, -0x1

    #@24
    invoke-direct {v1, v0, v5, v3, v4}, Landroid/net/NetworkRequest;-><init>(Landroid/net/NetworkCapabilities;IILandroid/net/NetworkRequest$Type;)V

    #@27
    .line 4289
    .local v1, "networkRequest":Landroid/net/NetworkRequest;
    new-instance v2, Lcom/android/server/ConnectivityService$NetworkRequestInfo;

    #@29
    invoke-direct {v2, p0, p2, v1, p3}, Lcom/android/server/ConnectivityService$NetworkRequestInfo;-><init>(Lcom/android/server/ConnectivityService;Landroid/os/Messenger;Landroid/net/NetworkRequest;Landroid/os/IBinder;)V

    #@2c
    .line 4292
    .local v2, "nri":Lcom/android/server/ConnectivityService$NetworkRequestInfo;
    iget-object v3, p0, Lcom/android/server/ConnectivityService;->mHandler:Lcom/android/server/ConnectivityService$InternalHandler;

    #@2e
    iget-object v4, p0, Lcom/android/server/ConnectivityService;->mHandler:Lcom/android/server/ConnectivityService$InternalHandler;

    #@30
    const/16 v5, 0x15

    #@32
    invoke-virtual {v4, v5, v2}, Lcom/android/server/ConnectivityService$InternalHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    #@35
    move-result-object v4

    #@36
    invoke-virtual {v3, v4}, Lcom/android/server/ConnectivityService$InternalHandler;->sendMessage(Landroid/os/Message;)Z

    #@39
    .line 4293
    return-object v1
.end method

.method public makeWakeupMessage(Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;ILjava/lang/Object;)Lcom/android/internal/util/WakeupMessage;
    .locals 8
    .param p1, "c"    # Landroid/content/Context;
    .param p2, "h"    # Landroid/os/Handler;
    .param p3, "s"    # Ljava/lang/String;
    .param p4, "cmd"    # I
    .param p5, "obj"    # Ljava/lang/Object;

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    .line 5529
    new-instance v0, Lcom/android/internal/util/WakeupMessage;

    #@3
    move-object v1, p1

    #@4
    move-object v2, p2

    #@5
    move-object v3, p3

    #@6
    move v4, p4

    #@7
    move v6, v5

    #@8
    move-object v7, p5

    #@9
    invoke-direct/range {v0 .. v7}, Lcom/android/internal/util/WakeupMessage;-><init>(Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;IIILjava/lang/Object;)V

    #@c
    return-object v0
.end method

.method protected notifyNetworkCallback(Lcom/android/server/connectivity/NetworkAgentInfo;Lcom/android/server/ConnectivityService$NetworkRequestInfo;)V
    .locals 2
    .param p1, "nai"    # Lcom/android/server/connectivity/NetworkAgentInfo;
    .param p2, "nri"    # Lcom/android/server/ConnectivityService$NetworkRequestInfo;

    #@0
    .prologue
    .line 5315
    const v0, 0x80002

    #@3
    .line 5316
    .local v0, "notifyType":I
    iget-object v1, p2, Lcom/android/server/ConnectivityService$NetworkRequestInfo;->mPendingIntent:Landroid/app/PendingIntent;

    #@5
    if-nez v1, :cond_0

    #@7
    .line 5317
    const/4 v1, 0x0

    #@8
    invoke-direct {p0, p2, p1, v0, v1}, Lcom/android/server/ConnectivityService;->callCallbackForRequest(Lcom/android/server/ConnectivityService$NetworkRequestInfo;Lcom/android/server/connectivity/NetworkAgentInfo;II)V

    #@b
    .line 5314
    :goto_0
    return-void

    #@c
    .line 5319
    :cond_0
    invoke-direct {p0, p2, p1, v0}, Lcom/android/server/ConnectivityService;->sendPendingIntentForRequest(Lcom/android/server/ConnectivityService$NetworkRequestInfo;Lcom/android/server/connectivity/NetworkAgentInfo;I)V

    #@f
    goto :goto_0
.end method

.method protected notifyNetworkCallbacks(Lcom/android/server/connectivity/NetworkAgentInfo;I)V
    .locals 1
    .param p1, "networkAgent"    # Lcom/android/server/connectivity/NetworkAgentInfo;
    .param p2, "notifyType"    # I

    #@0
    .prologue
    .line 5386
    const/4 v0, 0x0

    #@1
    invoke-virtual {p0, p1, p2, v0}, Lcom/android/server/ConnectivityService;->notifyNetworkCallbacks(Lcom/android/server/connectivity/NetworkAgentInfo;II)V

    #@4
    .line 5385
    return-void
.end method

.method protected notifyNetworkCallbacks(Lcom/android/server/connectivity/NetworkAgentInfo;II)V
    .locals 4
    .param p1, "networkAgent"    # Lcom/android/server/connectivity/NetworkAgentInfo;
    .param p2, "notifyType"    # I
    .param p3, "arg1"    # I

    #@0
    .prologue
    .line 5371
    const/4 v0, 0x0

    #@1
    .local v0, "i":I
    :goto_0
    invoke-virtual {p1}, Lcom/android/server/connectivity/NetworkAgentInfo;->numNetworkRequests()I

    #@4
    move-result v3

    #@5
    if-ge v0, v3, :cond_1

    #@7
    .line 5372
    invoke-virtual {p1, v0}, Lcom/android/server/connectivity/NetworkAgentInfo;->requestAt(I)Landroid/net/NetworkRequest;

    #@a
    move-result-object v1

    #@b
    .line 5373
    .local v1, "nr":Landroid/net/NetworkRequest;
    iget-object v3, p0, Lcom/android/server/ConnectivityService;->mNetworkRequests:Ljava/util/HashMap;

    #@d
    invoke-virtual {v3, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@10
    move-result-object v2

    #@11
    check-cast v2, Lcom/android/server/ConnectivityService$NetworkRequestInfo;

    #@13
    .line 5377
    .local v2, "nri":Lcom/android/server/ConnectivityService$NetworkRequestInfo;
    iget-object v3, v2, Lcom/android/server/ConnectivityService$NetworkRequestInfo;->mPendingIntent:Landroid/app/PendingIntent;

    #@15
    if-nez v3, :cond_0

    #@17
    .line 5378
    invoke-direct {p0, v2, p1, p2, p3}, Lcom/android/server/ConnectivityService;->callCallbackForRequest(Lcom/android/server/ConnectivityService$NetworkRequestInfo;Lcom/android/server/connectivity/NetworkAgentInfo;II)V

    #@1a
    .line 5371
    :goto_1
    add-int/lit8 v0, v0, 0x1

    #@1c
    goto :goto_0

    #@1d
    .line 5380
    :cond_0
    invoke-direct {p0, v2, p1, p2}, Lcom/android/server/ConnectivityService;->sendPendingIntentForRequest(Lcom/android/server/ConnectivityService$NetworkRequestInfo;Lcom/android/server/connectivity/NetworkAgentInfo;I)V

    #@20
    goto :goto_1

    #@21
    .line 5369
    .end local v1    # "nr":Landroid/net/NetworkRequest;
    .end local v2    # "nri":Lcom/android/server/ConnectivityService$NetworkRequestInfo;
    :cond_1
    return-void
.end method

.method public onSendFinished(Landroid/app/PendingIntent;Landroid/content/Intent;ILjava/lang/String;Landroid/os/Bundle;)V
    .locals 2
    .param p1, "pendingIntent"    # Landroid/app/PendingIntent;
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "resultCode"    # I
    .param p4, "resultData"    # Ljava/lang/String;
    .param p5, "resultExtras"    # Landroid/os/Bundle;

    #@0
    .prologue
    .line 4725
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    const-string/jumbo v1, "Finished sending "

    #@8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b
    move-result-object v0

    #@c
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@f
    move-result-object v0

    #@10
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@13
    move-result-object v0

    #@14
    invoke-static {v0}, Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V

    #@17
    .line 4726
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mPendingIntentWakeLock:Landroid/os/PowerManager$WakeLock;

    #@19
    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    #@1c
    .line 4729
    invoke-direct {p0, p1}, Lcom/android/server/ConnectivityService;->releasePendingNetworkRequestWithDelay(Landroid/app/PendingIntent;)V

    #@1f
    .line 4724
    return-void
.end method

.method public pendingListenForNetwork(Landroid/net/NetworkCapabilities;Landroid/app/PendingIntent;)V
    .locals 6
    .param p1, "networkCapabilities"    # Landroid/net/NetworkCapabilities;
    .param p2, "operation"    # Landroid/app/PendingIntent;

    #@0
    .prologue
    .line 4299
    const-string/jumbo v2, "PendingIntent cannot be null."

    #@3
    invoke-static {p2, v2}, Lcom/android/server/ConnectivityService;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    #@6
    .line 4300
    invoke-direct {p0, p1}, Lcom/android/server/ConnectivityService;->hasWifiNetworkListenPermission(Landroid/net/NetworkCapabilities;)Z

    #@9
    move-result v2

    #@a
    if-nez v2, :cond_0

    #@c
    .line 4301
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->enforceAccessPermission()V

    #@f
    .line 4304
    :cond_0
    new-instance v0, Landroid/net/NetworkRequest;

    #@11
    .line 4305
    new-instance v2, Landroid/net/NetworkCapabilities;

    #@13
    invoke-direct {v2, p1}, Landroid/net/NetworkCapabilities;-><init>(Landroid/net/NetworkCapabilities;)V

    #@16
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->nextNetworkRequestId()I

    #@19
    move-result v3

    #@1a
    .line 4306
    sget-object v4, Landroid/net/NetworkRequest$Type;->LISTEN:Landroid/net/NetworkRequest$Type;

    #@1c
    .line 4305
    const/4 v5, -0x1

    #@1d
    .line 4304
    invoke-direct {v0, v2, v5, v3, v4}, Landroid/net/NetworkRequest;-><init>(Landroid/net/NetworkCapabilities;IILandroid/net/NetworkRequest$Type;)V

    #@20
    .line 4307
    .local v0, "networkRequest":Landroid/net/NetworkRequest;
    new-instance v1, Lcom/android/server/ConnectivityService$NetworkRequestInfo;

    #@22
    invoke-direct {v1, p0, v0, p2}, Lcom/android/server/ConnectivityService$NetworkRequestInfo;-><init>(Lcom/android/server/ConnectivityService;Landroid/net/NetworkRequest;Landroid/app/PendingIntent;)V

    #@25
    .line 4310
    .local v1, "nri":Lcom/android/server/ConnectivityService$NetworkRequestInfo;
    iget-object v2, p0, Lcom/android/server/ConnectivityService;->mHandler:Lcom/android/server/ConnectivityService$InternalHandler;

    #@27
    iget-object v3, p0, Lcom/android/server/ConnectivityService;->mHandler:Lcom/android/server/ConnectivityService$InternalHandler;

    #@29
    const/16 v4, 0x15

    #@2b
    invoke-virtual {v3, v4, v1}, Lcom/android/server/ConnectivityService$InternalHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    #@2e
    move-result-object v3

    #@2f
    invoke-virtual {v2, v3}, Lcom/android/server/ConnectivityService$InternalHandler;->sendMessage(Landroid/os/Message;)Z

    #@32
    .line 4298
    return-void
.end method

.method public pendingRequestForNetwork(Landroid/net/NetworkCapabilities;Landroid/app/PendingIntent;)Landroid/net/NetworkRequest;
    .locals 6
    .param p1, "networkCapabilities"    # Landroid/net/NetworkCapabilities;
    .param p2, "operation"    # Landroid/app/PendingIntent;

    #@0
    .prologue
    .line 4220
    const-string/jumbo v3, "PendingIntent cannot be null."

    #@3
    invoke-static {p2, v3}, Lcom/android/server/ConnectivityService;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    #@6
    .line 4221
    new-instance v0, Landroid/net/NetworkCapabilities;

    #@8
    invoke-direct {v0, p1}, Landroid/net/NetworkCapabilities;-><init>(Landroid/net/NetworkCapabilities;)V

    #@b
    .line 4222
    .end local p1    # "networkCapabilities":Landroid/net/NetworkCapabilities;
    .local v0, "networkCapabilities":Landroid/net/NetworkCapabilities;
    invoke-direct {p0, v0}, Lcom/android/server/ConnectivityService;->enforceNetworkRequestPermissions(Landroid/net/NetworkCapabilities;)V

    #@e
    .line 4223
    invoke-direct {p0, v0}, Lcom/android/server/ConnectivityService;->enforceMeteredApnPolicy(Landroid/net/NetworkCapabilities;)V

    #@11
    .line 4224
    invoke-direct {p0, v0}, Lcom/android/server/ConnectivityService;->ensureRequestableCapabilities(Landroid/net/NetworkCapabilities;)V

    #@14
    .line 4226
    new-instance v1, Landroid/net/NetworkRequest;

    #@16
    .line 4227
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->nextNetworkRequestId()I

    #@19
    move-result v3

    #@1a
    sget-object v4, Landroid/net/NetworkRequest$Type;->REQUEST:Landroid/net/NetworkRequest$Type;

    #@1c
    .line 4226
    const/4 v5, -0x1

    #@1d
    invoke-direct {v1, v0, v5, v3, v4}, Landroid/net/NetworkRequest;-><init>(Landroid/net/NetworkCapabilities;IILandroid/net/NetworkRequest$Type;)V

    #@20
    .line 4228
    .local v1, "networkRequest":Landroid/net/NetworkRequest;
    new-instance v2, Lcom/android/server/ConnectivityService$NetworkRequestInfo;

    #@22
    invoke-direct {v2, p0, v1, p2}, Lcom/android/server/ConnectivityService$NetworkRequestInfo;-><init>(Lcom/android/server/ConnectivityService;Landroid/net/NetworkRequest;Landroid/app/PendingIntent;)V

    #@25
    .line 4229
    .local v2, "nri":Lcom/android/server/ConnectivityService$NetworkRequestInfo;
    new-instance v3, Ljava/lang/StringBuilder;

    #@27
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@2a
    const-string/jumbo v4, "pendingRequest for "

    #@2d
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@30
    move-result-object v3

    #@31
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@34
    move-result-object v3

    #@35
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@38
    move-result-object v3

    #@39
    invoke-static {v3}, Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V

    #@3c
    .line 4230
    iget-object v3, p0, Lcom/android/server/ConnectivityService;->mHandler:Lcom/android/server/ConnectivityService$InternalHandler;

    #@3e
    iget-object v4, p0, Lcom/android/server/ConnectivityService;->mHandler:Lcom/android/server/ConnectivityService$InternalHandler;

    #@40
    const/16 v5, 0x1a

    #@42
    invoke-virtual {v4, v5, v2}, Lcom/android/server/ConnectivityService$InternalHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    #@45
    move-result-object v4

    #@46
    invoke-virtual {v3, v4}, Lcom/android/server/ConnectivityService$InternalHandler;->sendMessage(Landroid/os/Message;)Z

    #@49
    .line 4232
    return-object v1
.end method

.method public prepareVpn(Ljava/lang/String;Ljava/lang/String;I)Z
    .locals 3
    .param p1, "oldPackage"    # Ljava/lang/String;
    .param p2, "newPackage"    # Ljava/lang/String;
    .param p3, "userId"    # I

    #@0
    .prologue
    .line 3479
    invoke-direct {p0, p3}, Lcom/android/server/ConnectivityService;->enforceCrossUserPermission(I)V

    #@3
    .line 3480
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->throwIfLockdownEnabled()V

    #@6
    .line 3482
    iget-object v2, p0, Lcom/android/server/ConnectivityService;->mVpns:Landroid/util/SparseArray;

    #@8
    monitor-enter v2

    #@9
    .line 3483
    :try_start_0
    iget-object v1, p0, Lcom/android/server/ConnectivityService;->mVpns:Landroid/util/SparseArray;

    #@b
    invoke-virtual {v1, p3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    #@e
    move-result-object v0

    #@f
    check-cast v0, Lcom/android/server/connectivity/Vpn;

    #@11
    .line 3484
    .local v0, "vpn":Lcom/android/server/connectivity/Vpn;
    if-eqz v0, :cond_0

    #@13
    .line 3485
    invoke-virtual {v0, p1, p2}, Lcom/android/server/connectivity/Vpn;->prepare(Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@16
    move-result v1

    #@17
    monitor-exit v2

    #@18
    return v1

    #@19
    .line 3487
    :cond_0
    const/4 v1, 0x0

    #@1a
    monitor-exit v2

    #@1b
    return v1

    #@1c
    .line 3482
    .end local v0    # "vpn":Lcom/android/server/connectivity/Vpn;
    :catchall_0
    move-exception v1

    #@1d
    monitor-exit v2

    #@1e
    throw v1
.end method

.method public registerNetworkAgent(Landroid/os/Messenger;Landroid/net/NetworkInfo;Landroid/net/LinkProperties;Landroid/net/NetworkCapabilities;ILandroid/net/NetworkMisc;)I
    .locals 14
    .param p1, "messenger"    # Landroid/os/Messenger;
    .param p2, "networkInfo"    # Landroid/net/NetworkInfo;
    .param p3, "linkProperties"    # Landroid/net/LinkProperties;
    .param p4, "networkCapabilities"    # Landroid/net/NetworkCapabilities;
    .param p5, "currentScore"    # I
    .param p6, "networkMisc"    # Landroid/net/NetworkMisc;

    #@0
    .prologue
    .line 4415
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->enforceConnectivityInternalPermission()V

    #@3
    .line 4419
    new-instance v1, Lcom/android/server/connectivity/NetworkAgentInfo;

    #@5
    new-instance v3, Lcom/android/internal/util/AsyncChannel;

    #@7
    invoke-direct {v3}, Lcom/android/internal/util/AsyncChannel;-><init>()V

    #@a
    .line 4420
    new-instance v4, Landroid/net/Network;

    #@c
    invoke-virtual {p0}, Lcom/android/server/ConnectivityService;->reserveNetId()I

    #@f
    move-result v2

    #@10
    invoke-direct {v4, v2}, Landroid/net/Network;-><init>(I)V

    #@13
    new-instance v5, Landroid/net/NetworkInfo;

    #@15
    move-object/from16 v0, p2

    #@17
    invoke-direct {v5, v0}, Landroid/net/NetworkInfo;-><init>(Landroid/net/NetworkInfo;)V

    #@1a
    new-instance v6, Landroid/net/LinkProperties;

    #@1c
    move-object/from16 v0, p3

    #@1e
    invoke-direct {v6, v0}, Landroid/net/LinkProperties;-><init>(Landroid/net/LinkProperties;)V

    #@21
    .line 4421
    new-instance v7, Landroid/net/NetworkCapabilities;

    #@23
    move-object/from16 v0, p4

    #@25
    invoke-direct {v7, v0}, Landroid/net/NetworkCapabilities;-><init>(Landroid/net/NetworkCapabilities;)V

    #@28
    .line 4422
    iget-object v9, p0, Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;

    #@2a
    iget-object v10, p0, Lcom/android/server/ConnectivityService;->mTrackerHandler:Lcom/android/server/ConnectivityService$NetworkStateTrackerHandler;

    #@2c
    new-instance v11, Landroid/net/NetworkMisc;

    #@2e
    move-object/from16 v0, p6

    #@30
    invoke-direct {v11, v0}, Landroid/net/NetworkMisc;-><init>(Landroid/net/NetworkMisc;)V

    #@33
    iget-object v12, p0, Lcom/android/server/ConnectivityService;->mDefaultRequest:Landroid/net/NetworkRequest;

    #@35
    move-object v2, p1

    #@36
    move/from16 v8, p5

    #@38
    move-object v13, p0

    #@39
    .line 4419
    invoke-direct/range {v1 .. v13}, Lcom/android/server/connectivity/NetworkAgentInfo;-><init>(Landroid/os/Messenger;Lcom/android/internal/util/AsyncChannel;Landroid/net/Network;Landroid/net/NetworkInfo;Landroid/net/LinkProperties;Landroid/net/NetworkCapabilities;ILandroid/content/Context;Landroid/os/Handler;Landroid/net/NetworkMisc;Landroid/net/NetworkRequest;Lcom/android/server/ConnectivityService;)V

    #@3c
    .line 4423
    .local v1, "nai":Lcom/android/server/connectivity/NetworkAgentInfo;
    monitor-enter p0

    #@3d
    .line 4424
    :try_start_0
    iget-object v2, v1, Lcom/android/server/connectivity/NetworkAgentInfo;->networkMonitor:Lcom/android/server/connectivity/NetworkMonitor;

    #@3f
    iget-boolean v3, p0, Lcom/android/server/ConnectivityService;->mSystemReady:Z

    #@41
    iput-boolean v3, v2, Lcom/android/server/connectivity/NetworkMonitor;->systemReady:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@43
    monitor-exit p0

    #@44
    .line 4426
    iget-object v2, v1, Lcom/android/server/connectivity/NetworkAgentInfo;->networkMonitor:Lcom/android/server/connectivity/NetworkMonitor;

    #@46
    invoke-virtual {v2}, Lcom/android/server/connectivity/NetworkMonitor;->getValidationLogs()Landroid/util/LocalLog$ReadOnlyLocalLog;

    #@49
    move-result-object v2

    #@4a
    iget-object v3, v1, Lcom/android/server/connectivity/NetworkAgentInfo;->network:Landroid/net/Network;

    #@4c
    .line 4427
    invoke-virtual/range {p2 .. p2}, Landroid/net/NetworkInfo;->getExtraInfo()Ljava/lang/String;

    #@4f
    move-result-object v4

    #@50
    .line 4426
    invoke-direct {p0, v2, v3, v4}, Lcom/android/server/ConnectivityService;->addValidationLogs(Landroid/util/LocalLog$ReadOnlyLocalLog;Landroid/net/Network;Ljava/lang/String;)V

    #@53
    .line 4428
    new-instance v2, Ljava/lang/StringBuilder;

    #@55
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@58
    const-string/jumbo v3, "registerNetworkAgent "

    #@5b
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5e
    move-result-object v2

    #@5f
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@62
    move-result-object v2

    #@63
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@66
    move-result-object v2

    #@67
    invoke-static {v2}, Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V

    #@6a
    .line 4429
    iget-object v2, p0, Lcom/android/server/ConnectivityService;->mHandler:Lcom/android/server/ConnectivityService$InternalHandler;

    #@6c
    iget-object v3, p0, Lcom/android/server/ConnectivityService;->mHandler:Lcom/android/server/ConnectivityService$InternalHandler;

    #@6e
    const/16 v4, 0x12

    #@70
    invoke-virtual {v3, v4, v1}, Lcom/android/server/ConnectivityService$InternalHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    #@73
    move-result-object v3

    #@74
    invoke-virtual {v2, v3}, Lcom/android/server/ConnectivityService$InternalHandler;->sendMessage(Landroid/os/Message;)Z

    #@77
    .line 4430
    iget-object v2, v1, Lcom/android/server/connectivity/NetworkAgentInfo;->network:Landroid/net/Network;

    #@79
    iget v2, v2, Landroid/net/Network;->netId:I

    #@7b
    return v2

    #@7c
    .line 4423
    :catchall_0
    move-exception v2

    #@7d
    monitor-exit p0

    #@7e
    throw v2
.end method

.method public registerNetworkFactory(Landroid/os/Messenger;Ljava/lang/String;)V
    .locals 4
    .param p1, "messenger"    # Landroid/os/Messenger;
    .param p2, "name"    # Ljava/lang/String;

    #@0
    .prologue
    .line 4338
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->enforceConnectivityInternalPermission()V

    #@3
    .line 4339
    new-instance v0, Lcom/android/server/ConnectivityService$NetworkFactoryInfo;

    #@5
    new-instance v1, Lcom/android/internal/util/AsyncChannel;

    #@7
    invoke-direct {v1}, Lcom/android/internal/util/AsyncChannel;-><init>()V

    #@a
    invoke-direct {v0, p2, p1, v1}, Lcom/android/server/ConnectivityService$NetworkFactoryInfo;-><init>(Ljava/lang/String;Landroid/os/Messenger;Lcom/android/internal/util/AsyncChannel;)V

    #@d
    .line 4340
    .local v0, "nfi":Lcom/android/server/ConnectivityService$NetworkFactoryInfo;
    iget-object v1, p0, Lcom/android/server/ConnectivityService;->mHandler:Lcom/android/server/ConnectivityService$InternalHandler;

    #@f
    iget-object v2, p0, Lcom/android/server/ConnectivityService;->mHandler:Lcom/android/server/ConnectivityService$InternalHandler;

    #@11
    const/16 v3, 0x11

    #@13
    invoke-virtual {v2, v3, v0}, Lcom/android/server/ConnectivityService$InternalHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    #@16
    move-result-object v2

    #@17
    invoke-virtual {v1, v2}, Lcom/android/server/ConnectivityService$InternalHandler;->sendMessage(Landroid/os/Message;)Z

    #@1a
    .line 4337
    return-void
.end method

.method public releaseNetworkRequest(Landroid/net/NetworkRequest;)V
    .locals 5
    .param p1, "networkRequest"    # Landroid/net/NetworkRequest;

    #@0
    .prologue
    .line 4331
    invoke-direct {p0, p1}, Lcom/android/server/ConnectivityService;->ensureNetworkRequestHasType(Landroid/net/NetworkRequest;)V

    #@3
    .line 4332
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mHandler:Lcom/android/server/ConnectivityService$InternalHandler;

    #@5
    iget-object v1, p0, Lcom/android/server/ConnectivityService;->mHandler:Lcom/android/server/ConnectivityService$InternalHandler;

    #@7
    .line 4333
    invoke-static {}, Lcom/android/server/ConnectivityService;->getCallingUid()I

    #@a
    move-result v2

    #@b
    const/16 v3, 0x16

    #@d
    const/4 v4, 0x0

    #@e
    .line 4332
    invoke-virtual {v1, v3, v2, v4, p1}, Lcom/android/server/ConnectivityService$InternalHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    #@11
    move-result-object v1

    #@12
    invoke-virtual {v0, v1}, Lcom/android/server/ConnectivityService$InternalHandler;->sendMessage(Landroid/os/Message;)Z

    #@15
    .line 4330
    return-void
.end method

.method public releasePendingNetworkRequest(Landroid/app/PendingIntent;)V
    .locals 5
    .param p1, "operation"    # Landroid/app/PendingIntent;

    #@0
    .prologue
    .line 4243
    const-string/jumbo v0, "PendingIntent cannot be null."

    #@3
    invoke-static {p1, v0}, Lcom/android/server/ConnectivityService;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    #@6
    .line 4244
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mHandler:Lcom/android/server/ConnectivityService$InternalHandler;

    #@8
    iget-object v1, p0, Lcom/android/server/ConnectivityService;->mHandler:Lcom/android/server/ConnectivityService$InternalHandler;

    #@a
    .line 4245
    invoke-static {}, Lcom/android/server/ConnectivityService;->getCallingUid()I

    #@d
    move-result v2

    #@e
    .line 4244
    const/16 v3, 0x1b

    #@10
    .line 4245
    const/4 v4, 0x0

    #@11
    .line 4244
    invoke-virtual {v1, v3, v2, v4, p1}, Lcom/android/server/ConnectivityService$InternalHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    #@14
    move-result-object v1

    #@15
    invoke-virtual {v0, v1}, Lcom/android/server/ConnectivityService$InternalHandler;->sendMessage(Landroid/os/Message;)Z

    #@18
    .line 4242
    return-void
.end method

.method public removeVpnAddress(Ljava/lang/String;I)Z
    .locals 3
    .param p1, "address"    # Ljava/lang/String;
    .param p2, "prefixLength"    # I

    #@0
    .prologue
    .line 5425
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->throwIfLockdownEnabled()V

    #@3
    .line 5426
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    #@6
    move-result v1

    #@7
    invoke-static {v1}, Landroid/os/UserHandle;->getUserId(I)I

    #@a
    move-result v0

    #@b
    .line 5427
    .local v0, "user":I
    iget-object v2, p0, Lcom/android/server/ConnectivityService;->mVpns:Landroid/util/SparseArray;

    #@d
    monitor-enter v2

    #@e
    .line 5428
    :try_start_0
    iget-object v1, p0, Lcom/android/server/ConnectivityService;->mVpns:Landroid/util/SparseArray;

    #@10
    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    #@13
    move-result-object v1

    #@14
    check-cast v1, Lcom/android/server/connectivity/Vpn;

    #@16
    invoke-virtual {v1, p1, p2}, Lcom/android/server/connectivity/Vpn;->removeAddress(Ljava/lang/String;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@19
    move-result v1

    #@1a
    monitor-exit v2

    #@1b
    return v1

    #@1c
    .line 5427
    :catchall_0
    move-exception v1

    #@1d
    monitor-exit v2

    #@1e
    throw v1
.end method

.method public reportInetCondition(II)V
    .locals 3
    .param p1, "networkType"    # I
    .param p2, "percentage"    # I

    #@0
    .prologue
    .line 3148
    iget-object v1, p0, Lcom/android/server/ConnectivityService;->mLegacyTypeTracker:Lcom/android/server/ConnectivityService$LegacyTypeTracker;

    #@2
    invoke-virtual {v1, p1}, Lcom/android/server/ConnectivityService$LegacyTypeTracker;->getNetworkForType(I)Lcom/android/server/connectivity/NetworkAgentInfo;

    #@5
    move-result-object v0

    #@6
    .line 3149
    .local v0, "nai":Lcom/android/server/connectivity/NetworkAgentInfo;
    if-nez v0, :cond_0

    #@8
    return-void

    #@9
    .line 3150
    :cond_0
    iget-object v2, v0, Lcom/android/server/connectivity/NetworkAgentInfo;->network:Landroid/net/Network;

    #@b
    const/16 v1, 0x32

    #@d
    if-le p2, v1, :cond_1

    #@f
    const/4 v1, 0x1

    #@10
    :goto_0
    invoke-virtual {p0, v2, v1}, Lcom/android/server/ConnectivityService;->reportNetworkConnectivity(Landroid/net/Network;Z)V

    #@13
    .line 3147
    return-void

    #@14
    .line 3150
    :cond_1
    const/4 v1, 0x0

    #@15
    goto :goto_0
.end method

.method public reportNetworkConnectivity(Landroid/net/Network;Z)V
    .locals 4
    .param p1, "network"    # Landroid/net/Network;
    .param p2, "hasConnectivity"    # Z

    #@0
    .prologue
    .line 3155
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->enforceAccessPermission()V

    #@3
    .line 3156
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->enforceInternetPermission()V

    #@6
    .line 3159
    if-nez p1, :cond_1

    #@8
    .line 3160
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->getDefaultNetwork()Lcom/android/server/connectivity/NetworkAgentInfo;

    #@b
    move-result-object v0

    #@c
    .line 3164
    .local v0, "nai":Lcom/android/server/connectivity/NetworkAgentInfo;
    :goto_0
    if-eqz v0, :cond_0

    #@e
    iget-object v2, v0, Lcom/android/server/connectivity/NetworkAgentInfo;->networkInfo:Landroid/net/NetworkInfo;

    #@10
    invoke-virtual {v2}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    #@13
    move-result-object v2

    #@14
    sget-object v3, Landroid/net/NetworkInfo$State;->DISCONNECTING:Landroid/net/NetworkInfo$State;

    #@16
    if-ne v2, v3, :cond_2

    #@18
    .line 3166
    :cond_0
    return-void

    #@19
    .line 3162
    .end local v0    # "nai":Lcom/android/server/connectivity/NetworkAgentInfo;
    :cond_1
    invoke-direct {p0, p1}, Lcom/android/server/ConnectivityService;->getNetworkAgentInfoForNetwork(Landroid/net/Network;)Lcom/android/server/connectivity/NetworkAgentInfo;

    #@1c
    move-result-object v0

    #@1d
    .restart local v0    # "nai":Lcom/android/server/connectivity/NetworkAgentInfo;
    goto :goto_0

    #@1e
    .line 3165
    :cond_2
    iget-object v2, v0, Lcom/android/server/connectivity/NetworkAgentInfo;->networkInfo:Landroid/net/NetworkInfo;

    #@20
    invoke-virtual {v2}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    #@23
    move-result-object v2

    #@24
    sget-object v3, Landroid/net/NetworkInfo$State;->DISCONNECTED:Landroid/net/NetworkInfo$State;

    #@26
    if-eq v2, v3, :cond_0

    #@28
    .line 3169
    iget-boolean v2, v0, Lcom/android/server/connectivity/NetworkAgentInfo;->lastValidated:Z

    #@2a
    if-ne p2, v2, :cond_3

    #@2c
    return-void

    #@2d
    .line 3170
    :cond_3
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    #@30
    move-result v1

    #@31
    .line 3172
    .local v1, "uid":I
    new-instance v2, Ljava/lang/StringBuilder;

    #@33
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@36
    const-string/jumbo v3, "reportNetworkConnectivity("

    #@39
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3c
    move-result-object v2

    #@3d
    iget-object v3, v0, Lcom/android/server/connectivity/NetworkAgentInfo;->network:Landroid/net/Network;

    #@3f
    iget v3, v3, Landroid/net/Network;->netId:I

    #@41
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@44
    move-result-object v2

    #@45
    const-string/jumbo v3, ", "

    #@48
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4b
    move-result-object v2

    #@4c
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@4f
    move-result-object v2

    #@50
    .line 3173
    const-string/jumbo v3, ") by "

    #@53
    .line 3172
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@56
    move-result-object v2

    #@57
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@5a
    move-result-object v2

    #@5b
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@5e
    move-result-object v2

    #@5f
    invoke-static {v2}, Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V

    #@62
    .line 3175
    monitor-enter v0

    #@63
    .line 3178
    :try_start_0
    iget-boolean v2, v0, Lcom/android/server/connectivity/NetworkAgentInfo;->everConnected:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@65
    if-nez v2, :cond_4

    #@67
    monitor-exit v0

    #@68
    return-void

    #@69
    .line 3180
    :cond_4
    :try_start_1
    iget-object v2, v0, Lcom/android/server/connectivity/NetworkAgentInfo;->linkProperties:Landroid/net/LinkProperties;

    #@6b
    const/4 v3, 0x0

    #@6c
    invoke-direct {p0, v2, v1, v3}, Lcom/android/server/ConnectivityService;->isNetworkWithLinkPropertiesBlocked(Landroid/net/LinkProperties;IZ)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@6f
    move-result v2

    #@70
    if-eqz v2, :cond_5

    #@72
    monitor-exit v0

    #@73
    return-void

    #@74
    .line 3182
    :cond_5
    :try_start_2
    iget-object v2, v0, Lcom/android/server/connectivity/NetworkAgentInfo;->networkMonitor:Lcom/android/server/connectivity/NetworkMonitor;

    #@76
    const v3, 0x82008

    #@79
    invoke-virtual {v2, v3, v1}, Lcom/android/server/connectivity/NetworkMonitor;->sendMessage(II)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@7c
    monitor-exit v0

    #@7d
    .line 3154
    return-void

    #@7e
    .line 3175
    :catchall_0
    move-exception v2

    #@7f
    monitor-exit v0

    #@80
    throw v2
.end method

.method public requestBandwidthUpdate(Landroid/net/Network;)Z
    .locals 5
    .param p1, "network"    # Landroid/net/Network;

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 4178
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->enforceAccessPermission()V

    #@4
    .line 4179
    const/4 v0, 0x0

    #@5
    .line 4180
    .local v0, "nai":Lcom/android/server/connectivity/NetworkAgentInfo;
    if-nez p1, :cond_0

    #@7
    .line 4181
    return v4

    #@8
    .line 4183
    :cond_0
    iget-object v2, p0, Lcom/android/server/ConnectivityService;->mNetworkForNetId:Landroid/util/SparseArray;

    #@a
    monitor-enter v2

    #@b
    .line 4184
    :try_start_0
    iget-object v1, p0, Lcom/android/server/ConnectivityService;->mNetworkForNetId:Landroid/util/SparseArray;

    #@d
    iget v3, p1, Landroid/net/Network;->netId:I

    #@f
    invoke-virtual {v1, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    #@12
    move-result-object v0

    #@13
    .end local v0    # "nai":Lcom/android/server/connectivity/NetworkAgentInfo;
    check-cast v0, Lcom/android/server/connectivity/NetworkAgentInfo;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@15
    .local v0, "nai":Lcom/android/server/connectivity/NetworkAgentInfo;
    monitor-exit v2

    #@16
    .line 4186
    if-eqz v0, :cond_1

    #@18
    .line 4187
    iget-object v1, v0, Lcom/android/server/connectivity/NetworkAgentInfo;->asyncChannel:Lcom/android/internal/util/AsyncChannel;

    #@1a
    const v2, 0x8100a

    #@1d
    invoke-virtual {v1, v2}, Lcom/android/internal/util/AsyncChannel;->sendMessage(I)V

    #@20
    .line 4188
    const/4 v1, 0x1

    #@21
    return v1

    #@22
    .line 4183
    .end local v0    # "nai":Lcom/android/server/connectivity/NetworkAgentInfo;
    :catchall_0
    move-exception v1

    #@23
    monitor-exit v2

    #@24
    throw v1

    #@25
    .line 4190
    .restart local v0    # "nai":Lcom/android/server/connectivity/NetworkAgentInfo;
    :cond_1
    return v4
.end method

.method public requestLinkProperties(Landroid/net/NetworkRequest;)V
    .locals 5
    .param p1, "networkRequest"    # Landroid/net/NetworkRequest;

    #@0
    .prologue
    .line 4315
    invoke-direct {p0, p1}, Lcom/android/server/ConnectivityService;->ensureNetworkRequestHasType(Landroid/net/NetworkRequest;)V

    #@3
    .line 4316
    iget-object v0, p1, Landroid/net/NetworkRequest;->type:Landroid/net/NetworkRequest$Type;

    #@5
    sget-object v1, Landroid/net/NetworkRequest$Type;->LISTEN:Landroid/net/NetworkRequest$Type;

    #@7
    if-ne v0, v1, :cond_0

    #@9
    return-void

    #@a
    .line 4317
    :cond_0
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mHandler:Lcom/android/server/ConnectivityService$InternalHandler;

    #@c
    iget-object v1, p0, Lcom/android/server/ConnectivityService;->mHandler:Lcom/android/server/ConnectivityService$InternalHandler;

    #@e
    .line 4318
    invoke-static {}, Lcom/android/server/ConnectivityService;->getCallingUid()I

    #@11
    move-result v2

    #@12
    const/16 v3, 0x20

    #@14
    const/4 v4, 0x0

    #@15
    .line 4317
    invoke-virtual {v1, v3, v2, v4, p1}, Lcom/android/server/ConnectivityService$InternalHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    #@18
    move-result-object v1

    #@19
    invoke-virtual {v0, v1}, Lcom/android/server/ConnectivityService$InternalHandler;->sendMessage(Landroid/os/Message;)Z

    #@1c
    .line 4314
    return-void
.end method

.method public requestNetwork(Landroid/net/NetworkCapabilities;Landroid/os/Messenger;ILandroid/os/IBinder;I)Landroid/net/NetworkRequest;
    .locals 8
    .param p1, "networkCapabilities"    # Landroid/net/NetworkCapabilities;
    .param p2, "messenger"    # Landroid/os/Messenger;
    .param p3, "timeoutMs"    # I
    .param p4, "binder"    # Landroid/os/IBinder;
    .param p5, "legacyType"    # I

    #@0
    .prologue
    .line 4126
    if-nez p1, :cond_1

    #@2
    .line 4127
    sget-object v3, Landroid/net/NetworkRequest$Type;->TRACK_DEFAULT:Landroid/net/NetworkRequest$Type;

    #@4
    .line 4132
    .local v3, "type":Landroid/net/NetworkRequest$Type;
    :goto_0
    sget-object v4, Landroid/net/NetworkRequest$Type;->TRACK_DEFAULT:Landroid/net/NetworkRequest$Type;

    #@6
    if-ne v3, v4, :cond_2

    #@8
    .line 4133
    new-instance p1, Landroid/net/NetworkCapabilities;

    #@a
    .end local p1    # "networkCapabilities":Landroid/net/NetworkCapabilities;
    iget-object v4, p0, Lcom/android/server/ConnectivityService;->mDefaultRequest:Landroid/net/NetworkRequest;

    #@c
    iget-object v4, v4, Landroid/net/NetworkRequest;->networkCapabilities:Landroid/net/NetworkCapabilities;

    #@e
    invoke-direct {p1, v4}, Landroid/net/NetworkCapabilities;-><init>(Landroid/net/NetworkCapabilities;)V

    #@11
    .line 4134
    .restart local p1    # "networkCapabilities":Landroid/net/NetworkCapabilities;
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->enforceAccessPermission()V

    #@14
    .line 4143
    :goto_1
    invoke-direct {p0, p1}, Lcom/android/server/ConnectivityService;->ensureRequestableCapabilities(Landroid/net/NetworkCapabilities;)V

    #@17
    .line 4145
    if-ltz p3, :cond_0

    #@19
    const v4, 0x5b8d80

    #@1c
    if-le p3, v4, :cond_3

    #@1e
    .line 4146
    :cond_0
    new-instance v4, Ljava/lang/IllegalArgumentException;

    #@20
    const-string/jumbo v5, "Bad timeout specified"

    #@23
    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@26
    throw v4

    #@27
    .line 4128
    .end local v3    # "type":Landroid/net/NetworkRequest$Type;
    :cond_1
    sget-object v3, Landroid/net/NetworkRequest$Type;->REQUEST:Landroid/net/NetworkRequest$Type;

    #@29
    .restart local v3    # "type":Landroid/net/NetworkRequest$Type;
    goto :goto_0

    #@2a
    .line 4136
    :cond_2
    new-instance v0, Landroid/net/NetworkCapabilities;

    #@2c
    invoke-direct {v0, p1}, Landroid/net/NetworkCapabilities;-><init>(Landroid/net/NetworkCapabilities;)V

    #@2f
    .line 4137
    .end local p1    # "networkCapabilities":Landroid/net/NetworkCapabilities;
    .local v0, "networkCapabilities":Landroid/net/NetworkCapabilities;
    invoke-direct {p0, v0}, Lcom/android/server/ConnectivityService;->enforceNetworkRequestPermissions(Landroid/net/NetworkCapabilities;)V

    #@32
    .line 4141
    invoke-direct {p0, v0}, Lcom/android/server/ConnectivityService;->enforceMeteredApnPolicy(Landroid/net/NetworkCapabilities;)V

    #@35
    move-object p1, v0

    #@36
    .end local v0    # "networkCapabilities":Landroid/net/NetworkCapabilities;
    .restart local p1    # "networkCapabilities":Landroid/net/NetworkCapabilities;
    goto :goto_1

    #@37
    .line 4149
    :cond_3
    const-string/jumbo v4, "*"

    #@3a
    .line 4150
    invoke-virtual {p1}, Landroid/net/NetworkCapabilities;->getNetworkSpecifier()Ljava/lang/String;

    #@3d
    move-result-object v5

    #@3e
    .line 4149
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@41
    move-result v4

    #@42
    if-eqz v4, :cond_4

    #@44
    .line 4151
    new-instance v4, Ljava/lang/IllegalArgumentException;

    #@46
    const-string/jumbo v5, "Invalid network specifier - must not be \'*\'"

    #@49
    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@4c
    throw v4

    #@4d
    .line 4155
    :cond_4
    new-instance v1, Landroid/net/NetworkRequest;

    #@4f
    .line 4156
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->nextNetworkRequestId()I

    #@52
    move-result v4

    #@53
    .line 4155
    invoke-direct {v1, p1, p5, v4, v3}, Landroid/net/NetworkRequest;-><init>(Landroid/net/NetworkCapabilities;IILandroid/net/NetworkRequest$Type;)V

    #@56
    .line 4157
    .local v1, "networkRequest":Landroid/net/NetworkRequest;
    new-instance v2, Lcom/android/server/ConnectivityService$NetworkRequestInfo;

    #@58
    invoke-direct {v2, p0, p2, v1, p4}, Lcom/android/server/ConnectivityService$NetworkRequestInfo;-><init>(Lcom/android/server/ConnectivityService;Landroid/os/Messenger;Landroid/net/NetworkRequest;Landroid/os/IBinder;)V

    #@5b
    .line 4158
    .local v2, "nri":Lcom/android/server/ConnectivityService$NetworkRequestInfo;
    new-instance v4, Ljava/lang/StringBuilder;

    #@5d
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@60
    const-string/jumbo v5, "requestNetwork for "

    #@63
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@66
    move-result-object v4

    #@67
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@6a
    move-result-object v4

    #@6b
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@6e
    move-result-object v4

    #@6f
    invoke-static {v4}, Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V

    #@72
    .line 4160
    iget-object v4, p0, Lcom/android/server/ConnectivityService;->mHandler:Lcom/android/server/ConnectivityService$InternalHandler;

    #@74
    iget-object v5, p0, Lcom/android/server/ConnectivityService;->mHandler:Lcom/android/server/ConnectivityService$InternalHandler;

    #@76
    const/16 v6, 0x13

    #@78
    invoke-virtual {v5, v6, v2}, Lcom/android/server/ConnectivityService$InternalHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    #@7b
    move-result-object v5

    #@7c
    invoke-virtual {v4, v5}, Lcom/android/server/ConnectivityService$InternalHandler;->sendMessage(Landroid/os/Message;)Z

    #@7f
    .line 4161
    if-lez p3, :cond_5

    #@81
    .line 4162
    iget-object v4, p0, Lcom/android/server/ConnectivityService;->mHandler:Lcom/android/server/ConnectivityService$InternalHandler;

    #@83
    iget-object v5, p0, Lcom/android/server/ConnectivityService;->mHandler:Lcom/android/server/ConnectivityService$InternalHandler;

    #@85
    const/16 v6, 0x14

    #@87
    invoke-virtual {v5, v6, v2}, Lcom/android/server/ConnectivityService$InternalHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    #@8a
    move-result-object v5

    #@8b
    .line 4163
    int-to-long v6, p3

    #@8c
    .line 4162
    invoke-virtual {v4, v5, v6, v7}, Lcom/android/server/ConnectivityService$InternalHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    #@8f
    .line 4165
    :cond_5
    return-object v1
.end method

.method public requestNetworkCapabilities(Landroid/net/NetworkRequest;)V
    .locals 5
    .param p1, "networkRequest"    # Landroid/net/NetworkRequest;

    #@0
    .prologue
    .line 4323
    invoke-direct {p0, p1}, Lcom/android/server/ConnectivityService;->ensureNetworkRequestHasType(Landroid/net/NetworkRequest;)V

    #@3
    .line 4324
    iget-object v0, p1, Landroid/net/NetworkRequest;->type:Landroid/net/NetworkRequest$Type;

    #@5
    sget-object v1, Landroid/net/NetworkRequest$Type;->LISTEN:Landroid/net/NetworkRequest$Type;

    #@7
    if-ne v0, v1, :cond_0

    #@9
    return-void

    #@a
    .line 4325
    :cond_0
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mHandler:Lcom/android/server/ConnectivityService$InternalHandler;

    #@c
    iget-object v1, p0, Lcom/android/server/ConnectivityService;->mHandler:Lcom/android/server/ConnectivityService$InternalHandler;

    #@e
    .line 4326
    invoke-static {}, Lcom/android/server/ConnectivityService;->getCallingUid()I

    #@11
    move-result v2

    #@12
    const/16 v3, 0x21

    #@14
    const/4 v4, 0x0

    #@15
    .line 4325
    invoke-virtual {v1, v3, v2, v4, p1}, Lcom/android/server/ConnectivityService$InternalHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    #@18
    move-result-object v1

    #@19
    invoke-virtual {v0, v1}, Lcom/android/server/ConnectivityService$InternalHandler;->sendMessage(Landroid/os/Message;)Z

    #@1c
    .line 4322
    return-void
.end method

.method public requestRouteToHostAddress(I[B)Z
    .locals 13
    .param p1, "networkType"    # I
    .param p2, "hostAddress"    # [B

    #@0
    .prologue
    const/4 v12, 0x0

    #@1
    .line 1417
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->enforceChangePermission()V

    #@4
    .line 1418
    iget-object v10, p0, Lcom/android/server/ConnectivityService;->mProtectedNetworks:Ljava/util/List;

    #@6
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@9
    move-result-object v11

    #@a
    invoke-interface {v10, v11}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    #@d
    move-result v10

    #@e
    if-eqz v10, :cond_0

    #@10
    .line 1419
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->enforceConnectivityInternalPermission()V

    #@13
    .line 1424
    :cond_0
    :try_start_0
    invoke-static {p2}, Ljava/net/InetAddress;->getByAddress([B)Ljava/net/InetAddress;
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0

    #@16
    move-result-object v0

    #@17
    .line 1430
    .local v0, "addr":Ljava/net/InetAddress;
    invoke-static {p1}, Landroid/net/ConnectivityManager;->isNetworkTypeValid(I)Z

    #@1a
    move-result v10

    #@1b
    if-nez v10, :cond_1

    #@1d
    .line 1431
    new-instance v10, Ljava/lang/StringBuilder;

    #@1f
    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    #@22
    const-string/jumbo v11, "requestRouteToHostAddress on invalid network: "

    #@25
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@28
    move-result-object v10

    #@29
    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@2c
    move-result-object v10

    #@2d
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@30
    move-result-object v10

    #@31
    invoke-static {v10}, Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V

    #@34
    .line 1432
    return v12

    #@35
    .line 1425
    .end local v0    # "addr":Ljava/net/InetAddress;
    :catch_0
    move-exception v1

    #@36
    .line 1426
    .local v1, "e":Ljava/net/UnknownHostException;
    new-instance v10, Ljava/lang/StringBuilder;

    #@38
    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    #@3b
    const-string/jumbo v11, "requestRouteToHostAddress got "

    #@3e
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@41
    move-result-object v10

    #@42
    invoke-virtual {v1}, Ljava/net/UnknownHostException;->toString()Ljava/lang/String;

    #@45
    move-result-object v11

    #@46
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@49
    move-result-object v10

    #@4a
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@4d
    move-result-object v10

    #@4e
    invoke-static {v10}, Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V

    #@51
    .line 1427
    return v12

    #@52
    .line 1435
    .end local v1    # "e":Ljava/net/UnknownHostException;
    .restart local v0    # "addr":Ljava/net/InetAddress;
    :cond_1
    iget-object v10, p0, Lcom/android/server/ConnectivityService;->mLegacyTypeTracker:Lcom/android/server/ConnectivityService$LegacyTypeTracker;

    #@54
    invoke-virtual {v10, p1}, Lcom/android/server/ConnectivityService$LegacyTypeTracker;->getNetworkForType(I)Lcom/android/server/connectivity/NetworkAgentInfo;

    #@57
    move-result-object v3

    #@58
    .line 1436
    .local v3, "nai":Lcom/android/server/connectivity/NetworkAgentInfo;
    if-nez v3, :cond_3

    #@5a
    .line 1437
    iget-object v10, p0, Lcom/android/server/ConnectivityService;->mLegacyTypeTracker:Lcom/android/server/ConnectivityService$LegacyTypeTracker;

    #@5c
    invoke-virtual {v10, p1}, Lcom/android/server/ConnectivityService$LegacyTypeTracker;->isTypeSupported(I)Z

    #@5f
    move-result v10

    #@60
    if-nez v10, :cond_2

    #@62
    .line 1438
    new-instance v10, Ljava/lang/StringBuilder;

    #@64
    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    #@67
    const-string/jumbo v11, "requestRouteToHostAddress on unsupported network: "

    #@6a
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6d
    move-result-object v10

    #@6e
    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@71
    move-result-object v10

    #@72
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@75
    move-result-object v10

    #@76
    invoke-static {v10}, Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V

    #@79
    .line 1442
    :goto_0
    return v12

    #@7a
    .line 1440
    :cond_2
    new-instance v10, Ljava/lang/StringBuilder;

    #@7c
    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    #@7f
    const-string/jumbo v11, "requestRouteToHostAddress on down network: "

    #@82
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@85
    move-result-object v10

    #@86
    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@89
    move-result-object v10

    #@8a
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@8d
    move-result-object v10

    #@8e
    invoke-static {v10}, Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V

    #@91
    goto :goto_0

    #@92
    .line 1446
    :cond_3
    monitor-enter v3

    #@93
    .line 1447
    :try_start_1
    iget-object v10, v3, Lcom/android/server/connectivity/NetworkAgentInfo;->networkInfo:Landroid/net/NetworkInfo;

    #@95
    invoke-virtual {v10}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@98
    move-result-object v5

    #@99
    .local v5, "netState":Landroid/net/NetworkInfo$DetailedState;
    monitor-exit v3

    #@9a
    .line 1450
    sget-object v10, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    #@9c
    if-eq v5, v10, :cond_4

    #@9e
    sget-object v10, Landroid/net/NetworkInfo$DetailedState;->CAPTIVE_PORTAL_CHECK:Landroid/net/NetworkInfo$DetailedState;

    #@a0
    if-eq v5, v10, :cond_4

    #@a2
    .line 1456
    return v12

    #@a3
    .line 1446
    .end local v5    # "netState":Landroid/net/NetworkInfo$DetailedState;
    :catchall_0
    move-exception v10

    #@a4
    monitor-exit v3

    #@a5
    throw v10

    #@a6
    .line 1459
    .restart local v5    # "netState":Landroid/net/NetworkInfo$DetailedState;
    :cond_4
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    #@a9
    move-result v7

    #@aa
    .line 1460
    .local v7, "uid":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    #@ad
    move-result-wide v8

    #@ae
    .line 1464
    .local v8, "token":J
    :try_start_2
    monitor-enter v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    #@af
    .line 1465
    :try_start_3
    iget-object v2, v3, Lcom/android/server/connectivity/NetworkAgentInfo;->linkProperties:Landroid/net/LinkProperties;

    #@b1
    .line 1466
    .local v2, "lp":Landroid/net/LinkProperties;
    iget-object v10, v3, Lcom/android/server/connectivity/NetworkAgentInfo;->network:Landroid/net/Network;

    #@b3
    iget v4, v10, Landroid/net/Network;->netId:I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    #@b5
    .local v4, "netId":I
    :try_start_4
    monitor-exit v3

    #@b6
    .line 1468
    invoke-direct {p0, v2, v0, v4, v7}, Lcom/android/server/ConnectivityService;->addLegacyRouteToHost(Landroid/net/LinkProperties;Ljava/net/InetAddress;II)Z

    #@b9
    move-result v6

    #@ba
    .line 1469
    .local v6, "ok":Z
    new-instance v10, Ljava/lang/StringBuilder;

    #@bc
    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    #@bf
    const-string/jumbo v11, "requestRouteToHostAddress ok="

    #@c2
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@c5
    move-result-object v10

    #@c6
    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@c9
    move-result-object v10

    #@ca
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@cd
    move-result-object v10

    #@ce
    invoke-static {v10}, Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    #@d1
    .line 1472
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@d4
    .line 1470
    return v6

    #@d5
    .line 1464
    .end local v2    # "lp":Landroid/net/LinkProperties;
    .end local v4    # "netId":I
    .end local v6    # "ok":Z
    :catchall_1
    move-exception v10

    #@d6
    :try_start_5
    monitor-exit v3

    #@d7
    throw v10
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    #@d8
    .line 1471
    :catchall_2
    move-exception v10

    #@d9
    .line 1472
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@dc
    .line 1471
    throw v10
.end method

.method protected reserveNetId()I
    .locals 5

    #@0
    .prologue
    const v4, 0xffff

    #@3
    .line 925
    iget-object v3, p0, Lcom/android/server/ConnectivityService;->mNetworkForNetId:Landroid/util/SparseArray;

    #@5
    monitor-enter v3

    #@6
    .line 926
    const/16 v0, 0x64

    #@8
    .local v0, "i":I
    :goto_0
    if-gt v0, v4, :cond_2

    #@a
    .line 927
    :try_start_0
    iget v1, p0, Lcom/android/server/ConnectivityService;->mNextNetId:I

    #@c
    .line 928
    .local v1, "netId":I
    iget v2, p0, Lcom/android/server/ConnectivityService;->mNextNetId:I

    #@e
    add-int/lit8 v2, v2, 0x1

    #@10
    iput v2, p0, Lcom/android/server/ConnectivityService;->mNextNetId:I

    #@12
    if-le v2, v4, :cond_0

    #@14
    const/16 v2, 0x64

    #@16
    iput v2, p0, Lcom/android/server/ConnectivityService;->mNextNetId:I

    #@18
    .line 930
    :cond_0
    iget-object v2, p0, Lcom/android/server/ConnectivityService;->mNetIdInUse:Landroid/util/SparseBooleanArray;

    #@1a
    invoke-virtual {v2, v1}, Landroid/util/SparseBooleanArray;->get(I)Z

    #@1d
    move-result v2

    #@1e
    if-nez v2, :cond_1

    #@20
    .line 931
    iget-object v2, p0, Lcom/android/server/ConnectivityService;->mNetIdInUse:Landroid/util/SparseBooleanArray;

    #@22
    const/4 v4, 0x1

    #@23
    invoke-virtual {v2, v1, v4}, Landroid/util/SparseBooleanArray;->put(IZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@26
    monitor-exit v3

    #@27
    .line 932
    return v1

    #@28
    .line 926
    :cond_1
    add-int/lit8 v0, v0, 0x1

    #@2a
    goto :goto_0

    #@2b
    .end local v1    # "netId":I
    :cond_2
    monitor-exit v3

    #@2c
    .line 936
    new-instance v2, Ljava/lang/IllegalStateException;

    #@2e
    const-string/jumbo v3, "No free netIds"

    #@31
    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@34
    throw v2

    #@35
    .line 925
    :catchall_0
    move-exception v2

    #@36
    monitor-exit v3

    #@37
    throw v2
.end method

.method public sendConnectedBroadcast(Landroid/net/NetworkInfo;)V
    .locals 1
    .param p1, "info"    # Landroid/net/NetworkInfo;

    #@0
    .prologue
    .line 1636
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->enforceConnectivityInternalPermission()V

    #@3
    .line 1637
    const-string/jumbo v0, "android.net.conn.CONNECTIVITY_CHANGE"

    #@6
    invoke-direct {p0, p1, v0}, Lcom/android/server/ConnectivityService;->sendGeneralBroadcast(Landroid/net/NetworkInfo;Ljava/lang/String;)V

    #@9
    .line 1635
    return-void
.end method

.method public setAcceptUnvalidated(Landroid/net/Network;ZZ)V
    .locals 5
    .param p1, "network"    # Landroid/net/Network;
    .param p2, "accept"    # Z
    .param p3, "always"    # Z

    #@0
    .prologue
    const/4 v0, 0x1

    #@1
    const/4 v1, 0x0

    #@2
    .line 2704
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->enforceConnectivityInternalPermission()V

    #@5
    .line 2705
    iget-object v3, p0, Lcom/android/server/ConnectivityService;->mHandler:Lcom/android/server/ConnectivityService$InternalHandler;

    #@7
    iget-object v4, p0, Lcom/android/server/ConnectivityService;->mHandler:Lcom/android/server/ConnectivityService$InternalHandler;

    #@9
    .line 2706
    if-eqz p2, :cond_0

    #@b
    move v2, v0

    #@c
    :goto_0
    if-eqz p3, :cond_1

    #@e
    .line 2705
    :goto_1
    const/16 v1, 0x1c

    #@10
    invoke-virtual {v4, v1, v2, v0, p1}, Lcom/android/server/ConnectivityService$InternalHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    #@13
    move-result-object v0

    #@14
    invoke-virtual {v3, v0}, Lcom/android/server/ConnectivityService$InternalHandler;->sendMessage(Landroid/os/Message;)Z

    #@17
    .line 2703
    return-void

    #@18
    :cond_0
    move v2, v1

    #@19
    .line 2706
    goto :goto_0

    #@1a
    :cond_1
    move v0, v1

    #@1b
    goto :goto_1
.end method

.method public setAirplaneMode(Z)V
    .locals 6
    .param p1, "enable"    # Z

    #@0
    .prologue
    .line 3883
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->enforceConnectivityInternalPermission()V

    #@3
    .line 3884
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    #@6
    move-result-wide v2

    #@7
    .line 3886
    .local v2, "ident":J
    :try_start_0
    iget-object v4, p0, Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;

    #@9
    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    #@c
    move-result-object v0

    #@d
    .line 3887
    .local v0, "cr":Landroid/content/ContentResolver;
    const-string/jumbo v5, "airplane_mode_on"

    #@10
    if-eqz p1, :cond_0

    #@12
    const/4 v4, 0x1

    #@13
    :goto_0
    invoke-static {v0, v5, v4}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    #@16
    .line 3888
    new-instance v1, Landroid/content/Intent;

    #@18
    const-string/jumbo v4, "android.intent.action.AIRPLANE_MODE"

    #@1b
    invoke-direct {v1, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    #@1e
    .line 3889
    .local v1, "intent":Landroid/content/Intent;
    const-string/jumbo v4, "state"

    #@21
    invoke-virtual {v1, v4, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    #@24
    .line 3890
    iget-object v4, p0, Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;

    #@26
    sget-object v5, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    #@28
    invoke-virtual {v4, v1, v5}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@2b
    .line 3892
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@2e
    .line 3882
    return-void

    #@2f
    .line 3887
    .end local v1    # "intent":Landroid/content/Intent;
    :cond_0
    const/4 v4, 0x0

    #@30
    goto :goto_0

    #@31
    .line 3891
    .end local v0    # "cr":Landroid/content/ContentResolver;
    :catchall_0
    move-exception v4

    #@32
    .line 3892
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@35
    .line 3891
    throw v4
.end method

.method public setAlwaysOnVpnPackage(ILjava/lang/String;Z)Z
    .locals 6
    .param p1, "userId"    # I
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "lockdown"    # Z

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    .line 3722
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->enforceConnectivityInternalPermission()V

    #@4
    .line 3723
    invoke-direct {p0, p1}, Lcom/android/server/ConnectivityService;->enforceCrossUserPermission(I)V

    #@7
    .line 3726
    invoke-static {}, Lcom/android/server/net/LockdownVpnTracker;->isEnabled()Z

    #@a
    move-result v1

    #@b
    if-eqz v1, :cond_0

    #@d
    .line 3727
    return v5

    #@e
    .line 3730
    :cond_0
    iget-object v2, p0, Lcom/android/server/ConnectivityService;->mVpns:Landroid/util/SparseArray;

    #@10
    monitor-enter v2

    #@11
    .line 3731
    :try_start_0
    iget-object v1, p0, Lcom/android/server/ConnectivityService;->mVpns:Landroid/util/SparseArray;

    #@13
    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    #@16
    move-result-object v0

    #@17
    check-cast v0, Lcom/android/server/connectivity/Vpn;

    #@19
    .line 3732
    .local v0, "vpn":Lcom/android/server/connectivity/Vpn;
    if-nez v0, :cond_1

    #@1b
    .line 3733
    sget-object v1, Lcom/android/server/ConnectivityService;->TAG:Ljava/lang/String;

    #@1d
    new-instance v3, Ljava/lang/StringBuilder;

    #@1f
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@22
    const-string/jumbo v4, "User "

    #@25
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@28
    move-result-object v3

    #@29
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@2c
    move-result-object v3

    #@2d
    const-string/jumbo v4, " has no Vpn configuration"

    #@30
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@33
    move-result-object v3

    #@34
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@37
    move-result-object v3

    #@38
    invoke-static {v1, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@3b
    monitor-exit v2

    #@3c
    .line 3734
    return v5

    #@3d
    .line 3736
    :cond_1
    :try_start_1
    invoke-virtual {v0, p2, p3}, Lcom/android/server/connectivity/Vpn;->setAlwaysOnPackage(Ljava/lang/String;Z)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@40
    move-result v1

    #@41
    if-nez v1, :cond_2

    #@43
    monitor-exit v2

    #@44
    .line 3737
    return v5

    #@45
    .line 3739
    :cond_2
    :try_start_2
    invoke-direct {p0, p1}, Lcom/android/server/ConnectivityService;->startAlwaysOnVpn(I)Z

    #@48
    move-result v1

    #@49
    if-nez v1, :cond_3

    #@4b
    .line 3740
    const/4 v1, 0x0

    #@4c
    const/4 v3, 0x0

    #@4d
    invoke-virtual {v0, v1, v3}, Lcom/android/server/connectivity/Vpn;->setAlwaysOnPackage(Ljava/lang/String;Z)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@50
    monitor-exit v2

    #@51
    .line 3741
    return v5

    #@52
    .line 3744
    :cond_3
    :try_start_3
    invoke-virtual {v0}, Lcom/android/server/connectivity/Vpn;->saveAlwaysOnPackage()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@55
    monitor-exit v2

    #@56
    .line 3746
    const/4 v1, 0x1

    #@57
    return v1

    #@58
    .line 3730
    .end local v0    # "vpn":Lcom/android/server/connectivity/Vpn;
    :catchall_0
    move-exception v1

    #@59
    monitor-exit v2

    #@5a
    throw v1
.end method

.method public setAvoidUnvalidated(Landroid/net/Network;)V
    .locals 3
    .param p1, "network"    # Landroid/net/Network;

    #@0
    .prologue
    .line 2711
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->enforceConnectivityInternalPermission()V

    #@3
    .line 2712
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mHandler:Lcom/android/server/ConnectivityService$InternalHandler;

    #@5
    iget-object v1, p0, Lcom/android/server/ConnectivityService;->mHandler:Lcom/android/server/ConnectivityService$InternalHandler;

    #@7
    const/16 v2, 0x23

    #@9
    invoke-virtual {v1, v2, p1}, Lcom/android/server/ConnectivityService$InternalHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    #@c
    move-result-object v1

    #@d
    invoke-virtual {v0, v1}, Lcom/android/server/ConnectivityService$InternalHandler;->sendMessage(Landroid/os/Message;)Z

    #@10
    .line 2710
    return-void
.end method

.method public setGlobalProxy(Landroid/net/ProxyInfo;)V
    .locals 10
    .param p1, "proxyProperties"    # Landroid/net/ProxyInfo;

    #@0
    .prologue
    .line 3244
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->enforceConnectivityInternalPermission()V

    #@3
    .line 3246
    iget-object v8, p0, Lcom/android/server/ConnectivityService;->mProxyLock:Ljava/lang/Object;

    #@5
    monitor-enter v8

    #@6
    .line 3247
    :try_start_0
    iget-object v5, p0, Lcom/android/server/ConnectivityService;->mGlobalProxy:Landroid/net/ProxyInfo;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    #@8
    if-ne p1, v5, :cond_0

    #@a
    monitor-exit v8

    #@b
    return-void

    #@c
    .line 3248
    :cond_0
    if-eqz p1, :cond_1

    #@e
    :try_start_1
    iget-object v5, p0, Lcom/android/server/ConnectivityService;->mGlobalProxy:Landroid/net/ProxyInfo;

    #@10
    invoke-virtual {p1, v5}, Landroid/net/ProxyInfo;->equals(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    #@13
    move-result v5

    #@14
    if-eqz v5, :cond_1

    #@16
    monitor-exit v8

    #@17
    return-void

    #@18
    .line 3249
    :cond_1
    :try_start_2
    iget-object v5, p0, Lcom/android/server/ConnectivityService;->mGlobalProxy:Landroid/net/ProxyInfo;

    #@1a
    if-eqz v5, :cond_2

    #@1c
    iget-object v5, p0, Lcom/android/server/ConnectivityService;->mGlobalProxy:Landroid/net/ProxyInfo;

    #@1e
    invoke-virtual {v5, p1}, Landroid/net/ProxyInfo;->equals(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    #@21
    move-result v5

    #@22
    if-eqz v5, :cond_2

    #@24
    monitor-exit v8

    #@25
    return-void

    #@26
    .line 3251
    :cond_2
    :try_start_3
    const-string/jumbo v1, ""

    #@29
    .line 3252
    .local v1, "host":Ljava/lang/String;
    const/4 v3, 0x0

    #@2a
    .line 3253
    .local v3, "port":I
    const-string/jumbo v0, ""

    #@2d
    .line 3254
    .local v0, "exclList":Ljava/lang/String;
    const-string/jumbo v2, ""

    #@30
    .line 3255
    .local v2, "pacFileUrl":Ljava/lang/String;
    if-eqz p1, :cond_3

    #@32
    invoke-virtual {p1}, Landroid/net/ProxyInfo;->getHost()Ljava/lang/String;

    #@35
    move-result-object v5

    #@36
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@39
    move-result v5

    #@3a
    if-eqz v5, :cond_6

    #@3c
    .line 3256
    sget-object v5, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    #@3e
    invoke-virtual {p1}, Landroid/net/ProxyInfo;->getPacFileUrl()Landroid/net/Uri;

    #@41
    move-result-object v9

    #@42
    invoke-virtual {v5, v9}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    #@45
    move-result v5

    #@46
    if-eqz v5, :cond_6

    #@48
    .line 3270
    :cond_3
    const/4 v5, 0x0

    #@49
    iput-object v5, p0, Lcom/android/server/ConnectivityService;->mGlobalProxy:Landroid/net/ProxyInfo;

    #@4b
    .line 3272
    :cond_4
    :goto_0
    iget-object v5, p0, Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;

    #@4d
    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    #@50
    move-result-object v4

    #@51
    .line 3273
    .local v4, "res":Landroid/content/ContentResolver;
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    #@54
    move-result-wide v6

    #@55
    .line 3275
    .local v6, "token":J
    :try_start_4
    const-string/jumbo v5, "global_http_proxy_host"

    #@58
    invoke-static {v4, v5, v1}, Landroid/provider/Settings$Global;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    #@5b
    .line 3276
    const-string/jumbo v5, "global_http_proxy_port"

    #@5e
    invoke-static {v4, v5, v3}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    #@61
    .line 3277
    const-string/jumbo v5, "global_http_proxy_exclusion_list"

    #@64
    invoke-static {v4, v5, v0}, Landroid/provider/Settings$Global;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    #@67
    .line 3279
    const-string/jumbo v5, "global_proxy_pac_url"

    #@6a
    invoke-static {v4, v5, v2}, Landroid/provider/Settings$Global;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    #@6d
    .line 3281
    :try_start_5
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@70
    .line 3284
    iget-object v5, p0, Lcom/android/server/ConnectivityService;->mGlobalProxy:Landroid/net/ProxyInfo;

    #@72
    if-nez v5, :cond_5

    #@74
    .line 3285
    iget-object p1, p0, Lcom/android/server/ConnectivityService;->mDefaultProxy:Landroid/net/ProxyInfo;

    #@76
    .line 3287
    :cond_5
    invoke-direct {p0, p1}, Lcom/android/server/ConnectivityService;->sendProxyBroadcast(Landroid/net/ProxyInfo;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    #@79
    monitor-exit v8

    #@7a
    .line 3243
    return-void

    #@7b
    .line 3257
    .end local v4    # "res":Landroid/content/ContentResolver;
    .end local v6    # "token":J
    :cond_6
    :try_start_6
    invoke-virtual {p1}, Landroid/net/ProxyInfo;->isValid()Z

    #@7e
    move-result v5

    #@7f
    if-nez v5, :cond_7

    #@81
    .line 3259
    new-instance v5, Ljava/lang/StringBuilder;

    #@83
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@86
    const-string/jumbo v9, "Invalid proxy properties, ignoring: "

    #@89
    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@8c
    move-result-object v5

    #@8d
    invoke-virtual {p1}, Landroid/net/ProxyInfo;->toString()Ljava/lang/String;

    #@90
    move-result-object v9

    #@91
    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@94
    move-result-object v5

    #@95
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@98
    move-result-object v5

    #@99
    invoke-static {v5}, Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    #@9c
    monitor-exit v8

    #@9d
    .line 3260
    return-void

    #@9e
    .line 3262
    :cond_7
    :try_start_7
    new-instance v5, Landroid/net/ProxyInfo;

    #@a0
    invoke-direct {v5, p1}, Landroid/net/ProxyInfo;-><init>(Landroid/net/ProxyInfo;)V

    #@a3
    iput-object v5, p0, Lcom/android/server/ConnectivityService;->mGlobalProxy:Landroid/net/ProxyInfo;

    #@a5
    .line 3263
    iget-object v5, p0, Lcom/android/server/ConnectivityService;->mGlobalProxy:Landroid/net/ProxyInfo;

    #@a7
    invoke-virtual {v5}, Landroid/net/ProxyInfo;->getHost()Ljava/lang/String;

    #@aa
    move-result-object v1

    #@ab
    .line 3264
    iget-object v5, p0, Lcom/android/server/ConnectivityService;->mGlobalProxy:Landroid/net/ProxyInfo;

    #@ad
    invoke-virtual {v5}, Landroid/net/ProxyInfo;->getPort()I

    #@b0
    move-result v3

    #@b1
    .line 3265
    iget-object v5, p0, Lcom/android/server/ConnectivityService;->mGlobalProxy:Landroid/net/ProxyInfo;

    #@b3
    invoke-virtual {v5}, Landroid/net/ProxyInfo;->getExclusionListAsString()Ljava/lang/String;

    #@b6
    move-result-object v0

    #@b7
    .line 3266
    sget-object v5, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    #@b9
    invoke-virtual {p1}, Landroid/net/ProxyInfo;->getPacFileUrl()Landroid/net/Uri;

    #@bc
    move-result-object v9

    #@bd
    invoke-virtual {v5, v9}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    #@c0
    move-result v5

    #@c1
    if-nez v5, :cond_4

    #@c3
    .line 3267
    invoke-virtual {p1}, Landroid/net/ProxyInfo;->getPacFileUrl()Landroid/net/Uri;

    #@c6
    move-result-object v5

    #@c7
    invoke-virtual {v5}, Landroid/net/Uri;->toString()Ljava/lang/String;

    #@ca
    move-result-object v2

    #@cb
    goto :goto_0

    #@cc
    .line 3280
    .restart local v4    # "res":Landroid/content/ContentResolver;
    .restart local v6    # "token":J
    :catchall_0
    move-exception v5

    #@cd
    .line 3281
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@d0
    .line 3280
    throw v5
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    #@d1
    .line 3246
    .end local v0    # "exclList":Ljava/lang/String;
    .end local v1    # "host":Ljava/lang/String;
    .end local v2    # "pacFileUrl":Ljava/lang/String;
    .end local v3    # "port":I
    .end local v4    # "res":Landroid/content/ContentResolver;
    .end local v6    # "token":J
    :catchall_1
    move-exception v5

    #@d2
    monitor-exit v8

    #@d3
    throw v5
.end method

.method public setProvisioningNotificationVisible(ZILjava/lang/String;)V
    .locals 5
    .param p1, "visible"    # Z
    .param p2, "networkType"    # I
    .param p3, "action"    # Ljava/lang/String;

    #@0
    .prologue
    .line 3870
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->enforceConnectivityInternalPermission()V

    #@3
    .line 3871
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    #@6
    move-result-wide v2

    #@7
    .line 3874
    .local v2, "ident":J
    add-int/lit8 v1, p2, 0x1

    #@9
    const/high16 v4, 0x10000

    #@b
    add-int v0, v4, v1

    #@d
    .line 3875
    .local v0, "id":I
    :try_start_0
    iget-object v1, p0, Lcom/android/server/ConnectivityService;->mNotifier:Lcom/android/server/connectivity/NetworkNotificationManager;

    #@f
    invoke-virtual {v1, p1, v0, p3}, Lcom/android/server/connectivity/NetworkNotificationManager;->setProvNotificationVisible(ZILjava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@12
    .line 3877
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@15
    .line 3869
    return-void

    #@16
    .line 3876
    :catchall_0
    move-exception v1

    #@17
    .line 3877
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@1a
    .line 3876
    throw v1
.end method

.method public setUnderlyingNetworksForVpn([Landroid/net/Network;)Z
    .locals 4
    .param p1, "networks"    # [Landroid/net/Network;

    #@0
    .prologue
    .line 5434
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->throwIfLockdownEnabled()V

    #@3
    .line 5435
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    #@6
    move-result v2

    #@7
    invoke-static {v2}, Landroid/os/UserHandle;->getUserId(I)I

    #@a
    move-result v1

    #@b
    .line 5437
    .local v1, "user":I
    iget-object v3, p0, Lcom/android/server/ConnectivityService;->mVpns:Landroid/util/SparseArray;

    #@d
    monitor-enter v3

    #@e
    .line 5438
    :try_start_0
    iget-object v2, p0, Lcom/android/server/ConnectivityService;->mVpns:Landroid/util/SparseArray;

    #@10
    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    #@13
    move-result-object v2

    #@14
    check-cast v2, Lcom/android/server/connectivity/Vpn;

    #@16
    invoke-virtual {v2, p1}, Lcom/android/server/connectivity/Vpn;->setUnderlyingNetworks([Landroid/net/Network;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@19
    move-result v0

    #@1a
    .local v0, "success":Z
    monitor-exit v3

    #@1b
    .line 5440
    if-eqz v0, :cond_0

    #@1d
    .line 5441
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->notifyIfacesChangedForNetworkStats()V

    #@20
    .line 5443
    :cond_0
    return v0

    #@21
    .line 5437
    .end local v0    # "success":Z
    :catchall_0
    move-exception v2

    #@22
    monitor-exit v3

    #@23
    throw v2
.end method

.method public setUsbTethering(Z)I
    .locals 1
    .param p1, "enable"    # Z

    #@0
    .prologue
    .line 3059
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;

    #@2
    invoke-static {v0}, Landroid/net/ConnectivityManager;->enforceTetherChangePermission(Landroid/content/Context;)V

    #@5
    .line 3060
    invoke-virtual {p0}, Lcom/android/server/ConnectivityService;->isTetheringSupported()Z

    #@8
    move-result v0

    #@9
    if-eqz v0, :cond_0

    #@b
    .line 3061
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mTethering:Lcom/android/server/connectivity/Tethering;

    #@d
    invoke-virtual {v0, p1}, Lcom/android/server/connectivity/Tethering;->setUsbTethering(Z)I

    #@10
    move-result v0

    #@11
    return v0

    #@12
    .line 3063
    :cond_0
    const/4 v0, 0x3

    #@13
    return v0
.end method

.method public setVpnPackageAuthorization(Ljava/lang/String;IZ)V
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .param p3, "authorized"    # Z

    #@0
    .prologue
    .line 3507
    invoke-direct {p0, p2}, Lcom/android/server/ConnectivityService;->enforceCrossUserPermission(I)V

    #@3
    .line 3509
    iget-object v2, p0, Lcom/android/server/ConnectivityService;->mVpns:Landroid/util/SparseArray;

    #@5
    monitor-enter v2

    #@6
    .line 3510
    :try_start_0
    iget-object v1, p0, Lcom/android/server/ConnectivityService;->mVpns:Landroid/util/SparseArray;

    #@8
    invoke-virtual {v1, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    #@b
    move-result-object v0

    #@c
    check-cast v0, Lcom/android/server/connectivity/Vpn;

    #@e
    .line 3511
    .local v0, "vpn":Lcom/android/server/connectivity/Vpn;
    if-eqz v0, :cond_0

    #@10
    .line 3512
    invoke-virtual {v0, p1, p3}, Lcom/android/server/connectivity/Vpn;->setPackageAuthorization(Ljava/lang/String;Z)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@13
    :cond_0
    monitor-exit v2

    #@14
    .line 3506
    return-void

    #@15
    .line 3509
    .end local v0    # "vpn":Lcom/android/server/connectivity/Vpn;
    :catchall_0
    move-exception v1

    #@16
    monitor-exit v2

    #@17
    throw v1
.end method

.method public startLegacyVpn(Lcom/android/internal/net/VpnProfile;)V
    .locals 5
    .param p1, "profile"    # Lcom/android/internal/net/VpnProfile;

    #@0
    .prologue
    .line 3539
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->throwIfLockdownEnabled()V

    #@3
    .line 3540
    invoke-virtual {p0}, Lcom/android/server/ConnectivityService;->getActiveLinkProperties()Landroid/net/LinkProperties;

    #@6
    move-result-object v0

    #@7
    .line 3541
    .local v0, "egress":Landroid/net/LinkProperties;
    if-nez v0, :cond_0

    #@9
    .line 3542
    new-instance v2, Ljava/lang/IllegalStateException;

    #@b
    const-string/jumbo v3, "Missing active network connection"

    #@e
    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@11
    throw v2

    #@12
    .line 3544
    :cond_0
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    #@15
    move-result v2

    #@16
    invoke-static {v2}, Landroid/os/UserHandle;->getUserId(I)I

    #@19
    move-result v1

    #@1a
    .line 3545
    .local v1, "user":I
    iget-object v3, p0, Lcom/android/server/ConnectivityService;->mVpns:Landroid/util/SparseArray;

    #@1c
    monitor-enter v3

    #@1d
    .line 3546
    :try_start_0
    iget-object v2, p0, Lcom/android/server/ConnectivityService;->mVpns:Landroid/util/SparseArray;

    #@1f
    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    #@22
    move-result-object v2

    #@23
    check-cast v2, Lcom/android/server/connectivity/Vpn;

    #@25
    iget-object v4, p0, Lcom/android/server/ConnectivityService;->mKeyStore:Landroid/security/KeyStore;

    #@27
    invoke-virtual {v2, p1, v4, v0}, Lcom/android/server/connectivity/Vpn;->startLegacyVpn(Lcom/android/internal/net/VpnProfile;Landroid/security/KeyStore;Landroid/net/LinkProperties;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@2a
    monitor-exit v3

    #@2b
    .line 3538
    return-void

    #@2c
    .line 3545
    :catchall_0
    move-exception v2

    #@2d
    monitor-exit v3

    #@2e
    throw v2
.end method

.method public startNattKeepalive(Landroid/net/Network;ILandroid/os/Messenger;Landroid/os/IBinder;Ljava/lang/String;ILjava/lang/String;)V
    .locals 9
    .param p1, "network"    # Landroid/net/Network;
    .param p2, "intervalSeconds"    # I
    .param p3, "messenger"    # Landroid/os/Messenger;
    .param p4, "binder"    # Landroid/os/IBinder;
    .param p5, "srcAddr"    # Ljava/lang/String;
    .param p6, "srcPort"    # I
    .param p7, "dstAddr"    # Ljava/lang/String;

    #@0
    .prologue
    .line 5454
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->enforceKeepalivePermission()V

    #@3
    .line 5455
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mKeepaliveTracker:Lcom/android/server/connectivity/KeepaliveTracker;

    #@5
    .line 5456
    invoke-direct {p0, p1}, Lcom/android/server/ConnectivityService;->getNetworkAgentInfoForNetwork(Landroid/net/Network;)Lcom/android/server/connectivity/NetworkAgentInfo;

    #@8
    move-result-object v1

    #@9
    .line 5458
    const/16 v8, 0x1194

    #@b
    move v2, p2

    #@c
    move-object v3, p3

    #@d
    move-object v4, p4

    #@e
    move-object v5, p5

    #@f
    move v6, p6

    #@10
    move-object/from16 v7, p7

    #@12
    .line 5455
    invoke-virtual/range {v0 .. v8}, Lcom/android/server/connectivity/KeepaliveTracker;->startNattKeepalive(Lcom/android/server/connectivity/NetworkAgentInfo;ILandroid/os/Messenger;Landroid/os/IBinder;Ljava/lang/String;ILjava/lang/String;I)V

    #@15
    .line 5453
    return-void
.end method

.method public startTethering(ILandroid/os/ResultReceiver;Z)V
    .locals 2
    .param p1, "type"    # I
    .param p2, "receiver"    # Landroid/os/ResultReceiver;
    .param p3, "showProvisioningUi"    # Z

    #@0
    .prologue
    .line 3113
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;

    #@2
    invoke-static {v0}, Landroid/net/ConnectivityManager;->enforceTetherChangePermission(Landroid/content/Context;)V

    #@5
    .line 3114
    invoke-virtual {p0}, Lcom/android/server/ConnectivityService;->isTetheringSupported()Z

    #@8
    move-result v0

    #@9
    if-nez v0, :cond_0

    #@b
    .line 3115
    const/4 v0, 0x3

    #@c
    const/4 v1, 0x0

    #@d
    invoke-virtual {p2, v0, v1}, Landroid/os/ResultReceiver;->send(ILandroid/os/Bundle;)V

    #@10
    .line 3116
    return-void

    #@11
    .line 3118
    :cond_0
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mTethering:Lcom/android/server/connectivity/Tethering;

    #@13
    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/connectivity/Tethering;->startTethering(ILandroid/os/ResultReceiver;Z)V

    #@16
    .line 3112
    return-void
.end method

.method public stopKeepalive(Landroid/net/Network;I)V
    .locals 4
    .param p1, "network"    # Landroid/net/Network;
    .param p2, "slot"    # I

    #@0
    .prologue
    .line 5463
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mHandler:Lcom/android/server/ConnectivityService$InternalHandler;

    #@2
    iget-object v1, p0, Lcom/android/server/ConnectivityService;->mHandler:Lcom/android/server/ConnectivityService$InternalHandler;

    #@4
    .line 5464
    const v2, 0x8100c

    #@7
    const/4 v3, 0x0

    #@8
    .line 5463
    invoke-virtual {v1, v2, p2, v3, p1}, Lcom/android/server/ConnectivityService$InternalHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    #@b
    move-result-object v1

    #@c
    invoke-virtual {v0, v1}, Lcom/android/server/ConnectivityService$InternalHandler;->sendMessage(Landroid/os/Message;)Z

    #@f
    .line 5462
    return-void
.end method

.method public stopTethering(I)V
    .locals 1
    .param p1, "type"    # I

    #@0
    .prologue
    .line 3123
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;

    #@2
    invoke-static {v0}, Landroid/net/ConnectivityManager;->enforceTetherChangePermission(Landroid/content/Context;)V

    #@5
    .line 3124
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mTethering:Lcom/android/server/connectivity/Tethering;

    #@7
    invoke-virtual {v0, p1}, Lcom/android/server/connectivity/Tethering;->stopTethering(I)V

    #@a
    .line 3122
    return-void
.end method

.method systemReady()V
    .locals 3

    #@0
    .prologue
    .line 1726
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->loadGlobalProxy()V

    #@3
    .line 1728
    monitor-enter p0

    #@4
    .line 1729
    const/4 v0, 0x1

    #@5
    :try_start_0
    iput-boolean v0, p0, Lcom/android/server/ConnectivityService;->mSystemReady:Z

    #@7
    .line 1730
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mInitialBroadcast:Landroid/content/Intent;

    #@9
    if-eqz v0, :cond_0

    #@b
    .line 1731
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;

    #@d
    iget-object v1, p0, Lcom/android/server/ConnectivityService;->mInitialBroadcast:Landroid/content/Intent;

    #@f
    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    #@11
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->sendStickyBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    #@14
    .line 1732
    const/4 v0, 0x0

    #@15
    iput-object v0, p0, Lcom/android/server/ConnectivityService;->mInitialBroadcast:Landroid/content/Intent;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@17
    :cond_0
    monitor-exit p0

    #@18
    .line 1736
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mHandler:Lcom/android/server/ConnectivityService$InternalHandler;

    #@1a
    iget-object v1, p0, Lcom/android/server/ConnectivityService;->mHandler:Lcom/android/server/ConnectivityService$InternalHandler;

    #@1c
    const/16 v2, 0x9

    #@1e
    invoke-virtual {v1, v2}, Lcom/android/server/ConnectivityService$InternalHandler;->obtainMessage(I)Landroid/os/Message;

    #@21
    move-result-object v1

    #@22
    invoke-virtual {v0, v1}, Lcom/android/server/ConnectivityService$InternalHandler;->sendMessage(Landroid/os/Message;)Z

    #@25
    .line 1740
    invoke-virtual {p0}, Lcom/android/server/ConnectivityService;->updateLockdownVpn()Z

    #@28
    .line 1743
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mHandler:Lcom/android/server/ConnectivityService$InternalHandler;

    #@2a
    iget-object v1, p0, Lcom/android/server/ConnectivityService;->mHandler:Lcom/android/server/ConnectivityService$InternalHandler;

    #@2c
    const/16 v2, 0x1e

    #@2e
    invoke-virtual {v1, v2}, Lcom/android/server/ConnectivityService$InternalHandler;->obtainMessage(I)Landroid/os/Message;

    #@31
    move-result-object v1

    #@32
    invoke-virtual {v0, v1}, Lcom/android/server/ConnectivityService$InternalHandler;->sendMessage(Landroid/os/Message;)Z

    #@35
    .line 1745
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mHandler:Lcom/android/server/ConnectivityService$InternalHandler;

    #@37
    iget-object v1, p0, Lcom/android/server/ConnectivityService;->mHandler:Lcom/android/server/ConnectivityService$InternalHandler;

    #@39
    const/16 v2, 0x19

    #@3b
    invoke-virtual {v1, v2}, Lcom/android/server/ConnectivityService$InternalHandler;->obtainMessage(I)Landroid/os/Message;

    #@3e
    move-result-object v1

    #@3f
    invoke-virtual {v0, v1}, Lcom/android/server/ConnectivityService$InternalHandler;->sendMessage(Landroid/os/Message;)Z

    #@42
    .line 1747
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mPermissionMonitor:Lcom/android/server/connectivity/PermissionMonitor;

    #@44
    invoke-virtual {v0}, Lcom/android/server/connectivity/PermissionMonitor;->startMonitoring()V

    #@47
    .line 1725
    return-void

    #@48
    .line 1728
    :catchall_0
    move-exception v0

    #@49
    monitor-exit p0

    #@4a
    throw v0
.end method

.method public tether(Ljava/lang/String;)I
    .locals 2
    .param p1, "iface"    # Ljava/lang/String;

    #@0
    .prologue
    .line 2992
    iget-object v1, p0, Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;

    #@2
    invoke-static {v1}, Landroid/net/ConnectivityManager;->enforceTetherChangePermission(Landroid/content/Context;)V

    #@5
    .line 2993
    invoke-virtual {p0}, Lcom/android/server/ConnectivityService;->isTetheringSupported()Z

    #@8
    move-result v1

    #@9
    if-eqz v1, :cond_0

    #@b
    .line 2994
    iget-object v1, p0, Lcom/android/server/ConnectivityService;->mTethering:Lcom/android/server/connectivity/Tethering;

    #@d
    invoke-virtual {v1, p1}, Lcom/android/server/connectivity/Tethering;->tether(Ljava/lang/String;)I

    #@10
    move-result v0

    #@11
    .line 2995
    .local v0, "status":I
    return v0

    #@12
    .line 2997
    .end local v0    # "status":I
    :cond_0
    const/4 v1, 0x3

    #@13
    return v1
.end method

.method public unregisterNetworkFactory(Landroid/os/Messenger;)V
    .locals 3
    .param p1, "messenger"    # Landroid/os/Messenger;

    #@0
    .prologue
    .line 4351
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->enforceConnectivityInternalPermission()V

    #@3
    .line 4352
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mHandler:Lcom/android/server/ConnectivityService$InternalHandler;

    #@5
    iget-object v1, p0, Lcom/android/server/ConnectivityService;->mHandler:Lcom/android/server/ConnectivityService$InternalHandler;

    #@7
    const/16 v2, 0x17

    #@9
    invoke-virtual {v1, v2, p1}, Lcom/android/server/ConnectivityService$InternalHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    #@c
    move-result-object v1

    #@d
    invoke-virtual {v0, v1}, Lcom/android/server/ConnectivityService$InternalHandler;->sendMessage(Landroid/os/Message;)Z

    #@10
    .line 4350
    return-void
.end method

.method public untether(Ljava/lang/String;)I
    .locals 2
    .param p1, "iface"    # Ljava/lang/String;

    #@0
    .prologue
    .line 3004
    iget-object v1, p0, Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;

    #@2
    invoke-static {v1}, Landroid/net/ConnectivityManager;->enforceTetherChangePermission(Landroid/content/Context;)V

    #@5
    .line 3006
    invoke-virtual {p0}, Lcom/android/server/ConnectivityService;->isTetheringSupported()Z

    #@8
    move-result v1

    #@9
    if-eqz v1, :cond_0

    #@b
    .line 3007
    iget-object v1, p0, Lcom/android/server/ConnectivityService;->mTethering:Lcom/android/server/connectivity/Tethering;

    #@d
    invoke-virtual {v1, p1}, Lcom/android/server/connectivity/Tethering;->untether(Ljava/lang/String;)I

    #@10
    move-result v0

    #@11
    .line 3008
    .local v0, "status":I
    return v0

    #@12
    .line 3010
    .end local v0    # "status":I
    :cond_0
    const/4 v1, 0x3

    #@13
    return v1
.end method

.method public updateLockdownVpn()Z
    .locals 11

    #@0
    .prologue
    const/4 v10, 0x1

    #@1
    const/4 v9, 0x0

    #@2
    const/4 v3, 0x0

    #@3
    .line 3635
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    #@6
    move-result v0

    #@7
    const/16 v1, 0x3e8

    #@9
    if-eq v0, v1, :cond_0

    #@b
    .line 3636
    sget-object v0, Lcom/android/server/ConnectivityService;->TAG:Ljava/lang/String;

    #@d
    const-string/jumbo v1, "Lockdown VPN only available to AID_SYSTEM"

    #@10
    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@13
    .line 3637
    return v9

    #@14
    .line 3641
    :cond_0
    invoke-static {}, Lcom/android/server/net/LockdownVpnTracker;->isEnabled()Z

    #@17
    move-result v0

    #@18
    iput-boolean v0, p0, Lcom/android/server/ConnectivityService;->mLockdownEnabled:Z

    #@1a
    .line 3642
    iget-boolean v0, p0, Lcom/android/server/ConnectivityService;->mLockdownEnabled:Z

    #@1c
    if-eqz v0, :cond_3

    #@1e
    .line 3643
    new-instance v6, Ljava/lang/String;

    #@20
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mKeyStore:Landroid/security/KeyStore;

    #@22
    const-string/jumbo v1, "LOCKDOWN_VPN"

    #@25
    invoke-virtual {v0, v1}, Landroid/security/KeyStore;->get(Ljava/lang/String;)[B

    #@28
    move-result-object v0

    #@29
    invoke-direct {v6, v0}, Ljava/lang/String;-><init>([B)V

    #@2c
    .line 3645
    .local v6, "profileName":Ljava/lang/String;
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mKeyStore:Landroid/security/KeyStore;

    #@2e
    new-instance v1, Ljava/lang/StringBuilder;

    #@30
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@33
    const-string/jumbo v2, "VPN_"

    #@36
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@39
    move-result-object v1

    #@3a
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3d
    move-result-object v1

    #@3e
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@41
    move-result-object v1

    #@42
    invoke-virtual {v0, v1}, Landroid/security/KeyStore;->get(Ljava/lang/String;)[B

    #@45
    move-result-object v0

    #@46
    .line 3644
    invoke-static {v6, v0}, Lcom/android/internal/net/VpnProfile;->decode(Ljava/lang/String;[B)Lcom/android/internal/net/VpnProfile;

    #@49
    move-result-object v5

    #@4a
    .line 3646
    .local v5, "profile":Lcom/android/internal/net/VpnProfile;
    if-nez v5, :cond_1

    #@4c
    .line 3647
    sget-object v0, Lcom/android/server/ConnectivityService;->TAG:Ljava/lang/String;

    #@4e
    new-instance v1, Ljava/lang/StringBuilder;

    #@50
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@53
    const-string/jumbo v2, "Lockdown VPN configured invalid profile "

    #@56
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@59
    move-result-object v1

    #@5a
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5d
    move-result-object v1

    #@5e
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@61
    move-result-object v1

    #@62
    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@65
    .line 3648
    invoke-direct {p0, v3}, Lcom/android/server/ConnectivityService;->setLockdownTracker(Lcom/android/server/net/LockdownVpnTracker;)V

    #@68
    .line 3649
    return v10

    #@69
    .line 3651
    :cond_1
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    #@6c
    move-result v0

    #@6d
    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    #@70
    move-result v7

    #@71
    .line 3652
    .local v7, "user":I
    iget-object v8, p0, Lcom/android/server/ConnectivityService;->mVpns:Landroid/util/SparseArray;

    #@73
    monitor-enter v8

    #@74
    .line 3653
    :try_start_0
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mVpns:Landroid/util/SparseArray;

    #@76
    invoke-virtual {v0, v7}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    #@79
    move-result-object v4

    #@7a
    check-cast v4, Lcom/android/server/connectivity/Vpn;

    #@7c
    .line 3654
    .local v4, "vpn":Lcom/android/server/connectivity/Vpn;
    if-nez v4, :cond_2

    #@7e
    .line 3655
    sget-object v0, Lcom/android/server/ConnectivityService;->TAG:Ljava/lang/String;

    #@80
    new-instance v1, Ljava/lang/StringBuilder;

    #@82
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@85
    const-string/jumbo v2, "VPN for user "

    #@88
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@8b
    move-result-object v1

    #@8c
    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@8f
    move-result-object v1

    #@90
    const-string/jumbo v2, " not ready yet. Skipping lockdown"

    #@93
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@96
    move-result-object v1

    #@97
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@9a
    move-result-object v1

    #@9b
    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@9e
    monitor-exit v8

    #@9f
    .line 3656
    return v9

    #@a0
    .line 3658
    :cond_2
    :try_start_1
    new-instance v0, Lcom/android/server/net/LockdownVpnTracker;

    #@a2
    iget-object v1, p0, Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;

    #@a4
    iget-object v2, p0, Lcom/android/server/ConnectivityService;->mNetd:Landroid/os/INetworkManagementService;

    #@a6
    move-object v3, p0

    #@a7
    invoke-direct/range {v0 .. v5}, Lcom/android/server/net/LockdownVpnTracker;-><init>(Landroid/content/Context;Landroid/os/INetworkManagementService;Lcom/android/server/ConnectivityService;Lcom/android/server/connectivity/Vpn;Lcom/android/internal/net/VpnProfile;)V

    #@aa
    invoke-direct {p0, v0}, Lcom/android/server/ConnectivityService;->setLockdownTracker(Lcom/android/server/net/LockdownVpnTracker;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@ad
    monitor-exit v8

    #@ae
    .line 3664
    .end local v4    # "vpn":Lcom/android/server/connectivity/Vpn;
    .end local v5    # "profile":Lcom/android/internal/net/VpnProfile;
    .end local v6    # "profileName":Ljava/lang/String;
    .end local v7    # "user":I
    :goto_0
    return v10

    #@af
    .line 3652
    .restart local v5    # "profile":Lcom/android/internal/net/VpnProfile;
    .restart local v6    # "profileName":Ljava/lang/String;
    .restart local v7    # "user":I
    :catchall_0
    move-exception v0

    #@b0
    monitor-exit v8

    #@b1
    throw v0

    #@b2
    .line 3661
    .end local v5    # "profile":Lcom/android/internal/net/VpnProfile;
    .end local v6    # "profileName":Ljava/lang/String;
    .end local v7    # "user":I
    :cond_3
    invoke-direct {p0, v3}, Lcom/android/server/ConnectivityService;->setLockdownTracker(Lcom/android/server/net/LockdownVpnTracker;)V

    #@b5
    goto :goto_0
.end method

.method updateMobileDataAlwaysOn()V
    .locals 2

    #@0
    .prologue
    .line 888
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mHandler:Lcom/android/server/ConnectivityService$InternalHandler;

    #@2
    const/16 v1, 0x1e

    #@4
    invoke-virtual {v0, v1}, Lcom/android/server/ConnectivityService$InternalHandler;->sendEmptyMessage(I)Z

    #@7
    .line 887
    return-void
.end method
