.class public Lcom/android/internal/os/WakelockPowerCalculator;
.super Lcom/android/internal/os/PowerCalculator;
.source "WakelockPowerCalculator.java"


# static fields
.field private static final DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "WakelockPowerCalculator"


# instance fields
.field private final mPowerWakelock:D

.field private mTotalAppWakelockTimeMs:J


# direct methods
.method public constructor <init>(Lcom/android/internal/os/PowerProfile;)V
    .locals 2
    .param p1, "profile"    # Lcom/android/internal/os/PowerProfile;

    #@0
    .prologue
    .line 28
    invoke-direct {p0}, Lcom/android/internal/os/PowerCalculator;-><init>()V

    #@3
    .line 26
    const-wide/16 v0, 0x0

    #@5
    iput-wide v0, p0, Lcom/android/internal/os/WakelockPowerCalculator;->mTotalAppWakelockTimeMs:J

    #@7
    .line 29
    const-string/jumbo v0, "cpu.awake"

    #@a
    invoke-virtual {p1, v0}, Lcom/android/internal/os/PowerProfile;->getAveragePower(Ljava/lang/String;)D

    #@d
    move-result-wide v0

    #@e
    iput-wide v0, p0, Lcom/android/internal/os/WakelockPowerCalculator;->mPowerWakelock:D

    #@10
    .line 28
    return-void
.end method


# virtual methods
.method public calculateApp(Lcom/android/internal/os/BatterySipper;Landroid/os/BatteryStats$Uid;JJI)V
    .locals 17
    .param p1, "app"    # Lcom/android/internal/os/BatterySipper;
    .param p2, "u"    # Landroid/os/BatteryStats$Uid;
    .param p3, "rawRealtimeUs"    # J
    .param p5, "rawUptimeUs"    # J
    .param p7, "statsType"    # I

    #@0
    .prologue
    .line 35
    const-wide/16 v6, 0x0

    #@2
    .line 37
    .local v6, "wakeLockTimeUs":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/BatteryStats$Uid;->getWakelockStats()Landroid/util/ArrayMap;

    #@5
    move-result-object v9

    #@6
    .line 38
    .local v9, "wakelockStats":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;+Landroid/os/BatteryStats$Uid$Wakelock;>;"
    invoke-virtual {v9}, Landroid/util/ArrayMap;->size()I

    #@9
    move-result v10

    #@a
    .line 39
    .local v10, "wakelockStatsCount":I
    const/4 v4, 0x0

    #@b
    .local v4, "i":I
    :goto_0
    if-ge v4, v10, :cond_1

    #@d
    .line 40
    invoke-virtual {v9, v4}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    #@10
    move-result-object v8

    #@11
    check-cast v8, Landroid/os/BatteryStats$Uid$Wakelock;

    #@13
    .line 44
    .local v8, "wakelock":Landroid/os/BatteryStats$Uid$Wakelock;
    const/4 v11, 0x0

    #@14
    invoke-virtual {v8, v11}, Landroid/os/BatteryStats$Uid$Wakelock;->getWakeTime(I)Landroid/os/BatteryStats$Timer;

    #@17
    move-result-object v5

    #@18
    .line 45
    .local v5, "timer":Landroid/os/BatteryStats$Timer;
    if-eqz v5, :cond_0

    #@1a
    .line 46
    move-wide/from16 v0, p3

    #@1c
    move/from16 v2, p7

    #@1e
    invoke-virtual {v5, v0, v1, v2}, Landroid/os/BatteryStats$Timer;->getTotalTimeLocked(JI)J

    #@21
    move-result-wide v12

    #@22
    add-long/2addr v6, v12

    #@23
    .line 39
    :cond_0
    add-int/lit8 v4, v4, 0x1

    #@25
    goto :goto_0

    #@26
    .line 49
    .end local v5    # "timer":Landroid/os/BatteryStats$Timer;
    .end local v8    # "wakelock":Landroid/os/BatteryStats$Uid$Wakelock;
    :cond_1
    const-wide/16 v12, 0x3e8

    #@28
    div-long v12, v6, v12

    #@2a
    move-object/from16 v0, p1

    #@2c
    iput-wide v12, v0, Lcom/android/internal/os/BatterySipper;->wakeLockTimeMs:J

    #@2e
    .line 50
    move-object/from16 v0, p0

    #@30
    iget-wide v12, v0, Lcom/android/internal/os/WakelockPowerCalculator;->mTotalAppWakelockTimeMs:J

    #@32
    move-object/from16 v0, p1

    #@34
    iget-wide v14, v0, Lcom/android/internal/os/BatterySipper;->wakeLockTimeMs:J

    #@36
    add-long/2addr v12, v14

    #@37
    move-object/from16 v0, p0

    #@39
    iput-wide v12, v0, Lcom/android/internal/os/WakelockPowerCalculator;->mTotalAppWakelockTimeMs:J

    #@3b
    .line 53
    move-object/from16 v0, p1

    #@3d
    iget-wide v12, v0, Lcom/android/internal/os/BatterySipper;->wakeLockTimeMs:J

    #@3f
    long-to-double v12, v12

    #@40
    move-object/from16 v0, p0

    #@42
    iget-wide v14, v0, Lcom/android/internal/os/WakelockPowerCalculator;->mPowerWakelock:D

    #@44
    mul-double/2addr v12, v14

    #@45
    const-wide v14, 0x414b774000000000L    # 3600000.0

    #@4a
    div-double/2addr v12, v14

    #@4b
    move-object/from16 v0, p1

    #@4d
    iput-wide v12, v0, Lcom/android/internal/os/BatterySipper;->wakeLockPowerMah:D

    #@4f
    .line 34
    return-void
