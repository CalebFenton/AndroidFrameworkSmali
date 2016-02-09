.class public Landroid/net/wifi/WifiManager;
.super Ljava/lang/Object;
.source "WifiManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/wifi/WifiManager$ActionListener;,
        Landroid/net/wifi/WifiManager$WpsCallback;,
        Landroid/net/wifi/WifiManager$TxPacketCountListener;,
        Landroid/net/wifi/WifiManager$ServiceHandler;,
        Landroid/net/wifi/WifiManager$PinningNetworkCallback;,
        Landroid/net/wifi/WifiManager$WifiLock;,
        Landroid/net/wifi/WifiManager$MulticastLock;
    }
.end annotation


# static fields
.field public static final ACTION_PICK_WIFI_NETWORK:Ljava/lang/String; = "android.net.wifi.PICK_WIFI_NETWORK"

.field public static final ACTION_REQUEST_SCAN_ALWAYS_AVAILABLE:Ljava/lang/String; = "android.net.wifi.action.REQUEST_SCAN_ALWAYS_AVAILABLE"

.field private static final BASE:I = 0x25000

.field public static final BATCHED_SCAN_RESULTS_AVAILABLE_ACTION:Ljava/lang/String; = "android.net.wifi.BATCHED_RESULTS"

.field public static final BUSY:I = 0x2

.field public static final CANCEL_WPS:I = 0x2500e

.field public static final CANCEL_WPS_FAILED:I = 0x2500f

.field public static final CANCEL_WPS_SUCCEDED:I = 0x25010

.field public static final CHANGE_REASON_ADDED:I = 0x0

.field public static final CHANGE_REASON_CONFIG_CHANGE:I = 0x2

.field public static final CHANGE_REASON_REMOVED:I = 0x1

.field public static final CONFIGURED_NETWORKS_CHANGED_ACTION:Ljava/lang/String; = "android.net.wifi.CONFIGURED_NETWORKS_CHANGE"

.field public static final CONNECT_NETWORK:I = 0x25001

.field public static final CONNECT_NETWORK_FAILED:I = 0x25002

.field public static final CONNECT_NETWORK_SUCCEEDED:I = 0x25003

.field public static final DATA_ACTIVITY_IN:I = 0x1

.field public static final DATA_ACTIVITY_INOUT:I = 0x3

.field public static final DATA_ACTIVITY_NONE:I = 0x0

.field public static final DATA_ACTIVITY_NOTIFICATION:I = 0x1

.field public static final DATA_ACTIVITY_OUT:I = 0x2

.field public static final DEFAULT_POOR_NETWORK_AVOIDANCE_ENABLED:Z = false

.field public static final DISABLE_NETWORK:I = 0x25011

.field public static final DISABLE_NETWORK_FAILED:I = 0x25012

.field public static final DISABLE_NETWORK_SUCCEEDED:I = 0x25013

.field public static final ERROR:I = 0x0

.field public static final ERROR_AUTHENTICATING:I = 0x1

.field public static final EXTRA_BSSID:Ljava/lang/String; = "bssid"

.field public static final EXTRA_CHANGE_REASON:Ljava/lang/String; = "changeReason"

.field public static final EXTRA_LINK_PROPERTIES:Ljava/lang/String; = "linkProperties"

.field public static final EXTRA_MULTIPLE_NETWORKS_CHANGED:Ljava/lang/String; = "multipleChanges"

.field public static final EXTRA_NETWORK_CAPABILITIES:Ljava/lang/String; = "networkCapabilities"

.field public static final EXTRA_NETWORK_INFO:Ljava/lang/String; = "networkInfo"

.field public static final EXTRA_NEW_RSSI:Ljava/lang/String; = "newRssi"

.field public static final EXTRA_NEW_STATE:Ljava/lang/String; = "newState"

.field public static final EXTRA_PREVIOUS_WIFI_AP_STATE:Ljava/lang/String; = "previous_wifi_state"

.field public static final EXTRA_PREVIOUS_WIFI_STATE:Ljava/lang/String; = "previous_wifi_state"

.field public static final EXTRA_RESULTS_UPDATED:Ljava/lang/String; = "resultsUpdated"

.field public static final EXTRA_SCAN_AVAILABLE:Ljava/lang/String; = "scan_enabled"

.field public static final EXTRA_SUPPLICANT_CONNECTED:Ljava/lang/String; = "connected"

.field public static final EXTRA_SUPPLICANT_ERROR:Ljava/lang/String; = "supplicantError"

.field public static final EXTRA_WIFI_AP_FAILURE_REASON:Ljava/lang/String; = "wifi_ap_error_code"

.field public static final EXTRA_WIFI_AP_STATE:Ljava/lang/String; = "wifi_state"

.field public static final EXTRA_WIFI_CONFIGURATION:Ljava/lang/String; = "wifiConfiguration"

.field public static final EXTRA_WIFI_CREDENTIAL_EVENT_TYPE:Ljava/lang/String; = "et"

.field public static final EXTRA_WIFI_CREDENTIAL_SSID:Ljava/lang/String; = "ssid"

.field public static final EXTRA_WIFI_INFO:Ljava/lang/String; = "wifiInfo"

.field public static final EXTRA_WIFI_STATE:Ljava/lang/String; = "wifi_state"

.field public static final FORGET_NETWORK:I = 0x25004

.field public static final FORGET_NETWORK_FAILED:I = 0x25005

.field public static final FORGET_NETWORK_SUCCEEDED:I = 0x25006

.field public static final INVALID_ARGS:I = 0x8

.field private static final INVALID_KEY:I = 0x0

.field public static final IN_PROGRESS:I = 0x1

.field public static final LINK_CONFIGURATION_CHANGED_ACTION:Ljava/lang/String; = "android.net.wifi.LINK_CONFIGURATION_CHANGED"

.field private static final MAX_ACTIVE_LOCKS:I = 0x32

.field private static final MAX_RSSI:I = -0x37

.field private static final MIN_RSSI:I = -0x64

.field public static final NETWORK_IDS_CHANGED_ACTION:Ljava/lang/String; = "android.net.wifi.NETWORK_IDS_CHANGED"

.field public static final NETWORK_STATE_CHANGED_ACTION:Ljava/lang/String; = "android.net.wifi.STATE_CHANGE"

.field public static final NOT_AUTHORIZED:I = 0x9

.field public static final RSSI_CHANGED_ACTION:Ljava/lang/String; = "android.net.wifi.RSSI_CHANGED"

.field public static final RSSI_LEVELS:I = 0x5

.field public static final RSSI_PKTCNT_FETCH:I = 0x25014

.field public static final RSSI_PKTCNT_FETCH_FAILED:I = 0x25016

.field public static final RSSI_PKTCNT_FETCH_SUCCEEDED:I = 0x25015

.field public static final SAP_START_FAILURE_GENERAL:I = 0x0

.field public static final SAP_START_FAILURE_NO_CHANNEL:I = 0x1

.field public static final SAVE_NETWORK:I = 0x25007

.field public static final SAVE_NETWORK_FAILED:I = 0x25008

.field public static final SAVE_NETWORK_SUCCEEDED:I = 0x25009

.field public static final SCAN_RESULTS_AVAILABLE_ACTION:Ljava/lang/String; = "android.net.wifi.SCAN_RESULTS"

.field public static final START_WPS:I = 0x2500a

.field public static final START_WPS_SUCCEEDED:I = 0x2500b

.field public static final SUPPLICANT_CONNECTION_CHANGE_ACTION:Ljava/lang/String; = "android.net.wifi.supplicant.CONNECTION_CHANGE"

.field public static final SUPPLICANT_STATE_CHANGED_ACTION:Ljava/lang/String; = "android.net.wifi.supplicant.STATE_CHANGE"

.field private static final TAG:Ljava/lang/String; = "WifiManager"

.field public static final WIFI_AP_STATE_CHANGED_ACTION:Ljava/lang/String; = "android.net.wifi.WIFI_AP_STATE_CHANGED"

.field public static final WIFI_AP_STATE_DISABLED:I = 0xb

.field public static final WIFI_AP_STATE_DISABLING:I = 0xa

.field public static final WIFI_AP_STATE_ENABLED:I = 0xd

.field public static final WIFI_AP_STATE_ENABLING:I = 0xc

.field public static final WIFI_AP_STATE_FAILED:I = 0xe

.field public static final WIFI_CREDENTIAL_CHANGED_ACTION:Ljava/lang/String; = "android.net.wifi.WIFI_CREDENTIAL_CHANGED"

.field public static final WIFI_CREDENTIAL_FORGOT:I = 0x1

.field public static final WIFI_CREDENTIAL_SAVED:I = 0x0

.field public static final WIFI_FEATURE_ADDITIONAL_STA:I = 0x800

.field public static final WIFI_FEATURE_AP_STA:I = 0x8000

.field public static final WIFI_FEATURE_BATCH_SCAN:I = 0x200

.field public static final WIFI_FEATURE_D2AP_RTT:I = 0x100

.field public static final WIFI_FEATURE_D2D_RTT:I = 0x80

.field public static final WIFI_FEATURE_EPR:I = 0x4000

.field public static final WIFI_FEATURE_HAL_EPNO:I = 0x40000

.field public static final WIFI_FEATURE_INFRA:I = 0x1

.field public static final WIFI_FEATURE_INFRA_5G:I = 0x2

.field public static final WIFI_FEATURE_LINK_LAYER_STATS:I = 0x10000

.field public static final WIFI_FEATURE_LOGGER:I = 0x20000

.field public static final WIFI_FEATURE_MOBILE_HOTSPOT:I = 0x10

.field public static final WIFI_FEATURE_NAN:I = 0x40

.field public static final WIFI_FEATURE_P2P:I = 0x8

.field public static final WIFI_FEATURE_PASSPOINT:I = 0x4

.field public static final WIFI_FEATURE_PNO:I = 0x400

.field public static final WIFI_FEATURE_SCANNER:I = 0x20

.field public static final WIFI_FEATURE_TDLS:I = 0x1000

.field public static final WIFI_FEATURE_TDLS_OFFCHANNEL:I = 0x2000

.field public static final WIFI_FREQUENCY_BAND_2GHZ:I = 0x2

.field public static final WIFI_FREQUENCY_BAND_5GHZ:I = 0x1

.field public static final WIFI_FREQUENCY_BAND_AUTO:I = 0x0

.field public static final WIFI_MODE_FULL:I = 0x1

.field public static final WIFI_MODE_FULL_HIGH_PERF:I = 0x3

.field public static final WIFI_MODE_SCAN_ONLY:I = 0x2

.field public static final WIFI_SCAN_AVAILABLE:Ljava/lang/String; = "wifi_scan_available"

.field public static final WIFI_STATE_CHANGED_ACTION:Ljava/lang/String; = "android.net.wifi.WIFI_STATE_CHANGED"

.field public static final WIFI_STATE_DISABLED:I = 0x1

.field public static final WIFI_STATE_DISABLING:I = 0x0

.field public static final WIFI_STATE_ENABLED:I = 0x3

.field public static final WIFI_STATE_ENABLING:I = 0x2

.field public static final WIFI_STATE_UNKNOWN:I = 0x4

.field public static final WPS_AUTH_FAILURE:I = 0x6

.field public static final WPS_COMPLETED:I = 0x2500d

