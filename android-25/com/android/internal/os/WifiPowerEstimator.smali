.class public Lcom/android/internal/os/WifiPowerEstimator;
.super Lcom/android/internal/os/PowerCalculator;
.source "WifiPowerEstimator.java"


# static fields
.field private static final DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "WifiPowerEstimator"


# instance fields
.field private mTotalAppWifiRunningTimeMs:J

.field private final mWifiPowerBatchScan:D

.field private final mWifiPowerOn:D

.field private final mWifiPowerPerPacket:D

.field private final mWifiPowerScan:D


# direct methods
.method public constructor <init>(Lcom/android/internal/os/PowerProfile;)V
    .locals 2
    .param p1, "profile"    # Lcom/android/internal/os/PowerProfile;

    #@0
    .prologue
    .line 33
    invoke-direct {p0}, Lcom/android/internal/os/PowerCalculator;-><init>()V

    #@3
    .line 31
    const-wide/16 v0, 0x0

    #@5
    iput-wide v0, p0, Lcom/android/internal/os/WifiPowerEstimator;->mTotalAppWifiRunningTimeMs:J

    #@7
    .line 34
    invoke-static {p1}, Lcom/android/internal/os/WifiPowerEstimator;->getWifiPowerPerPacket(Lcom/android/internal/os/PowerProfile;)D

    #@a
    move-result-wide v0

    #@b
    iput-wide v0, p0, Lcom/android/internal/os/WifiPowerEstimator;->mWifiPowerPerPacket:D

    #@d
    .line 35
    const-string/jumbo v0, "wifi.on"

    #@10
    invoke-virtual {p1, v0}, Lcom/android/internal/os/PowerProfile;->getAveragePower(Ljava/lang/String;)D

    #@13
    move-result-wide v0

    #@14
    iput-wide v0, p0, Lcom/android/internal/os/WifiPowerEstimator;->mWifiPowerOn:D

    #@16
    .line 36
    const-string/jumbo v0, "wifi.scan"

    #@19
    invoke-virtual {p1, v0}, Lcom/android/internal/os/PowerProfile;->getAveragePower(Ljava/lang/String;)D

    #@1c
    move-result-wide v0

    #@1d
    iput-wide v0, p0, Lcom/android/internal/os/WifiPowerEstimator;->mWifiPowerScan:D

    #@1f
    .line 37
    const-string/jumbo v0, "wifi.batchedscan"

    #@22
    invoke-virtual {p1, v0}, Lcom/android/internal/os/PowerProfile;->getAveragePower(Ljava/lang/String;)D

    #@25
    move-result-wide v0

    #@26
    iput-wide v0, p0, Lcom/android/internal/os/WifiPowerEstimator;->mWifiPowerBatchScan:D

    #@28
    .line 33
    return-void
.end method

.method private static getWifiPowerPerPacket(Lcom/android/internal/os/PowerProfile;)D
    .locals 8
    .param p0, "profile"    # Lcom/android/internal/os/PowerProfile;

    #@0
    .prologue
    const-wide v6, 0x40ac200000000000L    # 3600.0

    #@5
    .line 44
    const-wide/32 v0, 0xf4240

    #@8
    .line 45
    .local v0, "WIFI_BPS":J
    const-string/jumbo v4, "wifi.active"

    #@b
    invoke-virtual {p0, v4}, Lcom/android/internal/os/PowerProfile;->getAveragePower(Ljava/lang/String;)D

    #@e
    move-result-wide v4

    #@f
    div-double v2, v4, v6

    #@11
    .line 47
    .local v2, "WIFI_POWER":D
    const-wide v4, 0x404e848000000000L    # 61.03515625

    #@16
    div-double v4, v2, v4

    #@18
    div-double/2addr v4, v6

    #@19
    return-wide v4
.end method


