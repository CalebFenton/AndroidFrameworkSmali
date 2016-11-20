.class public Landroid/net/wifi/WifiScanner;
.super Ljava/lang/Object;
.source "WifiScanner.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/wifi/WifiScanner$ActionListener;,
        Landroid/net/wifi/WifiScanner$BssidInfo;,
        Landroid/net/wifi/WifiScanner$BssidListener;,
        Landroid/net/wifi/WifiScanner$ChannelSpec;,
        Landroid/net/wifi/WifiScanner$HotlistSettings;,
        Landroid/net/wifi/WifiScanner$OperationResult;,
        Landroid/net/wifi/WifiScanner$ParcelableScanData;,
        Landroid/net/wifi/WifiScanner$ParcelableScanResults;,
        Landroid/net/wifi/WifiScanner$PnoScanListener;,
        Landroid/net/wifi/WifiScanner$PnoSettings;,
        Landroid/net/wifi/WifiScanner$ScanData;,
        Landroid/net/wifi/WifiScanner$ScanListener;,
        Landroid/net/wifi/WifiScanner$ScanSettings;,
        Landroid/net/wifi/WifiScanner$ServiceHandler;,
        Landroid/net/wifi/WifiScanner$WifiChangeListener;,
        Landroid/net/wifi/WifiScanner$WifiChangeSettings;
    }
.end annotation


# static fields
.field private static final BASE:I = 0x27000

.field public static final CMD_AP_FOUND:I = 0x27009

.field public static final CMD_AP_LOST:I = 0x2700a

.field public static final CMD_CONFIGURE_WIFI_CHANGE:I = 0x2700d

.field public static final CMD_DEREGISTER_SCAN_LISTENER:I = 0x2701c

.field public static final CMD_FULL_SCAN_RESULT:I = 0x27014

.field public static final CMD_GET_SCAN_RESULTS:I = 0x27004

.field public static final CMD_OP_FAILED:I = 0x27012

.field public static final CMD_OP_SUCCEEDED:I = 0x27011

.field public static final CMD_PERIOD_CHANGED:I = 0x27013

.field public static final CMD_PNO_NETWORK_FOUND:I = 0x2701a

.field public static final CMD_REGISTER_SCAN_LISTENER:I = 0x2701b

.field public static final CMD_RESET_HOTLIST:I = 0x27007

.field public static final CMD_SCAN:I = 0x27000

.field public static final CMD_SCAN_RESULT:I = 0x27005

.field public static final CMD_SET_HOTLIST:I = 0x27006

.field public static final CMD_SINGLE_SCAN_COMPLETED:I = 0x27017

.field public static final CMD_START_BACKGROUND_SCAN:I = 0x27002

.field public static final CMD_START_PNO_SCAN:I = 0x27018

.field public static final CMD_START_SINGLE_SCAN:I = 0x27015

.field public static final CMD_START_TRACKING_CHANGE:I = 0x2700b

.field public static final CMD_STOP_BACKGROUND_SCAN:I = 0x27003

.field public static final CMD_STOP_PNO_SCAN:I = 0x27019

.field public static final CMD_STOP_SINGLE_SCAN:I = 0x27016

.field public static final CMD_STOP_TRACKING_CHANGE:I = 0x2700c

.field public static final CMD_WIFI_CHANGES_STABILIZED:I = 0x27010

.field public static final CMD_WIFI_CHANGE_DETECTED:I = 0x2700f

.field private static final DBG:Z = false

.field public static final GET_AVAILABLE_CHANNELS_EXTRA:Ljava/lang/String; = "Channels"

.field private static final INVALID_KEY:I = 0x0

.field public static final MAX_SCAN_PERIOD_MS:I = 0xfa000

.field public static final MIN_SCAN_PERIOD_MS:I = 0x3e8

.field public static final PNO_PARAMS_PNO_SETTINGS_KEY:Ljava/lang/String; = "PnoSettings"

.field public static final PNO_PARAMS_SCAN_SETTINGS_KEY:Ljava/lang/String; = "ScanSettings"

.field public static final REASON_DUPLICATE_REQEUST:I = -0x5

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

.field public static final SCAN_PARAMS_SCAN_SETTINGS_KEY:Ljava/lang/String; = "ScanSettings"

.field public static final SCAN_PARAMS_WORK_SOURCE_KEY:Ljava/lang/String; = "WorkSource"

.field private static final TAG:Ljava/lang/String; = "WifiScanner"

.field public static final WIFI_BAND_24_GHZ:I = 0x1

.field public static final WIFI_BAND_5_GHZ:I = 0x2

.field public static final WIFI_BAND_5_GHZ_DFS_ONLY:I = 0x4

.field public static final WIFI_BAND_5_GHZ_WITH_DFS:I = 0x6

.field public static final WIFI_BAND_BOTH:I = 0x3

.field public static final WIFI_BAND_BOTH_WITH_DFS:I = 0x7

.field public static final WIFI_BAND_UNSPECIFIED:I


# instance fields
.field private mAsyncChannel:Lcom/android/internal/util/AsyncChannel;

.field private mContext:Landroid/content/Context;

.field private final mInternalHandler:Landroid/os/Handler;

.field private mListenerKey:I

.field private final mListenerMap:Landroid/util/SparseArray;

.field private final mListenerMapLock:Ljava/lang/Object;

.field private mService:Landroid/net/wifi/IWifiScanner;


# direct methods
.method static synthetic -set0(Landroid/net/wifi/WifiScanner;Lcom/android/internal/util/AsyncChannel;)Lcom/android/internal/util/AsyncChannel;
    .locals 0

    #@0
    iput-object p1, p0, Landroid/net/wifi/WifiScanner;->mAsyncChannel:Lcom/android/internal/util/AsyncChannel;

    #@2
    return-object p1
