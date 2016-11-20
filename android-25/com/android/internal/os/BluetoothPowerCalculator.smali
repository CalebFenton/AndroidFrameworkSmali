.class public Lcom/android/internal/os/BluetoothPowerCalculator;
.super Lcom/android/internal/os/PowerCalculator;
.source "BluetoothPowerCalculator.java"


# static fields
.field private static final DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "BluetoothPowerCalculator"


# instance fields
.field private mAppTotalPowerMah:D

.field private mAppTotalTimeMs:J

.field private final mIdleMa:D

.field private final mRxMa:D

.field private final mTxMa:D


# direct methods
.method public constructor <init>(Lcom/android/internal/os/PowerProfile;)V
    .locals 2
    .param p1, "profile"    # Lcom/android/internal/os/PowerProfile;

    #@0
    .prologue
    .line 30
    invoke-direct {p0}, Lcom/android/internal/os/PowerCalculator;-><init>()V

    #@3
    .line 27
    const-wide/16 v0, 0x0

    #@5
    iput-wide v0, p0, Lcom/android/internal/os/BluetoothPowerCalculator;->mAppTotalPowerMah:D

    #@7
    .line 28
    const-wide/16 v0, 0x0

    #@9
    iput-wide v0, p0, Lcom/android/internal/os/BluetoothPowerCalculator;->mAppTotalTimeMs:J

    #@b
    .line 31
    const-string/jumbo v0, "bluetooth.controller.idle"

    #@e
    invoke-virtual {p1, v0}, Lcom/android/internal/os/PowerProfile;->getAveragePower(Ljava/lang/String;)D

    #@11
    move-result-wide v0

    #@12
    iput-wide v0, p0, Lcom/android/internal/os/BluetoothPowerCalculator;->mIdleMa:D

    #@14
    .line 32
    const-string/jumbo v0, "bluetooth.controller.rx"

    #@17
    invoke-virtual {p1, v0}, Lcom/android/internal/os/PowerProfile;->getAveragePower(Ljava/lang/String;)D

    #@1a
    move-result-wide v0

    #@1b
    iput-wide v0, p0, Lcom/android/internal/os/BluetoothPowerCalculator;->mRxMa:D

    #@1d
    .line 33
    const-string/jumbo v0, "bluetooth.controller.tx"

    #@20
    invoke-virtual {p1, v0}, Lcom/android/internal/os/PowerProfile;->getAveragePower(Ljava/lang/String;)D

    #@23
    move-result-wide v0

    #@24
    iput-wide v0, p0, Lcom/android/internal/os/BluetoothPowerCalculator;->mTxMa:D

    #@26
    .line 30
    return-void
.end method


