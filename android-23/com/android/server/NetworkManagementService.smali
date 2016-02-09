.class public Lcom/android/server/NetworkManagementService;
.super Landroid/os/INetworkManagementService$Stub;
.source "NetworkManagementService.java"

# interfaces
.implements Lcom/android/server/Watchdog$Monitor;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/NetworkManagementService$NetdResponseCode;,
        Lcom/android/server/NetworkManagementService$IdleTimerParams;,
        Lcom/android/server/NetworkManagementService$NetdCallbackReceiver;
    }
.end annotation


# static fields
.field static final DAEMON_MSG_MOBILE_CONN_REAL_TIME_INFO:I = 0x1

.field private static final DBG:Z

.field public static final LIMIT_GLOBAL_ALERT:Ljava/lang/String; = "globalAlert"

.field private static final MAX_UID_RANGES_PER_COMMAND:I = 0xa

.field private static final NETD_SOCKET_NAME:Ljava/lang/String; = "netd"

.field private static final NETD_TAG:Ljava/lang/String; = "NetdConnector"

.field public static final PERMISSION_NETWORK:Ljava/lang/String; = "NETWORK"

.field public static final PERMISSION_SYSTEM:Ljava/lang/String; = "SYSTEM"

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

.field private final mPhoneStateListener:Landroid/telephony/PhoneStateListener;

.field private mQuotaLock:Ljava/lang/Object;

.field private final mStatsFactory:Lcom/android/internal/net/NetworkStatsFactory;

.field private volatile mStrictEnabled:Z

.field private final mThread:Ljava/lang/Thread;

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

.field private mUidRejectOnQuota:Landroid/util/SparseBooleanArray;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mQuotaLock"
    .end annotation
.end field


# direct methods
.method static synthetic -get0()Z
    .locals 1

    #@0
    sget-boolean v0, Lcom/android/server/NetworkManagementService;->DBG:Z

    #@2
    return v0
.end method

.method static synthetic -get1(Lcom/android/server/NetworkManagementService;)Ljava/util/concurrent/CountDownLatch;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/NetworkManagementService;->mConnectedSignal:Ljava/util/concurrent/CountDownLatch;

    #@2
    return-object v0
.end method

.method static synthetic -get2(Lcom/android/server/NetworkManagementService;)Landroid/os/Handler;
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

.method static synthetic -wrap0(Lcom/android/server/NetworkManagementService;Ljava/lang/String;Landroid/net/LinkAddress;)V
    .locals 0
    .param p1, "iface"    # Ljava/lang/String;
    .param p2, "address"    # Landroid/net/LinkAddress;

    #@0
    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/server/NetworkManagementService;->notifyAddressRemoved(Ljava/lang/String;Landroid/net/LinkAddress;)V

    #@3
    return-void
.end method

.method static synthetic -wrap1(Lcom/android/server/NetworkManagementService;Ljava/lang/String;Landroid/net/LinkAddress;)V
    .locals 0
    .param p1, "iface"    # Ljava/lang/String;
    .param p2, "address"    # Landroid/net/LinkAddress;

    #@0
    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/server/NetworkManagementService;->notifyAddressUpdated(Ljava/lang/String;Landroid/net/LinkAddress;)V

    #@3
    return-void
.end method

.method static synthetic -wrap10(Lcom/android/server/NetworkManagementService;)V
    .locals 0

    #@0
    invoke-direct {p0}, Lcom/android/server/NetworkManagementService;->prepareNativeDaemon()V

    #@3
    return-void
.end method

.method static synthetic -wrap2(Lcom/android/server/NetworkManagementService;Ljava/lang/String;)V
    .locals 0
    .param p1, "iface"    # Ljava/lang/String;

    #@0
    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/NetworkManagementService;->notifyInterfaceAdded(Ljava/lang/String;)V

    #@3
    return-void
.end method

.method static synthetic -wrap3(Lcom/android/server/NetworkManagementService;IIJZ)V
    .locals 1
    .param p1, "type"    # I
    .param p2, "powerState"    # I
    .param p3, "tsNanos"    # J
    .param p5, "fromRadio"    # Z

    #@0
    .prologue
    invoke-direct/range {p0 .. p5}, Lcom/android/server/NetworkManagementService;->notifyInterfaceClassActivity(IIJZ)V

    #@3
    return-void
.end method

