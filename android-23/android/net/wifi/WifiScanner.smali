.class public Landroid/net/wifi/WifiScanner;
.super Ljava/lang/Object;
.source "WifiScanner.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/wifi/WifiScanner$ActionListener;,
        Landroid/net/wifi/WifiScanner$ChannelSpec;,
        Landroid/net/wifi/WifiScanner$ScanSettings;,
        Landroid/net/wifi/WifiScanner$ScanData;,
        Landroid/net/wifi/WifiScanner$ParcelableScanData;,
        Landroid/net/wifi/WifiScanner$ParcelableScanResults;,
        Landroid/net/wifi/WifiScanner$ScanListener;,
        Landroid/net/wifi/WifiScanner$BssidInfo;,
        Landroid/net/wifi/WifiScanner$WifiChangeSettings;,
        Landroid/net/wifi/WifiScanner$WifiChangeListener;,
        Landroid/net/wifi/WifiScanner$BssidListener;,
        Landroid/net/wifi/WifiScanner$HotlistSettings;,
        Landroid/net/wifi/WifiScanner$OperationResult;,
        Landroid/net/wifi/WifiScanner$ServiceHandler;
    }
.end annotation


# static fields
.field private static final BASE:I = 0x27000

.field public static final CMD_AP_FOUND:I = 0x27009

.field public static final CMD_AP_LOST:I = 0x2700a

.field public static final CMD_CONFIGURE_WIFI_CHANGE:I = 0x2700d

.field public static final CMD_FULL_SCAN_RESULT:I = 0x27014

.field public static final CMD_GET_SCAN_RESULTS:I = 0x27004

.field public static final CMD_OP_FAILED:I = 0x27012

.field public static final CMD_OP_SUCCEEDED:I = 0x27011

.field public static final CMD_PERIOD_CHANGED:I = 0x27013

.field public static final CMD_RESET_HOTLIST:I = 0x27007

.field public static final CMD_SCAN:I = 0x27000

.field public static final CMD_SCAN_RESULT:I = 0x27005

.field public static final CMD_SET_HOTLIST:I = 0x27006

.field public static final CMD_SINGLE_SCAN_COMPLETED:I = 0x27017

.field public static final CMD_START_BACKGROUND_SCAN:I = 0x27002

.field public static final CMD_START_SINGLE_SCAN:I = 0x27015

.field public static final CMD_START_TRACKING_CHANGE:I = 0x2700b

.field public static final CMD_STOP_BACKGROUND_SCAN:I = 0x27003

.field public static final CMD_STOP_SINGLE_SCAN:I = 0x27016

.field public static final CMD_STOP_TRACKING_CHANGE:I = 0x2700c

.field public static final CMD_WIFI_CHANGES_STABILIZED:I = 0x27010

.field public static final CMD_WIFI_CHANGE_DETECTED:I = 0x2700f

.field private static final DBG:Z = false

.field public static final GET_AVAILABLE_CHANNELS_EXTRA:Ljava/lang/String; = "Channels"

.field private static final INVALID_KEY:I = 0x0

.field public static final MAX_SCAN_PERIOD_MS:I = 0xfa000

.field public static final MIN_SCAN_PERIOD_MS:I = 0x3e8

.field public static final REASON_INVALID_LISTENER:I = -0x2

.field public static final REASON_INVALID_REQUEST:I = -0x3

.field public static final REASON_NOT_AUTHORIZED:I = -0x4

.field public static final REASON_SUCCEEDED:I = 0x0

.field public static final REASON_UNSPECIFIED:I = -0x1

.field public static final REPORT_EVENT_AFTER_BUFFER_FULL:I = 0x0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final REPORT_EVENT_AFTER_EACH_SCAN:I = 0x1

.field public static final REPORT_EVENT_FULL_SCAN_RESULT:I = 0x2

.field public static final REPORT_EVENT_NO_BATCH:I = 0x4

.field private static final TAG:Ljava/lang/String; = "WifiScanner"

.field public static final WIFI_BAND_24_GHZ:I = 0x1

.field public static final WIFI_BAND_5_GHZ:I = 0x2

.field public static final WIFI_BAND_5_GHZ_DFS_ONLY:I = 0x4

.field public static final WIFI_BAND_5_GHZ_WITH_DFS:I = 0x6

