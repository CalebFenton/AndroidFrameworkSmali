.class public Lcom/android/server/wifi/WifiNative;
.super Ljava/lang/Object;
.source "WifiNative.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wifi/WifiNative$BucketSettings;,
        Lcom/android/server/wifi/WifiNative$ChannelSettings;,
        Lcom/android/server/wifi/WifiNative$FateReport;,
        Lcom/android/server/wifi/WifiNative$HotlistEventHandler;,
        Lcom/android/server/wifi/WifiNative$MonitorThread;,
        Lcom/android/server/wifi/WifiNative$PnoEventHandler;,
        Lcom/android/server/wifi/WifiNative$PnoNetwork;,
        Lcom/android/server/wifi/WifiNative$PnoSettings;,
        Lcom/android/server/wifi/WifiNative$RingBufferStatus;,
        Lcom/android/server/wifi/WifiNative$RttEventHandler;,
        Lcom/android/server/wifi/WifiNative$RxFateReport;,
        Lcom/android/server/wifi/WifiNative$ScanCapabilities;,
        Lcom/android/server/wifi/WifiNative$ScanEventHandler;,
        Lcom/android/server/wifi/WifiNative$ScanSettings;,
        Lcom/android/server/wifi/WifiNative$SignificantWifiChangeEventHandler;,
        Lcom/android/server/wifi/WifiNative$TdlsCapabilities;,
        Lcom/android/server/wifi/WifiNative$TdlsEventHandler;,
        Lcom/android/server/wifi/WifiNative$TdlsStatus;,
        Lcom/android/server/wifi/WifiNative$TxFateReport;,
        Lcom/android/server/wifi/WifiNative$WifiChannelInfo;,
        Lcom/android/server/wifi/WifiNative$WifiLoggerEventHandler;,
        Lcom/android/server/wifi/WifiNative$WifiRssiEventHandler;
    }
.end annotation


# static fields
.field public static final BLUETOOTH_COEXISTENCE_MODE_DISABLED:I = 0x1

.field public static final BLUETOOTH_COEXISTENCE_MODE_ENABLED:I = 0x0

.field public static final BLUETOOTH_COEXISTENCE_MODE_SENSE:I = 0x2

.field private static final BSS_BSSID_STR:Ljava/lang/String; = "bssid="

.field private static final BSS_DELIMITER_STR:Ljava/lang/String; = "===="

.field private static final BSS_END_STR:Ljava/lang/String; = "####"

.field private static final BSS_FLAGS_STR:Ljava/lang/String; = "flags="

.field private static final BSS_FREQ_STR:Ljava/lang/String; = "freq="

.field private static final BSS_ID_STR:Ljava/lang/String; = "id="

.field private static final BSS_IE_STR:Ljava/lang/String; = "ie="

.field private static final BSS_LEVEL_STR:Ljava/lang/String; = "level="

.field private static final BSS_SSID_STR:Ljava/lang/String; = "ssid="

.field private static final BSS_TSF_STR:Ljava/lang/String; = "tsf="

.field private static DBG:Z = false

.field private static final DEFAULT_GROUP_OWNER_INTENT:I = 0x6

.field private static final STOP_HAL_TIMEOUT_MS:I = 0x3e8

.field private static final TAG:Ljava/lang/String; = "WifiNative-HAL"

.field public static final WIFI_SCAN_FAILED:I = 0x3

.field public static final WIFI_SCAN_RESULTS_AVAILABLE:I = 0x0

.field public static final WIFI_SCAN_THRESHOLD_NUM_SCANS:I = 0x1

.field public static final WIFI_SCAN_THRESHOLD_PERCENT:I = 0x2

.field public static final WIFI_SUCCESS:I

