.class public Lcom/android/internal/os/WifiPowerCalculator;
.super Lcom/android/internal/os/PowerCalculator;
.source "WifiPowerCalculator.java"


# static fields
.field private static final DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "WifiPowerCalculator"


# instance fields
.field private final mIdleCurrentMa:D

.field private final mRxCurrentMa:D

.field private mTotalAppPowerDrain:D

.field private mTotalAppRunningTime:J

.field private final mTxCurrentMa:D


# direct methods
.method public constructor <init>(Lcom/android/internal/os/PowerProfile;)V
    .locals 2
    .param p1, "profile"    # Lcom/android/internal/os/PowerProfile;

    #@0
    .prologue
    .line 34
    invoke-direct {p0}, Lcom/android/internal/os/PowerCalculator;-><init>()V

    #@3
    .line 31
    const-wide/16 v0, 0x0

    #@5
    iput-wide v0, p0, Lcom/android/internal/os/WifiPowerCalculator;->mTotalAppPowerDrain:D

    #@7
    .line 32
    const-wide/16 v0, 0x0

    #@9
    iput-wide v0, p0, Lcom/android/internal/os/WifiPowerCalculator;->mTotalAppRunningTime:J

    #@b
    .line 35
    const-string/jumbo v0, "wifi.controller.idle"

    #@e
    invoke-virtual {p1, v0}, Lcom/android/internal/os/PowerProfile;->getAveragePower(Ljava/lang/String;)D

    #@11
    move-result-wide v0

    #@12
    iput-wide v0, p0, Lcom/android/internal/os/WifiPowerCalculator;->mIdleCurrentMa:D

    #@14
    .line 36
    const-string/jumbo v0, "wifi.controller.tx"

    #@17
    invoke-virtual {p1, v0}, Lcom/android/internal/os/PowerProfile;->getAveragePower(Ljava/lang/String;)D

    #@1a
    move-result-wide v0

    #@1b
    iput-wide v0, p0, Lcom/android/internal/os/WifiPowerCalculator;->mTxCurrentMa:D

    #@1d
    .line 37
    const-string/jumbo v0, "wifi.controller.rx"

    #@20
    invoke-virtual {p1, v0}, Lcom/android/internal/os/PowerProfile;->getAveragePower(Ljava/lang/String;)D

    #@23
    move-result-wide v0

    #@24
    iput-wide v0, p0, Lcom/android/internal/os/WifiPowerCalculator;->mRxCurrentMa:D

    #@26
    .line 34
    return-void
.end method


