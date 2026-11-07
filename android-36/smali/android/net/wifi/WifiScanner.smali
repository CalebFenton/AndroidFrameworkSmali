.class public Landroid/net/wifi/WifiScanner;
.super Ljava/lang/Object;
.source "WifiScanner.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/wifi/WifiScanner$ServiceListener;,
        Landroid/net/wifi/WifiScanner$ActionListener;,
        Landroid/net/wifi/WifiScanner$ScanListener;,
        Landroid/net/wifi/WifiScanner$ScanSettings;,
        Landroid/net/wifi/WifiScanner$PnoSettings;,
        Landroid/net/wifi/WifiScanner$PnoScanListener;,
        Landroid/net/wifi/WifiScanner$HotlistSettings;,
        Landroid/net/wifi/WifiScanner$BssidListener;,
        Landroid/net/wifi/WifiScanner$WifiChangeListener;,
        Landroid/net/wifi/WifiScanner$WifiChangeSettings;,
        Landroid/net/wifi/WifiScanner$BssidInfo;,
        Landroid/net/wifi/WifiScanner$ParcelableScanResults;,
        Landroid/net/wifi/WifiScanner$ParcelableScanData;,
        Landroid/net/wifi/WifiScanner$ScanData;,
        Landroid/net/wifi/WifiScanner$ChannelSpec;,
        Landroid/net/wifi/WifiScanner$RnrSetting;,
        Landroid/net/wifi/WifiScanner$ScanStatusCode;,
        Landroid/net/wifi/WifiScanner$WifiBand;,
        Landroid/net/wifi/WifiScanner$WifiBandIndex;
    }
.end annotation


# static fields
.field private static final greylist-max-o BASE:I = 0x27000

.field public static final blacklist CMD_CACHED_SCAN_DATA:I = 0x27006

.field public static final greylist-max-o CMD_DEREGISTER_SCAN_LISTENER:I = 0x2701c

.field public static final blacklist CMD_DISABLE:I = 0x2701f

.field public static final blacklist CMD_ENABLE:I = 0x2701e

.field public static final greylist-max-o CMD_FULL_SCAN_RESULT:I = 0x27014

.field public static final greylist-max-o CMD_GET_SCAN_RESULTS:I = 0x27004

.field public static final greylist-max-o CMD_GET_SINGLE_SCAN_RESULTS:I = 0x2701d

.field public static final greylist-max-o CMD_OP_FAILED:I = 0x27012

.field public static final greylist-max-o CMD_OP_SUCCEEDED:I = 0x27011

.field public static final greylist-max-o CMD_PNO_NETWORK_FOUND:I = 0x2701a

.field public static final greylist-max-o CMD_REGISTER_SCAN_LISTENER:I = 0x2701b

.field public static final greylist-max-o CMD_SCAN_RESULT:I = 0x27005

.field public static final greylist-max-o CMD_SINGLE_SCAN_COMPLETED:I = 0x27017

.field public static final greylist-max-o CMD_START_BACKGROUND_SCAN:I = 0x27002

.field public static final greylist-max-o CMD_START_PNO_SCAN:I = 0x27018

.field public static final greylist-max-o CMD_START_SINGLE_SCAN:I = 0x27015

.field public static final greylist-max-o CMD_STOP_BACKGROUND_SCAN:I = 0x27003

.field public static final greylist-max-o CMD_STOP_PNO_SCAN:I = 0x27019

.field public static final greylist-max-o CMD_STOP_SINGLE_SCAN:I = 0x27016

.field private static final greylist-max-o DBG:Z = false

.field public static final greylist-max-o GET_AVAILABLE_CHANNELS_EXTRA:Ljava/lang/String; = "Channels"

.field public static final whitelist MAX_SCAN_PERIOD_MS:I = 0xfa000

.field public static final whitelist MIN_SCAN_PERIOD_MS:I = 0x3e8

.field public static final greylist-max-o PNO_PARAMS_PNO_SETTINGS_KEY:Ljava/lang/String; = "PnoSettings"

.field public static final greylist-max-o PNO_PARAMS_SCAN_SETTINGS_KEY:Ljava/lang/String; = "ScanSettings"

.field public static final whitelist REASON_ABORT:I = -0x7

.field public static final whitelist REASON_BUSY:I = -0x6

.field public static final whitelist REASON_DUPLICATE_REQEUST:I = -0x5

.field public static final whitelist REASON_INVALID_ARGS:I = -0x9

.field public static final whitelist REASON_INVALID_LISTENER:I = -0x2

.field public static final whitelist REASON_INVALID_REQUEST:I = -0x3

.field public static final whitelist REASON_NOT_AUTHORIZED:I = -0x4

.field public static final whitelist REASON_NO_DEVICE:I = -0x8

.field public static final whitelist REASON_SUCCEEDED:I = 0x0

.field public static final whitelist REASON_TIMEOUT:I = -0xa

.field public static final whitelist REASON_UNSPECIFIED:I = -0x1

.field public static final whitelist REPORT_EVENT_AFTER_BUFFER_FULL:I = 0x0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist REPORT_EVENT_AFTER_EACH_SCAN:I = 0x1

.field public static final whitelist REPORT_EVENT_FULL_SCAN_RESULT:I = 0x2

.field public static final whitelist REPORT_EVENT_NO_BATCH:I = 0x4

.field public static final blacklist REQUEST_FEATURE_ID_KEY:Ljava/lang/String; = "FeatureId"

.field public static final blacklist REQUEST_PACKAGE_NAME_KEY:Ljava/lang/String; = "PackageName"

.field public static final greylist-max-o SCAN_PARAMS_SCAN_SETTINGS_KEY:Ljava/lang/String; = "ScanSettings"

.field public static final greylist-max-o SCAN_PARAMS_WORK_SOURCE_KEY:Ljava/lang/String; = "WorkSource"

.field public static final whitelist SCAN_TYPE_HIGH_ACCURACY:I = 0x2

.field public static final whitelist SCAN_TYPE_LOW_LATENCY:I = 0x0

.field public static final whitelist SCAN_TYPE_LOW_POWER:I = 0x1

.field public static final blacklist SCAN_TYPE_MAX:I = 0x2

.field private static final greylist-max-o TAG:Ljava/lang/String; = "WifiScanner"

.field public static final blacklist WIFI_BAND_24_5_6_60_GHZ:I = 0x1b

.field public static final whitelist WIFI_BAND_24_5_6_GHZ:I = 0xb

.field public static final blacklist WIFI_BAND_24_5_WITH_DFS_6_60_GHZ:I = 0x1f

.field public static final whitelist WIFI_BAND_24_5_WITH_DFS_6_GHZ:I = 0xf

.field public static final whitelist WIFI_BAND_24_GHZ:I = 0x1

.field public static final blacklist WIFI_BAND_24_GHZ_WITH_5GHZ_DFS:I = 0x5

.field public static final whitelist WIFI_BAND_5_GHZ:I = 0x2

.field public static final whitelist WIFI_BAND_5_GHZ_DFS_ONLY:I = 0x4

.field public static final blacklist WIFI_BAND_5_GHZ_HIGH:I = 0x40000000

.field public static final blacklist WIFI_BAND_5_GHZ_LOW:I = 0x20000000

