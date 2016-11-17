.class public Lcom/android/server/NetworkManagementService;
.super Landroid/os/INetworkManagementService$Stub;
.source "NetworkManagementService.java"

# interfaces
.implements Lcom/android/server/Watchdog$Monitor;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/NetworkManagementService$IdleTimerParams;,
        Lcom/android/server/NetworkManagementService$NetdCallbackReceiver;,
        Lcom/android/server/NetworkManagementService$NetdResponseCode;
    }
.end annotation


# static fields
.field static final DAEMON_MSG_MOBILE_CONN_REAL_TIME_INFO:I = 0x1

.field private static final DBG:Z

.field public static final DNS_RESOLVER_DEFAULT_MAX_SAMPLES:I = 0x40

.field public static final DNS_RESOLVER_DEFAULT_MIN_SAMPLES:I = 0x8

.field public static final DNS_RESOLVER_DEFAULT_SAMPLE_VALIDITY_SECONDS:I = 0x708

.field public static final DNS_RESOLVER_DEFAULT_SUCCESS_THRESHOLD_PERCENT:I = 0x19

.field public static final LIMIT_GLOBAL_ALERT:Ljava/lang/String; = "globalAlert"

.field private static final MAX_UID_RANGES_PER_COMMAND:I = 0xa

.field private static final NETD_SERVICE_NAME:Ljava/lang/String; = "netd"

.field private static final NETD_TAG:Ljava/lang/String; = "NetdConnector"

.field public static final PERMISSION_NETWORK:Ljava/lang/String; = "NETWORK"

.field public static final PERMISSION_SYSTEM:Ljava/lang/String; = "SYSTEM"

.field static final SOFT_AP_COMMAND:Ljava/lang/String; = "softap"

.field static final SOFT_AP_COMMAND_SUCCESS:Ljava/lang/String; = "Ok"

.field private static final TAG:Ljava/lang/String; = "NetworkManagement"


# instance fields
.field private mActiveAlerts:Ljava/util/HashMap;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mQuotaLock"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private mActiveIdleTimers:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/server/NetworkManagementService$IdleTimerParams;",
            ">;"
        }
    .end annotation
.end field

.field private mActiveQuotas:Ljava/util/HashMap;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mQuotaLock"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private volatile mBandwidthControlEnabled:Z

.field private mBatteryStats:Lcom/android/internal/app/IBatteryStats;

.field private mConnectedSignal:Ljava/util/concurrent/CountDownLatch;

.field private final mConnector:Lcom/android/server/NativeDaemonConnector;

.field private final mContext:Landroid/content/Context;

.field private final mDaemonHandler:Landroid/os/Handler;

.field private mDataSaverMode:Z
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mQuotaLock"
    .end annotation
.end field

.field private final mFgHandler:Landroid/os/Handler;

.field final mFirewallChainStates:Landroid/util/SparseBooleanArray;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mQuotaLock"
    .end annotation
.end field

.field private volatile mFirewallEnabled:Z

.field private mIdleTimerLock:Ljava/lang/Object;

.field private mLastPowerStateFromRadio:I

.field private mLastPowerStateFromWifi:I

.field private mMobileActivityFromRadio:Z

.field private mNetdService:Landroid/net/INetd;

.field private mNetworkActive:Z

.field private final mNetworkActivityListeners:Landroid/os/RemoteCallbackList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/RemoteCallbackList",
            "<",
            "Landroid/os/INetworkActivityListener;",
            ">;"
        }
    .end annotation
.end field

.field private final mObservers:Landroid/os/RemoteCallbackList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/RemoteCallbackList",
            "<",
            "Landroid/net/INetworkManagementEventObserver;",
            ">;"
        }
    .end annotation
.end field

.field private mQuotaLock:Ljava/lang/Object;

.field private final mStatsFactory:Lcom/android/internal/net/NetworkStatsFactory;

.field private volatile mStrictEnabled:Z

.field private final mThread:Ljava/lang/Thread;

.field private mUidAllowOnMetered:Landroid/util/SparseBooleanArray;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mQuotaLock"
    .end annotation
.end field

.field private mUidCleartextPolicy:Landroid/util/SparseIntArray;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mQuotaLock"
    .end annotation
.end field

.field private mUidFirewallDozableRules:Landroid/util/SparseIntArray;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mQuotaLock"
    .end annotation
.end field

.field private mUidFirewallPowerSaveRules:Landroid/util/SparseIntArray;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mQuotaLock"
    .end annotation
.end field

.field private mUidFirewallRules:Landroid/util/SparseIntArray;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mQuotaLock"
    .end annotation
.end field

.field private mUidFirewallStandbyRules:Landroid/util/SparseIntArray;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mQuotaLock"
    .end annotation
.end field

.field private mUidRejectOnMetered:Landroid/util/SparseBooleanArray;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mQuotaLock"
    .end annotation
.end field


# direct methods
.method static synthetic -get0(Lcom/android/server/NetworkManagementService;)Ljava/util/concurrent/CountDownLatch;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/NetworkManagementService;->mConnectedSignal:Ljava/util/concurrent/CountDownLatch;

    #@2
    return-object v0
.end method

.method static synthetic -get1(Lcom/android/server/NetworkManagementService;)Landroid/os/Handler;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/NetworkManagementService;->mFgHandler:Landroid/os/Handler;

    #@2
    return-object v0
.end method

.method static synthetic -set0(Lcom/android/server/NetworkManagementService;Ljava/util/concurrent/CountDownLatch;)Ljava/util/concurrent/CountDownLatch;
    .locals 0

    #@0
    iput-object p1, p0, Lcom/android/server/NetworkManagementService;->mConnectedSignal:Ljava/util/concurrent/CountDownLatch;

    #@2
    return-object p1
.end method

.method static synthetic -wrap0(Lcom/android/server/NetworkManagementService;)V
    .locals 0

    #@0
    invoke-direct {p0}, Lcom/android/server/NetworkManagementService;->connectNativeNetdService()V

    #@3
    return-void
.end method

.method static synthetic -wrap1(Lcom/android/server/NetworkManagementService;Ljava/lang/String;Landroid/net/LinkAddress;)V
    .locals 0
    .param p1, "iface"    # Ljava/lang/String;
    .param p2, "address"    # Landroid/net/LinkAddress;

    #@0
    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/server/NetworkManagementService;->notifyAddressRemoved(Ljava/lang/String;Landroid/net/LinkAddress;)V

    #@3
    return-void
.end method

.method static synthetic -wrap10(Lcom/android/server/NetworkManagementService;Ljava/lang/String;Landroid/net/RouteInfo;)V
    .locals 0
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "route"    # Landroid/net/RouteInfo;

    #@0
    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/server/NetworkManagementService;->notifyRouteChange(Ljava/lang/String;Landroid/net/RouteInfo;)V

    #@3
    return-void
.end method

.method static synthetic -wrap11(Lcom/android/server/NetworkManagementService;)V
    .locals 0

    #@0
    invoke-direct {p0}, Lcom/android/server/NetworkManagementService;->prepareNativeDaemon()V

    #@3
    return-void
.end method

.method static synthetic -wrap2(Lcom/android/server/NetworkManagementService;Ljava/lang/String;Landroid/net/LinkAddress;)V
    .locals 0
    .param p1, "iface"    # Ljava/lang/String;
    .param p2, "address"    # Landroid/net/LinkAddress;

    #@0
    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/server/NetworkManagementService;->notifyAddressUpdated(Ljava/lang/String;Landroid/net/LinkAddress;)V

    #@3
    return-void
.end method

.method static synthetic -wrap3(Lcom/android/server/NetworkManagementService;Ljava/lang/String;)V
    .locals 0
    .param p1, "iface"    # Ljava/lang/String;

    #@0
    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/NetworkManagementService;->notifyInterfaceAdded(Ljava/lang/String;)V

    #@3
    return-void
.end method

.method static synthetic -wrap4(Lcom/android/server/NetworkManagementService;IIJIZ)V
    .locals 1
    .param p1, "type"    # I
    .param p2, "powerState"    # I
    .param p3, "tsNanos"    # J
    .param p5, "uid"    # I
    .param p6, "fromRadio"    # Z

    #@0
    .prologue
    invoke-direct/range {p0 .. p6}, Lcom/android/server/NetworkManagementService;->notifyInterfaceClassActivity(IIJIZ)V

    #@3
    return-void
.end method

.method static synthetic -wrap5(Lcom/android/server/NetworkManagementService;Ljava/lang/String;J[Ljava/lang/String;)V
    .locals 0
    .param p1, "iface"    # Ljava/lang/String;
    .param p2, "lifetime"    # J
    .param p4, "addresses"    # [Ljava/lang/String;

    #@0
    .prologue
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/NetworkManagementService;->notifyInterfaceDnsServerInfo(Ljava/lang/String;J[Ljava/lang/String;)V

    #@3
    return-void
.end method

.method static synthetic -wrap6(Lcom/android/server/NetworkManagementService;Ljava/lang/String;Z)V
    .locals 0
    .param p1, "iface"    # Ljava/lang/String;
    .param p2, "up"    # Z

    #@0
    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/server/NetworkManagementService;->notifyInterfaceLinkStateChanged(Ljava/lang/String;Z)V

    #@3
    return-void
.end method

.method static synthetic -wrap7(Lcom/android/server/NetworkManagementService;Ljava/lang/String;)V
    .locals 0
    .param p1, "iface"    # Ljava/lang/String;

    #@0
    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/NetworkManagementService;->notifyInterfaceRemoved(Ljava/lang/String;)V

    #@3
    return-void
.end method

.method static synthetic -wrap8(Lcom/android/server/NetworkManagementService;Ljava/lang/String;Z)V
    .locals 0
    .param p1, "iface"    # Ljava/lang/String;
    .param p2, "up"    # Z

    #@0
    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/server/NetworkManagementService;->notifyInterfaceStatusChanged(Ljava/lang/String;Z)V

    #@3
    return-void
.end method

.method static synthetic -wrap9(Lcom/android/server/NetworkManagementService;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "limitName"    # Ljava/lang/String;
    .param p2, "iface"    # Ljava/lang/String;

    #@0
    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/server/NetworkManagementService;->notifyLimitReached(Ljava/lang/String;Ljava/lang/String;)V

    #@3
    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    #@0
    .prologue
    .line 127
    const-string/jumbo v0, "NetworkManagement"

    #@3
    const/4 v1, 0x3

    #@4
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    #@7
    move-result v0

    #@8
    sput-boolean v0, Lcom/android/server/NetworkManagementService;->DBG:Z

    #@a
    .line 124
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "socket"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v1, 0x1

    #@1
    .line 300
    invoke-direct {p0}, Landroid/os/INetworkManagementService$Stub;-><init>()V

    #@4
    .line 216
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    #@6
    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    #@9
    iput-object v0, p0, Lcom/android/server/NetworkManagementService;->mConnectedSignal:Ljava/util/concurrent/CountDownLatch;

    #@b
    .line 219
    new-instance v0, Landroid/os/RemoteCallbackList;

    #@d
    invoke-direct {v0}, Landroid/os/RemoteCallbackList;-><init>()V

    #@10
    .line 218
    iput-object v0, p0, Lcom/android/server/NetworkManagementService;->mObservers:Landroid/os/RemoteCallbackList;

    #@12
    .line 221
    new-instance v0, Lcom/android/internal/net/NetworkStatsFactory;

    #@14
    invoke-direct {v0}, Lcom/android/internal/net/NetworkStatsFactory;-><init>()V

    #@17
    iput-object v0, p0, Lcom/android/server/NetworkManagementService;->mStatsFactory:Lcom/android/internal/net/NetworkStatsFactory;

    #@19
    .line 223
    new-instance v0, Ljava/lang/Object;

    #@1b
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    #@1e
    iput-object v0, p0, Lcom/android/server/NetworkManagementService;->mQuotaLock:Ljava/lang/Object;

    #@20
    .line 227
    invoke-static {}, Lcom/google/android/collect/Maps;->newHashMap()Ljava/util/HashMap;

    #@23
    move-result-object v0

    #@24
    iput-object v0, p0, Lcom/android/server/NetworkManagementService;->mActiveQuotas:Ljava/util/HashMap;

    #@26
    .line 230
    invoke-static {}, Lcom/google/android/collect/Maps;->newHashMap()Ljava/util/HashMap;

    #@29
    move-result-object v0

    #@2a
    iput-object v0, p0, Lcom/android/server/NetworkManagementService;->mActiveAlerts:Ljava/util/HashMap;

    #@2c
    .line 233
    new-instance v0, Landroid/util/SparseBooleanArray;

    #@2e
    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    #@31
    iput-object v0, p0, Lcom/android/server/NetworkManagementService;->mUidRejectOnMetered:Landroid/util/SparseBooleanArray;

    #@33
    .line 236
    new-instance v0, Landroid/util/SparseBooleanArray;

    #@35
    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    #@38
    iput-object v0, p0, Lcom/android/server/NetworkManagementService;->mUidAllowOnMetered:Landroid/util/SparseBooleanArray;

    #@3a
    .line 239
    new-instance v0, Landroid/util/SparseIntArray;

    #@3c
    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    #@3f
    iput-object v0, p0, Lcom/android/server/NetworkManagementService;->mUidCleartextPolicy:Landroid/util/SparseIntArray;

    #@41
    .line 242
    new-instance v0, Landroid/util/SparseIntArray;

    #@43
    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    #@46
    iput-object v0, p0, Lcom/android/server/NetworkManagementService;->mUidFirewallRules:Landroid/util/SparseIntArray;

    #@48
    .line 248
    new-instance v0, Landroid/util/SparseIntArray;

    #@4a
    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    #@4d
    iput-object v0, p0, Lcom/android/server/NetworkManagementService;->mUidFirewallStandbyRules:Landroid/util/SparseIntArray;

    #@4f
    .line 254
    new-instance v0, Landroid/util/SparseIntArray;

    #@51
    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    #@54
    iput-object v0, p0, Lcom/android/server/NetworkManagementService;->mUidFirewallDozableRules:Landroid/util/SparseIntArray;

    #@56
    .line 260
    new-instance v0, Landroid/util/SparseIntArray;

    #@58
    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    #@5b
    iput-object v0, p0, Lcom/android/server/NetworkManagementService;->mUidFirewallPowerSaveRules:Landroid/util/SparseIntArray;

    #@5d
    .line 263
    new-instance v0, Landroid/util/SparseBooleanArray;

    #@5f
    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    #@62
    iput-object v0, p0, Lcom/android/server/NetworkManagementService;->mFirewallChainStates:Landroid/util/SparseBooleanArray;

    #@64
    .line 268
    new-instance v0, Ljava/lang/Object;

    #@66
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    #@69
    iput-object v0, p0, Lcom/android/server/NetworkManagementService;->mIdleTimerLock:Ljava/lang/Object;

    #@6b
    .line 281
    invoke-static {}, Lcom/google/android/collect/Maps;->newHashMap()Ljava/util/HashMap;

    #@6e
    move-result-object v0

    #@6f
    iput-object v0, p0, Lcom/android/server/NetworkManagementService;->mActiveIdleTimers:Ljava/util/HashMap;

    #@71
    .line 287
    const/4 v0, 0x0

    #@72
    iput-boolean v0, p0, Lcom/android/server/NetworkManagementService;->mMobileActivityFromRadio:Z

    #@74
    .line 288
    iput v1, p0, Lcom/android/server/NetworkManagementService;->mLastPowerStateFromRadio:I

    #@76
    .line 289
    iput v1, p0, Lcom/android/server/NetworkManagementService;->mLastPowerStateFromWifi:I

    #@78
    .line 292
    new-instance v0, Landroid/os/RemoteCallbackList;

    #@7a
    invoke-direct {v0}, Landroid/os/RemoteCallbackList;-><init>()V

    #@7d
    .line 291
    iput-object v0, p0, Lcom/android/server/NetworkManagementService;->mNetworkActivityListeners:Landroid/os/RemoteCallbackList;

    #@7f
    .line 301
    iput-object p1, p0, Lcom/android/server/NetworkManagementService;->mContext:Landroid/content/Context;

    #@81
    .line 304
    new-instance v0, Landroid/os/Handler;

    #@83
    invoke-static {}, Lcom/android/server/FgThread;->get()Lcom/android/server/FgThread;

    #@86
    move-result-object v1

    #@87
    invoke-virtual {v1}, Lcom/android/server/FgThread;->getLooper()Landroid/os/Looper;

    #@8a
    move-result-object v1

    #@8b
    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    #@8e
    iput-object v0, p0, Lcom/android/server/NetworkManagementService;->mFgHandler:Landroid/os/Handler;

    #@90
    .line 311
    const/4 v6, 0x0

    #@91
    .line 313
    .local v6, "wl":Landroid/os/PowerManager$WakeLock;
    new-instance v0, Lcom/android/server/NativeDaemonConnector;

    #@93
    .line 314
    new-instance v1, Lcom/android/server/NetworkManagementService$NetdCallbackReceiver;

    #@95
    const/4 v2, 0x0

    #@96
    invoke-direct {v1, p0, v2}, Lcom/android/server/NetworkManagementService$NetdCallbackReceiver;-><init>(Lcom/android/server/NetworkManagementService;Lcom/android/server/NetworkManagementService$NetdCallbackReceiver;)V

    #@99
    const-string/jumbo v4, "NetdConnector"

    #@9c
    .line 315
    invoke-static {}, Lcom/android/server/FgThread;->get()Lcom/android/server/FgThread;

    #@9f
    move-result-object v2

    #@a0
    invoke-virtual {v2}, Lcom/android/server/FgThread;->getLooper()Landroid/os/Looper;

    #@a3
    move-result-object v7

    #@a4
    .line 314
    const/16 v3, 0xa

    #@a6
    const/16 v5, 0xa0

    #@a8
    move-object v2, p2

    #@a9
    .line 313
    invoke-direct/range {v0 .. v7}, Lcom/android/server/NativeDaemonConnector;-><init>(Lcom/android/server/INativeDaemonConnectorCallbacks;Ljava/lang/String;ILjava/lang/String;ILandroid/os/PowerManager$WakeLock;Landroid/os/Looper;)V

    #@ac
    iput-object v0, p0, Lcom/android/server/NetworkManagementService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    #@ae
    .line 316
    new-instance v0, Ljava/lang/Thread;

    #@b0
    iget-object v1, p0, Lcom/android/server/NetworkManagementService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    #@b2
    const-string/jumbo v2, "NetdConnector"

    #@b5
    invoke-direct {v0, v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    #@b8
    iput-object v0, p0, Lcom/android/server/NetworkManagementService;->mThread:Ljava/lang/Thread;

    #@ba
    .line 318
    new-instance v0, Landroid/os/Handler;

    #@bc
    invoke-static {}, Lcom/android/server/FgThread;->get()Lcom/android/server/FgThread;

    #@bf
    move-result-object v1

    #@c0
    invoke-virtual {v1}, Lcom/android/server/FgThread;->getLooper()Landroid/os/Looper;

    #@c3
    move-result-object v1

    #@c4
    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    #@c7
    iput-object v0, p0, Lcom/android/server/NetworkManagementService;->mDaemonHandler:Landroid/os/Handler;

    #@c9
    .line 321
    invoke-static {}, Lcom/android/server/Watchdog;->getInstance()Lcom/android/server/Watchdog;

    #@cc
    move-result-object v0

    #@cd
    invoke-virtual {v0, p0}, Lcom/android/server/Watchdog;->addMonitor(Lcom/android/server/Watchdog$Monitor;)V

    #@d0
    .line 300
    return-void
.end method

.method private closeSocketsForFirewallChainLocked(ILjava/lang/String;)V
    .locals 12
    .param p1, "chain"    # I
    .param p2, "chainName"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v11, 0x1

    #@1
    const/4 v10, 0x0

    #@2
    .line 2139
    invoke-direct {p0, p1}, Lcom/android/server/NetworkManagementService;->getUidFirewallRules(I)Landroid/util/SparseIntArray;

    #@5
    move-result-object v5

    #@6
    .line 2140
    .local v5, "rules":Landroid/util/SparseIntArray;
    const/4 v3, 0x0

    #@7
    .line 2142
    .local v3, "numUids":I
    invoke-direct {p0, p1}, Lcom/android/server/NetworkManagementService;->getFirewallType(I)I

    #@a
    move-result v7

    #@b
    if-nez v7, :cond_3

    #@d
    .line 2144
    new-array v4, v11, [Landroid/net/UidRange;

    #@f
    .line 2147
    new-instance v7, Landroid/net/UidRange;

    #@11
    const/16 v8, 0x2710

    #@13
    const v9, 0x7fffffff

    #@16
    invoke-direct {v7, v8, v9}, Landroid/net/UidRange;-><init>(II)V

    #@19
    aput-object v7, v4, v10

    #@1b
    .line 2150
    .local v4, "ranges":[Landroid/net/UidRange;
    invoke-virtual {v5}, Landroid/util/SparseIntArray;->size()I

    #@1e
    move-result v7

    #@1f
    new-array v1, v7, [I

    #@21
    .line 2151
    .local v1, "exemptUids":[I
    const/4 v2, 0x0

    #@22
    .local v2, "i":I
    :goto_0
    array-length v7, v1

    #@23
    if-ge v2, v7, :cond_1

    #@25
    .line 2152
    invoke-virtual {v5, v2}, Landroid/util/SparseIntArray;->valueAt(I)I

    #@28
    move-result v7

    #@29
    if-ne v7, v11, :cond_0

    #@2b
    .line 2153
    invoke-virtual {v5, v2}, Landroid/util/SparseIntArray;->keyAt(I)I

    #@2e
    move-result v7

    #@2f
    aput v7, v1, v3

    #@31
    .line 2154
    add-int/lit8 v3, v3, 0x1

    #@33
    .line 2151
    :cond_0
    add-int/lit8 v2, v2, 0x1

    #@35
    goto :goto_0

    #@36
    .line 2164
    :cond_1
    array-length v7, v1

    #@37
    if-eq v3, v7, :cond_2

    #@39
    .line 2165
    invoke-static {v1, v3}, Ljava/util/Arrays;->copyOf([II)[I

    #@3c
    move-result-object v1

    #@3d
    .line 2186
    :cond_2
    :goto_1
    :try_start_0
    iget-object v7, p0, Lcom/android/server/NetworkManagementService;->mNetdService:Landroid/net/INetd;

    #@3f
    invoke-interface {v7, v4, v1}, Landroid/net/INetd;->socketDestroy([Landroid/net/UidRange;[I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/ServiceSpecificException; {:try_start_0 .. :try_end_0} :catch_0

    #@42
    .line 2133
    :goto_2
    return-void

    #@43
    .line 2169
    .end local v1    # "exemptUids":[I
    .end local v2    # "i":I
    .end local v4    # "ranges":[Landroid/net/UidRange;
    :cond_3
    invoke-virtual {v5}, Landroid/util/SparseIntArray;->size()I

    #@46
    move-result v7

    #@47
    new-array v4, v7, [Landroid/net/UidRange;

    #@49
    .line 2170
    .restart local v4    # "ranges":[Landroid/net/UidRange;
    const/4 v2, 0x0

    #@4a
    .restart local v2    # "i":I
    :goto_3
    array-length v7, v4

    #@4b
    if-ge v2, v7, :cond_5

    #@4d
    .line 2171
    invoke-virtual {v5, v2}, Landroid/util/SparseIntArray;->valueAt(I)I

    #@50
    move-result v7

    #@51
    const/4 v8, 0x2

    #@52
    if-ne v7, v8, :cond_4

    #@54
    .line 2172
    invoke-virtual {v5, v2}, Landroid/util/SparseIntArray;->keyAt(I)I

    #@57
    move-result v6

    #@58
    .line 2173
    .local v6, "uid":I
    new-instance v7, Landroid/net/UidRange;

    #@5a
    invoke-direct {v7, v6, v6}, Landroid/net/UidRange;-><init>(II)V

    #@5d
    aput-object v7, v4, v3

    #@5f
    .line 2174
    add-int/lit8 v3, v3, 0x1

    #@61
    .line 2170
    .end local v6    # "uid":I
    :cond_4
    add-int/lit8 v2, v2, 0x1

    #@63
    goto :goto_3

    #@64
    .line 2178
    :cond_5
    array-length v7, v4

    #@65
    if-eq v3, v7, :cond_6

    #@67
    .line 2179
    invoke-static {v4, v3}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    #@6a
    move-result-object v4

    #@6b
    .end local v4    # "ranges":[Landroid/net/UidRange;
    check-cast v4, [Landroid/net/UidRange;

    #@6d
    .line 2182
    .restart local v4    # "ranges":[Landroid/net/UidRange;
    :cond_6
    new-array v1, v10, [I

    #@6f
    .restart local v1    # "exemptUids":[I
    goto :goto_1

    #@70
    .line 2187
    :catch_0
    move-exception v0

    #@71
    .line 2188
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v7, "NetworkManagement"

    #@74
    new-instance v8, Ljava/lang/StringBuilder;

    #@76
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    #@79
    const-string/jumbo v9, "Error closing sockets after enabling chain "

    #@7c
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@7f
    move-result-object v8

    #@80
    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@83
    move-result-object v8

    #@84
    const-string/jumbo v9, ": "

    #@87
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@8a
    move-result-object v8

    #@8b
    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@8e
    move-result-object v8

    #@8f
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@92
    move-result-object v8

    #@93
    invoke-static {v7, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@96
    goto :goto_2
.end method

.method private connectNativeNetdService()V
    .locals 4

    #@0
    .prologue
    .line 565
    const/4 v1, 0x0

    #@1
    .line 567
    .local v1, "nativeServiceAvailable":Z
    :try_start_0
    const-string/jumbo v2, "netd"

    #@4
    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    #@7
    move-result-object v2

    #@8
    invoke-static {v2}, Landroid/net/INetd$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/INetd;

    #@b
    move-result-object v2

    #@c
    iput-object v2, p0, Lcom/android/server/NetworkManagementService;->mNetdService:Landroid/net/INetd;

    #@e
    .line 568
    iget-object v2, p0, Lcom/android/server/NetworkManagementService;->mNetdService:Landroid/net/INetd;

    #@10
    invoke-interface {v2}, Landroid/net/INetd;->isAlive()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@13
    move-result v1

    #@14
    .line 570
    .end local v1    # "nativeServiceAvailable":Z
    :goto_0
    if-nez v1, :cond_0

    #@16
    .line 571
    const-string/jumbo v2, "NetworkManagement"

    #@19
    const-string/jumbo v3, "Can\'t connect to NativeNetdService netd"

    #@1c
    invoke-static {v2, v3}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    #@1f
    .line 564
    :cond_0
    return-void

    #@20
    .line 569
    .restart local v1    # "nativeServiceAvailable":Z
    :catch_0
    move-exception v0

    #@21
    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method public static create(Landroid/content/Context;)Lcom/android/server/NetworkManagementService;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    #@0
    .prologue
    .line 338
    const-string/jumbo v0, "netd"

    #@3
    invoke-static {p0, v0}, Lcom/android/server/NetworkManagementService;->create(Landroid/content/Context;Ljava/lang/String;)Lcom/android/server/NetworkManagementService;

    #@6
    move-result-object v0

    #@7
    return-object v0
.end method

.method static create(Landroid/content/Context;Ljava/lang/String;)Lcom/android/server/NetworkManagementService;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "socket"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    #@0
    .prologue
    .line 326
    new-instance v1, Lcom/android/server/NetworkManagementService;

    #@2
    invoke-direct {v1, p0, p1}, Lcom/android/server/NetworkManagementService;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    #@5
    .line 327
    .local v1, "service":Lcom/android/server/NetworkManagementService;
    iget-object v0, v1, Lcom/android/server/NetworkManagementService;->mConnectedSignal:Ljava/util/concurrent/CountDownLatch;

    #@7
    .line 328
    .local v0, "connectedSignal":Ljava/util/concurrent/CountDownLatch;
    sget-boolean v2, Lcom/android/server/NetworkManagementService;->DBG:Z

    #@9
    if-eqz v2, :cond_0

    #@b
    const-string/jumbo v2, "NetworkManagement"

    #@e
    const-string/jumbo v3, "Creating NetworkManagementService"

    #@11
    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@14
    .line 329
    :cond_0
    iget-object v2, v1, Lcom/android/server/NetworkManagementService;->mThread:Ljava/lang/Thread;

    #@16
    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    #@19
    .line 330
    sget-boolean v2, Lcom/android/server/NetworkManagementService;->DBG:Z

    #@1b
    if-eqz v2, :cond_1

    #@1d
    const-string/jumbo v2, "NetworkManagement"

    #@20
    const-string/jumbo v3, "Awaiting socket connection"

    #@23
    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@26
    .line 331
    :cond_1
    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->await()V

    #@29
    .line 332
    sget-boolean v2, Lcom/android/server/NetworkManagementService;->DBG:Z

    #@2b
    if-eqz v2, :cond_2

    #@2d
    const-string/jumbo v2, "NetworkManagement"

    #@30
    const-string/jumbo v3, "Connected"

    #@33
    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@36
    .line 333
    :cond_2
    invoke-direct {v1}, Lcom/android/server/NetworkManagementService;->connectNativeNetdService()V

    #@39
    .line 334
    return-object v1
.end method

.method private dumpUidFirewallRule(Ljava/io/PrintWriter;Ljava/lang/String;Landroid/util/SparseIntArray;)V
    .locals 3
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "rules"    # Landroid/util/SparseIntArray;

    #@0
    .prologue
    .line 2553
    const-string/jumbo v2, "UID firewall "

    #@3
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@6
    .line 2554
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@9
    .line 2555
    const-string/jumbo v2, " rule: ["

    #@c
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@f
    .line 2556
    invoke-virtual {p3}, Landroid/util/SparseIntArray;->size()I

    #@12
    move-result v1

    #@13
    .line 2557
    .local v1, "size":I
    const/4 v0, 0x0

    #@14
    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_1

    #@16
    .line 2558
    invoke-virtual {p3, v0}, Landroid/util/SparseIntArray;->keyAt(I)I

    #@19
    move-result v2

    #@1a
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(I)V

    #@1d
    .line 2559
    const-string/jumbo v2, ":"

    #@20
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@23
    .line 2560
    invoke-virtual {p3, v0}, Landroid/util/SparseIntArray;->valueAt(I)I

    #@26
    move-result v2

    #@27
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(I)V

    #@2a
    .line 2561
    add-int/lit8 v2, v1, -0x1

    #@2c
    if-ge v0, v2, :cond_0

    #@2e
    const-string/jumbo v2, ","

    #@31
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@34
    .line 2557
    :cond_0
    add-int/lit8 v0, v0, 0x1

    #@36
    goto :goto_0

    #@37
    .line 2563
    :cond_1
    const-string/jumbo v2, "]"

    #@3a
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@3d
    .line 2552
    return-void
.end method

.method private dumpUidRuleOnQuotaLocked(Ljava/io/PrintWriter;Ljava/lang/String;Landroid/util/SparseBooleanArray;)V
    .locals 3
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "list"    # Landroid/util/SparseBooleanArray;

    #@0
    .prologue
    .line 2541
    const-string/jumbo v2, "UID bandwith control "

    #@3
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@6
    .line 2542
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@9
    .line 2543
    const-string/jumbo v2, " rule: ["

    #@c
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@f
    .line 2544
    invoke-virtual {p3}, Landroid/util/SparseBooleanArray;->size()I

    #@12
    move-result v1

    #@13
    .line 2545
    .local v1, "size":I
    const/4 v0, 0x0

    #@14
    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_1

    #@16
    .line 2546
    invoke-virtual {p3, v0}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    #@19
    move-result v2

    #@1a
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(I)V

    #@1d
    .line 2547
    add-int/lit8 v2, v1, -0x1

    #@1f
    if-ge v0, v2, :cond_0

    #@21
    const-string/jumbo v2, ","

    #@24
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@27
    .line 2545
    :cond_0
    add-int/lit8 v0, v0, 0x1

    #@29
    goto :goto_0

    #@2a
    .line 2549
    :cond_1
    const-string/jumbo v2, "]"

    #@2d
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@30
    .line 2540
    return-void
.end method

.method private static enforceSystemUid()V
    .locals 3

    #@0
    .prologue
    .line 2390
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    #@3
    move-result v0

    #@4
    .line 2391
    .local v0, "uid":I
    const/16 v1, 0x3e8

    #@6
    if-eq v0, v1, :cond_0

    #@8
    .line 2392
    new-instance v1, Ljava/lang/SecurityException;

    #@a
    const-string/jumbo v2, "Only available to AID_SYSTEM"

    #@d
    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    #@10
    throw v1

    #@11
    .line 2389
    :cond_0
    return-void
.end method

.method private excludeLinkLocal(Ljava/util/List;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/net/InterfaceAddress;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Ljava/net/InterfaceAddress;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 1348
    .local p1, "addresses":Ljava/util/List;, "Ljava/util/List<Ljava/net/InterfaceAddress;>;"
    new-instance v0, Ljava/util/ArrayList;

    #@2
    invoke-interface {p1}, Ljava/util/List;->size()I

    #@5
    move-result v3

    #@6
    invoke-direct {v0, v3}, Ljava/util/ArrayList;-><init>(I)V

    #@9
    .line 1349
    .local v0, "filtered":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/net/InterfaceAddress;>;"
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@c
    move-result-object v2

    #@d
    .local v2, "ia$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    #@10
    move-result v3

    #@11
    if-eqz v3, :cond_1

    #@13
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@16
    move-result-object v1

    #@17
    check-cast v1, Ljava/net/InterfaceAddress;

    #@19
    .line 1350
    .local v1, "ia":Ljava/net/InterfaceAddress;
    invoke-virtual {v1}, Ljava/net/InterfaceAddress;->getAddress()Ljava/net/InetAddress;

    #@1c
    move-result-object v3

    #@1d
    invoke-virtual {v3}, Ljava/net/InetAddress;->isLinkLocalAddress()Z

    #@20
    move-result v3

    #@21
    if-nez v3, :cond_0

    #@23
    .line 1351
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@26
    goto :goto_0

    #@27
    .line 1353
    .end local v1    # "ia":Ljava/net/InterfaceAddress;
    :cond_1
    return-object v0
.end method

.method private executeOrLogWithMessage(Ljava/lang/String;[Ljava/lang/Object;ILjava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "command"    # Ljava/lang/String;
    .param p2, "args"    # [Ljava/lang/Object;
    .param p3, "expectedResponseCode"    # I
    .param p4, "expectedResponseMessage"    # Ljava/lang/String;
    .param p5, "logMsg"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/NativeDaemonConnectorException;
        }
    .end annotation

    #@0
    .prologue
    .line 1476
    iget-object v1, p0, Lcom/android/server/NetworkManagementService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    #@2
    invoke-virtual {v1, p1, p2}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;

    #@5
    move-result-object v0

    #@6
    .line 1477
    .local v0, "event":Lcom/android/server/NativeDaemonEvent;
    invoke-virtual {v0}, Lcom/android/server/NativeDaemonEvent;->getCode()I

    #@9
    move-result v1

    #@a
    if-ne v1, p3, :cond_0

    #@c
    .line 1478
    invoke-virtual {v0}, Lcom/android/server/NativeDaemonEvent;->getMessage()Ljava/lang/String;

    #@f
    move-result-object v1

    #@10
    invoke-virtual {v1, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@13
    move-result v1

    #@14
    if-eqz v1, :cond_0

    #@16
    .line 1475
    :goto_0
    return-void

    #@17
    .line 1479
    :cond_0
    const-string/jumbo v1, "NetworkManagement"

    #@1a
    new-instance v2, Ljava/lang/StringBuilder;

    #@1c
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@1f
    invoke-virtual {v2, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@22
    move-result-object v2

    #@23
    const-string/jumbo v3, ": event = "

    #@26
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@29
    move-result-object v2

    #@2a
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@2d
    move-result-object v2

    #@2e
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@31
    move-result-object v2

    #@32
    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@35
    goto :goto_0
.end method

.method private getBatteryStats()Lcom/android/internal/app/IBatteryStats;
    .locals 1

    #@0
    .prologue
    .line 354
    monitor-enter p0

    #@1
    .line 355
    :try_start_0
    iget-object v0, p0, Lcom/android/server/NetworkManagementService;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    #@3
    if-eqz v0, :cond_0

    #@5
    .line 356
    iget-object v0, p0, Lcom/android/server/NetworkManagementService;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@7
    monitor-exit p0

    #@8
    return-object v0

    #@9
    .line 359
    :cond_0
    :try_start_1
    const-string/jumbo v0, "batterystats"

    #@c
    .line 358
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    #@f
    move-result-object v0

    #@10
    invoke-static {v0}, Lcom/android/internal/app/IBatteryStats$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/app/IBatteryStats;

    #@13
    move-result-object v0

    #@14
    iput-object v0, p0, Lcom/android/server/NetworkManagementService;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    #@16
    .line 360
    iget-object v0, p0, Lcom/android/server/NetworkManagementService;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@18
    monitor-exit p0

    #@19
    return-object v0

    #@1a
    .line 354
    :catchall_0
    move-exception v0

    #@1b
    monitor-exit p0

    #@1c
    throw v0
.end method

.method private getFirewallRuleName(II)Ljava/lang/String;
    .locals 2
    .param p1, "chain"    # I
    .param p2, "rule"    # I

    #@0
    .prologue
    .line 2343
    invoke-direct {p0, p1}, Lcom/android/server/NetworkManagementService;->getFirewallType(I)I

    #@3
    move-result v1

    #@4
    if-nez v1, :cond_1

    #@6
    .line 2344
    const/4 v1, 0x1

    #@7
    if-ne p2, v1, :cond_0

    #@9
    .line 2345
    const-string/jumbo v0, "allow"

    #@c
    .line 2356
    .local v0, "ruleName":Ljava/lang/String;
    :goto_0
    return-object v0

    #@d
    .line 2347
    .end local v0    # "ruleName":Ljava/lang/String;
    :cond_0
    const-string/jumbo v0, "deny"

    #@10
    .restart local v0    # "ruleName":Ljava/lang/String;
    goto :goto_0

    #@11
    .line 2350
    .end local v0    # "ruleName":Ljava/lang/String;
    :cond_1
    const/4 v1, 0x2

    #@12
    if-ne p2, v1, :cond_2

    #@14
    .line 2351
    const-string/jumbo v0, "deny"

    #@17
    .restart local v0    # "ruleName":Ljava/lang/String;
    goto :goto_0

    #@18
    .line 2353
    .end local v0    # "ruleName":Ljava/lang/String;
    :cond_2
    const-string/jumbo v0, "allow"

    #@1b
    .restart local v0    # "ruleName":Ljava/lang/String;
    goto :goto_0
.end method

.method private getFirewallType(I)I
    .locals 3
    .param p1, "chain"    # I

    #@0
    .prologue
    const/4 v1, 0x1

    #@1
    const/4 v0, 0x0

    #@2
    .line 2237
    packed-switch p1, :pswitch_data_0

    #@5
    .line 2245
    invoke-virtual {p0}, Lcom/android/server/NetworkManagementService;->isFirewallEnabled()Z

    #@8
    move-result v2

    #@9
    if-eqz v2, :cond_0

    #@b
    :goto_0
    return v0

    #@c
    .line 2239
    :pswitch_0
    return v1

    #@d
    .line 2241
    :pswitch_1
    return v0

    #@e
    .line 2243
    :pswitch_2
    return v0

    #@f
    :cond_0
    move v0, v1

    #@10
    .line 2245
    goto :goto_0

    #@11
    .line 2237
    nop

    #@12
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method private static getSecurityType(Landroid/net/wifi/WifiConfiguration;)Ljava/lang/String;
    .locals 1
    .param p0, "wifiConfig"    # Landroid/net/wifi/WifiConfiguration;

    #@0
    .prologue
    .line 1509
    invoke-virtual {p0}, Landroid/net/wifi/WifiConfiguration;->getAuthType()I

    #@3
    move-result v0

    #@4
    packed-switch v0, :pswitch_data_0

    #@7
    .line 1515
    :pswitch_0
    const-string/jumbo v0, "open"

    #@a
    return-object v0

    #@b
    .line 1511
    :pswitch_1
    const-string/jumbo v0, "wpa-psk"

    #@e
    return-object v0

    #@f
    .line 1513
    :pswitch_2
    const-string/jumbo v0, "wpa2-psk"

    #@12
    return-object v0

    #@13
    .line 1509
    nop

    #@14
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method private getUidFirewallRules(I)Landroid/util/SparseIntArray;
    .locals 3
    .param p1, "chain"    # I

    #@0
    .prologue
    .line 2360
    packed-switch p1, :pswitch_data_0

    #@3
    .line 2370
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@5
    new-instance v1, Ljava/lang/StringBuilder;

    #@7
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@a
    const-string/jumbo v2, "Unknown chain:"

    #@d
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@10
    move-result-object v1

    #@11
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@14
    move-result-object v1

    #@15
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@18
    move-result-object v1

    #@19
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@1c
    throw v0

    #@1d
    .line 2362
    :pswitch_0
    iget-object v0, p0, Lcom/android/server/NetworkManagementService;->mUidFirewallStandbyRules:Landroid/util/SparseIntArray;

    #@1f
    return-object v0

    #@20
    .line 2364
    :pswitch_1
    iget-object v0, p0, Lcom/android/server/NetworkManagementService;->mUidFirewallDozableRules:Landroid/util/SparseIntArray;

    #@22
    return-object v0

    #@23
    .line 2366
    :pswitch_2
    iget-object v0, p0, Lcom/android/server/NetworkManagementService;->mUidFirewallPowerSaveRules:Landroid/util/SparseIntArray;

    #@25
    return-object v0

    #@26
    .line 2368
    :pswitch_3
    iget-object v0, p0, Lcom/android/server/NetworkManagementService;->mUidFirewallRules:Landroid/util/SparseIntArray;

    #@28
    return-object v0

    #@29
    .line 2360
    nop

    #@2a
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method private modifyInterfaceForward(ZLjava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p1, "add"    # Z
    .param p2, "fromIface"    # Ljava/lang/String;
    .param p3, "toIface"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1357
    new-instance v0, Lcom/android/server/NativeDaemonConnector$Command;

    #@2
    const-string/jumbo v3, "ipfwd"

    #@5
    const/4 v2, 0x3

    #@6
    new-array v4, v2, [Ljava/lang/Object;

    #@8
    if-eqz p1, :cond_0

    #@a
    const-string/jumbo v2, "add"

    #@d
    :goto_0
    const/4 v5, 0x0

    #@e
    aput-object v2, v4, v5

    #@10
    const/4 v2, 0x1

    #@11
    aput-object p2, v4, v2

    #@13
    const/4 v2, 0x2

    #@14
    aput-object p3, v4, v2

    #@16
    invoke-direct {v0, v3, v4}, Lcom/android/server/NativeDaemonConnector$Command;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    #@19
    .line 1359
    .local v0, "cmd":Lcom/android/server/NativeDaemonConnector$Command;
    :try_start_0
    iget-object v2, p0, Lcom/android/server/NetworkManagementService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    #@1b
    invoke-virtual {v2, v0}, Lcom/android/server/NativeDaemonConnector;->execute(Lcom/android/server/NativeDaemonConnector$Command;)Lcom/android/server/NativeDaemonEvent;
    :try_end_0
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_0 .. :try_end_0} :catch_0

    #@1e
    .line 1356
    return-void

    #@1f
    .line 1357
    .end local v0    # "cmd":Lcom/android/server/NativeDaemonConnector$Command;
    :cond_0
    const-string/jumbo v2, "remove"

    #@22
    goto :goto_0

    #@23
    .line 1360
    .restart local v0    # "cmd":Lcom/android/server/NativeDaemonConnector$Command;
    :catch_0
    move-exception v1

    #@24
    .line 1361
    .local v1, "e":Lcom/android/server/NativeDaemonConnectorException;
    invoke-virtual {v1}, Lcom/android/server/NativeDaemonConnectorException;->rethrowAsParcelableException()Ljava/lang/IllegalArgumentException;

    #@27
    move-result-object v2

    #@28
    throw v2
.end method

.method private modifyInterfaceInNetwork(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "netId"    # Ljava/lang/String;
    .param p3, "iface"    # Ljava/lang/String;

    #@0
    .prologue
    .line 2615
    iget-object v1, p0, Lcom/android/server/NetworkManagementService;->mContext:Landroid/content/Context;

    #@2
    const-string/jumbo v2, "android.permission.CONNECTIVITY_INTERNAL"

    #@5
    const-string/jumbo v3, "NetworkManagement"

    #@8
    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    #@b
    .line 2617
    :try_start_0
    iget-object v1, p0, Lcom/android/server/NetworkManagementService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    #@d
    const-string/jumbo v2, "network"

    #@10
    const/4 v3, 0x4

    #@11
    new-array v3, v3, [Ljava/lang/Object;

    #@13
    const-string/jumbo v4, "interface"

    #@16
    const/4 v5, 0x0

    #@17
    aput-object v4, v3, v5

    #@19
    const/4 v4, 0x1

    #@1a
    aput-object p1, v3, v4

    #@1c
    const/4 v4, 0x2

    #@1d
    aput-object p2, v3, v4

    #@1f
    const/4 v4, 0x3

    #@20
    aput-object p3, v3, v4

    #@22
    invoke-virtual {v1, v2, v3}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;
    :try_end_0
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_0 .. :try_end_0} :catch_0

    #@25
    .line 2614
    return-void

    #@26
    .line 2618
    :catch_0
    move-exception v0

    #@27
    .line 2619
    .local v0, "e":Lcom/android/server/NativeDaemonConnectorException;
    invoke-virtual {v0}, Lcom/android/server/NativeDaemonConnectorException;->rethrowAsParcelableException()Ljava/lang/IllegalArgumentException;

    #@2a
    move-result-object v1

    #@2b
    throw v1
.end method

.method private modifyNat(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 10
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "internalInterface"    # Ljava/lang/String;
    .param p3, "externalInterface"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    #@0
    .prologue
    .line 1379
    new-instance v1, Lcom/android/server/NativeDaemonConnector$Command;

    #@2
    const-string/jumbo v7, "nat"

    #@5
    const/4 v8, 0x3

    #@6
    new-array v8, v8, [Ljava/lang/Object;

    #@8
    const/4 v9, 0x0

    #@9
    aput-object p1, v8, v9

    #@b
    const/4 v9, 0x1

    #@c
    aput-object p2, v8, v9

    #@e
    const/4 v9, 0x2

    #@f
    aput-object p3, v8, v9

    #@11
    invoke-direct {v1, v7, v8}, Lcom/android/server/NativeDaemonConnector$Command;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    #@14
    .line 1381
    .local v1, "cmd":Lcom/android/server/NativeDaemonConnector$Command;
    invoke-static {p2}, Ljava/net/NetworkInterface;->getByName(Ljava/lang/String;)Ljava/net/NetworkInterface;

    #@17
    move-result-object v6

    #@18
    .line 1383
    .local v6, "internalNetworkInterface":Ljava/net/NetworkInterface;
    if-nez v6, :cond_1

    #@1a
    .line 1384
    const-string/jumbo v7, "0"

    #@1d
    invoke-virtual {v1, v7}, Lcom/android/server/NativeDaemonConnector$Command;->appendArg(Ljava/lang/Object;)Lcom/android/server/NativeDaemonConnector$Command;

    #@20
    .line 1399
    :cond_0
    :try_start_0
    iget-object v7, p0, Lcom/android/server/NetworkManagementService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    #@22
    invoke-virtual {v7, v1}, Lcom/android/server/NativeDaemonConnector;->execute(Lcom/android/server/NativeDaemonConnector$Command;)Lcom/android/server/NativeDaemonEvent;
    :try_end_0
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_0 .. :try_end_0} :catch_0

    #@25
    .line 1378
    return-void

    #@26
    .line 1389
    :cond_1
    invoke-virtual {v6}, Ljava/net/NetworkInterface;->getInterfaceAddresses()Ljava/util/List;

    #@29
    move-result-object v7

    #@2a
    .line 1388
    invoke-direct {p0, v7}, Lcom/android/server/NetworkManagementService;->excludeLinkLocal(Ljava/util/List;)Ljava/util/List;

    #@2d
    move-result-object v5

    #@2e
    .line 1390
    .local v5, "interfaceAddresses":Ljava/util/List;, "Ljava/util/List<Ljava/net/InterfaceAddress;>;"
    invoke-interface {v5}, Ljava/util/List;->size()I

    #@31
    move-result v7

    #@32
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@35
    move-result-object v7

    #@36
    invoke-virtual {v1, v7}, Lcom/android/server/NativeDaemonConnector$Command;->appendArg(Ljava/lang/Object;)Lcom/android/server/NativeDaemonConnector$Command;

    #@39
    .line 1391
    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@3c
    move-result-object v4

    #@3d
    .local v4, "ia$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    #@40
    move-result v7

    #@41
    if-eqz v7, :cond_0

    #@43
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@46
    move-result-object v3

    #@47
    check-cast v3, Ljava/net/InterfaceAddress;

    #@49
    .line 1393
    .local v3, "ia":Ljava/net/InterfaceAddress;
    invoke-virtual {v3}, Ljava/net/InterfaceAddress;->getAddress()Ljava/net/InetAddress;

    #@4c
    move-result-object v7

    #@4d
    invoke-virtual {v3}, Ljava/net/InterfaceAddress;->getNetworkPrefixLength()S

    #@50
    move-result v8

    #@51
    .line 1392
    invoke-static {v7, v8}, Landroid/net/NetworkUtils;->getNetworkPart(Ljava/net/InetAddress;I)Ljava/net/InetAddress;

    #@54
    move-result-object v0

    #@55
    .line 1394
    .local v0, "addr":Ljava/net/InetAddress;
    new-instance v7, Ljava/lang/StringBuilder;

    #@57
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    #@5a
    invoke-virtual {v0}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    #@5d
    move-result-object v8

    #@5e
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@61
    move-result-object v7

    #@62
    const-string/jumbo v8, "/"

    #@65
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@68
    move-result-object v7

    #@69
    invoke-virtual {v3}, Ljava/net/InterfaceAddress;->getNetworkPrefixLength()S

    #@6c
    move-result v8

    #@6d
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@70
    move-result-object v7

    #@71
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@74
    move-result-object v7

    #@75
    invoke-virtual {v1, v7}, Lcom/android/server/NativeDaemonConnector$Command;->appendArg(Ljava/lang/Object;)Lcom/android/server/NativeDaemonConnector$Command;

    #@78
    goto :goto_0

    #@79
    .line 1400
    .end local v0    # "addr":Ljava/net/InetAddress;
    .end local v3    # "ia":Ljava/net/InterfaceAddress;
    .end local v4    # "ia$iterator":Ljava/util/Iterator;
    .end local v5    # "interfaceAddresses":Ljava/util/List;, "Ljava/util/List<Ljava/net/InterfaceAddress;>;"
    :catch_0
    move-exception v2

    #@7a
    .line 1401
    .local v2, "e":Lcom/android/server/NativeDaemonConnectorException;
    invoke-virtual {v2}, Lcom/android/server/NativeDaemonConnectorException;->rethrowAsParcelableException()Ljava/lang/IllegalArgumentException;

    #@7d
    move-result-object v7

    #@7e
    throw v7
.end method

.method private modifyRoute(Ljava/lang/String;Ljava/lang/String;Landroid/net/RouteInfo;)V
    .locals 6
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "netId"    # Ljava/lang/String;
    .param p3, "route"    # Landroid/net/RouteInfo;

    #@0
    .prologue
    .line 1133
    iget-object v2, p0, Lcom/android/server/NetworkManagementService;->mContext:Landroid/content/Context;

    #@2
    const-string/jumbo v3, "android.permission.CONNECTIVITY_INTERNAL"

    #@5
    const-string/jumbo v4, "NetworkManagement"

    #@8
    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    #@b
    .line 1135
    new-instance v0, Lcom/android/server/NativeDaemonConnector$Command;

    #@d
    const-string/jumbo v2, "network"

    #@10
    const/4 v3, 0x3

    #@11
    new-array v3, v3, [Ljava/lang/Object;

    #@13
    const-string/jumbo v4, "route"

    #@16
    const/4 v5, 0x0

    #@17
    aput-object v4, v3, v5

    #@19
    const/4 v4, 0x1

    #@1a
    aput-object p1, v3, v4

    #@1c
    const/4 v4, 0x2

    #@1d
    aput-object p2, v3, v4

    #@1f
    invoke-direct {v0, v2, v3}, Lcom/android/server/NativeDaemonConnector$Command;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    #@22
    .line 1138
    .local v0, "cmd":Lcom/android/server/NativeDaemonConnector$Command;
    invoke-virtual {p3}, Landroid/net/RouteInfo;->getInterface()Ljava/lang/String;

    #@25
    move-result-object v2

    #@26
    invoke-virtual {v0, v2}, Lcom/android/server/NativeDaemonConnector$Command;->appendArg(Ljava/lang/Object;)Lcom/android/server/NativeDaemonConnector$Command;

    #@29
    .line 1139
    invoke-virtual {p3}, Landroid/net/RouteInfo;->getDestination()Landroid/net/IpPrefix;

    #@2c
    move-result-object v2

    #@2d
    invoke-virtual {v2}, Landroid/net/IpPrefix;->toString()Ljava/lang/String;

    #@30
    move-result-object v2

    #@31
    invoke-virtual {v0, v2}, Lcom/android/server/NativeDaemonConnector$Command;->appendArg(Ljava/lang/Object;)Lcom/android/server/NativeDaemonConnector$Command;

    #@34
    .line 1141
    invoke-virtual {p3}, Landroid/net/RouteInfo;->getType()I

    #@37
    move-result v2

    #@38
    sparse-switch v2, :sswitch_data_0

    #@3b
    .line 1156
    :cond_0
    :goto_0
    :try_start_0
    iget-object v2, p0, Lcom/android/server/NetworkManagementService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    #@3d
    invoke-virtual {v2, v0}, Lcom/android/server/NativeDaemonConnector;->execute(Lcom/android/server/NativeDaemonConnector$Command;)Lcom/android/server/NativeDaemonEvent;
    :try_end_0
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_0 .. :try_end_0} :catch_0

    #@40
    .line 1132
    return-void

    #@41
    .line 1143
    :sswitch_0
    invoke-virtual {p3}, Landroid/net/RouteInfo;->hasGateway()Z

    #@44
    move-result v2

    #@45
    if-eqz v2, :cond_0

    #@47
    .line 1144
    invoke-virtual {p3}, Landroid/net/RouteInfo;->getGateway()Ljava/net/InetAddress;

    #@4a
    move-result-object v2

    #@4b
    invoke-virtual {v2}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    #@4e
    move-result-object v2

    #@4f
    invoke-virtual {v0, v2}, Lcom/android/server/NativeDaemonConnector$Command;->appendArg(Ljava/lang/Object;)Lcom/android/server/NativeDaemonConnector$Command;

    #@52
    goto :goto_0

    #@53
    .line 1148
    :sswitch_1
    const-string/jumbo v2, "unreachable"

    #@56
    invoke-virtual {v0, v2}, Lcom/android/server/NativeDaemonConnector$Command;->appendArg(Ljava/lang/Object;)Lcom/android/server/NativeDaemonConnector$Command;

    #@59
    goto :goto_0

    #@5a
    .line 1151
    :sswitch_2
    const-string/jumbo v2, "throw"

    #@5d
    invoke-virtual {v0, v2}, Lcom/android/server/NativeDaemonConnector$Command;->appendArg(Ljava/lang/Object;)Lcom/android/server/NativeDaemonConnector$Command;

    #@60
    goto :goto_0

    #@61
    .line 1157
    :catch_0
    move-exception v1

    #@62
    .line 1158
    .local v1, "e":Lcom/android/server/NativeDaemonConnectorException;
    invoke-virtual {v1}, Lcom/android/server/NativeDaemonConnectorException;->rethrowAsParcelableException()Ljava/lang/IllegalArgumentException;

    #@65
    move-result-object v2

    #@66
    throw v2

    #@67
    .line 1141
    nop

    #@68
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x7 -> :sswitch_1
        0x9 -> :sswitch_2
    .end sparse-switch
.end method

.method private notifyAddressRemoved(Ljava/lang/String;Landroid/net/LinkAddress;)V
    .locals 5
    .param p1, "iface"    # Ljava/lang/String;
    .param p2, "address"    # Landroid/net/LinkAddress;

    #@0
    .prologue
    .line 711
    iget-object v3, p0, Lcom/android/server/NetworkManagementService;->mObservers:Landroid/os/RemoteCallbackList;

    #@2
    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    #@5
    move-result v2

    #@6
    .line 713
    .local v2, "length":I
    const/4 v1, 0x0

    #@7
    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_0

    #@9
    .line 715
    :try_start_0
    iget-object v3, p0, Lcom/android/server/NetworkManagementService;->mObservers:Landroid/os/RemoteCallbackList;

    #@b
    invoke-virtual {v3, v1}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    #@e
    move-result-object v3

    #@f
    check-cast v3, Landroid/net/INetworkManagementEventObserver;

    #@11
    invoke-interface {v3, p1, p2}, Landroid/net/INetworkManagementEventObserver;->addressRemoved(Ljava/lang/String;Landroid/net/LinkAddress;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@14
    .line 713
    :goto_1
    add-int/lit8 v1, v1, 0x1

    #@16
    goto :goto_0

    #@17
    .line 720
    :cond_0
    iget-object v3, p0, Lcom/android/server/NetworkManagementService;->mObservers:Landroid/os/RemoteCallbackList;

    #@19
    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    #@1c
    .line 710
    return-void

    #@1d
    .line 719
    :catchall_0
    move-exception v3

    #@1e
    .line 720
    iget-object v4, p0, Lcom/android/server/NetworkManagementService;->mObservers:Landroid/os/RemoteCallbackList;

    #@20
    invoke-virtual {v4}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    #@23
    .line 719
    throw v3

    #@24
    .line 716
    :catch_0
    move-exception v0

    #@25
    .local v0, "e":Ljava/lang/Exception;
    goto :goto_1
.end method

.method private notifyAddressUpdated(Ljava/lang/String;Landroid/net/LinkAddress;)V
    .locals 5
    .param p1, "iface"    # Ljava/lang/String;
    .param p2, "address"    # Landroid/net/LinkAddress;

    #@0
    .prologue
    .line 694
    iget-object v3, p0, Lcom/android/server/NetworkManagementService;->mObservers:Landroid/os/RemoteCallbackList;

    #@2
    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    #@5
    move-result v2

    #@6
    .line 696
    .local v2, "length":I
    const/4 v1, 0x0

    #@7
    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_0

    #@9
    .line 698
    :try_start_0
    iget-object v3, p0, Lcom/android/server/NetworkManagementService;->mObservers:Landroid/os/RemoteCallbackList;

    #@b
    invoke-virtual {v3, v1}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    #@e
    move-result-object v3

    #@f
    check-cast v3, Landroid/net/INetworkManagementEventObserver;

    #@11
    invoke-interface {v3, p1, p2}, Landroid/net/INetworkManagementEventObserver;->addressUpdated(Ljava/lang/String;Landroid/net/LinkAddress;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@14
    .line 696
    :goto_1
    add-int/lit8 v1, v1, 0x1

    #@16
    goto :goto_0

    #@17
    .line 703
    :cond_0
    iget-object v3, p0, Lcom/android/server/NetworkManagementService;->mObservers:Landroid/os/RemoteCallbackList;

    #@19
    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    #@1c
    .line 693
    return-void

    #@1d
    .line 702
    :catchall_0
    move-exception v3

    #@1e
    .line 703
    iget-object v4, p0, Lcom/android/server/NetworkManagementService;->mObservers:Landroid/os/RemoteCallbackList;

    #@20
    invoke-virtual {v4}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    #@23
    .line 702
    throw v3

    #@24
    .line 699
    :catch_0
    move-exception v0

    #@25
    .local v0, "e":Ljava/lang/Exception;
    goto :goto_1
.end method

.method private notifyInterfaceAdded(Ljava/lang/String;)V
    .locals 5
    .param p1, "iface"    # Ljava/lang/String;

    #@0
    .prologue
    .line 415
    iget-object v3, p0, Lcom/android/server/NetworkManagementService;->mObservers:Landroid/os/RemoteCallbackList;

    #@2
    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    #@5
    move-result v2

    #@6
    .line 417
    .local v2, "length":I
    const/4 v1, 0x0

    #@7
    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_0

    #@9
    .line 419
    :try_start_0
    iget-object v3, p0, Lcom/android/server/NetworkManagementService;->mObservers:Landroid/os/RemoteCallbackList;

    #@b
    invoke-virtual {v3, v1}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    #@e
    move-result-object v3

    #@f
    check-cast v3, Landroid/net/INetworkManagementEventObserver;

    #@11
    invoke-interface {v3, p1}, Landroid/net/INetworkManagementEventObserver;->interfaceAdded(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@14
    .line 417
    :goto_1
    add-int/lit8 v1, v1, 0x1

    #@16
    goto :goto_0

    #@17
    .line 424
    :cond_0
    iget-object v3, p0, Lcom/android/server/NetworkManagementService;->mObservers:Landroid/os/RemoteCallbackList;

    #@19
    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    #@1c
    .line 414
    return-void

    #@1d
    .line 423
    :catchall_0
    move-exception v3

    #@1e
    .line 424
    iget-object v4, p0, Lcom/android/server/NetworkManagementService;->mObservers:Landroid/os/RemoteCallbackList;

    #@20
    invoke-virtual {v4}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    #@23
    .line 423
    throw v3

    #@24
    .line 420
    :catch_0
    move-exception v0

    #@25
    .local v0, "e":Ljava/lang/Exception;
    goto :goto_1
.end method

.method private notifyInterfaceClassActivity(IIJIZ)V
    .locals 9
    .param p1, "type"    # I
    .param p2, "powerState"    # I
    .param p3, "tsNanos"    # J
    .param p5, "uid"    # I
    .param p6, "fromRadio"    # Z

    #@0
    .prologue
    .line 472
    invoke-static {p1}, Landroid/net/ConnectivityManager;->isNetworkTypeMobile(I)Z

    #@3
    move-result v4

    #@4
    .line 473
    .local v4, "isMobile":Z
    if-eqz v4, :cond_1

    #@6
    .line 474
    if-nez p6, :cond_6

    #@8
    .line 475
    iget-boolean v7, p0, Lcom/android/server/NetworkManagementService;->mMobileActivityFromRadio:Z

    #@a
    if-eqz v7, :cond_0

    #@c
    .line 479
    iget p2, p0, Lcom/android/server/NetworkManagementService;->mLastPowerStateFromRadio:I

    #@e
    .line 484
    :cond_0
    :goto_0
    iget v7, p0, Lcom/android/server/NetworkManagementService;->mLastPowerStateFromRadio:I

    #@10
    if-eq v7, p2, :cond_1

    #@12
    .line 485
    iput p2, p0, Lcom/android/server/NetworkManagementService;->mLastPowerStateFromRadio:I

    #@14
    .line 487
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/NetworkManagementService;->getBatteryStats()Lcom/android/internal/app/IBatteryStats;

    #@17
    move-result-object v7

    #@18
    invoke-interface {v7, p2, p3, p4, p5}, Lcom/android/internal/app/IBatteryStats;->noteMobileRadioPowerState(IJI)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_2

    #@1b
    .line 493
    :cond_1
    :goto_1
    invoke-static {p1}, Landroid/net/ConnectivityManager;->isNetworkTypeWifi(I)Z

    #@1e
    move-result v7

    #@1f
    if-eqz v7, :cond_2

    #@21
    .line 494
    iget v7, p0, Lcom/android/server/NetworkManagementService;->mLastPowerStateFromWifi:I

    #@23
    if-eq v7, p2, :cond_2

    #@25
    .line 495
    iput p2, p0, Lcom/android/server/NetworkManagementService;->mLastPowerStateFromWifi:I

    #@27
    .line 497
    :try_start_1
    invoke-direct {p0}, Lcom/android/server/NetworkManagementService;->getBatteryStats()Lcom/android/internal/app/IBatteryStats;

    #@2a
    move-result-object v7

    #@2b
    invoke-interface {v7, p2, p3, p4}, Lcom/android/internal/app/IBatteryStats;->noteWifiRadioPowerState(IJ)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    #@2e
    .line 503
    :cond_2
    :goto_2
    const/4 v7, 0x2

    #@2f
    if-eq p2, v7, :cond_7

    #@31
    .line 504
    const/4 v7, 0x3

    #@32
    if-ne p2, v7, :cond_8

    #@34
    const/4 v3, 0x1

    #@35
    .line 506
    .local v3, "isActive":Z
    :goto_3
    if-eqz v4, :cond_9

    #@37
    if-nez p6, :cond_9

    #@39
    iget-boolean v7, p0, Lcom/android/server/NetworkManagementService;->mMobileActivityFromRadio:Z

    #@3b
    if-eqz v7, :cond_9

    #@3d
    .line 525
    :goto_4
    const/4 v6, 0x0

    #@3e
    .line 526
    .local v6, "report":Z
    iget-object v8, p0, Lcom/android/server/NetworkManagementService;->mIdleTimerLock:Ljava/lang/Object;

    #@40
    monitor-enter v8

    #@41
    .line 527
    :try_start_2
    iget-object v7, p0, Lcom/android/server/NetworkManagementService;->mActiveIdleTimers:Ljava/util/HashMap;

    #@43
    invoke-virtual {v7}, Ljava/util/HashMap;->isEmpty()Z

    #@46
    move-result v7

    #@47
    if-eqz v7, :cond_3

    #@49
    .line 530
    const/4 v3, 0x1

    #@4a
    .line 532
    :cond_3
    iget-boolean v7, p0, Lcom/android/server/NetworkManagementService;->mNetworkActive:Z

    #@4c
    if-eq v7, v3, :cond_4

    #@4e
    .line 533
    iput-boolean v3, p0, Lcom/android/server/NetworkManagementService;->mNetworkActive:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    #@50
    .line 534
    move v6, v3

    #@51
    .end local v6    # "report":Z
    :cond_4
    monitor-exit v8

    #@52
    .line 537
    if-eqz v6, :cond_5

    #@54
    .line 538
    invoke-direct {p0}, Lcom/android/server/NetworkManagementService;->reportNetworkActive()V

    #@57
    .line 471
    :cond_5
    return-void

    #@58
    .line 482
    .end local v3    # "isActive":Z
    :cond_6
    const/4 v7, 0x1

    #@59
    iput-boolean v7, p0, Lcom/android/server/NetworkManagementService;->mMobileActivityFromRadio:Z

    #@5b
    goto :goto_0

    #@5c
    .line 503
    :cond_7
    const/4 v3, 0x1

    #@5d
    .restart local v3    # "isActive":Z
    goto :goto_3

    #@5e
    .line 504
    .end local v3    # "isActive":Z
    :cond_8
    const/4 v3, 0x0

    #@5f
    .restart local v3    # "isActive":Z
    goto :goto_3

    #@60
    .line 511
    :cond_9
    iget-object v7, p0, Lcom/android/server/NetworkManagementService;->mObservers:Landroid/os/RemoteCallbackList;

    #@62
    invoke-virtual {v7}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    #@65
    move-result v5

    #@66
    .line 513
    .local v5, "length":I
    const/4 v2, 0x0

    #@67
    .local v2, "i":I
    :goto_5
    if-ge v2, v5, :cond_a

    #@69
    .line 515
    :try_start_3
    iget-object v7, p0, Lcom/android/server/NetworkManagementService;->mObservers:Landroid/os/RemoteCallbackList;

    #@6b
    invoke-virtual {v7, v2}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    #@6e
    move-result-object v7

    #@6f
    check-cast v7, Landroid/net/INetworkManagementEventObserver;

    #@71
    .line 516
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    #@74
    move-result-object v8

    #@75
    .line 515
    invoke-interface {v7, v8, v3, p3, p4}, Landroid/net/INetworkManagementEventObserver;->interfaceClassDataActivityChanged(Ljava/lang/String;ZJ)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@78
    .line 513
    :goto_6
    add-int/lit8 v2, v2, 0x1

    #@7a
    goto :goto_5

    #@7b
    .line 521
    :cond_a
    iget-object v7, p0, Lcom/android/server/NetworkManagementService;->mObservers:Landroid/os/RemoteCallbackList;

    #@7d
    invoke-virtual {v7}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    #@80
    goto :goto_4

    #@81
    .line 520
    :catchall_0
    move-exception v7

    #@82
    .line 521
    iget-object v8, p0, Lcom/android/server/NetworkManagementService;->mObservers:Landroid/os/RemoteCallbackList;

    #@84
    invoke-virtual {v8}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    #@87
    .line 520
    throw v7

    #@88
    .line 526
    .end local v2    # "i":I
    .end local v5    # "length":I
    .restart local v6    # "report":Z
    :catchall_1
    move-exception v7

    #@89
    monitor-exit v8

    #@8a
    throw v7

    #@8b
    .line 517
    .end local v6    # "report":Z
    .restart local v2    # "i":I
    .restart local v5    # "length":I
    :catch_0
    move-exception v1

    #@8c
    .local v1, "e":Ljava/lang/Exception;
    goto :goto_6

    #@8d
    .line 498
    .end local v1    # "e":Ljava/lang/Exception;
    .end local v2    # "i":I
    .end local v3    # "isActive":Z
    .end local v5    # "length":I
    :catch_1
    move-exception v0

    #@8e
    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_2

    #@8f
    .line 488
    .end local v0    # "e":Landroid/os/RemoteException;
    :catch_2
    move-exception v0

    #@90
    .restart local v0    # "e":Landroid/os/RemoteException;
    goto :goto_1
.end method

.method private notifyInterfaceDnsServerInfo(Ljava/lang/String;J[Ljava/lang/String;)V
    .locals 6
    .param p1, "iface"    # Ljava/lang/String;
    .param p2, "lifetime"    # J
    .param p4, "addresses"    # [Ljava/lang/String;

    #@0
    .prologue
    .line 728
    iget-object v3, p0, Lcom/android/server/NetworkManagementService;->mObservers:Landroid/os/RemoteCallbackList;

    #@2
    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    #@5
    move-result v2

    #@6
    .line 730
    .local v2, "length":I
    const/4 v1, 0x0

    #@7
    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_0

    #@9
    .line 732
    :try_start_0
    iget-object v3, p0, Lcom/android/server/NetworkManagementService;->mObservers:Landroid/os/RemoteCallbackList;

    #@b
    invoke-virtual {v3, v1}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    #@e
    move-result-object v3

    #@f
    check-cast v3, Landroid/net/INetworkManagementEventObserver;

    #@11
    invoke-interface {v3, p1, p2, p3, p4}, Landroid/net/INetworkManagementEventObserver;->interfaceDnsServerInfo(Ljava/lang/String;J[Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@14
    .line 730
    :goto_1
    add-int/lit8 v1, v1, 0x1

    #@16
    goto :goto_0

    #@17
    .line 738
    :cond_0
    iget-object v3, p0, Lcom/android/server/NetworkManagementService;->mObservers:Landroid/os/RemoteCallbackList;

    #@19
    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    #@1c
    .line 727
    return-void

    #@1d
    .line 737
    :catchall_0
    move-exception v3

    #@1e
    .line 738
    iget-object v4, p0, Lcom/android/server/NetworkManagementService;->mObservers:Landroid/os/RemoteCallbackList;

    #@20
    invoke-virtual {v4}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    #@23
    .line 737
    throw v3

    #@24
    .line 734
    :catch_0
    move-exception v0

    #@25
    .local v0, "e":Ljava/lang/Exception;
    goto :goto_1
.end method

.method private notifyInterfaceLinkStateChanged(Ljava/lang/String;Z)V
    .locals 5
    .param p1, "iface"    # Ljava/lang/String;
    .param p2, "up"    # Z

    #@0
    .prologue
    .line 398
    iget-object v3, p0, Lcom/android/server/NetworkManagementService;->mObservers:Landroid/os/RemoteCallbackList;

    #@2
    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    #@5
    move-result v2

    #@6
    .line 400
    .local v2, "length":I
    const/4 v1, 0x0

    #@7
    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_0

    #@9
    .line 402
    :try_start_0
    iget-object v3, p0, Lcom/android/server/NetworkManagementService;->mObservers:Landroid/os/RemoteCallbackList;

    #@b
    invoke-virtual {v3, v1}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    #@e
    move-result-object v3

    #@f
    check-cast v3, Landroid/net/INetworkManagementEventObserver;

    #@11
    invoke-interface {v3, p1, p2}, Landroid/net/INetworkManagementEventObserver;->interfaceLinkStateChanged(Ljava/lang/String;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@14
    .line 400
    :goto_1
    add-int/lit8 v1, v1, 0x1

    #@16
    goto :goto_0

    #@17
    .line 407
    :cond_0
    iget-object v3, p0, Lcom/android/server/NetworkManagementService;->mObservers:Landroid/os/RemoteCallbackList;

    #@19
    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    #@1c
    .line 397
    return-void

    #@1d
    .line 406
    :catchall_0
    move-exception v3

    #@1e
    .line 407
    iget-object v4, p0, Lcom/android/server/NetworkManagementService;->mObservers:Landroid/os/RemoteCallbackList;

    #@20
    invoke-virtual {v4}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    #@23
    .line 406
    throw v3

    #@24
    .line 403
    :catch_0
    move-exception v0

    #@25
    .local v0, "e":Ljava/lang/Exception;
    goto :goto_1
.end method

.method private notifyInterfaceRemoved(Ljava/lang/String;)V
    .locals 5
    .param p1, "iface"    # Ljava/lang/String;

    #@0
    .prologue
    .line 434
    iget-object v3, p0, Lcom/android/server/NetworkManagementService;->mActiveAlerts:Ljava/util/HashMap;

    #@2
    invoke-virtual {v3, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    #@5
    .line 435
    iget-object v3, p0, Lcom/android/server/NetworkManagementService;->mActiveQuotas:Ljava/util/HashMap;

    #@7
    invoke-virtual {v3, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    #@a
    .line 437
    iget-object v3, p0, Lcom/android/server/NetworkManagementService;->mObservers:Landroid/os/RemoteCallbackList;

    #@c
    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    #@f
    move-result v2

    #@10
    .line 439
    .local v2, "length":I
    const/4 v1, 0x0

    #@11
    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_0

    #@13
    .line 441
    :try_start_0
    iget-object v3, p0, Lcom/android/server/NetworkManagementService;->mObservers:Landroid/os/RemoteCallbackList;

    #@15
    invoke-virtual {v3, v1}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    #@18
    move-result-object v3

    #@19
    check-cast v3, Landroid/net/INetworkManagementEventObserver;

    #@1b
    invoke-interface {v3, p1}, Landroid/net/INetworkManagementEventObserver;->interfaceRemoved(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1e
    .line 439
    :goto_1
    add-int/lit8 v1, v1, 0x1

    #@20
    goto :goto_0

    #@21
    .line 446
    :cond_0
    iget-object v3, p0, Lcom/android/server/NetworkManagementService;->mObservers:Landroid/os/RemoteCallbackList;

    #@23
    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    #@26
    .line 431
    return-void

    #@27
    .line 445
    :catchall_0
    move-exception v3

    #@28
    .line 446
    iget-object v4, p0, Lcom/android/server/NetworkManagementService;->mObservers:Landroid/os/RemoteCallbackList;

    #@2a
    invoke-virtual {v4}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    #@2d
    .line 445
    throw v3

    #@2e
    .line 442
    :catch_0
    move-exception v0

    #@2f
    .local v0, "e":Ljava/lang/Exception;
    goto :goto_1
.end method

.method private notifyInterfaceStatusChanged(Ljava/lang/String;Z)V
    .locals 5
    .param p1, "iface"    # Ljava/lang/String;
    .param p2, "up"    # Z

    #@0
    .prologue
    .line 380
    iget-object v3, p0, Lcom/android/server/NetworkManagementService;->mObservers:Landroid/os/RemoteCallbackList;

    #@2
    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    #@5
    move-result v2

    #@6
    .line 382
    .local v2, "length":I
    const/4 v1, 0x0

    #@7
    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_0

    #@9
    .line 384
    :try_start_0
    iget-object v3, p0, Lcom/android/server/NetworkManagementService;->mObservers:Landroid/os/RemoteCallbackList;

    #@b
    invoke-virtual {v3, v1}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    #@e
    move-result-object v3

    #@f
    check-cast v3, Landroid/net/INetworkManagementEventObserver;

    #@11
    invoke-interface {v3, p1, p2}, Landroid/net/INetworkManagementEventObserver;->interfaceStatusChanged(Ljava/lang/String;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@14
    .line 382
    :goto_1
    add-int/lit8 v1, v1, 0x1

    #@16
    goto :goto_0

    #@17
    .line 389
    :cond_0
    iget-object v3, p0, Lcom/android/server/NetworkManagementService;->mObservers:Landroid/os/RemoteCallbackList;

    #@19
    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    #@1c
    .line 379
    return-void

    #@1d
    .line 388
    :catchall_0
    move-exception v3

    #@1e
    .line 389
    iget-object v4, p0, Lcom/android/server/NetworkManagementService;->mObservers:Landroid/os/RemoteCallbackList;

    #@20
    invoke-virtual {v4}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    #@23
    .line 388
    throw v3

    #@24
    .line 385
    :catch_0
    move-exception v0

    #@25
    .local v0, "e":Ljava/lang/Exception;
    goto :goto_1
.end method

.method private notifyLimitReached(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "limitName"    # Ljava/lang/String;
    .param p2, "iface"    # Ljava/lang/String;

    #@0
    .prologue
    .line 454
    iget-object v3, p0, Lcom/android/server/NetworkManagementService;->mObservers:Landroid/os/RemoteCallbackList;

    #@2
    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    #@5
    move-result v2

    #@6
    .line 456
    .local v2, "length":I
    const/4 v1, 0x0

    #@7
    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_0

    #@9
    .line 458
    :try_start_0
    iget-object v3, p0, Lcom/android/server/NetworkManagementService;->mObservers:Landroid/os/RemoteCallbackList;

    #@b
    invoke-virtual {v3, v1}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    #@e
    move-result-object v3

    #@f
    check-cast v3, Landroid/net/INetworkManagementEventObserver;

    #@11
    invoke-interface {v3, p1, p2}, Landroid/net/INetworkManagementEventObserver;->limitReached(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@14
    .line 456
    :goto_1
    add-int/lit8 v1, v1, 0x1

    #@16
    goto :goto_0

    #@17
    .line 463
    :cond_0
    iget-object v3, p0, Lcom/android/server/NetworkManagementService;->mObservers:Landroid/os/RemoteCallbackList;

    #@19
    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    #@1c
    .line 453
    return-void

    #@1d
    .line 462
    :catchall_0
    move-exception v3

    #@1e
    .line 463
    iget-object v4, p0, Lcom/android/server/NetworkManagementService;->mObservers:Landroid/os/RemoteCallbackList;

    #@20
    invoke-virtual {v4}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    #@23
    .line 462
    throw v3

    #@24
    .line 459
    :catch_0
    move-exception v0

    #@25
    .local v0, "e":Ljava/lang/Exception;
    goto :goto_1
.end method

.method private notifyRouteChange(Ljava/lang/String;Landroid/net/RouteInfo;)V
    .locals 5
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "route"    # Landroid/net/RouteInfo;

    #@0
    .prologue
    .line 746
    iget-object v3, p0, Lcom/android/server/NetworkManagementService;->mObservers:Landroid/os/RemoteCallbackList;

    #@2
    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    #@5
    move-result v2

    #@6
    .line 748
    .local v2, "length":I
    const/4 v1, 0x0

    #@7
    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_1

    #@9
    .line 750
    :try_start_0
    const-string/jumbo v3, "updated"

    #@c
    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@f
    move-result v3

    #@10
    if-eqz v3, :cond_0

    #@12
    .line 751
    iget-object v3, p0, Lcom/android/server/NetworkManagementService;->mObservers:Landroid/os/RemoteCallbackList;

    #@14
    invoke-virtual {v3, v1}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    #@17
    move-result-object v3

    #@18
    check-cast v3, Landroid/net/INetworkManagementEventObserver;

    #@1a
    invoke-interface {v3, p2}, Landroid/net/INetworkManagementEventObserver;->routeUpdated(Landroid/net/RouteInfo;)V

    #@1d
    .line 748
    :goto_1
    add-int/lit8 v1, v1, 0x1

    #@1f
    goto :goto_0

    #@20
    .line 753
    :cond_0
    iget-object v3, p0, Lcom/android/server/NetworkManagementService;->mObservers:Landroid/os/RemoteCallbackList;

    #@22
    invoke-virtual {v3, v1}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    #@25
    move-result-object v3

    #@26
    check-cast v3, Landroid/net/INetworkManagementEventObserver;

    #@28
    invoke-interface {v3, p2}, Landroid/net/INetworkManagementEventObserver;->routeRemoved(Landroid/net/RouteInfo;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@2b
    goto :goto_1

    #@2c
    .line 755
    :catch_0
    move-exception v0

    #@2d
    .local v0, "e":Ljava/lang/Exception;
    goto :goto_1

    #@2e
    .line 759
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_1
    iget-object v3, p0, Lcom/android/server/NetworkManagementService;->mObservers:Landroid/os/RemoteCallbackList;

    #@30
    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    #@33
    .line 745
    return-void

    #@34
    .line 758
    :catchall_0
    move-exception v3

    #@35
    .line 759
    iget-object v4, p0, Lcom/android/server/NetworkManagementService;->mObservers:Landroid/os/RemoteCallbackList;

    #@37
    invoke-virtual {v4}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    #@3a
    .line 758
    throw v3
.end method

.method private prepareNativeDaemon()V
    .locals 22

    #@0
    .prologue
    .line 581
    const/16 v16, 0x0

    #@2
    move/from16 v0, v16

    #@4
    move-object/from16 v1, p0

    #@6
    iput-boolean v0, v1, Lcom/android/server/NetworkManagementService;->mBandwidthControlEnabled:Z

    #@8
    .line 584
    new-instance v16, Ljava/io/File;

    #@a
    const-string/jumbo v17, "/proc/net/xt_qtaguid/ctrl"

    #@d
    invoke-direct/range {v16 .. v17}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    #@10
    invoke-virtual/range {v16 .. v16}, Ljava/io/File;->exists()Z

    #@13
    move-result v10

    #@14
    .line 585
    .local v10, "hasKernelSupport":Z
    if-eqz v10, :cond_2

    #@16
    .line 586
    const-string/jumbo v16, "NetworkManagement"

    #@19
    const-string/jumbo v17, "enabling bandwidth control"

    #@1c
    invoke-static/range {v16 .. v17}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@1f
    .line 588
    :try_start_0
    move-object/from16 v0, p0

    #@21
    iget-object v0, v0, Lcom/android/server/NetworkManagementService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    #@23
    move-object/from16 v16, v0

    #@25
    const-string/jumbo v17, "bandwidth"

    #@28
    const/16 v18, 0x1

    #@2a
    move/from16 v0, v18

    #@2c
    new-array v0, v0, [Ljava/lang/Object;

    #@2e
    move-object/from16 v18, v0

    #@30
    const-string/jumbo v19, "enable"

    #@33
    const/16 v20, 0x0

    #@35
    aput-object v19, v18, v20

    #@37
    invoke-virtual/range {v16 .. v18}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;

    #@3a
    .line 589
    const/16 v16, 0x1

    #@3c
    move/from16 v0, v16

    #@3e
    move-object/from16 v1, p0

    #@40
    iput-boolean v0, v1, Lcom/android/server/NetworkManagementService;->mBandwidthControlEnabled:Z
    :try_end_0
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_0 .. :try_end_0} :catch_0

    #@42
    .line 597
    :goto_0
    const-string/jumbo v17, "net.qtaguid_enabled"

    #@45
    move-object/from16 v0, p0

    #@47
    iget-boolean v0, v0, Lcom/android/server/NetworkManagementService;->mBandwidthControlEnabled:Z

    #@49
    move/from16 v16, v0

    #@4b
    if-eqz v16, :cond_3

    #@4d
    const-string/jumbo v16, "1"

    #@50
    :goto_1
    move-object/from16 v0, v17

    #@52
    move-object/from16 v1, v16

    #@54
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    #@57
    .line 599
    move-object/from16 v0, p0

    #@59
    iget-boolean v0, v0, Lcom/android/server/NetworkManagementService;->mBandwidthControlEnabled:Z

    #@5b
    move/from16 v16, v0

    #@5d
    if-eqz v16, :cond_0

    #@5f
    .line 601
    :try_start_1
    invoke-direct/range {p0 .. p0}, Lcom/android/server/NetworkManagementService;->getBatteryStats()Lcom/android/internal/app/IBatteryStats;

    #@62
    move-result-object v16

    #@63
    invoke-interface/range {v16 .. v16}, Lcom/android/internal/app/IBatteryStats;->noteNetworkStatsEnabled()V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_2

    #@66
    .line 607
    :cond_0
    :goto_2
    :try_start_2
    move-object/from16 v0, p0

    #@68
    iget-object v0, v0, Lcom/android/server/NetworkManagementService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    #@6a
    move-object/from16 v16, v0

    #@6c
    const-string/jumbo v17, "strict"

    #@6f
    const/16 v18, 0x1

    #@71
    move/from16 v0, v18

    #@73
    new-array v0, v0, [Ljava/lang/Object;

    #@75
    move-object/from16 v18, v0

    #@77
    const-string/jumbo v19, "enable"

    #@7a
    const/16 v20, 0x0

    #@7c
    aput-object v19, v18, v20

    #@7e
    invoke-virtual/range {v16 .. v18}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;

    #@81
    .line 608
    const/16 v16, 0x1

    #@83
    move/from16 v0, v16

    #@85
    move-object/from16 v1, p0

    #@87
    iput-boolean v0, v1, Lcom/android/server/NetworkManagementService;->mStrictEnabled:Z
    :try_end_2
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_2 .. :try_end_2} :catch_1

    #@89
    .line 614
    :goto_3
    move-object/from16 v0, p0

    #@8b
    iget-object v0, v0, Lcom/android/server/NetworkManagementService;->mQuotaLock:Ljava/lang/Object;

    #@8d
    move-object/from16 v18, v0

    #@8f
    monitor-enter v18

    #@90
    .line 616
    :try_start_3
    move-object/from16 v0, p0

    #@92
    iget-boolean v0, v0, Lcom/android/server/NetworkManagementService;->mDataSaverMode:Z

    #@94
    move/from16 v16, v0

    #@96
    move-object/from16 v0, p0

    #@98
    move/from16 v1, v16

    #@9a
    invoke-virtual {v0, v1}, Lcom/android/server/NetworkManagementService;->setDataSaverModeEnabled(Z)Z

    #@9d
    .line 618
    move-object/from16 v0, p0

    #@9f
    iget-object v0, v0, Lcom/android/server/NetworkManagementService;->mActiveQuotas:Ljava/util/HashMap;

    #@a1
    move-object/from16 v16, v0

    #@a3
    invoke-virtual/range {v16 .. v16}, Ljava/util/HashMap;->size()I

    #@a6
    move-result v13

    #@a7
    .line 619
    .local v13, "size":I
    if-lez v13, :cond_4

    #@a9
    .line 620
    sget-boolean v16, Lcom/android/server/NetworkManagementService;->DBG:Z

    #@ab
    if-eqz v16, :cond_1

    #@ad
    const-string/jumbo v16, "NetworkManagement"

    #@b0
    new-instance v17, Ljava/lang/StringBuilder;

    #@b2
    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    #@b5
    const-string/jumbo v19, "Pushing "

    #@b8
    move-object/from16 v0, v17

    #@ba
    move-object/from16 v1, v19

    #@bc
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@bf
    move-result-object v17

    #@c0
    move-object/from16 v0, v17

    #@c2
    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@c5
    move-result-object v17

    #@c6
    const-string/jumbo v19, " active quota rules"

    #@c9
    move-object/from16 v0, v17

    #@cb
    move-object/from16 v1, v19

    #@cd
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@d0
    move-result-object v17

    #@d1
    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@d4
    move-result-object v17

    #@d5
    invoke-static/range {v16 .. v17}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@d8
    .line 621
    :cond_1
    move-object/from16 v0, p0

    #@da
    iget-object v5, v0, Lcom/android/server/NetworkManagementService;->mActiveQuotas:Ljava/util/HashMap;

    #@dc
    .line 622
    .local v5, "activeQuotas":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Long;>;"
    invoke-static {}, Lcom/google/android/collect/Maps;->newHashMap()Ljava/util/HashMap;

    #@df
    move-result-object v16

    #@e0
    move-object/from16 v0, v16

    #@e2
    move-object/from16 v1, p0

    #@e4
    iput-object v0, v1, Lcom/android/server/NetworkManagementService;->mActiveQuotas:Ljava/util/HashMap;

    #@e6
    .line 623
    invoke-virtual {v5}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    #@e9
    move-result-object v16

    #@ea
    invoke-interface/range {v16 .. v16}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@ed
    move-result-object v9

    #@ee
    .local v9, "entry$iterator":Ljava/util/Iterator;
    :goto_4
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    #@f1
    move-result v16

    #@f2
    if-eqz v16, :cond_4

    #@f4
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@f7
    move-result-object v8

    #@f8
    check-cast v8, Ljava/util/Map$Entry;

    #@fa
    .line 624
    .local v8, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Long;>;"
    invoke-interface {v8}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    #@fd
    move-result-object v16

    #@fe
    check-cast v16, Ljava/lang/String;

    #@100
    invoke-interface {v8}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    #@103
    move-result-object v17

    #@104
    check-cast v17, Ljava/lang/Long;

    #@106
    invoke-virtual/range {v17 .. v17}, Ljava/lang/Long;->longValue()J

    #@109
    move-result-wide v20

    #@10a
    move-object/from16 v0, p0

    #@10c
    move-object/from16 v1, v16

    #@10e
    move-wide/from16 v2, v20

    #@110
    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/NetworkManagementService;->setInterfaceQuota(Ljava/lang/String;J)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@113
    goto :goto_4

    #@114
    .line 614
    .end local v5    # "activeQuotas":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Long;>;"
    .end local v8    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Long;>;"
    .end local v9    # "entry$iterator":Ljava/util/Iterator;
    .end local v13    # "size":I
    :catchall_0
    move-exception v16

    #@115
    monitor-exit v18

    #@116
    throw v16

    #@117
    .line 590
    :catch_0
    move-exception v7

    #@118
    .line 591
    .local v7, "e":Lcom/android/server/NativeDaemonConnectorException;
    const-string/jumbo v16, "NetworkManagement"

    #@11b
    const-string/jumbo v17, "problem enabling bandwidth controls"

    #@11e
    move-object/from16 v0, v16

    #@120
    move-object/from16 v1, v17

    #@122
    invoke-static {v0, v1, v7}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@125
    goto/16 :goto_0

    #@127
    .line 594
    .end local v7    # "e":Lcom/android/server/NativeDaemonConnectorException;
    :cond_2
    const-string/jumbo v16, "NetworkManagement"

    #@12a
    const-string/jumbo v17, "not enabling bandwidth control"

    #@12d
    invoke-static/range {v16 .. v17}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@130
    goto/16 :goto_0

    #@132
    .line 597
    :cond_3
    const-string/jumbo v16, "0"

    #@135
    goto/16 :goto_1

    #@137
    .line 609
    :catch_1
    move-exception v7

    #@138
    .line 610
    .restart local v7    # "e":Lcom/android/server/NativeDaemonConnectorException;
    const-string/jumbo v16, "NetworkManagement"

    #@13b
    const-string/jumbo v17, "Failed strict enable"

    #@13e
    move-object/from16 v0, v16

    #@140
    move-object/from16 v1, v17

    #@142
    invoke-static {v0, v1, v7}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@145
    goto/16 :goto_3

    #@147
    .line 628
    .end local v7    # "e":Lcom/android/server/NativeDaemonConnectorException;
    .restart local v13    # "size":I
    :cond_4
    :try_start_4
    move-object/from16 v0, p0

    #@149
    iget-object v0, v0, Lcom/android/server/NetworkManagementService;->mActiveAlerts:Ljava/util/HashMap;

    #@14b
    move-object/from16 v16, v0

    #@14d
    invoke-virtual/range {v16 .. v16}, Ljava/util/HashMap;->size()I

    #@150
    move-result v13

    #@151
    .line 629
    if-lez v13, :cond_6

    #@153
    .line 630
    sget-boolean v16, Lcom/android/server/NetworkManagementService;->DBG:Z

    #@155
    if-eqz v16, :cond_5

    #@157
    const-string/jumbo v16, "NetworkManagement"

    #@15a
    new-instance v17, Ljava/lang/StringBuilder;

    #@15c
    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    #@15f
    const-string/jumbo v19, "Pushing "

    #@162
    move-object/from16 v0, v17

    #@164
    move-object/from16 v1, v19

    #@166
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@169
    move-result-object v17

    #@16a
    move-object/from16 v0, v17

    #@16c
    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@16f
    move-result-object v17

    #@170
    const-string/jumbo v19, " active alert rules"

    #@173
    move-object/from16 v0, v17

    #@175
    move-object/from16 v1, v19

    #@177
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@17a
    move-result-object v17

    #@17b
    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@17e
    move-result-object v17

    #@17f
    invoke-static/range {v16 .. v17}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@182
    .line 631
    :cond_5
    move-object/from16 v0, p0

    #@184
    iget-object v4, v0, Lcom/android/server/NetworkManagementService;->mActiveAlerts:Ljava/util/HashMap;

    #@186
    .line 632
    .local v4, "activeAlerts":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Long;>;"
    invoke-static {}, Lcom/google/android/collect/Maps;->newHashMap()Ljava/util/HashMap;

    #@189
    move-result-object v16

    #@18a
    move-object/from16 v0, v16

    #@18c
    move-object/from16 v1, p0

    #@18e
    iput-object v0, v1, Lcom/android/server/NetworkManagementService;->mActiveAlerts:Ljava/util/HashMap;

    #@190
    .line 633
    invoke-virtual {v4}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    #@193
    move-result-object v16

    #@194
    invoke-interface/range {v16 .. v16}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@197
    move-result-object v9

    #@198
    .restart local v9    # "entry$iterator":Ljava/util/Iterator;
    :goto_5
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    #@19b
    move-result v16

    #@19c
    if-eqz v16, :cond_6

    #@19e
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@1a1
    move-result-object v8

    #@1a2
    check-cast v8, Ljava/util/Map$Entry;

    #@1a4
    .line 634
    .restart local v8    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Long;>;"
    invoke-interface {v8}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    #@1a7
    move-result-object v16

    #@1a8
    check-cast v16, Ljava/lang/String;

    #@1aa
    invoke-interface {v8}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    #@1ad
    move-result-object v17

    #@1ae
    check-cast v17, Ljava/lang/Long;

    #@1b0
    invoke-virtual/range {v17 .. v17}, Ljava/lang/Long;->longValue()J

    #@1b3
    move-result-wide v20

    #@1b4
    move-object/from16 v0, p0

    #@1b6
    move-object/from16 v1, v16

    #@1b8
    move-wide/from16 v2, v20

    #@1ba
    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/NetworkManagementService;->setInterfaceAlert(Ljava/lang/String;J)V

    #@1bd
    goto :goto_5

    #@1be
    .line 638
    .end local v4    # "activeAlerts":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Long;>;"
    .end local v8    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Long;>;"
    .end local v9    # "entry$iterator":Ljava/util/Iterator;
    :cond_6
    move-object/from16 v0, p0

    #@1c0
    iget-object v0, v0, Lcom/android/server/NetworkManagementService;->mUidRejectOnMetered:Landroid/util/SparseBooleanArray;

    #@1c2
    move-object/from16 v16, v0

    #@1c4
    invoke-virtual/range {v16 .. v16}, Landroid/util/SparseBooleanArray;->size()I

    #@1c7
    move-result v13

    #@1c8
    .line 639
    if-lez v13, :cond_8

    #@1ca
    .line 640
    sget-boolean v16, Lcom/android/server/NetworkManagementService;->DBG:Z

    #@1cc
    if-eqz v16, :cond_7

    #@1ce
    const-string/jumbo v16, "NetworkManagement"

    #@1d1
    new-instance v17, Ljava/lang/StringBuilder;

    #@1d3
    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    #@1d6
    const-string/jumbo v19, "Pushing "

    #@1d9
    move-object/from16 v0, v17

    #@1db
    move-object/from16 v1, v19

    #@1dd
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1e0
    move-result-object v17

    #@1e1
    move-object/from16 v0, v17

    #@1e3
    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@1e6
    move-result-object v17

    #@1e7
    const-string/jumbo v19, " UIDs to metered whitelist rules"

    #@1ea
    move-object/from16 v0, v17

    #@1ec
    move-object/from16 v1, v19

    #@1ee
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1f1
    move-result-object v17

    #@1f2
    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1f5
    move-result-object v17

    #@1f6
    invoke-static/range {v16 .. v17}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@1f9
    .line 641
    :cond_7
    move-object/from16 v0, p0

    #@1fb
    iget-object v15, v0, Lcom/android/server/NetworkManagementService;->mUidRejectOnMetered:Landroid/util/SparseBooleanArray;

    #@1fd
    .line 642
    .local v15, "uidRejectOnQuota":Landroid/util/SparseBooleanArray;
    new-instance v16, Landroid/util/SparseBooleanArray;

    #@1ff
    invoke-direct/range {v16 .. v16}, Landroid/util/SparseBooleanArray;-><init>()V

    #@202
    move-object/from16 v0, v16

    #@204
    move-object/from16 v1, p0

    #@206
    iput-object v0, v1, Lcom/android/server/NetworkManagementService;->mUidRejectOnMetered:Landroid/util/SparseBooleanArray;

    #@208
    .line 643
    const/4 v11, 0x0

    #@209
    .local v11, "i":I
    :goto_6
    invoke-virtual {v15}, Landroid/util/SparseBooleanArray;->size()I

    #@20c
    move-result v16

    #@20d
    move/from16 v0, v16

    #@20f
    if-ge v11, v0, :cond_8

    #@211
    .line 644
    invoke-virtual {v15, v11}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    #@214
    move-result v16

    #@215
    .line 645
    invoke-virtual {v15, v11}, Landroid/util/SparseBooleanArray;->valueAt(I)Z

    #@218
    move-result v17

    #@219
    .line 644
    move-object/from16 v0, p0

    #@21b
    move/from16 v1, v16

    #@21d
    move/from16 v2, v17

    #@21f
    invoke-virtual {v0, v1, v2}, Lcom/android/server/NetworkManagementService;->setUidMeteredNetworkBlacklist(IZ)V

    #@222
    .line 643
    add-int/lit8 v11, v11, 0x1

    #@224
    goto :goto_6

    #@225
    .line 649
    .end local v11    # "i":I
    .end local v15    # "uidRejectOnQuota":Landroid/util/SparseBooleanArray;
    :cond_8
    move-object/from16 v0, p0

    #@227
    iget-object v0, v0, Lcom/android/server/NetworkManagementService;->mUidAllowOnMetered:Landroid/util/SparseBooleanArray;

    #@229
    move-object/from16 v16, v0

    #@22b
    invoke-virtual/range {v16 .. v16}, Landroid/util/SparseBooleanArray;->size()I

    #@22e
    move-result v13

    #@22f
    .line 650
    if-lez v13, :cond_a

    #@231
    .line 651
    sget-boolean v16, Lcom/android/server/NetworkManagementService;->DBG:Z

    #@233
    if-eqz v16, :cond_9

    #@235
    const-string/jumbo v16, "NetworkManagement"

    #@238
    new-instance v17, Ljava/lang/StringBuilder;

    #@23a
    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    #@23d
    const-string/jumbo v19, "Pushing "

    #@240
    move-object/from16 v0, v17

    #@242
    move-object/from16 v1, v19

    #@244
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@247
    move-result-object v17

    #@248
    move-object/from16 v0, v17

    #@24a
    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@24d
    move-result-object v17

    #@24e
    const-string/jumbo v19, " UIDs to metered blacklist rules"

    #@251
    move-object/from16 v0, v17

    #@253
    move-object/from16 v1, v19

    #@255
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@258
    move-result-object v17

    #@259
    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@25c
    move-result-object v17

    #@25d
    invoke-static/range {v16 .. v17}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@260
    .line 652
    :cond_9
    move-object/from16 v0, p0

    #@262
    iget-object v14, v0, Lcom/android/server/NetworkManagementService;->mUidAllowOnMetered:Landroid/util/SparseBooleanArray;

    #@264
    .line 653
    .local v14, "uidAcceptOnQuota":Landroid/util/SparseBooleanArray;
    new-instance v16, Landroid/util/SparseBooleanArray;

    #@266
    invoke-direct/range {v16 .. v16}, Landroid/util/SparseBooleanArray;-><init>()V

    #@269
    move-object/from16 v0, v16

    #@26b
    move-object/from16 v1, p0

    #@26d
    iput-object v0, v1, Lcom/android/server/NetworkManagementService;->mUidAllowOnMetered:Landroid/util/SparseBooleanArray;

    #@26f
    .line 654
    const/4 v11, 0x0

    #@270
    .restart local v11    # "i":I
    :goto_7
    invoke-virtual {v14}, Landroid/util/SparseBooleanArray;->size()I

    #@273
    move-result v16

    #@274
    move/from16 v0, v16

    #@276
    if-ge v11, v0, :cond_a

    #@278
    .line 655
    invoke-virtual {v14, v11}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    #@27b
    move-result v16

    #@27c
    .line 656
    invoke-virtual {v14, v11}, Landroid/util/SparseBooleanArray;->valueAt(I)Z

    #@27f
    move-result v17

    #@280
    .line 655
    move-object/from16 v0, p0

    #@282
    move/from16 v1, v16

    #@284
    move/from16 v2, v17

    #@286
    invoke-virtual {v0, v1, v2}, Lcom/android/server/NetworkManagementService;->setUidMeteredNetworkWhitelist(IZ)V

    #@289
    .line 654
    add-int/lit8 v11, v11, 0x1

    #@28b
    goto :goto_7

    #@28c
    .line 660
    .end local v11    # "i":I
    .end local v14    # "uidAcceptOnQuota":Landroid/util/SparseBooleanArray;
    :cond_a
    move-object/from16 v0, p0

    #@28e
    iget-object v0, v0, Lcom/android/server/NetworkManagementService;->mUidCleartextPolicy:Landroid/util/SparseIntArray;

    #@290
    move-object/from16 v16, v0

    #@292
    invoke-virtual/range {v16 .. v16}, Landroid/util/SparseIntArray;->size()I

    #@295
    move-result v13

    #@296
    .line 661
    if-lez v13, :cond_c

    #@298
    .line 662
    sget-boolean v16, Lcom/android/server/NetworkManagementService;->DBG:Z

    #@29a
    if-eqz v16, :cond_b

    #@29c
    const-string/jumbo v16, "NetworkManagement"

    #@29f
    new-instance v17, Ljava/lang/StringBuilder;

    #@2a1
    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    #@2a4
    const-string/jumbo v19, "Pushing "

    #@2a7
    move-object/from16 v0, v17

    #@2a9
    move-object/from16 v1, v19

    #@2ab
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2ae
    move-result-object v17

    #@2af
    move-object/from16 v0, v17

    #@2b1
    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@2b4
    move-result-object v17

    #@2b5
    const-string/jumbo v19, " active UID cleartext policies"

    #@2b8
    move-object/from16 v0, v17

    #@2ba
    move-object/from16 v1, v19

    #@2bc
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2bf
    move-result-object v17

    #@2c0
    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2c3
    move-result-object v17

    #@2c4
    invoke-static/range {v16 .. v17}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@2c7
    .line 663
    :cond_b
    move-object/from16 v0, p0

    #@2c9
    iget-object v12, v0, Lcom/android/server/NetworkManagementService;->mUidCleartextPolicy:Landroid/util/SparseIntArray;

    #@2cb
    .line 664
    .local v12, "local":Landroid/util/SparseIntArray;
    new-instance v16, Landroid/util/SparseIntArray;

    #@2cd
    invoke-direct/range {v16 .. v16}, Landroid/util/SparseIntArray;-><init>()V

    #@2d0
    move-object/from16 v0, v16

    #@2d2
    move-object/from16 v1, p0

    #@2d4
    iput-object v0, v1, Lcom/android/server/NetworkManagementService;->mUidCleartextPolicy:Landroid/util/SparseIntArray;

    #@2d6
    .line 665
    const/4 v11, 0x0

    #@2d7
    .restart local v11    # "i":I
    :goto_8
    invoke-virtual {v12}, Landroid/util/SparseIntArray;->size()I

    #@2da
    move-result v16

    #@2db
    move/from16 v0, v16

    #@2dd
    if-ge v11, v0, :cond_c

    #@2df
    .line 666
    invoke-virtual {v12, v11}, Landroid/util/SparseIntArray;->keyAt(I)I

    #@2e2
    move-result v16

    #@2e3
    invoke-virtual {v12, v11}, Landroid/util/SparseIntArray;->valueAt(I)I

    #@2e6
    move-result v17

    #@2e7
    move-object/from16 v0, p0

    #@2e9
    move/from16 v1, v16

    #@2eb
    move/from16 v2, v17

    #@2ed
    invoke-virtual {v0, v1, v2}, Lcom/android/server/NetworkManagementService;->setUidCleartextNetworkPolicy(II)V

    #@2f0
    .line 665
    add-int/lit8 v11, v11, 0x1

    #@2f2
    goto :goto_8

    #@2f3
    .line 670
    .end local v11    # "i":I
    .end local v12    # "local":Landroid/util/SparseIntArray;
    :cond_c
    move-object/from16 v0, p0

    #@2f5
    iget-boolean v0, v0, Lcom/android/server/NetworkManagementService;->mFirewallEnabled:Z

    #@2f7
    move/from16 v16, v0

    #@2f9
    if-nez v16, :cond_10

    #@2fb
    invoke-static {}, Lcom/android/server/net/LockdownVpnTracker;->isEnabled()Z

    #@2fe
    move-result v16

    #@2ff
    :goto_9
    move-object/from16 v0, p0

    #@301
    move/from16 v1, v16

    #@303
    invoke-virtual {v0, v1}, Lcom/android/server/NetworkManagementService;->setFirewallEnabled(Z)V

    #@306
    .line 672
    move-object/from16 v0, p0

    #@308
    iget-object v0, v0, Lcom/android/server/NetworkManagementService;->mUidFirewallRules:Landroid/util/SparseIntArray;

    #@30a
    move-object/from16 v16, v0

    #@30c
    const-string/jumbo v17, ""

    #@30f
    const/16 v19, 0x0

    #@311
    move-object/from16 v0, p0

    #@313
    move/from16 v1, v19

    #@315
    move-object/from16 v2, v16

    #@317
    move-object/from16 v3, v17

    #@319
    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/NetworkManagementService;->syncFirewallChainLocked(ILandroid/util/SparseIntArray;Ljava/lang/String;)V

    #@31c
    .line 673
    move-object/from16 v0, p0

    #@31e
    iget-object v0, v0, Lcom/android/server/NetworkManagementService;->mUidFirewallStandbyRules:Landroid/util/SparseIntArray;

    #@320
    move-object/from16 v16, v0

    #@322
    const-string/jumbo v17, "standby "

    #@325
    const/16 v19, 0x2

    #@327
    move-object/from16 v0, p0

    #@329
    move/from16 v1, v19

    #@32b
    move-object/from16 v2, v16

    #@32d
    move-object/from16 v3, v17

    #@32f
    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/NetworkManagementService;->syncFirewallChainLocked(ILandroid/util/SparseIntArray;Ljava/lang/String;)V

    #@332
    .line 674
    move-object/from16 v0, p0

    #@334
    iget-object v0, v0, Lcom/android/server/NetworkManagementService;->mUidFirewallDozableRules:Landroid/util/SparseIntArray;

    #@336
    move-object/from16 v16, v0

    #@338
    const-string/jumbo v17, "dozable "

    #@33b
    const/16 v19, 0x1

    #@33d
    move-object/from16 v0, p0

    #@33f
    move/from16 v1, v19

    #@341
    move-object/from16 v2, v16

    #@343
    move-object/from16 v3, v17

    #@345
    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/NetworkManagementService;->syncFirewallChainLocked(ILandroid/util/SparseIntArray;Ljava/lang/String;)V

    #@348
    .line 675
    move-object/from16 v0, p0

    #@34a
    iget-object v0, v0, Lcom/android/server/NetworkManagementService;->mUidFirewallPowerSaveRules:Landroid/util/SparseIntArray;

    #@34c
    move-object/from16 v16, v0

    #@34e
    .line 676
    const-string/jumbo v17, "powersave "

    #@351
    .line 675
    const/16 v19, 0x3

    #@353
    move-object/from16 v0, p0

    #@355
    move/from16 v1, v19

    #@357
    move-object/from16 v2, v16

    #@359
    move-object/from16 v3, v17

    #@35b
    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/NetworkManagementService;->syncFirewallChainLocked(ILandroid/util/SparseIntArray;Ljava/lang/String;)V

    #@35e
    .line 678
    move-object/from16 v0, p0

    #@360
    iget-object v0, v0, Lcom/android/server/NetworkManagementService;->mFirewallChainStates:Landroid/util/SparseBooleanArray;

    #@362
    move-object/from16 v16, v0

    #@364
    const/16 v17, 0x2

    #@366
    invoke-virtual/range {v16 .. v17}, Landroid/util/SparseBooleanArray;->get(I)Z

    #@369
    move-result v16

    #@36a
    if-eqz v16, :cond_d

    #@36c
    .line 679
    const/16 v16, 0x2

    #@36e
    const/16 v17, 0x1

    #@370
    move-object/from16 v0, p0

    #@372
    move/from16 v1, v16

    #@374
    move/from16 v2, v17

    #@376
    invoke-virtual {v0, v1, v2}, Lcom/android/server/NetworkManagementService;->setFirewallChainEnabled(IZ)V

    #@379
    .line 681
    :cond_d
    move-object/from16 v0, p0

    #@37b
    iget-object v0, v0, Lcom/android/server/NetworkManagementService;->mFirewallChainStates:Landroid/util/SparseBooleanArray;

    #@37d
    move-object/from16 v16, v0

    #@37f
    const/16 v17, 0x1

    #@381
    invoke-virtual/range {v16 .. v17}, Landroid/util/SparseBooleanArray;->get(I)Z

    #@384
    move-result v16

    #@385
    if-eqz v16, :cond_e

    #@387
    .line 682
    const/16 v16, 0x1

    #@389
    const/16 v17, 0x1

    #@38b
    move-object/from16 v0, p0

    #@38d
    move/from16 v1, v16

    #@38f
    move/from16 v2, v17

    #@391
    invoke-virtual {v0, v1, v2}, Lcom/android/server/NetworkManagementService;->setFirewallChainEnabled(IZ)V

    #@394
    .line 684
    :cond_e
    move-object/from16 v0, p0

    #@396
    iget-object v0, v0, Lcom/android/server/NetworkManagementService;->mFirewallChainStates:Landroid/util/SparseBooleanArray;

    #@398
    move-object/from16 v16, v0

    #@39a
    const/16 v17, 0x3

    #@39c
    invoke-virtual/range {v16 .. v17}, Landroid/util/SparseBooleanArray;->get(I)Z

    #@39f
    move-result v16

    #@3a0
    if-eqz v16, :cond_f

    #@3a2
    .line 685
    const/16 v16, 0x3

    #@3a4
    const/16 v17, 0x1

    #@3a6
    move-object/from16 v0, p0

    #@3a8
    move/from16 v1, v16

    #@3aa
    move/from16 v2, v17

    #@3ac
    invoke-virtual {v0, v1, v2}, Lcom/android/server/NetworkManagementService;->setFirewallChainEnabled(IZ)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    #@3af
    :cond_f
    monitor-exit v18

    #@3b0
    .line 579
    return-void

    #@3b1
    .line 670
    :cond_10
    const/16 v16, 0x1

    #@3b3
    goto/16 :goto_9

    #@3b5
    .line 602
    .end local v13    # "size":I
    :catch_2
    move-exception v6

    #@3b6
    .local v6, "e":Landroid/os/RemoteException;
    goto/16 :goto_2
.end method

.method private readRouteList(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 8
    .param p1, "filename"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 1163
    const/4 v2, 0x0

    #@1
    .line 1164
    .local v2, "fstream":Ljava/io/FileInputStream;
    new-instance v5, Ljava/util/ArrayList;

    #@3
    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    #@6
    .line 1167
    .local v5, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :try_start_0
    new-instance v3, Ljava/io/FileInputStream;

    #@8
    invoke-direct {v3, p1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@b
    .line 1168
    .end local v2    # "fstream":Ljava/io/FileInputStream;
    .local v3, "fstream":Ljava/io/FileInputStream;
    :try_start_1
    new-instance v4, Ljava/io/DataInputStream;

    #@d
    invoke-direct {v4, v3}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    #@10
    .line 1169
    .local v4, "in":Ljava/io/DataInputStream;
    new-instance v0, Ljava/io/BufferedReader;

    #@12
    new-instance v7, Ljava/io/InputStreamReader;

    #@14
    invoke-direct {v7, v4}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    #@17
    invoke-direct {v0, v7}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    #@1a
    .line 1174
    .local v0, "br":Ljava/io/BufferedReader;
    :goto_0
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    #@1d
    move-result-object v6

    #@1e
    .local v6, "s":Ljava/lang/String;
    if-eqz v6, :cond_1

    #@20
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    #@23
    move-result v7

    #@24
    if-eqz v7, :cond_1

    #@26
    .line 1175
    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    #@29
    goto :goto_0

    #@2a
    .line 1177
    .end local v0    # "br":Ljava/io/BufferedReader;
    .end local v4    # "in":Ljava/io/DataInputStream;
    .end local v6    # "s":Ljava/lang/String;
    :catch_0
    move-exception v1

    #@2b
    .local v1, "ex":Ljava/io/IOException;
    move-object v2, v3

    #@2c
    .line 1180
    .end local v3    # "fstream":Ljava/io/FileInputStream;
    :goto_1
    if-eqz v2, :cond_0

    #@2e
    .line 1182
    :try_start_2
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    #@31
    .line 1187
    .end local v1    # "ex":Ljava/io/IOException;
    :cond_0
    :goto_2
    return-object v5

    #@32
    .line 1180
    .restart local v0    # "br":Ljava/io/BufferedReader;
    .restart local v3    # "fstream":Ljava/io/FileInputStream;
    .restart local v4    # "in":Ljava/io/DataInputStream;
    .restart local v6    # "s":Ljava/lang/String;
    :cond_1
    if-eqz v3, :cond_2

    #@34
    .line 1182
    :try_start_3
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    #@37
    :cond_2
    :goto_3
    move-object v2, v3

    #@38
    .end local v3    # "fstream":Ljava/io/FileInputStream;
    .local v2, "fstream":Ljava/io/FileInputStream;
    goto :goto_2

    #@39
    .line 1183
    .end local v2    # "fstream":Ljava/io/FileInputStream;
    .restart local v3    # "fstream":Ljava/io/FileInputStream;
    :catch_1
    move-exception v1

    #@3a
    .restart local v1    # "ex":Ljava/io/IOException;
    goto :goto_3

    #@3b
    .end local v0    # "br":Ljava/io/BufferedReader;
    .end local v3    # "fstream":Ljava/io/FileInputStream;
    .end local v4    # "in":Ljava/io/DataInputStream;
    .end local v6    # "s":Ljava/lang/String;
    :catch_2
    move-exception v1

    #@3c
    goto :goto_2

    #@3d
    .line 1179
    .end local v1    # "ex":Ljava/io/IOException;
    .local v2, "fstream":Ljava/io/FileInputStream;
    :catchall_0
    move-exception v7

    #@3e
    .line 1180
    .end local v2    # "fstream":Ljava/io/FileInputStream;
    :goto_4
    if-eqz v2, :cond_3

    #@40
    .line 1182
    :try_start_4
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    #@43
    .line 1179
    :cond_3
    :goto_5
    throw v7

    #@44
    .line 1183
    :catch_3
    move-exception v1

    #@45
    .restart local v1    # "ex":Ljava/io/IOException;
    goto :goto_5

    #@46
    .line 1179
    .end local v1    # "ex":Ljava/io/IOException;
    .restart local v3    # "fstream":Ljava/io/FileInputStream;
    :catchall_1
    move-exception v7

    #@47
    move-object v2, v3

    #@48
    .end local v3    # "fstream":Ljava/io/FileInputStream;
    .local v2, "fstream":Ljava/io/FileInputStream;
    goto :goto_4

    #@49
    .line 1177
    .local v2, "fstream":Ljava/io/FileInputStream;
    :catch_4
    move-exception v1

    #@4a
    .restart local v1    # "ex":Ljava/io/IOException;
    goto :goto_1
.end method

.method private reportNetworkActive()V
    .locals 5

    #@0
    .prologue
    .line 2451
    iget-object v3, p0, Lcom/android/server/NetworkManagementService;->mNetworkActivityListeners:Landroid/os/RemoteCallbackList;

    #@2
    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    #@5
    move-result v2

    #@6
    .line 2453
    .local v2, "length":I
    const/4 v1, 0x0

    #@7
    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_0

    #@9
    .line 2455
    :try_start_0
    iget-object v3, p0, Lcom/android/server/NetworkManagementService;->mNetworkActivityListeners:Landroid/os/RemoteCallbackList;

    #@b
    invoke-virtual {v3, v1}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    #@e
    move-result-object v3

    #@f
    check-cast v3, Landroid/os/INetworkActivityListener;

    #@11
    invoke-interface {v3}, Landroid/os/INetworkActivityListener;->onNetworkActive()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@14
    .line 2453
    :goto_1
    add-int/lit8 v1, v1, 0x1

    #@16
    goto :goto_0

    #@17
    .line 2460
    :cond_0
    iget-object v3, p0, Lcom/android/server/NetworkManagementService;->mNetworkActivityListeners:Landroid/os/RemoteCallbackList;

    #@19
    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    #@1c
    .line 2450
    return-void

    #@1d
    .line 2459
    :catchall_0
    move-exception v3

    #@1e
    .line 2460
    iget-object v4, p0, Lcom/android/server/NetworkManagementService;->mNetworkActivityListeners:Landroid/os/RemoteCallbackList;

    #@20
    invoke-virtual {v4}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    #@23
    .line 2459
    throw v3

    #@24
    .line 2456
    :catch_0
    move-exception v0

    #@25
    .local v0, "e":Ljava/lang/Exception;
    goto :goto_1
.end method

.method private setFirewallUidRuleLocked(III)V
    .locals 6
    .param p1, "chain"    # I
    .param p2, "uid"    # I
    .param p3, "rule"    # I

    #@0
    .prologue
    .line 2305
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/NetworkManagementService;->updateFirewallUidRuleLocked(III)Z

    #@3
    move-result v1

    #@4
    if-eqz v1, :cond_0

    #@6
    .line 2307
    :try_start_0
    iget-object v1, p0, Lcom/android/server/NetworkManagementService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    #@8
    const-string/jumbo v2, "firewall"

    #@b
    const/4 v3, 0x4

    #@c
    new-array v3, v3, [Ljava/lang/Object;

    #@e
    const-string/jumbo v4, "set_uid_rule"

    #@11
    const/4 v5, 0x0

    #@12
    aput-object v4, v3, v5

    #@14
    invoke-virtual {p0, p1}, Lcom/android/server/NetworkManagementService;->getFirewallChainName(I)Ljava/lang/String;

    #@17
    move-result-object v4

    #@18
    const/4 v5, 0x1

    #@19
    aput-object v4, v3, v5

    #@1b
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@1e
    move-result-object v4

    #@1f
    const/4 v5, 0x2

    #@20
    aput-object v4, v3, v5

    #@22
    .line 2308
    invoke-direct {p0, p1, p3}, Lcom/android/server/NetworkManagementService;->getFirewallRuleName(II)Ljava/lang/String;

    #@25
    move-result-object v4

    #@26
    const/4 v5, 0x3

    #@27
    aput-object v4, v3, v5

    #@29
    .line 2307
    invoke-virtual {v1, v2, v3}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;
    :try_end_0
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_0 .. :try_end_0} :catch_0

    #@2c
    .line 2304
    :cond_0
    return-void

    #@2d
    .line 2309
    :catch_0
    move-exception v0

    #@2e
    .line 2310
    .local v0, "e":Lcom/android/server/NativeDaemonConnectorException;
    invoke-virtual {v0}, Lcom/android/server/NativeDaemonConnectorException;->rethrowAsParcelableException()Ljava/lang/IllegalArgumentException;

    #@31
    move-result-object v1

    #@32
    throw v1
.end method

.method private setUidOnMeteredNetworkList(Landroid/util/SparseBooleanArray;IZZ)V
    .locals 10
    .param p1, "quotaList"    # Landroid/util/SparseBooleanArray;
    .param p2, "uid"    # I
    .param p3, "blacklist"    # Z
    .param p4, "enable"    # Z

    #@0
    .prologue
    .line 1790
    iget-object v4, p0, Lcom/android/server/NetworkManagementService;->mContext:Landroid/content/Context;

    #@2
    const-string/jumbo v5, "android.permission.CONNECTIVITY_INTERNAL"

    #@5
    const-string/jumbo v6, "NetworkManagement"

    #@8
    invoke-virtual {v4, v5, v6}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    #@b
    .line 1794
    iget-boolean v4, p0, Lcom/android/server/NetworkManagementService;->mBandwidthControlEnabled:Z

    #@d
    if-nez v4, :cond_0

    #@f
    return-void

    #@10
    .line 1796
    :cond_0
    if-eqz p3, :cond_1

    #@12
    const-string/jumbo v0, "naughtyapps"

    #@15
    .line 1797
    .local v0, "chain":Ljava/lang/String;
    :goto_0
    if-eqz p4, :cond_2

    #@17
    const-string/jumbo v3, "add"

    #@1a
    .line 1799
    .local v3, "suffix":Ljava/lang/String;
    :goto_1
    iget-object v5, p0, Lcom/android/server/NetworkManagementService;->mQuotaLock:Ljava/lang/Object;

    #@1c
    monitor-enter v5

    #@1d
    .line 1800
    const/4 v4, 0x0

    #@1e
    :try_start_0
    invoke-virtual {p1, p2, v4}, Landroid/util/SparseBooleanArray;->get(IZ)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@21
    move-result v2

    #@22
    .line 1801
    .local v2, "oldEnable":Z
    if-ne v2, p4, :cond_3

    #@24
    monitor-exit v5

    #@25
    .line 1803
    return-void

    #@26
    .line 1796
    .end local v0    # "chain":Ljava/lang/String;
    .end local v2    # "oldEnable":Z
    .end local v3    # "suffix":Ljava/lang/String;
    :cond_1
    const-string/jumbo v0, "niceapps"

    #@29
    .restart local v0    # "chain":Ljava/lang/String;
    goto :goto_0

    #@2a
    .line 1797
    :cond_2
    const-string/jumbo v3, "remove"

    #@2d
    .restart local v3    # "suffix":Ljava/lang/String;
    goto :goto_1

    #@2e
    .line 1807
    .restart local v2    # "oldEnable":Z
    :cond_3
    :try_start_1
    iget-object v4, p0, Lcom/android/server/NetworkManagementService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    #@30
    const-string/jumbo v6, "bandwidth"

    #@33
    const/4 v7, 0x2

    #@34
    new-array v7, v7, [Ljava/lang/Object;

    #@36
    new-instance v8, Ljava/lang/StringBuilder;

    #@38
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    #@3b
    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3e
    move-result-object v8

    #@3f
    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@42
    move-result-object v8

    #@43
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@46
    move-result-object v8

    #@47
    const/4 v9, 0x0

    #@48
    aput-object v8, v7, v9

    #@4a
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@4d
    move-result-object v8

    #@4e
    const/4 v9, 0x1

    #@4f
    aput-object v8, v7, v9

    #@51
    invoke-virtual {v4, v6, v7}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;

    #@54
    .line 1808
    if-eqz p4, :cond_4

    #@56
    .line 1809
    const/4 v4, 0x1

    #@57
    invoke-virtual {p1, p2, v4}, Landroid/util/SparseBooleanArray;->put(IZ)V
    :try_end_1
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@5a
    :goto_2
    monitor-exit v5

    #@5b
    .line 1789
    return-void

    #@5c
    .line 1811
    :cond_4
    :try_start_2
    invoke-virtual {p1, p2}, Landroid/util/SparseBooleanArray;->delete(I)V
    :try_end_2
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@5f
    goto :goto_2

    #@60
    .line 1813
    :catch_0
    move-exception v1

    #@61
    .line 1814
    .local v1, "e":Lcom/android/server/NativeDaemonConnectorException;
    :try_start_3
    invoke-virtual {v1}, Lcom/android/server/NativeDaemonConnectorException;->rethrowAsParcelableException()Ljava/lang/IllegalArgumentException;

    #@64
    move-result-object v4

    #@65
    throw v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@66
    .line 1799
    .end local v1    # "e":Lcom/android/server/NativeDaemonConnectorException;
    .end local v2    # "oldEnable":Z
    :catchall_0
    move-exception v4

    #@67
    monitor-exit v5

    #@68
    throw v4
.end method

.method private syncFirewallChainLocked(ILandroid/util/SparseIntArray;Ljava/lang/String;)V
    .locals 6
    .param p1, "chain"    # I
    .param p2, "uidFirewallRules"    # Landroid/util/SparseIntArray;
    .param p3, "name"    # Ljava/lang/String;

    #@0
    .prologue
    .line 544
    invoke-virtual {p2}, Landroid/util/SparseIntArray;->size()I

    #@3
    move-result v2

    #@4
    .line 545
    .local v2, "size":I
    if-lez v2, :cond_1

    #@6
    .line 551
    invoke-virtual {p2}, Landroid/util/SparseIntArray;->clone()Landroid/util/SparseIntArray;

    #@9
    move-result-object v1

    #@a
    .line 552
    .local v1, "rules":Landroid/util/SparseIntArray;
    invoke-virtual {p2}, Landroid/util/SparseIntArray;->clear()V

    #@d
    .line 557
    sget-boolean v3, Lcom/android/server/NetworkManagementService;->DBG:Z

    #@f
    if-eqz v3, :cond_0

    #@11
    const-string/jumbo v3, "NetworkManagement"

    #@14
    new-instance v4, Ljava/lang/StringBuilder;

    #@16
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@19
    const-string/jumbo v5, "Pushing "

    #@1c
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1f
    move-result-object v4

    #@20
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@23
    move-result-object v4

    #@24
    const-string/jumbo v5, " active firewall "

    #@27
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2a
    move-result-object v4

    #@2b
    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2e
    move-result-object v4

    #@2f
    const-string/jumbo v5, "UID rules"

    #@32
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@35
    move-result-object v4

    #@36
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@39
    move-result-object v4

    #@3a
    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@3d
    .line 558
    :cond_0
    const/4 v0, 0x0

    #@3e
    .local v0, "i":I
    :goto_0
    invoke-virtual {v1}, Landroid/util/SparseIntArray;->size()I

    #@41
    move-result v3

    #@42
    if-ge v0, v3, :cond_1

    #@44
    .line 559
    invoke-virtual {v1, v0}, Landroid/util/SparseIntArray;->keyAt(I)I

    #@47
    move-result v3

    #@48
    invoke-virtual {v1, v0}, Landroid/util/SparseIntArray;->valueAt(I)I

    #@4b
    move-result v4

    #@4c
    invoke-direct {p0, p1, v3, v4}, Lcom/android/server/NetworkManagementService;->setFirewallUidRuleLocked(III)V

    #@4f
    .line 558
    add-int/lit8 v0, v0, 0x1

    #@51
    goto :goto_0

    #@52
    .line 543
    .end local v0    # "i":I
    .end local v1    # "rules":Landroid/util/SparseIntArray;
    :cond_1
    return-void
.end method

.method private updateFirewallUidRuleLocked(III)Z
    .locals 8
    .param p1, "chain"    # I
    .param p2, "uid"    # I
    .param p3, "rule"    # I

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 2317
    invoke-direct {p0, p1}, Lcom/android/server/NetworkManagementService;->getUidFirewallRules(I)Landroid/util/SparseIntArray;

    #@4
    move-result-object v3

    #@5
    .line 2319
    .local v3, "uidFirewallRules":Landroid/util/SparseIntArray;
    invoke-virtual {v3, p2, v4}, Landroid/util/SparseIntArray;->get(II)I

    #@8
    move-result v1

    #@9
    .line 2320
    .local v1, "oldUidFirewallRule":I
    sget-boolean v5, Lcom/android/server/NetworkManagementService;->DBG:Z

    #@b
    if-eqz v5, :cond_0

    #@d
    .line 2321
    const-string/jumbo v5, "NetworkManagement"

    #@10
    new-instance v6, Ljava/lang/StringBuilder;

    #@12
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@15
    const-string/jumbo v7, "oldRule = "

    #@18
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1b
    move-result-object v6

    #@1c
    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@1f
    move-result-object v6

    #@20
    .line 2322
    const-string/jumbo v7, ", newRule="

    #@23
    .line 2321
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@26
    move-result-object v6

    #@27
    invoke-virtual {v6, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@2a
    move-result-object v6

    #@2b
    .line 2322
    const-string/jumbo v7, " for uid="

    #@2e
    .line 2321
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@31
    move-result-object v6

    #@32
    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@35
    move-result-object v6

    #@36
    .line 2322
    const-string/jumbo v7, " on chain "

    #@39
    .line 2321
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3c
    move-result-object v6

    #@3d
    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@40
    move-result-object v6

    #@41
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@44
    move-result-object v6

    #@45
    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@48
    .line 2324
    :cond_0
    if-ne v1, p3, :cond_2

    #@4a
    .line 2325
    sget-boolean v5, Lcom/android/server/NetworkManagementService;->DBG:Z

    #@4c
    if-eqz v5, :cond_1

    #@4e
    const-string/jumbo v5, "NetworkManagement"

    #@51
    const-string/jumbo v6, "!!!!! Skipping change"

    #@54
    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@57
    .line 2327
    :cond_1
    return v4

    #@58
    .line 2330
    :cond_2
    invoke-direct {p0, p1, p3}, Lcom/android/server/NetworkManagementService;->getFirewallRuleName(II)Ljava/lang/String;

    #@5b
    move-result-object v2

    #@5c
    .line 2331
    .local v2, "ruleName":Ljava/lang/String;
    invoke-direct {p0, p1, v1}, Lcom/android/server/NetworkManagementService;->getFirewallRuleName(II)Ljava/lang/String;

    #@5f
    move-result-object v0

    #@60
    .line 2333
    .local v0, "oldRuleName":Ljava/lang/String;
    if-nez p3, :cond_3

    #@62
    .line 2334
    invoke-virtual {v3, p2}, Landroid/util/SparseIntArray;->delete(I)V

    #@65
    .line 2338
    :goto_0
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@68
    move-result v5

    #@69
    if-eqz v5, :cond_4

    #@6b
    :goto_1
    return v4

    #@6c
    .line 2336
    :cond_3
    invoke-virtual {v3, p2, p3}, Landroid/util/SparseIntArray;->put(II)V

    #@6f
    goto :goto_0

    #@70
    .line 2338
    :cond_4
    const/4 v4, 0x1

    #@71
    goto :goto_1
.end method


# virtual methods
.method public addIdleTimer(Ljava/lang/String;II)V
    .locals 8
    .param p1, "iface"    # Ljava/lang/String;
    .param p2, "timeout"    # I
    .param p3, "type"    # I

    #@0
    .prologue
    .line 1579
    iget-object v2, p0, Lcom/android/server/NetworkManagementService;->mContext:Landroid/content/Context;

    #@2
    const-string/jumbo v3, "android.permission.CONNECTIVITY_INTERNAL"

    #@5
    const-string/jumbo v4, "NetworkManagement"

    #@8
    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    #@b
    .line 1581
    sget-boolean v2, Lcom/android/server/NetworkManagementService;->DBG:Z

    #@d
    if-eqz v2, :cond_0

    #@f
    const-string/jumbo v2, "NetworkManagement"

    #@12
    const-string/jumbo v3, "Adding idletimer"

    #@15
    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@18
    .line 1583
    :cond_0
    iget-object v3, p0, Lcom/android/server/NetworkManagementService;->mIdleTimerLock:Ljava/lang/Object;

    #@1a
    monitor-enter v3

    #@1b
    .line 1584
    :try_start_0
    iget-object v2, p0, Lcom/android/server/NetworkManagementService;->mActiveIdleTimers:Ljava/util/HashMap;

    #@1d
    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@20
    move-result-object v1

    #@21
    check-cast v1, Lcom/android/server/NetworkManagementService$IdleTimerParams;

    #@23
    .line 1585
    .local v1, "params":Lcom/android/server/NetworkManagementService$IdleTimerParams;
    if-eqz v1, :cond_1

    #@25
    .line 1587
    iget v2, v1, Lcom/android/server/NetworkManagementService$IdleTimerParams;->networkCount:I

    #@27
    add-int/lit8 v2, v2, 0x1

    #@29
    iput v2, v1, Lcom/android/server/NetworkManagementService$IdleTimerParams;->networkCount:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@2b
    monitor-exit v3

    #@2c
    .line 1588
    return-void

    #@2d
    .line 1592
    :cond_1
    :try_start_1
    iget-object v2, p0, Lcom/android/server/NetworkManagementService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    #@2f
    const-string/jumbo v4, "idletimer"

    #@32
    const/4 v5, 0x4

    #@33
    new-array v5, v5, [Ljava/lang/Object;

    #@35
    const-string/jumbo v6, "add"

    #@38
    const/4 v7, 0x0

    #@39
    aput-object v6, v5, v7

    #@3b
    const/4 v6, 0x1

    #@3c
    aput-object p1, v5, v6

    #@3e
    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    #@41
    move-result-object v6

    #@42
    const/4 v7, 0x2

    #@43
    aput-object v6, v5, v7

    #@45
    .line 1593
    invoke-static {p3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    #@48
    move-result-object v6

    #@49
    const/4 v7, 0x3

    #@4a
    aput-object v6, v5, v7

    #@4c
    .line 1592
    invoke-virtual {v2, v4, v5}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;
    :try_end_1
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@4f
    .line 1597
    :try_start_2
    iget-object v2, p0, Lcom/android/server/NetworkManagementService;->mActiveIdleTimers:Ljava/util/HashMap;

    #@51
    new-instance v4, Lcom/android/server/NetworkManagementService$IdleTimerParams;

    #@53
    invoke-direct {v4, p2, p3}, Lcom/android/server/NetworkManagementService$IdleTimerParams;-><init>(II)V

    #@56
    invoke-virtual {v2, p1, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@59
    .line 1600
    invoke-static {p3}, Landroid/net/ConnectivityManager;->isNetworkTypeMobile(I)Z

    #@5c
    move-result v2

    #@5d
    if-eqz v2, :cond_2

    #@5f
    .line 1601
    const/4 v2, 0x0

    #@60
    iput-boolean v2, p0, Lcom/android/server/NetworkManagementService;->mNetworkActive:Z

    #@62
    .line 1603
    :cond_2
    iget-object v2, p0, Lcom/android/server/NetworkManagementService;->mDaemonHandler:Landroid/os/Handler;

    #@64
    new-instance v4, Lcom/android/server/NetworkManagementService$1;

    #@66
    invoke-direct {v4, p0, p3}, Lcom/android/server/NetworkManagementService$1;-><init>(Lcom/android/server/NetworkManagementService;I)V

    #@69
    invoke-virtual {v2, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@6c
    monitor-exit v3

    #@6d
    .line 1578
    return-void

    #@6e
    .line 1594
    :catch_0
    move-exception v0

    #@6f
    .line 1595
    .local v0, "e":Lcom/android/server/NativeDaemonConnectorException;
    :try_start_3
    invoke-virtual {v0}, Lcom/android/server/NativeDaemonConnectorException;->rethrowAsParcelableException()Ljava/lang/IllegalArgumentException;

    #@72
    move-result-object v2

    #@73
    throw v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@74
    .line 1583
    .end local v0    # "e":Lcom/android/server/NativeDaemonConnectorException;
    .end local v1    # "params":Lcom/android/server/NetworkManagementService$IdleTimerParams;
    :catchall_0
    move-exception v2

    #@75
    monitor-exit v3

    #@76
    throw v2
.end method

.method public addInterfaceToLocalNetwork(Ljava/lang/String;Ljava/util/List;)V
    .locals 4
    .param p1, "iface"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Landroid/net/RouteInfo;",
            ">;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 2753
    .local p2, "routes":Ljava/util/List;, "Ljava/util/List<Landroid/net/RouteInfo;>;"
    const-string/jumbo v2, "add"

    #@3
    const-string/jumbo v3, "local"

    #@6
    invoke-direct {p0, v2, v3, p1}, Lcom/android/server/NetworkManagementService;->modifyInterfaceInNetwork(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    #@9
    .line 2755
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@c
    move-result-object v1

    #@d
    .local v1, "route$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@10
    move-result v2

    #@11
    if-eqz v2, :cond_1

    #@13
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@16
    move-result-object v0

    #@17
    check-cast v0, Landroid/net/RouteInfo;

    #@19
    .line 2756
    .local v0, "route":Landroid/net/RouteInfo;
    invoke-virtual {v0}, Landroid/net/RouteInfo;->isDefaultRoute()Z

    #@1c
    move-result v2

    #@1d
    if-nez v2, :cond_0

    #@1f
    .line 2757
    const-string/jumbo v2, "add"

    #@22
    const-string/jumbo v3, "local"

    #@25
    invoke-direct {p0, v2, v3, v0}, Lcom/android/server/NetworkManagementService;->modifyRoute(Ljava/lang/String;Ljava/lang/String;Landroid/net/RouteInfo;)V

    #@28
    goto :goto_0

    #@29
    .line 2752
    .end local v0    # "route":Landroid/net/RouteInfo;
    :cond_1
    return-void
.end method

.method public addInterfaceToNetwork(Ljava/lang/String;I)V
    .locals 3
    .param p1, "iface"    # Ljava/lang/String;
    .param p2, "netId"    # I

    #@0
    .prologue
    .line 2606
    const-string/jumbo v0, "add"

    #@3
    new-instance v1, Ljava/lang/StringBuilder;

    #@5
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@8
    const-string/jumbo v2, ""

    #@b
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@e
    move-result-object v1

    #@f
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@12
    move-result-object v1

    #@13
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@16
    move-result-object v1

    #@17
    invoke-direct {p0, v0, v1, p1}, Lcom/android/server/NetworkManagementService;->modifyInterfaceInNetwork(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    #@1a
    .line 2605
    return-void
.end method

.method public addLegacyRouteForNetId(ILandroid/net/RouteInfo;I)V
    .locals 7
    .param p1, "netId"    # I
    .param p2, "routeInfo"    # Landroid/net/RouteInfo;
    .param p3, "uid"    # I

    #@0
    .prologue
    .line 2625
    iget-object v3, p0, Lcom/android/server/NetworkManagementService;->mContext:Landroid/content/Context;

    #@2
    const-string/jumbo v4, "android.permission.CONNECTIVITY_INTERNAL"

    #@5
    const-string/jumbo v5, "NetworkManagement"

    #@8
    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    #@b
    .line 2627
    new-instance v0, Lcom/android/server/NativeDaemonConnector$Command;

    #@d
    const-string/jumbo v3, "network"

    #@10
    const/4 v4, 0x5

    #@11
    new-array v4, v4, [Ljava/lang/Object;

    #@13
    const-string/jumbo v5, "route"

    #@16
    const/4 v6, 0x0

    #@17
    aput-object v5, v4, v6

    #@19
    const-string/jumbo v5, "legacy"

    #@1c
    const/4 v6, 0x1

    #@1d
    aput-object v5, v4, v6

    #@1f
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@22
    move-result-object v5

    #@23
    const/4 v6, 0x2

    #@24
    aput-object v5, v4, v6

    #@26
    const-string/jumbo v5, "add"

    #@29
    const/4 v6, 0x3

    #@2a
    aput-object v5, v4, v6

    #@2c
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@2f
    move-result-object v5

    #@30
    const/4 v6, 0x4

    #@31
    aput-object v5, v4, v6

    #@33
    invoke-direct {v0, v3, v4}, Lcom/android/server/NativeDaemonConnector$Command;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    #@36
    .line 2630
    .local v0, "cmd":Lcom/android/server/NativeDaemonConnector$Command;
    invoke-virtual {p2}, Landroid/net/RouteInfo;->getDestinationLinkAddress()Landroid/net/LinkAddress;

    #@39
    move-result-object v2

    #@3a
    .line 2631
    .local v2, "la":Landroid/net/LinkAddress;
    invoke-virtual {p2}, Landroid/net/RouteInfo;->getInterface()Ljava/lang/String;

    #@3d
    move-result-object v3

    #@3e
    invoke-virtual {v0, v3}, Lcom/android/server/NativeDaemonConnector$Command;->appendArg(Ljava/lang/Object;)Lcom/android/server/NativeDaemonConnector$Command;

    #@41
    .line 2632
    new-instance v3, Ljava/lang/StringBuilder;

    #@43
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@46
    invoke-virtual {v2}, Landroid/net/LinkAddress;->getAddress()Ljava/net/InetAddress;

    #@49
    move-result-object v4

    #@4a
    invoke-virtual {v4}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    #@4d
    move-result-object v4

    #@4e
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@51
    move-result-object v3

    #@52
    const-string/jumbo v4, "/"

    #@55
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@58
    move-result-object v3

    #@59
    invoke-virtual {v2}, Landroid/net/LinkAddress;->getPrefixLength()I

    #@5c
    move-result v4

    #@5d
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@60
    move-result-object v3

    #@61
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@64
    move-result-object v3

    #@65
    invoke-virtual {v0, v3}, Lcom/android/server/NativeDaemonConnector$Command;->appendArg(Ljava/lang/Object;)Lcom/android/server/NativeDaemonConnector$Command;

    #@68
    .line 2633
    invoke-virtual {p2}, Landroid/net/RouteInfo;->hasGateway()Z

    #@6b
    move-result v3

    #@6c
    if-eqz v3, :cond_0

    #@6e
    .line 2634
    invoke-virtual {p2}, Landroid/net/RouteInfo;->getGateway()Ljava/net/InetAddress;

    #@71
    move-result-object v3

    #@72
    invoke-virtual {v3}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    #@75
    move-result-object v3

    #@76
    invoke-virtual {v0, v3}, Lcom/android/server/NativeDaemonConnector$Command;->appendArg(Ljava/lang/Object;)Lcom/android/server/NativeDaemonConnector$Command;

    #@79
    .line 2638
    :cond_0
    :try_start_0
    iget-object v3, p0, Lcom/android/server/NetworkManagementService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    #@7b
    invoke-virtual {v3, v0}, Lcom/android/server/NativeDaemonConnector;->execute(Lcom/android/server/NativeDaemonConnector$Command;)Lcom/android/server/NativeDaemonEvent;
    :try_end_0
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_0 .. :try_end_0} :catch_0

    #@7e
    .line 2624
    return-void

    #@7f
    .line 2639
    :catch_0
    move-exception v1

    #@80
    .line 2640
    .local v1, "e":Lcom/android/server/NativeDaemonConnectorException;
    invoke-virtual {v1}, Lcom/android/server/NativeDaemonConnectorException;->rethrowAsParcelableException()Ljava/lang/IllegalArgumentException;

    #@83
    move-result-object v3

    #@84
    throw v3
.end method

.method public addRoute(ILandroid/net/RouteInfo;)V
    .locals 3
    .param p1, "netId"    # I
    .param p2, "route"    # Landroid/net/RouteInfo;

    #@0
    .prologue
    .line 1124
    const-string/jumbo v0, "add"

    #@3
    new-instance v1, Ljava/lang/StringBuilder;

    #@5
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@8
    const-string/jumbo v2, ""

    #@b
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@e
    move-result-object v1

    #@f
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@12
    move-result-object v1

    #@13
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@16
    move-result-object v1

    #@17
    invoke-direct {p0, v0, v1, p2}, Lcom/android/server/NetworkManagementService;->modifyRoute(Ljava/lang/String;Ljava/lang/String;Landroid/net/RouteInfo;)V

    #@1a
    .line 1123
    return-void
.end method

.method public addVpnUidRanges(I[Landroid/net/UidRange;)V
    .locals 8
    .param p1, "netId"    # I
    .param p2, "ranges"    # [Landroid/net/UidRange;

    #@0
    .prologue
    .line 2038
    iget-object v5, p0, Lcom/android/server/NetworkManagementService;->mContext:Landroid/content/Context;

    #@2
    const-string/jumbo v6, "android.permission.CONNECTIVITY_INTERNAL"

    #@5
    const-string/jumbo v7, "NetworkManagement"

    #@8
    invoke-virtual {v5, v6, v7}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    #@b
    .line 2039
    const/16 v5, 0xd

    #@d
    new-array v2, v5, [Ljava/lang/Object;

    #@f
    .line 2040
    .local v2, "argv":[Ljava/lang/Object;
    const-string/jumbo v5, "users"

    #@12
    const/4 v6, 0x0

    #@13
    aput-object v5, v2, v6

    #@15
    .line 2041
    const-string/jumbo v5, "add"

    #@18
    const/4 v6, 0x1

    #@19
    aput-object v5, v2, v6

    #@1b
    .line 2042
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@1e
    move-result-object v5

    #@1f
    const/4 v6, 0x2

    #@20
    aput-object v5, v2, v6

    #@22
    .line 2043
    const/4 v0, 0x3

    #@23
    .line 2045
    .local v0, "argc":I
    const/4 v4, 0x0

    #@24
    .local v4, "i":I
    :goto_0
    array-length v5, p2

    #@25
    if-ge v4, v5, :cond_2

    #@27
    .line 2046
    add-int/lit8 v1, v0, 0x1

    #@29
    .end local v0    # "argc":I
    .local v1, "argc":I
    aget-object v5, p2, v4

    #@2b
    invoke-virtual {v5}, Landroid/net/UidRange;->toString()Ljava/lang/String;

    #@2e
    move-result-object v5

    #@2f
    aput-object v5, v2, v0

    #@31
    .line 2047
    array-length v5, p2

    #@32
    add-int/lit8 v5, v5, -0x1

    #@34
    if-eq v4, v5, :cond_0

    #@36
    array-length v5, v2

    #@37
    if-ne v1, v5, :cond_1

    #@39
    .line 2049
    :cond_0
    :try_start_0
    iget-object v5, p0, Lcom/android/server/NetworkManagementService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    #@3b
    const-string/jumbo v6, "network"

    #@3e
    invoke-static {v2, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    #@41
    move-result-object v7

    #@42
    invoke-virtual {v5, v6, v7}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;
    :try_end_0
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_0 .. :try_end_0} :catch_0

    #@45
    .line 2053
    const/4 v0, 0x3

    #@46
    .line 2045
    .end local v1    # "argc":I
    .restart local v0    # "argc":I
    :goto_1
    add-int/lit8 v4, v4, 0x1

    #@48
    goto :goto_0

    #@49
    .end local v0    # "argc":I
    .restart local v1    # "argc":I
    :cond_1
    move v0, v1

    #@4a
    .line 2047
    .end local v1    # "argc":I
    .restart local v0    # "argc":I
    goto :goto_1

    #@4b
    .line 2050
    .end local v0    # "argc":I
    .restart local v1    # "argc":I
    :catch_0
    move-exception v3

    #@4c
    .line 2051
    .local v3, "e":Lcom/android/server/NativeDaemonConnectorException;
    invoke-virtual {v3}, Lcom/android/server/NativeDaemonConnectorException;->rethrowAsParcelableException()Ljava/lang/IllegalArgumentException;

    #@4f
    move-result-object v5

    #@50
    throw v5

    #@51
    .line 2037
    .end local v1    # "argc":I
    .end local v3    # "e":Lcom/android/server/NativeDaemonConnectorException;
    .restart local v0    # "argc":I
    :cond_2
    return-void
.end method

.method public allowProtect(I)V
    .locals 6
    .param p1, "uid"    # I

    #@0
    .prologue
    .line 2731
    iget-object v1, p0, Lcom/android/server/NetworkManagementService;->mContext:Landroid/content/Context;

    #@2
    const-string/jumbo v2, "android.permission.CONNECTIVITY_INTERNAL"

    #@5
    const-string/jumbo v3, "NetworkManagement"

    #@8
    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    #@b
    .line 2734
    :try_start_0
    iget-object v1, p0, Lcom/android/server/NetworkManagementService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    #@d
    const-string/jumbo v2, "network"

    #@10
    const/4 v3, 0x3

    #@11
    new-array v3, v3, [Ljava/lang/Object;

    #@13
    const-string/jumbo v4, "protect"

    #@16
    const/4 v5, 0x0

    #@17
    aput-object v4, v3, v5

    #@19
    const-string/jumbo v4, "allow"

    #@1c
    const/4 v5, 0x1

    #@1d
    aput-object v4, v3, v5

    #@1f
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@22
    move-result-object v4

    #@23
    const/4 v5, 0x2

    #@24
    aput-object v4, v3, v5

    #@26
    invoke-virtual {v1, v2, v3}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;
    :try_end_0
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_0 .. :try_end_0} :catch_0

    #@29
    .line 2730
    return-void

    #@2a
    .line 2735
    :catch_0
    move-exception v0

    #@2b
    .line 2736
    .local v0, "e":Lcom/android/server/NativeDaemonConnectorException;
    invoke-virtual {v0}, Lcom/android/server/NativeDaemonConnectorException;->rethrowAsParcelableException()Ljava/lang/IllegalArgumentException;

    #@2e
    move-result-object v1

    #@2f
    throw v1
.end method

.method public attachPppd(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p1, "tty"    # Ljava/lang/String;
    .param p2, "localAddr"    # Ljava/lang/String;
    .param p3, "remoteAddr"    # Ljava/lang/String;
    .param p4, "dns1Addr"    # Ljava/lang/String;
    .param p5, "dns2Addr"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1439
    iget-object v1, p0, Lcom/android/server/NetworkManagementService;->mContext:Landroid/content/Context;

    #@2
    const-string/jumbo v2, "android.permission.CONNECTIVITY_INTERNAL"

    #@5
    const-string/jumbo v3, "NetworkManagement"

    #@8
    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    #@b
    .line 1441
    :try_start_0
    iget-object v1, p0, Lcom/android/server/NetworkManagementService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    #@d
    const-string/jumbo v2, "pppd"

    #@10
    const/4 v3, 0x6

    #@11
    new-array v3, v3, [Ljava/lang/Object;

    #@13
    const-string/jumbo v4, "attach"

    #@16
    const/4 v5, 0x0

    #@17
    aput-object v4, v3, v5

    #@19
    const/4 v4, 0x1

    #@1a
    aput-object p1, v3, v4

    #@1c
    .line 1442
    invoke-static {p2}, Landroid/net/NetworkUtils;->numericToInetAddress(Ljava/lang/String;)Ljava/net/InetAddress;

    #@1f
    move-result-object v4

    #@20
    invoke-virtual {v4}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    #@23
    move-result-object v4

    #@24
    const/4 v5, 0x2

    #@25
    aput-object v4, v3, v5

    #@27
    .line 1443
    invoke-static {p3}, Landroid/net/NetworkUtils;->numericToInetAddress(Ljava/lang/String;)Ljava/net/InetAddress;

    #@2a
    move-result-object v4

    #@2b
    invoke-virtual {v4}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    #@2e
    move-result-object v4

    #@2f
    const/4 v5, 0x3

    #@30
    aput-object v4, v3, v5

    #@32
    .line 1444
    invoke-static {p4}, Landroid/net/NetworkUtils;->numericToInetAddress(Ljava/lang/String;)Ljava/net/InetAddress;

    #@35
    move-result-object v4

    #@36
    invoke-virtual {v4}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    #@39
    move-result-object v4

    #@3a
    const/4 v5, 0x4

    #@3b
    aput-object v4, v3, v5

    #@3d
    .line 1445
    invoke-static {p5}, Landroid/net/NetworkUtils;->numericToInetAddress(Ljava/lang/String;)Ljava/net/InetAddress;

    #@40
    move-result-object v4

    #@41
    invoke-virtual {v4}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    #@44
    move-result-object v4

    #@45
    const/4 v5, 0x5

    #@46
    aput-object v4, v3, v5

    #@48
    .line 1441
    invoke-virtual {v1, v2, v3}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;
    :try_end_0
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_0 .. :try_end_0} :catch_0

    #@4b
    .line 1438
    return-void

    #@4c
    .line 1446
    :catch_0
    move-exception v0

    #@4d
    .line 1447
    .local v0, "e":Lcom/android/server/NativeDaemonConnectorException;
    invoke-virtual {v0}, Lcom/android/server/NativeDaemonConnectorException;->rethrowAsParcelableException()Ljava/lang/IllegalArgumentException;

    #@50
    move-result-object v1

    #@51
    throw v1
.end method

.method public clearDefaultNetId()V
    .locals 6

    #@0
    .prologue
    .line 2657
    iget-object v1, p0, Lcom/android/server/NetworkManagementService;->mContext:Landroid/content/Context;

    #@2
    const-string/jumbo v2, "android.permission.CONNECTIVITY_INTERNAL"

    #@5
    const-string/jumbo v3, "NetworkManagement"

    #@8
    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    #@b
    .line 2660
    :try_start_0
    iget-object v1, p0, Lcom/android/server/NetworkManagementService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    #@d
    const-string/jumbo v2, "network"

    #@10
    const/4 v3, 0x2

    #@11
    new-array v3, v3, [Ljava/lang/Object;

    #@13
    const-string/jumbo v4, "default"

    #@16
    const/4 v5, 0x0

    #@17
    aput-object v4, v3, v5

    #@19
    const-string/jumbo v4, "clear"

    #@1c
    const/4 v5, 0x1

    #@1d
    aput-object v4, v3, v5

    #@1f
    invoke-virtual {v1, v2, v3}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;
    :try_end_0
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_0 .. :try_end_0} :catch_0

    #@22
    .line 2656
    return-void

    #@23
    .line 2661
    :catch_0
    move-exception v0

    #@24
    .line 2662
    .local v0, "e":Lcom/android/server/NativeDaemonConnectorException;
    invoke-virtual {v0}, Lcom/android/server/NativeDaemonConnectorException;->rethrowAsParcelableException()Ljava/lang/IllegalArgumentException;

    #@27
    move-result-object v1

    #@28
    throw v1
.end method

.method public clearInterfaceAddresses(Ljava/lang/String;)V
    .locals 6
    .param p1, "iface"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1083
    iget-object v1, p0, Lcom/android/server/NetworkManagementService;->mContext:Landroid/content/Context;

    #@2
    const-string/jumbo v2, "android.permission.CONNECTIVITY_INTERNAL"

    #@5
    const-string/jumbo v3, "NetworkManagement"

    #@8
    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    #@b
    .line 1085
    :try_start_0
    iget-object v1, p0, Lcom/android/server/NetworkManagementService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    #@d
    const-string/jumbo v2, "interface"

    #@10
    const/4 v3, 0x2

    #@11
    new-array v3, v3, [Ljava/lang/Object;

    #@13
    const-string/jumbo v4, "clearaddrs"

    #@16
    const/4 v5, 0x0

    #@17
    aput-object v4, v3, v5

    #@19
    const/4 v4, 0x1

    #@1a
    aput-object p1, v3, v4

    #@1c
    invoke-virtual {v1, v2, v3}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;
    :try_end_0
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_0 .. :try_end_0} :catch_0

    #@1f
    .line 1082
    return-void

    #@20
    .line 1086
    :catch_0
    move-exception v0

    #@21
    .line 1087
    .local v0, "e":Lcom/android/server/NativeDaemonConnectorException;
    invoke-virtual {v0}, Lcom/android/server/NativeDaemonConnectorException;->rethrowAsParcelableException()Ljava/lang/IllegalArgumentException;

    #@24
    move-result-object v1

    #@25
    throw v1
.end method

.method public clearPermission([I)V
    .locals 8
    .param p1, "uids"    # [I

    #@0
    .prologue
    .line 2708
    iget-object v5, p0, Lcom/android/server/NetworkManagementService;->mContext:Landroid/content/Context;

    #@2
    const-string/jumbo v6, "android.permission.CONNECTIVITY_INTERNAL"

    #@5
    const-string/jumbo v7, "NetworkManagement"

    #@8
    invoke-virtual {v5, v6, v7}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    #@b
    .line 2710
    const/16 v5, 0xd

    #@d
    new-array v2, v5, [Ljava/lang/Object;

    #@f
    .line 2711
    .local v2, "argv":[Ljava/lang/Object;
    const-string/jumbo v5, "permission"

    #@12
    const/4 v6, 0x0

    #@13
    aput-object v5, v2, v6

    #@15
    .line 2712
    const-string/jumbo v5, "user"

    #@18
    const/4 v6, 0x1

    #@19
    aput-object v5, v2, v6

    #@1b
    .line 2713
    const-string/jumbo v5, "clear"

    #@1e
    const/4 v6, 0x2

    #@1f
    aput-object v5, v2, v6

    #@21
    .line 2714
    const/4 v0, 0x3

    #@22
    .line 2716
    .local v0, "argc":I
    const/4 v4, 0x0

    #@23
    .local v4, "i":I
    :goto_0
    array-length v5, p1

    #@24
    if-ge v4, v5, :cond_2

    #@26
    .line 2717
    add-int/lit8 v1, v0, 0x1

    #@28
    .end local v0    # "argc":I
    .local v1, "argc":I
    aget v5, p1, v4

    #@2a
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@2d
    move-result-object v5

    #@2e
    aput-object v5, v2, v0

    #@30
    .line 2718
    array-length v5, p1

    #@31
    add-int/lit8 v5, v5, -0x1

    #@33
    if-eq v4, v5, :cond_0

    #@35
    array-length v5, v2

    #@36
    if-ne v1, v5, :cond_1

    #@38
    .line 2720
    :cond_0
    :try_start_0
    iget-object v5, p0, Lcom/android/server/NetworkManagementService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    #@3a
    const-string/jumbo v6, "network"

    #@3d
    invoke-static {v2, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    #@40
    move-result-object v7

    #@41
    invoke-virtual {v5, v6, v7}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;
    :try_end_0
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_0 .. :try_end_0} :catch_0

    #@44
    .line 2724
    const/4 v0, 0x3

    #@45
    .line 2716
    .end local v1    # "argc":I
    .restart local v0    # "argc":I
    :goto_1
    add-int/lit8 v4, v4, 0x1

    #@47
    goto :goto_0

    #@48
    .end local v0    # "argc":I
    .restart local v1    # "argc":I
    :cond_1
    move v0, v1

    #@49
    .line 2718
    .end local v1    # "argc":I
    .restart local v0    # "argc":I
    goto :goto_1

    #@4a
    .line 2721
    .end local v0    # "argc":I
    .restart local v1    # "argc":I
    :catch_0
    move-exception v3

    #@4b
    .line 2722
    .local v3, "e":Lcom/android/server/NativeDaemonConnectorException;
    invoke-virtual {v3}, Lcom/android/server/NativeDaemonConnectorException;->rethrowAsParcelableException()Ljava/lang/IllegalArgumentException;

    #@4e
    move-result-object v5

    #@4f
    throw v5

    #@50
    .line 2707
    .end local v1    # "argc":I
    .end local v3    # "e":Lcom/android/server/NativeDaemonConnectorException;
    .restart local v0    # "argc":I
    :cond_2
    return-void
.end method

.method public createPhysicalNetwork(ILjava/lang/String;)V
    .locals 6
    .param p1, "netId"    # I
    .param p2, "permission"    # Ljava/lang/String;

    #@0
    .prologue
    .line 2568
    iget-object v1, p0, Lcom/android/server/NetworkManagementService;->mContext:Landroid/content/Context;

    #@2
    const-string/jumbo v2, "android.permission.CONNECTIVITY_INTERNAL"

    #@5
    const-string/jumbo v3, "NetworkManagement"

    #@8
    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    #@b
    .line 2571
    if-eqz p2, :cond_0

    #@d
    .line 2572
    :try_start_0
    iget-object v1, p0, Lcom/android/server/NetworkManagementService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    #@f
    const-string/jumbo v2, "network"

    #@12
    const/4 v3, 0x3

    #@13
    new-array v3, v3, [Ljava/lang/Object;

    #@15
    const-string/jumbo v4, "create"

    #@18
    const/4 v5, 0x0

    #@19
    aput-object v4, v3, v5

    #@1b
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@1e
    move-result-object v4

    #@1f
    const/4 v5, 0x1

    #@20
    aput-object v4, v3, v5

    #@22
    const/4 v4, 0x2

    #@23
    aput-object p2, v3, v4

    #@25
    invoke-virtual {v1, v2, v3}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;

    #@28
    .line 2567
    :goto_0
    return-void

    #@29
    .line 2574
    :cond_0
    iget-object v1, p0, Lcom/android/server/NetworkManagementService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    #@2b
    const-string/jumbo v2, "network"

    #@2e
    const/4 v3, 0x2

    #@2f
    new-array v3, v3, [Ljava/lang/Object;

    #@31
    const-string/jumbo v4, "create"

    #@34
    const/4 v5, 0x0

    #@35
    aput-object v4, v3, v5

    #@37
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@3a
    move-result-object v4

    #@3b
    const/4 v5, 0x1

    #@3c
    aput-object v4, v3, v5

    #@3e
    invoke-virtual {v1, v2, v3}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;
    :try_end_0
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_0 .. :try_end_0} :catch_0

    #@41
    goto :goto_0

    #@42
    .line 2576
    :catch_0
    move-exception v0

    #@43
    .line 2577
    .local v0, "e":Lcom/android/server/NativeDaemonConnectorException;
    invoke-virtual {v0}, Lcom/android/server/NativeDaemonConnectorException;->rethrowAsParcelableException()Ljava/lang/IllegalArgumentException;

    #@46
    move-result-object v1

    #@47
    throw v1
.end method

.method public createVirtualNetwork(IZZ)V
    .locals 6
    .param p1, "netId"    # I
    .param p2, "hasDNS"    # Z
    .param p3, "secure"    # Z

    #@0
    .prologue
    .line 2583
    iget-object v1, p0, Lcom/android/server/NetworkManagementService;->mContext:Landroid/content/Context;

    #@2
    const-string/jumbo v2, "android.permission.CONNECTIVITY_INTERNAL"

    #@5
    const-string/jumbo v3, "NetworkManagement"

    #@8
    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    #@b
    .line 2586
    :try_start_0
    iget-object v2, p0, Lcom/android/server/NetworkManagementService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    #@d
    const-string/jumbo v3, "network"

    #@10
    const/4 v1, 0x5

    #@11
    new-array v4, v1, [Ljava/lang/Object;

    #@13
    const-string/jumbo v1, "create"

    #@16
    const/4 v5, 0x0

    #@17
    aput-object v1, v4, v5

    #@19
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@1c
    move-result-object v1

    #@1d
    const/4 v5, 0x1

    #@1e
    aput-object v1, v4, v5

    #@20
    const-string/jumbo v1, "vpn"

    #@23
    const/4 v5, 0x2

    #@24
    aput-object v1, v4, v5

    #@26
    if-eqz p2, :cond_0

    #@28
    const-string/jumbo v1, "1"

    #@2b
    :goto_0
    const/4 v5, 0x3

    #@2c
    aput-object v1, v4, v5

    #@2e
    .line 2587
    if-eqz p3, :cond_1

    #@30
    const-string/jumbo v1, "1"

    #@33
    :goto_1
    const/4 v5, 0x4

    #@34
    aput-object v1, v4, v5

    #@36
    .line 2586
    invoke-virtual {v2, v3, v4}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;

    #@39
    .line 2582
    return-void

    #@3a
    .line 2586
    :cond_0
    const-string/jumbo v1, "0"

    #@3d
    goto :goto_0

    #@3e
    .line 2587
    :cond_1
    const-string/jumbo v1, "0"
    :try_end_0
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_0 .. :try_end_0} :catch_0

    #@41
    goto :goto_1

    #@42
    .line 2588
    :catch_0
    move-exception v0

    #@43
    .line 2589
    .local v0, "e":Lcom/android/server/NativeDaemonConnectorException;
    invoke-virtual {v0}, Lcom/android/server/NativeDaemonConnectorException;->rethrowAsParcelableException()Ljava/lang/IllegalArgumentException;

    #@46
    move-result-object v1

    #@47
    throw v1
.end method

.method public denyProtect(I)V
    .locals 6
    .param p1, "uid"    # I

    #@0
    .prologue
    .line 2742
    iget-object v1, p0, Lcom/android/server/NetworkManagementService;->mContext:Landroid/content/Context;

    #@2
    const-string/jumbo v2, "android.permission.CONNECTIVITY_INTERNAL"

    #@5
    const-string/jumbo v3, "NetworkManagement"

    #@8
    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    #@b
    .line 2745
    :try_start_0
    iget-object v1, p0, Lcom/android/server/NetworkManagementService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    #@d
    const-string/jumbo v2, "network"

    #@10
    const/4 v3, 0x3

    #@11
    new-array v3, v3, [Ljava/lang/Object;

    #@13
    const-string/jumbo v4, "protect"

    #@16
    const/4 v5, 0x0

    #@17
    aput-object v4, v3, v5

    #@19
    const-string/jumbo v4, "deny"

    #@1c
    const/4 v5, 0x1

    #@1d
    aput-object v4, v3, v5

    #@1f
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@22
    move-result-object v4

    #@23
    const/4 v5, 0x2

    #@24
    aput-object v4, v3, v5

    #@26
    invoke-virtual {v1, v2, v3}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;
    :try_end_0
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_0 .. :try_end_0} :catch_0

    #@29
    .line 2741
    return-void

    #@2a
    .line 2746
    :catch_0
    move-exception v0

    #@2b
    .line 2747
    .local v0, "e":Lcom/android/server/NativeDaemonConnectorException;
    invoke-virtual {v0}, Lcom/android/server/NativeDaemonConnectorException;->rethrowAsParcelableException()Ljava/lang/IllegalArgumentException;

    #@2e
    move-result-object v1

    #@2f
    throw v1
.end method

.method public detachPppd(Ljava/lang/String;)V
    .locals 6
    .param p1, "tty"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1453
    iget-object v1, p0, Lcom/android/server/NetworkManagementService;->mContext:Landroid/content/Context;

    #@2
    const-string/jumbo v2, "android.permission.CONNECTIVITY_INTERNAL"

    #@5
    const-string/jumbo v3, "NetworkManagement"

    #@8
    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    #@b
    .line 1455
    :try_start_0
    iget-object v1, p0, Lcom/android/server/NetworkManagementService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    #@d
    const-string/jumbo v2, "pppd"

    #@10
    const/4 v3, 0x2

    #@11
    new-array v3, v3, [Ljava/lang/Object;

    #@13
    const-string/jumbo v4, "detach"

    #@16
    const/4 v5, 0x0

    #@17
    aput-object v4, v3, v5

    #@19
    const/4 v4, 0x1

    #@1a
    aput-object p1, v3, v4

    #@1c
    invoke-virtual {v1, v2, v3}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;
    :try_end_0
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_0 .. :try_end_0} :catch_0

    #@1f
    .line 1452
    return-void

    #@20
    .line 1456
    :catch_0
    move-exception v0

    #@21
    .line 1457
    .local v0, "e":Lcom/android/server/NativeDaemonConnectorException;
    invoke-virtual {v0}, Lcom/android/server/NativeDaemonConnectorException;->rethrowAsParcelableException()Ljava/lang/IllegalArgumentException;

    #@24
    move-result-object v1

    #@25
    throw v1
.end method

.method public disableIpv6(Ljava/lang/String;)V
    .locals 6
    .param p1, "iface"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1103
    iget-object v1, p0, Lcom/android/server/NetworkManagementService;->mContext:Landroid/content/Context;

    #@2
    const-string/jumbo v2, "android.permission.CONNECTIVITY_INTERNAL"

    #@5
    const-string/jumbo v3, "NetworkManagement"

    #@8
    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    #@b
    .line 1105
    :try_start_0
    iget-object v1, p0, Lcom/android/server/NetworkManagementService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    #@d
    const-string/jumbo v2, "interface"

    #@10
    const/4 v3, 0x3

    #@11
    new-array v3, v3, [Ljava/lang/Object;

    #@13
    const-string/jumbo v4, "ipv6"

    #@16
    const/4 v5, 0x0

    #@17
    aput-object v4, v3, v5

    #@19
    const/4 v4, 0x1

    #@1a
    aput-object p1, v3, v4

    #@1c
    const-string/jumbo v4, "disable"

    #@1f
    const/4 v5, 0x2

    #@20
    aput-object v4, v3, v5

    #@22
    invoke-virtual {v1, v2, v3}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;
    :try_end_0
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_0 .. :try_end_0} :catch_0

    #@25
    .line 1102
    return-void

    #@26
    .line 1106
    :catch_0
    move-exception v0

    #@27
    .line 1107
    .local v0, "e":Lcom/android/server/NativeDaemonConnectorException;
    invoke-virtual {v0}, Lcom/android/server/NativeDaemonConnectorException;->rethrowAsParcelableException()Ljava/lang/IllegalArgumentException;

    #@2a
    move-result-object v1

    #@2b
    throw v1
.end method

.method public disableNat(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "internalInterface"    # Ljava/lang/String;
    .param p2, "externalInterface"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1417
    iget-object v1, p0, Lcom/android/server/NetworkManagementService;->mContext:Landroid/content/Context;

    #@2
    const-string/jumbo v2, "android.permission.CONNECTIVITY_INTERNAL"

    #@5
    const-string/jumbo v3, "NetworkManagement"

    #@8
    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    #@b
    .line 1419
    :try_start_0
    const-string/jumbo v1, "disable"

    #@e
    invoke-direct {p0, v1, p1, p2}, Lcom/android/server/NetworkManagementService;->modifyNat(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_0} :catch_0

    #@11
    .line 1416
    return-void

    #@12
    .line 1420
    :catch_0
    move-exception v0

    #@13
    .line 1421
    .local v0, "e":Ljava/net/SocketException;
    new-instance v1, Ljava/lang/IllegalStateException;

    #@15
    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    #@18
    throw v1
.end method

.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 8
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    #@0
    .prologue
    .line 2474
    iget-object v5, p0, Lcom/android/server/NetworkManagementService;->mContext:Landroid/content/Context;

    #@2
    const-string/jumbo v6, "android.permission.DUMP"

    #@5
    const-string/jumbo v7, "NetworkManagement"

    #@8
    invoke-virtual {v5, v6, v7}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    #@b
    .line 2476
    const-string/jumbo v5, "NetworkManagementService NativeDaemonConnector Log:"

    #@e
    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@11
    .line 2477
    iget-object v5, p0, Lcom/android/server/NetworkManagementService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    #@13
    invoke-virtual {v5, p1, p2, p3}, Lcom/android/server/NativeDaemonConnector;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    #@16
    .line 2478
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    #@19
    .line 2480
    const-string/jumbo v5, "Bandwidth control enabled: "

    #@1c
    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@1f
    iget-boolean v5, p0, Lcom/android/server/NetworkManagementService;->mBandwidthControlEnabled:Z

    #@21
    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Z)V

    #@24
    .line 2481
    const-string/jumbo v5, "mMobileActivityFromRadio="

    #@27
    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@2a
    iget-boolean v5, p0, Lcom/android/server/NetworkManagementService;->mMobileActivityFromRadio:Z

    #@2c
    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Z)V

    #@2f
    .line 2482
    const-string/jumbo v5, " mLastPowerStateFromRadio="

    #@32
    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@35
    iget v5, p0, Lcom/android/server/NetworkManagementService;->mLastPowerStateFromRadio:I

    #@37
    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(I)V

    #@3a
    .line 2483
    const-string/jumbo v5, "mNetworkActive="

    #@3d
    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@40
    iget-boolean v5, p0, Lcom/android/server/NetworkManagementService;->mNetworkActive:Z

    #@42
    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Z)V

    #@45
    .line 2485
    iget-object v6, p0, Lcom/android/server/NetworkManagementService;->mQuotaLock:Ljava/lang/Object;

    #@47
    monitor-enter v6

    #@48
    .line 2486
    :try_start_0
    const-string/jumbo v5, "Active quota ifaces: "

    #@4b
    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@4e
    iget-object v5, p0, Lcom/android/server/NetworkManagementService;->mActiveQuotas:Ljava/util/HashMap;

    #@50
    invoke-virtual {v5}, Ljava/util/HashMap;->toString()Ljava/lang/String;

    #@53
    move-result-object v5

    #@54
    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@57
    .line 2487
    const-string/jumbo v5, "Active alert ifaces: "

    #@5a
    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@5d
    iget-object v5, p0, Lcom/android/server/NetworkManagementService;->mActiveAlerts:Ljava/util/HashMap;

    #@5f
    invoke-virtual {v5}, Ljava/util/HashMap;->toString()Ljava/lang/String;

    #@62
    move-result-object v5

    #@63
    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@66
    .line 2488
    const-string/jumbo v5, "Data saver mode: "

    #@69
    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@6c
    iget-boolean v5, p0, Lcom/android/server/NetworkManagementService;->mDataSaverMode:Z

    #@6e
    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Z)V

    #@71
    .line 2489
    const-string/jumbo v5, "blacklist"

    #@74
    iget-object v7, p0, Lcom/android/server/NetworkManagementService;->mUidRejectOnMetered:Landroid/util/SparseBooleanArray;

    #@76
    invoke-direct {p0, p2, v5, v7}, Lcom/android/server/NetworkManagementService;->dumpUidRuleOnQuotaLocked(Ljava/io/PrintWriter;Ljava/lang/String;Landroid/util/SparseBooleanArray;)V

    #@79
    .line 2490
    const-string/jumbo v5, "whitelist"

    #@7c
    iget-object v7, p0, Lcom/android/server/NetworkManagementService;->mUidAllowOnMetered:Landroid/util/SparseBooleanArray;

    #@7e
    invoke-direct {p0, p2, v5, v7}, Lcom/android/server/NetworkManagementService;->dumpUidRuleOnQuotaLocked(Ljava/io/PrintWriter;Ljava/lang/String;Landroid/util/SparseBooleanArray;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    #@81
    monitor-exit v6

    #@82
    .line 2493
    iget-object v6, p0, Lcom/android/server/NetworkManagementService;->mUidFirewallRules:Landroid/util/SparseIntArray;

    #@84
    monitor-enter v6

    #@85
    .line 2494
    :try_start_1
    const-string/jumbo v5, ""

    #@88
    iget-object v7, p0, Lcom/android/server/NetworkManagementService;->mUidFirewallRules:Landroid/util/SparseIntArray;

    #@8a
    invoke-direct {p0, p2, v5, v7}, Lcom/android/server/NetworkManagementService;->dumpUidFirewallRule(Ljava/io/PrintWriter;Ljava/lang/String;Landroid/util/SparseIntArray;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    #@8d
    monitor-exit v6

    #@8e
    .line 2497
    const-string/jumbo v5, "UID firewall standby chain enabled: "

    #@91
    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@94
    .line 2498
    iget-object v5, p0, Lcom/android/server/NetworkManagementService;->mFirewallChainStates:Landroid/util/SparseBooleanArray;

    #@96
    const/4 v6, 0x2

    #@97
    invoke-virtual {v5, v6}, Landroid/util/SparseBooleanArray;->get(I)Z

    #@9a
    move-result v5

    #@9b
    .line 2497
    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Z)V

    #@9e
    .line 2499
    iget-object v6, p0, Lcom/android/server/NetworkManagementService;->mUidFirewallStandbyRules:Landroid/util/SparseIntArray;

    #@a0
    monitor-enter v6

    #@a1
    .line 2500
    :try_start_2
    const-string/jumbo v5, "standby"

    #@a4
    iget-object v7, p0, Lcom/android/server/NetworkManagementService;->mUidFirewallStandbyRules:Landroid/util/SparseIntArray;

    #@a6
    invoke-direct {p0, p2, v5, v7}, Lcom/android/server/NetworkManagementService;->dumpUidFirewallRule(Ljava/io/PrintWriter;Ljava/lang/String;Landroid/util/SparseIntArray;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    #@a9
    monitor-exit v6

    #@aa
    .line 2503
    const-string/jumbo v5, "UID firewall dozable chain enabled: "

    #@ad
    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@b0
    .line 2504
    iget-object v5, p0, Lcom/android/server/NetworkManagementService;->mFirewallChainStates:Landroid/util/SparseBooleanArray;

    #@b2
    const/4 v6, 0x1

    #@b3
    invoke-virtual {v5, v6}, Landroid/util/SparseBooleanArray;->get(I)Z

    #@b6
    move-result v5

    #@b7
    .line 2503
    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Z)V

    #@ba
    .line 2505
    iget-object v6, p0, Lcom/android/server/NetworkManagementService;->mUidFirewallDozableRules:Landroid/util/SparseIntArray;

    #@bc
    monitor-enter v6

    #@bd
    .line 2506
    :try_start_3
    const-string/jumbo v5, "dozable"

    #@c0
    iget-object v7, p0, Lcom/android/server/NetworkManagementService;->mUidFirewallDozableRules:Landroid/util/SparseIntArray;

    #@c2
    invoke-direct {p0, p2, v5, v7}, Lcom/android/server/NetworkManagementService;->dumpUidFirewallRule(Ljava/io/PrintWriter;Ljava/lang/String;Landroid/util/SparseIntArray;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_4

    #@c5
    monitor-exit v6

    #@c6
    .line 2509
    new-instance v5, Ljava/lang/StringBuilder;

    #@c8
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@cb
    const-string/jumbo v6, "UID firewall powersave chain enabled: "

    #@ce
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@d1
    move-result-object v5

    #@d2
    .line 2510
    iget-object v6, p0, Lcom/android/server/NetworkManagementService;->mFirewallChainStates:Landroid/util/SparseBooleanArray;

    #@d4
    const/4 v7, 0x3

    #@d5
    invoke-virtual {v6, v7}, Landroid/util/SparseBooleanArray;->get(I)Z

    #@d8
    move-result v6

    #@d9
    .line 2509
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@dc
    move-result-object v5

    #@dd
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@e0
    move-result-object v5

    #@e1
    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@e4
    .line 2511
    iget-object v6, p0, Lcom/android/server/NetworkManagementService;->mUidFirewallPowerSaveRules:Landroid/util/SparseIntArray;

    #@e6
    monitor-enter v6

    #@e7
    .line 2512
    :try_start_4
    const-string/jumbo v5, "powersave"

    #@ea
    iget-object v7, p0, Lcom/android/server/NetworkManagementService;->mUidFirewallPowerSaveRules:Landroid/util/SparseIntArray;

    #@ec
    invoke-direct {p0, p2, v5, v7}, Lcom/android/server/NetworkManagementService;->dumpUidFirewallRule(Ljava/io/PrintWriter;Ljava/lang/String;Landroid/util/SparseIntArray;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_5

    #@ef
    monitor-exit v6

    #@f0
    .line 2515
    iget-object v6, p0, Lcom/android/server/NetworkManagementService;->mIdleTimerLock:Ljava/lang/Object;

    #@f2
    monitor-enter v6

    #@f3
    .line 2516
    :try_start_5
    const-string/jumbo v5, "Idle timers:"

    #@f6
    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@f9
    .line 2517
    iget-object v5, p0, Lcom/android/server/NetworkManagementService;->mActiveIdleTimers:Ljava/util/HashMap;

    #@fb
    invoke-virtual {v5}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    #@fe
    move-result-object v5

    #@ff
    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@102
    move-result-object v3

    #@103
    .local v3, "ent$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    #@106
    move-result v5

    #@107
    if-eqz v5, :cond_0

    #@109
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@10c
    move-result-object v2

    #@10d
    check-cast v2, Ljava/util/Map$Entry;

    #@10f
    .line 2518
    .local v2, "ent":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/NetworkManagementService$IdleTimerParams;>;"
    const-string/jumbo v5, "  "

    #@112
    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@115
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    #@118
    move-result-object v5

    #@119
    check-cast v5, Ljava/lang/String;

    #@11b
    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@11e
    const-string/jumbo v5, ":"

    #@121
    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@124
    .line 2519
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    #@127
    move-result-object v4

    #@128
    check-cast v4, Lcom/android/server/NetworkManagementService$IdleTimerParams;

    #@12a
    .line 2520
    .local v4, "params":Lcom/android/server/NetworkManagementService$IdleTimerParams;
    const-string/jumbo v5, "    timeout="

    #@12d
    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@130
    iget v5, v4, Lcom/android/server/NetworkManagementService$IdleTimerParams;->timeout:I

    #@132
    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(I)V

    #@135
    .line 2521
    const-string/jumbo v5, " type="

    #@138
    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@13b
    iget v5, v4, Lcom/android/server/NetworkManagementService$IdleTimerParams;->type:I

    #@13d
    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(I)V

    #@140
    .line 2522
    const-string/jumbo v5, " networkCount="

    #@143
    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@146
    iget v5, v4, Lcom/android/server/NetworkManagementService$IdleTimerParams;->networkCount:I

    #@148
    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(I)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    #@14b
    goto :goto_0

    #@14c
    .line 2515
    .end local v2    # "ent":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/NetworkManagementService$IdleTimerParams;>;"
    .end local v3    # "ent$iterator":Ljava/util/Iterator;
    .end local v4    # "params":Lcom/android/server/NetworkManagementService$IdleTimerParams;
    :catchall_0
    move-exception v5

    #@14d
    monitor-exit v6

    #@14e
    throw v5

    #@14f
    .line 2485
    :catchall_1
    move-exception v5

    #@150
    monitor-exit v6

    #@151
    throw v5

    #@152
    .line 2493
    :catchall_2
    move-exception v5

    #@153
    monitor-exit v6

    #@154
    throw v5

    #@155
    .line 2499
    :catchall_3
    move-exception v5

    #@156
    monitor-exit v6

    #@157
    throw v5

    #@158
    .line 2505
    :catchall_4
    move-exception v5

    #@159
    monitor-exit v6

    #@15a
    throw v5

    #@15b
    .line 2511
    :catchall_5
    move-exception v5

    #@15c
    monitor-exit v6

    #@15d
    throw v5

    #@15e
    .restart local v3    # "ent$iterator":Ljava/util/Iterator;
    :cond_0
    monitor-exit v6

    #@15f
    .line 2526
    const-string/jumbo v5, "Firewall enabled: "

    #@162
    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@165
    iget-boolean v5, p0, Lcom/android/server/NetworkManagementService;->mFirewallEnabled:Z

    #@167
    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Z)V

    #@16a
    .line 2527
    const-string/jumbo v5, "Netd service status: "

    #@16d
    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@170
    .line 2528
    iget-object v5, p0, Lcom/android/server/NetworkManagementService;->mNetdService:Landroid/net/INetd;

    #@172
    if-nez v5, :cond_1

    #@174
    .line 2529
    const-string/jumbo v5, "disconnected"

    #@177
    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@17a
    .line 2473
    :goto_1
    return-void

    #@17b
    .line 2532
    :cond_1
    :try_start_6
    iget-object v5, p0, Lcom/android/server/NetworkManagementService;->mNetdService:Landroid/net/INetd;

    #@17d
    invoke-interface {v5}, Landroid/net/INetd;->isAlive()Z

    #@180
    move-result v0

    #@181
    .line 2533
    .local v0, "alive":Z
    if-eqz v0, :cond_2

    #@183
    const-string/jumbo v5, "alive"

    #@186
    :goto_2
    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_6} :catch_0

    #@189
    goto :goto_1

    #@18a
    .line 2534
    .end local v0    # "alive":Z
    :catch_0
    move-exception v1

    #@18b
    .line 2535
    .local v1, "e":Landroid/os/RemoteException;
    const-string/jumbo v5, "unreachable"

    #@18e
    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@191
    goto :goto_1

    #@192
    .line 2533
    .end local v1    # "e":Landroid/os/RemoteException;
    .restart local v0    # "alive":Z
    :cond_2
    :try_start_7
    const-string/jumbo v5, "dead"
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_7} :catch_0

    #@195
    goto :goto_2
.end method

.method public enableIpv6(Ljava/lang/String;)V
    .locals 6
    .param p1, "iface"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1093
    iget-object v1, p0, Lcom/android/server/NetworkManagementService;->mContext:Landroid/content/Context;

    #@2
    const-string/jumbo v2, "android.permission.CONNECTIVITY_INTERNAL"

    #@5
    const-string/jumbo v3, "NetworkManagement"

    #@8
    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    #@b
    .line 1095
    :try_start_0
    iget-object v1, p0, Lcom/android/server/NetworkManagementService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    #@d
    const-string/jumbo v2, "interface"

    #@10
    const/4 v3, 0x3

    #@11
    new-array v3, v3, [Ljava/lang/Object;

    #@13
    const-string/jumbo v4, "ipv6"

    #@16
    const/4 v5, 0x0

    #@17
    aput-object v4, v3, v5

    #@19
    const/4 v4, 0x1

    #@1a
    aput-object p1, v3, v4

    #@1c
    const-string/jumbo v4, "enable"

    #@1f
    const/4 v5, 0x2

    #@20
    aput-object v4, v3, v5

    #@22
    invoke-virtual {v1, v2, v3}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;
    :try_end_0
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_0 .. :try_end_0} :catch_0

    #@25
    .line 1092
    return-void

    #@26
    .line 1096
    :catch_0
    move-exception v0

    #@27
    .line 1097
    .local v0, "e":Lcom/android/server/NativeDaemonConnectorException;
    invoke-virtual {v0}, Lcom/android/server/NativeDaemonConnectorException;->rethrowAsParcelableException()Ljava/lang/IllegalArgumentException;

    #@2a
    move-result-object v1

    #@2b
    throw v1
.end method

.method public enableNat(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "internalInterface"    # Ljava/lang/String;
    .param p2, "externalInterface"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1407
    iget-object v1, p0, Lcom/android/server/NetworkManagementService;->mContext:Landroid/content/Context;

    #@2
    const-string/jumbo v2, "android.permission.CONNECTIVITY_INTERNAL"

    #@5
    const-string/jumbo v3, "NetworkManagement"

    #@8
    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    #@b
    .line 1409
    :try_start_0
    const-string/jumbo v1, "enable"

    #@e
    invoke-direct {p0, v1, p1, p2}, Lcom/android/server/NetworkManagementService;->modifyNat(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_0} :catch_0

    #@11
    .line 1406
    return-void

    #@12
    .line 1410
    :catch_0
    move-exception v0

    #@13
    .line 1411
    .local v0, "e":Ljava/net/SocketException;
    new-instance v1, Ljava/lang/IllegalStateException;

    #@15
    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    #@18
    throw v1
.end method

.method public getDnsForwarders()[Ljava/lang/String;
    .locals 6

    #@0
    .prologue
    .line 1338
    iget-object v1, p0, Lcom/android/server/NetworkManagementService;->mContext:Landroid/content/Context;

    #@2
    const-string/jumbo v2, "android.permission.CONNECTIVITY_INTERNAL"

    #@5
    const-string/jumbo v3, "NetworkManagement"

    #@8
    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    #@b
    .line 1341
    :try_start_0
    iget-object v1, p0, Lcom/android/server/NetworkManagementService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    #@d
    const-string/jumbo v2, "tether"

    #@10
    const/4 v3, 0x2

    #@11
    new-array v3, v3, [Ljava/lang/Object;

    #@13
    const-string/jumbo v4, "dns"

    #@16
    const/4 v5, 0x0

    #@17
    aput-object v4, v3, v5

    #@19
    const-string/jumbo v4, "list"

    #@1c
    const/4 v5, 0x1

    #@1d
    aput-object v4, v3, v5

    #@1f
    invoke-virtual {v1, v2, v3}, Lcom/android/server/NativeDaemonConnector;->executeForList(Ljava/lang/String;[Ljava/lang/Object;)[Lcom/android/server/NativeDaemonEvent;

    #@22
    move-result-object v1

    #@23
    const/16 v2, 0x70

    #@25
    .line 1340
    invoke-static {v1, v2}, Lcom/android/server/NativeDaemonEvent;->filterMessageList([Lcom/android/server/NativeDaemonEvent;I)[Ljava/lang/String;
    :try_end_0
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_0 .. :try_end_0} :catch_0

    #@28
    move-result-object v1

    #@29
    return-object v1

    #@2a
    .line 1342
    :catch_0
    move-exception v0

    #@2b
    .line 1343
    .local v0, "e":Lcom/android/server/NativeDaemonConnectorException;
    invoke-virtual {v0}, Lcom/android/server/NativeDaemonConnectorException;->rethrowAsParcelableException()Ljava/lang/IllegalArgumentException;

    #@2e
    move-result-object v1

    #@2f
    throw v1
.end method

.method public getFirewallChainName(I)Ljava/lang/String;
    .locals 3
    .param p1, "chain"    # I

    #@0
    .prologue
    .line 2375
    packed-switch p1, :pswitch_data_0

    #@3
    .line 2385
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@5
    new-instance v1, Ljava/lang/StringBuilder;

    #@7
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@a
    const-string/jumbo v2, "Unknown chain:"

    #@d
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@10
    move-result-object v1

    #@11
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@14
    move-result-object v1

    #@15
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@18
    move-result-object v1

    #@19
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@1c
    throw v0

    #@1d
    .line 2377
    :pswitch_0
    const-string/jumbo v0, "standby"

    #@20
    return-object v0

    #@21
    .line 2379
    :pswitch_1
    const-string/jumbo v0, "dozable"

    #@24
    return-object v0

    #@25
    .line 2381
    :pswitch_2
    const-string/jumbo v0, "powersave"

    #@28
    return-object v0

    #@29
    .line 2383
    :pswitch_3
    const-string/jumbo v0, "none"

    #@2c
    return-object v0

    #@2d
    .line 2375
    nop

    #@2e
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public getInterfaceConfig(Ljava/lang/String;)Landroid/net/InterfaceConfiguration;
    .locals 14
    .param p1, "iface"    # Ljava/lang/String;

    #@0
    .prologue
    .line 988
    iget-object v9, p0, Lcom/android/server/NetworkManagementService;->mContext:Landroid/content/Context;

    #@2
    const-string/jumbo v10, "android.permission.CONNECTIVITY_INTERNAL"

    #@5
    const-string/jumbo v11, "NetworkManagement"

    #@8
    invoke-virtual {v9, v10, v11}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    #@b
    .line 992
    :try_start_0
    iget-object v9, p0, Lcom/android/server/NetworkManagementService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    #@d
    const-string/jumbo v10, "interface"

    #@10
    const/4 v11, 0x2

    #@11
    new-array v11, v11, [Ljava/lang/Object;

    #@13
    const-string/jumbo v12, "getcfg"

    #@16
    const/4 v13, 0x0

    #@17
    aput-object v12, v11, v13

    #@19
    const/4 v12, 0x1

    #@1a
    aput-object p1, v11, v12

    #@1c
    invoke-virtual {v9, v10, v11}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;
    :try_end_0
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_0 .. :try_end_0} :catch_1

    #@1f
    move-result-object v3

    #@20
    .line 997
    .local v3, "event":Lcom/android/server/NativeDaemonEvent;
    const/16 v9, 0xd5

    #@22
    invoke-virtual {v3, v9}, Lcom/android/server/NativeDaemonEvent;->checkCode(I)V

    #@25
    .line 1000
    new-instance v8, Ljava/util/StringTokenizer;

    #@27
    invoke-virtual {v3}, Lcom/android/server/NativeDaemonEvent;->getMessage()Ljava/lang/String;

    #@2a
    move-result-object v9

    #@2b
    invoke-direct {v8, v9}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;)V

    #@2e
    .line 1004
    .local v8, "st":Ljava/util/StringTokenizer;
    :try_start_1
    new-instance v1, Landroid/net/InterfaceConfiguration;

    #@30
    invoke-direct {v1}, Landroid/net/InterfaceConfiguration;-><init>()V

    #@33
    .line 1005
    .local v1, "cfg":Landroid/net/InterfaceConfiguration;
    const-string/jumbo v9, " "

    #@36
    invoke-virtual {v8, v9}, Ljava/util/StringTokenizer;->nextToken(Ljava/lang/String;)Ljava/lang/String;

    #@39
    move-result-object v9

    #@3a
    invoke-virtual {v1, v9}, Landroid/net/InterfaceConfiguration;->setHardwareAddress(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/util/NoSuchElementException; {:try_start_1 .. :try_end_1} :catch_0

    #@3d
    .line 1006
    const/4 v0, 0x0

    #@3e
    .line 1007
    .local v0, "addr":Ljava/net/InetAddress;
    const/4 v7, 0x0

    #@3f
    .line 1009
    .local v7, "prefixLength":I
    :try_start_2
    invoke-virtual {v8}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    #@42
    move-result-object v9

    #@43
    invoke-static {v9}, Landroid/net/NetworkUtils;->numericToInetAddress(Ljava/lang/String;)Ljava/net/InetAddress;
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/util/NoSuchElementException; {:try_start_2 .. :try_end_2} :catch_0

    #@46
    move-result-object v0

    #@47
    .line 1015
    .end local v0    # "addr":Ljava/net/InetAddress;
    :goto_0
    :try_start_3
    invoke-virtual {v8}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    #@4a
    move-result-object v9

    #@4b
    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/util/NoSuchElementException; {:try_start_3 .. :try_end_3} :catch_0

    #@4e
    move-result v7

    #@4f
    .line 1020
    :goto_1
    :try_start_4
    new-instance v9, Landroid/net/LinkAddress;

    #@51
    invoke-direct {v9, v0, v7}, Landroid/net/LinkAddress;-><init>(Ljava/net/InetAddress;I)V

    #@54
    invoke-virtual {v1, v9}, Landroid/net/InterfaceConfiguration;->setLinkAddress(Landroid/net/LinkAddress;)V

    #@57
    .line 1021
    :goto_2
    invoke-virtual {v8}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    #@5a
    move-result v9

    #@5b
    if-eqz v9, :cond_0

    #@5d
    .line 1022
    invoke-virtual {v8}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    #@60
    move-result-object v9

    #@61
    invoke-virtual {v1, v9}, Landroid/net/InterfaceConfiguration;->setFlag(Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/util/NoSuchElementException; {:try_start_4 .. :try_end_4} :catch_0

    #@64
    goto :goto_2

    #@65
    .line 1024
    .end local v1    # "cfg":Landroid/net/InterfaceConfiguration;
    .end local v7    # "prefixLength":I
    :catch_0
    move-exception v6

    #@66
    .line 1025
    .local v6, "nsee":Ljava/util/NoSuchElementException;
    new-instance v9, Ljava/lang/IllegalStateException;

    #@68
    new-instance v10, Ljava/lang/StringBuilder;

    #@6a
    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    #@6d
    const-string/jumbo v11, "Invalid response from daemon: "

    #@70
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@73
    move-result-object v10

    #@74
    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@77
    move-result-object v10

    #@78
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@7b
    move-result-object v10

    #@7c
    invoke-direct {v9, v10}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@7f
    throw v9

    #@80
    .line 993
    .end local v3    # "event":Lcom/android/server/NativeDaemonEvent;
    .end local v6    # "nsee":Ljava/util/NoSuchElementException;
    .end local v8    # "st":Ljava/util/StringTokenizer;
    :catch_1
    move-exception v2

    #@81
    .line 994
    .local v2, "e":Lcom/android/server/NativeDaemonConnectorException;
    invoke-virtual {v2}, Lcom/android/server/NativeDaemonConnectorException;->rethrowAsParcelableException()Ljava/lang/IllegalArgumentException;

    #@84
    move-result-object v9

    #@85
    throw v9

    #@86
    .line 1010
    .end local v2    # "e":Lcom/android/server/NativeDaemonConnectorException;
    .restart local v0    # "addr":Ljava/net/InetAddress;
    .restart local v1    # "cfg":Landroid/net/InterfaceConfiguration;
    .restart local v3    # "event":Lcom/android/server/NativeDaemonEvent;
    .restart local v7    # "prefixLength":I
    .restart local v8    # "st":Ljava/util/StringTokenizer;
    :catch_2
    move-exception v4

    #@87
    .line 1011
    .local v4, "iae":Ljava/lang/IllegalArgumentException;
    :try_start_5
    const-string/jumbo v9, "NetworkManagement"

    #@8a
    const-string/jumbo v10, "Failed to parse ipaddr"

    #@8d
    invoke-static {v9, v10, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@90
    goto :goto_0

    #@91
    .line 1016
    .end local v0    # "addr":Ljava/net/InetAddress;
    .end local v4    # "iae":Ljava/lang/IllegalArgumentException;
    :catch_3
    move-exception v5

    #@92
    .line 1017
    .local v5, "nfe":Ljava/lang/NumberFormatException;
    const-string/jumbo v9, "NetworkManagement"

    #@95
    const-string/jumbo v10, "Failed to parse prefixLength"

    #@98
    invoke-static {v9, v10, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_5
    .catch Ljava/util/NoSuchElementException; {:try_start_5 .. :try_end_5} :catch_0

    #@9b
    goto :goto_1

    #@9c
    .line 1027
    .end local v5    # "nfe":Ljava/lang/NumberFormatException;
    :cond_0
    return-object v1
.end method

.method public getIpForwardingEnabled()Z
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    #@0
    .prologue
    .line 1212
    iget-object v2, p0, Lcom/android/server/NetworkManagementService;->mContext:Landroid/content/Context;

    #@2
    const-string/jumbo v3, "android.permission.CONNECTIVITY_INTERNAL"

    #@5
    const-string/jumbo v4, "NetworkManagement"

    #@8
    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    #@b
    .line 1216
    :try_start_0
    iget-object v2, p0, Lcom/android/server/NetworkManagementService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    #@d
    const-string/jumbo v3, "ipfwd"

    #@10
    const/4 v4, 0x1

    #@11
    new-array v4, v4, [Ljava/lang/Object;

    #@13
    const-string/jumbo v5, "status"

    #@16
    const/4 v6, 0x0

    #@17
    aput-object v5, v4, v6

    #@19
    invoke-virtual {v2, v3, v4}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;
    :try_end_0
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_0 .. :try_end_0} :catch_0

    #@1c
    move-result-object v1

    #@1d
    .line 1222
    .local v1, "event":Lcom/android/server/NativeDaemonEvent;
    const/16 v2, 0xd3

    #@1f
    invoke-virtual {v1, v2}, Lcom/android/server/NativeDaemonEvent;->checkCode(I)V

    #@22
    .line 1223
    invoke-virtual {v1}, Lcom/android/server/NativeDaemonEvent;->getMessage()Ljava/lang/String;

    #@25
    move-result-object v2

    #@26
    const-string/jumbo v3, "enabled"

    #@29
    invoke-virtual {v2, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    #@2c
    move-result v2

    #@2d
    return v2

    #@2e
    .line 1217
    .end local v1    # "event":Lcom/android/server/NativeDaemonEvent;
    :catch_0
    move-exception v0

    #@2f
    .line 1218
    .local v0, "e":Lcom/android/server/NativeDaemonConnectorException;
    invoke-virtual {v0}, Lcom/android/server/NativeDaemonConnectorException;->rethrowAsParcelableException()Ljava/lang/IllegalArgumentException;

    #@32
    move-result-object v2

    #@33
    throw v2
.end method

.method public getNetworkStatsDetail()Landroid/net/NetworkStats;
    .locals 6

    #@0
    .prologue
    .line 1664
    iget-object v1, p0, Lcom/android/server/NetworkManagementService;->mContext:Landroid/content/Context;

    #@2
    const-string/jumbo v2, "android.permission.CONNECTIVITY_INTERNAL"

    #@5
    const-string/jumbo v3, "NetworkManagement"

    #@8
    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    #@b
    .line 1666
    :try_start_0
    iget-object v1, p0, Lcom/android/server/NetworkManagementService;->mStatsFactory:Lcom/android/internal/net/NetworkStatsFactory;

    #@d
    const/4 v2, -0x1

    #@e
    const/4 v3, 0x0

    #@f
    const/4 v4, -0x1

    #@10
    const/4 v5, 0x0

    #@11
    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/android/internal/net/NetworkStatsFactory;->readNetworkStatsDetail(I[Ljava/lang/String;ILandroid/net/NetworkStats;)Landroid/net/NetworkStats;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    #@14
    move-result-object v1

    #@15
    return-object v1

    #@16
    .line 1667
    :catch_0
    move-exception v0

    #@17
    .line 1668
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Ljava/lang/IllegalStateException;

    #@19
    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    #@1c
    throw v1
.end method

.method public getNetworkStatsSummaryDev()Landroid/net/NetworkStats;
    .locals 4

    #@0
    .prologue
    .line 1644
    iget-object v1, p0, Lcom/android/server/NetworkManagementService;->mContext:Landroid/content/Context;

    #@2
    const-string/jumbo v2, "android.permission.CONNECTIVITY_INTERNAL"

    #@5
    const-string/jumbo v3, "NetworkManagement"

    #@8
    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    #@b
    .line 1646
    :try_start_0
    iget-object v1, p0, Lcom/android/server/NetworkManagementService;->mStatsFactory:Lcom/android/internal/net/NetworkStatsFactory;

    #@d
    invoke-virtual {v1}, Lcom/android/internal/net/NetworkStatsFactory;->readNetworkStatsSummaryDev()Landroid/net/NetworkStats;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    #@10
    move-result-object v1

    #@11
    return-object v1

    #@12
    .line 1647
    :catch_0
    move-exception v0

    #@13
    .line 1648
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Ljava/lang/IllegalStateException;

    #@15
    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    #@18
    throw v1
.end method

.method public getNetworkStatsSummaryXt()Landroid/net/NetworkStats;
    .locals 4

    #@0
    .prologue
    .line 1654
    iget-object v1, p0, Lcom/android/server/NetworkManagementService;->mContext:Landroid/content/Context;

    #@2
    const-string/jumbo v2, "android.permission.CONNECTIVITY_INTERNAL"

    #@5
    const-string/jumbo v3, "NetworkManagement"

    #@8
    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    #@b
    .line 1656
    :try_start_0
    iget-object v1, p0, Lcom/android/server/NetworkManagementService;->mStatsFactory:Lcom/android/internal/net/NetworkStatsFactory;

    #@d
    invoke-virtual {v1}, Lcom/android/internal/net/NetworkStatsFactory;->readNetworkStatsSummaryXt()Landroid/net/NetworkStats;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    #@10
    move-result-object v1

    #@11
    return-object v1

    #@12
    .line 1657
    :catch_0
    move-exception v0

    #@13
    .line 1658
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Ljava/lang/IllegalStateException;

    #@15
    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    #@18
    throw v1
.end method

.method public getNetworkStatsTethering()Landroid/net/NetworkStats;
    .locals 15

    #@0
    .prologue
    .line 1929
    iget-object v10, p0, Lcom/android/server/NetworkManagementService;->mContext:Landroid/content/Context;

    #@2
    const-string/jumbo v11, "android.permission.CONNECTIVITY_INTERNAL"

    #@5
    const-string/jumbo v12, "NetworkManagement"

    #@8
    invoke-virtual {v10, v11, v12}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    #@b
    .line 1931
    new-instance v8, Landroid/net/NetworkStats;

    #@d
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    #@10
    move-result-wide v10

    #@11
    const/4 v12, 0x1

    #@12
    invoke-direct {v8, v10, v11, v12}, Landroid/net/NetworkStats;-><init>(JI)V

    #@15
    .line 1933
    .local v8, "stats":Landroid/net/NetworkStats;
    :try_start_0
    iget-object v10, p0, Lcom/android/server/NetworkManagementService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    #@17
    .line 1934
    const-string/jumbo v11, "bandwidth"

    #@1a
    .line 1933
    const/4 v12, 0x1

    #@1b
    new-array v12, v12, [Ljava/lang/Object;

    #@1d
    .line 1934
    const-string/jumbo v13, "gettetherstats"

    #@20
    const/4 v14, 0x0

    #@21
    aput-object v13, v12, v14

    #@23
    .line 1933
    invoke-virtual {v10, v11, v12}, Lcom/android/server/NativeDaemonConnector;->executeForList(Ljava/lang/String;[Ljava/lang/Object;)[Lcom/android/server/NativeDaemonEvent;

    #@26
    move-result-object v5

    #@27
    .line 1935
    .local v5, "events":[Lcom/android/server/NativeDaemonEvent;
    const/4 v10, 0x0

    #@28
    array-length v11, v5

    #@29
    :goto_0
    if-ge v10, v11, :cond_1

    #@2b
    aget-object v4, v5, v10

    #@2d
    .line 1936
    .local v4, "event":Lcom/android/server/NativeDaemonEvent;
    invoke-virtual {v4}, Lcom/android/server/NativeDaemonEvent;->getCode()I

    #@30
    move-result v12

    #@31
    const/16 v13, 0x72

    #@33
    if-eq v12, v13, :cond_0

    #@35
    .line 1935
    :goto_1
    add-int/lit8 v10, v10, 0x1

    #@37
    goto :goto_0

    #@38
    .line 1939
    :cond_0
    new-instance v9, Ljava/util/StringTokenizer;

    #@3a
    invoke-virtual {v4}, Lcom/android/server/NativeDaemonEvent;->getMessage()Ljava/lang/String;

    #@3d
    move-result-object v12

    #@3e
    invoke-direct {v9, v12}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_0 .. :try_end_0} :catch_1

    #@41
    .line 1941
    .local v9, "tok":Ljava/util/StringTokenizer;
    :try_start_1
    invoke-virtual {v9}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    #@44
    move-result-object v6

    #@45
    .line 1942
    .local v6, "ifaceIn":Ljava/lang/String;
    invoke-virtual {v9}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    #@48
    move-result-object v7

    #@49
    .line 1944
    .local v7, "ifaceOut":Ljava/lang/String;
    new-instance v3, Landroid/net/NetworkStats$Entry;

    #@4b
    invoke-direct {v3}, Landroid/net/NetworkStats$Entry;-><init>()V

    #@4e
    .line 1945
    .local v3, "entry":Landroid/net/NetworkStats$Entry;
    iput-object v7, v3, Landroid/net/NetworkStats$Entry;->iface:Ljava/lang/String;

    #@50
    .line 1946
    const/4 v12, -0x5

    #@51
    iput v12, v3, Landroid/net/NetworkStats$Entry;->uid:I

    #@53
    .line 1947
    const/4 v12, 0x0

    #@54
    iput v12, v3, Landroid/net/NetworkStats$Entry;->set:I

    #@56
    .line 1948
    const/4 v12, 0x0

    #@57
    iput v12, v3, Landroid/net/NetworkStats$Entry;->tag:I

    #@59
    .line 1949
    invoke-virtual {v9}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    #@5c
    move-result-object v12

    #@5d
    invoke-static {v12}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    #@60
    move-result-wide v12

    #@61
    iput-wide v12, v3, Landroid/net/NetworkStats$Entry;->rxBytes:J

    #@63
    .line 1950
    invoke-virtual {v9}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    #@66
    move-result-object v12

    #@67
    invoke-static {v12}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    #@6a
    move-result-wide v12

    #@6b
    iput-wide v12, v3, Landroid/net/NetworkStats$Entry;->rxPackets:J

    #@6d
    .line 1951
    invoke-virtual {v9}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    #@70
    move-result-object v12

    #@71
    invoke-static {v12}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    #@74
    move-result-wide v12

    #@75
    iput-wide v12, v3, Landroid/net/NetworkStats$Entry;->txBytes:J

    #@77
    .line 1952
    invoke-virtual {v9}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    #@7a
    move-result-object v12

    #@7b
    invoke-static {v12}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    #@7e
    move-result-wide v12

    #@7f
    iput-wide v12, v3, Landroid/net/NetworkStats$Entry;->txPackets:J

    #@81
    .line 1953
    invoke-virtual {v8, v3}, Landroid/net/NetworkStats;->combineValues(Landroid/net/NetworkStats$Entry;)Landroid/net/NetworkStats;
    :try_end_1
    .catch Ljava/util/NoSuchElementException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_1 .. :try_end_1} :catch_1

    #@84
    goto :goto_1

    #@85
    .line 1954
    .end local v3    # "entry":Landroid/net/NetworkStats$Entry;
    .end local v6    # "ifaceIn":Ljava/lang/String;
    .end local v7    # "ifaceOut":Ljava/lang/String;
    :catch_0
    move-exception v2

    #@86
    .line 1955
    .local v2, "e":Ljava/util/NoSuchElementException;
    :try_start_2
    new-instance v10, Ljava/lang/IllegalStateException;

    #@88
    new-instance v11, Ljava/lang/StringBuilder;

    #@8a
    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    #@8d
    const-string/jumbo v12, "problem parsing tethering stats: "

    #@90
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@93
    move-result-object v11

    #@94
    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@97
    move-result-object v11

    #@98
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@9b
    move-result-object v11

    #@9c
    invoke-direct {v10, v11}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@9f
    throw v10
    :try_end_2
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_2 .. :try_end_2} :catch_1

    #@a0
    .line 1960
    .end local v2    # "e":Ljava/util/NoSuchElementException;
    .end local v4    # "event":Lcom/android/server/NativeDaemonEvent;
    .end local v5    # "events":[Lcom/android/server/NativeDaemonEvent;
    .end local v9    # "tok":Ljava/util/StringTokenizer;
    :catch_1
    move-exception v0

    #@a1
    .line 1961
    .local v0, "e":Lcom/android/server/NativeDaemonConnectorException;
    invoke-virtual {v0}, Lcom/android/server/NativeDaemonConnectorException;->rethrowAsParcelableException()Ljava/lang/IllegalArgumentException;

    #@a4
    move-result-object v10

    #@a5
    throw v10

    #@a6
    .line 1956
    .end local v0    # "e":Lcom/android/server/NativeDaemonConnectorException;
    .restart local v4    # "event":Lcom/android/server/NativeDaemonEvent;
    .restart local v5    # "events":[Lcom/android/server/NativeDaemonEvent;
    .restart local v9    # "tok":Ljava/util/StringTokenizer;
    :catch_2
    move-exception v1

    #@a7
    .line 1957
    .local v1, "e":Ljava/lang/NumberFormatException;
    :try_start_3
    new-instance v10, Ljava/lang/IllegalStateException;

    #@a9
    new-instance v11, Ljava/lang/StringBuilder;

    #@ab
    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    #@ae
    const-string/jumbo v12, "problem parsing tethering stats: "

    #@b1
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b4
    move-result-object v11

    #@b5
    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@b8
    move-result-object v11

    #@b9
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@bc
    move-result-object v11

    #@bd
    invoke-direct {v10, v11}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@c0
    throw v10
    :try_end_3
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_3 .. :try_end_3} :catch_1

    #@c1
    .line 1963
    .end local v1    # "e":Ljava/lang/NumberFormatException;
    .end local v4    # "event":Lcom/android/server/NativeDaemonEvent;
    .end local v9    # "tok":Ljava/util/StringTokenizer;
    :cond_1
    return-object v8
.end method

.method public getNetworkStatsUidDetail(I)Landroid/net/NetworkStats;
    .locals 5
    .param p1, "uid"    # I

    #@0
    .prologue
    .line 1919
    iget-object v1, p0, Lcom/android/server/NetworkManagementService;->mContext:Landroid/content/Context;

    #@2
    const-string/jumbo v2, "android.permission.CONNECTIVITY_INTERNAL"

    #@5
    const-string/jumbo v3, "NetworkManagement"

    #@8
    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    #@b
    .line 1921
    :try_start_0
    iget-object v1, p0, Lcom/android/server/NetworkManagementService;->mStatsFactory:Lcom/android/internal/net/NetworkStatsFactory;

    #@d
    const/4 v2, 0x0

    #@e
    const/4 v3, -0x1

    #@f
    const/4 v4, 0x0

    #@10
    invoke-virtual {v1, p1, v2, v3, v4}, Lcom/android/internal/net/NetworkStatsFactory;->readNetworkStatsDetail(I[Ljava/lang/String;ILandroid/net/NetworkStats;)Landroid/net/NetworkStats;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    #@13
    move-result-object v1

    #@14
    return-object v1

    #@15
    .line 1922
    :catch_0
    move-exception v0

    #@16
    .line 1923
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Ljava/lang/IllegalStateException;

    #@18
    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    #@1b
    throw v1
.end method

.method public isBandwidthControlEnabled()Z
    .locals 3

    #@0
    .prologue
    .line 1913
    iget-object v0, p0, Lcom/android/server/NetworkManagementService;->mContext:Landroid/content/Context;

    #@2
    const-string/jumbo v1, "android.permission.CONNECTIVITY_INTERNAL"

    #@5
    const-string/jumbo v2, "NetworkManagement"

    #@8
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    #@b
    .line 1914
    iget-boolean v0, p0, Lcom/android/server/NetworkManagementService;->mBandwidthControlEnabled:Z

    #@d
    return v0
.end method

.method public isClatdStarted(Ljava/lang/String;)Z
    .locals 7
    .param p1, "interfaceName"    # Ljava/lang/String;

    #@0
    .prologue
    .line 2420
    iget-object v2, p0, Lcom/android/server/NetworkManagementService;->mContext:Landroid/content/Context;

    #@2
    const-string/jumbo v3, "android.permission.CONNECTIVITY_INTERNAL"

    #@5
    const-string/jumbo v4, "NetworkManagement"

    #@8
    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    #@b
    .line 2424
    :try_start_0
    iget-object v2, p0, Lcom/android/server/NetworkManagementService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    #@d
    const-string/jumbo v3, "clatd"

    #@10
    const/4 v4, 0x2

    #@11
    new-array v4, v4, [Ljava/lang/Object;

    #@13
    const-string/jumbo v5, "status"

    #@16
    const/4 v6, 0x0

    #@17
    aput-object v5, v4, v6

    #@19
    const/4 v5, 0x1

    #@1a
    aput-object p1, v4, v5

    #@1c
    invoke-virtual {v2, v3, v4}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;
    :try_end_0
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_0 .. :try_end_0} :catch_0

    #@1f
    move-result-object v1

    #@20
    .line 2429
    .local v1, "event":Lcom/android/server/NativeDaemonEvent;
    const/16 v2, 0xdf

    #@22
    invoke-virtual {v1, v2}, Lcom/android/server/NativeDaemonEvent;->checkCode(I)V

    #@25
    .line 2430
    invoke-virtual {v1}, Lcom/android/server/NativeDaemonEvent;->getMessage()Ljava/lang/String;

    #@28
    move-result-object v2

    #@29
    const-string/jumbo v3, "started"

    #@2c
    invoke-virtual {v2, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    #@2f
    move-result v2

    #@30
    return v2

    #@31
    .line 2425
    .end local v1    # "event":Lcom/android/server/NativeDaemonEvent;
    :catch_0
    move-exception v0

    #@32
    .line 2426
    .local v0, "e":Lcom/android/server/NativeDaemonConnectorException;
    invoke-virtual {v0}, Lcom/android/server/NativeDaemonConnectorException;->rethrowAsParcelableException()Ljava/lang/IllegalArgumentException;

    #@35
    move-result-object v2

    #@36
    throw v2
.end method

.method public isFirewallEnabled()Z
    .locals 1

    #@0
    .prologue
    .line 2093
    invoke-static {}, Lcom/android/server/NetworkManagementService;->enforceSystemUid()V

    #@3
    .line 2094
    iget-boolean v0, p0, Lcom/android/server/NetworkManagementService;->mFirewallEnabled:Z

    #@5
    return v0
.end method

.method public isNetworkActive()Z
    .locals 2

    #@0
    .prologue
    .line 2445
    iget-object v1, p0, Lcom/android/server/NetworkManagementService;->mNetworkActivityListeners:Landroid/os/RemoteCallbackList;

    #@2
    monitor-enter v1

    #@3
    .line 2446
    :try_start_0
    iget-boolean v0, p0, Lcom/android/server/NetworkManagementService;->mNetworkActive:Z

    #@5
    if-nez v0, :cond_0

    #@7
    iget-object v0, p0, Lcom/android/server/NetworkManagementService;->mActiveIdleTimers:Ljava/util/HashMap;

    #@9
    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@c
    move-result v0

    #@d
    :goto_0
    monitor-exit v1

    #@e
    return v0

    #@f
    :cond_0
    const/4 v0, 0x1

    #@10
    goto :goto_0

    #@11
    .line 2445
    :catchall_0
    move-exception v0

    #@12
    monitor-exit v1

    #@13
    throw v0
.end method

.method public isTetheringStarted()Z
    .locals 7

    #@0
    .prologue
    .line 1266
    iget-object v2, p0, Lcom/android/server/NetworkManagementService;->mContext:Landroid/content/Context;

    #@2
    const-string/jumbo v3, "android.permission.CONNECTIVITY_INTERNAL"

    #@5
    const-string/jumbo v4, "NetworkManagement"

    #@8
    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    #@b
    .line 1270
    :try_start_0
    iget-object v2, p0, Lcom/android/server/NetworkManagementService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    #@d
    const-string/jumbo v3, "tether"

    #@10
    const/4 v4, 0x1

    #@11
    new-array v4, v4, [Ljava/lang/Object;

    #@13
    const-string/jumbo v5, "status"

    #@16
    const/4 v6, 0x0

    #@17
    aput-object v5, v4, v6

    #@19
    invoke-virtual {v2, v3, v4}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;
    :try_end_0
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_0 .. :try_end_0} :catch_0

    #@1c
    move-result-object v1

    #@1d
    .line 1276
    .local v1, "event":Lcom/android/server/NativeDaemonEvent;
    const/16 v2, 0xd2

    #@1f
    invoke-virtual {v1, v2}, Lcom/android/server/NativeDaemonEvent;->checkCode(I)V

    #@22
    .line 1277
    invoke-virtual {v1}, Lcom/android/server/NativeDaemonEvent;->getMessage()Ljava/lang/String;

    #@25
    move-result-object v2

    #@26
    const-string/jumbo v3, "started"

    #@29
    invoke-virtual {v2, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    #@2c
    move-result v2

    #@2d
    return v2

    #@2e
    .line 1271
    .end local v1    # "event":Lcom/android/server/NativeDaemonEvent;
    :catch_0
    move-exception v0

    #@2f
    .line 1272
    .local v0, "e":Lcom/android/server/NativeDaemonConnectorException;
    invoke-virtual {v0}, Lcom/android/server/NativeDaemonConnectorException;->rethrowAsParcelableException()Ljava/lang/IllegalArgumentException;

    #@32
    move-result-object v2

    #@33
    throw v2
.end method

.method public listInterfaces()[Ljava/lang/String;
    .locals 6

    #@0
    .prologue
    .line 977
    iget-object v1, p0, Lcom/android/server/NetworkManagementService;->mContext:Landroid/content/Context;

    #@2
    const-string/jumbo v2, "android.permission.CONNECTIVITY_INTERNAL"

    #@5
    const-string/jumbo v3, "NetworkManagement"

    #@8
    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    #@b
    .line 980
    :try_start_0
    iget-object v1, p0, Lcom/android/server/NetworkManagementService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    #@d
    const-string/jumbo v2, "interface"

    #@10
    const/4 v3, 0x1

    #@11
    new-array v3, v3, [Ljava/lang/Object;

    #@13
    const-string/jumbo v4, "list"

    #@16
    const/4 v5, 0x0

    #@17
    aput-object v4, v3, v5

    #@19
    invoke-virtual {v1, v2, v3}, Lcom/android/server/NativeDaemonConnector;->executeForList(Ljava/lang/String;[Ljava/lang/Object;)[Lcom/android/server/NativeDaemonEvent;

    #@1c
    move-result-object v1

    #@1d
    const/16 v2, 0x6e

    #@1f
    .line 979
    invoke-static {v1, v2}, Lcom/android/server/NativeDaemonEvent;->filterMessageList([Lcom/android/server/NativeDaemonEvent;I)[Ljava/lang/String;
    :try_end_0
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_0 .. :try_end_0} :catch_0

    #@22
    move-result-object v1

    #@23
    return-object v1

    #@24
    .line 981
    :catch_0
    move-exception v0

    #@25
    .line 982
    .local v0, "e":Lcom/android/server/NativeDaemonConnectorException;
    invoke-virtual {v0}, Lcom/android/server/NativeDaemonConnectorException;->rethrowAsParcelableException()Ljava/lang/IllegalArgumentException;

    #@28
    move-result-object v1

    #@29
    throw v1
.end method

.method public listTetheredInterfaces()[Ljava/lang/String;
    .locals 6

    #@0
    .prologue
    .line 1308
    iget-object v1, p0, Lcom/android/server/NetworkManagementService;->mContext:Landroid/content/Context;

    #@2
    const-string/jumbo v2, "android.permission.CONNECTIVITY_INTERNAL"

    #@5
    const-string/jumbo v3, "NetworkManagement"

    #@8
    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    #@b
    .line 1311
    :try_start_0
    iget-object v1, p0, Lcom/android/server/NetworkManagementService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    #@d
    const-string/jumbo v2, "tether"

    #@10
    const/4 v3, 0x2

    #@11
    new-array v3, v3, [Ljava/lang/Object;

    #@13
    const-string/jumbo v4, "interface"

    #@16
    const/4 v5, 0x0

    #@17
    aput-object v4, v3, v5

    #@19
    const-string/jumbo v4, "list"

    #@1c
    const/4 v5, 0x1

    #@1d
    aput-object v4, v3, v5

    #@1f
    invoke-virtual {v1, v2, v3}, Lcom/android/server/NativeDaemonConnector;->executeForList(Ljava/lang/String;[Ljava/lang/Object;)[Lcom/android/server/NativeDaemonEvent;

    #@22
    move-result-object v1

    #@23
    .line 1312
    const/16 v2, 0x6f

    #@25
    .line 1310
    invoke-static {v1, v2}, Lcom/android/server/NativeDaemonEvent;->filterMessageList([Lcom/android/server/NativeDaemonEvent;I)[Ljava/lang/String;
    :try_end_0
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_0 .. :try_end_0} :catch_0

    #@28
    move-result-object v1

    #@29
    return-object v1

    #@2a
    .line 1313
    :catch_0
    move-exception v0

    #@2b
    .line 1314
    .local v0, "e":Lcom/android/server/NativeDaemonConnectorException;
    invoke-virtual {v0}, Lcom/android/server/NativeDaemonConnectorException;->rethrowAsParcelableException()Ljava/lang/IllegalArgumentException;

    #@2e
    move-result-object v1

    #@2f
    throw v1
.end method

.method public listTtys()[Ljava/lang/String;
    .locals 4

    #@0
    .prologue
    .line 1427
    iget-object v1, p0, Lcom/android/server/NetworkManagementService;->mContext:Landroid/content/Context;

    #@2
    const-string/jumbo v2, "android.permission.CONNECTIVITY_INTERNAL"

    #@5
    const-string/jumbo v3, "NetworkManagement"

    #@8
    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    #@b
    .line 1430
    :try_start_0
    iget-object v1, p0, Lcom/android/server/NetworkManagementService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    #@d
    const-string/jumbo v2, "list_ttys"

    #@10
    const/4 v3, 0x0

    #@11
    new-array v3, v3, [Ljava/lang/Object;

    #@13
    invoke-virtual {v1, v2, v3}, Lcom/android/server/NativeDaemonConnector;->executeForList(Ljava/lang/String;[Ljava/lang/Object;)[Lcom/android/server/NativeDaemonEvent;

    #@16
    move-result-object v1

    #@17
    const/16 v2, 0x71

    #@19
    .line 1429
    invoke-static {v1, v2}, Lcom/android/server/NativeDaemonEvent;->filterMessageList([Lcom/android/server/NativeDaemonEvent;I)[Ljava/lang/String;
    :try_end_0
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_0 .. :try_end_0} :catch_0

    #@1c
    move-result-object v1

    #@1d
    return-object v1

    #@1e
    .line 1431
    :catch_0
    move-exception v0

    #@1f
    .line 1432
    .local v0, "e":Lcom/android/server/NativeDaemonConnectorException;
    invoke-virtual {v0}, Lcom/android/server/NativeDaemonConnectorException;->rethrowAsParcelableException()Ljava/lang/IllegalArgumentException;

    #@22
    move-result-object v1

    #@23
    throw v1
.end method

.method public monitor()V
    .locals 1

    #@0
    .prologue
    .line 2467
    iget-object v0, p0, Lcom/android/server/NetworkManagementService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 2468
    iget-object v0, p0, Lcom/android/server/NetworkManagementService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    #@6
    invoke-virtual {v0}, Lcom/android/server/NativeDaemonConnector;->monitor()V

    #@9
    .line 2466
    :cond_0
    return-void
.end method

.method public registerNetworkActivityListener(Landroid/os/INetworkActivityListener;)V
    .locals 1
    .param p1, "listener"    # Landroid/os/INetworkActivityListener;

    #@0
    .prologue
    .line 2435
    iget-object v0, p0, Lcom/android/server/NetworkManagementService;->mNetworkActivityListeners:Landroid/os/RemoteCallbackList;

    #@2
    invoke-virtual {v0, p1}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;)Z

    #@5
    .line 2434
    return-void
.end method

.method public registerObserver(Landroid/net/INetworkManagementEventObserver;)V
    .locals 3
    .param p1, "observer"    # Landroid/net/INetworkManagementEventObserver;

    #@0
    .prologue
    .line 366
    iget-object v0, p0, Lcom/android/server/NetworkManagementService;->mContext:Landroid/content/Context;

    #@2
    const-string/jumbo v1, "android.permission.CONNECTIVITY_INTERNAL"

    #@5
    const-string/jumbo v2, "NetworkManagement"

    #@8
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    #@b
    .line 367
    iget-object v0, p0, Lcom/android/server/NetworkManagementService;->mObservers:Landroid/os/RemoteCallbackList;

    #@d
    invoke-virtual {v0, p1}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;)Z

    #@10
    .line 365
    return-void
.end method

.method public removeIdleTimer(Ljava/lang/String;)V
    .locals 8
    .param p1, "iface"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1615
    iget-object v2, p0, Lcom/android/server/NetworkManagementService;->mContext:Landroid/content/Context;

    #@2
    const-string/jumbo v3, "android.permission.CONNECTIVITY_INTERNAL"

    #@5
    const-string/jumbo v4, "NetworkManagement"

    #@8
    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    #@b
    .line 1617
    sget-boolean v2, Lcom/android/server/NetworkManagementService;->DBG:Z

    #@d
    if-eqz v2, :cond_0

    #@f
    const-string/jumbo v2, "NetworkManagement"

    #@12
    const-string/jumbo v3, "Removing idletimer"

    #@15
    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@18
    .line 1619
    :cond_0
    iget-object v3, p0, Lcom/android/server/NetworkManagementService;->mIdleTimerLock:Ljava/lang/Object;

    #@1a
    monitor-enter v3

    #@1b
    .line 1620
    :try_start_0
    iget-object v2, p0, Lcom/android/server/NetworkManagementService;->mActiveIdleTimers:Ljava/util/HashMap;

    #@1d
    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@20
    move-result-object v1

    #@21
    check-cast v1, Lcom/android/server/NetworkManagementService$IdleTimerParams;

    #@23
    .line 1621
    .local v1, "params":Lcom/android/server/NetworkManagementService$IdleTimerParams;
    if-eqz v1, :cond_1

    #@25
    iget v2, v1, Lcom/android/server/NetworkManagementService$IdleTimerParams;->networkCount:I

    #@27
    add-int/lit8 v2, v2, -0x1

    #@29
    iput v2, v1, Lcom/android/server/NetworkManagementService$IdleTimerParams;->networkCount:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@2b
    if-lez v2, :cond_2

    #@2d
    :cond_1
    monitor-exit v3

    #@2e
    .line 1622
    return-void

    #@2f
    .line 1626
    :cond_2
    :try_start_1
    iget-object v2, p0, Lcom/android/server/NetworkManagementService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    #@31
    const-string/jumbo v4, "idletimer"

    #@34
    const/4 v5, 0x4

    #@35
    new-array v5, v5, [Ljava/lang/Object;

    #@37
    const-string/jumbo v6, "remove"

    #@3a
    const/4 v7, 0x0

    #@3b
    aput-object v6, v5, v7

    #@3d
    const/4 v6, 0x1

    #@3e
    aput-object p1, v5, v6

    #@40
    .line 1627
    iget v6, v1, Lcom/android/server/NetworkManagementService$IdleTimerParams;->timeout:I

    #@42
    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    #@45
    move-result-object v6

    #@46
    const/4 v7, 0x2

    #@47
    aput-object v6, v5, v7

    #@49
    iget v6, v1, Lcom/android/server/NetworkManagementService$IdleTimerParams;->type:I

    #@4b
    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    #@4e
    move-result-object v6

    #@4f
    const/4 v7, 0x3

    #@50
    aput-object v6, v5, v7

    #@52
    .line 1626
    invoke-virtual {v2, v4, v5}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;
    :try_end_1
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@55
    .line 1631
    :try_start_2
    iget-object v2, p0, Lcom/android/server/NetworkManagementService;->mActiveIdleTimers:Ljava/util/HashMap;

    #@57
    invoke-virtual {v2, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    #@5a
    .line 1632
    iget-object v2, p0, Lcom/android/server/NetworkManagementService;->mDaemonHandler:Landroid/os/Handler;

    #@5c
    new-instance v4, Lcom/android/server/NetworkManagementService$2;

    #@5e
    invoke-direct {v4, p0, v1}, Lcom/android/server/NetworkManagementService$2;-><init>(Lcom/android/server/NetworkManagementService;Lcom/android/server/NetworkManagementService$IdleTimerParams;)V

    #@61
    invoke-virtual {v2, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@64
    monitor-exit v3

    #@65
    .line 1614
    return-void

    #@66
    .line 1628
    :catch_0
    move-exception v0

    #@67
    .line 1629
    .local v0, "e":Lcom/android/server/NativeDaemonConnectorException;
    :try_start_3
    invoke-virtual {v0}, Lcom/android/server/NativeDaemonConnectorException;->rethrowAsParcelableException()Ljava/lang/IllegalArgumentException;

    #@6a
    move-result-object v2

    #@6b
    throw v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@6c
    .line 1619
    .end local v0    # "e":Lcom/android/server/NativeDaemonConnectorException;
    .end local v1    # "params":Lcom/android/server/NetworkManagementService$IdleTimerParams;
    :catchall_0
    move-exception v2

    #@6d
    monitor-exit v3

    #@6e
    throw v2
.end method

.method public removeInterfaceAlert(Ljava/lang/String;)V
    .locals 7
    .param p1, "iface"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1751
    iget-object v1, p0, Lcom/android/server/NetworkManagementService;->mContext:Landroid/content/Context;

    #@2
    const-string/jumbo v2, "android.permission.CONNECTIVITY_INTERNAL"

    #@5
    const-string/jumbo v3, "NetworkManagement"

    #@8
    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    #@b
    .line 1755
    iget-boolean v1, p0, Lcom/android/server/NetworkManagementService;->mBandwidthControlEnabled:Z

    #@d
    if-nez v1, :cond_0

    #@f
    return-void

    #@10
    .line 1757
    :cond_0
    iget-object v2, p0, Lcom/android/server/NetworkManagementService;->mQuotaLock:Ljava/lang/Object;

    #@12
    monitor-enter v2

    #@13
    .line 1758
    :try_start_0
    iget-object v1, p0, Lcom/android/server/NetworkManagementService;->mActiveAlerts:Ljava/util/HashMap;

    #@15
    invoke-virtual {v1, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@18
    move-result v1

    #@19
    if-nez v1, :cond_1

    #@1b
    monitor-exit v2

    #@1c
    .line 1760
    return-void

    #@1d
    .line 1765
    :cond_1
    :try_start_1
    iget-object v1, p0, Lcom/android/server/NetworkManagementService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    #@1f
    const-string/jumbo v3, "bandwidth"

    #@22
    const/4 v4, 0x2

    #@23
    new-array v4, v4, [Ljava/lang/Object;

    #@25
    const-string/jumbo v5, "removeinterfacealert"

    #@28
    const/4 v6, 0x0

    #@29
    aput-object v5, v4, v6

    #@2b
    const/4 v5, 0x1

    #@2c
    aput-object p1, v4, v5

    #@2e
    invoke-virtual {v1, v3, v4}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;

    #@31
    .line 1766
    iget-object v1, p0, Lcom/android/server/NetworkManagementService;->mActiveAlerts:Ljava/util/HashMap;

    #@33
    invoke-virtual {v1, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@36
    monitor-exit v2

    #@37
    .line 1750
    return-void

    #@38
    .line 1767
    :catch_0
    move-exception v0

    #@39
    .line 1768
    .local v0, "e":Lcom/android/server/NativeDaemonConnectorException;
    :try_start_2
    invoke-virtual {v0}, Lcom/android/server/NativeDaemonConnectorException;->rethrowAsParcelableException()Ljava/lang/IllegalArgumentException;

    #@3c
    move-result-object v1

    #@3d
    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@3e
    .line 1757
    .end local v0    # "e":Lcom/android/server/NativeDaemonConnectorException;
    :catchall_0
    move-exception v1

    #@3f
    monitor-exit v2

    #@40
    throw v1
.end method

.method public removeInterfaceFromLocalNetwork(Ljava/lang/String;)V
    .locals 2
    .param p1, "iface"    # Ljava/lang/String;

    #@0
    .prologue
    .line 2764
    const-string/jumbo v0, "remove"

    #@3
    const-string/jumbo v1, "local"

    #@6
    invoke-direct {p0, v0, v1, p1}, Lcom/android/server/NetworkManagementService;->modifyInterfaceInNetwork(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    #@9
    .line 2763
    return-void
.end method

.method public removeInterfaceFromNetwork(Ljava/lang/String;I)V
    .locals 3
    .param p1, "iface"    # Ljava/lang/String;
    .param p2, "netId"    # I

    #@0
    .prologue
    .line 2611
    const-string/jumbo v0, "remove"

    #@3
    new-instance v1, Ljava/lang/StringBuilder;

    #@5
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@8
    const-string/jumbo v2, ""

    #@b
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@e
    move-result-object v1

    #@f
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@12
    move-result-object v1

    #@13
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@16
    move-result-object v1

    #@17
    invoke-direct {p0, v0, v1, p1}, Lcom/android/server/NetworkManagementService;->modifyInterfaceInNetwork(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    #@1a
    .line 2610
    return-void
.end method

.method public removeInterfaceQuota(Ljava/lang/String;)V
    .locals 7
    .param p1, "iface"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1697
    iget-object v1, p0, Lcom/android/server/NetworkManagementService;->mContext:Landroid/content/Context;

    #@2
    const-string/jumbo v2, "android.permission.CONNECTIVITY_INTERNAL"

    #@5
    const-string/jumbo v3, "NetworkManagement"

    #@8
    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    #@b
    .line 1701
    iget-boolean v1, p0, Lcom/android/server/NetworkManagementService;->mBandwidthControlEnabled:Z

    #@d
    if-nez v1, :cond_0

    #@f
    return-void

    #@10
    .line 1703
    :cond_0
    iget-object v2, p0, Lcom/android/server/NetworkManagementService;->mQuotaLock:Ljava/lang/Object;

    #@12
    monitor-enter v2

    #@13
    .line 1704
    :try_start_0
    iget-object v1, p0, Lcom/android/server/NetworkManagementService;->mActiveQuotas:Ljava/util/HashMap;

    #@15
    invoke-virtual {v1, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@18
    move-result v1

    #@19
    if-nez v1, :cond_1

    #@1b
    monitor-exit v2

    #@1c
    .line 1706
    return-void

    #@1d
    .line 1709
    :cond_1
    :try_start_1
    iget-object v1, p0, Lcom/android/server/NetworkManagementService;->mActiveQuotas:Ljava/util/HashMap;

    #@1f
    invoke-virtual {v1, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    #@22
    .line 1710
    iget-object v1, p0, Lcom/android/server/NetworkManagementService;->mActiveAlerts:Ljava/util/HashMap;

    #@24
    invoke-virtual {v1, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@27
    .line 1714
    :try_start_2
    iget-object v1, p0, Lcom/android/server/NetworkManagementService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    #@29
    const-string/jumbo v3, "bandwidth"

    #@2c
    const/4 v4, 0x2

    #@2d
    new-array v4, v4, [Ljava/lang/Object;

    #@2f
    const-string/jumbo v5, "removeiquota"

    #@32
    const/4 v6, 0x0

    #@33
    aput-object v5, v4, v6

    #@35
    const/4 v5, 0x1

    #@36
    aput-object p1, v4, v5

    #@38
    invoke-virtual {v1, v3, v4}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;
    :try_end_2
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@3b
    monitor-exit v2

    #@3c
    .line 1696
    return-void

    #@3d
    .line 1715
    :catch_0
    move-exception v0

    #@3e
    .line 1716
    .local v0, "e":Lcom/android/server/NativeDaemonConnectorException;
    :try_start_3
    invoke-virtual {v0}, Lcom/android/server/NativeDaemonConnectorException;->rethrowAsParcelableException()Ljava/lang/IllegalArgumentException;

    #@41
    move-result-object v1

    #@42
    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@43
    .line 1703
    .end local v0    # "e":Lcom/android/server/NativeDaemonConnectorException;
    :catchall_0
    move-exception v1

    #@44
    monitor-exit v2

    #@45
    throw v1
.end method

.method public removeNetwork(I)V
    .locals 6
    .param p1, "netId"    # I

    #@0
    .prologue
    .line 2595
    iget-object v1, p0, Lcom/android/server/NetworkManagementService;->mContext:Landroid/content/Context;

    #@2
    const-string/jumbo v2, "android.permission.CONNECTIVITY_INTERNAL"

    #@5
    const-string/jumbo v3, "NetworkManagement"

    #@8
    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    #@b
    .line 2598
    :try_start_0
    iget-object v1, p0, Lcom/android/server/NetworkManagementService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    #@d
    const-string/jumbo v2, "network"

    #@10
    const/4 v3, 0x2

    #@11
    new-array v3, v3, [Ljava/lang/Object;

    #@13
    const-string/jumbo v4, "destroy"

    #@16
    const/4 v5, 0x0

    #@17
    aput-object v4, v3, v5

    #@19
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@1c
    move-result-object v4

    #@1d
    const/4 v5, 0x1

    #@1e
    aput-object v4, v3, v5

    #@20
    invoke-virtual {v1, v2, v3}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;
    :try_end_0
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_0 .. :try_end_0} :catch_0

    #@23
    .line 2594
    return-void

    #@24
    .line 2599
    :catch_0
    move-exception v0

    #@25
    .line 2600
    .local v0, "e":Lcom/android/server/NativeDaemonConnectorException;
    invoke-virtual {v0}, Lcom/android/server/NativeDaemonConnectorException;->rethrowAsParcelableException()Ljava/lang/IllegalArgumentException;

    #@28
    move-result-object v1

    #@29
    throw v1
.end method

.method public removeRoute(ILandroid/net/RouteInfo;)V
    .locals 3
    .param p1, "netId"    # I
    .param p2, "route"    # Landroid/net/RouteInfo;

    #@0
    .prologue
    .line 1129
    const-string/jumbo v0, "remove"

    #@3
    new-instance v1, Ljava/lang/StringBuilder;

    #@5
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@8
    const-string/jumbo v2, ""

    #@b
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@e
    move-result-object v1

    #@f
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@12
    move-result-object v1

    #@13
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@16
    move-result-object v1

    #@17
    invoke-direct {p0, v0, v1, p2}, Lcom/android/server/NetworkManagementService;->modifyRoute(Ljava/lang/String;Ljava/lang/String;Landroid/net/RouteInfo;)V

    #@1a
    .line 1128
    return-void
.end method

.method public removeVpnUidRanges(I[Landroid/net/UidRange;)V
    .locals 8
    .param p1, "netId"    # I
    .param p2, "ranges"    # [Landroid/net/UidRange;

    #@0
    .prologue
    .line 2060
    iget-object v5, p0, Lcom/android/server/NetworkManagementService;->mContext:Landroid/content/Context;

    #@2
    const-string/jumbo v6, "android.permission.CONNECTIVITY_INTERNAL"

    #@5
    const-string/jumbo v7, "NetworkManagement"

    #@8
    invoke-virtual {v5, v6, v7}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    #@b
    .line 2061
    const/16 v5, 0xd

    #@d
    new-array v2, v5, [Ljava/lang/Object;

    #@f
    .line 2062
    .local v2, "argv":[Ljava/lang/Object;
    const-string/jumbo v5, "users"

    #@12
    const/4 v6, 0x0

    #@13
    aput-object v5, v2, v6

    #@15
    .line 2063
    const-string/jumbo v5, "remove"

    #@18
    const/4 v6, 0x1

    #@19
    aput-object v5, v2, v6

    #@1b
    .line 2064
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@1e
    move-result-object v5

    #@1f
    const/4 v6, 0x2

    #@20
    aput-object v5, v2, v6

    #@22
    .line 2065
    const/4 v0, 0x3

    #@23
    .line 2067
    .local v0, "argc":I
    const/4 v4, 0x0

    #@24
    .local v4, "i":I
    :goto_0
    array-length v5, p2

    #@25
    if-ge v4, v5, :cond_2

    #@27
    .line 2068
    add-int/lit8 v1, v0, 0x1

    #@29
    .end local v0    # "argc":I
    .local v1, "argc":I
    aget-object v5, p2, v4

    #@2b
    invoke-virtual {v5}, Landroid/net/UidRange;->toString()Ljava/lang/String;

    #@2e
    move-result-object v5

    #@2f
    aput-object v5, v2, v0

    #@31
    .line 2069
    array-length v5, p2

    #@32
    add-int/lit8 v5, v5, -0x1

    #@34
    if-eq v4, v5, :cond_0

    #@36
    array-length v5, v2

    #@37
    if-ne v1, v5, :cond_1

    #@39
    .line 2071
    :cond_0
    :try_start_0
    iget-object v5, p0, Lcom/android/server/NetworkManagementService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    #@3b
    const-string/jumbo v6, "network"

    #@3e
    invoke-static {v2, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    #@41
    move-result-object v7

    #@42
    invoke-virtual {v5, v6, v7}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;
    :try_end_0
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_0 .. :try_end_0} :catch_0

    #@45
    .line 2075
    const/4 v0, 0x3

    #@46
    .line 2067
    .end local v1    # "argc":I
    .restart local v0    # "argc":I
    :goto_1
    add-int/lit8 v4, v4, 0x1

    #@48
    goto :goto_0

    #@49
    .end local v0    # "argc":I
    .restart local v1    # "argc":I
    :cond_1
    move v0, v1

    #@4a
    .line 2069
    .end local v1    # "argc":I
    .restart local v0    # "argc":I
    goto :goto_1

    #@4b
    .line 2072
    .end local v0    # "argc":I
    .restart local v1    # "argc":I
    :catch_0
    move-exception v3

    #@4c
    .line 2073
    .local v3, "e":Lcom/android/server/NativeDaemonConnectorException;
    invoke-virtual {v3}, Lcom/android/server/NativeDaemonConnectorException;->rethrowAsParcelableException()Ljava/lang/IllegalArgumentException;

    #@4f
    move-result-object v5

    #@50
    throw v5

    #@51
    .line 2059
    .end local v1    # "argc":I
    .end local v3    # "e":Lcom/android/server/NativeDaemonConnectorException;
    .restart local v0    # "argc":I
    :cond_2
    return-void
.end method

.method public setAccessPoint(Landroid/net/wifi/WifiConfiguration;Ljava/lang/String;)V
    .locals 7
    .param p1, "wifiConfig"    # Landroid/net/wifi/WifiConfiguration;
    .param p2, "wlanIface"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1556
    iget-object v0, p0, Lcom/android/server/NetworkManagementService;->mContext:Landroid/content/Context;

    #@2
    const-string/jumbo v1, "android.permission.CONNECTIVITY_INTERNAL"

    #@5
    const-string/jumbo v3, "NetworkManagement"

    #@8
    invoke-virtual {v0, v1, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    #@b
    .line 1558
    const-string/jumbo v5, "startAccessPoint Error setting up softap"

    #@e
    .line 1560
    .local v5, "logMsg":Ljava/lang/String;
    if-nez p1, :cond_0

    #@10
    .line 1561
    const/4 v0, 0x2

    #@11
    :try_start_0
    new-array v2, v0, [Ljava/lang/Object;

    #@13
    const-string/jumbo v0, "set"

    #@16
    const/4 v1, 0x0

    #@17
    aput-object v0, v2, v1

    #@19
    const/4 v0, 0x1

    #@1a
    aput-object p2, v2, v0

    #@1c
    .line 1570
    .local v2, "args":[Ljava/lang/Object;
    :goto_0
    const-string/jumbo v1, "softap"

    #@1f
    .line 1571
    const-string/jumbo v4, "Ok"

    #@22
    .line 1570
    const/16 v3, 0xd6

    #@24
    move-object v0, p0

    #@25
    invoke-direct/range {v0 .. v5}, Lcom/android/server/NetworkManagementService;->executeOrLogWithMessage(Ljava/lang/String;[Ljava/lang/Object;ILjava/lang/String;Ljava/lang/String;)V

    #@28
    .line 1555
    return-void

    #@29
    .line 1566
    .end local v2    # "args":[Ljava/lang/Object;
    :cond_0
    const/4 v0, 0x7

    #@2a
    new-array v2, v0, [Ljava/lang/Object;

    #@2c
    const-string/jumbo v0, "set"

    #@2f
    const/4 v1, 0x0

    #@30
    aput-object v0, v2, v1

    #@32
    const/4 v0, 0x1

    #@33
    aput-object p2, v2, v0

    #@35
    iget-object v0, p1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    #@37
    const/4 v1, 0x2

    #@38
    aput-object v0, v2, v1

    #@3a
    .line 1567
    const-string/jumbo v0, "broadcast"

    #@3d
    const/4 v1, 0x3

    #@3e
    aput-object v0, v2, v1

    #@40
    const-string/jumbo v0, "6"

    #@43
    const/4 v1, 0x4

    #@44
    aput-object v0, v2, v1

    #@46
    .line 1568
    invoke-static {p1}, Lcom/android/server/NetworkManagementService;->getSecurityType(Landroid/net/wifi/WifiConfiguration;)Ljava/lang/String;

    #@49
    move-result-object v0

    #@4a
    const/4 v1, 0x5

    #@4b
    aput-object v0, v2, v1

    #@4d
    new-instance v0, Lcom/android/server/NativeDaemonConnector$SensitiveArg;

    #@4f
    iget-object v1, p1, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    #@51
    invoke-direct {v0, v1}, Lcom/android/server/NativeDaemonConnector$SensitiveArg;-><init>(Ljava/lang/Object;)V

    #@54
    const/4 v1, 0x6

    #@55
    aput-object v0, v2, v1
    :try_end_0
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_0 .. :try_end_0} :catch_0

    #@57
    .line 1566
    .restart local v2    # "args":[Ljava/lang/Object;
    goto :goto_0

    #@58
    .line 1572
    .end local v2    # "args":[Ljava/lang/Object;
    :catch_0
    move-exception v6

    #@59
    .line 1573
    .local v6, "e":Lcom/android/server/NativeDaemonConnectorException;
    invoke-virtual {v6}, Lcom/android/server/NativeDaemonConnectorException;->rethrowAsParcelableException()Ljava/lang/IllegalArgumentException;

    #@5c
    move-result-object v0

    #@5d
    throw v0
.end method

.method public setAllowOnlyVpnForUids(Z[Landroid/net/UidRange;)V
    .locals 5
    .param p1, "add"    # Z
    .param p2, "uidRanges"    # [Landroid/net/UidRange;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/ServiceSpecificException;
        }
    .end annotation

    #@0
    .prologue
    .line 1856
    :try_start_0
    iget-object v2, p0, Lcom/android/server/NetworkManagementService;->mNetdService:Landroid/net/INetd;

    #@2
    invoke-interface {v2, p1, p2}, Landroid/net/INetd;->networkRejectNonSecureVpn(Z[Landroid/net/UidRange;)V
    :try_end_0
    .catch Landroid/os/ServiceSpecificException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@5
    .line 1854
    return-void

    #@6
    .line 1861
    :catch_0
    move-exception v0

    #@7
    .line 1862
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v2, "NetworkManagement"

    #@a
    new-instance v3, Ljava/lang/StringBuilder;

    #@c
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@f
    const-string/jumbo v4, "setAllowOnlyVpnForUids("

    #@12
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@15
    move-result-object v3

    #@16
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@19
    move-result-object v3

    #@1a
    const-string/jumbo v4, ", "

    #@1d
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@20
    move-result-object v3

    #@21
    invoke-static {p2}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    #@24
    move-result-object v4

    #@25
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@28
    move-result-object v3

    #@29
    const-string/jumbo v4, ")"

    #@2c
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2f
    move-result-object v3

    #@30
    .line 1863
    const-string/jumbo v4, ": netd command failed"

    #@33
    .line 1862
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@36
    move-result-object v3

    #@37
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3a
    move-result-object v3

    #@3b
    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@3e
    .line 1864
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    #@41
    move-result-object v2

    #@42
    throw v2

    #@43
    .line 1857
    .end local v0    # "e":Landroid/os/RemoteException;
    :catch_1
    move-exception v1

    #@44
    .line 1858
    .local v1, "e":Landroid/os/ServiceSpecificException;
    const-string/jumbo v2, "NetworkManagement"

    #@47
    new-instance v3, Ljava/lang/StringBuilder;

    #@49
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@4c
    const-string/jumbo v4, "setAllowOnlyVpnForUids("

    #@4f
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@52
    move-result-object v3

    #@53
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@56
    move-result-object v3

    #@57
    const-string/jumbo v4, ", "

    #@5a
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5d
    move-result-object v3

    #@5e
    invoke-static {p2}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    #@61
    move-result-object v4

    #@62
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@65
    move-result-object v3

    #@66
    const-string/jumbo v4, ")"

    #@69
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6c
    move-result-object v3

    #@6d
    .line 1859
    const-string/jumbo v4, ": netd command failed"

    #@70
    .line 1858
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@73
    move-result-object v3

    #@74
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@77
    move-result-object v3

    #@78
    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@7b
    .line 1860
    throw v1
.end method

.method public setDataSaverModeEnabled(Z)Z
    .locals 6
    .param p1, "enable"    # Z

    #@0
    .prologue
    .line 1831
    sget-boolean v2, Lcom/android/server/NetworkManagementService;->DBG:Z

    #@2
    if-eqz v2, :cond_0

    #@4
    const-string/jumbo v2, "NetworkManagement"

    #@7
    new-instance v3, Ljava/lang/StringBuilder;

    #@9
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@c
    const-string/jumbo v4, "setDataSaverMode: "

    #@f
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@12
    move-result-object v3

    #@13
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@16
    move-result-object v3

    #@17
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1a
    move-result-object v3

    #@1b
    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@1e
    .line 1832
    :cond_0
    iget-object v3, p0, Lcom/android/server/NetworkManagementService;->mQuotaLock:Ljava/lang/Object;

    #@20
    monitor-enter v3

    #@21
    .line 1833
    :try_start_0
    iget-boolean v2, p0, Lcom/android/server/NetworkManagementService;->mDataSaverMode:Z

    #@23
    if-ne v2, p1, :cond_1

    #@25
    .line 1834
    const-string/jumbo v2, "NetworkManagement"

    #@28
    new-instance v4, Ljava/lang/StringBuilder;

    #@2a
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@2d
    const-string/jumbo v5, "setDataSaverMode(): already "

    #@30
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@33
    move-result-object v4

    #@34
    iget-boolean v5, p0, Lcom/android/server/NetworkManagementService;->mDataSaverMode:Z

    #@36
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@39
    move-result-object v4

    #@3a
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3d
    move-result-object v4

    #@3e
    invoke-static {v2, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@41
    .line 1835
    const/4 v2, 0x1

    #@42
    monitor-exit v3

    #@43
    return v2

    #@44
    .line 1838
    :cond_1
    :try_start_1
    iget-object v2, p0, Lcom/android/server/NetworkManagementService;->mNetdService:Landroid/net/INetd;

    #@46
    invoke-interface {v2, p1}, Landroid/net/INetd;->bandwidthEnableDataSaver(Z)Z

    #@49
    move-result v0

    #@4a
    .line 1839
    .local v0, "changed":Z
    if-eqz v0, :cond_2

    #@4c
    .line 1840
    iput-boolean p1, p0, Lcom/android/server/NetworkManagementService;->mDataSaverMode:Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@4e
    :goto_0
    monitor-exit v3

    #@4f
    .line 1844
    return v0

    #@50
    .line 1842
    :cond_2
    :try_start_2
    const-string/jumbo v2, "NetworkManagement"

    #@53
    new-instance v4, Ljava/lang/StringBuilder;

    #@55
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@58
    const-string/jumbo v5, "setDataSaverMode("

    #@5b
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5e
    move-result-object v4

    #@5f
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@62
    move-result-object v4

    #@63
    const-string/jumbo v5, "): netd command silently failed"

    #@66
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@69
    move-result-object v4

    #@6a
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@6d
    move-result-object v4

    #@6e
    invoke-static {v2, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@71
    goto :goto_0

    #@72
    .line 1845
    .end local v0    # "changed":Z
    :catch_0
    move-exception v1

    #@73
    .line 1846
    .local v1, "e":Landroid/os/RemoteException;
    :try_start_3
    const-string/jumbo v2, "NetworkManagement"

    #@76
    new-instance v4, Ljava/lang/StringBuilder;

    #@78
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@7b
    const-string/jumbo v5, "setDataSaverMode("

    #@7e
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@81
    move-result-object v4

    #@82
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@85
    move-result-object v4

    #@86
    const-string/jumbo v5, "): netd command failed"

    #@89
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@8c
    move-result-object v4

    #@8d
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@90
    move-result-object v4

    #@91
    invoke-static {v2, v4, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@94
    .line 1847
    const/4 v2, 0x0

    #@95
    monitor-exit v3

    #@96
    return v2

    #@97
    .line 1832
    .end local v1    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v2

    #@98
    monitor-exit v3

    #@99
    throw v2
.end method

.method public setDefaultNetId(I)V
    .locals 6
    .param p1, "netId"    # I

    #@0
    .prologue
    .line 2646
    iget-object v1, p0, Lcom/android/server/NetworkManagementService;->mContext:Landroid/content/Context;

    #@2
    const-string/jumbo v2, "android.permission.CONNECTIVITY_INTERNAL"

    #@5
    const-string/jumbo v3, "NetworkManagement"

    #@8
    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    #@b
    .line 2649
    :try_start_0
    iget-object v1, p0, Lcom/android/server/NetworkManagementService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    #@d
    const-string/jumbo v2, "network"

    #@10
    const/4 v3, 0x3

    #@11
    new-array v3, v3, [Ljava/lang/Object;

    #@13
    const-string/jumbo v4, "default"

    #@16
    const/4 v5, 0x0

    #@17
    aput-object v4, v3, v5

    #@19
    const-string/jumbo v4, "set"

    #@1c
    const/4 v5, 0x1

    #@1d
    aput-object v4, v3, v5

    #@1f
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@22
    move-result-object v4

    #@23
    const/4 v5, 0x2

    #@24
    aput-object v4, v3, v5

    #@26
    invoke-virtual {v1, v2, v3}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;
    :try_end_0
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_0 .. :try_end_0} :catch_0

    #@29
    .line 2645
    return-void

    #@2a
    .line 2650
    :catch_0
    move-exception v0

    #@2b
    .line 2651
    .local v0, "e":Lcom/android/server/NativeDaemonConnectorException;
    invoke-virtual {v0}, Lcom/android/server/NativeDaemonConnectorException;->rethrowAsParcelableException()Ljava/lang/IllegalArgumentException;

    #@2e
    move-result-object v1

    #@2f
    throw v1
.end method

.method public setDnsConfigurationForNetwork(I[Ljava/lang/String;Ljava/lang/String;)V
    .locals 11
    .param p1, "netId"    # I
    .param p2, "servers"    # [Ljava/lang/String;
    .param p3, "domains"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1968
    iget-object v8, p0, Lcom/android/server/NetworkManagementService;->mContext:Landroid/content/Context;

    #@2
    const-string/jumbo v9, "android.permission.CONNECTIVITY_INTERNAL"

    #@5
    const-string/jumbo v10, "NetworkManagement"

    #@8
    invoke-virtual {v8, v9, v10}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    #@b
    .line 1970
    iget-object v8, p0, Lcom/android/server/NetworkManagementService;->mContext:Landroid/content/Context;

    #@d
    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    #@10
    move-result-object v5

    #@11
    .line 1973
    .local v5, "resolver":Landroid/content/ContentResolver;
    const-string/jumbo v8, "dns_resolver_sample_validity_seconds"

    #@14
    .line 1974
    const/16 v9, 0x708

    #@16
    .line 1972
    invoke-static {v5, v8, v9}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    #@19
    move-result v6

    #@1a
    .line 1975
    .local v6, "sampleValidity":I
    if-ltz v6, :cond_0

    #@1c
    const v8, 0xffff

    #@1f
    if-le v6, v8, :cond_1

    #@21
    .line 1976
    :cond_0
    const-string/jumbo v8, "NetworkManagement"

    #@24
    new-instance v9, Ljava/lang/StringBuilder;

    #@26
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    #@29
    const-string/jumbo v10, "Invalid sampleValidity="

    #@2c
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2f
    move-result-object v9

    #@30
    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@33
    move-result-object v9

    #@34
    const-string/jumbo v10, ", using default="

    #@37
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3a
    move-result-object v9

    #@3b
    .line 1977
    const/16 v10, 0x708

    #@3d
    .line 1976
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@40
    move-result-object v9

    #@41
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@44
    move-result-object v9

    #@45
    invoke-static {v8, v9}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@48
    .line 1978
    const/16 v6, 0x708

    #@4a
    .line 1982
    :cond_1
    const-string/jumbo v8, "dns_resolver_success_threshold_percent"

    #@4d
    .line 1983
    const/16 v9, 0x19

    #@4f
    .line 1981
    invoke-static {v5, v8, v9}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    #@52
    move-result v7

    #@53
    .line 1984
    .local v7, "successThreshold":I
    if-ltz v7, :cond_2

    #@55
    const/16 v8, 0x64

    #@57
    if-le v7, v8, :cond_3

    #@59
    .line 1985
    :cond_2
    const-string/jumbo v8, "NetworkManagement"

    #@5c
    new-instance v9, Ljava/lang/StringBuilder;

    #@5e
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    #@61
    const-string/jumbo v10, "Invalid successThreshold="

    #@64
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@67
    move-result-object v9

    #@68
    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@6b
    move-result-object v9

    #@6c
    const-string/jumbo v10, ", using default="

    #@6f
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@72
    move-result-object v9

    #@73
    .line 1986
    const/16 v10, 0x19

    #@75
    .line 1985
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@78
    move-result-object v9

    #@79
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@7c
    move-result-object v9

    #@7d
    invoke-static {v8, v9}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@80
    .line 1987
    const/16 v7, 0x19

    #@82
    .line 1991
    :cond_3
    const-string/jumbo v8, "dns_resolver_min_samples"

    #@85
    const/16 v9, 0x8

    #@87
    .line 1990
    invoke-static {v5, v8, v9}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    #@8a
    move-result v3

    #@8b
    .line 1993
    .local v3, "minSamples":I
    const-string/jumbo v8, "dns_resolver_max_samples"

    #@8e
    const/16 v9, 0x40

    #@90
    .line 1992
    invoke-static {v5, v8, v9}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    #@93
    move-result v2

    #@94
    .line 1994
    .local v2, "maxSamples":I
    if-ltz v3, :cond_4

    #@96
    if-le v3, v2, :cond_6

    #@98
    .line 1995
    :cond_4
    :goto_0
    const-string/jumbo v8, "NetworkManagement"

    #@9b
    new-instance v9, Ljava/lang/StringBuilder;

    #@9d
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    #@a0
    const-string/jumbo v10, "Invalid sample count (min, max)=("

    #@a3
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a6
    move-result-object v9

    #@a7
    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@aa
    move-result-object v9

    #@ab
    const-string/jumbo v10, ", "

    #@ae
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b1
    move-result-object v9

    #@b2
    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@b5
    move-result-object v9

    #@b6
    .line 1996
    const-string/jumbo v10, "), using default=("

    #@b9
    .line 1995
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@bc
    move-result-object v9

    #@bd
    .line 1996
    const/16 v10, 0x8

    #@bf
    .line 1995
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@c2
    move-result-object v9

    #@c3
    .line 1996
    const-string/jumbo v10, ", "

    #@c6
    .line 1995
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@c9
    move-result-object v9

    #@ca
    .line 1997
    const/16 v10, 0x40

    #@cc
    .line 1995
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@cf
    move-result-object v9

    #@d0
    .line 1997
    const-string/jumbo v10, ")"

    #@d3
    .line 1995
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@d6
    move-result-object v9

    #@d7
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@da
    move-result-object v9

    #@db
    invoke-static {v8, v9}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@de
    .line 1998
    const/16 v3, 0x8

    #@e0
    .line 1999
    const/16 v2, 0x40

    #@e2
    .line 2002
    :cond_5
    if-nez p3, :cond_7

    #@e4
    const/4 v8, 0x0

    #@e5
    new-array v0, v8, [Ljava/lang/String;

    #@e7
    .line 2003
    .local v0, "domainStrs":[Ljava/lang/String;
    :goto_1
    const/4 v8, 0x4

    #@e8
    new-array v4, v8, [I

    #@ea
    const/4 v8, 0x0

    #@eb
    aput v6, v4, v8

    #@ed
    const/4 v8, 0x1

    #@ee
    aput v7, v4, v8

    #@f0
    const/4 v8, 0x2

    #@f1
    aput v3, v4, v8

    #@f3
    const/4 v8, 0x3

    #@f4
    aput v2, v4, v8

    #@f6
    .line 2005
    .local v4, "params":[I
    :try_start_0
    iget-object v8, p0, Lcom/android/server/NetworkManagementService;->mNetdService:Landroid/net/INetd;

    #@f8
    invoke-interface {v8, p1, p2, v0, v4}, Landroid/net/INetd;->setResolverConfiguration(I[Ljava/lang/String;[Ljava/lang/String;[I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@fb
    .line 1967
    return-void

    #@fc
    .line 1994
    .end local v0    # "domainStrs":[Ljava/lang/String;
    .end local v4    # "params":[I
    :cond_6
    const/16 v8, 0x40

    #@fe
    if-le v2, v8, :cond_5

    #@100
    goto :goto_0

    #@101
    .line 2002
    :cond_7
    const-string/jumbo v8, " "

    #@104
    invoke-virtual {p3, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    #@107
    move-result-object v0

    #@108
    .restart local v0    # "domainStrs":[Ljava/lang/String;
    goto :goto_1

    #@109
    .line 2006
    .restart local v4    # "params":[I
    :catch_0
    move-exception v1

    #@10a
    .line 2007
    .local v1, "e":Landroid/os/RemoteException;
    new-instance v8, Ljava/lang/RuntimeException;

    #@10c
    invoke-direct {v8, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    #@10f
    throw v8
.end method

.method public setDnsForwarders(Landroid/net/Network;[Ljava/lang/String;)V
    .locals 9
    .param p1, "network"    # Landroid/net/Network;
    .param p2, "dns"    # [Ljava/lang/String;

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 1320
    iget-object v5, p0, Lcom/android/server/NetworkManagementService;->mContext:Landroid/content/Context;

    #@3
    const-string/jumbo v6, "android.permission.CONNECTIVITY_INTERNAL"

    #@6
    const-string/jumbo v7, "NetworkManagement"

    #@9
    invoke-virtual {v5, v6, v7}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    #@c
    .line 1322
    if-eqz p1, :cond_0

    #@e
    iget v2, p1, Landroid/net/Network;->netId:I

    #@10
    .line 1323
    .local v2, "netId":I
    :goto_0
    new-instance v0, Lcom/android/server/NativeDaemonConnector$Command;

    #@12
    const-string/jumbo v5, "tether"

    #@15
    const/4 v6, 0x3

    #@16
    new-array v6, v6, [Ljava/lang/Object;

    #@18
    const-string/jumbo v7, "dns"

    #@1b
    aput-object v7, v6, v4

    #@1d
    const-string/jumbo v7, "set"

    #@20
    const/4 v8, 0x1

    #@21
    aput-object v7, v6, v8

    #@23
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@26
    move-result-object v7

    #@27
    const/4 v8, 0x2

    #@28
    aput-object v7, v6, v8

    #@2a
    invoke-direct {v0, v5, v6}, Lcom/android/server/NativeDaemonConnector$Command;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    #@2d
    .line 1325
    .local v0, "cmd":Lcom/android/server/NativeDaemonConnector$Command;
    array-length v5, p2

    #@2e
    :goto_1
    if-ge v4, v5, :cond_1

    #@30
    aget-object v3, p2, v4

    #@32
    .line 1326
    .local v3, "s":Ljava/lang/String;
    invoke-static {v3}, Landroid/net/NetworkUtils;->numericToInetAddress(Ljava/lang/String;)Ljava/net/InetAddress;

    #@35
    move-result-object v6

    #@36
    invoke-virtual {v6}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    #@39
    move-result-object v6

    #@3a
    invoke-virtual {v0, v6}, Lcom/android/server/NativeDaemonConnector$Command;->appendArg(Ljava/lang/Object;)Lcom/android/server/NativeDaemonConnector$Command;

    #@3d
    .line 1325
    add-int/lit8 v4, v4, 0x1

    #@3f
    goto :goto_1

    #@40
    .line 1322
    .end local v0    # "cmd":Lcom/android/server/NativeDaemonConnector$Command;
    .end local v2    # "netId":I
    .end local v3    # "s":Ljava/lang/String;
    :cond_0
    const/4 v2, 0x0

    #@41
    .restart local v2    # "netId":I
    goto :goto_0

    #@42
    .line 1330
    .restart local v0    # "cmd":Lcom/android/server/NativeDaemonConnector$Command;
    :cond_1
    :try_start_0
    iget-object v4, p0, Lcom/android/server/NetworkManagementService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    #@44
    invoke-virtual {v4, v0}, Lcom/android/server/NativeDaemonConnector;->execute(Lcom/android/server/NativeDaemonConnector$Command;)Lcom/android/server/NativeDaemonEvent;
    :try_end_0
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_0 .. :try_end_0} :catch_0

    #@47
    .line 1319
    return-void

    #@48
    .line 1331
    :catch_0
    move-exception v1

    #@49
    .line 1332
    .local v1, "e":Lcom/android/server/NativeDaemonConnectorException;
    invoke-virtual {v1}, Lcom/android/server/NativeDaemonConnectorException;->rethrowAsParcelableException()Ljava/lang/IllegalArgumentException;

    #@4c
    move-result-object v4

    #@4d
    throw v4
.end method

.method public setDnsServersForNetwork(I[Ljava/lang/String;Ljava/lang/String;)V
    .locals 10
    .param p1, "netId"    # I
    .param p2, "servers"    # [Ljava/lang/String;
    .param p3, "domains"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v9, 0x2

    #@1
    const/4 v8, 0x1

    #@2
    const/4 v4, 0x0

    #@3
    .line 2013
    iget-object v5, p0, Lcom/android/server/NetworkManagementService;->mContext:Landroid/content/Context;

    #@5
    const-string/jumbo v6, "android.permission.CONNECTIVITY_INTERNAL"

    #@8
    const-string/jumbo v7, "NetworkManagement"

    #@b
    invoke-virtual {v5, v6, v7}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    #@e
    .line 2016
    array-length v5, p2

    #@f
    if-lez v5, :cond_2

    #@11
    .line 2017
    new-instance v1, Lcom/android/server/NativeDaemonConnector$Command;

    #@13
    const-string/jumbo v5, "resolver"

    #@16
    const/4 v6, 0x3

    #@17
    new-array v6, v6, [Ljava/lang/Object;

    #@19
    const-string/jumbo v7, "setnetdns"

    #@1c
    aput-object v7, v6, v4

    #@1e
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@21
    move-result-object v7

    #@22
    aput-object v7, v6, v8

    #@24
    .line 2018
    if-nez p3, :cond_0

    #@26
    const-string/jumbo p3, ""

    #@29
    .end local p3    # "domains":Ljava/lang/String;
    :cond_0
    aput-object p3, v6, v9

    #@2b
    .line 2017
    invoke-direct {v1, v5, v6}, Lcom/android/server/NativeDaemonConnector$Command;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    #@2e
    .line 2019
    .local v1, "cmd":Lcom/android/server/NativeDaemonConnector$Command;
    array-length v5, p2

    #@2f
    :goto_0
    if-ge v4, v5, :cond_3

    #@31
    aget-object v3, p2, v4

    #@33
    .line 2020
    .local v3, "s":Ljava/lang/String;
    invoke-static {v3}, Landroid/net/NetworkUtils;->numericToInetAddress(Ljava/lang/String;)Ljava/net/InetAddress;

    #@36
    move-result-object v0

    #@37
    .line 2021
    .local v0, "a":Ljava/net/InetAddress;
    invoke-virtual {v0}, Ljava/net/InetAddress;->isAnyLocalAddress()Z

    #@3a
    move-result v6

    #@3b
    if-nez v6, :cond_1

    #@3d
    .line 2022
    invoke-virtual {v0}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    #@40
    move-result-object v6

    #@41
    invoke-virtual {v1, v6}, Lcom/android/server/NativeDaemonConnector$Command;->appendArg(Ljava/lang/Object;)Lcom/android/server/NativeDaemonConnector$Command;

    #@44
    .line 2019
    :cond_1
    add-int/lit8 v4, v4, 0x1

    #@46
    goto :goto_0

    #@47
    .line 2026
    .end local v0    # "a":Ljava/net/InetAddress;
    .end local v1    # "cmd":Lcom/android/server/NativeDaemonConnector$Command;
    .end local v3    # "s":Ljava/lang/String;
    .restart local p3    # "domains":Ljava/lang/String;
    :cond_2
    new-instance v1, Lcom/android/server/NativeDaemonConnector$Command;

    #@49
    const-string/jumbo v5, "resolver"

    #@4c
    new-array v6, v9, [Ljava/lang/Object;

    #@4e
    const-string/jumbo v7, "clearnetdns"

    #@51
    aput-object v7, v6, v4

    #@53
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@56
    move-result-object v4

    #@57
    aput-object v4, v6, v8

    #@59
    invoke-direct {v1, v5, v6}, Lcom/android/server/NativeDaemonConnector$Command;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    #@5c
    .line 2030
    .end local p3    # "domains":Ljava/lang/String;
    .restart local v1    # "cmd":Lcom/android/server/NativeDaemonConnector$Command;
    :cond_3
    :try_start_0
    iget-object v4, p0, Lcom/android/server/NetworkManagementService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    #@5e
    invoke-virtual {v4, v1}, Lcom/android/server/NativeDaemonConnector;->execute(Lcom/android/server/NativeDaemonConnector$Command;)Lcom/android/server/NativeDaemonEvent;
    :try_end_0
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_0 .. :try_end_0} :catch_0

    #@61
    .line 2012
    return-void

    #@62
    .line 2031
    :catch_0
    move-exception v2

    #@63
    .line 2032
    .local v2, "e":Lcom/android/server/NativeDaemonConnectorException;
    invoke-virtual {v2}, Lcom/android/server/NativeDaemonConnectorException;->rethrowAsParcelableException()Ljava/lang/IllegalArgumentException;

    #@66
    move-result-object v4

    #@67
    throw v4
.end method

.method public setFirewallChainEnabled(IZ)V
    .locals 8
    .param p1, "chain"    # I
    .param p2, "enable"    # Z

    #@0
    .prologue
    .line 2194
    invoke-static {}, Lcom/android/server/NetworkManagementService;->enforceSystemUid()V

    #@3
    .line 2195
    iget-object v4, p0, Lcom/android/server/NetworkManagementService;->mQuotaLock:Ljava/lang/Object;

    #@5
    monitor-enter v4

    #@6
    .line 2196
    :try_start_0
    iget-object v3, p0, Lcom/android/server/NetworkManagementService;->mFirewallChainStates:Landroid/util/SparseBooleanArray;

    #@8
    invoke-virtual {v3, p1}, Landroid/util/SparseBooleanArray;->get(I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@b
    move-result v3

    #@c
    if-ne v3, p2, :cond_0

    #@e
    monitor-exit v4

    #@f
    .line 2199
    return-void

    #@10
    .line 2201
    :cond_0
    :try_start_1
    iget-object v3, p0, Lcom/android/server/NetworkManagementService;->mFirewallChainStates:Landroid/util/SparseBooleanArray;

    #@12
    invoke-virtual {v3, p1, p2}, Landroid/util/SparseBooleanArray;->put(IZ)V

    #@15
    .line 2203
    if-eqz p2, :cond_1

    #@17
    const-string/jumbo v2, "enable_chain"

    #@1a
    .line 2205
    .local v2, "operation":Ljava/lang/String;
    :goto_0
    packed-switch p1, :pswitch_data_0

    #@1d
    .line 2216
    new-instance v3, Ljava/lang/IllegalArgumentException;

    #@1f
    new-instance v5, Ljava/lang/StringBuilder;

    #@21
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@24
    const-string/jumbo v6, "Bad child chain: "

    #@27
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2a
    move-result-object v5

    #@2b
    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@2e
    move-result-object v5

    #@2f
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@32
    move-result-object v5

    #@33
    invoke-direct {v3, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@36
    throw v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@37
    .line 2195
    .end local v2    # "operation":Ljava/lang/String;
    :catchall_0
    move-exception v3

    #@38
    monitor-exit v4

    #@39
    throw v3

    #@3a
    .line 2203
    :cond_1
    :try_start_2
    const-string/jumbo v2, "disable_chain"

    #@3d
    .restart local v2    # "operation":Ljava/lang/String;
    goto :goto_0

    #@3e
    .line 2207
    :pswitch_0
    const-string/jumbo v0, "standby"
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@41
    .line 2220
    .local v0, "chainName":Ljava/lang/String;
    :goto_1
    :try_start_3
    iget-object v3, p0, Lcom/android/server/NetworkManagementService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    #@43
    const-string/jumbo v5, "firewall"

    #@46
    const/4 v6, 0x2

    #@47
    new-array v6, v6, [Ljava/lang/Object;

    #@49
    const/4 v7, 0x0

    #@4a
    aput-object v2, v6, v7

    #@4c
    const/4 v7, 0x1

    #@4d
    aput-object v0, v6, v7

    #@4f
    invoke-virtual {v3, v5, v6}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;
    :try_end_3
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@52
    .line 2229
    if-eqz p2, :cond_3

    #@54
    .line 2230
    :try_start_4
    sget-boolean v3, Lcom/android/server/NetworkManagementService;->DBG:Z

    #@56
    if-eqz v3, :cond_2

    #@58
    const-string/jumbo v3, "NetworkManagement"

    #@5b
    new-instance v5, Ljava/lang/StringBuilder;

    #@5d
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@60
    const-string/jumbo v6, "Closing sockets after enabling chain "

    #@63
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@66
    move-result-object v5

    #@67
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6a
    move-result-object v5

    #@6b
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@6e
    move-result-object v5

    #@6f
    invoke-static {v3, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@72
    .line 2231
    :cond_2
    invoke-direct {p0, p1, v0}, Lcom/android/server/NetworkManagementService;->closeSocketsForFirewallChainLocked(ILjava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    #@75
    :cond_3
    monitor-exit v4

    #@76
    .line 2193
    return-void

    #@77
    .line 2210
    .end local v0    # "chainName":Ljava/lang/String;
    :pswitch_1
    :try_start_5
    const-string/jumbo v0, "dozable"

    #@7a
    .restart local v0    # "chainName":Ljava/lang/String;
    goto :goto_1

    #@7b
    .line 2213
    .end local v0    # "chainName":Ljava/lang/String;
    :pswitch_2
    const-string/jumbo v0, "powersave"

    #@7e
    .restart local v0    # "chainName":Ljava/lang/String;
    goto :goto_1

    #@7f
    .line 2221
    :catch_0
    move-exception v1

    #@80
    .line 2222
    .local v1, "e":Lcom/android/server/NativeDaemonConnectorException;
    invoke-virtual {v1}, Lcom/android/server/NativeDaemonConnectorException;->rethrowAsParcelableException()Ljava/lang/IllegalArgumentException;

    #@83
    move-result-object v3

    #@84
    throw v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    #@85
    .line 2205
    nop

    #@86
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public setFirewallEgressDestRule(Ljava/lang/String;IZ)V
    .locals 7
    .param p1, "addr"    # Ljava/lang/String;
    .param p2, "port"    # I
    .param p3, "allow"    # Z

    #@0
    .prologue
    .line 2123
    invoke-static {}, Lcom/android/server/NetworkManagementService;->enforceSystemUid()V

    #@3
    .line 2124
    iget-boolean v2, p0, Lcom/android/server/NetworkManagementService;->mFirewallEnabled:Z

    #@5
    invoke-static {v2}, Lcom/android/internal/util/Preconditions;->checkState(Z)V

    #@8
    .line 2125
    if-eqz p3, :cond_0

    #@a
    const-string/jumbo v1, "allow"

    #@d
    .line 2127
    .local v1, "rule":Ljava/lang/String;
    :goto_0
    :try_start_0
    iget-object v2, p0, Lcom/android/server/NetworkManagementService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    #@f
    const-string/jumbo v3, "firewall"

    #@12
    const/4 v4, 0x4

    #@13
    new-array v4, v4, [Ljava/lang/Object;

    #@15
    const-string/jumbo v5, "set_egress_dest_rule"

    #@18
    const/4 v6, 0x0

    #@19
    aput-object v5, v4, v6

    #@1b
    const/4 v5, 0x1

    #@1c
    aput-object p1, v4, v5

    #@1e
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@21
    move-result-object v5

    #@22
    const/4 v6, 0x2

    #@23
    aput-object v5, v4, v6

    #@25
    const/4 v5, 0x3

    #@26
    aput-object v1, v4, v5

    #@28
    invoke-virtual {v2, v3, v4}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;
    :try_end_0
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_0 .. :try_end_0} :catch_0

    #@2b
    .line 2122
    return-void

    #@2c
    .line 2125
    .end local v1    # "rule":Ljava/lang/String;
    :cond_0
    const-string/jumbo v1, "deny"

    #@2f
    .restart local v1    # "rule":Ljava/lang/String;
    goto :goto_0

    #@30
    .line 2128
    :catch_0
    move-exception v0

    #@31
    .line 2129
    .local v0, "e":Lcom/android/server/NativeDaemonConnectorException;
    invoke-virtual {v0}, Lcom/android/server/NativeDaemonConnectorException;->rethrowAsParcelableException()Ljava/lang/IllegalArgumentException;

    #@34
    move-result-object v2

    #@35
    throw v2
.end method

.method public setFirewallEgressSourceRule(Ljava/lang/String;Z)V
    .locals 7
    .param p1, "addr"    # Ljava/lang/String;
    .param p2, "allow"    # Z

    #@0
    .prologue
    .line 2111
    invoke-static {}, Lcom/android/server/NetworkManagementService;->enforceSystemUid()V

    #@3
    .line 2112
    iget-boolean v2, p0, Lcom/android/server/NetworkManagementService;->mFirewallEnabled:Z

    #@5
    invoke-static {v2}, Lcom/android/internal/util/Preconditions;->checkState(Z)V

    #@8
    .line 2113
    if-eqz p2, :cond_0

    #@a
    const-string/jumbo v1, "allow"

    #@d
    .line 2115
    .local v1, "rule":Ljava/lang/String;
    :goto_0
    :try_start_0
    iget-object v2, p0, Lcom/android/server/NetworkManagementService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    #@f
    const-string/jumbo v3, "firewall"

    #@12
    const/4 v4, 0x3

    #@13
    new-array v4, v4, [Ljava/lang/Object;

    #@15
    const-string/jumbo v5, "set_egress_source_rule"

    #@18
    const/4 v6, 0x0

    #@19
    aput-object v5, v4, v6

    #@1b
    const/4 v5, 0x1

    #@1c
    aput-object p1, v4, v5

    #@1e
    const/4 v5, 0x2

    #@1f
    aput-object v1, v4, v5

    #@21
    invoke-virtual {v2, v3, v4}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;
    :try_end_0
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_0 .. :try_end_0} :catch_0

    #@24
    .line 2110
    return-void

    #@25
    .line 2113
    .end local v1    # "rule":Ljava/lang/String;
    :cond_0
    const-string/jumbo v1, "deny"

    #@28
    .restart local v1    # "rule":Ljava/lang/String;
    goto :goto_0

    #@29
    .line 2116
    :catch_0
    move-exception v0

    #@2a
    .line 2117
    .local v0, "e":Lcom/android/server/NativeDaemonConnectorException;
    invoke-virtual {v0}, Lcom/android/server/NativeDaemonConnectorException;->rethrowAsParcelableException()Ljava/lang/IllegalArgumentException;

    #@2d
    move-result-object v2

    #@2e
    throw v2
.end method

.method public setFirewallEnabled(Z)V
    .locals 6
    .param p1, "enabled"    # Z

    #@0
    .prologue
    .line 2082
    invoke-static {}, Lcom/android/server/NetworkManagementService;->enforceSystemUid()V

    #@3
    .line 2084
    :try_start_0
    iget-object v2, p0, Lcom/android/server/NetworkManagementService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    #@5
    const-string/jumbo v3, "firewall"

    #@8
    const/4 v1, 0x2

    #@9
    new-array v4, v1, [Ljava/lang/Object;

    #@b
    const-string/jumbo v1, "enable"

    #@e
    const/4 v5, 0x0

    #@f
    aput-object v1, v4, v5

    #@11
    if-eqz p1, :cond_0

    #@13
    const-string/jumbo v1, "whitelist"

    #@16
    :goto_0
    const/4 v5, 0x1

    #@17
    aput-object v1, v4, v5

    #@19
    invoke-virtual {v2, v3, v4}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;

    #@1c
    .line 2085
    iput-boolean p1, p0, Lcom/android/server/NetworkManagementService;->mFirewallEnabled:Z

    #@1e
    .line 2081
    return-void

    #@1f
    .line 2084
    :cond_0
    const-string/jumbo v1, "blacklist"
    :try_end_0
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_0 .. :try_end_0} :catch_0

    #@22
    goto :goto_0

    #@23
    .line 2086
    :catch_0
    move-exception v0

    #@24
    .line 2087
    .local v0, "e":Lcom/android/server/NativeDaemonConnectorException;
    invoke-virtual {v0}, Lcom/android/server/NativeDaemonConnectorException;->rethrowAsParcelableException()Ljava/lang/IllegalArgumentException;

    #@27
    move-result-object v1

    #@28
    throw v1
.end method

.method public setFirewallInterfaceRule(Ljava/lang/String;Z)V
    .locals 7
    .param p1, "iface"    # Ljava/lang/String;
    .param p2, "allow"    # Z

    #@0
    .prologue
    .line 2099
    invoke-static {}, Lcom/android/server/NetworkManagementService;->enforceSystemUid()V

    #@3
    .line 2100
    iget-boolean v2, p0, Lcom/android/server/NetworkManagementService;->mFirewallEnabled:Z

    #@5
    invoke-static {v2}, Lcom/android/internal/util/Preconditions;->checkState(Z)V

    #@8
    .line 2101
    if-eqz p2, :cond_0

    #@a
    const-string/jumbo v1, "allow"

    #@d
    .line 2103
    .local v1, "rule":Ljava/lang/String;
    :goto_0
    :try_start_0
    iget-object v2, p0, Lcom/android/server/NetworkManagementService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    #@f
    const-string/jumbo v3, "firewall"

    #@12
    const/4 v4, 0x3

    #@13
    new-array v4, v4, [Ljava/lang/Object;

    #@15
    const-string/jumbo v5, "set_interface_rule"

    #@18
    const/4 v6, 0x0

    #@19
    aput-object v5, v4, v6

    #@1b
    const/4 v5, 0x1

    #@1c
    aput-object p1, v4, v5

    #@1e
    const/4 v5, 0x2

    #@1f
    aput-object v1, v4, v5

    #@21
    invoke-virtual {v2, v3, v4}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;
    :try_end_0
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_0 .. :try_end_0} :catch_0

    #@24
    .line 2098
    return-void

    #@25
    .line 2101
    .end local v1    # "rule":Ljava/lang/String;
    :cond_0
    const-string/jumbo v1, "deny"

    #@28
    .restart local v1    # "rule":Ljava/lang/String;
    goto :goto_0

    #@29
    .line 2104
    :catch_0
    move-exception v0

    #@2a
    .line 2105
    .local v0, "e":Lcom/android/server/NativeDaemonConnectorException;
    invoke-virtual {v0}, Lcom/android/server/NativeDaemonConnectorException;->rethrowAsParcelableException()Ljava/lang/IllegalArgumentException;

    #@2d
    move-result-object v2

    #@2e
    throw v2
.end method

.method public setFirewallUidRule(III)V
    .locals 2
    .param p1, "chain"    # I
    .param p2, "uid"    # I
    .param p3, "rule"    # I

    #@0
    .prologue
    .line 2298
    invoke-static {}, Lcom/android/server/NetworkManagementService;->enforceSystemUid()V

    #@3
    .line 2299
    iget-object v0, p0, Lcom/android/server/NetworkManagementService;->mQuotaLock:Ljava/lang/Object;

    #@5
    monitor-enter v0

    #@6
    .line 2300
    :try_start_0
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/NetworkManagementService;->setFirewallUidRuleLocked(III)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@9
    monitor-exit v0

    #@a
    .line 2297
    return-void

    #@b
    .line 2299
    :catchall_0
    move-exception v1

    #@c
    monitor-exit v0

    #@d
    throw v1
.end method

.method public setFirewallUidRules(I[I[I)V
    .locals 11
    .param p1, "chain"    # I
    .param p2, "uids"    # [I
    .param p3, "rules"    # [I

    #@0
    .prologue
    .line 2251
    invoke-static {}, Lcom/android/server/NetworkManagementService;->enforceSystemUid()V

    #@3
    .line 2252
    iget-object v8, p0, Lcom/android/server/NetworkManagementService;->mQuotaLock:Ljava/lang/Object;

    #@5
    monitor-enter v8

    #@6
    .line 2253
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/NetworkManagementService;->getUidFirewallRules(I)Landroid/util/SparseIntArray;

    #@9
    move-result-object v6

    #@a
    .line 2254
    .local v6, "uidFirewallRules":Landroid/util/SparseIntArray;
    new-instance v2, Landroid/util/SparseIntArray;

    #@c
    invoke-direct {v2}, Landroid/util/SparseIntArray;-><init>()V

    #@f
    .line 2256
    .local v2, "newRules":Landroid/util/SparseIntArray;
    array-length v7, p2

    #@10
    add-int/lit8 v1, v7, -0x1

    #@12
    .local v1, "index":I
    :goto_0
    if-ltz v1, :cond_0

    #@14
    .line 2257
    aget v5, p2, v1

    #@16
    .line 2258
    .local v5, "uid":I
    aget v3, p3, v1

    #@18
    .line 2259
    .local v3, "rule":I
    invoke-direct {p0, p1, v5, v3}, Lcom/android/server/NetworkManagementService;->updateFirewallUidRuleLocked(III)Z

    #@1b
    .line 2260
    invoke-virtual {v2, v5, v3}, Landroid/util/SparseIntArray;->put(II)V

    #@1e
    .line 2256
    add-int/lit8 v1, v1, -0x1

    #@20
    goto :goto_0

    #@21
    .line 2263
    .end local v3    # "rule":I
    .end local v5    # "uid":I
    :cond_0
    new-instance v4, Landroid/util/SparseIntArray;

    #@23
    invoke-direct {v4}, Landroid/util/SparseIntArray;-><init>()V

    #@26
    .line 2264
    .local v4, "rulesToRemove":Landroid/util/SparseIntArray;
    invoke-virtual {v6}, Landroid/util/SparseIntArray;->size()I

    #@29
    move-result v7

    #@2a
    add-int/lit8 v1, v7, -0x1

    #@2c
    :goto_1
    if-ltz v1, :cond_2

    #@2e
    .line 2265
    invoke-virtual {v6, v1}, Landroid/util/SparseIntArray;->keyAt(I)I

    #@31
    move-result v5

    #@32
    .line 2266
    .restart local v5    # "uid":I
    invoke-virtual {v2, v5}, Landroid/util/SparseIntArray;->indexOfKey(I)I

    #@35
    move-result v7

    #@36
    if-gez v7, :cond_1

    #@38
    .line 2267
    const/4 v7, 0x0

    #@39
    invoke-virtual {v4, v5, v7}, Landroid/util/SparseIntArray;->put(II)V

    #@3c
    .line 2264
    :cond_1
    add-int/lit8 v1, v1, -0x1

    #@3e
    goto :goto_1

    #@3f
    .line 2271
    .end local v5    # "uid":I
    :cond_2
    invoke-virtual {v4}, Landroid/util/SparseIntArray;->size()I

    #@42
    move-result v7

    #@43
    add-int/lit8 v1, v7, -0x1

    #@45
    :goto_2
    if-ltz v1, :cond_3

    #@47
    .line 2272
    invoke-virtual {v4, v1}, Landroid/util/SparseIntArray;->keyAt(I)I

    #@4a
    move-result v5

    #@4b
    .line 2273
    .restart local v5    # "uid":I
    const/4 v7, 0x0

    #@4c
    invoke-direct {p0, p1, v5, v7}, Lcom/android/server/NetworkManagementService;->updateFirewallUidRuleLocked(III)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@4f
    .line 2271
    add-int/lit8 v1, v1, -0x1

    #@51
    goto :goto_2

    #@52
    .line 2276
    .end local v5    # "uid":I
    :cond_3
    packed-switch p1, :pswitch_data_0

    #@55
    .line 2288
    :try_start_1
    const-string/jumbo v7, "NetworkManagement"

    #@58
    new-instance v9, Ljava/lang/StringBuilder;

    #@5a
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    #@5d
    const-string/jumbo v10, "setFirewallUidRules() called on invalid chain: "

    #@60
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@63
    move-result-object v9

    #@64
    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@67
    move-result-object v9

    #@68
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@6b
    move-result-object v9

    #@6c
    invoke-static {v7, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@6f
    :goto_3
    monitor-exit v8

    #@70
    .line 2250
    return-void

    #@71
    .line 2278
    :pswitch_0
    :try_start_2
    iget-object v7, p0, Lcom/android/server/NetworkManagementService;->mNetdService:Landroid/net/INetd;

    #@73
    const-string/jumbo v9, "fw_dozable"

    #@76
    const/4 v10, 0x1

    #@77
    invoke-interface {v7, v9, v10, p2}, Landroid/net/INetd;->firewallReplaceUidChain(Ljava/lang/String;Z[I)Z
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@7a
    goto :goto_3

    #@7b
    .line 2290
    :catch_0
    move-exception v0

    #@7c
    .line 2291
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_3
    const-string/jumbo v7, "NetworkManagement"

    #@7f
    new-instance v9, Ljava/lang/StringBuilder;

    #@81
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    #@84
    const-string/jumbo v10, "Error flushing firewall chain "

    #@87
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@8a
    move-result-object v9

    #@8b
    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@8e
    move-result-object v9

    #@8f
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@92
    move-result-object v9

    #@93
    invoke-static {v7, v9, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@96
    goto :goto_3

    #@97
    .line 2252
    .end local v0    # "e":Landroid/os/RemoteException;
    .end local v1    # "index":I
    .end local v2    # "newRules":Landroid/util/SparseIntArray;
    .end local v4    # "rulesToRemove":Landroid/util/SparseIntArray;
    .end local v6    # "uidFirewallRules":Landroid/util/SparseIntArray;
    :catchall_0
    move-exception v7

    #@98
    monitor-exit v8

    #@99
    throw v7

    #@9a
    .line 2281
    .restart local v1    # "index":I
    .restart local v2    # "newRules":Landroid/util/SparseIntArray;
    .restart local v4    # "rulesToRemove":Landroid/util/SparseIntArray;
    .restart local v6    # "uidFirewallRules":Landroid/util/SparseIntArray;
    :pswitch_1
    :try_start_4
    iget-object v7, p0, Lcom/android/server/NetworkManagementService;->mNetdService:Landroid/net/INetd;

    #@9c
    const-string/jumbo v9, "fw_standby"

    #@9f
    const/4 v10, 0x0

    #@a0
    invoke-interface {v7, v9, v10, p2}, Landroid/net/INetd;->firewallReplaceUidChain(Ljava/lang/String;Z[I)Z

    #@a3
    goto :goto_3

    #@a4
    .line 2284
    :pswitch_2
    iget-object v7, p0, Lcom/android/server/NetworkManagementService;->mNetdService:Landroid/net/INetd;

    #@a6
    const-string/jumbo v9, "fw_powersave"

    #@a9
    const/4 v10, 0x1

    #@aa
    invoke-interface {v7, v9, v10, p2}, Landroid/net/INetd;->firewallReplaceUidChain(Ljava/lang/String;Z[I)Z
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    #@ad
    goto :goto_3

    #@ae
    .line 2276
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public setGlobalAlert(J)V
    .locals 7
    .param p1, "alertBytes"    # J

    #@0
    .prologue
    .line 1775
    iget-object v1, p0, Lcom/android/server/NetworkManagementService;->mContext:Landroid/content/Context;

    #@2
    const-string/jumbo v2, "android.permission.CONNECTIVITY_INTERNAL"

    #@5
    const-string/jumbo v3, "NetworkManagement"

    #@8
    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    #@b
    .line 1779
    iget-boolean v1, p0, Lcom/android/server/NetworkManagementService;->mBandwidthControlEnabled:Z

    #@d
    if-nez v1, :cond_0

    #@f
    return-void

    #@10
    .line 1782
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/android/server/NetworkManagementService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    #@12
    const-string/jumbo v2, "bandwidth"

    #@15
    const/4 v3, 0x2

    #@16
    new-array v3, v3, [Ljava/lang/Object;

    #@18
    const-string/jumbo v4, "setglobalalert"

    #@1b
    const/4 v5, 0x0

    #@1c
    aput-object v4, v3, v5

    #@1e
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    #@21
    move-result-object v4

    #@22
    const/4 v5, 0x1

    #@23
    aput-object v4, v3, v5

    #@25
    invoke-virtual {v1, v2, v3}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;
    :try_end_0
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_0 .. :try_end_0} :catch_0

    #@28
    .line 1774
    return-void

    #@29
    .line 1783
    :catch_0
    move-exception v0

    #@2a
    .line 1784
    .local v0, "e":Lcom/android/server/NativeDaemonConnectorException;
    invoke-virtual {v0}, Lcom/android/server/NativeDaemonConnectorException;->rethrowAsParcelableException()Ljava/lang/IllegalArgumentException;

    #@2d
    move-result-object v1

    #@2e
    throw v1
.end method

.method public setInterfaceAlert(Ljava/lang/String;J)V
    .locals 8
    .param p1, "iface"    # Ljava/lang/String;
    .param p2, "alertBytes"    # J

    #@0
    .prologue
    .line 1723
    iget-object v1, p0, Lcom/android/server/NetworkManagementService;->mContext:Landroid/content/Context;

    #@2
    const-string/jumbo v2, "android.permission.CONNECTIVITY_INTERNAL"

    #@5
    const-string/jumbo v3, "NetworkManagement"

    #@8
    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    #@b
    .line 1727
    iget-boolean v1, p0, Lcom/android/server/NetworkManagementService;->mBandwidthControlEnabled:Z

    #@d
    if-nez v1, :cond_0

    #@f
    return-void

    #@10
    .line 1730
    :cond_0
    iget-object v1, p0, Lcom/android/server/NetworkManagementService;->mActiveQuotas:Ljava/util/HashMap;

    #@12
    invoke-virtual {v1, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    #@15
    move-result v1

    #@16
    if-nez v1, :cond_1

    #@18
    .line 1731
    new-instance v1, Ljava/lang/IllegalStateException;

    #@1a
    const-string/jumbo v2, "setting alert requires existing quota on iface"

    #@1d
    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@20
    throw v1

    #@21
    .line 1734
    :cond_1
    iget-object v2, p0, Lcom/android/server/NetworkManagementService;->mQuotaLock:Ljava/lang/Object;

    #@23
    monitor-enter v2

    #@24
    .line 1735
    :try_start_0
    iget-object v1, p0, Lcom/android/server/NetworkManagementService;->mActiveAlerts:Ljava/util/HashMap;

    #@26
    invoke-virtual {v1, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    #@29
    move-result v1

    #@2a
    if-eqz v1, :cond_2

    #@2c
    .line 1736
    new-instance v1, Ljava/lang/IllegalStateException;

    #@2e
    new-instance v3, Ljava/lang/StringBuilder;

    #@30
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@33
    const-string/jumbo v4, "iface "

    #@36
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@39
    move-result-object v3

    #@3a
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3d
    move-result-object v3

    #@3e
    const-string/jumbo v4, " already has alert"

    #@41
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@44
    move-result-object v3

    #@45
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@48
    move-result-object v3

    #@49
    invoke-direct {v1, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@4c
    throw v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@4d
    .line 1734
    :catchall_0
    move-exception v1

    #@4e
    monitor-exit v2

    #@4f
    throw v1

    #@50
    .line 1741
    :cond_2
    :try_start_1
    iget-object v1, p0, Lcom/android/server/NetworkManagementService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    #@52
    const-string/jumbo v3, "bandwidth"

    #@55
    const/4 v4, 0x3

    #@56
    new-array v4, v4, [Ljava/lang/Object;

    #@58
    const-string/jumbo v5, "setinterfacealert"

    #@5b
    const/4 v6, 0x0

    #@5c
    aput-object v5, v4, v6

    #@5e
    const/4 v5, 0x1

    #@5f
    aput-object p1, v4, v5

    #@61
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    #@64
    move-result-object v5

    #@65
    const/4 v6, 0x2

    #@66
    aput-object v5, v4, v6

    #@68
    invoke-virtual {v1, v3, v4}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;

    #@6b
    .line 1742
    iget-object v1, p0, Lcom/android/server/NetworkManagementService;->mActiveAlerts:Ljava/util/HashMap;

    #@6d
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    #@70
    move-result-object v3

    #@71
    invoke-virtual {v1, p1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@74
    monitor-exit v2

    #@75
    .line 1722
    return-void

    #@76
    .line 1743
    :catch_0
    move-exception v0

    #@77
    .line 1744
    .local v0, "e":Lcom/android/server/NativeDaemonConnectorException;
    :try_start_2
    invoke-virtual {v0}, Lcom/android/server/NativeDaemonConnectorException;->rethrowAsParcelableException()Ljava/lang/IllegalArgumentException;

    #@7a
    move-result-object v1

    #@7b
    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
.end method

.method public setInterfaceConfig(Ljava/lang/String;Landroid/net/InterfaceConfiguration;)V
    .locals 9
    .param p1, "iface"    # Ljava/lang/String;
    .param p2, "cfg"    # Landroid/net/InterfaceConfiguration;

    #@0
    .prologue
    .line 1032
    iget-object v5, p0, Lcom/android/server/NetworkManagementService;->mContext:Landroid/content/Context;

    #@2
    const-string/jumbo v6, "android.permission.CONNECTIVITY_INTERNAL"

    #@5
    const-string/jumbo v7, "NetworkManagement"

    #@8
    invoke-virtual {v5, v6, v7}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    #@b
    .line 1033
    invoke-virtual {p2}, Landroid/net/InterfaceConfiguration;->getLinkAddress()Landroid/net/LinkAddress;

    #@e
    move-result-object v4

    #@f
    .line 1034
    .local v4, "linkAddr":Landroid/net/LinkAddress;
    if-eqz v4, :cond_0

    #@11
    invoke-virtual {v4}, Landroid/net/LinkAddress;->getAddress()Ljava/net/InetAddress;

    #@14
    move-result-object v5

    #@15
    if-nez v5, :cond_1

    #@17
    .line 1035
    :cond_0
    new-instance v5, Ljava/lang/IllegalStateException;

    #@19
    const-string/jumbo v6, "Null LinkAddress given"

    #@1c
    invoke-direct {v5, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@1f
    throw v5

    #@20
    .line 1038
    :cond_1
    new-instance v0, Lcom/android/server/NativeDaemonConnector$Command;

    #@22
    const-string/jumbo v5, "interface"

    #@25
    const/4 v6, 0x4

    #@26
    new-array v6, v6, [Ljava/lang/Object;

    #@28
    const-string/jumbo v7, "setcfg"

    #@2b
    const/4 v8, 0x0

    #@2c
    aput-object v7, v6, v8

    #@2e
    const/4 v7, 0x1

    #@2f
    aput-object p1, v6, v7

    #@31
    .line 1039
    invoke-virtual {v4}, Landroid/net/LinkAddress;->getAddress()Ljava/net/InetAddress;

    #@34
    move-result-object v7

    #@35
    invoke-virtual {v7}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    #@38
    move-result-object v7

    #@39
    const/4 v8, 0x2

    #@3a
    aput-object v7, v6, v8

    #@3c
    .line 1040
    invoke-virtual {v4}, Landroid/net/LinkAddress;->getPrefixLength()I

    #@3f
    move-result v7

    #@40
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@43
    move-result-object v7

    #@44
    const/4 v8, 0x3

    #@45
    aput-object v7, v6, v8

    #@47
    .line 1038
    invoke-direct {v0, v5, v6}, Lcom/android/server/NativeDaemonConnector$Command;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    #@4a
    .line 1041
    .local v0, "cmd":Lcom/android/server/NativeDaemonConnector$Command;
    invoke-virtual {p2}, Landroid/net/InterfaceConfiguration;->getFlags()Ljava/lang/Iterable;

    #@4d
    move-result-object v5

    #@4e
    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@51
    move-result-object v3

    #@52
    .local v3, "flag$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    #@55
    move-result v5

    #@56
    if-eqz v5, :cond_2

    #@58
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@5b
    move-result-object v2

    #@5c
    check-cast v2, Ljava/lang/String;

    #@5e
    .line 1042
    .local v2, "flag":Ljava/lang/String;
    invoke-virtual {v0, v2}, Lcom/android/server/NativeDaemonConnector$Command;->appendArg(Ljava/lang/Object;)Lcom/android/server/NativeDaemonConnector$Command;

    #@61
    goto :goto_0

    #@62
    .line 1046
    .end local v2    # "flag":Ljava/lang/String;
    :cond_2
    :try_start_0
    iget-object v5, p0, Lcom/android/server/NetworkManagementService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    #@64
    invoke-virtual {v5, v0}, Lcom/android/server/NativeDaemonConnector;->execute(Lcom/android/server/NativeDaemonConnector$Command;)Lcom/android/server/NativeDaemonEvent;
    :try_end_0
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_0 .. :try_end_0} :catch_0

    #@67
    .line 1031
    return-void

    #@68
    .line 1047
    :catch_0
    move-exception v1

    #@69
    .line 1048
    .local v1, "e":Lcom/android/server/NativeDaemonConnectorException;
    invoke-virtual {v1}, Lcom/android/server/NativeDaemonConnectorException;->rethrowAsParcelableException()Ljava/lang/IllegalArgumentException;

    #@6c
    move-result-object v5

    #@6d
    throw v5
.end method

.method public setInterfaceDown(Ljava/lang/String;)V
    .locals 4
    .param p1, "iface"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1054
    iget-object v1, p0, Lcom/android/server/NetworkManagementService;->mContext:Landroid/content/Context;

    #@2
    const-string/jumbo v2, "android.permission.CONNECTIVITY_INTERNAL"

    #@5
    const-string/jumbo v3, "NetworkManagement"

    #@8
    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    #@b
    .line 1055
    invoke-virtual {p0, p1}, Lcom/android/server/NetworkManagementService;->getInterfaceConfig(Ljava/lang/String;)Landroid/net/InterfaceConfiguration;

    #@e
    move-result-object v0

    #@f
    .line 1056
    .local v0, "ifcg":Landroid/net/InterfaceConfiguration;
    invoke-virtual {v0}, Landroid/net/InterfaceConfiguration;->setInterfaceDown()V

    #@12
    .line 1057
    invoke-virtual {p0, p1, v0}, Lcom/android/server/NetworkManagementService;->setInterfaceConfig(Ljava/lang/String;Landroid/net/InterfaceConfiguration;)V

    #@15
    .line 1053
    return-void
.end method

.method public setInterfaceIpv6NdOffload(Ljava/lang/String;Z)V
    .locals 6
    .param p1, "iface"    # Ljava/lang/String;
    .param p2, "enable"    # Z

    #@0
    .prologue
    .line 1113
    iget-object v1, p0, Lcom/android/server/NetworkManagementService;->mContext:Landroid/content/Context;

    #@2
    const-string/jumbo v2, "android.permission.CONNECTIVITY_INTERNAL"

    #@5
    const-string/jumbo v3, "NetworkManagement"

    #@8
    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    #@b
    .line 1115
    :try_start_0
    iget-object v2, p0, Lcom/android/server/NetworkManagementService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    #@d
    .line 1116
    const-string/jumbo v3, "interface"

    #@10
    .line 1115
    const/4 v1, 0x3

    #@11
    new-array v4, v1, [Ljava/lang/Object;

    #@13
    .line 1116
    const-string/jumbo v1, "ipv6ndoffload"

    #@16
    const/4 v5, 0x0

    #@17
    aput-object v1, v4, v5

    #@19
    const/4 v1, 0x1

    #@1a
    aput-object p1, v4, v1

    #@1c
    if-eqz p2, :cond_0

    #@1e
    const-string/jumbo v1, "enable"

    #@21
    :goto_0
    const/4 v5, 0x2

    #@22
    aput-object v1, v4, v5

    #@24
    .line 1115
    invoke-virtual {v2, v3, v4}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;

    #@27
    .line 1112
    return-void

    #@28
    .line 1116
    :cond_0
    const-string/jumbo v1, "disable"
    :try_end_0
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_0 .. :try_end_0} :catch_0

    #@2b
    goto :goto_0

    #@2c
    .line 1117
    :catch_0
    move-exception v0

    #@2d
    .line 1118
    .local v0, "e":Lcom/android/server/NativeDaemonConnectorException;
    invoke-virtual {v0}, Lcom/android/server/NativeDaemonConnectorException;->rethrowAsParcelableException()Ljava/lang/IllegalArgumentException;

    #@30
    move-result-object v1

    #@31
    throw v1
.end method

.method public setInterfaceIpv6PrivacyExtensions(Ljava/lang/String;Z)V
    .locals 6
    .param p1, "iface"    # Ljava/lang/String;
    .param p2, "enable"    # Z

    #@0
    .prologue
    .line 1070
    iget-object v1, p0, Lcom/android/server/NetworkManagementService;->mContext:Landroid/content/Context;

    #@2
    const-string/jumbo v2, "android.permission.CONNECTIVITY_INTERNAL"

    #@5
    const-string/jumbo v3, "NetworkManagement"

    #@8
    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    #@b
    .line 1072
    :try_start_0
    iget-object v2, p0, Lcom/android/server/NetworkManagementService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    #@d
    .line 1073
    const-string/jumbo v3, "interface"

    #@10
    .line 1072
    const/4 v1, 0x3

    #@11
    new-array v4, v1, [Ljava/lang/Object;

    #@13
    .line 1073
    const-string/jumbo v1, "ipv6privacyextensions"

    #@16
    const/4 v5, 0x0

    #@17
    aput-object v1, v4, v5

    #@19
    const/4 v1, 0x1

    #@1a
    aput-object p1, v4, v1

    #@1c
    if-eqz p2, :cond_0

    #@1e
    const-string/jumbo v1, "enable"

    #@21
    :goto_0
    const/4 v5, 0x2

    #@22
    aput-object v1, v4, v5

    #@24
    .line 1072
    invoke-virtual {v2, v3, v4}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;

    #@27
    .line 1069
    return-void

    #@28
    .line 1073
    :cond_0
    const-string/jumbo v1, "disable"
    :try_end_0
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_0 .. :try_end_0} :catch_0

    #@2b
    goto :goto_0

    #@2c
    .line 1074
    :catch_0
    move-exception v0

    #@2d
    .line 1075
    .local v0, "e":Lcom/android/server/NativeDaemonConnectorException;
    invoke-virtual {v0}, Lcom/android/server/NativeDaemonConnectorException;->rethrowAsParcelableException()Ljava/lang/IllegalArgumentException;

    #@30
    move-result-object v1

    #@31
    throw v1
.end method

.method public setInterfaceQuota(Ljava/lang/String;J)V
    .locals 8
    .param p1, "iface"    # Ljava/lang/String;
    .param p2, "quotaBytes"    # J

    #@0
    .prologue
    .line 1674
    iget-object v1, p0, Lcom/android/server/NetworkManagementService;->mContext:Landroid/content/Context;

    #@2
    const-string/jumbo v2, "android.permission.CONNECTIVITY_INTERNAL"

    #@5
    const-string/jumbo v3, "NetworkManagement"

    #@8
    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    #@b
    .line 1678
    iget-boolean v1, p0, Lcom/android/server/NetworkManagementService;->mBandwidthControlEnabled:Z

    #@d
    if-nez v1, :cond_0

    #@f
    return-void

    #@10
    .line 1680
    :cond_0
    iget-object v2, p0, Lcom/android/server/NetworkManagementService;->mQuotaLock:Ljava/lang/Object;

    #@12
    monitor-enter v2

    #@13
    .line 1681
    :try_start_0
    iget-object v1, p0, Lcom/android/server/NetworkManagementService;->mActiveQuotas:Ljava/util/HashMap;

    #@15
    invoke-virtual {v1, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    #@18
    move-result v1

    #@19
    if-eqz v1, :cond_1

    #@1b
    .line 1682
    new-instance v1, Ljava/lang/IllegalStateException;

    #@1d
    new-instance v3, Ljava/lang/StringBuilder;

    #@1f
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@22
    const-string/jumbo v4, "iface "

    #@25
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@28
    move-result-object v3

    #@29
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2c
    move-result-object v3

    #@2d
    const-string/jumbo v4, " already has quota"

    #@30
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@33
    move-result-object v3

    #@34
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@37
    move-result-object v3

    #@38
    invoke-direct {v1, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@3b
    throw v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@3c
    .line 1680
    :catchall_0
    move-exception v1

    #@3d
    monitor-exit v2

    #@3e
    throw v1

    #@3f
    .line 1687
    :cond_1
    :try_start_1
    iget-object v1, p0, Lcom/android/server/NetworkManagementService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    #@41
    const-string/jumbo v3, "bandwidth"

    #@44
    const/4 v4, 0x3

    #@45
    new-array v4, v4, [Ljava/lang/Object;

    #@47
    const-string/jumbo v5, "setiquota"

    #@4a
    const/4 v6, 0x0

    #@4b
    aput-object v5, v4, v6

    #@4d
    const/4 v5, 0x1

    #@4e
    aput-object p1, v4, v5

    #@50
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    #@53
    move-result-object v5

    #@54
    const/4 v6, 0x2

    #@55
    aput-object v5, v4, v6

    #@57
    invoke-virtual {v1, v3, v4}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;

    #@5a
    .line 1688
    iget-object v1, p0, Lcom/android/server/NetworkManagementService;->mActiveQuotas:Ljava/util/HashMap;

    #@5c
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    #@5f
    move-result-object v3

    #@60
    invoke-virtual {v1, p1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@63
    monitor-exit v2

    #@64
    .line 1673
    return-void

    #@65
    .line 1689
    :catch_0
    move-exception v0

    #@66
    .line 1690
    .local v0, "e":Lcom/android/server/NativeDaemonConnectorException;
    :try_start_2
    invoke-virtual {v0}, Lcom/android/server/NativeDaemonConnectorException;->rethrowAsParcelableException()Ljava/lang/IllegalArgumentException;

    #@69
    move-result-object v1

    #@6a
    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
.end method

.method public setInterfaceUp(Ljava/lang/String;)V
    .locals 4
    .param p1, "iface"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1062
    iget-object v1, p0, Lcom/android/server/NetworkManagementService;->mContext:Landroid/content/Context;

    #@2
    const-string/jumbo v2, "android.permission.CONNECTIVITY_INTERNAL"

    #@5
    const-string/jumbo v3, "NetworkManagement"

    #@8
    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    #@b
    .line 1063
    invoke-virtual {p0, p1}, Lcom/android/server/NetworkManagementService;->getInterfaceConfig(Ljava/lang/String;)Landroid/net/InterfaceConfiguration;

    #@e
    move-result-object v0

    #@f
    .line 1064
    .local v0, "ifcg":Landroid/net/InterfaceConfiguration;
    invoke-virtual {v0}, Landroid/net/InterfaceConfiguration;->setInterfaceUp()V

    #@12
    .line 1065
    invoke-virtual {p0, p1, v0}, Lcom/android/server/NetworkManagementService;->setInterfaceConfig(Ljava/lang/String;Landroid/net/InterfaceConfiguration;)V

    #@15
    .line 1061
    return-void
.end method

.method public setIpForwardingEnabled(Z)V
    .locals 6
    .param p1, "enable"    # Z

    #@0
    .prologue
    .line 1228
    iget-object v1, p0, Lcom/android/server/NetworkManagementService;->mContext:Landroid/content/Context;

    #@2
    const-string/jumbo v2, "android.permission.CONNECTIVITY_INTERNAL"

    #@5
    const-string/jumbo v3, "NetworkManagement"

    #@8
    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    #@b
    .line 1230
    :try_start_0
    iget-object v2, p0, Lcom/android/server/NetworkManagementService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    #@d
    const-string/jumbo v3, "ipfwd"

    #@10
    const/4 v1, 0x2

    #@11
    new-array v4, v1, [Ljava/lang/Object;

    #@13
    if-eqz p1, :cond_0

    #@15
    const-string/jumbo v1, "enable"

    #@18
    :goto_0
    const/4 v5, 0x0

    #@19
    aput-object v1, v4, v5

    #@1b
    const-string/jumbo v1, "tethering"

    #@1e
    const/4 v5, 0x1

    #@1f
    aput-object v1, v4, v5

    #@21
    invoke-virtual {v2, v3, v4}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;

    #@24
    .line 1227
    return-void

    #@25
    .line 1230
    :cond_0
    const-string/jumbo v1, "disable"
    :try_end_0
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_0 .. :try_end_0} :catch_0

    #@28
    goto :goto_0

    #@29
    .line 1231
    :catch_0
    move-exception v0

    #@2a
    .line 1232
    .local v0, "e":Lcom/android/server/NativeDaemonConnectorException;
    invoke-virtual {v0}, Lcom/android/server/NativeDaemonConnectorException;->rethrowAsParcelableException()Ljava/lang/IllegalArgumentException;

    #@2d
    move-result-object v1

    #@2e
    throw v1
.end method

.method public setMtu(Ljava/lang/String;I)V
    .locals 7
    .param p1, "iface"    # Ljava/lang/String;
    .param p2, "mtu"    # I

    #@0
    .prologue
    .line 1192
    iget-object v2, p0, Lcom/android/server/NetworkManagementService;->mContext:Landroid/content/Context;

    #@2
    const-string/jumbo v3, "android.permission.CONNECTIVITY_INTERNAL"

    #@5
    const-string/jumbo v4, "NetworkManagement"

    #@8
    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    #@b
    .line 1196
    :try_start_0
    iget-object v2, p0, Lcom/android/server/NetworkManagementService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    #@d
    const-string/jumbo v3, "interface"

    #@10
    const/4 v4, 0x3

    #@11
    new-array v4, v4, [Ljava/lang/Object;

    #@13
    const-string/jumbo v5, "setmtu"

    #@16
    const/4 v6, 0x0

    #@17
    aput-object v5, v4, v6

    #@19
    const/4 v5, 0x1

    #@1a
    aput-object p1, v4, v5

    #@1c
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@1f
    move-result-object v5

    #@20
    const/4 v6, 0x2

    #@21
    aput-object v5, v4, v6

    #@23
    invoke-virtual {v2, v3, v4}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;
    :try_end_0
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_0 .. :try_end_0} :catch_0

    #@26
    move-result-object v1

    #@27
    .line 1191
    .local v1, "event":Lcom/android/server/NativeDaemonEvent;
    return-void

    #@28
    .line 1197
    .end local v1    # "event":Lcom/android/server/NativeDaemonEvent;
    :catch_0
    move-exception v0

    #@29
    .line 1198
    .local v0, "e":Lcom/android/server/NativeDaemonConnectorException;
    invoke-virtual {v0}, Lcom/android/server/NativeDaemonConnectorException;->rethrowAsParcelableException()Ljava/lang/IllegalArgumentException;

    #@2c
    move-result-object v2

    #@2d
    throw v2
.end method

.method public setNetworkPermission(ILjava/lang/String;)V
    .locals 6
    .param p1, "netId"    # I
    .param p2, "permission"    # Ljava/lang/String;

    #@0
    .prologue
    .line 2668
    iget-object v1, p0, Lcom/android/server/NetworkManagementService;->mContext:Landroid/content/Context;

    #@2
    const-string/jumbo v2, "android.permission.CONNECTIVITY_INTERNAL"

    #@5
    const-string/jumbo v3, "NetworkManagement"

    #@8
    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    #@b
    .line 2671
    if-eqz p2, :cond_0

    #@d
    .line 2672
    :try_start_0
    iget-object v1, p0, Lcom/android/server/NetworkManagementService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    #@f
    const-string/jumbo v2, "network"

    #@12
    const/4 v3, 0x5

    #@13
    new-array v3, v3, [Ljava/lang/Object;

    #@15
    const-string/jumbo v4, "permission"

    #@18
    const/4 v5, 0x0

    #@19
    aput-object v4, v3, v5

    #@1b
    const-string/jumbo v4, "network"

    #@1e
    const/4 v5, 0x1

    #@1f
    aput-object v4, v3, v5

    #@21
    const-string/jumbo v4, "set"

    #@24
    const/4 v5, 0x2

    #@25
    aput-object v4, v3, v5

    #@27
    const/4 v4, 0x3

    #@28
    aput-object p2, v3, v4

    #@2a
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@2d
    move-result-object v4

    #@2e
    const/4 v5, 0x4

    #@2f
    aput-object v4, v3, v5

    #@31
    invoke-virtual {v1, v2, v3}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;

    #@34
    .line 2667
    :goto_0
    return-void

    #@35
    .line 2674
    :cond_0
    iget-object v1, p0, Lcom/android/server/NetworkManagementService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    #@37
    const-string/jumbo v2, "network"

    #@3a
    const/4 v3, 0x4

    #@3b
    new-array v3, v3, [Ljava/lang/Object;

    #@3d
    const-string/jumbo v4, "permission"

    #@40
    const/4 v5, 0x0

    #@41
    aput-object v4, v3, v5

    #@43
    const-string/jumbo v4, "network"

    #@46
    const/4 v5, 0x1

    #@47
    aput-object v4, v3, v5

    #@49
    const-string/jumbo v4, "clear"

    #@4c
    const/4 v5, 0x2

    #@4d
    aput-object v4, v3, v5

    #@4f
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@52
    move-result-object v4

    #@53
    const/4 v5, 0x3

    #@54
    aput-object v4, v3, v5

    #@56
    invoke-virtual {v1, v2, v3}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;
    :try_end_0
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_0 .. :try_end_0} :catch_0

    #@59
    goto :goto_0

    #@5a
    .line 2676
    :catch_0
    move-exception v0

    #@5b
    .line 2677
    .local v0, "e":Lcom/android/server/NativeDaemonConnectorException;
    invoke-virtual {v0}, Lcom/android/server/NativeDaemonConnectorException;->rethrowAsParcelableException()Ljava/lang/IllegalArgumentException;

    #@5e
    move-result-object v1

    #@5f
    throw v1
.end method

.method public setPermission(Ljava/lang/String;[I)V
    .locals 8
    .param p1, "permission"    # Ljava/lang/String;
    .param p2, "uids"    # [I

    #@0
    .prologue
    .line 2684
    iget-object v5, p0, Lcom/android/server/NetworkManagementService;->mContext:Landroid/content/Context;

    #@2
    const-string/jumbo v6, "android.permission.CONNECTIVITY_INTERNAL"

    #@5
    const-string/jumbo v7, "NetworkManagement"

    #@8
    invoke-virtual {v5, v6, v7}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    #@b
    .line 2686
    const/16 v5, 0xe

    #@d
    new-array v2, v5, [Ljava/lang/Object;

    #@f
    .line 2687
    .local v2, "argv":[Ljava/lang/Object;
    const-string/jumbo v5, "permission"

    #@12
    const/4 v6, 0x0

    #@13
    aput-object v5, v2, v6

    #@15
    .line 2688
    const-string/jumbo v5, "user"

    #@18
    const/4 v6, 0x1

    #@19
    aput-object v5, v2, v6

    #@1b
    .line 2689
    const-string/jumbo v5, "set"

    #@1e
    const/4 v6, 0x2

    #@1f
    aput-object v5, v2, v6

    #@21
    .line 2690
    const/4 v5, 0x3

    #@22
    aput-object p1, v2, v5

    #@24
    .line 2691
    const/4 v0, 0x4

    #@25
    .line 2693
    .local v0, "argc":I
    const/4 v4, 0x0

    #@26
    .local v4, "i":I
    :goto_0
    array-length v5, p2

    #@27
    if-ge v4, v5, :cond_2

    #@29
    .line 2694
    add-int/lit8 v1, v0, 0x1

    #@2b
    .end local v0    # "argc":I
    .local v1, "argc":I
    aget v5, p2, v4

    #@2d
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@30
    move-result-object v5

    #@31
    aput-object v5, v2, v0

    #@33
    .line 2695
    array-length v5, p2

    #@34
    add-int/lit8 v5, v5, -0x1

    #@36
    if-eq v4, v5, :cond_0

    #@38
    array-length v5, v2

    #@39
    if-ne v1, v5, :cond_1

    #@3b
    .line 2697
    :cond_0
    :try_start_0
    iget-object v5, p0, Lcom/android/server/NetworkManagementService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    #@3d
    const-string/jumbo v6, "network"

    #@40
    invoke-static {v2, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    #@43
    move-result-object v7

    #@44
    invoke-virtual {v5, v6, v7}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;
    :try_end_0
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_0 .. :try_end_0} :catch_0

    #@47
    .line 2701
    const/4 v0, 0x4

    #@48
    .line 2693
    .end local v1    # "argc":I
    .restart local v0    # "argc":I
    :goto_1
    add-int/lit8 v4, v4, 0x1

    #@4a
    goto :goto_0

    #@4b
    .end local v0    # "argc":I
    .restart local v1    # "argc":I
    :cond_1
    move v0, v1

    #@4c
    .line 2695
    .end local v1    # "argc":I
    .restart local v0    # "argc":I
    goto :goto_1

    #@4d
    .line 2698
    .end local v0    # "argc":I
    .restart local v1    # "argc":I
    :catch_0
    move-exception v3

    #@4e
    .line 2699
    .local v3, "e":Lcom/android/server/NativeDaemonConnectorException;
    invoke-virtual {v3}, Lcom/android/server/NativeDaemonConnectorException;->rethrowAsParcelableException()Ljava/lang/IllegalArgumentException;

    #@51
    move-result-object v5

    #@52
    throw v5

    #@53
    .line 2683
    .end local v1    # "argc":I
    .end local v3    # "e":Lcom/android/server/NativeDaemonConnectorException;
    .restart local v0    # "argc":I
    :cond_2
    return-void
.end method

.method public setUidCleartextNetworkPolicy(II)V
    .locals 9
    .param p1, "uid"    # I
    .param p2, "policy"    # I

    #@0
    .prologue
    .line 1870
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    #@3
    move-result v3

    #@4
    if-eq v3, p1, :cond_0

    #@6
    .line 1871
    iget-object v3, p0, Lcom/android/server/NetworkManagementService;->mContext:Landroid/content/Context;

    #@8
    const-string/jumbo v4, "android.permission.CONNECTIVITY_INTERNAL"

    #@b
    const-string/jumbo v5, "NetworkManagement"

    #@e
    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    #@11
    .line 1874
    :cond_0
    iget-object v4, p0, Lcom/android/server/NetworkManagementService;->mQuotaLock:Ljava/lang/Object;

    #@13
    monitor-enter v4

    #@14
    .line 1875
    :try_start_0
    iget-object v3, p0, Lcom/android/server/NetworkManagementService;->mUidCleartextPolicy:Landroid/util/SparseIntArray;

    #@16
    const/4 v5, 0x0

    #@17
    invoke-virtual {v3, p1, v5}, Landroid/util/SparseIntArray;->get(II)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1a
    move-result v1

    #@1b
    .line 1876
    .local v1, "oldPolicy":I
    if-ne v1, p2, :cond_1

    #@1d
    monitor-exit v4

    #@1e
    .line 1877
    return-void

    #@1f
    .line 1880
    :cond_1
    :try_start_1
    iget-boolean v3, p0, Lcom/android/server/NetworkManagementService;->mStrictEnabled:Z

    #@21
    if-nez v3, :cond_2

    #@23
    .line 1883
    iget-object v3, p0, Lcom/android/server/NetworkManagementService;->mUidCleartextPolicy:Landroid/util/SparseIntArray;

    #@25
    invoke-virtual {v3, p1, p2}, Landroid/util/SparseIntArray;->put(II)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@28
    monitor-exit v4

    #@29
    .line 1884
    return-void

    #@2a
    .line 1888
    :cond_2
    packed-switch p2, :pswitch_data_0

    #@2d
    .line 1899
    :try_start_2
    new-instance v3, Ljava/lang/IllegalArgumentException;

    #@2f
    new-instance v5, Ljava/lang/StringBuilder;

    #@31
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@34
    const-string/jumbo v6, "Unknown policy "

    #@37
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3a
    move-result-object v5

    #@3b
    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@3e
    move-result-object v5

    #@3f
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@42
    move-result-object v5

    #@43
    invoke-direct {v3, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@46
    throw v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@47
    .line 1874
    .end local v1    # "oldPolicy":I
    :catchall_0
    move-exception v3

    #@48
    monitor-exit v4

    #@49
    throw v3

    #@4a
    .line 1890
    .restart local v1    # "oldPolicy":I
    :pswitch_0
    :try_start_3
    const-string/jumbo v2, "accept"
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@4d
    .line 1903
    .local v2, "policyString":Ljava/lang/String;
    :goto_0
    :try_start_4
    iget-object v3, p0, Lcom/android/server/NetworkManagementService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    #@4f
    const-string/jumbo v5, "strict"

    #@52
    const/4 v6, 0x3

    #@53
    new-array v6, v6, [Ljava/lang/Object;

    #@55
    const-string/jumbo v7, "set_uid_cleartext_policy"

    #@58
    const/4 v8, 0x0

    #@59
    aput-object v7, v6, v8

    #@5b
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@5e
    move-result-object v7

    #@5f
    const/4 v8, 0x1

    #@60
    aput-object v7, v6, v8

    #@62
    const/4 v7, 0x2

    #@63
    aput-object v2, v6, v7

    #@65
    invoke-virtual {v3, v5, v6}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;

    #@68
    .line 1904
    iget-object v3, p0, Lcom/android/server/NetworkManagementService;->mUidCleartextPolicy:Landroid/util/SparseIntArray;

    #@6a
    invoke-virtual {v3, p1, p2}, Landroid/util/SparseIntArray;->put(II)V
    :try_end_4
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    #@6d
    monitor-exit v4

    #@6e
    .line 1869
    return-void

    #@6f
    .line 1893
    .end local v2    # "policyString":Ljava/lang/String;
    :pswitch_1
    :try_start_5
    const-string/jumbo v2, "log"

    #@72
    .restart local v2    # "policyString":Ljava/lang/String;
    goto :goto_0

    #@73
    .line 1896
    .end local v2    # "policyString":Ljava/lang/String;
    :pswitch_2
    const-string/jumbo v2, "reject"

    #@76
    .restart local v2    # "policyString":Ljava/lang/String;
    goto :goto_0

    #@77
    .line 1905
    :catch_0
    move-exception v0

    #@78
    .line 1906
    .local v0, "e":Lcom/android/server/NativeDaemonConnectorException;
    invoke-virtual {v0}, Lcom/android/server/NativeDaemonConnectorException;->rethrowAsParcelableException()Ljava/lang/IllegalArgumentException;

    #@7b
    move-result-object v3

    #@7c
    throw v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    #@7d
    .line 1888
    nop

    #@7e
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public setUidMeteredNetworkBlacklist(IZ)V
    .locals 2
    .param p1, "uid"    # I
    .param p2, "enable"    # Z

    #@0
    .prologue
    .line 1821
    iget-object v0, p0, Lcom/android/server/NetworkManagementService;->mUidRejectOnMetered:Landroid/util/SparseBooleanArray;

    #@2
    const/4 v1, 0x1

    #@3
    invoke-direct {p0, v0, p1, v1, p2}, Lcom/android/server/NetworkManagementService;->setUidOnMeteredNetworkList(Landroid/util/SparseBooleanArray;IZZ)V

    #@6
    .line 1820
    return-void
.end method

.method public setUidMeteredNetworkWhitelist(IZ)V
    .locals 2
    .param p1, "uid"    # I
    .param p2, "enable"    # Z

    #@0
    .prologue
    .line 1826
    iget-object v0, p0, Lcom/android/server/NetworkManagementService;->mUidAllowOnMetered:Landroid/util/SparseBooleanArray;

    #@2
    const/4 v1, 0x0

    #@3
    invoke-direct {p0, v0, p1, v1, p2}, Lcom/android/server/NetworkManagementService;->setUidOnMeteredNetworkList(Landroid/util/SparseBooleanArray;IZZ)V

    #@6
    .line 1825
    return-void
.end method

.method public shutdown()V
    .locals 3

    #@0
    .prologue
    .line 1205
    iget-object v0, p0, Lcom/android/server/NetworkManagementService;->mContext:Landroid/content/Context;

    #@2
    const-string/jumbo v1, "android.permission.SHUTDOWN"

    #@5
    const-string/jumbo v2, "NetworkManagement"

    #@8
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    #@b
    .line 1207
    const-string/jumbo v0, "NetworkManagement"

    #@e
    const-string/jumbo v1, "Shutting down"

    #@11
    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@14
    .line 1203
    return-void
.end method

.method public startAccessPoint(Landroid/net/wifi/WifiConfiguration;Ljava/lang/String;)V
    .locals 7
    .param p1, "wifiConfig"    # Landroid/net/wifi/WifiConfiguration;
    .param p2, "wlanIface"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1485
    iget-object v0, p0, Lcom/android/server/NetworkManagementService;->mContext:Landroid/content/Context;

    #@2
    const-string/jumbo v1, "android.permission.CONNECTIVITY_INTERNAL"

    #@5
    const-string/jumbo v3, "NetworkManagement"

    #@8
    invoke-virtual {v0, v1, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    #@b
    .line 1487
    const-string/jumbo v5, "startAccessPoint Error setting up softap"

    #@e
    .line 1489
    .local v5, "logMsg":Ljava/lang/String;
    if-nez p1, :cond_0

    #@10
    .line 1490
    const/4 v0, 0x2

    #@11
    :try_start_0
    new-array v2, v0, [Ljava/lang/Object;

    #@13
    const-string/jumbo v0, "set"

    #@16
    const/4 v1, 0x0

    #@17
    aput-object v0, v2, v1

    #@19
    const/4 v0, 0x1

    #@1a
    aput-object p2, v2, v0

    #@1c
    .line 1496
    .local v2, "args":[Ljava/lang/Object;
    :goto_0
    const-string/jumbo v1, "softap"

    #@1f
    .line 1497
    const-string/jumbo v4, "Ok"

    #@22
    .line 1496
    const/16 v3, 0xd6

    #@24
    move-object v0, p0

    #@25
    invoke-direct/range {v0 .. v5}, Lcom/android/server/NetworkManagementService;->executeOrLogWithMessage(Ljava/lang/String;[Ljava/lang/Object;ILjava/lang/String;Ljava/lang/String;)V

    #@28
    .line 1499
    const-string/jumbo v5, "startAccessPoint Error starting softap"

    #@2b
    .line 1500
    const/4 v0, 0x1

    #@2c
    new-array v2, v0, [Ljava/lang/Object;

    #@2e
    .end local v2    # "args":[Ljava/lang/Object;
    const-string/jumbo v0, "startap"

    #@31
    const/4 v1, 0x0

    #@32
    aput-object v0, v2, v1

    #@34
    .line 1501
    .restart local v2    # "args":[Ljava/lang/Object;
    const-string/jumbo v1, "softap"

    #@37
    .line 1502
    const-string/jumbo v4, "Ok"

    #@3a
    .line 1501
    const/16 v3, 0xd6

    #@3c
    move-object v0, p0

    #@3d
    invoke-direct/range {v0 .. v5}, Lcom/android/server/NetworkManagementService;->executeOrLogWithMessage(Ljava/lang/String;[Ljava/lang/Object;ILjava/lang/String;Ljava/lang/String;)V

    #@40
    .line 1484
    return-void

    #@41
    .line 1492
    .end local v2    # "args":[Ljava/lang/Object;
    :cond_0
    const/4 v0, 0x7

    #@42
    new-array v2, v0, [Ljava/lang/Object;

    #@44
    const-string/jumbo v0, "set"

    #@47
    const/4 v1, 0x0

    #@48
    aput-object v0, v2, v1

    #@4a
    const/4 v0, 0x1

    #@4b
    aput-object p2, v2, v0

    #@4d
    iget-object v0, p1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    #@4f
    const/4 v1, 0x2

    #@50
    aput-object v0, v2, v1

    #@52
    .line 1493
    const-string/jumbo v0, "broadcast"

    #@55
    const/4 v1, 0x3

    #@56
    aput-object v0, v2, v1

    #@58
    iget v0, p1, Landroid/net/wifi/WifiConfiguration;->apChannel:I

    #@5a
    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    #@5d
    move-result-object v0

    #@5e
    const/4 v1, 0x4

    #@5f
    aput-object v0, v2, v1

    #@61
    .line 1494
    invoke-static {p1}, Lcom/android/server/NetworkManagementService;->getSecurityType(Landroid/net/wifi/WifiConfiguration;)Ljava/lang/String;

    #@64
    move-result-object v0

    #@65
    const/4 v1, 0x5

    #@66
    aput-object v0, v2, v1

    #@68
    new-instance v0, Lcom/android/server/NativeDaemonConnector$SensitiveArg;

    #@6a
    iget-object v1, p1, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    #@6c
    invoke-direct {v0, v1}, Lcom/android/server/NativeDaemonConnector$SensitiveArg;-><init>(Ljava/lang/Object;)V

    #@6f
    const/4 v1, 0x6

    #@70
    aput-object v0, v2, v1
    :try_end_0
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_0 .. :try_end_0} :catch_0

    #@72
    .line 1492
    .restart local v2    # "args":[Ljava/lang/Object;
    goto :goto_0

    #@73
    .line 1503
    .end local v2    # "args":[Ljava/lang/Object;
    :catch_0
    move-exception v6

    #@74
    .line 1504
    .local v6, "e":Lcom/android/server/NativeDaemonConnectorException;
    invoke-virtual {v6}, Lcom/android/server/NativeDaemonConnectorException;->rethrowAsParcelableException()Ljava/lang/IllegalArgumentException;

    #@77
    move-result-object v0

    #@78
    throw v0
.end method

.method public startClatd(Ljava/lang/String;)V
    .locals 6
    .param p1, "interfaceName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    #@0
    .prologue
    .line 2398
    iget-object v1, p0, Lcom/android/server/NetworkManagementService;->mContext:Landroid/content/Context;

    #@2
    const-string/jumbo v2, "android.permission.CONNECTIVITY_INTERNAL"

    #@5
    const-string/jumbo v3, "NetworkManagement"

    #@8
    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    #@b
    .line 2401
    :try_start_0
    iget-object v1, p0, Lcom/android/server/NetworkManagementService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    #@d
    const-string/jumbo v2, "clatd"

    #@10
    const/4 v3, 0x2

    #@11
    new-array v3, v3, [Ljava/lang/Object;

    #@13
    const-string/jumbo v4, "start"

    #@16
    const/4 v5, 0x0

    #@17
    aput-object v4, v3, v5

    #@19
    const/4 v4, 0x1

    #@1a
    aput-object p1, v3, v4

    #@1c
    invoke-virtual {v1, v2, v3}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;
    :try_end_0
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_0 .. :try_end_0} :catch_0

    #@1f
    .line 2397
    return-void

    #@20
    .line 2402
    :catch_0
    move-exception v0

    #@21
    .line 2403
    .local v0, "e":Lcom/android/server/NativeDaemonConnectorException;
    invoke-virtual {v0}, Lcom/android/server/NativeDaemonConnectorException;->rethrowAsParcelableException()Ljava/lang/IllegalArgumentException;

    #@24
    move-result-object v1

    #@25
    throw v1
.end method

.method public startInterfaceForwarding(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "fromIface"    # Ljava/lang/String;
    .param p2, "toIface"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1367
    iget-object v0, p0, Lcom/android/server/NetworkManagementService;->mContext:Landroid/content/Context;

    #@2
    const-string/jumbo v1, "android.permission.CONNECTIVITY_INTERNAL"

    #@5
    const-string/jumbo v2, "NetworkManagement"

    #@8
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    #@b
    .line 1368
    const/4 v0, 0x1

    #@c
    invoke-direct {p0, v0, p1, p2}, Lcom/android/server/NetworkManagementService;->modifyInterfaceForward(ZLjava/lang/String;Ljava/lang/String;)V

    #@f
    .line 1366
    return-void
.end method

.method public startTethering([Ljava/lang/String;)V
    .locals 7
    .param p1, "dhcpRange"    # [Ljava/lang/String;

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 1238
    iget-object v4, p0, Lcom/android/server/NetworkManagementService;->mContext:Landroid/content/Context;

    #@3
    const-string/jumbo v5, "android.permission.CONNECTIVITY_INTERNAL"

    #@6
    const-string/jumbo v6, "NetworkManagement"

    #@9
    invoke-virtual {v4, v5, v6}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    #@c
    .line 1242
    new-instance v0, Lcom/android/server/NativeDaemonConnector$Command;

    #@e
    const-string/jumbo v4, "tether"

    #@11
    const/4 v5, 0x1

    #@12
    new-array v5, v5, [Ljava/lang/Object;

    #@14
    const-string/jumbo v6, "start"

    #@17
    aput-object v6, v5, v3

    #@19
    invoke-direct {v0, v4, v5}, Lcom/android/server/NativeDaemonConnector$Command;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    #@1c
    .line 1243
    .local v0, "cmd":Lcom/android/server/NativeDaemonConnector$Command;
    array-length v4, p1

    #@1d
    :goto_0
    if-ge v3, v4, :cond_0

    #@1f
    aget-object v1, p1, v3

    #@21
    .line 1244
    .local v1, "d":Ljava/lang/String;
    invoke-virtual {v0, v1}, Lcom/android/server/NativeDaemonConnector$Command;->appendArg(Ljava/lang/Object;)Lcom/android/server/NativeDaemonConnector$Command;

    #@24
    .line 1243
    add-int/lit8 v3, v3, 0x1

    #@26
    goto :goto_0

    #@27
    .line 1248
    .end local v1    # "d":Ljava/lang/String;
    :cond_0
    :try_start_0
    iget-object v3, p0, Lcom/android/server/NetworkManagementService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    #@29
    invoke-virtual {v3, v0}, Lcom/android/server/NativeDaemonConnector;->execute(Lcom/android/server/NativeDaemonConnector$Command;)Lcom/android/server/NativeDaemonEvent;
    :try_end_0
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_0 .. :try_end_0} :catch_0

    #@2c
    .line 1237
    return-void

    #@2d
    .line 1249
    :catch_0
    move-exception v2

    #@2e
    .line 1250
    .local v2, "e":Lcom/android/server/NativeDaemonConnectorException;
    invoke-virtual {v2}, Lcom/android/server/NativeDaemonConnectorException;->rethrowAsParcelableException()Ljava/lang/IllegalArgumentException;

    #@31
    move-result-object v3

    #@32
    throw v3
.end method

.method public stopAccessPoint(Ljava/lang/String;)V
    .locals 7
    .param p1, "wlanIface"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1541
    iget-object v0, p0, Lcom/android/server/NetworkManagementService;->mContext:Landroid/content/Context;

    #@2
    const-string/jumbo v1, "android.permission.CONNECTIVITY_INTERNAL"

    #@5
    const-string/jumbo v3, "NetworkManagement"

    #@8
    invoke-virtual {v0, v1, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    #@b
    .line 1542
    const/4 v0, 0x1

    #@c
    new-array v2, v0, [Ljava/lang/Object;

    #@e
    const-string/jumbo v0, "stopap"

    #@11
    const/4 v1, 0x0

    #@12
    aput-object v0, v2, v1

    #@14
    .line 1543
    .local v2, "args":[Ljava/lang/Object;
    const-string/jumbo v5, "stopAccessPoint Error stopping softap"

    #@17
    .line 1546
    .local v5, "logMsg":Ljava/lang/String;
    :try_start_0
    const-string/jumbo v1, "softap"

    #@1a
    .line 1547
    const-string/jumbo v4, "Ok"

    #@1d
    .line 1546
    const/16 v3, 0xd6

    #@1f
    move-object v0, p0

    #@20
    invoke-direct/range {v0 .. v5}, Lcom/android/server/NetworkManagementService;->executeOrLogWithMessage(Ljava/lang/String;[Ljava/lang/Object;ILjava/lang/String;Ljava/lang/String;)V

    #@23
    .line 1548
    const-string/jumbo v0, "STA"

    #@26
    invoke-virtual {p0, p1, v0}, Lcom/android/server/NetworkManagementService;->wifiFirmwareReload(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_0 .. :try_end_0} :catch_0

    #@29
    .line 1540
    return-void

    #@2a
    .line 1549
    :catch_0
    move-exception v6

    #@2b
    .line 1550
    .local v6, "e":Lcom/android/server/NativeDaemonConnectorException;
    invoke-virtual {v6}, Lcom/android/server/NativeDaemonConnectorException;->rethrowAsParcelableException()Ljava/lang/IllegalArgumentException;

    #@2e
    move-result-object v0

    #@2f
    throw v0
.end method

.method public stopClatd(Ljava/lang/String;)V
    .locals 6
    .param p1, "interfaceName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    #@0
    .prologue
    .line 2409
    iget-object v1, p0, Lcom/android/server/NetworkManagementService;->mContext:Landroid/content/Context;

    #@2
    const-string/jumbo v2, "android.permission.CONNECTIVITY_INTERNAL"

    #@5
    const-string/jumbo v3, "NetworkManagement"

    #@8
    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    #@b
    .line 2412
    :try_start_0
    iget-object v1, p0, Lcom/android/server/NetworkManagementService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    #@d
    const-string/jumbo v2, "clatd"

    #@10
    const/4 v3, 0x2

    #@11
    new-array v3, v3, [Ljava/lang/Object;

    #@13
    const-string/jumbo v4, "stop"

    #@16
    const/4 v5, 0x0

    #@17
    aput-object v4, v3, v5

    #@19
    const/4 v4, 0x1

    #@1a
    aput-object p1, v3, v4

    #@1c
    invoke-virtual {v1, v2, v3}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;
    :try_end_0
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_0 .. :try_end_0} :catch_0

    #@1f
    .line 2408
    return-void

    #@20
    .line 2413
    :catch_0
    move-exception v0

    #@21
    .line 2414
    .local v0, "e":Lcom/android/server/NativeDaemonConnectorException;
    invoke-virtual {v0}, Lcom/android/server/NativeDaemonConnectorException;->rethrowAsParcelableException()Ljava/lang/IllegalArgumentException;

    #@24
    move-result-object v1

    #@25
    throw v1
.end method

.method public stopInterfaceForwarding(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "fromIface"    # Ljava/lang/String;
    .param p2, "toIface"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1373
    iget-object v0, p0, Lcom/android/server/NetworkManagementService;->mContext:Landroid/content/Context;

    #@2
    const-string/jumbo v1, "android.permission.CONNECTIVITY_INTERNAL"

    #@5
    const-string/jumbo v2, "NetworkManagement"

    #@8
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    #@b
    .line 1374
    const/4 v0, 0x0

    #@c
    invoke-direct {p0, v0, p1, p2}, Lcom/android/server/NetworkManagementService;->modifyInterfaceForward(ZLjava/lang/String;Ljava/lang/String;)V

    #@f
    .line 1372
    return-void
.end method

.method public stopTethering()V
    .locals 6

    #@0
    .prologue
    .line 1256
    iget-object v1, p0, Lcom/android/server/NetworkManagementService;->mContext:Landroid/content/Context;

    #@2
    const-string/jumbo v2, "android.permission.CONNECTIVITY_INTERNAL"

    #@5
    const-string/jumbo v3, "NetworkManagement"

    #@8
    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    #@b
    .line 1258
    :try_start_0
    iget-object v1, p0, Lcom/android/server/NetworkManagementService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    #@d
    const-string/jumbo v2, "tether"

    #@10
    const/4 v3, 0x1

    #@11
    new-array v3, v3, [Ljava/lang/Object;

    #@13
    const-string/jumbo v4, "stop"

    #@16
    const/4 v5, 0x0

    #@17
    aput-object v4, v3, v5

    #@19
    invoke-virtual {v1, v2, v3}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;
    :try_end_0
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_0 .. :try_end_0} :catch_0

    #@1c
    .line 1255
    return-void

    #@1d
    .line 1259
    :catch_0
    move-exception v0

    #@1e
    .line 1260
    .local v0, "e":Lcom/android/server/NativeDaemonConnectorException;
    invoke-virtual {v0}, Lcom/android/server/NativeDaemonConnectorException;->rethrowAsParcelableException()Ljava/lang/IllegalArgumentException;

    #@21
    move-result-object v1

    #@22
    throw v1
.end method

.method public systemReady()V
    .locals 7

    #@0
    .prologue
    .line 342
    sget-boolean v4, Lcom/android/server/NetworkManagementService;->DBG:Z

    #@2
    if-eqz v4, :cond_0

    #@4
    .line 343
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    #@7
    move-result-wide v2

    #@8
    .line 344
    .local v2, "start":J
    invoke-direct {p0}, Lcom/android/server/NetworkManagementService;->prepareNativeDaemon()V

    #@b
    .line 345
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    #@e
    move-result-wide v4

    #@f
    sub-long v0, v4, v2

    #@11
    .line 346
    .local v0, "delta":J
    const-string/jumbo v4, "NetworkManagement"

    #@14
    new-instance v5, Ljava/lang/StringBuilder;

    #@16
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@19
    const-string/jumbo v6, "Prepared in "

    #@1c
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1f
    move-result-object v5

    #@20
    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    #@23
    move-result-object v5

    #@24
    const-string/jumbo v6, "ms"

    #@27
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2a
    move-result-object v5

    #@2b
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2e
    move-result-object v5

    #@2f
    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@32
    .line 347
    return-void

    #@33
    .line 349
    .end local v0    # "delta":J
    .end local v2    # "start":J
    :cond_0
    invoke-direct {p0}, Lcom/android/server/NetworkManagementService;->prepareNativeDaemon()V

    #@36
    .line 341
    return-void
.end method

.method public tetherInterface(Ljava/lang/String;)V
    .locals 7
    .param p1, "iface"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1282
    iget-object v2, p0, Lcom/android/server/NetworkManagementService;->mContext:Landroid/content/Context;

    #@2
    const-string/jumbo v3, "android.permission.CONNECTIVITY_INTERNAL"

    #@5
    const-string/jumbo v4, "NetworkManagement"

    #@8
    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    #@b
    .line 1284
    :try_start_0
    iget-object v2, p0, Lcom/android/server/NetworkManagementService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    #@d
    const-string/jumbo v3, "tether"

    #@10
    const/4 v4, 0x3

    #@11
    new-array v4, v4, [Ljava/lang/Object;

    #@13
    const-string/jumbo v5, "interface"

    #@16
    const/4 v6, 0x0

    #@17
    aput-object v5, v4, v6

    #@19
    const-string/jumbo v5, "add"

    #@1c
    const/4 v6, 0x1

    #@1d
    aput-object v5, v4, v6

    #@1f
    const/4 v5, 0x2

    #@20
    aput-object p1, v4, v5

    #@22
    invoke-virtual {v2, v3, v4}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;
    :try_end_0
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_0 .. :try_end_0} :catch_0

    #@25
    .line 1288
    new-instance v1, Ljava/util/ArrayList;

    #@27
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    #@2a
    .line 1291
    .local v1, "routes":Ljava/util/List;, "Ljava/util/List<Landroid/net/RouteInfo;>;"
    new-instance v2, Landroid/net/RouteInfo;

    #@2c
    invoke-virtual {p0, p1}, Lcom/android/server/NetworkManagementService;->getInterfaceConfig(Ljava/lang/String;)Landroid/net/InterfaceConfiguration;

    #@2f
    move-result-object v3

    #@30
    invoke-virtual {v3}, Landroid/net/InterfaceConfiguration;->getLinkAddress()Landroid/net/LinkAddress;

    #@33
    move-result-object v3

    #@34
    const/4 v4, 0x0

    #@35
    invoke-direct {v2, v3, v4, p1}, Landroid/net/RouteInfo;-><init>(Landroid/net/LinkAddress;Ljava/net/InetAddress;Ljava/lang/String;)V

    #@38
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@3b
    .line 1292
    invoke-virtual {p0, p1, v1}, Lcom/android/server/NetworkManagementService;->addInterfaceToLocalNetwork(Ljava/lang/String;Ljava/util/List;)V

    #@3e
    .line 1281
    return-void

    #@3f
    .line 1285
    .end local v1    # "routes":Ljava/util/List;, "Ljava/util/List<Landroid/net/RouteInfo;>;"
    :catch_0
    move-exception v0

    #@40
    .line 1286
    .local v0, "e":Lcom/android/server/NativeDaemonConnectorException;
    invoke-virtual {v0}, Lcom/android/server/NativeDaemonConnectorException;->rethrowAsParcelableException()Ljava/lang/IllegalArgumentException;

    #@43
    move-result-object v2

    #@44
    throw v2
.end method

.method public unregisterNetworkActivityListener(Landroid/os/INetworkActivityListener;)V
    .locals 1
    .param p1, "listener"    # Landroid/os/INetworkActivityListener;

    #@0
    .prologue
    .line 2440
    iget-object v0, p0, Lcom/android/server/NetworkManagementService;->mNetworkActivityListeners:Landroid/os/RemoteCallbackList;

    #@2
    invoke-virtual {v0, p1}, Landroid/os/RemoteCallbackList;->unregister(Landroid/os/IInterface;)Z

    #@5
    .line 2439
    return-void
.end method

.method public unregisterObserver(Landroid/net/INetworkManagementEventObserver;)V
    .locals 3
    .param p1, "observer"    # Landroid/net/INetworkManagementEventObserver;

    #@0
    .prologue
    .line 372
    iget-object v0, p0, Lcom/android/server/NetworkManagementService;->mContext:Landroid/content/Context;

    #@2
    const-string/jumbo v1, "android.permission.CONNECTIVITY_INTERNAL"

    #@5
    const-string/jumbo v2, "NetworkManagement"

    #@8
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    #@b
    .line 373
    iget-object v0, p0, Lcom/android/server/NetworkManagementService;->mObservers:Landroid/os/RemoteCallbackList;

    #@d
    invoke-virtual {v0, p1}, Landroid/os/RemoteCallbackList;->unregister(Landroid/os/IInterface;)Z

    #@10
    .line 371
    return-void
.end method

.method public untetherInterface(Ljava/lang/String;)V
    .locals 6
    .param p1, "iface"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1297
    iget-object v1, p0, Lcom/android/server/NetworkManagementService;->mContext:Landroid/content/Context;

    #@2
    const-string/jumbo v2, "android.permission.CONNECTIVITY_INTERNAL"

    #@5
    const-string/jumbo v3, "NetworkManagement"

    #@8
    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    #@b
    .line 1299
    :try_start_0
    iget-object v1, p0, Lcom/android/server/NetworkManagementService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    #@d
    const-string/jumbo v2, "tether"

    #@10
    const/4 v3, 0x3

    #@11
    new-array v3, v3, [Ljava/lang/Object;

    #@13
    const-string/jumbo v4, "interface"

    #@16
    const/4 v5, 0x0

    #@17
    aput-object v4, v3, v5

    #@19
    const-string/jumbo v4, "remove"

    #@1c
    const/4 v5, 0x1

    #@1d
    aput-object v4, v3, v5

    #@1f
    const/4 v4, 0x2

    #@20
    aput-object p1, v3, v4

    #@22
    invoke-virtual {v1, v2, v3}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;
    :try_end_0
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_0 .. :try_end_0} :catch_0

    #@25
    .line 1303
    invoke-virtual {p0, p1}, Lcom/android/server/NetworkManagementService;->removeInterfaceFromLocalNetwork(Ljava/lang/String;)V

    #@28
    .line 1296
    return-void

    #@29
    .line 1300
    :catch_0
    move-exception v0

    #@2a
    .line 1301
    .local v0, "e":Lcom/android/server/NativeDaemonConnectorException;
    invoke-virtual {v0}, Lcom/android/server/NativeDaemonConnectorException;->rethrowAsParcelableException()Ljava/lang/IllegalArgumentException;

    #@2d
    move-result-object v1

    #@2e
    throw v1
.end method

.method public wifiFirmwareReload(Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .param p1, "wlanIface"    # Ljava/lang/String;
    .param p2, "mode"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1522
    iget-object v0, p0, Lcom/android/server/NetworkManagementService;->mContext:Landroid/content/Context;

    #@2
    const-string/jumbo v1, "android.permission.CONNECTIVITY_INTERNAL"

    #@5
    const-string/jumbo v3, "NetworkManagement"

    #@8
    invoke-virtual {v0, v1, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    #@b
    .line 1523
    const/4 v0, 0x3

    #@c
    new-array v2, v0, [Ljava/lang/Object;

    #@e
    const-string/jumbo v0, "fwreload"

    #@11
    const/4 v1, 0x0

    #@12
    aput-object v0, v2, v1

    #@14
    const/4 v0, 0x1

    #@15
    aput-object p1, v2, v0

    #@17
    const/4 v0, 0x2

    #@18
    aput-object p2, v2, v0

    #@1a
    .line 1524
    .local v2, "args":[Ljava/lang/Object;
    new-instance v0, Ljava/lang/StringBuilder;

    #@1c
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@1f
    const-string/jumbo v1, "wifiFirmwareReload Error reloading "

    #@22
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@25
    move-result-object v0

    #@26
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@29
    move-result-object v0

    #@2a
    .line 1525
    const-string/jumbo v1, " fw in "

    #@2d
    .line 1524
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@30
    move-result-object v0

    #@31
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@34
    move-result-object v0

    #@35
    .line 1525
    const-string/jumbo v1, " mode"

    #@38
    .line 1524
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3b
    move-result-object v0

    #@3c
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3f
    move-result-object v5

    #@40
    .line 1527
    .local v5, "logMsg":Ljava/lang/String;
    :try_start_0
    const-string/jumbo v1, "softap"

    #@43
    .line 1528
    const-string/jumbo v4, "Ok"

    #@46
    .line 1527
    const/16 v3, 0xd6

    #@48
    move-object v0, p0

    #@49
    invoke-direct/range {v0 .. v5}, Lcom/android/server/NetworkManagementService;->executeOrLogWithMessage(Ljava/lang/String;[Ljava/lang/Object;ILjava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_0 .. :try_end_0} :catch_0

    #@4c
    .line 1536
    iget-object v0, p0, Lcom/android/server/NetworkManagementService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    #@4e
    invoke-virtual {v0}, Lcom/android/server/NativeDaemonConnector;->waitForCallbacks()V

    #@51
    .line 1521
    return-void

    #@52
    .line 1529
    :catch_0
    move-exception v6

    #@53
    .line 1530
    .local v6, "e":Lcom/android/server/NativeDaemonConnectorException;
    invoke-virtual {v6}, Lcom/android/server/NativeDaemonConnectorException;->rethrowAsParcelableException()Ljava/lang/IllegalArgumentException;

    #@56
    move-result-object v0

    #@57
    throw v0
.end method
