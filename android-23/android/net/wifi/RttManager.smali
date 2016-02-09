.class public Landroid/net/wifi/RttManager;
.super Ljava/lang/Object;
.source "RttManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/wifi/RttManager$Capabilities;,
        Landroid/net/wifi/RttManager$RttCapabilities;,
        Landroid/net/wifi/RttManager$RttParams;,
        Landroid/net/wifi/RttManager$ParcelableRttParams;,
        Landroid/net/wifi/RttManager$WifiInformationElement;,
        Landroid/net/wifi/RttManager$RttResult;,
        Landroid/net/wifi/RttManager$ParcelableRttResults;,
        Landroid/net/wifi/RttManager$RttListener;,
        Landroid/net/wifi/RttManager$ServiceHandler;
    }
.end annotation


# static fields
.field public static final BASE:I = 0x27200

.field public static final CMD_OP_ABORTED:I = 0x27204

.field public static final CMD_OP_FAILED:I = 0x27202

.field public static final CMD_OP_START_RANGING:I = 0x27200

.field public static final CMD_OP_STOP_RANGING:I = 0x27201

.field public static final CMD_OP_SUCCEEDED:I = 0x27203

.field private static final DBG:Z = true

.field public static final DESCRIPTION_KEY:Ljava/lang/String; = "android.net.wifi.RttManager.Description"

.field private static final INVALID_KEY:I = 0x0

.field public static final PREAMBLE_HT:I = 0x2

.field public static final PREAMBLE_LEGACY:I = 0x1

.field public static final PREAMBLE_VHT:I = 0x4

.field public static final REASON_INVALID_LISTENER:I = -0x3

.field public static final REASON_INVALID_REQUEST:I = -0x4

.field public static final REASON_NOT_AVAILABLE:I = -0x2

.field public static final REASON_PERMISSION_DENIED:I = -0x5

.field public static final REASON_UNSPECIFIED:I = -0x1

.field public static final RTT_BW_10_SUPPORT:I = 0x2

.field public static final RTT_BW_160_SUPPORT:I = 0x20

.field public static final RTT_BW_20_SUPPORT:I = 0x4

.field public static final RTT_BW_40_SUPPORT:I = 0x8

.field public static final RTT_BW_5_SUPPORT:I = 0x1

.field public static final RTT_BW_80_SUPPORT:I = 0x10

.field public static final RTT_CHANNEL_WIDTH_10:I = 0x6
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final RTT_CHANNEL_WIDTH_160:I = 0x3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final RTT_CHANNEL_WIDTH_20:I = 0x0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final RTT_CHANNEL_WIDTH_40:I = 0x1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final RTT_CHANNEL_WIDTH_5:I = 0x5
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final RTT_CHANNEL_WIDTH_80:I = 0x2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final RTT_CHANNEL_WIDTH_80P80:I = 0x4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final RTT_CHANNEL_WIDTH_UNSPECIFIED:I = -0x1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final RTT_PEER_NAN:I = 0x5

.field public static final RTT_PEER_P2P_CLIENT:I = 0x4

.field public static final RTT_PEER_P2P_GO:I = 0x3

.field public static final RTT_PEER_TYPE_AP:I = 0x1

.field public static final RTT_PEER_TYPE_STA:I = 0x2

.field public static final RTT_PEER_TYPE_UNSPECIFIED:I = 0x0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final RTT_STATUS_ABORTED:I = 0x8

.field public static final RTT_STATUS_FAILURE:I = 0x1

.field public static final RTT_STATUS_FAIL_AP_ON_DIFF_CHANNEL:I = 0x6

.field public static final RTT_STATUS_FAIL_BUSY_TRY_LATER:I = 0xc

.field public static final RTT_STATUS_FAIL_FTM_PARAM_OVERRIDE:I = 0xf

.field public static final RTT_STATUS_FAIL_INVALID_TS:I = 0x9

.field public static final RTT_STATUS_FAIL_NOT_SCHEDULED_YET:I = 0x4

.field public static final RTT_STATUS_FAIL_NO_CAPABILITY:I = 0x7

.field public static final RTT_STATUS_FAIL_NO_RSP:I = 0x2

.field public static final RTT_STATUS_FAIL_PROTOCOL:I = 0xa

.field public static final RTT_STATUS_FAIL_REJECTED:I = 0x3

.field public static final RTT_STATUS_FAIL_SCHEDULE:I = 0xb

.field public static final RTT_STATUS_FAIL_TM_TIMEOUT:I = 0x5

.field public static final RTT_STATUS_INVALID_REQ:I = 0xd

.field public static final RTT_STATUS_NO_WIFI:I = 0xe

.field public static final RTT_STATUS_SUCCESS:I = 0x0

.field public static final RTT_TYPE_11_MC:I = 0x4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final RTT_TYPE_11_V:I = 0x2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final RTT_TYPE_ONE_SIDED:I = 0x1

.field public static final RTT_TYPE_TWO_SIDED:I = 0x2

.field public static final RTT_TYPE_UNSPECIFIED:I = 0x0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "RttManager"

.field private static sAsyncChannel:Lcom/android/internal/util/AsyncChannel;

.field private static final sCapabilitiesLock:Ljava/lang/Object;

.field private static sConnected:Ljava/util/concurrent/CountDownLatch;