# virtual methods
.method public calculateApp(Lcom/android/internal/os/BatterySipper;Landroid/os/BatteryStats$Uid;JJI)V
    .locals 16
    .param p1, "app"    # Lcom/android/internal/os/BatterySipper;
    .param p2, "u"    # Landroid/os/BatteryStats$Uid;
    .param p3, "rawRealtimeUs"    # J
    .param p5, "rawUptimeUs"    # J
    .param p7, "statsType"    # I

    #@0
    .prologue
    .line 43
    invoke-virtual/range {p2 .. p2}, Landroid/os/BatteryStats$Uid;->getWifiControllerActivity()Landroid/os/BatteryStats$ControllerActivityCounter;

    #@3
    move-result-object v2

    #@4
    .line 44
    .local v2, "counter":Landroid/os/BatteryStats$ControllerActivityCounter;
    if-nez v2, :cond_0

    #@6
    .line 45
    return-void

    #@7
    .line 48
    :cond_0
    invoke-virtual {v2}, Landroid/os/BatteryStats$ControllerActivityCounter;->getIdleTimeCounter()Landroid/os/BatteryStats$LongCounter;

    #@a
    move-result-object v3

    #@b
    move/from16 v0, p7

    #@d
    invoke-virtual {v3, v0}, Landroid/os/BatteryStats$LongCounter;->getCountLocked(I)J

    #@10
    move-result-wide v4

    #@11
    .line 49
    .local v4, "idleTime":J
    invoke-virtual {v2}, Landroid/os/BatteryStats$ControllerActivityCounter;->getTxTimeCounters()[Landroid/os/BatteryStats$LongCounter;

    #@14
    move-result-object v3

    #@15
    const/4 v10, 0x0

    #@16
    aget-object v3, v3, v10

    #@18
    move/from16 v0, p7

    #@1a
    invoke-virtual {v3, v0}, Landroid/os/BatteryStats$LongCounter;->getCountLocked(I)J

    #@1d
    move-result-wide v8

    #@1e
    .line 50
    .local v8, "txTime":J
    invoke-virtual {v2}, Landroid/os/BatteryStats$ControllerActivityCounter;->getRxTimeCounter()Landroid/os/BatteryStats$LongCounter;

    #@21
    move-result-object v3

    #@22
    move/from16 v0, p7

    #@24
    invoke-virtual {v3, v0}, Landroid/os/BatteryStats$LongCounter;->getCountLocked(I)J

    #@27
    move-result-wide v6

    #@28
    .line 51
    .local v6, "rxTime":J
    add-long v10, v4, v6

    #@2a
    add-long/2addr v10, v8

    #@2b
    move-object/from16 v0, p1

    #@2d
    iput-wide v10, v0, Lcom/android/internal/os/BatterySipper;->wifiRunningTimeMs:J

    #@2f
    .line 52
    move-object/from16 v0, p0

    #@31
    iget-wide v10, v0, Lcom/android/internal/os/WifiPowerCalculator;->mTotalAppRunningTime:J

    #@33
    move-object/from16 v0, p1

    #@35
    iget-wide v12, v0, Lcom/android/internal/os/BatterySipper;->wifiRunningTimeMs:J

    #@37
    add-long/2addr v10, v12

    #@38
    move-object/from16 v0, p0

    #@3a
    iput-wide v10, v0, Lcom/android/internal/os/WifiPowerCalculator;->mTotalAppRunningTime:J

    #@3c
    .line 55
    long-to-double v10, v4

    #@3d
    move-object/from16 v0, p0

    #@3f
    iget-wide v12, v0, Lcom/android/internal/os/WifiPowerCalculator;->mIdleCurrentMa:D

    #@41
    mul-double/2addr v10, v12

    #@42
    long-to-double v12, v8

    #@43
    move-object/from16 v0, p0

    #@45
    iget-wide v14, v0, Lcom/android/internal/os/WifiPowerCalculator;->mTxCurrentMa:D

    #@47
    mul-double/2addr v12, v14

    #@48
    add-double/2addr v10, v12

    #@49
    long-to-double v12, v6

    #@4a
    move-object/from16 v0, p0

    #@4c
    iget-wide v14, v0, Lcom/android/internal/os/WifiPowerCalculator;->mRxCurrentMa:D

    #@4e
    mul-double/2addr v12, v14

    #@4f
    add-double/2addr v10, v12

    #@50
    .line 56
    const-wide v12, 0x414b774000000000L    # 3600000.0

    #@55
    .line 55
    div-double/2addr v10, v12

    #@56
    .line 54
    move-object/from16 v0, p1

    #@58
    iput-wide v10, v0, Lcom/android/internal/os/BatterySipper;->wifiPowerMah:D

    #@5a
    .line 57
    move-object/from16 v0, p0

    #@5c
    iget-wide v10, v0, Lcom/android/internal/os/WifiPowerCalculator;->mTotalAppPowerDrain:D

    #@5e
    move-object/from16 v0, p1

    #@60
    iget-wide v12, v0, Lcom/android/internal/os/BatterySipper;->wifiPowerMah:D

    #@62
    add-double/2addr v10, v12

    #@63
    move-object/from16 v0, p0

    #@65
    iput-wide v10, v0, Lcom/android/internal/os/WifiPowerCalculator;->mTotalAppPowerDrain:D

    #@67
    .line 59
    const/4 v3, 0x2

    #@68
    move-object/from16 v0, p2

    #@6a
    move/from16 v1, p7

    #@6c
    invoke-virtual {v0, v3, v1}, Landroid/os/BatteryStats$Uid;->getNetworkActivityPackets(II)J

    #@6f
    move-result-wide v10

    #@70
    move-object/from16 v0, p1

    #@72
    iput-wide v10, v0, Lcom/android/internal/os/BatterySipper;->wifiRxPackets:J

    #@74
    .line 61
    const/4 v3, 0x3

    #@75
    move-object/from16 v0, p2

    #@77
    move/from16 v1, p7

    #@79
    invoke-virtual {v0, v3, v1}, Landroid/os/BatteryStats$Uid;->getNetworkActivityPackets(II)J

    #@7c
    move-result-wide v10

    #@7d
    move-object/from16 v0, p1

    #@7f
    iput-wide v10, v0, Lcom/android/internal/os/BatterySipper;->wifiTxPackets:J

    #@81
    .line 63
    const/4 v3, 0x2

    #@82
    move-object/from16 v0, p2

    #@84
    move/from16 v1, p7

    #@86
    invoke-virtual {v0, v3, v1}, Landroid/os/BatteryStats$Uid;->getNetworkActivityBytes(II)J

    #@89
    move-result-wide v10

    #@8a
    move-object/from16 v0, p1

    #@8c
    iput-wide v10, v0, Lcom/android/internal/os/BatterySipper;->wifiRxBytes:J

    #@8e
    .line 65
    const/4 v3, 0x3

    #@8f
    move-object/from16 v0, p2

    #@91
    move/from16 v1, p7

    #@93
    invoke-virtual {v0, v3, v1}, Landroid/os/BatteryStats$Uid;->getNetworkActivityBytes(II)J

    #@96
    move-result-wide v10

    #@97
    move-object/from16 v0, p1

    #@99
    iput-wide v10, v0, Lcom/android/internal/os/BatterySipper;->wifiTxBytes:J

    #@9b
    .line 42
    return-void
.end method

.method public calculateRemaining(Lcom/android/internal/os/BatterySipper;Landroid/os/BatteryStats;JJI)V
    .locals 18
    .param p1, "app"    # Lcom/android/internal/os/BatterySipper;
    .param p2, "stats"    # Landroid/os/BatteryStats;
    .param p3, "rawRealtimeUs"    # J
    .param p5, "rawUptimeUs"    # J
    .param p7, "statsType"    # I

    #@0
    .prologue
    .line 77
    invoke-virtual/range {p2 .. p2}, Landroid/os/BatteryStats;->getWifiControllerActivity()Landroid/os/BatteryStats$ControllerActivityCounter;

    #@3
    move-result-object v2

    #@4
    .line 79
    .local v2, "counter":Landroid/os/BatteryStats$ControllerActivityCounter;
    invoke-virtual {v2}, Landroid/os/BatteryStats$ControllerActivityCounter;->getIdleTimeCounter()Landroid/os/BatteryStats$LongCounter;

    #@7
    move-result-object v3

    #@8
    move/from16 v0, p7

    #@a
    invoke-virtual {v3, v0}, Landroid/os/BatteryStats$LongCounter;->getCountLocked(I)J

    #@d
    move-result-wide v4

    #@e
    .line 80
    .local v4, "idleTimeMs":J
    invoke-virtual {v2}, Landroid/os/BatteryStats$ControllerActivityCounter;->getTxTimeCounters()[Landroid/os/BatteryStats$LongCounter;

    #@11
    move-result-object v3

    #@12
    const/4 v12, 0x0

    #@13
    aget-object v3, v3, v12

    #@15
    move/from16 v0, p7

    #@17
    invoke-virtual {v3, v0}, Landroid/os/BatteryStats$LongCounter;->getCountLocked(I)J

    #@1a
    move-result-wide v10

    #@1b
    .line 81
    .local v10, "txTimeMs":J
    invoke-virtual {v2}, Landroid/os/BatteryStats$ControllerActivityCounter;->getRxTimeCounter()Landroid/os/BatteryStats$LongCounter;

    #@1e
    move-result-object v3

    #@1f
    move/from16 v0, p7

    #@21
    invoke-virtual {v3, v0}, Landroid/os/BatteryStats$LongCounter;->getCountLocked(I)J

    #@24
    move-result-wide v8

    #@25
    .line 83
    .local v8, "rxTimeMs":J
    const-wide/16 v12, 0x0

    #@27
    .line 84
    add-long v14, v4, v8

    #@29
    add-long/2addr v14, v10

    #@2a
    move-object/from16 v0, p0

    #@2c
    iget-wide v0, v0, Lcom/android/internal/os/WifiPowerCalculator;->mTotalAppRunningTime:J

    #@2e
    move-wide/from16 v16, v0

    #@30
    sub-long v14, v14, v16

    #@32
    .line 83
    invoke-static {v12, v13, v14, v15}, Ljava/lang/Math;->max(JJ)J

    #@35
    move-result-wide v12

    #@36
    move-object/from16 v0, p1

    #@38
    iput-wide v12, v0, Lcom/android/internal/os/BatterySipper;->wifiRunningTimeMs:J

    #@3a
    .line 86
    invoke-virtual {v2}, Landroid/os/BatteryStats$ControllerActivityCounter;->getPowerCounter()Landroid/os/BatteryStats$LongCounter;

    #@3d
    move-result-object v3

    #@3e
    move/from16 v0, p7

    #@40
    invoke-virtual {v3, v0}, Landroid/os/BatteryStats$LongCounter;->getCountLocked(I)J

    #@43
    move-result-wide v12

    #@44
    long-to-double v12, v12

    #@45
    .line 87
    const-wide v14, 0x414b774000000000L    # 3600000.0

    #@4a
    .line 86
    div-double v6, v12, v14

    #@4c
    .line 88
    .local v6, "powerDrainMah":D
    const-wide/16 v12, 0x0

    #@4e
    cmpl-double v3, v6, v12

    #@50
    if-nez v3, :cond_0

    #@52
    .line 90
    long-to-double v12, v4

    #@53
    move-object/from16 v0, p0

    #@55
    iget-wide v14, v0, Lcom/android/internal/os/WifiPowerCalculator;->mIdleCurrentMa:D

    #@57
    mul-double/2addr v12, v14

    #@58
    long-to-double v14, v10

    #@59
    move-object/from16 v0, p0

    #@5b
    iget-wide v0, v0, Lcom/android/internal/os/WifiPowerCalculator;->mTxCurrentMa:D

    #@5d
    move-wide/from16 v16, v0

    #@5f
    mul-double v14, v14, v16

    #@61
    add-double/2addr v12, v14

    #@62
    .line 91
    long-to-double v14, v8

    #@63
    move-object/from16 v0, p0

    #@65
    iget-wide v0, v0, Lcom/android/internal/os/WifiPowerCalculator;->mRxCurrentMa:D

    #@67
    move-wide/from16 v16, v0

    #@69
    mul-double v14, v14, v16

    #@6b
    .line 90
    add-double/2addr v12, v14

    #@6c
    .line 91
    const-wide v14, 0x414b774000000000L    # 3600000.0

    #@71
    .line 90
    div-double v6, v12, v14

    #@73
    .line 93
    :cond_0
    const-wide/16 v12, 0x0

    #@75
    move-object/from16 v0, p0

    #@77
    iget-wide v14, v0, Lcom/android/internal/os/WifiPowerCalculator;->mTotalAppPowerDrain:D

    #@79
    sub-double v14, v6, v14

    #@7b
    invoke-static {v12, v13, v14, v15}, Ljava/lang/Math;->max(DD)D

    #@7e
    move-result-wide v12

    #@7f
    move-object/from16 v0, p1

    #@81
    iput-wide v12, v0, Lcom/android/internal/os/BatterySipper;->wifiPowerMah:D

    #@83
    .line 76
    return-void
.end method

.method public reset()V
    .locals 2

    #@0
    .prologue
    .line 102
    const-wide/16 v0, 0x0

    #@2
    iput-wide v0, p0, Lcom/android/internal/os/WifiPowerCalculator;->mTotalAppPowerDrain:D

    #@4
    .line 103
    const-wide/16 v0, 0x0

    #@6
    iput-wide v0, p0, Lcom/android/internal/os/WifiPowerCalculator;->mTotalAppRunningTime:J

    #@8
    .line 101
    return-void
.end method