.field public static final WIFI_BAND_BOTH:I = 0x3

.field public static final WIFI_BAND_BOTH_WITH_DFS:I = 0x7

.field public static final WIFI_BAND_UNSPECIFIED:I

.field private static sAsyncChannel:Lcom/android/internal/util/AsyncChannel;

.field private static sConnected:Ljava/util/concurrent/CountDownLatch;

.field private static sHandlerThread:Landroid/os/HandlerThread;

.field private static sListenerKey:I

.field private static final sListenerMap:Landroid/util/SparseArray;

.field private static final sListenerMapLock:Ljava/lang/Object;

.field private static sThreadRefCount:I

.field private static final sThreadRefLock:Ljava/lang/Object;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mService:Landroid/net/wifi/IWifiScanner;


# direct methods
.method static synthetic -get0()Lcom/android/internal/util/AsyncChannel;
    .locals 1

    #@0
    sget-object v0, Landroid/net/wifi/WifiScanner;->sAsyncChannel:Lcom/android/internal/util/AsyncChannel;

    #@2
    return-object v0
.end method

.method static synthetic -get1()Ljava/util/concurrent/CountDownLatch;
    .locals 1

    #@0
    sget-object v0, Landroid/net/wifi/WifiScanner;->sConnected:Ljava/util/concurrent/CountDownLatch;

    #@2
    return-object v0
.end method

.method static synthetic -set0(Lcom/android/internal/util/AsyncChannel;)Lcom/android/internal/util/AsyncChannel;
    .locals 0

    #@0
    sput-object p0, Landroid/net/wifi/WifiScanner;->sAsyncChannel:Lcom/android/internal/util/AsyncChannel;

    #@2
    return-object p0
.end method

.method static synthetic -wrap0(I)Ljava/lang/Object;
    .locals 1
    .param p0, "key"    # I

    #@0
    .prologue
    invoke-static {p0}, Landroid/net/wifi/WifiScanner;->getListener(I)Ljava/lang/Object;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method static synthetic -wrap1(I)Ljava/lang/Object;
    .locals 1
    .param p0, "key"    # I

    #@0
    .prologue
    invoke-static {p0}, Landroid/net/wifi/WifiScanner;->removeListener(I)Ljava/lang/Object;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 780
    const/4 v0, 0x1

    #@1
    sput v0, Landroid/net/wifi/WifiScanner;->sListenerKey:I

    #@3
    .line 782
    new-instance v0, Landroid/util/SparseArray;

    #@5
    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    #@8
    sput-object v0, Landroid/net/wifi/WifiScanner;->sListenerMap:Landroid/util/SparseArray;

    #@a
    .line 783
    new-instance v0, Ljava/lang/Object;

    #@c
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    #@f
    sput-object v0, Landroid/net/wifi/WifiScanner;->sListenerMapLock:Ljava/lang/Object;

    #@11
    .line 788
    new-instance v0, Ljava/lang/Object;

    #@13
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    #@16
    sput-object v0, Landroid/net/wifi/WifiScanner;->sThreadRefLock:Ljava/lang/Object;

    #@18
    .line 48
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/net/wifi/IWifiScanner;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "service"    # Landroid/net/wifi/IWifiScanner;

    #@0
    .prologue
    .line 801
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 802
    iput-object p1, p0, Landroid/net/wifi/WifiScanner;->mContext:Landroid/content/Context;

    #@5
    .line 803
    iput-object p2, p0, Landroid/net/wifi/WifiScanner;->mService:Landroid/net/wifi/IWifiScanner;

    #@7
    .line 804
    invoke-direct {p0}, Landroid/net/wifi/WifiScanner;->init()V

    #@a
    .line 801
    return-void
.end method

