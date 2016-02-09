.class public Lcom/android/internal/os/BluetoothPowerCalculator;
.super Lcom/android/internal/os/PowerCalculator;
.source "BluetoothPowerCalculator.java"


# static fields
.field private static final DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "BluetoothPowerCalculator"


# instance fields
.field private final mIdleMa:D

.field private final mRxMa:D

.field private final mTxMa:D


# direct methods
.method public constructor <init>(Lcom/android/internal/os/PowerProfile;)V
    .locals 2
    .param p1, "profile"    # Lcom/android/internal/os/PowerProfile;

    #@0
    .prologue
    .line 28
    invoke-direct {p0}, Lcom/android/internal/os/PowerCalculator;-><init>()V

    #@3
    .line 29
    const-string/jumbo v0, "bluetooth.controller.idle"

    #@6
    invoke-virtual {p1, v0}, Lcom/android/internal/os/PowerProfile;->getAveragePower(Ljava/lang/String;)D

    #@9
    move-result-wide v0

    #@a
    iput-wide v0, p0, Lcom/android/internal/os/BluetoothPowerCalculator;->mIdleMa:D

    #@c
    .line 30
    const-string/jumbo v0, "bluetooth.controller.rx"

    #@f
    invoke-virtual {p1, v0}, Lcom/android/internal/os/PowerProfile;->getAveragePower(Ljava/lang/String;)D

    #@12
    move-result-wide v0

    #@13
    iput-wide v0, p0, Lcom/android/internal/os/BluetoothPowerCalculator;->mRxMa:D

    #@15
    .line 31
    const-string/jumbo v0, "bluetooth.controller.tx"

    #@18
    invoke-virtual {p1, v0}, Lcom/android/internal/os/PowerProfile;->getAveragePower(Ljava/lang/String;)D

    #@1b
    move-result-wide v0

    #@1c
    iput-wide v0, p0, Lcom/android/internal/os/BluetoothPowerCalculator;->mTxMa:D

    #@1e
    .line 28
    return-void
.end method


# virtual methods
.method public calculateApp(Lcom/android/internal/os/BatterySipper;Landroid/os/BatteryStats$Uid;JJI)V
    .locals 0
    .param p1, "app"    # Lcom/android/internal/os/BatterySipper;
    .param p2, "u"    # Landroid/os/BatteryStats$Uid;
    .param p3, "rawRealtimeUs"    # J
    .param p5, "rawUptimeUs"    # J
    .param p7, "statsType"    # I

    #@0
    .prologue
    .line 36
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
    .line 44
    const/4 v12, 0x0

    #@1
    .line 43
    move-object/from16 v0, p2

    #@3
    move/from16 v1, p7

    #@5
    invoke-virtual {v0, v12, v1}, Landroid/os/BatteryStats;->getBluetoothControllerActivity(II)J

    #@8
    move-result-wide v2

    #@9
    .line 46
    .local v2, "idleTimeMs":J
    const/4 v12, 0x2

    #@a
    .line 45
    move-object/from16 v0, p2

    #@c
    move/from16 v1, p7

    #@e
    invoke-virtual {v0, v12, v1}, Landroid/os/BatteryStats;->getBluetoothControllerActivity(II)J

    #@11
    move-result-wide v10

    #@12
    .line 48
    .local v10, "txTimeMs":J
    const/4 v12, 0x1

    #@13
    .line 47
    move-object/from16 v0, p2

    #@15
    move/from16 v1, p7

    #@17
    invoke-virtual {v0, v12, v1}, Landroid/os/BatteryStats;->getBluetoothControllerActivity(II)J

    #@1a
    move-result-wide v6

    #@1b
    .line 49
    .local v6, "rxTimeMs":J
    add-long v12, v2, v10

    #@1d
    add-long v8, v12, v6

    #@1f
    .line 51
    .local v8, "totalTimeMs":J
    const/4 v12, 0x3

    #@20
    .line 50
    move-object/from16 v0, p2

    #@22
    move/from16 v1, p7

    #@24
    invoke-virtual {v0, v12, v1}, Landroid/os/BatteryStats;->getBluetoothControllerActivity(II)J

    #@27
    move-result-wide v12

    #@28
    long-to-double v12, v12

    #@29
    .line 51
    const-wide v14, 0x414b774000000000L    # 3600000.0

    #@2e
    .line 50
    div-double v4, v12, v14

    #@30
    .line 53
    .local v4, "powerMah":D
    const-wide/16 v12, 0x0

    #@32
    cmpl-double v12, v4, v12

    #@34
    if-nez v12, :cond_0

    #@36
    .line 55
    long-to-double v12, v2

    #@37
    move-object/from16 v0, p0

    #@39
    iget-wide v14, v0, Lcom/android/internal/os/BluetoothPowerCalculator;->mIdleMa:D

    #@3b
    mul-double/2addr v12, v14

    #@3c
    long-to-double v14, v6

    #@3d
    move-object/from16 v0, p0

    #@3f
    iget-wide v0, v0, Lcom/android/internal/os/BluetoothPowerCalculator;->mRxMa:D

    #@41
    move-wide/from16 v16, v0

    #@43
    mul-double v14, v14, v16

    #@45
    add-double/2addr v12, v14

    #@46
    long-to-double v14, v10

    #@47
    move-object/from16 v0, p0

    #@49
    iget-wide v0, v0, Lcom/android/internal/os/BluetoothPowerCalculator;->mTxMa:D

    #@4b
    move-wide/from16 v16, v0

    #@4d
    mul-double v14, v14, v16

    #@4f
    add-double/2addr v12, v14

    #@50
    .line 56
    const-wide v14, 0x414b774000000000L    # 3600000.0

    #@55
    .line 55
    div-double v4, v12, v14

    #@57
    .line 64
    :cond_0
    move-object/from16 v0, p1

    #@59
    iput-wide v4, v0, Lcom/android/internal/os/BatterySipper;->usagePowerMah:D

    #@5b
    .line 65
    move-object/from16 v0, p1

    #@5d
    iput-wide v8, v0, Lcom/android/internal/os/BatterySipper;->usageTimeMs:J

    #@5f
    .line 42
    return-void
.end method
