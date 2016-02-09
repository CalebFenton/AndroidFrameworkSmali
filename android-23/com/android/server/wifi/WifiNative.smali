.class public Lcom/android/server/wifi/WifiNative;
.super Ljava/lang/Object;
.source "WifiNative.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wifi/WifiNative$MonitorThread;,
        Lcom/android/server/wifi/WifiNative$ScanCapabilities;,
        Lcom/android/server/wifi/WifiNative$ChannelSettings;,
        Lcom/android/server/wifi/WifiNative$BucketSettings;,
        Lcom/android/server/wifi/WifiNative$ScanSettings;,
        Lcom/android/server/wifi/WifiNative$ScanEventHandler;,
        Lcom/android/server/wifi/WifiNative$HotlistEventHandler;,
        Lcom/android/server/wifi/WifiNative$SignificantWifiChangeEventHandler;,
        Lcom/android/server/wifi/WifiNative$RttEventHandler;,
        Lcom/android/server/wifi/WifiNative$TdlsEventHandler;,
        Lcom/android/server/wifi/WifiNative$TdlsStatus;,
        Lcom/android/server/wifi/WifiNative$TdlsCapabilities;,
        Lcom/android/server/wifi/WifiNative$WifiLoggerEventHandler;,
        Lcom/android/server/wifi/WifiNative$RingBufferStatus;,
        Lcom/android/server/wifi/WifiNative$WifiPnoNetwork;,
        Lcom/android/server/wifi/WifiNative$WifiPnoEventHandler;,
        Lcom/android/server/wifi/WifiNative$WifiLazyRoamParams;
    }
.end annotation


# static fields
.field static final BLUETOOTH_COEXISTENCE_MODE_DISABLED:I = 0x1

.field static final BLUETOOTH_COEXISTENCE_MODE_ENABLED:I = 0x0

.field static final BLUETOOTH_COEXISTENCE_MODE_SENSE:I = 0x2

.field private static DBG:Z = false

.field private static final DEFAULT_GROUP_OWNER_INTENT:I = 0x6

.field private static final EID_EXTENDED_CAPS:I = 0x7f

.field private static final EID_HT_OPERATION:I = 0x3d

.field private static final EID_VHT_OPERATION:I = 0xc0

.field private static final RTT_RESP_ENABLE_BIT:I = 0x46

.field static final SCAN_WITHOUT_CONNECTION_SETUP:I = 0x1

.field static final SCAN_WITH_CONNECTION_SETUP:I = 0x2

.field private static final STOP_HAL_TIMEOUT_MS:I = 0x3e8

.field private static final TAG:Ljava/lang/String; = "WifiNative-HAL"

.field private static WIFI_SCAN_BUFFER_FULL:I

.field private static WIFI_SCAN_COMPLETE:I

