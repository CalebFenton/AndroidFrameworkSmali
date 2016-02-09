.class public Lcom/android/internal/os/CpuPowerCalculator;
.super Lcom/android/internal/os/PowerCalculator;
.source "CpuPowerCalculator.java"


# static fields
.field private static final DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "CpuPowerCalculator"


# instance fields
.field private final mPowerCpuNormal:[D

.field private final mSpeedStepTimes:[J


# direct methods
.method public constructor <init>(Lcom/android/internal/os/PowerProfile;)V
    .locals 6
    .param p1, "profile"    # Lcom/android/internal/os/PowerProfile;

    #@0
    .prologue
    .line 33
    invoke-direct {p0}, Lcom/android/internal/os/PowerCalculator;-><init>()V

    #@3
    .line 34
    invoke-virtual {p1}, Lcom/android/internal/os/PowerProfile;->getNumSpeedSteps()I

    #@6
    move-result v1

    #@7
    .line 35
    .local v1, "speedSteps":I
    new-array v2, v1, [D

    #@9
    iput-object v2, p0, Lcom/android/internal/os/CpuPowerCalculator;->mPowerCpuNormal:[D

    #@b
    .line 36
    new-array v2, v1, [J

    #@d
    iput-object v2, p0, Lcom/android/internal/os/CpuPowerCalculator;->mSpeedStepTimes:[J

    #@f
    .line 37
    const/4 v0, 0x0

    #@10
    .local v0, "p":I
    :goto_0
    if-ge v0, v1, :cond_0

    #@12
    .line 38
    iget-object v2, p0, Lcom/android/internal/os/CpuPowerCalculator;->mPowerCpuNormal:[D

    #@14
    const-string/jumbo v3, "cpu.active"

    #@17
    invoke-virtual {p1, v3, v0}, Lcom/android/internal/os/PowerProfile;->getAveragePower(Ljava/lang/String;I)D

    #@1a
    move-result-wide v4

    #@1b
    aput-wide v4, v2, v0

    #@1d
    .line 37
    add-int/lit8 v0, v0, 0x1

    #@1f
    goto :goto_0

    #@20
    .line 33
    :cond_0
    return-void
.end method


# virtual methods
.method public calculateApp(Lcom/android/internal/os/BatterySipper;Landroid/os/BatteryStats$Uid;JJI)V
    .locals 28
    .param p1, "app"    # Lcom/android/internal/os/BatterySipper;
    .param p2, "u"    # Landroid/os/BatteryStats$Uid;
    .param p3, "rawRealtimeUs"    # J
    .param p5, "rawUptimeUs"    # J
    .param p7, "statsType"    # I

    #@0
    .prologue
    .line 45
    move-object/from16 v0, p0

    #@2
    iget-object v0, v0, Lcom/android/internal/os/CpuPowerCalculator;->mSpeedStepTimes:[J

    #@4
    move-object/from16 v21, v0

    #@6
    move-object/from16 v0, v21

    #@8
    array-length v0, v0

    #@9
    move/from16 v17, v0

    #@b
    .line 47
    .local v17, "speedSteps":I
    const-wide/16 v22, 0x0

    #@d
    .line 48
    .local v22, "totalTimeAtSpeeds":J
    const/16 v20, 0x0

    #@f
    .local v20, "step":I
    :goto_0
    move/from16 v0, v20

    #@11
    move/from16 v1, v17

    #@13
    if-ge v0, v1, :cond_0

    #@15
    .line 49
    move-object/from16 v0, p0

    #@17
    iget-object v0, v0, Lcom/android/internal/os/CpuPowerCalculator;->mSpeedStepTimes:[J

    #@19
    move-object/from16 v21, v0

    #@1b
    move-object/from16 v0, p2

    #@1d
    move/from16 v1, v20

    #@1f
    move/from16 v2, p7

    #@21
    invoke-virtual {v0, v1, v2}, Landroid/os/BatteryStats$Uid;->getTimeAtCpuSpeed(II)J

    #@24
    move-result-wide v24

    #@25
    aput-wide v24, v21, v20

    #@27
    .line 50
    move-object/from16 v0, p0

    #@29
    iget-object v0, v0, Lcom/android/internal/os/CpuPowerCalculator;->mSpeedStepTimes:[J

    #@2b
    move-object/from16 v21, v0

    #@2d
    aget-wide v24, v21, v20

    #@2f
    add-long v22, v22, v24

    #@31
    .line 48
    add-int/lit8 v20, v20, 0x1

    #@33
    goto :goto_0

    #@34
    .line 52
    :cond_0
    const-wide/16 v24, 0x1

    #@36
    invoke-static/range {v22 .. v25}, Ljava/lang/Math;->max(JJ)J

    #@39
    move-result-wide v22

    #@3a
    .line 54
    move-object/from16 v0, p2

    #@3c
    move/from16 v1, p7

    #@3e
    invoke-virtual {v0, v1}, Landroid/os/BatteryStats$Uid;->getUserCpuTimeUs(I)J

    #@41
    move-result-wide v24

    #@42
    move-object/from16 v0, p2

    #@44
    move/from16 v1, p7

    #@46
    invoke-virtual {v0, v1}, Landroid/os/BatteryStats$Uid;->getSystemCpuTimeUs(I)J

    #@49
    move-result-wide v26

    #@4a
    add-long v24, v24, v26

    #@4c
    const-wide/16 v26, 0x3e8

    #@4e
    div-long v24, v24, v26

    #@50
    move-wide/from16 v0, v24

    #@52
    move-object/from16 v2, p1

    #@54
    iput-wide v0, v2, Lcom/android/internal/os/BatterySipper;->cpuTimeMs:J

    #@56
    .line 59
    const-wide/16 v6, 0x0

    #@58
    .line 60
    .local v6, "cpuPowerMaMs":D
    const/16 v20, 0x0

    #@5a
    :goto_1
    move/from16 v0, v20

    #@5c
    move/from16 v1, v17

    #@5e
    if-ge v0, v1, :cond_1

    #@60
    .line 61
    move-object/from16 v0, p0

    #@62
    iget-object v0, v0, Lcom/android/internal/os/CpuPowerCalculator;->mSpeedStepTimes:[J

    #@64
    move-object/from16 v21, v0

    #@66
    aget-wide v24, v21, v20

    #@68
    move-wide/from16 v0, v24

    #@6a
    long-to-double v0, v0

    #@6b
    move-wide/from16 v24, v0

    #@6d
    move-wide/from16 v0, v22

    #@6f
    long-to-double v0, v0

    #@70
    move-wide/from16 v26, v0

    #@72
    div-double v18, v24, v26

    #@74
    .line 62
    .local v18, "ratio":D
    move-object/from16 v0, p1

    #@76
    iget-wide v0, v0, Lcom/android/internal/os/BatterySipper;->cpuTimeMs:J

    #@78
    move-wide/from16 v24, v0

    #@7a
    move-wide/from16 v0, v24

    #@7c
    long-to-double v0, v0

    #@7d
    move-wide/from16 v24, v0

    #@7f
    mul-double v24, v24, v18

    #@81
    move-object/from16 v0, p0

    #@83
    iget-object v0, v0, Lcom/android/internal/os/CpuPowerCalculator;->mPowerCpuNormal:[D

    #@85
    move-object/from16 v21, v0

    #@87
    aget-wide v26, v21, v20

    #@89
    mul-double v8, v24, v26

    #@8b
    .line 68
    .local v8, "cpuSpeedStepPower":D
    add-double/2addr v6, v8

    #@8c
    .line 60
    add-int/lit8 v20, v20, 0x1

    #@8e
    goto :goto_1

    #@8f
    .line 77
    .end local v8    # "cpuSpeedStepPower":D
    .end local v18    # "ratio":D
    :cond_1
    const-wide/16 v10, 0x0

    #@91
    .line 79
    .local v10, "highestDrain":D
    const-wide/16 v24, 0x0

    #@93
    move-wide/from16 v0, v24

    #@95
    move-object/from16 v2, p1

    #@97
    iput-wide v0, v2, Lcom/android/internal/os/BatterySipper;->cpuFgTimeMs:J

    #@99
    .line 80
    invoke-virtual/range {p2 .. p2}, Landroid/os/BatteryStats$Uid;->getProcessStats()Landroid/util/ArrayMap;

    #@9c
    move-result-object v14

    #@9d
    .line 81
    .local v14, "processStats":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;+Landroid/os/BatteryStats$Uid$Proc;>;"
    invoke-virtual {v14}, Landroid/util/ArrayMap;->size()I

    #@a0
    move-result v15

    #@a1
    .line 82
    .local v15, "processStatsCount":I
    const/4 v12, 0x0

    #@a2
    .local v12, "i":I
    :goto_2
    if-ge v12, v15, :cond_5

    #@a4
    .line 83
    invoke-virtual {v14, v12}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    #@a7
    move-result-object v16

    #@a8
    check-cast v16, Landroid/os/BatteryStats$Uid$Proc;

    #@aa
    .line 84
    .local v16, "ps":Landroid/os/BatteryStats$Uid$Proc;
    invoke-virtual {v14, v12}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    #@ad
    move-result-object v13

    #@ae
    check-cast v13, Ljava/lang/String;

    #@b0
    .line 85
    .local v13, "processName":Ljava/lang/String;
    move-object/from16 v0, p1

    #@b2
    iget-wide v0, v0, Lcom/android/internal/os/BatterySipper;->cpuFgTimeMs:J

    #@b4
    move-wide/from16 v24, v0

    #@b6
    move-object/from16 v0, v16

    #@b8
    move/from16 v1, p7

    #@ba
    invoke-virtual {v0, v1}, Landroid/os/BatteryStats$Uid$Proc;->getForegroundTime(I)J

    #@bd
    move-result-wide v26

    #@be
    add-long v24, v24, v26

    #@c0
    move-wide/from16 v0, v24

    #@c2
    move-object/from16 v2, p1

    #@c4
    iput-wide v0, v2, Lcom/android/internal/os/BatterySipper;->cpuFgTimeMs:J

    #@c6
    .line 87
    move-object/from16 v0, v16

    #@c8
    move/from16 v1, p7

    #@ca
    invoke-virtual {v0, v1}, Landroid/os/BatteryStats$Uid$Proc;->getUserTime(I)J

    #@cd
    move-result-wide v24

    #@ce
    move-object/from16 v0, v16

    #@d0
    move/from16 v1, p7

    #@d2
    invoke-virtual {v0, v1}, Landroid/os/BatteryStats$Uid$Proc;->getSystemTime(I)J

    #@d5
    move-result-wide v26

    #@d6
    add-long v24, v24, v26

    #@d8
    .line 88
    move-object/from16 v0, v16

    #@da
    move/from16 v1, p7

    #@dc
    invoke-virtual {v0, v1}, Landroid/os/BatteryStats$Uid$Proc;->getForegroundTime(I)J

    #@df
    move-result-wide v26

    #@e0
    .line 87
    add-long v4, v24, v26

    #@e2
    .line 92
    .local v4, "costValue":J
    move-object/from16 v0, p1

    #@e4
    iget-object v0, v0, Lcom/android/internal/os/BatterySipper;->packageWithHighestDrain:Ljava/lang/String;

    #@e6
    move-object/from16 v21, v0

    #@e8
    if-eqz v21, :cond_2

    #@ea
    .line 93
    move-object/from16 v0, p1

    #@ec
    iget-object v0, v0, Lcom/android/internal/os/BatterySipper;->packageWithHighestDrain:Ljava/lang/String;

    #@ee
    move-object/from16 v21, v0

    #@f0
    const-string/jumbo v24, "*"

    #@f3
    move-object/from16 v0, v21

    #@f5
    move-object/from16 v1, v24

    #@f7
    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    #@fa
    move-result v21

    #@fb
    .line 92
    if-eqz v21, :cond_4

    #@fd
    .line 94
    :cond_2
    long-to-double v10, v4

    #@fe
    .line 95
    move-object/from16 v0, p1

    #@100
    iput-object v13, v0, Lcom/android/internal/os/BatterySipper;->packageWithHighestDrain:Ljava/lang/String;

    #@102
    .line 82
    :cond_3
    :goto_3
    add-int/lit8 v12, v12, 0x1

    #@104
    goto :goto_2

    #@105
    .line 96
    :cond_4
    long-to-double v0, v4

    #@106
    move-wide/from16 v24, v0

    #@108
    cmpg-double v21, v10, v24

    #@10a
    if-gez v21, :cond_3

    #@10c
    const-string/jumbo v21, "*"

    #@10f
    move-object/from16 v0, v21

    #@111
    invoke-virtual {v13, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    #@114
    move-result v21

    #@115
    if-nez v21, :cond_3

    #@117
    .line 97
    long-to-double v10, v4

    #@118
    .line 98
    move-object/from16 v0, p1

    #@11a
    iput-object v13, v0, Lcom/android/internal/os/BatterySipper;->packageWithHighestDrain:Ljava/lang/String;

    #@11c
    goto :goto_3

    #@11d
    .line 103
    .end local v4    # "costValue":J
    .end local v13    # "processName":Ljava/lang/String;
    .end local v16    # "ps":Landroid/os/BatteryStats$Uid$Proc;
    :cond_5
    move-object/from16 v0, p1

    #@11f
    iget-wide v0, v0, Lcom/android/internal/os/BatterySipper;->cpuFgTimeMs:J

    #@121
    move-wide/from16 v24, v0

    #@123
    move-object/from16 v0, p1

    #@125
    iget-wide v0, v0, Lcom/android/internal/os/BatterySipper;->cpuTimeMs:J

    #@127
    move-wide/from16 v26, v0

    #@129
    cmp-long v21, v24, v26

    #@12b
    if-lez v21, :cond_6

    #@12d
    .line 109
    move-object/from16 v0, p1

    #@12f
    iget-wide v0, v0, Lcom/android/internal/os/BatterySipper;->cpuFgTimeMs:J

    #@131
    move-wide/from16 v24, v0

    #@133
    move-wide/from16 v0, v24

    #@135
    move-object/from16 v2, p1

    #@137
    iput-wide v0, v2, Lcom/android/internal/os/BatterySipper;->cpuTimeMs:J

    #@139
    .line 113
    :cond_6
    const-wide v24, 0x414b774000000000L    # 3600000.0

    #@13e
    div-double v24, v6, v24

    #@140
    move-wide/from16 v0, v24

    #@142
    move-object/from16 v2, p1

    #@144
    iput-wide v0, v2, Lcom/android/internal/os/BatterySipper;->cpuPowerMah:D

    #@146
    .line 44
    return-void
.end method