.field private static mFwMemoryDump:[B

.field private static p2pNativeInterface:Lcom/android/server/wifi/WifiNative;

.field private static sCmdId:I

.field private static sHotlistCmdId:I

.field private static sHotlistEventHandler:Lcom/android/server/wifi/WifiNative$HotlistEventHandler;

.field private static final sLocalLog:Landroid/util/LocalLog;

.field public static final sLock:Ljava/lang/Object;

.field private static sLogCmdId:I

.field private static sPnoCmdId:I

.field private static sPnoEventHandler:Lcom/android/server/wifi/WifiNative$PnoEventHandler;

.field private static sRssiMonitorCmdId:I

.field private static sRttCmdId:I

.field private static sRttEventHandler:Lcom/android/server/wifi/WifiNative$RttEventHandler;

.field private static sRttResponderCmdId:I

.field private static sScanCmdId:I

.field private static sScanEventHandler:Lcom/android/server/wifi/WifiNative$ScanEventHandler;

.field private static sScanSettings:Lcom/android/server/wifi/WifiNative$ScanSettings;

.field private static sSignificantWifiChangeCmdId:I

.field private static sSignificantWifiChangeHandler:Lcom/android/server/wifi/WifiNative$SignificantWifiChangeEventHandler;

.field private static sTdlsEventHandler:Lcom/android/server/wifi/WifiNative$TdlsEventHandler;

.field private static sThread:Lcom/android/server/wifi/WifiNative$MonitorThread;

.field private static sWifiHalHandle:J

.field private static sWifiIfaceHandles:[J

.field private static sWifiLoggerEventHandler:Lcom/android/server/wifi/WifiNative$WifiLoggerEventHandler;

.field private static sWifiRssiEventHandler:Lcom/android/server/wifi/WifiNative$WifiRssiEventHandler;

.field public static sWlan0Index:I

.field private static wlanNativeInterface:Lcom/android/server/wifi/WifiNative;


# instance fields
.field private mContext:Landroid/content/Context;

.field private final mInterfaceName:Ljava/lang/String;

.field private final mInterfacePrefix:Ljava/lang/String;

.field private final mTAG:Ljava/lang/String;


# direct methods
.method static synthetic -get0()J
    .locals 2

    #@0
    sget-wide v0, Lcom/android/server/wifi/WifiNative;->sWifiHalHandle:J

    #@2
    return-wide v0
.end method

.method static synthetic -wrap0()V
    .locals 0

    #@0
    invoke-static {}, Lcom/android/server/wifi/WifiNative;->waitForHalEventNative()V

    #@3
    return-void
.end method

.method static constructor <clinit>()V
    .locals 7

    #@0
    .prologue
    const/4 v6, 0x0

    #@1
    const/4 v5, 0x1

    #@2
    const/4 v4, -0x1

    #@3
    const/4 v3, 0x0

    #@4
    .line 96
    sput-boolean v3, Lcom/android/server/wifi/WifiNative;->DBG:Z

    #@6
    .line 105
    new-instance v0, Ljava/lang/Object;

    #@8
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    #@b
    sput-object v0, Lcom/android/server/wifi/WifiNative;->sLock:Ljava/lang/Object;

    #@d
    .line 107
    new-instance v0, Landroid/util/LocalLog;

    #@f
    const/16 v1, 0x2000

    #@11
    invoke-direct {v0, v1}, Landroid/util/LocalLog;-><init>(I)V

    #@14
    sput-object v0, Lcom/android/server/wifi/WifiNative;->sLocalLog:Landroid/util/LocalLog;

    #@16
    .line 116
    const-string/jumbo v0, "wifi-service"

    #@19
    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    #@1c
    .line 117
    invoke-static {}, Lcom/android/server/wifi/WifiNative;->registerNatives()I

    #@1f
    .line 126
    new-instance v0, Lcom/android/server/wifi/WifiNative;

    #@21
    const-string/jumbo v1, "wifi.interface"

    #@24
    const-string/jumbo v2, "wlan0"

    #@27
    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@2a
    move-result-object v1

    #@2b
    invoke-direct {v0, v1, v5}, Lcom/android/server/wifi/WifiNative;-><init>(Ljava/lang/String;Z)V

    #@2e
    .line 125
    sput-object v0, Lcom/android/server/wifi/WifiNative;->wlanNativeInterface:Lcom/android/server/wifi/WifiNative;

    #@30
    .line 133
    new-instance v0, Lcom/android/server/wifi/WifiNative;

    #@32
    const-string/jumbo v1, "wifi.direct.interface"

    #@35
    const-string/jumbo v2, "p2p0"

    #@38
    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@3b
    move-result-object v1

    #@3c
    invoke-direct {v0, v1, v3}, Lcom/android/server/wifi/WifiNative;-><init>(Ljava/lang/String;Z)V

    #@3f
    .line 131
    sput-object v0, Lcom/android/server/wifi/WifiNative;->p2pNativeInterface:Lcom/android/server/wifi/WifiNative;

    #@41
    .line 1544
    sput v5, Lcom/android/server/wifi/WifiNative;->sCmdId:I

    #@43
    .line 1550
    const-wide/16 v0, 0x0

    #@45
    sput-wide v0, Lcom/android/server/wifi/WifiNative;->sWifiHalHandle:J

    #@47
    .line 1551
    sput-object v6, Lcom/android/server/wifi/WifiNative;->sWifiIfaceHandles:[J

    #@49
    .line 1552
    sput v4, Lcom/android/server/wifi/WifiNative;->sWlan0Index:I

    #@4b
    .line 1912
    sput v3, Lcom/android/server/wifi/WifiNative;->sScanCmdId:I

    #@4d
    .line 2010
    sput v3, Lcom/android/server/wifi/WifiNative;->sHotlistCmdId:I

    #@4f
    .line 2232
    sput v3, Lcom/android/server/wifi/WifiNative;->sRttResponderCmdId:I

    #@51
    .line 2453
    sput-object v6, Lcom/android/server/wifi/WifiNative;->sWifiLoggerEventHandler:Lcom/android/server/wifi/WifiNative$WifiLoggerEventHandler;

    #@53
    .line 2469
    sput v4, Lcom/android/server/wifi/WifiNative;->sLogCmdId:I

    #@55
    .line 2894
    sput v3, Lcom/android/server/wifi/WifiNative;->sPnoCmdId:I

    #@57
    .line 3053
    sput v3, Lcom/android/server/wifi/WifiNative;->sRssiMonitorCmdId:I

    #@59
    .line 95
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Z)V
    .locals 2
    .param p1, "interfaceName"    # Ljava/lang/String;
    .param p2, "requiresPrefix"    # Z

    #@0
    .prologue
    .line 150
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 143
    const/4 v0, 0x0

    #@4
    iput-object v0, p0, Lcom/android/server/wifi/WifiNative;->mContext:Landroid/content/Context;

    #@6
    .line 152
    iput-object p1, p0, Lcom/android/server/wifi/WifiNative;->mInterfaceName:Ljava/lang/String;

    #@8
    .line 153
    new-instance v0, Ljava/lang/StringBuilder;

    #@a
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@d
    const-string/jumbo v1, "WifiNative-"

    #@10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@13
    move-result-object v0

    #@14
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@17
    move-result-object v0

    #@18
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1b
    move-result-object v0

    #@1c
    iput-object v0, p0, Lcom/android/server/wifi/WifiNative;->mTAG:Ljava/lang/String;

    #@1e
    .line 155
    if-eqz p2, :cond_0

    #@20
    .line 156
    new-instance v0, Ljava/lang/StringBuilder;

    #@22
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@25
    const-string/jumbo v1, "IFNAME="

    #@28
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2b
    move-result-object v0

    #@2c
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2f
    move-result-object v0

    #@30
    const-string/jumbo v1, " "

    #@33
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@36
    move-result-object v0

    #@37
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3a
    move-result-object v0

    #@3b
    iput-object v0, p0, Lcom/android/server/wifi/WifiNative;->mInterfacePrefix:Ljava/lang/String;

    #@3d
    .line 151
    :goto_0
    return-void

    #@3e
    .line 158
    :cond_0
    const-string/jumbo v0, ""

    #@41
    iput-object v0, p0, Lcom/android/server/wifi/WifiNative;->mInterfacePrefix:Ljava/lang/String;

    #@43
    goto :goto_0
.end method

.method private static native cancelRangeRequestNative(II[Landroid/net/wifi/RttManager$RttParams;)Z
.end method

.method private static native closeSupplicantConnectionNative()V
.end method

.method private static native configureNeighborDiscoveryOffload(IZ)I
.end method

.method private static native connectToSupplicantNative()Z
.end method

.method private static createCSVStringFromIntegerSet(Ljava/util/Set;)Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Integer;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    #@0
    .prologue
    .line 348
    .local p0, "values":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    new-instance v1, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    .line 349
    .local v1, "list":Ljava/lang/StringBuilder;
    const/4 v0, 0x1

    #@6
    .line 350
    .local v0, "first":Z
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@9
    move-result-object v3

    #@a
    .local v3, "value$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    #@d
    move-result v4

    #@e
    if-eqz v4, :cond_1

    #@10
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@13
    move-result-object v2

    #@14
    check-cast v2, Ljava/lang/Integer;

    #@16
    .line 351
    .local v2, "value":Ljava/lang/Integer;
    if-nez v0, :cond_0

    #@18
    .line 352
    const-string/jumbo v4, ","

    #@1b
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1e
    .line 354
    :cond_0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@21
    .line 355
    const/4 v0, 0x0

    #@22
    goto :goto_0

    #@23
    .line 357
    .end local v2    # "value":Ljava/lang/Integer;
    :cond_1
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@26
    move-result-object v4

    #@27
    return-object v4
.end method

.method public static createWifiSsid([B)Landroid/net/wifi/WifiSsid;
    .locals 4
    .param p0, "rawSsid"    # [B

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 1801
    invoke-static {p0}, Llibcore/util/HexEncoding;->encode([B)[C

    #@4
    move-result-object v2

    #@5
    invoke-static {v2}, Ljava/lang/String;->valueOf([C)Ljava/lang/String;

    #@8
    move-result-object v0

    #@9
    .line 1803
    .local v0, "ssidHexString":Ljava/lang/String;
    if-nez v0, :cond_0

    #@b
    .line 1804
    return-object v3

    #@c
    .line 1807
    :cond_0
    invoke-static {v0}, Landroid/net/wifi/WifiSsid;->createFromHex(Ljava/lang/String;)Landroid/net/wifi/WifiSsid;

    #@f
    move-result-object v1

    #@10
    .line 1809
    .local v1, "wifiSsid":Landroid/net/wifi/WifiSsid;
    return-object v1
.end method

.method private static native disableRttResponderNative(II)Z
.end method

.method private doBooleanCommand(Ljava/lang/String;)Z
    .locals 6
    .param p1, "command"    # Ljava/lang/String;

    #@0
    .prologue
    .line 258
    sget-boolean v2, Lcom/android/server/wifi/WifiNative;->DBG:Z

    #@2
    if-eqz v2, :cond_0

    #@4
    iget-object v2, p0, Lcom/android/server/wifi/WifiNative;->mTAG:Ljava/lang/String;

    #@6
    new-instance v3, Ljava/lang/StringBuilder;

    #@8
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@b
    const-string/jumbo v4, "doBoolean: "

    #@e
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@11
    move-result-object v3

    #@12
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@15
    move-result-object v3

    #@16
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@19
    move-result-object v3

    #@1a
    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@1d
    .line 259
    :cond_0
    sget-object v3, Lcom/android/server/wifi/WifiNative;->sLock:Ljava/lang/Object;

    #@1f
    monitor-enter v3

    #@20
    .line 260
    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    #@22
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@25
    iget-object v4, p0, Lcom/android/server/wifi/WifiNative;->mInterfacePrefix:Ljava/lang/String;

    #@27
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2a
    move-result-object v2

    #@2b
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2e
    move-result-object v2

    #@2f
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@32
    move-result-object v1

    #@33
    .line 261
    .local v1, "toLog":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    #@35
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@38
    iget-object v4, p0, Lcom/android/server/wifi/WifiNative;->mInterfacePrefix:Ljava/lang/String;

    #@3a
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3d
    move-result-object v2

    #@3e
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@41
    move-result-object v2

    #@42
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@45
    move-result-object v2

    #@46
    invoke-direct {p0, v2}, Lcom/android/server/wifi/WifiNative;->doBooleanCommandNative(Ljava/lang/String;)Z

    #@49
    move-result v0

    #@4a
    .line 262
    .local v0, "result":Z
    new-instance v2, Ljava/lang/StringBuilder;

    #@4c
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@4f
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@52
    move-result-object v2

    #@53
    const-string/jumbo v4, " -> "

    #@56
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@59
    move-result-object v2

    #@5a
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@5d
    move-result-object v2

    #@5e
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@61
    move-result-object v2

    #@62
    invoke-direct {p0, v2}, Lcom/android/server/wifi/WifiNative;->localLog(Ljava/lang/String;)V

    #@65
    .line 263
    sget-boolean v2, Lcom/android/server/wifi/WifiNative;->DBG:Z

    #@67
    if-eqz v2, :cond_1

    #@69
    iget-object v2, p0, Lcom/android/server/wifi/WifiNative;->mTAG:Ljava/lang/String;

    #@6b
    new-instance v4, Ljava/lang/StringBuilder;

    #@6d
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@70
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@73
    move-result-object v4

    #@74
    const-string/jumbo v5, ": returned "

    #@77
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@7a
    move-result-object v4

    #@7b
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@7e
    move-result-object v4

    #@7f
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@82
    move-result-object v4

    #@83
    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@86
    :cond_1
    monitor-exit v3

    #@87
    .line 264
    return v0

    #@88
    .line 259
    .end local v0    # "result":Z
    .end local v1    # "toLog":Ljava/lang/String;
    :catchall_0
    move-exception v2

    #@89
    monitor-exit v3

    #@8a
    throw v2
.end method

.method private native doBooleanCommandNative(Ljava/lang/String;)Z
.end method

.method private doBooleanCommandWithoutLogging(Ljava/lang/String;)Z
    .locals 5
    .param p1, "command"    # Ljava/lang/String;

    #@0
    .prologue
    .line 269
    sget-boolean v1, Lcom/android/server/wifi/WifiNative;->DBG:Z

    #@2
    if-eqz v1, :cond_0

    #@4
    iget-object v1, p0, Lcom/android/server/wifi/WifiNative;->mTAG:Ljava/lang/String;

    #@6
    new-instance v2, Ljava/lang/StringBuilder;

    #@8
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@b
    const-string/jumbo v3, "doBooleanCommandWithoutLogging: "

    #@e
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@11
    move-result-object v2

    #@12
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@15
    move-result-object v2

    #@16
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@19
    move-result-object v2

    #@1a
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@1d
    .line 270
    :cond_0
    sget-object v2, Lcom/android/server/wifi/WifiNative;->sLock:Ljava/lang/Object;

    #@1f
    monitor-enter v2

    #@20
    .line 271
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    #@22
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@25
    iget-object v3, p0, Lcom/android/server/wifi/WifiNative;->mInterfacePrefix:Ljava/lang/String;

    #@27
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2a
    move-result-object v1

    #@2b
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2e
    move-result-object v1

    #@2f
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@32
    move-result-object v1

    #@33
    invoke-direct {p0, v1}, Lcom/android/server/wifi/WifiNative;->doBooleanCommandNative(Ljava/lang/String;)Z

    #@36
    move-result v0

    #@37
    .line 272
    .local v0, "result":Z
    sget-boolean v1, Lcom/android/server/wifi/WifiNative;->DBG:Z

    #@39
    if-eqz v1, :cond_1

    #@3b
    iget-object v1, p0, Lcom/android/server/wifi/WifiNative;->mTAG:Ljava/lang/String;

    #@3d
    new-instance v3, Ljava/lang/StringBuilder;

    #@3f
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@42
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@45
    move-result-object v3

    #@46
    const-string/jumbo v4, ": returned "

    #@49
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4c
    move-result-object v3

    #@4d
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@50
    move-result-object v3

    #@51
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@54
    move-result-object v3

    #@55
    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@58
    :cond_1
    monitor-exit v2

    #@59
    .line 273
    return v0

    #@5a
    .line 270
    .end local v0    # "result":Z
    :catchall_0
    move-exception v1

    #@5b
    monitor-exit v2

    #@5c
    throw v1
.end method

.method private doIntCommand(Ljava/lang/String;)I
    .locals 6
    .param p1, "command"    # Ljava/lang/String;

    #@0
    .prologue
    .line 278
    sget-boolean v2, Lcom/android/server/wifi/WifiNative;->DBG:Z

    #@2
    if-eqz v2, :cond_0

    #@4
    iget-object v2, p0, Lcom/android/server/wifi/WifiNative;->mTAG:Ljava/lang/String;

    #@6
    new-instance v3, Ljava/lang/StringBuilder;

    #@8
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@b
    const-string/jumbo v4, "doInt: "

    #@e
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@11
    move-result-object v3

    #@12
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@15
    move-result-object v3

    #@16
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@19
    move-result-object v3

    #@1a
    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@1d
    .line 279
    :cond_0
    sget-object v3, Lcom/android/server/wifi/WifiNative;->sLock:Ljava/lang/Object;

    #@1f
    monitor-enter v3

    #@20
    .line 280
    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    #@22
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@25
    iget-object v4, p0, Lcom/android/server/wifi/WifiNative;->mInterfacePrefix:Ljava/lang/String;

    #@27
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2a
    move-result-object v2

    #@2b
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2e
    move-result-object v2

    #@2f
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@32
    move-result-object v1

    #@33
    .line 281
    .local v1, "toLog":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    #@35
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@38
    iget-object v4, p0, Lcom/android/server/wifi/WifiNative;->mInterfacePrefix:Ljava/lang/String;

    #@3a
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3d
    move-result-object v2

    #@3e
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@41
    move-result-object v2

    #@42
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@45
    move-result-object v2

    #@46
    invoke-direct {p0, v2}, Lcom/android/server/wifi/WifiNative;->doIntCommandNative(Ljava/lang/String;)I

    #@49
    move-result v0

    #@4a
    .line 282
    .local v0, "result":I
    new-instance v2, Ljava/lang/StringBuilder;

    #@4c
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@4f
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@52
    move-result-object v2

    #@53
    const-string/jumbo v4, " -> "

    #@56
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@59
    move-result-object v2

    #@5a
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@5d
    move-result-object v2

    #@5e
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@61
    move-result-object v2

    #@62
    invoke-direct {p0, v2}, Lcom/android/server/wifi/WifiNative;->localLog(Ljava/lang/String;)V

    #@65
    .line 283
    sget-boolean v2, Lcom/android/server/wifi/WifiNative;->DBG:Z

    #@67
    if-eqz v2, :cond_1

    #@69
    iget-object v2, p0, Lcom/android/server/wifi/WifiNative;->mTAG:Ljava/lang/String;

    #@6b
    new-instance v4, Ljava/lang/StringBuilder;

    #@6d
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@70
    const-string/jumbo v5, "   returned "

    #@73
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@76
    move-result-object v4

    #@77
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@7a
    move-result-object v4

    #@7b
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@7e
    move-result-object v4

    #@7f
    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@82
    :cond_1
    monitor-exit v3

    #@83
    .line 284
    return v0

    #@84
    .line 279
    .end local v0    # "result":I
    .end local v1    # "toLog":Ljava/lang/String;
    :catchall_0
    move-exception v2

    #@85
    monitor-exit v3

    #@86
    throw v2
.end method

.method private native doIntCommandNative(Ljava/lang/String;)I
.end method

.method private doStringCommand(Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p1, "command"    # Ljava/lang/String;

    #@0
    .prologue
    .line 289
    sget-boolean v2, Lcom/android/server/wifi/WifiNative;->DBG:Z

    #@2
    if-eqz v2, :cond_0

    #@4
    .line 291
    const-string/jumbo v2, "GET_NETWORK"

    #@7
    invoke-virtual {p1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    #@a
    move-result v2

    #@b
    if-nez v2, :cond_0

    #@d
    .line 292
    iget-object v2, p0, Lcom/android/server/wifi/WifiNative;->mTAG:Ljava/lang/String;

    #@f
    new-instance v3, Ljava/lang/StringBuilder;

    #@11
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@14
    const-string/jumbo v4, "doString: ["

    #@17
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1a
    move-result-object v3

    #@1b
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1e
    move-result-object v3

    #@1f
    const-string/jumbo v4, "]"

    #@22
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@25
    move-result-object v3

    #@26
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@29
    move-result-object v3

    #@2a
    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@2d
    .line 295
    :cond_0
    sget-object v3, Lcom/android/server/wifi/WifiNative;->sLock:Ljava/lang/Object;

    #@2f
    monitor-enter v3

    #@30
    .line 296
    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    #@32
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@35
    iget-object v4, p0, Lcom/android/server/wifi/WifiNative;->mInterfacePrefix:Ljava/lang/String;

    #@37
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3a
    move-result-object v2

    #@3b
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3e
    move-result-object v2

    #@3f
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@42
    move-result-object v1

    #@43
    .line 297
    .local v1, "toLog":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    #@45
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@48
    iget-object v4, p0, Lcom/android/server/wifi/WifiNative;->mInterfacePrefix:Ljava/lang/String;

    #@4a
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4d
    move-result-object v2

    #@4e
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@51
    move-result-object v2

    #@52
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@55
    move-result-object v2

    #@56
    invoke-direct {p0, v2}, Lcom/android/server/wifi/WifiNative;->doStringCommandNative(Ljava/lang/String;)Ljava/lang/String;

    #@59
    move-result-object v0

    #@5a
    .line 298
    .local v0, "result":Ljava/lang/String;
    if-nez v0, :cond_2

    #@5c
    .line 299
    sget-boolean v2, Lcom/android/server/wifi/WifiNative;->DBG:Z

    #@5e
    if-eqz v2, :cond_1

    #@60
    iget-object v2, p0, Lcom/android/server/wifi/WifiNative;->mTAG:Ljava/lang/String;

    #@62
    const-string/jumbo v4, "doStringCommandNative no result"

    #@65
    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@68
    :cond_1
    :goto_0
    monitor-exit v3

    #@69
    .line 306
    return-object v0

    #@6a
    .line 301
    :cond_2
    :try_start_1
    const-string/jumbo v2, "STATUS-"

    #@6d
    invoke-virtual {p1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    #@70
    move-result v2

    #@71
    if-nez v2, :cond_3

    #@73
    .line 302
    new-instance v2, Ljava/lang/StringBuilder;

    #@75
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@78
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@7b
    move-result-object v2

    #@7c
    const-string/jumbo v4, " -> "

    #@7f
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@82
    move-result-object v2

    #@83
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@86
    move-result-object v2

    #@87
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@8a
    move-result-object v2

    #@8b
    invoke-direct {p0, v2}, Lcom/android/server/wifi/WifiNative;->localLog(Ljava/lang/String;)V

    #@8e
    .line 304
    :cond_3
    sget-boolean v2, Lcom/android/server/wifi/WifiNative;->DBG:Z

    #@90
    if-eqz v2, :cond_1

    #@92
    iget-object v2, p0, Lcom/android/server/wifi/WifiNative;->mTAG:Ljava/lang/String;

    #@94
    new-instance v4, Ljava/lang/StringBuilder;

    #@96
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@99
    const-string/jumbo v5, "   returned "

    #@9c
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@9f
    move-result-object v4

    #@a0
    const-string/jumbo v5, "\n"

    #@a3
    const-string/jumbo v6, " "

    #@a6
    invoke-virtual {v0, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    #@a9
    move-result-object v5

    #@aa
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@ad
    move-result-object v4

    #@ae
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@b1
    move-result-object v4

    #@b2
    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@b5
    goto :goto_0

    #@b6
    .line 295
    .end local v0    # "result":Ljava/lang/String;
    .end local v1    # "toLog":Ljava/lang/String;
    :catchall_0
    move-exception v2

    #@b7
    monitor-exit v3

    #@b8
    throw v2
.end method

.method private native doStringCommandNative(Ljava/lang/String;)Ljava/lang/String;
.end method

.method private doStringCommandWithoutLogging(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "command"    # Ljava/lang/String;

    #@0
    .prologue
    .line 311
    sget-boolean v0, Lcom/android/server/wifi/WifiNative;->DBG:Z

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 313
    const-string/jumbo v0, "GET_NETWORK"

    #@7
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    #@a
    move-result v0

    #@b
    if-nez v0, :cond_0

    #@d
    .line 314
    iget-object v0, p0, Lcom/android/server/wifi/WifiNative;->mTAG:Ljava/lang/String;

    #@f
    new-instance v1, Ljava/lang/StringBuilder;

    #@11
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@14
    const-string/jumbo v2, "doString: ["

    #@17
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1a
    move-result-object v1

    #@1b
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1e
    move-result-object v1

    #@1f
    const-string/jumbo v2, "]"

    #@22
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@25
    move-result-object v1

    #@26
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@29
    move-result-object v1

    #@2a
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@2d
    .line 317
    :cond_0
    sget-object v1, Lcom/android/server/wifi/WifiNative;->sLock:Ljava/lang/Object;

    #@2f
    monitor-enter v1

    #@30
    .line 318
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    #@32
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@35
    iget-object v2, p0, Lcom/android/server/wifi/WifiNative;->mInterfacePrefix:Ljava/lang/String;

    #@37
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3a
    move-result-object v0

    #@3b
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3e
    move-result-object v0

    #@3f
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@42
    move-result-object v0

    #@43
    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiNative;->doStringCommandNative(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@46
    move-result-object v0

    #@47
    monitor-exit v1

    #@48
    return-object v0

    #@49
    .line 317
    :catchall_0
    move-exception v0

    #@4a
    monitor-exit v1

    #@4b
    throw v0
.end method

.method private static native enableDisableTdlsNative(IZLjava/lang/String;)Z
.end method

.method private static native enableRttResponderNative(IIILcom/android/server/wifi/WifiNative$WifiChannelInfo;)Landroid/net/wifi/RttManager$ResponderConfig;
.end method

.method private static native getApfCapabilitiesNative(I)Landroid/net/apf/ApfCapabilities;
.end method

.method private static native getChannelsForBandNative(II)[I
.end method

.method private static native getDriverStateDumpNative(I)[B
.end method

.method private static native getDriverVersionNative(I)Ljava/lang/String;
.end method

.method private static native getFirmwareVersionNative(I)Ljava/lang/String;
.end method

.method private static native getFwMemoryDumpNative(I)Z
.end method

.method private static native getInterfaceNameNative(I)Ljava/lang/String;
.end method

.method private static native getInterfacesNative()I
.end method

.method private static getNewCmdIdLocked()I
    .locals 2

    #@0
    .prologue
    .line 1546
    sget v0, Lcom/android/server/wifi/WifiNative;->sCmdId:I

    #@2
    add-int/lit8 v1, v0, 0x1

    #@4
    sput v1, Lcom/android/server/wifi/WifiNative;->sCmdId:I

    #@6
    return v0
.end method

.method public static getP2pNativeInterface()Lcom/android/server/wifi/WifiNative;
    .locals 1

    #@0
    .prologue
    .line 135
    sget-object v0, Lcom/android/server/wifi/WifiNative;->p2pNativeInterface:Lcom/android/server/wifi/WifiNative;

    #@2
    return-object v0
.end method

.method private getRawScanResults(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "range"    # Ljava/lang/String;

    #@0
    .prologue
    .line 611
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    const-string/jumbo v1, "BSS RANGE="

    #@8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b
    move-result-object v0

    #@c
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@f
    move-result-object v0

    #@10
    const-string/jumbo v1, " MASK=0x29d87"

    #@13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@16
    move-result-object v0

    #@17
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1a
    move-result-object v0

    #@1b
    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiNative;->doStringCommandWithoutLogging(Ljava/lang/String;)Ljava/lang/String;

    #@1e
    move-result-object v0

    #@1f
    return-object v0
.end method

.method private static native getRingBufferDataNative(ILjava/lang/String;)Z
.end method

.method private static native getRingBufferStatusNative(I)[Lcom/android/server/wifi/WifiNative$RingBufferStatus;
.end method

.method private static native getRttCapabilitiesNative(I)Landroid/net/wifi/RttManager$RttCapabilities;
.end method

.method private static native getRxPktFatesNative(I[Lcom/android/server/wifi/WifiNative$RxFateReport;)I
.end method

.method private static native getScanCapabilitiesNative(ILcom/android/server/wifi/WifiNative$ScanCapabilities;)Z
.end method

.method private static native getScanResultsNative(IZ)[Landroid/net/wifi/WifiScanner$ScanData;
.end method

.method public static native getSupportedFeatureSetNative(I)I
.end method

.method private static native getSupportedLoggerFeatureSetNative(I)I
.end method

.method private static native getTdlsCapabilitiesNative(I)Lcom/android/server/wifi/WifiNative$TdlsCapabilities;
.end method

.method private static native getTdlsStatusNative(ILjava/lang/String;)Lcom/android/server/wifi/WifiNative$TdlsStatus;
.end method

.method private static native getTxPktFatesNative(I[Lcom/android/server/wifi/WifiNative$TxFateReport;)I
.end method

.method private static native getWifiLinkLayerStatsNative(I)Landroid/net/wifi/WifiLinkLayerStats;
.end method

.method public static getWlanNativeInterface()Lcom/android/server/wifi/WifiNative;
    .locals 1

    #@0
    .prologue
    .line 128
    sget-object v0, Lcom/android/server/wifi/WifiNative;->wlanNativeInterface:Lcom/android/server/wifi/WifiNative;

    #@2
    return-object v0
.end method

.method private static native getWlanWakeReasonCountNative(I)Landroid/net/wifi/WifiWakeReasonAndCounts;
.end method

.method private static native installPacketFilterNative(I[B)Z
.end method

.method private static native isDriverLoadedNative()Z
.end method

.method private static native isGetChannelsForBandSupportedNative()Z
.end method

.method private static native killSupplicantNative(Z)Z
.end method

.method private static native loadDriverNative()Z
.end method

.method private localLog(Ljava/lang/String;)V
    .locals 3
    .param p1, "s"    # Ljava/lang/String;

    #@0
    .prologue
    .line 176
    sget-object v0, Lcom/android/server/wifi/WifiNative;->sLocalLog:Landroid/util/LocalLog;

    #@2
    if-eqz v0, :cond_0

    #@4
    sget-object v0, Lcom/android/server/wifi/WifiNative;->sLocalLog:Landroid/util/LocalLog;

    #@6
    new-instance v1, Ljava/lang/StringBuilder;

    #@8
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@b
    iget-object v2, p0, Lcom/android/server/wifi/WifiNative;->mInterfaceName:Ljava/lang/String;

    #@d
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@10
    move-result-object v1

    #@11
    const-string/jumbo v2, ": "

    #@14
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@17
    move-result-object v1

    #@18
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1b
    move-result-object v1

    #@1c
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1f
    move-result-object v1

    #@20
    invoke-virtual {v0, v1}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    #@23
    .line 175
    :cond_0
    return-void
.end method

.method private logDbg(Ljava/lang/String;)V
    .locals 8
    .param p1, "debug"    # Ljava/lang/String;

    #@0
    .prologue
    .line 481
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    #@3
    move-result-wide v0

    #@4
    .line 482
    .local v0, "now":J
    const-string/jumbo v3, "[%,d us] "

    #@7
    const/4 v4, 0x1

    #@8
    new-array v4, v4, [Ljava/lang/Object;

    #@a
    const-wide/16 v6, 0x3e8

    #@c
    div-long v6, v0, v6

    #@e
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    #@11
    move-result-object v5

    #@12
    const/4 v6, 0x0

    #@13
    aput-object v5, v4, v6

    #@15
    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@18
    move-result-object v2

    #@19
    .line 483
    .local v2, "ts":Ljava/lang/String;
    const-string/jumbo v3, "WifiNative: "

    #@1c
    new-instance v4, Ljava/lang/StringBuilder;

    #@1e
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@21
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@24
    move-result-object v4

    #@25
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@28
    move-result-object v4

    #@29
    const-string/jumbo v5, " stack:"

    #@2c
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2f
    move-result-object v4

    #@30
    .line 484
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    #@33
    move-result-object v5

    #@34
    invoke-virtual {v5}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    #@37
    move-result-object v5

    #@38
    const/4 v6, 0x2

    #@39
    aget-object v5, v5, v6

    #@3b
    invoke-virtual {v5}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    #@3e
    move-result-object v5

    #@3f
    .line 483
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@42
    move-result-object v4

    #@43
    .line 484
    const-string/jumbo v5, " - "

    #@46
    .line 483
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@49
    move-result-object v4

    #@4a
    .line 485
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    #@4d
    move-result-object v5

    #@4e
    invoke-virtual {v5}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    #@51
    move-result-object v5

    #@52
    const/4 v6, 0x3

    #@53
    aget-object v5, v5, v6

    #@55
    invoke-virtual {v5}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    #@58
    move-result-object v5

    #@59
    .line 483
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5c
    move-result-object v4

    #@5d
    .line 485
    const-string/jumbo v5, " - "

    #@60
    .line 483
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@63
    move-result-object v4

    #@64
    .line 486
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    #@67
    move-result-object v5

    #@68
    invoke-virtual {v5}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    #@6b
    move-result-object v5

    #@6c
    const/4 v6, 0x4

    #@6d
    aget-object v5, v5, v6

    #@6f
    invoke-virtual {v5}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    #@72
    move-result-object v5

    #@73
    .line 483
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@76
    move-result-object v4

    #@77
    .line 486
    const-string/jumbo v5, " - "

    #@7a
    .line 483
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@7d
    move-result-object v4

    #@7e
    .line 487
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    #@81
    move-result-object v5

    #@82
    invoke-virtual {v5}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    #@85
    move-result-object v5

    #@86
    const/4 v6, 0x5

    #@87
    aget-object v5, v5, v6

    #@89
    invoke-virtual {v5}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    #@8c
    move-result-object v5

    #@8d
    .line 483
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@90
    move-result-object v4

    #@91
    .line 487
    const-string/jumbo v5, " - "

    #@94
    .line 483
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@97
    move-result-object v4

    #@98
    .line 488
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    #@9b
    move-result-object v5

    #@9c
    invoke-virtual {v5}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    #@9f
    move-result-object v5

    #@a0
    const/4 v6, 0x6

    #@a1
    aget-object v5, v5, v6

    #@a3
    invoke-virtual {v5}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    #@a6
    move-result-object v5

    #@a7
    .line 483
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@aa
    move-result-object v4

    #@ab
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@ae
    move-result-object v4

    #@af
    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@b2
    .line 480
    return-void
.end method

.method private static onFullScanResult(ILandroid/net/wifi/ScanResult;II)V
    .locals 4
    .param p0, "id"    # I
    .param p1, "result"    # Landroid/net/wifi/ScanResult;
    .param p2, "bucketsScanned"    # I
    .param p3, "beaconCap"    # I

    #@0
    .prologue
    .line 1903
    sget-boolean v1, Lcom/android/server/wifi/WifiNative;->DBG:Z

    #@2
    if-eqz v1, :cond_0

    #@4
    const-string/jumbo v1, "WifiNative-HAL"

    #@7
    new-instance v2, Ljava/lang/StringBuilder;

    #@9
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@c
    const-string/jumbo v3, "Got a full scan results event, ssid = "

    #@f
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@12
    move-result-object v2

    #@13
    iget-object v3, p1, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    #@15
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@18
    move-result-object v2

    #@19
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1c
    move-result-object v2

    #@1d
    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@20
    .line 1905
    :cond_0
    sget-object v0, Lcom/android/server/wifi/WifiNative;->sScanEventHandler:Lcom/android/server/wifi/WifiNative$ScanEventHandler;

    #@22
    .line 1906
    .local v0, "handler":Lcom/android/server/wifi/WifiNative$ScanEventHandler;
    if-eqz v0, :cond_1

    #@24
    .line 1907
    const-string/jumbo v1, " onFullScanResult "

    #@27
    invoke-static {p1, p3, v1}, Lcom/android/server/wifi/WifiNative;->populateScanResult(Landroid/net/wifi/ScanResult;ILjava/lang/String;)V

    #@2a
    .line 1908
    invoke-interface {v0, p1, p2}, Lcom/android/server/wifi/WifiNative$ScanEventHandler;->onFullScanResult(Landroid/net/wifi/ScanResult;I)V

    #@2d
    .line 1902
    :cond_1
    return-void
.end method

.method private static onHotlistApFound(I[Landroid/net/wifi/ScanResult;)V
    .locals 3
    .param p0, "id"    # I
    .param p1, "results"    # [Landroid/net/wifi/ScanResult;

    #@0
    .prologue
    .line 2054
    sget-object v0, Lcom/android/server/wifi/WifiNative;->sHotlistEventHandler:Lcom/android/server/wifi/WifiNative$HotlistEventHandler;

    #@2
    .line 2055
    .local v0, "handler":Lcom/android/server/wifi/WifiNative$HotlistEventHandler;
    if-eqz v0, :cond_0

    #@4
    .line 2056
    invoke-interface {v0, p1}, Lcom/android/server/wifi/WifiNative$HotlistEventHandler;->onHotlistApFound([Landroid/net/wifi/ScanResult;)V

    #@7
    .line 2053
    :goto_0
    return-void

    #@8
    .line 2059
    :cond_0
    const-string/jumbo v1, "WifiNative-HAL"

    #@b
    const-string/jumbo v2, "Ignoring hotlist AP found event"

    #@e
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@11
    goto :goto_0
.end method

.method private static onHotlistApLost(I[Landroid/net/wifi/ScanResult;)V
    .locals 3
    .param p0, "id"    # I
    .param p1, "results"    # [Landroid/net/wifi/ScanResult;

    #@0
    .prologue
    .line 2065
    sget-object v0, Lcom/android/server/wifi/WifiNative;->sHotlistEventHandler:Lcom/android/server/wifi/WifiNative$HotlistEventHandler;

    #@2
    .line 2066
    .local v0, "handler":Lcom/android/server/wifi/WifiNative$HotlistEventHandler;
    if-eqz v0, :cond_0

    #@4
    .line 2067
    invoke-interface {v0, p1}, Lcom/android/server/wifi/WifiNative$HotlistEventHandler;->onHotlistApLost([Landroid/net/wifi/ScanResult;)V

    #@7
    .line 2064
    :goto_0
    return-void

    #@8
    .line 2070
    :cond_0
    const-string/jumbo v1, "WifiNative-HAL"

    #@b
    const-string/jumbo v2, "Ignoring hotlist AP lost event"

    #@e
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@11
    goto :goto_0
.end method

.method private static onPnoNetworkFound(I[Landroid/net/wifi/ScanResult;[I)V
    .locals 5
    .param p0, "id"    # I
    .param p1, "results"    # [Landroid/net/wifi/ScanResult;
    .param p2, "beaconCaps"    # [I

    #@0
    .prologue
    .line 2955
    if-nez p1, :cond_0

    #@2
    .line 2956
    const-string/jumbo v2, "WifiNative-HAL"

    #@5
    const-string/jumbo v3, "onPnoNetworkFound null results"

    #@8
    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@b
    .line 2957
    return-void

    #@c
    .line 2960
    :cond_0
    const-string/jumbo v2, "WifiNative-HAL"

    #@f
    new-instance v3, Ljava/lang/StringBuilder;

    #@11
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@14
    const-string/jumbo v4, "WifiNative.onPnoNetworkFound result "

    #@17
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1a
    move-result-object v3

    #@1b
    array-length v4, p1

    #@1c
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@1f
    move-result-object v3

    #@20
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@23
    move-result-object v3

    #@24
    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@27
    .line 2962
    sget-object v0, Lcom/android/server/wifi/WifiNative;->sPnoEventHandler:Lcom/android/server/wifi/WifiNative$PnoEventHandler;

    #@29
    .line 2963
    .local v0, "handler":Lcom/android/server/wifi/WifiNative$PnoEventHandler;
    sget v2, Lcom/android/server/wifi/WifiNative;->sPnoCmdId:I

    #@2b
    if-eqz v2, :cond_2

    #@2d
    if-eqz v0, :cond_2

    #@2f
    .line 2964
    const/4 v1, 0x0

    #@30
    .local v1, "i":I
    :goto_0
    array-length v2, p1

    #@31
    if-ge v1, v2, :cond_1

    #@33
    .line 2965
    const-string/jumbo v2, "WifiNative-HAL"

    #@36
    new-instance v3, Ljava/lang/StringBuilder;

    #@38
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@3b
    const-string/jumbo v4, "onPnoNetworkFound SSID "

    #@3e
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@41
    move-result-object v3

    #@42
    aget-object v4, p1, v1

    #@44
    iget-object v4, v4, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    #@46
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@49
    move-result-object v3

    #@4a
    .line 2966
    const-string/jumbo v4, " "

    #@4d
    .line 2965
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@50
    move-result-object v3

    #@51
    .line 2966
    aget-object v4, p1, v1

    #@53
    iget v4, v4, Landroid/net/wifi/ScanResult;->level:I

    #@55
    .line 2965
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@58
    move-result-object v3

    #@59
    .line 2966
    const-string/jumbo v4, " "

    #@5c
    .line 2965
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5f
    move-result-object v3

    #@60
    .line 2966
    aget-object v4, p1, v1

    #@62
    iget v4, v4, Landroid/net/wifi/ScanResult;->frequency:I

    #@64
    .line 2965
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@67
    move-result-object v3

    #@68
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@6b
    move-result-object v3

    #@6c
    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@6f
    .line 2968
    aget-object v2, p1, v1

    #@71
    aget v3, p2, v1

    #@73
    const-string/jumbo v4, "onPnoNetworkFound "

    #@76
    invoke-static {v2, v3, v4}, Lcom/android/server/wifi/WifiNative;->populateScanResult(Landroid/net/wifi/ScanResult;ILjava/lang/String;)V

    #@79
    .line 2969
    aget-object v2, p1, v1

    #@7b
    aget-object v3, p1, v1

    #@7d
    iget-object v3, v3, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    #@7f
    invoke-static {v3}, Landroid/net/wifi/WifiSsid;->createFromAsciiEncoded(Ljava/lang/String;)Landroid/net/wifi/WifiSsid;

    #@82
    move-result-object v3

    #@83
    iput-object v3, v2, Landroid/net/wifi/ScanResult;->wifiSsid:Landroid/net/wifi/WifiSsid;

    #@85
    .line 2964
    add-int/lit8 v1, v1, 0x1

    #@87
    goto :goto_0

    #@88
    .line 2972
    :cond_1
    invoke-interface {v0, p1}, Lcom/android/server/wifi/WifiNative$PnoEventHandler;->onPnoNetworkFound([Landroid/net/wifi/ScanResult;)V

    #@8b
    .line 2954
    .end local v1    # "i":I
    :goto_1
    return-void

    #@8c
    .line 2975
    :cond_2
    const-string/jumbo v2, "WifiNative-HAL"

    #@8f
    const-string/jumbo v3, "Ignoring Pno Network found event"

    #@92
    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@95
    goto :goto_1
.end method

.method private static onRingBufferData(Lcom/android/server/wifi/WifiNative$RingBufferStatus;[B)V
    .locals 1
    .param p0, "status"    # Lcom/android/server/wifi/WifiNative$RingBufferStatus;
    .param p1, "buffer"    # [B

    #@0
    .prologue
    .line 2457
    sget-object v0, Lcom/android/server/wifi/WifiNative;->sWifiLoggerEventHandler:Lcom/android/server/wifi/WifiNative$WifiLoggerEventHandler;

    #@2
    .line 2458
    .local v0, "handler":Lcom/android/server/wifi/WifiNative$WifiLoggerEventHandler;
    if-eqz v0, :cond_0

    #@4
    .line 2459
    invoke-interface {v0, p0, p1}, Lcom/android/server/wifi/WifiNative$WifiLoggerEventHandler;->onRingBufferData(Lcom/android/server/wifi/WifiNative$RingBufferStatus;[B)V

    #@7
    .line 2456
    :cond_0
    return-void
.end method

.method private static onRssiThresholdBreached(IB)V
    .locals 1
    .param p0, "id"    # I
    .param p1, "curRssi"    # B

    #@0
    .prologue
    .line 3044
    sget-object v0, Lcom/android/server/wifi/WifiNative;->sWifiRssiEventHandler:Lcom/android/server/wifi/WifiNative$WifiRssiEventHandler;

    #@2
    .line 3045
    .local v0, "handler":Lcom/android/server/wifi/WifiNative$WifiRssiEventHandler;
    if-eqz v0, :cond_0

    #@4
    .line 3046
    invoke-interface {v0, p1}, Lcom/android/server/wifi/WifiNative$WifiRssiEventHandler;->onRssiThresholdBreached(B)V

    #@7
    .line 3043
    :cond_0
    return-void
.end method

.method private static onRttResults(I[Landroid/net/wifi/RttManager$RttResult;)V
    .locals 4
    .param p0, "id"    # I
    .param p1, "results"    # [Landroid/net/wifi/RttManager$RttResult;

    #@0
    .prologue
    .line 2176
    sget-object v0, Lcom/android/server/wifi/WifiNative;->sRttEventHandler:Lcom/android/server/wifi/WifiNative$RttEventHandler;

    #@2
    .line 2177
    .local v0, "handler":Lcom/android/server/wifi/WifiNative$RttEventHandler;
    if-eqz v0, :cond_0

    #@4
    sget v1, Lcom/android/server/wifi/WifiNative;->sRttCmdId:I

    #@6
    if-ne p0, v1, :cond_0

    #@8
    .line 2178
    const-string/jumbo v1, "WifiNative-HAL"

    #@b
    new-instance v2, Ljava/lang/StringBuilder;

    #@d
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@10
    const-string/jumbo v3, "Received "

    #@13
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@16
    move-result-object v2

    #@17
    array-length v3, p1

    #@18
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@1b
    move-result-object v2

    #@1c
    const-string/jumbo v3, " rtt results"

    #@1f
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@22
    move-result-object v2

    #@23
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@26
    move-result-object v2

    #@27
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@2a
    .line 2179
    invoke-interface {v0, p1}, Lcom/android/server/wifi/WifiNative$RttEventHandler;->onRttResults([Landroid/net/wifi/RttManager$RttResult;)V

    #@2d
    .line 2180
    const/4 v1, 0x0

    #@2e
    sput v1, Lcom/android/server/wifi/WifiNative;->sRttCmdId:I

    #@30
    .line 2175
    :goto_0
    return-void

    #@31
    .line 2182
    :cond_0
    const-string/jumbo v1, "WifiNative-HAL"

    #@34
    new-instance v2, Ljava/lang/StringBuilder;

    #@36
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@39
    const-string/jumbo v3, "RTT Received event for unknown cmd = "

    #@3c
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3f
    move-result-object v2

    #@40
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@43
    move-result-object v2

    #@44
    .line 2183
    const-string/jumbo v3, ", current id = "

    #@47
    .line 2182
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4a
    move-result-object v2

    #@4b
    .line 2183
    sget v3, Lcom/android/server/wifi/WifiNative;->sRttCmdId:I

    #@4d
    .line 2182
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@50
    move-result-object v2

    #@51
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@54
    move-result-object v2

    #@55
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@58
    goto :goto_0
.end method

.method private static onScanStatus(II)V
    .locals 1
    .param p0, "id"    # I
    .param p1, "event"    # I

    #@0
    .prologue
    .line 1794
    sget-object v0, Lcom/android/server/wifi/WifiNative;->sScanEventHandler:Lcom/android/server/wifi/WifiNative$ScanEventHandler;

    #@2
    .line 1795
    .local v0, "handler":Lcom/android/server/wifi/WifiNative$ScanEventHandler;
    if-eqz v0, :cond_0

    #@4
    .line 1796
    invoke-interface {v0, p1}, Lcom/android/server/wifi/WifiNative$ScanEventHandler;->onScanStatus(I)V

    #@7
    .line 1793
    :cond_0
    return-void
.end method

.method private static onSignificantWifiChange(I[Landroid/net/wifi/ScanResult;)V
    .locals 3
    .param p0, "id"    # I
    .param p1, "results"    # [Landroid/net/wifi/ScanResult;

    #@0
    .prologue
    .line 2124
    sget-object v0, Lcom/android/server/wifi/WifiNative;->sSignificantWifiChangeHandler:Lcom/android/server/wifi/WifiNative$SignificantWifiChangeEventHandler;

    #@2
    .line 2125
    .local v0, "handler":Lcom/android/server/wifi/WifiNative$SignificantWifiChangeEventHandler;
    if-eqz v0, :cond_0

    #@4
    .line 2126
    invoke-interface {v0, p1}, Lcom/android/server/wifi/WifiNative$SignificantWifiChangeEventHandler;->onChangesFound([Landroid/net/wifi/ScanResult;)V

    #@7
    .line 2123
    :goto_0
    return-void

    #@8
    .line 2129
    :cond_0
    const-string/jumbo v1, "WifiNative-HAL"

    #@b
    const-string/jumbo v2, "Ignoring significant wifi change"

    #@e
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@11
    goto :goto_0
.end method

.method private static onTdlsStatus(Ljava/lang/String;II)Z
    .locals 2
    .param p0, "macAddr"    # Ljava/lang/String;
    .param p1, "status"    # I
    .param p2, "reason"    # I

    #@0
    .prologue
    .line 2435
    sget-object v0, Lcom/android/server/wifi/WifiNative;->sTdlsEventHandler:Lcom/android/server/wifi/WifiNative$TdlsEventHandler;

    #@2
    .line 2436
    .local v0, "handler":Lcom/android/server/wifi/WifiNative$TdlsEventHandler;
    if-nez v0, :cond_0

    #@4
    .line 2437
    const/4 v1, 0x0

    #@5
    return v1

    #@6
    .line 2439
    :cond_0
    invoke-virtual {v0, p0, p1, p2}, Lcom/android/server/wifi/WifiNative$TdlsEventHandler;->onTdlsStatus(Ljava/lang/String;II)V

    #@9
    .line 2440
    const/4 v1, 0x1

    #@a
    return v1
.end method

.method private static onWifiAlert([BI)V
    .locals 1
    .param p0, "buffer"    # [B
    .param p1, "errorCode"    # I

    #@0
    .prologue
    .line 2464
    sget-object v0, Lcom/android/server/wifi/WifiNative;->sWifiLoggerEventHandler:Lcom/android/server/wifi/WifiNative$WifiLoggerEventHandler;

    #@2
    .line 2465
    .local v0, "handler":Lcom/android/server/wifi/WifiNative$WifiLoggerEventHandler;
    if-eqz v0, :cond_0

    #@4
    .line 2466
    invoke-interface {v0, p1, p0}, Lcom/android/server/wifi/WifiNative$WifiLoggerEventHandler;->onWifiAlert(I[B)V

    #@7
    .line 2463
    :cond_0
    return-void
.end method

.method private static onWifiFwMemoryAvailable([B)V
    .locals 3
    .param p0, "buffer"    # [B

    #@0
    .prologue
    .line 2601
    sput-object p0, Lcom/android/server/wifi/WifiNative;->mFwMemoryDump:[B

    #@2
    .line 2602
    sget-boolean v0, Lcom/android/server/wifi/WifiNative;->DBG:Z

    #@4
    if-eqz v0, :cond_0

    #@6
    .line 2603
    const-string/jumbo v1, "WifiNative-HAL"

    #@9
    new-instance v0, Ljava/lang/StringBuilder;

    #@b
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@e
    const-string/jumbo v2, "onWifiFwMemoryAvailable is called and buffer length is: "

    #@11
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@14
    move-result-object v2

    #@15
    .line 2604
    if-nez p0, :cond_1

    #@17
    const/4 v0, 0x0

    #@18
    .line 2603
    :goto_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@1b
    move-result-object v0

    #@1c
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1f
    move-result-object v0

    #@20
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@23
    .line 2600
    :cond_0
    return-void

    #@24
    .line 2604
    :cond_1
    array-length v0, p0

    #@25
    goto :goto_0
.end method

.method private p2pGetParam(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .param p1, "deviceAddress"    # Ljava/lang/String;
    .param p2, "key"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v7, 0x0

    #@1
    .line 1390
    if-nez p1, :cond_0

    #@3
    return-object v7

    #@4
    .line 1392
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/WifiNative;->p2pPeer(Ljava/lang/String;)Ljava/lang/String;

    #@7
    move-result-object v1

    #@8
    .line 1393
    .local v1, "peerInfo":Ljava/lang/String;
    if-nez v1, :cond_1

    #@a
    return-object v7

    #@b
    .line 1394
    :cond_1
    const-string/jumbo v4, "\n"

    #@e
    invoke-virtual {v1, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    #@11
    move-result-object v3

    #@12
    .line 1396
    .local v3, "tokens":[Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    #@14
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@17
    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1a
    move-result-object v4

    #@1b
    const-string/jumbo v5, "="

    #@1e
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@21
    move-result-object v4

    #@22
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@25
    move-result-object p2

    #@26
    .line 1397
    const/4 v4, 0x0

    #@27
    array-length v5, v3

    #@28
    :goto_0
    if-ge v4, v5, :cond_2

    #@2a
    aget-object v2, v3, v4

    #@2c
    .line 1398
    .local v2, "token":Ljava/lang/String;
    invoke-virtual {v2, p2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    #@2f
    move-result v6

    #@30
    if-eqz v6, :cond_4

    #@32
    .line 1399
    const-string/jumbo v4, "="

    #@35
    invoke-virtual {v2, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    #@38
    move-result-object v0

    #@39
    .line 1400
    .local v0, "nameValue":[Ljava/lang/String;
    array-length v4, v0

    #@3a
    const/4 v5, 0x2

    #@3b
    if-eq v4, v5, :cond_3

    #@3d
    .line 1404
    .end local v0    # "nameValue":[Ljava/lang/String;
    .end local v2    # "token":Ljava/lang/String;
    :cond_2
    return-object v7

    #@3e
    .line 1401
    .restart local v0    # "nameValue":[Ljava/lang/String;
    .restart local v2    # "token":Ljava/lang/String;
    :cond_3
    const/4 v4, 0x1

    #@3f
    aget-object v4, v0, v4

    #@41
    return-object v4

    #@42
    .line 1397
    .end local v0    # "nameValue":[Ljava/lang/String;
    :cond_4
    add-int/lit8 v4, v4, 0x1

    #@44
    goto :goto_0
.end method

.method private static populateScanResult(Landroid/net/wifi/ScanResult;ILjava/lang/String;)V
    .locals 11
    .param p0, "result"    # Landroid/net/wifi/ScanResult;
    .param p1, "beaconCap"    # I
    .param p2, "dbg"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1842
    if-nez p2, :cond_0

    #@2
    const-string/jumbo p2, ""

    #@5
    .line 1844
    :cond_0
    new-instance v3, Lcom/android/server/wifi/util/InformationElementUtil$HtOperation;

    #@7
    invoke-direct {v3}, Lcom/android/server/wifi/util/InformationElementUtil$HtOperation;-><init>()V

    #@a
    .line 1846
    .local v3, "htOperation":Lcom/android/server/wifi/util/InformationElementUtil$HtOperation;
    new-instance v6, Lcom/android/server/wifi/util/InformationElementUtil$VhtOperation;

    #@c
    invoke-direct {v6}, Lcom/android/server/wifi/util/InformationElementUtil$VhtOperation;-><init>()V

    #@f
    .line 1848
    .local v6, "vhtOperation":Lcom/android/server/wifi/util/InformationElementUtil$VhtOperation;
    new-instance v2, Lcom/android/server/wifi/util/InformationElementUtil$ExtendedCapabilities;

    #@11
    invoke-direct {v2}, Lcom/android/server/wifi/util/InformationElementUtil$ExtendedCapabilities;-><init>()V

    #@14
    .line 1851
    .local v2, "extendedCaps":Lcom/android/server/wifi/util/InformationElementUtil$ExtendedCapabilities;
    iget-object v7, p0, Landroid/net/wifi/ScanResult;->bytes:[B

    #@16
    invoke-static {v7}, Lcom/android/server/wifi/util/InformationElementUtil;->parseInformationElements([B)[Landroid/net/wifi/ScanResult$InformationElement;

    #@19
    move-result-object v1

    #@1a
    .line 1852
    .local v1, "elements":[Landroid/net/wifi/ScanResult$InformationElement;
    const/4 v7, 0x0

    #@1b
    array-length v8, v1

    #@1c
    :goto_0
    if-ge v7, v8, :cond_4

    #@1e
    aget-object v5, v1, v7

    #@20
    .line 1853
    .local v5, "ie":Landroid/net/wifi/ScanResult$InformationElement;
    iget v9, v5, Landroid/net/wifi/ScanResult$InformationElement;->id:I

    #@22
    const/16 v10, 0x3d

    #@24
    if-ne v9, v10, :cond_2

    #@26
    .line 1854
    invoke-virtual {v3, v5}, Lcom/android/server/wifi/util/InformationElementUtil$HtOperation;->from(Landroid/net/wifi/ScanResult$InformationElement;)V

    #@29
    .line 1852
    :cond_1
    :goto_1
    add-int/lit8 v7, v7, 0x1

    #@2b
    goto :goto_0

    #@2c
    .line 1855
    :cond_2
    iget v9, v5, Landroid/net/wifi/ScanResult$InformationElement;->id:I

    #@2e
    const/16 v10, 0xc0

    #@30
    if-ne v9, v10, :cond_3

    #@32
    .line 1856
    invoke-virtual {v6, v5}, Lcom/android/server/wifi/util/InformationElementUtil$VhtOperation;->from(Landroid/net/wifi/ScanResult$InformationElement;)V

    #@35
    goto :goto_1

    #@36
    .line 1857
    :cond_3
    iget v9, v5, Landroid/net/wifi/ScanResult$InformationElement;->id:I

    #@38
    const/16 v10, 0x7f

    #@3a
    if-ne v9, v10, :cond_1

    #@3c
    .line 1858
    invoke-virtual {v2, v5}, Lcom/android/server/wifi/util/InformationElementUtil$ExtendedCapabilities;->from(Landroid/net/wifi/ScanResult$InformationElement;)V

    #@3f
    goto :goto_1

    #@40
    .line 1862
    .end local v5    # "ie":Landroid/net/wifi/ScanResult$InformationElement;
    :cond_4
    iget-boolean v7, v2, Lcom/android/server/wifi/util/InformationElementUtil$ExtendedCapabilities;->is80211McRTTResponder:Z

    #@42
    if-eqz v7, :cond_6

    #@44
    .line 1863
    const-wide/16 v8, 0x2

    #@46
    invoke-virtual {p0, v8, v9}, Landroid/net/wifi/ScanResult;->setFlag(J)V

    #@49
    .line 1869
    :goto_2
    invoke-virtual {v6}, Lcom/android/server/wifi/util/InformationElementUtil$VhtOperation;->isValid()Z

    #@4c
    move-result v7

    #@4d
    if-eqz v7, :cond_7

    #@4f
    .line 1870
    invoke-virtual {v6}, Lcom/android/server/wifi/util/InformationElementUtil$VhtOperation;->getChannelWidth()I

    #@52
    move-result v7

    #@53
    iput v7, p0, Landroid/net/wifi/ScanResult;->channelWidth:I

    #@55
    .line 1871
    invoke-virtual {v6}, Lcom/android/server/wifi/util/InformationElementUtil$VhtOperation;->getCenterFreq0()I

    #@58
    move-result v7

    #@59
    iput v7, p0, Landroid/net/wifi/ScanResult;->centerFreq0:I

    #@5b
    .line 1872
    invoke-virtual {v6}, Lcom/android/server/wifi/util/InformationElementUtil$VhtOperation;->getCenterFreq1()I

    #@5e
    move-result v7

    #@5f
    iput v7, p0, Landroid/net/wifi/ScanResult;->centerFreq1:I

    #@61
    .line 1880
    :goto_3
    new-instance v0, Ljava/util/BitSet;

    #@63
    const/16 v7, 0x10

    #@65
    invoke-direct {v0, v7}, Ljava/util/BitSet;-><init>(I)V

    #@68
    .line 1881
    .local v0, "beaconCapBits":Ljava/util/BitSet;
    const/4 v4, 0x0

    #@69
    .local v4, "i":I
    :goto_4
    const/16 v7, 0x10

    #@6b
    if-ge v4, v7, :cond_8

    #@6d
    .line 1882
    const/4 v7, 0x1

    #@6e
    shl-int/2addr v7, v4

    #@6f
    and-int/2addr v7, p1

    #@70
    if-eqz v7, :cond_5

    #@72
    .line 1883
    invoke-virtual {v0, v4}, Ljava/util/BitSet;->set(I)V

    #@75
    .line 1881
    :cond_5
    add-int/lit8 v4, v4, 0x1

    #@77
    goto :goto_4

    #@78
    .line 1865
    .end local v0    # "beaconCapBits":Ljava/util/BitSet;
    .end local v4    # "i":I
    :cond_6
    const-wide/16 v8, 0x2

    #@7a
    invoke-virtual {p0, v8, v9}, Landroid/net/wifi/ScanResult;->clearFlag(J)V

    #@7d
    goto :goto_2

    #@7e
    .line 1874
    :cond_7
    invoke-virtual {v3}, Lcom/android/server/wifi/util/InformationElementUtil$HtOperation;->getChannelWidth()I

    #@81
    move-result v7

    #@82
    iput v7, p0, Landroid/net/wifi/ScanResult;->channelWidth:I

    #@84
    .line 1875
    iget v7, p0, Landroid/net/wifi/ScanResult;->frequency:I

    #@86
    invoke-virtual {v3, v7}, Lcom/android/server/wifi/util/InformationElementUtil$HtOperation;->getCenterFreq0(I)I

    #@89
    move-result v7

    #@8a
    iput v7, p0, Landroid/net/wifi/ScanResult;->centerFreq0:I

    #@8c
    .line 1876
    const/4 v7, 0x0

    #@8d
    iput v7, p0, Landroid/net/wifi/ScanResult;->centerFreq1:I

    #@8f
    goto :goto_3

    #@90
    .line 1886
    .restart local v0    # "beaconCapBits":Ljava/util/BitSet;
    .restart local v4    # "i":I
    :cond_8
    invoke-static {v1, v0}, Lcom/android/server/wifi/util/InformationElementUtil$Capabilities;->buildCapabilities([Landroid/net/wifi/ScanResult$InformationElement;Ljava/util/BitSet;)Ljava/lang/String;

    #@93
    move-result-object v7

    #@94
    iput-object v7, p0, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    #@96
    .line 1889
    sget-boolean v7, Lcom/android/server/wifi/WifiNative;->DBG:Z

    #@98
    if-eqz v7, :cond_9

    #@9a
    .line 1890
    const-string/jumbo v8, "WifiNative-HAL"

    #@9d
    new-instance v7, Ljava/lang/StringBuilder;

    #@9f
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    #@a2
    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a5
    move-result-object v7

    #@a6
    const-string/jumbo v9, "SSID: "

    #@a9
    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@ac
    move-result-object v7

    #@ad
    iget-object v9, p0, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    #@af
    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b2
    move-result-object v7

    #@b3
    const-string/jumbo v9, " ChannelWidth is: "

    #@b6
    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b9
    move-result-object v7

    #@ba
    iget v9, p0, Landroid/net/wifi/ScanResult;->channelWidth:I

    #@bc
    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@bf
    move-result-object v7

    #@c0
    .line 1891
    const-string/jumbo v9, " PrimaryFreq: "

    #@c3
    .line 1890
    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@c6
    move-result-object v7

    #@c7
    .line 1891
    iget v9, p0, Landroid/net/wifi/ScanResult;->frequency:I

    #@c9
    .line 1890
    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@cc
    move-result-object v7

    #@cd
    .line 1891
    const-string/jumbo v9, " mCenterfreq0: "

    #@d0
    .line 1890
    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@d3
    move-result-object v7

    #@d4
    .line 1891
    iget v9, p0, Landroid/net/wifi/ScanResult;->centerFreq0:I

    #@d6
    .line 1890
    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@d9
    move-result-object v7

    #@da
    .line 1892
    const-string/jumbo v9, " mCenterfreq1: "

    #@dd
    .line 1890
    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@e0
    move-result-object v7

    #@e1
    .line 1892
    iget v9, p0, Landroid/net/wifi/ScanResult;->centerFreq1:I

    #@e3
    .line 1890
    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@e6
    move-result-object v9

    #@e7
    .line 1892
    iget-boolean v7, v2, Lcom/android/server/wifi/util/InformationElementUtil$ExtendedCapabilities;->is80211McRTTResponder:Z

    #@e9
    if-eqz v7, :cond_a

    #@eb
    .line 1893
    const-string/jumbo v7, "Support RTT reponder: "

    #@ee
    .line 1890
    :goto_5
    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@f1
    move-result-object v7

    #@f2
    .line 1894
    const-string/jumbo v9, " Capabilities: "

    #@f5
    .line 1890
    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@f8
    move-result-object v7

    #@f9
    .line 1894
    iget-object v9, p0, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    #@fb
    .line 1890
    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@fe
    move-result-object v7

    #@ff
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@102
    move-result-object v7

    #@103
    invoke-static {v8, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@106
    .line 1897
    :cond_9
    iput-object v1, p0, Landroid/net/wifi/ScanResult;->informationElements:[Landroid/net/wifi/ScanResult$InformationElement;

    #@108
    .line 1841
    return-void

    #@109
    .line 1893
    :cond_a
    const-string/jumbo v7, "Do not support RTT responder"

    #@10c
    goto :goto_5
.end method

.method private static native readKernelLogNative()[B
.end method

.method private static native registerNatives()I
.end method

.method private static native requestRangeNative(II[Landroid/net/wifi/RttManager$RttParams;)Z
.end method

.method private static native resetHotlistNative(II)Z
.end method

.method private static native resetLogHandlerNative(II)Z
.end method

.method private static native resetPnoListNative(II)Z
.end method

.method private scanWithParams(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2
    .param p1, "freqList"    # Ljava/lang/String;
    .param p2, "hiddenNetworkIdList"    # Ljava/lang/String;

    #@0
    .prologue
    .line 378
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    .line 379
    .local v0, "scanCommand":Ljava/lang/StringBuilder;
    const-string/jumbo v1, "SCAN TYPE=ONLY"

    #@8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b
    .line 380
    if-eqz p1, :cond_0

    #@d
    .line 381
    const-string/jumbo v1, " freq="

    #@10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@13
    move-result-object v1

    #@14
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@17
    .line 383
    :cond_0
    if-eqz p2, :cond_1

    #@19
    .line 384
    const-string/jumbo v1, " scan_id="

    #@1c
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1f
    move-result-object v1

    #@20
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@23
    .line 386
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@26
    move-result-object v1

    #@27
    invoke-direct {p0, v1}, Lcom/android/server/wifi/WifiNative;->doBooleanCommand(Ljava/lang/String;)Z

    #@2a
    move-result v1

    #@2b
    return v1
.end method

.method private static native setBssidBlacklistNative(II[Ljava/lang/String;)Z
.end method

.method private static native setCountryCodeHalNative(ILjava/lang/String;)Z
.end method

.method private static native setDfsFlagNative(IZ)Z
.end method

.method private static native setHotlistNative(IILandroid/net/wifi/WifiScanner$HotlistSettings;)Z
.end method

.method private static native setInterfaceUpNative(Z)Z
.end method

.method private static native setLoggingEventHandlerNative(II)Z
.end method

.method private static native setPnoListNative(IILcom/android/server/wifi/WifiNative$PnoSettings;)Z
.end method

.method private static native setScanningMacOuiNative(I[B)Z
.end method

.method public static setSsid([BLandroid/net/wifi/ScanResult;)Z
    .locals 2
    .param p0, "rawSsid"    # [B
    .param p1, "result"    # Landroid/net/wifi/ScanResult;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 1832
    if-eqz p0, :cond_0

    #@3
    array-length v0, p0

    #@4
    if-nez v0, :cond_1

    #@6
    .line 1833
    :cond_0
    return v1

    #@7
    .line 1832
    :cond_1
    if-eqz p1, :cond_0

    #@9
    .line 1836
    invoke-static {p0}, Lcom/android/server/wifi/WifiNative;->ssidConvert([B)Ljava/lang/String;

    #@c
    move-result-object v0

    #@d
    iput-object v0, p1, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    #@f
    .line 1837
    invoke-static {p0}, Lcom/android/server/wifi/WifiNative;->createWifiSsid([B)Landroid/net/wifi/WifiSsid;

    #@12
    move-result-object v0

    #@13
    iput-object v0, p1, Landroid/net/wifi/ScanResult;->wifiSsid:Landroid/net/wifi/WifiSsid;

    #@15
    .line 1838
    const/4 v0, 0x1

    #@16
    return v0
.end method

.method private static native setWifiLinkLayerStatsNative(II)V
.end method

.method public static ssidConvert([B)Ljava/lang/String;
    .locals 5
    .param p0, "rawSsid"    # [B

    #@0
    .prologue
    .line 1815
    sget-object v4, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    #@2
    invoke-virtual {v4}, Ljava/nio/charset/Charset;->newDecoder()Ljava/nio/charset/CharsetDecoder;

    #@5
    move-result-object v2

    #@6
    .line 1817
    .local v2, "decoder":Ljava/nio/charset/CharsetDecoder;
    :try_start_0
    invoke-static {p0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    #@9
    move-result-object v4

    #@a
    invoke-virtual {v2, v4}, Ljava/nio/charset/CharsetDecoder;->decode(Ljava/nio/ByteBuffer;)Ljava/nio/CharBuffer;

    #@d
    move-result-object v1

    #@e
    .line 1818
    .local v1, "decoded":Ljava/nio/CharBuffer;
    invoke-virtual {v1}, Ljava/nio/CharBuffer;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/nio/charset/CharacterCodingException; {:try_start_0 .. :try_end_0} :catch_0

    #@11
    move-result-object v3

    #@12
    .line 1823
    .end local v1    # "decoded":Ljava/nio/CharBuffer;
    :goto_0
    if-nez v3, :cond_0

    #@14
    .line 1824
    new-instance v3, Ljava/lang/String;

    #@16
    sget-object v4, Ljava/nio/charset/StandardCharsets;->ISO_8859_1:Ljava/nio/charset/Charset;

    #@18
    invoke-direct {v3, p0, v4}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    #@1b
    .line 1827
    :cond_0
    return-object v3

    #@1c
    .line 1819
    :catch_0
    move-exception v0

    #@1d
    .line 1820
    .local v0, "cce":Ljava/nio/charset/CharacterCodingException;
    const/4 v3, 0x0

    #@1e
    .local v3, "ssid":Ljava/lang/String;
    goto :goto_0
.end method

.method private static native startHalNative()Z
.end method

.method private static native startLoggingRingBufferNative(IIIIILjava/lang/String;)Z
.end method

.method private static native startPktFateMonitoringNative(I)I
.end method

.method private static native startRssiMonitoringNative(IIBB)I
.end method

.method private static native startScanNative(IILcom/android/server/wifi/WifiNative$ScanSettings;)Z
.end method

.method private static native startSendingOffloadedPacketNative(II[B[B[BI)I
.end method

.method private static native startSupplicantNative(Z)Z
.end method

.method private static native stopHalNative()V
.end method

.method private static native stopRssiMonitoringNative(II)I
.end method

.method private static native stopScanNative(II)Z
.end method

.method private static native stopSendingOffloadedPacketNative(II)I
.end method

.method private static native trackSignificantWifiChangeNative(IILandroid/net/wifi/WifiScanner$WifiChangeSettings;)Z
.end method

.method private static native unloadDriverNative()Z
.end method

.method private static native untrackSignificantWifiChangeNative(II)Z
.end method

.method private static native waitForEventNative()Ljava/lang/String;
.end method

.method private static native waitForHalEventNative()V
.end method


# virtual methods
.method public addNetwork()I
    .locals 1

    #@0
    .prologue
    .line 408
    const-string/jumbo v0, "ADD_NETWORK"

    #@3
    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiNative;->doIntCommand(Ljava/lang/String;)I

    #@6
    move-result v0

    #@7
    return v0
.end method

.method public addToBlacklist(Ljava/lang/String;)Z
    .locals 2
    .param p1, "bssid"    # Ljava/lang/String;

    #@0
    .prologue
    .line 906
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_0

    #@6
    const/4 v0, 0x0

    #@7
    return v0

    #@8
    .line 907
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    #@a
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@d
    const-string/jumbo v1, "BLACKLIST "

    #@10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@13
    move-result-object v0

    #@14
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@17
    move-result-object v0

    #@18
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1b
    move-result-object v0

    #@1c
    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiNative;->doBooleanCommand(Ljava/lang/String;)Z

    #@1f
    move-result v0

    #@20
    return v0
.end method

.method public bssFlush()V
    .locals 1

    #@0
    .prologue
    .line 988
    const-string/jumbo v0, "BSS_FLUSH 0"

    #@3
    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiNative;->doBooleanCommand(Ljava/lang/String;)Z

    #@6
    .line 987
    return-void
.end method

.method public cancelRtt([Landroid/net/wifi/RttManager$RttParams;)Z
    .locals 4
    .param p1, "params"    # [Landroid/net/wifi/RttManager$RttParams;

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 2211
    sget-object v1, Lcom/android/server/wifi/WifiNative;->sLock:Ljava/lang/Object;

    #@3
    monitor-enter v1

    #@4
    .line 2212
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/wifi/WifiNative;->isHalStarted()Z

    #@7
    move-result v0

    #@8
    if-eqz v0, :cond_2

    #@a
    .line 2213
    sget v0, Lcom/android/server/wifi/WifiNative;->sRttCmdId:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@c
    if-nez v0, :cond_0

    #@e
    monitor-exit v1

    #@f
    .line 2214
    return v3

    #@10
    .line 2217
    :cond_0
    const/4 v0, 0x0

    #@11
    :try_start_1
    sput v0, Lcom/android/server/wifi/WifiNative;->sRttCmdId:I

    #@13
    .line 2219
    sget v0, Lcom/android/server/wifi/WifiNative;->sWlan0Index:I

    #@15
    sget v2, Lcom/android/server/wifi/WifiNative;->sRttCmdId:I

    #@17
    invoke-static {v0, v2, p1}, Lcom/android/server/wifi/WifiNative;->cancelRangeRequestNative(II[Landroid/net/wifi/RttManager$RttParams;)Z

    #@1a
    move-result v0

    #@1b
    if-eqz v0, :cond_1

    #@1d
    .line 2220
    const/4 v0, 0x0

    #@1e
    sput-object v0, Lcom/android/server/wifi/WifiNative;->sRttEventHandler:Lcom/android/server/wifi/WifiNative$RttEventHandler;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@20
    .line 2221
    const/4 v0, 0x1

    #@21
    monitor-exit v1

    #@22
    return v0

    #@23
    .line 2223
    :cond_1
    :try_start_2
    const-string/jumbo v0, "WifiNative-HAL"

    #@26
    const-string/jumbo v2, "RTT cancel Request failed"

    #@29
    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@2c
    monitor-exit v1

    #@2d
    .line 2224
    return v3

    #@2e
    :cond_2
    monitor-exit v1

    #@2f
    .line 2227
    return v3

    #@30
    .line 2211
    :catchall_0
    move-exception v0

    #@31
    monitor-exit v1

    #@32
    throw v0
.end method

.method public cancelWps()Z
    .locals 1

    #@0
    .prologue
    .line 1072
    const-string/jumbo v0, "WPS_CANCEL"

    #@3
    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiNative;->doBooleanCommand(Ljava/lang/String;)Z

    #@6
    move-result v0

    #@7
    return v0
.end method

.method public clearBlacklist()Z
    .locals 1

    #@0
    .prologue
    .line 911
    const-string/jumbo v0, "BLACKLIST clear"

    #@3
    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiNative;->doBooleanCommand(Ljava/lang/String;)Z

    #@6
    move-result v0

    #@7
    return v0
.end method

.method public closeSupplicantConnection()V
    .locals 3

    #@0
    .prologue
    .line 231
    sget-object v1, Lcom/android/server/wifi/WifiNative;->sLock:Ljava/lang/Object;

    #@2
    monitor-enter v1

    #@3
    .line 232
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    #@5
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@8
    iget-object v2, p0, Lcom/android/server/wifi/WifiNative;->mInterfacePrefix:Ljava/lang/String;

    #@a
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@d
    move-result-object v0

    #@e
    const-string/jumbo v2, "closeSupplicantConnection"

    #@11
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@14
    move-result-object v0

    #@15
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@18
    move-result-object v0

    #@19
    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiNative;->localLog(Ljava/lang/String;)V

    #@1c
    .line 233
    invoke-static {}, Lcom/android/server/wifi/WifiNative;->closeSupplicantConnectionNative()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1f
    monitor-exit v1

    #@20
    .line 230
    return-void

    #@21
    .line 231
    :catchall_0
    move-exception v0

    #@22
    monitor-exit v1

    #@23
    throw v0
.end method

.method public configureNeighborDiscoveryOffload(Z)Z
    .locals 7
    .param p1, "enabled"    # Z

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 3117
    new-instance v3, Ljava/lang/StringBuilder;

    #@3
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@6
    const-string/jumbo v4, "configureNeighborDiscoveryOffload("

    #@9
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@c
    move-result-object v3

    #@d
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@10
    move-result-object v3

    #@11
    const-string/jumbo v4, ")"

    #@14
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@17
    move-result-object v3

    #@18
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1b
    move-result-object v0

    #@1c
    .line 3118
    .local v0, "logMsg":Ljava/lang/String;
    iget-object v3, p0, Lcom/android/server/wifi/WifiNative;->mTAG:Ljava/lang/String;

    #@1e
    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@21
    .line 3119
    sget-object v3, Lcom/android/server/wifi/WifiNative;->sLock:Ljava/lang/Object;

    #@23
    monitor-enter v3

    #@24
    .line 3120
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/wifi/WifiNative;->isHalStarted()Z

    #@27
    move-result v4

    #@28
    if-eqz v4, :cond_2

    #@2a
    .line 3121
    sget v4, Lcom/android/server/wifi/WifiNative;->sWlan0Index:I

    #@2c
    invoke-static {v4, p1}, Lcom/android/server/wifi/WifiNative;->configureNeighborDiscoveryOffload(IZ)I

    #@2f
    move-result v1

    #@30
    .line 3122
    .local v1, "ret":I
    if-eqz v1, :cond_0

    #@32
    .line 3123
    iget-object v4, p0, Lcom/android/server/wifi/WifiNative;->mTAG:Ljava/lang/String;

    #@34
    new-instance v5, Ljava/lang/StringBuilder;

    #@36
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@39
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3c
    move-result-object v5

    #@3d
    const-string/jumbo v6, " returned: "

    #@40
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@43
    move-result-object v5

    #@44
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@47
    move-result-object v5

    #@48
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@4b
    move-result-object v5

    #@4c
    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@4f
    .line 3125
    :cond_0
    if-nez v1, :cond_1

    #@51
    const/4 v2, 0x1

    #@52
    :cond_1
    monitor-exit v3

    #@53
    return v2

    #@54
    .end local v1    # "ret":I
    :cond_2
    monitor-exit v3

    #@55
    .line 3128
    return v2

    #@56
    .line 3119
    :catchall_0
    move-exception v2

    #@57
    monitor-exit v3

    #@58
    throw v2
.end method

.method public connectToSupplicant()Z
    .locals 3

    #@0
    .prologue
    .line 223
    sget-object v1, Lcom/android/server/wifi/WifiNative;->sLock:Ljava/lang/Object;

    #@2
    monitor-enter v1

    #@3
    .line 224
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    #@5
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@8
    iget-object v2, p0, Lcom/android/server/wifi/WifiNative;->mInterfacePrefix:Ljava/lang/String;

    #@a
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@d
    move-result-object v0

    #@e
    const-string/jumbo v2, "connectToSupplicant"

    #@11
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@14
    move-result-object v0

    #@15
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@18
    move-result-object v0

    #@19
    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiNative;->localLog(Ljava/lang/String;)V

    #@1c
    .line 225
    invoke-static {}, Lcom/android/server/wifi/WifiNative;->connectToSupplicantNative()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1f
    move-result v0

    #@20
    monitor-exit v1

    #@21
    return v0

    #@22
    .line 223
    :catchall_0
    move-exception v0

    #@23
    monitor-exit v1

    #@24
    throw v0
.end method

.method public disableNetwork(I)Z
    .locals 2
    .param p1, "netId"    # I

    #@0
    .prologue
    .line 518
    sget-boolean v0, Lcom/android/server/wifi/WifiNative;->DBG:Z

    #@2
    if-eqz v0, :cond_0

    #@4
    new-instance v0, Ljava/lang/StringBuilder;

    #@6
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@9
    const-string/jumbo v1, "disableNetwork nid="

    #@c
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@f
    move-result-object v0

    #@10
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    #@13
    move-result-object v1

    #@14
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@17
    move-result-object v0

    #@18
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1b
    move-result-object v0

    #@1c
    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiNative;->logDbg(Ljava/lang/String;)V

    #@1f
    .line 519
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    #@21
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@24
    const-string/jumbo v1, "DISABLE_NETWORK "

    #@27
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2a
    move-result-object v0

    #@2b
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@2e
    move-result-object v0

    #@2f
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@32
    move-result-object v0

    #@33
    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiNative;->doBooleanCommand(Ljava/lang/String;)Z

    #@36
    move-result v0

    #@37
    return v0
.end method

.method public disableRttResponder()Z
    .locals 3

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 2263
    sget-object v1, Lcom/android/server/wifi/WifiNative;->sLock:Ljava/lang/Object;

    #@3
    monitor-enter v1

    #@4
    .line 2264
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/wifi/WifiNative;->isHalStarted()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@7
    move-result v0

    #@8
    if-nez v0, :cond_0

    #@a
    monitor-exit v1

    #@b
    return v2

    #@c
    .line 2265
    :cond_0
    :try_start_1
    sget v0, Lcom/android/server/wifi/WifiNative;->sRttResponderCmdId:I

    #@e
    if-nez v0, :cond_1

    #@10
    .line 2266
    iget-object v0, p0, Lcom/android/server/wifi/WifiNative;->mTAG:Ljava/lang/String;

    #@12
    const-string/jumbo v2, "responder role not enabled yet"

    #@15
    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@18
    .line 2267
    const/4 v0, 0x1

    #@19
    monitor-exit v1

    #@1a
    return v0

    #@1b
    .line 2269
    :cond_1
    const/4 v0, 0x0

    #@1c
    :try_start_2
    sput v0, Lcom/android/server/wifi/WifiNative;->sRttResponderCmdId:I

    #@1e
    .line 2270
    sget v0, Lcom/android/server/wifi/WifiNative;->sWlan0Index:I

    #@20
    sget v2, Lcom/android/server/wifi/WifiNative;->sRttResponderCmdId:I

    #@22
    invoke-static {v0, v2}, Lcom/android/server/wifi/WifiNative;->disableRttResponderNative(II)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@25
    move-result v0

    #@26
    monitor-exit v1

    #@27
    return v0

    #@28
    .line 2263
    :catchall_0
    move-exception v0

    #@29
    monitor-exit v1

    #@2a
    throw v0
.end method

.method public disconnect()Z
    .locals 1

    #@0
    .prologue
    .line 543
    sget-boolean v0, Lcom/android/server/wifi/WifiNative;->DBG:Z

    #@2
    if-eqz v0, :cond_0

    #@4
    const-string/jumbo v0, "DISCONNECT "

    #@7
    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiNative;->logDbg(Ljava/lang/String;)V

    #@a
    .line 544
    :cond_0
    const-string/jumbo v0, "DISCONNECT"

    #@d
    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiNative;->doBooleanCommand(Ljava/lang/String;)Z

    #@10
    move-result v0

    #@11
    return v0
.end method

.method public doCustomSupplicantCommand(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "command"    # Ljava/lang/String;

    #@0
    .prologue
    .line 323
    invoke-direct {p0, p1}, Lcom/android/server/wifi/WifiNative;->doStringCommand(Ljava/lang/String;)Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public enableAutoConnect(Z)V
    .locals 1
    .param p1, "enable"    # Z

    #@0
    .prologue
    .line 939
    if-eqz p1, :cond_0

    #@2
    .line 940
    const-string/jumbo v0, "STA_AUTOCONNECT 1"

    #@5
    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiNative;->doBooleanCommand(Ljava/lang/String;)Z

    #@8
    .line 938
    :goto_0
    return-void

    #@9
    .line 942
    :cond_0
    const-string/jumbo v0, "STA_AUTOCONNECT 0"

    #@c
    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiNative;->doBooleanCommand(Ljava/lang/String;)Z

    #@f
    goto :goto_0
.end method

.method public enableDisableTdls(ZLjava/lang/String;Lcom/android/server/wifi/WifiNative$TdlsEventHandler;)Z
    .locals 2
    .param p1, "enable"    # Z
    .param p2, "macAdd"    # Ljava/lang/String;
    .param p3, "tdlsCallBack"    # Lcom/android/server/wifi/WifiNative$TdlsEventHandler;

    #@0
    .prologue
    .line 2386
    sget-object v1, Lcom/android/server/wifi/WifiNative;->sLock:Ljava/lang/Object;

    #@2
    monitor-enter v1

    #@3
    .line 2387
    :try_start_0
    sput-object p3, Lcom/android/server/wifi/WifiNative;->sTdlsEventHandler:Lcom/android/server/wifi/WifiNative$TdlsEventHandler;

    #@5
    .line 2388
    sget v0, Lcom/android/server/wifi/WifiNative;->sWlan0Index:I

    #@7
    invoke-static {v0, p1, p2}, Lcom/android/server/wifi/WifiNative;->enableDisableTdlsNative(IZLjava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@a
    move-result v0

    #@b
    monitor-exit v1

    #@c
    return v0

    #@d
    .line 2386
    :catchall_0
    move-exception v0

    #@e
    monitor-exit v1

    #@f
    throw v0
.end method

.method public enableNetwork(I)Z
    .locals 2
    .param p1, "netId"    # I

    #@0
    .prologue
    .line 498
    sget-boolean v0, Lcom/android/server/wifi/WifiNative;->DBG:Z

    #@2
    if-eqz v0, :cond_0

    #@4
    new-instance v0, Ljava/lang/StringBuilder;

    #@6
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@9
    const-string/jumbo v1, "enableNetwork nid="

    #@c
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@f
    move-result-object v0

    #@10
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    #@13
    move-result-object v1

    #@14
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@17
    move-result-object v0

    #@18
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1b
    move-result-object v0

    #@1c
    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiNative;->logDbg(Ljava/lang/String;)V

    #@1f
    .line 499
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    #@21
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@24
    const-string/jumbo v1, "ENABLE_NETWORK "

    #@27
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2a
    move-result-object v0

    #@2b
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@2e
    move-result-object v0

    #@2f
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@32
    move-result-object v0

    #@33
    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiNative;->doBooleanCommand(Ljava/lang/String;)Z

    #@36
    move-result v0

    #@37
    return v0
.end method

.method public enableNetworkWithoutConnect(I)Z
    .locals 2
    .param p1, "netId"    # I

    #@0
    .prologue
    .line 508
    sget-boolean v0, Lcom/android/server/wifi/WifiNative;->DBG:Z

    #@2
    if-eqz v0, :cond_0

    #@4
    new-instance v0, Ljava/lang/StringBuilder;

    #@6
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@9
    const-string/jumbo v1, "enableNetworkWithoutConnect nid="

    #@c
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@f
    move-result-object v0

    #@10
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    #@13
    move-result-object v1

    #@14
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@17
    move-result-object v0

    #@18
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1b
    move-result-object v0

    #@1c
    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiNative;->logDbg(Ljava/lang/String;)V

    #@1f
    .line 509
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    #@21
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@24
    const-string/jumbo v1, "ENABLE_NETWORK "

    #@27
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2a
    move-result-object v0

    #@2b
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@2e
    move-result-object v0

    #@2f
    const-string/jumbo v1, " "

    #@32
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@35
    move-result-object v0

    #@36
    const-string/jumbo v1, "no-connect"

    #@39
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3c
    move-result-object v0

    #@3d
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@40
    move-result-object v0

    #@41
    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiNative;->doBooleanCommand(Ljava/lang/String;)Z

    #@44
    move-result v0

    #@45
    return v0
.end method

.method public enableRttResponder(I)Landroid/net/wifi/RttManager$ResponderConfig;
    .locals 7
    .param p1, "timeoutSeconds"    # I

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    const/4 v5, 0x0

    #@2
    .line 2242
    sget-object v3, Lcom/android/server/wifi/WifiNative;->sLock:Ljava/lang/Object;

    #@4
    monitor-enter v3

    #@5
    .line 2243
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/wifi/WifiNative;->isHalStarted()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@8
    move-result v4

    #@9
    if-nez v4, :cond_0

    #@b
    monitor-exit v3

    #@c
    return-object v5

    #@d
    .line 2244
    :cond_0
    :try_start_1
    sget v4, Lcom/android/server/wifi/WifiNative;->sRttResponderCmdId:I

    #@f
    if-eqz v4, :cond_2

    #@11
    .line 2245
    sget-boolean v2, Lcom/android/server/wifi/WifiNative;->DBG:Z

    #@13
    if-eqz v2, :cond_1

    #@15
    iget-object v2, p0, Lcom/android/server/wifi/WifiNative;->mTAG:Ljava/lang/String;

    #@17
    const-string/jumbo v4, "responder mode already enabled - this shouldn\'t happen"

    #@1a
    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@1d
    :cond_1
    monitor-exit v3

    #@1e
    .line 2246
    return-object v5

    #@1f
    .line 2248
    :cond_2
    :try_start_2
    invoke-static {}, Lcom/android/server/wifi/WifiNative;->getNewCmdIdLocked()I

    #@22
    move-result v1

    #@23
    .line 2250
    .local v1, "id":I
    sget v4, Lcom/android/server/wifi/WifiNative;->sWlan0Index:I

    #@25
    const/4 v5, 0x0

    #@26
    .line 2249
    invoke-static {v4, v1, p1, v5}, Lcom/android/server/wifi/WifiNative;->enableRttResponderNative(IIILcom/android/server/wifi/WifiNative$WifiChannelInfo;)Landroid/net/wifi/RttManager$ResponderConfig;

    #@29
    move-result-object v0

    #@2a
    .line 2251
    .local v0, "config":Landroid/net/wifi/RttManager$ResponderConfig;
    if-eqz v0, :cond_3

    #@2c
    sput v1, Lcom/android/server/wifi/WifiNative;->sRttResponderCmdId:I

    #@2e
    .line 2252
    :cond_3
    sget-boolean v4, Lcom/android/server/wifi/WifiNative;->DBG:Z

    #@30
    if-eqz v4, :cond_5

    #@32
    const-string/jumbo v4, "WifiNative-HAL"

    #@35
    new-instance v5, Ljava/lang/StringBuilder;

    #@37
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@3a
    const-string/jumbo v6, "enabling rtt "

    #@3d
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@40
    move-result-object v5

    #@41
    if-eqz v0, :cond_4

    #@43
    const/4 v2, 0x1

    #@44
    :cond_4
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@47
    move-result-object v2

    #@48
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@4b
    move-result-object v2

    #@4c
    invoke-static {v4, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@4f
    :cond_5
    monitor-exit v3

    #@50
    .line 2253
    return-object v0

    #@51
    .line 2242
    .end local v0    # "config":Landroid/net/wifi/RttManager$ResponderConfig;
    .end local v1    # "id":I
    :catchall_0
    move-exception v2

    #@52
    monitor-exit v3

    #@53
    throw v2
.end method

.method public enableSaveConfig()V
    .locals 1

    #@0
    .prologue
    .line 898
    const-string/jumbo v0, "SET update_config 1"

    #@3
    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiNative;->doBooleanCommand(Ljava/lang/String;)Z

    #@6
    .line 897
    return-void
.end method

.method enableVerboseLogging(I)V
    .locals 1
    .param p1, "verbose"    # I

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 168
    if-lez p1, :cond_0

    #@3
    .line 169
    const/4 v0, 0x1

    #@4
    sput-boolean v0, Lcom/android/server/wifi/WifiNative;->DBG:Z

    #@6
    .line 167
    :goto_0
    return-void

    #@7
    .line 171
    :cond_0
    sput-boolean v0, Lcom/android/server/wifi/WifiNative;->DBG:Z

    #@9
    goto :goto_0
.end method

.method public fetchAnqp(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2
    .param p1, "bssid"    # Ljava/lang/String;
    .param p2, "subtypes"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1496
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    const-string/jumbo v1, "ANQP_GET "

    #@8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b
    move-result-object v0

    #@c
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@f
    move-result-object v0

    #@10
    const-string/jumbo v1, " "

    #@13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@16
    move-result-object v0

    #@17
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1a
    move-result-object v0

    #@1b
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1e
    move-result-object v0

    #@1f
    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiNative;->doBooleanCommand(Ljava/lang/String;)Z

    #@22
    move-result v0

    #@23
    return v0
.end method

.method public getApfCapabilities()Landroid/net/apf/ApfCapabilities;
    .locals 2

    #@0
    .prologue
    .line 2345
    sget-object v1, Lcom/android/server/wifi/WifiNative;->sLock:Ljava/lang/Object;

    #@2
    monitor-enter v1

    #@3
    .line 2346
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/wifi/WifiNative;->isHalStarted()Z

    #@6
    move-result v0

    #@7
    if-eqz v0, :cond_0

    #@9
    .line 2347
    sget v0, Lcom/android/server/wifi/WifiNative;->sWlan0Index:I

    #@b
    invoke-static {v0}, Lcom/android/server/wifi/WifiNative;->getApfCapabilitiesNative(I)Landroid/net/apf/ApfCapabilities;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@e
    move-result-object v0

    #@f
    monitor-exit v1

    #@10
    return-object v0

    #@11
    .line 2349
    :cond_0
    const/4 v0, 0x0

    #@12
    monitor-exit v1

    #@13
    return-object v0

    #@14
    .line 2345
    :catchall_0
    move-exception v0

    #@15
    monitor-exit v1

    #@16
    throw v0
.end method

.method public getChannelsForBand(I)[I
    .locals 2
    .param p1, "band"    # I

    #@0
    .prologue
    .line 2290
    sget-object v1, Lcom/android/server/wifi/WifiNative;->sLock:Ljava/lang/Object;

    #@2
    monitor-enter v1

    #@3
    .line 2291
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/wifi/WifiNative;->isHalStarted()Z

    #@6
    move-result v0

    #@7
    if-eqz v0, :cond_0

    #@9
    .line 2292
    sget v0, Lcom/android/server/wifi/WifiNative;->sWlan0Index:I

    #@b
    invoke-static {v0, p1}, Lcom/android/server/wifi/WifiNative;->getChannelsForBandNative(II)[I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@e
    move-result-object v0

    #@f
    monitor-exit v1

    #@10
    return-object v0

    #@11
    .line 2294
    :cond_0
    const/4 v0, 0x0

    #@12
    monitor-exit v1

    #@13
    return-object v0

    #@14
    .line 2290
    :catchall_0
    move-exception v0

    #@15
    monitor-exit v1

    #@16
    throw v0
.end method

.method public getDriverStateDump()[B
    .locals 2

    #@0
    .prologue
    .line 2627
    sget-object v1, Lcom/android/server/wifi/WifiNative;->sLock:Ljava/lang/Object;

    #@2
    monitor-enter v1

    #@3
    .line 2628
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/wifi/WifiNative;->isHalStarted()Z

    #@6
    move-result v0

    #@7
    if-eqz v0, :cond_0

    #@9
    .line 2629
    sget v0, Lcom/android/server/wifi/WifiNative;->sWlan0Index:I

    #@b
    invoke-static {v0}, Lcom/android/server/wifi/WifiNative;->getDriverStateDumpNative(I)[B
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@e
    move-result-object v0

    #@f
    monitor-exit v1

    #@10
    return-object v0

    #@11
    .line 2631
    :cond_0
    const/4 v0, 0x0

    #@12
    monitor-exit v1

    #@13
    return-object v0

    #@14
    .line 2627
    :catchall_0
    move-exception v0

    #@15
    monitor-exit v1

    #@16
    throw v0
.end method

.method public getDriverVersion()Ljava/lang/String;
    .locals 2

    #@0
    .prologue
    .line 2536
    sget-object v1, Lcom/android/server/wifi/WifiNative;->sLock:Ljava/lang/Object;

    #@2
    monitor-enter v1

    #@3
    .line 2537
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/wifi/WifiNative;->isHalStarted()Z

    #@6
    move-result v0

    #@7
    if-eqz v0, :cond_0

    #@9
    .line 2538
    sget v0, Lcom/android/server/wifi/WifiNative;->sWlan0Index:I

    #@b
    invoke-static {v0}, Lcom/android/server/wifi/WifiNative;->getDriverVersionNative(I)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@e
    move-result-object v0

    #@f
    monitor-exit v1

    #@10
    return-object v0

    #@11
    .line 2540
    :cond_0
    :try_start_1
    const-string/jumbo v0, ""
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@14
    monitor-exit v1

    #@15
    return-object v0

    #@16
    .line 2536
    :catchall_0
    move-exception v0

    #@17
    monitor-exit v1

    #@18
    throw v0
.end method

.method public getFirmwareVersion()Ljava/lang/String;
    .locals 2

    #@0
    .prologue
    .line 2548
    sget-object v1, Lcom/android/server/wifi/WifiNative;->sLock:Ljava/lang/Object;

    #@2
    monitor-enter v1

    #@3
    .line 2549
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/wifi/WifiNative;->isHalStarted()Z

    #@6
    move-result v0

    #@7
    if-eqz v0, :cond_0

    #@9
    .line 2550
    sget v0, Lcom/android/server/wifi/WifiNative;->sWlan0Index:I

    #@b
    invoke-static {v0}, Lcom/android/server/wifi/WifiNative;->getFirmwareVersionNative(I)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@e
    move-result-object v0

    #@f
    monitor-exit v1

    #@10
    return-object v0

    #@11
    .line 2552
    :cond_0
    :try_start_1
    const-string/jumbo v0, ""
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@14
    monitor-exit v1

    #@15
    return-object v0

    #@16
    .line 2548
    :catchall_0
    move-exception v0

    #@17
    monitor-exit v1

    #@18
    throw v0
.end method

.method public getFreqCapability()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 339
    const-string/jumbo v0, "GET_CAPABILITY freq"

    #@3
    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiNative;->doStringCommand(Ljava/lang/String;)Ljava/lang/String;

    #@6
    move-result-object v0

    #@7
    return-object v0
.end method

.method public getFwMemoryDump()[B
    .locals 4

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 2610
    sget-object v2, Lcom/android/server/wifi/WifiNative;->sLock:Ljava/lang/Object;

    #@3
    monitor-enter v2

    #@4
    .line 2611
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/wifi/WifiNative;->isHalStarted()Z

    #@7
    move-result v1

    #@8
    if-eqz v1, :cond_1

    #@a
    .line 2612
    sget v1, Lcom/android/server/wifi/WifiNative;->sWlan0Index:I

    #@c
    invoke-static {v1}, Lcom/android/server/wifi/WifiNative;->getFwMemoryDumpNative(I)Z

    #@f
    move-result v1

    #@10
    if-eqz v1, :cond_0

    #@12
    .line 2613
    sget-object v0, Lcom/android/server/wifi/WifiNative;->mFwMemoryDump:[B

    #@14
    .line 2614
    .local v0, "fwMemoryDump":[B
    const/4 v1, 0x0

    #@15
    sput-object v1, Lcom/android/server/wifi/WifiNative;->mFwMemoryDump:[B
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@17
    monitor-exit v2

    #@18
    .line 2615
    return-object v0

    #@19
    .end local v0    # "fwMemoryDump":[B
    :cond_0
    monitor-exit v2

    #@1a
    .line 2617
    return-object v3

    #@1b
    :cond_1
    monitor-exit v2

    #@1c
    .line 2620
    return-object v3

    #@1d
    .line 2610
    :catchall_0
    move-exception v1

    #@1e
    monitor-exit v2

    #@1f
    throw v1
.end method

.method public getGroupCapability(Ljava/lang/String;)I
    .locals 9
    .param p1, "deviceAddress"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1365
    const/4 v1, 0x0

    #@1
    .line 1366
    .local v1, "gc":I
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@4
    move-result v6

    #@5
    if-eqz v6, :cond_0

    #@7
    return v1

    #@8
    .line 1367
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/WifiNative;->p2pPeer(Ljava/lang/String;)Ljava/lang/String;

    #@b
    move-result-object v3

    #@c
    .line 1368
    .local v3, "peerInfo":Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@f
    move-result v6

    #@10
    if-eqz v6, :cond_1

    #@12
    return v1

    #@13
    .line 1370
    :cond_1
    const-string/jumbo v6, "\n"

    #@16
    invoke-virtual {v3, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    #@19
    move-result-object v5

    #@1a
    .line 1371
    .local v5, "tokens":[Ljava/lang/String;
    const/4 v6, 0x0

    #@1b
    array-length v7, v5

    #@1c
    :goto_0
    if-ge v6, v7, :cond_2

    #@1e
    aget-object v4, v5, v6

    #@20
    .line 1372
    .local v4, "token":Ljava/lang/String;
    const-string/jumbo v8, "group_capab="

    #@23
    invoke-virtual {v4, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    #@26
    move-result v8

    #@27
    if-eqz v8, :cond_4

    #@29
    .line 1373
    const-string/jumbo v6, "="

    #@2c
    invoke-virtual {v4, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    #@2f
    move-result-object v2

    #@30
    .line 1374
    .local v2, "nameValue":[Ljava/lang/String;
    array-length v6, v2

    #@31
    const/4 v7, 0x2

    #@32
    if-eq v6, v7, :cond_3

    #@34
    .line 1382
    .end local v2    # "nameValue":[Ljava/lang/String;
    .end local v4    # "token":Ljava/lang/String;
    :cond_2
    return v1

    #@35
    .line 1376
    .restart local v2    # "nameValue":[Ljava/lang/String;
    .restart local v4    # "token":Ljava/lang/String;
    :cond_3
    const/4 v6, 0x1

    #@36
    :try_start_0
    aget-object v6, v2, v6

    #@38
    invoke-static {v6}, Ljava/lang/Integer;->decode(Ljava/lang/String;)Ljava/lang/Integer;

    #@3b
    move-result-object v6

    #@3c
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    #@3f
    move-result v6

    #@40
    return v6

    #@41
    .line 1377
    :catch_0
    move-exception v0

    #@42
    .line 1378
    .local v0, "e":Ljava/lang/NumberFormatException;
    return v1

    #@43
    .line 1371
    .end local v0    # "e":Ljava/lang/NumberFormatException;
    .end local v2    # "nameValue":[Ljava/lang/String;
    :cond_4
    add-int/lit8 v6, v6, 0x1

    #@45
    goto :goto_0
.end method

.method public getInterfaceName()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 163
    iget-object v0, p0, Lcom/android/server/wifi/WifiNative;->mInterfaceName:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getInterfaceName(I)Ljava/lang/String;
    .locals 2
    .param p1, "index"    # I

    #@0
    .prologue
    .line 1635
    sget-object v0, Lcom/android/server/wifi/WifiNative;->sLock:Ljava/lang/Object;

    #@2
    monitor-enter v0

    #@3
    .line 1636
    :try_start_0
    invoke-static {p1}, Lcom/android/server/wifi/WifiNative;->getInterfaceNameNative(I)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@6
    move-result-object v1

    #@7
    monitor-exit v0

    #@8
    return-object v1

    #@9
    .line 1635
    :catchall_0
    move-exception v1

    #@a
    monitor-exit v0

    #@b
    throw v1
.end method

.method public getLocalLog()Landroid/util/LocalLog;
    .locals 1

    #@0
    .prologue
    .line 110
    sget-object v0, Lcom/android/server/wifi/WifiNative;->sLocalLog:Landroid/util/LocalLog;

    #@2
    return-object v0
.end method

.method public getMacAddress()Ljava/lang/String;
    .locals 4

    #@0
    .prologue
    .line 561
    const-string/jumbo v2, "DRIVER MACADDR"

    #@3
    invoke-direct {p0, v2}, Lcom/android/server/wifi/WifiNative;->doStringCommand(Ljava/lang/String;)Ljava/lang/String;

    #@6
    move-result-object v0

    #@7
    .line 562
    .local v0, "ret":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@a
    move-result v2

    #@b
    if-nez v2, :cond_0

    #@d
    .line 563
    const-string/jumbo v2, " = "

    #@10
    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    #@13
    move-result-object v1

    #@14
    .line 564
    .local v1, "tokens":[Ljava/lang/String;
    array-length v2, v1

    #@15
    const/4 v3, 0x2

    #@16
    if-ne v2, v3, :cond_0

    #@18
    const/4 v2, 0x1

    #@19
    aget-object v2, v1, v2

    #@1b
    return-object v2

    #@1c
    .line 566
    .end local v1    # "tokens":[Ljava/lang/String;
    :cond_0
    const/4 v2, 0x0

    #@1d
    return-object v2
.end method

.method public getNetworkExtra(ILjava/lang/String;)Ljava/util/Map;
    .locals 13
    .param p1, "netId"    # I
    .param p2, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    const/4 v12, 0x0

    #@1
    .line 436
    invoke-virtual {p0, p1, p2}, Lcom/android/server/wifi/WifiNative;->getNetworkVariable(ILjava/lang/String;)Ljava/lang/String;

    #@4
    move-result-object v8

    #@5
    .line 437
    .local v8, "wrapped":Ljava/lang/String;
    if-eqz v8, :cond_1

    #@7
    const-string/jumbo v9, "\""

    #@a
    invoke-virtual {v8, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    #@d
    move-result v9

    #@e
    if-eqz v9, :cond_1

    #@10
    const-string/jumbo v9, "\""

    #@13
    invoke-virtual {v8, v9}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    #@16
    move-result v9

    #@17
    if-eqz v9, :cond_1

    #@19
    .line 441
    :try_start_0
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    #@1c
    move-result v9

    #@1d
    add-int/lit8 v9, v9, -0x1

    #@1f
    const/4 v10, 0x1

    #@20
    invoke-virtual {v8, v10, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@23
    move-result-object v2

    #@24
    .line 446
    .local v2, "encoded":Ljava/lang/String;
    new-instance v4, Lorg/json/JSONObject;

    #@26
    const-string/jumbo v9, "UTF-8"

    #@29
    invoke-static {v2, v9}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@2c
    move-result-object v9

    #@2d
    invoke-direct {v4, v9}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    #@30
    .line 447
    .local v4, "json":Lorg/json/JSONObject;
    new-instance v7, Ljava/util/HashMap;

    #@32
    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    #@35
    .line 448
    .local v7, "values":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual {v4}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    #@38
    move-result-object v3

    #@39
    .line 449
    .local v3, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<*>;"
    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    #@3c
    move-result v9

    #@3d
    if-eqz v9, :cond_2

    #@3f
    .line 450
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@42
    move-result-object v5

    #@43
    check-cast v5, Ljava/lang/String;

    #@45
    .line 451
    .local v5, "key":Ljava/lang/String;
    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    #@48
    move-result-object v6

    #@49
    .line 452
    .local v6, "value":Ljava/lang/Object;
    instance-of v9, v6, Ljava/lang/String;

    #@4b
    if-eqz v9, :cond_0

    #@4d
    .line 453
    check-cast v6, Ljava/lang/String;

    #@4f
    .end local v6    # "value":Ljava/lang/Object;
    invoke-interface {v7, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1

    #@52
    goto :goto_0

    #@53
    .line 457
    .end local v2    # "encoded":Ljava/lang/String;
    .end local v3    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<*>;"
    .end local v4    # "json":Lorg/json/JSONObject;
    .end local v5    # "key":Ljava/lang/String;
    .end local v7    # "values":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :catch_0
    move-exception v0

    #@54
    .line 458
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    const-string/jumbo v9, "WifiNative-HAL"

    #@57
    new-instance v10, Ljava/lang/StringBuilder;

    #@59
    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    #@5c
    const-string/jumbo v11, "Unable to deserialize networkExtra: "

    #@5f
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@62
    move-result-object v10

    #@63
    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->toString()Ljava/lang/String;

    #@66
    move-result-object v11

    #@67
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6a
    move-result-object v10

    #@6b
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@6e
    move-result-object v10

    #@6f
    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@72
    .line 459
    return-object v12

    #@73
    .line 438
    .end local v0    # "e":Ljava/io/UnsupportedEncodingException;
    :cond_1
    return-object v12

    #@74
    .line 456
    .restart local v2    # "encoded":Ljava/lang/String;
    .restart local v3    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<*>;"
    .restart local v4    # "json":Lorg/json/JSONObject;
    .restart local v7    # "values":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_2
    return-object v7

    #@75
    .line 460
    .end local v2    # "encoded":Ljava/lang/String;
    .end local v3    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<*>;"
    .end local v4    # "json":Lorg/json/JSONObject;
    .end local v7    # "values":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :catch_1
    move-exception v1

    #@76
    .line 464
    .local v1, "e":Lorg/json/JSONException;
    return-object v12
.end method

.method public getNetworkVariable(ILjava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "netId"    # I
    .param p2, "name"    # Ljava/lang/String;

    #@0
    .prologue
    .line 469
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_0

    #@6
    const/4 v0, 0x0

    #@7
    return-object v0

    #@8
    .line 472
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    #@a
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@d
    const-string/jumbo v1, "GET_NETWORK "

    #@10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@13
    move-result-object v0

    #@14
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@17
    move-result-object v0

    #@18
    const-string/jumbo v1, " "

    #@1b
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1e
    move-result-object v0

    #@1f
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@22
    move-result-object v0

    #@23
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@26
    move-result-object v0

    #@27
    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiNative;->doStringCommandWithoutLogging(Ljava/lang/String;)Ljava/lang/String;

    #@2a
    move-result-object v0

    #@2b
    return-object v0
.end method

.method public getNfcHandoverRequest()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 1507
    const-string/jumbo v0, "NFC_GET_HANDOVER_REQ NDEF P2P-CR"

    #@3
    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiNative;->doStringCommand(Ljava/lang/String;)Ljava/lang/String;

    #@6
    move-result-object v0

    #@7
    return-object v0
.end method

.method public getNfcHandoverSelect()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 1511
    const-string/jumbo v0, "NFC_GET_HANDOVER_SEL NDEF P2P-CR"

    #@3
    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiNative;->doStringCommand(Ljava/lang/String;)Ljava/lang/String;

    #@6
    move-result-object v0

    #@7
    return-object v0
.end method

.method public getNfcWpsConfigurationToken(I)Ljava/lang/String;
    .locals 2
    .param p1, "netId"    # I

    #@0
    .prologue
    .line 1503
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    const-string/jumbo v1, "WPS_NFC_CONFIG_TOKEN WPS "

    #@8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b
    move-result-object v0

    #@c
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@f
    move-result-object v0

    #@10
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@13
    move-result-object v0

    #@14
    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiNative;->doStringCommand(Ljava/lang/String;)Ljava/lang/String;

    #@17
    move-result-object v0

    #@18
    return-object v0
.end method

.method public getRingBufferData(Ljava/lang/String;)Z
    .locals 2
    .param p1, "ringName"    # Ljava/lang/String;

    #@0
    .prologue
    .line 2589
    sget-object v1, Lcom/android/server/wifi/WifiNative;->sLock:Ljava/lang/Object;

    #@2
    monitor-enter v1

    #@3
    .line 2590
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/wifi/WifiNative;->isHalStarted()Z

    #@6
    move-result v0

    #@7
    if-eqz v0, :cond_0

    #@9
    .line 2591
    sget v0, Lcom/android/server/wifi/WifiNative;->sWlan0Index:I

    #@b
    invoke-static {v0, p1}, Lcom/android/server/wifi/WifiNative;->getRingBufferDataNative(ILjava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@e
    move-result v0

    #@f
    monitor-exit v1

    #@10
    return v0

    #@11
    .line 2593
    :cond_0
    const/4 v0, 0x0

    #@12
    monitor-exit v1

    #@13
    return v0

    #@14
    .line 2589
    :catchall_0
    move-exception v0

    #@15
    monitor-exit v1

    #@16
    throw v0
.end method

.method public getRingBufferStatus()[Lcom/android/server/wifi/WifiNative$RingBufferStatus;
    .locals 2

    #@0
    .prologue
    .line 2578
    sget-object v1, Lcom/android/server/wifi/WifiNative;->sLock:Ljava/lang/Object;

    #@2
    monitor-enter v1

    #@3
    .line 2579
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/wifi/WifiNative;->isHalStarted()Z

    #@6
    move-result v0

    #@7
    if-eqz v0, :cond_0

    #@9
    .line 2580
    sget v0, Lcom/android/server/wifi/WifiNative;->sWlan0Index:I

    #@b
    invoke-static {v0}, Lcom/android/server/wifi/WifiNative;->getRingBufferStatusNative(I)[Lcom/android/server/wifi/WifiNative$RingBufferStatus;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@e
    move-result-object v0

    #@f
    monitor-exit v1

    #@10
    return-object v0

    #@11
    .line 2582
    :cond_0
    const/4 v0, 0x0

    #@12
    monitor-exit v1

    #@13
    return-object v0

    #@14
    .line 2578
    :catchall_0
    move-exception v0

    #@15
    monitor-exit v1

    #@16
    throw v0
.end method

.method public getRttCapabilities()Landroid/net/wifi/RttManager$RttCapabilities;
    .locals 2

    #@0
    .prologue
    .line 2334
    sget-object v1, Lcom/android/server/wifi/WifiNative;->sLock:Ljava/lang/Object;

    #@2
    monitor-enter v1

    #@3
    .line 2335
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/wifi/WifiNative;->isHalStarted()Z

    #@6
    move-result v0

    #@7
    if-eqz v0, :cond_0

    #@9
    .line 2336
    sget v0, Lcom/android/server/wifi/WifiNative;->sWlan0Index:I

    #@b
    invoke-static {v0}, Lcom/android/server/wifi/WifiNative;->getRttCapabilitiesNative(I)Landroid/net/wifi/RttManager$RttCapabilities;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@e
    move-result-object v0

    #@f
    monitor-exit v1

    #@10
    return-object v0

    #@11
    .line 2338
    :cond_0
    const/4 v0, 0x0

    #@12
    monitor-exit v1

    #@13
    return-object v0

    #@14
    .line 2334
    :catchall_0
    move-exception v0

    #@15
    monitor-exit v1

    #@16
    throw v0
.end method

.method public getRxPktFates([Lcom/android/server/wifi/WifiNative$RxFateReport;)Z
    .locals 6
    .param p1, "reportBufs"    # [Lcom/android/server/wifi/WifiNative$RxFateReport;

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    .line 2876
    sget-object v2, Lcom/android/server/wifi/WifiNative;->sLock:Ljava/lang/Object;

    #@3
    monitor-enter v2

    #@4
    .line 2877
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/wifi/WifiNative;->isHalStarted()Z

    #@7
    move-result v1

    #@8
    if-eqz v1, :cond_1

    #@a
    .line 2878
    sget v1, Lcom/android/server/wifi/WifiNative;->sWlan0Index:I

    #@c
    invoke-static {v1, p1}, Lcom/android/server/wifi/WifiNative;->getRxPktFatesNative(I[Lcom/android/server/wifi/WifiNative$RxFateReport;)I

    #@f
    move-result v0

    #@10
    .line 2879
    .local v0, "res":I
    if-eqz v0, :cond_0

    #@12
    .line 2880
    const-string/jumbo v1, "WifiNative-HAL"

    #@15
    new-instance v3, Ljava/lang/StringBuilder;

    #@17
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@1a
    const-string/jumbo v4, "getRxPktFatesNative returned "

    #@1d
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@20
    move-result-object v3

    #@21
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@24
    move-result-object v3

    #@25
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@28
    move-result-object v3

    #@29
    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@2c
    monitor-exit v2

    #@2d
    .line 2881
    return v5

    #@2e
    .line 2883
    :cond_0
    const/4 v1, 0x1

    #@2f
    monitor-exit v2

    #@30
    return v1

    #@31
    .end local v0    # "res":I
    :cond_1
    monitor-exit v2

    #@32
    .line 2886
    return v5

    #@33
    .line 2876
    :catchall_0
    move-exception v1

    #@34
    monitor-exit v2

    #@35
    throw v1
.end method

.method public getScanCapabilities(Lcom/android/server/wifi/WifiNative$ScanCapabilities;)Z
    .locals 2
    .param p1, "capabilities"    # Lcom/android/server/wifi/WifiNative$ScanCapabilities;

    #@0
    .prologue
    .line 1656
    sget-object v1, Lcom/android/server/wifi/WifiNative;->sLock:Ljava/lang/Object;

    #@2
    monitor-enter v1

    #@3
    .line 1657
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/wifi/WifiNative;->isHalStarted()Z

    #@6
    move-result v0

    #@7
    if-eqz v0, :cond_0

    #@9
    sget v0, Lcom/android/server/wifi/WifiNative;->sWlan0Index:I

    #@b
    invoke-static {v0, p1}, Lcom/android/server/wifi/WifiNative;->getScanCapabilitiesNative(ILcom/android/server/wifi/WifiNative$ScanCapabilities;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@e
    move-result v0

    #@f
    :goto_0
    monitor-exit v1

    #@10
    return v0

    #@11
    :cond_0
    const/4 v0, 0x0

    #@12
    goto :goto_0

    #@13
    .line 1656
    :catchall_0
    move-exception v0

    #@14
    monitor-exit v1

    #@15
    throw v0
.end method

.method public getScanResults()Ljava/util/ArrayList;
    .locals 32
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/wifi/ScanDetail;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 626
    const/16 v20, 0x0

    #@2
    .line 627
    .local v20, "next_sid":I
    new-instance v22, Ljava/util/ArrayList;

    #@4
    invoke-direct/range {v22 .. v22}, Ljava/util/ArrayList;-><init>()V

    #@7
    .line 628
    .local v22, "results":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wifi/ScanDetail;>;"
    :cond_0
    if-ltz v20, :cond_1

    #@9
    .line 629
    new-instance v25, Ljava/lang/StringBuilder;

    #@b
    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    #@e
    move-object/from16 v0, v25

    #@10
    move/from16 v1, v20

    #@12
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@15
    move-result-object v25

    #@16
    const-string/jumbo v26, "-"

    #@19
    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1c
    move-result-object v25

    #@1d
    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@20
    move-result-object v25

    #@21
    move-object/from16 v0, p0

    #@23
    move-object/from16 v1, v25

    #@25
    invoke-direct {v0, v1}, Lcom/android/server/wifi/WifiNative;->getRawScanResults(Ljava/lang/String;)Ljava/lang/String;

    #@28
    move-result-object v21

    #@29
    .line 630
    .local v21, "rawResult":Ljava/lang/String;
    const/16 v20, -0x1

    #@2b
    .line 632
    invoke-static/range {v21 .. v21}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@2e
    move-result v25

    #@2f
    if-eqz v25, :cond_2

    #@31
    .line 741
    .end local v21    # "rawResult":Ljava/lang/String;
    :cond_1
    return-object v22

    #@32
    .line 635
    .restart local v21    # "rawResult":Ljava/lang/String;
    :cond_2
    const-string/jumbo v25, "\n"

    #@35
    move-object/from16 v0, v21

    #@37
    move-object/from16 v1, v25

    #@39
    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    #@3c
    move-result-object v19

    #@3d
    .line 641
    .local v19, "lines":[Ljava/lang/String;
    const-string/jumbo v25, "bssid="

    #@40
    invoke-virtual/range {v25 .. v25}, Ljava/lang/String;->length()I

    #@43
    move-result v2

    #@44
    .line 642
    .local v2, "bssidStrLen":I
    const-string/jumbo v25, "flags="

    #@47
    invoke-virtual/range {v25 .. v25}, Ljava/lang/String;->length()I

    #@4a
    move-result v15

    #@4b
    .line 644
    .local v15, "flagLen":I
    const-string/jumbo v6, ""

    #@4e
    .line 645
    .local v6, "bssid":Ljava/lang/String;
    const/4 v8, 0x0

    #@4f
    .line 646
    .local v8, "level":I
    const/4 v9, 0x0

    #@50
    .line 647
    .local v9, "freq":I
    const-wide/16 v10, 0x0

    #@52
    .line 648
    .local v10, "tsf":J
    const-string/jumbo v7, ""

    #@55
    .line 649
    .local v7, "flags":Ljava/lang/String;
    const/4 v5, 0x0

    #@56
    .line 650
    .local v5, "wifiSsid":Landroid/net/wifi/WifiSsid;
    const/16 v17, 0x0

    #@58
    .line 651
    .local v17, "infoElementsStr":Ljava/lang/String;
    const/4 v13, 0x0

    #@59
    .line 653
    .local v13, "anqpLines":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/16 v25, 0x0

    #@5b
    move-object/from16 v0, v19

    #@5d
    array-length v0, v0

    #@5e
    move/from16 v26, v0

    #@60
    .end local v5    # "wifiSsid":Landroid/net/wifi/WifiSsid;
    .end local v6    # "bssid":Ljava/lang/String;
    .end local v13    # "anqpLines":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v17    # "infoElementsStr":Ljava/lang/String;
    :goto_0
    move/from16 v0, v25

    #@62
    move/from16 v1, v26

    #@64
    if-ge v0, v1, :cond_0

    #@66
    aget-object v18, v19, v25

    #@68
    .line 654
    .local v18, "line":Ljava/lang/String;
    const-string/jumbo v27, "id="

    #@6b
    move-object/from16 v0, v18

    #@6d
    move-object/from16 v1, v27

    #@6f
    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    #@72
    move-result v27

    #@73
    if-eqz v27, :cond_4

    #@75
    .line 656
    :try_start_0
    const-string/jumbo v27, "id="

    #@78
    invoke-virtual/range {v27 .. v27}, Ljava/lang/String;->length()I

    #@7b
    move-result v27

    #@7c
    move-object/from16 v0, v18

    #@7e
    move/from16 v1, v27

    #@80
    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    #@83
    move-result-object v27

    #@84
    invoke-static/range {v27 .. v27}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_4

    #@87
    move-result v27

    #@88
    add-int/lit8 v20, v27, 0x1

    #@8a
    .line 653
    :cond_3
    :goto_1
    add-int/lit8 v25, v25, 0x1

    #@8c
    goto :goto_0

    #@8d
    .line 660
    :cond_4
    const-string/jumbo v27, "bssid="

    #@90
    move-object/from16 v0, v18

    #@92
    move-object/from16 v1, v27

    #@94
    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    #@97
    move-result v27

    #@98
    if-eqz v27, :cond_5

    #@9a
    .line 661
    new-instance v6, Ljava/lang/String;

    #@9c
    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->getBytes()[B

    #@9f
    move-result-object v27

    #@a0
    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->length()I

    #@a3
    move-result v28

    #@a4
    sub-int v28, v28, v2

    #@a6
    move-object/from16 v0, v27

    #@a8
    move/from16 v1, v28

    #@aa
    invoke-direct {v6, v0, v2, v1}, Ljava/lang/String;-><init>([BII)V

    #@ad
    .restart local v6    # "bssid":Ljava/lang/String;
    goto :goto_1

    #@ae
    .line 662
    .end local v6    # "bssid":Ljava/lang/String;
    :cond_5
    const-string/jumbo v27, "freq="

    #@b1
    move-object/from16 v0, v18

    #@b3
    move-object/from16 v1, v27

    #@b5
    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    #@b8
    move-result v27

    #@b9
    if-eqz v27, :cond_6

    #@bb
    .line 664
    :try_start_1
    const-string/jumbo v27, "freq="

    #@be
    invoke-virtual/range {v27 .. v27}, Ljava/lang/String;->length()I

    #@c1
    move-result v27

    #@c2
    move-object/from16 v0, v18

    #@c4
    move/from16 v1, v27

    #@c6
    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    #@c9
    move-result-object v27

    #@ca
    invoke-static/range {v27 .. v27}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0

    #@cd
    move-result v9

    #@ce
    goto :goto_1

    #@cf
    .line 665
    :catch_0
    move-exception v14

    #@d0
    .line 666
    .local v14, "e":Ljava/lang/NumberFormatException;
    const/4 v9, 0x0

    #@d1
    goto :goto_1

    #@d2
    .line 668
    .end local v14    # "e":Ljava/lang/NumberFormatException;
    :cond_6
    const-string/jumbo v27, "level="

    #@d5
    move-object/from16 v0, v18

    #@d7
    move-object/from16 v1, v27

    #@d9
    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    #@dc
    move-result v27

    #@dd
    if-eqz v27, :cond_7

    #@df
    .line 670
    :try_start_2
    const-string/jumbo v27, "level="

    #@e2
    invoke-virtual/range {v27 .. v27}, Ljava/lang/String;->length()I

    #@e5
    move-result v27

    #@e6
    move-object/from16 v0, v18

    #@e8
    move/from16 v1, v27

    #@ea
    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    #@ed
    move-result-object v27

    #@ee
    invoke-static/range {v27 .. v27}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_1

    #@f1
    move-result v8

    #@f2
    .line 674
    if-lez v8, :cond_3

    #@f4
    add-int/lit16 v8, v8, -0x100

    #@f6
    goto :goto_1

    #@f7
    .line 675
    :catch_1
    move-exception v14

    #@f8
    .line 676
    .restart local v14    # "e":Ljava/lang/NumberFormatException;
    const/4 v8, 0x0

    #@f9
    goto :goto_1

    #@fa
    .line 678
    .end local v14    # "e":Ljava/lang/NumberFormatException;
    :cond_7
    const-string/jumbo v27, "tsf="

    #@fd
    move-object/from16 v0, v18

    #@ff
    move-object/from16 v1, v27

    #@101
    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    #@104
    move-result v27

    #@105
    if-eqz v27, :cond_8

    #@107
    .line 680
    :try_start_3
    const-string/jumbo v27, "tsf="

    #@10a
    invoke-virtual/range {v27 .. v27}, Ljava/lang/String;->length()I

    #@10d
    move-result v27

    #@10e
    move-object/from16 v0, v18

    #@110
    move/from16 v1, v27

    #@112
    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    #@115
    move-result-object v27

    #@116
    invoke-static/range {v27 .. v27}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_3
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_3} :catch_2

    #@119
    move-result-wide v10

    #@11a
    goto/16 :goto_1

    #@11c
    .line 681
    :catch_2
    move-exception v14

    #@11d
    .line 682
    .restart local v14    # "e":Ljava/lang/NumberFormatException;
    const-wide/16 v10, 0x0

    #@11f
    goto/16 :goto_1

    #@121
    .line 684
    .end local v14    # "e":Ljava/lang/NumberFormatException;
    :cond_8
    const-string/jumbo v27, "flags="

    #@124
    move-object/from16 v0, v18

    #@126
    move-object/from16 v1, v27

    #@128
    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    #@12b
    move-result v27

    #@12c
    if-eqz v27, :cond_9

    #@12e
    .line 685
    new-instance v7, Ljava/lang/String;

    #@130
    .end local v7    # "flags":Ljava/lang/String;
    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->getBytes()[B

    #@133
    move-result-object v27

    #@134
    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->length()I

    #@137
    move-result v28

    #@138
    sub-int v28, v28, v15

    #@13a
    move-object/from16 v0, v27

    #@13c
    move/from16 v1, v28

    #@13e
    invoke-direct {v7, v0, v15, v1}, Ljava/lang/String;-><init>([BII)V

    #@141
    .restart local v7    # "flags":Ljava/lang/String;
    goto/16 :goto_1

    #@143
    .line 686
    :cond_9
    const-string/jumbo v27, "ssid="

    #@146
    move-object/from16 v0, v18

    #@148
    move-object/from16 v1, v27

    #@14a
    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    #@14d
    move-result v27

    #@14e
    if-eqz v27, :cond_a

    #@150
    .line 688
    const-string/jumbo v27, "ssid="

    #@153
    invoke-virtual/range {v27 .. v27}, Ljava/lang/String;->length()I

    #@156
    move-result v27

    #@157
    move-object/from16 v0, v18

    #@159
    move/from16 v1, v27

    #@15b
    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    #@15e
    move-result-object v27

    #@15f
    .line 687
    invoke-static/range {v27 .. v27}, Landroid/net/wifi/WifiSsid;->createFromAsciiEncoded(Ljava/lang/String;)Landroid/net/wifi/WifiSsid;

    #@162
    move-result-object v5

    #@163
    .local v5, "wifiSsid":Landroid/net/wifi/WifiSsid;
    goto/16 :goto_1

    #@165
    .line 689
    .end local v5    # "wifiSsid":Landroid/net/wifi/WifiSsid;
    :cond_a
    const-string/jumbo v27, "ie="

    #@168
    move-object/from16 v0, v18

    #@16a
    move-object/from16 v1, v27

    #@16c
    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    #@16f
    move-result v27

    #@170
    if-eqz v27, :cond_b

    #@172
    .line 690
    move-object/from16 v17, v18

    #@174
    .local v17, "infoElementsStr":Ljava/lang/String;
    goto/16 :goto_1

    #@176
    .line 691
    .end local v17    # "infoElementsStr":Ljava/lang/String;
    :cond_b
    invoke-static/range {v18 .. v18}, Lcom/android/server/wifi/hotspot2/SupplicantBridge;->isAnqpAttribute(Ljava/lang/String;)Z

    #@179
    move-result v27

    #@17a
    if-eqz v27, :cond_d

    #@17c
    .line 692
    if-nez v13, :cond_c

    #@17e
    .line 693
    new-instance v13, Ljava/util/ArrayList;

    #@180
    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    #@183
    .line 695
    :cond_c
    move-object/from16 v0, v18

    #@185
    invoke-interface {v13, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@188
    goto/16 :goto_1

    #@18a
    .line 696
    :cond_d
    const-string/jumbo v27, "===="

    #@18d
    move-object/from16 v0, v18

    #@18f
    move-object/from16 v1, v27

    #@191
    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    #@194
    move-result v27

    #@195
    if-nez v27, :cond_e

    #@197
    const-string/jumbo v27, "####"

    #@19a
    move-object/from16 v0, v18

    #@19c
    move-object/from16 v1, v27

    #@19e
    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    #@1a1
    move-result v27

    #@1a2
    if-eqz v27, :cond_3

    #@1a4
    .line 697
    :cond_e
    if-eqz v6, :cond_f

    #@1a6
    .line 699
    if-nez v17, :cond_10

    #@1a8
    .line 700
    :try_start_4
    new-instance v27, Ljava/lang/IllegalArgumentException;

    #@1aa
    const-string/jumbo v28, "Null information element data"

    #@1ad
    invoke-direct/range {v27 .. v28}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@1b0
    throw v27
    :try_end_4
    .catch Ljava/lang/IllegalArgumentException; {:try_start_4 .. :try_end_4} :catch_3

    #@1b1
    .line 726
    :catch_3
    move-exception v16

    #@1b2
    .line 727
    .local v16, "iae":Ljava/lang/IllegalArgumentException;
    const-string/jumbo v27, "WifiNative-HAL"

    #@1b5
    new-instance v28, Ljava/lang/StringBuilder;

    #@1b7
    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    #@1ba
    const-string/jumbo v29, "Failed to parse information elements: "

    #@1bd
    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1c0
    move-result-object v28

    #@1c1
    move-object/from16 v0, v28

    #@1c3
    move-object/from16 v1, v16

    #@1c5
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@1c8
    move-result-object v28

    #@1c9
    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1cc
    move-result-object v28

    #@1cd
    invoke-static/range {v27 .. v28}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@1d0
    .line 730
    .end local v16    # "iae":Ljava/lang/IllegalArgumentException;
    :cond_f
    :goto_2
    const/4 v6, 0x0

    #@1d1
    .line 731
    .local v6, "bssid":Ljava/lang/String;
    const/4 v8, 0x0

    #@1d2
    .line 732
    const/4 v9, 0x0

    #@1d3
    .line 733
    const-wide/16 v10, 0x0

    #@1d5
    .line 734
    const-string/jumbo v7, ""

    #@1d8
    .line 735
    const/4 v5, 0x0

    #@1d9
    .line 736
    .local v5, "wifiSsid":Landroid/net/wifi/WifiSsid;
    const/16 v17, 0x0

    #@1db
    .line 737
    .local v17, "infoElementsStr":Ljava/lang/String;
    const/4 v13, 0x0

    #@1dc
    .restart local v13    # "anqpLines":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    goto/16 :goto_1

    #@1de
    .line 702
    .end local v5    # "wifiSsid":Landroid/net/wifi/WifiSsid;
    .end local v6    # "bssid":Ljava/lang/String;
    .end local v13    # "anqpLines":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v17    # "infoElementsStr":Ljava/lang/String;
    :cond_10
    const/16 v27, 0x3d

    #@1e0
    :try_start_5
    move-object/from16 v0, v17

    #@1e2
    move/from16 v1, v27

    #@1e4
    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    #@1e7
    move-result v23

    #@1e8
    .line 703
    .local v23, "seperator":I
    if-gez v23, :cond_11

    #@1ea
    .line 704
    new-instance v27, Ljava/lang/IllegalArgumentException;

    #@1ec
    const-string/jumbo v28, "No element separator"

    #@1ef
    invoke-direct/range {v27 .. v28}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@1f2
    throw v27

    #@1f3
    .line 709
    :cond_11
    add-int/lit8 v27, v23, 0x1

    #@1f5
    move-object/from16 v0, v17

    #@1f7
    move/from16 v1, v27

    #@1f9
    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    #@1fc
    move-result-object v27

    #@1fd
    invoke-static/range {v27 .. v27}, Lcom/android/server/wifi/hotspot2/Utils;->hexToBytes(Ljava/lang/String;)[B

    #@200
    move-result-object v27

    #@201
    .line 708
    invoke-static/range {v27 .. v27}, Lcom/android/server/wifi/util/InformationElementUtil;->parseInformationElements([B)[Landroid/net/wifi/ScanResult$InformationElement;

    #@204
    move-result-object v12

    #@205
    .line 711
    .local v12, "infoElements":[Landroid/net/wifi/ScanResult$InformationElement;
    new-instance v4, Lcom/android/server/wifi/hotspot2/NetworkDetail;

    #@207
    invoke-direct {v4, v6, v12, v13, v9}, Lcom/android/server/wifi/hotspot2/NetworkDetail;-><init>(Ljava/lang/String;[Landroid/net/wifi/ScanResult$InformationElement;Ljava/util/List;I)V

    #@20a
    .line 713
    .local v4, "networkDetail":Lcom/android/server/wifi/hotspot2/NetworkDetail;
    if-eqz v5, :cond_14

    #@20c
    invoke-virtual {v5}, Landroid/net/wifi/WifiSsid;->toString()Ljava/lang/String;

    #@20f
    move-result-object v24

    #@210
    .line 714
    .local v24, "xssid":Ljava/lang/String;
    :goto_3
    invoke-virtual {v4}, Lcom/android/server/wifi/hotspot2/NetworkDetail;->getTrimmedSSID()Ljava/lang/String;

    #@213
    move-result-object v27

    #@214
    move-object/from16 v0, v24

    #@216
    move-object/from16 v1, v27

    #@218
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@21b
    move-result v27

    #@21c
    if-nez v27, :cond_12

    #@21e
    .line 715
    const-string/jumbo v27, "WifiNative-HAL"

    #@221
    .line 716
    const-string/jumbo v28, "Inconsistent SSID on BSSID \'%s\': \'%s\' vs \'%s\': %s"

    #@224
    .line 715
    const/16 v29, 0x4

    #@226
    move/from16 v0, v29

    #@228
    new-array v0, v0, [Ljava/lang/Object;

    #@22a
    move-object/from16 v29, v0

    #@22c
    .line 717
    const/16 v30, 0x0

    #@22e
    aput-object v6, v29, v30

    #@230
    const/16 v30, 0x1

    #@232
    aput-object v24, v29, v30

    #@234
    invoke-virtual {v4}, Lcom/android/server/wifi/hotspot2/NetworkDetail;->getSSID()Ljava/lang/String;

    #@237
    move-result-object v30

    #@238
    const/16 v31, 0x2

    #@23a
    aput-object v30, v29, v31

    #@23c
    const/16 v30, 0x3

    #@23e
    aput-object v17, v29, v30

    #@240
    .line 715
    invoke-static/range {v28 .. v29}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@243
    move-result-object v28

    #@244
    invoke-static/range {v27 .. v28}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@247
    .line 720
    :cond_12
    invoke-virtual {v4}, Lcom/android/server/wifi/hotspot2/NetworkDetail;->hasInterworking()Z

    #@24a
    move-result v27

    #@24b
    if-eqz v27, :cond_13

    #@24d
    .line 721
    sget-boolean v27, Lcom/android/server/wifi/WifiNative;->DBG:Z

    #@24f
    if-eqz v27, :cond_13

    #@251
    const-string/jumbo v27, "WifiNative-HAL"

    #@254
    new-instance v28, Ljava/lang/StringBuilder;

    #@256
    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    #@259
    const-string/jumbo v29, "HSNwk: \'"

    #@25c
    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@25f
    move-result-object v28

    #@260
    move-object/from16 v0, v28

    #@262
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@265
    move-result-object v28

    #@266
    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@269
    move-result-object v28

    #@26a
    invoke-static/range {v27 .. v28}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@26d
    .line 723
    :cond_13
    new-instance v3, Lcom/android/server/wifi/ScanDetail;

    #@26f
    invoke-direct/range {v3 .. v13}, Lcom/android/server/wifi/ScanDetail;-><init>(Lcom/android/server/wifi/hotspot2/NetworkDetail;Landroid/net/wifi/WifiSsid;Ljava/lang/String;Ljava/lang/String;IIJ[Landroid/net/wifi/ScanResult$InformationElement;Ljava/util/List;)V

    #@272
    .line 725
    .local v3, "scan":Lcom/android/server/wifi/ScanDetail;
    move-object/from16 v0, v22

    #@274
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@277
    goto/16 :goto_2

    #@279
    .line 713
    .end local v3    # "scan":Lcom/android/server/wifi/ScanDetail;
    .end local v24    # "xssid":Ljava/lang/String;
    :cond_14
    const-string/jumbo v24, "<unknown ssid>"
    :try_end_5
    .catch Ljava/lang/IllegalArgumentException; {:try_start_5 .. :try_end_5} :catch_3

    #@27c
    .restart local v24    # "xssid":Ljava/lang/String;
    goto :goto_3

    #@27d
    .line 657
    .end local v4    # "networkDetail":Lcom/android/server/wifi/hotspot2/NetworkDetail;
    .end local v12    # "infoElements":[Landroid/net/wifi/ScanResult$InformationElement;
    .end local v23    # "seperator":I
    .end local v24    # "xssid":Ljava/lang/String;
    :catch_4
    move-exception v14

    #@27e
    .restart local v14    # "e":Ljava/lang/NumberFormatException;
    goto/16 :goto_1
.end method

.method public getScanResults(Z)[Landroid/net/wifi/WifiScanner$ScanData;
    .locals 3
    .param p1, "flush"    # Z

    #@0
    .prologue
    .line 1991
    sget-object v2, Lcom/android/server/wifi/WifiNative;->sLock:Ljava/lang/Object;

    #@2
    monitor-enter v2

    #@3
    .line 1992
    const/4 v0, 0x0

    #@4
    .line 1993
    .local v0, "sd":[Landroid/net/wifi/WifiScanner$ScanData;
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/wifi/WifiNative;->isHalStarted()Z

    #@7
    move-result v1

    #@8
    if-eqz v1, :cond_0

    #@a
    .line 1994
    sget v1, Lcom/android/server/wifi/WifiNative;->sWlan0Index:I

    #@c
    invoke-static {v1, p1}, Lcom/android/server/wifi/WifiNative;->getScanResultsNative(IZ)[Landroid/net/wifi/WifiScanner$ScanData;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@f
    move-result-object v0

    #@10
    .line 1997
    .end local v0    # "sd":[Landroid/net/wifi/WifiScanner$ScanData;
    :cond_0
    if-eqz v0, :cond_1

    #@12
    monitor-exit v2

    #@13
    .line 1998
    return-object v0

    #@14
    .line 2000
    :cond_1
    const/4 v1, 0x0

    #@15
    :try_start_1
    new-array v1, v1, [Landroid/net/wifi/WifiScanner$ScanData;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@17
    monitor-exit v2

    #@18
    return-object v1

    #@19
    .line 1991
    :catchall_0
    move-exception v1

    #@1a
    monitor-exit v2

    #@1b
    throw v1
.end method

.method public getSupportedFeatureSet()I
    .locals 3

    #@0
    .prologue
    .line 2156
    sget-object v1, Lcom/android/server/wifi/WifiNative;->sLock:Ljava/lang/Object;

    #@2
    monitor-enter v1

    #@3
    .line 2157
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/wifi/WifiNative;->isHalStarted()Z

    #@6
    move-result v0

    #@7
    if-eqz v0, :cond_0

    #@9
    .line 2158
    sget v0, Lcom/android/server/wifi/WifiNative;->sWlan0Index:I

    #@b
    invoke-static {v0}, Lcom/android/server/wifi/WifiNative;->getSupportedFeatureSetNative(I)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@e
    move-result v0

    #@f
    monitor-exit v1

    #@10
    return v0

    #@11
    .line 2160
    :cond_0
    :try_start_1
    const-string/jumbo v0, "WifiNative-HAL"

    #@14
    const-string/jumbo v2, "Failing getSupportedFeatureset because HAL isn\'t started"

    #@17
    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@1a
    .line 2161
    const/4 v0, 0x0

    #@1b
    monitor-exit v1

    #@1c
    return v0

    #@1d
    .line 2156
    :catchall_0
    move-exception v0

    #@1e
    monitor-exit v1

    #@1f
    throw v0
.end method

.method public getSupportedLoggerFeatureSet()I
    .locals 2

    #@0
    .prologue
    .line 2504
    sget-object v1, Lcom/android/server/wifi/WifiNative;->sLock:Ljava/lang/Object;

    #@2
    monitor-enter v1

    #@3
    .line 2505
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/wifi/WifiNative;->isHalStarted()Z

    #@6
    move-result v0

    #@7
    if-eqz v0, :cond_0

    #@9
    .line 2506
    sget v0, Lcom/android/server/wifi/WifiNative;->sWlan0Index:I

    #@b
    invoke-static {v0}, Lcom/android/server/wifi/WifiNative;->getSupportedLoggerFeatureSetNative(I)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@e
    move-result v0

    #@f
    monitor-exit v1

    #@10
    return v0

    #@11
    .line 2508
    :cond_0
    const/4 v0, 0x0

    #@12
    monitor-exit v1

    #@13
    return v0

    #@14
    .line 2504
    :catchall_0
    move-exception v0

    #@15
    monitor-exit v1

    #@16
    throw v0
.end method

.method public getTdlsCapabilities()Lcom/android/server/wifi/WifiNative$TdlsCapabilities;
    .locals 2

    #@0
    .prologue
    .line 2425
    sget-object v1, Lcom/android/server/wifi/WifiNative;->sLock:Ljava/lang/Object;

    #@2
    monitor-enter v1

    #@3
    .line 2426
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/wifi/WifiNative;->isHalStarted()Z

    #@6
    move-result v0

    #@7
    if-eqz v0, :cond_0

    #@9
    .line 2427
    sget v0, Lcom/android/server/wifi/WifiNative;->sWlan0Index:I

    #@b
    invoke-static {v0}, Lcom/android/server/wifi/WifiNative;->getTdlsCapabilitiesNative(I)Lcom/android/server/wifi/WifiNative$TdlsCapabilities;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@e
    move-result-object v0

    #@f
    monitor-exit v1

    #@10
    return-object v0

    #@11
    .line 2429
    :cond_0
    const/4 v0, 0x0

    #@12
    monitor-exit v1

    #@13
    return-object v0

    #@14
    .line 2425
    :catchall_0
    move-exception v0

    #@15
    monitor-exit v1

    #@16
    throw v0
.end method

.method public getTdlsStatus(Ljava/lang/String;)Lcom/android/server/wifi/WifiNative$TdlsStatus;
    .locals 2
    .param p1, "macAdd"    # Ljava/lang/String;

    #@0
    .prologue
    .line 2402
    sget-object v1, Lcom/android/server/wifi/WifiNative;->sLock:Ljava/lang/Object;

    #@2
    monitor-enter v1

    #@3
    .line 2403
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/wifi/WifiNative;->isHalStarted()Z

    #@6
    move-result v0

    #@7
    if-eqz v0, :cond_0

    #@9
    .line 2404
    sget v0, Lcom/android/server/wifi/WifiNative;->sWlan0Index:I

    #@b
    invoke-static {v0, p1}, Lcom/android/server/wifi/WifiNative;->getTdlsStatusNative(ILjava/lang/String;)Lcom/android/server/wifi/WifiNative$TdlsStatus;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@e
    move-result-object v0

    #@f
    monitor-exit v1

    #@10
    return-object v0

    #@11
    .line 2406
    :cond_0
    const/4 v0, 0x0

    #@12
    monitor-exit v1

    #@13
    return-object v0

    #@14
    .line 2402
    :catchall_0
    move-exception v0

    #@15
    monitor-exit v1

    #@16
    throw v0
.end method

.method public getTxPktFates([Lcom/android/server/wifi/WifiNative$TxFateReport;)Z
    .locals 6
    .param p1, "reportBufs"    # [Lcom/android/server/wifi/WifiNative$TxFateReport;

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    .line 2856
    sget-object v2, Lcom/android/server/wifi/WifiNative;->sLock:Ljava/lang/Object;

    #@3
    monitor-enter v2

    #@4
    .line 2857
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/wifi/WifiNative;->isHalStarted()Z

    #@7
    move-result v1

    #@8
    if-eqz v1, :cond_1

    #@a
    .line 2858
    sget v1, Lcom/android/server/wifi/WifiNative;->sWlan0Index:I

    #@c
    invoke-static {v1, p1}, Lcom/android/server/wifi/WifiNative;->getTxPktFatesNative(I[Lcom/android/server/wifi/WifiNative$TxFateReport;)I

    #@f
    move-result v0

    #@10
    .line 2859
    .local v0, "res":I
    if-eqz v0, :cond_0

    #@12
    .line 2860
    const-string/jumbo v1, "WifiNative-HAL"

    #@15
    new-instance v3, Ljava/lang/StringBuilder;

    #@17
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@1a
    const-string/jumbo v4, "getTxPktFatesNative returned "

    #@1d
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@20
    move-result-object v3

    #@21
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@24
    move-result-object v3

    #@25
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@28
    move-result-object v3

    #@29
    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@2c
    monitor-exit v2

    #@2d
    .line 2861
    return v5

    #@2e
    .line 2863
    :cond_0
    const/4 v1, 0x1

    #@2f
    monitor-exit v2

    #@30
    return v1

    #@31
    .end local v0    # "res":I
    :cond_1
    monitor-exit v2

    #@32
    .line 2866
    return v5

    #@33
    .line 2856
    :catchall_0
    move-exception v1

    #@34
    monitor-exit v2

    #@35
    throw v1
.end method

.method public getWifiLinkLayerStats(Ljava/lang/String;)Landroid/net/wifi/WifiLinkLayerStats;
    .locals 3
    .param p1, "iface"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 2135
    if-nez p1, :cond_0

    #@3
    return-object v2

    #@4
    .line 2136
    :cond_0
    sget-object v1, Lcom/android/server/wifi/WifiNative;->sLock:Ljava/lang/Object;

    #@6
    monitor-enter v1

    #@7
    .line 2137
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/wifi/WifiNative;->isHalStarted()Z

    #@a
    move-result v0

    #@b
    if-eqz v0, :cond_1

    #@d
    .line 2138
    sget v0, Lcom/android/server/wifi/WifiNative;->sWlan0Index:I

    #@f
    invoke-static {v0}, Lcom/android/server/wifi/WifiNative;->getWifiLinkLayerStatsNative(I)Landroid/net/wifi/WifiLinkLayerStats;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@12
    move-result-object v0

    #@13
    monitor-exit v1

    #@14
    return-object v0

    #@15
    :cond_1
    monitor-exit v1

    #@16
    .line 2140
    return-object v2

    #@17
    .line 2136
    :catchall_0
    move-exception v0

    #@18
    monitor-exit v1

    #@19
    throw v0
.end method

.method public getWlanWakeReasonCount()Landroid/net/wifi/WifiWakeReasonAndCounts;
    .locals 3

    #@0
    .prologue
    .line 3104
    const-string/jumbo v0, "WifiNative-HAL"

    #@3
    new-instance v1, Ljava/lang/StringBuilder;

    #@5
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@8
    const-string/jumbo v2, "getWlanWakeReasonCount "

    #@b
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@e
    move-result-object v1

    #@f
    sget v2, Lcom/android/server/wifi/WifiNative;->sWlan0Index:I

    #@11
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@14
    move-result-object v1

    #@15
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@18
    move-result-object v1

    #@19
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@1c
    .line 3105
    sget-object v1, Lcom/android/server/wifi/WifiNative;->sLock:Ljava/lang/Object;

    #@1e
    monitor-enter v1

    #@1f
    .line 3106
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/wifi/WifiNative;->isHalStarted()Z

    #@22
    move-result v0

    #@23
    if-eqz v0, :cond_0

    #@25
    .line 3107
    sget v0, Lcom/android/server/wifi/WifiNative;->sWlan0Index:I

    #@27
    invoke-static {v0}, Lcom/android/server/wifi/WifiNative;->getWlanWakeReasonCountNative(I)Landroid/net/wifi/WifiWakeReasonAndCounts;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@2a
    move-result-object v0

    #@2b
    monitor-exit v1

    #@2c
    return-object v0

    #@2d
    .line 3109
    :cond_0
    const/4 v0, 0x0

    #@2e
    monitor-exit v1

    #@2f
    return-object v0

    #@30
    .line 3105
    :catchall_0
    move-exception v0

    #@31
    monitor-exit v1

    #@32
    throw v0
.end method

.method public initContext(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    #@0
    .prologue
    .line 145
    iget-object v0, p0, Lcom/android/server/wifi/WifiNative;->mContext:Landroid/content/Context;

    #@2
    if-nez v0, :cond_0

    #@4
    if-eqz p1, :cond_0

    #@6
    .line 146
    iput-object p1, p0, Lcom/android/server/wifi/WifiNative;->mContext:Landroid/content/Context;

    #@8
    .line 144
    :cond_0
    return-void
.end method

.method public initiatorReportNfcHandover(Ljava/lang/String;)Z
    .locals 2
    .param p1, "selectMessage"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1515
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    const-string/jumbo v1, "NFC_REPORT_HANDOVER INIT P2P 00 "

    #@8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b
    move-result-object v0

    #@c
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@f
    move-result-object v0

    #@10
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@13
    move-result-object v0

    #@14
    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiNative;->doBooleanCommand(Ljava/lang/String;)Z

    #@17
    move-result v0

    #@18
    return v0
.end method

.method public installPacketFilter([B)Z
    .locals 2
    .param p1, "filter"    # [B

    #@0
    .prologue
    .line 2356
    sget-object v1, Lcom/android/server/wifi/WifiNative;->sLock:Ljava/lang/Object;

    #@2
    monitor-enter v1

    #@3
    .line 2357
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/wifi/WifiNative;->isHalStarted()Z

    #@6
    move-result v0

    #@7
    if-eqz v0, :cond_0

    #@9
    .line 2358
    sget v0, Lcom/android/server/wifi/WifiNative;->sWlan0Index:I

    #@b
    invoke-static {v0, p1}, Lcom/android/server/wifi/WifiNative;->installPacketFilterNative(I[B)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@e
    move-result v0

    #@f
    monitor-exit v1

    #@10
    return v0

    #@11
    .line 2360
    :cond_0
    const/4 v0, 0x0

    #@12
    monitor-exit v1

    #@13
    return v0

    #@14
    .line 2356
    :catchall_0
    move-exception v0

    #@15
    monitor-exit v1

    #@16
    throw v0
.end method

.method public isDriverLoaded()Z
    .locals 2

    #@0
    .prologue
    .line 193
    sget-object v0, Lcom/android/server/wifi/WifiNative;->sLock:Ljava/lang/Object;

    #@2
    monitor-enter v0

    #@3
    .line 194
    :try_start_0
    invoke-static {}, Lcom/android/server/wifi/WifiNative;->isDriverLoadedNative()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@6
    move-result v1

    #@7
    monitor-exit v0

    #@8
    return v1

    #@9
    .line 193
    :catchall_0
    move-exception v1

    #@a
    monitor-exit v0

    #@b
    throw v1
.end method

.method public isGetChannelsForBandSupported()Z
    .locals 2

    #@0
    .prologue
    .line 2301
    sget-object v1, Lcom/android/server/wifi/WifiNative;->sLock:Ljava/lang/Object;

    #@2
    monitor-enter v1

    #@3
    .line 2302
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/wifi/WifiNative;->isHalStarted()Z

    #@6
    move-result v0

    #@7
    if-eqz v0, :cond_0

    #@9
    .line 2303
    invoke-static {}, Lcom/android/server/wifi/WifiNative;->isGetChannelsForBandSupportedNative()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@c
    move-result v0

    #@d
    monitor-exit v1

    #@e
    return v0

    #@f
    .line 2305
    :cond_0
    const/4 v0, 0x0

    #@10
    monitor-exit v1

    #@11
    return v0

    #@12
    .line 2301
    :catchall_0
    move-exception v0

    #@13
    monitor-exit v1

    #@14
    throw v0
.end method

.method public isHalStarted()Z
    .locals 4

    #@0
    .prologue
    .line 1614
    sget-wide v0, Lcom/android/server/wifi/WifiNative;->sWifiHalHandle:J

    #@2
    const-wide/16 v2, 0x0

    #@4
    cmp-long v0, v0, v2

    #@6
    if-eqz v0, :cond_0

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

.method public killSupplicant(Z)Z
    .locals 2
    .param p1, "p2pSupported"    # Z

    #@0
    .prologue
    .line 216
    sget-object v0, Lcom/android/server/wifi/WifiNative;->sLock:Ljava/lang/Object;

    #@2
    monitor-enter v0

    #@3
    .line 217
    :try_start_0
    invoke-static {p1}, Lcom/android/server/wifi/WifiNative;->killSupplicantNative(Z)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@6
    move-result v1

    #@7
    monitor-exit v0

    #@8
    return v1

    #@9
    .line 216
    :catchall_0
    move-exception v1

    #@a
    monitor-exit v0

    #@b
    throw v1
.end method

.method public listNetworks()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 400
    const-string/jumbo v0, "LIST_NETWORKS"

    #@3
    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiNative;->doStringCommand(Ljava/lang/String;)Ljava/lang/String;

    #@6
    move-result-object v0

    #@7
    return-object v0
.end method

.method public listNetworks(I)Ljava/lang/String;
    .locals 2
    .param p1, "last_id"    # I

    #@0
    .prologue
    .line 404
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    const-string/jumbo v1, "LIST_NETWORKS LAST_ID="

    #@8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b
    move-result-object v0

    #@c
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@f
    move-result-object v0

    #@10
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@13
    move-result-object v0

    #@14
    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiNative;->doStringCommand(Ljava/lang/String;)Ljava/lang/String;

    #@17
    move-result-object v0

    #@18
    return-object v0
.end method

.method public loadDriver()Z
    .locals 2

    #@0
    .prologue
    .line 186
    sget-object v0, Lcom/android/server/wifi/WifiNative;->sLock:Ljava/lang/Object;

    #@2
    monitor-enter v0

    #@3
    .line 187
    :try_start_0
    invoke-static {}, Lcom/android/server/wifi/WifiNative;->loadDriverNative()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@6
    move-result v1

    #@7
    monitor-exit v0

    #@8
    return v1

    #@9
    .line 186
    :catchall_0
    move-exception v1

    #@a
    monitor-exit v0

    #@b
    throw v1
.end method

.method public p2pCancelConnect()Z
    .locals 1

    #@0
    .prologue
    .line 1269
    const-string/jumbo v0, "P2P_CANCEL"

    #@3
    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiNative;->doBooleanCommand(Ljava/lang/String;)Z

    #@6
    move-result v0

    #@7
    return v0
.end method

.method public p2pConnect(Landroid/net/wifi/p2p/WifiP2pConfig;Z)Ljava/lang/String;
    .locals 8
    .param p1, "config"    # Landroid/net/wifi/p2p/WifiP2pConfig;
    .param p2, "joinExistingGroup"    # Z

    #@0
    .prologue
    const/4 v6, 0x0

    #@1
    .line 1218
    if-nez p1, :cond_0

    #@3
    return-object v6

    #@4
    .line 1219
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    #@6
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@9
    .line 1220
    .local v0, "args":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v5, p1, Landroid/net/wifi/p2p/WifiP2pConfig;->wps:Landroid/net/wifi/WpsInfo;

    #@b
    .line 1221
    .local v5, "wps":Landroid/net/wifi/WpsInfo;
    iget-object v6, p1, Landroid/net/wifi/p2p/WifiP2pConfig;->deviceAddress:Ljava/lang/String;

    #@d
    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@10
    .line 1223
    iget v6, v5, Landroid/net/wifi/WpsInfo;->setup:I

    #@12
    packed-switch v6, :pswitch_data_0

    #@15
    .line 1246
    :goto_0
    iget v6, p1, Landroid/net/wifi/p2p/WifiP2pConfig;->netId:I

    #@17
    const/4 v7, -0x2

    #@18
    if-ne v6, v7, :cond_1

    #@1a
    .line 1247
    const-string/jumbo v6, "persistent"

    #@1d
    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@20
    .line 1250
    :cond_1
    if-eqz p2, :cond_3

    #@22
    .line 1251
    const-string/jumbo v6, "join"

    #@25
    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@28
    .line 1262
    :goto_1
    const-string/jumbo v1, "P2P_CONNECT "

    #@2b
    .line 1263
    .local v1, "command":Ljava/lang/String;
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@2e
    move-result-object v4

    #@2f
    .local v4, "s$iterator":Ljava/util/Iterator;
    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    #@32
    move-result v6

    #@33
    if-eqz v6, :cond_6

    #@35
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@38
    move-result-object v3

    #@39
    check-cast v3, Ljava/lang/String;

    #@3b
    .local v3, "s":Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuilder;

    #@3d
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@40
    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@43
    move-result-object v6

    #@44
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@47
    move-result-object v6

    #@48
    const-string/jumbo v7, " "

    #@4b
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4e
    move-result-object v6

    #@4f
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@52
    move-result-object v1

    #@53
    goto :goto_2

    #@54
    .line 1225
    .end local v1    # "command":Ljava/lang/String;
    .end local v3    # "s":Ljava/lang/String;
    .end local v4    # "s$iterator":Ljava/util/Iterator;
    :pswitch_0
    const-string/jumbo v6, "pbc"

    #@57
    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@5a
    goto :goto_0

    #@5b
    .line 1228
    :pswitch_1
    iget-object v6, v5, Landroid/net/wifi/WpsInfo;->pin:Ljava/lang/String;

    #@5d
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@60
    move-result v6

    #@61
    if-eqz v6, :cond_2

    #@63
    .line 1229
    const-string/jumbo v6, "pin"

    #@66
    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@69
    .line 1233
    :goto_3
    const-string/jumbo v6, "display"

    #@6c
    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@6f
    goto :goto_0

    #@70
    .line 1231
    :cond_2
    iget-object v6, v5, Landroid/net/wifi/WpsInfo;->pin:Ljava/lang/String;

    #@72
    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@75
    goto :goto_3

    #@76
    .line 1236
    :pswitch_2
    iget-object v6, v5, Landroid/net/wifi/WpsInfo;->pin:Ljava/lang/String;

    #@78
    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@7b
    .line 1237
    const-string/jumbo v6, "keypad"

    #@7e
    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@81
    goto :goto_0

    #@82
    .line 1240
    :pswitch_3
    iget-object v6, v5, Landroid/net/wifi/WpsInfo;->pin:Ljava/lang/String;

    #@84
    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@87
    .line 1241
    const-string/jumbo v6, "label"

    #@8a
    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@8d
    goto :goto_0

    #@8e
    .line 1255
    :cond_3
    iget v2, p1, Landroid/net/wifi/p2p/WifiP2pConfig;->groupOwnerIntent:I

    #@90
    .line 1256
    .local v2, "groupOwnerIntent":I
    if-ltz v2, :cond_4

    #@92
    const/16 v6, 0xf

    #@94
    if-le v2, v6, :cond_5

    #@96
    .line 1257
    :cond_4
    const/4 v2, 0x6

    #@97
    .line 1259
    :cond_5
    new-instance v6, Ljava/lang/StringBuilder;

    #@99
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@9c
    const-string/jumbo v7, "go_intent="

    #@9f
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a2
    move-result-object v6

    #@a3
    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@a6
    move-result-object v6

    #@a7
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@aa
    move-result-object v6

    #@ab
    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@ae
    goto/16 :goto_1

    #@b0
    .line 1265
    .end local v2    # "groupOwnerIntent":I
    .restart local v1    # "command":Ljava/lang/String;
    .restart local v4    # "s$iterator":Ljava/util/Iterator;
    :cond_6
    invoke-direct {p0, v1}, Lcom/android/server/wifi/WifiNative;->doStringCommand(Ljava/lang/String;)Ljava/lang/String;

    #@b3
    move-result-object v6

    #@b4
    return-object v6

    #@b5
    .line 1223
    nop

    #@b6
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public p2pExtListen(ZII)Z
    .locals 3
    .param p1, "enable"    # Z
    .param p2, "period"    # I
    .param p3, "interval"    # I

    #@0
    .prologue
    .line 1179
    if-eqz p1, :cond_0

    #@2
    if-ge p3, p2, :cond_0

    #@4
    .line 1180
    const/4 v0, 0x0

    #@5
    return v0

    #@6
    .line 1182
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    #@8
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@b
    const-string/jumbo v1, "P2P_EXT_LISTEN"

    #@e
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@11
    move-result-object v1

    #@12
    .line 1183
    if-eqz p1, :cond_1

    #@14
    new-instance v0, Ljava/lang/StringBuilder;

    #@16
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@19
    const-string/jumbo v2, " "

    #@1c
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1f
    move-result-object v0

    #@20
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@23
    move-result-object v0

    #@24
    const-string/jumbo v2, " "

    #@27
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2a
    move-result-object v0

    #@2b
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@2e
    move-result-object v0

    #@2f
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@32
    move-result-object v0

    #@33
    .line 1182
    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@36
    move-result-object v0

    #@37
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3a
    move-result-object v0

    #@3b
    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiNative;->doBooleanCommand(Ljava/lang/String;)Z

    #@3e
    move-result v0

    #@3f
    return v0

    #@40
    .line 1183
    :cond_1
    const-string/jumbo v0, ""

    #@43
    goto :goto_0
.end method

.method public p2pFind()Z
    .locals 1

    #@0
    .prologue
    .line 1153
    const-string/jumbo v0, "P2P_FIND"

    #@3
    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiNative;->doBooleanCommand(Ljava/lang/String;)Z

    #@6
    move-result v0

    #@7
    return v0
.end method

.method public p2pFind(I)Z
    .locals 2
    .param p1, "timeout"    # I

    #@0
    .prologue
    .line 1157
    if-gtz p1, :cond_0

    #@2
    .line 1158
    invoke-virtual {p0}, Lcom/android/server/wifi/WifiNative;->p2pFind()Z

    #@5
    move-result v0

    #@6
    return v0

    #@7
    .line 1160
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    #@9
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@c
    const-string/jumbo v1, "P2P_FIND "

    #@f
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@12
    move-result-object v0

    #@13
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@16
    move-result-object v0

    #@17
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1a
    move-result-object v0

    #@1b
    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiNative;->doBooleanCommand(Ljava/lang/String;)Z

    #@1e
    move-result v0

    #@1f
    return v0
.end method

.method public p2pFlush()Z
    .locals 1

    #@0
    .prologue
    .line 1211
    const-string/jumbo v0, "P2P_FLUSH"

    #@3
    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiNative;->doBooleanCommand(Ljava/lang/String;)Z

    #@6
    move-result v0

    #@7
    return v0
.end method

.method public p2pGetDeviceAddress()Ljava/lang/String;
    .locals 9

    #@0
    .prologue
    .line 1336
    const-string/jumbo v5, "WifiNative-HAL"

    #@3
    const-string/jumbo v6, "p2pGetDeviceAddress"

    #@6
    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@9
    .line 1338
    const/4 v2, 0x0

    #@a
    .line 1343
    .local v2, "status":Ljava/lang/String;
    sget-object v6, Lcom/android/server/wifi/WifiNative;->sLock:Ljava/lang/Object;

    #@c
    monitor-enter v6

    #@d
    .line 1344
    :try_start_0
    const-string/jumbo v5, "STATUS"

    #@10
    invoke-direct {p0, v5}, Lcom/android/server/wifi/WifiNative;->doStringCommandNative(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@13
    move-result-object v2

    #@14
    .local v2, "status":Ljava/lang/String;
    monitor-exit v6

    #@15
    .line 1347
    const-string/jumbo v1, ""

    #@18
    .line 1348
    .local v1, "result":Ljava/lang/String;
    if-eqz v2, :cond_0

    #@1a
    .line 1349
    const-string/jumbo v5, "\n"

    #@1d
    invoke-virtual {v2, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    #@20
    move-result-object v4

    #@21
    .line 1350
    .local v4, "tokens":[Ljava/lang/String;
    const/4 v5, 0x0

    #@22
    array-length v6, v4

    #@23
    :goto_0
    if-ge v5, v6, :cond_0

    #@25
    aget-object v3, v4, v5

    #@27
    .line 1351
    .local v3, "token":Ljava/lang/String;
    const-string/jumbo v7, "p2p_device_address="

    #@2a
    invoke-virtual {v3, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    #@2d
    move-result v7

    #@2e
    if-eqz v7, :cond_2

    #@30
    .line 1352
    const-string/jumbo v7, "="

    #@33
    invoke-virtual {v3, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    #@36
    move-result-object v0

    #@37
    .line 1353
    .local v0, "nameValue":[Ljava/lang/String;
    array-length v7, v0

    #@38
    const/4 v8, 0x2

    #@39
    if-eq v7, v8, :cond_1

    #@3b
    .line 1360
    .end local v0    # "nameValue":[Ljava/lang/String;
    .end local v3    # "token":Ljava/lang/String;
    .end local v4    # "tokens":[Ljava/lang/String;
    :cond_0
    const-string/jumbo v5, "WifiNative-HAL"

    #@3e
    new-instance v6, Ljava/lang/StringBuilder;

    #@40
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@43
    const-string/jumbo v7, "p2pGetDeviceAddress returning "

    #@46
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@49
    move-result-object v6

    #@4a
    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4d
    move-result-object v6

    #@4e
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@51
    move-result-object v6

    #@52
    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@55
    .line 1361
    return-object v1

    #@56
    .line 1343
    .end local v1    # "result":Ljava/lang/String;
    .local v2, "status":Ljava/lang/String;
    :catchall_0
    move-exception v5

    #@57
    monitor-exit v6

    #@58
    throw v5

    #@59
    .line 1355
    .restart local v0    # "nameValue":[Ljava/lang/String;
    .restart local v1    # "result":Ljava/lang/String;
    .local v2, "status":Ljava/lang/String;
    .restart local v3    # "token":Ljava/lang/String;
    .restart local v4    # "tokens":[Ljava/lang/String;
    :cond_1
    const/4 v7, 0x1

    #@5a
    aget-object v1, v0, v7

    #@5c
    .line 1350
    .end local v0    # "nameValue":[Ljava/lang/String;
    :cond_2
    add-int/lit8 v5, v5, 0x1

    #@5e
    goto :goto_0
.end method

.method public p2pGetSsid(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "deviceAddress"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1332
    const-string/jumbo v0, "oper_ssid"

    #@3
    invoke-direct {p0, p1, v0}, Lcom/android/server/wifi/WifiNative;->p2pGetParam(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@6
    move-result-object v0

    #@7
    return-object v0
.end method

.method public p2pGroupAdd(I)Z
    .locals 2
    .param p1, "netId"    # I

    #@0
    .prologue
    .line 1298
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    const-string/jumbo v1, "P2P_GROUP_ADD persistent="

    #@8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b
    move-result-object v0

    #@c
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@f
    move-result-object v0

    #@10
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@13
    move-result-object v0

    #@14
    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiNative;->doBooleanCommand(Ljava/lang/String;)Z

    #@17
    move-result v0

    #@18
    return v0
.end method

.method public p2pGroupAdd(Z)Z
    .locals 1
    .param p1, "persistent"    # Z

    #@0
    .prologue
    .line 1291
    if-eqz p1, :cond_0

    #@2
    .line 1292
    const-string/jumbo v0, "P2P_GROUP_ADD persistent"

    #@5
    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiNative;->doBooleanCommand(Ljava/lang/String;)Z

    #@8
    move-result v0

    #@9
    return v0

    #@a
    .line 1294
    :cond_0
    const-string/jumbo v0, "P2P_GROUP_ADD"

    #@d
    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiNative;->doBooleanCommand(Ljava/lang/String;)Z

    #@10
    move-result v0

    #@11
    return v0
.end method

.method public p2pGroupRemove(Ljava/lang/String;)Z
    .locals 3
    .param p1, "iface"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1302
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_0

    #@6
    const/4 v0, 0x0

    #@7
    return v0

    #@8
    .line 1303
    :cond_0
    sget-object v1, Lcom/android/server/wifi/WifiNative;->sLock:Ljava/lang/Object;

    #@a
    monitor-enter v1

    #@b
    .line 1304
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    #@d
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@10
    const-string/jumbo v2, "IFNAME="

    #@13
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@16
    move-result-object v0

    #@17
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1a
    move-result-object v0

    #@1b
    const-string/jumbo v2, " P2P_GROUP_REMOVE "

    #@1e
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@21
    move-result-object v0

    #@22
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@25
    move-result-object v0

    #@26
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@29
    move-result-object v0

    #@2a
    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiNative;->doBooleanCommandNative(Ljava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@2d
    move-result v0

    #@2e
    monitor-exit v1

    #@2f
    return v0

    #@30
    .line 1303
    :catchall_0
    move-exception v0

    #@31
    monitor-exit v1

    #@32
    throw v0
.end method

.method public p2pInvite(Landroid/net/wifi/p2p/WifiP2pGroup;Ljava/lang/String;)Z
    .locals 2
    .param p1, "group"    # Landroid/net/wifi/p2p/WifiP2pGroup;
    .param p2, "deviceAddress"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1314
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_0

    #@6
    const/4 v0, 0x0

    #@7
    return v0

    #@8
    .line 1316
    :cond_0
    if-nez p1, :cond_1

    #@a
    .line 1317
    new-instance v0, Ljava/lang/StringBuilder;

    #@c
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@f
    const-string/jumbo v1, "P2P_INVITE peer="

    #@12
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@15
    move-result-object v0

    #@16
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@19
    move-result-object v0

    #@1a
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1d
    move-result-object v0

    #@1e
    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiNative;->doBooleanCommand(Ljava/lang/String;)Z

    #@21
    move-result v0

    #@22
    return v0

    #@23
    .line 1319
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    #@25
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@28
    const-string/jumbo v1, "P2P_INVITE group="

    #@2b
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2e
    move-result-object v0

    #@2f
    invoke-virtual {p1}, Landroid/net/wifi/p2p/WifiP2pGroup;->getInterface()Ljava/lang/String;

    #@32
    move-result-object v1

    #@33
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@36
    move-result-object v0

    #@37
    .line 1320
    const-string/jumbo v1, " peer="

    #@3a
    .line 1319
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3d
    move-result-object v0

    #@3e
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@41
    move-result-object v0

    #@42
    .line 1320
    const-string/jumbo v1, " go_dev_addr="

    #@45
    .line 1319
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@48
    move-result-object v0

    #@49
    .line 1320
    invoke-virtual {p1}, Landroid/net/wifi/p2p/WifiP2pGroup;->getOwner()Landroid/net/wifi/p2p/WifiP2pDevice;

    #@4c
    move-result-object v1

    #@4d
    iget-object v1, v1, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;

    #@4f
    .line 1319
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@52
    move-result-object v0

    #@53
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@56
    move-result-object v0

    #@57
    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiNative;->doBooleanCommand(Ljava/lang/String;)Z

    #@5a
    move-result v0

    #@5b
    return v0
.end method

.method public p2pListen()Z
    .locals 1

    #@0
    .prologue
    .line 1168
    const-string/jumbo v0, "P2P_LISTEN"

    #@3
    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiNative;->doBooleanCommand(Ljava/lang/String;)Z

    #@6
    move-result v0

    #@7
    return v0
.end method

.method public p2pListen(I)Z
    .locals 2
    .param p1, "timeout"    # I

    #@0
    .prologue
    .line 1172
    if-gtz p1, :cond_0

    #@2
    .line 1173
    invoke-virtual {p0}, Lcom/android/server/wifi/WifiNative;->p2pListen()Z

    #@5
    move-result v0

    #@6
    return v0

    #@7
    .line 1175
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    #@9
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@c
    const-string/jumbo v1, "P2P_LISTEN "

    #@f
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@12
    move-result-object v0

    #@13
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@16
    move-result-object v0

    #@17
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1a
    move-result-object v0

    #@1b
    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiNative;->doBooleanCommand(Ljava/lang/String;)Z

    #@1e
    move-result v0

    #@1f
    return v0
.end method

.method public p2pPeer(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "deviceAddress"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1386
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    const-string/jumbo v1, "P2P_PEER "

    #@8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b
    move-result-object v0

    #@c
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@f
    move-result-object v0

    #@10
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@13
    move-result-object v0

    #@14
    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiNative;->doStringCommand(Ljava/lang/String;)Ljava/lang/String;

    #@17
    move-result-object v0

    #@18
    return-object v0
.end method

.method public p2pProvisionDiscovery(Landroid/net/wifi/p2p/WifiP2pConfig;)Z
    .locals 2
    .param p1, "config"    # Landroid/net/wifi/p2p/WifiP2pConfig;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 1273
    if-nez p1, :cond_0

    #@3
    return v1

    #@4
    .line 1275
    :cond_0
    iget-object v0, p1, Landroid/net/wifi/p2p/WifiP2pConfig;->wps:Landroid/net/wifi/WpsInfo;

    #@6
    iget v0, v0, Landroid/net/wifi/WpsInfo;->setup:I

    #@8
    packed-switch v0, :pswitch_data_0

    #@b
    .line 1287
    return v1

    #@c
    .line 1277
    :pswitch_0
    new-instance v0, Ljava/lang/StringBuilder;

    #@e
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@11
    const-string/jumbo v1, "P2P_PROV_DISC "

    #@14
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@17
    move-result-object v0

    #@18
    iget-object v1, p1, Landroid/net/wifi/p2p/WifiP2pConfig;->deviceAddress:Ljava/lang/String;

    #@1a
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1d
    move-result-object v0

    #@1e
    const-string/jumbo v1, " pbc"

    #@21
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@24
    move-result-object v0

    #@25
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@28
    move-result-object v0

    #@29
    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiNative;->doBooleanCommand(Ljava/lang/String;)Z

    #@2c
    move-result v0

    #@2d
    return v0

    #@2e
    .line 1280
    :pswitch_1
    new-instance v0, Ljava/lang/StringBuilder;

    #@30
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@33
    const-string/jumbo v1, "P2P_PROV_DISC "

    #@36
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@39
    move-result-object v0

    #@3a
    iget-object v1, p1, Landroid/net/wifi/p2p/WifiP2pConfig;->deviceAddress:Ljava/lang/String;

    #@3c
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3f
    move-result-object v0

    #@40
    const-string/jumbo v1, " keypad"

    #@43
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@46
    move-result-object v0

    #@47
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@4a
    move-result-object v0

    #@4b
    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiNative;->doBooleanCommand(Ljava/lang/String;)Z

    #@4e
    move-result v0

    #@4f
    return v0

    #@50
    .line 1283
    :pswitch_2
    new-instance v0, Ljava/lang/StringBuilder;

    #@52
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@55
    const-string/jumbo v1, "P2P_PROV_DISC "

    #@58
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5b
    move-result-object v0

    #@5c
    iget-object v1, p1, Landroid/net/wifi/p2p/WifiP2pConfig;->deviceAddress:Ljava/lang/String;

    #@5e
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@61
    move-result-object v0

    #@62
    const-string/jumbo v1, " display"

    #@65
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@68
    move-result-object v0

    #@69
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@6c
    move-result-object v0

    #@6d
    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiNative;->doBooleanCommand(Ljava/lang/String;)Z

    #@70
    move-result v0

    #@71
    return v0

    #@72
    .line 1275
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public p2pReinvoke(ILjava/lang/String;)Z
    .locals 2
    .param p1, "netId"    # I
    .param p2, "deviceAddress"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 1326
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@4
    move-result v0

    #@5
    if-nez v0, :cond_0

    #@7
    if-gez p1, :cond_1

    #@9
    :cond_0
    return v1

    #@a
    .line 1328
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    #@c
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@f
    const-string/jumbo v1, "P2P_INVITE persistent="

    #@12
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@15
    move-result-object v0

    #@16
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@19
    move-result-object v0

    #@1a
    const-string/jumbo v1, " peer="

    #@1d
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@20
    move-result-object v0

    #@21
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@24
    move-result-object v0

    #@25
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@28
    move-result-object v0

    #@29
    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiNative;->doBooleanCommand(Ljava/lang/String;)Z

    #@2c
    move-result v0

    #@2d
    return v0
.end method

.method public p2pReject(Ljava/lang/String;)Z
    .locals 2
    .param p1, "deviceAddress"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1309
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    const-string/jumbo v1, "P2P_REJECT "

    #@8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b
    move-result-object v0

    #@c
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@f
    move-result-object v0

    #@10
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@13
    move-result-object v0

    #@14
    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiNative;->doBooleanCommand(Ljava/lang/String;)Z

    #@17
    move-result v0

    #@18
    return v0
.end method

.method public p2pServDiscCancelReq(Ljava/lang/String;)Z
    .locals 2
    .param p1, "id"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1482
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    const-string/jumbo v1, "P2P_SERV_DISC_CANCEL_REQ "

    #@8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b
    move-result-object v0

    #@c
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@f
    move-result-object v0

    #@10
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@13
    move-result-object v0

    #@14
    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiNative;->doBooleanCommand(Ljava/lang/String;)Z

    #@17
    move-result v0

    #@18
    return v0
.end method

.method public p2pServDiscReq(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "addr"    # Ljava/lang/String;
    .param p2, "query"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1474
    const-string/jumbo v0, "P2P_SERV_DISC_REQ"

    #@3
    .line 1475
    .local v0, "command":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    #@5
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@8
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b
    move-result-object v1

    #@c
    const-string/jumbo v2, " "

    #@f
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@12
    move-result-object v1

    #@13
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@16
    move-result-object v1

    #@17
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1a
    move-result-object v0

    #@1b
    .line 1476
    new-instance v1, Ljava/lang/StringBuilder;

    #@1d
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@20
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@23
    move-result-object v1

    #@24
    const-string/jumbo v2, " "

    #@27
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2a
    move-result-object v1

    #@2b
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2e
    move-result-object v1

    #@2f
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@32
    move-result-object v0

    #@33
    .line 1478
    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiNative;->doStringCommand(Ljava/lang/String;)Ljava/lang/String;

    #@36
    move-result-object v1

    #@37
    return-object v1
.end method

.method public p2pServiceAdd(Landroid/net/wifi/p2p/nsd/WifiP2pServiceInfo;)Z
    .locals 6
    .param p1, "servInfo"    # Landroid/net/wifi/p2p/nsd/WifiP2pServiceInfo;

    #@0
    .prologue
    .line 1428
    sget-object v4, Lcom/android/server/wifi/WifiNative;->sLock:Ljava/lang/Object;

    #@2
    monitor-enter v4

    #@3
    .line 1429
    :try_start_0
    invoke-virtual {p1}, Landroid/net/wifi/p2p/nsd/WifiP2pServiceInfo;->getSupplicantQueryList()Ljava/util/List;

    #@6
    move-result-object v3

    #@7
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@a
    move-result-object v2

    #@b
    .local v2, "s$iterator":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    #@e
    move-result v3

    #@f
    if-eqz v3, :cond_1

    #@11
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@14
    move-result-object v1

    #@15
    check-cast v1, Ljava/lang/String;

    #@17
    .line 1430
    .local v1, "s":Ljava/lang/String;
    const-string/jumbo v0, "P2P_SERVICE_ADD"

    #@1a
    .line 1431
    .local v0, "command":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    #@1c
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@1f
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@22
    move-result-object v3

    #@23
    const-string/jumbo v5, " "

    #@26
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@29
    move-result-object v3

    #@2a
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2d
    move-result-object v3

    #@2e
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@31
    move-result-object v0

    #@32
    .line 1432
    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiNative;->doBooleanCommand(Ljava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@35
    move-result v3

    #@36
    if-nez v3, :cond_0

    #@38
    .line 1433
    const/4 v3, 0x0

    #@39
    monitor-exit v4

    #@3a
    return v3

    #@3b
    .end local v0    # "command":Ljava/lang/String;
    .end local v1    # "s":Ljava/lang/String;
    :cond_1
    monitor-exit v4

    #@3c
    .line 1437
    const/4 v3, 0x1

    #@3d
    return v3

    #@3e
    .line 1428
    .end local v2    # "s$iterator":Ljava/util/Iterator;
    :catchall_0
    move-exception v3

    #@3f
    monitor-exit v4

    #@40
    throw v3
.end method

.method public p2pServiceDel(Landroid/net/wifi/p2p/nsd/WifiP2pServiceInfo;)Z
    .locals 9
    .param p1, "servInfo"    # Landroid/net/wifi/p2p/nsd/WifiP2pServiceInfo;

    #@0
    .prologue
    const/4 v8, 0x1

    #@1
    const/4 v7, 0x0

    #@2
    .line 1445
    sget-object v5, Lcom/android/server/wifi/WifiNative;->sLock:Ljava/lang/Object;

    #@4
    monitor-enter v5

    #@5
    .line 1446
    :try_start_0
    invoke-virtual {p1}, Landroid/net/wifi/p2p/nsd/WifiP2pServiceInfo;->getSupplicantQueryList()Ljava/util/List;

    #@8
    move-result-object v4

    #@9
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@c
    move-result-object v3

    #@d
    .local v3, "s$iterator":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    #@10
    move-result v4

    #@11
    if-eqz v4, :cond_4

    #@13
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@16
    move-result-object v2

    #@17
    check-cast v2, Ljava/lang/String;

    #@19
    .line 1447
    .local v2, "s":Ljava/lang/String;
    const-string/jumbo v0, "P2P_SERVICE_DEL "

    #@1c
    .line 1449
    .local v0, "command":Ljava/lang/String;
    const-string/jumbo v4, " "

    #@1f
    invoke-virtual {v2, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    #@22
    move-result-object v1

    #@23
    .line 1450
    .local v1, "data":[Ljava/lang/String;
    array-length v4, v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@24
    const/4 v6, 0x2

    #@25
    if-ge v4, v6, :cond_1

    #@27
    monitor-exit v5

    #@28
    .line 1451
    return v7

    #@29
    .line 1453
    :cond_1
    :try_start_1
    const-string/jumbo v4, "upnp"

    #@2c
    const/4 v6, 0x0

    #@2d
    aget-object v6, v1, v6

    #@2f
    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@32
    move-result v4

    #@33
    if-eqz v4, :cond_2

    #@35
    .line 1454
    new-instance v4, Ljava/lang/StringBuilder;

    #@37
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@3a
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3d
    move-result-object v4

    #@3e
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@41
    move-result-object v4

    #@42
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@45
    move-result-object v0

    #@46
    .line 1461
    :goto_0
    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiNative;->doBooleanCommand(Ljava/lang/String;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@49
    move-result v4

    #@4a
    if-nez v4, :cond_0

    #@4c
    monitor-exit v5

    #@4d
    .line 1462
    return v7

    #@4e
    .line 1455
    :cond_2
    :try_start_2
    const-string/jumbo v4, "bonjour"

    #@51
    const/4 v6, 0x0

    #@52
    aget-object v6, v1, v6

    #@54
    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@57
    move-result v4

    #@58
    if-eqz v4, :cond_3

    #@5a
    .line 1456
    new-instance v4, Ljava/lang/StringBuilder;

    #@5c
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@5f
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@62
    move-result-object v4

    #@63
    const/4 v6, 0x0

    #@64
    aget-object v6, v1, v6

    #@66
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@69
    move-result-object v4

    #@6a
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@6d
    move-result-object v0

    #@6e
    .line 1457
    new-instance v4, Ljava/lang/StringBuilder;

    #@70
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@73
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@76
    move-result-object v4

    #@77
    const-string/jumbo v6, " "

    #@7a
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@7d
    move-result-object v4

    #@7e
    const/4 v6, 0x1

    #@7f
    aget-object v6, v1, v6

    #@81
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@84
    move-result-object v4

    #@85
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@88
    move-result-object v0

    #@89
    goto :goto_0

    #@8a
    :cond_3
    monitor-exit v5

    #@8b
    .line 1459
    return v7

    #@8c
    .end local v0    # "command":Ljava/lang/String;
    .end local v1    # "data":[Ljava/lang/String;
    .end local v2    # "s":Ljava/lang/String;
    :cond_4
    monitor-exit v5

    #@8d
    .line 1466
    return v8

    #@8e
    .line 1445
    .end local v3    # "s$iterator":Ljava/util/Iterator;
    :catchall_0
    move-exception v4

    #@8f
    monitor-exit v5

    #@90
    throw v4
.end method

.method public p2pServiceFlush()Z
    .locals 1

    #@0
    .prologue
    .line 1470
    const-string/jumbo v0, "P2P_SERVICE_FLUSH"

    #@3
    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiNative;->doBooleanCommand(Ljava/lang/String;)Z

    #@6
    move-result v0

    #@7
    return v0
.end method

.method public p2pSetChannel(II)Z
    .locals 6
    .param p1, "lc"    # I
    .param p2, "oc"    # I

    #@0
    .prologue
    const/4 v5, 0x1

    #@1
    const/4 v4, 0x0

    #@2
    .line 1187
    sget-boolean v1, Lcom/android/server/wifi/WifiNative;->DBG:Z

    #@4
    if-eqz v1, :cond_0

    #@6
    iget-object v1, p0, Lcom/android/server/wifi/WifiNative;->mTAG:Ljava/lang/String;

    #@8
    new-instance v2, Ljava/lang/StringBuilder;

    #@a
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@d
    const-string/jumbo v3, "p2pSetChannel: lc="

    #@10
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@13
    move-result-object v2

    #@14
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@17
    move-result-object v2

    #@18
    const-string/jumbo v3, ", oc="

    #@1b
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1e
    move-result-object v2

    #@1f
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@22
    move-result-object v2

    #@23
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@26
    move-result-object v2

    #@27
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@2a
    .line 1189
    :cond_0
    sget-object v2, Lcom/android/server/wifi/WifiNative;->sLock:Ljava/lang/Object;

    #@2c
    monitor-enter v2

    #@2d
    .line 1190
    if-lt p1, v5, :cond_1

    #@2f
    const/16 v1, 0xb

    #@31
    if-gt p1, v1, :cond_1

    #@33
    .line 1191
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    #@35
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@38
    const-string/jumbo v3, "P2P_SET listen_channel "

    #@3b
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3e
    move-result-object v1

    #@3f
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@42
    move-result-object v1

    #@43
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@46
    move-result-object v1

    #@47
    invoke-direct {p0, v1}, Lcom/android/server/wifi/WifiNative;->doBooleanCommand(Ljava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@4a
    move-result v1

    #@4b
    if-nez v1, :cond_2

    #@4d
    monitor-exit v2

    #@4e
    .line 1192
    return v4

    #@4f
    .line 1194
    :cond_1
    if-eqz p1, :cond_2

    #@51
    monitor-exit v2

    #@52
    .line 1195
    return v4

    #@53
    .line 1198
    :cond_2
    if-lt p2, v5, :cond_4

    #@55
    const/16 v1, 0xa5

    #@57
    if-gt p2, v1, :cond_4

    #@59
    .line 1199
    const/16 v1, 0xe

    #@5b
    if-gt p2, v1, :cond_3

    #@5d
    const/16 v1, 0x967

    #@5f
    :goto_0
    mul-int/lit8 v3, p2, 0x5

    #@61
    add-int v0, v1, v3

    #@63
    .line 1200
    .local v0, "freq":I
    :try_start_1
    new-instance v1, Ljava/lang/StringBuilder;

    #@65
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@68
    const-string/jumbo v3, "P2P_SET disallow_freq 1000-"

    #@6b
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6e
    move-result-object v1

    #@6f
    .line 1201
    add-int/lit8 v3, v0, -0x5

    #@71
    .line 1200
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@74
    move-result-object v1

    #@75
    .line 1201
    const-string/jumbo v3, ","

    #@78
    .line 1200
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@7b
    move-result-object v1

    #@7c
    .line 1201
    add-int/lit8 v3, v0, 0x5

    #@7e
    .line 1200
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@81
    move-result-object v1

    #@82
    .line 1201
    const-string/jumbo v3, "-6000"

    #@85
    .line 1200
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@88
    move-result-object v1

    #@89
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@8c
    move-result-object v1

    #@8d
    invoke-direct {p0, v1}, Lcom/android/server/wifi/WifiNative;->doBooleanCommand(Ljava/lang/String;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@90
    move-result v1

    #@91
    monitor-exit v2

    #@92
    return v1

    #@93
    .line 1199
    .end local v0    # "freq":I
    :cond_3
    const/16 v1, 0x1388

    #@95
    goto :goto_0

    #@96
    .line 1202
    :cond_4
    if-nez p2, :cond_5

    #@98
    .line 1204
    :try_start_2
    const-string/jumbo v1, "P2P_SET disallow_freq \"\""

    #@9b
    invoke-direct {p0, v1}, Lcom/android/server/wifi/WifiNative;->doBooleanCommand(Ljava/lang/String;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@9e
    move-result v1

    #@9f
    monitor-exit v2

    #@a0
    return v1

    #@a1
    :cond_5
    monitor-exit v2

    #@a2
    .line 1207
    return v4

    #@a3
    .line 1189
    :catchall_0
    move-exception v1

    #@a4
    monitor-exit v2

    #@a5
    throw v1
.end method

.method public p2pStopFind()Z
    .locals 1

    #@0
    .prologue
    .line 1164
    const-string/jumbo v0, "P2P_STOP_FIND"

    #@3
    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiNative;->doBooleanCommand(Ljava/lang/String;)Z

    #@6
    move-result v0

    #@7
    return v0
.end method

.method public pauseScan()V
    .locals 4

    #@0
    .prologue
    .line 1958
    sget-object v2, Lcom/android/server/wifi/WifiNative;->sLock:Ljava/lang/Object;

    #@2
    monitor-enter v2

    #@3
    .line 1959
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/wifi/WifiNative;->isHalStarted()Z

    #@6
    move-result v1

    #@7
    if-eqz v1, :cond_0

    #@9
    .line 1960
    sget v1, Lcom/android/server/wifi/WifiNative;->sScanCmdId:I

    #@b
    if-eqz v1, :cond_0

    #@d
    sget-object v1, Lcom/android/server/wifi/WifiNative;->sScanSettings:Lcom/android/server/wifi/WifiNative$ScanSettings;

    #@f
    if-eqz v1, :cond_0

    #@11
    sget-object v1, Lcom/android/server/wifi/WifiNative;->sScanEventHandler:Lcom/android/server/wifi/WifiNative$ScanEventHandler;

    #@13
    if-eqz v1, :cond_0

    #@15
    .line 1961
    const-string/jumbo v1, "WifiNative-HAL"

    #@18
    const-string/jumbo v3, "Pausing scan"

    #@1b
    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@1e
    .line 1962
    sget v1, Lcom/android/server/wifi/WifiNative;->sWlan0Index:I

    #@20
    const/4 v3, 0x1

    #@21
    invoke-static {v1, v3}, Lcom/android/server/wifi/WifiNative;->getScanResultsNative(IZ)[Landroid/net/wifi/WifiScanner$ScanData;

    #@24
    move-result-object v0

    #@25
    .line 1963
    .local v0, "scanData":[Landroid/net/wifi/WifiScanner$ScanData;
    sget v1, Lcom/android/server/wifi/WifiNative;->sWlan0Index:I

    #@27
    sget v3, Lcom/android/server/wifi/WifiNative;->sScanCmdId:I

    #@29
    invoke-static {v1, v3}, Lcom/android/server/wifi/WifiNative;->stopScanNative(II)Z

    #@2c
    .line 1964
    const/4 v1, 0x0

    #@2d
    sput v1, Lcom/android/server/wifi/WifiNative;->sScanCmdId:I

    #@2f
    .line 1965
    sget-object v1, Lcom/android/server/wifi/WifiNative;->sScanEventHandler:Lcom/android/server/wifi/WifiNative$ScanEventHandler;

    #@31
    invoke-interface {v1, v0}, Lcom/android/server/wifi/WifiNative$ScanEventHandler;->onScanPaused([Landroid/net/wifi/WifiScanner$ScanData;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@34
    .end local v0    # "scanData":[Landroid/net/wifi/WifiScanner$ScanData;
    :cond_0
    monitor-exit v2

    #@35
    .line 1957
    return-void

    #@36
    .line 1958
    :catchall_0
    move-exception v1

    #@37
    monitor-exit v2

    #@38
    throw v1
.end method

.method public ping()Z
    .locals 2

    #@0
    .prologue
    .line 330
    const-string/jumbo v1, "PING"

    #@3
    invoke-direct {p0, v1}, Lcom/android/server/wifi/WifiNative;->doStringCommand(Ljava/lang/String;)Ljava/lang/String;

    #@6
    move-result-object v0

    #@7
    .line 331
    .local v0, "pong":Ljava/lang/String;
    if-eqz v0, :cond_0

    #@9
    const-string/jumbo v1, "PONG"

    #@c
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@f
    move-result v1

    #@10
    :goto_0
    return v1

    #@11
    :cond_0
    const/4 v1, 0x0

    #@12
    goto :goto_0
.end method

.method public pktcntPoll()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 984
    const-string/jumbo v0, "PKTCNT_POLL"

    #@3
    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiNative;->doStringCommand(Ljava/lang/String;)Ljava/lang/String;

    #@6
    move-result-object v0

    #@7
    return-object v0
.end method

.method public queryInterfaceIndex(Ljava/lang/String;)I
    .locals 5
    .param p1, "interfaceName"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1619
    sget-object v4, Lcom/android/server/wifi/WifiNative;->sLock:Ljava/lang/Object;

    #@2
    monitor-enter v4

    #@3
    .line 1620
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/wifi/WifiNative;->isHalStarted()Z

    #@6
    move-result v3

    #@7
    if-eqz v3, :cond_1

    #@9
    .line 1621
    invoke-static {}, Lcom/android/server/wifi/WifiNative;->getInterfacesNative()I

    #@c
    move-result v2

    #@d
    .line 1622
    .local v2, "num":I
    const/4 v0, 0x0

    #@e
    .local v0, "i":I
    :goto_0
    if-ge v0, v2, :cond_1

    #@10
    .line 1623
    invoke-static {v0}, Lcom/android/server/wifi/WifiNative;->getInterfaceNameNative(I)Ljava/lang/String;

    #@13
    move-result-object v1

    #@14
    .line 1624
    .local v1, "name":Ljava/lang/String;
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@17
    move-result v3

    #@18
    if-eqz v3, :cond_0

    #@1a
    monitor-exit v4

    #@1b
    .line 1625
    return v0

    #@1c
    .line 1622
    :cond_0
    add-int/lit8 v0, v0, 0x1

    #@1e
    goto :goto_0

    #@1f
    .end local v0    # "i":I
    .end local v1    # "name":Ljava/lang/String;
    .end local v2    # "num":I
    :cond_1
    monitor-exit v4

    #@20
    .line 1630
    const/4 v3, -0x1

    #@21
    return v3

    #@22
    .line 1619
    :catchall_0
    move-exception v3

    #@23
    monitor-exit v4

    #@24
    throw v3
.end method

.method public declared-synchronized readKernelLog()Ljava/lang/String;
    .locals 6

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 1527
    :try_start_0
    invoke-static {}, Lcom/android/server/wifi/WifiNative;->readKernelLogNative()[B

    #@4
    move-result-object v0

    #@5
    .line 1528
    .local v0, "bytes":[B
    if-eqz v0, :cond_0

    #@7
    .line 1529
    sget-object v4, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    #@9
    invoke-virtual {v4}, Ljava/nio/charset/Charset;->newDecoder()Ljava/nio/charset/CharsetDecoder;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@c
    move-result-object v3

    #@d
    .line 1531
    .local v3, "decoder":Ljava/nio/charset/CharsetDecoder;
    :try_start_1
    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    #@10
    move-result-object v4

    #@11
    invoke-virtual {v3, v4}, Ljava/nio/charset/CharsetDecoder;->decode(Ljava/nio/ByteBuffer;)Ljava/nio/CharBuffer;

    #@14
    move-result-object v2

    #@15
    .line 1532
    .local v2, "decoded":Ljava/nio/CharBuffer;
    invoke-virtual {v2}, Ljava/nio/CharBuffer;->toString()Ljava/lang/String;
    :try_end_1
    .catch Ljava/nio/charset/CharacterCodingException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@18
    move-result-object v4

    #@19
    monitor-exit p0

    #@1a
    return-object v4

    #@1b
    .line 1533
    .end local v2    # "decoded":Ljava/nio/CharBuffer;
    :catch_0
    move-exception v1

    #@1c
    .line 1534
    .local v1, "cce":Ljava/nio/charset/CharacterCodingException;
    :try_start_2
    new-instance v4, Ljava/lang/String;

    #@1e
    sget-object v5, Ljava/nio/charset/StandardCharsets;->ISO_8859_1:Ljava/nio/charset/Charset;

    #@20
    invoke-direct {v4, v0, v5}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@23
    monitor-exit p0

    #@24
    return-object v4

    #@25
    .line 1537
    .end local v1    # "cce":Ljava/nio/charset/CharacterCodingException;
    .end local v3    # "decoder":Ljava/nio/charset/CharsetDecoder;
    :cond_0
    :try_start_3
    const-string/jumbo v4, "*** failed to read kernel log ***"
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@28
    monitor-exit p0

    #@29
    return-object v4

    #@2a
    .end local v0    # "bytes":[B
    :catchall_0
    move-exception v4

    #@2b
    monitor-exit p0

    #@2c
    throw v4
.end method

.method public reassociate()Z
    .locals 1

    #@0
    .prologue
    .line 538
    sget-boolean v0, Lcom/android/server/wifi/WifiNative;->DBG:Z

    #@2
    if-eqz v0, :cond_0

    #@4
    const-string/jumbo v0, "REASSOCIATE "

    #@7
    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiNative;->logDbg(Ljava/lang/String;)V

    #@a
    .line 539
    :cond_0
    const-string/jumbo v0, "REASSOCIATE"

    #@d
    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiNative;->doBooleanCommand(Ljava/lang/String;)Z

    #@10
    move-result v0

    #@11
    return v0
.end method

.method public reconnect()Z
    .locals 1

    #@0
    .prologue
    .line 533
    sget-boolean v0, Lcom/android/server/wifi/WifiNative;->DBG:Z

    #@2
    if-eqz v0, :cond_0

    #@4
    const-string/jumbo v0, "RECONNECT "

    #@7
    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiNative;->logDbg(Ljava/lang/String;)V

    #@a
    .line 534
    :cond_0
    const-string/jumbo v0, "RECONNECT"

    #@d
    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiNative;->doBooleanCommand(Ljava/lang/String;)Z

    #@10
    move-result v0

    #@11
    return v0
.end method

.method public removeNetwork(I)Z
    .locals 2
    .param p1, "netId"    # I

    #@0
    .prologue
    .line 476
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    const-string/jumbo v1, "REMOVE_NETWORK "

    #@8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b
    move-result-object v0

    #@c
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@f
    move-result-object v0

    #@10
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@13
    move-result-object v0

    #@14
    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiNative;->doBooleanCommand(Ljava/lang/String;)Z

    #@17
    move-result v0

    #@18
    return v0
.end method

.method public requestRtt([Landroid/net/wifi/RttManager$RttParams;Lcom/android/server/wifi/WifiNative$RttEventHandler;)Z
    .locals 4
    .param p1, "params"    # [Landroid/net/wifi/RttManager$RttParams;
    .param p2, "handler"    # Lcom/android/server/wifi/WifiNative$RttEventHandler;

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 2194
    sget-object v1, Lcom/android/server/wifi/WifiNative;->sLock:Ljava/lang/Object;

    #@3
    monitor-enter v1

    #@4
    .line 2195
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/wifi/WifiNative;->isHalStarted()Z

    #@7
    move-result v0

    #@8
    if-eqz v0, :cond_1

    #@a
    .line 2196
    sget v0, Lcom/android/server/wifi/WifiNative;->sRttCmdId:I

    #@c
    if-eqz v0, :cond_0

    #@e
    .line 2197
    const-string/jumbo v0, "WifiNative-HAL"

    #@11
    const-string/jumbo v2, "Last one is still under measurement!"

    #@14
    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@17
    monitor-exit v1

    #@18
    .line 2198
    return v3

    #@19
    .line 2200
    :cond_0
    :try_start_1
    invoke-static {}, Lcom/android/server/wifi/WifiNative;->getNewCmdIdLocked()I

    #@1c
    move-result v0

    #@1d
    sput v0, Lcom/android/server/wifi/WifiNative;->sRttCmdId:I

    #@1f
    .line 2202
    sput-object p2, Lcom/android/server/wifi/WifiNative;->sRttEventHandler:Lcom/android/server/wifi/WifiNative$RttEventHandler;

    #@21
    .line 2203
    sget v0, Lcom/android/server/wifi/WifiNative;->sWlan0Index:I

    #@23
    sget v2, Lcom/android/server/wifi/WifiNative;->sRttCmdId:I

    #@25
    invoke-static {v0, v2, p1}, Lcom/android/server/wifi/WifiNative;->requestRangeNative(II[Landroid/net/wifi/RttManager$RttParams;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@28
    move-result v0

    #@29
    monitor-exit v1

    #@2a
    return v0

    #@2b
    :cond_1
    monitor-exit v1

    #@2c
    .line 2205
    return v3

    #@2d
    .line 2194
    :catchall_0
    move-exception v0

    #@2e
    monitor-exit v1

    #@2f
    throw v0
.end method

.method public resetHotlist()V
    .locals 3

    #@0
    .prologue
    .line 2041
    sget-object v1, Lcom/android/server/wifi/WifiNative;->sLock:Ljava/lang/Object;

    #@2
    monitor-enter v1

    #@3
    .line 2042
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/wifi/WifiNative;->isHalStarted()Z

    #@6
    move-result v0

    #@7
    if-eqz v0, :cond_0

    #@9
    .line 2043
    sget v0, Lcom/android/server/wifi/WifiNative;->sHotlistCmdId:I

    #@b
    if-eqz v0, :cond_0

    #@d
    .line 2044
    sget v0, Lcom/android/server/wifi/WifiNative;->sWlan0Index:I

    #@f
    sget v2, Lcom/android/server/wifi/WifiNative;->sHotlistCmdId:I

    #@11
    invoke-static {v0, v2}, Lcom/android/server/wifi/WifiNative;->resetHotlistNative(II)Z

    #@14
    .line 2045
    const/4 v0, 0x0

    #@15
    sput v0, Lcom/android/server/wifi/WifiNative;->sHotlistCmdId:I

    #@17
    .line 2046
    const/4 v0, 0x0

    #@18
    sput-object v0, Lcom/android/server/wifi/WifiNative;->sHotlistEventHandler:Lcom/android/server/wifi/WifiNative$HotlistEventHandler;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1a
    :cond_0
    monitor-exit v1

    #@1b
    .line 2040
    return-void

    #@1c
    .line 2041
    :catchall_0
    move-exception v0

    #@1d
    monitor-exit v1

    #@1e
    throw v0
.end method

.method public resetLogHandler()Z
    .locals 4

    #@0
    .prologue
    const/4 v2, -0x1

    #@1
    const/4 v3, 0x0

    #@2
    .line 2515
    sget-object v1, Lcom/android/server/wifi/WifiNative;->sLock:Ljava/lang/Object;

    #@4
    monitor-enter v1

    #@5
    .line 2516
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/wifi/WifiNative;->isHalStarted()Z

    #@8
    move-result v0

    #@9
    if-eqz v0, :cond_2

    #@b
    .line 2517
    sget v0, Lcom/android/server/wifi/WifiNative;->sLogCmdId:I

    #@d
    if-ne v0, v2, :cond_0

    #@f
    .line 2518
    const-string/jumbo v0, "WifiNative-HAL"

    #@12
    const-string/jumbo v2, "Can not reset handler Before set any handler"

    #@15
    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@18
    monitor-exit v1

    #@19
    .line 2519
    return v3

    #@1a
    .line 2521
    :cond_0
    const/4 v0, 0x0

    #@1b
    :try_start_1
    sput-object v0, Lcom/android/server/wifi/WifiNative;->sWifiLoggerEventHandler:Lcom/android/server/wifi/WifiNative$WifiLoggerEventHandler;

    #@1d
    .line 2522
    sget v0, Lcom/android/server/wifi/WifiNative;->sWlan0Index:I

    #@1f
    sget v2, Lcom/android/server/wifi/WifiNative;->sLogCmdId:I

    #@21
    invoke-static {v0, v2}, Lcom/android/server/wifi/WifiNative;->resetLogHandlerNative(II)Z

    #@24
    move-result v0

    #@25
    if-eqz v0, :cond_1

    #@27
    .line 2523
    const/4 v0, -0x1

    #@28
    sput v0, Lcom/android/server/wifi/WifiNative;->sLogCmdId:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@2a
    .line 2524
    const/4 v0, 0x1

    #@2b
    monitor-exit v1

    #@2c
    return v0

    #@2d
    :cond_1
    monitor-exit v1

    #@2e
    .line 2526
    return v3

    #@2f
    :cond_2
    monitor-exit v1

    #@30
    .line 2529
    return v3

    #@31
    .line 2515
    :catchall_0
    move-exception v0

    #@32
    monitor-exit v1

    #@33
    throw v0
.end method

.method public resetPnoList()Z
    .locals 3

    #@0
    .prologue
    .line 2939
    const-string/jumbo v0, "WifiNative-HAL"

    #@3
    new-instance v1, Ljava/lang/StringBuilder;

    #@5
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@8
    const-string/jumbo v2, "resetPnoList cmd "

    #@b
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@e
    move-result-object v1

    #@f
    sget v2, Lcom/android/server/wifi/WifiNative;->sPnoCmdId:I

    #@11
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@14
    move-result-object v1

    #@15
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@18
    move-result-object v1

    #@19
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@1c
    .line 2941
    sget-object v1, Lcom/android/server/wifi/WifiNative;->sLock:Ljava/lang/Object;

    #@1e
    monitor-enter v1

    #@1f
    .line 2942
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/wifi/WifiNative;->isHalStarted()Z

    #@22
    move-result v0

    #@23
    if-eqz v0, :cond_0

    #@25
    .line 2943
    invoke-static {}, Lcom/android/server/wifi/WifiNative;->getNewCmdIdLocked()I

    #@28
    move-result v0

    #@29
    sput v0, Lcom/android/server/wifi/WifiNative;->sPnoCmdId:I

    #@2b
    .line 2944
    const/4 v0, 0x0

    #@2c
    sput-object v0, Lcom/android/server/wifi/WifiNative;->sPnoEventHandler:Lcom/android/server/wifi/WifiNative$PnoEventHandler;

    #@2e
    .line 2945
    sget v0, Lcom/android/server/wifi/WifiNative;->sWlan0Index:I

    #@30
    sget v2, Lcom/android/server/wifi/WifiNative;->sPnoCmdId:I

    #@32
    invoke-static {v0, v2}, Lcom/android/server/wifi/WifiNative;->resetPnoListNative(II)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@35
    move-result v0

    #@36
    if-eqz v0, :cond_0

    #@38
    .line 2946
    const/4 v0, 0x1

    #@39
    monitor-exit v1

    #@3a
    return v0

    #@3b
    .line 2949
    :cond_0
    const/4 v0, 0x0

    #@3c
    monitor-exit v1

    #@3d
    return v0

    #@3e
    .line 2941
    :catchall_0
    move-exception v0

    #@3f
    monitor-exit v1

    #@40
    throw v0
.end method

.method public responderReportNfcHandover(Ljava/lang/String;)Z
    .locals 2
    .param p1, "requestMessage"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1519
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    const-string/jumbo v1, "NFC_REPORT_HANDOVER RESP P2P "

    #@8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b
    move-result-object v0

    #@c
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@f
    move-result-object v0

    #@10
    const-string/jumbo v1, " 00"

    #@13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@16
    move-result-object v0

    #@17
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1a
    move-result-object v0

    #@1b
    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiNative;->doBooleanCommand(Ljava/lang/String;)Z

    #@1e
    move-result v0

    #@1f
    return v0
.end method

.method public restartScan()V
    .locals 5

    #@0
    .prologue
    .line 1972
    sget-object v3, Lcom/android/server/wifi/WifiNative;->sLock:Ljava/lang/Object;

    #@2
    monitor-enter v3

    #@3
    .line 1973
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/wifi/WifiNative;->isHalStarted()Z

    #@6
    move-result v2

    #@7
    if-eqz v2, :cond_0

    #@9
    .line 1974
    sget v2, Lcom/android/server/wifi/WifiNative;->sScanCmdId:I

    #@b
    if-nez v2, :cond_0

    #@d
    sget-object v2, Lcom/android/server/wifi/WifiNative;->sScanSettings:Lcom/android/server/wifi/WifiNative$ScanSettings;

    #@f
    if-eqz v2, :cond_0

    #@11
    sget-object v2, Lcom/android/server/wifi/WifiNative;->sScanEventHandler:Lcom/android/server/wifi/WifiNative$ScanEventHandler;

    #@13
    if-eqz v2, :cond_0

    #@15
    .line 1975
    const-string/jumbo v2, "WifiNative-HAL"

    #@18
    const-string/jumbo v4, "Restarting scan"

    #@1b
    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@1e
    .line 1976
    sget-object v0, Lcom/android/server/wifi/WifiNative;->sScanEventHandler:Lcom/android/server/wifi/WifiNative$ScanEventHandler;

    #@20
    .line 1977
    .local v0, "handler":Lcom/android/server/wifi/WifiNative$ScanEventHandler;
    sget-object v1, Lcom/android/server/wifi/WifiNative;->sScanSettings:Lcom/android/server/wifi/WifiNative$ScanSettings;

    #@22
    .line 1978
    .local v1, "settings":Lcom/android/server/wifi/WifiNative$ScanSettings;
    sget-object v2, Lcom/android/server/wifi/WifiNative;->sScanSettings:Lcom/android/server/wifi/WifiNative$ScanSettings;

    #@24
    sget-object v4, Lcom/android/server/wifi/WifiNative;->sScanEventHandler:Lcom/android/server/wifi/WifiNative$ScanEventHandler;

    #@26
    invoke-virtual {p0, v2, v4}, Lcom/android/server/wifi/WifiNative;->startScan(Lcom/android/server/wifi/WifiNative$ScanSettings;Lcom/android/server/wifi/WifiNative$ScanEventHandler;)Z

    #@29
    move-result v2

    #@2a
    if-eqz v2, :cond_1

    #@2c
    .line 1979
    sget-object v2, Lcom/android/server/wifi/WifiNative;->sScanEventHandler:Lcom/android/server/wifi/WifiNative$ScanEventHandler;

    #@2e
    invoke-interface {v2}, Lcom/android/server/wifi/WifiNative$ScanEventHandler;->onScanRestarted()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@31
    .end local v0    # "handler":Lcom/android/server/wifi/WifiNative$ScanEventHandler;
    .end local v1    # "settings":Lcom/android/server/wifi/WifiNative$ScanSettings;
    :cond_0
    :goto_0
    monitor-exit v3

    #@32
    .line 1971
    return-void

    #@33
    .line 1982
    .restart local v0    # "handler":Lcom/android/server/wifi/WifiNative$ScanEventHandler;
    .restart local v1    # "settings":Lcom/android/server/wifi/WifiNative$ScanSettings;
    :cond_1
    :try_start_1
    sput-object v0, Lcom/android/server/wifi/WifiNative;->sScanEventHandler:Lcom/android/server/wifi/WifiNative$ScanEventHandler;

    #@35
    .line 1983
    sput-object v1, Lcom/android/server/wifi/WifiNative;->sScanSettings:Lcom/android/server/wifi/WifiNative$ScanSettings;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@37
    goto :goto_0

    #@38
    .line 1972
    .end local v0    # "handler":Lcom/android/server/wifi/WifiNative$ScanEventHandler;
    .end local v1    # "settings":Lcom/android/server/wifi/WifiNative$ScanSettings;
    :catchall_0
    move-exception v2

    #@39
    monitor-exit v3

    #@3a
    throw v2
.end method

.method public saveConfig()Z
    .locals 1

    #@0
    .prologue
    .line 902
    const-string/jumbo v0, "SAVE_CONFIG"

    #@3
    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiNative;->doBooleanCommand(Ljava/lang/String;)Z

    #@6
    move-result v0

    #@7
    return v0
.end method

.method public scan(Ljava/util/Set;Ljava/util/Set;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Integer;",
            ">;)Z"
        }
    .end annotation

    #@0
    .prologue
    .line 366
    .local p1, "freqs":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    .local p2, "hiddenNetworkIds":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    const/4 v0, 0x0

    #@1
    .line 367
    .local v0, "freqList":Ljava/lang/String;
    const/4 v1, 0x0

    #@2
    .line 368
    .local v1, "hiddenNetworkIdList":Ljava/lang/String;
    if-eqz p1, :cond_0

    #@4
    invoke-interface {p1}, Ljava/util/Set;->size()I

    #@7
    move-result v2

    #@8
    if-eqz v2, :cond_0

    #@a
    .line 369
    invoke-static {p1}, Lcom/android/server/wifi/WifiNative;->createCSVStringFromIntegerSet(Ljava/util/Set;)Ljava/lang/String;

    #@d
    move-result-object v0

    #@e
    .line 371
    .end local v0    # "freqList":Ljava/lang/String;
    :cond_0
    if-eqz p2, :cond_1

    #@10
    invoke-interface {p2}, Ljava/util/Set;->size()I

    #@13
    move-result v2

    #@14
    if-eqz v2, :cond_1

    #@16
    .line 372
    invoke-static {p2}, Lcom/android/server/wifi/WifiNative;->createCSVStringFromIntegerSet(Ljava/util/Set;)Ljava/lang/String;

    #@19
    move-result-object v1

    #@1a
    .line 374
    .end local v1    # "hiddenNetworkIdList":Ljava/lang/String;
    :cond_1
    invoke-direct {p0, v0, v1}, Lcom/android/server/wifi/WifiNative;->scanWithParams(Ljava/lang/String;Ljava/lang/String;)Z

    #@1d
    move-result v2

    #@1e
    return v2
.end method

.method public scanResult(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "bssid"    # Ljava/lang/String;

    #@0
    .prologue
    .line 774
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    const-string/jumbo v1, "BSS "

    #@8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b
    move-result-object v0

    #@c
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@f
    move-result-object v0

    #@10
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@13
    move-result-object v0

    #@14
    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiNative;->doStringCommand(Ljava/lang/String;)Ljava/lang/String;

    #@17
    move-result-object v0

    #@18
    return-object v0
.end method

.method public selectNetwork(I)Z
    .locals 2
    .param p1, "netId"    # I

    #@0
    .prologue
    .line 528
    sget-boolean v0, Lcom/android/server/wifi/WifiNative;->DBG:Z

    #@2
    if-eqz v0, :cond_0

    #@4
    new-instance v0, Ljava/lang/StringBuilder;

    #@6
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@9
    const-string/jumbo v1, "selectNetwork nid="

    #@c
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@f
    move-result-object v0

    #@10
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    #@13
    move-result-object v1

    #@14
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@17
    move-result-object v0

    #@18
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1b
    move-result-object v0

    #@1c
    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiNative;->logDbg(Ljava/lang/String;)V

    #@1f
    .line 529
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    #@21
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@24
    const-string/jumbo v1, "SELECT_NETWORK "

    #@27
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2a
    move-result-object v0

    #@2b
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@2e
    move-result-object v0

    #@2f
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@32
    move-result-object v0

    #@33
    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiNative;->doBooleanCommand(Ljava/lang/String;)Z

    #@36
    move-result v0

    #@37
    return v0
.end method

.method public setBand(I)Z
    .locals 3
    .param p1, "band"    # I

    #@0
    .prologue
    .line 857
    const/4 v1, 0x1

    #@1
    if-ne p1, v1, :cond_0

    #@3
    .line 858
    const-string/jumbo v0, "5G"

    #@6
    .line 863
    .local v0, "bandstr":Ljava/lang/String;
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    #@8
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@b
    const-string/jumbo v2, "SET SETBAND "

    #@e
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@11
    move-result-object v1

    #@12
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@15
    move-result-object v1

    #@16
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@19
    move-result-object v1

    #@1a
    invoke-direct {p0, v1}, Lcom/android/server/wifi/WifiNative;->doBooleanCommand(Ljava/lang/String;)Z

    #@1d
    move-result v1

    #@1e
    return v1

    #@1f
    .line 859
    .end local v0    # "bandstr":Ljava/lang/String;
    :cond_0
    const/4 v1, 0x2

    #@20
    if-ne p1, v1, :cond_1

    #@22
    .line 860
    const-string/jumbo v0, "2G"

    #@25
    .restart local v0    # "bandstr":Ljava/lang/String;
    goto :goto_0

    #@26
    .line 862
    .end local v0    # "bandstr":Ljava/lang/String;
    :cond_1
    const-string/jumbo v0, "AUTO"

    #@29
    .restart local v0    # "bandstr":Ljava/lang/String;
    goto :goto_0
.end method

.method public setBluetoothCoexistenceMode(I)Z
    .locals 2
    .param p1, "mode"    # I

    #@0
    .prologue
    .line 878
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    const-string/jumbo v1, "DRIVER BTCOEXMODE "

    #@8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b
    move-result-object v0

    #@c
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@f
    move-result-object v0

    #@10
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@13
    move-result-object v0

    #@14
    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiNative;->doBooleanCommand(Ljava/lang/String;)Z

    #@17
    move-result v0

    #@18
    return v0
.end method

.method public setBluetoothCoexistenceScanMode(Z)Z
    .locals 1
    .param p1, "setCoexScanMode"    # Z

    #@0
    .prologue
    .line 890
    if-eqz p1, :cond_0

    #@2
    .line 891
    const-string/jumbo v0, "DRIVER BTCOEXSCAN-START"

    #@5
    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiNative;->doBooleanCommand(Ljava/lang/String;)Z

    #@8
    move-result v0

    #@9
    return v0

    #@a
    .line 893
    :cond_0
    const-string/jumbo v0, "DRIVER BTCOEXSCAN-STOP"

    #@d
    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiNative;->doBooleanCommand(Ljava/lang/String;)Z

    #@10
    move-result v0

    #@11
    return v0
.end method

.method public setBssidBlacklist([Ljava/lang/String;)Z
    .locals 4
    .param p1, "list"    # [Ljava/lang/String;

    #@0
    .prologue
    .line 2983
    const/4 v0, 0x0

    #@1
    .line 2984
    .local v0, "size":I
    if-eqz p1, :cond_0

    #@3
    .line 2985
    array-length v0, p1

    #@4
    .line 2987
    :cond_0
    const-string/jumbo v1, "WifiNative-HAL"

    #@7
    new-instance v2, Ljava/lang/StringBuilder;

    #@9
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@c
    const-string/jumbo v3, "setBssidBlacklist cmd "

    #@f
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@12
    move-result-object v2

    #@13
    sget v3, Lcom/android/server/wifi/WifiNative;->sPnoCmdId:I

    #@15
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@18
    move-result-object v2

    #@19
    const-string/jumbo v3, " size "

    #@1c
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1f
    move-result-object v2

    #@20
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@23
    move-result-object v2

    #@24
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@27
    move-result-object v2

    #@28
    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@2b
    .line 2989
    sget-object v2, Lcom/android/server/wifi/WifiNative;->sLock:Ljava/lang/Object;

    #@2d
    monitor-enter v2

    #@2e
    .line 2990
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/wifi/WifiNative;->isHalStarted()Z

    #@31
    move-result v1

    #@32
    if-eqz v1, :cond_1

    #@34
    .line 2991
    invoke-static {}, Lcom/android/server/wifi/WifiNative;->getNewCmdIdLocked()I

    #@37
    move-result v1

    #@38
    sput v1, Lcom/android/server/wifi/WifiNative;->sPnoCmdId:I

    #@3a
    .line 2992
    sget v1, Lcom/android/server/wifi/WifiNative;->sWlan0Index:I

    #@3c
    sget v3, Lcom/android/server/wifi/WifiNative;->sPnoCmdId:I

    #@3e
    invoke-static {v1, v3, p1}, Lcom/android/server/wifi/WifiNative;->setBssidBlacklistNative(II[Ljava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@41
    move-result v1

    #@42
    monitor-exit v2

    #@43
    return v1

    #@44
    .line 2994
    :cond_1
    const/4 v1, 0x0

    #@45
    monitor-exit v2

    #@46
    return v1

    #@47
    .line 2989
    :catchall_0
    move-exception v1

    #@48
    monitor-exit v2

    #@49
    throw v1
.end method

.method public setConcurrencyPriority(Ljava/lang/String;)Z
    .locals 2
    .param p1, "s"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1149
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    const-string/jumbo v1, "P2P_SET conc_pref "

    #@8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b
    move-result-object v0

    #@c
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@f
    move-result-object v0

    #@10
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@13
    move-result-object v0

    #@14
    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiNative;->doBooleanCommand(Ljava/lang/String;)Z

    #@17
    move-result v0

    #@18
    return v0
.end method

.method public setConfigMethods(Ljava/lang/String;)Z
    .locals 2
    .param p1, "cfg"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1089
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    const-string/jumbo v1, "SET config_methods "

    #@8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b
    move-result-object v0

    #@c
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@f
    move-result-object v0

    #@10
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@13
    move-result-object v0

    #@14
    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiNative;->doBooleanCommand(Ljava/lang/String;)Z

    #@17
    move-result v0

    #@18
    return v0
.end method

.method public setCountryCode(Ljava/lang/String;)Z
    .locals 2
    .param p1, "countryCode"    # Ljava/lang/String;

    #@0
    .prologue
    .line 923
    if-eqz p1, :cond_0

    #@2
    .line 924
    new-instance v0, Ljava/lang/StringBuilder;

    #@4
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@7
    const-string/jumbo v1, "DRIVER COUNTRY "

    #@a
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@d
    move-result-object v0

    #@e
    sget-object v1, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    #@10
    invoke-virtual {p1, v1}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    #@13
    move-result-object v1

    #@14
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@17
    move-result-object v0

    #@18
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1b
    move-result-object v0

    #@1c
    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiNative;->doBooleanCommand(Ljava/lang/String;)Z

    #@1f
    move-result v0

    #@20
    return v0

    #@21
    .line 926
    :cond_0
    const-string/jumbo v0, "DRIVER COUNTRY"

    #@24
    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiNative;->doBooleanCommand(Ljava/lang/String;)Z

    #@27
    move-result v0

    #@28
    return v0
.end method

.method public setCountryCodeHal(Ljava/lang/String;)Z
    .locals 2
    .param p1, "CountryCode"    # Ljava/lang/String;

    #@0
    .prologue
    .line 2367
    sget-object v1, Lcom/android/server/wifi/WifiNative;->sLock:Ljava/lang/Object;

    #@2
    monitor-enter v1

    #@3
    .line 2368
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/wifi/WifiNative;->isHalStarted()Z

    #@6
    move-result v0

    #@7
    if-eqz v0, :cond_0

    #@9
    .line 2369
    sget v0, Lcom/android/server/wifi/WifiNative;->sWlan0Index:I

    #@b
    invoke-static {v0, p1}, Lcom/android/server/wifi/WifiNative;->setCountryCodeHalNative(ILjava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@e
    move-result v0

    #@f
    monitor-exit v1

    #@10
    return v0

    #@11
    .line 2371
    :cond_0
    const/4 v0, 0x0

    #@12
    monitor-exit v1

    #@13
    return v0

    #@14
    .line 2367
    :catchall_0
    move-exception v0

    #@15
    monitor-exit v1

    #@16
    throw v0
.end method

.method public setDeviceName(Ljava/lang/String;)Z
    .locals 2
    .param p1, "name"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1081
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    const-string/jumbo v1, "SET device_name "

    #@8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b
    move-result-object v0

    #@c
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@f
    move-result-object v0

    #@10
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@13
    move-result-object v0

    #@14
    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiNative;->doBooleanCommand(Ljava/lang/String;)Z

    #@17
    move-result v0

    #@18
    return v0
.end method

.method public setDeviceType(Ljava/lang/String;)Z
    .locals 2
    .param p1, "type"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1085
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    const-string/jumbo v1, "SET device_type "

    #@8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b
    move-result-object v0

    #@c
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@f
    move-result-object v0

    #@10
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@13
    move-result-object v0

    #@14
    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiNative;->doBooleanCommand(Ljava/lang/String;)Z

    #@17
    move-result v0

    #@18
    return v0
.end method

.method public setDfsFlag(Z)Z
    .locals 2
    .param p1, "dfsOn"    # Z

    #@0
    .prologue
    .line 2312
    sget-object v1, Lcom/android/server/wifi/WifiNative;->sLock:Ljava/lang/Object;

    #@2
    monitor-enter v1

    #@3
    .line 2313
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/wifi/WifiNative;->isHalStarted()Z

    #@6
    move-result v0

    #@7
    if-eqz v0, :cond_0

    #@9
    .line 2314
    sget v0, Lcom/android/server/wifi/WifiNative;->sWlan0Index:I

    #@b
    invoke-static {v0, p1}, Lcom/android/server/wifi/WifiNative;->setDfsFlagNative(IZ)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@e
    move-result v0

    #@f
    monitor-exit v1

    #@10
    return v0

    #@11
    .line 2316
    :cond_0
    const/4 v0, 0x0

    #@12
    monitor-exit v1

    #@13
    return v0

    #@14
    .line 2312
    :catchall_0
    move-exception v0

    #@15
    monitor-exit v1

    #@16
    throw v0
.end method

.method public setExternalSim(Z)Z
    .locals 4
    .param p1, "external"    # Z

    #@0
    .prologue
    .line 1041
    if-eqz p1, :cond_0

    #@2
    const-string/jumbo v0, "1"

    #@5
    .line 1042
    .local v0, "value":Ljava/lang/String;
    :goto_0
    const-string/jumbo v1, "WifiNative-HAL"

    #@8
    new-instance v2, Ljava/lang/StringBuilder;

    #@a
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@d
    const-string/jumbo v3, "Setting external_sim to "

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
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@1f
    .line 1043
    new-instance v1, Ljava/lang/StringBuilder;

    #@21
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@24
    const-string/jumbo v2, "SET external_sim "

    #@27
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2a
    move-result-object v1

    #@2b
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2e
    move-result-object v1

    #@2f
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@32
    move-result-object v1

    #@33
    invoke-direct {p0, v1}, Lcom/android/server/wifi/WifiNative;->doBooleanCommand(Ljava/lang/String;)Z

    #@36
    move-result v1

    #@37
    return v1

    #@38
    .line 1041
    .end local v0    # "value":Ljava/lang/String;
    :cond_0
    const-string/jumbo v0, "0"

    #@3b
    .restart local v0    # "value":Ljava/lang/String;
    goto :goto_0
.end method

.method public setHotlist(Landroid/net/wifi/WifiScanner$HotlistSettings;Lcom/android/server/wifi/WifiNative$HotlistEventHandler;)Z
    .locals 4
    .param p1, "settings"    # Landroid/net/wifi/WifiScanner$HotlistSettings;
    .param p2, "eventHandler"    # Lcom/android/server/wifi/WifiNative$HotlistEventHandler;

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 2019
    sget-object v1, Lcom/android/server/wifi/WifiNative;->sLock:Ljava/lang/Object;

    #@3
    monitor-enter v1

    #@4
    .line 2020
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/wifi/WifiNative;->isHalStarted()Z

    #@7
    move-result v0

    #@8
    if-eqz v0, :cond_2

    #@a
    .line 2021
    sget v0, Lcom/android/server/wifi/WifiNative;->sHotlistCmdId:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@c
    if-eqz v0, :cond_0

    #@e
    monitor-exit v1

    #@f
    .line 2022
    return v3

    #@10
    .line 2024
    :cond_0
    :try_start_1
    invoke-static {}, Lcom/android/server/wifi/WifiNative;->getNewCmdIdLocked()I

    #@13
    move-result v0

    #@14
    sput v0, Lcom/android/server/wifi/WifiNative;->sHotlistCmdId:I

    #@16
    .line 2027
    sput-object p2, Lcom/android/server/wifi/WifiNative;->sHotlistEventHandler:Lcom/android/server/wifi/WifiNative$HotlistEventHandler;

    #@18
    .line 2028
    sget v0, Lcom/android/server/wifi/WifiNative;->sWlan0Index:I

    #@1a
    sget v2, Lcom/android/server/wifi/WifiNative;->sHotlistCmdId:I

    #@1c
    invoke-static {v0, v2, p1}, Lcom/android/server/wifi/WifiNative;->setHotlistNative(IILandroid/net/wifi/WifiScanner$HotlistSettings;)Z

    #@1f
    move-result v0

    #@20
    if-nez v0, :cond_1

    #@22
    .line 2029
    const/4 v0, 0x0

    #@23
    sput-object v0, Lcom/android/server/wifi/WifiNative;->sHotlistEventHandler:Lcom/android/server/wifi/WifiNative$HotlistEventHandler;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@25
    monitor-exit v1

    #@26
    .line 2030
    return v3

    #@27
    .line 2033
    :cond_1
    const/4 v0, 0x1

    #@28
    monitor-exit v1

    #@29
    return v0

    #@2a
    :cond_2
    monitor-exit v1

    #@2b
    .line 2035
    return v3

    #@2c
    .line 2019
    :catchall_0
    move-exception v0

    #@2d
    monitor-exit v1

    #@2e
    throw v0
.end method

.method public setHs20(Z)V
    .locals 1
    .param p1, "hs20"    # Z

    #@0
    .prologue
    .line 951
    if-eqz p1, :cond_0

    #@2
    .line 952
    const-string/jumbo v0, "SET HS20 1"

    #@5
    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiNative;->doBooleanCommand(Ljava/lang/String;)Z

    #@8
    .line 950
    :goto_0
    return-void

    #@9
    .line 954
    :cond_0
    const-string/jumbo v0, "SET HS20 0"

    #@c
    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiNative;->doBooleanCommand(Ljava/lang/String;)Z

    #@f
    goto :goto_0
.end method

.method public setInterfaceUp(Z)Z
    .locals 2
    .param p1, "up"    # Z

    #@0
    .prologue
    .line 2323
    sget-object v1, Lcom/android/server/wifi/WifiNative;->sLock:Ljava/lang/Object;

    #@2
    monitor-enter v1

    #@3
    .line 2324
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/wifi/WifiNative;->isHalStarted()Z

    #@6
    move-result v0

    #@7
    if-eqz v0, :cond_0

    #@9
    .line 2325
    invoke-static {p1}, Lcom/android/server/wifi/WifiNative;->setInterfaceUpNative(Z)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@c
    move-result v0

    #@d
    monitor-exit v1

    #@e
    return v0

    #@f
    .line 2327
    :cond_0
    const/4 v0, 0x0

    #@10
    monitor-exit v1

    #@11
    return v0

    #@12
    .line 2323
    :catchall_0
    move-exception v0

    #@13
    monitor-exit v1

    #@14
    throw v0
.end method

.method public setLoggingEventHandler(Lcom/android/server/wifi/WifiNative$WifiLoggerEventHandler;)Z
    .locals 5
    .param p1, "handler"    # Lcom/android/server/wifi/WifiNative$WifiLoggerEventHandler;

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 2472
    sget-object v2, Lcom/android/server/wifi/WifiNative;->sLock:Ljava/lang/Object;

    #@3
    monitor-enter v2

    #@4
    .line 2473
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/wifi/WifiNative;->isHalStarted()Z

    #@7
    move-result v1

    #@8
    if-eqz v1, :cond_1

    #@a
    .line 2474
    sget v0, Lcom/android/server/wifi/WifiNative;->sLogCmdId:I

    #@c
    .line 2475
    .local v0, "oldId":I
    invoke-static {}, Lcom/android/server/wifi/WifiNative;->getNewCmdIdLocked()I

    #@f
    move-result v1

    #@10
    sput v1, Lcom/android/server/wifi/WifiNative;->sLogCmdId:I

    #@12
    .line 2476
    sget v1, Lcom/android/server/wifi/WifiNative;->sWlan0Index:I

    #@14
    sget v3, Lcom/android/server/wifi/WifiNative;->sLogCmdId:I

    #@16
    invoke-static {v1, v3}, Lcom/android/server/wifi/WifiNative;->setLoggingEventHandlerNative(II)Z

    #@19
    move-result v1

    #@1a
    if-nez v1, :cond_0

    #@1c
    .line 2477
    sput v0, Lcom/android/server/wifi/WifiNative;->sLogCmdId:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1e
    monitor-exit v2

    #@1f
    .line 2478
    return v4

    #@20
    .line 2480
    :cond_0
    :try_start_1
    sput-object p1, Lcom/android/server/wifi/WifiNative;->sWifiLoggerEventHandler:Lcom/android/server/wifi/WifiNative$WifiLoggerEventHandler;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@22
    .line 2481
    const/4 v1, 0x1

    #@23
    monitor-exit v2

    #@24
    return v1

    #@25
    .end local v0    # "oldId":I
    :cond_1
    monitor-exit v2

    #@26
    .line 2483
    return v4

    #@27
    .line 2472
    :catchall_0
    move-exception v1

    #@28
    monitor-exit v2

    #@29
    throw v1
.end method

.method public setManufacturer(Ljava/lang/String;)Z
    .locals 2
    .param p1, "value"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1093
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    const-string/jumbo v1, "SET manufacturer "

    #@8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b
    move-result-object v0

    #@c
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@f
    move-result-object v0

    #@10
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@13
    move-result-object v0

    #@14
    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiNative;->doBooleanCommand(Ljava/lang/String;)Z

    #@17
    move-result v0

    #@18
    return v0
.end method

.method public setMiracastMode(I)V
    .locals 2
    .param p1, "mode"    # I

    #@0
    .prologue
    .line 1492
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    const-string/jumbo v1, "DRIVER MIRACAST "

    #@8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b
    move-result-object v0

    #@c
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@f
    move-result-object v0

    #@10
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@13
    move-result-object v0

    #@14
    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiNative;->doBooleanCommand(Ljava/lang/String;)Z

    #@17
    .line 1490
    return-void
.end method

.method public setModelName(Ljava/lang/String;)Z
    .locals 2
    .param p1, "value"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1097
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    const-string/jumbo v1, "SET model_name "

    #@8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b
    move-result-object v0

    #@c
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@f
    move-result-object v0

    #@10
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@13
    move-result-object v0

    #@14
    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiNative;->doBooleanCommand(Ljava/lang/String;)Z

    #@17
    move-result v0

    #@18
    return v0
.end method

.method public setModelNumber(Ljava/lang/String;)Z
    .locals 2
    .param p1, "value"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1101
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    const-string/jumbo v1, "SET model_number "

    #@8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b
    move-result-object v0

    #@c
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@f
    move-result-object v0

    #@10
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@13
    move-result-object v0

    #@14
    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiNative;->doBooleanCommand(Ljava/lang/String;)Z

    #@17
    move-result v0

    #@18
    return v0
.end method

.method public setNetworkExtra(ILjava/lang/String;Ljava/util/Map;)Z
    .locals 7
    .param p1, "netId"    # I
    .param p2, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    #@0
    .prologue
    .local p3, "values":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v6, 0x0

    #@1
    .line 414
    :try_start_0
    new-instance v3, Lorg/json/JSONObject;

    #@3
    invoke-direct {v3, p3}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    #@6
    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    #@9
    move-result-object v3

    #@a
    const-string/jumbo v4, "UTF-8"

    #@d
    invoke-static {v3, v4}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    #@10
    move-result-object v2

    #@11
    .line 422
    .local v2, "encoded":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    #@13
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@16
    const-string/jumbo v4, "\""

    #@19
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1c
    move-result-object v3

    #@1d
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@20
    move-result-object v3

    #@21
    const-string/jumbo v4, "\""

    #@24
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@27
    move-result-object v3

    #@28
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2b
    move-result-object v3

    #@2c
    invoke-virtual {p0, p1, p2, v3}, Lcom/android/server/wifi/WifiNative;->setNetworkVariable(ILjava/lang/String;Ljava/lang/String;)Z

    #@2f
    move-result v3

    #@30
    return v3

    #@31
    .line 418
    .end local v2    # "encoded":Ljava/lang/String;
    :catch_0
    move-exception v0

    #@32
    .line 419
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    const-string/jumbo v3, "WifiNative-HAL"

    #@35
    new-instance v4, Ljava/lang/StringBuilder;

    #@37
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@3a
    const-string/jumbo v5, "Unable to serialize networkExtra: "

    #@3d
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@40
    move-result-object v4

    #@41
    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->toString()Ljava/lang/String;

    #@44
    move-result-object v5

    #@45
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@48
    move-result-object v4

    #@49
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@4c
    move-result-object v4

    #@4d
    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@50
    .line 420
    return v6

    #@51
    .line 415
    .end local v0    # "e":Ljava/io/UnsupportedEncodingException;
    :catch_1
    move-exception v1

    #@52
    .line 416
    .local v1, "e":Ljava/lang/NullPointerException;
    const-string/jumbo v3, "WifiNative-HAL"

    #@55
    new-instance v4, Ljava/lang/StringBuilder;

    #@57
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@5a
    const-string/jumbo v5, "Unable to serialize networkExtra: "

    #@5d
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@60
    move-result-object v4

    #@61
    invoke-virtual {v1}, Ljava/lang/NullPointerException;->toString()Ljava/lang/String;

    #@64
    move-result-object v5

    #@65
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@68
    move-result-object v4

    #@69
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@6c
    move-result-object v4

    #@6d
    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@70
    .line 417
    return v6
.end method

.method public setNetworkVariable(ILjava/lang/String;Ljava/lang/String;)Z
    .locals 2
    .param p1, "netId"    # I
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "value"    # Ljava/lang/String;

    #@0
    .prologue
    .line 426
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@3
    move-result v0

    #@4
    if-nez v0, :cond_0

    #@6
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@9
    move-result v0

    #@a
    if-eqz v0, :cond_1

    #@c
    :cond_0
    const/4 v0, 0x0

    #@d
    return v0

    #@e
    .line 427
    :cond_1
    const-string/jumbo v0, "psk"

    #@11
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@14
    move-result v0

    #@15
    if-nez v0, :cond_2

    #@17
    .line 428
    const-string/jumbo v0, "password"

    #@1a
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@1d
    move-result v0

    #@1e
    .line 427
    if-eqz v0, :cond_3

    #@20
    .line 429
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    #@22
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@25
    const-string/jumbo v1, "SET_NETWORK "

    #@28
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2b
    move-result-object v0

    #@2c
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@2f
    move-result-object v0

    #@30
    const-string/jumbo v1, " "

    #@33
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@36
    move-result-object v0

    #@37
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3a
    move-result-object v0

    #@3b
    const-string/jumbo v1, " "

    #@3e
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@41
    move-result-object v0

    #@42
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@45
    move-result-object v0

    #@46
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@49
    move-result-object v0

    #@4a
    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiNative;->doBooleanCommandWithoutLogging(Ljava/lang/String;)Z

    #@4d
    move-result v0

    #@4e
    return v0

    #@4f
    .line 431
    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    #@51
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@54
    const-string/jumbo v1, "SET_NETWORK "

    #@57
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5a
    move-result-object v0

    #@5b
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@5e
    move-result-object v0

    #@5f
    const-string/jumbo v1, " "

    #@62
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@65
    move-result-object v0

    #@66
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@69
    move-result-object v0

    #@6a
    const-string/jumbo v1, " "

    #@6d
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@70
    move-result-object v0

    #@71
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@74
    move-result-object v0

    #@75
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@78
    move-result-object v0

    #@79
    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiNative;->doBooleanCommand(Ljava/lang/String;)Z

    #@7c
    move-result v0

    #@7d
    return v0
.end method

.method public setP2pGroupIdle(Ljava/lang/String;I)Z
    .locals 3
    .param p1, "iface"    # Ljava/lang/String;
    .param p2, "time"    # I

    #@0
    .prologue
    .line 1113
    sget-object v1, Lcom/android/server/wifi/WifiNative;->sLock:Ljava/lang/Object;

    #@2
    monitor-enter v1

    #@3
    .line 1114
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    #@5
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@8
    const-string/jumbo v2, "IFNAME="

    #@b
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@e
    move-result-object v0

    #@f
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@12
    move-result-object v0

    #@13
    const-string/jumbo v2, " SET p2p_group_idle "

    #@16
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@19
    move-result-object v0

    #@1a
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@1d
    move-result-object v0

    #@1e
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@21
    move-result-object v0

    #@22
    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiNative;->doBooleanCommandNative(Ljava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@25
    move-result v0

    #@26
    monitor-exit v1

    #@27
    return v0

    #@28
    .line 1113
    :catchall_0
    move-exception v0

    #@29
    monitor-exit v1

    #@2a
    throw v0
.end method

.method public setP2pPowerSave(Ljava/lang/String;Z)Z
    .locals 3
    .param p1, "iface"    # Ljava/lang/String;
    .param p2, "enabled"    # Z

    #@0
    .prologue
    .line 1127
    sget-object v1, Lcom/android/server/wifi/WifiNative;->sLock:Ljava/lang/Object;

    #@2
    monitor-enter v1

    #@3
    .line 1128
    if-eqz p2, :cond_0

    #@5
    .line 1129
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    #@7
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@a
    const-string/jumbo v2, "IFNAME="

    #@d
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@10
    move-result-object v0

    #@11
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@14
    move-result-object v0

    #@15
    const-string/jumbo v2, " P2P_SET ps 1"

    #@18
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1b
    move-result-object v0

    #@1c
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1f
    move-result-object v0

    #@20
    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiNative;->doBooleanCommandNative(Ljava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@23
    move-result v0

    #@24
    monitor-exit v1

    #@25
    return v0

    #@26
    .line 1131
    :cond_0
    :try_start_1
    new-instance v0, Ljava/lang/StringBuilder;

    #@28
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@2b
    const-string/jumbo v2, "IFNAME="

    #@2e
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@31
    move-result-object v0

    #@32
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@35
    move-result-object v0

    #@36
    const-string/jumbo v2, " P2P_SET ps 0"

    #@39
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3c
    move-result-object v0

    #@3d
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@40
    move-result-object v0

    #@41
    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiNative;->doBooleanCommandNative(Ljava/lang/String;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@44
    move-result v0

    #@45
    monitor-exit v1

    #@46
    return v0

    #@47
    .line 1127
    :catchall_0
    move-exception v0

    #@48
    monitor-exit v1

    #@49
    throw v0
.end method

.method public setP2pSsidPostfix(Ljava/lang/String;)Z
    .locals 2
    .param p1, "postfix"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1109
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    const-string/jumbo v1, "SET p2p_ssid_postfix "

    #@8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b
    move-result-object v0

    #@c
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@f
    move-result-object v0

    #@10
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@13
    move-result-object v0

    #@14
    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiNative;->doBooleanCommand(Ljava/lang/String;)Z

    #@17
    move-result v0

    #@18
    return v0
.end method

.method public setPersistentReconnect(Z)Z
    .locals 3
    .param p1, "enabled"    # Z

    #@0
    .prologue
    .line 1076
    if-eqz p1, :cond_0

    #@2
    const/4 v0, 0x1

    #@3
    .line 1077
    .local v0, "value":I
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    #@5
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@8
    const-string/jumbo v2, "SET persistent_reconnect "

    #@b
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@e
    move-result-object v1

    #@f
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@12
    move-result-object v1

    #@13
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@16
    move-result-object v1

    #@17
    invoke-direct {p0, v1}, Lcom/android/server/wifi/WifiNative;->doBooleanCommand(Ljava/lang/String;)Z

    #@1a
    move-result v1

    #@1b
    return v1

    #@1c
    .line 1076
    .end local v0    # "value":I
    :cond_0
    const/4 v0, 0x0

    #@1d
    .restart local v0    # "value":I
    goto :goto_0
.end method

.method public setPnoList(Lcom/android/server/wifi/WifiNative$PnoSettings;Lcom/android/server/wifi/WifiNative$PnoEventHandler;)Z
    .locals 3
    .param p1, "settings"    # Lcom/android/server/wifi/WifiNative$PnoSettings;
    .param p2, "eventHandler"    # Lcom/android/server/wifi/WifiNative$PnoEventHandler;

    #@0
    .prologue
    .line 2905
    const-string/jumbo v0, "WifiNative-HAL"

    #@3
    new-instance v1, Ljava/lang/StringBuilder;

    #@5
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@8
    const-string/jumbo v2, "setPnoList cmd "

    #@b
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@e
    move-result-object v1

    #@f
    sget v2, Lcom/android/server/wifi/WifiNative;->sPnoCmdId:I

    #@11
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@14
    move-result-object v1

    #@15
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@18
    move-result-object v1

    #@19
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@1c
    .line 2907
    sget-object v1, Lcom/android/server/wifi/WifiNative;->sLock:Ljava/lang/Object;

    #@1e
    monitor-enter v1

    #@1f
    .line 2908
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/wifi/WifiNative;->isHalStarted()Z

    #@22
    move-result v0

    #@23
    if-eqz v0, :cond_0

    #@25
    .line 2909
    invoke-static {}, Lcom/android/server/wifi/WifiNative;->getNewCmdIdLocked()I

    #@28
    move-result v0

    #@29
    sput v0, Lcom/android/server/wifi/WifiNative;->sPnoCmdId:I

    #@2b
    .line 2910
    sput-object p2, Lcom/android/server/wifi/WifiNative;->sPnoEventHandler:Lcom/android/server/wifi/WifiNative$PnoEventHandler;

    #@2d
    .line 2911
    sget v0, Lcom/android/server/wifi/WifiNative;->sWlan0Index:I

    #@2f
    sget v2, Lcom/android/server/wifi/WifiNative;->sPnoCmdId:I

    #@31
    invoke-static {v0, v2, p1}, Lcom/android/server/wifi/WifiNative;->setPnoListNative(IILcom/android/server/wifi/WifiNative$PnoSettings;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@34
    move-result v0

    #@35
    if-eqz v0, :cond_0

    #@37
    .line 2912
    const/4 v0, 0x1

    #@38
    monitor-exit v1

    #@39
    return v0

    #@3a
    .line 2915
    :cond_0
    const/4 v0, 0x0

    #@3b
    :try_start_1
    sput-object v0, Lcom/android/server/wifi/WifiNative;->sPnoEventHandler:Lcom/android/server/wifi/WifiNative$PnoEventHandler;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@3d
    .line 2916
    const/4 v0, 0x0

    #@3e
    monitor-exit v1

    #@3f
    return v0

    #@40
    .line 2907
    :catchall_0
    move-exception v0

    #@41
    monitor-exit v1

    #@42
    throw v0
.end method

.method public setPnoList([Lcom/android/server/wifi/WifiNative$PnoNetwork;Lcom/android/server/wifi/WifiNative$PnoEventHandler;)Z
    .locals 2
    .param p1, "list"    # [Lcom/android/server/wifi/WifiNative$PnoNetwork;
    .param p2, "eventHandler"    # Lcom/android/server/wifi/WifiNative$PnoEventHandler;

    #@0
    .prologue
    .line 2927
    new-instance v0, Lcom/android/server/wifi/WifiNative$PnoSettings;

    #@2
    invoke-direct {v0}, Lcom/android/server/wifi/WifiNative$PnoSettings;-><init>()V

    #@5
    .line 2928
    .local v0, "settings":Lcom/android/server/wifi/WifiNative$PnoSettings;
    iput-object p1, v0, Lcom/android/server/wifi/WifiNative$PnoSettings;->networkList:[Lcom/android/server/wifi/WifiNative$PnoNetwork;

    #@7
    .line 2929
    invoke-virtual {p0, v0, p2}, Lcom/android/server/wifi/WifiNative;->setPnoList(Lcom/android/server/wifi/WifiNative$PnoSettings;Lcom/android/server/wifi/WifiNative$PnoEventHandler;)Z

    #@a
    move-result v1

    #@b
    return v1
.end method

.method public setPnoScan(Z)Z
    .locals 2
    .param p1, "enable"    # Z

    #@0
    .prologue
    .line 934
    if-eqz p1, :cond_0

    #@2
    const-string/jumbo v0, "SET pno 1"

    #@5
    .line 935
    .local v0, "cmd":Ljava/lang/String;
    :goto_0
    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiNative;->doBooleanCommand(Ljava/lang/String;)Z

    #@8
    move-result v1

    #@9
    return v1

    #@a
    .line 934
    .end local v0    # "cmd":Ljava/lang/String;
    :cond_0
    const-string/jumbo v0, "SET pno 0"

    #@d
    goto :goto_0
.end method

.method public setPowerSave(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    #@0
    .prologue
    .line 1119
    if-eqz p1, :cond_0

    #@2
    .line 1120
    const-string/jumbo v0, "SET ps 1"

    #@5
    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiNative;->doBooleanCommand(Ljava/lang/String;)Z

    #@8
    .line 1118
    :goto_0
    return-void

    #@9
    .line 1122
    :cond_0
    const-string/jumbo v0, "SET ps 0"

    #@c
    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiNative;->doBooleanCommand(Ljava/lang/String;)Z

    #@f
    goto :goto_0
.end method

.method public setScanInterval(I)V
    .locals 2
    .param p1, "scanInterval"    # I

    #@0
    .prologue
    .line 947
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    const-string/jumbo v1, "SCAN_INTERVAL "

    #@8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b
    move-result-object v0

    #@c
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@f
    move-result-object v0

    #@10
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@13
    move-result-object v0

    #@14
    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiNative;->doBooleanCommand(Ljava/lang/String;)Z

    #@17
    .line 946
    return-void
.end method

.method public setScanningMacOui([B)Z
    .locals 2
    .param p1, "oui"    # [B

    #@0
    .prologue
    .line 2277
    sget-object v1, Lcom/android/server/wifi/WifiNative;->sLock:Ljava/lang/Object;

    #@2
    monitor-enter v1

    #@3
    .line 2278
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/wifi/WifiNative;->isHalStarted()Z

    #@6
    move-result v0

    #@7
    if-eqz v0, :cond_0

    #@9
    .line 2279
    sget v0, Lcom/android/server/wifi/WifiNative;->sWlan0Index:I

    #@b
    invoke-static {v0, p1}, Lcom/android/server/wifi/WifiNative;->setScanningMacOuiNative(I[B)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@e
    move-result v0

    #@f
    monitor-exit v1

    #@10
    return v0

    #@11
    .line 2281
    :cond_0
    const/4 v0, 0x0

    #@12
    monitor-exit v1

    #@13
    return v0

    #@14
    .line 2277
    :catchall_0
    move-exception v0

    #@15
    monitor-exit v1

    #@16
    throw v0
.end method

.method public setSerialNumber(Ljava/lang/String;)Z
    .locals 2
    .param p1, "value"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1105
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    const-string/jumbo v1, "SET serial_number "

    #@8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b
    move-result-object v0

    #@c
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@f
    move-result-object v0

    #@10
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@13
    move-result-object v0

    #@14
    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiNative;->doBooleanCommand(Ljava/lang/String;)Z

    #@17
    move-result v0

    #@18
    return v0
.end method

.method public setSupplicantLogLevel(Ljava/lang/String;)V
    .locals 2
    .param p1, "level"    # Ljava/lang/String;

    #@0
    .prologue
    .line 335
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    const-string/jumbo v1, "LOG_LEVEL "

    #@8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b
    move-result-object v0

    #@c
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@f
    move-result-object v0

    #@10
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@13
    move-result-object v0

    #@14
    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiNative;->doStringCommand(Ljava/lang/String;)Ljava/lang/String;

    #@17
    .line 334
    return-void
.end method

.method public setSuspendOptimizations(Z)Z
    .locals 1
    .param p1, "enabled"    # Z

    #@0
    .prologue
    .line 915
    if-eqz p1, :cond_0

    #@2
    .line 916
    const-string/jumbo v0, "DRIVER SETSUSPENDMODE 1"

    #@5
    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiNative;->doBooleanCommand(Ljava/lang/String;)Z

    #@8
    move-result v0

    #@9
    return v0

    #@a
    .line 918
    :cond_0
    const-string/jumbo v0, "DRIVER SETSUSPENDMODE 0"

    #@d
    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiNative;->doBooleanCommand(Ljava/lang/String;)Z

    #@10
    move-result v0

    #@11
    return v0
.end method

.method public setWfdDeviceInfo(Ljava/lang/String;)Z
    .locals 2
    .param p1, "hex"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1141
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    const-string/jumbo v1, "WFD_SUBELEM_SET 0 "

    #@8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b
    move-result-object v0

    #@c
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@f
    move-result-object v0

    #@10
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@13
    move-result-object v0

    #@14
    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiNative;->doBooleanCommand(Ljava/lang/String;)Z

    #@17
    move-result v0

    #@18
    return v0
.end method

.method public setWfdEnable(Z)Z
    .locals 2
    .param p1, "enable"    # Z

    #@0
    .prologue
    .line 1137
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    const-string/jumbo v1, "SET wifi_display "

    #@8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b
    move-result-object v1

    #@c
    if-eqz p1, :cond_0

    #@e
    const-string/jumbo v0, "1"

    #@11
    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@14
    move-result-object v0

    #@15
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@18
    move-result-object v0

    #@19
    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiNative;->doBooleanCommand(Ljava/lang/String;)Z

    #@1c
    move-result v0

    #@1d
    return v0

    #@1e
    :cond_0
    const-string/jumbo v0, "0"

    #@21
    goto :goto_0
.end method

.method public setWifiLinkLayerStats(Ljava/lang/String;I)V
    .locals 2
    .param p1, "iface"    # Ljava/lang/String;
    .param p2, "enable"    # I

    #@0
    .prologue
    .line 2146
    if-nez p1, :cond_0

    #@2
    return-void

    #@3
    .line 2147
    :cond_0
    sget-object v1, Lcom/android/server/wifi/WifiNative;->sLock:Ljava/lang/Object;

    #@5
    monitor-enter v1

    #@6
    .line 2148
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/wifi/WifiNative;->isHalStarted()Z

    #@9
    move-result v0

    #@a
    if-eqz v0, :cond_1

    #@c
    .line 2149
    sget v0, Lcom/android/server/wifi/WifiNative;->sWlan0Index:I

    #@e
    invoke-static {v0, p2}, Lcom/android/server/wifi/WifiNative;->setWifiLinkLayerStatsNative(II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@11
    :cond_1
    monitor-exit v1

    #@12
    .line 2145
    return-void

    #@13
    .line 2147
    :catchall_0
    move-exception v0

    #@14
    monitor-exit v1

    #@15
    throw v0
.end method

.method public signalPoll()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 976
    const-string/jumbo v0, "SIGNAL_POLL"

    #@3
    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiNative;->doStringCommandWithoutLogging(Ljava/lang/String;)Ljava/lang/String;

    #@6
    move-result-object v0

    #@7
    return-object v0
.end method

.method public simAuthFailedResponse(I)Z
    .locals 2
    .param p1, "id"    # I

    #@0
    .prologue
    .line 1053
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    const-string/jumbo v1, "CTRL-RSP-SIM-"

    #@8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b
    move-result-object v0

    #@c
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@f
    move-result-object v0

    #@10
    const-string/jumbo v1, ":GSM-FAIL"

    #@13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@16
    move-result-object v0

    #@17
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1a
    move-result-object v0

    #@1b
    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiNative;->doBooleanCommand(Ljava/lang/String;)Z

    #@1e
    move-result v0

    #@1f
    return v0
.end method

.method public simAuthResponse(ILjava/lang/String;Ljava/lang/String;)Z
    .locals 2
    .param p1, "id"    # I
    .param p2, "type"    # Ljava/lang/String;
    .param p3, "response"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1048
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    const-string/jumbo v1, "CTRL-RSP-SIM-"

    #@8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b
    move-result-object v0

    #@c
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@f
    move-result-object v0

    #@10
    const-string/jumbo v1, ":"

    #@13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@16
    move-result-object v0

    #@17
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1a
    move-result-object v0

    #@1b
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1e
    move-result-object v0

    #@1f
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@22
    move-result-object v0

    #@23
    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiNative;->doBooleanCommand(Ljava/lang/String;)Z

    #@26
    move-result v0

    #@27
    return v0
.end method

.method public simIdentityResponse(ILjava/lang/String;)Z
    .locals 2
    .param p1, "id"    # I
    .param p2, "response"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1062
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    const-string/jumbo v1, "CTRL-RSP-IDENTITY-"

    #@8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b
    move-result-object v0

    #@c
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@f
    move-result-object v0

    #@10
    const-string/jumbo v1, ":"

    #@13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@16
    move-result-object v0

    #@17
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1a
    move-result-object v0

    #@1b
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1e
    move-result-object v0

    #@1f
    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiNative;->doBooleanCommand(Ljava/lang/String;)Z

    #@22
    move-result v0

    #@23
    return v0
.end method

.method public startDriver()Z
    .locals 1

    #@0
    .prologue
    .line 778
    const-string/jumbo v0, "DRIVER START"

    #@3
    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiNative;->doBooleanCommand(Ljava/lang/String;)Z

    #@6
    move-result v0

    #@7
    return v0
.end method

.method public startFilteringMulticastV4Packets()Z
    .locals 1

    #@0
    .prologue
    .line 811
    const-string/jumbo v0, "DRIVER RXFILTER-STOP"

    #@3
    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiNative;->doBooleanCommand(Ljava/lang/String;)Z

    #@6
    move-result v0

    #@7
    if-eqz v0, :cond_0

    #@9
    .line 812
    const-string/jumbo v0, "DRIVER RXFILTER-REMOVE 2"

    #@c
    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiNative;->doBooleanCommand(Ljava/lang/String;)Z

    #@f
    move-result v0

    #@10
    .line 811
    if-eqz v0, :cond_0

    #@12
    .line 813
    const-string/jumbo v0, "DRIVER RXFILTER-START"

    #@15
    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiNative;->doBooleanCommand(Ljava/lang/String;)Z

    #@18
    move-result v0

    #@19
    .line 811
    :goto_0
    return v0

    #@1a
    :cond_0
    const/4 v0, 0x0

    #@1b
    goto :goto_0
.end method

.method public startFilteringMulticastV6Packets()Z
    .locals 1

    #@0
    .prologue
    .line 831
    const-string/jumbo v0, "DRIVER RXFILTER-STOP"

    #@3
    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiNative;->doBooleanCommand(Ljava/lang/String;)Z

    #@6
    move-result v0

    #@7
    if-eqz v0, :cond_0

    #@9
    .line 832
    const-string/jumbo v0, "DRIVER RXFILTER-REMOVE 3"

    #@c
    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiNative;->doBooleanCommand(Ljava/lang/String;)Z

    #@f
    move-result v0

    #@10
    .line 831
    if-eqz v0, :cond_0

    #@12
    .line 833
    const-string/jumbo v0, "DRIVER RXFILTER-START"

    #@15
    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiNative;->doBooleanCommand(Ljava/lang/String;)Z

    #@18
    move-result v0

    #@19
    .line 831
    :goto_0
    return v0

    #@1a
    :cond_0
    const/4 v0, 0x0

    #@1b
    goto :goto_0
.end method

.method public startHal()Z
    .locals 9

    #@0
    .prologue
    const/4 v8, 0x0

    #@1
    .line 1568
    const-string/jumbo v0, "startHal stack: "

    #@4
    .line 1569
    .local v0, "debugLog":Ljava/lang/String;
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    #@7
    move-result-object v4

    #@8
    invoke-virtual {v4}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    #@b
    move-result-object v1

    #@c
    .line 1570
    .local v1, "elements":[Ljava/lang/StackTraceElement;
    const/4 v2, 0x2

    #@d
    .local v2, "i":I
    :goto_0
    array-length v4, v1

    #@e
    if-ge v2, v4, :cond_0

    #@10
    const/4 v4, 0x7

    #@11
    if-gt v2, v4, :cond_0

    #@13
    .line 1571
    new-instance v4, Ljava/lang/StringBuilder;

    #@15
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@18
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1b
    move-result-object v4

    #@1c
    const-string/jumbo v5, " - "

    #@1f
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@22
    move-result-object v4

    #@23
    aget-object v5, v1, v2

    #@25
    invoke-virtual {v5}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    #@28
    move-result-object v5

    #@29
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2c
    move-result-object v4

    #@2d
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@30
    move-result-object v0

    #@31
    .line 1570
    add-int/lit8 v2, v2, 0x1

    #@33
    goto :goto_0

    #@34
    .line 1574
    :cond_0
    sget-object v4, Lcom/android/server/wifi/WifiNative;->sLocalLog:Landroid/util/LocalLog;

    #@36
    invoke-virtual {v4, v0}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    #@39
    .line 1576
    sget-object v5, Lcom/android/server/wifi/WifiNative;->sLock:Ljava/lang/Object;

    #@3b
    monitor-enter v5

    #@3c
    .line 1577
    :try_start_0
    invoke-static {}, Lcom/android/server/wifi/WifiNative;->startHalNative()Z

    #@3f
    move-result v4

    #@40
    if-eqz v4, :cond_3

    #@42
    .line 1578
    iget-object v4, p0, Lcom/android/server/wifi/WifiNative;->mInterfaceName:Ljava/lang/String;

    #@44
    invoke-virtual {p0, v4}, Lcom/android/server/wifi/WifiNative;->queryInterfaceIndex(Ljava/lang/String;)I

    #@47
    move-result v3

    #@48
    .line 1579
    .local v3, "wlan0Index":I
    const/4 v4, -0x1

    #@49
    if-ne v3, v4, :cond_2

    #@4b
    .line 1580
    sget-boolean v4, Lcom/android/server/wifi/WifiNative;->DBG:Z

    #@4d
    if-eqz v4, :cond_1

    #@4f
    sget-object v4, Lcom/android/server/wifi/WifiNative;->sLocalLog:Landroid/util/LocalLog;

    #@51
    new-instance v6, Ljava/lang/StringBuilder;

    #@53
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@56
    const-string/jumbo v7, "Could not find interface with name: "

    #@59
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5c
    move-result-object v6

    #@5d
    iget-object v7, p0, Lcom/android/server/wifi/WifiNative;->mInterfaceName:Ljava/lang/String;

    #@5f
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@62
    move-result-object v6

    #@63
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@66
    move-result-object v6

    #@67
    invoke-virtual {v4, v6}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@6a
    :cond_1
    monitor-exit v5

    #@6b
    .line 1581
    return v8

    #@6c
    .line 1583
    :cond_2
    :try_start_1
    sput v3, Lcom/android/server/wifi/WifiNative;->sWlan0Index:I

    #@6e
    .line 1584
    new-instance v4, Lcom/android/server/wifi/WifiNative$MonitorThread;

    #@70
    const/4 v6, 0x0

    #@71
    invoke-direct {v4, v6}, Lcom/android/server/wifi/WifiNative$MonitorThread;-><init>(Lcom/android/server/wifi/WifiNative$MonitorThread;)V

    #@74
    sput-object v4, Lcom/android/server/wifi/WifiNative;->sThread:Lcom/android/server/wifi/WifiNative$MonitorThread;

    #@76
    .line 1585
    sget-object v4, Lcom/android/server/wifi/WifiNative;->sThread:Lcom/android/server/wifi/WifiNative$MonitorThread;

    #@78
    invoke-virtual {v4}, Lcom/android/server/wifi/WifiNative$MonitorThread;->start()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@7b
    .line 1586
    const/4 v4, 0x1

    #@7c
    monitor-exit v5

    #@7d
    return v4

    #@7e
    .line 1588
    .end local v3    # "wlan0Index":I
    :cond_3
    :try_start_2
    sget-boolean v4, Lcom/android/server/wifi/WifiNative;->DBG:Z

    #@80
    if-eqz v4, :cond_4

    #@82
    sget-object v4, Lcom/android/server/wifi/WifiNative;->sLocalLog:Landroid/util/LocalLog;

    #@84
    const-string/jumbo v6, "Could not start hal"

    #@87
    invoke-virtual {v4, v6}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    #@8a
    .line 1589
    :cond_4
    const-string/jumbo v4, "WifiNative-HAL"

    #@8d
    const-string/jumbo v6, "Could not start hal"

    #@90
    invoke-static {v4, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@93
    monitor-exit v5

    #@94
    .line 1590
    return v8

    #@95
    .line 1576
    :catchall_0
    move-exception v4

    #@96
    monitor-exit v5

    #@97
    throw v4
.end method

.method public startLoggingRingBuffer(IIIILjava/lang/String;)Z
    .locals 7
    .param p1, "verboseLevel"    # I
    .param p2, "flags"    # I
    .param p3, "maxInterval"    # I
    .param p4, "minDataSize"    # I
    .param p5, "ringName"    # Ljava/lang/String;

    #@0
    .prologue
    .line 2492
    sget-object v6, Lcom/android/server/wifi/WifiNative;->sLock:Ljava/lang/Object;

    #@2
    monitor-enter v6

    #@3
    .line 2493
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/wifi/WifiNative;->isHalStarted()Z

    #@6
    move-result v0

    #@7
    if-eqz v0, :cond_0

    #@9
    .line 2494
    sget v0, Lcom/android/server/wifi/WifiNative;->sWlan0Index:I

    #@b
    move v1, p1

    #@c
    move v2, p2

    #@d
    move v3, p3

    #@e
    move v4, p4

    #@f
    move-object v5, p5

    #@10
    invoke-static/range {v0 .. v5}, Lcom/android/server/wifi/WifiNative;->startLoggingRingBufferNative(IIIIILjava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@13
    move-result v0

    #@14
    monitor-exit v6

    #@15
    return v0

    #@16
    .line 2497
    :cond_0
    const/4 v0, 0x0

    #@17
    monitor-exit v6

    #@18
    return v0

    #@19
    .line 2492
    :catchall_0
    move-exception v0

    #@1a
    monitor-exit v6

    #@1b
    throw v0
.end method

.method public startPktFateMonitoring()Z
    .locals 3

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 2842
    sget-object v1, Lcom/android/server/wifi/WifiNative;->sLock:Ljava/lang/Object;

    #@3
    monitor-enter v1

    #@4
    .line 2843
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/wifi/WifiNative;->isHalStarted()Z

    #@7
    move-result v2

    #@8
    if-eqz v2, :cond_1

    #@a
    .line 2844
    sget v2, Lcom/android/server/wifi/WifiNative;->sWlan0Index:I

    #@c
    invoke-static {v2}, Lcom/android/server/wifi/WifiNative;->startPktFateMonitoringNative(I)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@f
    move-result v2

    #@10
    if-nez v2, :cond_0

    #@12
    const/4 v0, 0x1

    #@13
    :cond_0
    monitor-exit v1

    #@14
    return v0

    #@15
    :cond_1
    monitor-exit v1

    #@16
    .line 2846
    return v0

    #@17
    .line 2842
    :catchall_0
    move-exception v0

    #@18
    monitor-exit v1

    #@19
    throw v0
.end method

.method public startRssiMonitoring(BBLcom/android/server/wifi/WifiNative$WifiRssiEventHandler;)I
    .locals 5
    .param p1, "maxRssi"    # B
    .param p2, "minRssi"    # B
    .param p3, "rssiEventHandler"    # Lcom/android/server/wifi/WifiNative$WifiRssiEventHandler;

    #@0
    .prologue
    .line 3057
    const-string/jumbo v1, "WifiNative-HAL"

    #@3
    new-instance v2, Ljava/lang/StringBuilder;

    #@5
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@8
    const-string/jumbo v3, "startRssiMonitoring: maxRssi="

    #@b
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@e
    move-result-object v2

    #@f
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@12
    move-result-object v2

    #@13
    const-string/jumbo v3, " minRssi="

    #@16
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@19
    move-result-object v2

    #@1a
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@1d
    move-result-object v2

    #@1e
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@21
    move-result-object v2

    #@22
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@25
    .line 3058
    sget-object v2, Lcom/android/server/wifi/WifiNative;->sLock:Ljava/lang/Object;

    #@27
    monitor-enter v2

    #@28
    .line 3059
    :try_start_0
    sput-object p3, Lcom/android/server/wifi/WifiNative;->sWifiRssiEventHandler:Lcom/android/server/wifi/WifiNative$WifiRssiEventHandler;

    #@2a
    .line 3060
    invoke-virtual {p0}, Lcom/android/server/wifi/WifiNative;->isHalStarted()Z

    #@2d
    move-result v1

    #@2e
    if-eqz v1, :cond_2

    #@30
    .line 3061
    sget v1, Lcom/android/server/wifi/WifiNative;->sRssiMonitorCmdId:I

    #@32
    if-eqz v1, :cond_0

    #@34
    .line 3062
    invoke-virtual {p0}, Lcom/android/server/wifi/WifiNative;->stopRssiMonitoring()I

    #@37
    .line 3065
    :cond_0
    invoke-static {}, Lcom/android/server/wifi/WifiNative;->getNewCmdIdLocked()I

    #@3a
    move-result v1

    #@3b
    sput v1, Lcom/android/server/wifi/WifiNative;->sRssiMonitorCmdId:I

    #@3d
    .line 3066
    const-string/jumbo v1, "WifiNative-HAL"

    #@40
    new-instance v3, Ljava/lang/StringBuilder;

    #@42
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@45
    const-string/jumbo v4, "sRssiMonitorCmdId = "

    #@48
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4b
    move-result-object v3

    #@4c
    sget v4, Lcom/android/server/wifi/WifiNative;->sRssiMonitorCmdId:I

    #@4e
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@51
    move-result-object v3

    #@52
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@55
    move-result-object v3

    #@56
    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@59
    .line 3067
    sget v1, Lcom/android/server/wifi/WifiNative;->sWlan0Index:I

    #@5b
    sget v3, Lcom/android/server/wifi/WifiNative;->sRssiMonitorCmdId:I

    #@5d
    invoke-static {v1, v3, p1, p2}, Lcom/android/server/wifi/WifiNative;->startRssiMonitoringNative(IIBB)I

    #@60
    move-result v0

    #@61
    .line 3069
    .local v0, "ret":I
    if-eqz v0, :cond_1

    #@63
    .line 3070
    const/4 v1, 0x0

    #@64
    sput v1, Lcom/android/server/wifi/WifiNative;->sRssiMonitorCmdId:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@66
    :cond_1
    monitor-exit v2

    #@67
    .line 3072
    return v0

    #@68
    .line 3074
    .end local v0    # "ret":I
    :cond_2
    const/4 v1, -0x1

    #@69
    monitor-exit v2

    #@6a
    return v1

    #@6b
    .line 3058
    :catchall_0
    move-exception v1

    #@6c
    monitor-exit v2

    #@6d
    throw v1
.end method

.method public startScan(Lcom/android/server/wifi/WifiNative$ScanSettings;Lcom/android/server/wifi/WifiNative$ScanEventHandler;)Z
    .locals 4
    .param p1, "settings"    # Lcom/android/server/wifi/WifiNative$ScanSettings;
    .param p2, "eventHandler"    # Lcom/android/server/wifi/WifiNative$ScanEventHandler;

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 1917
    sget-object v1, Lcom/android/server/wifi/WifiNative;->sLock:Ljava/lang/Object;

    #@3
    monitor-enter v1

    #@4
    .line 1918
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/wifi/WifiNative;->isHalStarted()Z

    #@7
    move-result v0

    #@8
    if-eqz v0, :cond_3

    #@a
    .line 1919
    sget v0, Lcom/android/server/wifi/WifiNative;->sScanCmdId:I

    #@c
    if-eqz v0, :cond_1

    #@e
    .line 1920
    invoke-virtual {p0}, Lcom/android/server/wifi/WifiNative;->stopScan()V

    #@11
    .line 1925
    :cond_0
    :goto_0
    invoke-static {}, Lcom/android/server/wifi/WifiNative;->getNewCmdIdLocked()I

    #@14
    move-result v0

    #@15
    sput v0, Lcom/android/server/wifi/WifiNative;->sScanCmdId:I

    #@17
    .line 1927
    sput-object p1, Lcom/android/server/wifi/WifiNative;->sScanSettings:Lcom/android/server/wifi/WifiNative$ScanSettings;

    #@19
    .line 1928
    sput-object p2, Lcom/android/server/wifi/WifiNative;->sScanEventHandler:Lcom/android/server/wifi/WifiNative$ScanEventHandler;

    #@1b
    .line 1930
    sget v0, Lcom/android/server/wifi/WifiNative;->sWlan0Index:I

    #@1d
    sget v2, Lcom/android/server/wifi/WifiNative;->sScanCmdId:I

    #@1f
    invoke-static {v0, v2, p1}, Lcom/android/server/wifi/WifiNative;->startScanNative(IILcom/android/server/wifi/WifiNative$ScanSettings;)Z

    #@22
    move-result v0

    #@23
    if-nez v0, :cond_2

    #@25
    .line 1931
    const/4 v0, 0x0

    #@26
    sput-object v0, Lcom/android/server/wifi/WifiNative;->sScanEventHandler:Lcom/android/server/wifi/WifiNative$ScanEventHandler;

    #@28
    .line 1932
    const/4 v0, 0x0

    #@29
    sput-object v0, Lcom/android/server/wifi/WifiNative;->sScanSettings:Lcom/android/server/wifi/WifiNative$ScanSettings;

    #@2b
    .line 1933
    const/4 v0, 0x0

    #@2c
    sput v0, Lcom/android/server/wifi/WifiNative;->sScanCmdId:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@2e
    monitor-exit v1

    #@2f
    .line 1934
    return v3

    #@30
    .line 1921
    :cond_1
    :try_start_1
    sget-object v0, Lcom/android/server/wifi/WifiNative;->sScanSettings:Lcom/android/server/wifi/WifiNative$ScanSettings;

    #@32
    if-nez v0, :cond_0

    #@34
    sget-object v0, Lcom/android/server/wifi/WifiNative;->sScanEventHandler:Lcom/android/server/wifi/WifiNative$ScanEventHandler;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@36
    if-eqz v0, :cond_0

    #@38
    goto :goto_0

    #@39
    .line 1937
    :cond_2
    const/4 v0, 0x1

    #@3a
    monitor-exit v1

    #@3b
    return v0

    #@3c
    :cond_3
    monitor-exit v1

    #@3d
    .line 1939
    return v3

    #@3e
    .line 1917
    :catchall_0
    move-exception v0

    #@3f
    monitor-exit v1

    #@40
    throw v0
.end method

.method public startSendingOffloadedPacket(ILcom/android/server/connectivity/KeepalivePacketData;I)I
    .locals 10
    .param p1, "slot"    # I
    .param p2, "keepAlivePacket"    # Lcom/android/server/connectivity/KeepalivePacketData;
    .param p3, "period"    # I

    #@0
    .prologue
    const/4 v4, 0x6

    #@1
    .line 3004
    const-string/jumbo v0, "WifiNative-HAL"

    #@4
    new-instance v1, Ljava/lang/StringBuilder;

    #@6
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@9
    const-string/jumbo v3, "startSendingOffloadedPacket slot="

    #@c
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@f
    move-result-object v1

    #@10
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@13
    move-result-object v1

    #@14
    const-string/jumbo v3, " period="

    #@17
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1a
    move-result-object v1

    #@1b
    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@1e
    move-result-object v1

    #@1f
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@22
    move-result-object v1

    #@23
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@26
    .line 3006
    invoke-virtual {p0}, Lcom/android/server/wifi/WifiNative;->getMacAddress()Ljava/lang/String;

    #@29
    move-result-object v0

    #@2a
    const-string/jumbo v1, ":"

    #@2d
    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    #@30
    move-result-object v8

    #@31
    .line 3007
    .local v8, "macAddrStr":[Ljava/lang/String;
    new-array v2, v4, [B

    #@33
    .line 3008
    .local v2, "srcMac":[B
    const/4 v7, 0x0

    #@34
    .local v7, "i":I
    :goto_0
    if-ge v7, v4, :cond_0

    #@36
    .line 3009
    aget-object v0, v8, v7

    #@38
    const/16 v1, 0x10

    #@3a
    invoke-static {v0, v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    #@3d
    move-result v0

    #@3e
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@41
    move-result-object v6

    #@42
    .line 3010
    .local v6, "hexVal":Ljava/lang/Integer;
    invoke-virtual {v6}, Ljava/lang/Integer;->byteValue()B

    #@45
    move-result v0

    #@46
    aput-byte v0, v2, v7

    #@48
    .line 3008
    add-int/lit8 v7, v7, 0x1

    #@4a
    goto :goto_0

    #@4b
    .line 3012
    .end local v6    # "hexVal":Ljava/lang/Integer;
    :cond_0
    sget-object v9, Lcom/android/server/wifi/WifiNative;->sLock:Ljava/lang/Object;

    #@4d
    monitor-enter v9

    #@4e
    .line 3013
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/wifi/WifiNative;->isHalStarted()Z

    #@51
    move-result v0

    #@52
    if-eqz v0, :cond_1

    #@54
    .line 3014
    sget v0, Lcom/android/server/wifi/WifiNative;->sWlan0Index:I

    #@56
    .line 3015
    iget-object v3, p2, Lcom/android/server/connectivity/KeepalivePacketData;->dstMac:[B

    #@58
    iget-object v4, p2, Lcom/android/server/connectivity/KeepalivePacketData;->data:[B

    #@5a
    move v1, p1

    #@5b
    move v5, p3

    #@5c
    .line 3014
    invoke-static/range {v0 .. v5}, Lcom/android/server/wifi/WifiNative;->startSendingOffloadedPacketNative(II[B[B[BI)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@5f
    move-result v0

    #@60
    monitor-exit v9

    #@61
    return v0

    #@62
    .line 3017
    :cond_1
    const/4 v0, -0x1

    #@63
    monitor-exit v9

    #@64
    return v0

    #@65
    .line 3012
    :catchall_0
    move-exception v0

    #@66
    monitor-exit v9

    #@67
    throw v0
.end method

.method public startSupplicant(Z)Z
    .locals 2
    .param p1, "p2pSupported"    # Z

    #@0
    .prologue
    .line 207
    sget-object v0, Lcom/android/server/wifi/WifiNative;->sLock:Ljava/lang/Object;

    #@2
    monitor-enter v0

    #@3
    .line 208
    :try_start_0
    invoke-static {p1}, Lcom/android/server/wifi/WifiNative;->startSupplicantNative(Z)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@6
    move-result v1

    #@7
    monitor-exit v0

    #@8
    return v1

    #@9
    .line 207
    :catchall_0
    move-exception v1

    #@a
    monitor-exit v0

    #@b
    throw v1
.end method

.method public startTdls(Ljava/lang/String;Z)V
    .locals 3
    .param p1, "macAddr"    # Ljava/lang/String;
    .param p2, "enable"    # Z

    #@0
    .prologue
    .line 959
    if-eqz p2, :cond_0

    #@2
    .line 960
    sget-object v1, Lcom/android/server/wifi/WifiNative;->sLock:Ljava/lang/Object;

    #@4
    monitor-enter v1

    #@5
    .line 961
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    #@7
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@a
    const-string/jumbo v2, "TDLS_DISCOVER "

    #@d
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@10
    move-result-object v0

    #@11
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@14
    move-result-object v0

    #@15
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@18
    move-result-object v0

    #@19
    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiNative;->doBooleanCommand(Ljava/lang/String;)Z

    #@1c
    .line 962
    new-instance v0, Ljava/lang/StringBuilder;

    #@1e
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@21
    const-string/jumbo v2, "TDLS_SETUP "

    #@24
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@27
    move-result-object v0

    #@28
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2b
    move-result-object v0

    #@2c
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2f
    move-result-object v0

    #@30
    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiNative;->doBooleanCommand(Ljava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@33
    monitor-exit v1

    #@34
    .line 958
    :goto_0
    return-void

    #@35
    .line 960
    :catchall_0
    move-exception v0

    #@36
    monitor-exit v1

    #@37
    throw v0

    #@38
    .line 965
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    #@3a
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@3d
    const-string/jumbo v1, "TDLS_TEARDOWN "

    #@40
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@43
    move-result-object v0

    #@44
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@47
    move-result-object v0

    #@48
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@4b
    move-result-object v0

    #@4c
    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiNative;->doBooleanCommand(Ljava/lang/String;)Z

    #@4f
    goto :goto_0
.end method

.method public startWpsPbc(Ljava/lang/String;)Z
    .locals 2
    .param p1, "bssid"    # Ljava/lang/String;

    #@0
    .prologue
    .line 992
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_0

    #@6
    .line 993
    const-string/jumbo v0, "WPS_PBC"

    #@9
    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiNative;->doBooleanCommand(Ljava/lang/String;)Z

    #@c
    move-result v0

    #@d
    return v0

    #@e
    .line 995
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    #@10
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@13
    const-string/jumbo v1, "WPS_PBC "

    #@16
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@19
    move-result-object v0

    #@1a
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1d
    move-result-object v0

    #@1e
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@21
    move-result-object v0

    #@22
    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiNative;->doBooleanCommand(Ljava/lang/String;)Z

    #@25
    move-result v0

    #@26
    return v0
.end method

.method public startWpsPbc(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3
    .param p1, "iface"    # Ljava/lang/String;
    .param p2, "bssid"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1000
    sget-object v1, Lcom/android/server/wifi/WifiNative;->sLock:Ljava/lang/Object;

    #@2
    monitor-enter v1

    #@3
    .line 1001
    :try_start_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@6
    move-result v0

    #@7
    if-eqz v0, :cond_0

    #@9
    .line 1002
    new-instance v0, Ljava/lang/StringBuilder;

    #@b
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@e
    const-string/jumbo v2, "IFNAME="

    #@11
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@14
    move-result-object v0

    #@15
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@18
    move-result-object v0

    #@19
    const-string/jumbo v2, " WPS_PBC"

    #@1c
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1f
    move-result-object v0

    #@20
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@23
    move-result-object v0

    #@24
    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiNative;->doBooleanCommandNative(Ljava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@27
    move-result v0

    #@28
    monitor-exit v1

    #@29
    return v0

    #@2a
    .line 1004
    :cond_0
    :try_start_1
    new-instance v0, Ljava/lang/StringBuilder;

    #@2c
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@2f
    const-string/jumbo v2, "IFNAME="

    #@32
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@35
    move-result-object v0

    #@36
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@39
    move-result-object v0

    #@3a
    const-string/jumbo v2, " WPS_PBC "

    #@3d
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@40
    move-result-object v0

    #@41
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@44
    move-result-object v0

    #@45
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@48
    move-result-object v0

    #@49
    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiNative;->doBooleanCommandNative(Ljava/lang/String;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@4c
    move-result v0

    #@4d
    monitor-exit v1

    #@4e
    return v0

    #@4f
    .line 1000
    :catchall_0
    move-exception v0

    #@50
    monitor-exit v1

    #@51
    throw v0
.end method

.method public startWpsPinDisplay(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "bssid"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1023
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_0

    #@6
    .line 1024
    const-string/jumbo v0, "WPS_PIN any"

    #@9
    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiNative;->doStringCommand(Ljava/lang/String;)Ljava/lang/String;

    #@c
    move-result-object v0

    #@d
    return-object v0

    #@e
    .line 1026
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    #@10
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@13
    const-string/jumbo v1, "WPS_PIN "

    #@16
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@19
    move-result-object v0

    #@1a
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1d
    move-result-object v0

    #@1e
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@21
    move-result-object v0

    #@22
    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiNative;->doStringCommand(Ljava/lang/String;)Ljava/lang/String;

    #@25
    move-result-object v0

    #@26
    return-object v0
.end method

.method public startWpsPinDisplay(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "iface"    # Ljava/lang/String;
    .param p2, "bssid"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1031
    sget-object v1, Lcom/android/server/wifi/WifiNative;->sLock:Ljava/lang/Object;

    #@2
    monitor-enter v1

    #@3
    .line 1032
    :try_start_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@6
    move-result v0

    #@7
    if-eqz v0, :cond_0

    #@9
    .line 1033
    new-instance v0, Ljava/lang/StringBuilder;

    #@b
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@e
    const-string/jumbo v2, "IFNAME="

    #@11
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@14
    move-result-object v0

    #@15
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@18
    move-result-object v0

    #@19
    const-string/jumbo v2, " WPS_PIN any"

    #@1c
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1f
    move-result-object v0

    #@20
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@23
    move-result-object v0

    #@24
    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiNative;->doStringCommandNative(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@27
    move-result-object v0

    #@28
    monitor-exit v1

    #@29
    return-object v0

    #@2a
    .line 1035
    :cond_0
    :try_start_1
    new-instance v0, Ljava/lang/StringBuilder;

    #@2c
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@2f
    const-string/jumbo v2, "IFNAME="

    #@32
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@35
    move-result-object v0

    #@36
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@39
    move-result-object v0

    #@3a
    const-string/jumbo v2, " WPS_PIN "

    #@3d
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@40
    move-result-object v0

    #@41
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@44
    move-result-object v0

    #@45
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@48
    move-result-object v0

    #@49
    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiNative;->doStringCommandNative(Ljava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@4c
    move-result-object v0

    #@4d
    monitor-exit v1

    #@4e
    return-object v0

    #@4f
    .line 1031
    :catchall_0
    move-exception v0

    #@50
    monitor-exit v1

    #@51
    throw v0
.end method

.method public startWpsPinKeypad(Ljava/lang/String;)Z
    .locals 2
    .param p1, "pin"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1010
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_0

    #@6
    const/4 v0, 0x0

    #@7
    return v0

    #@8
    .line 1011
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    #@a
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@d
    const-string/jumbo v1, "WPS_PIN any "

    #@10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@13
    move-result-object v0

    #@14
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@17
    move-result-object v0

    #@18
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1b
    move-result-object v0

    #@1c
    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiNative;->doBooleanCommand(Ljava/lang/String;)Z

    #@1f
    move-result v0

    #@20
    return v0
.end method

.method public startWpsPinKeypad(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3
    .param p1, "iface"    # Ljava/lang/String;
    .param p2, "pin"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1015
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_0

    #@6
    const/4 v0, 0x0

    #@7
    return v0

    #@8
    .line 1016
    :cond_0
    sget-object v1, Lcom/android/server/wifi/WifiNative;->sLock:Ljava/lang/Object;

    #@a
    monitor-enter v1

    #@b
    .line 1017
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    #@d
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@10
    const-string/jumbo v2, "IFNAME="

    #@13
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@16
    move-result-object v0

    #@17
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1a
    move-result-object v0

    #@1b
    const-string/jumbo v2, " WPS_PIN any "

    #@1e
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@21
    move-result-object v0

    #@22
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@25
    move-result-object v0

    #@26
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@29
    move-result-object v0

    #@2a
    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiNative;->doBooleanCommandNative(Ljava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@2d
    move-result v0

    #@2e
    monitor-exit v1

    #@2f
    return v0

    #@30
    .line 1016
    :catchall_0
    move-exception v0

    #@31
    monitor-exit v1

    #@32
    throw v0
.end method

.method public startWpsRegistrar(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2
    .param p1, "bssid"    # Ljava/lang/String;
    .param p2, "pin"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1067
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@3
    move-result v0

    #@4
    if-nez v0, :cond_0

    #@6
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@9
    move-result v0

    #@a
    if-eqz v0, :cond_1

    #@c
    :cond_0
    const/4 v0, 0x0

    #@d
    return v0

    #@e
    .line 1068
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    #@10
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@13
    const-string/jumbo v1, "WPS_REG "

    #@16
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@19
    move-result-object v0

    #@1a
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1d
    move-result-object v0

    #@1e
    const-string/jumbo v1, " "

    #@21
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@24
    move-result-object v0

    #@25
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@28
    move-result-object v0

    #@29
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2c
    move-result-object v0

    #@2d
    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiNative;->doBooleanCommand(Ljava/lang/String;)Z

    #@30
    move-result v0

    #@31
    return v0
.end method

.method public status()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 548
    const/4 v0, 0x0

    #@1
    invoke-virtual {p0, v0}, Lcom/android/server/wifi/WifiNative;->status(Z)Ljava/lang/String;

    #@4
    move-result-object v0

    #@5
    return-object v0
.end method

.method public status(Z)Ljava/lang/String;
    .locals 1
    .param p1, "noEvents"    # Z

    #@0
    .prologue
    .line 552
    if-eqz p1, :cond_0

    #@2
    .line 553
    const-string/jumbo v0, "STATUS-NO_EVENTS"

    #@5
    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiNative;->doStringCommand(Ljava/lang/String;)Ljava/lang/String;

    #@8
    move-result-object v0

    #@9
    return-object v0

    #@a
    .line 555
    :cond_0
    const-string/jumbo v0, "STATUS"

    #@d
    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiNative;->doStringCommand(Ljava/lang/String;)Ljava/lang/String;

    #@10
    move-result-object v0

    #@11
    return-object v0
.end method

.method public stopDriver()Z
    .locals 1

    #@0
    .prologue
    .line 782
    const-string/jumbo v0, "DRIVER STOP"

    #@3
    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiNative;->doBooleanCommand(Ljava/lang/String;)Z

    #@6
    move-result v0

    #@7
    return v0
.end method

.method public stopFilteringMulticastV4Packets()Z
    .locals 1

    #@0
    .prologue
    .line 821
    const-string/jumbo v0, "DRIVER RXFILTER-STOP"

    #@3
    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiNative;->doBooleanCommand(Ljava/lang/String;)Z

    #@6
    move-result v0

    #@7
    if-eqz v0, :cond_0

    #@9
    .line 822
    const-string/jumbo v0, "DRIVER RXFILTER-ADD 2"

    #@c
    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiNative;->doBooleanCommand(Ljava/lang/String;)Z

    #@f
    move-result v0

    #@10
    .line 821
    if-eqz v0, :cond_0

    #@12
    .line 823
    const-string/jumbo v0, "DRIVER RXFILTER-START"

    #@15
    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiNative;->doBooleanCommand(Ljava/lang/String;)Z

    #@18
    move-result v0

    #@19
    .line 821
    :goto_0
    return v0

    #@1a
    :cond_0
    const/4 v0, 0x0

    #@1b
    goto :goto_0
.end method

.method public stopFilteringMulticastV6Packets()Z
    .locals 1

    #@0
    .prologue
    .line 841
    const-string/jumbo v0, "DRIVER RXFILTER-STOP"

    #@3
    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiNative;->doBooleanCommand(Ljava/lang/String;)Z

    #@6
    move-result v0

    #@7
    if-eqz v0, :cond_0

    #@9
    .line 842
    const-string/jumbo v0, "DRIVER RXFILTER-ADD 3"

    #@c
    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiNative;->doBooleanCommand(Ljava/lang/String;)Z

    #@f
    move-result v0

    #@10
    .line 841
    if-eqz v0, :cond_0

    #@12
    .line 843
    const-string/jumbo v0, "DRIVER RXFILTER-START"

    #@15
    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiNative;->doBooleanCommand(Ljava/lang/String;)Z

    #@18
    move-result v0

    #@19
    .line 841
    :goto_0
    return v0

    #@1a
    :cond_0
    const/4 v0, 0x0

    #@1b
    goto :goto_0
.end method

.method public stopHal()V
    .locals 6

    #@0
    .prologue
    .line 1596
    sget-object v2, Lcom/android/server/wifi/WifiNative;->sLock:Ljava/lang/Object;

    #@2
    monitor-enter v2

    #@3
    .line 1597
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/wifi/WifiNative;->isHalStarted()Z

    #@6
    move-result v1

    #@7
    if-eqz v1, :cond_0

    #@9
    .line 1598
    invoke-static {}, Lcom/android/server/wifi/WifiNative;->stopHalNative()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@c
    .line 1600
    :try_start_1
    sget-object v1, Lcom/android/server/wifi/WifiNative;->sThread:Lcom/android/server/wifi/WifiNative$MonitorThread;

    #@e
    const-wide/16 v4, 0x3e8

    #@10
    invoke-virtual {v1, v4, v5}, Lcom/android/server/wifi/WifiNative$MonitorThread;->join(J)V

    #@13
    .line 1601
    const-string/jumbo v1, "WifiNative-HAL"

    #@16
    const-string/jumbo v3, "HAL event thread stopped successfully"

    #@19
    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@1c
    .line 1605
    :goto_0
    const/4 v1, 0x0

    #@1d
    :try_start_2
    sput-object v1, Lcom/android/server/wifi/WifiNative;->sThread:Lcom/android/server/wifi/WifiNative$MonitorThread;

    #@1f
    .line 1606
    const-wide/16 v4, 0x0

    #@21
    sput-wide v4, Lcom/android/server/wifi/WifiNative;->sWifiHalHandle:J

    #@23
    .line 1607
    const/4 v1, 0x0

    #@24
    sput-object v1, Lcom/android/server/wifi/WifiNative;->sWifiIfaceHandles:[J

    #@26
    .line 1608
    const/4 v1, -0x1

    #@27
    sput v1, Lcom/android/server/wifi/WifiNative;->sWlan0Index:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@29
    :cond_0
    monitor-exit v2

    #@2a
    .line 1595
    return-void

    #@2b
    .line 1602
    :catch_0
    move-exception v0

    #@2c
    .line 1603
    .local v0, "e":Ljava/lang/InterruptedException;
    :try_start_3
    const-string/jumbo v1, "WifiNative-HAL"

    #@2f
    const-string/jumbo v3, "Could not stop HAL cleanly"

    #@32
    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@35
    goto :goto_0

    #@36
    .line 1596
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v1

    #@37
    monitor-exit v2

    #@38
    throw v1
.end method

.method public stopRssiMonitoring()I
    .locals 4

    #@0
    .prologue
    .line 3082
    const-string/jumbo v1, "WifiNative-HAL"

    #@3
    new-instance v2, Ljava/lang/StringBuilder;

    #@5
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@8
    const-string/jumbo v3, "stopRssiMonitoring, cmdId "

    #@b
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@e
    move-result-object v2

    #@f
    sget v3, Lcom/android/server/wifi/WifiNative;->sRssiMonitorCmdId:I

    #@11
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@14
    move-result-object v2

    #@15
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@18
    move-result-object v2

    #@19
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@1c
    .line 3083
    sget-object v2, Lcom/android/server/wifi/WifiNative;->sLock:Ljava/lang/Object;

    #@1e
    monitor-enter v2

    #@1f
    .line 3084
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/wifi/WifiNative;->isHalStarted()Z

    #@22
    move-result v1

    #@23
    if-eqz v1, :cond_1

    #@25
    .line 3085
    const/4 v0, 0x0

    #@26
    .line 3086
    .local v0, "ret":I
    sget v1, Lcom/android/server/wifi/WifiNative;->sRssiMonitorCmdId:I

    #@28
    if-eqz v1, :cond_0

    #@2a
    .line 3087
    sget v1, Lcom/android/server/wifi/WifiNative;->sWlan0Index:I

    #@2c
    sget v3, Lcom/android/server/wifi/WifiNative;->sRssiMonitorCmdId:I

    #@2e
    invoke-static {v1, v3}, Lcom/android/server/wifi/WifiNative;->stopRssiMonitoringNative(II)I

    #@31
    move-result v0

    #@32
    .line 3089
    :cond_0
    const/4 v1, 0x0

    #@33
    sput v1, Lcom/android/server/wifi/WifiNative;->sRssiMonitorCmdId:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@35
    monitor-exit v2

    #@36
    .line 3090
    return v0

    #@37
    .line 3092
    .end local v0    # "ret":I
    :cond_1
    const/4 v1, -0x1

    #@38
    monitor-exit v2

    #@39
    return v1

    #@3a
    .line 3083
    :catchall_0
    move-exception v1

    #@3b
    monitor-exit v2

    #@3c
    throw v1
.end method

.method public stopScan()V
    .locals 3

    #@0
    .prologue
    .line 1945
    sget-object v1, Lcom/android/server/wifi/WifiNative;->sLock:Ljava/lang/Object;

    #@2
    monitor-enter v1

    #@3
    .line 1946
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/wifi/WifiNative;->isHalStarted()Z

    #@6
    move-result v0

    #@7
    if-eqz v0, :cond_1

    #@9
    .line 1947
    sget v0, Lcom/android/server/wifi/WifiNative;->sScanCmdId:I

    #@b
    if-eqz v0, :cond_0

    #@d
    .line 1948
    sget v0, Lcom/android/server/wifi/WifiNative;->sWlan0Index:I

    #@f
    sget v2, Lcom/android/server/wifi/WifiNative;->sScanCmdId:I

    #@11
    invoke-static {v0, v2}, Lcom/android/server/wifi/WifiNative;->stopScanNative(II)Z

    #@14
    .line 1950
    :cond_0
    const/4 v0, 0x0

    #@15
    sput-object v0, Lcom/android/server/wifi/WifiNative;->sScanSettings:Lcom/android/server/wifi/WifiNative$ScanSettings;

    #@17
    .line 1951
    const/4 v0, 0x0

    #@18
    sput-object v0, Lcom/android/server/wifi/WifiNative;->sScanEventHandler:Lcom/android/server/wifi/WifiNative$ScanEventHandler;

    #@1a
    .line 1952
    const/4 v0, 0x0

    #@1b
    sput v0, Lcom/android/server/wifi/WifiNative;->sScanCmdId:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1d
    :cond_1
    monitor-exit v1

    #@1e
    .line 1944
    return-void

    #@1f
    .line 1945
    :catchall_0
    move-exception v0

    #@20
    monitor-exit v1

    #@21
    throw v0
.end method

.method public stopSendingOffloadedPacket(I)I
    .locals 3
    .param p1, "slot"    # I

    #@0
    .prologue
    .line 3026
    const-string/jumbo v0, "WifiNative-HAL"

    #@3
    new-instance v1, Ljava/lang/StringBuilder;

    #@5
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@8
    const-string/jumbo v2, "stopSendingOffloadedPacket "

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
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@1a
    .line 3027
    sget-object v1, Lcom/android/server/wifi/WifiNative;->sLock:Ljava/lang/Object;

    #@1c
    monitor-enter v1

    #@1d
    .line 3028
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/wifi/WifiNative;->isHalStarted()Z

    #@20
    move-result v0

    #@21
    if-eqz v0, :cond_0

    #@23
    .line 3029
    sget v0, Lcom/android/server/wifi/WifiNative;->sWlan0Index:I

    #@25
    invoke-static {v0, p1}, Lcom/android/server/wifi/WifiNative;->stopSendingOffloadedPacketNative(II)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@28
    move-result v0

    #@29
    monitor-exit v1

    #@2a
    return v0

    #@2b
    .line 3031
    :cond_0
    const/4 v0, -0x1

    #@2c
    monitor-exit v1

    #@2d
    return v0

    #@2e
    .line 3027
    :catchall_0
    move-exception v0

    #@2f
    monitor-exit v1

    #@30
    throw v0
.end method

.method public stopSupplicant()Z
    .locals 1

    #@0
    .prologue
    .line 396
    const-string/jumbo v0, "TERMINATE"

    #@3
    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiNative;->doBooleanCommand(Ljava/lang/String;)Z

    #@6
    move-result v0

    #@7
    return v0
.end method

.method public trackSignificantWifiChange(Landroid/net/wifi/WifiScanner$WifiChangeSettings;Lcom/android/server/wifi/WifiNative$SignificantWifiChangeEventHandler;)Z
    .locals 4
    .param p1, "settings"    # Landroid/net/wifi/WifiScanner$WifiChangeSettings;
    .param p2, "handler"    # Lcom/android/server/wifi/WifiNative$SignificantWifiChangeEventHandler;

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 2087
    sget-object v1, Lcom/android/server/wifi/WifiNative;->sLock:Ljava/lang/Object;

    #@3
    monitor-enter v1

    #@4
    .line 2088
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/wifi/WifiNative;->isHalStarted()Z

    #@7
    move-result v0

    #@8
    if-eqz v0, :cond_2

    #@a
    .line 2089
    sget v0, Lcom/android/server/wifi/WifiNative;->sSignificantWifiChangeCmdId:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@c
    if-eqz v0, :cond_0

    #@e
    monitor-exit v1

    #@f
    .line 2090
    return v3

    #@10
    .line 2092
    :cond_0
    :try_start_1
    invoke-static {}, Lcom/android/server/wifi/WifiNative;->getNewCmdIdLocked()I

    #@13
    move-result v0

    #@14
    sput v0, Lcom/android/server/wifi/WifiNative;->sSignificantWifiChangeCmdId:I

    #@16
    .line 2095
    sput-object p2, Lcom/android/server/wifi/WifiNative;->sSignificantWifiChangeHandler:Lcom/android/server/wifi/WifiNative$SignificantWifiChangeEventHandler;

    #@18
    .line 2096
    sget v0, Lcom/android/server/wifi/WifiNative;->sWlan0Index:I

    #@1a
    sget v2, Lcom/android/server/wifi/WifiNative;->sSignificantWifiChangeCmdId:I

    #@1c
    invoke-static {v0, v2, p1}, Lcom/android/server/wifi/WifiNative;->trackSignificantWifiChangeNative(IILandroid/net/wifi/WifiScanner$WifiChangeSettings;)Z

    #@1f
    move-result v0

    #@20
    if-nez v0, :cond_1

    #@22
    .line 2098
    const/4 v0, 0x0

    #@23
    sput-object v0, Lcom/android/server/wifi/WifiNative;->sSignificantWifiChangeHandler:Lcom/android/server/wifi/WifiNative$SignificantWifiChangeEventHandler;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@25
    monitor-exit v1

    #@26
    .line 2099
    return v3

    #@27
    .line 2102
    :cond_1
    const/4 v0, 0x1

    #@28
    monitor-exit v1

    #@29
    return v0

    #@2a
    :cond_2
    monitor-exit v1

    #@2b
    .line 2104
    return v3

    #@2c
    .line 2087
    :catchall_0
    move-exception v0

    #@2d
    monitor-exit v1

    #@2e
    throw v0
.end method

.method public umtsAuthFailedResponse(I)Z
    .locals 2
    .param p1, "id"    # I

    #@0
    .prologue
    .line 1058
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    const-string/jumbo v1, "CTRL-RSP-SIM-"

    #@8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b
    move-result-object v0

    #@c
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@f
    move-result-object v0

    #@10
    const-string/jumbo v1, ":UMTS-FAIL"

    #@13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@16
    move-result-object v0

    #@17
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1a
    move-result-object v0

    #@1b
    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiNative;->doBooleanCommand(Ljava/lang/String;)Z

    #@1e
    move-result v0

    #@1f
    return v0
.end method

.method public unloadDriver()Z
    .locals 2

    #@0
    .prologue
    .line 200
    sget-object v0, Lcom/android/server/wifi/WifiNative;->sLock:Ljava/lang/Object;

    #@2
    monitor-enter v0

    #@3
    .line 201
    :try_start_0
    invoke-static {}, Lcom/android/server/wifi/WifiNative;->unloadDriverNative()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@6
    move-result v1

    #@7
    monitor-exit v0

    #@8
    return v1

    #@9
    .line 200
    :catchall_0
    move-exception v1

    #@a
    monitor-exit v0

    #@b
    throw v1
.end method

.method public untrackSignificantWifiChange()V
    .locals 3

    #@0
    .prologue
    .line 2111
    sget-object v1, Lcom/android/server/wifi/WifiNative;->sLock:Ljava/lang/Object;

    #@2
    monitor-enter v1

    #@3
    .line 2112
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/wifi/WifiNative;->isHalStarted()Z

    #@6
    move-result v0

    #@7
    if-eqz v0, :cond_0

    #@9
    .line 2113
    sget v0, Lcom/android/server/wifi/WifiNative;->sSignificantWifiChangeCmdId:I

    #@b
    if-eqz v0, :cond_0

    #@d
    .line 2114
    sget v0, Lcom/android/server/wifi/WifiNative;->sWlan0Index:I

    #@f
    sget v2, Lcom/android/server/wifi/WifiNative;->sSignificantWifiChangeCmdId:I

    #@11
    invoke-static {v0, v2}, Lcom/android/server/wifi/WifiNative;->untrackSignificantWifiChangeNative(II)Z

    #@14
    .line 2115
    const/4 v0, 0x0

    #@15
    sput v0, Lcom/android/server/wifi/WifiNative;->sSignificantWifiChangeCmdId:I

    #@17
    .line 2116
    const/4 v0, 0x0

    #@18
    sput-object v0, Lcom/android/server/wifi/WifiNative;->sSignificantWifiChangeHandler:Lcom/android/server/wifi/WifiNative$SignificantWifiChangeEventHandler;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1a
    :cond_0
    monitor-exit v1

    #@1b
    .line 2110
    return-void

    #@1c
    .line 2111
    :catchall_0
    move-exception v0

    #@1d
    monitor-exit v1

    #@1e
    throw v0
.end method

.method public waitForEvent()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 244
    invoke-static {}, Lcom/android/server/wifi/WifiNative;->waitForEventNative()Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method
