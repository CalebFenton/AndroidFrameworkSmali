.class public Landroid/net/ConnectivityManager;
.super Ljava/lang/Object;
.source "ConnectivityManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/ConnectivityManager$LegacyRequest;,
        Landroid/net/ConnectivityManager$OnNetworkActiveListener;,
        Landroid/net/ConnectivityManager$NetworkCallback;,
        Landroid/net/ConnectivityManager$CallbackHandler;
    }
.end annotation


# static fields
.field public static final ACTION_BACKGROUND_DATA_SETTING_CHANGED:Ljava/lang/String; = "android.net.conn.BACKGROUND_DATA_SETTING_CHANGED"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final ACTION_CAPTIVE_PORTAL_SIGN_IN:Ljava/lang/String; = "android.net.conn.CAPTIVE_PORTAL"

.field public static final ACTION_CAPTIVE_PORTAL_TEST_COMPLETED:Ljava/lang/String; = "android.net.conn.CAPTIVE_PORTAL_TEST_COMPLETED"

.field public static final ACTION_DATA_ACTIVITY_CHANGE:Ljava/lang/String; = "android.net.conn.DATA_ACTIVITY_CHANGE"

.field public static final ACTION_PROMPT_UNVALIDATED:Ljava/lang/String; = "android.net.conn.PROMPT_UNVALIDATED"

.field public static final ACTION_TETHER_STATE_CHANGED:Ljava/lang/String; = "android.net.conn.TETHER_STATE_CHANGED"

.field private static final BASE:I = 0x80000

.field public static final CALLBACK_AVAILABLE:I = 0x80002

.field public static final CALLBACK_CAP_CHANGED:I = 0x80006

.field public static final CALLBACK_EXIT:I = 0x80009

.field public static final CALLBACK_IP_CHANGED:I = 0x80007

.field public static final CALLBACK_LOSING:I = 0x80003

.field public static final CALLBACK_LOST:I = 0x80004

.field public static final CALLBACK_PRECHECK:I = 0x80001

.field public static final CALLBACK_RELEASED:I = 0x80008

.field public static final CALLBACK_RESUMED:I = 0x8000c

.field public static final CALLBACK_SUSPENDED:I = 0x8000b

.field public static final CALLBACK_UNAVAIL:I = 0x80005

.field public static final CONNECTIVITY_ACTION:Ljava/lang/String; = "android.net.conn.CONNECTIVITY_CHANGE"

.field public static final DEFAULT_NETWORK_PREFERENCE:I = 0x1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private static final EXPIRE_LEGACY_REQUEST:I = 0x8000a

.field public static final EXTRA_ACTIVE_TETHER:Ljava/lang/String; = "activeArray"

.field public static final EXTRA_AVAILABLE_TETHER:Ljava/lang/String; = "availableArray"

.field public static final EXTRA_CAPTIVE_PORTAL:Ljava/lang/String; = "android.net.extra.CAPTIVE_PORTAL"

.field public static final EXTRA_DEVICE_TYPE:Ljava/lang/String; = "deviceType"

.field public static final EXTRA_ERRORED_TETHER:Ljava/lang/String; = "erroredArray"

.field public static final EXTRA_EXTRA_INFO:Ljava/lang/String; = "extraInfo"

.field public static final EXTRA_INET_CONDITION:Ljava/lang/String; = "inetCondition"

.field public static final EXTRA_IS_ACTIVE:Ljava/lang/String; = "isActive"

.field public static final EXTRA_IS_CAPTIVE_PORTAL:Ljava/lang/String; = "captivePortal"

.field public static final EXTRA_IS_FAILOVER:Ljava/lang/String; = "isFailover"

.field public static final EXTRA_NETWORK:Ljava/lang/String; = "android.net.extra.NETWORK"

.field public static final EXTRA_NETWORK_INFO:Ljava/lang/String; = "networkInfo"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final EXTRA_NETWORK_REQUEST:Ljava/lang/String; = "android.net.extra.NETWORK_REQUEST"

.field public static final EXTRA_NETWORK_TYPE:Ljava/lang/String; = "networkType"

.field public static final EXTRA_NO_CONNECTIVITY:Ljava/lang/String; = "noConnectivity"

.field public static final EXTRA_OTHER_NETWORK_INFO:Ljava/lang/String; = "otherNetwork"

.field public static final EXTRA_REALTIME_NS:Ljava/lang/String; = "tsNanos"

.field public static final EXTRA_REASON:Ljava/lang/String; = "reason"

.field public static final INET_CONDITION_ACTION:Ljava/lang/String; = "android.net.conn.INET_CONDITION_ACTION"

.field private static final LISTEN:I = 0x1

.field public static final MAX_NETWORK_REQUEST_TIMEOUT_MS:I = 0x5b8d80

.field public static final MAX_NETWORK_TYPE:I = 0x11

.field public static final MAX_RADIO_TYPE:I = 0x11

.field public static final NETID_UNSET:I = 0x0

.field private static final REQUEST:I = 0x2

.field public static final REQUEST_ID_UNSET:I = 0x0

.field private static final TAG:Ljava/lang/String; = "ConnectivityManager"

.field public static final TETHER_ERROR_DISABLE_NAT_ERROR:I = 0x9

.field public static final TETHER_ERROR_ENABLE_NAT_ERROR:I = 0x8

.field public static final TETHER_ERROR_IFACE_CFG_ERROR:I = 0xa

.field public static final TETHER_ERROR_MASTER_ERROR:I = 0x5

.field public static final TETHER_ERROR_NO_ERROR:I = 0x0

.field public static final TETHER_ERROR_SERVICE_UNAVAIL:I = 0x2

.field public static final TETHER_ERROR_TETHER_IFACE_ERROR:I = 0x6

.field public static final TETHER_ERROR_UNAVAIL_IFACE:I = 0x4

.field public static final TETHER_ERROR_UNKNOWN_IFACE:I = 0x1

.field public static final TETHER_ERROR_UNSUPPORTED:I = 0x3

.field public static final TETHER_ERROR_UNTETHER_IFACE_ERROR:I = 0x7

.field public static final TYPE_BLUETOOTH:I = 0x7

.field public static final TYPE_DUMMY:I = 0x8

.field public static final TYPE_ETHERNET:I = 0x9

.field public static final TYPE_MOBILE:I = 0x0

.field public static final TYPE_MOBILE_CBS:I = 0xc

.field public static final TYPE_MOBILE_DUN:I = 0x4

.field public static final TYPE_MOBILE_EMERGENCY:I = 0xf

.field public static final TYPE_MOBILE_FOTA:I = 0xa

.field public static final TYPE_MOBILE_HIPRI:I = 0x5

.field public static final TYPE_MOBILE_IA:I = 0xe

.field public static final TYPE_MOBILE_IMS:I = 0xb

.field public static final TYPE_MOBILE_MMS:I = 0x2

.field public static final TYPE_MOBILE_SUPL:I = 0x3

.field public static final TYPE_NONE:I = -0x1

.field public static final TYPE_PROXY:I = 0x10

.field public static final TYPE_VPN:I = 0x11

.field public static final TYPE_WIFI:I = 0x1

.field public static final TYPE_WIFI_P2P:I = 0xd

.field public static final TYPE_WIMAX:I = 0x6

.field static sCallbackHandler:Landroid/net/ConnectivityManager$CallbackHandler;

.field static final sCallbackRefCount:Ljava/util/concurrent/atomic/AtomicInteger;

.field private static sInstance:Landroid/net/ConnectivityManager;

.field private static sLegacyRequests:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/net/NetworkCapabilities;",
            "Landroid/net/ConnectivityManager$LegacyRequest;",
            ">;"
        }
    .end annotation
.end field

.field static final sNetworkCallback:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/net/NetworkRequest;",
            "Landroid/net/ConnectivityManager$NetworkCallback;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mNMService:Landroid/os/INetworkManagementService;

.field private final mNetworkActivityListeners:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap",
            "<",
            "Landroid/net/ConnectivityManager$OnNetworkActiveListener;",
            "Landroid/os/INetworkActivityListener;",
            ">;"
        }
    .end annotation
.end field

.field private final mService:Landroid/net/IConnectivityManager;


