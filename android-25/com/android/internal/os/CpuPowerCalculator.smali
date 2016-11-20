.class public Lcom/android/internal/os/CpuPowerCalculator;
.super Lcom/android/internal/os/PowerCalculator;
.source "CpuPowerCalculator.java"


# static fields
.field private static final DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "CpuPowerCalculator"


# instance fields
.field private final mProfile:Lcom/android/internal/os/PowerProfile;


# direct methods
.method public constructor <init>(Lcom/android/internal/os/PowerProfile;)V
    .locals 0
    .param p1, "profile"    # Lcom/android/internal/os/PowerProfile;

    #@0
    .prologue
    .line 27
    invoke-direct {p0}, Lcom/android/internal/os/PowerCalculator;-><init>()V

    #@3
    .line 28
    iput-object p1, p0, Lcom/android/internal/os/CpuPowerCalculator;->mProfile:Lcom/android/internal/os/PowerProfile;

    #@5
    .line 27
    return-void
.end method


# virtual methods
.method public calculateApp(Lcom/android/internal/os/BatterySipper;Landroid/os/BatteryStats$Uid;JJI)V
    .locals 30
    .param p1, "app"    # Lcom/android/internal/os/BatterySipper;
    .param p2, "u"    # Landroid/os/BatteryStats$Uid;
    .param p3, "rawRealtimeUs"    # J
    .param p5, "rawUptimeUs"    # J
    .param p7, "statsType"    # I

    #@0
    .prologue
    .line 35
    move-object/from16 v0, p2

    #@2
    move/from16 v1, p7

    #@4
    invoke-virtual {v0, v1}, Landroid/os/BatteryStats$Uid;->getUserCpuTimeUs(I)J

    #@7
    move-result-wide v26

    #@8
    move-object/from16 v0, p2

    #@a
    move/from16 v1, p7

    #@c
    invoke-virtual {v0, v1}, Landroid/os/BatteryStats$Uid;->getSystemCpuTimeUs(I)J

    #@f
    move-result-wide v28

    #@10
    add-long v26, v26, v28

    #@12
    const-wide/16 v28, 0x3e8

    #@14
    div-long v26, v26, v28

    #@16
    move-wide/from16 v0, v26

    #@18
    move-object/from16 v2, p1

    #@1a
    iput-wide v0, v2, Lcom/android/internal/os/BatterySipper;->cpuTimeMs:J

    #@1c
    .line 38
    const-wide/16 v24, 0x0

    #@1e
    .line 39
    .local v24, "totalTime":J
    move-object/from16 v0, p0

    #@20
    iget-object v0, v0, Lcom/android/internal/os/CpuPowerCalculator;->mProfile:Lcom/android/internal/os/PowerProfile;

    #@22
    move-object/from16 v23, v0

    #@24
    invoke-virtual/range {v23 .. v23}, Lcom/android/internal/os/PowerProfile;->getNumCpuClusters()I

    #@27
    move-result v14

    #@28
    .line 40
    .local v14, "numClusters":I
    const/4 v4, 0x0

    #@29
    .local v4, "cluster":I
    :goto_0
    if-ge v4, v14, :cond_1

    #@2b
    .line 41
    move-object/from16 v0, p0

    #@2d
    iget-object v0, v0, Lcom/android/internal/os/CpuPowerCalculator;->mProfile:Lcom/android/internal/os/PowerProfile;

    #@2f
    move-object/from16 v23, v0

    #@31
    move-object/from16 v0, v23

    #@33
    invoke-virtual {v0, v4}, Lcom/android/internal/os/PowerProfile;->getNumSpeedStepsInCpuCluster(I)I

    #@36
    move-result v22

    #@37
    .line 42
    .local v22, "speedsForCluster":I
    const/16 v19, 0x0

    #@39
    .local v19, "speed":I
    :goto_1
    move/from16 v0, v19

    #@3b
    move/from16 v1, v22

    #@3d
    if-ge v0, v1, :cond_0

    #@3f
    .line 43
    move-object/from16 v0, p2

    #@41
    move/from16 v1, v19

    #@43
    move/from16 v2, p7

    #@45
    invoke-virtual {v0, v4, v1, v2}, Landroid/os/BatteryStats$Uid;->getTimeAtCpuSpeed(III)J

    #@48
    move-result-wide v26

    #@49
    add-long v24, v24, v26

    #@4b
    .line 42
    add-int/lit8 v19, v19, 0x1

    #@4d
    goto :goto_1

    #@4e
    .line 40
    :cond_0
    add-int/lit8 v4, v4, 0x1

    #@50
    goto :goto_0

    #@51
    .line 46
    .end local v19    # "speed":I
    .end local v22    # "speedsForCluster":I
    :cond_1
    const-wide/16 v26, 0x1

    #@53
    invoke-static/range {v24 .. v27}, Ljava/lang/Math;->max(JJ)J

    #@56
    move-result-wide v24

    #@57
    .line 48
    const-wide/16 v8, 0x0

    #@59
    .line 49
    .local v8, "cpuPowerMaMs":D
    const/4 v4, 0x0

    #@5a
    :goto_2
    if-ge v4, v14, :cond_3

    #@5c
    .line 50
    move-object/from16 v0, p0

    #@5e
    iget-object v0, v0, Lcom/android/internal/os/CpuPowerCalculator;->mProfile:Lcom/android/internal/os/PowerProfile;

    #@60
    move-object/from16 v23, v0

    #@62
    move-object/from16 v0, v23

    #@64
    invoke-virtual {v0, v4}, Lcom/android/internal/os/PowerProfile;->getNumSpeedStepsInCpuCluster(I)I

    #@67
    move-result v22

    #@68
    .line 51
    .restart local v22    # "speedsForCluster":I
    const/16 v19, 0x0

    #@6a
    .restart local v19    # "speed":I
    :goto_3
    move/from16 v0, v19

    #@6c
    move/from16 v1, v22

    #@6e
    if-ge v0, v1, :cond_2

    #@70
    .line 52
    move-object/from16 v0, p2

    #@72
    move/from16 v1, v19

    #@74
    move/from16 v2, p7

    #@76
    invoke-virtual {v0, v4, v1, v2}, Landroid/os/BatteryStats$Uid;->getTimeAtCpuSpeed(III)J

    #@79
    move-result-wide v26

    #@7a
    move-wide/from16 v0, v26

    #@7c
    long-to-double v0, v0

    #@7d
    move-wide/from16 v26, v0

    #@7f
    .line 53
    move-wide/from16 v0, v24

    #@81
    long-to-double v0, v0

    #@82
    move-wide/from16 v28, v0

    #@84
    .line 52
    div-double v20, v26, v28

    #@86
    .line 54
    .local v20, "ratio":D
    move-object/from16 v0, p1

    #@88
    iget-wide v0, v0, Lcom/android/internal/os/BatterySipper;->cpuTimeMs:J

    #@8a
    move-wide/from16 v26, v0

    #@8c
    move-wide/from16 v0, v26

    #@8e
    long-to-double v0, v0

    #@8f
    move-wide/from16 v26, v0

    #@91
    mul-double v26, v26, v20

    #@93
    .line 55
    move-object/from16 v0, p0

    #@95
    iget-object v0, v0, Lcom/android/internal/os/CpuPowerCalculator;->mProfile:Lcom/android/internal/os/PowerProfile;

    #@97
    move-object/from16 v23, v0

    #@99
    move-object/from16 v0, v23

    #@9b
    move/from16 v1, v19

    #@9d
    invoke-virtual {v0, v4, v1}, Lcom/android/internal/os/PowerProfile;->getAveragePowerForCpu(II)D

    #@a0
    move-result-wide v28

    #@a1
    .line 54
    mul-double v10, v26, v28

    #@a3
    .line 61
    .local v10, "cpuSpeedStepPower":D
    add-double/2addr v8, v10

    #@a4
    .line 51
    add-int/lit8 v19, v19, 0x1

    #@a6
    goto :goto_3

    #@a7
    .line 49
    .end local v10    # "cpuSpeedStepPower":D
    .end local v20    # "ratio":D
    :cond_2
    add-int/lit8 v4, v4, 0x1

    #@a9
    goto :goto_2

    #@aa
    .line 64
    .end local v19    # "speed":I
    .end local v22    # "speedsForCluster":I
    :cond_3
    const-wide v26, 0x414b774000000000L    # 3600000.0

    #@af
    div-double v26, v8, v26

    #@b1
    move-wide/from16 v0, v26

    #@b3
    move-object/from16 v2, p1

    #@b5
    iput-wide v0, v2, Lcom/android/internal/os/BatterySipper;->cpuPowerMah:D

    #@b7
    .line 72
    const-wide/16 v12, 0x0

    #@b9
    .line 74
    .local v12, "highestDrain":D
    const-wide/16 v26, 0x0

    #@bb
    move-wide/from16 v0, v26

    #@bd
    move-object/from16 v2, p1

    #@bf
    iput-wide v0, v2, Lcom/android/internal/os/BatterySipper;->cpuFgTimeMs:J

    #@c1
    .line 75
    invoke-virtual/range {p2 .. p2}, Landroid/os/BatteryStats$Uid;->getProcessStats()Landroid/util/ArrayMap;

    #@c4
    move-result-object v16

    #@c5
    .line 76
    .local v16, "processStats":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;+Landroid/os/BatteryStats$Uid$Proc;>;"
    invoke-virtual/range {v16 .. v16}, Landroid/util/ArrayMap;->size()I

    #@c8
    move-result v17

    #@c9
    .line 77
    .local v17, "processStatsCount":I
    const/4 v5, 0x0

    #@ca
    .local v5, "i":I
    :goto_4
    move/from16 v0, v17

    #@cc
    if-ge v5, v0, :cond_7

    #@ce
    .line 78
    move-object/from16 v0, v16

    #@d0
    invoke-virtual {v0, v5}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    #@d3
    move-result-object v18

    #@d4
    check-cast v18, Landroid/os/BatteryStats$Uid$Proc;

    #@d6
    .line 79
    .local v18, "ps":Landroid/os/BatteryStats$Uid$Proc;
    move-object/from16 v0, v16

    #@d8
    invoke-virtual {v0, v5}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    #@db
    move-result-object v15

    #@dc
    check-cast v15, Ljava/lang/String;

    #@de
    .line 80
    .local v15, "processName":Ljava/lang/String;
    move-object/from16 v0, p1

    #@e0
    iget-wide v0, v0, Lcom/android/internal/os/BatterySipper;->cpuFgTimeMs:J

    #@e2
    move-wide/from16 v26, v0

    #@e4
    move-object/from16 v0, v18

    #@e6
    move/from16 v1, p7

    #@e8
    invoke-virtual {v0, v1}, Landroid/os/BatteryStats$Uid$Proc;->getForegroundTime(I)J

    #@eb
    move-result-wide v28

    #@ec
    add-long v26, v26, v28

    #@ee
    move-wide/from16 v0, v26

    #@f0
    move-object/from16 v2, p1

    #@f2
    iput-wide v0, v2, Lcom/android/internal/os/BatterySipper;->cpuFgTimeMs:J

    #@f4
    .line 82
    move-object/from16 v0, v18

    #@f6
    move/from16 v1, p7

    #@f8
    invoke-virtual {v0, v1}, Landroid/os/BatteryStats$Uid$Proc;->getUserTime(I)J

    #@fb
    move-result-wide v26

    #@fc
    move-object/from16 v0, v18

    #@fe
    move/from16 v1, p7

    #@100
    invoke-virtual {v0, v1}, Landroid/os/BatteryStats$Uid$Proc;->getSystemTime(I)J

    #@103
    move-result-wide v28

    #@104
    add-long v26, v26, v28

    #@106
    .line 83
    move-object/from16 v0, v18

    #@108
    move/from16 v1, p7

    #@10a
    invoke-virtual {v0, v1}, Landroid/os/BatteryStats$Uid$Proc;->getForegroundTime(I)J

    #@10d
    move-result-wide v28

    #@10e
    .line 82
    add-long v6, v26, v28

    #@110
    .line 87
    .local v6, "costValue":J
    move-object/from16 v0, p1

    #@112
    iget-object v0, v0, Lcom/android/internal/os/BatterySipper;->packageWithHighestDrain:Ljava/lang/String;

    #@114
    move-object/from16 v23, v0

    #@116
    if-eqz v23, :cond_4

    #@118
    .line 88
    move-object/from16 v0, p1

    #@11a
    iget-object v0, v0, Lcom/android/internal/os/BatterySipper;->packageWithHighestDrain:Ljava/lang/String;

    #@11c
    move-object/from16 v23, v0

    #@11e
    const-string/jumbo v26, "*"

    #@121
    move-object/from16 v0, v23

    #@123
    move-object/from16 v1, v26

    #@125
    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    #@128
    move-result v23

    #@129
    .line 87
    if-eqz v23, :cond_6

    #@12b
    .line 89
    :cond_4
    long-to-double v12, v6

    #@12c
    .line 90
    move-object/from16 v0, p1

    #@12e
    iput-object v15, v0, Lcom/android/internal/os/BatterySipper;->packageWithHighestDrain:Ljava/lang/String;

    #@130
    .line 77
    :cond_5
    :goto_5
    add-int/lit8 v5, v5, 0x1

    #@132
    goto :goto_4

    #@133
    .line 91
    :cond_6
    long-to-double v0, v6

    #@134
    move-wide/from16 v26, v0

    #@136
    cmpg-double v23, v12, v26

    #@138
    if-gez v23, :cond_5

    #@13a
    const-string/jumbo v23, "*"

    #@13d
    move-object/from16 v0, v23

    #@13f
    invoke-virtual {v15, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    #@142
    move-result v23

    #@143
    if-nez v23, :cond_5

    #@145
    .line 92
    long-to-double v12, v6

    #@146
    .line 93
    move-object/from16 v0, p1

    #@148
    iput-object v15, v0, Lcom/android/internal/os/BatterySipper;->packageWithHighestDrain:Ljava/lang/String;

    #@14a
    goto :goto_5

    #@14b
    .line 98
    .end local v6    # "costValue":J
    .end local v15    # "processName":Ljava/lang/String;
    .end local v18    # "ps":Landroid/os/BatteryStats$Uid$Proc;
    :cond_7
    move-object/from16 v0, p1

    #@14d
    iget-wide v0, v0, Lcom/android/internal/os/BatterySipper;->cpuFgTimeMs:J

    #@14f
    move-wide/from16 v26, v0

    #@151
    move-object/from16 v0, p1

    #@153
    iget-wide v0, v0, Lcom/android/internal/os/BatterySipper;->cpuTimeMs:J

    #@155
    move-wide/from16 v28, v0

    #@157
    cmp-long v23, v26, v28

    #@159
    if-lez v23, :cond_8

    #@15b
    .line 104
    move-object/from16 v0, p1

    #@15d
    iget-wide v0, v0, Lcom/android/internal/os/BatterySipper;->cpuFgTimeMs:J

    #@15f
    move-wide/from16 v26, v0

    #@161
    move-wide/from16 v0, v26

    #@163
    move-object/from16 v2, p1

    #@165
    iput-wide v0, v2, Lcom/android/internal/os/BatterySipper;->cpuTimeMs:J

    #@167
    .line 33
    :cond_8
    return-void
.end method
