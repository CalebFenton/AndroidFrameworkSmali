.class public Lcom/android/server/ConnectivityService;
.super Landroid/net/IConnectivityManager$Stub;
.source "ConnectivityService.java"

# interfaces
.implements Landroid/app/PendingIntent$OnFinished;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/ConnectivityService$ReapUnvalidatedNetworks;,
        Lcom/android/server/ConnectivityService$LegacyTypeTracker;,
        Lcom/android/server/ConnectivityService$NetworkStateTrackerHandler;,
        Lcom/android/server/ConnectivityService$InternalHandler;,
        Lcom/android/server/ConnectivityService$SettingsObserver;,
        Lcom/android/server/ConnectivityService$NotificationType;,
        Lcom/android/server/ConnectivityService$NetworkFactoryInfo;,
        Lcom/android/server/ConnectivityService$NetworkRequestInfo;,
        Lcom/android/server/ConnectivityService$1;,
        Lcom/android/server/ConnectivityService$2;,
        Lcom/android/server/ConnectivityService$3;,
        Lcom/android/server/ConnectivityService$4;
    }
.end annotation


# static fields
.field private static final ATTR_MCC:Ljava/lang/String; = "mcc"

.field private static final ATTR_MNC:Ljava/lang/String; = "mnc"

.field private static final DBG:Z = true

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

.field private static final EVENT_SEND_STICKY_BROADCAST_INTENT:I = 0xb

.field private static final EVENT_SET_ACCEPT_UNVALIDATED:I = 0x1c

.field private static final EVENT_SYSTEM_READY:I = 0x19

.field private static final EVENT_TIMEOUT_NETWORK_REQUEST:I = 0x14

.field private static final EVENT_UNREGISTER_NETWORK_FACTORY:I = 0x17

.field private static final INET_CONDITION_LOG_MAX_SIZE:I = 0xf

.field private static final LOGD_RULES:Z = false

.field private static final MAX_NETWORK_REQUEST_LOGS:I = 0x14

.field private static final MAX_NET_ID:I = 0xffff

.field private static final MAX_VALIDATION_LOGS:I = 0xa

.field private static final MIN_NET_ID:I = 0x64

.field private static final NETWORK_RESTORE_DELAY_PROP_NAME:Ljava/lang/String; = "android.telephony.apn-restore"

.field private static final NOTIFICATION_ID:Ljava/lang/String; = "CaptivePortal.Notification"

.field private static final PROMPT_UNVALIDATED_DELAY_MS:I = 0x1f40

.field private static final PROVISIONING_URL_PATH:Ljava/lang/String; = "/data/misc/radio/provisioning_urls.xml"

.field private static final RESTORE_DEFAULT_NETWORK_DELAY:I = 0xea60

.field private static final TAG:Ljava/lang/String; = "ConnectivityService"

.field private static final TAG_PROVISIONING_URL:Ljava/lang/String; = "provisioningUrl"

.field private static final TAG_PROVISIONING_URLS:Ljava/lang/String; = "provisioningUrls"

.field private static final VDBG:Z

.field private static sServiceInstance:Lcom/android/server/ConnectivityService;


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mCurrentTcpBufferSizes:Ljava/lang/String;

.field private mDataActivityObserver:Landroid/net/INetworkManagementEventObserver;

.field private mDataConnectionStats:Lcom/android/server/connectivity/DataConnectionStats;

.field private mDefaultDns:Ljava/net/InetAddress;

.field private mDefaultInetConditionPublished:I

.field private final mDefaultMobileDataRequest:Landroid/net/NetworkRequest;

.field private volatile mDefaultProxy:Landroid/net/ProxyInfo;

.field private mDefaultProxyDisabled:Z

.field private final mDefaultRequest:Landroid/net/NetworkRequest;

.field private mGlobalProxy:Landroid/net/ProxyInfo;

.field private final mHandler:Lcom/android/server/ConnectivityService$InternalHandler;

.field private mInetLog:Ljava/util/ArrayList;

.field private mInitialBroadcast:Landroid/content/Intent;

.field private mKeyStore:Landroid/security/KeyStore;

.field private mLegacyTypeTracker:Lcom/android/server/ConnectivityService$LegacyTypeTracker;

.field private mLockdownEnabled:Z

.field private mLockdownTracker:Lcom/android/server/net/LockdownVpnTracker;

.field private mMeteredIfaces:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

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

.field private mRulesLock:Ljava/lang/Object;

.field private final mSettingsObserver:Lcom/android/server/ConnectivityService$SettingsObserver;

.field private mStatsService:Landroid/net/INetworkStatsService;

.field private mSystemReady:Z

.field mTelephonyManager:Landroid/telephony/TelephonyManager;

.field private mTestMode:Z

.field private mTethering:Lcom/android/server/connectivity/Tethering;

.field private final mTrackerHandler:Lcom/android/server/ConnectivityService$NetworkStateTrackerHandler;

.field private mUidRules:Landroid/util/SparseIntArray;

.field private mUserIntentReceiver:Landroid/content/BroadcastReceiver;

.field private mUserManager:Landroid/os/UserManager;

.field private mUserPresentReceiver:Landroid/content/BroadcastReceiver;

.field private final mValidationLogs:Ljava/util/ArrayDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayDeque",
            "<",
            "Landroid/util/Pair",
            "<",
            "Landroid/net/Network;",
            "Landroid/util/LocalLog$ReadOnlyLocalLog;",
            ">;>;"
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
.method static synthetic -get0(Lcom/android/server/ConnectivityService;)Landroid/content/Context;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;

    #@2
    return-object v0
.end method

.method static synthetic -get1(Lcom/android/server/ConnectivityService;)Ljava/util/HashSet;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mMeteredIfaces:Ljava/util/HashSet;

    #@2
    return-object v0
.end method

.method static synthetic -get2(Lcom/android/server/ConnectivityService;)Landroid/os/PowerManager$WakeLock;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mNetTransitionWakeLock:Landroid/os/PowerManager$WakeLock;

    #@2
    return-object v0
.end method

.method static synthetic -get3(Lcom/android/server/ConnectivityService;)Ljava/lang/String;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mNetTransitionWakeLockCausedBy:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method static synthetic -get4(Lcom/android/server/ConnectivityService;)I
    .locals 1

    #@0
    iget v0, p0, Lcom/android/server/ConnectivityService;->mNetTransitionWakeLockSerialNumber:I

    #@2
    return v0
.end method

.method static synthetic -get5(Lcom/android/server/ConnectivityService;)Landroid/os/INetworkManagementService;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mNetd:Landroid/os/INetworkManagementService;

    #@2
    return-object v0
.end method

.method static synthetic -get6(Lcom/android/server/ConnectivityService;)Ljava/util/HashMap;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mNetworkAgentInfos:Ljava/util/HashMap;

    #@2
    return-object v0
.end method

.method static synthetic -get7(Lcom/android/server/ConnectivityService;)Landroid/util/SparseArray;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mNetworkForNetId:Landroid/util/SparseArray;

    #@2
    return-object v0
.end method

.method static synthetic -get8(Lcom/android/server/ConnectivityService;)Ljava/lang/Object;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mRulesLock:Ljava/lang/Object;

    #@2
    return-object v0
.end method

.method static synthetic -get9(Lcom/android/server/ConnectivityService;)Landroid/util/SparseIntArray;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mUidRules:Landroid/util/SparseIntArray;

    #@2
    return-object v0
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

.method static synthetic -wrap1(Lcom/android/server/ConnectivityService;Lcom/android/server/connectivity/NetworkAgentInfo;Ljava/lang/String;)Z
    .locals 1
    .param p1, "nai"    # Lcom/android/server/connectivity/NetworkAgentInfo;
    .param p2, "msg"    # Ljava/lang/String;

    #@0
    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/server/ConnectivityService;->isLiveNetworkAgent(Lcom/android/server/connectivity/NetworkAgentInfo;Ljava/lang/String;)Z

    #@3
    move-result v0

    #@4
    return v0
.end method

.method static synthetic -wrap10(Lcom/android/server/ConnectivityService;Lcom/android/server/ConnectivityService$NetworkFactoryInfo;)V
    .locals 0
    .param p1, "nfi"    # Lcom/android/server/ConnectivityService$NetworkFactoryInfo;

    #@0
    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/ConnectivityService;->handleRegisterNetworkFactory(Lcom/android/server/ConnectivityService$NetworkFactoryInfo;)V

    #@3
    return-void
.end method

.method static synthetic -wrap11(Lcom/android/server/ConnectivityService;Landroid/os/Message;)V
    .locals 0
    .param p1, "msg"    # Landroid/os/Message;

    #@0
    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/ConnectivityService;->handleRegisterNetworkRequestWithIntent(Landroid/os/Message;)V

    #@3
    return-void
.end method

.method static synthetic -wrap12(Lcom/android/server/ConnectivityService;Lcom/android/server/ConnectivityService$NetworkRequestInfo;)V
    .locals 0
    .param p1, "nri"    # Lcom/android/server/ConnectivityService$NetworkRequestInfo;

    #@0
    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/ConnectivityService;->handleRegisterNetworkRequest(Lcom/android/server/ConnectivityService$NetworkRequestInfo;)V

    #@3
    return-void
.end method

.method static synthetic -wrap13(Lcom/android/server/ConnectivityService;Landroid/app/PendingIntent;I)V
    .locals 0
    .param p1, "pendingIntent"    # Landroid/app/PendingIntent;
    .param p2, "callingUid"    # I

    #@0
    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/server/ConnectivityService;->handleReleaseNetworkRequestWithIntent(Landroid/app/PendingIntent;I)V

    #@3
    return-void
.end method

.method static synthetic -wrap14(Lcom/android/server/ConnectivityService;Landroid/net/NetworkRequest;I)V
    .locals 0
    .param p1, "request"    # Landroid/net/NetworkRequest;
    .param p2, "callingUid"    # I

    #@0
    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/server/ConnectivityService;->handleReleaseNetworkRequest(Landroid/net/NetworkRequest;I)V

    #@3
    return-void
.end method

.method static synthetic -wrap15(Lcom/android/server/ConnectivityService;Landroid/net/Network;ZZ)V
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

.method static synthetic -wrap16(Lcom/android/server/ConnectivityService;Landroid/os/Messenger;)V
    .locals 0
    .param p1, "messenger"    # Landroid/os/Messenger;

    #@0
    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/ConnectivityService;->handleUnregisterNetworkFactory(Landroid/os/Messenger;)V

    #@3
    return-void
.end method

.method static synthetic -wrap17(Ljava/lang/String;)V
    .locals 0
    .param p0, "s"    # Ljava/lang/String;

    #@0
    .prologue
    invoke-static {p0}, Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V

    #@3
    return-void
.end method

.method static synthetic -wrap18(Ljava/lang/String;)V
    .locals 0
    .param p0, "s"    # Ljava/lang/String;

    #@0
    .prologue
    invoke-static {p0}, Lcom/android/server/ConnectivityService;->loge(Ljava/lang/String;)V

    #@3
    return-void
.end method

.method static synthetic -wrap19(Lcom/android/server/ConnectivityService;I)V
    .locals 0
    .param p1, "userId"    # I

    #@0
    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/ConnectivityService;->onUserStart(I)V

    #@3
    return-void
.end method

.method static synthetic -wrap2(Lcom/android/server/ConnectivityService;Landroid/net/ProxyInfo;)V
    .locals 0
    .param p1, "proxy"    # Landroid/net/ProxyInfo;

    #@0
    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/ConnectivityService;->handleApplyDefaultProxy(Landroid/net/ProxyInfo;)V

    #@3
    return-void
.end method

.method static synthetic -wrap20(Lcom/android/server/ConnectivityService;I)V
    .locals 0
    .param p1, "userId"    # I

    #@0
    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/ConnectivityService;->onUserStop(I)V

    #@3
    return-void
.end method

.method static synthetic -wrap21(Lcom/android/server/ConnectivityService;IZJ)V
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

.method static synthetic -wrap22(Lcom/android/server/ConnectivityService;Lcom/android/server/connectivity/NetworkAgentInfo;Landroid/net/NetworkInfo$DetailedState;I)V
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

.method static synthetic -wrap23(Lcom/android/server/ConnectivityService;Landroid/content/Intent;)V
    .locals 0
    .param p1, "intent"    # Landroid/content/Intent;

    #@0
    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/ConnectivityService;->sendStickyBroadcast(Landroid/content/Intent;)V

    #@3
    return-void
.end method

.method static synthetic -wrap24(Lcom/android/server/ConnectivityService;Lcom/android/server/connectivity/NetworkAgentInfo;)V
    .locals 0
    .param p1, "nai"    # Lcom/android/server/connectivity/NetworkAgentInfo;

    #@0
    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/ConnectivityService;->sendUpdatedScoreToFactories(Lcom/android/server/connectivity/NetworkAgentInfo;)V

    #@3
    return-void
.end method

.method static synthetic -wrap25(Lcom/android/server/ConnectivityService;ZILcom/android/server/ConnectivityService$NotificationType;ILjava/lang/String;Landroid/app/PendingIntent;Z)V
    .locals 0
    .param p1, "visible"    # Z
    .param p2, "id"    # I
    .param p3, "notifyType"    # Lcom/android/server/ConnectivityService$NotificationType;
    .param p4, "networkType"    # I
    .param p5, "extraInfo"    # Ljava/lang/String;
    .param p6, "intent"    # Landroid/app/PendingIntent;
    .param p7, "highPriority"    # Z

    #@0
    .prologue
    invoke-direct/range {p0 .. p7}, Lcom/android/server/ConnectivityService;->setProvNotificationVisibleIntent(ZILcom/android/server/ConnectivityService$NotificationType;ILjava/lang/String;Landroid/app/PendingIntent;Z)V

    #@3
    return-void
.end method

.method static synthetic -wrap26(Lcom/android/server/ConnectivityService;Lcom/android/server/connectivity/NetworkAgentInfo;Landroid/net/NetworkCapabilities;)V
    .locals 0
    .param p1, "nai"    # Lcom/android/server/connectivity/NetworkAgentInfo;
    .param p2, "networkCapabilities"    # Landroid/net/NetworkCapabilities;

    #@0
    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/server/ConnectivityService;->updateCapabilities(Lcom/android/server/connectivity/NetworkAgentInfo;Landroid/net/NetworkCapabilities;)V

    #@3
    return-void
.end method

.method static synthetic -wrap27(Lcom/android/server/ConnectivityService;Lcom/android/server/connectivity/NetworkAgentInfo;)V
    .locals 0
    .param p1, "nai"    # Lcom/android/server/connectivity/NetworkAgentInfo;

    #@0
    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/ConnectivityService;->updateInetCondition(Lcom/android/server/connectivity/NetworkAgentInfo;)V

    #@3
    return-void
.end method

.method static synthetic -wrap28(Lcom/android/server/ConnectivityService;Lcom/android/server/connectivity/NetworkAgentInfo;Landroid/net/LinkProperties;)V
    .locals 0
    .param p1, "networkAgent"    # Lcom/android/server/connectivity/NetworkAgentInfo;
    .param p2, "oldLp"    # Landroid/net/LinkProperties;

    #@0
    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/server/ConnectivityService;->updateLinkProperties(Lcom/android/server/connectivity/NetworkAgentInfo;Landroid/net/LinkProperties;)V

    #@3
    return-void
.end method

.method static synthetic -wrap29(Lcom/android/server/ConnectivityService;Lcom/android/server/connectivity/NetworkAgentInfo;Landroid/net/NetworkInfo;)V
    .locals 0
    .param p1, "networkAgent"    # Lcom/android/server/connectivity/NetworkAgentInfo;
    .param p2, "newInfo"    # Landroid/net/NetworkInfo;

    #@0
    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/server/ConnectivityService;->updateNetworkInfo(Lcom/android/server/connectivity/NetworkAgentInfo;Landroid/net/NetworkInfo;)V

    #@3
    return-void
.end method

.method static synthetic -wrap3(Lcom/android/server/ConnectivityService;Landroid/os/Message;)V
    .locals 0
    .param p1, "msg"    # Landroid/os/Message;

    #@0
    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/ConnectivityService;->handleAsyncChannelDisconnected(Landroid/os/Message;)V

    #@3
    return-void
.end method

.method static synthetic -wrap30(Lcom/android/server/ConnectivityService;Lcom/android/server/connectivity/NetworkAgentInfo;I)V
    .locals 0
    .param p1, "nai"    # Lcom/android/server/connectivity/NetworkAgentInfo;
    .param p2, "score"    # I

    #@0
    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/server/ConnectivityService;->updateNetworkScore(Lcom/android/server/connectivity/NetworkAgentInfo;I)V

    #@3
    return-void
.end method

.method static synthetic -wrap4(Lcom/android/server/ConnectivityService;Landroid/os/Message;)V
    .locals 0
    .param p1, "msg"    # Landroid/os/Message;

    #@0
    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/ConnectivityService;->handleAsyncChannelHalfConnect(Landroid/os/Message;)V

    #@3
    return-void
.end method

.method static synthetic -wrap5(Lcom/android/server/ConnectivityService;)V
    .locals 0

    #@0
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->handleDeprecatedGlobalHttpProxy()V

    #@3
    return-void
.end method

.method static synthetic -wrap6(Lcom/android/server/ConnectivityService;Lcom/android/server/connectivity/NetworkAgentInfo;)V
    .locals 0
    .param p1, "oldNetwork"    # Lcom/android/server/connectivity/NetworkAgentInfo;

    #@0
    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/ConnectivityService;->handleLingerComplete(Lcom/android/server/connectivity/NetworkAgentInfo;)V

    #@3
    return-void
.end method

.method static synthetic -wrap7(Lcom/android/server/ConnectivityService;)V
    .locals 0

    #@0
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->handleMobileDataAlwaysOn()V

    #@3
    return-void
.end method

.method static synthetic -wrap8(Lcom/android/server/ConnectivityService;Landroid/net/Network;)V
    .locals 0
    .param p1, "network"    # Landroid/net/Network;

    #@0
    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/ConnectivityService;->handlePromptUnvalidated(Landroid/net/Network;)V

    #@3
    return-void
.end method

.method static synthetic -wrap9(Lcom/android/server/ConnectivityService;Lcom/android/server/connectivity/NetworkAgentInfo;)V
    .locals 0
    .param p1, "na"    # Lcom/android/server/connectivity/NetworkAgentInfo;

    #@0
    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/ConnectivityService;->handleRegisterNetworkAgent(Lcom/android/server/connectivity/NetworkAgentInfo;)V

    #@3
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/INetworkManagementService;Landroid/net/INetworkStatsService;Landroid/net/INetworkPolicyManager;)V
    .locals 22
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "netManager"    # Landroid/os/INetworkManagementService;
    .param p3, "statsService"    # Landroid/net/INetworkStatsService;
    .param p4, "policyManager"    # Landroid/net/INetworkPolicyManager;

    #@0
    .prologue
    .line 612
    invoke-direct/range {p0 .. p0}, Landroid/net/IConnectivityManager$Stub;-><init>()V

    #@3
    .line 192
    new-instance v2, Landroid/util/SparseArray;

    #@5
    invoke-direct {v2}, Landroid/util/SparseArray;-><init>()V

    #@8
    move-object/from16 v0, p0

    #@a
    iput-object v2, v0, Lcom/android/server/ConnectivityService;->mVpns:Landroid/util/SparseArray;

    #@c
    .line 198
    new-instance v2, Ljava/lang/Object;

    #@e
    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    #@11
    move-object/from16 v0, p0

    #@13
    iput-object v2, v0, Lcom/android/server/ConnectivityService;->mRulesLock:Ljava/lang/Object;

    #@15
    .line 200
    new-instance v2, Landroid/util/SparseIntArray;

    #@17
    invoke-direct {v2}, Landroid/util/SparseIntArray;-><init>()V

    #@1a
    move-object/from16 v0, p0

    #@1c
    iput-object v2, v0, Lcom/android/server/ConnectivityService;->mUidRules:Landroid/util/SparseIntArray;

    #@1e
    .line 202
    invoke-static {}, Lcom/google/android/collect/Sets;->newHashSet()Ljava/util/HashSet;

    #@21
    move-result-object v2

    #@22
    move-object/from16 v0, p0

    #@24
    iput-object v2, v0, Lcom/android/server/ConnectivityService;->mMeteredIfaces:Ljava/util/HashSet;

    #@26
    .line 207
    const/4 v2, 0x0

    #@27
    move-object/from16 v0, p0

    #@29
    iput v2, v0, Lcom/android/server/ConnectivityService;->mDefaultInetConditionPublished:I

    #@2b
    .line 367
    const-string/jumbo v2, ""

    #@2e
    move-object/from16 v0, p0

    #@30
    iput-object v2, v0, Lcom/android/server/ConnectivityService;->mNetTransitionWakeLockCausedBy:Ljava/lang/String;

    #@32
    .line 379
    const/4 v2, 0x0

    #@33
    move-object/from16 v0, p0

    #@35
    iput-object v2, v0, Lcom/android/server/ConnectivityService;->mDefaultProxy:Landroid/net/ProxyInfo;

    #@37
    .line 380
    new-instance v2, Ljava/lang/Object;

    #@39
    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    #@3c
    move-object/from16 v0, p0

    #@3e
    iput-object v2, v0, Lcom/android/server/ConnectivityService;->mProxyLock:Ljava/lang/Object;

    #@40
    .line 381
    const/4 v2, 0x0

    #@41
    move-object/from16 v0, p0

    #@43
    iput-boolean v2, v0, Lcom/android/server/ConnectivityService;->mDefaultProxyDisabled:Z

    #@45
    .line 384
    const/4 v2, 0x0

    #@46
    move-object/from16 v0, p0

    #@48
    iput-object v2, v0, Lcom/android/server/ConnectivityService;->mGlobalProxy:Landroid/net/ProxyInfo;

    #@4a
    .line 386
    const/4 v2, 0x0

    #@4b
    move-object/from16 v0, p0

    #@4d
    iput-object v2, v0, Lcom/android/server/ConnectivityService;->mPacManager:Lcom/android/server/connectivity/PacManager;

    #@4f
    .line 405
    const/16 v2, 0x64

    #@51
    move-object/from16 v0, p0

    #@53
    iput v2, v0, Lcom/android/server/ConnectivityService;->mNextNetId:I

    #@55
    .line 408
    const/4 v2, 0x1

    #@56
    move-object/from16 v0, p0

    #@58
    iput v2, v0, Lcom/android/server/ConnectivityService;->mNextNetworkRequestId:I

    #@5a
    .line 412
    new-instance v2, Landroid/util/LocalLog;

    #@5c
    const/16 v3, 0x14

    #@5e
    invoke-direct {v2, v3}, Landroid/util/LocalLog;-><init>(I)V

    #@61
    move-object/from16 v0, p0

    #@63
    iput-object v2, v0, Lcom/android/server/ConnectivityService;->mNetworkRequestInfoLogs:Landroid/util/LocalLog;

    #@65
    .line 417
    new-instance v2, Ljava/util/ArrayDeque;

    #@67
    const/16 v3, 0xa

    #@69
    invoke-direct {v2, v3}, Ljava/util/ArrayDeque;-><init>(I)V

    #@6c
    .line 416
    move-object/from16 v0, p0

    #@6e
    iput-object v2, v0, Lcom/android/server/ConnectivityService;->mValidationLogs:Ljava/util/ArrayDeque;

    #@70
    .line 610
    new-instance v2, Lcom/android/server/ConnectivityService$LegacyTypeTracker;

    #@72
    move-object/from16 v0, p0

    #@74
    invoke-direct {v2, v0}, Lcom/android/server/ConnectivityService$LegacyTypeTracker;-><init>(Lcom/android/server/ConnectivityService;)V

    #@77
    move-object/from16 v0, p0

    #@79
    iput-object v2, v0, Lcom/android/server/ConnectivityService;->mLegacyTypeTracker:Lcom/android/server/ConnectivityService$LegacyTypeTracker;

    #@7b
    .line 1260
    new-instance v2, Lcom/android/server/ConnectivityService$1;

    #@7d
    move-object/from16 v0, p0

    #@7f
    invoke-direct {v2, v0}, Lcom/android/server/ConnectivityService$1;-><init>(Lcom/android/server/ConnectivityService;)V

    #@82
    move-object/from16 v0, p0

    #@84
    iput-object v2, v0, Lcom/android/server/ConnectivityService;->mDataActivityObserver:Landroid/net/INetworkManagementEventObserver;

    #@86
    .line 1363
    new-instance v2, Lcom/android/server/ConnectivityService$2;

    #@88
    move-object/from16 v0, p0

    #@8a
    invoke-direct {v2, v0}, Lcom/android/server/ConnectivityService$2;-><init>(Lcom/android/server/ConnectivityService;)V

    #@8d
    move-object/from16 v0, p0

    #@8f
    iput-object v2, v0, Lcom/android/server/ConnectivityService;->mPolicyListener:Landroid/net/INetworkPolicyListener;

    #@91
    .line 1561
    new-instance v2, Lcom/android/server/ConnectivityService$3;

    #@93
    move-object/from16 v0, p0

    #@95
    invoke-direct {v2, v0}, Lcom/android/server/ConnectivityService$3;-><init>(Lcom/android/server/ConnectivityService;)V

    #@98
    move-object/from16 v0, p0

    #@9a
    iput-object v2, v0, Lcom/android/server/ConnectivityService;->mUserPresentReceiver:Landroid/content/BroadcastReceiver;

    #@9c
    .line 3324
    new-instance v2, Ljava/io/File;

    #@9e
    const-string/jumbo v3, "/data/misc/radio/provisioning_urls.xml"

    #@a1
    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    #@a4
    move-object/from16 v0, p0

    #@a6
    iput-object v2, v0, Lcom/android/server/ConnectivityService;->mProvisioningUrlFile:Ljava/io/File;

    #@a8
    .line 3461
    new-instance v2, Lcom/android/server/ConnectivityService$4;

    #@aa
    move-object/from16 v0, p0

    #@ac
    invoke-direct {v2, v0}, Lcom/android/server/ConnectivityService$4;-><init>(Lcom/android/server/ConnectivityService;)V

    #@af
    move-object/from16 v0, p0

    #@b1
    iput-object v2, v0, Lcom/android/server/ConnectivityService;->mUserIntentReceiver:Landroid/content/BroadcastReceiver;

    #@b3
    .line 3477
    new-instance v2, Ljava/util/HashMap;

    #@b5
    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    #@b8
    .line 3476
    move-object/from16 v0, p0

    #@ba
    iput-object v2, v0, Lcom/android/server/ConnectivityService;->mNetworkFactoryInfos:Ljava/util/HashMap;

    #@bc
    .line 3479
    new-instance v2, Ljava/util/HashMap;

    #@be
    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    #@c1
    .line 3478
    move-object/from16 v0, p0

    #@c3
    iput-object v2, v0, Lcom/android/server/ConnectivityService;->mNetworkRequests:Ljava/util/HashMap;

    #@c5
    .line 3766
    new-instance v2, Landroid/util/SparseArray;

    #@c7
    invoke-direct {v2}, Landroid/util/SparseArray;-><init>()V

    #@ca
    .line 3765
    move-object/from16 v0, p0

    #@cc
    iput-object v2, v0, Lcom/android/server/ConnectivityService;->mNetworkForRequestId:Landroid/util/SparseArray;

    #@ce
    .line 3771
    new-instance v2, Landroid/util/SparseArray;

    #@d0
    invoke-direct {v2}, Landroid/util/SparseArray;-><init>()V

    #@d3
    .line 3770
    move-object/from16 v0, p0

    #@d5
    iput-object v2, v0, Lcom/android/server/ConnectivityService;->mNetworkForNetId:Landroid/util/SparseArray;

    #@d7
    .line 3776
    new-instance v2, Landroid/util/SparseBooleanArray;

    #@d9
    invoke-direct {v2}, Landroid/util/SparseBooleanArray;-><init>()V

    #@dc
    move-object/from16 v0, p0

    #@de
    iput-object v2, v0, Lcom/android/server/ConnectivityService;->mNetIdInUse:Landroid/util/SparseBooleanArray;

    #@e0
    .line 3782
    new-instance v2, Ljava/util/HashMap;

    #@e2
    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    #@e5
    .line 3781
    move-object/from16 v0, p0

    #@e7
    iput-object v2, v0, Lcom/android/server/ConnectivityService;->mNetworkAgentInfos:Ljava/util/HashMap;

    #@e9
    .line 614
    const-string/jumbo v2, "ConnectivityService starting up"

    #@ec
    invoke-static {v2}, Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V

    #@ef
    .line 616
    const/4 v2, -0x1

    #@f0
    move-object/from16 v0, p0

    #@f2
    invoke-direct {v0, v2}, Lcom/android/server/ConnectivityService;->createInternetRequestForTransport(I)Landroid/net/NetworkRequest;

    #@f5
    move-result-object v2

    #@f6
    move-object/from16 v0, p0

    #@f8
    iput-object v2, v0, Lcom/android/server/ConnectivityService;->mDefaultRequest:Landroid/net/NetworkRequest;

    #@fa
    .line 617
    new-instance v1, Lcom/android/server/ConnectivityService$NetworkRequestInfo;

    #@fc
    move-object/from16 v0, p0

    #@fe
    iget-object v4, v0, Lcom/android/server/ConnectivityService;->mDefaultRequest:Landroid/net/NetworkRequest;

    #@100
    .line 618
    new-instance v5, Landroid/os/Binder;

    #@102
    invoke-direct {v5}, Landroid/os/Binder;-><init>()V

    #@105
    .line 617
    const/4 v3, 0x0

    #@106
    .line 618
    const/4 v6, 0x1

    #@107
    move-object/from16 v2, p0

    #@109
    .line 617
    invoke-direct/range {v1 .. v6}, Lcom/android/server/ConnectivityService$NetworkRequestInfo;-><init>(Lcom/android/server/ConnectivityService;Landroid/os/Messenger;Landroid/net/NetworkRequest;Landroid/os/IBinder;Z)V

    #@10c
    .line 619
    .local v1, "defaultNRI":Lcom/android/server/ConnectivityService$NetworkRequestInfo;
    move-object/from16 v0, p0

    #@10e
    iget-object v2, v0, Lcom/android/server/ConnectivityService;->mNetworkRequests:Ljava/util/HashMap;

    #@110
    move-object/from16 v0, p0

    #@112
    iget-object v3, v0, Lcom/android/server/ConnectivityService;->mDefaultRequest:Landroid/net/NetworkRequest;

    #@114
    invoke-virtual {v2, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@117
    .line 620
    move-object/from16 v0, p0

    #@119
    iget-object v2, v0, Lcom/android/server/ConnectivityService;->mNetworkRequestInfoLogs:Landroid/util/LocalLog;

    #@11b
    new-instance v3, Ljava/lang/StringBuilder;

    #@11d
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@120
    const-string/jumbo v4, "REGISTER "

    #@123
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@126
    move-result-object v3

    #@127
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@12a
    move-result-object v3

    #@12b
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@12e
    move-result-object v3

    #@12f
    invoke-virtual {v2, v3}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    #@132
    .line 623
    const/4 v2, 0x0

    #@133
    .line 622
    move-object/from16 v0, p0

    #@135
    invoke-direct {v0, v2}, Lcom/android/server/ConnectivityService;->createInternetRequestForTransport(I)Landroid/net/NetworkRequest;

    #@138
    move-result-object v2

    #@139
    move-object/from16 v0, p0

    #@13b
    iput-object v2, v0, Lcom/android/server/ConnectivityService;->mDefaultMobileDataRequest:Landroid/net/NetworkRequest;

    #@13d
    .line 625
    new-instance v12, Landroid/os/HandlerThread;

    #@13f
    const-string/jumbo v2, "ConnectivityServiceThread"

    #@142
    invoke-direct {v12, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    #@145
    .line 626
    .local v12, "handlerThread":Landroid/os/HandlerThread;
    invoke-virtual {v12}, Landroid/os/HandlerThread;->start()V

    #@148
    .line 627
    new-instance v2, Lcom/android/server/ConnectivityService$InternalHandler;

    #@14a
    invoke-virtual {v12}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    #@14d
    move-result-object v3

    #@14e
    move-object/from16 v0, p0

    #@150
    invoke-direct {v2, v0, v3}, Lcom/android/server/ConnectivityService$InternalHandler;-><init>(Lcom/android/server/ConnectivityService;Landroid/os/Looper;)V

    #@153
    move-object/from16 v0, p0

    #@155
    iput-object v2, v0, Lcom/android/server/ConnectivityService;->mHandler:Lcom/android/server/ConnectivityService$InternalHandler;

    #@157
    .line 628
    new-instance v2, Lcom/android/server/ConnectivityService$NetworkStateTrackerHandler;

    #@159
    invoke-virtual {v12}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    #@15c
    move-result-object v3

    #@15d
    move-object/from16 v0, p0

    #@15f
    invoke-direct {v2, v0, v3}, Lcom/android/server/ConnectivityService$NetworkStateTrackerHandler;-><init>(Lcom/android/server/ConnectivityService;Landroid/os/Looper;)V

    #@162
    move-object/from16 v0, p0

    #@164
    iput-object v2, v0, Lcom/android/server/ConnectivityService;->mTrackerHandler:Lcom/android/server/ConnectivityService$NetworkStateTrackerHandler;

    #@166
    .line 631
    const-string/jumbo v2, "net.hostname"

    #@169
    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    #@16c
    move-result-object v2

    #@16d
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@170
    move-result v2

    #@171
    if-eqz v2, :cond_0

    #@173
    .line 632
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    #@176
    move-result-object v2

    #@177
    .line 633
    const-string/jumbo v3, "android_id"

    #@17a
    .line 632
    invoke-static {v2, v3}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    #@17d
    move-result-object v13

    #@17e
    .line 634
    .local v13, "id":Ljava/lang/String;
    if-eqz v13, :cond_0

    #@180
    invoke-virtual {v13}, Ljava/lang/String;->length()I

    #@183
    move-result v2

    #@184
    if-lez v2, :cond_0

    #@186
    .line 635
    new-instance v2, Ljava/lang/String;

    #@188
    const-string/jumbo v3, "android-"

    #@18b
    invoke-direct {v2, v3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    #@18e
    invoke-virtual {v2, v13}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    #@191
    move-result-object v17

    #@192
    .line 636
    .local v17, "name":Ljava/lang/String;
    const-string/jumbo v2, "net.hostname"

    #@195
    move-object/from16 v0, v17

    #@197
    invoke-static {v2, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    #@19a
    .line 641
    .end local v13    # "id":Ljava/lang/String;
    .end local v17    # "name":Ljava/lang/String;
    :cond_0
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    #@19d
    move-result-object v2

    #@19e
    .line 642
    const-string/jumbo v3, "default_dns_server"

    #@1a1
    .line 641
    invoke-static {v2, v3}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    #@1a4
    move-result-object v8

    #@1a5
    .line 643
    .local v8, "dns":Ljava/lang/String;
    if-eqz v8, :cond_1

    #@1a7
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    #@1aa
    move-result v2

    #@1ab
    if-nez v2, :cond_2

    #@1ad
    .line 644
    :cond_1
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@1b0
    move-result-object v2

    #@1b1
    .line 645
    const v3, 0x104002d

    #@1b4
    .line 644
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    #@1b7
    move-result-object v8

    #@1b8
    .line 648
    :cond_2
    :try_start_0
    invoke-static {v8}, Landroid/net/NetworkUtils;->numericToInetAddress(Ljava/lang/String;)Ljava/net/InetAddress;

    #@1bb
    move-result-object v2

    #@1bc
    move-object/from16 v0, p0

    #@1be
    iput-object v2, v0, Lcom/android/server/ConnectivityService;->mDefaultDns:Ljava/net/InetAddress;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    #@1c0
    .line 653
    :goto_0
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    #@1c3
    move-result-object v2

    #@1c4
    .line 654
    const-string/jumbo v3, "connectivity_release_pending_intent_delay_ms"

    #@1c7
    const/16 v4, 0x1388

    #@1c9
    .line 653
    invoke-static {v2, v3, v4}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    #@1cc
    move-result v2

    #@1cd
    move-object/from16 v0, p0

    #@1cf
    iput v2, v0, Lcom/android/server/ConnectivityService;->mReleasePendingIntentDelayMs:I

    #@1d1
    .line 656
    const-string/jumbo v2, "missing Context"

    #@1d4
    move-object/from16 v0, p1

    #@1d6
    invoke-static {v0, v2}, Lcom/android/server/ConnectivityService;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    #@1d9
    move-result-object v2

    #@1da
    check-cast v2, Landroid/content/Context;

    #@1dc
    move-object/from16 v0, p0

    #@1de
    iput-object v2, v0, Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;

    #@1e0
    .line 657
    const-string/jumbo v2, "missing INetworkManagementService"

    #@1e3
    move-object/from16 v0, p2

    #@1e5
    invoke-static {v0, v2}, Lcom/android/server/ConnectivityService;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    #@1e8
    move-result-object v2

    #@1e9
    check-cast v2, Landroid/os/INetworkManagementService;

    #@1eb
    move-object/from16 v0, p0

    #@1ed
    iput-object v2, v0, Lcom/android/server/ConnectivityService;->mNetd:Landroid/os/INetworkManagementService;

    #@1ef
    .line 658
    const-string/jumbo v2, "missing INetworkStatsService"

    #@1f2
    move-object/from16 v0, p3

    #@1f4
    invoke-static {v0, v2}, Lcom/android/server/ConnectivityService;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    #@1f7
    move-result-object v2

    #@1f8
    check-cast v2, Landroid/net/INetworkStatsService;

    #@1fa
    move-object/from16 v0, p0

    #@1fc
    iput-object v2, v0, Lcom/android/server/ConnectivityService;->mStatsService:Landroid/net/INetworkStatsService;

    #@1fe
    .line 659
    const-string/jumbo v2, "missing INetworkPolicyManager"

    #@201
    move-object/from16 v0, p4

    #@203
    invoke-static {v0, v2}, Lcom/android/server/ConnectivityService;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    #@206
    move-result-object v2

    #@207
    check-cast v2, Landroid/net/INetworkPolicyManager;

    #@209
    move-object/from16 v0, p0

    #@20b
    iput-object v2, v0, Lcom/android/server/ConnectivityService;->mPolicyManager:Landroid/net/INetworkPolicyManager;

    #@20d
    .line 660
    invoke-static {}, Landroid/security/KeyStore;->getInstance()Landroid/security/KeyStore;

    #@210
    move-result-object v2

    #@211
    move-object/from16 v0, p0

    #@213
    iput-object v2, v0, Lcom/android/server/ConnectivityService;->mKeyStore:Landroid/security/KeyStore;

    #@215
    .line 661
    move-object/from16 v0, p0

    #@217
    iget-object v2, v0, Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;

    #@219
    const-string/jumbo v3, "phone"

    #@21c
    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    #@21f
    move-result-object v2

    #@220
    check-cast v2, Landroid/telephony/TelephonyManager;

    #@222
    move-object/from16 v0, p0

    #@224
    iput-object v2, v0, Lcom/android/server/ConnectivityService;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    #@226
    .line 664
    :try_start_1
    move-object/from16 v0, p0

    #@228
    iget-object v2, v0, Lcom/android/server/ConnectivityService;->mPolicyManager:Landroid/net/INetworkPolicyManager;

    #@22a
    move-object/from16 v0, p0

    #@22c
    iget-object v3, v0, Lcom/android/server/ConnectivityService;->mPolicyListener:Landroid/net/INetworkPolicyListener;

    #@22e
    invoke-interface {v2, v3}, Landroid/net/INetworkPolicyManager;->registerListener(Landroid/net/INetworkPolicyListener;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    #@231
    .line 671
    :goto_1
    const-string/jumbo v2, "power"

    #@234
    .line 670
    move-object/from16 v0, p1

    #@236
    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    #@239
    move-result-object v19

    #@23a
    check-cast v19, Landroid/os/PowerManager;

    #@23c
    .line 672
    .local v19, "powerManager":Landroid/os/PowerManager;
    const-string/jumbo v2, "ConnectivityService"

    #@23f
    const/4 v3, 0x1

    #@240
    move-object/from16 v0, v19

    #@242
    invoke-virtual {v0, v3, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    #@245
    move-result-object v2

    #@246
    move-object/from16 v0, p0

    #@248
    iput-object v2, v0, Lcom/android/server/ConnectivityService;->mNetTransitionWakeLock:Landroid/os/PowerManager$WakeLock;

    #@24a
    .line 673
    move-object/from16 v0, p0

    #@24c
    iget-object v2, v0, Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;

    #@24e
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@251
    move-result-object v2

    #@252
    .line 674
    const v3, 0x10e000d

    #@255
    .line 673
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    #@258
    move-result v2

    #@259
    move-object/from16 v0, p0

    #@25b
    iput v2, v0, Lcom/android/server/ConnectivityService;->mNetTransitionWakeLockTimeout:I

    #@25d
    .line 675
    const-string/jumbo v2, "ConnectivityService"

    #@260
    const/4 v3, 0x1

    #@261
    move-object/from16 v0, v19

    #@263
    invoke-virtual {v0, v3, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    #@266
    move-result-object v2

    #@267
    move-object/from16 v0, p0

    #@269
    iput-object v2, v0, Lcom/android/server/ConnectivityService;->mPendingIntentWakeLock:Landroid/os/PowerManager$WakeLock;

    #@26b
    .line 677
    const/16 v2, 0x12

    #@26d
    new-array v2, v2, [Landroid/net/NetworkConfig;

    #@26f
    move-object/from16 v0, p0

    #@271
    iput-object v2, v0, Lcom/android/server/ConnectivityService;->mNetConfigs:[Landroid/net/NetworkConfig;

    #@273
    .line 680
    const-string/jumbo v2, "ro.radio.noril"

    #@276
    const/4 v3, 0x0

    #@277
    invoke-static {v2, v3}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    #@27a
    move-result v21

    #@27b
    .line 681
    .local v21, "wifiOnly":Z
    new-instance v2, Ljava/lang/StringBuilder;

    #@27d
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@280
    const-string/jumbo v3, "wifiOnly="

    #@283
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@286
    move-result-object v2

    #@287
    move/from16 v0, v21

    #@289
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@28c
    move-result-object v2

    #@28d
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@290
    move-result-object v2

    #@291
    invoke-static {v2}, Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V

    #@294
    .line 682
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@297
    move-result-object v2

    #@298
    .line 683
    const v3, 0x107000c

    #@29b
    .line 682
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    #@29e
    move-result-object v16

    #@29f
    .line 684
    .local v16, "naStrings":[Ljava/lang/String;
    const/4 v2, 0x0

    #@2a0
    move-object/from16 v0, v16

    #@2a2
    array-length v3, v0

    #@2a3
    :goto_2
    if-ge v2, v3, :cond_6

    #@2a5
    aget-object v15, v16, v2

    #@2a7
    .line 686
    .local v15, "naString":Ljava/lang/String;
    :try_start_2
    new-instance v14, Landroid/net/NetworkConfig;

    #@2a9
    invoke-direct {v14, v15}, Landroid/net/NetworkConfig;-><init>(Ljava/lang/String;)V

    #@2ac
    .line 688
    .local v14, "n":Landroid/net/NetworkConfig;
    iget v4, v14, Landroid/net/NetworkConfig;->type:I

    #@2ae
    const/16 v6, 0x11

    #@2b0
    if-le v4, v6, :cond_3

    #@2b2
    .line 689
    new-instance v4, Ljava/lang/StringBuilder;

    #@2b4
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@2b7
    const-string/jumbo v6, "Error in networkAttributes - ignoring attempt to define type "

    #@2ba
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2bd
    move-result-object v4

    #@2be
    .line 690
    iget v6, v14, Landroid/net/NetworkConfig;->type:I

    #@2c0
    .line 689
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@2c3
    move-result-object v4

    #@2c4
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2c7
    move-result-object v4

    #@2c8
    invoke-static {v4}, Lcom/android/server/ConnectivityService;->loge(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    #@2cb
    .line 684
    .end local v14    # "n":Landroid/net/NetworkConfig;
    :goto_3
    add-int/lit8 v2, v2, 0x1

    #@2cd
    goto :goto_2

    #@2ce
    .line 649
    .end local v15    # "naString":Ljava/lang/String;
    .end local v16    # "naStrings":[Ljava/lang/String;
    .end local v19    # "powerManager":Landroid/os/PowerManager;
    .end local v21    # "wifiOnly":Z
    :catch_0
    move-exception v11

    #@2cf
    .line 650
    .local v11, "e":Ljava/lang/IllegalArgumentException;
    new-instance v2, Ljava/lang/StringBuilder;

    #@2d1
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@2d4
    const-string/jumbo v3, "Error setting defaultDns using "

    #@2d7
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2da
    move-result-object v2

    #@2db
    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2de
    move-result-object v2

    #@2df
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2e2
    move-result-object v2

    #@2e3
    invoke-static {v2}, Lcom/android/server/ConnectivityService;->loge(Ljava/lang/String;)V

    #@2e6
    goto/16 :goto_0

    #@2e8
    .line 665
    .end local v11    # "e":Ljava/lang/IllegalArgumentException;
    :catch_1
    move-exception v9

    #@2e9
    .line 667
    .local v9, "e":Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/StringBuilder;

    #@2eb
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@2ee
    const-string/jumbo v3, "unable to register INetworkPolicyListener"

    #@2f1
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2f4
    move-result-object v2

    #@2f5
    invoke-virtual {v9}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    #@2f8
    move-result-object v3

    #@2f9
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2fc
    move-result-object v2

    #@2fd
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@300
    move-result-object v2

    #@301
    invoke-static {v2}, Lcom/android/server/ConnectivityService;->loge(Ljava/lang/String;)V

    #@304
    goto/16 :goto_1

    #@306
    .line 693
    .end local v9    # "e":Landroid/os/RemoteException;
    .restart local v14    # "n":Landroid/net/NetworkConfig;
    .restart local v15    # "naString":Ljava/lang/String;
    .restart local v16    # "naStrings":[Ljava/lang/String;
    .restart local v19    # "powerManager":Landroid/os/PowerManager;
    .restart local v21    # "wifiOnly":Z
    :cond_3
    if-eqz v21, :cond_4

    #@308
    :try_start_3
    iget v4, v14, Landroid/net/NetworkConfig;->type:I

    #@30a
    invoke-static {v4}, Landroid/net/ConnectivityManager;->isNetworkTypeMobile(I)Z

    #@30d
    move-result v4

    #@30e
    if-eqz v4, :cond_4

    #@310
    .line 694
    new-instance v4, Ljava/lang/StringBuilder;

    #@312
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@315
    const-string/jumbo v6, "networkAttributes - ignoring mobile as this dev is wifiOnly "

    #@318
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@31b
    move-result-object v4

    #@31c
    .line 695
    iget v6, v14, Landroid/net/NetworkConfig;->type:I

    #@31e
    .line 694
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@321
    move-result-object v4

    #@322
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@325
    move-result-object v4

    #@326
    invoke-static {v4}, Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V

    #@329
    goto :goto_3

    #@32a
    .line 707
    .end local v14    # "n":Landroid/net/NetworkConfig;
    :catch_2
    move-exception v10

    #@32b
    .local v10, "e":Ljava/lang/Exception;
    goto :goto_3

    #@32c
    .line 698
    .end local v10    # "e":Ljava/lang/Exception;
    .restart local v14    # "n":Landroid/net/NetworkConfig;
    :cond_4
    move-object/from16 v0, p0

    #@32e
    iget-object v4, v0, Lcom/android/server/ConnectivityService;->mNetConfigs:[Landroid/net/NetworkConfig;

    #@330
    iget v6, v14, Landroid/net/NetworkConfig;->type:I

    #@332
    aget-object v4, v4, v6

    #@334
    if-eqz v4, :cond_5

    #@336
    .line 699
    new-instance v4, Ljava/lang/StringBuilder;

    #@338
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@33b
    const-string/jumbo v6, "Error in networkAttributes - ignoring attempt to redefine type "

    #@33e
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@341
    move-result-object v4

    #@342
    .line 700
    iget v6, v14, Landroid/net/NetworkConfig;->type:I

    #@344
    .line 699
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@347
    move-result-object v4

    #@348
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@34b
    move-result-object v4

    #@34c
    invoke-static {v4}, Lcom/android/server/ConnectivityService;->loge(Ljava/lang/String;)V

    #@34f
    goto/16 :goto_3

    #@351
    .line 703
    :cond_5
    move-object/from16 v0, p0

    #@353
    iget-object v4, v0, Lcom/android/server/ConnectivityService;->mLegacyTypeTracker:Lcom/android/server/ConnectivityService$LegacyTypeTracker;

    #@355
    iget v6, v14, Landroid/net/NetworkConfig;->type:I

    #@357
    invoke-virtual {v4, v6}, Lcom/android/server/ConnectivityService$LegacyTypeTracker;->addSupportedType(I)V

    #@35a
    .line 705
    move-object/from16 v0, p0

    #@35c
    iget-object v4, v0, Lcom/android/server/ConnectivityService;->mNetConfigs:[Landroid/net/NetworkConfig;

    #@35e
    iget v6, v14, Landroid/net/NetworkConfig;->type:I

    #@360
    aput-object v14, v4, v6

    #@362
    .line 706
    move-object/from16 v0, p0

    #@364
    iget v4, v0, Lcom/android/server/ConnectivityService;->mNetworksDefined:I

    #@366
    add-int/lit8 v4, v4, 0x1

    #@368
    move-object/from16 v0, p0

    #@36a
    iput v4, v0, Lcom/android/server/ConnectivityService;->mNetworksDefined:I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    #@36c
    goto/16 :goto_3

    #@36e
    .line 713
    .end local v14    # "n":Landroid/net/NetworkConfig;
    .end local v15    # "naString":Ljava/lang/String;
    :cond_6
    move-object/from16 v0, p0

    #@370
    iget-object v2, v0, Lcom/android/server/ConnectivityService;->mNetConfigs:[Landroid/net/NetworkConfig;

    #@372
    const/16 v3, 0x11

    #@374
    aget-object v2, v2, v3

    #@376
    if-nez v2, :cond_7

    #@378
    .line 716
    move-object/from16 v0, p0

    #@37a
    iget-object v2, v0, Lcom/android/server/ConnectivityService;->mLegacyTypeTracker:Lcom/android/server/ConnectivityService$LegacyTypeTracker;

    #@37c
    const/16 v3, 0x11

    #@37e
    invoke-virtual {v2, v3}, Lcom/android/server/ConnectivityService$LegacyTypeTracker;->addSupportedType(I)V

    #@381
    .line 717
    move-object/from16 v0, p0

    #@383
    iget v2, v0, Lcom/android/server/ConnectivityService;->mNetworksDefined:I

    #@385
    add-int/lit8 v2, v2, 0x1

    #@387
    move-object/from16 v0, p0

    #@389
    iput v2, v0, Lcom/android/server/ConnectivityService;->mNetworksDefined:I

    #@38b
    .line 722
    :cond_7
    new-instance v2, Ljava/util/ArrayList;

    #@38d
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    #@390
    move-object/from16 v0, p0

    #@392
    iput-object v2, v0, Lcom/android/server/ConnectivityService;->mProtectedNetworks:Ljava/util/List;

    #@394
    .line 723
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@397
    move-result-object v2

    #@398
    .line 724
    const v3, 0x107000d

    #@39b
    .line 723
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getIntArray(I)[I

    #@39e
    move-result-object v20

    #@39f
    .line 725
    .local v20, "protectedNetworks":[I
    const/4 v2, 0x0

    #@3a0
    move-object/from16 v0, v20

    #@3a2
    array-length v3, v0

    #@3a3
    :goto_4
    if-ge v2, v3, :cond_9

    #@3a5
    aget v18, v20, v2

    #@3a7
    .line 726
    .local v18, "p":I
    move-object/from16 v0, p0

    #@3a9
    iget-object v4, v0, Lcom/android/server/ConnectivityService;->mNetConfigs:[Landroid/net/NetworkConfig;

    #@3ab
    aget-object v4, v4, v18

    #@3ad
    if-eqz v4, :cond_8

    #@3af
    move-object/from16 v0, p0

    #@3b1
    iget-object v4, v0, Lcom/android/server/ConnectivityService;->mProtectedNetworks:Ljava/util/List;

    #@3b3
    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@3b6
    move-result-object v6

    #@3b7
    invoke-interface {v4, v6}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    #@3ba
    move-result v4

    #@3bb
    if-nez v4, :cond_8

    #@3bd
    .line 727
    move-object/from16 v0, p0

    #@3bf
    iget-object v4, v0, Lcom/android/server/ConnectivityService;->mProtectedNetworks:Ljava/util/List;

    #@3c1
    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@3c4
    move-result-object v6

    #@3c5
    invoke-interface {v4, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@3c8
    .line 725
    :goto_5
    add-int/lit8 v2, v2, 0x1

    #@3ca
    goto :goto_4

    #@3cb
    .line 729
    :cond_8
    new-instance v4, Ljava/lang/StringBuilder;

    #@3cd
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@3d0
    const-string/jumbo v6, "Ignoring protectedNetwork "

    #@3d3
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3d6
    move-result-object v4

    #@3d7
    move/from16 v0, v18

    #@3d9
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@3dc
    move-result-object v4

    #@3dd
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3e0
    move-result-object v4

    #@3e1
    invoke-static {v4}, Lcom/android/server/ConnectivityService;->loge(Ljava/lang/String;)V

    #@3e4
    goto :goto_5

    #@3e5
    .line 733
    .end local v18    # "p":I
    :cond_9
    const-string/jumbo v2, "cm.test.mode"

    #@3e8
    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    #@3eb
    move-result-object v2

    #@3ec
    const-string/jumbo v3, "true"

    #@3ef
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@3f2
    move-result v2

    #@3f3
    if-eqz v2, :cond_a

    #@3f5
    .line 734
    const-string/jumbo v2, "ro.build.type"

    #@3f8
    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    #@3fb
    move-result-object v2

    #@3fc
    const-string/jumbo v3, "eng"

    #@3ff
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@402
    move-result v2

    #@403
    .line 733
    :goto_6
    move-object/from16 v0, p0

    #@405
    iput-boolean v2, v0, Lcom/android/server/ConnectivityService;->mTestMode:Z

    #@407
    .line 736
    new-instance v2, Lcom/android/server/connectivity/Tethering;

    #@409
    move-object/from16 v0, p0

    #@40b
    iget-object v3, v0, Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;

    #@40d
    move-object/from16 v0, p0

    #@40f
    iget-object v4, v0, Lcom/android/server/ConnectivityService;->mNetd:Landroid/os/INetworkManagementService;

    #@411
    move-object/from16 v0, p0

    #@413
    iget-object v6, v0, Lcom/android/server/ConnectivityService;->mHandler:Lcom/android/server/ConnectivityService$InternalHandler;

    #@415
    invoke-virtual {v6}, Lcom/android/server/ConnectivityService$InternalHandler;->getLooper()Landroid/os/Looper;

    #@418
    move-result-object v6

    #@419
    move-object/from16 v0, p3

    #@41b
    invoke-direct {v2, v3, v4, v0, v6}, Lcom/android/server/connectivity/Tethering;-><init>(Landroid/content/Context;Landroid/os/INetworkManagementService;Landroid/net/INetworkStatsService;Landroid/os/Looper;)V

    #@41e
    move-object/from16 v0, p0

    #@420
    iput-object v2, v0, Lcom/android/server/ConnectivityService;->mTethering:Lcom/android/server/connectivity/Tethering;

    #@422
    .line 738
    new-instance v2, Lcom/android/server/connectivity/PermissionMonitor;

    #@424
    move-object/from16 v0, p0

    #@426
    iget-object v3, v0, Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;

    #@428
    move-object/from16 v0, p0

    #@42a
    iget-object v4, v0, Lcom/android/server/ConnectivityService;->mNetd:Landroid/os/INetworkManagementService;

    #@42c
    invoke-direct {v2, v3, v4}, Lcom/android/server/connectivity/PermissionMonitor;-><init>(Landroid/content/Context;Landroid/os/INetworkManagementService;)V

    #@42f
    move-object/from16 v0, p0

    #@431
    iput-object v2, v0, Lcom/android/server/ConnectivityService;->mPermissionMonitor:Lcom/android/server/connectivity/PermissionMonitor;

    #@433
    .line 741
    new-instance v5, Landroid/content/IntentFilter;

    #@435
    invoke-direct {v5}, Landroid/content/IntentFilter;-><init>()V

    #@438
    .line 742
    .local v5, "intentFilter":Landroid/content/IntentFilter;
    const-string/jumbo v2, "android.intent.action.USER_STARTING"

    #@43b
    invoke-virtual {v5, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    #@43e
    .line 743
    const-string/jumbo v2, "android.intent.action.USER_STOPPING"

    #@441
    invoke-virtual {v5, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    #@444
    .line 744
    move-object/from16 v0, p0

    #@446
    iget-object v2, v0, Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;

    #@448
    .line 745
    move-object/from16 v0, p0

    #@44a
    iget-object v3, v0, Lcom/android/server/ConnectivityService;->mUserIntentReceiver:Landroid/content/BroadcastReceiver;

    #@44c
    sget-object v4, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    #@44e
    const/4 v6, 0x0

    #@44f
    const/4 v7, 0x0

    #@450
    .line 744
    invoke-virtual/range {v2 .. v7}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    #@453
    .line 748
    :try_start_4
    move-object/from16 v0, p0

    #@455
    iget-object v2, v0, Lcom/android/server/ConnectivityService;->mNetd:Landroid/os/INetworkManagementService;

    #@457
    move-object/from16 v0, p0

    #@459
    iget-object v3, v0, Lcom/android/server/ConnectivityService;->mTethering:Lcom/android/server/connectivity/Tethering;

    #@45b
    invoke-interface {v2, v3}, Landroid/os/INetworkManagementService;->registerObserver(Landroid/net/INetworkManagementEventObserver;)V

    #@45e
    .line 749
    move-object/from16 v0, p0

    #@460
    iget-object v2, v0, Lcom/android/server/ConnectivityService;->mNetd:Landroid/os/INetworkManagementService;

    #@462
    move-object/from16 v0, p0

    #@464
    iget-object v3, v0, Lcom/android/server/ConnectivityService;->mDataActivityObserver:Landroid/net/INetworkManagementEventObserver;

    #@466
    invoke-interface {v2, v3}, Landroid/os/INetworkManagementService;->registerObserver(Landroid/net/INetworkManagementEventObserver;)V
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_3

    #@469
    .line 755
    :goto_7
    new-instance v2, Ljava/util/ArrayList;

    #@46b
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    #@46e
    move-object/from16 v0, p0

    #@470
    iput-object v2, v0, Lcom/android/server/ConnectivityService;->mInetLog:Ljava/util/ArrayList;

    #@472
    .line 758
    new-instance v2, Lcom/android/server/ConnectivityService$SettingsObserver;

    #@474
    move-object/from16 v0, p0

    #@476
    iget-object v3, v0, Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;

    #@478
    move-object/from16 v0, p0

    #@47a
    iget-object v4, v0, Lcom/android/server/ConnectivityService;->mHandler:Lcom/android/server/ConnectivityService$InternalHandler;

    #@47c
    invoke-direct {v2, v3, v4}, Lcom/android/server/ConnectivityService$SettingsObserver;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    #@47f
    move-object/from16 v0, p0

    #@481
    iput-object v2, v0, Lcom/android/server/ConnectivityService;->mSettingsObserver:Lcom/android/server/ConnectivityService$SettingsObserver;

    #@483
    .line 759
    invoke-direct/range {p0 .. p0}, Lcom/android/server/ConnectivityService;->registerSettingsCallbacks()V

    #@486
    .line 761
    new-instance v2, Lcom/android/server/connectivity/DataConnectionStats;

    #@488
    move-object/from16 v0, p0

    #@48a
    iget-object v3, v0, Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;

    #@48c
    invoke-direct {v2, v3}, Lcom/android/server/connectivity/DataConnectionStats;-><init>(Landroid/content/Context;)V

    #@48f
    move-object/from16 v0, p0

    #@491
    iput-object v2, v0, Lcom/android/server/ConnectivityService;->mDataConnectionStats:Lcom/android/server/connectivity/DataConnectionStats;

    #@493
    .line 762
    move-object/from16 v0, p0

    #@495
    iget-object v2, v0, Lcom/android/server/ConnectivityService;->mDataConnectionStats:Lcom/android/server/connectivity/DataConnectionStats;

    #@497
    invoke-virtual {v2}, Lcom/android/server/connectivity/DataConnectionStats;->startMonitoring()V

    #@49a
    .line 764
    new-instance v2, Lcom/android/server/connectivity/PacManager;

    #@49c
    move-object/from16 v0, p0

    #@49e
    iget-object v3, v0, Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;

    #@4a0
    move-object/from16 v0, p0

    #@4a2
    iget-object v4, v0, Lcom/android/server/ConnectivityService;->mHandler:Lcom/android/server/ConnectivityService$InternalHandler;

    #@4a4
    const/16 v6, 0x10

    #@4a6
    invoke-direct {v2, v3, v4, v6}, Lcom/android/server/connectivity/PacManager;-><init>(Landroid/content/Context;Landroid/os/Handler;I)V

    #@4a9
    move-object/from16 v0, p0

    #@4ab
    iput-object v2, v0, Lcom/android/server/ConnectivityService;->mPacManager:Lcom/android/server/connectivity/PacManager;

    #@4ad
    .line 766
    const-string/jumbo v2, "user"

    #@4b0
    move-object/from16 v0, p1

    #@4b2
    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    #@4b5
    move-result-object v2

    #@4b6
    check-cast v2, Landroid/os/UserManager;

    #@4b8
    move-object/from16 v0, p0

    #@4ba
    iput-object v2, v0, Lcom/android/server/ConnectivityService;->mUserManager:Landroid/os/UserManager;

    #@4bc
    .line 613
    return-void

    #@4bd
    .line 733
    .end local v5    # "intentFilter":Landroid/content/IntentFilter;
    :cond_a
    const/4 v2, 0x0

    #@4be
    goto/16 :goto_6

    #@4c0
    .line 750
    .restart local v5    # "intentFilter":Landroid/content/IntentFilter;
    :catch_3
    move-exception v9

    #@4c1
    .line 751
    .restart local v9    # "e":Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/StringBuilder;

    #@4c3
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@4c6
    const-string/jumbo v3, "Error registering observer :"

    #@4c9
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4cc
    move-result-object v2

    #@4cd
    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@4d0
    move-result-object v2

    #@4d1
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@4d4
    move-result-object v2

    #@4d5
    invoke-static {v2}, Lcom/android/server/ConnectivityService;->loge(Ljava/lang/String;)V

    #@4d8
    goto :goto_7
.end method

.method private addLegacyRouteToHost(Landroid/net/LinkProperties;Ljava/net/InetAddress;II)Z
    .locals 5
    .param p1, "lp"    # Landroid/net/LinkProperties;
    .param p2, "addr"    # Ljava/net/InetAddress;
    .param p3, "netId"    # I
    .param p4, "uid"    # I

    #@0
    .prologue
    .line 1338
    invoke-virtual {p1}, Landroid/net/LinkProperties;->getAllRoutes()Ljava/util/List;

    #@3
    move-result-object v3

    #@4
    invoke-static {v3, p2}, Landroid/net/RouteInfo;->selectBestRoute(Ljava/util/Collection;Ljava/net/InetAddress;)Landroid/net/RouteInfo;

    #@7
    move-result-object v0

    #@8
    .line 1339
    .local v0, "bestRoute":Landroid/net/RouteInfo;
    if-nez v0, :cond_0

    #@a
    .line 1340
    invoke-virtual {p1}, Landroid/net/LinkProperties;->getInterfaceName()Ljava/lang/String;

    #@d
    move-result-object v3

    #@e
    invoke-static {p2, v3}, Landroid/net/RouteInfo;->makeHostRoute(Ljava/net/InetAddress;Ljava/lang/String;)Landroid/net/RouteInfo;

    #@11
    move-result-object v0

    #@12
    .line 1352
    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    #@14
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@17
    const-string/jumbo v4, "Adding "

    #@1a
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1d
    move-result-object v3

    #@1e
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@21
    move-result-object v3

    #@22
    const-string/jumbo v4, " for interface "

    #@25
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@28
    move-result-object v3

    #@29
    invoke-virtual {v0}, Landroid/net/RouteInfo;->getInterface()Ljava/lang/String;

    #@2c
    move-result-object v4

    #@2d
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@30
    move-result-object v3

    #@31
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@34
    move-result-object v3

    #@35
    invoke-static {v3}, Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V

    #@38
    .line 1354
    :try_start_0
    iget-object v3, p0, Lcom/android/server/ConnectivityService;->mNetd:Landroid/os/INetworkManagementService;

    #@3a
    invoke-interface {v3, p3, v0, p4}, Landroid/os/INetworkManagementService;->addLegacyRouteForNetId(ILandroid/net/RouteInfo;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    #@3d
    .line 1360
    const/4 v3, 0x1

    #@3e
    return v3

    #@3f
    .line 1342
    :cond_0
    invoke-virtual {v0}, Landroid/net/RouteInfo;->getInterface()Ljava/lang/String;

    #@42
    move-result-object v2

    #@43
    .line 1343
    .local v2, "iface":Ljava/lang/String;
    invoke-virtual {v0}, Landroid/net/RouteInfo;->getGateway()Ljava/net/InetAddress;

    #@46
    move-result-object v3

    #@47
    invoke-virtual {v3, p2}, Ljava/net/InetAddress;->equals(Ljava/lang/Object;)Z

    #@4a
    move-result v3

    #@4b
    if-eqz v3, :cond_1

    #@4d
    .line 1345
    invoke-static {p2, v2}, Landroid/net/RouteInfo;->makeHostRoute(Ljava/net/InetAddress;Ljava/lang/String;)Landroid/net/RouteInfo;

    #@50
    move-result-object v0

    #@51
    goto :goto_0

    #@52
    .line 1349
    :cond_1
    invoke-virtual {v0}, Landroid/net/RouteInfo;->getGateway()Ljava/net/InetAddress;

    #@55
    move-result-object v3

    #@56
    invoke-static {p2, v3, v2}, Landroid/net/RouteInfo;->makeHostRoute(Ljava/net/InetAddress;Ljava/net/InetAddress;Ljava/lang/String;)Landroid/net/RouteInfo;

    #@59
    move-result-object v0

    #@5a
    goto :goto_0

    #@5b
    .line 1355
    .end local v2    # "iface":Ljava/lang/String;
    :catch_0
    move-exception v1

    #@5c
    .line 1357
    .local v1, "e":Ljava/lang/Exception;
    new-instance v3, Ljava/lang/StringBuilder;

    #@5e
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@61
    const-string/jumbo v4, "Exception trying to add a route: "

    #@64
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@67
    move-result-object v3

    #@68
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@6b
    move-result-object v3

    #@6c
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@6f
    move-result-object v3

    #@70
    invoke-static {v3}, Lcom/android/server/ConnectivityService;->loge(Ljava/lang/String;)V

    #@73
    .line 1358
    const/4 v3, 0x0

    #@74
    return v3
.end method

.method private addValidationLogs(Landroid/util/LocalLog$ReadOnlyLocalLog;Landroid/net/Network;)V
    .locals 3
    .param p1, "log"    # Landroid/util/LocalLog$ReadOnlyLocalLog;
    .param p2, "network"    # Landroid/net/Network;

    #@0
    .prologue
    .line 420
    iget-object v1, p0, Lcom/android/server/ConnectivityService;->mValidationLogs:Ljava/util/ArrayDeque;

    #@2
    monitor-enter v1

    #@3
    .line 421
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
    .line 422
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mValidationLogs:Ljava/util/ArrayDeque;

    #@f
    invoke-virtual {v0}, Ljava/util/ArrayDeque;->removeLast()Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@12
    goto :goto_0

    #@13
    .line 420
    :catchall_0
    move-exception v0

    #@14
    monitor-exit v1

    #@15
    throw v0

    #@16
    .line 424
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mValidationLogs:Ljava/util/ArrayDeque;

    #@18
    new-instance v2, Landroid/util/Pair;

    #@1a
    invoke-direct {v2, p2, p1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    #@1d
    invoke-virtual {v0, v2}, Ljava/util/ArrayDeque;->addFirst(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@20
    monitor-exit v1

    #@21
    .line 419
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
    .line 1751
    array-length v3, p1

    #@2
    move v1, v2

    #@3
    :goto_0
    if-ge v1, v3, :cond_1

    #@5
    aget-object v0, p1, v1

    #@7
    .line 1752
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
    .line 1751
    :cond_0
    add-int/lit8 v1, v1, 0x1

    #@11
    goto :goto_0

    #@12
    .line 1754
    .end local v0    # "arg":Ljava/lang/String;
    :cond_1
    return v2
.end method

.method private callCallbackForRequest(Lcom/android/server/ConnectivityService$NetworkRequestInfo;Lcom/android/server/connectivity/NetworkAgentInfo;I)V
    .locals 6
    .param p1, "nri"    # Lcom/android/server/ConnectivityService$NetworkRequestInfo;
    .param p2, "networkAgent"    # Lcom/android/server/connectivity/NetworkAgentInfo;
    .param p3, "notificationType"    # I

    #@0
    .prologue
    .line 4100
    iget-object v3, p1, Lcom/android/server/ConnectivityService$NetworkRequestInfo;->messenger:Landroid/os/Messenger;

    #@2
    if-nez v3, :cond_0

    #@4
    return-void

    #@5
    .line 4101
    :cond_0
    new-instance v0, Landroid/os/Bundle;

    #@7
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    #@a
    .line 4102
    .local v0, "bundle":Landroid/os/Bundle;
    const-class v3, Landroid/net/NetworkRequest;

    #@c
    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    #@f
    move-result-object v3

    #@10
    .line 4103
    new-instance v4, Landroid/net/NetworkRequest;

    #@12
    iget-object v5, p1, Lcom/android/server/ConnectivityService$NetworkRequestInfo;->request:Landroid/net/NetworkRequest;

    #@14
    invoke-direct {v4, v5}, Landroid/net/NetworkRequest;-><init>(Landroid/net/NetworkRequest;)V

    #@17
    .line 4102
    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    #@1a
    .line 4104
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    #@1d
    move-result-object v2

    #@1e
    .line 4105
    .local v2, "msg":Landroid/os/Message;
    const v3, 0x80005

    #@21
    if-eq p3, v3, :cond_1

    #@23
    .line 4106
    const v3, 0x80008

    #@26
    if-eq p3, v3, :cond_1

    #@28
    .line 4107
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
    .line 4109
    :cond_1
    packed-switch p3, :pswitch_data_0

    #@36
    .line 4125
    :goto_0
    :pswitch_0
    iput p3, v2, Landroid/os/Message;->what:I

    #@38
    .line 4126
    invoke-virtual {v2, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    #@3b
    .line 4132
    :try_start_0
    iget-object v3, p1, Lcom/android/server/ConnectivityService$NetworkRequestInfo;->messenger:Landroid/os/Messenger;

    #@3d
    invoke-virtual {v3, v2}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@40
    .line 4099
    :goto_1
    return-void

    #@41
    .line 4111
    :pswitch_1
    const/16 v3, 0x7530

    #@43
    iput v3, v2, Landroid/os/Message;->arg1:I

    #@45
    goto :goto_0

    #@46
    .line 4115
    :pswitch_2
    const-class v3, Landroid/net/NetworkCapabilities;

    #@48
    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    #@4b
    move-result-object v3

    #@4c
    .line 4116
    new-instance v4, Landroid/net/NetworkCapabilities;

    #@4e
    iget-object v5, p2, Lcom/android/server/connectivity/NetworkAgentInfo;->networkCapabilities:Landroid/net/NetworkCapabilities;

    #@50
    invoke-direct {v4, v5}, Landroid/net/NetworkCapabilities;-><init>(Landroid/net/NetworkCapabilities;)V

    #@53
    .line 4115
    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    #@56
    goto :goto_0

    #@57
    .line 4120
    :pswitch_3
    const-class v3, Landroid/net/LinkProperties;

    #@59
    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    #@5c
    move-result-object v3

    #@5d
    .line 4121
    new-instance v4, Landroid/net/LinkProperties;

    #@5f
    iget-object v5, p2, Lcom/android/server/connectivity/NetworkAgentInfo;->linkProperties:Landroid/net/LinkProperties;

    #@61
    invoke-direct {v4, v5}, Landroid/net/LinkProperties;-><init>(Landroid/net/LinkProperties;)V

    #@64
    .line 4120
    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    #@67
    goto :goto_0

    #@68
    .line 4133
    :catch_0
    move-exception v1

    #@69
    .line 4135
    .local v1, "e":Landroid/os/RemoteException;
    new-instance v3, Ljava/lang/StringBuilder;

    #@6b
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@6e
    const-string/jumbo v4, "RemoteException caught trying to send a callback msg for "

    #@71
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@74
    move-result-object v3

    #@75
    iget-object v4, p1, Lcom/android/server/ConnectivityService$NetworkRequestInfo;->request:Landroid/net/NetworkRequest;

    #@77
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@7a
    move-result-object v3

    #@7b
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@7e
    move-result-object v3

    #@7f
    invoke-static {v3}, Lcom/android/server/ConnectivityService;->loge(Ljava/lang/String;)V

    #@82
    goto :goto_1

    #@83
    .line 4109
    nop

    #@84
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
    .line 2713
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
    .line 2714
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
    .line 2713
    if-eqz v0, :cond_1

    #@1e
    .line 2715
    :cond_0
    const/4 p1, 0x0

    #@1f
    .line 2717
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
    .line 2950
    .local p0, "value":Ljava/lang/Object;, "TT;"
    if-nez p0, :cond_0

    #@2
    .line 2951
    new-instance v0, Ljava/lang/NullPointerException;

    #@4
    invoke-direct {v0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@7
    throw v0

    #@8
    .line 2953
    :cond_0
    return-object p0
.end method

.method private createInternetRequestForTransport(I)Landroid/net/NetworkRequest;
    .locals 4
    .param p1, "transportType"    # I

    #@0
    .prologue
    const/4 v3, -0x1

    #@1
    .line 770
    new-instance v0, Landroid/net/NetworkCapabilities;

    #@3
    invoke-direct {v0}, Landroid/net/NetworkCapabilities;-><init>()V

    #@6
    .line 771
    .local v0, "netCap":Landroid/net/NetworkCapabilities;
    const/16 v1, 0xc

    #@8
    invoke-virtual {v0, v1}, Landroid/net/NetworkCapabilities;->addCapability(I)Landroid/net/NetworkCapabilities;

    #@b
    .line 772
    const/16 v1, 0xd

    #@d
    invoke-virtual {v0, v1}, Landroid/net/NetworkCapabilities;->addCapability(I)Landroid/net/NetworkCapabilities;

    #@10
    .line 773
    if-le p1, v3, :cond_0

    #@12
    .line 774
    invoke-virtual {v0, p1}, Landroid/net/NetworkCapabilities;->addTransportType(I)Landroid/net/NetworkCapabilities;

    #@15
    .line 776
    :cond_0
    new-instance v1, Landroid/net/NetworkRequest;

    #@17
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->nextNetworkRequestId()I

    #@1a
    move-result v2

    #@1b
    invoke-direct {v1, v0, v3, v2}, Landroid/net/NetworkRequest;-><init>(Landroid/net/NetworkCapabilities;II)V

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
    .line 3090
    invoke-virtual {p1}, Lcom/android/server/connectivity/Vpn;->getVpnInfo()Lcom/android/internal/net/VpnInfo;

    #@5
    move-result-object v1

    #@6
    .line 3091
    .local v1, "info":Lcom/android/internal/net/VpnInfo;
    if-nez v1, :cond_0

    #@8
    .line 3092
    return-object v4

    #@9
    .line 3094
    :cond_0
    invoke-virtual {p1}, Lcom/android/server/connectivity/Vpn;->getUnderlyingNetworks()[Landroid/net/Network;

    #@c
    move-result-object v3

    #@d
    .line 3097
    .local v3, "underlyingNetworks":[Landroid/net/Network;
    if-nez v3, :cond_3

    #@f
    .line 3098
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->getDefaultNetwork()Lcom/android/server/connectivity/NetworkAgentInfo;

    #@12
    move-result-object v0

    #@13
    .line 3099
    .local v0, "defaultNetwork":Lcom/android/server/connectivity/NetworkAgentInfo;
    if-eqz v0, :cond_1

    #@15
    iget-object v5, v0, Lcom/android/server/connectivity/NetworkAgentInfo;->linkProperties:Landroid/net/LinkProperties;

    #@17
    if-eqz v5, :cond_1

    #@19
    .line 3100
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
    .line 3108
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
    .line 3102
    .restart local v1    # "info":Lcom/android/internal/net/VpnInfo;
    :cond_3
    array-length v5, v3

    #@2c
    if-lez v5, :cond_1

    #@2e
    .line 3103
    aget-object v5, v3, v6

    #@30
    invoke-virtual {p0, v5}, Lcom/android/server/ConnectivityService;->getLinkProperties(Landroid/net/Network;)Landroid/net/LinkProperties;

    #@33
    move-result-object v2

    #@34
    .line 3104
    .local v2, "linkProperties":Landroid/net/LinkProperties;
    if-eqz v2, :cond_1

    #@36
    .line 3105
    invoke-virtual {v2}, Landroid/net/LinkProperties;->getInterfaceName()Ljava/lang/String;

    #@39
    move-result-object v5

    #@3a
    iput-object v5, v1, Lcom/android/internal/net/VpnInfo;->primaryUnderlyingIface:Ljava/lang/String;

    #@3c
    goto :goto_0
.end method

.method private enforceAccessPermission()V
    .locals 3

    #@0
    .prologue
    .line 1429
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;

    #@2
    .line 1430
    const-string/jumbo v1, "android.permission.ACCESS_NETWORK_STATE"

    #@5
    .line 1431
    const-string/jumbo v2, "ConnectivityService"

    #@8
    .line 1429
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    #@b
    .line 1428
    return-void
.end method

.method private enforceChangePermission()V
    .locals 4

    #@0
    .prologue
    .line 1435
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    #@3
    move-result v0

    #@4
    .line 1436
    .local v0, "uid":I
    iget-object v1, p0, Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;

    #@6
    .line 1437
    iget-object v2, p0, Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;

    #@8
    .line 1436
    invoke-static {v2, v0}, Landroid/provider/Settings;->getPackageNameForUid(Landroid/content/Context;I)Ljava/lang/String;

    #@b
    move-result-object v2

    #@c
    .line 1437
    const/4 v3, 0x1

    #@d
    .line 1436
    invoke-static {v1, v0, v2, v3}, Landroid/provider/Settings;->checkAndNoteChangeNetworkStateOperation(Landroid/content/Context;ILjava/lang/String;Z)Z

    #@10
    .line 1434
    return-void
.end method

.method private enforceConnectivityInternalPermission()V
    .locals 3

    #@0
    .prologue
    .line 1448
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;

    #@2
    .line 1449
    const-string/jumbo v1, "android.permission.CONNECTIVITY_INTERNAL"

    #@5
    .line 1450
    const-string/jumbo v2, "ConnectivityService"

    #@8
    .line 1448
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    #@b
    .line 1447
    return-void
.end method

.method private enforceCrossUserPermission(I)V
    .locals 3
    .param p1, "userId"    # I

    #@0
    .prologue
    .line 1413
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    #@3
    move-result v0

    #@4
    if-ne p1, v0, :cond_0

    #@6
    .line 1415
    return-void

    #@7
    .line 1417
    :cond_0
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;

    #@9
    .line 1418
    const-string/jumbo v1, "android.permission.INTERACT_ACROSS_USERS_FULL"

    #@c
    .line 1419
    const-string/jumbo v2, "ConnectivityService"

    #@f
    .line 1417
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    #@12
    .line 1412
    return-void
.end method

.method private enforceInternetPermission()V
    .locals 3

    #@0
    .prologue
    .line 1423
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;

    #@2
    .line 1424
    const-string/jumbo v1, "android.permission.INTERNET"

    #@5
    .line 1425
    const-string/jumbo v2, "ConnectivityService"

    #@8
    .line 1423
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    #@b
    .line 1422
    return-void
.end method

.method private enforceMeteredApnPolicy(Landroid/net/NetworkCapabilities;)V
    .locals 6
    .param p1, "networkCapabilities"    # Landroid/net/NetworkCapabilities;

    #@0
    .prologue
    const/16 v5, 0xb

    #@2
    .line 3622
    invoke-virtual {p1, v5}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    #@5
    move-result v2

    #@6
    if-nez v2, :cond_0

    #@8
    .line 3624
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    #@b
    move-result v0

    #@c
    .line 3625
    .local v0, "uid":I
    iget-object v3, p0, Lcom/android/server/ConnectivityService;->mRulesLock:Ljava/lang/Object;

    #@e
    monitor-enter v3

    #@f
    .line 3626
    :try_start_0
    iget-object v2, p0, Lcom/android/server/ConnectivityService;->mUidRules:Landroid/util/SparseIntArray;

    #@11
    const/4 v4, 0x0

    #@12
    invoke-virtual {v2, v0, v4}, Landroid/util/SparseIntArray;->get(II)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@15
    move-result v1

    #@16
    .local v1, "uidRules":I
    monitor-exit v3

    #@17
    .line 3628
    and-int/lit8 v2, v1, 0x3

    #@19
    if-eqz v2, :cond_0

    #@1b
    .line 3631
    invoke-virtual {p1, v5}, Landroid/net/NetworkCapabilities;->addCapability(I)Landroid/net/NetworkCapabilities;

    #@1e
    .line 3620
    .end local v0    # "uid":I
    .end local v1    # "uidRules":I
    :cond_0
    return-void

    #@1f
    .line 3625
    .restart local v0    # "uid":I
    :catchall_0
    move-exception v2

    #@20
    monitor-exit v3

    #@21
    throw v2
.end method

.method private enforceNetworkRequestPermissions(Landroid/net/NetworkCapabilities;)V
    .locals 1
    .param p1, "networkCapabilities"    # Landroid/net/NetworkCapabilities;

    #@0
    .prologue
    .line 3595
    const/16 v0, 0xd

    #@2
    invoke-virtual {p1, v0}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    #@5
    move-result v0

    #@6
    if-nez v0, :cond_0

    #@8
    .line 3596
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->enforceConnectivityInternalPermission()V

    #@b
    .line 3594
    :goto_0
    return-void

    #@c
    .line 3598
    :cond_0
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->enforceChangePermission()V

    #@f
    goto :goto_0
.end method

.method private enforceTetherAccessPermission()V
    .locals 3

    #@0
    .prologue
    .line 1442
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;

    #@2
    .line 1443
    const-string/jumbo v1, "android.permission.ACCESS_NETWORK_STATE"

    #@5
    .line 1444
    const-string/jumbo v2, "ConnectivityService"

    #@8
    .line 1442
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    #@b
    .line 1441
    return-void
.end method

.method private ensureImmutableCapabilities(Landroid/net/NetworkCapabilities;)V
    .locals 2
    .param p1, "networkCapabilities"    # Landroid/net/NetworkCapabilities;

    #@0
    .prologue
    .line 3558
    const/16 v0, 0x10

    #@2
    invoke-virtual {p1, v0}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    #@5
    move-result v0

    #@6
    if-eqz v0, :cond_0

    #@8
    .line 3559
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@a
    .line 3560
    const-string/jumbo v1, "Cannot request network with NET_CAPABILITY_VALIDATED"

    #@d
    .line 3559
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@10
    throw v0

    #@11
    .line 3562
    :cond_0
    const/16 v0, 0x11

    #@13
    invoke-virtual {p1, v0}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    #@16
    move-result v0

    #@17
    if-eqz v0, :cond_1

    #@19
    .line 3563
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@1b
    .line 3564
    const-string/jumbo v1, "Cannot request network with NET_CAPABILITY_CAPTIVE_PORTAL"

    #@1e
    .line 3563
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@21
    throw v0

    #@22
    .line 3557
    :cond_1
    return-void
.end method

.method private findExistingNetworkRequestInfo(Landroid/app/PendingIntent;)Lcom/android/server/ConnectivityService$NetworkRequestInfo;
    .locals 6
    .param p1, "pendingIntent"    # Landroid/app/PendingIntent;

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    .line 2203
    invoke-virtual {p1}, Landroid/app/PendingIntent;->getIntent()Landroid/content/Intent;

    #@4
    move-result-object v3

    #@5
    .line 2204
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
    .line 2205
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/net/NetworkRequest;Lcom/android/server/ConnectivityService$NetworkRequestInfo;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    #@1e
    move-result-object v4

    #@1f
    check-cast v4, Lcom/android/server/ConnectivityService$NetworkRequestInfo;

    #@21
    iget-object v2, v4, Lcom/android/server/ConnectivityService$NetworkRequestInfo;->mPendingIntent:Landroid/app/PendingIntent;

    #@23
    .line 2206
    .local v2, "existingPendingIntent":Landroid/app/PendingIntent;
    if-eqz v2, :cond_0

    #@25
    .line 2207
    invoke-virtual {v2}, Landroid/app/PendingIntent;->getIntent()Landroid/content/Intent;

    #@28
    move-result-object v4

    #@29
    invoke-virtual {v4, v3}, Landroid/content/Intent;->filterEquals(Landroid/content/Intent;)Z

    #@2c
    move-result v4

    #@2d
    .line 2206
    if-eqz v4, :cond_0

    #@2f
    .line 2208
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    #@32
    move-result-object v4

    #@33
    check-cast v4, Lcom/android/server/ConnectivityService$NetworkRequestInfo;

    #@35
    return-object v4

    #@36
    .line 2211
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/net/NetworkRequest;Lcom/android/server/ConnectivityService$NetworkRequestInfo;>;"
    .end local v2    # "existingPendingIntent":Landroid/app/PendingIntent;
    :cond_1
    return-object v5
.end method

.method private flushVmDnsCache()V
    .locals 5

    #@0
    .prologue
    .line 1715
    new-instance v2, Landroid/content/Intent;

    #@2
    const-string/jumbo v3, "android.intent.action.CLEAR_DNS_CACHE"

    #@5
    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    #@8
    .line 1716
    .local v2, "intent":Landroid/content/Intent;
    const/high16 v3, 0x20000000

    #@a
    invoke-virtual {v2, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    #@d
    .line 1720
    const/high16 v3, 0x4000000

    #@f
    invoke-virtual {v2, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    #@12
    .line 1721
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    #@15
    move-result-wide v0

    #@16
    .line 1723
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
    .line 1725
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@20
    .line 1711
    return-void

    #@21
    .line 1724
    :catchall_0
    move-exception v3

    #@22
    .line 1725
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@25
    .line 1724
    throw v3
.end method

.method private getDefaultNetwork()Lcom/android/server/connectivity/NetworkAgentInfo;
    .locals 2

    #@0
    .prologue
    .line 3792
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
    .line 2686
    iget-object v2, p0, Lcom/android/server/ConnectivityService;->mProxyLock:Ljava/lang/Object;

    #@2
    monitor-enter v2

    #@3
    .line 2687
    :try_start_0
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mGlobalProxy:Landroid/net/ProxyInfo;

    #@5
    .line 2688
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
    .line 2689
    return-object v0

    #@d
    .line 2688
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mDefaultProxy:Landroid/net/ProxyInfo;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@f
    goto :goto_0

    #@10
    .line 2686
    .end local v0    # "ret":Landroid/net/ProxyInfo;
    :catchall_0
    move-exception v1

    #@11
    monitor-exit v2

    #@12
    throw v1
.end method

.method private getFilteredNetworkInfo(Landroid/net/NetworkInfo;Landroid/net/LinkProperties;I)Landroid/net/NetworkInfo;
    .locals 3
    .param p1, "info"    # Landroid/net/NetworkInfo;
    .param p2, "lp"    # Landroid/net/LinkProperties;
    .param p3, "uid"    # I

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 949
    if-eqz p1, :cond_0

    #@3
    invoke-direct {p0, p2, p3}, Lcom/android/server/ConnectivityService;->isNetworkWithLinkPropertiesBlocked(Landroid/net/LinkProperties;I)Z

    #@6
    move-result v1

    #@7
    if-eqz v1, :cond_0

    #@9
    .line 951
    new-instance v0, Landroid/net/NetworkInfo;

    #@b
    invoke-direct {v0, p1}, Landroid/net/NetworkInfo;-><init>(Landroid/net/NetworkInfo;)V

    #@e
    .line 952
    .end local p1    # "info":Landroid/net/NetworkInfo;
    .local v0, "info":Landroid/net/NetworkInfo;
    sget-object v1, Landroid/net/NetworkInfo$DetailedState;->BLOCKED:Landroid/net/NetworkInfo$DetailedState;

    #@10
    invoke-virtual {v0, v1, v2, v2}, Landroid/net/NetworkInfo;->setDetailedState(Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;Ljava/lang/String;)V

    #@13
    move-object p1, v0

    #@14
    .line 958
    .end local v0    # "info":Landroid/net/NetworkInfo;
    .restart local p1    # "info":Landroid/net/NetworkInfo;
    :cond_0
    if-eqz p1, :cond_1

    #@16
    iget-object v1, p0, Lcom/android/server/ConnectivityService;->mLockdownTracker:Lcom/android/server/net/LockdownVpnTracker;

    #@18
    if-eqz v1, :cond_1

    #@1a
    .line 959
    iget-object v1, p0, Lcom/android/server/ConnectivityService;->mLockdownTracker:Lcom/android/server/net/LockdownVpnTracker;

    #@1c
    invoke-virtual {v1, p1}, Lcom/android/server/net/LockdownVpnTracker;->augmentNetworkInfo(Landroid/net/NetworkInfo;)Landroid/net/NetworkInfo;

    #@1f
    move-result-object p1

    #@20
    .line 962
    :cond_1
    return-object p1
.end method

.method private getFilteredNetworkState(II)Landroid/net/NetworkState;
    .locals 13
    .param p1, "networkType"    # I
    .param p2, "uid"    # I

    #@0
    .prologue
    const/4 v6, 0x0

    #@1
    .line 828
    const/4 v1, 0x0

    #@2
    .line 829
    .local v1, "info":Landroid/net/NetworkInfo;
    const/4 v2, 0x0

    #@3
    .line 830
    .local v2, "lp":Landroid/net/LinkProperties;
    const/4 v3, 0x0

    #@4
    .line 831
    .local v3, "nc":Landroid/net/NetworkCapabilities;
    const/4 v4, 0x0

    #@5
    .line 832
    .local v4, "network":Landroid/net/Network;
    const/4 v5, 0x0

    #@6
    .line 834
    .local v5, "subscriberId":Ljava/lang/String;
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mLegacyTypeTracker:Lcom/android/server/ConnectivityService$LegacyTypeTracker;

    #@8
    invoke-virtual {v0, p1}, Lcom/android/server/ConnectivityService$LegacyTypeTracker;->isTypeSupported(I)Z

    #@b
    move-result v0

    #@c
    if-eqz v0, :cond_0

    #@e
    .line 835
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mLegacyTypeTracker:Lcom/android/server/ConnectivityService$LegacyTypeTracker;

    #@10
    invoke-virtual {v0, p1}, Lcom/android/server/ConnectivityService$LegacyTypeTracker;->getNetworkForType(I)Lcom/android/server/connectivity/NetworkAgentInfo;

    #@13
    move-result-object v9

    #@14
    .line 836
    .local v9, "nai":Lcom/android/server/connectivity/NetworkAgentInfo;
    if-eqz v9, :cond_2

    #@16
    .line 837
    monitor-enter v9

    #@17
    .line 838
    :try_start_0
    new-instance v7, Landroid/net/NetworkInfo;

    #@19
    iget-object v0, v9, Lcom/android/server/connectivity/NetworkAgentInfo;->networkInfo:Landroid/net/NetworkInfo;

    #@1b
    invoke-direct {v7, v0}, Landroid/net/NetworkInfo;-><init>(Landroid/net/NetworkInfo;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1e
    .line 839
    .end local v1    # "info":Landroid/net/NetworkInfo;
    .local v7, "info":Landroid/net/NetworkInfo;
    :try_start_1
    new-instance v8, Landroid/net/LinkProperties;

    #@20
    iget-object v0, v9, Lcom/android/server/connectivity/NetworkAgentInfo;->linkProperties:Landroid/net/LinkProperties;

    #@22
    invoke-direct {v8, v0}, Landroid/net/LinkProperties;-><init>(Landroid/net/LinkProperties;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    #@25
    .line 840
    .local v8, "lp":Landroid/net/LinkProperties;
    :try_start_2
    new-instance v10, Landroid/net/NetworkCapabilities;

    #@27
    .end local v2    # "lp":Landroid/net/LinkProperties;
    iget-object v0, v9, Lcom/android/server/connectivity/NetworkAgentInfo;->networkCapabilities:Landroid/net/NetworkCapabilities;

    #@29
    invoke-direct {v10, v0}, Landroid/net/NetworkCapabilities;-><init>(Landroid/net/NetworkCapabilities;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    #@2c
    .line 843
    .local v10, "nc":Landroid/net/NetworkCapabilities;
    :try_start_3
    iget-object v4, v9, Lcom/android/server/connectivity/NetworkAgentInfo;->network:Landroid/net/Network;

    #@2e
    .line 844
    .end local v3    # "nc":Landroid/net/NetworkCapabilities;
    .local v4, "network":Landroid/net/Network;
    iget-object v0, v9, Lcom/android/server/connectivity/NetworkAgentInfo;->networkMisc:Landroid/net/NetworkMisc;

    #@30
    if-eqz v0, :cond_1

    #@32
    iget-object v0, v9, Lcom/android/server/connectivity/NetworkAgentInfo;->networkMisc:Landroid/net/NetworkMisc;

    #@34
    iget-object v5, v0, Landroid/net/NetworkMisc;->subscriberId:Ljava/lang/String;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    #@36
    .end local v5    # "subscriberId":Ljava/lang/String;
    :goto_0
    monitor-exit v9

    #@37
    .line 846
    invoke-virtual {v7, p1}, Landroid/net/NetworkInfo;->setType(I)V

    #@3a
    move-object v3, v10

    #@3b
    .end local v10    # "nc":Landroid/net/NetworkCapabilities;
    .local v3, "nc":Landroid/net/NetworkCapabilities;
    move-object v2, v8

    #@3c
    .end local v8    # "lp":Landroid/net/LinkProperties;
    .local v2, "lp":Landroid/net/LinkProperties;
    move-object v1, v7

    #@3d
    .line 855
    .end local v4    # "network":Landroid/net/Network;
    .end local v7    # "info":Landroid/net/NetworkInfo;
    .local v1, "info":Landroid/net/NetworkInfo;
    :goto_1
    invoke-direct {p0, v1, v2, p2}, Lcom/android/server/ConnectivityService;->getFilteredNetworkInfo(Landroid/net/NetworkInfo;Landroid/net/LinkProperties;I)Landroid/net/NetworkInfo;

    #@40
    move-result-object v1

    #@41
    .line 858
    .end local v1    # "info":Landroid/net/NetworkInfo;
    .end local v2    # "lp":Landroid/net/LinkProperties;
    .end local v3    # "nc":Landroid/net/NetworkCapabilities;
    .end local v9    # "nai":Lcom/android/server/connectivity/NetworkAgentInfo;
    :cond_0
    new-instance v0, Landroid/net/NetworkState;

    #@43
    invoke-direct/range {v0 .. v6}, Landroid/net/NetworkState;-><init>(Landroid/net/NetworkInfo;Landroid/net/LinkProperties;Landroid/net/NetworkCapabilities;Landroid/net/Network;Ljava/lang/String;Ljava/lang/String;)V

    #@46
    return-object v0

    #@47
    .line 844
    .restart local v4    # "network":Landroid/net/Network;
    .restart local v5    # "subscriberId":Ljava/lang/String;
    .restart local v7    # "info":Landroid/net/NetworkInfo;
    .restart local v8    # "lp":Landroid/net/LinkProperties;
    .restart local v9    # "nai":Lcom/android/server/connectivity/NetworkAgentInfo;
    .restart local v10    # "nc":Landroid/net/NetworkCapabilities;
    :cond_1
    const/4 v5, 0x0

    #@48
    goto :goto_0

    #@49
    .line 837
    .end local v7    # "info":Landroid/net/NetworkInfo;
    .end local v8    # "lp":Landroid/net/LinkProperties;
    .end local v10    # "nc":Landroid/net/NetworkCapabilities;
    .local v1, "info":Landroid/net/NetworkInfo;
    .local v2, "lp":Landroid/net/LinkProperties;
    .local v3, "nc":Landroid/net/NetworkCapabilities;
    .local v4, "network":Landroid/net/Network;
    :catchall_0
    move-exception v0

    #@4a
    .end local v1    # "info":Landroid/net/NetworkInfo;
    .end local v2    # "lp":Landroid/net/LinkProperties;
    .end local v3    # "nc":Landroid/net/NetworkCapabilities;
    .end local v4    # "network":Landroid/net/Network;
    :goto_2
    monitor-exit v9

    #@4b
    throw v0

    #@4c
    .line 848
    .restart local v1    # "info":Landroid/net/NetworkInfo;
    .restart local v2    # "lp":Landroid/net/LinkProperties;
    .restart local v3    # "nc":Landroid/net/NetworkCapabilities;
    .restart local v4    # "network":Landroid/net/Network;
    :cond_2
    new-instance v1, Landroid/net/NetworkInfo;

    #@4e
    .end local v1    # "info":Landroid/net/NetworkInfo;
    invoke-static {p1}, Landroid/net/ConnectivityManager;->getNetworkTypeName(I)Ljava/lang/String;

    #@51
    move-result-object v0

    #@52
    const-string/jumbo v11, ""

    #@55
    const/4 v12, 0x0

    #@56
    invoke-direct {v1, p1, v12, v0, v11}, Landroid/net/NetworkInfo;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    #@59
    .line 849
    .local v1, "info":Landroid/net/NetworkInfo;
    sget-object v0, Landroid/net/NetworkInfo$DetailedState;->DISCONNECTED:Landroid/net/NetworkInfo$DetailedState;

    #@5b
    invoke-virtual {v1, v0, v6, v6}, Landroid/net/NetworkInfo;->setDetailedState(Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;Ljava/lang/String;)V

    #@5e
    .line 850
    const/4 v0, 0x1

    #@5f
    invoke-virtual {v1, v0}, Landroid/net/NetworkInfo;->setIsAvailable(Z)V

    #@62
    .line 851
    new-instance v2, Landroid/net/LinkProperties;

    #@64
    .end local v2    # "lp":Landroid/net/LinkProperties;
    invoke-direct {v2}, Landroid/net/LinkProperties;-><init>()V

    #@67
    .line 852
    .local v2, "lp":Landroid/net/LinkProperties;
    new-instance v3, Landroid/net/NetworkCapabilities;

    #@69
    .end local v3    # "nc":Landroid/net/NetworkCapabilities;
    invoke-direct {v3}, Landroid/net/NetworkCapabilities;-><init>()V

    #@6c
    .line 853
    .local v3, "nc":Landroid/net/NetworkCapabilities;
    const/4 v4, 0x0

    #@6d
    goto :goto_1

    #@6e
    .line 837
    .end local v1    # "info":Landroid/net/NetworkInfo;
    .local v2, "lp":Landroid/net/LinkProperties;
    .local v3, "nc":Landroid/net/NetworkCapabilities;
    .restart local v7    # "info":Landroid/net/NetworkInfo;
    :catchall_1
    move-exception v0

    #@6f
    move-object v1, v7

    #@70
    .end local v7    # "info":Landroid/net/NetworkInfo;
    .restart local v1    # "info":Landroid/net/NetworkInfo;
    goto :goto_2

    #@71
    .end local v1    # "info":Landroid/net/NetworkInfo;
    .end local v2    # "lp":Landroid/net/LinkProperties;
    .restart local v7    # "info":Landroid/net/NetworkInfo;
    .restart local v8    # "lp":Landroid/net/LinkProperties;
    :catchall_2
    move-exception v0

    #@72
    move-object v2, v8

    #@73
    .end local v8    # "lp":Landroid/net/LinkProperties;
    .local v2, "lp":Landroid/net/LinkProperties;
    move-object v1, v7

    #@74
    .end local v7    # "info":Landroid/net/NetworkInfo;
    .restart local v1    # "info":Landroid/net/NetworkInfo;
    goto :goto_2

    #@75
    .end local v1    # "info":Landroid/net/NetworkInfo;
    .end local v2    # "lp":Landroid/net/LinkProperties;
    .end local v3    # "nc":Landroid/net/NetworkCapabilities;
    .end local v4    # "network":Landroid/net/Network;
    .restart local v7    # "info":Landroid/net/NetworkInfo;
    .restart local v8    # "lp":Landroid/net/LinkProperties;
    .restart local v10    # "nc":Landroid/net/NetworkCapabilities;
    :catchall_3
    move-exception v0

    #@76
    move-object v3, v10

    #@77
    .end local v10    # "nc":Landroid/net/NetworkCapabilities;
    .local v3, "nc":Landroid/net/NetworkCapabilities;
    move-object v2, v8

    #@78
    .end local v8    # "lp":Landroid/net/LinkProperties;
    .restart local v2    # "lp":Landroid/net/LinkProperties;
    move-object v1, v7

    #@79
    .end local v7    # "info":Landroid/net/NetworkInfo;
    .restart local v1    # "info":Landroid/net/NetworkInfo;
    goto :goto_2
.end method

.method private getNetworkAgentInfoForNetwork(Landroid/net/Network;)Lcom/android/server/connectivity/NetworkAgentInfo;
    .locals 3
    .param p1, "network"    # Landroid/net/Network;

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 862
    if-nez p1, :cond_0

    #@3
    .line 863
    return-object v0

    #@4
    .line 865
    :cond_0
    iget-object v1, p0, Lcom/android/server/ConnectivityService;->mNetworkForNetId:Landroid/util/SparseArray;

    #@6
    monitor-enter v1

    #@7
    .line 866
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
    .line 865
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
    .line 1182
    if-eqz p1, :cond_1

    #@3
    .line 1183
    monitor-enter p1

    #@4
    .line 1184
    :try_start_0
    iget-object v0, p1, Lcom/android/server/connectivity/NetworkAgentInfo;->networkCapabilities:Landroid/net/NetworkCapabilities;

    #@6
    if-eqz v0, :cond_0

    #@8
    .line 1185
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
    .line 1189
    :cond_1
    return-object v1

    #@13
    .line 1183
    :catchall_0
    move-exception v0

    #@14
    monitor-exit p1

    #@15
    throw v0
.end method

.method private getProvisioningUrlBaseFromFile()Ljava/lang/String;
    .locals 14

    #@0
    .prologue
    const/4 v13, 0x0

    #@1
    .line 3336
    const/4 v6, 0x0

    #@2
    .line 3337
    .local v6, "fileReader":Ljava/io/FileReader;
    const/4 v10, 0x0

    #@3
    .line 3338
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
    .line 3341
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
    .line 3342
    .end local v6    # "fileReader":Ljava/io/FileReader;
    .local v7, "fileReader":Ljava/io/FileReader;
    :try_start_1
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    #@17
    move-result-object v10

    #@18
    .line 3343
    .local v10, "parser":Lorg/xmlpull/v1/XmlPullParser;
    invoke-interface {v10, v7}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/Reader;)V

    #@1b
    .line 3344
    const-string/jumbo v11, "provisioningUrls"

    #@1e
    invoke-static {v10, v11}, Lcom/android/internal/util/XmlUtils;->beginDocument(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V

    #@21
    .line 3347
    :cond_0
    :goto_0
    invoke-static {v10}, Lcom/android/internal/util/XmlUtils;->nextElement(Lorg/xmlpull/v1/XmlPullParser;)V

    #@24
    .line 3349
    invoke-interface {v10}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_b
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_c
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    #@27
    move-result-object v5

    #@28
    .line 3350
    .local v5, "element":Ljava/lang/String;
    if-nez v5, :cond_2

    #@2a
    .line 3377
    if-eqz v7, :cond_1

    #@2c
    .line 3379
    :try_start_2
    invoke-virtual {v7}, Ljava/io/FileReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3

    #@2f
    .line 3369
    :cond_1
    :goto_1
    return-object v13

    #@30
    .line 3352
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
    .line 3353
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
    .line 3355
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
    .line 3356
    const-string/jumbo v11, "mnc"

    #@4e
    const/4 v12, 0x0

    #@4f
    invoke-interface {v10, v12, v11}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@52
    move-result-object v9

    #@53
    .line 3357
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
    .line 3358
    invoke-interface {v10}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    #@60
    .line 3359
    invoke-interface {v10}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    #@63
    move-result v11

    #@64
    const/4 v12, 0x4

    #@65
    if-ne v11, v12, :cond_0

    #@67
    .line 3360
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
    .line 3377
    if-eqz v7, :cond_3

    #@6d
    .line 3379
    :try_start_5
    invoke-virtual {v7}, Ljava/io/FileReader;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0

    #@70
    .line 3360
    :cond_3
    :goto_2
    return-object v11

    #@71
    .line 3380
    :catch_0
    move-exception v2

    #@72
    .local v2, "e":Ljava/io/IOException;
    goto :goto_2

    #@73
    .line 3364
    .end local v2    # "e":Ljava/io/IOException;
    .end local v9    # "mnc":Ljava/lang/String;
    :catch_1
    move-exception v3

    #@74
    .line 3365
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
    .line 3370
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
    .line 3371
    .end local v7    # "fileReader":Ljava/io/FileReader;
    :goto_3
    :try_start_7
    const-string/jumbo v11, "Carrier Provisioning Urls file not found"

    #@91
    invoke-static {v11}, Lcom/android/server/ConnectivityService;->loge(Ljava/lang/String;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    #@94
    .line 3377
    if-eqz v6, :cond_4

    #@96
    .line 3379
    :try_start_8
    invoke-virtual {v6}, Ljava/io/FileReader;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_8

    #@99
    .line 3383
    .end local v1    # "e":Ljava/io/FileNotFoundException;
    :cond_4
    :goto_4
    return-object v13

    #@9a
    .line 3380
    .restart local v5    # "element":Ljava/lang/String;
    .restart local v7    # "fileReader":Ljava/io/FileReader;
    .restart local v10    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    :catch_3
    move-exception v2

    #@9b
    .restart local v2    # "e":Ljava/io/IOException;
    goto :goto_1

    #@9c
    .line 3374
    .end local v2    # "e":Ljava/io/IOException;
    .end local v5    # "element":Ljava/lang/String;
    .end local v7    # "fileReader":Ljava/io/FileReader;
    .restart local v6    # "fileReader":Ljava/io/FileReader;
    .local v10, "parser":Lorg/xmlpull/v1/XmlPullParser;
    :catch_4
    move-exception v2

    #@9d
    .line 3375
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
    .line 3377
    if-eqz v6, :cond_4

    #@b6
    .line 3379
    :try_start_a
    invoke-virtual {v6}, Ljava/io/FileReader;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_5

    #@b9
    goto :goto_4

    #@ba
    .line 3380
    :catch_5
    move-exception v2

    #@bb
    goto :goto_4

    #@bc
    .line 3372
    .end local v2    # "e":Ljava/io/IOException;
    .restart local v6    # "fileReader":Ljava/io/FileReader;
    .restart local v10    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    :catch_6
    move-exception v4

    #@bd
    .line 3373
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
    .line 3377
    if-eqz v6, :cond_4

    #@d6
    .line 3379
    :try_start_c
    invoke-virtual {v6}, Ljava/io/FileReader;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_7

    #@d9
    goto :goto_4

    #@da
    .line 3380
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
    .line 3376
    .end local v1    # "e":Ljava/io/FileNotFoundException;
    .end local v2    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v11

    #@df
    .line 3377
    :goto_7
    if-eqz v6, :cond_5

    #@e1
    .line 3379
    :try_start_d
    invoke-virtual {v6}, Ljava/io/FileReader;->close()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_9

    #@e4
    .line 3376
    :cond_5
    :goto_8
    throw v11

    #@e5
    .line 3380
    :catch_9
    move-exception v2

    #@e6
    .restart local v2    # "e":Ljava/io/IOException;
    goto :goto_8

    #@e7
    .line 3376
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
    .line 3370
    .local v6, "fileReader":Ljava/io/FileReader;
    .restart local v10    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    :catch_a
    move-exception v1

    #@eb
    .restart local v1    # "e":Ljava/io/FileNotFoundException;
    goto :goto_3

    #@ec
    .line 3372
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
    .line 3374
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

.method private getUnfilteredActiveNetworkState(I)Landroid/net/NetworkState;
    .locals 13
    .param p1, "uid"    # I

    #@0
    .prologue
    const/4 v12, 0x0

    #@1
    const/4 v6, 0x0

    #@2
    .line 884
    const/4 v1, 0x0

    #@3
    .line 885
    .local v1, "info":Landroid/net/NetworkInfo;
    const/4 v2, 0x0

    #@4
    .line 886
    .local v2, "lp":Landroid/net/LinkProperties;
    const/4 v3, 0x0

    #@5
    .line 887
    .local v3, "nc":Landroid/net/NetworkCapabilities;
    const/4 v4, 0x0

    #@6
    .line 888
    .local v4, "network":Landroid/net/Network;
    const/4 v5, 0x0

    #@7
    .line 890
    .local v5, "subscriberId":Ljava/lang/String;
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->getDefaultNetwork()Lcom/android/server/connectivity/NetworkAgentInfo;

    #@a
    move-result-object v9

    #@b
    .line 892
    .local v9, "nai":Lcom/android/server/connectivity/NetworkAgentInfo;
    invoke-direct {p0, p1}, Lcom/android/server/ConnectivityService;->getVpnUnderlyingNetworks(I)[Landroid/net/Network;

    #@e
    move-result-object v11

    #@f
    .line 893
    .local v11, "networks":[Landroid/net/Network;
    if-eqz v11, :cond_0

    #@11
    .line 899
    array-length v0, v11

    #@12
    if-lez v0, :cond_2

    #@14
    .line 900
    aget-object v0, v11, v12

    #@16
    invoke-direct {p0, v0}, Lcom/android/server/ConnectivityService;->getNetworkAgentInfoForNetwork(Landroid/net/Network;)Lcom/android/server/connectivity/NetworkAgentInfo;

    #@19
    move-result-object v9

    #@1a
    .line 906
    .end local v9    # "nai":Lcom/android/server/connectivity/NetworkAgentInfo;
    :cond_0
    :goto_0
    if-eqz v9, :cond_1

    #@1c
    .line 907
    monitor-enter v9

    #@1d
    .line 908
    :try_start_0
    new-instance v7, Landroid/net/NetworkInfo;

    #@1f
    iget-object v0, v9, Lcom/android/server/connectivity/NetworkAgentInfo;->networkInfo:Landroid/net/NetworkInfo;

    #@21
    invoke-direct {v7, v0}, Landroid/net/NetworkInfo;-><init>(Landroid/net/NetworkInfo;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@24
    .line 909
    .end local v1    # "info":Landroid/net/NetworkInfo;
    .local v7, "info":Landroid/net/NetworkInfo;
    :try_start_1
    new-instance v8, Landroid/net/LinkProperties;

    #@26
    iget-object v0, v9, Lcom/android/server/connectivity/NetworkAgentInfo;->linkProperties:Landroid/net/LinkProperties;

    #@28
    invoke-direct {v8, v0}, Landroid/net/LinkProperties;-><init>(Landroid/net/LinkProperties;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    #@2b
    .line 910
    .local v8, "lp":Landroid/net/LinkProperties;
    :try_start_2
    new-instance v10, Landroid/net/NetworkCapabilities;

    #@2d
    .end local v2    # "lp":Landroid/net/LinkProperties;
    iget-object v0, v9, Lcom/android/server/connectivity/NetworkAgentInfo;->networkCapabilities:Landroid/net/NetworkCapabilities;

    #@2f
    invoke-direct {v10, v0}, Landroid/net/NetworkCapabilities;-><init>(Landroid/net/NetworkCapabilities;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    #@32
    .line 913
    .local v10, "nc":Landroid/net/NetworkCapabilities;
    :try_start_3
    iget-object v4, v9, Lcom/android/server/connectivity/NetworkAgentInfo;->network:Landroid/net/Network;

    #@34
    .line 914
    .end local v3    # "nc":Landroid/net/NetworkCapabilities;
    .local v4, "network":Landroid/net/Network;
    iget-object v0, v9, Lcom/android/server/connectivity/NetworkAgentInfo;->networkMisc:Landroid/net/NetworkMisc;

    #@36
    if-eqz v0, :cond_3

    #@38
    iget-object v0, v9, Lcom/android/server/connectivity/NetworkAgentInfo;->networkMisc:Landroid/net/NetworkMisc;

    #@3a
    iget-object v5, v0, Landroid/net/NetworkMisc;->subscriberId:Ljava/lang/String;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    #@3c
    .end local v5    # "subscriberId":Ljava/lang/String;
    :goto_1
    monitor-exit v9

    #@3d
    move-object v3, v10

    #@3e
    .end local v10    # "nc":Landroid/net/NetworkCapabilities;
    .local v3, "nc":Landroid/net/NetworkCapabilities;
    move-object v2, v8

    #@3f
    .end local v8    # "lp":Landroid/net/LinkProperties;
    .local v2, "lp":Landroid/net/LinkProperties;
    move-object v1, v7

    #@40
    .line 918
    .end local v2    # "lp":Landroid/net/LinkProperties;
    .end local v3    # "nc":Landroid/net/NetworkCapabilities;
    .end local v4    # "network":Landroid/net/Network;
    .end local v7    # "info":Landroid/net/NetworkInfo;
    :cond_1
    new-instance v0, Landroid/net/NetworkState;

    #@42
    invoke-direct/range {v0 .. v6}, Landroid/net/NetworkState;-><init>(Landroid/net/NetworkInfo;Landroid/net/LinkProperties;Landroid/net/NetworkCapabilities;Landroid/net/Network;Ljava/lang/String;Ljava/lang/String;)V

    #@45
    return-object v0

    #@46
    .line 902
    .restart local v1    # "info":Landroid/net/NetworkInfo;
    .local v2, "lp":Landroid/net/LinkProperties;
    .local v3, "nc":Landroid/net/NetworkCapabilities;
    .local v4, "network":Landroid/net/Network;
    .restart local v5    # "subscriberId":Ljava/lang/String;
    .restart local v9    # "nai":Lcom/android/server/connectivity/NetworkAgentInfo;
    :cond_2
    const/4 v9, 0x0

    #@47
    .local v9, "nai":Lcom/android/server/connectivity/NetworkAgentInfo;
    goto :goto_0

    #@48
    .line 914
    .end local v1    # "info":Landroid/net/NetworkInfo;
    .end local v2    # "lp":Landroid/net/LinkProperties;
    .end local v3    # "nc":Landroid/net/NetworkCapabilities;
    .end local v9    # "nai":Lcom/android/server/connectivity/NetworkAgentInfo;
    .local v4, "network":Landroid/net/Network;
    .restart local v7    # "info":Landroid/net/NetworkInfo;
    .restart local v8    # "lp":Landroid/net/LinkProperties;
    .restart local v10    # "nc":Landroid/net/NetworkCapabilities;
    :cond_3
    const/4 v5, 0x0

    #@49
    goto :goto_1

    #@4a
    .line 907
    .end local v7    # "info":Landroid/net/NetworkInfo;
    .end local v8    # "lp":Landroid/net/LinkProperties;
    .end local v10    # "nc":Landroid/net/NetworkCapabilities;
    .restart local v1    # "info":Landroid/net/NetworkInfo;
    .restart local v2    # "lp":Landroid/net/LinkProperties;
    .restart local v3    # "nc":Landroid/net/NetworkCapabilities;
    .local v4, "network":Landroid/net/Network;
    :catchall_0
    move-exception v0

    #@4b
    .end local v1    # "info":Landroid/net/NetworkInfo;
    .end local v2    # "lp":Landroid/net/LinkProperties;
    .end local v3    # "nc":Landroid/net/NetworkCapabilities;
    .end local v4    # "network":Landroid/net/Network;
    :goto_2
    monitor-exit v9

    #@4c
    throw v0

    #@4d
    .restart local v2    # "lp":Landroid/net/LinkProperties;
    .restart local v3    # "nc":Landroid/net/NetworkCapabilities;
    .restart local v4    # "network":Landroid/net/Network;
    .restart local v7    # "info":Landroid/net/NetworkInfo;
    :catchall_1
    move-exception v0

    #@4e
    move-object v1, v7

    #@4f
    .end local v7    # "info":Landroid/net/NetworkInfo;
    .local v1, "info":Landroid/net/NetworkInfo;
    goto :goto_2

    #@50
    .end local v1    # "info":Landroid/net/NetworkInfo;
    .end local v2    # "lp":Landroid/net/LinkProperties;
    .restart local v7    # "info":Landroid/net/NetworkInfo;
    .restart local v8    # "lp":Landroid/net/LinkProperties;
    :catchall_2
    move-exception v0

    #@51
    move-object v2, v8

    #@52
    .end local v8    # "lp":Landroid/net/LinkProperties;
    .local v2, "lp":Landroid/net/LinkProperties;
    move-object v1, v7

    #@53
    .end local v7    # "info":Landroid/net/NetworkInfo;
    .restart local v1    # "info":Landroid/net/NetworkInfo;
    goto :goto_2

    #@54
    .end local v1    # "info":Landroid/net/NetworkInfo;
    .end local v2    # "lp":Landroid/net/LinkProperties;
    .end local v3    # "nc":Landroid/net/NetworkCapabilities;
    .end local v4    # "network":Landroid/net/Network;
    .restart local v7    # "info":Landroid/net/NetworkInfo;
    .restart local v8    # "lp":Landroid/net/LinkProperties;
    .restart local v10    # "nc":Landroid/net/NetworkCapabilities;
    :catchall_3
    move-exception v0

    #@55
    move-object v3, v10

    #@56
    .end local v10    # "nc":Landroid/net/NetworkCapabilities;
    .local v3, "nc":Landroid/net/NetworkCapabilities;
    move-object v2, v8

    #@57
    .end local v8    # "lp":Landroid/net/LinkProperties;
    .restart local v2    # "lp":Landroid/net/LinkProperties;
    move-object v1, v7

    #@58
    .end local v7    # "info":Landroid/net/NetworkInfo;
    .restart local v1    # "info":Landroid/net/NetworkInfo;
    goto :goto_2
.end method

.method private getVpnUnderlyingNetworks(I)[Landroid/net/Network;
    .locals 5
    .param p1, "uid"    # I

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 871
    iget-boolean v2, p0, Lcom/android/server/ConnectivityService;->mLockdownEnabled:Z

    #@3
    if-nez v2, :cond_1

    #@5
    .line 872
    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    #@8
    move-result v0

    #@9
    .line 873
    .local v0, "user":I
    iget-object v3, p0, Lcom/android/server/ConnectivityService;->mVpns:Landroid/util/SparseArray;

    #@b
    monitor-enter v3

    #@c
    .line 874
    :try_start_0
    iget-object v2, p0, Lcom/android/server/ConnectivityService;->mVpns:Landroid/util/SparseArray;

    #@e
    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    #@11
    move-result-object v1

    #@12
    check-cast v1, Lcom/android/server/connectivity/Vpn;

    #@14
    .line 875
    .local v1, "vpn":Lcom/android/server/connectivity/Vpn;
    if-eqz v1, :cond_0

    #@16
    invoke-virtual {v1, p1}, Lcom/android/server/connectivity/Vpn;->appliesToUid(I)Z

    #@19
    move-result v2

    #@1a
    if-eqz v2, :cond_0

    #@1c
    .line 876
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
    .line 880
    .end local v0    # "user":I
    .end local v1    # "vpn":Lcom/android/server/connectivity/Vpn;
    :cond_1
    return-object v4

    #@24
    .line 873
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
    .line 2821
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
    .line 2822
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
    .line 2821
    if-eqz v0, :cond_0

    #@18
    .line 2823
    const/4 p1, 0x0

    #@19
    .line 2825
    .end local p1    # "proxy":Landroid/net/ProxyInfo;
    :cond_0
    iget-object v1, p0, Lcom/android/server/ConnectivityService;->mProxyLock:Ljava/lang/Object;

    #@1b
    monitor-enter v1

    #@1c
    .line 2826
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
    .line 2827
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
    .line 2828
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
    .line 2838
    :cond_3
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mGlobalProxy:Landroid/net/ProxyInfo;

    #@3a
    if-eqz v0, :cond_4

    #@3c
    if-eqz p1, :cond_4

    #@3e
    .line 2839
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
    .line 2845
    :cond_4
    iput-object p1, p0, Lcom/android/server/ConnectivityService;->mDefaultProxy:Landroid/net/ProxyInfo;

    #@4c
    .line 2847
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
    .line 2829
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
    .line 2830
    return-void

    #@6f
    .line 2840
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
    .line 2838
    if-eqz v0, :cond_4

    #@7f
    .line 2841
    iput-object p1, p0, Lcom/android/server/ConnectivityService;->mGlobalProxy:Landroid/net/ProxyInfo;

    #@81
    .line 2842
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mGlobalProxy:Landroid/net/ProxyInfo;

    #@83
    invoke-direct {p0, v0}, Lcom/android/server/ConnectivityService;->sendProxyBroadcast(Landroid/net/ProxyInfo;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    #@86
    monitor-exit v1

    #@87
    .line 2843
    return-void

    #@88
    .line 2848
    :cond_7
    :try_start_5
    iget-boolean v0, p0, Lcom/android/server/ConnectivityService;->mDefaultProxyDisabled:Z

    #@8a
    if-nez v0, :cond_8

    #@8c
    .line 2849
    invoke-direct {p0, p1}, Lcom/android/server/ConnectivityService;->sendProxyBroadcast(Landroid/net/ProxyInfo;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    #@8f
    :cond_8
    monitor-exit v1

    #@90
    .line 2820
    return-void

    #@91
    .line 2825
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
    .line 2127
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
    .line 2128
    .local v3, "nai":Lcom/android/server/connectivity/NetworkAgentInfo;
    if-eqz v3, :cond_7

    #@e
    .line 2130
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
    iget-object v8, v3, Lcom/android/server/connectivity/NetworkAgentInfo;->networkRequests:Landroid/util/SparseArray;

    #@24
    invoke-virtual {v8}, Landroid/util/SparseArray;->size()I

    #@27
    move-result v8

    #@28
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@2b
    move-result-object v7

    #@2c
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2f
    move-result-object v7

    #@30
    invoke-static {v7}, Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V

    #@33
    .line 2137
    iget-object v7, v3, Lcom/android/server/connectivity/NetworkAgentInfo;->networkInfo:Landroid/net/NetworkInfo;

    #@35
    invoke-virtual {v7}, Landroid/net/NetworkInfo;->isConnected()Z

    #@38
    move-result v7

    #@39
    if-eqz v7, :cond_0

    #@3b
    .line 2138
    iget-object v7, v3, Lcom/android/server/connectivity/NetworkAgentInfo;->networkInfo:Landroid/net/NetworkInfo;

    #@3d
    sget-object v8, Landroid/net/NetworkInfo$DetailedState;->DISCONNECTED:Landroid/net/NetworkInfo$DetailedState;

    #@3f
    invoke-virtual {v7, v8, v10, v10}, Landroid/net/NetworkInfo;->setDetailedState(Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;Ljava/lang/String;)V

    #@42
    .line 2141
    :cond_0
    invoke-direct {p0, v3}, Lcom/android/server/ConnectivityService;->isDefaultNetwork(Lcom/android/server/connectivity/NetworkAgentInfo;)Z

    #@45
    move-result v6

    #@46
    .line 2142
    .local v6, "wasDefault":Z
    if-eqz v6, :cond_1

    #@48
    .line 2143
    iput v11, p0, Lcom/android/server/ConnectivityService;->mDefaultInetConditionPublished:I

    #@4a
    .line 2145
    :cond_1
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->notifyIfacesChanged()V

    #@4d
    .line 2150
    const v7, 0x80004

    #@50
    invoke-virtual {p0, v3, v7}, Lcom/android/server/ConnectivityService;->notifyNetworkCallbacks(Lcom/android/server/connectivity/NetworkAgentInfo;I)V

    #@53
    .line 2151
    iget-object v7, v3, Lcom/android/server/connectivity/NetworkAgentInfo;->networkMonitor:Lcom/android/server/connectivity/NetworkMonitor;

    #@55
    const v8, 0x82007

    #@58
    invoke-virtual {v7, v8}, Lcom/android/server/connectivity/NetworkMonitor;->sendMessage(I)V

    #@5b
    .line 2152
    iget-object v7, p0, Lcom/android/server/ConnectivityService;->mNetworkAgentInfos:Ljava/util/HashMap;

    #@5d
    iget-object v8, p1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    #@5f
    invoke-virtual {v7, v8}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    #@62
    .line 2153
    iget-object v7, v3, Lcom/android/server/connectivity/NetworkAgentInfo;->linkProperties:Landroid/net/LinkProperties;

    #@64
    invoke-direct {p0, v10, v7, v3}, Lcom/android/server/ConnectivityService;->updateClat(Landroid/net/LinkProperties;Landroid/net/LinkProperties;Lcom/android/server/connectivity/NetworkAgentInfo;)V

    #@67
    .line 2154
    iget-object v8, p0, Lcom/android/server/ConnectivityService;->mNetworkForNetId:Landroid/util/SparseArray;

    #@69
    monitor-enter v8

    #@6a
    .line 2157
    :try_start_0
    iget-object v7, p0, Lcom/android/server/ConnectivityService;->mNetworkForNetId:Landroid/util/SparseArray;

    #@6c
    iget-object v9, v3, Lcom/android/server/connectivity/NetworkAgentInfo;->network:Landroid/net/Network;

    #@6e
    iget v9, v9, Landroid/net/Network;->netId:I

    #@70
    invoke-virtual {v7, v9}, Landroid/util/SparseArray;->remove(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@73
    monitor-exit v8

    #@74
    .line 2160
    const/4 v2, 0x0

    #@75
    .local v2, "i":I
    :goto_0
    iget-object v7, v3, Lcom/android/server/connectivity/NetworkAgentInfo;->networkRequests:Landroid/util/SparseArray;

    #@77
    invoke-virtual {v7}, Landroid/util/SparseArray;->size()I

    #@7a
    move-result v7

    #@7b
    if-ge v2, v7, :cond_3

    #@7d
    .line 2161
    iget-object v7, v3, Lcom/android/server/connectivity/NetworkAgentInfo;->networkRequests:Landroid/util/SparseArray;

    #@7f
    invoke-virtual {v7, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    #@82
    move-result-object v5

    #@83
    check-cast v5, Landroid/net/NetworkRequest;

    #@85
    .line 2162
    .local v5, "request":Landroid/net/NetworkRequest;
    iget-object v7, p0, Lcom/android/server/ConnectivityService;->mNetworkForRequestId:Landroid/util/SparseArray;

    #@87
    iget v8, v5, Landroid/net/NetworkRequest;->requestId:I

    #@89
    invoke-virtual {v7, v8}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    #@8c
    move-result-object v0

    #@8d
    check-cast v0, Lcom/android/server/connectivity/NetworkAgentInfo;

    #@8f
    .line 2163
    .local v0, "currentNetwork":Lcom/android/server/connectivity/NetworkAgentInfo;
    if-eqz v0, :cond_2

    #@91
    iget-object v7, v0, Lcom/android/server/connectivity/NetworkAgentInfo;->network:Landroid/net/Network;

    #@93
    iget v7, v7, Landroid/net/Network;->netId:I

    #@95
    iget-object v8, v3, Lcom/android/server/connectivity/NetworkAgentInfo;->network:Landroid/net/Network;

    #@97
    iget v8, v8, Landroid/net/Network;->netId:I

    #@99
    if-ne v7, v8, :cond_2

    #@9b
    .line 2164
    iget-object v7, p0, Lcom/android/server/ConnectivityService;->mNetworkForRequestId:Landroid/util/SparseArray;

    #@9d
    iget v8, v5, Landroid/net/NetworkRequest;->requestId:I

    #@9f
    invoke-virtual {v7, v8}, Landroid/util/SparseArray;->remove(I)V

    #@a2
    .line 2165
    invoke-direct {p0, v5, v11}, Lcom/android/server/ConnectivityService;->sendUpdatedScoreToFactories(Landroid/net/NetworkRequest;I)V

    #@a5
    .line 2160
    :cond_2
    add-int/lit8 v2, v2, 0x1

    #@a7
    goto :goto_0

    #@a8
    .line 2154
    .end local v0    # "currentNetwork":Lcom/android/server/connectivity/NetworkAgentInfo;
    .end local v2    # "i":I
    .end local v5    # "request":Landroid/net/NetworkRequest;
    :catchall_0
    move-exception v7

    #@a9
    monitor-exit v8

    #@aa
    throw v7

    #@ab
    .line 2168
    .restart local v2    # "i":I
    :cond_3
    iget-object v7, v3, Lcom/android/server/connectivity/NetworkAgentInfo;->networkRequests:Landroid/util/SparseArray;

    #@ad
    iget-object v8, p0, Lcom/android/server/ConnectivityService;->mDefaultRequest:Landroid/net/NetworkRequest;

    #@af
    iget v8, v8, Landroid/net/NetworkRequest;->requestId:I

    #@b1
    invoke-virtual {v7, v8}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    #@b4
    move-result-object v7

    #@b5
    if-eqz v7, :cond_4

    #@b7
    .line 2169
    invoke-direct {p0, v3}, Lcom/android/server/ConnectivityService;->removeDataActivityTracking(Lcom/android/server/connectivity/NetworkAgentInfo;)V

    #@ba
    .line 2170
    invoke-direct {p0, v3}, Lcom/android/server/ConnectivityService;->notifyLockdownVpn(Lcom/android/server/connectivity/NetworkAgentInfo;)V

    #@bd
    .line 2171
    invoke-virtual {v3}, Lcom/android/server/connectivity/NetworkAgentInfo;->name()Ljava/lang/String;

    #@c0
    move-result-object v7

    #@c1
    invoke-direct {p0, v7}, Lcom/android/server/ConnectivityService;->requestNetworkTransitionWakelock(Ljava/lang/String;)V

    #@c4
    .line 2173
    :cond_4
    iget-object v7, p0, Lcom/android/server/ConnectivityService;->mLegacyTypeTracker:Lcom/android/server/ConnectivityService$LegacyTypeTracker;

    #@c6
    invoke-virtual {v7, v3, v6}, Lcom/android/server/ConnectivityService$LegacyTypeTracker;->remove(Lcom/android/server/connectivity/NetworkAgentInfo;Z)V

    #@c9
    .line 2174
    invoke-direct {p0, v10, v11}, Lcom/android/server/ConnectivityService;->rematchAllNetworksAndRequests(Lcom/android/server/connectivity/NetworkAgentInfo;I)V

    #@cc
    .line 2175
    iget-boolean v7, v3, Lcom/android/server/connectivity/NetworkAgentInfo;->created:Z

    #@ce
    if-eqz v7, :cond_5

    #@d0
    .line 2185
    :try_start_1
    iget-object v7, p0, Lcom/android/server/ConnectivityService;->mNetd:Landroid/os/INetworkManagementService;

    #@d2
    iget-object v8, v3, Lcom/android/server/connectivity/NetworkAgentInfo;->network:Landroid/net/Network;

    #@d4
    iget v8, v8, Landroid/net/Network;->netId:I

    #@d6
    invoke-interface {v7, v8}, Landroid/os/INetworkManagementService;->removeNetwork(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    #@d9
    .line 2190
    :cond_5
    :goto_1
    iget-object v8, p0, Lcom/android/server/ConnectivityService;->mNetworkForNetId:Landroid/util/SparseArray;

    #@db
    monitor-enter v8

    #@dc
    .line 2191
    :try_start_2
    iget-object v7, p0, Lcom/android/server/ConnectivityService;->mNetIdInUse:Landroid/util/SparseBooleanArray;

    #@de
    iget-object v9, v3, Lcom/android/server/connectivity/NetworkAgentInfo;->network:Landroid/net/Network;

    #@e0
    iget v9, v9, Landroid/net/Network;->netId:I

    #@e2
    invoke-virtual {v7, v9}, Landroid/util/SparseBooleanArray;->delete(I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    #@e5
    monitor-exit v8

    #@e6
    .line 2126
    .end local v2    # "i":I
    .end local v6    # "wasDefault":Z
    :cond_6
    :goto_2
    return-void

    #@e7
    .line 2186
    .restart local v2    # "i":I
    .restart local v6    # "wasDefault":Z
    :catch_0
    move-exception v1

    #@e8
    .line 2187
    .local v1, "e":Ljava/lang/Exception;
    new-instance v7, Ljava/lang/StringBuilder;

    #@ea
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    #@ed
    const-string/jumbo v8, "Exception removing network: "

    #@f0
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@f3
    move-result-object v7

    #@f4
    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@f7
    move-result-object v7

    #@f8
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@fb
    move-result-object v7

    #@fc
    invoke-static {v7}, Lcom/android/server/ConnectivityService;->loge(Ljava/lang/String;)V

    #@ff
    goto :goto_1

    #@100
    .line 2190
    .end local v1    # "e":Ljava/lang/Exception;
    :catchall_1
    move-exception v7

    #@101
    monitor-exit v8

    #@102
    throw v7

    #@103
    .line 2194
    .end local v2    # "i":I
    .end local v6    # "wasDefault":Z
    :cond_7
    iget-object v7, p0, Lcom/android/server/ConnectivityService;->mNetworkFactoryInfos:Ljava/util/HashMap;

    #@105
    iget-object v8, p1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    #@107
    invoke-virtual {v7, v8}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    #@10a
    move-result-object v4

    #@10b
    check-cast v4, Lcom/android/server/ConnectivityService$NetworkFactoryInfo;

    #@10d
    .line 2195
    .local v4, "nfi":Lcom/android/server/ConnectivityService$NetworkFactoryInfo;
    if-eqz v4, :cond_6

    #@10f
    new-instance v7, Ljava/lang/StringBuilder;

    #@111
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    #@114
    const-string/jumbo v8, "unregisterNetworkFactory for "

    #@117
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@11a
    move-result-object v7

    #@11b
    iget-object v8, v4, Lcom/android/server/ConnectivityService$NetworkFactoryInfo;->name:Ljava/lang/String;

    #@11d
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@120
    move-result-object v7

    #@121
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@124
    move-result-object v7

    #@125
    invoke-static {v7}, Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V

    #@128
    goto :goto_2
.end method

.method private handleAsyncChannelHalfConnect(Landroid/os/Message;)V
    .locals 9
    .param p1, "msg"    # Landroid/os/Message;

    #@0
    .prologue
    const/4 v6, 0x0

    #@1
    .line 2089
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@3
    check-cast v0, Lcom/android/internal/util/AsyncChannel;

    #@5
    .line 2090
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
    .line 2091
    iget v5, p1, Landroid/os/Message;->arg1:I

    #@11
    if-nez v5, :cond_2

    #@13
    .line 2094
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
    .line 2095
    .local v2, "nri":Lcom/android/server/ConnectivityService$NetworkRequestInfo;
    iget-boolean v5, v2, Lcom/android/server/ConnectivityService$NetworkRequestInfo;->isRequest:Z

    #@2b
    if-eqz v5, :cond_0

    #@2d
    .line 2096
    iget-object v5, p0, Lcom/android/server/ConnectivityService;->mNetworkForRequestId:Landroid/util/SparseArray;

    #@2f
    iget-object v7, v2, Lcom/android/server/ConnectivityService$NetworkRequestInfo;->request:Landroid/net/NetworkRequest;

    #@31
    iget v7, v7, Landroid/net/NetworkRequest;->requestId:I

    #@33
    invoke-virtual {v5, v7}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    #@36
    move-result-object v1

    #@37
    check-cast v1, Lcom/android/server/connectivity/NetworkAgentInfo;

    #@39
    .line 2098
    .local v1, "nai":Lcom/android/server/connectivity/NetworkAgentInfo;
    if-eqz v1, :cond_1

    #@3b
    invoke-virtual {v1}, Lcom/android/server/connectivity/NetworkAgentInfo;->getCurrentScore()I

    #@3e
    move-result v5

    #@3f
    :goto_1
    iget-object v7, v2, Lcom/android/server/ConnectivityService$NetworkRequestInfo;->request:Landroid/net/NetworkRequest;

    #@41
    .line 2097
    const v8, 0x83000

    #@44
    invoke-virtual {v0, v8, v5, v6, v7}, Lcom/android/internal/util/AsyncChannel;->sendMessage(IIILjava/lang/Object;)V

    #@47
    goto :goto_0

    #@48
    :cond_1
    move v5, v6

    #@49
    .line 2098
    goto :goto_1

    #@4a
    .line 2101
    .end local v1    # "nai":Lcom/android/server/connectivity/NetworkAgentInfo;
    .end local v2    # "nri":Lcom/android/server/ConnectivityService$NetworkRequestInfo;
    .end local v3    # "nri$iterator":Ljava/util/Iterator;
    :cond_2
    const-string/jumbo v5, "Error connecting NetworkFactory"

    #@4d
    invoke-static {v5}, Lcom/android/server/ConnectivityService;->loge(Ljava/lang/String;)V

    #@50
    .line 2102
    iget-object v5, p0, Lcom/android/server/ConnectivityService;->mNetworkFactoryInfos:Ljava/util/HashMap;

    #@52
    iget-object v6, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@54
    invoke-virtual {v5, v6}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    #@57
    .line 2088
    :cond_3
    :goto_2
    return-void

    #@58
    .line 2104
    :cond_4
    iget-object v5, p0, Lcom/android/server/ConnectivityService;->mNetworkAgentInfos:Ljava/util/HashMap;

    #@5a
    iget-object v6, p1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    #@5c
    invoke-virtual {v5, v6}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    #@5f
    move-result v5

    #@60
    if-eqz v5, :cond_3

    #@62
    .line 2105
    iget v5, p1, Landroid/os/Message;->arg1:I

    #@64
    if-nez v5, :cond_5

    #@66
    .line 2108
    iget-object v5, p0, Lcom/android/server/ConnectivityService;->mNetworkAgentInfos:Ljava/util/HashMap;

    #@68
    iget-object v6, p1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    #@6a
    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@6d
    move-result-object v5

    #@6e
    check-cast v5, Lcom/android/server/connectivity/NetworkAgentInfo;

    #@70
    iget-object v5, v5, Lcom/android/server/connectivity/NetworkAgentInfo;->asyncChannel:Lcom/android/internal/util/AsyncChannel;

    #@72
    .line 2109
    const v6, 0x11001

    #@75
    .line 2108
    invoke-virtual {v5, v6}, Lcom/android/internal/util/AsyncChannel;->sendMessage(I)V

    #@78
    goto :goto_2

    #@79
    .line 2111
    :cond_5
    const-string/jumbo v5, "Error connecting NetworkAgent"

    #@7c
    invoke-static {v5}, Lcom/android/server/ConnectivityService;->loge(Ljava/lang/String;)V

    #@7f
    .line 2112
    iget-object v5, p0, Lcom/android/server/ConnectivityService;->mNetworkAgentInfos:Ljava/util/HashMap;

    #@81
    iget-object v6, p1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    #@83
    invoke-virtual {v5, v6}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    #@86
    move-result-object v1

    #@87
    check-cast v1, Lcom/android/server/connectivity/NetworkAgentInfo;

    #@89
    .line 2113
    .restart local v1    # "nai":Lcom/android/server/connectivity/NetworkAgentInfo;
    if-eqz v1, :cond_3

    #@8b
    .line 2114
    invoke-direct {p0, v1}, Lcom/android/server/ConnectivityService;->isDefaultNetwork(Lcom/android/server/connectivity/NetworkAgentInfo;)Z

    #@8e
    move-result v4

    #@8f
    .line 2115
    .local v4, "wasDefault":Z
    iget-object v6, p0, Lcom/android/server/ConnectivityService;->mNetworkForNetId:Landroid/util/SparseArray;

    #@91
    monitor-enter v6

    #@92
    .line 2116
    :try_start_0
    iget-object v5, p0, Lcom/android/server/ConnectivityService;->mNetworkForNetId:Landroid/util/SparseArray;

    #@94
    iget-object v7, v1, Lcom/android/server/connectivity/NetworkAgentInfo;->network:Landroid/net/Network;

    #@96
    iget v7, v7, Landroid/net/Network;->netId:I

    #@98
    invoke-virtual {v5, v7}, Landroid/util/SparseArray;->remove(I)V

    #@9b
    .line 2117
    iget-object v5, p0, Lcom/android/server/ConnectivityService;->mNetIdInUse:Landroid/util/SparseBooleanArray;

    #@9d
    iget-object v7, v1, Lcom/android/server/connectivity/NetworkAgentInfo;->network:Landroid/net/Network;

    #@9f
    iget v7, v7, Landroid/net/Network;->netId:I

    #@a1
    invoke-virtual {v5, v7}, Landroid/util/SparseBooleanArray;->delete(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@a4
    monitor-exit v6

    #@a5
    .line 2120
    iget-object v5, p0, Lcom/android/server/ConnectivityService;->mLegacyTypeTracker:Lcom/android/server/ConnectivityService$LegacyTypeTracker;

    #@a7
    invoke-virtual {v5, v1, v4}, Lcom/android/server/ConnectivityService$LegacyTypeTracker;->remove(Lcom/android/server/connectivity/NetworkAgentInfo;Z)V

    #@aa
    goto :goto_2

    #@ab
    .line 2115
    :catchall_0
    move-exception v5

    #@ac
    monitor-exit v6

    #@ad
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
    .line 2869
    iget-object v6, p0, Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;

    #@4
    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    #@7
    move-result-object v6

    #@8
    .line 2870
    const-string/jumbo v7, "http_proxy"

    #@b
    .line 2869
    invoke-static {v6, v7}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    #@e
    move-result-object v3

    #@f
    .line 2871
    .local v3, "proxy":Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@12
    move-result v6

    #@13
    if-nez v6, :cond_2

    #@15
    .line 2872
    const-string/jumbo v6, ":"

    #@18
    invoke-virtual {v3, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    #@1b
    move-result-object v0

    #@1c
    .line 2873
    .local v0, "data":[Ljava/lang/String;
    array-length v6, v0

    #@1d
    if-nez v6, :cond_0

    #@1f
    .line 2874
    return-void

    #@20
    .line 2877
    :cond_0
    aget-object v4, v0, v8

    #@22
    .line 2878
    .local v4, "proxyHost":Ljava/lang/String;
    const/16 v5, 0x1f90

    #@24
    .line 2879
    .local v5, "proxyPort":I
    array-length v6, v0

    #@25
    if-le v6, v9, :cond_1

    #@27
    .line 2881
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
    .line 2886
    :cond_1
    new-instance v2, Landroid/net/ProxyInfo;

    #@30
    aget-object v6, v0, v8

    #@32
    const-string/jumbo v7, ""

    #@35
    invoke-direct {v2, v6, v5, v7}, Landroid/net/ProxyInfo;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    #@38
    .line 2887
    .local v2, "p":Landroid/net/ProxyInfo;
    invoke-virtual {p0, v2}, Lcom/android/server/ConnectivityService;->setGlobalProxy(Landroid/net/ProxyInfo;)V

    #@3b
    .line 2868
    .end local v0    # "data":[Ljava/lang/String;
    .end local v2    # "p":Landroid/net/ProxyInfo;
    .end local v4    # "proxyHost":Ljava/lang/String;
    .end local v5    # "proxyPort":I
    :cond_2
    return-void

    #@3c
    .line 2882
    .restart local v0    # "data":[Ljava/lang/String;
    .restart local v4    # "proxyHost":Ljava/lang/String;
    .restart local v5    # "proxyPort":I
    :catch_0
    move-exception v1

    #@3d
    .line 2883
    .local v1, "e":Ljava/lang/NumberFormatException;
    return-void
.end method

.method private handleLingerComplete(Lcom/android/server/connectivity/NetworkAgentInfo;)V
    .locals 2
    .param p1, "oldNetwork"    # Lcom/android/server/connectivity/NetworkAgentInfo;

    #@0
    .prologue
    .line 4151
    if-nez p1, :cond_0

    #@2
    .line 4152
    const-string/jumbo v0, "Unknown NetworkAgentInfo in handleLingerComplete"

    #@5
    invoke-static {v0}, Lcom/android/server/ConnectivityService;->loge(Ljava/lang/String;)V

    #@8
    .line 4153
    return-void

    #@9
    .line 4155
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
    .line 4156
    invoke-direct {p0, p1}, Lcom/android/server/ConnectivityService;->teardownUnneededNetwork(Lcom/android/server/connectivity/NetworkAgentInfo;)V

    #@27
    .line 4150
    return-void
.end method

.method private handleMobileDataAlwaysOn()V
    .locals 8

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    const/4 v5, 0x1

    #@2
    .line 781
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;

    #@4
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    #@7
    move-result-object v0

    #@8
    const-string/jumbo v1, "mobile_data_always_on"

    #@b
    const/4 v3, 0x0

    #@c
    .line 780
    invoke-static {v0, v1, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    #@f
    move-result v0

    #@10
    if-ne v0, v5, :cond_0

    #@12
    const/4 v6, 0x1

    #@13
    .line 782
    .local v6, "enable":Z
    :goto_0
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mNetworkRequests:Ljava/util/HashMap;

    #@15
    iget-object v1, p0, Lcom/android/server/ConnectivityService;->mDefaultMobileDataRequest:Landroid/net/NetworkRequest;

    #@17
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@1a
    move-result-object v0

    #@1b
    if-eqz v0, :cond_1

    #@1d
    const/4 v7, 0x1

    #@1e
    .line 783
    .local v7, "isEnabled":Z
    :goto_1
    if-ne v6, v7, :cond_2

    #@20
    .line 784
    return-void

    #@21
    .line 780
    .end local v6    # "enable":Z
    .end local v7    # "isEnabled":Z
    :cond_0
    const/4 v6, 0x0

    #@22
    .restart local v6    # "enable":Z
    goto :goto_0

    #@23
    .line 782
    :cond_1
    const/4 v7, 0x0

    #@24
    .restart local v7    # "isEnabled":Z
    goto :goto_1

    #@25
    .line 787
    :cond_2
    if-eqz v6, :cond_3

    #@27
    .line 788
    new-instance v0, Lcom/android/server/ConnectivityService$NetworkRequestInfo;

    #@29
    .line 789
    iget-object v3, p0, Lcom/android/server/ConnectivityService;->mDefaultMobileDataRequest:Landroid/net/NetworkRequest;

    #@2b
    new-instance v4, Landroid/os/Binder;

    #@2d
    invoke-direct {v4}, Landroid/os/Binder;-><init>()V

    #@30
    move-object v1, p0

    #@31
    .line 788
    invoke-direct/range {v0 .. v5}, Lcom/android/server/ConnectivityService$NetworkRequestInfo;-><init>(Lcom/android/server/ConnectivityService;Landroid/os/Messenger;Landroid/net/NetworkRequest;Landroid/os/IBinder;Z)V

    #@34
    invoke-direct {p0, v0}, Lcom/android/server/ConnectivityService;->handleRegisterNetworkRequest(Lcom/android/server/ConnectivityService$NetworkRequestInfo;)V

    #@37
    .line 779
    :goto_2
    return-void

    #@38
    .line 791
    :cond_3
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mDefaultMobileDataRequest:Landroid/net/NetworkRequest;

    #@3a
    const/16 v1, 0x3e8

    #@3c
    invoke-direct {p0, v0, v1}, Lcom/android/server/ConnectivityService;->handleReleaseNetworkRequest(Landroid/net/NetworkRequest;I)V

    #@3f
    goto :goto_2
.end method

.method private handlePromptUnvalidated(Landroid/net/Network;)V
    .locals 13
    .param p1, "network"    # Landroid/net/Network;

    #@0
    .prologue
    const/high16 v3, 0x10000000

    #@2
    const/4 v12, 0x1

    #@3
    const/4 v4, 0x0

    #@4
    .line 2402
    new-instance v0, Ljava/lang/StringBuilder;

    #@6
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@9
    const-string/jumbo v1, "handlePromptUnvalidated "

    #@c
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@f
    move-result-object v0

    #@10
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@13
    move-result-object v0

    #@14
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@17
    move-result-object v0

    #@18
    invoke-static {v0}, Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V

    #@1b
    .line 2403
    invoke-direct {p0, p1}, Lcom/android/server/ConnectivityService;->getNetworkAgentInfoForNetwork(Landroid/net/Network;)Lcom/android/server/connectivity/NetworkAgentInfo;

    #@1e
    move-result-object v11

    #@1f
    .line 2408
    .local v11, "nai":Lcom/android/server/connectivity/NetworkAgentInfo;
    if-eqz v11, :cond_0

    #@21
    iget-boolean v0, v11, Lcom/android/server/connectivity/NetworkAgentInfo;->everValidated:Z

    #@23
    if-nez v0, :cond_0

    #@25
    iget-boolean v0, v11, Lcom/android/server/connectivity/NetworkAgentInfo;->everCaptivePortalDetected:Z

    #@27
    if-nez v0, :cond_0

    #@29
    .line 2409
    iget-object v0, v11, Lcom/android/server/connectivity/NetworkAgentInfo;->networkMisc:Landroid/net/NetworkMisc;

    #@2b
    iget-boolean v0, v0, Landroid/net/NetworkMisc;->explicitlySelected:Z

    #@2d
    if-eqz v0, :cond_0

    #@2f
    iget-object v0, v11, Lcom/android/server/connectivity/NetworkAgentInfo;->networkMisc:Landroid/net/NetworkMisc;

    #@31
    iget-boolean v0, v0, Landroid/net/NetworkMisc;->acceptUnvalidated:Z

    #@33
    .line 2408
    if-eqz v0, :cond_1

    #@35
    .line 2410
    :cond_0
    return-void

    #@36
    .line 2413
    :cond_1
    new-instance v2, Landroid/content/Intent;

    #@38
    const-string/jumbo v0, "android.net.conn.PROMPT_UNVALIDATED"

    #@3b
    invoke-direct {v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    #@3e
    .line 2414
    .local v2, "intent":Landroid/content/Intent;
    const-string/jumbo v0, "netId"

    #@41
    iget v1, p1, Landroid/net/Network;->netId:I

    #@43
    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    #@46
    move-result-object v1

    #@47
    invoke-static {v0, v1, v4}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    #@4a
    move-result-object v0

    #@4b
    invoke-virtual {v2, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    #@4e
    .line 2415
    invoke-virtual {v2, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    #@51
    .line 2416
    const-string/jumbo v0, "com.android.settings"

    #@54
    .line 2417
    const-string/jumbo v1, "com.android.settings.wifi.WifiNoInternetDialog"

    #@57
    .line 2416
    invoke-virtual {v2, v0, v1}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    #@5a
    .line 2420
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;

    #@5c
    sget-object v5, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    #@5e
    const/4 v1, 0x0

    #@5f
    .line 2419
    invoke-static/range {v0 .. v5}, Landroid/app/PendingIntent;->getActivityAsUser(Landroid/content/Context;ILandroid/content/Intent;ILandroid/os/Bundle;Landroid/os/UserHandle;)Landroid/app/PendingIntent;

    #@62
    move-result-object v9

    #@63
    .line 2421
    .local v9, "pendingIntent":Landroid/app/PendingIntent;
    iget-object v0, v11, Lcom/android/server/connectivity/NetworkAgentInfo;->network:Landroid/net/Network;

    #@65
    iget v5, v0, Landroid/net/Network;->netId:I

    #@67
    sget-object v6, Lcom/android/server/ConnectivityService$NotificationType;->NO_INTERNET:Lcom/android/server/ConnectivityService$NotificationType;

    #@69
    .line 2422
    iget-object v0, v11, Lcom/android/server/connectivity/NetworkAgentInfo;->networkInfo:Landroid/net/NetworkInfo;

    #@6b
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    #@6e
    move-result v7

    #@6f
    iget-object v0, v11, Lcom/android/server/connectivity/NetworkAgentInfo;->networkInfo:Landroid/net/NetworkInfo;

    #@71
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getExtraInfo()Ljava/lang/String;

    #@74
    move-result-object v8

    #@75
    move-object v3, p0

    #@76
    move v4, v12

    #@77
    move v10, v12

    #@78
    .line 2421
    invoke-direct/range {v3 .. v10}, Lcom/android/server/ConnectivityService;->setProvNotificationVisibleIntent(ZILcom/android/server/ConnectivityService$NotificationType;ILjava/lang/String;Landroid/app/PendingIntent;Z)V

    #@7b
    .line 2401
    return-void
.end method

.method private handleRegisterNetworkAgent(Lcom/android/server/connectivity/NetworkAgentInfo;)V
    .locals 5
    .param p1, "na"    # Lcom/android/server/connectivity/NetworkAgentInfo;

    #@0
    .prologue
    .line 3821
    iget-object v1, p0, Lcom/android/server/ConnectivityService;->mNetworkAgentInfos:Ljava/util/HashMap;

    #@2
    iget-object v2, p1, Lcom/android/server/connectivity/NetworkAgentInfo;->messenger:Landroid/os/Messenger;

    #@4
    invoke-virtual {v1, v2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@7
    .line 3822
    iget-object v2, p0, Lcom/android/server/ConnectivityService;->mNetworkForNetId:Landroid/util/SparseArray;

    #@9
    monitor-enter v2

    #@a
    .line 3823
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
    .line 3825
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
    .line 3826
    iget-object v0, p1, Lcom/android/server/connectivity/NetworkAgentInfo;->networkInfo:Landroid/net/NetworkInfo;

    #@21
    .line 3827
    .local v0, "networkInfo":Landroid/net/NetworkInfo;
    const/4 v1, 0x0

    #@22
    iput-object v1, p1, Lcom/android/server/connectivity/NetworkAgentInfo;->networkInfo:Landroid/net/NetworkInfo;

    #@24
    .line 3828
    invoke-direct {p0, p1, v0}, Lcom/android/server/ConnectivityService;->updateNetworkInfo(Lcom/android/server/connectivity/NetworkAgentInfo;Landroid/net/NetworkInfo;)V

    #@27
    .line 3819
    return-void

    #@28
    .line 3822
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
    .line 3738
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
    .line 3739
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mNetworkFactoryInfos:Ljava/util/HashMap;

    #@1b
    iget-object v1, p1, Lcom/android/server/ConnectivityService$NetworkFactoryInfo;->messenger:Landroid/os/Messenger;

    #@1d
    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@20
    .line 3740
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
    .line 3737
    return-void
.end method

.method private handleRegisterNetworkRequest(Lcom/android/server/ConnectivityService$NetworkRequestInfo;)V
    .locals 5
    .param p1, "nri"    # Lcom/android/server/ConnectivityService$NetworkRequestInfo;

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    const/4 v3, 0x0

    #@2
    .line 2227
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mNetworkRequests:Ljava/util/HashMap;

    #@4
    iget-object v1, p1, Lcom/android/server/ConnectivityService$NetworkRequestInfo;->request:Landroid/net/NetworkRequest;

    #@6
    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@9
    .line 2228
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mNetworkRequestInfoLogs:Landroid/util/LocalLog;

    #@b
    new-instance v1, Ljava/lang/StringBuilder;

    #@d
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@10
    const-string/jumbo v2, "REGISTER "

    #@13
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@16
    move-result-object v1

    #@17
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@1a
    move-result-object v1

    #@1b
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1e
    move-result-object v1

    #@1f
    invoke-virtual {v0, v1}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    #@22
    .line 2229
    invoke-direct {p0, v4, v3}, Lcom/android/server/ConnectivityService;->rematchAllNetworksAndRequests(Lcom/android/server/connectivity/NetworkAgentInfo;I)V

    #@25
    .line 2230
    iget-boolean v0, p1, Lcom/android/server/ConnectivityService$NetworkRequestInfo;->isRequest:Z

    #@27
    if-eqz v0, :cond_0

    #@29
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mNetworkForRequestId:Landroid/util/SparseArray;

    #@2b
    iget-object v1, p1, Lcom/android/server/ConnectivityService$NetworkRequestInfo;->request:Landroid/net/NetworkRequest;

    #@2d
    iget v1, v1, Landroid/net/NetworkRequest;->requestId:I

    #@2f
    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    #@32
    move-result-object v0

    #@33
    if-nez v0, :cond_0

    #@35
    .line 2231
    iget-object v0, p1, Lcom/android/server/ConnectivityService$NetworkRequestInfo;->request:Landroid/net/NetworkRequest;

    #@37
    invoke-direct {p0, v0, v3}, Lcom/android/server/ConnectivityService;->sendUpdatedScoreToFactories(Landroid/net/NetworkRequest;I)V

    #@3a
    .line 2226
    :cond_0
    return-void
.end method

.method private handleRegisterNetworkRequestWithIntent(Landroid/os/Message;)V
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    #@0
    .prologue
    .line 2215
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@2
    check-cast v1, Lcom/android/server/ConnectivityService$NetworkRequestInfo;

    #@4
    .line 2217
    .local v1, "nri":Lcom/android/server/ConnectivityService$NetworkRequestInfo;
    iget-object v2, v1, Lcom/android/server/ConnectivityService$NetworkRequestInfo;->mPendingIntent:Landroid/app/PendingIntent;

    #@6
    invoke-direct {p0, v2}, Lcom/android/server/ConnectivityService;->findExistingNetworkRequestInfo(Landroid/app/PendingIntent;)Lcom/android/server/ConnectivityService$NetworkRequestInfo;

    #@9
    move-result-object v0

    #@a
    .line 2218
    .local v0, "existingRequest":Lcom/android/server/ConnectivityService$NetworkRequestInfo;
    if-eqz v0, :cond_0

    #@c
    .line 2219
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
    .line 2220
    iget-object v3, v1, Lcom/android/server/ConnectivityService$NetworkRequestInfo;->request:Landroid/net/NetworkRequest;

    #@27
    .line 2219
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@2a
    move-result-object v2

    #@2b
    .line 2220
    const-string/jumbo v3, " because their intents matched."

    #@2e
    .line 2219
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
    .line 2221
    iget-object v2, v0, Lcom/android/server/ConnectivityService$NetworkRequestInfo;->request:Landroid/net/NetworkRequest;

    #@3b
    invoke-static {}, Lcom/android/server/ConnectivityService;->getCallingUid()I

    #@3e
    move-result v3

    #@3f
    invoke-direct {p0, v2, v3}, Lcom/android/server/ConnectivityService;->handleReleaseNetworkRequest(Landroid/net/NetworkRequest;I)V

    #@42
    .line 2223
    :cond_0
    invoke-direct {p0, v1}, Lcom/android/server/ConnectivityService;->handleRegisterNetworkRequest(Lcom/android/server/ConnectivityService$NetworkRequestInfo;)V

    #@45
    .line 2214
    return-void
.end method

.method private handleReleaseNetworkRequest(Landroid/net/NetworkRequest;I)V
    .locals 13
    .param p1, "request"    # Landroid/net/NetworkRequest;
    .param p2, "callingUid"    # I

    #@0
    .prologue
    const/4 v12, 0x0

    #@1
    .line 2269
    iget-object v9, p0, Lcom/android/server/ConnectivityService;->mNetworkRequests:Ljava/util/HashMap;

    #@3
    invoke-virtual {v9, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@6
    move-result-object v6

    #@7
    check-cast v6, Lcom/android/server/ConnectivityService$NetworkRequestInfo;

    #@9
    .line 2270
    .local v6, "nri":Lcom/android/server/ConnectivityService$NetworkRequestInfo;
    if-eqz v6, :cond_a

    #@b
    .line 2271
    const/16 v9, 0x3e8

    #@d
    if-eq v9, p2, :cond_0

    #@f
    iget v9, v6, Lcom/android/server/ConnectivityService$NetworkRequestInfo;->mUid:I

    #@11
    if-eq v9, p2, :cond_0

    #@13
    .line 2272
    new-instance v9, Ljava/lang/StringBuilder;

    #@15
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    #@18
    const-string/jumbo v10, "Attempt to release unowned NetworkRequest "

    #@1b
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1e
    move-result-object v9

    #@1f
    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@22
    move-result-object v9

    #@23
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@26
    move-result-object v9

    #@27
    invoke-static {v9}, Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V

    #@2a
    .line 2273
    return-void

    #@2b
    .line 2275
    :cond_0
    new-instance v9, Ljava/lang/StringBuilder;

    #@2d
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    #@30
    const-string/jumbo v10, "releasing NetworkRequest "

    #@33
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@36
    move-result-object v9

    #@37
    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@3a
    move-result-object v9

    #@3b
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3e
    move-result-object v9

    #@3f
    invoke-static {v9}, Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V

    #@42
    .line 2276
    invoke-virtual {v6}, Lcom/android/server/ConnectivityService$NetworkRequestInfo;->unlinkDeathRecipient()V

    #@45
    .line 2277
    iget-object v9, p0, Lcom/android/server/ConnectivityService;->mNetworkRequests:Ljava/util/HashMap;

    #@47
    invoke-virtual {v9, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    #@4a
    .line 2278
    iget-object v9, p0, Lcom/android/server/ConnectivityService;->mNetworkRequestInfoLogs:Landroid/util/LocalLog;

    #@4c
    new-instance v10, Ljava/lang/StringBuilder;

    #@4e
    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    #@51
    const-string/jumbo v11, "RELEASE "

    #@54
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@57
    move-result-object v10

    #@58
    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@5b
    move-result-object v10

    #@5c
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@5f
    move-result-object v10

    #@60
    invoke-virtual {v9, v10}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    #@63
    .line 2279
    iget-boolean v9, v6, Lcom/android/server/ConnectivityService$NetworkRequestInfo;->isRequest:Z

    #@65
    if-eqz v9, :cond_8

    #@67
    .line 2284
    const/4 v8, 0x0

    #@68
    .line 2285
    .local v8, "wasKept":Z
    iget-object v9, p0, Lcom/android/server/ConnectivityService;->mNetworkAgentInfos:Ljava/util/HashMap;

    #@6a
    invoke-virtual {v9}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    #@6d
    move-result-object v9

    #@6e
    invoke-interface {v9}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@71
    move-result-object v3

    #@72
    .end local v8    # "wasKept":Z
    .local v3, "nai$iterator":Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    #@75
    move-result v9

    #@76
    if-eqz v9, :cond_3

    #@78
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@7b
    move-result-object v2

    #@7c
    check-cast v2, Lcom/android/server/connectivity/NetworkAgentInfo;

    #@7e
    .line 2286
    .local v2, "nai":Lcom/android/server/connectivity/NetworkAgentInfo;
    iget-object v9, v2, Lcom/android/server/connectivity/NetworkAgentInfo;->networkRequests:Landroid/util/SparseArray;

    #@80
    iget-object v10, v6, Lcom/android/server/ConnectivityService$NetworkRequestInfo;->request:Landroid/net/NetworkRequest;

    #@82
    iget v10, v10, Landroid/net/NetworkRequest;->requestId:I

    #@84
    invoke-virtual {v9, v10}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    #@87
    move-result-object v9

    #@88
    if-eqz v9, :cond_1

    #@8a
    .line 2287
    iget-object v9, v2, Lcom/android/server/connectivity/NetworkAgentInfo;->networkRequests:Landroid/util/SparseArray;

    #@8c
    iget-object v10, v6, Lcom/android/server/ConnectivityService$NetworkRequestInfo;->request:Landroid/net/NetworkRequest;

    #@8e
    iget v10, v10, Landroid/net/NetworkRequest;->requestId:I

    #@90
    invoke-virtual {v9, v10}, Landroid/util/SparseArray;->remove(I)V

    #@93
    .line 2289
    new-instance v9, Ljava/lang/StringBuilder;

    #@95
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    #@98
    const-string/jumbo v10, " Removing from current network "

    #@9b
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@9e
    move-result-object v9

    #@9f
    invoke-virtual {v2}, Lcom/android/server/connectivity/NetworkAgentInfo;->name()Ljava/lang/String;

    #@a2
    move-result-object v10

    #@a3
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a6
    move-result-object v9

    #@a7
    .line 2290
    const-string/jumbo v10, ", leaving "

    #@aa
    .line 2289
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@ad
    move-result-object v9

    #@ae
    .line 2290
    iget-object v10, v2, Lcom/android/server/connectivity/NetworkAgentInfo;->networkRequests:Landroid/util/SparseArray;

    #@b0
    invoke-virtual {v10}, Landroid/util/SparseArray;->size()I

    #@b3
    move-result v10

    #@b4
    .line 2289
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@b7
    move-result-object v9

    #@b8
    .line 2291
    const-string/jumbo v10, " requests."

    #@bb
    .line 2289
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@be
    move-result-object v9

    #@bf
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@c2
    move-result-object v9

    #@c3
    invoke-static {v9}, Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V

    #@c6
    .line 2293
    invoke-direct {p0, v2}, Lcom/android/server/ConnectivityService;->unneeded(Lcom/android/server/connectivity/NetworkAgentInfo;)Z

    #@c9
    move-result v9

    #@ca
    if-eqz v9, :cond_2

    #@cc
    .line 2294
    new-instance v9, Ljava/lang/StringBuilder;

    #@ce
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    #@d1
    const-string/jumbo v10, "no live requests for "

    #@d4
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@d7
    move-result-object v9

    #@d8
    invoke-virtual {v2}, Lcom/android/server/connectivity/NetworkAgentInfo;->name()Ljava/lang/String;

    #@db
    move-result-object v10

    #@dc
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@df
    move-result-object v9

    #@e0
    const-string/jumbo v10, "; disconnecting"

    #@e3
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@e6
    move-result-object v9

    #@e7
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@ea
    move-result-object v9

    #@eb
    invoke-static {v9}, Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V

    #@ee
    .line 2295
    invoke-direct {p0, v2}, Lcom/android/server/ConnectivityService;->teardownUnneededNetwork(Lcom/android/server/connectivity/NetworkAgentInfo;)V

    #@f1
    goto :goto_0

    #@f2
    .line 2299
    :cond_2
    const/4 v9, 0x1

    #@f3
    or-int/2addr v8, v9

    #@f4
    .local v8, "wasKept":Z
    goto/16 :goto_0

    #@f6
    .line 2304
    .end local v2    # "nai":Lcom/android/server/connectivity/NetworkAgentInfo;
    .end local v8    # "wasKept":Z
    :cond_3
    iget-object v9, p0, Lcom/android/server/ConnectivityService;->mNetworkForRequestId:Landroid/util/SparseArray;

    #@f8
    iget-object v10, v6, Lcom/android/server/ConnectivityService$NetworkRequestInfo;->request:Landroid/net/NetworkRequest;

    #@fa
    iget v10, v10, Landroid/net/NetworkRequest;->requestId:I

    #@fc
    invoke-virtual {v9, v10}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    #@ff
    move-result-object v2

    #@100
    check-cast v2, Lcom/android/server/connectivity/NetworkAgentInfo;

    #@102
    .line 2305
    .restart local v2    # "nai":Lcom/android/server/connectivity/NetworkAgentInfo;
    if-eqz v2, :cond_4

    #@104
    .line 2306
    iget-object v9, p0, Lcom/android/server/ConnectivityService;->mNetworkForRequestId:Landroid/util/SparseArray;

    #@106
    iget-object v10, v6, Lcom/android/server/ConnectivityService$NetworkRequestInfo;->request:Landroid/net/NetworkRequest;

    #@108
    iget v10, v10, Landroid/net/NetworkRequest;->requestId:I

    #@10a
    invoke-virtual {v9, v10}, Landroid/util/SparseArray;->remove(I)V

    #@10d
    .line 2313
    :cond_4
    iget-object v9, v6, Lcom/android/server/ConnectivityService$NetworkRequestInfo;->request:Landroid/net/NetworkRequest;

    #@10f
    iget v9, v9, Landroid/net/NetworkRequest;->legacyType:I

    #@111
    const/4 v10, -0x1

    #@112
    if-eq v9, v10, :cond_7

    #@114
    if-eqz v2, :cond_7

    #@116
    .line 2314
    const/4 v0, 0x1

    #@117
    .line 2315
    .local v0, "doRemove":Z
    if-eqz v8, :cond_6

    #@119
    .line 2318
    const/4 v1, 0x0

    #@11a
    .local v1, "i":I
    :goto_1
    iget-object v9, v2, Lcom/android/server/connectivity/NetworkAgentInfo;->networkRequests:Landroid/util/SparseArray;

    #@11c
    invoke-virtual {v9}, Landroid/util/SparseArray;->size()I

    #@11f
    move-result v9

    #@120
    if-ge v1, v9, :cond_6

    #@122
    .line 2319
    iget-object v9, v2, Lcom/android/server/connectivity/NetworkAgentInfo;->networkRequests:Landroid/util/SparseArray;

    #@124
    invoke-virtual {v9, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    #@127
    move-result-object v7

    #@128
    check-cast v7, Landroid/net/NetworkRequest;

    #@12a
    .line 2320
    .local v7, "otherRequest":Landroid/net/NetworkRequest;
    iget v9, v7, Landroid/net/NetworkRequest;->legacyType:I

    #@12c
    iget-object v10, v6, Lcom/android/server/ConnectivityService$NetworkRequestInfo;->request:Landroid/net/NetworkRequest;

    #@12e
    iget v10, v10, Landroid/net/NetworkRequest;->legacyType:I

    #@130
    if-ne v9, v10, :cond_5

    #@132
    .line 2321
    invoke-direct {p0, v7}, Lcom/android/server/ConnectivityService;->isRequest(Landroid/net/NetworkRequest;)Z

    #@135
    move-result v9

    #@136
    .line 2320
    if-eqz v9, :cond_5

    #@138
    .line 2322
    const-string/jumbo v9, " still have other legacy request - leaving"

    #@13b
    invoke-static {v9}, Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V

    #@13e
    .line 2323
    const/4 v0, 0x0

    #@13f
    .line 2318
    :cond_5
    add-int/lit8 v1, v1, 0x1

    #@141
    goto :goto_1

    #@142
    .line 2328
    .end local v1    # "i":I
    .end local v7    # "otherRequest":Landroid/net/NetworkRequest;
    :cond_6
    if-eqz v0, :cond_7

    #@144
    .line 2329
    iget-object v9, p0, Lcom/android/server/ConnectivityService;->mLegacyTypeTracker:Lcom/android/server/ConnectivityService$LegacyTypeTracker;

    #@146
    iget-object v10, v6, Lcom/android/server/ConnectivityService$NetworkRequestInfo;->request:Landroid/net/NetworkRequest;

    #@148
    iget v10, v10, Landroid/net/NetworkRequest;->legacyType:I

    #@14a
    const/4 v11, 0x0

    #@14b
    invoke-virtual {v9, v10, v2, v11}, Lcom/android/server/ConnectivityService$LegacyTypeTracker;->remove(ILcom/android/server/connectivity/NetworkAgentInfo;Z)V

    #@14e
    .line 2333
    .end local v0    # "doRemove":Z
    :cond_7
    iget-object v9, p0, Lcom/android/server/ConnectivityService;->mNetworkFactoryInfos:Ljava/util/HashMap;

    #@150
    invoke-virtual {v9}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    #@153
    move-result-object v9

    #@154
    invoke-interface {v9}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@157
    move-result-object v5

    #@158
    .local v5, "nfi$iterator":Ljava/util/Iterator;
    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    #@15b
    move-result v9

    #@15c
    if-eqz v9, :cond_9

    #@15e
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@161
    move-result-object v4

    #@162
    check-cast v4, Lcom/android/server/ConnectivityService$NetworkFactoryInfo;

    #@164
    .line 2334
    .local v4, "nfi":Lcom/android/server/ConnectivityService$NetworkFactoryInfo;
    iget-object v9, v4, Lcom/android/server/ConnectivityService$NetworkFactoryInfo;->asyncChannel:Lcom/android/internal/util/AsyncChannel;

    #@166
    .line 2335
    iget-object v10, v6, Lcom/android/server/ConnectivityService$NetworkRequestInfo;->request:Landroid/net/NetworkRequest;

    #@168
    .line 2334
    const v11, 0x83001

    #@16b
    invoke-virtual {v9, v11, v10}, Lcom/android/internal/util/AsyncChannel;->sendMessage(ILjava/lang/Object;)V

    #@16e
    goto :goto_2

    #@16f
    .line 2340
    .end local v2    # "nai":Lcom/android/server/connectivity/NetworkAgentInfo;
    .end local v3    # "nai$iterator":Ljava/util/Iterator;
    .end local v4    # "nfi":Lcom/android/server/ConnectivityService$NetworkFactoryInfo;
    .end local v5    # "nfi$iterator":Ljava/util/Iterator;
    :cond_8
    iget-object v9, p0, Lcom/android/server/ConnectivityService;->mNetworkAgentInfos:Ljava/util/HashMap;

    #@171
    invoke-virtual {v9}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    #@174
    move-result-object v9

    #@175
    invoke-interface {v9}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@178
    move-result-object v3

    #@179
    .restart local v3    # "nai$iterator":Ljava/util/Iterator;
    :goto_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    #@17c
    move-result v9

    #@17d
    if-eqz v9, :cond_9

    #@17f
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@182
    move-result-object v2

    #@183
    check-cast v2, Lcom/android/server/connectivity/NetworkAgentInfo;

    #@185
    .line 2341
    .restart local v2    # "nai":Lcom/android/server/connectivity/NetworkAgentInfo;
    iget-object v9, v2, Lcom/android/server/connectivity/NetworkAgentInfo;->networkRequests:Landroid/util/SparseArray;

    #@187
    iget-object v10, v6, Lcom/android/server/ConnectivityService$NetworkRequestInfo;->request:Landroid/net/NetworkRequest;

    #@189
    iget v10, v10, Landroid/net/NetworkRequest;->requestId:I

    #@18b
    invoke-virtual {v9, v10}, Landroid/util/SparseArray;->remove(I)V

    #@18e
    goto :goto_3

    #@18f
    .line 2344
    .end local v2    # "nai":Lcom/android/server/connectivity/NetworkAgentInfo;
    :cond_9
    const v9, 0x80008

    #@192
    invoke-direct {p0, v6, v12, v9}, Lcom/android/server/ConnectivityService;->callCallbackForRequest(Lcom/android/server/ConnectivityService$NetworkRequestInfo;Lcom/android/server/connectivity/NetworkAgentInfo;I)V

    #@195
    .line 2268
    .end local v3    # "nai$iterator":Ljava/util/Iterator;
    :cond_a
    return-void
.end method

.method private handleReleaseNetworkRequestWithIntent(Landroid/app/PendingIntent;I)V
    .locals 2
    .param p1, "pendingIntent"    # Landroid/app/PendingIntent;
    .param p2, "callingUid"    # I

    #@0
    .prologue
    .line 2237
    invoke-direct {p0, p1}, Lcom/android/server/ConnectivityService;->findExistingNetworkRequestInfo(Landroid/app/PendingIntent;)Lcom/android/server/ConnectivityService$NetworkRequestInfo;

    #@3
    move-result-object v0

    #@4
    .line 2238
    .local v0, "nri":Lcom/android/server/ConnectivityService$NetworkRequestInfo;
    if-eqz v0, :cond_0

    #@6
    .line 2239
    iget-object v1, v0, Lcom/android/server/ConnectivityService$NetworkRequestInfo;->request:Landroid/net/NetworkRequest;

    #@8
    invoke-direct {p0, v1, p2}, Lcom/android/server/ConnectivityService;->handleReleaseNetworkRequest(Landroid/net/NetworkRequest;I)V

    #@b
    .line 2236
    :cond_0
    return-void
.end method

.method private handleSetAcceptUnvalidated(Landroid/net/Network;ZZ)V
    .locals 5
    .param p1, "network"    # Landroid/net/Network;
    .param p2, "accept"    # Z
    .param p3, "always"    # Z

    #@0
    .prologue
    .line 2355
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
    .line 2356
    const-string/jumbo v3, " accept="

    #@13
    .line 2355
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@16
    move-result-object v2

    #@17
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@1a
    move-result-object v2

    #@1b
    .line 2356
    const-string/jumbo v3, " always="

    #@1e
    .line 2355
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
    .line 2358
    invoke-direct {p0, p1}, Lcom/android/server/ConnectivityService;->getNetworkAgentInfoForNetwork(Landroid/net/Network;)Lcom/android/server/connectivity/NetworkAgentInfo;

    #@30
    move-result-object v0

    #@31
    .line 2359
    .local v0, "nai":Lcom/android/server/connectivity/NetworkAgentInfo;
    if-nez v0, :cond_0

    #@33
    .line 2361
    return-void

    #@34
    .line 2364
    :cond_0
    iget-boolean v2, v0, Lcom/android/server/connectivity/NetworkAgentInfo;->everValidated:Z

    #@36
    if-eqz v2, :cond_1

    #@38
    .line 2366
    return-void

    #@39
    .line 2369
    :cond_1
    iget-object v2, v0, Lcom/android/server/connectivity/NetworkAgentInfo;->networkMisc:Landroid/net/NetworkMisc;

    #@3b
    iget-boolean v2, v2, Landroid/net/NetworkMisc;->explicitlySelected:Z

    #@3d
    if-nez v2, :cond_2

    #@3f
    .line 2370
    const-string/jumbo v2, "ConnectivityService"

    #@42
    const-string/jumbo v3, "BUG: setAcceptUnvalidated non non-explicitly selected network"

    #@45
    invoke-static {v2, v3}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    #@48
    .line 2373
    :cond_2
    iget-object v2, v0, Lcom/android/server/connectivity/NetworkAgentInfo;->networkMisc:Landroid/net/NetworkMisc;

    #@4a
    iget-boolean v2, v2, Landroid/net/NetworkMisc;->acceptUnvalidated:Z

    #@4c
    if-eq p2, v2, :cond_3

    #@4e
    .line 2374
    invoke-virtual {v0}, Lcom/android/server/connectivity/NetworkAgentInfo;->getCurrentScore()I

    #@51
    move-result v1

    #@52
    .line 2375
    .local v1, "oldScore":I
    iget-object v2, v0, Lcom/android/server/connectivity/NetworkAgentInfo;->networkMisc:Landroid/net/NetworkMisc;

    #@54
    iput-boolean p2, v2, Landroid/net/NetworkMisc;->acceptUnvalidated:Z

    #@56
    .line 2376
    invoke-direct {p0, v0, v1}, Lcom/android/server/ConnectivityService;->rematchAllNetworksAndRequests(Lcom/android/server/connectivity/NetworkAgentInfo;I)V

    #@59
    .line 2377
    invoke-direct {p0, v0}, Lcom/android/server/ConnectivityService;->sendUpdatedScoreToFactories(Lcom/android/server/connectivity/NetworkAgentInfo;)V

    #@5c
    .line 2380
    .end local v1    # "oldScore":I
    :cond_3
    if-eqz p3, :cond_4

    #@5e
    .line 2381
    iget-object v3, v0, Lcom/android/server/connectivity/NetworkAgentInfo;->asyncChannel:Lcom/android/internal/util/AsyncChannel;

    #@60
    .line 2382
    if-eqz p2, :cond_6

    #@62
    const/4 v2, 0x1

    #@63
    :goto_0
    const v4, 0x81009

    #@66
    .line 2381
    invoke-virtual {v3, v4, v2}, Lcom/android/internal/util/AsyncChannel;->sendMessage(II)V

    #@69
    .line 2385
    :cond_4
    if-nez p2, :cond_5

    #@6b
    .line 2387
    iget-object v2, v0, Lcom/android/server/connectivity/NetworkAgentInfo;->asyncChannel:Lcom/android/internal/util/AsyncChannel;

    #@6d
    const v3, 0x8100b

    #@70
    invoke-virtual {v2, v3}, Lcom/android/internal/util/AsyncChannel;->sendMessage(I)V

    #@73
    .line 2389
    invoke-direct {p0, v0}, Lcom/android/server/ConnectivityService;->teardownUnneededNetwork(Lcom/android/server/connectivity/NetworkAgentInfo;)V

    #@76
    .line 2354
    :cond_5
    return-void

    #@77
    .line 2382
    :cond_6
    const/4 v2, 0x0

    #@78
    goto :goto_0
.end method

.method private handleUnregisterNetworkFactory(Landroid/os/Messenger;)V
    .locals 3
    .param p1, "messenger"    # Landroid/os/Messenger;

    #@0
    .prologue
    .line 3750
    iget-object v1, p0, Lcom/android/server/ConnectivityService;->mNetworkFactoryInfos:Ljava/util/HashMap;

    #@2
    invoke-virtual {v1, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Lcom/android/server/ConnectivityService$NetworkFactoryInfo;

    #@8
    .line 3751
    .local v0, "nfi":Lcom/android/server/ConnectivityService$NetworkFactoryInfo;
    if-nez v0, :cond_0

    #@a
    .line 3752
    const-string/jumbo v1, "Failed to find Messenger in unregisterNetworkFactory"

    #@d
    invoke-static {v1}, Lcom/android/server/ConnectivityService;->loge(Ljava/lang/String;)V

    #@10
    .line 3753
    return-void

    #@11
    .line 3755
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
    .line 3749
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
    .line 3673
    if-nez p1, :cond_0

    #@4
    .line 3674
    return v5

    #@5
    .line 3676
    :cond_0
    invoke-virtual {p1}, Landroid/net/NetworkCapabilities;->getTransportTypes()[I

    #@8
    move-result-object v1

    #@9
    .line 3677
    .local v1, "transportTypes":[I
    array-length v2, v1

    #@a
    if-ne v2, v6, :cond_1

    #@c
    aget v2, v1, v5

    #@e
    if-eq v2, v6, :cond_2

    #@10
    .line 3678
    :cond_1
    return v5

    #@11
    .line 3681
    :cond_2
    :try_start_0
    iget-object v2, p0, Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;

    #@13
    .line 3682
    const-string/jumbo v3, "android.permission.ACCESS_WIFI_STATE"

    #@16
    .line 3683
    const-string/jumbo v4, "ConnectivityService"

    #@19
    .line 3681
    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    #@1c
    .line 3687
    return v6

    #@1d
    .line 3684
    :catch_0
    move-exception v0

    #@1e
    .line 3685
    .local v0, "e":Ljava/lang/SecurityException;
    return v5
.end method

.method private isActiveNetworkMeteredUnchecked(I)Z
    .locals 3
    .param p1, "uid"    # I

    #@0
    .prologue
    .line 1250
    invoke-direct {p0, p1}, Lcom/android/server/ConnectivityService;->getUnfilteredActiveNetworkState(I)Landroid/net/NetworkState;

    #@3
    move-result-object v1

    #@4
    .line 1251
    .local v1, "state":Landroid/net/NetworkState;
    iget-object v2, v1, Landroid/net/NetworkState;->networkInfo:Landroid/net/NetworkInfo;

    #@6
    if-eqz v2, :cond_0

    #@8
    .line 1253
    :try_start_0
    iget-object v2, p0, Lcom/android/server/ConnectivityService;->mPolicyManager:Landroid/net/INetworkPolicyManager;

    #@a
    invoke-interface {v2, v1}, Landroid/net/INetworkPolicyManager;->isNetworkMetered(Landroid/net/NetworkState;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@d
    move-result v2

    #@e
    return v2

    #@f
    .line 1254
    :catch_0
    move-exception v0

    #@10
    .line 1257
    :cond_0
    const/4 v2, 0x0

    #@11
    return v2
.end method

.method private isDefaultNetwork(Lcom/android/server/connectivity/NetworkAgentInfo;)Z
    .locals 1
    .param p1, "nai"    # Lcom/android/server/connectivity/NetworkAgentInfo;

    #@0
    .prologue
    .line 3796
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

.method private isLiveNetworkAgent(Lcom/android/server/connectivity/NetworkAgentInfo;Ljava/lang/String;)Z
    .locals 4
    .param p1, "nai"    # Lcom/android/server/connectivity/NetworkAgentInfo;
    .param p2, "msg"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 1879
    iget-object v1, p1, Lcom/android/server/connectivity/NetworkAgentInfo;->network:Landroid/net/Network;

    #@3
    if-nez v1, :cond_0

    #@5
    return v3

    #@6
    .line 1880
    :cond_0
    iget-object v1, p1, Lcom/android/server/connectivity/NetworkAgentInfo;->network:Landroid/net/Network;

    #@8
    invoke-direct {p0, v1}, Lcom/android/server/ConnectivityService;->getNetworkAgentInfoForNetwork(Landroid/net/Network;)Lcom/android/server/connectivity/NetworkAgentInfo;

    #@b
    move-result-object v0

    #@c
    .line 1881
    .local v0, "officialNai":Lcom/android/server/connectivity/NetworkAgentInfo;
    if-eqz v0, :cond_1

    #@e
    invoke-virtual {v0, p1}, Lcom/android/server/connectivity/NetworkAgentInfo;->equals(Ljava/lang/Object;)Z

    #@11
    move-result v1

    #@12
    if-eqz v1, :cond_1

    #@14
    const/4 v1, 0x1

    #@15
    return v1

    #@16
    .line 1882
    :cond_1
    if-nez v0, :cond_2

    #@18
    .line 1886
    :goto_0
    return v3

    #@19
    .line 1883
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    #@1b
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@1e
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@21
    move-result-object v1

    #@22
    const-string/jumbo v2, " - isLiveNetworkAgent found mismatched netId: "

    #@25
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@28
    move-result-object v1

    #@29
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@2c
    move-result-object v1

    #@2d
    .line 1884
    const-string/jumbo v2, " - "

    #@30
    .line 1883
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@33
    move-result-object v1

    #@34
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@37
    move-result-object v1

    #@38
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3b
    move-result-object v1

    #@3c
    invoke-static {v1}, Lcom/android/server/ConnectivityService;->loge(Ljava/lang/String;)V

    #@3f
    goto :goto_0
.end method

.method private isNetworkWithLinkPropertiesBlocked(Landroid/net/LinkProperties;I)Z
    .locals 7
    .param p1, "lp"    # Landroid/net/LinkProperties;
    .param p2, "uid"    # I

    #@0
    .prologue
    const/4 v6, 0x0

    #@1
    .line 928
    if-nez p1, :cond_1

    #@3
    const-string/jumbo v0, ""

    #@6
    .line 929
    .local v0, "iface":Ljava/lang/String;
    :goto_0
    iget-object v4, p0, Lcom/android/server/ConnectivityService;->mRulesLock:Ljava/lang/Object;

    #@8
    monitor-enter v4

    #@9
    .line 930
    :try_start_0
    iget-object v3, p0, Lcom/android/server/ConnectivityService;->mMeteredIfaces:Ljava/util/HashSet;

    #@b
    invoke-virtual {v3, v0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    #@e
    move-result v1

    #@f
    .line 931
    .local v1, "networkCostly":Z
    iget-object v3, p0, Lcom/android/server/ConnectivityService;->mUidRules:Landroid/util/SparseIntArray;

    #@11
    const/4 v5, 0x0

    #@12
    invoke-virtual {v3, p2, v5}, Landroid/util/SparseIntArray;->get(II)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@15
    move-result v2

    #@16
    .local v2, "uidRules":I
    monitor-exit v4

    #@17
    .line 934
    and-int/lit8 v3, v2, 0x2

    #@19
    if-nez v3, :cond_0

    #@1b
    .line 935
    if-eqz v1, :cond_2

    #@1d
    and-int/lit8 v3, v2, 0x1

    #@1f
    if-eqz v3, :cond_2

    #@21
    .line 936
    :cond_0
    const/4 v3, 0x1

    #@22
    return v3

    #@23
    .line 928
    .end local v0    # "iface":Ljava/lang/String;
    .end local v1    # "networkCostly":Z
    .end local v2    # "uidRules":I
    :cond_1
    invoke-virtual {p1}, Landroid/net/LinkProperties;->getInterfaceName()Ljava/lang/String;

    #@26
    move-result-object v0

    #@27
    .restart local v0    # "iface":Ljava/lang/String;
    goto :goto_0

    #@28
    .line 929
    :catchall_0
    move-exception v3

    #@29
    monitor-exit v4

    #@2a
    throw v3

    #@2b
    .line 940
    .restart local v1    # "networkCostly":Z
    .restart local v2    # "uidRules":I
    :cond_2
    return v6
.end method

.method private isRequest(Landroid/net/NetworkRequest;)Z
    .locals 1
    .param p1, "request"    # Landroid/net/NetworkRequest;

    #@0
    .prologue
    .line 1890
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mNetworkRequests:Ljava/util/HashMap;

    #@2
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Lcom/android/server/ConnectivityService$NetworkRequestInfo;

    #@8
    iget-boolean v0, v0, Lcom/android/server/ConnectivityService$NetworkRequestInfo;->isRequest:Z

    #@a
    return v0
.end method

.method private linger(Lcom/android/server/connectivity/NetworkAgentInfo;)V
    .locals 2
    .param p1, "nai"    # Lcom/android/server/connectivity/NetworkAgentInfo;

    #@0
    .prologue
    .line 2070
    const/4 v0, 0x1

    #@1
    iput-boolean v0, p1, Lcom/android/server/connectivity/NetworkAgentInfo;->lingering:Z

    #@3
    .line 2071
    iget-object v0, p1, Lcom/android/server/connectivity/NetworkAgentInfo;->networkMonitor:Lcom/android/server/connectivity/NetworkMonitor;

    #@5
    const v1, 0x82003

    #@8
    invoke-virtual {v0, v1}, Lcom/android/server/connectivity/NetworkMonitor;->sendMessage(I)V

    #@b
    .line 2072
    const v0, 0x80003

    #@e
    invoke-virtual {p0, p1, v0}, Lcom/android/server/ConnectivityService;->notifyNetworkCallbacks(Lcom/android/server/connectivity/NetworkAgentInfo;I)V

    #@11
    .line 2069
    return-void
.end method

.method private loadGlobalProxy()V
    .locals 8

    #@0
    .prologue
    .line 2786
    iget-object v6, p0, Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;

    #@2
    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    #@5
    move-result-object v5

    #@6
    .line 2787
    .local v5, "res":Landroid/content/ContentResolver;
    const-string/jumbo v6, "global_http_proxy_host"

    #@9
    invoke-static {v5, v6}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    #@c
    move-result-object v1

    #@d
    .line 2788
    .local v1, "host":Ljava/lang/String;
    const-string/jumbo v6, "global_http_proxy_port"

    #@10
    const/4 v7, 0x0

    #@11
    invoke-static {v5, v6, v7}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    #@14
    move-result v3

    #@15
    .line 2790
    .local v3, "port":I
    const-string/jumbo v6, "global_http_proxy_exclusion_list"

    #@18
    .line 2789
    invoke-static {v5, v6}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    #@1b
    move-result-object v0

    #@1c
    .line 2791
    .local v0, "exclList":Ljava/lang/String;
    const-string/jumbo v6, "global_proxy_pac_url"

    #@1f
    invoke-static {v5, v6}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    #@22
    move-result-object v2

    #@23
    .line 2792
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
    .line 2785
    :goto_0
    return-void

    #@30
    .line 2794
    :cond_0
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@33
    move-result v6

    #@34
    if-nez v6, :cond_1

    #@36
    .line 2795
    new-instance v4, Landroid/net/ProxyInfo;

    #@38
    invoke-direct {v4, v2}, Landroid/net/ProxyInfo;-><init>(Ljava/lang/String;)V

    #@3b
    .line 2799
    .local v4, "proxyProperties":Landroid/net/ProxyInfo;
    :goto_1
    invoke-virtual {v4}, Landroid/net/ProxyInfo;->isValid()Z

    #@3e
    move-result v6

    #@3f
    if-nez v6, :cond_2

    #@41
    .line 2800
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
    .line 2801
    return-void

    #@5d
    .line 2797
    .end local v4    # "proxyProperties":Landroid/net/ProxyInfo;
    :cond_1
    new-instance v4, Landroid/net/ProxyInfo;

    #@5f
    invoke-direct {v4, v1, v3, v0}, Landroid/net/ProxyInfo;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    #@62
    .restart local v4    # "proxyProperties":Landroid/net/ProxyInfo;
    goto :goto_1

    #@63
    .line 2804
    :cond_2
    iget-object v6, p0, Lcom/android/server/ConnectivityService;->mProxyLock:Ljava/lang/Object;

    #@65
    monitor-enter v6

    #@66
    .line 2805
    :try_start_0
    iput-object v4, p0, Lcom/android/server/ConnectivityService;->mGlobalProxy:Landroid/net/ProxyInfo;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@68
    monitor-exit v6

    #@69
    goto :goto_0

    #@6a
    .line 2804
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
    .line 2942
    const-string/jumbo v0, "ConnectivityService"

    #@3
    invoke-static {v0, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@6
    .line 2941
    return-void
.end method

.method private static loge(Ljava/lang/String;)V
    .locals 1
    .param p0, "s"    # Ljava/lang/String;

    #@0
    .prologue
    .line 2946
    const-string/jumbo v0, "ConnectivityService"

    #@3
    invoke-static {v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@6
    .line 2945
    return-void
.end method

.method private makeDefault(Lcom/android/server/connectivity/NetworkAgentInfo;)V
    .locals 3
    .param p1, "newNetwork"    # Lcom/android/server/connectivity/NetworkAgentInfo;

    #@0
    .prologue
    .line 4160
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
    .line 4161
    invoke-direct {p0, p1}, Lcom/android/server/ConnectivityService;->setupDataActivityTracking(Lcom/android/server/connectivity/NetworkAgentInfo;)V

    #@1a
    .line 4163
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
    .line 4167
    :goto_0
    invoke-direct {p0, p1}, Lcom/android/server/ConnectivityService;->notifyLockdownVpn(Lcom/android/server/connectivity/NetworkAgentInfo;)V

    #@26
    .line 4168
    iget-object v1, p1, Lcom/android/server/connectivity/NetworkAgentInfo;->linkProperties:Landroid/net/LinkProperties;

    #@28
    invoke-virtual {v1}, Landroid/net/LinkProperties;->getHttpProxy()Landroid/net/ProxyInfo;

    #@2b
    move-result-object v1

    #@2c
    invoke-direct {p0, v1}, Lcom/android/server/ConnectivityService;->handleApplyDefaultProxy(Landroid/net/ProxyInfo;)V

    #@2f
    .line 4169
    invoke-direct {p0, p1}, Lcom/android/server/ConnectivityService;->updateTcpBufferSizes(Lcom/android/server/connectivity/NetworkAgentInfo;)V

    #@32
    .line 4170
    iget-object v1, p1, Lcom/android/server/connectivity/NetworkAgentInfo;->linkProperties:Landroid/net/LinkProperties;

    #@34
    invoke-virtual {v1}, Landroid/net/LinkProperties;->getDnsServers()Ljava/util/List;

    #@37
    move-result-object v1

    #@38
    invoke-direct {p0, v1}, Lcom/android/server/ConnectivityService;->setDefaultDnsSystemProperties(Ljava/util/Collection;)V

    #@3b
    .line 4159
    return-void

    #@3c
    .line 4164
    :catch_0
    move-exception v0

    #@3d
    .line 4165
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
    .locals 3
    .param p1, "info"    # Landroid/net/NetworkInfo;
    .param p2, "bcastType"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1463
    iget-object v1, p0, Lcom/android/server/ConnectivityService;->mLockdownTracker:Lcom/android/server/net/LockdownVpnTracker;

    #@2
    if-eqz v1, :cond_0

    #@4
    .line 1464
    iget-object v1, p0, Lcom/android/server/ConnectivityService;->mLockdownTracker:Lcom/android/server/net/LockdownVpnTracker;

    #@6
    invoke-virtual {v1, p1}, Lcom/android/server/net/LockdownVpnTracker;->augmentNetworkInfo(Landroid/net/NetworkInfo;)Landroid/net/NetworkInfo;

    #@9
    move-result-object p1

    #@a
    .line 1467
    :cond_0
    new-instance v0, Landroid/content/Intent;

    #@c
    invoke-direct {v0, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    #@f
    .line 1468
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v1, "networkInfo"

    #@12
    new-instance v2, Landroid/net/NetworkInfo;

    #@14
    invoke-direct {v2, p1}, Landroid/net/NetworkInfo;-><init>(Landroid/net/NetworkInfo;)V

    #@17
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    #@1a
    .line 1469
    const-string/jumbo v1, "networkType"

    #@1d
    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getType()I

    #@20
    move-result v2

    #@21
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    #@24
    .line 1470
    invoke-virtual {p1}, Landroid/net/NetworkInfo;->isFailover()Z

    #@27
    move-result v1

    #@28
    if-eqz v1, :cond_1

    #@2a
    .line 1471
    const-string/jumbo v1, "isFailover"

    #@2d
    const/4 v2, 0x1

    #@2e
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    #@31
    .line 1472
    const/4 v1, 0x0

    #@32
    invoke-virtual {p1, v1}, Landroid/net/NetworkInfo;->setFailover(Z)V

    #@35
    .line 1474
    :cond_1
    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getReason()Ljava/lang/String;

    #@38
    move-result-object v1

    #@39
    if-eqz v1, :cond_2

    #@3b
    .line 1475
    const-string/jumbo v1, "reason"

    #@3e
    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getReason()Ljava/lang/String;

    #@41
    move-result-object v2

    #@42
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    #@45
    .line 1477
    :cond_2
    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getExtraInfo()Ljava/lang/String;

    #@48
    move-result-object v1

    #@49
    if-eqz v1, :cond_3

    #@4b
    .line 1478
    const-string/jumbo v1, "extraInfo"

    #@4e
    .line 1479
    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getExtraInfo()Ljava/lang/String;

    #@51
    move-result-object v2

    #@52
    .line 1478
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    #@55
    .line 1481
    :cond_3
    const-string/jumbo v1, "inetCondition"

    #@58
    iget v2, p0, Lcom/android/server/ConnectivityService;->mDefaultInetConditionPublished:I

    #@5a
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    #@5d
    .line 1482
    return-object v0
.end method

.method private declared-synchronized nextNetworkRequestId()I
    .locals 2

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 808
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

.method private notifyIfacesChanged()V
    .locals 2

    #@0
    .prologue
    .line 4676
    :try_start_0
    iget-object v1, p0, Lcom/android/server/ConnectivityService;->mStatsService:Landroid/net/INetworkStatsService;

    #@2
    invoke-interface {v1}, Landroid/net/INetworkStatsService;->forceUpdateIfaces()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    #@5
    .line 4674
    :goto_0
    return-void

    #@6
    .line 4677
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
    .line 4467
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mLockdownTracker:Lcom/android/server/net/LockdownVpnTracker;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 4468
    if-eqz p1, :cond_1

    #@6
    invoke-virtual {p1}, Lcom/android/server/connectivity/NetworkAgentInfo;->isVPN()Z

    #@9
    move-result v0

    #@a
    if-eqz v0, :cond_1

    #@c
    .line 4469
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mLockdownTracker:Lcom/android/server/net/LockdownVpnTracker;

    #@e
    iget-object v1, p1, Lcom/android/server/connectivity/NetworkAgentInfo;->networkInfo:Landroid/net/NetworkInfo;

    #@10
    invoke-virtual {v0, v1}, Lcom/android/server/net/LockdownVpnTracker;->onVpnStateChanged(Landroid/net/NetworkInfo;)V

    #@13
    .line 4466
    :cond_0
    :goto_0
    return-void

    #@14
    .line 4471
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
    .line 4658
    packed-switch p1, :pswitch_data_0

    #@3
    .line 4668
    const-string/jumbo v0, "UNKNOWN"

    #@6
    return-object v0

    #@7
    .line 4659
    :pswitch_0
    const-string/jumbo v0, "PRECHECK"

    #@a
    return-object v0

    #@b
    .line 4660
    :pswitch_1
    const-string/jumbo v0, "AVAILABLE"

    #@e
    return-object v0

    #@f
    .line 4661
    :pswitch_2
    const-string/jumbo v0, "LOSING"

    #@12
    return-object v0

    #@13
    .line 4662
    :pswitch_3
    const-string/jumbo v0, "LOST"

    #@16
    return-object v0

    #@17
    .line 4663
    :pswitch_4
    const-string/jumbo v0, "UNAVAILABLE"

    #@1a
    return-object v0

    #@1b
    .line 4664
    :pswitch_5
    const-string/jumbo v0, "CAP_CHANGED"

    #@1e
    return-object v0

    #@1f
    .line 4665
    :pswitch_6
    const-string/jumbo v0, "IP_CHANGED"

    #@22
    return-object v0

    #@23
    .line 4666
    :pswitch_7
    const-string/jumbo v0, "RELEASED"

    #@26
    return-object v0

    #@27
    .line 4658
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

.method private onUserStart(I)V
    .locals 5
    .param p1, "userId"    # I

    #@0
    .prologue
    .line 3439
    iget-object v2, p0, Lcom/android/server/ConnectivityService;->mVpns:Landroid/util/SparseArray;

    #@2
    monitor-enter v2

    #@3
    .line 3440
    :try_start_0
    iget-object v1, p0, Lcom/android/server/ConnectivityService;->mVpns:Landroid/util/SparseArray;

    #@5
    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    #@8
    move-result-object v0

    #@9
    check-cast v0, Lcom/android/server/connectivity/Vpn;

    #@b
    .line 3441
    .local v0, "userVpn":Lcom/android/server/connectivity/Vpn;
    if-eqz v0, :cond_0

    #@d
    .line 3442
    const-string/jumbo v1, "Starting user already has a VPN"

    #@10
    invoke-static {v1}, Lcom/android/server/ConnectivityService;->loge(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@13
    monitor-exit v2

    #@14
    .line 3443
    return-void

    #@15
    .line 3445
    :cond_0
    :try_start_1
    new-instance v0, Lcom/android/server/connectivity/Vpn;

    #@17
    .end local v0    # "userVpn":Lcom/android/server/connectivity/Vpn;
    iget-object v1, p0, Lcom/android/server/ConnectivityService;->mHandler:Lcom/android/server/ConnectivityService$InternalHandler;

    #@19
    invoke-virtual {v1}, Lcom/android/server/ConnectivityService$InternalHandler;->getLooper()Landroid/os/Looper;

    #@1c
    move-result-object v1

    #@1d
    iget-object v3, p0, Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;

    #@1f
    iget-object v4, p0, Lcom/android/server/ConnectivityService;->mNetd:Landroid/os/INetworkManagementService;

    #@21
    invoke-direct {v0, v1, v3, v4, p1}, Lcom/android/server/connectivity/Vpn;-><init>(Landroid/os/Looper;Landroid/content/Context;Landroid/os/INetworkManagementService;I)V

    #@24
    .line 3446
    .restart local v0    # "userVpn":Lcom/android/server/connectivity/Vpn;
    iget-object v1, p0, Lcom/android/server/ConnectivityService;->mVpns:Landroid/util/SparseArray;

    #@26
    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@29
    monitor-exit v2

    #@2a
    .line 3438
    return-void

    #@2b
    .line 3439
    .end local v0    # "userVpn":Lcom/android/server/connectivity/Vpn;
    :catchall_0
    move-exception v1

    #@2c
    monitor-exit v2

    #@2d
    throw v1
.end method

.method private onUserStop(I)V
    .locals 3
    .param p1, "userId"    # I

    #@0
    .prologue
    .line 3451
    iget-object v2, p0, Lcom/android/server/ConnectivityService;->mVpns:Landroid/util/SparseArray;

    #@2
    monitor-enter v2

    #@3
    .line 3452
    :try_start_0
    iget-object v1, p0, Lcom/android/server/ConnectivityService;->mVpns:Landroid/util/SparseArray;

    #@5
    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    #@8
    move-result-object v0

    #@9
    check-cast v0, Lcom/android/server/connectivity/Vpn;

    #@b
    .line 3453
    .local v0, "userVpn":Lcom/android/server/connectivity/Vpn;
    if-nez v0, :cond_0

    #@d
    .line 3454
    const-string/jumbo v1, "Stopping user has no VPN"

    #@10
    invoke-static {v1}, Lcom/android/server/ConnectivityService;->loge(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@13
    monitor-exit v2

    #@14
    .line 3455
    return-void

    #@15
    .line 3457
    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/android/server/ConnectivityService;->mVpns:Landroid/util/SparseArray;

    #@17
    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->delete(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@1a
    monitor-exit v2

    #@1b
    .line 3450
    return-void

    #@1c
    .line 3451
    .end local v0    # "userVpn":Lcom/android/server/connectivity/Vpn;
    :catchall_0
    move-exception v1

    #@1d
    monitor-exit v2

    #@1e
    throw v1
.end method

.method private proxyInfoEqual(Landroid/net/ProxyInfo;Landroid/net/ProxyInfo;)Z
    .locals 2
    .param p1, "a"    # Landroid/net/ProxyInfo;
    .param p2, "b"    # Landroid/net/ProxyInfo;

    #@0
    .prologue
    .line 2730
    invoke-direct {p0, p1}, Lcom/android/server/ConnectivityService;->canonicalizeProxyInfo(Landroid/net/ProxyInfo;)Landroid/net/ProxyInfo;

    #@3
    move-result-object p1

    #@4
    .line 2731
    invoke-direct {p0, p2}, Lcom/android/server/ConnectivityService;->canonicalizeProxyInfo(Landroid/net/ProxyInfo;)Landroid/net/ProxyInfo;

    #@7
    move-result-object p2

    #@8
    .line 2734
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
    .line 797
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mSettingsObserver:Lcom/android/server/ConnectivityService$SettingsObserver;

    #@2
    .line 798
    const-string/jumbo v1, "http_proxy"

    #@5
    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    #@8
    move-result-object v1

    #@9
    .line 799
    const/16 v2, 0x9

    #@b
    .line 797
    invoke-virtual {v0, v1, v2}, Lcom/android/server/ConnectivityService$SettingsObserver;->observe(Landroid/net/Uri;I)V

    #@e
    .line 802
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mSettingsObserver:Lcom/android/server/ConnectivityService$SettingsObserver;

    #@10
    .line 803
    const-string/jumbo v1, "mobile_data_always_on"

    #@13
    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    #@16
    move-result-object v1

    #@17
    .line 804
    const/16 v2, 0x1e

    #@19
    .line 802
    invoke-virtual {v0, v1, v2}, Lcom/android/server/ConnectivityService$SettingsObserver;->observe(Landroid/net/Uri;I)V

    #@1c
    .line 795
    return-void
.end method

.method private releasePendingNetworkRequestWithDelay(Landroid/app/PendingIntent;)V
    .locals 5
    .param p1, "operation"    # Landroid/app/PendingIntent;

    #@0
    .prologue
    .line 3656
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mHandler:Lcom/android/server/ConnectivityService$InternalHandler;

    #@2
    .line 3657
    iget-object v1, p0, Lcom/android/server/ConnectivityService;->mHandler:Lcom/android/server/ConnectivityService$InternalHandler;

    #@4
    .line 3658
    invoke-static {}, Lcom/android/server/ConnectivityService;->getCallingUid()I

    #@7
    move-result v2

    #@8
    .line 3657
    const/16 v3, 0x1b

    #@a
    .line 3658
    const/4 v4, 0x0

    #@b
    .line 3657
    invoke-virtual {v1, v3, v2, v4, p1}, Lcom/android/server/ConnectivityService$InternalHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    #@e
    move-result-object v1

    #@f
    .line 3658
    iget v2, p0, Lcom/android/server/ConnectivityService;->mReleasePendingIntentDelayMs:I

    #@11
    int-to-long v2, v2

    #@12
    .line 3656
    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/ConnectivityService$InternalHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    #@15
    .line 3655
    return-void
.end method

.method private rematchAllNetworksAndRequests(Lcom/android/server/connectivity/NetworkAgentInfo;I)V
    .locals 5
    .param p1, "changed"    # Lcom/android/server/connectivity/NetworkAgentInfo;
    .param p2, "oldScore"    # I

    #@0
    .prologue
    .line 4431
    if-eqz p1, :cond_1

    #@2
    invoke-virtual {p1}, Lcom/android/server/connectivity/NetworkAgentInfo;->getCurrentScore()I

    #@5
    move-result v2

    #@6
    if-ge p2, v2, :cond_1

    #@8
    .line 4432
    sget-object v2, Lcom/android/server/ConnectivityService$ReapUnvalidatedNetworks;->REAP:Lcom/android/server/ConnectivityService$ReapUnvalidatedNetworks;

    #@a
    invoke-direct {p0, p1, v2}, Lcom/android/server/ConnectivityService;->rematchNetworkAndRequests(Lcom/android/server/connectivity/NetworkAgentInfo;Lcom/android/server/ConnectivityService$ReapUnvalidatedNetworks;)V

    #@d
    .line 4422
    :cond_0
    return-void

    #@e
    .line 4434
    :cond_1
    iget-object v2, p0, Lcom/android/server/ConnectivityService;->mNetworkAgentInfos:Ljava/util/HashMap;

    #@10
    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    #@13
    move-result-object v2

    #@14
    .line 4435
    iget-object v3, p0, Lcom/android/server/ConnectivityService;->mNetworkAgentInfos:Ljava/util/HashMap;

    #@16
    invoke-virtual {v3}, Ljava/util/HashMap;->size()I

    #@19
    move-result v3

    #@1a
    new-array v3, v3, [Lcom/android/server/connectivity/NetworkAgentInfo;

    #@1c
    .line 4434
    invoke-interface {v2, v3}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    #@1f
    move-result-object v1

    #@20
    check-cast v1, [Lcom/android/server/connectivity/NetworkAgentInfo;

    #@22
    .line 4439
    .local v1, "nais":[Lcom/android/server/connectivity/NetworkAgentInfo;
    invoke-static {v1}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    #@25
    .line 4440
    const/4 v2, 0x0

    #@26
    array-length v4, v1

    #@27
    move v3, v2

    #@28
    :goto_0
    if-ge v3, v4, :cond_0

    #@2a
    aget-object v0, v1, v3

    #@2c
    .line 4445
    .local v0, "nai":Lcom/android/server/connectivity/NetworkAgentInfo;
    array-length v2, v1

    #@2d
    add-int/lit8 v2, v2, -0x1

    #@2f
    aget-object v2, v1, v2

    #@31
    if-eq v0, v2, :cond_2

    #@33
    sget-object v2, Lcom/android/server/ConnectivityService$ReapUnvalidatedNetworks;->DONT_REAP:Lcom/android/server/ConnectivityService$ReapUnvalidatedNetworks;

    #@35
    .line 4441
    :goto_1
    invoke-direct {p0, v0, v2}, Lcom/android/server/ConnectivityService;->rematchNetworkAndRequests(Lcom/android/server/connectivity/NetworkAgentInfo;Lcom/android/server/ConnectivityService$ReapUnvalidatedNetworks;)V

    #@38
    .line 4440
    add-int/lit8 v2, v3, 0x1

    #@3a
    move v3, v2

    #@3b
    goto :goto_0

    #@3c
    .line 4446
    :cond_2
    sget-object v2, Lcom/android/server/ConnectivityService$ReapUnvalidatedNetworks;->REAP:Lcom/android/server/ConnectivityService$ReapUnvalidatedNetworks;

    #@3e
    goto :goto_1
.end method

.method private rematchNetworkAndRequests(Lcom/android/server/connectivity/NetworkAgentInfo;Lcom/android/server/ConnectivityService$ReapUnvalidatedNetworks;)V
    .locals 29
    .param p1, "newNetwork"    # Lcom/android/server/connectivity/NetworkAgentInfo;
    .param p2, "reapUnvalidatedNetworks"    # Lcom/android/server/ConnectivityService$ReapUnvalidatedNetworks;

    #@0
    .prologue
    .line 4202
    move-object/from16 v0, p1

    #@2
    iget-boolean v0, v0, Lcom/android/server/connectivity/NetworkAgentInfo;->created:Z

    #@4
    move/from16 v24, v0

    #@6
    if-nez v24, :cond_0

    #@8
    return-void

    #@9
    .line 4203
    :cond_0
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/connectivity/NetworkAgentInfo;->isVPN()Z

    #@c
    move-result v12

    #@d
    .line 4204
    .local v12, "keep":Z
    const/4 v11, 0x0

    #@e
    .line 4205
    .local v11, "isNewDefault":Z
    const/16 v18, 0x0

    #@10
    .line 4206
    .local v18, "oldDefaultNetwork":Lcom/android/server/connectivity/NetworkAgentInfo;
    new-instance v24, Ljava/lang/StringBuilder;

    #@12
    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    #@15
    const-string/jumbo v25, "rematching "

    #@18
    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1b
    move-result-object v24

    #@1c
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/connectivity/NetworkAgentInfo;->name()Ljava/lang/String;

    #@1f
    move-result-object v25

    #@20
    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@23
    move-result-object v24

    #@24
    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@27
    move-result-object v24

    #@28
    invoke-static/range {v24 .. v24}, Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V

    #@2b
    .line 4209
    new-instance v5, Ljava/util/ArrayList;

    #@2d
    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    #@30
    .line 4210
    .local v5, "affectedNetworks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/connectivity/NetworkAgentInfo;>;"
    new-instance v4, Ljava/util/ArrayList;

    #@32
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    #@35
    .line 4212
    .local v4, "addedRequests":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/ConnectivityService$NetworkRequestInfo;>;"
    move-object/from16 v0, p0

    #@37
    iget-object v0, v0, Lcom/android/server/ConnectivityService;->mNetworkRequests:Ljava/util/HashMap;

    #@39
    move-object/from16 v24, v0

    #@3b
    invoke-virtual/range {v24 .. v24}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    #@3e
    move-result-object v24

    #@3f
    invoke-interface/range {v24 .. v24}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@42
    move-result-object v17

    #@43
    .end local v12    # "keep":Z
    .end local v18    # "oldDefaultNetwork":Lcom/android/server/connectivity/NetworkAgentInfo;
    .local v17, "nri$iterator":Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->hasNext()Z

    #@46
    move-result v24

    #@47
    if-eqz v24, :cond_a

    #@49
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@4c
    move-result-object v16

    #@4d
    check-cast v16, Lcom/android/server/ConnectivityService$NetworkRequestInfo;

    #@4f
    .line 4213
    .local v16, "nri":Lcom/android/server/ConnectivityService$NetworkRequestInfo;
    move-object/from16 v0, p0

    #@51
    iget-object v0, v0, Lcom/android/server/ConnectivityService;->mNetworkForRequestId:Landroid/util/SparseArray;

    #@53
    move-object/from16 v24, v0

    #@55
    move-object/from16 v0, v16

    #@57
    iget-object v0, v0, Lcom/android/server/ConnectivityService$NetworkRequestInfo;->request:Landroid/net/NetworkRequest;

    #@59
    move-object/from16 v25, v0

    #@5b
    move-object/from16 v0, v25

    #@5d
    iget v0, v0, Landroid/net/NetworkRequest;->requestId:I

    #@5f
    move/from16 v25, v0

    #@61
    invoke-virtual/range {v24 .. v25}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    #@64
    move-result-object v8

    #@65
    check-cast v8, Lcom/android/server/connectivity/NetworkAgentInfo;

    #@67
    .line 4214
    .local v8, "currentNetwork":Lcom/android/server/connectivity/NetworkAgentInfo;
    move-object/from16 v0, v16

    #@69
    iget-object v0, v0, Lcom/android/server/ConnectivityService$NetworkRequestInfo;->request:Landroid/net/NetworkRequest;

    #@6b
    move-object/from16 v24, v0

    #@6d
    move-object/from16 v0, p1

    #@6f
    move-object/from16 v1, v24

    #@71
    invoke-virtual {v0, v1}, Lcom/android/server/connectivity/NetworkAgentInfo;->satisfies(Landroid/net/NetworkRequest;)Z

    #@74
    move-result v19

    #@75
    .line 4215
    .local v19, "satisfies":Z
    move-object/from16 v0, p1

    #@77
    if-ne v0, v8, :cond_2

    #@79
    if-eqz v19, :cond_2

    #@7b
    .line 4220
    const/4 v12, 0x1

    #@7c
    .line 4221
    .local v12, "keep":Z
    goto :goto_0

    #@7d
    .line 4226
    .end local v12    # "keep":Z
    :cond_2
    if-eqz v19, :cond_7

    #@7f
    .line 4227
    move-object/from16 v0, v16

    #@81
    iget-boolean v0, v0, Lcom/android/server/ConnectivityService$NetworkRequestInfo;->isRequest:Z

    #@83
    move/from16 v24, v0

    #@85
    if-nez v24, :cond_3

    #@87
    .line 4230
    move-object/from16 v0, v16

    #@89
    iget-object v0, v0, Lcom/android/server/ConnectivityService$NetworkRequestInfo;->request:Landroid/net/NetworkRequest;

    #@8b
    move-object/from16 v24, v0

    #@8d
    move-object/from16 v0, p1

    #@8f
    move-object/from16 v1, v24

    #@91
    invoke-virtual {v0, v1}, Lcom/android/server/connectivity/NetworkAgentInfo;->addRequest(Landroid/net/NetworkRequest;)Z

    #@94
    move-result v24

    #@95
    if-eqz v24, :cond_1

    #@97
    move-object/from16 v0, v16

    #@99
    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@9c
    goto :goto_0

    #@9d
    .line 4241
    :cond_3
    if-eqz v8, :cond_4

    #@9f
    .line 4242
    invoke-virtual {v8}, Lcom/android/server/connectivity/NetworkAgentInfo;->getCurrentScore()I

    #@a2
    move-result v24

    #@a3
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/connectivity/NetworkAgentInfo;->getCurrentScore()I

    #@a6
    move-result v25

    #@a7
    move/from16 v0, v24

    #@a9
    move/from16 v1, v25

    #@ab
    if-ge v0, v1, :cond_1

    #@ad
    .line 4243
    :cond_4
    if-eqz v8, :cond_6

    #@af
    .line 4244
    new-instance v24, Ljava/lang/StringBuilder;

    #@b1
    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    #@b4
    const-string/jumbo v25, "   accepting network in place of "

    #@b7
    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@ba
    move-result-object v24

    #@bb
    invoke-virtual {v8}, Lcom/android/server/connectivity/NetworkAgentInfo;->name()Ljava/lang/String;

    #@be
    move-result-object v25

    #@bf
    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@c2
    move-result-object v24

    #@c3
    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@c6
    move-result-object v24

    #@c7
    invoke-static/range {v24 .. v24}, Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V

    #@ca
    .line 4245
    iget-object v0, v8, Lcom/android/server/connectivity/NetworkAgentInfo;->networkRequests:Landroid/util/SparseArray;

    #@cc
    move-object/from16 v24, v0

    #@ce
    move-object/from16 v0, v16

    #@d0
    iget-object v0, v0, Lcom/android/server/ConnectivityService$NetworkRequestInfo;->request:Landroid/net/NetworkRequest;

    #@d2
    move-object/from16 v25, v0

    #@d4
    move-object/from16 v0, v25

    #@d6
    iget v0, v0, Landroid/net/NetworkRequest;->requestId:I

    #@d8
    move/from16 v25, v0

    #@da
    invoke-virtual/range {v24 .. v25}, Landroid/util/SparseArray;->remove(I)V

    #@dd
    .line 4246
    iget-object v0, v8, Lcom/android/server/connectivity/NetworkAgentInfo;->networkLingered:Ljava/util/ArrayList;

    #@df
    move-object/from16 v24, v0

    #@e1
    move-object/from16 v0, v16

    #@e3
    iget-object v0, v0, Lcom/android/server/ConnectivityService$NetworkRequestInfo;->request:Landroid/net/NetworkRequest;

    #@e5
    move-object/from16 v25, v0

    #@e7
    invoke-virtual/range {v24 .. v25}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@ea
    .line 4247
    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@ed
    .line 4251
    :goto_1
    invoke-direct/range {p0 .. p1}, Lcom/android/server/ConnectivityService;->unlinger(Lcom/android/server/connectivity/NetworkAgentInfo;)V

    #@f0
    .line 4252
    move-object/from16 v0, p0

    #@f2
    iget-object v0, v0, Lcom/android/server/ConnectivityService;->mNetworkForRequestId:Landroid/util/SparseArray;

    #@f4
    move-object/from16 v24, v0

    #@f6
    move-object/from16 v0, v16

    #@f8
    iget-object v0, v0, Lcom/android/server/ConnectivityService$NetworkRequestInfo;->request:Landroid/net/NetworkRequest;

    #@fa
    move-object/from16 v25, v0

    #@fc
    move-object/from16 v0, v25

    #@fe
    iget v0, v0, Landroid/net/NetworkRequest;->requestId:I

    #@100
    move/from16 v25, v0

    #@102
    move-object/from16 v0, v24

    #@104
    move/from16 v1, v25

    #@106
    move-object/from16 v2, p1

    #@108
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    #@10b
    .line 4253
    move-object/from16 v0, v16

    #@10d
    iget-object v0, v0, Lcom/android/server/ConnectivityService$NetworkRequestInfo;->request:Landroid/net/NetworkRequest;

    #@10f
    move-object/from16 v24, v0

    #@111
    move-object/from16 v0, p1

    #@113
    move-object/from16 v1, v24

    #@115
    invoke-virtual {v0, v1}, Lcom/android/server/connectivity/NetworkAgentInfo;->addRequest(Landroid/net/NetworkRequest;)Z

    #@118
    move-result v24

    #@119
    if-nez v24, :cond_5

    #@11b
    .line 4254
    const-string/jumbo v24, "ConnectivityService"

    #@11e
    new-instance v25, Ljava/lang/StringBuilder;

    #@120
    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    #@123
    const-string/jumbo v26, "BUG: "

    #@126
    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@129
    move-result-object v25

    #@12a
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/connectivity/NetworkAgentInfo;->name()Ljava/lang/String;

    #@12d
    move-result-object v26

    #@12e
    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@131
    move-result-object v25

    #@132
    const-string/jumbo v26, " already has "

    #@135
    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@138
    move-result-object v25

    #@139
    move-object/from16 v0, v16

    #@13b
    iget-object v0, v0, Lcom/android/server/ConnectivityService$NetworkRequestInfo;->request:Landroid/net/NetworkRequest;

    #@13d
    move-object/from16 v26, v0

    #@13f
    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@142
    move-result-object v25

    #@143
    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@146
    move-result-object v25

    #@147
    invoke-static/range {v24 .. v25}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    #@14a
    .line 4256
    :cond_5
    move-object/from16 v0, v16

    #@14c
    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@14f
    .line 4257
    const/4 v12, 0x1

    #@150
    .line 4263
    .restart local v12    # "keep":Z
    move-object/from16 v0, v16

    #@152
    iget-object v0, v0, Lcom/android/server/ConnectivityService$NetworkRequestInfo;->request:Landroid/net/NetworkRequest;

    #@154
    move-object/from16 v24, v0

    #@156
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/connectivity/NetworkAgentInfo;->getCurrentScore()I

    #@159
    move-result v25

    #@15a
    move-object/from16 v0, p0

    #@15c
    move-object/from16 v1, v24

    #@15e
    move/from16 v2, v25

    #@160
    invoke-direct {v0, v1, v2}, Lcom/android/server/ConnectivityService;->sendUpdatedScoreToFactories(Landroid/net/NetworkRequest;I)V

    #@163
    .line 4264
    move-object/from16 v0, p0

    #@165
    iget-object v0, v0, Lcom/android/server/ConnectivityService;->mDefaultRequest:Landroid/net/NetworkRequest;

    #@167
    move-object/from16 v24, v0

    #@169
    move-object/from16 v0, v24

    #@16b
    iget v0, v0, Landroid/net/NetworkRequest;->requestId:I

    #@16d
    move/from16 v24, v0

    #@16f
    move-object/from16 v0, v16

    #@171
    iget-object v0, v0, Lcom/android/server/ConnectivityService$NetworkRequestInfo;->request:Landroid/net/NetworkRequest;

    #@173
    move-object/from16 v25, v0

    #@175
    move-object/from16 v0, v25

    #@177
    iget v0, v0, Landroid/net/NetworkRequest;->requestId:I

    #@179
    move/from16 v25, v0

    #@17b
    move/from16 v0, v24

    #@17d
    move/from16 v1, v25

    #@17f
    if-ne v0, v1, :cond_1

    #@181
    .line 4265
    const/4 v11, 0x1

    #@182
    .line 4266
    move-object/from16 v18, v8

    #@184
    .local v18, "oldDefaultNetwork":Lcom/android/server/connectivity/NetworkAgentInfo;
    goto/16 :goto_0

    #@186
    .line 4249
    .end local v12    # "keep":Z
    .end local v18    # "oldDefaultNetwork":Lcom/android/server/connectivity/NetworkAgentInfo;
    :cond_6
    const-string/jumbo v24, "   accepting network in place of null"

    #@189
    invoke-static/range {v24 .. v24}, Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V

    #@18c
    goto/16 :goto_1

    #@18e
    .line 4269
    :cond_7
    move-object/from16 v0, p1

    #@190
    iget-object v0, v0, Lcom/android/server/connectivity/NetworkAgentInfo;->networkRequests:Landroid/util/SparseArray;

    #@192
    move-object/from16 v24, v0

    #@194
    move-object/from16 v0, v16

    #@196
    iget-object v0, v0, Lcom/android/server/ConnectivityService$NetworkRequestInfo;->request:Landroid/net/NetworkRequest;

    #@198
    move-object/from16 v25, v0

    #@19a
    move-object/from16 v0, v25

    #@19c
    iget v0, v0, Landroid/net/NetworkRequest;->requestId:I

    #@19e
    move/from16 v25, v0

    #@1a0
    invoke-virtual/range {v24 .. v25}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    #@1a3
    move-result-object v24

    #@1a4
    if-eqz v24, :cond_1

    #@1a6
    .line 4278
    new-instance v24, Ljava/lang/StringBuilder;

    #@1a8
    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    #@1ab
    const-string/jumbo v25, "Network "

    #@1ae
    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1b1
    move-result-object v24

    #@1b2
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/connectivity/NetworkAgentInfo;->name()Ljava/lang/String;

    #@1b5
    move-result-object v25

    #@1b6
    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1b9
    move-result-object v24

    #@1ba
    const-string/jumbo v25, " stopped satisfying"

    #@1bd
    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1c0
    move-result-object v24

    #@1c1
    .line 4279
    const-string/jumbo v25, " request "

    #@1c4
    .line 4278
    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1c7
    move-result-object v24

    #@1c8
    .line 4279
    move-object/from16 v0, v16

    #@1ca
    iget-object v0, v0, Lcom/android/server/ConnectivityService$NetworkRequestInfo;->request:Landroid/net/NetworkRequest;

    #@1cc
    move-object/from16 v25, v0

    #@1ce
    move-object/from16 v0, v25

    #@1d0
    iget v0, v0, Landroid/net/NetworkRequest;->requestId:I

    #@1d2
    move/from16 v25, v0

    #@1d4
    .line 4278
    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@1d7
    move-result-object v24

    #@1d8
    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1db
    move-result-object v24

    #@1dc
    invoke-static/range {v24 .. v24}, Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V

    #@1df
    .line 4281
    move-object/from16 v0, p1

    #@1e1
    iget-object v0, v0, Lcom/android/server/connectivity/NetworkAgentInfo;->networkRequests:Landroid/util/SparseArray;

    #@1e3
    move-object/from16 v24, v0

    #@1e5
    move-object/from16 v0, v16

    #@1e7
    iget-object v0, v0, Lcom/android/server/ConnectivityService$NetworkRequestInfo;->request:Landroid/net/NetworkRequest;

    #@1e9
    move-object/from16 v25, v0

    #@1eb
    move-object/from16 v0, v25

    #@1ed
    iget v0, v0, Landroid/net/NetworkRequest;->requestId:I

    #@1ef
    move/from16 v25, v0

    #@1f1
    invoke-virtual/range {v24 .. v25}, Landroid/util/SparseArray;->remove(I)V

    #@1f4
    .line 4282
    move-object/from16 v0, p1

    #@1f6
    if-ne v8, v0, :cond_9

    #@1f8
    .line 4283
    move-object/from16 v0, p0

    #@1fa
    iget-object v0, v0, Lcom/android/server/ConnectivityService;->mNetworkForRequestId:Landroid/util/SparseArray;

    #@1fc
    move-object/from16 v24, v0

    #@1fe
    move-object/from16 v0, v16

    #@200
    iget-object v0, v0, Lcom/android/server/ConnectivityService$NetworkRequestInfo;->request:Landroid/net/NetworkRequest;

    #@202
    move-object/from16 v25, v0

    #@204
    move-object/from16 v0, v25

    #@206
    iget v0, v0, Landroid/net/NetworkRequest;->requestId:I

    #@208
    move/from16 v25, v0

    #@20a
    invoke-virtual/range {v24 .. v25}, Landroid/util/SparseArray;->remove(I)V

    #@20d
    .line 4284
    move-object/from16 v0, v16

    #@20f
    iget-object v0, v0, Lcom/android/server/ConnectivityService$NetworkRequestInfo;->request:Landroid/net/NetworkRequest;

    #@211
    move-object/from16 v24, v0

    #@213
    const/16 v25, 0x0

    #@215
    move-object/from16 v0, p0

    #@217
    move-object/from16 v1, v24

    #@219
    move/from16 v2, v25

    #@21b
    invoke-direct {v0, v1, v2}, Lcom/android/server/ConnectivityService;->sendUpdatedScoreToFactories(Landroid/net/NetworkRequest;I)V

    #@21e
    .line 4299
    :cond_8
    :goto_2
    const v24, 0x80004

    #@221
    move-object/from16 v0, p0

    #@223
    move-object/from16 v1, v16

    #@225
    move-object/from16 v2, p1

    #@227
    move/from16 v3, v24

    #@229
    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/ConnectivityService;->callCallbackForRequest(Lcom/android/server/ConnectivityService$NetworkRequestInfo;Lcom/android/server/connectivity/NetworkAgentInfo;I)V

    #@22c
    goto/16 :goto_0

    #@22e
    .line 4286
    :cond_9
    move-object/from16 v0, v16

    #@230
    iget-boolean v0, v0, Lcom/android/server/ConnectivityService$NetworkRequestInfo;->isRequest:Z

    #@232
    move/from16 v24, v0

    #@234
    if-eqz v24, :cond_8

    #@236
    .line 4287
    const-string/jumbo v24, "ConnectivityService"

    #@239
    new-instance v25, Ljava/lang/StringBuilder;

    #@23b
    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    #@23e
    const-string/jumbo v26, "BUG: Removing request "

    #@241
    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@244
    move-result-object v25

    #@245
    move-object/from16 v0, v16

    #@247
    iget-object v0, v0, Lcom/android/server/ConnectivityService$NetworkRequestInfo;->request:Landroid/net/NetworkRequest;

    #@249
    move-object/from16 v26, v0

    #@24b
    move-object/from16 v0, v26

    #@24d
    iget v0, v0, Landroid/net/NetworkRequest;->requestId:I

    #@24f
    move/from16 v26, v0

    #@251
    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@254
    move-result-object v25

    #@255
    const-string/jumbo v26, " from "

    #@258
    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@25b
    move-result-object v25

    #@25c
    .line 4288
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/connectivity/NetworkAgentInfo;->name()Ljava/lang/String;

    #@25f
    move-result-object v26

    #@260
    .line 4287
    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@263
    move-result-object v25

    #@264
    .line 4289
    const-string/jumbo v26, " without updating mNetworkForRequestId or factories!"

    #@267
    .line 4287
    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@26a
    move-result-object v25

    #@26b
    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@26e
    move-result-object v25

    #@26f
    invoke-static/range {v24 .. v25}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    #@272
    goto :goto_2

    #@273
    .line 4303
    .end local v8    # "currentNetwork":Lcom/android/server/connectivity/NetworkAgentInfo;
    .end local v16    # "nri":Lcom/android/server/ConnectivityService$NetworkRequestInfo;
    .end local v19    # "satisfies":Z
    :cond_a
    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@276
    move-result-object v14

    #@277
    .local v14, "nai$iterator":Ljava/util/Iterator;
    :cond_b
    :goto_3
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    #@27a
    move-result v24

    #@27b
    if-eqz v24, :cond_d

    #@27d
    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@280
    move-result-object v13

    #@281
    check-cast v13, Lcom/android/server/connectivity/NetworkAgentInfo;

    #@283
    .line 4304
    .local v13, "nai":Lcom/android/server/connectivity/NetworkAgentInfo;
    iget-boolean v0, v13, Lcom/android/server/connectivity/NetworkAgentInfo;->lingering:Z

    #@285
    move/from16 v24, v0

    #@287
    if-nez v24, :cond_b

    #@289
    .line 4311
    move-object/from16 v0, p0

    #@28b
    invoke-direct {v0, v13}, Lcom/android/server/ConnectivityService;->unneeded(Lcom/android/server/connectivity/NetworkAgentInfo;)Z

    #@28e
    move-result v24

    #@28f
    if-eqz v24, :cond_c

    #@291
    .line 4312
    move-object/from16 v0, p0

    #@293
    invoke-direct {v0, v13}, Lcom/android/server/ConnectivityService;->linger(Lcom/android/server/connectivity/NetworkAgentInfo;)V

    #@296
    goto :goto_3

    #@297
    .line 4315
    :cond_c
    move-object/from16 v0, p0

    #@299
    invoke-direct {v0, v13}, Lcom/android/server/ConnectivityService;->unlinger(Lcom/android/server/connectivity/NetworkAgentInfo;)V

    #@29c
    goto :goto_3

    #@29d
    .line 4318
    .end local v13    # "nai":Lcom/android/server/connectivity/NetworkAgentInfo;
    :cond_d
    if-eqz v11, :cond_f

    #@29f
    .line 4320
    invoke-direct/range {p0 .. p1}, Lcom/android/server/ConnectivityService;->makeDefault(Lcom/android/server/connectivity/NetworkAgentInfo;)V

    #@2a2
    .line 4321
    monitor-enter p0

    #@2a3
    .line 4325
    :try_start_0
    move-object/from16 v0, p0

    #@2a5
    iget-object v0, v0, Lcom/android/server/ConnectivityService;->mNetTransitionWakeLock:Landroid/os/PowerManager$WakeLock;

    #@2a7
    move-object/from16 v24, v0

    #@2a9
    invoke-virtual/range {v24 .. v24}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    #@2ac
    move-result v24

    #@2ad
    if-eqz v24, :cond_e

    #@2af
    .line 4326
    move-object/from16 v0, p0

    #@2b1
    iget-object v0, v0, Lcom/android/server/ConnectivityService;->mHandler:Lcom/android/server/ConnectivityService$InternalHandler;

    #@2b3
    move-object/from16 v24, v0

    #@2b5
    move-object/from16 v0, p0

    #@2b7
    iget-object v0, v0, Lcom/android/server/ConnectivityService;->mHandler:Lcom/android/server/ConnectivityService$InternalHandler;

    #@2b9
    move-object/from16 v25, v0

    #@2bb
    .line 4328
    move-object/from16 v0, p0

    #@2bd
    iget v0, v0, Lcom/android/server/ConnectivityService;->mNetTransitionWakeLockSerialNumber:I

    #@2bf
    move/from16 v26, v0

    #@2c1
    .line 4327
    const/16 v27, 0x8

    #@2c3
    .line 4328
    const/16 v28, 0x0

    #@2c5
    .line 4326
    move-object/from16 v0, v25

    #@2c7
    move/from16 v1, v27

    #@2c9
    move/from16 v2, v26

    #@2cb
    move/from16 v3, v28

    #@2cd
    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/ConnectivityService$InternalHandler;->obtainMessage(III)Landroid/os/Message;

    #@2d0
    move-result-object v25

    #@2d1
    .line 4329
    const-wide/16 v26, 0x3e8

    #@2d3
    .line 4326
    invoke-virtual/range {v24 .. v27}, Lcom/android/server/ConnectivityService$InternalHandler;->sendMessageDelayed(Landroid/os/Message;J)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@2d6
    :cond_e
    monitor-exit p0

    #@2d7
    .line 4336
    :cond_f
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@2da
    move-result-object v17

    #@2db
    :goto_4
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->hasNext()Z

    #@2de
    move-result v24

    #@2df
    if-eqz v24, :cond_10

    #@2e1
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@2e4
    move-result-object v16

    #@2e5
    check-cast v16, Lcom/android/server/ConnectivityService$NetworkRequestInfo;

    #@2e7
    .restart local v16    # "nri":Lcom/android/server/ConnectivityService$NetworkRequestInfo;
    move-object/from16 v0, p0

    #@2e9
    move-object/from16 v1, p1

    #@2eb
    move-object/from16 v2, v16

    #@2ed
    invoke-virtual {v0, v1, v2}, Lcom/android/server/ConnectivityService;->notifyNetworkCallback(Lcom/android/server/connectivity/NetworkAgentInfo;Lcom/android/server/ConnectivityService$NetworkRequestInfo;)V

    #@2f0
    goto :goto_4

    #@2f1
    .line 4321
    .end local v16    # "nri":Lcom/android/server/ConnectivityService$NetworkRequestInfo;
    :catchall_0
    move-exception v24

    #@2f2
    monitor-exit p0

    #@2f3
    throw v24

    #@2f4
    .line 4338
    :cond_10
    if-eqz v11, :cond_12

    #@2f6
    .line 4343
    if-eqz v18, :cond_11

    #@2f8
    .line 4344
    move-object/from16 v0, p0

    #@2fa
    iget-object v0, v0, Lcom/android/server/ConnectivityService;->mLegacyTypeTracker:Lcom/android/server/ConnectivityService$LegacyTypeTracker;

    #@2fc
    move-object/from16 v24, v0

    #@2fe
    move-object/from16 v0, v18

    #@300
    iget-object v0, v0, Lcom/android/server/connectivity/NetworkAgentInfo;->networkInfo:Landroid/net/NetworkInfo;

    #@302
    move-object/from16 v25, v0

    #@304
    invoke-virtual/range {v25 .. v25}, Landroid/net/NetworkInfo;->getType()I

    #@307
    move-result v25

    #@308
    .line 4345
    const/16 v26, 0x1

    #@30a
    .line 4344
    move-object/from16 v0, v24

    #@30c
    move/from16 v1, v25

    #@30e
    move-object/from16 v2, v18

    #@310
    move/from16 v3, v26

    #@312
    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/ConnectivityService$LegacyTypeTracker;->remove(ILcom/android/server/connectivity/NetworkAgentInfo;Z)V

    #@315
    .line 4347
    :cond_11
    move-object/from16 v0, p1

    #@317
    iget-boolean v0, v0, Lcom/android/server/connectivity/NetworkAgentInfo;->lastValidated:Z

    #@319
    move/from16 v24, v0

    #@31b
    if-eqz v24, :cond_15

    #@31d
    const/16 v24, 0x64

    #@31f
    :goto_5
    move/from16 v0, v24

    #@321
    move-object/from16 v1, p0

    #@323
    iput v0, v1, Lcom/android/server/ConnectivityService;->mDefaultInetConditionPublished:I

    #@325
    .line 4348
    move-object/from16 v0, p0

    #@327
    iget-object v0, v0, Lcom/android/server/ConnectivityService;->mLegacyTypeTracker:Lcom/android/server/ConnectivityService$LegacyTypeTracker;

    #@329
    move-object/from16 v24, v0

    #@32b
    move-object/from16 v0, p1

    #@32d
    iget-object v0, v0, Lcom/android/server/connectivity/NetworkAgentInfo;->networkInfo:Landroid/net/NetworkInfo;

    #@32f
    move-object/from16 v25, v0

    #@331
    invoke-virtual/range {v25 .. v25}, Landroid/net/NetworkInfo;->getType()I

    #@334
    move-result v25

    #@335
    move-object/from16 v0, v24

    #@337
    move/from16 v1, v25

    #@339
    move-object/from16 v2, p1

    #@33b
    invoke-virtual {v0, v1, v2}, Lcom/android/server/ConnectivityService$LegacyTypeTracker;->add(ILcom/android/server/connectivity/NetworkAgentInfo;)V

    #@33e
    .line 4349
    invoke-direct/range {p0 .. p1}, Lcom/android/server/ConnectivityService;->notifyLockdownVpn(Lcom/android/server/connectivity/NetworkAgentInfo;)V

    #@341
    .line 4352
    :cond_12
    if-eqz v12, :cond_17

    #@343
    .line 4357
    :try_start_1
    invoke-static {}, Lcom/android/server/am/BatteryStatsService;->getService()Lcom/android/internal/app/IBatteryStats;

    #@346
    move-result-object v7

    #@347
    .line 4358
    .local v7, "bs":Lcom/android/internal/app/IBatteryStats;
    move-object/from16 v0, p1

    #@349
    iget-object v0, v0, Lcom/android/server/connectivity/NetworkAgentInfo;->networkInfo:Landroid/net/NetworkInfo;

    #@34b
    move-object/from16 v24, v0

    #@34d
    invoke-virtual/range {v24 .. v24}, Landroid/net/NetworkInfo;->getType()I

    #@350
    move-result v23

    #@351
    .line 4360
    .local v23, "type":I
    move-object/from16 v0, p1

    #@353
    iget-object v0, v0, Lcom/android/server/connectivity/NetworkAgentInfo;->linkProperties:Landroid/net/LinkProperties;

    #@355
    move-object/from16 v24, v0

    #@357
    invoke-virtual/range {v24 .. v24}, Landroid/net/LinkProperties;->getInterfaceName()Ljava/lang/String;

    #@35a
    move-result-object v6

    #@35b
    .line 4361
    .local v6, "baseIface":Ljava/lang/String;
    move/from16 v0, v23

    #@35d
    invoke-interface {v7, v6, v0}, Lcom/android/internal/app/IBatteryStats;->noteNetworkInterfaceType(Ljava/lang/String;I)V

    #@360
    .line 4362
    move-object/from16 v0, p1

    #@362
    iget-object v0, v0, Lcom/android/server/connectivity/NetworkAgentInfo;->linkProperties:Landroid/net/LinkProperties;

    #@364
    move-object/from16 v24, v0

    #@366
    invoke-virtual/range {v24 .. v24}, Landroid/net/LinkProperties;->getStackedLinks()Ljava/util/List;

    #@369
    move-result-object v24

    #@36a
    invoke-interface/range {v24 .. v24}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@36d
    move-result-object v21

    #@36e
    .local v21, "stacked$iterator":Ljava/util/Iterator;
    :goto_6
    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->hasNext()Z

    #@371
    move-result v24

    #@372
    if-eqz v24, :cond_13

    #@374
    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@377
    move-result-object v20

    #@378
    check-cast v20, Landroid/net/LinkProperties;

    #@37a
    .line 4363
    .local v20, "stacked":Landroid/net/LinkProperties;
    invoke-virtual/range {v20 .. v20}, Landroid/net/LinkProperties;->getInterfaceName()Ljava/lang/String;

    #@37d
    move-result-object v22

    #@37e
    .line 4364
    .local v22, "stackedIface":Ljava/lang/String;
    move-object/from16 v0, v22

    #@380
    move/from16 v1, v23

    #@382
    invoke-interface {v7, v0, v1}, Lcom/android/internal/app/IBatteryStats;->noteNetworkInterfaceType(Ljava/lang/String;I)V

    #@385
    .line 4365
    move-object/from16 v0, v22

    #@387
    invoke-static {v0, v6}, Lcom/android/internal/net/NetworkStatsFactory;->noteStackedIface(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    #@38a
    goto :goto_6

    #@38b
    .line 4367
    .end local v6    # "baseIface":Ljava/lang/String;
    .end local v7    # "bs":Lcom/android/internal/app/IBatteryStats;
    .end local v20    # "stacked":Landroid/net/LinkProperties;
    .end local v21    # "stacked$iterator":Ljava/util/Iterator;
    .end local v22    # "stackedIface":Ljava/lang/String;
    .end local v23    # "type":I
    :catch_0
    move-exception v10

    #@38c
    .line 4384
    :cond_13
    const/4 v9, 0x0

    #@38d
    .local v9, "i":I
    :goto_7
    move-object/from16 v0, p1

    #@38f
    iget-object v0, v0, Lcom/android/server/connectivity/NetworkAgentInfo;->networkRequests:Landroid/util/SparseArray;

    #@391
    move-object/from16 v24, v0

    #@393
    invoke-virtual/range {v24 .. v24}, Landroid/util/SparseArray;->size()I

    #@396
    move-result v24

    #@397
    move/from16 v0, v24

    #@399
    if-ge v9, v0, :cond_16

    #@39b
    .line 4385
    move-object/from16 v0, p1

    #@39d
    iget-object v0, v0, Lcom/android/server/connectivity/NetworkAgentInfo;->networkRequests:Landroid/util/SparseArray;

    #@39f
    move-object/from16 v24, v0

    #@3a1
    move-object/from16 v0, v24

    #@3a3
    invoke-virtual {v0, v9}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    #@3a6
    move-result-object v15

    #@3a7
    check-cast v15, Landroid/net/NetworkRequest;

    #@3a9
    .line 4386
    .local v15, "nr":Landroid/net/NetworkRequest;
    iget v0, v15, Landroid/net/NetworkRequest;->legacyType:I

    #@3ab
    move/from16 v24, v0

    #@3ad
    const/16 v25, -0x1

    #@3af
    move/from16 v0, v24

    #@3b1
    move/from16 v1, v25

    #@3b3
    if-eq v0, v1, :cond_14

    #@3b5
    move-object/from16 v0, p0

    #@3b7
    invoke-direct {v0, v15}, Lcom/android/server/ConnectivityService;->isRequest(Landroid/net/NetworkRequest;)Z

    #@3ba
    move-result v24

    #@3bb
    if-eqz v24, :cond_14

    #@3bd
    .line 4388
    move-object/from16 v0, p0

    #@3bf
    iget-object v0, v0, Lcom/android/server/ConnectivityService;->mLegacyTypeTracker:Lcom/android/server/ConnectivityService$LegacyTypeTracker;

    #@3c1
    move-object/from16 v24, v0

    #@3c3
    iget v0, v15, Landroid/net/NetworkRequest;->legacyType:I

    #@3c5
    move/from16 v25, v0

    #@3c7
    move-object/from16 v0, v24

    #@3c9
    move/from16 v1, v25

    #@3cb
    move-object/from16 v2, p1

    #@3cd
    invoke-virtual {v0, v1, v2}, Lcom/android/server/ConnectivityService$LegacyTypeTracker;->add(ILcom/android/server/connectivity/NetworkAgentInfo;)V

    #@3d0
    .line 4384
    :cond_14
    add-int/lit8 v9, v9, 0x1

    #@3d2
    goto :goto_7

    #@3d3
    .line 4347
    .end local v9    # "i":I
    .end local v15    # "nr":Landroid/net/NetworkRequest;
    :cond_15
    const/16 v24, 0x0

    #@3d5
    goto/16 :goto_5

    #@3d7
    .line 4396
    .restart local v9    # "i":I
    :cond_16
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/connectivity/NetworkAgentInfo;->isVPN()Z

    #@3da
    move-result v24

    #@3db
    if-eqz v24, :cond_17

    #@3dd
    .line 4397
    move-object/from16 v0, p0

    #@3df
    iget-object v0, v0, Lcom/android/server/ConnectivityService;->mLegacyTypeTracker:Lcom/android/server/ConnectivityService$LegacyTypeTracker;

    #@3e1
    move-object/from16 v24, v0

    #@3e3
    const/16 v25, 0x11

    #@3e5
    move-object/from16 v0, v24

    #@3e7
    move/from16 v1, v25

    #@3e9
    move-object/from16 v2, p1

    #@3eb
    invoke-virtual {v0, v1, v2}, Lcom/android/server/ConnectivityService$LegacyTypeTracker;->add(ILcom/android/server/connectivity/NetworkAgentInfo;)V

    #@3ee
    .line 4400
    .end local v9    # "i":I
    :cond_17
    sget-object v24, Lcom/android/server/ConnectivityService$ReapUnvalidatedNetworks;->REAP:Lcom/android/server/ConnectivityService$ReapUnvalidatedNetworks;

    #@3f0
    move-object/from16 v0, p2

    #@3f2
    move-object/from16 v1, v24

    #@3f4
    if-ne v0, v1, :cond_19

    #@3f6
    .line 4401
    move-object/from16 v0, p0

    #@3f8
    iget-object v0, v0, Lcom/android/server/ConnectivityService;->mNetworkAgentInfos:Ljava/util/HashMap;

    #@3fa
    move-object/from16 v24, v0

    #@3fc
    invoke-virtual/range {v24 .. v24}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    #@3ff
    move-result-object v24

    #@400
    invoke-interface/range {v24 .. v24}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@403
    move-result-object v14

    #@404
    :cond_18
    :goto_8
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    #@407
    move-result v24

    #@408
    if-eqz v24, :cond_19

    #@40a
    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@40d
    move-result-object v13

    #@40e
    check-cast v13, Lcom/android/server/connectivity/NetworkAgentInfo;

    #@410
    .line 4402
    .restart local v13    # "nai":Lcom/android/server/connectivity/NetworkAgentInfo;
    move-object/from16 v0, p0

    #@412
    invoke-direct {v0, v13}, Lcom/android/server/ConnectivityService;->unneeded(Lcom/android/server/connectivity/NetworkAgentInfo;)Z

    #@415
    move-result v24

    #@416
    if-eqz v24, :cond_18

    #@418
    .line 4403
    new-instance v24, Ljava/lang/StringBuilder;

    #@41a
    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    #@41d
    const-string/jumbo v25, "Reaping "

    #@420
    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@423
    move-result-object v24

    #@424
    invoke-virtual {v13}, Lcom/android/server/connectivity/NetworkAgentInfo;->name()Ljava/lang/String;

    #@427
    move-result-object v25

    #@428
    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@42b
    move-result-object v24

    #@42c
    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@42f
    move-result-object v24

    #@430
    invoke-static/range {v24 .. v24}, Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V

    #@433
    .line 4404
    move-object/from16 v0, p0

    #@435
    invoke-direct {v0, v13}, Lcom/android/server/ConnectivityService;->teardownUnneededNetwork(Lcom/android/server/connectivity/NetworkAgentInfo;)V

    #@438
    goto :goto_8

    #@439
    .line 4201
    .end local v13    # "nai":Lcom/android/server/connectivity/NetworkAgentInfo;
    :cond_19
    return-void
.end method

.method private removeDataActivityTracking(Lcom/android/server/connectivity/NetworkAgentInfo;)V
    .locals 5
    .param p1, "networkAgent"    # Lcom/android/server/connectivity/NetworkAgentInfo;

    #@0
    .prologue
    .line 1615
    iget-object v3, p1, Lcom/android/server/connectivity/NetworkAgentInfo;->linkProperties:Landroid/net/LinkProperties;

    #@2
    invoke-virtual {v3}, Landroid/net/LinkProperties;->getInterfaceName()Ljava/lang/String;

    #@5
    move-result-object v2

    #@6
    .line 1616
    .local v2, "iface":Ljava/lang/String;
    iget-object v0, p1, Lcom/android/server/connectivity/NetworkAgentInfo;->networkCapabilities:Landroid/net/NetworkCapabilities;

    #@8
    .line 1618
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
    .line 1619
    const/4 v3, 0x1

    #@12
    invoke-virtual {v0, v3}, Landroid/net/NetworkCapabilities;->hasTransport(I)Z

    #@15
    move-result v3

    #@16
    .line 1618
    if-eqz v3, :cond_1

    #@18
    .line 1622
    :cond_0
    :try_start_0
    iget-object v3, p0, Lcom/android/server/ConnectivityService;->mNetd:Landroid/os/INetworkManagementService;

    #@1a
    invoke-interface {v3, v2}, Landroid/os/INetworkManagementService;->removeIdleTimer(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    #@1d
    .line 1614
    :cond_1
    :goto_0
    return-void

    #@1e
    .line 1623
    :catch_0
    move-exception v1

    #@1f
    .line 1624
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
    .line 2629
    const/4 v0, 0x0

    #@1
    .line 2630
    .local v0, "serialNum":I
    monitor-enter p0

    #@2
    .line 2631
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
    .line 2632
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
    .line 2633
    .end local v0    # "serialNum":I
    .local v1, "serialNum":I
    :try_start_2
    iget-object v2, p0, Lcom/android/server/ConnectivityService;->mNetTransitionWakeLock:Landroid/os/PowerManager$WakeLock;

    #@14
    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->acquire()V

    #@17
    .line 2634
    iput-object p1, p0, Lcom/android/server/ConnectivityService;->mNetTransitionWakeLockCausedBy:Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    #@19
    monitor-exit p0

    #@1a
    .line 2636
    iget-object v2, p0, Lcom/android/server/ConnectivityService;->mHandler:Lcom/android/server/ConnectivityService$InternalHandler;

    #@1c
    iget-object v3, p0, Lcom/android/server/ConnectivityService;->mHandler:Lcom/android/server/ConnectivityService$InternalHandler;

    #@1e
    .line 2637
    const/16 v4, 0x18

    #@20
    const/4 v5, 0x0

    #@21
    .line 2636
    invoke-virtual {v3, v4, v1, v5}, Lcom/android/server/ConnectivityService$InternalHandler;->obtainMessage(III)Landroid/os/Message;

    #@24
    move-result-object v3

    #@25
    .line 2638
    iget v4, p0, Lcom/android/server/ConnectivityService;->mNetTransitionWakeLockTimeout:I

    #@27
    int-to-long v4, v4

    #@28
    .line 2636
    invoke-virtual {v2, v3, v4, v5}, Lcom/android/server/ConnectivityService$InternalHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    #@2b
    .line 2639
    return-void

    #@2c
    .line 2630
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
    .line 2395
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    const-string/jumbo v1, "scheduleUnvalidatedPrompt "

    #@8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b
    move-result-object v0

    #@c
    iget-object v1, p1, Lcom/android/server/connectivity/NetworkAgentInfo;->network:Landroid/net/Network;

    #@e
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@11
    move-result-object v0

    #@12
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@15
    move-result-object v0

    #@16
    invoke-static {v0}, Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V

    #@19
    .line 2396
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mHandler:Lcom/android/server/ConnectivityService$InternalHandler;

    #@1b
    .line 2397
    iget-object v1, p0, Lcom/android/server/ConnectivityService;->mHandler:Lcom/android/server/ConnectivityService$InternalHandler;

    #@1d
    iget-object v2, p1, Lcom/android/server/connectivity/NetworkAgentInfo;->network:Landroid/net/Network;

    #@1f
    const/16 v3, 0x1d

    #@21
    invoke-virtual {v1, v3, v2}, Lcom/android/server/ConnectivityService$InternalHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    #@24
    move-result-object v1

    #@25
    .line 2398
    const-wide/16 v2, 0x1f40

    #@27
    .line 2396
    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/ConnectivityService$InternalHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    #@2a
    .line 2394
    return-void
.end method

.method private sendDataActivityBroadcast(IZJ)V
    .locals 15
    .param p1, "deviceType"    # I
    .param p2, "active"    # Z
    .param p3, "tsNanos"    # J

    #@0
    .prologue
    .line 1490
    new-instance v3, Landroid/content/Intent;

    #@2
    const-string/jumbo v2, "android.net.conn.DATA_ACTIVITY_CHANGE"

    #@5
    invoke-direct {v3, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    #@8
    .line 1491
    .local v3, "intent":Landroid/content/Intent;
    const-string/jumbo v2, "deviceType"

    #@b
    move/from16 v0, p1

    #@d
    invoke-virtual {v3, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    #@10
    .line 1492
    const-string/jumbo v2, "isActive"

    #@13
    move/from16 v0, p2

    #@15
    invoke-virtual {v3, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    #@18
    .line 1493
    const-string/jumbo v2, "tsNanos"

    #@1b
    move-wide/from16 v0, p3

    #@1d
    invoke-virtual {v3, v2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    #@20
    .line 1494
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    #@23
    move-result-wide v12

    #@24
    .line 1496
    .local v12, "ident":J
    :try_start_0
    iget-object v2, p0, Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;

    #@26
    sget-object v4, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    #@28
    .line 1497
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
    .line 1496
    invoke-virtual/range {v2 .. v10}, Landroid/content/Context;->sendOrderedBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;Landroid/content/BroadcastReceiver;Landroid/os/Handler;ILjava/lang/String;Landroid/os/Bundle;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@33
    .line 1499
    invoke-static {v12, v13}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@36
    .line 1489
    return-void

    #@37
    .line 1498
    :catchall_0
    move-exception v2

    #@38
    .line 1499
    invoke-static {v12, v13}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@3b
    .line 1498
    throw v2
.end method

.method private sendGeneralBroadcast(Landroid/net/NetworkInfo;Ljava/lang/String;)V
    .locals 1
    .param p1, "info"    # Landroid/net/NetworkInfo;
    .param p2, "bcastType"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1486
    invoke-direct {p0, p1, p2}, Lcom/android/server/ConnectivityService;->makeGeneralIntent(Landroid/net/NetworkInfo;Ljava/lang/String;)Landroid/content/Intent;

    #@3
    move-result-object v0

    #@4
    invoke-direct {p0, v0}, Lcom/android/server/ConnectivityService;->sendStickyBroadcast(Landroid/content/Intent;)V

    #@7
    .line 1485
    return-void
.end method

.method private sendInetConditionBroadcast(Landroid/net/NetworkInfo;)V
    .locals 1
    .param p1, "info"    # Landroid/net/NetworkInfo;

    #@0
    .prologue
    .line 1459
    const-string/jumbo v0, "android.net.conn.INET_CONDITION_ACTION"

    #@3
    invoke-direct {p0, p1, v0}, Lcom/android/server/ConnectivityService;->sendGeneralBroadcast(Landroid/net/NetworkInfo;Ljava/lang/String;)V

    #@6
    .line 1458
    return-void
.end method

.method private sendIntent(Landroid/app/PendingIntent;Landroid/content/Intent;)V
    .locals 7
    .param p1, "pendingIntent"    # Landroid/app/PendingIntent;
    .param p2, "intent"    # Landroid/content/Intent;

    #@0
    .prologue
    .line 4076
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mPendingIntentWakeLock:Landroid/os/PowerManager$WakeLock;

    #@2
    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    #@5
    .line 4078
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
    .line 4079
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
    .line 4075
    :goto_0
    return-void

    #@27
    .line 4080
    :catch_0
    move-exception v6

    #@28
    .line 4081
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
    .line 4082
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mPendingIntentWakeLock:Landroid/os/PowerManager$WakeLock;

    #@41
    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    #@44
    .line 4083
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
    .line 4604
    new-instance v0, Landroid/net/NetworkInfo;

    #@4
    iget-object v3, p1, Lcom/android/server/connectivity/NetworkAgentInfo;->networkInfo:Landroid/net/NetworkInfo;

    #@6
    invoke-direct {v0, v3}, Landroid/net/NetworkInfo;-><init>(Landroid/net/NetworkInfo;)V

    #@9
    .line 4605
    .local v0, "info":Landroid/net/NetworkInfo;
    invoke-virtual {v0, p3}, Landroid/net/NetworkInfo;->setType(I)V

    #@c
    .line 4606
    sget-object v3, Landroid/net/NetworkInfo$DetailedState;->DISCONNECTED:Landroid/net/NetworkInfo$DetailedState;

    #@e
    if-eq p2, v3, :cond_1

    #@10
    .line 4607
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getExtraInfo()Ljava/lang/String;

    #@13
    move-result-object v3

    #@14
    invoke-virtual {v0, p2, v4, v3}, Landroid/net/NetworkInfo;->setDetailedState(Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;Ljava/lang/String;)V

    #@17
    .line 4608
    invoke-virtual {p0, v0}, Lcom/android/server/ConnectivityService;->sendConnectedBroadcast(Landroid/net/NetworkInfo;)V

    #@1a
    .line 4597
    :cond_0
    :goto_0
    return-void

    #@1b
    .line 4610
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
    .line 4611
    new-instance v1, Landroid/content/Intent;

    #@28
    const-string/jumbo v3, "android.net.conn.CONNECTIVITY_CHANGE"

    #@2b
    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    #@2e
    .line 4612
    .local v1, "intent":Landroid/content/Intent;
    const-string/jumbo v3, "networkInfo"

    #@31
    invoke-virtual {v1, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    #@34
    .line 4613
    const-string/jumbo v3, "networkType"

    #@37
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    #@3a
    move-result v4

    #@3b
    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    #@3e
    .line 4614
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isFailover()Z

    #@41
    move-result v3

    #@42
    if-eqz v3, :cond_2

    #@44
    .line 4615
    const-string/jumbo v3, "isFailover"

    #@47
    invoke-virtual {v1, v3, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    #@4a
    .line 4616
    iget-object v3, p1, Lcom/android/server/connectivity/NetworkAgentInfo;->networkInfo:Landroid/net/NetworkInfo;

    #@4c
    const/4 v4, 0x0

    #@4d
    invoke-virtual {v3, v4}, Landroid/net/NetworkInfo;->setFailover(Z)V

    #@50
    .line 4618
    :cond_2
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getReason()Ljava/lang/String;

    #@53
    move-result-object v3

    #@54
    if-eqz v3, :cond_3

    #@56
    .line 4619
    const-string/jumbo v3, "reason"

    #@59
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getReason()Ljava/lang/String;

    #@5c
    move-result-object v4

    #@5d
    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    #@60
    .line 4621
    :cond_3
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getExtraInfo()Ljava/lang/String;

    #@63
    move-result-object v3

    #@64
    if-eqz v3, :cond_4

    #@66
    .line 4622
    const-string/jumbo v3, "extraInfo"

    #@69
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getExtraInfo()Ljava/lang/String;

    #@6c
    move-result-object v4

    #@6d
    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    #@70
    .line 4624
    :cond_4
    const/4 v2, 0x0

    #@71
    .line 4625
    .local v2, "newDefaultAgent":Lcom/android/server/connectivity/NetworkAgentInfo;
    iget-object v3, p1, Lcom/android/server/connectivity/NetworkAgentInfo;->networkRequests:Landroid/util/SparseArray;

    #@73
    iget-object v4, p0, Lcom/android/server/ConnectivityService;->mDefaultRequest:Landroid/net/NetworkRequest;

    #@75
    iget v4, v4, Landroid/net/NetworkRequest;->requestId:I

    #@77
    invoke-virtual {v3, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    #@7a
    move-result-object v3

    #@7b
    if-eqz v3, :cond_5

    #@7d
    .line 4626
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->getDefaultNetwork()Lcom/android/server/connectivity/NetworkAgentInfo;

    #@80
    move-result-object v2

    #@81
    .line 4627
    .local v2, "newDefaultAgent":Lcom/android/server/connectivity/NetworkAgentInfo;
    if-eqz v2, :cond_6

    #@83
    .line 4628
    const-string/jumbo v3, "otherNetwork"

    #@86
    .line 4629
    iget-object v4, v2, Lcom/android/server/connectivity/NetworkAgentInfo;->networkInfo:Landroid/net/NetworkInfo;

    #@88
    .line 4628
    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    #@8b
    .line 4634
    .end local v2    # "newDefaultAgent":Lcom/android/server/connectivity/NetworkAgentInfo;
    :cond_5
    :goto_1
    const-string/jumbo v3, "inetCondition"

    #@8e
    .line 4635
    iget v4, p0, Lcom/android/server/ConnectivityService;->mDefaultInetConditionPublished:I

    #@90
    .line 4634
    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    #@93
    .line 4636
    invoke-direct {p0, v1}, Lcom/android/server/ConnectivityService;->sendStickyBroadcast(Landroid/content/Intent;)V

    #@96
    .line 4637
    if-eqz v2, :cond_0

    #@98
    .line 4638
    iget-object v3, v2, Lcom/android/server/connectivity/NetworkAgentInfo;->networkInfo:Landroid/net/NetworkInfo;

    #@9a
    invoke-virtual {p0, v3}, Lcom/android/server/ConnectivityService;->sendConnectedBroadcast(Landroid/net/NetworkInfo;)V

    #@9d
    goto/16 :goto_0

    #@9f
    .line 4631
    .restart local v2    # "newDefaultAgent":Lcom/android/server/connectivity/NetworkAgentInfo;
    :cond_6
    const-string/jumbo v3, "noConnectivity"

    #@a2
    invoke-virtual {v1, v3, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    #@a5
    goto :goto_1
.end method

.method private sendPendingIntentForRequest(Lcom/android/server/ConnectivityService$NetworkRequestInfo;Lcom/android/server/connectivity/NetworkAgentInfo;I)V
    .locals 3
    .param p1, "nri"    # Lcom/android/server/ConnectivityService$NetworkRequestInfo;
    .param p2, "networkAgent"    # Lcom/android/server/connectivity/NetworkAgentInfo;
    .param p3, "notificationType"    # I

    #@0
    .prologue
    .line 4065
    const v1, 0x80002

    #@3
    if-ne p3, v1, :cond_0

    #@5
    iget-boolean v1, p1, Lcom/android/server/ConnectivityService$NetworkRequestInfo;->mPendingIntentSent:Z

    #@7
    if-eqz v1, :cond_1

    #@9
    .line 4064
    :cond_0
    :goto_0
    return-void

    #@a
    .line 4066
    :cond_1
    new-instance v0, Landroid/content/Intent;

    #@c
    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    #@f
    .line 4067
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v1, "android.net.extra.NETWORK"

    #@12
    iget-object v2, p2, Lcom/android/server/connectivity/NetworkAgentInfo;->network:Landroid/net/Network;

    #@14
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    #@17
    .line 4068
    const-string/jumbo v1, "android.net.extra.NETWORK_REQUEST"

    #@1a
    iget-object v2, p1, Lcom/android/server/ConnectivityService$NetworkRequestInfo;->request:Landroid/net/NetworkRequest;

    #@1c
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    #@1f
    .line 4069
    const/4 v1, 0x1

    #@20
    iput-boolean v1, p1, Lcom/android/server/ConnectivityService$NetworkRequestInfo;->mPendingIntentSent:Z

    #@22
    .line 4070
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
    .line 2892
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
    .line 2893
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
    .line 2894
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
    .line 2895
    new-instance v2, Landroid/content/Intent;

    #@30
    const-string/jumbo v3, "android.intent.action.PROXY_CHANGE"

    #@33
    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    #@36
    .line 2896
    .local v2, "intent":Landroid/content/Intent;
    const/high16 v3, 0x24000000

    #@38
    invoke-virtual {v2, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    #@3b
    .line 2898
    const-string/jumbo v3, "android.intent.extra.PROXY_INFO"

    #@3e
    invoke-virtual {v2, v3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    #@41
    .line 2899
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    #@44
    move-result-wide v0

    #@45
    .line 2901
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
    .line 2903
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@4f
    .line 2891
    return-void

    #@50
    .line 2902
    :catchall_0
    move-exception v3

    #@51
    .line 2903
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@54
    .line 2902
    throw v3
.end method

.method private sendStickyBroadcast(Landroid/content/Intent;)V
    .locals 7
    .param p1, "intent"    # Landroid/content/Intent;

    #@0
    .prologue
    .line 1504
    monitor-enter p0

    #@1
    .line 1505
    :try_start_0
    iget-boolean v5, p0, Lcom/android/server/ConnectivityService;->mSystemReady:Z

    #@3
    if-nez v5, :cond_0

    #@5
    .line 1506
    new-instance v5, Landroid/content/Intent;

    #@7
    invoke-direct {v5, p1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    #@a
    iput-object v5, p0, Lcom/android/server/ConnectivityService;->mInitialBroadcast:Landroid/content/Intent;

    #@c
    .line 1508
    :cond_0
    const/high16 v5, 0x4000000

    #@e
    invoke-virtual {p1, v5}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    #@11
    .line 1510
    new-instance v5, Ljava/lang/StringBuilder;

    #@13
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@16
    const-string/jumbo v6, "sendStickyBroadcast: action="

    #@19
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1c
    move-result-object v5

    #@1d
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    #@20
    move-result-object v6

    #@21
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@24
    move-result-object v5

    #@25
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@28
    move-result-object v5

    #@29
    invoke-static {v5}, Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V

    #@2c
    .line 1513
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    #@2f
    move-result-wide v2

    #@30
    .line 1514
    .local v2, "ident":J
    const-string/jumbo v5, "android.net.conn.CONNECTIVITY_CHANGE"

    #@33
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    #@36
    move-result-object v6

    #@37
    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@3a
    move-result v5

    #@3b
    if-eqz v5, :cond_1

    #@3d
    .line 1515
    invoke-static {}, Lcom/android/server/am/BatteryStatsService;->getService()Lcom/android/internal/app/IBatteryStats;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    #@40
    move-result-object v0

    #@41
    .line 1518
    .local v0, "bs":Lcom/android/internal/app/IBatteryStats;
    :try_start_1
    const-string/jumbo v5, "networkInfo"

    #@44
    .line 1517
    invoke-virtual {p1, v5}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    #@47
    move-result-object v4

    #@48
    check-cast v4, Landroid/net/NetworkInfo;

    #@4a
    .line 1520
    .local v4, "ni":Landroid/net/NetworkInfo;
    const-string/jumbo v5, "networkType"

    #@4d
    const/4 v6, -0x1

    #@4e
    .line 1519
    invoke-virtual {p1, v5, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    #@51
    move-result v6

    #@52
    .line 1521
    if-eqz v4, :cond_2

    #@54
    invoke-virtual {v4}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    #@57
    move-result-object v5

    #@58
    invoke-virtual {v5}, Landroid/net/NetworkInfo$State;->toString()Ljava/lang/String;

    #@5b
    move-result-object v5

    #@5c
    .line 1519
    :goto_0
    invoke-interface {v0, v6, v5}, Lcom/android/internal/app/IBatteryStats;->noteConnectivityChanged(ILjava/lang/String;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    #@5f
    .line 1526
    .end local v0    # "bs":Lcom/android/internal/app/IBatteryStats;
    .end local v4    # "ni":Landroid/net/NetworkInfo;
    :cond_1
    :goto_1
    :try_start_2
    iget-object v5, p0, Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;

    #@61
    sget-object v6, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    #@63
    invoke-virtual {v5, p1, v6}, Landroid/content/Context;->sendStickyBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@66
    .line 1528
    :try_start_3
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    #@69
    monitor-exit p0

    #@6a
    .line 1503
    return-void

    #@6b
    .line 1521
    .restart local v0    # "bs":Lcom/android/internal/app/IBatteryStats;
    .restart local v4    # "ni":Landroid/net/NetworkInfo;
    :cond_2
    :try_start_4
    const-string/jumbo v5, "?"
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    #@6e
    goto :goto_0

    #@6f
    .line 1527
    .end local v0    # "bs":Lcom/android/internal/app/IBatteryStats;
    .end local v4    # "ni":Landroid/net/NetworkInfo;
    :catchall_0
    move-exception v5

    #@70
    .line 1528
    :try_start_5
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@73
    .line 1527
    throw v5
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    #@74
    .line 1504
    .end local v2    # "ident":J
    :catchall_1
    move-exception v5

    #@75
    monitor-exit p0

    #@76
    throw v5

    #@77
    .line 1522
    .restart local v0    # "bs":Lcom/android/internal/app/IBatteryStats;
    .restart local v2    # "ident":J
    :catch_0
    move-exception v1

    #@78
    .local v1, "e":Landroid/os/RemoteException;
    goto :goto_1
.end method

.method private sendUpdatedScoreToFactories(Landroid/net/NetworkRequest;I)V
    .locals 5
    .param p1, "networkRequest"    # Landroid/net/NetworkRequest;
    .param p2, "score"    # I

    #@0
    .prologue
    .line 4057
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
    .line 4058
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
    .line 4055
    .end local v0    # "nfi":Lcom/android/server/ConnectivityService$NetworkFactoryInfo;
    :cond_0
    return-void
.end method

.method private sendUpdatedScoreToFactories(Lcom/android/server/connectivity/NetworkAgentInfo;)V
    .locals 3
    .param p1, "nai"    # Lcom/android/server/connectivity/NetworkAgentInfo;

    #@0
    .prologue
    .line 4047
    const/4 v0, 0x0

    #@1
    .local v0, "i":I
    :goto_0
    iget-object v2, p1, Lcom/android/server/connectivity/NetworkAgentInfo;->networkRequests:Landroid/util/SparseArray;

    #@3
    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    #@6
    move-result v2

    #@7
    if-ge v0, v2, :cond_1

    #@9
    .line 4048
    iget-object v2, p1, Lcom/android/server/connectivity/NetworkAgentInfo;->networkRequests:Landroid/util/SparseArray;

    #@b
    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    #@e
    move-result-object v1

    #@f
    check-cast v1, Landroid/net/NetworkRequest;

    #@11
    .line 4050
    .local v1, "nr":Landroid/net/NetworkRequest;
    invoke-direct {p0, v1}, Lcom/android/server/ConnectivityService;->isRequest(Landroid/net/NetworkRequest;)Z

    #@14
    move-result v2

    #@15
    if-nez v2, :cond_0

    #@17
    .line 4047
    :goto_1
    add-int/lit8 v0, v0, 0x1

    #@19
    goto :goto_0

    #@1a
    .line 4051
    :cond_0
    invoke-virtual {p1}, Lcom/android/server/connectivity/NetworkAgentInfo;->getCurrentScore()I

    #@1d
    move-result v2

    #@1e
    invoke-direct {p0, v1, v2}, Lcom/android/server/ConnectivityService;->sendUpdatedScoreToFactories(Landroid/net/NetworkRequest;I)V

    #@21
    goto :goto_1

    #@22
    .line 4046
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
    .line 3991
    .local p1, "dnses":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/net/InetAddress;>;"
    const/4 v4, 0x0

    #@1
    .line 3992
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
    .line 3993
    .local v0, "dns":Ljava/net/InetAddress;
    add-int/lit8 v4, v4, 0x1

    #@13
    .line 3994
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
    .line 3995
    .local v3, "key":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    #@2a
    move-result-object v5

    #@2b
    .line 3996
    .local v5, "value":Ljava/lang/String;
    invoke-static {v3, v5}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    #@2e
    goto :goto_0

    #@2f
    .line 3998
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
    .line 3999
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
    .line 4000
    .restart local v3    # "key":Ljava/lang/String;
    const-string/jumbo v6, ""

    #@4c
    invoke-static {v3, v6}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    #@4f
    .line 3998
    add-int/lit8 v2, v2, 0x1

    #@51
    goto :goto_1

    #@52
    .line 4002
    .end local v3    # "key":Ljava/lang/String;
    :cond_1
    iput v4, p0, Lcom/android/server/ConnectivityService;->mNumDnsEntries:I

    #@54
    .line 3990
    return-void
.end method

.method private setLockdownTracker(Lcom/android/server/net/LockdownVpnTracker;)V
    .locals 5
    .param p1, "tracker"    # Lcom/android/server/net/LockdownVpnTracker;

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 3166
    iget-object v1, p0, Lcom/android/server/ConnectivityService;->mLockdownTracker:Lcom/android/server/net/LockdownVpnTracker;

    #@3
    .line 3167
    .local v1, "existing":Lcom/android/server/net/LockdownVpnTracker;
    iput-object v2, p0, Lcom/android/server/ConnectivityService;->mLockdownTracker:Lcom/android/server/net/LockdownVpnTracker;

    #@5
    .line 3168
    if-eqz v1, :cond_0

    #@7
    .line 3169
    invoke-virtual {v1}, Lcom/android/server/net/LockdownVpnTracker;->shutdown()V

    #@a
    .line 3173
    :cond_0
    if-eqz p1, :cond_1

    #@c
    .line 3174
    :try_start_0
    iget-object v2, p0, Lcom/android/server/ConnectivityService;->mNetd:Landroid/os/INetworkManagementService;

    #@e
    const/4 v3, 0x1

    #@f
    invoke-interface {v2, v3}, Landroid/os/INetworkManagementService;->setFirewallEnabled(Z)V

    #@12
    .line 3175
    iget-object v2, p0, Lcom/android/server/ConnectivityService;->mNetd:Landroid/os/INetworkManagementService;

    #@14
    const-string/jumbo v3, "lo"

    #@17
    const/4 v4, 0x1

    #@18
    invoke-interface {v2, v3, v4}, Landroid/os/INetworkManagementService;->setFirewallInterfaceRule(Ljava/lang/String;Z)V

    #@1b
    .line 3176
    iput-object p1, p0, Lcom/android/server/ConnectivityService;->mLockdownTracker:Lcom/android/server/net/LockdownVpnTracker;

    #@1d
    .line 3177
    iget-object v2, p0, Lcom/android/server/ConnectivityService;->mLockdownTracker:Lcom/android/server/net/LockdownVpnTracker;

    #@1f
    invoke-virtual {v2}, Lcom/android/server/net/LockdownVpnTracker;->init()V

    #@22
    .line 3164
    :goto_0
    return-void

    #@23
    .line 3179
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
    .line 3181
    :catch_0
    move-exception v0

    #@2b
    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method private setProvNotificationVisible(ZILjava/lang/String;)V
    .locals 9
    .param p1, "visible"    # Z
    .param p2, "networkType"    # I
    .param p3, "action"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v7, 0x0

    #@1
    .line 3203
    new-instance v0, Ljava/lang/StringBuilder;

    #@3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@6
    const-string/jumbo v1, "setProvNotificationVisible: E visible="

    #@9
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@c
    move-result-object v0

    #@d
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@10
    move-result-object v0

    #@11
    const-string/jumbo v1, " networkType="

    #@14
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@17
    move-result-object v0

    #@18
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@1b
    move-result-object v0

    #@1c
    .line 3204
    const-string/jumbo v1, " action="

    #@1f
    .line 3203
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@22
    move-result-object v0

    #@23
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@26
    move-result-object v0

    #@27
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2a
    move-result-object v0

    #@2b
    invoke-static {v0}, Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V

    #@2e
    .line 3206
    new-instance v8, Landroid/content/Intent;

    #@30
    invoke-direct {v8, p3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    #@33
    .line 3207
    .local v8, "intent":Landroid/content/Intent;
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;

    #@35
    invoke-static {v0, v7, v8, v7}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    #@38
    move-result-object v6

    #@39
    .line 3209
    .local v6, "pendingIntent":Landroid/app/PendingIntent;
    add-int/lit8 v0, p2, 0x1

    #@3b
    const/high16 v1, 0x10000

    #@3d
    add-int v2, v1, v0

    #@3f
    .line 3210
    .local v2, "id":I
    sget-object v3, Lcom/android/server/ConnectivityService$NotificationType;->SIGN_IN:Lcom/android/server/ConnectivityService$NotificationType;

    #@41
    .line 3211
    const/4 v5, 0x0

    #@42
    move-object v0, p0

    #@43
    move v1, p1

    #@44
    move v4, p2

    #@45
    .line 3210
    invoke-direct/range {v0 .. v7}, Lcom/android/server/ConnectivityService;->setProvNotificationVisibleIntent(ZILcom/android/server/ConnectivityService$NotificationType;ILjava/lang/String;Landroid/app/PendingIntent;Z)V

    #@48
    .line 3201
    return-void
.end method

.method private setProvNotificationVisibleIntent(ZILcom/android/server/ConnectivityService$NotificationType;ILjava/lang/String;Landroid/app/PendingIntent;Z)V
    .locals 12
    .param p1, "visible"    # Z
    .param p2, "id"    # I
    .param p3, "notifyType"    # Lcom/android/server/ConnectivityService$NotificationType;
    .param p4, "networkType"    # I
    .param p5, "extraInfo"    # Ljava/lang/String;
    .param p6, "intent"    # Landroid/app/PendingIntent;
    .param p7, "highPriority"    # Z

    #@0
    .prologue
    .line 3233
    new-instance v9, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    const-string/jumbo v10, "setProvNotificationVisibleIntent "

    #@8
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b
    move-result-object v9

    #@c
    invoke-virtual {v9, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@f
    move-result-object v9

    #@10
    const-string/jumbo v10, " visible="

    #@13
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@16
    move-result-object v9

    #@17
    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@1a
    move-result-object v9

    #@1b
    .line 3234
    const-string/jumbo v10, " networkType="

    #@1e
    .line 3233
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@21
    move-result-object v9

    #@22
    .line 3234
    invoke-static/range {p4 .. p4}, Landroid/net/ConnectivityManager;->getNetworkTypeName(I)Ljava/lang/String;

    #@25
    move-result-object v10

    #@26
    .line 3233
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@29
    move-result-object v9

    #@2a
    .line 3235
    const-string/jumbo v10, " extraInfo="

    #@2d
    .line 3233
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@30
    move-result-object v9

    #@31
    move-object/from16 v0, p5

    #@33
    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@36
    move-result-object v9

    #@37
    .line 3235
    const-string/jumbo v10, " highPriority="

    #@3a
    .line 3233
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3d
    move-result-object v9

    #@3e
    move/from16 v0, p7

    #@40
    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@43
    move-result-object v9

    #@44
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@47
    move-result-object v9

    #@48
    invoke-static {v9}, Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V

    #@4b
    .line 3238
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    #@4e
    move-result-object v7

    #@4f
    .line 3239
    .local v7, "r":Landroid/content/res/Resources;
    iget-object v9, p0, Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;

    #@51
    .line 3240
    const-string/jumbo v10, "notification"

    #@54
    .line 3239
    invoke-virtual {v9, v10}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    #@57
    move-result-object v5

    #@58
    check-cast v5, Landroid/app/NotificationManager;

    #@5a
    .line 3242
    .local v5, "notificationManager":Landroid/app/NotificationManager;
    if-eqz p1, :cond_3

    #@5c
    .line 3246
    sget-object v9, Lcom/android/server/ConnectivityService$NotificationType;->NO_INTERNET:Lcom/android/server/ConnectivityService$NotificationType;

    #@5e
    if-ne p3, v9, :cond_0

    #@60
    .line 3247
    const/4 v9, 0x1

    #@61
    move/from16 v0, p4

    #@63
    if-ne v0, v9, :cond_0

    #@65
    .line 3248
    const/4 v9, 0x1

    #@66
    new-array v9, v9, [Ljava/lang/Object;

    #@68
    const/4 v10, 0x0

    #@69
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@6c
    move-result-object v10

    #@6d
    const/4 v11, 0x0

    #@6e
    aput-object v10, v9, v11

    #@70
    const v10, 0x1040395

    #@73
    invoke-virtual {v7, v10, v9}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    #@76
    move-result-object v8

    #@77
    .line 3249
    .local v8, "title":Ljava/lang/CharSequence;
    const v9, 0x1040396

    #@7a
    invoke-virtual {v7, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    #@7d
    move-result-object v2

    #@7e
    .line 3250
    .local v2, "details":Ljava/lang/CharSequence;
    const v3, 0x1080640

    #@81
    .line 3280
    .local v3, "icon":I
    :goto_0
    new-instance v9, Landroid/app/Notification$Builder;

    #@83
    iget-object v10, p0, Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;

    #@85
    invoke-direct {v9, v10}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    #@88
    .line 3281
    const-wide/16 v10, 0x0

    #@8a
    .line 3280
    invoke-virtual {v9, v10, v11}, Landroid/app/Notification$Builder;->setWhen(J)Landroid/app/Notification$Builder;

    #@8d
    move-result-object v9

    #@8e
    invoke-virtual {v9, v3}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    #@91
    move-result-object v9

    #@92
    .line 3283
    const/4 v10, 0x1

    #@93
    .line 3280
    invoke-virtual {v9, v10}, Landroid/app/Notification$Builder;->setAutoCancel(Z)Landroid/app/Notification$Builder;

    #@96
    move-result-object v9

    #@97
    invoke-virtual {v9, v8}, Landroid/app/Notification$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    #@9a
    move-result-object v9

    #@9b
    .line 3285
    iget-object v10, p0, Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;

    #@9d
    .line 3286
    const v11, 0x1060059

    #@a0
    .line 3285
    invoke-virtual {v10, v11}, Landroid/content/Context;->getColor(I)I

    #@a3
    move-result v10

    #@a4
    .line 3280
    invoke-virtual {v9, v10}, Landroid/app/Notification$Builder;->setColor(I)Landroid/app/Notification$Builder;

    #@a7
    move-result-object v9

    #@a8
    invoke-virtual {v9, v8}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    #@ab
    move-result-object v9

    #@ac
    invoke-virtual {v9, v2}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    #@af
    move-result-object v9

    #@b0
    move-object/from16 v0, p6

    #@b2
    invoke-virtual {v9, v0}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    #@b5
    move-result-object v9

    #@b6
    .line 3290
    const/4 v10, 0x1

    #@b7
    .line 3280
    invoke-virtual {v9, v10}, Landroid/app/Notification$Builder;->setLocalOnly(Z)Landroid/app/Notification$Builder;

    #@ba
    move-result-object v10

    #@bb
    .line 3291
    if-eqz p7, :cond_2

    #@bd
    .line 3292
    const/4 v9, 0x1

    #@be
    .line 3280
    :goto_1
    invoke-virtual {v10, v9}, Landroid/app/Notification$Builder;->setPriority(I)Landroid/app/Notification$Builder;

    #@c1
    move-result-object v9

    #@c2
    .line 3294
    const/4 v10, -0x1

    #@c3
    .line 3280
    invoke-virtual {v9, v10}, Landroid/app/Notification$Builder;->setDefaults(I)Landroid/app/Notification$Builder;

    #@c6
    move-result-object v9

    #@c7
    .line 3295
    const/4 v10, 0x1

    #@c8
    .line 3280
    invoke-virtual {v9, v10}, Landroid/app/Notification$Builder;->setOnlyAlertOnce(Z)Landroid/app/Notification$Builder;

    #@cb
    move-result-object v9

    #@cc
    invoke-virtual {v9}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    #@cf
    move-result-object v4

    #@d0
    .line 3299
    .local v4, "notification":Landroid/app/Notification;
    :try_start_0
    const-string/jumbo v9, "CaptivePortal.Notification"

    #@d3
    invoke-virtual {v5, v9, p2, v4}, Landroid/app/NotificationManager;->notify(Ljava/lang/String;ILandroid/app/Notification;)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    #@d6
    .line 3231
    .end local v2    # "details":Ljava/lang/CharSequence;
    .end local v3    # "icon":I
    .end local v4    # "notification":Landroid/app/Notification;
    .end local v8    # "title":Ljava/lang/CharSequence;
    :goto_2
    return-void

    #@d7
    .line 3251
    :cond_0
    sget-object v9, Lcom/android/server/ConnectivityService$NotificationType;->SIGN_IN:Lcom/android/server/ConnectivityService$NotificationType;

    #@d9
    if-ne p3, v9, :cond_1

    #@db
    .line 3252
    packed-switch p4, :pswitch_data_0

    #@de
    .line 3268
    :pswitch_0
    const/4 v9, 0x1

    #@df
    new-array v9, v9, [Ljava/lang/Object;

    #@e1
    const/4 v10, 0x0

    #@e2
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@e5
    move-result-object v10

    #@e6
    const/4 v11, 0x0

    #@e7
    aput-object v10, v9, v11

    #@e9
    const v10, 0x1040393

    #@ec
    invoke-virtual {v7, v10, v9}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    #@ef
    move-result-object v8

    #@f0
    .line 3269
    .restart local v8    # "title":Ljava/lang/CharSequence;
    const/4 v9, 0x1

    #@f1
    new-array v9, v9, [Ljava/lang/Object;

    #@f3
    .line 3270
    const/4 v10, 0x0

    #@f4
    aput-object p5, v9, v10

    #@f6
    .line 3269
    const v10, 0x1040394

    #@f9
    invoke-virtual {v7, v10, v9}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    #@fc
    move-result-object v2

    #@fd
    .line 3271
    .restart local v2    # "details":Ljava/lang/CharSequence;
    const v3, 0x108063c

    #@100
    .line 3272
    .restart local v3    # "icon":I
    goto :goto_0

    #@101
    .line 3254
    .end local v2    # "details":Ljava/lang/CharSequence;
    .end local v3    # "icon":I
    .end local v8    # "title":Ljava/lang/CharSequence;
    :pswitch_1
    const/4 v9, 0x1

    #@102
    new-array v9, v9, [Ljava/lang/Object;

    #@104
    const/4 v10, 0x0

    #@105
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@108
    move-result-object v10

    #@109
    const/4 v11, 0x0

    #@10a
    aput-object v10, v9, v11

    #@10c
    const v10, 0x1040392

    #@10f
    invoke-virtual {v7, v10, v9}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    #@112
    move-result-object v8

    #@113
    .line 3255
    .restart local v8    # "title":Ljava/lang/CharSequence;
    const/4 v9, 0x1

    #@114
    new-array v9, v9, [Ljava/lang/Object;

    #@116
    .line 3256
    const/4 v10, 0x0

    #@117
    aput-object p5, v9, v10

    #@119
    .line 3255
    const v10, 0x1040394

    #@11c
    invoke-virtual {v7, v10, v9}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    #@11f
    move-result-object v2

    #@120
    .line 3257
    .restart local v2    # "details":Ljava/lang/CharSequence;
    const v3, 0x1080640

    #@123
    .line 3258
    .restart local v3    # "icon":I
    goto/16 :goto_0

    #@125
    .line 3261
    .end local v2    # "details":Ljava/lang/CharSequence;
    .end local v3    # "icon":I
    .end local v8    # "title":Ljava/lang/CharSequence;
    :pswitch_2
    const/4 v9, 0x1

    #@126
    new-array v9, v9, [Ljava/lang/Object;

    #@128
    const/4 v10, 0x0

    #@129
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@12c
    move-result-object v10

    #@12d
    const/4 v11, 0x0

    #@12e
    aput-object v10, v9, v11

    #@130
    const v10, 0x1040393

    #@133
    invoke-virtual {v7, v10, v9}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    #@136
    move-result-object v8

    #@137
    .line 3264
    .restart local v8    # "title":Ljava/lang/CharSequence;
    iget-object v9, p0, Lcom/android/server/ConnectivityService;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    #@139
    invoke-virtual {v9}, Landroid/telephony/TelephonyManager;->getNetworkOperatorName()Ljava/lang/String;

    #@13c
    move-result-object v2

    #@13d
    .line 3265
    .restart local v2    # "details":Ljava/lang/CharSequence;
    const v3, 0x108063c

    #@140
    .line 3266
    .restart local v3    # "icon":I
    goto/16 :goto_0

    #@142
    .line 3275
    .end local v2    # "details":Ljava/lang/CharSequence;
    .end local v3    # "icon":I
    .end local v8    # "title":Ljava/lang/CharSequence;
    :cond_1
    const-string/jumbo v9, "ConnectivityService"

    #@145
    new-instance v10, Ljava/lang/StringBuilder;

    #@147
    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    #@14a
    const-string/jumbo v11, "Unknown notification type "

    #@14d
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@150
    move-result-object v10

    #@151
    invoke-virtual {v10, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@154
    move-result-object v10

    #@155
    const-string/jumbo v11, "on network type "

    #@158
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@15b
    move-result-object v10

    #@15c
    .line 3276
    invoke-static/range {p4 .. p4}, Landroid/net/ConnectivityManager;->getNetworkTypeName(I)Ljava/lang/String;

    #@15f
    move-result-object v11

    #@160
    .line 3275
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@163
    move-result-object v10

    #@164
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@167
    move-result-object v10

    #@168
    invoke-static {v9, v10}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    #@16b
    .line 3277
    return-void

    #@16c
    .line 3293
    .restart local v2    # "details":Ljava/lang/CharSequence;
    .restart local v3    # "icon":I
    .restart local v8    # "title":Ljava/lang/CharSequence;
    :cond_2
    const/4 v9, 0x0

    #@16d
    goto/16 :goto_1

    #@16f
    .line 3300
    .restart local v4    # "notification":Landroid/app/Notification;
    :catch_0
    move-exception v6

    #@170
    .line 3301
    .local v6, "npe":Ljava/lang/NullPointerException;
    new-instance v9, Ljava/lang/StringBuilder;

    #@172
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    #@175
    const-string/jumbo v10, "setNotificationVisible: visible notificationManager npe="

    #@178
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@17b
    move-result-object v9

    #@17c
    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@17f
    move-result-object v9

    #@180
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@183
    move-result-object v9

    #@184
    invoke-static {v9}, Lcom/android/server/ConnectivityService;->loge(Ljava/lang/String;)V

    #@187
    .line 3302
    invoke-virtual {v6}, Ljava/lang/NullPointerException;->printStackTrace()V

    #@18a
    goto/16 :goto_2

    #@18c
    .line 3306
    .end local v2    # "details":Ljava/lang/CharSequence;
    .end local v3    # "icon":I
    .end local v4    # "notification":Landroid/app/Notification;
    .end local v6    # "npe":Ljava/lang/NullPointerException;
    .end local v8    # "title":Ljava/lang/CharSequence;
    :cond_3
    :try_start_1
    const-string/jumbo v9, "CaptivePortal.Notification"

    #@18f
    invoke-virtual {v5, v9, p2}, Landroid/app/NotificationManager;->cancel(Ljava/lang/String;I)V
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_1

    #@192
    goto/16 :goto_2

    #@194
    .line 3307
    :catch_1
    move-exception v6

    #@195
    .line 3308
    .restart local v6    # "npe":Ljava/lang/NullPointerException;
    new-instance v9, Ljava/lang/StringBuilder;

    #@197
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    #@19a
    const-string/jumbo v10, "setNotificationVisible: cancel notificationManager npe="

    #@19d
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1a0
    move-result-object v9

    #@1a1
    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@1a4
    move-result-object v9

    #@1a5
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1a8
    move-result-object v9

    #@1a9
    invoke-static {v9}, Lcom/android/server/ConnectivityService;->loge(Ljava/lang/String;)V

    #@1ac
    .line 3309
    invoke-virtual {v6}, Ljava/lang/NullPointerException;->printStackTrace()V

    #@1af
    goto/16 :goto_2

    #@1b1
    .line 3252
    nop

    #@1b2
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method private setupDataActivityTracking(Lcom/android/server/connectivity/NetworkAgentInfo;)V
    .locals 7
    .param p1, "networkAgent"    # Lcom/android/server/connectivity/NetworkAgentInfo;

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    .line 1579
    iget-object v4, p1, Lcom/android/server/connectivity/NetworkAgentInfo;->linkProperties:Landroid/net/LinkProperties;

    #@3
    invoke-virtual {v4}, Landroid/net/LinkProperties;->getInterfaceName()Ljava/lang/String;

    #@6
    move-result-object v1

    #@7
    .line 1582
    .local v1, "iface":Ljava/lang/String;
    const/4 v3, -0x1

    #@8
    .line 1584
    .local v3, "type":I
    iget-object v4, p1, Lcom/android/server/connectivity/NetworkAgentInfo;->networkCapabilities:Landroid/net/NetworkCapabilities;

    #@a
    invoke-virtual {v4, v5}, Landroid/net/NetworkCapabilities;->hasTransport(I)Z

    #@d
    move-result v4

    #@e
    if-eqz v4, :cond_1

    #@10
    .line 1586
    iget-object v4, p0, Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;

    #@12
    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    #@15
    move-result-object v4

    #@16
    .line 1587
    const-string/jumbo v5, "data_activity_timeout_mobile"

    #@19
    .line 1588
    const/4 v6, 0x5

    #@1a
    .line 1586
    invoke-static {v4, v5, v6}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    #@1d
    move-result v2

    #@1e
    .line 1589
    .local v2, "timeout":I
    const/4 v3, 0x0

    #@1f
    .line 1601
    :goto_0
    if-lez v2, :cond_0

    #@21
    if-eqz v1, :cond_0

    #@23
    const/4 v4, -0x1

    #@24
    if-eq v3, v4, :cond_0

    #@26
    .line 1603
    :try_start_0
    iget-object v4, p0, Lcom/android/server/ConnectivityService;->mNetd:Landroid/os/INetworkManagementService;

    #@28
    invoke-interface {v4, v1, v2, v3}, Landroid/os/INetworkManagementService;->addIdleTimer(Ljava/lang/String;II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    #@2b
    .line 1578
    :cond_0
    :goto_1
    return-void

    #@2c
    .line 1590
    .end local v2    # "timeout":I
    :cond_1
    iget-object v4, p1, Lcom/android/server/connectivity/NetworkAgentInfo;->networkCapabilities:Landroid/net/NetworkCapabilities;

    #@2e
    .line 1591
    const/4 v5, 0x1

    #@2f
    .line 1590
    invoke-virtual {v4, v5}, Landroid/net/NetworkCapabilities;->hasTransport(I)Z

    #@32
    move-result v4

    #@33
    if-eqz v4, :cond_2

    #@35
    .line 1592
    iget-object v4, p0, Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;

    #@37
    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    #@3a
    move-result-object v4

    #@3b
    .line 1593
    const-string/jumbo v5, "data_activity_timeout_wifi"

    #@3e
    .line 1594
    const/16 v6, 0xf

    #@40
    .line 1592
    invoke-static {v4, v5, v6}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    #@43
    move-result v2

    #@44
    .line 1595
    .restart local v2    # "timeout":I
    const/4 v3, 0x1

    #@45
    goto :goto_0

    #@46
    .line 1598
    .end local v2    # "timeout":I
    :cond_2
    const/4 v2, 0x0

    #@47
    .restart local v2    # "timeout":I
    goto :goto_0

    #@48
    .line 1604
    :catch_0
    move-exception v0

    #@49
    .line 1606
    .local v0, "e":Ljava/lang/Exception;
    new-instance v4, Ljava/lang/StringBuilder;

    #@4b
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@4e
    const-string/jumbo v5, "Exception in setupDataActivityTracking "

    #@51
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@54
    move-result-object v4

    #@55
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@58
    move-result-object v4

    #@59
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@5c
    move-result-object v4

    #@5d
    invoke-static {v4}, Lcom/android/server/ConnectivityService;->loge(Ljava/lang/String;)V

    #@60
    goto :goto_1
.end method

.method private teardownUnneededNetwork(Lcom/android/server/connectivity/NetworkAgentInfo;)V
    .locals 4
    .param p1, "nai"    # Lcom/android/server/connectivity/NetworkAgentInfo;

    #@0
    .prologue
    .line 4140
    const/4 v0, 0x0

    #@1
    .local v0, "i":I
    :goto_0
    iget-object v2, p1, Lcom/android/server/connectivity/NetworkAgentInfo;->networkRequests:Landroid/util/SparseArray;

    #@3
    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    #@6
    move-result v2

    #@7
    if-ge v0, v2, :cond_1

    #@9
    .line 4141
    iget-object v2, p1, Lcom/android/server/connectivity/NetworkAgentInfo;->networkRequests:Landroid/util/SparseArray;

    #@b
    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    #@e
    move-result-object v1

    #@f
    check-cast v1, Landroid/net/NetworkRequest;

    #@11
    .line 4143
    .local v1, "nr":Landroid/net/NetworkRequest;
    invoke-direct {p0, v1}, Lcom/android/server/ConnectivityService;->isRequest(Landroid/net/NetworkRequest;)Z

    #@14
    move-result v2

    #@15
    if-nez v2, :cond_0

    #@17
    .line 4140
    add-int/lit8 v0, v0, 0x1

    #@19
    goto :goto_0

    #@1a
    .line 4144
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
    .line 4147
    .end local v1    # "nr":Landroid/net/NetworkRequest;
    :cond_1
    iget-object v2, p1, Lcom/android/server/connectivity/NetworkAgentInfo;->asyncChannel:Lcom/android/internal/util/AsyncChannel;

    #@33
    invoke-virtual {v2}, Lcom/android/internal/util/AsyncChannel;->disconnect()V

    #@36
    .line 4139
    return-void
.end method

.method private throwIfLockdownEnabled()V
    .locals 2

    #@0
    .prologue
    .line 3187
    iget-boolean v0, p0, Lcom/android/server/ConnectivityService;->mLockdownEnabled:Z

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 3188
    new-instance v0, Ljava/lang/IllegalStateException;

    #@6
    const-string/jumbo v1, "Unavailable in lockdown mode"

    #@9
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@c
    throw v0

    #@d
    .line 3186
    :cond_0
    return-void
.end method

.method private unlinger(Lcom/android/server/connectivity/NetworkAgentInfo;)V
    .locals 2
    .param p1, "nai"    # Lcom/android/server/connectivity/NetworkAgentInfo;

    #@0
    .prologue
    .line 2081
    iget-object v0, p1, Lcom/android/server/connectivity/NetworkAgentInfo;->networkLingered:Ljava/util/ArrayList;

    #@2
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    #@5
    .line 2082
    iget-boolean v0, p1, Lcom/android/server/connectivity/NetworkAgentInfo;->lingering:Z

    #@7
    if-nez v0, :cond_0

    #@9
    return-void

    #@a
    .line 2083
    :cond_0
    const/4 v0, 0x0

    #@b
    iput-boolean v0, p1, Lcom/android/server/connectivity/NetworkAgentInfo;->lingering:Z

    #@d
    .line 2085
    iget-object v0, p1, Lcom/android/server/connectivity/NetworkAgentInfo;->networkMonitor:Lcom/android/server/connectivity/NetworkMonitor;

    #@f
    const v1, 0x82001

    #@12
    invoke-virtual {v0, v1}, Lcom/android/server/connectivity/NetworkMonitor;->sendMessage(I)V

    #@15
    .line 2080
    return-void
.end method

.method private unneeded(Lcom/android/server/connectivity/NetworkAgentInfo;)Z
    .locals 5
    .param p1, "nai"    # Lcom/android/server/connectivity/NetworkAgentInfo;

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 2247
    iget-boolean v2, p1, Lcom/android/server/connectivity/NetworkAgentInfo;->created:Z

    #@3
    if-eqz v2, :cond_0

    #@5
    invoke-virtual {p1}, Lcom/android/server/connectivity/NetworkAgentInfo;->isVPN()Z

    #@8
    move-result v2

    #@9
    if-nez v2, :cond_0

    #@b
    iget-boolean v2, p1, Lcom/android/server/connectivity/NetworkAgentInfo;->lingering:Z

    #@d
    if-eqz v2, :cond_1

    #@f
    :cond_0
    return v4

    #@10
    .line 2248
    :cond_1
    iget-object v2, p0, Lcom/android/server/ConnectivityService;->mNetworkRequests:Ljava/util/HashMap;

    #@12
    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    #@15
    move-result-object v2

    #@16
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@19
    move-result-object v1

    #@1a
    .local v1, "nri$iterator":Ljava/util/Iterator;
    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@1d
    move-result v2

    #@1e
    if-eqz v2, :cond_4

    #@20
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@23
    move-result-object v0

    #@24
    check-cast v0, Lcom/android/server/ConnectivityService$NetworkRequestInfo;

    #@26
    .line 2251
    .local v0, "nri":Lcom/android/server/ConnectivityService$NetworkRequestInfo;
    iget-boolean v2, v0, Lcom/android/server/ConnectivityService$NetworkRequestInfo;->isRequest:Z

    #@28
    if-eqz v2, :cond_2

    #@2a
    iget-object v2, v0, Lcom/android/server/ConnectivityService$NetworkRequestInfo;->request:Landroid/net/NetworkRequest;

    #@2c
    invoke-virtual {p1, v2}, Lcom/android/server/connectivity/NetworkAgentInfo;->satisfies(Landroid/net/NetworkRequest;)Z

    #@2f
    move-result v2

    #@30
    if-eqz v2, :cond_2

    #@32
    .line 2252
    iget-object v2, p1, Lcom/android/server/connectivity/NetworkAgentInfo;->networkRequests:Landroid/util/SparseArray;

    #@34
    iget-object v3, v0, Lcom/android/server/ConnectivityService$NetworkRequestInfo;->request:Landroid/net/NetworkRequest;

    #@36
    iget v3, v3, Landroid/net/NetworkRequest;->requestId:I

    #@38
    invoke-virtual {v2, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    #@3b
    move-result-object v2

    #@3c
    if-nez v2, :cond_3

    #@3e
    .line 2260
    iget-object v2, p0, Lcom/android/server/ConnectivityService;->mNetworkForRequestId:Landroid/util/SparseArray;

    #@40
    iget-object v3, v0, Lcom/android/server/ConnectivityService$NetworkRequestInfo;->request:Landroid/net/NetworkRequest;

    #@42
    iget v3, v3, Landroid/net/NetworkRequest;->requestId:I

    #@44
    invoke-virtual {v2, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    #@47
    move-result-object v2

    #@48
    check-cast v2, Lcom/android/server/connectivity/NetworkAgentInfo;

    #@4a
    invoke-virtual {v2}, Lcom/android/server/connectivity/NetworkAgentInfo;->getCurrentScore()I

    #@4d
    move-result v2

    #@4e
    .line 2261
    invoke-virtual {p1}, Lcom/android/server/connectivity/NetworkAgentInfo;->getCurrentScoreAsValidated()I

    #@51
    move-result v3

    #@52
    .line 2260
    if-ge v2, v3, :cond_2

    #@54
    .line 2262
    :cond_3
    return v4

    #@55
    .line 2265
    .end local v0    # "nri":Lcom/android/server/ConnectivityService$NetworkRequestInfo;
    :cond_4
    const/4 v2, 0x1

    #@56
    return v2
.end method

.method private updateCapabilities(Lcom/android/server/connectivity/NetworkAgentInfo;Landroid/net/NetworkCapabilities;)V
    .locals 7
    .param p1, "nai"    # Lcom/android/server/connectivity/NetworkAgentInfo;
    .param p2, "networkCapabilities"    # Landroid/net/NetworkCapabilities;

    #@0
    .prologue
    const/16 v6, 0x11

    #@2
    const/16 v5, 0x10

    #@4
    const/16 v4, 0xd

    #@6
    .line 4015
    new-instance v1, Landroid/net/NetworkCapabilities;

    #@8
    invoke-direct {v1, p2}, Landroid/net/NetworkCapabilities;-><init>(Landroid/net/NetworkCapabilities;)V

    #@b
    .line 4016
    .end local p2    # "networkCapabilities":Landroid/net/NetworkCapabilities;
    .local v1, "networkCapabilities":Landroid/net/NetworkCapabilities;
    iget-boolean v3, p1, Lcom/android/server/connectivity/NetworkAgentInfo;->lastValidated:Z

    #@d
    if-eqz v3, :cond_2

    #@f
    .line 4017
    invoke-virtual {v1, v5}, Landroid/net/NetworkCapabilities;->addCapability(I)Landroid/net/NetworkCapabilities;

    #@12
    .line 4021
    :goto_0
    iget-boolean v3, p1, Lcom/android/server/connectivity/NetworkAgentInfo;->lastCaptivePortalDetected:Z

    #@14
    if-eqz v3, :cond_3

    #@16
    .line 4022
    invoke-virtual {v1, v6}, Landroid/net/NetworkCapabilities;->addCapability(I)Landroid/net/NetworkCapabilities;

    #@19
    .line 4026
    :goto_1
    iget-object v3, p1, Lcom/android/server/connectivity/NetworkAgentInfo;->networkCapabilities:Landroid/net/NetworkCapabilities;

    #@1b
    invoke-static {v3, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    #@1e
    move-result v3

    #@1f
    if-nez v3, :cond_1

    #@21
    .line 4027
    invoke-virtual {p1}, Lcom/android/server/connectivity/NetworkAgentInfo;->getCurrentScore()I

    #@24
    move-result v2

    #@25
    .line 4028
    .local v2, "oldScore":I
    iget-object v3, p1, Lcom/android/server/connectivity/NetworkAgentInfo;->networkCapabilities:Landroid/net/NetworkCapabilities;

    #@27
    invoke-virtual {v3, v4}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    #@2a
    move-result v3

    #@2b
    .line 4029
    invoke-virtual {v1, v4}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    #@2e
    move-result v4

    #@2f
    .line 4028
    if-eq v3, v4, :cond_0

    #@31
    .line 4031
    :try_start_0
    iget-object v4, p0, Lcom/android/server/ConnectivityService;->mNetd:Landroid/os/INetworkManagementService;

    #@33
    iget-object v3, p1, Lcom/android/server/connectivity/NetworkAgentInfo;->network:Landroid/net/Network;

    #@35
    iget v5, v3, Landroid/net/Network;->netId:I

    #@37
    .line 4032
    const/16 v3, 0xd

    #@39
    invoke-virtual {v1, v3}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    #@3c
    move-result v3

    #@3d
    if-eqz v3, :cond_4

    #@3f
    .line 4033
    const/4 v3, 0x0

    #@40
    .line 4031
    :goto_2
    invoke-interface {v4, v5, v3}, Landroid/os/INetworkManagementService;->setNetworkPermission(ILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@43
    .line 4038
    :cond_0
    :goto_3
    monitor-enter p1

    #@44
    .line 4039
    :try_start_1
    iput-object v1, p1, Lcom/android/server/connectivity/NetworkAgentInfo;->networkCapabilities:Landroid/net/NetworkCapabilities;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@46
    monitor-exit p1

    #@47
    .line 4041
    invoke-direct {p0, p1, v2}, Lcom/android/server/ConnectivityService;->rematchAllNetworksAndRequests(Lcom/android/server/connectivity/NetworkAgentInfo;I)V

    #@4a
    .line 4042
    const v3, 0x80006

    #@4d
    invoke-virtual {p0, p1, v3}, Lcom/android/server/ConnectivityService;->notifyNetworkCallbacks(Lcom/android/server/connectivity/NetworkAgentInfo;I)V

    #@50
    .line 4013
    .end local v2    # "oldScore":I
    :cond_1
    return-void

    #@51
    .line 4019
    :cond_2
    invoke-virtual {v1, v5}, Landroid/net/NetworkCapabilities;->removeCapability(I)Landroid/net/NetworkCapabilities;

    #@54
    goto :goto_0

    #@55
    .line 4024
    :cond_3
    invoke-virtual {v1, v6}, Landroid/net/NetworkCapabilities;->removeCapability(I)Landroid/net/NetworkCapabilities;

    #@58
    goto :goto_1

    #@59
    .line 4033
    .restart local v2    # "oldScore":I
    :cond_4
    :try_start_2
    const-string/jumbo v3, "SYSTEM"
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    #@5c
    goto :goto_2

    #@5d
    .line 4034
    :catch_0
    move-exception v0

    #@5e
    .line 4035
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v3, Ljava/lang/StringBuilder;

    #@60
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@63
    const-string/jumbo v4, "Exception in setNetworkPermission: "

    #@66
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@69
    move-result-object v3

    #@6a
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@6d
    move-result-object v3

    #@6e
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@71
    move-result-object v3

    #@72
    invoke-static {v3}, Lcom/android/server/ConnectivityService;->loge(Ljava/lang/String;)V

    #@75
    goto :goto_3

    #@76
    .line 4038
    .end local v0    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v3

    #@77
    monitor-exit p1

    #@78
    throw v3
.end method

.method private updateClat(Landroid/net/LinkProperties;Landroid/net/LinkProperties;Lcom/android/server/connectivity/NetworkAgentInfo;)V
    .locals 6
    .param p1, "newLp"    # Landroid/net/LinkProperties;
    .param p2, "oldLp"    # Landroid/net/LinkProperties;
    .param p3, "nai"    # Lcom/android/server/connectivity/NetworkAgentInfo;

    #@0
    .prologue
    .line 3872
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
    .line 3873
    :goto_0
    invoke-static {p3}, Lcom/android/server/connectivity/Nat464Xlat;->requiresClat(Lcom/android/server/connectivity/NetworkAgentInfo;)Z

    #@d
    move-result v0

    #@e
    .line 3875
    .local v0, "shouldRunClat":Z
    if-nez v1, :cond_2

    #@10
    if-eqz v0, :cond_2

    #@12
    .line 3876
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
    .line 3877
    iget-object v2, p3, Lcom/android/server/connectivity/NetworkAgentInfo;->clatd:Lcom/android/server/connectivity/Nat464Xlat;

    #@21
    invoke-virtual {v2}, Lcom/android/server/connectivity/Nat464Xlat;->start()V

    #@24
    .line 3871
    :cond_0
    :goto_1
    return-void

    #@25
    .line 3872
    .end local v0    # "shouldRunClat":Z
    :cond_1
    const/4 v1, 0x0

    #@26
    .local v1, "wasRunningClat":Z
    goto :goto_0

    #@27
    .line 3878
    .end local v1    # "wasRunningClat":Z
    .restart local v0    # "shouldRunClat":Z
    :cond_2
    if-eqz v1, :cond_0

    #@29
    if-nez v0, :cond_0

    #@2b
    .line 3879
    iget-object v2, p3, Lcom/android/server/connectivity/NetworkAgentInfo;->clatd:Lcom/android/server/connectivity/Nat464Xlat;

    #@2d
    invoke-virtual {v2}, Lcom/android/server/connectivity/Nat464Xlat;->stop()V

    #@30
    goto :goto_1
.end method

.method private updateDnses(Landroid/net/LinkProperties;Landroid/net/LinkProperties;IZZ)V
    .locals 6
    .param p1, "newLp"    # Landroid/net/LinkProperties;
    .param p2, "oldLp"    # Landroid/net/LinkProperties;
    .param p3, "netId"    # I
    .param p4, "flush"    # Z
    .param p5, "useDefaultDns"    # Z

    #@0
    .prologue
    .line 3959
    if-eqz p2, :cond_0

    #@2
    invoke-virtual {p1, p2}, Landroid/net/LinkProperties;->isIdenticalDnses(Landroid/net/LinkProperties;)Z

    #@5
    move-result v3

    #@6
    if-nez v3, :cond_4

    #@8
    .line 3960
    :cond_0
    invoke-virtual {p1}, Landroid/net/LinkProperties;->getDnsServers()Ljava/util/List;

    #@b
    move-result-object v1

    #@c
    .line 3961
    .local v1, "dnses":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/net/InetAddress;>;"
    invoke-interface {v1}, Ljava/util/Collection;->size()I

    #@f
    move-result v3

    #@10
    if-nez v3, :cond_1

    #@12
    iget-object v3, p0, Lcom/android/server/ConnectivityService;->mDefaultDns:Ljava/net/InetAddress;

    #@14
    if-eqz v3, :cond_1

    #@16
    if-eqz p5, :cond_1

    #@18
    .line 3962
    new-instance v1, Ljava/util/ArrayList;

    #@1a
    .end local v1    # "dnses":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/net/InetAddress;>;"
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    #@1d
    .line 3963
    .restart local v1    # "dnses":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/net/InetAddress;>;"
    iget-object v3, p0, Lcom/android/server/ConnectivityService;->mDefaultDns:Ljava/net/InetAddress;

    #@1f
    invoke-interface {v1, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    #@22
    .line 3965
    new-instance v3, Ljava/lang/StringBuilder;

    #@24
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@27
    const-string/jumbo v4, "no dns provided for netId "

    #@2a
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2d
    move-result-object v3

    #@2e
    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@31
    move-result-object v3

    #@32
    const-string/jumbo v4, ", so using defaults"

    #@35
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@38
    move-result-object v3

    #@39
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3c
    move-result-object v3

    #@3d
    invoke-static {v3}, Lcom/android/server/ConnectivityService;->loge(Ljava/lang/String;)V

    #@40
    .line 3968
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    #@42
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@45
    const-string/jumbo v4, "Setting Dns servers for network "

    #@48
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4b
    move-result-object v3

    #@4c
    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@4f
    move-result-object v3

    #@50
    const-string/jumbo v4, " to "

    #@53
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@56
    move-result-object v3

    #@57
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@5a
    move-result-object v3

    #@5b
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@5e
    move-result-object v3

    #@5f
    invoke-static {v3}, Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V

    #@62
    .line 3970
    :try_start_0
    iget-object v3, p0, Lcom/android/server/ConnectivityService;->mNetd:Landroid/os/INetworkManagementService;

    #@64
    invoke-static {v1}, Landroid/net/NetworkUtils;->makeStrings(Ljava/util/Collection;)[Ljava/lang/String;

    #@67
    move-result-object v4

    #@68
    .line 3971
    invoke-virtual {p1}, Landroid/net/LinkProperties;->getDomains()Ljava/lang/String;

    #@6b
    move-result-object v5

    #@6c
    .line 3970
    invoke-interface {v3, p3, v4, v5}, Landroid/os/INetworkManagementService;->setDnsServersForNetwork(I[Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    #@6f
    .line 3975
    :goto_0
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->getDefaultNetwork()Lcom/android/server/connectivity/NetworkAgentInfo;

    #@72
    move-result-object v0

    #@73
    .line 3976
    .local v0, "defaultNai":Lcom/android/server/connectivity/NetworkAgentInfo;
    if-eqz v0, :cond_2

    #@75
    iget-object v3, v0, Lcom/android/server/connectivity/NetworkAgentInfo;->network:Landroid/net/Network;

    #@77
    iget v3, v3, Landroid/net/Network;->netId:I

    #@79
    if-ne v3, p3, :cond_2

    #@7b
    .line 3977
    invoke-direct {p0, v1}, Lcom/android/server/ConnectivityService;->setDefaultDnsSystemProperties(Ljava/util/Collection;)V

    #@7e
    .line 3979
    :cond_2
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->flushVmDnsCache()V

    #@81
    .line 3958
    .end local v0    # "defaultNai":Lcom/android/server/connectivity/NetworkAgentInfo;
    .end local v1    # "dnses":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/net/InetAddress;>;"
    :cond_3
    :goto_1
    return-void

    #@82
    .line 3972
    .restart local v1    # "dnses":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/net/InetAddress;>;"
    :catch_0
    move-exception v2

    #@83
    .line 3973
    .local v2, "e":Ljava/lang/Exception;
    new-instance v3, Ljava/lang/StringBuilder;

    #@85
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@88
    const-string/jumbo v4, "Exception in setDnsServersForNetwork: "

    #@8b
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@8e
    move-result-object v3

    #@8f
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@92
    move-result-object v3

    #@93
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@96
    move-result-object v3

    #@97
    invoke-static {v3}, Lcom/android/server/ConnectivityService;->loge(Ljava/lang/String;)V

    #@9a
    goto :goto_0

    #@9b
    .line 3980
    .end local v1    # "dnses":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/net/InetAddress;>;"
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_4
    if-eqz p4, :cond_3

    #@9d
    .line 3982
    :try_start_1
    iget-object v3, p0, Lcom/android/server/ConnectivityService;->mNetd:Landroid/os/INetworkManagementService;

    #@9f
    invoke-interface {v3, p3}, Landroid/os/INetworkManagementService;->flushNetworkDnsCache(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    #@a2
    .line 3986
    :goto_2
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->flushVmDnsCache()V

    #@a5
    goto :goto_1

    #@a6
    .line 3983
    :catch_1
    move-exception v2

    #@a7
    .line 3984
    .restart local v2    # "e":Ljava/lang/Exception;
    new-instance v3, Ljava/lang/StringBuilder;

    #@a9
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@ac
    const-string/jumbo v4, "Exception in flushNetworkDnsCache: "

    #@af
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b2
    move-result-object v3

    #@b3
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@b6
    move-result-object v3

    #@b7
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@ba
    move-result-object v3

    #@bb
    invoke-static {v3}, Lcom/android/server/ConnectivityService;->loge(Ljava/lang/String;)V

    #@be
    goto :goto_2
.end method

.method private updateInetCondition(Lcom/android/server/connectivity/NetworkAgentInfo;)V
    .locals 2
    .param p1, "nai"    # Lcom/android/server/connectivity/NetworkAgentInfo;

    #@0
    .prologue
    .line 4453
    iget-boolean v1, p1, Lcom/android/server/connectivity/NetworkAgentInfo;->everValidated:Z

    #@2
    if-nez v1, :cond_0

    #@4
    return-void

    #@5
    .line 4456
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/server/ConnectivityService;->isDefaultNetwork(Lcom/android/server/connectivity/NetworkAgentInfo;)Z

    #@8
    move-result v1

    #@9
    if-nez v1, :cond_1

    #@b
    return-void

    #@c
    .line 4458
    :cond_1
    iget-boolean v1, p1, Lcom/android/server/connectivity/NetworkAgentInfo;->lastValidated:Z

    #@e
    if-eqz v1, :cond_2

    #@10
    const/16 v0, 0x64

    #@12
    .line 4460
    .local v0, "newInetCondition":I
    :goto_0
    iget v1, p0, Lcom/android/server/ConnectivityService;->mDefaultInetConditionPublished:I

    #@14
    if-ne v0, v1, :cond_3

    #@16
    return-void

    #@17
    .line 4458
    .end local v0    # "newInetCondition":I
    :cond_2
    const/4 v0, 0x0

    #@18
    .restart local v0    # "newInetCondition":I
    goto :goto_0

    #@19
    .line 4462
    :cond_3
    iput v0, p0, Lcom/android/server/ConnectivityService;->mDefaultInetConditionPublished:I

    #@1b
    .line 4463
    iget-object v1, p1, Lcom/android/server/connectivity/NetworkAgentInfo;->networkInfo:Landroid/net/NetworkInfo;

    #@1d
    invoke-direct {p0, v1}, Lcom/android/server/ConnectivityService;->sendInetConditionBroadcast(Landroid/net/NetworkInfo;)V

    #@20
    .line 4451
    return-void
.end method

.method private updateInterfaces(Landroid/net/LinkProperties;Landroid/net/LinkProperties;I)V
    .locals 6
    .param p1, "newLp"    # Landroid/net/LinkProperties;
    .param p2, "oldLp"    # Landroid/net/LinkProperties;
    .param p3, "netId"    # I

    #@0
    .prologue
    .line 3884
    new-instance v3, Landroid/net/LinkProperties$CompareResult;

    #@2
    invoke-direct {v3}, Landroid/net/LinkProperties$CompareResult;-><init>()V

    #@5
    .line 3885
    .local v3, "interfaceDiff":Landroid/net/LinkProperties$CompareResult;, "Landroid/net/LinkProperties$CompareResult<Ljava/lang/String;>;"
    if-eqz p2, :cond_1

    #@7
    .line 3886
    invoke-virtual {p2, p1}, Landroid/net/LinkProperties;->compareAllInterfaceNames(Landroid/net/LinkProperties;)Landroid/net/LinkProperties$CompareResult;

    #@a
    move-result-object v3

    #@b
    .line 3890
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
    .line 3892
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
    .line 3893
    iget-object v4, p0, Lcom/android/server/ConnectivityService;->mNetd:Landroid/os/INetworkManagementService;

    #@41
    invoke-interface {v4, v1, p3}, Landroid/os/INetworkManagementService;->addInterfaceToNetwork(Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    #@44
    goto :goto_1

    #@45
    .line 3894
    :catch_0
    move-exception v0

    #@46
    .line 3895
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
    .line 3887
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v1    # "iface":Ljava/lang/String;
    .end local v2    # "iface$iterator":Ljava/util/Iterator;
    :cond_1
    if-eqz p1, :cond_0

    #@60
    .line 3888
    invoke-virtual {p1}, Landroid/net/LinkProperties;->getAllInterfaceNames()Ljava/util/List;

    #@63
    move-result-object v4

    #@64
    iput-object v4, v3, Landroid/net/LinkProperties$CompareResult;->added:Ljava/util/List;

    #@66
    goto :goto_0

    #@67
    .line 3898
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
    .line 3900
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
    .line 3901
    iget-object v4, p0, Lcom/android/server/ConnectivityService;->mNetd:Landroid/os/INetworkManagementService;

    #@9d
    invoke-interface {v4, v1, p3}, Landroid/os/INetworkManagementService;->removeInterfaceFromNetwork(Ljava/lang/String;I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    #@a0
    goto :goto_2

    #@a1
    .line 3902
    :catch_1
    move-exception v0

    #@a2
    .line 3903
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
    .line 3883
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v1    # "iface":Ljava/lang/String;
    :cond_3
    return-void
.end method

.method private updateLinkProperties(Lcom/android/server/connectivity/NetworkAgentInfo;Landroid/net/LinkProperties;)V
    .locals 7
    .param p1, "networkAgent"    # Lcom/android/server/connectivity/NetworkAgentInfo;
    .param p2, "oldLp"    # Landroid/net/LinkProperties;

    #@0
    .prologue
    .line 3832
    iget-object v1, p1, Lcom/android/server/connectivity/NetworkAgentInfo;->linkProperties:Landroid/net/LinkProperties;

    #@2
    .line 3833
    .local v1, "newLp":Landroid/net/LinkProperties;
    iget-object v0, p1, Lcom/android/server/connectivity/NetworkAgentInfo;->network:Landroid/net/Network;

    #@4
    iget v3, v0, Landroid/net/Network;->netId:I

    #@6
    .line 3837
    .local v3, "netId":I
    iget-object v0, p1, Lcom/android/server/connectivity/NetworkAgentInfo;->clatd:Lcom/android/server/connectivity/Nat464Xlat;

    #@8
    if-eqz v0, :cond_0

    #@a
    .line 3838
    iget-object v0, p1, Lcom/android/server/connectivity/NetworkAgentInfo;->clatd:Lcom/android/server/connectivity/Nat464Xlat;

    #@c
    invoke-virtual {v0, p2}, Lcom/android/server/connectivity/Nat464Xlat;->fixupLinkProperties(Landroid/net/LinkProperties;)V

    #@f
    .line 3841
    :cond_0
    invoke-direct {p0, v1, p2, v3}, Lcom/android/server/ConnectivityService;->updateInterfaces(Landroid/net/LinkProperties;Landroid/net/LinkProperties;I)V

    #@12
    .line 3842
    invoke-direct {p0, v1, p2}, Lcom/android/server/ConnectivityService;->updateMtu(Landroid/net/LinkProperties;Landroid/net/LinkProperties;)V

    #@15
    .line 3847
    invoke-direct {p0, p1}, Lcom/android/server/ConnectivityService;->updateTcpBufferSizes(Lcom/android/server/connectivity/NetworkAgentInfo;)V

    #@18
    .line 3854
    const/4 v6, 0x0

    #@19
    .line 3855
    .local v6, "useDefaultDns":Z
    invoke-direct {p0, v1, p2, v3}, Lcom/android/server/ConnectivityService;->updateRoutes(Landroid/net/LinkProperties;Landroid/net/LinkProperties;I)Z

    #@1c
    move-result v4

    #@1d
    .line 3856
    .local v4, "flushDns":Z
    const/4 v5, 0x0

    #@1e
    move-object v0, p0

    #@1f
    move-object v2, p2

    #@20
    invoke-direct/range {v0 .. v5}, Lcom/android/server/ConnectivityService;->updateDnses(Landroid/net/LinkProperties;Landroid/net/LinkProperties;IZZ)V

    #@23
    .line 3858
    invoke-direct {p0, v1, p2, p1}, Lcom/android/server/ConnectivityService;->updateClat(Landroid/net/LinkProperties;Landroid/net/LinkProperties;Lcom/android/server/connectivity/NetworkAgentInfo;)V

    #@26
    .line 3859
    invoke-direct {p0, p1}, Lcom/android/server/ConnectivityService;->isDefaultNetwork(Lcom/android/server/connectivity/NetworkAgentInfo;)Z

    #@29
    move-result v0

    #@2a
    if-eqz v0, :cond_2

    #@2c
    .line 3860
    invoke-virtual {v1}, Landroid/net/LinkProperties;->getHttpProxy()Landroid/net/ProxyInfo;

    #@2f
    move-result-object v0

    #@30
    invoke-direct {p0, v0}, Lcom/android/server/ConnectivityService;->handleApplyDefaultProxy(Landroid/net/ProxyInfo;)V

    #@33
    .line 3865
    :goto_0
    invoke-static {v1, p2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    #@36
    move-result v0

    #@37
    if-nez v0, :cond_1

    #@39
    .line 3866
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->notifyIfacesChanged()V

    #@3c
    .line 3867
    const v0, 0x80007

    #@3f
    invoke-virtual {p0, p1, v0}, Lcom/android/server/ConnectivityService;->notifyNetworkCallbacks(Lcom/android/server/connectivity/NetworkAgentInfo;I)V

    #@42
    .line 3831
    :cond_1
    return-void

    #@43
    .line 3862
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
    .line 1634
    invoke-virtual {p1}, Landroid/net/LinkProperties;->getInterfaceName()Ljava/lang/String;

    #@3
    move-result-object v1

    #@4
    .line 1635
    .local v1, "iface":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/net/LinkProperties;->getMtu()I

    #@7
    move-result v2

    #@8
    .line 1636
    .local v2, "mtu":I
    if-eqz p2, :cond_0

    #@a
    invoke-virtual {p1, p2}, Landroid/net/LinkProperties;->isIdenticalMtu(Landroid/net/LinkProperties;)Z

    #@d
    move-result v3

    #@e
    if-eqz v3, :cond_0

    #@10
    .line 1638
    return-void

    #@11
    .line 1641
    :cond_0
    invoke-virtual {p1}, Landroid/net/LinkProperties;->hasGlobalIPv6Address()Z

    #@14
    move-result v3

    #@15
    invoke-static {v2, v3}, Landroid/net/LinkProperties;->isValidMtu(IZ)Z

    #@18
    move-result v3

    #@19
    if-nez v3, :cond_1

    #@1b
    .line 1642
    new-instance v3, Ljava/lang/StringBuilder;

    #@1d
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@20
    const-string/jumbo v4, "Unexpected mtu value: "

    #@23
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@26
    move-result-object v3

    #@27
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@2a
    move-result-object v3

    #@2b
    const-string/jumbo v4, ", "

    #@2e
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@31
    move-result-object v3

    #@32
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@35
    move-result-object v3

    #@36
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@39
    move-result-object v3

    #@3a
    invoke-static {v3}, Lcom/android/server/ConnectivityService;->loge(Ljava/lang/String;)V

    #@3d
    .line 1643
    return-void

    #@3e
    .line 1647
    :cond_1
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@41
    move-result v3

    #@42
    if-eqz v3, :cond_2

    #@44
    .line 1648
    const-string/jumbo v3, "Setting MTU size with null iface."

    #@47
    invoke-static {v3}, Lcom/android/server/ConnectivityService;->loge(Ljava/lang/String;)V

    #@4a
    .line 1649
    return-void

    #@4b
    .line 1653
    :cond_2
    :try_start_0
    new-instance v3, Ljava/lang/StringBuilder;

    #@4d
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@50
    const-string/jumbo v4, "Setting MTU size: "

    #@53
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@56
    move-result-object v3

    #@57
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5a
    move-result-object v3

    #@5b
    const-string/jumbo v4, ", "

    #@5e
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@61
    move-result-object v3

    #@62
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@65
    move-result-object v3

    #@66
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@69
    move-result-object v3

    #@6a
    invoke-static {v3}, Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V

    #@6d
    .line 1654
    iget-object v3, p0, Lcom/android/server/ConnectivityService;->mNetd:Landroid/os/INetworkManagementService;

    #@6f
    invoke-interface {v3, v1, v2}, Landroid/os/INetworkManagementService;->setMtu(Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    #@72
    .line 1633
    :goto_0
    return-void

    #@73
    .line 1655
    :catch_0
    move-exception v0

    #@74
    .line 1656
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v3, "ConnectivityService"

    #@77
    new-instance v4, Ljava/lang/StringBuilder;

    #@79
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@7c
    const-string/jumbo v5, "exception in setMtu()"

    #@7f
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@82
    move-result-object v4

    #@83
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@86
    move-result-object v4

    #@87
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@8a
    move-result-object v4

    #@8b
    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@8e
    goto :goto_0
.end method

.method private updateNetworkInfo(Lcom/android/server/connectivity/NetworkAgentInfo;Landroid/net/NetworkInfo;)V
    .locals 11
    .param p1, "networkAgent"    # Lcom/android/server/connectivity/NetworkAgentInfo;
    .param p2, "newInfo"    # Landroid/net/NetworkInfo;

    #@0
    .prologue
    const/4 v7, 0x0

    #@1
    const/4 v6, 0x1

    #@2
    const/4 v5, 0x0

    #@3
    .line 4477
    invoke-virtual {p2}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    #@6
    move-result-object v3

    #@7
    .line 4478
    .local v3, "state":Landroid/net/NetworkInfo$State;
    const/4 v1, 0x0

    #@8
    .line 4479
    .local v1, "oldInfo":Landroid/net/NetworkInfo;
    invoke-virtual {p1}, Lcom/android/server/connectivity/NetworkAgentInfo;->getCurrentScore()I

    #@b
    move-result v2

    #@c
    .line 4480
    .local v2, "oldScore":I
    monitor-enter p1

    #@d
    .line 4481
    :try_start_0
    iget-object v1, p1, Lcom/android/server/connectivity/NetworkAgentInfo;->networkInfo:Landroid/net/NetworkInfo;

    #@f
    .line 4482
    .local v1, "oldInfo":Landroid/net/NetworkInfo;
    iput-object p2, p1, Lcom/android/server/connectivity/NetworkAgentInfo;->networkInfo:Landroid/net/NetworkInfo;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@11
    monitor-exit p1

    #@12
    .line 4484
    invoke-direct {p0, p1}, Lcom/android/server/ConnectivityService;->notifyLockdownVpn(Lcom/android/server/connectivity/NetworkAgentInfo;)V

    #@15
    .line 4486
    if-eqz v1, :cond_0

    #@17
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    #@1a
    move-result-object v4

    #@1b
    if-ne v4, v3, :cond_0

    #@1d
    .line 4488
    return-void

    #@1e
    .line 4480
    .end local v1    # "oldInfo":Landroid/net/NetworkInfo;
    :catchall_0
    move-exception v4

    #@1f
    monitor-exit p1

    #@20
    throw v4

    #@21
    .line 4491
    .restart local v1    # "oldInfo":Landroid/net/NetworkInfo;
    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    #@23
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@26
    invoke-virtual {p1}, Lcom/android/server/connectivity/NetworkAgentInfo;->name()Ljava/lang/String;

    #@29
    move-result-object v8

    #@2a
    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2d
    move-result-object v4

    #@2e
    const-string/jumbo v8, " EVENT_NETWORK_INFO_CHANGED, going from "

    #@31
    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@34
    move-result-object v8

    #@35
    .line 4492
    if-nez v1, :cond_4

    #@37
    const-string/jumbo v4, "null"

    #@3a
    .line 4491
    :goto_0
    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@3d
    move-result-object v4

    #@3e
    .line 4493
    const-string/jumbo v8, " to "

    #@41
    .line 4491
    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@44
    move-result-object v4

    #@45
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@48
    move-result-object v4

    #@49
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@4c
    move-result-object v4

    #@4d
    invoke-static {v4}, Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V

    #@50
    .line 4496
    sget-object v4, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;

    #@52
    if-ne v3, v4, :cond_1

    #@54
    iget-boolean v4, p1, Lcom/android/server/connectivity/NetworkAgentInfo;->created:Z

    #@56
    if-eqz v4, :cond_5

    #@58
    .line 4540
    :cond_1
    sget-object v4, Landroid/net/NetworkInfo$State;->DISCONNECTED:Landroid/net/NetworkInfo$State;

    #@5a
    if-ne v3, v4, :cond_d

    #@5c
    .line 4541
    iget-object v4, p1, Lcom/android/server/connectivity/NetworkAgentInfo;->asyncChannel:Lcom/android/internal/util/AsyncChannel;

    #@5e
    invoke-virtual {v4}, Lcom/android/internal/util/AsyncChannel;->disconnect()V

    #@61
    .line 4542
    invoke-virtual {p1}, Lcom/android/server/connectivity/NetworkAgentInfo;->isVPN()Z

    #@64
    move-result v4

    #@65
    if-eqz v4, :cond_3

    #@67
    .line 4543
    iget-object v5, p0, Lcom/android/server/ConnectivityService;->mProxyLock:Ljava/lang/Object;

    #@69
    monitor-enter v5

    #@6a
    .line 4544
    :try_start_1
    iget-boolean v4, p0, Lcom/android/server/ConnectivityService;->mDefaultProxyDisabled:Z

    #@6c
    if-eqz v4, :cond_2

    #@6e
    .line 4545
    const/4 v4, 0x0

    #@6f
    iput-boolean v4, p0, Lcom/android/server/ConnectivityService;->mDefaultProxyDisabled:Z

    #@71
    .line 4546
    iget-object v4, p0, Lcom/android/server/ConnectivityService;->mGlobalProxy:Landroid/net/ProxyInfo;

    #@73
    if-nez v4, :cond_2

    #@75
    iget-object v4, p0, Lcom/android/server/ConnectivityService;->mDefaultProxy:Landroid/net/ProxyInfo;

    #@77
    if-eqz v4, :cond_2

    #@79
    .line 4547
    iget-object v4, p0, Lcom/android/server/ConnectivityService;->mDefaultProxy:Landroid/net/ProxyInfo;

    #@7b
    invoke-direct {p0, v4}, Lcom/android/server/ConnectivityService;->sendProxyBroadcast(Landroid/net/ProxyInfo;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    #@7e
    :cond_2
    monitor-exit v5

    #@7f
    .line 4476
    :cond_3
    :goto_1
    return-void

    #@80
    .line 4492
    :cond_4
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    #@83
    move-result-object v4

    #@84
    goto :goto_0

    #@85
    .line 4499
    :cond_5
    :try_start_2
    invoke-virtual {p1}, Lcom/android/server/connectivity/NetworkAgentInfo;->isVPN()Z

    #@88
    move-result v4

    #@89
    if-eqz v4, :cond_b

    #@8b
    .line 4500
    iget-object v9, p0, Lcom/android/server/ConnectivityService;->mNetd:Landroid/os/INetworkManagementService;

    #@8d
    iget-object v4, p1, Lcom/android/server/connectivity/NetworkAgentInfo;->network:Landroid/net/Network;

    #@8f
    iget v10, v4, Landroid/net/Network;->netId:I

    #@91
    .line 4501
    iget-object v4, p1, Lcom/android/server/connectivity/NetworkAgentInfo;->linkProperties:Landroid/net/LinkProperties;

    #@93
    invoke-virtual {v4}, Landroid/net/LinkProperties;->getDnsServers()Ljava/util/List;

    #@96
    move-result-object v4

    #@97
    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    #@9a
    move-result v4

    #@9b
    if-eqz v4, :cond_8

    #@9d
    move v8, v7

    #@9e
    .line 4502
    :goto_2
    iget-object v4, p1, Lcom/android/server/connectivity/NetworkAgentInfo;->networkMisc:Landroid/net/NetworkMisc;

    #@a0
    if-eqz v4, :cond_9

    #@a2
    .line 4503
    iget-object v4, p1, Lcom/android/server/connectivity/NetworkAgentInfo;->networkMisc:Landroid/net/NetworkMisc;

    #@a4
    iget-boolean v4, v4, Landroid/net/NetworkMisc;->allowBypass:Z

    #@a6
    if-eqz v4, :cond_a

    #@a8
    move v4, v7

    #@a9
    .line 4500
    :goto_3
    invoke-interface {v9, v10, v8, v4}, Landroid/os/INetworkManagementService;->createVirtualNetwork(IZZ)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    #@ac
    .line 4515
    :goto_4
    iput-boolean v6, p1, Lcom/android/server/connectivity/NetworkAgentInfo;->created:Z

    #@ae
    .line 4516
    invoke-direct {p0, p1, v5}, Lcom/android/server/ConnectivityService;->updateLinkProperties(Lcom/android/server/connectivity/NetworkAgentInfo;Landroid/net/LinkProperties;)V

    #@b1
    .line 4517
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->notifyIfacesChanged()V

    #@b4
    .line 4519
    iget-object v4, p1, Lcom/android/server/connectivity/NetworkAgentInfo;->networkMonitor:Lcom/android/server/connectivity/NetworkMonitor;

    #@b6
    const v5, 0x82001

    #@b9
    invoke-virtual {v4, v5}, Lcom/android/server/connectivity/NetworkMonitor;->sendMessage(I)V

    #@bc
    .line 4520
    invoke-direct {p0, p1}, Lcom/android/server/ConnectivityService;->scheduleUnvalidatedPrompt(Lcom/android/server/connectivity/NetworkAgentInfo;)V

    #@bf
    .line 4522
    invoke-virtual {p1}, Lcom/android/server/connectivity/NetworkAgentInfo;->isVPN()Z

    #@c2
    move-result v4

    #@c3
    if-eqz v4, :cond_7

    #@c5
    .line 4524
    iget-object v5, p0, Lcom/android/server/ConnectivityService;->mProxyLock:Ljava/lang/Object;

    #@c7
    monitor-enter v5

    #@c8
    .line 4525
    :try_start_3
    iget-boolean v4, p0, Lcom/android/server/ConnectivityService;->mDefaultProxyDisabled:Z

    #@ca
    if-nez v4, :cond_6

    #@cc
    .line 4526
    const/4 v4, 0x1

    #@cd
    iput-boolean v4, p0, Lcom/android/server/ConnectivityService;->mDefaultProxyDisabled:Z

    #@cf
    .line 4527
    iget-object v4, p0, Lcom/android/server/ConnectivityService;->mGlobalProxy:Landroid/net/ProxyInfo;

    #@d1
    if-nez v4, :cond_6

    #@d3
    iget-object v4, p0, Lcom/android/server/ConnectivityService;->mDefaultProxy:Landroid/net/ProxyInfo;

    #@d5
    if-eqz v4, :cond_6

    #@d7
    .line 4528
    const/4 v4, 0x0

    #@d8
    invoke-direct {p0, v4}, Lcom/android/server/ConnectivityService;->sendProxyBroadcast(Landroid/net/ProxyInfo;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    #@db
    :cond_6
    monitor-exit v5

    #@dc
    .line 4536
    :cond_7
    sget-object v4, Lcom/android/server/ConnectivityService$ReapUnvalidatedNetworks;->REAP:Lcom/android/server/ConnectivityService$ReapUnvalidatedNetworks;

    #@de
    invoke-direct {p0, p1, v4}, Lcom/android/server/ConnectivityService;->rematchNetworkAndRequests(Lcom/android/server/connectivity/NetworkAgentInfo;Lcom/android/server/ConnectivityService$ReapUnvalidatedNetworks;)V

    #@e1
    .line 4539
    const v4, 0x80001

    #@e4
    invoke-virtual {p0, p1, v4}, Lcom/android/server/ConnectivityService;->notifyNetworkCallbacks(Lcom/android/server/connectivity/NetworkAgentInfo;I)V

    #@e7
    goto :goto_1

    #@e8
    :cond_8
    move v8, v6

    #@e9
    .line 4501
    goto :goto_2

    #@ea
    :cond_9
    move v4, v6

    #@eb
    .line 4502
    goto :goto_3

    #@ec
    :cond_a
    move v4, v6

    #@ed
    .line 4503
    goto :goto_3

    #@ee
    .line 4505
    :cond_b
    :try_start_4
    iget-object v7, p0, Lcom/android/server/ConnectivityService;->mNetd:Landroid/os/INetworkManagementService;

    #@f0
    iget-object v4, p1, Lcom/android/server/connectivity/NetworkAgentInfo;->network:Landroid/net/Network;

    #@f2
    iget v8, v4, Landroid/net/Network;->netId:I

    #@f4
    .line 4506
    iget-object v4, p1, Lcom/android/server/connectivity/NetworkAgentInfo;->networkCapabilities:Landroid/net/NetworkCapabilities;

    #@f6
    .line 4507
    const/16 v9, 0xd

    #@f8
    .line 4506
    invoke-virtual {v4, v9}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    #@fb
    move-result v4

    #@fc
    if-eqz v4, :cond_c

    #@fe
    move-object v4, v5

    #@ff
    .line 4505
    :goto_5
    invoke-interface {v7, v8, v4}, Landroid/os/INetworkManagementService;->createPhysicalNetwork(ILjava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    #@102
    goto :goto_4

    #@103
    .line 4510
    :catch_0
    move-exception v0

    #@104
    .line 4511
    .local v0, "e":Ljava/lang/Exception;
    new-instance v4, Ljava/lang/StringBuilder;

    #@106
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@109
    const-string/jumbo v5, "Error creating network "

    #@10c
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@10f
    move-result-object v4

    #@110
    iget-object v5, p1, Lcom/android/server/connectivity/NetworkAgentInfo;->network:Landroid/net/Network;

    #@112
    iget v5, v5, Landroid/net/Network;->netId:I

    #@114
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@117
    move-result-object v4

    #@118
    const-string/jumbo v5, ": "

    #@11b
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@11e
    move-result-object v4

    #@11f
    .line 4512
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    #@122
    move-result-object v5

    #@123
    .line 4511
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@126
    move-result-object v4

    #@127
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@12a
    move-result-object v4

    #@12b
    invoke-static {v4}, Lcom/android/server/ConnectivityService;->loge(Ljava/lang/String;)V

    #@12e
    .line 4513
    return-void

    #@12f
    .line 4508
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_c
    :try_start_5
    const-string/jumbo v4, "SYSTEM"
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    #@132
    goto :goto_5

    #@133
    .line 4524
    :catchall_1
    move-exception v4

    #@134
    monitor-exit v5

    #@135
    throw v4

    #@136
    .line 4543
    :catchall_2
    move-exception v4

    #@137
    monitor-exit v5

    #@138
    throw v4

    #@139
    .line 4552
    :cond_d
    if-eqz v1, :cond_f

    #@13b
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    #@13e
    move-result-object v4

    #@13f
    sget-object v5, Landroid/net/NetworkInfo$State;->SUSPENDED:Landroid/net/NetworkInfo$State;

    #@141
    if-ne v4, v5, :cond_f

    #@143
    .line 4555
    :goto_6
    invoke-virtual {p1}, Lcom/android/server/connectivity/NetworkAgentInfo;->getCurrentScore()I

    #@146
    move-result v4

    #@147
    if-eq v4, v2, :cond_e

    #@149
    .line 4556
    invoke-direct {p0, p1, v2}, Lcom/android/server/ConnectivityService;->rematchAllNetworksAndRequests(Lcom/android/server/connectivity/NetworkAgentInfo;I)V

    #@14c
    .line 4558
    :cond_e
    sget-object v4, Landroid/net/NetworkInfo$State;->SUSPENDED:Landroid/net/NetworkInfo$State;

    #@14e
    if-ne v3, v4, :cond_10

    #@150
    .line 4559
    const v4, 0x8000b

    #@153
    .line 4558
    :goto_7
    invoke-virtual {p0, p1, v4}, Lcom/android/server/ConnectivityService;->notifyNetworkCallbacks(Lcom/android/server/connectivity/NetworkAgentInfo;I)V

    #@156
    .line 4561
    iget-object v4, p0, Lcom/android/server/ConnectivityService;->mLegacyTypeTracker:Lcom/android/server/ConnectivityService$LegacyTypeTracker;

    #@158
    invoke-virtual {v4, p1}, Lcom/android/server/ConnectivityService$LegacyTypeTracker;->update(Lcom/android/server/connectivity/NetworkAgentInfo;)V

    #@15b
    goto/16 :goto_1

    #@15d
    .line 4553
    :cond_f
    sget-object v4, Landroid/net/NetworkInfo$State;->SUSPENDED:Landroid/net/NetworkInfo$State;

    #@15f
    if-ne v3, v4, :cond_3

    #@161
    goto :goto_6

    #@162
    .line 4560
    :cond_10
    const v4, 0x8000c

    #@165
    goto :goto_7
.end method

.method private updateNetworkScore(Lcom/android/server/connectivity/NetworkAgentInfo;I)V
    .locals 3
    .param p1, "nai"    # Lcom/android/server/connectivity/NetworkAgentInfo;
    .param p2, "score"    # I

    #@0
    .prologue
    .line 4566
    new-instance v1, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    const-string/jumbo v2, "updateNetworkScore for "

    #@8
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b
    move-result-object v1

    #@c
    invoke-virtual {p1}, Lcom/android/server/connectivity/NetworkAgentInfo;->name()Ljava/lang/String;

    #@f
    move-result-object v2

    #@10
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@13
    move-result-object v1

    #@14
    const-string/jumbo v2, " to "

    #@17
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1a
    move-result-object v1

    #@1b
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@1e
    move-result-object v1

    #@1f
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@22
    move-result-object v1

    #@23
    invoke-static {v1}, Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V

    #@26
    .line 4567
    if-gez p2, :cond_0

    #@28
    .line 4568
    new-instance v1, Ljava/lang/StringBuilder;

    #@2a
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@2d
    const-string/jumbo v2, "updateNetworkScore for "

    #@30
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@33
    move-result-object v1

    #@34
    invoke-virtual {p1}, Lcom/android/server/connectivity/NetworkAgentInfo;->name()Ljava/lang/String;

    #@37
    move-result-object v2

    #@38
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3b
    move-result-object v1

    #@3c
    const-string/jumbo v2, " got a negative score ("

    #@3f
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@42
    move-result-object v1

    #@43
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@46
    move-result-object v1

    #@47
    .line 4569
    const-string/jumbo v2, ").  Bumping score to min of 0"

    #@4a
    .line 4568
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4d
    move-result-object v1

    #@4e
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@51
    move-result-object v1

    #@52
    invoke-static {v1}, Lcom/android/server/ConnectivityService;->loge(Ljava/lang/String;)V

    #@55
    .line 4570
    const/4 p2, 0x0

    #@56
    .line 4573
    :cond_0
    invoke-virtual {p1}, Lcom/android/server/connectivity/NetworkAgentInfo;->getCurrentScore()I

    #@59
    move-result v0

    #@5a
    .line 4574
    .local v0, "oldScore":I
    invoke-virtual {p1, p2}, Lcom/android/server/connectivity/NetworkAgentInfo;->setCurrentScore(I)V

    #@5d
    .line 4576
    invoke-direct {p0, p1, v0}, Lcom/android/server/ConnectivityService;->rematchAllNetworksAndRequests(Lcom/android/server/connectivity/NetworkAgentInfo;I)V

    #@60
    .line 4578
    invoke-direct {p0, p1}, Lcom/android/server/ConnectivityService;->sendUpdatedScoreToFactories(Lcom/android/server/connectivity/NetworkAgentInfo;)V

    #@63
    .line 4565
    return-void
.end method

.method private updateProxy(Landroid/net/LinkProperties;Landroid/net/LinkProperties;Lcom/android/server/connectivity/NetworkAgentInfo;)V
    .locals 3
    .param p1, "newLp"    # Landroid/net/LinkProperties;
    .param p2, "oldLp"    # Landroid/net/LinkProperties;
    .param p3, "nai"    # Lcom/android/server/connectivity/NetworkAgentInfo;

    #@0
    .prologue
    .line 2860
    if-nez p1, :cond_1

    #@2
    const/4 v0, 0x0

    #@3
    .line 2861
    :goto_0
    if-nez p2, :cond_2

    #@5
    const/4 v1, 0x0

    #@6
    .line 2863
    :goto_1
    invoke-direct {p0, v0, v1}, Lcom/android/server/ConnectivityService;->proxyInfoEqual(Landroid/net/ProxyInfo;Landroid/net/ProxyInfo;)Z

    #@9
    move-result v2

    #@a
    if-nez v2, :cond_0

    #@c
    .line 2864
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->getDefaultProxy()Landroid/net/ProxyInfo;

    #@f
    move-result-object v2

    #@10
    invoke-direct {p0, v2}, Lcom/android/server/ConnectivityService;->sendProxyBroadcast(Landroid/net/ProxyInfo;)V

    #@13
    .line 2859
    :cond_0
    return-void

    #@14
    .line 2860
    :cond_1
    invoke-virtual {p1}, Landroid/net/LinkProperties;->getHttpProxy()Landroid/net/ProxyInfo;

    #@17
    move-result-object v0

    #@18
    .local v0, "newProxyInfo":Landroid/net/ProxyInfo;
    goto :goto_0

    #@19
    .line 2861
    .end local v0    # "newProxyInfo":Landroid/net/ProxyInfo;
    :cond_2
    invoke-virtual {p2}, Landroid/net/LinkProperties;->getHttpProxy()Landroid/net/ProxyInfo;

    #@1c
    move-result-object v1

    #@1d
    .local v1, "oldProxyInfo":Landroid/net/ProxyInfo;
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
    .line 3913
    new-instance v3, Landroid/net/LinkProperties$CompareResult;

    #@3
    invoke-direct {v3}, Landroid/net/LinkProperties$CompareResult;-><init>()V

    #@6
    .line 3914
    .local v3, "routeDiff":Landroid/net/LinkProperties$CompareResult;, "Landroid/net/LinkProperties$CompareResult<Landroid/net/RouteInfo;>;"
    if-eqz p2, :cond_2

    #@8
    .line 3915
    invoke-virtual {p2, p1}, Landroid/net/LinkProperties;->compareAllRoutes(Landroid/net/LinkProperties;)Landroid/net/LinkProperties$CompareResult;

    #@b
    move-result-object v3

    #@c
    .line 3923
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
    .line 3924
    .local v1, "route":Landroid/net/RouteInfo;
    invoke-virtual {v1}, Landroid/net/RouteInfo;->hasGateway()Z

    #@21
    move-result v5

    #@22
    if-nez v5, :cond_1

    #@24
    .line 3925
    new-instance v5, Ljava/lang/StringBuilder;

    #@26
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@29
    const-string/jumbo v6, "Adding Route ["

    #@2c
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2f
    move-result-object v5

    #@30
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@33
    move-result-object v5

    #@34
    const-string/jumbo v6, "] to network "

    #@37
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3a
    move-result-object v5

    #@3b
    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@3e
    move-result-object v5

    #@3f
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@42
    move-result-object v5

    #@43
    invoke-static {v5}, Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V

    #@46
    .line 3927
    :try_start_0
    iget-object v5, p0, Lcom/android/server/ConnectivityService;->mNetd:Landroid/os/INetworkManagementService;

    #@48
    invoke-interface {v5, p3, v1}, Landroid/os/INetworkManagementService;->addRoute(ILandroid/net/RouteInfo;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    #@4b
    goto :goto_1

    #@4c
    .line 3928
    :catch_0
    move-exception v0

    #@4d
    .line 3929
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Landroid/net/RouteInfo;->getDestination()Landroid/net/IpPrefix;

    #@50
    move-result-object v5

    #@51
    invoke-virtual {v5}, Landroid/net/IpPrefix;->getAddress()Ljava/net/InetAddress;

    #@54
    move-result-object v5

    #@55
    instance-of v5, v5, Ljava/net/Inet4Address;

    #@57
    if-eqz v5, :cond_1

    #@59
    .line 3930
    new-instance v5, Ljava/lang/StringBuilder;

    #@5b
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@5e
    const-string/jumbo v6, "Exception in addRoute for non-gateway: "

    #@61
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@64
    move-result-object v5

    #@65
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@68
    move-result-object v5

    #@69
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@6c
    move-result-object v5

    #@6d
    invoke-static {v5}, Lcom/android/server/ConnectivityService;->loge(Ljava/lang/String;)V

    #@70
    goto :goto_1

    #@71
    .line 3916
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v1    # "route":Landroid/net/RouteInfo;
    .end local v2    # "route$iterator":Ljava/util/Iterator;
    :cond_2
    if-eqz p1, :cond_0

    #@73
    .line 3917
    invoke-virtual {p1}, Landroid/net/LinkProperties;->getAllRoutes()Ljava/util/List;

    #@76
    move-result-object v5

    #@77
    iput-object v5, v3, Landroid/net/LinkProperties$CompareResult;->added:Ljava/util/List;

    #@79
    goto :goto_0

    #@7a
    .line 3934
    .restart local v2    # "route$iterator":Ljava/util/Iterator;
    :cond_3
    iget-object v5, v3, Landroid/net/LinkProperties$CompareResult;->added:Ljava/util/List;

    #@7c
    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@7f
    move-result-object v2

    #@80
    :cond_4
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    #@83
    move-result v5

    #@84
    if-eqz v5, :cond_5

    #@86
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@89
    move-result-object v1

    #@8a
    check-cast v1, Landroid/net/RouteInfo;

    #@8c
    .line 3935
    .restart local v1    # "route":Landroid/net/RouteInfo;
    invoke-virtual {v1}, Landroid/net/RouteInfo;->hasGateway()Z

    #@8f
    move-result v5

    #@90
    if-eqz v5, :cond_4

    #@92
    .line 3936
    new-instance v5, Ljava/lang/StringBuilder;

    #@94
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@97
    const-string/jumbo v6, "Adding Route ["

    #@9a
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@9d
    move-result-object v5

    #@9e
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@a1
    move-result-object v5

    #@a2
    const-string/jumbo v6, "] to network "

    #@a5
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a8
    move-result-object v5

    #@a9
    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@ac
    move-result-object v5

    #@ad
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@b0
    move-result-object v5

    #@b1
    invoke-static {v5}, Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V

    #@b4
    .line 3938
    :try_start_1
    iget-object v5, p0, Lcom/android/server/ConnectivityService;->mNetd:Landroid/os/INetworkManagementService;

    #@b6
    invoke-interface {v5, p3, v1}, Landroid/os/INetworkManagementService;->addRoute(ILandroid/net/RouteInfo;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    #@b9
    goto :goto_2

    #@ba
    .line 3939
    :catch_1
    move-exception v0

    #@bb
    .line 3940
    .restart local v0    # "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Landroid/net/RouteInfo;->getGateway()Ljava/net/InetAddress;

    #@be
    move-result-object v5

    #@bf
    instance-of v5, v5, Ljava/net/Inet4Address;

    #@c1
    if-eqz v5, :cond_4

    #@c3
    .line 3941
    new-instance v5, Ljava/lang/StringBuilder;

    #@c5
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@c8
    const-string/jumbo v6, "Exception in addRoute for gateway: "

    #@cb
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@ce
    move-result-object v5

    #@cf
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@d2
    move-result-object v5

    #@d3
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@d6
    move-result-object v5

    #@d7
    invoke-static {v5}, Lcom/android/server/ConnectivityService;->loge(Ljava/lang/String;)V

    #@da
    goto :goto_2

    #@db
    .line 3946
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v1    # "route":Landroid/net/RouteInfo;
    :cond_5
    iget-object v5, v3, Landroid/net/LinkProperties$CompareResult;->removed:Ljava/util/List;

    #@dd
    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@e0
    move-result-object v2

    #@e1
    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    #@e4
    move-result v5

    #@e5
    if-eqz v5, :cond_6

    #@e7
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@ea
    move-result-object v1

    #@eb
    check-cast v1, Landroid/net/RouteInfo;

    #@ed
    .line 3947
    .restart local v1    # "route":Landroid/net/RouteInfo;
    new-instance v5, Ljava/lang/StringBuilder;

    #@ef
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@f2
    const-string/jumbo v6, "Removing Route ["

    #@f5
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@f8
    move-result-object v5

    #@f9
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@fc
    move-result-object v5

    #@fd
    const-string/jumbo v6, "] from network "

    #@100
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@103
    move-result-object v5

    #@104
    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@107
    move-result-object v5

    #@108
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@10b
    move-result-object v5

    #@10c
    invoke-static {v5}, Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V

    #@10f
    .line 3949
    :try_start_2
    iget-object v5, p0, Lcom/android/server/ConnectivityService;->mNetd:Landroid/os/INetworkManagementService;

    #@111
    invoke-interface {v5, p3, v1}, Landroid/os/INetworkManagementService;->removeRoute(ILandroid/net/RouteInfo;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    #@114
    goto :goto_3

    #@115
    .line 3950
    :catch_2
    move-exception v0

    #@116
    .line 3951
    .restart local v0    # "e":Ljava/lang/Exception;
    new-instance v5, Ljava/lang/StringBuilder;

    #@118
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@11b
    const-string/jumbo v6, "Exception in removeRoute: "

    #@11e
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@121
    move-result-object v5

    #@122
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@125
    move-result-object v5

    #@126
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@129
    move-result-object v5

    #@12a
    invoke-static {v5}, Lcom/android/server/ConnectivityService;->loge(Ljava/lang/String;)V

    #@12d
    goto :goto_3

    #@12e
    .line 3954
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v1    # "route":Landroid/net/RouteInfo;
    :cond_6
    iget-object v5, v3, Landroid/net/LinkProperties$CompareResult;->added:Ljava/util/List;

    #@130
    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    #@133
    move-result v5

    #@134
    if-eqz v5, :cond_7

    #@136
    iget-object v5, v3, Landroid/net/LinkProperties$CompareResult;->removed:Ljava/util/List;

    #@138
    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    #@13b
    move-result v5

    #@13c
    if-eqz v5, :cond_7

    #@13e
    const/4 v4, 0x0

    #@13f
    :cond_7
    return v4
.end method

.method private updateTcpBufferSizes(Lcom/android/server/connectivity/NetworkAgentInfo;)V
    .locals 9
    .param p1, "nai"    # Lcom/android/server/connectivity/NetworkAgentInfo;

    #@0
    .prologue
    .line 1670
    invoke-direct {p0, p1}, Lcom/android/server/ConnectivityService;->isDefaultNetwork(Lcom/android/server/connectivity/NetworkAgentInfo;)Z

    #@3
    move-result v6

    #@4
    if-nez v6, :cond_0

    #@6
    .line 1671
    return-void

    #@7
    .line 1674
    :cond_0
    iget-object v6, p1, Lcom/android/server/connectivity/NetworkAgentInfo;->linkProperties:Landroid/net/LinkProperties;

    #@9
    invoke-virtual {v6}, Landroid/net/LinkProperties;->getTcpBufferSizes()Ljava/lang/String;

    #@c
    move-result-object v4

    #@d
    .line 1675
    .local v4, "tcpBufferSizes":Ljava/lang/String;
    const/4 v5, 0x0

    #@e
    .line 1676
    .local v5, "values":[Ljava/lang/String;
    if-eqz v4, :cond_1

    #@10
    .line 1677
    const-string/jumbo v6, ","

    #@13
    invoke-virtual {v4, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    #@16
    move-result-object v5

    #@17
    .line 1680
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
    .line 1681
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
    .line 1682
    const-string/jumbo v4, "4096,87380,110208,4096,16384,110208"

    #@3e
    .line 1683
    const-string/jumbo v6, ","

    #@41
    invoke-virtual {v4, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    #@44
    move-result-object v5

    #@45
    .line 1686
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
    .line 1689
    :cond_4
    :try_start_0
    const-string/jumbo v6, "ConnectivityService"

    #@51
    new-instance v7, Ljava/lang/StringBuilder;

    #@53
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    #@56
    const-string/jumbo v8, "Setting tx/rx TCP buffers to "

    #@59
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5c
    move-result-object v7

    #@5d
    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@60
    move-result-object v7

    #@61
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@64
    move-result-object v7

    #@65
    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@68
    .line 1691
    const-string/jumbo v1, "/sys/kernel/ipv4/tcp_"

    #@6b
    .line 1692
    .local v1, "prefix":Ljava/lang/String;
    const-string/jumbo v6, "/sys/kernel/ipv4/tcp_rmem_min"

    #@6e
    const/4 v7, 0x0

    #@6f
    aget-object v7, v5, v7

    #@71
    invoke-static {v6, v7}, Landroid/os/FileUtils;->stringToFile(Ljava/lang/String;Ljava/lang/String;)V

    #@74
    .line 1693
    const-string/jumbo v6, "/sys/kernel/ipv4/tcp_rmem_def"

    #@77
    const/4 v7, 0x1

    #@78
    aget-object v7, v5, v7

    #@7a
    invoke-static {v6, v7}, Landroid/os/FileUtils;->stringToFile(Ljava/lang/String;Ljava/lang/String;)V

    #@7d
    .line 1694
    const-string/jumbo v6, "/sys/kernel/ipv4/tcp_rmem_max"

    #@80
    const/4 v7, 0x2

    #@81
    aget-object v7, v5, v7

    #@83
    invoke-static {v6, v7}, Landroid/os/FileUtils;->stringToFile(Ljava/lang/String;Ljava/lang/String;)V

    #@86
    .line 1695
    const-string/jumbo v6, "/sys/kernel/ipv4/tcp_wmem_min"

    #@89
    const/4 v7, 0x3

    #@8a
    aget-object v7, v5, v7

    #@8c
    invoke-static {v6, v7}, Landroid/os/FileUtils;->stringToFile(Ljava/lang/String;Ljava/lang/String;)V

    #@8f
    .line 1696
    const-string/jumbo v6, "/sys/kernel/ipv4/tcp_wmem_def"

    #@92
    const/4 v7, 0x4

    #@93
    aget-object v7, v5, v7

    #@95
    invoke-static {v6, v7}, Landroid/os/FileUtils;->stringToFile(Ljava/lang/String;Ljava/lang/String;)V

    #@98
    .line 1697
    const-string/jumbo v6, "/sys/kernel/ipv4/tcp_wmem_max"

    #@9b
    const/4 v7, 0x5

    #@9c
    aget-object v7, v5, v7

    #@9e
    invoke-static {v6, v7}, Landroid/os/FileUtils;->stringToFile(Ljava/lang/String;Ljava/lang/String;)V

    #@a1
    .line 1698
    iput-object v4, p0, Lcom/android/server/ConnectivityService;->mCurrentTcpBufferSizes:Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    #@a3
    .line 1703
    .end local v1    # "prefix":Ljava/lang/String;
    :goto_0
    iget-object v6, p0, Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;

    #@a5
    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    #@a8
    move-result-object v6

    #@a9
    .line 1704
    const-string/jumbo v7, "tcp_default_init_rwnd"

    #@ac
    invoke-virtual {p0}, Lcom/android/server/ConnectivityService;->getDefaultTcpRwnd()I

    #@af
    move-result v8

    #@b0
    .line 1703
    invoke-static {v6, v7, v8}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    #@b3
    move-result v6

    #@b4
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@b7
    move-result-object v2

    #@b8
    .line 1705
    .local v2, "rwndValue":Ljava/lang/Integer;
    const-string/jumbo v3, "sys.sysctl.tcp_def_init_rwnd"

    #@bb
    .line 1706
    .local v3, "sysctlKey":Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    #@be
    move-result v6

    #@bf
    if-eqz v6, :cond_5

    #@c1
    .line 1707
    const-string/jumbo v6, "sys.sysctl.tcp_def_init_rwnd"

    #@c4
    invoke-virtual {v2}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    #@c7
    move-result-object v7

    #@c8
    invoke-static {v6, v7}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    #@cb
    .line 1669
    :cond_5
    return-void

    #@cc
    .line 1699
    .end local v2    # "rwndValue":Ljava/lang/Integer;
    .end local v3    # "sysctlKey":Ljava/lang/String;
    :catch_0
    move-exception v0

    #@cd
    .line 1700
    .local v0, "e":Ljava/io/IOException;
    new-instance v6, Ljava/lang/StringBuilder;

    #@cf
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@d2
    const-string/jumbo v7, "Can\'t set TCP buffer sizes:"

    #@d5
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@d8
    move-result-object v6

    #@d9
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@dc
    move-result-object v6

    #@dd
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@e0
    move-result-object v6

    #@e1
    invoke-static {v6}, Lcom/android/server/ConnectivityService;->loge(Ljava/lang/String;)V

    #@e4
    goto :goto_0
.end method


# virtual methods
.method public addVpnAddress(Ljava/lang/String;I)Z
    .locals 3
    .param p1, "address"    # Ljava/lang/String;
    .param p2, "prefixLength"    # I

    #@0
    .prologue
    .line 4683
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->throwIfLockdownEnabled()V

    #@3
    .line 4684
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    #@6
    move-result v1

    #@7
    invoke-static {v1}, Landroid/os/UserHandle;->getUserId(I)I

    #@a
    move-result v0

    #@b
    .line 4685
    .local v0, "user":I
    iget-object v2, p0, Lcom/android/server/ConnectivityService;->mVpns:Landroid/util/SparseArray;

    #@d
    monitor-enter v2

    #@e
    .line 4686
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
    .line 4685
    :catchall_0
    move-exception v1

    #@1d
    monitor-exit v2

    #@1e
    throw v1
.end method

.method public checkMobileProvisioning(I)I
    .locals 1
    .param p1, "suggestedTimeOutMs"    # I

    #@0
    .prologue
    .line 3195
    const/4 v0, -0x1

    #@1
    return v0
.end method

.method public createNetworkMonitor(Landroid/content/Context;Landroid/os/Handler;Lcom/android/server/connectivity/NetworkAgentInfo;Landroid/net/NetworkRequest;)Lcom/android/server/connectivity/NetworkMonitor;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "handler"    # Landroid/os/Handler;
    .param p3, "nai"    # Lcom/android/server/connectivity/NetworkAgentInfo;
    .param p4, "defaultRequest"    # Landroid/net/NetworkRequest;

    #@0
    .prologue
    .line 4753
    new-instance v0, Lcom/android/server/connectivity/NetworkMonitor;

    #@2
    invoke-direct {v0, p1, p2, p3, p4}, Lcom/android/server/connectivity/NetworkMonitor;-><init>(Landroid/content/Context;Landroid/os/Handler;Lcom/android/server/connectivity/NetworkAgentInfo;Landroid/net/NetworkRequest;)V

    #@5
    return-object v0
.end method

.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 30
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "writer"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    #@0
    .prologue
    .line 1759
    new-instance v23, Lcom/android/internal/util/IndentingPrintWriter;

    #@2
    const-string/jumbo v24, "  "

    #@5
    move-object/from16 v0, v23

    #@7
    move-object/from16 v1, p2

    #@9
    move-object/from16 v2, v24

    #@b
    invoke-direct {v0, v1, v2}, Lcom/android/internal/util/IndentingPrintWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;)V

    #@e
    .line 1760
    .local v23, "pw":Lcom/android/internal/util/IndentingPrintWriter;
    move-object/from16 v0, p0

    #@10
    iget-object v0, v0, Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;

    #@12
    move-object/from16 v24, v0

    #@14
    .line 1761
    const-string/jumbo v25, "android.permission.DUMP"

    #@17
    .line 1760
    invoke-virtual/range {v24 .. v25}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    #@1a
    move-result v24

    #@1b
    if-eqz v24, :cond_0

    #@1d
    .line 1763
    new-instance v24, Ljava/lang/StringBuilder;

    #@1f
    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    #@22
    const-string/jumbo v25, "Permission Denial: can\'t dump ConnectivityService from from pid="

    #@25
    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@28
    move-result-object v24

    #@29
    .line 1764
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    #@2c
    move-result v25

    #@2d
    .line 1763
    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@30
    move-result-object v24

    #@31
    .line 1764
    const-string/jumbo v25, ", uid="

    #@34
    .line 1763
    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@37
    move-result-object v24

    #@38
    .line 1765
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    #@3b
    move-result v25

    #@3c
    .line 1763
    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@3f
    move-result-object v24

    #@40
    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@43
    move-result-object v24

    #@44
    invoke-virtual/range {v23 .. v24}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    #@47
    .line 1766
    return-void

    #@48
    .line 1769
    :cond_0
    new-instance v14, Ljava/util/ArrayList;

    #@4a
    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    #@4d
    .line 1770
    .local v14, "netDiags":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/connectivity/NetworkDiagnostics;>;"
    const-string/jumbo v24, "--diag"

    #@50
    move-object/from16 v0, p0

    #@52
    move-object/from16 v1, p3

    #@54
    move-object/from16 v2, v24

    #@56
    invoke-direct {v0, v1, v2}, Lcom/android/server/ConnectivityService;->argsContain([Ljava/lang/String;Ljava/lang/String;)Z

    #@59
    move-result v24

    #@5a
    if-eqz v24, :cond_3

    #@5c
    .line 1771
    const-wide/16 v6, 0x1388

    #@5e
    .line 1772
    .local v6, "DIAG_TIME_MS":J
    move-object/from16 v0, p0

    #@60
    iget-object v0, v0, Lcom/android/server/ConnectivityService;->mNetworkAgentInfos:Ljava/util/HashMap;

    #@62
    move-object/from16 v24, v0

    #@64
    invoke-virtual/range {v24 .. v24}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    #@67
    move-result-object v24

    #@68
    invoke-interface/range {v24 .. v24}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@6b
    move-result-object v11

    #@6c
    .local v11, "nai$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    #@6f
    move-result v24

    #@70
    if-eqz v24, :cond_1

    #@72
    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@75
    move-result-object v10

    #@76
    check-cast v10, Lcom/android/server/connectivity/NetworkAgentInfo;

    #@78
    .line 1774
    .local v10, "nai":Lcom/android/server/connectivity/NetworkAgentInfo;
    new-instance v24, Lcom/android/server/connectivity/NetworkDiagnostics;

    #@7a
    .line 1775
    iget-object v0, v10, Lcom/android/server/connectivity/NetworkAgentInfo;->network:Landroid/net/Network;

    #@7c
    move-object/from16 v25, v0

    #@7e
    .line 1776
    new-instance v26, Landroid/net/LinkProperties;

    #@80
    iget-object v0, v10, Lcom/android/server/connectivity/NetworkAgentInfo;->linkProperties:Landroid/net/LinkProperties;

    #@82
    move-object/from16 v27, v0

    #@84
    invoke-direct/range {v26 .. v27}, Landroid/net/LinkProperties;-><init>(Landroid/net/LinkProperties;)V

    #@87
    .line 1777
    const-wide/16 v28, 0x1388

    #@89
    .line 1774
    move-object/from16 v0, v24

    #@8b
    move-object/from16 v1, v25

    #@8d
    move-object/from16 v2, v26

    #@8f
    move-wide/from16 v3, v28

    #@91
    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/server/connectivity/NetworkDiagnostics;-><init>(Landroid/net/Network;Landroid/net/LinkProperties;J)V

    #@94
    move-object/from16 v0, v24

    #@96
    invoke-interface {v14, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@99
    goto :goto_0

    #@9a
    .line 1780
    .end local v10    # "nai":Lcom/android/server/connectivity/NetworkAgentInfo;
    :cond_1
    invoke-interface {v14}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@9d
    move-result-object v13

    #@9e
    .local v13, "netDiag$iterator":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    #@a1
    move-result v24

    #@a2
    if-eqz v24, :cond_2

    #@a4
    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@a7
    move-result-object v12

    #@a8
    check-cast v12, Lcom/android/server/connectivity/NetworkDiagnostics;

    #@aa
    .line 1781
    .local v12, "netDiag":Lcom/android/server/connectivity/NetworkDiagnostics;
    invoke-virtual/range {v23 .. v23}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    #@ad
    .line 1782
    invoke-virtual {v12}, Lcom/android/server/connectivity/NetworkDiagnostics;->waitForMeasurements()V

    #@b0
    .line 1783
    move-object/from16 v0, v23

    #@b2
    invoke-virtual {v12, v0}, Lcom/android/server/connectivity/NetworkDiagnostics;->dump(Lcom/android/internal/util/IndentingPrintWriter;)V

    #@b5
    goto :goto_1

    #@b6
    .line 1786
    .end local v12    # "netDiag":Lcom/android/server/connectivity/NetworkDiagnostics;
    :cond_2
    return-void

    #@b7
    .line 1789
    .end local v6    # "DIAG_TIME_MS":J
    .end local v11    # "nai$iterator":Ljava/util/Iterator;
    .end local v13    # "netDiag$iterator":Ljava/util/Iterator;
    :cond_3
    const-string/jumbo v24, "NetworkFactories for:"

    #@ba
    invoke-virtual/range {v23 .. v24}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    #@bd
    .line 1790
    move-object/from16 v0, p0

    #@bf
    iget-object v0, v0, Lcom/android/server/ConnectivityService;->mNetworkFactoryInfos:Ljava/util/HashMap;

    #@c1
    move-object/from16 v24, v0

    #@c3
    invoke-virtual/range {v24 .. v24}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    #@c6
    move-result-object v24

    #@c7
    invoke-interface/range {v24 .. v24}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@ca
    move-result-object v16

    #@cb
    .local v16, "nfi$iterator":Ljava/util/Iterator;
    :goto_2
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    #@ce
    move-result v24

    #@cf
    if-eqz v24, :cond_4

    #@d1
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@d4
    move-result-object v15

    #@d5
    check-cast v15, Lcom/android/server/ConnectivityService$NetworkFactoryInfo;

    #@d7
    .line 1791
    .local v15, "nfi":Lcom/android/server/ConnectivityService$NetworkFactoryInfo;
    new-instance v24, Ljava/lang/StringBuilder;

    #@d9
    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    #@dc
    const-string/jumbo v25, " "

    #@df
    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@e2
    move-result-object v24

    #@e3
    iget-object v0, v15, Lcom/android/server/ConnectivityService$NetworkFactoryInfo;->name:Ljava/lang/String;

    #@e5
    move-object/from16 v25, v0

    #@e7
    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@ea
    move-result-object v24

    #@eb
    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@ee
    move-result-object v24

    #@ef
    invoke-virtual/range {v23 .. v24}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    #@f2
    goto :goto_2

    #@f3
    .line 1793
    .end local v15    # "nfi":Lcom/android/server/ConnectivityService$NetworkFactoryInfo;
    :cond_4
    invoke-virtual/range {v23 .. v23}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    #@f6
    .line 1794
    invoke-virtual/range {v23 .. v23}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    #@f9
    .line 1796
    invoke-direct/range {p0 .. p0}, Lcom/android/server/ConnectivityService;->getDefaultNetwork()Lcom/android/server/connectivity/NetworkAgentInfo;

    #@fc
    move-result-object v8

    #@fd
    .line 1797
    .local v8, "defaultNai":Lcom/android/server/connectivity/NetworkAgentInfo;
    const-string/jumbo v24, "Active default network: "

    #@100
    invoke-virtual/range {v23 .. v24}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    #@103
    .line 1798
    if-nez v8, :cond_5

    #@105
    .line 1799
    const-string/jumbo v24, "none"

    #@108
    invoke-virtual/range {v23 .. v24}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    #@10b
    .line 1803
    :goto_3
    invoke-virtual/range {v23 .. v23}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    #@10e
    .line 1805
    const-string/jumbo v24, "Current Networks:"

    #@111
    invoke-virtual/range {v23 .. v24}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    #@114
    .line 1806
    invoke-virtual/range {v23 .. v23}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()V

    #@117
    .line 1807
    move-object/from16 v0, p0

    #@119
    iget-object v0, v0, Lcom/android/server/ConnectivityService;->mNetworkAgentInfos:Ljava/util/HashMap;

    #@11b
    move-object/from16 v24, v0

    #@11d
    invoke-virtual/range {v24 .. v24}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    #@120
    move-result-object v24

    #@121
    invoke-interface/range {v24 .. v24}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@124
    move-result-object v11

    #@125
    .restart local v11    # "nai$iterator":Ljava/util/Iterator;
    :goto_4
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    #@128
    move-result v24

    #@129
    if-eqz v24, :cond_8

    #@12b
    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@12e
    move-result-object v10

    #@12f
    check-cast v10, Lcom/android/server/connectivity/NetworkAgentInfo;

    #@131
    .line 1808
    .restart local v10    # "nai":Lcom/android/server/connectivity/NetworkAgentInfo;
    invoke-virtual {v10}, Lcom/android/server/connectivity/NetworkAgentInfo;->toString()Ljava/lang/String;

    #@134
    move-result-object v24

    #@135
    invoke-virtual/range {v23 .. v24}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    #@138
    .line 1809
    invoke-virtual/range {v23 .. v23}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()V

    #@13b
    .line 1810
    const-string/jumbo v24, "Requests:"

    #@13e
    invoke-virtual/range {v23 .. v24}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    #@141
    .line 1811
    invoke-virtual/range {v23 .. v23}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()V

    #@144
    .line 1812
    const/4 v9, 0x0

    #@145
    .local v9, "i":I
    :goto_5
    iget-object v0, v10, Lcom/android/server/connectivity/NetworkAgentInfo;->networkRequests:Landroid/util/SparseArray;

    #@147
    move-object/from16 v24, v0

    #@149
    invoke-virtual/range {v24 .. v24}, Landroid/util/SparseArray;->size()I

    #@14c
    move-result v24

    #@14d
    move/from16 v0, v24

    #@14f
    if-ge v9, v0, :cond_6

    #@151
    .line 1813
    iget-object v0, v10, Lcom/android/server/connectivity/NetworkAgentInfo;->networkRequests:Landroid/util/SparseArray;

    #@153
    move-object/from16 v24, v0

    #@155
    move-object/from16 v0, v24

    #@157
    invoke-virtual {v0, v9}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    #@15a
    move-result-object v24

    #@15b
    check-cast v24, Landroid/net/NetworkRequest;

    #@15d
    invoke-virtual/range {v24 .. v24}, Landroid/net/NetworkRequest;->toString()Ljava/lang/String;

    #@160
    move-result-object v24

    #@161
    invoke-virtual/range {v23 .. v24}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    #@164
    .line 1812
    add-int/lit8 v9, v9, 0x1

    #@166
    goto :goto_5

    #@167
    .line 1801
    .end local v9    # "i":I
    .end local v10    # "nai":Lcom/android/server/connectivity/NetworkAgentInfo;
    .end local v11    # "nai$iterator":Ljava/util/Iterator;
    :cond_5
    iget-object v0, v8, Lcom/android/server/connectivity/NetworkAgentInfo;->network:Landroid/net/Network;

    #@169
    move-object/from16 v24, v0

    #@16b
    move-object/from16 v0, v24

    #@16d
    iget v0, v0, Landroid/net/Network;->netId:I

    #@16f
    move/from16 v24, v0

    #@171
    invoke-virtual/range {v23 .. v24}, Lcom/android/internal/util/IndentingPrintWriter;->println(I)V

    #@174
    goto :goto_3

    #@175
    .line 1815
    .restart local v9    # "i":I
    .restart local v10    # "nai":Lcom/android/server/connectivity/NetworkAgentInfo;
    .restart local v11    # "nai$iterator":Ljava/util/Iterator;
    :cond_6
    invoke-virtual/range {v23 .. v23}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()V

    #@178
    .line 1816
    const-string/jumbo v24, "Lingered:"

    #@17b
    invoke-virtual/range {v23 .. v24}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    #@17e
    .line 1817
    invoke-virtual/range {v23 .. v23}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()V

    #@181
    .line 1818
    iget-object v0, v10, Lcom/android/server/connectivity/NetworkAgentInfo;->networkLingered:Ljava/util/ArrayList;

    #@183
    move-object/from16 v24, v0

    #@185
    invoke-interface/range {v24 .. v24}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@188
    move-result-object v18

    #@189
    .local v18, "nr$iterator":Ljava/util/Iterator;
    :goto_6
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->hasNext()Z

    #@18c
    move-result v24

    #@18d
    if-eqz v24, :cond_7

    #@18f
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@192
    move-result-object v17

    #@193
    check-cast v17, Landroid/net/NetworkRequest;

    #@195
    .local v17, "nr":Landroid/net/NetworkRequest;
    invoke-virtual/range {v17 .. v17}, Landroid/net/NetworkRequest;->toString()Ljava/lang/String;

    #@198
    move-result-object v24

    #@199
    invoke-virtual/range {v23 .. v24}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    #@19c
    goto :goto_6

    #@19d
    .line 1819
    .end local v17    # "nr":Landroid/net/NetworkRequest;
    :cond_7
    invoke-virtual/range {v23 .. v23}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()V

    #@1a0
    .line 1820
    invoke-virtual/range {v23 .. v23}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()V

    #@1a3
    goto :goto_4

    #@1a4
    .line 1822
    .end local v9    # "i":I
    .end local v10    # "nai":Lcom/android/server/connectivity/NetworkAgentInfo;
    .end local v18    # "nr$iterator":Ljava/util/Iterator;
    :cond_8
    invoke-virtual/range {v23 .. v23}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()V

    #@1a7
    .line 1823
    invoke-virtual/range {v23 .. v23}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    #@1aa
    .line 1825
    const-string/jumbo v24, "Network Requests:"

    #@1ad
    invoke-virtual/range {v23 .. v24}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    #@1b0
    .line 1826
    invoke-virtual/range {v23 .. v23}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()V

    #@1b3
    .line 1827
    move-object/from16 v0, p0

    #@1b5
    iget-object v0, v0, Lcom/android/server/ConnectivityService;->mNetworkRequests:Ljava/util/HashMap;

    #@1b7
    move-object/from16 v24, v0

    #@1b9
    invoke-virtual/range {v24 .. v24}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    #@1bc
    move-result-object v24

    #@1bd
    invoke-interface/range {v24 .. v24}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@1c0
    move-result-object v20

    #@1c1
    .local v20, "nri$iterator":Ljava/util/Iterator;
    :goto_7
    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->hasNext()Z

    #@1c4
    move-result v24

    #@1c5
    if-eqz v24, :cond_9

    #@1c7
    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@1ca
    move-result-object v19

    #@1cb
    check-cast v19, Lcom/android/server/ConnectivityService$NetworkRequestInfo;

    #@1cd
    .line 1828
    .local v19, "nri":Lcom/android/server/ConnectivityService$NetworkRequestInfo;
    invoke-virtual/range {v19 .. v19}, Lcom/android/server/ConnectivityService$NetworkRequestInfo;->toString()Ljava/lang/String;

    #@1d0
    move-result-object v24

    #@1d1
    invoke-virtual/range {v23 .. v24}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    #@1d4
    goto :goto_7

    #@1d5
    .line 1830
    .end local v19    # "nri":Lcom/android/server/ConnectivityService$NetworkRequestInfo;
    :cond_9
    invoke-virtual/range {v23 .. v23}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    #@1d8
    .line 1831
    invoke-virtual/range {v23 .. v23}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()V

    #@1db
    .line 1833
    move-object/from16 v0, p0

    #@1dd
    iget-object v0, v0, Lcom/android/server/ConnectivityService;->mLegacyTypeTracker:Lcom/android/server/ConnectivityService$LegacyTypeTracker;

    #@1df
    move-object/from16 v24, v0

    #@1e1
    move-object/from16 v0, v24

    #@1e3
    move-object/from16 v1, v23

    #@1e5
    invoke-virtual {v0, v1}, Lcom/android/server/ConnectivityService$LegacyTypeTracker;->dump(Lcom/android/internal/util/IndentingPrintWriter;)V

    #@1e8
    .line 1835
    monitor-enter p0

    #@1e9
    .line 1836
    :try_start_0
    new-instance v24, Ljava/lang/StringBuilder;

    #@1eb
    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    #@1ee
    const-string/jumbo v25, "mNetTransitionWakeLock: currently "

    #@1f1
    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1f4
    move-result-object v25

    #@1f5
    .line 1837
    move-object/from16 v0, p0

    #@1f7
    iget-object v0, v0, Lcom/android/server/ConnectivityService;->mNetTransitionWakeLock:Landroid/os/PowerManager$WakeLock;

    #@1f9
    move-object/from16 v24, v0

    #@1fb
    invoke-virtual/range {v24 .. v24}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    #@1fe
    move-result v24

    #@1ff
    if-eqz v24, :cond_a

    #@201
    const-string/jumbo v24, ""

    #@204
    .line 1836
    :goto_8
    move-object/from16 v0, v25

    #@206
    move-object/from16 v1, v24

    #@208
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@20b
    move-result-object v24

    #@20c
    .line 1837
    const-string/jumbo v25, "held"

    #@20f
    .line 1836
    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@212
    move-result-object v24

    #@213
    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@216
    move-result-object v24

    #@217
    invoke-virtual/range {v23 .. v24}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    #@21a
    .line 1838
    move-object/from16 v0, p0

    #@21c
    iget-object v0, v0, Lcom/android/server/ConnectivityService;->mNetTransitionWakeLockCausedBy:Ljava/lang/String;

    #@21e
    move-object/from16 v24, v0

    #@220
    invoke-static/range {v24 .. v24}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@223
    move-result v24

    #@224
    if-nez v24, :cond_b

    #@226
    .line 1839
    new-instance v24, Ljava/lang/StringBuilder;

    #@228
    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    #@22b
    const-string/jumbo v25, ", last requested for "

    #@22e
    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@231
    move-result-object v24

    #@232
    move-object/from16 v0, p0

    #@234
    iget-object v0, v0, Lcom/android/server/ConnectivityService;->mNetTransitionWakeLockCausedBy:Ljava/lang/String;

    #@236
    move-object/from16 v25, v0

    #@238
    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@23b
    move-result-object v24

    #@23c
    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@23f
    move-result-object v24

    #@240
    invoke-virtual/range {v23 .. v24}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@243
    :goto_9
    monitor-exit p0

    #@244
    .line 1844
    invoke-virtual/range {v23 .. v23}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    #@247
    .line 1846
    move-object/from16 v0, p0

    #@249
    iget-object v0, v0, Lcom/android/server/ConnectivityService;->mTethering:Lcom/android/server/connectivity/Tethering;

    #@24b
    move-object/from16 v24, v0

    #@24d
    move-object/from16 v0, v24

    #@24f
    move-object/from16 v1, p1

    #@251
    move-object/from16 v2, v23

    #@253
    move-object/from16 v3, p3

    #@255
    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/connectivity/Tethering;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    #@258
    .line 1848
    move-object/from16 v0, p0

    #@25a
    iget-object v0, v0, Lcom/android/server/ConnectivityService;->mInetLog:Ljava/util/ArrayList;

    #@25c
    move-object/from16 v24, v0

    #@25e
    if-eqz v24, :cond_d

    #@260
    move-object/from16 v0, p0

    #@262
    iget-object v0, v0, Lcom/android/server/ConnectivityService;->mInetLog:Ljava/util/ArrayList;

    #@264
    move-object/from16 v24, v0

    #@266
    invoke-virtual/range {v24 .. v24}, Ljava/util/ArrayList;->size()I

    #@269
    move-result v24

    #@26a
    if-lez v24, :cond_d

    #@26c
    .line 1849
    invoke-virtual/range {v23 .. v23}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    #@26f
    .line 1850
    const-string/jumbo v24, "Inet condition reports:"

    #@272
    invoke-virtual/range {v23 .. v24}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    #@275
    .line 1851
    invoke-virtual/range {v23 .. v23}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()V

    #@278
    .line 1852
    const/4 v9, 0x0

    #@279
    .restart local v9    # "i":I
    :goto_a
    move-object/from16 v0, p0

    #@27b
    iget-object v0, v0, Lcom/android/server/ConnectivityService;->mInetLog:Ljava/util/ArrayList;

    #@27d
    move-object/from16 v24, v0

    #@27f
    invoke-virtual/range {v24 .. v24}, Ljava/util/ArrayList;->size()I

    #@282
    move-result v24

    #@283
    move/from16 v0, v24

    #@285
    if-ge v9, v0, :cond_c

    #@287
    .line 1853
    move-object/from16 v0, p0

    #@289
    iget-object v0, v0, Lcom/android/server/ConnectivityService;->mInetLog:Ljava/util/ArrayList;

    #@28b
    move-object/from16 v24, v0

    #@28d
    move-object/from16 v0, v24

    #@28f
    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@292
    move-result-object v24

    #@293
    invoke-virtual/range {v23 .. v24}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/Object;)V

    #@296
    .line 1852
    add-int/lit8 v9, v9, 0x1

    #@298
    goto :goto_a

    #@299
    .line 1837
    .end local v9    # "i":I
    :cond_a
    :try_start_1
    const-string/jumbo v24, "not "

    #@29c
    goto/16 :goto_8

    #@29e
    .line 1841
    :cond_b
    const-string/jumbo v24, ", last requested never"

    #@2a1
    invoke-virtual/range {v23 .. v24}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@2a4
    goto :goto_9

    #@2a5
    .line 1835
    :catchall_0
    move-exception v24

    #@2a6
    monitor-exit p0

    #@2a7
    throw v24

    #@2a8
    .line 1855
    .restart local v9    # "i":I
    :cond_c
    invoke-virtual/range {v23 .. v23}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()V

    #@2ab
    .line 1858
    .end local v9    # "i":I
    :cond_d
    const-string/jumbo v24, "--short"

    #@2ae
    move-object/from16 v0, p0

    #@2b0
    move-object/from16 v1, p3

    #@2b2
    move-object/from16 v2, v24

    #@2b4
    invoke-direct {v0, v1, v2}, Lcom/android/server/ConnectivityService;->argsContain([Ljava/lang/String;Ljava/lang/String;)Z

    #@2b7
    move-result v24

    #@2b8
    if-nez v24, :cond_f

    #@2ba
    .line 1859
    invoke-virtual/range {v23 .. v23}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    #@2bd
    .line 1860
    move-object/from16 v0, p0

    #@2bf
    iget-object v0, v0, Lcom/android/server/ConnectivityService;->mValidationLogs:Ljava/util/ArrayDeque;

    #@2c1
    move-object/from16 v25, v0

    #@2c3
    monitor-enter v25

    #@2c4
    .line 1861
    :try_start_2
    const-string/jumbo v24, "mValidationLogs (most recent first):"

    #@2c7
    invoke-virtual/range {v23 .. v24}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    #@2ca
    .line 1862
    move-object/from16 v0, p0

    #@2cc
    iget-object v0, v0, Lcom/android/server/ConnectivityService;->mValidationLogs:Ljava/util/ArrayDeque;

    #@2ce
    move-object/from16 v24, v0

    #@2d0
    invoke-interface/range {v24 .. v24}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@2d3
    move-result-object v22

    #@2d4
    .local v22, "p$iterator":Ljava/util/Iterator;
    :goto_b
    invoke-interface/range {v22 .. v22}, Ljava/util/Iterator;->hasNext()Z

    #@2d7
    move-result v24

    #@2d8
    if-eqz v24, :cond_e

    #@2da
    invoke-interface/range {v22 .. v22}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@2dd
    move-result-object v21

    #@2de
    check-cast v21, Landroid/util/Pair;

    #@2e0
    .line 1863
    .local v21, "p":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/net/Network;Landroid/util/LocalLog$ReadOnlyLocalLog;>;"
    move-object/from16 v0, v21

    #@2e2
    iget-object v0, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    #@2e4
    move-object/from16 v24, v0

    #@2e6
    invoke-virtual/range {v23 .. v24}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/Object;)V

    #@2e9
    .line 1864
    invoke-virtual/range {v23 .. v23}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()V

    #@2ec
    .line 1865
    move-object/from16 v0, v21

    #@2ee
    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    #@2f0
    move-object/from16 v24, v0

    #@2f2
    check-cast v24, Landroid/util/LocalLog$ReadOnlyLocalLog;

    #@2f4
    move-object/from16 v0, v24

    #@2f6
    move-object/from16 v1, p1

    #@2f8
    move-object/from16 v2, v23

    #@2fa
    move-object/from16 v3, p3

    #@2fc
    invoke-virtual {v0, v1, v2, v3}, Landroid/util/LocalLog$ReadOnlyLocalLog;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    #@2ff
    .line 1866
    invoke-virtual/range {v23 .. v23}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    #@302
    goto :goto_b

    #@303
    .line 1860
    .end local v21    # "p":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/net/Network;Landroid/util/LocalLog$ReadOnlyLocalLog;>;"
    .end local v22    # "p$iterator":Ljava/util/Iterator;
    :catchall_1
    move-exception v24

    #@304
    monitor-exit v25

    #@305
    throw v24

    #@306
    .restart local v22    # "p$iterator":Ljava/util/Iterator;
    :cond_e
    monitor-exit v25

    #@307
    .line 1870
    invoke-virtual/range {v23 .. v23}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    #@30a
    .line 1871
    const-string/jumbo v24, "mNetworkRequestInfoLogs (most recent first):"

    #@30d
    invoke-virtual/range {v23 .. v24}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    #@310
    .line 1872
    invoke-virtual/range {v23 .. v23}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()V

    #@313
    .line 1873
    move-object/from16 v0, p0

    #@315
    iget-object v0, v0, Lcom/android/server/ConnectivityService;->mNetworkRequestInfoLogs:Landroid/util/LocalLog;

    #@317
    move-object/from16 v24, v0

    #@319
    move-object/from16 v0, v24

    #@31b
    move-object/from16 v1, p1

    #@31d
    move-object/from16 v2, v23

    #@31f
    move-object/from16 v3, p3

    #@321
    invoke-virtual {v0, v1, v2, v3}, Landroid/util/LocalLog;->reverseDump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    #@324
    .line 1874
    invoke-virtual/range {v23 .. v23}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()V

    #@327
    .line 1758
    .end local v22    # "p$iterator":Ljava/util/Iterator;
    :cond_f
    return-void
.end method

.method public establishVpn(Lcom/android/internal/net/VpnConfig;)Landroid/os/ParcelFileDescriptor;
    .locals 3
    .param p1, "config"    # Lcom/android/internal/net/VpnConfig;

    #@0
    .prologue
    .line 3020
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->throwIfLockdownEnabled()V

    #@3
    .line 3021
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    #@6
    move-result v1

    #@7
    invoke-static {v1}, Landroid/os/UserHandle;->getUserId(I)I

    #@a
    move-result v0

    #@b
    .line 3022
    .local v0, "user":I
    iget-object v2, p0, Lcom/android/server/ConnectivityService;->mVpns:Landroid/util/SparseArray;

    #@d
    monitor-enter v2

    #@e
    .line 3023
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
    .line 3022
    :catchall_0
    move-exception v1

    #@1d
    monitor-exit v2

    #@1e
    throw v1
.end method

.method public factoryReset()V
    .locals 7

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 4715
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->enforceConnectivityInternalPermission()V

    #@4
    .line 4717
    iget-object v3, p0, Lcom/android/server/ConnectivityService;->mUserManager:Landroid/os/UserManager;

    #@6
    const-string/jumbo v5, "no_network_reset"

    #@9
    invoke-virtual {v3, v5}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;)Z

    #@c
    move-result v3

    #@d
    if-eqz v3, :cond_0

    #@f
    .line 4718
    return-void

    #@10
    .line 4721
    :cond_0
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    #@13
    move-result v1

    #@14
    .line 4724
    .local v1, "userId":I
    invoke-virtual {p0, v4}, Lcom/android/server/ConnectivityService;->setAirplaneMode(Z)V

    #@17
    .line 4726
    iget-object v3, p0, Lcom/android/server/ConnectivityService;->mUserManager:Landroid/os/UserManager;

    #@19
    const-string/jumbo v5, "no_config_tethering"

    #@1c
    invoke-virtual {v3, v5}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;)Z

    #@1f
    move-result v3

    #@20
    if-nez v3, :cond_1

    #@22
    .line 4728
    invoke-virtual {p0}, Lcom/android/server/ConnectivityService;->getTetheredIfaces()[Ljava/lang/String;

    #@25
    move-result-object v5

    #@26
    array-length v6, v5

    #@27
    move v3, v4

    #@28
    :goto_0
    if-ge v3, v6, :cond_1

    #@2a
    aget-object v0, v5, v3

    #@2c
    .line 4729
    .local v0, "tether":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/android/server/ConnectivityService;->untether(Ljava/lang/String;)I

    #@2f
    .line 4728
    add-int/lit8 v3, v3, 0x1

    #@31
    goto :goto_0

    #@32
    .line 4733
    .end local v0    # "tether":Ljava/lang/String;
    :cond_1
    iget-object v3, p0, Lcom/android/server/ConnectivityService;->mUserManager:Landroid/os/UserManager;

    #@34
    const-string/jumbo v5, "no_config_vpn"

    #@37
    invoke-virtual {v3, v5}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;)Z

    #@3a
    move-result v3

    #@3b
    if-nez v3, :cond_2

    #@3d
    .line 4735
    invoke-virtual {p0, v1}, Lcom/android/server/ConnectivityService;->getVpnConfig(I)Lcom/android/internal/net/VpnConfig;

    #@40
    move-result-object v2

    #@41
    .line 4736
    .local v2, "vpnConfig":Lcom/android/internal/net/VpnConfig;
    if-eqz v2, :cond_2

    #@43
    .line 4737
    iget-boolean v3, v2, Lcom/android/internal/net/VpnConfig;->legacy:Z

    #@45
    if-eqz v3, :cond_3

    #@47
    .line 4738
    const-string/jumbo v3, "[Legacy VPN]"

    #@4a
    const-string/jumbo v4, "[Legacy VPN]"

    #@4d
    invoke-virtual {p0, v3, v4, v1}, Lcom/android/server/ConnectivityService;->prepareVpn(Ljava/lang/String;Ljava/lang/String;I)Z

    #@50
    .line 4714
    .end local v2    # "vpnConfig":Lcom/android/internal/net/VpnConfig;
    :cond_2
    :goto_1
    return-void

    #@51
    .line 4742
    .restart local v2    # "vpnConfig":Lcom/android/internal/net/VpnConfig;
    :cond_3
    iget-object v3, v2, Lcom/android/internal/net/VpnConfig;->user:Ljava/lang/String;

    #@53
    invoke-virtual {p0, v3, v1, v4}, Lcom/android/server/ConnectivityService;->setVpnPackageAuthorization(Ljava/lang/String;IZ)V

    #@56
    .line 4744
    iget-object v3, v2, Lcom/android/internal/net/VpnConfig;->user:Ljava/lang/String;

    #@58
    const-string/jumbo v4, "[Legacy VPN]"

    #@5b
    invoke-virtual {p0, v3, v4, v1}, Lcom/android/server/ConnectivityService;->prepareVpn(Ljava/lang/String;Ljava/lang/String;I)Z

    #@5e
    goto :goto_1
.end method

.method public getActiveLinkProperties()Landroid/net/LinkProperties;
    .locals 3

    #@0
    .prologue
    .line 1150
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->enforceAccessPermission()V

    #@3
    .line 1151
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    #@6
    move-result v1

    #@7
    .line 1152
    .local v1, "uid":I
    invoke-direct {p0, v1}, Lcom/android/server/ConnectivityService;->getUnfilteredActiveNetworkState(I)Landroid/net/NetworkState;

    #@a
    move-result-object v0

    #@b
    .line 1153
    .local v0, "state":Landroid/net/NetworkState;
    iget-object v2, v0, Landroid/net/NetworkState;->linkProperties:Landroid/net/LinkProperties;

    #@d
    return-object v2
.end method

.method public getActiveNetwork()Landroid/net/Network;
    .locals 8

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    .line 982
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->enforceAccessPermission()V

    #@4
    .line 983
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    #@7
    move-result v1

    #@8
    .line 984
    .local v1, "uid":I
    invoke-static {v1}, Landroid/os/UserHandle;->getUserId(I)I

    #@b
    move-result v2

    #@c
    .line 985
    .local v2, "user":I
    const/4 v4, 0x0

    #@d
    .line 986
    .local v4, "vpnNetId":I
    iget-object v6, p0, Lcom/android/server/ConnectivityService;->mVpns:Landroid/util/SparseArray;

    #@f
    monitor-enter v6

    #@10
    .line 987
    :try_start_0
    iget-object v7, p0, Lcom/android/server/ConnectivityService;->mVpns:Landroid/util/SparseArray;

    #@12
    invoke-virtual {v7, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    #@15
    move-result-object v3

    #@16
    check-cast v3, Lcom/android/server/connectivity/Vpn;

    #@18
    .line 988
    .local v3, "vpn":Lcom/android/server/connectivity/Vpn;
    if-eqz v3, :cond_0

    #@1a
    invoke-virtual {v3, v1}, Lcom/android/server/connectivity/Vpn;->appliesToUid(I)Z

    #@1d
    move-result v7

    #@1e
    if-eqz v7, :cond_0

    #@20
    invoke-virtual {v3}, Lcom/android/server/connectivity/Vpn;->getNetId()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@23
    move-result v4

    #@24
    :cond_0
    monitor-exit v6

    #@25
    .line 991
    if-eqz v4, :cond_1

    #@27
    .line 992
    iget-object v6, p0, Lcom/android/server/ConnectivityService;->mNetworkForNetId:Landroid/util/SparseArray;

    #@29
    monitor-enter v6

    #@2a
    .line 993
    :try_start_1
    iget-object v7, p0, Lcom/android/server/ConnectivityService;->mNetworkForNetId:Landroid/util/SparseArray;

    #@2c
    invoke-virtual {v7, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    #@2f
    move-result-object v0

    #@30
    check-cast v0, Lcom/android/server/connectivity/NetworkAgentInfo;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    #@32
    .local v0, "nai":Lcom/android/server/connectivity/NetworkAgentInfo;
    monitor-exit v6

    #@33
    .line 995
    if-eqz v0, :cond_1

    #@35
    iget-object v5, v0, Lcom/android/server/connectivity/NetworkAgentInfo;->network:Landroid/net/Network;

    #@37
    return-object v5

    #@38
    .line 986
    .end local v0    # "nai":Lcom/android/server/connectivity/NetworkAgentInfo;
    .end local v3    # "vpn":Lcom/android/server/connectivity/Vpn;
    :catchall_0
    move-exception v5

    #@39
    monitor-exit v6

    #@3a
    throw v5

    #@3b
    .line 992
    .restart local v3    # "vpn":Lcom/android/server/connectivity/Vpn;
    :catchall_1
    move-exception v5

    #@3c
    monitor-exit v6

    #@3d
    throw v5

    #@3e
    .line 997
    :cond_1
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->getDefaultNetwork()Lcom/android/server/connectivity/NetworkAgentInfo;

    #@41
    move-result-object v0

    #@42
    .line 998
    .restart local v0    # "nai":Lcom/android/server/connectivity/NetworkAgentInfo;
    if-eqz v0, :cond_2

    #@44
    iget-object v6, v0, Lcom/android/server/connectivity/NetworkAgentInfo;->linkProperties:Landroid/net/LinkProperties;

    #@46
    invoke-direct {p0, v6, v1}, Lcom/android/server/ConnectivityService;->isNetworkWithLinkPropertiesBlocked(Landroid/net/LinkProperties;I)Z

    #@49
    move-result v6

    #@4a
    if-eqz v6, :cond_2

    #@4c
    const/4 v0, 0x0

    #@4d
    .line 999
    .end local v0    # "nai":Lcom/android/server/connectivity/NetworkAgentInfo;
    :cond_2
    if-eqz v0, :cond_3

    #@4f
    iget-object v5, v0, Lcom/android/server/connectivity/NetworkAgentInfo;->network:Landroid/net/Network;

    #@51
    :cond_3
    return-object v5
.end method

.method public getActiveNetworkInfo()Landroid/net/NetworkInfo;
    .locals 4

    #@0
    .prologue
    .line 974
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->enforceAccessPermission()V

    #@3
    .line 975
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    #@6
    move-result v1

    #@7
    .line 976
    .local v1, "uid":I
    invoke-direct {p0, v1}, Lcom/android/server/ConnectivityService;->getUnfilteredActiveNetworkState(I)Landroid/net/NetworkState;

    #@a
    move-result-object v0

    #@b
    .line 977
    .local v0, "state":Landroid/net/NetworkState;
    iget-object v2, v0, Landroid/net/NetworkState;->networkInfo:Landroid/net/NetworkInfo;

    #@d
    iget-object v3, v0, Landroid/net/NetworkState;->linkProperties:Landroid/net/LinkProperties;

    #@f
    invoke-direct {p0, v2, v3, v1}, Lcom/android/server/ConnectivityService;->getFilteredNetworkInfo(Landroid/net/NetworkInfo;Landroid/net/LinkProperties;I)Landroid/net/NetworkInfo;

    #@12
    move-result-object v2

    #@13
    return-object v2
.end method

.method public getActiveNetworkInfoForUid(I)Landroid/net/NetworkInfo;
    .locals 3
    .param p1, "uid"    # I

    #@0
    .prologue
    .line 1011
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->enforceConnectivityInternalPermission()V

    #@3
    .line 1012
    invoke-direct {p0, p1}, Lcom/android/server/ConnectivityService;->getUnfilteredActiveNetworkState(I)Landroid/net/NetworkState;

    #@6
    move-result-object v0

    #@7
    .line 1013
    .local v0, "state":Landroid/net/NetworkState;
    iget-object v1, v0, Landroid/net/NetworkState;->networkInfo:Landroid/net/NetworkInfo;

    #@9
    iget-object v2, v0, Landroid/net/NetworkState;->linkProperties:Landroid/net/LinkProperties;

    #@b
    invoke-direct {p0, v1, v2, p1}, Lcom/android/server/ConnectivityService;->getFilteredNetworkInfo(Landroid/net/NetworkInfo;Landroid/net/LinkProperties;I)Landroid/net/NetworkInfo;

    #@e
    move-result-object v1

    #@f
    return-object v1
.end method

.method public getActiveNetworkInfoUnfiltered()Landroid/net/NetworkInfo;
    .locals 3

    #@0
    .prologue
    .line 1003
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->enforceAccessPermission()V

    #@3
    .line 1004
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    #@6
    move-result v1

    #@7
    .line 1005
    .local v1, "uid":I
    invoke-direct {p0, v1}, Lcom/android/server/ConnectivityService;->getUnfilteredActiveNetworkState(I)Landroid/net/NetworkState;

    #@a
    move-result-object v0

    #@b
    .line 1006
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
    .line 1220
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->enforceAccessPermission()V

    #@4
    .line 1221
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    #@7
    move-result v4

    #@8
    .line 1222
    .local v4, "uid":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    #@b
    move-result-wide v2

    #@c
    .line 1224
    .local v2, "token":J
    :try_start_0
    invoke-direct {p0, v4}, Lcom/android/server/ConnectivityService;->getUnfilteredActiveNetworkState(I)Landroid/net/NetworkState;

    #@f
    move-result-object v1

    #@10
    .line 1225
    .local v1, "state":Landroid/net/NetworkState;
    iget-object v5, v1, Landroid/net/NetworkState;->networkInfo:Landroid/net/NetworkInfo;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@12
    if-eqz v5, :cond_0

    #@14
    .line 1227
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
    .line 1233
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@1d
    .line 1227
    return-object v5

    #@1e
    .line 1228
    :catch_0
    move-exception v0

    #@1f
    .line 1233
    :cond_0
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@22
    .line 1231
    return-object v6

    #@23
    .line 1232
    .end local v1    # "state":Landroid/net/NetworkState;
    :catchall_0
    move-exception v5

    #@24
    .line 1233
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@27
    .line 1232
    throw v5
.end method

.method public getAllNetworkInfo()[Landroid/net/NetworkInfo;
    .locals 4

    #@0
    .prologue
    .line 1050
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->enforceAccessPermission()V

    #@3
    .line 1051
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    #@6
    move-result-object v2

    #@7
    .line 1052
    .local v2, "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/net/NetworkInfo;>;"
    const/4 v1, 0x0

    #@8
    .local v1, "networkType":I
    :goto_0
    const/16 v3, 0x11

    #@a
    if-gt v1, v3, :cond_1

    #@c
    .line 1054
    invoke-virtual {p0, v1}, Lcom/android/server/ConnectivityService;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    #@f
    move-result-object v0

    #@10
    .line 1055
    .local v0, "info":Landroid/net/NetworkInfo;
    if-eqz v0, :cond_0

    #@12
    .line 1056
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@15
    .line 1053
    :cond_0
    add-int/lit8 v1, v1, 0x1

    #@17
    goto :goto_0

    #@18
    .line 1059
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
    .locals 12

    #@0
    .prologue
    .line 1201
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->enforceConnectivityInternalPermission()V

    #@3
    .line 1203
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    #@6
    move-result-object v8

    #@7
    .line 1204
    .local v8, "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/net/NetworkState;>;"
    invoke-virtual {p0}, Lcom/android/server/ConnectivityService;->getAllNetworks()[Landroid/net/Network;

    #@a
    move-result-object v10

    #@b
    const/4 v0, 0x0

    #@c
    array-length v11, v10

    #@d
    move v9, v0

    #@e
    :goto_0
    if-ge v9, v11, :cond_2

    #@10
    aget-object v4, v10, v9

    #@12
    .line 1205
    .local v4, "network":Landroid/net/Network;
    invoke-direct {p0, v4}, Lcom/android/server/ConnectivityService;->getNetworkAgentInfoForNetwork(Landroid/net/Network;)Lcom/android/server/connectivity/NetworkAgentInfo;

    #@15
    move-result-object v7

    #@16
    .line 1206
    .local v7, "nai":Lcom/android/server/connectivity/NetworkAgentInfo;
    if-eqz v7, :cond_0

    #@18
    .line 1207
    monitor-enter v7

    #@19
    .line 1208
    :try_start_0
    iget-object v0, v7, Lcom/android/server/connectivity/NetworkAgentInfo;->networkMisc:Landroid/net/NetworkMisc;

    #@1b
    if-eqz v0, :cond_1

    #@1d
    .line 1209
    iget-object v0, v7, Lcom/android/server/connectivity/NetworkAgentInfo;->networkMisc:Landroid/net/NetworkMisc;

    #@1f
    iget-object v5, v0, Landroid/net/NetworkMisc;->subscriberId:Ljava/lang/String;

    #@21
    .line 1210
    :goto_1
    new-instance v0, Landroid/net/NetworkState;

    #@23
    iget-object v1, v7, Lcom/android/server/connectivity/NetworkAgentInfo;->networkInfo:Landroid/net/NetworkInfo;

    #@25
    iget-object v2, v7, Lcom/android/server/connectivity/NetworkAgentInfo;->linkProperties:Landroid/net/LinkProperties;

    #@27
    .line 1211
    iget-object v3, v7, Lcom/android/server/connectivity/NetworkAgentInfo;->networkCapabilities:Landroid/net/NetworkCapabilities;

    #@29
    const/4 v6, 0x0

    #@2a
    .line 1210
    invoke-direct/range {v0 .. v6}, Landroid/net/NetworkState;-><init>(Landroid/net/NetworkInfo;Landroid/net/LinkProperties;Landroid/net/NetworkCapabilities;Landroid/net/Network;Ljava/lang/String;Ljava/lang/String;)V

    #@2d
    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@30
    monitor-exit v7

    #@31
    .line 1204
    :cond_0
    add-int/lit8 v0, v9, 0x1

    #@33
    move v9, v0

    #@34
    goto :goto_0

    #@35
    .line 1209
    :cond_1
    const/4 v5, 0x0

    #@36
    .local v5, "subscriberId":Ljava/lang/String;
    goto :goto_1

    #@37
    .line 1207
    .end local v5    # "subscriberId":Ljava/lang/String;
    :catchall_0
    move-exception v0

    #@38
    monitor-exit v7

    #@39
    throw v0

    #@3a
    .line 1215
    .end local v4    # "network":Landroid/net/Network;
    .end local v7    # "nai":Lcom/android/server/connectivity/NetworkAgentInfo;
    :cond_2
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    #@3d
    move-result v0

    #@3e
    new-array v0, v0, [Landroid/net/NetworkState;

    #@40
    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    #@43
    move-result-object v0

    #@44
    check-cast v0, [Landroid/net/NetworkState;

    #@46
    return-object v0
.end method

.method public getAllNetworks()[Landroid/net/Network;
    .locals 4

    #@0
    .prologue
    .line 1075
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->enforceAccessPermission()V

    #@3
    .line 1076
    iget-object v3, p0, Lcom/android/server/ConnectivityService;->mNetworkForNetId:Landroid/util/SparseArray;

    #@5
    monitor-enter v3

    #@6
    .line 1077
    :try_start_0
    iget-object v2, p0, Lcom/android/server/ConnectivityService;->mNetworkForNetId:Landroid/util/SparseArray;

    #@8
    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    #@b
    move-result v2

    #@c
    new-array v1, v2, [Landroid/net/Network;

    #@e
    .line 1078
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
    .line 1079
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
    .line 1078
    add-int/lit8 v0, v0, 0x1

    #@25
    goto :goto_0

    #@26
    :cond_0
    monitor-exit v3

    #@27
    .line 1081
    return-object v1

    #@28
    .line 1076
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
    .line 3067
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->enforceConnectivityInternalPermission()V

    #@3
    .line 3068
    iget-boolean v3, p0, Lcom/android/server/ConnectivityService;->mLockdownEnabled:Z

    #@5
    if-eqz v3, :cond_0

    #@7
    .line 3069
    const/4 v3, 0x0

    #@8
    new-array v3, v3, [Lcom/android/internal/net/VpnInfo;

    #@a
    return-object v3

    #@b
    .line 3072
    :cond_0
    iget-object v4, p0, Lcom/android/server/ConnectivityService;->mVpns:Landroid/util/SparseArray;

    #@d
    monitor-enter v4

    #@e
    .line 3073
    :try_start_0
    new-instance v2, Ljava/util/ArrayList;

    #@10
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    #@13
    .line 3074
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
    .line 3075
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
    .line 3076
    .local v1, "info":Lcom/android/internal/net/VpnInfo;
    if-eqz v1, :cond_1

    #@2a
    .line 3077
    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@2d
    .line 3074
    :cond_1
    add-int/lit8 v0, v0, 0x1

    #@2f
    goto :goto_0

    #@30
    .line 3080
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
    .line 3072
    .end local v0    # "i":I
    .end local v2    # "infoList":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/net/VpnInfo;>;"
    :catchall_0
    move-exception v3

    #@3f
    monitor-exit v4

    #@40
    throw v3
.end method

.method public getDefaultNetworkCapabilitiesForUser(I)[Landroid/net/NetworkCapabilities;
    .locals 10
    .param p1, "userId"    # I

    #@0
    .prologue
    .line 1101
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->enforceAccessPermission()V

    #@3
    .line 1103
    new-instance v5, Ljava/util/HashMap;

    #@5
    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    #@8
    .line 1105
    .local v5, "result":Ljava/util/HashMap;, "Ljava/util/HashMap<Landroid/net/Network;Landroid/net/NetworkCapabilities;>;"
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->getDefaultNetwork()Lcom/android/server/connectivity/NetworkAgentInfo;

    #@b
    move-result-object v0

    #@c
    .line 1106
    .local v0, "nai":Lcom/android/server/connectivity/NetworkAgentInfo;
    invoke-direct {p0, v0}, Lcom/android/server/ConnectivityService;->getNetworkCapabilitiesInternal(Lcom/android/server/connectivity/NetworkAgentInfo;)Landroid/net/NetworkCapabilities;

    #@f
    move-result-object v1

    #@10
    .line 1107
    .local v1, "nc":Landroid/net/NetworkCapabilities;
    if-eqz v1, :cond_0

    #@12
    .line 1108
    iget-object v7, v0, Lcom/android/server/connectivity/NetworkAgentInfo;->network:Landroid/net/Network;

    #@14
    invoke-virtual {v5, v7, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@17
    .line 1111
    :cond_0
    iget-boolean v7, p0, Lcom/android/server/ConnectivityService;->mLockdownEnabled:Z

    #@19
    if-nez v7, :cond_3

    #@1b
    .line 1112
    iget-object v8, p0, Lcom/android/server/ConnectivityService;->mVpns:Landroid/util/SparseArray;

    #@1d
    monitor-enter v8

    #@1e
    .line 1113
    :try_start_0
    iget-object v7, p0, Lcom/android/server/ConnectivityService;->mVpns:Landroid/util/SparseArray;

    #@20
    invoke-virtual {v7, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    #@23
    move-result-object v6

    #@24
    check-cast v6, Lcom/android/server/connectivity/Vpn;

    #@26
    .line 1114
    .local v6, "vpn":Lcom/android/server/connectivity/Vpn;
    if-eqz v6, :cond_2

    #@28
    .line 1115
    invoke-virtual {v6}, Lcom/android/server/connectivity/Vpn;->getUnderlyingNetworks()[Landroid/net/Network;

    #@2b
    move-result-object v3

    #@2c
    .line 1116
    .local v3, "networks":[Landroid/net/Network;
    if-eqz v3, :cond_2

    #@2e
    .line 1117
    const/4 v7, 0x0

    #@2f
    array-length v9, v3

    #@30
    :goto_0
    if-ge v7, v9, :cond_2

    #@32
    aget-object v2, v3, v7

    #@34
    .line 1118
    .local v2, "network":Landroid/net/Network;
    invoke-direct {p0, v2}, Lcom/android/server/ConnectivityService;->getNetworkAgentInfoForNetwork(Landroid/net/Network;)Lcom/android/server/connectivity/NetworkAgentInfo;

    #@37
    move-result-object v0

    #@38
    .line 1119
    invoke-direct {p0, v0}, Lcom/android/server/ConnectivityService;->getNetworkCapabilitiesInternal(Lcom/android/server/connectivity/NetworkAgentInfo;)Landroid/net/NetworkCapabilities;

    #@3b
    move-result-object v1

    #@3c
    .line 1120
    if-eqz v1, :cond_1

    #@3e
    .line 1121
    invoke-virtual {v5, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@41
    .line 1117
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
    .line 1129
    .end local v6    # "vpn":Lcom/android/server/connectivity/Vpn;
    :cond_3
    invoke-virtual {v5}, Ljava/util/HashMap;->size()I

    #@48
    move-result v7

    #@49
    new-array v4, v7, [Landroid/net/NetworkCapabilities;

    #@4b
    .line 1130
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
    .line 1131
    .restart local v4    # "out":[Landroid/net/NetworkCapabilities;
    return-object v4

    #@56
    .line 1112
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
    .line 1666
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
    .line 2815
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mProxyLock:Ljava/lang/Object;

    #@2
    monitor-enter v0

    #@3
    .line 2816
    :try_start_0
    iget-object v1, p0, Lcom/android/server/ConnectivityService;->mGlobalProxy:Landroid/net/ProxyInfo;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@5
    monitor-exit v0

    #@6
    return-object v1

    #@7
    .line 2815
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
    .line 2541
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->enforceTetherAccessPermission()V

    #@3
    .line 2543
    invoke-virtual {p0}, Lcom/android/server/ConnectivityService;->isTetheringSupported()Z

    #@6
    move-result v0

    #@7
    if-eqz v0, :cond_0

    #@9
    .line 2544
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mTethering:Lcom/android/server/connectivity/Tethering;

    #@b
    invoke-virtual {v0, p1}, Lcom/android/server/connectivity/Tethering;->getLastTetherError(Ljava/lang/String;)I

    #@e
    move-result v0

    #@f
    return v0

    #@10
    .line 2546
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
    .line 3051
    invoke-direct {p0, p1}, Lcom/android/server/ConnectivityService;->enforceCrossUserPermission(I)V

    #@3
    .line 3052
    iget-boolean v0, p0, Lcom/android/server/ConnectivityService;->mLockdownEnabled:Z

    #@5
    if-eqz v0, :cond_0

    #@7
    .line 3053
    const/4 v0, 0x0

    #@8
    return-object v0

    #@9
    .line 3056
    :cond_0
    iget-object v1, p0, Lcom/android/server/ConnectivityService;->mVpns:Landroid/util/SparseArray;

    #@b
    monitor-enter v1

    #@c
    .line 3057
    :try_start_0
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mVpns:Landroid/util/SparseArray;

    #@e
    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    #@11
    move-result-object v0

    #@12
    check-cast v0, Lcom/android/server/connectivity/Vpn;

    #@14
    invoke-virtual {v0}, Lcom/android/server/connectivity/Vpn;->getLegacyVpnInfo()Lcom/android/internal/net/LegacyVpnInfo;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@17
    move-result-object v0

    #@18
    monitor-exit v1

    #@19
    return-object v0

    #@1a
    .line 3056
    :catchall_0
    move-exception v0

    #@1b
    monitor-exit v1

    #@1c
    throw v0
.end method

.method public getLinkProperties(Landroid/net/Network;)Landroid/net/LinkProperties;
    .locals 3
    .param p1, "network"    # Landroid/net/Network;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 1171
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->enforceAccessPermission()V

    #@4
    .line 1172
    invoke-direct {p0, p1}, Lcom/android/server/ConnectivityService;->getNetworkAgentInfoForNetwork(Landroid/net/Network;)Lcom/android/server/connectivity/NetworkAgentInfo;

    #@7
    move-result-object v0

    #@8
    .line 1173
    .local v0, "nai":Lcom/android/server/connectivity/NetworkAgentInfo;
    if-eqz v0, :cond_0

    #@a
    .line 1174
    monitor-enter v0

    #@b
    .line 1175
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
    .line 1174
    :catchall_0
    move-exception v1

    #@15
    monitor-exit v0

    #@16
    throw v1

    #@17
    .line 1178
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
    .line 1158
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->enforceAccessPermission()V

    #@4
    .line 1159
    iget-object v1, p0, Lcom/android/server/ConnectivityService;->mLegacyTypeTracker:Lcom/android/server/ConnectivityService$LegacyTypeTracker;

    #@6
    invoke-virtual {v1, p1}, Lcom/android/server/ConnectivityService$LegacyTypeTracker;->getNetworkForType(I)Lcom/android/server/connectivity/NetworkAgentInfo;

    #@9
    move-result-object v0

    #@a
    .line 1160
    .local v0, "nai":Lcom/android/server/connectivity/NetworkAgentInfo;
    if-eqz v0, :cond_0

    #@c
    .line 1161
    monitor-enter v0

    #@d
    .line 1162
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
    .line 1161
    :catchall_0
    move-exception v1

    #@17
    monitor-exit v0

    #@18
    throw v1

    #@19
    .line 1165
    :cond_0
    return-object v2
.end method

.method public getMobileProvisioningUrl()Ljava/lang/String;
    .locals 5

    #@0
    .prologue
    .line 3388
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->enforceConnectivityInternalPermission()V

    #@3
    .line 3389
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->getProvisioningUrlBaseFromFile()Ljava/lang/String;

    #@6
    move-result-object v1

    #@7
    .line 3390
    .local v1, "url":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@a
    move-result v2

    #@b
    if-eqz v2, :cond_2

    #@d
    .line 3391
    iget-object v2, p0, Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;

    #@f
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@12
    move-result-object v2

    #@13
    const v3, 0x104002f

    #@16
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    #@19
    move-result-object v1

    #@1a
    .line 3392
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
    .line 3397
    :goto_0
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@34
    move-result v2

    #@35
    if-nez v2, :cond_1

    #@37
    .line 3398
    iget-object v2, p0, Lcom/android/server/ConnectivityService;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    #@39
    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getLine1Number()Ljava/lang/String;

    #@3c
    move-result-object v0

    #@3d
    .line 3399
    .local v0, "phoneNumber":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@40
    move-result v2

    #@41
    if-eqz v2, :cond_0

    #@43
    .line 3400
    const-string/jumbo v0, "0000000000"

    #@46
    .line 3402
    :cond_0
    const/4 v2, 0x3

    #@47
    new-array v2, v2, [Ljava/lang/Object;

    #@49
    .line 3403
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
    .line 3404
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
    .line 3405
    const/4 v3, 0x2

    #@5c
    aput-object v0, v2, v3

    #@5e
    .line 3402
    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@61
    move-result-object v1

    #@62
    .line 3408
    .end local v0    # "phoneNumber":Ljava/lang/String;
    :cond_1
    return-object v1

    #@63
    .line 3394
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
    .line 1194
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->enforceAccessPermission()V

    #@3
    .line 1195
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
    .locals 3
    .param p1, "networkType"    # I

    #@0
    .prologue
    .line 1064
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->enforceAccessPermission()V

    #@3
    .line 1065
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    #@6
    move-result v1

    #@7
    .line 1066
    .local v1, "uid":I
    invoke-direct {p0, p1, v1}, Lcom/android/server/ConnectivityService;->getFilteredNetworkState(II)Landroid/net/NetworkState;

    #@a
    move-result-object v0

    #@b
    .line 1067
    .local v0, "state":Landroid/net/NetworkState;
    iget-object v2, v0, Landroid/net/NetworkState;->linkProperties:Landroid/net/LinkProperties;

    #@d
    invoke-direct {p0, v2, v1}, Lcom/android/server/ConnectivityService;->isNetworkWithLinkPropertiesBlocked(Landroid/net/LinkProperties;I)Z

    #@10
    move-result v2

    #@11
    if-nez v2, :cond_0

    #@13
    .line 1068
    iget-object v2, v0, Landroid/net/NetworkState;->network:Landroid/net/Network;

    #@15
    return-object v2

    #@16
    .line 1070
    :cond_0
    const/4 v2, 0x0

    #@17
    return-object v2
.end method

.method public getNetworkInfo(I)Landroid/net/NetworkInfo;
    .locals 4
    .param p1, "networkType"    # I

    #@0
    .prologue
    .line 1018
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->enforceAccessPermission()V

    #@3
    .line 1019
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    #@6
    move-result v1

    #@7
    .line 1020
    .local v1, "uid":I
    invoke-direct {p0, v1}, Lcom/android/server/ConnectivityService;->getVpnUnderlyingNetworks(I)[Landroid/net/Network;

    #@a
    move-result-object v2

    #@b
    if-eqz v2, :cond_0

    #@d
    .line 1024
    invoke-direct {p0, v1}, Lcom/android/server/ConnectivityService;->getUnfilteredActiveNetworkState(I)Landroid/net/NetworkState;

    #@10
    move-result-object v0

    #@11
    .line 1025
    .local v0, "state":Landroid/net/NetworkState;
    iget-object v2, v0, Landroid/net/NetworkState;->networkInfo:Landroid/net/NetworkInfo;

    #@13
    if-eqz v2, :cond_0

    #@15
    iget-object v2, v0, Landroid/net/NetworkState;->networkInfo:Landroid/net/NetworkInfo;

    #@17
    invoke-virtual {v2}, Landroid/net/NetworkInfo;->getType()I

    #@1a
    move-result v2

    #@1b
    if-ne v2, p1, :cond_0

    #@1d
    .line 1026
    iget-object v2, v0, Landroid/net/NetworkState;->networkInfo:Landroid/net/NetworkInfo;

    #@1f
    iget-object v3, v0, Landroid/net/NetworkState;->linkProperties:Landroid/net/LinkProperties;

    #@21
    invoke-direct {p0, v2, v3, v1}, Lcom/android/server/ConnectivityService;->getFilteredNetworkInfo(Landroid/net/NetworkInfo;Landroid/net/LinkProperties;I)Landroid/net/NetworkInfo;

    #@24
    move-result-object v2

    #@25
    return-object v2

    #@26
    .line 1029
    .end local v0    # "state":Landroid/net/NetworkState;
    :cond_0
    invoke-direct {p0, p1, v1}, Lcom/android/server/ConnectivityService;->getFilteredNetworkState(II)Landroid/net/NetworkState;

    #@29
    move-result-object v0

    #@2a
    .line 1030
    .restart local v0    # "state":Landroid/net/NetworkState;
    iget-object v2, v0, Landroid/net/NetworkState;->networkInfo:Landroid/net/NetworkInfo;

    #@2c
    return-object v2
.end method

.method public getNetworkInfoForNetwork(Landroid/net/Network;)Landroid/net/NetworkInfo;
    .locals 5
    .param p1, "network"    # Landroid/net/Network;

    #@0
    .prologue
    .line 1035
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->enforceAccessPermission()V

    #@3
    .line 1036
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    #@6
    move-result v3

    #@7
    .line 1037
    .local v3, "uid":I
    const/4 v0, 0x0

    #@8
    .line 1038
    .local v0, "info":Landroid/net/NetworkInfo;
    invoke-direct {p0, p1}, Lcom/android/server/ConnectivityService;->getNetworkAgentInfoForNetwork(Landroid/net/Network;)Lcom/android/server/connectivity/NetworkAgentInfo;

    #@b
    move-result-object v2

    #@c
    .line 1039
    .local v2, "nai":Lcom/android/server/connectivity/NetworkAgentInfo;
    if-eqz v2, :cond_0

    #@e
    .line 1040
    monitor-enter v2

    #@f
    .line 1041
    :try_start_0
    new-instance v1, Landroid/net/NetworkInfo;

    #@11
    iget-object v4, v2, Lcom/android/server/connectivity/NetworkAgentInfo;->networkInfo:Landroid/net/NetworkInfo;

    #@13
    invoke-direct {v1, v4}, Landroid/net/NetworkInfo;-><init>(Landroid/net/NetworkInfo;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@16
    .line 1042
    .end local v0    # "info":Landroid/net/NetworkInfo;
    .local v1, "info":Landroid/net/NetworkInfo;
    :try_start_1
    iget-object v4, v2, Lcom/android/server/connectivity/NetworkAgentInfo;->linkProperties:Landroid/net/LinkProperties;

    #@18
    invoke-direct {p0, v1, v4, v3}, Lcom/android/server/ConnectivityService;->getFilteredNetworkInfo(Landroid/net/NetworkInfo;Landroid/net/LinkProperties;I)Landroid/net/NetworkInfo;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    #@1b
    move-result-object v0

    #@1c
    .end local v1    # "info":Landroid/net/NetworkInfo;
    .local v0, "info":Landroid/net/NetworkInfo;
    monitor-exit v2

    #@1d
    .line 1045
    .end local v0    # "info":Landroid/net/NetworkInfo;
    :cond_0
    return-object v0

    #@1e
    .line 1040
    .local v0, "info":Landroid/net/NetworkInfo;
    :catchall_0
    move-exception v4

    #@1f
    .end local v0    # "info":Landroid/net/NetworkInfo;
    :goto_0
    monitor-exit v2

    #@20
    throw v4

    #@21
    .restart local v1    # "info":Landroid/net/NetworkInfo;
    :catchall_1
    move-exception v4

    #@22
    move-object v0, v1

    #@23
    .end local v1    # "info":Landroid/net/NetworkInfo;
    .local v0, "info":Landroid/net/NetworkInfo;
    goto :goto_0
.end method

.method public getProxyForNetwork(Landroid/net/Network;)Landroid/net/ProxyInfo;
    .locals 6
    .param p1, "network"    # Landroid/net/Network;

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    .line 2694
    if-nez p1, :cond_0

    #@3
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->getDefaultProxy()Landroid/net/ProxyInfo;

    #@6
    move-result-object v3

    #@7
    return-object v3

    #@8
    .line 2695
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/ConnectivityService;->getGlobalProxy()Landroid/net/ProxyInfo;

    #@b
    move-result-object v0

    #@c
    .line 2696
    .local v0, "globalProxy":Landroid/net/ProxyInfo;
    if-eqz v0, :cond_1

    #@e
    return-object v0

    #@f
    .line 2697
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
    .line 2700
    :cond_2
    invoke-direct {p0, p1}, Lcom/android/server/ConnectivityService;->getNetworkAgentInfoForNetwork(Landroid/net/Network;)Lcom/android/server/connectivity/NetworkAgentInfo;

    #@1f
    move-result-object v1

    #@20
    .line 2701
    .local v1, "nai":Lcom/android/server/connectivity/NetworkAgentInfo;
    if-nez v1, :cond_3

    #@22
    return-object v5

    #@23
    .line 2702
    :cond_3
    monitor-enter v1

    #@24
    .line 2703
    :try_start_0
    iget-object v3, v1, Lcom/android/server/connectivity/NetworkAgentInfo;->linkProperties:Landroid/net/LinkProperties;

    #@26
    invoke-virtual {v3}, Landroid/net/LinkProperties;->getHttpProxy()Landroid/net/ProxyInfo;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@29
    move-result-object v2

    #@2a
    .line 2704
    .local v2, "proxyInfo":Landroid/net/ProxyInfo;
    if-nez v2, :cond_4

    #@2c
    monitor-exit v1

    #@2d
    return-object v5

    #@2e
    .line 2705
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
    .line 2702
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
    .line 1732
    const-string/jumbo v3, "android.telephony.apn-restore"

    #@3
    .line 1731
    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    #@6
    move-result-object v1

    #@7
    .line 1733
    .local v1, "restoreDefaultNetworkDelayStr":Ljava/lang/String;
    if-eqz v1, :cond_0

    #@9
    .line 1734
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    #@c
    move-result v3

    #@d
    if-eqz v3, :cond_0

    #@f
    .line 1736
    :try_start_0
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    #@12
    move-result-object v3

    #@13
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    #@16
    move-result v3

    #@17
    return v3

    #@18
    .line 1737
    :catch_0
    move-exception v0

    #@19
    .line 1741
    :cond_0
    const v2, 0xea60

    #@1c
    .line 1743
    .local v2, "ret":I
    const/16 v3, 0x11

    #@1e
    if-gt p1, v3, :cond_1

    #@20
    .line 1744
    iget-object v3, p0, Lcom/android/server/ConnectivityService;->mNetConfigs:[Landroid/net/NetworkConfig;

    #@22
    aget-object v3, v3, p1

    #@24
    if-eqz v3, :cond_1

    #@26
    .line 1745
    iget-object v3, p0, Lcom/android/server/ConnectivityService;->mNetConfigs:[Landroid/net/NetworkConfig;

    #@28
    aget-object v3, v3, p1

    #@2a
    iget v2, v3, Landroid/net/NetworkConfig;->restoreTime:I

    #@2c
    .line 1747
    :cond_1
    return v2
.end method

.method public getTetherableBluetoothRegexs()[Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 2570
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->enforceTetherAccessPermission()V

    #@3
    .line 2571
    invoke-virtual {p0}, Lcom/android/server/ConnectivityService;->isTetheringSupported()Z

    #@6
    move-result v0

    #@7
    if-eqz v0, :cond_0

    #@9
    .line 2572
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mTethering:Lcom/android/server/connectivity/Tethering;

    #@b
    invoke-virtual {v0}, Lcom/android/server/connectivity/Tethering;->getTetherableBluetoothRegexs()[Ljava/lang/String;

    #@e
    move-result-object v0

    #@f
    return-object v0

    #@10
    .line 2574
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
    .line 2590
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->enforceTetherAccessPermission()V

    #@3
    .line 2591
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
    .line 2552
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->enforceTetherAccessPermission()V

    #@3
    .line 2553
    invoke-virtual {p0}, Lcom/android/server/ConnectivityService;->isTetheringSupported()Z

    #@6
    move-result v0

    #@7
    if-eqz v0, :cond_0

    #@9
    .line 2554
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mTethering:Lcom/android/server/connectivity/Tethering;

    #@b
    invoke-virtual {v0}, Lcom/android/server/connectivity/Tethering;->getTetherableUsbRegexs()[Ljava/lang/String;

    #@e
    move-result-object v0

    #@f
    return-object v0

    #@10
    .line 2556
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
    .line 2561
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->enforceTetherAccessPermission()V

    #@3
    .line 2562
    invoke-virtual {p0}, Lcom/android/server/ConnectivityService;->isTetheringSupported()Z

    #@6
    move-result v0

    #@7
    if-eqz v0, :cond_0

    #@9
    .line 2563
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mTethering:Lcom/android/server/connectivity/Tethering;

    #@b
    invoke-virtual {v0}, Lcom/android/server/connectivity/Tethering;->getTetherableWifiRegexs()[Ljava/lang/String;

    #@e
    move-result-object v0

    #@f
    return-object v0

    #@10
    .line 2565
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
    .line 2605
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->enforceConnectivityInternalPermission()V

    #@3
    .line 2606
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
    .line 2595
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->enforceTetherAccessPermission()V

    #@3
    .line 2596
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
    .line 2600
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->enforceTetherAccessPermission()V

    #@3
    .line 2601
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
    .line 3119
    invoke-direct {p0, p1}, Lcom/android/server/ConnectivityService;->enforceCrossUserPermission(I)V

    #@4
    .line 3120
    iget-object v2, p0, Lcom/android/server/ConnectivityService;->mVpns:Landroid/util/SparseArray;

    #@6
    monitor-enter v2

    #@7
    .line 3121
    :try_start_0
    iget-object v1, p0, Lcom/android/server/ConnectivityService;->mVpns:Landroid/util/SparseArray;

    #@9
    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    #@c
    move-result-object v0

    #@d
    check-cast v0, Lcom/android/server/connectivity/Vpn;

    #@f
    .line 3122
    .local v0, "vpn":Lcom/android/server/connectivity/Vpn;
    if-eqz v0, :cond_0

    #@11
    .line 3123
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
    .line 3125
    return-object v3

    #@19
    .line 3120
    .end local v0    # "vpn":Lcom/android/server/connectivity/Vpn;
    :catchall_0
    move-exception v1

    #@1a
    monitor-exit v2

    #@1b
    throw v1
.end method

.method public isActiveNetworkMetered()Z
    .locals 4

    #@0
    .prologue
    .line 1239
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->enforceAccessPermission()V

    #@3
    .line 1240
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    #@6
    move-result v2

    #@7
    .line 1241
    .local v2, "uid":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    #@a
    move-result-wide v0

    #@b
    .line 1243
    .local v0, "token":J
    :try_start_0
    invoke-direct {p0, v2}, Lcom/android/server/ConnectivityService;->isActiveNetworkMeteredUnchecked(I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@e
    move-result v3

    #@f
    .line 1245
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@12
    .line 1243
    return v3

    #@13
    .line 1244
    :catchall_0
    move-exception v3

    #@14
    .line 1245
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@17
    .line 1244
    throw v3
.end method

.method public isNetworkSupported(I)Z
    .locals 1
    .param p1, "networkType"    # I

    #@0
    .prologue
    .line 1136
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->enforceAccessPermission()V

    #@3
    .line 1137
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mLegacyTypeTracker:Lcom/android/server/ConnectivityService$LegacyTypeTracker;

    #@5
    invoke-virtual {v0, p1}, Lcom/android/server/ConnectivityService$LegacyTypeTracker;->isTypeSupported(I)Z

    #@8
    move-result v0

    #@9
    return v0
.end method

.method public isTetheringSupported()Z
    .locals 5

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 2613
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->enforceTetherAccessPermission()V

    #@4
    .line 2614
    const-string/jumbo v3, "ro.tether.denied"

    #@7
    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    #@a
    move-result-object v3

    #@b
    const-string/jumbo v4, "true"

    #@e
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@11
    move-result v3

    #@12
    if-eqz v3, :cond_2

    #@14
    const/4 v0, 0x0

    #@15
    .line 2615
    .local v0, "defaultVal":I
    :goto_0
    iget-object v3, p0, Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;

    #@17
    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    #@1a
    move-result-object v3

    #@1b
    .line 2616
    const-string/jumbo v4, "tether_supported"

    #@1e
    .line 2615
    invoke-static {v3, v4, v0}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    #@21
    move-result v3

    #@22
    if-eqz v3, :cond_4

    #@24
    .line 2617
    iget-object v3, p0, Lcom/android/server/ConnectivityService;->mUserManager:Landroid/os/UserManager;

    #@26
    const-string/jumbo v4, "no_config_tethering"

    #@29
    invoke-virtual {v3, v4}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;)Z

    #@2c
    move-result v3

    #@2d
    if-eqz v3, :cond_3

    #@2f
    const/4 v1, 0x0

    #@30
    .line 2618
    .local v1, "tetherEnabledInSettings":Z
    :goto_1
    if-eqz v1, :cond_1

    #@32
    iget-object v3, p0, Lcom/android/server/ConnectivityService;->mTethering:Lcom/android/server/connectivity/Tethering;

    #@34
    invoke-virtual {v3}, Lcom/android/server/connectivity/Tethering;->getTetherableUsbRegexs()[Ljava/lang/String;

    #@37
    move-result-object v3

    #@38
    array-length v3, v3

    #@39
    if-nez v3, :cond_0

    #@3b
    .line 2619
    iget-object v3, p0, Lcom/android/server/ConnectivityService;->mTethering:Lcom/android/server/connectivity/Tethering;

    #@3d
    invoke-virtual {v3}, Lcom/android/server/connectivity/Tethering;->getTetherableWifiRegexs()[Ljava/lang/String;

    #@40
    move-result-object v3

    #@41
    array-length v3, v3

    #@42
    if-eqz v3, :cond_5

    #@44
    .line 2621
    :cond_0
    :goto_2
    iget-object v3, p0, Lcom/android/server/ConnectivityService;->mTethering:Lcom/android/server/connectivity/Tethering;

    #@46
    invoke-virtual {v3}, Lcom/android/server/connectivity/Tethering;->getUpstreamIfaceTypes()[I

    #@49
    move-result-object v3

    #@4a
    array-length v3, v3

    #@4b
    if-eqz v3, :cond_1

    #@4d
    const/4 v2, 0x1

    #@4e
    .line 2618
    :cond_1
    return v2

    #@4f
    .line 2614
    .end local v0    # "defaultVal":I
    .end local v1    # "tetherEnabledInSettings":Z
    :cond_2
    const/4 v0, 0x1

    #@50
    .restart local v0    # "defaultVal":I
    goto :goto_0

    #@51
    .line 2617
    :cond_3
    const/4 v1, 0x1

    #@52
    .restart local v1    # "tetherEnabledInSettings":Z
    goto :goto_1

    #@53
    .line 2615
    .end local v1    # "tetherEnabledInSettings":Z
    :cond_4
    const/4 v1, 0x0

    #@54
    .restart local v1    # "tetherEnabledInSettings":Z
    goto :goto_1

    #@55
    .line 2620
    :cond_5
    iget-object v3, p0, Lcom/android/server/ConnectivityService;->mTethering:Lcom/android/server/connectivity/Tethering;

    #@57
    invoke-virtual {v3}, Lcom/android/server/connectivity/Tethering;->getTetherableBluetoothRegexs()[Ljava/lang/String;

    #@5a
    move-result-object v3

    #@5b
    array-length v3, v3

    #@5c
    if-eqz v3, :cond_1

    #@5e
    goto :goto_2
.end method

.method public listenForNetwork(Landroid/net/NetworkCapabilities;Landroid/os/Messenger;Landroid/os/IBinder;)Landroid/net/NetworkRequest;
    .locals 6
    .param p1, "networkCapabilities"    # Landroid/net/NetworkCapabilities;
    .param p2, "messenger"    # Landroid/os/Messenger;
    .param p3, "binder"    # Landroid/os/IBinder;

    #@0
    .prologue
    .line 3693
    invoke-direct {p0, p1}, Lcom/android/server/ConnectivityService;->hasWifiNetworkListenPermission(Landroid/net/NetworkCapabilities;)Z

    #@3
    move-result v1

    #@4
    if-nez v1, :cond_0

    #@6
    .line 3694
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->enforceAccessPermission()V

    #@9
    .line 3697
    :cond_0
    new-instance v3, Landroid/net/NetworkRequest;

    #@b
    .line 3698
    new-instance v1, Landroid/net/NetworkCapabilities;

    #@d
    invoke-direct {v1, p1}, Landroid/net/NetworkCapabilities;-><init>(Landroid/net/NetworkCapabilities;)V

    #@10
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->nextNetworkRequestId()I

    #@13
    move-result v2

    #@14
    const/4 v4, -0x1

    #@15
    .line 3697
    invoke-direct {v3, v1, v4, v2}, Landroid/net/NetworkRequest;-><init>(Landroid/net/NetworkCapabilities;II)V

    #@18
    .line 3699
    .local v3, "networkRequest":Landroid/net/NetworkRequest;
    new-instance v0, Lcom/android/server/ConnectivityService$NetworkRequestInfo;

    #@1a
    .line 3700
    const/4 v5, 0x0

    #@1b
    move-object v1, p0

    #@1c
    move-object v2, p2

    #@1d
    move-object v4, p3

    #@1e
    .line 3699
    invoke-direct/range {v0 .. v5}, Lcom/android/server/ConnectivityService$NetworkRequestInfo;-><init>(Lcom/android/server/ConnectivityService;Landroid/os/Messenger;Landroid/net/NetworkRequest;Landroid/os/IBinder;Z)V

    #@21
    .line 3701
    .local v0, "nri":Lcom/android/server/ConnectivityService$NetworkRequestInfo;
    new-instance v1, Ljava/lang/StringBuilder;

    #@23
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@26
    const-string/jumbo v2, "listenForNetwork for "

    #@29
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2c
    move-result-object v1

    #@2d
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@30
    move-result-object v1

    #@31
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@34
    move-result-object v1

    #@35
    invoke-static {v1}, Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V

    #@38
    .line 3703
    iget-object v1, p0, Lcom/android/server/ConnectivityService;->mHandler:Lcom/android/server/ConnectivityService$InternalHandler;

    #@3a
    iget-object v2, p0, Lcom/android/server/ConnectivityService;->mHandler:Lcom/android/server/ConnectivityService$InternalHandler;

    #@3c
    const/16 v4, 0x15

    #@3e
    invoke-virtual {v2, v4, v0}, Lcom/android/server/ConnectivityService$InternalHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    #@41
    move-result-object v2

    #@42
    invoke-virtual {v1, v2}, Lcom/android/server/ConnectivityService$InternalHandler;->sendMessage(Landroid/os/Message;)Z

    #@45
    .line 3704
    return-object v3
.end method

.method protected notifyNetworkCallback(Lcom/android/server/connectivity/NetworkAgentInfo;Lcom/android/server/ConnectivityService$NetworkRequestInfo;)V
    .locals 2
    .param p1, "nai"    # Lcom/android/server/connectivity/NetworkAgentInfo;
    .param p2, "nri"    # Lcom/android/server/ConnectivityService$NetworkRequestInfo;

    #@0
    .prologue
    .line 4583
    const v0, 0x80002

    #@3
    .line 4590
    .local v0, "notifyType":I
    iget-object v1, p2, Lcom/android/server/ConnectivityService$NetworkRequestInfo;->mPendingIntent:Landroid/app/PendingIntent;

    #@5
    if-nez v1, :cond_0

    #@7
    .line 4591
    invoke-direct {p0, p2, p1, v0}, Lcom/android/server/ConnectivityService;->callCallbackForRequest(Lcom/android/server/ConnectivityService$NetworkRequestInfo;Lcom/android/server/connectivity/NetworkAgentInfo;I)V

    #@a
    .line 4582
    :goto_0
    return-void

    #@b
    .line 4593
    :cond_0
    invoke-direct {p0, p2, p1, v0}, Lcom/android/server/ConnectivityService;->sendPendingIntentForRequest(Lcom/android/server/ConnectivityService$NetworkRequestInfo;Lcom/android/server/connectivity/NetworkAgentInfo;I)V

    #@e
    goto :goto_0
.end method

.method protected notifyNetworkCallbacks(Lcom/android/server/connectivity/NetworkAgentInfo;I)V
    .locals 5
    .param p1, "networkAgent"    # Lcom/android/server/connectivity/NetworkAgentInfo;
    .param p2, "notifyType"    # I

    #@0
    .prologue
    .line 4644
    new-instance v3, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    const-string/jumbo v4, "notifyType "

    #@8
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b
    move-result-object v3

    #@c
    invoke-direct {p0, p2}, Lcom/android/server/ConnectivityService;->notifyTypeToName(I)Ljava/lang/String;

    #@f
    move-result-object v4

    #@10
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@13
    move-result-object v3

    #@14
    const-string/jumbo v4, " for "

    #@17
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1a
    move-result-object v3

    #@1b
    invoke-virtual {p1}, Lcom/android/server/connectivity/NetworkAgentInfo;->name()Ljava/lang/String;

    #@1e
    move-result-object v4

    #@1f
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@22
    move-result-object v3

    #@23
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@26
    move-result-object v3

    #@27
    invoke-static {v3}, Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V

    #@2a
    .line 4645
    const/4 v0, 0x0

    #@2b
    .local v0, "i":I
    :goto_0
    iget-object v3, p1, Lcom/android/server/connectivity/NetworkAgentInfo;->networkRequests:Landroid/util/SparseArray;

    #@2d
    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    #@30
    move-result v3

    #@31
    if-ge v0, v3, :cond_1

    #@33
    .line 4646
    iget-object v3, p1, Lcom/android/server/connectivity/NetworkAgentInfo;->networkRequests:Landroid/util/SparseArray;

    #@35
    invoke-virtual {v3, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    #@38
    move-result-object v1

    #@39
    check-cast v1, Landroid/net/NetworkRequest;

    #@3b
    .line 4647
    .local v1, "nr":Landroid/net/NetworkRequest;
    iget-object v3, p0, Lcom/android/server/ConnectivityService;->mNetworkRequests:Ljava/util/HashMap;

    #@3d
    invoke-virtual {v3, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@40
    move-result-object v2

    #@41
    check-cast v2, Lcom/android/server/ConnectivityService$NetworkRequestInfo;

    #@43
    .line 4649
    .local v2, "nri":Lcom/android/server/ConnectivityService$NetworkRequestInfo;
    iget-object v3, v2, Lcom/android/server/ConnectivityService$NetworkRequestInfo;->mPendingIntent:Landroid/app/PendingIntent;

    #@45
    if-nez v3, :cond_0

    #@47
    .line 4650
    invoke-direct {p0, v2, p1, p2}, Lcom/android/server/ConnectivityService;->callCallbackForRequest(Lcom/android/server/ConnectivityService$NetworkRequestInfo;Lcom/android/server/connectivity/NetworkAgentInfo;I)V

    #@4a
    .line 4645
    :goto_1
    add-int/lit8 v0, v0, 0x1

    #@4c
    goto :goto_0

    #@4d
    .line 4652
    :cond_0
    invoke-direct {p0, v2, p1, p2}, Lcom/android/server/ConnectivityService;->sendPendingIntentForRequest(Lcom/android/server/ConnectivityService$NetworkRequestInfo;Lcom/android/server/connectivity/NetworkAgentInfo;I)V

    #@50
    goto :goto_1

    #@51
    .line 4643
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
    .line 4091
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
    .line 4092
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mPendingIntentWakeLock:Landroid/os/PowerManager$WakeLock;

    #@19
    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    #@1c
    .line 4095
    invoke-direct {p0, p1}, Lcom/android/server/ConnectivityService;->releasePendingNetworkRequestWithDelay(Landroid/app/PendingIntent;)V

    #@1f
    .line 4090
    return-void
.end method

.method public pendingListenForNetwork(Landroid/net/NetworkCapabilities;Landroid/app/PendingIntent;)V
    .locals 5
    .param p1, "networkCapabilities"    # Landroid/net/NetworkCapabilities;
    .param p2, "operation"    # Landroid/app/PendingIntent;

    #@0
    .prologue
    .line 3710
    const-string/jumbo v2, "PendingIntent cannot be null."

    #@3
    invoke-static {p2, v2}, Lcom/android/server/ConnectivityService;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    #@6
    .line 3711
    invoke-direct {p0, p1}, Lcom/android/server/ConnectivityService;->hasWifiNetworkListenPermission(Landroid/net/NetworkCapabilities;)Z

    #@9
    move-result v2

    #@a
    if-nez v2, :cond_0

    #@c
    .line 3712
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->enforceAccessPermission()V

    #@f
    .line 3715
    :cond_0
    new-instance v0, Landroid/net/NetworkRequest;

    #@11
    .line 3716
    new-instance v2, Landroid/net/NetworkCapabilities;

    #@13
    invoke-direct {v2, p1}, Landroid/net/NetworkCapabilities;-><init>(Landroid/net/NetworkCapabilities;)V

    #@16
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->nextNetworkRequestId()I

    #@19
    move-result v3

    #@1a
    const/4 v4, -0x1

    #@1b
    .line 3715
    invoke-direct {v0, v2, v4, v3}, Landroid/net/NetworkRequest;-><init>(Landroid/net/NetworkCapabilities;II)V

    #@1e
    .line 3717
    .local v0, "networkRequest":Landroid/net/NetworkRequest;
    new-instance v1, Lcom/android/server/ConnectivityService$NetworkRequestInfo;

    #@20
    .line 3718
    const/4 v2, 0x0

    #@21
    .line 3717
    invoke-direct {v1, p0, v0, p2, v2}, Lcom/android/server/ConnectivityService$NetworkRequestInfo;-><init>(Lcom/android/server/ConnectivityService;Landroid/net/NetworkRequest;Landroid/app/PendingIntent;Z)V

    #@24
    .line 3719
    .local v1, "nri":Lcom/android/server/ConnectivityService$NetworkRequestInfo;
    new-instance v2, Ljava/lang/StringBuilder;

    #@26
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@29
    const-string/jumbo v3, "pendingListenForNetwork for "

    #@2c
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2f
    move-result-object v2

    #@30
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@33
    move-result-object v2

    #@34
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@37
    move-result-object v2

    #@38
    invoke-static {v2}, Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V

    #@3b
    .line 3721
    iget-object v2, p0, Lcom/android/server/ConnectivityService;->mHandler:Lcom/android/server/ConnectivityService$InternalHandler;

    #@3d
    iget-object v3, p0, Lcom/android/server/ConnectivityService;->mHandler:Lcom/android/server/ConnectivityService$InternalHandler;

    #@3f
    const/16 v4, 0x15

    #@41
    invoke-virtual {v3, v4, v1}, Lcom/android/server/ConnectivityService$InternalHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    #@44
    move-result-object v3

    #@45
    invoke-virtual {v2, v3}, Lcom/android/server/ConnectivityService$InternalHandler;->sendMessage(Landroid/os/Message;)Z

    #@48
    .line 3709
    return-void
.end method

.method public pendingRequestForNetwork(Landroid/net/NetworkCapabilities;Landroid/app/PendingIntent;)Landroid/net/NetworkRequest;
    .locals 6
    .param p1, "networkCapabilities"    # Landroid/net/NetworkCapabilities;
    .param p2, "operation"    # Landroid/app/PendingIntent;

    #@0
    .prologue
    .line 3639
    const-string/jumbo v3, "PendingIntent cannot be null."

    #@3
    invoke-static {p2, v3}, Lcom/android/server/ConnectivityService;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    #@6
    .line 3640
    new-instance v0, Landroid/net/NetworkCapabilities;

    #@8
    invoke-direct {v0, p1}, Landroid/net/NetworkCapabilities;-><init>(Landroid/net/NetworkCapabilities;)V

    #@b
    .line 3641
    .end local p1    # "networkCapabilities":Landroid/net/NetworkCapabilities;
    .local v0, "networkCapabilities":Landroid/net/NetworkCapabilities;
    invoke-direct {p0, v0}, Lcom/android/server/ConnectivityService;->enforceNetworkRequestPermissions(Landroid/net/NetworkCapabilities;)V

    #@e
    .line 3642
    invoke-direct {p0, v0}, Lcom/android/server/ConnectivityService;->enforceMeteredApnPolicy(Landroid/net/NetworkCapabilities;)V

    #@11
    .line 3643
    invoke-direct {p0, v0}, Lcom/android/server/ConnectivityService;->ensureImmutableCapabilities(Landroid/net/NetworkCapabilities;)V

    #@14
    .line 3645
    new-instance v1, Landroid/net/NetworkRequest;

    #@16
    .line 3646
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->nextNetworkRequestId()I

    #@19
    move-result v3

    #@1a
    .line 3645
    const/4 v4, -0x1

    #@1b
    invoke-direct {v1, v0, v4, v3}, Landroid/net/NetworkRequest;-><init>(Landroid/net/NetworkCapabilities;II)V

    #@1e
    .line 3647
    .local v1, "networkRequest":Landroid/net/NetworkRequest;
    new-instance v2, Lcom/android/server/ConnectivityService$NetworkRequestInfo;

    #@20
    .line 3648
    const/4 v3, 0x1

    #@21
    .line 3647
    invoke-direct {v2, p0, v1, p2, v3}, Lcom/android/server/ConnectivityService$NetworkRequestInfo;-><init>(Lcom/android/server/ConnectivityService;Landroid/net/NetworkRequest;Landroid/app/PendingIntent;Z)V

    #@24
    .line 3649
    .local v2, "nri":Lcom/android/server/ConnectivityService$NetworkRequestInfo;
    new-instance v3, Ljava/lang/StringBuilder;

    #@26
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@29
    const-string/jumbo v4, "pendingRequest for "

    #@2c
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2f
    move-result-object v3

    #@30
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@33
    move-result-object v3

    #@34
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@37
    move-result-object v3

    #@38
    invoke-static {v3}, Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V

    #@3b
    .line 3650
    iget-object v3, p0, Lcom/android/server/ConnectivityService;->mHandler:Lcom/android/server/ConnectivityService$InternalHandler;

    #@3d
    iget-object v4, p0, Lcom/android/server/ConnectivityService;->mHandler:Lcom/android/server/ConnectivityService$InternalHandler;

    #@3f
    const/16 v5, 0x1a

    #@41
    invoke-virtual {v4, v5, v2}, Lcom/android/server/ConnectivityService$InternalHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    #@44
    move-result-object v4

    #@45
    invoke-virtual {v3, v4}, Lcom/android/server/ConnectivityService$InternalHandler;->sendMessage(Landroid/os/Message;)Z

    #@48
    .line 3652
    return-object v1
.end method

.method public prepareVpn(Ljava/lang/String;Ljava/lang/String;I)Z
    .locals 3
    .param p1, "oldPackage"    # Ljava/lang/String;
    .param p2, "newPackage"    # Ljava/lang/String;
    .param p3, "userId"    # I

    #@0
    .prologue
    .line 2973
    invoke-direct {p0, p3}, Lcom/android/server/ConnectivityService;->enforceCrossUserPermission(I)V

    #@3
    .line 2974
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->throwIfLockdownEnabled()V

    #@6
    .line 2976
    iget-object v2, p0, Lcom/android/server/ConnectivityService;->mVpns:Landroid/util/SparseArray;

    #@8
    monitor-enter v2

    #@9
    .line 2977
    :try_start_0
    iget-object v1, p0, Lcom/android/server/ConnectivityService;->mVpns:Landroid/util/SparseArray;

    #@b
    invoke-virtual {v1, p3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    #@e
    move-result-object v0

    #@f
    check-cast v0, Lcom/android/server/connectivity/Vpn;

    #@11
    .line 2978
    .local v0, "vpn":Lcom/android/server/connectivity/Vpn;
    if-eqz v0, :cond_0

    #@13
    .line 2979
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
    .line 2981
    :cond_0
    const/4 v1, 0x0

    #@1a
    monitor-exit v2

    #@1b
    return v1

    #@1c
    .line 2976
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
    .line 3802
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->enforceConnectivityInternalPermission()V

    #@3
    .line 3806
    new-instance v1, Lcom/android/server/connectivity/NetworkAgentInfo;

    #@5
    new-instance v3, Lcom/android/internal/util/AsyncChannel;

    #@7
    invoke-direct {v3}, Lcom/android/internal/util/AsyncChannel;-><init>()V

    #@a
    .line 3807
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
    .line 3808
    new-instance v7, Landroid/net/NetworkCapabilities;

    #@23
    move-object/from16 v0, p4

    #@25
    invoke-direct {v7, v0}, Landroid/net/NetworkCapabilities;-><init>(Landroid/net/NetworkCapabilities;)V

    #@28
    .line 3809
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
    .line 3806
    invoke-direct/range {v1 .. v13}, Lcom/android/server/connectivity/NetworkAgentInfo;-><init>(Landroid/os/Messenger;Lcom/android/internal/util/AsyncChannel;Landroid/net/Network;Landroid/net/NetworkInfo;Landroid/net/LinkProperties;Landroid/net/NetworkCapabilities;ILandroid/content/Context;Landroid/os/Handler;Landroid/net/NetworkMisc;Landroid/net/NetworkRequest;Lcom/android/server/ConnectivityService;)V

    #@3c
    .line 3810
    .local v1, "nai":Lcom/android/server/connectivity/NetworkAgentInfo;
    monitor-enter p0

    #@3d
    .line 3811
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
    .line 3813
    iget-object v2, v1, Lcom/android/server/connectivity/NetworkAgentInfo;->networkMonitor:Lcom/android/server/connectivity/NetworkMonitor;

    #@46
    invoke-virtual {v2}, Lcom/android/server/connectivity/NetworkMonitor;->getValidationLogs()Landroid/util/LocalLog$ReadOnlyLocalLog;

    #@49
    move-result-object v2

    #@4a
    iget-object v3, v1, Lcom/android/server/connectivity/NetworkAgentInfo;->network:Landroid/net/Network;

    #@4c
    invoke-direct {p0, v2, v3}, Lcom/android/server/ConnectivityService;->addValidationLogs(Landroid/util/LocalLog$ReadOnlyLocalLog;Landroid/net/Network;)V

    #@4f
    .line 3814
    new-instance v2, Ljava/lang/StringBuilder;

    #@51
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@54
    const-string/jumbo v3, "registerNetworkAgent "

    #@57
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5a
    move-result-object v2

    #@5b
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@5e
    move-result-object v2

    #@5f
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@62
    move-result-object v2

    #@63
    invoke-static {v2}, Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V

    #@66
    .line 3815
    iget-object v2, p0, Lcom/android/server/ConnectivityService;->mHandler:Lcom/android/server/ConnectivityService$InternalHandler;

    #@68
    iget-object v3, p0, Lcom/android/server/ConnectivityService;->mHandler:Lcom/android/server/ConnectivityService$InternalHandler;

    #@6a
    const/16 v4, 0x12

    #@6c
    invoke-virtual {v3, v4, v1}, Lcom/android/server/ConnectivityService$InternalHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    #@6f
    move-result-object v3

    #@70
    invoke-virtual {v2, v3}, Lcom/android/server/ConnectivityService$InternalHandler;->sendMessage(Landroid/os/Message;)Z

    #@73
    .line 3816
    iget-object v2, v1, Lcom/android/server/connectivity/NetworkAgentInfo;->network:Landroid/net/Network;

    #@75
    iget v2, v2, Landroid/net/Network;->netId:I

    #@77
    return v2

    #@78
    .line 3810
    :catchall_0
    move-exception v2

    #@79
    monitor-exit p0

    #@7a
    throw v2
.end method

.method public registerNetworkFactory(Landroid/os/Messenger;Ljava/lang/String;)V
    .locals 4
    .param p1, "messenger"    # Landroid/os/Messenger;
    .param p2, "name"    # Ljava/lang/String;

    #@0
    .prologue
    .line 3732
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->enforceConnectivityInternalPermission()V

    #@3
    .line 3733
    new-instance v0, Lcom/android/server/ConnectivityService$NetworkFactoryInfo;

    #@5
    new-instance v1, Lcom/android/internal/util/AsyncChannel;

    #@7
    invoke-direct {v1}, Lcom/android/internal/util/AsyncChannel;-><init>()V

    #@a
    invoke-direct {v0, p2, p1, v1}, Lcom/android/server/ConnectivityService$NetworkFactoryInfo;-><init>(Ljava/lang/String;Landroid/os/Messenger;Lcom/android/internal/util/AsyncChannel;)V

    #@d
    .line 3734
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
    .line 3731
    return-void
.end method

.method public releaseNetworkRequest(Landroid/net/NetworkRequest;)V
    .locals 5
    .param p1, "networkRequest"    # Landroid/net/NetworkRequest;

    #@0
    .prologue
    .line 3726
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mHandler:Lcom/android/server/ConnectivityService$InternalHandler;

    #@2
    iget-object v1, p0, Lcom/android/server/ConnectivityService;->mHandler:Lcom/android/server/ConnectivityService$InternalHandler;

    #@4
    invoke-static {}, Lcom/android/server/ConnectivityService;->getCallingUid()I

    #@7
    move-result v2

    #@8
    const/16 v3, 0x16

    #@a
    .line 3727
    const/4 v4, 0x0

    #@b
    .line 3726
    invoke-virtual {v1, v3, v2, v4, p1}, Lcom/android/server/ConnectivityService$InternalHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    #@e
    move-result-object v1

    #@f
    invoke-virtual {v0, v1}, Lcom/android/server/ConnectivityService$InternalHandler;->sendMessage(Landroid/os/Message;)Z

    #@12
    .line 3725
    return-void
.end method

.method public releasePendingNetworkRequest(Landroid/app/PendingIntent;)V
    .locals 5
    .param p1, "operation"    # Landroid/app/PendingIntent;

    #@0
    .prologue
    .line 3663
    const-string/jumbo v0, "PendingIntent cannot be null."

    #@3
    invoke-static {p1, v0}, Lcom/android/server/ConnectivityService;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    #@6
    .line 3664
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mHandler:Lcom/android/server/ConnectivityService$InternalHandler;

    #@8
    iget-object v1, p0, Lcom/android/server/ConnectivityService;->mHandler:Lcom/android/server/ConnectivityService$InternalHandler;

    #@a
    .line 3665
    invoke-static {}, Lcom/android/server/ConnectivityService;->getCallingUid()I

    #@d
    move-result v2

    #@e
    .line 3664
    const/16 v3, 0x1b

    #@10
    .line 3665
    const/4 v4, 0x0

    #@11
    .line 3664
    invoke-virtual {v1, v3, v2, v4, p1}, Lcom/android/server/ConnectivityService$InternalHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    #@14
    move-result-object v1

    #@15
    invoke-virtual {v0, v1}, Lcom/android/server/ConnectivityService$InternalHandler;->sendMessage(Landroid/os/Message;)Z

    #@18
    .line 3662
    return-void
.end method

.method public removeVpnAddress(Ljava/lang/String;I)Z
    .locals 3
    .param p1, "address"    # Ljava/lang/String;
    .param p2, "prefixLength"    # I

    #@0
    .prologue
    .line 4692
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->throwIfLockdownEnabled()V

    #@3
    .line 4693
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    #@6
    move-result v1

    #@7
    invoke-static {v1}, Landroid/os/UserHandle;->getUserId(I)I

    #@a
    move-result v0

    #@b
    .line 4694
    .local v0, "user":I
    iget-object v2, p0, Lcom/android/server/ConnectivityService;->mVpns:Landroid/util/SparseArray;

    #@d
    monitor-enter v2

    #@e
    .line 4695
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
    .line 4694
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
    .line 2644
    iget-object v1, p0, Lcom/android/server/ConnectivityService;->mLegacyTypeTracker:Lcom/android/server/ConnectivityService$LegacyTypeTracker;

    #@2
    invoke-virtual {v1, p1}, Lcom/android/server/ConnectivityService$LegacyTypeTracker;->getNetworkForType(I)Lcom/android/server/connectivity/NetworkAgentInfo;

    #@5
    move-result-object v0

    #@6
    .line 2645
    .local v0, "nai":Lcom/android/server/connectivity/NetworkAgentInfo;
    if-nez v0, :cond_0

    #@8
    return-void

    #@9
    .line 2646
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
    .line 2643
    return-void

    #@14
    .line 2646
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
    .line 2650
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->enforceAccessPermission()V

    #@3
    .line 2651
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->enforceInternetPermission()V

    #@6
    .line 2654
    if-nez p1, :cond_1

    #@8
    .line 2655
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->getDefaultNetwork()Lcom/android/server/connectivity/NetworkAgentInfo;

    #@b
    move-result-object v0

    #@c
    .line 2659
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
    .line 2661
    :cond_0
    return-void

    #@19
    .line 2657
    .end local v0    # "nai":Lcom/android/server/connectivity/NetworkAgentInfo;
    :cond_1
    invoke-direct {p0, p1}, Lcom/android/server/ConnectivityService;->getNetworkAgentInfoForNetwork(Landroid/net/Network;)Lcom/android/server/connectivity/NetworkAgentInfo;

    #@1c
    move-result-object v0

    #@1d
    .restart local v0    # "nai":Lcom/android/server/connectivity/NetworkAgentInfo;
    goto :goto_0

    #@1e
    .line 2660
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
    .line 2664
    iget-boolean v2, v0, Lcom/android/server/connectivity/NetworkAgentInfo;->lastValidated:Z

    #@2a
    if-ne p2, v2, :cond_3

    #@2c
    return-void

    #@2d
    .line 2665
    :cond_3
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    #@30
    move-result v1

    #@31
    .line 2667
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
    .line 2668
    const-string/jumbo v3, ") by "

    #@53
    .line 2667
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
    .line 2670
    monitor-enter v0

    #@63
    .line 2673
    :try_start_0
    iget-boolean v2, v0, Lcom/android/server/connectivity/NetworkAgentInfo;->created:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@65
    if-nez v2, :cond_4

    #@67
    monitor-exit v0

    #@68
    return-void

    #@69
    .line 2675
    :cond_4
    :try_start_1
    iget-object v2, v0, Lcom/android/server/connectivity/NetworkAgentInfo;->linkProperties:Landroid/net/LinkProperties;

    #@6b
    invoke-direct {p0, v2, v1}, Lcom/android/server/ConnectivityService;->isNetworkWithLinkPropertiesBlocked(Landroid/net/LinkProperties;I)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@6e
    move-result v2

    #@6f
    if-eqz v2, :cond_5

    #@71
    monitor-exit v0

    #@72
    return-void

    #@73
    .line 2677
    :cond_5
    :try_start_2
    iget-object v2, v0, Lcom/android/server/connectivity/NetworkAgentInfo;->networkMonitor:Lcom/android/server/connectivity/NetworkMonitor;

    #@75
    const v3, 0x82008

    #@78
    invoke-virtual {v2, v3, v1}, Lcom/android/server/connectivity/NetworkMonitor;->sendMessage(II)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@7b
    monitor-exit v0

    #@7c
    .line 2649
    return-void

    #@7d
    .line 2670
    :catchall_0
    move-exception v2

    #@7e
    monitor-exit v0

    #@7f
    throw v2
.end method

.method public requestBandwidthUpdate(Landroid/net/Network;)Z
    .locals 5
    .param p1, "network"    # Landroid/net/Network;

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 3604
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->enforceAccessPermission()V

    #@4
    .line 3605
    const/4 v0, 0x0

    #@5
    .line 3606
    .local v0, "nai":Lcom/android/server/connectivity/NetworkAgentInfo;
    if-nez p1, :cond_0

    #@7
    .line 3607
    return v4

    #@8
    .line 3609
    :cond_0
    iget-object v2, p0, Lcom/android/server/ConnectivityService;->mNetworkForNetId:Landroid/util/SparseArray;

    #@a
    monitor-enter v2

    #@b
    .line 3610
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
    .line 3612
    if-eqz v0, :cond_1

    #@18
    .line 3613
    iget-object v1, v0, Lcom/android/server/connectivity/NetworkAgentInfo;->asyncChannel:Lcom/android/internal/util/AsyncChannel;

    #@1a
    const v2, 0x8100a

    #@1d
    invoke-virtual {v1, v2}, Lcom/android/internal/util/AsyncChannel;->sendMessage(I)V

    #@20
    .line 3614
    const/4 v1, 0x1

    #@21
    return v1

    #@22
    .line 3609
    .end local v0    # "nai":Lcom/android/server/connectivity/NetworkAgentInfo;
    :catchall_0
    move-exception v1

    #@23
    monitor-exit v2

    #@24
    throw v1

    #@25
    .line 3616
    .restart local v0    # "nai":Lcom/android/server/connectivity/NetworkAgentInfo;
    :cond_1
    return v4
.end method

.method public requestNetwork(Landroid/net/NetworkCapabilities;Landroid/os/Messenger;ILandroid/os/IBinder;I)Landroid/net/NetworkRequest;
    .locals 7
    .param p1, "networkCapabilities"    # Landroid/net/NetworkCapabilities;
    .param p2, "messenger"    # Landroid/os/Messenger;
    .param p3, "timeoutMs"    # I
    .param p4, "binder"    # Landroid/os/IBinder;
    .param p5, "legacyType"    # I

    #@0
    .prologue
    .line 3571
    new-instance v6, Landroid/net/NetworkCapabilities;

    #@2
    invoke-direct {v6, p1}, Landroid/net/NetworkCapabilities;-><init>(Landroid/net/NetworkCapabilities;)V

    #@5
    .line 3572
    .end local p1    # "networkCapabilities":Landroid/net/NetworkCapabilities;
    .local v6, "networkCapabilities":Landroid/net/NetworkCapabilities;
    invoke-direct {p0, v6}, Lcom/android/server/ConnectivityService;->enforceNetworkRequestPermissions(Landroid/net/NetworkCapabilities;)V

    #@8
    .line 3573
    invoke-direct {p0, v6}, Lcom/android/server/ConnectivityService;->enforceMeteredApnPolicy(Landroid/net/NetworkCapabilities;)V

    #@b
    .line 3574
    invoke-direct {p0, v6}, Lcom/android/server/ConnectivityService;->ensureImmutableCapabilities(Landroid/net/NetworkCapabilities;)V

    #@e
    .line 3576
    if-ltz p3, :cond_0

    #@10
    const v1, 0x5b8d80

    #@13
    if-le p3, v1, :cond_1

    #@15
    .line 3577
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    #@17
    const-string/jumbo v2, "Bad timeout specified"

    #@1a
    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@1d
    throw v1

    #@1e
    .line 3580
    :cond_1
    new-instance v3, Landroid/net/NetworkRequest;

    #@20
    .line 3581
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->nextNetworkRequestId()I

    #@23
    move-result v1

    #@24
    .line 3580
    invoke-direct {v3, v6, p5, v1}, Landroid/net/NetworkRequest;-><init>(Landroid/net/NetworkCapabilities;II)V

    #@27
    .line 3582
    .local v3, "networkRequest":Landroid/net/NetworkRequest;
    new-instance v0, Lcom/android/server/ConnectivityService$NetworkRequestInfo;

    #@29
    .line 3583
    const/4 v5, 0x1

    #@2a
    move-object v1, p0

    #@2b
    move-object v2, p2

    #@2c
    move-object v4, p4

    #@2d
    .line 3582
    invoke-direct/range {v0 .. v5}, Lcom/android/server/ConnectivityService$NetworkRequestInfo;-><init>(Lcom/android/server/ConnectivityService;Landroid/os/Messenger;Landroid/net/NetworkRequest;Landroid/os/IBinder;Z)V

    #@30
    .line 3584
    .local v0, "nri":Lcom/android/server/ConnectivityService$NetworkRequestInfo;
    new-instance v1, Ljava/lang/StringBuilder;

    #@32
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@35
    const-string/jumbo v2, "requestNetwork for "

    #@38
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3b
    move-result-object v1

    #@3c
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@3f
    move-result-object v1

    #@40
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@43
    move-result-object v1

    #@44
    invoke-static {v1}, Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V

    #@47
    .line 3586
    iget-object v1, p0, Lcom/android/server/ConnectivityService;->mHandler:Lcom/android/server/ConnectivityService$InternalHandler;

    #@49
    iget-object v2, p0, Lcom/android/server/ConnectivityService;->mHandler:Lcom/android/server/ConnectivityService$InternalHandler;

    #@4b
    const/16 v4, 0x13

    #@4d
    invoke-virtual {v2, v4, v0}, Lcom/android/server/ConnectivityService$InternalHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    #@50
    move-result-object v2

    #@51
    invoke-virtual {v1, v2}, Lcom/android/server/ConnectivityService$InternalHandler;->sendMessage(Landroid/os/Message;)Z

    #@54
    .line 3587
    if-lez p3, :cond_2

    #@56
    .line 3588
    iget-object v1, p0, Lcom/android/server/ConnectivityService;->mHandler:Lcom/android/server/ConnectivityService$InternalHandler;

    #@58
    iget-object v2, p0, Lcom/android/server/ConnectivityService;->mHandler:Lcom/android/server/ConnectivityService$InternalHandler;

    #@5a
    const/16 v4, 0x14

    #@5c
    invoke-virtual {v2, v4, v0}, Lcom/android/server/ConnectivityService$InternalHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    #@5f
    move-result-object v2

    #@60
    .line 3589
    int-to-long v4, p3

    #@61
    .line 3588
    invoke-virtual {v1, v2, v4, v5}, Lcom/android/server/ConnectivityService$InternalHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    #@64
    .line 3591
    :cond_2
    return-object v3
.end method

.method public requestRouteToHostAddress(I[B)Z
    .locals 13
    .param p1, "networkType"    # I
    .param p2, "hostAddress"    # [B

    #@0
    .prologue
    const/4 v12, 0x0

    #@1
    .line 1278
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->enforceChangePermission()V

    #@4
    .line 1279
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
    .line 1280
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->enforceConnectivityInternalPermission()V

    #@13
    .line 1285
    :cond_0
    :try_start_0
    invoke-static {p2}, Ljava/net/InetAddress;->getByAddress([B)Ljava/net/InetAddress;
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0

    #@16
    move-result-object v0

    #@17
    .line 1291
    .local v0, "addr":Ljava/net/InetAddress;
    invoke-static {p1}, Landroid/net/ConnectivityManager;->isNetworkTypeValid(I)Z

    #@1a
    move-result v10

    #@1b
    if-nez v10, :cond_1

    #@1d
    .line 1292
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
    .line 1293
    return v12

    #@35
    .line 1286
    .end local v0    # "addr":Ljava/net/InetAddress;
    :catch_0
    move-exception v1

    #@36
    .line 1287
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
    .line 1288
    return v12

    #@52
    .line 1296
    .end local v1    # "e":Ljava/net/UnknownHostException;
    .restart local v0    # "addr":Ljava/net/InetAddress;
    :cond_1
    iget-object v10, p0, Lcom/android/server/ConnectivityService;->mLegacyTypeTracker:Lcom/android/server/ConnectivityService$LegacyTypeTracker;

    #@54
    invoke-virtual {v10, p1}, Lcom/android/server/ConnectivityService$LegacyTypeTracker;->getNetworkForType(I)Lcom/android/server/connectivity/NetworkAgentInfo;

    #@57
    move-result-object v3

    #@58
    .line 1297
    .local v3, "nai":Lcom/android/server/connectivity/NetworkAgentInfo;
    if-nez v3, :cond_3

    #@5a
    .line 1298
    iget-object v10, p0, Lcom/android/server/ConnectivityService;->mLegacyTypeTracker:Lcom/android/server/ConnectivityService$LegacyTypeTracker;

    #@5c
    invoke-virtual {v10, p1}, Lcom/android/server/ConnectivityService$LegacyTypeTracker;->isTypeSupported(I)Z

    #@5f
    move-result v10

    #@60
    if-nez v10, :cond_2

    #@62
    .line 1299
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
    .line 1303
    :goto_0
    return v12

    #@7a
    .line 1301
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
    .line 1307
    :cond_3
    monitor-enter v3

    #@93
    .line 1308
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
    .line 1311
    sget-object v10, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    #@9c
    if-eq v5, v10, :cond_4

    #@9e
    sget-object v10, Landroid/net/NetworkInfo$DetailedState;->CAPTIVE_PORTAL_CHECK:Landroid/net/NetworkInfo$DetailedState;

    #@a0
    if-eq v5, v10, :cond_4

    #@a2
    .line 1317
    return v12

    #@a3
    .line 1307
    .end local v5    # "netState":Landroid/net/NetworkInfo$DetailedState;
    :catchall_0
    move-exception v10

    #@a4
    monitor-exit v3

    #@a5
    throw v10

    #@a6
    .line 1320
    .restart local v5    # "netState":Landroid/net/NetworkInfo$DetailedState;
    :cond_4
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    #@a9
    move-result v7

    #@aa
    .line 1321
    .local v7, "uid":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    #@ad
    move-result-wide v8

    #@ae
    .line 1325
    .local v8, "token":J
    :try_start_2
    monitor-enter v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    #@af
    .line 1326
    :try_start_3
    iget-object v2, v3, Lcom/android/server/connectivity/NetworkAgentInfo;->linkProperties:Landroid/net/LinkProperties;

    #@b1
    .line 1327
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
    .line 1329
    invoke-direct {p0, v2, v0, v4, v7}, Lcom/android/server/ConnectivityService;->addLegacyRouteToHost(Landroid/net/LinkProperties;Ljava/net/InetAddress;II)Z

    #@b9
    move-result v6

    #@ba
    .line 1330
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
    .line 1333
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@d4
    .line 1331
    return v6

    #@d5
    .line 1325
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
    .line 1332
    :catchall_2
    move-exception v10

    #@d9
    .line 1333
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@dc
    .line 1332
    throw v10
.end method

.method protected reserveNetId()I
    .locals 5

    #@0
    .prologue
    const v4, 0xffff

    #@3
    .line 813
    iget-object v3, p0, Lcom/android/server/ConnectivityService;->mNetworkForNetId:Landroid/util/SparseArray;

    #@5
    monitor-enter v3

    #@6
    .line 814
    const/16 v0, 0x64

    #@8
    .local v0, "i":I
    :goto_0
    if-gt v0, v4, :cond_2

    #@a
    .line 815
    :try_start_0
    iget v1, p0, Lcom/android/server/ConnectivityService;->mNextNetId:I

    #@c
    .line 816
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
    .line 818
    :cond_0
    iget-object v2, p0, Lcom/android/server/ConnectivityService;->mNetIdInUse:Landroid/util/SparseBooleanArray;

    #@1a
    invoke-virtual {v2, v1}, Landroid/util/SparseBooleanArray;->get(I)Z

    #@1d
    move-result v2

    #@1e
    if-nez v2, :cond_1

    #@20
    .line 819
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
    .line 820
    return v1

    #@28
    .line 814
    :cond_1
    add-int/lit8 v0, v0, 0x1

    #@2a
    goto :goto_0

    #@2b
    .end local v1    # "netId":I
    :cond_2
    monitor-exit v3

    #@2c
    .line 824
    new-instance v2, Ljava/lang/IllegalStateException;

    #@2e
    const-string/jumbo v3, "No free netIds"

    #@31
    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@34
    throw v2

    #@35
    .line 813
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
    .line 1454
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->enforceConnectivityInternalPermission()V

    #@3
    .line 1455
    const-string/jumbo v0, "android.net.conn.CONNECTIVITY_CHANGE"

    #@6
    invoke-direct {p0, p1, v0}, Lcom/android/server/ConnectivityService;->sendGeneralBroadcast(Landroid/net/NetworkInfo;Ljava/lang/String;)V

    #@9
    .line 1453
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
    .line 2349
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->enforceConnectivityInternalPermission()V

    #@5
    .line 2350
    iget-object v3, p0, Lcom/android/server/ConnectivityService;->mHandler:Lcom/android/server/ConnectivityService$InternalHandler;

    #@7
    iget-object v4, p0, Lcom/android/server/ConnectivityService;->mHandler:Lcom/android/server/ConnectivityService$InternalHandler;

    #@9
    .line 2351
    if-eqz p2, :cond_0

    #@b
    move v2, v0

    #@c
    :goto_0
    if-eqz p3, :cond_1

    #@e
    .line 2350
    :goto_1
    const/16 v1, 0x1c

    #@10
    invoke-virtual {v4, v1, v2, v0, p1}, Lcom/android/server/ConnectivityService$InternalHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    #@13
    move-result-object v0

    #@14
    invoke-virtual {v3, v0}, Lcom/android/server/ConnectivityService$InternalHandler;->sendMessage(Landroid/os/Message;)Z

    #@17
    .line 2348
    return-void

    #@18
    :cond_0
    move v2, v1

    #@19
    .line 2351
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
    .line 3425
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->enforceConnectivityInternalPermission()V

    #@3
    .line 3426
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    #@6
    move-result-wide v2

    #@7
    .line 3428
    .local v2, "ident":J
    :try_start_0
    iget-object v4, p0, Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;

    #@9
    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    #@c
    move-result-object v0

    #@d
    .line 3429
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
    .line 3430
    new-instance v1, Landroid/content/Intent;

    #@18
    const-string/jumbo v4, "android.intent.action.AIRPLANE_MODE"

    #@1b
    invoke-direct {v1, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    #@1e
    .line 3431
    .local v1, "intent":Landroid/content/Intent;
    const-string/jumbo v4, "state"

    #@21
    invoke-virtual {v1, v4, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    #@24
    .line 3432
    iget-object v4, p0, Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;

    #@26
    sget-object v5, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    #@28
    invoke-virtual {v4, v1, v5}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@2b
    .line 3434
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@2e
    .line 3424
    return-void

    #@2f
    .line 3429
    .end local v1    # "intent":Landroid/content/Intent;
    :cond_0
    const/4 v4, 0x0

    #@30
    goto :goto_0

    #@31
    .line 3433
    .end local v0    # "cr":Landroid/content/ContentResolver;
    :catchall_0
    move-exception v4

    #@32
    .line 3434
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@35
    .line 3433
    throw v4
.end method

.method public setGlobalProxy(Landroid/net/ProxyInfo;)V
    .locals 10
    .param p1, "proxyProperties"    # Landroid/net/ProxyInfo;

    #@0
    .prologue
    .line 2738
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->enforceConnectivityInternalPermission()V

    #@3
    .line 2740
    iget-object v8, p0, Lcom/android/server/ConnectivityService;->mProxyLock:Ljava/lang/Object;

    #@5
    monitor-enter v8

    #@6
    .line 2741
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
    .line 2742
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
    .line 2743
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
    .line 2745
    :cond_2
    :try_start_3
    const-string/jumbo v1, ""

    #@29
    .line 2746
    .local v1, "host":Ljava/lang/String;
    const/4 v3, 0x0

    #@2a
    .line 2747
    .local v3, "port":I
    const-string/jumbo v0, ""

    #@2d
    .line 2748
    .local v0, "exclList":Ljava/lang/String;
    const-string/jumbo v2, ""

    #@30
    .line 2749
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
    .line 2750
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
    .line 2764
    :cond_3
    const/4 v5, 0x0

    #@49
    iput-object v5, p0, Lcom/android/server/ConnectivityService;->mGlobalProxy:Landroid/net/ProxyInfo;

    #@4b
    .line 2766
    :cond_4
    :goto_0
    iget-object v5, p0, Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;

    #@4d
    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    #@50
    move-result-object v4

    #@51
    .line 2767
    .local v4, "res":Landroid/content/ContentResolver;
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    #@54
    move-result-wide v6

    #@55
    .line 2769
    .local v6, "token":J
    :try_start_4
    const-string/jumbo v5, "global_http_proxy_host"

    #@58
    invoke-static {v4, v5, v1}, Landroid/provider/Settings$Global;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    #@5b
    .line 2770
    const-string/jumbo v5, "global_http_proxy_port"

    #@5e
    invoke-static {v4, v5, v3}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    #@61
    .line 2771
    const-string/jumbo v5, "global_http_proxy_exclusion_list"

    #@64
    invoke-static {v4, v5, v0}, Landroid/provider/Settings$Global;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    #@67
    .line 2773
    const-string/jumbo v5, "global_proxy_pac_url"

    #@6a
    invoke-static {v4, v5, v2}, Landroid/provider/Settings$Global;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    #@6d
    .line 2775
    :try_start_5
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@70
    .line 2778
    iget-object v5, p0, Lcom/android/server/ConnectivityService;->mGlobalProxy:Landroid/net/ProxyInfo;

    #@72
    if-nez v5, :cond_5

    #@74
    .line 2779
    iget-object p1, p0, Lcom/android/server/ConnectivityService;->mDefaultProxy:Landroid/net/ProxyInfo;

    #@76
    .line 2781
    :cond_5
    invoke-direct {p0, p1}, Lcom/android/server/ConnectivityService;->sendProxyBroadcast(Landroid/net/ProxyInfo;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    #@79
    monitor-exit v8

    #@7a
    .line 2737
    return-void

    #@7b
    .line 2751
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
    .line 2753
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
    .line 2754
    return-void

    #@9e
    .line 2756
    :cond_7
    :try_start_7
    new-instance v5, Landroid/net/ProxyInfo;

    #@a0
    invoke-direct {v5, p1}, Landroid/net/ProxyInfo;-><init>(Landroid/net/ProxyInfo;)V

    #@a3
    iput-object v5, p0, Lcom/android/server/ConnectivityService;->mGlobalProxy:Landroid/net/ProxyInfo;

    #@a5
    .line 2757
    iget-object v5, p0, Lcom/android/server/ConnectivityService;->mGlobalProxy:Landroid/net/ProxyInfo;

    #@a7
    invoke-virtual {v5}, Landroid/net/ProxyInfo;->getHost()Ljava/lang/String;

    #@aa
    move-result-object v1

    #@ab
    .line 2758
    iget-object v5, p0, Lcom/android/server/ConnectivityService;->mGlobalProxy:Landroid/net/ProxyInfo;

    #@ad
    invoke-virtual {v5}, Landroid/net/ProxyInfo;->getPort()I

    #@b0
    move-result v3

    #@b1
    .line 2759
    iget-object v5, p0, Lcom/android/server/ConnectivityService;->mGlobalProxy:Landroid/net/ProxyInfo;

    #@b3
    invoke-virtual {v5}, Landroid/net/ProxyInfo;->getExclusionListAsString()Ljava/lang/String;

    #@b6
    move-result-object v0

    #@b7
    .line 2760
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
    .line 2761
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
    .line 2774
    .restart local v4    # "res":Landroid/content/ContentResolver;
    .restart local v6    # "token":J
    :catchall_0
    move-exception v5

    #@cd
    .line 2775
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@d0
    .line 2774
    throw v5
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    #@d1
    .line 2740
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
    .locals 3
    .param p1, "visible"    # Z
    .param p2, "networkType"    # I
    .param p3, "action"    # Ljava/lang/String;

    #@0
    .prologue
    .line 3414
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->enforceConnectivityInternalPermission()V

    #@3
    .line 3415
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    #@6
    move-result-wide v0

    #@7
    .line 3417
    .local v0, "ident":J
    :try_start_0
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/ConnectivityService;->setProvNotificationVisible(ZILjava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@a
    .line 3419
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@d
    .line 3413
    return-void

    #@e
    .line 3418
    :catchall_0
    move-exception v2

    #@f
    .line 3419
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@12
    .line 3418
    throw v2
.end method

.method public setUnderlyingNetworksForVpn([Landroid/net/Network;)Z
    .locals 4
    .param p1, "networks"    # [Landroid/net/Network;

    #@0
    .prologue
    .line 4701
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->throwIfLockdownEnabled()V

    #@3
    .line 4702
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    #@6
    move-result v2

    #@7
    invoke-static {v2}, Landroid/os/UserHandle;->getUserId(I)I

    #@a
    move-result v1

    #@b
    .line 4704
    .local v1, "user":I
    iget-object v3, p0, Lcom/android/server/ConnectivityService;->mVpns:Landroid/util/SparseArray;

    #@d
    monitor-enter v3

    #@e
    .line 4705
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
    .line 4707
    if-eqz v0, :cond_0

    #@1d
    .line 4708
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->notifyIfacesChanged()V

    #@20
    .line 4710
    :cond_0
    return v0

    #@21
    .line 4704
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
    .line 2579
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;

    #@2
    invoke-static {v0}, Landroid/net/ConnectivityManager;->enforceTetherChangePermission(Landroid/content/Context;)V

    #@5
    .line 2580
    invoke-virtual {p0}, Lcom/android/server/ConnectivityService;->isTetheringSupported()Z

    #@8
    move-result v0

    #@9
    if-eqz v0, :cond_0

    #@b
    .line 2581
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mTethering:Lcom/android/server/connectivity/Tethering;

    #@d
    invoke-virtual {v0, p1}, Lcom/android/server/connectivity/Tethering;->setUsbTethering(Z)I

    #@10
    move-result v0

    #@11
    return v0

    #@12
    .line 2583
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
    .line 3001
    invoke-direct {p0, p2}, Lcom/android/server/ConnectivityService;->enforceCrossUserPermission(I)V

    #@3
    .line 3003
    iget-object v2, p0, Lcom/android/server/ConnectivityService;->mVpns:Landroid/util/SparseArray;

    #@5
    monitor-enter v2

    #@6
    .line 3004
    :try_start_0
    iget-object v1, p0, Lcom/android/server/ConnectivityService;->mVpns:Landroid/util/SparseArray;

    #@8
    invoke-virtual {v1, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    #@b
    move-result-object v0

    #@c
    check-cast v0, Lcom/android/server/connectivity/Vpn;

    #@e
    .line 3005
    .local v0, "vpn":Lcom/android/server/connectivity/Vpn;
    if-eqz v0, :cond_0

    #@10
    .line 3006
    invoke-virtual {v0, p1, p3}, Lcom/android/server/connectivity/Vpn;->setPackageAuthorization(Ljava/lang/String;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@13
    :cond_0
    monitor-exit v2

    #@14
    .line 3000
    return-void

    #@15
    .line 3003
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
    .line 3033
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->throwIfLockdownEnabled()V

    #@3
    .line 3034
    invoke-virtual {p0}, Lcom/android/server/ConnectivityService;->getActiveLinkProperties()Landroid/net/LinkProperties;

    #@6
    move-result-object v0

    #@7
    .line 3035
    .local v0, "egress":Landroid/net/LinkProperties;
    if-nez v0, :cond_0

    #@9
    .line 3036
    new-instance v2, Ljava/lang/IllegalStateException;

    #@b
    const-string/jumbo v3, "Missing active network connection"

    #@e
    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@11
    throw v2

    #@12
    .line 3038
    :cond_0
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    #@15
    move-result v2

    #@16
    invoke-static {v2}, Landroid/os/UserHandle;->getUserId(I)I

    #@19
    move-result v1

    #@1a
    .line 3039
    .local v1, "user":I
    iget-object v3, p0, Lcom/android/server/ConnectivityService;->mVpns:Landroid/util/SparseArray;

    #@1c
    monitor-enter v3

    #@1d
    .line 3040
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
    .line 3032
    return-void

    #@2c
    .line 3039
    :catchall_0
    move-exception v2

    #@2d
    monitor-exit v3

    #@2e
    throw v2
.end method

.method systemReady()V
    .locals 4

    #@0
    .prologue
    .line 1534
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->loadGlobalProxy()V

    #@3
    .line 1536
    monitor-enter p0

    #@4
    .line 1537
    const/4 v1, 0x1

    #@5
    :try_start_0
    iput-boolean v1, p0, Lcom/android/server/ConnectivityService;->mSystemReady:Z

    #@7
    .line 1538
    iget-object v1, p0, Lcom/android/server/ConnectivityService;->mInitialBroadcast:Landroid/content/Intent;

    #@9
    if-eqz v1, :cond_0

    #@b
    .line 1539
    iget-object v1, p0, Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;

    #@d
    iget-object v2, p0, Lcom/android/server/ConnectivityService;->mInitialBroadcast:Landroid/content/Intent;

    #@f
    sget-object v3, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    #@11
    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->sendStickyBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    #@14
    .line 1540
    const/4 v1, 0x0

    #@15
    iput-object v1, p0, Lcom/android/server/ConnectivityService;->mInitialBroadcast:Landroid/content/Intent;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@17
    :cond_0
    monitor-exit p0

    #@18
    .line 1544
    iget-object v1, p0, Lcom/android/server/ConnectivityService;->mHandler:Lcom/android/server/ConnectivityService$InternalHandler;

    #@1a
    iget-object v2, p0, Lcom/android/server/ConnectivityService;->mHandler:Lcom/android/server/ConnectivityService$InternalHandler;

    #@1c
    const/16 v3, 0x9

    #@1e
    invoke-virtual {v2, v3}, Lcom/android/server/ConnectivityService$InternalHandler;->obtainMessage(I)Landroid/os/Message;

    #@21
    move-result-object v2

    #@22
    invoke-virtual {v1, v2}, Lcom/android/server/ConnectivityService$InternalHandler;->sendMessage(Landroid/os/Message;)Z

    #@25
    .line 1548
    invoke-virtual {p0}, Lcom/android/server/ConnectivityService;->updateLockdownVpn()Z

    #@28
    move-result v1

    #@29
    if-nez v1, :cond_1

    #@2b
    .line 1549
    new-instance v0, Landroid/content/IntentFilter;

    #@2d
    const-string/jumbo v1, "android.intent.action.USER_PRESENT"

    #@30
    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    #@33
    .line 1550
    .local v0, "filter":Landroid/content/IntentFilter;
    iget-object v1, p0, Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;

    #@35
    iget-object v2, p0, Lcom/android/server/ConnectivityService;->mUserPresentReceiver:Landroid/content/BroadcastReceiver;

    #@37
    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    #@3a
    .line 1554
    .end local v0    # "filter":Landroid/content/IntentFilter;
    :cond_1
    iget-object v1, p0, Lcom/android/server/ConnectivityService;->mHandler:Lcom/android/server/ConnectivityService$InternalHandler;

    #@3c
    iget-object v2, p0, Lcom/android/server/ConnectivityService;->mHandler:Lcom/android/server/ConnectivityService$InternalHandler;

    #@3e
    const/16 v3, 0x1e

    #@40
    invoke-virtual {v2, v3}, Lcom/android/server/ConnectivityService$InternalHandler;->obtainMessage(I)Landroid/os/Message;

    #@43
    move-result-object v2

    #@44
    invoke-virtual {v1, v2}, Lcom/android/server/ConnectivityService$InternalHandler;->sendMessage(Landroid/os/Message;)Z

    #@47
    .line 1556
    iget-object v1, p0, Lcom/android/server/ConnectivityService;->mHandler:Lcom/android/server/ConnectivityService$InternalHandler;

    #@49
    iget-object v2, p0, Lcom/android/server/ConnectivityService;->mHandler:Lcom/android/server/ConnectivityService$InternalHandler;

    #@4b
    const/16 v3, 0x19

    #@4d
    invoke-virtual {v2, v3}, Lcom/android/server/ConnectivityService$InternalHandler;->obtainMessage(I)Landroid/os/Message;

    #@50
    move-result-object v2

    #@51
    invoke-virtual {v1, v2}, Lcom/android/server/ConnectivityService$InternalHandler;->sendMessage(Landroid/os/Message;)Z

    #@54
    .line 1558
    iget-object v1, p0, Lcom/android/server/ConnectivityService;->mPermissionMonitor:Lcom/android/server/connectivity/PermissionMonitor;

    #@56
    invoke-virtual {v1}, Lcom/android/server/connectivity/PermissionMonitor;->startMonitoring()V

    #@59
    .line 1533
    return-void

    #@5a
    .line 1536
    :catchall_0
    move-exception v1

    #@5b
    monitor-exit p0

    #@5c
    throw v1
.end method

.method public tether(Ljava/lang/String;)I
    .locals 1
    .param p1, "iface"    # Ljava/lang/String;

    #@0
    .prologue
    .line 2520
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;

    #@2
    invoke-static {v0}, Landroid/net/ConnectivityManager;->enforceTetherChangePermission(Landroid/content/Context;)V

    #@5
    .line 2521
    invoke-virtual {p0}, Lcom/android/server/ConnectivityService;->isTetheringSupported()Z

    #@8
    move-result v0

    #@9
    if-eqz v0, :cond_0

    #@b
    .line 2522
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mTethering:Lcom/android/server/connectivity/Tethering;

    #@d
    invoke-virtual {v0, p1}, Lcom/android/server/connectivity/Tethering;->tether(Ljava/lang/String;)I

    #@10
    move-result v0

    #@11
    return v0

    #@12
    .line 2524
    :cond_0
    const/4 v0, 0x3

    #@13
    return v0
.end method

.method public unregisterNetworkFactory(Landroid/os/Messenger;)V
    .locals 3
    .param p1, "messenger"    # Landroid/os/Messenger;

    #@0
    .prologue
    .line 3745
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->enforceConnectivityInternalPermission()V

    #@3
    .line 3746
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
    .line 3744
    return-void
.end method

.method public untether(Ljava/lang/String;)I
    .locals 1
    .param p1, "iface"    # Ljava/lang/String;

    #@0
    .prologue
    .line 2530
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;

    #@2
    invoke-static {v0}, Landroid/net/ConnectivityManager;->enforceTetherChangePermission(Landroid/content/Context;)V

    #@5
    .line 2532
    invoke-virtual {p0}, Lcom/android/server/ConnectivityService;->isTetheringSupported()Z

    #@8
    move-result v0

    #@9
    if-eqz v0, :cond_0

    #@b
    .line 2533
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mTethering:Lcom/android/server/connectivity/Tethering;

    #@d
    invoke-virtual {v0, p1}, Lcom/android/server/connectivity/Tethering;->untether(Ljava/lang/String;)I

    #@10
    move-result v0

    #@11
    return v0

    #@12
    .line 2535
    :cond_0
    const/4 v0, 0x3

    #@13
    return v0
.end method

.method public updateLockdownVpn()Z
    .locals 9

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 3132
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    #@4
    move-result v0

    #@5
    const/16 v1, 0x3e8

    #@7
    if-eq v0, v1, :cond_0

    #@9
    .line 3133
    const-string/jumbo v0, "ConnectivityService"

    #@c
    const-string/jumbo v1, "Lockdown VPN only available to AID_SYSTEM"

    #@f
    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@12
    .line 3134
    return v2

    #@13
    .line 3138
    :cond_0
    invoke-static {}, Lcom/android/server/net/LockdownVpnTracker;->isEnabled()Z

    #@16
    move-result v0

    #@17
    iput-boolean v0, p0, Lcom/android/server/ConnectivityService;->mLockdownEnabled:Z

    #@19
    .line 3139
    iget-boolean v0, p0, Lcom/android/server/ConnectivityService;->mLockdownEnabled:Z

    #@1b
    if-eqz v0, :cond_2

    #@1d
    .line 3140
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mKeyStore:Landroid/security/KeyStore;

    #@1f
    invoke-virtual {v0}, Landroid/security/KeyStore;->isUnlocked()Z

    #@22
    move-result v0

    #@23
    if-nez v0, :cond_1

    #@25
    .line 3141
    const-string/jumbo v0, "ConnectivityService"

    #@28
    const-string/jumbo v1, "KeyStore locked; unable to create LockdownTracker"

    #@2b
    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@2e
    .line 3142
    return v2

    #@2f
    .line 3145
    :cond_1
    new-instance v6, Ljava/lang/String;

    #@31
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mKeyStore:Landroid/security/KeyStore;

    #@33
    const-string/jumbo v1, "LOCKDOWN_VPN"

    #@36
    invoke-virtual {v0, v1}, Landroid/security/KeyStore;->get(Ljava/lang/String;)[B

    #@39
    move-result-object v0

    #@3a
    invoke-direct {v6, v0}, Ljava/lang/String;-><init>([B)V

    #@3d
    .line 3147
    .local v6, "profileName":Ljava/lang/String;
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mKeyStore:Landroid/security/KeyStore;

    #@3f
    new-instance v1, Ljava/lang/StringBuilder;

    #@41
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@44
    const-string/jumbo v2, "VPN_"

    #@47
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4a
    move-result-object v1

    #@4b
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4e
    move-result-object v1

    #@4f
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@52
    move-result-object v1

    #@53
    invoke-virtual {v0, v1}, Landroid/security/KeyStore;->get(Ljava/lang/String;)[B

    #@56
    move-result-object v0

    #@57
    .line 3146
    invoke-static {v6, v0}, Lcom/android/internal/net/VpnProfile;->decode(Ljava/lang/String;[B)Lcom/android/internal/net/VpnProfile;

    #@5a
    move-result-object v5

    #@5b
    .line 3148
    .local v5, "profile":Lcom/android/internal/net/VpnProfile;
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    #@5e
    move-result v0

    #@5f
    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    #@62
    move-result v7

    #@63
    .line 3149
    .local v7, "user":I
    iget-object v8, p0, Lcom/android/server/ConnectivityService;->mVpns:Landroid/util/SparseArray;

    #@65
    monitor-enter v8

    #@66
    .line 3150
    :try_start_0
    new-instance v0, Lcom/android/server/net/LockdownVpnTracker;

    #@68
    iget-object v1, p0, Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;

    #@6a
    iget-object v2, p0, Lcom/android/server/ConnectivityService;->mNetd:Landroid/os/INetworkManagementService;

    #@6c
    iget-object v3, p0, Lcom/android/server/ConnectivityService;->mVpns:Landroid/util/SparseArray;

    #@6e
    invoke-virtual {v3, v7}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    #@71
    move-result-object v4

    #@72
    check-cast v4, Lcom/android/server/connectivity/Vpn;

    #@74
    move-object v3, p0

    #@75
    invoke-direct/range {v0 .. v5}, Lcom/android/server/net/LockdownVpnTracker;-><init>(Landroid/content/Context;Landroid/os/INetworkManagementService;Lcom/android/server/ConnectivityService;Lcom/android/server/connectivity/Vpn;Lcom/android/internal/net/VpnProfile;)V

    #@78
    invoke-direct {p0, v0}, Lcom/android/server/ConnectivityService;->setLockdownTracker(Lcom/android/server/net/LockdownVpnTracker;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@7b
    monitor-exit v8

    #@7c
    .line 3157
    .end local v5    # "profile":Lcom/android/internal/net/VpnProfile;
    .end local v6    # "profileName":Ljava/lang/String;
    .end local v7    # "user":I
    :goto_0
    const/4 v0, 0x1

    #@7d
    return v0

    #@7e
    .line 3149
    .restart local v5    # "profile":Lcom/android/internal/net/VpnProfile;
    .restart local v6    # "profileName":Ljava/lang/String;
    .restart local v7    # "user":I
    :catchall_0
    move-exception v0

    #@7f
    monitor-exit v8

    #@80
    throw v0

    #@81
    .line 3154
    .end local v5    # "profile":Lcom/android/internal/net/VpnProfile;
    .end local v6    # "profileName":Ljava/lang/String;
    .end local v7    # "user":I
    :cond_2
    const/4 v0, 0x0

    #@82
    invoke-direct {p0, v0}, Lcom/android/server/ConnectivityService;->setLockdownTracker(Lcom/android/server/net/LockdownVpnTracker;)V

    #@85
    goto :goto_0
.end method