# direct methods
.method static synthetic -wrap0(Landroid/net/ConnectivityManager;Landroid/net/NetworkCapabilities;I)V
    .locals 0
    .param p1, "netCap"    # Landroid/net/NetworkCapabilities;
    .param p2, "sequenceNum"    # I

    #@0
    .prologue
    invoke-direct {p0, p1, p2}, Landroid/net/ConnectivityManager;->expireRequest(Landroid/net/NetworkCapabilities;I)V

    #@3
    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    #@0
    .prologue
    .line 1118
    new-instance v0, Ljava/util/HashMap;

    #@2
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    #@5
    .line 1117
    sput-object v0, Landroid/net/ConnectivityManager;->sLegacyRequests:Ljava/util/HashMap;

    #@7
    .line 2264
    new-instance v0, Ljava/util/HashMap;

    #@9
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    #@c
    .line 2263
    sput-object v0, Landroid/net/ConnectivityManager;->sNetworkCallback:Ljava/util/HashMap;

    #@e
    .line 2265
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    #@10
    const/4 v1, 0x0

    #@11
    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    #@14
    sput-object v0, Landroid/net/ConnectivityManager;->sCallbackRefCount:Ljava/util/concurrent/atomic/AtomicInteger;

    #@16
    .line 2266
    const/4 v0, 0x0

    #@17
    sput-object v0, Landroid/net/ConnectivityManager;->sCallbackHandler:Landroid/net/ConnectivityManager$CallbackHandler;

    #@19
    .line 73
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/net/IConnectivityManager;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "service"    # Landroid/net/IConnectivityManager;

    #@0
    .prologue
    .line 1397
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 1332
    new-instance v0, Landroid/util/ArrayMap;

    #@5
    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    #@8
    .line 1331
    iput-object v0, p0, Landroid/net/ConnectivityManager;->mNetworkActivityListeners:Landroid/util/ArrayMap;

    #@a
    .line 1398
    const-string/jumbo v0, "missing context"

    #@d
    invoke-static {p1, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@10
    move-result-object v0

    #@11
    check-cast v0, Landroid/content/Context;

    #@13
    iput-object v0, p0, Landroid/net/ConnectivityManager;->mContext:Landroid/content/Context;

    #@15
    .line 1399
    const-string/jumbo v0, "missing IConnectivityManager"

    #@18
    invoke-static {p2, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@1b
    move-result-object v0

    #@1c
    check-cast v0, Landroid/net/IConnectivityManager;

    #@1e
    iput-object v0, p0, Landroid/net/ConnectivityManager;->mService:Landroid/net/IConnectivityManager;

    #@20
    .line 1400
    sput-object p0, Landroid/net/ConnectivityManager;->sInstance:Landroid/net/ConnectivityManager;

    #@22
    .line 1397
    return-void
.end method

.method private checkLegacyRoutingApiAccess()V
    .locals 2

    #@0
    .prologue
    .line 2706
    iget-object v0, p0, Landroid/net/ConnectivityManager;->mContext:Landroid/content/Context;

    #@2
    const-string/jumbo v1, "com.android.permission.INJECT_OMADM_SETTINGS"

    #@5
    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    #@8
    move-result v0

    #@9
    if-nez v0, :cond_0

    #@b
    .line 2708
    return-void

    #@c
    .line 2711
    :cond_0
    const/16 v0, 0x17

    #@e
    invoke-direct {p0, v0}, Landroid/net/ConnectivityManager;->unsupportedStartingFrom(I)V

    #@11
    .line 2705
    return-void
.end method

.method private checkPendingIntent(Landroid/app/PendingIntent;)V
    .locals 2
    .param p1, "intent"    # Landroid/app/PendingIntent;

    #@0
    .prologue
    .line 2446
    if-nez p1, :cond_0

    #@2
    .line 2447
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@4
    const-string/jumbo v1, "PendingIntent cannot be null."

    #@7
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@a
    throw v0

    #@b
    .line 2445
    :cond_0
    return-void
.end method

.method private decCallbackHandlerRefCount()V
    .locals 3

    #@0
    .prologue
    .line 2255
    sget-object v1, Landroid/net/ConnectivityManager;->sCallbackRefCount:Ljava/util/concurrent/atomic/AtomicInteger;

    #@2
    monitor-enter v1

    #@3
    .line 2256
    :try_start_0
    sget-object v0, Landroid/net/ConnectivityManager;->sCallbackRefCount:Ljava/util/concurrent/atomic/AtomicInteger;

    #@5
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    #@8
    move-result v0

    #@9
    if-nez v0, :cond_0

    #@b
    .line 2257
    sget-object v0, Landroid/net/ConnectivityManager;->sCallbackHandler:Landroid/net/ConnectivityManager$CallbackHandler;

    #@d
    const v2, 0x80009

    #@10
    invoke-virtual {v0, v2}, Landroid/net/ConnectivityManager$CallbackHandler;->obtainMessage(I)Landroid/os/Message;

    #@13
    move-result-object v0

    #@14
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    #@17
    .line 2258
    const/4 v0, 0x0

    #@18
    sput-object v0, Landroid/net/ConnectivityManager;->sCallbackHandler:Landroid/net/ConnectivityManager$CallbackHandler;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1a
    :cond_0
    monitor-exit v1

    #@1b
    .line 2254
    return-void

    #@1c
    .line 2255
    :catchall_0
    move-exception v0

    #@1d
    monitor-exit v1

    #@1e
    throw v0
.end method

.method public static final enforceTetherChangePermission(Landroid/content/Context;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    #@0
    .prologue
    .line 1410
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@3
    move-result-object v1

    #@4
    .line 1411
    const v2, 0x1070015

    #@7
    .line 1410
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    #@a
    move-result-object v1

    #@b
    array-length v1, v1

    #@c
    .line 1411
    const/4 v2, 0x2

    #@d
    .line 1410
    if-ne v1, v2, :cond_0

    #@f
    .line 1415
    const-string/jumbo v1, "android.permission.CONNECTIVITY_INTERNAL"

    #@12
    const-string/jumbo v2, "ConnectivityService"

    #@15
    .line 1414
    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    #@18
    .line 1409
    :goto_0
    return-void

    #@19
    .line 1417
    :cond_0
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    #@1c
    move-result v0

    #@1d
    .line 1418
    .local v0, "uid":I
    invoke-static {p0, v0}, Landroid/provider/Settings;->getPackageNameForUid(Landroid/content/Context;I)Ljava/lang/String;

    #@20
    move-result-object v1

    #@21
    .line 1419
    const/4 v2, 0x1

    #@22
    .line 1418
    invoke-static {p0, v0, v1, v2}, Landroid/provider/Settings;->checkAndNoteChangeNetworkStateOperation(Landroid/content/Context;ILjava/lang/String;Z)Z

    #@25
    goto :goto_0
.end method

.method private expireRequest(Landroid/net/NetworkCapabilities;I)V
    .locals 5
    .param p1, "netCap"    # Landroid/net/NetworkCapabilities;
    .param p2, "sequenceNum"    # I

    #@0
    .prologue
    .line 1135
    const/4 v1, -0x1

    #@1
    .line 1136
    .local v1, "ourSeqNum":I
    sget-object v3, Landroid/net/ConnectivityManager;->sLegacyRequests:Ljava/util/HashMap;

    #@3
    monitor-enter v3

    #@4
    .line 1137
    :try_start_0
    sget-object v2, Landroid/net/ConnectivityManager;->sLegacyRequests:Ljava/util/HashMap;

    #@6
    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@9
    move-result-object v0

    #@a
    check-cast v0, Landroid/net/ConnectivityManager$LegacyRequest;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@c
    .line 1138
    .local v0, "l":Landroid/net/ConnectivityManager$LegacyRequest;
    if-nez v0, :cond_0

    #@e
    monitor-exit v3

    #@f
    return-void

    #@10
    .line 1139
    :cond_0
    :try_start_1
    iget v1, v0, Landroid/net/ConnectivityManager$LegacyRequest;->expireSequenceNumber:I

    #@12
    .line 1140
    iget v2, v0, Landroid/net/ConnectivityManager$LegacyRequest;->expireSequenceNumber:I

    #@14
    if-ne v2, p2, :cond_1

    #@16
    invoke-direct {p0, p1}, Landroid/net/ConnectivityManager;->removeRequestForFeature(Landroid/net/NetworkCapabilities;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@19
    :cond_1
    monitor-exit v3

    #@1a
    .line 1142
    const-string/jumbo v2, "ConnectivityManager"

    #@1d
    new-instance v3, Ljava/lang/StringBuilder;

    #@1f
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@22
    const-string/jumbo v4, "expireRequest with "

    #@25
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@28
    move-result-object v3

    #@29
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@2c
    move-result-object v3

    #@2d
    const-string/jumbo v4, ", "

    #@30
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@33
    move-result-object v3

    #@34
    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@37
    move-result-object v3

    #@38
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3b
    move-result-object v3

    #@3c
    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@3f
    .line 1134
    return-void

    #@40
    .line 1136
    .end local v0    # "l":Landroid/net/ConnectivityManager$LegacyRequest;
    :catchall_0
    move-exception v2

    #@41
    monitor-exit v3

    #@42
    throw v2
.end method

.method private findRequestForFeature(Landroid/net/NetworkCapabilities;)Landroid/net/NetworkRequest;
    .locals 4
    .param p1, "netCap"    # Landroid/net/NetworkCapabilities;

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 1121
    sget-object v2, Landroid/net/ConnectivityManager;->sLegacyRequests:Ljava/util/HashMap;

    #@3
    monitor-enter v2

    #@4
    .line 1122
    :try_start_0
    sget-object v1, Landroid/net/ConnectivityManager;->sLegacyRequests:Ljava/util/HashMap;

    #@6
    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@9
    move-result-object v0

    #@a
    check-cast v0, Landroid/net/ConnectivityManager$LegacyRequest;

    #@c
    .line 1123
    .local v0, "l":Landroid/net/ConnectivityManager$LegacyRequest;
    if-eqz v0, :cond_0

    #@e
    iget-object v1, v0, Landroid/net/ConnectivityManager$LegacyRequest;->networkRequest:Landroid/net/NetworkRequest;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@10
    monitor-exit v2

    #@11
    return-object v1

    #@12
    :cond_0
    monitor-exit v2

    #@13
    .line 1125
    return-object v3

    #@14
    .line 1121
    .end local v0    # "l":Landroid/net/ConnectivityManager$LegacyRequest;
    :catchall_0
    move-exception v1

    #@15
    monitor-exit v2

    #@16
    throw v1
.end method

.method public static from(Landroid/content/Context;)Landroid/net/ConnectivityManager;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    #@0
    .prologue
    .line 1405
    const-string/jumbo v0, "connectivity"

    #@3
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    #@6
    move-result-object v0

    #@7
    check-cast v0, Landroid/net/ConnectivityManager;

    #@9
    return-object v0
.end method

.method private static getInstance()Landroid/net/ConnectivityManager;
    .locals 2

    #@0
    .prologue
    .line 1438
    invoke-static {}, Landroid/net/ConnectivityManager;->getInstanceOrNull()Landroid/net/ConnectivityManager;

    #@3
    move-result-object v0

    #@4
    if-nez v0, :cond_0

    #@6
    .line 1439
    new-instance v0, Ljava/lang/IllegalStateException;

    #@8
    const-string/jumbo v1, "No ConnectivityManager yet constructed"

    #@b
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@e
    throw v0

    #@f
    .line 1441
    :cond_0
    invoke-static {}, Landroid/net/ConnectivityManager;->getInstanceOrNull()Landroid/net/ConnectivityManager;

    #@12
    move-result-object v0

    #@13
    return-object v0
.end method

.method static getInstanceOrNull()Landroid/net/ConnectivityManager;
    .locals 1

    #@0
    .prologue
    .line 1429
    sget-object v0, Landroid/net/ConnectivityManager;->sInstance:Landroid/net/ConnectivityManager;

    #@2
    return-object v0
.end method

.method private getNetworkManagementService()Landroid/os/INetworkManagementService;
    .locals 2

    #@0
    .prologue
    .line 1320
    monitor-enter p0

    #@1
    .line 1321
    :try_start_0
    iget-object v1, p0, Landroid/net/ConnectivityManager;->mNMService:Landroid/os/INetworkManagementService;

    #@3
    if-eqz v1, :cond_0

    #@5
    .line 1322
    iget-object v1, p0, Landroid/net/ConnectivityManager;->mNMService:Landroid/os/INetworkManagementService;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@7
    monitor-exit p0

    #@8
    return-object v1

    #@9
    .line 1324
    :cond_0
    :try_start_1
    const-string/jumbo v1, "network_management"

    #@c
    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    #@f
    move-result-object v0

    #@10
    .line 1325
    .local v0, "b":Landroid/os/IBinder;
    invoke-static {v0}, Landroid/os/INetworkManagementService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/INetworkManagementService;

    #@13
    move-result-object v1

    #@14
    iput-object v1, p0, Landroid/net/ConnectivityManager;->mNMService:Landroid/os/INetworkManagementService;

    #@16
    .line 1326
    iget-object v1, p0, Landroid/net/ConnectivityManager;->mNMService:Landroid/os/INetworkManagementService;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@18
    monitor-exit p0

    #@19
    return-object v1

    #@1a
    .line 1320
    .end local v0    # "b":Landroid/os/IBinder;
    :catchall_0
    move-exception v1

    #@1b
    monitor-exit p0

    #@1c
    throw v1
.end method

.method public static getNetworkTypeName(I)Ljava/lang/String;
    .locals 1
    .param p0, "type"    # I

    #@0
    .prologue
    .line 519
    packed-switch p0, :pswitch_data_0

    #@3
    .line 557
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    #@6
    move-result-object v0

    #@7
    return-object v0

    #@8
    .line 521
    :pswitch_0
    const-string/jumbo v0, "MOBILE"

    #@b
    return-object v0

    #@c
    .line 523
    :pswitch_1
    const-string/jumbo v0, "WIFI"

    #@f
    return-object v0

    #@10
    .line 525
    :pswitch_2
    const-string/jumbo v0, "MOBILE_MMS"

    #@13
    return-object v0

    #@14
    .line 527
    :pswitch_3
    const-string/jumbo v0, "MOBILE_SUPL"

    #@17
    return-object v0

    #@18
    .line 529
    :pswitch_4
    const-string/jumbo v0, "MOBILE_DUN"

    #@1b
    return-object v0

    #@1c
    .line 531
    :pswitch_5
    const-string/jumbo v0, "MOBILE_HIPRI"

    #@1f
    return-object v0

    #@20
    .line 533
    :pswitch_6
    const-string/jumbo v0, "WIMAX"

    #@23
    return-object v0

    #@24
    .line 535
    :pswitch_7
    const-string/jumbo v0, "BLUETOOTH"

    #@27
    return-object v0

    #@28
    .line 537
    :pswitch_8
    const-string/jumbo v0, "DUMMY"

    #@2b
    return-object v0

    #@2c
    .line 539
    :pswitch_9
    const-string/jumbo v0, "ETHERNET"

    #@2f
    return-object v0

    #@30
    .line 541
    :pswitch_a
    const-string/jumbo v0, "MOBILE_FOTA"

    #@33
    return-object v0

    #@34
    .line 543
    :pswitch_b
    const-string/jumbo v0, "MOBILE_IMS"

    #@37
    return-object v0

    #@38
    .line 545
    :pswitch_c
    const-string/jumbo v0, "MOBILE_CBS"

    #@3b
    return-object v0

    #@3c
    .line 547
    :pswitch_d
    const-string/jumbo v0, "WIFI_P2P"

    #@3f
    return-object v0

    #@40
    .line 549
    :pswitch_e
    const-string/jumbo v0, "MOBILE_IA"

    #@43
    return-object v0

    #@44
    .line 551
    :pswitch_f
    const-string/jumbo v0, "MOBILE_EMERGENCY"

    #@47
    return-object v0

    #@48
    .line 553
    :pswitch_10
    const-string/jumbo v0, "PROXY"

    #@4b
    return-object v0

    #@4c
    .line 555
    :pswitch_11
    const-string/jumbo v0, "VPN"

    #@4f
    return-object v0

    #@50
    .line 519
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_11
    .end packed-switch
.end method

.method public static getProcessDefaultNetwork()Landroid/net/Network;
    .locals 2

    #@0
    .prologue
    .line 2681
    invoke-static {}, Landroid/net/NetworkUtils;->getBoundNetworkForProcess()I

    #@3
    move-result v0

    #@4
    .line 2682
    .local v0, "netId":I
    if-nez v0, :cond_0

    #@6
    const/4 v1, 0x0

    #@7
    return-object v1

    #@8
    .line 2683
    :cond_0
    new-instance v1, Landroid/net/Network;

    #@a
    invoke-direct {v1, v0}, Landroid/net/Network;-><init>(I)V

    #@d
    return-object v1
.end method

.method private incCallbackHandlerRefCount()V
    .locals 8

    #@0
    .prologue
    .line 2243
    sget-object v7, Landroid/net/ConnectivityManager;->sCallbackRefCount:Ljava/util/concurrent/atomic/AtomicInteger;

    #@2
    monitor-enter v7

    #@3
    .line 2244
    :try_start_0
    sget-object v0, Landroid/net/ConnectivityManager;->sCallbackRefCount:Ljava/util/concurrent/atomic/AtomicInteger;

    #@5
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    #@8
    move-result v0

    #@9
    const/4 v1, 0x1

    #@a
    if-ne v0, v1, :cond_0

    #@c
    .line 2246
    new-instance v6, Landroid/os/HandlerThread;

    #@e
    const-string/jumbo v0, "ConnectivityManager"

    #@11
    invoke-direct {v6, v0}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    #@14
    .line 2247
    .local v6, "callbackThread":Landroid/os/HandlerThread;
    invoke-virtual {v6}, Landroid/os/HandlerThread;->start()V

    #@17
    .line 2248
    new-instance v0, Landroid/net/ConnectivityManager$CallbackHandler;

    #@19
    invoke-virtual {v6}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    #@1c
    move-result-object v2

    #@1d
    .line 2249
    sget-object v3, Landroid/net/ConnectivityManager;->sNetworkCallback:Ljava/util/HashMap;

    #@1f
    sget-object v4, Landroid/net/ConnectivityManager;->sCallbackRefCount:Ljava/util/concurrent/atomic/AtomicInteger;

    #@21
    move-object v1, p0

    #@22
    move-object v5, p0

    #@23
    .line 2248
    invoke-direct/range {v0 .. v5}, Landroid/net/ConnectivityManager$CallbackHandler;-><init>(Landroid/net/ConnectivityManager;Landroid/os/Looper;Ljava/util/HashMap;Ljava/util/concurrent/atomic/AtomicInteger;Landroid/net/ConnectivityManager;)V

    #@26
    sput-object v0, Landroid/net/ConnectivityManager;->sCallbackHandler:Landroid/net/ConnectivityManager$CallbackHandler;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@28
    .end local v6    # "callbackThread":Landroid/os/HandlerThread;
    :cond_0
    monitor-exit v7

    #@29
    .line 2242
    return-void

    #@2a
    .line 2243
    :catchall_0
    move-exception v0

    #@2b
    monitor-exit v7

    #@2c
    throw v0
.end method

.method private inferLegacyTypeForNetworkCapabilities(Landroid/net/NetworkCapabilities;)I
    .locals 6
    .param p1, "netCap"    # Landroid/net/NetworkCapabilities;

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    const/4 v4, -0x1

    #@2
    .line 1017
    if-nez p1, :cond_0

    #@4
    .line 1018
    return v4

    #@5
    .line 1021
    :cond_0
    invoke-virtual {p1, v5}, Landroid/net/NetworkCapabilities;->hasTransport(I)Z

    #@8
    move-result v3

    #@9
    if-nez v3, :cond_1

    #@b
    .line 1022
    return v4

    #@c
    .line 1025
    :cond_1
    const/4 v2, 0x0

    #@d
    .line 1026
    .local v2, "type":Ljava/lang/String;
    const/4 v0, -0x1

    #@e
    .line 1028
    .local v0, "result":I
    const/4 v3, 0x5

    #@f
    invoke-virtual {p1, v3}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    #@12
    move-result v3

    #@13
    if-eqz v3, :cond_3

    #@15
    .line 1029
    const-string/jumbo v2, "enableCBS"

    #@18
    .line 1030
    .local v2, "type":Ljava/lang/String;
    const/16 v0, 0xc

    #@1a
    .line 1050
    .end local v2    # "type":Ljava/lang/String;
    :cond_2
    :goto_0
    if-eqz v2, :cond_9

    #@1c
    .line 1051
    invoke-direct {p0, v5, v2}, Landroid/net/ConnectivityManager;->networkCapabilitiesForFeature(ILjava/lang/String;)Landroid/net/NetworkCapabilities;

    #@1f
    move-result-object v1

    #@20
    .line 1052
    .local v1, "testCap":Landroid/net/NetworkCapabilities;
    invoke-virtual {v1, p1}, Landroid/net/NetworkCapabilities;->equalsNetCapabilities(Landroid/net/NetworkCapabilities;)Z

    #@23
    move-result v3

    #@24
    if-eqz v3, :cond_9

    #@26
    invoke-virtual {v1, p1}, Landroid/net/NetworkCapabilities;->equalsTransportTypes(Landroid/net/NetworkCapabilities;)Z

    #@29
    move-result v3

    #@2a
    if-eqz v3, :cond_9

    #@2c
    .line 1053
    return v0

    #@2d
    .line 1031
    .end local v1    # "testCap":Landroid/net/NetworkCapabilities;
    .local v2, "type":Ljava/lang/String;
    :cond_3
    const/4 v3, 0x4

    #@2e
    invoke-virtual {p1, v3}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    #@31
    move-result v3

    #@32
    if-eqz v3, :cond_4

    #@34
    .line 1032
    const-string/jumbo v2, "enableIMS"

    #@37
    .line 1033
    .local v2, "type":Ljava/lang/String;
    const/16 v0, 0xb

    #@39
    goto :goto_0

    #@3a
    .line 1034
    .local v2, "type":Ljava/lang/String;
    :cond_4
    const/4 v3, 0x3

    #@3b
    invoke-virtual {p1, v3}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    #@3e
    move-result v3

    #@3f
    if-eqz v3, :cond_5

    #@41
    .line 1035
    const-string/jumbo v2, "enableFOTA"

    #@44
    .line 1036
    .local v2, "type":Ljava/lang/String;
    const/16 v0, 0xa

    #@46
    goto :goto_0

    #@47
    .line 1037
    .local v2, "type":Ljava/lang/String;
    :cond_5
    const/4 v3, 0x2

    #@48
    invoke-virtual {p1, v3}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    #@4b
    move-result v3

    #@4c
    if-eqz v3, :cond_6

    #@4e
    .line 1038
    const-string/jumbo v2, "enableDUN"

    #@51
    .line 1039
    .local v2, "type":Ljava/lang/String;
    const/4 v0, 0x4

    #@52
    goto :goto_0

    #@53
    .line 1040
    .local v2, "type":Ljava/lang/String;
    :cond_6
    const/4 v3, 0x1

    #@54
    invoke-virtual {p1, v3}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    #@57
    move-result v3

    #@58
    if-eqz v3, :cond_7

    #@5a
    .line 1041
    const-string/jumbo v2, "enableSUPL"

    #@5d
    .line 1042
    .local v2, "type":Ljava/lang/String;
    const/4 v0, 0x3

    #@5e
    goto :goto_0

    #@5f
    .line 1043
    .local v2, "type":Ljava/lang/String;
    :cond_7
    invoke-virtual {p1, v5}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    #@62
    move-result v3

    #@63
    if-eqz v3, :cond_8

    #@65
    .line 1044
    const-string/jumbo v2, "enableMMS"

    #@68
    .line 1045
    .local v2, "type":Ljava/lang/String;
    const/4 v0, 0x2

    #@69
    goto :goto_0

    #@6a
    .line 1046
    .local v2, "type":Ljava/lang/String;
    :cond_8
    const/16 v3, 0xc

    #@6c
    invoke-virtual {p1, v3}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    #@6f
    move-result v3

    #@70
    if-eqz v3, :cond_2

    #@72
    .line 1047
    const-string/jumbo v2, "enableHIPRI"

    #@75
    .line 1048
    .local v2, "type":Ljava/lang/String;
    const/4 v0, 0x5

    #@76
    goto :goto_0

    #@77
    .line 1056
    .end local v2    # "type":Ljava/lang/String;
    :cond_9
    return v4
.end method

.method public static isNetworkTypeMobile(I)Z
    .locals 1
    .param p0, "networkType"    # I

    #@0
    .prologue
    .line 569
    packed-switch p0, :pswitch_data_0

    #@3
    .line 582
    :pswitch_0
    const/4 v0, 0x0

    #@4
    return v0

    #@5
    .line 580
    :pswitch_1
    const/4 v0, 0x1

    #@6
    return v0

    #@7
    .line 569
    nop

    #@8
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public static isNetworkTypeValid(I)Z
    .locals 2
    .param p0, "networkType"    # I

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 507
    if-ltz p0, :cond_0

    #@3
    const/16 v1, 0x11

    #@5
    if-gt p0, v1, :cond_0

    #@7
    const/4 v0, 0x1

    #@8
    :cond_0
    return v0
.end method

.method public static isNetworkTypeWifi(I)Z
    .locals 1
    .param p0, "networkType"    # I

    #@0
    .prologue
    .line 592
    sparse-switch p0, :sswitch_data_0

    #@3
    .line 597
    const/4 v0, 0x0

    #@4
    return v0

    #@5
    .line 595
    :sswitch_0
    const/4 v0, 0x1

    #@6
    return v0

    #@7
    .line 592
    nop

    #@8
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0xd -> :sswitch_0
    .end sparse-switch
.end method

.method private legacyTypeForNetworkCapabilities(Landroid/net/NetworkCapabilities;)I
    .locals 6
    .param p1, "netCap"    # Landroid/net/NetworkCapabilities;

    #@0
    .prologue
    const/4 v5, 0x5

    #@1
    const/4 v4, 0x4

    #@2
    const/4 v3, 0x3

    #@3
    const/4 v2, 0x2

    #@4
    const/4 v1, -0x1

    #@5
    .line 1060
    if-nez p1, :cond_0

    #@7
    return v1

    #@8
    .line 1061
    :cond_0
    invoke-virtual {p1, v5}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    #@b
    move-result v0

    #@c
    if-eqz v0, :cond_1

    #@e
    .line 1062
    const/16 v0, 0xc

    #@10
    return v0

    #@11
    .line 1064
    :cond_1
    invoke-virtual {p1, v4}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    #@14
    move-result v0

    #@15
    if-eqz v0, :cond_2

    #@17
    .line 1065
    const/16 v0, 0xb

    #@19
    return v0

    #@1a
    .line 1067
    :cond_2
    invoke-virtual {p1, v3}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    #@1d
    move-result v0

    #@1e
    if-eqz v0, :cond_3

    #@20
    .line 1068
    const/16 v0, 0xa

    #@22
    return v0

    #@23
    .line 1070
    :cond_3
    invoke-virtual {p1, v2}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    #@26
    move-result v0

    #@27
    if-eqz v0, :cond_4

    #@29
    .line 1071
    return v4

    #@2a
    .line 1073
    :cond_4
    const/4 v0, 0x1

    #@2b
    invoke-virtual {p1, v0}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    #@2e
    move-result v0

    #@2f
    if-eqz v0, :cond_5

    #@31
    .line 1074
    return v3

    #@32
    .line 1076
    :cond_5
    const/4 v0, 0x0

    #@33
    invoke-virtual {p1, v0}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    #@36
    move-result v0

    #@37
    if-eqz v0, :cond_6

    #@39
    .line 1077
    return v2

    #@3a
    .line 1079
    :cond_6
    const/16 v0, 0xc

    #@3c
    invoke-virtual {p1, v0}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    #@3f
    move-result v0

    #@40
    if-eqz v0, :cond_7

    #@42
    .line 1080
    return v5

    #@43
    .line 1082
    :cond_7
    const/4 v0, 0x6

    #@44
    invoke-virtual {p1, v0}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    #@47
    move-result v0

    #@48
    if-eqz v0, :cond_8

    #@4a
    .line 1083
    const/16 v0, 0xd

    #@4c
    return v0

    #@4d
    .line 1085
    :cond_8
    return v1
.end method

.method private networkCapabilitiesForFeature(ILjava/lang/String;)Landroid/net/NetworkCapabilities;
    .locals 6
    .param p1, "networkType"    # I
    .param p2, "feature"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    const/4 v4, 0x1

    #@2
    const/4 v3, 0x0

    #@3
    .line 968
    if-nez p1, :cond_8

    #@5
    .line 969
    const/4 v0, -0x1

    #@6
    .line 970
    .local v0, "cap":I
    const-string/jumbo v2, "enableMMS"

    #@9
    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@c
    move-result v2

    #@d
    if-eqz v2, :cond_0

    #@f
    .line 971
    const/4 v0, 0x0

    #@10
    .line 987
    :goto_0
    new-instance v1, Landroid/net/NetworkCapabilities;

    #@12
    invoke-direct {v1}, Landroid/net/NetworkCapabilities;-><init>()V

    #@15
    .line 988
    .local v1, "netCap":Landroid/net/NetworkCapabilities;
    invoke-virtual {v1, v3}, Landroid/net/NetworkCapabilities;->addTransportType(I)Landroid/net/NetworkCapabilities;

    #@18
    move-result-object v2

    #@19
    invoke-virtual {v2, v0}, Landroid/net/NetworkCapabilities;->addCapability(I)Landroid/net/NetworkCapabilities;

    #@1c
    .line 989
    invoke-virtual {v1}, Landroid/net/NetworkCapabilities;->maybeMarkCapabilitiesRestricted()V

    #@1f
    .line 990
    return-object v1

    #@20
    .line 972
    .end local v1    # "netCap":Landroid/net/NetworkCapabilities;
    :cond_0
    const-string/jumbo v2, "enableSUPL"

    #@23
    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@26
    move-result v2

    #@27
    if-eqz v2, :cond_1

    #@29
    .line 973
    const/4 v0, 0x1

    #@2a
    goto :goto_0

    #@2b
    .line 974
    :cond_1
    const-string/jumbo v2, "enableDUN"

    #@2e
    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@31
    move-result v2

    #@32
    if-nez v2, :cond_2

    #@34
    const-string/jumbo v2, "enableDUNAlways"

    #@37
    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@3a
    move-result v2

    #@3b
    if-eqz v2, :cond_3

    #@3d
    .line 975
    :cond_2
    const/4 v0, 0x2

    #@3e
    goto :goto_0

    #@3f
    .line 976
    :cond_3
    const-string/jumbo v2, "enableHIPRI"

    #@42
    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@45
    move-result v2

    #@46
    if-eqz v2, :cond_4

    #@48
    .line 977
    const/16 v0, 0xc

    #@4a
    goto :goto_0

    #@4b
    .line 978
    :cond_4
    const-string/jumbo v2, "enableFOTA"

    #@4e
    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@51
    move-result v2

    #@52
    if-eqz v2, :cond_5

    #@54
    .line 979
    const/4 v0, 0x3

    #@55
    goto :goto_0

    #@56
    .line 980
    :cond_5
    const-string/jumbo v2, "enableIMS"

    #@59
    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@5c
    move-result v2

    #@5d
    if-eqz v2, :cond_6

    #@5f
    .line 981
    const/4 v0, 0x4

    #@60
    goto :goto_0

    #@61
    .line 982
    :cond_6
    const-string/jumbo v2, "enableCBS"

    #@64
    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@67
    move-result v2

    #@68
    if-eqz v2, :cond_7

    #@6a
    .line 983
    const/4 v0, 0x5

    #@6b
    goto :goto_0

    #@6c
    .line 985
    :cond_7
    return-object v5

    #@6d
    .line 991
    .end local v0    # "cap":I
    :cond_8
    if-ne p1, v4, :cond_9

    #@6f
    .line 992
    const-string/jumbo v2, "p2p"

    #@72
    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@75
    move-result v2

    #@76
    if-eqz v2, :cond_9

    #@78
    .line 993
    new-instance v1, Landroid/net/NetworkCapabilities;

    #@7a
    invoke-direct {v1}, Landroid/net/NetworkCapabilities;-><init>()V

    #@7d
    .line 994
    .restart local v1    # "netCap":Landroid/net/NetworkCapabilities;
    invoke-virtual {v1, v4}, Landroid/net/NetworkCapabilities;->addTransportType(I)Landroid/net/NetworkCapabilities;

    #@80
    .line 995
    const/4 v2, 0x6

    #@81
    invoke-virtual {v1, v2}, Landroid/net/NetworkCapabilities;->addCapability(I)Landroid/net/NetworkCapabilities;

    #@84
    .line 996
    invoke-virtual {v1}, Landroid/net/NetworkCapabilities;->maybeMarkCapabilitiesRestricted()V

    #@87
    .line 997
    return-object v1

    #@88
    .line 1000
    .end local v1    # "netCap":Landroid/net/NetworkCapabilities;
    :cond_9
    return-object v5
.end method

.method private removeRequestForFeature(Landroid/net/NetworkCapabilities;)Z
    .locals 3
    .param p1, "netCap"    # Landroid/net/NetworkCapabilities;

    #@0
    .prologue
    .line 1173
    sget-object v2, Landroid/net/ConnectivityManager;->sLegacyRequests:Ljava/util/HashMap;

    #@2
    monitor-enter v2

    #@3
    .line 1174
    :try_start_0
    sget-object v1, Landroid/net/ConnectivityManager;->sLegacyRequests:Ljava/util/HashMap;

    #@5
    invoke-virtual {v1, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    #@8
    move-result-object v0

    #@9
    check-cast v0, Landroid/net/ConnectivityManager$LegacyRequest;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@b
    .local v0, "l":Landroid/net/ConnectivityManager$LegacyRequest;
    monitor-exit v2

    #@c
    .line 1176
    if-nez v0, :cond_0

    #@e
    const/4 v1, 0x0

    #@f
    return v1

    #@10
    .line 1173
    .end local v0    # "l":Landroid/net/ConnectivityManager$LegacyRequest;
    :catchall_0
    move-exception v1

    #@11
    monitor-exit v2

    #@12
    throw v1

    #@13
    .line 1177
    .restart local v0    # "l":Landroid/net/ConnectivityManager$LegacyRequest;
    :cond_0
    iget-object v1, v0, Landroid/net/ConnectivityManager$LegacyRequest;->networkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    #@15
    invoke-virtual {p0, v1}, Landroid/net/ConnectivityManager;->unregisterNetworkCallback(Landroid/net/ConnectivityManager$NetworkCallback;)V

    #@18
    .line 1178
    invoke-static {v0}, Landroid/net/ConnectivityManager$LegacyRequest;->-wrap0(Landroid/net/ConnectivityManager$LegacyRequest;)V

    #@1b
    .line 1179
    const/4 v1, 0x1

    #@1c
    return v1
.end method

.method private renewRequestLocked(Landroid/net/ConnectivityManager$LegacyRequest;)V
    .locals 3
    .param p1, "l"    # Landroid/net/ConnectivityManager$LegacyRequest;

    #@0
    .prologue
    .line 1129
    iget v0, p1, Landroid/net/ConnectivityManager$LegacyRequest;->expireSequenceNumber:I

    #@2
    add-int/lit8 v0, v0, 0x1

    #@4
    iput v0, p1, Landroid/net/ConnectivityManager$LegacyRequest;->expireSequenceNumber:I

    #@6
    .line 1130
    const-string/jumbo v0, "ConnectivityManager"

    #@9
    new-instance v1, Ljava/lang/StringBuilder;

    #@b
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@e
    const-string/jumbo v2, "renewing request to seqNum "

    #@11
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@14
    move-result-object v1

    #@15
    iget v2, p1, Landroid/net/ConnectivityManager$LegacyRequest;->expireSequenceNumber:I

    #@17
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@1a
    move-result-object v1

    #@1b
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1e
    move-result-object v1

    #@1f
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@22
    .line 1131
    iget-object v0, p1, Landroid/net/ConnectivityManager$LegacyRequest;->networkCapabilities:Landroid/net/NetworkCapabilities;

    #@24
    iget v1, p1, Landroid/net/ConnectivityManager$LegacyRequest;->expireSequenceNumber:I

    #@26
    iget v2, p1, Landroid/net/ConnectivityManager$LegacyRequest;->delay:I

    #@28
    invoke-direct {p0, v0, v1, v2}, Landroid/net/ConnectivityManager;->sendExpireMsgForFeature(Landroid/net/NetworkCapabilities;II)V

    #@2b
    .line 1128
    return-void
.end method

.method private requestNetworkForFeatureLocked(Landroid/net/NetworkCapabilities;)Landroid/net/NetworkRequest;
    .locals 10
    .param p1, "netCap"    # Landroid/net/NetworkCapabilities;

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    const/4 v9, 0x0

    #@2
    .line 1146
    const/4 v6, -0x1

    #@3
    .line 1147
    .local v6, "delay":I
    invoke-direct {p0, p1}, Landroid/net/ConnectivityManager;->legacyTypeForNetworkCapabilities(Landroid/net/NetworkCapabilities;)I

    #@6
    move-result v5

    #@7
    .line 1149
    .local v5, "type":I
    :try_start_0
    iget-object v0, p0, Landroid/net/ConnectivityManager;->mService:Landroid/net/IConnectivityManager;

    #@9
    invoke-interface {v0, v5}, Landroid/net/IConnectivityManager;->getRestoreDefaultNetworkDelay(I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@c
    move-result v6

    #@d
    .line 1151
    :goto_0
    new-instance v8, Landroid/net/ConnectivityManager$LegacyRequest;

    #@f
    invoke-direct {v8, v9}, Landroid/net/ConnectivityManager$LegacyRequest;-><init>(Landroid/net/ConnectivityManager$LegacyRequest;)V

    #@12
    .line 1152
    .local v8, "l":Landroid/net/ConnectivityManager$LegacyRequest;
    iput-object p1, v8, Landroid/net/ConnectivityManager$LegacyRequest;->networkCapabilities:Landroid/net/NetworkCapabilities;

    #@14
    .line 1153
    iput v6, v8, Landroid/net/ConnectivityManager$LegacyRequest;->delay:I

    #@16
    .line 1154
    iput v3, v8, Landroid/net/ConnectivityManager$LegacyRequest;->expireSequenceNumber:I

    #@18
    .line 1155
    iget-object v2, v8, Landroid/net/ConnectivityManager$LegacyRequest;->networkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    #@1a
    .line 1156
    const/4 v4, 0x2

    #@1b
    move-object v0, p0

    #@1c
    move-object v1, p1

    #@1d
    .line 1155
    invoke-direct/range {v0 .. v5}, Landroid/net/ConnectivityManager;->sendRequestForNetwork(Landroid/net/NetworkCapabilities;Landroid/net/ConnectivityManager$NetworkCallback;III)Landroid/net/NetworkRequest;

    #@20
    move-result-object v0

    #@21
    iput-object v0, v8, Landroid/net/ConnectivityManager$LegacyRequest;->networkRequest:Landroid/net/NetworkRequest;

    #@23
    .line 1157
    iget-object v0, v8, Landroid/net/ConnectivityManager$LegacyRequest;->networkRequest:Landroid/net/NetworkRequest;

    #@25
    if-nez v0, :cond_0

    #@27
    return-object v9

    #@28
    .line 1158
    :cond_0
    sget-object v0, Landroid/net/ConnectivityManager;->sLegacyRequests:Ljava/util/HashMap;

    #@2a
    invoke-virtual {v0, p1, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@2d
    .line 1159
    iget v0, v8, Landroid/net/ConnectivityManager$LegacyRequest;->expireSequenceNumber:I

    #@2f
    invoke-direct {p0, p1, v0, v6}, Landroid/net/ConnectivityManager;->sendExpireMsgForFeature(Landroid/net/NetworkCapabilities;II)V

    #@32
    .line 1160
    iget-object v0, v8, Landroid/net/ConnectivityManager$LegacyRequest;->networkRequest:Landroid/net/NetworkRequest;

    #@34
    return-object v0

    #@35
    .line 1150
    .end local v8    # "l":Landroid/net/ConnectivityManager$LegacyRequest;
    :catch_0
    move-exception v7

    #@36
    .local v7, "e":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method private sendExpireMsgForFeature(Landroid/net/NetworkCapabilities;II)V
    .locals 5
    .param p1, "netCap"    # Landroid/net/NetworkCapabilities;
    .param p2, "seqNum"    # I
    .param p3, "delay"    # I

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 1164
    if-ltz p3, :cond_0

    #@3
    .line 1165
    const-string/jumbo v1, "ConnectivityManager"

    #@6
    new-instance v2, Ljava/lang/StringBuilder;

    #@8
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@b
    const-string/jumbo v3, "sending expire msg with seqNum "

    #@e
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@11
    move-result-object v2

    #@12
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@15
    move-result-object v2

    #@16
    const-string/jumbo v3, " and delay "

    #@19
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1c
    move-result-object v2

    #@1d
    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@20
    move-result-object v2

    #@21
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@24
    move-result-object v2

    #@25
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@28
    .line 1166
    sget-object v1, Landroid/net/ConnectivityManager;->sCallbackHandler:Landroid/net/ConnectivityManager$CallbackHandler;

    #@2a
    const v2, 0x8000a

    #@2d
    invoke-virtual {v1, v2, p2, v4, p1}, Landroid/net/ConnectivityManager$CallbackHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    #@30
    move-result-object v0

    #@31
    .line 1167
    .local v0, "msg":Landroid/os/Message;
    sget-object v1, Landroid/net/ConnectivityManager;->sCallbackHandler:Landroid/net/ConnectivityManager$CallbackHandler;

    #@33
    int-to-long v2, p3

    #@34
    invoke-virtual {v1, v0, v2, v3}, Landroid/net/ConnectivityManager$CallbackHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    #@37
    .line 1163
    .end local v0    # "msg":Landroid/os/Message;
    :cond_0
    return-void
.end method

.method private sendRequestForNetwork(Landroid/net/NetworkCapabilities;Landroid/net/ConnectivityManager$NetworkCallback;III)Landroid/net/NetworkRequest;
    .locals 8
    .param p1, "need"    # Landroid/net/NetworkCapabilities;
    .param p2, "networkCallback"    # Landroid/net/ConnectivityManager$NetworkCallback;
    .param p3, "timeoutSec"    # I
    .param p4, "action"    # I
    .param p5, "legacyType"    # I

    #@0
    .prologue
    .line 2274
    if-nez p2, :cond_0

    #@2
    .line 2275
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@4
    const-string/jumbo v1, "null NetworkCallback"

    #@7
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@a
    throw v0

    #@b
    .line 2277
    :cond_0
    if-nez p1, :cond_1

    #@d
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@f
    const-string/jumbo v1, "null NetworkCapabilities"

    #@12
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@15
    throw v0

    #@16
    .line 2279
    :cond_1
    :try_start_0
    invoke-direct {p0}, Landroid/net/ConnectivityManager;->incCallbackHandlerRefCount()V

    #@19
    .line 2280
    sget-object v7, Landroid/net/ConnectivityManager;->sNetworkCallback:Ljava/util/HashMap;

    #@1b
    monitor-enter v7
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@1c
    .line 2281
    const/4 v0, 0x1

    #@1d
    if-ne p4, v0, :cond_4

    #@1f
    .line 2282
    :try_start_1
    iget-object v0, p0, Landroid/net/ConnectivityManager;->mService:Landroid/net/IConnectivityManager;

    #@21
    .line 2283
    new-instance v1, Landroid/os/Messenger;

    #@23
    sget-object v2, Landroid/net/ConnectivityManager;->sCallbackHandler:Landroid/net/ConnectivityManager$CallbackHandler;

    #@25
    invoke-direct {v1, v2}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    #@28
    new-instance v2, Landroid/os/Binder;

    #@2a
    invoke-direct {v2}, Landroid/os/Binder;-><init>()V

    #@2d
    .line 2282
    invoke-interface {v0, p1, v1, v2}, Landroid/net/IConnectivityManager;->listenForNetwork(Landroid/net/NetworkCapabilities;Landroid/os/Messenger;Landroid/os/IBinder;)Landroid/net/NetworkRequest;

    #@30
    move-result-object v0

    #@31
    invoke-static {p2, v0}, Landroid/net/ConnectivityManager$NetworkCallback;->-set0(Landroid/net/ConnectivityManager$NetworkCallback;Landroid/net/NetworkRequest;)Landroid/net/NetworkRequest;

    #@34
    .line 2288
    :goto_0
    invoke-static {p2}, Landroid/net/ConnectivityManager$NetworkCallback;->-get0(Landroid/net/ConnectivityManager$NetworkCallback;)Landroid/net/NetworkRequest;

    #@37
    move-result-object v0

    #@38
    if-eqz v0, :cond_2

    #@3a
    .line 2289
    sget-object v0, Landroid/net/ConnectivityManager;->sNetworkCallback:Ljava/util/HashMap;

    #@3c
    invoke-static {p2}, Landroid/net/ConnectivityManager$NetworkCallback;->-get0(Landroid/net/ConnectivityManager$NetworkCallback;)Landroid/net/NetworkRequest;

    #@3f
    move-result-object v1

    #@40
    invoke-virtual {v0, v1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@43
    :cond_2
    :try_start_2
    monitor-exit v7
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    #@44
    .line 2293
    :goto_1
    invoke-static {p2}, Landroid/net/ConnectivityManager$NetworkCallback;->-get0(Landroid/net/ConnectivityManager$NetworkCallback;)Landroid/net/NetworkRequest;

    #@47
    move-result-object v0

    #@48
    if-nez v0, :cond_3

    #@4a
    invoke-direct {p0}, Landroid/net/ConnectivityManager;->decCallbackHandlerRefCount()V

    #@4d
    .line 2294
    :cond_3
    invoke-static {p2}, Landroid/net/ConnectivityManager$NetworkCallback;->-get0(Landroid/net/ConnectivityManager$NetworkCallback;)Landroid/net/NetworkRequest;

    #@50
    move-result-object v0

    #@51
    return-object v0

    #@52
    .line 2285
    :cond_4
    :try_start_3
    iget-object v0, p0, Landroid/net/ConnectivityManager;->mService:Landroid/net/IConnectivityManager;

    #@54
    .line 2286
    new-instance v2, Landroid/os/Messenger;

    #@56
    sget-object v1, Landroid/net/ConnectivityManager;->sCallbackHandler:Landroid/net/ConnectivityManager$CallbackHandler;

    #@58
    invoke-direct {v2, v1}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    #@5b
    new-instance v4, Landroid/os/Binder;

    #@5d
    invoke-direct {v4}, Landroid/os/Binder;-><init>()V

    #@60
    move-object v1, p1

    #@61
    move v3, p3

    #@62
    move v5, p5

    #@63
    .line 2285
    invoke-interface/range {v0 .. v5}, Landroid/net/IConnectivityManager;->requestNetwork(Landroid/net/NetworkCapabilities;Landroid/os/Messenger;ILandroid/os/IBinder;I)Landroid/net/NetworkRequest;

    #@66
    move-result-object v0

    #@67
    invoke-static {p2, v0}, Landroid/net/ConnectivityManager$NetworkCallback;->-set0(Landroid/net/ConnectivityManager$NetworkCallback;Landroid/net/NetworkRequest;)Landroid/net/NetworkRequest;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@6a
    goto :goto_0

    #@6b
    .line 2280
    :catchall_0
    move-exception v0

    #@6c
    :try_start_4
    monitor-exit v7

    #@6d
    throw v0
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_0

    #@6e
    .line 2292
    :catch_0
    move-exception v6

    #@6f
    .local v6, "e":Landroid/os/RemoteException;
    goto :goto_1
.end method

.method public static setProcessDefaultNetwork(Landroid/net/Network;)Z
    .locals 5
    .param p0, "network"    # Landroid/net/Network;

    #@0
    .prologue
    const/4 v4, 0x1

    #@1
    .line 2635
    if-nez p0, :cond_0

    #@3
    const/4 v1, 0x0

    #@4
    .line 2636
    .local v1, "netId":I
    :goto_0
    invoke-static {}, Landroid/net/NetworkUtils;->getBoundNetworkForProcess()I

    #@7
    move-result v2

    #@8
    if-ne v1, v2, :cond_1

    #@a
    .line 2637
    return v4

    #@b
    .line 2635
    .end local v1    # "netId":I
    :cond_0
    iget v1, p0, Landroid/net/Network;->netId:I

    #@d
    .restart local v1    # "netId":I
    goto :goto_0

    #@e
    .line 2639
    :cond_1
    invoke-static {v1}, Landroid/net/NetworkUtils;->bindProcessToNetwork(I)Z

    #@11
    move-result v2

    #@12
    if-eqz v2, :cond_2

    #@14
    .line 2643
    :try_start_0
    invoke-static {}, Landroid/net/ConnectivityManager;->getInstance()Landroid/net/ConnectivityManager;

    #@17
    move-result-object v2

    #@18
    invoke-virtual {v2}, Landroid/net/ConnectivityManager;->getDefaultProxy()Landroid/net/ProxyInfo;

    #@1b
    move-result-object v2

    #@1c
    invoke-static {v2}, Landroid/net/Proxy;->setHttpProxySystemProperty(Landroid/net/ProxyInfo;)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    #@1f
    .line 2649
    :goto_1
    invoke-static {}, Ljava/net/InetAddress;->clearDnsCache()V

    #@22
    .line 2652
    invoke-static {}, Llibcore/net/event/NetworkEventDispatcher;->getInstance()Llibcore/net/event/NetworkEventDispatcher;

    #@25
    move-result-object v2

    #@26
    invoke-virtual {v2}, Llibcore/net/event/NetworkEventDispatcher;->onNetworkConfigurationChanged()V

    #@29
    .line 2653
    return v4

    #@2a
    .line 2644
    :catch_0
    move-exception v0

    #@2b
    .line 2646
    .local v0, "e":Ljava/lang/SecurityException;
    const-string/jumbo v2, "ConnectivityManager"

    #@2e
    const-string/jumbo v3, "Can\'t set proxy properties"

    #@31
    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@34
    goto :goto_1

    #@35
    .line 2655
    .end local v0    # "e":Ljava/lang/SecurityException;
    :cond_2
    const/4 v2, 0x0

    #@36
    return v2
.end method

.method public static setProcessDefaultNetworkForHostResolution(Landroid/net/Network;)Z
    .locals 1
    .param p0, "network"    # Landroid/net/Network;

    #@0
    .prologue
    .line 2726
    if-nez p0, :cond_0

    #@2
    const/4 v0, 0x0

    #@3
    .line 2725
    :goto_0
    invoke-static {v0}, Landroid/net/NetworkUtils;->bindProcessToNetworkForHostResolution(I)Z

    #@6
    move-result v0

    #@7
    return v0

    #@8
    .line 2726
    :cond_0
    iget v0, p0, Landroid/net/Network;->netId:I

    #@a
    goto :goto_0
.end method

.method private unsupportedStartingFrom(I)V
    .locals 3
    .param p1, "version"    # I

    #@0
    .prologue
    .line 2687
    invoke-static {}, Landroid/os/Process;->myUid()I

    #@3
    move-result v0

    #@4
    const/16 v1, 0x3e8

    #@6
    if-ne v0, v1, :cond_0

    #@8
    .line 2690
    return-void

    #@9
    .line 2693
    :cond_0
    iget-object v0, p0, Landroid/net/ConnectivityManager;->mContext:Landroid/content/Context;

    #@b
    invoke-virtual {v0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    #@e
    move-result-object v0

    #@f
    iget v0, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    #@11
    if-lt v0, p1, :cond_1

    #@13
    .line 2694
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    #@15
    .line 2695
    new-instance v1, Ljava/lang/StringBuilder;

    #@17
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@1a
    const-string/jumbo v2, "This method is not supported in target SDK version "

    #@1d
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@20
    move-result-object v1

    #@21
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@24
    move-result-object v1

    #@25
    const-string/jumbo v2, " and above"

    #@28
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2b
    move-result-object v1

    #@2c
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2f
    move-result-object v1

    #@30
    .line 2694
    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    #@33
    throw v0

    #@34
    .line 2686
    :cond_1
    return-void
.end method


# virtual methods
.method public addDefaultNetworkActiveListener(Landroid/net/ConnectivityManager$OnNetworkActiveListener;)V
    .locals 3
    .param p1, "l"    # Landroid/net/ConnectivityManager$OnNetworkActiveListener;

    #@0
    .prologue
    .line 1347
    new-instance v1, Landroid/net/ConnectivityManager$1;

    #@2
    invoke-direct {v1, p0, p1}, Landroid/net/ConnectivityManager$1;-><init>(Landroid/net/ConnectivityManager;Landroid/net/ConnectivityManager$OnNetworkActiveListener;)V

    #@5
    .line 1355
    .local v1, "rl":Landroid/os/INetworkActivityListener;
    :try_start_0
    invoke-direct {p0}, Landroid/net/ConnectivityManager;->getNetworkManagementService()Landroid/os/INetworkManagementService;

    #@8
    move-result-object v2

    #@9
    invoke-interface {v2, v1}, Landroid/os/INetworkManagementService;->registerNetworkActivityListener(Landroid/os/INetworkActivityListener;)V

    #@c
    .line 1356
    iget-object v2, p0, Landroid/net/ConnectivityManager;->mNetworkActivityListeners:Landroid/util/ArrayMap;

    #@e
    invoke-virtual {v2, p1, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@11
    .line 1346
    :goto_0
    return-void

    #@12
    .line 1357
    :catch_0
    move-exception v0

    #@13
    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method public bindProcessToNetwork(Landroid/net/Network;)Z
    .locals 1
    .param p1, "network"    # Landroid/net/Network;

    #@0
    .prologue
    .line 2610
    invoke-static {p1}, Landroid/net/ConnectivityManager;->setProcessDefaultNetwork(Landroid/net/Network;)Z

    #@3
    move-result v0

    #@4
    return v0
.end method

.method public checkMobileProvisioning(I)I
    .locals 3
    .param p1, "suggestedTimeOutMs"    # I

    #@0
    .prologue
    .line 1898
    const/4 v1, -0x1

    #@1
    .line 1900
    .local v1, "timeOutMs":I
    :try_start_0
    iget-object v2, p0, Landroid/net/ConnectivityManager;->mService:Landroid/net/IConnectivityManager;

    #@3
    invoke-interface {v2, p1}, Landroid/net/IConnectivityManager;->checkMobileProvisioning(I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@6
    move-result v1

    #@7
    .line 1903
    :goto_0
    return v1

    #@8
    .line 1901
    :catch_0
    move-exception v0

    #@9
    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method public factoryReset()V
    .locals 2

    #@0
    .prologue
    .line 2584
    :try_start_0
    iget-object v1, p0, Landroid/net/ConnectivityManager;->mService:Landroid/net/IConnectivityManager;

    #@2
    invoke-interface {v1}, Landroid/net/IConnectivityManager;->factoryReset()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@5
    .line 2582
    :goto_0
    return-void

    #@6
    .line 2585
    :catch_0
    move-exception v0

    #@7
    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method public getActiveLinkProperties()Landroid/net/LinkProperties;
    .locals 2

    #@0
    .prologue
    .line 820
    :try_start_0
    iget-object v1, p0, Landroid/net/ConnectivityManager;->mService:Landroid/net/IConnectivityManager;

    #@2
    invoke-interface {v1}, Landroid/net/IConnectivityManager;->getActiveLinkProperties()Landroid/net/LinkProperties;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@5
    move-result-object v1

    #@6
    return-object v1

    #@7
    .line 821
    :catch_0
    move-exception v0

    #@8
    .line 822
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    #@9
    return-object v1
.end method

.method public getActiveNetwork()Landroid/net/Network;
    .locals 2

    #@0
    .prologue
    .line 666
    :try_start_0
    iget-object v1, p0, Landroid/net/ConnectivityManager;->mService:Landroid/net/IConnectivityManager;

    #@2
    invoke-interface {v1}, Landroid/net/IConnectivityManager;->getActiveNetwork()Landroid/net/Network;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@5
    move-result-object v1

    #@6
    return-object v1

    #@7
    .line 667
    :catch_0
    move-exception v0

    #@8
    .line 668
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    #@9
    return-object v1
.end method

.method public getActiveNetworkInfo()Landroid/net/NetworkInfo;
    .locals 2

    #@0
    .prologue
    .line 646
    :try_start_0
    iget-object v1, p0, Landroid/net/ConnectivityManager;->mService:Landroid/net/IConnectivityManager;

    #@2
    invoke-interface {v1}, Landroid/net/IConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@5
    move-result-object v1

    #@6
    return-object v1

    #@7
    .line 647
    :catch_0
    move-exception v0

    #@8
    .line 648
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    #@9
    return-object v1
.end method

.method public getActiveNetworkInfoForUid(I)Landroid/net/NetworkInfo;
    .locals 2
    .param p1, "uid"    # I

    #@0
    .prologue
    .line 687
    :try_start_0
    iget-object v1, p0, Landroid/net/ConnectivityManager;->mService:Landroid/net/IConnectivityManager;

    #@2
    invoke-interface {v1, p1}, Landroid/net/IConnectivityManager;->getActiveNetworkInfoForUid(I)Landroid/net/NetworkInfo;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@5
    move-result-object v1

    #@6
    return-object v1

    #@7
    .line 688
    :catch_0
    move-exception v0

    #@8
    .line 689
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    #@9
    return-object v1
.end method

.method public getActiveNetworkQuotaInfo()Landroid/net/NetworkQuotaInfo;
    .locals 2

    #@0
    .prologue
    .line 1276
    :try_start_0
    iget-object v1, p0, Landroid/net/ConnectivityManager;->mService:Landroid/net/IConnectivityManager;

    #@2
    invoke-interface {v1}, Landroid/net/IConnectivityManager;->getActiveNetworkQuotaInfo()Landroid/net/NetworkQuotaInfo;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@5
    move-result-object v1

    #@6
    return-object v1

    #@7
    .line 1277
    :catch_0
    move-exception v0

    #@8
    .line 1278
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    #@9
    return-object v1
.end method

.method public getAllNetworkInfo()[Landroid/net/NetworkInfo;
    .locals 2

    #@0
    .prologue
    .line 752
    :try_start_0
    iget-object v1, p0, Landroid/net/ConnectivityManager;->mService:Landroid/net/IConnectivityManager;

    #@2
    invoke-interface {v1}, Landroid/net/IConnectivityManager;->getAllNetworkInfo()[Landroid/net/NetworkInfo;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@5
    move-result-object v1

    #@6
    return-object v1

    #@7
    .line 753
    :catch_0
    move-exception v0

    #@8
    .line 754
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    #@9
    return-object v1
.end method

.method public getAllNetworks()[Landroid/net/Network;
    .locals 2

    #@0
    .prologue
    .line 788
    :try_start_0
    iget-object v1, p0, Landroid/net/ConnectivityManager;->mService:Landroid/net/IConnectivityManager;

    #@2
    invoke-interface {v1}, Landroid/net/IConnectivityManager;->getAllNetworks()[Landroid/net/Network;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@5
    move-result-object v1

    #@6
    return-object v1

    #@7
    .line 789
    :catch_0
    move-exception v0

    #@8
    .line 790
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    #@9
    return-object v1
.end method

.method public getBackgroundDataSetting()Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .line 1246
    const/4 v0, 0x1

    #@1
    return v0
.end method

.method public getBoundNetworkForProcess()Landroid/net/Network;
    .locals 1

    #@0
    .prologue
    .line 2668
    invoke-static {}, Landroid/net/ConnectivityManager;->getProcessDefaultNetwork()Landroid/net/Network;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public getDefaultNetworkCapabilitiesForUser(I)[Landroid/net/NetworkCapabilities;
    .locals 2
    .param p1, "userId"    # I

    #@0
    .prologue
    .line 801
    :try_start_0
    iget-object v1, p0, Landroid/net/ConnectivityManager;->mService:Landroid/net/IConnectivityManager;

    #@2
    invoke-interface {v1, p1}, Landroid/net/IConnectivityManager;->getDefaultNetworkCapabilitiesForUser(I)[Landroid/net/NetworkCapabilities;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@5
    move-result-object v1

    #@6
    return-object v1

    #@7
    .line 802
    :catch_0
    move-exception v0

    #@8
    .line 803
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    #@9
    return-object v1
.end method

.method public getDefaultProxy()Landroid/net/ProxyInfo;
    .locals 1

    #@0
    .prologue
    .line 1824
    invoke-virtual {p0}, Landroid/net/ConnectivityManager;->getBoundNetworkForProcess()Landroid/net/Network;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {p0, v0}, Landroid/net/ConnectivityManager;->getProxyForNetwork(Landroid/net/Network;)Landroid/net/ProxyInfo;

    #@7
    move-result-object v0

    #@8
    return-object v0
.end method

.method public getGlobalProxy()Landroid/net/ProxyInfo;
    .locals 2

    #@0
    .prologue
    .line 1786
    :try_start_0
    iget-object v1, p0, Landroid/net/ConnectivityManager;->mService:Landroid/net/IConnectivityManager;

    #@2
    invoke-interface {v1}, Landroid/net/IConnectivityManager;->getGlobalProxy()Landroid/net/ProxyInfo;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@5
    move-result-object v1

    #@6
    return-object v1

    #@7
    .line 1787
    :catch_0
    move-exception v0

    #@8
    .line 1788
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    #@9
    return-object v1
.end method

.method public getLastTetherError(Ljava/lang/String;)I
    .locals 2
    .param p1, "iface"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1696
    :try_start_0
    iget-object v1, p0, Landroid/net/ConnectivityManager;->mService:Landroid/net/IConnectivityManager;

    #@2
    invoke-interface {v1, p1}, Landroid/net/IConnectivityManager;->getLastTetherError(Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@5
    move-result v1

    #@6
    return v1

    #@7
    .line 1697
    :catch_0
    move-exception v0

    #@8
    .line 1698
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x2

    #@9
    return v1
.end method

.method public getLinkProperties(I)Landroid/net/LinkProperties;
    .locals 2
    .param p1, "networkType"    # I

    #@0
    .prologue
    .line 844
    :try_start_0
    iget-object v1, p0, Landroid/net/ConnectivityManager;->mService:Landroid/net/IConnectivityManager;

    #@2
    invoke-interface {v1, p1}, Landroid/net/IConnectivityManager;->getLinkPropertiesForType(I)Landroid/net/LinkProperties;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@5
    move-result-object v1

    #@6
    return-object v1

    #@7
    .line 845
    :catch_0
    move-exception v0

    #@8
    .line 846
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    #@9
    return-object v1
.end method

.method public getLinkProperties(Landroid/net/Network;)Landroid/net/LinkProperties;
    .locals 2
    .param p1, "network"    # Landroid/net/Network;

    #@0
    .prologue
    .line 861
    :try_start_0
    iget-object v1, p0, Landroid/net/ConnectivityManager;->mService:Landroid/net/IConnectivityManager;

    #@2
    invoke-interface {v1, p1}, Landroid/net/IConnectivityManager;->getLinkProperties(Landroid/net/Network;)Landroid/net/LinkProperties;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@5
    move-result-object v1

    #@6
    return-object v1

    #@7
    .line 862
    :catch_0
    move-exception v0

    #@8
    .line 863
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    #@9
    return-object v1
.end method

.method public getMobileDataEnabled()Z
    .locals 8

    #@0
    .prologue
    .line 1287
    const-string/jumbo v5, "phone"

    #@3
    invoke-static {v5}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    #@6
    move-result-object v0

    #@7
    .line 1288
    .local v0, "b":Landroid/os/IBinder;
    if-eqz v0, :cond_0

    #@9
    .line 1290
    :try_start_0
    invoke-static {v0}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    #@c
    move-result-object v2

    #@d
    .line 1291
    .local v2, "it":Lcom/android/internal/telephony/ITelephony;
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultDataSubId()I

    #@10
    move-result v4

    #@11
    .line 1292
    .local v4, "subId":I
    const-string/jumbo v5, "ConnectivityManager"

    #@14
    new-instance v6, Ljava/lang/StringBuilder;

    #@16
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@19
    const-string/jumbo v7, "getMobileDataEnabled()+ subId="

    #@1c
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1f
    move-result-object v6

    #@20
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@23
    move-result-object v6

    #@24
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@27
    move-result-object v6

    #@28
    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@2b
    .line 1293
    invoke-interface {v2, v4}, Lcom/android/internal/telephony/ITelephony;->getDataEnabled(I)Z

    #@2e
    move-result v3

    #@2f
    .line 1294
    .local v3, "retVal":Z
    const-string/jumbo v5, "ConnectivityManager"

    #@32
    new-instance v6, Ljava/lang/StringBuilder;

    #@34
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@37
    const-string/jumbo v7, "getMobileDataEnabled()- subId="

    #@3a
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3d
    move-result-object v6

    #@3e
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@41
    move-result-object v6

    #@42
    .line 1295
    const-string/jumbo v7, " retVal="

    #@45
    .line 1294
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@48
    move-result-object v6

    #@49
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@4c
    move-result-object v6

    #@4d
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@50
    move-result-object v6

    #@51
    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@54
    .line 1296
    return v3

    #@55
    .line 1297
    .end local v2    # "it":Lcom/android/internal/telephony/ITelephony;
    .end local v3    # "retVal":Z
    .end local v4    # "subId":I
    :catch_0
    move-exception v1

    #@56
    .line 1299
    :cond_0
    const-string/jumbo v5, "ConnectivityManager"

    #@59
    const-string/jumbo v6, "getMobileDataEnabled()- remote exception retVal=false"

    #@5c
    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@5f
    .line 1300
    const/4 v5, 0x0

    #@60
    return v5
.end method

.method public getMobileProvisioningUrl()Ljava/lang/String;
    .locals 2

    #@0
    .prologue
    .line 1912
    :try_start_0
    iget-object v1, p0, Landroid/net/ConnectivityManager;->mService:Landroid/net/IConnectivityManager;

    #@2
    invoke-interface {v1}, Landroid/net/IConnectivityManager;->getMobileProvisioningUrl()Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@5
    move-result-object v1

    #@6
    return-object v1

    #@7
    .line 1913
    :catch_0
    move-exception v0

    #@8
    .line 1915
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    #@9
    return-object v1
.end method

.method public getNetworkCapabilities(Landroid/net/Network;)Landroid/net/NetworkCapabilities;
    .locals 2
    .param p1, "network"    # Landroid/net/Network;

    #@0
    .prologue
    .line 878
    :try_start_0
    iget-object v1, p0, Landroid/net/ConnectivityManager;->mService:Landroid/net/IConnectivityManager;

    #@2
    invoke-interface {v1, p1}, Landroid/net/IConnectivityManager;->getNetworkCapabilities(Landroid/net/Network;)Landroid/net/NetworkCapabilities;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@5
    move-result-object v1

    #@6
    return-object v1

    #@7
    .line 879
    :catch_0
    move-exception v0

    #@8
    .line 880
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    #@9
    return-object v1
.end method

.method public getNetworkForType(I)Landroid/net/Network;
    .locals 2
    .param p1, "networkType"    # I

    #@0
    .prologue
    .line 772
    :try_start_0
    iget-object v1, p0, Landroid/net/ConnectivityManager;->mService:Landroid/net/IConnectivityManager;

    #@2
    invoke-interface {v1, p1}, Landroid/net/IConnectivityManager;->getNetworkForType(I)Landroid/net/Network;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@5
    move-result-object v1

    #@6
    return-object v1

    #@7
    .line 773
    :catch_0
    move-exception v0

    #@8
    .line 774
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    #@9
    return-object v1
.end method

.method public getNetworkInfo(I)Landroid/net/NetworkInfo;
    .locals 2
    .param p1, "networkType"    # I

    #@0
    .prologue
    .line 711
    :try_start_0
    iget-object v1, p0, Landroid/net/ConnectivityManager;->mService:Landroid/net/IConnectivityManager;

    #@2
    invoke-interface {v1, p1}, Landroid/net/IConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@5
    move-result-object v1

    #@6
    return-object v1

    #@7
    .line 712
    :catch_0
    move-exception v0

    #@8
    .line 713
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    #@9
    return-object v1
.end method

.method public getNetworkInfo(Landroid/net/Network;)Landroid/net/NetworkInfo;
    .locals 2
    .param p1, "network"    # Landroid/net/Network;

    #@0
    .prologue
    .line 731
    :try_start_0
    iget-object v1, p0, Landroid/net/ConnectivityManager;->mService:Landroid/net/IConnectivityManager;

    #@2
    invoke-interface {v1, p1}, Landroid/net/IConnectivityManager;->getNetworkInfoForNetwork(Landroid/net/Network;)Landroid/net/NetworkInfo;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@5
    move-result-object v1

    #@6
    return-object v1

    #@7
    .line 732
    :catch_0
    move-exception v0

    #@8
    .line 733
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    #@9
    return-object v1
.end method

.method public getNetworkPreference()I
    .locals 1

    #@0
    .prologue
    .line 629
    const/4 v0, -0x1

    #@1
    return v0
.end method

.method public getProxyForNetwork(Landroid/net/Network;)Landroid/net/ProxyInfo;
    .locals 2
    .param p1, "network"    # Landroid/net/Network;

    #@0
    .prologue
    .line 1808
    :try_start_0
    iget-object v1, p0, Landroid/net/ConnectivityManager;->mService:Landroid/net/IConnectivityManager;

    #@2
    invoke-interface {v1, p1}, Landroid/net/IConnectivityManager;->getProxyForNetwork(Landroid/net/Network;)Landroid/net/ProxyInfo;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@5
    move-result-object v1

    #@6
    return-object v1

    #@7
    .line 1809
    :catch_0
    move-exception v0

    #@8
    .line 1810
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    #@9
    return-object v1
.end method

.method public getTetherableBluetoothRegexs()[Ljava/lang/String;
    .locals 2

    #@0
    .prologue
    .line 1631
    :try_start_0
    iget-object v1, p0, Landroid/net/ConnectivityManager;->mService:Landroid/net/IConnectivityManager;

    #@2
    invoke-interface {v1}, Landroid/net/IConnectivityManager;->getTetherableBluetoothRegexs()[Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@5
    move-result-object v1

    #@6
    return-object v1

    #@7
    .line 1632
    :catch_0
    move-exception v0

    #@8
    .line 1633
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    #@9
    new-array v1, v1, [Ljava/lang/String;

    #@b
    return-object v1
.end method

.method public getTetherableIfaces()[Ljava/lang/String;
    .locals 2

    #@0
    .prologue
    .line 1456
    :try_start_0
    iget-object v1, p0, Landroid/net/ConnectivityManager;->mService:Landroid/net/IConnectivityManager;

    #@2
    invoke-interface {v1}, Landroid/net/IConnectivityManager;->getTetherableIfaces()[Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@5
    move-result-object v1

    #@6
    return-object v1

    #@7
    .line 1457
    :catch_0
    move-exception v0

    #@8
    .line 1458
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    #@9
    new-array v1, v1, [Ljava/lang/String;

    #@b
    return-object v1
.end method

.method public getTetherableUsbRegexs()[Ljava/lang/String;
    .locals 2

    #@0
    .prologue
    .line 1591
    :try_start_0
    iget-object v1, p0, Landroid/net/ConnectivityManager;->mService:Landroid/net/IConnectivityManager;

    #@2
    invoke-interface {v1}, Landroid/net/IConnectivityManager;->getTetherableUsbRegexs()[Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@5
    move-result-object v1

    #@6
    return-object v1

    #@7
    .line 1592
    :catch_0
    move-exception v0

    #@8
    .line 1593
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    #@9
    new-array v1, v1, [Ljava/lang/String;

    #@b
    return-object v1
.end method

.method public getTetherableWifiRegexs()[Ljava/lang/String;
    .locals 2

    #@0
    .prologue
    .line 1611
    :try_start_0
    iget-object v1, p0, Landroid/net/ConnectivityManager;->mService:Landroid/net/IConnectivityManager;

    #@2
    invoke-interface {v1}, Landroid/net/IConnectivityManager;->getTetherableWifiRegexs()[Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@5
    move-result-object v1

    #@6
    return-object v1

    #@7
    .line 1612
    :catch_0
    move-exception v0

    #@8
    .line 1613
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    #@9
    new-array v1, v1, [Ljava/lang/String;

    #@b
    return-object v1
.end method

.method public getTetheredDhcpRanges()[Ljava/lang/String;
    .locals 2

    #@0
    .prologue
    .line 1510
    :try_start_0
    iget-object v1, p0, Landroid/net/ConnectivityManager;->mService:Landroid/net/IConnectivityManager;

    #@2
    invoke-interface {v1}, Landroid/net/IConnectivityManager;->getTetheredDhcpRanges()[Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@5
    move-result-object v1

    #@6
    return-object v1

    #@7
    .line 1511
    :catch_0
    move-exception v0

    #@8
    .line 1512
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    #@9
    new-array v1, v1, [Ljava/lang/String;

    #@b
    return-object v1
.end method

.method public getTetheredIfaces()[Ljava/lang/String;
    .locals 2

    #@0
    .prologue
    .line 1473
    :try_start_0
    iget-object v1, p0, Landroid/net/ConnectivityManager;->mService:Landroid/net/IConnectivityManager;

    #@2
    invoke-interface {v1}, Landroid/net/IConnectivityManager;->getTetheredIfaces()[Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@5
    move-result-object v1

    #@6
    return-object v1

    #@7
    .line 1474
    :catch_0
    move-exception v0

    #@8
    .line 1475
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    #@9
    new-array v1, v1, [Ljava/lang/String;

    #@b
    return-object v1
.end method

.method public getTetheringErroredIfaces()[Ljava/lang/String;
    .locals 2

    #@0
    .prologue
    .line 1496
    :try_start_0
    iget-object v1, p0, Landroid/net/ConnectivityManager;->mService:Landroid/net/IConnectivityManager;

    #@2
    invoke-interface {v1}, Landroid/net/IConnectivityManager;->getTetheringErroredIfaces()[Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@5
    move-result-object v1

    #@6
    return-object v1

    #@7
    .line 1497
    :catch_0
    move-exception v0

    #@8
    .line 1498
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    #@9
    new-array v1, v1, [Ljava/lang/String;

    #@b
    return-object v1
.end method

.method public isActiveNetworkMetered()Z
    .locals 2

    #@0
    .prologue
    .line 1864
    :try_start_0
    iget-object v1, p0, Landroid/net/ConnectivityManager;->mService:Landroid/net/IConnectivityManager;

    #@2
    invoke-interface {v1}, Landroid/net/IConnectivityManager;->isActiveNetworkMetered()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@5
    move-result v1

    #@6
    return v1

    #@7
    .line 1865
    :catch_0
    move-exception v0

    #@8
    .line 1866
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    #@9
    return v1
.end method

.method public isDefaultNetworkActive()Z
    .locals 2

    #@0
    .prologue
    .line 1388
    :try_start_0
    invoke-direct {p0}, Landroid/net/ConnectivityManager;->getNetworkManagementService()Landroid/os/INetworkManagementService;

    #@3
    move-result-object v1

    #@4
    invoke-interface {v1}, Landroid/os/INetworkManagementService;->isNetworkActive()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@7
    move-result v1

    #@8
    return v1

    #@9
    .line 1389
    :catch_0
    move-exception v0

    #@a
    .line 1391
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    #@b
    return v1
.end method

.method public isNetworkSupported(I)Z
    .locals 2
    .param p1, "networkType"    # I

    #@0
    .prologue
    .line 1844
    :try_start_0
    iget-object v1, p0, Landroid/net/ConnectivityManager;->mService:Landroid/net/IConnectivityManager;

    #@2
    invoke-interface {v1, p1}, Landroid/net/IConnectivityManager;->isNetworkSupported(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@5
    move-result v1

    #@6
    return v1

    #@7
    .line 1845
    :catch_0
    move-exception v0

    #@8
    .line 1846
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    #@9
    return v1
.end method

.method public isTetheringSupported()Z
    .locals 2

    #@0
    .prologue
    .line 1571
    :try_start_0
    iget-object v1, p0, Landroid/net/ConnectivityManager;->mService:Landroid/net/IConnectivityManager;

    #@2
    invoke-interface {v1}, Landroid/net/IConnectivityManager;->isTetheringSupported()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@5
    move-result v1

    #@6
    return v1

    #@7
    .line 1572
    :catch_0
    move-exception v0

    #@8
    .line 1573
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    #@9
    return v1
.end method

.method public registerNetworkAgent(Landroid/os/Messenger;Landroid/net/NetworkInfo;Landroid/net/LinkProperties;Landroid/net/NetworkCapabilities;ILandroid/net/NetworkMisc;)I
    .locals 8
    .param p1, "messenger"    # Landroid/os/Messenger;
    .param p2, "ni"    # Landroid/net/NetworkInfo;
    .param p3, "lp"    # Landroid/net/LinkProperties;
    .param p4, "nc"    # Landroid/net/NetworkCapabilities;
    .param p5, "score"    # I
    .param p6, "misc"    # Landroid/net/NetworkMisc;

    #@0
    .prologue
    .line 1973
    :try_start_0
    iget-object v0, p0, Landroid/net/ConnectivityManager;->mService:Landroid/net/IConnectivityManager;

    #@2
    move-object v1, p1

    #@3
    move-object v2, p2

    #@4
    move-object v3, p3

    #@5
    move-object v4, p4

    #@6
    move v5, p5

    #@7
    move-object v6, p6

    #@8
    invoke-interface/range {v0 .. v6}, Landroid/net/IConnectivityManager;->registerNetworkAgent(Landroid/os/Messenger;Landroid/net/NetworkInfo;Landroid/net/LinkProperties;Landroid/net/NetworkCapabilities;ILandroid/net/NetworkMisc;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@b
    move-result v0

    #@c
    return v0

    #@d
    .line 1974
    :catch_0
    move-exception v7

    #@e
    .line 1975
    .local v7, "e":Landroid/os/RemoteException;
    const/4 v0, 0x0

    #@f
    return v0
.end method

.method public registerNetworkCallback(Landroid/net/NetworkRequest;Landroid/app/PendingIntent;)V
    .locals 3
    .param p1, "request"    # Landroid/net/NetworkRequest;
    .param p2, "operation"    # Landroid/app/PendingIntent;

    #@0
    .prologue
    .line 2498
    invoke-direct {p0, p2}, Landroid/net/ConnectivityManager;->checkPendingIntent(Landroid/app/PendingIntent;)V

    #@3
    .line 2500
    :try_start_0
    iget-object v1, p0, Landroid/net/ConnectivityManager;->mService:Landroid/net/IConnectivityManager;

    #@5
    iget-object v2, p1, Landroid/net/NetworkRequest;->networkCapabilities:Landroid/net/NetworkCapabilities;

    #@7
    invoke-interface {v1, v2, p2}, Landroid/net/IConnectivityManager;->pendingListenForNetwork(Landroid/net/NetworkCapabilities;Landroid/app/PendingIntent;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@a
    .line 2497
    :goto_0
    return-void

    #@b
    .line 2501
    :catch_0
    move-exception v0

    #@c
    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method public registerNetworkCallback(Landroid/net/NetworkRequest;Landroid/net/ConnectivityManager$NetworkCallback;)V
    .locals 6
    .param p1, "request"    # Landroid/net/NetworkRequest;
    .param p2, "networkCallback"    # Landroid/net/ConnectivityManager$NetworkCallback;

    #@0
    .prologue
    .line 2463
    iget-object v1, p1, Landroid/net/NetworkRequest;->networkCapabilities:Landroid/net/NetworkCapabilities;

    #@2
    const/4 v3, 0x0

    #@3
    const/4 v4, 0x1

    #@4
    const/4 v5, -0x1

    #@5
    move-object v0, p0

    #@6
    move-object v2, p2

    #@7
    invoke-direct/range {v0 .. v5}, Landroid/net/ConnectivityManager;->sendRequestForNetwork(Landroid/net/NetworkCapabilities;Landroid/net/ConnectivityManager$NetworkCallback;III)Landroid/net/NetworkRequest;

    #@a
    .line 2462
    return-void
.end method

.method public registerNetworkFactory(Landroid/os/Messenger;Ljava/lang/String;)V
    .locals 2
    .param p1, "messenger"    # Landroid/os/Messenger;
    .param p2, "name"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1954
    :try_start_0
    iget-object v1, p0, Landroid/net/ConnectivityManager;->mService:Landroid/net/IConnectivityManager;

    #@2
    invoke-interface {v1, p1, p2}, Landroid/net/IConnectivityManager;->registerNetworkFactory(Landroid/os/Messenger;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@5
    .line 1952
    :goto_0
    return-void

    #@6
    .line 1955
    :catch_0
    move-exception v0

    #@7
    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method public releaseNetworkRequest(Landroid/app/PendingIntent;)V
    .locals 2
    .param p1, "operation"    # Landroid/app/PendingIntent;

    #@0
    .prologue
    .line 2439
    invoke-direct {p0, p1}, Landroid/net/ConnectivityManager;->checkPendingIntent(Landroid/app/PendingIntent;)V

    #@3
    .line 2441
    :try_start_0
    iget-object v1, p0, Landroid/net/ConnectivityManager;->mService:Landroid/net/IConnectivityManager;

    #@5
    invoke-interface {v1, p1}, Landroid/net/IConnectivityManager;->releasePendingNetworkRequest(Landroid/app/PendingIntent;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@8
    .line 2438
    :goto_0
    return-void

    #@9
    .line 2442
    :catch_0
    move-exception v0

    #@a
    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method public removeDefaultNetworkActiveListener(Landroid/net/ConnectivityManager$OnNetworkActiveListener;)V
    .locals 5
    .param p1, "l"    # Landroid/net/ConnectivityManager$OnNetworkActiveListener;

    #@0
    .prologue
    .line 1368
    iget-object v2, p0, Landroid/net/ConnectivityManager;->mNetworkActivityListeners:Landroid/util/ArrayMap;

    #@2
    invoke-virtual {v2, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@5
    move-result-object v1

    #@6
    check-cast v1, Landroid/os/INetworkActivityListener;

    #@8
    .line 1369
    .local v1, "rl":Landroid/os/INetworkActivityListener;
    if-nez v1, :cond_0

    #@a
    .line 1370
    new-instance v2, Ljava/lang/IllegalArgumentException;

    #@c
    new-instance v3, Ljava/lang/StringBuilder;

    #@e
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@11
    const-string/jumbo v4, "Listener not registered: "

    #@14
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@17
    move-result-object v3

    #@18
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@1b
    move-result-object v3

    #@1c
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1f
    move-result-object v3

    #@20
    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@23
    throw v2

    #@24
    .line 1373
    :cond_0
    :try_start_0
    invoke-direct {p0}, Landroid/net/ConnectivityManager;->getNetworkManagementService()Landroid/os/INetworkManagementService;

    #@27
    move-result-object v2

    #@28
    invoke-interface {v2, v1}, Landroid/os/INetworkManagementService;->unregisterNetworkActivityListener(Landroid/os/INetworkActivityListener;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@2b
    .line 1367
    :goto_0
    return-void

    #@2c
    .line 1374
    :catch_0
    move-exception v0

    #@2d
    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method public reportBadNetwork(Landroid/net/Network;)V
    .locals 3
    .param p1, "network"    # Landroid/net/Network;

    #@0
    .prologue
    .line 1734
    :try_start_0
    iget-object v1, p0, Landroid/net/ConnectivityManager;->mService:Landroid/net/IConnectivityManager;

    #@2
    const/4 v2, 0x1

    #@3
    invoke-interface {v1, p1, v2}, Landroid/net/IConnectivityManager;->reportNetworkConnectivity(Landroid/net/Network;Z)V

    #@6
    .line 1735
    iget-object v1, p0, Landroid/net/ConnectivityManager;->mService:Landroid/net/IConnectivityManager;

    #@8
    const/4 v2, 0x0

    #@9
    invoke-interface {v1, p1, v2}, Landroid/net/IConnectivityManager;->reportNetworkConnectivity(Landroid/net/Network;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@c
    .line 1730
    :goto_0
    return-void

    #@d
    .line 1736
    :catch_0
    move-exception v0

    #@e
    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method public reportInetCondition(II)V
    .locals 2
    .param p1, "networkType"    # I
    .param p2, "percentage"    # I

    #@0
    .prologue
    .line 1714
    :try_start_0
    iget-object v1, p0, Landroid/net/ConnectivityManager;->mService:Landroid/net/IConnectivityManager;

    #@2
    invoke-interface {v1, p1, p2}, Landroid/net/IConnectivityManager;->reportInetCondition(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@5
    .line 1712
    :goto_0
    return-void

    #@6
    .line 1715
    :catch_0
    move-exception v0

    #@7
    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method public reportNetworkConnectivity(Landroid/net/Network;Z)V
    .locals 2
    .param p1, "network"    # Landroid/net/Network;
    .param p2, "hasConnectivity"    # Z

    #@0
    .prologue
    .line 1753
    :try_start_0
    iget-object v1, p0, Landroid/net/ConnectivityManager;->mService:Landroid/net/IConnectivityManager;

    #@2
    invoke-interface {v1, p1, p2}, Landroid/net/IConnectivityManager;->reportNetworkConnectivity(Landroid/net/Network;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@5
    .line 1751
    :goto_0
    return-void

    #@6
    .line 1754
    :catch_0
    move-exception v0

    #@7
    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method public requestBandwidthUpdate(Landroid/net/Network;)Z
    .locals 2
    .param p1, "network"    # Landroid/net/Network;

    #@0
    .prologue
    .line 2517
    :try_start_0
    iget-object v1, p0, Landroid/net/ConnectivityManager;->mService:Landroid/net/IConnectivityManager;

    #@2
    invoke-interface {v1, p1}, Landroid/net/IConnectivityManager;->requestBandwidthUpdate(Landroid/net/Network;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@5
    move-result v1

    #@6
    return v1

    #@7
    .line 2518
    :catch_0
    move-exception v0

    #@8
    .line 2519
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    #@9
    return v1
.end method

.method public requestNetwork(Landroid/net/NetworkRequest;Landroid/app/PendingIntent;)V
    .locals 3
    .param p1, "request"    # Landroid/net/NetworkRequest;
    .param p2, "operation"    # Landroid/app/PendingIntent;

    #@0
    .prologue
    .line 2421
    invoke-direct {p0, p2}, Landroid/net/ConnectivityManager;->checkPendingIntent(Landroid/app/PendingIntent;)V

    #@3
    .line 2423
    :try_start_0
    iget-object v1, p0, Landroid/net/ConnectivityManager;->mService:Landroid/net/IConnectivityManager;

    #@5
    iget-object v2, p1, Landroid/net/NetworkRequest;->networkCapabilities:Landroid/net/NetworkCapabilities;

    #@7
    invoke-interface {v1, v2, p2}, Landroid/net/IConnectivityManager;->pendingRequestForNetwork(Landroid/net/NetworkCapabilities;Landroid/app/PendingIntent;)Landroid/net/NetworkRequest;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@a
    .line 2420
    :goto_0
    return-void

    #@b
    .line 2424
    :catch_0
    move-exception v0

    #@c
    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method public requestNetwork(Landroid/net/NetworkRequest;Landroid/net/ConnectivityManager$NetworkCallback;)V
    .locals 6
    .param p1, "request"    # Landroid/net/NetworkRequest;
    .param p2, "networkCallback"    # Landroid/net/ConnectivityManager$NetworkCallback;

    #@0
    .prologue
    .line 2324
    iget-object v1, p1, Landroid/net/NetworkRequest;->networkCapabilities:Landroid/net/NetworkCapabilities;

    #@2
    .line 2325
    iget-object v0, p1, Landroid/net/NetworkRequest;->networkCapabilities:Landroid/net/NetworkCapabilities;

    #@4
    invoke-direct {p0, v0}, Landroid/net/ConnectivityManager;->inferLegacyTypeForNetworkCapabilities(Landroid/net/NetworkCapabilities;)I

    #@7
    move-result v5

    #@8
    .line 2324
    const/4 v3, 0x0

    #@9
    .line 2325
    const/4 v4, 0x2

    #@a
    move-object v0, p0

    #@b
    move-object v2, p2

    #@c
    .line 2324
    invoke-direct/range {v0 .. v5}, Landroid/net/ConnectivityManager;->sendRequestForNetwork(Landroid/net/NetworkCapabilities;Landroid/net/ConnectivityManager$NetworkCallback;III)Landroid/net/NetworkRequest;

    #@f
    .line 2323
    return-void
.end method

.method public requestNetwork(Landroid/net/NetworkRequest;Landroid/net/ConnectivityManager$NetworkCallback;I)V
    .locals 6
    .param p1, "request"    # Landroid/net/NetworkRequest;
    .param p2, "networkCallback"    # Landroid/net/ConnectivityManager$NetworkCallback;
    .param p3, "timeoutMs"    # I

    #@0
    .prologue
    .line 2348
    iget-object v1, p1, Landroid/net/NetworkRequest;->networkCapabilities:Landroid/net/NetworkCapabilities;

    #@2
    .line 2349
    iget-object v0, p1, Landroid/net/NetworkRequest;->networkCapabilities:Landroid/net/NetworkCapabilities;

    #@4
    invoke-direct {p0, v0}, Landroid/net/ConnectivityManager;->inferLegacyTypeForNetworkCapabilities(Landroid/net/NetworkCapabilities;)I

    #@7
    move-result v5

    #@8
    const/4 v4, 0x2

    #@9
    move-object v0, p0

    #@a
    move-object v2, p2

    #@b
    move v3, p3

    #@c
    .line 2348
    invoke-direct/range {v0 .. v5}, Landroid/net/ConnectivityManager;->sendRequestForNetwork(Landroid/net/NetworkCapabilities;Landroid/net/ConnectivityManager$NetworkCallback;III)Landroid/net/NetworkRequest;

    #@f
    .line 2347
    return-void
.end method

.method public requestRouteToHost(II)Z
    .locals 1
    .param p1, "networkType"    # I
    .param p2, "hostAddress"    # I

    #@0
    .prologue
    .line 1200
    invoke-static {p2}, Landroid/net/NetworkUtils;->intToInetAddress(I)Ljava/net/InetAddress;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {p0, p1, v0}, Landroid/net/ConnectivityManager;->requestRouteToHostAddress(ILjava/net/InetAddress;)Z

    #@7
    move-result v0

    #@8
    return v0
.end method

.method public requestRouteToHostAddress(ILjava/net/InetAddress;)Z
    .locals 3
    .param p1, "networkType"    # I
    .param p2, "hostAddress"    # Ljava/net/InetAddress;

    #@0
    .prologue
    .line 1218
    invoke-direct {p0}, Landroid/net/ConnectivityManager;->checkLegacyRoutingApiAccess()V

    #@3
    .line 1220
    :try_start_0
    iget-object v1, p0, Landroid/net/ConnectivityManager;->mService:Landroid/net/IConnectivityManager;

    #@5
    invoke-virtual {p2}, Ljava/net/InetAddress;->getAddress()[B

    #@8
    move-result-object v2

    #@9
    invoke-interface {v1, p1, v2}, Landroid/net/IConnectivityManager;->requestRouteToHostAddress(I[B)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@c
    move-result v1

    #@d
    return v1

    #@e
    .line 1221
    :catch_0
    move-exception v0

    #@f
    .line 1222
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    #@10
    return v1
.end method

.method public setAcceptUnvalidated(Landroid/net/Network;ZZ)V
    .locals 2
    .param p1, "network"    # Landroid/net/Network;
    .param p2, "accept"    # Z
    .param p3, "always"    # Z

    #@0
    .prologue
    .line 2574
    :try_start_0
    iget-object v1, p0, Landroid/net/ConnectivityManager;->mService:Landroid/net/IConnectivityManager;

    #@2
    invoke-interface {v1, p1, p2, p3}, Landroid/net/IConnectivityManager;->setAcceptUnvalidated(Landroid/net/Network;ZZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@5
    .line 2572
    :goto_0
    return-void

    #@6
    .line 2575
    :catch_0
    move-exception v0

    #@7
    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method public setAirplaneMode(Z)V
    .locals 2
    .param p1, "enable"    # Z

    #@0
    .prologue
    .line 1946
    :try_start_0
    iget-object v1, p0, Landroid/net/ConnectivityManager;->mService:Landroid/net/IConnectivityManager;

    #@2
    invoke-interface {v1, p1}, Landroid/net/IConnectivityManager;->setAirplaneMode(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@5
    .line 1944
    :goto_0
    return-void

    #@6
    .line 1947
    :catch_0
    move-exception v0

    #@7
    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method public setBackgroundDataSetting(Z)V
    .locals 0
    .param p1, "allowBackgroundData"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .line 1260
    return-void
.end method

.method public setGlobalProxy(Landroid/net/ProxyInfo;)V
    .locals 2
    .param p1, "p"    # Landroid/net/ProxyInfo;

    #@0
    .prologue
    .line 1772
    :try_start_0
    iget-object v1, p0, Landroid/net/ConnectivityManager;->mService:Landroid/net/IConnectivityManager;

    #@2
    invoke-interface {v1, p1}, Landroid/net/IConnectivityManager;->setGlobalProxy(Landroid/net/ProxyInfo;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@5
    .line 1770
    :goto_0
    return-void

    #@6
    .line 1773
    :catch_0
    move-exception v0

    #@7
    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method public setNetworkPreference(I)V
    .locals 0
    .param p1, "preference"    # I

    #@0
    .prologue
    .line 613
    return-void
.end method

.method public setProvisioningNotificationVisible(ZILjava/lang/String;)V
    .locals 2
    .param p1, "visible"    # Z
    .param p2, "networkType"    # I
    .param p3, "action"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1930
    :try_start_0
    iget-object v1, p0, Landroid/net/ConnectivityManager;->mService:Landroid/net/IConnectivityManager;

    #@2
    invoke-interface {v1, p1, p2, p3}, Landroid/net/IConnectivityManager;->setProvisioningNotificationVisible(ZILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@5
    .line 1928
    :goto_0
    return-void

    #@6
    .line 1931
    :catch_0
    move-exception v0

    #@7
    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method public setUsbTethering(Z)I
    .locals 2
    .param p1, "enable"    # Z

    #@0
    .prologue
    .line 1653
    :try_start_0
    iget-object v1, p0, Landroid/net/ConnectivityManager;->mService:Landroid/net/IConnectivityManager;

    #@2
    invoke-interface {v1, p1}, Landroid/net/IConnectivityManager;->setUsbTethering(Z)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@5
    move-result v1

    #@6
    return v1

    #@7
    .line 1654
    :catch_0
    move-exception v0

    #@8
    .line 1655
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x2

    #@9
    return v1
.end method

.method public startUsingNetworkFeature(ILjava/lang/String;)I
    .locals 8
    .param p1, "networkType"    # I
    .param p2, "feature"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v6, 0x3

    #@1
    const/4 v7, 0x1

    #@2
    .line 903
    invoke-direct {p0}, Landroid/net/ConnectivityManager;->checkLegacyRoutingApiAccess()V

    #@5
    .line 904
    invoke-direct {p0, p1, p2}, Landroid/net/ConnectivityManager;->networkCapabilitiesForFeature(ILjava/lang/String;)Landroid/net/NetworkCapabilities;

    #@8
    move-result-object v1

    #@9
    .line 905
    .local v1, "netCap":Landroid/net/NetworkCapabilities;
    if-nez v1, :cond_0

    #@b
    .line 906
    const-string/jumbo v3, "ConnectivityManager"

    #@e
    new-instance v4, Ljava/lang/StringBuilder;

    #@10
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@13
    const-string/jumbo v5, "Can\'t satisfy startUsingNetworkFeature for "

    #@16
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@19
    move-result-object v4

    #@1a
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@1d
    move-result-object v4

    #@1e
    const-string/jumbo v5, ", "

    #@21
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@24
    move-result-object v4

    #@25
    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@28
    move-result-object v4

    #@29
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2c
    move-result-object v4

    #@2d
    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@30
    .line 908
    return v6

    #@31
    .line 911
    :cond_0
    const/4 v2, 0x0

    #@32
    .line 912
    .local v2, "request":Landroid/net/NetworkRequest;
    sget-object v4, Landroid/net/ConnectivityManager;->sLegacyRequests:Ljava/util/HashMap;

    #@34
    monitor-enter v4

    #@35
    .line 913
    :try_start_0
    sget-object v3, Landroid/net/ConnectivityManager;->sLegacyRequests:Ljava/util/HashMap;

    #@37
    invoke-virtual {v3, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@3a
    move-result-object v0

    #@3b
    check-cast v0, Landroid/net/ConnectivityManager$LegacyRequest;

    #@3d
    .line 914
    .local v0, "l":Landroid/net/ConnectivityManager$LegacyRequest;
    if-eqz v0, :cond_2

    #@3f
    .line 915
    const-string/jumbo v3, "ConnectivityManager"

    #@42
    new-instance v5, Ljava/lang/StringBuilder;

    #@44
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@47
    const-string/jumbo v6, "renewing startUsingNetworkFeature request "

    #@4a
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4d
    move-result-object v5

    #@4e
    iget-object v6, v0, Landroid/net/ConnectivityManager$LegacyRequest;->networkRequest:Landroid/net/NetworkRequest;

    #@50
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@53
    move-result-object v5

    #@54
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@57
    move-result-object v5

    #@58
    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@5b
    .line 916
    invoke-direct {p0, v0}, Landroid/net/ConnectivityManager;->renewRequestLocked(Landroid/net/ConnectivityManager$LegacyRequest;)V

    #@5e
    .line 917
    iget-object v3, v0, Landroid/net/ConnectivityManager$LegacyRequest;->currentNetwork:Landroid/net/Network;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@60
    if-eqz v3, :cond_1

    #@62
    .line 918
    const/4 v3, 0x0

    #@63
    monitor-exit v4

    #@64
    return v3

    #@65
    :cond_1
    monitor-exit v4

    #@66
    .line 920
    return v7

    #@67
    .line 924
    :cond_2
    :try_start_1
    invoke-direct {p0, v1}, Landroid/net/ConnectivityManager;->requestNetworkForFeatureLocked(Landroid/net/NetworkCapabilities;)Landroid/net/NetworkRequest;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@6a
    move-result-object v2

    #@6b
    .local v2, "request":Landroid/net/NetworkRequest;
    monitor-exit v4

    #@6c
    .line 926
    if-eqz v2, :cond_3

    #@6e
    .line 927
    const-string/jumbo v3, "ConnectivityManager"

    #@71
    new-instance v4, Ljava/lang/StringBuilder;

    #@73
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@76
    const-string/jumbo v5, "starting startUsingNetworkFeature for request "

    #@79
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@7c
    move-result-object v4

    #@7d
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@80
    move-result-object v4

    #@81
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@84
    move-result-object v4

    #@85
    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@88
    .line 928
    return v7

    #@89
    .line 912
    .end local v0    # "l":Landroid/net/ConnectivityManager$LegacyRequest;
    .local v2, "request":Landroid/net/NetworkRequest;
    :catchall_0
    move-exception v3

    #@8a
    monitor-exit v4

    #@8b
    throw v3

    #@8c
    .line 930
    .restart local v0    # "l":Landroid/net/ConnectivityManager$LegacyRequest;
    .local v2, "request":Landroid/net/NetworkRequest;
    :cond_3
    const-string/jumbo v3, "ConnectivityManager"

    #@8f
    const-string/jumbo v4, " request Failed"

    #@92
    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@95
    .line 931
    return v6
.end method

.method public stopUsingNetworkFeature(ILjava/lang/String;)I
    .locals 4
    .param p1, "networkType"    # I
    .param p2, "feature"    # Ljava/lang/String;

    #@0
    .prologue
    .line 953
    invoke-direct {p0}, Landroid/net/ConnectivityManager;->checkLegacyRoutingApiAccess()V

    #@3
    .line 954
    invoke-direct {p0, p1, p2}, Landroid/net/ConnectivityManager;->networkCapabilitiesForFeature(ILjava/lang/String;)Landroid/net/NetworkCapabilities;

    #@6
    move-result-object v0

    #@7
    .line 955
    .local v0, "netCap":Landroid/net/NetworkCapabilities;
    if-nez v0, :cond_0

    #@9
    .line 956
    const-string/jumbo v1, "ConnectivityManager"

    #@c
    new-instance v2, Ljava/lang/StringBuilder;

    #@e
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@11
    const-string/jumbo v3, "Can\'t satisfy stopUsingNetworkFeature for "

    #@14
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@17
    move-result-object v2

    #@18
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@1b
    move-result-object v2

    #@1c
    const-string/jumbo v3, ", "

    #@1f
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@22
    move-result-object v2

    #@23
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@26
    move-result-object v2

    #@27
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2a
    move-result-object v2

    #@2b
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@2e
    .line 958
    const/4 v1, -0x1

    #@2f
    return v1

    #@30
    .line 961
    :cond_0
    invoke-direct {p0, v0}, Landroid/net/ConnectivityManager;->removeRequestForFeature(Landroid/net/NetworkCapabilities;)Z

    #@33
    move-result v1

    #@34
    if-eqz v1, :cond_1

    #@36
    .line 962
    const-string/jumbo v1, "ConnectivityManager"

    #@39
    new-instance v2, Ljava/lang/StringBuilder;

    #@3b
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@3e
    const-string/jumbo v3, "stopUsingNetworkFeature for "

    #@41
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@44
    move-result-object v2

    #@45
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@48
    move-result-object v2

    #@49
    const-string/jumbo v3, ", "

    #@4c
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4f
    move-result-object v2

    #@50
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@53
    move-result-object v2

    #@54
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@57
    move-result-object v2

    #@58
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@5b
    .line 964
    :cond_1
    const/4 v1, 0x1

    #@5c
    return v1
.end method

.method public tether(Ljava/lang/String;)I
    .locals 2
    .param p1, "iface"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1534
    :try_start_0
    iget-object v1, p0, Landroid/net/ConnectivityManager;->mService:Landroid/net/IConnectivityManager;

    #@2
    invoke-interface {v1, p1}, Landroid/net/IConnectivityManager;->tether(Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@5
    move-result v1

    #@6
    return v1

    #@7
    .line 1535
    :catch_0
    move-exception v0

    #@8
    .line 1536
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x2

    #@9
    return v1
.end method

.method public unregisterNetworkCallback(Landroid/app/PendingIntent;)V
    .locals 0
    .param p1, "operation"    # Landroid/app/PendingIntent;

    #@0
    .prologue
    .line 2552
    invoke-virtual {p0, p1}, Landroid/net/ConnectivityManager;->releaseNetworkRequest(Landroid/app/PendingIntent;)V

    #@3
    .line 2551
    return-void
.end method

.method public unregisterNetworkCallback(Landroid/net/ConnectivityManager$NetworkCallback;)V
    .locals 3
    .param p1, "networkCallback"    # Landroid/net/ConnectivityManager$NetworkCallback;

    #@0
    .prologue
    .line 2533
    if-eqz p1, :cond_0

    #@2
    invoke-static {p1}, Landroid/net/ConnectivityManager$NetworkCallback;->-get0(Landroid/net/ConnectivityManager$NetworkCallback;)Landroid/net/NetworkRequest;

    #@5
    move-result-object v1

    #@6
    if-nez v1, :cond_1

    #@8
    .line 2535
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    #@a
    const-string/jumbo v2, "Invalid NetworkCallback"

    #@d
    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@10
    throw v1

    #@11
    .line 2534
    :cond_1
    invoke-static {p1}, Landroid/net/ConnectivityManager$NetworkCallback;->-get0(Landroid/net/ConnectivityManager$NetworkCallback;)Landroid/net/NetworkRequest;

    #@14
    move-result-object v1

    #@15
    iget v1, v1, Landroid/net/NetworkRequest;->requestId:I

    #@17
    if-eqz v1, :cond_0

    #@19
    .line 2538
    :try_start_0
    iget-object v1, p0, Landroid/net/ConnectivityManager;->mService:Landroid/net/IConnectivityManager;

    #@1b
    invoke-static {p1}, Landroid/net/ConnectivityManager$NetworkCallback;->-get0(Landroid/net/ConnectivityManager$NetworkCallback;)Landroid/net/NetworkRequest;

    #@1e
    move-result-object v2

    #@1f
    invoke-interface {v1, v2}, Landroid/net/IConnectivityManager;->releaseNetworkRequest(Landroid/net/NetworkRequest;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@22
    .line 2532
    :goto_0
    return-void

    #@23
    .line 2539
    :catch_0
    move-exception v0

    #@24
    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method public unregisterNetworkFactory(Landroid/os/Messenger;)V
    .locals 2
    .param p1, "messenger"    # Landroid/os/Messenger;

    #@0
    .prologue
    .line 1961
    :try_start_0
    iget-object v1, p0, Landroid/net/ConnectivityManager;->mService:Landroid/net/IConnectivityManager;

    #@2
    invoke-interface {v1, p1}, Landroid/net/IConnectivityManager;->unregisterNetworkFactory(Landroid/os/Messenger;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@5
    .line 1959
    :goto_0
    return-void

    #@6
    .line 1962
    :catch_0
    move-exception v0

    #@7
    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method public untether(Ljava/lang/String;)I
    .locals 2
    .param p1, "iface"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1552
    :try_start_0
    iget-object v1, p0, Landroid/net/ConnectivityManager;->mService:Landroid/net/IConnectivityManager;

    #@2
    invoke-interface {v1, p1}, Landroid/net/IConnectivityManager;->untether(Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@5
    move-result v1

    #@6
    return v1

    #@7
    .line 1553
    :catch_0
    move-exception v0

    #@8
    .line 1554
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x2

    #@9
    return v1
.end method

.method public updateLockdownVpn()Z
    .locals 2

    #@0
    .prologue
    .line 1881
    :try_start_0
    iget-object v1, p0, Landroid/net/ConnectivityManager;->mService:Landroid/net/IConnectivityManager;

    #@2
    invoke-interface {v1}, Landroid/net/IConnectivityManager;->updateLockdownVpn()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@5
    move-result v1

    #@6
    return v1

    #@7
    .line 1882
    :catch_0
    move-exception v0

    #@8
    .line 1883
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    #@9
    return v1
.end method