.end method

.method static synthetic -wrap0(Landroid/net/wifi/WifiScanner;I)Ljava/lang/Object;
    .locals 1
    .param p1, "key"    # I

    #@0
    .prologue
    invoke-direct {p0, p1}, Landroid/net/wifi/WifiScanner;->getListener(I)Ljava/lang/Object;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method static synthetic -wrap1(Landroid/net/wifi/WifiScanner;I)Ljava/lang/Object;
    .locals 1
    .param p1, "key"    # I

    #@0
    .prologue
    invoke-direct {p0, p1}, Landroid/net/wifi/WifiScanner;->removeListener(I)Ljava/lang/Object;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/net/wifi/IWifiScanner;Landroid/os/Looper;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "service"    # Landroid/net/wifi/IWifiScanner;
    .param p3, "looper"    # Landroid/os/Looper;

    #@0
    .prologue
    .line 1209
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 1191
    const/4 v2, 0x1

    #@4
    iput v2, p0, Landroid/net/wifi/WifiScanner;->mListenerKey:I

    #@6
    .line 1193
    new-instance v2, Landroid/util/SparseArray;

    #@8
    invoke-direct {v2}, Landroid/util/SparseArray;-><init>()V

    #@b
    iput-object v2, p0, Landroid/net/wifi/WifiScanner;->mListenerMap:Landroid/util/SparseArray;

    #@d
    .line 1194
    new-instance v2, Ljava/lang/Object;

    #@f
    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    #@12
    iput-object v2, p0, Landroid/net/wifi/WifiScanner;->mListenerMapLock:Ljava/lang/Object;

    #@14
    .line 1210
    iput-object p1, p0, Landroid/net/wifi/WifiScanner;->mContext:Landroid/content/Context;

    #@16
    .line 1211
    iput-object p2, p0, Landroid/net/wifi/WifiScanner;->mService:Landroid/net/wifi/IWifiScanner;

    #@18
    .line 1213
    const/4 v1, 0x0

    #@19
    .line 1215
    .local v1, "messenger":Landroid/os/Messenger;
    :try_start_0
    iget-object v2, p0, Landroid/net/wifi/WifiScanner;->mService:Landroid/net/wifi/IWifiScanner;

    #@1b
    invoke-interface {v2}, Landroid/net/wifi/IWifiScanner;->getMessenger()Landroid/os/Messenger;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@1e
    move-result-object v1

    #@1f
    .line 1220
    .local v1, "messenger":Landroid/os/Messenger;
    if-nez v1, :cond_0

    #@21
    .line 1221
    new-instance v2, Ljava/lang/IllegalStateException;

    #@23
    const-string/jumbo v3, "getMessenger() returned null!  This is invalid."

    #@26
    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@29
    throw v2

    #@2a
    .line 1216
    .local v1, "messenger":Landroid/os/Messenger;
    :catch_0
    move-exception v0

    #@2b
    .line 1217
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    #@2e
    move-result-object v2

    #@2f
    throw v2

    #@30
    .line 1224
    .end local v0    # "e":Landroid/os/RemoteException;
    .local v1, "messenger":Landroid/os/Messenger;
    :cond_0
    new-instance v2, Lcom/android/internal/util/AsyncChannel;

    #@32
    invoke-direct {v2}, Lcom/android/internal/util/AsyncChannel;-><init>()V

    #@35
    iput-object v2, p0, Landroid/net/wifi/WifiScanner;->mAsyncChannel:Lcom/android/internal/util/AsyncChannel;

    #@37
    .line 1226
    new-instance v2, Landroid/net/wifi/WifiScanner$ServiceHandler;

    #@39
    invoke-direct {v2, p0, p3}, Landroid/net/wifi/WifiScanner$ServiceHandler;-><init>(Landroid/net/wifi/WifiScanner;Landroid/os/Looper;)V

    #@3c
    iput-object v2, p0, Landroid/net/wifi/WifiScanner;->mInternalHandler:Landroid/os/Handler;

    #@3e
    .line 1227
    iget-object v2, p0, Landroid/net/wifi/WifiScanner;->mAsyncChannel:Lcom/android/internal/util/AsyncChannel;

    #@40
    iget-object v3, p0, Landroid/net/wifi/WifiScanner;->mContext:Landroid/content/Context;

    #@42
    iget-object v4, p0, Landroid/net/wifi/WifiScanner;->mInternalHandler:Landroid/os/Handler;

    #@44
    invoke-virtual {v2, v3, v4, v1}, Lcom/android/internal/util/AsyncChannel;->connectSync(Landroid/content/Context;Landroid/os/Handler;Landroid/os/Messenger;)I

    #@47
    .line 1230
    iget-object v2, p0, Landroid/net/wifi/WifiScanner;->mAsyncChannel:Lcom/android/internal/util/AsyncChannel;

    #@49
    const v3, 0x11001

    #@4c
    invoke-virtual {v2, v3}, Lcom/android/internal/util/AsyncChannel;->sendMessage(I)V

    #@4f
    .line 1209
    return-void
.end method