.field public static final WPS_FAILED:I = 0x2500c

.field public static final WPS_OVERLAP_ERROR:I = 0x3

.field public static final WPS_TIMED_OUT:I = 0x7

.field public static final WPS_TKIP_ONLY_PROHIBITED:I = 0x5

.field public static final WPS_WEP_PROHIBITED:I = 0x4

.field private static sAsyncChannel:Lcom/android/internal/util/AsyncChannel;

.field private static sCM:Landroid/net/ConnectivityManager;

.field private static sConnected:Ljava/util/concurrent/CountDownLatch;

.field private static sHandlerThread:Landroid/os/HandlerThread;

.field private static sListenerKey:I

.field private static final sListenerMap:Landroid/util/SparseArray;

.field private static final sListenerMapLock:Ljava/lang/Object;

.field private static sThreadRefCount:I

.field private static final sThreadRefLock:Ljava/lang/Object;


# instance fields
.field private mActiveLockCount:I

.field private mContext:Landroid/content/Context;

.field private mNetworkCallback:Landroid/net/wifi/WifiManager$PinningNetworkCallback;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "sCM"
    .end annotation
.end field

.field mService:Landroid/net/wifi/IWifiManager;

.field private final mTargetSdkVersion:I


# direct methods
.method static synthetic -get0(Landroid/net/wifi/WifiManager;)I
    .locals 1

    #@0
    iget v0, p0, Landroid/net/wifi/WifiManager;->mActiveLockCount:I

    #@2
    return v0
.end method

.method static synthetic -get1()Lcom/android/internal/util/AsyncChannel;
    .locals 1

    #@0
    sget-object v0, Landroid/net/wifi/WifiManager;->sAsyncChannel:Lcom/android/internal/util/AsyncChannel;

    #@2
    return-object v0
.end method

.method static synthetic -get2()Landroid/net/ConnectivityManager;
    .locals 1

    #@0
    sget-object v0, Landroid/net/wifi/WifiManager;->sCM:Landroid/net/ConnectivityManager;

    #@2
    return-object v0
.end method

.method static synthetic -get3()Ljava/util/concurrent/CountDownLatch;
    .locals 1

    #@0
    sget-object v0, Landroid/net/wifi/WifiManager;->sConnected:Ljava/util/concurrent/CountDownLatch;

    #@2
    return-object v0
.end method

.method static synthetic -get4()Landroid/util/SparseArray;
    .locals 1

    #@0
    sget-object v0, Landroid/net/wifi/WifiManager;->sListenerMap:Landroid/util/SparseArray;

    #@2
    return-object v0
.end method

.method static synthetic -get5()Ljava/lang/Object;
    .locals 1

    #@0
    sget-object v0, Landroid/net/wifi/WifiManager;->sListenerMapLock:Ljava/lang/Object;

    #@2
    return-object v0
.end method

.method static synthetic -set0(Landroid/net/wifi/WifiManager;I)I
    .locals 0

    #@0
    iput p1, p0, Landroid/net/wifi/WifiManager;->mActiveLockCount:I

    #@2
    return p1
.end method

.method static synthetic -set1(Lcom/android/internal/util/AsyncChannel;)Lcom/android/internal/util/AsyncChannel;
    .locals 0

    #@0
    sput-object p0, Landroid/net/wifi/WifiManager;->sAsyncChannel:Lcom/android/internal/util/AsyncChannel;

    #@2
    return-object p0
.end method

.method static synthetic -wrap0(I)Ljava/lang/Object;
    .locals 1
    .param p0, "key"    # I

    #@0
    .prologue
    invoke-static {p0}, Landroid/net/wifi/WifiManager;->removeListener(I)Ljava/lang/Object;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method static synthetic -wrap1(Landroid/net/wifi/WifiManager;)V
    .locals 0

    #@0
    invoke-direct {p0}, Landroid/net/wifi/WifiManager;->unregisterPinningNetworkCallback()V

    #@3
    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 615
    const/4 v0, 0x1

    #@1
    sput v0, Landroid/net/wifi/WifiManager;->sListenerKey:I

    #@3
    .line 616
    new-instance v0, Landroid/util/SparseArray;

    #@5
    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    #@8
    sput-object v0, Landroid/net/wifi/WifiManager;->sListenerMap:Landroid/util/SparseArray;

    #@a
    .line 617
    new-instance v0, Ljava/lang/Object;

    #@c
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    #@f
    sput-object v0, Landroid/net/wifi/WifiManager;->sListenerMapLock:Ljava/lang/Object;

    #@11
    .line 623
    new-instance v0, Ljava/lang/Object;

    #@13
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    #@16
    sput-object v0, Landroid/net/wifi/WifiManager;->sThreadRefLock:Ljava/lang/Object;

    #@18
    .line 74
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/net/wifi/IWifiManager;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "service"    # Landroid/net/wifi/IWifiManager;

    #@0
    .prologue
    .line 642
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 643
    iput-object p1, p0, Landroid/net/wifi/WifiManager;->mContext:Landroid/content/Context;

    #@5
    .line 644
    iput-object p2, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    #@7
    .line 645
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    #@a
    move-result-object v0

    #@b
    iget v0, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    #@d
    iput v0, p0, Landroid/net/wifi/WifiManager;->mTargetSdkVersion:I

    #@f
    .line 646
    invoke-direct {p0}, Landroid/net/wifi/WifiManager;->init()V

    #@12
    .line 642
    return-void
.end method

