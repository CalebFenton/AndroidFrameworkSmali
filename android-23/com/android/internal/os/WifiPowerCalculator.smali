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

.field private final mTxCurrentMa:D


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
    iput-wide v0, p0, Lcom/android/internal/os/WifiPowerCalculator;->mTotalAppPowerDrain:D

    #@7
    .line 34
    const-string/jumbo v0, "wifi.controller.idle"

    #@a
    invoke-virtual {p1, v0}, Lcom/android/internal/os/PowerProfile;->getAveragePower(Ljava/lang/String;)D

    #@d
    move-result-wide v0

    #@e
    iput-wide v0, p0, Lcom/android/internal/os/WifiPowerCalculator;->mIdleCurrentMa:D

    #@10
    .line 35
    const-string/jumbo v0, "wifi.controller.tx"

    #@13
    invoke-virtual {p1, v0}, Lcom/android/internal/os/PowerProfile;->getAveragePower(Ljava/lang/String;)D

    #@16
    move-result-wide v0

    #@17
    iput-wide v0, p0, Lcom/android/internal/os/WifiPowerCalculator;->mTxCurrentMa:D

    #@19
    .line 36
    const-string/jumbo v0, "wifi.controller.rx"

    #@1c
    invoke-virtual {p1, v0}, Lcom/android/internal/os/PowerProfile;->getAveragePower(Ljava/lang/String;)D

    #@1f
    move-result-wide v0

    #@20
    iput-wide v0, p0, Lcom/android/internal/os/WifiPowerCalculator;->mRxCurrentMa:D

    #@22
    .line 33
    return-void
.end method