# virtual methods
.method public calculateApp(Lcom/android/internal/os/BatterySipper;Landroid/os/BatteryStats$Uid;JJI)V
    .locals 25
    .param p1, "app"    # Lcom/android/internal/os/BatterySipper;
    .param p2, "u"    # Landroid/os/BatteryStats$Uid;
    .param p3, "rawRealtimeUs"    # J
    .param p5, "rawUptimeUs"    # J
    .param p7, "statsType"    # I

    #@0
    .prologue
    .line 53
    const/4 v9, 0x2

    #@1
    move-object/from16 v0, p2

    #@3
    move/from16 v1, p7

    #@5
    invoke-virtual {v0, v9, v1}, Landroid/os/BatteryStats$Uid;->getNetworkActivityPackets(II)J

    #@8
    move-result-wide v20

    #@9
    move-wide/from16 v0, v20

    #@b
    move-object/from16 v2, p1

    #@d
    iput-wide v0, v2, Lcom/android/internal/os/BatterySipper;->wifiRxPackets:J

    #@f
    .line 55
    const/4 v9, 0x3

    #@10
    move-object/from16 v0, p2

    #@12
    move/from16 v1, p7

    #@14
    invoke-virtual {v0, v9, v1}, Landroid/os/BatteryStats$Uid;->getNetworkActivityPackets(II)J

    #@17
    move-result-wide v20

    #@18
    move-wide/from16 v0, v20

    #@1a
    move-object/from16 v2, p1

    #@1c
    iput-wide v0, v2, Lcom/android/internal/os/BatterySipper;->wifiTxPackets:J

    #@1e
    .line 57
    const/4 v9, 0x2

    #@1f
    move-object/from16 v0, p2

    #@21
    move/from16 v1, p7

    #@23
    invoke-virtual {v0, v9, v1}, Landroid/os/BatteryStats$Uid;->getNetworkActivityBytes(II)J

    #@26
    move-result-wide v20

    #@27
    move-wide/from16 v0, v20

    #@29
    move-object/from16 v2, p1

    #@2b
    iput-wide v0, v2, Lcom/android/internal/os/BatterySipper;->wifiRxBytes:J

    #@2d
    .line 59
    const/4 v9, 0x3

    #@2e
    move-object/from16 v0, p2

    #@30
    move/from16 v1, p7

    #@32
    invoke-virtual {v0, v9, v1}, Landroid/os/BatteryStats$Uid;->getNetworkActivityBytes(II)J

    #@35
    move-result-wide v20

    #@36
    move-wide/from16 v0, v20

    #@38
    move-object/from16 v2, p1

    #@3a
    iput-wide v0, v2, Lcom/android/internal/os/BatterySipper;->wifiTxBytes:J

    #@3c
    .line 62
    move-object/from16 v0, p1

    #@3e
    iget-wide v0, v0, Lcom/android/internal/os/BatterySipper;->wifiRxPackets:J

    #@40
    move-wide/from16 v20, v0

    #@42
    move-object/from16 v0, p1

    #@44
    iget-wide v0, v0, Lcom/android/internal/os/BatterySipper;->wifiTxPackets:J

    #@46
    move-wide/from16 v22, v0

    #@48
    add-long v20, v20, v22

    #@4a
    move-wide/from16 v0, v20

    #@4c
    long-to-double v0, v0

    #@4d
    move-wide/from16 v20, v0

    #@4f
    .line 63
    move-object/from16 v0, p0

    #@51
    iget-wide v0, v0, Lcom/android/internal/os/WifiPowerEstimator;->mWifiPowerPerPacket:D

    #@53
    move-wide/from16 v22, v0

    #@55
    .line 62
    mul-double v14, v20, v22

    #@57
    .line 65
    .local v14, "wifiPacketPower":D
    move-object/from16 v0, p2

    #@59
    move-wide/from16 v1, p3

    #@5b
    move/from16 v3, p7

    #@5d
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/BatteryStats$Uid;->getWifiRunningTime(JI)J

    #@60
    move-result-wide v20

    #@61
    const-wide/16 v22, 0x3e8

    #@63
    div-long v20, v20, v22

    #@65
    move-wide/from16 v0, v20

    #@67
    move-object/from16 v2, p1

    #@69
    iput-wide v0, v2, Lcom/android/internal/os/BatterySipper;->wifiRunningTimeMs:J

    #@6b
    .line 66
    move-object/from16 v0, p0

    #@6d
    iget-wide v0, v0, Lcom/android/internal/os/WifiPowerEstimator;->mTotalAppWifiRunningTimeMs:J

    #@6f
    move-wide/from16 v20, v0

    #@71
    move-object/from16 v0, p1

    #@73
    iget-wide v0, v0, Lcom/android/internal/os/BatterySipper;->wifiRunningTimeMs:J

    #@75
    move-wide/from16 v22, v0

    #@77
    add-long v20, v20, v22

    #@79
    move-wide/from16 v0, v20

    #@7b
    move-object/from16 v2, p0

    #@7d
    iput-wide v0, v2, Lcom/android/internal/os/WifiPowerEstimator;->mTotalAppWifiRunningTimeMs:J

    #@7f
    .line 67
    move-object/from16 v0, p1

    #@81
    iget-wide v0, v0, Lcom/android/internal/os/BatterySipper;->wifiRunningTimeMs:J

    #@83
    move-wide/from16 v20, v0

    #@85
    move-wide/from16 v0, v20

    #@87
    long-to-double v0, v0

    #@88
    move-wide/from16 v20, v0

    #@8a
    move-object/from16 v0, p0

    #@8c
    iget-wide v0, v0, Lcom/android/internal/os/WifiPowerEstimator;->mWifiPowerOn:D

    #@8e
    move-wide/from16 v22, v0

    #@90
    mul-double v20, v20, v22

    #@92
    const-wide v22, 0x414b774000000000L    # 3600000.0

    #@97
    div-double v12, v20, v22

    #@99
    .line 69
    .local v12, "wifiLockPower":D
    move-object/from16 v0, p2

    #@9b
    move-wide/from16 v1, p3

    #@9d
    move/from16 v3, p7

    #@9f
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/BatteryStats$Uid;->getWifiScanTime(JI)J

    #@a2
    move-result-wide v20

    #@a3
    const-wide/16 v22, 0x3e8

    #@a5
    div-long v18, v20, v22

    #@a7
    .line 70
    .local v18, "wifiScanTimeMs":J
    move-wide/from16 v0, v18

    #@a9
    long-to-double v0, v0

    #@aa
    move-wide/from16 v20, v0

    #@ac
    move-object/from16 v0, p0

    #@ae
    iget-wide v0, v0, Lcom/android/internal/os/WifiPowerEstimator;->mWifiPowerScan:D

    #@b0
    move-wide/from16 v22, v0

    #@b2
    mul-double v20, v20, v22

    #@b4
    const-wide v22, 0x414b774000000000L    # 3600000.0

    #@b9
    div-double v16, v20, v22

    #@bb
    .line 72
    .local v16, "wifiScanPower":D
    const-wide/16 v10, 0x0

    #@bd
    .line 73
    .local v10, "wifiBatchScanPower":D
    const/4 v8, 0x0

    #@be
    .local v8, "bin":I
    :goto_0
    const/4 v9, 0x5

    #@bf
    if-ge v8, v9, :cond_0

    #@c1
    .line 75
    move-object/from16 v0, p2

    #@c3
    move-wide/from16 v1, p3

    #@c5
    move/from16 v3, p7

    #@c7
    invoke-virtual {v0, v8, v1, v2, v3}, Landroid/os/BatteryStats$Uid;->getWifiBatchedScanTime(IJI)J

    #@ca
    move-result-wide v20

    #@cb
    const-wide/16 v22, 0x3e8

    #@cd
    div-long v6, v20, v22

    #@cf
    .line 76
    .local v6, "batchScanTimeMs":J
    long-to-double v0, v6

    #@d0
    move-wide/from16 v20, v0

    #@d2
    move-object/from16 v0, p0

    #@d4
    iget-wide v0, v0, Lcom/android/internal/os/WifiPowerEstimator;->mWifiPowerBatchScan:D

    #@d6
    move-wide/from16 v22, v0

    #@d8
    mul-double v20, v20, v22

    #@da
    const-wide v22, 0x414b774000000000L    # 3600000.0

    #@df
    div-double v4, v20, v22

    #@e1
    .line 77
    .local v4, "batchScanPower":D
    add-double/2addr v10, v4

    #@e2
    .line 73
    add-int/lit8 v8, v8, 0x1

    #@e4
    goto :goto_0

    #@e5
    .line 80
    .end local v4    # "batchScanPower":D
    .end local v6    # "batchScanTimeMs":J
    :cond_0
    add-double v20, v14, v12

    #@e7
    add-double v20, v20, v16

    #@e9
    add-double v20, v20, v10

    #@eb
    move-wide/from16 v0, v20

    #@ed
    move-object/from16 v2, p1

    #@ef
    iput-wide v0, v2, Lcom/android/internal/os/BatterySipper;->wifiPowerMah:D

    #@f1
    .line 52
    return-void
