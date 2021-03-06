.class public Landroid/net/ConnectivityManager;
.super Ljava/lang/Object;
.source "ConnectivityManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/ConnectivityManager$CallbackHandler;,
        Landroid/net/ConnectivityManager$LegacyRequest;,
        Landroid/net/ConnectivityManager$NetworkCallback;,
        Landroid/net/ConnectivityManager$NoPreloadHolder;,
        Landroid/net/ConnectivityManager$OnNetworkActiveListener;,
        Landroid/net/ConnectivityManager$OnStartTetheringCallback;,
        Landroid/net/ConnectivityManager$PacketKeepalive;,
        Landroid/net/ConnectivityManager$PacketKeepaliveCallback;
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

.field public static final ACTION_PROMPT_LOST_VALIDATION:Ljava/lang/String; = "android.net.conn.PROMPT_LOST_VALIDATION"

.field public static final ACTION_PROMPT_UNVALIDATED:Ljava/lang/String; = "android.net.conn.PROMPT_UNVALIDATED"

.field public static final ACTION_RESTRICT_BACKGROUND_CHANGED:Ljava/lang/String; = "android.net.conn.RESTRICT_BACKGROUND_CHANGED"

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

.field public static final CONNECTIVITY_ACTION_SUPL:Ljava/lang/String; = "android.net.conn.CONNECTIVITY_CHANGE_SUPL"

.field public static final DEFAULT_NETWORK_PREFERENCE:I = 0x1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private static final EXPIRE_LEGACY_REQUEST:I = 0x8000a

.field public static final EXTRA_ACTIVE_TETHER:Ljava/lang/String; = "activeArray"

.field public static final EXTRA_ADD_TETHER_TYPE:Ljava/lang/String; = "extraAddTetherType"

.field public static final EXTRA_AVAILABLE_TETHER:Ljava/lang/String; = "availableArray"

.field public static final EXTRA_CAPTIVE_PORTAL:Ljava/lang/String; = "android.net.extra.CAPTIVE_PORTAL"

.field public static final EXTRA_CAPTIVE_PORTAL_URL:Ljava/lang/String; = "android.net.extra.CAPTIVE_PORTAL_URL"

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

.field public static final EXTRA_PROVISION_CALLBACK:Ljava/lang/String; = "extraProvisionCallback"

.field public static final EXTRA_REALTIME_NS:Ljava/lang/String; = "tsNanos"

.field public static final EXTRA_REASON:Ljava/lang/String; = "reason"

.field public static final EXTRA_REM_TETHER_TYPE:Ljava/lang/String; = "extraRemTetherType"

.field public static final EXTRA_RUN_PROVISION:Ljava/lang/String; = "extraRunProvision"

.field public static final EXTRA_SET_ALARM:Ljava/lang/String; = "extraSetAlarm"

.field public static final INET_CONDITION_ACTION:Ljava/lang/String; = "android.net.conn.INET_CONDITION_ACTION"

.field private static final LISTEN:I = 0x1

.field public static final MAX_NETWORK_REQUEST_TIMEOUT_MS:I = 0x5b8d80

.field public static final MAX_NETWORK_TYPE:I = 0x11

.field public static final MAX_RADIO_TYPE:I = 0x11

.field public static final NETID_UNSET:I = 0x0

.field private static final REQUEST:I = 0x2

.field public static final REQUEST_ID_UNSET:I = 0x0

.field public static final RESTRICT_BACKGROUND_STATUS_DISABLED:I = 0x1

.field public static final RESTRICT_BACKGROUND_STATUS_ENABLED:I = 0x3

.field public static final RESTRICT_BACKGROUND_STATUS_WHITELISTED:I = 0x2

.field private static final TAG:Ljava/lang/String; = "ConnectivityManager"

.field public static final TETHERING_BLUETOOTH:I = 0x2

.field public static final TETHERING_INVALID:I = -0x1

.field public static final TETHERING_USB:I = 0x1

.field public static final TETHERING_WIFI:I = 0x0

.field public static final TETHER_ERROR_DISABLE_NAT_ERROR:I = 0x9

.field public static final TETHER_ERROR_ENABLE_NAT_ERROR:I = 0x8

.field public static final TETHER_ERROR_IFACE_CFG_ERROR:I = 0xa

.field public static final TETHER_ERROR_MASTER_ERROR:I = 0x5

.field public static final TETHER_ERROR_NO_ERROR:I = 0x0

.field public static final TETHER_ERROR_PROVISION_FAILED:I = 0xb

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

.field private mNPManager:Landroid/net/INetworkPolicyManager;

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
.method static synthetic -get0(Landroid/net/ConnectivityManager;)Landroid/net/IConnectivityManager;
    .locals 1

    #@0
    iget-object v0, p0, Landroid/net/ConnectivityManager;->mService:Landroid/net/IConnectivityManager;

    #@2
    return-object v0
.end method

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
    .line 1386
    new-instance v0, Ljava/util/HashMap;

    #@2
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    #@5
    .line 1385
    sput-object v0, Landroid/net/ConnectivityManager;->sLegacyRequests:Ljava/util/HashMap;

    #@7
    .line 2826
    new-instance v0, Ljava/util/HashMap;

    #@9
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    #@c
    .line 2825
    sput-object v0, Landroid/net/ConnectivityManager;->sNetworkCallback:Ljava/util/HashMap;

    #@e
    .line 2827
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    #@10
    const/4 v1, 0x0

    #@11
    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    #@14
    sput-object v0, Landroid/net/ConnectivityManager;->sCallbackRefCount:Ljava/util/concurrent/atomic/AtomicInteger;

    #@16
    .line 2828
    const/4 v0, 0x0

    #@17
    sput-object v0, Landroid/net/ConnectivityManager;->sCallbackHandler:Landroid/net/ConnectivityManager$CallbackHandler;

    #@19
    .line 81
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/net/IConnectivityManager;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "service"    # Landroid/net/IConnectivityManager;

    #@0
    .prologue
    .line 1817
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 1750
    new-instance v0, Landroid/util/ArrayMap;

    #@5
    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    #@8
    .line 1749
    iput-object v0, p0, Landroid/net/ConnectivityManager;->mNetworkActivityListeners:Landroid/util/ArrayMap;

    #@a
    .line 1818
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
    .line 1819
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
    .line 1820
    sput-object p0, Landroid/net/ConnectivityManager;->sInstance:Landroid/net/ConnectivityManager;

    #@22
    .line 1817
    return-void
.end method

.method public static final checkChangePermission(Landroid/content/Context;)Z
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    #@0
    .prologue
    .line 1833
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    #@3
    move-result v0

    #@4
    .line 1834
    .local v0, "uid":I
    invoke-static {p0, v0}, Landroid/provider/Settings;->getPackageNameForUid(Landroid/content/Context;I)Ljava/lang/String;

    #@7
    move-result-object v1

    #@8
    .line 1835
    const/4 v2, 0x0

    #@9
    .line 1834
    invoke-static {p0, v0, v1, v2}, Landroid/provider/Settings;->checkAndNoteChangeNetworkStateOperation(Landroid/content/Context;ILjava/lang/String;Z)Z

    #@c
    move-result v1

    #@d
    return v1
.end method

.method private checkLegacyRoutingApiAccess()V
    .locals 2

    #@0
    .prologue
    .line 3360
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
    .line 3362
    return-void

    #@c
    .line 3365
    :cond_0
    const/16 v0, 0x17

    #@e
    invoke-direct {p0, v0}, Landroid/net/ConnectivityManager;->unsupportedStartingFrom(I)V

    #@11
    .line 3359
    return-void
.end method

.method private checkPendingIntent(Landroid/app/PendingIntent;)V
    .locals 2
    .param p1, "intent"    # Landroid/app/PendingIntent;

    #@0
    .prologue
    .line 3048
    if-nez p1, :cond_0

    #@2
    .line 3049
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@4
    const-string/jumbo v1, "PendingIntent cannot be null."

    #@7
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@a
    throw v0

    #@b
    .line 3047
    :cond_0
    return-void
.end method

.method private decCallbackHandlerRefCount()V
    .locals 3

    #@0
    .prologue
    .line 2817
    sget-object v1, Landroid/net/ConnectivityManager;->sCallbackRefCount:Ljava/util/concurrent/atomic/AtomicInteger;

    #@2
    monitor-enter v1

    #@3
    .line 2818
    :try_start_0
    sget-object v0, Landroid/net/ConnectivityManager;->sCallbackRefCount:Ljava/util/concurrent/atomic/AtomicInteger;

    #@5
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    #@8
    move-result v0

    #@9
    if-nez v0, :cond_0

    #@b
    .line 2819
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
    .line 2820
    const/4 v0, 0x0

    #@18
    sput-object v0, Landroid/net/ConnectivityManager;->sCallbackHandler:Landroid/net/ConnectivityManager$CallbackHandler;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1a
    :cond_0
    monitor-exit v1

    #@1b
    .line 2816
    return-void

    #@1c
    .line 2817
    :catchall_0
    move-exception v0

    #@1d
    monitor-exit v1

    #@1e
    throw v0
.end method