.method private addOrUpdateNetwork(Landroid/net/wifi/WifiConfiguration;)I
    .locals 2
    .param p1, "config"    # Landroid/net/wifi/WifiConfiguration;

    #@0
    .prologue
    .line 765
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    #@2
    invoke-interface {v1, p1}, Landroid/net/wifi/IWifiManager;->addOrUpdateNetwork(Landroid/net/wifi/WifiConfiguration;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@5
    move-result v1

    #@6
    return v1

    #@7
    .line 766
    :catch_0
    move-exception v0

    #@8
    .line 767
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, -0x1

    #@9
    return v1
.end method

.method public static calculateSignalLevel(II)I
    .locals 3
    .param p0, "rssi"    # I
    .param p1, "numLevels"    # I

    #@0
    .prologue
    .line 1496
    const/16 v1, -0x64

    #@2
    if-gt p0, v1, :cond_0

    #@4
    .line 1497
    const/4 v1, 0x0

    #@5
    return v1

    #@6
    .line 1498
    :cond_0
    const/16 v1, -0x37

    #@8
    if-lt p0, v1, :cond_1

    #@a
    .line 1499
    add-int/lit8 v1, p1, -0x1

    #@c
    return v1

    #@d
    .line 1502
    :cond_1
    add-int/lit8 v1, p1, -0x1

    #@f
    int-to-float v0, v1

    #@10
    .line 1503
    .local v0, "outputRange":F
    add-int/lit8 v1, p0, 0x64

    #@12
    int-to-float v1, v1

    #@13
    mul-float/2addr v1, v0

    #@14
    .line 1501
    const/high16 v2, 0x42340000    # 45.0f

    #@16
    .line 1503
    div-float/2addr v1, v2

    #@17
    float-to-int v1, v1

    #@18
    return v1
.end method

.method public static compareSignalLevel(II)I
    .locals 1
    .param p0, "rssiA"    # I
    .param p1, "rssiB"    # I

    #@0
    .prologue
    .line 1517
    sub-int v0, p0, p1

    #@2
    return v0
.end method

.method private getSupportedFeatures()I
    .locals 2

    #@0
    .prologue
    .line 965
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    #@2
    invoke-interface {v1}, Landroid/net/wifi/IWifiManager;->getSupportedFeatures()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@5
    move-result v1

    #@6
    return v1

    #@7
    .line 966
    :catch_0
    move-exception v0

    #@8
    .line 967
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    #@9
    return v1
.end method

.method private init()V
    .locals 6

    #@0
    .prologue
    const/4 v5, 0x1

    #@1
    .line 2005
    sget-object v4, Landroid/net/wifi/WifiManager;->sThreadRefLock:Ljava/lang/Object;

    #@3
    monitor-enter v4

    #@4
    .line 2006
    :try_start_0
    sget v3, Landroid/net/wifi/WifiManager;->sThreadRefCount:I

    #@6
    add-int/lit8 v3, v3, 0x1

    #@8
    sput v3, Landroid/net/wifi/WifiManager;->sThreadRefCount:I

    #@a
    if-ne v3, v5, :cond_1

    #@c
    .line 2007
    invoke-virtual {p0}, Landroid/net/wifi/WifiManager;->getWifiServiceMessenger()Landroid/os/Messenger;

    #@f
    move-result-object v2

    #@10
    .line 2008
    .local v2, "messenger":Landroid/os/Messenger;
    if-nez v2, :cond_0

    #@12
    .line 2009
    const/4 v3, 0x0

    #@13
    sput-object v3, Landroid/net/wifi/WifiManager;->sAsyncChannel:Lcom/android/internal/util/AsyncChannel;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@15
    monitor-exit v4

    #@16
    .line 2010
    return-void

    #@17
    .line 2013
    :cond_0
    :try_start_1
    new-instance v3, Landroid/os/HandlerThread;

    #@19
    const-string/jumbo v5, "WifiManager"

    #@1c
    invoke-direct {v3, v5}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    #@1f
    sput-object v3, Landroid/net/wifi/WifiManager;->sHandlerThread:Landroid/os/HandlerThread;

    #@21
    .line 2014
    new-instance v3, Lcom/android/internal/util/AsyncChannel;

    #@23
    invoke-direct {v3}, Lcom/android/internal/util/AsyncChannel;-><init>()V

    #@26
    sput-object v3, Landroid/net/wifi/WifiManager;->sAsyncChannel:Lcom/android/internal/util/AsyncChannel;

    #@28
    .line 2015
    new-instance v3, Ljava/util/concurrent/CountDownLatch;

    #@2a
    const/4 v5, 0x1

    #@2b
    invoke-direct {v3, v5}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    #@2e
    sput-object v3, Landroid/net/wifi/WifiManager;->sConnected:Ljava/util/concurrent/CountDownLatch;

    #@30
    .line 2017
    sget-object v3, Landroid/net/wifi/WifiManager;->sHandlerThread:Landroid/os/HandlerThread;

    #@32
    invoke-virtual {v3}, Landroid/os/HandlerThread;->start()V

    #@35
    .line 2018
    new-instance v1, Landroid/net/wifi/WifiManager$ServiceHandler;

    #@37
    sget-object v3, Landroid/net/wifi/WifiManager;->sHandlerThread:Landroid/os/HandlerThread;

    #@39
    invoke-virtual {v3}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    #@3c
    move-result-object v3

    #@3d
    invoke-direct {v1, v3}, Landroid/net/wifi/WifiManager$ServiceHandler;-><init>(Landroid/os/Looper;)V

    #@40
    .line 2019
    .local v1, "handler":Landroid/os/Handler;
    sget-object v3, Landroid/net/wifi/WifiManager;->sAsyncChannel:Lcom/android/internal/util/AsyncChannel;

    #@42
    iget-object v5, p0, Landroid/net/wifi/WifiManager;->mContext:Landroid/content/Context;

    #@44
    invoke-virtual {v3, v5, v1, v2}, Lcom/android/internal/util/AsyncChannel;->connect(Landroid/content/Context;Landroid/os/Handler;Landroid/os/Messenger;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@47
    .line 2021
    :try_start_2
    sget-object v3, Landroid/net/wifi/WifiManager;->sConnected:Ljava/util/concurrent/CountDownLatch;

    #@49
    invoke-virtual {v3}, Ljava/util/concurrent/CountDownLatch;->await()V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@4c
    .end local v1    # "handler":Landroid/os/Handler;
    .end local v2    # "messenger":Landroid/os/Messenger;
    :cond_1
    :goto_0
    monitor-exit v4

    #@4d
    .line 2004
    return-void

    #@4e
    .line 2022
    .restart local v1    # "handler":Landroid/os/Handler;
    .restart local v2    # "messenger":Landroid/os/Messenger;
    :catch_0
    move-exception v0

    #@4f
    .line 2023
    .local v0, "e":Ljava/lang/InterruptedException;
    :try_start_3
    const-string/jumbo v3, "WifiManager"

    #@52
    const-string/jumbo v5, "interrupted wait at init"

    #@55
    invoke-static {v3, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@58
    goto :goto_0

    #@59
    .line 2005
    .end local v0    # "e":Ljava/lang/InterruptedException;
    .end local v1    # "handler":Landroid/os/Handler;
    .end local v2    # "messenger":Landroid/os/Messenger;
    :catchall_0
    move-exception v3

    #@5a
    monitor-exit v4

    #@5b
    throw v3
.end method

.method private initConnectivityManager()V
    .locals 2

    #@0
    .prologue
    .line 2037
    sget-object v0, Landroid/net/wifi/WifiManager;->sCM:Landroid/net/ConnectivityManager;

    #@2
    if-nez v0, :cond_0

    #@4
    .line 2038
    iget-object v0, p0, Landroid/net/wifi/WifiManager;->mContext:Landroid/content/Context;

    #@6
    const-string/jumbo v1, "connectivity"

    #@9
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    #@c
    move-result-object v0

    #@d
    check-cast v0, Landroid/net/ConnectivityManager;

    #@f
    sput-object v0, Landroid/net/wifi/WifiManager;->sCM:Landroid/net/ConnectivityManager;

    #@11
    .line 2039
    sget-object v0, Landroid/net/wifi/WifiManager;->sCM:Landroid/net/ConnectivityManager;

    #@13
    if-nez v0, :cond_0

    #@15
    .line 2040
    new-instance v0, Ljava/lang/IllegalStateException;

    #@17
    const-string/jumbo v1, "Bad luck, ConnectivityService not started."

    #@1a
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@1d
    throw v0

    #@1e
    .line 2034
    :cond_0
    return-void
.end method

.method private isFeatureSupported(I)Z
    .locals 1
    .param p1, "feature"    # I

    #@0
    .prologue
    .line 972
    invoke-direct {p0}, Landroid/net/wifi/WifiManager;->getSupportedFeatures()I

    #@3
    move-result v0

    #@4
    and-int/2addr v0, p1

    #@5
    if-ne v0, p1, :cond_0

    #@7
    const/4 v0, 0x1

    #@8
    :goto_0
    return v0

    #@9
    :cond_0
    const/4 v0, 0x0

    #@a
    goto :goto_0
.end method

.method private static putListener(Ljava/lang/Object;)I
    .locals 3
    .param p0, "listener"    # Ljava/lang/Object;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 1984
    if-nez p0, :cond_0

    #@3
    return v1

    #@4
    .line 1986
    :cond_0
    sget-object v2, Landroid/net/wifi/WifiManager;->sListenerMapLock:Ljava/lang/Object;

    #@6
    monitor-enter v2

    #@7
    .line 1988
    :cond_1
    :try_start_0
    sget v0, Landroid/net/wifi/WifiManager;->sListenerKey:I

    #@9
    add-int/lit8 v1, v0, 0x1

    #@b
    sput v1, Landroid/net/wifi/WifiManager;->sListenerKey:I

    #@d
    .line 1989
    .local v0, "key":I
    if-eqz v0, :cond_1

    #@f
    .line 1990
    sget-object v1, Landroid/net/wifi/WifiManager;->sListenerMap:Landroid/util/SparseArray;

    #@11
    invoke-virtual {v1, v0, p0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@14
    monitor-exit v2

    #@15
    .line 1992
    return v0

    #@16
    .line 1986
    .end local v0    # "key":I
    :catchall_0
    move-exception v1

    #@17
    monitor-exit v2

    #@18
    throw v1
.end method

.method private registerPinningNetworkCallback()V
    .locals 5

    #@0
    .prologue
    .line 2096
    invoke-direct {p0}, Landroid/net/wifi/WifiManager;->initConnectivityManager()V

    #@3
    .line 2097
    sget-object v3, Landroid/net/wifi/WifiManager;->sCM:Landroid/net/ConnectivityManager;

    #@5
    monitor-enter v3

    #@6
    .line 2098
    :try_start_0
    iget-object v2, p0, Landroid/net/wifi/WifiManager;->mNetworkCallback:Landroid/net/wifi/WifiManager$PinningNetworkCallback;

    #@8
    if-nez v2, :cond_0

    #@a
    .line 2100
    new-instance v2, Landroid/net/NetworkRequest$Builder;

    #@c
    invoke-direct {v2}, Landroid/net/NetworkRequest$Builder;-><init>()V

    #@f
    .line 2101
    const/4 v4, 0x1

    #@10
    .line 2100
    invoke-virtual {v2, v4}, Landroid/net/NetworkRequest$Builder;->addTransportType(I)Landroid/net/NetworkRequest$Builder;

    #@13
    move-result-object v2

    #@14
    .line 2102
    const/16 v4, 0xc

    #@16
    .line 2100
    invoke-virtual {v2, v4}, Landroid/net/NetworkRequest$Builder;->removeCapability(I)Landroid/net/NetworkRequest$Builder;

    #@19
    move-result-object v2

    #@1a
    invoke-virtual {v2}, Landroid/net/NetworkRequest$Builder;->build()Landroid/net/NetworkRequest;

    #@1d
    move-result-object v1

    #@1e
    .line 2104
    .local v1, "request":Landroid/net/NetworkRequest;
    new-instance v2, Landroid/net/wifi/WifiManager$PinningNetworkCallback;

    #@20
    const/4 v4, 0x0

    #@21
    invoke-direct {v2, p0, v4}, Landroid/net/wifi/WifiManager$PinningNetworkCallback;-><init>(Landroid/net/wifi/WifiManager;Landroid/net/wifi/WifiManager$PinningNetworkCallback;)V

    #@24
    iput-object v2, p0, Landroid/net/wifi/WifiManager;->mNetworkCallback:Landroid/net/wifi/WifiManager$PinningNetworkCallback;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@26
    .line 2106
    :try_start_1
    sget-object v2, Landroid/net/wifi/WifiManager;->sCM:Landroid/net/ConnectivityManager;

    #@28
    iget-object v4, p0, Landroid/net/wifi/WifiManager;->mNetworkCallback:Landroid/net/wifi/WifiManager$PinningNetworkCallback;

    #@2a
    invoke-virtual {v2, v1, v4}, Landroid/net/ConnectivityManager;->registerNetworkCallback(Landroid/net/NetworkRequest;Landroid/net/ConnectivityManager$NetworkCallback;)V
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@2d
    .end local v1    # "request":Landroid/net/NetworkRequest;
    :cond_0
    :goto_0
    monitor-exit v3

    #@2e
    .line 2095
    return-void

    #@2f
    .line 2107
    .restart local v1    # "request":Landroid/net/NetworkRequest;
    :catch_0
    move-exception v0

    #@30
    .line 2108
    .local v0, "e":Ljava/lang/SecurityException;
    :try_start_2
    const-string/jumbo v2, "WifiManager"

    #@33
    const-string/jumbo v4, "Failed to register network callback"

    #@36
    invoke-static {v2, v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@39
    goto :goto_0

    #@3a
    .line 2097
    .end local v0    # "e":Ljava/lang/SecurityException;
    .end local v1    # "request":Landroid/net/NetworkRequest;
    :catchall_0
    move-exception v2

    #@3b
    monitor-exit v3

    #@3c
    throw v2
.end method

.method private static removeListener(I)Ljava/lang/Object;
    .locals 3
    .param p0, "key"    # I

    #@0
    .prologue
    .line 1996
    if-nez p0, :cond_0

    #@2
    const/4 v1, 0x0

    #@3
    return-object v1

    #@4
    .line 1997
    :cond_0
    sget-object v2, Landroid/net/wifi/WifiManager;->sListenerMapLock:Ljava/lang/Object;

    #@6
    monitor-enter v2

    #@7
    .line 1998
    :try_start_0
    sget-object v1, Landroid/net/wifi/WifiManager;->sListenerMap:Landroid/util/SparseArray;

    #@9
    invoke-virtual {v1, p0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    #@c
    move-result-object v0

    #@d
    .line 1999
    .local v0, "listener":Ljava/lang/Object;
    sget-object v1, Landroid/net/wifi/WifiManager;->sListenerMap:Landroid/util/SparseArray;

    #@f
    invoke-virtual {v1, p0}, Landroid/util/SparseArray;->remove(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@12
    monitor-exit v2

    #@13
    .line 2000
    return-object v0

    #@14
    .line 1997
    .end local v0    # "listener":Ljava/lang/Object;
    :catchall_0
    move-exception v1

    #@15
    monitor-exit v2

    #@16
    throw v1
.end method

.method private unregisterPinningNetworkCallback()V
    .locals 4

    #@0
    .prologue
    .line 2115
    invoke-direct {p0}, Landroid/net/wifi/WifiManager;->initConnectivityManager()V

    #@3
    .line 2116
    sget-object v2, Landroid/net/wifi/WifiManager;->sCM:Landroid/net/ConnectivityManager;

    #@5
    monitor-enter v2

    #@6
    .line 2117
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/WifiManager;->mNetworkCallback:Landroid/net/wifi/WifiManager$PinningNetworkCallback;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@8
    if-eqz v1, :cond_0

    #@a
    .line 2119
    :try_start_1
    sget-object v1, Landroid/net/wifi/WifiManager;->sCM:Landroid/net/ConnectivityManager;

    #@c
    iget-object v3, p0, Landroid/net/wifi/WifiManager;->mNetworkCallback:Landroid/net/wifi/WifiManager$PinningNetworkCallback;

    #@e
    invoke-virtual {v1, v3}, Landroid/net/ConnectivityManager;->unregisterNetworkCallback(Landroid/net/ConnectivityManager$NetworkCallback;)V
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@11
    .line 2123
    :goto_0
    const/4 v1, 0x0

    #@12
    :try_start_2
    iput-object v1, p0, Landroid/net/wifi/WifiManager;->mNetworkCallback:Landroid/net/wifi/WifiManager$PinningNetworkCallback;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@14
    :cond_0
    monitor-exit v2

    #@15
    .line 2114
    return-void

    #@16
    .line 2120
    :catch_0
    move-exception v0

    #@17
    .line 2121
    .local v0, "e":Ljava/lang/SecurityException;
    :try_start_3
    const-string/jumbo v1, "WifiManager"

    #@1a
    const-string/jumbo v3, "Failed to unregister network callback"

    #@1d
    invoke-static {v1, v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@20
    goto :goto_0

    #@21
    .line 2116
    .end local v0    # "e":Ljava/lang/SecurityException;
    :catchall_0
    move-exception v1

    #@22
    monitor-exit v2

    #@23
    throw v1
.end method

.method private validateChannel()V
    .locals 2

    #@0
    .prologue
    .line 2030
    sget-object v0, Landroid/net/wifi/WifiManager;->sAsyncChannel:Lcom/android/internal/util/AsyncChannel;

    #@2
    if-nez v0, :cond_0

    #@4
    new-instance v0, Ljava/lang/IllegalStateException;

    #@6
    .line 2031
    const-string/jumbo v1, "No permission to access and change wifi or a bad initialization"

    #@9
    .line 2030
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@c
    throw v0

    #@d
    .line 2029
    :cond_0
    return-void
.end method


# virtual methods
.method public addNetwork(Landroid/net/wifi/WifiConfiguration;)I
    .locals 1
    .param p1, "config"    # Landroid/net/wifi/WifiConfiguration;

    #@0
    .prologue
    const/4 v0, -0x1

    #@1
    .line 726
    if-nez p1, :cond_0

    #@3
    .line 727
    return v0

    #@4
    .line 729
    :cond_0
    iput v0, p1, Landroid/net/wifi/WifiConfiguration;->networkId:I

    #@6
    .line 730
    invoke-direct {p0, p1}, Landroid/net/wifi/WifiManager;->addOrUpdateNetwork(Landroid/net/wifi/WifiConfiguration;)I

    #@9
    move-result v0

    #@a
    return v0
.end method

.method public addToBlacklist(Ljava/lang/String;)Z
    .locals 2
    .param p1, "bssid"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1665
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    #@2
    invoke-interface {v1, p1}, Landroid/net/wifi/IWifiManager;->addToBlacklist(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@5
    .line 1666
    const/4 v1, 0x1

    #@6
    return v1

    #@7
    .line 1667
    :catch_0
    move-exception v0

    #@8
    .line 1668
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    #@9
    return v1
.end method

.method public buildWifiConfig(Ljava/lang/String;Ljava/lang/String;[B)Landroid/net/wifi/WifiConfiguration;
    .locals 4
    .param p1, "uriString"    # Ljava/lang/String;
    .param p2, "mimeType"    # Ljava/lang/String;
    .param p3, "data"    # [B

    #@0
    .prologue
    .line 1591
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    #@2
    invoke-interface {v1, p1, p2, p3}, Landroid/net/wifi/IWifiManager;->buildWifiConfig(Ljava/lang/String;Ljava/lang/String;[B)Landroid/net/wifi/WifiConfiguration;
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
    const-string/jumbo v1, "WifiManager"

    #@b
    new-instance v2, Ljava/lang/StringBuilder;

    #@d
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@10
    const-string/jumbo v3, "Caught RemoteException trying to build wifi config: "

    #@13
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@16
    move-result-object v2

    #@17
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@1a
    move-result-object v2

    #@1b
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1e
    move-result-object v2

    #@1f
    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@22
    .line 1594
    const/4 v1, 0x0

    #@23
    return-object v1
.end method

.method public cancelWps(Landroid/net/wifi/WifiManager$WpsCallback;)V
    .locals 4
    .param p1, "listener"    # Landroid/net/wifi/WifiManager$WpsCallback;

    #@0
    .prologue
    .line 2266
    invoke-direct {p0}, Landroid/net/wifi/WifiManager;->validateChannel()V

    #@3
    .line 2267
    sget-object v0, Landroid/net/wifi/WifiManager;->sAsyncChannel:Lcom/android/internal/util/AsyncChannel;

    #@5
    invoke-static {p1}, Landroid/net/wifi/WifiManager;->putListener(Ljava/lang/Object;)I

    #@8
    move-result v1

    #@9
    const v2, 0x2500e

    #@c
    const/4 v3, 0x0

    #@d
    invoke-virtual {v0, v2, v3, v1}, Lcom/android/internal/util/AsyncChannel;->sendMessage(III)V

    #@10
    .line 2265
    return-void
.end method

.method public clearBlacklist()Z
    .locals 2

    #@0
    .prologue
    .line 1682
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    #@2
    invoke-interface {v1}, Landroid/net/wifi/IWifiManager;->clearBlacklist()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@5
    .line 1683
    const/4 v1, 0x1

    #@6
    return v1

    #@7
    .line 1684
    :catch_0
    move-exception v0

    #@8
    .line 1685
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    #@9
    return v1
.end method

.method public connect(ILandroid/net/wifi/WifiManager$ActionListener;)V
    .locals 3
    .param p1, "networkId"    # I
    .param p2, "listener"    # Landroid/net/wifi/WifiManager$ActionListener;

    #@0
    .prologue
    .line 2167
    if-gez p1, :cond_0

    #@2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@4
    const-string/jumbo v1, "Network id cannot be negative"

    #@7
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@a
    throw v0

    #@b
    .line 2168
    :cond_0
    invoke-direct {p0}, Landroid/net/wifi/WifiManager;->validateChannel()V

    #@e
    .line 2169
    sget-object v0, Landroid/net/wifi/WifiManager;->sAsyncChannel:Lcom/android/internal/util/AsyncChannel;

    #@10
    invoke-static {p2}, Landroid/net/wifi/WifiManager;->putListener(Ljava/lang/Object;)I

    #@13
    move-result v1

    #@14
    const v2, 0x25001

    #@17
    invoke-virtual {v0, v2, p1, v1}, Lcom/android/internal/util/AsyncChannel;->sendMessage(III)V

    #@1a
    .line 2166
    return-void
.end method

.method public connect(Landroid/net/wifi/WifiConfiguration;Landroid/net/wifi/WifiManager$ActionListener;)V
    .locals 4
    .param p1, "config"    # Landroid/net/wifi/WifiConfiguration;
    .param p2, "listener"    # Landroid/net/wifi/WifiManager$ActionListener;

    #@0
    .prologue
    .line 2145
    if-nez p1, :cond_0

    #@2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@4
    const-string/jumbo v1, "config cannot be null"

    #@7
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@a
    throw v0

    #@b
    .line 2146
    :cond_0
    invoke-direct {p0}, Landroid/net/wifi/WifiManager;->validateChannel()V

    #@e
    .line 2149
    sget-object v0, Landroid/net/wifi/WifiManager;->sAsyncChannel:Lcom/android/internal/util/AsyncChannel;

    #@10
    .line 2150
    invoke-static {p2}, Landroid/net/wifi/WifiManager;->putListener(Ljava/lang/Object;)I

    #@13
    move-result v1

    #@14
    .line 2149
    const v2, 0x25001

    #@17
    const/4 v3, -0x1

    #@18
    invoke-virtual {v0, v2, v3, v1, p1}, Lcom/android/internal/util/AsyncChannel;->sendMessage(IIILjava/lang/Object;)V

    #@1b
    .line 2144
    return-void
.end method

.method public createMulticastLock(Ljava/lang/String;)Landroid/net/wifi/WifiManager$MulticastLock;
    .locals 2
    .param p1, "tag"    # Ljava/lang/String;

    #@0
    .prologue
    .line 2535
    new-instance v0, Landroid/net/wifi/WifiManager$MulticastLock;

    #@2
    const/4 v1, 0x0

    #@3
    invoke-direct {v0, p0, p1, v1}, Landroid/net/wifi/WifiManager$MulticastLock;-><init>(Landroid/net/wifi/WifiManager;Ljava/lang/String;Landroid/net/wifi/WifiManager$MulticastLock;)V

    #@6
    return-object v0
.end method

.method public createWifiLock(ILjava/lang/String;)Landroid/net/wifi/WifiManager$WifiLock;
    .locals 2
    .param p1, "lockType"    # I
    .param p2, "tag"    # Ljava/lang/String;

    #@0
    .prologue
    .line 2501
    new-instance v0, Landroid/net/wifi/WifiManager$WifiLock;

    #@2
    const/4 v1, 0x0

    #@3
    invoke-direct {v0, p0, p1, p2, v1}, Landroid/net/wifi/WifiManager$WifiLock;-><init>(Landroid/net/wifi/WifiManager;ILjava/lang/String;Landroid/net/wifi/WifiManager$WifiLock;)V

    #@6
    return-object v0
.end method

.method public createWifiLock(Ljava/lang/String;)Landroid/net/wifi/WifiManager$WifiLock;
    .locals 3
    .param p1, "tag"    # Ljava/lang/String;

    #@0
    .prologue
    .line 2517
    new-instance v0, Landroid/net/wifi/WifiManager$WifiLock;

    #@2
    const/4 v1, 0x1

    #@3
    const/4 v2, 0x0

    #@4
    invoke-direct {v0, p0, v1, p1, v2}, Landroid/net/wifi/WifiManager$WifiLock;-><init>(Landroid/net/wifi/WifiManager;ILjava/lang/String;Landroid/net/wifi/WifiManager$WifiLock;)V

    #@7
    return-object v0
.end method

.method public disable(ILandroid/net/wifi/WifiManager$ActionListener;)V
    .locals 3
    .param p1, "netId"    # I
    .param p2, "listener"    # Landroid/net/wifi/WifiManager$ActionListener;

    #@0
    .prologue
    .line 2225
    if-gez p1, :cond_0

    #@2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@4
    const-string/jumbo v1, "Network id cannot be negative"

    #@7
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@a
    throw v0

    #@b
    .line 2226
    :cond_0
    invoke-direct {p0}, Landroid/net/wifi/WifiManager;->validateChannel()V

    #@e
    .line 2227
    sget-object v0, Landroid/net/wifi/WifiManager;->sAsyncChannel:Lcom/android/internal/util/AsyncChannel;

    #@10
    invoke-static {p2}, Landroid/net/wifi/WifiManager;->putListener(Ljava/lang/Object;)I

    #@13
    move-result v1

    #@14
    const v2, 0x25011

    #@17
    invoke-virtual {v0, v2, p1, v1}, Lcom/android/internal/util/AsyncChannel;->sendMessage(III)V

    #@1a
    .line 2224
    return-void
.end method

.method public disableEphemeralNetwork(Ljava/lang/String;)V
    .locals 3
    .param p1, "SSID"    # Ljava/lang/String;

    #@0
    .prologue
    .line 2237
    if-nez p1, :cond_0

    #@2
    new-instance v1, Ljava/lang/IllegalArgumentException;

    #@4
    const-string/jumbo v2, "SSID cannot be null"

    #@7
    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@a
    throw v1

    #@b
    .line 2239
    :cond_0
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    #@d
    invoke-interface {v1, p1}, Landroid/net/wifi/IWifiManager;->disableEphemeralNetwork(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@10
    .line 2236
    :goto_0
    return-void

    #@11
    .line 2240
    :catch_0
    move-exception v0

    #@12
    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method public disableNetwork(I)Z
    .locals 2
    .param p1, "netId"    # I

    #@0
    .prologue
    .line 842
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    #@2
    invoke-interface {v1, p1}, Landroid/net/wifi/IWifiManager;->disableNetwork(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@5
    move-result v1

    #@6
    return v1

    #@7
    .line 843
    :catch_0
    move-exception v0

    #@8
    .line 844
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    #@9
    return v1
.end method

.method public disconnect()Z
    .locals 2

    #@0
    .prologue
    .line 855
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    #@2
    invoke-interface {v1}, Landroid/net/wifi/IWifiManager;->disconnect()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@5
    .line 856
    const/4 v1, 0x1

    #@6
    return v1

    #@7
    .line 857
    :catch_0
    move-exception v0

    #@8
    .line 858
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    #@9
    return v1
.end method

.method public enableAggressiveHandover(I)V
    .locals 2
    .param p1, "enabled"    # I

    #@0
    .prologue
    .line 2768
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    #@2
    invoke-interface {v1, p1}, Landroid/net/wifi/IWifiManager;->enableAggressiveHandover(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@5
    .line 2766
    :goto_0
    return-void

    #@6
    .line 2769
    :catch_0
    move-exception v0

    #@7
    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method public enableAutoJoinWhenAssociated(Z)Z
    .locals 2
    .param p1, "enabled"    # Z

    #@0
    .prologue
    .line 2844
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    #@2
    invoke-interface {v1, p1}, Landroid/net/wifi/IWifiManager;->enableAutoJoinWhenAssociated(Z)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@5
    move-result v1

    #@6
    return v1

    #@7
    .line 2845
    :catch_0
    move-exception v0

    #@8
    .line 2846
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    #@9
    return v1
.end method

.method public enableNetwork(IZ)Z
    .locals 5
    .param p1, "netId"    # I
    .param p2, "disableOthers"    # Z

    #@0
    .prologue
    .line 814
    if-eqz p2, :cond_2

    #@2
    iget v3, p0, Landroid/net/wifi/WifiManager;->mTargetSdkVersion:I

    #@4
    const/16 v4, 0x15

    #@6
    if-ge v3, v4, :cond_2

    #@8
    const/4 v1, 0x1

    #@9
    .line 815
    .local v1, "pin":Z
    :goto_0
    if-eqz v1, :cond_0

    #@b
    .line 816
    invoke-direct {p0}, Landroid/net/wifi/WifiManager;->registerPinningNetworkCallback()V

    #@e
    .line 821
    :cond_0
    :try_start_0
    iget-object v3, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    #@10
    invoke-interface {v3, p1, p2}, Landroid/net/wifi/IWifiManager;->enableNetwork(IZ)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@13
    move-result v2

    #@14
    .line 826
    :goto_1
    if-eqz v1, :cond_1

    #@16
    if-eqz v2, :cond_3

    #@18
    .line 830
    :cond_1
    :goto_2
    return v2

    #@19
    .line 814
    .end local v1    # "pin":Z
    :cond_2
    const/4 v1, 0x0

    #@1a
    .restart local v1    # "pin":Z
    goto :goto_0

    #@1b
    .line 822
    :catch_0
    move-exception v0

    #@1c
    .line 823
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v2, 0x0

    #@1d
    .local v2, "success":Z
    goto :goto_1

    #@1e
    .line 827
    .end local v0    # "e":Landroid/os/RemoteException;
    .end local v2    # "success":Z
    :cond_3
    invoke-direct {p0}, Landroid/net/wifi/WifiManager;->unregisterPinningNetworkCallback()V

    #@21
    goto :goto_2
.end method

.method public enableVerboseLogging(I)V
    .locals 4
    .param p1, "verbose"    # I

    #@0
    .prologue
    .line 2742
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    #@2
    invoke-interface {v1, p1}, Landroid/net/wifi/IWifiManager;->enableVerboseLogging(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    #@5
    .line 2740
    :goto_0
    return-void

    #@6
    .line 2743
    :catch_0
    move-exception v0

    #@7
    .line 2745
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v1, "WifiManager"

    #@a
    new-instance v2, Ljava/lang/StringBuilder;

    #@c
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@f
    const-string/jumbo v3, "enableVerboseLogging "

    #@12
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@15
    move-result-object v2

    #@16
    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    #@19
    move-result-object v3

    #@1a
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1d
    move-result-object v2

    #@1e
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@21
    move-result-object v2

    #@22
    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@25
    goto :goto_0
.end method

.method public factoryReset()V
    .locals 2

    #@0
    .prologue
    .line 2818
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    #@2
    invoke-interface {v1}, Landroid/net/wifi/IWifiManager;->factoryReset()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@5
    .line 2816
    :goto_0
    return-void

    #@6
    .line 2819
    :catch_0
    move-exception v0

    #@7
    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method protected finalize()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    #@0
    .prologue
    .line 2726
    :try_start_0
    sget-object v1, Landroid/net/wifi/WifiManager;->sThreadRefLock:Ljava/lang/Object;

    #@2
    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    #@3
    .line 2727
    :try_start_1
    sget v0, Landroid/net/wifi/WifiManager;->sThreadRefCount:I

    #@5
    add-int/lit8 v0, v0, -0x1

    #@7
    sput v0, Landroid/net/wifi/WifiManager;->sThreadRefCount:I

    #@9
    if-nez v0, :cond_0

    #@b
    sget-object v0, Landroid/net/wifi/WifiManager;->sAsyncChannel:Lcom/android/internal/util/AsyncChannel;

    #@d
    if-eqz v0, :cond_0

    #@f
    .line 2728
    sget-object v0, Landroid/net/wifi/WifiManager;->sAsyncChannel:Lcom/android/internal/util/AsyncChannel;

    #@11
    invoke-virtual {v0}, Lcom/android/internal/util/AsyncChannel;->disconnect()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@14
    :cond_0
    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    #@15
    .line 2732
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    #@18
    .line 2724
    return-void

    #@19
    .line 2726
    :catchall_0
    move-exception v0

    #@1a
    :try_start_3
    monitor-exit v1

    #@1b
    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    #@1c
    .line 2731
    :catchall_1
    move-exception v0

    #@1d
    .line 2732
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    #@20
    .line 2731
    throw v0
.end method

.method public forget(ILandroid/net/wifi/WifiManager$ActionListener;)V
    .locals 3
    .param p1, "netId"    # I
    .param p2, "listener"    # Landroid/net/wifi/WifiManager$ActionListener;

    #@0
    .prologue
    .line 2210
    if-gez p1, :cond_0

    #@2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@4
    const-string/jumbo v1, "Network id cannot be negative"

    #@7
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@a
    throw v0

    #@b
    .line 2211
    :cond_0
    invoke-direct {p0}, Landroid/net/wifi/WifiManager;->validateChannel()V

    #@e
    .line 2212
    sget-object v0, Landroid/net/wifi/WifiManager;->sAsyncChannel:Lcom/android/internal/util/AsyncChannel;

    #@10
    invoke-static {p2}, Landroid/net/wifi/WifiManager;->putListener(Ljava/lang/Object;)I

    #@13
    move-result v1

    #@14
    const v2, 0x25004

    #@17
    invoke-virtual {v0, v2, p1, v1}, Lcom/android/internal/util/AsyncChannel;->sendMessage(III)V

    #@1a
    .line 2209
    return-void
.end method

.method public getAggressiveHandover()I
    .locals 2

    #@0
    .prologue
    .line 2781
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    #@2
    invoke-interface {v1}, Landroid/net/wifi/IWifiManager;->getAggressiveHandover()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@5
    move-result v1

    #@6
    return v1

    #@7
    .line 2782
    :catch_0
    move-exception v0

    #@8
    .line 2783
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    #@9
    return v1
.end method

.method public getAllowScansWithTraffic()I
    .locals 2

    #@0
    .prologue
    .line 2805
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    #@2
    invoke-interface {v1}, Landroid/net/wifi/IWifiManager;->getAllowScansWithTraffic()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@5
    move-result v1

    #@6
    return v1

    #@7
    .line 2806
    :catch_0
    move-exception v0

    #@8
    .line 2807
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    #@9
    return v1
.end method

.method public getBatchedScanResults()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/net/wifi/BatchedScanResult;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 1243
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    #@2
    iget-object v2, p0, Landroid/net/wifi/WifiManager;->mContext:Landroid/content/Context;

    #@4
    invoke-virtual {v2}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    #@7
    move-result-object v2

    #@8
    invoke-interface {v1, v2}, Landroid/net/wifi/IWifiManager;->getBatchedScanResults(Ljava/lang/String;)Ljava/util/List;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@b
    move-result-object v1

    #@c
    return-object v1

    #@d
    .line 1244
    :catch_0
    move-exception v0

    #@e
    .line 1245
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    #@f
    return-object v1
.end method

.method public getChannelList()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/net/wifi/WifiChannel;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 917
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    #@2
    invoke-interface {v1}, Landroid/net/wifi/IWifiManager;->getChannelList()Ljava/util/List;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@5
    move-result-object v1

    #@6
    return-object v1

    #@7
    .line 918
    :catch_0
    move-exception v0

    #@8
    .line 919
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    #@9
    return-object v1
.end method

.method public getConfigFile()Ljava/lang/String;
    .locals 2

    #@0
    .prologue
    .line 2294
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    #@2
    invoke-interface {v1}, Landroid/net/wifi/IWifiManager;->getConfigFile()Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@5
    move-result-object v1

    #@6
    return-object v1

    #@7
    .line 2295
    :catch_0
    move-exception v0

    #@8
    .line 2296
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    #@9
    return-object v1
.end method

.method public getConfiguredNetworks()Ljava/util/List;
    .locals 4
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
    .line 670
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    #@2
    invoke-interface {v1}, Landroid/net/wifi/IWifiManager;->getConfiguredNetworks()Ljava/util/List;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@5
    move-result-object v1

    #@6
    return-object v1

    #@7
    .line 671
    :catch_0
    move-exception v0

    #@8
    .line 672
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "WifiManager"

    #@b
    new-instance v2, Ljava/lang/StringBuilder;

    #@d
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@10
    const-string/jumbo v3, "Caught RemoteException trying to get configured networks: "

    #@13
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@16
    move-result-object v2

    #@17
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@1a
    move-result-object v2

    #@1b
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1e
    move-result-object v2

    #@1f
    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@22
    .line 673
    const/4 v1, 0x0

    #@23
    return-object v1
.end method

.method public getConnectionInfo()Landroid/net/wifi/WifiInfo;
    .locals 2

    #@0
    .prologue
    .line 1296
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    #@2
    invoke-interface {v1}, Landroid/net/wifi/IWifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@5
    move-result-object v1

    #@6
    return-object v1

    #@7
    .line 1297
    :catch_0
    move-exception v0

    #@8
    .line 1298
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    #@9
    return-object v1
.end method

.method public getConnectionStatistics()Landroid/net/wifi/WifiConnectionStatistics;
    .locals 2

    #@0
    .prologue
    .line 691
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    #@2
    invoke-interface {v1}, Landroid/net/wifi/IWifiManager;->getConnectionStatistics()Landroid/net/wifi/WifiConnectionStatistics;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@5
    move-result-object v1

    #@6
    return-object v1

    #@7
    .line 692
    :catch_0
    move-exception v0

    #@8
    .line 693
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    #@9
    return-object v1
.end method

.method public getControllerActivityEnergyInfo(I)Landroid/net/wifi/WifiActivityEnergyInfo;
    .locals 6
    .param p1, "updateType"    # I

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    .line 1087
    iget-object v2, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    #@3
    if-nez v2, :cond_0

    #@5
    return-object v5

    #@6
    .line 1090
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Landroid/net/wifi/WifiManager;->isEnhancedPowerReportingSupported()Z

    #@9
    move-result v2

    #@a
    if-nez v2, :cond_1

    #@c
    .line 1091
    return-object v5

    #@d
    .line 1093
    :cond_1
    monitor-enter p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@e
    .line 1094
    :try_start_1
    iget-object v2, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    #@10
    invoke-interface {v2}, Landroid/net/wifi/IWifiManager;->reportActivityInfo()Landroid/net/wifi/WifiActivityEnergyInfo;

    #@13
    move-result-object v1

    #@14
    .line 1095
    .local v1, "record":Landroid/net/wifi/WifiActivityEnergyInfo;
    if-eqz v1, :cond_2

    #@16
    invoke-virtual {v1}, Landroid/net/wifi/WifiActivityEnergyInfo;->isValid()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@19
    move-result v2

    #@1a
    if-eqz v2, :cond_2

    #@1c
    :try_start_2
    monitor-exit p0

    #@1d
    .line 1096
    return-object v1

    #@1e
    :cond_2
    monitor-exit p0

    #@1f
    .line 1098
    return-object v5

    #@20
    .line 1093
    .end local v1    # "record":Landroid/net/wifi/WifiActivityEnergyInfo;
    :catchall_0
    move-exception v2

    #@21
    monitor-exit p0

    #@22
    throw v2
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    #@23
    .line 1101
    :catch_0
    move-exception v0

    #@24
    .line 1102
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v2, "WifiManager"

    #@27
    new-instance v3, Ljava/lang/StringBuilder;

    #@29
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@2c
    const-string/jumbo v4, "getControllerActivityEnergyInfo: "

    #@2f
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@32
    move-result-object v3

    #@33
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@36
    move-result-object v3

    #@37
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3a
    move-result-object v3

    #@3b
    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@3e
    .line 1104
    return-object v5
.end method

.method public getCountryCode()Ljava/lang/String;
    .locals 3

    #@0
    .prologue
    .line 1371
    :try_start_0
    iget-object v2, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    #@2
    invoke-interface {v2}, Landroid/net/wifi/IWifiManager;->getCountryCode()Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@5
    move-result-object v0

    #@6
    .line 1372
    .local v0, "country":Ljava/lang/String;
    return-object v0

    #@7
    .line 1373
    .end local v0    # "country":Ljava/lang/String;
    :catch_0
    move-exception v1

    #@8
    .line 1374
    .local v1, "e":Landroid/os/RemoteException;
    const/4 v2, 0x0

    #@9
    return-object v2
.end method

.method public getCurrentNetwork()Landroid/net/Network;
    .locals 2

    #@0
    .prologue
    .line 2830
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    #@2
    invoke-interface {v1}, Landroid/net/wifi/IWifiManager;->getCurrentNetwork()Landroid/net/Network;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@5
    move-result-object v1

    #@6
    return-object v1

    #@7
    .line 2831
    :catch_0
    move-exception v0

    #@8
    .line 2832
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    #@9
    return-object v1
.end method

.method public getDhcpInfo()Landroid/net/DhcpInfo;
    .locals 2

    #@0
    .prologue
    .line 1430
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    #@2
    invoke-interface {v1}, Landroid/net/wifi/IWifiManager;->getDhcpInfo()Landroid/net/DhcpInfo;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@5
    move-result-object v1

    #@6
    return-object v1

    #@7
    .line 1431
    :catch_0
    move-exception v0

    #@8
    .line 1432
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    #@9
    return-object v1
.end method

.method public getEnableAutoJoinWhenAssociated()Z
    .locals 2

    #@0
    .prologue
    .line 2856
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    #@2
    invoke-interface {v1}, Landroid/net/wifi/IWifiManager;->getEnableAutoJoinWhenAssociated()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@5
    move-result v1

    #@6
    return v1

    #@7
    .line 2857
    :catch_0
    move-exception v0

    #@8
    .line 2858
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    #@9
    return v1
.end method

.method public getFrequencyBand()I
    .locals 2

    #@0
    .prologue
    .line 1404
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    #@2
    invoke-interface {v1}, Landroid/net/wifi/IWifiManager;->getFrequencyBand()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@5
    move-result v1

    #@6
    return v1

    #@7
    .line 1405
    :catch_0
    move-exception v0

    #@8
    .line 1406
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, -0x1

    #@9
    return v1
.end method

.method public getHalBasedAutojoinOffload()I
    .locals 2

    #@0
    .prologue
    .line 2879
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    #@2
    invoke-interface {v1}, Landroid/net/wifi/IWifiManager;->getHalBasedAutojoinOffload()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@5
    move-result v1

    #@6
    return v1

    #@7
    .line 2880
    :catch_0
    move-exception v0

    #@8
    .line 2882
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    #@9
    return v1
.end method

.method public getMatchingWifiConfig(Landroid/net/wifi/ScanResult;)Landroid/net/wifi/WifiConfiguration;
    .locals 2
    .param p1, "scanResult"    # Landroid/net/wifi/ScanResult;

    #@0
    .prologue
    .line 705
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    #@2
    invoke-interface {v1, p1}, Landroid/net/wifi/IWifiManager;->getMatchingWifiConfig(Landroid/net/wifi/ScanResult;)Landroid/net/wifi/WifiConfiguration;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@5
    move-result-object v1

    #@6
    return-object v1

    #@7
    .line 706
    :catch_0
    move-exception v0

    #@8
    .line 707
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    #@9
    return-object v1
.end method

.method public getPrivilegedConfiguredNetworks()Ljava/util/List;
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
    .line 681
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    #@2
    invoke-interface {v1}, Landroid/net/wifi/IWifiManager;->getPrivilegedConfiguredNetworks()Ljava/util/List;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@5
    move-result-object v1

    #@6
    return-object v1

    #@7
    .line 682
    :catch_0
    move-exception v0

    #@8
    .line 683
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    #@9
    return-object v1
.end method

.method public getScanResults()Ljava/util/List;
    .locals 3
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
    .line 1311
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    #@2
    iget-object v2, p0, Landroid/net/wifi/WifiManager;->mContext:Landroid/content/Context;

    #@4
    invoke-virtual {v2}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    #@7
    move-result-object v2

    #@8
    invoke-interface {v1, v2}, Landroid/net/wifi/IWifiManager;->getScanResults(Ljava/lang/String;)Ljava/util/List;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@b
    move-result-object v1

    #@c
    return-object v1

    #@d
    .line 1312
    :catch_0
    move-exception v0

    #@e
    .line 1313
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    #@f
    return-object v1
.end method

.method public getTxPacketCount(Landroid/net/wifi/WifiManager$TxPacketCountListener;)V
    .locals 4
    .param p1, "listener"    # Landroid/net/wifi/WifiManager$TxPacketCountListener;

    #@0
    .prologue
    .line 1481
    invoke-direct {p0}, Landroid/net/wifi/WifiManager;->validateChannel()V

    #@3
    .line 1482
    sget-object v0, Landroid/net/wifi/WifiManager;->sAsyncChannel:Lcom/android/internal/util/AsyncChannel;

    #@5
    invoke-static {p1}, Landroid/net/wifi/WifiManager;->putListener(Ljava/lang/Object;)I

    #@8
    move-result v1

    #@9
    const v2, 0x25014

    #@c
    const/4 v3, 0x0

    #@d
    invoke-virtual {v0, v2, v3, v1}, Lcom/android/internal/util/AsyncChannel;->sendMessage(III)V

    #@10
    .line 1480
    return-void
.end method

.method public getVerboseLoggingLevel()I
    .locals 2

    #@0
    .prologue
    .line 2756
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    #@2
    invoke-interface {v1}, Landroid/net/wifi/IWifiManager;->getVerboseLoggingLevel()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@5
    move-result v1

    #@6
    return v1

    #@7
    .line 2757
    :catch_0
    move-exception v0

    #@8
    .line 2758
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    #@9
    return v1
.end method

.method public getWifiApConfiguration()Landroid/net/wifi/WifiConfiguration;
    .locals 2

    #@0
    .prologue
    .line 1577
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    #@2
    invoke-interface {v1}, Landroid/net/wifi/IWifiManager;->getWifiApConfiguration()Landroid/net/wifi/WifiConfiguration;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@5
    move-result-object v1

    #@6
    return-object v1

    #@7
    .line 1578
    :catch_0
    move-exception v0

    #@8
    .line 1579
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    #@9
    return-object v1
.end method

.method public getWifiApState()I
    .locals 2

    #@0
    .prologue
    .line 1552
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    #@2
    invoke-interface {v1}, Landroid/net/wifi/IWifiManager;->getWifiApEnabledState()I
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
    const/16 v1, 0xe

    #@a
    return v1
.end method

.method public getWifiServiceMessenger()Landroid/os/Messenger;
    .locals 4

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 2279
    :try_start_0
    iget-object v2, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    #@3
    invoke-interface {v2}, Landroid/net/wifi/IWifiManager;->getWifiServiceMessenger()Landroid/os/Messenger;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    #@6
    move-result-object v2

    #@7
    return-object v2

    #@8
    .line 2282
    :catch_0
    move-exception v1

    #@9
    .line 2283
    .local v1, "e":Ljava/lang/SecurityException;
    return-object v3

    #@a
    .line 2280
    .end local v1    # "e":Ljava/lang/SecurityException;
    :catch_1
    move-exception v0

    #@b
    .line 2281
    .local v0, "e":Landroid/os/RemoteException;
    return-object v3
.end method

.method public getWifiState()I
    .locals 2

    #@0
    .prologue
    .line 1459
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    #@2
    invoke-interface {v1}, Landroid/net/wifi/IWifiManager;->getWifiEnabledState()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@5
    move-result v1

    #@6
    return v1

    #@7
    .line 1460
    :catch_0
    move-exception v0

    #@8
    .line 1461
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x4

    #@9
    return v1
.end method

.method public getWpsNfcConfigurationToken(I)Ljava/lang/String;
    .locals 2
    .param p1, "netId"    # I

    #@0
    .prologue
    .line 1284
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    #@2
    invoke-interface {v1, p1}, Landroid/net/wifi/IWifiManager;->getWpsNfcConfigurationToken(I)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@5
    move-result-object v1

    #@6
    return-object v1

    #@7
    .line 1285
    :catch_0
    move-exception v0

    #@8
    .line 1286
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    #@9
    return-object v1
.end method

.method public initializeMulticastFiltering()Z
    .locals 2

    #@0
    .prologue
    .line 2717
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    #@2
    invoke-interface {v1}, Landroid/net/wifi/IWifiManager;->initializeMulticastFiltering()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@5
    .line 2718
    const/4 v1, 0x1

    #@6
    return v1

    #@7
    .line 2719
    :catch_0
    move-exception v0

    #@8
    .line 2720
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    #@9
    return v1
.end method

.method public is5GHzBandSupported()Z
    .locals 1

    #@0
    .prologue
    .line 978
    const/4 v0, 0x2

    #@1
    invoke-direct {p0, v0}, Landroid/net/wifi/WifiManager;->isFeatureSupported(I)Z

    #@4
    move-result v0

    #@5
    return v0
.end method

.method public isAdditionalStaSupported()Z
    .locals 1

    #@0
    .prologue
    .line 1051
    const/16 v0, 0x800

    #@2
    invoke-direct {p0, v0}, Landroid/net/wifi/WifiManager;->isFeatureSupported(I)Z

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public isBatchedScanSupported()Z
    .locals 2

    #@0
    .prologue
    .line 1216
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    #@2
    invoke-interface {v1}, Landroid/net/wifi/IWifiManager;->isBatchedScanSupported()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@5
    move-result v1

    #@6
    return v1

    #@7
    .line 1217
    :catch_0
    move-exception v0

    #@8
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    #@9
    return v1
.end method

.method public isDeviceToApRttSupported()Z
    .locals 1

    #@0
    .prologue
    .line 1036
    const/16 v0, 0x100

    #@2
    invoke-direct {p0, v0}, Landroid/net/wifi/WifiManager;->isFeatureSupported(I)Z

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public isDeviceToDeviceRttSupported()Z
    .locals 1

    #@0
    .prologue
    .line 1028
    const/16 v0, 0x80

    #@2
    invoke-direct {p0, v0}, Landroid/net/wifi/WifiManager;->isFeatureSupported(I)Z

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public isDualBandSupported()Z
    .locals 2

    #@0
    .prologue
    .line 1417
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    #@2
    invoke-interface {v1}, Landroid/net/wifi/IWifiManager;->isDualBandSupported()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@5
    move-result v1

    #@6
    return v1

    #@7
    .line 1418
    :catch_0
    move-exception v0

    #@8
    .line 1419
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    #@9
    return v1
.end method

.method public isEnhancedPowerReportingSupported()Z
    .locals 1

    #@0
    .prologue
    .line 1073
    const/high16 v0, 0x10000

    #@2
    invoke-direct {p0, v0}, Landroid/net/wifi/WifiManager;->isFeatureSupported(I)Z

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public isMulticastEnabled()Z
    .locals 2

    #@0
    .prologue
    .line 2705
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    #@2
    invoke-interface {v1}, Landroid/net/wifi/IWifiManager;->isMulticastEnabled()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@5
    move-result v1

    #@6
    return v1

    #@7
    .line 2706
    :catch_0
    move-exception v0

    #@8
    .line 2707
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    #@9
    return v1
.end method

.method public isNanSupported()Z
    .locals 1

    #@0
    .prologue
    .line 1019
    const/16 v0, 0x40

    #@2
    invoke-direct {p0, v0}, Landroid/net/wifi/WifiManager;->isFeatureSupported(I)Z

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public isOffChannelTdlsSupported()Z
    .locals 1

    #@0
    .prologue
    .line 1066
    const/16 v0, 0x2000

    #@2
    invoke-direct {p0, v0}, Landroid/net/wifi/WifiManager;->isFeatureSupported(I)Z

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public isP2pSupported()Z
    .locals 1

    #@0
    .prologue
    .line 993
    const/16 v0, 0x8

    #@2
    invoke-direct {p0, v0}, Landroid/net/wifi/WifiManager;->isFeatureSupported(I)Z

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public isPasspointSupported()Z
    .locals 1

    #@0
    .prologue
    .line 986
    const/4 v0, 0x4

    #@1
    invoke-direct {p0, v0}, Landroid/net/wifi/WifiManager;->isFeatureSupported(I)Z

    #@4
    move-result v0

    #@5
    return v0
.end method

.method public isPortableHotspotSupported()Z
    .locals 1

    #@0
    .prologue
    .line 1002
    const/16 v0, 0x10

    #@2
    invoke-direct {p0, v0}, Landroid/net/wifi/WifiManager;->isFeatureSupported(I)Z

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public isPreferredNetworkOffloadSupported()Z
    .locals 1

    #@0
    .prologue
    .line 1043
    const/16 v0, 0x400

    #@2
    invoke-direct {p0, v0}, Landroid/net/wifi/WifiManager;->isFeatureSupported(I)Z

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public isScanAlwaysAvailable()Z
    .locals 2

    #@0
    .prologue
    .line 1327
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    #@2
    invoke-interface {v1}, Landroid/net/wifi/IWifiManager;->isScanAlwaysAvailable()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@5
    move-result v1

    #@6
    return v1

    #@7
    .line 1328
    :catch_0
    move-exception v0

    #@8
    .line 1329
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    #@9
    return v1
.end method

.method public isTdlsSupported()Z
    .locals 1

    #@0
    .prologue
    .line 1058
    const/16 v0, 0x1000

    #@2
    invoke-direct {p0, v0}, Landroid/net/wifi/WifiManager;->isFeatureSupported(I)Z

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public isWifiApEnabled()Z
    .locals 2

    #@0
    .prologue
    .line 1566
    invoke-virtual {p0}, Landroid/net/wifi/WifiManager;->getWifiApState()I

    #@3
    move-result v0

    #@4
    const/16 v1, 0xd

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

.method public isWifiEnabled()Z
    .locals 2

    #@0
    .prologue
    .line 1471
    invoke-virtual {p0}, Landroid/net/wifi/WifiManager;->getWifiState()I

    #@3
    move-result v0

    #@4
    const/4 v1, 0x3

    #@5
    if-ne v0, v1, :cond_0

    #@7
    const/4 v0, 0x1

    #@8
    :goto_0
    return v0

    #@9
    :cond_0
    const/4 v0, 0x0

    #@a
    goto :goto_0
.end method

.method public isWifiScannerSupported()Z
    .locals 1

    #@0
    .prologue
    .line 1011
    const/16 v0, 0x20

    #@2
    invoke-direct {p0, v0}, Landroid/net/wifi/WifiManager;->isFeatureSupported(I)Z

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public pingSupplicant()Z
    .locals 3

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 898
    iget-object v1, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    #@3
    if-nez v1, :cond_0

    #@5
    .line 899
    return v2

    #@6
    .line 901
    :cond_0
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    #@8
    invoke-interface {v1}, Landroid/net/wifi/IWifiManager;->pingSupplicant()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@b
    move-result v1

    #@c
    return v1

    #@d
    .line 902
    :catch_0
    move-exception v0

    #@e
    .line 903
    .local v0, "e":Landroid/os/RemoteException;
    return v2
.end method

.method public pollBatchedScan()V
    .locals 2

    #@0
    .prologue
    .line 1271
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    #@2
    invoke-interface {v1}, Landroid/net/wifi/IWifiManager;->pollBatchedScan()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@5
    .line 1269
    :goto_0
    return-void

    #@6
    .line 1272
    :catch_0
    move-exception v0

    #@7
    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method public reassociate()Z
    .locals 2

    #@0
    .prologue
    .line 885
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    #@2
    invoke-interface {v1}, Landroid/net/wifi/IWifiManager;->reassociate()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@5
    .line 886
    const/4 v1, 0x1

    #@6
    return v1

    #@7
    .line 887
    :catch_0
    move-exception v0

    #@8
    .line 888
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    #@9
    return v1
.end method

.method public reconnect()Z
    .locals 2

    #@0
    .prologue
    .line 870
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    #@2
    invoke-interface {v1}, Landroid/net/wifi/IWifiManager;->reconnect()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@5
    .line 871
    const/4 v1, 0x1

    #@6
    return v1

    #@7
    .line 872
    :catch_0
    move-exception v0

    #@8
    .line 873
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    #@9
    return v1
.end method

.method public removeNetwork(I)Z
    .locals 2
    .param p1, "netId"    # I

    #@0
    .prologue
    .line 781
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    #@2
    invoke-interface {v1, p1}, Landroid/net/wifi/IWifiManager;->removeNetwork(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@5
    move-result v1

    #@6
    return v1

    #@7
    .line 782
    :catch_0
    move-exception v0

    #@8
    .line 783
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    #@9
    return v1
.end method

.method public requestBatchedScan(Landroid/net/wifi/BatchedScanSettings;)Z
    .locals 4
    .param p1, "requested"    # Landroid/net/wifi/BatchedScanSettings;

    #@0
    .prologue
    .line 1197
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    #@2
    new-instance v2, Landroid/os/Binder;

    #@4
    invoke-direct {v2}, Landroid/os/Binder;-><init>()V

    #@7
    const/4 v3, 0x0

    #@8
    invoke-interface {v1, p1, v2, v3}, Landroid/net/wifi/IWifiManager;->requestBatchedScan(Landroid/net/wifi/BatchedScanSettings;Landroid/os/IBinder;Landroid/os/WorkSource;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@b
    move-result v1

    #@c
    return v1

    #@d
    .line 1198
    :catch_0
    move-exception v0

    #@e
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    #@f
    return v1
.end method

.method public requestBatchedScan(Landroid/net/wifi/BatchedScanSettings;Landroid/os/WorkSource;)Z
    .locals 3
    .param p1, "requested"    # Landroid/net/wifi/BatchedScanSettings;
    .param p2, "workSource"    # Landroid/os/WorkSource;

    #@0
    .prologue
    .line 1203
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    #@2
    new-instance v2, Landroid/os/Binder;

    #@4
    invoke-direct {v2}, Landroid/os/Binder;-><init>()V

    #@7
    invoke-interface {v1, p1, v2, p2}, Landroid/net/wifi/IWifiManager;->requestBatchedScan(Landroid/net/wifi/BatchedScanSettings;Landroid/os/IBinder;Landroid/os/WorkSource;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@a
    move-result v1

    #@b
    return v1

    #@c
    .line 1204
    :catch_0
    move-exception v0

    #@d
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    #@e
    return v1
.end method

.method public save(Landroid/net/wifi/WifiConfiguration;Landroid/net/wifi/WifiManager$ActionListener;)V
    .locals 4
    .param p1, "config"    # Landroid/net/wifi/WifiConfiguration;
    .param p2, "listener"    # Landroid/net/wifi/WifiManager$ActionListener;

    #@0
    .prologue
    .line 2191
    if-nez p1, :cond_0

    #@2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@4
    const-string/jumbo v1, "config cannot be null"

    #@7
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@a
    throw v0

    #@b
    .line 2192
    :cond_0
    invoke-direct {p0}, Landroid/net/wifi/WifiManager;->validateChannel()V

    #@e
    .line 2193
    sget-object v0, Landroid/net/wifi/WifiManager;->sAsyncChannel:Lcom/android/internal/util/AsyncChannel;

    #@10
    invoke-static {p2}, Landroid/net/wifi/WifiManager;->putListener(Ljava/lang/Object;)I

    #@13
    move-result v1

    #@14
    const v2, 0x25007

    #@17
    const/4 v3, 0x0

    #@18
    invoke-virtual {v0, v2, v3, v1, p1}, Lcom/android/internal/util/AsyncChannel;->sendMessage(IIILjava/lang/Object;)V

    #@1b
    .line 2190
    return-void
.end method

.method public saveConfiguration()Z
    .locals 2

    #@0
    .prologue
    .line 1344
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    #@2
    invoke-interface {v1}, Landroid/net/wifi/IWifiManager;->saveConfiguration()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@5
    move-result v1

    #@6
    return v1

    #@7
    .line 1345
    :catch_0
    move-exception v0

    #@8
    .line 1346
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    #@9
    return v1
.end method

.method public setAllowScansWithTraffic(I)V
    .locals 2
    .param p1, "enabled"    # I

    #@0
    .prologue
    .line 2793
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    #@2
    invoke-interface {v1, p1}, Landroid/net/wifi/IWifiManager;->setAllowScansWithTraffic(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@5
    .line 2791
    :goto_0
    return-void

    #@6
    .line 2794
    :catch_0
    move-exception v0

    #@7
    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method public setCountryCode(Ljava/lang/String;Z)V
    .locals 2
    .param p1, "country"    # Ljava/lang/String;
    .param p2, "persist"    # Z

    #@0
    .prologue
    .line 1359
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    #@2
    invoke-interface {v1, p1, p2}, Landroid/net/wifi/IWifiManager;->setCountryCode(Ljava/lang/String;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@5
    .line 1357
    :goto_0
    return-void

    #@6
    .line 1360
    :catch_0
    move-exception v0

    #@7
    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method public setFrequencyBand(IZ)V
    .locals 2
    .param p1, "band"    # I
    .param p2, "persist"    # Z

    #@0
    .prologue
    .line 1389
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    #@2
    invoke-interface {v1, p1, p2}, Landroid/net/wifi/IWifiManager;->setFrequencyBand(IZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@5
    .line 1387
    :goto_0
    return-void

    #@6
    .line 1390
    :catch_0
    move-exception v0

    #@7
    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method public setHalBasedAutojoinOffload(I)V
    .locals 2
    .param p1, "enabled"    # I

    #@0
    .prologue
    .line 2867
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    #@2
    invoke-interface {v1, p1}, Landroid/net/wifi/IWifiManager;->setHalBasedAutojoinOffload(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@5
    .line 2865
    :goto_0
    return-void

    #@6
    .line 2868
    :catch_0
    move-exception v0

    #@7
    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method public setTdlsEnabled(Ljava/net/InetAddress;Z)V
    .locals 3
    .param p1, "remoteIPAddress"    # Ljava/net/InetAddress;
    .param p2, "enable"    # Z

    #@0
    .prologue
    .line 1712
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    #@2
    invoke-virtual {p1}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    #@5
    move-result-object v2

    #@6
    invoke-interface {v1, v2, p2}, Landroid/net/wifi/IWifiManager;->enableTdls(Ljava/lang/String;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@9
    .line 1710
    :goto_0
    return-void

    #@a
    .line 1713
    :catch_0
    move-exception v0

    #@b
    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method public setTdlsEnabledWithMacAddress(Ljava/lang/String;Z)V
    .locals 2
    .param p1, "remoteMacAddress"    # Ljava/lang/String;
    .param p2, "enable"    # Z

    #@0
    .prologue
    .line 1726
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    #@2
    invoke-interface {v1, p1, p2}, Landroid/net/wifi/IWifiManager;->enableTdlsWithMacAddress(Ljava/lang/String;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@5
    .line 1724
    :goto_0
    return-void

    #@6
    .line 1727
    :catch_0
    move-exception v0

    #@7
    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method public setWifiApConfiguration(Landroid/net/wifi/WifiConfiguration;)Z
    .locals 2
    .param p1, "wifiConfig"    # Landroid/net/wifi/WifiConfiguration;

    #@0
    .prologue
    .line 1606
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    #@2
    invoke-interface {v1, p1}, Landroid/net/wifi/IWifiManager;->setWifiApConfiguration(Landroid/net/wifi/WifiConfiguration;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@5
    .line 1607
    const/4 v1, 0x1

    #@6
    return v1

    #@7
    .line 1608
    :catch_0
    move-exception v0

    #@8
    .line 1609
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    #@9
    return v1
.end method

.method public setWifiApEnabled(Landroid/net/wifi/WifiConfiguration;Z)Z
    .locals 2
    .param p1, "wifiConfig"    # Landroid/net/wifi/WifiConfiguration;
    .param p2, "enabled"    # Z

    #@0
    .prologue
    .line 1534
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    #@2
    invoke-interface {v1, p1, p2}, Landroid/net/wifi/IWifiManager;->setWifiApEnabled(Landroid/net/wifi/WifiConfiguration;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@5
    .line 1535
    const/4 v1, 0x1

    #@6
    return v1

    #@7
    .line 1536
    :catch_0
    move-exception v0

    #@8
    .line 1537
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    #@9
    return v1
.end method

.method public setWifiEnabled(Z)Z
    .locals 2
    .param p1, "enabled"    # Z

    #@0
    .prologue
    .line 1444
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    #@2
    invoke-interface {v1, p1}, Landroid/net/wifi/IWifiManager;->setWifiEnabled(Z)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@5
    move-result v1

    #@6
    return v1

    #@7
    .line 1445
    :catch_0
    move-exception v0

    #@8
    .line 1446
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    #@9
    return v1
.end method

.method public startCustomizedScan(Landroid/net/wifi/ScanSettings;)Z
    .locals 3
    .param p1, "requested"    # Landroid/net/wifi/ScanSettings;

    #@0
    .prologue
    .line 1167
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    #@2
    const/4 v2, 0x0

    #@3
    invoke-interface {v1, p1, v2}, Landroid/net/wifi/IWifiManager;->startScan(Landroid/net/wifi/ScanSettings;Landroid/os/WorkSource;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@6
    .line 1168
    const/4 v1, 0x1

    #@7
    return v1

    #@8
    .line 1169
    :catch_0
    move-exception v0

    #@9
    .line 1170
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    #@a
    return v1
.end method

.method public startCustomizedScan(Landroid/net/wifi/ScanSettings;Landroid/os/WorkSource;)Z
    .locals 2
    .param p1, "requested"    # Landroid/net/wifi/ScanSettings;
    .param p2, "workSource"    # Landroid/os/WorkSource;

    #@0
    .prologue
    .line 1177
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    #@2
    invoke-interface {v1, p1, p2}, Landroid/net/wifi/IWifiManager;->startScan(Landroid/net/wifi/ScanSettings;Landroid/os/WorkSource;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@5
    .line 1178
    const/4 v1, 0x1

    #@6
    return v1

    #@7
    .line 1179
    :catch_0
    move-exception v0

    #@8
    .line 1180
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    #@9
    return v1
.end method

.method public startLocationRestrictedScan(Landroid/os/WorkSource;)Z
    .locals 2
    .param p1, "workSource"    # Landroid/os/WorkSource;

    #@0
    .prologue
    .line 1142
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    #@2
    invoke-interface {v1, p1}, Landroid/net/wifi/IWifiManager;->startLocationRestrictedScan(Landroid/os/WorkSource;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@5
    .line 1143
    const/4 v1, 0x1

    #@6
    return v1

    #@7
    .line 1144
    :catch_0
    move-exception v0

    #@8
    .line 1145
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    #@9
    return v1
.end method

.method public startScan()Z
    .locals 4

    #@0
    .prologue
    .line 1115
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    #@2
    const/4 v2, 0x0

    #@3
    const/4 v3, 0x0

    #@4
    invoke-interface {v1, v2, v3}, Landroid/net/wifi/IWifiManager;->startScan(Landroid/net/wifi/ScanSettings;Landroid/os/WorkSource;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@7
    .line 1116
    const/4 v1, 0x1

    #@8
    return v1

    #@9
    .line 1117
    :catch_0
    move-exception v0

    #@a
    .line 1118
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    #@b
    return v1
.end method

.method public startScan(Landroid/os/WorkSource;)Z
    .locals 3
    .param p1, "workSource"    # Landroid/os/WorkSource;

    #@0
    .prologue
    .line 1126
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    #@2
    const/4 v2, 0x0

    #@3
    invoke-interface {v1, v2, p1}, Landroid/net/wifi/IWifiManager;->startScan(Landroid/net/wifi/ScanSettings;Landroid/os/WorkSource;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@6
    .line 1127
    const/4 v1, 0x1

    #@7
    return v1

    #@8
    .line 1128
    :catch_0
    move-exception v0

    #@9
    .line 1129
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    #@a
    return v1
.end method

.method public startWifi()Z
    .locals 2

    #@0
    .prologue
    .line 1628
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    #@2
    invoke-interface {v1}, Landroid/net/wifi/IWifiManager;->startWifi()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@5
    .line 1629
    const/4 v1, 0x1

    #@6
    return v1

    #@7
    .line 1630
    :catch_0
    move-exception v0

    #@8
    .line 1631
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    #@9
    return v1
.end method

.method public startWps(Landroid/net/wifi/WpsInfo;Landroid/net/wifi/WifiManager$WpsCallback;)V
    .locals 4
    .param p1, "config"    # Landroid/net/wifi/WpsInfo;
    .param p2, "listener"    # Landroid/net/wifi/WifiManager$WpsCallback;

    #@0
    .prologue
    .line 2253
    if-nez p1, :cond_0

    #@2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@4
    const-string/jumbo v1, "config cannot be null"

    #@7
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@a
    throw v0

    #@b
    .line 2254
    :cond_0
    invoke-direct {p0}, Landroid/net/wifi/WifiManager;->validateChannel()V

    #@e
    .line 2255
    sget-object v0, Landroid/net/wifi/WifiManager;->sAsyncChannel:Lcom/android/internal/util/AsyncChannel;

    #@10
    invoke-static {p2}, Landroid/net/wifi/WifiManager;->putListener(Ljava/lang/Object;)I

    #@13
    move-result v1

    #@14
    const v2, 0x2500a

    #@17
    const/4 v3, 0x0

    #@18
    invoke-virtual {v0, v2, v3, v1, p1}, Lcom/android/internal/util/AsyncChannel;->sendMessage(IIILjava/lang/Object;)V

    #@1b
    .line 2252
    return-void
.end method

.method public stopBatchedScan(Landroid/net/wifi/BatchedScanSettings;)V
    .locals 2
    .param p1, "requested"    # Landroid/net/wifi/BatchedScanSettings;

    #@0
    .prologue
    .line 1231
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    #@2
    invoke-interface {v1, p1}, Landroid/net/wifi/IWifiManager;->stopBatchedScan(Landroid/net/wifi/BatchedScanSettings;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@5
    .line 1229
    :goto_0
    return-void

    #@6
    .line 1232
    :catch_0
    move-exception v0

    #@7
    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method public stopWifi()Z
    .locals 2

    #@0
    .prologue
    .line 1648
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    #@2
    invoke-interface {v1}, Landroid/net/wifi/IWifiManager;->stopWifi()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@5
    .line 1649
    const/4 v1, 0x1

    #@6
    return v1

    #@7
    .line 1650
    :catch_0
    move-exception v0

    #@8
    .line 1651
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    #@9
    return v1
.end method

.method public updateNetwork(Landroid/net/wifi/WifiConfiguration;)I
    .locals 1
    .param p1, "config"    # Landroid/net/wifi/WifiConfiguration;

    #@0
    .prologue
    .line 749
    if-eqz p1, :cond_0

    #@2
    iget v0, p1, Landroid/net/wifi/WifiConfiguration;->networkId:I

    #@4
    if-gez v0, :cond_1

    #@6
    .line 750
    :cond_0
    const/4 v0, -0x1

    #@7
    return v0

    #@8
    .line 752
    :cond_1
    invoke-direct {p0, p1}, Landroid/net/wifi/WifiManager;->addOrUpdateNetwork(Landroid/net/wifi/WifiConfiguration;)I

    #@b
    move-result v0

    #@c
    return v0
.end method