.field public static final whitelist WIFI_BAND_5_GHZ_WITH_DFS:I = 0x6

.field public static final whitelist WIFI_BAND_60_GHZ:I = 0x10

.field public static final whitelist WIFI_BAND_6_GHZ:I = 0x8

.field public static final blacklist WIFI_BAND_ALL:I = 0x1f

.field public static final whitelist WIFI_BAND_BOTH:I = 0x3

.field public static final whitelist WIFI_BAND_BOTH_WITH_DFS:I = 0x7

.field public static final blacklist WIFI_BAND_COUNT:I = 0x5

.field public static final blacklist WIFI_BAND_INDEX_24_GHZ:I = 0x0

.field public static final blacklist WIFI_BAND_INDEX_5_GHZ:I = 0x1

.field public static final blacklist WIFI_BAND_INDEX_5_GHZ_DFS_ONLY:I = 0x2

.field public static final blacklist WIFI_BAND_INDEX_5_GHZ_HIGH:I = 0x1e

.field public static final blacklist WIFI_BAND_INDEX_5_GHZ_LOW:I = 0x1d

.field public static final blacklist WIFI_BAND_INDEX_60_GHZ:I = 0x4

.field public static final blacklist WIFI_BAND_INDEX_6_GHZ:I = 0x3

.field public static final whitelist WIFI_BAND_UNSPECIFIED:I = 0x0

.field public static final blacklist WIFI_IE_HEAD_LEN:I = 0x2

.field public static final whitelist WIFI_RNR_ENABLED:I = 0x1

.field public static final whitelist WIFI_RNR_ENABLED_IF_WIFI_BAND_6_GHZ_SCANNED:I = 0x0

.field public static final whitelist WIFI_RNR_NOT_NEEDED:I = 0x2

.field public static final blacklist WIFI_SCANNER_SETTINGS_VENDOR_ELEMENTS_MAX_LEN:I = 0x200


# instance fields
.field private greylist-max-o mContext:Landroid/content/Context;

.field private final blacklist mListenerMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/net/wifi/WifiScanner$ActionListener;",
            "Landroid/net/wifi/WifiScanner$ServiceListener;",
            ">;"
        }
    .end annotation
.end field

.field private final greylist-max-o mListenerMapLock:Ljava/lang/Object;

.field private greylist-max-o mService:Landroid/net/wifi/IWifiScanner;