.field private static sHandlerThread:Landroid/os/HandlerThread;

.field private static sListenerKey:I

.field private static final sListenerMap:Landroid/util/SparseArray;

.field private static final sListenerMapLock:Ljava/lang/Object;

.field private static sThreadRefCount:I

.field private static final sThreadRefLock:Ljava/lang/Object;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mRttCapabilities:Landroid/net/wifi/RttManager$RttCapabilities;

.field private mService:Landroid/net/wifi/IRttManager;


# direct methods
.method static synthetic -get0()Lcom/android/internal/util/AsyncChannel;
    .locals 1

    #@0
    sget-object v0, Landroid/net/wifi/RttManager;->sAsyncChannel:Lcom/android/internal/util/AsyncChannel;

    #@2
    return-object v0
.end method

.method static synthetic -get1()Ljava/util/concurrent/CountDownLatch;
    .locals 1

    #@0
    sget-object v0, Landroid/net/wifi/RttManager;->sConnected:Ljava/util/concurrent/CountDownLatch;

    #@2
    return-object v0
.end method

.method static synthetic -set0(Lcom/android/internal/util/AsyncChannel;)Lcom/android/internal/util/AsyncChannel;
    .locals 0

    #@0
    sput-object p0, Landroid/net/wifi/RttManager;->sAsyncChannel:Lcom/android/internal/util/AsyncChannel;

    #@2
    return-object p0
.end method

.method static synthetic -wrap0(I)Ljava/lang/Object;
    .locals 1
    .param p0, "key"    # I

    #@0
    .prologue
    invoke-static {p0}, Landroid/net/wifi/RttManager;->getListener(I)Ljava/lang/Object;

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
    invoke-static {p0}, Landroid/net/wifi/RttManager;->removeListener(I)Ljava/lang/Object;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 915
    const/4 v0, 0x1

    #@1
    sput v0, Landroid/net/wifi/RttManager;->sListenerKey:I

    #@3
    .line 917
    new-instance v0, Landroid/util/SparseArray;

    #@5
    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    #@8
    sput-object v0, Landroid/net/wifi/RttManager;->sListenerMap:Landroid/util/SparseArray;

    #@a
    .line 918
    new-instance v0, Ljava/lang/Object;

    #@c
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    #@f
    sput-object v0, Landroid/net/wifi/RttManager;->sListenerMapLock:Ljava/lang/Object;

    #@11
    .line 919
    new-instance v0, Ljava/lang/Object;

    #@13
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    #@16
    sput-object v0, Landroid/net/wifi/RttManager;->sCapabilitiesLock:Ljava/lang/Object;

    #@18
    .line 924
    new-instance v0, Ljava/lang/Object;

    #@1a
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    #@1d
    sput-object v0, Landroid/net/wifi/RttManager;->sThreadRefLock:Ljava/lang/Object;

    #@1f
    .line 24
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/net/wifi/IRttManager;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "service"    # Landroid/net/wifi/IRttManager;

    #@0
    .prologue
    .line 938
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 939
    iput-object p1, p0, Landroid/net/wifi/RttManager;->mContext:Landroid/content/Context;

    #@5
    .line 940
    iput-object p2, p0, Landroid/net/wifi/RttManager;->mService:Landroid/net/wifi/IRttManager;

    #@7
    .line 941
    invoke-direct {p0}, Landroid/net/wifi/RttManager;->init()V

    #@a
    .line 938
    return-void
.end method