.method private addListener(Landroid/net/wifi/WifiScanner$ActionListener;)I
    .locals 9
    .param p1, "listener"    # Landroid/net/wifi/WifiScanner$ActionListener;

    #@0
    .prologue
    const/4 v8, 0x0

    #@1
    .line 1242
    iget-object v5, p0, Landroid/net/wifi/WifiScanner;->mListenerMapLock:Ljava/lang/Object;

    #@3
    monitor-enter v5

    #@4
    .line 1243
    :try_start_0
    invoke-direct {p0, p1}, Landroid/net/wifi/WifiScanner;->getListenerKey(Ljava/lang/Object;)I

    #@7
    move-result v4

    #@8
    if-eqz v4, :cond_0

    #@a
    const/4 v1, 0x1

    #@b
    .line 1247
    .local v1, "keyExists":Z
    :goto_0
    invoke-direct {p0, p1}, Landroid/net/wifi/WifiScanner;->putListener(Ljava/lang/Object;)I

    #@e
    move-result v0

    #@f
    .line 1248
    .local v0, "key":I
    if-eqz v1, :cond_1

    #@11
    .line 1250
    new-instance v3, Landroid/net/wifi/WifiScanner$OperationResult;

    #@13
    .line 1251
    const-string/jumbo v4, "Outstanding request with same key not stopped yet"

    #@16
    .line 1250
    const/4 v6, -0x5

    #@17
    invoke-direct {v3, v6, v4}, Landroid/net/wifi/WifiScanner$OperationResult;-><init>(ILjava/lang/String;)V

    #@1a
    .line 1252
    .local v3, "operationResult":Landroid/net/wifi/WifiScanner$OperationResult;
    iget-object v4, p0, Landroid/net/wifi/WifiScanner;->mInternalHandler:Landroid/os/Handler;

    #@1c
    const v6, 0x27012

    #@1f
    const/4 v7, 0x0

    #@20
    invoke-static {v4, v6, v7, v0, v3}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    #@23
    move-result-object v2

    #@24
    .line 1254
    .local v2, "message":Landroid/os/Message;
    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@27
    monitor-exit v5

    #@28
    .line 1255
    return v8

    #@29
    .line 1243
    .end local v0    # "key":I
    .end local v1    # "keyExists":Z
    .end local v2    # "message":Landroid/os/Message;
    .end local v3    # "operationResult":Landroid/net/wifi/WifiScanner$OperationResult;
    :cond_0
    const/4 v1, 0x0

    #@2a
    .restart local v1    # "keyExists":Z
    goto :goto_0

    #@2b
    .restart local v0    # "key":I
    :cond_1
    monitor-exit v5

    #@2c
    .line 1257
    return v0

    #@2d
    .line 1242
    .end local v0    # "key":I
    .end local v1    # "keyExists":Z
    :catchall_0
    move-exception v4

    #@2e
    monitor-exit v5

    #@2f
    throw v4
.end method

.method private getListener(I)Ljava/lang/Object;
    .locals 3
    .param p1, "key"    # I

    #@0
    .prologue
    .line 1275
    if-nez p1, :cond_0

    #@2
    const/4 v1, 0x0

    #@3
    return-object v1

    #@4
    .line 1276
    :cond_0
    iget-object v2, p0, Landroid/net/wifi/WifiScanner;->mListenerMapLock:Ljava/lang/Object;

    #@6
    monitor-enter v2

    #@7
    .line 1277
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/WifiScanner;->mListenerMap:Landroid/util/SparseArray;

    #@9
    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@c
    move-result-object v0

    #@d
    .local v0, "listener":Ljava/lang/Object;
    monitor-exit v2

    #@e
    .line 1278
    return-object v0

    #@f
    .line 1276
    .end local v0    # "listener":Ljava/lang/Object;
    :catchall_0
    move-exception v1

    #@10
    monitor-exit v2

    #@11
    throw v1
.end method