# direct methods
.method static bridge synthetic blacklist -$$Nest$mremoveListener(Landroid/net/wifi/WifiScanner;Landroid/net/wifi/WifiScanner$ActionListener;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/net/wifi/WifiScanner;->removeListener(Landroid/net/wifi/WifiScanner$ActionListener;)V

    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;Landroid/net/wifi/IWifiScanner;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "service"    # Landroid/net/wifi/IWifiScanner;

    .line 2029
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2016
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/net/wifi/WifiScanner;->mListenerMapLock:Ljava/lang/Object;

    .line 2017
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/net/wifi/WifiScanner;->mListenerMap:Ljava/util/Map;

    .line 2030
    iput-object p1, p0, Landroid/net/wifi/WifiScanner;->mContext:Landroid/content/Context;

    .line 2031
    iput-object p2, p0, Landroid/net/wifi/WifiScanner;->mService:Landroid/net/wifi/IWifiScanner;

    .line 2032
    return-void
.end method

.method private blacklist addListener(Landroid/net/wifi/WifiScanner$ActionListener;Landroid/net/wifi/WifiScanner$ServiceListener;)Z
    .registers 6
    .param p1, "listener"    # Landroid/net/wifi/WifiScanner$ActionListener;
    .param p2, "serviceListener"    # Landroid/net/wifi/WifiScanner$ServiceListener;

    .line 2038
    iget-object v0, p0, Landroid/net/wifi/WifiScanner;->mListenerMapLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2039
    :try_start_3
    iget-object v1, p0, Landroid/net/wifi/WifiScanner;->mListenerMap:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    .line 2043
    .local v1, "keyExists":Z
    if-eqz v1, :cond_e

    .line 2045
    monitor-exit v0

    const/4 v0, 0x0

    return v0

    .line 2047
    :cond_e
    iget-object v2, p0, Landroid/net/wifi/WifiScanner;->mListenerMap:Ljava/util/Map;

    invoke-interface {v2, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2048
    monitor-exit v0

    const/4 v0, 0x1

    return v0

    .line 2049
    .end local v1    # "keyExists":Z
    :catchall_16
    move-exception v1

    monitor-exit v0
    :try_end_18
    .catchall {:try_start_3 .. :try_end_18} :catchall_16

    throw v1
.end method

.method private blacklist getServiceListener(Landroid/net/wifi/WifiScanner$ActionListener;)Landroid/net/wifi/WifiScanner$ServiceListener;
    .registers 4
    .param p1, "listener"    # Landroid/net/wifi/WifiScanner$ActionListener;

    .line 2053
    if-nez p1, :cond_4

    const/4 v0, 0x0

    return-object v0

    .line 2054
    :cond_4
    iget-object v0, p0, Landroid/net/wifi/WifiScanner;->mListenerMapLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2055
    :try_start_7
    iget-object v1, p0, Landroid/net/wifi/WifiScanner;->mListenerMap:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/WifiScanner$ServiceListener;

    monitor-exit v0

    return-object v1

    .line 2056
    :catchall_11
    move-exception v1

    monitor-exit v0
    :try_end_13
    .catchall {:try_start_7 .. :try_end_13} :catchall_11

    throw v1
.end method

.method public static blacklist isFullBandScan(IZ)Z
    .registers 5
    .param p0, "bandsScanned"    # I
    .param p1, "excludeDfs"    # Z

    .line 305
    or-int/lit8 v0, p0, 0x8

    or-int/lit8 v0, v0, 0x10

    .line 306
    const/4 v1, 0x0

    if-eqz p1, :cond_9

    const/4 v2, 0x4

    goto :goto_a

    :cond_9
    move v2, v1

    :goto_a
    or-int/2addr v0, v2

    const/16 v2, 0x1f

    if-ne v0, v2, :cond_10

    const/4 v1, 0x1

    .line 305
    :cond_10
    return v1
.end method

.method static synthetic blacklist lambda$registerScanListener$0(Landroid/net/wifi/WifiScanner$ScanListener;)V
    .registers 3
    .param p0, "listener"    # Landroid/net/wifi/WifiScanner$ScanListener;

    .line 1385
    const/4 v0, -0x5

    const-string v1, "Outstanding request with same key not stopped yet"

    invoke-interface {p0, v0, v1}, Landroid/net/wifi/WifiScanner$ScanListener;->onFailure(ILjava/lang/String;)V

    return-void
.end method

.method private blacklist removeListener(Landroid/net/wifi/WifiScanner$ActionListener;)V
    .registers 4
    .param p1, "listener"    # Landroid/net/wifi/WifiScanner$ActionListener;

    .line 2060
    if-nez p1, :cond_3

    return-void

    .line 2061
    :cond_3
    iget-object v0, p0, Landroid/net/wifi/WifiScanner;->mListenerMapLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2062
    :try_start_6
    iget-object v1, p0, Landroid/net/wifi/WifiScanner;->mListenerMap:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2063
    monitor-exit v0

    .line 2064
    return-void

    .line 2063
    :catchall_d
    move-exception v1

    monitor-exit v0
    :try_end_f
    .catchall {:try_start_6 .. :try_end_f} :catchall_d

    throw v1
.end method

.method private blacklist startPnoScan(Landroid/net/wifi/WifiScanner$PnoScanListener;Ljava/util/concurrent/Executor;Landroid/net/wifi/WifiScanner$ScanSettings;Landroid/net/wifi/WifiScanner$PnoSettings;)V
    .registers 12
    .param p1, "listener"    # Landroid/net/wifi/WifiScanner$PnoScanListener;
    .param p2, "executor"    # Ljava/util/concurrent/Executor;
    .param p3, "scanSettings"    # Landroid/net/wifi/WifiScanner$ScanSettings;
    .param p4, "pnoSettings"    # Landroid/net/wifi/WifiScanner$PnoSettings;

    .line 1692
    const/4 v0, 0x1

    iput-boolean v0, p3, Landroid/net/wifi/WifiScanner$ScanSettings;->isPnoScan:Z

    .line 1693
    invoke-direct {p0, p1}, Landroid/net/wifi/WifiScanner;->getServiceListener(Landroid/net/wifi/WifiScanner$ActionListener;)Landroid/net/wifi/WifiScanner$ServiceListener;

    move-result-object v0

    if-eqz v0, :cond_a

    return-void

    .line 1694
    :cond_a
    new-instance v0, Landroid/net/wifi/WifiScanner$ServiceListener;

    invoke-direct {v0, p0, p1, p2}, Landroid/net/wifi/WifiScanner$ServiceListener;-><init>(Landroid/net/wifi/WifiScanner;Landroid/net/wifi/WifiScanner$ActionListener;Ljava/util/concurrent/Executor;)V

    move-object v2, v0

    .line 1695
    .local v2, "serviceListener":Landroid/net/wifi/WifiScanner$ServiceListener;
    invoke-direct {p0, p1, v2}, Landroid/net/wifi/WifiScanner;->addListener(Landroid/net/wifi/WifiScanner$ActionListener;Landroid/net/wifi/WifiScanner$ServiceListener;)Z

    move-result v0

    if-nez v0, :cond_1d

    .line 1696
    const-string v0, "WifiScanner"

    const-string v1, "listener already exist!"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1699
    :cond_1d
    :try_start_1d
    iget-object v1, p0, Landroid/net/wifi/WifiScanner;->mService:Landroid/net/wifi/IWifiScanner;

    iget-object v0, p0, Landroid/net/wifi/WifiScanner;->mContext:Landroid/content/Context;

    .line 1700
    invoke-virtual {v0}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v5

    iget-object v0, p0, Landroid/net/wifi/WifiScanner;->mContext:Landroid/content/Context;

    .line 1701
    invoke-virtual {v0}, Landroid/content/Context;->getAttributionTag()Ljava/lang/String;

    move-result-object v6
    :try_end_2b
    .catch Landroid/os/RemoteException; {:try_start_1d .. :try_end_2b} :catch_35

    .line 1699
    move-object v3, p3

    move-object v4, p4

    .end local p3    # "scanSettings":Landroid/net/wifi/WifiScanner$ScanSettings;
    .end local p4    # "pnoSettings":Landroid/net/wifi/WifiScanner$PnoSettings;
    .local v3, "scanSettings":Landroid/net/wifi/WifiScanner$ScanSettings;
    .local v4, "pnoSettings":Landroid/net/wifi/WifiScanner$PnoSettings;
    :try_start_2d
    invoke-interface/range {v1 .. v6}, Landroid/net/wifi/IWifiScanner;->startPnoScan(Landroid/net/wifi/IWifiScannerListener;Landroid/net/wifi/WifiScanner$ScanSettings;Landroid/net/wifi/WifiScanner$PnoSettings;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_30
    .catch Landroid/os/RemoteException; {:try_start_2d .. :try_end_30} :catch_32

    .line 1704
    nop

    .line 1705
    return-void

    .line 1702
    :catch_32
    move-exception v0

    move-object p3, v0

    goto :goto_39

    .end local v3    # "scanSettings":Landroid/net/wifi/WifiScanner$ScanSettings;
    .end local v4    # "pnoSettings":Landroid/net/wifi/WifiScanner$PnoSettings;
    .restart local p3    # "scanSettings":Landroid/net/wifi/WifiScanner$ScanSettings;
    .restart local p4    # "pnoSettings":Landroid/net/wifi/WifiScanner$PnoSettings;
    :catch_35
    move-exception v0

    move-object v3, p3

    move-object v4, p4

    move-object p3, v0

    .line 1703
    .end local p4    # "pnoSettings":Landroid/net/wifi/WifiScanner$PnoSettings;
    .restart local v3    # "scanSettings":Landroid/net/wifi/WifiScanner$ScanSettings;
    .restart local v4    # "pnoSettings":Landroid/net/wifi/WifiScanner$PnoSettings;
    .local p3, "e":Landroid/os/RemoteException;
    :goto_39
    invoke-virtual {p3}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p4

    throw p4
.end method


# virtual methods
.method public whitelist configureWifiChange(IIIII[Landroid/net/wifi/WifiScanner$BssidInfo;)V
    .registers 8
    .param p1, "rssiSampleSize"    # I
    .param p2, "lostApSampleSize"    # I
    .param p3, "unchangedSampleSize"    # I
    .param p4, "minApsBreachingThreshold"    # I
    .param p5, "periodInMs"    # I
    .param p6, "bssidInfos"    # [Landroid/net/wifi/WifiScanner$BssidInfo;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1850
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public whitelist configureWifiChange(Landroid/net/wifi/WifiScanner$WifiChangeSettings;)V
    .registers 3
    .param p1, "settings"    # Landroid/net/wifi/WifiScanner$WifiChangeSettings;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1895
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public blacklist enableVerboseLogging(Z)V
    .registers 4
    .param p1, "enabled"    # Z

    .line 1777
    :try_start_0
    iget-object v0, p0, Landroid/net/wifi/WifiScanner;->mService:Landroid/net/wifi/IWifiScanner;

    invoke-interface {v0, p1}, Landroid/net/wifi/IWifiScanner;->enableVerboseLogging(Z)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    .line 1780
    nop

    .line 1781
    return-void

    .line 1778
    :catch_7
    move-exception v0

    .line 1779
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist getAvailableChannels(I)Ljava/util/List;
    .registers 6
    .param p1, "band"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 321
    :try_start_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 322
    .local v0, "extras":Landroid/os/Bundle;
    invoke-static {}, Lcom/android/wifi/x/com/android/modules/utils/build/SdkLevel;->isAtLeastS()Z

    move-result v1

    if-eqz v1, :cond_16

    .line 323
    const-string v1, "EXTRA_PARAM_KEY_ATTRIBUTION_SOURCE"

    iget-object v2, p0, Landroid/net/wifi/WifiScanner;->mContext:Landroid/content/Context;

    .line 324
    invoke-virtual {v2}, Landroid/content/Context;->getAttributionSource()Landroid/content/AttributionSource;

    move-result-object v2

    .line 323
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 326
    :cond_16
    iget-object v1, p0, Landroid/net/wifi/WifiScanner;->mService:Landroid/net/wifi/IWifiScanner;

    iget-object v2, p0, Landroid/net/wifi/WifiScanner;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Landroid/net/wifi/WifiScanner;->mContext:Landroid/content/Context;

    .line 327
    invoke-virtual {v3}, Landroid/content/Context;->getAttributionTag()Ljava/lang/String;

    move-result-object v3

    .line 326
    invoke-interface {v1, p1, v2, v3, v0}, Landroid/net/wifi/IWifiScanner;->getAvailableChannels(ILjava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v1

    .line 328
    .local v1, "bundle":Landroid/os/Bundle;
    const-string v2, "Channels"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getIntegerArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    .line 329
    .local v2, "channels":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    if-nez v2, :cond_36

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V
    :try_end_35
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_35} :catch_38

    goto :goto_37

    :cond_36
    move-object v3, v2

    :goto_37
    return-object v3

    .line 330
    .end local v0    # "extras":Landroid/os/Bundle;
    .end local v1    # "bundle":Landroid/os/Bundle;
    .end local v2    # "channels":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    :catch_38
    move-exception v0

    .line 331
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist getCachedScanData(Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)V
    .registers 7
    .param p1, "executor"    # Ljava/util/concurrent/Executor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Executor;",
            "Ljava/util/function/Consumer<",
            "Landroid/net/wifi/WifiScanner$ScanData;",
            ">;)V"
        }
    .end annotation

    .line 1669
    .local p2, "resultsCallback":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Landroid/net/wifi/WifiScanner$ScanData;>;"
    const-string v0, "executor cannot be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 1670
    const-string v0, "resultsCallback cannot be null"

    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 1672
    :try_start_a
    iget-object v0, p0, Landroid/net/wifi/WifiScanner;->mService:Landroid/net/wifi/IWifiScanner;

    iget-object v1, p0, Landroid/net/wifi/WifiScanner;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Landroid/net/wifi/WifiScanner;->mContext:Landroid/content/Context;

    .line 1673
    invoke-virtual {v2}, Landroid/content/Context;->getAttributionTag()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Landroid/net/wifi/WifiScanner$1;

    invoke-direct {v3, p0, p1, p2}, Landroid/net/wifi/WifiScanner$1;-><init>(Landroid/net/wifi/WifiScanner;Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)V

    .line 1672
    invoke-interface {v0, v1, v2, v3}, Landroid/net/wifi/IWifiScanner;->getCachedScanData(Ljava/lang/String;Ljava/lang/String;Landroid/net/wifi/IScanDataListener;)V
    :try_end_20
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_20} :catch_22

    .line 1685
    nop

    .line 1686
    return-void

    .line 1683
    :catch_22
    move-exception v0

    .line 1684
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist getScanResults()Z
    .registers 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1533
    :try_start_0
    iget-object v0, p0, Landroid/net/wifi/WifiScanner;->mService:Landroid/net/wifi/IWifiScanner;

    iget-object v1, p0, Landroid/net/wifi/WifiScanner;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Landroid/net/wifi/WifiScanner;->mContext:Landroid/content/Context;

    .line 1534
    invoke-virtual {v2}, Landroid/content/Context;->getAttributionTag()Ljava/lang/String;

    move-result-object v2

    .line 1533
    invoke-interface {v0, v1, v2}, Landroid/net/wifi/IWifiScanner;->getScanResults(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0
    :try_end_12
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_12} :catch_13

    return v0

    .line 1535
    :catch_13
    move-exception v0

    .line 1536
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist getSingleScanResults()Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/net/wifi/ScanResult;",
            ">;"
        }
    .end annotation

    .line 1637
    :try_start_0
    iget-object v0, p0, Landroid/net/wifi/WifiScanner;->mService:Landroid/net/wifi/IWifiScanner;

    iget-object v1, p0, Landroid/net/wifi/WifiScanner;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Landroid/net/wifi/WifiScanner;->mContext:Landroid/content/Context;

    .line 1638
    invoke-virtual {v2}, Landroid/content/Context;->getAttributionTag()Ljava/lang/String;

    move-result-object v2

    .line 1637
    invoke-interface {v0, v1, v2}, Landroid/net/wifi/IWifiScanner;->getSingleScanResults(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0
    :try_end_12
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_12} :catch_13

    return-object v0

    .line 1639
    :catch_13
    move-exception v0

    .line 1640
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist isScanning()Z
    .registers 3
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 1447
    :try_start_0
    iget-object v0, p0, Landroid/net/wifi/WifiScanner;->mService:Landroid/net/wifi/IWifiScanner;

    invoke-interface {v0}, Landroid/net/wifi/IWifiScanner;->isScanning()Z

    move-result v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return v0

    .line 1448
    :catch_7
    move-exception v0

    .line 1449
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public greylist-max-o registerScanListener(Landroid/net/wifi/WifiScanner$ScanListener;)V
    .registers 3
    .param p1, "listener"    # Landroid/net/wifi/WifiScanner$ScanListener;

    .line 1407
    new-instance v0, Landroid/net/wifi/SynchronousExecutor;

    invoke-direct {v0}, Landroid/net/wifi/SynchronousExecutor;-><init>()V

    invoke-virtual {p0, v0, p1}, Landroid/net/wifi/WifiScanner;->registerScanListener(Ljava/util/concurrent/Executor;Landroid/net/wifi/WifiScanner$ScanListener;)V

    .line 1408
    return-void
.end method

.method public whitelist registerScanListener(Ljava/util/concurrent/Executor;Landroid/net/wifi/WifiScanner$ScanListener;)V
    .registers 7
    .param p1, "executor"    # Ljava/util/concurrent/Executor;
    .param p2, "listener"    # Landroid/net/wifi/WifiScanner$ScanListener;

    .line 1378
    const-string v0, "executor cannot be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 1379
    const-string v0, "listener cannot be null"

    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 1380
    new-instance v0, Landroid/net/wifi/WifiScanner$ServiceListener;

    invoke-direct {v0, p0, p2, p1}, Landroid/net/wifi/WifiScanner$ServiceListener;-><init>(Landroid/net/wifi/WifiScanner;Landroid/net/wifi/WifiScanner$ActionListener;Ljava/util/concurrent/Executor;)V

    .line 1381
    .local v0, "serviceListener":Landroid/net/wifi/WifiScanner$ServiceListener;
    invoke-direct {p0, p2, v0}, Landroid/net/wifi/WifiScanner;->addListener(Landroid/net/wifi/WifiScanner$ActionListener;Landroid/net/wifi/WifiScanner$ServiceListener;)Z

    move-result v1

    if-nez v1, :cond_21

    .line 1382
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 1383
    new-instance v1, Landroid/net/wifi/WifiScanner$$ExternalSyntheticLambda0;

    invoke-direct {v1, p2}, Landroid/net/wifi/WifiScanner$$ExternalSyntheticLambda0;-><init>(Landroid/net/wifi/WifiScanner$ScanListener;)V

    invoke-interface {p1, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 1387
    return-void

    .line 1390
    :cond_21
    :try_start_21
    iget-object v1, p0, Landroid/net/wifi/WifiScanner;->mService:Landroid/net/wifi/IWifiScanner;

    iget-object v2, p0, Landroid/net/wifi/WifiScanner;->mContext:Landroid/content/Context;

    .line 1391
    invoke-virtual {v2}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Landroid/net/wifi/WifiScanner;->mContext:Landroid/content/Context;

    .line 1392
    invoke-virtual {v3}, Landroid/content/Context;->getAttributionTag()Ljava/lang/String;

    move-result-object v3

    .line 1390
    invoke-interface {v1, v0, v2, v3}, Landroid/net/wifi/IWifiScanner;->registerScanListener(Landroid/net/wifi/IWifiScannerListener;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_32
    .catch Landroid/os/RemoteException; {:try_start_21 .. :try_end_32} :catch_34

    .line 1397
    nop

    .line 1398
    return-void

    .line 1393
    :catch_34
    move-exception v1

    .line 1394
    .local v1, "e":Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to register listener "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "WifiScanner"

    invoke-static {v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1395
    invoke-direct {p0, p2}, Landroid/net/wifi/WifiScanner;->removeListener(Landroid/net/wifi/WifiScanner$ActionListener;)V

    .line 1396
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method public whitelist setScanningEnabled(Z)V
    .registers 5
    .param p1, "enable"    # Z
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 1347
    :try_start_0
    iget-object v0, p0, Landroid/net/wifi/WifiScanner;->mService:Landroid/net/wifi/IWifiScanner;

    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v1

    iget-object v2, p0, Landroid/net/wifi/WifiScanner;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, p1, v1, v2}, Landroid/net/wifi/IWifiScanner;->setScanningEnabled(ZILjava/lang/String;)Z
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_f} :catch_11

    .line 1350
    nop

    .line 1351
    return-void

    .line 1348
    :catch_11
    move-exception v0

    .line 1349
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist startBackgroundScan(Landroid/net/wifi/WifiScanner$ScanSettings;Landroid/net/wifi/WifiScanner$ScanListener;)V
    .registers 4
    .param p1, "settings"    # Landroid/net/wifi/WifiScanner$ScanSettings;
    .param p2, "listener"    # Landroid/net/wifi/WifiScanner$ScanListener;

    .line 1462
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Landroid/net/wifi/WifiScanner;->startBackgroundScan(Landroid/net/wifi/WifiScanner$ScanSettings;Landroid/net/wifi/WifiScanner$ScanListener;Landroid/os/WorkSource;)V

    .line 1463
    return-void
.end method

.method public whitelist startBackgroundScan(Landroid/net/wifi/WifiScanner$ScanSettings;Landroid/net/wifi/WifiScanner$ScanListener;Landroid/os/WorkSource;)V
    .registers 12
    .param p1, "settings"    # Landroid/net/wifi/WifiScanner$ScanSettings;
    .param p2, "listener"    # Landroid/net/wifi/WifiScanner$ScanListener;
    .param p3, "workSource"    # Landroid/os/WorkSource;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1480
    const-string v0, "listener cannot be null"

    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 1481
    invoke-direct {p0, p2}, Landroid/net/wifi/WifiScanner;->getServiceListener(Landroid/net/wifi/WifiScanner$ActionListener;)Landroid/net/wifi/WifiScanner$ServiceListener;

    move-result-object v0

    if-eqz v0, :cond_c

    return-void

    .line 1482
    :cond_c
    new-instance v0, Landroid/net/wifi/WifiScanner$ServiceListener;

    new-instance v1, Landroid/net/wifi/SynchronousExecutor;

    invoke-direct {v1}, Landroid/net/wifi/SynchronousExecutor;-><init>()V

    invoke-direct {v0, p0, p2, v1}, Landroid/net/wifi/WifiScanner$ServiceListener;-><init>(Landroid/net/wifi/WifiScanner;Landroid/net/wifi/WifiScanner$ActionListener;Ljava/util/concurrent/Executor;)V

    move-object v3, v0

    .line 1483
    .local v3, "serviceListener":Landroid/net/wifi/WifiScanner$ServiceListener;
    invoke-direct {p0, p2, v3}, Landroid/net/wifi/WifiScanner;->addListener(Landroid/net/wifi/WifiScanner$ActionListener;Landroid/net/wifi/WifiScanner$ServiceListener;)Z

    move-result v0

    if-nez v0, :cond_25

    .line 1484
    const-string v0, "WifiScanner"

    const-string v1, "listener already exist!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1485
    return-void

    .line 1488
    :cond_25
    :try_start_25
    iget-object v2, p0, Landroid/net/wifi/WifiScanner;->mService:Landroid/net/wifi/IWifiScanner;

    iget-object v0, p0, Landroid/net/wifi/WifiScanner;->mContext:Landroid/content/Context;

    .line 1489
    invoke-virtual {v0}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v6

    iget-object v0, p0, Landroid/net/wifi/WifiScanner;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getAttributionTag()Ljava/lang/String;

    move-result-object v7
    :try_end_33
    .catch Landroid/os/RemoteException; {:try_start_25 .. :try_end_33} :catch_3d

    .line 1488
    move-object v4, p1

    move-object v5, p3

    .end local p1    # "settings":Landroid/net/wifi/WifiScanner$ScanSettings;
    .end local p3    # "workSource":Landroid/os/WorkSource;
    .local v4, "settings":Landroid/net/wifi/WifiScanner$ScanSettings;
    .local v5, "workSource":Landroid/os/WorkSource;
    :try_start_35
    invoke-interface/range {v2 .. v7}, Landroid/net/wifi/IWifiScanner;->startBackgroundScan(Landroid/net/wifi/IWifiScannerListener;Landroid/net/wifi/WifiScanner$ScanSettings;Landroid/os/WorkSource;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_38
    .catch Landroid/os/RemoteException; {:try_start_35 .. :try_end_38} :catch_3a

    .line 1492
    nop

    .line 1493
    return-void

    .line 1490
    :catch_3a
    move-exception v0

    move-object p1, v0

    goto :goto_41

    .end local v4    # "settings":Landroid/net/wifi/WifiScanner$ScanSettings;
    .end local v5    # "workSource":Landroid/os/WorkSource;
    .restart local p1    # "settings":Landroid/net/wifi/WifiScanner$ScanSettings;
    .restart local p3    # "workSource":Landroid/os/WorkSource;
    :catch_3d
    move-exception v0

    move-object v4, p1

    move-object v5, p3

    move-object p1, v0

    .line 1491
    .end local p3    # "workSource":Landroid/os/WorkSource;
    .restart local v4    # "settings":Landroid/net/wifi/WifiScanner$ScanSettings;
    .restart local v5    # "workSource":Landroid/os/WorkSource;
    .local p1, "e":Landroid/os/RemoteException;
    :goto_41
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p3

    throw p3
.end method

.method public blacklist startConnectedPnoScan(Landroid/net/wifi/WifiScanner$ScanSettings;Landroid/net/wifi/WifiScanner$PnoSettings;Ljava/util/concurrent/Executor;Landroid/net/wifi/WifiScanner$PnoScanListener;)V
    .registers 6
    .param p1, "scanSettings"    # Landroid/net/wifi/WifiScanner$ScanSettings;
    .param p2, "pnoSettings"    # Landroid/net/wifi/WifiScanner$PnoSettings;
    .param p3, "executor"    # Ljava/util/concurrent/Executor;
    .param p4, "listener"    # Landroid/net/wifi/WifiScanner$PnoScanListener;

    .line 1721
    const-string v0, "listener cannot be null"

    invoke-static {p4, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 1722
    const-string v0, "pnoSettings cannot be null"

    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 1723
    const/4 v0, 0x1

    iput-boolean v0, p2, Landroid/net/wifi/WifiScanner$PnoSettings;->isConnected:Z

    .line 1724
    invoke-direct {p0, p4, p3, p1, p2}, Landroid/net/wifi/WifiScanner;->startPnoScan(Landroid/net/wifi/WifiScanner$PnoScanListener;Ljava/util/concurrent/Executor;Landroid/net/wifi/WifiScanner$ScanSettings;Landroid/net/wifi/WifiScanner$PnoSettings;)V

    .line 1725
    return-void
.end method

.method public blacklist startDisconnectedPnoScan(Landroid/net/wifi/WifiScanner$ScanSettings;Landroid/net/wifi/WifiScanner$PnoSettings;Ljava/util/concurrent/Executor;Landroid/net/wifi/WifiScanner$PnoScanListener;)V
    .registers 6
    .param p1, "scanSettings"    # Landroid/net/wifi/WifiScanner$ScanSettings;
    .param p2, "pnoSettings"    # Landroid/net/wifi/WifiScanner$PnoSettings;
    .param p3, "executor"    # Ljava/util/concurrent/Executor;
    .param p4, "listener"    # Landroid/net/wifi/WifiScanner$PnoScanListener;

    .line 1740
    const-string v0, "listener cannot be null"

    invoke-static {p4, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 1741
    const-string v0, "pnoSettings cannot be null"

    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 1742
    const/4 v0, 0x0

    iput-boolean v0, p2, Landroid/net/wifi/WifiScanner$PnoSettings;->isConnected:Z

    .line 1743
    invoke-direct {p0, p4, p3, p1, p2}, Landroid/net/wifi/WifiScanner;->startPnoScan(Landroid/net/wifi/WifiScanner$PnoScanListener;Ljava/util/concurrent/Executor;Landroid/net/wifi/WifiScanner$ScanSettings;Landroid/net/wifi/WifiScanner$PnoSettings;)V

    .line 1744
    return-void
.end method

.method public whitelist startScan(Landroid/net/wifi/WifiScanner$ScanSettings;Landroid/net/wifi/WifiScanner$ScanListener;)V
    .registers 4
    .param p1, "settings"    # Landroid/net/wifi/WifiScanner$ScanSettings;
    .param p2, "listener"    # Landroid/net/wifi/WifiScanner$ScanListener;

    .line 1550
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Landroid/net/wifi/WifiScanner;->startScan(Landroid/net/wifi/WifiScanner$ScanSettings;Landroid/net/wifi/WifiScanner$ScanListener;Landroid/os/WorkSource;)V

    .line 1551
    return-void
.end method

.method public whitelist startScan(Landroid/net/wifi/WifiScanner$ScanSettings;Landroid/net/wifi/WifiScanner$ScanListener;Landroid/os/WorkSource;)V
    .registers 5
    .param p1, "settings"    # Landroid/net/wifi/WifiScanner$ScanSettings;
    .param p2, "listener"    # Landroid/net/wifi/WifiScanner$ScanListener;
    .param p3, "workSource"    # Landroid/os/WorkSource;

    .line 1564
    new-instance v0, Landroid/net/wifi/SynchronousExecutor;

    invoke-direct {v0}, Landroid/net/wifi/SynchronousExecutor;-><init>()V

    invoke-virtual {p0, p1, v0, p2, p3}, Landroid/net/wifi/WifiScanner;->startScan(Landroid/net/wifi/WifiScanner$ScanSettings;Ljava/util/concurrent/Executor;Landroid/net/wifi/WifiScanner$ScanListener;Landroid/os/WorkSource;)V

    .line 1565
    return-void
.end method

.method public blacklist startScan(Landroid/net/wifi/WifiScanner$ScanSettings;Ljava/util/concurrent/Executor;Landroid/net/wifi/WifiScanner$ScanListener;Landroid/os/WorkSource;)V
    .registers 12
    .param p1, "settings"    # Landroid/net/wifi/WifiScanner$ScanSettings;
    .param p2, "executor"    # Ljava/util/concurrent/Executor;
    .param p3, "listener"    # Landroid/net/wifi/WifiScanner$ScanListener;
    .param p4, "workSource"    # Landroid/os/WorkSource;

    .line 1581
    const-string v0, "listener cannot be null"

    invoke-static {p3, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 1582
    invoke-direct {p0, p3}, Landroid/net/wifi/WifiScanner;->getServiceListener(Landroid/net/wifi/WifiScanner$ActionListener;)Landroid/net/wifi/WifiScanner$ServiceListener;

    move-result-object v0

    if-eqz v0, :cond_c

    return-void

    .line 1583
    :cond_c
    new-instance v0, Landroid/net/wifi/WifiScanner$ServiceListener;

    invoke-direct {v0, p0, p3, p2}, Landroid/net/wifi/WifiScanner$ServiceListener;-><init>(Landroid/net/wifi/WifiScanner;Landroid/net/wifi/WifiScanner$ActionListener;Ljava/util/concurrent/Executor;)V

    move-object v2, v0

    .line 1584
    .local v2, "serviceListener":Landroid/net/wifi/WifiScanner$ServiceListener;
    invoke-direct {p0, p3, v2}, Landroid/net/wifi/WifiScanner;->addListener(Landroid/net/wifi/WifiScanner$ActionListener;Landroid/net/wifi/WifiScanner$ServiceListener;)Z

    move-result v0

    if-nez v0, :cond_20

    .line 1585
    const-string v0, "WifiScanner"

    const-string v1, "listener already exist!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1586
    return-void

    .line 1589
    :cond_20
    :try_start_20
    iget-object v1, p0, Landroid/net/wifi/WifiScanner;->mService:Landroid/net/wifi/IWifiScanner;

    iget-object v0, p0, Landroid/net/wifi/WifiScanner;->mContext:Landroid/content/Context;

    .line 1590
    invoke-virtual {v0}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v5

    iget-object v0, p0, Landroid/net/wifi/WifiScanner;->mContext:Landroid/content/Context;

    .line 1591
    invoke-virtual {v0}, Landroid/content/Context;->getAttributionTag()Ljava/lang/String;

    move-result-object v6
    :try_end_2e
    .catch Landroid/os/RemoteException; {:try_start_20 .. :try_end_2e} :catch_38

    .line 1589
    move-object v3, p1

    move-object v4, p4

    .end local p1    # "settings":Landroid/net/wifi/WifiScanner$ScanSettings;
    .end local p4    # "workSource":Landroid/os/WorkSource;
    .local v3, "settings":Landroid/net/wifi/WifiScanner$ScanSettings;
    .local v4, "workSource":Landroid/os/WorkSource;
    :try_start_30
    invoke-interface/range {v1 .. v6}, Landroid/net/wifi/IWifiScanner;->startScan(Landroid/net/wifi/IWifiScannerListener;Landroid/net/wifi/WifiScanner$ScanSettings;Landroid/os/WorkSource;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_33
    .catch Landroid/os/RemoteException; {:try_start_30 .. :try_end_33} :catch_35

    .line 1594
    nop

    .line 1595
    return-void

    .line 1592
    :catch_35
    move-exception v0

    move-object p1, v0

    goto :goto_3c

    .end local v3    # "settings":Landroid/net/wifi/WifiScanner$ScanSettings;
    .end local v4    # "workSource":Landroid/os/WorkSource;
    .restart local p1    # "settings":Landroid/net/wifi/WifiScanner$ScanSettings;
    .restart local p4    # "workSource":Landroid/os/WorkSource;
    :catch_38
    move-exception v0

    move-object v3, p1

    move-object v4, p4

    move-object p1, v0

    .line 1593
    .end local p4    # "workSource":Landroid/os/WorkSource;
    .restart local v3    # "settings":Landroid/net/wifi/WifiScanner$ScanSettings;
    .restart local v4    # "workSource":Landroid/os/WorkSource;
    .local p1, "e":Landroid/os/RemoteException;
    :goto_3c
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p4

    throw p4
.end method

.method public whitelist startTrackingBssids([Landroid/net/wifi/WifiScanner$BssidInfo;ILandroid/net/wifi/WifiScanner$BssidListener;)V
    .registers 5
    .param p1, "bssidInfos"    # [Landroid/net/wifi/WifiScanner$BssidInfo;
    .param p2, "apLostThreshold"    # I
    .param p3, "listener"    # Landroid/net/wifi/WifiScanner$BssidListener;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1952
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public whitelist startTrackingWifiChange(Landroid/net/wifi/WifiScanner$WifiChangeListener;)V
    .registers 3
    .param p1, "listener"    # Landroid/net/wifi/WifiScanner$WifiChangeListener;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1876
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public whitelist stopBackgroundScan(Landroid/net/wifi/WifiScanner$ScanListener;)V
    .registers 6
    .param p1, "listener"    # Landroid/net/wifi/WifiScanner$ScanListener;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1506
    const-string v0, "listener cannot be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 1507
    invoke-direct {p0, p1}, Landroid/net/wifi/WifiScanner;->getServiceListener(Landroid/net/wifi/WifiScanner$ActionListener;)Landroid/net/wifi/WifiScanner$ServiceListener;

    move-result-object v0

    .line 1508
    .local v0, "serviceListener":Landroid/net/wifi/WifiScanner$ServiceListener;
    if-nez v0, :cond_13

    .line 1509
    const-string v1, "WifiScanner"

    const-string v2, "listener does not exist"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1510
    return-void

    .line 1513
    :cond_13
    :try_start_13
    iget-object v1, p0, Landroid/net/wifi/WifiScanner;->mService:Landroid/net/wifi/IWifiScanner;

    iget-object v2, p0, Landroid/net/wifi/WifiScanner;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Landroid/net/wifi/WifiScanner;->mContext:Landroid/content/Context;

    .line 1514
    invoke-virtual {v3}, Landroid/content/Context;->getAttributionTag()Ljava/lang/String;

    move-result-object v3

    .line 1513
    invoke-interface {v1, v0, v2, v3}, Landroid/net/wifi/IWifiScanner;->stopBackgroundScan(Landroid/net/wifi/IWifiScannerListener;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_24
    .catch Landroid/os/RemoteException; {:try_start_13 .. :try_end_24} :catch_2b
    .catchall {:try_start_13 .. :try_end_24} :catchall_29

    .line 1518
    invoke-direct {p0, p1}, Landroid/net/wifi/WifiScanner;->removeListener(Landroid/net/wifi/WifiScanner$ActionListener;)V

    .line 1519
    nop

    .line 1520
    return-void

    .line 1518
    :catchall_29
    move-exception v1

    goto :goto_31

    .line 1515
    :catch_2b
    move-exception v1

    .line 1516
    .local v1, "e":Landroid/os/RemoteException;
    :try_start_2c
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    .end local v0    # "serviceListener":Landroid/net/wifi/WifiScanner$ServiceListener;
    .end local p0    # "this":Landroid/net/wifi/WifiScanner;
    .end local p1    # "listener":Landroid/net/wifi/WifiScanner$ScanListener;
    throw v2
    :try_end_31
    .catchall {:try_start_2c .. :try_end_31} :catchall_29

    .line 1518
    .end local v1    # "e":Landroid/os/RemoteException;
    .restart local v0    # "serviceListener":Landroid/net/wifi/WifiScanner$ServiceListener;
    .restart local p0    # "this":Landroid/net/wifi/WifiScanner;
    .restart local p1    # "listener":Landroid/net/wifi/WifiScanner$ScanListener;
    :goto_31
    invoke-direct {p0, p1}, Landroid/net/wifi/WifiScanner;->removeListener(Landroid/net/wifi/WifiScanner$ActionListener;)V

    .line 1519
    throw v1
.end method

.method public greylist-max-o stopPnoScan(Landroid/net/wifi/WifiScanner$ScanListener;)V
    .registers 6
    .param p1, "listener"    # Landroid/net/wifi/WifiScanner$ScanListener;

    .line 1753
    const-string v0, "listener cannot be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 1754
    invoke-direct {p0, p1}, Landroid/net/wifi/WifiScanner;->getServiceListener(Landroid/net/wifi/WifiScanner$ActionListener;)Landroid/net/wifi/WifiScanner$ServiceListener;

    move-result-object v0

    .line 1755
    .local v0, "serviceListener":Landroid/net/wifi/WifiScanner$ServiceListener;
    if-nez v0, :cond_13

    .line 1756
    const-string v1, "WifiScanner"

    const-string v2, "listener does not exist"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1757
    return-void

    .line 1760
    :cond_13
    :try_start_13
    iget-object v1, p0, Landroid/net/wifi/WifiScanner;->mService:Landroid/net/wifi/IWifiScanner;

    iget-object v2, p0, Landroid/net/wifi/WifiScanner;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Landroid/net/wifi/WifiScanner;->mContext:Landroid/content/Context;

    .line 1761
    invoke-virtual {v3}, Landroid/content/Context;->getAttributionTag()Ljava/lang/String;

    move-result-object v3

    .line 1760
    invoke-interface {v1, v0, v2, v3}, Landroid/net/wifi/IWifiScanner;->stopPnoScan(Landroid/net/wifi/IWifiScannerListener;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_24
    .catch Landroid/os/RemoteException; {:try_start_13 .. :try_end_24} :catch_2b
    .catchall {:try_start_13 .. :try_end_24} :catchall_29

    .line 1765
    invoke-direct {p0, p1}, Landroid/net/wifi/WifiScanner;->removeListener(Landroid/net/wifi/WifiScanner$ActionListener;)V

    .line 1766
    nop

    .line 1767
    return-void

    .line 1765
    :catchall_29
    move-exception v1

    goto :goto_31

    .line 1762
    :catch_2b
    move-exception v1

    .line 1763
    .local v1, "e":Landroid/os/RemoteException;
    :try_start_2c
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    .end local v0    # "serviceListener":Landroid/net/wifi/WifiScanner$ServiceListener;
    .end local p0    # "this":Landroid/net/wifi/WifiScanner;
    .end local p1    # "listener":Landroid/net/wifi/WifiScanner$ScanListener;
    throw v2
    :try_end_31
    .catchall {:try_start_2c .. :try_end_31} :catchall_29

    .line 1765
    .end local v1    # "e":Landroid/os/RemoteException;
    .restart local v0    # "serviceListener":Landroid/net/wifi/WifiScanner$ServiceListener;
    .restart local p0    # "this":Landroid/net/wifi/WifiScanner;
    .restart local p1    # "listener":Landroid/net/wifi/WifiScanner$ScanListener;
    :goto_31
    invoke-direct {p0, p1}, Landroid/net/wifi/WifiScanner;->removeListener(Landroid/net/wifi/WifiScanner$ActionListener;)V

    .line 1766
    throw v1
.end method

.method public whitelist stopScan(Landroid/net/wifi/WifiScanner$ScanListener;)V
    .registers 6
    .param p1, "listener"    # Landroid/net/wifi/WifiScanner$ScanListener;

    .line 1604
    const-string v0, "listener cannot be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 1605
    invoke-direct {p0, p1}, Landroid/net/wifi/WifiScanner;->getServiceListener(Landroid/net/wifi/WifiScanner$ActionListener;)Landroid/net/wifi/WifiScanner$ServiceListener;

    move-result-object v0

    .line 1606
    .local v0, "serviceListener":Landroid/net/wifi/WifiScanner$ServiceListener;
    if-nez v0, :cond_13

    .line 1607
    const-string v1, "WifiScanner"

    const-string v2, "listener does not exist"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1608
    return-void

    .line 1611
    :cond_13
    :try_start_13
    iget-object v1, p0, Landroid/net/wifi/WifiScanner;->mService:Landroid/net/wifi/IWifiScanner;

    iget-object v2, p0, Landroid/net/wifi/WifiScanner;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Landroid/net/wifi/WifiScanner;->mContext:Landroid/content/Context;

    .line 1612
    invoke-virtual {v3}, Landroid/content/Context;->getAttributionTag()Ljava/lang/String;

    move-result-object v3

    .line 1611
    invoke-interface {v1, v0, v2, v3}, Landroid/net/wifi/IWifiScanner;->stopScan(Landroid/net/wifi/IWifiScannerListener;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_24
    .catch Landroid/os/RemoteException; {:try_start_13 .. :try_end_24} :catch_2b
    .catchall {:try_start_13 .. :try_end_24} :catchall_29

    .line 1616
    invoke-direct {p0, p1}, Landroid/net/wifi/WifiScanner;->removeListener(Landroid/net/wifi/WifiScanner$ActionListener;)V

    .line 1617
    nop

    .line 1618
    return-void

    .line 1616
    :catchall_29
    move-exception v1

    goto :goto_31

    .line 1613
    :catch_2b
    move-exception v1

    .line 1614
    .local v1, "e":Landroid/os/RemoteException;
    :try_start_2c
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    .end local v0    # "serviceListener":Landroid/net/wifi/WifiScanner$ServiceListener;
    .end local p0    # "this":Landroid/net/wifi/WifiScanner;
    .end local p1    # "listener":Landroid/net/wifi/WifiScanner$ScanListener;
    throw v2
    :try_end_31
    .catchall {:try_start_2c .. :try_end_31} :catchall_29

    .line 1616
    .end local v1    # "e":Landroid/os/RemoteException;
    .restart local v0    # "serviceListener":Landroid/net/wifi/WifiScanner$ServiceListener;
    .restart local p0    # "this":Landroid/net/wifi/WifiScanner;
    .restart local p1    # "listener":Landroid/net/wifi/WifiScanner$ScanListener;
    :goto_31
    invoke-direct {p0, p1}, Landroid/net/wifi/WifiScanner;->removeListener(Landroid/net/wifi/WifiScanner$ActionListener;)V

    .line 1617
    throw v1
.end method

.method public whitelist stopTrackingBssids(Landroid/net/wifi/WifiScanner$BssidListener;)V
    .registers 3
    .param p1, "listener"    # Landroid/net/wifi/WifiScanner$BssidListener;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1962
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public whitelist stopTrackingWifiChange(Landroid/net/wifi/WifiScanner$WifiChangeListener;)V
    .registers 3
    .param p1, "listener"    # Landroid/net/wifi/WifiScanner$WifiChangeListener;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1887
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public whitelist unregisterScanListener(Landroid/net/wifi/WifiScanner$ScanListener;)V
    .registers 7
    .param p1, "listener"    # Landroid/net/wifi/WifiScanner$ScanListener;

    .line 1416
    const-string v0, "listener cannot be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 1417
    invoke-direct {p0, p1}, Landroid/net/wifi/WifiScanner;->getServiceListener(Landroid/net/wifi/WifiScanner$ActionListener;)Landroid/net/wifi/WifiScanner$ServiceListener;

    move-result-object v0

    .line 1418
    .local v0, "serviceListener":Landroid/net/wifi/WifiScanner$ServiceListener;
    const-string v1, "WifiScanner"

    if-nez v0, :cond_13

    .line 1419
    const-string v2, "listener does not exist"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1420
    return-void

    .line 1423
    :cond_13
    :try_start_13
    iget-object v2, p0, Landroid/net/wifi/WifiScanner;->mService:Landroid/net/wifi/IWifiScanner;

    iget-object v3, p0, Landroid/net/wifi/WifiScanner;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Landroid/net/wifi/WifiScanner;->mContext:Landroid/content/Context;

    .line 1424
    invoke-virtual {v4}, Landroid/content/Context;->getAttributionTag()Ljava/lang/String;

    move-result-object v4

    .line 1423
    invoke-interface {v2, v0, v3, v4}, Landroid/net/wifi/IWifiScanner;->unregisterScanListener(Landroid/net/wifi/IWifiScannerListener;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_24
    .catch Landroid/os/RemoteException; {:try_start_13 .. :try_end_24} :catch_2b
    .catchall {:try_start_13 .. :try_end_24} :catchall_29

    .line 1429
    invoke-direct {p0, p1}, Landroid/net/wifi/WifiScanner;->removeListener(Landroid/net/wifi/WifiScanner$ActionListener;)V

    .line 1430
    nop

    .line 1431
    return-void

    .line 1429
    :catchall_29
    move-exception v1

    goto :goto_36

    .line 1425
    :catch_2b
    move-exception v2

    .line 1426
    .local v2, "e":Landroid/os/RemoteException;
    :try_start_2c
    const-string v3, "failed to unregister listener"

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1427
    invoke-virtual {v2}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    .end local v0    # "serviceListener":Landroid/net/wifi/WifiScanner$ServiceListener;
    .end local p0    # "this":Landroid/net/wifi/WifiScanner;
    .end local p1    # "listener":Landroid/net/wifi/WifiScanner$ScanListener;
    throw v1
    :try_end_36
    .catchall {:try_start_2c .. :try_end_36} :catchall_29

    .line 1429
    .end local v2    # "e":Landroid/os/RemoteException;
    .restart local v0    # "serviceListener":Landroid/net/wifi/WifiScanner$ServiceListener;
    .restart local p0    # "this":Landroid/net/wifi/WifiScanner;
    .restart local p1    # "listener":Landroid/net/wifi/WifiScanner$ScanListener;
    :goto_36
    invoke-direct {p0, p1}, Landroid/net/wifi/WifiScanner;->removeListener(Landroid/net/wifi/WifiScanner$ActionListener;)V

    .line 1430
    throw v1
.end method