.method private static getListener(I)Ljava/lang/Object;
    .locals 3
    .param p0, "key"    # I

    #@0
    .prologue
    .line 996
    if-nez p0, :cond_0

    #@2
    const/4 v1, 0x0

    #@3
    return-object v1

    #@4
    .line 997
    :cond_0
    sget-object v2, Landroid/net/wifi/RttManager;->sListenerMapLock:Ljava/lang/Object;

    #@6
    monitor-enter v2

    #@7
    .line 998
    :try_start_0
    sget-object v1, Landroid/net/wifi/RttManager;->sListenerMap:Landroid/util/SparseArray;

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
    .line 999
    return-object v0

    #@f
    .line 997
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
    .line 1004
    if-nez p0, :cond_0

    #@3
    return v3

    #@4
    .line 1005
    :cond_0
    sget-object v2, Landroid/net/wifi/RttManager;->sListenerMapLock:Ljava/lang/Object;

    #@6
    monitor-enter v2

    #@7
    .line 1006
    :try_start_0
    sget-object v1, Landroid/net/wifi/RttManager;->sListenerMap:Landroid/util/SparseArray;

    #@9
    invoke-virtual {v1, p0}, Landroid/util/SparseArray;->indexOfValue(Ljava/lang/Object;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@c
    move-result v0

    #@d
    .line 1007
    .local v0, "index":I
    const/4 v1, -0x1

    #@e
    if-ne v0, v1, :cond_1

    #@10
    monitor-exit v2

    #@11
    .line 1008
    return v3

    #@12
    .line 1010
    :cond_1
    :try_start_1
    sget-object v1, Landroid/net/wifi/RttManager;->sListenerMap:Landroid/util/SparseArray;

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
    .line 1005
    .end local v0    # "index":I
    :catchall_0
    move-exception v1

    #@1b
    monitor-exit v2

    #@1c
    throw v1
.end method

.method private init()V
    .locals 9

    #@0
    .prologue
    const/4 v7, 0x1

    #@1
    .line 945
    sget-object v6, Landroid/net/wifi/RttManager;->sThreadRefLock:Ljava/lang/Object;

    #@3
    monitor-enter v6

    #@4
    .line 946
    :try_start_0
    sget v5, Landroid/net/wifi/RttManager;->sThreadRefCount:I

    #@6
    add-int/lit8 v5, v5, 0x1

    #@8
    sput v5, Landroid/net/wifi/RttManager;->sThreadRefCount:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@a
    if-ne v5, v7, :cond_1

    #@c
    .line 947
    const/4 v4, 0x0

    #@d
    .line 949
    .local v4, "messenger":Landroid/os/Messenger;
    :try_start_1
    const-string/jumbo v5, "RttManager"

    #@10
    new-instance v7, Ljava/lang/StringBuilder;

    #@12
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    #@15
    const-string/jumbo v8, "Get the messenger from "

    #@18
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1b
    move-result-object v7

    #@1c
    iget-object v8, p0, Landroid/net/wifi/RttManager;->mService:Landroid/net/wifi/IRttManager;

    #@1e
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@21
    move-result-object v7

    #@22
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@25
    move-result-object v7

    #@26
    invoke-static {v5, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@29
    .line 950
    iget-object v5, p0, Landroid/net/wifi/RttManager;->mService:Landroid/net/wifi/IRttManager;

    #@2b
    invoke-interface {v5}, Landroid/net/wifi/IRttManager;->getMessenger()Landroid/os/Messenger;
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@2e
    move-result-object v4

    #@2f
    .line 957
    .end local v4    # "messenger":Landroid/os/Messenger;
    :goto_0
    if-nez v4, :cond_0

    #@31
    .line 958
    const/4 v5, 0x0

    #@32
    :try_start_2
    sput-object v5, Landroid/net/wifi/RttManager;->sAsyncChannel:Lcom/android/internal/util/AsyncChannel;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@34
    monitor-exit v6

    #@35
    .line 959
    return-void

    #@36
    .line 962
    :cond_0
    :try_start_3
    new-instance v5, Landroid/os/HandlerThread;

    #@38
    const-string/jumbo v7, "RttManager"

    #@3b
    invoke-direct {v5, v7}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    #@3e
    sput-object v5, Landroid/net/wifi/RttManager;->sHandlerThread:Landroid/os/HandlerThread;

    #@40
    .line 963
    new-instance v5, Lcom/android/internal/util/AsyncChannel;

    #@42
    invoke-direct {v5}, Lcom/android/internal/util/AsyncChannel;-><init>()V

    #@45
    sput-object v5, Landroid/net/wifi/RttManager;->sAsyncChannel:Lcom/android/internal/util/AsyncChannel;

    #@47
    .line 964
    new-instance v5, Ljava/util/concurrent/CountDownLatch;

    #@49
    const/4 v7, 0x1

    #@4a
    invoke-direct {v5, v7}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    #@4d
    sput-object v5, Landroid/net/wifi/RttManager;->sConnected:Ljava/util/concurrent/CountDownLatch;

    #@4f
    .line 966
    sget-object v5, Landroid/net/wifi/RttManager;->sHandlerThread:Landroid/os/HandlerThread;

    #@51
    invoke-virtual {v5}, Landroid/os/HandlerThread;->start()V

    #@54
    .line 967
    new-instance v3, Landroid/net/wifi/RttManager$ServiceHandler;

    #@56
    sget-object v5, Landroid/net/wifi/RttManager;->sHandlerThread:Landroid/os/HandlerThread;

    #@58
    invoke-virtual {v5}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    #@5b
    move-result-object v5

    #@5c
    invoke-direct {v3, v5}, Landroid/net/wifi/RttManager$ServiceHandler;-><init>(Landroid/os/Looper;)V

    #@5f
    .line 968
    .local v3, "handler":Landroid/os/Handler;
    sget-object v5, Landroid/net/wifi/RttManager;->sAsyncChannel:Lcom/android/internal/util/AsyncChannel;

    #@61
    iget-object v7, p0, Landroid/net/wifi/RttManager;->mContext:Landroid/content/Context;

    #@63
    invoke-virtual {v5, v7, v3, v4}, Lcom/android/internal/util/AsyncChannel;->connect(Landroid/content/Context;Landroid/os/Handler;Landroid/os/Messenger;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@66
    .line 970
    :try_start_4
    sget-object v5, Landroid/net/wifi/RttManager;->sConnected:Ljava/util/concurrent/CountDownLatch;

    #@68
    invoke-virtual {v5}, Ljava/util/concurrent/CountDownLatch;->await()V
    :try_end_4
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    #@6b
    .end local v3    # "handler":Landroid/os/Handler;
    :cond_1
    :goto_1
    monitor-exit v6

    #@6c
    .line 944
    return-void

    #@6d
    .line 971
    .restart local v3    # "handler":Landroid/os/Handler;
    :catch_0
    move-exception v1

    #@6e
    .line 972
    .local v1, "e":Ljava/lang/InterruptedException;
    :try_start_5
    const-string/jumbo v5, "RttManager"

    #@71
    const-string/jumbo v7, "interrupted wait at init"

    #@74
    invoke-static {v5, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    #@77
    goto :goto_1

    #@78
    .line 945
    .end local v1    # "e":Ljava/lang/InterruptedException;
    .end local v3    # "handler":Landroid/os/Handler;
    :catchall_0
    move-exception v5

    #@79
    monitor-exit v6

    #@7a
    throw v5

    #@7b
    .line 951
    .restart local v4    # "messenger":Landroid/os/Messenger;
    :catch_1
    move-exception v0

    #@7c
    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_0

    #@7d
    .line 953
    .end local v0    # "e":Landroid/os/RemoteException;
    :catch_2
    move-exception v2

    #@7e
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
    .line 984
    if-nez p0, :cond_0

    #@3
    return v1

    #@4
    .line 986
    :cond_0
    sget-object v2, Landroid/net/wifi/RttManager;->sListenerMapLock:Ljava/lang/Object;

    #@6
    monitor-enter v2

    #@7
    .line 988
    :cond_1
    :try_start_0
    sget v0, Landroid/net/wifi/RttManager;->sListenerKey:I

    #@9
    add-int/lit8 v1, v0, 0x1

    #@b
    sput v1, Landroid/net/wifi/RttManager;->sListenerKey:I

    #@d
    .line 989
    .local v0, "key":I
    if-eqz v0, :cond_1

    #@f
    .line 990
    sget-object v1, Landroid/net/wifi/RttManager;->sListenerMap:Landroid/util/SparseArray;

    #@11
    invoke-virtual {v1, v0, p0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@14
    monitor-exit v2

    #@15
    .line 992
    return v0

    #@16
    .line 986
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
    .line 1025
    invoke-static {p0}, Landroid/net/wifi/RttManager;->getListenerKey(Ljava/lang/Object;)I

    #@3
    move-result v0

    #@4
    .line 1026
    .local v0, "key":I
    if-nez v0, :cond_0

    #@6
    return v0

    #@7
    .line 1027
    :cond_0
    sget-object v2, Landroid/net/wifi/RttManager;->sListenerMapLock:Ljava/lang/Object;

    #@9
    monitor-enter v2

    #@a
    .line 1028
    :try_start_0
    sget-object v1, Landroid/net/wifi/RttManager;->sListenerMap:Landroid/util/SparseArray;

    #@c
    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->remove(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@f
    monitor-exit v2

    #@10
    .line 1029
    return v0

    #@11
    .line 1027
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
    .line 1016
    if-nez p0, :cond_0

    #@2
    const/4 v1, 0x0

    #@3
    return-object v1

    #@4
    .line 1017
    :cond_0
    sget-object v2, Landroid/net/wifi/RttManager;->sListenerMapLock:Ljava/lang/Object;

    #@6
    monitor-enter v2

    #@7
    .line 1018
    :try_start_0
    sget-object v1, Landroid/net/wifi/RttManager;->sListenerMap:Landroid/util/SparseArray;

    #@9
    invoke-virtual {v1, p0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    #@c
    move-result-object v0

    #@d
    .line 1019
    .local v0, "listener":Ljava/lang/Object;
    sget-object v1, Landroid/net/wifi/RttManager;->sListenerMap:Landroid/util/SparseArray;

    #@f
    invoke-virtual {v1, p0}, Landroid/util/SparseArray;->remove(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@12
    monitor-exit v2

    #@13
    .line 1020
    return-object v0

    #@14
    .line 1017
    .end local v0    # "listener":Ljava/lang/Object;
    :catchall_0
    move-exception v1

    #@15
    monitor-exit v2

    #@16
    throw v1
.end method

.method private rttParamSanity(Landroid/net/wifi/RttManager$RttParams;I)Z
    .locals 5
    .param p1, "params"    # Landroid/net/wifi/RttManager$RttParams;
    .param p2, "index"    # I

    #@0
    .prologue
    const/4 v4, 0x3

    #@1
    const/4 v1, 0x2

    #@2
    const/4 v2, 0x1

    #@3
    const/4 v3, 0x0

    #@4
    .line 810
    iget-object v0, p0, Landroid/net/wifi/RttManager;->mRttCapabilities:Landroid/net/wifi/RttManager$RttCapabilities;

    #@6
    if-nez v0, :cond_0

    #@8
    .line 811
    invoke-virtual {p0}, Landroid/net/wifi/RttManager;->getRttCapabilities()Landroid/net/wifi/RttManager$RttCapabilities;

    #@b
    move-result-object v0

    #@c
    if-nez v0, :cond_0

    #@e
    .line 812
    const-string/jumbo v0, "RttManager"

    #@11
    const-string/jumbo v1, "Can not get RTT capabilities"

    #@14
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@17
    .line 813
    new-instance v0, Ljava/lang/IllegalStateException;

    #@19
    const-string/jumbo v1, "RTT chip is not working"

    #@1c
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@1f
    throw v0

    #@20
    .line 817
    :cond_0
    iget v0, p1, Landroid/net/wifi/RttManager$RttParams;->deviceType:I

    #@22
    if-eq v0, v2, :cond_1

    #@24
    .line 818
    return v3

    #@25
    .line 819
    :cond_1
    iget v0, p1, Landroid/net/wifi/RttManager$RttParams;->requestType:I

    #@27
    if-eq v0, v2, :cond_2

    #@29
    iget v0, p1, Landroid/net/wifi/RttManager$RttParams;->requestType:I

    #@2b
    if-eq v0, v1, :cond_2

    #@2d
    .line 821
    const-string/jumbo v0, "RttManager"

    #@30
    new-instance v1, Ljava/lang/StringBuilder;

    #@32
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@35
    const-string/jumbo v2, "Request "

    #@38
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3b
    move-result-object v1

    #@3c
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@3f
    move-result-object v1

    #@40
    const-string/jumbo v2, ": Illegal Request Type: "

    #@43
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@46
    move-result-object v1

    #@47
    iget v2, p1, Landroid/net/wifi/RttManager$RttParams;->requestType:I

    #@49
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@4c
    move-result-object v1

    #@4d
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@50
    move-result-object v1

    #@51
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@54
    .line 822
    return v3

    #@55
    .line 823
    :cond_2
    iget v0, p1, Landroid/net/wifi/RttManager$RttParams;->requestType:I

    #@57
    if-ne v0, v2, :cond_3

    #@59
    .line 824
    iget-object v0, p0, Landroid/net/wifi/RttManager;->mRttCapabilities:Landroid/net/wifi/RttManager$RttCapabilities;

    #@5b
    iget-boolean v0, v0, Landroid/net/wifi/RttManager$RttCapabilities;->oneSidedRttSupported:Z

    #@5d
    if-eqz v0, :cond_6

    #@5f
    .line 827
    :cond_3
    iget v0, p1, Landroid/net/wifi/RttManager$RttParams;->requestType:I

    #@61
    if-ne v0, v1, :cond_4

    #@63
    .line 828
    iget-object v0, p0, Landroid/net/wifi/RttManager;->mRttCapabilities:Landroid/net/wifi/RttManager$RttCapabilities;

    #@65
    iget-boolean v0, v0, Landroid/net/wifi/RttManager$RttCapabilities;->twoSided11McRttSupported:Z

    #@67
    if-eqz v0, :cond_7

    #@69
    .line 831
    :cond_4
    iget-object v0, p1, Landroid/net/wifi/RttManager$RttParams;->bssid:Ljava/lang/String;

    #@6b
    if-eqz v0, :cond_5

    #@6d
    iget-object v0, p1, Landroid/net/wifi/RttManager$RttParams;->bssid:Ljava/lang/String;

    #@6f
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    #@72
    move-result v0

    #@73
    if-eqz v0, :cond_8

    #@75
    .line 832
    :cond_5
    const-string/jumbo v0, "RttManager"

    #@78
    const-string/jumbo v1, "No BSSID in params"

    #@7b
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@7e
    .line 833
    return v3

    #@7f
    .line 825
    :cond_6
    const-string/jumbo v0, "RttManager"

    #@82
    new-instance v1, Ljava/lang/StringBuilder;

    #@84
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@87
    const-string/jumbo v2, "Request "

    #@8a
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@8d
    move-result-object v1

    #@8e
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@91
    move-result-object v1

    #@92
    const-string/jumbo v2, ": One side RTT is not supported"

    #@95
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@98
    move-result-object v1

    #@99
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@9c
    move-result-object v1

    #@9d
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@a0
    .line 826
    return v3

    #@a1
    .line 829
    :cond_7
    const-string/jumbo v0, "RttManager"

    #@a4
    new-instance v1, Ljava/lang/StringBuilder;

    #@a6
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@a9
    const-string/jumbo v2, "Request "

    #@ac
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@af
    move-result-object v1

    #@b0
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@b3
    move-result-object v1

    #@b4
    const-string/jumbo v2, ": two side RTT is not supported"

    #@b7
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@ba
    move-result-object v1

    #@bb
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@be
    move-result-object v1

    #@bf
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@c2
    .line 830
    return v3

    #@c3
    .line 834
    :cond_8
    iget v0, p1, Landroid/net/wifi/RttManager$RttParams;->numberBurst:I

    #@c5
    if-eqz v0, :cond_9

    #@c7
    .line 835
    const-string/jumbo v0, "RttManager"

    #@ca
    new-instance v1, Ljava/lang/StringBuilder;

    #@cc
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@cf
    const-string/jumbo v2, "Request "

    #@d2
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@d5
    move-result-object v1

    #@d6
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@d9
    move-result-object v1

    #@da
    const-string/jumbo v2, ": Illegal number of burst: "

    #@dd
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@e0
    move-result-object v1

    #@e1
    iget v2, p1, Landroid/net/wifi/RttManager$RttParams;->numberBurst:I

    #@e3
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@e6
    move-result-object v1

    #@e7
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@ea
    move-result-object v1

    #@eb
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@ee
    .line 836
    return v3

    #@ef
    .line 837
    :cond_9
    iget v0, p1, Landroid/net/wifi/RttManager$RttParams;->numSamplesPerBurst:I

    #@f1
    if-lez v0, :cond_a

    #@f3
    iget v0, p1, Landroid/net/wifi/RttManager$RttParams;->numSamplesPerBurst:I

    #@f5
    const/16 v1, 0x1f

    #@f7
    if-le v0, v1, :cond_b

    #@f9
    .line 838
    :cond_a
    const-string/jumbo v0, "RttManager"

    #@fc
    new-instance v1, Ljava/lang/StringBuilder;

    #@fe
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@101
    const-string/jumbo v2, "Request "

    #@104
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@107
    move-result-object v1

    #@108
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@10b
    move-result-object v1

    #@10c
    const-string/jumbo v2, ": Illegal sample number per burst: "

    #@10f
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@112
    move-result-object v1

    #@113
    .line 839
    iget v2, p1, Landroid/net/wifi/RttManager$RttParams;->numSamplesPerBurst:I

    #@115
    .line 838
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@118
    move-result-object v1

    #@119
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@11c
    move-result-object v1

    #@11d
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@120
    .line 840
    return v3

    #@121
    .line 841
    :cond_b
    iget v0, p1, Landroid/net/wifi/RttManager$RttParams;->numRetriesPerMeasurementFrame:I

    #@123
    if-ltz v0, :cond_c

    #@125
    .line 842
    iget v0, p1, Landroid/net/wifi/RttManager$RttParams;->numRetriesPerMeasurementFrame:I

    #@127
    if-le v0, v4, :cond_d

    #@129
    .line 843
    :cond_c
    const-string/jumbo v0, "RttManager"

    #@12c
    new-instance v1, Ljava/lang/StringBuilder;

    #@12e
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@131
    const-string/jumbo v2, "Request "

    #@134
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@137
    move-result-object v1

    #@138
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@13b
    move-result-object v1

    #@13c
    const-string/jumbo v2, ": Illegal measurement frame retry number:"

    #@13f
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@142
    move-result-object v1

    #@143
    .line 844
    iget v2, p1, Landroid/net/wifi/RttManager$RttParams;->numRetriesPerMeasurementFrame:I

    #@145
    .line 843
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@148
    move-result-object v1

    #@149
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@14c
    move-result-object v1

    #@14d
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@150
    .line 845
    return v3

    #@151
    .line 846
    :cond_d
    iget v0, p1, Landroid/net/wifi/RttManager$RttParams;->numRetriesPerFTMR:I

    #@153
    if-ltz v0, :cond_e

    #@155
    .line 847
    iget v0, p1, Landroid/net/wifi/RttManager$RttParams;->numRetriesPerFTMR:I

    #@157
    if-le v0, v4, :cond_f

    #@159
    .line 848
    :cond_e
    const-string/jumbo v0, "RttManager"

    #@15c
    new-instance v1, Ljava/lang/StringBuilder;

    #@15e
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@161
    const-string/jumbo v2, "Request "

    #@164
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@167
    move-result-object v1

    #@168
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@16b
    move-result-object v1

    #@16c
    const-string/jumbo v2, ": Illegal FTMR frame retry number:"

    #@16f
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@172
    move-result-object v1

    #@173
    .line 849
    iget v2, p1, Landroid/net/wifi/RttManager$RttParams;->numRetriesPerFTMR:I

    #@175
    .line 848
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@178
    move-result-object v1

    #@179
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@17c
    move-result-object v1

    #@17d
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@180
    .line 850
    return v3

    #@181
    .line 851
    :cond_f
    iget-boolean v0, p1, Landroid/net/wifi/RttManager$RttParams;->LCIRequest:Z

    #@183
    if-eqz v0, :cond_10

    #@185
    iget-object v0, p0, Landroid/net/wifi/RttManager;->mRttCapabilities:Landroid/net/wifi/RttManager$RttCapabilities;

    #@187
    iget-boolean v0, v0, Landroid/net/wifi/RttManager$RttCapabilities;->lciSupported:Z

    #@189
    if-eqz v0, :cond_13

    #@18b
    .line 854
    :cond_10
    iget-boolean v0, p1, Landroid/net/wifi/RttManager$RttParams;->LCRRequest:Z

    #@18d
    if-eqz v0, :cond_11

    #@18f
    iget-object v0, p0, Landroid/net/wifi/RttManager;->mRttCapabilities:Landroid/net/wifi/RttManager$RttCapabilities;

    #@191
    iget-boolean v0, v0, Landroid/net/wifi/RttManager$RttCapabilities;->lcrSupported:Z

    #@193
    if-eqz v0, :cond_14

    #@195
    .line 857
    :cond_11
    iget v0, p1, Landroid/net/wifi/RttManager$RttParams;->burstTimeout:I

    #@197
    if-lt v0, v2, :cond_12

    #@199
    .line 858
    iget v0, p1, Landroid/net/wifi/RttManager$RttParams;->burstTimeout:I

    #@19b
    const/16 v1, 0xb

    #@19d
    if-le v0, v1, :cond_15

    #@19f
    iget v0, p1, Landroid/net/wifi/RttManager$RttParams;->burstTimeout:I

    #@1a1
    const/16 v1, 0xf

    #@1a3
    if-eq v0, v1, :cond_15

    #@1a5
    .line 859
    :cond_12
    const-string/jumbo v0, "RttManager"

    #@1a8
    new-instance v1, Ljava/lang/StringBuilder;

    #@1aa
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@1ad
    const-string/jumbo v2, "Request "

    #@1b0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1b3
    move-result-object v1

    #@1b4
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@1b7
    move-result-object v1

    #@1b8
    const-string/jumbo v2, ": Illegal burst timeout: "

    #@1bb
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1be
    move-result-object v1

    #@1bf
    iget v2, p1, Landroid/net/wifi/RttManager$RttParams;->burstTimeout:I

    #@1c1
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@1c4
    move-result-object v1

    #@1c5
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1c8
    move-result-object v1

    #@1c9
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@1cc
    .line 860
    return v3

    #@1cd
    .line 852
    :cond_13
    const-string/jumbo v0, "RttManager"

    #@1d0
    new-instance v1, Ljava/lang/StringBuilder;

    #@1d2
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@1d5
    const-string/jumbo v2, "Request "

    #@1d8
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1db
    move-result-object v1

    #@1dc
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@1df
    move-result-object v1

    #@1e0
    const-string/jumbo v2, ": LCI is not supported"

    #@1e3
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1e6
    move-result-object v1

    #@1e7
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1ea
    move-result-object v1

    #@1eb
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@1ee
    .line 853
    return v3

    #@1ef
    .line 855
    :cond_14
    const-string/jumbo v0, "RttManager"

    #@1f2
    new-instance v1, Ljava/lang/StringBuilder;

    #@1f4
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@1f7
    const-string/jumbo v2, "Request "

    #@1fa
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1fd
    move-result-object v1

    #@1fe
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@201
    move-result-object v1

    #@202
    const-string/jumbo v2, ": LCR is not supported"

    #@205
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@208
    move-result-object v1

    #@209
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@20c
    move-result-object v1

    #@20d
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@210
    .line 856
    return v3

    #@211
    .line 861
    :cond_15
    iget v0, p1, Landroid/net/wifi/RttManager$RttParams;->preamble:I

    #@213
    iget-object v1, p0, Landroid/net/wifi/RttManager;->mRttCapabilities:Landroid/net/wifi/RttManager$RttCapabilities;

    #@215
    iget v1, v1, Landroid/net/wifi/RttManager$RttCapabilities;->preambleSupported:I

    #@217
    and-int/2addr v0, v1

    #@218
    if-nez v0, :cond_16

    #@21a
    .line 862
    const-string/jumbo v0, "RttManager"

    #@21d
    new-instance v1, Ljava/lang/StringBuilder;

    #@21f
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@222
    const-string/jumbo v2, "Request "

    #@225
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@228
    move-result-object v1

    #@229
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@22c
    move-result-object v1

    #@22d
    const-string/jumbo v2, ": Do not support this preamble: "

    #@230
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@233
    move-result-object v1

    #@234
    iget v2, p1, Landroid/net/wifi/RttManager$RttParams;->preamble:I

    #@236
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@239
    move-result-object v1

    #@23a
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@23d
    move-result-object v1

    #@23e
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@241
    .line 863
    return v3

    #@242
    .line 864
    :cond_16
    iget v0, p1, Landroid/net/wifi/RttManager$RttParams;->bandwidth:I

    #@244
    iget-object v1, p0, Landroid/net/wifi/RttManager;->mRttCapabilities:Landroid/net/wifi/RttManager$RttCapabilities;

    #@246
    iget v1, v1, Landroid/net/wifi/RttManager$RttCapabilities;->bwSupported:I

    #@248
    and-int/2addr v0, v1

    #@249
    if-nez v0, :cond_17

    #@24b
    .line 865
    const-string/jumbo v0, "RttManager"

    #@24e
    new-instance v1, Ljava/lang/StringBuilder;

    #@250
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@253
    const-string/jumbo v2, "Request "

    #@256
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@259
    move-result-object v1

    #@25a
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@25d
    move-result-object v1

    #@25e
    const-string/jumbo v2, ": Do not support this bandwidth: "

    #@261
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@264
    move-result-object v1

    #@265
    iget v2, p1, Landroid/net/wifi/RttManager$RttParams;->bandwidth:I

    #@267
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@26a
    move-result-object v1

    #@26b
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@26e
    move-result-object v1

    #@26f
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@272
    .line 866
    return v3

    #@273
    .line 869
    :cond_17
    return v2
.end method

.method private validateChannel()V
    .locals 2

    #@0
    .prologue
    .line 979
    sget-object v0, Landroid/net/wifi/RttManager;->sAsyncChannel:Lcom/android/internal/util/AsyncChannel;

    #@2
    if-nez v0, :cond_0

    #@4
    new-instance v0, Ljava/lang/IllegalStateException;

    #@6
    .line 980
    const-string/jumbo v1, "No permission to access and change wifi or a bad initialization"

    #@9
    .line 979
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@c
    throw v0

    #@d
    .line 978
    :cond_0
    return-void
.end method


# virtual methods
.method public getCapabilities()Landroid/net/wifi/RttManager$Capabilities;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .line 169
    new-instance v0, Landroid/net/wifi/RttManager$Capabilities;

    #@2
    invoke-direct {v0, p0}, Landroid/net/wifi/RttManager$Capabilities;-><init>(Landroid/net/wifi/RttManager;)V

    #@5
    return-object v0
.end method

.method public getRttCapabilities()Landroid/net/wifi/RttManager$RttCapabilities;
    .locals 4

    #@0
    .prologue
    .line 289
    sget-object v2, Landroid/net/wifi/RttManager;->sCapabilitiesLock:Ljava/lang/Object;

    #@2
    monitor-enter v2

    #@3
    .line 290
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/RttManager;->mRttCapabilities:Landroid/net/wifi/RttManager$RttCapabilities;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@5
    if-nez v1, :cond_0

    #@7
    .line 292
    :try_start_1
    iget-object v1, p0, Landroid/net/wifi/RttManager;->mService:Landroid/net/wifi/IRttManager;

    #@9
    invoke-interface {v1}, Landroid/net/wifi/IRttManager;->getRttCapabilities()Landroid/net/wifi/RttManager$RttCapabilities;

    #@c
    move-result-object v1

    #@d
    iput-object v1, p0, Landroid/net/wifi/RttManager;->mRttCapabilities:Landroid/net/wifi/RttManager$RttCapabilities;
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@f
    .line 297
    :cond_0
    :goto_0
    :try_start_2
    iget-object v1, p0, Landroid/net/wifi/RttManager;->mRttCapabilities:Landroid/net/wifi/RttManager$RttCapabilities;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@11
    monitor-exit v2

    #@12
    return-object v1

    #@13
    .line 293
    :catch_0
    move-exception v0

    #@14
    .line 294
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_3
    const-string/jumbo v1, "RttManager"

    #@17
    const-string/jumbo v3, "Can not get RTT Capabilities"

    #@1a
    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@1d
    goto :goto_0

    #@1e
    .line 289
    .end local v0    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v1

    #@1f
    monitor-exit v2

    #@20
    throw v1
.end method

.method public startRanging([Landroid/net/wifi/RttManager$RttParams;Landroid/net/wifi/RttManager$RttListener;)V
    .locals 7
    .param p1, "params"    # [Landroid/net/wifi/RttManager$RttParams;
    .param p2, "listener"    # Landroid/net/wifi/RttManager$RttListener;

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 882
    const/4 v0, 0x0

    #@2
    .line 883
    .local v0, "index":I
    array-length v5, p1

    #@3
    move v3, v4

    #@4
    :goto_0
    if-ge v3, v5, :cond_1

    #@6
    aget-object v2, p1, v3

    #@8
    .line 884
    .local v2, "rttParam":Landroid/net/wifi/RttManager$RttParams;
    invoke-direct {p0, v2, v0}, Landroid/net/wifi/RttManager;->rttParamSanity(Landroid/net/wifi/RttManager$RttParams;I)Z

    #@b
    move-result v6

    #@c
    if-nez v6, :cond_0

    #@e
    .line 885
    new-instance v3, Ljava/lang/IllegalArgumentException;

    #@10
    const-string/jumbo v4, "RTT Request Parameter Illegal"

    #@13
    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@16
    throw v3

    #@17
    .line 887
    :cond_0
    add-int/lit8 v0, v0, 0x1

    #@19
    .line 883
    add-int/lit8 v3, v3, 0x1

    #@1b
    goto :goto_0

    #@1c
    .line 889
    .end local v2    # "rttParam":Landroid/net/wifi/RttManager$RttParams;
    :cond_1
    invoke-direct {p0}, Landroid/net/wifi/RttManager;->validateChannel()V

    #@1f
    .line 890
    new-instance v1, Landroid/net/wifi/RttManager$ParcelableRttParams;

    #@21
    invoke-direct {v1, p1}, Landroid/net/wifi/RttManager$ParcelableRttParams;-><init>([Landroid/net/wifi/RttManager$RttParams;)V

    #@24
    .line 891
    .local v1, "parcelableParams":Landroid/net/wifi/RttManager$ParcelableRttParams;
    const-string/jumbo v3, "RttManager"

    #@27
    const-string/jumbo v5, "Send RTT request to RTT Service"

    #@2a
    invoke-static {v3, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@2d
    .line 892
    sget-object v3, Landroid/net/wifi/RttManager;->sAsyncChannel:Lcom/android/internal/util/AsyncChannel;

    #@2f
    .line 893
    invoke-static {p2}, Landroid/net/wifi/RttManager;->putListener(Ljava/lang/Object;)I

    #@32
    move-result v5

    #@33
    .line 892
    const v6, 0x27200

    #@36
    invoke-virtual {v3, v6, v4, v5, v1}, Lcom/android/internal/util/AsyncChannel;->sendMessage(IIILjava/lang/Object;)V

    #@39
    .line 881
    return-void
.end method

.method public stopRanging(Landroid/net/wifi/RttManager$RttListener;)V
    .locals 4
    .param p1, "listener"    # Landroid/net/wifi/RttManager$RttListener;

    #@0
    .prologue
    .line 897
    invoke-direct {p0}, Landroid/net/wifi/RttManager;->validateChannel()V

    #@3
    .line 898
    sget-object v0, Landroid/net/wifi/RttManager;->sAsyncChannel:Lcom/android/internal/util/AsyncChannel;

    #@5
    invoke-static {p1}, Landroid/net/wifi/RttManager;->removeListener(Ljava/lang/Object;)I

    #@8
    move-result v1

    #@9
    const v2, 0x27201

    #@c
    const/4 v3, 0x0

    #@d
    invoke-virtual {v0, v2, v3, v1}, Lcom/android/internal/util/AsyncChannel;->sendMessage(III)V

    #@10
    .line 896
    return-void
.end method
