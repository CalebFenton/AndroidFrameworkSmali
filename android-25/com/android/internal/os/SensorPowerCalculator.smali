.class public Lcom/android/internal/os/SensorPowerCalculator;
.super Lcom/android/internal/os/PowerCalculator;
.source "SensorPowerCalculator.java"


# instance fields
.field private final mGpsPowerOn:D

.field private final mSensors:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/hardware/Sensor;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/android/internal/os/PowerProfile;Landroid/hardware/SensorManager;)V
    .locals 2
    .param p1, "profile"    # Lcom/android/internal/os/PowerProfile;
    .param p2, "sensorManager"    # Landroid/hardware/SensorManager;

    #@0
    .prologue
    .line 29
    invoke-direct {p0}, Lcom/android/internal/os/PowerCalculator;-><init>()V

    #@3
    .line 30
    const/4 v0, -0x1

    #@4
    invoke-virtual {p2, v0}, Landroid/hardware/SensorManager;->getSensorList(I)Ljava/util/List;

    #@7
    move-result-object v0

    #@8
    iput-object v0, p0, Lcom/android/internal/os/SensorPowerCalculator;->mSensors:Ljava/util/List;

    #@a
    .line 31
    const-string/jumbo v0, "gps.on"

    #@d
    invoke-virtual {p1, v0}, Lcom/android/internal/os/PowerProfile;->getAveragePower(Ljava/lang/String;)D

    #@10
    move-result-wide v0

    #@11
    iput-wide v0, p0, Lcom/android/internal/os/SensorPowerCalculator;->mGpsPowerOn:D

    #@13
    .line 29
    return-void
.end method