.method static synthetic -wrap4(Lcom/android/server/NetworkManagementService;Ljava/lang/String;J[Ljava/lang/String;)V
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

.method static synthetic -wrap5(Lcom/android/server/NetworkManagementService;Ljava/lang/String;Z)V
    .locals 0
    .param p1, "iface"    # Ljava/lang/String;
    .param p2, "up"    # Z

    #@0
    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/server/NetworkManagementService;->notifyInterfaceLinkStateChanged(Ljava/lang/String;Z)V

    #@3
    return-void
.end method

.method static synthetic -wrap6(Lcom/android/server/NetworkManagementService;Ljava/lang/String;)V
    .locals 0
    .param p1, "iface"    # Ljava/lang/String;

    #@0
    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/NetworkManagementService;->notifyInterfaceRemoved(Ljava/lang/String;)V

    #@3
    return-void
.end method

.method static synthetic -wrap7(Lcom/android/server/NetworkManagementService;Ljava/lang/String;Z)V
    .locals 0
    .param p1, "iface"    # Ljava/lang/String;
    .param p2, "up"    # Z

    #@0
    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/server/NetworkManagementService;->notifyInterfaceStatusChanged(Ljava/lang/String;Z)V

    #@3
    return-void
.end method

.method static synthetic -wrap8(Lcom/android/server/NetworkManagementService;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "limitName"    # Ljava/lang/String;
    .param p2, "iface"    # Ljava/lang/String;

    #@0
    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/server/NetworkManagementService;->notifyLimitReached(Ljava/lang/String;Ljava/lang/String;)V

    #@3
    return-void
.end method

.method static synthetic -wrap9(Lcom/android/server/NetworkManagementService;Ljava/lang/String;Landroid/net/RouteInfo;)V
    .locals 0
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "route"    # Landroid/net/RouteInfo;

    #@0
    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/server/NetworkManagementService;->notifyRouteChange(Ljava/lang/String;Landroid/net/RouteInfo;)V

    #@3
    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    #@0
    .prologue
    .line 122
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
    .line 119
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "socket"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 266
    invoke-direct {p0}, Landroid/os/INetworkManagementService$Stub;-><init>()V

    #@4
    .line 194
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    #@6
    const/4 v1, 0x1

    #@7
    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    #@a
    iput-object v0, p0, Lcom/android/server/NetworkManagementService;->mConnectedSignal:Ljava/util/concurrent/CountDownLatch;

    #@c
    .line 197
    new-instance v0, Landroid/os/RemoteCallbackList;

    #@e
    invoke-direct {v0}, Landroid/os/RemoteCallbackList;-><init>()V

    #@11
    .line 196
    iput-object v0, p0, Lcom/android/server/NetworkManagementService;->mObservers:Landroid/os/RemoteCallbackList;

    #@13
    .line 199
    new-instance v0, Lcom/android/internal/net/NetworkStatsFactory;

    #@15
    invoke-direct {v0}, Lcom/android/internal/net/NetworkStatsFactory;-><init>()V

    #@18
    iput-object v0, p0, Lcom/android/server/NetworkManagementService;->mStatsFactory:Lcom/android/internal/net/NetworkStatsFactory;

    #@1a
    .line 201
    new-instance v0, Ljava/lang/Object;

    #@1c
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    #@1f
    iput-object v0, p0, Lcom/android/server/NetworkManagementService;->mQuotaLock:Ljava/lang/Object;

    #@21
    .line 205
    invoke-static {}, Lcom/google/android/collect/Maps;->newHashMap()Ljava/util/HashMap;

    #@24
    move-result-object v0

    #@25
    iput-object v0, p0, Lcom/android/server/NetworkManagementService;->mActiveQuotas:Ljava/util/HashMap;

    #@27
    .line 208
    invoke-static {}, Lcom/google/android/collect/Maps;->newHashMap()Ljava/util/HashMap;

    #@2a
    move-result-object v0

    #@2b
    iput-object v0, p0, Lcom/android/server/NetworkManagementService;->mActiveAlerts:Ljava/util/HashMap;

    #@2d
    .line 211
    new-instance v0, Landroid/util/SparseBooleanArray;

    #@2f
    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    #@32
    iput-object v0, p0, Lcom/android/server/NetworkManagementService;->mUidRejectOnQuota:Landroid/util/SparseBooleanArray;

    #@34
    .line 214
    new-instance v0, Landroid/util/SparseIntArray;

    #@36
    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    #@39
    iput-object v0, p0, Lcom/android/server/NetworkManagementService;->mUidCleartextPolicy:Landroid/util/SparseIntArray;

    #@3b
    .line 217
    new-instance v0, Landroid/util/SparseIntArray;

    #@3d
    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    #@40
    iput-object v0, p0, Lcom/android/server/NetworkManagementService;->mUidFirewallRules:Landroid/util/SparseIntArray;

    #@42
    .line 223
    new-instance v0, Landroid/util/SparseIntArray;

    #@44
    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    #@47
    iput-object v0, p0, Lcom/android/server/NetworkManagementService;->mUidFirewallStandbyRules:Landroid/util/SparseIntArray;

    #@49
    .line 229
    new-instance v0, Landroid/util/SparseIntArray;

    #@4b
    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    #@4e
    iput-object v0, p0, Lcom/android/server/NetworkManagementService;->mUidFirewallDozableRules:Landroid/util/SparseIntArray;

    #@50
    .line 232
    new-instance v0, Landroid/util/SparseBooleanArray;

    #@52
    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    #@55
    iput-object v0, p0, Lcom/android/server/NetworkManagementService;->mFirewallChainStates:Landroid/util/SparseBooleanArray;

    #@57
    .line 234
    new-instance v0, Ljava/lang/Object;

    #@59
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    #@5c
    iput-object v0, p0, Lcom/android/server/NetworkManagementService;->mIdleTimerLock:Ljava/lang/Object;

    #@5e
    .line 247
    invoke-static {}, Lcom/google/android/collect/Maps;->newHashMap()Ljava/util/HashMap;

    #@61
    move-result-object v0

    #@62
    iput-object v0, p0, Lcom/android/server/NetworkManagementService;->mActiveIdleTimers:Ljava/util/HashMap;

    #@64
    .line 253
    const/4 v0, 0x0

    #@65
    iput-boolean v0, p0, Lcom/android/server/NetworkManagementService;->mMobileActivityFromRadio:Z

    #@67
    .line 254
    sget v0, Landroid/telephony/DataConnectionRealTimeInfo;->DC_POWER_STATE_LOW:I

    #@69
    iput v0, p0, Lcom/android/server/NetworkManagementService;->mLastPowerStateFromRadio:I

    #@6b
    .line 255
    sget v0, Landroid/telephony/DataConnectionRealTimeInfo;->DC_POWER_STATE_LOW:I

    #@6d
    iput v0, p0, Lcom/android/server/NetworkManagementService;->mLastPowerStateFromWifi:I

    #@6f
    .line 258
    new-instance v0, Landroid/os/RemoteCallbackList;

    #@71
    invoke-direct {v0}, Landroid/os/RemoteCallbackList;-><init>()V

    #@74
    .line 257
    iput-object v0, p0, Lcom/android/server/NetworkManagementService;->mNetworkActivityListeners:Landroid/os/RemoteCallbackList;

    #@76
    .line 267
    iput-object p1, p0, Lcom/android/server/NetworkManagementService;->mContext:Landroid/content/Context;

    #@78
    .line 270
    new-instance v0, Landroid/os/Handler;

    #@7a
    invoke-static {}, Lcom/android/server/FgThread;->get()Lcom/android/server/FgThread;

    #@7d
    move-result-object v1

    #@7e
    invoke-virtual {v1}, Lcom/android/server/FgThread;->getLooper()Landroid/os/Looper;

    #@81
    move-result-object v1

    #@82
    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    #@85
    iput-object v0, p0, Lcom/android/server/NetworkManagementService;->mFgHandler:Landroid/os/Handler;

    #@87
    .line 277
    const/4 v6, 0x0

    #@88
    .line 279
    .local v6, "wl":Landroid/os/PowerManager$WakeLock;
    new-instance v0, Lcom/android/server/NativeDaemonConnector;

    #@8a
    .line 280
    new-instance v1, Lcom/android/server/NetworkManagementService$NetdCallbackReceiver;

    #@8c
    invoke-direct {v1, p0, v2}, Lcom/android/server/NetworkManagementService$NetdCallbackReceiver;-><init>(Lcom/android/server/NetworkManagementService;Lcom/android/server/NetworkManagementService$NetdCallbackReceiver;)V

    #@8f
    const-string/jumbo v4, "NetdConnector"

    #@92
    .line 281
    invoke-static {}, Lcom/android/server/FgThread;->get()Lcom/android/server/FgThread;

    #@95
    move-result-object v2

    #@96
    invoke-virtual {v2}, Lcom/android/server/FgThread;->getLooper()Landroid/os/Looper;

    #@99
    move-result-object v7

    #@9a
    .line 280
    const/16 v3, 0xa

    #@9c
    const/16 v5, 0xa0

    #@9e
    move-object v2, p2

    #@9f
    .line 279
    invoke-direct/range {v0 .. v7}, Lcom/android/server/NativeDaemonConnector;-><init>(Lcom/android/server/INativeDaemonConnectorCallbacks;Ljava/lang/String;ILjava/lang/String;ILandroid/os/PowerManager$WakeLock;Landroid/os/Looper;)V

    #@a2
    iput-object v0, p0, Lcom/android/server/NetworkManagementService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    #@a4
    .line 282
    new-instance v0, Ljava/lang/Thread;

    #@a6
    iget-object v1, p0, Lcom/android/server/NetworkManagementService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    #@a8
    const-string/jumbo v2, "NetdConnector"

    #@ab
    invoke-direct {v0, v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    #@ae
    iput-object v0, p0, Lcom/android/server/NetworkManagementService;->mThread:Ljava/lang/Thread;

    #@b0
    .line 284
    new-instance v0, Landroid/os/Handler;

    #@b2
    invoke-static {}, Lcom/android/server/FgThread;->get()Lcom/android/server/FgThread;

    #@b5
    move-result-object v1

    #@b6
    invoke-virtual {v1}, Lcom/android/server/FgThread;->getLooper()Landroid/os/Looper;

    #@b9
    move-result-object v1

    #@ba
    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    #@bd
    iput-object v0, p0, Lcom/android/server/NetworkManagementService;->mDaemonHandler:Landroid/os/Handler;

    #@bf
    .line 286
    new-instance v0, Lcom/android/server/NetworkManagementService$1;

    #@c1
    .line 287
    iget-object v1, p0, Lcom/android/server/NetworkManagementService;->mDaemonHandler:Landroid/os/Handler;

    #@c3
    invoke-virtual {v1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    #@c6
    move-result-object v1

    #@c7
    .line 286
    const v2, 0x7fffffff

    #@ca
    invoke-direct {v0, p0, v2, v1}, Lcom/android/server/NetworkManagementService$1;-><init>(Lcom/android/server/NetworkManagementService;ILandroid/os/Looper;)V

    #@cd
    iput-object v0, p0, Lcom/android/server/NetworkManagementService;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    #@cf
    .line 296
    const-string/jumbo v0, "phone"

    #@d2
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    #@d5
    move-result-object v8

    #@d6
    check-cast v8, Landroid/telephony/TelephonyManager;

    #@d8
    .line 297
    .local v8, "tm":Landroid/telephony/TelephonyManager;
    if-eqz v8, :cond_0

    #@da
    .line 298
    iget-object v0, p0, Lcom/android/server/NetworkManagementService;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    #@dc
    .line 299
    const/16 v1, 0x2000

    #@de
    .line 298
    invoke-virtual {v8, v0, v1}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    #@e1
    .line 303
    :cond_0
    invoke-static {}, Lcom/android/server/Watchdog;->getInstance()Lcom/android/server/Watchdog;

    #@e4
    move-result-object v0

    #@e5
    invoke-virtual {v0, p0}, Lcom/android/server/Watchdog;->addMonitor(Lcom/android/server/Watchdog$Monitor;)V

    #@e8
    .line 266
    return-void
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
    .line 319
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
    .line 308
    new-instance v1, Lcom/android/server/NetworkManagementService;

    #@2
    invoke-direct {v1, p0, p1}, Lcom/android/server/NetworkManagementService;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    #@5
    .line 309
    .local v1, "service":Lcom/android/server/NetworkManagementService;
    iget-object v0, v1, Lcom/android/server/NetworkManagementService;->mConnectedSignal:Ljava/util/concurrent/CountDownLatch;

    #@7
    .line 310
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
    .line 311
    :cond_0
    iget-object v2, v1, Lcom/android/server/NetworkManagementService;->mThread:Ljava/lang/Thread;

    #@16
    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    #@19
    .line 312
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
    .line 313
    :cond_1
    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->await()V

    #@29
    .line 314
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
    .line 315
    :cond_2
    return-object v1
.end method

.method private static enforceSystemUid()V
    .locals 3

    #@0
    .prologue
    .line 2179
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    #@3
    move-result v0

    #@4
    .line 2180
    .local v0, "uid":I
    const/16 v1, 0x3e8

    #@6
    if-eq v0, v1, :cond_0

    #@8
    .line 2181
    new-instance v1, Ljava/lang/SecurityException;

    #@a
    const-string/jumbo v2, "Only available to AID_SYSTEM"

    #@d
    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    #@10
    throw v1

    #@11
    .line 2178
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
    .line 1371
    .local p1, "addresses":Ljava/util/List;, "Ljava/util/List<Ljava/net/InterfaceAddress;>;"
    new-instance v0, Ljava/util/ArrayList;

    #@2
    invoke-interface {p1}, Ljava/util/List;->size()I

    #@5
    move-result v3

    #@6
    invoke-direct {v0, v3}, Ljava/util/ArrayList;-><init>(I)V

    #@9
    .line 1372
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
    .line 1373
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
    .line 1374
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@26
    goto :goto_0

    #@27
    .line 1376
    .end local v1    # "ia":Ljava/net/InterfaceAddress;
    :cond_1
    return-object v0
.end method

.method private getBatteryStats()Lcom/android/internal/app/IBatteryStats;
    .locals 1

    #@0
    .prologue
    .line 328
    monitor-enter p0

    #@1
    .line 329
    :try_start_0
    iget-object v0, p0, Lcom/android/server/NetworkManagementService;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    #@3
    if-eqz v0, :cond_0

    #@5
    .line 330
    iget-object v0, p0, Lcom/android/server/NetworkManagementService;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@7
    monitor-exit p0

    #@8
    return-object v0

    #@9
    .line 333
    :cond_0
    :try_start_1
    const-string/jumbo v0, "batterystats"

    #@c
    .line 332
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
    .line 334
    iget-object v0, p0, Lcom/android/server/NetworkManagementService;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@18
    monitor-exit p0

    #@19
    return-object v0

    #@1a
    .line 328
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
    .line 2136
    invoke-direct {p0, p1}, Lcom/android/server/NetworkManagementService;->getFirewallType(I)I

    #@3
    move-result v1

    #@4
    if-nez v1, :cond_1

    #@6
    .line 2137
    const/4 v1, 0x1

    #@7
    if-ne p2, v1, :cond_0

    #@9
    .line 2138
    const-string/jumbo v0, "allow"

    #@c
    .line 2149
    .local v0, "ruleName":Ljava/lang/String;
    :goto_0
    return-object v0

    #@d
    .line 2140
    .end local v0    # "ruleName":Ljava/lang/String;
    :cond_0
    const-string/jumbo v0, "deny"

    #@10
    .restart local v0    # "ruleName":Ljava/lang/String;
    goto :goto_0

    #@11
    .line 2143
    .end local v0    # "ruleName":Ljava/lang/String;
    :cond_1
    const/4 v1, 0x2

    #@12
    if-ne p2, v1, :cond_2

    #@14
    .line 2144
    const-string/jumbo v0, "deny"

    #@17
    .restart local v0    # "ruleName":Ljava/lang/String;
    goto :goto_0

    #@18
    .line 2146
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
    .line 2054
    packed-switch p1, :pswitch_data_0

    #@5
    .line 2060
    invoke-virtual {p0}, Lcom/android/server/NetworkManagementService;->isFirewallEnabled()Z

    #@8
    move-result v2

    #@9
    if-eqz v2, :cond_0

    #@b
    :goto_0
    return v0

    #@c
    .line 2056
    :pswitch_0
    return v1

    #@d
    .line 2058
    :pswitch_1
    return v0

    #@e
    :cond_0
    move v0, v1

    #@f
    .line 2060
    goto :goto_0

    #@10
    .line 2054
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static getSecurityType(Landroid/net/wifi/WifiConfiguration;)Ljava/lang/String;
    .locals 1
    .param p0, "wifiConfig"    # Landroid/net/wifi/WifiConfiguration;

    #@0
    .prologue
    .line 1504
    invoke-virtual {p0}, Landroid/net/wifi/WifiConfiguration;->getAuthType()I

    #@3
    move-result v0

    #@4
    packed-switch v0, :pswitch_data_0

    #@7
    .line 1510
    :pswitch_0
    const-string/jumbo v0, "open"

    #@a
    return-object v0

    #@b
    .line 1506
    :pswitch_1
    const-string/jumbo v0, "wpa-psk"

    #@e
    return-object v0

    #@f
    .line 1508
    :pswitch_2
    const-string/jumbo v0, "wpa2-psk"

    #@12
    return-object v0

    #@13
    .line 1504
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
    .line 2153
    packed-switch p1, :pswitch_data_0

    #@3
    .line 2161
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
    .line 2155
    :pswitch_0
    iget-object v0, p0, Lcom/android/server/NetworkManagementService;->mUidFirewallStandbyRules:Landroid/util/SparseIntArray;

    #@1f
    return-object v0

    #@20
    .line 2157
    :pswitch_1
    iget-object v0, p0, Lcom/android/server/NetworkManagementService;->mUidFirewallDozableRules:Landroid/util/SparseIntArray;

    #@22
    return-object v0

    #@23
    .line 2159
    :pswitch_2
    iget-object v0, p0, Lcom/android/server/NetworkManagementService;->mUidFirewallRules:Landroid/util/SparseIntArray;

    #@25
    return-object v0

    #@26
    .line 2153
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private modifyInterfaceForward(ZLjava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p1, "add"    # Z
    .param p2, "fromIface"    # Ljava/lang/String;
    .param p3, "toIface"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1380
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
    .line 1382
    .local v0, "cmd":Lcom/android/server/NativeDaemonConnector$Command;
    :try_start_0
    iget-object v2, p0, Lcom/android/server/NetworkManagementService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    #@1b
    invoke-virtual {v2, v0}, Lcom/android/server/NativeDaemonConnector;->execute(Lcom/android/server/NativeDaemonConnector$Command;)Lcom/android/server/NativeDaemonEvent;
    :try_end_0
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_0 .. :try_end_0} :catch_0

    #@1e
    .line 1379
    return-void

    #@1f
    .line 1380
    .end local v0    # "cmd":Lcom/android/server/NativeDaemonConnector$Command;
    :cond_0
    const-string/jumbo v2, "remove"

    #@22
    goto :goto_0

    #@23
    .line 1383
    .restart local v0    # "cmd":Lcom/android/server/NativeDaemonConnector$Command;
    :catch_0
    move-exception v1

    #@24
    .line 1384
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
    .line 2393
    iget-object v1, p0, Lcom/android/server/NetworkManagementService;->mContext:Landroid/content/Context;

    #@2
    const-string/jumbo v2, "android.permission.CONNECTIVITY_INTERNAL"

    #@5
    const-string/jumbo v3, "NetworkManagement"

    #@8
    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    #@b
    .line 2395
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
    .line 2392
    return-void

    #@26
    .line 2396
    :catch_0
    move-exception v0

    #@27
    .line 2397
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
    .line 1402
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
    .line 1404
    .local v1, "cmd":Lcom/android/server/NativeDaemonConnector$Command;
    invoke-static {p2}, Ljava/net/NetworkInterface;->getByName(Ljava/lang/String;)Ljava/net/NetworkInterface;

    #@17
    move-result-object v6

    #@18
    .line 1406
    .local v6, "internalNetworkInterface":Ljava/net/NetworkInterface;
    if-nez v6, :cond_1

    #@1a
    .line 1407
    const-string/jumbo v7, "0"

    #@1d
    invoke-virtual {v1, v7}, Lcom/android/server/NativeDaemonConnector$Command;->appendArg(Ljava/lang/Object;)Lcom/android/server/NativeDaemonConnector$Command;

    #@20
    .line 1422
    :cond_0
    :try_start_0
    iget-object v7, p0, Lcom/android/server/NetworkManagementService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    #@22
    invoke-virtual {v7, v1}, Lcom/android/server/NativeDaemonConnector;->execute(Lcom/android/server/NativeDaemonConnector$Command;)Lcom/android/server/NativeDaemonEvent;
    :try_end_0
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_0 .. :try_end_0} :catch_0

    #@25
    .line 1401
    return-void

    #@26
    .line 1412
    :cond_1
    invoke-virtual {v6}, Ljava/net/NetworkInterface;->getInterfaceAddresses()Ljava/util/List;

    #@29
    move-result-object v7

    #@2a
    .line 1411
    invoke-direct {p0, v7}, Lcom/android/server/NetworkManagementService;->excludeLinkLocal(Ljava/util/List;)Ljava/util/List;

    #@2d
    move-result-object v5

    #@2e
    .line 1413
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
    .line 1414
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
    .line 1416
    .local v3, "ia":Ljava/net/InterfaceAddress;
    invoke-virtual {v3}, Ljava/net/InterfaceAddress;->getAddress()Ljava/net/InetAddress;

    #@4c
    move-result-object v7

    #@4d
    invoke-virtual {v3}, Ljava/net/InterfaceAddress;->getNetworkPrefixLength()S

    #@50
    move-result v8

    #@51
    .line 1415
    invoke-static {v7, v8}, Landroid/net/NetworkUtils;->getNetworkPart(Ljava/net/InetAddress;I)Ljava/net/InetAddress;

    #@54
    move-result-object v0

    #@55
    .line 1417
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
    .line 1423
    .end local v0    # "addr":Ljava/net/InetAddress;
    .end local v3    # "ia":Ljava/net/InterfaceAddress;
    .end local v4    # "ia$iterator":Ljava/util/Iterator;
    .end local v5    # "interfaceAddresses":Ljava/util/List;, "Ljava/util/List<Ljava/net/InterfaceAddress;>;"
    :catch_0
    move-exception v2

    #@7a
    .line 1424
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
    .line 1081
    iget-object v2, p0, Lcom/android/server/NetworkManagementService;->mContext:Landroid/content/Context;

    #@2
    const-string/jumbo v3, "android.permission.CONNECTIVITY_INTERNAL"

    #@5
    const-string/jumbo v4, "NetworkManagement"

    #@8
    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    #@b
    .line 1083
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
    .line 1086
    .local v0, "cmd":Lcom/android/server/NativeDaemonConnector$Command;
    invoke-virtual {p3}, Landroid/net/RouteInfo;->getInterface()Ljava/lang/String;

    #@25
    move-result-object v2

    #@26
    invoke-virtual {v0, v2}, Lcom/android/server/NativeDaemonConnector$Command;->appendArg(Ljava/lang/Object;)Lcom/android/server/NativeDaemonConnector$Command;

    #@29
    .line 1087
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
    .line 1089
    invoke-virtual {p3}, Landroid/net/RouteInfo;->getType()I

    #@37
    move-result v2

    #@38
    sparse-switch v2, :sswitch_data_0

    #@3b
    .line 1104
    :cond_0
    :goto_0
    :try_start_0
    iget-object v2, p0, Lcom/android/server/NetworkManagementService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    #@3d
    invoke-virtual {v2, v0}, Lcom/android/server/NativeDaemonConnector;->execute(Lcom/android/server/NativeDaemonConnector$Command;)Lcom/android/server/NativeDaemonEvent;
    :try_end_0
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_0 .. :try_end_0} :catch_0

    #@40
    .line 1080
    return-void

    #@41
    .line 1091
    :sswitch_0
    invoke-virtual {p3}, Landroid/net/RouteInfo;->hasGateway()Z

    #@44
    move-result v2

    #@45
    if-eqz v2, :cond_0

    #@47
    .line 1092
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
    .line 1096
    :sswitch_1
    const-string/jumbo v2, "unreachable"

    #@56
    invoke-virtual {v0, v2}, Lcom/android/server/NativeDaemonConnector$Command;->appendArg(Ljava/lang/Object;)Lcom/android/server/NativeDaemonConnector$Command;

    #@59
    goto :goto_0

    #@5a
    .line 1099
    :sswitch_2
    const-string/jumbo v2, "throw"

    #@5d
    invoke-virtual {v0, v2}, Lcom/android/server/NativeDaemonConnector$Command;->appendArg(Ljava/lang/Object;)Lcom/android/server/NativeDaemonConnector$Command;

    #@60
    goto :goto_0

    #@61
    .line 1105
    :catch_0
    move-exception v1

    #@62
    .line 1106
    .local v1, "e":Lcom/android/server/NativeDaemonConnectorException;
    invoke-virtual {v1}, Lcom/android/server/NativeDaemonConnectorException;->rethrowAsParcelableException()Ljava/lang/IllegalArgumentException;

    #@65
    move-result-object v2

    #@66
    throw v2

    #@67
    .line 1089
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
    .locals 6
    .param p1, "iface"    # Ljava/lang/String;
    .param p2, "address"    # Landroid/net/LinkAddress;

    #@0
    .prologue
    .line 666
    iget-object v4, p0, Lcom/android/server/NetworkManagementService;->mObservers:Landroid/os/RemoteCallbackList;

    #@2
    invoke-virtual {v4}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    #@5
    move-result v3

    #@6
    .line 668
    .local v3, "length":I
    const/4 v2, 0x0

    #@7
    .local v2, "i":I
    :goto_0
    if-ge v2, v3, :cond_0

    #@9
    .line 670
    :try_start_0
    iget-object v4, p0, Lcom/android/server/NetworkManagementService;->mObservers:Landroid/os/RemoteCallbackList;

    #@b
    invoke-virtual {v4, v2}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    #@e
    move-result-object v4

    #@f
    check-cast v4, Landroid/net/INetworkManagementEventObserver;

    #@11
    invoke-interface {v4, p1, p2}, Landroid/net/INetworkManagementEventObserver;->addressRemoved(Ljava/lang/String;Landroid/net/LinkAddress;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@14
    .line 668
    :goto_1
    add-int/lit8 v2, v2, 0x1

    #@16
    goto :goto_0

    #@17
    .line 676
    :cond_0
    iget-object v4, p0, Lcom/android/server/NetworkManagementService;->mObservers:Landroid/os/RemoteCallbackList;

    #@19
    invoke-virtual {v4}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    #@1c
    .line 665
    return-void

    #@1d
    .line 675
    :catchall_0
    move-exception v4

    #@1e
    .line 676
    iget-object v5, p0, Lcom/android/server/NetworkManagementService;->mObservers:Landroid/os/RemoteCallbackList;

    #@20
    invoke-virtual {v5}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    #@23
    .line 675
    throw v4

    #@24
    .line 671
    :catch_0
    move-exception v0

    #@25
    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_1

    #@26
    .line 672
    .end local v0    # "e":Landroid/os/RemoteException;
    :catch_1
    move-exception v1

    #@27
    .local v1, "e":Ljava/lang/RuntimeException;
    goto :goto_1
.end method

.method private notifyAddressUpdated(Ljava/lang/String;Landroid/net/LinkAddress;)V
    .locals 6
    .param p1, "iface"    # Ljava/lang/String;
    .param p2, "address"    # Landroid/net/LinkAddress;

    #@0
    .prologue
    .line 648
    iget-object v4, p0, Lcom/android/server/NetworkManagementService;->mObservers:Landroid/os/RemoteCallbackList;

    #@2
    invoke-virtual {v4}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    #@5
    move-result v3

    #@6
    .line 650
    .local v3, "length":I
    const/4 v2, 0x0

    #@7
    .local v2, "i":I
    :goto_0
    if-ge v2, v3, :cond_0

    #@9
    .line 652
    :try_start_0
    iget-object v4, p0, Lcom/android/server/NetworkManagementService;->mObservers:Landroid/os/RemoteCallbackList;

    #@b
    invoke-virtual {v4, v2}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    #@e
    move-result-object v4

    #@f
    check-cast v4, Landroid/net/INetworkManagementEventObserver;

    #@11
    invoke-interface {v4, p1, p2}, Landroid/net/INetworkManagementEventObserver;->addressUpdated(Ljava/lang/String;Landroid/net/LinkAddress;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@14
    .line 650
    :goto_1
    add-int/lit8 v2, v2, 0x1

    #@16
    goto :goto_0

    #@17
    .line 658
    :cond_0
    iget-object v4, p0, Lcom/android/server/NetworkManagementService;->mObservers:Landroid/os/RemoteCallbackList;

    #@19
    invoke-virtual {v4}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    #@1c
    .line 647
    return-void

    #@1d
    .line 657
    :catchall_0
    move-exception v4

    #@1e
    .line 658
    iget-object v5, p0, Lcom/android/server/NetworkManagementService;->mObservers:Landroid/os/RemoteCallbackList;

    #@20
    invoke-virtual {v5}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    #@23
    .line 657
    throw v4

    #@24
    .line 653
    :catch_0
    move-exception v0

    #@25
    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_1

    #@26
    .line 654
    .end local v0    # "e":Landroid/os/RemoteException;
    :catch_1
    move-exception v1

    #@27
    .local v1, "e":Ljava/lang/RuntimeException;
    goto :goto_1
.end method

.method private notifyInterfaceAdded(Ljava/lang/String;)V
    .locals 6
    .param p1, "iface"    # Ljava/lang/String;

    #@0
    .prologue
    .line 391
    iget-object v4, p0, Lcom/android/server/NetworkManagementService;->mObservers:Landroid/os/RemoteCallbackList;

    #@2
    invoke-virtual {v4}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    #@5
    move-result v3

    #@6
    .line 393
    .local v3, "length":I
    const/4 v2, 0x0

    #@7
    .local v2, "i":I
    :goto_0
    if-ge v2, v3, :cond_0

    #@9
    .line 395
    :try_start_0
    iget-object v4, p0, Lcom/android/server/NetworkManagementService;->mObservers:Landroid/os/RemoteCallbackList;

    #@b
    invoke-virtual {v4, v2}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    #@e
    move-result-object v4

    #@f
    check-cast v4, Landroid/net/INetworkManagementEventObserver;

    #@11
    invoke-interface {v4, p1}, Landroid/net/INetworkManagementEventObserver;->interfaceAdded(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@14
    .line 393
    :goto_1
    add-int/lit8 v2, v2, 0x1

    #@16
    goto :goto_0

    #@17
    .line 401
    :cond_0
    iget-object v4, p0, Lcom/android/server/NetworkManagementService;->mObservers:Landroid/os/RemoteCallbackList;

    #@19
    invoke-virtual {v4}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    #@1c
    .line 390
    return-void

    #@1d
    .line 400
    :catchall_0
    move-exception v4

    #@1e
    .line 401
    iget-object v5, p0, Lcom/android/server/NetworkManagementService;->mObservers:Landroid/os/RemoteCallbackList;

    #@20
    invoke-virtual {v5}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    #@23
    .line 400
    throw v4

    #@24
    .line 396
    :catch_0
    move-exception v0

    #@25
    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_1

    #@26
    .line 397
    .end local v0    # "e":Landroid/os/RemoteException;
    :catch_1
    move-exception v1

    #@27
    .local v1, "e":Ljava/lang/RuntimeException;
    goto :goto_1
.end method

.method private notifyInterfaceClassActivity(IIJZ)V
    .locals 9
    .param p1, "type"    # I
    .param p2, "powerState"    # I
    .param p3, "tsNanos"    # J
    .param p5, "fromRadio"    # Z

    #@0
    .prologue
    .line 451
    invoke-static {p1}, Landroid/net/ConnectivityManager;->isNetworkTypeMobile(I)Z

    #@3
    move-result v4

    #@4
    .line 452
    .local v4, "isMobile":Z
    if-eqz v4, :cond_1

    #@6
    .line 453
    if-nez p5, :cond_6

    #@8
    .line 454
    iget-boolean v7, p0, Lcom/android/server/NetworkManagementService;->mMobileActivityFromRadio:Z

    #@a
    if-eqz v7, :cond_0

    #@c
    .line 458
    iget p2, p0, Lcom/android/server/NetworkManagementService;->mLastPowerStateFromRadio:I

    #@e
    .line 463
    :cond_0
    :goto_0
    iget v7, p0, Lcom/android/server/NetworkManagementService;->mLastPowerStateFromRadio:I

    #@10
    if-eq v7, p2, :cond_1

    #@12
    .line 464
    iput p2, p0, Lcom/android/server/NetworkManagementService;->mLastPowerStateFromRadio:I

    #@14
    .line 466
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/NetworkManagementService;->getBatteryStats()Lcom/android/internal/app/IBatteryStats;

    #@17
    move-result-object v7

    #@18
    invoke-interface {v7, p2, p3, p4}, Lcom/android/internal/app/IBatteryStats;->noteMobileRadioPowerState(IJ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_3

    #@1b
    .line 472
    :cond_1
    :goto_1
    invoke-static {p1}, Landroid/net/ConnectivityManager;->isNetworkTypeWifi(I)Z

    #@1e
    move-result v7

    #@1f
    if-eqz v7, :cond_2

    #@21
    .line 473
    iget v7, p0, Lcom/android/server/NetworkManagementService;->mLastPowerStateFromWifi:I

    #@23
    if-eq v7, p2, :cond_2

    #@25
    .line 474
    iput p2, p0, Lcom/android/server/NetworkManagementService;->mLastPowerStateFromWifi:I

    #@27
    .line 476
    :try_start_1
    invoke-direct {p0}, Lcom/android/server/NetworkManagementService;->getBatteryStats()Lcom/android/internal/app/IBatteryStats;

    #@2a
    move-result-object v7

    #@2b
    invoke-interface {v7, p2, p3, p4}, Lcom/android/internal/app/IBatteryStats;->noteWifiRadioPowerState(IJ)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_2

    #@2e
    .line 482
    :cond_2
    :goto_2
    sget v7, Landroid/telephony/DataConnectionRealTimeInfo;->DC_POWER_STATE_MEDIUM:I

    #@30
    if-eq p2, v7, :cond_7

    #@32
    .line 483
    sget v7, Landroid/telephony/DataConnectionRealTimeInfo;->DC_POWER_STATE_HIGH:I

    #@34
    if-ne p2, v7, :cond_8

    #@36
    const/4 v3, 0x1

    #@37
    .line 485
    .local v3, "isActive":Z
    :goto_3
    if-eqz v4, :cond_9

    #@39
    if-nez p5, :cond_9

    #@3b
    iget-boolean v7, p0, Lcom/android/server/NetworkManagementService;->mMobileActivityFromRadio:Z

    #@3d
    if-eqz v7, :cond_9

    #@3f
    .line 505
    :goto_4
    const/4 v6, 0x0

    #@40
    .line 506
    .local v6, "report":Z
    iget-object v8, p0, Lcom/android/server/NetworkManagementService;->mIdleTimerLock:Ljava/lang/Object;

    #@42
    monitor-enter v8

    #@43
    .line 507
    :try_start_2
    iget-object v7, p0, Lcom/android/server/NetworkManagementService;->mActiveIdleTimers:Ljava/util/HashMap;

    #@45
    invoke-virtual {v7}, Ljava/util/HashMap;->isEmpty()Z

    #@48
    move-result v7

    #@49
    if-eqz v7, :cond_3

    #@4b
    .line 510
    const/4 v3, 0x1

    #@4c
    .line 512
    :cond_3
    iget-boolean v7, p0, Lcom/android/server/NetworkManagementService;->mNetworkActive:Z

    #@4e
    if-eq v7, v3, :cond_4

    #@50
    .line 513
    iput-boolean v3, p0, Lcom/android/server/NetworkManagementService;->mNetworkActive:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    #@52
    .line 514
    move v6, v3

    #@53
    .end local v6    # "report":Z
    :cond_4
    monitor-exit v8

    #@54
    .line 517
    if-eqz v6, :cond_5

    #@56
    .line 518
    invoke-direct {p0}, Lcom/android/server/NetworkManagementService;->reportNetworkActive()V

    #@59
    .line 450
    :cond_5
    return-void

    #@5a
    .line 461
    .end local v3    # "isActive":Z
    :cond_6
    const/4 v7, 0x1

    #@5b
    iput-boolean v7, p0, Lcom/android/server/NetworkManagementService;->mMobileActivityFromRadio:Z

    #@5d
    goto :goto_0

    #@5e
    .line 482
    :cond_7
    const/4 v3, 0x1

    #@5f
    .restart local v3    # "isActive":Z
    goto :goto_3

    #@60
    .line 483
    .end local v3    # "isActive":Z
    :cond_8
    const/4 v3, 0x0

    #@61
    .restart local v3    # "isActive":Z
    goto :goto_3

    #@62
    .line 490
    :cond_9
    iget-object v7, p0, Lcom/android/server/NetworkManagementService;->mObservers:Landroid/os/RemoteCallbackList;

    #@64
    invoke-virtual {v7}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    #@67
    move-result v5

    #@68
    .line 492
    .local v5, "length":I
    const/4 v2, 0x0

    #@69
    .local v2, "i":I
    :goto_5
    if-ge v2, v5, :cond_a

    #@6b
    .line 494
    :try_start_3
    iget-object v7, p0, Lcom/android/server/NetworkManagementService;->mObservers:Landroid/os/RemoteCallbackList;

    #@6d
    invoke-virtual {v7, v2}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    #@70
    move-result-object v7

    #@71
    check-cast v7, Landroid/net/INetworkManagementEventObserver;

    #@73
    .line 495
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    #@76
    move-result-object v8

    #@77
    .line 494
    invoke-interface {v7, v8, v3, p3, p4}, Landroid/net/INetworkManagementEventObserver;->interfaceClassDataActivityChanged(Ljava/lang/String;ZJ)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@7a
    .line 492
    :goto_6
    add-int/lit8 v2, v2, 0x1

    #@7c
    goto :goto_5

    #@7d
    .line 501
    :cond_a
    iget-object v7, p0, Lcom/android/server/NetworkManagementService;->mObservers:Landroid/os/RemoteCallbackList;

    #@7f
    invoke-virtual {v7}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    #@82
    goto :goto_4

    #@83
    .line 500
    :catchall_0
    move-exception v7

    #@84
    .line 501
    iget-object v8, p0, Lcom/android/server/NetworkManagementService;->mObservers:Landroid/os/RemoteCallbackList;

    #@86
    invoke-virtual {v8}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    #@89
    .line 500
    throw v7

    #@8a
    .line 506
    .end local v2    # "i":I
    .end local v5    # "length":I
    .restart local v6    # "report":Z
    :catchall_1
    move-exception v7

    #@8b
    monitor-exit v8

    #@8c
    throw v7

    #@8d
    .line 496
    .end local v6    # "report":Z
    .restart local v2    # "i":I
    .restart local v5    # "length":I
    :catch_0
    move-exception v0

    #@8e
    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_6

    #@8f
    .line 497
    .end local v0    # "e":Landroid/os/RemoteException;
    :catch_1
    move-exception v1

    #@90
    .local v1, "e":Ljava/lang/RuntimeException;
    goto :goto_6

    #@91
    .line 477
    .end local v1    # "e":Ljava/lang/RuntimeException;
    .end local v2    # "i":I
    .end local v3    # "isActive":Z
    .end local v5    # "length":I
    :catch_2
    move-exception v0

    #@92
    .restart local v0    # "e":Landroid/os/RemoteException;
    goto :goto_2

    #@93
    .line 467
    .end local v0    # "e":Landroid/os/RemoteException;
    :catch_3
    move-exception v0

    #@94
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
    .line 684
    iget-object v4, p0, Lcom/android/server/NetworkManagementService;->mObservers:Landroid/os/RemoteCallbackList;

    #@2
    invoke-virtual {v4}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    #@5
    move-result v3

    #@6
    .line 686
    .local v3, "length":I
    const/4 v2, 0x0

    #@7
    .local v2, "i":I
    :goto_0
    if-ge v2, v3, :cond_0

    #@9
    .line 688
    :try_start_0
    iget-object v4, p0, Lcom/android/server/NetworkManagementService;->mObservers:Landroid/os/RemoteCallbackList;

    #@b
    invoke-virtual {v4, v2}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    #@e
    move-result-object v4

    #@f
    check-cast v4, Landroid/net/INetworkManagementEventObserver;

    #@11
    invoke-interface {v4, p1, p2, p3, p4}, Landroid/net/INetworkManagementEventObserver;->interfaceDnsServerInfo(Ljava/lang/String;J[Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@14
    .line 686
    :goto_1
    add-int/lit8 v2, v2, 0x1

    #@16
    goto :goto_0

    #@17
    .line 695
    :cond_0
    iget-object v4, p0, Lcom/android/server/NetworkManagementService;->mObservers:Landroid/os/RemoteCallbackList;

    #@19
    invoke-virtual {v4}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    #@1c
    .line 683
    return-void

    #@1d
    .line 694
    :catchall_0
    move-exception v4

    #@1e
    .line 695
    iget-object v5, p0, Lcom/android/server/NetworkManagementService;->mObservers:Landroid/os/RemoteCallbackList;

    #@20
    invoke-virtual {v5}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    #@23
    .line 694
    throw v4

    #@24
    .line 690
    :catch_0
    move-exception v0

    #@25
    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_1

    #@26
    .line 691
    .end local v0    # "e":Landroid/os/RemoteException;
    :catch_1
    move-exception v1

    #@27
    .local v1, "e":Ljava/lang/RuntimeException;
    goto :goto_1
.end method

.method private notifyInterfaceLinkStateChanged(Ljava/lang/String;Z)V
    .locals 6
    .param p1, "iface"    # Ljava/lang/String;
    .param p2, "up"    # Z

    #@0
    .prologue
    .line 373
    iget-object v4, p0, Lcom/android/server/NetworkManagementService;->mObservers:Landroid/os/RemoteCallbackList;

    #@2
    invoke-virtual {v4}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    #@5
    move-result v3

    #@6
    .line 375
    .local v3, "length":I
    const/4 v2, 0x0

    #@7
    .local v2, "i":I
    :goto_0
    if-ge v2, v3, :cond_0

    #@9
    .line 377
    :try_start_0
    iget-object v4, p0, Lcom/android/server/NetworkManagementService;->mObservers:Landroid/os/RemoteCallbackList;

    #@b
    invoke-virtual {v4, v2}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    #@e
    move-result-object v4

    #@f
    check-cast v4, Landroid/net/INetworkManagementEventObserver;

    #@11
    invoke-interface {v4, p1, p2}, Landroid/net/INetworkManagementEventObserver;->interfaceLinkStateChanged(Ljava/lang/String;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@14
    .line 375
    :goto_1
    add-int/lit8 v2, v2, 0x1

    #@16
    goto :goto_0

    #@17
    .line 383
    :cond_0
    iget-object v4, p0, Lcom/android/server/NetworkManagementService;->mObservers:Landroid/os/RemoteCallbackList;

    #@19
    invoke-virtual {v4}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    #@1c
    .line 372
    return-void

    #@1d
    .line 382
    :catchall_0
    move-exception v4

    #@1e
    .line 383
    iget-object v5, p0, Lcom/android/server/NetworkManagementService;->mObservers:Landroid/os/RemoteCallbackList;

    #@20
    invoke-virtual {v5}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    #@23
    .line 382
    throw v4

    #@24
    .line 378
    :catch_0
    move-exception v0

    #@25
    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_1

    #@26
    .line 379
    .end local v0    # "e":Landroid/os/RemoteException;
    :catch_1
    move-exception v1

    #@27
    .local v1, "e":Ljava/lang/RuntimeException;
    goto :goto_1
.end method

.method private notifyInterfaceRemoved(Ljava/lang/String;)V
    .locals 6
    .param p1, "iface"    # Ljava/lang/String;

    #@0
    .prologue
    .line 411
    iget-object v4, p0, Lcom/android/server/NetworkManagementService;->mActiveAlerts:Ljava/util/HashMap;

    #@2
    invoke-virtual {v4, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    #@5
    .line 412
    iget-object v4, p0, Lcom/android/server/NetworkManagementService;->mActiveQuotas:Ljava/util/HashMap;

    #@7
    invoke-virtual {v4, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    #@a
    .line 414
    iget-object v4, p0, Lcom/android/server/NetworkManagementService;->mObservers:Landroid/os/RemoteCallbackList;

    #@c
    invoke-virtual {v4}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    #@f
    move-result v3

    #@10
    .line 416
    .local v3, "length":I
    const/4 v2, 0x0

    #@11
    .local v2, "i":I
    :goto_0
    if-ge v2, v3, :cond_0

    #@13
    .line 418
    :try_start_0
    iget-object v4, p0, Lcom/android/server/NetworkManagementService;->mObservers:Landroid/os/RemoteCallbackList;

    #@15
    invoke-virtual {v4, v2}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    #@18
    move-result-object v4

    #@19
    check-cast v4, Landroid/net/INetworkManagementEventObserver;

    #@1b
    invoke-interface {v4, p1}, Landroid/net/INetworkManagementEventObserver;->interfaceRemoved(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1e
    .line 416
    :goto_1
    add-int/lit8 v2, v2, 0x1

    #@20
    goto :goto_0

    #@21
    .line 424
    :cond_0
    iget-object v4, p0, Lcom/android/server/NetworkManagementService;->mObservers:Landroid/os/RemoteCallbackList;

    #@23
    invoke-virtual {v4}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    #@26
    .line 408
    return-void

    #@27
    .line 423
    :catchall_0
    move-exception v4

    #@28
    .line 424
    iget-object v5, p0, Lcom/android/server/NetworkManagementService;->mObservers:Landroid/os/RemoteCallbackList;

    #@2a
    invoke-virtual {v5}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    #@2d
    .line 423
    throw v4

    #@2e
    .line 419
    :catch_0
    move-exception v0

    #@2f
    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_1

    #@30
    .line 420
    .end local v0    # "e":Landroid/os/RemoteException;
    :catch_1
    move-exception v1

    #@31
    .local v1, "e":Ljava/lang/RuntimeException;
    goto :goto_1
.end method

.method private notifyInterfaceStatusChanged(Ljava/lang/String;Z)V
    .locals 6
    .param p1, "iface"    # Ljava/lang/String;
    .param p2, "up"    # Z

    #@0
    .prologue
    .line 354
    iget-object v4, p0, Lcom/android/server/NetworkManagementService;->mObservers:Landroid/os/RemoteCallbackList;

    #@2
    invoke-virtual {v4}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    #@5
    move-result v3

    #@6
    .line 356
    .local v3, "length":I
    const/4 v2, 0x0

    #@7
    .local v2, "i":I
    :goto_0
    if-ge v2, v3, :cond_0

    #@9
    .line 358
    :try_start_0
    iget-object v4, p0, Lcom/android/server/NetworkManagementService;->mObservers:Landroid/os/RemoteCallbackList;

    #@b
    invoke-virtual {v4, v2}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    #@e
    move-result-object v4

    #@f
    check-cast v4, Landroid/net/INetworkManagementEventObserver;

    #@11
    invoke-interface {v4, p1, p2}, Landroid/net/INetworkManagementEventObserver;->interfaceStatusChanged(Ljava/lang/String;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@14
    .line 356
    :goto_1
    add-int/lit8 v2, v2, 0x1

    #@16
    goto :goto_0

    #@17
    .line 364
    :cond_0
    iget-object v4, p0, Lcom/android/server/NetworkManagementService;->mObservers:Landroid/os/RemoteCallbackList;

    #@19
    invoke-virtual {v4}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    #@1c
    .line 353
    return-void

    #@1d
    .line 363
    :catchall_0
    move-exception v4

    #@1e
    .line 364
    iget-object v5, p0, Lcom/android/server/NetworkManagementService;->mObservers:Landroid/os/RemoteCallbackList;

    #@20
    invoke-virtual {v5}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    #@23
    .line 363
    throw v4

    #@24
    .line 359
    :catch_0
    move-exception v0

    #@25
    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_1

    #@26
    .line 360
    .end local v0    # "e":Landroid/os/RemoteException;
    :catch_1
    move-exception v1

    #@27
    .local v1, "e":Ljava/lang/RuntimeException;
    goto :goto_1
.end method

.method private notifyLimitReached(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p1, "limitName"    # Ljava/lang/String;
    .param p2, "iface"    # Ljava/lang/String;

    #@0
    .prologue
    .line 432
    iget-object v4, p0, Lcom/android/server/NetworkManagementService;->mObservers:Landroid/os/RemoteCallbackList;

    #@2
    invoke-virtual {v4}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    #@5
    move-result v3

    #@6
    .line 434
    .local v3, "length":I
    const/4 v2, 0x0

    #@7
    .local v2, "i":I
    :goto_0
    if-ge v2, v3, :cond_0

    #@9
    .line 436
    :try_start_0
    iget-object v4, p0, Lcom/android/server/NetworkManagementService;->mObservers:Landroid/os/RemoteCallbackList;

    #@b
    invoke-virtual {v4, v2}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    #@e
    move-result-object v4

    #@f
    check-cast v4, Landroid/net/INetworkManagementEventObserver;

    #@11
    invoke-interface {v4, p1, p2}, Landroid/net/INetworkManagementEventObserver;->limitReached(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@14
    .line 434
    :goto_1
    add-int/lit8 v2, v2, 0x1

    #@16
    goto :goto_0

    #@17
    .line 442
    :cond_0
    iget-object v4, p0, Lcom/android/server/NetworkManagementService;->mObservers:Landroid/os/RemoteCallbackList;

    #@19
    invoke-virtual {v4}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    #@1c
    .line 431
    return-void

    #@1d
    .line 441
    :catchall_0
    move-exception v4

    #@1e
    .line 442
    iget-object v5, p0, Lcom/android/server/NetworkManagementService;->mObservers:Landroid/os/RemoteCallbackList;

    #@20
    invoke-virtual {v5}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    #@23
    .line 441
    throw v4

    #@24
    .line 437
    :catch_0
    move-exception v0

    #@25
    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_1

    #@26
    .line 438
    .end local v0    # "e":Landroid/os/RemoteException;
    :catch_1
    move-exception v1

    #@27
    .local v1, "e":Ljava/lang/RuntimeException;
    goto :goto_1
.end method

.method private notifyRouteChange(Ljava/lang/String;Landroid/net/RouteInfo;)V
    .locals 6
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "route"    # Landroid/net/RouteInfo;

    #@0
    .prologue
    .line 703
    iget-object v4, p0, Lcom/android/server/NetworkManagementService;->mObservers:Landroid/os/RemoteCallbackList;

    #@2
    invoke-virtual {v4}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    #@5
    move-result v3

    #@6
    .line 705
    .local v3, "length":I
    const/4 v2, 0x0

    #@7
    .local v2, "i":I
    :goto_0
    if-ge v2, v3, :cond_1

    #@9
    .line 707
    :try_start_0
    const-string/jumbo v4, "updated"

    #@c
    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@f
    move-result v4

    #@10
    if-eqz v4, :cond_0

    #@12
    .line 708
    iget-object v4, p0, Lcom/android/server/NetworkManagementService;->mObservers:Landroid/os/RemoteCallbackList;

    #@14
    invoke-virtual {v4, v2}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    #@17
    move-result-object v4

    #@18
    check-cast v4, Landroid/net/INetworkManagementEventObserver;

    #@1a
    invoke-interface {v4, p2}, Landroid/net/INetworkManagementEventObserver;->routeUpdated(Landroid/net/RouteInfo;)V

    #@1d
    .line 705
    :goto_1
    add-int/lit8 v2, v2, 0x1

    #@1f
    goto :goto_0

    #@20
    .line 710
    :cond_0
    iget-object v4, p0, Lcom/android/server/NetworkManagementService;->mObservers:Landroid/os/RemoteCallbackList;

    #@22
    invoke-virtual {v4, v2}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    #@25
    move-result-object v4

    #@26
    check-cast v4, Landroid/net/INetworkManagementEventObserver;

    #@28
    invoke-interface {v4, p2}, Landroid/net/INetworkManagementEventObserver;->routeRemoved(Landroid/net/RouteInfo;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@2b
    goto :goto_1

    #@2c
    .line 712
    :catch_0
    move-exception v0

    #@2d
    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_1

    #@2e
    .line 717
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_1
    iget-object v4, p0, Lcom/android/server/NetworkManagementService;->mObservers:Landroid/os/RemoteCallbackList;

    #@30
    invoke-virtual {v4}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    #@33
    .line 702
    return-void

    #@34
    .line 716
    :catchall_0
    move-exception v4

    #@35
    .line 717
    iget-object v5, p0, Lcom/android/server/NetworkManagementService;->mObservers:Landroid/os/RemoteCallbackList;

    #@37
    invoke-virtual {v5}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    #@3a
    .line 716
    throw v4

    #@3b
    .line 713
    :catch_1
    move-exception v1

    #@3c
    .local v1, "e":Ljava/lang/RuntimeException;
    goto :goto_1
.end method

.method private prepareNativeDaemon()V
    .locals 22

    #@0
    .prologue
    .line 527
    const/16 v16, 0x0

    #@2
    move/from16 v0, v16

    #@4
    move-object/from16 v1, p0

    #@6
    iput-boolean v0, v1, Lcom/android/server/NetworkManagementService;->mBandwidthControlEnabled:Z

    #@8
    .line 530
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
    .line 531
    .local v10, "hasKernelSupport":Z
    if-eqz v10, :cond_1

    #@16
    .line 532
    const-string/jumbo v16, "NetworkManagement"

    #@19
    const-string/jumbo v17, "enabling bandwidth control"

    #@1c
    invoke-static/range {v16 .. v17}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@1f
    .line 534
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
    .line 535
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
    .line 543
    :goto_0
    const-string/jumbo v17, "net.qtaguid_enabled"

    #@45
    move-object/from16 v0, p0

    #@47
    iget-boolean v0, v0, Lcom/android/server/NetworkManagementService;->mBandwidthControlEnabled:Z

    #@49
    move/from16 v16, v0

    #@4b
    if-eqz v16, :cond_2

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
    .line 545
    move-object/from16 v0, p0

    #@59
    iget-boolean v0, v0, Lcom/android/server/NetworkManagementService;->mBandwidthControlEnabled:Z

    #@5b
    move/from16 v16, v0

    #@5d
    if-eqz v16, :cond_0

    #@5f
    .line 547
    :try_start_1
    invoke-direct/range {p0 .. p0}, Lcom/android/server/NetworkManagementService;->getBatteryStats()Lcom/android/internal/app/IBatteryStats;

    #@62
    move-result-object v16

    #@63
    invoke-interface/range {v16 .. v16}, Lcom/android/internal/app/IBatteryStats;->noteNetworkStatsEnabled()V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_2

    #@66
    .line 553
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
    .line 554
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
    .line 560
    :goto_3
    move-object/from16 v0, p0

    #@8b
    iget-object v0, v0, Lcom/android/server/NetworkManagementService;->mQuotaLock:Ljava/lang/Object;

    #@8d
    move-object/from16 v18, v0

    #@8f
    monitor-enter v18

    #@90
    .line 561
    :try_start_3
    move-object/from16 v0, p0

    #@92
    iget-object v0, v0, Lcom/android/server/NetworkManagementService;->mActiveQuotas:Ljava/util/HashMap;

    #@94
    move-object/from16 v16, v0

    #@96
    invoke-virtual/range {v16 .. v16}, Ljava/util/HashMap;->size()I

    #@99
    move-result v13

    #@9a
    .line 562
    .local v13, "size":I
    if-lez v13, :cond_3

    #@9c
    .line 563
    const-string/jumbo v16, "NetworkManagement"

    #@9f
    new-instance v17, Ljava/lang/StringBuilder;

    #@a1
    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    #@a4
    const-string/jumbo v19, "Pushing "

    #@a7
    move-object/from16 v0, v17

    #@a9
    move-object/from16 v1, v19

    #@ab
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@ae
    move-result-object v17

    #@af
    move-object/from16 v0, v17

    #@b1
    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@b4
    move-result-object v17

    #@b5
    const-string/jumbo v19, " active quota rules"

    #@b8
    move-object/from16 v0, v17

    #@ba
    move-object/from16 v1, v19

    #@bc
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@bf
    move-result-object v17

    #@c0
    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@c3
    move-result-object v17

    #@c4
    invoke-static/range {v16 .. v17}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@c7
    .line 564
    move-object/from16 v0, p0

    #@c9
    iget-object v5, v0, Lcom/android/server/NetworkManagementService;->mActiveQuotas:Ljava/util/HashMap;

    #@cb
    .line 565
    .local v5, "activeQuotas":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Long;>;"
    invoke-static {}, Lcom/google/android/collect/Maps;->newHashMap()Ljava/util/HashMap;

    #@ce
    move-result-object v16

    #@cf
    move-object/from16 v0, v16

    #@d1
    move-object/from16 v1, p0

    #@d3
    iput-object v0, v1, Lcom/android/server/NetworkManagementService;->mActiveQuotas:Ljava/util/HashMap;

    #@d5
    .line 566
    invoke-virtual {v5}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    #@d8
    move-result-object v16

    #@d9
    invoke-interface/range {v16 .. v16}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@dc
    move-result-object v9

    #@dd
    .local v9, "entry$iterator":Ljava/util/Iterator;
    :goto_4
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    #@e0
    move-result v16

    #@e1
    if-eqz v16, :cond_3

    #@e3
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@e6
    move-result-object v8

    #@e7
    check-cast v8, Ljava/util/Map$Entry;

    #@e9
    .line 567
    .local v8, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Long;>;"
    invoke-interface {v8}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    #@ec
    move-result-object v16

    #@ed
    check-cast v16, Ljava/lang/String;

    #@ef
    invoke-interface {v8}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    #@f2
    move-result-object v17

    #@f3
    check-cast v17, Ljava/lang/Long;

    #@f5
    invoke-virtual/range {v17 .. v17}, Ljava/lang/Long;->longValue()J

    #@f8
    move-result-wide v20

    #@f9
    move-object/from16 v0, p0

    #@fb
    move-object/from16 v1, v16

    #@fd
    move-wide/from16 v2, v20

    #@ff
    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/NetworkManagementService;->setInterfaceQuota(Ljava/lang/String;J)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@102
    goto :goto_4

    #@103
    .line 560
    .end local v5    # "activeQuotas":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Long;>;"
    .end local v8    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Long;>;"
    .end local v9    # "entry$iterator":Ljava/util/Iterator;
    .end local v13    # "size":I
    :catchall_0
    move-exception v16

    #@104
    monitor-exit v18

    #@105
    throw v16

    #@106
    .line 536
    :catch_0
    move-exception v7

    #@107
    .line 537
    .local v7, "e":Lcom/android/server/NativeDaemonConnectorException;
    const-string/jumbo v16, "NetworkManagement"

    #@10a
    const-string/jumbo v17, "problem enabling bandwidth controls"

    #@10d
    move-object/from16 v0, v16

    #@10f
    move-object/from16 v1, v17

    #@111
    invoke-static {v0, v1, v7}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@114
    goto/16 :goto_0

    #@116
    .line 540
    .end local v7    # "e":Lcom/android/server/NativeDaemonConnectorException;
    :cond_1
    const-string/jumbo v16, "NetworkManagement"

    #@119
    const-string/jumbo v17, "not enabling bandwidth control"

    #@11c
    invoke-static/range {v16 .. v17}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@11f
    goto/16 :goto_0

    #@121
    .line 543
    :cond_2
    const-string/jumbo v16, "0"

    #@124
    goto/16 :goto_1

    #@126
    .line 555
    :catch_1
    move-exception v7

    #@127
    .line 556
    .restart local v7    # "e":Lcom/android/server/NativeDaemonConnectorException;
    const-string/jumbo v16, "NetworkManagement"

    #@12a
    const-string/jumbo v17, "Failed strict enable"

    #@12d
    move-object/from16 v0, v16

    #@12f
    move-object/from16 v1, v17

    #@131
    invoke-static {v0, v1, v7}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@134
    goto/16 :goto_3

    #@136
    .line 571
    .end local v7    # "e":Lcom/android/server/NativeDaemonConnectorException;
    .restart local v13    # "size":I
    :cond_3
    :try_start_4
    move-object/from16 v0, p0

    #@138
    iget-object v0, v0, Lcom/android/server/NetworkManagementService;->mActiveAlerts:Ljava/util/HashMap;

    #@13a
    move-object/from16 v16, v0

    #@13c
    invoke-virtual/range {v16 .. v16}, Ljava/util/HashMap;->size()I

    #@13f
    move-result v13

    #@140
    .line 572
    if-lez v13, :cond_4

    #@142
    .line 573
    const-string/jumbo v16, "NetworkManagement"

    #@145
    new-instance v17, Ljava/lang/StringBuilder;

    #@147
    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    #@14a
    const-string/jumbo v19, "Pushing "

    #@14d
    move-object/from16 v0, v17

    #@14f
    move-object/from16 v1, v19

    #@151
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@154
    move-result-object v17

    #@155
    move-object/from16 v0, v17

    #@157
    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@15a
    move-result-object v17

    #@15b
    const-string/jumbo v19, " active alert rules"

    #@15e
    move-object/from16 v0, v17

    #@160
    move-object/from16 v1, v19

    #@162
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@165
    move-result-object v17

    #@166
    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@169
    move-result-object v17

    #@16a
    invoke-static/range {v16 .. v17}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@16d
    .line 574
    move-object/from16 v0, p0

    #@16f
    iget-object v4, v0, Lcom/android/server/NetworkManagementService;->mActiveAlerts:Ljava/util/HashMap;

    #@171
    .line 575
    .local v4, "activeAlerts":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Long;>;"
    invoke-static {}, Lcom/google/android/collect/Maps;->newHashMap()Ljava/util/HashMap;

    #@174
    move-result-object v16

    #@175
    move-object/from16 v0, v16

    #@177
    move-object/from16 v1, p0

    #@179
    iput-object v0, v1, Lcom/android/server/NetworkManagementService;->mActiveAlerts:Ljava/util/HashMap;

    #@17b
    .line 576
    invoke-virtual {v4}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    #@17e
    move-result-object v16

    #@17f
    invoke-interface/range {v16 .. v16}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@182
    move-result-object v9

    #@183
    .restart local v9    # "entry$iterator":Ljava/util/Iterator;
    :goto_5
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    #@186
    move-result v16

    #@187
    if-eqz v16, :cond_4

    #@189
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@18c
    move-result-object v8

    #@18d
    check-cast v8, Ljava/util/Map$Entry;

    #@18f
    .line 577
    .restart local v8    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Long;>;"
    invoke-interface {v8}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    #@192
    move-result-object v16

    #@193
    check-cast v16, Ljava/lang/String;

    #@195
    invoke-interface {v8}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    #@198
    move-result-object v17

    #@199
    check-cast v17, Ljava/lang/Long;

    #@19b
    invoke-virtual/range {v17 .. v17}, Ljava/lang/Long;->longValue()J

    #@19e
    move-result-wide v20

    #@19f
    move-object/from16 v0, p0

    #@1a1
    move-object/from16 v1, v16

    #@1a3
    move-wide/from16 v2, v20

    #@1a5
    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/NetworkManagementService;->setInterfaceAlert(Ljava/lang/String;J)V

    #@1a8
    goto :goto_5

    #@1a9
    .line 581
    .end local v4    # "activeAlerts":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Long;>;"
    .end local v8    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Long;>;"
    .end local v9    # "entry$iterator":Ljava/util/Iterator;
    :cond_4
    move-object/from16 v0, p0

    #@1ab
    iget-object v0, v0, Lcom/android/server/NetworkManagementService;->mUidRejectOnQuota:Landroid/util/SparseBooleanArray;

    #@1ad
    move-object/from16 v16, v0

    #@1af
    invoke-virtual/range {v16 .. v16}, Landroid/util/SparseBooleanArray;->size()I

    #@1b2
    move-result v13

    #@1b3
    .line 582
    if-lez v13, :cond_5

    #@1b5
    .line 583
    const-string/jumbo v16, "NetworkManagement"

    #@1b8
    new-instance v17, Ljava/lang/StringBuilder;

    #@1ba
    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    #@1bd
    const-string/jumbo v19, "Pushing "

    #@1c0
    move-object/from16 v0, v17

    #@1c2
    move-object/from16 v1, v19

    #@1c4
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1c7
    move-result-object v17

    #@1c8
    move-object/from16 v0, v17

    #@1ca
    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@1cd
    move-result-object v17

    #@1ce
    const-string/jumbo v19, " active UID rules"

    #@1d1
    move-object/from16 v0, v17

    #@1d3
    move-object/from16 v1, v19

    #@1d5
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1d8
    move-result-object v17

    #@1d9
    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1dc
    move-result-object v17

    #@1dd
    invoke-static/range {v16 .. v17}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@1e0
    .line 584
    move-object/from16 v0, p0

    #@1e2
    iget-object v15, v0, Lcom/android/server/NetworkManagementService;->mUidRejectOnQuota:Landroid/util/SparseBooleanArray;

    #@1e4
    .line 585
    .local v15, "uidRejectOnQuota":Landroid/util/SparseBooleanArray;
    new-instance v16, Landroid/util/SparseBooleanArray;

    #@1e6
    invoke-direct/range {v16 .. v16}, Landroid/util/SparseBooleanArray;-><init>()V

    #@1e9
    move-object/from16 v0, v16

    #@1eb
    move-object/from16 v1, p0

    #@1ed
    iput-object v0, v1, Lcom/android/server/NetworkManagementService;->mUidRejectOnQuota:Landroid/util/SparseBooleanArray;

    #@1ef
    .line 586
    const/4 v11, 0x0

    #@1f0
    .local v11, "i":I
    :goto_6
    invoke-virtual {v15}, Landroid/util/SparseBooleanArray;->size()I

    #@1f3
    move-result v16

    #@1f4
    move/from16 v0, v16

    #@1f6
    if-ge v11, v0, :cond_5

    #@1f8
    .line 587
    invoke-virtual {v15, v11}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    #@1fb
    move-result v16

    #@1fc
    invoke-virtual {v15, v11}, Landroid/util/SparseBooleanArray;->valueAt(I)Z

    #@1ff
    move-result v17

    #@200
    move-object/from16 v0, p0

    #@202
    move/from16 v1, v16

    #@204
    move/from16 v2, v17

    #@206
    invoke-virtual {v0, v1, v2}, Lcom/android/server/NetworkManagementService;->setUidNetworkRules(IZ)V

    #@209
    .line 586
    add-int/lit8 v11, v11, 0x1

    #@20b
    goto :goto_6

    #@20c
    .line 591
    .end local v11    # "i":I
    .end local v15    # "uidRejectOnQuota":Landroid/util/SparseBooleanArray;
    :cond_5
    move-object/from16 v0, p0

    #@20e
    iget-object v0, v0, Lcom/android/server/NetworkManagementService;->mUidCleartextPolicy:Landroid/util/SparseIntArray;

    #@210
    move-object/from16 v16, v0

    #@212
    invoke-virtual/range {v16 .. v16}, Landroid/util/SparseIntArray;->size()I

    #@215
    move-result v13

    #@216
    .line 592
    if-lez v13, :cond_6

    #@218
    .line 593
    const-string/jumbo v16, "NetworkManagement"

    #@21b
    new-instance v17, Ljava/lang/StringBuilder;

    #@21d
    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    #@220
    const-string/jumbo v19, "Pushing "

    #@223
    move-object/from16 v0, v17

    #@225
    move-object/from16 v1, v19

    #@227
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@22a
    move-result-object v17

    #@22b
    move-object/from16 v0, v17

    #@22d
    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@230
    move-result-object v17

    #@231
    const-string/jumbo v19, " active UID cleartext policies"

    #@234
    move-object/from16 v0, v17

    #@236
    move-object/from16 v1, v19

    #@238
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@23b
    move-result-object v17

    #@23c
    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@23f
    move-result-object v17

    #@240
    invoke-static/range {v16 .. v17}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@243
    .line 594
    move-object/from16 v0, p0

    #@245
    iget-object v12, v0, Lcom/android/server/NetworkManagementService;->mUidCleartextPolicy:Landroid/util/SparseIntArray;

    #@247
    .line 595
    .local v12, "local":Landroid/util/SparseIntArray;
    new-instance v16, Landroid/util/SparseIntArray;

    #@249
    invoke-direct/range {v16 .. v16}, Landroid/util/SparseIntArray;-><init>()V

    #@24c
    move-object/from16 v0, v16

    #@24e
    move-object/from16 v1, p0

    #@250
    iput-object v0, v1, Lcom/android/server/NetworkManagementService;->mUidCleartextPolicy:Landroid/util/SparseIntArray;

    #@252
    .line 596
    const/4 v11, 0x0

    #@253
    .restart local v11    # "i":I
    :goto_7
    invoke-virtual {v12}, Landroid/util/SparseIntArray;->size()I

    #@256
    move-result v16

    #@257
    move/from16 v0, v16

    #@259
    if-ge v11, v0, :cond_6

    #@25b
    .line 597
    invoke-virtual {v12, v11}, Landroid/util/SparseIntArray;->keyAt(I)I

    #@25e
    move-result v16

    #@25f
    invoke-virtual {v12, v11}, Landroid/util/SparseIntArray;->valueAt(I)I

    #@262
    move-result v17

    #@263
    move-object/from16 v0, p0

    #@265
    move/from16 v1, v16

    #@267
    move/from16 v2, v17

    #@269
    invoke-virtual {v0, v1, v2}, Lcom/android/server/NetworkManagementService;->setUidCleartextNetworkPolicy(II)V

    #@26c
    .line 596
    add-int/lit8 v11, v11, 0x1

    #@26e
    goto :goto_7

    #@26f
    .line 601
    .end local v11    # "i":I
    .end local v12    # "local":Landroid/util/SparseIntArray;
    :cond_6
    move-object/from16 v0, p0

    #@271
    iget-boolean v0, v0, Lcom/android/server/NetworkManagementService;->mFirewallEnabled:Z

    #@273
    move/from16 v16, v0

    #@275
    if-nez v16, :cond_7

    #@277
    invoke-static {}, Lcom/android/server/net/LockdownVpnTracker;->isEnabled()Z

    #@27a
    move-result v16

    #@27b
    :goto_8
    move-object/from16 v0, p0

    #@27d
    move/from16 v1, v16

    #@27f
    invoke-virtual {v0, v1}, Lcom/android/server/NetworkManagementService;->setFirewallEnabled(Z)V

    #@282
    .line 603
    move-object/from16 v0, p0

    #@284
    iget-object v0, v0, Lcom/android/server/NetworkManagementService;->mUidFirewallRules:Landroid/util/SparseIntArray;

    #@286
    move-object/from16 v16, v0

    #@288
    invoke-virtual/range {v16 .. v16}, Landroid/util/SparseIntArray;->size()I

    #@28b
    move-result v13

    #@28c
    .line 604
    if-lez v13, :cond_8

    #@28e
    .line 605
    const-string/jumbo v16, "NetworkManagement"

    #@291
    new-instance v17, Ljava/lang/StringBuilder;

    #@293
    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    #@296
    const-string/jumbo v19, "Pushing "

    #@299
    move-object/from16 v0, v17

    #@29b
    move-object/from16 v1, v19

    #@29d
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2a0
    move-result-object v17

    #@2a1
    move-object/from16 v0, v17

    #@2a3
    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@2a6
    move-result-object v17

    #@2a7
    const-string/jumbo v19, " active firewall UID rules"

    #@2aa
    move-object/from16 v0, v17

    #@2ac
    move-object/from16 v1, v19

    #@2ae
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2b1
    move-result-object v17

    #@2b2
    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2b5
    move-result-object v17

    #@2b6
    invoke-static/range {v16 .. v17}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@2b9
    .line 606
    move-object/from16 v0, p0

    #@2bb
    iget-object v14, v0, Lcom/android/server/NetworkManagementService;->mUidFirewallRules:Landroid/util/SparseIntArray;

    #@2bd
    .line 607
    .local v14, "uidFirewallRules":Landroid/util/SparseIntArray;
    new-instance v16, Landroid/util/SparseIntArray;

    #@2bf
    invoke-direct/range {v16 .. v16}, Landroid/util/SparseIntArray;-><init>()V

    #@2c2
    move-object/from16 v0, v16

    #@2c4
    move-object/from16 v1, p0

    #@2c6
    iput-object v0, v1, Lcom/android/server/NetworkManagementService;->mUidFirewallRules:Landroid/util/SparseIntArray;

    #@2c8
    .line 608
    const/4 v11, 0x0

    #@2c9
    .restart local v11    # "i":I
    :goto_9
    invoke-virtual {v14}, Landroid/util/SparseIntArray;->size()I

    #@2cc
    move-result v16

    #@2cd
    move/from16 v0, v16

    #@2cf
    if-ge v11, v0, :cond_8

    #@2d1
    .line 609
    invoke-virtual {v14, v11}, Landroid/util/SparseIntArray;->keyAt(I)I

    #@2d4
    move-result v16

    #@2d5
    .line 610
    invoke-virtual {v14, v11}, Landroid/util/SparseIntArray;->valueAt(I)I

    #@2d8
    move-result v17

    #@2d9
    .line 609
    const/16 v19, 0x0

    #@2db
    move-object/from16 v0, p0

    #@2dd
    move/from16 v1, v19

    #@2df
    move/from16 v2, v16

    #@2e1
    move/from16 v3, v17

    #@2e3
    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/NetworkManagementService;->setFirewallUidRuleInternal(III)V

    #@2e6
    .line 608
    add-int/lit8 v11, v11, 0x1

    #@2e8
    goto :goto_9

    #@2e9
    .line 601
    .end local v11    # "i":I
    .end local v14    # "uidFirewallRules":Landroid/util/SparseIntArray;
    :cond_7
    const/16 v16, 0x1

    #@2eb
    goto :goto_8

    #@2ec
    .line 614
    :cond_8
    move-object/from16 v0, p0

    #@2ee
    iget-object v0, v0, Lcom/android/server/NetworkManagementService;->mUidFirewallStandbyRules:Landroid/util/SparseIntArray;

    #@2f0
    move-object/from16 v16, v0

    #@2f2
    invoke-virtual/range {v16 .. v16}, Landroid/util/SparseIntArray;->size()I

    #@2f5
    move-result v13

    #@2f6
    .line 615
    if-lez v13, :cond_9

    #@2f8
    .line 616
    const-string/jumbo v16, "NetworkManagement"

    #@2fb
    new-instance v17, Ljava/lang/StringBuilder;

    #@2fd
    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    #@300
    const-string/jumbo v19, "Pushing "

    #@303
    move-object/from16 v0, v17

    #@305
    move-object/from16 v1, v19

    #@307
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@30a
    move-result-object v17

    #@30b
    move-object/from16 v0, v17

    #@30d
    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@310
    move-result-object v17

    #@311
    const-string/jumbo v19, " active firewall standby UID rules"

    #@314
    move-object/from16 v0, v17

    #@316
    move-object/from16 v1, v19

    #@318
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@31b
    move-result-object v17

    #@31c
    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@31f
    move-result-object v17

    #@320
    invoke-static/range {v16 .. v17}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@323
    .line 617
    move-object/from16 v0, p0

    #@325
    iget-object v14, v0, Lcom/android/server/NetworkManagementService;->mUidFirewallStandbyRules:Landroid/util/SparseIntArray;

    #@327
    .line 618
    .restart local v14    # "uidFirewallRules":Landroid/util/SparseIntArray;
    new-instance v16, Landroid/util/SparseIntArray;

    #@329
    invoke-direct/range {v16 .. v16}, Landroid/util/SparseIntArray;-><init>()V

    #@32c
    move-object/from16 v0, v16

    #@32e
    move-object/from16 v1, p0

    #@330
    iput-object v0, v1, Lcom/android/server/NetworkManagementService;->mUidFirewallStandbyRules:Landroid/util/SparseIntArray;

    #@332
    .line 619
    const/4 v11, 0x0

    #@333
    .restart local v11    # "i":I
    :goto_a
    invoke-virtual {v14}, Landroid/util/SparseIntArray;->size()I

    #@336
    move-result v16

    #@337
    move/from16 v0, v16

    #@339
    if-ge v11, v0, :cond_9

    #@33b
    .line 620
    invoke-virtual {v14, v11}, Landroid/util/SparseIntArray;->keyAt(I)I

    #@33e
    move-result v16

    #@33f
    .line 621
    invoke-virtual {v14, v11}, Landroid/util/SparseIntArray;->valueAt(I)I

    #@342
    move-result v17

    #@343
    .line 620
    const/16 v19, 0x2

    #@345
    move-object/from16 v0, p0

    #@347
    move/from16 v1, v19

    #@349
    move/from16 v2, v16

    #@34b
    move/from16 v3, v17

    #@34d
    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/NetworkManagementService;->setFirewallUidRuleInternal(III)V

    #@350
    .line 619
    add-int/lit8 v11, v11, 0x1

    #@352
    goto :goto_a

    #@353
    .line 624
    .end local v11    # "i":I
    .end local v14    # "uidFirewallRules":Landroid/util/SparseIntArray;
    :cond_9
    move-object/from16 v0, p0

    #@355
    iget-object v0, v0, Lcom/android/server/NetworkManagementService;->mFirewallChainStates:Landroid/util/SparseBooleanArray;

    #@357
    move-object/from16 v16, v0

    #@359
    const/16 v17, 0x2

    #@35b
    invoke-virtual/range {v16 .. v17}, Landroid/util/SparseBooleanArray;->get(I)Z

    #@35e
    move-result v16

    #@35f
    if-eqz v16, :cond_a

    #@361
    .line 625
    const/16 v16, 0x2

    #@363
    const/16 v17, 0x1

    #@365
    move-object/from16 v0, p0

    #@367
    move/from16 v1, v16

    #@369
    move/from16 v2, v17

    #@36b
    invoke-virtual {v0, v1, v2}, Lcom/android/server/NetworkManagementService;->setFirewallChainEnabled(IZ)V

    #@36e
    .line 628
    :cond_a
    move-object/from16 v0, p0

    #@370
    iget-object v0, v0, Lcom/android/server/NetworkManagementService;->mUidFirewallDozableRules:Landroid/util/SparseIntArray;

    #@372
    move-object/from16 v16, v0

    #@374
    invoke-virtual/range {v16 .. v16}, Landroid/util/SparseIntArray;->size()I

    #@377
    move-result v13

    #@378
    .line 629
    if-lez v13, :cond_b

    #@37a
    .line 630
    const-string/jumbo v16, "NetworkManagement"

    #@37d
    new-instance v17, Ljava/lang/StringBuilder;

    #@37f
    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    #@382
    const-string/jumbo v19, "Pushing "

    #@385
    move-object/from16 v0, v17

    #@387
    move-object/from16 v1, v19

    #@389
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@38c
    move-result-object v17

    #@38d
    move-object/from16 v0, v17

    #@38f
    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@392
    move-result-object v17

    #@393
    const-string/jumbo v19, " active firewall dozable UID rules"

    #@396
    move-object/from16 v0, v17

    #@398
    move-object/from16 v1, v19

    #@39a
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@39d
    move-result-object v17

    #@39e
    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3a1
    move-result-object v17

    #@3a2
    invoke-static/range {v16 .. v17}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@3a5
    .line 631
    move-object/from16 v0, p0

    #@3a7
    iget-object v14, v0, Lcom/android/server/NetworkManagementService;->mUidFirewallDozableRules:Landroid/util/SparseIntArray;

    #@3a9
    .line 632
    .restart local v14    # "uidFirewallRules":Landroid/util/SparseIntArray;
    new-instance v16, Landroid/util/SparseIntArray;

    #@3ab
    invoke-direct/range {v16 .. v16}, Landroid/util/SparseIntArray;-><init>()V

    #@3ae
    move-object/from16 v0, v16

    #@3b0
    move-object/from16 v1, p0

    #@3b2
    iput-object v0, v1, Lcom/android/server/NetworkManagementService;->mUidFirewallDozableRules:Landroid/util/SparseIntArray;

    #@3b4
    .line 633
    const/4 v11, 0x0

    #@3b5
    .restart local v11    # "i":I
    :goto_b
    invoke-virtual {v14}, Landroid/util/SparseIntArray;->size()I

    #@3b8
    move-result v16

    #@3b9
    move/from16 v0, v16

    #@3bb
    if-ge v11, v0, :cond_b

    #@3bd
    .line 634
    invoke-virtual {v14, v11}, Landroid/util/SparseIntArray;->keyAt(I)I

    #@3c0
    move-result v16

    #@3c1
    .line 635
    invoke-virtual {v14, v11}, Landroid/util/SparseIntArray;->valueAt(I)I

    #@3c4
    move-result v17

    #@3c5
    .line 634
    const/16 v19, 0x1

    #@3c7
    move-object/from16 v0, p0

    #@3c9
    move/from16 v1, v19

    #@3cb
    move/from16 v2, v16

    #@3cd
    move/from16 v3, v17

    #@3cf
    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/NetworkManagementService;->setFirewallUidRuleInternal(III)V

    #@3d2
    .line 633
    add-int/lit8 v11, v11, 0x1

    #@3d4
    goto :goto_b

    #@3d5
    .line 638
    .end local v11    # "i":I
    .end local v14    # "uidFirewallRules":Landroid/util/SparseIntArray;
    :cond_b
    move-object/from16 v0, p0

    #@3d7
    iget-object v0, v0, Lcom/android/server/NetworkManagementService;->mFirewallChainStates:Landroid/util/SparseBooleanArray;

    #@3d9
    move-object/from16 v16, v0

    #@3db
    const/16 v17, 0x1

    #@3dd
    invoke-virtual/range {v16 .. v17}, Landroid/util/SparseBooleanArray;->get(I)Z

    #@3e0
    move-result v16

    #@3e1
    if-eqz v16, :cond_c

    #@3e3
    .line 639
    const/16 v16, 0x1

    #@3e5
    const/16 v17, 0x1

    #@3e7
    move-object/from16 v0, p0

    #@3e9
    move/from16 v1, v16

    #@3eb
    move/from16 v2, v17

    #@3ed
    invoke-virtual {v0, v1, v2}, Lcom/android/server/NetworkManagementService;->setFirewallChainEnabled(IZ)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    #@3f0
    :cond_c
    monitor-exit v18

    #@3f1
    .line 526
    return-void

    #@3f2
    .line 548
    .end local v13    # "size":I
    :catch_2
    move-exception v6

    #@3f3
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
    .line 1111
    const/4 v2, 0x0

    #@1
    .line 1112
    .local v2, "fstream":Ljava/io/FileInputStream;
    new-instance v5, Ljava/util/ArrayList;

    #@3
    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    #@6
    .line 1115
    .local v5, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :try_start_0
    new-instance v3, Ljava/io/FileInputStream;

    #@8
    invoke-direct {v3, p1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@b
    .line 1116
    .end local v2    # "fstream":Ljava/io/FileInputStream;
    .local v3, "fstream":Ljava/io/FileInputStream;
    :try_start_1
    new-instance v4, Ljava/io/DataInputStream;

    #@d
    invoke-direct {v4, v3}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    #@10
    .line 1117
    .local v4, "in":Ljava/io/DataInputStream;
    new-instance v0, Ljava/io/BufferedReader;

    #@12
    new-instance v7, Ljava/io/InputStreamReader;

    #@14
    invoke-direct {v7, v4}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    #@17
    invoke-direct {v0, v7}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    #@1a
    .line 1122
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
    .line 1123
    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    #@29
    goto :goto_0

    #@2a
    .line 1125
    .end local v0    # "br":Ljava/io/BufferedReader;
    .end local v4    # "in":Ljava/io/DataInputStream;
    .end local v6    # "s":Ljava/lang/String;
    :catch_0
    move-exception v1

    #@2b
    .local v1, "ex":Ljava/io/IOException;
    move-object v2, v3

    #@2c
    .line 1128
    .end local v3    # "fstream":Ljava/io/FileInputStream;
    :goto_1
    if-eqz v2, :cond_0

    #@2e
    .line 1130
    :try_start_2
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    #@31
    .line 1135
    .end local v1    # "ex":Ljava/io/IOException;
    :cond_0
    :goto_2
    return-object v5

    #@32
    .line 1128
    .restart local v0    # "br":Ljava/io/BufferedReader;
    .restart local v3    # "fstream":Ljava/io/FileInputStream;
    .restart local v4    # "in":Ljava/io/DataInputStream;
    .restart local v6    # "s":Ljava/lang/String;
    :cond_1
    if-eqz v3, :cond_2

    #@34
    .line 1130
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
    .line 1131
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
    .line 1127
    .end local v1    # "ex":Ljava/io/IOException;
    .local v2, "fstream":Ljava/io/FileInputStream;
    :catchall_0
    move-exception v7

    #@3e
    .line 1128
    .end local v2    # "fstream":Ljava/io/FileInputStream;
    :goto_4
    if-eqz v2, :cond_3

    #@40
    .line 1130
    :try_start_4
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    #@43
    .line 1127
    :cond_3
    :goto_5
    throw v7

    #@44
    .line 1131
    :catch_3
    move-exception v1

    #@45
    .restart local v1    # "ex":Ljava/io/IOException;
    goto :goto_5

    #@46
    .line 1127
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
    .line 1125
    .local v2, "fstream":Ljava/io/FileInputStream;
    :catch_4
    move-exception v1

    #@4a
    .restart local v1    # "ex":Ljava/io/IOException;
    goto :goto_1
.end method

.method private reportNetworkActive()V
    .locals 6

    #@0
    .prologue
    .line 2240
    iget-object v4, p0, Lcom/android/server/NetworkManagementService;->mNetworkActivityListeners:Landroid/os/RemoteCallbackList;

    #@2
    invoke-virtual {v4}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    #@5
    move-result v3

    #@6
    .line 2242
    .local v3, "length":I
    const/4 v2, 0x0

    #@7
    .local v2, "i":I
    :goto_0
    if-ge v2, v3, :cond_0

    #@9
    .line 2244
    :try_start_0
    iget-object v4, p0, Lcom/android/server/NetworkManagementService;->mNetworkActivityListeners:Landroid/os/RemoteCallbackList;

    #@b
    invoke-virtual {v4, v2}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    #@e
    move-result-object v4

    #@f
    check-cast v4, Landroid/os/INetworkActivityListener;

    #@11
    invoke-interface {v4}, Landroid/os/INetworkActivityListener;->onNetworkActive()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@14
    .line 2242
    :goto_1
    add-int/lit8 v2, v2, 0x1

    #@16
    goto :goto_0

    #@17
    .line 2250
    :cond_0
    iget-object v4, p0, Lcom/android/server/NetworkManagementService;->mNetworkActivityListeners:Landroid/os/RemoteCallbackList;

    #@19
    invoke-virtual {v4}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    #@1c
    .line 2239
    return-void

    #@1d
    .line 2249
    :catchall_0
    move-exception v4

    #@1e
    .line 2250
    iget-object v5, p0, Lcom/android/server/NetworkManagementService;->mNetworkActivityListeners:Landroid/os/RemoteCallbackList;

    #@20
    invoke-virtual {v5}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    #@23
    .line 2249
    throw v4

    #@24
    .line 2245
    :catch_0
    move-exception v0

    #@25
    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_1

    #@26
    .line 2246
    .end local v0    # "e":Landroid/os/RemoteException;
    :catch_1
    move-exception v1

    #@27
    .local v1, "e":Ljava/lang/RuntimeException;
    goto :goto_1
.end method

.method private setFirewallUidRuleInternal(III)V
    .locals 11
    .param p1, "chain"    # I
    .param p2, "uid"    # I
    .param p3, "rule"    # I

    #@0
    .prologue
    .line 2100
    iget-object v6, p0, Lcom/android/server/NetworkManagementService;->mQuotaLock:Ljava/lang/Object;

    #@2
    monitor-enter v6

    #@3
    .line 2101
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/NetworkManagementService;->getUidFirewallRules(I)Landroid/util/SparseIntArray;

    #@6
    move-result-object v4

    #@7
    .line 2103
    .local v4, "uidFirewallRules":Landroid/util/SparseIntArray;
    const/4 v5, 0x0

    #@8
    invoke-virtual {v4, p2, v5}, Landroid/util/SparseIntArray;->get(II)I

    #@b
    move-result v2

    #@c
    .line 2104
    .local v2, "oldUidFirewallRule":I
    sget-boolean v5, Lcom/android/server/NetworkManagementService;->DBG:Z

    #@e
    if-eqz v5, :cond_0

    #@10
    .line 2105
    const-string/jumbo v5, "NetworkManagement"

    #@13
    new-instance v7, Ljava/lang/StringBuilder;

    #@15
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    #@18
    const-string/jumbo v8, "oldRule = "

    #@1b
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1e
    move-result-object v7

    #@1f
    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@22
    move-result-object v7

    #@23
    .line 2106
    const-string/jumbo v8, ", newRule="

    #@26
    .line 2105
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@29
    move-result-object v7

    #@2a
    invoke-virtual {v7, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@2d
    move-result-object v7

    #@2e
    .line 2106
    const-string/jumbo v8, " for uid="

    #@31
    .line 2105
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@34
    move-result-object v7

    #@35
    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@38
    move-result-object v7

    #@39
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3c
    move-result-object v7

    #@3d
    invoke-static {v5, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@40
    .line 2108
    :cond_0
    if-ne v2, p3, :cond_2

    #@42
    .line 2109
    sget-boolean v5, Lcom/android/server/NetworkManagementService;->DBG:Z

    #@44
    if-eqz v5, :cond_1

    #@46
    const-string/jumbo v5, "NetworkManagement"

    #@49
    const-string/jumbo v7, "!!!!! Skipping change"

    #@4c
    invoke-static {v5, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@4f
    :cond_1
    monitor-exit v6

    #@50
    .line 2111
    return-void

    #@51
    .line 2115
    :cond_2
    :try_start_1
    invoke-direct {p0, p1, p3}, Lcom/android/server/NetworkManagementService;->getFirewallRuleName(II)Ljava/lang/String;

    #@54
    move-result-object v3

    #@55
    .line 2116
    .local v3, "ruleName":Ljava/lang/String;
    invoke-direct {p0, p1, v2}, Lcom/android/server/NetworkManagementService;->getFirewallRuleName(II)Ljava/lang/String;

    #@58
    move-result-object v1

    #@59
    .line 2118
    .local v1, "oldRuleName":Ljava/lang/String;
    if-nez p3, :cond_4

    #@5b
    .line 2119
    invoke-virtual {v4, p2}, Landroid/util/SparseIntArray;->delete(I)V

    #@5e
    .line 2124
    :goto_0
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@61
    move-result v5

    #@62
    if-nez v5, :cond_3

    #@64
    .line 2125
    iget-object v5, p0, Lcom/android/server/NetworkManagementService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    #@66
    const-string/jumbo v7, "firewall"

    #@69
    const/4 v8, 0x4

    #@6a
    new-array v8, v8, [Ljava/lang/Object;

    #@6c
    const-string/jumbo v9, "set_uid_rule"

    #@6f
    const/4 v10, 0x0

    #@70
    aput-object v9, v8, v10

    #@72
    invoke-virtual {p0, p1}, Lcom/android/server/NetworkManagementService;->getFirewallChainName(I)Ljava/lang/String;

    #@75
    move-result-object v9

    #@76
    const/4 v10, 0x1

    #@77
    aput-object v9, v8, v10

    #@79
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@7c
    move-result-object v9

    #@7d
    const/4 v10, 0x2

    #@7e
    aput-object v9, v8, v10

    #@80
    .line 2126
    const/4 v9, 0x3

    #@81
    aput-object v3, v8, v9

    #@83
    .line 2125
    invoke-virtual {v5, v7, v8}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;
    :try_end_1
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@86
    :cond_3
    monitor-exit v6

    #@87
    .line 2099
    return-void

    #@88
    .line 2121
    :cond_4
    :try_start_2
    invoke-virtual {v4, p2, p3}, Landroid/util/SparseIntArray;->put(II)V
    :try_end_2
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@8b
    goto :goto_0

    #@8c
    .line 2128
    .end local v1    # "oldRuleName":Ljava/lang/String;
    .end local v3    # "ruleName":Ljava/lang/String;
    :catch_0
    move-exception v0

    #@8d
    .line 2129
    .local v0, "e":Lcom/android/server/NativeDaemonConnectorException;
    :try_start_3
    invoke-virtual {v0}, Lcom/android/server/NativeDaemonConnectorException;->rethrowAsParcelableException()Ljava/lang/IllegalArgumentException;

    #@90
    move-result-object v5

    #@91
    throw v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@92
    .line 2100
    .end local v0    # "e":Lcom/android/server/NativeDaemonConnectorException;
    .end local v2    # "oldUidFirewallRule":I
    .end local v4    # "uidFirewallRules":Landroid/util/SparseIntArray;
    :catchall_0
    move-exception v5

    #@93
    monitor-exit v6

    #@94
    throw v5
.end method


# virtual methods
.method public addIdleTimer(Ljava/lang/String;II)V
    .locals 8
    .param p1, "iface"    # Ljava/lang/String;
    .param p2, "timeout"    # I
    .param p3, "type"    # I

    #@0
    .prologue
    .line 1554
    iget-object v2, p0, Lcom/android/server/NetworkManagementService;->mContext:Landroid/content/Context;

    #@2
    const-string/jumbo v3, "android.permission.CONNECTIVITY_INTERNAL"

    #@5
    const-string/jumbo v4, "NetworkManagement"

    #@8
    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    #@b
    .line 1556
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
    .line 1558
    :cond_0
    iget-object v3, p0, Lcom/android/server/NetworkManagementService;->mIdleTimerLock:Ljava/lang/Object;

    #@1a
    monitor-enter v3

    #@1b
    .line 1559
    :try_start_0
    iget-object v2, p0, Lcom/android/server/NetworkManagementService;->mActiveIdleTimers:Ljava/util/HashMap;

    #@1d
    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@20
    move-result-object v1

    #@21
    check-cast v1, Lcom/android/server/NetworkManagementService$IdleTimerParams;

    #@23
    .line 1560
    .local v1, "params":Lcom/android/server/NetworkManagementService$IdleTimerParams;
    if-eqz v1, :cond_1

    #@25
    .line 1562
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
    .line 1563
    return-void

    #@2d
    .line 1567
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
    .line 1568
    invoke-static {p3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    #@48
    move-result-object v6

    #@49
    const/4 v7, 0x3

    #@4a
    aput-object v6, v5, v7

    #@4c
    .line 1567
    invoke-virtual {v2, v4, v5}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;
    :try_end_1
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@4f
    .line 1572
    :try_start_2
    iget-object v2, p0, Lcom/android/server/NetworkManagementService;->mActiveIdleTimers:Ljava/util/HashMap;

    #@51
    new-instance v4, Lcom/android/server/NetworkManagementService$IdleTimerParams;

    #@53
    invoke-direct {v4, p2, p3}, Lcom/android/server/NetworkManagementService$IdleTimerParams;-><init>(II)V

    #@56
    invoke-virtual {v2, p1, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@59
    .line 1575
    invoke-static {p3}, Landroid/net/ConnectivityManager;->isNetworkTypeMobile(I)Z

    #@5c
    move-result v2

    #@5d
    if-eqz v2, :cond_2

    #@5f
    .line 1576
    const/4 v2, 0x0

    #@60
    iput-boolean v2, p0, Lcom/android/server/NetworkManagementService;->mNetworkActive:Z

    #@62
    .line 1578
    :cond_2
    iget-object v2, p0, Lcom/android/server/NetworkManagementService;->mDaemonHandler:Landroid/os/Handler;

    #@64
    new-instance v4, Lcom/android/server/NetworkManagementService$2;

    #@66
    invoke-direct {v4, p0, p3}, Lcom/android/server/NetworkManagementService$2;-><init>(Lcom/android/server/NetworkManagementService;I)V

    #@69
    invoke-virtual {v2, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@6c
    monitor-exit v3

    #@6d
    .line 1553
    return-void

    #@6e
    .line 1569
    :catch_0
    move-exception v0

    #@6f
    .line 1570
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
    .line 1558
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
    .line 2531
    .local p2, "routes":Ljava/util/List;, "Ljava/util/List<Landroid/net/RouteInfo;>;"
    const-string/jumbo v2, "add"

    #@3
    const-string/jumbo v3, "local"

    #@6
    invoke-direct {p0, v2, v3, p1}, Lcom/android/server/NetworkManagementService;->modifyInterfaceInNetwork(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    #@9
    .line 2533
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
    .line 2534
    .local v0, "route":Landroid/net/RouteInfo;
    invoke-virtual {v0}, Landroid/net/RouteInfo;->isDefaultRoute()Z

    #@1c
    move-result v2

    #@1d
    if-nez v2, :cond_0

    #@1f
    .line 2535
    const-string/jumbo v2, "add"

    #@22
    const-string/jumbo v3, "local"

    #@25
    invoke-direct {p0, v2, v3, v0}, Lcom/android/server/NetworkManagementService;->modifyRoute(Ljava/lang/String;Ljava/lang/String;Landroid/net/RouteInfo;)V

    #@28
    goto :goto_0

    #@29
    .line 2530
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
    .line 2384
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
    .line 2383
    return-void
.end method

.method public addLegacyRouteForNetId(ILandroid/net/RouteInfo;I)V
    .locals 7
    .param p1, "netId"    # I
    .param p2, "routeInfo"    # Landroid/net/RouteInfo;
    .param p3, "uid"    # I

    #@0
    .prologue
    .line 2403
    iget-object v3, p0, Lcom/android/server/NetworkManagementService;->mContext:Landroid/content/Context;

    #@2
    const-string/jumbo v4, "android.permission.CONNECTIVITY_INTERNAL"

    #@5
    const-string/jumbo v5, "NetworkManagement"

    #@8
    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    #@b
    .line 2405
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
    .line 2408
    .local v0, "cmd":Lcom/android/server/NativeDaemonConnector$Command;
    invoke-virtual {p2}, Landroid/net/RouteInfo;->getDestinationLinkAddress()Landroid/net/LinkAddress;

    #@39
    move-result-object v2

    #@3a
    .line 2409
    .local v2, "la":Landroid/net/LinkAddress;
    invoke-virtual {p2}, Landroid/net/RouteInfo;->getInterface()Ljava/lang/String;

    #@3d
    move-result-object v3

    #@3e
    invoke-virtual {v0, v3}, Lcom/android/server/NativeDaemonConnector$Command;->appendArg(Ljava/lang/Object;)Lcom/android/server/NativeDaemonConnector$Command;

    #@41
    .line 2410
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
    .line 2411
    invoke-virtual {p2}, Landroid/net/RouteInfo;->hasGateway()Z

    #@6b
    move-result v3

    #@6c
    if-eqz v3, :cond_0

    #@6e
    .line 2412
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
    .line 2416
    :cond_0
    :try_start_0
    iget-object v3, p0, Lcom/android/server/NetworkManagementService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    #@7b
    invoke-virtual {v3, v0}, Lcom/android/server/NativeDaemonConnector;->execute(Lcom/android/server/NativeDaemonConnector$Command;)Lcom/android/server/NativeDaemonEvent;
    :try_end_0
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_0 .. :try_end_0} :catch_0

    #@7e
    .line 2402
    return-void

    #@7f
    .line 2417
    :catch_0
    move-exception v1

    #@80
    .line 2418
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
    .line 1072
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
    .line 1071
    return-void
.end method

.method public addVpnUidRanges(I[Landroid/net/UidRange;)V
    .locals 8
    .param p1, "netId"    # I
    .param p2, "ranges"    # [Landroid/net/UidRange;

    #@0
    .prologue
    .line 1917
    iget-object v5, p0, Lcom/android/server/NetworkManagementService;->mContext:Landroid/content/Context;

    #@2
    const-string/jumbo v6, "android.permission.CONNECTIVITY_INTERNAL"

    #@5
    const-string/jumbo v7, "NetworkManagement"

    #@8
    invoke-virtual {v5, v6, v7}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    #@b
    .line 1918
    const/16 v5, 0xd

    #@d
    new-array v2, v5, [Ljava/lang/Object;

    #@f
    .line 1919
    .local v2, "argv":[Ljava/lang/Object;
    const-string/jumbo v5, "users"

    #@12
    const/4 v6, 0x0

    #@13
    aput-object v5, v2, v6

    #@15
    .line 1920
    const-string/jumbo v5, "add"

    #@18
    const/4 v6, 0x1

    #@19
    aput-object v5, v2, v6

    #@1b
    .line 1921
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@1e
    move-result-object v5

    #@1f
    const/4 v6, 0x2

    #@20
    aput-object v5, v2, v6

    #@22
    .line 1922
    const/4 v0, 0x3

    #@23
    .line 1924
    .local v0, "argc":I
    const/4 v4, 0x0

    #@24
    .local v4, "i":I
    :goto_0
    array-length v5, p2

    #@25
    if-ge v4, v5, :cond_2

    #@27
    .line 1925
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
    .line 1926
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
    .line 1928
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
    .line 1932
    const/4 v0, 0x3

    #@46
    .line 1924
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
    .line 1926
    .end local v1    # "argc":I
    .restart local v0    # "argc":I
    goto :goto_1

    #@4b
    .line 1929
    .end local v0    # "argc":I
    .restart local v1    # "argc":I
    :catch_0
    move-exception v3

    #@4c
    .line 1930
    .local v3, "e":Lcom/android/server/NativeDaemonConnectorException;
    invoke-virtual {v3}, Lcom/android/server/NativeDaemonConnectorException;->rethrowAsParcelableException()Ljava/lang/IllegalArgumentException;

    #@4f
    move-result-object v5

    #@50
    throw v5

    #@51
    .line 1916
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
    .line 2509
    iget-object v1, p0, Lcom/android/server/NetworkManagementService;->mContext:Landroid/content/Context;

    #@2
    const-string/jumbo v2, "android.permission.CONNECTIVITY_INTERNAL"

    #@5
    const-string/jumbo v3, "NetworkManagement"

    #@8
    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    #@b
    .line 2512
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
    .line 2508
    return-void

    #@2a
    .line 2513
    :catch_0
    move-exception v0

    #@2b
    .line 2514
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
    .line 1462
    iget-object v1, p0, Lcom/android/server/NetworkManagementService;->mContext:Landroid/content/Context;

    #@2
    const-string/jumbo v2, "android.permission.CONNECTIVITY_INTERNAL"

    #@5
    const-string/jumbo v3, "NetworkManagement"

    #@8
    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    #@b
    .line 1464
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
    .line 1465
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
    .line 1466
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
    .line 1467
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
    .line 1468
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
    .line 1464
    invoke-virtual {v1, v2, v3}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;
    :try_end_0
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_0 .. :try_end_0} :catch_0

    #@4b
    .line 1461
    return-void

    #@4c
    .line 1469
    :catch_0
    move-exception v0

    #@4d
    .line 1470
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
    .line 2435
    iget-object v1, p0, Lcom/android/server/NetworkManagementService;->mContext:Landroid/content/Context;

    #@2
    const-string/jumbo v2, "android.permission.CONNECTIVITY_INTERNAL"

    #@5
    const-string/jumbo v3, "NetworkManagement"

    #@8
    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    #@b
    .line 2438
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
    .line 2434
    return-void

    #@23
    .line 2439
    :catch_0
    move-exception v0

    #@24
    .line 2440
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
    .line 1031
    iget-object v1, p0, Lcom/android/server/NetworkManagementService;->mContext:Landroid/content/Context;

    #@2
    const-string/jumbo v2, "android.permission.CONNECTIVITY_INTERNAL"

    #@5
    const-string/jumbo v3, "NetworkManagement"

    #@8
    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    #@b
    .line 1033
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
    .line 1030
    return-void

    #@20
    .line 1034
    :catch_0
    move-exception v0

    #@21
    .line 1035
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
    .line 2486
    iget-object v5, p0, Lcom/android/server/NetworkManagementService;->mContext:Landroid/content/Context;

    #@2
    const-string/jumbo v6, "android.permission.CONNECTIVITY_INTERNAL"

    #@5
    const-string/jumbo v7, "NetworkManagement"

    #@8
    invoke-virtual {v5, v6, v7}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    #@b
    .line 2488
    const/16 v5, 0xd

    #@d
    new-array v2, v5, [Ljava/lang/Object;

    #@f
    .line 2489
    .local v2, "argv":[Ljava/lang/Object;
    const-string/jumbo v5, "permission"

    #@12
    const/4 v6, 0x0

    #@13
    aput-object v5, v2, v6

    #@15
    .line 2490
    const-string/jumbo v5, "user"

    #@18
    const/4 v6, 0x1

    #@19
    aput-object v5, v2, v6

    #@1b
    .line 2491
    const-string/jumbo v5, "clear"

    #@1e
    const/4 v6, 0x2

    #@1f
    aput-object v5, v2, v6

    #@21
    .line 2492
    const/4 v0, 0x3

    #@22
    .line 2494
    .local v0, "argc":I
    const/4 v4, 0x0

    #@23
    .local v4, "i":I
    :goto_0
    array-length v5, p1

    #@24
    if-ge v4, v5, :cond_2

    #@26
    .line 2495
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
    .line 2496
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
    .line 2498
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
    .line 2502
    const/4 v0, 0x3

    #@45
    .line 2494
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
    .line 2496
    .end local v1    # "argc":I
    .restart local v0    # "argc":I
    goto :goto_1

    #@4a
    .line 2499
    .end local v0    # "argc":I
    .restart local v1    # "argc":I
    :catch_0
    move-exception v3

    #@4b
    .line 2500
    .local v3, "e":Lcom/android/server/NativeDaemonConnectorException;
    invoke-virtual {v3}, Lcom/android/server/NativeDaemonConnectorException;->rethrowAsParcelableException()Ljava/lang/IllegalArgumentException;

    #@4e
    move-result-object v5

    #@4f
    throw v5

    #@50
    .line 2485
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
    .line 2346
    iget-object v1, p0, Lcom/android/server/NetworkManagementService;->mContext:Landroid/content/Context;

    #@2
    const-string/jumbo v2, "android.permission.CONNECTIVITY_INTERNAL"

    #@5
    const-string/jumbo v3, "NetworkManagement"

    #@8
    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    #@b
    .line 2349
    if-eqz p2, :cond_0

    #@d
    .line 2350
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
    .line 2345
    :goto_0
    return-void

    #@29
    .line 2352
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
    .line 2354
    :catch_0
    move-exception v0

    #@43
    .line 2355
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
    .line 2361
    iget-object v1, p0, Lcom/android/server/NetworkManagementService;->mContext:Landroid/content/Context;

    #@2
    const-string/jumbo v2, "android.permission.CONNECTIVITY_INTERNAL"

    #@5
    const-string/jumbo v3, "NetworkManagement"

    #@8
    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    #@b
    .line 2364
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
    .line 2365
    if-eqz p3, :cond_1

    #@30
    const-string/jumbo v1, "1"

    #@33
    :goto_1
    const/4 v5, 0x4

    #@34
    aput-object v1, v4, v5

    #@36
    .line 2364
    invoke-virtual {v2, v3, v4}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;

    #@39
    .line 2360
    return-void

    #@3a
    .line 2364
    :cond_0
    const-string/jumbo v1, "0"

    #@3d
    goto :goto_0

    #@3e
    .line 2365
    :cond_1
    const-string/jumbo v1, "0"
    :try_end_0
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_0 .. :try_end_0} :catch_0

    #@41
    goto :goto_1

    #@42
    .line 2366
    :catch_0
    move-exception v0

    #@43
    .line 2367
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
    .line 2520
    iget-object v1, p0, Lcom/android/server/NetworkManagementService;->mContext:Landroid/content/Context;

    #@2
    const-string/jumbo v2, "android.permission.CONNECTIVITY_INTERNAL"

    #@5
    const-string/jumbo v3, "NetworkManagement"

    #@8
    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    #@b
    .line 2523
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
    .line 2519
    return-void

    #@2a
    .line 2524
    :catch_0
    move-exception v0

    #@2b
    .line 2525
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
    .line 1476
    iget-object v1, p0, Lcom/android/server/NetworkManagementService;->mContext:Landroid/content/Context;

    #@2
    const-string/jumbo v2, "android.permission.CONNECTIVITY_INTERNAL"

    #@5
    const-string/jumbo v3, "NetworkManagement"

    #@8
    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    #@b
    .line 1478
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
    .line 1475
    return-void

    #@20
    .line 1479
    :catch_0
    move-exception v0

    #@21
    .line 1480
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
    .line 1051
    iget-object v1, p0, Lcom/android/server/NetworkManagementService;->mContext:Landroid/content/Context;

    #@2
    const-string/jumbo v2, "android.permission.CONNECTIVITY_INTERNAL"

    #@5
    const-string/jumbo v3, "NetworkManagement"

    #@8
    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    #@b
    .line 1053
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
    .line 1050
    return-void

    #@26
    .line 1054
    :catch_0
    move-exception v0

    #@27
    .line 1055
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
    .line 1440
    iget-object v1, p0, Lcom/android/server/NetworkManagementService;->mContext:Landroid/content/Context;

    #@2
    const-string/jumbo v2, "android.permission.CONNECTIVITY_INTERNAL"

    #@5
    const-string/jumbo v3, "NetworkManagement"

    #@8
    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    #@b
    .line 1442
    :try_start_0
    const-string/jumbo v1, "disable"

    #@e
    invoke-direct {p0, v1, p1, p2}, Lcom/android/server/NetworkManagementService;->modifyNat(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_0} :catch_0

    #@11
    .line 1439
    return-void

    #@12
    .line 1443
    :catch_0
    move-exception v0

    #@13
    .line 1444
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
    .line 2264
    iget-object v5, p0, Lcom/android/server/NetworkManagementService;->mContext:Landroid/content/Context;

    #@2
    const-string/jumbo v6, "android.permission.DUMP"

    #@5
    const-string/jumbo v7, "NetworkManagement"

    #@8
    invoke-virtual {v5, v6, v7}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    #@b
    .line 2266
    const-string/jumbo v5, "NetworkManagementService NativeDaemonConnector Log:"

    #@e
    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@11
    .line 2267
    iget-object v5, p0, Lcom/android/server/NetworkManagementService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    #@13
    invoke-virtual {v5, p1, p2, p3}, Lcom/android/server/NativeDaemonConnector;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    #@16
    .line 2268
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    #@19
    .line 2270
    const-string/jumbo v5, "Bandwidth control enabled: "

    #@1c
    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@1f
    iget-boolean v5, p0, Lcom/android/server/NetworkManagementService;->mBandwidthControlEnabled:Z

    #@21
    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Z)V

    #@24
    .line 2271
    const-string/jumbo v5, "mMobileActivityFromRadio="

    #@27
    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@2a
    iget-boolean v5, p0, Lcom/android/server/NetworkManagementService;->mMobileActivityFromRadio:Z

    #@2c
    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Z)V

    #@2f
    .line 2272
    const-string/jumbo v5, " mLastPowerStateFromRadio="

    #@32
    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@35
    iget v5, p0, Lcom/android/server/NetworkManagementService;->mLastPowerStateFromRadio:I

    #@37
    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(I)V

    #@3a
    .line 2273
    const-string/jumbo v5, "mNetworkActive="

    #@3d
    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@40
    iget-boolean v5, p0, Lcom/android/server/NetworkManagementService;->mNetworkActive:Z

    #@42
    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Z)V

    #@45
    .line 2275
    iget-object v6, p0, Lcom/android/server/NetworkManagementService;->mQuotaLock:Ljava/lang/Object;

    #@47
    monitor-enter v6

    #@48
    .line 2276
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
    .line 2277
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
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@66
    monitor-exit v6

    #@67
    .line 2280
    iget-object v6, p0, Lcom/android/server/NetworkManagementService;->mUidRejectOnQuota:Landroid/util/SparseBooleanArray;

    #@69
    monitor-enter v6

    #@6a
    .line 2281
    :try_start_1
    const-string/jumbo v5, "UID reject on quota ifaces: ["

    #@6d
    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@70
    .line 2282
    iget-object v5, p0, Lcom/android/server/NetworkManagementService;->mUidRejectOnQuota:Landroid/util/SparseBooleanArray;

    #@72
    invoke-virtual {v5}, Landroid/util/SparseBooleanArray;->size()I

    #@75
    move-result v4

    #@76
    .line 2283
    .local v4, "size":I
    const/4 v2, 0x0

    #@77
    .local v2, "i":I
    :goto_0
    if-ge v2, v4, :cond_1

    #@79
    .line 2284
    iget-object v5, p0, Lcom/android/server/NetworkManagementService;->mUidRejectOnQuota:Landroid/util/SparseBooleanArray;

    #@7b
    invoke-virtual {v5, v2}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    #@7e
    move-result v5

    #@7f
    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(I)V

    #@82
    .line 2285
    add-int/lit8 v5, v4, -0x1

    #@84
    if-ge v2, v5, :cond_0

    #@86
    const-string/jumbo v5, ","

    #@89
    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    #@8c
    .line 2283
    :cond_0
    add-int/lit8 v2, v2, 0x1

    #@8e
    goto :goto_0

    #@8f
    .line 2275
    .end local v2    # "i":I
    .end local v4    # "size":I
    :catchall_0
    move-exception v5

    #@90
    monitor-exit v6

    #@91
    throw v5

    #@92
    .line 2287
    .restart local v2    # "i":I
    .restart local v4    # "size":I
    :cond_1
    :try_start_2
    const-string/jumbo v5, "]"

    #@95
    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    #@98
    monitor-exit v6

    #@99
    .line 2290
    iget-object v6, p0, Lcom/android/server/NetworkManagementService;->mUidFirewallRules:Landroid/util/SparseIntArray;

    #@9b
    monitor-enter v6

    #@9c
    .line 2291
    :try_start_3
    const-string/jumbo v5, "UID firewall rule: ["

    #@9f
    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@a2
    .line 2292
    iget-object v5, p0, Lcom/android/server/NetworkManagementService;->mUidFirewallRules:Landroid/util/SparseIntArray;

    #@a4
    invoke-virtual {v5}, Landroid/util/SparseIntArray;->size()I

    #@a7
    move-result v4

    #@a8
    .line 2293
    const/4 v2, 0x0

    #@a9
    :goto_1
    if-ge v2, v4, :cond_3

    #@ab
    .line 2294
    iget-object v5, p0, Lcom/android/server/NetworkManagementService;->mUidFirewallRules:Landroid/util/SparseIntArray;

    #@ad
    invoke-virtual {v5, v2}, Landroid/util/SparseIntArray;->keyAt(I)I

    #@b0
    move-result v5

    #@b1
    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(I)V

    #@b4
    .line 2295
    const-string/jumbo v5, ":"

    #@b7
    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@ba
    .line 2296
    iget-object v5, p0, Lcom/android/server/NetworkManagementService;->mUidFirewallRules:Landroid/util/SparseIntArray;

    #@bc
    invoke-virtual {v5, v2}, Landroid/util/SparseIntArray;->valueAt(I)I

    #@bf
    move-result v5

    #@c0
    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(I)V

    #@c3
    .line 2297
    add-int/lit8 v5, v4, -0x1

    #@c5
    if-ge v2, v5, :cond_2

    #@c7
    const-string/jumbo v5, ","

    #@ca
    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    #@cd
    .line 2293
    :cond_2
    add-int/lit8 v2, v2, 0x1

    #@cf
    goto :goto_1

    #@d0
    .line 2280
    .end local v2    # "i":I
    .end local v4    # "size":I
    :catchall_1
    move-exception v5

    #@d1
    monitor-exit v6

    #@d2
    throw v5

    #@d3
    .line 2299
    .restart local v2    # "i":I
    .restart local v4    # "size":I
    :cond_3
    :try_start_4
    const-string/jumbo v5, "]"

    #@d6
    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    #@d9
    monitor-exit v6

    #@da
    .line 2302
    new-instance v5, Ljava/lang/StringBuilder;

    #@dc
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@df
    const-string/jumbo v6, "UID firewall standby chain enabled: "

    #@e2
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@e5
    move-result-object v5

    #@e6
    .line 2303
    iget-object v6, p0, Lcom/android/server/NetworkManagementService;->mFirewallChainStates:Landroid/util/SparseBooleanArray;

    #@e8
    const/4 v7, 0x2

    #@e9
    invoke-virtual {v6, v7}, Landroid/util/SparseBooleanArray;->get(I)Z

    #@ec
    move-result v6

    #@ed
    .line 2302
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@f0
    move-result-object v5

    #@f1
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@f4
    move-result-object v5

    #@f5
    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@f8
    .line 2304
    iget-object v6, p0, Lcom/android/server/NetworkManagementService;->mUidFirewallStandbyRules:Landroid/util/SparseIntArray;

    #@fa
    monitor-enter v6

    #@fb
    .line 2305
    :try_start_5
    const-string/jumbo v5, "UID firewall standby rule: ["

    #@fe
    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@101
    .line 2306
    iget-object v5, p0, Lcom/android/server/NetworkManagementService;->mUidFirewallStandbyRules:Landroid/util/SparseIntArray;

    #@103
    invoke-virtual {v5}, Landroid/util/SparseIntArray;->size()I

    #@106
    move-result v4

    #@107
    .line 2307
    const/4 v2, 0x0

    #@108
    :goto_2
    if-ge v2, v4, :cond_5

    #@10a
    .line 2308
    iget-object v5, p0, Lcom/android/server/NetworkManagementService;->mUidFirewallStandbyRules:Landroid/util/SparseIntArray;

    #@10c
    invoke-virtual {v5, v2}, Landroid/util/SparseIntArray;->keyAt(I)I

    #@10f
    move-result v5

    #@110
    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(I)V

    #@113
    .line 2309
    const-string/jumbo v5, ":"

    #@116
    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@119
    .line 2310
    iget-object v5, p0, Lcom/android/server/NetworkManagementService;->mUidFirewallStandbyRules:Landroid/util/SparseIntArray;

    #@11b
    invoke-virtual {v5, v2}, Landroid/util/SparseIntArray;->valueAt(I)I

    #@11e
    move-result v5

    #@11f
    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(I)V

    #@122
    .line 2311
    add-int/lit8 v5, v4, -0x1

    #@124
    if-ge v2, v5, :cond_4

    #@126
    const-string/jumbo v5, ","

    #@129
    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    #@12c
    .line 2307
    :cond_4
    add-int/lit8 v2, v2, 0x1

    #@12e
    goto :goto_2

    #@12f
    .line 2290
    :catchall_2
    move-exception v5

    #@130
    monitor-exit v6

    #@131
    throw v5

    #@132
    .line 2313
    :cond_5
    :try_start_6
    const-string/jumbo v5, "]"

    #@135
    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    #@138
    monitor-exit v6

    #@139
    .line 2316
    new-instance v5, Ljava/lang/StringBuilder;

    #@13b
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@13e
    const-string/jumbo v6, "UID firewall dozable chain enabled: "

    #@141
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@144
    move-result-object v5

    #@145
    .line 2317
    iget-object v6, p0, Lcom/android/server/NetworkManagementService;->mFirewallChainStates:Landroid/util/SparseBooleanArray;

    #@147
    const/4 v7, 0x1

    #@148
    invoke-virtual {v6, v7}, Landroid/util/SparseBooleanArray;->get(I)Z

    #@14b
    move-result v6

    #@14c
    .line 2316
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@14f
    move-result-object v5

    #@150
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@153
    move-result-object v5

    #@154
    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@157
    .line 2318
    iget-object v6, p0, Lcom/android/server/NetworkManagementService;->mUidFirewallDozableRules:Landroid/util/SparseIntArray;

    #@159
    monitor-enter v6

    #@15a
    .line 2319
    :try_start_7
    const-string/jumbo v5, "UID firewall dozable rule: ["

    #@15d
    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@160
    .line 2320
    iget-object v5, p0, Lcom/android/server/NetworkManagementService;->mUidFirewallDozableRules:Landroid/util/SparseIntArray;

    #@162
    invoke-virtual {v5}, Landroid/util/SparseIntArray;->size()I

    #@165
    move-result v4

    #@166
    .line 2321
    const/4 v2, 0x0

    #@167
    :goto_3
    if-ge v2, v4, :cond_7

    #@169
    .line 2322
    iget-object v5, p0, Lcom/android/server/NetworkManagementService;->mUidFirewallDozableRules:Landroid/util/SparseIntArray;

    #@16b
    invoke-virtual {v5, v2}, Landroid/util/SparseIntArray;->keyAt(I)I

    #@16e
    move-result v5

    #@16f
    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(I)V

    #@172
    .line 2323
    const-string/jumbo v5, ":"

    #@175
    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@178
    .line 2324
    iget-object v5, p0, Lcom/android/server/NetworkManagementService;->mUidFirewallDozableRules:Landroid/util/SparseIntArray;

    #@17a
    invoke-virtual {v5, v2}, Landroid/util/SparseIntArray;->valueAt(I)I

    #@17d
    move-result v5

    #@17e
    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(I)V

    #@181
    .line 2325
    add-int/lit8 v5, v4, -0x1

    #@183
    if-ge v2, v5, :cond_6

    #@185
    const-string/jumbo v5, ","

    #@188
    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_5

    #@18b
    .line 2321
    :cond_6
    add-int/lit8 v2, v2, 0x1

    #@18d
    goto :goto_3

    #@18e
    .line 2304
    :catchall_3
    move-exception v5

    #@18f
    monitor-exit v6

    #@190
    throw v5

    #@191
    .line 2327
    :cond_7
    :try_start_8
    const-string/jumbo v5, "]"

    #@194
    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_5

    #@197
    monitor-exit v6

    #@198
    .line 2330
    iget-object v6, p0, Lcom/android/server/NetworkManagementService;->mIdleTimerLock:Ljava/lang/Object;

    #@19a
    monitor-enter v6

    #@19b
    .line 2331
    :try_start_9
    const-string/jumbo v5, "Idle timers:"

    #@19e
    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@1a1
    .line 2332
    iget-object v5, p0, Lcom/android/server/NetworkManagementService;->mActiveIdleTimers:Ljava/util/HashMap;

    #@1a3
    invoke-virtual {v5}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    #@1a6
    move-result-object v5

    #@1a7
    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@1aa
    move-result-object v1

    #@1ab
    .local v1, "ent$iterator":Ljava/util/Iterator;
    :goto_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@1ae
    move-result v5

    #@1af
    if-eqz v5, :cond_8

    #@1b1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@1b4
    move-result-object v0

    #@1b5
    check-cast v0, Ljava/util/Map$Entry;

    #@1b7
    .line 2333
    .local v0, "ent":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/NetworkManagementService$IdleTimerParams;>;"
    const-string/jumbo v5, "  "

    #@1ba
    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@1bd
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    #@1c0
    move-result-object v5

    #@1c1
    check-cast v5, Ljava/lang/String;

    #@1c3
    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@1c6
    const-string/jumbo v5, ":"

    #@1c9
    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@1cc
    .line 2334
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    #@1cf
    move-result-object v3

    #@1d0
    check-cast v3, Lcom/android/server/NetworkManagementService$IdleTimerParams;

    #@1d2
    .line 2335
    .local v3, "params":Lcom/android/server/NetworkManagementService$IdleTimerParams;
    const-string/jumbo v5, "    timeout="

    #@1d5
    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@1d8
    iget v5, v3, Lcom/android/server/NetworkManagementService$IdleTimerParams;->timeout:I

    #@1da
    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(I)V

    #@1dd
    .line 2336
    const-string/jumbo v5, " type="

    #@1e0
    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@1e3
    iget v5, v3, Lcom/android/server/NetworkManagementService$IdleTimerParams;->type:I

    #@1e5
    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(I)V

    #@1e8
    .line 2337
    const-string/jumbo v5, " networkCount="

    #@1eb
    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@1ee
    iget v5, v3, Lcom/android/server/NetworkManagementService$IdleTimerParams;->networkCount:I

    #@1f0
    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(I)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_4

    #@1f3
    goto :goto_4

    #@1f4
    .line 2330
    .end local v0    # "ent":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/NetworkManagementService$IdleTimerParams;>;"
    .end local v1    # "ent$iterator":Ljava/util/Iterator;
    .end local v3    # "params":Lcom/android/server/NetworkManagementService$IdleTimerParams;
    :catchall_4
    move-exception v5

    #@1f5
    monitor-exit v6

    #@1f6
    throw v5

    #@1f7
    .line 2318
    :catchall_5
    move-exception v5

    #@1f8
    monitor-exit v6

    #@1f9
    throw v5

    #@1fa
    .restart local v1    # "ent$iterator":Ljava/util/Iterator;
    :cond_8
    monitor-exit v6

    #@1fb
    .line 2341
    const-string/jumbo v5, "Firewall enabled: "

    #@1fe
    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@201
    iget-boolean v5, p0, Lcom/android/server/NetworkManagementService;->mFirewallEnabled:Z

    #@203
    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Z)V

    #@206
    .line 2263
    return-void
.end method

.method public enableIpv6(Ljava/lang/String;)V
    .locals 6
    .param p1, "iface"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1041
    iget-object v1, p0, Lcom/android/server/NetworkManagementService;->mContext:Landroid/content/Context;

    #@2
    const-string/jumbo v2, "android.permission.CONNECTIVITY_INTERNAL"

    #@5
    const-string/jumbo v3, "NetworkManagement"

    #@8
    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    #@b
    .line 1043
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
    .line 1040
    return-void

    #@26
    .line 1044
    :catch_0
    move-exception v0

    #@27
    .line 1045
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
    .line 1430
    iget-object v1, p0, Lcom/android/server/NetworkManagementService;->mContext:Landroid/content/Context;

    #@2
    const-string/jumbo v2, "android.permission.CONNECTIVITY_INTERNAL"

    #@5
    const-string/jumbo v3, "NetworkManagement"

    #@8
    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    #@b
    .line 1432
    :try_start_0
    const-string/jumbo v1, "enable"

    #@e
    invoke-direct {p0, v1, p1, p2}, Lcom/android/server/NetworkManagementService;->modifyNat(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_0} :catch_0

    #@11
    .line 1429
    return-void

    #@12
    .line 1433
    :catch_0
    move-exception v0

    #@13
    .line 1434
    .local v0, "e":Ljava/net/SocketException;
    new-instance v1, Ljava/lang/IllegalStateException;

    #@15
    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    #@18
    throw v1
.end method

.method public flushNetworkDnsCache(I)V
    .locals 6
    .param p1, "netId"    # I

    #@0
    .prologue
    .line 1961
    iget-object v1, p0, Lcom/android/server/NetworkManagementService;->mContext:Landroid/content/Context;

    #@2
    const-string/jumbo v2, "android.permission.CONNECTIVITY_INTERNAL"

    #@5
    const-string/jumbo v3, "NetworkManagement"

    #@8
    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    #@b
    .line 1963
    :try_start_0
    iget-object v1, p0, Lcom/android/server/NetworkManagementService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    #@d
    const-string/jumbo v2, "resolver"

    #@10
    const/4 v3, 0x2

    #@11
    new-array v3, v3, [Ljava/lang/Object;

    #@13
    const-string/jumbo v4, "flushnet"

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
    .line 1960
    return-void

    #@24
    .line 1964
    :catch_0
    move-exception v0

    #@25
    .line 1965
    .local v0, "e":Lcom/android/server/NativeDaemonConnectorException;
    invoke-virtual {v0}, Lcom/android/server/NativeDaemonConnectorException;->rethrowAsParcelableException()Ljava/lang/IllegalArgumentException;

    #@28
    move-result-object v1

    #@29
    throw v1
.end method

.method public getDnsForwarders()[Ljava/lang/String;
    .locals 6

    #@0
    .prologue
    .line 1361
    iget-object v1, p0, Lcom/android/server/NetworkManagementService;->mContext:Landroid/content/Context;

    #@2
    const-string/jumbo v2, "android.permission.CONNECTIVITY_INTERNAL"

    #@5
    const-string/jumbo v3, "NetworkManagement"

    #@8
    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    #@b
    .line 1364
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
    .line 1363
    invoke-static {v1, v2}, Lcom/android/server/NativeDaemonEvent;->filterMessageList([Lcom/android/server/NativeDaemonEvent;I)[Ljava/lang/String;
    :try_end_0
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_0 .. :try_end_0} :catch_0

    #@28
    move-result-object v1

    #@29
    return-object v1

    #@2a
    .line 1365
    :catch_0
    move-exception v0

    #@2b
    .line 1366
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
    .line 2166
    packed-switch p1, :pswitch_data_0

    #@3
    .line 2174
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
    .line 2168
    :pswitch_0
    const-string/jumbo v0, "standby"

    #@20
    return-object v0

    #@21
    .line 2170
    :pswitch_1
    const-string/jumbo v0, "dozable"

    #@24
    return-object v0

    #@25
    .line 2172
    :pswitch_2
    const-string/jumbo v0, "none"

    #@28
    return-object v0

    #@29
    .line 2166
    nop

    #@2a
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getInterfaceConfig(Ljava/lang/String;)Landroid/net/InterfaceConfiguration;
    .locals 14
    .param p1, "iface"    # Ljava/lang/String;

    #@0
    .prologue
    .line 936
    iget-object v9, p0, Lcom/android/server/NetworkManagementService;->mContext:Landroid/content/Context;

    #@2
    const-string/jumbo v10, "android.permission.CONNECTIVITY_INTERNAL"

    #@5
    const-string/jumbo v11, "NetworkManagement"

    #@8
    invoke-virtual {v9, v10, v11}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    #@b
    .line 940
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
    .line 945
    .local v3, "event":Lcom/android/server/NativeDaemonEvent;
    const/16 v9, 0xd5

    #@22
    invoke-virtual {v3, v9}, Lcom/android/server/NativeDaemonEvent;->checkCode(I)V

    #@25
    .line 948
    new-instance v8, Ljava/util/StringTokenizer;

    #@27
    invoke-virtual {v3}, Lcom/android/server/NativeDaemonEvent;->getMessage()Ljava/lang/String;

    #@2a
    move-result-object v9

    #@2b
    invoke-direct {v8, v9}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;)V

    #@2e
    .line 952
    .local v8, "st":Ljava/util/StringTokenizer;
    :try_start_1
    new-instance v1, Landroid/net/InterfaceConfiguration;

    #@30
    invoke-direct {v1}, Landroid/net/InterfaceConfiguration;-><init>()V

    #@33
    .line 953
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
    .line 954
    const/4 v0, 0x0

    #@3e
    .line 955
    .local v0, "addr":Ljava/net/InetAddress;
    const/4 v7, 0x0

    #@3f
    .line 957
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
    .line 963
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
    .line 968
    :goto_1
    :try_start_4
    new-instance v9, Landroid/net/LinkAddress;

    #@51
    invoke-direct {v9, v0, v7}, Landroid/net/LinkAddress;-><init>(Ljava/net/InetAddress;I)V

    #@54
    invoke-virtual {v1, v9}, Landroid/net/InterfaceConfiguration;->setLinkAddress(Landroid/net/LinkAddress;)V

    #@57
    .line 969
    :goto_2
    invoke-virtual {v8}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    #@5a
    move-result v9

    #@5b
    if-eqz v9, :cond_0

    #@5d
    .line 970
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
    .line 972
    .end local v1    # "cfg":Landroid/net/InterfaceConfiguration;
    .end local v7    # "prefixLength":I
    :catch_0
    move-exception v6

    #@66
    .line 973
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
    .line 941
    .end local v3    # "event":Lcom/android/server/NativeDaemonEvent;
    .end local v6    # "nsee":Ljava/util/NoSuchElementException;
    .end local v8    # "st":Ljava/util/StringTokenizer;
    :catch_1
    move-exception v2

    #@81
    .line 942
    .local v2, "e":Lcom/android/server/NativeDaemonConnectorException;
    invoke-virtual {v2}, Lcom/android/server/NativeDaemonConnectorException;->rethrowAsParcelableException()Ljava/lang/IllegalArgumentException;

    #@84
    move-result-object v9

    #@85
    throw v9

    #@86
    .line 958
    .end local v2    # "e":Lcom/android/server/NativeDaemonConnectorException;
    .restart local v0    # "addr":Ljava/net/InetAddress;
    .restart local v1    # "cfg":Landroid/net/InterfaceConfiguration;
    .restart local v3    # "event":Lcom/android/server/NativeDaemonEvent;
    .restart local v7    # "prefixLength":I
    .restart local v8    # "st":Ljava/util/StringTokenizer;
    :catch_2
    move-exception v4

    #@87
    .line 959
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
    .line 964
    .end local v0    # "addr":Ljava/net/InetAddress;
    .end local v4    # "iae":Ljava/lang/IllegalArgumentException;
    :catch_3
    move-exception v5

    #@92
    .line 965
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
    .line 975
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
    .line 1235
    iget-object v2, p0, Lcom/android/server/NetworkManagementService;->mContext:Landroid/content/Context;

    #@2
    const-string/jumbo v3, "android.permission.CONNECTIVITY_INTERNAL"

    #@5
    const-string/jumbo v4, "NetworkManagement"

    #@8
    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    #@b
    .line 1239
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
    .line 1245
    .local v1, "event":Lcom/android/server/NativeDaemonEvent;
    const/16 v2, 0xd3

    #@1f
    invoke-virtual {v1, v2}, Lcom/android/server/NativeDaemonEvent;->checkCode(I)V

    #@22
    .line 1246
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
    .line 1240
    .end local v1    # "event":Lcom/android/server/NativeDaemonEvent;
    :catch_0
    move-exception v0

    #@2f
    .line 1241
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
    .line 1639
    iget-object v1, p0, Lcom/android/server/NetworkManagementService;->mContext:Landroid/content/Context;

    #@2
    const-string/jumbo v2, "android.permission.CONNECTIVITY_INTERNAL"

    #@5
    const-string/jumbo v3, "NetworkManagement"

    #@8
    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    #@b
    .line 1641
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
    .line 1642
    :catch_0
    move-exception v0

    #@17
    .line 1643
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
    .line 1619
    iget-object v1, p0, Lcom/android/server/NetworkManagementService;->mContext:Landroid/content/Context;

    #@2
    const-string/jumbo v2, "android.permission.CONNECTIVITY_INTERNAL"

    #@5
    const-string/jumbo v3, "NetworkManagement"

    #@8
    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    #@b
    .line 1621
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
    .line 1622
    :catch_0
    move-exception v0

    #@13
    .line 1623
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
    .line 1629
    iget-object v1, p0, Lcom/android/server/NetworkManagementService;->mContext:Landroid/content/Context;

    #@2
    const-string/jumbo v2, "android.permission.CONNECTIVITY_INTERNAL"

    #@5
    const-string/jumbo v3, "NetworkManagement"

    #@8
    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    #@b
    .line 1631
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
    .line 1632
    :catch_0
    move-exception v0

    #@13
    .line 1633
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
    .line 1853
    iget-object v10, p0, Lcom/android/server/NetworkManagementService;->mContext:Landroid/content/Context;

    #@2
    const-string/jumbo v11, "android.permission.CONNECTIVITY_INTERNAL"

    #@5
    const-string/jumbo v12, "NetworkManagement"

    #@8
    invoke-virtual {v10, v11, v12}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    #@b
    .line 1855
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
    .line 1857
    .local v8, "stats":Landroid/net/NetworkStats;
    :try_start_0
    iget-object v10, p0, Lcom/android/server/NetworkManagementService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    #@17
    .line 1858
    const-string/jumbo v11, "bandwidth"

    #@1a
    .line 1857
    const/4 v12, 0x1

    #@1b
    new-array v12, v12, [Ljava/lang/Object;

    #@1d
    .line 1858
    const-string/jumbo v13, "gettetherstats"

    #@20
    const/4 v14, 0x0

    #@21
    aput-object v13, v12, v14

    #@23
    .line 1857
    invoke-virtual {v10, v11, v12}, Lcom/android/server/NativeDaemonConnector;->executeForList(Ljava/lang/String;[Ljava/lang/Object;)[Lcom/android/server/NativeDaemonEvent;

    #@26
    move-result-object v5

    #@27
    .line 1859
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
    .line 1860
    .local v4, "event":Lcom/android/server/NativeDaemonEvent;
    invoke-virtual {v4}, Lcom/android/server/NativeDaemonEvent;->getCode()I

    #@30
    move-result v12

    #@31
    const/16 v13, 0x72

    #@33
    if-eq v12, v13, :cond_0

    #@35
    .line 1859
    :goto_1
    add-int/lit8 v10, v10, 0x1

    #@37
    goto :goto_0

    #@38
    .line 1863
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
    .line 1865
    .local v9, "tok":Ljava/util/StringTokenizer;
    :try_start_1
    invoke-virtual {v9}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    #@44
    move-result-object v6

    #@45
    .line 1866
    .local v6, "ifaceIn":Ljava/lang/String;
    invoke-virtual {v9}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    #@48
    move-result-object v7

    #@49
    .line 1868
    .local v7, "ifaceOut":Ljava/lang/String;
    new-instance v3, Landroid/net/NetworkStats$Entry;

    #@4b
    invoke-direct {v3}, Landroid/net/NetworkStats$Entry;-><init>()V

    #@4e
    .line 1869
    .local v3, "entry":Landroid/net/NetworkStats$Entry;
    iput-object v7, v3, Landroid/net/NetworkStats$Entry;->iface:Ljava/lang/String;

    #@50
    .line 1870
    const/4 v12, -0x5

    #@51
    iput v12, v3, Landroid/net/NetworkStats$Entry;->uid:I

    #@53
    .line 1871
    const/4 v12, 0x0

    #@54
    iput v12, v3, Landroid/net/NetworkStats$Entry;->set:I

    #@56
    .line 1872
    const/4 v12, 0x0

    #@57
    iput v12, v3, Landroid/net/NetworkStats$Entry;->tag:I

    #@59
    .line 1873
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
    .line 1874
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
    .line 1875
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
    .line 1876
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
    .line 1877
    invoke-virtual {v8, v3}, Landroid/net/NetworkStats;->combineValues(Landroid/net/NetworkStats$Entry;)Landroid/net/NetworkStats;
    :try_end_1
    .catch Ljava/util/NoSuchElementException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_1 .. :try_end_1} :catch_1

    #@84
    goto :goto_1

    #@85
    .line 1878
    .end local v3    # "entry":Landroid/net/NetworkStats$Entry;
    .end local v6    # "ifaceIn":Ljava/lang/String;
    .end local v7    # "ifaceOut":Ljava/lang/String;
    :catch_0
    move-exception v2

    #@86
    .line 1879
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
    .line 1884
    .end local v2    # "e":Ljava/util/NoSuchElementException;
    .end local v4    # "event":Lcom/android/server/NativeDaemonEvent;
    .end local v5    # "events":[Lcom/android/server/NativeDaemonEvent;
    .end local v9    # "tok":Ljava/util/StringTokenizer;
    :catch_1
    move-exception v0

    #@a1
    .line 1885
    .local v0, "e":Lcom/android/server/NativeDaemonConnectorException;
    invoke-virtual {v0}, Lcom/android/server/NativeDaemonConnectorException;->rethrowAsParcelableException()Ljava/lang/IllegalArgumentException;

    #@a4
    move-result-object v10

    #@a5
    throw v10

    #@a6
    .line 1880
    .end local v0    # "e":Lcom/android/server/NativeDaemonConnectorException;
    .restart local v4    # "event":Lcom/android/server/NativeDaemonEvent;
    .restart local v5    # "events":[Lcom/android/server/NativeDaemonEvent;
    .restart local v9    # "tok":Ljava/util/StringTokenizer;
    :catch_2
    move-exception v1

    #@a7
    .line 1881
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
    .line 1887
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
    .line 1843
    iget-object v1, p0, Lcom/android/server/NetworkManagementService;->mContext:Landroid/content/Context;

    #@2
    const-string/jumbo v2, "android.permission.CONNECTIVITY_INTERNAL"

    #@5
    const-string/jumbo v3, "NetworkManagement"

    #@8
    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    #@b
    .line 1845
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
    .line 1846
    :catch_0
    move-exception v0

    #@16
    .line 1847
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Ljava/lang/IllegalStateException;

    #@18
    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    #@1b
    throw v1
.end method

.method public getRoutes(Ljava/lang/String;)[Landroid/net/RouteInfo;
    .locals 22
    .param p1, "interfaceName"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1140
    move-object/from16 v0, p0

    #@2
    iget-object v0, v0, Lcom/android/server/NetworkManagementService;->mContext:Landroid/content/Context;

    #@4
    move-object/from16 v19, v0

    #@6
    const-string/jumbo v20, "android.permission.CONNECTIVITY_INTERNAL"

    #@9
    const-string/jumbo v21, "NetworkManagement"

    #@c
    invoke-virtual/range {v19 .. v21}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    #@f
    .line 1141
    new-instance v16, Ljava/util/ArrayList;

    #@11
    invoke-direct/range {v16 .. v16}, Ljava/util/ArrayList;-><init>()V

    #@14
    .line 1145
    .local v16, "routes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/net/RouteInfo;>;"
    const-string/jumbo v19, "/proc/net/route"

    #@17
    move-object/from16 v0, p0

    #@19
    move-object/from16 v1, v19

    #@1b
    invoke-direct {v0, v1}, Lcom/android/server/NetworkManagementService;->readRouteList(Ljava/lang/String;)Ljava/util/ArrayList;

    #@1e
    move-result-object v19

    #@1f
    invoke-interface/range {v19 .. v19}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@22
    move-result-object v18

    #@23
    .local v18, "s$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->hasNext()Z

    #@26
    move-result v19

    #@27
    if-eqz v19, :cond_1

    #@29
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@2c
    move-result-object v17

    #@2d
    check-cast v17, Ljava/lang/String;

    #@2f
    .line 1146
    .local v17, "s":Ljava/lang/String;
    const-string/jumbo v19, "\t"

    #@32
    move-object/from16 v0, v17

    #@34
    move-object/from16 v1, v19

    #@36
    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    #@39
    move-result-object v5

    #@3a
    .line 1148
    .local v5, "fields":[Ljava/lang/String;
    array-length v0, v5

    #@3b
    move/from16 v19, v0

    #@3d
    const/16 v20, 0x7

    #@3f
    move/from16 v0, v19

    #@41
    move/from16 v1, v20

    #@43
    if-le v0, v1, :cond_0

    #@45
    .line 1149
    const/16 v19, 0x0

    #@47
    aget-object v10, v5, v19

    #@49
    .line 1151
    .local v10, "iface":Ljava/lang/String;
    move-object/from16 v0, p1

    #@4b
    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@4e
    move-result v19

    #@4f
    if-eqz v19, :cond_0

    #@51
    .line 1152
    const/16 v19, 0x1

    #@53
    aget-object v2, v5, v19

    #@55
    .line 1153
    .local v2, "dest":Ljava/lang/String;
    const/16 v19, 0x2

    #@57
    aget-object v7, v5, v19

    #@59
    .line 1154
    .local v7, "gate":Ljava/lang/String;
    const/16 v19, 0x3

    #@5b
    aget-object v6, v5, v19

    #@5d
    .line 1155
    .local v6, "flags":Ljava/lang/String;
    const/16 v19, 0x7

    #@5f
    aget-object v12, v5, v19

    #@61
    .line 1159
    .local v12, "mask":Ljava/lang/String;
    const/16 v19, 0x10

    #@63
    :try_start_0
    move/from16 v0, v19

    #@65
    invoke-static {v2, v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    #@68
    move-result-wide v20

    #@69
    move-wide/from16 v0, v20

    #@6b
    long-to-int v0, v0

    #@6c
    move/from16 v19, v0

    #@6e
    invoke-static/range {v19 .. v19}, Landroid/net/NetworkUtils;->intToInetAddress(I)Ljava/net/InetAddress;

    #@71
    move-result-object v3

    #@72
    .line 1162
    .local v3, "destAddr":Ljava/net/InetAddress;
    const/16 v19, 0x10

    #@74
    move/from16 v0, v19

    #@76
    invoke-static {v12, v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    #@79
    move-result-wide v20

    #@7a
    move-wide/from16 v0, v20

    #@7c
    long-to-int v0, v0

    #@7d
    move/from16 v19, v0

    #@7f
    .line 1161
    invoke-static/range {v19 .. v19}, Landroid/net/NetworkUtils;->netmaskIntToPrefixLength(I)I

    #@82
    move-result v14

    #@83
    .line 1163
    .local v14, "prefixLength":I
    new-instance v11, Landroid/net/LinkAddress;

    #@85
    invoke-direct {v11, v3, v14}, Landroid/net/LinkAddress;-><init>(Ljava/net/InetAddress;I)V

    #@88
    .line 1167
    .local v11, "linkAddress":Landroid/net/LinkAddress;
    const/16 v19, 0x10

    #@8a
    move/from16 v0, v19

    #@8c
    invoke-static {v7, v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    #@8f
    move-result-wide v20

    #@90
    move-wide/from16 v0, v20

    #@92
    long-to-int v0, v0

    #@93
    move/from16 v19, v0

    #@95
    invoke-static/range {v19 .. v19}, Landroid/net/NetworkUtils;->intToInetAddress(I)Ljava/net/InetAddress;

    #@98
    move-result-object v9

    #@99
    .line 1169
    .local v9, "gatewayAddr":Ljava/net/InetAddress;
    new-instance v15, Landroid/net/RouteInfo;

    #@9b
    invoke-direct {v15, v11, v9}, Landroid/net/RouteInfo;-><init>(Landroid/net/LinkAddress;Ljava/net/InetAddress;)V

    #@9e
    .line 1170
    .local v15, "route":Landroid/net/RouteInfo;
    move-object/from16 v0, v16

    #@a0
    invoke-virtual {v0, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    #@a3
    goto :goto_0

    #@a4
    .line 1171
    .end local v3    # "destAddr":Ljava/net/InetAddress;
    .end local v9    # "gatewayAddr":Ljava/net/InetAddress;
    .end local v11    # "linkAddress":Landroid/net/LinkAddress;
    .end local v14    # "prefixLength":I
    .end local v15    # "route":Landroid/net/RouteInfo;
    :catch_0
    move-exception v4

    #@a5
    .line 1172
    .local v4, "e":Ljava/lang/Exception;
    const-string/jumbo v19, "NetworkManagement"

    #@a8
    new-instance v20, Ljava/lang/StringBuilder;

    #@aa
    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    #@ad
    const-string/jumbo v21, "Error parsing route "

    #@b0
    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b3
    move-result-object v20

    #@b4
    move-object/from16 v0, v20

    #@b6
    move-object/from16 v1, v17

    #@b8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@bb
    move-result-object v20

    #@bc
    const-string/jumbo v21, " : "

    #@bf
    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@c2
    move-result-object v20

    #@c3
    move-object/from16 v0, v20

    #@c5
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@c8
    move-result-object v20

    #@c9
    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@cc
    move-result-object v20

    #@cd
    invoke-static/range {v19 .. v20}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@d0
    goto/16 :goto_0

    #@d2
    .line 1181
    .end local v2    # "dest":Ljava/lang/String;
    .end local v4    # "e":Ljava/lang/Exception;
    .end local v5    # "fields":[Ljava/lang/String;
    .end local v6    # "flags":Ljava/lang/String;
    .end local v7    # "gate":Ljava/lang/String;
    .end local v10    # "iface":Ljava/lang/String;
    .end local v12    # "mask":Ljava/lang/String;
    .end local v17    # "s":Ljava/lang/String;
    :cond_1
    const-string/jumbo v19, "/proc/net/ipv6_route"

    #@d5
    move-object/from16 v0, p0

    #@d7
    move-object/from16 v1, v19

    #@d9
    invoke-direct {v0, v1}, Lcom/android/server/NetworkManagementService;->readRouteList(Ljava/lang/String;)Ljava/util/ArrayList;

    #@dc
    move-result-object v19

    #@dd
    invoke-interface/range {v19 .. v19}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@e0
    move-result-object v18

    #@e1
    :cond_2
    :goto_1
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->hasNext()Z

    #@e4
    move-result v19

    #@e5
    if-eqz v19, :cond_3

    #@e7
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@ea
    move-result-object v17

    #@eb
    check-cast v17, Ljava/lang/String;

    #@ed
    .line 1182
    .restart local v17    # "s":Ljava/lang/String;
    const-string/jumbo v19, "\\s+"

    #@f0
    move-object/from16 v0, v17

    #@f2
    move-object/from16 v1, v19

    #@f4
    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    #@f7
    move-result-object v5

    #@f8
    .line 1183
    .restart local v5    # "fields":[Ljava/lang/String;
    array-length v0, v5

    #@f9
    move/from16 v19, v0

    #@fb
    const/16 v20, 0x9

    #@fd
    move/from16 v0, v19

    #@ff
    move/from16 v1, v20

    #@101
    if-le v0, v1, :cond_2

    #@103
    .line 1184
    const/16 v19, 0x9

    #@105
    aget-object v19, v5, v19

    #@107
    invoke-virtual/range {v19 .. v19}, Ljava/lang/String;->trim()Ljava/lang/String;

    #@10a
    move-result-object v10

    #@10b
    .line 1185
    .restart local v10    # "iface":Ljava/lang/String;
    move-object/from16 v0, p1

    #@10d
    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@110
    move-result v19

    #@111
    if-eqz v19, :cond_2

    #@113
    .line 1186
    const/16 v19, 0x0

    #@115
    aget-object v2, v5, v19

    #@117
    .line 1187
    .restart local v2    # "dest":Ljava/lang/String;
    const/16 v19, 0x1

    #@119
    aget-object v13, v5, v19

    #@11b
    .line 1188
    .local v13, "prefix":Ljava/lang/String;
    const/16 v19, 0x4

    #@11d
    aget-object v7, v5, v19

    #@11f
    .line 1192
    .restart local v7    # "gate":Ljava/lang/String;
    const/16 v19, 0x10

    #@121
    :try_start_1
    move/from16 v0, v19

    #@123
    invoke-static {v13, v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    #@126
    move-result v14

    #@127
    .line 1196
    .restart local v14    # "prefixLength":I
    invoke-static {v2}, Landroid/net/NetworkUtils;->hexToInet6Address(Ljava/lang/String;)Ljava/net/InetAddress;

    #@12a
    move-result-object v3

    #@12b
    .line 1197
    .restart local v3    # "destAddr":Ljava/net/InetAddress;
    new-instance v11, Landroid/net/LinkAddress;

    #@12d
    invoke-direct {v11, v3, v14}, Landroid/net/LinkAddress;-><init>(Ljava/net/InetAddress;I)V

    #@130
    .line 1199
    .restart local v11    # "linkAddress":Landroid/net/LinkAddress;
    invoke-static {v7}, Landroid/net/NetworkUtils;->hexToInet6Address(Ljava/lang/String;)Ljava/net/InetAddress;

    #@133
    move-result-object v8

    #@134
    .line 1201
    .local v8, "gateAddr":Ljava/net/InetAddress;
    new-instance v15, Landroid/net/RouteInfo;

    #@136
    invoke-direct {v15, v11, v8}, Landroid/net/RouteInfo;-><init>(Landroid/net/LinkAddress;Ljava/net/InetAddress;)V

    #@139
    .line 1202
    .restart local v15    # "route":Landroid/net/RouteInfo;
    move-object/from16 v0, v16

    #@13b
    invoke-virtual {v0, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    #@13e
    goto :goto_1

    #@13f
    .line 1203
    .end local v3    # "destAddr":Ljava/net/InetAddress;
    .end local v8    # "gateAddr":Ljava/net/InetAddress;
    .end local v11    # "linkAddress":Landroid/net/LinkAddress;
    .end local v14    # "prefixLength":I
    .end local v15    # "route":Landroid/net/RouteInfo;
    :catch_1
    move-exception v4

    #@140
    .line 1204
    .restart local v4    # "e":Ljava/lang/Exception;
    const-string/jumbo v19, "NetworkManagement"

    #@143
    new-instance v20, Ljava/lang/StringBuilder;

    #@145
    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    #@148
    const-string/jumbo v21, "Error parsing route "

    #@14b
    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@14e
    move-result-object v20

    #@14f
    move-object/from16 v0, v20

    #@151
    move-object/from16 v1, v17

    #@153
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@156
    move-result-object v20

    #@157
    const-string/jumbo v21, " : "

    #@15a
    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@15d
    move-result-object v20

    #@15e
    move-object/from16 v0, v20

    #@160
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@163
    move-result-object v20

    #@164
    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@167
    move-result-object v20

    #@168
    invoke-static/range {v19 .. v20}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@16b
    goto/16 :goto_1

    #@16d
    .line 1210
    .end local v2    # "dest":Ljava/lang/String;
    .end local v4    # "e":Ljava/lang/Exception;
    .end local v5    # "fields":[Ljava/lang/String;
    .end local v7    # "gate":Ljava/lang/String;
    .end local v10    # "iface":Ljava/lang/String;
    .end local v13    # "prefix":Ljava/lang/String;
    .end local v17    # "s":Ljava/lang/String;
    :cond_3
    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->size()I

    #@170
    move-result v19

    #@171
    move/from16 v0, v19

    #@173
    new-array v0, v0, [Landroid/net/RouteInfo;

    #@175
    move-object/from16 v19, v0

    #@177
    move-object/from16 v0, v16

    #@179
    move-object/from16 v1, v19

    #@17b
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    #@17e
    move-result-object v19

    #@17f
    check-cast v19, [Landroid/net/RouteInfo;

    #@181
    return-object v19
.end method

.method public isBandwidthControlEnabled()Z
    .locals 3

    #@0
    .prologue
    .line 1837
    iget-object v0, p0, Lcom/android/server/NetworkManagementService;->mContext:Landroid/content/Context;

    #@2
    const-string/jumbo v1, "android.permission.CONNECTIVITY_INTERNAL"

    #@5
    const-string/jumbo v2, "NetworkManagement"

    #@8
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    #@b
    .line 1838
    iget-boolean v0, p0, Lcom/android/server/NetworkManagementService;->mBandwidthControlEnabled:Z

    #@d
    return v0
.end method

.method public isClatdStarted(Ljava/lang/String;)Z
    .locals 7
    .param p1, "interfaceName"    # Ljava/lang/String;

    #@0
    .prologue
    .line 2209
    iget-object v2, p0, Lcom/android/server/NetworkManagementService;->mContext:Landroid/content/Context;

    #@2
    const-string/jumbo v3, "android.permission.CONNECTIVITY_INTERNAL"

    #@5
    const-string/jumbo v4, "NetworkManagement"

    #@8
    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    #@b
    .line 2213
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
    .line 2218
    .local v1, "event":Lcom/android/server/NativeDaemonEvent;
    const/16 v2, 0xdf

    #@22
    invoke-virtual {v1, v2}, Lcom/android/server/NativeDaemonEvent;->checkCode(I)V

    #@25
    .line 2219
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
    .line 2214
    .end local v1    # "event":Lcom/android/server/NativeDaemonEvent;
    :catch_0
    move-exception v0

    #@32
    .line 2215
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
    .line 1982
    invoke-static {}, Lcom/android/server/NetworkManagementService;->enforceSystemUid()V

    #@3
    .line 1983
    iget-boolean v0, p0, Lcom/android/server/NetworkManagementService;->mFirewallEnabled:Z

    #@5
    return v0
.end method

.method public isNetworkActive()Z
    .locals 2

    #@0
    .prologue
    .line 2234
    iget-object v1, p0, Lcom/android/server/NetworkManagementService;->mNetworkActivityListeners:Landroid/os/RemoteCallbackList;

    #@2
    monitor-enter v1

    #@3
    .line 2235
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
    .line 2234
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
    .line 1289
    iget-object v2, p0, Lcom/android/server/NetworkManagementService;->mContext:Landroid/content/Context;

    #@2
    const-string/jumbo v3, "android.permission.CONNECTIVITY_INTERNAL"

    #@5
    const-string/jumbo v4, "NetworkManagement"

    #@8
    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    #@b
    .line 1293
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
    .line 1299
    .local v1, "event":Lcom/android/server/NativeDaemonEvent;
    const/16 v2, 0xd2

    #@1f
    invoke-virtual {v1, v2}, Lcom/android/server/NativeDaemonEvent;->checkCode(I)V

    #@22
    .line 1300
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
    .line 1294
    .end local v1    # "event":Lcom/android/server/NativeDaemonEvent;
    :catch_0
    move-exception v0

    #@2f
    .line 1295
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
    .line 925
    iget-object v1, p0, Lcom/android/server/NetworkManagementService;->mContext:Landroid/content/Context;

    #@2
    const-string/jumbo v2, "android.permission.CONNECTIVITY_INTERNAL"

    #@5
    const-string/jumbo v3, "NetworkManagement"

    #@8
    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    #@b
    .line 928
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
    .line 927
    invoke-static {v1, v2}, Lcom/android/server/NativeDaemonEvent;->filterMessageList([Lcom/android/server/NativeDaemonEvent;I)[Ljava/lang/String;
    :try_end_0
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_0 .. :try_end_0} :catch_0

    #@22
    move-result-object v1

    #@23
    return-object v1

    #@24
    .line 929
    :catch_0
    move-exception v0

    #@25
    .line 930
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
    .line 1331
    iget-object v1, p0, Lcom/android/server/NetworkManagementService;->mContext:Landroid/content/Context;

    #@2
    const-string/jumbo v2, "android.permission.CONNECTIVITY_INTERNAL"

    #@5
    const-string/jumbo v3, "NetworkManagement"

    #@8
    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    #@b
    .line 1334
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
    .line 1335
    const/16 v2, 0x6f

    #@25
    .line 1333
    invoke-static {v1, v2}, Lcom/android/server/NativeDaemonEvent;->filterMessageList([Lcom/android/server/NativeDaemonEvent;I)[Ljava/lang/String;
    :try_end_0
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_0 .. :try_end_0} :catch_0

    #@28
    move-result-object v1

    #@29
    return-object v1

    #@2a
    .line 1336
    :catch_0
    move-exception v0

    #@2b
    .line 1337
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
    .line 1450
    iget-object v1, p0, Lcom/android/server/NetworkManagementService;->mContext:Landroid/content/Context;

    #@2
    const-string/jumbo v2, "android.permission.CONNECTIVITY_INTERNAL"

    #@5
    const-string/jumbo v3, "NetworkManagement"

    #@8
    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    #@b
    .line 1453
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
    .line 1452
    invoke-static {v1, v2}, Lcom/android/server/NativeDaemonEvent;->filterMessageList([Lcom/android/server/NativeDaemonEvent;I)[Ljava/lang/String;
    :try_end_0
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_0 .. :try_end_0} :catch_0

    #@1c
    move-result-object v1

    #@1d
    return-object v1

    #@1e
    .line 1454
    :catch_0
    move-exception v0

    #@1f
    .line 1455
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
    .line 2257
    iget-object v0, p0, Lcom/android/server/NetworkManagementService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 2258
    iget-object v0, p0, Lcom/android/server/NetworkManagementService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    #@6
    invoke-virtual {v0}, Lcom/android/server/NativeDaemonConnector;->monitor()V

    #@9
    .line 2256
    :cond_0
    return-void
.end method

.method public registerNetworkActivityListener(Landroid/os/INetworkActivityListener;)V
    .locals 1
    .param p1, "listener"    # Landroid/os/INetworkActivityListener;

    #@0
    .prologue
    .line 2224
    iget-object v0, p0, Lcom/android/server/NetworkManagementService;->mNetworkActivityListeners:Landroid/os/RemoteCallbackList;

    #@2
    invoke-virtual {v0, p1}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;)Z

    #@5
    .line 2223
    return-void
.end method

.method public registerObserver(Landroid/net/INetworkManagementEventObserver;)V
    .locals 3
    .param p1, "observer"    # Landroid/net/INetworkManagementEventObserver;

    #@0
    .prologue
    .line 340
    iget-object v0, p0, Lcom/android/server/NetworkManagementService;->mContext:Landroid/content/Context;

    #@2
    const-string/jumbo v1, "android.permission.CONNECTIVITY_INTERNAL"

    #@5
    const-string/jumbo v2, "NetworkManagement"

    #@8
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    #@b
    .line 341
    iget-object v0, p0, Lcom/android/server/NetworkManagementService;->mObservers:Landroid/os/RemoteCallbackList;

    #@d
    invoke-virtual {v0, p1}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;)Z

    #@10
    .line 339
    return-void
.end method

.method public removeIdleTimer(Ljava/lang/String;)V
    .locals 8
    .param p1, "iface"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1590
    iget-object v2, p0, Lcom/android/server/NetworkManagementService;->mContext:Landroid/content/Context;

    #@2
    const-string/jumbo v3, "android.permission.CONNECTIVITY_INTERNAL"

    #@5
    const-string/jumbo v4, "NetworkManagement"

    #@8
    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    #@b
    .line 1592
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
    .line 1594
    :cond_0
    iget-object v3, p0, Lcom/android/server/NetworkManagementService;->mIdleTimerLock:Ljava/lang/Object;

    #@1a
    monitor-enter v3

    #@1b
    .line 1595
    :try_start_0
    iget-object v2, p0, Lcom/android/server/NetworkManagementService;->mActiveIdleTimers:Ljava/util/HashMap;

    #@1d
    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@20
    move-result-object v1

    #@21
    check-cast v1, Lcom/android/server/NetworkManagementService$IdleTimerParams;

    #@23
    .line 1596
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
    .line 1597
    return-void

    #@2f
    .line 1601
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
    .line 1602
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
    .line 1601
    invoke-virtual {v2, v4, v5}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;
    :try_end_1
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@55
    .line 1606
    :try_start_2
    iget-object v2, p0, Lcom/android/server/NetworkManagementService;->mActiveIdleTimers:Ljava/util/HashMap;

    #@57
    invoke-virtual {v2, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    #@5a
    .line 1607
    iget-object v2, p0, Lcom/android/server/NetworkManagementService;->mDaemonHandler:Landroid/os/Handler;

    #@5c
    new-instance v4, Lcom/android/server/NetworkManagementService$3;

    #@5e
    invoke-direct {v4, p0, v1}, Lcom/android/server/NetworkManagementService$3;-><init>(Lcom/android/server/NetworkManagementService;Lcom/android/server/NetworkManagementService$IdleTimerParams;)V

    #@61
    invoke-virtual {v2, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@64
    monitor-exit v3

    #@65
    .line 1589
    return-void

    #@66
    .line 1603
    :catch_0
    move-exception v0

    #@67
    .line 1604
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
    .line 1594
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
    .line 1726
    iget-object v1, p0, Lcom/android/server/NetworkManagementService;->mContext:Landroid/content/Context;

    #@2
    const-string/jumbo v2, "android.permission.CONNECTIVITY_INTERNAL"

    #@5
    const-string/jumbo v3, "NetworkManagement"

    #@8
    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    #@b
    .line 1730
    iget-boolean v1, p0, Lcom/android/server/NetworkManagementService;->mBandwidthControlEnabled:Z

    #@d
    if-nez v1, :cond_0

    #@f
    return-void

    #@10
    .line 1732
    :cond_0
    iget-object v2, p0, Lcom/android/server/NetworkManagementService;->mQuotaLock:Ljava/lang/Object;

    #@12
    monitor-enter v2

    #@13
    .line 1733
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
    .line 1735
    return-void

    #@1d
    .line 1740
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
    .line 1741
    iget-object v1, p0, Lcom/android/server/NetworkManagementService;->mActiveAlerts:Ljava/util/HashMap;

    #@33
    invoke-virtual {v1, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@36
    monitor-exit v2

    #@37
    .line 1725
    return-void

    #@38
    .line 1742
    :catch_0
    move-exception v0

    #@39
    .line 1743
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
    .line 1732
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
    .line 2542
    const-string/jumbo v0, "remove"

    #@3
    const-string/jumbo v1, "local"

    #@6
    invoke-direct {p0, v0, v1, p1}, Lcom/android/server/NetworkManagementService;->modifyInterfaceInNetwork(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    #@9
    .line 2541
    return-void
.end method

.method public removeInterfaceFromNetwork(Ljava/lang/String;I)V
    .locals 3
    .param p1, "iface"    # Ljava/lang/String;
    .param p2, "netId"    # I

    #@0
    .prologue
    .line 2389
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
    .line 2388
    return-void
.end method

.method public removeInterfaceQuota(Ljava/lang/String;)V
    .locals 7
    .param p1, "iface"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1672
    iget-object v1, p0, Lcom/android/server/NetworkManagementService;->mContext:Landroid/content/Context;

    #@2
    const-string/jumbo v2, "android.permission.CONNECTIVITY_INTERNAL"

    #@5
    const-string/jumbo v3, "NetworkManagement"

    #@8
    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    #@b
    .line 1676
    iget-boolean v1, p0, Lcom/android/server/NetworkManagementService;->mBandwidthControlEnabled:Z

    #@d
    if-nez v1, :cond_0

    #@f
    return-void

    #@10
    .line 1678
    :cond_0
    iget-object v2, p0, Lcom/android/server/NetworkManagementService;->mQuotaLock:Ljava/lang/Object;

    #@12
    monitor-enter v2

    #@13
    .line 1679
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
    .line 1681
    return-void

    #@1d
    .line 1684
    :cond_1
    :try_start_1
    iget-object v1, p0, Lcom/android/server/NetworkManagementService;->mActiveQuotas:Ljava/util/HashMap;

    #@1f
    invoke-virtual {v1, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    #@22
    .line 1685
    iget-object v1, p0, Lcom/android/server/NetworkManagementService;->mActiveAlerts:Ljava/util/HashMap;

    #@24
    invoke-virtual {v1, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@27
    .line 1689
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
    .line 1671
    return-void

    #@3d
    .line 1690
    :catch_0
    move-exception v0

    #@3e
    .line 1691
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
    .line 1678
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
    .line 2373
    iget-object v1, p0, Lcom/android/server/NetworkManagementService;->mContext:Landroid/content/Context;

    #@2
    const-string/jumbo v2, "android.permission.CONNECTIVITY_INTERNAL"

    #@5
    const-string/jumbo v3, "NetworkManagement"

    #@8
    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    #@b
    .line 2376
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
    .line 2372
    return-void

    #@24
    .line 2377
    :catch_0
    move-exception v0

    #@25
    .line 2378
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
    .line 1077
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
    .line 1076
    return-void
.end method

.method public removeVpnUidRanges(I[Landroid/net/UidRange;)V
    .locals 8
    .param p1, "netId"    # I
    .param p2, "ranges"    # [Landroid/net/UidRange;

    #@0
    .prologue
    .line 1939
    iget-object v5, p0, Lcom/android/server/NetworkManagementService;->mContext:Landroid/content/Context;

    #@2
    const-string/jumbo v6, "android.permission.CONNECTIVITY_INTERNAL"

    #@5
    const-string/jumbo v7, "NetworkManagement"

    #@8
    invoke-virtual {v5, v6, v7}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    #@b
    .line 1940
    const/16 v5, 0xd

    #@d
    new-array v2, v5, [Ljava/lang/Object;

    #@f
    .line 1941
    .local v2, "argv":[Ljava/lang/Object;
    const-string/jumbo v5, "users"

    #@12
    const/4 v6, 0x0

    #@13
    aput-object v5, v2, v6

    #@15
    .line 1942
    const-string/jumbo v5, "remove"

    #@18
    const/4 v6, 0x1

    #@19
    aput-object v5, v2, v6

    #@1b
    .line 1943
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@1e
    move-result-object v5

    #@1f
    const/4 v6, 0x2

    #@20
    aput-object v5, v2, v6

    #@22
    .line 1944
    const/4 v0, 0x3

    #@23
    .line 1946
    .local v0, "argc":I
    const/4 v4, 0x0

    #@24
    .local v4, "i":I
    :goto_0
    array-length v5, p2

    #@25
    if-ge v4, v5, :cond_2

    #@27
    .line 1947
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
    .line 1948
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
    .line 1950
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
    .line 1954
    const/4 v0, 0x3

    #@46
    .line 1946
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
    .line 1948
    .end local v1    # "argc":I
    .restart local v0    # "argc":I
    goto :goto_1

    #@4b
    .line 1951
    .end local v0    # "argc":I
    .restart local v1    # "argc":I
    :catch_0
    move-exception v3

    #@4c
    .line 1952
    .local v3, "e":Lcom/android/server/NativeDaemonConnectorException;
    invoke-virtual {v3}, Lcom/android/server/NativeDaemonConnectorException;->rethrowAsParcelableException()Ljava/lang/IllegalArgumentException;

    #@4f
    move-result-object v5

    #@50
    throw v5

    #@51
    .line 1938
    .end local v1    # "argc":I
    .end local v3    # "e":Lcom/android/server/NativeDaemonConnectorException;
    .restart local v0    # "argc":I
    :cond_2
    return-void
.end method

.method public setAccessPoint(Landroid/net/wifi/WifiConfiguration;Ljava/lang/String;)V
    .locals 6
    .param p1, "wifiConfig"    # Landroid/net/wifi/WifiConfiguration;
    .param p2, "wlanIface"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1538
    iget-object v1, p0, Lcom/android/server/NetworkManagementService;->mContext:Landroid/content/Context;

    #@2
    const-string/jumbo v2, "android.permission.CONNECTIVITY_INTERNAL"

    #@5
    const-string/jumbo v3, "NetworkManagement"

    #@8
    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    #@b
    .line 1540
    if-nez p1, :cond_0

    #@d
    .line 1541
    :try_start_0
    iget-object v1, p0, Lcom/android/server/NetworkManagementService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    #@f
    const-string/jumbo v2, "softap"

    #@12
    const/4 v3, 0x2

    #@13
    new-array v3, v3, [Ljava/lang/Object;

    #@15
    const-string/jumbo v4, "set"

    #@18
    const/4 v5, 0x0

    #@19
    aput-object v4, v3, v5

    #@1b
    const/4 v4, 0x1

    #@1c
    aput-object p2, v3, v4

    #@1e
    invoke-virtual {v1, v2, v3}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;

    #@21
    .line 1537
    :goto_0
    return-void

    #@22
    .line 1543
    :cond_0
    iget-object v1, p0, Lcom/android/server/NetworkManagementService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    #@24
    const-string/jumbo v2, "softap"

    #@27
    const/4 v3, 0x7

    #@28
    new-array v3, v3, [Ljava/lang/Object;

    #@2a
    const-string/jumbo v4, "set"

    #@2d
    const/4 v5, 0x0

    #@2e
    aput-object v4, v3, v5

    #@30
    const/4 v4, 0x1

    #@31
    aput-object p2, v3, v4

    #@33
    iget-object v4, p1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    #@35
    const/4 v5, 0x2

    #@36
    aput-object v4, v3, v5

    #@38
    .line 1544
    const-string/jumbo v4, "broadcast"

    #@3b
    const/4 v5, 0x3

    #@3c
    aput-object v4, v3, v5

    #@3e
    const-string/jumbo v4, "6"

    #@41
    const/4 v5, 0x4

    #@42
    aput-object v4, v3, v5

    #@44
    invoke-static {p1}, Lcom/android/server/NetworkManagementService;->getSecurityType(Landroid/net/wifi/WifiConfiguration;)Ljava/lang/String;

    #@47
    move-result-object v4

    #@48
    const/4 v5, 0x5

    #@49
    aput-object v4, v3, v5

    #@4b
    .line 1545
    new-instance v4, Lcom/android/server/NativeDaemonConnector$SensitiveArg;

    #@4d
    iget-object v5, p1, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    #@4f
    invoke-direct {v4, v5}, Lcom/android/server/NativeDaemonConnector$SensitiveArg;-><init>(Ljava/lang/Object;)V

    #@52
    const/4 v5, 0x6

    #@53
    aput-object v4, v3, v5

    #@55
    .line 1543
    invoke-virtual {v1, v2, v3}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;
    :try_end_0
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_0 .. :try_end_0} :catch_0

    #@58
    goto :goto_0

    #@59
    .line 1547
    :catch_0
    move-exception v0

    #@5a
    .line 1548
    .local v0, "e":Lcom/android/server/NativeDaemonConnectorException;
    invoke-virtual {v0}, Lcom/android/server/NativeDaemonConnectorException;->rethrowAsParcelableException()Ljava/lang/IllegalArgumentException;

    #@5d
    move-result-object v1

    #@5e
    throw v1
.end method

.method public setDefaultNetId(I)V
    .locals 6
    .param p1, "netId"    # I

    #@0
    .prologue
    .line 2424
    iget-object v1, p0, Lcom/android/server/NetworkManagementService;->mContext:Landroid/content/Context;

    #@2
    const-string/jumbo v2, "android.permission.CONNECTIVITY_INTERNAL"

    #@5
    const-string/jumbo v3, "NetworkManagement"

    #@8
    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    #@b
    .line 2427
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
    .line 2423
    return-void

    #@2a
    .line 2428
    :catch_0
    move-exception v0

    #@2b
    .line 2429
    .local v0, "e":Lcom/android/server/NativeDaemonConnectorException;
    invoke-virtual {v0}, Lcom/android/server/NativeDaemonConnectorException;->rethrowAsParcelableException()Ljava/lang/IllegalArgumentException;

    #@2e
    move-result-object v1

    #@2f
    throw v1
.end method

.method public setDnsForwarders(Landroid/net/Network;[Ljava/lang/String;)V
    .locals 9
    .param p1, "network"    # Landroid/net/Network;
    .param p2, "dns"    # [Ljava/lang/String;

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 1343
    iget-object v5, p0, Lcom/android/server/NetworkManagementService;->mContext:Landroid/content/Context;

    #@3
    const-string/jumbo v6, "android.permission.CONNECTIVITY_INTERNAL"

    #@6
    const-string/jumbo v7, "NetworkManagement"

    #@9
    invoke-virtual {v5, v6, v7}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    #@c
    .line 1345
    if-eqz p1, :cond_0

    #@e
    iget v2, p1, Landroid/net/Network;->netId:I

    #@10
    .line 1346
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
    .line 1348
    .local v0, "cmd":Lcom/android/server/NativeDaemonConnector$Command;
    array-length v5, p2

    #@2e
    :goto_1
    if-ge v4, v5, :cond_1

    #@30
    aget-object v3, p2, v4

    #@32
    .line 1349
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
    .line 1348
    add-int/lit8 v4, v4, 0x1

    #@3f
    goto :goto_1

    #@40
    .line 1345
    .end local v0    # "cmd":Lcom/android/server/NativeDaemonConnector$Command;
    .end local v2    # "netId":I
    .end local v3    # "s":Ljava/lang/String;
    :cond_0
    const/4 v2, 0x0

    #@41
    .restart local v2    # "netId":I
    goto :goto_0

    #@42
    .line 1353
    .restart local v0    # "cmd":Lcom/android/server/NativeDaemonConnector$Command;
    :cond_1
    :try_start_0
    iget-object v4, p0, Lcom/android/server/NetworkManagementService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    #@44
    invoke-virtual {v4, v0}, Lcom/android/server/NativeDaemonConnector;->execute(Lcom/android/server/NativeDaemonConnector$Command;)Lcom/android/server/NativeDaemonEvent;
    :try_end_0
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_0 .. :try_end_0} :catch_0

    #@47
    .line 1342
    return-void

    #@48
    .line 1354
    :catch_0
    move-exception v1

    #@49
    .line 1355
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
    .line 1892
    iget-object v5, p0, Lcom/android/server/NetworkManagementService;->mContext:Landroid/content/Context;

    #@5
    const-string/jumbo v6, "android.permission.CONNECTIVITY_INTERNAL"

    #@8
    const-string/jumbo v7, "NetworkManagement"

    #@b
    invoke-virtual {v5, v6, v7}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    #@e
    .line 1895
    array-length v5, p2

    #@f
    if-lez v5, :cond_2

    #@11
    .line 1896
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
    .line 1897
    if-nez p3, :cond_0

    #@26
    const-string/jumbo p3, ""

    #@29
    .end local p3    # "domains":Ljava/lang/String;
    :cond_0
    aput-object p3, v6, v9

    #@2b
    .line 1896
    invoke-direct {v1, v5, v6}, Lcom/android/server/NativeDaemonConnector$Command;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    #@2e
    .line 1898
    .local v1, "cmd":Lcom/android/server/NativeDaemonConnector$Command;
    array-length v5, p2

    #@2f
    :goto_0
    if-ge v4, v5, :cond_3

    #@31
    aget-object v3, p2, v4

    #@33
    .line 1899
    .local v3, "s":Ljava/lang/String;
    invoke-static {v3}, Landroid/net/NetworkUtils;->numericToInetAddress(Ljava/lang/String;)Ljava/net/InetAddress;

    #@36
    move-result-object v0

    #@37
    .line 1900
    .local v0, "a":Ljava/net/InetAddress;
    invoke-virtual {v0}, Ljava/net/InetAddress;->isAnyLocalAddress()Z

    #@3a
    move-result v6

    #@3b
    if-nez v6, :cond_1

    #@3d
    .line 1901
    invoke-virtual {v0}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    #@40
    move-result-object v6

    #@41
    invoke-virtual {v1, v6}, Lcom/android/server/NativeDaemonConnector$Command;->appendArg(Ljava/lang/Object;)Lcom/android/server/NativeDaemonConnector$Command;

    #@44
    .line 1898
    :cond_1
    add-int/lit8 v4, v4, 0x1

    #@46
    goto :goto_0

    #@47
    .line 1905
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
    .line 1909
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
    .line 1891
    return-void

    #@62
    .line 1910
    :catch_0
    move-exception v2

    #@63
    .line 1911
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
    .line 2024
    invoke-static {}, Lcom/android/server/NetworkManagementService;->enforceSystemUid()V

    #@3
    .line 2025
    iget-object v4, p0, Lcom/android/server/NetworkManagementService;->mQuotaLock:Ljava/lang/Object;

    #@5
    monitor-enter v4

    #@6
    .line 2026
    :try_start_0
    iget-object v3, p0, Lcom/android/server/NetworkManagementService;->mFirewallChainStates:Landroid/util/SparseBooleanArray;

    #@8
    invoke-virtual {v3, p1}, Landroid/util/SparseBooleanArray;->indexOfKey(I)I

    #@b
    move-result v3

    #@c
    if-ltz v3, :cond_0

    #@e
    .line 2027
    iget-object v3, p0, Lcom/android/server/NetworkManagementService;->mFirewallChainStates:Landroid/util/SparseBooleanArray;

    #@10
    invoke-virtual {v3, p1}, Landroid/util/SparseBooleanArray;->get(I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@13
    move-result v3

    #@14
    if-ne v3, p2, :cond_0

    #@16
    monitor-exit v4

    #@17
    .line 2029
    return-void

    #@18
    .line 2031
    :cond_0
    :try_start_1
    iget-object v3, p0, Lcom/android/server/NetworkManagementService;->mFirewallChainStates:Landroid/util/SparseBooleanArray;

    #@1a
    invoke-virtual {v3, p1, p2}, Landroid/util/SparseBooleanArray;->put(IZ)V

    #@1d
    .line 2033
    if-eqz p2, :cond_1

    #@1f
    const-string/jumbo v2, "enable_chain"
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@22
    .line 2036
    .local v2, "operation":Ljava/lang/String;
    :goto_0
    packed-switch p1, :pswitch_data_0

    #@25
    .line 2044
    :try_start_2
    new-instance v3, Ljava/lang/IllegalArgumentException;

    #@27
    new-instance v5, Ljava/lang/StringBuilder;

    #@29
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@2c
    const-string/jumbo v6, "Bad child chain: "

    #@2f
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@32
    move-result-object v5

    #@33
    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@36
    move-result-object v5

    #@37
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3a
    move-result-object v5

    #@3b
    invoke-direct {v3, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@3e
    throw v3
    :try_end_2
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@3f
    .line 2047
    :catch_0
    move-exception v1

    #@40
    .line 2048
    .local v1, "e":Lcom/android/server/NativeDaemonConnectorException;
    :try_start_3
    invoke-virtual {v1}, Lcom/android/server/NativeDaemonConnectorException;->rethrowAsParcelableException()Ljava/lang/IllegalArgumentException;

    #@43
    move-result-object v3

    #@44
    throw v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@45
    .line 2025
    .end local v1    # "e":Lcom/android/server/NativeDaemonConnectorException;
    .end local v2    # "operation":Ljava/lang/String;
    :catchall_0
    move-exception v3

    #@46
    monitor-exit v4

    #@47
    throw v3

    #@48
    .line 2033
    :cond_1
    :try_start_4
    const-string/jumbo v2, "disable_chain"
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    #@4b
    .restart local v2    # "operation":Ljava/lang/String;
    goto :goto_0

    #@4c
    .line 2038
    :pswitch_0
    :try_start_5
    const-string/jumbo v0, "standby"

    #@4f
    .line 2046
    .local v0, "chainName":Ljava/lang/String;
    :goto_1
    iget-object v3, p0, Lcom/android/server/NetworkManagementService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    #@51
    const-string/jumbo v5, "firewall"

    #@54
    const/4 v6, 0x2

    #@55
    new-array v6, v6, [Ljava/lang/Object;

    #@57
    const/4 v7, 0x0

    #@58
    aput-object v2, v6, v7

    #@5a
    const/4 v7, 0x1

    #@5b
    aput-object v0, v6, v7

    #@5d
    invoke-virtual {v3, v5, v6}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;
    :try_end_5
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    #@60
    monitor-exit v4

    #@61
    .line 2023
    return-void

    #@62
    .line 2041
    .end local v0    # "chainName":Ljava/lang/String;
    :pswitch_1
    :try_start_6
    const-string/jumbo v0, "dozable"
    :try_end_6
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    #@65
    .restart local v0    # "chainName":Ljava/lang/String;
    goto :goto_1

    #@66
    .line 2036
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public setFirewallEgressDestRule(Ljava/lang/String;IZ)V
    .locals 7
    .param p1, "addr"    # Ljava/lang/String;
    .param p2, "port"    # I
    .param p3, "allow"    # Z

    #@0
    .prologue
    .line 2012
    invoke-static {}, Lcom/android/server/NetworkManagementService;->enforceSystemUid()V

    #@3
    .line 2013
    iget-boolean v2, p0, Lcom/android/server/NetworkManagementService;->mFirewallEnabled:Z

    #@5
    invoke-static {v2}, Lcom/android/internal/util/Preconditions;->checkState(Z)V

    #@8
    .line 2014
    if-eqz p3, :cond_0

    #@a
    const-string/jumbo v1, "allow"

    #@d
    .line 2016
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
    .line 2011
    return-void

    #@2c
    .line 2014
    .end local v1    # "rule":Ljava/lang/String;
    :cond_0
    const-string/jumbo v1, "deny"

    #@2f
    .restart local v1    # "rule":Ljava/lang/String;
    goto :goto_0

    #@30
    .line 2017
    :catch_0
    move-exception v0

    #@31
    .line 2018
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
    .line 2000
    invoke-static {}, Lcom/android/server/NetworkManagementService;->enforceSystemUid()V

    #@3
    .line 2001
    iget-boolean v2, p0, Lcom/android/server/NetworkManagementService;->mFirewallEnabled:Z

    #@5
    invoke-static {v2}, Lcom/android/internal/util/Preconditions;->checkState(Z)V

    #@8
    .line 2002
    if-eqz p2, :cond_0

    #@a
    const-string/jumbo v1, "allow"

    #@d
    .line 2004
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
    .line 1999
    return-void

    #@25
    .line 2002
    .end local v1    # "rule":Ljava/lang/String;
    :cond_0
    const-string/jumbo v1, "deny"

    #@28
    .restart local v1    # "rule":Ljava/lang/String;
    goto :goto_0

    #@29
    .line 2005
    :catch_0
    move-exception v0

    #@2a
    .line 2006
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
    .line 1971
    invoke-static {}, Lcom/android/server/NetworkManagementService;->enforceSystemUid()V

    #@3
    .line 1973
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
    .line 1974
    iput-boolean p1, p0, Lcom/android/server/NetworkManagementService;->mFirewallEnabled:Z

    #@1e
    .line 1970
    return-void

    #@1f
    .line 1973
    :cond_0
    const-string/jumbo v1, "blacklist"
    :try_end_0
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_0 .. :try_end_0} :catch_0

    #@22
    goto :goto_0

    #@23
    .line 1975
    :catch_0
    move-exception v0

    #@24
    .line 1976
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
    .line 1988
    invoke-static {}, Lcom/android/server/NetworkManagementService;->enforceSystemUid()V

    #@3
    .line 1989
    iget-boolean v2, p0, Lcom/android/server/NetworkManagementService;->mFirewallEnabled:Z

    #@5
    invoke-static {v2}, Lcom/android/internal/util/Preconditions;->checkState(Z)V

    #@8
    .line 1990
    if-eqz p2, :cond_0

    #@a
    const-string/jumbo v1, "allow"

    #@d
    .line 1992
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
    .line 1987
    return-void

    #@25
    .line 1990
    .end local v1    # "rule":Ljava/lang/String;
    :cond_0
    const-string/jumbo v1, "deny"

    #@28
    .restart local v1    # "rule":Ljava/lang/String;
    goto :goto_0

    #@29
    .line 1993
    :catch_0
    move-exception v0

    #@2a
    .line 1994
    .local v0, "e":Lcom/android/server/NativeDaemonConnectorException;
    invoke-virtual {v0}, Lcom/android/server/NativeDaemonConnectorException;->rethrowAsParcelableException()Ljava/lang/IllegalArgumentException;

    #@2d
    move-result-object v2

    #@2e
    throw v2
.end method

.method public setFirewallUidRule(III)V
    .locals 0
    .param p1, "chain"    # I
    .param p2, "uid"    # I
    .param p3, "rule"    # I

    #@0
    .prologue
    .line 2095
    invoke-static {}, Lcom/android/server/NetworkManagementService;->enforceSystemUid()V

    #@3
    .line 2096
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/NetworkManagementService;->setFirewallUidRuleInternal(III)V

    #@6
    .line 2094
    return-void
.end method

.method public setFirewallUidRules(I[I[I)V
    .locals 8
    .param p1, "chain"    # I
    .param p2, "uids"    # [I
    .param p3, "rules"    # [I

    #@0
    .prologue
    .line 2066
    invoke-static {}, Lcom/android/server/NetworkManagementService;->enforceSystemUid()V

    #@3
    .line 2067
    iget-object v7, p0, Lcom/android/server/NetworkManagementService;->mQuotaLock:Ljava/lang/Object;

    #@5
    monitor-enter v7

    #@6
    .line 2068
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/NetworkManagementService;->getUidFirewallRules(I)Landroid/util/SparseIntArray;

    #@9
    move-result-object v5

    #@a
    .line 2069
    .local v5, "uidFirewallRules":Landroid/util/SparseIntArray;
    new-instance v1, Landroid/util/SparseIntArray;

    #@c
    invoke-direct {v1}, Landroid/util/SparseIntArray;-><init>()V

    #@f
    .line 2071
    .local v1, "newRules":Landroid/util/SparseIntArray;
    array-length v6, p2

    #@10
    add-int/lit8 v0, v6, -0x1

    #@12
    .local v0, "index":I
    :goto_0
    if-ltz v0, :cond_0

    #@14
    .line 2072
    aget v4, p2, v0

    #@16
    .line 2073
    .local v4, "uid":I
    aget v2, p3, v0

    #@18
    .line 2074
    .local v2, "rule":I
    invoke-virtual {p0, p1, v4, v2}, Lcom/android/server/NetworkManagementService;->setFirewallUidRule(III)V

    #@1b
    .line 2075
    invoke-virtual {v1, v4, v2}, Landroid/util/SparseIntArray;->put(II)V

    #@1e
    .line 2071
    add-int/lit8 v0, v0, -0x1

    #@20
    goto :goto_0

    #@21
    .line 2078
    .end local v2    # "rule":I
    .end local v4    # "uid":I
    :cond_0
    new-instance v3, Landroid/util/SparseIntArray;

    #@23
    invoke-direct {v3}, Landroid/util/SparseIntArray;-><init>()V

    #@26
    .line 2079
    .local v3, "rulesToRemove":Landroid/util/SparseIntArray;
    invoke-virtual {v5}, Landroid/util/SparseIntArray;->size()I

    #@29
    move-result v6

    #@2a
    add-int/lit8 v0, v6, -0x1

    #@2c
    :goto_1
    if-ltz v0, :cond_2

    #@2e
    .line 2080
    invoke-virtual {v5, v0}, Landroid/util/SparseIntArray;->keyAt(I)I

    #@31
    move-result v4

    #@32
    .line 2081
    .restart local v4    # "uid":I
    invoke-virtual {v1, v4}, Landroid/util/SparseIntArray;->indexOfKey(I)I

    #@35
    move-result v6

    #@36
    if-gez v6, :cond_1

    #@38
    .line 2082
    const/4 v6, 0x0

    #@39
    invoke-virtual {v3, v4, v6}, Landroid/util/SparseIntArray;->put(II)V

    #@3c
    .line 2079
    :cond_1
    add-int/lit8 v0, v0, -0x1

    #@3e
    goto :goto_1

    #@3f
    .line 2086
    .end local v4    # "uid":I
    :cond_2
    invoke-virtual {v3}, Landroid/util/SparseIntArray;->size()I

    #@42
    move-result v6

    #@43
    add-int/lit8 v0, v6, -0x1

    #@45
    :goto_2
    if-ltz v0, :cond_3

    #@47
    .line 2087
    invoke-virtual {v3, v0}, Landroid/util/SparseIntArray;->keyAt(I)I

    #@4a
    move-result v4

    #@4b
    .line 2088
    .restart local v4    # "uid":I
    const/4 v6, 0x0

    #@4c
    invoke-direct {p0, p1, v4, v6}, Lcom/android/server/NetworkManagementService;->setFirewallUidRuleInternal(III)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@4f
    .line 2086
    add-int/lit8 v0, v0, -0x1

    #@51
    goto :goto_2

    #@52
    .end local v4    # "uid":I
    :cond_3
    monitor-exit v7

    #@53
    .line 2065
    return-void

    #@54
    .line 2067
    .end local v0    # "index":I
    .end local v1    # "newRules":Landroid/util/SparseIntArray;
    .end local v3    # "rulesToRemove":Landroid/util/SparseIntArray;
    .end local v5    # "uidFirewallRules":Landroid/util/SparseIntArray;
    :catchall_0
    move-exception v6

    #@55
    monitor-exit v7

    #@56
    throw v6
.end method

.method public setGlobalAlert(J)V
    .locals 7
    .param p1, "alertBytes"    # J

    #@0
    .prologue
    .line 1750
    iget-object v1, p0, Lcom/android/server/NetworkManagementService;->mContext:Landroid/content/Context;

    #@2
    const-string/jumbo v2, "android.permission.CONNECTIVITY_INTERNAL"

    #@5
    const-string/jumbo v3, "NetworkManagement"

    #@8
    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    #@b
    .line 1754
    iget-boolean v1, p0, Lcom/android/server/NetworkManagementService;->mBandwidthControlEnabled:Z

    #@d
    if-nez v1, :cond_0

    #@f
    return-void

    #@10
    .line 1757
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
    .line 1749
    return-void

    #@29
    .line 1758
    :catch_0
    move-exception v0

    #@2a
    .line 1759
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
    .line 1698
    iget-object v1, p0, Lcom/android/server/NetworkManagementService;->mContext:Landroid/content/Context;

    #@2
    const-string/jumbo v2, "android.permission.CONNECTIVITY_INTERNAL"

    #@5
    const-string/jumbo v3, "NetworkManagement"

    #@8
    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    #@b
    .line 1702
    iget-boolean v1, p0, Lcom/android/server/NetworkManagementService;->mBandwidthControlEnabled:Z

    #@d
    if-nez v1, :cond_0

    #@f
    return-void

    #@10
    .line 1705
    :cond_0
    iget-object v1, p0, Lcom/android/server/NetworkManagementService;->mActiveQuotas:Ljava/util/HashMap;

    #@12
    invoke-virtual {v1, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    #@15
    move-result v1

    #@16
    if-nez v1, :cond_1

    #@18
    .line 1706
    new-instance v1, Ljava/lang/IllegalStateException;

    #@1a
    const-string/jumbo v2, "setting alert requires existing quota on iface"

    #@1d
    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@20
    throw v1

    #@21
    .line 1709
    :cond_1
    iget-object v2, p0, Lcom/android/server/NetworkManagementService;->mQuotaLock:Ljava/lang/Object;

    #@23
    monitor-enter v2

    #@24
    .line 1710
    :try_start_0
    iget-object v1, p0, Lcom/android/server/NetworkManagementService;->mActiveAlerts:Ljava/util/HashMap;

    #@26
    invoke-virtual {v1, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    #@29
    move-result v1

    #@2a
    if-eqz v1, :cond_2

    #@2c
    .line 1711
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
    .line 1709
    :catchall_0
    move-exception v1

    #@4e
    monitor-exit v2

    #@4f
    throw v1

    #@50
    .line 1716
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
    .line 1717
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
    .line 1697
    return-void

    #@76
    .line 1718
    :catch_0
    move-exception v0

    #@77
    .line 1719
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
    .line 980
    iget-object v5, p0, Lcom/android/server/NetworkManagementService;->mContext:Landroid/content/Context;

    #@2
    const-string/jumbo v6, "android.permission.CONNECTIVITY_INTERNAL"

    #@5
    const-string/jumbo v7, "NetworkManagement"

    #@8
    invoke-virtual {v5, v6, v7}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    #@b
    .line 981
    invoke-virtual {p2}, Landroid/net/InterfaceConfiguration;->getLinkAddress()Landroid/net/LinkAddress;

    #@e
    move-result-object v4

    #@f
    .line 982
    .local v4, "linkAddr":Landroid/net/LinkAddress;
    if-eqz v4, :cond_0

    #@11
    invoke-virtual {v4}, Landroid/net/LinkAddress;->getAddress()Ljava/net/InetAddress;

    #@14
    move-result-object v5

    #@15
    if-nez v5, :cond_1

    #@17
    .line 983
    :cond_0
    new-instance v5, Ljava/lang/IllegalStateException;

    #@19
    const-string/jumbo v6, "Null LinkAddress given"

    #@1c
    invoke-direct {v5, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@1f
    throw v5

    #@20
    .line 986
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
    .line 987
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
    .line 988
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
    .line 986
    invoke-direct {v0, v5, v6}, Lcom/android/server/NativeDaemonConnector$Command;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    #@4a
    .line 989
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
    .line 990
    .local v2, "flag":Ljava/lang/String;
    invoke-virtual {v0, v2}, Lcom/android/server/NativeDaemonConnector$Command;->appendArg(Ljava/lang/Object;)Lcom/android/server/NativeDaemonConnector$Command;

    #@61
    goto :goto_0

    #@62
    .line 994
    .end local v2    # "flag":Ljava/lang/String;
    :cond_2
    :try_start_0
    iget-object v5, p0, Lcom/android/server/NetworkManagementService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    #@64
    invoke-virtual {v5, v0}, Lcom/android/server/NativeDaemonConnector;->execute(Lcom/android/server/NativeDaemonConnector$Command;)Lcom/android/server/NativeDaemonEvent;
    :try_end_0
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_0 .. :try_end_0} :catch_0

    #@67
    .line 979
    return-void

    #@68
    .line 995
    :catch_0
    move-exception v1

    #@69
    .line 996
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
    .line 1002
    iget-object v1, p0, Lcom/android/server/NetworkManagementService;->mContext:Landroid/content/Context;

    #@2
    const-string/jumbo v2, "android.permission.CONNECTIVITY_INTERNAL"

    #@5
    const-string/jumbo v3, "NetworkManagement"

    #@8
    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    #@b
    .line 1003
    invoke-virtual {p0, p1}, Lcom/android/server/NetworkManagementService;->getInterfaceConfig(Ljava/lang/String;)Landroid/net/InterfaceConfiguration;

    #@e
    move-result-object v0

    #@f
    .line 1004
    .local v0, "ifcg":Landroid/net/InterfaceConfiguration;
    invoke-virtual {v0}, Landroid/net/InterfaceConfiguration;->setInterfaceDown()V

    #@12
    .line 1005
    invoke-virtual {p0, p1, v0}, Lcom/android/server/NetworkManagementService;->setInterfaceConfig(Ljava/lang/String;Landroid/net/InterfaceConfiguration;)V

    #@15
    .line 1001
    return-void
.end method

.method public setInterfaceIpv6NdOffload(Ljava/lang/String;Z)V
    .locals 6
    .param p1, "iface"    # Ljava/lang/String;
    .param p2, "enable"    # Z

    #@0
    .prologue
    .line 1061
    iget-object v1, p0, Lcom/android/server/NetworkManagementService;->mContext:Landroid/content/Context;

    #@2
    const-string/jumbo v2, "android.permission.CONNECTIVITY_INTERNAL"

    #@5
    const-string/jumbo v3, "NetworkManagement"

    #@8
    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    #@b
    .line 1063
    :try_start_0
    iget-object v2, p0, Lcom/android/server/NetworkManagementService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    #@d
    .line 1064
    const-string/jumbo v3, "interface"

    #@10
    .line 1063
    const/4 v1, 0x3

    #@11
    new-array v4, v1, [Ljava/lang/Object;

    #@13
    .line 1064
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
    .line 1063
    invoke-virtual {v2, v3, v4}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;

    #@27
    .line 1060
    return-void

    #@28
    .line 1064
    :cond_0
    const-string/jumbo v1, "disable"
    :try_end_0
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_0 .. :try_end_0} :catch_0

    #@2b
    goto :goto_0

    #@2c
    .line 1065
    :catch_0
    move-exception v0

    #@2d
    .line 1066
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
    .line 1018
    iget-object v1, p0, Lcom/android/server/NetworkManagementService;->mContext:Landroid/content/Context;

    #@2
    const-string/jumbo v2, "android.permission.CONNECTIVITY_INTERNAL"

    #@5
    const-string/jumbo v3, "NetworkManagement"

    #@8
    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    #@b
    .line 1020
    :try_start_0
    iget-object v2, p0, Lcom/android/server/NetworkManagementService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    #@d
    .line 1021
    const-string/jumbo v3, "interface"

    #@10
    .line 1020
    const/4 v1, 0x3

    #@11
    new-array v4, v1, [Ljava/lang/Object;

    #@13
    .line 1021
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
    .line 1020
    invoke-virtual {v2, v3, v4}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;

    #@27
    .line 1017
    return-void

    #@28
    .line 1021
    :cond_0
    const-string/jumbo v1, "disable"
    :try_end_0
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_0 .. :try_end_0} :catch_0

    #@2b
    goto :goto_0

    #@2c
    .line 1022
    :catch_0
    move-exception v0

    #@2d
    .line 1023
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
    .line 1649
    iget-object v1, p0, Lcom/android/server/NetworkManagementService;->mContext:Landroid/content/Context;

    #@2
    const-string/jumbo v2, "android.permission.CONNECTIVITY_INTERNAL"

    #@5
    const-string/jumbo v3, "NetworkManagement"

    #@8
    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    #@b
    .line 1653
    iget-boolean v1, p0, Lcom/android/server/NetworkManagementService;->mBandwidthControlEnabled:Z

    #@d
    if-nez v1, :cond_0

    #@f
    return-void

    #@10
    .line 1655
    :cond_0
    iget-object v2, p0, Lcom/android/server/NetworkManagementService;->mQuotaLock:Ljava/lang/Object;

    #@12
    monitor-enter v2

    #@13
    .line 1656
    :try_start_0
    iget-object v1, p0, Lcom/android/server/NetworkManagementService;->mActiveQuotas:Ljava/util/HashMap;

    #@15
    invoke-virtual {v1, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    #@18
    move-result v1

    #@19
    if-eqz v1, :cond_1

    #@1b
    .line 1657
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
    .line 1655
    :catchall_0
    move-exception v1

    #@3d
    monitor-exit v2

    #@3e
    throw v1

    #@3f
    .line 1662
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
    .line 1663
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
    .line 1648
    return-void

    #@65
    .line 1664
    :catch_0
    move-exception v0

    #@66
    .line 1665
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
    .line 1010
    iget-object v1, p0, Lcom/android/server/NetworkManagementService;->mContext:Landroid/content/Context;

    #@2
    const-string/jumbo v2, "android.permission.CONNECTIVITY_INTERNAL"

    #@5
    const-string/jumbo v3, "NetworkManagement"

    #@8
    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    #@b
    .line 1011
    invoke-virtual {p0, p1}, Lcom/android/server/NetworkManagementService;->getInterfaceConfig(Ljava/lang/String;)Landroid/net/InterfaceConfiguration;

    #@e
    move-result-object v0

    #@f
    .line 1012
    .local v0, "ifcg":Landroid/net/InterfaceConfiguration;
    invoke-virtual {v0}, Landroid/net/InterfaceConfiguration;->setInterfaceUp()V

    #@12
    .line 1013
    invoke-virtual {p0, p1, v0}, Lcom/android/server/NetworkManagementService;->setInterfaceConfig(Ljava/lang/String;Landroid/net/InterfaceConfiguration;)V

    #@15
    .line 1009
    return-void
.end method

.method public setIpForwardingEnabled(Z)V
    .locals 6
    .param p1, "enable"    # Z

    #@0
    .prologue
    .line 1251
    iget-object v1, p0, Lcom/android/server/NetworkManagementService;->mContext:Landroid/content/Context;

    #@2
    const-string/jumbo v2, "android.permission.CONNECTIVITY_INTERNAL"

    #@5
    const-string/jumbo v3, "NetworkManagement"

    #@8
    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    #@b
    .line 1253
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
    .line 1250
    return-void

    #@25
    .line 1253
    :cond_0
    const-string/jumbo v1, "disable"
    :try_end_0
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_0 .. :try_end_0} :catch_0

    #@28
    goto :goto_0

    #@29
    .line 1254
    :catch_0
    move-exception v0

    #@2a
    .line 1255
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
    .line 1215
    iget-object v2, p0, Lcom/android/server/NetworkManagementService;->mContext:Landroid/content/Context;

    #@2
    const-string/jumbo v3, "android.permission.CONNECTIVITY_INTERNAL"

    #@5
    const-string/jumbo v4, "NetworkManagement"

    #@8
    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    #@b
    .line 1219
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
    .line 1214
    .local v1, "event":Lcom/android/server/NativeDaemonEvent;
    return-void

    #@28
    .line 1220
    .end local v1    # "event":Lcom/android/server/NativeDaemonEvent;
    :catch_0
    move-exception v0

    #@29
    .line 1221
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
    .line 2446
    iget-object v1, p0, Lcom/android/server/NetworkManagementService;->mContext:Landroid/content/Context;

    #@2
    const-string/jumbo v2, "android.permission.CONNECTIVITY_INTERNAL"

    #@5
    const-string/jumbo v3, "NetworkManagement"

    #@8
    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    #@b
    .line 2449
    if-eqz p2, :cond_0

    #@d
    .line 2450
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
    .line 2445
    :goto_0
    return-void

    #@35
    .line 2452
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
    .line 2454
    :catch_0
    move-exception v0

    #@5b
    .line 2455
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
    .line 2462
    iget-object v5, p0, Lcom/android/server/NetworkManagementService;->mContext:Landroid/content/Context;

    #@2
    const-string/jumbo v6, "android.permission.CONNECTIVITY_INTERNAL"

    #@5
    const-string/jumbo v7, "NetworkManagement"

    #@8
    invoke-virtual {v5, v6, v7}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    #@b
    .line 2464
    const/16 v5, 0xe

    #@d
    new-array v2, v5, [Ljava/lang/Object;

    #@f
    .line 2465
    .local v2, "argv":[Ljava/lang/Object;
    const-string/jumbo v5, "permission"

    #@12
    const/4 v6, 0x0

    #@13
    aput-object v5, v2, v6

    #@15
    .line 2466
    const-string/jumbo v5, "user"

    #@18
    const/4 v6, 0x1

    #@19
    aput-object v5, v2, v6

    #@1b
    .line 2467
    const-string/jumbo v5, "set"

    #@1e
    const/4 v6, 0x2

    #@1f
    aput-object v5, v2, v6

    #@21
    .line 2468
    const/4 v5, 0x3

    #@22
    aput-object p1, v2, v5

    #@24
    .line 2469
    const/4 v0, 0x4

    #@25
    .line 2471
    .local v0, "argc":I
    const/4 v4, 0x0

    #@26
    .local v4, "i":I
    :goto_0
    array-length v5, p2

    #@27
    if-ge v4, v5, :cond_2

    #@29
    .line 2472
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
    .line 2473
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
    .line 2475
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
    .line 2479
    const/4 v0, 0x4

    #@48
    .line 2471
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
    .line 2473
    .end local v1    # "argc":I
    .restart local v0    # "argc":I
    goto :goto_1

    #@4d
    .line 2476
    .end local v0    # "argc":I
    .restart local v1    # "argc":I
    :catch_0
    move-exception v3

    #@4e
    .line 2477
    .local v3, "e":Lcom/android/server/NativeDaemonConnectorException;
    invoke-virtual {v3}, Lcom/android/server/NativeDaemonConnectorException;->rethrowAsParcelableException()Ljava/lang/IllegalArgumentException;

    #@51
    move-result-object v5

    #@52
    throw v5

    #@53
    .line 2461
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
    .line 1794
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    #@3
    move-result v3

    #@4
    if-eq v3, p1, :cond_0

    #@6
    .line 1795
    iget-object v3, p0, Lcom/android/server/NetworkManagementService;->mContext:Landroid/content/Context;

    #@8
    const-string/jumbo v4, "android.permission.CONNECTIVITY_INTERNAL"

    #@b
    const-string/jumbo v5, "NetworkManagement"

    #@e
    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    #@11
    .line 1798
    :cond_0
    iget-object v4, p0, Lcom/android/server/NetworkManagementService;->mQuotaLock:Ljava/lang/Object;

    #@13
    monitor-enter v4

    #@14
    .line 1799
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
    .line 1800
    .local v1, "oldPolicy":I
    if-ne v1, p2, :cond_1

    #@1d
    monitor-exit v4

    #@1e
    .line 1801
    return-void

    #@1f
    .line 1804
    :cond_1
    :try_start_1
    iget-boolean v3, p0, Lcom/android/server/NetworkManagementService;->mStrictEnabled:Z

    #@21
    if-nez v3, :cond_2

    #@23
    .line 1807
    iget-object v3, p0, Lcom/android/server/NetworkManagementService;->mUidCleartextPolicy:Landroid/util/SparseIntArray;

    #@25
    invoke-virtual {v3, p1, p2}, Landroid/util/SparseIntArray;->put(II)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@28
    monitor-exit v4

    #@29
    .line 1808
    return-void

    #@2a
    .line 1812
    :cond_2
    packed-switch p2, :pswitch_data_0

    #@2d
    .line 1823
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
    .line 1798
    .end local v1    # "oldPolicy":I
    :catchall_0
    move-exception v3

    #@48
    monitor-exit v4

    #@49
    throw v3

    #@4a
    .line 1814
    .restart local v1    # "oldPolicy":I
    :pswitch_0
    :try_start_3
    const-string/jumbo v2, "accept"
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@4d
    .line 1827
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
    .line 1828
    iget-object v3, p0, Lcom/android/server/NetworkManagementService;->mUidCleartextPolicy:Landroid/util/SparseIntArray;

    #@6a
    invoke-virtual {v3, p1, p2}, Landroid/util/SparseIntArray;->put(II)V
    :try_end_4
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    #@6d
    monitor-exit v4

    #@6e
    .line 1793
    return-void

    #@6f
    .line 1817
    .end local v2    # "policyString":Ljava/lang/String;
    :pswitch_1
    :try_start_5
    const-string/jumbo v2, "log"

    #@72
    .restart local v2    # "policyString":Ljava/lang/String;
    goto :goto_0

    #@73
    .line 1820
    .end local v2    # "policyString":Ljava/lang/String;
    :pswitch_2
    const-string/jumbo v2, "reject"

    #@76
    .restart local v2    # "policyString":Ljava/lang/String;
    goto :goto_0

    #@77
    .line 1829
    :catch_0
    move-exception v0

    #@78
    .line 1830
    .local v0, "e":Lcom/android/server/NativeDaemonConnectorException;
    invoke-virtual {v0}, Lcom/android/server/NativeDaemonConnectorException;->rethrowAsParcelableException()Ljava/lang/IllegalArgumentException;

    #@7b
    move-result-object v3

    #@7c
    throw v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    #@7d
    .line 1812
    nop

    #@7e
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public setUidNetworkRules(IZ)V
    .locals 8
    .param p1, "uid"    # I
    .param p2, "rejectOnQuotaInterfaces"    # Z

    #@0
    .prologue
    .line 1765
    iget-object v2, p0, Lcom/android/server/NetworkManagementService;->mContext:Landroid/content/Context;

    #@2
    const-string/jumbo v3, "android.permission.CONNECTIVITY_INTERNAL"

    #@5
    const-string/jumbo v4, "NetworkManagement"

    #@8
    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    #@b
    .line 1769
    iget-boolean v2, p0, Lcom/android/server/NetworkManagementService;->mBandwidthControlEnabled:Z

    #@d
    if-nez v2, :cond_0

    #@f
    return-void

    #@10
    .line 1771
    :cond_0
    iget-object v3, p0, Lcom/android/server/NetworkManagementService;->mQuotaLock:Ljava/lang/Object;

    #@12
    monitor-enter v3

    #@13
    .line 1772
    :try_start_0
    iget-object v2, p0, Lcom/android/server/NetworkManagementService;->mUidRejectOnQuota:Landroid/util/SparseBooleanArray;

    #@15
    const/4 v4, 0x0

    #@16
    invoke-virtual {v2, p1, v4}, Landroid/util/SparseBooleanArray;->get(IZ)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@19
    move-result v1

    #@1a
    .line 1773
    .local v1, "oldRejectOnQuota":Z
    if-ne v1, p2, :cond_1

    #@1c
    monitor-exit v3

    #@1d
    .line 1775
    return-void

    #@1e
    .line 1779
    :cond_1
    :try_start_1
    iget-object v4, p0, Lcom/android/server/NetworkManagementService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    #@20
    const-string/jumbo v5, "bandwidth"

    #@23
    const/4 v2, 0x2

    #@24
    new-array v6, v2, [Ljava/lang/Object;

    #@26
    .line 1780
    if-eqz p2, :cond_2

    #@28
    const-string/jumbo v2, "addnaughtyapps"

    #@2b
    :goto_0
    const/4 v7, 0x0

    #@2c
    aput-object v2, v6, v7

    #@2e
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@31
    move-result-object v2

    #@32
    const/4 v7, 0x1

    #@33
    aput-object v2, v6, v7

    #@35
    .line 1779
    invoke-virtual {v4, v5, v6}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;

    #@38
    .line 1781
    if-eqz p2, :cond_3

    #@3a
    .line 1782
    iget-object v2, p0, Lcom/android/server/NetworkManagementService;->mUidRejectOnQuota:Landroid/util/SparseBooleanArray;

    #@3c
    const/4 v4, 0x1

    #@3d
    invoke-virtual {v2, p1, v4}, Landroid/util/SparseBooleanArray;->put(IZ)V
    :try_end_1
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@40
    :goto_1
    monitor-exit v3

    #@41
    .line 1764
    return-void

    #@42
    .line 1780
    :cond_2
    :try_start_2
    const-string/jumbo v2, "removenaughtyapps"

    #@45
    goto :goto_0

    #@46
    .line 1784
    :cond_3
    iget-object v2, p0, Lcom/android/server/NetworkManagementService;->mUidRejectOnQuota:Landroid/util/SparseBooleanArray;

    #@48
    invoke-virtual {v2, p1}, Landroid/util/SparseBooleanArray;->delete(I)V
    :try_end_2
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@4b
    goto :goto_1

    #@4c
    .line 1786
    :catch_0
    move-exception v0

    #@4d
    .line 1787
    .local v0, "e":Lcom/android/server/NativeDaemonConnectorException;
    :try_start_3
    invoke-virtual {v0}, Lcom/android/server/NativeDaemonConnectorException;->rethrowAsParcelableException()Ljava/lang/IllegalArgumentException;

    #@50
    move-result-object v2

    #@51
    throw v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@52
    .line 1771
    .end local v0    # "e":Lcom/android/server/NativeDaemonConnectorException;
    .end local v1    # "oldRejectOnQuota":Z
    :catchall_0
    move-exception v2

    #@53
    monitor-exit v3

    #@54
    throw v2
.end method

.method public shutdown()V
    .locals 3

    #@0
    .prologue
    .line 1228
    iget-object v0, p0, Lcom/android/server/NetworkManagementService;->mContext:Landroid/content/Context;

    #@2
    const-string/jumbo v1, "android.permission.SHUTDOWN"

    #@5
    const-string/jumbo v2, "NetworkManagement"

    #@8
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    #@b
    .line 1230
    const-string/jumbo v0, "NetworkManagement"

    #@e
    const-string/jumbo v1, "Shutting down"

    #@11
    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@14
    .line 1226
    return-void
.end method

.method public startAccessPoint(Landroid/net/wifi/WifiConfiguration;Ljava/lang/String;)V
    .locals 6
    .param p1, "wifiConfig"    # Landroid/net/wifi/WifiConfiguration;
    .param p2, "wlanIface"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1487
    iget-object v1, p0, Lcom/android/server/NetworkManagementService;->mContext:Landroid/content/Context;

    #@2
    const-string/jumbo v2, "android.permission.CONNECTIVITY_INTERNAL"

    #@5
    const-string/jumbo v3, "NetworkManagement"

    #@8
    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    #@b
    .line 1489
    if-nez p1, :cond_0

    #@d
    .line 1490
    :try_start_0
    iget-object v1, p0, Lcom/android/server/NetworkManagementService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    #@f
    const-string/jumbo v2, "softap"

    #@12
    const/4 v3, 0x2

    #@13
    new-array v3, v3, [Ljava/lang/Object;

    #@15
    const-string/jumbo v4, "set"

    #@18
    const/4 v5, 0x0

    #@19
    aput-object v4, v3, v5

    #@1b
    const/4 v4, 0x1

    #@1c
    aput-object p2, v3, v4

    #@1e
    invoke-virtual {v1, v2, v3}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;

    #@21
    .line 1497
    :goto_0
    iget-object v1, p0, Lcom/android/server/NetworkManagementService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    #@23
    const-string/jumbo v2, "softap"

    #@26
    const/4 v3, 0x1

    #@27
    new-array v3, v3, [Ljava/lang/Object;

    #@29
    const-string/jumbo v4, "startap"

    #@2c
    const/4 v5, 0x0

    #@2d
    aput-object v4, v3, v5

    #@2f
    invoke-virtual {v1, v2, v3}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;

    #@32
    .line 1486
    return-void

    #@33
    .line 1492
    :cond_0
    iget-object v1, p0, Lcom/android/server/NetworkManagementService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    #@35
    const-string/jumbo v2, "softap"

    #@38
    const/4 v3, 0x7

    #@39
    new-array v3, v3, [Ljava/lang/Object;

    #@3b
    const-string/jumbo v4, "set"

    #@3e
    const/4 v5, 0x0

    #@3f
    aput-object v4, v3, v5

    #@41
    const/4 v4, 0x1

    #@42
    aput-object p2, v3, v4

    #@44
    iget-object v4, p1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    #@46
    const/4 v5, 0x2

    #@47
    aput-object v4, v3, v5

    #@49
    .line 1493
    const-string/jumbo v4, "broadcast"

    #@4c
    const/4 v5, 0x3

    #@4d
    aput-object v4, v3, v5

    #@4f
    iget v4, p1, Landroid/net/wifi/WifiConfiguration;->apChannel:I

    #@51
    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    #@54
    move-result-object v4

    #@55
    const/4 v5, 0x4

    #@56
    aput-object v4, v3, v5

    #@58
    .line 1494
    invoke-static {p1}, Lcom/android/server/NetworkManagementService;->getSecurityType(Landroid/net/wifi/WifiConfiguration;)Ljava/lang/String;

    #@5b
    move-result-object v4

    #@5c
    const/4 v5, 0x5

    #@5d
    aput-object v4, v3, v5

    #@5f
    .line 1495
    new-instance v4, Lcom/android/server/NativeDaemonConnector$SensitiveArg;

    #@61
    iget-object v5, p1, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    #@63
    invoke-direct {v4, v5}, Lcom/android/server/NativeDaemonConnector$SensitiveArg;-><init>(Ljava/lang/Object;)V

    #@66
    const/4 v5, 0x6

    #@67
    aput-object v4, v3, v5

    #@69
    .line 1492
    invoke-virtual {v1, v2, v3}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;
    :try_end_0
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_0 .. :try_end_0} :catch_0

    #@6c
    goto :goto_0

    #@6d
    .line 1498
    :catch_0
    move-exception v0

    #@6e
    .line 1499
    .local v0, "e":Lcom/android/server/NativeDaemonConnectorException;
    invoke-virtual {v0}, Lcom/android/server/NativeDaemonConnectorException;->rethrowAsParcelableException()Ljava/lang/IllegalArgumentException;

    #@71
    move-result-object v1

    #@72
    throw v1
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
    .line 2187
    iget-object v1, p0, Lcom/android/server/NetworkManagementService;->mContext:Landroid/content/Context;

    #@2
    const-string/jumbo v2, "android.permission.CONNECTIVITY_INTERNAL"

    #@5
    const-string/jumbo v3, "NetworkManagement"

    #@8
    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    #@b
    .line 2190
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
    .line 2186
    return-void

    #@20
    .line 2191
    :catch_0
    move-exception v0

    #@21
    .line 2192
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
    .line 1390
    iget-object v0, p0, Lcom/android/server/NetworkManagementService;->mContext:Landroid/content/Context;

    #@2
    const-string/jumbo v1, "android.permission.CONNECTIVITY_INTERNAL"

    #@5
    const-string/jumbo v2, "NetworkManagement"

    #@8
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    #@b
    .line 1391
    const/4 v0, 0x1

    #@c
    invoke-direct {p0, v0, p1, p2}, Lcom/android/server/NetworkManagementService;->modifyInterfaceForward(ZLjava/lang/String;Ljava/lang/String;)V

    #@f
    .line 1389
    return-void
.end method

.method public startTethering([Ljava/lang/String;)V
    .locals 7
    .param p1, "dhcpRange"    # [Ljava/lang/String;

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 1261
    iget-object v4, p0, Lcom/android/server/NetworkManagementService;->mContext:Landroid/content/Context;

    #@3
    const-string/jumbo v5, "android.permission.CONNECTIVITY_INTERNAL"

    #@6
    const-string/jumbo v6, "NetworkManagement"

    #@9
    invoke-virtual {v4, v5, v6}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    #@c
    .line 1265
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
    .line 1266
    .local v0, "cmd":Lcom/android/server/NativeDaemonConnector$Command;
    array-length v4, p1

    #@1d
    :goto_0
    if-ge v3, v4, :cond_0

    #@1f
    aget-object v1, p1, v3

    #@21
    .line 1267
    .local v1, "d":Ljava/lang/String;
    invoke-virtual {v0, v1}, Lcom/android/server/NativeDaemonConnector$Command;->appendArg(Ljava/lang/Object;)Lcom/android/server/NativeDaemonConnector$Command;

    #@24
    .line 1266
    add-int/lit8 v3, v3, 0x1

    #@26
    goto :goto_0

    #@27
    .line 1271
    .end local v1    # "d":Ljava/lang/String;
    :cond_0
    :try_start_0
    iget-object v3, p0, Lcom/android/server/NetworkManagementService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    #@29
    invoke-virtual {v3, v0}, Lcom/android/server/NativeDaemonConnector;->execute(Lcom/android/server/NativeDaemonConnector$Command;)Lcom/android/server/NativeDaemonEvent;
    :try_end_0
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_0 .. :try_end_0} :catch_0

    #@2c
    .line 1260
    return-void

    #@2d
    .line 1272
    :catch_0
    move-exception v2

    #@2e
    .line 1273
    .local v2, "e":Lcom/android/server/NativeDaemonConnectorException;
    invoke-virtual {v2}, Lcom/android/server/NativeDaemonConnectorException;->rethrowAsParcelableException()Ljava/lang/IllegalArgumentException;

    #@31
    move-result-object v3

    #@32
    throw v3
.end method

.method public stopAccessPoint(Ljava/lang/String;)V
    .locals 6
    .param p1, "wlanIface"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1527
    iget-object v1, p0, Lcom/android/server/NetworkManagementService;->mContext:Landroid/content/Context;

    #@2
    const-string/jumbo v2, "android.permission.CONNECTIVITY_INTERNAL"

    #@5
    const-string/jumbo v3, "NetworkManagement"

    #@8
    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    #@b
    .line 1529
    :try_start_0
    iget-object v1, p0, Lcom/android/server/NetworkManagementService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    #@d
    const-string/jumbo v2, "softap"

    #@10
    const/4 v3, 0x1

    #@11
    new-array v3, v3, [Ljava/lang/Object;

    #@13
    const-string/jumbo v4, "stopap"

    #@16
    const/4 v5, 0x0

    #@17
    aput-object v4, v3, v5

    #@19
    invoke-virtual {v1, v2, v3}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;

    #@1c
    .line 1530
    const-string/jumbo v1, "STA"

    #@1f
    invoke-virtual {p0, p1, v1}, Lcom/android/server/NetworkManagementService;->wifiFirmwareReload(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_0 .. :try_end_0} :catch_0

    #@22
    .line 1526
    return-void

    #@23
    .line 1531
    :catch_0
    move-exception v0

    #@24
    .line 1532
    .local v0, "e":Lcom/android/server/NativeDaemonConnectorException;
    invoke-virtual {v0}, Lcom/android/server/NativeDaemonConnectorException;->rethrowAsParcelableException()Ljava/lang/IllegalArgumentException;

    #@27
    move-result-object v1

    #@28
    throw v1
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
    .line 2198
    iget-object v1, p0, Lcom/android/server/NetworkManagementService;->mContext:Landroid/content/Context;

    #@2
    const-string/jumbo v2, "android.permission.CONNECTIVITY_INTERNAL"

    #@5
    const-string/jumbo v3, "NetworkManagement"

    #@8
    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    #@b
    .line 2201
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
    .line 2197
    return-void

    #@20
    .line 2202
    :catch_0
    move-exception v0

    #@21
    .line 2203
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
    .line 1396
    iget-object v0, p0, Lcom/android/server/NetworkManagementService;->mContext:Landroid/content/Context;

    #@2
    const-string/jumbo v1, "android.permission.CONNECTIVITY_INTERNAL"

    #@5
    const-string/jumbo v2, "NetworkManagement"

    #@8
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    #@b
    .line 1397
    const/4 v0, 0x0

    #@c
    invoke-direct {p0, v0, p1, p2}, Lcom/android/server/NetworkManagementService;->modifyInterfaceForward(ZLjava/lang/String;Ljava/lang/String;)V

    #@f
    .line 1395
    return-void
.end method

.method public stopTethering()V
    .locals 6

    #@0
    .prologue
    .line 1279
    iget-object v1, p0, Lcom/android/server/NetworkManagementService;->mContext:Landroid/content/Context;

    #@2
    const-string/jumbo v2, "android.permission.CONNECTIVITY_INTERNAL"

    #@5
    const-string/jumbo v3, "NetworkManagement"

    #@8
    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    #@b
    .line 1281
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
    .line 1278
    return-void

    #@1d
    .line 1282
    :catch_0
    move-exception v0

    #@1e
    .line 1283
    .local v0, "e":Lcom/android/server/NativeDaemonConnectorException;
    invoke-virtual {v0}, Lcom/android/server/NativeDaemonConnectorException;->rethrowAsParcelableException()Ljava/lang/IllegalArgumentException;

    #@21
    move-result-object v1

    #@22
    throw v1
.end method

.method public systemReady()V
    .locals 2

    #@0
    .prologue
    .line 323
    invoke-direct {p0}, Lcom/android/server/NetworkManagementService;->prepareNativeDaemon()V

    #@3
    .line 324
    sget-boolean v0, Lcom/android/server/NetworkManagementService;->DBG:Z

    #@5
    if-eqz v0, :cond_0

    #@7
    const-string/jumbo v0, "NetworkManagement"

    #@a
    const-string/jumbo v1, "Prepared"

    #@d
    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@10
    .line 322
    :cond_0
    return-void
.end method

.method public tetherInterface(Ljava/lang/String;)V
    .locals 7
    .param p1, "iface"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1305
    iget-object v2, p0, Lcom/android/server/NetworkManagementService;->mContext:Landroid/content/Context;

    #@2
    const-string/jumbo v3, "android.permission.CONNECTIVITY_INTERNAL"

    #@5
    const-string/jumbo v4, "NetworkManagement"

    #@8
    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    #@b
    .line 1307
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
    .line 1311
    new-instance v1, Ljava/util/ArrayList;

    #@27
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    #@2a
    .line 1314
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
    .line 1315
    invoke-virtual {p0, p1, v1}, Lcom/android/server/NetworkManagementService;->addInterfaceToLocalNetwork(Ljava/lang/String;Ljava/util/List;)V

    #@3e
    .line 1304
    return-void

    #@3f
    .line 1308
    .end local v1    # "routes":Ljava/util/List;, "Ljava/util/List<Landroid/net/RouteInfo;>;"
    :catch_0
    move-exception v0

    #@40
    .line 1309
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
    .line 2229
    iget-object v0, p0, Lcom/android/server/NetworkManagementService;->mNetworkActivityListeners:Landroid/os/RemoteCallbackList;

    #@2
    invoke-virtual {v0, p1}, Landroid/os/RemoteCallbackList;->unregister(Landroid/os/IInterface;)Z

    #@5
    .line 2228
    return-void
.end method

.method public unregisterObserver(Landroid/net/INetworkManagementEventObserver;)V
    .locals 3
    .param p1, "observer"    # Landroid/net/INetworkManagementEventObserver;

    #@0
    .prologue
    .line 346
    iget-object v0, p0, Lcom/android/server/NetworkManagementService;->mContext:Landroid/content/Context;

    #@2
    const-string/jumbo v1, "android.permission.CONNECTIVITY_INTERNAL"

    #@5
    const-string/jumbo v2, "NetworkManagement"

    #@8
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    #@b
    .line 347
    iget-object v0, p0, Lcom/android/server/NetworkManagementService;->mObservers:Landroid/os/RemoteCallbackList;

    #@d
    invoke-virtual {v0, p1}, Landroid/os/RemoteCallbackList;->unregister(Landroid/os/IInterface;)Z

    #@10
    .line 345
    return-void
.end method

.method public untetherInterface(Ljava/lang/String;)V
    .locals 6
    .param p1, "iface"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1320
    iget-object v1, p0, Lcom/android/server/NetworkManagementService;->mContext:Landroid/content/Context;

    #@2
    const-string/jumbo v2, "android.permission.CONNECTIVITY_INTERNAL"

    #@5
    const-string/jumbo v3, "NetworkManagement"

    #@8
    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    #@b
    .line 1322
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
    .line 1326
    invoke-virtual {p0, p1}, Lcom/android/server/NetworkManagementService;->removeInterfaceFromLocalNetwork(Ljava/lang/String;)V

    #@28
    .line 1319
    return-void

    #@29
    .line 1323
    :catch_0
    move-exception v0

    #@2a
    .line 1324
    .local v0, "e":Lcom/android/server/NativeDaemonConnectorException;
    invoke-virtual {v0}, Lcom/android/server/NativeDaemonConnectorException;->rethrowAsParcelableException()Ljava/lang/IllegalArgumentException;

    #@2d
    move-result-object v1

    #@2e
    throw v1
.end method

.method public wifiFirmwareReload(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p1, "wlanIface"    # Ljava/lang/String;
    .param p2, "mode"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1517
    iget-object v1, p0, Lcom/android/server/NetworkManagementService;->mContext:Landroid/content/Context;

    #@2
    const-string/jumbo v2, "android.permission.CONNECTIVITY_INTERNAL"

    #@5
    const-string/jumbo v3, "NetworkManagement"

    #@8
    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    #@b
    .line 1519
    :try_start_0
    iget-object v1, p0, Lcom/android/server/NetworkManagementService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    #@d
    const-string/jumbo v2, "softap"

    #@10
    const/4 v3, 0x3

    #@11
    new-array v3, v3, [Ljava/lang/Object;

    #@13
    const-string/jumbo v4, "fwreload"

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
    invoke-virtual {v1, v2, v3}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;
    :try_end_0
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_0 .. :try_end_0} :catch_0

    #@22
    .line 1516
    return-void

    #@23
    .line 1520
    :catch_0
    move-exception v0

    #@24
    .line 1521
    .local v0, "e":Lcom/android/server/NativeDaemonConnectorException;
    invoke-virtual {v0}, Lcom/android/server/NativeDaemonConnectorException;->rethrowAsParcelableException()Ljava/lang/IllegalArgumentException;

    #@27
    move-result-object v1

    #@28
    throw v1
.end method