.method private static getListener(I)Ljava/lang/Object;
    .locals 3
    .param p0, "key"    # I

    #@0
    .prologue
    .line 858
    if-nez p0, :cond_0

    #@2
    const/4 v1, 0x0

    #@3
    return-object v1

    #@4
    .line 859
    :cond_0
    sget-object v2, Landroid/net/wifi/WifiScanner;->sListenerMapLock:Ljava/lang/Object;

    #@6
    monitor-enter v2

    #@7
    .line 860
    :try_start_0
    sget-object v1, Landroid/net/wifi/WifiScanner;->sListenerMap:Landroid/util/SparseArray;

    #@9
    invoke-virtual {v1, p0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@c
    move-result-object v0

    #@d
    .local v0, "listener":Ljava/lang/Object;
    monitor-exit v2

    #@e
    .line 861
    return-object v0

    #@f
    .line 859
    .end local v0    # "listener":Ljava/lang/Object;
    :catchall_0
    move-exception v1

    #@10
    monitor-exit v2

    #@11
    throw v1
.end method

.method private static getListenerKey(Ljava/lang/Object;)I
    .locals 4
    .param p0, "listener"    # Ljava/lang/Object;

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 866
    if-nez p0, :cond_0

    #@3
    return v3

    #@4
    .line 867
    :cond_0
    sget-object v2, Landroid/net/wifi/WifiScanner;->sListenerMapLock:Ljava/lang/Object;

    #@6
    monitor-enter v2

    #@7
    .line 868
    :try_start_0
    sget-object v1, Landroid/net/wifi/WifiScanner;->sListenerMap:Landroid/util/SparseArray;

    #@9
    invoke-virtual {v1, p0}, Landroid/util/SparseArray;->indexOfValue(Ljava/lang/Object;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@c
    move-result v0

    #@d
    .line 869
    .local v0, "index":I
    const/4 v1, -0x1

    #@e
    if-ne v0, v1, :cond_1

    #@10
    monitor-exit v2

    #@11
    .line 870
    return v3

    #@12
    .line 872
    :cond_1
    :try_start_1
    sget-object v1, Landroid/net/wifi/WifiScanner;->sListenerMap:Landroid/util/SparseArray;

    #@14
    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->keyAt(I)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@17
    move-result v1

    #@18
    monitor-exit v2

    #@19
    return v1

    #@1a
    .line 867
    .end local v0    # "index":I
    :catchall_0
    move-exception v1

    #@1b
    monitor-exit v2

    #@1c
    throw v1
.end method

.method private init()V
    .locals 8

    #@0
    .prologue
    const/4 v7, 0x1

    #@1
    .line 808
    sget-object v6, Landroid/net/wifi/WifiScanner;->sThreadRefLock:Ljava/lang/Object;

    #@3
    monitor-enter v6

    #@4
    .line 809
    :try_start_0
    sget v5, Landroid/net/wifi/WifiScanner;->sThreadRefCount:I

    #@6
    add-int/lit8 v5, v5, 0x1

    #@8
    sput v5, Landroid/net/wifi/WifiScanner;->sThreadRefCount:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@a
    if-ne v5, v7, :cond_1

    #@c
    .line 810
    const/4 v4, 0x0

    #@d
    .line 812
    .local v4, "messenger":Landroid/os/Messenger;
    :try_start_1
    iget-object v5, p0, Landroid/net/wifi/WifiScanner;->mService:Landroid/net/wifi/IWifiScanner;

    #@f
    invoke-interface {v5}, Landroid/net/wifi/IWifiScanner;->getMessenger()Landroid/os/Messenger;
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@12
    move-result-object v4

    #@13
    .line 819
    .end local v4    # "messenger":Landroid/os/Messenger;
    :goto_0
    if-nez v4, :cond_0

    #@15
    .line 820
    const/4 v5, 0x0

    #@16
    :try_start_2
    sput-object v5, Landroid/net/wifi/WifiScanner;->sAsyncChannel:Lcom/android/internal/util/AsyncChannel;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@18
    monitor-exit v6

    #@19
    .line 821
    return-void

    #@1a
    .line 824
    :cond_0
    :try_start_3
    new-instance v5, Landroid/os/HandlerThread;

    #@1c
    const-string/jumbo v7, "WifiScanner"

    #@1f
    invoke-direct {v5, v7}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    #@22
    sput-object v5, Landroid/net/wifi/WifiScanner;->sHandlerThread:Landroid/os/HandlerThread;

    #@24
    .line 825
    new-instance v5, Lcom/android/internal/util/AsyncChannel;

    #@26
    invoke-direct {v5}, Lcom/android/internal/util/AsyncChannel;-><init>()V

    #@29
    sput-object v5, Landroid/net/wifi/WifiScanner;->sAsyncChannel:Lcom/android/internal/util/AsyncChannel;

    #@2b
    .line 826
    new-instance v5, Ljava/util/concurrent/CountDownLatch;

    #@2d
    const/4 v7, 0x1

    #@2e
    invoke-direct {v5, v7}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    #@31
    sput-object v5, Landroid/net/wifi/WifiScanner;->sConnected:Ljava/util/concurrent/CountDownLatch;

    #@33
    .line 828
    sget-object v5, Landroid/net/wifi/WifiScanner;->sHandlerThread:Landroid/os/HandlerThread;

    #@35
    invoke-virtual {v5}, Landroid/os/HandlerThread;->start()V

    #@38
    .line 829
    new-instance v3, Landroid/net/wifi/WifiScanner$ServiceHandler;

    #@3a
    sget-object v5, Landroid/net/wifi/WifiScanner;->sHandlerThread:Landroid/os/HandlerThread;

    #@3c
    invoke-virtual {v5}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    #@3f
    move-result-object v5

    #@40
    invoke-direct {v3, v5}, Landroid/net/wifi/WifiScanner$ServiceHandler;-><init>(Landroid/os/Looper;)V

    #@43
    .line 830
    .local v3, "handler":Landroid/os/Handler;
    sget-object v5, Landroid/net/wifi/WifiScanner;->sAsyncChannel:Lcom/android/internal/util/AsyncChannel;

    #@45
    iget-object v7, p0, Landroid/net/wifi/WifiScanner;->mContext:Landroid/content/Context;

    #@47
    invoke-virtual {v5, v7, v3, v4}, Lcom/android/internal/util/AsyncChannel;->connect(Landroid/content/Context;Landroid/os/Handler;Landroid/os/Messenger;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@4a
    .line 832
    :try_start_4
    sget-object v5, Landroid/net/wifi/WifiScanner;->sConnected:Ljava/util/concurrent/CountDownLatch;

    #@4c
    invoke-virtual {v5}, Ljava/util/concurrent/CountDownLatch;->await()V
    :try_end_4
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    #@4f
    .end local v3    # "handler":Landroid/os/Handler;
    :cond_1
    :goto_1
    monitor-exit v6

    #@50
    .line 807
    return-void

    #@51
    .line 833
    .restart local v3    # "handler":Landroid/os/Handler;
    :catch_0
    move-exception v1

    #@52
    .line 834
    .local v1, "e":Ljava/lang/InterruptedException;
    :try_start_5
    const-string/jumbo v5, "WifiScanner"

    #@55
    const-string/jumbo v7, "interrupted wait at init"

    #@58
    invoke-static {v5, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    #@5b
    goto :goto_1

    #@5c
    .line 808
    .end local v1    # "e":Ljava/lang/InterruptedException;
    .end local v3    # "handler":Landroid/os/Handler;
    :catchall_0
    move-exception v5

    #@5d
    monitor-exit v6

    #@5e
    throw v5

    #@5f
    .line 813
    .restart local v4    # "messenger":Landroid/os/Messenger;
    :catch_1
    move-exception v0

    #@60
    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_0

    #@61
    .line 815
    .end local v0    # "e":Landroid/os/RemoteException;
    :catch_2
    move-exception v2

    #@62
    .local v2, "e":Ljava/lang/SecurityException;
    goto :goto_0
.end method

.method private static putListener(Ljava/lang/Object;)I
    .locals 3
    .param p0, "listener"    # Ljava/lang/Object;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 846
    if-nez p0, :cond_0

    #@3
    return v1

    #@4
    .line 848
    :cond_0
    sget-object v2, Landroid/net/wifi/WifiScanner;->sListenerMapLock:Ljava/lang/Object;

    #@6
    monitor-enter v2

    #@7
    .line 850
    :cond_1
    :try_start_0
    sget v0, Landroid/net/wifi/WifiScanner;->sListenerKey:I

    #@9
    add-int/lit8 v1, v0, 0x1

    #@b
    sput v1, Landroid/net/wifi/WifiScanner;->sListenerKey:I

    #@d
    .line 851
    .local v0, "key":I
    if-eqz v0, :cond_1

    #@f
    .line 852
    sget-object v1, Landroid/net/wifi/WifiScanner;->sListenerMap:Landroid/util/SparseArray;

    #@11
    invoke-virtual {v1, v0, p0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@14
    monitor-exit v2

    #@15
    .line 854
    return v0

    #@16
    .line 848
    .end local v0    # "key":I
    :catchall_0
    move-exception v1

    #@17
    monitor-exit v2

    #@18
    throw v1
.end method

.method private static removeListener(Ljava/lang/Object;)I
    .locals 3
    .param p0, "listener"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 887
    invoke-static {p0}, Landroid/net/wifi/WifiScanner;->getListenerKey(Ljava/lang/Object;)I

    #@3
    move-result v0

    #@4
    .line 888
    .local v0, "key":I
    if-nez v0, :cond_0

    #@6
    return v0

    #@7
    .line 889
    :cond_0
    sget-object v2, Landroid/net/wifi/WifiScanner;->sListenerMapLock:Ljava/lang/Object;

    #@9
    monitor-enter v2

    #@a
    .line 890
    :try_start_0
    sget-object v1, Landroid/net/wifi/WifiScanner;->sListenerMap:Landroid/util/SparseArray;

    #@c
    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->remove(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@f
    monitor-exit v2

    #@10
    .line 891
    return v0

    #@11
    .line 889
    :catchall_0
    move-exception v1

    #@12
    monitor-exit v2

    #@13
    throw v1
.end method

.method private static removeListener(I)Ljava/lang/Object;
    .locals 3
    .param p0, "key"    # I

    #@0
    .prologue
    .line 878
    if-nez p0, :cond_0

    #@2
    const/4 v1, 0x0

    #@3
    return-object v1

    #@4
    .line 879
    :cond_0
    sget-object v2, Landroid/net/wifi/WifiScanner;->sListenerMapLock:Ljava/lang/Object;

    #@6
    monitor-enter v2

    #@7
    .line 880
    :try_start_0
    sget-object v1, Landroid/net/wifi/WifiScanner;->sListenerMap:Landroid/util/SparseArray;

    #@9
    invoke-virtual {v1, p0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    #@c
    move-result-object v0

    #@d
    .line 881
    .local v0, "listener":Ljava/lang/Object;
    sget-object v1, Landroid/net/wifi/WifiScanner;->sListenerMap:Landroid/util/SparseArray;

    #@f
    invoke-virtual {v1, p0}, Landroid/util/SparseArray;->remove(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@12
    monitor-exit v2

    #@13
    .line 882
    return-object v0

    #@14
    .line 879
    .end local v0    # "listener":Ljava/lang/Object;
    :catchall_0
    move-exception v1

    #@15
    monitor-exit v2

    #@16
    throw v1
.end method

.method private validateChannel()V
    .locals 2

    #@0
    .prologue
    .line 841
    sget-object v0, Landroid/net/wifi/WifiScanner;->sAsyncChannel:Lcom/android/internal/util/AsyncChannel;

    #@2
    if-nez v0, :cond_0

    #@4
    new-instance v0, Ljava/lang/IllegalStateException;

    #@6
    .line 842
    const-string/jumbo v1, "No permission to access and change wifi or a bad initialization"

    #@9
    .line 841
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@c
    throw v0

    #@d
    .line 840
    :cond_0
    return-void
.end method


# virtual methods
.method public configureWifiChange(IIIII[Landroid/net/wifi/WifiScanner$BssidInfo;)V
    .locals 1
    .param p1, "rssiSampleSize"    # I
    .param p2, "lostApSampleSize"    # I
    .param p3, "unchangedSampleSize"    # I
    .param p4, "minApsBreachingThreshold"    # I
    .param p5, "periodInMs"    # I
    .param p6, "bssidInfos"    # [Landroid/net/wifi/WifiScanner$BssidInfo;

    #@0
    .prologue
    .line 580
    invoke-direct {p0}, Landroid/net/wifi/WifiScanner;->validateChannel()V

    #@3
    .line 582
    new-instance v0, Landroid/net/wifi/WifiScanner$WifiChangeSettings;

    #@5
    invoke-direct {v0}, Landroid/net/wifi/WifiScanner$WifiChangeSettings;-><init>()V

    #@8
    .line 583
    .local v0, "settings":Landroid/net/wifi/WifiScanner$WifiChangeSettings;
    iput p1, v0, Landroid/net/wifi/WifiScanner$WifiChangeSettings;->rssiSampleSize:I

    #@a
    .line 584
    iput p2, v0, Landroid/net/wifi/WifiScanner$WifiChangeSettings;->lostApSampleSize:I

    #@c
    .line 585
    iput p3, v0, Landroid/net/wifi/WifiScanner$WifiChangeSettings;->unchangedSampleSize:I

    #@e
    .line 586
    iput p4, v0, Landroid/net/wifi/WifiScanner$WifiChangeSettings;->minApsBreachingThreshold:I

    #@10
    .line 587
    iput p5, v0, Landroid/net/wifi/WifiScanner$WifiChangeSettings;->periodInMs:I

    #@12
    .line 588
    iput-object p6, v0, Landroid/net/wifi/WifiScanner$WifiChangeSettings;->bssidInfos:[Landroid/net/wifi/WifiScanner$BssidInfo;

    #@14
    .line 590
    invoke-virtual {p0, v0}, Landroid/net/wifi/WifiScanner;->configureWifiChange(Landroid/net/wifi/WifiScanner$WifiChangeSettings;)V

    #@17
    .line 578
    return-void
.end method

.method public configureWifiChange(Landroid/net/wifi/WifiScanner$WifiChangeSettings;)V
    .locals 3
    .param p1, "settings"    # Landroid/net/wifi/WifiScanner$WifiChangeSettings;

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 630
    invoke-direct {p0}, Landroid/net/wifi/WifiScanner;->validateChannel()V

    #@4
    .line 631
    sget-object v0, Landroid/net/wifi/WifiScanner;->sAsyncChannel:Lcom/android/internal/util/AsyncChannel;

    #@6
    const v1, 0x2700d

    #@9
    invoke-virtual {v0, v1, v2, v2, p1}, Lcom/android/internal/util/AsyncChannel;->sendMessage(IIILjava/lang/Object;)V

    #@c
    .line 629
    return-void
.end method

.method public getAvailableChannels(I)Ljava/util/List;
    .locals 3
    .param p1, "band"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 102
    :try_start_0
    iget-object v2, p0, Landroid/net/wifi/WifiScanner;->mService:Landroid/net/wifi/IWifiScanner;

    #@2
    invoke-interface {v2, p1}, Landroid/net/wifi/IWifiScanner;->getAvailableChannels(I)Landroid/os/Bundle;

    #@5
    move-result-object v0

    #@6
    .line 103
    .local v0, "bundle":Landroid/os/Bundle;
    const-string/jumbo v2, "Channels"

    #@9
    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getIntegerArrayList(Ljava/lang/String;)Ljava/util/ArrayList;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@c
    move-result-object v2

    #@d
    return-object v2

    #@e
    .line 104
    .end local v0    # "bundle":Landroid/os/Bundle;
    :catch_0
    move-exception v1

    #@f
    .line 105
    .local v1, "e":Landroid/os/RemoteException;
    const/4 v2, 0x0

    #@10
    return-object v2
.end method

.method public getScanResults()Z
    .locals 4

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 456
    invoke-direct {p0}, Landroid/net/wifi/WifiScanner;->validateChannel()V

    #@4
    .line 457
    sget-object v2, Landroid/net/wifi/WifiScanner;->sAsyncChannel:Lcom/android/internal/util/AsyncChannel;

    #@6
    const v3, 0x27004

    #@9
    invoke-virtual {v2, v3, v1}, Lcom/android/internal/util/AsyncChannel;->sendMessageSynchronously(II)Landroid/os/Message;

    #@c
    move-result-object v0

    #@d
    .line 458
    .local v0, "reply":Landroid/os/Message;
    iget v2, v0, Landroid/os/Message;->what:I

    #@f
    const v3, 0x27011

    #@12
    if-ne v2, v3, :cond_0

    #@14
    const/4 v1, 0x1

    #@15
    :cond_0
    return v1
.end method

.method public startBackgroundScan(Landroid/net/wifi/WifiScanner$ScanSettings;Landroid/net/wifi/WifiScanner$ScanListener;)V
    .locals 4
    .param p1, "settings"    # Landroid/net/wifi/WifiScanner$ScanSettings;
    .param p2, "listener"    # Landroid/net/wifi/WifiScanner$ScanListener;

    #@0
    .prologue
    .line 439
    invoke-direct {p0}, Landroid/net/wifi/WifiScanner;->validateChannel()V

    #@3
    .line 440
    sget-object v0, Landroid/net/wifi/WifiScanner;->sAsyncChannel:Lcom/android/internal/util/AsyncChannel;

    #@5
    invoke-static {p2}, Landroid/net/wifi/WifiScanner;->putListener(Ljava/lang/Object;)I

    #@8
    move-result v1

    #@9
    const v2, 0x27002

    #@c
    const/4 v3, 0x0

    #@d
    invoke-virtual {v0, v2, v3, v1, p1}, Lcom/android/internal/util/AsyncChannel;->sendMessage(IIILjava/lang/Object;)V

    #@10
    .line 438
    return-void
.end method

.method public startScan(Landroid/net/wifi/WifiScanner$ScanSettings;Landroid/net/wifi/WifiScanner$ScanListener;)V
    .locals 4
    .param p1, "settings"    # Landroid/net/wifi/WifiScanner$ScanSettings;
    .param p2, "listener"    # Landroid/net/wifi/WifiScanner$ScanListener;

    #@0
    .prologue
    .line 470
    invoke-direct {p0}, Landroid/net/wifi/WifiScanner;->validateChannel()V

    #@3
    .line 471
    sget-object v0, Landroid/net/wifi/WifiScanner;->sAsyncChannel:Lcom/android/internal/util/AsyncChannel;

    #@5
    invoke-static {p2}, Landroid/net/wifi/WifiScanner;->putListener(Ljava/lang/Object;)I

    #@8
    move-result v1

    #@9
    const v2, 0x27015

    #@c
    const/4 v3, 0x0

    #@d
    invoke-virtual {v0, v2, v3, v1, p1}, Lcom/android/internal/util/AsyncChannel;->sendMessage(IIILjava/lang/Object;)V

    #@10
    .line 469
    return-void
.end method

.method public startTrackingBssids([Landroid/net/wifi/WifiScanner$BssidInfo;ILandroid/net/wifi/WifiScanner$BssidListener;)V
    .locals 5
    .param p1, "bssidInfos"    # [Landroid/net/wifi/WifiScanner$BssidInfo;
    .param p2, "apLostThreshold"    # I
    .param p3, "listener"    # Landroid/net/wifi/WifiScanner$BssidListener;

    #@0
    .prologue
    .line 709
    invoke-direct {p0}, Landroid/net/wifi/WifiScanner;->validateChannel()V

    #@3
    .line 710
    new-instance v0, Landroid/net/wifi/WifiScanner$HotlistSettings;

    #@5
    invoke-direct {v0}, Landroid/net/wifi/WifiScanner$HotlistSettings;-><init>()V

    #@8
    .line 711
    .local v0, "settings":Landroid/net/wifi/WifiScanner$HotlistSettings;
    iput-object p1, v0, Landroid/net/wifi/WifiScanner$HotlistSettings;->bssidInfos:[Landroid/net/wifi/WifiScanner$BssidInfo;

    #@a
    .line 712
    sget-object v1, Landroid/net/wifi/WifiScanner;->sAsyncChannel:Lcom/android/internal/util/AsyncChannel;

    #@c
    invoke-static {p3}, Landroid/net/wifi/WifiScanner;->putListener(Ljava/lang/Object;)I

    #@f
    move-result v2

    #@10
    const v3, 0x27006

    #@13
    const/4 v4, 0x0

    #@14
    invoke-virtual {v1, v3, v4, v2, v0}, Lcom/android/internal/util/AsyncChannel;->sendMessage(IIILjava/lang/Object;)V

    #@17
    .line 708
    return-void
.end method

.method public startTrackingWifiChange(Landroid/net/wifi/WifiScanner$WifiChangeListener;)V
    .locals 4
    .param p1, "listener"    # Landroid/net/wifi/WifiScanner$WifiChangeListener;

    #@0
    .prologue
    .line 613
    invoke-direct {p0}, Landroid/net/wifi/WifiScanner;->validateChannel()V

    #@3
    .line 614
    sget-object v0, Landroid/net/wifi/WifiScanner;->sAsyncChannel:Lcom/android/internal/util/AsyncChannel;

    #@5
    invoke-static {p1}, Landroid/net/wifi/WifiScanner;->putListener(Ljava/lang/Object;)I

    #@8
    move-result v1

    #@9
    const v2, 0x2700b

    #@c
    const/4 v3, 0x0

    #@d
    invoke-virtual {v0, v2, v3, v1}, Lcom/android/internal/util/AsyncChannel;->sendMessage(III)V

    #@10
    .line 612
    return-void
.end method

.method public stopBackgroundScan(Landroid/net/wifi/WifiScanner$ScanListener;)V
    .locals 4
    .param p1, "listener"    # Landroid/net/wifi/WifiScanner$ScanListener;

    #@0
    .prologue
    .line 448
    invoke-direct {p0}, Landroid/net/wifi/WifiScanner;->validateChannel()V

    #@3
    .line 449
    sget-object v0, Landroid/net/wifi/WifiScanner;->sAsyncChannel:Lcom/android/internal/util/AsyncChannel;

    #@5
    invoke-static {p1}, Landroid/net/wifi/WifiScanner;->removeListener(Ljava/lang/Object;)I

    #@8
    move-result v1

    #@9
    const v2, 0x27003

    #@c
    const/4 v3, 0x0

    #@d
    invoke-virtual {v0, v2, v3, v1}, Lcom/android/internal/util/AsyncChannel;->sendMessage(III)V

    #@10
    .line 447
    return-void
.end method

.method public stopScan(Landroid/net/wifi/WifiScanner$ScanListener;)V
    .locals 4
    .param p1, "listener"    # Landroid/net/wifi/WifiScanner$ScanListener;

    #@0
    .prologue
    .line 480
    invoke-direct {p0}, Landroid/net/wifi/WifiScanner;->validateChannel()V

    #@3
    .line 481
    sget-object v0, Landroid/net/wifi/WifiScanner;->sAsyncChannel:Lcom/android/internal/util/AsyncChannel;

    #@5
    invoke-static {p1}, Landroid/net/wifi/WifiScanner;->removeListener(Ljava/lang/Object;)I

    #@8
    move-result v1

    #@9
    const v2, 0x27016

    #@c
    const/4 v3, 0x0

    #@d
    invoke-virtual {v0, v2, v3, v1}, Lcom/android/internal/util/AsyncChannel;->sendMessage(III)V

    #@10
    .line 479
    return-void
.end method

.method public stopTrackingBssids(Landroid/net/wifi/WifiScanner$BssidListener;)V
    .locals 4
    .param p1, "listener"    # Landroid/net/wifi/WifiScanner$BssidListener;

    #@0
    .prologue
    .line 720
    invoke-direct {p0}, Landroid/net/wifi/WifiScanner;->validateChannel()V

    #@3
    .line 721
    sget-object v0, Landroid/net/wifi/WifiScanner;->sAsyncChannel:Lcom/android/internal/util/AsyncChannel;

    #@5
    invoke-static {p1}, Landroid/net/wifi/WifiScanner;->removeListener(Ljava/lang/Object;)I

    #@8
    move-result v1

    #@9
    const v2, 0x27007

    #@c
    const/4 v3, 0x0

    #@d
    invoke-virtual {v0, v2, v3, v1}, Lcom/android/internal/util/AsyncChannel;->sendMessage(III)V

    #@10
    .line 719
    return-void
.end method

.method public stopTrackingWifiChange(Landroid/net/wifi/WifiScanner$WifiChangeListener;)V
    .locals 4
    .param p1, "listener"    # Landroid/net/wifi/WifiScanner$WifiChangeListener;

    #@0
    .prologue
    .line 623
    invoke-direct {p0}, Landroid/net/wifi/WifiScanner;->validateChannel()V

    #@3
    .line 624
    sget-object v0, Landroid/net/wifi/WifiScanner;->sAsyncChannel:Lcom/android/internal/util/AsyncChannel;

    #@5
    invoke-static {p1}, Landroid/net/wifi/WifiScanner;->removeListener(Ljava/lang/Object;)I

    #@8
    move-result v1

    #@9
    const v2, 0x2700c

    #@c
    const/4 v3, 0x0

    #@d
    invoke-virtual {v0, v2, v3, v1}, Lcom/android/internal/util/AsyncChannel;->sendMessage(III)V

    #@10
    .line 622
    return-void
.end method