# virtual methods
.method public calculateApp(Lcom/android/internal/os/BatterySipper;Landroid/os/BatteryStats$Uid;JJI)V
    .locals 14
    .param p1, "app"    # Lcom/android/internal/os/BatterySipper;
    .param p2, "u"    # Landroid/os/BatteryStats$Uid;
    .param p3, "rawRealtimeUs"    # J
    .param p5, "rawUptimeUs"    # J
    .param p7, "statsType"    # I

    #@0
    .prologue
    .line 42
    const/4 v8, 0x0

    #@1
    move-object/from16 v0, p2

    #@3
    move/from16 v1, p7

    #@5
    invoke-virtual {v0, v8, v1}, Landroid/os/BatteryStats$Uid;->getWifiControllerActivity(II)J

    #@8
    move-result-wide v2

    #@9
    .line 44
    .local v2, "idleTime":J
    const/4 v8, 0x2

    #@a
    move-object/from16 v0, p2

    #@c
    move/from16 v1, p7

    #@e
    invoke-virtual {v0, v8, v1}, Landroid/os/BatteryStats$Uid;->getWifiControllerActivity(II)J

    #@11
    move-result-wide v6

    #@12
    .line 45
    .local v6, "txTime":J
    const/4 v8, 0x1

    #@13
    move-object/from16 v0, p2

    #@15
    move/from16 v1, p7

    #@17
    invoke-virtual {v0, v8, v1}, Landroid/os/BatteryStats$Uid;->getWifiControllerActivity(II)J

    #@1a
    move-result-wide v4

    #@1b
    .line 46
    .local v4, "rxTime":J
    add-long v8, v2, v4

    #@1d
    add-long/2addr v8, v6

    #@1e
    iput-wide v8, p1, Lcom/android/internal/os/BatterySipper;->wifiRunningTimeMs:J

    #@20
    .line 48
    long-to-double v8, v2

    #@21
    iget-wide v10, p0, Lcom/android/internal/os/WifiPowerCalculator;->mIdleCurrentMa:D

    #@23
    mul-double/2addr v8, v10

    #@24
    long-to-double v10, v6

    #@25
    iget-wide v12, p0, Lcom/android/internal/os/WifiPowerCalculator;->mTxCurrentMa:D

    #@27
    mul-double/2addr v10, v12

    #@28
    add-double/2addr v8, v10

    #@29
    long-to-double v10, v4

    #@2a
    iget-wide v12, p0, Lcom/android/internal/os/WifiPowerCalculator;->mRxCurrentMa:D

    #@2c
    mul-double/2addr v10, v12

    #@2d
    add-double/2addr v8, v10

    #@2e
    .line 49
    const-wide v10, 0x414b774000000000L    # 3600000.0

    #@33
    .line 48
    div-double/2addr v8, v10

    #@34
    .line 47
    iput-wide v8, p1, Lcom/android/internal/os/BatterySipper;->wifiPowerMah:D

    #@36
    .line 50
    iget-wide v8, p0, Lcom/android/internal/os/WifiPowerCalculator;->mTotalAppPowerDrain:D

    #@38
    iget-wide v10, p1, Lcom/android/internal/os/BatterySipper;->wifiPowerMah:D

    #@3a
    add-double/2addr v8, v10

    #@3b
    iput-wide v8, p0, Lcom/android/internal/os/WifiPowerCalculator;->mTotalAppPowerDrain:D

    #@3d
    .line 52
    const/4 v8, 0x2

    #@3e
    move-object/from16 v0, p2

    #@40
    move/from16 v1, p7

    #@42
    invoke-virtual {v0, v8, v1}, Landroid/os/BatteryStats$Uid;->getNetworkActivityPackets(II)J

    #@45
    move-result-wide v8

    #@46
    iput-wide v8, p1, Lcom/android/internal/os/BatterySipper;->wifiRxPackets:J

    #@48
    .line 54
    const/4 v8, 0x3

    #@49
    move-object/from16 v0, p2

    #@4b
    move/from16 v1, p7

    #@4d
    invoke-virtual {v0, v8, v1}, Landroid/os/BatteryStats$Uid;->getNetworkActivityPackets(II)J

    #@50
    move-result-wide v8

    #@51
    iput-wide v8, p1, Lcom/android/internal/os/BatterySipper;->wifiTxPackets:J

    #@53
    .line 56
    const/4 v8, 0x2

    #@54
    move-object/from16 v0, p2

    #@56
    move/from16 v1, p7

    #@58
    invoke-virtual {v0, v8, v1}, Landroid/os/BatteryStats$Uid;->getNetworkActivityBytes(II)J

    #@5b
    move-result-wide v8

    #@5c
    iput-wide v8, p1, Lcom/android/internal/os/BatterySipper;->wifiRxBytes:J

    #@5e
    .line 58
    const/4 v8, 0x3

    #@5f
    move-object/from16 v0, p2

    #@61
    move/from16 v1, p7

    #@63
    invoke-virtual {v0, v8, v1}, Landroid/os/BatteryStats$Uid;->getNetworkActivityBytes(II)J

    #@66
    move-result-wide v8

    #@67
    iput-wide v8, p1, Lcom/android/internal/os/BatterySipper;->wifiTxBytes:J

    #@69
    .line 41
    return-void
.end method