# virtual methods
.method public calculateApp(Lcom/android/internal/os/BatterySipper;Landroid/os/BatteryStats$Uid;JJI)V
    .locals 21
    .param p1, "app"    # Lcom/android/internal/os/BatterySipper;
    .param p2, "u"    # Landroid/os/BatteryStats$Uid;
    .param p3, "rawRealtimeUs"    # J
    .param p5, "rawUptimeUs"    # J
    .param p7, "statsType"    # I

    #@0
    .prologue
    .line 38
    invoke-virtual/range {p2 .. p2}, Landroid/os/BatteryStats$Uid;->getSensorStats()Landroid/util/SparseArray;

    #@3
    move-result-object v10

    #@4
    .line 39
    .local v10, "sensorStats":Landroid/util/SparseArray;, "Landroid/util/SparseArray<+Landroid/os/BatteryStats$Uid$Sensor;>;"
    invoke-virtual {v10}, Landroid/util/SparseArray;->size()I

    #@7
    move-result v4

    #@8
    .line 40
    .local v4, "NSE":I
    const/4 v6, 0x0

    #@9
    .local v6, "ise":I
    :goto_0
    if-ge v6, v4, :cond_2

    #@b
    .line 41
    invoke-virtual {v10, v6}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    #@e
    move-result-object v8

    #@f
    check-cast v8, Landroid/os/BatteryStats$Uid$Sensor;

    #@11
    .line 42
    .local v8, "sensor":Landroid/os/BatteryStats$Uid$Sensor;
    invoke-virtual {v10, v6}, Landroid/util/SparseArray;->keyAt(I)I

    #@14
    move-result v9

    #@15
    .line 43
    .local v9, "sensorHandle":I
    invoke-virtual {v8}, Landroid/os/BatteryStats$Uid$Sensor;->getSensorTime()Landroid/os/BatteryStats$Timer;

    #@18
    move-result-object v14

    #@19
    .line 44
    .local v14, "timer":Landroid/os/BatteryStats$Timer;
    move-wide/from16 v0, p3

    #@1b
    move/from16 v2, p7

    #@1d
    invoke-virtual {v14, v0, v1, v2}, Landroid/os/BatteryStats$Timer;->getTotalTimeLocked(JI)J

    #@20
    move-result-wide v16

    #@21
    const-wide/16 v18, 0x3e8

    #@23
    div-long v12, v16, v18

    #@25
    .line 45
    .local v12, "sensorTime":J
    packed-switch v9, :pswitch_data_0

    #@28
    .line 51
    move-object/from16 v0, p0

    #@2a
    iget-object v15, v0, Lcom/android/internal/os/SensorPowerCalculator;->mSensors:Ljava/util/List;

    #@2c
    invoke-interface {v15}, Ljava/util/List;->size()I

    #@2f
    move-result v11

    #@30
    .line 52
    .local v11, "sensorsCount":I
    const/4 v5, 0x0

    #@31
    .local v5, "i":I
    :goto_1
    if-ge v5, v11, :cond_0

    #@33
    .line 53
    move-object/from16 v0, p0

    #@35
    iget-object v15, v0, Lcom/android/internal/os/SensorPowerCalculator;->mSensors:Ljava/util/List;

    #@37
    invoke-interface {v15, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@3a
    move-result-object v7

    #@3b
    check-cast v7, Landroid/hardware/Sensor;

    #@3d
    .line 54
    .local v7, "s":Landroid/hardware/Sensor;
    invoke-virtual {v7}, Landroid/hardware/Sensor;->getHandle()I

    #@40
    move-result v15

    #@41
    if-ne v15, v9, :cond_1

    #@43
    .line 55
    move-object/from16 v0, p1

    #@45
    iget-wide v0, v0, Lcom/android/internal/os/BatterySipper;->sensorPowerMah:D

    #@47
    move-wide/from16 v16, v0

    #@49
    long-to-float v15, v12

    #@4a
    invoke-virtual {v7}, Landroid/hardware/Sensor;->getPower()F

    #@4d
    move-result v18

    #@4e
    mul-float v15, v15, v18

    #@50
    const v18, 0x4a5bba00    # 3600000.0f

    #@53
    div-float v15, v15, v18

    #@55
    float-to-double v0, v15

    #@56
    move-wide/from16 v18, v0

    #@58
    add-double v16, v16, v18

    #@5a
    move-wide/from16 v0, v16

    #@5c
    move-object/from16 v2, p1

    #@5e
    iput-wide v0, v2, Lcom/android/internal/os/BatterySipper;->sensorPowerMah:D

    #@60
    .line 40
    .end local v5    # "i":I
    .end local v7    # "s":Landroid/hardware/Sensor;
    .end local v11    # "sensorsCount":I
    :cond_0
    :goto_2
    add-int/lit8 v6, v6, 0x1

    #@62
    goto :goto_0

    #@63
    .line 47
    :pswitch_0
    move-object/from16 v0, p1

    #@65
    iput-wide v12, v0, Lcom/android/internal/os/BatterySipper;->gpsTimeMs:J

    #@67
    .line 48
    move-object/from16 v0, p1

    #@69
    iget-wide v0, v0, Lcom/android/internal/os/BatterySipper;->gpsTimeMs:J

    #@6b
    move-wide/from16 v16, v0

    #@6d
    move-wide/from16 v0, v16

    #@6f
    long-to-double v0, v0

    #@70
    move-wide/from16 v16, v0

    #@72
    move-object/from16 v0, p0

    #@74
    iget-wide v0, v0, Lcom/android/internal/os/SensorPowerCalculator;->mGpsPowerOn:D

    #@76
    move-wide/from16 v18, v0

    #@78
    mul-double v16, v16, v18

    #@7a
    const-wide v18, 0x414b774000000000L    # 3600000.0

    #@7f
    div-double v16, v16, v18

    #@81
    move-wide/from16 v0, v16

    #@83
    move-object/from16 v2, p1

    #@85
    iput-wide v0, v2, Lcom/android/internal/os/BatterySipper;->gpsPowerMah:D

    #@87
    goto :goto_2

    #@88
    .line 52
    .restart local v5    # "i":I
    .restart local v7    # "s":Landroid/hardware/Sensor;
    .restart local v11    # "sensorsCount":I
    :cond_1
    add-int/lit8 v5, v5, 0x1

    #@8a
    goto :goto_1

    #@8b
    .line 36
    .end local v5    # "i":I
    .end local v7    # "s":Landroid/hardware/Sensor;
    .end local v8    # "sensor":Landroid/os/BatteryStats$Uid$Sensor;
    .end local v9    # "sensorHandle":I
    .end local v11    # "sensorsCount":I
    .end local v12    # "sensorTime":J
    .end local v14    # "timer":Landroid/os/BatteryStats$Timer;
    :cond_2
    return-void

    #@8c
    .line 45
    :pswitch_data_0
    .packed-switch -0x2710
        :pswitch_0
    .end packed-switch
.end method