.method public static final enforceChangePermission(Landroid/content/Context;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    #@0
    .prologue
    .line 1840
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    #@3
    move-result v0

    #@4
    .line 1841
    .local v0, "uid":I
    invoke-static {p0, v0}, Landroid/provider/Settings;->getPackageNameForUid(Landroid/content/Context;I)Ljava/lang/String;

    #@7
    move-result-object v1

    #@8
    .line 1842
    const/4 v2, 0x1

    #@9
    .line 1841
    invoke-static {p0, v0, v1, v2}, Landroid/provider/Settings;->checkAndNoteChangeNetworkStateOperation(Landroid/content/Context;ILjava/lang/String;Z)Z

    #@c
    .line 1839
    return-void
.end method

.method public static final enforceTetherChangePermission(Landroid/content/Context;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    #@0
    .prologue
    .line 1847
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@3
    move-result-object v1

    #@4
    .line 1848
    const v2, 0x1070018

    #@7
    .line 1847
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    #@a
    move-result-object v1

    #@b
    array-length v1, v1

    #@c
    .line 1848
    const/4 v2, 0x2

    #@d
    .line 1847
    if-ne v1, v2, :cond_0

    #@f
    .line 1852
    const-string/jumbo v1, "android.permission.TETHER_PRIVILEGED"

    #@12
    const-string/jumbo v2, "ConnectivityService"

    #@15
    .line 1851
    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    #@18
    .line 1846
    :goto_0
    return-void

    #@19
    .line 1854
    :cond_0
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    #@1c
    move-result v0

    #@1d
    .line 1855
    .local v0, "uid":I
    invoke-static {p0, v0}, Landroid/provider/Settings;->getPackageNameForUid(Landroid/content/Context;I)Ljava/lang/String;

    #@20
    move-result-object v1

    #@21
    .line 1856
    const/4 v2, 0x1

    #@22
    .line 1855
    invoke-static {p0, v0, v1, v2}, Landroid/provider/Settings;->checkAndNoteWriteSettingsOperation(Landroid/content/Context;ILjava/lang/String;Z)Z

    #@25
    goto :goto_0
.end method

.method private expireRequest(Landroid/net/NetworkCapabilities;I)V
    .locals 5
    .param p1, "netCap"    # Landroid/net/NetworkCapabilities;
    .param p2, "sequenceNum"    # I

    #@0
    .prologue
    .line 1403
    const/4 v1, -0x1

    #@1
    .line 1404
    .local v1, "ourSeqNum":I
    sget-object v3, Landroid/net/ConnectivityManager;->sLegacyRequests:Ljava/util/HashMap;

    #@3
    monitor-enter v3

    #@4
    .line 1405
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
    .line 1406
    .local v0, "l":Landroid/net/ConnectivityManager$LegacyRequest;
    if-nez v0, :cond_0

    #@e
    monitor-exit v3

    #@f
    return-void

    #@10
    .line 1407
    :cond_0
    :try_start_1
    iget v1, v0, Landroid/net/ConnectivityManager$LegacyRequest;->expireSequenceNumber:I

    #@12
    .line 1408
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
    .line 1410
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
    .line 1402
    return-void

    #@40
    .line 1404
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
    .line 1389
    sget-object v2, Landroid/net/ConnectivityManager;->sLegacyRequests:Ljava/util/HashMap;

    #@3
    monitor-enter v2

    #@4
    .line 1390
    :try_start_0
    sget-object v1, Landroid/net/ConnectivityManager;->sLegacyRequests:Ljava/util/HashMap;

    #@6
    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@9
    move-result-object v0

    #@a
    check-cast v0, Landroid/net/ConnectivityManager$LegacyRequest;

    #@c
    .line 1391
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
    .line 1393
    return-object v3

    #@14
    .line 1389
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
    .line 1825
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
    .line 1875
    invoke-static {}, Landroid/net/ConnectivityManager;->getInstanceOrNull()Landroid/net/ConnectivityManager;

    #@3
    move-result-object v0

    #@4
    if-nez v0, :cond_0

    #@6
    .line 1876
    new-instance v0, Ljava/lang/IllegalStateException;

    #@8
    const-string/jumbo v1, "No ConnectivityManager yet constructed"

    #@b
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@e
    throw v0

    #@f
    .line 1878
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
    .line 1866
    sget-object v0, Landroid/net/ConnectivityManager;->sInstance:Landroid/net/ConnectivityManager;

    #@2
    return-object v0
.end method

.method private getNetworkManagementService()Landroid/os/INetworkManagementService;
    .locals 2

    #@0
    .prologue
    .line 1738
    monitor-enter p0

    #@1
    .line 1739
    :try_start_0
    iget-object v1, p0, Landroid/net/ConnectivityManager;->mNMService:Landroid/os/INetworkManagementService;

    #@3
    if-eqz v1, :cond_0

    #@5
    .line 1740
    iget-object v1, p0, Landroid/net/ConnectivityManager;->mNMService:Landroid/os/INetworkManagementService;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@7
    monitor-exit p0

    #@8
    return-object v1

    #@9
    .line 1742
    :cond_0
    :try_start_1
    const-string/jumbo v1, "network_management"

    #@c
    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    #@f
    move-result-object v0

    #@10
    .line 1743
    .local v0, "b":Landroid/os/IBinder;
    invoke-static {v0}, Landroid/os/INetworkManagementService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/INetworkManagementService;

    #@13
    move-result-object v1

    #@14
    iput-object v1, p0, Landroid/net/ConnectivityManager;->mNMService:Landroid/os/INetworkManagementService;

    #@16
    .line 1744
    iget-object v1, p0, Landroid/net/ConnectivityManager;->mNMService:Landroid/os/INetworkManagementService;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@18
    monitor-exit p0

    #@19
    return-object v1

    #@1a
    .line 1738
    .end local v0    # "b":Landroid/os/IBinder;
    :catchall_0
    move-exception v1

    #@1b
    monitor-exit p0

    #@1c
    throw v1
.end method

.method private getNetworkPolicyManager()Landroid/net/INetworkPolicyManager;
    .locals 1

    #@0
    .prologue
    .line 3429
    monitor-enter p0

    #@1
    .line 3430
    :try_start_0
    iget-object v0, p0, Landroid/net/ConnectivityManager;->mNPManager:Landroid/net/INetworkPolicyManager;

    #@3
    if-eqz v0, :cond_0

    #@5
    .line 3431
    iget-object v0, p0, Landroid/net/ConnectivityManager;->mNPManager:Landroid/net/INetworkPolicyManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@7
    monitor-exit p0

    #@8
    return-object v0

    #@9
    .line 3434
    :cond_0
    :try_start_1
    const-string/jumbo v0, "netpolicy"

    #@c
    .line 3433
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    #@f
    move-result-object v0

    #@10
    invoke-static {v0}, Landroid/net/INetworkPolicyManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/INetworkPolicyManager;

    #@13
    move-result-object v0

    #@14
    iput-object v0, p0, Landroid/net/ConnectivityManager;->mNPManager:Landroid/net/INetworkPolicyManager;

    #@16
    .line 3435
    iget-object v0, p0, Landroid/net/ConnectivityManager;->mNPManager:Landroid/net/INetworkPolicyManager;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@18
    monitor-exit p0

    #@19
    return-object v0

    #@1a
    .line 3429
    :catchall_0
    move-exception v0

    #@1b
    monitor-exit p0

    #@1c
    throw v0
.end method

.method public static getNetworkTypeName(I)Ljava/lang/String;
    .locals 1
    .param p0, "type"    # I

    #@0
    .prologue
    .line 618
    packed-switch p0, :pswitch_data_0

    #@3
    .line 656
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    #@6
    move-result-object v0

    #@7
    return-object v0

    #@8
    .line 620
    :pswitch_0
    const-string/jumbo v0, "MOBILE"

    #@b
    return-object v0

    #@c
    .line 622
    :pswitch_1
    const-string/jumbo v0, "WIFI"

    #@f
    return-object v0

    #@10
    .line 624
    :pswitch_2
    const-string/jumbo v0, "MOBILE_MMS"

    #@13
    return-object v0

    #@14
    .line 626
    :pswitch_3
    const-string/jumbo v0, "MOBILE_SUPL"

    #@17
    return-object v0

    #@18
    .line 628
    :pswitch_4
    const-string/jumbo v0, "MOBILE_DUN"

    #@1b
    return-object v0

    #@1c
    .line 630
    :pswitch_5
    const-string/jumbo v0, "MOBILE_HIPRI"

    #@1f
    return-object v0

    #@20
    .line 632
    :pswitch_6
    const-string/jumbo v0, "WIMAX"

    #@23
    return-object v0

    #@24
    .line 634
    :pswitch_7
    const-string/jumbo v0, "BLUETOOTH"

    #@27
    return-object v0

    #@28
    .line 636
    :pswitch_8
    const-string/jumbo v0, "DUMMY"

    #@2b
    return-object v0

    #@2c
    .line 638
    :pswitch_9
    const-string/jumbo v0, "ETHERNET"

    #@2f
    return-object v0

    #@30
    .line 640
    :pswitch_a
    const-string/jumbo v0, "MOBILE_FOTA"

    #@33
    return-object v0

    #@34
    .line 642
    :pswitch_b
    const-string/jumbo v0, "MOBILE_IMS"

    #@37
    return-object v0

    #@38
    .line 644
    :pswitch_c
    const-string/jumbo v0, "MOBILE_CBS"

    #@3b
    return-object v0

    #@3c
    .line 646
    :pswitch_d
    const-string/jumbo v0, "WIFI_P2P"

    #@3f
    return-object v0

    #@40
    .line 648
    :pswitch_e
    const-string/jumbo v0, "MOBILE_IA"

    #@43
    return-object v0

    #@44
    .line 650
    :pswitch_f
    const-string/jumbo v0, "MOBILE_EMERGENCY"

    #@47
    return-object v0

    #@48
    .line 652
    :pswitch_10
    const-string/jumbo v0, "PROXY"

    #@4b
    return-object v0

    #@4c
    .line 654
    :pswitch_11
    const-string/jumbo v0, "VPN"

    #@4f
    return-object v0

    #@50
    .line 618
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
    .line 3335
    invoke-static {}, Landroid/net/NetworkUtils;->getBoundNetworkForProcess()I

    #@3
    move-result v0

    #@4
    .line 3336
    .local v0, "netId":I
    if-nez v0, :cond_0

    #@6
    const/4 v1, 0x0

    #@7
    return-object v1

    #@8
    .line 3337
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
    .line 2805
    sget-object v7, Landroid/net/ConnectivityManager;->sCallbackRefCount:Ljava/util/concurrent/atomic/AtomicInteger;

    #@2
    monitor-enter v7

    #@3
    .line 2806
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
    .line 2808
    new-instance v6, Landroid/os/HandlerThread;

    #@e
    const-string/jumbo v0, "ConnectivityManager"

    #@11
    invoke-direct {v6, v0}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    #@14
    .line 2809
    .local v6, "callbackThread":Landroid/os/HandlerThread;
    invoke-virtual {v6}, Landroid/os/HandlerThread;->start()V

    #@17
    .line 2810
    new-instance v0, Landroid/net/ConnectivityManager$CallbackHandler;

    #@19
    invoke-virtual {v6}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    #@1c
    move-result-object v2

    #@1d
    .line 2811
    sget-object v3, Landroid/net/ConnectivityManager;->sNetworkCallback:Ljava/util/HashMap;

    #@1f
    sget-object v4, Landroid/net/ConnectivityManager;->sCallbackRefCount:Ljava/util/concurrent/atomic/AtomicInteger;

    #@21
    move-object v1, p0

    #@22
    move-object v5, p0

    #@23
    .line 2810
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
    .line 2804
    return-void

    #@2a
    .line 2805
    :catchall_0
    move-exception v0

    #@2b
    monitor-exit v7

    #@2c
    throw v0
.end method

.method private inferLegacyTypeForNetworkCapabilities(Landroid/net/NetworkCapabilities;)I
    .locals 7
    .param p1, "netCap"    # Landroid/net/NetworkCapabilities;

    #@0
    .prologue
    const/4 v6, 0x1

    #@1
    const/4 v5, 0x0

    #@2
    const/4 v4, -0x1

    #@3
    .line 1275
    if-nez p1, :cond_0

    #@5
    .line 1276
    return v4

    #@6
    .line 1279
    :cond_0
    invoke-virtual {p1, v5}, Landroid/net/NetworkCapabilities;->hasTransport(I)Z

    #@9
    move-result v3

    #@a
    if-nez v3, :cond_1

    #@c
    .line 1280
    return v4

    #@d
    .line 1284
    :cond_1
    invoke-virtual {p1, v6}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    #@10
    move-result v3

    #@11
    if-nez v3, :cond_2

    #@13
    .line 1288
    return v4

    #@14
    .line 1291
    :cond_2
    const/4 v2, 0x0

    #@15
    .line 1292
    .local v2, "type":Ljava/lang/String;
    const/4 v0, -0x1

    #@16
    .line 1294
    .local v0, "result":I
    const/4 v3, 0x5

    #@17
    invoke-virtual {p1, v3}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    #@1a
    move-result v3

    #@1b
    if-eqz v3, :cond_4

    #@1d
    .line 1295
    const-string/jumbo v2, "enableCBS"

    #@20
    .line 1296
    .local v2, "type":Ljava/lang/String;
    const/16 v0, 0xc

    #@22
    .line 1318
    .end local v2    # "type":Ljava/lang/String;
    :cond_3
    :goto_0
    if-eqz v2, :cond_9

    #@24
    .line 1319
    invoke-direct {p0, v5, v2}, Landroid/net/ConnectivityManager;->networkCapabilitiesForFeature(ILjava/lang/String;)Landroid/net/NetworkCapabilities;

    #@27
    move-result-object v1

    #@28
    .line 1320
    .local v1, "testCap":Landroid/net/NetworkCapabilities;
    invoke-virtual {v1, p1}, Landroid/net/NetworkCapabilities;->equalsNetCapabilities(Landroid/net/NetworkCapabilities;)Z

    #@2b
    move-result v3

    #@2c
    if-eqz v3, :cond_9

    #@2e
    invoke-virtual {v1, p1}, Landroid/net/NetworkCapabilities;->equalsTransportTypes(Landroid/net/NetworkCapabilities;)Z

    #@31
    move-result v3

    #@32
    if-eqz v3, :cond_9

    #@34
    .line 1321
    return v0

    #@35
    .line 1297
    .end local v1    # "testCap":Landroid/net/NetworkCapabilities;
    .local v2, "type":Ljava/lang/String;
    :cond_4
    const/4 v3, 0x4

    #@36
    invoke-virtual {p1, v3}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    #@39
    move-result v3

    #@3a
    if-eqz v3, :cond_5

    #@3c
    .line 1298
    const-string/jumbo v2, "enableIMS"

    #@3f
    .line 1299
    .local v2, "type":Ljava/lang/String;
    const/16 v0, 0xb

    #@41
    goto :goto_0

    #@42
    .line 1300
    .local v2, "type":Ljava/lang/String;
    :cond_5
    const/4 v3, 0x3

    #@43
    invoke-virtual {p1, v3}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    #@46
    move-result v3

    #@47
    if-eqz v3, :cond_6

    #@49
    .line 1301
    const-string/jumbo v2, "enableFOTA"

    #@4c
    .line 1302
    .local v2, "type":Ljava/lang/String;
    const/16 v0, 0xa

    #@4e
    goto :goto_0

    #@4f
    .line 1303
    .local v2, "type":Ljava/lang/String;
    :cond_6
    const/4 v3, 0x2

    #@50
    invoke-virtual {p1, v3}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    #@53
    move-result v3

    #@54
    if-eqz v3, :cond_7

    #@56
    .line 1304
    const-string/jumbo v2, "enableDUN"

    #@59
    .line 1305
    .local v2, "type":Ljava/lang/String;
    const/4 v0, 0x4

    #@5a
    goto :goto_0

    #@5b
    .line 1306
    .local v2, "type":Ljava/lang/String;
    :cond_7
    invoke-virtual {p1, v6}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    #@5e
    move-result v3

    #@5f
    if-eqz v3, :cond_8

    #@61
    .line 1307
    const-string/jumbo v2, "enableSUPL"

    #@64
    .line 1308
    .local v2, "type":Ljava/lang/String;
    const/4 v0, 0x3

    #@65
    goto :goto_0

    #@66
    .line 1314
    .local v2, "type":Ljava/lang/String;
    :cond_8
    const/16 v3, 0xc

    #@68
    invoke-virtual {p1, v3}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    #@6b
    move-result v3

    #@6c
    if-eqz v3, :cond_3

    #@6e
    .line 1315
    const-string/jumbo v2, "enableHIPRI"

    #@71
    .line 1316
    .local v2, "type":Ljava/lang/String;
    const/4 v0, 0x5

    #@72
    goto :goto_0

    #@73
    .line 1324
    .end local v2    # "type":Ljava/lang/String;
    :cond_9
    return v4
.end method

.method public static isNetworkTypeMobile(I)Z
    .locals 1
    .param p0, "networkType"    # I

    #@0
    .prologue
    .line 668
    packed-switch p0, :pswitch_data_0

    #@3
    .line 681
    :pswitch_0
    const/4 v0, 0x0

    #@4
    return v0

    #@5
    .line 679
    :pswitch_1
    const/4 v0, 0x1

    #@6
    return v0

    #@7
    .line 668
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
    .line 606
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
    .line 691
    sparse-switch p0, :sswitch_data_0

    #@3
    .line 696
    const/4 v0, 0x0

    #@4
    return v0

    #@5
    .line 694
    :sswitch_0
    const/4 v0, 0x1

    #@6
    return v0

    #@7
    .line 691
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
    .line 1328
    if-nez p1, :cond_0

    #@7
    return v1

    #@8
    .line 1329
    :cond_0
    invoke-virtual {p1, v5}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    #@b
    move-result v0

    #@c
    if-eqz v0, :cond_1

    #@e
    .line 1330
    const/16 v0, 0xc

    #@10
    return v0

    #@11
    .line 1332
    :cond_1
    invoke-virtual {p1, v4}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    #@14
    move-result v0

    #@15
    if-eqz v0, :cond_2

    #@17
    .line 1333
    const/16 v0, 0xb

    #@19
    return v0

    #@1a
    .line 1335
    :cond_2
    invoke-virtual {p1, v3}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    #@1d
    move-result v0

    #@1e
    if-eqz v0, :cond_3

    #@20
    .line 1336
    const/16 v0, 0xa

    #@22
    return v0

    #@23
    .line 1338
    :cond_3
    invoke-virtual {p1, v2}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    #@26
    move-result v0

    #@27
    if-eqz v0, :cond_4

    #@29
    .line 1339
    return v4

    #@2a
    .line 1341
    :cond_4
    const/4 v0, 0x1

    #@2b
    invoke-virtual {p1, v0}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    #@2e
    move-result v0

    #@2f
    if-eqz v0, :cond_5

    #@31
    .line 1342
    return v3

    #@32
    .line 1344
    :cond_5
    const/4 v0, 0x0

    #@33
    invoke-virtual {p1, v0}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    #@36
    move-result v0

    #@37
    if-eqz v0, :cond_6

    #@39
    .line 1345
    return v2

    #@3a
    .line 1347
    :cond_6
    const/16 v0, 0xc

    #@3c
    invoke-virtual {p1, v0}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    #@3f
    move-result v0

    #@40
    if-eqz v0, :cond_7

    #@42
    .line 1348
    return v5

    #@43
    .line 1350
    :cond_7
    const/4 v0, 0x6

    #@44
    invoke-virtual {p1, v0}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    #@47
    move-result v0

    #@48
    if-eqz v0, :cond_8

    #@4a
    .line 1351
    const/16 v0, 0xd

    #@4c
    return v0

    #@4d
    .line 1353
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
    .line 1214
    if-nez p1, :cond_8

    #@5
    .line 1215
    const/4 v0, -0x1

    #@6
    .line 1216
    .local v0, "cap":I
    const-string/jumbo v2, "enableMMS"

    #@9
    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@c
    move-result v2

    #@d
    if-eqz v2, :cond_0

    #@f
    .line 1217
    const/4 v0, 0x0

    #@10
    .line 1233
    :goto_0
    new-instance v1, Landroid/net/NetworkCapabilities;

    #@12
    invoke-direct {v1}, Landroid/net/NetworkCapabilities;-><init>()V

    #@15
    .line 1234
    .local v1, "netCap":Landroid/net/NetworkCapabilities;
    invoke-virtual {v1, v3}, Landroid/net/NetworkCapabilities;->addTransportType(I)Landroid/net/NetworkCapabilities;

    #@18
    move-result-object v2

    #@19
    invoke-virtual {v2, v0}, Landroid/net/NetworkCapabilities;->addCapability(I)Landroid/net/NetworkCapabilities;

    #@1c
    .line 1235
    invoke-virtual {v1}, Landroid/net/NetworkCapabilities;->maybeMarkCapabilitiesRestricted()V

    #@1f
    .line 1236
    return-object v1

    #@20
    .line 1218
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
    .line 1219
    const/4 v0, 0x1

    #@2a
    goto :goto_0

    #@2b
    .line 1220
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
    .line 1221
    :cond_2
    const/4 v0, 0x2

    #@3e
    goto :goto_0

    #@3f
    .line 1222
    :cond_3
    const-string/jumbo v2, "enableHIPRI"

    #@42
    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@45
    move-result v2

    #@46
    if-eqz v2, :cond_4

    #@48
    .line 1223
    const/16 v0, 0xc

    #@4a
    goto :goto_0

    #@4b
    .line 1224
    :cond_4
    const-string/jumbo v2, "enableFOTA"

    #@4e
    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@51
    move-result v2

    #@52
    if-eqz v2, :cond_5

    #@54
    .line 1225
    const/4 v0, 0x3

    #@55
    goto :goto_0

    #@56
    .line 1226
    :cond_5
    const-string/jumbo v2, "enableIMS"

    #@59
    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@5c
    move-result v2

    #@5d
    if-eqz v2, :cond_6

    #@5f
    .line 1227
    const/4 v0, 0x4

    #@60
    goto :goto_0

    #@61
    .line 1228
    :cond_6
    const-string/jumbo v2, "enableCBS"

    #@64
    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@67
    move-result v2

    #@68
    if-eqz v2, :cond_7

    #@6a
    .line 1229
    const/4 v0, 0x5

    #@6b
    goto :goto_0

    #@6c
    .line 1231
    :cond_7
    return-object v5

    #@6d
    .line 1237
    .end local v0    # "cap":I
    :cond_8
    if-ne p1, v4, :cond_9

    #@6f
    .line 1238
    const-string/jumbo v2, "p2p"

    #@72
    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@75
    move-result v2

    #@76
    if-eqz v2, :cond_9

    #@78
    .line 1239
    new-instance v1, Landroid/net/NetworkCapabilities;

    #@7a
    invoke-direct {v1}, Landroid/net/NetworkCapabilities;-><init>()V

    #@7d
    .line 1240
    .restart local v1    # "netCap":Landroid/net/NetworkCapabilities;
    invoke-virtual {v1, v4}, Landroid/net/NetworkCapabilities;->addTransportType(I)Landroid/net/NetworkCapabilities;

    #@80
    .line 1241
    const/4 v2, 0x6

    #@81
    invoke-virtual {v1, v2}, Landroid/net/NetworkCapabilities;->addCapability(I)Landroid/net/NetworkCapabilities;

    #@84
    .line 1242
    invoke-virtual {v1}, Landroid/net/NetworkCapabilities;->maybeMarkCapabilitiesRestricted()V

    #@87
    .line 1243
    return-object v1

    #@88
    .line 1246
    .end local v1    # "netCap":Landroid/net/NetworkCapabilities;
    :cond_9
    return-object v5
.end method

.method private removeRequestForFeature(Landroid/net/NetworkCapabilities;)Z
    .locals 3
    .param p1, "netCap"    # Landroid/net/NetworkCapabilities;

    #@0
    .prologue
    .line 1443
    sget-object v2, Landroid/net/ConnectivityManager;->sLegacyRequests:Ljava/util/HashMap;

    #@2
    monitor-enter v2

    #@3
    .line 1444
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
    .line 1446
    if-nez v0, :cond_0

    #@e
    const/4 v1, 0x0

    #@f
    return v1

    #@10
    .line 1443
    .end local v0    # "l":Landroid/net/ConnectivityManager$LegacyRequest;
    :catchall_0
    move-exception v1

    #@11
    monitor-exit v2

    #@12
    throw v1

    #@13
    .line 1447
    .restart local v0    # "l":Landroid/net/ConnectivityManager$LegacyRequest;
    :cond_0
    iget-object v1, v0, Landroid/net/ConnectivityManager$LegacyRequest;->networkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    #@15
    invoke-virtual {p0, v1}, Landroid/net/ConnectivityManager;->unregisterNetworkCallback(Landroid/net/ConnectivityManager$NetworkCallback;)V

    #@18
    .line 1448
    invoke-static {v0}, Landroid/net/ConnectivityManager$LegacyRequest;->-wrap0(Landroid/net/ConnectivityManager$LegacyRequest;)V

    #@1b
    .line 1449
    const/4 v1, 0x1

    #@1c
    return v1
.end method

.method private renewRequestLocked(Landroid/net/ConnectivityManager$LegacyRequest;)V
    .locals 3
    .param p1, "l"    # Landroid/net/ConnectivityManager$LegacyRequest;

    #@0
    .prologue
    .line 1397
    iget v0, p1, Landroid/net/ConnectivityManager$LegacyRequest;->expireSequenceNumber:I

    #@2
    add-int/lit8 v0, v0, 0x1

    #@4
    iput v0, p1, Landroid/net/ConnectivityManager$LegacyRequest;->expireSequenceNumber:I

    #@6
    .line 1398
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
    .line 1399
    iget-object v0, p1, Landroid/net/ConnectivityManager$LegacyRequest;->networkCapabilities:Landroid/net/NetworkCapabilities;

    #@24
    iget v1, p1, Landroid/net/ConnectivityManager$LegacyRequest;->expireSequenceNumber:I

    #@26
    iget v2, p1, Landroid/net/ConnectivityManager$LegacyRequest;->delay:I

    #@28
    invoke-direct {p0, v0, v1, v2}, Landroid/net/ConnectivityManager;->sendExpireMsgForFeature(Landroid/net/NetworkCapabilities;II)V

    #@2b
    .line 1396
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
    .line 1414
    const/4 v6, -0x1

    #@3
    .line 1415
    .local v6, "delay":I
    invoke-direct {p0, p1}, Landroid/net/ConnectivityManager;->legacyTypeForNetworkCapabilities(Landroid/net/NetworkCapabilities;)I

    #@6
    move-result v5

    #@7
    .line 1417
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
    .line 1421
    new-instance v8, Landroid/net/ConnectivityManager$LegacyRequest;

    #@f
    invoke-direct {v8, v9}, Landroid/net/ConnectivityManager$LegacyRequest;-><init>(Landroid/net/ConnectivityManager$LegacyRequest;)V

    #@12
    .line 1422
    .local v8, "l":Landroid/net/ConnectivityManager$LegacyRequest;
    iput-object p1, v8, Landroid/net/ConnectivityManager$LegacyRequest;->networkCapabilities:Landroid/net/NetworkCapabilities;

    #@14
    .line 1423
    iput v6, v8, Landroid/net/ConnectivityManager$LegacyRequest;->delay:I

    #@16
    .line 1424
    iput v3, v8, Landroid/net/ConnectivityManager$LegacyRequest;->expireSequenceNumber:I

    #@18
    .line 1425
    iget-object v2, v8, Landroid/net/ConnectivityManager$LegacyRequest;->networkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    #@1a
    .line 1426
    const/4 v4, 0x2

    #@1b
    move-object v0, p0

    #@1c
    move-object v1, p1

    #@1d
    .line 1425
    invoke-direct/range {v0 .. v5}, Landroid/net/ConnectivityManager;->sendRequestForNetwork(Landroid/net/NetworkCapabilities;Landroid/net/ConnectivityManager$NetworkCallback;III)Landroid/net/NetworkRequest;

    #@20
    move-result-object v0

    #@21
    iput-object v0, v8, Landroid/net/ConnectivityManager$LegacyRequest;->networkRequest:Landroid/net/NetworkRequest;

    #@23
    .line 1427
    iget-object v0, v8, Landroid/net/ConnectivityManager$LegacyRequest;->networkRequest:Landroid/net/NetworkRequest;

    #@25
    if-nez v0, :cond_0

    #@27
    return-object v9

    #@28
    .line 1418
    .end local v8    # "l":Landroid/net/ConnectivityManager$LegacyRequest;
    :catch_0
    move-exception v7

    #@29
    .line 1419
    .local v7, "e":Landroid/os/RemoteException;
    invoke-virtual {v7}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    #@2c
    move-result-object v0

    #@2d
    throw v0

    #@2e
    .line 1428
    .end local v7    # "e":Landroid/os/RemoteException;
    .restart local v8    # "l":Landroid/net/ConnectivityManager$LegacyRequest;
    :cond_0
    sget-object v0, Landroid/net/ConnectivityManager;->sLegacyRequests:Ljava/util/HashMap;

    #@30
    invoke-virtual {v0, p1, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@33
    .line 1429
    iget v0, v8, Landroid/net/ConnectivityManager$LegacyRequest;->expireSequenceNumber:I

    #@35
    invoke-direct {p0, p1, v0, v6}, Landroid/net/ConnectivityManager;->sendExpireMsgForFeature(Landroid/net/NetworkCapabilities;II)V

    #@38
    .line 1430
    iget-object v0, v8, Landroid/net/ConnectivityManager$LegacyRequest;->networkRequest:Landroid/net/NetworkRequest;

    #@3a
    return-object v0
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
    .line 1434
    if-ltz p3, :cond_0

    #@3
    .line 1435
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
    .line 1436
    sget-object v1, Landroid/net/ConnectivityManager;->sCallbackHandler:Landroid/net/ConnectivityManager$CallbackHandler;

    #@2a
    const v2, 0x8000a

    #@2d
    invoke-virtual {v1, v2, p2, v4, p1}, Landroid/net/ConnectivityManager$CallbackHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    #@30
    move-result-object v0

    #@31
    .line 1437
    .local v0, "msg":Landroid/os/Message;
    sget-object v1, Landroid/net/ConnectivityManager;->sCallbackHandler:Landroid/net/ConnectivityManager$CallbackHandler;

    #@33
    int-to-long v2, p3

    #@34
    invoke-virtual {v1, v0, v2, v3}, Landroid/net/ConnectivityManager$CallbackHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    #@37
    .line 1433
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
    .line 2836
    if-nez p2, :cond_0

    #@2
    .line 2837
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@4
    const-string/jumbo v1, "null NetworkCallback"

    #@7
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@a
    throw v0

    #@b
    .line 2839
    :cond_0
    if-nez p1, :cond_1

    #@d
    const/4 v0, 0x2

    #@e
    if-eq p4, v0, :cond_1

    #@10
    .line 2840
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@12
    const-string/jumbo v1, "null NetworkCapabilities"

    #@15
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@18
    throw v0

    #@19
    .line 2843
    :cond_1
    :try_start_0
    invoke-direct {p0}, Landroid/net/ConnectivityManager;->incCallbackHandlerRefCount()V

    #@1c
    .line 2844
    sget-object v7, Landroid/net/ConnectivityManager;->sNetworkCallback:Ljava/util/HashMap;

    #@1e
    monitor-enter v7
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@1f
    .line 2845
    const/4 v0, 0x1

    #@20
    if-ne p4, v0, :cond_4

    #@22
    .line 2846
    :try_start_1
    iget-object v0, p0, Landroid/net/ConnectivityManager;->mService:Landroid/net/IConnectivityManager;

    #@24
    .line 2847
    new-instance v1, Landroid/os/Messenger;

    #@26
    sget-object v2, Landroid/net/ConnectivityManager;->sCallbackHandler:Landroid/net/ConnectivityManager$CallbackHandler;

    #@28
    invoke-direct {v1, v2}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    #@2b
    new-instance v2, Landroid/os/Binder;

    #@2d
    invoke-direct {v2}, Landroid/os/Binder;-><init>()V

    #@30
    .line 2846
    invoke-interface {v0, p1, v1, v2}, Landroid/net/IConnectivityManager;->listenForNetwork(Landroid/net/NetworkCapabilities;Landroid/os/Messenger;Landroid/os/IBinder;)Landroid/net/NetworkRequest;

    #@33
    move-result-object v0

    #@34
    invoke-static {p2, v0}, Landroid/net/ConnectivityManager$NetworkCallback;->-set0(Landroid/net/ConnectivityManager$NetworkCallback;Landroid/net/NetworkRequest;)Landroid/net/NetworkRequest;

    #@37
    .line 2852
    :goto_0
    invoke-static {p2}, Landroid/net/ConnectivityManager$NetworkCallback;->-get0(Landroid/net/ConnectivityManager$NetworkCallback;)Landroid/net/NetworkRequest;

    #@3a
    move-result-object v0

    #@3b
    if-eqz v0, :cond_2

    #@3d
    .line 2853
    sget-object v0, Landroid/net/ConnectivityManager;->sNetworkCallback:Ljava/util/HashMap;

    #@3f
    invoke-static {p2}, Landroid/net/ConnectivityManager$NetworkCallback;->-get0(Landroid/net/ConnectivityManager$NetworkCallback;)Landroid/net/NetworkRequest;

    #@42
    move-result-object v1

    #@43
    invoke-virtual {v0, v1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@46
    :cond_2
    :try_start_2
    monitor-exit v7
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    #@47
    .line 2859
    invoke-static {p2}, Landroid/net/ConnectivityManager$NetworkCallback;->-get0(Landroid/net/ConnectivityManager$NetworkCallback;)Landroid/net/NetworkRequest;

    #@4a
    move-result-object v0

    #@4b
    if-nez v0, :cond_3

    #@4d
    invoke-direct {p0}, Landroid/net/ConnectivityManager;->decCallbackHandlerRefCount()V

    #@50
    .line 2860
    :cond_3
    invoke-static {p2}, Landroid/net/ConnectivityManager$NetworkCallback;->-get0(Landroid/net/ConnectivityManager$NetworkCallback;)Landroid/net/NetworkRequest;

    #@53
    move-result-object v0

    #@54
    return-object v0

    #@55
    .line 2849
    :cond_4
    :try_start_3
    iget-object v0, p0, Landroid/net/ConnectivityManager;->mService:Landroid/net/IConnectivityManager;

    #@57
    .line 2850
    new-instance v2, Landroid/os/Messenger;

    #@59
    sget-object v1, Landroid/net/ConnectivityManager;->sCallbackHandler:Landroid/net/ConnectivityManager$CallbackHandler;

    #@5b
    invoke-direct {v2, v1}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    #@5e
    new-instance v4, Landroid/os/Binder;

    #@60
    invoke-direct {v4}, Landroid/os/Binder;-><init>()V

    #@63
    move-object v1, p1

    #@64
    move v3, p3

    #@65
    move v5, p5

    #@66
    .line 2849
    invoke-interface/range {v0 .. v5}, Landroid/net/IConnectivityManager;->requestNetwork(Landroid/net/NetworkCapabilities;Landroid/os/Messenger;ILandroid/os/IBinder;I)Landroid/net/NetworkRequest;

    #@69
    move-result-object v0

    #@6a
    invoke-static {p2, v0}, Landroid/net/ConnectivityManager$NetworkCallback;->-set0(Landroid/net/ConnectivityManager$NetworkCallback;Landroid/net/NetworkRequest;)Landroid/net/NetworkRequest;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@6d
    goto :goto_0

    #@6e
    .line 2844
    :catchall_0
    move-exception v0

    #@6f
    :try_start_4
    monitor-exit v7

    #@70
    throw v0
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_0

    #@71
    .line 2856
    :catch_0
    move-exception v6

    #@72
    .line 2857
    .local v6, "e":Landroid/os/RemoteException;
    invoke-virtual {v6}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    #@75
    move-result-object v0

    #@76
    throw v0
.end method

.method public static setProcessDefaultNetwork(Landroid/net/Network;)Z
    .locals 5
    .param p0, "network"    # Landroid/net/Network;

    #@0
    .prologue
    const/4 v4, 0x1

    #@1
    .line 3289
    if-nez p0, :cond_0

    #@3
    const/4 v1, 0x0

    #@4
    .line 3290
    .local v1, "netId":I
    :goto_0
    invoke-static {}, Landroid/net/NetworkUtils;->getBoundNetworkForProcess()I

    #@7
    move-result v2

    #@8
    if-ne v1, v2, :cond_1

    #@a
    .line 3291
    return v4

    #@b
    .line 3289
    .end local v1    # "netId":I
    :cond_0
    iget v1, p0, Landroid/net/Network;->netId:I

    #@d
    .restart local v1    # "netId":I
    goto :goto_0

    #@e
    .line 3293
    :cond_1
    invoke-static {v1}, Landroid/net/NetworkUtils;->bindProcessToNetwork(I)Z

    #@11
    move-result v2

    #@12
    if-eqz v2, :cond_2

    #@14
    .line 3297
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
    .line 3303
    :goto_1
    invoke-static {}, Ljava/net/InetAddress;->clearDnsCache()V

    #@22
    .line 3306
    invoke-static {}, Llibcore/net/event/NetworkEventDispatcher;->getInstance()Llibcore/net/event/NetworkEventDispatcher;

    #@25
    move-result-object v2

    #@26
    invoke-virtual {v2}, Llibcore/net/event/NetworkEventDispatcher;->onNetworkConfigurationChanged()V

    #@29
    .line 3307
    return v4

    #@2a
    .line 3298
    :catch_0
    move-exception v0

    #@2b
    .line 3300
    .local v0, "e":Ljava/lang/SecurityException;
    const-string/jumbo v2, "ConnectivityManager"

    #@2e
    const-string/jumbo v3, "Can\'t set proxy properties"

    #@31
    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@34
    goto :goto_1

    #@35
    .line 3309
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
    .line 3380
    if-nez p0, :cond_0

    #@2
    const/4 v0, 0x0

    #@3
    .line 3379
    :goto_0
    invoke-static {v0}, Landroid/net/NetworkUtils;->bindProcessToNetworkForHostResolution(I)Z

    #@6
    move-result v0

    #@7
    return v0

    #@8
    .line 3380
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
    .line 3341
    invoke-static {}, Landroid/os/Process;->myUid()I

    #@3
    move-result v0

    #@4
    const/16 v1, 0x3e8

    #@6
    if-ne v0, v1, :cond_0

    #@8
    .line 3344
    return-void

    #@9
    .line 3347
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
    .line 3348
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    #@15
    .line 3349
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
    .line 3348
    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    #@33
    throw v0

    #@34
    .line 3340
    :cond_1
    return-void
.end method

.method private static final whatToString(I)Ljava/lang/String;
    .locals 2
    .param p0, "what"    # I

    #@0
    .prologue
    .line 3480
    sget-object v0, Landroid/net/ConnectivityManager$NoPreloadHolder;->sMagicDecoderRing:Landroid/util/SparseArray;

    #@2
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    #@5
    move-result-object v1

    #@6
    invoke-virtual {v0, p0, v1}, Landroid/util/SparseArray;->get(ILjava/lang/Object;)Ljava/lang/Object;

    #@9
    move-result-object v0

    #@a
    check-cast v0, Ljava/lang/String;

    #@c
    return-object v0
.end method


# virtual methods
.method public addDefaultNetworkActiveListener(Landroid/net/ConnectivityManager$OnNetworkActiveListener;)V
    .locals 3
    .param p1, "l"    # Landroid/net/ConnectivityManager$OnNetworkActiveListener;

    #@0
    .prologue
    .line 1765
    new-instance v1, Landroid/net/ConnectivityManager$1;

    #@2
    invoke-direct {v1, p0, p1}, Landroid/net/ConnectivityManager$1;-><init>(Landroid/net/ConnectivityManager;Landroid/net/ConnectivityManager$OnNetworkActiveListener;)V

    #@5
    .line 1773
    .local v1, "rl":Landroid/os/INetworkActivityListener;
    :try_start_0
    invoke-direct {p0}, Landroid/net/ConnectivityManager;->getNetworkManagementService()Landroid/os/INetworkManagementService;

    #@8
    move-result-object v2

    #@9
    invoke-interface {v2, v1}, Landroid/os/INetworkManagementService;->registerNetworkActivityListener(Landroid/os/INetworkActivityListener;)V

    #@c
    .line 1774
    iget-object v2, p0, Landroid/net/ConnectivityManager;->mNetworkActivityListeners:Landroid/util/ArrayMap;

    #@e
    invoke-virtual {v2, p1, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@11
    .line 1764
    return-void

    #@12
    .line 1775
    :catch_0
    move-exception v0

    #@13
    .line 1776
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    #@16
    move-result-object v2

    #@17
    throw v2
.end method

.method public bindProcessToNetwork(Landroid/net/Network;)Z
    .locals 1
    .param p1, "network"    # Landroid/net/Network;

    #@0
    .prologue
    .line 3264
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
    .line 2450
    const/4 v1, -0x1

    #@1
    .line 2452
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
    .line 2456
    return v1

    #@8
    .line 2453
    :catch_0
    move-exception v0

    #@9
    .line 2454
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    #@c
    move-result-object v2

    #@d
    throw v2
.end method

.method public factoryReset()V
    .locals 2

    #@0
    .prologue
    .line 3237
    :try_start_0
    iget-object v1, p0, Landroid/net/ConnectivityManager;->mService:Landroid/net/IConnectivityManager;

    #@2
    invoke-interface {v1}, Landroid/net/IConnectivityManager;->factoryReset()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@5
    .line 3235
    return-void

    #@6
    .line 3238
    :catch_0
    move-exception v0

    #@7
    .line 3239
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    #@a
    move-result-object v1

    #@b
    throw v1
.end method

.method public getActiveLinkProperties()Landroid/net/LinkProperties;
    .locals 2

    #@0
    .prologue
    .line 999
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
    .line 1000
    :catch_0
    move-exception v0

    #@8
    .line 1001
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    #@b
    move-result-object v1

    #@c
    throw v1
.end method

.method public getActiveNetwork()Landroid/net/Network;
    .locals 2

    #@0
    .prologue
    .line 765
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
    .line 766
    :catch_0
    move-exception v0

    #@8
    .line 767
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    #@b
    move-result-object v1

    #@c
    throw v1
.end method

.method public getActiveNetworkForUid(I)Landroid/net/Network;
    .locals 1
    .param p1, "uid"    # I

    #@0
    .prologue
    .line 786
    const/4 v0, 0x0

    #@1
    invoke-virtual {p0, p1, v0}, Landroid/net/ConnectivityManager;->getActiveNetworkForUid(IZ)Landroid/net/Network;

    #@4
    move-result-object v0

    #@5
    return-object v0
.end method

.method public getActiveNetworkForUid(IZ)Landroid/net/Network;
    .locals 2
    .param p1, "uid"    # I
    .param p2, "ignoreBlocked"    # Z

    #@0
    .prologue
    .line 792
    :try_start_0
    iget-object v1, p0, Landroid/net/ConnectivityManager;->mService:Landroid/net/IConnectivityManager;

    #@2
    invoke-interface {v1, p1, p2}, Landroid/net/IConnectivityManager;->getActiveNetworkForUid(IZ)Landroid/net/Network;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@5
    move-result-object v1

    #@6
    return-object v1

    #@7
    .line 793
    :catch_0
    move-exception v0

    #@8
    .line 794
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    #@b
    move-result-object v1

    #@c
    throw v1
.end method

.method public getActiveNetworkInfo()Landroid/net/NetworkInfo;
    .locals 2

    #@0
    .prologue
    .line 745
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
    .line 746
    :catch_0
    move-exception v0

    #@8
    .line 747
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    #@b
    move-result-object v1

    #@c
    throw v1
.end method

.method public getActiveNetworkInfoForUid(I)Landroid/net/NetworkInfo;
    .locals 1
    .param p1, "uid"    # I

    #@0
    .prologue
    .line 855
    const/4 v0, 0x0

    #@1
    invoke-virtual {p0, p1, v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfoForUid(IZ)Landroid/net/NetworkInfo;

    #@4
    move-result-object v0

    #@5
    return-object v0
.end method

.method public getActiveNetworkInfoForUid(IZ)Landroid/net/NetworkInfo;
    .locals 2
    .param p1, "uid"    # I
    .param p2, "ignoreBlocked"    # Z

    #@0
    .prologue
    .line 861
    :try_start_0
    iget-object v1, p0, Landroid/net/ConnectivityManager;->mService:Landroid/net/IConnectivityManager;

    #@2
    invoke-interface {v1, p1, p2}, Landroid/net/IConnectivityManager;->getActiveNetworkInfoForUid(IZ)Landroid/net/NetworkInfo;
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
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    #@b
    move-result-object v1

    #@c
    throw v1
.end method

.method public getActiveNetworkQuotaInfo()Landroid/net/NetworkQuotaInfo;
    .locals 2

    #@0
    .prologue
    .line 1692
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
    .line 1693
    :catch_0
    move-exception v0

    #@8
    .line 1694
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    #@b
    move-result-object v1

    #@c
    throw v1
.end method

.method public getAllNetworkInfo()[Landroid/net/NetworkInfo;
    .locals 2

    #@0
    .prologue
    .line 931
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
    .line 932
    :catch_0
    move-exception v0

    #@8
    .line 933
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    #@b
    move-result-object v1

    #@c
    throw v1
.end method

.method public getAllNetworks()[Landroid/net/Network;
    .locals 2

    #@0
    .prologue
    .line 967
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
    .line 968
    :catch_0
    move-exception v0

    #@8
    .line 969
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    #@b
    move-result-object v1

    #@c
    throw v1
.end method

.method public getAlwaysOnVpnPackageForUser(I)Ljava/lang/String;
    .locals 2
    .param p1, "userId"    # I

    #@0
    .prologue
    .line 835
    :try_start_0
    iget-object v1, p0, Landroid/net/ConnectivityManager;->mService:Landroid/net/IConnectivityManager;

    #@2
    invoke-interface {v1, p1}, Landroid/net/IConnectivityManager;->getAlwaysOnVpnPackage(I)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@5
    move-result-object v1

    #@6
    return-object v1

    #@7
    .line 836
    :catch_0
    move-exception v0

    #@8
    .line 837
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    #@b
    move-result-object v1

    #@c
    throw v1
.end method

.method public getBackgroundDataSetting()Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .line 1662
    const/4 v0, 0x1

    #@1
    return v0
.end method

.method public getBoundNetworkForProcess()Landroid/net/Network;
    .locals 1

    #@0
    .prologue
    .line 3322
    invoke-static {}, Landroid/net/ConnectivityManager;->getProcessDefaultNetwork()Landroid/net/Network;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public getCaptivePortalServerUrl()Ljava/lang/String;
    .locals 2

    #@0
    .prologue
    .line 1115
    :try_start_0
    iget-object v1, p0, Landroid/net/ConnectivityManager;->mService:Landroid/net/IConnectivityManager;

    #@2
    invoke-interface {v1}, Landroid/net/IConnectivityManager;->getCaptivePortalServerUrl()Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@5
    move-result-object v1

    #@6
    return-object v1

    #@7
    .line 1116
    :catch_0
    move-exception v0

    #@8
    .line 1117
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    #@b
    move-result-object v1

    #@c
    throw v1
.end method

.method public getDefaultNetworkCapabilitiesForUser(I)[Landroid/net/NetworkCapabilities;
    .locals 2
    .param p1, "userId"    # I

    #@0
    .prologue
    .line 980
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
    .line 981
    :catch_0
    move-exception v0

    #@8
    .line 982
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    #@b
    move-result-object v1

    #@c
    throw v1
.end method

.method public getDefaultProxy()Landroid/net/ProxyInfo;
    .locals 1

    #@0
    .prologue
    .line 2375
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
    .line 2337
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
    .line 2338
    :catch_0
    move-exception v0

    #@8
    .line 2339
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    #@b
    move-result-object v1

    #@c
    throw v1
.end method

.method public getLastTetherError(Ljava/lang/String;)I
    .locals 2
    .param p1, "iface"    # Ljava/lang/String;

    #@0
    .prologue
    .line 2243
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
    .line 2244
    :catch_0
    move-exception v0

    #@8
    .line 2245
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    #@b
    move-result-object v1

    #@c
    throw v1
.end method

.method public getLinkProperties(I)Landroid/net/LinkProperties;
    .locals 2
    .param p1, "networkType"    # I

    #@0
    .prologue
    .line 1023
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
    .line 1024
    :catch_0
    move-exception v0

    #@8
    .line 1025
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    #@b
    move-result-object v1

    #@c
    throw v1
.end method

.method public getLinkProperties(Landroid/net/Network;)Landroid/net/LinkProperties;
    .locals 2
    .param p1, "network"    # Landroid/net/Network;

    #@0
    .prologue
    .line 1040
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
    .line 1041
    :catch_0
    move-exception v0

    #@8
    .line 1042
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    #@b
    move-result-object v1

    #@c
    throw v1
.end method

.method public getMobileDataEnabled()Z
    .locals 8

    #@0
    .prologue
    .line 1703
    const-string/jumbo v5, "phone"

    #@3
    invoke-static {v5}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    #@6
    move-result-object v0

    #@7
    .line 1704
    .local v0, "b":Landroid/os/IBinder;
    if-eqz v0, :cond_0

    #@9
    .line 1706
    :try_start_0
    invoke-static {v0}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    #@c
    move-result-object v2

    #@d
    .line 1707
    .local v2, "it":Lcom/android/internal/telephony/ITelephony;
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultDataSubscriptionId()I

    #@10
    move-result v4

    #@11
    .line 1708
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
    .line 1709
    invoke-interface {v2, v4}, Lcom/android/internal/telephony/ITelephony;->getDataEnabled(I)Z

    #@2e
    move-result v3

    #@2f
    .line 1710
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
    .line 1711
    const-string/jumbo v7, " retVal="

    #@45
    .line 1710
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
    .line 1712
    return v3

    #@55
    .line 1713
    .end local v2    # "it":Lcom/android/internal/telephony/ITelephony;
    .end local v3    # "retVal":Z
    .end local v4    # "subId":I
    :catch_0
    move-exception v1

    #@56
    .line 1714
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    #@59
    move-result-object v5

    #@5a
    throw v5

    #@5b
    .line 1717
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_0
    const-string/jumbo v5, "ConnectivityManager"

    #@5e
    const-string/jumbo v6, "getMobileDataEnabled()- remote exception retVal=false"

    #@61
    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@64
    .line 1718
    const/4 v5, 0x0

    #@65
    return v5
.end method

.method public getMobileProvisioningUrl()Ljava/lang/String;
    .locals 2

    #@0
    .prologue
    .line 2465
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
    .line 2466
    :catch_0
    move-exception v0

    #@8
    .line 2467
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    #@b
    move-result-object v1

    #@c
    throw v1
.end method

.method public getNetworkCapabilities(Landroid/net/Network;)Landroid/net/NetworkCapabilities;
    .locals 2
    .param p1, "network"    # Landroid/net/Network;

    #@0
    .prologue
    .line 1077
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
    .line 1078
    :catch_0
    move-exception v0

    #@8
    .line 1079
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    #@b
    move-result-object v1

    #@c
    throw v1
.end method

.method public getNetworkForType(I)Landroid/net/Network;
    .locals 2
    .param p1, "networkType"    # I

    #@0
    .prologue
    .line 951
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
    .line 952
    :catch_0
    move-exception v0

    #@8
    .line 953
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    #@b
    move-result-object v1

    #@c
    throw v1
.end method

.method public getNetworkInfo(I)Landroid/net/NetworkInfo;
    .locals 2
    .param p1, "networkType"    # I

    #@0
    .prologue
    .line 885
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
    .line 886
    :catch_0
    move-exception v0

    #@8
    .line 887
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    #@b
    move-result-object v1

    #@c
    throw v1
.end method

.method public getNetworkInfo(Landroid/net/Network;)Landroid/net/NetworkInfo;
    .locals 2
    .param p1, "network"    # Landroid/net/Network;

    #@0
    .prologue
    .line 904
    invoke-static {}, Landroid/os/Process;->myUid()I

    #@3
    move-result v0

    #@4
    const/4 v1, 0x0

    #@5
    invoke-virtual {p0, p1, v0, v1}, Landroid/net/ConnectivityManager;->getNetworkInfoForUid(Landroid/net/Network;IZ)Landroid/net/NetworkInfo;

    #@8
    move-result-object v0

    #@9
    return-object v0
.end method

.method public getNetworkInfoForUid(Landroid/net/Network;IZ)Landroid/net/NetworkInfo;
    .locals 2
    .param p1, "network"    # Landroid/net/Network;
    .param p2, "uid"    # I
    .param p3, "ignoreBlocked"    # Z

    #@0
    .prologue
    .line 910
    :try_start_0
    iget-object v1, p0, Landroid/net/ConnectivityManager;->mService:Landroid/net/IConnectivityManager;

    #@2
    invoke-interface {v1, p1, p2, p3}, Landroid/net/IConnectivityManager;->getNetworkInfoForUid(Landroid/net/Network;IZ)Landroid/net/NetworkInfo;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@5
    move-result-object v1

    #@6
    return-object v1

    #@7
    .line 911
    :catch_0
    move-exception v0

    #@8
    .line 912
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    #@b
    move-result-object v1

    #@c
    throw v1
.end method

.method public getNetworkPreference()I
    .locals 1

    #@0
    .prologue
    .line 728
    const/4 v0, -0x1

    #@1
    return v0
.end method

.method public getProxyForNetwork(Landroid/net/Network;)Landroid/net/ProxyInfo;
    .locals 2
    .param p1, "network"    # Landroid/net/Network;

    #@0
    .prologue
    .line 2359
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
    .line 2360
    :catch_0
    move-exception v0

    #@8
    .line 2361
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    #@b
    move-result-object v1

    #@c
    throw v1
.end method

.method public getRestrictBackgroundStatus()I
    .locals 2

    #@0
    .prologue
    .line 3449
    :try_start_0
    invoke-direct {p0}, Landroid/net/ConnectivityManager;->getNetworkPolicyManager()Landroid/net/INetworkPolicyManager;

    #@3
    move-result-object v1

    #@4
    invoke-interface {v1}, Landroid/net/INetworkPolicyManager;->getRestrictBackgroundByCaller()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@7
    move-result v1

    #@8
    return v1

    #@9
    .line 3450
    :catch_0
    move-exception v0

    #@a
    .line 3451
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    #@d
    move-result-object v1

    #@e
    throw v1
.end method

.method public getTetherableBluetoothRegexs()[Ljava/lang/String;
    .locals 2

    #@0
    .prologue
    .line 2173
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
    .line 2174
    :catch_0
    move-exception v0

    #@8
    .line 2175
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    #@b
    move-result-object v1

    #@c
    throw v1
.end method

.method public getTetherableIfaces()[Ljava/lang/String;
    .locals 2

    #@0
    .prologue
    .line 1893
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
    .line 1894
    :catch_0
    move-exception v0

    #@8
    .line 1895
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    #@b
    move-result-object v1

    #@c
    throw v1
.end method

.method public getTetherableUsbRegexs()[Ljava/lang/String;
    .locals 2

    #@0
    .prologue
    .line 2133
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
    .line 2134
    :catch_0
    move-exception v0

    #@8
    .line 2135
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    #@b
    move-result-object v1

    #@c
    throw v1
.end method

.method public getTetherableWifiRegexs()[Ljava/lang/String;
    .locals 2

    #@0
    .prologue
    .line 2153
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
    .line 2154
    :catch_0
    move-exception v0

    #@8
    .line 2155
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    #@b
    move-result-object v1

    #@c
    throw v1
.end method

.method public getTetheredDhcpRanges()[Ljava/lang/String;
    .locals 2

    #@0
    .prologue
    .line 1947
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
    .line 1948
    :catch_0
    move-exception v0

    #@8
    .line 1949
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    #@b
    move-result-object v1

    #@c
    throw v1
.end method

.method public getTetheredIfaces()[Ljava/lang/String;
    .locals 2

    #@0
    .prologue
    .line 1910
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
    .line 1911
    :catch_0
    move-exception v0

    #@8
    .line 1912
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    #@b
    move-result-object v1

    #@c
    throw v1
.end method

.method public getTetheringErroredIfaces()[Ljava/lang/String;
    .locals 2

    #@0
    .prologue
    .line 1933
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
    .line 1934
    :catch_0
    move-exception v0

    #@8
    .line 1935
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    #@b
    move-result-object v1

    #@c
    throw v1
.end method

.method public isActiveNetworkMetered()Z
    .locals 2

    #@0
    .prologue
    .line 2416
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
    .line 2417
    :catch_0
    move-exception v0

    #@8
    .line 2418
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    #@b
    move-result-object v1

    #@c
    throw v1
.end method

.method public isDefaultNetworkActive()Z
    .locals 2

    #@0
    .prologue
    .line 1808
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
    .line 1809
    :catch_0
    move-exception v0

    #@a
    .line 1810
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    #@d
    move-result-object v1

    #@e
    throw v1
.end method

.method public isNetworkSupported(I)Z
    .locals 2
    .param p1, "networkType"    # I

    #@0
    .prologue
    .line 2395
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
    .line 2396
    :catch_0
    move-exception v0

    #@8
    .line 2397
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    #@b
    move-result-object v1

    #@c
    throw v1
.end method

.method public isTetheringSupported()Z
    .locals 2

    #@0
    .prologue
    .line 2025
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
    .line 2026
    :catch_0
    move-exception v0

    #@8
    .line 2027
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    #@b
    move-result-object v1

    #@c
    throw v1
.end method

.method public registerDefaultNetworkCallback(Landroid/net/ConnectivityManager$NetworkCallback;)V
    .locals 6
    .param p1, "networkCallback"    # Landroid/net/ConnectivityManager$NetworkCallback;

    #@0
    .prologue
    .line 3126
    const/4 v1, 0x0

    #@1
    const/4 v3, 0x0

    #@2
    const/4 v4, 0x2

    #@3
    const/4 v5, -0x1

    #@4
    move-object v0, p0

    #@5
    move-object v2, p1

    #@6
    invoke-direct/range {v0 .. v5}, Landroid/net/ConnectivityManager;->sendRequestForNetwork(Landroid/net/NetworkCapabilities;Landroid/net/ConnectivityManager$NetworkCallback;III)Landroid/net/NetworkRequest;

    #@9
    .line 3118
    return-void
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
    .line 2532
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
    .line 2533
    :catch_0
    move-exception v7

    #@e
    .line 2534
    .local v7, "e":Landroid/os/RemoteException;
    invoke-virtual {v7}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    #@11
    move-result-object v0

    #@12
    throw v0
.end method

.method public registerNetworkCallback(Landroid/net/NetworkRequest;Landroid/app/PendingIntent;)V
    .locals 3
    .param p1, "request"    # Landroid/net/NetworkRequest;
    .param p2, "operation"    # Landroid/app/PendingIntent;

    #@0
    .prologue
    .line 3100
    invoke-direct {p0, p2}, Landroid/net/ConnectivityManager;->checkPendingIntent(Landroid/app/PendingIntent;)V

    #@3
    .line 3102
    :try_start_0
    iget-object v1, p0, Landroid/net/ConnectivityManager;->mService:Landroid/net/IConnectivityManager;

    #@5
    iget-object v2, p1, Landroid/net/NetworkRequest;->networkCapabilities:Landroid/net/NetworkCapabilities;

    #@7
    invoke-interface {v1, v2, p2}, Landroid/net/IConnectivityManager;->pendingListenForNetwork(Landroid/net/NetworkCapabilities;Landroid/app/PendingIntent;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@a
    .line 3099
    return-void

    #@b
    .line 3103
    :catch_0
    move-exception v0

    #@c
    .line 3104
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    #@f
    move-result-object v1

    #@10
    throw v1
.end method

.method public registerNetworkCallback(Landroid/net/NetworkRequest;Landroid/net/ConnectivityManager$NetworkCallback;)V
    .locals 6
    .param p1, "request"    # Landroid/net/NetworkRequest;
    .param p2, "networkCallback"    # Landroid/net/ConnectivityManager$NetworkCallback;

    #@0
    .prologue
    .line 3065
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
    .line 3064
    return-void
.end method

.method public registerNetworkFactory(Landroid/os/Messenger;Ljava/lang/String;)V
    .locals 2
    .param p1, "messenger"    # Landroid/os/Messenger;
    .param p2, "name"    # Ljava/lang/String;

    #@0
    .prologue
    .line 2509
    :try_start_0
    iget-object v1, p0, Landroid/net/ConnectivityManager;->mService:Landroid/net/IConnectivityManager;

    #@2
    invoke-interface {v1, p1, p2}, Landroid/net/IConnectivityManager;->registerNetworkFactory(Landroid/os/Messenger;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@5
    .line 2507
    return-void

    #@6
    .line 2510
    :catch_0
    move-exception v0

    #@7
    .line 2511
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    #@a
    move-result-object v1

    #@b
    throw v1
.end method

.method public releaseNetworkRequest(Landroid/app/PendingIntent;)V
    .locals 2
    .param p1, "operation"    # Landroid/app/PendingIntent;

    #@0
    .prologue
    .line 3039
    invoke-direct {p0, p1}, Landroid/net/ConnectivityManager;->checkPendingIntent(Landroid/app/PendingIntent;)V

    #@3
    .line 3041
    :try_start_0
    iget-object v1, p0, Landroid/net/ConnectivityManager;->mService:Landroid/net/IConnectivityManager;

    #@5
    invoke-interface {v1, p1}, Landroid/net/IConnectivityManager;->releasePendingNetworkRequest(Landroid/app/PendingIntent;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@8
    .line 3038
    return-void

    #@9
    .line 3042
    :catch_0
    move-exception v0

    #@a
    .line 3043
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    #@d
    move-result-object v1

    #@e
    throw v1
.end method

.method public removeDefaultNetworkActiveListener(Landroid/net/ConnectivityManager$OnNetworkActiveListener;)V
    .locals 5
    .param p1, "l"    # Landroid/net/ConnectivityManager$OnNetworkActiveListener;

    #@0
    .prologue
    .line 1787
    iget-object v2, p0, Landroid/net/ConnectivityManager;->mNetworkActivityListeners:Landroid/util/ArrayMap;

    #@2
    invoke-virtual {v2, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@5
    move-result-object v1

    #@6
    check-cast v1, Landroid/os/INetworkActivityListener;

    #@8
    .line 1788
    .local v1, "rl":Landroid/os/INetworkActivityListener;
    if-nez v1, :cond_0

    #@a
    .line 1789
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
    .line 1792
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
    .line 1786
    return-void

    #@2c
    .line 1793
    :catch_0
    move-exception v0

    #@2d
    .line 1794
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    #@30
    move-result-object v2

    #@31
    throw v2
.end method

.method public reportBadNetwork(Landroid/net/Network;)V
    .locals 3
    .param p1, "network"    # Landroid/net/Network;

    #@0
    .prologue
    .line 2282
    :try_start_0
    iget-object v1, p0, Landroid/net/ConnectivityManager;->mService:Landroid/net/IConnectivityManager;

    #@2
    const/4 v2, 0x1

    #@3
    invoke-interface {v1, p1, v2}, Landroid/net/IConnectivityManager;->reportNetworkConnectivity(Landroid/net/Network;Z)V

    #@6
    .line 2283
    iget-object v1, p0, Landroid/net/ConnectivityManager;->mService:Landroid/net/IConnectivityManager;

    #@8
    const/4 v2, 0x0

    #@9
    invoke-interface {v1, p1, v2}, Landroid/net/IConnectivityManager;->reportNetworkConnectivity(Landroid/net/Network;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@c
    .line 2278
    return-void

    #@d
    .line 2284
    :catch_0
    move-exception v0

    #@e
    .line 2285
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    #@11
    move-result-object v1

    #@12
    throw v1
.end method

.method public reportInetCondition(II)V
    .locals 2
    .param p1, "networkType"    # I
    .param p2, "percentage"    # I

    #@0
    .prologue
    .line 2261
    :try_start_0
    iget-object v1, p0, Landroid/net/ConnectivityManager;->mService:Landroid/net/IConnectivityManager;

    #@2
    invoke-interface {v1, p1, p2}, Landroid/net/IConnectivityManager;->reportInetCondition(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@5
    .line 2259
    return-void

    #@6
    .line 2262
    :catch_0
    move-exception v0

    #@7
    .line 2263
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    #@a
    move-result-object v1

    #@b
    throw v1
.end method

.method public reportNetworkConnectivity(Landroid/net/Network;Z)V
    .locals 2
    .param p1, "network"    # Landroid/net/Network;
    .param p2, "hasConnectivity"    # Z

    #@0
    .prologue
    .line 2302
    :try_start_0
    iget-object v1, p0, Landroid/net/ConnectivityManager;->mService:Landroid/net/IConnectivityManager;

    #@2
    invoke-interface {v1, p1, p2}, Landroid/net/IConnectivityManager;->reportNetworkConnectivity(Landroid/net/Network;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@5
    .line 2300
    return-void

    #@6
    .line 2303
    :catch_0
    move-exception v0

    #@7
    .line 2304
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    #@a
    move-result-object v1

    #@b
    throw v1
.end method

.method public requestBandwidthUpdate(Landroid/net/Network;)Z
    .locals 2
    .param p1, "network"    # Landroid/net/Network;

    #@0
    .prologue
    .line 3143
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
    .line 3144
    :catch_0
    move-exception v0

    #@8
    .line 3145
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    #@b
    move-result-object v1

    #@c
    throw v1
.end method

.method public requestLinkProperties(Landroid/net/ConnectivityManager$NetworkCallback;)V
    .locals 3
    .param p1, "networkCallback"    # Landroid/net/ConnectivityManager$NetworkCallback;

    #@0
    .prologue
    .line 1060
    :try_start_0
    iget-object v1, p0, Landroid/net/ConnectivityManager;->mService:Landroid/net/IConnectivityManager;

    #@2
    invoke-static {p1}, Landroid/net/ConnectivityManager$NetworkCallback;->-get0(Landroid/net/ConnectivityManager$NetworkCallback;)Landroid/net/NetworkRequest;

    #@5
    move-result-object v2

    #@6
    invoke-interface {v1, v2}, Landroid/net/IConnectivityManager;->requestLinkProperties(Landroid/net/NetworkRequest;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@9
    .line 1058
    return-void

    #@a
    .line 1061
    :catch_0
    move-exception v0

    #@b
    .line 1062
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    #@e
    move-result-object v1

    #@f
    throw v1
.end method

.method public requestNetwork(Landroid/net/NetworkRequest;Landroid/app/PendingIntent;)V
    .locals 3
    .param p1, "request"    # Landroid/net/NetworkRequest;
    .param p2, "operation"    # Landroid/app/PendingIntent;

    #@0
    .prologue
    .line 3018
    invoke-direct {p0, p2}, Landroid/net/ConnectivityManager;->checkPendingIntent(Landroid/app/PendingIntent;)V

    #@3
    .line 3020
    :try_start_0
    iget-object v1, p0, Landroid/net/ConnectivityManager;->mService:Landroid/net/IConnectivityManager;

    #@5
    iget-object v2, p1, Landroid/net/NetworkRequest;->networkCapabilities:Landroid/net/NetworkCapabilities;

    #@7
    invoke-interface {v1, v2, p2}, Landroid/net/IConnectivityManager;->pendingRequestForNetwork(Landroid/net/NetworkCapabilities;Landroid/app/PendingIntent;)Landroid/net/NetworkRequest;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@a
    .line 3017
    return-void

    #@b
    .line 3021
    :catch_0
    move-exception v0

    #@c
    .line 3022
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    #@f
    move-result-object v1

    #@10
    throw v1
.end method

.method public requestNetwork(Landroid/net/NetworkRequest;Landroid/net/ConnectivityManager$NetworkCallback;)V
    .locals 2
    .param p1, "request"    # Landroid/net/NetworkRequest;
    .param p2, "networkCallback"    # Landroid/net/ConnectivityManager$NetworkCallback;

    #@0
    .prologue
    .line 2911
    iget-object v0, p1, Landroid/net/NetworkRequest;->networkCapabilities:Landroid/net/NetworkCapabilities;

    #@2
    invoke-direct {p0, v0}, Landroid/net/ConnectivityManager;->inferLegacyTypeForNetworkCapabilities(Landroid/net/NetworkCapabilities;)I

    #@5
    move-result v0

    #@6
    .line 2910
    const/4 v1, 0x0

    #@7
    invoke-virtual {p0, p1, p2, v1, v0}, Landroid/net/ConnectivityManager;->requestNetwork(Landroid/net/NetworkRequest;Landroid/net/ConnectivityManager$NetworkCallback;II)V

    #@a
    .line 2909
    return-void
.end method

.method public requestNetwork(Landroid/net/NetworkRequest;Landroid/net/ConnectivityManager$NetworkCallback;I)V
    .locals 1
    .param p1, "request"    # Landroid/net/NetworkRequest;
    .param p2, "networkCallback"    # Landroid/net/ConnectivityManager$NetworkCallback;
    .param p3, "timeoutMs"    # I

    #@0
    .prologue
    .line 2942
    iget-object v0, p1, Landroid/net/NetworkRequest;->networkCapabilities:Landroid/net/NetworkCapabilities;

    #@2
    invoke-direct {p0, v0}, Landroid/net/ConnectivityManager;->inferLegacyTypeForNetworkCapabilities(Landroid/net/NetworkCapabilities;)I

    #@5
    move-result v0

    #@6
    .line 2941
    invoke-virtual {p0, p1, p2, p3, v0}, Landroid/net/ConnectivityManager;->requestNetwork(Landroid/net/NetworkRequest;Landroid/net/ConnectivityManager$NetworkCallback;II)V

    #@9
    .line 2940
    return-void
.end method

.method public requestNetwork(Landroid/net/NetworkRequest;Landroid/net/ConnectivityManager$NetworkCallback;II)V
    .locals 6
    .param p1, "request"    # Landroid/net/NetworkRequest;
    .param p2, "networkCallback"    # Landroid/net/ConnectivityManager$NetworkCallback;
    .param p3, "timeoutMs"    # I
    .param p4, "legacyType"    # I

    #@0
    .prologue
    .line 2876
    iget-object v1, p1, Landroid/net/NetworkRequest;->networkCapabilities:Landroid/net/NetworkCapabilities;

    #@2
    const/4 v4, 0x2

    #@3
    move-object v0, p0

    #@4
    move-object v2, p2

    #@5
    move v3, p3

    #@6
    move v5, p4

    #@7
    invoke-direct/range {v0 .. v5}, Landroid/net/ConnectivityManager;->sendRequestForNetwork(Landroid/net/NetworkCapabilities;Landroid/net/ConnectivityManager$NetworkCallback;III)Landroid/net/NetworkRequest;

    #@a
    .line 2875
    return-void
.end method

.method public requestNetworkCapabilities(Landroid/net/ConnectivityManager$NetworkCallback;)V
    .locals 3
    .param p1, "networkCallback"    # Landroid/net/ConnectivityManager$NetworkCallback;

    #@0
    .prologue
    .line 1097
    :try_start_0
    iget-object v1, p0, Landroid/net/ConnectivityManager;->mService:Landroid/net/IConnectivityManager;

    #@2
    invoke-static {p1}, Landroid/net/ConnectivityManager$NetworkCallback;->-get0(Landroid/net/ConnectivityManager$NetworkCallback;)Landroid/net/NetworkRequest;

    #@5
    move-result-object v2

    #@6
    invoke-interface {v1, v2}, Landroid/net/IConnectivityManager;->requestNetworkCapabilities(Landroid/net/NetworkRequest;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@9
    .line 1095
    return-void

    #@a
    .line 1098
    :catch_0
    move-exception v0

    #@b
    .line 1099
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    #@e
    move-result-object v1

    #@f
    throw v1
.end method

.method public requestRouteToHost(II)Z
    .locals 1
    .param p1, "networkType"    # I
    .param p2, "hostAddress"    # I

    #@0
    .prologue
    .line 1612
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
    .line 1634
    invoke-direct {p0}, Landroid/net/ConnectivityManager;->checkLegacyRoutingApiAccess()V

    #@3
    .line 1636
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
    .line 1637
    :catch_0
    move-exception v0

    #@f
    .line 1638
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    #@12
    move-result-object v1

    #@13
    throw v1
.end method

.method public setAcceptUnvalidated(Landroid/net/Network;ZZ)V
    .locals 2
    .param p1, "network"    # Landroid/net/Network;
    .param p2, "accept"    # Z
    .param p3, "always"    # Z

    #@0
    .prologue
    .line 3204
    :try_start_0
    iget-object v1, p0, Landroid/net/ConnectivityManager;->mService:Landroid/net/IConnectivityManager;

    #@2
    invoke-interface {v1, p1, p2, p3}, Landroid/net/IConnectivityManager;->setAcceptUnvalidated(Landroid/net/Network;ZZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@5
    .line 3202
    return-void

    #@6
    .line 3205
    :catch_0
    move-exception v0

    #@7
    .line 3206
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    #@a
    move-result-object v1

    #@b
    throw v1
.end method

.method public setAirplaneMode(Z)V
    .locals 2
    .param p1, "enable"    # Z

    #@0
    .prologue
    .line 2500
    :try_start_0
    iget-object v1, p0, Landroid/net/ConnectivityManager;->mService:Landroid/net/IConnectivityManager;

    #@2
    invoke-interface {v1, p1}, Landroid/net/IConnectivityManager;->setAirplaneMode(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@5
    .line 2498
    return-void

    #@6
    .line 2501
    :catch_0
    move-exception v0

    #@7
    .line 2502
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    #@a
    move-result-object v1

    #@b
    throw v1
.end method

.method public setAlwaysOnVpnPackageForUser(ILjava/lang/String;Z)Z
    .locals 2
    .param p1, "userId"    # I
    .param p2, "vpnPackage"    # Ljava/lang/String;
    .param p3, "lockdownEnabled"    # Z

    #@0
    .prologue
    .line 818
    :try_start_0
    iget-object v1, p0, Landroid/net/ConnectivityManager;->mService:Landroid/net/IConnectivityManager;

    #@2
    invoke-interface {v1, p1, p2, p3}, Landroid/net/IConnectivityManager;->setAlwaysOnVpnPackage(ILjava/lang/String;Z)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@5
    move-result v1

    #@6
    return v1

    #@7
    .line 819
    :catch_0
    move-exception v0

    #@8
    .line 820
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    #@b
    move-result-object v1

    #@c
    throw v1
.end method

.method public setAvoidUnvalidated(Landroid/net/Network;)V
    .locals 2
    .param p1, "network"    # Landroid/net/Network;

    #@0
    .prologue
    .line 3225
    :try_start_0
    iget-object v1, p0, Landroid/net/ConnectivityManager;->mService:Landroid/net/IConnectivityManager;

    #@2
    invoke-interface {v1, p1}, Landroid/net/IConnectivityManager;->setAvoidUnvalidated(Landroid/net/Network;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@5
    .line 3223
    return-void

    #@6
    .line 3226
    :catch_0
    move-exception v0

    #@7
    .line 3227
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    #@a
    move-result-object v1

    #@b
    throw v1
.end method

.method public setBackgroundDataSetting(Z)V
    .locals 0
    .param p1, "allowBackgroundData"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .line 1676
    return-void
.end method

.method public setGlobalProxy(Landroid/net/ProxyInfo;)V
    .locals 2
    .param p1, "p"    # Landroid/net/ProxyInfo;

    #@0
    .prologue
    .line 2322
    :try_start_0
    iget-object v1, p0, Landroid/net/ConnectivityManager;->mService:Landroid/net/IConnectivityManager;

    #@2
    invoke-interface {v1, p1}, Landroid/net/IConnectivityManager;->setGlobalProxy(Landroid/net/ProxyInfo;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@5
    .line 2320
    return-void

    #@6
    .line 2323
    :catch_0
    move-exception v0

    #@7
    .line 2324
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    #@a
    move-result-object v1

    #@b
    throw v1
.end method

.method public setNetworkPreference(I)V
    .locals 0
    .param p1, "preference"    # I

    #@0
    .prologue
    .line 712
    return-void
.end method

.method public setProvisioningNotificationVisible(ZILjava/lang/String;)V
    .locals 2
    .param p1, "visible"    # Z
    .param p2, "networkType"    # I
    .param p3, "action"    # Ljava/lang/String;

    #@0
    .prologue
    .line 2483
    :try_start_0
    iget-object v1, p0, Landroid/net/ConnectivityManager;->mService:Landroid/net/IConnectivityManager;

    #@2
    invoke-interface {v1, p1, p2, p3}, Landroid/net/IConnectivityManager;->setProvisioningNotificationVisible(ZILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@5
    .line 2481
    return-void

    #@6
    .line 2484
    :catch_0
    move-exception v0

    #@7
    .line 2485
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    #@a
    move-result-object v1

    #@b
    throw v1
.end method

.method public setUsbTethering(Z)I
    .locals 2
    .param p1, "enable"    # Z

    #@0
    .prologue
    .line 2198
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
    .line 2199
    :catch_0
    move-exception v0

    #@8
    .line 2200
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    #@b
    move-result-object v1

    #@c
    throw v1
.end method

.method public startNattKeepalive(Landroid/net/Network;ILandroid/net/ConnectivityManager$PacketKeepaliveCallback;Ljava/net/InetAddress;ILjava/net/InetAddress;)Landroid/net/ConnectivityManager$PacketKeepalive;
    .locals 10
    .param p1, "network"    # Landroid/net/Network;
    .param p2, "intervalSeconds"    # I
    .param p3, "callback"    # Landroid/net/ConnectivityManager$PacketKeepaliveCallback;
    .param p4, "srcAddr"    # Ljava/net/InetAddress;
    .param p5, "srcPort"    # I
    .param p6, "dstAddr"    # Ljava/net/InetAddress;

    #@0
    .prologue
    .line 1578
    new-instance v9, Landroid/net/ConnectivityManager$PacketKeepalive;

    #@2
    const/4 v0, 0x0

    #@3
    invoke-direct {v9, p0, p1, p3, v0}, Landroid/net/ConnectivityManager$PacketKeepalive;-><init>(Landroid/net/ConnectivityManager;Landroid/net/Network;Landroid/net/ConnectivityManager$PacketKeepaliveCallback;Landroid/net/ConnectivityManager$PacketKeepalive;)V

    #@6
    .line 1580
    .local v9, "k":Landroid/net/ConnectivityManager$PacketKeepalive;
    :try_start_0
    iget-object v0, p0, Landroid/net/ConnectivityManager;->mService:Landroid/net/IConnectivityManager;

    #@8
    invoke-static {v9}, Landroid/net/ConnectivityManager$PacketKeepalive;->-get1(Landroid/net/ConnectivityManager$PacketKeepalive;)Landroid/os/Messenger;

    #@b
    move-result-object v3

    #@c
    new-instance v4, Landroid/os/Binder;

    #@e
    invoke-direct {v4}, Landroid/os/Binder;-><init>()V

    #@11
    .line 1581
    invoke-virtual {p4}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    #@14
    move-result-object v5

    #@15
    invoke-virtual/range {p6 .. p6}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    #@18
    move-result-object v7

    #@19
    move-object v1, p1

    #@1a
    move v2, p2

    #@1b
    move v6, p5

    #@1c
    .line 1580
    invoke-interface/range {v0 .. v7}, Landroid/net/IConnectivityManager;->startNattKeepalive(Landroid/net/Network;ILandroid/os/Messenger;Landroid/os/IBinder;Ljava/lang/String;ILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@1f
    .line 1587
    return-object v9

    #@20
    .line 1582
    :catch_0
    move-exception v8

    #@21
    .line 1583
    .local v8, "e":Landroid/os/RemoteException;
    const-string/jumbo v0, "ConnectivityManager"

    #@24
    const-string/jumbo v1, "Error starting packet keepalive: "

    #@27
    invoke-static {v0, v1, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@2a
    .line 1584
    invoke-virtual {v9}, Landroid/net/ConnectivityManager$PacketKeepalive;->stopLooper()V

    #@2d
    .line 1585
    const/4 v0, 0x0

    #@2e
    return-object v0
.end method

.method public startTethering(IZLandroid/net/ConnectivityManager$OnStartTetheringCallback;)V
    .locals 1
    .param p1, "type"    # I
    .param p2, "showProvisioningUi"    # Z
    .param p3, "callback"    # Landroid/net/ConnectivityManager$OnStartTetheringCallback;

    #@0
    .prologue
    .line 2057
    const/4 v0, 0x0

    #@1
    invoke-virtual {p0, p1, p2, p3, v0}, Landroid/net/ConnectivityManager;->startTethering(IZLandroid/net/ConnectivityManager$OnStartTetheringCallback;Landroid/os/Handler;)V

    #@4
    .line 2056
    return-void
.end method

.method public startTethering(IZLandroid/net/ConnectivityManager$OnStartTetheringCallback;Landroid/os/Handler;)V
    .locals 4
    .param p1, "type"    # I
    .param p2, "showProvisioningUi"    # Z
    .param p3, "callback"    # Landroid/net/ConnectivityManager$OnStartTetheringCallback;
    .param p4, "handler"    # Landroid/os/Handler;

    #@0
    .prologue
    .line 2082
    new-instance v1, Landroid/net/ConnectivityManager$2;

    #@2
    invoke-direct {v1, p0, p4, p3}, Landroid/net/ConnectivityManager$2;-><init>(Landroid/net/ConnectivityManager;Landroid/os/Handler;Landroid/net/ConnectivityManager$OnStartTetheringCallback;)V

    #@5
    .line 2093
    .local v1, "wrappedCallback":Landroid/os/ResultReceiver;
    :try_start_0
    iget-object v2, p0, Landroid/net/ConnectivityManager;->mService:Landroid/net/IConnectivityManager;

    #@7
    invoke-interface {v2, p1, v1, p2}, Landroid/net/IConnectivityManager;->startTethering(ILandroid/os/ResultReceiver;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@a
    .line 2081
    :goto_0
    return-void

    #@b
    .line 2094
    :catch_0
    move-exception v0

    #@c
    .line 2095
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v2, "ConnectivityManager"

    #@f
    const-string/jumbo v3, "Exception trying to start tethering."

    #@12
    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@15
    .line 2096
    const/4 v2, 0x2

    #@16
    const/4 v3, 0x0

    #@17
    invoke-virtual {v1, v2, v3}, Landroid/os/ResultReceiver;->send(ILandroid/os/Bundle;)V

    #@1a
    goto :goto_0
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
    .line 1144
    invoke-direct {p0}, Landroid/net/ConnectivityManager;->checkLegacyRoutingApiAccess()V

    #@5
    .line 1145
    invoke-direct {p0, p1, p2}, Landroid/net/ConnectivityManager;->networkCapabilitiesForFeature(ILjava/lang/String;)Landroid/net/NetworkCapabilities;

    #@8
    move-result-object v1

    #@9
    .line 1146
    .local v1, "netCap":Landroid/net/NetworkCapabilities;
    if-nez v1, :cond_0

    #@b
    .line 1147
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
    .line 1149
    return v6

    #@31
    .line 1152
    :cond_0
    const/4 v2, 0x0

    #@32
    .line 1153
    .local v2, "request":Landroid/net/NetworkRequest;
    sget-object v4, Landroid/net/ConnectivityManager;->sLegacyRequests:Ljava/util/HashMap;

    #@34
    monitor-enter v4

    #@35
    .line 1154
    :try_start_0
    sget-object v3, Landroid/net/ConnectivityManager;->sLegacyRequests:Ljava/util/HashMap;

    #@37
    invoke-virtual {v3, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@3a
    move-result-object v0

    #@3b
    check-cast v0, Landroid/net/ConnectivityManager$LegacyRequest;

    #@3d
    .line 1155
    .local v0, "l":Landroid/net/ConnectivityManager$LegacyRequest;
    if-eqz v0, :cond_2

    #@3f
    .line 1156
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
    .line 1157
    invoke-direct {p0, v0}, Landroid/net/ConnectivityManager;->renewRequestLocked(Landroid/net/ConnectivityManager$LegacyRequest;)V

    #@5e
    .line 1158
    iget-object v3, v0, Landroid/net/ConnectivityManager$LegacyRequest;->currentNetwork:Landroid/net/Network;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@60
    if-eqz v3, :cond_1

    #@62
    .line 1159
    const/4 v3, 0x0

    #@63
    monitor-exit v4

    #@64
    return v3

    #@65
    :cond_1
    monitor-exit v4

    #@66
    .line 1161
    return v7

    #@67
    .line 1165
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
    .line 1167
    if-eqz v2, :cond_3

    #@6e
    .line 1168
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
    .line 1169
    return v7

    #@89
    .line 1153
    .end local v0    # "l":Landroid/net/ConnectivityManager$LegacyRequest;
    .local v2, "request":Landroid/net/NetworkRequest;
    :catchall_0
    move-exception v3

    #@8a
    monitor-exit v4

    #@8b
    throw v3

    #@8c
    .line 1171
    .restart local v0    # "l":Landroid/net/ConnectivityManager$LegacyRequest;
    .local v2, "request":Landroid/net/NetworkRequest;
    :cond_3
    const-string/jumbo v3, "ConnectivityManager"

    #@8f
    const-string/jumbo v4, " request Failed"

    #@92
    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@95
    .line 1172
    return v6
.end method

.method public stopTethering(I)V
    .locals 2
    .param p1, "type"    # I

    #@0
    .prologue
    .line 2113
    :try_start_0
    iget-object v1, p0, Landroid/net/ConnectivityManager;->mService:Landroid/net/IConnectivityManager;

    #@2
    invoke-interface {v1, p1}, Landroid/net/IConnectivityManager;->stopTethering(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@5
    .line 2111
    return-void

    #@6
    .line 2114
    :catch_0
    move-exception v0

    #@7
    .line 2115
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    #@a
    move-result-object v1

    #@b
    throw v1
.end method

.method public stopUsingNetworkFeature(ILjava/lang/String;)I
    .locals 4
    .param p1, "networkType"    # I
    .param p2, "feature"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1199
    invoke-direct {p0}, Landroid/net/ConnectivityManager;->checkLegacyRoutingApiAccess()V

    #@3
    .line 1200
    invoke-direct {p0, p1, p2}, Landroid/net/ConnectivityManager;->networkCapabilitiesForFeature(ILjava/lang/String;)Landroid/net/NetworkCapabilities;

    #@6
    move-result-object v0

    #@7
    .line 1201
    .local v0, "netCap":Landroid/net/NetworkCapabilities;
    if-nez v0, :cond_0

    #@9
    .line 1202
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
    .line 1204
    const/4 v1, -0x1

    #@2f
    return v1

    #@30
    .line 1207
    :cond_0
    invoke-direct {p0, v0}, Landroid/net/ConnectivityManager;->removeRequestForFeature(Landroid/net/NetworkCapabilities;)Z

    #@33
    move-result v1

    #@34
    if-eqz v1, :cond_1

    #@36
    .line 1208
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
    .line 1210
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
    .line 1979
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
    .line 1980
    :catch_0
    move-exception v0

    #@8
    .line 1981
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    #@b
    move-result-object v1

    #@c
    throw v1
.end method

.method public unregisterNetworkCallback(Landroid/app/PendingIntent;)V
    .locals 0
    .param p1, "operation"    # Landroid/app/PendingIntent;

    #@0
    .prologue
    .line 3182
    invoke-virtual {p0, p1}, Landroid/net/ConnectivityManager;->releaseNetworkRequest(Landroid/app/PendingIntent;)V

    #@3
    .line 3181
    return-void
.end method

.method public unregisterNetworkCallback(Landroid/net/ConnectivityManager$NetworkCallback;)V
    .locals 3
    .param p1, "networkCallback"    # Landroid/net/ConnectivityManager$NetworkCallback;

    #@0
    .prologue
    .line 3160
    if-eqz p1, :cond_0

    #@2
    invoke-static {p1}, Landroid/net/ConnectivityManager$NetworkCallback;->-get0(Landroid/net/ConnectivityManager$NetworkCallback;)Landroid/net/NetworkRequest;

    #@5
    move-result-object v1

    #@6
    if-nez v1, :cond_1

    #@8
    .line 3162
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    #@a
    const-string/jumbo v2, "Invalid NetworkCallback"

    #@d
    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@10
    throw v1

    #@11
    .line 3161
    :cond_1
    invoke-static {p1}, Landroid/net/ConnectivityManager$NetworkCallback;->-get0(Landroid/net/ConnectivityManager$NetworkCallback;)Landroid/net/NetworkRequest;

    #@14
    move-result-object v1

    #@15
    iget v1, v1, Landroid/net/NetworkRequest;->requestId:I

    #@17
    if-eqz v1, :cond_0

    #@19
    .line 3166
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
    .line 3159
    return-void

    #@23
    .line 3167
    :catch_0
    move-exception v0

    #@24
    .line 3168
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    #@27
    move-result-object v1

    #@28
    throw v1
.end method

.method public unregisterNetworkFactory(Landroid/os/Messenger;)V
    .locals 2
    .param p1, "messenger"    # Landroid/os/Messenger;

    #@0
    .prologue
    .line 2518
    :try_start_0
    iget-object v1, p0, Landroid/net/ConnectivityManager;->mService:Landroid/net/IConnectivityManager;

    #@2
    invoke-interface {v1, p1}, Landroid/net/IConnectivityManager;->unregisterNetworkFactory(Landroid/os/Messenger;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@5
    .line 2516
    return-void

    #@6
    .line 2519
    :catch_0
    move-exception v0

    #@7
    .line 2520
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    #@a
    move-result-object v1

    #@b
    throw v1
.end method

.method public untether(Ljava/lang/String;)I
    .locals 2
    .param p1, "iface"    # Ljava/lang/String;

    #@0
    .prologue
    .line 2005
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
    .line 2006
    :catch_0
    move-exception v0

    #@8
    .line 2007
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    #@b
    move-result-object v1

    #@c
    throw v1
.end method

.method public updateLockdownVpn()Z
    .locals 2

    #@0
    .prologue
    .line 2433
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
    .line 2434
    :catch_0
    move-exception v0

    #@8
    .line 2435
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    #@b
    move-result-object v1

    #@c
    throw v1
.end method