.method private getListenerKey(Ljava/lang/Object;)I
    .locals 4
    .param p1, "listener"    # Ljava/lang/Object;

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 1283
    if-nez p1, :cond_0

    #@3
    return v3

    #@4
    .line 1284
    :cond_0
    iget-object v2, p0, Landroid/net/wifi/WifiScanner;->mListenerMapLock:Ljava/lang/Object;

    #@6
    monitor-enter v2

    #@7
    .line 1285
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/WifiScanner;->mListenerMap:Landroid/util/SparseArray;

    #@9
    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->indexOfValue(Ljava/lang/Object;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@c
    move-result v0

    #@d
    .line 1286
    .local v0, "index":I
    const/4 v1, -0x1

    #@e
    if-ne v0, v1, :cond_1

    #@10
    monitor-exit v2

    #@11
    .line 1287
    return v3

    #@12
    .line 1289
    :cond_1
    :try_start_1
    iget-object v1, p0, Landroid/net/wifi/WifiScanner;->mListenerMap:Landroid/util/SparseArray;

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
    .line 1284
    .end local v0    # "index":I
    :catchall_0
    move-exception v1

    #@1b
    monitor-exit v2

    #@1c
    throw v1
.end method

.method private putListener(Ljava/lang/Object;)I
    .locals 3
    .param p1, "listener"    # Ljava/lang/Object;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 1263
    if-nez p1, :cond_0

    #@3
    return v1

    #@4
    .line 1265
    :cond_0
    iget-object v2, p0, Landroid/net/wifi/WifiScanner;->mListenerMapLock:Ljava/lang/Object;

    #@6
    monitor-enter v2

    #@7
    .line 1267
    :cond_1
    :try_start_0
    iget v0, p0, Landroid/net/wifi/WifiScanner;->mListenerKey:I

    #@9
    add-int/lit8 v1, v0, 0x1

    #@b
    iput v1, p0, Landroid/net/wifi/WifiScanner;->mListenerKey:I

    #@d
    .line 1268
    .local v0, "key":I
    if-eqz v0, :cond_1

    #@f
    .line 1269
    iget-object v1, p0, Landroid/net/wifi/WifiScanner;->mListenerMap:Landroid/util/SparseArray;

    #@11
    invoke-virtual {v1, v0, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@14
    monitor-exit v2

    #@15
    .line 1271
    return v0

    #@16
    .line 1265
    .end local v0    # "key":I
    :catchall_0
    move-exception v1

    #@17
    monitor-exit v2

    #@18
    throw v1
.end method

.method private removeListener(Ljava/lang/Object;)I
    .locals 3
    .param p1, "listener"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 1304
    invoke-direct {p0, p1}, Landroid/net/wifi/WifiScanner;->getListenerKey(Ljava/lang/Object;)I

    #@3
    move-result v0

    #@4
    .line 1305
    .local v0, "key":I
    if-nez v0, :cond_0

    #@6
    .line 1306
    const-string/jumbo v1, "WifiScanner"

    #@9
    const-string/jumbo v2, "listener cannot be found"

    #@c
    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@f
    .line 1307
    return v0

    #@10
    .line 1309
    :cond_0
    iget-object v2, p0, Landroid/net/wifi/WifiScanner;->mListenerMapLock:Ljava/lang/Object;

    #@12
    monitor-enter v2

    #@13
    .line 1310
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/WifiScanner;->mListenerMap:Landroid/util/SparseArray;

    #@15
    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->remove(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@18
    monitor-exit v2

    #@19
    .line 1311
    return v0

    #@1a
    .line 1309
    :catchall_0
    move-exception v1

    #@1b
    monitor-exit v2

    #@1c
    throw v1
.end method

.method private removeListener(I)Ljava/lang/Object;
    .locals 3
    .param p1, "key"    # I

    #@0
    .prologue
    .line 1295
    if-nez p1, :cond_0

    #@2
    const/4 v1, 0x0

    #@3
    return-object v1

    #@4
    .line 1296
    :cond_0
    iget-object v2, p0, Landroid/net/wifi/WifiScanner;->mListenerMapLock:Ljava/lang/Object;

    #@6
    monitor-enter v2

    #@7
    .line 1297
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/WifiScanner;->mListenerMap:Landroid/util/SparseArray;

    #@9
    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    #@c
    move-result-object v0

    #@d
    .line 1298
    .local v0, "listener":Ljava/lang/Object;
    iget-object v1, p0, Landroid/net/wifi/WifiScanner;->mListenerMap:Landroid/util/SparseArray;

    #@f
    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->remove(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@12
    monitor-exit v2

    #@13
    .line 1299
    return-object v0

    #@14
    .line 1296
    .end local v0    # "listener":Ljava/lang/Object;
    :catchall_0
    move-exception v1

    #@15
    monitor-exit v2

    #@16
    throw v1
.end method

.method private startPnoScan(Landroid/net/wifi/WifiScanner$ScanSettings;Landroid/net/wifi/WifiScanner$PnoSettings;I)V
    .locals 4
    .param p1, "scanSettings"    # Landroid/net/wifi/WifiScanner$ScanSettings;
    .param p2, "pnoSettings"    # Landroid/net/wifi/WifiScanner$PnoSettings;
    .param p3, "key"    # I

    #@0
    .prologue
    .line 809
    new-instance v0, Landroid/os/Bundle;

    #@2
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    #@5
    .line 811
    .local v0, "pnoParams":Landroid/os/Bundle;
    const/4 v1, 0x1

    #@6
    iput-boolean v1, p1, Landroid/net/wifi/WifiScanner$ScanSettings;->isPnoScan:Z

    #@8
    .line 812
    const-string/jumbo v1, "ScanSettings"

    #@b
    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    #@e
    .line 813
    const-string/jumbo v1, "PnoSettings"

    #@11
    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    #@14
    .line 814
    iget-object v1, p0, Landroid/net/wifi/WifiScanner;->mAsyncChannel:Lcom/android/internal/util/AsyncChannel;

    #@16
    const v2, 0x27018

    #@19
    const/4 v3, 0x0

    #@1a
    invoke-virtual {v1, v2, v3, p3, v0}, Lcom/android/internal/util/AsyncChannel;->sendMessage(IIILjava/lang/Object;)V

    #@1d
    .line 807
    return-void
.end method

.method private validateChannel()V
    .locals 2

    #@0
    .prologue
    .line 1234
    iget-object v0, p0, Landroid/net/wifi/WifiScanner;->mAsyncChannel:Lcom/android/internal/util/AsyncChannel;

    #@2
    if-nez v0, :cond_0

    #@4
    new-instance v0, Ljava/lang/IllegalStateException;

    #@6
    .line 1235
    const-string/jumbo v1, "No permission to access and change wifi or a bad initialization"

    #@9
    .line 1234
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@c
    throw v0

    #@d
    .line 1233
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
    .line 969
    invoke-direct {p0}, Landroid/net/wifi/WifiScanner;->validateChannel()V

    #@3
    .line 971
    new-instance v0, Landroid/net/wifi/WifiScanner$WifiChangeSettings;

    #@5
    invoke-direct {v0}, Landroid/net/wifi/WifiScanner$WifiChangeSettings;-><init>()V

    #@8
    .line 972
    .local v0, "settings":Landroid/net/wifi/WifiScanner$WifiChangeSettings;
    iput p1, v0, Landroid/net/wifi/WifiScanner$WifiChangeSettings;->rssiSampleSize:I

    #@a
    .line 973
    iput p2, v0, Landroid/net/wifi/WifiScanner$WifiChangeSettings;->lostApSampleSize:I

    #@c
    .line 974
    iput p3, v0, Landroid/net/wifi/WifiScanner$WifiChangeSettings;->unchangedSampleSize:I

    #@e
    .line 975
    iput p4, v0, Landroid/net/wifi/WifiScanner$WifiChangeSettings;->minApsBreachingThreshold:I

    #@10
    .line 976
    iput p5, v0, Landroid/net/wifi/WifiScanner$WifiChangeSettings;->periodInMs:I

    #@12
    .line 977
    iput-object p6, v0, Landroid/net/wifi/WifiScanner$WifiChangeSettings;->bssidInfos:[Landroid/net/wifi/WifiScanner$BssidInfo;

    #@14
    .line 979
    invoke-virtual {p0, v0}, Landroid/net/wifi/WifiScanner;->configureWifiChange(Landroid/net/wifi/WifiScanner$WifiChangeSettings;)V

    #@17
    .line 967
    return-void
.end method

.method public configureWifiChange(Landroid/net/wifi/WifiScanner$WifiChangeSettings;)V
    .locals 3
    .param p1, "settings"    # Landroid/net/wifi/WifiScanner$WifiChangeSettings;

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 1024
    invoke-direct {p0}, Landroid/net/wifi/WifiScanner;->validateChannel()V

    #@4
    .line 1025
    iget-object v0, p0, Landroid/net/wifi/WifiScanner;->mAsyncChannel:Lcom/android/internal/util/AsyncChannel;

    #@6
    const v1, 0x2700d

    #@9
    invoke-virtual {v0, v1, v2, v2, p1}, Lcom/android/internal/util/AsyncChannel;->sendMessage(IIILjava/lang/Object;)V

    #@c
    .line 1023
    return-void
.end method

.method public deregisterScanListener(Landroid/net/wifi/WifiScanner$ScanListener;)V
    .locals 4
    .param p1, "listener"    # Landroid/net/wifi/WifiScanner$ScanListener;

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 702
    const-string/jumbo v1, "listener cannot be null"

    #@4
    invoke-static {p1, v1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@7
    .line 703
    invoke-direct {p0, p1}, Landroid/net/wifi/WifiScanner;->removeListener(Ljava/lang/Object;)I

    #@a
    move-result v0

    #@b
    .line 704
    .local v0, "key":I
    if-nez v0, :cond_0

    #@d
    return-void

    #@e
    .line 705
    :cond_0
    invoke-direct {p0}, Landroid/net/wifi/WifiScanner;->validateChannel()V

    #@11
    .line 706
    iget-object v1, p0, Landroid/net/wifi/WifiScanner;->mAsyncChannel:Lcom/android/internal/util/AsyncChannel;

    #@13
    const v2, 0x2701c

    #@16
    invoke-virtual {v1, v2, v3, v0}, Lcom/android/internal/util/AsyncChannel;->sendMessage(III)V

    #@19
    .line 701
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
    .line 104
    :try_start_0
    iget-object v2, p0, Landroid/net/wifi/WifiScanner;->mService:Landroid/net/wifi/IWifiScanner;

    #@2
    invoke-interface {v2, p1}, Landroid/net/wifi/IWifiScanner;->getAvailableChannels(I)Landroid/os/Bundle;

    #@5
    move-result-object v0

    #@6
    .line 105
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
    .line 106
    .end local v0    # "bundle":Landroid/os/Bundle;
    :catch_0
    move-exception v1

    #@f
    .line 107
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
    .line 757
    invoke-direct {p0}, Landroid/net/wifi/WifiScanner;->validateChannel()V

    #@4
    .line 758
    iget-object v2, p0, Landroid/net/wifi/WifiScanner;->mAsyncChannel:Lcom/android/internal/util/AsyncChannel;

    #@6
    const v3, 0x27004

    #@9
    invoke-virtual {v2, v3, v1}, Lcom/android/internal/util/AsyncChannel;->sendMessageSynchronously(II)Landroid/os/Message;

    #@c
    move-result-object v0

    #@d
    .line 759
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

.method public registerScanListener(Landroid/net/wifi/WifiScanner$ScanListener;)V
    .locals 4
    .param p1, "listener"    # Landroid/net/wifi/WifiScanner$ScanListener;

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 688
    const-string/jumbo v1, "listener cannot be null"

    #@4
    invoke-static {p1, v1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@7
    .line 689
    invoke-direct {p0, p1}, Landroid/net/wifi/WifiScanner;->addListener(Landroid/net/wifi/WifiScanner$ActionListener;)I

    #@a
    move-result v0

    #@b
    .line 690
    .local v0, "key":I
    if-nez v0, :cond_0

    #@d
    return-void

    #@e
    .line 691
    :cond_0
    invoke-direct {p0}, Landroid/net/wifi/WifiScanner;->validateChannel()V

    #@11
    .line 692
    iget-object v1, p0, Landroid/net/wifi/WifiScanner;->mAsyncChannel:Lcom/android/internal/util/AsyncChannel;

    #@13
    const v2, 0x2701b

    #@16
    invoke-virtual {v1, v2, v3, v0}, Lcom/android/internal/util/AsyncChannel;->sendMessage(III)V

    #@19
    .line 687
    return-void
.end method

.method public startBackgroundScan(Landroid/net/wifi/WifiScanner$ScanSettings;Landroid/net/wifi/WifiScanner$ScanListener;)V
    .locals 1
    .param p1, "settings"    # Landroid/net/wifi/WifiScanner$ScanSettings;
    .param p2, "listener"    # Landroid/net/wifi/WifiScanner$ScanListener;

    #@0
    .prologue
    .line 717
    const/4 v0, 0x0

    #@1
    invoke-virtual {p0, p1, p2, v0}, Landroid/net/wifi/WifiScanner;->startBackgroundScan(Landroid/net/wifi/WifiScanner$ScanSettings;Landroid/net/wifi/WifiScanner$ScanListener;Landroid/os/WorkSource;)V

    #@4
    .line 716
    return-void
.end method

.method public startBackgroundScan(Landroid/net/wifi/WifiScanner$ScanSettings;Landroid/net/wifi/WifiScanner$ScanListener;Landroid/os/WorkSource;)V
    .locals 5
    .param p1, "settings"    # Landroid/net/wifi/WifiScanner$ScanSettings;
    .param p2, "listener"    # Landroid/net/wifi/WifiScanner$ScanListener;
    .param p3, "workSource"    # Landroid/os/WorkSource;

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 730
    const-string/jumbo v2, "listener cannot be null"

    #@4
    invoke-static {p2, v2}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@7
    .line 731
    invoke-direct {p0, p2}, Landroid/net/wifi/WifiScanner;->addListener(Landroid/net/wifi/WifiScanner$ActionListener;)I

    #@a
    move-result v0

    #@b
    .line 732
    .local v0, "key":I
    if-nez v0, :cond_0

    #@d
    return-void

    #@e
    .line 733
    :cond_0
    invoke-direct {p0}, Landroid/net/wifi/WifiScanner;->validateChannel()V

    #@11
    .line 734
    new-instance v1, Landroid/os/Bundle;

    #@13
    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    #@16
    .line 735
    .local v1, "scanParams":Landroid/os/Bundle;
    const-string/jumbo v2, "ScanSettings"

    #@19
    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    #@1c
    .line 736
    const-string/jumbo v2, "WorkSource"

    #@1f
    invoke-virtual {v1, v2, p3}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    #@22
    .line 737
    iget-object v2, p0, Landroid/net/wifi/WifiScanner;->mAsyncChannel:Lcom/android/internal/util/AsyncChannel;

    #@24
    const v3, 0x27002

    #@27
    invoke-virtual {v2, v3, v4, v0, v1}, Lcom/android/internal/util/AsyncChannel;->sendMessage(IIILjava/lang/Object;)V

    #@2a
    .line 729
    return-void
.end method

.method public startConnectedPnoScan(Landroid/net/wifi/WifiScanner$ScanSettings;Landroid/net/wifi/WifiScanner$PnoSettings;Landroid/net/wifi/WifiScanner$PnoScanListener;)V
    .locals 2
    .param p1, "scanSettings"    # Landroid/net/wifi/WifiScanner$ScanSettings;
    .param p2, "pnoSettings"    # Landroid/net/wifi/WifiScanner$PnoSettings;
    .param p3, "listener"    # Landroid/net/wifi/WifiScanner$PnoScanListener;

    #@0
    .prologue
    .line 829
    const-string/jumbo v1, "listener cannot be null"

    #@3
    invoke-static {p3, v1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@6
    .line 830
    const-string/jumbo v1, "pnoSettings cannot be null"

    #@9
    invoke-static {p2, v1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@c
    .line 831
    invoke-direct {p0, p3}, Landroid/net/wifi/WifiScanner;->addListener(Landroid/net/wifi/WifiScanner$ActionListener;)I

    #@f
    move-result v0

    #@10
    .line 832
    .local v0, "key":I
    if-nez v0, :cond_0

    #@12
    return-void

    #@13
    .line 833
    :cond_0
    invoke-direct {p0}, Landroid/net/wifi/WifiScanner;->validateChannel()V

    #@16
    .line 834
    const/4 v1, 0x1

    #@17
    iput-boolean v1, p2, Landroid/net/wifi/WifiScanner$PnoSettings;->isConnected:Z

    #@19
    .line 835
    invoke-direct {p0, p1, p2, v0}, Landroid/net/wifi/WifiScanner;->startPnoScan(Landroid/net/wifi/WifiScanner$ScanSettings;Landroid/net/wifi/WifiScanner$PnoSettings;I)V

    #@1c
    .line 828
    return-void
.end method

.method public startDisconnectedPnoScan(Landroid/net/wifi/WifiScanner$ScanSettings;Landroid/net/wifi/WifiScanner$PnoSettings;Landroid/net/wifi/WifiScanner$PnoScanListener;)V
    .locals 3
    .param p1, "scanSettings"    # Landroid/net/wifi/WifiScanner$ScanSettings;
    .param p2, "pnoSettings"    # Landroid/net/wifi/WifiScanner$PnoSettings;
    .param p3, "listener"    # Landroid/net/wifi/WifiScanner$PnoScanListener;

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 850
    const-string/jumbo v1, "listener cannot be null"

    #@4
    invoke-static {p3, v1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@7
    .line 851
    const-string/jumbo v1, "pnoSettings cannot be null"

    #@a
    invoke-static {p2, v1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@d
    .line 852
    invoke-direct {p0, p3}, Landroid/net/wifi/WifiScanner;->addListener(Landroid/net/wifi/WifiScanner$ActionListener;)I

    #@10
    move-result v0

    #@11
    .line 853
    .local v0, "key":I
    if-nez v0, :cond_0

    #@13
    return-void

    #@14
    .line 854
    :cond_0
    invoke-direct {p0}, Landroid/net/wifi/WifiScanner;->validateChannel()V

    #@17
    .line 855
    iput-boolean v2, p2, Landroid/net/wifi/WifiScanner$PnoSettings;->isConnected:Z

    #@19
    .line 856
    invoke-direct {p0, p1, p2, v0}, Landroid/net/wifi/WifiScanner;->startPnoScan(Landroid/net/wifi/WifiScanner$ScanSettings;Landroid/net/wifi/WifiScanner$PnoSettings;I)V

    #@1c
    .line 849
    return-void
.end method

.method public startScan(Landroid/net/wifi/WifiScanner$ScanSettings;Landroid/net/wifi/WifiScanner$ScanListener;)V
    .locals 1
    .param p1, "settings"    # Landroid/net/wifi/WifiScanner$ScanSettings;
    .param p2, "listener"    # Landroid/net/wifi/WifiScanner$ScanListener;

    #@0
    .prologue
    .line 771
    const/4 v0, 0x0

    #@1
    invoke-virtual {p0, p1, p2, v0}, Landroid/net/wifi/WifiScanner;->startScan(Landroid/net/wifi/WifiScanner$ScanSettings;Landroid/net/wifi/WifiScanner$ScanListener;Landroid/os/WorkSource;)V

    #@4
    .line 770
    return-void
.end method

.method public startScan(Landroid/net/wifi/WifiScanner$ScanSettings;Landroid/net/wifi/WifiScanner$ScanListener;Landroid/os/WorkSource;)V
    .locals 5
    .param p1, "settings"    # Landroid/net/wifi/WifiScanner$ScanSettings;
    .param p2, "listener"    # Landroid/net/wifi/WifiScanner$ScanListener;
    .param p3, "workSource"    # Landroid/os/WorkSource;

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 784
    const-string/jumbo v2, "listener cannot be null"

    #@4
    invoke-static {p2, v2}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@7
    .line 785
    invoke-direct {p0, p2}, Landroid/net/wifi/WifiScanner;->addListener(Landroid/net/wifi/WifiScanner$ActionListener;)I

    #@a
    move-result v0

    #@b
    .line 786
    .local v0, "key":I
    if-nez v0, :cond_0

    #@d
    return-void

    #@e
    .line 787
    :cond_0
    invoke-direct {p0}, Landroid/net/wifi/WifiScanner;->validateChannel()V

    #@11
    .line 788
    new-instance v1, Landroid/os/Bundle;

    #@13
    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    #@16
    .line 789
    .local v1, "scanParams":Landroid/os/Bundle;
    const-string/jumbo v2, "ScanSettings"

    #@19
    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    #@1c
    .line 790
    const-string/jumbo v2, "WorkSource"

    #@1f
    invoke-virtual {v1, v2, p3}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    #@22
    .line 791
    iget-object v2, p0, Landroid/net/wifi/WifiScanner;->mAsyncChannel:Lcom/android/internal/util/AsyncChannel;

    #@24
    const v3, 0x27015

    #@27
    invoke-virtual {v2, v3, v4, v0, v1}, Lcom/android/internal/util/AsyncChannel;->sendMessage(IIILjava/lang/Object;)V

    #@2a
    .line 783
    return-void
.end method

.method public startTrackingBssids([Landroid/net/wifi/WifiScanner$BssidInfo;ILandroid/net/wifi/WifiScanner$BssidListener;)V
    .locals 5
    .param p1, "bssidInfos"    # [Landroid/net/wifi/WifiScanner$BssidInfo;
    .param p2, "apLostThreshold"    # I
    .param p3, "listener"    # Landroid/net/wifi/WifiScanner$BssidListener;

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 1103
    const-string/jumbo v2, "listener cannot be null"

    #@4
    invoke-static {p3, v2}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@7
    .line 1104
    invoke-direct {p0, p3}, Landroid/net/wifi/WifiScanner;->addListener(Landroid/net/wifi/WifiScanner$ActionListener;)I

    #@a
    move-result v0

    #@b
    .line 1105
    .local v0, "key":I
    if-nez v0, :cond_0

    #@d
    return-void

    #@e
    .line 1106
    :cond_0
    invoke-direct {p0}, Landroid/net/wifi/WifiScanner;->validateChannel()V

    #@11
    .line 1107
    new-instance v1, Landroid/net/wifi/WifiScanner$HotlistSettings;

    #@13
    invoke-direct {v1}, Landroid/net/wifi/WifiScanner$HotlistSettings;-><init>()V

    #@16
    .line 1108
    .local v1, "settings":Landroid/net/wifi/WifiScanner$HotlistSettings;
    iput-object p1, v1, Landroid/net/wifi/WifiScanner$HotlistSettings;->bssidInfos:[Landroid/net/wifi/WifiScanner$BssidInfo;

    #@18
    .line 1109
    iput p2, v1, Landroid/net/wifi/WifiScanner$HotlistSettings;->apLostThreshold:I

    #@1a
    .line 1110
    iget-object v2, p0, Landroid/net/wifi/WifiScanner;->mAsyncChannel:Lcom/android/internal/util/AsyncChannel;

    #@1c
    const v3, 0x27006

    #@1f
    invoke-virtual {v2, v3, v4, v0, v1}, Lcom/android/internal/util/AsyncChannel;->sendMessage(IIILjava/lang/Object;)V

    #@22
    .line 1102
    return-void
.end method

.method public startTrackingWifiChange(Landroid/net/wifi/WifiScanner$WifiChangeListener;)V
    .locals 4
    .param p1, "listener"    # Landroid/net/wifi/WifiScanner$WifiChangeListener;

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 1002
    const-string/jumbo v1, "listener cannot be null"

    #@4
    invoke-static {p1, v1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@7
    .line 1003
    invoke-direct {p0, p1}, Landroid/net/wifi/WifiScanner;->addListener(Landroid/net/wifi/WifiScanner$ActionListener;)I

    #@a
    move-result v0

    #@b
    .line 1004
    .local v0, "key":I
    if-nez v0, :cond_0

    #@d
    return-void

    #@e
    .line 1005
    :cond_0
    invoke-direct {p0}, Landroid/net/wifi/WifiScanner;->validateChannel()V

    #@11
    .line 1006
    iget-object v1, p0, Landroid/net/wifi/WifiScanner;->mAsyncChannel:Lcom/android/internal/util/AsyncChannel;

    #@13
    const v2, 0x2700b

    #@16
    invoke-virtual {v1, v2, v3, v0}, Lcom/android/internal/util/AsyncChannel;->sendMessage(III)V

    #@19
    .line 1001
    return-void
.end method

.method public stopBackgroundScan(Landroid/net/wifi/WifiScanner$ScanListener;)V
    .locals 4
    .param p1, "listener"    # Landroid/net/wifi/WifiScanner$ScanListener;

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 746
    const-string/jumbo v1, "listener cannot be null"

    #@4
    invoke-static {p1, v1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@7
    .line 747
    invoke-direct {p0, p1}, Landroid/net/wifi/WifiScanner;->removeListener(Ljava/lang/Object;)I

    #@a
    move-result v0

    #@b
    .line 748
    .local v0, "key":I
    if-nez v0, :cond_0

    #@d
    return-void

    #@e
    .line 749
    :cond_0
    invoke-direct {p0}, Landroid/net/wifi/WifiScanner;->validateChannel()V

    #@11
    .line 750
    iget-object v1, p0, Landroid/net/wifi/WifiScanner;->mAsyncChannel:Lcom/android/internal/util/AsyncChannel;

    #@13
    const v2, 0x27003

    #@16
    invoke-virtual {v1, v2, v3, v0}, Lcom/android/internal/util/AsyncChannel;->sendMessage(III)V

    #@19
    .line 745
    return-void
.end method

.method public stopPnoScan(Landroid/net/wifi/WifiScanner$ScanListener;)V
    .locals 4
    .param p1, "listener"    # Landroid/net/wifi/WifiScanner$ScanListener;

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 866
    const-string/jumbo v1, "listener cannot be null"

    #@4
    invoke-static {p1, v1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@7
    .line 867
    invoke-direct {p0, p1}, Landroid/net/wifi/WifiScanner;->removeListener(Ljava/lang/Object;)I

    #@a
    move-result v0

    #@b
    .line 868
    .local v0, "key":I
    if-nez v0, :cond_0

    #@d
    return-void

    #@e
    .line 869
    :cond_0
    invoke-direct {p0}, Landroid/net/wifi/WifiScanner;->validateChannel()V

    #@11
    .line 870
    iget-object v1, p0, Landroid/net/wifi/WifiScanner;->mAsyncChannel:Lcom/android/internal/util/AsyncChannel;

    #@13
    const v2, 0x27019

    #@16
    invoke-virtual {v1, v2, v3, v0}, Lcom/android/internal/util/AsyncChannel;->sendMessage(III)V

    #@19
    .line 865
    return-void
.end method

.method public stopScan(Landroid/net/wifi/WifiScanner$ScanListener;)V
    .locals 4
    .param p1, "listener"    # Landroid/net/wifi/WifiScanner$ScanListener;

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 800
    const-string/jumbo v1, "listener cannot be null"

    #@4
    invoke-static {p1, v1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@7
    .line 801
    invoke-direct {p0, p1}, Landroid/net/wifi/WifiScanner;->removeListener(Ljava/lang/Object;)I

    #@a
    move-result v0

    #@b
    .line 802
    .local v0, "key":I
    if-nez v0, :cond_0

    #@d
    return-void

    #@e
    .line 803
    :cond_0
    invoke-direct {p0}, Landroid/net/wifi/WifiScanner;->validateChannel()V

    #@11
    .line 804
    iget-object v1, p0, Landroid/net/wifi/WifiScanner;->mAsyncChannel:Lcom/android/internal/util/AsyncChannel;

    #@13
    const v2, 0x27016

    #@16
    invoke-virtual {v1, v2, v3, v0}, Lcom/android/internal/util/AsyncChannel;->sendMessage(III)V

    #@19
    .line 799
    return-void
.end method

.method public stopTrackingBssids(Landroid/net/wifi/WifiScanner$BssidListener;)V
    .locals 4
    .param p1, "listener"    # Landroid/net/wifi/WifiScanner$BssidListener;

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 1118
    const-string/jumbo v1, "listener cannot be null"

    #@4
    invoke-static {p1, v1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@7
    .line 1119
    invoke-direct {p0, p1}, Landroid/net/wifi/WifiScanner;->removeListener(Ljava/lang/Object;)I

    #@a
    move-result v0

    #@b
    .line 1120
    .local v0, "key":I
    if-nez v0, :cond_0

    #@d
    return-void

    #@e
    .line 1121
    :cond_0
    invoke-direct {p0}, Landroid/net/wifi/WifiScanner;->validateChannel()V

    #@11
    .line 1122
    iget-object v1, p0, Landroid/net/wifi/WifiScanner;->mAsyncChannel:Lcom/android/internal/util/AsyncChannel;

    #@13
    const v2, 0x27007

    #@16
    invoke-virtual {v1, v2, v3, v0}, Lcom/android/internal/util/AsyncChannel;->sendMessage(III)V

    #@19
    .line 1117
    return-void
.end method

.method public stopTrackingWifiChange(Landroid/net/wifi/WifiScanner$WifiChangeListener;)V
    .locals 4
    .param p1, "listener"    # Landroid/net/wifi/WifiScanner$WifiChangeListener;

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 1015
    invoke-direct {p0, p1}, Landroid/net/wifi/WifiScanner;->removeListener(Ljava/lang/Object;)I

    #@4
    move-result v0

    #@5
    .line 1016
    .local v0, "key":I
    if-nez v0, :cond_0

    #@7
    return-void

    #@8
    .line 1017
    :cond_0
    invoke-direct {p0}, Landroid/net/wifi/WifiScanner;->validateChannel()V

    #@b
    .line 1018
    iget-object v1, p0, Landroid/net/wifi/WifiScanner;->mAsyncChannel:Lcom/android/internal/util/AsyncChannel;

    #@d
    const v2, 0x2700c

    #@10
    invoke-virtual {v1, v2, v3, v0}, Lcom/android/internal/util/AsyncChannel;->sendMessage(III)V

    #@13
    .line 1014
    return-void
.end method