.end method

.method public calculateRemaining(Lcom/android/internal/os/BatterySipper;Landroid/os/BatteryStats;JJI)V
    .locals 15
    .param p1, "app"    # Lcom/android/internal/os/BatterySipper;
    .param p2, "stats"    # Landroid/os/BatteryStats;
    .param p3, "rawRealtimeUs"    # J
    .param p5, "rawUptimeUs"    # J
    .param p7, "statsType"    # I

    #@0
    .prologue
    .line 63
    move-object/from16 v0, p2

    #@2
    move-wide/from16 v1, p5

    #@4
    invoke-virtual {v0, v1, v2}, Landroid/os/BatteryStats;->getBatteryUptime(J)J

    #@7
    move-result-wide v8

    #@8
    const-wide/16 v10, 0x3e8

    #@a
    div-long v6, v8, v10

    #@c
    .line 64
    .local v6, "wakeTimeMillis":J
    iget-wide v8, p0, Lcom/android/internal/os/WakelockPowerCalculator;->mTotalAppWakelockTimeMs:J

    #@e
    .line 65
    move-object/from16 v0, p2

    #@10
    move-wide/from16 v1, p3

    #@12
    move/from16 v3, p7

    #@14
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/BatteryStats;->getScreenOnTime(JI)J

    #@17
    move-result-wide v10

    #@18
    const-wide/16 v12, 0x3e8

    #@1a
    div-long/2addr v10, v12

    #@1b
    .line 64
    add-long/2addr v8, v10

    #@1c
    sub-long/2addr v6, v8

    #@1d
    .line 66
    const-wide/16 v8, 0x0

    #@1f
    cmp-long v8, v6, v8

    #@21
    if-lez v8, :cond_0

    #@23
    .line 67
    long-to-double v8, v6

    #@24
    iget-wide v10, p0, Lcom/android/internal/os/WakelockPowerCalculator;->mPowerWakelock:D

    #@26
    mul-double/2addr v8, v10

    #@27
    const-wide v10, 0x414b774000000000L    # 3600000.0

    #@2c
    div-double v4, v8, v10

    #@2e
    .line 72
    .local v4, "power":D
    move-object/from16 v0, p1

    #@30
    iget-wide v8, v0, Lcom/android/internal/os/BatterySipper;->wakeLockTimeMs:J

    #@32
    add-long/2addr v8, v6

    #@33
    move-object/from16 v0, p1

    #@35
    iput-wide v8, v0, Lcom/android/internal/os/BatterySipper;->wakeLockTimeMs:J

    #@37
    .line 73
    move-object/from16 v0, p1

    #@39
    iget-wide v8, v0, Lcom/android/internal/os/BatterySipper;->wakeLockPowerMah:D

    #@3b
    add-double/2addr v8, v4

    #@3c
    move-object/from16 v0, p1

    #@3e
    iput-wide v8, v0, Lcom/android/internal/os/BatterySipper;->wakeLockPowerMah:D

    #@40
    .line 62
    .end local v4    # "power":D
    :cond_0
    return-void
.end method

.method public reset()V
    .locals 2

    #@0
    .prologue
    .line 79
    const-wide/16 v0, 0x0

    #@2
    iput-wide v0, p0, Lcom/android/internal/os/WakelockPowerCalculator;->mTotalAppWakelockTimeMs:J

    #@4
    .line 78
    return-void
.end method