# virtual methods
.method public calculateApp(Lcom/android/internal/os/BatterySipper;Landroid/os/BatteryStats$Uid;JJI)V
    .locals 20
    .param p1, "app"    # Lcom/android/internal/os/BatterySipper;
    .param p2, "u"    # Landroid/os/BatteryStats$Uid;
    .param p3, "rawRealtimeUs"    # J
    .param p5, "rawUptimeUs"    # J
    .param p7, "statsType"    # I

    #@0
    .prologue
    .line 40
    invoke-virtual/range {p2 .. p2}, Landroid/os/BatteryStats$Uid;->getBluetoothControllerActivity()Landroid/os/BatteryStats$ControllerActivityCounter;

    #@3
    move-result-object v2

    #@4
    .line 41
    .local v2, "counter":Landroid/os/BatteryStats$ControllerActivityCounter;
    if-nez v2, :cond_0

    #@6
    .line 42
    return-void

    #@7
    .line 45
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
    .line 46
    .local v4, "idleTimeMs":J
    invoke-virtual {v2}, Landroid/os/BatteryStats$ControllerActivityCounter;->getRxTimeCounter()Landroid/os/BatteryStats$LongCounter;

    #@14
    move-result-object v3

    #@15
    move/from16 v0, p7

    #@17
    invoke-virtual {v3, v0}, Landroid/os/BatteryStats$LongCounter;->getCountLocked(I)J

    #@1a
    move-result-wide v8

    #@1b
    .line 47
    .local v8, "rxTimeMs":J
    invoke-virtual {v2}, Landroid/os/BatteryStats$ControllerActivityCounter;->getTxTimeCounters()[Landroid/os/BatteryStats$LongCounter;

    #@1e
    move-result-object v3

    #@1f
    const/4 v14, 0x0

    #@20
    aget-object v3, v3, v14

    #@22
    move/from16 v0, p7

    #@24
    invoke-virtual {v3, v0}, Landroid/os/BatteryStats$LongCounter;->getCountLocked(I)J

    #@27
    move-result-wide v12

    #@28
    .line 48
    .local v12, "txTimeMs":J
    add-long v14, v4, v12

    #@2a
    add-long v10, v14, v8

    #@2c
    .line 49
    .local v10, "totalTimeMs":J
    invoke-virtual {v2}, Landroid/os/BatteryStats$ControllerActivityCounter;->getPowerCounter()Landroid/os/BatteryStats$LongCounter;

    #@2f
    move-result-object v3

    #@30
    move/from16 v0, p7

    #@32
    invoke-virtual {v3, v0}, Landroid/os/BatteryStats$LongCounter;->getCountLocked(I)J

    #@35
    move-result-wide v14

    #@36
    long-to-double v14, v14

    #@37
    .line 50
    const-wide v16, 0x414b774000000000L    # 3600000.0

    #@3c
    .line 49
    div-double v6, v14, v16

    #@3e
    .line 52
    .local v6, "powerMah":D
    const-wide/16 v14, 0x0

    #@40
    cmpl-double v3, v6, v14

    #@42
    if-nez v3, :cond_1

    #@44
    .line 53
    long-to-double v14, v4

    #@45
    move-object/from16 v0, p0

    #@47
    iget-wide v0, v0, Lcom/android/internal/os/BluetoothPowerCalculator;->mIdleMa:D

    #@49
    move-wide/from16 v16, v0

    #@4b
    mul-double v14, v14, v16

    #@4d
    long-to-double v0, v8

    #@4e
    move-wide/from16 v16, v0

    #@50
    move-object/from16 v0, p0

    #@52
    iget-wide v0, v0, Lcom/android/internal/os/BluetoothPowerCalculator;->mRxMa:D

    #@54
    move-wide/from16 v18, v0

    #@56
    mul-double v16, v16, v18

    #@58
    add-double v14, v14, v16

    #@5a
    long-to-double v0, v12

    #@5b
    move-wide/from16 v16, v0

    #@5d
    move-object/from16 v0, p0

    #@5f
    iget-wide v0, v0, Lcom/android/internal/os/BluetoothPowerCalculator;->mTxMa:D

    #@61
    move-wide/from16 v18, v0

    #@63
    mul-double v16, v16, v18

    #@65
    add-double v14, v14, v16

    #@67
    .line 54
    const-wide v16, 0x414b774000000000L    # 3600000.0

    #@6c
    .line 53
    div-double v6, v14, v16

    #@6e
    .line 57
    :cond_1
    move-object/from16 v0, p1

    #@70
    iput-wide v6, v0, Lcom/android/internal/os/BatterySipper;->bluetoothPowerMah:D

    #@72
    .line 58
    move-object/from16 v0, p1

    #@74
    iput-wide v10, v0, Lcom/android/internal/os/BatterySipper;->bluetoothRunningTimeMs:J

    #@76
    .line 59
    const/4 v3, 0x4

    #@77
    move-object/from16 v0, p2

    #@79
    move/from16 v1, p7

    #@7b
    invoke-virtual {v0, v3, v1}, Landroid/os/BatteryStats$Uid;->getNetworkActivityBytes(II)J

    #@7e
    move-result-wide v14

    #@7f
    move-object/from16 v0, p1

    #@81
    iput-wide v14, v0, Lcom/android/internal/os/BatterySipper;->btRxBytes:J

    #@83
    .line 60
    const/4 v3, 0x5

    #@84
    move-object/from16 v0, p2

    #@86
    move/from16 v1, p7

    #@88
    invoke-virtual {v0, v3, v1}, Landroid/os/BatteryStats$Uid;->getNetworkActivityBytes(II)J

    #@8b
    move-result-wide v14

    #@8c
    move-object/from16 v0, p1

    #@8e
    iput-wide v14, v0, Lcom/android/internal/os/BatterySipper;->btTxBytes:J

    #@90
    .line 62
    move-object/from16 v0, p0

    #@92
    iget-wide v14, v0, Lcom/android/internal/os/BluetoothPowerCalculator;->mAppTotalPowerMah:D

    #@94
    add-double/2addr v14, v6

    #@95
    move-object/from16 v0, p0

    #@97
    iput-wide v14, v0, Lcom/android/internal/os/BluetoothPowerCalculator;->mAppTotalPowerMah:D

    #@99
    .line 63
    move-object/from16 v0, p0

    #@9b
    iget-wide v14, v0, Lcom/android/internal/os/BluetoothPowerCalculator;->mAppTotalTimeMs:J

    #@9d
    add-long/2addr v14, v10

    #@9e
    move-object/from16 v0, p0

    #@a0
    iput-wide v14, v0, Lcom/android/internal/os/BluetoothPowerCalculator;->mAppTotalTimeMs:J

    #@a2
    .line 38
    return-void
.end method

.method public calculateRemaining(Lcom/android/internal/os/BatterySipper;Landroid/os/BatteryStats;JJI)V
    .locals 20
    .param p1, "app"    # Lcom/android/internal/os/BatterySipper;
    .param p2, "stats"    # Landroid/os/BatteryStats;
    .param p3, "rawRealtimeUs"    # J
    .param p5, "rawUptimeUs"    # J
    .param p7, "statsType"    # I

    #@0
    .prologue
    .line 70
    invoke-virtual/range {p2 .. p2}, Landroid/os/BatteryStats;->getBluetoothControllerActivity()Landroid/os/BatteryStats$ControllerActivityCounter;

    #@3
    move-result-object v2

    #@4
    .line 72
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
    .line 73
    .local v4, "idleTimeMs":J
    invoke-virtual {v2}, Landroid/os/BatteryStats$ControllerActivityCounter;->getTxTimeCounters()[Landroid/os/BatteryStats$LongCounter;

    #@11
    move-result-object v3

    #@12
    const/4 v14, 0x0

    #@13
    aget-object v3, v3, v14

    #@15
    move/from16 v0, p7

    #@17
    invoke-virtual {v3, v0}, Landroid/os/BatteryStats$LongCounter;->getCountLocked(I)J

    #@1a
    move-result-wide v12

    #@1b
    .line 74
    .local v12, "txTimeMs":J
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
    .line 75
    .local v8, "rxTimeMs":J
    add-long v14, v4, v12

    #@27
    add-long v10, v14, v8

    #@29
    .line 76
    .local v10, "totalTimeMs":J
    invoke-virtual {v2}, Landroid/os/BatteryStats$ControllerActivityCounter;->getPowerCounter()Landroid/os/BatteryStats$LongCounter;

    #@2c
    move-result-object v3

    #@2d
    move/from16 v0, p7

    #@2f
    invoke-virtual {v3, v0}, Landroid/os/BatteryStats$LongCounter;->getCountLocked(I)J

    #@32
    move-result-wide v14

    #@33
    long-to-double v14, v14

    #@34
    .line 77
    const-wide v16, 0x414b774000000000L    # 3600000.0

    #@39
    .line 76
    div-double v6, v14, v16

    #@3b
    .line 79
    .local v6, "powerMah":D
    const-wide/16 v14, 0x0

    #@3d
    cmpl-double v3, v6, v14

    #@3f
    if-nez v3, :cond_0

    #@41
    .line 81
    long-to-double v14, v4

    #@42
    move-object/from16 v0, p0

    #@44
    iget-wide v0, v0, Lcom/android/internal/os/BluetoothPowerCalculator;->mIdleMa:D

    #@46
    move-wide/from16 v16, v0

    #@48
    mul-double v14, v14, v16

    #@4a
    long-to-double v0, v8

    #@4b
    move-wide/from16 v16, v0

    #@4d
    move-object/from16 v0, p0

    #@4f
    iget-wide v0, v0, Lcom/android/internal/os/BluetoothPowerCalculator;->mRxMa:D

    #@51
    move-wide/from16 v18, v0

    #@53
    mul-double v16, v16, v18

    #@55
    add-double v14, v14, v16

    #@57
    long-to-double v0, v12

    #@58
    move-wide/from16 v16, v0

    #@5a
    move-object/from16 v0, p0

    #@5c
    iget-wide v0, v0, Lcom/android/internal/os/BluetoothPowerCalculator;->mTxMa:D

    #@5e
    move-wide/from16 v18, v0

    #@60
    mul-double v16, v16, v18

    #@62
    add-double v14, v14, v16

    #@64
    .line 82
    const-wide v16, 0x414b774000000000L    # 3600000.0

    #@69
    .line 81
    div-double v6, v14, v16

    #@6b
    .line 86
    :cond_0
    const-wide/16 v14, 0x0

    #@6d
    move-object/from16 v0, p0

    #@6f
    iget-wide v0, v0, Lcom/android/internal/os/BluetoothPowerCalculator;->mAppTotalPowerMah:D

    #@71
    move-wide/from16 v16, v0

    #@73
    sub-double v16, v6, v16

    #@75
    invoke-static/range {v14 .. v17}, Ljava/lang/Math;->max(DD)D

    #@78
    move-result-wide v6

    #@79
    .line 93
    move-object/from16 v0, p1

    #@7b
    iput-wide v6, v0, Lcom/android/internal/os/BatterySipper;->bluetoothPowerMah:D

    #@7d
    .line 94
    const-wide/16 v14, 0x0

    #@7f
    move-object/from16 v0, p0

    #@81
    iget-wide v0, v0, Lcom/android/internal/os/BluetoothPowerCalculator;->mAppTotalTimeMs:J

    #@83
    move-wide/from16 v16, v0

    #@85
    sub-long v16, v10, v16

    #@87
    invoke-static/range {v14 .. v17}, Ljava/lang/Math;->max(JJ)J

    #@8a
    move-result-wide v14

    #@8b
    move-object/from16 v0, p1

    #@8d
    iput-wide v14, v0, Lcom/android/internal/os/BatterySipper;->bluetoothRunningTimeMs:J

    #@8f
    .line 68
    return-void
.end method

.method public reset()V
    .locals 2

    #@0
    .prologue
    .line 99
    const-wide/16 v0, 0x0

    #@2
    iput-wide v0, p0, Lcom/android/internal/os/BluetoothPowerCalculator;->mAppTotalPowerMah:D

    #@4
    .line 100
    const-wide/16 v0, 0x0

    #@6
    iput-wide v0, p0, Lcom/android/internal/os/BluetoothPowerCalculator;->mAppTotalTimeMs:J

    #@8
    .line 98
    return-void
.end method
