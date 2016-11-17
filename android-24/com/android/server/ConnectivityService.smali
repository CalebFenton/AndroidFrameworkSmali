.class public Lcom/android/server/ConnectivityService;
.super Landroid/net/IConnectivityManager$Stub;
.source "ConnectivityService.java"

# interfaces
.implements Landroid/app/PendingIntent$OnFinished;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/ConnectivityService$1;,
        Lcom/android/server/ConnectivityService$2;,
        Lcom/android/server/ConnectivityService$3;,
        Lcom/android/server/ConnectivityService$InternalHandler;,
        Lcom/android/server/ConnectivityService$LegacyTypeTracker;,
        Lcom/android/server/ConnectivityService$NetworkFactoryInfo;,
        Lcom/android/server/ConnectivityService$NetworkRequestInfo;,
        Lcom/android/server/ConnectivityService$NetworkRequestType;,
        Lcom/android/server/ConnectivityService$NetworkStateTrackerHandler;,
        Lcom/android/server/ConnectivityService$NotificationType;,
        Lcom/android/server/ConnectivityService$ReapUnvalidatedNetworks;,
        Lcom/android/server/ConnectivityService$SettingsObserver;,
        Lcom/android/server/ConnectivityService$ValidationLog;
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

.field private static final EVENT_SET_ACCEPT_UNVALIDATED:I = 0x1c

.field private static final EVENT_SYSTEM_READY:I = 0x19

.field private static final EVENT_TIMEOUT_NETWORK_REQUEST:I = 0x14

.field private static final EVENT_UNREGISTER_NETWORK_FACTORY:I = 0x17

.field private static final INET_CONDITION_LOG_MAX_SIZE:I = 0xf

.field private static final LOGD_BLOCKED_NETWORKINFO:Z = true

.field private static final LOGD_RULES:Z = false

.field private static final MAX_NETWORK_REQUESTS_PER_UID:I = 0x64

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
.method static synthetic -get0(Lcom/android/server/ConnectivityService;)Lcom/android/server/connectivity/KeepaliveTracker;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mKeepaliveTracker:Lcom/android/server/connectivity/KeepaliveTracker;

    #@2
    return-object v0
.end method

.method static synthetic -get1(Lcom/android/server/ConnectivityService;)Landroid/util/ArraySet;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mMeteredIfaces:Landroid/util/ArraySet;

    #@2
    return-object v0
.end method

.method static synthetic -get10(Lcom/android/server/ConnectivityService;)Landroid/util/SparseIntArray;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mUidRules:Landroid/util/SparseIntArray;

    #@2
    return-object v0
.end method

.method static synthetic -get11(Lcom/android/server/ConnectivityService;)Landroid/util/SparseIntArray;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mUidToNetworkRequestCount:Landroid/util/SparseIntArray;

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

.method static synthetic -get9(Lcom/android/server/ConnectivityService;)Lcom/android/server/connectivity/Tethering;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mTethering:Lcom/android/server/connectivity/Tethering;

    #@2
    return-object v0
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
    .param p1, "na"    # Lcom/android/server/connectivity/NetworkAgentInfo;

    #@0
    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/ConnectivityService;->handleRegisterNetworkAgent(Lcom/android/server/connectivity/NetworkAgentInfo;)V

    #@3
    return-void
.end method

.method static synthetic -wrap11(Lcom/android/server/ConnectivityService;Lcom/android/server/ConnectivityService$NetworkFactoryInfo;)V
    .locals 0
    .param p1, "nfi"    # Lcom/android/server/ConnectivityService$NetworkFactoryInfo;

    #@0
    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/ConnectivityService;->handleRegisterNetworkFactory(Lcom/android/server/ConnectivityService$NetworkFactoryInfo;)V

    #@3
    return-void
.end method

.method static synthetic -wrap12(Lcom/android/server/ConnectivityService;Landroid/os/Message;)V
    .locals 0
    .param p1, "msg"    # Landroid/os/Message;

    #@0
    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/ConnectivityService;->handleRegisterNetworkRequestWithIntent(Landroid/os/Message;)V

    #@3
    return-void
.end method

.method static synthetic -wrap13(Lcom/android/server/ConnectivityService;Lcom/android/server/ConnectivityService$NetworkRequestInfo;)V
    .locals 0
    .param p1, "nri"    # Lcom/android/server/ConnectivityService$NetworkRequestInfo;

    #@0
    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/ConnectivityService;->handleRegisterNetworkRequest(Lcom/android/server/ConnectivityService$NetworkRequestInfo;)V

    #@3
    return-void
.end method

.method static synthetic -wrap14(Lcom/android/server/ConnectivityService;Landroid/app/PendingIntent;I)V
    .locals 0
    .param p1, "pendingIntent"    # Landroid/app/PendingIntent;
    .param p2, "callingUid"    # I

    #@0
    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/server/ConnectivityService;->handleReleaseNetworkRequestWithIntent(Landroid/app/PendingIntent;I)V

    #@3
    return-void
.end method

.method static synthetic -wrap15(Lcom/android/server/ConnectivityService;Landroid/net/NetworkRequest;I)V
    .locals 0
    .param p1, "request"    # Landroid/net/NetworkRequest;
    .param p2, "callingUid"    # I

    #@0
    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/server/ConnectivityService;->handleReleaseNetworkRequest(Landroid/net/NetworkRequest;I)V

    #@3
    return-void
.end method

.method static synthetic -wrap16(Lcom/android/server/ConnectivityService;Landroid/net/Network;ZZ)V
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

.method static synthetic -wrap17(Lcom/android/server/ConnectivityService;Landroid/os/Messenger;)V
    .locals 0
    .param p1, "messenger"    # Landroid/os/Messenger;

    #@0
    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/ConnectivityService;->handleUnregisterNetworkFactory(Landroid/os/Messenger;)V

    #@3
    return-void
.end method

.method static synthetic -wrap18(Ljava/lang/String;)V
    .locals 0
    .param p0, "s"    # Ljava/lang/String;

    #@0
    .prologue
    invoke-static {p0}, Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V

    #@3
    return-void
.end method

.method static synthetic -wrap19(Ljava/lang/String;)V
    .locals 0
    .param p0, "s"    # Ljava/lang/String;

    #@0
    .prologue
    invoke-static {p0}, Lcom/android/server/ConnectivityService;->loge(Ljava/lang/String;)V

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

.method static synthetic -wrap20(Lcom/android/server/ConnectivityService;I)V
    .locals 0
    .param p1, "userId"    # I

    #@0
    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/ConnectivityService;->onUserAdded(I)V

    #@3
    return-void
.end method

.method static synthetic -wrap21(Lcom/android/server/ConnectivityService;I)V
    .locals 0
    .param p1, "userId"    # I

    #@0
    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/ConnectivityService;->onUserRemoved(I)V

    #@3
    return-void
.end method

.method static synthetic -wrap22(Lcom/android/server/ConnectivityService;I)V
    .locals 0
    .param p1, "userId"    # I

    #@0
    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/ConnectivityService;->onUserStart(I)V

    #@3
    return-void
.end method

.method static synthetic -wrap23(Lcom/android/server/ConnectivityService;I)V
    .locals 0
    .param p1, "userId"    # I

    #@0
    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/ConnectivityService;->onUserStop(I)V

    #@3
    return-void
.end method

.method static synthetic -wrap24(Lcom/android/server/ConnectivityService;I)V
    .locals 0
    .param p1, "userId"    # I

    #@0
    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/ConnectivityService;->onUserUnlocked(I)V

    #@3
    return-void
.end method

.method static synthetic -wrap25(Lcom/android/server/ConnectivityService;IZJ)V
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

.method static synthetic -wrap26(Lcom/android/server/ConnectivityService;Lcom/android/server/connectivity/NetworkAgentInfo;Landroid/net/NetworkInfo$DetailedState;I)V
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

.method static synthetic -wrap27(Lcom/android/server/ConnectivityService;Lcom/android/server/connectivity/NetworkAgentInfo;)V
    .locals 0
    .param p1, "nai"    # Lcom/android/server/connectivity/NetworkAgentInfo;

    #@0
    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/ConnectivityService;->sendUpdatedScoreToFactories(Lcom/android/server/connectivity/NetworkAgentInfo;)V

    #@3
    return-void
.end method

.method static synthetic -wrap28(Lcom/android/server/ConnectivityService;ZILcom/android/server/ConnectivityService$NotificationType;ILjava/lang/String;Landroid/app/PendingIntent;Z)V
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

.method static synthetic -wrap29(Lcom/android/server/ConnectivityService;Lcom/android/server/connectivity/NetworkAgentInfo;Landroid/net/NetworkCapabilities;)V
    .locals 0
    .param p1, "nai"    # Lcom/android/server/connectivity/NetworkAgentInfo;
    .param p2, "networkCapabilities"    # Landroid/net/NetworkCapabilities;

    #@0
    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/server/ConnectivityService;->updateCapabilities(Lcom/android/server/connectivity/NetworkAgentInfo;Landroid/net/NetworkCapabilities;)V

    #@3
    return-void
.end method

.method static synthetic -wrap3(Lcom/android/server/ConnectivityService;Landroid/net/ProxyInfo;)V
    .locals 0
    .param p1, "proxy"    # Landroid/net/ProxyInfo;

    #@0
    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/ConnectivityService;->handleApplyDefaultProxy(Landroid/net/ProxyInfo;)V

    #@3
    return-void
.end method

.method static synthetic -wrap30(Lcom/android/server/ConnectivityService;Lcom/android/server/connectivity/NetworkAgentInfo;)V
    .locals 0
    .param p1, "nai"    # Lcom/android/server/connectivity/NetworkAgentInfo;

    #@0
    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/ConnectivityService;->updateInetCondition(Lcom/android/server/connectivity/NetworkAgentInfo;)V

    #@3
    return-void
.end method

.method static synthetic -wrap31(Lcom/android/server/ConnectivityService;Lcom/android/server/connectivity/NetworkAgentInfo;Landroid/net/LinkProperties;)V
    .locals 0
    .param p1, "networkAgent"    # Lcom/android/server/connectivity/NetworkAgentInfo;
    .param p2, "oldLp"    # Landroid/net/LinkProperties;

    #@0
    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/server/ConnectivityService;->updateLinkProperties(Lcom/android/server/connectivity/NetworkAgentInfo;Landroid/net/LinkProperties;)V

    #@3
    return-void
.end method

.method static synthetic -wrap32(Lcom/android/server/ConnectivityService;Lcom/android/server/connectivity/NetworkAgentInfo;Landroid/net/NetworkInfo;)V
    .locals 0
    .param p1, "networkAgent"    # Lcom/android/server/connectivity/NetworkAgentInfo;
    .param p2, "newInfo"    # Landroid/net/NetworkInfo;

    #@0
    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/server/ConnectivityService;->updateNetworkInfo(Lcom/android/server/connectivity/NetworkAgentInfo;Landroid/net/NetworkInfo;)V

    #@3
    return-void
.end method

.method static synthetic -wrap33(Lcom/android/server/ConnectivityService;Lcom/android/server/connectivity/NetworkAgentInfo;I)V
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
    invoke-direct {p0, p1}, Lcom/android/server/ConnectivityService;->handleAsyncChannelDisconnected(Landroid/os/Message;)V

    #@3
    return-void
.end method

.method static synthetic -wrap5(Lcom/android/server/ConnectivityService;Landroid/os/Message;)V
    .locals 0
    .param p1, "msg"    # Landroid/os/Message;

    #@0
    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/ConnectivityService;->handleAsyncChannelHalfConnect(Landroid/os/Message;)V

    #@3
    return-void
.end method

.method static synthetic -wrap6(Lcom/android/server/ConnectivityService;)V
    .locals 0

    #@0
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->handleDeprecatedGlobalHttpProxy()V

    #@3
    return-void
.end method

.method static synthetic -wrap7(Lcom/android/server/ConnectivityService;Lcom/android/server/connectivity/NetworkAgentInfo;)V
    .locals 0
    .param p1, "oldNetwork"    # Lcom/android/server/connectivity/NetworkAgentInfo;

    #@0
    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/ConnectivityService;->handleLingerComplete(Lcom/android/server/connectivity/NetworkAgentInfo;)V

    #@3
    return-void
.end method

.method static synthetic -wrap8(Lcom/android/server/ConnectivityService;)V
    .locals 0

    #@0
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->handleMobileDataAlwaysOn()V

    #@3
    return-void
.end method

.method static synthetic -wrap9(Lcom/android/server/ConnectivityService;Landroid/net/Network;)V
    .locals 0
    .param p1, "network"    # Landroid/net/Network;

    #@0
    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/ConnectivityService;->handlePromptUnvalidated(Landroid/net/Network;)V

    #@3
    return-void
.end method

.method static constructor <clinit>()V
    .locals 3

    #@0
    .prologue
    .line 241
    const/4 v0, 0x3

    #@1
    new-array v0, v0, [Ljava/lang/Class;

    #@3
    const-class v1, Lcom/android/internal/util/AsyncChannel;

    #@5
    const/4 v2, 0x0

    #@6
    aput-object v1, v0, v2

    #@8
    const-class v1, Lcom/android/server/ConnectivityService;

    #@a
    const/4 v2, 0x1

    #@b
    aput-object v1, v0, v2

    #@d
    const-class v1, Landroid/net/NetworkAgent;

    #@f
    const/4 v2, 0x2

    #@10
    aput-object v1, v0, v2

    #@12
    .line 240
    invoke-static {v0}, Lcom/android/internal/util/MessageUtils;->findMessageNames([Ljava/lang/Class;)Landroid/util/SparseArray;

    #@15
    move-result-object v0

    #@16
    sput-object v0, Lcom/android/server/ConnectivityService;->sMagicDecoderRing:Landroid/util/SparseArray;

    #@18
    .line 171
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/INetworkManagementService;Landroid/net/INetworkStatsService;Landroid/net/INetworkPolicyManager;)V
    .locals 19
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "netManager"    # Landroid/os/INetworkManagementService;
    .param p3, "statsService"    # Landroid/net/INetworkStatsService;
    .param p4, "policyManager"    # Landroid/net/INetworkPolicyManager;

    #@0
    .prologue
    .line 638
    invoke-direct/range {p0 .. p0}, Landroid/net/IConnectivityManager$Stub;-><init>()V

    #@3
    .line 204
    new-instance v2, Landroid/util/SparseArray;

    #@5
    invoke-direct {v2}, Landroid/util/SparseArray;-><init>()V

    #@8
    move-object/from16 v0, p0

    #@a
    iput-object v2, v0, Lcom/android/server/ConnectivityService;->mVpns:Landroid/util/SparseArray;

    #@c
    .line 210
    new-instance v2, Ljava/lang/Object;

    #@e
    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    #@11
    move-object/from16 v0, p0

    #@13
    iput-object v2, v0, Lcom/android/server/ConnectivityService;->mRulesLock:Ljava/lang/Object;

    #@15
    .line 213
    new-instance v2, Landroid/util/SparseIntArray;

    #@17
    invoke-direct {v2}, Landroid/util/SparseIntArray;-><init>()V

    #@1a
    move-object/from16 v0, p0

    #@1c
    iput-object v2, v0, Lcom/android/server/ConnectivityService;->mUidRules:Landroid/util/SparseIntArray;

    #@1e
    .line 216
    new-instance v2, Landroid/util/ArraySet;

    #@20
    invoke-direct {v2}, Landroid/util/ArraySet;-><init>()V

    #@23
    move-object/from16 v0, p0

    #@25
    iput-object v2, v0, Lcom/android/server/ConnectivityService;->mMeteredIfaces:Landroid/util/ArraySet;

    #@27
    .line 224
    const/4 v2, 0x0

    #@28
    move-object/from16 v0, p0

    #@2a
    iput v2, v0, Lcom/android/server/ConnectivityService;->mDefaultInetConditionPublished:I

    #@2c
    .line 385
    const-string/jumbo v2, ""

    #@2f
    move-object/from16 v0, p0

    #@31
    iput-object v2, v0, Lcom/android/server/ConnectivityService;->mNetTransitionWakeLockCausedBy:Ljava/lang/String;

    #@33
    .line 395
    const/4 v2, 0x0

    #@34
    move-object/from16 v0, p0

    #@36
    iput-object v2, v0, Lcom/android/server/ConnectivityService;->mDefaultProxy:Landroid/net/ProxyInfo;

    #@38
    .line 396
    new-instance v2, Ljava/lang/Object;

    #@3a
    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    #@3d
    move-object/from16 v0, p0

    #@3f
    iput-object v2, v0, Lcom/android/server/ConnectivityService;->mProxyLock:Ljava/lang/Object;

    #@41
    .line 397
    const/4 v2, 0x0

    #@42
    move-object/from16 v0, p0

    #@44
    iput-boolean v2, v0, Lcom/android/server/ConnectivityService;->mDefaultProxyDisabled:Z

    #@46
    .line 400
    const/4 v2, 0x0

    #@47
    move-object/from16 v0, p0

    #@49
    iput-object v2, v0, Lcom/android/server/ConnectivityService;->mGlobalProxy:Landroid/net/ProxyInfo;

    #@4b
    .line 402
    const/4 v2, 0x0

    #@4c
    move-object/from16 v0, p0

    #@4e
    iput-object v2, v0, Lcom/android/server/ConnectivityService;->mPacManager:Lcom/android/server/connectivity/PacManager;

    #@50
    .line 423
    const/16 v2, 0x64

    #@52
    move-object/from16 v0, p0

    #@54
    iput v2, v0, Lcom/android/server/ConnectivityService;->mNextNetId:I

    #@56
    .line 426
    const/4 v2, 0x1

    #@57
    move-object/from16 v0, p0

    #@59
    iput v2, v0, Lcom/android/server/ConnectivityService;->mNextNetworkRequestId:I

    #@5b
    .line 430
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
    .line 446
    new-instance v2, Ljava/util/ArrayDeque;

    #@68
    const/16 v3, 0xa

    #@6a
    invoke-direct {v2, v3}, Ljava/util/ArrayDeque;-><init>(I)V

    #@6d
    .line 445
    move-object/from16 v0, p0

    #@6f
    iput-object v2, v0, Lcom/android/server/ConnectivityService;->mValidationLogs:Ljava/util/ArrayDeque;

    #@71
    .line 631
    new-instance v2, Lcom/android/server/ConnectivityService$LegacyTypeTracker;

    #@73
    move-object/from16 v0, p0

    #@75
    invoke-direct {v2, v0}, Lcom/android/server/ConnectivityService$LegacyTypeTracker;-><init>(Lcom/android/server/ConnectivityService;)V

    #@78
    move-object/from16 v0, p0

    #@7a
    iput-object v2, v0, Lcom/android/server/ConnectivityService;->mLegacyTypeTracker:Lcom/android/server/ConnectivityService$LegacyTypeTracker;

    #@7c
    .line 1297
    new-instance v2, Lcom/android/server/ConnectivityService$1;

    #@7e
    move-object/from16 v0, p0

    #@80
    invoke-direct {v2, v0}, Lcom/android/server/ConnectivityService$1;-><init>(Lcom/android/server/ConnectivityService;)V

    #@83
    move-object/from16 v0, p0

    #@85
    iput-object v2, v0, Lcom/android/server/ConnectivityService;->mDataActivityObserver:Landroid/net/INetworkManagementEventObserver;

    #@87
    .line 1401
    new-instance v2, Lcom/android/server/ConnectivityService$2;

    #@89
    move-object/from16 v0, p0

    #@8b
    invoke-direct {v2, v0}, Lcom/android/server/ConnectivityService$2;-><init>(Lcom/android/server/ConnectivityService;)V

    #@8e
    move-object/from16 v0, p0

    #@90
    iput-object v2, v0, Lcom/android/server/ConnectivityService;->mPolicyListener:Landroid/net/INetworkPolicyListener;

    #@92
    .line 3574
    new-instance v2, Ljava/io/File;

    #@94
    const-string/jumbo v3, "/data/misc/radio/provisioning_urls.xml"

    #@97
    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    #@9a
    move-object/from16 v0, p0

    #@9c
    iput-object v2, v0, Lcom/android/server/ConnectivityService;->mProvisioningUrlFile:Ljava/io/File;

    #@9e
    .line 3753
    new-instance v2, Lcom/android/server/ConnectivityService$3;

    #@a0
    move-object/from16 v0, p0

    #@a2
    invoke-direct {v2, v0}, Lcom/android/server/ConnectivityService$3;-><init>(Lcom/android/server/ConnectivityService;)V

    #@a5
    move-object/from16 v0, p0

    #@a7
    iput-object v2, v0, Lcom/android/server/ConnectivityService;->mUserIntentReceiver:Landroid/content/BroadcastReceiver;

    #@a9
    .line 3775
    new-instance v2, Ljava/util/HashMap;

    #@ab
    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    #@ae
    .line 3774
    move-object/from16 v0, p0

    #@b0
    iput-object v2, v0, Lcom/android/server/ConnectivityService;->mNetworkFactoryInfos:Ljava/util/HashMap;

    #@b2
    .line 3777
    new-instance v2, Ljava/util/HashMap;

    #@b4
    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    #@b7
    .line 3776
    move-object/from16 v0, p0

    #@b9
    iput-object v2, v0, Lcom/android/server/ConnectivityService;->mNetworkRequests:Ljava/util/HashMap;

    #@bb
    .line 3782
    new-instance v2, Landroid/util/SparseIntArray;

    #@bd
    invoke-direct {v2}, Landroid/util/SparseIntArray;-><init>()V

    #@c0
    move-object/from16 v0, p0

    #@c2
    iput-object v2, v0, Lcom/android/server/ConnectivityService;->mUidToNetworkRequestCount:Landroid/util/SparseIntArray;

    #@c4
    .line 4187
    new-instance v2, Landroid/util/SparseArray;

    #@c6
    invoke-direct {v2}, Landroid/util/SparseArray;-><init>()V

    #@c9
    .line 4186
    move-object/from16 v0, p0

    #@cb
    iput-object v2, v0, Lcom/android/server/ConnectivityService;->mNetworkForRequestId:Landroid/util/SparseArray;

    #@cd
    .line 4192
    new-instance v2, Landroid/util/SparseArray;

    #@cf
    invoke-direct {v2}, Landroid/util/SparseArray;-><init>()V

    #@d2
    .line 4191
    move-object/from16 v0, p0

    #@d4
    iput-object v2, v0, Lcom/android/server/ConnectivityService;->mNetworkForNetId:Landroid/util/SparseArray;

    #@d6
    .line 4197
    new-instance v2, Landroid/util/SparseBooleanArray;

    #@d8
    invoke-direct {v2}, Landroid/util/SparseBooleanArray;-><init>()V

    #@db
    move-object/from16 v0, p0

    #@dd
    iput-object v2, v0, Lcom/android/server/ConnectivityService;->mNetIdInUse:Landroid/util/SparseBooleanArray;

    #@df
    .line 4203
    new-instance v2, Ljava/util/HashMap;

    #@e1
    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    #@e4
    .line 4202
    move-object/from16 v0, p0

    #@e6
    iput-object v2, v0, Lcom/android/server/ConnectivityService;->mNetworkAgentInfos:Ljava/util/HashMap;

    #@e8
    .line 4206
    new-instance v2, Ljava/util/HashSet;

    #@ea
    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    #@ed
    move-object/from16 v0, p0

    #@ef
    iput-object v2, v0, Lcom/android/server/ConnectivityService;->mBlockedAppUids:Ljava/util/HashSet;

    #@f1
    .line 640
    const-string/jumbo v2, "ConnectivityService starting up"

    #@f4
    invoke-static {v2}, Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V

    #@f7
    .line 642
    const/4 v2, -0x1

    #@f8
    move-object/from16 v0, p0

    #@fa
    invoke-direct {v0, v2}, Lcom/android/server/ConnectivityService;->createInternetRequestForTransport(I)Landroid/net/NetworkRequest;

    #@fd
    move-result-object v2

    #@fe
    move-object/from16 v0, p0

    #@100
    iput-object v2, v0, Lcom/android/server/ConnectivityService;->mDefaultRequest:Landroid/net/NetworkRequest;

    #@102
    .line 643
    new-instance v1, Lcom/android/server/ConnectivityService$NetworkRequestInfo;

    #@104
    move-object/from16 v0, p0

    #@106
    iget-object v4, v0, Lcom/android/server/ConnectivityService;->mDefaultRequest:Landroid/net/NetworkRequest;

    #@108
    .line 644
    new-instance v5, Landroid/os/Binder;

    #@10a
    invoke-direct {v5}, Landroid/os/Binder;-><init>()V

    #@10d
    sget-object v6, Lcom/android/server/ConnectivityService$NetworkRequestType;->REQUEST:Lcom/android/server/ConnectivityService$NetworkRequestType;

    #@10f
    .line 643
    const/4 v3, 0x0

    #@110
    move-object/from16 v2, p0

    #@112
    invoke-direct/range {v1 .. v6}, Lcom/android/server/ConnectivityService$NetworkRequestInfo;-><init>(Lcom/android/server/ConnectivityService;Landroid/os/Messenger;Landroid/net/NetworkRequest;Landroid/os/IBinder;Lcom/android/server/ConnectivityService$NetworkRequestType;)V

    #@115
    .line 645
    .local v1, "defaultNRI":Lcom/android/server/ConnectivityService$NetworkRequestInfo;
    move-object/from16 v0, p0

    #@117
    iget-object v2, v0, Lcom/android/server/ConnectivityService;->mNetworkRequests:Ljava/util/HashMap;

    #@119
    move-object/from16 v0, p0

    #@11b
    iget-object v3, v0, Lcom/android/server/ConnectivityService;->mDefaultRequest:Landroid/net/NetworkRequest;

    #@11d
    invoke-virtual {v2, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@120
    .line 646
    move-object/from16 v0, p0

    #@122
    iget-object v2, v0, Lcom/android/server/ConnectivityService;->mNetworkRequestInfoLogs:Landroid/util/LocalLog;

    #@124
    new-instance v3, Ljava/lang/StringBuilder;

    #@126
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@129
    const-string/jumbo v4, "REGISTER "

    #@12c
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@12f
    move-result-object v3

    #@130
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@133
    move-result-object v3

    #@134
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@137
    move-result-object v3

    #@138
    invoke-virtual {v2, v3}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    #@13b
    .line 649
    const/4 v2, 0x0

    #@13c
    .line 648
    move-object/from16 v0, p0

    #@13e
    invoke-direct {v0, v2}, Lcom/android/server/ConnectivityService;->createInternetRequestForTransport(I)Landroid/net/NetworkRequest;

    #@141
    move-result-object v2

    #@142
    move-object/from16 v0, p0

    #@144
    iput-object v2, v0, Lcom/android/server/ConnectivityService;->mDefaultMobileDataRequest:Landroid/net/NetworkRequest;

    #@146
    .line 651
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/ConnectivityService;->createHandlerThread()Landroid/os/HandlerThread;

    #@149
    move-result-object v2

    #@14a
    move-object/from16 v0, p0

    #@14c
    iput-object v2, v0, Lcom/android/server/ConnectivityService;->mHandlerThread:Landroid/os/HandlerThread;

    #@14e
    .line 652
    move-object/from16 v0, p0

    #@150
    iget-object v2, v0, Lcom/android/server/ConnectivityService;->mHandlerThread:Landroid/os/HandlerThread;

    #@152
    invoke-virtual {v2}, Landroid/os/HandlerThread;->start()V

    #@155
    .line 653
    new-instance v2, Lcom/android/server/ConnectivityService$InternalHandler;

    #@157
    move-object/from16 v0, p0

    #@159
    iget-object v3, v0, Lcom/android/server/ConnectivityService;->mHandlerThread:Landroid/os/HandlerThread;

    #@15b
    invoke-virtual {v3}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    #@15e
    move-result-object v3

    #@15f
    move-object/from16 v0, p0

    #@161
    invoke-direct {v2, v0, v3}, Lcom/android/server/ConnectivityService$InternalHandler;-><init>(Lcom/android/server/ConnectivityService;Landroid/os/Looper;)V

    #@164
    move-object/from16 v0, p0

    #@166
    iput-object v2, v0, Lcom/android/server/ConnectivityService;->mHandler:Lcom/android/server/ConnectivityService$InternalHandler;

    #@168
    .line 654
    new-instance v2, Lcom/android/server/ConnectivityService$NetworkStateTrackerHandler;

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
    invoke-direct {v2, v0, v3}, Lcom/android/server/ConnectivityService$NetworkStateTrackerHandler;-><init>(Lcom/android/server/ConnectivityService;Landroid/os/Looper;)V

    #@177
    move-object/from16 v0, p0

    #@179
    iput-object v2, v0, Lcom/android/server/ConnectivityService;->mTrackerHandler:Lcom/android/server/ConnectivityService$NetworkStateTrackerHandler;

    #@17b
    .line 657
    const-string/jumbo v2, "net.hostname"

    #@17e
    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    #@181
    move-result-object v2

    #@182
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@185
    move-result v2

    #@186
    if-eqz v2, :cond_0

    #@188
    .line 658
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    #@18b
    move-result-object v2

    #@18c
    .line 659
    const-string/jumbo v3, "android_id"

    #@18f
    .line 658
    invoke-static {v2, v3}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    #@192
    move-result-object v10

    #@193
    .line 660
    .local v10, "id":Ljava/lang/String;
    if-eqz v10, :cond_0

    #@195
    invoke-virtual {v10}, Ljava/lang/String;->length()I

    #@198
    move-result v2

    #@199
    if-lez v2, :cond_0

    #@19b
    .line 661
    new-instance v2, Ljava/lang/String;

    #@19d
    const-string/jumbo v3, "android-"

    #@1a0
    invoke-direct {v2, v3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    #@1a3
    invoke-virtual {v2, v10}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    #@1a6
    move-result-object v14

    #@1a7
    .line 662
    .local v14, "name":Ljava/lang/String;
    const-string/jumbo v2, "net.hostname"

    #@1aa
    invoke-static {v2, v14}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    #@1ad
    .line 666
    .end local v10    # "id":Ljava/lang/String;
    .end local v14    # "name":Ljava/lang/String;
    :cond_0
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    #@1b0
    move-result-object v2

    #@1b1
    .line 667
    const-string/jumbo v3, "connectivity_release_pending_intent_delay_ms"

    #@1b4
    const/16 v4, 0x1388

    #@1b6
    .line 666
    invoke-static {v2, v3, v4}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    #@1b9
    move-result v2

    #@1ba
    move-object/from16 v0, p0

    #@1bc
    iput v2, v0, Lcom/android/server/ConnectivityService;->mReleasePendingIntentDelayMs:I

    #@1be
    .line 669
    const-string/jumbo v2, "missing Context"

    #@1c1
    move-object/from16 v0, p1

    #@1c3
    invoke-static {v0, v2}, Lcom/android/server/ConnectivityService;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    #@1c6
    move-result-object v2

    #@1c7
    check-cast v2, Landroid/content/Context;

    #@1c9
    move-object/from16 v0, p0

    #@1cb
    iput-object v2, v0, Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;

    #@1cd
    .line 670
    const-string/jumbo v2, "missing INetworkManagementService"

    #@1d0
    move-object/from16 v0, p2

    #@1d2
    invoke-static {v0, v2}, Lcom/android/server/ConnectivityService;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    #@1d5
    move-result-object v2

    #@1d6
    check-cast v2, Landroid/os/INetworkManagementService;

    #@1d8
    move-object/from16 v0, p0

    #@1da
    iput-object v2, v0, Lcom/android/server/ConnectivityService;->mNetd:Landroid/os/INetworkManagementService;

    #@1dc
    .line 671
    const-string/jumbo v2, "missing INetworkStatsService"

    #@1df
    move-object/from16 v0, p3

    #@1e1
    invoke-static {v0, v2}, Lcom/android/server/ConnectivityService;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    #@1e4
    move-result-object v2

    #@1e5
    check-cast v2, Landroid/net/INetworkStatsService;

    #@1e7
    move-object/from16 v0, p0

    #@1e9
    iput-object v2, v0, Lcom/android/server/ConnectivityService;->mStatsService:Landroid/net/INetworkStatsService;

    #@1eb
    .line 672
    const-string/jumbo v2, "missing INetworkPolicyManager"

    #@1ee
    move-object/from16 v0, p4

    #@1f0
    invoke-static {v0, v2}, Lcom/android/server/ConnectivityService;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    #@1f3
    move-result-object v2

    #@1f4
    check-cast v2, Landroid/net/INetworkPolicyManager;

    #@1f6
    move-object/from16 v0, p0

    #@1f8
    iput-object v2, v0, Lcom/android/server/ConnectivityService;->mPolicyManager:Landroid/net/INetworkPolicyManager;

    #@1fa
    .line 673
    invoke-static {}, Landroid/security/KeyStore;->getInstance()Landroid/security/KeyStore;

    #@1fd
    move-result-object v2

    #@1fe
    move-object/from16 v0, p0

    #@200
    iput-object v2, v0, Lcom/android/server/ConnectivityService;->mKeyStore:Landroid/security/KeyStore;

    #@202
    .line 674
    move-object/from16 v0, p0

    #@204
    iget-object v2, v0, Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;

    #@206
    const-string/jumbo v3, "phone"

    #@209
    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    #@20c
    move-result-object v2

    #@20d
    check-cast v2, Landroid/telephony/TelephonyManager;

    #@20f
    move-object/from16 v0, p0

    #@211
    iput-object v2, v0, Lcom/android/server/ConnectivityService;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    #@213
    .line 677
    :try_start_0
    move-object/from16 v0, p0

    #@215
    iget-object v2, v0, Lcom/android/server/ConnectivityService;->mPolicyManager:Landroid/net/INetworkPolicyManager;

    #@217
    move-object/from16 v0, p0

    #@219
    iget-object v3, v0, Lcom/android/server/ConnectivityService;->mPolicyListener:Landroid/net/INetworkPolicyListener;

    #@21b
    invoke-interface {v2, v3}, Landroid/net/INetworkPolicyManager;->setConnectivityListener(Landroid/net/INetworkPolicyListener;)V

    #@21e
    .line 678
    move-object/from16 v0, p0

    #@220
    iget-object v2, v0, Lcom/android/server/ConnectivityService;->mPolicyManager:Landroid/net/INetworkPolicyManager;

    #@222
    invoke-interface {v2}, Landroid/net/INetworkPolicyManager;->getRestrictBackground()Z

    #@225
    move-result v2

    #@226
    move-object/from16 v0, p0

    #@228
    iput-boolean v2, v0, Lcom/android/server/ConnectivityService;->mRestrictBackground:Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@22a
    .line 685
    :goto_0
    const-string/jumbo v2, "power"

    #@22d
    .line 684
    move-object/from16 v0, p1

    #@22f
    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    #@232
    move-result-object v16

    #@233
    check-cast v16, Landroid/os/PowerManager;

    #@235
    .line 686
    .local v16, "powerManager":Landroid/os/PowerManager;
    const-string/jumbo v2, "ConnectivityService"

    #@238
    const/4 v3, 0x1

    #@239
    move-object/from16 v0, v16

    #@23b
    invoke-virtual {v0, v3, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    #@23e
    move-result-object v2

    #@23f
    move-object/from16 v0, p0

    #@241
    iput-object v2, v0, Lcom/android/server/ConnectivityService;->mNetTransitionWakeLock:Landroid/os/PowerManager$WakeLock;

    #@243
    .line 687
    move-object/from16 v0, p0

    #@245
    iget-object v2, v0, Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;

    #@247
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@24a
    move-result-object v2

    #@24b
    .line 688
    const v3, 0x10e000f

    #@24e
    .line 687
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    #@251
    move-result v2

    #@252
    move-object/from16 v0, p0

    #@254
    iput v2, v0, Lcom/android/server/ConnectivityService;->mNetTransitionWakeLockTimeout:I

    #@256
    .line 689
    const-string/jumbo v2, "ConnectivityService"

    #@259
    const/4 v3, 0x1

    #@25a
    move-object/from16 v0, v16

    #@25c
    invoke-virtual {v0, v3, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    #@25f
    move-result-object v2

    #@260
    move-object/from16 v0, p0

    #@262
    iput-object v2, v0, Lcom/android/server/ConnectivityService;->mPendingIntentWakeLock:Landroid/os/PowerManager$WakeLock;

    #@264
    .line 691
    const/16 v2, 0x12

    #@266
    new-array v2, v2, [Landroid/net/NetworkConfig;

    #@268
    move-object/from16 v0, p0

    #@26a
    iput-object v2, v0, Lcom/android/server/ConnectivityService;->mNetConfigs:[Landroid/net/NetworkConfig;

    #@26c
    .line 694
    const-string/jumbo v2, "ro.radio.noril"

    #@26f
    const/4 v3, 0x0

    #@270
    invoke-static {v2, v3}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    #@273
    move-result v18

    #@274
    .line 695
    .local v18, "wifiOnly":Z
    new-instance v2, Ljava/lang/StringBuilder;

    #@276
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@279
    const-string/jumbo v3, "wifiOnly="

    #@27c
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@27f
    move-result-object v2

    #@280
    move/from16 v0, v18

    #@282
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@285
    move-result-object v2

    #@286
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@289
    move-result-object v2

    #@28a
    invoke-static {v2}, Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V

    #@28d
    .line 696
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@290
    move-result-object v2

    #@291
    .line 697
    const v3, 0x107000f

    #@294
    .line 696
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    #@297
    move-result-object v13

    #@298
    .line 698
    .local v13, "naStrings":[Ljava/lang/String;
    const/4 v2, 0x0

    #@299
    array-length v3, v13

    #@29a
    :goto_1
    if-ge v2, v3, :cond_4

    #@29c
    aget-object v12, v13, v2

    #@29e
    .line 700
    .local v12, "naString":Ljava/lang/String;
    :try_start_1
    new-instance v11, Landroid/net/NetworkConfig;

    #@2a0
    invoke-direct {v11, v12}, Landroid/net/NetworkConfig;-><init>(Ljava/lang/String;)V

    #@2a3
    .line 702
    .local v11, "n":Landroid/net/NetworkConfig;
    iget v4, v11, Landroid/net/NetworkConfig;->type:I

    #@2a5
    const/16 v6, 0x11

    #@2a7
    if-le v4, v6, :cond_1

    #@2a9
    .line 703
    new-instance v4, Ljava/lang/StringBuilder;

    #@2ab
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@2ae
    const-string/jumbo v6, "Error in networkAttributes - ignoring attempt to define type "

    #@2b1
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2b4
    move-result-object v4

    #@2b5
    .line 704
    iget v6, v11, Landroid/net/NetworkConfig;->type:I

    #@2b7
    .line 703
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@2ba
    move-result-object v4

    #@2bb
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2be
    move-result-object v4

    #@2bf
    invoke-static {v4}, Lcom/android/server/ConnectivityService;->loge(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    #@2c2
    .line 698
    .end local v11    # "n":Landroid/net/NetworkConfig;
    :goto_2
    add-int/lit8 v2, v2, 0x1

    #@2c4
    goto :goto_1

    #@2c5
    .line 679
    .end local v12    # "naString":Ljava/lang/String;
    .end local v13    # "naStrings":[Ljava/lang/String;
    .end local v16    # "powerManager":Landroid/os/PowerManager;
    .end local v18    # "wifiOnly":Z
    :catch_0
    move-exception v8

    #@2c6
    .line 681
    .local v8, "e":Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/StringBuilder;

    #@2c8
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@2cb
    const-string/jumbo v3, "unable to register INetworkPolicyListener"

    #@2ce
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2d1
    move-result-object v2

    #@2d2
    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@2d5
    move-result-object v2

    #@2d6
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2d9
    move-result-object v2

    #@2da
    invoke-static {v2}, Lcom/android/server/ConnectivityService;->loge(Ljava/lang/String;)V

    #@2dd
    goto/16 :goto_0

    #@2df
    .line 707
    .end local v8    # "e":Landroid/os/RemoteException;
    .restart local v11    # "n":Landroid/net/NetworkConfig;
    .restart local v12    # "naString":Ljava/lang/String;
    .restart local v13    # "naStrings":[Ljava/lang/String;
    .restart local v16    # "powerManager":Landroid/os/PowerManager;
    .restart local v18    # "wifiOnly":Z
    :cond_1
    if-eqz v18, :cond_2

    #@2e1
    :try_start_2
    iget v4, v11, Landroid/net/NetworkConfig;->type:I

    #@2e3
    invoke-static {v4}, Landroid/net/ConnectivityManager;->isNetworkTypeMobile(I)Z

    #@2e6
    move-result v4

    #@2e7
    if-eqz v4, :cond_2

    #@2e9
    .line 708
    new-instance v4, Ljava/lang/StringBuilder;

    #@2eb
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@2ee
    const-string/jumbo v6, "networkAttributes - ignoring mobile as this dev is wifiOnly "

    #@2f1
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2f4
    move-result-object v4

    #@2f5
    .line 709
    iget v6, v11, Landroid/net/NetworkConfig;->type:I

    #@2f7
    .line 708
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@2fa
    move-result-object v4

    #@2fb
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2fe
    move-result-object v4

    #@2ff
    invoke-static {v4}, Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V

    #@302
    goto :goto_2

    #@303
    .line 721
    .end local v11    # "n":Landroid/net/NetworkConfig;
    :catch_1
    move-exception v9

    #@304
    .local v9, "e":Ljava/lang/Exception;
    goto :goto_2

    #@305
    .line 712
    .end local v9    # "e":Ljava/lang/Exception;
    .restart local v11    # "n":Landroid/net/NetworkConfig;
    :cond_2
    move-object/from16 v0, p0

    #@307
    iget-object v4, v0, Lcom/android/server/ConnectivityService;->mNetConfigs:[Landroid/net/NetworkConfig;

    #@309
    iget v6, v11, Landroid/net/NetworkConfig;->type:I

    #@30b
    aget-object v4, v4, v6

    #@30d
    if-eqz v4, :cond_3

    #@30f
    .line 713
    new-instance v4, Ljava/lang/StringBuilder;

    #@311
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@314
    const-string/jumbo v6, "Error in networkAttributes - ignoring attempt to redefine type "

    #@317
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@31a
    move-result-object v4

    #@31b
    .line 714
    iget v6, v11, Landroid/net/NetworkConfig;->type:I

    #@31d
    .line 713
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@320
    move-result-object v4

    #@321
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@324
    move-result-object v4

    #@325
    invoke-static {v4}, Lcom/android/server/ConnectivityService;->loge(Ljava/lang/String;)V

    #@328
    goto :goto_2

    #@329
    .line 717
    :cond_3
    move-object/from16 v0, p0

    #@32b
    iget-object v4, v0, Lcom/android/server/ConnectivityService;->mLegacyTypeTracker:Lcom/android/server/ConnectivityService$LegacyTypeTracker;

    #@32d
    iget v6, v11, Landroid/net/NetworkConfig;->type:I

    #@32f
    invoke-virtual {v4, v6}, Lcom/android/server/ConnectivityService$LegacyTypeTracker;->addSupportedType(I)V

    #@332
    .line 719
    move-object/from16 v0, p0

    #@334
    iget-object v4, v0, Lcom/android/server/ConnectivityService;->mNetConfigs:[Landroid/net/NetworkConfig;

    #@336
    iget v6, v11, Landroid/net/NetworkConfig;->type:I

    #@338
    aput-object v11, v4, v6

    #@33a
    .line 720
    move-object/from16 v0, p0

    #@33c
    iget v4, v0, Lcom/android/server/ConnectivityService;->mNetworksDefined:I

    #@33e
    add-int/lit8 v4, v4, 0x1

    #@340
    move-object/from16 v0, p0

    #@342
    iput v4, v0, Lcom/android/server/ConnectivityService;->mNetworksDefined:I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    #@344
    goto/16 :goto_2

    #@346
    .line 727
    .end local v11    # "n":Landroid/net/NetworkConfig;
    .end local v12    # "naString":Ljava/lang/String;
    :cond_4
    move-object/from16 v0, p0

    #@348
    iget-object v2, v0, Lcom/android/server/ConnectivityService;->mNetConfigs:[Landroid/net/NetworkConfig;

    #@34a
    const/16 v3, 0x11

    #@34c
    aget-object v2, v2, v3

    #@34e
    if-nez v2, :cond_5

    #@350
    .line 730
    move-object/from16 v0, p0

    #@352
    iget-object v2, v0, Lcom/android/server/ConnectivityService;->mLegacyTypeTracker:Lcom/android/server/ConnectivityService$LegacyTypeTracker;

    #@354
    const/16 v3, 0x11

    #@356
    invoke-virtual {v2, v3}, Lcom/android/server/ConnectivityService$LegacyTypeTracker;->addSupportedType(I)V

    #@359
    .line 731
    move-object/from16 v0, p0

    #@35b
    iget v2, v0, Lcom/android/server/ConnectivityService;->mNetworksDefined:I

    #@35d
    add-int/lit8 v2, v2, 0x1

    #@35f
    move-object/from16 v0, p0

    #@361
    iput v2, v0, Lcom/android/server/ConnectivityService;->mNetworksDefined:I

    #@363
    .line 736
    :cond_5
    new-instance v2, Ljava/util/ArrayList;

    #@365
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    #@368
    move-object/from16 v0, p0

    #@36a
    iput-object v2, v0, Lcom/android/server/ConnectivityService;->mProtectedNetworks:Ljava/util/List;

    #@36c
    .line 737
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@36f
    move-result-object v2

    #@370
    .line 738
    const v3, 0x1070010

    #@373
    .line 737
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getIntArray(I)[I

    #@376
    move-result-object v17

    #@377
    .line 739
    .local v17, "protectedNetworks":[I
    const/4 v2, 0x0

    #@378
    move-object/from16 v0, v17

    #@37a
    array-length v3, v0

    #@37b
    :goto_3
    if-ge v2, v3, :cond_7

    #@37d
    aget v15, v17, v2

    #@37f
    .line 740
    .local v15, "p":I
    move-object/from16 v0, p0

    #@381
    iget-object v4, v0, Lcom/android/server/ConnectivityService;->mNetConfigs:[Landroid/net/NetworkConfig;

    #@383
    aget-object v4, v4, v15

    #@385
    if-eqz v4, :cond_6

    #@387
    move-object/from16 v0, p0

    #@389
    iget-object v4, v0, Lcom/android/server/ConnectivityService;->mProtectedNetworks:Ljava/util/List;

    #@38b
    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@38e
    move-result-object v6

    #@38f
    invoke-interface {v4, v6}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    #@392
    move-result v4

    #@393
    if-nez v4, :cond_6

    #@395
    .line 741
    move-object/from16 v0, p0

    #@397
    iget-object v4, v0, Lcom/android/server/ConnectivityService;->mProtectedNetworks:Ljava/util/List;

    #@399
    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@39c
    move-result-object v6

    #@39d
    invoke-interface {v4, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@3a0
    .line 739
    :goto_4
    add-int/lit8 v2, v2, 0x1

    #@3a2
    goto :goto_3

    #@3a3
    .line 743
    :cond_6
    new-instance v4, Ljava/lang/StringBuilder;

    #@3a5
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@3a8
    const-string/jumbo v6, "Ignoring protectedNetwork "

    #@3ab
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3ae
    move-result-object v4

    #@3af
    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@3b2
    move-result-object v4

    #@3b3
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3b6
    move-result-object v4

    #@3b7
    invoke-static {v4}, Lcom/android/server/ConnectivityService;->loge(Ljava/lang/String;)V

    #@3ba
    goto :goto_4

    #@3bb
    .line 747
    .end local v15    # "p":I
    :cond_7
    const-string/jumbo v2, "cm.test.mode"

    #@3be
    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    #@3c1
    move-result-object v2

    #@3c2
    const-string/jumbo v3, "true"

    #@3c5
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@3c8
    move-result v2

    #@3c9
    if-eqz v2, :cond_8

    #@3cb
    .line 748
    const-string/jumbo v2, "ro.build.type"

    #@3ce
    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    #@3d1
    move-result-object v2

    #@3d2
    const-string/jumbo v3, "eng"

    #@3d5
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@3d8
    move-result v2

    #@3d9
    .line 747
    :goto_5
    move-object/from16 v0, p0

    #@3db
    iput-boolean v2, v0, Lcom/android/server/ConnectivityService;->mTestMode:Z

    #@3dd
    .line 750
    new-instance v2, Lcom/android/server/connectivity/Tethering;

    #@3df
    move-object/from16 v0, p0

    #@3e1
    iget-object v3, v0, Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;

    #@3e3
    move-object/from16 v0, p0

    #@3e5
    iget-object v4, v0, Lcom/android/server/ConnectivityService;->mNetd:Landroid/os/INetworkManagementService;

    #@3e7
    move-object/from16 v0, p3

    #@3e9
    invoke-direct {v2, v3, v4, v0}, Lcom/android/server/connectivity/Tethering;-><init>(Landroid/content/Context;Landroid/os/INetworkManagementService;Landroid/net/INetworkStatsService;)V

    #@3ec
    move-object/from16 v0, p0

    #@3ee
    iput-object v2, v0, Lcom/android/server/ConnectivityService;->mTethering:Lcom/android/server/connectivity/Tethering;

    #@3f0
    .line 752
    new-instance v2, Lcom/android/server/connectivity/PermissionMonitor;

    #@3f2
    move-object/from16 v0, p0

    #@3f4
    iget-object v3, v0, Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;

    #@3f6
    move-object/from16 v0, p0

    #@3f8
    iget-object v4, v0, Lcom/android/server/ConnectivityService;->mNetd:Landroid/os/INetworkManagementService;

    #@3fa
    invoke-direct {v2, v3, v4}, Lcom/android/server/connectivity/PermissionMonitor;-><init>(Landroid/content/Context;Landroid/os/INetworkManagementService;)V

    #@3fd
    move-object/from16 v0, p0

    #@3ff
    iput-object v2, v0, Lcom/android/server/ConnectivityService;->mPermissionMonitor:Lcom/android/server/connectivity/PermissionMonitor;

    #@401
    .line 755
    new-instance v5, Landroid/content/IntentFilter;

    #@403
    invoke-direct {v5}, Landroid/content/IntentFilter;-><init>()V

    #@406
    .line 756
    .local v5, "intentFilter":Landroid/content/IntentFilter;
    const-string/jumbo v2, "android.intent.action.USER_STARTED"

    #@409
    invoke-virtual {v5, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    #@40c
    .line 757
    const-string/jumbo v2, "android.intent.action.USER_STOPPED"

    #@40f
    invoke-virtual {v5, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    #@412
    .line 758
    const-string/jumbo v2, "android.intent.action.USER_ADDED"

    #@415
    invoke-virtual {v5, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    #@418
    .line 759
    const-string/jumbo v2, "android.intent.action.USER_REMOVED"

    #@41b
    invoke-virtual {v5, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    #@41e
    .line 760
    const-string/jumbo v2, "android.intent.action.USER_UNLOCKED"

    #@421
    invoke-virtual {v5, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    #@424
    .line 761
    move-object/from16 v0, p0

    #@426
    iget-object v2, v0, Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;

    #@428
    .line 762
    move-object/from16 v0, p0

    #@42a
    iget-object v3, v0, Lcom/android/server/ConnectivityService;->mUserIntentReceiver:Landroid/content/BroadcastReceiver;

    #@42c
    sget-object v4, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    #@42e
    const/4 v6, 0x0

    #@42f
    const/4 v7, 0x0

    #@430
    .line 761
    invoke-virtual/range {v2 .. v7}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    #@433
    .line 765
    :try_start_3
    move-object/from16 v0, p0

    #@435
    iget-object v2, v0, Lcom/android/server/ConnectivityService;->mNetd:Landroid/os/INetworkManagementService;

    #@437
    move-object/from16 v0, p0

    #@439
    iget-object v3, v0, Lcom/android/server/ConnectivityService;->mTethering:Lcom/android/server/connectivity/Tethering;

    #@43b
    invoke-interface {v2, v3}, Landroid/os/INetworkManagementService;->registerObserver(Landroid/net/INetworkManagementEventObserver;)V

    #@43e
    .line 766
    move-object/from16 v0, p0

    #@440
    iget-object v2, v0, Lcom/android/server/ConnectivityService;->mNetd:Landroid/os/INetworkManagementService;

    #@442
    move-object/from16 v0, p0

    #@444
    iget-object v3, v0, Lcom/android/server/ConnectivityService;->mDataActivityObserver:Landroid/net/INetworkManagementEventObserver;

    #@446
    invoke-interface {v2, v3}, Landroid/os/INetworkManagementService;->registerObserver(Landroid/net/INetworkManagementEventObserver;)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_2

    #@449
    .line 772
    :goto_6
    new-instance v2, Ljava/util/ArrayList;

    #@44b
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    #@44e
    move-object/from16 v0, p0

    #@450
    iput-object v2, v0, Lcom/android/server/ConnectivityService;->mInetLog:Ljava/util/ArrayList;

    #@452
    .line 775
    new-instance v2, Lcom/android/server/ConnectivityService$SettingsObserver;

    #@454
    move-object/from16 v0, p0

    #@456
    iget-object v3, v0, Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;

    #@458
    move-object/from16 v0, p0

    #@45a
    iget-object v4, v0, Lcom/android/server/ConnectivityService;->mHandler:Lcom/android/server/ConnectivityService$InternalHandler;

    #@45c
    invoke-direct {v2, v3, v4}, Lcom/android/server/ConnectivityService$SettingsObserver;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    #@45f
    move-object/from16 v0, p0

    #@461
    iput-object v2, v0, Lcom/android/server/ConnectivityService;->mSettingsObserver:Lcom/android/server/ConnectivityService$SettingsObserver;

    #@463
    .line 776
    invoke-direct/range {p0 .. p0}, Lcom/android/server/ConnectivityService;->registerSettingsCallbacks()V

    #@466
    .line 778
    new-instance v2, Lcom/android/server/connectivity/DataConnectionStats;

    #@468
    move-object/from16 v0, p0

    #@46a
    iget-object v3, v0, Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;

    #@46c
    invoke-direct {v2, v3}, Lcom/android/server/connectivity/DataConnectionStats;-><init>(Landroid/content/Context;)V

    #@46f
    move-object/from16 v0, p0

    #@471
    iput-object v2, v0, Lcom/android/server/ConnectivityService;->mDataConnectionStats:Lcom/android/server/connectivity/DataConnectionStats;

    #@473
    .line 779
    move-object/from16 v0, p0

    #@475
    iget-object v2, v0, Lcom/android/server/ConnectivityService;->mDataConnectionStats:Lcom/android/server/connectivity/DataConnectionStats;

    #@477
    invoke-virtual {v2}, Lcom/android/server/connectivity/DataConnectionStats;->startMonitoring()V

    #@47a
    .line 781
    new-instance v2, Lcom/android/server/connectivity/PacManager;

    #@47c
    move-object/from16 v0, p0

    #@47e
    iget-object v3, v0, Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;

    #@480
    move-object/from16 v0, p0

    #@482
    iget-object v4, v0, Lcom/android/server/ConnectivityService;->mHandler:Lcom/android/server/ConnectivityService$InternalHandler;

    #@484
    const/16 v6, 0x10

    #@486
    invoke-direct {v2, v3, v4, v6}, Lcom/android/server/connectivity/PacManager;-><init>(Landroid/content/Context;Landroid/os/Handler;I)V

    #@489
    move-object/from16 v0, p0

    #@48b
    iput-object v2, v0, Lcom/android/server/ConnectivityService;->mPacManager:Lcom/android/server/connectivity/PacManager;

    #@48d
    .line 783
    const-string/jumbo v2, "user"

    #@490
    move-object/from16 v0, p1

    #@492
    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    #@495
    move-result-object v2

    #@496
    check-cast v2, Landroid/os/UserManager;

    #@498
    move-object/from16 v0, p0

    #@49a
    iput-object v2, v0, Lcom/android/server/ConnectivityService;->mUserManager:Landroid/os/UserManager;

    #@49c
    .line 785
    new-instance v2, Lcom/android/server/connectivity/KeepaliveTracker;

    #@49e
    move-object/from16 v0, p0

    #@4a0
    iget-object v3, v0, Lcom/android/server/ConnectivityService;->mHandler:Lcom/android/server/ConnectivityService$InternalHandler;

    #@4a2
    invoke-direct {v2, v3}, Lcom/android/server/connectivity/KeepaliveTracker;-><init>(Landroid/os/Handler;)V

    #@4a5
    move-object/from16 v0, p0

    #@4a7
    iput-object v2, v0, Lcom/android/server/ConnectivityService;->mKeepaliveTracker:Lcom/android/server/connectivity/KeepaliveTracker;

    #@4a9
    .line 639
    return-void

    #@4aa
    .line 747
    .end local v5    # "intentFilter":Landroid/content/IntentFilter;
    :cond_8
    const/4 v2, 0x0

    #@4ab
    goto/16 :goto_5

    #@4ad
    .line 767
    .restart local v5    # "intentFilter":Landroid/content/IntentFilter;
    :catch_2
    move-exception v8

    #@4ae
    .line 768
    .restart local v8    # "e":Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/StringBuilder;

    #@4b0
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@4b3
    const-string/jumbo v3, "Error registering observer :"

    #@4b6
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4b9
    move-result-object v2

    #@4ba
    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@4bd
    move-result-object v2

    #@4be
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@4c1
    move-result-object v2

    #@4c2
    invoke-static {v2}, Lcom/android/server/ConnectivityService;->loge(Ljava/lang/String;)V

    #@4c5
    goto :goto_6
.end method

.method private addLegacyRouteToHost(Landroid/net/LinkProperties;Ljava/net/InetAddress;II)Z
    .locals 5
    .param p1, "lp"    # Landroid/net/LinkProperties;
    .param p2, "addr"    # Ljava/net/InetAddress;
    .param p3, "netId"    # I
    .param p4, "uid"    # I

    #@0
    .prologue
    .line 1375
    invoke-virtual {p1}, Landroid/net/LinkProperties;->getAllRoutes()Ljava/util/List;

    #@3
    move-result-object v3

    #@4
    invoke-static {v3, p2}, Landroid/net/RouteInfo;->selectBestRoute(Ljava/util/Collection;Ljava/net/InetAddress;)Landroid/net/RouteInfo;

    #@7
    move-result-object v0

    #@8
    .line 1376
    .local v0, "bestRoute":Landroid/net/RouteInfo;
    if-nez v0, :cond_0

    #@a
    .line 1377
    invoke-virtual {p1}, Landroid/net/LinkProperties;->getInterfaceName()Ljava/lang/String;

    #@d
    move-result-object v3

    #@e
    invoke-static {p2, v3}, Landroid/net/RouteInfo;->makeHostRoute(Ljava/net/InetAddress;Ljava/lang/String;)Landroid/net/RouteInfo;

    #@11
    move-result-object v0

    #@12
    .line 1389
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
    .line 1390
    const-string/jumbo v4, " for UID/PID "

    #@25
    .line 1389
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@28
    move-result-object v3

    #@29
    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@2c
    move-result-object v3

    #@2d
    .line 1390
    const-string/jumbo v4, "/"

    #@30
    .line 1389
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@33
    move-result-object v3

    #@34
    .line 1390
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    #@37
    move-result v4

    #@38
    .line 1389
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
    .line 1392
    :try_start_0
    iget-object v3, p0, Lcom/android/server/ConnectivityService;->mNetd:Landroid/os/INetworkManagementService;

    #@45
    invoke-interface {v3, p3, v0, p4}, Landroid/os/INetworkManagementService;->addLegacyRouteForNetId(ILandroid/net/RouteInfo;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    #@48
    .line 1398
    const/4 v3, 0x1

    #@49
    return v3

    #@4a
    .line 1379
    :cond_0
    invoke-virtual {v0}, Landroid/net/RouteInfo;->getInterface()Ljava/lang/String;

    #@4d
    move-result-object v2

    #@4e
    .line 1380
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
    .line 1382
    invoke-static {p2, v2}, Landroid/net/RouteInfo;->makeHostRoute(Ljava/net/InetAddress;Ljava/lang/String;)Landroid/net/RouteInfo;

    #@5b
    move-result-object v0

    #@5c
    goto :goto_0

    #@5d
    .line 1386
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
    .line 1393
    .end local v2    # "iface":Ljava/lang/String;
    :catch_0
    move-exception v1

    #@67
    .line 1395
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
    .line 1396
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
    .line 449
    iget-object v1, p0, Lcom/android/server/ConnectivityService;->mValidationLogs:Ljava/util/ArrayDeque;

    #@2
    monitor-enter v1

    #@3
    .line 450
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
    .line 451
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mValidationLogs:Ljava/util/ArrayDeque;

    #@f
    invoke-virtual {v0}, Ljava/util/ArrayDeque;->removeLast()Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@12
    goto :goto_0

    #@13
    .line 449
    :catchall_0
    move-exception v0

    #@14
    monitor-exit v1

    #@15
    throw v0

    #@16
    .line 453
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
    .line 448
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
    .line 1816
    array-length v3, p1

    #@2
    move v1, v2

    #@3
    :goto_0
    if-ge v1, v3, :cond_1

    #@5
    aget-object v0, p1, v1

    #@7
    .line 1817
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
    .line 1816
    :cond_0
    add-int/lit8 v1, v1, 0x1

    #@11
    goto :goto_0

    #@12
    .line 1819
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
    .line 4508
    iget-object v3, p1, Lcom/android/server/ConnectivityService$NetworkRequestInfo;->messenger:Landroid/os/Messenger;

    #@2
    if-nez v3, :cond_0

    #@4
    return-void

    #@5
    .line 4509
    :cond_0
    new-instance v0, Landroid/os/Bundle;

    #@7
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    #@a
    .line 4510
    .local v0, "bundle":Landroid/os/Bundle;
    const-class v3, Landroid/net/NetworkRequest;

    #@c
    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    #@f
    move-result-object v3

    #@10
    .line 4511
    new-instance v4, Landroid/net/NetworkRequest;

    #@12
    iget-object v5, p1, Lcom/android/server/ConnectivityService$NetworkRequestInfo;->request:Landroid/net/NetworkRequest;

    #@14
    invoke-direct {v4, v5}, Landroid/net/NetworkRequest;-><init>(Landroid/net/NetworkRequest;)V

    #@17
    .line 4510
    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    #@1a
    .line 4512
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    #@1d
    move-result-object v2

    #@1e
    .line 4513
    .local v2, "msg":Landroid/os/Message;
    const v3, 0x80005

    #@21
    if-eq p3, v3, :cond_1

    #@23
    .line 4514
    const v3, 0x80008

    #@26
    if-eq p3, v3, :cond_1

    #@28
    .line 4515
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
    .line 4517
    :cond_1
    packed-switch p3, :pswitch_data_0

    #@36
    .line 4533
    :goto_0
    :pswitch_0
    iput p3, v2, Landroid/os/Message;->what:I

    #@38
    .line 4534
    invoke-virtual {v2, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    #@3b
    .line 4540
    :try_start_0
    iget-object v3, p1, Lcom/android/server/ConnectivityService$NetworkRequestInfo;->messenger:Landroid/os/Messenger;

    #@3d
    invoke-virtual {v3, v2}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@40
    .line 4507
    :goto_1
    return-void

    #@41
    .line 4519
    :pswitch_1
    const/16 v3, 0x7530

    #@43
    iput v3, v2, Landroid/os/Message;->arg1:I

    #@45
    goto :goto_0

    #@46
    .line 4523
    :pswitch_2
    const-class v3, Landroid/net/NetworkCapabilities;

    #@48
    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    #@4b
    move-result-object v3

    #@4c
    .line 4524
    new-instance v4, Landroid/net/NetworkCapabilities;

    #@4e
    iget-object v5, p2, Lcom/android/server/connectivity/NetworkAgentInfo;->networkCapabilities:Landroid/net/NetworkCapabilities;

    #@50
    invoke-direct {v4, v5}, Landroid/net/NetworkCapabilities;-><init>(Landroid/net/NetworkCapabilities;)V

    #@53
    .line 4523
    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    #@56
    goto :goto_0

    #@57
    .line 4528
    :pswitch_3
    const-class v3, Landroid/net/LinkProperties;

    #@59
    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    #@5c
    move-result-object v3

    #@5d
    .line 4529
    new-instance v4, Landroid/net/LinkProperties;

    #@5f
    iget-object v5, p2, Lcom/android/server/connectivity/NetworkAgentInfo;->linkProperties:Landroid/net/LinkProperties;

    #@61
    invoke-direct {v4, v5}, Landroid/net/LinkProperties;-><init>(Landroid/net/LinkProperties;)V

    #@64
    .line 4528
    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    #@67
    goto :goto_0

    #@68
    .line 4541
    :catch_0
    move-exception v1

    #@69
    .line 4543
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
    .line 4517
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
    .line 2901
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
    .line 2902
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
    .line 2901
    if-eqz v0, :cond_1

    #@1e
    .line 2903
    :cond_0
    const/4 p1, 0x0

    #@1f
    .line 2905
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
    .line 3138
    .local p0, "value":Ljava/lang/Object;, "TT;"
    if-nez p0, :cond_0

    #@2
    .line 3139
    new-instance v0, Ljava/lang/NullPointerException;

    #@4
    invoke-direct {v0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@7
    throw v0

    #@8
    .line 3141
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
    .line 789
    new-instance v0, Landroid/net/NetworkCapabilities;

    #@3
    invoke-direct {v0}, Landroid/net/NetworkCapabilities;-><init>()V

    #@6
    .line 790
    .local v0, "netCap":Landroid/net/NetworkCapabilities;
    const/16 v1, 0xc

    #@8
    invoke-virtual {v0, v1}, Landroid/net/NetworkCapabilities;->addCapability(I)Landroid/net/NetworkCapabilities;

    #@b
    .line 791
    const/16 v1, 0xd

    #@d
    invoke-virtual {v0, v1}, Landroid/net/NetworkCapabilities;->addCapability(I)Landroid/net/NetworkCapabilities;

    #@10
    .line 792
    if-le p1, v3, :cond_0

    #@12
    .line 793
    invoke-virtual {v0, p1}, Landroid/net/NetworkCapabilities;->addTransportType(I)Landroid/net/NetworkCapabilities;

    #@15
    .line 795
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
    .line 3275
    invoke-virtual {p1}, Lcom/android/server/connectivity/Vpn;->getVpnInfo()Lcom/android/internal/net/VpnInfo;

    #@5
    move-result-object v1

    #@6
    .line 3276
    .local v1, "info":Lcom/android/internal/net/VpnInfo;
    if-nez v1, :cond_0

    #@8
    .line 3277
    return-object v4

    #@9
    .line 3279
    :cond_0
    invoke-virtual {p1}, Lcom/android/server/connectivity/Vpn;->getUnderlyingNetworks()[Landroid/net/Network;

    #@c
    move-result-object v3

    #@d
    .line 3282
    .local v3, "underlyingNetworks":[Landroid/net/Network;
    if-nez v3, :cond_3

    #@f
    .line 3283
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->getDefaultNetwork()Lcom/android/server/connectivity/NetworkAgentInfo;

    #@12
    move-result-object v0

    #@13
    .line 3284
    .local v0, "defaultNetwork":Lcom/android/server/connectivity/NetworkAgentInfo;
    if-eqz v0, :cond_1

    #@15
    iget-object v5, v0, Lcom/android/server/connectivity/NetworkAgentInfo;->linkProperties:Landroid/net/LinkProperties;

    #@17
    if-eqz v5, :cond_1

    #@19
    .line 3285
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
    .line 3293
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
    .line 3287
    .restart local v1    # "info":Lcom/android/internal/net/VpnInfo;
    :cond_3
    array-length v5, v3

    #@2c
    if-lez v5, :cond_1

    #@2e
    .line 3288
    aget-object v5, v3, v6

    #@30
    invoke-virtual {p0, v5}, Lcom/android/server/ConnectivityService;->getLinkProperties(Landroid/net/Network;)Landroid/net/LinkProperties;

    #@33
    move-result-object v2

    #@34
    .line 3289
    .local v2, "linkProperties":Landroid/net/LinkProperties;
    if-eqz v2, :cond_1

    #@36
    .line 3290
    invoke-virtual {v2}, Landroid/net/LinkProperties;->getInterfaceName()Ljava/lang/String;

    #@39
    move-result-object v5

    #@3a
    iput-object v5, v1, Lcom/android/internal/net/VpnInfo;->primaryUnderlyingIface:Ljava/lang/String;

    #@3c
    goto :goto_0
.end method

.method private dumpNetworkDiagnostics(Lcom/android/internal/util/IndentingPrintWriter;)V
    .locals 12
    .param p1, "pw"    # Lcom/android/internal/util/IndentingPrintWriter;

    #@0
    .prologue
    .line 1823
    new-instance v6, Ljava/util/ArrayList;

    #@2
    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    #@5
    .line 1824
    .local v6, "netDiags":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/connectivity/NetworkDiagnostics;>;"
    const-wide/16 v0, 0x1388

    #@7
    .line 1825
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
    .line 1827
    .local v2, "nai":Lcom/android/server/connectivity/NetworkAgentInfo;
    new-instance v7, Lcom/android/server/connectivity/NetworkDiagnostics;

    #@1f
    .line 1828
    iget-object v8, v2, Lcom/android/server/connectivity/NetworkAgentInfo;->network:Landroid/net/Network;

    #@21
    .line 1829
    new-instance v9, Landroid/net/LinkProperties;

    #@23
    iget-object v10, v2, Lcom/android/server/connectivity/NetworkAgentInfo;->linkProperties:Landroid/net/LinkProperties;

    #@25
    invoke-direct {v9, v10}, Landroid/net/LinkProperties;-><init>(Landroid/net/LinkProperties;)V

    #@28
    .line 1830
    const-wide/16 v10, 0x1388

    #@2a
    .line 1827
    invoke-direct {v7, v8, v9, v10, v11}, Lcom/android/server/connectivity/NetworkDiagnostics;-><init>(Landroid/net/Network;Landroid/net/LinkProperties;J)V

    #@2d
    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@30
    goto :goto_0

    #@31
    .line 1833
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
    .line 1834
    .local v4, "netDiag":Lcom/android/server/connectivity/NetworkDiagnostics;
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    #@44
    .line 1835
    invoke-virtual {v4}, Lcom/android/server/connectivity/NetworkDiagnostics;->waitForMeasurements()V

    #@47
    .line 1836
    invoke-virtual {v4, p1}, Lcom/android/server/connectivity/NetworkDiagnostics;->dump(Lcom/android/internal/util/IndentingPrintWriter;)V

    #@4a
    goto :goto_1

    #@4b
    .line 1822
    .end local v4    # "netDiag":Lcom/android/server/connectivity/NetworkDiagnostics;
    :cond_1
    return-void
.end method

.method private enforceAccessPermission()V
    .locals 3

    #@0
    .prologue
    .line 1497
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;

    #@2
    .line 1498
    const-string/jumbo v1, "android.permission.ACCESS_NETWORK_STATE"

    #@5
    .line 1499
    const-string/jumbo v2, "ConnectivityService"

    #@8
    .line 1497
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    #@b
    .line 1496
    return-void
.end method

.method private enforceChangePermission()V
    .locals 1

    #@0
    .prologue
    .line 1503
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;

    #@2
    invoke-static {v0}, Landroid/net/ConnectivityManager;->enforceChangePermission(Landroid/content/Context;)V

    #@5
    .line 1502
    return-void
.end method

.method private enforceConnectivityInternalPermission()V
    .locals 3

    #@0
    .prologue
    .line 1513
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;

    #@2
    .line 1514
    const-string/jumbo v1, "android.permission.CONNECTIVITY_INTERNAL"

    #@5
    .line 1515
    const-string/jumbo v2, "ConnectivityService"

    #@8
    .line 1513
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    #@b
    .line 1512
    return-void
.end method

.method private enforceCrossUserPermission(I)V
    .locals 3
    .param p1, "userId"    # I

    #@0
    .prologue
    .line 1481
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    #@3
    move-result v0

    #@4
    if-ne p1, v0, :cond_0

    #@6
    .line 1483
    return-void

    #@7
    .line 1485
    :cond_0
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;

    #@9
    .line 1486
    const-string/jumbo v1, "android.permission.INTERACT_ACROSS_USERS_FULL"

    #@c
    .line 1487
    const-string/jumbo v2, "ConnectivityService"

    #@f
    .line 1485
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    #@12
    .line 1480
    return-void
.end method

.method private enforceInternetPermission()V
    .locals 3

    #@0
    .prologue
    .line 1491
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;

    #@2
    .line 1492
    const-string/jumbo v1, "android.permission.INTERNET"

    #@5
    .line 1493
    const-string/jumbo v2, "ConnectivityService"

    #@8
    .line 1491
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    #@b
    .line 1490
    return-void
.end method

.method private enforceKeepalivePermission()V
    .locals 3

    #@0
    .prologue
    .line 1519
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;

    #@2
    const-string/jumbo v1, "android.permission.PACKET_KEEPALIVE_OFFLOAD"

    #@5
    const-string/jumbo v2, "ConnectivityService"

    #@8
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    #@b
    .line 1518
    return-void
.end method

.method private enforceMeteredApnPolicy(Landroid/net/NetworkCapabilities;)V
    .locals 6
    .param p1, "networkCapabilities"    # Landroid/net/NetworkCapabilities;

    #@0
    .prologue
    const/16 v5, 0xb

    #@2
    .line 4038
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    #@5
    move-result v0

    #@6
    .line 4039
    .local v0, "uid":I
    invoke-direct {p0, v0}, Lcom/android/server/ConnectivityService;->isSystem(I)Z

    #@9
    move-result v2

    #@a
    if-eqz v2, :cond_0

    #@c
    .line 4040
    return-void

    #@d
    .line 4043
    :cond_0
    invoke-virtual {p1, v5}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    #@10
    move-result v2

    #@11
    if-nez v2, :cond_1

    #@13
    .line 4045
    iget-object v3, p0, Lcom/android/server/ConnectivityService;->mRulesLock:Ljava/lang/Object;

    #@15
    monitor-enter v3

    #@16
    .line 4046
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
    .line 4048
    iget-boolean v2, p0, Lcom/android/server/ConnectivityService;->mRestrictBackground:Z

    #@21
    if-eqz v2, :cond_1

    #@23
    and-int/lit8 v2, v1, 0x1

    #@25
    if-nez v2, :cond_1

    #@27
    .line 4049
    and-int/lit8 v2, v1, 0x2

    #@29
    if-nez v2, :cond_1

    #@2b
    .line 4052
    invoke-virtual {p1, v5}, Landroid/net/NetworkCapabilities;->addCapability(I)Landroid/net/NetworkCapabilities;

    #@2e
    .line 4037
    .end local v1    # "uidRules":I
    :cond_1
    return-void

    #@2f
    .line 4045
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
    .line 4009
    const/16 v0, 0xd

    #@2
    invoke-virtual {p1, v0}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    #@5
    move-result v0

    #@6
    if-nez v0, :cond_0

    #@8
    .line 4010
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->enforceConnectivityInternalPermission()V

    #@b
    .line 4008
    :goto_0
    return-void

    #@c
    .line 4012
    :cond_0
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->enforceChangePermission()V

    #@f
    goto :goto_0
.end method

.method private enforceTetherAccessPermission()V
    .locals 3

    #@0
    .prologue
    .line 1507
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;

    #@2
    .line 1508
    const-string/jumbo v1, "android.permission.ACCESS_NETWORK_STATE"

    #@5
    .line 1509
    const-string/jumbo v2, "ConnectivityService"

    #@8
    .line 1507
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    #@b
    .line 1506
    return-void
.end method

.method private ensureRequestableCapabilities(Landroid/net/NetworkCapabilities;)V
    .locals 4
    .param p1, "networkCapabilities"    # Landroid/net/NetworkCapabilities;

    #@0
    .prologue
    .line 3925
    invoke-virtual {p1}, Landroid/net/NetworkCapabilities;->describeFirstNonRequestableCapability()Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    .line 3926
    .local v0, "badCapability":Ljava/lang/String;
    if-eqz v0, :cond_0

    #@6
    .line 3927
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
    .line 3924
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
    .line 989
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
    .line 991
    iget-object v1, p1, Landroid/net/NetworkState;->linkProperties:Landroid/net/LinkProperties;

    #@e
    invoke-direct {p0, v1, p2, p3}, Lcom/android/server/ConnectivityService;->isNetworkWithLinkPropertiesBlocked(Landroid/net/LinkProperties;IZ)Z

    #@11
    move-result v1

    #@12
    if-eqz v1, :cond_2

    #@14
    .line 992
    iget-object v1, p1, Landroid/net/NetworkState;->networkInfo:Landroid/net/NetworkInfo;

    #@16
    sget-object v4, Landroid/net/NetworkInfo$DetailedState;->BLOCKED:Landroid/net/NetworkInfo$DetailedState;

    #@18
    invoke-virtual {v1, v4, v5, v5}, Landroid/net/NetworkInfo;->setDetailedState(Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;Ljava/lang/String;)V

    #@1b
    .line 994
    :cond_2
    iget-object v1, p0, Lcom/android/server/ConnectivityService;->mLockdownTracker:Lcom/android/server/net/LockdownVpnTracker;

    #@1d
    if-eqz v1, :cond_3

    #@1f
    .line 995
    iget-object v1, p0, Lcom/android/server/ConnectivityService;->mLockdownTracker:Lcom/android/server/net/LockdownVpnTracker;

    #@21
    iget-object v4, p1, Landroid/net/NetworkState;->networkInfo:Landroid/net/NetworkInfo;

    #@23
    invoke-virtual {v1, v4}, Lcom/android/server/net/LockdownVpnTracker;->augmentNetworkInfo(Landroid/net/NetworkInfo;)V

    #@26
    .line 999
    :cond_3
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    #@29
    move-result-wide v2

    #@2a
    .line 1001
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
    .line 1004
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@38
    .line 988
    :goto_0
    return-void

    #@39
    .line 1002
    :catch_0
    move-exception v0

    #@3a
    .line 1004
    .local v0, "e":Landroid/os/RemoteException;
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@3d
    goto :goto_0

    #@3e
    .line 1003
    .end local v0    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v1

    #@3f
    .line 1004
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@42
    .line 1003
    throw v1
.end method

.method private findExistingNetworkRequestInfo(Landroid/app/PendingIntent;)Lcom/android/server/ConnectivityService$NetworkRequestInfo;
    .locals 6
    .param p1, "pendingIntent"    # Landroid/app/PendingIntent;

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    .line 2323
    invoke-virtual {p1}, Landroid/app/PendingIntent;->getIntent()Landroid/content/Intent;

    #@4
    move-result-object v3

    #@5
    .line 2324
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
    .line 2325
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/net/NetworkRequest;Lcom/android/server/ConnectivityService$NetworkRequestInfo;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    #@1e
    move-result-object v4

    #@1f
    check-cast v4, Lcom/android/server/ConnectivityService$NetworkRequestInfo;

    #@21
    iget-object v2, v4, Lcom/android/server/ConnectivityService$NetworkRequestInfo;->mPendingIntent:Landroid/app/PendingIntent;

    #@23
    .line 2326
    .local v2, "existingPendingIntent":Landroid/app/PendingIntent;
    if-eqz v2, :cond_0

    #@25
    .line 2327
    invoke-virtual {v2}, Landroid/app/PendingIntent;->getIntent()Landroid/content/Intent;

    #@28
    move-result-object v4

    #@29
    invoke-virtual {v4, v3}, Landroid/content/Intent;->filterEquals(Landroid/content/Intent;)Z

    #@2c
    move-result v4

    #@2d
    .line 2326
    if-eqz v4, :cond_0

    #@2f
    .line 2328
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    #@32
    move-result-object v4

    #@33
    check-cast v4, Lcom/android/server/ConnectivityService$NetworkRequestInfo;

    #@35
    return-object v4

    #@36
    .line 2331
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/net/NetworkRequest;Lcom/android/server/ConnectivityService$NetworkRequestInfo;>;"
    .end local v2    # "existingPendingIntent":Landroid/app/PendingIntent;
    :cond_1
    return-object v5
.end method

.method private flushVmDnsCache()V
    .locals 5

    #@0
    .prologue
    .line 1780
    new-instance v2, Landroid/content/Intent;

    #@2
    const-string/jumbo v3, "android.intent.action.CLEAR_DNS_CACHE"

    #@5
    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    #@8
    .line 1781
    .local v2, "intent":Landroid/content/Intent;
    const/high16 v3, 0x20000000

    #@a
    invoke-virtual {v2, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    #@d
    .line 1785
    const/high16 v3, 0x4000000

    #@f
    invoke-virtual {v2, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    #@12
    .line 1786
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    #@15
    move-result-wide v0

    #@16
    .line 1788
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
    .line 1790
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@20
    .line 1776
    return-void

    #@21
    .line 1789
    :catchall_0
    move-exception v3

    #@22
    .line 1790
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@25
    .line 1789
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
    .line 1038
    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    #@4
    move-result v1

    #@5
    .line 1039
    .local v1, "user":I
    const/4 v3, 0x0

    #@6
    .line 1040
    .local v3, "vpnNetId":I
    iget-object v5, p0, Lcom/android/server/ConnectivityService;->mVpns:Landroid/util/SparseArray;

    #@8
    monitor-enter v5

    #@9
    .line 1041
    :try_start_0
    iget-object v6, p0, Lcom/android/server/ConnectivityService;->mVpns:Landroid/util/SparseArray;

    #@b
    invoke-virtual {v6, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    #@e
    move-result-object v2

    #@f
    check-cast v2, Lcom/android/server/connectivity/Vpn;

    #@11
    .line 1042
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
    .line 1045
    if-eqz v3, :cond_1

    #@20
    .line 1046
    iget-object v5, p0, Lcom/android/server/ConnectivityService;->mNetworkForNetId:Landroid/util/SparseArray;

    #@22
    monitor-enter v5

    #@23
    .line 1047
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
    .line 1049
    if-eqz v0, :cond_1

    #@2e
    iget-object v4, v0, Lcom/android/server/connectivity/NetworkAgentInfo;->network:Landroid/net/Network;

    #@30
    return-object v4

    #@31
    .line 1040
    .end local v0    # "nai":Lcom/android/server/connectivity/NetworkAgentInfo;
    .end local v2    # "vpn":Lcom/android/server/connectivity/Vpn;
    :catchall_0
    move-exception v4

    #@32
    monitor-exit v5

    #@33
    throw v4

    #@34
    .line 1046
    .restart local v2    # "vpn":Lcom/android/server/connectivity/Vpn;
    :catchall_1
    move-exception v4

    #@35
    monitor-exit v5

    #@36
    throw v4

    #@37
    .line 1051
    :cond_1
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->getDefaultNetwork()Lcom/android/server/connectivity/NetworkAgentInfo;

    #@3a
    move-result-object v0

    #@3b
    .line 1052
    .restart local v0    # "nai":Lcom/android/server/connectivity/NetworkAgentInfo;
    if-eqz v0, :cond_2

    #@3d
    .line 1053
    iget-object v5, v0, Lcom/android/server/connectivity/NetworkAgentInfo;->linkProperties:Landroid/net/LinkProperties;

    #@3f
    invoke-direct {p0, v5, p1, p2}, Lcom/android/server/ConnectivityService;->isNetworkWithLinkPropertiesBlocked(Landroid/net/LinkProperties;IZ)Z

    #@42
    move-result v5

    #@43
    .line 1052
    if-eqz v5, :cond_2

    #@45
    .line 1054
    const/4 v0, 0x0

    #@46
    .line 1056
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
    .line 4216
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
    .line 2874
    iget-object v2, p0, Lcom/android/server/ConnectivityService;->mProxyLock:Ljava/lang/Object;

    #@2
    monitor-enter v2

    #@3
    .line 2875
    :try_start_0
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mGlobalProxy:Landroid/net/ProxyInfo;

    #@5
    .line 2876
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
    .line 2877
    return-object v0

    #@d
    .line 2876
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mDefaultProxy:Landroid/net/ProxyInfo;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@f
    goto :goto_0

    #@10
    .line 2874
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
    .line 847
    iget-object v2, p0, Lcom/android/server/ConnectivityService;->mLegacyTypeTracker:Lcom/android/server/ConnectivityService$LegacyTypeTracker;

    #@3
    invoke-virtual {v2, p1}, Lcom/android/server/ConnectivityService$LegacyTypeTracker;->isTypeSupported(I)Z

    #@6
    move-result v2

    #@7
    if-eqz v2, :cond_1

    #@9
    .line 848
    iget-object v2, p0, Lcom/android/server/ConnectivityService;->mLegacyTypeTracker:Lcom/android/server/ConnectivityService$LegacyTypeTracker;

    #@b
    invoke-virtual {v2, p1}, Lcom/android/server/ConnectivityService$LegacyTypeTracker;->getNetworkForType(I)Lcom/android/server/connectivity/NetworkAgentInfo;

    #@e
    move-result-object v7

    #@f
    .line 850
    .local v7, "nai":Lcom/android/server/connectivity/NetworkAgentInfo;
    if-eqz v7, :cond_0

    #@11
    .line 851
    invoke-virtual {v7}, Lcom/android/server/connectivity/NetworkAgentInfo;->getNetworkState()Landroid/net/NetworkState;

    #@14
    move-result-object v0

    #@15
    .line 852
    .local v0, "state":Landroid/net/NetworkState;
    iget-object v2, v0, Landroid/net/NetworkState;->networkInfo:Landroid/net/NetworkInfo;

    #@17
    invoke-virtual {v2, p1}, Landroid/net/NetworkInfo;->setType(I)V

    #@1a
    .line 861
    :goto_0
    invoke-direct {p0, v0, p2, p3}, Lcom/android/server/ConnectivityService;->filterNetworkStateForUid(Landroid/net/NetworkState;IZ)V

    #@1d
    .line 862
    return-object v0

    #@1e
    .line 854
    .end local v0    # "state":Landroid/net/NetworkState;
    :cond_0
    new-instance v1, Landroid/net/NetworkInfo;

    #@20
    .line 855
    invoke-static {p1}, Landroid/net/ConnectivityManager;->getNetworkTypeName(I)Ljava/lang/String;

    #@23
    move-result-object v2

    #@24
    const-string/jumbo v3, ""

    #@27
    .line 854
    const/4 v5, 0x0

    #@28
    invoke-direct {v1, p1, v5, v2, v3}, Landroid/net/NetworkInfo;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    #@2b
    .line 856
    .local v1, "info":Landroid/net/NetworkInfo;
    sget-object v2, Landroid/net/NetworkInfo$DetailedState;->DISCONNECTED:Landroid/net/NetworkInfo$DetailedState;

    #@2d
    invoke-virtual {v1, v2, v4, v4}, Landroid/net/NetworkInfo;->setDetailedState(Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;Ljava/lang/String;)V

    #@30
    .line 857
    const/4 v2, 0x1

    #@31
    invoke-virtual {v1, v2}, Landroid/net/NetworkInfo;->setIsAvailable(Z)V

    #@34
    .line 858
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
    .line 864
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
    .line 869
    if-nez p1, :cond_0

    #@3
    .line 870
    return-object v0

    #@4
    .line 872
    :cond_0
    iget-object v1, p0, Lcom/android/server/ConnectivityService;->mNetworkForNetId:Landroid/util/SparseArray;

    #@6
    monitor-enter v1

    #@7
    .line 873
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
    .line 872
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
    .line 1239
    if-eqz p1, :cond_1

    #@3
    .line 1240
    monitor-enter p1

    #@4
    .line 1241
    :try_start_0
    iget-object v0, p1, Lcom/android/server/connectivity/NetworkAgentInfo;->networkCapabilities:Landroid/net/NetworkCapabilities;

    #@6
    if-eqz v0, :cond_0

    #@8
    .line 1242
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
    .line 1246
    :cond_1
    return-object v1

    #@13
    .line 1240
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
    .line 3586
    const/4 v6, 0x0

    #@2
    .line 3587
    .local v6, "fileReader":Ljava/io/FileReader;
    const/4 v10, 0x0

    #@3
    .line 3588
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
    .line 3591
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
    .line 3592
    .end local v6    # "fileReader":Ljava/io/FileReader;
    .local v7, "fileReader":Ljava/io/FileReader;
    :try_start_1
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    #@17
    move-result-object v10

    #@18
    .line 3593
    .local v10, "parser":Lorg/xmlpull/v1/XmlPullParser;
    invoke-interface {v10, v7}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/Reader;)V

    #@1b
    .line 3594
    const-string/jumbo v11, "provisioningUrls"

    #@1e
    invoke-static {v10, v11}, Lcom/android/internal/util/XmlUtils;->beginDocument(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V

    #@21
    .line 3597
    :cond_0
    :goto_0
    invoke-static {v10}, Lcom/android/internal/util/XmlUtils;->nextElement(Lorg/xmlpull/v1/XmlPullParser;)V

    #@24
    .line 3599
    invoke-interface {v10}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_b
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_c
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    #@27
    move-result-object v5

    #@28
    .line 3600
    .local v5, "element":Ljava/lang/String;
    if-nez v5, :cond_2

    #@2a
    .line 3627
    if-eqz v7, :cond_1

    #@2c
    .line 3629
    :try_start_2
    invoke-virtual {v7}, Ljava/io/FileReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3

    #@2f
    .line 3619
    :cond_1
    :goto_1
    return-object v13

    #@30
    .line 3602
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
    .line 3603
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
    .line 3605
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
    .line 3606
    const-string/jumbo v11, "mnc"

    #@4e
    const/4 v12, 0x0

    #@4f
    invoke-interface {v10, v12, v11}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@52
    move-result-object v9

    #@53
    .line 3607
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
    .line 3608
    invoke-interface {v10}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    #@60
    .line 3609
    invoke-interface {v10}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    #@63
    move-result v11

    #@64
    const/4 v12, 0x4

    #@65
    if-ne v11, v12, :cond_0

    #@67
    .line 3610
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
    .line 3627
    if-eqz v7, :cond_3

    #@6d
    .line 3629
    :try_start_5
    invoke-virtual {v7}, Ljava/io/FileReader;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0

    #@70
    .line 3610
    :cond_3
    :goto_2
    return-object v11

    #@71
    .line 3630
    :catch_0
    move-exception v2

    #@72
    .local v2, "e":Ljava/io/IOException;
    goto :goto_2

    #@73
    .line 3614
    .end local v2    # "e":Ljava/io/IOException;
    .end local v9    # "mnc":Ljava/lang/String;
    :catch_1
    move-exception v3

    #@74
    .line 3615
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
    .line 3620
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
    .line 3621
    .end local v7    # "fileReader":Ljava/io/FileReader;
    :goto_3
    :try_start_7
    const-string/jumbo v11, "Carrier Provisioning Urls file not found"

    #@91
    invoke-static {v11}, Lcom/android/server/ConnectivityService;->loge(Ljava/lang/String;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    #@94
    .line 3627
    if-eqz v6, :cond_4

    #@96
    .line 3629
    :try_start_8
    invoke-virtual {v6}, Ljava/io/FileReader;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_8

    #@99
    .line 3633
    .end local v1    # "e":Ljava/io/FileNotFoundException;
    :cond_4
    :goto_4
    return-object v13

    #@9a
    .line 3630
    .restart local v5    # "element":Ljava/lang/String;
    .restart local v7    # "fileReader":Ljava/io/FileReader;
    .restart local v10    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    :catch_3
    move-exception v2

    #@9b
    .restart local v2    # "e":Ljava/io/IOException;
    goto :goto_1

    #@9c
    .line 3624
    .end local v2    # "e":Ljava/io/IOException;
    .end local v5    # "element":Ljava/lang/String;
    .end local v7    # "fileReader":Ljava/io/FileReader;
    .restart local v6    # "fileReader":Ljava/io/FileReader;
    .local v10, "parser":Lorg/xmlpull/v1/XmlPullParser;
    :catch_4
    move-exception v2

    #@9d
    .line 3625
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
    .line 3627
    if-eqz v6, :cond_4

    #@b6
    .line 3629
    :try_start_a
    invoke-virtual {v6}, Ljava/io/FileReader;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_5

    #@b9
    goto :goto_4

    #@ba
    .line 3630
    :catch_5
    move-exception v2

    #@bb
    goto :goto_4

    #@bc
    .line 3622
    .end local v2    # "e":Ljava/io/IOException;
    .restart local v6    # "fileReader":Ljava/io/FileReader;
    .restart local v10    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    :catch_6
    move-exception v4

    #@bd
    .line 3623
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
    .line 3627
    if-eqz v6, :cond_4

    #@d6
    .line 3629
    :try_start_c
    invoke-virtual {v6}, Ljava/io/FileReader;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_7

    #@d9
    goto :goto_4

    #@da
    .line 3630
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
    .line 3626
    .end local v1    # "e":Ljava/io/FileNotFoundException;
    .end local v2    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v11

    #@df
    .line 3627
    :goto_7
    if-eqz v6, :cond_5

    #@e1
    .line 3629
    :try_start_d
    invoke-virtual {v6}, Ljava/io/FileReader;->close()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_9

    #@e4
    .line 3626
    :cond_5
    :goto_8
    throw v11

    #@e5
    .line 3630
    :catch_9
    move-exception v2

    #@e6
    .restart local v2    # "e":Ljava/io/IOException;
    goto :goto_8

    #@e7
    .line 3626
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
    .line 3620
    .local v6, "fileReader":Ljava/io/FileReader;
    .restart local v10    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    :catch_a
    move-exception v1

    #@eb
    .restart local v1    # "e":Ljava/io/FileNotFoundException;
    goto :goto_3

    #@ec
    .line 3622
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
    .line 3624
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
    .line 3932
    new-instance v2, Ljava/util/TreeSet;

    #@2
    invoke-direct {v2}, Ljava/util/TreeSet;-><init>()V

    #@5
    .line 3933
    .local v2, "thresholds":Ljava/util/SortedSet;, "Ljava/util/SortedSet<Ljava/lang/Integer;>;"
    monitor-enter p1

    #@6
    .line 3934
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
    .line 3935
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
    .line 3936
    iget-object v3, v0, Lcom/android/server/ConnectivityService$NetworkRequestInfo;->request:Landroid/net/NetworkRequest;

    #@28
    invoke-virtual {p1, v3}, Lcom/android/server/connectivity/NetworkAgentInfo;->satisfiesImmutableCapabilitiesOf(Landroid/net/NetworkRequest;)Z

    #@2b
    move-result v3

    #@2c
    .line 3935
    if-eqz v3, :cond_0

    #@2e
    .line 3937
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
    .line 3933
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
    .line 3941
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
    .line 891
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->getDefaultNetwork()Lcom/android/server/connectivity/NetworkAgentInfo;

    #@4
    move-result-object v0

    #@5
    .line 893
    .local v0, "nai":Lcom/android/server/connectivity/NetworkAgentInfo;
    invoke-direct {p0, p1}, Lcom/android/server/ConnectivityService;->getVpnUnderlyingNetworks(I)[Landroid/net/Network;

    #@8
    move-result-object v1

    #@9
    .line 894
    .local v1, "networks":[Landroid/net/Network;
    if-eqz v1, :cond_0

    #@b
    .line 900
    array-length v2, v1

    #@c
    if-lez v2, :cond_1

    #@e
    .line 901
    aget-object v2, v1, v3

    #@10
    invoke-direct {p0, v2}, Lcom/android/server/ConnectivityService;->getNetworkAgentInfoForNetwork(Landroid/net/Network;)Lcom/android/server/connectivity/NetworkAgentInfo;

    #@13
    move-result-object v0

    #@14
    .line 907
    .end local v0    # "nai":Lcom/android/server/connectivity/NetworkAgentInfo;
    :cond_0
    :goto_0
    if-eqz v0, :cond_2

    #@16
    .line 908
    invoke-virtual {v0}, Lcom/android/server/connectivity/NetworkAgentInfo;->getNetworkState()Landroid/net/NetworkState;

    #@19
    move-result-object v2

    #@1a
    return-object v2

    #@1b
    .line 903
    .restart local v0    # "nai":Lcom/android/server/connectivity/NetworkAgentInfo;
    :cond_1
    const/4 v0, 0x0

    #@1c
    .local v0, "nai":Lcom/android/server/connectivity/NetworkAgentInfo;
    goto :goto_0

    #@1d
    .line 910
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
    .line 878
    iget-boolean v2, p0, Lcom/android/server/ConnectivityService;->mLockdownEnabled:Z

    #@3
    if-nez v2, :cond_1

    #@5
    .line 879
    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    #@8
    move-result v0

    #@9
    .line 880
    .local v0, "user":I
    iget-object v3, p0, Lcom/android/server/ConnectivityService;->mVpns:Landroid/util/SparseArray;

    #@b
    monitor-enter v3

    #@c
    .line 881
    :try_start_0
    iget-object v2, p0, Lcom/android/server/ConnectivityService;->mVpns:Landroid/util/SparseArray;

    #@e
    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    #@11
    move-result-object v1

    #@12
    check-cast v1, Lcom/android/server/connectivity/Vpn;

    #@14
    .line 882
    .local v1, "vpn":Lcom/android/server/connectivity/Vpn;
    if-eqz v1, :cond_0

    #@16
    invoke-virtual {v1, p1}, Lcom/android/server/connectivity/Vpn;->appliesToUid(I)Z

    #@19
    move-result v2

    #@1a
    if-eqz v2, :cond_0

    #@1c
    .line 883
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
    .line 887
    .end local v0    # "user":I
    .end local v1    # "vpn":Lcom/android/server/connectivity/Vpn;
    :cond_1
    return-object v4

    #@24
    .line 880
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
    .line 3009
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
    .line 3010
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
    .line 3009
    if-eqz v0, :cond_0

    #@18
    .line 3011
    const/4 p1, 0x0

    #@19
    .line 3013
    .end local p1    # "proxy":Landroid/net/ProxyInfo;
    :cond_0
    iget-object v1, p0, Lcom/android/server/ConnectivityService;->mProxyLock:Ljava/lang/Object;

    #@1b
    monitor-enter v1

    #@1c
    .line 3014
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
    .line 3015
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
    .line 3016
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
    .line 3026
    :cond_3
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mGlobalProxy:Landroid/net/ProxyInfo;

    #@3a
    if-eqz v0, :cond_4

    #@3c
    if-eqz p1, :cond_4

    #@3e
    .line 3027
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
    .line 3033
    :cond_4
    iput-object p1, p0, Lcom/android/server/ConnectivityService;->mDefaultProxy:Landroid/net/ProxyInfo;

    #@4c
    .line 3035
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
    .line 3017
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
    .line 3018
    return-void

    #@6f
    .line 3028
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
    .line 3026
    if-eqz v0, :cond_4

    #@7f
    .line 3029
    iput-object p1, p0, Lcom/android/server/ConnectivityService;->mGlobalProxy:Landroid/net/ProxyInfo;

    #@81
    .line 3030
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mGlobalProxy:Landroid/net/ProxyInfo;

    #@83
    invoke-direct {p0, v0}, Lcom/android/server/ConnectivityService;->sendProxyBroadcast(Landroid/net/ProxyInfo;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    #@86
    monitor-exit v1

    #@87
    .line 3031
    return-void

    #@88
    .line 3036
    :cond_7
    :try_start_5
    iget-boolean v0, p0, Lcom/android/server/ConnectivityService;->mDefaultProxyDisabled:Z

    #@8a
    if-nez v0, :cond_8

    #@8c
    .line 3037
    invoke-direct {p0, p1}, Lcom/android/server/ConnectivityService;->sendProxyBroadcast(Landroid/net/ProxyInfo;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    #@8f
    :cond_8
    monitor-exit v1

    #@90
    .line 3008
    return-void

    #@91
    .line 3013
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
    .line 2240
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
    .line 2241
    .local v3, "nai":Lcom/android/server/connectivity/NetworkAgentInfo;
    if-eqz v3, :cond_7

    #@e
    .line 2243
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
    .line 2250
    iget-object v7, v3, Lcom/android/server/connectivity/NetworkAgentInfo;->networkInfo:Landroid/net/NetworkInfo;

    #@35
    invoke-virtual {v7}, Landroid/net/NetworkInfo;->isConnected()Z

    #@38
    move-result v7

    #@39
    if-eqz v7, :cond_0

    #@3b
    .line 2251
    iget-object v7, v3, Lcom/android/server/connectivity/NetworkAgentInfo;->networkInfo:Landroid/net/NetworkInfo;

    #@3d
    sget-object v8, Landroid/net/NetworkInfo$DetailedState;->DISCONNECTED:Landroid/net/NetworkInfo$DetailedState;

    #@3f
    invoke-virtual {v7, v8, v10, v10}, Landroid/net/NetworkInfo;->setDetailedState(Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;Ljava/lang/String;)V

    #@42
    .line 2254
    :cond_0
    invoke-direct {p0, v3}, Lcom/android/server/ConnectivityService;->isDefaultNetwork(Lcom/android/server/connectivity/NetworkAgentInfo;)Z

    #@45
    move-result v6

    #@46
    .line 2255
    .local v6, "wasDefault":Z
    if-eqz v6, :cond_1

    #@48
    .line 2256
    iput v11, p0, Lcom/android/server/ConnectivityService;->mDefaultInetConditionPublished:I

    #@4a
    .line 2261
    invoke-static {v10, v3}, Lcom/android/server/ConnectivityService;->logDefaultNetworkEvent(Lcom/android/server/connectivity/NetworkAgentInfo;Lcom/android/server/connectivity/NetworkAgentInfo;)V

    #@4d
    .line 2263
    :cond_1
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->notifyIfacesChangedForNetworkStats()V

    #@50
    .line 2268
    const v7, 0x80004

    #@53
    invoke-virtual {p0, v3, v7}, Lcom/android/server/ConnectivityService;->notifyNetworkCallbacks(Lcom/android/server/connectivity/NetworkAgentInfo;I)V

    #@56
    .line 2269
    iget-object v7, p0, Lcom/android/server/ConnectivityService;->mKeepaliveTracker:Lcom/android/server/connectivity/KeepaliveTracker;

    #@58
    .line 2270
    const/16 v8, -0x14

    #@5a
    .line 2269
    invoke-virtual {v7, v3, v8}, Lcom/android/server/connectivity/KeepaliveTracker;->handleStopAllKeepalives(Lcom/android/server/connectivity/NetworkAgentInfo;I)V

    #@5d
    .line 2271
    iget-object v7, v3, Lcom/android/server/connectivity/NetworkAgentInfo;->networkMonitor:Lcom/android/server/connectivity/NetworkMonitor;

    #@5f
    const v8, 0x82007

    #@62
    invoke-virtual {v7, v8}, Lcom/android/server/connectivity/NetworkMonitor;->sendMessage(I)V

    #@65
    .line 2272
    iget-object v7, p0, Lcom/android/server/ConnectivityService;->mNetworkAgentInfos:Ljava/util/HashMap;

    #@67
    iget-object v8, p1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    #@69
    invoke-virtual {v7, v8}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    #@6c
    .line 2273
    iget-object v7, v3, Lcom/android/server/connectivity/NetworkAgentInfo;->linkProperties:Landroid/net/LinkProperties;

    #@6e
    invoke-direct {p0, v10, v7, v3}, Lcom/android/server/ConnectivityService;->updateClat(Landroid/net/LinkProperties;Landroid/net/LinkProperties;Lcom/android/server/connectivity/NetworkAgentInfo;)V

    #@71
    .line 2274
    iget-object v8, p0, Lcom/android/server/ConnectivityService;->mNetworkForNetId:Landroid/util/SparseArray;

    #@73
    monitor-enter v8

    #@74
    .line 2277
    :try_start_0
    iget-object v7, p0, Lcom/android/server/ConnectivityService;->mNetworkForNetId:Landroid/util/SparseArray;

    #@76
    iget-object v9, v3, Lcom/android/server/connectivity/NetworkAgentInfo;->network:Landroid/net/Network;

    #@78
    iget v9, v9, Landroid/net/Network;->netId:I

    #@7a
    invoke-virtual {v7, v9}, Landroid/util/SparseArray;->remove(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@7d
    monitor-exit v8

    #@7e
    .line 2280
    const/4 v2, 0x0

    #@7f
    .local v2, "i":I
    :goto_0
    iget-object v7, v3, Lcom/android/server/connectivity/NetworkAgentInfo;->networkRequests:Landroid/util/SparseArray;

    #@81
    invoke-virtual {v7}, Landroid/util/SparseArray;->size()I

    #@84
    move-result v7

    #@85
    if-ge v2, v7, :cond_3

    #@87
    .line 2281
    iget-object v7, v3, Lcom/android/server/connectivity/NetworkAgentInfo;->networkRequests:Landroid/util/SparseArray;

    #@89
    invoke-virtual {v7, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    #@8c
    move-result-object v5

    #@8d
    check-cast v5, Landroid/net/NetworkRequest;

    #@8f
    .line 2282
    .local v5, "request":Landroid/net/NetworkRequest;
    iget-object v7, p0, Lcom/android/server/ConnectivityService;->mNetworkForRequestId:Landroid/util/SparseArray;

    #@91
    iget v8, v5, Landroid/net/NetworkRequest;->requestId:I

    #@93
    invoke-virtual {v7, v8}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    #@96
    move-result-object v0

    #@97
    check-cast v0, Lcom/android/server/connectivity/NetworkAgentInfo;

    #@99
    .line 2283
    .local v0, "currentNetwork":Lcom/android/server/connectivity/NetworkAgentInfo;
    if-eqz v0, :cond_2

    #@9b
    iget-object v7, v0, Lcom/android/server/connectivity/NetworkAgentInfo;->network:Landroid/net/Network;

    #@9d
    iget v7, v7, Landroid/net/Network;->netId:I

    #@9f
    iget-object v8, v3, Lcom/android/server/connectivity/NetworkAgentInfo;->network:Landroid/net/Network;

    #@a1
    iget v8, v8, Landroid/net/Network;->netId:I

    #@a3
    if-ne v7, v8, :cond_2

    #@a5
    .line 2284
    iget-object v7, p0, Lcom/android/server/ConnectivityService;->mNetworkForRequestId:Landroid/util/SparseArray;

    #@a7
    iget v8, v5, Landroid/net/NetworkRequest;->requestId:I

    #@a9
    invoke-virtual {v7, v8}, Landroid/util/SparseArray;->remove(I)V

    #@ac
    .line 2285
    invoke-direct {p0, v5, v11}, Lcom/android/server/ConnectivityService;->sendUpdatedScoreToFactories(Landroid/net/NetworkRequest;I)V

    #@af
    .line 2280
    :cond_2
    add-int/lit8 v2, v2, 0x1

    #@b1
    goto :goto_0

    #@b2
    .line 2274
    .end local v0    # "currentNetwork":Lcom/android/server/connectivity/NetworkAgentInfo;
    .end local v2    # "i":I
    .end local v5    # "request":Landroid/net/NetworkRequest;
    :catchall_0
    move-exception v7

    #@b3
    monitor-exit v8

    #@b4
    throw v7

    #@b5
    .line 2288
    .restart local v2    # "i":I
    :cond_3
    iget-object v7, v3, Lcom/android/server/connectivity/NetworkAgentInfo;->networkRequests:Landroid/util/SparseArray;

    #@b7
    iget-object v8, p0, Lcom/android/server/ConnectivityService;->mDefaultRequest:Landroid/net/NetworkRequest;

    #@b9
    iget v8, v8, Landroid/net/NetworkRequest;->requestId:I

    #@bb
    invoke-virtual {v7, v8}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    #@be
    move-result-object v7

    #@bf
    if-eqz v7, :cond_4

    #@c1
    .line 2289
    invoke-direct {p0, v3}, Lcom/android/server/ConnectivityService;->removeDataActivityTracking(Lcom/android/server/connectivity/NetworkAgentInfo;)V

    #@c4
    .line 2290
    invoke-direct {p0, v3}, Lcom/android/server/ConnectivityService;->notifyLockdownVpn(Lcom/android/server/connectivity/NetworkAgentInfo;)V

    #@c7
    .line 2291
    invoke-virtual {v3}, Lcom/android/server/connectivity/NetworkAgentInfo;->name()Ljava/lang/String;

    #@ca
    move-result-object v7

    #@cb
    invoke-direct {p0, v7}, Lcom/android/server/ConnectivityService;->requestNetworkTransitionWakelock(Ljava/lang/String;)V

    #@ce
    .line 2293
    :cond_4
    iget-object v7, p0, Lcom/android/server/ConnectivityService;->mLegacyTypeTracker:Lcom/android/server/ConnectivityService$LegacyTypeTracker;

    #@d0
    invoke-virtual {v7, v3, v6}, Lcom/android/server/ConnectivityService$LegacyTypeTracker;->remove(Lcom/android/server/connectivity/NetworkAgentInfo;Z)V

    #@d3
    .line 2294
    invoke-direct {p0, v10, v11}, Lcom/android/server/ConnectivityService;->rematchAllNetworksAndRequests(Lcom/android/server/connectivity/NetworkAgentInfo;I)V

    #@d6
    .line 2295
    iget-boolean v7, v3, Lcom/android/server/connectivity/NetworkAgentInfo;->created:Z

    #@d8
    if-eqz v7, :cond_5

    #@da
    .line 2305
    :try_start_1
    iget-object v7, p0, Lcom/android/server/ConnectivityService;->mNetd:Landroid/os/INetworkManagementService;

    #@dc
    iget-object v8, v3, Lcom/android/server/connectivity/NetworkAgentInfo;->network:Landroid/net/Network;

    #@de
    iget v8, v8, Landroid/net/Network;->netId:I

    #@e0
    invoke-interface {v7, v8}, Landroid/os/INetworkManagementService;->removeNetwork(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    #@e3
    .line 2310
    :cond_5
    :goto_1
    iget-object v8, p0, Lcom/android/server/ConnectivityService;->mNetworkForNetId:Landroid/util/SparseArray;

    #@e5
    monitor-enter v8

    #@e6
    .line 2311
    :try_start_2
    iget-object v7, p0, Lcom/android/server/ConnectivityService;->mNetIdInUse:Landroid/util/SparseBooleanArray;

    #@e8
    iget-object v9, v3, Lcom/android/server/connectivity/NetworkAgentInfo;->network:Landroid/net/Network;

    #@ea
    iget v9, v9, Landroid/net/Network;->netId:I

    #@ec
    invoke-virtual {v7, v9}, Landroid/util/SparseBooleanArray;->delete(I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    #@ef
    monitor-exit v8

    #@f0
    .line 2239
    .end local v2    # "i":I
    .end local v6    # "wasDefault":Z
    :cond_6
    :goto_2
    return-void

    #@f1
    .line 2306
    .restart local v2    # "i":I
    .restart local v6    # "wasDefault":Z
    :catch_0
    move-exception v1

    #@f2
    .line 2307
    .local v1, "e":Ljava/lang/Exception;
    new-instance v7, Ljava/lang/StringBuilder;

    #@f4
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    #@f7
    const-string/jumbo v8, "Exception removing network: "

    #@fa
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@fd
    move-result-object v7

    #@fe
    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@101
    move-result-object v7

    #@102
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@105
    move-result-object v7

    #@106
    invoke-static {v7}, Lcom/android/server/ConnectivityService;->loge(Ljava/lang/String;)V

    #@109
    goto :goto_1

    #@10a
    .line 2310
    .end local v1    # "e":Ljava/lang/Exception;
    :catchall_1
    move-exception v7

    #@10b
    monitor-exit v8

    #@10c
    throw v7

    #@10d
    .line 2314
    .end local v2    # "i":I
    .end local v6    # "wasDefault":Z
    :cond_7
    iget-object v7, p0, Lcom/android/server/ConnectivityService;->mNetworkFactoryInfos:Ljava/util/HashMap;

    #@10f
    iget-object v8, p1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    #@111
    invoke-virtual {v7, v8}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    #@114
    move-result-object v4

    #@115
    check-cast v4, Lcom/android/server/ConnectivityService$NetworkFactoryInfo;

    #@117
    .line 2315
    .local v4, "nfi":Lcom/android/server/ConnectivityService$NetworkFactoryInfo;
    if-eqz v4, :cond_6

    #@119
    new-instance v7, Ljava/lang/StringBuilder;

    #@11b
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    #@11e
    const-string/jumbo v8, "unregisterNetworkFactory for "

    #@121
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@124
    move-result-object v7

    #@125
    iget-object v8, v4, Lcom/android/server/ConnectivityService$NetworkFactoryInfo;->name:Ljava/lang/String;

    #@127
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@12a
    move-result-object v7

    #@12b
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@12e
    move-result-object v7

    #@12f
    invoke-static {v7}, Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V

    #@132
    goto :goto_2
.end method

.method private handleAsyncChannelHalfConnect(Landroid/os/Message;)V
    .locals 9
    .param p1, "msg"    # Landroid/os/Message;

    #@0
    .prologue
    const/4 v6, 0x0

    #@1
    .line 2202
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@3
    check-cast v0, Lcom/android/internal/util/AsyncChannel;

    #@5
    .line 2203
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
    .line 2204
    iget v5, p1, Landroid/os/Message;->arg1:I

    #@11
    if-nez v5, :cond_2

    #@13
    .line 2207
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
    .line 2208
    .local v2, "nri":Lcom/android/server/ConnectivityService$NetworkRequestInfo;
    invoke-virtual {v2}, Lcom/android/server/ConnectivityService$NetworkRequestInfo;->isRequest()Z

    #@2c
    move-result v5

    #@2d
    if-eqz v5, :cond_0

    #@2f
    .line 2209
    iget-object v5, p0, Lcom/android/server/ConnectivityService;->mNetworkForRequestId:Landroid/util/SparseArray;

    #@31
    iget-object v7, v2, Lcom/android/server/ConnectivityService$NetworkRequestInfo;->request:Landroid/net/NetworkRequest;

    #@33
    iget v7, v7, Landroid/net/NetworkRequest;->requestId:I

    #@35
    invoke-virtual {v5, v7}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    #@38
    move-result-object v1

    #@39
    check-cast v1, Lcom/android/server/connectivity/NetworkAgentInfo;

    #@3b
    .line 2211
    .local v1, "nai":Lcom/android/server/connectivity/NetworkAgentInfo;
    if-eqz v1, :cond_1

    #@3d
    invoke-virtual {v1}, Lcom/android/server/connectivity/NetworkAgentInfo;->getCurrentScore()I

    #@40
    move-result v5

    #@41
    :goto_1
    iget-object v7, v2, Lcom/android/server/ConnectivityService$NetworkRequestInfo;->request:Landroid/net/NetworkRequest;

    #@43
    .line 2210
    const v8, 0x83000

    #@46
    invoke-virtual {v0, v8, v5, v6, v7}, Lcom/android/internal/util/AsyncChannel;->sendMessage(IIILjava/lang/Object;)V

    #@49
    goto :goto_0

    #@4a
    :cond_1
    move v5, v6

    #@4b
    .line 2211
    goto :goto_1

    #@4c
    .line 2214
    .end local v1    # "nai":Lcom/android/server/connectivity/NetworkAgentInfo;
    .end local v2    # "nri":Lcom/android/server/ConnectivityService$NetworkRequestInfo;
    .end local v3    # "nri$iterator":Ljava/util/Iterator;
    :cond_2
    const-string/jumbo v5, "Error connecting NetworkFactory"

    #@4f
    invoke-static {v5}, Lcom/android/server/ConnectivityService;->loge(Ljava/lang/String;)V

    #@52
    .line 2215
    iget-object v5, p0, Lcom/android/server/ConnectivityService;->mNetworkFactoryInfos:Ljava/util/HashMap;

    #@54
    iget-object v6, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@56
    invoke-virtual {v5, v6}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    #@59
    .line 2201
    :cond_3
    :goto_2
    return-void

    #@5a
    .line 2217
    :cond_4
    iget-object v5, p0, Lcom/android/server/ConnectivityService;->mNetworkAgentInfos:Ljava/util/HashMap;

    #@5c
    iget-object v6, p1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    #@5e
    invoke-virtual {v5, v6}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    #@61
    move-result v5

    #@62
    if-eqz v5, :cond_3

    #@64
    .line 2218
    iget v5, p1, Landroid/os/Message;->arg1:I

    #@66
    if-nez v5, :cond_5

    #@68
    .line 2221
    iget-object v5, p0, Lcom/android/server/ConnectivityService;->mNetworkAgentInfos:Ljava/util/HashMap;

    #@6a
    iget-object v6, p1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    #@6c
    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@6f
    move-result-object v5

    #@70
    check-cast v5, Lcom/android/server/connectivity/NetworkAgentInfo;

    #@72
    iget-object v5, v5, Lcom/android/server/connectivity/NetworkAgentInfo;->asyncChannel:Lcom/android/internal/util/AsyncChannel;

    #@74
    .line 2222
    const v6, 0x11001

    #@77
    .line 2221
    invoke-virtual {v5, v6}, Lcom/android/internal/util/AsyncChannel;->sendMessage(I)V

    #@7a
    goto :goto_2

    #@7b
    .line 2224
    :cond_5
    const-string/jumbo v5, "Error connecting NetworkAgent"

    #@7e
    invoke-static {v5}, Lcom/android/server/ConnectivityService;->loge(Ljava/lang/String;)V

    #@81
    .line 2225
    iget-object v5, p0, Lcom/android/server/ConnectivityService;->mNetworkAgentInfos:Ljava/util/HashMap;

    #@83
    iget-object v6, p1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    #@85
    invoke-virtual {v5, v6}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    #@88
    move-result-object v1

    #@89
    check-cast v1, Lcom/android/server/connectivity/NetworkAgentInfo;

    #@8b
    .line 2226
    .restart local v1    # "nai":Lcom/android/server/connectivity/NetworkAgentInfo;
    if-eqz v1, :cond_3

    #@8d
    .line 2227
    invoke-direct {p0, v1}, Lcom/android/server/ConnectivityService;->isDefaultNetwork(Lcom/android/server/connectivity/NetworkAgentInfo;)Z

    #@90
    move-result v4

    #@91
    .line 2228
    .local v4, "wasDefault":Z
    iget-object v6, p0, Lcom/android/server/ConnectivityService;->mNetworkForNetId:Landroid/util/SparseArray;

    #@93
    monitor-enter v6

    #@94
    .line 2229
    :try_start_0
    iget-object v5, p0, Lcom/android/server/ConnectivityService;->mNetworkForNetId:Landroid/util/SparseArray;

    #@96
    iget-object v7, v1, Lcom/android/server/connectivity/NetworkAgentInfo;->network:Landroid/net/Network;

    #@98
    iget v7, v7, Landroid/net/Network;->netId:I

    #@9a
    invoke-virtual {v5, v7}, Landroid/util/SparseArray;->remove(I)V

    #@9d
    .line 2230
    iget-object v5, p0, Lcom/android/server/ConnectivityService;->mNetIdInUse:Landroid/util/SparseBooleanArray;

    #@9f
    iget-object v7, v1, Lcom/android/server/connectivity/NetworkAgentInfo;->network:Landroid/net/Network;

    #@a1
    iget v7, v7, Landroid/net/Network;->netId:I

    #@a3
    invoke-virtual {v5, v7}, Landroid/util/SparseBooleanArray;->delete(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@a6
    monitor-exit v6

    #@a7
    .line 2233
    iget-object v5, p0, Lcom/android/server/ConnectivityService;->mLegacyTypeTracker:Lcom/android/server/ConnectivityService$LegacyTypeTracker;

    #@a9
    invoke-virtual {v5, v1, v4}, Lcom/android/server/ConnectivityService$LegacyTypeTracker;->remove(Lcom/android/server/connectivity/NetworkAgentInfo;Z)V

    #@ac
    goto :goto_2

    #@ad
    .line 2228
    :catchall_0
    move-exception v5

    #@ae
    monitor-exit v6

    #@af
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
    .line 3057
    iget-object v6, p0, Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;

    #@4
    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    #@7
    move-result-object v6

    #@8
    .line 3058
    const-string/jumbo v7, "http_proxy"

    #@b
    .line 3057
    invoke-static {v6, v7}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    #@e
    move-result-object v3

    #@f
    .line 3059
    .local v3, "proxy":Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@12
    move-result v6

    #@13
    if-nez v6, :cond_2

    #@15
    .line 3060
    const-string/jumbo v6, ":"

    #@18
    invoke-virtual {v3, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    #@1b
    move-result-object v0

    #@1c
    .line 3061
    .local v0, "data":[Ljava/lang/String;
    array-length v6, v0

    #@1d
    if-nez v6, :cond_0

    #@1f
    .line 3062
    return-void

    #@20
    .line 3065
    :cond_0
    aget-object v4, v0, v8

    #@22
    .line 3066
    .local v4, "proxyHost":Ljava/lang/String;
    const/16 v5, 0x1f90

    #@24
    .line 3067
    .local v5, "proxyPort":I
    array-length v6, v0

    #@25
    if-le v6, v9, :cond_1

    #@27
    .line 3069
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
    .line 3074
    :cond_1
    new-instance v2, Landroid/net/ProxyInfo;

    #@30
    aget-object v6, v0, v8

    #@32
    const-string/jumbo v7, ""

    #@35
    invoke-direct {v2, v6, v5, v7}, Landroid/net/ProxyInfo;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    #@38
    .line 3075
    .local v2, "p":Landroid/net/ProxyInfo;
    invoke-virtual {p0, v2}, Lcom/android/server/ConnectivityService;->setGlobalProxy(Landroid/net/ProxyInfo;)V

    #@3b
    .line 3056
    .end local v0    # "data":[Ljava/lang/String;
    .end local v2    # "p":Landroid/net/ProxyInfo;
    .end local v4    # "proxyHost":Ljava/lang/String;
    .end local v5    # "proxyPort":I
    :cond_2
    return-void

    #@3c
    .line 3070
    .restart local v0    # "data":[Ljava/lang/String;
    .restart local v4    # "proxyHost":Ljava/lang/String;
    .restart local v5    # "proxyPort":I
    :catch_0
    move-exception v1

    #@3d
    .line 3071
    .local v1, "e":Ljava/lang/NumberFormatException;
    return-void
.end method

.method private handleLingerComplete(Lcom/android/server/connectivity/NetworkAgentInfo;)V
    .locals 2
    .param p1, "oldNetwork"    # Lcom/android/server/connectivity/NetworkAgentInfo;

    #@0
    .prologue
    .line 4559
    if-nez p1, :cond_0

    #@2
    .line 4560
    const-string/jumbo v0, "Unknown NetworkAgentInfo in handleLingerComplete"

    #@5
    invoke-static {v0}, Lcom/android/server/ConnectivityService;->loge(Ljava/lang/String;)V

    #@8
    .line 4561
    return-void

    #@9
    .line 4563
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
    .line 4564
    invoke-direct {p0, p1}, Lcom/android/server/ConnectivityService;->teardownUnneededNetwork(Lcom/android/server/connectivity/NetworkAgentInfo;)V

    #@27
    .line 4558
    return-void
.end method

.method private handleMobileDataAlwaysOn()V
    .locals 8

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    const/4 v7, 0x1

    #@2
    const/4 v0, 0x0

    #@3
    .line 800
    iget-object v1, p0, Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;

    #@5
    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    #@8
    move-result-object v1

    #@9
    const-string/jumbo v3, "mobile_data_always_on"

    #@c
    .line 799
    invoke-static {v1, v3, v0}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    #@f
    move-result v1

    #@10
    if-ne v1, v7, :cond_0

    #@12
    const/4 v6, 0x1

    #@13
    .line 801
    .local v6, "enable":Z
    :goto_0
    iget-object v1, p0, Lcom/android/server/ConnectivityService;->mNetworkRequests:Ljava/util/HashMap;

    #@15
    iget-object v3, p0, Lcom/android/server/ConnectivityService;->mDefaultMobileDataRequest:Landroid/net/NetworkRequest;

    #@17
    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@1a
    move-result-object v1

    #@1b
    if-eqz v1, :cond_1

    #@1d
    .line 802
    .local v7, "isEnabled":Z
    :goto_1
    if-ne v6, v7, :cond_2

    #@1f
    .line 803
    return-void

    #@20
    .line 799
    .end local v6    # "enable":Z
    .end local v7    # "isEnabled":Z
    :cond_0
    const/4 v6, 0x0

    #@21
    .restart local v6    # "enable":Z
    goto :goto_0

    #@22
    :cond_1
    move v7, v0

    #@23
    .line 801
    goto :goto_1

    #@24
    .line 806
    .restart local v7    # "isEnabled":Z
    :cond_2
    if-eqz v6, :cond_3

    #@26
    .line 807
    new-instance v0, Lcom/android/server/ConnectivityService$NetworkRequestInfo;

    #@28
    .line 808
    iget-object v3, p0, Lcom/android/server/ConnectivityService;->mDefaultMobileDataRequest:Landroid/net/NetworkRequest;

    #@2a
    new-instance v4, Landroid/os/Binder;

    #@2c
    invoke-direct {v4}, Landroid/os/Binder;-><init>()V

    #@2f
    sget-object v5, Lcom/android/server/ConnectivityService$NetworkRequestType;->REQUEST:Lcom/android/server/ConnectivityService$NetworkRequestType;

    #@31
    move-object v1, p0

    #@32
    .line 807
    invoke-direct/range {v0 .. v5}, Lcom/android/server/ConnectivityService$NetworkRequestInfo;-><init>(Lcom/android/server/ConnectivityService;Landroid/os/Messenger;Landroid/net/NetworkRequest;Landroid/os/IBinder;Lcom/android/server/ConnectivityService$NetworkRequestType;)V

    #@35
    invoke-direct {p0, v0}, Lcom/android/server/ConnectivityService;->handleRegisterNetworkRequest(Lcom/android/server/ConnectivityService$NetworkRequestInfo;)V

    #@38
    .line 798
    :goto_2
    return-void

    #@39
    .line 810
    :cond_3
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mDefaultMobileDataRequest:Landroid/net/NetworkRequest;

    #@3b
    const/16 v1, 0x3e8

    #@3d
    invoke-direct {p0, v0, v1}, Lcom/android/server/ConnectivityService;->handleReleaseNetworkRequest(Landroid/net/NetworkRequest;I)V

    #@40
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
    .line 2547
    invoke-direct {p0, p1}, Lcom/android/server/ConnectivityService;->getNetworkAgentInfoForNetwork(Landroid/net/Network;)Lcom/android/server/connectivity/NetworkAgentInfo;

    #@7
    move-result-object v11

    #@8
    .line 2552
    .local v11, "nai":Lcom/android/server/connectivity/NetworkAgentInfo;
    if-eqz v11, :cond_0

    #@a
    iget-boolean v0, v11, Lcom/android/server/connectivity/NetworkAgentInfo;->everValidated:Z

    #@c
    if-nez v0, :cond_0

    #@e
    iget-boolean v0, v11, Lcom/android/server/connectivity/NetworkAgentInfo;->everCaptivePortalDetected:Z

    #@10
    if-nez v0, :cond_0

    #@12
    .line 2553
    iget-object v0, v11, Lcom/android/server/connectivity/NetworkAgentInfo;->networkMisc:Landroid/net/NetworkMisc;

    #@14
    iget-boolean v0, v0, Landroid/net/NetworkMisc;->explicitlySelected:Z

    #@16
    if-eqz v0, :cond_0

    #@18
    iget-object v0, v11, Lcom/android/server/connectivity/NetworkAgentInfo;->networkMisc:Landroid/net/NetworkMisc;

    #@1a
    iget-boolean v0, v0, Landroid/net/NetworkMisc;->acceptUnvalidated:Z

    #@1c
    .line 2552
    if-eqz v0, :cond_1

    #@1e
    .line 2554
    :cond_0
    return-void

    #@1f
    .line 2557
    :cond_1
    new-instance v2, Landroid/content/Intent;

    #@21
    const-string/jumbo v0, "android.net.conn.PROMPT_UNVALIDATED"

    #@24
    invoke-direct {v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    #@27
    .line 2558
    .local v2, "intent":Landroid/content/Intent;
    const-string/jumbo v0, "netId"

    #@2a
    iget v1, p1, Landroid/net/Network;->netId:I

    #@2c
    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    #@2f
    move-result-object v1

    #@30
    invoke-static {v0, v1, v4}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    #@33
    move-result-object v0

    #@34
    invoke-virtual {v2, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    #@37
    .line 2559
    invoke-virtual {v2, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    #@3a
    .line 2560
    const-string/jumbo v0, "com.android.settings"

    #@3d
    .line 2561
    const-string/jumbo v1, "com.android.settings.wifi.WifiNoInternetDialog"

    #@40
    .line 2560
    invoke-virtual {v2, v0, v1}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    #@43
    .line 2564
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;

    #@45
    sget-object v5, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    #@47
    const/4 v1, 0x0

    #@48
    .line 2563
    invoke-static/range {v0 .. v5}, Landroid/app/PendingIntent;->getActivityAsUser(Landroid/content/Context;ILandroid/content/Intent;ILandroid/os/Bundle;Landroid/os/UserHandle;)Landroid/app/PendingIntent;

    #@4b
    move-result-object v9

    #@4c
    .line 2565
    .local v9, "pendingIntent":Landroid/app/PendingIntent;
    iget-object v0, v11, Lcom/android/server/connectivity/NetworkAgentInfo;->network:Landroid/net/Network;

    #@4e
    iget v5, v0, Landroid/net/Network;->netId:I

    #@50
    sget-object v6, Lcom/android/server/ConnectivityService$NotificationType;->NO_INTERNET:Lcom/android/server/ConnectivityService$NotificationType;

    #@52
    .line 2566
    iget-object v0, v11, Lcom/android/server/connectivity/NetworkAgentInfo;->networkInfo:Landroid/net/NetworkInfo;

    #@54
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    #@57
    move-result v7

    #@58
    iget-object v0, v11, Lcom/android/server/connectivity/NetworkAgentInfo;->networkInfo:Landroid/net/NetworkInfo;

    #@5a
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getExtraInfo()Ljava/lang/String;

    #@5d
    move-result-object v8

    #@5e
    move-object v3, p0

    #@5f
    move v4, v12

    #@60
    move v10, v12

    #@61
    .line 2565
    invoke-direct/range {v3 .. v10}, Lcom/android/server/ConnectivityService;->setProvNotificationVisibleIntent(ZILcom/android/server/ConnectivityService$NotificationType;ILjava/lang/String;Landroid/app/PendingIntent;Z)V

    #@64
    .line 2545
    return-void
.end method

.method private handleRegisterNetworkAgent(Lcom/android/server/connectivity/NetworkAgentInfo;)V
    .locals 5
    .param p1, "na"    # Lcom/android/server/connectivity/NetworkAgentInfo;

    #@0
    .prologue
    .line 4246
    iget-object v1, p0, Lcom/android/server/ConnectivityService;->mNetworkAgentInfos:Ljava/util/HashMap;

    #@2
    iget-object v2, p1, Lcom/android/server/connectivity/NetworkAgentInfo;->messenger:Landroid/os/Messenger;

    #@4
    invoke-virtual {v1, v2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@7
    .line 4247
    iget-object v2, p0, Lcom/android/server/ConnectivityService;->mNetworkForNetId:Landroid/util/SparseArray;

    #@9
    monitor-enter v2

    #@a
    .line 4248
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
    .line 4250
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
    .line 4251
    iget-object v0, p1, Lcom/android/server/connectivity/NetworkAgentInfo;->networkInfo:Landroid/net/NetworkInfo;

    #@21
    .line 4252
    .local v0, "networkInfo":Landroid/net/NetworkInfo;
    const/4 v1, 0x0

    #@22
    iput-object v1, p1, Lcom/android/server/connectivity/NetworkAgentInfo;->networkInfo:Landroid/net/NetworkInfo;

    #@24
    .line 4253
    invoke-direct {p0, p1, v0}, Lcom/android/server/ConnectivityService;->updateNetworkInfo(Lcom/android/server/connectivity/NetworkAgentInfo;Landroid/net/NetworkInfo;)V

    #@27
    .line 4244
    return-void

    #@28
    .line 4247
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
    .line 4159
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
    .line 4160
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mNetworkFactoryInfos:Ljava/util/HashMap;

    #@1b
    iget-object v1, p1, Lcom/android/server/ConnectivityService$NetworkFactoryInfo;->messenger:Landroid/os/Messenger;

    #@1d
    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@20
    .line 4161
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
    .line 4158
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
    .line 2347
    iget-object v2, p0, Lcom/android/server/ConnectivityService;->mNetworkRequests:Ljava/util/HashMap;

    #@4
    iget-object v3, p1, Lcom/android/server/ConnectivityService$NetworkRequestInfo;->request:Landroid/net/NetworkRequest;

    #@6
    invoke-virtual {v2, v3, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@9
    .line 2348
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
    .line 2349
    invoke-virtual {p1}, Lcom/android/server/ConnectivityService$NetworkRequestInfo;->isRequest()Z

    #@25
    move-result v2

    #@26
    if-nez v2, :cond_1

    #@28
    .line 2350
    iget-object v2, p0, Lcom/android/server/ConnectivityService;->mNetworkAgentInfos:Ljava/util/HashMap;

    #@2a
    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    #@2d
    move-result-object v2

    #@2e
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@31
    move-result-object v1

    #@32
    .local v1, "network$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@35
    move-result v2

    #@36
    if-eqz v2, :cond_1

    #@38
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@3b
    move-result-object v0

    #@3c
    check-cast v0, Lcom/android/server/connectivity/NetworkAgentInfo;

    #@3e
    .line 2351
    .local v0, "network":Lcom/android/server/connectivity/NetworkAgentInfo;
    iget-object v2, p1, Lcom/android/server/ConnectivityService$NetworkRequestInfo;->request:Landroid/net/NetworkRequest;

    #@40
    iget-object v2, v2, Landroid/net/NetworkRequest;->networkCapabilities:Landroid/net/NetworkCapabilities;

    #@42
    invoke-virtual {v2}, Landroid/net/NetworkCapabilities;->hasSignalStrength()Z

    #@45
    move-result v2

    #@46
    if-eqz v2, :cond_0

    #@48
    .line 2352
    iget-object v2, p1, Lcom/android/server/ConnectivityService$NetworkRequestInfo;->request:Landroid/net/NetworkRequest;

    #@4a
    invoke-virtual {v0, v2}, Lcom/android/server/connectivity/NetworkAgentInfo;->satisfiesImmutableCapabilitiesOf(Landroid/net/NetworkRequest;)Z

    #@4d
    move-result v2

    #@4e
    .line 2351
    if-eqz v2, :cond_0

    #@50
    .line 2353
    const-string/jumbo v2, "REGISTER"

    #@53
    iget-object v3, p1, Lcom/android/server/ConnectivityService$NetworkRequestInfo;->request:Landroid/net/NetworkRequest;

    #@55
    invoke-direct {p0, v0, v2, v3}, Lcom/android/server/ConnectivityService;->updateSignalStrengthThresholds(Lcom/android/server/connectivity/NetworkAgentInfo;Ljava/lang/String;Landroid/net/NetworkRequest;)V

    #@58
    goto :goto_0

    #@59
    .line 2357
    .end local v0    # "network":Lcom/android/server/connectivity/NetworkAgentInfo;
    .end local v1    # "network$iterator":Ljava/util/Iterator;
    :cond_1
    invoke-direct {p0, v6, v5}, Lcom/android/server/ConnectivityService;->rematchAllNetworksAndRequests(Lcom/android/server/connectivity/NetworkAgentInfo;I)V

    #@5c
    .line 2358
    invoke-virtual {p1}, Lcom/android/server/ConnectivityService$NetworkRequestInfo;->isRequest()Z

    #@5f
    move-result v2

    #@60
    if-eqz v2, :cond_2

    #@62
    iget-object v2, p0, Lcom/android/server/ConnectivityService;->mNetworkForRequestId:Landroid/util/SparseArray;

    #@64
    iget-object v3, p1, Lcom/android/server/ConnectivityService$NetworkRequestInfo;->request:Landroid/net/NetworkRequest;

    #@66
    iget v3, v3, Landroid/net/NetworkRequest;->requestId:I

    #@68
    invoke-virtual {v2, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    #@6b
    move-result-object v2

    #@6c
    if-nez v2, :cond_2

    #@6e
    .line 2359
    iget-object v2, p1, Lcom/android/server/ConnectivityService$NetworkRequestInfo;->request:Landroid/net/NetworkRequest;

    #@70
    invoke-direct {p0, v2, v5}, Lcom/android/server/ConnectivityService;->sendUpdatedScoreToFactories(Landroid/net/NetworkRequest;I)V

    #@73
    .line 2346
    :cond_2
    return-void
.end method

.method private handleRegisterNetworkRequestWithIntent(Landroid/os/Message;)V
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    #@0
    .prologue
    .line 2335
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@2
    check-cast v1, Lcom/android/server/ConnectivityService$NetworkRequestInfo;

    #@4
    .line 2337
    .local v1, "nri":Lcom/android/server/ConnectivityService$NetworkRequestInfo;
    iget-object v2, v1, Lcom/android/server/ConnectivityService$NetworkRequestInfo;->mPendingIntent:Landroid/app/PendingIntent;

    #@6
    invoke-direct {p0, v2}, Lcom/android/server/ConnectivityService;->findExistingNetworkRequestInfo(Landroid/app/PendingIntent;)Lcom/android/server/ConnectivityService$NetworkRequestInfo;

    #@9
    move-result-object v0

    #@a
    .line 2338
    .local v0, "existingRequest":Lcom/android/server/ConnectivityService$NetworkRequestInfo;
    if-eqz v0, :cond_0

    #@c
    .line 2339
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
    .line 2340
    iget-object v3, v1, Lcom/android/server/ConnectivityService$NetworkRequestInfo;->request:Landroid/net/NetworkRequest;

    #@27
    .line 2339
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@2a
    move-result-object v2

    #@2b
    .line 2340
    const-string/jumbo v3, " because their intents matched."

    #@2e
    .line 2339
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
    .line 2341
    iget-object v2, v0, Lcom/android/server/ConnectivityService$NetworkRequestInfo;->request:Landroid/net/NetworkRequest;

    #@3b
    invoke-static {}, Lcom/android/server/ConnectivityService;->getCallingUid()I

    #@3e
    move-result v3

    #@3f
    invoke-direct {p0, v2, v3}, Lcom/android/server/ConnectivityService;->handleReleaseNetworkRequest(Landroid/net/NetworkRequest;I)V

    #@42
    .line 2343
    :cond_0
    invoke-direct {p0, v1}, Lcom/android/server/ConnectivityService;->handleRegisterNetworkRequest(Lcom/android/server/ConnectivityService$NetworkRequestInfo;)V

    #@45
    .line 2334
    return-void
.end method

.method private handleReleaseNetworkRequest(Landroid/net/NetworkRequest;I)V
    .locals 15
    .param p1, "request"    # Landroid/net/NetworkRequest;
    .param p2, "callingUid"    # I

    #@0
    .prologue
    .line 2397
    iget-object v11, p0, Lcom/android/server/ConnectivityService;->mNetworkRequests:Ljava/util/HashMap;

    #@2
    move-object/from16 v0, p1

    #@4
    invoke-virtual {v11, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@7
    move-result-object v7

    #@8
    check-cast v7, Lcom/android/server/ConnectivityService$NetworkRequestInfo;

    #@a
    .line 2398
    .local v7, "nri":Lcom/android/server/ConnectivityService$NetworkRequestInfo;
    if-eqz v7, :cond_e

    #@c
    .line 2399
    const/16 v11, 0x3e8

    #@e
    move/from16 v0, p2

    #@10
    if-eq v11, v0, :cond_0

    #@12
    iget v11, v7, Lcom/android/server/ConnectivityService$NetworkRequestInfo;->mUid:I

    #@14
    move/from16 v0, p2

    #@16
    if-eq v11, v0, :cond_0

    #@18
    .line 2400
    new-instance v11, Ljava/lang/StringBuilder;

    #@1a
    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    #@1d
    const-string/jumbo v12, "Attempt to release unowned NetworkRequest "

    #@20
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@23
    move-result-object v11

    #@24
    move-object/from16 v0, p1

    #@26
    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@29
    move-result-object v11

    #@2a
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2d
    move-result-object v11

    #@2e
    invoke-static {v11}, Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V

    #@31
    .line 2401
    return-void

    #@32
    .line 2403
    :cond_0
    invoke-virtual {v7}, Lcom/android/server/ConnectivityService$NetworkRequestInfo;->isRequest()Z

    #@35
    move-result v11

    #@36
    if-eqz v11, :cond_1

    #@38
    new-instance v11, Ljava/lang/StringBuilder;

    #@3a
    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    #@3d
    const-string/jumbo v12, "releasing NetworkRequest "

    #@40
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@43
    move-result-object v11

    #@44
    move-object/from16 v0, p1

    #@46
    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@49
    move-result-object v11

    #@4a
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@4d
    move-result-object v11

    #@4e
    invoke-static {v11}, Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V

    #@51
    .line 2404
    :cond_1
    invoke-virtual {v7}, Lcom/android/server/ConnectivityService$NetworkRequestInfo;->unlinkDeathRecipient()V

    #@54
    .line 2405
    iget-object v11, p0, Lcom/android/server/ConnectivityService;->mNetworkRequests:Ljava/util/HashMap;

    #@56
    move-object/from16 v0, p1

    #@58
    invoke-virtual {v11, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    #@5b
    .line 2406
    iget-object v12, p0, Lcom/android/server/ConnectivityService;->mUidToNetworkRequestCount:Landroid/util/SparseIntArray;

    #@5d
    monitor-enter v12

    #@5e
    .line 2407
    :try_start_0
    iget-object v11, p0, Lcom/android/server/ConnectivityService;->mUidToNetworkRequestCount:Landroid/util/SparseIntArray;

    #@60
    iget v13, v7, Lcom/android/server/ConnectivityService$NetworkRequestInfo;->mUid:I

    #@62
    const/4 v14, 0x0

    #@63
    invoke-virtual {v11, v13, v14}, Landroid/util/SparseIntArray;->get(II)I

    #@66
    move-result v9

    #@67
    .line 2408
    .local v9, "requests":I
    const/4 v11, 0x1

    #@68
    if-ge v9, v11, :cond_3

    #@6a
    .line 2409
    const-string/jumbo v11, "ConnectivityService"

    #@6d
    new-instance v13, Ljava/lang/StringBuilder;

    #@6f
    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    #@72
    const-string/jumbo v14, "BUG: too small request count "

    #@75
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@78
    move-result-object v13

    #@79
    invoke-virtual {v13, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@7c
    move-result-object v13

    #@7d
    const-string/jumbo v14, " for UID "

    #@80
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@83
    move-result-object v13

    #@84
    .line 2410
    iget v14, v7, Lcom/android/server/ConnectivityService$NetworkRequestInfo;->mUid:I

    #@86
    .line 2409
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@89
    move-result-object v13

    #@8a
    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@8d
    move-result-object v13

    #@8e
    invoke-static {v11, v13}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@91
    :goto_0
    monitor-exit v12

    #@92
    .line 2418
    iget-object v11, p0, Lcom/android/server/ConnectivityService;->mNetworkRequestInfoLogs:Landroid/util/LocalLog;

    #@94
    new-instance v12, Ljava/lang/StringBuilder;

    #@96
    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    #@99
    const-string/jumbo v13, "RELEASE "

    #@9c
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@9f
    move-result-object v12

    #@a0
    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@a3
    move-result-object v12

    #@a4
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@a7
    move-result-object v12

    #@a8
    invoke-virtual {v11, v12}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    #@ab
    .line 2419
    invoke-virtual {v7}, Lcom/android/server/ConnectivityService$NetworkRequestInfo;->isRequest()Z

    #@ae
    move-result v11

    #@af
    if-eqz v11, :cond_b

    #@b1
    .line 2424
    const/4 v10, 0x0

    #@b2
    .line 2425
    .local v10, "wasKept":Z
    iget-object v11, p0, Lcom/android/server/ConnectivityService;->mNetworkAgentInfos:Ljava/util/HashMap;

    #@b4
    invoke-virtual {v11}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    #@b7
    move-result-object v11

    #@b8
    invoke-interface {v11}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@bb
    move-result-object v4

    #@bc
    .end local v10    # "wasKept":Z
    .local v4, "nai$iterator":Ljava/util/Iterator;
    :cond_2
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    #@bf
    move-result v11

    #@c0
    if-eqz v11, :cond_6

    #@c2
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@c5
    move-result-object v3

    #@c6
    check-cast v3, Lcom/android/server/connectivity/NetworkAgentInfo;

    #@c8
    .line 2426
    .local v3, "nai":Lcom/android/server/connectivity/NetworkAgentInfo;
    iget-object v11, v3, Lcom/android/server/connectivity/NetworkAgentInfo;->networkRequests:Landroid/util/SparseArray;

    #@ca
    iget-object v12, v7, Lcom/android/server/ConnectivityService$NetworkRequestInfo;->request:Landroid/net/NetworkRequest;

    #@cc
    iget v12, v12, Landroid/net/NetworkRequest;->requestId:I

    #@ce
    invoke-virtual {v11, v12}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    #@d1
    move-result-object v11

    #@d2
    if-eqz v11, :cond_2

    #@d4
    .line 2427
    iget-object v11, v3, Lcom/android/server/connectivity/NetworkAgentInfo;->networkRequests:Landroid/util/SparseArray;

    #@d6
    iget-object v12, v7, Lcom/android/server/ConnectivityService$NetworkRequestInfo;->request:Landroid/net/NetworkRequest;

    #@d8
    iget v12, v12, Landroid/net/NetworkRequest;->requestId:I

    #@da
    invoke-virtual {v11, v12}, Landroid/util/SparseArray;->remove(I)V

    #@dd
    .line 2433
    invoke-direct {p0, v3}, Lcom/android/server/ConnectivityService;->unneeded(Lcom/android/server/connectivity/NetworkAgentInfo;)Z

    #@e0
    move-result v11

    #@e1
    if-eqz v11, :cond_5

    #@e3
    .line 2434
    new-instance v11, Ljava/lang/StringBuilder;

    #@e5
    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    #@e8
    const-string/jumbo v12, "no live requests for "

    #@eb
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@ee
    move-result-object v11

    #@ef
    invoke-virtual {v3}, Lcom/android/server/connectivity/NetworkAgentInfo;->name()Ljava/lang/String;

    #@f2
    move-result-object v12

    #@f3
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@f6
    move-result-object v11

    #@f7
    const-string/jumbo v12, "; disconnecting"

    #@fa
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@fd
    move-result-object v11

    #@fe
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@101
    move-result-object v11

    #@102
    invoke-static {v11}, Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V

    #@105
    .line 2435
    invoke-direct {p0, v3}, Lcom/android/server/ConnectivityService;->teardownUnneededNetwork(Lcom/android/server/connectivity/NetworkAgentInfo;)V

    #@108
    goto :goto_1

    #@109
    .line 2411
    .end local v3    # "nai":Lcom/android/server/connectivity/NetworkAgentInfo;
    .end local v4    # "nai$iterator":Ljava/util/Iterator;
    :cond_3
    const/4 v11, 0x1

    #@10a
    if-ne v9, v11, :cond_4

    #@10c
    .line 2412
    :try_start_1
    iget-object v11, p0, Lcom/android/server/ConnectivityService;->mUidToNetworkRequestCount:Landroid/util/SparseIntArray;

    #@10e
    .line 2413
    iget-object v13, p0, Lcom/android/server/ConnectivityService;->mUidToNetworkRequestCount:Landroid/util/SparseIntArray;

    #@110
    iget v14, v7, Lcom/android/server/ConnectivityService$NetworkRequestInfo;->mUid:I

    #@112
    invoke-virtual {v13, v14}, Landroid/util/SparseIntArray;->indexOfKey(I)I

    #@115
    move-result v13

    #@116
    .line 2412
    invoke-virtual {v11, v13}, Landroid/util/SparseIntArray;->removeAt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@119
    goto/16 :goto_0

    #@11b
    .line 2406
    .end local v9    # "requests":I
    :catchall_0
    move-exception v11

    #@11c
    monitor-exit v12

    #@11d
    throw v11

    #@11e
    .line 2415
    .restart local v9    # "requests":I
    :cond_4
    :try_start_2
    iget-object v11, p0, Lcom/android/server/ConnectivityService;->mUidToNetworkRequestCount:Landroid/util/SparseIntArray;

    #@120
    iget v13, v7, Lcom/android/server/ConnectivityService$NetworkRequestInfo;->mUid:I

    #@122
    add-int/lit8 v14, v9, -0x1

    #@124
    invoke-virtual {v11, v13, v14}, Landroid/util/SparseIntArray;->put(II)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@127
    goto/16 :goto_0

    #@129
    .line 2439
    .restart local v3    # "nai":Lcom/android/server/connectivity/NetworkAgentInfo;
    .restart local v4    # "nai$iterator":Ljava/util/Iterator;
    :cond_5
    const/4 v11, 0x1

    #@12a
    or-int/2addr v10, v11

    #@12b
    .local v10, "wasKept":Z
    goto :goto_1

    #@12c
    .line 2444
    .end local v3    # "nai":Lcom/android/server/connectivity/NetworkAgentInfo;
    .end local v10    # "wasKept":Z
    :cond_6
    iget-object v11, p0, Lcom/android/server/ConnectivityService;->mNetworkForRequestId:Landroid/util/SparseArray;

    #@12e
    iget-object v12, v7, Lcom/android/server/ConnectivityService$NetworkRequestInfo;->request:Landroid/net/NetworkRequest;

    #@130
    iget v12, v12, Landroid/net/NetworkRequest;->requestId:I

    #@132
    invoke-virtual {v11, v12}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    #@135
    move-result-object v3

    #@136
    check-cast v3, Lcom/android/server/connectivity/NetworkAgentInfo;

    #@138
    .line 2445
    .restart local v3    # "nai":Lcom/android/server/connectivity/NetworkAgentInfo;
    if-eqz v3, :cond_7

    #@13a
    .line 2446
    iget-object v11, p0, Lcom/android/server/ConnectivityService;->mNetworkForRequestId:Landroid/util/SparseArray;

    #@13c
    iget-object v12, v7, Lcom/android/server/ConnectivityService$NetworkRequestInfo;->request:Landroid/net/NetworkRequest;

    #@13e
    iget v12, v12, Landroid/net/NetworkRequest;->requestId:I

    #@140
    invoke-virtual {v11, v12}, Landroid/util/SparseArray;->remove(I)V

    #@143
    .line 2453
    :cond_7
    iget-object v11, v7, Lcom/android/server/ConnectivityService$NetworkRequestInfo;->request:Landroid/net/NetworkRequest;

    #@145
    iget v11, v11, Landroid/net/NetworkRequest;->legacyType:I

    #@147
    const/4 v12, -0x1

    #@148
    if-eq v11, v12, :cond_a

    #@14a
    if-eqz v3, :cond_a

    #@14c
    .line 2454
    const/4 v1, 0x1

    #@14d
    .line 2455
    .local v1, "doRemove":Z
    if-eqz v10, :cond_9

    #@14f
    .line 2458
    const/4 v2, 0x0

    #@150
    .local v2, "i":I
    :goto_2
    iget-object v11, v3, Lcom/android/server/connectivity/NetworkAgentInfo;->networkRequests:Landroid/util/SparseArray;

    #@152
    invoke-virtual {v11}, Landroid/util/SparseArray;->size()I

    #@155
    move-result v11

    #@156
    if-ge v2, v11, :cond_9

    #@158
    .line 2459
    iget-object v11, v3, Lcom/android/server/connectivity/NetworkAgentInfo;->networkRequests:Landroid/util/SparseArray;

    #@15a
    invoke-virtual {v11, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    #@15d
    move-result-object v8

    #@15e
    check-cast v8, Landroid/net/NetworkRequest;

    #@160
    .line 2460
    .local v8, "otherRequest":Landroid/net/NetworkRequest;
    iget v11, v8, Landroid/net/NetworkRequest;->legacyType:I

    #@162
    iget-object v12, v7, Lcom/android/server/ConnectivityService$NetworkRequestInfo;->request:Landroid/net/NetworkRequest;

    #@164
    iget v12, v12, Landroid/net/NetworkRequest;->legacyType:I

    #@166
    if-ne v11, v12, :cond_8

    #@168
    .line 2461
    invoke-direct {p0, v8}, Lcom/android/server/ConnectivityService;->isRequest(Landroid/net/NetworkRequest;)Z

    #@16b
    move-result v11

    #@16c
    .line 2460
    if-eqz v11, :cond_8

    #@16e
    .line 2462
    const-string/jumbo v11, " still have other legacy request - leaving"

    #@171
    invoke-static {v11}, Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V

    #@174
    .line 2463
    const/4 v1, 0x0

    #@175
    .line 2458
    :cond_8
    add-int/lit8 v2, v2, 0x1

    #@177
    goto :goto_2

    #@178
    .line 2468
    .end local v2    # "i":I
    .end local v8    # "otherRequest":Landroid/net/NetworkRequest;
    :cond_9
    if-eqz v1, :cond_a

    #@17a
    .line 2469
    iget-object v11, p0, Lcom/android/server/ConnectivityService;->mLegacyTypeTracker:Lcom/android/server/ConnectivityService$LegacyTypeTracker;

    #@17c
    iget-object v12, v7, Lcom/android/server/ConnectivityService$NetworkRequestInfo;->request:Landroid/net/NetworkRequest;

    #@17e
    iget v12, v12, Landroid/net/NetworkRequest;->legacyType:I

    #@180
    const/4 v13, 0x0

    #@181
    invoke-virtual {v11, v12, v3, v13}, Lcom/android/server/ConnectivityService$LegacyTypeTracker;->remove(ILcom/android/server/connectivity/NetworkAgentInfo;Z)V

    #@184
    .line 2473
    .end local v1    # "doRemove":Z
    :cond_a
    iget-object v11, p0, Lcom/android/server/ConnectivityService;->mNetworkFactoryInfos:Ljava/util/HashMap;

    #@186
    invoke-virtual {v11}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    #@189
    move-result-object v11

    #@18a
    invoke-interface {v11}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@18d
    move-result-object v6

    #@18e
    .local v6, "nfi$iterator":Ljava/util/Iterator;
    :goto_3
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    #@191
    move-result v11

    #@192
    if-eqz v11, :cond_d

    #@194
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@197
    move-result-object v5

    #@198
    check-cast v5, Lcom/android/server/ConnectivityService$NetworkFactoryInfo;

    #@19a
    .line 2474
    .local v5, "nfi":Lcom/android/server/ConnectivityService$NetworkFactoryInfo;
    iget-object v11, v5, Lcom/android/server/ConnectivityService$NetworkFactoryInfo;->asyncChannel:Lcom/android/internal/util/AsyncChannel;

    #@19c
    .line 2475
    iget-object v12, v7, Lcom/android/server/ConnectivityService$NetworkRequestInfo;->request:Landroid/net/NetworkRequest;

    #@19e
    .line 2474
    const v13, 0x83001

    #@1a1
    invoke-virtual {v11, v13, v12}, Lcom/android/internal/util/AsyncChannel;->sendMessage(ILjava/lang/Object;)V

    #@1a4
    goto :goto_3

    #@1a5
    .line 2480
    .end local v3    # "nai":Lcom/android/server/connectivity/NetworkAgentInfo;
    .end local v4    # "nai$iterator":Ljava/util/Iterator;
    .end local v5    # "nfi":Lcom/android/server/ConnectivityService$NetworkFactoryInfo;
    .end local v6    # "nfi$iterator":Ljava/util/Iterator;
    :cond_b
    iget-object v11, p0, Lcom/android/server/ConnectivityService;->mNetworkAgentInfos:Ljava/util/HashMap;

    #@1a7
    invoke-virtual {v11}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    #@1aa
    move-result-object v11

    #@1ab
    invoke-interface {v11}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@1ae
    move-result-object v4

    #@1af
    .restart local v4    # "nai$iterator":Ljava/util/Iterator;
    :cond_c
    :goto_4
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    #@1b2
    move-result v11

    #@1b3
    if-eqz v11, :cond_d

    #@1b5
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@1b8
    move-result-object v3

    #@1b9
    check-cast v3, Lcom/android/server/connectivity/NetworkAgentInfo;

    #@1bb
    .line 2481
    .restart local v3    # "nai":Lcom/android/server/connectivity/NetworkAgentInfo;
    iget-object v11, v3, Lcom/android/server/connectivity/NetworkAgentInfo;->networkRequests:Landroid/util/SparseArray;

    #@1bd
    iget-object v12, v7, Lcom/android/server/ConnectivityService$NetworkRequestInfo;->request:Landroid/net/NetworkRequest;

    #@1bf
    iget v12, v12, Landroid/net/NetworkRequest;->requestId:I

    #@1c1
    invoke-virtual {v11, v12}, Landroid/util/SparseArray;->remove(I)V

    #@1c4
    .line 2482
    iget-object v11, v7, Lcom/android/server/ConnectivityService$NetworkRequestInfo;->request:Landroid/net/NetworkRequest;

    #@1c6
    iget-object v11, v11, Landroid/net/NetworkRequest;->networkCapabilities:Landroid/net/NetworkCapabilities;

    #@1c8
    invoke-virtual {v11}, Landroid/net/NetworkCapabilities;->hasSignalStrength()Z

    #@1cb
    move-result v11

    #@1cc
    if-eqz v11, :cond_c

    #@1ce
    .line 2483
    iget-object v11, v7, Lcom/android/server/ConnectivityService$NetworkRequestInfo;->request:Landroid/net/NetworkRequest;

    #@1d0
    invoke-virtual {v3, v11}, Lcom/android/server/connectivity/NetworkAgentInfo;->satisfiesImmutableCapabilitiesOf(Landroid/net/NetworkRequest;)Z

    #@1d3
    move-result v11

    #@1d4
    .line 2482
    if-eqz v11, :cond_c

    #@1d6
    .line 2484
    const-string/jumbo v11, "RELEASE"

    #@1d9
    iget-object v12, v7, Lcom/android/server/ConnectivityService$NetworkRequestInfo;->request:Landroid/net/NetworkRequest;

    #@1db
    invoke-direct {p0, v3, v11, v12}, Lcom/android/server/ConnectivityService;->updateSignalStrengthThresholds(Lcom/android/server/connectivity/NetworkAgentInfo;Ljava/lang/String;Landroid/net/NetworkRequest;)V

    #@1de
    goto :goto_4

    #@1df
    .line 2488
    .end local v3    # "nai":Lcom/android/server/connectivity/NetworkAgentInfo;
    :cond_d
    const/4 v11, 0x0

    #@1e0
    const v12, 0x80008

    #@1e3
    invoke-direct {p0, v7, v11, v12}, Lcom/android/server/ConnectivityService;->callCallbackForRequest(Lcom/android/server/ConnectivityService$NetworkRequestInfo;Lcom/android/server/connectivity/NetworkAgentInfo;I)V

    #@1e6
    .line 2396
    .end local v4    # "nai$iterator":Ljava/util/Iterator;
    .end local v9    # "requests":I
    :cond_e
    return-void
.end method

.method private handleReleaseNetworkRequestWithIntent(Landroid/app/PendingIntent;I)V
    .locals 2
    .param p1, "pendingIntent"    # Landroid/app/PendingIntent;
    .param p2, "callingUid"    # I

    #@0
    .prologue
    .line 2365
    invoke-direct {p0, p1}, Lcom/android/server/ConnectivityService;->findExistingNetworkRequestInfo(Landroid/app/PendingIntent;)Lcom/android/server/ConnectivityService$NetworkRequestInfo;

    #@3
    move-result-object v0

    #@4
    .line 2366
    .local v0, "nri":Lcom/android/server/ConnectivityService$NetworkRequestInfo;
    if-eqz v0, :cond_0

    #@6
    .line 2367
    iget-object v1, v0, Lcom/android/server/ConnectivityService$NetworkRequestInfo;->request:Landroid/net/NetworkRequest;

    #@8
    invoke-direct {p0, v1, p2}, Lcom/android/server/ConnectivityService;->handleReleaseNetworkRequest(Landroid/net/NetworkRequest;I)V

    #@b
    .line 2364
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
    .line 2499
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
    .line 2500
    const-string/jumbo v3, " accept="

    #@13
    .line 2499
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@16
    move-result-object v2

    #@17
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@1a
    move-result-object v2

    #@1b
    .line 2500
    const-string/jumbo v3, " always="

    #@1e
    .line 2499
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
    .line 2502
    invoke-direct {p0, p1}, Lcom/android/server/ConnectivityService;->getNetworkAgentInfoForNetwork(Landroid/net/Network;)Lcom/android/server/connectivity/NetworkAgentInfo;

    #@30
    move-result-object v0

    #@31
    .line 2503
    .local v0, "nai":Lcom/android/server/connectivity/NetworkAgentInfo;
    if-nez v0, :cond_0

    #@33
    .line 2505
    return-void

    #@34
    .line 2508
    :cond_0
    iget-boolean v2, v0, Lcom/android/server/connectivity/NetworkAgentInfo;->everValidated:Z

    #@36
    if-eqz v2, :cond_1

    #@38
    .line 2510
    return-void

    #@39
    .line 2513
    :cond_1
    iget-object v2, v0, Lcom/android/server/connectivity/NetworkAgentInfo;->networkMisc:Landroid/net/NetworkMisc;

    #@3b
    iget-boolean v2, v2, Landroid/net/NetworkMisc;->explicitlySelected:Z

    #@3d
    if-nez v2, :cond_2

    #@3f
    .line 2514
    const-string/jumbo v2, "ConnectivityService"

    #@42
    const-string/jumbo v3, "BUG: setAcceptUnvalidated non non-explicitly selected network"

    #@45
    invoke-static {v2, v3}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    #@48
    .line 2517
    :cond_2
    iget-object v2, v0, Lcom/android/server/connectivity/NetworkAgentInfo;->networkMisc:Landroid/net/NetworkMisc;

    #@4a
    iget-boolean v2, v2, Landroid/net/NetworkMisc;->acceptUnvalidated:Z

    #@4c
    if-eq p2, v2, :cond_3

    #@4e
    .line 2518
    invoke-virtual {v0}, Lcom/android/server/connectivity/NetworkAgentInfo;->getCurrentScore()I

    #@51
    move-result v1

    #@52
    .line 2519
    .local v1, "oldScore":I
    iget-object v2, v0, Lcom/android/server/connectivity/NetworkAgentInfo;->networkMisc:Landroid/net/NetworkMisc;

    #@54
    iput-boolean p2, v2, Landroid/net/NetworkMisc;->acceptUnvalidated:Z

    #@56
    .line 2520
    invoke-direct {p0, v0, v1}, Lcom/android/server/ConnectivityService;->rematchAllNetworksAndRequests(Lcom/android/server/connectivity/NetworkAgentInfo;I)V

    #@59
    .line 2521
    invoke-direct {p0, v0}, Lcom/android/server/ConnectivityService;->sendUpdatedScoreToFactories(Lcom/android/server/connectivity/NetworkAgentInfo;)V

    #@5c
    .line 2524
    .end local v1    # "oldScore":I
    :cond_3
    if-eqz p3, :cond_4

    #@5e
    .line 2525
    iget-object v3, v0, Lcom/android/server/connectivity/NetworkAgentInfo;->asyncChannel:Lcom/android/internal/util/AsyncChannel;

    #@60
    .line 2526
    if-eqz p2, :cond_6

    #@62
    const/4 v2, 0x1

    #@63
    :goto_0
    const v4, 0x81009

    #@66
    .line 2525
    invoke-virtual {v3, v4, v2}, Lcom/android/internal/util/AsyncChannel;->sendMessage(II)V

    #@69
    .line 2529
    :cond_4
    if-nez p2, :cond_5

    #@6b
    .line 2531
    iget-object v2, v0, Lcom/android/server/connectivity/NetworkAgentInfo;->asyncChannel:Lcom/android/internal/util/AsyncChannel;

    #@6d
    const v3, 0x8100f

    #@70
    invoke-virtual {v2, v3}, Lcom/android/internal/util/AsyncChannel;->sendMessage(I)V

    #@73
    .line 2533
    invoke-direct {p0, v0}, Lcom/android/server/ConnectivityService;->teardownUnneededNetwork(Lcom/android/server/connectivity/NetworkAgentInfo;)V

    #@76
    .line 2498
    :cond_5
    return-void

    #@77
    .line 2526
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
    .line 4171
    iget-object v1, p0, Lcom/android/server/ConnectivityService;->mNetworkFactoryInfos:Ljava/util/HashMap;

    #@2
    invoke-virtual {v1, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Lcom/android/server/ConnectivityService$NetworkFactoryInfo;

    #@8
    .line 4172
    .local v0, "nfi":Lcom/android/server/ConnectivityService$NetworkFactoryInfo;
    if-nez v0, :cond_0

    #@a
    .line 4173
    const-string/jumbo v1, "Failed to find Messenger in unregisterNetworkFactory"

    #@d
    invoke-static {v1}, Lcom/android/server/ConnectivityService;->loge(Ljava/lang/String;)V

    #@10
    .line 4174
    return-void

    #@11
    .line 4176
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
    .line 4170
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
    .line 4094
    if-nez p1, :cond_0

    #@4
    .line 4095
    return v5

    #@5
    .line 4097
    :cond_0
    invoke-virtual {p1}, Landroid/net/NetworkCapabilities;->getTransportTypes()[I

    #@8
    move-result-object v1

    #@9
    .line 4098
    .local v1, "transportTypes":[I
    array-length v2, v1

    #@a
    if-ne v2, v6, :cond_1

    #@c
    aget v2, v1, v5

    #@e
    if-eq v2, v6, :cond_2

    #@10
    .line 4099
    :cond_1
    return v5

    #@11
    .line 4102
    :cond_2
    :try_start_0
    iget-object v2, p0, Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;

    #@13
    .line 4103
    const-string/jumbo v3, "android.permission.ACCESS_WIFI_STATE"

    #@16
    .line 4104
    const-string/jumbo v4, "ConnectivityService"

    #@19
    .line 4102
    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    #@1c
    .line 4108
    return v6

    #@1d
    .line 4105
    :catch_0
    move-exception v0

    #@1e
    .line 4106
    .local v0, "e":Ljava/lang/SecurityException;
    return v5
.end method

.method private isDefaultNetwork(Lcom/android/server/connectivity/NetworkAgentInfo;)Z
    .locals 1
    .param p1, "nai"    # Lcom/android/server/connectivity/NetworkAgentInfo;

    #@0
    .prologue
    .line 4220
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

.method private isLiveNetworkAgent(Lcom/android/server/connectivity/NetworkAgentInfo;I)Z
    .locals 5
    .param p1, "nai"    # Lcom/android/server/connectivity/NetworkAgentInfo;
    .param p2, "what"    # I

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 1979
    iget-object v2, p1, Lcom/android/server/connectivity/NetworkAgentInfo;->network:Landroid/net/Network;

    #@3
    if-nez v2, :cond_0

    #@5
    return v4

    #@6
    .line 1980
    :cond_0
    iget-object v2, p1, Lcom/android/server/connectivity/NetworkAgentInfo;->network:Landroid/net/Network;

    #@8
    invoke-direct {p0, v2}, Lcom/android/server/ConnectivityService;->getNetworkAgentInfoForNetwork(Landroid/net/Network;)Lcom/android/server/connectivity/NetworkAgentInfo;

    #@b
    move-result-object v1

    #@c
    .line 1981
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
    .line 1982
    :cond_1
    if-nez v1, :cond_2

    #@18
    .line 1987
    :goto_0
    return v4

    #@19
    .line 1983
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
    .line 1984
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
    .line 1985
    const-string/jumbo v3, " - "

    #@3c
    .line 1984
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
    .line 920
    if-eqz p3, :cond_0

    #@4
    return v5

    #@5
    .line 922
    :cond_0
    invoke-direct {p0, p2}, Lcom/android/server/ConnectivityService;->isSystem(I)Z

    #@8
    move-result v7

    #@9
    if-eqz v7, :cond_1

    #@b
    return v5

    #@c
    .line 927
    :cond_1
    iget-object v7, p0, Lcom/android/server/ConnectivityService;->mVpns:Landroid/util/SparseArray;

    #@e
    monitor-enter v7

    #@f
    .line 928
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
    .line 929
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
    .line 930
    return v6

    #@25
    :cond_2
    monitor-exit v7

    #@26
    .line 934
    if-nez p1, :cond_5

    #@28
    const-string/jumbo v1, ""

    #@2b
    .line 935
    .local v1, "iface":Ljava/lang/String;
    :goto_0
    iget-object v7, p0, Lcom/android/server/ConnectivityService;->mRulesLock:Ljava/lang/Object;

    #@2d
    monitor-enter v7

    #@2e
    .line 936
    :try_start_1
    iget-object v8, p0, Lcom/android/server/ConnectivityService;->mMeteredIfaces:Landroid/util/ArraySet;

    #@30
    invoke-virtual {v8, v1}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    #@33
    move-result v2

    #@34
    .line 937
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
    .line 940
    const/4 v0, 0x1

    #@3d
    .line 942
    .local v0, "allowed":Z
    if-eqz v2, :cond_3

    #@3f
    .line 943
    and-int/lit8 v7, v3, 0x4

    #@41
    if-eqz v7, :cond_6

    #@43
    .line 946
    const/4 v0, 0x0

    #@44
    .line 959
    :cond_3
    :goto_1
    if-eqz v0, :cond_4

    #@46
    .line 960
    and-int/lit8 v7, v3, 0x40

    #@48
    if-nez v7, :cond_a

    #@4a
    const/4 v0, 0x1

    #@4b
    .line 964
    :cond_4
    :goto_2
    if-eqz v0, :cond_b

    #@4d
    :goto_3
    return v5

    #@4e
    .line 927
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
    .line 934
    .restart local v4    # "vpn":Lcom/android/server/connectivity/Vpn;
    :cond_5
    invoke-virtual {p1}, Landroid/net/LinkProperties;->getInterfaceName()Ljava/lang/String;

    #@54
    move-result-object v1

    #@55
    .restart local v1    # "iface":Ljava/lang/String;
    goto :goto_0

    #@56
    .line 935
    :catchall_1
    move-exception v5

    #@57
    monitor-exit v7

    #@58
    throw v5

    #@59
    .line 948
    .restart local v0    # "allowed":Z
    .restart local v2    # "networkMetered":Z
    .restart local v3    # "uidRules":I
    :cond_6
    iget-boolean v7, p0, Lcom/android/server/ConnectivityService;->mRestrictBackground:Z

    #@5b
    if-eqz v7, :cond_7

    #@5d
    .line 949
    and-int/lit8 v7, v3, 0x1

    #@5f
    if-eqz v7, :cond_8

    #@61
    .line 948
    :cond_7
    const/4 v0, 0x1

    #@62
    goto :goto_1

    #@63
    .line 950
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
    .line 960
    :cond_a
    const/4 v0, 0x0

    #@6c
    goto :goto_2

    #@6d
    :cond_b
    move v5, v6

    #@6e
    .line 964
    goto :goto_3
.end method

.method private isRequest(Landroid/net/NetworkRequest;)Z
    .locals 1
    .param p1, "request"    # Landroid/net/NetworkRequest;

    #@0
    .prologue
    .line 1991
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mNetworkRequests:Ljava/util/HashMap;

    #@2
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Lcom/android/server/ConnectivityService$NetworkRequestInfo;

    #@8
    invoke-virtual {v0}, Lcom/android/server/ConnectivityService$NetworkRequestInfo;->isRequest()Z

    #@b
    move-result v0

    #@c
    return v0
.end method

.method private isSystem(I)Z
    .locals 1
    .param p1, "uid"    # I

    #@0
    .prologue
    .line 4034
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

.method private linger(Lcom/android/server/connectivity/NetworkAgentInfo;)V
    .locals 2
    .param p1, "nai"    # Lcom/android/server/connectivity/NetworkAgentInfo;

    #@0
    .prologue
    .line 2181
    const/4 v0, 0x1

    #@1
    iput-boolean v0, p1, Lcom/android/server/connectivity/NetworkAgentInfo;->lingering:Z

    #@3
    .line 2182
    iget-object v0, p1, Lcom/android/server/connectivity/NetworkAgentInfo;->network:Landroid/net/Network;

    #@5
    iget v0, v0, Landroid/net/Network;->netId:I

    #@7
    const/4 v1, 0x5

    #@8
    invoke-static {v0, v1}, Landroid/net/metrics/NetworkEvent;->logEvent(II)V

    #@b
    .line 2183
    iget-object v0, p1, Lcom/android/server/connectivity/NetworkAgentInfo;->networkMonitor:Lcom/android/server/connectivity/NetworkMonitor;

    #@d
    const v1, 0x82003

    #@10
    invoke-virtual {v0, v1}, Lcom/android/server/connectivity/NetworkMonitor;->sendMessage(I)V

    #@13
    .line 2184
    const v0, 0x80003

    #@16
    invoke-virtual {p0, p1, v0}, Lcom/android/server/ConnectivityService;->notifyNetworkCallbacks(Lcom/android/server/connectivity/NetworkAgentInfo;I)V

    #@19
    .line 2180
    return-void
.end method

.method private loadGlobalProxy()V
    .locals 8

    #@0
    .prologue
    .line 2974
    iget-object v6, p0, Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;

    #@2
    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    #@5
    move-result-object v5

    #@6
    .line 2975
    .local v5, "res":Landroid/content/ContentResolver;
    const-string/jumbo v6, "global_http_proxy_host"

    #@9
    invoke-static {v5, v6}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    #@c
    move-result-object v1

    #@d
    .line 2976
    .local v1, "host":Ljava/lang/String;
    const-string/jumbo v6, "global_http_proxy_port"

    #@10
    const/4 v7, 0x0

    #@11
    invoke-static {v5, v6, v7}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    #@14
    move-result v3

    #@15
    .line 2978
    .local v3, "port":I
    const-string/jumbo v6, "global_http_proxy_exclusion_list"

    #@18
    .line 2977
    invoke-static {v5, v6}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    #@1b
    move-result-object v0

    #@1c
    .line 2979
    .local v0, "exclList":Ljava/lang/String;
    const-string/jumbo v6, "global_proxy_pac_url"

    #@1f
    invoke-static {v5, v6}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    #@22
    move-result-object v2

    #@23
    .line 2980
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
    .line 2973
    :goto_0
    return-void

    #@30
    .line 2982
    :cond_0
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@33
    move-result v6

    #@34
    if-nez v6, :cond_1

    #@36
    .line 2983
    new-instance v4, Landroid/net/ProxyInfo;

    #@38
    invoke-direct {v4, v2}, Landroid/net/ProxyInfo;-><init>(Ljava/lang/String;)V

    #@3b
    .line 2987
    .local v4, "proxyProperties":Landroid/net/ProxyInfo;
    :goto_1
    invoke-virtual {v4}, Landroid/net/ProxyInfo;->isValid()Z

    #@3e
    move-result v6

    #@3f
    if-nez v6, :cond_2

    #@41
    .line 2988
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
    .line 2989
    return-void

    #@5d
    .line 2985
    .end local v4    # "proxyProperties":Landroid/net/ProxyInfo;
    :cond_1
    new-instance v4, Landroid/net/ProxyInfo;

    #@5f
    invoke-direct {v4, v1, v3, v0}, Landroid/net/ProxyInfo;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    #@62
    .restart local v4    # "proxyProperties":Landroid/net/ProxyInfo;
    goto :goto_1

    #@63
    .line 2992
    :cond_2
    iget-object v6, p0, Lcom/android/server/ConnectivityService;->mProxyLock:Ljava/lang/Object;

    #@65
    monitor-enter v6

    #@66
    .line 2993
    :try_start_0
    iput-object v4, p0, Lcom/android/server/ConnectivityService;->mGlobalProxy:Landroid/net/ProxyInfo;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@68
    monitor-exit v6

    #@69
    goto :goto_0

    #@6a
    .line 2992
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
    .line 3130
    const-string/jumbo v0, "ConnectivityService"

    #@3
    invoke-static {v0, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@6
    .line 3129
    return-void
.end method

.method private static logDefaultNetworkEvent(Lcom/android/server/connectivity/NetworkAgentInfo;Lcom/android/server/connectivity/NetworkAgentInfo;)V
    .locals 7
    .param p0, "newNai"    # Lcom/android/server/connectivity/NetworkAgentInfo;
    .param p1, "prevNai"    # Lcom/android/server/connectivity/NetworkAgentInfo;

    #@0
    .prologue
    .line 5219
    const/4 v3, 0x0

    #@1
    .line 5220
    .local v3, "newNetid":I
    const/4 v4, 0x0

    #@2
    .line 5221
    .local v4, "prevNetid":I
    const/4 v6, 0x0

    #@3
    new-array v5, v6, [I

    #@5
    .line 5222
    .local v5, "transports":[I
    const/4 v0, 0x0

    #@6
    .line 5223
    .local v0, "hadIPv4":Z
    const/4 v1, 0x0

    #@7
    .line 5225
    .local v1, "hadIPv6":Z
    if-eqz p0, :cond_0

    #@9
    .line 5226
    iget-object v6, p0, Lcom/android/server/connectivity/NetworkAgentInfo;->network:Landroid/net/Network;

    #@b
    iget v3, v6, Landroid/net/Network;->netId:I

    #@d
    .line 5227
    iget-object v6, p0, Lcom/android/server/connectivity/NetworkAgentInfo;->networkCapabilities:Landroid/net/NetworkCapabilities;

    #@f
    invoke-virtual {v6}, Landroid/net/NetworkCapabilities;->getTransportTypes()[I

    #@12
    move-result-object v5

    #@13
    .line 5229
    :cond_0
    if-eqz p1, :cond_1

    #@15
    .line 5230
    iget-object v6, p1, Lcom/android/server/connectivity/NetworkAgentInfo;->network:Landroid/net/Network;

    #@17
    iget v4, v6, Landroid/net/Network;->netId:I

    #@19
    .line 5231
    iget-object v2, p1, Lcom/android/server/connectivity/NetworkAgentInfo;->linkProperties:Landroid/net/LinkProperties;

    #@1b
    .line 5232
    .local v2, "lp":Landroid/net/LinkProperties;
    invoke-virtual {v2}, Landroid/net/LinkProperties;->hasIPv4Address()Z

    #@1e
    move-result v6

    #@1f
    if-eqz v6, :cond_2

    #@21
    invoke-virtual {v2}, Landroid/net/LinkProperties;->hasIPv4DefaultRoute()Z

    #@24
    move-result v0

    #@25
    .line 5233
    .end local v0    # "hadIPv4":Z
    :goto_0
    invoke-virtual {v2}, Landroid/net/LinkProperties;->hasGlobalIPv6Address()Z

    #@28
    move-result v6

    #@29
    if-eqz v6, :cond_3

    #@2b
    invoke-virtual {v2}, Landroid/net/LinkProperties;->hasIPv6DefaultRoute()Z

    #@2e
    move-result v1

    #@2f
    .line 5236
    .end local v1    # "hadIPv6":Z
    .end local v2    # "lp":Landroid/net/LinkProperties;
    :cond_1
    :goto_1
    invoke-static {v3, v5, v4, v0, v1}, Landroid/net/metrics/DefaultNetworkEvent;->logEvent(I[IIZZ)V

    #@32
    .line 5218
    return-void

    #@33
    .line 5232
    .restart local v0    # "hadIPv4":Z
    .restart local v1    # "hadIPv6":Z
    .restart local v2    # "lp":Landroid/net/LinkProperties;
    :cond_2
    const/4 v0, 0x0

    #@34
    goto :goto_0

    #@35
    .line 5233
    .end local v0    # "hadIPv4":Z
    :cond_3
    const/4 v1, 0x0

    #@36
    goto :goto_1
.end method

.method private static loge(Ljava/lang/String;)V
    .locals 1
    .param p0, "s"    # Ljava/lang/String;

    #@0
    .prologue
    .line 3134
    const-string/jumbo v0, "ConnectivityService"

    #@3
    invoke-static {v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@6
    .line 3133
    return-void
.end method

.method private makeDefault(Lcom/android/server/connectivity/NetworkAgentInfo;)V
    .locals 3
    .param p1, "newNetwork"    # Lcom/android/server/connectivity/NetworkAgentInfo;

    #@0
    .prologue
    .line 4568
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
    .line 4569
    invoke-direct {p0, p1}, Lcom/android/server/ConnectivityService;->setupDataActivityTracking(Lcom/android/server/connectivity/NetworkAgentInfo;)V

    #@1a
    .line 4571
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
    .line 4575
    :goto_0
    invoke-direct {p0, p1}, Lcom/android/server/ConnectivityService;->notifyLockdownVpn(Lcom/android/server/connectivity/NetworkAgentInfo;)V

    #@26
    .line 4576
    iget-object v1, p1, Lcom/android/server/connectivity/NetworkAgentInfo;->linkProperties:Landroid/net/LinkProperties;

    #@28
    invoke-virtual {v1}, Landroid/net/LinkProperties;->getHttpProxy()Landroid/net/ProxyInfo;

    #@2b
    move-result-object v1

    #@2c
    invoke-direct {p0, v1}, Lcom/android/server/ConnectivityService;->handleApplyDefaultProxy(Landroid/net/ProxyInfo;)V

    #@2f
    .line 4577
    invoke-direct {p0, p1}, Lcom/android/server/ConnectivityService;->updateTcpBufferSizes(Lcom/android/server/connectivity/NetworkAgentInfo;)V

    #@32
    .line 4578
    iget-object v1, p1, Lcom/android/server/connectivity/NetworkAgentInfo;->linkProperties:Landroid/net/LinkProperties;

    #@34
    invoke-virtual {v1}, Landroid/net/LinkProperties;->getDnsServers()Ljava/util/List;

    #@37
    move-result-object v1

    #@38
    invoke-direct {p0, v1}, Lcom/android/server/ConnectivityService;->setDefaultDnsSystemProperties(Ljava/util/Collection;)V

    #@3b
    .line 4567
    return-void

    #@3c
    .line 4572
    :catch_0
    move-exception v0

    #@3d
    .line 4573
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
    .line 1532
    iget-object v2, p0, Lcom/android/server/ConnectivityService;->mLockdownTracker:Lcom/android/server/net/LockdownVpnTracker;

    #@2
    if-eqz v2, :cond_0

    #@4
    .line 1533
    new-instance v0, Landroid/net/NetworkInfo;

    #@6
    invoke-direct {v0, p1}, Landroid/net/NetworkInfo;-><init>(Landroid/net/NetworkInfo;)V

    #@9
    .line 1534
    .end local p1    # "info":Landroid/net/NetworkInfo;
    .local v0, "info":Landroid/net/NetworkInfo;
    iget-object v2, p0, Lcom/android/server/ConnectivityService;->mLockdownTracker:Lcom/android/server/net/LockdownVpnTracker;

    #@b
    invoke-virtual {v2, v0}, Lcom/android/server/net/LockdownVpnTracker;->augmentNetworkInfo(Landroid/net/NetworkInfo;)V

    #@e
    move-object p1, v0

    #@f
    .line 1537
    .end local v0    # "info":Landroid/net/NetworkInfo;
    .restart local p1    # "info":Landroid/net/NetworkInfo;
    :cond_0
    new-instance v1, Landroid/content/Intent;

    #@11
    invoke-direct {v1, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    #@14
    .line 1538
    .local v1, "intent":Landroid/content/Intent;
    const-string/jumbo v2, "networkInfo"

    #@17
    new-instance v3, Landroid/net/NetworkInfo;

    #@19
    invoke-direct {v3, p1}, Landroid/net/NetworkInfo;-><init>(Landroid/net/NetworkInfo;)V

    #@1c
    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    #@1f
    .line 1539
    const-string/jumbo v2, "networkType"

    #@22
    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getType()I

    #@25
    move-result v3

    #@26
    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    #@29
    .line 1540
    invoke-virtual {p1}, Landroid/net/NetworkInfo;->isFailover()Z

    #@2c
    move-result v2

    #@2d
    if-eqz v2, :cond_1

    #@2f
    .line 1541
    const-string/jumbo v2, "isFailover"

    #@32
    const/4 v3, 0x1

    #@33
    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    #@36
    .line 1542
    const/4 v2, 0x0

    #@37
    invoke-virtual {p1, v2}, Landroid/net/NetworkInfo;->setFailover(Z)V

    #@3a
    .line 1544
    :cond_1
    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getReason()Ljava/lang/String;

    #@3d
    move-result-object v2

    #@3e
    if-eqz v2, :cond_2

    #@40
    .line 1545
    const-string/jumbo v2, "reason"

    #@43
    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getReason()Ljava/lang/String;

    #@46
    move-result-object v3

    #@47
    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    #@4a
    .line 1547
    :cond_2
    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getExtraInfo()Ljava/lang/String;

    #@4d
    move-result-object v2

    #@4e
    if-eqz v2, :cond_3

    #@50
    .line 1548
    const-string/jumbo v2, "extraInfo"

    #@53
    .line 1549
    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getExtraInfo()Ljava/lang/String;

    #@56
    move-result-object v3

    #@57
    .line 1548
    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    #@5a
    .line 1551
    :cond_3
    const-string/jumbo v2, "inetCondition"

    #@5d
    iget v3, p0, Lcom/android/server/ConnectivityService;->mDefaultInetConditionPublished:I

    #@5f
    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    #@62
    .line 1552
    return-object v1
.end method

.method private maybeLogBlockedNetworkInfo(Landroid/net/NetworkInfo;I)V
    .locals 5
    .param p1, "ni"    # Landroid/net/NetworkInfo;
    .param p2, "uid"    # I

    #@0
    .prologue
    .line 968
    if-eqz p1, :cond_2

    #@2
    .line 969
    const/4 v1, 0x0

    #@3
    .line 970
    .local v1, "removed":Z
    const/4 v0, 0x0

    #@4
    .line 971
    .local v0, "added":Z
    iget-object v3, p0, Lcom/android/server/ConnectivityService;->mBlockedAppUids:Ljava/util/HashSet;

    #@6
    monitor-enter v3

    #@7
    .line 972
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
    .line 973
    const/4 v0, 0x1

    #@1c
    :cond_0
    :goto_0
    monitor-exit v3

    #@1d
    .line 978
    if-eqz v0, :cond_4

    #@1f
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
    .line 967
    :cond_1
    :goto_1
    return-void

    #@37
    .line 968
    .end local v0    # "added":Z
    .end local v1    # "removed":Z
    :cond_2
    return-void

    #@38
    .line 974
    .restart local v0    # "added":Z
    .restart local v1    # "removed":Z
    :cond_3
    :try_start_1
    invoke-virtual {p1}, Landroid/net/NetworkInfo;->isConnected()Z

    #@3b
    move-result v2

    #@3c
    if-eqz v2, :cond_0

    #@3e
    iget-object v2, p0, Lcom/android/server/ConnectivityService;->mBlockedAppUids:Ljava/util/HashSet;

    #@40
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@43
    move-result-object v4

    #@44
    invoke-virtual {v2, v4}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@47
    move-result v2

    #@48
    if-eqz v2, :cond_0

    #@4a
    .line 975
    const/4 v1, 0x1

    #@4b
    goto :goto_0

    #@4c
    .line 971
    :catchall_0
    move-exception v2

    #@4d
    monitor-exit v3

    #@4e
    throw v2

    #@4f
    .line 979
    :cond_4
    if-eqz v1, :cond_1

    #@51
    new-instance v2, Ljava/lang/StringBuilder;

    #@53
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@56
    const-string/jumbo v3, "Returning unblocked NetworkInfo to uid="

    #@59
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5c
    move-result-object v2

    #@5d
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@60
    move-result-object v2

    #@61
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@64
    move-result-object v2

    #@65
    invoke-static {v2}, Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V

    #@68
    goto :goto_1
.end method

.method private declared-synchronized nextNetworkRequestId()I
    .locals 2

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 827
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
    .line 5108
    :try_start_0
    iget-object v1, p0, Lcom/android/server/ConnectivityService;->mStatsService:Landroid/net/INetworkStatsService;

    #@2
    invoke-interface {v1}, Landroid/net/INetworkStatsService;->forceUpdateIfaces()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    #@5
    .line 5106
    :goto_0
    return-void

    #@6
    .line 5109
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
    .line 4878
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mLockdownTracker:Lcom/android/server/net/LockdownVpnTracker;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 4879
    if-eqz p1, :cond_1

    #@6
    invoke-virtual {p1}, Lcom/android/server/connectivity/NetworkAgentInfo;->isVPN()Z

    #@9
    move-result v0

    #@a
    if-eqz v0, :cond_1

    #@c
    .line 4880
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mLockdownTracker:Lcom/android/server/net/LockdownVpnTracker;

    #@e
    iget-object v1, p1, Lcom/android/server/connectivity/NetworkAgentInfo;->networkInfo:Landroid/net/NetworkInfo;

    #@10
    invoke-virtual {v0, v1}, Lcom/android/server/net/LockdownVpnTracker;->onVpnStateChanged(Landroid/net/NetworkInfo;)V

    #@13
    .line 4877
    :cond_0
    :goto_0
    return-void

    #@14
    .line 4882
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
    .line 5089
    packed-switch p1, :pswitch_data_0

    #@3
    .line 5099
    const-string/jumbo v0, "UNKNOWN"

    #@6
    return-object v0

    #@7
    .line 5090
    :pswitch_0
    const-string/jumbo v0, "PRECHECK"

    #@a
    return-object v0

    #@b
    .line 5091
    :pswitch_1
    const-string/jumbo v0, "AVAILABLE"

    #@e
    return-object v0

    #@f
    .line 5092
    :pswitch_2
    const-string/jumbo v0, "LOSING"

    #@12
    return-object v0

    #@13
    .line 5093
    :pswitch_3
    const-string/jumbo v0, "LOST"

    #@16
    return-object v0

    #@17
    .line 5094
    :pswitch_4
    const-string/jumbo v0, "UNAVAILABLE"

    #@1a
    return-object v0

    #@1b
    .line 5095
    :pswitch_5
    const-string/jumbo v0, "CAP_CHANGED"

    #@1e
    return-object v0

    #@1f
    .line 5096
    :pswitch_6
    const-string/jumbo v0, "IP_CHANGED"

    #@22
    return-object v0

    #@23
    .line 5097
    :pswitch_7
    const-string/jumbo v0, "RELEASED"

    #@26
    return-object v0

    #@27
    .line 5089
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
    .line 3725
    iget-object v4, p0, Lcom/android/server/ConnectivityService;->mVpns:Landroid/util/SparseArray;

    #@2
    monitor-enter v4

    #@3
    .line 3726
    :try_start_0
    iget-object v3, p0, Lcom/android/server/ConnectivityService;->mVpns:Landroid/util/SparseArray;

    #@5
    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    #@8
    move-result v2

    #@9
    .line 3727
    .local v2, "vpnsSize":I
    const/4 v0, 0x0

    #@a
    .local v0, "i":I
    :goto_0
    if-ge v0, v2, :cond_0

    #@c
    .line 3728
    iget-object v3, p0, Lcom/android/server/ConnectivityService;->mVpns:Landroid/util/SparseArray;

    #@e
    invoke-virtual {v3, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    #@11
    move-result-object v1

    #@12
    check-cast v1, Lcom/android/server/connectivity/Vpn;

    #@14
    .line 3729
    .local v1, "vpn":Lcom/android/server/connectivity/Vpn;
    invoke-virtual {v1, p1}, Lcom/android/server/connectivity/Vpn;->onUserAdded(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@17
    .line 3727
    add-int/lit8 v0, v0, 0x1

    #@19
    goto :goto_0

    #@1a
    .end local v1    # "vpn":Lcom/android/server/connectivity/Vpn;
    :cond_0
    monitor-exit v4

    #@1b
    .line 3724
    return-void

    #@1c
    .line 3725
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
    .line 3735
    iget-object v4, p0, Lcom/android/server/ConnectivityService;->mVpns:Landroid/util/SparseArray;

    #@2
    monitor-enter v4

    #@3
    .line 3736
    :try_start_0
    iget-object v3, p0, Lcom/android/server/ConnectivityService;->mVpns:Landroid/util/SparseArray;

    #@5
    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    #@8
    move-result v2

    #@9
    .line 3737
    .local v2, "vpnsSize":I
    const/4 v0, 0x0

    #@a
    .local v0, "i":I
    :goto_0
    if-ge v0, v2, :cond_0

    #@c
    .line 3738
    iget-object v3, p0, Lcom/android/server/ConnectivityService;->mVpns:Landroid/util/SparseArray;

    #@e
    invoke-virtual {v3, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    #@11
    move-result-object v1

    #@12
    check-cast v1, Lcom/android/server/connectivity/Vpn;

    #@14
    .line 3739
    .local v1, "vpn":Lcom/android/server/connectivity/Vpn;
    invoke-virtual {v1, p1}, Lcom/android/server/connectivity/Vpn;->onUserRemoved(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@17
    .line 3737
    add-int/lit8 v0, v0, 0x1

    #@19
    goto :goto_0

    #@1a
    .end local v1    # "vpn":Lcom/android/server/connectivity/Vpn;
    :cond_0
    monitor-exit v4

    #@1b
    .line 3734
    return-void

    #@1c
    .line 3735
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
    .line 3689
    iget-object v5, p0, Lcom/android/server/ConnectivityService;->mVpns:Landroid/util/SparseArray;

    #@2
    monitor-enter v5

    #@3
    .line 3690
    :try_start_0
    iget-object v4, p0, Lcom/android/server/ConnectivityService;->mVpns:Landroid/util/SparseArray;

    #@5
    invoke-virtual {v4, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    #@8
    move-result-object v3

    #@9
    check-cast v3, Lcom/android/server/connectivity/Vpn;

    #@b
    .line 3691
    .local v3, "userVpn":Lcom/android/server/connectivity/Vpn;
    if-eqz v3, :cond_0

    #@d
    .line 3692
    const-string/jumbo v4, "Starting user already has a VPN"

    #@10
    invoke-static {v4}, Lcom/android/server/ConnectivityService;->loge(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@13
    monitor-exit v5

    #@14
    .line 3693
    return-void

    #@15
    .line 3695
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
    .line 3696
    .restart local v3    # "userVpn":Lcom/android/server/connectivity/Vpn;
    iget-object v4, p0, Lcom/android/server/ConnectivityService;->mVpns:Landroid/util/SparseArray;

    #@26
    invoke-virtual {v4, p1, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    #@29
    .line 3698
    iget-object v4, p0, Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;

    #@2b
    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    #@2e
    move-result-object v2

    #@2f
    .line 3700
    .local v2, "cr":Landroid/content/ContentResolver;
    const-string/jumbo v4, "always_on_vpn_app"

    #@32
    .line 3699
    invoke-static {v2, v4, p1}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    #@35
    move-result-object v1

    #@36
    .line 3702
    .local v1, "alwaysOnPackage":Ljava/lang/String;
    const-string/jumbo v4, "always_on_vpn_lockdown"

    #@39
    const/4 v6, 0x0

    #@3a
    .line 3701
    invoke-static {v2, v4, v6, p1}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    #@3d
    move-result v4

    #@3e
    if-eqz v4, :cond_3

    #@40
    const/4 v0, 0x1

    #@41
    .line 3703
    .local v0, "alwaysOnLockdown":Z
    :goto_0
    if-eqz v1, :cond_1

    #@43
    .line 3704
    invoke-virtual {v3, v1, v0}, Lcom/android/server/connectivity/Vpn;->setAlwaysOnPackage(Ljava/lang/String;Z)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@46
    :cond_1
    monitor-exit v5

    #@47
    .line 3707
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
    .line 3708
    invoke-virtual {p0}, Lcom/android/server/ConnectivityService;->updateLockdownVpn()Z

    #@5c
    .line 3688
    :cond_2
    return-void

    #@5d
    .line 3701
    .end local v0    # "alwaysOnLockdown":Z
    :cond_3
    const/4 v0, 0x0

    #@5e
    .restart local v0    # "alwaysOnLockdown":Z
    goto :goto_0

    #@5f
    .line 3689
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
    .line 3713
    iget-object v2, p0, Lcom/android/server/ConnectivityService;->mVpns:Landroid/util/SparseArray;

    #@2
    monitor-enter v2

    #@3
    .line 3714
    :try_start_0
    iget-object v1, p0, Lcom/android/server/ConnectivityService;->mVpns:Landroid/util/SparseArray;

    #@5
    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    #@8
    move-result-object v0

    #@9
    check-cast v0, Lcom/android/server/connectivity/Vpn;

    #@b
    .line 3715
    .local v0, "userVpn":Lcom/android/server/connectivity/Vpn;
    if-nez v0, :cond_0

    #@d
    .line 3716
    const-string/jumbo v1, "Stopped user has no VPN"

    #@10
    invoke-static {v1}, Lcom/android/server/ConnectivityService;->loge(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@13
    monitor-exit v2

    #@14
    .line 3717
    return-void

    #@15
    .line 3719
    :cond_0
    :try_start_1
    invoke-virtual {v0}, Lcom/android/server/connectivity/Vpn;->onUserStopped()V

    #@18
    .line 3720
    iget-object v1, p0, Lcom/android/server/ConnectivityService;->mVpns:Landroid/util/SparseArray;

    #@1a
    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->delete(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@1d
    monitor-exit v2

    #@1e
    .line 3712
    return-void

    #@1f
    .line 3713
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
    .line 3746
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
    .line 3747
    invoke-virtual {p0}, Lcom/android/server/ConnectivityService;->updateLockdownVpn()Z

    #@15
    .line 3744
    :goto_0
    return-void

    #@16
    .line 3749
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/server/ConnectivityService;->startAlwaysOnVpn(I)Z

    #@19
    goto :goto_0
.end method

.method private proxyInfoEqual(Landroid/net/ProxyInfo;Landroid/net/ProxyInfo;)Z
    .locals 2
    .param p1, "a"    # Landroid/net/ProxyInfo;
    .param p2, "b"    # Landroid/net/ProxyInfo;

    #@0
    .prologue
    .line 2918
    invoke-direct {p0, p1}, Lcom/android/server/ConnectivityService;->canonicalizeProxyInfo(Landroid/net/ProxyInfo;)Landroid/net/ProxyInfo;

    #@3
    move-result-object p1

    #@4
    .line 2919
    invoke-direct {p0, p2}, Lcom/android/server/ConnectivityService;->canonicalizeProxyInfo(Landroid/net/ProxyInfo;)Landroid/net/ProxyInfo;

    #@7
    move-result-object p2

    #@8
    .line 2922
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
    .line 816
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mSettingsObserver:Lcom/android/server/ConnectivityService$SettingsObserver;

    #@2
    .line 817
    const-string/jumbo v1, "http_proxy"

    #@5
    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    #@8
    move-result-object v1

    #@9
    .line 818
    const/16 v2, 0x9

    #@b
    .line 816
    invoke-virtual {v0, v1, v2}, Lcom/android/server/ConnectivityService$SettingsObserver;->observe(Landroid/net/Uri;I)V

    #@e
    .line 821
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mSettingsObserver:Lcom/android/server/ConnectivityService$SettingsObserver;

    #@10
    .line 822
    const-string/jumbo v1, "mobile_data_always_on"

    #@13
    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    #@16
    move-result-object v1

    #@17
    .line 823
    const/16 v2, 0x1e

    #@19
    .line 821
    invoke-virtual {v0, v1, v2}, Lcom/android/server/ConnectivityService$SettingsObserver;->observe(Landroid/net/Uri;I)V

    #@1c
    .line 814
    return-void
.end method

.method private releasePendingNetworkRequestWithDelay(Landroid/app/PendingIntent;)V
    .locals 5
    .param p1, "operation"    # Landroid/app/PendingIntent;

    #@0
    .prologue
    .line 4077
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mHandler:Lcom/android/server/ConnectivityService$InternalHandler;

    #@2
    .line 4078
    iget-object v1, p0, Lcom/android/server/ConnectivityService;->mHandler:Lcom/android/server/ConnectivityService$InternalHandler;

    #@4
    .line 4079
    invoke-static {}, Lcom/android/server/ConnectivityService;->getCallingUid()I

    #@7
    move-result v2

    #@8
    .line 4078
    const/16 v3, 0x1b

    #@a
    .line 4079
    const/4 v4, 0x0

    #@b
    .line 4078
    invoke-virtual {v1, v3, v2, v4, p1}, Lcom/android/server/ConnectivityService$InternalHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    #@e
    move-result-object v1

    #@f
    .line 4079
    iget v2, p0, Lcom/android/server/ConnectivityService;->mReleasePendingIntentDelayMs:I

    #@11
    int-to-long v2, v2

    #@12
    .line 4077
    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/ConnectivityService$InternalHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    #@15
    .line 4076
    return-void
.end method

.method private rematchAllNetworksAndRequests(Lcom/android/server/connectivity/NetworkAgentInfo;I)V
    .locals 5
    .param p1, "changed"    # Lcom/android/server/connectivity/NetworkAgentInfo;
    .param p2, "oldScore"    # I

    #@0
    .prologue
    .line 4842
    if-eqz p1, :cond_1

    #@2
    invoke-virtual {p1}, Lcom/android/server/connectivity/NetworkAgentInfo;->getCurrentScore()I

    #@5
    move-result v2

    #@6
    if-ge p2, v2, :cond_1

    #@8
    .line 4843
    sget-object v2, Lcom/android/server/ConnectivityService$ReapUnvalidatedNetworks;->REAP:Lcom/android/server/ConnectivityService$ReapUnvalidatedNetworks;

    #@a
    invoke-direct {p0, p1, v2}, Lcom/android/server/ConnectivityService;->rematchNetworkAndRequests(Lcom/android/server/connectivity/NetworkAgentInfo;Lcom/android/server/ConnectivityService$ReapUnvalidatedNetworks;)V

    #@d
    .line 4833
    :cond_0
    return-void

    #@e
    .line 4845
    :cond_1
    iget-object v2, p0, Lcom/android/server/ConnectivityService;->mNetworkAgentInfos:Ljava/util/HashMap;

    #@10
    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    #@13
    move-result-object v2

    #@14
    .line 4846
    iget-object v3, p0, Lcom/android/server/ConnectivityService;->mNetworkAgentInfos:Ljava/util/HashMap;

    #@16
    invoke-virtual {v3}, Ljava/util/HashMap;->size()I

    #@19
    move-result v3

    #@1a
    new-array v3, v3, [Lcom/android/server/connectivity/NetworkAgentInfo;

    #@1c
    .line 4845
    invoke-interface {v2, v3}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    #@1f
    move-result-object v1

    #@20
    check-cast v1, [Lcom/android/server/connectivity/NetworkAgentInfo;

    #@22
    .line 4850
    .local v1, "nais":[Lcom/android/server/connectivity/NetworkAgentInfo;
    invoke-static {v1}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    #@25
    .line 4851
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
    .line 4856
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
    .line 4852
    :goto_1
    invoke-direct {p0, v0, v2}, Lcom/android/server/ConnectivityService;->rematchNetworkAndRequests(Lcom/android/server/connectivity/NetworkAgentInfo;Lcom/android/server/ConnectivityService$ReapUnvalidatedNetworks;)V

    #@38
    .line 4851
    add-int/lit8 v2, v3, 0x1

    #@3a
    move v3, v2

    #@3b
    goto :goto_0

    #@3c
    .line 4857
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
    .line 4610
    move-object/from16 v0, p1

    #@2
    iget-boolean v0, v0, Lcom/android/server/connectivity/NetworkAgentInfo;->everConnected:Z

    #@4
    move/from16 v24, v0

    #@6
    if-nez v24, :cond_0

    #@8
    return-void

    #@9
    .line 4611
    :cond_0
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/connectivity/NetworkAgentInfo;->isVPN()Z

    #@c
    move-result v12

    #@d
    .line 4612
    .local v12, "keep":Z
    const/4 v11, 0x0

    #@e
    .line 4613
    .local v11, "isNewDefault":Z
    const/16 v18, 0x0

    #@10
    .line 4617
    .local v18, "oldDefaultNetwork":Lcom/android/server/connectivity/NetworkAgentInfo;
    new-instance v5, Ljava/util/ArrayList;

    #@12
    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    #@15
    .line 4618
    .local v5, "affectedNetworks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/connectivity/NetworkAgentInfo;>;"
    new-instance v4, Ljava/util/ArrayList;

    #@17
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    #@1a
    .line 4620
    .local v4, "addedRequests":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/ConnectivityService$NetworkRequestInfo;>;"
    move-object/from16 v0, p0

    #@1c
    iget-object v0, v0, Lcom/android/server/ConnectivityService;->mNetworkRequests:Ljava/util/HashMap;

    #@1e
    move-object/from16 v24, v0

    #@20
    invoke-virtual/range {v24 .. v24}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    #@23
    move-result-object v24

    #@24
    invoke-interface/range {v24 .. v24}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@27
    move-result-object v17

    #@28
    .end local v12    # "keep":Z
    .end local v18    # "oldDefaultNetwork":Lcom/android/server/connectivity/NetworkAgentInfo;
    .local v17, "nri$iterator":Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->hasNext()Z

    #@2b
    move-result v24

    #@2c
    if-eqz v24, :cond_a

    #@2e
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@31
    move-result-object v16

    #@32
    check-cast v16, Lcom/android/server/ConnectivityService$NetworkRequestInfo;

    #@34
    .line 4621
    .local v16, "nri":Lcom/android/server/ConnectivityService$NetworkRequestInfo;
    move-object/from16 v0, p0

    #@36
    iget-object v0, v0, Lcom/android/server/ConnectivityService;->mNetworkForRequestId:Landroid/util/SparseArray;

    #@38
    move-object/from16 v24, v0

    #@3a
    move-object/from16 v0, v16

    #@3c
    iget-object v0, v0, Lcom/android/server/ConnectivityService$NetworkRequestInfo;->request:Landroid/net/NetworkRequest;

    #@3e
    move-object/from16 v25, v0

    #@40
    move-object/from16 v0, v25

    #@42
    iget v0, v0, Landroid/net/NetworkRequest;->requestId:I

    #@44
    move/from16 v25, v0

    #@46
    invoke-virtual/range {v24 .. v25}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    #@49
    move-result-object v8

    #@4a
    check-cast v8, Lcom/android/server/connectivity/NetworkAgentInfo;

    #@4c
    .line 4622
    .local v8, "currentNetwork":Lcom/android/server/connectivity/NetworkAgentInfo;
    move-object/from16 v0, v16

    #@4e
    iget-object v0, v0, Lcom/android/server/ConnectivityService$NetworkRequestInfo;->request:Landroid/net/NetworkRequest;

    #@50
    move-object/from16 v24, v0

    #@52
    move-object/from16 v0, p1

    #@54
    move-object/from16 v1, v24

    #@56
    invoke-virtual {v0, v1}, Lcom/android/server/connectivity/NetworkAgentInfo;->satisfies(Landroid/net/NetworkRequest;)Z

    #@59
    move-result v19

    #@5a
    .line 4623
    .local v19, "satisfies":Z
    move-object/from16 v0, p1

    #@5c
    if-ne v0, v8, :cond_2

    #@5e
    if-eqz v19, :cond_2

    #@60
    .line 4628
    const/4 v12, 0x1

    #@61
    .line 4629
    .local v12, "keep":Z
    goto :goto_0

    #@62
    .line 4634
    .end local v12    # "keep":Z
    :cond_2
    if-eqz v19, :cond_7

    #@64
    .line 4635
    invoke-virtual/range {v16 .. v16}, Lcom/android/server/ConnectivityService$NetworkRequestInfo;->isRequest()Z

    #@67
    move-result v24

    #@68
    if-nez v24, :cond_3

    #@6a
    .line 4638
    move-object/from16 v0, v16

    #@6c
    iget-object v0, v0, Lcom/android/server/ConnectivityService$NetworkRequestInfo;->request:Landroid/net/NetworkRequest;

    #@6e
    move-object/from16 v24, v0

    #@70
    move-object/from16 v0, p1

    #@72
    move-object/from16 v1, v24

    #@74
    invoke-virtual {v0, v1}, Lcom/android/server/connectivity/NetworkAgentInfo;->addRequest(Landroid/net/NetworkRequest;)Z

    #@77
    move-result v24

    #@78
    if-eqz v24, :cond_1

    #@7a
    move-object/from16 v0, v16

    #@7c
    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@7f
    goto :goto_0

    #@80
    .line 4649
    :cond_3
    if-eqz v8, :cond_4

    #@82
    .line 4650
    invoke-virtual {v8}, Lcom/android/server/connectivity/NetworkAgentInfo;->getCurrentScore()I

    #@85
    move-result v24

    #@86
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/connectivity/NetworkAgentInfo;->getCurrentScore()I

    #@89
    move-result v25

    #@8a
    move/from16 v0, v24

    #@8c
    move/from16 v1, v25

    #@8e
    if-ge v0, v1, :cond_1

    #@90
    .line 4652
    :cond_4
    if-eqz v8, :cond_5

    #@92
    .line 4654
    iget-object v0, v8, Lcom/android/server/connectivity/NetworkAgentInfo;->networkRequests:Landroid/util/SparseArray;

    #@94
    move-object/from16 v24, v0

    #@96
    move-object/from16 v0, v16

    #@98
    iget-object v0, v0, Lcom/android/server/ConnectivityService$NetworkRequestInfo;->request:Landroid/net/NetworkRequest;

    #@9a
    move-object/from16 v25, v0

    #@9c
    move-object/from16 v0, v25

    #@9e
    iget v0, v0, Landroid/net/NetworkRequest;->requestId:I

    #@a0
    move/from16 v25, v0

    #@a2
    invoke-virtual/range {v24 .. v25}, Landroid/util/SparseArray;->remove(I)V

    #@a5
    .line 4655
    iget-object v0, v8, Lcom/android/server/connectivity/NetworkAgentInfo;->networkLingered:Ljava/util/ArrayList;

    #@a7
    move-object/from16 v24, v0

    #@a9
    move-object/from16 v0, v16

    #@ab
    iget-object v0, v0, Lcom/android/server/ConnectivityService$NetworkRequestInfo;->request:Landroid/net/NetworkRequest;

    #@ad
    move-object/from16 v25, v0

    #@af
    invoke-virtual/range {v24 .. v25}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@b2
    .line 4656
    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@b5
    .line 4660
    :cond_5
    invoke-direct/range {p0 .. p1}, Lcom/android/server/ConnectivityService;->unlinger(Lcom/android/server/connectivity/NetworkAgentInfo;)V

    #@b8
    .line 4661
    move-object/from16 v0, p0

    #@ba
    iget-object v0, v0, Lcom/android/server/ConnectivityService;->mNetworkForRequestId:Landroid/util/SparseArray;

    #@bc
    move-object/from16 v24, v0

    #@be
    move-object/from16 v0, v16

    #@c0
    iget-object v0, v0, Lcom/android/server/ConnectivityService$NetworkRequestInfo;->request:Landroid/net/NetworkRequest;

    #@c2
    move-object/from16 v25, v0

    #@c4
    move-object/from16 v0, v25

    #@c6
    iget v0, v0, Landroid/net/NetworkRequest;->requestId:I

    #@c8
    move/from16 v25, v0

    #@ca
    move-object/from16 v0, v24

    #@cc
    move/from16 v1, v25

    #@ce
    move-object/from16 v2, p1

    #@d0
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    #@d3
    .line 4662
    move-object/from16 v0, v16

    #@d5
    iget-object v0, v0, Lcom/android/server/ConnectivityService$NetworkRequestInfo;->request:Landroid/net/NetworkRequest;

    #@d7
    move-object/from16 v24, v0

    #@d9
    move-object/from16 v0, p1

    #@db
    move-object/from16 v1, v24

    #@dd
    invoke-virtual {v0, v1}, Lcom/android/server/connectivity/NetworkAgentInfo;->addRequest(Landroid/net/NetworkRequest;)Z

    #@e0
    move-result v24

    #@e1
    if-nez v24, :cond_6

    #@e3
    .line 4663
    const-string/jumbo v24, "ConnectivityService"

    #@e6
    new-instance v25, Ljava/lang/StringBuilder;

    #@e8
    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    #@eb
    const-string/jumbo v26, "BUG: "

    #@ee
    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@f1
    move-result-object v25

    #@f2
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/connectivity/NetworkAgentInfo;->name()Ljava/lang/String;

    #@f5
    move-result-object v26

    #@f6
    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@f9
    move-result-object v25

    #@fa
    const-string/jumbo v26, " already has "

    #@fd
    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@100
    move-result-object v25

    #@101
    move-object/from16 v0, v16

    #@103
    iget-object v0, v0, Lcom/android/server/ConnectivityService$NetworkRequestInfo;->request:Landroid/net/NetworkRequest;

    #@105
    move-object/from16 v26, v0

    #@107
    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@10a
    move-result-object v25

    #@10b
    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@10e
    move-result-object v25

    #@10f
    invoke-static/range {v24 .. v25}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    #@112
    .line 4665
    :cond_6
    move-object/from16 v0, v16

    #@114
    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@117
    .line 4666
    const/4 v12, 0x1

    #@118
    .line 4672
    .restart local v12    # "keep":Z
    move-object/from16 v0, v16

    #@11a
    iget-object v0, v0, Lcom/android/server/ConnectivityService$NetworkRequestInfo;->request:Landroid/net/NetworkRequest;

    #@11c
    move-object/from16 v24, v0

    #@11e
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/connectivity/NetworkAgentInfo;->getCurrentScore()I

    #@121
    move-result v25

    #@122
    move-object/from16 v0, p0

    #@124
    move-object/from16 v1, v24

    #@126
    move/from16 v2, v25

    #@128
    invoke-direct {v0, v1, v2}, Lcom/android/server/ConnectivityService;->sendUpdatedScoreToFactories(Landroid/net/NetworkRequest;I)V

    #@12b
    .line 4673
    move-object/from16 v0, p0

    #@12d
    iget-object v0, v0, Lcom/android/server/ConnectivityService;->mDefaultRequest:Landroid/net/NetworkRequest;

    #@12f
    move-object/from16 v24, v0

    #@131
    move-object/from16 v0, v24

    #@133
    iget v0, v0, Landroid/net/NetworkRequest;->requestId:I

    #@135
    move/from16 v24, v0

    #@137
    move-object/from16 v0, v16

    #@139
    iget-object v0, v0, Lcom/android/server/ConnectivityService$NetworkRequestInfo;->request:Landroid/net/NetworkRequest;

    #@13b
    move-object/from16 v25, v0

    #@13d
    move-object/from16 v0, v25

    #@13f
    iget v0, v0, Landroid/net/NetworkRequest;->requestId:I

    #@141
    move/from16 v25, v0

    #@143
    move/from16 v0, v24

    #@145
    move/from16 v1, v25

    #@147
    if-ne v0, v1, :cond_1

    #@149
    .line 4674
    const/4 v11, 0x1

    #@14a
    .line 4675
    move-object/from16 v18, v8

    #@14c
    .local v18, "oldDefaultNetwork":Lcom/android/server/connectivity/NetworkAgentInfo;
    goto/16 :goto_0

    #@14e
    .line 4678
    .end local v12    # "keep":Z
    .end local v18    # "oldDefaultNetwork":Lcom/android/server/connectivity/NetworkAgentInfo;
    :cond_7
    move-object/from16 v0, p1

    #@150
    iget-object v0, v0, Lcom/android/server/connectivity/NetworkAgentInfo;->networkRequests:Landroid/util/SparseArray;

    #@152
    move-object/from16 v24, v0

    #@154
    move-object/from16 v0, v16

    #@156
    iget-object v0, v0, Lcom/android/server/ConnectivityService$NetworkRequestInfo;->request:Landroid/net/NetworkRequest;

    #@158
    move-object/from16 v25, v0

    #@15a
    move-object/from16 v0, v25

    #@15c
    iget v0, v0, Landroid/net/NetworkRequest;->requestId:I

    #@15e
    move/from16 v25, v0

    #@160
    invoke-virtual/range {v24 .. v25}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    #@163
    move-result-object v24

    #@164
    if-eqz v24, :cond_1

    #@166
    .line 4687
    new-instance v24, Ljava/lang/StringBuilder;

    #@168
    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    #@16b
    const-string/jumbo v25, "Network "

    #@16e
    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@171
    move-result-object v24

    #@172
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/connectivity/NetworkAgentInfo;->name()Ljava/lang/String;

    #@175
    move-result-object v25

    #@176
    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@179
    move-result-object v24

    #@17a
    const-string/jumbo v25, " stopped satisfying"

    #@17d
    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@180
    move-result-object v24

    #@181
    .line 4688
    const-string/jumbo v25, " request "

    #@184
    .line 4687
    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@187
    move-result-object v24

    #@188
    .line 4688
    move-object/from16 v0, v16

    #@18a
    iget-object v0, v0, Lcom/android/server/ConnectivityService$NetworkRequestInfo;->request:Landroid/net/NetworkRequest;

    #@18c
    move-object/from16 v25, v0

    #@18e
    move-object/from16 v0, v25

    #@190
    iget v0, v0, Landroid/net/NetworkRequest;->requestId:I

    #@192
    move/from16 v25, v0

    #@194
    .line 4687
    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@197
    move-result-object v24

    #@198
    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@19b
    move-result-object v24

    #@19c
    invoke-static/range {v24 .. v24}, Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V

    #@19f
    .line 4690
    move-object/from16 v0, p1

    #@1a1
    iget-object v0, v0, Lcom/android/server/connectivity/NetworkAgentInfo;->networkRequests:Landroid/util/SparseArray;

    #@1a3
    move-object/from16 v24, v0

    #@1a5
    move-object/from16 v0, v16

    #@1a7
    iget-object v0, v0, Lcom/android/server/ConnectivityService$NetworkRequestInfo;->request:Landroid/net/NetworkRequest;

    #@1a9
    move-object/from16 v25, v0

    #@1ab
    move-object/from16 v0, v25

    #@1ad
    iget v0, v0, Landroid/net/NetworkRequest;->requestId:I

    #@1af
    move/from16 v25, v0

    #@1b1
    invoke-virtual/range {v24 .. v25}, Landroid/util/SparseArray;->remove(I)V

    #@1b4
    .line 4691
    move-object/from16 v0, p1

    #@1b6
    if-ne v8, v0, :cond_9

    #@1b8
    .line 4692
    move-object/from16 v0, p0

    #@1ba
    iget-object v0, v0, Lcom/android/server/ConnectivityService;->mNetworkForRequestId:Landroid/util/SparseArray;

    #@1bc
    move-object/from16 v24, v0

    #@1be
    move-object/from16 v0, v16

    #@1c0
    iget-object v0, v0, Lcom/android/server/ConnectivityService$NetworkRequestInfo;->request:Landroid/net/NetworkRequest;

    #@1c2
    move-object/from16 v25, v0

    #@1c4
    move-object/from16 v0, v25

    #@1c6
    iget v0, v0, Landroid/net/NetworkRequest;->requestId:I

    #@1c8
    move/from16 v25, v0

    #@1ca
    invoke-virtual/range {v24 .. v25}, Landroid/util/SparseArray;->remove(I)V

    #@1cd
    .line 4693
    move-object/from16 v0, v16

    #@1cf
    iget-object v0, v0, Lcom/android/server/ConnectivityService$NetworkRequestInfo;->request:Landroid/net/NetworkRequest;

    #@1d1
    move-object/from16 v24, v0

    #@1d3
    const/16 v25, 0x0

    #@1d5
    move-object/from16 v0, p0

    #@1d7
    move-object/from16 v1, v24

    #@1d9
    move/from16 v2, v25

    #@1db
    invoke-direct {v0, v1, v2}, Lcom/android/server/ConnectivityService;->sendUpdatedScoreToFactories(Landroid/net/NetworkRequest;I)V

    #@1de
    .line 4708
    :cond_8
    :goto_1
    const v24, 0x80004

    #@1e1
    move-object/from16 v0, p0

    #@1e3
    move-object/from16 v1, v16

    #@1e5
    move-object/from16 v2, p1

    #@1e7
    move/from16 v3, v24

    #@1e9
    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/ConnectivityService;->callCallbackForRequest(Lcom/android/server/ConnectivityService$NetworkRequestInfo;Lcom/android/server/connectivity/NetworkAgentInfo;I)V

    #@1ec
    goto/16 :goto_0

    #@1ee
    .line 4695
    :cond_9
    invoke-virtual/range {v16 .. v16}, Lcom/android/server/ConnectivityService$NetworkRequestInfo;->isRequest()Z

    #@1f1
    move-result v24

    #@1f2
    if-eqz v24, :cond_8

    #@1f4
    .line 4696
    const-string/jumbo v24, "ConnectivityService"

    #@1f7
    new-instance v25, Ljava/lang/StringBuilder;

    #@1f9
    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    #@1fc
    const-string/jumbo v26, "BUG: Removing request "

    #@1ff
    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@202
    move-result-object v25

    #@203
    move-object/from16 v0, v16

    #@205
    iget-object v0, v0, Lcom/android/server/ConnectivityService$NetworkRequestInfo;->request:Landroid/net/NetworkRequest;

    #@207
    move-object/from16 v26, v0

    #@209
    move-object/from16 v0, v26

    #@20b
    iget v0, v0, Landroid/net/NetworkRequest;->requestId:I

    #@20d
    move/from16 v26, v0

    #@20f
    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@212
    move-result-object v25

    #@213
    const-string/jumbo v26, " from "

    #@216
    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@219
    move-result-object v25

    #@21a
    .line 4697
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/connectivity/NetworkAgentInfo;->name()Ljava/lang/String;

    #@21d
    move-result-object v26

    #@21e
    .line 4696
    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@221
    move-result-object v25

    #@222
    .line 4698
    const-string/jumbo v26, " without updating mNetworkForRequestId or factories!"

    #@225
    .line 4696
    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@228
    move-result-object v25

    #@229
    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@22c
    move-result-object v25

    #@22d
    invoke-static/range {v24 .. v25}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    #@230
    goto :goto_1

    #@231
    .line 4712
    .end local v8    # "currentNetwork":Lcom/android/server/connectivity/NetworkAgentInfo;
    .end local v16    # "nri":Lcom/android/server/ConnectivityService$NetworkRequestInfo;
    .end local v19    # "satisfies":Z
    :cond_a
    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@234
    move-result-object v14

    #@235
    .local v14, "nai$iterator":Ljava/util/Iterator;
    :cond_b
    :goto_2
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    #@238
    move-result v24

    #@239
    if-eqz v24, :cond_d

    #@23b
    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@23e
    move-result-object v13

    #@23f
    check-cast v13, Lcom/android/server/connectivity/NetworkAgentInfo;

    #@241
    .line 4713
    .local v13, "nai":Lcom/android/server/connectivity/NetworkAgentInfo;
    iget-boolean v0, v13, Lcom/android/server/connectivity/NetworkAgentInfo;->lingering:Z

    #@243
    move/from16 v24, v0

    #@245
    if-nez v24, :cond_b

    #@247
    .line 4720
    move-object/from16 v0, p0

    #@249
    invoke-direct {v0, v13}, Lcom/android/server/ConnectivityService;->unneeded(Lcom/android/server/connectivity/NetworkAgentInfo;)Z

    #@24c
    move-result v24

    #@24d
    if-eqz v24, :cond_c

    #@24f
    .line 4721
    move-object/from16 v0, p0

    #@251
    invoke-direct {v0, v13}, Lcom/android/server/ConnectivityService;->linger(Lcom/android/server/connectivity/NetworkAgentInfo;)V

    #@254
    goto :goto_2

    #@255
    .line 4724
    :cond_c
    move-object/from16 v0, p0

    #@257
    invoke-direct {v0, v13}, Lcom/android/server/ConnectivityService;->unlinger(Lcom/android/server/connectivity/NetworkAgentInfo;)V

    #@25a
    goto :goto_2

    #@25b
    .line 4727
    .end local v13    # "nai":Lcom/android/server/connectivity/NetworkAgentInfo;
    :cond_d
    if-eqz v11, :cond_f

    #@25d
    .line 4729
    invoke-direct/range {p0 .. p1}, Lcom/android/server/ConnectivityService;->makeDefault(Lcom/android/server/connectivity/NetworkAgentInfo;)V

    #@260
    .line 4731
    move-object/from16 v0, p1

    #@262
    move-object/from16 v1, v18

    #@264
    invoke-static {v0, v1}, Lcom/android/server/ConnectivityService;->logDefaultNetworkEvent(Lcom/android/server/connectivity/NetworkAgentInfo;Lcom/android/server/connectivity/NetworkAgentInfo;)V

    #@267
    .line 4732
    monitor-enter p0

    #@268
    .line 4736
    :try_start_0
    move-object/from16 v0, p0

    #@26a
    iget-object v0, v0, Lcom/android/server/ConnectivityService;->mNetTransitionWakeLock:Landroid/os/PowerManager$WakeLock;

    #@26c
    move-object/from16 v24, v0

    #@26e
    invoke-virtual/range {v24 .. v24}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    #@271
    move-result v24

    #@272
    if-eqz v24, :cond_e

    #@274
    .line 4737
    move-object/from16 v0, p0

    #@276
    iget-object v0, v0, Lcom/android/server/ConnectivityService;->mHandler:Lcom/android/server/ConnectivityService$InternalHandler;

    #@278
    move-object/from16 v24, v0

    #@27a
    move-object/from16 v0, p0

    #@27c
    iget-object v0, v0, Lcom/android/server/ConnectivityService;->mHandler:Lcom/android/server/ConnectivityService$InternalHandler;

    #@27e
    move-object/from16 v25, v0

    #@280
    .line 4739
    move-object/from16 v0, p0

    #@282
    iget v0, v0, Lcom/android/server/ConnectivityService;->mNetTransitionWakeLockSerialNumber:I

    #@284
    move/from16 v26, v0

    #@286
    .line 4738
    const/16 v27, 0x8

    #@288
    .line 4739
    const/16 v28, 0x0

    #@28a
    .line 4737
    move-object/from16 v0, v25

    #@28c
    move/from16 v1, v27

    #@28e
    move/from16 v2, v26

    #@290
    move/from16 v3, v28

    #@292
    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/ConnectivityService$InternalHandler;->obtainMessage(III)Landroid/os/Message;

    #@295
    move-result-object v25

    #@296
    .line 4740
    const-wide/16 v26, 0x3e8

    #@298
    .line 4737
    invoke-virtual/range {v24 .. v27}, Lcom/android/server/ConnectivityService$InternalHandler;->sendMessageDelayed(Landroid/os/Message;J)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@29b
    :cond_e
    monitor-exit p0

    #@29c
    .line 4747
    :cond_f
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@29f
    move-result-object v17

    #@2a0
    :goto_3
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->hasNext()Z

    #@2a3
    move-result v24

    #@2a4
    if-eqz v24, :cond_10

    #@2a6
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@2a9
    move-result-object v16

    #@2aa
    check-cast v16, Lcom/android/server/ConnectivityService$NetworkRequestInfo;

    #@2ac
    .restart local v16    # "nri":Lcom/android/server/ConnectivityService$NetworkRequestInfo;
    move-object/from16 v0, p0

    #@2ae
    move-object/from16 v1, p1

    #@2b0
    move-object/from16 v2, v16

    #@2b2
    invoke-virtual {v0, v1, v2}, Lcom/android/server/ConnectivityService;->notifyNetworkCallback(Lcom/android/server/connectivity/NetworkAgentInfo;Lcom/android/server/ConnectivityService$NetworkRequestInfo;)V

    #@2b5
    goto :goto_3

    #@2b6
    .line 4732
    .end local v16    # "nri":Lcom/android/server/ConnectivityService$NetworkRequestInfo;
    :catchall_0
    move-exception v24

    #@2b7
    monitor-exit p0

    #@2b8
    throw v24

    #@2b9
    .line 4749
    :cond_10
    if-eqz v11, :cond_12

    #@2bb
    .line 4754
    if-eqz v18, :cond_11

    #@2bd
    .line 4755
    move-object/from16 v0, p0

    #@2bf
    iget-object v0, v0, Lcom/android/server/ConnectivityService;->mLegacyTypeTracker:Lcom/android/server/ConnectivityService$LegacyTypeTracker;

    #@2c1
    move-object/from16 v24, v0

    #@2c3
    move-object/from16 v0, v18

    #@2c5
    iget-object v0, v0, Lcom/android/server/connectivity/NetworkAgentInfo;->networkInfo:Landroid/net/NetworkInfo;

    #@2c7
    move-object/from16 v25, v0

    #@2c9
    invoke-virtual/range {v25 .. v25}, Landroid/net/NetworkInfo;->getType()I

    #@2cc
    move-result v25

    #@2cd
    .line 4756
    const/16 v26, 0x1

    #@2cf
    .line 4755
    move-object/from16 v0, v24

    #@2d1
    move/from16 v1, v25

    #@2d3
    move-object/from16 v2, v18

    #@2d5
    move/from16 v3, v26

    #@2d7
    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/ConnectivityService$LegacyTypeTracker;->remove(ILcom/android/server/connectivity/NetworkAgentInfo;Z)V

    #@2da
    .line 4758
    :cond_11
    move-object/from16 v0, p1

    #@2dc
    iget-boolean v0, v0, Lcom/android/server/connectivity/NetworkAgentInfo;->lastValidated:Z

    #@2de
    move/from16 v24, v0

    #@2e0
    if-eqz v24, :cond_15

    #@2e2
    const/16 v24, 0x64

    #@2e4
    :goto_4
    move/from16 v0, v24

    #@2e6
    move-object/from16 v1, p0

    #@2e8
    iput v0, v1, Lcom/android/server/ConnectivityService;->mDefaultInetConditionPublished:I

    #@2ea
    .line 4759
    move-object/from16 v0, p0

    #@2ec
    iget-object v0, v0, Lcom/android/server/ConnectivityService;->mLegacyTypeTracker:Lcom/android/server/ConnectivityService$LegacyTypeTracker;

    #@2ee
    move-object/from16 v24, v0

    #@2f0
    move-object/from16 v0, p1

    #@2f2
    iget-object v0, v0, Lcom/android/server/connectivity/NetworkAgentInfo;->networkInfo:Landroid/net/NetworkInfo;

    #@2f4
    move-object/from16 v25, v0

    #@2f6
    invoke-virtual/range {v25 .. v25}, Landroid/net/NetworkInfo;->getType()I

    #@2f9
    move-result v25

    #@2fa
    move-object/from16 v0, v24

    #@2fc
    move/from16 v1, v25

    #@2fe
    move-object/from16 v2, p1

    #@300
    invoke-virtual {v0, v1, v2}, Lcom/android/server/ConnectivityService$LegacyTypeTracker;->add(ILcom/android/server/connectivity/NetworkAgentInfo;)V

    #@303
    .line 4760
    invoke-direct/range {p0 .. p1}, Lcom/android/server/ConnectivityService;->notifyLockdownVpn(Lcom/android/server/connectivity/NetworkAgentInfo;)V

    #@306
    .line 4763
    :cond_12
    if-eqz v12, :cond_17

    #@308
    .line 4768
    :try_start_1
    invoke-static {}, Lcom/android/server/am/BatteryStatsService;->getService()Lcom/android/internal/app/IBatteryStats;

    #@30b
    move-result-object v7

    #@30c
    .line 4769
    .local v7, "bs":Lcom/android/internal/app/IBatteryStats;
    move-object/from16 v0, p1

    #@30e
    iget-object v0, v0, Lcom/android/server/connectivity/NetworkAgentInfo;->networkInfo:Landroid/net/NetworkInfo;

    #@310
    move-object/from16 v24, v0

    #@312
    invoke-virtual/range {v24 .. v24}, Landroid/net/NetworkInfo;->getType()I

    #@315
    move-result v23

    #@316
    .line 4771
    .local v23, "type":I
    move-object/from16 v0, p1

    #@318
    iget-object v0, v0, Lcom/android/server/connectivity/NetworkAgentInfo;->linkProperties:Landroid/net/LinkProperties;

    #@31a
    move-object/from16 v24, v0

    #@31c
    invoke-virtual/range {v24 .. v24}, Landroid/net/LinkProperties;->getInterfaceName()Ljava/lang/String;

    #@31f
    move-result-object v6

    #@320
    .line 4772
    .local v6, "baseIface":Ljava/lang/String;
    move/from16 v0, v23

    #@322
    invoke-interface {v7, v6, v0}, Lcom/android/internal/app/IBatteryStats;->noteNetworkInterfaceType(Ljava/lang/String;I)V

    #@325
    .line 4773
    move-object/from16 v0, p1

    #@327
    iget-object v0, v0, Lcom/android/server/connectivity/NetworkAgentInfo;->linkProperties:Landroid/net/LinkProperties;

    #@329
    move-object/from16 v24, v0

    #@32b
    invoke-virtual/range {v24 .. v24}, Landroid/net/LinkProperties;->getStackedLinks()Ljava/util/List;

    #@32e
    move-result-object v24

    #@32f
    invoke-interface/range {v24 .. v24}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@332
    move-result-object v21

    #@333
    .local v21, "stacked$iterator":Ljava/util/Iterator;
    :goto_5
    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->hasNext()Z

    #@336
    move-result v24

    #@337
    if-eqz v24, :cond_13

    #@339
    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@33c
    move-result-object v20

    #@33d
    check-cast v20, Landroid/net/LinkProperties;

    #@33f
    .line 4774
    .local v20, "stacked":Landroid/net/LinkProperties;
    invoke-virtual/range {v20 .. v20}, Landroid/net/LinkProperties;->getInterfaceName()Ljava/lang/String;

    #@342
    move-result-object v22

    #@343
    .line 4775
    .local v22, "stackedIface":Ljava/lang/String;
    move-object/from16 v0, v22

    #@345
    move/from16 v1, v23

    #@347
    invoke-interface {v7, v0, v1}, Lcom/android/internal/app/IBatteryStats;->noteNetworkInterfaceType(Ljava/lang/String;I)V

    #@34a
    .line 4776
    move-object/from16 v0, v22

    #@34c
    invoke-static {v0, v6}, Lcom/android/internal/net/NetworkStatsFactory;->noteStackedIface(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    #@34f
    goto :goto_5

    #@350
    .line 4778
    .end local v6    # "baseIface":Ljava/lang/String;
    .end local v7    # "bs":Lcom/android/internal/app/IBatteryStats;
    .end local v20    # "stacked":Landroid/net/LinkProperties;
    .end local v21    # "stacked$iterator":Ljava/util/Iterator;
    .end local v22    # "stackedIface":Ljava/lang/String;
    .end local v23    # "type":I
    :catch_0
    move-exception v10

    #@351
    .line 4795
    :cond_13
    const/4 v9, 0x0

    #@352
    .local v9, "i":I
    :goto_6
    move-object/from16 v0, p1

    #@354
    iget-object v0, v0, Lcom/android/server/connectivity/NetworkAgentInfo;->networkRequests:Landroid/util/SparseArray;

    #@356
    move-object/from16 v24, v0

    #@358
    invoke-virtual/range {v24 .. v24}, Landroid/util/SparseArray;->size()I

    #@35b
    move-result v24

    #@35c
    move/from16 v0, v24

    #@35e
    if-ge v9, v0, :cond_16

    #@360
    .line 4796
    move-object/from16 v0, p1

    #@362
    iget-object v0, v0, Lcom/android/server/connectivity/NetworkAgentInfo;->networkRequests:Landroid/util/SparseArray;

    #@364
    move-object/from16 v24, v0

    #@366
    move-object/from16 v0, v24

    #@368
    invoke-virtual {v0, v9}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    #@36b
    move-result-object v15

    #@36c
    check-cast v15, Landroid/net/NetworkRequest;

    #@36e
    .line 4797
    .local v15, "nr":Landroid/net/NetworkRequest;
    iget v0, v15, Landroid/net/NetworkRequest;->legacyType:I

    #@370
    move/from16 v24, v0

    #@372
    const/16 v25, -0x1

    #@374
    move/from16 v0, v24

    #@376
    move/from16 v1, v25

    #@378
    if-eq v0, v1, :cond_14

    #@37a
    move-object/from16 v0, p0

    #@37c
    invoke-direct {v0, v15}, Lcom/android/server/ConnectivityService;->isRequest(Landroid/net/NetworkRequest;)Z

    #@37f
    move-result v24

    #@380
    if-eqz v24, :cond_14

    #@382
    .line 4799
    move-object/from16 v0, p0

    #@384
    iget-object v0, v0, Lcom/android/server/ConnectivityService;->mLegacyTypeTracker:Lcom/android/server/ConnectivityService$LegacyTypeTracker;

    #@386
    move-object/from16 v24, v0

    #@388
    iget v0, v15, Landroid/net/NetworkRequest;->legacyType:I

    #@38a
    move/from16 v25, v0

    #@38c
    move-object/from16 v0, v24

    #@38e
    move/from16 v1, v25

    #@390
    move-object/from16 v2, p1

    #@392
    invoke-virtual {v0, v1, v2}, Lcom/android/server/ConnectivityService$LegacyTypeTracker;->add(ILcom/android/server/connectivity/NetworkAgentInfo;)V

    #@395
    .line 4795
    :cond_14
    add-int/lit8 v9, v9, 0x1

    #@397
    goto :goto_6

    #@398
    .line 4758
    .end local v9    # "i":I
    .end local v15    # "nr":Landroid/net/NetworkRequest;
    :cond_15
    const/16 v24, 0x0

    #@39a
    goto/16 :goto_4

    #@39c
    .line 4807
    .restart local v9    # "i":I
    :cond_16
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/connectivity/NetworkAgentInfo;->isVPN()Z

    #@39f
    move-result v24

    #@3a0
    if-eqz v24, :cond_17

    #@3a2
    .line 4808
    move-object/from16 v0, p0

    #@3a4
    iget-object v0, v0, Lcom/android/server/ConnectivityService;->mLegacyTypeTracker:Lcom/android/server/ConnectivityService$LegacyTypeTracker;

    #@3a6
    move-object/from16 v24, v0

    #@3a8
    const/16 v25, 0x11

    #@3aa
    move-object/from16 v0, v24

    #@3ac
    move/from16 v1, v25

    #@3ae
    move-object/from16 v2, p1

    #@3b0
    invoke-virtual {v0, v1, v2}, Lcom/android/server/ConnectivityService$LegacyTypeTracker;->add(ILcom/android/server/connectivity/NetworkAgentInfo;)V

    #@3b3
    .line 4811
    .end local v9    # "i":I
    :cond_17
    sget-object v24, Lcom/android/server/ConnectivityService$ReapUnvalidatedNetworks;->REAP:Lcom/android/server/ConnectivityService$ReapUnvalidatedNetworks;

    #@3b5
    move-object/from16 v0, p2

    #@3b7
    move-object/from16 v1, v24

    #@3b9
    if-ne v0, v1, :cond_19

    #@3bb
    .line 4812
    move-object/from16 v0, p0

    #@3bd
    iget-object v0, v0, Lcom/android/server/ConnectivityService;->mNetworkAgentInfos:Ljava/util/HashMap;

    #@3bf
    move-object/from16 v24, v0

    #@3c1
    invoke-virtual/range {v24 .. v24}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    #@3c4
    move-result-object v24

    #@3c5
    invoke-interface/range {v24 .. v24}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@3c8
    move-result-object v14

    #@3c9
    :cond_18
    :goto_7
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    #@3cc
    move-result v24

    #@3cd
    if-eqz v24, :cond_19

    #@3cf
    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@3d2
    move-result-object v13

    #@3d3
    check-cast v13, Lcom/android/server/connectivity/NetworkAgentInfo;

    #@3d5
    .line 4813
    .restart local v13    # "nai":Lcom/android/server/connectivity/NetworkAgentInfo;
    move-object/from16 v0, p0

    #@3d7
    invoke-direct {v0, v13}, Lcom/android/server/ConnectivityService;->unneeded(Lcom/android/server/connectivity/NetworkAgentInfo;)Z

    #@3da
    move-result v24

    #@3db
    if-eqz v24, :cond_18

    #@3dd
    .line 4814
    new-instance v24, Ljava/lang/StringBuilder;

    #@3df
    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    #@3e2
    const-string/jumbo v25, "Reaping "

    #@3e5
    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3e8
    move-result-object v24

    #@3e9
    invoke-virtual {v13}, Lcom/android/server/connectivity/NetworkAgentInfo;->name()Ljava/lang/String;

    #@3ec
    move-result-object v25

    #@3ed
    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3f0
    move-result-object v24

    #@3f1
    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3f4
    move-result-object v24

    #@3f5
    invoke-static/range {v24 .. v24}, Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V

    #@3f8
    .line 4815
    move-object/from16 v0, p0

    #@3fa
    invoke-direct {v0, v13}, Lcom/android/server/ConnectivityService;->teardownUnneededNetwork(Lcom/android/server/connectivity/NetworkAgentInfo;)V

    #@3fd
    goto :goto_7

    #@3fe
    .line 4609
    .end local v13    # "nai":Lcom/android/server/connectivity/NetworkAgentInfo;
    :cond_19
    return-void
.end method

.method private removeDataActivityTracking(Lcom/android/server/connectivity/NetworkAgentInfo;)V
    .locals 5
    .param p1, "networkAgent"    # Lcom/android/server/connectivity/NetworkAgentInfo;

    #@0
    .prologue
    .line 1680
    iget-object v3, p1, Lcom/android/server/connectivity/NetworkAgentInfo;->linkProperties:Landroid/net/LinkProperties;

    #@2
    invoke-virtual {v3}, Landroid/net/LinkProperties;->getInterfaceName()Ljava/lang/String;

    #@5
    move-result-object v2

    #@6
    .line 1681
    .local v2, "iface":Ljava/lang/String;
    iget-object v0, p1, Lcom/android/server/connectivity/NetworkAgentInfo;->networkCapabilities:Landroid/net/NetworkCapabilities;

    #@8
    .line 1683
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
    .line 1684
    const/4 v3, 0x1

    #@12
    invoke-virtual {v0, v3}, Landroid/net/NetworkCapabilities;->hasTransport(I)Z

    #@15
    move-result v3

    #@16
    .line 1683
    if-eqz v3, :cond_1

    #@18
    .line 1687
    :cond_0
    :try_start_0
    iget-object v3, p0, Lcom/android/server/ConnectivityService;->mNetd:Landroid/os/INetworkManagementService;

    #@1a
    invoke-interface {v3, v2}, Landroid/os/INetworkManagementService;->removeIdleTimer(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    #@1d
    .line 1679
    :cond_1
    :goto_0
    return-void

    #@1e
    .line 1688
    :catch_0
    move-exception v1

    #@1f
    .line 1689
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
    .line 2817
    const/4 v0, 0x0

    #@1
    .line 2818
    .local v0, "serialNum":I
    monitor-enter p0

    #@2
    .line 2819
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
    .line 2820
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
    .line 2821
    .end local v0    # "serialNum":I
    .local v1, "serialNum":I
    :try_start_2
    iget-object v2, p0, Lcom/android/server/ConnectivityService;->mNetTransitionWakeLock:Landroid/os/PowerManager$WakeLock;

    #@14
    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->acquire()V

    #@17
    .line 2822
    iput-object p1, p0, Lcom/android/server/ConnectivityService;->mNetTransitionWakeLockCausedBy:Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    #@19
    monitor-exit p0

    #@1a
    .line 2824
    iget-object v2, p0, Lcom/android/server/ConnectivityService;->mHandler:Lcom/android/server/ConnectivityService$InternalHandler;

    #@1c
    iget-object v3, p0, Lcom/android/server/ConnectivityService;->mHandler:Lcom/android/server/ConnectivityService$InternalHandler;

    #@1e
    .line 2825
    const/16 v4, 0x18

    #@20
    const/4 v5, 0x0

    #@21
    .line 2824
    invoke-virtual {v3, v4, v1, v5}, Lcom/android/server/ConnectivityService$InternalHandler;->obtainMessage(III)Landroid/os/Message;

    #@24
    move-result-object v3

    #@25
    .line 2826
    iget v4, p0, Lcom/android/server/ConnectivityService;->mNetTransitionWakeLockTimeout:I

    #@27
    int-to-long v4, v4

    #@28
    .line 2824
    invoke-virtual {v2, v3, v4, v5}, Lcom/android/server/ConnectivityService$InternalHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    #@2b
    .line 2827
    return-void

    #@2c
    .line 2818
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
    .line 2540
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mHandler:Lcom/android/server/ConnectivityService$InternalHandler;

    #@2
    .line 2541
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
    .line 2542
    const-wide/16 v2, 0x1f40

    #@e
    .line 2540
    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/ConnectivityService$InternalHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    #@11
    .line 2538
    return-void
.end method

.method private sendDataActivityBroadcast(IZJ)V
    .locals 15
    .param p1, "deviceType"    # I
    .param p2, "active"    # Z
    .param p3, "tsNanos"    # J

    #@0
    .prologue
    .line 1560
    new-instance v3, Landroid/content/Intent;

    #@2
    const-string/jumbo v2, "android.net.conn.DATA_ACTIVITY_CHANGE"

    #@5
    invoke-direct {v3, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    #@8
    .line 1561
    .local v3, "intent":Landroid/content/Intent;
    const-string/jumbo v2, "deviceType"

    #@b
    move/from16 v0, p1

    #@d
    invoke-virtual {v3, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    #@10
    .line 1562
    const-string/jumbo v2, "isActive"

    #@13
    move/from16 v0, p2

    #@15
    invoke-virtual {v3, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    #@18
    .line 1563
    const-string/jumbo v2, "tsNanos"

    #@1b
    move-wide/from16 v0, p3

    #@1d
    invoke-virtual {v3, v2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    #@20
    .line 1564
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    #@23
    move-result-wide v12

    #@24
    .line 1566
    .local v12, "ident":J
    :try_start_0
    iget-object v2, p0, Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;

    #@26
    sget-object v4, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    #@28
    .line 1567
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
    .line 1566
    invoke-virtual/range {v2 .. v10}, Landroid/content/Context;->sendOrderedBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;Landroid/content/BroadcastReceiver;Landroid/os/Handler;ILjava/lang/String;Landroid/os/Bundle;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@33
    .line 1569
    invoke-static {v12, v13}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@36
    .line 1559
    return-void

    #@37
    .line 1568
    :catchall_0
    move-exception v2

    #@38
    .line 1569
    invoke-static {v12, v13}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@3b
    .line 1568
    throw v2
.end method

.method private sendGeneralBroadcast(Landroid/net/NetworkInfo;Ljava/lang/String;)V
    .locals 1
    .param p1, "info"    # Landroid/net/NetworkInfo;
    .param p2, "bcastType"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1556
    invoke-direct {p0, p1, p2}, Lcom/android/server/ConnectivityService;->makeGeneralIntent(Landroid/net/NetworkInfo;Ljava/lang/String;)Landroid/content/Intent;

    #@3
    move-result-object v0

    #@4
    invoke-direct {p0, v0}, Lcom/android/server/ConnectivityService;->sendStickyBroadcast(Landroid/content/Intent;)V

    #@7
    .line 1555
    return-void
.end method

.method private sendInetConditionBroadcast(Landroid/net/NetworkInfo;)V
    .locals 1
    .param p1, "info"    # Landroid/net/NetworkInfo;

    #@0
    .prologue
    .line 1528
    const-string/jumbo v0, "android.net.conn.INET_CONDITION_ACTION"

    #@3
    invoke-direct {p0, p1, v0}, Lcom/android/server/ConnectivityService;->sendGeneralBroadcast(Landroid/net/NetworkInfo;Ljava/lang/String;)V

    #@6
    .line 1527
    return-void
.end method

.method private sendIntent(Landroid/app/PendingIntent;Landroid/content/Intent;)V
    .locals 7
    .param p1, "pendingIntent"    # Landroid/app/PendingIntent;
    .param p2, "intent"    # Landroid/content/Intent;

    #@0
    .prologue
    .line 4484
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mPendingIntentWakeLock:Landroid/os/PowerManager$WakeLock;

    #@2
    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    #@5
    .line 4486
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
    .line 4487
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
    .line 4483
    :goto_0
    return-void

    #@27
    .line 4488
    :catch_0
    move-exception v6

    #@28
    .line 4489
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
    .line 4490
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mPendingIntentWakeLock:Landroid/os/PowerManager$WakeLock;

    #@41
    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    #@44
    .line 4491
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
    .line 5035
    new-instance v0, Landroid/net/NetworkInfo;

    #@4
    iget-object v3, p1, Lcom/android/server/connectivity/NetworkAgentInfo;->networkInfo:Landroid/net/NetworkInfo;

    #@6
    invoke-direct {v0, v3}, Landroid/net/NetworkInfo;-><init>(Landroid/net/NetworkInfo;)V

    #@9
    .line 5036
    .local v0, "info":Landroid/net/NetworkInfo;
    invoke-virtual {v0, p3}, Landroid/net/NetworkInfo;->setType(I)V

    #@c
    .line 5037
    sget-object v3, Landroid/net/NetworkInfo$DetailedState;->DISCONNECTED:Landroid/net/NetworkInfo$DetailedState;

    #@e
    if-eq p2, v3, :cond_1

    #@10
    .line 5038
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getExtraInfo()Ljava/lang/String;

    #@13
    move-result-object v3

    #@14
    invoke-virtual {v0, p2, v4, v3}, Landroid/net/NetworkInfo;->setDetailedState(Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;Ljava/lang/String;)V

    #@17
    .line 5039
    invoke-virtual {p0, v0}, Lcom/android/server/ConnectivityService;->sendConnectedBroadcast(Landroid/net/NetworkInfo;)V

    #@1a
    .line 5028
    :cond_0
    :goto_0
    return-void

    #@1b
    .line 5041
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
    .line 5042
    new-instance v1, Landroid/content/Intent;

    #@28
    const-string/jumbo v3, "android.net.conn.CONNECTIVITY_CHANGE"

    #@2b
    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    #@2e
    .line 5043
    .local v1, "intent":Landroid/content/Intent;
    const-string/jumbo v3, "networkInfo"

    #@31
    invoke-virtual {v1, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    #@34
    .line 5044
    const-string/jumbo v3, "networkType"

    #@37
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    #@3a
    move-result v4

    #@3b
    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    #@3e
    .line 5045
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isFailover()Z

    #@41
    move-result v3

    #@42
    if-eqz v3, :cond_2

    #@44
    .line 5046
    const-string/jumbo v3, "isFailover"

    #@47
    invoke-virtual {v1, v3, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    #@4a
    .line 5047
    iget-object v3, p1, Lcom/android/server/connectivity/NetworkAgentInfo;->networkInfo:Landroid/net/NetworkInfo;

    #@4c
    const/4 v4, 0x0

    #@4d
    invoke-virtual {v3, v4}, Landroid/net/NetworkInfo;->setFailover(Z)V

    #@50
    .line 5049
    :cond_2
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getReason()Ljava/lang/String;

    #@53
    move-result-object v3

    #@54
    if-eqz v3, :cond_3

    #@56
    .line 5050
    const-string/jumbo v3, "reason"

    #@59
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getReason()Ljava/lang/String;

    #@5c
    move-result-object v4

    #@5d
    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    #@60
    .line 5052
    :cond_3
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getExtraInfo()Ljava/lang/String;

    #@63
    move-result-object v3

    #@64
    if-eqz v3, :cond_4

    #@66
    .line 5053
    const-string/jumbo v3, "extraInfo"

    #@69
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getExtraInfo()Ljava/lang/String;

    #@6c
    move-result-object v4

    #@6d
    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    #@70
    .line 5055
    :cond_4
    const/4 v2, 0x0

    #@71
    .line 5056
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
    .line 5057
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->getDefaultNetwork()Lcom/android/server/connectivity/NetworkAgentInfo;

    #@80
    move-result-object v2

    #@81
    .line 5058
    .local v2, "newDefaultAgent":Lcom/android/server/connectivity/NetworkAgentInfo;
    if-eqz v2, :cond_6

    #@83
    .line 5059
    const-string/jumbo v3, "otherNetwork"

    #@86
    .line 5060
    iget-object v4, v2, Lcom/android/server/connectivity/NetworkAgentInfo;->networkInfo:Landroid/net/NetworkInfo;

    #@88
    .line 5059
    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    #@8b
    .line 5065
    .end local v2    # "newDefaultAgent":Lcom/android/server/connectivity/NetworkAgentInfo;
    :cond_5
    :goto_1
    const-string/jumbo v3, "inetCondition"

    #@8e
    .line 5066
    iget v4, p0, Lcom/android/server/ConnectivityService;->mDefaultInetConditionPublished:I

    #@90
    .line 5065
    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    #@93
    .line 5067
    invoke-direct {p0, v1}, Lcom/android/server/ConnectivityService;->sendStickyBroadcast(Landroid/content/Intent;)V

    #@96
    .line 5068
    if-eqz v2, :cond_0

    #@98
    .line 5069
    iget-object v3, v2, Lcom/android/server/connectivity/NetworkAgentInfo;->networkInfo:Landroid/net/NetworkInfo;

    #@9a
    invoke-virtual {p0, v3}, Lcom/android/server/ConnectivityService;->sendConnectedBroadcast(Landroid/net/NetworkInfo;)V

    #@9d
    goto/16 :goto_0

    #@9f
    .line 5062
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
    .line 4473
    const v1, 0x80002

    #@3
    if-ne p3, v1, :cond_0

    #@5
    iget-boolean v1, p1, Lcom/android/server/ConnectivityService$NetworkRequestInfo;->mPendingIntentSent:Z

    #@7
    if-eqz v1, :cond_1

    #@9
    .line 4472
    :cond_0
    :goto_0
    return-void

    #@a
    .line 4474
    :cond_1
    new-instance v0, Landroid/content/Intent;

    #@c
    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    #@f
    .line 4475
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v1, "android.net.extra.NETWORK"

    #@12
    iget-object v2, p2, Lcom/android/server/connectivity/NetworkAgentInfo;->network:Landroid/net/Network;

    #@14
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    #@17
    .line 4476
    const-string/jumbo v1, "android.net.extra.NETWORK_REQUEST"

    #@1a
    iget-object v2, p1, Lcom/android/server/ConnectivityService$NetworkRequestInfo;->request:Landroid/net/NetworkRequest;

    #@1c
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    #@1f
    .line 4477
    const/4 v1, 0x1

    #@20
    iput-boolean v1, p1, Lcom/android/server/ConnectivityService$NetworkRequestInfo;->mPendingIntentSent:Z

    #@22
    .line 4478
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
    .line 3080
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
    .line 3081
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
    .line 3082
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
    .line 3083
    new-instance v2, Landroid/content/Intent;

    #@30
    const-string/jumbo v3, "android.intent.action.PROXY_CHANGE"

    #@33
    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    #@36
    .line 3084
    .local v2, "intent":Landroid/content/Intent;
    const/high16 v3, 0x24000000

    #@38
    invoke-virtual {v2, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    #@3b
    .line 3086
    const-string/jumbo v3, "android.intent.extra.PROXY_INFO"

    #@3e
    invoke-virtual {v2, v3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    #@41
    .line 3087
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    #@44
    move-result-wide v0

    #@45
    .line 3089
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
    .line 3091
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@4f
    .line 3079
    return-void

    #@50
    .line 3090
    :catchall_0
    move-exception v3

    #@51
    .line 3091
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@54
    .line 3090
    throw v3
.end method

.method private sendStickyBroadcast(Landroid/content/Intent;)V
    .locals 9
    .param p1, "intent"    # Landroid/content/Intent;

    #@0
    .prologue
    .line 1574
    monitor-enter p0

    #@1
    .line 1575
    :try_start_0
    iget-boolean v7, p0, Lcom/android/server/ConnectivityService;->mSystemReady:Z

    #@3
    if-nez v7, :cond_0

    #@5
    .line 1576
    new-instance v7, Landroid/content/Intent;

    #@7
    invoke-direct {v7, p1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    #@a
    iput-object v7, p0, Lcom/android/server/ConnectivityService;->mInitialBroadcast:Landroid/content/Intent;

    #@c
    .line 1578
    :cond_0
    const/high16 v7, 0x4000000

    #@e
    invoke-virtual {p1, v7}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    #@11
    .line 1583
    const/4 v5, 0x0

    #@12
    .line 1584
    .local v5, "options":Landroid/os/Bundle;
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    #@15
    move-result-wide v2

    #@16
    .line 1585
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
    .line 1587
    const-string/jumbo v7, "networkInfo"

    #@26
    .line 1586
    invoke-virtual {p1, v7}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    #@29
    move-result-object v4

    #@2a
    check-cast v4, Landroid/net/NetworkInfo;

    #@2c
    .line 1588
    .local v4, "ni":Landroid/net/NetworkInfo;
    invoke-virtual {v4}, Landroid/net/NetworkInfo;->getType()I

    #@2f
    move-result v7

    #@30
    const/4 v8, 0x3

    #@31
    if-ne v7, v8, :cond_2

    #@33
    .line 1589
    const-string/jumbo v7, "android.net.conn.CONNECTIVITY_CHANGE_SUPL"

    #@36
    invoke-virtual {p1, v7}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    #@39
    .line 1590
    const/high16 v7, 0x40000000    # 2.0f

    #@3b
    invoke-virtual {p1, v7}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    #@3e
    .line 1596
    .end local v5    # "options":Landroid/os/Bundle;
    :goto_0
    invoke-static {}, Lcom/android/server/am/BatteryStatsService;->getService()Lcom/android/internal/app/IBatteryStats;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    #@41
    move-result-object v0

    #@42
    .line 1599
    .local v0, "bs":Lcom/android/internal/app/IBatteryStats;
    :try_start_1
    const-string/jumbo v7, "networkType"

    #@45
    const/4 v8, -0x1

    #@46
    .line 1598
    invoke-virtual {p1, v7, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    #@49
    move-result v8

    #@4a
    .line 1600
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
    .line 1598
    :goto_1
    invoke-interface {v0, v8, v7}, Lcom/android/internal/app/IBatteryStats;->noteConnectivityChanged(ILjava/lang/String;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    #@57
    .line 1605
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
    .line 1607
    :try_start_3
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    #@61
    monitor-exit p0

    #@62
    .line 1573
    return-void

    #@63
    .line 1592
    .restart local v4    # "ni":Landroid/net/NetworkInfo;
    .restart local v5    # "options":Landroid/os/Bundle;
    :cond_2
    :try_start_4
    invoke-static {}, Landroid/app/BroadcastOptions;->makeBasic()Landroid/app/BroadcastOptions;

    #@66
    move-result-object v6

    #@67
    .line 1593
    .local v6, "opts":Landroid/app/BroadcastOptions;
    const/16 v7, 0x17

    #@69
    invoke-virtual {v6, v7}, Landroid/app/BroadcastOptions;->setMaxManifestReceiverApiLevel(I)V

    #@6c
    .line 1594
    invoke-virtual {v6}, Landroid/app/BroadcastOptions;->toBundle()Landroid/os/Bundle;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    #@6f
    move-result-object v5

    #@70
    .local v5, "options":Landroid/os/Bundle;
    goto :goto_0

    #@71
    .line 1600
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
    .line 1606
    .end local v0    # "bs":Lcom/android/internal/app/IBatteryStats;
    .end local v4    # "ni":Landroid/net/NetworkInfo;
    :catchall_0
    move-exception v7

    #@76
    .line 1607
    :try_start_6
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@79
    .line 1606
    throw v7
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    #@7a
    .line 1574
    .end local v2    # "ident":J
    :catchall_1
    move-exception v7

    #@7b
    monitor-exit p0

    #@7c
    throw v7

    #@7d
    .line 1601
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
    .line 4465
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
    .line 4466
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
    .line 4463
    .end local v0    # "nfi":Lcom/android/server/ConnectivityService$NetworkFactoryInfo;
    :cond_0
    return-void
.end method

.method private sendUpdatedScoreToFactories(Lcom/android/server/connectivity/NetworkAgentInfo;)V
    .locals 3
    .param p1, "nai"    # Lcom/android/server/connectivity/NetworkAgentInfo;

    #@0
    .prologue
    .line 4455
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
    .line 4456
    iget-object v2, p1, Lcom/android/server/connectivity/NetworkAgentInfo;->networkRequests:Landroid/util/SparseArray;

    #@b
    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    #@e
    move-result-object v1

    #@f
    check-cast v1, Landroid/net/NetworkRequest;

    #@11
    .line 4458
    .local v1, "nr":Landroid/net/NetworkRequest;
    invoke-direct {p0, v1}, Lcom/android/server/ConnectivityService;->isRequest(Landroid/net/NetworkRequest;)Z

    #@14
    move-result v2

    #@15
    if-nez v2, :cond_0

    #@17
    .line 4455
    :goto_1
    add-int/lit8 v0, v0, 0x1

    #@19
    goto :goto_0

    #@1a
    .line 4459
    :cond_0
    invoke-virtual {p1}, Lcom/android/server/connectivity/NetworkAgentInfo;->getCurrentScore()I

    #@1d
    move-result v2

    #@1e
    invoke-direct {p0, v1, v2}, Lcom/android/server/ConnectivityService;->sendUpdatedScoreToFactories(Landroid/net/NetworkRequest;I)V

    #@21
    goto :goto_1

    #@22
    .line 4454
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
    .line 4399
    .local p1, "dnses":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/net/InetAddress;>;"
    const/4 v4, 0x0

    #@1
    .line 4400
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
    .line 4401
    .local v0, "dns":Ljava/net/InetAddress;
    add-int/lit8 v4, v4, 0x1

    #@13
    .line 4402
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
    .line 4403
    .local v3, "key":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    #@2a
    move-result-object v5

    #@2b
    .line 4404
    .local v5, "value":Ljava/lang/String;
    invoke-static {v3, v5}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    #@2e
    goto :goto_0

    #@2f
    .line 4406
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
    .line 4407
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
    .line 4408
    .restart local v3    # "key":Ljava/lang/String;
    const-string/jumbo v6, ""

    #@4c
    invoke-static {v3, v6}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    #@4f
    .line 4406
    add-int/lit8 v2, v2, 0x1

    #@51
    goto :goto_1

    #@52
    .line 4410
    .end local v3    # "key":Ljava/lang/String;
    :cond_1
    iput v4, p0, Lcom/android/server/ConnectivityService;->mNumDnsEntries:I

    #@54
    .line 4398
    return-void
.end method

.method private setLockdownTracker(Lcom/android/server/net/LockdownVpnTracker;)V
    .locals 5
    .param p1, "tracker"    # Lcom/android/server/net/LockdownVpnTracker;

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 3355
    iget-object v1, p0, Lcom/android/server/ConnectivityService;->mLockdownTracker:Lcom/android/server/net/LockdownVpnTracker;

    #@3
    .line 3356
    .local v1, "existing":Lcom/android/server/net/LockdownVpnTracker;
    iput-object v2, p0, Lcom/android/server/ConnectivityService;->mLockdownTracker:Lcom/android/server/net/LockdownVpnTracker;

    #@5
    .line 3357
    if-eqz v1, :cond_0

    #@7
    .line 3358
    invoke-virtual {v1}, Lcom/android/server/net/LockdownVpnTracker;->shutdown()V

    #@a
    .line 3362
    :cond_0
    if-eqz p1, :cond_1

    #@c
    .line 3363
    :try_start_0
    iget-object v2, p0, Lcom/android/server/ConnectivityService;->mNetd:Landroid/os/INetworkManagementService;

    #@e
    const/4 v3, 0x1

    #@f
    invoke-interface {v2, v3}, Landroid/os/INetworkManagementService;->setFirewallEnabled(Z)V

    #@12
    .line 3364
    iget-object v2, p0, Lcom/android/server/ConnectivityService;->mNetd:Landroid/os/INetworkManagementService;

    #@14
    const-string/jumbo v3, "lo"

    #@17
    const/4 v4, 0x1

    #@18
    invoke-interface {v2, v3, v4}, Landroid/os/INetworkManagementService;->setFirewallInterfaceRule(Ljava/lang/String;Z)V

    #@1b
    .line 3365
    iput-object p1, p0, Lcom/android/server/ConnectivityService;->mLockdownTracker:Lcom/android/server/net/LockdownVpnTracker;

    #@1d
    .line 3366
    iget-object v2, p0, Lcom/android/server/ConnectivityService;->mLockdownTracker:Lcom/android/server/net/LockdownVpnTracker;

    #@1f
    invoke-virtual {v2}, Lcom/android/server/net/LockdownVpnTracker;->init()V

    #@22
    .line 3353
    :goto_0
    return-void

    #@23
    .line 3368
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
    .line 3370
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
    .line 3456
    new-instance v8, Landroid/content/Intent;

    #@3
    invoke-direct {v8, p3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    #@6
    .line 3457
    .local v8, "intent":Landroid/content/Intent;
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;

    #@8
    invoke-static {v0, v7, v8, v7}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    #@b
    move-result-object v6

    #@c
    .line 3459
    .local v6, "pendingIntent":Landroid/app/PendingIntent;
    add-int/lit8 v0, p2, 0x1

    #@e
    const/high16 v1, 0x10000

    #@10
    add-int v2, v1, v0

    #@12
    .line 3460
    .local v2, "id":I
    sget-object v3, Lcom/android/server/ConnectivityService$NotificationType;->SIGN_IN:Lcom/android/server/ConnectivityService$NotificationType;

    #@14
    .line 3461
    const/4 v5, 0x0

    #@15
    move-object v0, p0

    #@16
    move v1, p1

    #@17
    move v4, p2

    #@18
    .line 3460
    invoke-direct/range {v0 .. v7}, Lcom/android/server/ConnectivityService;->setProvNotificationVisibleIntent(ZILcom/android/server/ConnectivityService$NotificationType;ILjava/lang/String;Landroid/app/PendingIntent;Z)V

    #@1b
    .line 3455
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
    .line 3482
    if-eqz p1, :cond_0

    #@2
    .line 3483
    new-instance v9, Ljava/lang/StringBuilder;

    #@4
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    #@7
    const-string/jumbo v10, "setProvNotificationVisibleIntent "

    #@a
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@d
    move-result-object v9

    #@e
    invoke-virtual {v9, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@11
    move-result-object v9

    #@12
    const-string/jumbo v10, " visible="

    #@15
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@18
    move-result-object v9

    #@19
    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@1c
    move-result-object v9

    #@1d
    .line 3484
    const-string/jumbo v10, " networkType="

    #@20
    .line 3483
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@23
    move-result-object v9

    #@24
    .line 3484
    invoke-static/range {p4 .. p4}, Landroid/net/ConnectivityManager;->getNetworkTypeName(I)Ljava/lang/String;

    #@27
    move-result-object v10

    #@28
    .line 3483
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2b
    move-result-object v9

    #@2c
    .line 3485
    const-string/jumbo v10, " extraInfo="

    #@2f
    .line 3483
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@32
    move-result-object v9

    #@33
    move-object/from16 v0, p5

    #@35
    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@38
    move-result-object v9

    #@39
    .line 3485
    const-string/jumbo v10, " highPriority="

    #@3c
    .line 3483
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3f
    move-result-object v9

    #@40
    move/from16 v0, p7

    #@42
    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@45
    move-result-object v9

    #@46
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@49
    move-result-object v9

    #@4a
    invoke-static {v9}, Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V

    #@4d
    .line 3488
    :cond_0
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    #@50
    move-result-object v7

    #@51
    .line 3489
    .local v7, "r":Landroid/content/res/Resources;
    iget-object v9, p0, Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;

    #@53
    .line 3490
    const-string/jumbo v10, "notification"

    #@56
    .line 3489
    invoke-virtual {v9, v10}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    #@59
    move-result-object v5

    #@5a
    check-cast v5, Landroid/app/NotificationManager;

    #@5c
    .line 3492
    .local v5, "notificationManager":Landroid/app/NotificationManager;
    if-eqz p1, :cond_5

    #@5e
    .line 3496
    sget-object v9, Lcom/android/server/ConnectivityService$NotificationType;->NO_INTERNET:Lcom/android/server/ConnectivityService$NotificationType;

    #@60
    if-ne p3, v9, :cond_1

    #@62
    .line 3497
    const/4 v9, 0x1

    #@63
    move/from16 v0, p4

    #@65
    if-ne v0, v9, :cond_1

    #@67
    .line 3498
    const/4 v9, 0x1

    #@68
    new-array v9, v9, [Ljava/lang/Object;

    #@6a
    const/4 v10, 0x0

    #@6b
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@6e
    move-result-object v10

    #@6f
    const/4 v11, 0x0

    #@70
    aput-object v10, v9, v11

    #@72
    const v10, 0x10403d3

    #@75
    invoke-virtual {v7, v10, v9}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    #@78
    move-result-object v8

    #@79
    .line 3499
    .local v8, "title":Ljava/lang/CharSequence;
    const v9, 0x10403d4

    #@7c
    invoke-virtual {v7, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    #@7f
    move-result-object v2

    #@80
    .line 3500
    .local v2, "details":Ljava/lang/CharSequence;
    const v3, 0x10806bd

    #@83
    .line 3530
    .local v3, "icon":I
    :goto_0
    new-instance v9, Landroid/app/Notification$Builder;

    #@85
    iget-object v10, p0, Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;

    #@87
    invoke-direct {v9, v10}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    #@8a
    .line 3531
    const-wide/16 v10, 0x0

    #@8c
    .line 3530
    invoke-virtual {v9, v10, v11}, Landroid/app/Notification$Builder;->setWhen(J)Landroid/app/Notification$Builder;

    #@8f
    move-result-object v9

    #@90
    invoke-virtual {v9, v3}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    #@93
    move-result-object v9

    #@94
    .line 3533
    const/4 v10, 0x1

    #@95
    .line 3530
    invoke-virtual {v9, v10}, Landroid/app/Notification$Builder;->setAutoCancel(Z)Landroid/app/Notification$Builder;

    #@98
    move-result-object v9

    #@99
    invoke-virtual {v9, v8}, Landroid/app/Notification$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    #@9c
    move-result-object v9

    #@9d
    .line 3535
    iget-object v10, p0, Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;

    #@9f
    .line 3536
    const v11, 0x1060059

    #@a2
    .line 3535
    invoke-virtual {v10, v11}, Landroid/content/Context;->getColor(I)I

    #@a5
    move-result v10

    #@a6
    .line 3530
    invoke-virtual {v9, v10}, Landroid/app/Notification$Builder;->setColor(I)Landroid/app/Notification$Builder;

    #@a9
    move-result-object v9

    #@aa
    invoke-virtual {v9, v8}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    #@ad
    move-result-object v9

    #@ae
    invoke-virtual {v9, v2}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    #@b1
    move-result-object v9

    #@b2
    move-object/from16 v0, p6

    #@b4
    invoke-virtual {v9, v0}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    #@b7
    move-result-object v9

    #@b8
    .line 3540
    const/4 v10, 0x1

    #@b9
    .line 3530
    invoke-virtual {v9, v10}, Landroid/app/Notification$Builder;->setLocalOnly(Z)Landroid/app/Notification$Builder;

    #@bc
    move-result-object v10

    #@bd
    .line 3541
    if-eqz p7, :cond_3

    #@bf
    .line 3542
    const/4 v9, 0x1

    #@c0
    .line 3530
    :goto_1
    invoke-virtual {v10, v9}, Landroid/app/Notification$Builder;->setPriority(I)Landroid/app/Notification$Builder;

    #@c3
    move-result-object v10

    #@c4
    .line 3544
    if-eqz p7, :cond_4

    #@c6
    const/4 v9, -0x1

    #@c7
    .line 3530
    :goto_2
    invoke-virtual {v10, v9}, Landroid/app/Notification$Builder;->setDefaults(I)Landroid/app/Notification$Builder;

    #@ca
    move-result-object v9

    #@cb
    .line 3545
    const/4 v10, 0x1

    #@cc
    .line 3530
    invoke-virtual {v9, v10}, Landroid/app/Notification$Builder;->setOnlyAlertOnce(Z)Landroid/app/Notification$Builder;

    #@cf
    move-result-object v9

    #@d0
    invoke-virtual {v9}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    #@d3
    move-result-object v4

    #@d4
    .line 3549
    .local v4, "notification":Landroid/app/Notification;
    :try_start_0
    const-string/jumbo v9, "CaptivePortal.Notification"

    #@d7
    sget-object v10, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    #@d9
    invoke-virtual {v5, v9, p2, v4, v10}, Landroid/app/NotificationManager;->notifyAsUser(Ljava/lang/String;ILandroid/app/Notification;Landroid/os/UserHandle;)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    #@dc
    .line 3481
    .end local v2    # "details":Ljava/lang/CharSequence;
    .end local v3    # "icon":I
    .end local v4    # "notification":Landroid/app/Notification;
    .end local v8    # "title":Ljava/lang/CharSequence;
    :goto_3
    return-void

    #@dd
    .line 3501
    :cond_1
    sget-object v9, Lcom/android/server/ConnectivityService$NotificationType;->SIGN_IN:Lcom/android/server/ConnectivityService$NotificationType;

    #@df
    if-ne p3, v9, :cond_2

    #@e1
    .line 3502
    packed-switch p4, :pswitch_data_0

    #@e4
    .line 3518
    :pswitch_0
    const/4 v9, 0x1

    #@e5
    new-array v9, v9, [Ljava/lang/Object;

    #@e7
    const/4 v10, 0x0

    #@e8
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@eb
    move-result-object v10

    #@ec
    const/4 v11, 0x0

    #@ed
    aput-object v10, v9, v11

    #@ef
    const v10, 0x10403d1

    #@f2
    invoke-virtual {v7, v10, v9}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    #@f5
    move-result-object v8

    #@f6
    .line 3519
    .restart local v8    # "title":Ljava/lang/CharSequence;
    const/4 v9, 0x1

    #@f7
    new-array v9, v9, [Ljava/lang/Object;

    #@f9
    .line 3520
    const/4 v10, 0x0

    #@fa
    aput-object p5, v9, v10

    #@fc
    .line 3519
    const v10, 0x10403d2

    #@ff
    invoke-virtual {v7, v10, v9}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    #@102
    move-result-object v2

    #@103
    .line 3521
    .restart local v2    # "details":Ljava/lang/CharSequence;
    const v3, 0x10806b9

    #@106
    .line 3522
    .restart local v3    # "icon":I
    goto/16 :goto_0

    #@108
    .line 3504
    .end local v2    # "details":Ljava/lang/CharSequence;
    .end local v3    # "icon":I
    .end local v8    # "title":Ljava/lang/CharSequence;
    :pswitch_1
    const/4 v9, 0x1

    #@109
    new-array v9, v9, [Ljava/lang/Object;

    #@10b
    const/4 v10, 0x0

    #@10c
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@10f
    move-result-object v10

    #@110
    const/4 v11, 0x0

    #@111
    aput-object v10, v9, v11

    #@113
    const v10, 0x10403d0

    #@116
    invoke-virtual {v7, v10, v9}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    #@119
    move-result-object v8

    #@11a
    .line 3505
    .restart local v8    # "title":Ljava/lang/CharSequence;
    const/4 v9, 0x1

    #@11b
    new-array v9, v9, [Ljava/lang/Object;

    #@11d
    .line 3506
    const/4 v10, 0x0

    #@11e
    aput-object p5, v9, v10

    #@120
    .line 3505
    const v10, 0x10403d2

    #@123
    invoke-virtual {v7, v10, v9}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    #@126
    move-result-object v2

    #@127
    .line 3507
    .restart local v2    # "details":Ljava/lang/CharSequence;
    const v3, 0x10806bd

    #@12a
    .line 3508
    .restart local v3    # "icon":I
    goto/16 :goto_0

    #@12c
    .line 3511
    .end local v2    # "details":Ljava/lang/CharSequence;
    .end local v3    # "icon":I
    .end local v8    # "title":Ljava/lang/CharSequence;
    :pswitch_2
    const/4 v9, 0x1

    #@12d
    new-array v9, v9, [Ljava/lang/Object;

    #@12f
    const/4 v10, 0x0

    #@130
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@133
    move-result-object v10

    #@134
    const/4 v11, 0x0

    #@135
    aput-object v10, v9, v11

    #@137
    const v10, 0x10403d1

    #@13a
    invoke-virtual {v7, v10, v9}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    #@13d
    move-result-object v8

    #@13e
    .line 3514
    .restart local v8    # "title":Ljava/lang/CharSequence;
    iget-object v9, p0, Lcom/android/server/ConnectivityService;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    #@140
    invoke-virtual {v9}, Landroid/telephony/TelephonyManager;->getNetworkOperatorName()Ljava/lang/String;

    #@143
    move-result-object v2

    #@144
    .line 3515
    .restart local v2    # "details":Ljava/lang/CharSequence;
    const v3, 0x10806b9

    #@147
    .line 3516
    .restart local v3    # "icon":I
    goto/16 :goto_0

    #@149
    .line 3525
    .end local v2    # "details":Ljava/lang/CharSequence;
    .end local v3    # "icon":I
    .end local v8    # "title":Ljava/lang/CharSequence;
    :cond_2
    const-string/jumbo v9, "ConnectivityService"

    #@14c
    new-instance v10, Ljava/lang/StringBuilder;

    #@14e
    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    #@151
    const-string/jumbo v11, "Unknown notification type "

    #@154
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@157
    move-result-object v10

    #@158
    invoke-virtual {v10, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@15b
    move-result-object v10

    #@15c
    const-string/jumbo v11, "on network type "

    #@15f
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@162
    move-result-object v10

    #@163
    .line 3526
    invoke-static/range {p4 .. p4}, Landroid/net/ConnectivityManager;->getNetworkTypeName(I)Ljava/lang/String;

    #@166
    move-result-object v11

    #@167
    .line 3525
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@16a
    move-result-object v10

    #@16b
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@16e
    move-result-object v10

    #@16f
    invoke-static {v9, v10}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    #@172
    .line 3527
    return-void

    #@173
    .line 3543
    .restart local v2    # "details":Ljava/lang/CharSequence;
    .restart local v3    # "icon":I
    .restart local v8    # "title":Ljava/lang/CharSequence;
    :cond_3
    const/4 v9, 0x0

    #@174
    goto/16 :goto_1

    #@176
    .line 3544
    :cond_4
    const/4 v9, 0x0

    #@177
    goto/16 :goto_2

    #@179
    .line 3550
    .restart local v4    # "notification":Landroid/app/Notification;
    :catch_0
    move-exception v6

    #@17a
    .line 3551
    .local v6, "npe":Ljava/lang/NullPointerException;
    new-instance v9, Ljava/lang/StringBuilder;

    #@17c
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    #@17f
    const-string/jumbo v10, "setNotificationVisible: visible notificationManager npe="

    #@182
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@185
    move-result-object v9

    #@186
    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@189
    move-result-object v9

    #@18a
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@18d
    move-result-object v9

    #@18e
    invoke-static {v9}, Lcom/android/server/ConnectivityService;->loge(Ljava/lang/String;)V

    #@191
    .line 3552
    invoke-virtual {v6}, Ljava/lang/NullPointerException;->printStackTrace()V

    #@194
    goto/16 :goto_3

    #@196
    .line 3556
    .end local v2    # "details":Ljava/lang/CharSequence;
    .end local v3    # "icon":I
    .end local v4    # "notification":Landroid/app/Notification;
    .end local v6    # "npe":Ljava/lang/NullPointerException;
    .end local v8    # "title":Ljava/lang/CharSequence;
    :cond_5
    :try_start_1
    const-string/jumbo v9, "CaptivePortal.Notification"

    #@199
    sget-object v10, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    #@19b
    invoke-virtual {v5, v9, p2, v10}, Landroid/app/NotificationManager;->cancelAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)V
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_1

    #@19e
    goto/16 :goto_3

    #@1a0
    .line 3557
    :catch_1
    move-exception v6

    #@1a1
    .line 3558
    .restart local v6    # "npe":Ljava/lang/NullPointerException;
    new-instance v9, Ljava/lang/StringBuilder;

    #@1a3
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    #@1a6
    const-string/jumbo v10, "setNotificationVisible: cancel notificationManager npe="

    #@1a9
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1ac
    move-result-object v9

    #@1ad
    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@1b0
    move-result-object v9

    #@1b1
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1b4
    move-result-object v9

    #@1b5
    invoke-static {v9}, Lcom/android/server/ConnectivityService;->loge(Ljava/lang/String;)V

    #@1b8
    .line 3559
    invoke-virtual {v6}, Ljava/lang/NullPointerException;->printStackTrace()V

    #@1bb
    goto/16 :goto_3

    #@1bd
    .line 3502
    nop

    #@1be
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
    .line 1644
    iget-object v4, p1, Lcom/android/server/connectivity/NetworkAgentInfo;->linkProperties:Landroid/net/LinkProperties;

    #@3
    invoke-virtual {v4}, Landroid/net/LinkProperties;->getInterfaceName()Ljava/lang/String;

    #@6
    move-result-object v1

    #@7
    .line 1647
    .local v1, "iface":Ljava/lang/String;
    const/4 v3, -0x1

    #@8
    .line 1649
    .local v3, "type":I
    iget-object v4, p1, Lcom/android/server/connectivity/NetworkAgentInfo;->networkCapabilities:Landroid/net/NetworkCapabilities;

    #@a
    invoke-virtual {v4, v5}, Landroid/net/NetworkCapabilities;->hasTransport(I)Z

    #@d
    move-result v4

    #@e
    if-eqz v4, :cond_1

    #@10
    .line 1651
    iget-object v4, p0, Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;

    #@12
    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    #@15
    move-result-object v4

    #@16
    .line 1652
    const-string/jumbo v5, "data_activity_timeout_mobile"

    #@19
    .line 1653
    const/16 v6, 0xa

    #@1b
    .line 1651
    invoke-static {v4, v5, v6}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    #@1e
    move-result v2

    #@1f
    .line 1654
    .local v2, "timeout":I
    const/4 v3, 0x0

    #@20
    .line 1666
    :goto_0
    if-lez v2, :cond_0

    #@22
    if-eqz v1, :cond_0

    #@24
    const/4 v4, -0x1

    #@25
    if-eq v3, v4, :cond_0

    #@27
    .line 1668
    :try_start_0
    iget-object v4, p0, Lcom/android/server/ConnectivityService;->mNetd:Landroid/os/INetworkManagementService;

    #@29
    invoke-interface {v4, v1, v2, v3}, Landroid/os/INetworkManagementService;->addIdleTimer(Ljava/lang/String;II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    #@2c
    .line 1643
    :cond_0
    :goto_1
    return-void

    #@2d
    .line 1655
    .end local v2    # "timeout":I
    :cond_1
    iget-object v4, p1, Lcom/android/server/connectivity/NetworkAgentInfo;->networkCapabilities:Landroid/net/NetworkCapabilities;

    #@2f
    .line 1656
    const/4 v5, 0x1

    #@30
    .line 1655
    invoke-virtual {v4, v5}, Landroid/net/NetworkCapabilities;->hasTransport(I)Z

    #@33
    move-result v4

    #@34
    if-eqz v4, :cond_2

    #@36
    .line 1657
    iget-object v4, p0, Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;

    #@38
    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    #@3b
    move-result-object v4

    #@3c
    .line 1658
    const-string/jumbo v5, "data_activity_timeout_wifi"

    #@3f
    .line 1659
    const/16 v6, 0xf

    #@41
    .line 1657
    invoke-static {v4, v5, v6}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    #@44
    move-result v2

    #@45
    .line 1660
    .restart local v2    # "timeout":I
    const/4 v3, 0x1

    #@46
    goto :goto_0

    #@47
    .line 1663
    .end local v2    # "timeout":I
    :cond_2
    const/4 v2, 0x0

    #@48
    .restart local v2    # "timeout":I
    goto :goto_0

    #@49
    .line 1669
    :catch_0
    move-exception v0

    #@4a
    .line 1671
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

.method private startAlwaysOnVpn(I)Z
    .locals 5
    .param p1, "userId"    # I

    #@0
    .prologue
    .line 3389
    iget-object v2, p0, Lcom/android/server/ConnectivityService;->mVpns:Landroid/util/SparseArray;

    #@2
    monitor-enter v2

    #@3
    .line 3390
    :try_start_0
    iget-object v1, p0, Lcom/android/server/ConnectivityService;->mVpns:Landroid/util/SparseArray;

    #@5
    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    #@8
    move-result-object v0

    #@9
    check-cast v0, Lcom/android/server/connectivity/Vpn;

    #@b
    .line 3391
    .local v0, "vpn":Lcom/android/server/connectivity/Vpn;
    if-nez v0, :cond_0

    #@d
    .line 3394
    const-string/jumbo v1, "ConnectivityService"

    #@10
    new-instance v3, Ljava/lang/StringBuilder;

    #@12
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@15
    const-string/jumbo v4, "User "

    #@18
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1b
    move-result-object v3

    #@1c
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@1f
    move-result-object v3

    #@20
    const-string/jumbo v4, " has no Vpn configuration"

    #@23
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@26
    move-result-object v3

    #@27
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2a
    move-result-object v3

    #@2b
    invoke-static {v1, v3}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@2e
    .line 3395
    const/4 v1, 0x0

    #@2f
    monitor-exit v2

    #@30
    return v1

    #@31
    .line 3398
    :cond_0
    :try_start_1
    invoke-virtual {v0}, Lcom/android/server/connectivity/Vpn;->startAlwaysOnVpn()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@34
    move-result v1

    #@35
    monitor-exit v2

    #@36
    return v1

    #@37
    .line 3389
    .end local v0    # "vpn":Lcom/android/server/connectivity/Vpn;
    :catchall_0
    move-exception v1

    #@38
    monitor-exit v2

    #@39
    throw v1
.end method

.method private teardownUnneededNetwork(Lcom/android/server/connectivity/NetworkAgentInfo;)V
    .locals 4
    .param p1, "nai"    # Lcom/android/server/connectivity/NetworkAgentInfo;

    #@0
    .prologue
    .line 4548
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
    .line 4549
    iget-object v2, p1, Lcom/android/server/connectivity/NetworkAgentInfo;->networkRequests:Landroid/util/SparseArray;

    #@b
    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    #@e
    move-result-object v1

    #@f
    check-cast v1, Landroid/net/NetworkRequest;

    #@11
    .line 4551
    .local v1, "nr":Landroid/net/NetworkRequest;
    invoke-direct {p0, v1}, Lcom/android/server/ConnectivityService;->isRequest(Landroid/net/NetworkRequest;)Z

    #@14
    move-result v2

    #@15
    if-nez v2, :cond_0

    #@17
    .line 4548
    add-int/lit8 v0, v0, 0x1

    #@19
    goto :goto_0

    #@1a
    .line 4552
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
    .line 4555
    .end local v1    # "nr":Landroid/net/NetworkRequest;
    :cond_1
    iget-object v2, p1, Lcom/android/server/connectivity/NetworkAgentInfo;->asyncChannel:Lcom/android/internal/util/AsyncChannel;

    #@33
    invoke-virtual {v2}, Lcom/android/internal/util/AsyncChannel;->disconnect()V

    #@36
    .line 4547
    return-void
.end method

.method private throwIfLockdownEnabled()V
    .locals 2

    #@0
    .prologue
    .line 3376
    iget-boolean v0, p0, Lcom/android/server/ConnectivityService;->mLockdownEnabled:Z

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 3377
    new-instance v0, Ljava/lang/IllegalStateException;

    #@6
    const-string/jumbo v1, "Unavailable in lockdown mode"

    #@9
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@c
    throw v0

    #@d
    .line 3375
    :cond_0
    return-void
.end method

.method private unlinger(Lcom/android/server/connectivity/NetworkAgentInfo;)V
    .locals 2
    .param p1, "nai"    # Lcom/android/server/connectivity/NetworkAgentInfo;

    #@0
    .prologue
    .line 2193
    iget-object v0, p1, Lcom/android/server/connectivity/NetworkAgentInfo;->networkLingered:Ljava/util/ArrayList;

    #@2
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    #@5
    .line 2194
    iget-boolean v0, p1, Lcom/android/server/connectivity/NetworkAgentInfo;->lingering:Z

    #@7
    if-nez v0, :cond_0

    #@9
    return-void

    #@a
    .line 2195
    :cond_0
    const/4 v0, 0x0

    #@b
    iput-boolean v0, p1, Lcom/android/server/connectivity/NetworkAgentInfo;->lingering:Z

    #@d
    .line 2196
    iget-object v0, p1, Lcom/android/server/connectivity/NetworkAgentInfo;->network:Landroid/net/Network;

    #@f
    iget v0, v0, Landroid/net/Network;->netId:I

    #@11
    const/4 v1, 0x6

    #@12
    invoke-static {v0, v1}, Landroid/net/metrics/NetworkEvent;->logEvent(II)V

    #@15
    .line 2198
    iget-object v0, p1, Lcom/android/server/connectivity/NetworkAgentInfo;->networkMonitor:Lcom/android/server/connectivity/NetworkMonitor;

    #@17
    const v1, 0x82001

    #@1a
    invoke-virtual {v0, v1}, Lcom/android/server/connectivity/NetworkMonitor;->sendMessage(I)V

    #@1d
    .line 2192
    return-void
.end method

.method private unneeded(Lcom/android/server/connectivity/NetworkAgentInfo;)Z
    .locals 5
    .param p1, "nai"    # Lcom/android/server/connectivity/NetworkAgentInfo;

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 2375
    iget-boolean v2, p1, Lcom/android/server/connectivity/NetworkAgentInfo;->everConnected:Z

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
    .line 2376
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
    .line 2379
    .local v0, "nri":Lcom/android/server/ConnectivityService$NetworkRequestInfo;
    invoke-virtual {v0}, Lcom/android/server/ConnectivityService$NetworkRequestInfo;->isRequest()Z

    #@29
    move-result v2

    #@2a
    if-eqz v2, :cond_2

    #@2c
    iget-object v2, v0, Lcom/android/server/ConnectivityService$NetworkRequestInfo;->request:Landroid/net/NetworkRequest;

    #@2e
    invoke-virtual {p1, v2}, Lcom/android/server/connectivity/NetworkAgentInfo;->satisfies(Landroid/net/NetworkRequest;)Z

    #@31
    move-result v2

    #@32
    if-eqz v2, :cond_2

    #@34
    .line 2380
    iget-object v2, p1, Lcom/android/server/connectivity/NetworkAgentInfo;->networkRequests:Landroid/util/SparseArray;

    #@36
    iget-object v3, v0, Lcom/android/server/ConnectivityService$NetworkRequestInfo;->request:Landroid/net/NetworkRequest;

    #@38
    iget v3, v3, Landroid/net/NetworkRequest;->requestId:I

    #@3a
    invoke-virtual {v2, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    #@3d
    move-result-object v2

    #@3e
    if-nez v2, :cond_3

    #@40
    .line 2388
    iget-object v2, p0, Lcom/android/server/ConnectivityService;->mNetworkForRequestId:Landroid/util/SparseArray;

    #@42
    iget-object v3, v0, Lcom/android/server/ConnectivityService$NetworkRequestInfo;->request:Landroid/net/NetworkRequest;

    #@44
    iget v3, v3, Landroid/net/NetworkRequest;->requestId:I

    #@46
    invoke-virtual {v2, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    #@49
    move-result-object v2

    #@4a
    check-cast v2, Lcom/android/server/connectivity/NetworkAgentInfo;

    #@4c
    invoke-virtual {v2}, Lcom/android/server/connectivity/NetworkAgentInfo;->getCurrentScore()I

    #@4f
    move-result v2

    #@50
    .line 2389
    invoke-virtual {p1}, Lcom/android/server/connectivity/NetworkAgentInfo;->getCurrentScoreAsValidated()I

    #@53
    move-result v3

    #@54
    .line 2388
    if-ge v2, v3, :cond_2

    #@56
    .line 2390
    :cond_3
    return v4

    #@57
    .line 2393
    .end local v0    # "nri":Lcom/android/server/ConnectivityService$NetworkRequestInfo;
    :cond_4
    const/4 v2, 0x1

    #@58
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
    .line 4423
    new-instance v1, Landroid/net/NetworkCapabilities;

    #@8
    invoke-direct {v1, p2}, Landroid/net/NetworkCapabilities;-><init>(Landroid/net/NetworkCapabilities;)V

    #@b
    .line 4424
    .end local p2    # "networkCapabilities":Landroid/net/NetworkCapabilities;
    .local v1, "networkCapabilities":Landroid/net/NetworkCapabilities;
    iget-boolean v3, p1, Lcom/android/server/connectivity/NetworkAgentInfo;->lastValidated:Z

    #@d
    if-eqz v3, :cond_2

    #@f
    .line 4425
    invoke-virtual {v1, v5}, Landroid/net/NetworkCapabilities;->addCapability(I)Landroid/net/NetworkCapabilities;

    #@12
    .line 4429
    :goto_0
    iget-boolean v3, p1, Lcom/android/server/connectivity/NetworkAgentInfo;->lastCaptivePortalDetected:Z

    #@14
    if-eqz v3, :cond_3

    #@16
    .line 4430
    invoke-virtual {v1, v6}, Landroid/net/NetworkCapabilities;->addCapability(I)Landroid/net/NetworkCapabilities;

    #@19
    .line 4434
    :goto_1
    iget-object v3, p1, Lcom/android/server/connectivity/NetworkAgentInfo;->networkCapabilities:Landroid/net/NetworkCapabilities;

    #@1b
    invoke-static {v3, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    #@1e
    move-result v3

    #@1f
    if-nez v3, :cond_1

    #@21
    .line 4435
    invoke-virtual {p1}, Lcom/android/server/connectivity/NetworkAgentInfo;->getCurrentScore()I

    #@24
    move-result v2

    #@25
    .line 4436
    .local v2, "oldScore":I
    iget-object v3, p1, Lcom/android/server/connectivity/NetworkAgentInfo;->networkCapabilities:Landroid/net/NetworkCapabilities;

    #@27
    invoke-virtual {v3, v4}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    #@2a
    move-result v3

    #@2b
    .line 4437
    invoke-virtual {v1, v4}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    #@2e
    move-result v4

    #@2f
    .line 4436
    if-eq v3, v4, :cond_0

    #@31
    .line 4439
    :try_start_0
    iget-object v4, p0, Lcom/android/server/ConnectivityService;->mNetd:Landroid/os/INetworkManagementService;

    #@33
    iget-object v3, p1, Lcom/android/server/connectivity/NetworkAgentInfo;->network:Landroid/net/Network;

    #@35
    iget v5, v3, Landroid/net/Network;->netId:I

    #@37
    .line 4440
    const/16 v3, 0xd

    #@39
    invoke-virtual {v1, v3}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    #@3c
    move-result v3

    #@3d
    if-eqz v3, :cond_4

    #@3f
    .line 4441
    const/4 v3, 0x0

    #@40
    .line 4439
    :goto_2
    invoke-interface {v4, v5, v3}, Landroid/os/INetworkManagementService;->setNetworkPermission(ILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@43
    .line 4446
    :cond_0
    :goto_3
    monitor-enter p1

    #@44
    .line 4447
    :try_start_1
    iput-object v1, p1, Lcom/android/server/connectivity/NetworkAgentInfo;->networkCapabilities:Landroid/net/NetworkCapabilities;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@46
    monitor-exit p1

    #@47
    .line 4449
    invoke-direct {p0, p1, v2}, Lcom/android/server/ConnectivityService;->rematchAllNetworksAndRequests(Lcom/android/server/connectivity/NetworkAgentInfo;I)V

    #@4a
    .line 4450
    const v3, 0x80006

    #@4d
    invoke-virtual {p0, p1, v3}, Lcom/android/server/ConnectivityService;->notifyNetworkCallbacks(Lcom/android/server/connectivity/NetworkAgentInfo;I)V

    #@50
    .line 4421
    .end local v2    # "oldScore":I
    :cond_1
    return-void

    #@51
    .line 4427
    :cond_2
    invoke-virtual {v1, v5}, Landroid/net/NetworkCapabilities;->removeCapability(I)Landroid/net/NetworkCapabilities;

    #@54
    goto :goto_0

    #@55
    .line 4432
    :cond_3
    invoke-virtual {v1, v6}, Landroid/net/NetworkCapabilities;->removeCapability(I)Landroid/net/NetworkCapabilities;

    #@58
    goto :goto_1

    #@59
    .line 4441
    .restart local v2    # "oldScore":I
    :cond_4
    :try_start_2
    const-string/jumbo v3, "SYSTEM"
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    #@5c
    goto :goto_2

    #@5d
    .line 4442
    :catch_0
    move-exception v0

    #@5e
    .line 4443
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
    .line 4446
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
    .line 4293
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
    .line 4294
    :goto_0
    invoke-static {p3}, Lcom/android/server/connectivity/Nat464Xlat;->requiresClat(Lcom/android/server/connectivity/NetworkAgentInfo;)Z

    #@d
    move-result v0

    #@e
    .line 4296
    .local v0, "shouldRunClat":Z
    if-nez v1, :cond_2

    #@10
    if-eqz v0, :cond_2

    #@12
    .line 4297
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
    .line 4298
    iget-object v2, p3, Lcom/android/server/connectivity/NetworkAgentInfo;->clatd:Lcom/android/server/connectivity/Nat464Xlat;

    #@21
    invoke-virtual {v2}, Lcom/android/server/connectivity/Nat464Xlat;->start()V

    #@24
    .line 4292
    :cond_0
    :goto_1
    return-void

    #@25
    .line 4293
    .end local v0    # "shouldRunClat":Z
    :cond_1
    const/4 v1, 0x0

    #@26
    .local v1, "wasRunningClat":Z
    goto :goto_0

    #@27
    .line 4299
    .end local v1    # "wasRunningClat":Z
    .restart local v0    # "shouldRunClat":Z
    :cond_2
    if-eqz v1, :cond_0

    #@29
    if-nez v0, :cond_0

    #@2b
    .line 4300
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
    .line 4379
    if-eqz p2, :cond_0

    #@2
    invoke-virtual {p1, p2}, Landroid/net/LinkProperties;->isIdenticalDnses(Landroid/net/LinkProperties;)Z

    #@5
    move-result v3

    #@6
    if-eqz v3, :cond_0

    #@8
    .line 4380
    return-void

    #@9
    .line 4383
    :cond_0
    invoke-virtual {p1}, Landroid/net/LinkProperties;->getDnsServers()Ljava/util/List;

    #@c
    move-result-object v1

    #@d
    .line 4384
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
    .line 4386
    :try_start_0
    iget-object v3, p0, Lcom/android/server/ConnectivityService;->mNetd:Landroid/os/INetworkManagementService;

    #@31
    .line 4387
    invoke-static {v1}, Landroid/net/NetworkUtils;->makeStrings(Ljava/util/Collection;)[Ljava/lang/String;

    #@34
    move-result-object v4

    #@35
    invoke-virtual {p1}, Landroid/net/LinkProperties;->getDomains()Ljava/lang/String;

    #@38
    move-result-object v5

    #@39
    .line 4386
    invoke-interface {v3, p3, v4, v5}, Landroid/os/INetworkManagementService;->setDnsConfigurationForNetwork(I[Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    #@3c
    .line 4391
    :goto_0
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->getDefaultNetwork()Lcom/android/server/connectivity/NetworkAgentInfo;

    #@3f
    move-result-object v0

    #@40
    .line 4392
    .local v0, "defaultNai":Lcom/android/server/connectivity/NetworkAgentInfo;
    if-eqz v0, :cond_1

    #@42
    iget-object v3, v0, Lcom/android/server/connectivity/NetworkAgentInfo;->network:Landroid/net/Network;

    #@44
    iget v3, v3, Landroid/net/Network;->netId:I

    #@46
    if-ne v3, p3, :cond_1

    #@48
    .line 4393
    invoke-direct {p0, v1}, Lcom/android/server/ConnectivityService;->setDefaultDnsSystemProperties(Ljava/util/Collection;)V

    #@4b
    .line 4395
    :cond_1
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->flushVmDnsCache()V

    #@4e
    .line 4378
    return-void

    #@4f
    .line 4388
    .end local v0    # "defaultNai":Lcom/android/server/connectivity/NetworkAgentInfo;
    :catch_0
    move-exception v2

    #@50
    .line 4389
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
    .line 4864
    iget-boolean v1, p1, Lcom/android/server/connectivity/NetworkAgentInfo;->everValidated:Z

    #@2
    if-nez v1, :cond_0

    #@4
    return-void

    #@5
    .line 4867
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/server/ConnectivityService;->isDefaultNetwork(Lcom/android/server/connectivity/NetworkAgentInfo;)Z

    #@8
    move-result v1

    #@9
    if-nez v1, :cond_1

    #@b
    return-void

    #@c
    .line 4869
    :cond_1
    iget-boolean v1, p1, Lcom/android/server/connectivity/NetworkAgentInfo;->lastValidated:Z

    #@e
    if-eqz v1, :cond_2

    #@10
    const/16 v0, 0x64

    #@12
    .line 4871
    .local v0, "newInetCondition":I
    :goto_0
    iget v1, p0, Lcom/android/server/ConnectivityService;->mDefaultInetConditionPublished:I

    #@14
    if-ne v0, v1, :cond_3

    #@16
    return-void

    #@17
    .line 4869
    .end local v0    # "newInetCondition":I
    :cond_2
    const/4 v0, 0x0

    #@18
    .restart local v0    # "newInetCondition":I
    goto :goto_0

    #@19
    .line 4873
    :cond_3
    iput v0, p0, Lcom/android/server/ConnectivityService;->mDefaultInetConditionPublished:I

    #@1b
    .line 4874
    iget-object v1, p1, Lcom/android/server/connectivity/NetworkAgentInfo;->networkInfo:Landroid/net/NetworkInfo;

    #@1d
    invoke-direct {p0, v1}, Lcom/android/server/ConnectivityService;->sendInetConditionBroadcast(Landroid/net/NetworkInfo;)V

    #@20
    .line 4862
    return-void
.end method

.method private updateInterfaces(Landroid/net/LinkProperties;Landroid/net/LinkProperties;I)V
    .locals 6
    .param p1, "newLp"    # Landroid/net/LinkProperties;
    .param p2, "oldLp"    # Landroid/net/LinkProperties;
    .param p3, "netId"    # I

    #@0
    .prologue
    .line 4305
    new-instance v3, Landroid/net/LinkProperties$CompareResult;

    #@2
    invoke-direct {v3}, Landroid/net/LinkProperties$CompareResult;-><init>()V

    #@5
    .line 4306
    .local v3, "interfaceDiff":Landroid/net/LinkProperties$CompareResult;, "Landroid/net/LinkProperties$CompareResult<Ljava/lang/String;>;"
    if-eqz p2, :cond_1

    #@7
    .line 4307
    invoke-virtual {p2, p1}, Landroid/net/LinkProperties;->compareAllInterfaceNames(Landroid/net/LinkProperties;)Landroid/net/LinkProperties$CompareResult;

    #@a
    move-result-object v3

    #@b
    .line 4311
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
    .line 4313
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
    .line 4314
    iget-object v4, p0, Lcom/android/server/ConnectivityService;->mNetd:Landroid/os/INetworkManagementService;

    #@41
    invoke-interface {v4, v1, p3}, Landroid/os/INetworkManagementService;->addInterfaceToNetwork(Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    #@44
    goto :goto_1

    #@45
    .line 4315
    :catch_0
    move-exception v0

    #@46
    .line 4316
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
    .line 4308
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v1    # "iface":Ljava/lang/String;
    .end local v2    # "iface$iterator":Ljava/util/Iterator;
    :cond_1
    if-eqz p1, :cond_0

    #@60
    .line 4309
    invoke-virtual {p1}, Landroid/net/LinkProperties;->getAllInterfaceNames()Ljava/util/List;

    #@63
    move-result-object v4

    #@64
    iput-object v4, v3, Landroid/net/LinkProperties$CompareResult;->added:Ljava/util/List;

    #@66
    goto :goto_0

    #@67
    .line 4319
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
    .line 4321
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
    .line 4322
    iget-object v4, p0, Lcom/android/server/ConnectivityService;->mNetd:Landroid/os/INetworkManagementService;

    #@9d
    invoke-interface {v4, v1, p3}, Landroid/os/INetworkManagementService;->removeInterfaceFromNetwork(Ljava/lang/String;I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    #@a0
    goto :goto_2

    #@a1
    .line 4323
    :catch_1
    move-exception v0

    #@a2
    .line 4324
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
    .line 4304
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v1    # "iface":Ljava/lang/String;
    :cond_3
    return-void
.end method

.method private updateLinkProperties(Lcom/android/server/connectivity/NetworkAgentInfo;Landroid/net/LinkProperties;)V
    .locals 3
    .param p1, "networkAgent"    # Lcom/android/server/connectivity/NetworkAgentInfo;
    .param p2, "oldLp"    # Landroid/net/LinkProperties;

    #@0
    .prologue
    .line 4257
    iget-object v1, p1, Lcom/android/server/connectivity/NetworkAgentInfo;->linkProperties:Landroid/net/LinkProperties;

    #@2
    .line 4258
    .local v1, "newLp":Landroid/net/LinkProperties;
    iget-object v2, p1, Lcom/android/server/connectivity/NetworkAgentInfo;->network:Landroid/net/Network;

    #@4
    iget v0, v2, Landroid/net/Network;->netId:I

    #@6
    .line 4262
    .local v0, "netId":I
    iget-object v2, p1, Lcom/android/server/connectivity/NetworkAgentInfo;->clatd:Lcom/android/server/connectivity/Nat464Xlat;

    #@8
    if-eqz v2, :cond_0

    #@a
    .line 4263
    iget-object v2, p1, Lcom/android/server/connectivity/NetworkAgentInfo;->clatd:Lcom/android/server/connectivity/Nat464Xlat;

    #@c
    invoke-virtual {v2, p2}, Lcom/android/server/connectivity/Nat464Xlat;->fixupLinkProperties(Landroid/net/LinkProperties;)V

    #@f
    .line 4266
    :cond_0
    invoke-direct {p0, v1, p2, v0}, Lcom/android/server/ConnectivityService;->updateInterfaces(Landroid/net/LinkProperties;Landroid/net/LinkProperties;I)V

    #@12
    .line 4267
    invoke-direct {p0, v1, p2}, Lcom/android/server/ConnectivityService;->updateMtu(Landroid/net/LinkProperties;Landroid/net/LinkProperties;)V

    #@15
    .line 4272
    invoke-direct {p0, p1}, Lcom/android/server/ConnectivityService;->updateTcpBufferSizes(Lcom/android/server/connectivity/NetworkAgentInfo;)V

    #@18
    .line 4274
    invoke-direct {p0, v1, p2, v0}, Lcom/android/server/ConnectivityService;->updateRoutes(Landroid/net/LinkProperties;Landroid/net/LinkProperties;I)Z

    #@1b
    .line 4275
    invoke-direct {p0, v1, p2, v0}, Lcom/android/server/ConnectivityService;->updateDnses(Landroid/net/LinkProperties;Landroid/net/LinkProperties;I)V

    #@1e
    .line 4277
    invoke-direct {p0, v1, p2, p1}, Lcom/android/server/ConnectivityService;->updateClat(Landroid/net/LinkProperties;Landroid/net/LinkProperties;Lcom/android/server/connectivity/NetworkAgentInfo;)V

    #@21
    .line 4278
    invoke-direct {p0, p1}, Lcom/android/server/ConnectivityService;->isDefaultNetwork(Lcom/android/server/connectivity/NetworkAgentInfo;)Z

    #@24
    move-result v2

    #@25
    if-eqz v2, :cond_2

    #@27
    .line 4279
    invoke-virtual {v1}, Landroid/net/LinkProperties;->getHttpProxy()Landroid/net/ProxyInfo;

    #@2a
    move-result-object v2

    #@2b
    invoke-direct {p0, v2}, Lcom/android/server/ConnectivityService;->handleApplyDefaultProxy(Landroid/net/ProxyInfo;)V

    #@2e
    .line 4284
    :goto_0
    invoke-static {v1, p2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    #@31
    move-result v2

    #@32
    if-nez v2, :cond_1

    #@34
    .line 4285
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->notifyIfacesChangedForNetworkStats()V

    #@37
    .line 4286
    const v2, 0x80007

    #@3a
    invoke-virtual {p0, p1, v2}, Lcom/android/server/ConnectivityService;->notifyNetworkCallbacks(Lcom/android/server/connectivity/NetworkAgentInfo;I)V

    #@3d
    .line 4289
    :cond_1
    iget-object v2, p0, Lcom/android/server/ConnectivityService;->mKeepaliveTracker:Lcom/android/server/connectivity/KeepaliveTracker;

    #@3f
    invoke-virtual {v2, p1}, Lcom/android/server/connectivity/KeepaliveTracker;->handleCheckKeepalivesStillValid(Lcom/android/server/connectivity/NetworkAgentInfo;)V

    #@42
    .line 4256
    return-void

    #@43
    .line 4281
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
    .line 1699
    invoke-virtual {p1}, Landroid/net/LinkProperties;->getInterfaceName()Ljava/lang/String;

    #@3
    move-result-object v1

    #@4
    .line 1700
    .local v1, "iface":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/net/LinkProperties;->getMtu()I

    #@7
    move-result v2

    #@8
    .line 1701
    .local v2, "mtu":I
    if-eqz p2, :cond_0

    #@a
    invoke-virtual {p1, p2}, Landroid/net/LinkProperties;->isIdenticalMtu(Landroid/net/LinkProperties;)Z

    #@d
    move-result v3

    #@e
    if-eqz v3, :cond_0

    #@10
    .line 1703
    return-void

    #@11
    .line 1706
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
    .line 1707
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
    .line 1708
    :cond_1
    return-void

    #@40
    .line 1712
    :cond_2
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@43
    move-result v3

    #@44
    if-eqz v3, :cond_3

    #@46
    .line 1713
    const-string/jumbo v3, "Setting MTU size with null iface."

    #@49
    invoke-static {v3}, Lcom/android/server/ConnectivityService;->loge(Ljava/lang/String;)V

    #@4c
    .line 1714
    return-void

    #@4d
    .line 1719
    :cond_3
    :try_start_0
    iget-object v3, p0, Lcom/android/server/ConnectivityService;->mNetd:Landroid/os/INetworkManagementService;

    #@4f
    invoke-interface {v3, v1, v2}, Landroid/os/INetworkManagementService;->setMtu(Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    #@52
    .line 1698
    :goto_0
    return-void

    #@53
    .line 1720
    :catch_0
    move-exception v0

    #@54
    .line 1721
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v3, "ConnectivityService"

    #@57
    new-instance v4, Ljava/lang/StringBuilder;

    #@59
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@5c
    const-string/jumbo v5, "exception in setMtu()"

    #@5f
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@62
    move-result-object v4

    #@63
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@66
    move-result-object v4

    #@67
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@6a
    move-result-object v4

    #@6b
    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@6e
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
    .line 4888
    invoke-virtual {p2}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    #@6
    move-result-object v3

    #@7
    .line 4889
    .local v3, "state":Landroid/net/NetworkInfo$State;
    const/4 v1, 0x0

    #@8
    .line 4890
    .local v1, "oldInfo":Landroid/net/NetworkInfo;
    invoke-virtual {p1}, Lcom/android/server/connectivity/NetworkAgentInfo;->getCurrentScore()I

    #@b
    move-result v2

    #@c
    .line 4891
    .local v2, "oldScore":I
    monitor-enter p1

    #@d
    .line 4892
    :try_start_0
    iget-object v1, p1, Lcom/android/server/connectivity/NetworkAgentInfo;->networkInfo:Landroid/net/NetworkInfo;

    #@f
    .line 4893
    .local v1, "oldInfo":Landroid/net/NetworkInfo;
    iput-object p2, p1, Lcom/android/server/connectivity/NetworkAgentInfo;->networkInfo:Landroid/net/NetworkInfo;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@11
    monitor-exit p1

    #@12
    .line 4895
    invoke-direct {p0, p1}, Lcom/android/server/ConnectivityService;->notifyLockdownVpn(Lcom/android/server/connectivity/NetworkAgentInfo;)V

    #@15
    .line 4897
    if-eqz v1, :cond_1

    #@17
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    #@1a
    move-result-object v4

    #@1b
    if-ne v4, v3, :cond_1

    #@1d
    .line 4898
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isRoaming()Z

    #@20
    move-result v4

    #@21
    invoke-virtual {p2}, Landroid/net/NetworkInfo;->isRoaming()Z

    #@24
    move-result v5

    #@25
    if-eq v4, v5, :cond_0

    #@27
    .line 4900
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->notifyIfacesChangedForNetworkStats()V

    #@2a
    .line 4903
    :cond_0
    return-void

    #@2b
    .line 4891
    .end local v1    # "oldInfo":Landroid/net/NetworkInfo;
    :catchall_0
    move-exception v4

    #@2c
    monitor-exit p1

    #@2d
    throw v4

    #@2e
    .line 4906
    .restart local v1    # "oldInfo":Landroid/net/NetworkInfo;
    :cond_1
    new-instance v4, Ljava/lang/StringBuilder;

    #@30
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@33
    invoke-virtual {p1}, Lcom/android/server/connectivity/NetworkAgentInfo;->name()Ljava/lang/String;

    #@36
    move-result-object v8

    #@37
    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3a
    move-result-object v4

    #@3b
    const-string/jumbo v8, " EVENT_NETWORK_INFO_CHANGED, going from "

    #@3e
    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@41
    move-result-object v8

    #@42
    .line 4907
    if-nez v1, :cond_7

    #@44
    const-string/jumbo v4, "null"

    #@47
    .line 4906
    :goto_0
    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@4a
    move-result-object v4

    #@4b
    .line 4908
    const-string/jumbo v8, " to "

    #@4e
    .line 4906
    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@51
    move-result-object v4

    #@52
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@55
    move-result-object v4

    #@56
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@59
    move-result-object v4

    #@5a
    invoke-static {v4}, Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V

    #@5d
    .line 4911
    iget-boolean v4, p1, Lcom/android/server/connectivity/NetworkAgentInfo;->created:Z

    #@5f
    if-nez v4, :cond_3

    #@61
    .line 4912
    sget-object v4, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;

    #@63
    if-eq v3, v4, :cond_2

    #@65
    .line 4913
    sget-object v4, Landroid/net/NetworkInfo$State;->CONNECTING:Landroid/net/NetworkInfo$State;

    #@67
    if-ne v3, v4, :cond_3

    #@69
    invoke-virtual {p1}, Lcom/android/server/connectivity/NetworkAgentInfo;->isVPN()Z

    #@6c
    move-result v4

    #@6d
    .line 4911
    if-eqz v4, :cond_3

    #@6f
    .line 4916
    :cond_2
    :try_start_1
    invoke-virtual {p1}, Lcom/android/server/connectivity/NetworkAgentInfo;->isVPN()Z

    #@72
    move-result v4

    #@73
    if-eqz v4, :cond_b

    #@75
    .line 4917
    iget-object v9, p0, Lcom/android/server/ConnectivityService;->mNetd:Landroid/os/INetworkManagementService;

    #@77
    iget-object v4, p1, Lcom/android/server/connectivity/NetworkAgentInfo;->network:Landroid/net/Network;

    #@79
    iget v10, v4, Landroid/net/Network;->netId:I

    #@7b
    .line 4918
    iget-object v4, p1, Lcom/android/server/connectivity/NetworkAgentInfo;->linkProperties:Landroid/net/LinkProperties;

    #@7d
    invoke-virtual {v4}, Landroid/net/LinkProperties;->getDnsServers()Ljava/util/List;

    #@80
    move-result-object v4

    #@81
    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    #@84
    move-result v4

    #@85
    if-eqz v4, :cond_8

    #@87
    move v8, v7

    #@88
    .line 4919
    :goto_1
    iget-object v4, p1, Lcom/android/server/connectivity/NetworkAgentInfo;->networkMisc:Landroid/net/NetworkMisc;

    #@8a
    if-eqz v4, :cond_9

    #@8c
    .line 4920
    iget-object v4, p1, Lcom/android/server/connectivity/NetworkAgentInfo;->networkMisc:Landroid/net/NetworkMisc;

    #@8e
    iget-boolean v4, v4, Landroid/net/NetworkMisc;->allowBypass:Z

    #@90
    if-eqz v4, :cond_a

    #@92
    move v4, v7

    #@93
    .line 4917
    :goto_2
    invoke-interface {v9, v10, v8, v4}, Landroid/os/INetworkManagementService;->createVirtualNetwork(IZZ)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    #@96
    .line 4932
    :goto_3
    iput-boolean v6, p1, Lcom/android/server/connectivity/NetworkAgentInfo;->created:Z

    #@98
    .line 4935
    :cond_3
    iget-boolean v4, p1, Lcom/android/server/connectivity/NetworkAgentInfo;->everConnected:Z

    #@9a
    if-nez v4, :cond_d

    #@9c
    sget-object v4, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;

    #@9e
    if-ne v3, v4, :cond_d

    #@a0
    .line 4936
    iput-boolean v6, p1, Lcom/android/server/connectivity/NetworkAgentInfo;->everConnected:Z

    #@a2
    .line 4938
    invoke-direct {p0, p1, v5}, Lcom/android/server/ConnectivityService;->updateLinkProperties(Lcom/android/server/connectivity/NetworkAgentInfo;Landroid/net/LinkProperties;)V

    #@a5
    .line 4939
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->notifyIfacesChangedForNetworkStats()V

    #@a8
    .line 4941
    iget-object v4, p1, Lcom/android/server/connectivity/NetworkAgentInfo;->networkMonitor:Lcom/android/server/connectivity/NetworkMonitor;

    #@aa
    const v6, 0x82001

    #@ad
    invoke-virtual {v4, v6}, Lcom/android/server/connectivity/NetworkMonitor;->sendMessage(I)V

    #@b0
    .line 4942
    invoke-direct {p0, p1}, Lcom/android/server/ConnectivityService;->scheduleUnvalidatedPrompt(Lcom/android/server/connectivity/NetworkAgentInfo;)V

    #@b3
    .line 4944
    invoke-virtual {p1}, Lcom/android/server/connectivity/NetworkAgentInfo;->isVPN()Z

    #@b6
    move-result v4

    #@b7
    if-eqz v4, :cond_5

    #@b9
    .line 4946
    iget-object v6, p0, Lcom/android/server/ConnectivityService;->mProxyLock:Ljava/lang/Object;

    #@bb
    monitor-enter v6

    #@bc
    .line 4947
    :try_start_2
    iget-boolean v4, p0, Lcom/android/server/ConnectivityService;->mDefaultProxyDisabled:Z

    #@be
    if-nez v4, :cond_4

    #@c0
    .line 4948
    const/4 v4, 0x1

    #@c1
    iput-boolean v4, p0, Lcom/android/server/ConnectivityService;->mDefaultProxyDisabled:Z

    #@c3
    .line 4949
    iget-object v4, p0, Lcom/android/server/ConnectivityService;->mGlobalProxy:Landroid/net/ProxyInfo;

    #@c5
    if-nez v4, :cond_4

    #@c7
    iget-object v4, p0, Lcom/android/server/ConnectivityService;->mDefaultProxy:Landroid/net/ProxyInfo;

    #@c9
    if-eqz v4, :cond_4

    #@cb
    .line 4950
    const/4 v4, 0x0

    #@cc
    invoke-direct {p0, v4}, Lcom/android/server/ConnectivityService;->sendProxyBroadcast(Landroid/net/ProxyInfo;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    #@cf
    :cond_4
    monitor-exit v6

    #@d0
    .line 4964
    :cond_5
    const-string/jumbo v4, "CONNECT"

    #@d3
    invoke-direct {p0, p1, v4, v5}, Lcom/android/server/ConnectivityService;->updateSignalStrengthThresholds(Lcom/android/server/connectivity/NetworkAgentInfo;Ljava/lang/String;Landroid/net/NetworkRequest;)V

    #@d6
    .line 4967
    sget-object v4, Lcom/android/server/ConnectivityService$ReapUnvalidatedNetworks;->REAP:Lcom/android/server/ConnectivityService$ReapUnvalidatedNetworks;

    #@d8
    invoke-direct {p0, p1, v4}, Lcom/android/server/ConnectivityService;->rematchNetworkAndRequests(Lcom/android/server/connectivity/NetworkAgentInfo;Lcom/android/server/ConnectivityService$ReapUnvalidatedNetworks;)V

    #@db
    .line 4970
    const v4, 0x80001

    #@de
    invoke-virtual {p0, p1, v4}, Lcom/android/server/ConnectivityService;->notifyNetworkCallbacks(Lcom/android/server/connectivity/NetworkAgentInfo;I)V

    #@e1
    .line 4887
    :cond_6
    :goto_4
    return-void

    #@e2
    .line 4907
    :cond_7
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    #@e5
    move-result-object v4

    #@e6
    goto/16 :goto_0

    #@e8
    :cond_8
    move v8, v6

    #@e9
    .line 4918
    goto :goto_1

    #@ea
    :cond_9
    move v4, v6

    #@eb
    .line 4919
    goto :goto_2

    #@ec
    :cond_a
    move v4, v6

    #@ed
    .line 4920
    goto :goto_2

    #@ee
    .line 4922
    :cond_b
    :try_start_3
    iget-object v7, p0, Lcom/android/server/ConnectivityService;->mNetd:Landroid/os/INetworkManagementService;

    #@f0
    iget-object v4, p1, Lcom/android/server/connectivity/NetworkAgentInfo;->network:Landroid/net/Network;

    #@f2
    iget v8, v4, Landroid/net/Network;->netId:I

    #@f4
    .line 4923
    iget-object v4, p1, Lcom/android/server/connectivity/NetworkAgentInfo;->networkCapabilities:Landroid/net/NetworkCapabilities;

    #@f6
    .line 4924
    const/16 v9, 0xd

    #@f8
    .line 4923
    invoke-virtual {v4, v9}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    #@fb
    move-result v4

    #@fc
    if-eqz v4, :cond_c

    #@fe
    move-object v4, v5

    #@ff
    .line 4922
    :goto_5
    invoke-interface {v7, v8, v4}, Landroid/os/INetworkManagementService;->createPhysicalNetwork(ILjava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    #@102
    goto :goto_3

    #@103
    .line 4927
    :catch_0
    move-exception v0

    #@104
    .line 4928
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
    .line 4929
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    #@122
    move-result-object v5

    #@123
    .line 4928
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
    .line 4930
    return-void

    #@12f
    .line 4925
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_c
    :try_start_4
    const-string/jumbo v4, "SYSTEM"
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    #@132
    goto :goto_5

    #@133
    .line 4946
    :catchall_1
    move-exception v4

    #@134
    monitor-exit v6

    #@135
    throw v4

    #@136
    .line 4971
    :cond_d
    sget-object v4, Landroid/net/NetworkInfo$State;->DISCONNECTED:Landroid/net/NetworkInfo$State;

    #@138
    if-ne v3, v4, :cond_f

    #@13a
    .line 4972
    iget-object v4, p1, Lcom/android/server/connectivity/NetworkAgentInfo;->asyncChannel:Lcom/android/internal/util/AsyncChannel;

    #@13c
    invoke-virtual {v4}, Lcom/android/internal/util/AsyncChannel;->disconnect()V

    #@13f
    .line 4973
    invoke-virtual {p1}, Lcom/android/server/connectivity/NetworkAgentInfo;->isVPN()Z

    #@142
    move-result v4

    #@143
    if-eqz v4, :cond_6

    #@145
    .line 4974
    iget-object v5, p0, Lcom/android/server/ConnectivityService;->mProxyLock:Ljava/lang/Object;

    #@147
    monitor-enter v5

    #@148
    .line 4975
    :try_start_5
    iget-boolean v4, p0, Lcom/android/server/ConnectivityService;->mDefaultProxyDisabled:Z

    #@14a
    if-eqz v4, :cond_e

    #@14c
    .line 4976
    const/4 v4, 0x0

    #@14d
    iput-boolean v4, p0, Lcom/android/server/ConnectivityService;->mDefaultProxyDisabled:Z

    #@14f
    .line 4977
    iget-object v4, p0, Lcom/android/server/ConnectivityService;->mGlobalProxy:Landroid/net/ProxyInfo;

    #@151
    if-nez v4, :cond_e

    #@153
    iget-object v4, p0, Lcom/android/server/ConnectivityService;->mDefaultProxy:Landroid/net/ProxyInfo;

    #@155
    if-eqz v4, :cond_e

    #@157
    .line 4978
    iget-object v4, p0, Lcom/android/server/ConnectivityService;->mDefaultProxy:Landroid/net/ProxyInfo;

    #@159
    invoke-direct {p0, v4}, Lcom/android/server/ConnectivityService;->sendProxyBroadcast(Landroid/net/ProxyInfo;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    #@15c
    :cond_e
    monitor-exit v5

    #@15d
    goto :goto_4

    #@15e
    .line 4974
    :catchall_2
    move-exception v4

    #@15f
    monitor-exit v5

    #@160
    throw v4

    #@161
    .line 4983
    :cond_f
    if-eqz v1, :cond_11

    #@163
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    #@166
    move-result-object v4

    #@167
    sget-object v5, Landroid/net/NetworkInfo$State;->SUSPENDED:Landroid/net/NetworkInfo$State;

    #@169
    if-ne v4, v5, :cond_11

    #@16b
    .line 4986
    :goto_6
    invoke-virtual {p1}, Lcom/android/server/connectivity/NetworkAgentInfo;->getCurrentScore()I

    #@16e
    move-result v4

    #@16f
    if-eq v4, v2, :cond_10

    #@171
    .line 4987
    invoke-direct {p0, p1, v2}, Lcom/android/server/ConnectivityService;->rematchAllNetworksAndRequests(Lcom/android/server/connectivity/NetworkAgentInfo;I)V

    #@174
    .line 4989
    :cond_10
    sget-object v4, Landroid/net/NetworkInfo$State;->SUSPENDED:Landroid/net/NetworkInfo$State;

    #@176
    if-ne v3, v4, :cond_12

    #@178
    .line 4990
    const v4, 0x8000b

    #@17b
    .line 4989
    :goto_7
    invoke-virtual {p0, p1, v4}, Lcom/android/server/ConnectivityService;->notifyNetworkCallbacks(Lcom/android/server/connectivity/NetworkAgentInfo;I)V

    #@17e
    .line 4992
    iget-object v4, p0, Lcom/android/server/ConnectivityService;->mLegacyTypeTracker:Lcom/android/server/ConnectivityService$LegacyTypeTracker;

    #@180
    invoke-virtual {v4, p1}, Lcom/android/server/ConnectivityService$LegacyTypeTracker;->update(Lcom/android/server/connectivity/NetworkAgentInfo;)V

    #@183
    goto/16 :goto_4

    #@185
    .line 4984
    :cond_11
    sget-object v4, Landroid/net/NetworkInfo$State;->SUSPENDED:Landroid/net/NetworkInfo$State;

    #@187
    if-ne v3, v4, :cond_6

    #@189
    goto :goto_6

    #@18a
    .line 4991
    :cond_12
    const v4, 0x8000c

    #@18d
    goto :goto_7
.end method

.method private updateNetworkScore(Lcom/android/server/connectivity/NetworkAgentInfo;I)V
    .locals 3
    .param p1, "nai"    # Lcom/android/server/connectivity/NetworkAgentInfo;
    .param p2, "score"    # I

    #@0
    .prologue
    .line 4998
    if-gez p2, :cond_0

    #@2
    .line 4999
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
    .line 5000
    const-string/jumbo v2, ").  Bumping score to min of 0"

    #@24
    .line 4999
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
    .line 5001
    const/4 p2, 0x0

    #@30
    .line 5004
    :cond_0
    invoke-virtual {p1}, Lcom/android/server/connectivity/NetworkAgentInfo;->getCurrentScore()I

    #@33
    move-result v0

    #@34
    .line 5005
    .local v0, "oldScore":I
    invoke-virtual {p1, p2}, Lcom/android/server/connectivity/NetworkAgentInfo;->setCurrentScore(I)V

    #@37
    .line 5007
    invoke-direct {p0, p1, v0}, Lcom/android/server/ConnectivityService;->rematchAllNetworksAndRequests(Lcom/android/server/connectivity/NetworkAgentInfo;I)V

    #@3a
    .line 5009
    invoke-direct {p0, p1}, Lcom/android/server/ConnectivityService;->sendUpdatedScoreToFactories(Lcom/android/server/connectivity/NetworkAgentInfo;)V

    #@3d
    .line 4996
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
    .line 3048
    if-nez p1, :cond_1

    #@3
    const/4 v0, 0x0

    #@4
    .line 3049
    :goto_0
    if-nez p2, :cond_2

    #@6
    .line 3051
    .local v1, "oldProxyInfo":Landroid/net/ProxyInfo;
    :goto_1
    invoke-direct {p0, v0, v1}, Lcom/android/server/ConnectivityService;->proxyInfoEqual(Landroid/net/ProxyInfo;Landroid/net/ProxyInfo;)Z

    #@9
    move-result v2

    #@a
    if-nez v2, :cond_0

    #@c
    .line 3052
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->getDefaultProxy()Landroid/net/ProxyInfo;

    #@f
    move-result-object v2

    #@10
    invoke-direct {p0, v2}, Lcom/android/server/ConnectivityService;->sendProxyBroadcast(Landroid/net/ProxyInfo;)V

    #@13
    .line 3047
    :cond_0
    return-void

    #@14
    .line 3048
    .end local v1    # "oldProxyInfo":Landroid/net/ProxyInfo;
    :cond_1
    invoke-virtual {p1}, Landroid/net/LinkProperties;->getHttpProxy()Landroid/net/ProxyInfo;

    #@17
    move-result-object v0

    #@18
    .local v0, "newProxyInfo":Landroid/net/ProxyInfo;
    goto :goto_0

    #@19
    .line 3049
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
    .line 4334
    new-instance v3, Landroid/net/LinkProperties$CompareResult;

    #@3
    invoke-direct {v3}, Landroid/net/LinkProperties$CompareResult;-><init>()V

    #@6
    .line 4335
    .local v3, "routeDiff":Landroid/net/LinkProperties$CompareResult;, "Landroid/net/LinkProperties$CompareResult<Landroid/net/RouteInfo;>;"
    if-eqz p2, :cond_2

    #@8
    .line 4336
    invoke-virtual {p2, p1}, Landroid/net/LinkProperties;->compareAllRoutes(Landroid/net/LinkProperties;)Landroid/net/LinkProperties$CompareResult;

    #@b
    move-result-object v3

    #@c
    .line 4344
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
    .line 4345
    .local v1, "route":Landroid/net/RouteInfo;
    invoke-virtual {v1}, Landroid/net/RouteInfo;->hasGateway()Z

    #@21
    move-result v5

    #@22
    if-nez v5, :cond_1

    #@24
    .line 4348
    :try_start_0
    iget-object v5, p0, Lcom/android/server/ConnectivityService;->mNetd:Landroid/os/INetworkManagementService;

    #@26
    invoke-interface {v5, p3, v1}, Landroid/os/INetworkManagementService;->addRoute(ILandroid/net/RouteInfo;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    #@29
    goto :goto_1

    #@2a
    .line 4349
    :catch_0
    move-exception v0

    #@2b
    .line 4350
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
    .line 4351
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
    .line 4337
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v1    # "route":Landroid/net/RouteInfo;
    .end local v2    # "route$iterator":Ljava/util/Iterator;
    :cond_2
    if-eqz p1, :cond_0

    #@51
    .line 4338
    invoke-virtual {p1}, Landroid/net/LinkProperties;->getAllRoutes()Ljava/util/List;

    #@54
    move-result-object v5

    #@55
    iput-object v5, v3, Landroid/net/LinkProperties$CompareResult;->added:Ljava/util/List;

    #@57
    goto :goto_0

    #@58
    .line 4355
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
    .line 4356
    .restart local v1    # "route":Landroid/net/RouteInfo;
    invoke-virtual {v1}, Landroid/net/RouteInfo;->hasGateway()Z

    #@6d
    move-result v5

    #@6e
    if-eqz v5, :cond_4

    #@70
    .line 4359
    :try_start_1
    iget-object v5, p0, Lcom/android/server/ConnectivityService;->mNetd:Landroid/os/INetworkManagementService;

    #@72
    invoke-interface {v5, p3, v1}, Landroid/os/INetworkManagementService;->addRoute(ILandroid/net/RouteInfo;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    #@75
    goto :goto_2

    #@76
    .line 4360
    :catch_1
    move-exception v0

    #@77
    .line 4361
    .restart local v0    # "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Landroid/net/RouteInfo;->getGateway()Ljava/net/InetAddress;

    #@7a
    move-result-object v5

    #@7b
    instance-of v5, v5, Ljava/net/Inet4Address;

    #@7d
    if-eqz v5, :cond_4

    #@7f
    .line 4362
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
    .line 4367
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
    .line 4370
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
    .line 4371
    :catch_2
    move-exception v0

    #@b0
    .line 4372
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
    .line 4375
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
    .line 3946
    invoke-direct {p0, p1}, Lcom/android/server/ConnectivityService;->getSignalStrengthThresholds(Lcom/android/server/connectivity/NetworkAgentInfo;)Ljava/util/ArrayList;

    #@4
    move-result-object v2

    #@5
    .line 3947
    .local v2, "thresholdsArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    new-instance v1, Landroid/os/Bundle;

    #@7
    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    #@a
    .line 3948
    .local v1, "thresholds":Landroid/os/Bundle;
    const-string/jumbo v3, "thresholds"

    #@d
    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putIntegerArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    #@10
    .line 3950
    const-string/jumbo v3, "CONNECT"

    #@13
    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@16
    move-result v3

    #@17
    if-eqz v3, :cond_0

    #@19
    .line 3961
    :goto_0
    iget-object v3, p1, Lcom/android/server/connectivity/NetworkAgentInfo;->asyncChannel:Lcom/android/internal/util/AsyncChannel;

    #@1b
    .line 3962
    const v4, 0x8100e

    #@1e
    .line 3961
    invoke-virtual {v3, v4, v7, v7, v1}, Lcom/android/internal/util/AsyncChannel;->sendMessage(IIILjava/lang/Object;)V

    #@21
    .line 3945
    return-void

    #@22
    .line 3952
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
    .line 3953
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
    .line 3957
    .local v0, "detail":Ljava/lang/String;
    :goto_1
    const-string/jumbo v3, "updateSignalStrengthThresholds: %s, sending %s to %s"

    #@4d
    const/4 v4, 0x3

    #@4e
    new-array v4, v4, [Ljava/lang/Object;

    #@50
    .line 3958
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
    .line 3957
    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@67
    move-result-object v3

    #@68
    invoke-static {v3}, Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V

    #@6b
    goto :goto_0

    #@6c
    .line 3955
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
    .line 1735
    invoke-direct {p0, p1}, Lcom/android/server/ConnectivityService;->isDefaultNetwork(Lcom/android/server/connectivity/NetworkAgentInfo;)Z

    #@3
    move-result v6

    #@4
    if-nez v6, :cond_0

    #@6
    .line 1736
    return-void

    #@7
    .line 1739
    :cond_0
    iget-object v6, p1, Lcom/android/server/connectivity/NetworkAgentInfo;->linkProperties:Landroid/net/LinkProperties;

    #@9
    invoke-virtual {v6}, Landroid/net/LinkProperties;->getTcpBufferSizes()Ljava/lang/String;

    #@c
    move-result-object v4

    #@d
    .line 1740
    .local v4, "tcpBufferSizes":Ljava/lang/String;
    const/4 v5, 0x0

    #@e
    .line 1741
    .local v5, "values":[Ljava/lang/String;
    if-eqz v4, :cond_1

    #@10
    .line 1742
    const-string/jumbo v6, ","

    #@13
    invoke-virtual {v4, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    #@16
    move-result-object v5

    #@17
    .line 1745
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
    .line 1746
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
    .line 1747
    const-string/jumbo v4, "4096,87380,110208,4096,16384,110208"

    #@3e
    .line 1748
    const-string/jumbo v6, ","

    #@41
    invoke-virtual {v4, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    #@44
    move-result-object v5

    #@45
    .line 1751
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
    .line 1756
    :cond_4
    :try_start_0
    const-string/jumbo v1, "/sys/kernel/ipv4/tcp_"

    #@51
    .line 1757
    .local v1, "prefix":Ljava/lang/String;
    const-string/jumbo v6, "/sys/kernel/ipv4/tcp_rmem_min"

    #@54
    const/4 v7, 0x0

    #@55
    aget-object v7, v5, v7

    #@57
    invoke-static {v6, v7}, Landroid/os/FileUtils;->stringToFile(Ljava/lang/String;Ljava/lang/String;)V

    #@5a
    .line 1758
    const-string/jumbo v6, "/sys/kernel/ipv4/tcp_rmem_def"

    #@5d
    const/4 v7, 0x1

    #@5e
    aget-object v7, v5, v7

    #@60
    invoke-static {v6, v7}, Landroid/os/FileUtils;->stringToFile(Ljava/lang/String;Ljava/lang/String;)V

    #@63
    .line 1759
    const-string/jumbo v6, "/sys/kernel/ipv4/tcp_rmem_max"

    #@66
    const/4 v7, 0x2

    #@67
    aget-object v7, v5, v7

    #@69
    invoke-static {v6, v7}, Landroid/os/FileUtils;->stringToFile(Ljava/lang/String;Ljava/lang/String;)V

    #@6c
    .line 1760
    const-string/jumbo v6, "/sys/kernel/ipv4/tcp_wmem_min"

    #@6f
    const/4 v7, 0x3

    #@70
    aget-object v7, v5, v7

    #@72
    invoke-static {v6, v7}, Landroid/os/FileUtils;->stringToFile(Ljava/lang/String;Ljava/lang/String;)V

    #@75
    .line 1761
    const-string/jumbo v6, "/sys/kernel/ipv4/tcp_wmem_def"

    #@78
    const/4 v7, 0x4

    #@79
    aget-object v7, v5, v7

    #@7b
    invoke-static {v6, v7}, Landroid/os/FileUtils;->stringToFile(Ljava/lang/String;Ljava/lang/String;)V

    #@7e
    .line 1762
    const-string/jumbo v6, "/sys/kernel/ipv4/tcp_wmem_max"

    #@81
    const/4 v7, 0x5

    #@82
    aget-object v7, v5, v7

    #@84
    invoke-static {v6, v7}, Landroid/os/FileUtils;->stringToFile(Ljava/lang/String;Ljava/lang/String;)V

    #@87
    .line 1763
    iput-object v4, p0, Lcom/android/server/ConnectivityService;->mCurrentTcpBufferSizes:Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    #@89
    .line 1768
    .end local v1    # "prefix":Ljava/lang/String;
    :goto_0
    iget-object v6, p0, Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;

    #@8b
    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    #@8e
    move-result-object v6

    #@8f
    .line 1769
    const-string/jumbo v7, "tcp_default_init_rwnd"

    #@92
    invoke-virtual {p0}, Lcom/android/server/ConnectivityService;->getDefaultTcpRwnd()I

    #@95
    move-result v8

    #@96
    .line 1768
    invoke-static {v6, v7, v8}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    #@99
    move-result v6

    #@9a
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@9d
    move-result-object v2

    #@9e
    .line 1770
    .local v2, "rwndValue":Ljava/lang/Integer;
    const-string/jumbo v3, "sys.sysctl.tcp_def_init_rwnd"

    #@a1
    .line 1771
    .local v3, "sysctlKey":Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    #@a4
    move-result v6

    #@a5
    if-eqz v6, :cond_5

    #@a7
    .line 1772
    const-string/jumbo v6, "sys.sysctl.tcp_def_init_rwnd"

    #@aa
    invoke-virtual {v2}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    #@ad
    move-result-object v7

    #@ae
    invoke-static {v6, v7}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    #@b1
    .line 1734
    :cond_5
    return-void

    #@b2
    .line 1764
    .end local v2    # "rwndValue":Ljava/lang/Integer;
    .end local v3    # "sysctlKey":Ljava/lang/String;
    :catch_0
    move-exception v0

    #@b3
    .line 1765
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
.method public addVpnAddress(Ljava/lang/String;I)Z
    .locals 3
    .param p1, "address"    # Ljava/lang/String;
    .param p2, "prefixLength"    # I

    #@0
    .prologue
    .line 5115
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->throwIfLockdownEnabled()V

    #@3
    .line 5116
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    #@6
    move-result v1

    #@7
    invoke-static {v1}, Landroid/os/UserHandle;->getUserId(I)I

    #@a
    move-result v0

    #@b
    .line 5117
    .local v0, "user":I
    iget-object v2, p0, Lcom/android/server/ConnectivityService;->mVpns:Landroid/util/SparseArray;

    #@d
    monitor-enter v2

    #@e
    .line 5118
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
    .line 5117
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
    .line 3449
    const/4 v0, -0x1

    #@1
    return v0
.end method

.method protected createHandlerThread()Landroid/os/HandlerThread;
    .locals 2

    #@0
    .prologue
    .line 635
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
    .line 5215
    new-instance v0, Lcom/android/server/connectivity/NetworkMonitor;

    #@2
    invoke-direct {v0, p1, p2, p3, p4}, Lcom/android/server/connectivity/NetworkMonitor;-><init>(Landroid/content/Context;Landroid/os/Handler;Lcom/android/server/connectivity/NetworkAgentInfo;Landroid/net/NetworkRequest;)V

    #@5
    return-object v0
.end method

.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 24
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "writer"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    #@0
    .prologue
    .line 1842
    new-instance v15, Lcom/android/internal/util/IndentingPrintWriter;

    #@2
    const-string/jumbo v21, "  "

    #@5
    move-object/from16 v0, p2

    #@7
    move-object/from16 v1, v21

    #@9
    invoke-direct {v15, v0, v1}, Lcom/android/internal/util/IndentingPrintWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;)V

    #@c
    .line 1843
    .local v15, "pw":Lcom/android/internal/util/IndentingPrintWriter;
    move-object/from16 v0, p0

    #@e
    iget-object v0, v0, Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;

    #@10
    move-object/from16 v21, v0

    #@12
    .line 1844
    const-string/jumbo v22, "android.permission.DUMP"

    #@15
    .line 1843
    invoke-virtual/range {v21 .. v22}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    #@18
    move-result v21

    #@19
    if-eqz v21, :cond_0

    #@1b
    .line 1846
    new-instance v21, Ljava/lang/StringBuilder;

    #@1d
    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    #@20
    const-string/jumbo v22, "Permission Denial: can\'t dump ConnectivityService from from pid="

    #@23
    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@26
    move-result-object v21

    #@27
    .line 1847
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    #@2a
    move-result v22

    #@2b
    .line 1846
    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@2e
    move-result-object v21

    #@2f
    .line 1847
    const-string/jumbo v22, ", uid="

    #@32
    .line 1846
    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@35
    move-result-object v21

    #@36
    .line 1848
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    #@39
    move-result v22

    #@3a
    .line 1846
    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@3d
    move-result-object v21

    #@3e
    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@41
    move-result-object v21

    #@42
    move-object/from16 v0, v21

    #@44
    invoke-virtual {v15, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    #@47
    .line 1849
    return-void

    #@48
    .line 1852
    :cond_0
    const-string/jumbo v21, "--diag"

    #@4b
    move-object/from16 v0, p0

    #@4d
    move-object/from16 v1, p3

    #@4f
    move-object/from16 v2, v21

    #@51
    invoke-direct {v0, v1, v2}, Lcom/android/server/ConnectivityService;->argsContain([Ljava/lang/String;Ljava/lang/String;)Z

    #@54
    move-result v21

    #@55
    if-eqz v21, :cond_1

    #@57
    .line 1853
    move-object/from16 v0, p0

    #@59
    invoke-direct {v0, v15}, Lcom/android/server/ConnectivityService;->dumpNetworkDiagnostics(Lcom/android/internal/util/IndentingPrintWriter;)V

    #@5c
    .line 1854
    return-void

    #@5d
    .line 1857
    :cond_1
    const-string/jumbo v21, "NetworkFactories for:"

    #@60
    move-object/from16 v0, v21

    #@62
    invoke-virtual {v15, v0}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    #@65
    .line 1858
    move-object/from16 v0, p0

    #@67
    iget-object v0, v0, Lcom/android/server/ConnectivityService;->mNetworkFactoryInfos:Ljava/util/HashMap;

    #@69
    move-object/from16 v21, v0

    #@6b
    invoke-virtual/range {v21 .. v21}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    #@6e
    move-result-object v21

    #@6f
    invoke-interface/range {v21 .. v21}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@72
    move-result-object v8

    #@73
    .local v8, "nfi$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    #@76
    move-result v21

    #@77
    if-eqz v21, :cond_2

    #@79
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@7c
    move-result-object v7

    #@7d
    check-cast v7, Lcom/android/server/ConnectivityService$NetworkFactoryInfo;

    #@7f
    .line 1859
    .local v7, "nfi":Lcom/android/server/ConnectivityService$NetworkFactoryInfo;
    new-instance v21, Ljava/lang/StringBuilder;

    #@81
    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    #@84
    const-string/jumbo v22, " "

    #@87
    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@8a
    move-result-object v21

    #@8b
    iget-object v0, v7, Lcom/android/server/ConnectivityService$NetworkFactoryInfo;->name:Ljava/lang/String;

    #@8d
    move-object/from16 v22, v0

    #@8f
    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@92
    move-result-object v21

    #@93
    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@96
    move-result-object v21

    #@97
    move-object/from16 v0, v21

    #@99
    invoke-virtual {v15, v0}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    #@9c
    goto :goto_0

    #@9d
    .line 1861
    .end local v7    # "nfi":Lcom/android/server/ConnectivityService$NetworkFactoryInfo;
    :cond_2
    invoke-virtual {v15}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    #@a0
    .line 1862
    invoke-virtual {v15}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    #@a3
    .line 1864
    invoke-direct/range {p0 .. p0}, Lcom/android/server/ConnectivityService;->getDefaultNetwork()Lcom/android/server/connectivity/NetworkAgentInfo;

    #@a6
    move-result-object v3

    #@a7
    .line 1865
    .local v3, "defaultNai":Lcom/android/server/connectivity/NetworkAgentInfo;
    const-string/jumbo v21, "Active default network: "

    #@aa
    move-object/from16 v0, v21

    #@ac
    invoke-virtual {v15, v0}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    #@af
    .line 1866
    if-nez v3, :cond_3

    #@b1
    .line 1867
    const-string/jumbo v21, "none"

    #@b4
    move-object/from16 v0, v21

    #@b6
    invoke-virtual {v15, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    #@b9
    .line 1871
    :goto_1
    invoke-virtual {v15}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    #@bc
    .line 1873
    const-string/jumbo v21, "Current Networks:"

    #@bf
    move-object/from16 v0, v21

    #@c1
    invoke-virtual {v15, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    #@c4
    .line 1874
    invoke-virtual {v15}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()V

    #@c7
    .line 1875
    move-object/from16 v0, p0

    #@c9
    iget-object v0, v0, Lcom/android/server/ConnectivityService;->mNetworkAgentInfos:Ljava/util/HashMap;

    #@cb
    move-object/from16 v21, v0

    #@cd
    invoke-virtual/range {v21 .. v21}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    #@d0
    move-result-object v21

    #@d1
    invoke-interface/range {v21 .. v21}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@d4
    move-result-object v6

    #@d5
    .local v6, "nai$iterator":Ljava/util/Iterator;
    :goto_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    #@d8
    move-result v21

    #@d9
    if-eqz v21, :cond_6

    #@db
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@de
    move-result-object v5

    #@df
    check-cast v5, Lcom/android/server/connectivity/NetworkAgentInfo;

    #@e1
    .line 1876
    .local v5, "nai":Lcom/android/server/connectivity/NetworkAgentInfo;
    invoke-virtual {v5}, Lcom/android/server/connectivity/NetworkAgentInfo;->toString()Ljava/lang/String;

    #@e4
    move-result-object v21

    #@e5
    move-object/from16 v0, v21

    #@e7
    invoke-virtual {v15, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    #@ea
    .line 1877
    invoke-virtual {v15}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()V

    #@ed
    .line 1878
    const-string/jumbo v21, "Requests:"

    #@f0
    move-object/from16 v0, v21

    #@f2
    invoke-virtual {v15, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    #@f5
    .line 1879
    invoke-virtual {v15}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()V

    #@f8
    .line 1880
    const/4 v4, 0x0

    #@f9
    .local v4, "i":I
    :goto_3
    iget-object v0, v5, Lcom/android/server/connectivity/NetworkAgentInfo;->networkRequests:Landroid/util/SparseArray;

    #@fb
    move-object/from16 v21, v0

    #@fd
    invoke-virtual/range {v21 .. v21}, Landroid/util/SparseArray;->size()I

    #@100
    move-result v21

    #@101
    move/from16 v0, v21

    #@103
    if-ge v4, v0, :cond_4

    #@105
    .line 1881
    iget-object v0, v5, Lcom/android/server/connectivity/NetworkAgentInfo;->networkRequests:Landroid/util/SparseArray;

    #@107
    move-object/from16 v21, v0

    #@109
    move-object/from16 v0, v21

    #@10b
    invoke-virtual {v0, v4}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    #@10e
    move-result-object v21

    #@10f
    check-cast v21, Landroid/net/NetworkRequest;

    #@111
    invoke-virtual/range {v21 .. v21}, Landroid/net/NetworkRequest;->toString()Ljava/lang/String;

    #@114
    move-result-object v21

    #@115
    move-object/from16 v0, v21

    #@117
    invoke-virtual {v15, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    #@11a
    .line 1880
    add-int/lit8 v4, v4, 0x1

    #@11c
    goto :goto_3

    #@11d
    .line 1869
    .end local v4    # "i":I
    .end local v5    # "nai":Lcom/android/server/connectivity/NetworkAgentInfo;
    .end local v6    # "nai$iterator":Ljava/util/Iterator;
    :cond_3
    iget-object v0, v3, Lcom/android/server/connectivity/NetworkAgentInfo;->network:Landroid/net/Network;

    #@11f
    move-object/from16 v21, v0

    #@121
    move-object/from16 v0, v21

    #@123
    iget v0, v0, Landroid/net/Network;->netId:I

    #@125
    move/from16 v21, v0

    #@127
    move/from16 v0, v21

    #@129
    invoke-virtual {v15, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(I)V

    #@12c
    goto :goto_1

    #@12d
    .line 1883
    .restart local v4    # "i":I
    .restart local v5    # "nai":Lcom/android/server/connectivity/NetworkAgentInfo;
    .restart local v6    # "nai$iterator":Ljava/util/Iterator;
    :cond_4
    invoke-virtual {v15}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()V

    #@130
    .line 1884
    const-string/jumbo v21, "Lingered:"

    #@133
    move-object/from16 v0, v21

    #@135
    invoke-virtual {v15, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    #@138
    .line 1885
    invoke-virtual {v15}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()V

    #@13b
    .line 1886
    iget-object v0, v5, Lcom/android/server/connectivity/NetworkAgentInfo;->networkLingered:Ljava/util/ArrayList;

    #@13d
    move-object/from16 v21, v0

    #@13f
    invoke-interface/range {v21 .. v21}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@142
    move-result-object v10

    #@143
    .local v10, "nr$iterator":Ljava/util/Iterator;
    :goto_4
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    #@146
    move-result v21

    #@147
    if-eqz v21, :cond_5

    #@149
    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@14c
    move-result-object v9

    #@14d
    check-cast v9, Landroid/net/NetworkRequest;

    #@14f
    .local v9, "nr":Landroid/net/NetworkRequest;
    invoke-virtual {v9}, Landroid/net/NetworkRequest;->toString()Ljava/lang/String;

    #@152
    move-result-object v21

    #@153
    move-object/from16 v0, v21

    #@155
    invoke-virtual {v15, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    #@158
    goto :goto_4

    #@159
    .line 1887
    .end local v9    # "nr":Landroid/net/NetworkRequest;
    :cond_5
    invoke-virtual {v15}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()V

    #@15c
    .line 1888
    invoke-virtual {v15}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()V

    #@15f
    goto/16 :goto_2

    #@161
    .line 1890
    .end local v4    # "i":I
    .end local v5    # "nai":Lcom/android/server/connectivity/NetworkAgentInfo;
    .end local v10    # "nr$iterator":Ljava/util/Iterator;
    :cond_6
    invoke-virtual {v15}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()V

    #@164
    .line 1891
    invoke-virtual {v15}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    #@167
    .line 1893
    const-string/jumbo v21, "Metered Interfaces:"

    #@16a
    move-object/from16 v0, v21

    #@16c
    invoke-virtual {v15, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    #@16f
    .line 1894
    invoke-virtual {v15}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()V

    #@172
    .line 1895
    move-object/from16 v0, p0

    #@174
    iget-object v0, v0, Lcom/android/server/ConnectivityService;->mMeteredIfaces:Landroid/util/ArraySet;

    #@176
    move-object/from16 v21, v0

    #@178
    invoke-interface/range {v21 .. v21}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@17b
    move-result-object v20

    #@17c
    .local v20, "value$iterator":Ljava/util/Iterator;
    :goto_5
    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->hasNext()Z

    #@17f
    move-result v21

    #@180
    if-eqz v21, :cond_7

    #@182
    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@185
    move-result-object v19

    #@186
    check-cast v19, Ljava/lang/String;

    #@188
    .line 1896
    .local v19, "value":Ljava/lang/String;
    move-object/from16 v0, v19

    #@18a
    invoke-virtual {v15, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    #@18d
    goto :goto_5

    #@18e
    .line 1898
    .end local v19    # "value":Ljava/lang/String;
    :cond_7
    invoke-virtual {v15}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()V

    #@191
    .line 1899
    invoke-virtual {v15}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    #@194
    .line 1901
    const-string/jumbo v21, "Restrict background: "

    #@197
    move-object/from16 v0, v21

    #@199
    invoke-virtual {v15, v0}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    #@19c
    .line 1902
    move-object/from16 v0, p0

    #@19e
    iget-boolean v0, v0, Lcom/android/server/ConnectivityService;->mRestrictBackground:Z

    #@1a0
    move/from16 v21, v0

    #@1a2
    move/from16 v0, v21

    #@1a4
    invoke-virtual {v15, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Z)V

    #@1a7
    .line 1903
    invoke-virtual {v15}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    #@1aa
    .line 1905
    const-string/jumbo v21, "Status for known UIDs:"

    #@1ad
    move-object/from16 v0, v21

    #@1af
    invoke-virtual {v15, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    #@1b2
    .line 1906
    invoke-virtual {v15}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()V

    #@1b5
    .line 1907
    move-object/from16 v0, p0

    #@1b7
    iget-object v0, v0, Lcom/android/server/ConnectivityService;->mUidRules:Landroid/util/SparseIntArray;

    #@1b9
    move-object/from16 v21, v0

    #@1bb
    invoke-virtual/range {v21 .. v21}, Landroid/util/SparseIntArray;->size()I

    #@1be
    move-result v16

    #@1bf
    .line 1908
    .local v16, "size":I
    const/4 v4, 0x0

    #@1c0
    .restart local v4    # "i":I
    :goto_6
    move/from16 v0, v16

    #@1c2
    if-ge v4, v0, :cond_8

    #@1c4
    .line 1909
    move-object/from16 v0, p0

    #@1c6
    iget-object v0, v0, Lcom/android/server/ConnectivityService;->mUidRules:Landroid/util/SparseIntArray;

    #@1c8
    move-object/from16 v21, v0

    #@1ca
    move-object/from16 v0, v21

    #@1cc
    invoke-virtual {v0, v4}, Landroid/util/SparseIntArray;->keyAt(I)I

    #@1cf
    move-result v17

    #@1d0
    .line 1910
    .local v17, "uid":I
    const-string/jumbo v21, "UID="

    #@1d3
    move-object/from16 v0, v21

    #@1d5
    invoke-virtual {v15, v0}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    #@1d8
    .line 1911
    move/from16 v0, v17

    #@1da
    invoke-virtual {v15, v0}, Lcom/android/internal/util/IndentingPrintWriter;->print(I)V

    #@1dd
    .line 1912
    move-object/from16 v0, p0

    #@1df
    iget-object v0, v0, Lcom/android/server/ConnectivityService;->mUidRules:Landroid/util/SparseIntArray;

    #@1e1
    move-object/from16 v21, v0

    #@1e3
    const/16 v22, 0x0

    #@1e5
    move-object/from16 v0, v21

    #@1e7
    move/from16 v1, v17

    #@1e9
    move/from16 v2, v22

    #@1eb
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->get(II)I

    #@1ee
    move-result v18

    #@1ef
    .line 1913
    .local v18, "uidRules":I
    const-string/jumbo v21, " rules="

    #@1f2
    move-object/from16 v0, v21

    #@1f4
    invoke-virtual {v15, v0}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    #@1f7
    .line 1914
    invoke-static/range {v18 .. v18}, Landroid/net/NetworkPolicyManager;->uidRulesToString(I)Ljava/lang/String;

    #@1fa
    move-result-object v21

    #@1fb
    move-object/from16 v0, v21

    #@1fd
    invoke-virtual {v15, v0}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    #@200
    .line 1915
    invoke-virtual {v15}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    #@203
    .line 1908
    add-int/lit8 v4, v4, 0x1

    #@205
    goto :goto_6

    #@206
    .line 1917
    .end local v17    # "uid":I
    .end local v18    # "uidRules":I
    :cond_8
    invoke-virtual {v15}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    #@209
    .line 1918
    invoke-virtual {v15}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()V

    #@20c
    .line 1920
    const-string/jumbo v21, "Network Requests:"

    #@20f
    move-object/from16 v0, v21

    #@211
    invoke-virtual {v15, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    #@214
    .line 1921
    invoke-virtual {v15}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()V

    #@217
    .line 1922
    move-object/from16 v0, p0

    #@219
    iget-object v0, v0, Lcom/android/server/ConnectivityService;->mNetworkRequests:Ljava/util/HashMap;

    #@21b
    move-object/from16 v21, v0

    #@21d
    invoke-virtual/range {v21 .. v21}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    #@220
    move-result-object v21

    #@221
    invoke-interface/range {v21 .. v21}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@224
    move-result-object v12

    #@225
    .local v12, "nri$iterator":Ljava/util/Iterator;
    :goto_7
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    #@228
    move-result v21

    #@229
    if-eqz v21, :cond_9

    #@22b
    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@22e
    move-result-object v11

    #@22f
    check-cast v11, Lcom/android/server/ConnectivityService$NetworkRequestInfo;

    #@231
    .line 1923
    .local v11, "nri":Lcom/android/server/ConnectivityService$NetworkRequestInfo;
    invoke-virtual {v11}, Lcom/android/server/ConnectivityService$NetworkRequestInfo;->toString()Ljava/lang/String;

    #@234
    move-result-object v21

    #@235
    move-object/from16 v0, v21

    #@237
    invoke-virtual {v15, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    #@23a
    goto :goto_7

    #@23b
    .line 1925
    .end local v11    # "nri":Lcom/android/server/ConnectivityService$NetworkRequestInfo;
    :cond_9
    invoke-virtual {v15}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    #@23e
    .line 1926
    invoke-virtual {v15}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()V

    #@241
    .line 1928
    move-object/from16 v0, p0

    #@243
    iget-object v0, v0, Lcom/android/server/ConnectivityService;->mLegacyTypeTracker:Lcom/android/server/ConnectivityService$LegacyTypeTracker;

    #@245
    move-object/from16 v21, v0

    #@247
    move-object/from16 v0, v21

    #@249
    invoke-virtual {v0, v15}, Lcom/android/server/ConnectivityService$LegacyTypeTracker;->dump(Lcom/android/internal/util/IndentingPrintWriter;)V

    #@24c
    .line 1930
    monitor-enter p0

    #@24d
    .line 1931
    :try_start_0
    new-instance v21, Ljava/lang/StringBuilder;

    #@24f
    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    #@252
    const-string/jumbo v22, "mNetTransitionWakeLock: currently "

    #@255
    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@258
    move-result-object v22

    #@259
    .line 1932
    move-object/from16 v0, p0

    #@25b
    iget-object v0, v0, Lcom/android/server/ConnectivityService;->mNetTransitionWakeLock:Landroid/os/PowerManager$WakeLock;

    #@25d
    move-object/from16 v21, v0

    #@25f
    invoke-virtual/range {v21 .. v21}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    #@262
    move-result v21

    #@263
    if-eqz v21, :cond_a

    #@265
    const-string/jumbo v21, ""

    #@268
    .line 1931
    :goto_8
    move-object/from16 v0, v22

    #@26a
    move-object/from16 v1, v21

    #@26c
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@26f
    move-result-object v21

    #@270
    .line 1932
    const-string/jumbo v22, "held"

    #@273
    .line 1931
    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@276
    move-result-object v21

    #@277
    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@27a
    move-result-object v21

    #@27b
    move-object/from16 v0, v21

    #@27d
    invoke-virtual {v15, v0}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    #@280
    .line 1933
    move-object/from16 v0, p0

    #@282
    iget-object v0, v0, Lcom/android/server/ConnectivityService;->mNetTransitionWakeLockCausedBy:Ljava/lang/String;

    #@284
    move-object/from16 v21, v0

    #@286
    invoke-static/range {v21 .. v21}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@289
    move-result v21

    #@28a
    if-nez v21, :cond_b

    #@28c
    .line 1934
    new-instance v21, Ljava/lang/StringBuilder;

    #@28e
    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    #@291
    const-string/jumbo v22, ", last requested for "

    #@294
    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@297
    move-result-object v21

    #@298
    move-object/from16 v0, p0

    #@29a
    iget-object v0, v0, Lcom/android/server/ConnectivityService;->mNetTransitionWakeLockCausedBy:Ljava/lang/String;

    #@29c
    move-object/from16 v22, v0

    #@29e
    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2a1
    move-result-object v21

    #@2a2
    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2a5
    move-result-object v21

    #@2a6
    move-object/from16 v0, v21

    #@2a8
    invoke-virtual {v15, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@2ab
    :goto_9
    monitor-exit p0

    #@2ac
    .line 1940
    invoke-virtual {v15}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    #@2af
    .line 1941
    move-object/from16 v0, p0

    #@2b1
    iget-object v0, v0, Lcom/android/server/ConnectivityService;->mTethering:Lcom/android/server/connectivity/Tethering;

    #@2b3
    move-object/from16 v21, v0

    #@2b5
    move-object/from16 v0, v21

    #@2b7
    move-object/from16 v1, p1

    #@2b9
    move-object/from16 v2, p3

    #@2bb
    invoke-virtual {v0, v1, v15, v2}, Lcom/android/server/connectivity/Tethering;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    #@2be
    .line 1943
    invoke-virtual {v15}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    #@2c1
    .line 1944
    move-object/from16 v0, p0

    #@2c3
    iget-object v0, v0, Lcom/android/server/ConnectivityService;->mKeepaliveTracker:Lcom/android/server/connectivity/KeepaliveTracker;

    #@2c5
    move-object/from16 v21, v0

    #@2c7
    move-object/from16 v0, v21

    #@2c9
    invoke-virtual {v0, v15}, Lcom/android/server/connectivity/KeepaliveTracker;->dump(Lcom/android/internal/util/IndentingPrintWriter;)V

    #@2cc
    .line 1946
    invoke-virtual {v15}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    #@2cf
    .line 1948
    move-object/from16 v0, p0

    #@2d1
    iget-object v0, v0, Lcom/android/server/ConnectivityService;->mInetLog:Ljava/util/ArrayList;

    #@2d3
    move-object/from16 v21, v0

    #@2d5
    if-eqz v21, :cond_d

    #@2d7
    move-object/from16 v0, p0

    #@2d9
    iget-object v0, v0, Lcom/android/server/ConnectivityService;->mInetLog:Ljava/util/ArrayList;

    #@2db
    move-object/from16 v21, v0

    #@2dd
    invoke-virtual/range {v21 .. v21}, Ljava/util/ArrayList;->size()I

    #@2e0
    move-result v21

    #@2e1
    if-lez v21, :cond_d

    #@2e3
    .line 1949
    invoke-virtual {v15}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    #@2e6
    .line 1950
    const-string/jumbo v21, "Inet condition reports:"

    #@2e9
    move-object/from16 v0, v21

    #@2eb
    invoke-virtual {v15, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    #@2ee
    .line 1951
    invoke-virtual {v15}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()V

    #@2f1
    .line 1952
    const/4 v4, 0x0

    #@2f2
    :goto_a
    move-object/from16 v0, p0

    #@2f4
    iget-object v0, v0, Lcom/android/server/ConnectivityService;->mInetLog:Ljava/util/ArrayList;

    #@2f6
    move-object/from16 v21, v0

    #@2f8
    invoke-virtual/range {v21 .. v21}, Ljava/util/ArrayList;->size()I

    #@2fb
    move-result v21

    #@2fc
    move/from16 v0, v21

    #@2fe
    if-ge v4, v0, :cond_c

    #@300
    .line 1953
    move-object/from16 v0, p0

    #@302
    iget-object v0, v0, Lcom/android/server/ConnectivityService;->mInetLog:Ljava/util/ArrayList;

    #@304
    move-object/from16 v21, v0

    #@306
    move-object/from16 v0, v21

    #@308
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@30b
    move-result-object v21

    #@30c
    move-object/from16 v0, v21

    #@30e
    invoke-virtual {v15, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/Object;)V

    #@311
    .line 1952
    add-int/lit8 v4, v4, 0x1

    #@313
    goto :goto_a

    #@314
    .line 1932
    :cond_a
    :try_start_1
    const-string/jumbo v21, "not "

    #@317
    goto/16 :goto_8

    #@319
    .line 1936
    :cond_b
    const-string/jumbo v21, ", last requested never"

    #@31c
    move-object/from16 v0, v21

    #@31e
    invoke-virtual {v15, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@321
    goto :goto_9

    #@322
    .line 1930
    :catchall_0
    move-exception v21

    #@323
    monitor-exit p0

    #@324
    throw v21

    #@325
    .line 1955
    :cond_c
    invoke-virtual {v15}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()V

    #@328
    .line 1958
    :cond_d
    const-string/jumbo v21, "--short"

    #@32b
    move-object/from16 v0, p0

    #@32d
    move-object/from16 v1, p3

    #@32f
    move-object/from16 v2, v21

    #@331
    invoke-direct {v0, v1, v2}, Lcom/android/server/ConnectivityService;->argsContain([Ljava/lang/String;Ljava/lang/String;)Z

    #@334
    move-result v21

    #@335
    if-nez v21, :cond_f

    #@337
    .line 1959
    invoke-virtual {v15}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    #@33a
    .line 1960
    move-object/from16 v0, p0

    #@33c
    iget-object v0, v0, Lcom/android/server/ConnectivityService;->mValidationLogs:Ljava/util/ArrayDeque;

    #@33e
    move-object/from16 v22, v0

    #@340
    monitor-enter v22

    #@341
    .line 1961
    :try_start_2
    const-string/jumbo v21, "mValidationLogs (most recent first):"

    #@344
    move-object/from16 v0, v21

    #@346
    invoke-virtual {v15, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    #@349
    .line 1962
    move-object/from16 v0, p0

    #@34b
    iget-object v0, v0, Lcom/android/server/ConnectivityService;->mValidationLogs:Ljava/util/ArrayDeque;

    #@34d
    move-object/from16 v21, v0

    #@34f
    invoke-interface/range {v21 .. v21}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@352
    move-result-object v14

    #@353
    .local v14, "p$iterator":Ljava/util/Iterator;
    :goto_b
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    #@356
    move-result v21

    #@357
    if-eqz v21, :cond_e

    #@359
    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@35c
    move-result-object v13

    #@35d
    check-cast v13, Lcom/android/server/ConnectivityService$ValidationLog;

    #@35f
    .line 1963
    .local v13, "p":Lcom/android/server/ConnectivityService$ValidationLog;
    new-instance v21, Ljava/lang/StringBuilder;

    #@361
    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    #@364
    iget-object v0, v13, Lcom/android/server/ConnectivityService$ValidationLog;->mNetwork:Landroid/net/Network;

    #@366
    move-object/from16 v23, v0

    #@368
    move-object/from16 v0, v21

    #@36a
    move-object/from16 v1, v23

    #@36c
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@36f
    move-result-object v21

    #@370
    const-string/jumbo v23, " - "

    #@373
    move-object/from16 v0, v21

    #@375
    move-object/from16 v1, v23

    #@377
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@37a
    move-result-object v21

    #@37b
    iget-object v0, v13, Lcom/android/server/ConnectivityService$ValidationLog;->mNetworkExtraInfo:Ljava/lang/String;

    #@37d
    move-object/from16 v23, v0

    #@37f
    move-object/from16 v0, v21

    #@381
    move-object/from16 v1, v23

    #@383
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@386
    move-result-object v21

    #@387
    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@38a
    move-result-object v21

    #@38b
    move-object/from16 v0, v21

    #@38d
    invoke-virtual {v15, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    #@390
    .line 1964
    invoke-virtual {v15}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()V

    #@393
    .line 1965
    iget-object v0, v13, Lcom/android/server/ConnectivityService$ValidationLog;->mLog:Landroid/util/LocalLog$ReadOnlyLocalLog;

    #@395
    move-object/from16 v21, v0

    #@397
    move-object/from16 v0, v21

    #@399
    move-object/from16 v1, p1

    #@39b
    move-object/from16 v2, p3

    #@39d
    invoke-virtual {v0, v1, v15, v2}, Landroid/util/LocalLog$ReadOnlyLocalLog;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    #@3a0
    .line 1966
    invoke-virtual {v15}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    #@3a3
    goto :goto_b

    #@3a4
    .line 1960
    .end local v13    # "p":Lcom/android/server/ConnectivityService$ValidationLog;
    .end local v14    # "p$iterator":Ljava/util/Iterator;
    :catchall_1
    move-exception v21

    #@3a5
    monitor-exit v22

    #@3a6
    throw v21

    #@3a7
    .restart local v14    # "p$iterator":Ljava/util/Iterator;
    :cond_e
    monitor-exit v22

    #@3a8
    .line 1970
    invoke-virtual {v15}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    #@3ab
    .line 1971
    const-string/jumbo v21, "mNetworkRequestInfoLogs (most recent first):"

    #@3ae
    move-object/from16 v0, v21

    #@3b0
    invoke-virtual {v15, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    #@3b3
    .line 1972
    invoke-virtual {v15}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()V

    #@3b6
    .line 1973
    move-object/from16 v0, p0

    #@3b8
    iget-object v0, v0, Lcom/android/server/ConnectivityService;->mNetworkRequestInfoLogs:Landroid/util/LocalLog;

    #@3ba
    move-object/from16 v21, v0

    #@3bc
    move-object/from16 v0, v21

    #@3be
    move-object/from16 v1, p1

    #@3c0
    move-object/from16 v2, p3

    #@3c2
    invoke-virtual {v0, v1, v15, v2}, Landroid/util/LocalLog;->reverseDump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    #@3c5
    .line 1974
    invoke-virtual {v15}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()V

    #@3c8
    .line 1841
    .end local v14    # "p$iterator":Ljava/util/Iterator;
    :cond_f
    return-void
.end method

.method public establishVpn(Lcom/android/internal/net/VpnConfig;)Landroid/os/ParcelFileDescriptor;
    .locals 3
    .param p1, "config"    # Lcom/android/internal/net/VpnConfig;

    #@0
    .prologue
    .line 3208
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->throwIfLockdownEnabled()V

    #@3
    .line 3209
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    #@6
    move-result v1

    #@7
    invoke-static {v1}, Landroid/os/UserHandle;->getUserId(I)I

    #@a
    move-result v0

    #@b
    .line 3210
    .local v0, "user":I
    iget-object v2, p0, Lcom/android/server/ConnectivityService;->mVpns:Landroid/util/SparseArray;

    #@d
    monitor-enter v2

    #@e
    .line 3211
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
    .line 3210
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
    .line 5168
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->enforceConnectivityInternalPermission()V

    #@5
    .line 5170
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
    .line 5171
    return-void

    #@11
    .line 5174
    :cond_0
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    #@14
    move-result v2

    #@15
    .line 5177
    .local v2, "userId":I
    invoke-virtual {p0, v5}, Lcom/android/server/ConnectivityService;->setAirplaneMode(Z)V

    #@18
    .line 5179
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
    .line 5181
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
    .line 5182
    .local v1, "tether":Ljava/lang/String;
    invoke-virtual {p0, v1}, Lcom/android/server/ConnectivityService;->untether(Ljava/lang/String;)I

    #@30
    .line 5181
    add-int/lit8 v4, v4, 0x1

    #@32
    goto :goto_0

    #@33
    .line 5186
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
    .line 5188
    iget-object v6, p0, Lcom/android/server/ConnectivityService;->mVpns:Landroid/util/SparseArray;

    #@40
    monitor-enter v6

    #@41
    .line 5189
    :try_start_0
    invoke-virtual {p0, v2}, Lcom/android/server/ConnectivityService;->getAlwaysOnVpnPackage(I)Ljava/lang/String;

    #@44
    move-result-object v0

    #@45
    .line 5190
    .local v0, "alwaysOnPackage":Ljava/lang/String;
    if-eqz v0, :cond_2

    #@47
    .line 5191
    const/4 v4, 0x0

    #@48
    const/4 v7, 0x0

    #@49
    invoke-virtual {p0, v2, v4, v7}, Lcom/android/server/ConnectivityService;->setAlwaysOnVpnPackage(ILjava/lang/String;Z)Z

    #@4c
    .line 5192
    const/4 v4, 0x0

    #@4d
    invoke-virtual {p0, v0, v2, v4}, Lcom/android/server/ConnectivityService;->setVpnPackageAuthorization(Ljava/lang/String;IZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@50
    :cond_2
    monitor-exit v6

    #@51
    .line 5197
    invoke-virtual {p0, v2}, Lcom/android/server/ConnectivityService;->getVpnConfig(I)Lcom/android/internal/net/VpnConfig;

    #@54
    move-result-object v3

    #@55
    .line 5198
    .local v3, "vpnConfig":Lcom/android/internal/net/VpnConfig;
    if-eqz v3, :cond_3

    #@57
    .line 5199
    iget-boolean v4, v3, Lcom/android/internal/net/VpnConfig;->legacy:Z

    #@59
    if-eqz v4, :cond_4

    #@5b
    .line 5200
    const-string/jumbo v4, "[Legacy VPN]"

    #@5e
    const-string/jumbo v5, "[Legacy VPN]"

    #@61
    invoke-virtual {p0, v4, v5, v2}, Lcom/android/server/ConnectivityService;->prepareVpn(Ljava/lang/String;Ljava/lang/String;I)Z

    #@64
    .line 5167
    .end local v0    # "alwaysOnPackage":Ljava/lang/String;
    .end local v3    # "vpnConfig":Lcom/android/internal/net/VpnConfig;
    :cond_3
    :goto_1
    return-void

    #@65
    .line 5188
    :catchall_0
    move-exception v4

    #@66
    monitor-exit v6

    #@67
    throw v4

    #@68
    .line 5204
    .restart local v0    # "alwaysOnPackage":Ljava/lang/String;
    .restart local v3    # "vpnConfig":Lcom/android/internal/net/VpnConfig;
    :cond_4
    iget-object v4, v3, Lcom/android/internal/net/VpnConfig;->user:Ljava/lang/String;

    #@6a
    invoke-virtual {p0, v4, v2, v5}, Lcom/android/server/ConnectivityService;->setVpnPackageAuthorization(Ljava/lang/String;IZ)V

    #@6d
    .line 5206
    const-string/jumbo v4, "[Legacy VPN]"

    #@70
    invoke-virtual {p0, v8, v4, v2}, Lcom/android/server/ConnectivityService;->prepareVpn(Ljava/lang/String;Ljava/lang/String;I)Z

    #@73
    goto :goto_1
.end method

.method public getActiveLinkProperties()Landroid/net/LinkProperties;
    .locals 3

    #@0
    .prologue
    .line 1207
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->enforceAccessPermission()V

    #@3
    .line 1208
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    #@6
    move-result v1

    #@7
    .line 1209
    .local v1, "uid":I
    invoke-direct {p0, v1}, Lcom/android/server/ConnectivityService;->getUnfilteredActiveNetworkState(I)Landroid/net/NetworkState;

    #@a
    move-result-object v0

    #@b
    .line 1210
    .local v0, "state":Landroid/net/NetworkState;
    iget-object v2, v0, Landroid/net/NetworkState;->linkProperties:Landroid/net/LinkProperties;

    #@d
    return-object v2
.end method

.method public getActiveNetwork()Landroid/net/Network;
    .locals 2

    #@0
    .prologue
    .line 1027
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->enforceAccessPermission()V

    #@3
    .line 1028
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
    .line 1033
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->enforceConnectivityInternalPermission()V

    #@3
    .line 1034
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
    .line 1017
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->enforceAccessPermission()V

    #@3
    .line 1018
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    #@6
    move-result v1

    #@7
    .line 1019
    .local v1, "uid":I
    invoke-direct {p0, v1}, Lcom/android/server/ConnectivityService;->getUnfilteredActiveNetworkState(I)Landroid/net/NetworkState;

    #@a
    move-result-object v0

    #@b
    .line 1020
    .local v0, "state":Landroid/net/NetworkState;
    const/4 v2, 0x0

    #@c
    invoke-direct {p0, v0, v1, v2}, Lcom/android/server/ConnectivityService;->filterNetworkStateForUid(Landroid/net/NetworkState;IZ)V

    #@f
    .line 1021
    iget-object v2, v0, Landroid/net/NetworkState;->networkInfo:Landroid/net/NetworkInfo;

    #@11
    invoke-direct {p0, v2, v1}, Lcom/android/server/ConnectivityService;->maybeLogBlockedNetworkInfo(Landroid/net/NetworkInfo;I)V

    #@14
    .line 1022
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
    .line 1068
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->enforceConnectivityInternalPermission()V

    #@3
    .line 1069
    invoke-direct {p0, p1}, Lcom/android/server/ConnectivityService;->getUnfilteredActiveNetworkState(I)Landroid/net/NetworkState;

    #@6
    move-result-object v0

    #@7
    .line 1070
    .local v0, "state":Landroid/net/NetworkState;
    invoke-direct {p0, v0, p1, p2}, Lcom/android/server/ConnectivityService;->filterNetworkStateForUid(Landroid/net/NetworkState;IZ)V

    #@a
    .line 1071
    iget-object v1, v0, Landroid/net/NetworkState;->networkInfo:Landroid/net/NetworkInfo;

    #@c
    return-object v1
.end method

.method public getActiveNetworkInfoUnfiltered()Landroid/net/NetworkInfo;
    .locals 3

    #@0
    .prologue
    .line 1060
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->enforceAccessPermission()V

    #@3
    .line 1061
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    #@6
    move-result v1

    #@7
    .line 1062
    .local v1, "uid":I
    invoke-direct {p0, v1}, Lcom/android/server/ConnectivityService;->getUnfilteredActiveNetworkState(I)Landroid/net/NetworkState;

    #@a
    move-result-object v0

    #@b
    .line 1063
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
    .line 1272
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->enforceAccessPermission()V

    #@4
    .line 1273
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    #@7
    move-result v4

    #@8
    .line 1274
    .local v4, "uid":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    #@b
    move-result-wide v2

    #@c
    .line 1276
    .local v2, "token":J
    :try_start_0
    invoke-direct {p0, v4}, Lcom/android/server/ConnectivityService;->getUnfilteredActiveNetworkState(I)Landroid/net/NetworkState;

    #@f
    move-result-object v1

    #@10
    .line 1277
    .local v1, "state":Landroid/net/NetworkState;
    iget-object v5, v1, Landroid/net/NetworkState;->networkInfo:Landroid/net/NetworkInfo;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@12
    if-eqz v5, :cond_0

    #@14
    .line 1279
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
    .line 1285
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@1d
    .line 1279
    return-object v5

    #@1e
    .line 1280
    :catch_0
    move-exception v0

    #@1f
    .line 1285
    :cond_0
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@22
    .line 1283
    return-object v6

    #@23
    .line 1284
    .end local v1    # "state":Landroid/net/NetworkState;
    :catchall_0
    move-exception v5

    #@24
    .line 1285
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@27
    .line 1284
    throw v5
.end method

.method public getAllNetworkInfo()[Landroid/net/NetworkInfo;
    .locals 4

    #@0
    .prologue
    .line 1107
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->enforceAccessPermission()V

    #@3
    .line 1108
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    #@6
    move-result-object v2

    #@7
    .line 1109
    .local v2, "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/net/NetworkInfo;>;"
    const/4 v1, 0x0

    #@8
    .local v1, "networkType":I
    :goto_0
    const/16 v3, 0x11

    #@a
    if-gt v1, v3, :cond_1

    #@c
    .line 1111
    invoke-virtual {p0, v1}, Lcom/android/server/ConnectivityService;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    #@f
    move-result-object v0

    #@10
    .line 1112
    .local v0, "info":Landroid/net/NetworkInfo;
    if-eqz v0, :cond_0

    #@12
    .line 1113
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@15
    .line 1110
    :cond_0
    add-int/lit8 v1, v1, 0x1

    #@17
    goto :goto_0

    #@18
    .line 1116
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
    .line 1258
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->enforceConnectivityInternalPermission()V

    #@3
    .line 1260
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    #@6
    move-result-object v2

    #@7
    .line 1261
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
    .line 1262
    .local v1, "network":Landroid/net/Network;
    invoke-direct {p0, v1}, Lcom/android/server/ConnectivityService;->getNetworkAgentInfoForNetwork(Landroid/net/Network;)Lcom/android/server/connectivity/NetworkAgentInfo;

    #@14
    move-result-object v0

    #@15
    .line 1263
    .local v0, "nai":Lcom/android/server/connectivity/NetworkAgentInfo;
    if-eqz v0, :cond_0

    #@17
    .line 1264
    invoke-virtual {v0}, Lcom/android/server/connectivity/NetworkAgentInfo;->getNetworkState()Landroid/net/NetworkState;

    #@1a
    move-result-object v6

    #@1b
    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@1e
    .line 1261
    :cond_0
    add-int/lit8 v3, v3, 0x1

    #@20
    goto :goto_0

    #@21
    .line 1267
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
    .line 1132
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->enforceAccessPermission()V

    #@3
    .line 1133
    iget-object v3, p0, Lcom/android/server/ConnectivityService;->mNetworkForNetId:Landroid/util/SparseArray;

    #@5
    monitor-enter v3

    #@6
    .line 1134
    :try_start_0
    iget-object v2, p0, Lcom/android/server/ConnectivityService;->mNetworkForNetId:Landroid/util/SparseArray;

    #@8
    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    #@b
    move-result v2

    #@c
    new-array v1, v2, [Landroid/net/Network;

    #@e
    .line 1135
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
    .line 1136
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
    .line 1135
    add-int/lit8 v0, v0, 0x1

    #@25
    goto :goto_0

    #@26
    :cond_0
    monitor-exit v3

    #@27
    .line 1138
    return-object v1

    #@28
    .line 1133
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
    .line 3252
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->enforceConnectivityInternalPermission()V

    #@3
    .line 3253
    iget-boolean v3, p0, Lcom/android/server/ConnectivityService;->mLockdownEnabled:Z

    #@5
    if-eqz v3, :cond_0

    #@7
    .line 3254
    const/4 v3, 0x0

    #@8
    new-array v3, v3, [Lcom/android/internal/net/VpnInfo;

    #@a
    return-object v3

    #@b
    .line 3257
    :cond_0
    iget-object v4, p0, Lcom/android/server/ConnectivityService;->mVpns:Landroid/util/SparseArray;

    #@d
    monitor-enter v4

    #@e
    .line 3258
    :try_start_0
    new-instance v2, Ljava/util/ArrayList;

    #@10
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    #@13
    .line 3259
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
    .line 3260
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
    .line 3261
    .local v1, "info":Lcom/android/internal/net/VpnInfo;
    if-eqz v1, :cond_1

    #@2a
    .line 3262
    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@2d
    .line 3259
    :cond_1
    add-int/lit8 v0, v0, 0x1

    #@2f
    goto :goto_0

    #@30
    .line 3265
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
    .line 3257
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
    .line 3433
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->enforceConnectivityInternalPermission()V

    #@4
    .line 3434
    invoke-direct {p0, p1}, Lcom/android/server/ConnectivityService;->enforceCrossUserPermission(I)V

    #@7
    .line 3436
    iget-object v2, p0, Lcom/android/server/ConnectivityService;->mVpns:Landroid/util/SparseArray;

    #@9
    monitor-enter v2

    #@a
    .line 3437
    :try_start_0
    iget-object v1, p0, Lcom/android/server/ConnectivityService;->mVpns:Landroid/util/SparseArray;

    #@c
    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    #@f
    move-result-object v0

    #@10
    check-cast v0, Lcom/android/server/connectivity/Vpn;

    #@12
    .line 3438
    .local v0, "vpn":Lcom/android/server/connectivity/Vpn;
    if-nez v0, :cond_0

    #@14
    .line 3439
    const-string/jumbo v1, "ConnectivityService"

    #@17
    new-instance v3, Ljava/lang/StringBuilder;

    #@19
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@1c
    const-string/jumbo v4, "User "

    #@1f
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@22
    move-result-object v3

    #@23
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@26
    move-result-object v3

    #@27
    const-string/jumbo v4, " has no Vpn configuration"

    #@2a
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2d
    move-result-object v3

    #@2e
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@31
    move-result-object v3

    #@32
    invoke-static {v1, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@35
    monitor-exit v2

    #@36
    .line 3440
    return-object v5

    #@37
    .line 3442
    :cond_0
    :try_start_1
    invoke-virtual {v0}, Lcom/android/server/connectivity/Vpn;->getAlwaysOnPackage()Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@3a
    move-result-object v1

    #@3b
    monitor-exit v2

    #@3c
    return-object v1

    #@3d
    .line 3436
    .end local v0    # "vpn":Lcom/android/server/connectivity/Vpn;
    :catchall_0
    move-exception v1

    #@3e
    monitor-exit v2

    #@3f
    throw v1
.end method

.method public getCaptivePortalServerUrl()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 5147
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;

    #@2
    invoke-static {v0}, Lcom/android/server/connectivity/NetworkMonitor;->getCaptivePortalServerUrl(Landroid/content/Context;)Ljava/lang/String;

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
    .line 1158
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->enforceAccessPermission()V

    #@3
    .line 1160
    new-instance v5, Ljava/util/HashMap;

    #@5
    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    #@8
    .line 1162
    .local v5, "result":Ljava/util/HashMap;, "Ljava/util/HashMap<Landroid/net/Network;Landroid/net/NetworkCapabilities;>;"
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->getDefaultNetwork()Lcom/android/server/connectivity/NetworkAgentInfo;

    #@b
    move-result-object v0

    #@c
    .line 1163
    .local v0, "nai":Lcom/android/server/connectivity/NetworkAgentInfo;
    invoke-direct {p0, v0}, Lcom/android/server/ConnectivityService;->getNetworkCapabilitiesInternal(Lcom/android/server/connectivity/NetworkAgentInfo;)Landroid/net/NetworkCapabilities;

    #@f
    move-result-object v1

    #@10
    .line 1164
    .local v1, "nc":Landroid/net/NetworkCapabilities;
    if-eqz v1, :cond_0

    #@12
    .line 1165
    iget-object v7, v0, Lcom/android/server/connectivity/NetworkAgentInfo;->network:Landroid/net/Network;

    #@14
    invoke-virtual {v5, v7, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@17
    .line 1168
    :cond_0
    iget-boolean v7, p0, Lcom/android/server/ConnectivityService;->mLockdownEnabled:Z

    #@19
    if-nez v7, :cond_3

    #@1b
    .line 1169
    iget-object v8, p0, Lcom/android/server/ConnectivityService;->mVpns:Landroid/util/SparseArray;

    #@1d
    monitor-enter v8

    #@1e
    .line 1170
    :try_start_0
    iget-object v7, p0, Lcom/android/server/ConnectivityService;->mVpns:Landroid/util/SparseArray;

    #@20
    invoke-virtual {v7, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    #@23
    move-result-object v6

    #@24
    check-cast v6, Lcom/android/server/connectivity/Vpn;

    #@26
    .line 1171
    .local v6, "vpn":Lcom/android/server/connectivity/Vpn;
    if-eqz v6, :cond_2

    #@28
    .line 1172
    invoke-virtual {v6}, Lcom/android/server/connectivity/Vpn;->getUnderlyingNetworks()[Landroid/net/Network;

    #@2b
    move-result-object v3

    #@2c
    .line 1173
    .local v3, "networks":[Landroid/net/Network;
    if-eqz v3, :cond_2

    #@2e
    .line 1174
    const/4 v7, 0x0

    #@2f
    array-length v9, v3

    #@30
    :goto_0
    if-ge v7, v9, :cond_2

    #@32
    aget-object v2, v3, v7

    #@34
    .line 1175
    .local v2, "network":Landroid/net/Network;
    invoke-direct {p0, v2}, Lcom/android/server/ConnectivityService;->getNetworkAgentInfoForNetwork(Landroid/net/Network;)Lcom/android/server/connectivity/NetworkAgentInfo;

    #@37
    move-result-object v0

    #@38
    .line 1176
    invoke-direct {p0, v0}, Lcom/android/server/ConnectivityService;->getNetworkCapabilitiesInternal(Lcom/android/server/connectivity/NetworkAgentInfo;)Landroid/net/NetworkCapabilities;

    #@3b
    move-result-object v1

    #@3c
    .line 1177
    if-eqz v1, :cond_1

    #@3e
    .line 1178
    invoke-virtual {v5, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@41
    .line 1174
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
    .line 1186
    .end local v6    # "vpn":Lcom/android/server/connectivity/Vpn;
    :cond_3
    invoke-virtual {v5}, Ljava/util/HashMap;->size()I

    #@48
    move-result v7

    #@49
    new-array v4, v7, [Landroid/net/NetworkCapabilities;

    #@4b
    .line 1187
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
    .line 1188
    .restart local v4    # "out":[Landroid/net/NetworkCapabilities;
    return-object v4

    #@56
    .line 1169
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
    .line 1731
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
    .line 3003
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mProxyLock:Ljava/lang/Object;

    #@2
    monitor-enter v0

    #@3
    .line 3004
    :try_start_0
    iget-object v1, p0, Lcom/android/server/ConnectivityService;->mGlobalProxy:Landroid/net/ProxyInfo;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@5
    monitor-exit v0

    #@6
    return-object v1

    #@7
    .line 3003
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
    .line 2710
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->enforceTetherAccessPermission()V

    #@3
    .line 2712
    invoke-virtual {p0}, Lcom/android/server/ConnectivityService;->isTetheringSupported()Z

    #@6
    move-result v0

    #@7
    if-eqz v0, :cond_0

    #@9
    .line 2713
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mTethering:Lcom/android/server/connectivity/Tethering;

    #@b
    invoke-virtual {v0, p1}, Lcom/android/server/connectivity/Tethering;->getLastTetherError(Ljava/lang/String;)I

    #@e
    move-result v0

    #@f
    return v0

    #@10
    .line 2715
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
    .line 3239
    invoke-direct {p0, p1}, Lcom/android/server/ConnectivityService;->enforceCrossUserPermission(I)V

    #@3
    .line 3241
    iget-object v1, p0, Lcom/android/server/ConnectivityService;->mVpns:Landroid/util/SparseArray;

    #@5
    monitor-enter v1

    #@6
    .line 3242
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
    .line 3241
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
    .line 1228
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->enforceAccessPermission()V

    #@4
    .line 1229
    invoke-direct {p0, p1}, Lcom/android/server/ConnectivityService;->getNetworkAgentInfoForNetwork(Landroid/net/Network;)Lcom/android/server/connectivity/NetworkAgentInfo;

    #@7
    move-result-object v0

    #@8
    .line 1230
    .local v0, "nai":Lcom/android/server/connectivity/NetworkAgentInfo;
    if-eqz v0, :cond_0

    #@a
    .line 1231
    monitor-enter v0

    #@b
    .line 1232
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
    .line 1231
    :catchall_0
    move-exception v1

    #@15
    monitor-exit v0

    #@16
    throw v1

    #@17
    .line 1235
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
    .line 1215
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->enforceAccessPermission()V

    #@4
    .line 1216
    iget-object v1, p0, Lcom/android/server/ConnectivityService;->mLegacyTypeTracker:Lcom/android/server/ConnectivityService$LegacyTypeTracker;

    #@6
    invoke-virtual {v1, p1}, Lcom/android/server/ConnectivityService$LegacyTypeTracker;->getNetworkForType(I)Lcom/android/server/connectivity/NetworkAgentInfo;

    #@9
    move-result-object v0

    #@a
    .line 1217
    .local v0, "nai":Lcom/android/server/connectivity/NetworkAgentInfo;
    if-eqz v0, :cond_0

    #@c
    .line 1218
    monitor-enter v0

    #@d
    .line 1219
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
    .line 1218
    :catchall_0
    move-exception v1

    #@17
    monitor-exit v0

    #@18
    throw v1

    #@19
    .line 1222
    :cond_0
    return-object v2
.end method

.method public getMobileProvisioningUrl()Ljava/lang/String;
    .locals 5

    #@0
    .prologue
    .line 3638
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->enforceConnectivityInternalPermission()V

    #@3
    .line 3639
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->getProvisioningUrlBaseFromFile()Ljava/lang/String;

    #@6
    move-result-object v1

    #@7
    .line 3640
    .local v1, "url":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@a
    move-result v2

    #@b
    if-eqz v2, :cond_2

    #@d
    .line 3641
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
    .line 3642
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
    .line 3647
    :goto_0
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@34
    move-result v2

    #@35
    if-nez v2, :cond_1

    #@37
    .line 3648
    iget-object v2, p0, Lcom/android/server/ConnectivityService;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    #@39
    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getLine1Number()Ljava/lang/String;

    #@3c
    move-result-object v0

    #@3d
    .line 3649
    .local v0, "phoneNumber":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@40
    move-result v2

    #@41
    if-eqz v2, :cond_0

    #@43
    .line 3650
    const-string/jumbo v0, "0000000000"

    #@46
    .line 3652
    :cond_0
    const/4 v2, 0x3

    #@47
    new-array v2, v2, [Ljava/lang/Object;

    #@49
    .line 3653
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
    .line 3654
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
    .line 3655
    const/4 v3, 0x2

    #@5c
    aput-object v0, v2, v3

    #@5e
    .line 3652
    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@61
    move-result-object v1

    #@62
    .line 3658
    .end local v0    # "phoneNumber":Ljava/lang/String;
    :cond_1
    return-object v1

    #@63
    .line 3644
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
    .line 1251
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->enforceAccessPermission()V

    #@3
    .line 1252
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
    .line 1121
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->enforceAccessPermission()V

    #@4
    .line 1122
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    #@7
    move-result v1

    #@8
    .line 1123
    .local v1, "uid":I
    invoke-direct {p0, p1, v1, v3}, Lcom/android/server/ConnectivityService;->getFilteredNetworkState(IIZ)Landroid/net/NetworkState;

    #@b
    move-result-object v0

    #@c
    .line 1124
    .local v0, "state":Landroid/net/NetworkState;
    iget-object v2, v0, Landroid/net/NetworkState;->linkProperties:Landroid/net/LinkProperties;

    #@e
    invoke-direct {p0, v2, v1, v3}, Lcom/android/server/ConnectivityService;->isNetworkWithLinkPropertiesBlocked(Landroid/net/LinkProperties;IZ)Z

    #@11
    move-result v2

    #@12
    if-nez v2, :cond_0

    #@14
    .line 1125
    iget-object v2, v0, Landroid/net/NetworkState;->network:Landroid/net/Network;

    #@16
    return-object v2

    #@17
    .line 1127
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
    .line 1076
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->enforceAccessPermission()V

    #@4
    .line 1077
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    #@7
    move-result v1

    #@8
    .line 1078
    .local v1, "uid":I
    invoke-direct {p0, v1}, Lcom/android/server/ConnectivityService;->getVpnUnderlyingNetworks(I)[Landroid/net/Network;

    #@b
    move-result-object v2

    #@c
    if-eqz v2, :cond_0

    #@e
    .line 1082
    invoke-direct {p0, v1}, Lcom/android/server/ConnectivityService;->getUnfilteredActiveNetworkState(I)Landroid/net/NetworkState;

    #@11
    move-result-object v0

    #@12
    .line 1083
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
    .line 1084
    invoke-direct {p0, v0, v1, v3}, Lcom/android/server/ConnectivityService;->filterNetworkStateForUid(Landroid/net/NetworkState;IZ)V

    #@21
    .line 1085
    iget-object v2, v0, Landroid/net/NetworkState;->networkInfo:Landroid/net/NetworkInfo;

    #@23
    return-object v2

    #@24
    .line 1088
    .end local v0    # "state":Landroid/net/NetworkState;
    :cond_0
    invoke-direct {p0, p1, v1, v3}, Lcom/android/server/ConnectivityService;->getFilteredNetworkState(IIZ)Landroid/net/NetworkState;

    #@27
    move-result-object v0

    #@28
    .line 1089
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
    .line 1094
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->enforceAccessPermission()V

    #@4
    .line 1095
    invoke-direct {p0, p1}, Lcom/android/server/ConnectivityService;->getNetworkAgentInfoForNetwork(Landroid/net/Network;)Lcom/android/server/connectivity/NetworkAgentInfo;

    #@7
    move-result-object v0

    #@8
    .line 1096
    .local v0, "nai":Lcom/android/server/connectivity/NetworkAgentInfo;
    if-eqz v0, :cond_0

    #@a
    .line 1097
    invoke-virtual {v0}, Lcom/android/server/connectivity/NetworkAgentInfo;->getNetworkState()Landroid/net/NetworkState;

    #@d
    move-result-object v1

    #@e
    .line 1098
    .local v1, "state":Landroid/net/NetworkState;
    invoke-direct {p0, v1, p2, p3}, Lcom/android/server/ConnectivityService;->filterNetworkStateForUid(Landroid/net/NetworkState;IZ)V

    #@11
    .line 1099
    iget-object v2, v1, Landroid/net/NetworkState;->networkInfo:Landroid/net/NetworkInfo;

    #@13
    return-object v2

    #@14
    .line 1101
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
    .line 2882
    if-nez p1, :cond_0

    #@3
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->getDefaultProxy()Landroid/net/ProxyInfo;

    #@6
    move-result-object v3

    #@7
    return-object v3

    #@8
    .line 2883
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/ConnectivityService;->getGlobalProxy()Landroid/net/ProxyInfo;

    #@b
    move-result-object v0

    #@c
    .line 2884
    .local v0, "globalProxy":Landroid/net/ProxyInfo;
    if-eqz v0, :cond_1

    #@e
    return-object v0

    #@f
    .line 2885
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
    .line 2888
    :cond_2
    invoke-direct {p0, p1}, Lcom/android/server/ConnectivityService;->getNetworkAgentInfoForNetwork(Landroid/net/Network;)Lcom/android/server/connectivity/NetworkAgentInfo;

    #@1f
    move-result-object v1

    #@20
    .line 2889
    .local v1, "nai":Lcom/android/server/connectivity/NetworkAgentInfo;
    if-nez v1, :cond_3

    #@22
    return-object v5

    #@23
    .line 2890
    :cond_3
    monitor-enter v1

    #@24
    .line 2891
    :try_start_0
    iget-object v3, v1, Lcom/android/server/connectivity/NetworkAgentInfo;->linkProperties:Landroid/net/LinkProperties;

    #@26
    invoke-virtual {v3}, Landroid/net/LinkProperties;->getHttpProxy()Landroid/net/ProxyInfo;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@29
    move-result-object v2

    #@2a
    .line 2892
    .local v2, "proxyInfo":Landroid/net/ProxyInfo;
    if-nez v2, :cond_4

    #@2c
    monitor-exit v1

    #@2d
    return-object v5

    #@2e
    .line 2893
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
    .line 2890
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
    .line 1797
    const-string/jumbo v3, "android.telephony.apn-restore"

    #@3
    .line 1796
    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    #@6
    move-result-object v1

    #@7
    .line 1798
    .local v1, "restoreDefaultNetworkDelayStr":Ljava/lang/String;
    if-eqz v1, :cond_0

    #@9
    .line 1799
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    #@c
    move-result v3

    #@d
    if-eqz v3, :cond_0

    #@f
    .line 1801
    :try_start_0
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    #@12
    move-result v3

    #@13
    return v3

    #@14
    .line 1802
    :catch_0
    move-exception v0

    #@15
    .line 1806
    :cond_0
    const v2, 0xea60

    #@18
    .line 1808
    .local v2, "ret":I
    const/16 v3, 0x11

    #@1a
    if-gt p1, v3, :cond_1

    #@1c
    .line 1809
    iget-object v3, p0, Lcom/android/server/ConnectivityService;->mNetConfigs:[Landroid/net/NetworkConfig;

    #@1e
    aget-object v3, v3, p1

    #@20
    if-eqz v3, :cond_1

    #@22
    .line 1810
    iget-object v3, p0, Lcom/android/server/ConnectivityService;->mNetConfigs:[Landroid/net/NetworkConfig;

    #@24
    aget-object v3, v3, p1

    #@26
    iget v2, v3, Landroid/net/NetworkConfig;->restoreTime:I

    #@28
    .line 1812
    :cond_1
    return v2
.end method

.method public getTetherableBluetoothRegexs()[Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 2739
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->enforceTetherAccessPermission()V

    #@3
    .line 2740
    invoke-virtual {p0}, Lcom/android/server/ConnectivityService;->isTetheringSupported()Z

    #@6
    move-result v0

    #@7
    if-eqz v0, :cond_0

    #@9
    .line 2741
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mTethering:Lcom/android/server/connectivity/Tethering;

    #@b
    invoke-virtual {v0}, Lcom/android/server/connectivity/Tethering;->getTetherableBluetoothRegexs()[Ljava/lang/String;

    #@e
    move-result-object v0

    #@f
    return-object v0

    #@10
    .line 2743
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
    .line 2759
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->enforceTetherAccessPermission()V

    #@3
    .line 2760
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
    .line 2721
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->enforceTetherAccessPermission()V

    #@3
    .line 2722
    invoke-virtual {p0}, Lcom/android/server/ConnectivityService;->isTetheringSupported()Z

    #@6
    move-result v0

    #@7
    if-eqz v0, :cond_0

    #@9
    .line 2723
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mTethering:Lcom/android/server/connectivity/Tethering;

    #@b
    invoke-virtual {v0}, Lcom/android/server/connectivity/Tethering;->getTetherableUsbRegexs()[Ljava/lang/String;

    #@e
    move-result-object v0

    #@f
    return-object v0

    #@10
    .line 2725
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
    .line 2730
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->enforceTetherAccessPermission()V

    #@3
    .line 2731
    invoke-virtual {p0}, Lcom/android/server/ConnectivityService;->isTetheringSupported()Z

    #@6
    move-result v0

    #@7
    if-eqz v0, :cond_0

    #@9
    .line 2732
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mTethering:Lcom/android/server/connectivity/Tethering;

    #@b
    invoke-virtual {v0}, Lcom/android/server/connectivity/Tethering;->getTetherableWifiRegexs()[Ljava/lang/String;

    #@e
    move-result-object v0

    #@f
    return-object v0

    #@10
    .line 2734
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
    .line 2774
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->enforceConnectivityInternalPermission()V

    #@3
    .line 2775
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
    .line 2764
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->enforceTetherAccessPermission()V

    #@3
    .line 2765
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
    .line 2769
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->enforceTetherAccessPermission()V

    #@3
    .line 2770
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
    .line 3304
    invoke-direct {p0, p1}, Lcom/android/server/ConnectivityService;->enforceCrossUserPermission(I)V

    #@4
    .line 3305
    iget-object v2, p0, Lcom/android/server/ConnectivityService;->mVpns:Landroid/util/SparseArray;

    #@6
    monitor-enter v2

    #@7
    .line 3306
    :try_start_0
    iget-object v1, p0, Lcom/android/server/ConnectivityService;->mVpns:Landroid/util/SparseArray;

    #@9
    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    #@c
    move-result-object v0

    #@d
    check-cast v0, Lcom/android/server/connectivity/Vpn;

    #@f
    .line 3307
    .local v0, "vpn":Lcom/android/server/connectivity/Vpn;
    if-eqz v0, :cond_0

    #@11
    .line 3308
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
    .line 3310
    return-object v3

    #@19
    .line 3305
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
    .line 1291
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->enforceAccessPermission()V

    #@3
    .line 1293
    invoke-virtual {p0}, Lcom/android/server/ConnectivityService;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    #@6
    move-result-object v0

    #@7
    .line 1294
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
    .line 1193
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->enforceAccessPermission()V

    #@3
    .line 1194
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
    .line 2783
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->enforceTetherAccessPermission()V

    #@5
    .line 2784
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
    .line 2785
    .local v0, "defaultVal":I
    :goto_0
    iget-object v4, p0, Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;

    #@18
    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    #@1b
    move-result-object v4

    #@1c
    .line 2786
    const-string/jumbo v5, "tether_supported"

    #@1f
    .line 2785
    invoke-static {v4, v5, v0}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    #@22
    move-result v4

    #@23
    if-eqz v4, :cond_4

    #@25
    .line 2787
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
    .line 2788
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
    .line 2789
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
    .line 2790
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
    .line 2792
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
    .line 2788
    :cond_1
    return v3

    #@58
    .line 2784
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
    .line 2787
    goto :goto_1

    #@5c
    :cond_4
    move v1, v3

    #@5d
    .line 2785
    goto :goto_1

    #@5e
    .line 2791
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
    .line 2792
    goto :goto_3
.end method

.method public listenForNetwork(Landroid/net/NetworkCapabilities;Landroid/os/Messenger;Landroid/os/IBinder;)Landroid/net/NetworkRequest;
    .locals 6
    .param p1, "networkCapabilities"    # Landroid/net/NetworkCapabilities;
    .param p2, "messenger"    # Landroid/os/Messenger;
    .param p3, "binder"    # Landroid/os/IBinder;

    #@0
    .prologue
    .line 4114
    invoke-direct {p0, p1}, Lcom/android/server/ConnectivityService;->hasWifiNetworkListenPermission(Landroid/net/NetworkCapabilities;)Z

    #@3
    move-result v1

    #@4
    if-nez v1, :cond_0

    #@6
    .line 4115
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->enforceAccessPermission()V

    #@9
    .line 4118
    :cond_0
    new-instance v3, Landroid/net/NetworkRequest;

    #@b
    .line 4119
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
    .line 4118
    invoke-direct {v3, v1, v4, v2}, Landroid/net/NetworkRequest;-><init>(Landroid/net/NetworkCapabilities;II)V

    #@18
    .line 4120
    .local v3, "networkRequest":Landroid/net/NetworkRequest;
    new-instance v0, Lcom/android/server/ConnectivityService$NetworkRequestInfo;

    #@1a
    .line 4121
    sget-object v5, Lcom/android/server/ConnectivityService$NetworkRequestType;->LISTEN:Lcom/android/server/ConnectivityService$NetworkRequestType;

    #@1c
    move-object v1, p0

    #@1d
    move-object v2, p2

    #@1e
    move-object v4, p3

    #@1f
    .line 4120
    invoke-direct/range {v0 .. v5}, Lcom/android/server/ConnectivityService$NetworkRequestInfo;-><init>(Lcom/android/server/ConnectivityService;Landroid/os/Messenger;Landroid/net/NetworkRequest;Landroid/os/IBinder;Lcom/android/server/ConnectivityService$NetworkRequestType;)V

    #@22
    .line 4124
    .local v0, "nri":Lcom/android/server/ConnectivityService$NetworkRequestInfo;
    iget-object v1, p0, Lcom/android/server/ConnectivityService;->mHandler:Lcom/android/server/ConnectivityService$InternalHandler;

    #@24
    iget-object v2, p0, Lcom/android/server/ConnectivityService;->mHandler:Lcom/android/server/ConnectivityService$InternalHandler;

    #@26
    const/16 v4, 0x15

    #@28
    invoke-virtual {v2, v4, v0}, Lcom/android/server/ConnectivityService$InternalHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    #@2b
    move-result-object v2

    #@2c
    invoke-virtual {v1, v2}, Lcom/android/server/ConnectivityService$InternalHandler;->sendMessage(Landroid/os/Message;)Z

    #@2f
    .line 4125
    return-object v3
.end method

.method protected notifyNetworkCallback(Lcom/android/server/connectivity/NetworkAgentInfo;Lcom/android/server/ConnectivityService$NetworkRequestInfo;)V
    .locals 2
    .param p1, "nai"    # Lcom/android/server/connectivity/NetworkAgentInfo;
    .param p2, "nri"    # Lcom/android/server/ConnectivityService$NetworkRequestInfo;

    #@0
    .prologue
    .line 5014
    const v0, 0x80002

    #@3
    .line 5021
    .local v0, "notifyType":I
    iget-object v1, p2, Lcom/android/server/ConnectivityService$NetworkRequestInfo;->mPendingIntent:Landroid/app/PendingIntent;

    #@5
    if-nez v1, :cond_0

    #@7
    .line 5022
    invoke-direct {p0, p2, p1, v0}, Lcom/android/server/ConnectivityService;->callCallbackForRequest(Lcom/android/server/ConnectivityService$NetworkRequestInfo;Lcom/android/server/connectivity/NetworkAgentInfo;I)V

    #@a
    .line 5013
    :goto_0
    return-void

    #@b
    .line 5024
    :cond_0
    invoke-direct {p0, p2, p1, v0}, Lcom/android/server/ConnectivityService;->sendPendingIntentForRequest(Lcom/android/server/ConnectivityService$NetworkRequestInfo;Lcom/android/server/connectivity/NetworkAgentInfo;I)V

    #@e
    goto :goto_0
.end method

.method protected notifyNetworkCallbacks(Lcom/android/server/connectivity/NetworkAgentInfo;I)V
    .locals 4
    .param p1, "networkAgent"    # Lcom/android/server/connectivity/NetworkAgentInfo;
    .param p2, "notifyType"    # I

    #@0
    .prologue
    .line 5076
    const/4 v0, 0x0

    #@1
    .local v0, "i":I
    :goto_0
    iget-object v3, p1, Lcom/android/server/connectivity/NetworkAgentInfo;->networkRequests:Landroid/util/SparseArray;

    #@3
    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    #@6
    move-result v3

    #@7
    if-ge v0, v3, :cond_1

    #@9
    .line 5077
    iget-object v3, p1, Lcom/android/server/connectivity/NetworkAgentInfo;->networkRequests:Landroid/util/SparseArray;

    #@b
    invoke-virtual {v3, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    #@e
    move-result-object v1

    #@f
    check-cast v1, Landroid/net/NetworkRequest;

    #@11
    .line 5078
    .local v1, "nr":Landroid/net/NetworkRequest;
    iget-object v3, p0, Lcom/android/server/ConnectivityService;->mNetworkRequests:Ljava/util/HashMap;

    #@13
    invoke-virtual {v3, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@16
    move-result-object v2

    #@17
    check-cast v2, Lcom/android/server/ConnectivityService$NetworkRequestInfo;

    #@19
    .line 5080
    .local v2, "nri":Lcom/android/server/ConnectivityService$NetworkRequestInfo;
    iget-object v3, v2, Lcom/android/server/ConnectivityService$NetworkRequestInfo;->mPendingIntent:Landroid/app/PendingIntent;

    #@1b
    if-nez v3, :cond_0

    #@1d
    .line 5081
    invoke-direct {p0, v2, p1, p2}, Lcom/android/server/ConnectivityService;->callCallbackForRequest(Lcom/android/server/ConnectivityService$NetworkRequestInfo;Lcom/android/server/connectivity/NetworkAgentInfo;I)V

    #@20
    .line 5076
    :goto_1
    add-int/lit8 v0, v0, 0x1

    #@22
    goto :goto_0

    #@23
    .line 5083
    :cond_0
    invoke-direct {p0, v2, p1, p2}, Lcom/android/server/ConnectivityService;->sendPendingIntentForRequest(Lcom/android/server/ConnectivityService$NetworkRequestInfo;Lcom/android/server/connectivity/NetworkAgentInfo;I)V

    #@26
    goto :goto_1

    #@27
    .line 5074
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
    .line 4499
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
    .line 4500
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mPendingIntentWakeLock:Landroid/os/PowerManager$WakeLock;

    #@19
    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    #@1c
    .line 4503
    invoke-direct {p0, p1}, Lcom/android/server/ConnectivityService;->releasePendingNetworkRequestWithDelay(Landroid/app/PendingIntent;)V

    #@1f
    .line 4498
    return-void
.end method

.method public pendingListenForNetwork(Landroid/net/NetworkCapabilities;Landroid/app/PendingIntent;)V
    .locals 5
    .param p1, "networkCapabilities"    # Landroid/net/NetworkCapabilities;
    .param p2, "operation"    # Landroid/app/PendingIntent;

    #@0
    .prologue
    .line 4131
    const-string/jumbo v2, "PendingIntent cannot be null."

    #@3
    invoke-static {p2, v2}, Lcom/android/server/ConnectivityService;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    #@6
    .line 4132
    invoke-direct {p0, p1}, Lcom/android/server/ConnectivityService;->hasWifiNetworkListenPermission(Landroid/net/NetworkCapabilities;)Z

    #@9
    move-result v2

    #@a
    if-nez v2, :cond_0

    #@c
    .line 4133
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->enforceAccessPermission()V

    #@f
    .line 4136
    :cond_0
    new-instance v0, Landroid/net/NetworkRequest;

    #@11
    .line 4137
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
    .line 4136
    invoke-direct {v0, v2, v4, v3}, Landroid/net/NetworkRequest;-><init>(Landroid/net/NetworkCapabilities;II)V

    #@1e
    .line 4138
    .local v0, "networkRequest":Landroid/net/NetworkRequest;
    new-instance v1, Lcom/android/server/ConnectivityService$NetworkRequestInfo;

    #@20
    .line 4139
    sget-object v2, Lcom/android/server/ConnectivityService$NetworkRequestType;->LISTEN:Lcom/android/server/ConnectivityService$NetworkRequestType;

    #@22
    .line 4138
    invoke-direct {v1, p0, v0, p2, v2}, Lcom/android/server/ConnectivityService$NetworkRequestInfo;-><init>(Lcom/android/server/ConnectivityService;Landroid/net/NetworkRequest;Landroid/app/PendingIntent;Lcom/android/server/ConnectivityService$NetworkRequestType;)V

    #@25
    .line 4142
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
    .line 4130
    return-void
.end method

.method public pendingRequestForNetwork(Landroid/net/NetworkCapabilities;Landroid/app/PendingIntent;)Landroid/net/NetworkRequest;
    .locals 6
    .param p1, "networkCapabilities"    # Landroid/net/NetworkCapabilities;
    .param p2, "operation"    # Landroid/app/PendingIntent;

    #@0
    .prologue
    .line 4060
    const-string/jumbo v3, "PendingIntent cannot be null."

    #@3
    invoke-static {p2, v3}, Lcom/android/server/ConnectivityService;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    #@6
    .line 4061
    new-instance v0, Landroid/net/NetworkCapabilities;

    #@8
    invoke-direct {v0, p1}, Landroid/net/NetworkCapabilities;-><init>(Landroid/net/NetworkCapabilities;)V

    #@b
    .line 4062
    .end local p1    # "networkCapabilities":Landroid/net/NetworkCapabilities;
    .local v0, "networkCapabilities":Landroid/net/NetworkCapabilities;
    invoke-direct {p0, v0}, Lcom/android/server/ConnectivityService;->enforceNetworkRequestPermissions(Landroid/net/NetworkCapabilities;)V

    #@e
    .line 4063
    invoke-direct {p0, v0}, Lcom/android/server/ConnectivityService;->enforceMeteredApnPolicy(Landroid/net/NetworkCapabilities;)V

    #@11
    .line 4064
    invoke-direct {p0, v0}, Lcom/android/server/ConnectivityService;->ensureRequestableCapabilities(Landroid/net/NetworkCapabilities;)V

    #@14
    .line 4066
    new-instance v1, Landroid/net/NetworkRequest;

    #@16
    .line 4067
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->nextNetworkRequestId()I

    #@19
    move-result v3

    #@1a
    .line 4066
    const/4 v4, -0x1

    #@1b
    invoke-direct {v1, v0, v4, v3}, Landroid/net/NetworkRequest;-><init>(Landroid/net/NetworkCapabilities;II)V

    #@1e
    .line 4068
    .local v1, "networkRequest":Landroid/net/NetworkRequest;
    new-instance v2, Lcom/android/server/ConnectivityService$NetworkRequestInfo;

    #@20
    .line 4069
    sget-object v3, Lcom/android/server/ConnectivityService$NetworkRequestType;->REQUEST:Lcom/android/server/ConnectivityService$NetworkRequestType;

    #@22
    .line 4068
    invoke-direct {v2, p0, v1, p2, v3}, Lcom/android/server/ConnectivityService$NetworkRequestInfo;-><init>(Lcom/android/server/ConnectivityService;Landroid/net/NetworkRequest;Landroid/app/PendingIntent;Lcom/android/server/ConnectivityService$NetworkRequestType;)V

    #@25
    .line 4070
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
    .line 4071
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
    .line 4073
    return-object v1
.end method

.method public prepareVpn(Ljava/lang/String;Ljava/lang/String;I)Z
    .locals 3
    .param p1, "oldPackage"    # Ljava/lang/String;
    .param p2, "newPackage"    # Ljava/lang/String;
    .param p3, "userId"    # I

    #@0
    .prologue
    .line 3161
    invoke-direct {p0, p3}, Lcom/android/server/ConnectivityService;->enforceCrossUserPermission(I)V

    #@3
    .line 3162
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->throwIfLockdownEnabled()V

    #@6
    .line 3164
    iget-object v2, p0, Lcom/android/server/ConnectivityService;->mVpns:Landroid/util/SparseArray;

    #@8
    monitor-enter v2

    #@9
    .line 3165
    :try_start_0
    iget-object v1, p0, Lcom/android/server/ConnectivityService;->mVpns:Landroid/util/SparseArray;

    #@b
    invoke-virtual {v1, p3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    #@e
    move-result-object v0

    #@f
    check-cast v0, Lcom/android/server/connectivity/Vpn;

    #@11
    .line 3166
    .local v0, "vpn":Lcom/android/server/connectivity/Vpn;
    if-eqz v0, :cond_0

    #@13
    .line 3167
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
    .line 3169
    :cond_0
    const/4 v1, 0x0

    #@1a
    monitor-exit v2

    #@1b
    return v1

    #@1c
    .line 3164
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
    .line 4226
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->enforceConnectivityInternalPermission()V

    #@3
    .line 4230
    new-instance v1, Lcom/android/server/connectivity/NetworkAgentInfo;

    #@5
    new-instance v3, Lcom/android/internal/util/AsyncChannel;

    #@7
    invoke-direct {v3}, Lcom/android/internal/util/AsyncChannel;-><init>()V

    #@a
    .line 4231
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
    .line 4232
    new-instance v7, Landroid/net/NetworkCapabilities;

    #@23
    move-object/from16 v0, p4

    #@25
    invoke-direct {v7, v0}, Landroid/net/NetworkCapabilities;-><init>(Landroid/net/NetworkCapabilities;)V

    #@28
    .line 4233
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
    .line 4230
    invoke-direct/range {v1 .. v13}, Lcom/android/server/connectivity/NetworkAgentInfo;-><init>(Landroid/os/Messenger;Lcom/android/internal/util/AsyncChannel;Landroid/net/Network;Landroid/net/NetworkInfo;Landroid/net/LinkProperties;Landroid/net/NetworkCapabilities;ILandroid/content/Context;Landroid/os/Handler;Landroid/net/NetworkMisc;Landroid/net/NetworkRequest;Lcom/android/server/ConnectivityService;)V

    #@3c
    .line 4234
    .local v1, "nai":Lcom/android/server/connectivity/NetworkAgentInfo;
    monitor-enter p0

    #@3d
    .line 4235
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
    .line 4237
    iget-object v2, v1, Lcom/android/server/connectivity/NetworkAgentInfo;->networkMonitor:Lcom/android/server/connectivity/NetworkMonitor;

    #@46
    invoke-virtual {v2}, Lcom/android/server/connectivity/NetworkMonitor;->getValidationLogs()Landroid/util/LocalLog$ReadOnlyLocalLog;

    #@49
    move-result-object v2

    #@4a
    iget-object v3, v1, Lcom/android/server/connectivity/NetworkAgentInfo;->network:Landroid/net/Network;

    #@4c
    .line 4238
    invoke-virtual/range {p2 .. p2}, Landroid/net/NetworkInfo;->getExtraInfo()Ljava/lang/String;

    #@4f
    move-result-object v4

    #@50
    .line 4237
    invoke-direct {p0, v2, v3, v4}, Lcom/android/server/ConnectivityService;->addValidationLogs(Landroid/util/LocalLog$ReadOnlyLocalLog;Landroid/net/Network;Ljava/lang/String;)V

    #@53
    .line 4239
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
    .line 4240
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
    .line 4241
    iget-object v2, v1, Lcom/android/server/connectivity/NetworkAgentInfo;->network:Landroid/net/Network;

    #@79
    iget v2, v2, Landroid/net/Network;->netId:I

    #@7b
    return v2

    #@7c
    .line 4234
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
    .line 4153
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->enforceConnectivityInternalPermission()V

    #@3
    .line 4154
    new-instance v0, Lcom/android/server/ConnectivityService$NetworkFactoryInfo;

    #@5
    new-instance v1, Lcom/android/internal/util/AsyncChannel;

    #@7
    invoke-direct {v1}, Lcom/android/internal/util/AsyncChannel;-><init>()V

    #@a
    invoke-direct {v0, p2, p1, v1}, Lcom/android/server/ConnectivityService$NetworkFactoryInfo;-><init>(Ljava/lang/String;Landroid/os/Messenger;Lcom/android/internal/util/AsyncChannel;)V

    #@d
    .line 4155
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
    .line 4152
    return-void
.end method

.method public releaseNetworkRequest(Landroid/net/NetworkRequest;)V
    .locals 5
    .param p1, "networkRequest"    # Landroid/net/NetworkRequest;

    #@0
    .prologue
    .line 4147
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
    .line 4148
    const/4 v4, 0x0

    #@b
    .line 4147
    invoke-virtual {v1, v3, v2, v4, p1}, Lcom/android/server/ConnectivityService$InternalHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    #@e
    move-result-object v1

    #@f
    invoke-virtual {v0, v1}, Lcom/android/server/ConnectivityService$InternalHandler;->sendMessage(Landroid/os/Message;)Z

    #@12
    .line 4146
    return-void
.end method

.method public releasePendingNetworkRequest(Landroid/app/PendingIntent;)V
    .locals 5
    .param p1, "operation"    # Landroid/app/PendingIntent;

    #@0
    .prologue
    .line 4084
    const-string/jumbo v0, "PendingIntent cannot be null."

    #@3
    invoke-static {p1, v0}, Lcom/android/server/ConnectivityService;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    #@6
    .line 4085
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mHandler:Lcom/android/server/ConnectivityService$InternalHandler;

    #@8
    iget-object v1, p0, Lcom/android/server/ConnectivityService;->mHandler:Lcom/android/server/ConnectivityService$InternalHandler;

    #@a
    .line 4086
    invoke-static {}, Lcom/android/server/ConnectivityService;->getCallingUid()I

    #@d
    move-result v2

    #@e
    .line 4085
    const/16 v3, 0x1b

    #@10
    .line 4086
    const/4 v4, 0x0

    #@11
    .line 4085
    invoke-virtual {v1, v3, v2, v4, p1}, Lcom/android/server/ConnectivityService$InternalHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    #@14
    move-result-object v1

    #@15
    invoke-virtual {v0, v1}, Lcom/android/server/ConnectivityService$InternalHandler;->sendMessage(Landroid/os/Message;)Z

    #@18
    .line 4083
    return-void
.end method

.method public removeVpnAddress(Ljava/lang/String;I)Z
    .locals 3
    .param p1, "address"    # Ljava/lang/String;
    .param p2, "prefixLength"    # I

    #@0
    .prologue
    .line 5124
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->throwIfLockdownEnabled()V

    #@3
    .line 5125
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    #@6
    move-result v1

    #@7
    invoke-static {v1}, Landroid/os/UserHandle;->getUserId(I)I

    #@a
    move-result v0

    #@b
    .line 5126
    .local v0, "user":I
    iget-object v2, p0, Lcom/android/server/ConnectivityService;->mVpns:Landroid/util/SparseArray;

    #@d
    monitor-enter v2

    #@e
    .line 5127
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
    .line 5126
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
    .line 2832
    iget-object v1, p0, Lcom/android/server/ConnectivityService;->mLegacyTypeTracker:Lcom/android/server/ConnectivityService$LegacyTypeTracker;

    #@2
    invoke-virtual {v1, p1}, Lcom/android/server/ConnectivityService$LegacyTypeTracker;->getNetworkForType(I)Lcom/android/server/connectivity/NetworkAgentInfo;

    #@5
    move-result-object v0

    #@6
    .line 2833
    .local v0, "nai":Lcom/android/server/connectivity/NetworkAgentInfo;
    if-nez v0, :cond_0

    #@8
    return-void

    #@9
    .line 2834
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
    .line 2831
    return-void

    #@14
    .line 2834
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
    .line 2838
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->enforceAccessPermission()V

    #@3
    .line 2839
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->enforceInternetPermission()V

    #@6
    .line 2842
    if-nez p1, :cond_1

    #@8
    .line 2843
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->getDefaultNetwork()Lcom/android/server/connectivity/NetworkAgentInfo;

    #@b
    move-result-object v0

    #@c
    .line 2847
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
    .line 2849
    :cond_0
    return-void

    #@19
    .line 2845
    .end local v0    # "nai":Lcom/android/server/connectivity/NetworkAgentInfo;
    :cond_1
    invoke-direct {p0, p1}, Lcom/android/server/ConnectivityService;->getNetworkAgentInfoForNetwork(Landroid/net/Network;)Lcom/android/server/connectivity/NetworkAgentInfo;

    #@1c
    move-result-object v0

    #@1d
    .restart local v0    # "nai":Lcom/android/server/connectivity/NetworkAgentInfo;
    goto :goto_0

    #@1e
    .line 2848
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
    .line 2852
    iget-boolean v2, v0, Lcom/android/server/connectivity/NetworkAgentInfo;->lastValidated:Z

    #@2a
    if-ne p2, v2, :cond_3

    #@2c
    return-void

    #@2d
    .line 2853
    :cond_3
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    #@30
    move-result v1

    #@31
    .line 2855
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
    .line 2856
    const-string/jumbo v3, ") by "

    #@53
    .line 2855
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
    .line 2858
    monitor-enter v0

    #@63
    .line 2861
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
    .line 2863
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
    .line 2865
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
    .line 2837
    return-void

    #@7e
    .line 2858
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
    .line 4018
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->enforceAccessPermission()V

    #@4
    .line 4019
    const/4 v0, 0x0

    #@5
    .line 4020
    .local v0, "nai":Lcom/android/server/connectivity/NetworkAgentInfo;
    if-nez p1, :cond_0

    #@7
    .line 4021
    return v4

    #@8
    .line 4023
    :cond_0
    iget-object v2, p0, Lcom/android/server/ConnectivityService;->mNetworkForNetId:Landroid/util/SparseArray;

    #@a
    monitor-enter v2

    #@b
    .line 4024
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
    .line 4026
    if-eqz v0, :cond_1

    #@18
    .line 4027
    iget-object v1, v0, Lcom/android/server/connectivity/NetworkAgentInfo;->asyncChannel:Lcom/android/internal/util/AsyncChannel;

    #@1a
    const v2, 0x8100a

    #@1d
    invoke-virtual {v1, v2}, Lcom/android/internal/util/AsyncChannel;->sendMessage(I)V

    #@20
    .line 4028
    const/4 v1, 0x1

    #@21
    return v1

    #@22
    .line 4023
    .end local v0    # "nai":Lcom/android/server/connectivity/NetworkAgentInfo;
    :catchall_0
    move-exception v1

    #@23
    monitor-exit v2

    #@24
    throw v1

    #@25
    .line 4030
    .restart local v0    # "nai":Lcom/android/server/connectivity/NetworkAgentInfo;
    :cond_1
    return v4
.end method

.method public requestNetwork(Landroid/net/NetworkCapabilities;Landroid/os/Messenger;ILandroid/os/IBinder;I)Landroid/net/NetworkRequest;
    .locals 10
    .param p1, "networkCapabilities"    # Landroid/net/NetworkCapabilities;
    .param p2, "messenger"    # Landroid/os/Messenger;
    .param p3, "timeoutMs"    # I
    .param p4, "binder"    # Landroid/os/IBinder;
    .param p5, "legacyType"    # I

    #@0
    .prologue
    .line 3969
    if-nez p1, :cond_1

    #@2
    .line 3970
    sget-object v5, Lcom/android/server/ConnectivityService$NetworkRequestType;->TRACK_DEFAULT:Lcom/android/server/ConnectivityService$NetworkRequestType;

    #@4
    .line 3975
    .local v5, "type":Lcom/android/server/ConnectivityService$NetworkRequestType;
    :goto_0
    sget-object v1, Lcom/android/server/ConnectivityService$NetworkRequestType;->TRACK_DEFAULT:Lcom/android/server/ConnectivityService$NetworkRequestType;

    #@6
    if-ne v5, v1, :cond_2

    #@8
    .line 3976
    new-instance p1, Landroid/net/NetworkCapabilities;

    #@a
    .end local p1    # "networkCapabilities":Landroid/net/NetworkCapabilities;
    iget-object v1, p0, Lcom/android/server/ConnectivityService;->mDefaultRequest:Landroid/net/NetworkRequest;

    #@c
    iget-object v1, v1, Landroid/net/NetworkRequest;->networkCapabilities:Landroid/net/NetworkCapabilities;

    #@e
    invoke-direct {p1, v1}, Landroid/net/NetworkCapabilities;-><init>(Landroid/net/NetworkCapabilities;)V

    #@11
    .line 3977
    .restart local p1    # "networkCapabilities":Landroid/net/NetworkCapabilities;
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->enforceAccessPermission()V

    #@14
    .line 3983
    :goto_1
    invoke-direct {p0, p1}, Lcom/android/server/ConnectivityService;->ensureRequestableCapabilities(Landroid/net/NetworkCapabilities;)V

    #@17
    .line 3985
    if-ltz p3, :cond_0

    #@19
    const v1, 0x5b8d80

    #@1c
    if-le p3, v1, :cond_3

    #@1e
    .line 3986
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    #@20
    const-string/jumbo v2, "Bad timeout specified"

    #@23
    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@26
    throw v1

    #@27
    .line 3971
    .end local v5    # "type":Lcom/android/server/ConnectivityService$NetworkRequestType;
    :cond_1
    sget-object v5, Lcom/android/server/ConnectivityService$NetworkRequestType;->REQUEST:Lcom/android/server/ConnectivityService$NetworkRequestType;

    #@29
    .restart local v5    # "type":Lcom/android/server/ConnectivityService$NetworkRequestType;
    goto :goto_0

    #@2a
    .line 3979
    :cond_2
    new-instance v6, Landroid/net/NetworkCapabilities;

    #@2c
    invoke-direct {v6, p1}, Landroid/net/NetworkCapabilities;-><init>(Landroid/net/NetworkCapabilities;)V

    #@2f
    .line 3980
    .end local p1    # "networkCapabilities":Landroid/net/NetworkCapabilities;
    .local v6, "networkCapabilities":Landroid/net/NetworkCapabilities;
    invoke-direct {p0, v6}, Lcom/android/server/ConnectivityService;->enforceNetworkRequestPermissions(Landroid/net/NetworkCapabilities;)V

    #@32
    .line 3981
    invoke-direct {p0, v6}, Lcom/android/server/ConnectivityService;->enforceMeteredApnPolicy(Landroid/net/NetworkCapabilities;)V

    #@35
    move-object p1, v6

    #@36
    .end local v6    # "networkCapabilities":Landroid/net/NetworkCapabilities;
    .restart local p1    # "networkCapabilities":Landroid/net/NetworkCapabilities;
    goto :goto_1

    #@37
    .line 3989
    :cond_3
    const-string/jumbo v1, "*"

    #@3a
    .line 3990
    invoke-virtual {p1}, Landroid/net/NetworkCapabilities;->getNetworkSpecifier()Ljava/lang/String;

    #@3d
    move-result-object v2

    #@3e
    .line 3989
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@41
    move-result v1

    #@42
    if-eqz v1, :cond_4

    #@44
    .line 3991
    new-instance v1, Ljava/lang/IllegalArgumentException;

    #@46
    const-string/jumbo v2, "Invalid network specifier - must not be \'*\'"

    #@49
    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@4c
    throw v1

    #@4d
    .line 3995
    :cond_4
    new-instance v3, Landroid/net/NetworkRequest;

    #@4f
    .line 3996
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->nextNetworkRequestId()I

    #@52
    move-result v1

    #@53
    .line 3995
    invoke-direct {v3, p1, p5, v1}, Landroid/net/NetworkRequest;-><init>(Landroid/net/NetworkCapabilities;II)V

    #@56
    .line 3997
    .local v3, "networkRequest":Landroid/net/NetworkRequest;
    new-instance v0, Lcom/android/server/ConnectivityService$NetworkRequestInfo;

    #@58
    move-object v1, p0

    #@59
    move-object v2, p2

    #@5a
    move-object v4, p4

    #@5b
    invoke-direct/range {v0 .. v5}, Lcom/android/server/ConnectivityService$NetworkRequestInfo;-><init>(Lcom/android/server/ConnectivityService;Landroid/os/Messenger;Landroid/net/NetworkRequest;Landroid/os/IBinder;Lcom/android/server/ConnectivityService$NetworkRequestType;)V

    #@5e
    .line 3998
    .local v0, "nri":Lcom/android/server/ConnectivityService$NetworkRequestInfo;
    new-instance v1, Ljava/lang/StringBuilder;

    #@60
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@63
    const-string/jumbo v2, "requestNetwork for "

    #@66
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@69
    move-result-object v1

    #@6a
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@6d
    move-result-object v1

    #@6e
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@71
    move-result-object v1

    #@72
    invoke-static {v1}, Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V

    #@75
    .line 4000
    iget-object v1, p0, Lcom/android/server/ConnectivityService;->mHandler:Lcom/android/server/ConnectivityService$InternalHandler;

    #@77
    iget-object v2, p0, Lcom/android/server/ConnectivityService;->mHandler:Lcom/android/server/ConnectivityService$InternalHandler;

    #@79
    const/16 v4, 0x13

    #@7b
    invoke-virtual {v2, v4, v0}, Lcom/android/server/ConnectivityService$InternalHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    #@7e
    move-result-object v2

    #@7f
    invoke-virtual {v1, v2}, Lcom/android/server/ConnectivityService$InternalHandler;->sendMessage(Landroid/os/Message;)Z

    #@82
    .line 4001
    if-lez p3, :cond_5

    #@84
    .line 4002
    iget-object v1, p0, Lcom/android/server/ConnectivityService;->mHandler:Lcom/android/server/ConnectivityService$InternalHandler;

    #@86
    iget-object v2, p0, Lcom/android/server/ConnectivityService;->mHandler:Lcom/android/server/ConnectivityService$InternalHandler;

    #@88
    const/16 v4, 0x14

    #@8a
    invoke-virtual {v2, v4, v0}, Lcom/android/server/ConnectivityService$InternalHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    #@8d
    move-result-object v2

    #@8e
    .line 4003
    int-to-long v8, p3

    #@8f
    .line 4002
    invoke-virtual {v1, v2, v8, v9}, Lcom/android/server/ConnectivityService$InternalHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    #@92
    .line 4005
    :cond_5
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
    .line 1315
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->enforceChangePermission()V

    #@4
    .line 1316
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
    .line 1317
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->enforceConnectivityInternalPermission()V

    #@13
    .line 1322
    :cond_0
    :try_start_0
    invoke-static {p2}, Ljava/net/InetAddress;->getByAddress([B)Ljava/net/InetAddress;
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0

    #@16
    move-result-object v0

    #@17
    .line 1328
    .local v0, "addr":Ljava/net/InetAddress;
    invoke-static {p1}, Landroid/net/ConnectivityManager;->isNetworkTypeValid(I)Z

    #@1a
    move-result v10

    #@1b
    if-nez v10, :cond_1

    #@1d
    .line 1329
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
    .line 1330
    return v12

    #@35
    .line 1323
    .end local v0    # "addr":Ljava/net/InetAddress;
    :catch_0
    move-exception v1

    #@36
    .line 1324
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
    .line 1325
    return v12

    #@52
    .line 1333
    .end local v1    # "e":Ljava/net/UnknownHostException;
    .restart local v0    # "addr":Ljava/net/InetAddress;
    :cond_1
    iget-object v10, p0, Lcom/android/server/ConnectivityService;->mLegacyTypeTracker:Lcom/android/server/ConnectivityService$LegacyTypeTracker;

    #@54
    invoke-virtual {v10, p1}, Lcom/android/server/ConnectivityService$LegacyTypeTracker;->getNetworkForType(I)Lcom/android/server/connectivity/NetworkAgentInfo;

    #@57
    move-result-object v3

    #@58
    .line 1334
    .local v3, "nai":Lcom/android/server/connectivity/NetworkAgentInfo;
    if-nez v3, :cond_3

    #@5a
    .line 1335
    iget-object v10, p0, Lcom/android/server/ConnectivityService;->mLegacyTypeTracker:Lcom/android/server/ConnectivityService$LegacyTypeTracker;

    #@5c
    invoke-virtual {v10, p1}, Lcom/android/server/ConnectivityService$LegacyTypeTracker;->isTypeSupported(I)Z

    #@5f
    move-result v10

    #@60
    if-nez v10, :cond_2

    #@62
    .line 1336
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
    .line 1340
    :goto_0
    return v12

    #@7a
    .line 1338
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
    .line 1344
    :cond_3
    monitor-enter v3

    #@93
    .line 1345
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
    .line 1348
    sget-object v10, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    #@9c
    if-eq v5, v10, :cond_4

    #@9e
    sget-object v10, Landroid/net/NetworkInfo$DetailedState;->CAPTIVE_PORTAL_CHECK:Landroid/net/NetworkInfo$DetailedState;

    #@a0
    if-eq v5, v10, :cond_4

    #@a2
    .line 1354
    return v12

    #@a3
    .line 1344
    .end local v5    # "netState":Landroid/net/NetworkInfo$DetailedState;
    :catchall_0
    move-exception v10

    #@a4
    monitor-exit v3

    #@a5
    throw v10

    #@a6
    .line 1357
    .restart local v5    # "netState":Landroid/net/NetworkInfo$DetailedState;
    :cond_4
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    #@a9
    move-result v7

    #@aa
    .line 1358
    .local v7, "uid":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    #@ad
    move-result-wide v8

    #@ae
    .line 1362
    .local v8, "token":J
    :try_start_2
    monitor-enter v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    #@af
    .line 1363
    :try_start_3
    iget-object v2, v3, Lcom/android/server/connectivity/NetworkAgentInfo;->linkProperties:Landroid/net/LinkProperties;

    #@b1
    .line 1364
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
    .line 1366
    invoke-direct {p0, v2, v0, v4, v7}, Lcom/android/server/ConnectivityService;->addLegacyRouteToHost(Landroid/net/LinkProperties;Ljava/net/InetAddress;II)Z

    #@b9
    move-result v6

    #@ba
    .line 1367
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
    .line 1370
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@d4
    .line 1368
    return v6

    #@d5
    .line 1362
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
    .line 1369
    :catchall_2
    move-exception v10

    #@d9
    .line 1370
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@dc
    .line 1369
    throw v10
.end method

.method protected reserveNetId()I
    .locals 5

    #@0
    .prologue
    const v4, 0xffff

    #@3
    .line 832
    iget-object v3, p0, Lcom/android/server/ConnectivityService;->mNetworkForNetId:Landroid/util/SparseArray;

    #@5
    monitor-enter v3

    #@6
    .line 833
    const/16 v0, 0x64

    #@8
    .local v0, "i":I
    :goto_0
    if-gt v0, v4, :cond_2

    #@a
    .line 834
    :try_start_0
    iget v1, p0, Lcom/android/server/ConnectivityService;->mNextNetId:I

    #@c
    .line 835
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
    .line 837
    :cond_0
    iget-object v2, p0, Lcom/android/server/ConnectivityService;->mNetIdInUse:Landroid/util/SparseBooleanArray;

    #@1a
    invoke-virtual {v2, v1}, Landroid/util/SparseBooleanArray;->get(I)Z

    #@1d
    move-result v2

    #@1e
    if-nez v2, :cond_1

    #@20
    .line 838
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
    .line 839
    return v1

    #@28
    .line 833
    :cond_1
    add-int/lit8 v0, v0, 0x1

    #@2a
    goto :goto_0

    #@2b
    .end local v1    # "netId":I
    :cond_2
    monitor-exit v3

    #@2c
    .line 843
    new-instance v2, Ljava/lang/IllegalStateException;

    #@2e
    const-string/jumbo v3, "No free netIds"

    #@31
    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@34
    throw v2

    #@35
    .line 832
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
    .line 1523
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->enforceConnectivityInternalPermission()V

    #@3
    .line 1524
    const-string/jumbo v0, "android.net.conn.CONNECTIVITY_CHANGE"

    #@6
    invoke-direct {p0, p1, v0}, Lcom/android/server/ConnectivityService;->sendGeneralBroadcast(Landroid/net/NetworkInfo;Ljava/lang/String;)V

    #@9
    .line 1522
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
    .line 2493
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->enforceConnectivityInternalPermission()V

    #@5
    .line 2494
    iget-object v3, p0, Lcom/android/server/ConnectivityService;->mHandler:Lcom/android/server/ConnectivityService$InternalHandler;

    #@7
    iget-object v4, p0, Lcom/android/server/ConnectivityService;->mHandler:Lcom/android/server/ConnectivityService$InternalHandler;

    #@9
    .line 2495
    if-eqz p2, :cond_0

    #@b
    move v2, v0

    #@c
    :goto_0
    if-eqz p3, :cond_1

    #@e
    .line 2494
    :goto_1
    const/16 v1, 0x1c

    #@10
    invoke-virtual {v4, v1, v2, v0, p1}, Lcom/android/server/ConnectivityService$InternalHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    #@13
    move-result-object v0

    #@14
    invoke-virtual {v3, v0}, Lcom/android/server/ConnectivityService$InternalHandler;->sendMessage(Landroid/os/Message;)Z

    #@17
    .line 2492
    return-void

    #@18
    :cond_0
    move v2, v1

    #@19
    .line 2495
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
    .line 3675
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->enforceConnectivityInternalPermission()V

    #@3
    .line 3676
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    #@6
    move-result-wide v2

    #@7
    .line 3678
    .local v2, "ident":J
    :try_start_0
    iget-object v4, p0, Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;

    #@9
    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    #@c
    move-result-object v0

    #@d
    .line 3679
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
    .line 3680
    new-instance v1, Landroid/content/Intent;

    #@18
    const-string/jumbo v4, "android.intent.action.AIRPLANE_MODE"

    #@1b
    invoke-direct {v1, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    #@1e
    .line 3681
    .local v1, "intent":Landroid/content/Intent;
    const-string/jumbo v4, "state"

    #@21
    invoke-virtual {v1, v4, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    #@24
    .line 3682
    iget-object v4, p0, Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;

    #@26
    sget-object v5, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    #@28
    invoke-virtual {v4, v1, v5}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@2b
    .line 3684
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@2e
    .line 3674
    return-void

    #@2f
    .line 3679
    .end local v1    # "intent":Landroid/content/Intent;
    :cond_0
    const/4 v4, 0x0

    #@30
    goto :goto_0

    #@31
    .line 3683
    .end local v0    # "cr":Landroid/content/ContentResolver;
    :catchall_0
    move-exception v4

    #@32
    .line 3684
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@35
    .line 3683
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
    .line 3404
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->enforceConnectivityInternalPermission()V

    #@4
    .line 3405
    invoke-direct {p0, p1}, Lcom/android/server/ConnectivityService;->enforceCrossUserPermission(I)V

    #@7
    .line 3408
    invoke-static {}, Lcom/android/server/net/LockdownVpnTracker;->isEnabled()Z

    #@a
    move-result v1

    #@b
    if-eqz v1, :cond_0

    #@d
    .line 3409
    return v5

    #@e
    .line 3412
    :cond_0
    iget-object v2, p0, Lcom/android/server/ConnectivityService;->mVpns:Landroid/util/SparseArray;

    #@10
    monitor-enter v2

    #@11
    .line 3413
    :try_start_0
    iget-object v1, p0, Lcom/android/server/ConnectivityService;->mVpns:Landroid/util/SparseArray;

    #@13
    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    #@16
    move-result-object v0

    #@17
    check-cast v0, Lcom/android/server/connectivity/Vpn;

    #@19
    .line 3414
    .local v0, "vpn":Lcom/android/server/connectivity/Vpn;
    if-nez v0, :cond_1

    #@1b
    .line 3415
    const-string/jumbo v1, "ConnectivityService"

    #@1e
    new-instance v3, Ljava/lang/StringBuilder;

    #@20
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@23
    const-string/jumbo v4, "User "

    #@26
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@29
    move-result-object v3

    #@2a
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@2d
    move-result-object v3

    #@2e
    const-string/jumbo v4, " has no Vpn configuration"

    #@31
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@34
    move-result-object v3

    #@35
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@38
    move-result-object v3

    #@39
    invoke-static {v1, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@3c
    monitor-exit v2

    #@3d
    .line 3416
    return v5

    #@3e
    .line 3418
    :cond_1
    :try_start_1
    invoke-virtual {v0, p2, p3}, Lcom/android/server/connectivity/Vpn;->setAlwaysOnPackage(Ljava/lang/String;Z)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@41
    move-result v1

    #@42
    if-nez v1, :cond_2

    #@44
    monitor-exit v2

    #@45
    .line 3419
    return v5

    #@46
    .line 3421
    :cond_2
    :try_start_2
    invoke-direct {p0, p1}, Lcom/android/server/ConnectivityService;->startAlwaysOnVpn(I)Z

    #@49
    move-result v1

    #@4a
    if-nez v1, :cond_3

    #@4c
    .line 3422
    const/4 v1, 0x0

    #@4d
    const/4 v3, 0x0

    #@4e
    invoke-virtual {v0, v1, v3}, Lcom/android/server/connectivity/Vpn;->setAlwaysOnPackage(Ljava/lang/String;Z)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@51
    monitor-exit v2

    #@52
    .line 3423
    return v5

    #@53
    .line 3426
    :cond_3
    :try_start_3
    invoke-virtual {v0}, Lcom/android/server/connectivity/Vpn;->saveAlwaysOnPackage()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@56
    monitor-exit v2

    #@57
    .line 3428
    const/4 v1, 0x1

    #@58
    return v1

    #@59
    .line 3412
    .end local v0    # "vpn":Lcom/android/server/connectivity/Vpn;
    :catchall_0
    move-exception v1

    #@5a
    monitor-exit v2

    #@5b
    throw v1
.end method

.method public setGlobalProxy(Landroid/net/ProxyInfo;)V
    .locals 10
    .param p1, "proxyProperties"    # Landroid/net/ProxyInfo;

    #@0
    .prologue
    .line 2926
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->enforceConnectivityInternalPermission()V

    #@3
    .line 2928
    iget-object v8, p0, Lcom/android/server/ConnectivityService;->mProxyLock:Ljava/lang/Object;

    #@5
    monitor-enter v8

    #@6
    .line 2929
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
    .line 2930
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
    .line 2931
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
    .line 2933
    :cond_2
    :try_start_3
    const-string/jumbo v1, ""

    #@29
    .line 2934
    .local v1, "host":Ljava/lang/String;
    const/4 v3, 0x0

    #@2a
    .line 2935
    .local v3, "port":I
    const-string/jumbo v0, ""

    #@2d
    .line 2936
    .local v0, "exclList":Ljava/lang/String;
    const-string/jumbo v2, ""

    #@30
    .line 2937
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
    .line 2938
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
    .line 2952
    :cond_3
    const/4 v5, 0x0

    #@49
    iput-object v5, p0, Lcom/android/server/ConnectivityService;->mGlobalProxy:Landroid/net/ProxyInfo;

    #@4b
    .line 2954
    :cond_4
    :goto_0
    iget-object v5, p0, Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;

    #@4d
    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    #@50
    move-result-object v4

    #@51
    .line 2955
    .local v4, "res":Landroid/content/ContentResolver;
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    #@54
    move-result-wide v6

    #@55
    .line 2957
    .local v6, "token":J
    :try_start_4
    const-string/jumbo v5, "global_http_proxy_host"

    #@58
    invoke-static {v4, v5, v1}, Landroid/provider/Settings$Global;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    #@5b
    .line 2958
    const-string/jumbo v5, "global_http_proxy_port"

    #@5e
    invoke-static {v4, v5, v3}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    #@61
    .line 2959
    const-string/jumbo v5, "global_http_proxy_exclusion_list"

    #@64
    invoke-static {v4, v5, v0}, Landroid/provider/Settings$Global;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    #@67
    .line 2961
    const-string/jumbo v5, "global_proxy_pac_url"

    #@6a
    invoke-static {v4, v5, v2}, Landroid/provider/Settings$Global;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    #@6d
    .line 2963
    :try_start_5
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@70
    .line 2966
    iget-object v5, p0, Lcom/android/server/ConnectivityService;->mGlobalProxy:Landroid/net/ProxyInfo;

    #@72
    if-nez v5, :cond_5

    #@74
    .line 2967
    iget-object p1, p0, Lcom/android/server/ConnectivityService;->mDefaultProxy:Landroid/net/ProxyInfo;

    #@76
    .line 2969
    :cond_5
    invoke-direct {p0, p1}, Lcom/android/server/ConnectivityService;->sendProxyBroadcast(Landroid/net/ProxyInfo;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    #@79
    monitor-exit v8

    #@7a
    .line 2925
    return-void

    #@7b
    .line 2939
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
    .line 2941
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
    .line 2942
    return-void

    #@9e
    .line 2944
    :cond_7
    :try_start_7
    new-instance v5, Landroid/net/ProxyInfo;

    #@a0
    invoke-direct {v5, p1}, Landroid/net/ProxyInfo;-><init>(Landroid/net/ProxyInfo;)V

    #@a3
    iput-object v5, p0, Lcom/android/server/ConnectivityService;->mGlobalProxy:Landroid/net/ProxyInfo;

    #@a5
    .line 2945
    iget-object v5, p0, Lcom/android/server/ConnectivityService;->mGlobalProxy:Landroid/net/ProxyInfo;

    #@a7
    invoke-virtual {v5}, Landroid/net/ProxyInfo;->getHost()Ljava/lang/String;

    #@aa
    move-result-object v1

    #@ab
    .line 2946
    iget-object v5, p0, Lcom/android/server/ConnectivityService;->mGlobalProxy:Landroid/net/ProxyInfo;

    #@ad
    invoke-virtual {v5}, Landroid/net/ProxyInfo;->getPort()I

    #@b0
    move-result v3

    #@b1
    .line 2947
    iget-object v5, p0, Lcom/android/server/ConnectivityService;->mGlobalProxy:Landroid/net/ProxyInfo;

    #@b3
    invoke-virtual {v5}, Landroid/net/ProxyInfo;->getExclusionListAsString()Ljava/lang/String;

    #@b6
    move-result-object v0

    #@b7
    .line 2948
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
    .line 2949
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
    .line 2962
    .restart local v4    # "res":Landroid/content/ContentResolver;
    .restart local v6    # "token":J
    :catchall_0
    move-exception v5

    #@cd
    .line 2963
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@d0
    .line 2962
    throw v5
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    #@d1
    .line 2928
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
    .line 3664
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->enforceConnectivityInternalPermission()V

    #@3
    .line 3665
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    #@6
    move-result-wide v0

    #@7
    .line 3667
    .local v0, "ident":J
    :try_start_0
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/ConnectivityService;->setProvNotificationVisible(ZILjava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@a
    .line 3669
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@d
    .line 3663
    return-void

    #@e
    .line 3668
    :catchall_0
    move-exception v2

    #@f
    .line 3669
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@12
    .line 3668
    throw v2
.end method

.method public setUnderlyingNetworksForVpn([Landroid/net/Network;)Z
    .locals 4
    .param p1, "networks"    # [Landroid/net/Network;

    #@0
    .prologue
    .line 5133
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->throwIfLockdownEnabled()V

    #@3
    .line 5134
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    #@6
    move-result v2

    #@7
    invoke-static {v2}, Landroid/os/UserHandle;->getUserId(I)I

    #@a
    move-result v1

    #@b
    .line 5136
    .local v1, "user":I
    iget-object v3, p0, Lcom/android/server/ConnectivityService;->mVpns:Landroid/util/SparseArray;

    #@d
    monitor-enter v3

    #@e
    .line 5137
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
    .line 5139
    if-eqz v0, :cond_0

    #@1d
    .line 5140
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->notifyIfacesChangedForNetworkStats()V

    #@20
    .line 5142
    :cond_0
    return v0

    #@21
    .line 5136
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
    .line 2748
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;

    #@2
    invoke-static {v0}, Landroid/net/ConnectivityManager;->enforceTetherChangePermission(Landroid/content/Context;)V

    #@5
    .line 2749
    invoke-virtual {p0}, Lcom/android/server/ConnectivityService;->isTetheringSupported()Z

    #@8
    move-result v0

    #@9
    if-eqz v0, :cond_0

    #@b
    .line 2750
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mTethering:Lcom/android/server/connectivity/Tethering;

    #@d
    invoke-virtual {v0, p1}, Lcom/android/server/connectivity/Tethering;->setUsbTethering(Z)I

    #@10
    move-result v0

    #@11
    return v0

    #@12
    .line 2752
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
    .line 3189
    invoke-direct {p0, p2}, Lcom/android/server/ConnectivityService;->enforceCrossUserPermission(I)V

    #@3
    .line 3191
    iget-object v2, p0, Lcom/android/server/ConnectivityService;->mVpns:Landroid/util/SparseArray;

    #@5
    monitor-enter v2

    #@6
    .line 3192
    :try_start_0
    iget-object v1, p0, Lcom/android/server/ConnectivityService;->mVpns:Landroid/util/SparseArray;

    #@8
    invoke-virtual {v1, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    #@b
    move-result-object v0

    #@c
    check-cast v0, Lcom/android/server/connectivity/Vpn;

    #@e
    .line 3193
    .local v0, "vpn":Lcom/android/server/connectivity/Vpn;
    if-eqz v0, :cond_0

    #@10
    .line 3194
    invoke-virtual {v0, p1, p3}, Lcom/android/server/connectivity/Vpn;->setPackageAuthorization(Ljava/lang/String;Z)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@13
    :cond_0
    monitor-exit v2

    #@14
    .line 3188
    return-void

    #@15
    .line 3191
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
    .line 3221
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->throwIfLockdownEnabled()V

    #@3
    .line 3222
    invoke-virtual {p0}, Lcom/android/server/ConnectivityService;->getActiveLinkProperties()Landroid/net/LinkProperties;

    #@6
    move-result-object v0

    #@7
    .line 3223
    .local v0, "egress":Landroid/net/LinkProperties;
    if-nez v0, :cond_0

    #@9
    .line 3224
    new-instance v2, Ljava/lang/IllegalStateException;

    #@b
    const-string/jumbo v3, "Missing active network connection"

    #@e
    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@11
    throw v2

    #@12
    .line 3226
    :cond_0
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    #@15
    move-result v2

    #@16
    invoke-static {v2}, Landroid/os/UserHandle;->getUserId(I)I

    #@19
    move-result v1

    #@1a
    .line 3227
    .local v1, "user":I
    iget-object v3, p0, Lcom/android/server/ConnectivityService;->mVpns:Landroid/util/SparseArray;

    #@1c
    monitor-enter v3

    #@1d
    .line 3228
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
    .line 3220
    return-void

    #@2c
    .line 3227
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
    .line 5153
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->enforceKeepalivePermission()V

    #@3
    .line 5154
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mKeepaliveTracker:Lcom/android/server/connectivity/KeepaliveTracker;

    #@5
    .line 5155
    invoke-direct {p0, p1}, Lcom/android/server/ConnectivityService;->getNetworkAgentInfoForNetwork(Landroid/net/Network;)Lcom/android/server/connectivity/NetworkAgentInfo;

    #@8
    move-result-object v1

    #@9
    .line 5157
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
    .line 5154
    invoke-virtual/range {v0 .. v8}, Lcom/android/server/connectivity/KeepaliveTracker;->startNattKeepalive(Lcom/android/server/connectivity/NetworkAgentInfo;ILandroid/os/Messenger;Landroid/os/IBinder;Ljava/lang/String;ILjava/lang/String;I)V

    #@15
    .line 5152
    return-void
.end method

.method public startTethering(ILandroid/os/ResultReceiver;Z)V
    .locals 2
    .param p1, "type"    # I
    .param p2, "receiver"    # Landroid/os/ResultReceiver;
    .param p3, "showProvisioningUi"    # Z

    #@0
    .prologue
    .line 2798
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;

    #@2
    invoke-static {v0}, Landroid/net/ConnectivityManager;->enforceTetherChangePermission(Landroid/content/Context;)V

    #@5
    .line 2799
    invoke-virtual {p0}, Lcom/android/server/ConnectivityService;->isTetheringSupported()Z

    #@8
    move-result v0

    #@9
    if-nez v0, :cond_0

    #@b
    .line 2800
    const/4 v0, 0x3

    #@c
    const/4 v1, 0x0

    #@d
    invoke-virtual {p2, v0, v1}, Landroid/os/ResultReceiver;->send(ILandroid/os/Bundle;)V

    #@10
    .line 2801
    return-void

    #@11
    .line 2803
    :cond_0
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mTethering:Lcom/android/server/connectivity/Tethering;

    #@13
    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/connectivity/Tethering;->startTethering(ILandroid/os/ResultReceiver;Z)V

    #@16
    .line 2797
    return-void
.end method

.method public stopKeepalive(Landroid/net/Network;I)V
    .locals 4
    .param p1, "network"    # Landroid/net/Network;
    .param p2, "slot"    # I

    #@0
    .prologue
    .line 5162
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mHandler:Lcom/android/server/ConnectivityService$InternalHandler;

    #@2
    iget-object v1, p0, Lcom/android/server/ConnectivityService;->mHandler:Lcom/android/server/ConnectivityService$InternalHandler;

    #@4
    .line 5163
    const v2, 0x8100c

    #@7
    const/4 v3, 0x0

    #@8
    .line 5162
    invoke-virtual {v1, v2, p2, v3, p1}, Lcom/android/server/ConnectivityService$InternalHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    #@b
    move-result-object v1

    #@c
    invoke-virtual {v0, v1}, Lcom/android/server/ConnectivityService$InternalHandler;->sendMessage(Landroid/os/Message;)Z

    #@f
    .line 5161
    return-void
.end method

.method public stopTethering(I)V
    .locals 1
    .param p1, "type"    # I

    #@0
    .prologue
    .line 2808
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;

    #@2
    invoke-static {v0}, Landroid/net/ConnectivityManager;->enforceTetherChangePermission(Landroid/content/Context;)V

    #@5
    .line 2809
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mTethering:Lcom/android/server/connectivity/Tethering;

    #@7
    invoke-virtual {v0, p1}, Lcom/android/server/connectivity/Tethering;->stopTethering(I)V

    #@a
    .line 2807
    return-void
.end method

.method systemReady()V
    .locals 3

    #@0
    .prologue
    .line 1613
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->loadGlobalProxy()V

    #@3
    .line 1615
    monitor-enter p0

    #@4
    .line 1616
    const/4 v0, 0x1

    #@5
    :try_start_0
    iput-boolean v0, p0, Lcom/android/server/ConnectivityService;->mSystemReady:Z

    #@7
    .line 1617
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mInitialBroadcast:Landroid/content/Intent;

    #@9
    if-eqz v0, :cond_0

    #@b
    .line 1618
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;

    #@d
    iget-object v1, p0, Lcom/android/server/ConnectivityService;->mInitialBroadcast:Landroid/content/Intent;

    #@f
    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    #@11
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->sendStickyBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    #@14
    .line 1619
    const/4 v0, 0x0

    #@15
    iput-object v0, p0, Lcom/android/server/ConnectivityService;->mInitialBroadcast:Landroid/content/Intent;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@17
    :cond_0
    monitor-exit p0

    #@18
    .line 1623
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
    .line 1627
    invoke-virtual {p0}, Lcom/android/server/ConnectivityService;->updateLockdownVpn()Z

    #@28
    .line 1630
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
    .line 1632
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
    .line 1634
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mPermissionMonitor:Lcom/android/server/connectivity/PermissionMonitor;

    #@44
    invoke-virtual {v0}, Lcom/android/server/connectivity/PermissionMonitor;->startMonitoring()V

    #@47
    .line 1612
    return-void

    #@48
    .line 1615
    :catchall_0
    move-exception v0

    #@49
    monitor-exit p0

    #@4a
    throw v0
.end method

.method public tether(Ljava/lang/String;)I
    .locals 4
    .param p1, "iface"    # Ljava/lang/String;

    #@0
    .prologue
    .line 2675
    iget-object v2, p0, Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;

    #@2
    invoke-static {v2}, Landroid/net/ConnectivityManager;->enforceTetherChangePermission(Landroid/content/Context;)V

    #@5
    .line 2676
    invoke-virtual {p0}, Lcom/android/server/ConnectivityService;->isTetheringSupported()Z

    #@8
    move-result v2

    #@9
    if-eqz v2, :cond_1

    #@b
    .line 2677
    iget-object v2, p0, Lcom/android/server/ConnectivityService;->mTethering:Lcom/android/server/connectivity/Tethering;

    #@d
    invoke-virtual {v2, p1}, Lcom/android/server/connectivity/Tethering;->tether(Ljava/lang/String;)I

    #@10
    move-result v1

    #@11
    .line 2678
    .local v1, "status":I
    if-nez v1, :cond_0

    #@13
    .line 2680
    :try_start_0
    iget-object v2, p0, Lcom/android/server/ConnectivityService;->mPolicyManager:Landroid/net/INetworkPolicyManager;

    #@15
    const/4 v3, 0x1

    #@16
    invoke-interface {v2, p1, v3}, Landroid/net/INetworkPolicyManager;->onTetheringChanged(Ljava/lang/String;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@19
    .line 2684
    :cond_0
    :goto_0
    return v1

    #@1a
    .line 2686
    .end local v1    # "status":I
    :cond_1
    const/4 v2, 0x3

    #@1b
    return v2

    #@1c
    .line 2681
    .restart local v1    # "status":I
    :catch_0
    move-exception v0

    #@1d
    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method public unregisterNetworkFactory(Landroid/os/Messenger;)V
    .locals 3
    .param p1, "messenger"    # Landroid/os/Messenger;

    #@0
    .prologue
    .line 4166
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->enforceConnectivityInternalPermission()V

    #@3
    .line 4167
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
    .line 4165
    return-void
.end method

.method public untether(Ljava/lang/String;)I
    .locals 4
    .param p1, "iface"    # Ljava/lang/String;

    #@0
    .prologue
    .line 2692
    iget-object v2, p0, Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;

    #@2
    invoke-static {v2}, Landroid/net/ConnectivityManager;->enforceTetherChangePermission(Landroid/content/Context;)V

    #@5
    .line 2694
    invoke-virtual {p0}, Lcom/android/server/ConnectivityService;->isTetheringSupported()Z

    #@8
    move-result v2

    #@9
    if-eqz v2, :cond_1

    #@b
    .line 2695
    iget-object v2, p0, Lcom/android/server/ConnectivityService;->mTethering:Lcom/android/server/connectivity/Tethering;

    #@d
    invoke-virtual {v2, p1}, Lcom/android/server/connectivity/Tethering;->untether(Ljava/lang/String;)I

    #@10
    move-result v1

    #@11
    .line 2696
    .local v1, "status":I
    if-nez v1, :cond_0

    #@13
    .line 2698
    :try_start_0
    iget-object v2, p0, Lcom/android/server/ConnectivityService;->mPolicyManager:Landroid/net/INetworkPolicyManager;

    #@15
    const/4 v3, 0x0

    #@16
    invoke-interface {v2, p1, v3}, Landroid/net/INetworkPolicyManager;->onTetheringChanged(Ljava/lang/String;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@19
    .line 2702
    :cond_0
    :goto_0
    return v1

    #@1a
    .line 2704
    .end local v1    # "status":I
    :cond_1
    const/4 v2, 0x3

    #@1b
    return v2

    #@1c
    .line 2699
    .restart local v1    # "status":I
    :catch_0
    move-exception v0

    #@1d
    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_0
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
    .line 3317
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    #@6
    move-result v0

    #@7
    const/16 v1, 0x3e8

    #@9
    if-eq v0, v1, :cond_0

    #@b
    .line 3318
    const-string/jumbo v0, "ConnectivityService"

    #@e
    const-string/jumbo v1, "Lockdown VPN only available to AID_SYSTEM"

    #@11
    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@14
    .line 3319
    return v9

    #@15
    .line 3323
    :cond_0
    invoke-static {}, Lcom/android/server/net/LockdownVpnTracker;->isEnabled()Z

    #@18
    move-result v0

    #@19
    iput-boolean v0, p0, Lcom/android/server/ConnectivityService;->mLockdownEnabled:Z

    #@1b
    .line 3324
    iget-boolean v0, p0, Lcom/android/server/ConnectivityService;->mLockdownEnabled:Z

    #@1d
    if-eqz v0, :cond_3

    #@1f
    .line 3325
    new-instance v6, Ljava/lang/String;

    #@21
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mKeyStore:Landroid/security/KeyStore;

    #@23
    const-string/jumbo v1, "LOCKDOWN_VPN"

    #@26
    invoke-virtual {v0, v1}, Landroid/security/KeyStore;->get(Ljava/lang/String;)[B

    #@29
    move-result-object v0

    #@2a
    invoke-direct {v6, v0}, Ljava/lang/String;-><init>([B)V

    #@2d
    .line 3327
    .local v6, "profileName":Ljava/lang/String;
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mKeyStore:Landroid/security/KeyStore;

    #@2f
    new-instance v1, Ljava/lang/StringBuilder;

    #@31
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@34
    const-string/jumbo v2, "VPN_"

    #@37
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3a
    move-result-object v1

    #@3b
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3e
    move-result-object v1

    #@3f
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@42
    move-result-object v1

    #@43
    invoke-virtual {v0, v1}, Landroid/security/KeyStore;->get(Ljava/lang/String;)[B

    #@46
    move-result-object v0

    #@47
    .line 3326
    invoke-static {v6, v0}, Lcom/android/internal/net/VpnProfile;->decode(Ljava/lang/String;[B)Lcom/android/internal/net/VpnProfile;

    #@4a
    move-result-object v5

    #@4b
    .line 3328
    .local v5, "profile":Lcom/android/internal/net/VpnProfile;
    if-nez v5, :cond_1

    #@4d
    .line 3329
    const-string/jumbo v0, "ConnectivityService"

    #@50
    new-instance v1, Ljava/lang/StringBuilder;

    #@52
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@55
    const-string/jumbo v2, "Lockdown VPN configured invalid profile "

    #@58
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5b
    move-result-object v1

    #@5c
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5f
    move-result-object v1

    #@60
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@63
    move-result-object v1

    #@64
    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@67
    .line 3330
    invoke-direct {p0, v3}, Lcom/android/server/ConnectivityService;->setLockdownTracker(Lcom/android/server/net/LockdownVpnTracker;)V

    #@6a
    .line 3331
    return v10

    #@6b
    .line 3333
    :cond_1
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    #@6e
    move-result v0

    #@6f
    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    #@72
    move-result v7

    #@73
    .line 3334
    .local v7, "user":I
    iget-object v8, p0, Lcom/android/server/ConnectivityService;->mVpns:Landroid/util/SparseArray;

    #@75
    monitor-enter v8

    #@76
    .line 3335
    :try_start_0
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mVpns:Landroid/util/SparseArray;

    #@78
    invoke-virtual {v0, v7}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    #@7b
    move-result-object v4

    #@7c
    check-cast v4, Lcom/android/server/connectivity/Vpn;

    #@7e
    .line 3336
    .local v4, "vpn":Lcom/android/server/connectivity/Vpn;
    if-nez v4, :cond_2

    #@80
    .line 3337
    const-string/jumbo v0, "ConnectivityService"

    #@83
    new-instance v1, Ljava/lang/StringBuilder;

    #@85
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@88
    const-string/jumbo v2, "VPN for user "

    #@8b
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@8e
    move-result-object v1

    #@8f
    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@92
    move-result-object v1

    #@93
    const-string/jumbo v2, " not ready yet. Skipping lockdown"

    #@96
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@99
    move-result-object v1

    #@9a
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@9d
    move-result-object v1

    #@9e
    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@a1
    monitor-exit v8

    #@a2
    .line 3338
    return v9

    #@a3
    .line 3340
    :cond_2
    :try_start_1
    new-instance v0, Lcom/android/server/net/LockdownVpnTracker;

    #@a5
    iget-object v1, p0, Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;

    #@a7
    iget-object v2, p0, Lcom/android/server/ConnectivityService;->mNetd:Landroid/os/INetworkManagementService;

    #@a9
    move-object v3, p0

    #@aa
    invoke-direct/range {v0 .. v5}, Lcom/android/server/net/LockdownVpnTracker;-><init>(Landroid/content/Context;Landroid/os/INetworkManagementService;Lcom/android/server/ConnectivityService;Lcom/android/server/connectivity/Vpn;Lcom/android/internal/net/VpnProfile;)V

    #@ad
    invoke-direct {p0, v0}, Lcom/android/server/ConnectivityService;->setLockdownTracker(Lcom/android/server/net/LockdownVpnTracker;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@b0
    monitor-exit v8

    #@b1
    .line 3346
    .end local v4    # "vpn":Lcom/android/server/connectivity/Vpn;
    .end local v5    # "profile":Lcom/android/internal/net/VpnProfile;
    .end local v6    # "profileName":Ljava/lang/String;
    .end local v7    # "user":I
    :goto_0
    return v10

    #@b2
    .line 3334
    .restart local v5    # "profile":Lcom/android/internal/net/VpnProfile;
    .restart local v6    # "profileName":Ljava/lang/String;
    .restart local v7    # "user":I
    :catchall_0
    move-exception v0

    #@b3
    monitor-exit v8

    #@b4
    throw v0

    #@b5
    .line 3343
    .end local v5    # "profile":Lcom/android/internal/net/VpnProfile;
    .end local v6    # "profileName":Ljava/lang/String;
    .end local v7    # "user":I
    :cond_3
    invoke-direct {p0, v3}, Lcom/android/server/ConnectivityService;->setLockdownTracker(Lcom/android/server/net/LockdownVpnTracker;)V

    #@b8
    goto :goto_0
.end method