.end method

.method public calculateRemaining(Lcom/android/internal/os/BatterySipper;Landroid/os/BatteryStats;JJI)V
    .locals 11
    .param p1, "app"    # Lcom/android/internal/os/BatterySipper;
    .param p2, "stats"    # Landroid/os/BatteryStats;
    .param p3, "rawRealtimeUs"    # J
    .param p5, "rawUptimeUs"    # J
    .param p7, "statsType"    # I

    #@0
    .prologue
    .line 90
    move/from16 v0, p7

    #@2
    invoke-virtual {p2, p3, p4, v0}, Landroid/os/BatteryStats;->getGlobalWifiRunningTime(JI)J

    #@5
    move-result-wide v6

    #@6
    .line 91
    const-wide/16 v8, 0x3e8

    #@8
    .line 90
    div-long v4, v6, v8

    #@a
    .line 92
    .local v4, "totalRunningTimeMs":J
    iget-wide v6, p0, Lcom/android/internal/os/WifiPowerEstimator;->mTotalAppWifiRunningTimeMs:J

    #@c
    sub-long v6, v4, v6

    #@e
    long-to-double v6, v6

    #@f
    iget-wide v8, p0, Lcom/android/internal/os/WifiPowerEstimator;->mWifiPowerOn:D

    #@11
    mul-double/2addr v6, v8

    #@12
    .line 93
    const-wide v8, 0x414b774000000000L    # 3600000.0

    #@17
    .line 92
    div-double v2, v6, v8

    #@19
    .line 94
    .local v2, "powerDrain":D
    iput-wide v4, p1, Lcom/android/internal/os/BatterySipper;->wifiRunningTimeMs:J

    #@1b
    .line 95
    const-wide/16 v6, 0x0

    #@1d
    invoke-static {v6, v7, v2, v3}, Ljava/lang/Math;->max(DD)D

    #@20
    move-result-wide v6

    #@21
    iput-wide v6, p1, Lcom/android/internal/os/BatterySipper;->wifiPowerMah:D

    #@23
    .line 89
    return-void
.end method

.method public reset()V
    .locals 2

    #@0
    .prologue
    .line 100
    const-wide/16 v0, 0x0

    #@2
    iput-wide v0, p0, Lcom/android/internal/os/WifiPowerEstimator;->mTotalAppWifiRunningTimeMs:J

    #@4
    .line 99
    return-void
.end method