.method public calculateRemaining(Lcom/android/internal/os/BatterySipper;Landroid/os/BatteryStats;JJI)V
    .locals 16
    .param p1, "app"    # Lcom/android/internal/os/BatterySipper;
    .param p2, "stats"    # Landroid/os/BatteryStats;
    .param p3, "rawRealtimeUs"    # J
    .param p5, "rawUptimeUs"    # J
    .param p7, "statsType"    # I

    #@0
    .prologue
    .line 70
    const/4 v10, 0x0

    #@1
    move-object/from16 v0, p2

    #@3
    move/from16 v1, p7

    #@5
    invoke-virtual {v0, v10, v1}, Landroid/os/BatteryStats;->getWifiControllerActivity(II)J

    #@8
    move-result-wide v2

    #@9
    .line 72
    .local v2, "idleTimeMs":J
    const/4 v10, 0x1

    #@a
    move-object/from16 v0, p2

    #@c
    move/from16 v1, p7

    #@e
    invoke-virtual {v0, v10, v1}, Landroid/os/BatteryStats;->getWifiControllerActivity(II)J

    #@11
    move-result-wide v6

    #@12
    .line 74
    .local v6, "rxTimeMs":J
    const/4 v10, 0x2

    #@13
    move-object/from16 v0, p2

    #@15
    move/from16 v1, p7

    #@17
    invoke-virtual {v0, v10, v1}, Landroid/os/BatteryStats;->getWifiControllerActivity(II)J

    #@1a
    move-result-wide v8

    #@1b
    .line 76
    .local v8, "txTimeMs":J
    add-long v10, v2, v6

    #@1d
    add-long/2addr v10, v8

    #@1e
    move-object/from16 v0, p1

    #@20
    iput-wide v10, v0, Lcom/android/internal/os/BatterySipper;->wifiRunningTimeMs:J

    #@22
    .line 78
    const/4 v10, 0x3

    #@23
    move-object/from16 v0, p2

    #@25
    move/from16 v1, p7

    #@27
    invoke-virtual {v0, v10, v1}, Landroid/os/BatteryStats;->getWifiControllerActivity(II)J

    #@2a
    move-result-wide v10

    #@2b
    long-to-double v10, v10

    #@2c
    .line 79
    const-wide v12, 0x414b774000000000L    # 3600000.0

    #@31
    .line 78
    div-double v4, v10, v12

    #@33
    .line 80
    .local v4, "powerDrainMah":D
    const-wide/16 v10, 0x0

    #@35
    cmpl-double v10, v4, v10

    #@37
    if-nez v10, :cond_0

    #@39
    .line 82
    long-to-double v10, v2

    #@3a
    move-object/from16 v0, p0

    #@3c
    iget-wide v12, v0, Lcom/android/internal/os/WifiPowerCalculator;->mIdleCurrentMa:D

    #@3e
    mul-double/2addr v10, v12

    #@3f
    long-to-double v12, v8

    #@40
    move-object/from16 v0, p0

    #@42
    iget-wide v14, v0, Lcom/android/internal/os/WifiPowerCalculator;->mTxCurrentMa:D

    #@44
    mul-double/2addr v12, v14

    #@45
    add-double/2addr v10, v12

    #@46
    .line 83
    long-to-double v12, v6

    #@47
    move-object/from16 v0, p0

    #@49
    iget-wide v14, v0, Lcom/android/internal/os/WifiPowerCalculator;->mRxCurrentMa:D

    #@4b
    mul-double/2addr v12, v14

    #@4c
    .line 82
    add-double/2addr v10, v12

    #@4d
    .line 83
    const-wide v12, 0x414b774000000000L    # 3600000.0

    #@52
    .line 82
    div-double v4, v10, v12

    #@54
    .line 85
    :cond_0
    const-wide/16 v10, 0x0

    #@56
    move-object/from16 v0, p0

    #@58
    iget-wide v12, v0, Lcom/android/internal/os/WifiPowerCalculator;->mTotalAppPowerDrain:D

    #@5a
    sub-double v12, v4, v12

    #@5c
    invoke-static {v10, v11, v12, v13}, Ljava/lang/Math;->max(DD)D

    #@5f
    move-result-wide v10

    #@60
    move-object/from16 v0, p1

    #@62
    iput-wide v10, v0, Lcom/android/internal/os/BatterySipper;->wifiPowerMah:D

    #@64
    .line 69
    return-void
.end method

.method public reset()V
    .locals 2

    #@0
    .prologue
    .line 94
    const-wide/16 v0, 0x0

    #@2
    iput-wide v0, p0, Lcom/android/internal/os/WifiPowerCalculator;->mTotalAppPowerDrain:D

    #@4
    .line 93
    return-void
.end method