.field private static mFwMemoryDump:[B

.field private static final mLocalLog:Landroid/util/LocalLog;

.field static final mLock:Ljava/lang/Object;

.field private static sCmdId:I

.field private static sHotlistCmdId:I

.field private static sHotlistEventHandler:Lcom/android/server/wifi/WifiNative$HotlistEventHandler;

.field private static sLogCmdId:I

.field private static sP2p0Index:I

.field private static sPnoCmdId:I

.field private static sRttCmdId:I

.field private static sRttEventHandler:Lcom/android/server/wifi/WifiNative$RttEventHandler;

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

.field private static sWifiPnoEventHandler:Lcom/android/server/wifi/WifiNative$WifiPnoEventHandler;

.field private static sWlan0Index:I


# instance fields
.field public final mInterfaceName:Ljava/lang/String;

.field public final mInterfacePrefix:Ljava/lang/String;

.field private mSuspendOptEnabled:Z

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
    .locals 5

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    const/4 v3, -0x1

    #@2
    const/4 v2, 0x0

    #@3
    .line 62
    sput-boolean v2, Lcom/android/server/wifi/WifiNative;->DBG:Z

    #@5
    .line 75
    new-instance v0, Ljava/lang/Object;

    #@7
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    #@a
    sput-object v0, Lcom/android/server/wifi/WifiNative;->mLock:Ljava/lang/Object;

    #@c
    .line 90
    const-string/jumbo v0, "wifi-service"

    #@f
    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    #@12
    .line 91
    invoke-static {}, Lcom/android/server/wifi/WifiNative;->registerNatives()I

    #@15
    .line 143
    new-instance v0, Landroid/util/LocalLog;

    #@17
    const/16 v1, 0x4000

    #@19
    invoke-direct {v0, v1}, Landroid/util/LocalLog;-><init>(I)V

    #@1c
    sput-object v0, Lcom/android/server/wifi/WifiNative;->mLocalLog:Landroid/util/LocalLog;

    #@1e
    .line 1235
    const-wide/16 v0, 0x0

    #@20
    sput-wide v0, Lcom/android/server/wifi/WifiNative;->sWifiHalHandle:J

    #@22
    .line 1236
    sput-object v4, Lcom/android/server/wifi/WifiNative;->sWifiIfaceHandles:[J

    #@24
    .line 1237
    sput v3, Lcom/android/server/wifi/WifiNative;->sWlan0Index:I

    #@26
    .line 1238
    sput v3, Lcom/android/server/wifi/WifiNative;->sP2p0Index:I

    #@28
    .line 1396
    sput v2, Lcom/android/server/wifi/WifiNative;->WIFI_SCAN_BUFFER_FULL:I

    #@2a
    .line 1397
    const/4 v0, 0x1

    #@2b
    sput v0, Lcom/android/server/wifi/WifiNative;->WIFI_SCAN_COMPLETE:I

    #@2d
    .line 1570
    sput v2, Lcom/android/server/wifi/WifiNative;->sScanCmdId:I

    #@2f
    .line 1663
    sput v2, Lcom/android/server/wifi/WifiNative;->sHotlistCmdId:I

    #@31
    .line 2046
    sput-object v4, Lcom/android/server/wifi/WifiNative;->sWifiLoggerEventHandler:Lcom/android/server/wifi/WifiNative$WifiLoggerEventHandler;

    #@33
    .line 2058
    sput v3, Lcom/android/server/wifi/WifiNative;->sLogCmdId:I

    #@35
    .line 2263
    sput v2, Lcom/android/server/wifi/WifiNative;->sPnoCmdId:I

    #@37
    .line 60
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
    .param p1, "interfaceName"    # Ljava/lang/String;

    #@0
    .prologue
    .line 124
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 80
    const/4 v0, 0x0

    #@4
    iput-boolean v0, p0, Lcom/android/server/wifi/WifiNative;->mSuspendOptEnabled:Z

    #@6
    .line 125
    iput-object p1, p0, Lcom/android/server/wifi/WifiNative;->mInterfaceName:Ljava/lang/String;

    #@8
    .line 126
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
    .line 127
    const-string/jumbo v0, "p2p0"

    #@21
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@24
    move-result v0

    #@25
    if-nez v0, :cond_0

    #@27
    .line 128
    new-instance v0, Ljava/lang/StringBuilder;

    #@29
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@2c
    const-string/jumbo v1, "IFNAME="

    #@2f
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@32
    move-result-object v0

    #@33
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@36
    move-result-object v0

    #@37
    const-string/jumbo v1, " "

    #@3a
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3d
    move-result-object v0

    #@3e
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@41
    move-result-object v0

    #@42
    iput-object v0, p0, Lcom/android/server/wifi/WifiNative;->mInterfacePrefix:Ljava/lang/String;

    #@44
    .line 124
    :goto_0
    return-void

    #@45
    .line 131
    :cond_0
    const-string/jumbo v0, ""

    #@48
    iput-object v0, p0, Lcom/android/server/wifi/WifiNative;->mInterfacePrefix:Ljava/lang/String;

    #@4a
    goto :goto_0
.end method

.method private static native cancelRangeRequestNative(II[Landroid/net/wifi/RttManager$RttParams;)Z
.end method

.method public static declared-synchronized cancelRtt([Landroid/net/wifi/RttManager$RttParams;)Z
    .locals 5
    .param p0, "params"    # [Landroid/net/wifi/RttManager$RttParams;

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    const-class v1, Lcom/android/server/wifi/WifiNative;

    #@3
    monitor-enter v1

    #@4
    .line 1865
    :try_start_0
    sget-object v2, Lcom/android/server/wifi/WifiNative;->mLock:Ljava/lang/Object;

    #@6
    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    #@7
    .line 1866
    :try_start_1
    invoke-static {}, Lcom/android/server/wifi/WifiNative;->isHalStarted()Z

    #@a
    move-result v0

    #@b
    if-eqz v0, :cond_2

    #@d
    .line 1867
    sget v0, Lcom/android/server/wifi/WifiNative;->sRttCmdId:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@f
    if-nez v0, :cond_0

    #@11
    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    #@12
    monitor-exit v1

    #@13
    .line 1868
    return v4

    #@14
    .line 1871
    :cond_0
    const/4 v0, 0x0

    #@15
    :try_start_3
    sput v0, Lcom/android/server/wifi/WifiNative;->sRttCmdId:I

    #@17
    .line 1873
    sget v0, Lcom/android/server/wifi/WifiNative;->sWlan0Index:I

    #@19
    sget v3, Lcom/android/server/wifi/WifiNative;->sRttCmdId:I

    #@1b
    invoke-static {v0, v3, p0}, Lcom/android/server/wifi/WifiNative;->cancelRangeRequestNative(II[Landroid/net/wifi/RttManager$RttParams;)Z

    #@1e
    move-result v0

    #@1f
    if-eqz v0, :cond_1

    #@21
    .line 1874
    const/4 v0, 0x0

    #@22
    sput-object v0, Lcom/android/server/wifi/WifiNative;->sRttEventHandler:Lcom/android/server/wifi/WifiNative$RttEventHandler;

    #@24
    .line 1875
    const-string/jumbo v0, "WifiNative-HAL"

    #@27
    const-string/jumbo v3, "RTT cancel Request Successfully"

    #@2a
    invoke-static {v0, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@2d
    :try_start_4
    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    #@2e
    .line 1876
    const/4 v0, 0x1

    #@2f
    monitor-exit v1

    #@30
    return v0

    #@31
    .line 1878
    :cond_1
    :try_start_5
    const-string/jumbo v0, "WifiNative-HAL"

    #@34
    const-string/jumbo v3, "RTT cancel Request failed"

    #@37
    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    #@3a
    :try_start_6
    monitor-exit v2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    #@3b
    monitor-exit v1

    #@3c
    .line 1879
    return v4

    #@3d
    :cond_2
    :try_start_7
    monitor-exit v2
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    #@3e
    monitor-exit v1

    #@3f
    .line 1882
    return v4

    #@40
    .line 1865
    :catchall_0
    move-exception v0

    #@41
    :try_start_8
    monitor-exit v2

    #@42
    throw v0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    #@43
    :catchall_1
    move-exception v0

    #@44
    monitor-exit v1

    #@45
    throw v0
.end method

.method private native closeSupplicantConnectionNative()V
.end method

.method private native connectToSupplicantNative()Z
.end method

.method public static createWifiSsid([B)Landroid/net/wifi/WifiSsid;
    .locals 4
    .param p0, "rawSsid"    # [B

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 1410
    invoke-static {p0}, Llibcore/util/HexEncoding;->encode([B)[C

    #@4
    move-result-object v2

    #@5
    invoke-static {v2}, Ljava/lang/String;->valueOf([C)Ljava/lang/String;

    #@8
    move-result-object v0

    #@9
    .line 1412
    .local v0, "ssidHexString":Ljava/lang/String;
    if-nez v0, :cond_0

    #@b
    .line 1413
    return-object v3

    #@c
    .line 1416
    :cond_0
    invoke-static {v0}, Landroid/net/wifi/WifiSsid;->createFromHex(Ljava/lang/String;)Landroid/net/wifi/WifiSsid;

    #@f
    move-result-object v1

    #@10
    .line 1418
    .local v1, "wifiSsid":Landroid/net/wifi/WifiSsid;
    return-object v1
.end method

.method private doBooleanCommand(Ljava/lang/String;)Z
    .locals 7
    .param p1, "command"    # Ljava/lang/String;

    #@0
    .prologue
    .line 181
    sget-boolean v3, Lcom/android/server/wifi/WifiNative;->DBG:Z

    #@2
    if-eqz v3, :cond_0

    #@4
    iget-object v3, p0, Lcom/android/server/wifi/WifiNative;->mTAG:Ljava/lang/String;

    #@6
    new-instance v4, Ljava/lang/StringBuilder;

    #@8
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@b
    const-string/jumbo v5, "doBoolean: "

    #@e
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@11
    move-result-object v4

    #@12
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@15
    move-result-object v4

    #@16
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@19
    move-result-object v4

    #@1a
    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@1d
    .line 182
    :cond_0
    sget-object v4, Lcom/android/server/wifi/WifiNative;->mLock:Ljava/lang/Object;

    #@1f
    monitor-enter v4

    #@20
    .line 183
    :try_start_0
    invoke-static {}, Lcom/android/server/wifi/WifiNative;->getNewCmdIdLocked()I

    #@23
    move-result v0

    #@24
    .line 184
    .local v0, "cmdId":I
    new-instance v3, Ljava/lang/StringBuilder;

    #@26
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@29
    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    #@2c
    move-result-object v5

    #@2d
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@30
    move-result-object v3

    #@31
    const-string/jumbo v5, ":"

    #@34
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@37
    move-result-object v3

    #@38
    iget-object v5, p0, Lcom/android/server/wifi/WifiNative;->mInterfacePrefix:Ljava/lang/String;

    #@3a
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3d
    move-result-object v3

    #@3e
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@41
    move-result-object v3

    #@42
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@45
    move-result-object v2

    #@46
    .line 185
    .local v2, "toLog":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    #@48
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@4b
    iget-object v5, p0, Lcom/android/server/wifi/WifiNative;->mInterfacePrefix:Ljava/lang/String;

    #@4d
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@50
    move-result-object v3

    #@51
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@54
    move-result-object v3

    #@55
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@58
    move-result-object v3

    #@59
    invoke-direct {p0, v3}, Lcom/android/server/wifi/WifiNative;->doBooleanCommandNative(Ljava/lang/String;)Z

    #@5c
    move-result v1

    #@5d
    .line 186
    .local v1, "result":Z
    new-instance v3, Ljava/lang/StringBuilder;

    #@5f
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@62
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@65
    move-result-object v3

    #@66
    const-string/jumbo v5, " -> "

    #@69
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6c
    move-result-object v3

    #@6d
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@70
    move-result-object v3

    #@71
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@74
    move-result-object v3

    #@75
    invoke-direct {p0, v3}, Lcom/android/server/wifi/WifiNative;->localLog(Ljava/lang/String;)V

    #@78
    .line 187
    sget-boolean v3, Lcom/android/server/wifi/WifiNative;->DBG:Z

    #@7a
    if-eqz v3, :cond_1

    #@7c
    iget-object v3, p0, Lcom/android/server/wifi/WifiNative;->mTAG:Ljava/lang/String;

    #@7e
    new-instance v5, Ljava/lang/StringBuilder;

    #@80
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@83
    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@86
    move-result-object v5

    #@87
    const-string/jumbo v6, ": returned "

    #@8a
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@8d
    move-result-object v5

    #@8e
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@91
    move-result-object v5

    #@92
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@95
    move-result-object v5

    #@96
    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@99
    :cond_1
    monitor-exit v4

    #@9a
    .line 188
    return v1

    #@9b
    .line 182
    .end local v0    # "cmdId":I
    .end local v1    # "result":Z
    .end local v2    # "toLog":Ljava/lang/String;
    :catchall_0
    move-exception v3

    #@9c
    monitor-exit v4

    #@9d
    throw v3
.end method

.method private native doBooleanCommandNative(Ljava/lang/String;)Z
.end method

.method private doBooleanCommandWithoutLogging(Ljava/lang/String;)Z
    .locals 6
    .param p1, "command"    # Ljava/lang/String;

    #@0
    .prologue
    .line 193
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
    const-string/jumbo v4, "doBooleanCommandWithoutLogging: "

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
    .line 194
    :cond_0
    sget-object v3, Lcom/android/server/wifi/WifiNative;->mLock:Ljava/lang/Object;

    #@1f
    monitor-enter v3

    #@20
    .line 195
    :try_start_0
    invoke-static {}, Lcom/android/server/wifi/WifiNative;->getNewCmdIdLocked()I

    #@23
    move-result v0

    #@24
    .line 196
    .local v0, "cmdId":I
    new-instance v2, Ljava/lang/StringBuilder;

    #@26
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@29
    iget-object v4, p0, Lcom/android/server/wifi/WifiNative;->mInterfacePrefix:Ljava/lang/String;

    #@2b
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2e
    move-result-object v2

    #@2f
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@32
    move-result-object v2

    #@33
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@36
    move-result-object v2

    #@37
    invoke-direct {p0, v2}, Lcom/android/server/wifi/WifiNative;->doBooleanCommandNative(Ljava/lang/String;)Z

    #@3a
    move-result v1

    #@3b
    .line 197
    .local v1, "result":Z
    sget-boolean v2, Lcom/android/server/wifi/WifiNative;->DBG:Z

    #@3d
    if-eqz v2, :cond_1

    #@3f
    iget-object v2, p0, Lcom/android/server/wifi/WifiNative;->mTAG:Ljava/lang/String;

    #@41
    new-instance v4, Ljava/lang/StringBuilder;

    #@43
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@46
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@49
    move-result-object v4

    #@4a
    const-string/jumbo v5, ": returned "

    #@4d
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@50
    move-result-object v4

    #@51
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@54
    move-result-object v4

    #@55
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@58
    move-result-object v4

    #@59
    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@5c
    :cond_1
    monitor-exit v3

    #@5d
    .line 198
    return v1

    #@5e
    .line 194
    .end local v0    # "cmdId":I
    .end local v1    # "result":Z
    :catchall_0
    move-exception v2

    #@5f
    monitor-exit v3

    #@60
    throw v2
.end method

.method private doIntCommand(Ljava/lang/String;)I
    .locals 7
    .param p1, "command"    # Ljava/lang/String;

    #@0
    .prologue
    .line 203
    sget-boolean v3, Lcom/android/server/wifi/WifiNative;->DBG:Z

    #@2
    if-eqz v3, :cond_0

    #@4
    iget-object v3, p0, Lcom/android/server/wifi/WifiNative;->mTAG:Ljava/lang/String;

    #@6
    new-instance v4, Ljava/lang/StringBuilder;

    #@8
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@b
    const-string/jumbo v5, "doInt: "

    #@e
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@11
    move-result-object v4

    #@12
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@15
    move-result-object v4

    #@16
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@19
    move-result-object v4

    #@1a
    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@1d
    .line 204
    :cond_0
    sget-object v4, Lcom/android/server/wifi/WifiNative;->mLock:Ljava/lang/Object;

    #@1f
    monitor-enter v4

    #@20
    .line 205
    :try_start_0
    invoke-static {}, Lcom/android/server/wifi/WifiNative;->getNewCmdIdLocked()I

    #@23
    move-result v0

    #@24
    .line 206
    .local v0, "cmdId":I
    new-instance v3, Ljava/lang/StringBuilder;

    #@26
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@29
    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    #@2c
    move-result-object v5

    #@2d
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@30
    move-result-object v3

    #@31
    const-string/jumbo v5, ":"

    #@34
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@37
    move-result-object v3

    #@38
    iget-object v5, p0, Lcom/android/server/wifi/WifiNative;->mInterfacePrefix:Ljava/lang/String;

    #@3a
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3d
    move-result-object v3

    #@3e
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@41
    move-result-object v3

    #@42
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@45
    move-result-object v2

    #@46
    .line 207
    .local v2, "toLog":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    #@48
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@4b
    iget-object v5, p0, Lcom/android/server/wifi/WifiNative;->mInterfacePrefix:Ljava/lang/String;

    #@4d
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@50
    move-result-object v3

    #@51
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@54
    move-result-object v3

    #@55
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@58
    move-result-object v3

    #@59
    invoke-direct {p0, v3}, Lcom/android/server/wifi/WifiNative;->doIntCommandNative(Ljava/lang/String;)I

    #@5c
    move-result v1

    #@5d
    .line 208
    .local v1, "result":I
    new-instance v3, Ljava/lang/StringBuilder;

    #@5f
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@62
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@65
    move-result-object v3

    #@66
    const-string/jumbo v5, " -> "

    #@69
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6c
    move-result-object v3

    #@6d
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@70
    move-result-object v3

    #@71
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@74
    move-result-object v3

    #@75
    invoke-direct {p0, v3}, Lcom/android/server/wifi/WifiNative;->localLog(Ljava/lang/String;)V

    #@78
    .line 209
    sget-boolean v3, Lcom/android/server/wifi/WifiNative;->DBG:Z

    #@7a
    if-eqz v3, :cond_1

    #@7c
    iget-object v3, p0, Lcom/android/server/wifi/WifiNative;->mTAG:Ljava/lang/String;

    #@7e
    new-instance v5, Ljava/lang/StringBuilder;

    #@80
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@83
    const-string/jumbo v6, "   returned "

    #@86
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@89
    move-result-object v5

    #@8a
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@8d
    move-result-object v5

    #@8e
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@91
    move-result-object v5

    #@92
    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@95
    :cond_1
    monitor-exit v4

    #@96
    .line 210
    return v1

    #@97
    .line 204
    .end local v0    # "cmdId":I
    .end local v1    # "result":I
    .end local v2    # "toLog":Ljava/lang/String;
    :catchall_0
    move-exception v3

    #@98
    monitor-exit v4

    #@99
    throw v3
.end method

.method private native doIntCommandNative(Ljava/lang/String;)I
.end method

.method private doStringCommand(Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .param p1, "command"    # Ljava/lang/String;

    #@0
    .prologue
    .line 215
    sget-boolean v3, Lcom/android/server/wifi/WifiNative;->DBG:Z

    #@2
    if-eqz v3, :cond_0

    #@4
    .line 217
    const-string/jumbo v3, "GET_NETWORK"

    #@7
    invoke-virtual {p1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    #@a
    move-result v3

    #@b
    if-nez v3, :cond_0

    #@d
    .line 218
    iget-object v3, p0, Lcom/android/server/wifi/WifiNative;->mTAG:Ljava/lang/String;

    #@f
    new-instance v4, Ljava/lang/StringBuilder;

    #@11
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@14
    const-string/jumbo v5, "doString: ["

    #@17
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1a
    move-result-object v4

    #@1b
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1e
    move-result-object v4

    #@1f
    const-string/jumbo v5, "]"

    #@22
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@25
    move-result-object v4

    #@26
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@29
    move-result-object v4

    #@2a
    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@2d
    .line 221
    :cond_0
    sget-object v4, Lcom/android/server/wifi/WifiNative;->mLock:Ljava/lang/Object;

    #@2f
    monitor-enter v4

    #@30
    .line 222
    :try_start_0
    invoke-static {}, Lcom/android/server/wifi/WifiNative;->getNewCmdIdLocked()I

    #@33
    move-result v0

    #@34
    .line 223
    .local v0, "cmdId":I
    new-instance v3, Ljava/lang/StringBuilder;

    #@36
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@39
    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    #@3c
    move-result-object v5

    #@3d
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@40
    move-result-object v3

    #@41
    const-string/jumbo v5, ":"

    #@44
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@47
    move-result-object v3

    #@48
    iget-object v5, p0, Lcom/android/server/wifi/WifiNative;->mInterfacePrefix:Ljava/lang/String;

    #@4a
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4d
    move-result-object v3

    #@4e
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@51
    move-result-object v3

    #@52
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@55
    move-result-object v2

    #@56
    .line 224
    .local v2, "toLog":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    #@58
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@5b
    iget-object v5, p0, Lcom/android/server/wifi/WifiNative;->mInterfacePrefix:Ljava/lang/String;

    #@5d
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@60
    move-result-object v3

    #@61
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@64
    move-result-object v3

    #@65
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@68
    move-result-object v3

    #@69
    invoke-direct {p0, v3}, Lcom/android/server/wifi/WifiNative;->doStringCommandNative(Ljava/lang/String;)Ljava/lang/String;

    #@6c
    move-result-object v1

    #@6d
    .line 225
    .local v1, "result":Ljava/lang/String;
    if-nez v1, :cond_2

    #@6f
    .line 226
    sget-boolean v3, Lcom/android/server/wifi/WifiNative;->DBG:Z

    #@71
    if-eqz v3, :cond_1

    #@73
    iget-object v3, p0, Lcom/android/server/wifi/WifiNative;->mTAG:Ljava/lang/String;

    #@75
    const-string/jumbo v5, "doStringCommandNative no result"

    #@78
    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@7b
    :cond_1
    :goto_0
    monitor-exit v4

    #@7c
    .line 233
    return-object v1

    #@7d
    .line 228
    :cond_2
    :try_start_1
    const-string/jumbo v3, "STATUS-"

    #@80
    invoke-virtual {p1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    #@83
    move-result v3

    #@84
    if-nez v3, :cond_3

    #@86
    .line 229
    new-instance v3, Ljava/lang/StringBuilder;

    #@88
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@8b
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@8e
    move-result-object v3

    #@8f
    const-string/jumbo v5, " -> "

    #@92
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@95
    move-result-object v3

    #@96
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@99
    move-result-object v3

    #@9a
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@9d
    move-result-object v3

    #@9e
    invoke-direct {p0, v3}, Lcom/android/server/wifi/WifiNative;->localLog(Ljava/lang/String;)V

    #@a1
    .line 231
    :cond_3
    sget-boolean v3, Lcom/android/server/wifi/WifiNative;->DBG:Z

    #@a3
    if-eqz v3, :cond_1

    #@a5
    iget-object v3, p0, Lcom/android/server/wifi/WifiNative;->mTAG:Ljava/lang/String;

    #@a7
    new-instance v5, Ljava/lang/StringBuilder;

    #@a9
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@ac
    const-string/jumbo v6, "   returned "

    #@af
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b2
    move-result-object v5

    #@b3
    const-string/jumbo v6, "\n"

    #@b6
    const-string/jumbo v7, " "

    #@b9
    invoke-virtual {v1, v6, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    #@bc
    move-result-object v6

    #@bd
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@c0
    move-result-object v5

    #@c1
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@c4
    move-result-object v5

    #@c5
    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@c8
    goto :goto_0

    #@c9
    .line 221
    .end local v0    # "cmdId":I
    .end local v1    # "result":Ljava/lang/String;
    .end local v2    # "toLog":Ljava/lang/String;
    :catchall_0
    move-exception v3

    #@ca
    monitor-exit v4

    #@cb
    throw v3
.end method

.method private native doStringCommandNative(Ljava/lang/String;)Ljava/lang/String;
.end method

.method private doStringCommandWithoutLogging(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "command"    # Ljava/lang/String;

    #@0
    .prologue
    .line 238
    sget-boolean v0, Lcom/android/server/wifi/WifiNative;->DBG:Z

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 240
    const-string/jumbo v0, "GET_NETWORK"

    #@7
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    #@a
    move-result v0

    #@b
    if-nez v0, :cond_0

    #@d
    .line 241
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
    .line 244
    :cond_0
    sget-object v1, Lcom/android/server/wifi/WifiNative;->mLock:Ljava/lang/Object;

    #@2f
    monitor-enter v1

    #@30
    .line 245
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
    .line 244
    :catchall_0
    move-exception v0

    #@4a
    monitor-exit v1

    #@4b
    throw v0
.end method

.method public static declared-synchronized enableDisableTdls(ZLjava/lang/String;Lcom/android/server/wifi/WifiNative$TdlsEventHandler;)Z
    .locals 3
    .param p0, "enable"    # Z
    .param p1, "macAdd"    # Ljava/lang/String;
    .param p2, "tdlsCallBack"    # Lcom/android/server/wifi/WifiNative$TdlsEventHandler;

    #@0
    .prologue
    const-class v1, Lcom/android/server/wifi/WifiNative;

    #@2
    monitor-enter v1

    #@3
    .line 1978
    :try_start_0
    sget-object v2, Lcom/android/server/wifi/WifiNative;->mLock:Ljava/lang/Object;

    #@5
    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    #@6
    .line 1979
    :try_start_1
    sput-object p2, Lcom/android/server/wifi/WifiNative;->sTdlsEventHandler:Lcom/android/server/wifi/WifiNative$TdlsEventHandler;

    #@8
    .line 1980
    sget v0, Lcom/android/server/wifi/WifiNative;->sWlan0Index:I

    #@a
    invoke-static {v0, p0, p1}, Lcom/android/server/wifi/WifiNative;->enableDisableTdlsNative(IZLjava/lang/String;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@d
    move-result v0

    #@e
    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    #@f
    monitor-exit v1

    #@10
    return v0

    #@11
    .line 1978
    :catchall_0
    move-exception v0

    #@12
    :try_start_3
    monitor-exit v2

    #@13
    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    #@14
    :catchall_1
    move-exception v0

    #@15
    monitor-exit v1

    #@16
    throw v0
.end method

.method private static native enableDisableTdlsNative(IZLjava/lang/String;)Z
.end method

.method public static declared-synchronized getChannelsForBand(I)[I
    .locals 3
    .param p0, "band"    # I

    #@0
    .prologue
    const-class v1, Lcom/android/server/wifi/WifiNative;

    #@2
    monitor-enter v1

    #@3
    .line 1903
    :try_start_0
    sget-object v2, Lcom/android/server/wifi/WifiNative;->mLock:Ljava/lang/Object;

    #@5
    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    #@6
    .line 1904
    :try_start_1
    invoke-static {}, Lcom/android/server/wifi/WifiNative;->isHalStarted()Z

    #@9
    move-result v0

    #@a
    if-eqz v0, :cond_0

    #@c
    .line 1905
    sget v0, Lcom/android/server/wifi/WifiNative;->sWlan0Index:I

    #@e
    invoke-static {v0, p0}, Lcom/android/server/wifi/WifiNative;->getChannelsForBandNative(II)[I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@11
    move-result-object v0

    #@12
    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    #@13
    monitor-exit v1

    #@14
    return-object v0

    #@15
    :cond_0
    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    #@16
    .line 1907
    const/4 v0, 0x0

    #@17
    monitor-exit v1

    #@18
    return-object v0

    #@19
    .line 1903
    :catchall_0
    move-exception v0

    #@1a
    :try_start_4
    monitor-exit v2

    #@1b
    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    #@1c
    :catchall_1
    move-exception v0

    #@1d
    monitor-exit v1

    #@1e
    throw v0
.end method

.method private static native getChannelsForBandNative(II)[I
.end method

.method public static declared-synchronized getDriverVersion()Ljava/lang/String;
    .locals 3

    #@0
    .prologue
    const-class v1, Lcom/android/server/wifi/WifiNative;

    #@2
    monitor-enter v1

    #@3
    .line 2125
    :try_start_0
    sget-object v2, Lcom/android/server/wifi/WifiNative;->mLock:Ljava/lang/Object;

    #@5
    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    #@6
    .line 2126
    :try_start_1
    invoke-static {}, Lcom/android/server/wifi/WifiNative;->isHalStarted()Z

    #@9
    move-result v0

    #@a
    if-eqz v0, :cond_0

    #@c
    .line 2127
    sget v0, Lcom/android/server/wifi/WifiNative;->sWlan0Index:I

    #@e
    invoke-static {v0}, Lcom/android/server/wifi/WifiNative;->getDriverVersionNative(I)Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@11
    move-result-object v0

    #@12
    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    #@13
    monitor-exit v1

    #@14
    return-object v0

    #@15
    .line 2129
    :cond_0
    :try_start_3
    const-string/jumbo v0, ""
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@18
    :try_start_4
    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    #@19
    monitor-exit v1

    #@1a
    return-object v0

    #@1b
    .line 2125
    :catchall_0
    move-exception v0

    #@1c
    :try_start_5
    monitor-exit v2

    #@1d
    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    #@1e
    :catchall_1
    move-exception v0

    #@1f
    monitor-exit v1

    #@20
    throw v0
.end method

.method private static native getDriverVersionNative(I)Ljava/lang/String;
.end method

.method public static declared-synchronized getFirmwareVersion()Ljava/lang/String;
    .locals 3

    #@0
    .prologue
    const-class v1, Lcom/android/server/wifi/WifiNative;

    #@2
    monitor-enter v1

    #@3
    .line 2137
    :try_start_0
    sget-object v2, Lcom/android/server/wifi/WifiNative;->mLock:Ljava/lang/Object;

    #@5
    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    #@6
    .line 2138
    :try_start_1
    invoke-static {}, Lcom/android/server/wifi/WifiNative;->isHalStarted()Z

    #@9
    move-result v0

    #@a
    if-eqz v0, :cond_0

    #@c
    .line 2139
    sget v0, Lcom/android/server/wifi/WifiNative;->sWlan0Index:I

    #@e
    invoke-static {v0}, Lcom/android/server/wifi/WifiNative;->getFirmwareVersionNative(I)Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@11
    move-result-object v0

    #@12
    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    #@13
    monitor-exit v1

    #@14
    return-object v0

    #@15
    .line 2141
    :cond_0
    :try_start_3
    const-string/jumbo v0, ""
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@18
    :try_start_4
    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    #@19
    monitor-exit v1

    #@1a
    return-object v0

    #@1b
    .line 2137
    :catchall_0
    move-exception v0

    #@1c
    :try_start_5
    monitor-exit v2

    #@1d
    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    #@1e
    :catchall_1
    move-exception v0

    #@1f
    monitor-exit v1

    #@20
    throw v0
.end method

.method private static native getFirmwareVersionNative(I)Ljava/lang/String;
.end method

.method public static declared-synchronized getFwMemoryDump()[B
    .locals 5

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    const-class v2, Lcom/android/server/wifi/WifiNative;

    #@3
    monitor-enter v2

    #@4
    .line 2198
    :try_start_0
    sget-object v3, Lcom/android/server/wifi/WifiNative;->mLock:Ljava/lang/Object;

    #@6
    monitor-enter v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    #@7
    .line 2199
    :try_start_1
    invoke-static {}, Lcom/android/server/wifi/WifiNative;->isHalStarted()Z

    #@a
    move-result v1

    #@b
    if-eqz v1, :cond_1

    #@d
    .line 2200
    sget v1, Lcom/android/server/wifi/WifiNative;->sWlan0Index:I

    #@f
    invoke-static {v1}, Lcom/android/server/wifi/WifiNative;->getFwMemoryDumpNative(I)Z

    #@12
    move-result v1

    #@13
    if-eqz v1, :cond_0

    #@15
    .line 2201
    sget-object v0, Lcom/android/server/wifi/WifiNative;->mFwMemoryDump:[B

    #@17
    .line 2202
    .local v0, "fwMemoryDump":[B
    const/4 v1, 0x0

    #@18
    sput-object v1, Lcom/android/server/wifi/WifiNative;->mFwMemoryDump:[B
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@1a
    :try_start_2
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    #@1b
    monitor-exit v2

    #@1c
    .line 2203
    return-object v0

    #@1d
    .end local v0    # "fwMemoryDump":[B
    :cond_0
    :try_start_3
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    #@1e
    monitor-exit v2

    #@1f
    .line 2205
    return-object v4

    #@20
    :cond_1
    :try_start_4
    monitor-exit v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    #@21
    monitor-exit v2

    #@22
    .line 2209
    return-object v4

    #@23
    .line 2198
    .restart local v0    # "fwMemoryDump":[B
    :catchall_0
    move-exception v1

    #@24
    :try_start_5
    monitor-exit v3

    #@25
    throw v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    #@26
    :catchall_1
    move-exception v1

    #@27
    monitor-exit v2

    #@28
    throw v1
.end method

.method private static native getFwMemoryDumpNative(I)Z
.end method

.method public static declared-synchronized getInterfaceName(I)Ljava/lang/String;
    .locals 2
    .param p0, "index"    # I

    #@0
    .prologue
    const-class v0, Lcom/android/server/wifi/WifiNative;

    #@2
    monitor-enter v0

    #@3
    .line 1329
    :try_start_0
    invoke-static {p0}, Lcom/android/server/wifi/WifiNative;->getInterfaceNameNative(I)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@6
    move-result-object v1

    #@7
    monitor-exit v0

    #@8
    return-object v1

    #@9
    :catchall_0
    move-exception v1

    #@a
    monitor-exit v0

    #@b
    throw v1
.end method

.method private static native getInterfaceNameNative(I)Ljava/lang/String;
.end method

.method public static declared-synchronized getInterfaces()I
    .locals 9

    #@0
    .prologue
    const-class v5, Lcom/android/server/wifi/WifiNative;

    #@2
    monitor-enter v5

    #@3
    .line 1301
    :try_start_0
    sget-object v6, Lcom/android/server/wifi/WifiNative;->mLock:Ljava/lang/Object;

    #@5
    monitor-enter v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    #@6
    .line 1302
    :try_start_1
    invoke-static {}, Lcom/android/server/wifi/WifiNative;->isHalStarted()Z

    #@9
    move-result v4

    #@a
    if-eqz v4, :cond_4

    #@c
    .line 1303
    sget-object v4, Lcom/android/server/wifi/WifiNative;->sWifiIfaceHandles:[J

    #@e
    if-nez v4, :cond_3

    #@10
    .line 1304
    invoke-static {}, Lcom/android/server/wifi/WifiNative;->getInterfacesNative()I

    #@13
    move-result v2

    #@14
    .line 1305
    .local v2, "num":I
    const/4 v3, 0x0

    #@15
    .line 1306
    .local v3, "wifi_num":I
    const/4 v0, 0x0

    #@16
    .local v0, "i":I
    :goto_0
    if-ge v0, v2, :cond_2

    #@18
    .line 1307
    invoke-static {v0}, Lcom/android/server/wifi/WifiNative;->getInterfaceNameNative(I)Ljava/lang/String;

    #@1b
    move-result-object v1

    #@1c
    .line 1308
    .local v1, "name":Ljava/lang/String;
    const-string/jumbo v4, "WifiNative-HAL"

    #@1f
    new-instance v7, Ljava/lang/StringBuilder;

    #@21
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    #@24
    const-string/jumbo v8, "interface["

    #@27
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2a
    move-result-object v7

    #@2b
    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@2e
    move-result-object v7

    #@2f
    const-string/jumbo v8, "] = "

    #@32
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@35
    move-result-object v7

    #@36
    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@39
    move-result-object v7

    #@3a
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3d
    move-result-object v7

    #@3e
    invoke-static {v4, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@41
    .line 1309
    const-string/jumbo v4, "wlan0"

    #@44
    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@47
    move-result v4

    #@48
    if-eqz v4, :cond_1

    #@4a
    .line 1310
    sput v0, Lcom/android/server/wifi/WifiNative;->sWlan0Index:I

    #@4c
    .line 1311
    add-int/lit8 v3, v3, 0x1

    #@4e
    .line 1306
    :cond_0
    :goto_1
    add-int/lit8 v0, v0, 0x1

    #@50
    goto :goto_0

    #@51
    .line 1312
    :cond_1
    const-string/jumbo v4, "p2p0"

    #@54
    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@57
    move-result v4

    #@58
    if-eqz v4, :cond_0

    #@5a
    .line 1313
    sput v0, Lcom/android/server/wifi/WifiNative;->sP2p0Index:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@5c
    .line 1314
    add-int/lit8 v3, v3, 0x1

    #@5e
    goto :goto_1

    #@5f
    .end local v1    # "name":Ljava/lang/String;
    :cond_2
    :try_start_2
    monitor-exit v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    #@60
    monitor-exit v5

    #@61
    .line 1317
    return v3

    #@62
    .line 1319
    .end local v0    # "i":I
    .end local v2    # "num":I
    .end local v3    # "wifi_num":I
    :cond_3
    :try_start_3
    sget-object v4, Lcom/android/server/wifi/WifiNative;->sWifiIfaceHandles:[J

    #@64
    array-length v4, v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@65
    :try_start_4
    monitor-exit v6
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    #@66
    monitor-exit v5

    #@67
    return v4

    #@68
    :cond_4
    :try_start_5
    monitor-exit v6
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    #@69
    .line 1322
    const/4 v4, 0x0

    #@6a
    monitor-exit v5

    #@6b
    return v4

    #@6c
    .line 1301
    :catchall_0
    move-exception v4

    #@6d
    :try_start_6
    monitor-exit v6

    #@6e
    throw v4
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    #@6f
    :catchall_1
    move-exception v4

    #@70
    monitor-exit v5

    #@71
    throw v4
.end method

.method private static native getInterfacesNative()I
.end method

.method public static getLocalLog()Landroid/util/LocalLog;
    .locals 1

    #@0
    .prologue
    .line 149
    sget-object v0, Lcom/android/server/wifi/WifiNative;->mLocalLog:Landroid/util/LocalLog;

    #@2
    return-object v0
.end method

.method private static getNewCmdIdLocked()I
    .locals 2

    #@0
    .prologue
    .line 153
    sget v0, Lcom/android/server/wifi/WifiNative;->sCmdId:I

    #@2
    add-int/lit8 v1, v0, 0x1

    #@4
    sput v1, Lcom/android/server/wifi/WifiNative;->sCmdId:I

    #@6
    return v0
.end method

.method public static declared-synchronized getRingBufferData(Ljava/lang/String;)Z
    .locals 3
    .param p0, "ringName"    # Ljava/lang/String;

    #@0
    .prologue
    const-class v1, Lcom/android/server/wifi/WifiNative;

    #@2
    monitor-enter v1

    #@3
    .line 2178
    :try_start_0
    sget-object v2, Lcom/android/server/wifi/WifiNative;->mLock:Ljava/lang/Object;

    #@5
    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    #@6
    .line 2179
    :try_start_1
    invoke-static {}, Lcom/android/server/wifi/WifiNative;->isHalStarted()Z

    #@9
    move-result v0

    #@a
    if-eqz v0, :cond_0

    #@c
    .line 2180
    sget v0, Lcom/android/server/wifi/WifiNative;->sWlan0Index:I

    #@e
    invoke-static {v0, p0}, Lcom/android/server/wifi/WifiNative;->getRingBufferDataNative(ILjava/lang/String;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@11
    move-result v0

    #@12
    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    #@13
    monitor-exit v1

    #@14
    return v0

    #@15
    :cond_0
    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    #@16
    .line 2182
    const/4 v0, 0x0

    #@17
    monitor-exit v1

    #@18
    return v0

    #@19
    .line 2178
    :catchall_0
    move-exception v0

    #@1a
    :try_start_4
    monitor-exit v2

    #@1b
    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    #@1c
    :catchall_1
    move-exception v0

    #@1d
    monitor-exit v1

    #@1e
    throw v0
.end method

.method private static native getRingBufferDataNative(ILjava/lang/String;)Z
.end method

.method public static declared-synchronized getRingBufferStatus()[Lcom/android/server/wifi/WifiNative$RingBufferStatus;
    .locals 3

    #@0
    .prologue
    const-class v1, Lcom/android/server/wifi/WifiNative;

    #@2
    monitor-enter v1

    #@3
    .line 2167
    :try_start_0
    sget-object v2, Lcom/android/server/wifi/WifiNative;->mLock:Ljava/lang/Object;

    #@5
    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    #@6
    .line 2168
    :try_start_1
    invoke-static {}, Lcom/android/server/wifi/WifiNative;->isHalStarted()Z

    #@9
    move-result v0

    #@a
    if-eqz v0, :cond_0

    #@c
    .line 2169
    sget v0, Lcom/android/server/wifi/WifiNative;->sWlan0Index:I

    #@e
    invoke-static {v0}, Lcom/android/server/wifi/WifiNative;->getRingBufferStatusNative(I)[Lcom/android/server/wifi/WifiNative$RingBufferStatus;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@11
    move-result-object v0

    #@12
    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    #@13
    monitor-exit v1

    #@14
    return-object v0

    #@15
    :cond_0
    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    #@16
    .line 2171
    const/4 v0, 0x0

    #@17
    monitor-exit v1

    #@18
    return-object v0

    #@19
    .line 2167
    :catchall_0
    move-exception v0

    #@1a
    :try_start_4
    monitor-exit v2

    #@1b
    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    #@1c
    :catchall_1
    move-exception v0

    #@1d
    monitor-exit v1

    #@1e
    throw v0
.end method

.method private static native getRingBufferStatusNative(I)[Lcom/android/server/wifi/WifiNative$RingBufferStatus;
.end method

.method public static declared-synchronized getRttCapabilities()Landroid/net/wifi/RttManager$RttCapabilities;
    .locals 3

    #@0
    .prologue
    const-class v1, Lcom/android/server/wifi/WifiNative;

    #@2
    monitor-enter v1

    #@3
    .line 1947
    :try_start_0
    sget-object v2, Lcom/android/server/wifi/WifiNative;->mLock:Ljava/lang/Object;

    #@5
    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    #@6
    .line 1948
    :try_start_1
    invoke-static {}, Lcom/android/server/wifi/WifiNative;->isHalStarted()Z

    #@9
    move-result v0

    #@a
    if-eqz v0, :cond_0

    #@c
    .line 1949
    sget v0, Lcom/android/server/wifi/WifiNative;->sWlan0Index:I

    #@e
    invoke-static {v0}, Lcom/android/server/wifi/WifiNative;->getRttCapabilitiesNative(I)Landroid/net/wifi/RttManager$RttCapabilities;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@11
    move-result-object v0

    #@12
    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    #@13
    monitor-exit v1

    #@14
    return-object v0

    #@15
    :cond_0
    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    #@16
    .line 1951
    const/4 v0, 0x0

    #@17
    monitor-exit v1

    #@18
    return-object v0

    #@19
    .line 1947
    :catchall_0
    move-exception v0

    #@1a
    :try_start_4
    monitor-exit v2

    #@1b
    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    #@1c
    :catchall_1
    move-exception v0

    #@1d
    monitor-exit v1

    #@1e
    throw v0
.end method

.method private static native getRttCapabilitiesNative(I)Landroid/net/wifi/RttManager$RttCapabilities;
.end method

.method public static declared-synchronized getScanCapabilities(Lcom/android/server/wifi/WifiNative$ScanCapabilities;)Z
    .locals 3
    .param p0, "capabilities"    # Lcom/android/server/wifi/WifiNative$ScanCapabilities;

    #@0
    .prologue
    const-class v1, Lcom/android/server/wifi/WifiNative;

    #@2
    monitor-enter v1

    #@3
    .line 1343
    :try_start_0
    sget-object v2, Lcom/android/server/wifi/WifiNative;->mLock:Ljava/lang/Object;

    #@5
    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    #@6
    .line 1344
    :try_start_1
    invoke-static {}, Lcom/android/server/wifi/WifiNative;->isHalStarted()Z

    #@9
    move-result v0

    #@a
    if-eqz v0, :cond_0

    #@c
    sget v0, Lcom/android/server/wifi/WifiNative;->sWlan0Index:I

    #@e
    invoke-static {v0, p0}, Lcom/android/server/wifi/WifiNative;->getScanCapabilitiesNative(ILcom/android/server/wifi/WifiNative$ScanCapabilities;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@11
    move-result v0

    #@12
    :goto_0
    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    #@13
    monitor-exit v1

    #@14
    return v0

    #@15
    :cond_0
    const/4 v0, 0x0

    #@16
    goto :goto_0

    #@17
    .line 1343
    :catchall_0
    move-exception v0

    #@18
    :try_start_3
    monitor-exit v2

    #@19
    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    #@1a
    :catchall_1
    move-exception v0

    #@1b
    monitor-exit v1

    #@1c
    throw v0
.end method

.method private static native getScanCapabilitiesNative(ILcom/android/server/wifi/WifiNative$ScanCapabilities;)Z
.end method

.method public static declared-synchronized getScanResults(Z)[Landroid/net/wifi/WifiScanner$ScanData;
    .locals 3
    .param p0, "flush"    # Z

    #@0
    .prologue
    const-class v1, Lcom/android/server/wifi/WifiNative;

    #@2
    monitor-enter v1

    #@3
    .line 1649
    :try_start_0
    sget-object v2, Lcom/android/server/wifi/WifiNative;->mLock:Ljava/lang/Object;

    #@5
    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    #@6
    .line 1650
    :try_start_1
    invoke-static {}, Lcom/android/server/wifi/WifiNative;->isHalStarted()Z

    #@9
    move-result v0

    #@a
    if-eqz v0, :cond_0

    #@c
    .line 1651
    sget v0, Lcom/android/server/wifi/WifiNative;->sWlan0Index:I

    #@e
    invoke-static {v0, p0}, Lcom/android/server/wifi/WifiNative;->getScanResultsNative(IZ)[Landroid/net/wifi/WifiScanner$ScanData;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@11
    move-result-object v0

    #@12
    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    #@13
    monitor-exit v1

    #@14
    return-object v0

    #@15
    :cond_0
    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    #@16
    .line 1653
    const/4 v0, 0x0

    #@17
    monitor-exit v1

    #@18
    return-object v0

    #@19
    .line 1649
    :catchall_0
    move-exception v0

    #@1a
    :try_start_4
    monitor-exit v2

    #@1b
    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    #@1c
    :catchall_1
    move-exception v0

    #@1d
    monitor-exit v1

    #@1e
    throw v0
.end method

.method private static native getScanResultsNative(IZ)[Landroid/net/wifi/WifiScanner$ScanData;
.end method

.method public static declared-synchronized getSupportedFeatureSet()I
    .locals 4

    #@0
    .prologue
    const-class v1, Lcom/android/server/wifi/WifiNative;

    #@2
    monitor-enter v1

    #@3
    .line 1812
    :try_start_0
    sget-object v2, Lcom/android/server/wifi/WifiNative;->mLock:Ljava/lang/Object;

    #@5
    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    #@6
    .line 1813
    :try_start_1
    invoke-static {}, Lcom/android/server/wifi/WifiNative;->isHalStarted()Z

    #@9
    move-result v0

    #@a
    if-eqz v0, :cond_0

    #@c
    .line 1814
    sget v0, Lcom/android/server/wifi/WifiNative;->sWlan0Index:I

    #@e
    invoke-static {v0}, Lcom/android/server/wifi/WifiNative;->getSupportedFeatureSetNative(I)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@11
    move-result v0

    #@12
    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    #@13
    monitor-exit v1

    #@14
    return v0

    #@15
    .line 1816
    :cond_0
    :try_start_3
    const-string/jumbo v0, "WifiNative-HAL"

    #@18
    const-string/jumbo v3, "Failing getSupportedFeatureset because HAL isn\'t started"

    #@1b
    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@1e
    :try_start_4
    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    #@1f
    .line 1817
    const/4 v0, 0x0

    #@20
    monitor-exit v1

    #@21
    return v0

    #@22
    .line 1812
    :catchall_0
    move-exception v0

    #@23
    :try_start_5
    monitor-exit v2

    #@24
    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    #@25
    :catchall_1
    move-exception v0

    #@26
    monitor-exit v1

    #@27
    throw v0
.end method

.method public static native getSupportedFeatureSetNative(I)I
.end method

.method public static declared-synchronized getSupportedLoggerFeatureSet()I
    .locals 3

    #@0
    .prologue
    const-class v1, Lcom/android/server/wifi/WifiNative;

    #@2
    monitor-enter v1

    #@3
    .line 2093
    :try_start_0
    sget-object v2, Lcom/android/server/wifi/WifiNative;->mLock:Ljava/lang/Object;

    #@5
    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    #@6
    .line 2094
    :try_start_1
    invoke-static {}, Lcom/android/server/wifi/WifiNative;->isHalStarted()Z

    #@9
    move-result v0

    #@a
    if-eqz v0, :cond_0

    #@c
    .line 2095
    sget v0, Lcom/android/server/wifi/WifiNative;->sWlan0Index:I

    #@e
    invoke-static {v0}, Lcom/android/server/wifi/WifiNative;->getSupportedLoggerFeatureSetNative(I)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@11
    move-result v0

    #@12
    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    #@13
    monitor-exit v1

    #@14
    return v0

    #@15
    :cond_0
    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    #@16
    .line 2097
    const/4 v0, 0x0

    #@17
    monitor-exit v1

    #@18
    return v0

    #@19
    .line 2093
    :catchall_0
    move-exception v0

    #@1a
    :try_start_4
    monitor-exit v2

    #@1b
    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    #@1c
    :catchall_1
    move-exception v0

    #@1d
    monitor-exit v1

    #@1e
    throw v0
.end method

.method private static native getSupportedLoggerFeatureSetNative(I)I
.end method

.method public static declared-synchronized getTdlsCapabilities()Lcom/android/server/wifi/WifiNative$TdlsCapabilities;
    .locals 3

    #@0
    .prologue
    const-class v1, Lcom/android/server/wifi/WifiNative;

    #@2
    monitor-enter v1

    #@3
    .line 2017
    :try_start_0
    sget-object v2, Lcom/android/server/wifi/WifiNative;->mLock:Ljava/lang/Object;

    #@5
    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    #@6
    .line 2018
    :try_start_1
    invoke-static {}, Lcom/android/server/wifi/WifiNative;->isHalStarted()Z

    #@9
    move-result v0

    #@a
    if-eqz v0, :cond_0

    #@c
    .line 2019
    sget v0, Lcom/android/server/wifi/WifiNative;->sWlan0Index:I

    #@e
    invoke-static {v0}, Lcom/android/server/wifi/WifiNative;->getTdlsCapabilitiesNative(I)Lcom/android/server/wifi/WifiNative$TdlsCapabilities;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@11
    move-result-object v0

    #@12
    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    #@13
    monitor-exit v1

    #@14
    return-object v0

    #@15
    :cond_0
    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    #@16
    .line 2021
    const/4 v0, 0x0

    #@17
    monitor-exit v1

    #@18
    return-object v0

    #@19
    .line 2017
    :catchall_0
    move-exception v0

    #@1a
    :try_start_4
    monitor-exit v2

    #@1b
    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    #@1c
    :catchall_1
    move-exception v0

    #@1d
    monitor-exit v1

    #@1e
    throw v0
.end method

.method private static native getTdlsCapabilitiesNative(I)Lcom/android/server/wifi/WifiNative$TdlsCapabilities;
.end method

.method public static declared-synchronized getTdlsStatus(Ljava/lang/String;)Lcom/android/server/wifi/WifiNative$TdlsStatus;
    .locals 3
    .param p0, "macAdd"    # Ljava/lang/String;

    #@0
    .prologue
    const-class v1, Lcom/android/server/wifi/WifiNative;

    #@2
    monitor-enter v1

    #@3
    .line 1994
    :try_start_0
    sget-object v2, Lcom/android/server/wifi/WifiNative;->mLock:Ljava/lang/Object;

    #@5
    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    #@6
    .line 1995
    :try_start_1
    invoke-static {}, Lcom/android/server/wifi/WifiNative;->isHalStarted()Z

    #@9
    move-result v0

    #@a
    if-eqz v0, :cond_0

    #@c
    .line 1996
    sget v0, Lcom/android/server/wifi/WifiNative;->sWlan0Index:I

    #@e
    invoke-static {v0, p0}, Lcom/android/server/wifi/WifiNative;->getTdlsStatusNative(ILjava/lang/String;)Lcom/android/server/wifi/WifiNative$TdlsStatus;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@11
    move-result-object v0

    #@12
    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    #@13
    monitor-exit v1

    #@14
    return-object v0

    #@15
    :cond_0
    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    #@16
    .line 1998
    const/4 v0, 0x0

    #@17
    monitor-exit v1

    #@18
    return-object v0

    #@19
    .line 1994
    :catchall_0
    move-exception v0

    #@1a
    :try_start_4
    monitor-exit v2

    #@1b
    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    #@1c
    :catchall_1
    move-exception v0

    #@1d
    monitor-exit v1

    #@1e
    throw v0
.end method

.method private static native getTdlsStatusNative(ILjava/lang/String;)Lcom/android/server/wifi/WifiNative$TdlsStatus;
.end method

.method public static declared-synchronized getWifiLinkLayerStats(Ljava/lang/String;)Landroid/net/wifi/WifiLinkLayerStats;
    .locals 4
    .param p0, "iface"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    const-class v1, Lcom/android/server/wifi/WifiNative;

    #@3
    monitor-enter v1

    #@4
    .line 1791
    if-nez p0, :cond_0

    #@6
    monitor-exit v1

    #@7
    return-object v3

    #@8
    .line 1792
    :cond_0
    :try_start_0
    sget-object v2, Lcom/android/server/wifi/WifiNative;->mLock:Ljava/lang/Object;

    #@a
    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    #@b
    .line 1793
    :try_start_1
    invoke-static {}, Lcom/android/server/wifi/WifiNative;->isHalStarted()Z

    #@e
    move-result v0

    #@f
    if-eqz v0, :cond_1

    #@11
    .line 1794
    sget v0, Lcom/android/server/wifi/WifiNative;->sWlan0Index:I

    #@13
    invoke-static {v0}, Lcom/android/server/wifi/WifiNative;->getWifiLinkLayerStatsNative(I)Landroid/net/wifi/WifiLinkLayerStats;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@16
    move-result-object v0

    #@17
    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    #@18
    monitor-exit v1

    #@19
    return-object v0

    #@1a
    :cond_1
    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    #@1b
    monitor-exit v1

    #@1c
    .line 1796
    return-object v3

    #@1d
    .line 1792
    :catchall_0
    move-exception v0

    #@1e
    :try_start_4
    monitor-exit v2

    #@1f
    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    #@20
    :catchall_1
    move-exception v0

    #@21
    monitor-exit v1

    #@22
    throw v0
.end method

.method private static native getWifiLinkLayerStatsNative(I)Landroid/net/wifi/WifiLinkLayerStats;
.end method

.method public static native isDriverLoaded()Z
.end method

.method public static declared-synchronized isGetChannelsForBandSupported()Z
    .locals 3

    #@0
    .prologue
    const-class v1, Lcom/android/server/wifi/WifiNative;

    #@2
    monitor-enter v1

    #@3
    .line 1914
    :try_start_0
    sget-object v2, Lcom/android/server/wifi/WifiNative;->mLock:Ljava/lang/Object;

    #@5
    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    #@6
    .line 1915
    :try_start_1
    invoke-static {}, Lcom/android/server/wifi/WifiNative;->isHalStarted()Z

    #@9
    move-result v0

    #@a
    if-eqz v0, :cond_0

    #@c
    .line 1916
    invoke-static {}, Lcom/android/server/wifi/WifiNative;->isGetChannelsForBandSupportedNative()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@f
    move-result v0

    #@10
    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    #@11
    monitor-exit v1

    #@12
    return v0

    #@13
    :cond_0
    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    #@14
    .line 1918
    const/4 v0, 0x0

    #@15
    monitor-exit v1

    #@16
    return v0

    #@17
    .line 1914
    :catchall_0
    move-exception v0

    #@18
    :try_start_4
    monitor-exit v2

    #@19
    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    #@1a
    :catchall_1
    move-exception v0

    #@1b
    monitor-exit v1

    #@1c
    throw v0
.end method

.method private static native isGetChannelsForBandSupportedNative()Z
.end method

.method public static isHalStarted()Z
    .locals 4

    #@0
    .prologue
    .line 1296
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

.method public static native killSupplicant(Z)Z
.end method

.method public static native loadDriver()Z
.end method

.method private localLog(Ljava/lang/String;)V
    .locals 3
    .param p1, "s"    # Ljava/lang/String;

    #@0
    .prologue
    .line 157
    sget-object v0, Lcom/android/server/wifi/WifiNative;->mLocalLog:Landroid/util/LocalLog;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 158
    sget-object v0, Lcom/android/server/wifi/WifiNative;->mLocalLog:Landroid/util/LocalLog;

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
    .line 156
    :cond_0
    return-void
.end method

.method private logDbg(Ljava/lang/String;)V
    .locals 8
    .param p1, "debug"    # Ljava/lang/String;

    #@0
    .prologue
    .line 319
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    #@3
    move-result-wide v0

    #@4
    .line 320
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
    .line 321
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
    .line 322
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
    .line 321
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@42
    move-result-object v4

    #@43
    .line 322
    const-string/jumbo v5, " - "

    #@46
    .line 321
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@49
    move-result-object v4

    #@4a
    .line 323
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
    .line 321
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5c
    move-result-object v4

    #@5d
    .line 323
    const-string/jumbo v5, " - "

    #@60
    .line 321
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@63
    move-result-object v4

    #@64
    .line 324
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
    .line 321
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@76
    move-result-object v4

    #@77
    .line 324
    const-string/jumbo v5, " - "

    #@7a
    .line 321
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@7d
    move-result-object v4

    #@7e
    .line 325
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
    .line 321
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@90
    move-result-object v4

    #@91
    .line 325
    const-string/jumbo v5, " - "

    #@94
    .line 321
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@97
    move-result-object v4

    #@98
    .line 326
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
    .line 321
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
    .line 318
    return-void
.end method

.method static declared-synchronized onFullScanResult(ILandroid/net/wifi/ScanResult;[B)V
    .locals 4
    .param p0, "id"    # I
    .param p1, "result"    # Landroid/net/wifi/ScanResult;
    .param p2, "bytes"    # [B

    #@0
    .prologue
    const-class v1, Lcom/android/server/wifi/WifiNative;

    #@2
    monitor-enter v1

    #@3
    .line 1559
    :try_start_0
    sget-boolean v0, Lcom/android/server/wifi/WifiNative;->DBG:Z

    #@5
    if-eqz v0, :cond_0

    #@7
    const-string/jumbo v0, "WifiNative-HAL"

    #@a
    new-instance v2, Ljava/lang/StringBuilder;

    #@c
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@f
    const-string/jumbo v3, "Got a full scan results event, ssid = "

    #@12
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@15
    move-result-object v2

    #@16
    iget-object v3, p1, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    #@18
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1b
    move-result-object v2

    #@1c
    const-string/jumbo v3, ", "

    #@1f
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@22
    move-result-object v2

    #@23
    .line 1560
    const-string/jumbo v3, "num = "

    #@26
    .line 1559
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@29
    move-result-object v2

    #@2a
    .line 1560
    array-length v3, p2

    #@2b
    .line 1559
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@2e
    move-result-object v2

    #@2f
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@32
    move-result-object v2

    #@33
    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@36
    .line 1562
    :cond_0
    sget-object v0, Lcom/android/server/wifi/WifiNative;->sScanEventHandler:Lcom/android/server/wifi/WifiNative$ScanEventHandler;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@38
    if-nez v0, :cond_1

    #@3a
    monitor-exit v1

    #@3b
    .line 1563
    return-void

    #@3c
    .line 1565
    :cond_1
    :try_start_1
    const-string/jumbo v0, " onFullScanResult "

    #@3f
    invoke-static {p1, p2, v0}, Lcom/android/server/wifi/WifiNative;->populateScanResult(Landroid/net/wifi/ScanResult;[BLjava/lang/String;)V

    #@42
    .line 1567
    sget-object v0, Lcom/android/server/wifi/WifiNative;->sScanEventHandler:Lcom/android/server/wifi/WifiNative$ScanEventHandler;

    #@44
    invoke-interface {v0, p1}, Lcom/android/server/wifi/WifiNative$ScanEventHandler;->onFullScanResult(Landroid/net/wifi/ScanResult;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@47
    monitor-exit v1

    #@48
    .line 1558
    return-void

    #@49
    :catchall_0
    move-exception v0

    #@4a
    monitor-exit v1

    #@4b
    throw v0
.end method

.method public static declared-synchronized onHotlistApFound(I[Landroid/net/wifi/ScanResult;)V
    .locals 4
    .param p0, "id"    # I
    .param p1, "results"    # [Landroid/net/wifi/ScanResult;

    #@0
    .prologue
    const-class v1, Lcom/android/server/wifi/WifiNative;

    #@2
    monitor-enter v1

    #@3
    .line 1706
    :try_start_0
    sget-object v2, Lcom/android/server/wifi/WifiNative;->mLock:Ljava/lang/Object;

    #@5
    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    #@6
    .line 1707
    :try_start_1
    invoke-static {}, Lcom/android/server/wifi/WifiNative;->isHalStarted()Z

    #@9
    move-result v0

    #@a
    if-eqz v0, :cond_0

    #@c
    .line 1708
    sget v0, Lcom/android/server/wifi/WifiNative;->sHotlistCmdId:I

    #@e
    if-eqz v0, :cond_1

    #@10
    .line 1709
    sget-object v0, Lcom/android/server/wifi/WifiNative;->sHotlistEventHandler:Lcom/android/server/wifi/WifiNative$HotlistEventHandler;

    #@12
    invoke-interface {v0, p1}, Lcom/android/server/wifi/WifiNative$HotlistEventHandler;->onHotlistApFound([Landroid/net/wifi/ScanResult;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@15
    :cond_0
    :goto_0
    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    #@16
    monitor-exit v1

    #@17
    .line 1705
    return-void

    #@18
    .line 1712
    :cond_1
    :try_start_3
    const-string/jumbo v0, "WifiNative-HAL"

    #@1b
    const-string/jumbo v3, "Ignoring hotlist AP found event"

    #@1e
    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@21
    goto :goto_0

    #@22
    .line 1706
    :catchall_0
    move-exception v0

    #@23
    :try_start_4
    monitor-exit v2

    #@24
    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    #@25
    :catchall_1
    move-exception v0

    #@26
    monitor-exit v1

    #@27
    throw v0
.end method

.method public static declared-synchronized onHotlistApLost(I[Landroid/net/wifi/ScanResult;)V
    .locals 4
    .param p0, "id"    # I
    .param p1, "results"    # [Landroid/net/wifi/ScanResult;

    #@0
    .prologue
    const-class v1, Lcom/android/server/wifi/WifiNative;

    #@2
    monitor-enter v1

    #@3
    .line 1719
    :try_start_0
    sget-object v2, Lcom/android/server/wifi/WifiNative;->mLock:Ljava/lang/Object;

    #@5
    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    #@6
    .line 1720
    :try_start_1
    invoke-static {}, Lcom/android/server/wifi/WifiNative;->isHalStarted()Z

    #@9
    move-result v0

    #@a
    if-eqz v0, :cond_0

    #@c
    .line 1721
    sget v0, Lcom/android/server/wifi/WifiNative;->sHotlistCmdId:I

    #@e
    if-eqz v0, :cond_1

    #@10
    .line 1722
    sget-object v0, Lcom/android/server/wifi/WifiNative;->sHotlistEventHandler:Lcom/android/server/wifi/WifiNative$HotlistEventHandler;

    #@12
    invoke-interface {v0, p1}, Lcom/android/server/wifi/WifiNative$HotlistEventHandler;->onHotlistApLost([Landroid/net/wifi/ScanResult;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@15
    :cond_0
    :goto_0
    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    #@16
    monitor-exit v1

    #@17
    .line 1718
    return-void

    #@18
    .line 1725
    :cond_1
    :try_start_3
    const-string/jumbo v0, "WifiNative-HAL"

    #@1b
    const-string/jumbo v3, "Ignoring hotlist AP lost event"

    #@1e
    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@21
    goto :goto_0

    #@22
    .line 1719
    :catchall_0
    move-exception v0

    #@23
    :try_start_4
    monitor-exit v2

    #@24
    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    #@25
    :catchall_1
    move-exception v0

    #@26
    monitor-exit v1

    #@27
    throw v0
.end method

.method public static declared-synchronized onPnoNetworkFound(I[Landroid/net/wifi/ScanResult;)V
    .locals 5
    .param p0, "id"    # I
    .param p1, "results"    # [Landroid/net/wifi/ScanResult;

    #@0
    .prologue
    const-class v2, Lcom/android/server/wifi/WifiNative;

    #@2
    monitor-enter v2

    #@3
    .line 2289
    if-nez p1, :cond_0

    #@5
    .line 2290
    :try_start_0
    const-string/jumbo v1, "WifiNative-HAL"

    #@8
    const-string/jumbo v3, "onPnoNetworkFound null results"

    #@b
    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    #@e
    monitor-exit v2

    #@f
    .line 2291
    return-void

    #@10
    .line 2294
    :cond_0
    :try_start_1
    const-string/jumbo v1, "WifiNative-HAL"

    #@13
    new-instance v3, Ljava/lang/StringBuilder;

    #@15
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@18
    const-string/jumbo v4, "WifiNative.onPnoNetworkFound result "

    #@1b
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1e
    move-result-object v3

    #@1f
    array-length v4, p1

    #@20
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@23
    move-result-object v3

    #@24
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@27
    move-result-object v3

    #@28
    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@2b
    .line 2298
    const/4 v0, 0x0

    #@2c
    .local v0, "i":I
    :goto_0
    array-length v1, p1

    #@2d
    if-ge v0, v1, :cond_1

    #@2f
    .line 2299
    const-string/jumbo v1, "WifiNative-HAL"

    #@32
    new-instance v3, Ljava/lang/StringBuilder;

    #@34
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@37
    const-string/jumbo v4, "onPnoNetworkFound SSID "

    #@3a
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3d
    move-result-object v3

    #@3e
    aget-object v4, p1, v0

    #@40
    iget-object v4, v4, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    #@42
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@45
    move-result-object v3

    #@46
    .line 2300
    const-string/jumbo v4, " "

    #@49
    .line 2299
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4c
    move-result-object v3

    #@4d
    .line 2300
    aget-object v4, p1, v0

    #@4f
    iget v4, v4, Landroid/net/wifi/ScanResult;->level:I

    #@51
    .line 2299
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@54
    move-result-object v3

    #@55
    .line 2300
    const-string/jumbo v4, " "

    #@58
    .line 2299
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5b
    move-result-object v3

    #@5c
    .line 2300
    aget-object v4, p1, v0

    #@5e
    iget v4, v4, Landroid/net/wifi/ScanResult;->frequency:I

    #@60
    .line 2299
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@63
    move-result-object v3

    #@64
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@67
    move-result-object v3

    #@68
    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@6b
    .line 2302
    aget-object v1, p1, v0

    #@6d
    aget-object v3, p1, v0

    #@6f
    iget-object v3, v3, Landroid/net/wifi/ScanResult;->bytes:[B

    #@71
    const-string/jumbo v4, "onPnoNetworkFound "

    #@74
    invoke-static {v1, v3, v4}, Lcom/android/server/wifi/WifiNative;->populateScanResult(Landroid/net/wifi/ScanResult;[BLjava/lang/String;)V

    #@77
    .line 2303
    aget-object v1, p1, v0

    #@79
    aget-object v3, p1, v0

    #@7b
    iget-object v3, v3, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    #@7d
    invoke-static {v3}, Landroid/net/wifi/WifiSsid;->createFromAsciiEncoded(Ljava/lang/String;)Landroid/net/wifi/WifiSsid;

    #@80
    move-result-object v3

    #@81
    iput-object v3, v1, Landroid/net/wifi/ScanResult;->wifiSsid:Landroid/net/wifi/WifiSsid;

    #@83
    .line 2298
    add-int/lit8 v0, v0, 0x1

    #@85
    goto :goto_0

    #@86
    .line 2305
    :cond_1
    sget-object v3, Lcom/android/server/wifi/WifiNative;->mLock:Ljava/lang/Object;

    #@88
    monitor-enter v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    #@89
    .line 2306
    :try_start_2
    sget v1, Lcom/android/server/wifi/WifiNative;->sPnoCmdId:I

    #@8b
    if-eqz v1, :cond_2

    #@8d
    sget-object v1, Lcom/android/server/wifi/WifiNative;->sWifiPnoEventHandler:Lcom/android/server/wifi/WifiNative$WifiPnoEventHandler;

    #@8f
    if-eqz v1, :cond_2

    #@91
    .line 2307
    sget-object v1, Lcom/android/server/wifi/WifiNative;->sWifiPnoEventHandler:Lcom/android/server/wifi/WifiNative$WifiPnoEventHandler;

    #@93
    invoke-interface {v1, p1}, Lcom/android/server/wifi/WifiNative$WifiPnoEventHandler;->onPnoNetworkFound([Landroid/net/wifi/ScanResult;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@96
    :goto_1
    :try_start_3
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    #@97
    monitor-exit v2

    #@98
    .line 2287
    return-void

    #@99
    .line 2310
    :cond_2
    :try_start_4
    const-string/jumbo v1, "WifiNative-HAL"

    #@9c
    const-string/jumbo v4, "Ignoring Pno Network found event"

    #@9f
    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    #@a2
    goto :goto_1

    #@a3
    .line 2305
    :catchall_0
    move-exception v1

    #@a4
    :try_start_5
    monitor-exit v3

    #@a5
    throw v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    #@a6
    .end local v0    # "i":I
    :catchall_1
    move-exception v1

    #@a7
    monitor-exit v2

    #@a8
    throw v1
.end method

.method private static onRingBufferData(Lcom/android/server/wifi/WifiNative$RingBufferStatus;[B)V
    .locals 1
    .param p0, "status"    # Lcom/android/server/wifi/WifiNative$RingBufferStatus;
    .param p1, "buffer"    # [B

    #@0
    .prologue
    .line 2049
    sget-object v0, Lcom/android/server/wifi/WifiNative;->sWifiLoggerEventHandler:Lcom/android/server/wifi/WifiNative$WifiLoggerEventHandler;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 2050
    sget-object v0, Lcom/android/server/wifi/WifiNative;->sWifiLoggerEventHandler:Lcom/android/server/wifi/WifiNative$WifiLoggerEventHandler;

    #@6
    invoke-interface {v0, p0, p1}, Lcom/android/server/wifi/WifiNative$WifiLoggerEventHandler;->onRingBufferData(Lcom/android/server/wifi/WifiNative$RingBufferStatus;[B)V

    #@9
    .line 2048
    :cond_0
    return-void
.end method

.method private static declared-synchronized onRttResults(I[Landroid/net/wifi/RttManager$RttResult;)V
    .locals 4
    .param p0, "id"    # I
    .param p1, "results"    # [Landroid/net/wifi/RttManager$RttResult;

    #@0
    .prologue
    const-class v1, Lcom/android/server/wifi/WifiNative;

    #@2
    monitor-enter v1

    #@3
    .line 1831
    :try_start_0
    sget v0, Lcom/android/server/wifi/WifiNative;->sRttCmdId:I

    #@5
    if-ne p0, v0, :cond_0

    #@7
    .line 1832
    const-string/jumbo v0, "WifiNative-HAL"

    #@a
    new-instance v2, Ljava/lang/StringBuilder;

    #@c
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@f
    const-string/jumbo v3, "Received "

    #@12
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@15
    move-result-object v2

    #@16
    array-length v3, p1

    #@17
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@1a
    move-result-object v2

    #@1b
    const-string/jumbo v3, " rtt results"

    #@1e
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@21
    move-result-object v2

    #@22
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@25
    move-result-object v2

    #@26
    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@29
    .line 1833
    sget-object v0, Lcom/android/server/wifi/WifiNative;->sRttEventHandler:Lcom/android/server/wifi/WifiNative$RttEventHandler;

    #@2b
    invoke-interface {v0, p1}, Lcom/android/server/wifi/WifiNative$RttEventHandler;->onRttResults([Landroid/net/wifi/RttManager$RttResult;)V

    #@2e
    .line 1834
    const/4 v0, 0x0

    #@2f
    sput v0, Lcom/android/server/wifi/WifiNative;->sRttCmdId:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@31
    :goto_0
    monitor-exit v1

    #@32
    .line 1830
    return-void

    #@33
    .line 1836
    :cond_0
    :try_start_1
    const-string/jumbo v0, "WifiNative-HAL"

    #@36
    new-instance v2, Ljava/lang/StringBuilder;

    #@38
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@3b
    const-string/jumbo v3, "RTT Received event for unknown cmd = "

    #@3e
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@41
    move-result-object v2

    #@42
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@45
    move-result-object v2

    #@46
    const-string/jumbo v3, ", current id = "

    #@49
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4c
    move-result-object v2

    #@4d
    sget v3, Lcom/android/server/wifi/WifiNative;->sRttCmdId:I

    #@4f
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@52
    move-result-object v2

    #@53
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@56
    move-result-object v2

    #@57
    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@5a
    goto :goto_0

    #@5b
    :catchall_0
    move-exception v0

    #@5c
    monitor-exit v1

    #@5d
    throw v0
.end method

.method static declared-synchronized onScanResultsAvailable(I)V
    .locals 2
    .param p0, "id"    # I

    #@0
    .prologue
    const-class v1, Lcom/android/server/wifi/WifiNative;

    #@2
    monitor-enter v1

    #@3
    .line 1390
    :try_start_0
    sget-object v0, Lcom/android/server/wifi/WifiNative;->sScanEventHandler:Lcom/android/server/wifi/WifiNative$ScanEventHandler;

    #@5
    if-eqz v0, :cond_0

    #@7
    .line 1391
    sget-object v0, Lcom/android/server/wifi/WifiNative;->sScanEventHandler:Lcom/android/server/wifi/WifiNative$ScanEventHandler;

    #@9
    invoke-interface {v0}, Lcom/android/server/wifi/WifiNative$ScanEventHandler;->onScanResultsAvailable()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@c
    :cond_0
    monitor-exit v1

    #@d
    .line 1389
    return-void

    #@e
    :catchall_0
    move-exception v0

    #@f
    monitor-exit v1

    #@10
    throw v0
.end method

.method static declared-synchronized onScanStatus(I)V
    .locals 2
    .param p0, "status"    # I

    #@0
    .prologue
    const-class v1, Lcom/android/server/wifi/WifiNative;

    #@2
    monitor-enter v1

    #@3
    .line 1400
    :try_start_0
    sget v0, Lcom/android/server/wifi/WifiNative;->WIFI_SCAN_BUFFER_FULL:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@5
    if-ne p0, v0, :cond_1

    #@7
    :cond_0
    :goto_0
    monitor-exit v1

    #@8
    .line 1399
    return-void

    #@9
    .line 1402
    :cond_1
    :try_start_1
    sget v0, Lcom/android/server/wifi/WifiNative;->WIFI_SCAN_COMPLETE:I

    #@b
    if-ne p0, v0, :cond_0

    #@d
    .line 1403
    sget-object v0, Lcom/android/server/wifi/WifiNative;->sScanEventHandler:Lcom/android/server/wifi/WifiNative$ScanEventHandler;

    #@f
    if-eqz v0, :cond_0

    #@11
    .line 1404
    sget-object v0, Lcom/android/server/wifi/WifiNative;->sScanEventHandler:Lcom/android/server/wifi/WifiNative$ScanEventHandler;

    #@13
    invoke-interface {v0}, Lcom/android/server/wifi/WifiNative$ScanEventHandler;->onScanStatus()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@16
    goto :goto_0

    #@17
    :catchall_0
    move-exception v0

    #@18
    monitor-exit v1

    #@19
    throw v0
.end method

.method static declared-synchronized onSignificantWifiChange(I[Landroid/net/wifi/ScanResult;)V
    .locals 4
    .param p0, "id"    # I
    .param p1, "results"    # [Landroid/net/wifi/ScanResult;

    #@0
    .prologue
    const-class v1, Lcom/android/server/wifi/WifiNative;

    #@2
    monitor-enter v1

    #@3
    .line 1779
    :try_start_0
    sget-object v2, Lcom/android/server/wifi/WifiNative;->mLock:Ljava/lang/Object;

    #@5
    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    #@6
    .line 1780
    :try_start_1
    sget v0, Lcom/android/server/wifi/WifiNative;->sSignificantWifiChangeCmdId:I

    #@8
    if-eqz v0, :cond_0

    #@a
    .line 1781
    sget-object v0, Lcom/android/server/wifi/WifiNative;->sSignificantWifiChangeHandler:Lcom/android/server/wifi/WifiNative$SignificantWifiChangeEventHandler;

    #@c
    invoke-interface {v0, p1}, Lcom/android/server/wifi/WifiNative$SignificantWifiChangeEventHandler;->onChangesFound([Landroid/net/wifi/ScanResult;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@f
    :goto_0
    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    #@10
    monitor-exit v1

    #@11
    .line 1778
    return-void

    #@12
    .line 1784
    :cond_0
    :try_start_3
    const-string/jumbo v0, "WifiNative-HAL"

    #@15
    const-string/jumbo v3, "Ignoring significant wifi change"

    #@18
    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@1b
    goto :goto_0

    #@1c
    .line 1779
    :catchall_0
    move-exception v0

    #@1d
    :try_start_4
    monitor-exit v2

    #@1e
    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    #@1f
    :catchall_1
    move-exception v0

    #@20
    monitor-exit v1

    #@21
    throw v0
.end method

.method private static declared-synchronized onTdlsStatus(Ljava/lang/String;II)Z
    .locals 2
    .param p0, "macAddr"    # Ljava/lang/String;
    .param p1, "status"    # I
    .param p2, "reason"    # I

    #@0
    .prologue
    const-class v1, Lcom/android/server/wifi/WifiNative;

    #@2
    monitor-enter v1

    #@3
    .line 2027
    :try_start_0
    sget-object v0, Lcom/android/server/wifi/WifiNative;->sTdlsEventHandler:Lcom/android/server/wifi/WifiNative$TdlsEventHandler;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@5
    if-nez v0, :cond_0

    #@7
    .line 2028
    const/4 v0, 0x0

    #@8
    monitor-exit v1

    #@9
    return v0

    #@a
    .line 2030
    :cond_0
    :try_start_1
    sget-object v0, Lcom/android/server/wifi/WifiNative;->sTdlsEventHandler:Lcom/android/server/wifi/WifiNative$TdlsEventHandler;

    #@c
    invoke-virtual {v0, p0, p1, p2}, Lcom/android/server/wifi/WifiNative$TdlsEventHandler;->onTdlsStatus(Ljava/lang/String;II)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@f
    .line 2031
    const/4 v0, 0x1

    #@10
    monitor-exit v1

    #@11
    return v0

    #@12
    :catchall_0
    move-exception v0

    #@13
    monitor-exit v1

    #@14
    throw v0
.end method

.method private static onWifiAlert([BI)V
    .locals 1
    .param p0, "buffer"    # [B
    .param p1, "errorCode"    # I

    #@0
    .prologue
    .line 2054
    sget-object v0, Lcom/android/server/wifi/WifiNative;->sWifiLoggerEventHandler:Lcom/android/server/wifi/WifiNative$WifiLoggerEventHandler;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 2055
    sget-object v0, Lcom/android/server/wifi/WifiNative;->sWifiLoggerEventHandler:Lcom/android/server/wifi/WifiNative$WifiLoggerEventHandler;

    #@6
    invoke-interface {v0, p1, p0}, Lcom/android/server/wifi/WifiNative$WifiLoggerEventHandler;->onWifiAlert(I[B)V

    #@9
    .line 2053
    :cond_0
    return-void
.end method

.method private static onWifiFwMemoryAvailable([B)V
    .locals 3
    .param p0, "buffer"    # [B

    #@0
    .prologue
    .line 2189
    sput-object p0, Lcom/android/server/wifi/WifiNative;->mFwMemoryDump:[B

    #@2
    .line 2190
    sget-boolean v0, Lcom/android/server/wifi/WifiNative;->DBG:Z

    #@4
    if-eqz v0, :cond_0

    #@6
    .line 2191
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
    .line 2192
    if-nez p0, :cond_1

    #@17
    const/4 v0, 0x0

    #@18
    .line 2191
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
    .line 2188
    :cond_0
    return-void

    #@24
    .line 2192
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
    .line 1104
    if-nez p1, :cond_0

    #@3
    return-object v7

    #@4
    .line 1106
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/WifiNative;->p2pPeer(Ljava/lang/String;)Ljava/lang/String;

    #@7
    move-result-object v1

    #@8
    .line 1107
    .local v1, "peerInfo":Ljava/lang/String;
    if-nez v1, :cond_1

    #@a
    return-object v7

    #@b
    .line 1108
    :cond_1
    const-string/jumbo v4, "\n"

    #@e
    invoke-virtual {v1, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    #@11
    move-result-object v3

    #@12
    .line 1110
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
    .line 1111
    const/4 v4, 0x0

    #@27
    array-length v5, v3

    #@28
    :goto_0
    if-ge v4, v5, :cond_2

    #@2a
    aget-object v2, v3, v4

    #@2c
    .line 1112
    .local v2, "token":Ljava/lang/String;
    invoke-virtual {v2, p2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    #@2f
    move-result v6

    #@30
    if-eqz v6, :cond_4

    #@32
    .line 1113
    const-string/jumbo v4, "="

    #@35
    invoke-virtual {v2, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    #@38
    move-result-object v0

    #@39
    .line 1114
    .local v0, "nameValue":[Ljava/lang/String;
    array-length v4, v0

    #@3a
    const/4 v5, 0x2

    #@3b
    if-eq v4, v5, :cond_3

    #@3d
    .line 1118
    .end local v0    # "nameValue":[Ljava/lang/String;
    .end local v2    # "token":Ljava/lang/String;
    :cond_2
    return-object v7

    #@3e
    .line 1115
    .restart local v0    # "nameValue":[Ljava/lang/String;
    .restart local v2    # "token":Ljava/lang/String;
    :cond_3
    const/4 v4, 0x1

    #@3f
    aget-object v4, v0, v4

    #@41
    return-object v4

    #@42
    .line 1111
    .end local v0    # "nameValue":[Ljava/lang/String;
    :cond_4
    add-int/lit8 v4, v4, 0x1

    #@44
    goto :goto_0
.end method

.method public static declared-synchronized pauseScan()V
    .locals 5

    #@0
    .prologue
    const-class v2, Lcom/android/server/wifi/WifiNative;

    #@2
    monitor-enter v2

    #@3
    .line 1616
    :try_start_0
    sget-object v3, Lcom/android/server/wifi/WifiNative;->mLock:Ljava/lang/Object;

    #@5
    monitor-enter v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    #@6
    .line 1617
    :try_start_1
    invoke-static {}, Lcom/android/server/wifi/WifiNative;->isHalStarted()Z

    #@9
    move-result v1

    #@a
    if-eqz v1, :cond_0

    #@c
    .line 1618
    sget v1, Lcom/android/server/wifi/WifiNative;->sScanCmdId:I

    #@e
    if-eqz v1, :cond_0

    #@10
    sget-object v1, Lcom/android/server/wifi/WifiNative;->sScanSettings:Lcom/android/server/wifi/WifiNative$ScanSettings;

    #@12
    if-eqz v1, :cond_0

    #@14
    sget-object v1, Lcom/android/server/wifi/WifiNative;->sScanEventHandler:Lcom/android/server/wifi/WifiNative$ScanEventHandler;

    #@16
    if-eqz v1, :cond_0

    #@18
    .line 1619
    const-string/jumbo v1, "WifiNative-HAL"

    #@1b
    const-string/jumbo v4, "Pausing scan"

    #@1e
    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@21
    .line 1620
    sget v1, Lcom/android/server/wifi/WifiNative;->sWlan0Index:I

    #@23
    const/4 v4, 0x1

    #@24
    invoke-static {v1, v4}, Lcom/android/server/wifi/WifiNative;->getScanResultsNative(IZ)[Landroid/net/wifi/WifiScanner$ScanData;

    #@27
    move-result-object v0

    #@28
    .line 1621
    .local v0, "scanData":[Landroid/net/wifi/WifiScanner$ScanData;
    sget v1, Lcom/android/server/wifi/WifiNative;->sWlan0Index:I

    #@2a
    sget v4, Lcom/android/server/wifi/WifiNative;->sScanCmdId:I

    #@2c
    invoke-static {v1, v4}, Lcom/android/server/wifi/WifiNative;->stopScanNative(II)Z

    #@2f
    .line 1622
    const/4 v1, 0x0

    #@30
    sput v1, Lcom/android/server/wifi/WifiNative;->sScanCmdId:I

    #@32
    .line 1623
    sget-object v1, Lcom/android/server/wifi/WifiNative;->sScanEventHandler:Lcom/android/server/wifi/WifiNative$ScanEventHandler;

    #@34
    invoke-interface {v1, v0}, Lcom/android/server/wifi/WifiNative$ScanEventHandler;->onScanPaused([Landroid/net/wifi/WifiScanner$ScanData;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@37
    :cond_0
    :try_start_2
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    #@38
    monitor-exit v2

    #@39
    .line 1615
    return-void

    #@3a
    .line 1616
    :catchall_0
    move-exception v1

    #@3b
    :try_start_3
    monitor-exit v3

    #@3c
    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    #@3d
    :catchall_1
    move-exception v1

    #@3e
    monitor-exit v2

    #@3f
    throw v1
.end method

.method static populateScanResult(Landroid/net/wifi/ScanResult;[BLjava/lang/String;)V
    .locals 21
    .param p0, "result"    # Landroid/net/wifi/ScanResult;
    .param p1, "bytes"    # [B
    .param p2, "dbg"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1450
    const/4 v15, 0x0

    #@1
    .line 1451
    .local v15, "num":I
    if-nez p1, :cond_0

    #@3
    return-void

    #@4
    .line 1452
    :cond_0
    if-nez p2, :cond_1

    #@6
    const-string/jumbo p2, ""

    #@9
    .line 1453
    :cond_1
    const/4 v9, 0x0

    #@a
    .local v9, "i":I
    :goto_0
    move-object/from16 v0, p1

    #@c
    array-length v0, v0

    #@d
    move/from16 v18, v0

    #@f
    add-int/lit8 v18, v18, -0x1

    #@11
    move/from16 v0, v18

    #@13
    if-ge v9, v0, :cond_2

    #@15
    .line 1454
    aget-byte v18, p1, v9

    #@17
    move/from16 v0, v18

    #@19
    and-int/lit16 v0, v0, 0xff

    #@1b
    move/from16 v17, v0

    #@1d
    .line 1455
    .local v17, "type":I
    add-int/lit8 v18, v9, 0x1

    #@1f
    aget-byte v18, p1, v18

    #@21
    move/from16 v0, v18

    #@23
    and-int/lit16 v14, v0, 0xff

    #@25
    .line 1456
    .local v14, "len":I
    add-int v18, v9, v14

    #@27
    add-int/lit8 v18, v18, 0x2

    #@29
    move-object/from16 v0, p1

    #@2b
    array-length v0, v0

    #@2c
    move/from16 v19, v0

    #@2e
    move/from16 v0, v18

    #@30
    move/from16 v1, v19

    #@32
    if-le v0, v1, :cond_4

    #@34
    .line 1457
    const-string/jumbo v18, "WifiNative-HAL"

    #@37
    new-instance v19, Ljava/lang/StringBuilder;

    #@39
    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    #@3c
    move-object/from16 v0, v19

    #@3e
    move-object/from16 v1, p2

    #@40
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@43
    move-result-object v19

    #@44
    const-string/jumbo v20, "bad length "

    #@47
    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4a
    move-result-object v19

    #@4b
    move-object/from16 v0, v19

    #@4d
    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@50
    move-result-object v19

    #@51
    const-string/jumbo v20, " of IE "

    #@54
    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@57
    move-result-object v19

    #@58
    move-object/from16 v0, v19

    #@5a
    move/from16 v1, v17

    #@5c
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@5f
    move-result-object v19

    #@60
    const-string/jumbo v20, " from "

    #@63
    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@66
    move-result-object v19

    #@67
    move-object/from16 v0, p0

    #@69
    iget-object v0, v0, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    #@6b
    move-object/from16 v20, v0

    #@6d
    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@70
    move-result-object v19

    #@71
    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@74
    move-result-object v19

    #@75
    invoke-static/range {v18 .. v19}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@78
    .line 1458
    const-string/jumbo v18, "WifiNative-HAL"

    #@7b
    new-instance v19, Ljava/lang/StringBuilder;

    #@7d
    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    #@80
    move-object/from16 v0, v19

    #@82
    move-object/from16 v1, p2

    #@84
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@87
    move-result-object v19

    #@88
    const-string/jumbo v20, "ignoring the rest of the IEs"

    #@8b
    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@8e
    move-result-object v19

    #@8f
    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@92
    move-result-object v19

    #@93
    invoke-static/range {v18 .. v19}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@96
    .line 1467
    .end local v14    # "len":I
    .end local v17    # "type":I
    :cond_2
    const/16 v16, 0x0

    #@98
    .line 1468
    .local v16, "secondChanelOffset":I
    const/4 v6, 0x0

    #@99
    .line 1469
    .local v6, "channelMode":B
    const/4 v4, 0x0

    #@9a
    .line 1470
    .local v4, "centerFreqIndex1":B
    const/4 v5, 0x0

    #@9b
    .line 1472
    .local v5, "centerFreqIndex2":B
    const/4 v12, 0x0

    #@9c
    .line 1474
    .local v12, "is80211McRTTResponder":Z
    new-array v8, v15, [Landroid/net/wifi/ScanResult$InformationElement;

    #@9e
    .line 1475
    .local v8, "elements":[Landroid/net/wifi/ScanResult$InformationElement;
    const/4 v9, 0x0

    #@9f
    const/4 v10, 0x0

    #@a0
    .end local v4    # "centerFreqIndex1":B
    .end local v5    # "centerFreqIndex2":B
    .end local v6    # "channelMode":B
    .local v10, "index":I
    :goto_1
    if-ge v9, v15, :cond_c

    #@a2
    .line 1476
    aget-byte v18, p1, v10

    #@a4
    move/from16 v0, v18

    #@a6
    and-int/lit16 v0, v0, 0xff

    #@a8
    move/from16 v17, v0

    #@aa
    .line 1477
    .restart local v17    # "type":I
    add-int/lit8 v18, v10, 0x1

    #@ac
    aget-byte v18, p1, v18

    #@ae
    move/from16 v0, v18

    #@b0
    and-int/lit16 v14, v0, 0xff

    #@b2
    .line 1478
    .restart local v14    # "len":I
    sget-boolean v18, Lcom/android/server/wifi/WifiNative;->DBG:Z

    #@b4
    if-eqz v18, :cond_3

    #@b6
    const-string/jumbo v18, "WifiNative-HAL"

    #@b9
    new-instance v19, Ljava/lang/StringBuilder;

    #@bb
    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    #@be
    move-object/from16 v0, v19

    #@c0
    move-object/from16 v1, p2

    #@c2
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@c5
    move-result-object v19

    #@c6
    const-string/jumbo v20, "index = "

    #@c9
    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@cc
    move-result-object v19

    #@cd
    move-object/from16 v0, v19

    #@cf
    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@d2
    move-result-object v19

    #@d3
    const-string/jumbo v20, ", type = "

    #@d6
    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@d9
    move-result-object v19

    #@da
    move-object/from16 v0, v19

    #@dc
    move/from16 v1, v17

    #@de
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@e1
    move-result-object v19

    #@e2
    const-string/jumbo v20, ", len = "

    #@e5
    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@e8
    move-result-object v19

    #@e9
    move-object/from16 v0, v19

    #@eb
    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@ee
    move-result-object v19

    #@ef
    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@f2
    move-result-object v19

    #@f3
    invoke-static/range {v18 .. v19}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@f6
    .line 1479
    :cond_3
    new-instance v7, Landroid/net/wifi/ScanResult$InformationElement;

    #@f8
    invoke-direct {v7}, Landroid/net/wifi/ScanResult$InformationElement;-><init>()V

    #@fb
    .line 1480
    .local v7, "elem":Landroid/net/wifi/ScanResult$InformationElement;
    move/from16 v0, v17

    #@fd
    iput v0, v7, Landroid/net/wifi/ScanResult$InformationElement;->id:I

    #@ff
    .line 1481
    new-array v0, v14, [B

    #@101
    move-object/from16 v18, v0

    #@103
    move-object/from16 v0, v18

    #@105
    iput-object v0, v7, Landroid/net/wifi/ScanResult$InformationElement;->bytes:[B

    #@107
    .line 1482
    const/4 v13, 0x0

    #@108
    .local v13, "j":I
    :goto_2
    if-ge v13, v14, :cond_6

    #@10a
    .line 1483
    iget-object v0, v7, Landroid/net/wifi/ScanResult$InformationElement;->bytes:[B

    #@10c
    move-object/from16 v18, v0

    #@10e
    add-int v19, v10, v13

    #@110
    add-int/lit8 v19, v19, 0x2

    #@112
    aget-byte v19, p1, v19

    #@114
    aput-byte v19, v18, v13

    #@116
    .line 1482
    add-int/lit8 v13, v13, 0x1

    #@118
    goto :goto_2

    #@119
    .line 1461
    .end local v7    # "elem":Landroid/net/wifi/ScanResult$InformationElement;
    .end local v8    # "elements":[Landroid/net/wifi/ScanResult$InformationElement;
    .end local v10    # "index":I
    .end local v12    # "is80211McRTTResponder":Z
    .end local v13    # "j":I
    .end local v16    # "secondChanelOffset":I
    :cond_4
    add-int/lit8 v15, v15, 0x1

    #@11b
    .line 1462
    sget-boolean v18, Lcom/android/server/wifi/WifiNative;->DBG:Z

    #@11d
    if-eqz v18, :cond_5

    #@11f
    const-string/jumbo v18, "WifiNative-HAL"

    #@122
    new-instance v19, Ljava/lang/StringBuilder;

    #@124
    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    #@127
    move-object/from16 v0, v19

    #@129
    move-object/from16 v1, p2

    #@12b
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@12e
    move-result-object v19

    #@12f
    const-string/jumbo v20, "bytes["

    #@132
    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@135
    move-result-object v19

    #@136
    move-object/from16 v0, v19

    #@138
    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@13b
    move-result-object v19

    #@13c
    const-string/jumbo v20, "] = ["

    #@13f
    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@142
    move-result-object v19

    #@143
    move-object/from16 v0, v19

    #@145
    move/from16 v1, v17

    #@147
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@14a
    move-result-object v19

    #@14b
    const-string/jumbo v20, ", "

    #@14e
    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@151
    move-result-object v19

    #@152
    move-object/from16 v0, v19

    #@154
    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@157
    move-result-object v19

    #@158
    const-string/jumbo v20, "]"

    #@15b
    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@15e
    move-result-object v19

    #@15f
    const-string/jumbo v20, ", "

    #@162
    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@165
    move-result-object v19

    #@166
    .line 1463
    const-string/jumbo v20, "next = "

    #@169
    .line 1462
    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@16c
    move-result-object v19

    #@16d
    .line 1463
    add-int v20, v9, v14

    #@16f
    add-int/lit8 v20, v20, 0x2

    #@171
    .line 1462
    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@174
    move-result-object v19

    #@175
    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@178
    move-result-object v19

    #@179
    invoke-static/range {v18 .. v19}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@17c
    .line 1464
    :cond_5
    add-int/lit8 v18, v14, 0x2

    #@17e
    add-int v9, v9, v18

    #@180
    goto/16 :goto_0

    #@182
    .line 1485
    .restart local v7    # "elem":Landroid/net/wifi/ScanResult$InformationElement;
    .restart local v8    # "elements":[Landroid/net/wifi/ScanResult$InformationElement;
    .restart local v10    # "index":I
    .restart local v12    # "is80211McRTTResponder":Z
    .restart local v13    # "j":I
    .restart local v16    # "secondChanelOffset":I
    :cond_6
    aput-object v7, v8, v9

    #@184
    .line 1486
    add-int/lit8 v11, v10, 0x2

    #@186
    .line 1487
    .local v11, "inforStart":I
    add-int/lit8 v18, v14, 0x2

    #@188
    add-int v10, v10, v18

    #@18a
    .line 1489
    const/16 v18, 0x3d

    #@18c
    move/from16 v0, v17

    #@18e
    move/from16 v1, v18

    #@190
    if-ne v0, v1, :cond_8

    #@192
    .line 1490
    add-int/lit8 v18, v11, 0x1

    #@194
    aget-byte v18, p1, v18

    #@196
    and-int/lit8 v16, v18, 0x3

    #@198
    .line 1475
    :cond_7
    :goto_3
    add-int/lit8 v9, v9, 0x1

    #@19a
    goto/16 :goto_1

    #@19c
    .line 1491
    :cond_8
    const/16 v18, 0xc0

    #@19e
    move/from16 v0, v17

    #@1a0
    move/from16 v1, v18

    #@1a2
    if-ne v0, v1, :cond_9

    #@1a4
    .line 1492
    aget-byte v6, p1, v11

    #@1a6
    .line 1493
    .local v6, "channelMode":B
    add-int/lit8 v18, v11, 0x1

    #@1a8
    aget-byte v4, p1, v18

    #@1aa
    .line 1494
    .local v4, "centerFreqIndex1":B
    add-int/lit8 v18, v11, 0x2

    #@1ac
    aget-byte v5, p1, v18

    #@1ae
    .local v5, "centerFreqIndex2":B
    goto :goto_3

    #@1af
    .line 1495
    .end local v4    # "centerFreqIndex1":B
    .end local v5    # "centerFreqIndex2":B
    .end local v6    # "channelMode":B
    :cond_9
    const/16 v18, 0x7f

    #@1b1
    move/from16 v0, v17

    #@1b3
    move/from16 v1, v18

    #@1b5
    if-ne v0, v1, :cond_7

    #@1b7
    .line 1499
    const/16 v18, 0x9

    #@1b9
    move/from16 v0, v18

    #@1bb
    if-ge v14, v0, :cond_a

    #@1bd
    .line 1500
    const/4 v12, 0x0

    #@1be
    goto :goto_3

    #@1bf
    .line 1502
    :cond_a
    add-int/lit8 v18, v11, 0x8

    #@1c1
    aget-byte v18, p1, v18

    #@1c3
    and-int/lit8 v18, v18, 0x40

    #@1c5
    if-eqz v18, :cond_b

    #@1c7
    .line 1503
    const/4 v12, 0x1

    #@1c8
    goto :goto_3

    #@1c9
    .line 1505
    :cond_b
    const/4 v12, 0x0

    #@1ca
    goto :goto_3

    #@1cb
    .line 1511
    .end local v7    # "elem":Landroid/net/wifi/ScanResult$InformationElement;
    .end local v11    # "inforStart":I
    .end local v13    # "j":I
    .end local v14    # "len":I
    .end local v17    # "type":I
    :cond_c
    if-eqz v12, :cond_e

    #@1cd
    .line 1512
    const-wide/16 v18, 0x2

    #@1cf
    move-object/from16 v0, p0

    #@1d1
    move-wide/from16 v1, v18

    #@1d3
    invoke-virtual {v0, v1, v2}, Landroid/net/wifi/ScanResult;->setFlag(J)V

    #@1d6
    .line 1518
    :goto_4
    if-eqz v6, :cond_10

    #@1d8
    .line 1520
    add-int/lit8 v18, v6, 0x1

    #@1da
    move/from16 v0, v18

    #@1dc
    move-object/from16 v1, p0

    #@1de
    iput v0, v1, Landroid/net/wifi/ScanResult;->channelWidth:I

    #@1e0
    .line 1523
    add-int/lit8 v18, v4, -0x24

    #@1e2
    mul-int/lit8 v18, v18, 0x5

    #@1e4
    move/from16 v0, v18

    #@1e6
    add-int/lit16 v0, v0, 0x143c

    #@1e8
    move/from16 v18, v0

    #@1ea
    move/from16 v0, v18

    #@1ec
    move-object/from16 v1, p0

    #@1ee
    iput v0, v1, Landroid/net/wifi/ScanResult;->centerFreq0:I

    #@1f0
    .line 1525
    const/16 v18, 0x1

    #@1f2
    move/from16 v0, v18

    #@1f4
    if-le v6, v0, :cond_f

    #@1f6
    .line 1526
    add-int/lit8 v18, v5, -0x24

    #@1f8
    mul-int/lit8 v18, v18, 0x5

    #@1fa
    move/from16 v0, v18

    #@1fc
    add-int/lit16 v0, v0, 0x143c

    #@1fe
    move/from16 v18, v0

    #@200
    move/from16 v0, v18

    #@202
    move-object/from16 v1, p0

    #@204
    iput v0, v1, Landroid/net/wifi/ScanResult;->centerFreq1:I

    #@206
    .line 1548
    :goto_5
    sget-boolean v18, Lcom/android/server/wifi/WifiNative;->DBG:Z

    #@208
    if-eqz v18, :cond_d

    #@20a
    .line 1549
    const-string/jumbo v19, "WifiNative-HAL"

    #@20d
    new-instance v18, Ljava/lang/StringBuilder;

    #@20f
    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    #@212
    move-object/from16 v0, v18

    #@214
    move-object/from16 v1, p2

    #@216
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@219
    move-result-object v18

    #@21a
    const-string/jumbo v20, "SSID: "

    #@21d
    move-object/from16 v0, v18

    #@21f
    move-object/from16 v1, v20

    #@221
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@224
    move-result-object v18

    #@225
    move-object/from16 v0, p0

    #@227
    iget-object v0, v0, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    #@229
    move-object/from16 v20, v0

    #@22b
    move-object/from16 v0, v18

    #@22d
    move-object/from16 v1, v20

    #@22f
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@232
    move-result-object v18

    #@233
    const-string/jumbo v20, " ChannelWidth is: "

    #@236
    move-object/from16 v0, v18

    #@238
    move-object/from16 v1, v20

    #@23a
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@23d
    move-result-object v18

    #@23e
    move-object/from16 v0, p0

    #@240
    iget v0, v0, Landroid/net/wifi/ScanResult;->channelWidth:I

    #@242
    move/from16 v20, v0

    #@244
    move-object/from16 v0, v18

    #@246
    move/from16 v1, v20

    #@248
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@24b
    move-result-object v18

    #@24c
    .line 1550
    const-string/jumbo v20, " PrimaryFreq: "

    #@24f
    .line 1549
    move-object/from16 v0, v18

    #@251
    move-object/from16 v1, v20

    #@253
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@256
    move-result-object v18

    #@257
    .line 1550
    move-object/from16 v0, p0

    #@259
    iget v0, v0, Landroid/net/wifi/ScanResult;->frequency:I

    #@25b
    move/from16 v20, v0

    #@25d
    .line 1549
    move-object/from16 v0, v18

    #@25f
    move/from16 v1, v20

    #@261
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@264
    move-result-object v18

    #@265
    .line 1550
    const-string/jumbo v20, " mCenterfreq0: "

    #@268
    .line 1549
    move-object/from16 v0, v18

    #@26a
    move-object/from16 v1, v20

    #@26c
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@26f
    move-result-object v18

    #@270
    .line 1550
    move-object/from16 v0, p0

    #@272
    iget v0, v0, Landroid/net/wifi/ScanResult;->centerFreq0:I

    #@274
    move/from16 v20, v0

    #@276
    .line 1549
    move-object/from16 v0, v18

    #@278
    move/from16 v1, v20

    #@27a
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@27d
    move-result-object v18

    #@27e
    .line 1551
    const-string/jumbo v20, " mCenterfreq1: "

    #@281
    .line 1549
    move-object/from16 v0, v18

    #@283
    move-object/from16 v1, v20

    #@285
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@288
    move-result-object v18

    #@289
    .line 1551
    move-object/from16 v0, p0

    #@28b
    iget v0, v0, Landroid/net/wifi/ScanResult;->centerFreq1:I

    #@28d
    move/from16 v20, v0

    #@28f
    .line 1549
    move-object/from16 v0, v18

    #@291
    move/from16 v1, v20

    #@293
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@296
    move-result-object v20

    #@297
    .line 1551
    if-eqz v12, :cond_14

    #@299
    .line 1552
    const-string/jumbo v18, "Support RTT reponder: "

    #@29c
    .line 1549
    :goto_6
    move-object/from16 v0, v20

    #@29e
    move-object/from16 v1, v18

    #@2a0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2a3
    move-result-object v18

    #@2a4
    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2a7
    move-result-object v18

    #@2a8
    move-object/from16 v0, v19

    #@2aa
    move-object/from16 v1, v18

    #@2ac
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@2af
    .line 1555
    :cond_d
    move-object/from16 v0, p0

    #@2b1
    iput-object v8, v0, Landroid/net/wifi/ScanResult;->informationElements:[Landroid/net/wifi/ScanResult$InformationElement;

    #@2b3
    .line 1449
    return-void

    #@2b4
    .line 1514
    :cond_e
    const-wide/16 v18, 0x2

    #@2b6
    move-object/from16 v0, p0

    #@2b8
    move-wide/from16 v1, v18

    #@2ba
    invoke-virtual {v0, v1, v2}, Landroid/net/wifi/ScanResult;->clearFlag(J)V

    #@2bd
    goto/16 :goto_4

    #@2bf
    .line 1528
    :cond_f
    const/16 v18, 0x0

    #@2c1
    move/from16 v0, v18

    #@2c3
    move-object/from16 v1, p0

    #@2c5
    iput v0, v1, Landroid/net/wifi/ScanResult;->centerFreq1:I

    #@2c7
    goto/16 :goto_5

    #@2c9
    .line 1532
    :cond_10
    if-eqz v16, :cond_13

    #@2cb
    .line 1533
    const/16 v18, 0x1

    #@2cd
    move/from16 v0, v18

    #@2cf
    move-object/from16 v1, p0

    #@2d1
    iput v0, v1, Landroid/net/wifi/ScanResult;->channelWidth:I

    #@2d3
    .line 1534
    const/16 v18, 0x1

    #@2d5
    move/from16 v0, v16

    #@2d7
    move/from16 v1, v18

    #@2d9
    if-ne v0, v1, :cond_11

    #@2db
    .line 1535
    move-object/from16 v0, p0

    #@2dd
    iget v0, v0, Landroid/net/wifi/ScanResult;->frequency:I

    #@2df
    move/from16 v18, v0

    #@2e1
    add-int/lit8 v18, v18, 0x14

    #@2e3
    move/from16 v0, v18

    #@2e5
    move-object/from16 v1, p0

    #@2e7
    iput v0, v1, Landroid/net/wifi/ScanResult;->centerFreq0:I

    #@2e9
    .line 1546
    :goto_7
    const/16 v18, 0x0

    #@2eb
    move/from16 v0, v18

    #@2ed
    move-object/from16 v1, p0

    #@2ef
    iput v0, v1, Landroid/net/wifi/ScanResult;->centerFreq1:I

    #@2f1
    goto/16 :goto_5

    #@2f3
    .line 1536
    :cond_11
    const/16 v18, 0x3

    #@2f5
    move/from16 v0, v16

    #@2f7
    move/from16 v1, v18

    #@2f9
    if-ne v0, v1, :cond_12

    #@2fb
    .line 1537
    move-object/from16 v0, p0

    #@2fd
    iget v0, v0, Landroid/net/wifi/ScanResult;->frequency:I

    #@2ff
    move/from16 v18, v0

    #@301
    add-int/lit8 v18, v18, -0x14

    #@303
    move/from16 v0, v18

    #@305
    move-object/from16 v1, p0

    #@307
    iput v0, v1, Landroid/net/wifi/ScanResult;->centerFreq0:I

    #@309
    goto :goto_7

    #@30a
    .line 1539
    :cond_12
    const/16 v18, 0x0

    #@30c
    move/from16 v0, v18

    #@30e
    move-object/from16 v1, p0

    #@310
    iput v0, v1, Landroid/net/wifi/ScanResult;->centerFreq0:I

    #@312
    .line 1540
    const-string/jumbo v18, "WifiNative-HAL"

    #@315
    new-instance v19, Ljava/lang/StringBuilder;

    #@317
    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    #@31a
    move-object/from16 v0, v19

    #@31c
    move-object/from16 v1, p2

    #@31e
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@321
    move-result-object v19

    #@322
    const-string/jumbo v20, ": Error on secondChanelOffset"

    #@325
    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@328
    move-result-object v19

    #@329
    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@32c
    move-result-object v19

    #@32d
    invoke-static/range {v18 .. v19}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@330
    goto :goto_7

    #@331
    .line 1543
    :cond_13
    const/16 v18, 0x0

    #@333
    move/from16 v0, v18

    #@335
    move-object/from16 v1, p0

    #@337
    iput v0, v1, Landroid/net/wifi/ScanResult;->centerFreq0:I

    #@339
    .line 1544
    const/16 v18, 0x0

    #@33b
    move/from16 v0, v18

    #@33d
    move-object/from16 v1, p0

    #@33f
    iput v0, v1, Landroid/net/wifi/ScanResult;->centerFreq1:I

    #@341
    goto :goto_7

    #@342
    .line 1552
    :cond_14
    const-string/jumbo v18, "Do not support RTT responder"

    #@345
    goto/16 :goto_6
.end method

.method private static native registerNatives()I
.end method

.method private static native requestRangeNative(II[Landroid/net/wifi/RttManager$RttParams;)Z
.end method

.method public static declared-synchronized requestRtt([Landroid/net/wifi/RttManager$RttParams;Lcom/android/server/wifi/WifiNative$RttEventHandler;)Z
    .locals 5
    .param p0, "params"    # [Landroid/net/wifi/RttManager$RttParams;
    .param p1, "handler"    # Lcom/android/server/wifi/WifiNative$RttEventHandler;

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    const-class v1, Lcom/android/server/wifi/WifiNative;

    #@3
    monitor-enter v1

    #@4
    .line 1847
    :try_start_0
    sget-object v2, Lcom/android/server/wifi/WifiNative;->mLock:Ljava/lang/Object;

    #@6
    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    #@7
    .line 1848
    :try_start_1
    invoke-static {}, Lcom/android/server/wifi/WifiNative;->isHalStarted()Z

    #@a
    move-result v0

    #@b
    if-eqz v0, :cond_1

    #@d
    .line 1849
    sget v0, Lcom/android/server/wifi/WifiNative;->sRttCmdId:I

    #@f
    if-eqz v0, :cond_0

    #@11
    .line 1850
    const-string/jumbo v0, "TAG"

    #@14
    const-string/jumbo v3, "Last one is still under measurement!"

    #@17
    invoke-static {v0, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@1a
    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    #@1b
    monitor-exit v1

    #@1c
    .line 1851
    return v4

    #@1d
    .line 1853
    :cond_0
    :try_start_3
    invoke-static {}, Lcom/android/server/wifi/WifiNative;->getNewCmdIdLocked()I

    #@20
    move-result v0

    #@21
    sput v0, Lcom/android/server/wifi/WifiNative;->sRttCmdId:I

    #@23
    .line 1855
    sput-object p1, Lcom/android/server/wifi/WifiNative;->sRttEventHandler:Lcom/android/server/wifi/WifiNative$RttEventHandler;

    #@25
    .line 1856
    const-string/jumbo v0, "WifiNative-HAL"

    #@28
    const-string/jumbo v3, "native issue RTT request"

    #@2b
    invoke-static {v0, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    #@2e
    .line 1857
    sget v0, Lcom/android/server/wifi/WifiNative;->sWlan0Index:I

    #@30
    sget v3, Lcom/android/server/wifi/WifiNative;->sRttCmdId:I

    #@32
    invoke-static {v0, v3, p0}, Lcom/android/server/wifi/WifiNative;->requestRangeNative(II[Landroid/net/wifi/RttManager$RttParams;)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@35
    move-result v0

    #@36
    :try_start_4
    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    #@37
    monitor-exit v1

    #@38
    return v0

    #@39
    :cond_1
    :try_start_5
    monitor-exit v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    #@3a
    monitor-exit v1

    #@3b
    .line 1859
    return v4

    #@3c
    .line 1847
    :catchall_0
    move-exception v0

    #@3d
    :try_start_6
    monitor-exit v2

    #@3e
    throw v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    #@3f
    :catchall_1
    move-exception v0

    #@40
    monitor-exit v1

    #@41
    throw v0
.end method

.method public static declared-synchronized resetHotlist()V
    .locals 4

    #@0
    .prologue
    const-class v1, Lcom/android/server/wifi/WifiNative;

    #@2
    monitor-enter v1

    #@3
    .line 1694
    :try_start_0
    sget-object v2, Lcom/android/server/wifi/WifiNative;->mLock:Ljava/lang/Object;

    #@5
    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    #@6
    .line 1695
    :try_start_1
    invoke-static {}, Lcom/android/server/wifi/WifiNative;->isHalStarted()Z

    #@9
    move-result v0

    #@a
    if-eqz v0, :cond_0

    #@c
    .line 1696
    sget v0, Lcom/android/server/wifi/WifiNative;->sHotlistCmdId:I

    #@e
    if-eqz v0, :cond_0

    #@10
    .line 1697
    sget v0, Lcom/android/server/wifi/WifiNative;->sWlan0Index:I

    #@12
    sget v3, Lcom/android/server/wifi/WifiNative;->sHotlistCmdId:I

    #@14
    invoke-static {v0, v3}, Lcom/android/server/wifi/WifiNative;->resetHotlistNative(II)Z

    #@17
    .line 1698
    const/4 v0, 0x0

    #@18
    sput v0, Lcom/android/server/wifi/WifiNative;->sHotlistCmdId:I

    #@1a
    .line 1699
    const/4 v0, 0x0

    #@1b
    sput-object v0, Lcom/android/server/wifi/WifiNative;->sHotlistEventHandler:Lcom/android/server/wifi/WifiNative$HotlistEventHandler;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@1d
    :cond_0
    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    #@1e
    monitor-exit v1

    #@1f
    .line 1693
    return-void

    #@20
    .line 1694
    :catchall_0
    move-exception v0

    #@21
    :try_start_3
    monitor-exit v2

    #@22
    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    #@23
    :catchall_1
    move-exception v0

    #@24
    monitor-exit v1

    #@25
    throw v0
.end method

.method private static native resetHotlistNative(II)Z
.end method

.method public static declared-synchronized resetLogHandler()Z
    .locals 5

    #@0
    .prologue
    const/4 v3, -0x1

    #@1
    const/4 v4, 0x0

    #@2
    const-class v1, Lcom/android/server/wifi/WifiNative;

    #@4
    monitor-enter v1

    #@5
    .line 2104
    :try_start_0
    sget-object v2, Lcom/android/server/wifi/WifiNative;->mLock:Ljava/lang/Object;

    #@7
    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    #@8
    .line 2105
    :try_start_1
    invoke-static {}, Lcom/android/server/wifi/WifiNative;->isHalStarted()Z

    #@b
    move-result v0

    #@c
    if-eqz v0, :cond_2

    #@e
    .line 2106
    sget v0, Lcom/android/server/wifi/WifiNative;->sLogCmdId:I

    #@10
    if-ne v0, v3, :cond_0

    #@12
    .line 2107
    const-string/jumbo v0, "WifiNative-HAL"

    #@15
    const-string/jumbo v3, "Can not reset handler Before set any handler"

    #@18
    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@1b
    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    #@1c
    monitor-exit v1

    #@1d
    .line 2108
    return v4

    #@1e
    .line 2110
    :cond_0
    const/4 v0, 0x0

    #@1f
    :try_start_3
    sput-object v0, Lcom/android/server/wifi/WifiNative;->sWifiLoggerEventHandler:Lcom/android/server/wifi/WifiNative$WifiLoggerEventHandler;

    #@21
    .line 2111
    sget v0, Lcom/android/server/wifi/WifiNative;->sWlan0Index:I

    #@23
    sget v3, Lcom/android/server/wifi/WifiNative;->sLogCmdId:I

    #@25
    invoke-static {v0, v3}, Lcom/android/server/wifi/WifiNative;->resetLogHandlerNative(II)Z

    #@28
    move-result v0

    #@29
    if-eqz v0, :cond_1

    #@2b
    .line 2112
    const/4 v0, -0x1

    #@2c
    sput v0, Lcom/android/server/wifi/WifiNative;->sLogCmdId:I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@2e
    :try_start_4
    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    #@2f
    .line 2113
    const/4 v0, 0x1

    #@30
    monitor-exit v1

    #@31
    return v0

    #@32
    :cond_1
    :try_start_5
    monitor-exit v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    #@33
    monitor-exit v1

    #@34
    .line 2115
    return v4

    #@35
    :cond_2
    :try_start_6
    monitor-exit v2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    #@36
    monitor-exit v1

    #@37
    .line 2118
    return v4

    #@38
    .line 2104
    :catchall_0
    move-exception v0

    #@39
    :try_start_7
    monitor-exit v2

    #@3a
    throw v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    #@3b
    :catchall_1
    move-exception v0

    #@3c
    monitor-exit v1

    #@3d
    throw v0
.end method

.method private static native resetLogHandlerNative(II)Z
.end method

.method public static declared-synchronized restartScan()V
    .locals 6

    #@0
    .prologue
    const-class v3, Lcom/android/server/wifi/WifiNative;

    #@2
    monitor-enter v3

    #@3
    .line 1630
    :try_start_0
    sget-object v4, Lcom/android/server/wifi/WifiNative;->mLock:Ljava/lang/Object;

    #@5
    monitor-enter v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    #@6
    .line 1631
    :try_start_1
    invoke-static {}, Lcom/android/server/wifi/WifiNative;->isHalStarted()Z

    #@9
    move-result v2

    #@a
    if-eqz v2, :cond_0

    #@c
    .line 1632
    sget v2, Lcom/android/server/wifi/WifiNative;->sScanCmdId:I

    #@e
    if-nez v2, :cond_0

    #@10
    sget-object v2, Lcom/android/server/wifi/WifiNative;->sScanSettings:Lcom/android/server/wifi/WifiNative$ScanSettings;

    #@12
    if-eqz v2, :cond_0

    #@14
    sget-object v2, Lcom/android/server/wifi/WifiNative;->sScanEventHandler:Lcom/android/server/wifi/WifiNative$ScanEventHandler;

    #@16
    if-eqz v2, :cond_0

    #@18
    .line 1633
    const-string/jumbo v2, "WifiNative-HAL"

    #@1b
    const-string/jumbo v5, "Restarting scan"

    #@1e
    invoke-static {v2, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@21
    .line 1634
    sget-object v0, Lcom/android/server/wifi/WifiNative;->sScanEventHandler:Lcom/android/server/wifi/WifiNative$ScanEventHandler;

    #@23
    .line 1635
    .local v0, "handler":Lcom/android/server/wifi/WifiNative$ScanEventHandler;
    sget-object v1, Lcom/android/server/wifi/WifiNative;->sScanSettings:Lcom/android/server/wifi/WifiNative$ScanSettings;

    #@25
    .line 1636
    .local v1, "settings":Lcom/android/server/wifi/WifiNative$ScanSettings;
    sget-object v2, Lcom/android/server/wifi/WifiNative;->sScanSettings:Lcom/android/server/wifi/WifiNative$ScanSettings;

    #@27
    sget-object v5, Lcom/android/server/wifi/WifiNative;->sScanEventHandler:Lcom/android/server/wifi/WifiNative$ScanEventHandler;

    #@29
    invoke-static {v2, v5}, Lcom/android/server/wifi/WifiNative;->startScan(Lcom/android/server/wifi/WifiNative$ScanSettings;Lcom/android/server/wifi/WifiNative$ScanEventHandler;)Z

    #@2c
    move-result v2

    #@2d
    if-eqz v2, :cond_1

    #@2f
    .line 1637
    sget-object v2, Lcom/android/server/wifi/WifiNative;->sScanEventHandler:Lcom/android/server/wifi/WifiNative$ScanEventHandler;

    #@31
    invoke-interface {v2}, Lcom/android/server/wifi/WifiNative$ScanEventHandler;->onScanRestarted()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@34
    :cond_0
    :goto_0
    :try_start_2
    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    #@35
    monitor-exit v3

    #@36
    .line 1629
    return-void

    #@37
    .line 1640
    :cond_1
    :try_start_3
    sput-object v0, Lcom/android/server/wifi/WifiNative;->sScanEventHandler:Lcom/android/server/wifi/WifiNative$ScanEventHandler;

    #@39
    .line 1641
    sput-object v1, Lcom/android/server/wifi/WifiNative;->sScanSettings:Lcom/android/server/wifi/WifiNative$ScanSettings;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@3b
    goto :goto_0

    #@3c
    .line 1630
    .end local v1    # "settings":Lcom/android/server/wifi/WifiNative$ScanSettings;
    :catchall_0
    move-exception v2

    #@3d
    :try_start_4
    monitor-exit v4

    #@3e
    throw v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    #@3f
    :catchall_1
    move-exception v2

    #@40
    monitor-exit v3

    #@41
    throw v2
.end method

.method public static declared-synchronized setBssidBlacklist([Ljava/lang/String;)Z
    .locals 5
    .param p0, "list"    # [Ljava/lang/String;

    #@0
    .prologue
    const-class v2, Lcom/android/server/wifi/WifiNative;

    #@2
    monitor-enter v2

    #@3
    .line 2359
    const/4 v0, 0x0

    #@4
    .line 2360
    .local v0, "size":I
    if-eqz p0, :cond_0

    #@6
    .line 2361
    :try_start_0
    array-length v0, p0

    #@7
    .line 2363
    :cond_0
    const-string/jumbo v1, "WifiNative-HAL"

    #@a
    new-instance v3, Ljava/lang/StringBuilder;

    #@c
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@f
    const-string/jumbo v4, "setBssidBlacklist cmd "

    #@12
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@15
    move-result-object v3

    #@16
    sget v4, Lcom/android/server/wifi/WifiNative;->sPnoCmdId:I

    #@18
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@1b
    move-result-object v3

    #@1c
    const-string/jumbo v4, " size "

    #@1f
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@22
    move-result-object v3

    #@23
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@26
    move-result-object v3

    #@27
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2a
    move-result-object v3

    #@2b
    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@2e
    .line 2365
    sget-object v3, Lcom/android/server/wifi/WifiNative;->mLock:Ljava/lang/Object;

    #@30
    monitor-enter v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    #@31
    .line 2366
    :try_start_1
    invoke-static {}, Lcom/android/server/wifi/WifiNative;->isHalStarted()Z

    #@34
    move-result v1

    #@35
    if-eqz v1, :cond_1

    #@37
    .line 2367
    invoke-static {}, Lcom/android/server/wifi/WifiNative;->getNewCmdIdLocked()I

    #@3a
    move-result v1

    #@3b
    sput v1, Lcom/android/server/wifi/WifiNative;->sPnoCmdId:I

    #@3d
    .line 2368
    sget v1, Lcom/android/server/wifi/WifiNative;->sWlan0Index:I

    #@3f
    sget v4, Lcom/android/server/wifi/WifiNative;->sPnoCmdId:I

    #@41
    invoke-static {v1, v4, p0}, Lcom/android/server/wifi/WifiNative;->setBssidBlacklistNative(II[Ljava/lang/String;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@44
    move-result v1

    #@45
    :try_start_2
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    #@46
    monitor-exit v2

    #@47
    return v1

    #@48
    :cond_1
    :try_start_3
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    #@49
    .line 2370
    const/4 v1, 0x0

    #@4a
    monitor-exit v2

    #@4b
    return v1

    #@4c
    .line 2365
    :catchall_0
    move-exception v1

    #@4d
    :try_start_4
    monitor-exit v3

    #@4e
    throw v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    #@4f
    :catchall_1
    move-exception v1

    #@50
    monitor-exit v2

    #@51
    throw v1
.end method

.method private static native setBssidBlacklistNative(II[Ljava/lang/String;)Z
.end method

.method public static declared-synchronized setCountryCodeHal(Ljava/lang/String;)Z
    .locals 3
    .param p0, "CountryCode"    # Ljava/lang/String;

    #@0
    .prologue
    const-class v1, Lcom/android/server/wifi/WifiNative;

    #@2
    monitor-enter v1

    #@3
    .line 1958
    :try_start_0
    sget-object v2, Lcom/android/server/wifi/WifiNative;->mLock:Ljava/lang/Object;

    #@5
    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    #@6
    .line 1959
    :try_start_1
    invoke-static {}, Lcom/android/server/wifi/WifiNative;->isHalStarted()Z

    #@9
    move-result v0

    #@a
    if-eqz v0, :cond_0

    #@c
    .line 1960
    sget v0, Lcom/android/server/wifi/WifiNative;->sWlan0Index:I

    #@e
    invoke-static {v0, p0}, Lcom/android/server/wifi/WifiNative;->setCountryCodeHalNative(ILjava/lang/String;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@11
    move-result v0

    #@12
    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    #@13
    monitor-exit v1

    #@14
    return v0

    #@15
    :cond_0
    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    #@16
    .line 1962
    const/4 v0, 0x0

    #@17
    monitor-exit v1

    #@18
    return v0

    #@19
    .line 1958
    :catchall_0
    move-exception v0

    #@1a
    :try_start_4
    monitor-exit v2

    #@1b
    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    #@1c
    :catchall_1
    move-exception v0

    #@1d
    monitor-exit v1

    #@1e
    throw v0
.end method

.method private static native setCountryCodeHalNative(ILjava/lang/String;)Z
.end method

.method public static declared-synchronized setDfsFlag(Z)Z
    .locals 3
    .param p0, "dfsOn"    # Z

    #@0
    .prologue
    const-class v1, Lcom/android/server/wifi/WifiNative;

    #@2
    monitor-enter v1

    #@3
    .line 1925
    :try_start_0
    sget-object v2, Lcom/android/server/wifi/WifiNative;->mLock:Ljava/lang/Object;

    #@5
    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    #@6
    .line 1926
    :try_start_1
    invoke-static {}, Lcom/android/server/wifi/WifiNative;->isHalStarted()Z

    #@9
    move-result v0

    #@a
    if-eqz v0, :cond_0

    #@c
    .line 1927
    sget v0, Lcom/android/server/wifi/WifiNative;->sWlan0Index:I

    #@e
    invoke-static {v0, p0}, Lcom/android/server/wifi/WifiNative;->setDfsFlagNative(IZ)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@11
    move-result v0

    #@12
    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    #@13
    monitor-exit v1

    #@14
    return v0

    #@15
    :cond_0
    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    #@16
    .line 1929
    const/4 v0, 0x0

    #@17
    monitor-exit v1

    #@18
    return v0

    #@19
    .line 1925
    :catchall_0
    move-exception v0

    #@1a
    :try_start_4
    monitor-exit v2

    #@1b
    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    #@1c
    :catchall_1
    move-exception v0

    #@1d
    monitor-exit v1

    #@1e
    throw v0
.end method

.method private static native setDfsFlagNative(IZ)Z
.end method

.method public static declared-synchronized setHotlist(Landroid/net/wifi/WifiScanner$HotlistSettings;Lcom/android/server/wifi/WifiNative$HotlistEventHandler;)Z
    .locals 5
    .param p0, "settings"    # Landroid/net/wifi/WifiScanner$HotlistSettings;
    .param p1, "eventHandler"    # Lcom/android/server/wifi/WifiNative$HotlistEventHandler;

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    const-class v1, Lcom/android/server/wifi/WifiNative;

    #@3
    monitor-enter v1

    #@4
    .line 1672
    :try_start_0
    sget-object v2, Lcom/android/server/wifi/WifiNative;->mLock:Ljava/lang/Object;

    #@6
    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    #@7
    .line 1673
    :try_start_1
    invoke-static {}, Lcom/android/server/wifi/WifiNative;->isHalStarted()Z

    #@a
    move-result v0

    #@b
    if-eqz v0, :cond_2

    #@d
    .line 1674
    sget v0, Lcom/android/server/wifi/WifiNative;->sHotlistCmdId:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@f
    if-eqz v0, :cond_0

    #@11
    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    #@12
    monitor-exit v1

    #@13
    .line 1675
    return v4

    #@14
    .line 1677
    :cond_0
    :try_start_3
    invoke-static {}, Lcom/android/server/wifi/WifiNative;->getNewCmdIdLocked()I

    #@17
    move-result v0

    #@18
    sput v0, Lcom/android/server/wifi/WifiNative;->sHotlistCmdId:I

    #@1a
    .line 1680
    sput-object p1, Lcom/android/server/wifi/WifiNative;->sHotlistEventHandler:Lcom/android/server/wifi/WifiNative$HotlistEventHandler;

    #@1c
    .line 1681
    sget v0, Lcom/android/server/wifi/WifiNative;->sWlan0Index:I

    #@1e
    sget v3, Lcom/android/server/wifi/WifiNative;->sHotlistCmdId:I

    #@20
    invoke-static {v0, v3, p0}, Lcom/android/server/wifi/WifiNative;->setHotlistNative(IILandroid/net/wifi/WifiScanner$HotlistSettings;)Z

    #@23
    move-result v0

    #@24
    if-nez v0, :cond_1

    #@26
    .line 1682
    const/4 v0, 0x0

    #@27
    sput-object v0, Lcom/android/server/wifi/WifiNative;->sHotlistEventHandler:Lcom/android/server/wifi/WifiNative$HotlistEventHandler;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@29
    :try_start_4
    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    #@2a
    monitor-exit v1

    #@2b
    .line 1683
    return v4

    #@2c
    :cond_1
    :try_start_5
    monitor-exit v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    #@2d
    .line 1686
    const/4 v0, 0x1

    #@2e
    monitor-exit v1

    #@2f
    return v0

    #@30
    :cond_2
    :try_start_6
    monitor-exit v2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    #@31
    monitor-exit v1

    #@32
    .line 1688
    return v4

    #@33
    .line 1672
    :catchall_0
    move-exception v0

    #@34
    :try_start_7
    monitor-exit v2

    #@35
    throw v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    #@36
    :catchall_1
    move-exception v0

    #@37
    monitor-exit v1

    #@38
    throw v0
.end method

.method private static native setHotlistNative(IILandroid/net/wifi/WifiScanner$HotlistSettings;)Z
.end method

.method public static declared-synchronized setLazyRoam(ZLcom/android/server/wifi/WifiNative$WifiLazyRoamParams;)Z
    .locals 4
    .param p0, "enabled"    # Z
    .param p1, "params"    # Lcom/android/server/wifi/WifiNative$WifiLazyRoamParams;

    #@0
    .prologue
    const-class v1, Lcom/android/server/wifi/WifiNative;

    #@2
    monitor-enter v1

    #@3
    .line 2345
    :try_start_0
    sget-object v2, Lcom/android/server/wifi/WifiNative;->mLock:Ljava/lang/Object;

    #@5
    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    #@6
    .line 2346
    :try_start_1
    invoke-static {}, Lcom/android/server/wifi/WifiNative;->isHalStarted()Z

    #@9
    move-result v0

    #@a
    if-eqz v0, :cond_0

    #@c
    .line 2347
    invoke-static {}, Lcom/android/server/wifi/WifiNative;->getNewCmdIdLocked()I

    #@f
    move-result v0

    #@10
    sput v0, Lcom/android/server/wifi/WifiNative;->sPnoCmdId:I

    #@12
    .line 2348
    sget v0, Lcom/android/server/wifi/WifiNative;->sWlan0Index:I

    #@14
    sget v3, Lcom/android/server/wifi/WifiNative;->sPnoCmdId:I

    #@16
    invoke-static {v0, v3, p0, p1}, Lcom/android/server/wifi/WifiNative;->setLazyRoamNative(IIZLcom/android/server/wifi/WifiNative$WifiLazyRoamParams;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@19
    move-result v0

    #@1a
    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    #@1b
    monitor-exit v1

    #@1c
    return v0

    #@1d
    :cond_0
    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    #@1e
    .line 2350
    const/4 v0, 0x0

    #@1f
    monitor-exit v1

    #@20
    return v0

    #@21
    .line 2345
    :catchall_0
    move-exception v0

    #@22
    :try_start_4
    monitor-exit v2

    #@23
    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    #@24
    :catchall_1
    move-exception v0

    #@25
    monitor-exit v1

    #@26
    throw v0
.end method

.method private static native setLazyRoamNative(IIZLcom/android/server/wifi/WifiNative$WifiLazyRoamParams;)Z
.end method

.method public static declared-synchronized setLoggingEventHandler(Lcom/android/server/wifi/WifiNative$WifiLoggerEventHandler;)Z
    .locals 6
    .param p0, "handler"    # Lcom/android/server/wifi/WifiNative$WifiLoggerEventHandler;

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    const-class v2, Lcom/android/server/wifi/WifiNative;

    #@3
    monitor-enter v2

    #@4
    .line 2061
    :try_start_0
    sget-object v3, Lcom/android/server/wifi/WifiNative;->mLock:Ljava/lang/Object;

    #@6
    monitor-enter v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    #@7
    .line 2062
    :try_start_1
    invoke-static {}, Lcom/android/server/wifi/WifiNative;->isHalStarted()Z

    #@a
    move-result v1

    #@b
    if-eqz v1, :cond_1

    #@d
    .line 2063
    sget v0, Lcom/android/server/wifi/WifiNative;->sLogCmdId:I

    #@f
    .line 2064
    .local v0, "oldId":I
    invoke-static {}, Lcom/android/server/wifi/WifiNative;->getNewCmdIdLocked()I

    #@12
    move-result v1

    #@13
    sput v1, Lcom/android/server/wifi/WifiNative;->sLogCmdId:I

    #@15
    .line 2065
    sget v1, Lcom/android/server/wifi/WifiNative;->sWlan0Index:I

    #@17
    sget v4, Lcom/android/server/wifi/WifiNative;->sLogCmdId:I

    #@19
    invoke-static {v1, v4}, Lcom/android/server/wifi/WifiNative;->setLoggingEventHandlerNative(II)Z

    #@1c
    move-result v1

    #@1d
    if-nez v1, :cond_0

    #@1f
    .line 2066
    sput v0, Lcom/android/server/wifi/WifiNative;->sLogCmdId:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@21
    :try_start_2
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    #@22
    monitor-exit v2

    #@23
    .line 2067
    return v5

    #@24
    .line 2069
    :cond_0
    :try_start_3
    sput-object p0, Lcom/android/server/wifi/WifiNative;->sWifiLoggerEventHandler:Lcom/android/server/wifi/WifiNative$WifiLoggerEventHandler;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@26
    :try_start_4
    monitor-exit v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    #@27
    .line 2070
    const/4 v1, 0x1

    #@28
    monitor-exit v2

    #@29
    return v1

    #@2a
    .end local v0    # "oldId":I
    :cond_1
    :try_start_5
    monitor-exit v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    #@2b
    monitor-exit v2

    #@2c
    .line 2072
    return v5

    #@2d
    .line 2061
    :catchall_0
    move-exception v1

    #@2e
    :try_start_6
    monitor-exit v3

    #@2f
    throw v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    #@30
    :catchall_1
    move-exception v1

    #@31
    monitor-exit v2

    #@32
    throw v1
.end method

.method private static native setLoggingEventHandlerNative(II)Z
.end method

.method public static declared-synchronized setPnoList([Lcom/android/server/wifi/WifiNative$WifiPnoNetwork;Lcom/android/server/wifi/WifiNative$WifiPnoEventHandler;)Z
    .locals 4
    .param p0, "list"    # [Lcom/android/server/wifi/WifiNative$WifiPnoNetwork;
    .param p1, "eventHandler"    # Lcom/android/server/wifi/WifiNative$WifiPnoEventHandler;

    #@0
    .prologue
    const-class v1, Lcom/android/server/wifi/WifiNative;

    #@2
    monitor-enter v1

    #@3
    .line 2269
    :try_start_0
    const-string/jumbo v0, "WifiNative-HAL"

    #@6
    new-instance v2, Ljava/lang/StringBuilder;

    #@8
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@b
    const-string/jumbo v3, "setPnoList cmd "

    #@e
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@11
    move-result-object v2

    #@12
    sget v3, Lcom/android/server/wifi/WifiNative;->sPnoCmdId:I

    #@14
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@17
    move-result-object v2

    #@18
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1b
    move-result-object v2

    #@1c
    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@1f
    .line 2271
    sget-object v2, Lcom/android/server/wifi/WifiNative;->mLock:Ljava/lang/Object;

    #@21
    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    #@22
    .line 2272
    :try_start_1
    invoke-static {}, Lcom/android/server/wifi/WifiNative;->isHalStarted()Z

    #@25
    move-result v0

    #@26
    if-eqz v0, :cond_0

    #@28
    .line 2274
    invoke-static {}, Lcom/android/server/wifi/WifiNative;->getNewCmdIdLocked()I

    #@2b
    move-result v0

    #@2c
    sput v0, Lcom/android/server/wifi/WifiNative;->sPnoCmdId:I

    #@2e
    .line 2276
    sput-object p1, Lcom/android/server/wifi/WifiNative;->sWifiPnoEventHandler:Lcom/android/server/wifi/WifiNative$WifiPnoEventHandler;

    #@30
    .line 2277
    sget v0, Lcom/android/server/wifi/WifiNative;->sWlan0Index:I

    #@32
    sget v3, Lcom/android/server/wifi/WifiNative;->sPnoCmdId:I

    #@34
    invoke-static {v0, v3, p0}, Lcom/android/server/wifi/WifiNative;->setPnoListNative(II[Lcom/android/server/wifi/WifiNative$WifiPnoNetwork;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@37
    move-result v0

    #@38
    if-eqz v0, :cond_0

    #@3a
    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    #@3b
    .line 2278
    const/4 v0, 0x1

    #@3c
    monitor-exit v1

    #@3d
    return v0

    #@3e
    .line 2282
    :cond_0
    const/4 v0, 0x0

    #@3f
    :try_start_3
    sput-object v0, Lcom/android/server/wifi/WifiNative;->sWifiPnoEventHandler:Lcom/android/server/wifi/WifiNative$WifiPnoEventHandler;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@41
    :try_start_4
    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    #@42
    .line 2283
    const/4 v0, 0x0

    #@43
    monitor-exit v1

    #@44
    return v0

    #@45
    .line 2271
    :catchall_0
    move-exception v0

    #@46
    :try_start_5
    monitor-exit v2

    #@47
    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    #@48
    :catchall_1
    move-exception v0

    #@49
    monitor-exit v1

    #@4a
    throw v0
.end method

.method private static native setPnoListNative(II[Lcom/android/server/wifi/WifiNative$WifiPnoNetwork;)Z
.end method

.method public static declared-synchronized setScanningMacOui([B)Z
    .locals 3
    .param p0, "oui"    # [B

    #@0
    .prologue
    const-class v1, Lcom/android/server/wifi/WifiNative;

    #@2
    monitor-enter v1

    #@3
    .line 1890
    :try_start_0
    sget-object v2, Lcom/android/server/wifi/WifiNative;->mLock:Ljava/lang/Object;

    #@5
    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    #@6
    .line 1891
    :try_start_1
    invoke-static {}, Lcom/android/server/wifi/WifiNative;->isHalStarted()Z

    #@9
    move-result v0

    #@a
    if-eqz v0, :cond_0

    #@c
    .line 1892
    sget v0, Lcom/android/server/wifi/WifiNative;->sWlan0Index:I

    #@e
    invoke-static {v0, p0}, Lcom/android/server/wifi/WifiNative;->setScanningMacOuiNative(I[B)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@11
    move-result v0

    #@12
    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    #@13
    monitor-exit v1

    #@14
    return v0

    #@15
    :cond_0
    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    #@16
    .line 1894
    const/4 v0, 0x0

    #@17
    monitor-exit v1

    #@18
    return v0

    #@19
    .line 1890
    :catchall_0
    move-exception v0

    #@1a
    :try_start_4
    monitor-exit v2

    #@1b
    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    #@1c
    :catchall_1
    move-exception v0

    #@1d
    monitor-exit v1

    #@1e
    throw v0
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
    .line 1440
    if-eqz p0, :cond_0

    #@3
    array-length v0, p0

    #@4
    if-nez v0, :cond_1

    #@6
    .line 1441
    :cond_0
    return v1

    #@7
    .line 1440
    :cond_1
    if-eqz p1, :cond_0

    #@9
    .line 1444
    invoke-static {p0}, Lcom/android/server/wifi/WifiNative;->ssidConvert([B)Ljava/lang/String;

    #@c
    move-result-object v0

    #@d
    iput-object v0, p1, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    #@f
    .line 1445
    invoke-static {p0}, Lcom/android/server/wifi/WifiNative;->createWifiSsid([B)Landroid/net/wifi/WifiSsid;

    #@12
    move-result-object v0

    #@13
    iput-object v0, p1, Landroid/net/wifi/ScanResult;->wifiSsid:Landroid/net/wifi/WifiSsid;

    #@15
    .line 1446
    const/4 v0, 0x1

    #@16
    return v0
.end method

.method public static declared-synchronized setSsidWhitelist([Ljava/lang/String;)Z
    .locals 5
    .param p0, "list"    # [Ljava/lang/String;

    #@0
    .prologue
    const-class v2, Lcom/android/server/wifi/WifiNative;

    #@2
    monitor-enter v2

    #@3
    .line 2378
    const/4 v0, 0x0

    #@4
    .line 2379
    .local v0, "size":I
    if-eqz p0, :cond_0

    #@6
    .line 2380
    :try_start_0
    array-length v0, p0

    #@7
    .line 2382
    :cond_0
    const-string/jumbo v1, "WifiNative-HAL"

    #@a
    new-instance v3, Ljava/lang/StringBuilder;

    #@c
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@f
    const-string/jumbo v4, "setSsidWhitelist cmd "

    #@12
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@15
    move-result-object v3

    #@16
    sget v4, Lcom/android/server/wifi/WifiNative;->sPnoCmdId:I

    #@18
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@1b
    move-result-object v3

    #@1c
    const-string/jumbo v4, " size "

    #@1f
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@22
    move-result-object v3

    #@23
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@26
    move-result-object v3

    #@27
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2a
    move-result-object v3

    #@2b
    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@2e
    .line 2384
    sget-object v3, Lcom/android/server/wifi/WifiNative;->mLock:Ljava/lang/Object;

    #@30
    monitor-enter v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    #@31
    .line 2385
    :try_start_1
    invoke-static {}, Lcom/android/server/wifi/WifiNative;->isHalStarted()Z

    #@34
    move-result v1

    #@35
    if-eqz v1, :cond_1

    #@37
    .line 2386
    invoke-static {}, Lcom/android/server/wifi/WifiNative;->getNewCmdIdLocked()I

    #@3a
    move-result v1

    #@3b
    sput v1, Lcom/android/server/wifi/WifiNative;->sPnoCmdId:I

    #@3d
    .line 2388
    sget v1, Lcom/android/server/wifi/WifiNative;->sWlan0Index:I

    #@3f
    sget v4, Lcom/android/server/wifi/WifiNative;->sPnoCmdId:I

    #@41
    invoke-static {v1, v4, p0}, Lcom/android/server/wifi/WifiNative;->setSsidWhitelistNative(II[Ljava/lang/String;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@44
    move-result v1

    #@45
    :try_start_2
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    #@46
    monitor-exit v2

    #@47
    return v1

    #@48
    :cond_1
    :try_start_3
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    #@49
    .line 2390
    const/4 v1, 0x0

    #@4a
    monitor-exit v2

    #@4b
    return v1

    #@4c
    .line 2384
    :catchall_0
    move-exception v1

    #@4d
    :try_start_4
    monitor-exit v3

    #@4e
    throw v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    #@4f
    :catchall_1
    move-exception v1

    #@50
    monitor-exit v2

    #@51
    throw v1
.end method

.method private static native setSsidWhitelistNative(II[Ljava/lang/String;)Z
.end method

.method public static declared-synchronized setWifiLinkLayerStats(Ljava/lang/String;I)V
    .locals 3
    .param p0, "iface"    # Ljava/lang/String;
    .param p1, "enable"    # I

    #@0
    .prologue
    const-class v1, Lcom/android/server/wifi/WifiNative;

    #@2
    monitor-enter v1

    #@3
    .line 1802
    if-nez p0, :cond_0

    #@5
    monitor-exit v1

    #@6
    return-void

    #@7
    .line 1803
    :cond_0
    :try_start_0
    sget-object v2, Lcom/android/server/wifi/WifiNative;->mLock:Ljava/lang/Object;

    #@9
    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    #@a
    .line 1804
    :try_start_1
    invoke-static {}, Lcom/android/server/wifi/WifiNative;->isHalStarted()Z

    #@d
    move-result v0

    #@e
    if-eqz v0, :cond_1

    #@10
    .line 1805
    sget v0, Lcom/android/server/wifi/WifiNative;->sWlan0Index:I

    #@12
    invoke-static {v0, p1}, Lcom/android/server/wifi/WifiNative;->setWifiLinkLayerStatsNative(II)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@15
    :cond_1
    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    #@16
    monitor-exit v1

    #@17
    .line 1801
    return-void

    #@18
    .line 1803
    :catchall_0
    move-exception v0

    #@19
    :try_start_3
    monitor-exit v2

    #@1a
    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    #@1b
    :catchall_1
    move-exception v0

    #@1c
    monitor-exit v1

    #@1d
    throw v0
.end method

.method private static native setWifiLinkLayerStatsNative(II)V
.end method

.method public static ssidConvert([B)Ljava/lang/String;
    .locals 5
    .param p0, "rawSsid"    # [B

    #@0
    .prologue
    .line 1424
    sget-object v4, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    #@2
    invoke-virtual {v4}, Ljava/nio/charset/Charset;->newDecoder()Ljava/nio/charset/CharsetDecoder;

    #@5
    move-result-object v2

    #@6
    .line 1426
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
    .line 1427
    .local v1, "decoded":Ljava/nio/CharBuffer;
    invoke-virtual {v1}, Ljava/nio/CharBuffer;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/nio/charset/CharacterCodingException; {:try_start_0 .. :try_end_0} :catch_0

    #@11
    move-result-object v3

    #@12
    .line 1432
    .end local v1    # "decoded":Ljava/nio/CharBuffer;
    :goto_0
    if-nez v3, :cond_0

    #@14
    .line 1433
    new-instance v3, Ljava/lang/String;

    #@16
    sget-object v4, Ljava/nio/charset/StandardCharsets;->ISO_8859_1:Ljava/nio/charset/Charset;

    #@18
    invoke-direct {v3, p0, v4}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    #@1b
    .line 1436
    :cond_0
    return-object v3

    #@1c
    .line 1428
    :catch_0
    move-exception v0

    #@1d
    .line 1429
    .local v0, "cce":Ljava/nio/charset/CharacterCodingException;
    const/4 v3, 0x0

    #@1e
    .local v3, "ssid":Ljava/lang/String;
    goto :goto_0
.end method

.method public static declared-synchronized startHal()Z
    .locals 8

    #@0
    .prologue
    const/4 v7, 0x0

    #@1
    const-class v4, Lcom/android/server/wifi/WifiNative;

    #@3
    monitor-enter v4

    #@4
    .line 1255
    :try_start_0
    const-string/jumbo v0, "startHal stack: "

    #@7
    .line 1256
    .local v0, "debugLog":Ljava/lang/String;
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    #@a
    move-result-object v3

    #@b
    invoke-virtual {v3}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    #@e
    move-result-object v1

    #@f
    .line 1257
    .local v1, "elements":[Ljava/lang/StackTraceElement;
    const/4 v2, 0x2

    #@10
    .local v2, "i":I
    :goto_0
    array-length v3, v1

    #@11
    if-ge v2, v3, :cond_0

    #@13
    const/4 v3, 0x7

    #@14
    if-gt v2, v3, :cond_0

    #@16
    .line 1258
    new-instance v3, Ljava/lang/StringBuilder;

    #@18
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@1b
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1e
    move-result-object v3

    #@1f
    const-string/jumbo v5, " - "

    #@22
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@25
    move-result-object v3

    #@26
    aget-object v5, v1, v2

    #@28
    invoke-virtual {v5}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    #@2b
    move-result-object v5

    #@2c
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2f
    move-result-object v3

    #@30
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@33
    move-result-object v0

    #@34
    .line 1257
    add-int/lit8 v2, v2, 0x1

    #@36
    goto :goto_0

    #@37
    .line 1261
    :cond_0
    sget-object v3, Lcom/android/server/wifi/WifiNative;->mLocalLog:Landroid/util/LocalLog;

    #@39
    invoke-virtual {v3, v0}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    #@3c
    .line 1263
    sget-object v5, Lcom/android/server/wifi/WifiNative;->mLock:Ljava/lang/Object;

    #@3e
    monitor-enter v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    #@3f
    .line 1264
    :try_start_1
    invoke-static {}, Lcom/android/server/wifi/WifiNative;->startHalNative()Z

    #@42
    move-result v3

    #@43
    if-eqz v3, :cond_1

    #@45
    invoke-static {}, Lcom/android/server/wifi/WifiNative;->getInterfaces()I

    #@48
    move-result v3

    #@49
    if-eqz v3, :cond_1

    #@4b
    sget v3, Lcom/android/server/wifi/WifiNative;->sWlan0Index:I

    #@4d
    const/4 v6, -0x1

    #@4e
    if-eq v3, v6, :cond_1

    #@50
    .line 1265
    new-instance v3, Lcom/android/server/wifi/WifiNative$MonitorThread;

    #@52
    const/4 v6, 0x0

    #@53
    invoke-direct {v3, v6}, Lcom/android/server/wifi/WifiNative$MonitorThread;-><init>(Lcom/android/server/wifi/WifiNative$MonitorThread;)V

    #@56
    sput-object v3, Lcom/android/server/wifi/WifiNative;->sThread:Lcom/android/server/wifi/WifiNative$MonitorThread;

    #@58
    .line 1266
    sget-object v3, Lcom/android/server/wifi/WifiNative;->sThread:Lcom/android/server/wifi/WifiNative$MonitorThread;

    #@5a
    invoke-virtual {v3}, Lcom/android/server/wifi/WifiNative$MonitorThread;->start()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@5d
    :try_start_2
    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    #@5e
    .line 1267
    const/4 v3, 0x1

    #@5f
    monitor-exit v4

    #@60
    return v3

    #@61
    .line 1269
    :cond_1
    :try_start_3
    sget-boolean v3, Lcom/android/server/wifi/WifiNative;->DBG:Z

    #@63
    if-eqz v3, :cond_2

    #@65
    sget-object v3, Lcom/android/server/wifi/WifiNative;->mLocalLog:Landroid/util/LocalLog;

    #@67
    const-string/jumbo v6, "Could not start hal"

    #@6a
    invoke-virtual {v3, v6}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    #@6d
    .line 1270
    :cond_2
    const-string/jumbo v3, "WifiNative-HAL"

    #@70
    const-string/jumbo v6, "Could not start hal"

    #@73
    invoke-static {v3, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@76
    :try_start_4
    monitor-exit v5
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    #@77
    monitor-exit v4

    #@78
    .line 1271
    return v7

    #@79
    .line 1263
    :catchall_0
    move-exception v3

    #@7a
    :try_start_5
    monitor-exit v5

    #@7b
    throw v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    #@7c
    .end local v1    # "elements":[Ljava/lang/StackTraceElement;
    .end local v2    # "i":I
    :catchall_1
    move-exception v3

    #@7d
    monitor-exit v4

    #@7e
    throw v3
.end method

.method private static native startHalNative()Z
.end method

.method public static native startLogging(I)Z
.end method

.method public static declared-synchronized startLoggingRingBuffer(IIIILjava/lang/String;)Z
    .locals 8
    .param p0, "verboseLevel"    # I
    .param p1, "flags"    # I
    .param p2, "maxInterval"    # I
    .param p3, "minDataSize"    # I
    .param p4, "ringName"    # Ljava/lang/String;

    #@0
    .prologue
    const-class v6, Lcom/android/server/wifi/WifiNative;

    #@2
    monitor-enter v6

    #@3
    .line 2081
    :try_start_0
    sget-object v7, Lcom/android/server/wifi/WifiNative;->mLock:Ljava/lang/Object;

    #@5
    monitor-enter v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    #@6
    .line 2082
    :try_start_1
    invoke-static {}, Lcom/android/server/wifi/WifiNative;->isHalStarted()Z

    #@9
    move-result v0

    #@a
    if-eqz v0, :cond_0

    #@c
    .line 2083
    sget v0, Lcom/android/server/wifi/WifiNative;->sWlan0Index:I

    #@e
    move v1, p0

    #@f
    move v2, p1

    #@10
    move v3, p2

    #@11
    move v4, p3

    #@12
    move-object v5, p4

    #@13
    invoke-static/range {v0 .. v5}, Lcom/android/server/wifi/WifiNative;->startLoggingRingBufferNative(IIIIILjava/lang/String;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@16
    move-result v0

    #@17
    :try_start_2
    monitor-exit v7
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    #@18
    monitor-exit v6

    #@19
    return v0

    #@1a
    :cond_0
    :try_start_3
    monitor-exit v7
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    #@1b
    .line 2086
    const/4 v0, 0x0

    #@1c
    monitor-exit v6

    #@1d
    return v0

    #@1e
    .line 2081
    :catchall_0
    move-exception v0

    #@1f
    :try_start_4
    monitor-exit v7

    #@20
    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    #@21
    :catchall_1
    move-exception v0

    #@22
    monitor-exit v6

    #@23
    throw v0
.end method

.method private static native startLoggingRingBufferNative(IIIIILjava/lang/String;)Z
.end method

.method public static declared-synchronized startScan(Lcom/android/server/wifi/WifiNative$ScanSettings;Lcom/android/server/wifi/WifiNative$ScanEventHandler;)Z
    .locals 5
    .param p0, "settings"    # Lcom/android/server/wifi/WifiNative$ScanSettings;
    .param p1, "eventHandler"    # Lcom/android/server/wifi/WifiNative$ScanEventHandler;

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    const-class v1, Lcom/android/server/wifi/WifiNative;

    #@3
    monitor-enter v1

    #@4
    .line 1576
    :try_start_0
    sget-object v2, Lcom/android/server/wifi/WifiNative;->mLock:Ljava/lang/Object;

    #@6
    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    #@7
    .line 1577
    :try_start_1
    invoke-static {}, Lcom/android/server/wifi/WifiNative;->isHalStarted()Z

    #@a
    move-result v0

    #@b
    if-eqz v0, :cond_3

    #@d
    .line 1579
    sget v0, Lcom/android/server/wifi/WifiNative;->sScanCmdId:I

    #@f
    if-eqz v0, :cond_1

    #@11
    .line 1580
    invoke-static {}, Lcom/android/server/wifi/WifiNative;->stopScan()V

    #@14
    .line 1585
    :cond_0
    :goto_0
    invoke-static {}, Lcom/android/server/wifi/WifiNative;->getNewCmdIdLocked()I

    #@17
    move-result v0

    #@18
    sput v0, Lcom/android/server/wifi/WifiNative;->sScanCmdId:I

    #@1a
    .line 1587
    sput-object p0, Lcom/android/server/wifi/WifiNative;->sScanSettings:Lcom/android/server/wifi/WifiNative$ScanSettings;

    #@1c
    .line 1588
    sput-object p1, Lcom/android/server/wifi/WifiNative;->sScanEventHandler:Lcom/android/server/wifi/WifiNative$ScanEventHandler;

    #@1e
    .line 1590
    sget v0, Lcom/android/server/wifi/WifiNative;->sWlan0Index:I

    #@20
    sget v3, Lcom/android/server/wifi/WifiNative;->sScanCmdId:I

    #@22
    invoke-static {v0, v3, p0}, Lcom/android/server/wifi/WifiNative;->startScanNative(IILcom/android/server/wifi/WifiNative$ScanSettings;)Z

    #@25
    move-result v0

    #@26
    if-nez v0, :cond_2

    #@28
    .line 1591
    const/4 v0, 0x0

    #@29
    sput-object v0, Lcom/android/server/wifi/WifiNative;->sScanEventHandler:Lcom/android/server/wifi/WifiNative$ScanEventHandler;

    #@2b
    .line 1592
    const/4 v0, 0x0

    #@2c
    sput-object v0, Lcom/android/server/wifi/WifiNative;->sScanSettings:Lcom/android/server/wifi/WifiNative$ScanSettings;

    #@2e
    .line 1593
    const/4 v0, 0x0

    #@2f
    sput v0, Lcom/android/server/wifi/WifiNative;->sScanCmdId:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@31
    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    #@32
    monitor-exit v1

    #@33
    .line 1594
    return v4

    #@34
    .line 1581
    :cond_1
    :try_start_3
    sget-object v0, Lcom/android/server/wifi/WifiNative;->sScanSettings:Lcom/android/server/wifi/WifiNative$ScanSettings;

    #@36
    if-nez v0, :cond_0

    #@38
    sget-object v0, Lcom/android/server/wifi/WifiNative;->sScanEventHandler:Lcom/android/server/wifi/WifiNative$ScanEventHandler;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@3a
    if-eqz v0, :cond_0

    #@3c
    goto :goto_0

    #@3d
    :cond_2
    :try_start_4
    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    #@3e
    .line 1597
    const/4 v0, 0x1

    #@3f
    monitor-exit v1

    #@40
    return v0

    #@41
    :cond_3
    :try_start_5
    monitor-exit v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    #@42
    monitor-exit v1

    #@43
    .line 1599
    return v4

    #@44
    .line 1576
    :catchall_0
    move-exception v0

    #@45
    :try_start_6
    monitor-exit v2

    #@46
    throw v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    #@47
    :catchall_1
    move-exception v0

    #@48
    monitor-exit v1

    #@49
    throw v0
.end method

.method private static native startScanNative(IILcom/android/server/wifi/WifiNative$ScanSettings;)Z
.end method

.method public static native startSupplicant(Z)Z
.end method

.method public static declared-synchronized stopHal()V
    .locals 6

    #@0
    .prologue
    const-class v2, Lcom/android/server/wifi/WifiNative;

    #@2
    monitor-enter v2

    #@3
    .line 1277
    :try_start_0
    sget-object v3, Lcom/android/server/wifi/WifiNative;->mLock:Ljava/lang/Object;

    #@5
    monitor-enter v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    #@6
    .line 1278
    :try_start_1
    invoke-static {}, Lcom/android/server/wifi/WifiNative;->isHalStarted()Z

    #@9
    move-result v1

    #@a
    if-eqz v1, :cond_0

    #@c
    .line 1279
    invoke-static {}, Lcom/android/server/wifi/WifiNative;->stopHalNative()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@f
    .line 1281
    :try_start_2
    sget-object v1, Lcom/android/server/wifi/WifiNative;->sThread:Lcom/android/server/wifi/WifiNative$MonitorThread;

    #@11
    const-wide/16 v4, 0x3e8

    #@13
    invoke-virtual {v1, v4, v5}, Lcom/android/server/wifi/WifiNative$MonitorThread;->join(J)V

    #@16
    .line 1282
    const-string/jumbo v1, "WifiNative-HAL"

    #@19
    const-string/jumbo v4, "HAL event thread stopped successfully"

    #@1c
    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@1f
    .line 1286
    .local v0, "e":Ljava/lang/InterruptedException;
    :goto_0
    const/4 v1, 0x0

    #@20
    :try_start_3
    sput-object v1, Lcom/android/server/wifi/WifiNative;->sThread:Lcom/android/server/wifi/WifiNative$MonitorThread;

    #@22
    .line 1287
    const-wide/16 v4, 0x0

    #@24
    sput-wide v4, Lcom/android/server/wifi/WifiNative;->sWifiHalHandle:J

    #@26
    .line 1288
    const/4 v1, 0x0

    #@27
    sput-object v1, Lcom/android/server/wifi/WifiNative;->sWifiIfaceHandles:[J

    #@29
    .line 1289
    const/4 v1, -0x1

    #@2a
    sput v1, Lcom/android/server/wifi/WifiNative;->sWlan0Index:I

    #@2c
    .line 1290
    const/4 v1, -0x1

    #@2d
    sput v1, Lcom/android/server/wifi/WifiNative;->sP2p0Index:I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@2f
    :cond_0
    :try_start_4
    monitor-exit v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    #@30
    monitor-exit v2

    #@31
    .line 1276
    return-void

    #@32
    .line 1283
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :catch_0
    move-exception v0

    #@33
    .line 1284
    .restart local v0    # "e":Ljava/lang/InterruptedException;
    :try_start_5
    const-string/jumbo v1, "WifiNative-HAL"

    #@36
    const-string/jumbo v4, "Could not stop HAL cleanly"

    #@39
    invoke-static {v1, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    #@3c
    goto :goto_0

    #@3d
    .line 1277
    :catchall_0
    move-exception v1

    #@3e
    :try_start_6
    monitor-exit v3

    #@3f
    throw v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    #@40
    :catchall_1
    move-exception v1

    #@41
    monitor-exit v2

    #@42
    throw v1
.end method

.method private static native stopHalNative()V
.end method

.method public static declared-synchronized stopScan()V
    .locals 4

    #@0
    .prologue
    const-class v1, Lcom/android/server/wifi/WifiNative;

    #@2
    monitor-enter v1

    #@3
    .line 1605
    :try_start_0
    sget-object v2, Lcom/android/server/wifi/WifiNative;->mLock:Ljava/lang/Object;

    #@5
    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    #@6
    .line 1606
    :try_start_1
    invoke-static {}, Lcom/android/server/wifi/WifiNative;->isHalStarted()Z

    #@9
    move-result v0

    #@a
    if-eqz v0, :cond_0

    #@c
    .line 1607
    sget v0, Lcom/android/server/wifi/WifiNative;->sWlan0Index:I

    #@e
    sget v3, Lcom/android/server/wifi/WifiNative;->sScanCmdId:I

    #@10
    invoke-static {v0, v3}, Lcom/android/server/wifi/WifiNative;->stopScanNative(II)Z

    #@13
    .line 1608
    const/4 v0, 0x0

    #@14
    sput-object v0, Lcom/android/server/wifi/WifiNative;->sScanSettings:Lcom/android/server/wifi/WifiNative$ScanSettings;

    #@16
    .line 1609
    const/4 v0, 0x0

    #@17
    sput-object v0, Lcom/android/server/wifi/WifiNative;->sScanEventHandler:Lcom/android/server/wifi/WifiNative$ScanEventHandler;

    #@19
    .line 1610
    const/4 v0, 0x0

    #@1a
    sput v0, Lcom/android/server/wifi/WifiNative;->sScanCmdId:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@1c
    :cond_0
    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    #@1d
    monitor-exit v1

    #@1e
    .line 1604
    return-void

    #@1f
    .line 1605
    :catchall_0
    move-exception v0

    #@20
    :try_start_3
    monitor-exit v2

    #@21
    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    #@22
    :catchall_1
    move-exception v0

    #@23
    monitor-exit v1

    #@24
    throw v0
.end method

.method private static native stopScanNative(II)Z
.end method

.method public static declared-synchronized toggleInterface(I)Z
    .locals 4
    .param p0, "on"    # I

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    const-class v1, Lcom/android/server/wifi/WifiNative;

    #@3
    monitor-enter v1

    #@4
    .line 1936
    :try_start_0
    sget-object v2, Lcom/android/server/wifi/WifiNative;->mLock:Ljava/lang/Object;

    #@6
    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    #@7
    .line 1937
    :try_start_1
    invoke-static {}, Lcom/android/server/wifi/WifiNative;->isHalStarted()Z

    #@a
    move-result v0

    #@b
    if-eqz v0, :cond_0

    #@d
    .line 1938
    const/4 v0, 0x0

    #@e
    invoke-static {v0}, Lcom/android/server/wifi/WifiNative;->toggleInterfaceNative(I)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@11
    move-result v0

    #@12
    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    #@13
    monitor-exit v1

    #@14
    return v0

    #@15
    :cond_0
    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    #@16
    monitor-exit v1

    #@17
    .line 1940
    return v3

    #@18
    .line 1936
    :catchall_0
    move-exception v0

    #@19
    :try_start_4
    monitor-exit v2

    #@1a
    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    #@1b
    :catchall_1
    move-exception v0

    #@1c
    monitor-exit v1

    #@1d
    throw v0
.end method

.method private static native toggleInterfaceNative(I)Z
.end method

.method public static declared-synchronized trackSignificantWifiChange(Landroid/net/wifi/WifiScanner$WifiChangeSettings;Lcom/android/server/wifi/WifiNative$SignificantWifiChangeEventHandler;)Z
    .locals 5
    .param p0, "settings"    # Landroid/net/wifi/WifiScanner$WifiChangeSettings;
    .param p1, "handler"    # Lcom/android/server/wifi/WifiNative$SignificantWifiChangeEventHandler;

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    const-class v1, Lcom/android/server/wifi/WifiNative;

    #@3
    monitor-enter v1

    #@4
    .line 1744
    :try_start_0
    sget-object v2, Lcom/android/server/wifi/WifiNative;->mLock:Ljava/lang/Object;

    #@6
    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    #@7
    .line 1745
    :try_start_1
    invoke-static {}, Lcom/android/server/wifi/WifiNative;->isHalStarted()Z

    #@a
    move-result v0

    #@b
    if-eqz v0, :cond_2

    #@d
    .line 1746
    sget v0, Lcom/android/server/wifi/WifiNative;->sSignificantWifiChangeCmdId:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@f
    if-eqz v0, :cond_0

    #@11
    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    #@12
    monitor-exit v1

    #@13
    .line 1747
    return v4

    #@14
    .line 1749
    :cond_0
    :try_start_3
    invoke-static {}, Lcom/android/server/wifi/WifiNative;->getNewCmdIdLocked()I

    #@17
    move-result v0

    #@18
    sput v0, Lcom/android/server/wifi/WifiNative;->sSignificantWifiChangeCmdId:I

    #@1a
    .line 1752
    sput-object p1, Lcom/android/server/wifi/WifiNative;->sSignificantWifiChangeHandler:Lcom/android/server/wifi/WifiNative$SignificantWifiChangeEventHandler;

    #@1c
    .line 1753
    sget v0, Lcom/android/server/wifi/WifiNative;->sWlan0Index:I

    #@1e
    sget v3, Lcom/android/server/wifi/WifiNative;->sScanCmdId:I

    #@20
    invoke-static {v0, v3, p0}, Lcom/android/server/wifi/WifiNative;->trackSignificantWifiChangeNative(IILandroid/net/wifi/WifiScanner$WifiChangeSettings;)Z

    #@23
    move-result v0

    #@24
    if-nez v0, :cond_1

    #@26
    .line 1754
    const/4 v0, 0x0

    #@27
    sput-object v0, Lcom/android/server/wifi/WifiNative;->sSignificantWifiChangeHandler:Lcom/android/server/wifi/WifiNative$SignificantWifiChangeEventHandler;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@29
    :try_start_4
    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    #@2a
    monitor-exit v1

    #@2b
    .line 1755
    return v4

    #@2c
    :cond_1
    :try_start_5
    monitor-exit v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    #@2d
    .line 1758
    const/4 v0, 0x1

    #@2e
    monitor-exit v1

    #@2f
    return v0

    #@30
    :cond_2
    :try_start_6
    monitor-exit v2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    #@31
    monitor-exit v1

    #@32
    .line 1760
    return v4

    #@33
    .line 1744
    :catchall_0
    move-exception v0

    #@34
    :try_start_7
    monitor-exit v2

    #@35
    throw v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    #@36
    :catchall_1
    move-exception v0

    #@37
    monitor-exit v1

    #@38
    throw v0
.end method

.method private static native trackSignificantWifiChangeNative(IILandroid/net/wifi/WifiScanner$WifiChangeSettings;)Z
.end method

.method public static native unloadDriver()Z
.end method

.method static declared-synchronized untrackSignificantWifiChange()V
    .locals 4

    #@0
    .prologue
    const-class v1, Lcom/android/server/wifi/WifiNative;

    #@2
    monitor-enter v1

    #@3
    .line 1767
    :try_start_0
    sget-object v2, Lcom/android/server/wifi/WifiNative;->mLock:Ljava/lang/Object;

    #@5
    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    #@6
    .line 1768
    :try_start_1
    invoke-static {}, Lcom/android/server/wifi/WifiNative;->isHalStarted()Z

    #@9
    move-result v0

    #@a
    if-eqz v0, :cond_0

    #@c
    .line 1769
    sget v0, Lcom/android/server/wifi/WifiNative;->sSignificantWifiChangeCmdId:I

    #@e
    if-eqz v0, :cond_0

    #@10
    .line 1770
    sget v0, Lcom/android/server/wifi/WifiNative;->sWlan0Index:I

    #@12
    sget v3, Lcom/android/server/wifi/WifiNative;->sSignificantWifiChangeCmdId:I

    #@14
    invoke-static {v0, v3}, Lcom/android/server/wifi/WifiNative;->untrackSignificantWifiChangeNative(II)Z

    #@17
    .line 1771
    const/4 v0, 0x0

    #@18
    sput v0, Lcom/android/server/wifi/WifiNative;->sSignificantWifiChangeCmdId:I

    #@1a
    .line 1772
    const/4 v0, 0x0

    #@1b
    sput-object v0, Lcom/android/server/wifi/WifiNative;->sSignificantWifiChangeHandler:Lcom/android/server/wifi/WifiNative$SignificantWifiChangeEventHandler;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@1d
    :cond_0
    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    #@1e
    monitor-exit v1

    #@1f
    .line 1766
    return-void

    #@20
    .line 1767
    :catchall_0
    move-exception v0

    #@21
    :try_start_3
    monitor-exit v2

    #@22
    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    #@23
    :catchall_1
    move-exception v0

    #@24
    monitor-exit v1

    #@25
    throw v0
.end method

.method private static native untrackSignificantWifiChangeNative(II)Z
.end method

.method private native waitForEventNative()Ljava/lang/String;
.end method

.method private static native waitForHalEventNative()V
.end method


# virtual methods
.method public addNetwork()I
    .locals 1

    #@0
    .prologue
    .line 293
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
    .line 630
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
    .line 631
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
    .line 707
    const-string/jumbo v0, "BSS_FLUSH 0"

    #@3
    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiNative;->doBooleanCommand(Ljava/lang/String;)Z

    #@6
    .line 706
    return-void
.end method

.method public cancelWps()Z
    .locals 1

    #@0
    .prologue
    .line 787
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
    .line 635
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
    .line 169
    sget-object v1, Lcom/android/server/wifi/WifiNative;->mLock:Ljava/lang/Object;

    #@2
    monitor-enter v1

    #@3
    .line 170
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
    .line 171
    invoke-direct {p0}, Lcom/android/server/wifi/WifiNative;->closeSupplicantConnectionNative()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1f
    monitor-exit v1

    #@20
    .line 168
    return-void

    #@21
    .line 169
    :catchall_0
    move-exception v0

    #@22
    monitor-exit v1

    #@23
    throw v0
.end method

.method public connectToSupplicant()Z
    .locals 3

    #@0
    .prologue
    .line 162
    sget-object v1, Lcom/android/server/wifi/WifiNative;->mLock:Ljava/lang/Object;

    #@2
    monitor-enter v1

    #@3
    .line 163
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
    .line 164
    invoke-direct {p0}, Lcom/android/server/wifi/WifiNative;->connectToSupplicantNative()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1f
    move-result v0

    #@20
    monitor-exit v1

    #@21
    return v0

    #@22
    .line 162
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
    .line 340
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
    .line 341
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

.method public disconnect()Z
    .locals 1

    #@0
    .prologue
    .line 360
    sget-boolean v0, Lcom/android/server/wifi/WifiNative;->DBG:Z

    #@2
    if-eqz v0, :cond_0

    #@4
    const-string/jumbo v0, "DISCONNECT "

    #@7
    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiNative;->logDbg(Ljava/lang/String;)V

    #@a
    .line 361
    :cond_0
    const-string/jumbo v0, "DISCONNECT"

    #@d
    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiNative;->doBooleanCommand(Ljava/lang/String;)Z

    #@10
    move-result v0

    #@11
    return v0
.end method

.method public doCustomCommand(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "command"    # Ljava/lang/String;

    #@0
    .prologue
    .line 426
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
    .line 668
    if-eqz p1, :cond_0

    #@2
    .line 669
    const-string/jumbo v0, "STA_AUTOCONNECT 1"

    #@5
    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiNative;->doBooleanCommand(Ljava/lang/String;)Z

    #@8
    .line 667
    :goto_0
    return-void

    #@9
    .line 671
    :cond_0
    const-string/jumbo v0, "STA_AUTOCONNECT 0"

    #@c
    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiNative;->doBooleanCommand(Ljava/lang/String;)Z

    #@f
    goto :goto_0
.end method

.method public enableBackgroundScan(Z)Z
    .locals 2
    .param p1, "enable"    # Z

    #@0
    .prologue
    .line 659
    if-eqz p1, :cond_0

    #@2
    .line 660
    const-string/jumbo v1, "SET pno 1"

    #@5
    invoke-direct {p0, v1}, Lcom/android/server/wifi/WifiNative;->doBooleanCommand(Ljava/lang/String;)Z

    #@8
    move-result v0

    #@9
    .line 664
    .local v0, "ret":Z
    :goto_0
    return v0

    #@a
    .line 662
    .end local v0    # "ret":Z
    :cond_0
    const-string/jumbo v1, "SET pno 0"

    #@d
    invoke-direct {p0, v1}, Lcom/android/server/wifi/WifiNative;->doBooleanCommand(Ljava/lang/String;)Z

    #@10
    move-result v0

    #@11
    .restart local v0    # "ret":Z
    goto :goto_0
.end method

.method public enableNetwork(IZ)Z
    .locals 2
    .param p1, "netId"    # I
    .param p2, "disableOthers"    # Z

    #@0
    .prologue
    .line 330
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
    .line 331
    const-string/jumbo v1, " disableOthers="

    #@1b
    .line 330
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1e
    move-result-object v0

    #@1f
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@22
    move-result-object v0

    #@23
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@26
    move-result-object v0

    #@27
    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiNative;->logDbg(Ljava/lang/String;)V

    #@2a
    .line 332
    :cond_0
    if-eqz p2, :cond_1

    #@2c
    .line 333
    new-instance v0, Ljava/lang/StringBuilder;

    #@2e
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@31
    const-string/jumbo v1, "SELECT_NETWORK "

    #@34
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@37
    move-result-object v0

    #@38
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@3b
    move-result-object v0

    #@3c
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3f
    move-result-object v0

    #@40
    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiNative;->doBooleanCommand(Ljava/lang/String;)Z

    #@43
    move-result v0

    #@44
    return v0

    #@45
    .line 335
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    #@47
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@4a
    const-string/jumbo v1, "ENABLE_NETWORK "

    #@4d
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@50
    move-result-object v0

    #@51
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@54
    move-result-object v0

    #@55
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@58
    move-result-object v0

    #@59
    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiNative;->doBooleanCommand(Ljava/lang/String;)Z

    #@5c
    move-result v0

    #@5d
    return v0
.end method

.method public enableSaveConfig()V
    .locals 1

    #@0
    .prologue
    .line 622
    const-string/jumbo v0, "SET update_config 1"

    #@3
    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiNative;->doBooleanCommand(Ljava/lang/String;)Z

    #@6
    .line 621
    return-void
.end method

.method enableVerboseLogging(I)V
    .locals 1
    .param p1, "verbose"    # I

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 136
    if-lez p1, :cond_0

    #@3
    .line 137
    const/4 v0, 0x1

    #@4
    sput-boolean v0, Lcom/android/server/wifi/WifiNative;->DBG:Z

    #@6
    .line 135
    :goto_0
    return-void

    #@7
    .line 139
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
    .line 1206
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

.method public getBatchedScanResults()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 501
    const-string/jumbo v0, "DRIVER WLS_BATCHING GET"

    #@3
    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiNative;->doStringCommand(Ljava/lang/String;)Ljava/lang/String;

    #@6
    move-result-object v0

    #@7
    return-object v0
.end method

.method public getFreqCapability()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 259
    const-string/jumbo v0, "GET_CAPABILITY freq"

    #@3
    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiNative;->doStringCommand(Ljava/lang/String;)Ljava/lang/String;

    #@6
    move-result-object v0

    #@7
    return-object v0
.end method

.method public getGroupCapability(Ljava/lang/String;)I
    .locals 9
    .param p1, "deviceAddress"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1079
    const/4 v1, 0x0

    #@1
    .line 1080
    .local v1, "gc":I
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@4
    move-result v6

    #@5
    if-eqz v6, :cond_0

    #@7
    return v1

    #@8
    .line 1081
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/WifiNative;->p2pPeer(Ljava/lang/String;)Ljava/lang/String;

    #@b
    move-result-object v3

    #@c
    .line 1082
    .local v3, "peerInfo":Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@f
    move-result v6

    #@10
    if-eqz v6, :cond_1

    #@12
    return v1

    #@13
    .line 1084
    :cond_1
    const-string/jumbo v6, "\n"

    #@16
    invoke-virtual {v3, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    #@19
    move-result-object v5

    #@1a
    .line 1085
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
    .line 1086
    .local v4, "token":Ljava/lang/String;
    const-string/jumbo v8, "group_capab="

    #@23
    invoke-virtual {v4, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    #@26
    move-result v8

    #@27
    if-eqz v8, :cond_4

    #@29
    .line 1087
    const-string/jumbo v6, "="

    #@2c
    invoke-virtual {v4, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    #@2f
    move-result-object v2

    #@30
    .line 1088
    .local v2, "nameValue":[Ljava/lang/String;
    array-length v6, v2

    #@31
    const/4 v7, 0x2

    #@32
    if-eq v6, v7, :cond_3

    #@34
    .line 1096
    .end local v2    # "nameValue":[Ljava/lang/String;
    .end local v4    # "token":Ljava/lang/String;
    :cond_2
    return v1

    #@35
    .line 1090
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
    .line 1091
    :catch_0
    move-exception v0

    #@42
    .line 1092
    .local v0, "e":Ljava/lang/NumberFormatException;
    return v1

    #@43
    .line 1085
    .end local v0    # "e":Ljava/lang/NumberFormatException;
    .end local v2    # "nameValue":[Ljava/lang/String;
    :cond_4
    add-int/lit8 v6, v6, 0x1

    #@45
    goto :goto_0
.end method

.method public getMacAddress()Ljava/lang/String;
    .locals 4

    #@0
    .prologue
    .line 378
    const-string/jumbo v2, "DRIVER MACADDR"

    #@3
    invoke-direct {p0, v2}, Lcom/android/server/wifi/WifiNative;->doStringCommand(Ljava/lang/String;)Ljava/lang/String;

    #@6
    move-result-object v0

    #@7
    .line 379
    .local v0, "ret":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@a
    move-result v2

    #@b
    if-nez v2, :cond_0

    #@d
    .line 380
    const-string/jumbo v2, " = "

    #@10
    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    #@13
    move-result-object v1

    #@14
    .line 381
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
    .line 383
    .end local v1    # "tokens":[Ljava/lang/String;
    :cond_0
    const/4 v2, 0x0

    #@1d
    return-object v2
.end method

.method public getNetworkVariable(ILjava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "netId"    # I
    .param p2, "name"    # Ljava/lang/String;

    #@0
    .prologue
    .line 307
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
    .line 310
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
    .line 1217
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
    .line 1221
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
    .line 1213
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

.method public initiatorReportNfcHandover(Ljava/lang/String;)Z
    .locals 2
    .param p1, "selectMessage"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1225
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

.method public listNetworks()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 285
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
    .line 289
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

.method public p2pCancelConnect()Z
    .locals 1

    #@0
    .prologue
    .line 982
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
    .line 931
    if-nez p1, :cond_0

    #@3
    return-object v6

    #@4
    .line 932
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    #@6
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@9
    .line 933
    .local v0, "args":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v5, p1, Landroid/net/wifi/p2p/WifiP2pConfig;->wps:Landroid/net/wifi/WpsInfo;

    #@b
    .line 934
    .local v5, "wps":Landroid/net/wifi/WpsInfo;
    iget-object v6, p1, Landroid/net/wifi/p2p/WifiP2pConfig;->deviceAddress:Ljava/lang/String;

    #@d
    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@10
    .line 936
    iget v6, v5, Landroid/net/wifi/WpsInfo;->setup:I

    #@12
    packed-switch v6, :pswitch_data_0

    #@15
    .line 959
    :goto_0
    iget v6, p1, Landroid/net/wifi/p2p/WifiP2pConfig;->netId:I

    #@17
    const/4 v7, -0x2

    #@18
    if-ne v6, v7, :cond_1

    #@1a
    .line 960
    const-string/jumbo v6, "persistent"

    #@1d
    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@20
    .line 963
    :cond_1
    if-eqz p2, :cond_3

    #@22
    .line 964
    const-string/jumbo v6, "join"

    #@25
    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@28
    .line 975
    :goto_1
    const-string/jumbo v1, "P2P_CONNECT "

    #@2b
    .line 976
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
    .line 938
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
    .line 941
    :pswitch_1
    iget-object v6, v5, Landroid/net/wifi/WpsInfo;->pin:Ljava/lang/String;

    #@5d
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@60
    move-result v6

    #@61
    if-eqz v6, :cond_2

    #@63
    .line 942
    const-string/jumbo v6, "pin"

    #@66
    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@69
    .line 946
    :goto_3
    const-string/jumbo v6, "display"

    #@6c
    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@6f
    goto :goto_0

    #@70
    .line 944
    :cond_2
    iget-object v6, v5, Landroid/net/wifi/WpsInfo;->pin:Ljava/lang/String;

    #@72
    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@75
    goto :goto_3

    #@76
    .line 949
    :pswitch_2
    iget-object v6, v5, Landroid/net/wifi/WpsInfo;->pin:Ljava/lang/String;

    #@78
    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@7b
    .line 950
    const-string/jumbo v6, "keypad"

    #@7e
    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@81
    goto :goto_0

    #@82
    .line 953
    :pswitch_3
    iget-object v6, v5, Landroid/net/wifi/WpsInfo;->pin:Ljava/lang/String;

    #@84
    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@87
    .line 954
    const-string/jumbo v6, "label"

    #@8a
    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@8d
    goto :goto_0

    #@8e
    .line 968
    :cond_3
    iget v2, p1, Landroid/net/wifi/p2p/WifiP2pConfig;->groupOwnerIntent:I

    #@90
    .line 969
    .local v2, "groupOwnerIntent":I
    if-ltz v2, :cond_4

    #@92
    const/16 v6, 0xf

    #@94
    if-le v2, v6, :cond_5

    #@96
    .line 970
    :cond_4
    const/4 v2, 0x6

    #@97
    .line 972
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
    .line 978
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
    .line 936
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
    .line 894
    if-eqz p1, :cond_0

    #@2
    if-ge p3, p2, :cond_0

    #@4
    .line 895
    const/4 v0, 0x0

    #@5
    return v0

    #@6
    .line 897
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
    .line 898
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
    .line 897
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
    .line 898
    :cond_1
    const-string/jumbo v0, ""

    #@43
    goto :goto_0
.end method

.method public p2pFind()Z
    .locals 1

    #@0
    .prologue
    .line 868
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
    .line 872
    if-gtz p1, :cond_0

    #@2
    .line 873
    invoke-virtual {p0}, Lcom/android/server/wifi/WifiNative;->p2pFind()Z

    #@5
    move-result v0

    #@6
    return v0

    #@7
    .line 875
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
    .line 925
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
    .line 1050
    const-string/jumbo v5, "WifiNative-HAL"

    #@3
    const-string/jumbo v6, "p2pGetDeviceAddress"

    #@6
    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@9
    .line 1052
    const/4 v2, 0x0

    #@a
    .line 1057
    .local v2, "status":Ljava/lang/String;
    sget-object v6, Lcom/android/server/wifi/WifiNative;->mLock:Ljava/lang/Object;

    #@c
    monitor-enter v6

    #@d
    .line 1058
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
    .line 1061
    const-string/jumbo v1, ""

    #@18
    .line 1062
    .local v1, "result":Ljava/lang/String;
    if-eqz v2, :cond_0

    #@1a
    .line 1063
    const-string/jumbo v5, "\n"

    #@1d
    invoke-virtual {v2, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    #@20
    move-result-object v4

    #@21
    .line 1064
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
    .line 1065
    .local v3, "token":Ljava/lang/String;
    const-string/jumbo v7, "p2p_device_address="

    #@2a
    invoke-virtual {v3, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    #@2d
    move-result v7

    #@2e
    if-eqz v7, :cond_2

    #@30
    .line 1066
    const-string/jumbo v7, "="

    #@33
    invoke-virtual {v3, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    #@36
    move-result-object v0

    #@37
    .line 1067
    .local v0, "nameValue":[Ljava/lang/String;
    array-length v7, v0

    #@38
    const/4 v8, 0x2

    #@39
    if-eq v7, v8, :cond_1

    #@3b
    .line 1074
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
    .line 1075
    return-object v1

    #@56
    .line 1057
    .end local v1    # "result":Ljava/lang/String;
    .local v2, "status":Ljava/lang/String;
    :catchall_0
    move-exception v5

    #@57
    monitor-exit v6

    #@58
    throw v5

    #@59
    .line 1069
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
    .line 1064
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
    .line 1045
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
    .line 1011
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
    .line 1004
    if-eqz p1, :cond_0

    #@2
    .line 1005
    const-string/jumbo v0, "P2P_GROUP_ADD persistent"

    #@5
    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiNative;->doBooleanCommand(Ljava/lang/String;)Z

    #@8
    move-result v0

    #@9
    return v0

    #@a
    .line 1007
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
    .line 1015
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
    .line 1016
    :cond_0
    sget-object v1, Lcom/android/server/wifi/WifiNative;->mLock:Ljava/lang/Object;

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
    .line 1016
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
    .line 1027
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
    .line 1029
    :cond_0
    if-nez p1, :cond_1

    #@a
    .line 1030
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
    .line 1032
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
    .line 1033
    const-string/jumbo v1, " peer="

    #@3a
    .line 1032
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3d
    move-result-object v0

    #@3e
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@41
    move-result-object v0

    #@42
    .line 1033
    const-string/jumbo v1, " go_dev_addr="

    #@45
    .line 1032
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@48
    move-result-object v0

    #@49
    .line 1033
    invoke-virtual {p1}, Landroid/net/wifi/p2p/WifiP2pGroup;->getOwner()Landroid/net/wifi/p2p/WifiP2pDevice;

    #@4c
    move-result-object v1

    #@4d
    iget-object v1, v1, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;

    #@4f
    .line 1032
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
    .line 883
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
    .line 887
    if-gtz p1, :cond_0

    #@2
    .line 888
    invoke-virtual {p0}, Lcom/android/server/wifi/WifiNative;->p2pListen()Z

    #@5
    move-result v0

    #@6
    return v0

    #@7
    .line 890
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
    .line 1100
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
    .line 986
    if-nez p1, :cond_0

    #@3
    return v1

    #@4
    .line 988
    :cond_0
    iget-object v0, p1, Landroid/net/wifi/p2p/WifiP2pConfig;->wps:Landroid/net/wifi/WpsInfo;

    #@6
    iget v0, v0, Landroid/net/wifi/WpsInfo;->setup:I

    #@8
    packed-switch v0, :pswitch_data_0

    #@b
    .line 1000
    return v1

    #@c
    .line 990
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
    .line 993
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
    .line 996
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
    .line 988
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
    .line 1039
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
    .line 1041
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
    .line 1022
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
    .line 1192
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
    .line 1184
    const-string/jumbo v0, "P2P_SERV_DISC_REQ"

    #@3
    .line 1185
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
    .line 1186
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
    .line 1188
    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiNative;->doStringCommand(Ljava/lang/String;)Ljava/lang/String;

    #@36
    move-result-object v1

    #@37
    return-object v1
.end method

.method public p2pServiceAdd(Landroid/net/wifi/p2p/nsd/WifiP2pServiceInfo;)Z
    .locals 5
    .param p1, "servInfo"    # Landroid/net/wifi/p2p/nsd/WifiP2pServiceInfo;

    #@0
    .prologue
    .line 1142
    invoke-virtual {p1}, Landroid/net/wifi/p2p/nsd/WifiP2pServiceInfo;->getSupplicantQueryList()Ljava/util/List;

    #@3
    move-result-object v3

    #@4
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@7
    move-result-object v2

    #@8
    .local v2, "s$iterator":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    #@b
    move-result v3

    #@c
    if-eqz v3, :cond_1

    #@e
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@11
    move-result-object v1

    #@12
    check-cast v1, Ljava/lang/String;

    #@14
    .line 1143
    .local v1, "s":Ljava/lang/String;
    const-string/jumbo v0, "P2P_SERVICE_ADD"

    #@17
    .line 1144
    .local v0, "command":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    #@19
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@1c
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1f
    move-result-object v3

    #@20
    const-string/jumbo v4, " "

    #@23
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@26
    move-result-object v3

    #@27
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2a
    move-result-object v3

    #@2b
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2e
    move-result-object v0

    #@2f
    .line 1145
    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiNative;->doBooleanCommand(Ljava/lang/String;)Z

    #@32
    move-result v3

    #@33
    if-nez v3, :cond_0

    #@35
    .line 1146
    const/4 v3, 0x0

    #@36
    return v3

    #@37
    .line 1149
    .end local v0    # "command":Ljava/lang/String;
    .end local v1    # "s":Ljava/lang/String;
    :cond_1
    const/4 v3, 0x1

    #@38
    return v3
.end method

.method public p2pServiceDel(Landroid/net/wifi/p2p/nsd/WifiP2pServiceInfo;)Z
    .locals 8
    .param p1, "servInfo"    # Landroid/net/wifi/p2p/nsd/WifiP2pServiceInfo;

    #@0
    .prologue
    const/4 v7, 0x1

    #@1
    const/4 v6, 0x0

    #@2
    .line 1157
    invoke-virtual {p1}, Landroid/net/wifi/p2p/nsd/WifiP2pServiceInfo;->getSupplicantQueryList()Ljava/util/List;

    #@5
    move-result-object v4

    #@6
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@9
    move-result-object v3

    #@a
    .local v3, "s$iterator":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    #@d
    move-result v4

    #@e
    if-eqz v4, :cond_4

    #@10
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@13
    move-result-object v2

    #@14
    check-cast v2, Ljava/lang/String;

    #@16
    .line 1158
    .local v2, "s":Ljava/lang/String;
    const-string/jumbo v0, "P2P_SERVICE_DEL "

    #@19
    .line 1160
    .local v0, "command":Ljava/lang/String;
    const-string/jumbo v4, " "

    #@1c
    invoke-virtual {v2, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    #@1f
    move-result-object v1

    #@20
    .line 1161
    .local v1, "data":[Ljava/lang/String;
    array-length v4, v1

    #@21
    const/4 v5, 0x2

    #@22
    if-ge v4, v5, :cond_1

    #@24
    .line 1162
    return v6

    #@25
    .line 1164
    :cond_1
    const-string/jumbo v4, "upnp"

    #@28
    aget-object v5, v1, v6

    #@2a
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@2d
    move-result v4

    #@2e
    if-eqz v4, :cond_2

    #@30
    .line 1165
    new-instance v4, Ljava/lang/StringBuilder;

    #@32
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@35
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@38
    move-result-object v4

    #@39
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3c
    move-result-object v4

    #@3d
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@40
    move-result-object v0

    #@41
    .line 1172
    :goto_0
    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiNative;->doBooleanCommand(Ljava/lang/String;)Z

    #@44
    move-result v4

    #@45
    if-nez v4, :cond_0

    #@47
    .line 1173
    return v6

    #@48
    .line 1166
    :cond_2
    const-string/jumbo v4, "bonjour"

    #@4b
    aget-object v5, v1, v6

    #@4d
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@50
    move-result v4

    #@51
    if-eqz v4, :cond_3

    #@53
    .line 1167
    new-instance v4, Ljava/lang/StringBuilder;

    #@55
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@58
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5b
    move-result-object v4

    #@5c
    aget-object v5, v1, v6

    #@5e
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@61
    move-result-object v4

    #@62
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@65
    move-result-object v0

    #@66
    .line 1168
    new-instance v4, Ljava/lang/StringBuilder;

    #@68
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@6b
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6e
    move-result-object v4

    #@6f
    const-string/jumbo v5, " "

    #@72
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@75
    move-result-object v4

    #@76
    aget-object v5, v1, v7

    #@78
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@7b
    move-result-object v4

    #@7c
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@7f
    move-result-object v0

    #@80
    goto :goto_0

    #@81
    .line 1170
    :cond_3
    return v6

    #@82
    .line 1176
    .end local v0    # "command":Ljava/lang/String;
    .end local v1    # "data":[Ljava/lang/String;
    .end local v2    # "s":Ljava/lang/String;
    :cond_4
    return v7
.end method

.method public p2pServiceFlush()Z
    .locals 1

    #@0
    .prologue
    .line 1180
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
    .line 902
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
    .line 904
    :cond_0
    if-lt p1, v5, :cond_1

    #@2c
    const/16 v1, 0xb

    #@2e
    if-gt p1, v1, :cond_1

    #@30
    .line 905
    new-instance v1, Ljava/lang/StringBuilder;

    #@32
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@35
    const-string/jumbo v2, "P2P_SET listen_channel "

    #@38
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3b
    move-result-object v1

    #@3c
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@3f
    move-result-object v1

    #@40
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@43
    move-result-object v1

    #@44
    invoke-direct {p0, v1}, Lcom/android/server/wifi/WifiNative;->doBooleanCommand(Ljava/lang/String;)Z

    #@47
    move-result v1

    #@48
    if-nez v1, :cond_2

    #@4a
    .line 906
    return v4

    #@4b
    .line 908
    :cond_1
    if-eqz p1, :cond_2

    #@4d
    .line 909
    return v4

    #@4e
    .line 912
    :cond_2
    if-lt p2, v5, :cond_4

    #@50
    const/16 v1, 0xa5

    #@52
    if-gt p2, v1, :cond_4

    #@54
    .line 913
    const/16 v1, 0xe

    #@56
    if-gt p2, v1, :cond_3

    #@58
    const/16 v1, 0x967

    #@5a
    :goto_0
    mul-int/lit8 v2, p2, 0x5

    #@5c
    add-int v0, v1, v2

    #@5e
    .line 914
    .local v0, "freq":I
    new-instance v1, Ljava/lang/StringBuilder;

    #@60
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@63
    const-string/jumbo v2, "P2P_SET disallow_freq 1000-"

    #@66
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@69
    move-result-object v1

    #@6a
    .line 915
    add-int/lit8 v2, v0, -0x5

    #@6c
    .line 914
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@6f
    move-result-object v1

    #@70
    .line 915
    const-string/jumbo v2, ","

    #@73
    .line 914
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@76
    move-result-object v1

    #@77
    .line 915
    add-int/lit8 v2, v0, 0x5

    #@79
    .line 914
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@7c
    move-result-object v1

    #@7d
    .line 915
    const-string/jumbo v2, "-6000"

    #@80
    .line 914
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@83
    move-result-object v1

    #@84
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@87
    move-result-object v1

    #@88
    invoke-direct {p0, v1}, Lcom/android/server/wifi/WifiNative;->doBooleanCommand(Ljava/lang/String;)Z

    #@8b
    move-result v1

    #@8c
    return v1

    #@8d
    .line 913
    .end local v0    # "freq":I
    :cond_3
    const/16 v1, 0x1388

    #@8f
    goto :goto_0

    #@90
    .line 916
    :cond_4
    if-nez p2, :cond_5

    #@92
    .line 918
    const-string/jumbo v1, "P2P_SET disallow_freq \"\""

    #@95
    invoke-direct {p0, v1}, Lcom/android/server/wifi/WifiNative;->doBooleanCommand(Ljava/lang/String;)Z

    #@98
    move-result v1

    #@99
    return v1

    #@9a
    .line 921
    :cond_5
    return v4
.end method

.method public p2pStopFind()Z
    .locals 1

    #@0
    .prologue
    .line 879
    const-string/jumbo v0, "P2P_STOP_FIND"

    #@3
    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiNative;->doBooleanCommand(Ljava/lang/String;)Z

    #@6
    move-result v0

    #@7
    return v0
.end method

.method public ping()Z
    .locals 2

    #@0
    .prologue
    .line 250
    const-string/jumbo v1, "PING"

    #@3
    invoke-direct {p0, v1}, Lcom/android/server/wifi/WifiNative;->doStringCommand(Ljava/lang/String;)Ljava/lang/String;

    #@6
    move-result-object v0

    #@7
    .line 251
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
    .line 703
    const-string/jumbo v0, "PKTCNT_POLL"

    #@3
    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiNative;->doStringCommand(Ljava/lang/String;)Ljava/lang/String;

    #@6
    move-result-object v0

    #@7
    return-object v0
.end method

.method public reassociate()Z
    .locals 1

    #@0
    .prologue
    .line 355
    sget-boolean v0, Lcom/android/server/wifi/WifiNative;->DBG:Z

    #@2
    if-eqz v0, :cond_0

    #@4
    const-string/jumbo v0, "REASSOCIATE "

    #@7
    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiNative;->logDbg(Ljava/lang/String;)V

    #@a
    .line 356
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
    .line 350
    sget-boolean v0, Lcom/android/server/wifi/WifiNative;->DBG:Z

    #@2
    if-eqz v0, :cond_0

    #@4
    const-string/jumbo v0, "RECONNECT "

    #@7
    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiNative;->logDbg(Ljava/lang/String;)V

    #@a
    .line 351
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
    .line 314
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

.method public responderReportNfcHandover(Ljava/lang/String;)Z
    .locals 2
    .param p1, "requestMessage"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1229
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

.method public saveConfig()Z
    .locals 1

    #@0
    .prologue
    .line 626
    const-string/jumbo v0, "SAVE_CONFIG"

    #@3
    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiNative;->doBooleanCommand(Ljava/lang/String;)Z

    #@6
    move-result v0

    #@7
    return v0
.end method

.method public scan(ILjava/lang/String;)Z
    .locals 2
    .param p1, "type"    # I
    .param p2, "freqList"    # Ljava/lang/String;

    #@0
    .prologue
    .line 263
    const/4 v0, 0x1

    #@1
    if-ne p1, v0, :cond_1

    #@3
    .line 264
    if-nez p2, :cond_0

    #@5
    const-string/jumbo v0, "SCAN TYPE=ONLY"

    #@8
    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiNative;->doBooleanCommand(Ljava/lang/String;)Z

    #@b
    move-result v0

    #@c
    return v0

    #@d
    .line 265
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    #@f
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@12
    const-string/jumbo v1, "SCAN TYPE=ONLY freq="

    #@15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@18
    move-result-object v0

    #@19
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1c
    move-result-object v0

    #@1d
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@20
    move-result-object v0

    #@21
    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiNative;->doBooleanCommand(Ljava/lang/String;)Z

    #@24
    move-result v0

    #@25
    return v0

    #@26
    .line 266
    :cond_1
    const/4 v0, 0x2

    #@27
    if-ne p1, v0, :cond_3

    #@29
    .line 267
    if-nez p2, :cond_2

    #@2b
    const-string/jumbo v0, "SCAN"

    #@2e
    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiNative;->doBooleanCommand(Ljava/lang/String;)Z

    #@31
    move-result v0

    #@32
    return v0

    #@33
    .line 268
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    #@35
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@38
    const-string/jumbo v1, "SCAN freq="

    #@3b
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3e
    move-result-object v0

    #@3f
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@42
    move-result-object v0

    #@43
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@46
    move-result-object v0

    #@47
    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiNative;->doBooleanCommand(Ljava/lang/String;)Z

    #@4a
    move-result v0

    #@4b
    return v0

    #@4c
    .line 270
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@4e
    const-string/jumbo v1, "Invalid scan type"

    #@51
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@54
    throw v0
.end method

.method public scanResult(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "bssid"    # Ljava/lang/String;

    #@0
    .prologue
    .line 459
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

.method public scanResults(I)Ljava/lang/String;
    .locals 2
    .param p1, "sid"    # I

    #@0
    .prologue
    .line 422
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
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@f
    move-result-object v0

    #@10
    const-string/jumbo v1, "- MASK=0x29d87"

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

.method public selectNetwork(I)Z
    .locals 2
    .param p1, "netId"    # I

    #@0
    .prologue
    .line 345
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
    .line 346
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
    .line 584
    const/4 v1, 0x1

    #@1
    if-ne p1, v1, :cond_0

    #@3
    .line 585
    const-string/jumbo v0, "5G"

    #@6
    .line 590
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
    .line 586
    .end local v0    # "bandstr":Ljava/lang/String;
    :cond_0
    const/4 v1, 0x2

    #@20
    if-ne p1, v1, :cond_1

    #@22
    .line 587
    const-string/jumbo v0, "2G"

    #@25
    .restart local v0    # "bandstr":Ljava/lang/String;
    goto :goto_0

    #@26
    .line 589
    .end local v0    # "bandstr":Ljava/lang/String;
    :cond_1
    const-string/jumbo v0, "AUTO"

    #@29
    .restart local v0    # "bandstr":Ljava/lang/String;
    goto :goto_0
.end method

.method public setBatchedScanSettings(Landroid/net/wifi/BatchedScanSettings;)Ljava/lang/String;
    .locals 7
    .param p1, "settings"    # Landroid/net/wifi/BatchedScanSettings;

    #@0
    .prologue
    const v6, 0x7fffffff

    #@3
    .line 477
    if-nez p1, :cond_0

    #@5
    .line 478
    const-string/jumbo v4, "DRIVER WLS_BATCHING STOP"

    #@8
    invoke-direct {p0, v4}, Lcom/android/server/wifi/WifiNative;->doStringCommand(Ljava/lang/String;)Ljava/lang/String;

    #@b
    move-result-object v4

    #@c
    return-object v4

    #@d
    .line 480
    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    #@f
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@12
    const-string/jumbo v5, "DRIVER WLS_BATCHING SET SCANFREQ="

    #@15
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@18
    move-result-object v4

    #@19
    iget v5, p1, Landroid/net/wifi/BatchedScanSettings;->scanIntervalSec:I

    #@1b
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@1e
    move-result-object v4

    #@1f
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@22
    move-result-object v2

    #@23
    .line 481
    .local v2, "cmd":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    #@25
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@28
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2b
    move-result-object v4

    #@2c
    const-string/jumbo v5, " MSCAN="

    #@2f
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@32
    move-result-object v4

    #@33
    iget v5, p1, Landroid/net/wifi/BatchedScanSettings;->maxScansPerBatch:I

    #@35
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@38
    move-result-object v4

    #@39
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3c
    move-result-object v2

    #@3d
    .line 482
    iget v4, p1, Landroid/net/wifi/BatchedScanSettings;->maxApPerScan:I

    #@3f
    if-eq v4, v6, :cond_1

    #@41
    .line 483
    new-instance v4, Ljava/lang/StringBuilder;

    #@43
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@46
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@49
    move-result-object v4

    #@4a
    const-string/jumbo v5, " BESTN="

    #@4d
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@50
    move-result-object v4

    #@51
    iget v5, p1, Landroid/net/wifi/BatchedScanSettings;->maxApPerScan:I

    #@53
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@56
    move-result-object v4

    #@57
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@5a
    move-result-object v2

    #@5b
    .line 485
    :cond_1
    iget-object v4, p1, Landroid/net/wifi/BatchedScanSettings;->channelSet:Ljava/util/Collection;

    #@5d
    if-eqz v4, :cond_2

    #@5f
    iget-object v4, p1, Landroid/net/wifi/BatchedScanSettings;->channelSet:Ljava/util/Collection;

    #@61
    invoke-interface {v4}, Ljava/util/Collection;->isEmpty()Z

    #@64
    move-result v4

    #@65
    if-eqz v4, :cond_4

    #@67
    .line 494
    :cond_2
    :goto_0
    iget v4, p1, Landroid/net/wifi/BatchedScanSettings;->maxApForDistance:I

    #@69
    if-eq v4, v6, :cond_3

    #@6b
    .line 495
    new-instance v4, Ljava/lang/StringBuilder;

    #@6d
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@70
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@73
    move-result-object v4

    #@74
    const-string/jumbo v5, " RTT="

    #@77
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@7a
    move-result-object v4

    #@7b
    iget v5, p1, Landroid/net/wifi/BatchedScanSettings;->maxApForDistance:I

    #@7d
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@80
    move-result-object v4

    #@81
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@84
    move-result-object v2

    #@85
    .line 497
    :cond_3
    invoke-direct {p0, v2}, Lcom/android/server/wifi/WifiNative;->doStringCommand(Ljava/lang/String;)Ljava/lang/String;

    #@88
    move-result-object v4

    #@89
    return-object v4

    #@8a
    .line 486
    :cond_4
    new-instance v4, Ljava/lang/StringBuilder;

    #@8c
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@8f
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@92
    move-result-object v4

    #@93
    const-string/jumbo v5, " CHANNEL=<"

    #@96
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@99
    move-result-object v4

    #@9a
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@9d
    move-result-object v2

    #@9e
    .line 487
    const/4 v3, 0x0

    #@9f
    .line 488
    .local v3, "i":I
    iget-object v4, p1, Landroid/net/wifi/BatchedScanSettings;->channelSet:Ljava/util/Collection;

    #@a1
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@a4
    move-result-object v1

    #@a5
    .local v1, "channel$iterator":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@a8
    move-result v4

    #@a9
    if-eqz v4, :cond_6

    #@ab
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@ae
    move-result-object v0

    #@af
    check-cast v0, Ljava/lang/String;

    #@b1
    .line 489
    .local v0, "channel":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    #@b3
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@b6
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b9
    move-result-object v5

    #@ba
    if-lez v3, :cond_5

    #@bc
    const-string/jumbo v4, ","

    #@bf
    :goto_2
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@c2
    move-result-object v4

    #@c3
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@c6
    move-result-object v4

    #@c7
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@ca
    move-result-object v2

    #@cb
    .line 490
    add-int/lit8 v3, v3, 0x1

    #@cd
    goto :goto_1

    #@ce
    .line 489
    :cond_5
    const-string/jumbo v4, ""

    #@d1
    goto :goto_2

    #@d2
    .line 492
    .end local v0    # "channel":Ljava/lang/String;
    :cond_6
    new-instance v4, Ljava/lang/StringBuilder;

    #@d4
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@d7
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@da
    move-result-object v4

    #@db
    const-string/jumbo v5, ">"

    #@de
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@e1
    move-result-object v4

    #@e2
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@e5
    move-result-object v2

    #@e6
    goto :goto_0
.end method

.method public setBluetoothCoexistenceMode(I)Z
    .locals 2
    .param p1, "mode"    # I

    #@0
    .prologue
    .line 602
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
    .line 614
    if-eqz p1, :cond_0

    #@2
    .line 615
    const-string/jumbo v0, "DRIVER BTCOEXSCAN-START"

    #@5
    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiNative;->doBooleanCommand(Ljava/lang/String;)Z

    #@8
    move-result v0

    #@9
    return v0

    #@a
    .line 617
    :cond_0
    const-string/jumbo v0, "DRIVER BTCOEXSCAN-STOP"

    #@d
    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiNative;->doBooleanCommand(Ljava/lang/String;)Z

    #@10
    move-result v0

    #@11
    return v0
.end method

.method public setConcurrencyPriority(Ljava/lang/String;)Z
    .locals 2
    .param p1, "s"    # Ljava/lang/String;

    #@0
    .prologue
    .line 864
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
    .line 804
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
    .line 651
    if-eqz p1, :cond_0

    #@2
    .line 652
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
    .line 654
    :cond_0
    const-string/jumbo v0, "DRIVER COUNTRY"

    #@24
    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiNative;->doBooleanCommand(Ljava/lang/String;)Z

    #@27
    move-result v0

    #@28
    return v0
.end method

.method public setDeviceName(Ljava/lang/String;)Z
    .locals 2
    .param p1, "name"    # Ljava/lang/String;

    #@0
    .prologue
    .line 796
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
    .line 800
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

.method public setExternalSim(Z)Z
    .locals 5
    .param p1, "external"    # Z

    #@0
    .prologue
    .line 760
    sget-object v2, Lcom/android/server/wifi/WifiNative;->mLock:Ljava/lang/Object;

    #@2
    monitor-enter v2

    #@3
    .line 761
    if-eqz p1, :cond_0

    #@5
    :try_start_0
    const-string/jumbo v0, "1"

    #@8
    .line 762
    .local v0, "value":Ljava/lang/String;
    :goto_0
    const-string/jumbo v1, "WifiNative-HAL"

    #@b
    new-instance v3, Ljava/lang/StringBuilder;

    #@d
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@10
    const-string/jumbo v4, "Setting external_sim to "

    #@13
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@16
    move-result-object v3

    #@17
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1a
    move-result-object v3

    #@1b
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1e
    move-result-object v3

    #@1f
    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@22
    .line 763
    new-instance v1, Ljava/lang/StringBuilder;

    #@24
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@27
    const-string/jumbo v3, "SET external_sim "

    #@2a
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2d
    move-result-object v1

    #@2e
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@31
    move-result-object v1

    #@32
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@35
    move-result-object v1

    #@36
    invoke-direct {p0, v1}, Lcom/android/server/wifi/WifiNative;->doBooleanCommand(Ljava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@39
    move-result v1

    #@3a
    monitor-exit v2

    #@3b
    return v1

    #@3c
    .line 761
    .end local v0    # "value":Ljava/lang/String;
    :cond_0
    :try_start_1
    const-string/jumbo v0, "0"
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@3f
    .restart local v0    # "value":Ljava/lang/String;
    goto :goto_0

    #@40
    .line 760
    .end local v0    # "value":Ljava/lang/String;
    :catchall_0
    move-exception v1

    #@41
    monitor-exit v2

    #@42
    throw v1
.end method

.method public setManufacturer(Ljava/lang/String;)Z
    .locals 2
    .param p1, "value"    # Ljava/lang/String;

    #@0
    .prologue
    .line 808
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
    .line 1202
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
    .line 1200
    return-void
.end method

.method public setModelName(Ljava/lang/String;)Z
    .locals 2
    .param p1, "value"    # Ljava/lang/String;

    #@0
    .prologue
    .line 812
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
    .line 816
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

.method public setNetworkVariable(ILjava/lang/String;Ljava/lang/String;)Z
    .locals 2
    .param p1, "netId"    # I
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "value"    # Ljava/lang/String;

    #@0
    .prologue
    .line 297
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
    .line 298
    :cond_1
    const-string/jumbo v0, "psk"

    #@11
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@14
    move-result v0

    #@15
    if-nez v0, :cond_2

    #@17
    .line 299
    const-string/jumbo v0, "password"

    #@1a
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@1d
    move-result v0

    #@1e
    .line 298
    if-eqz v0, :cond_3

    #@20
    .line 300
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
    .line 302
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
    .line 828
    sget-object v1, Lcom/android/server/wifi/WifiNative;->mLock:Ljava/lang/Object;

    #@2
    monitor-enter v1

    #@3
    .line 829
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
    .line 828
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
    .line 842
    sget-object v1, Lcom/android/server/wifi/WifiNative;->mLock:Ljava/lang/Object;

    #@2
    monitor-enter v1

    #@3
    .line 843
    if-eqz p2, :cond_0

    #@5
    .line 844
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
    .line 846
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
    .line 842
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
    .line 824
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
    .line 791
    if-eqz p1, :cond_0

    #@2
    const/4 v0, 0x1

    #@3
    .line 792
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
    .line 791
    .end local v0    # "value":I
    :cond_0
    const/4 v0, 0x0

    #@1d
    .restart local v0    # "value":I
    goto :goto_0
.end method

.method public setPowerSave(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    #@0
    .prologue
    .line 834
    if-eqz p1, :cond_0

    #@2
    .line 835
    const-string/jumbo v0, "SET ps 1"

    #@5
    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiNative;->doBooleanCommand(Ljava/lang/String;)Z

    #@8
    .line 833
    :goto_0
    return-void

    #@9
    .line 837
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
    .line 676
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
    .line 675
    return-void
.end method

.method public setSerialNumber(Ljava/lang/String;)Z
    .locals 2
    .param p1, "value"    # Ljava/lang/String;

    #@0
    .prologue
    .line 820
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
    .line 255
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
    .line 254
    return-void
.end method

.method public setSuspendOptimizations(Z)Z
    .locals 3
    .param p1, "enabled"    # Z

    #@0
    .prologue
    .line 640
    iput-boolean p1, p0, Lcom/android/server/wifi/WifiNative;->mSuspendOptEnabled:Z

    #@2
    .line 642
    const-string/jumbo v0, "native"

    #@5
    new-instance v1, Ljava/lang/StringBuilder;

    #@7
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@a
    const-string/jumbo v2, "do suspend "

    #@d
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@10
    move-result-object v1

    #@11
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@14
    move-result-object v1

    #@15
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@18
    move-result-object v1

    #@19
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@1c
    .line 643
    if-eqz p1, :cond_0

    #@1e
    .line 644
    const-string/jumbo v0, "DRIVER SETSUSPENDMODE 1"

    #@21
    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiNative;->doBooleanCommand(Ljava/lang/String;)Z

    #@24
    move-result v0

    #@25
    return v0

    #@26
    .line 646
    :cond_0
    const-string/jumbo v0, "DRIVER SETSUSPENDMODE 0"

    #@29
    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiNative;->doBooleanCommand(Ljava/lang/String;)Z

    #@2c
    move-result v0

    #@2d
    return v0
.end method

.method public setWfdDeviceInfo(Ljava/lang/String;)Z
    .locals 2
    .param p1, "hex"    # Ljava/lang/String;

    #@0
    .prologue
    .line 856
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
    .line 852
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

.method public signalPoll()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 695
    const-string/jumbo v0, "SIGNAL_POLL"

    #@3
    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiNative;->doStringCommandWithoutLogging(Ljava/lang/String;)Ljava/lang/String;

    #@6
    move-result-object v0

    #@7
    return-object v0
.end method

.method public simAuthResponse(ILjava/lang/String;Ljava/lang/String;)Z
    .locals 3
    .param p1, "id"    # I
    .param p2, "type"    # Ljava/lang/String;
    .param p3, "response"    # Ljava/lang/String;

    #@0
    .prologue
    .line 769
    sget-object v1, Lcom/android/server/wifi/WifiNative;->mLock:Ljava/lang/Object;

    #@2
    monitor-enter v1

    #@3
    .line 770
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    #@5
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@8
    const-string/jumbo v2, "CTRL-RSP-SIM-"

    #@b
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@e
    move-result-object v0

    #@f
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@12
    move-result-object v0

    #@13
    const-string/jumbo v2, ":"

    #@16
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@19
    move-result-object v0

    #@1a
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1d
    move-result-object v0

    #@1e
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@21
    move-result-object v0

    #@22
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@25
    move-result-object v0

    #@26
    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiNative;->doBooleanCommand(Ljava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@29
    move-result v0

    #@2a
    monitor-exit v1

    #@2b
    return v0

    #@2c
    .line 769
    :catchall_0
    move-exception v0

    #@2d
    monitor-exit v1

    #@2e
    throw v0
.end method

.method public simIdentityResponse(ILjava/lang/String;)Z
    .locals 3
    .param p1, "id"    # I
    .param p2, "response"    # Ljava/lang/String;

    #@0
    .prologue
    .line 775
    sget-object v1, Lcom/android/server/wifi/WifiNative;->mLock:Ljava/lang/Object;

    #@2
    monitor-enter v1

    #@3
    .line 776
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    #@5
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@8
    const-string/jumbo v2, "CTRL-RSP-IDENTITY-"

    #@b
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@e
    move-result-object v0

    #@f
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@12
    move-result-object v0

    #@13
    const-string/jumbo v2, ":"

    #@16
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@19
    move-result-object v0

    #@1a
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1d
    move-result-object v0

    #@1e
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@21
    move-result-object v0

    #@22
    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiNative;->doBooleanCommand(Ljava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@25
    move-result v0

    #@26
    monitor-exit v1

    #@27
    return v0

    #@28
    .line 775
    :catchall_0
    move-exception v0

    #@29
    monitor-exit v1

    #@2a
    throw v0
.end method

.method public startDriver()Z
    .locals 1

    #@0
    .prologue
    .line 505
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
    .line 538
    const-string/jumbo v0, "DRIVER RXFILTER-STOP"

    #@3
    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiNative;->doBooleanCommand(Ljava/lang/String;)Z

    #@6
    move-result v0

    #@7
    if-eqz v0, :cond_0

    #@9
    .line 539
    const-string/jumbo v0, "DRIVER RXFILTER-REMOVE 2"

    #@c
    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiNative;->doBooleanCommand(Ljava/lang/String;)Z

    #@f
    move-result v0

    #@10
    .line 538
    if-eqz v0, :cond_0

    #@12
    .line 540
    const-string/jumbo v0, "DRIVER RXFILTER-START"

    #@15
    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiNative;->doBooleanCommand(Ljava/lang/String;)Z

    #@18
    move-result v0

    #@19
    .line 538
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
    .line 558
    const-string/jumbo v0, "DRIVER RXFILTER-STOP"

    #@3
    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiNative;->doBooleanCommand(Ljava/lang/String;)Z

    #@6
    move-result v0

    #@7
    if-eqz v0, :cond_0

    #@9
    .line 559
    const-string/jumbo v0, "DRIVER RXFILTER-REMOVE 3"

    #@c
    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiNative;->doBooleanCommand(Ljava/lang/String;)Z

    #@f
    move-result v0

    #@10
    .line 558
    if-eqz v0, :cond_0

    #@12
    .line 560
    const-string/jumbo v0, "DRIVER RXFILTER-START"

    #@15
    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiNative;->doBooleanCommand(Ljava/lang/String;)Z

    #@18
    move-result v0

    #@19
    .line 558
    :goto_0
    return v0

    #@1a
    :cond_0
    const/4 v0, 0x0

    #@1b
    goto :goto_0
.end method

.method public startTdls(Ljava/lang/String;Z)V
    .locals 2
    .param p1, "macAddr"    # Ljava/lang/String;
    .param p2, "enable"    # Z

    #@0
    .prologue
    .line 680
    if-eqz p2, :cond_0

    #@2
    .line 681
    new-instance v0, Ljava/lang/StringBuilder;

    #@4
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@7
    const-string/jumbo v1, "TDLS_DISCOVER "

    #@a
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@d
    move-result-object v0

    #@e
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@11
    move-result-object v0

    #@12
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@15
    move-result-object v0

    #@16
    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiNative;->doBooleanCommand(Ljava/lang/String;)Z

    #@19
    .line 682
    new-instance v0, Ljava/lang/StringBuilder;

    #@1b
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@1e
    const-string/jumbo v1, "TDLS_SETUP "

    #@21
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@24
    move-result-object v0

    #@25
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@28
    move-result-object v0

    #@29
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2c
    move-result-object v0

    #@2d
    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiNative;->doBooleanCommand(Ljava/lang/String;)Z

    #@30
    .line 679
    :goto_0
    return-void

    #@31
    .line 684
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    #@33
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@36
    const-string/jumbo v1, "TDLS_TEARDOWN "

    #@39
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3c
    move-result-object v0

    #@3d
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@40
    move-result-object v0

    #@41
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@44
    move-result-object v0

    #@45
    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiNative;->doBooleanCommand(Ljava/lang/String;)Z

    #@48
    goto :goto_0
.end method

.method public startWpsPbc(Ljava/lang/String;)Z
    .locals 2
    .param p1, "bssid"    # Ljava/lang/String;

    #@0
    .prologue
    .line 711
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_0

    #@6
    .line 712
    const-string/jumbo v0, "WPS_PBC"

    #@9
    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiNative;->doBooleanCommand(Ljava/lang/String;)Z

    #@c
    move-result v0

    #@d
    return v0

    #@e
    .line 714
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
    .line 719
    sget-object v1, Lcom/android/server/wifi/WifiNative;->mLock:Ljava/lang/Object;

    #@2
    monitor-enter v1

    #@3
    .line 720
    :try_start_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@6
    move-result v0

    #@7
    if-eqz v0, :cond_0

    #@9
    .line 721
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
    .line 723
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
    .line 719
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
    .line 742
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_0

    #@6
    .line 743
    const-string/jumbo v0, "WPS_PIN any"

    #@9
    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiNative;->doStringCommand(Ljava/lang/String;)Ljava/lang/String;

    #@c
    move-result-object v0

    #@d
    return-object v0

    #@e
    .line 745
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
    .line 750
    sget-object v1, Lcom/android/server/wifi/WifiNative;->mLock:Ljava/lang/Object;

    #@2
    monitor-enter v1

    #@3
    .line 751
    :try_start_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@6
    move-result v0

    #@7
    if-eqz v0, :cond_0

    #@9
    .line 752
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
    .line 754
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
    .line 750
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
    .line 729
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
    .line 730
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
    .line 734
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
    .line 735
    :cond_0
    sget-object v1, Lcom/android/server/wifi/WifiNative;->mLock:Ljava/lang/Object;

    #@a
    monitor-enter v1

    #@b
    .line 736
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
    .line 735
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
    .line 782
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
    .line 783
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
    .line 365
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
    .line 369
    if-eqz p1, :cond_0

    #@2
    .line 370
    const-string/jumbo v0, "STATUS-NO_EVENTS"

    #@5
    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiNative;->doStringCommand(Ljava/lang/String;)Ljava/lang/String;

    #@8
    move-result-object v0

    #@9
    return-object v0

    #@a
    .line 372
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
    .line 509
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
    .line 548
    const-string/jumbo v0, "DRIVER RXFILTER-STOP"

    #@3
    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiNative;->doBooleanCommand(Ljava/lang/String;)Z

    #@6
    move-result v0

    #@7
    if-eqz v0, :cond_0

    #@9
    .line 549
    const-string/jumbo v0, "DRIVER RXFILTER-ADD 2"

    #@c
    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiNative;->doBooleanCommand(Ljava/lang/String;)Z

    #@f
    move-result v0

    #@10
    .line 548
    if-eqz v0, :cond_0

    #@12
    .line 550
    const-string/jumbo v0, "DRIVER RXFILTER-START"

    #@15
    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiNative;->doBooleanCommand(Ljava/lang/String;)Z

    #@18
    move-result v0

    #@19
    .line 548
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
    .line 568
    const-string/jumbo v0, "DRIVER RXFILTER-STOP"

    #@3
    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiNative;->doBooleanCommand(Ljava/lang/String;)Z

    #@6
    move-result v0

    #@7
    if-eqz v0, :cond_0

    #@9
    .line 569
    const-string/jumbo v0, "DRIVER RXFILTER-ADD 3"

    #@c
    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiNative;->doBooleanCommand(Ljava/lang/String;)Z

    #@f
    move-result v0

    #@10
    .line 568
    if-eqz v0, :cond_0

    #@12
    .line 570
    const-string/jumbo v0, "DRIVER RXFILTER-START"

    #@15
    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiNative;->doBooleanCommand(Ljava/lang/String;)Z

    #@18
    move-result v0

    #@19
    .line 568
    :goto_0
    return v0

    #@1a
    :cond_0
    const/4 v0, 0x0

    #@1b
    goto :goto_0
.end method

.method public stopSupplicant()Z
    .locals 1

    #@0
    .prologue
    .line 281
    const-string/jumbo v0, "TERMINATE"

    #@3
    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiNative;->doBooleanCommand(Ljava/lang/String;)Z

    #@6
    move-result v0

    #@7
    return v0
.end method

.method public waitForEvent()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 177
    invoke-direct {p0}, Lcom/android/server/wifi/WifiNative;->waitForEventNative()Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method
