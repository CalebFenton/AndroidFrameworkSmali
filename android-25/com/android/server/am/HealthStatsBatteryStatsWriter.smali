.class public Lcom/android/server/am/HealthStatsBatteryStatsWriter;
.super Ljava/lang/Object;
.source "HealthStatsBatteryStatsWriter.java"


# instance fields
.field private final mNowRealtimeMs:J

.field private final mNowUptimeMs:J


# direct methods
.method public constructor <init>()V
    .locals 2

    #@0
    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 42
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    #@6
    move-result-wide v0

    #@7
    iput-wide v0, p0, Lcom/android/server/am/HealthStatsBatteryStatsWriter;->mNowRealtimeMs:J

    #@9
    .line 43
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    #@c
    move-result-wide v0

    #@d
    iput-wide v0, p0, Lcom/android/server/am/HealthStatsBatteryStatsWriter;->mNowUptimeMs:J

    #@f
    .line 41
    return-void
.end method

.method private addTimer(Landroid/os/health/HealthStatsWriter;ILandroid/os/BatteryStats$Timer;)V
    .locals 6
    .param p1, "writer"    # Landroid/os/health/HealthStatsWriter;
    .param p2, "key"    # I
    .param p3, "timer"    # Landroid/os/BatteryStats$Timer;

    #@0
    .prologue
    const-wide/16 v4, 0x3e8

    #@2
    const/4 v1, 0x2

    #@3
    .line 459
    if-eqz p3, :cond_0

    #@5
    .line 460
    invoke-virtual {p3, v1}, Landroid/os/BatteryStats$Timer;->getCountLocked(I)I

    #@8
    move-result v0

    #@9
    .line 461
    iget-wide v2, p0, Lcom/android/server/am/HealthStatsBatteryStatsWriter;->mNowRealtimeMs:J

    #@b
    mul-long/2addr v2, v4

    #@c
    invoke-virtual {p3, v2, v3, v1}, Landroid/os/BatteryStats$Timer;->getTotalTimeLocked(JI)J

    #@f
    move-result-wide v2

    #@10
    div-long/2addr v2, v4

    #@11
    .line 460
    invoke-virtual {p1, p2, v0, v2, v3}, Landroid/os/health/HealthStatsWriter;->addTimer(IIJ)V

    #@14
    .line 458
    :cond_0
    return-void
.end method

.method private addTimers(Landroid/os/health/HealthStatsWriter;ILjava/lang/String;Landroid/os/BatteryStats$Timer;)V
    .locals 8
    .param p1, "writer"    # Landroid/os/health/HealthStatsWriter;
    .param p2, "key"    # I
    .param p3, "name"    # Ljava/lang/String;
    .param p4, "timer"    # Landroid/os/BatteryStats$Timer;

    #@0
    .prologue
    const-wide/16 v6, 0x3e8

    #@2
    const/4 v4, 0x2

    #@3
    .line 470
    if-eqz p4, :cond_0

    #@5
    .line 471
    new-instance v0, Landroid/os/health/TimerStat;

    #@7
    invoke-virtual {p4, v4}, Landroid/os/BatteryStats$Timer;->getCountLocked(I)I

    #@a
    move-result v1

    #@b
    .line 472
    iget-wide v2, p0, Lcom/android/server/am/HealthStatsBatteryStatsWriter;->mNowRealtimeMs:J

    #@d
    mul-long/2addr v2, v6

    #@e
    invoke-virtual {p4, v2, v3, v4}, Landroid/os/BatteryStats$Timer;->getTotalTimeLocked(JI)J

    #@11
    move-result-wide v2

    #@12
    div-long/2addr v2, v6

    #@13
    .line 471
    invoke-direct {v0, v1, v2, v3}, Landroid/os/health/TimerStat;-><init>(IJ)V

    #@16
    invoke-virtual {p1, p2, p3, v0}, Landroid/os/health/HealthStatsWriter;->addTimers(ILjava/lang/String;Landroid/os/health/TimerStat;)V

    #@19
    .line 469
    :cond_0
    return-void
.end method


# virtual methods
.method public writePid(Landroid/os/health/HealthStatsWriter;Landroid/os/BatteryStats$Uid$Pid;)V
    .locals 4
    .param p1, "pidWriter"    # Landroid/os/health/HealthStatsWriter;
    .param p2, "pid"    # Landroid/os/BatteryStats$Uid$Pid;

    #@0
    .prologue
    const/16 v3, 0x4e22

    #@2
    .line 376
    if-nez p2, :cond_0

    #@4
    .line 377
    return-void

    #@5
    .line 381
    :cond_0
    iget v0, p2, Landroid/os/BatteryStats$Uid$Pid;->mWakeNesting:I

    #@7
    int-to-long v0, v0

    #@8
    const/16 v2, 0x4e21

    #@a
    invoke-virtual {p1, v2, v0, v1}, Landroid/os/health/HealthStatsWriter;->addMeasurement(IJ)V

    #@d
    .line 384
    iget-wide v0, p2, Landroid/os/BatteryStats$Uid$Pid;->mWakeSumMs:J

    #@f
    invoke-virtual {p1, v3, v0, v1}, Landroid/os/health/HealthStatsWriter;->addMeasurement(IJ)V

    #@12
    .line 387
    iget-wide v0, p2, Landroid/os/BatteryStats$Uid$Pid;->mWakeStartMs:J

    #@14
    invoke-virtual {p1, v3, v0, v1}, Landroid/os/health/HealthStatsWriter;->addMeasurement(IJ)V

    #@17
    .line 375
    return-void
.end method

.method public writePkg(Landroid/os/health/HealthStatsWriter;Landroid/os/BatteryStats$Uid$Pkg;)V
    .locals 9
    .param p1, "pkgWriter"    # Landroid/os/health/HealthStatsWriter;
    .param p2, "pkg"    # Landroid/os/BatteryStats$Uid$Pkg;

    #@0
    .prologue
    .line 425
    invoke-virtual {p2}, Landroid/os/BatteryStats$Uid$Pkg;->getServiceStats()Landroid/util/ArrayMap;

    #@3
    move-result-object v5

    #@4
    invoke-virtual {v5}, Landroid/util/ArrayMap;->entrySet()Ljava/util/Set;

    #@7
    move-result-object v5

    #@8
    .line 424
    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@b
    move-result-object v3

    #@c
    .local v3, "entry$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    #@f
    move-result v5

    #@10
    if-eqz v5, :cond_0

    #@12
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@15
    move-result-object v2

    #@16
    check-cast v2, Ljava/util/Map$Entry;

    #@18
    .line 426
    .local v2, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;+Landroid/os/BatteryStats$Uid$Pkg$Serv;>;"
    new-instance v4, Landroid/os/health/HealthStatsWriter;

    #@1a
    sget-object v5, Landroid/os/health/ServiceHealthStats;->CONSTANTS:Landroid/os/health/HealthKeys$Constants;

    #@1c
    invoke-direct {v4, v5}, Landroid/os/health/HealthStatsWriter;-><init>(Landroid/os/health/HealthKeys$Constants;)V

    #@1f
    .line 427
    .local v4, "writer":Landroid/os/health/HealthStatsWriter;
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    #@22
    move-result-object v5

    #@23
    check-cast v5, Landroid/os/BatteryStats$Uid$Pkg$Serv;

    #@25
    invoke-virtual {p0, v4, v5}, Lcom/android/server/am/HealthStatsBatteryStatsWriter;->writeServ(Landroid/os/health/HealthStatsWriter;Landroid/os/BatteryStats$Uid$Pkg$Serv;)V

    #@28
    .line 428
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    #@2b
    move-result-object v5

    #@2c
    check-cast v5, Ljava/lang/String;

    #@2e
    const v6, 0x9c41

    #@31
    invoke-virtual {p1, v6, v5, v4}, Landroid/os/health/HealthStatsWriter;->addStats(ILjava/lang/String;Landroid/os/health/HealthStatsWriter;)V

    #@34
    goto :goto_0

    #@35
    .line 433
    .end local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;+Landroid/os/BatteryStats$Uid$Pkg$Serv;>;"
    .end local v4    # "writer":Landroid/os/health/HealthStatsWriter;
    :cond_0
    invoke-virtual {p2}, Landroid/os/BatteryStats$Uid$Pkg;->getWakeupAlarmStats()Landroid/util/ArrayMap;

    #@38
    move-result-object v5

    #@39
    invoke-virtual {v5}, Landroid/util/ArrayMap;->entrySet()Ljava/util/Set;

    #@3c
    move-result-object v5

    #@3d
    .line 432
    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@40
    move-result-object v3

    #@41
    :cond_1
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    #@44
    move-result v5

    #@45
    if-eqz v5, :cond_2

    #@47
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@4a
    move-result-object v1

    #@4b
    check-cast v1, Ljava/util/Map$Entry;

    #@4d
    .line 434
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;+Landroid/os/BatteryStats$Counter;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    #@50
    move-result-object v0

    #@51
    check-cast v0, Landroid/os/BatteryStats$Counter;

    #@53
    .line 435
    .local v0, "counter":Landroid/os/BatteryStats$Counter;
    if-eqz v0, :cond_1

    #@55
    .line 437
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    #@58
    move-result-object v5

    #@59
    check-cast v5, Ljava/lang/String;

    #@5b
    const/4 v6, 0x2

    #@5c
    invoke-virtual {v0, v6}, Landroid/os/BatteryStats$Counter;->getCountLocked(I)I

    #@5f
    move-result v6

    #@60
    int-to-long v6, v6

    #@61
    .line 436
    const v8, 0x9c42

    #@64
    invoke-virtual {p1, v8, v5, v6, v7}, Landroid/os/health/HealthStatsWriter;->addMeasurements(ILjava/lang/String;J)V

    #@67
    goto :goto_1

    #@68
    .line 422
    .end local v0    # "counter":Landroid/os/BatteryStats$Counter;
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;+Landroid/os/BatteryStats$Counter;>;"
    :cond_2
    return-void
.end method

.method public writeProc(Landroid/os/health/HealthStatsWriter;Landroid/os/BatteryStats$Uid$Proc;)V
    .locals 4
    .param p1, "procWriter"    # Landroid/os/health/HealthStatsWriter;
    .param p2, "proc"    # Landroid/os/BatteryStats$Uid$Proc;

    #@0
    .prologue
    const/4 v3, 0x2

    #@1
    .line 396
    invoke-virtual {p2, v3}, Landroid/os/BatteryStats$Uid$Proc;->getUserTime(I)J

    #@4
    move-result-wide v0

    #@5
    .line 395
    const/16 v2, 0x7531

    #@7
    invoke-virtual {p1, v2, v0, v1}, Landroid/os/health/HealthStatsWriter;->addMeasurement(IJ)V

    #@a
    .line 400
    invoke-virtual {p2, v3}, Landroid/os/BatteryStats$Uid$Proc;->getSystemTime(I)J

    #@d
    move-result-wide v0

    #@e
    .line 399
    const/16 v2, 0x7532

    #@10
    invoke-virtual {p1, v2, v0, v1}, Landroid/os/health/HealthStatsWriter;->addMeasurement(IJ)V

    #@13
    .line 404
    invoke-virtual {p2, v3}, Landroid/os/BatteryStats$Uid$Proc;->getStarts(I)I

    #@16
    move-result v0

    #@17
    int-to-long v0, v0

    #@18
    .line 403
    const/16 v2, 0x7533

    #@1a
    invoke-virtual {p1, v2, v0, v1}, Landroid/os/health/HealthStatsWriter;->addMeasurement(IJ)V

    #@1d
    .line 408
    invoke-virtual {p2, v3}, Landroid/os/BatteryStats$Uid$Proc;->getNumCrashes(I)I

    #@20
    move-result v0

    #@21
    int-to-long v0, v0

    #@22
    .line 407
    const/16 v2, 0x7534

    #@24
    invoke-virtual {p1, v2, v0, v1}, Landroid/os/health/HealthStatsWriter;->addMeasurement(IJ)V

    #@27
    .line 412
    invoke-virtual {p2, v3}, Landroid/os/BatteryStats$Uid$Proc;->getNumAnrs(I)I

    #@2a
    move-result v0

    #@2b
    int-to-long v0, v0

    #@2c
    .line 411
    const/16 v2, 0x7535

    #@2e
    invoke-virtual {p1, v2, v0, v1}, Landroid/os/health/HealthStatsWriter;->addMeasurement(IJ)V

    #@31
    .line 416
    invoke-virtual {p2, v3}, Landroid/os/BatteryStats$Uid$Proc;->getForegroundTime(I)J

    #@34
    move-result-wide v0

    #@35
    .line 415
    const/16 v2, 0x7536

    #@37
    invoke-virtual {p1, v2, v0, v1}, Landroid/os/health/HealthStatsWriter;->addMeasurement(IJ)V

    #@3a
    .line 393
    return-void
.end method

.method public writeServ(Landroid/os/health/HealthStatsWriter;Landroid/os/BatteryStats$Uid$Pkg$Serv;)V
    .locals 4
    .param p1, "servWriter"    # Landroid/os/health/HealthStatsWriter;
    .param p2, "serv"    # Landroid/os/BatteryStats$Uid$Pkg$Serv;

    #@0
    .prologue
    const/4 v3, 0x2

    #@1
    .line 448
    invoke-virtual {p2, v3}, Landroid/os/BatteryStats$Uid$Pkg$Serv;->getStarts(I)I

    #@4
    move-result v0

    #@5
    int-to-long v0, v0

    #@6
    .line 447
    const v2, 0xc351

    #@9
    invoke-virtual {p1, v2, v0, v1}, Landroid/os/health/HealthStatsWriter;->addMeasurement(IJ)V

    #@c
    .line 452
    invoke-virtual {p2, v3}, Landroid/os/BatteryStats$Uid$Pkg$Serv;->getLaunches(I)I

    #@f
    move-result v0

    #@10
    int-to-long v0, v0

    #@11
    .line 451
    const v2, 0xc352

    #@14
    invoke-virtual {p1, v2, v0, v1}, Landroid/os/health/HealthStatsWriter;->addMeasurement(IJ)V

    #@17
    .line 445
    return-void
.end method

.method public writeUid(Landroid/os/health/HealthStatsWriter;Landroid/os/BatteryStats;Landroid/os/BatteryStats$Uid;)V
    .locals 30
    .param p1, "uidWriter"    # Landroid/os/health/HealthStatsWriter;
    .param p2, "bs"    # Landroid/os/BatteryStats;
    .param p3, "uid"    # Landroid/os/BatteryStats$Uid;

    #@0
    .prologue
    .line 65
    move-object/from16 v0, p0

    #@2
    iget-wide v0, v0, Lcom/android/server/am/HealthStatsBatteryStatsWriter;->mNowRealtimeMs:J

    #@4
    move-wide/from16 v24, v0

    #@6
    const-wide/16 v26, 0x3e8

    #@8
    mul-long v24, v24, v26

    #@a
    const/16 v26, 0x2

    #@c
    move-object/from16 v0, p2

    #@e
    move-wide/from16 v1, v24

    #@10
    move/from16 v3, v26

    #@12
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/BatteryStats;->computeBatteryRealtime(JI)J

    #@15
    move-result-wide v24

    #@16
    const-wide/16 v26, 0x3e8

    #@18
    div-long v24, v24, v26

    #@1a
    .line 64
    const/16 v26, 0x2711

    #@1c
    move-object/from16 v0, p1

    #@1e
    move/from16 v1, v26

    #@20
    move-wide/from16 v2, v24

    #@22
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/health/HealthStatsWriter;->addMeasurement(IJ)V

    #@25
    .line 69
    move-object/from16 v0, p0

    #@27
    iget-wide v0, v0, Lcom/android/server/am/HealthStatsBatteryStatsWriter;->mNowUptimeMs:J

    #@29
    move-wide/from16 v24, v0

    #@2b
    const-wide/16 v26, 0x3e8

    #@2d
    mul-long v24, v24, v26

    #@2f
    const/16 v26, 0x2

    #@31
    move-object/from16 v0, p2

    #@33
    move-wide/from16 v1, v24

    #@35
    move/from16 v3, v26

    #@37
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/BatteryStats;->computeBatteryUptime(JI)J

    #@3a
    move-result-wide v24

    #@3b
    const-wide/16 v26, 0x3e8

    #@3d
    div-long v24, v24, v26

    #@3f
    .line 68
    const/16 v26, 0x2712

    #@41
    move-object/from16 v0, p1

    #@43
    move/from16 v1, v26

    #@45
    move-wide/from16 v2, v24

    #@47
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/health/HealthStatsWriter;->addMeasurement(IJ)V

    #@4a
    .line 74
    move-object/from16 v0, p0

    #@4c
    iget-wide v0, v0, Lcom/android/server/am/HealthStatsBatteryStatsWriter;->mNowRealtimeMs:J

    #@4e
    move-wide/from16 v24, v0

    #@50
    const-wide/16 v26, 0x3e8

    #@52
    mul-long v24, v24, v26

    #@54
    const/16 v26, 0x2

    #@56
    .line 73
    move-object/from16 v0, p2

    #@58
    move-wide/from16 v1, v24

    #@5a
    move/from16 v3, v26

    #@5c
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/BatteryStats;->computeBatteryScreenOffRealtime(JI)J

    #@5f
    move-result-wide v24

    #@60
    .line 74
    const-wide/16 v26, 0x3e8

    #@62
    .line 73
    div-long v24, v24, v26

    #@64
    .line 72
    const/16 v26, 0x2713

    #@66
    move-object/from16 v0, p1

    #@68
    move/from16 v1, v26

    #@6a
    move-wide/from16 v2, v24

    #@6c
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/health/HealthStatsWriter;->addMeasurement(IJ)V

    #@6f
    .line 78
    move-object/from16 v0, p0

    #@71
    iget-wide v0, v0, Lcom/android/server/am/HealthStatsBatteryStatsWriter;->mNowUptimeMs:J

    #@73
    move-wide/from16 v24, v0

    #@75
    const-wide/16 v26, 0x3e8

    #@77
    mul-long v24, v24, v26

    #@79
    const/16 v26, 0x2

    #@7b
    move-object/from16 v0, p2

    #@7d
    move-wide/from16 v1, v24

    #@7f
    move/from16 v3, v26

    #@81
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/BatteryStats;->computeBatteryScreenOffUptime(JI)J

    #@84
    move-result-wide v24

    #@85
    const-wide/16 v26, 0x3e8

    #@87
    div-long v24, v24, v26

    #@89
    .line 77
    const/16 v26, 0x2714

    #@8b
    move-object/from16 v0, p1

    #@8d
    move/from16 v1, v26

    #@8f
    move-wide/from16 v2, v24

    #@91
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/health/HealthStatsWriter;->addMeasurement(IJ)V

    #@94
    .line 85
    invoke-virtual/range {p3 .. p3}, Landroid/os/BatteryStats$Uid;->getWakelockStats()Landroid/util/ArrayMap;

    #@97
    move-result-object v24

    #@98
    invoke-virtual/range {v24 .. v24}, Landroid/util/ArrayMap;->entrySet()Ljava/util/Set;

    #@9b
    move-result-object v24

    #@9c
    .line 84
    invoke-interface/range {v24 .. v24}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@9f
    move-result-object v13

    #@a0
    .local v13, "entry$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    #@a3
    move-result v24

    #@a4
    if-eqz v24, :cond_0

    #@a6
    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@a9
    move-result-object v12

    #@aa
    check-cast v12, Ljava/util/Map$Entry;

    #@ac
    .line 86
    .local v12, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;+Landroid/os/BatteryStats$Uid$Wakelock;>;"
    invoke-interface {v12}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    #@af
    move-result-object v15

    #@b0
    check-cast v15, Ljava/lang/String;

    #@b2
    .line 87
    .local v15, "key":Ljava/lang/String;
    invoke-interface {v12}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    #@b5
    move-result-object v22

    #@b6
    check-cast v22, Landroid/os/BatteryStats$Uid$Wakelock;

    #@b8
    .line 90
    .local v22, "wakelock":Landroid/os/BatteryStats$Uid$Wakelock;
    const/16 v24, 0x1

    #@ba
    move-object/from16 v0, v22

    #@bc
    move/from16 v1, v24

    #@be
    invoke-virtual {v0, v1}, Landroid/os/BatteryStats$Uid$Wakelock;->getWakeTime(I)Landroid/os/BatteryStats$Timer;

    #@c1
    move-result-object v19

    #@c2
    .line 91
    .local v19, "timer":Landroid/os/BatteryStats$Timer;
    const/16 v24, 0x2715

    #@c4
    move-object/from16 v0, p0

    #@c6
    move-object/from16 v1, p1

    #@c8
    move/from16 v2, v24

    #@ca
    move-object/from16 v3, v19

    #@cc
    invoke-direct {v0, v1, v2, v15, v3}, Lcom/android/server/am/HealthStatsBatteryStatsWriter;->addTimers(Landroid/os/health/HealthStatsWriter;ILjava/lang/String;Landroid/os/BatteryStats$Timer;)V

    #@cf
    .line 94
    const/16 v24, 0x0

    #@d1
    move-object/from16 v0, v22

    #@d3
    move/from16 v1, v24

    #@d5
    invoke-virtual {v0, v1}, Landroid/os/BatteryStats$Uid$Wakelock;->getWakeTime(I)Landroid/os/BatteryStats$Timer;

    #@d8
    move-result-object v19

    #@d9
    .line 95
    const/16 v24, 0x2716

    #@db
    move-object/from16 v0, p0

    #@dd
    move-object/from16 v1, p1

    #@df
    move/from16 v2, v24

    #@e1
    move-object/from16 v3, v19

    #@e3
    invoke-direct {v0, v1, v2, v15, v3}, Lcom/android/server/am/HealthStatsBatteryStatsWriter;->addTimers(Landroid/os/health/HealthStatsWriter;ILjava/lang/String;Landroid/os/BatteryStats$Timer;)V

    #@e6
    .line 98
    const/16 v24, 0x2

    #@e8
    move-object/from16 v0, v22

    #@ea
    move/from16 v1, v24

    #@ec
    invoke-virtual {v0, v1}, Landroid/os/BatteryStats$Uid$Wakelock;->getWakeTime(I)Landroid/os/BatteryStats$Timer;

    #@ef
    move-result-object v19

    #@f0
    .line 99
    const/16 v24, 0x2717

    #@f2
    move-object/from16 v0, p0

    #@f4
    move-object/from16 v1, p1

    #@f6
    move/from16 v2, v24

    #@f8
    move-object/from16 v3, v19

    #@fa
    invoke-direct {v0, v1, v2, v15, v3}, Lcom/android/server/am/HealthStatsBatteryStatsWriter;->addTimers(Landroid/os/health/HealthStatsWriter;ILjava/lang/String;Landroid/os/BatteryStats$Timer;)V

    #@fd
    .line 102
    const/16 v24, 0x12

    #@ff
    move-object/from16 v0, v22

    #@101
    move/from16 v1, v24

    #@103
    invoke-virtual {v0, v1}, Landroid/os/BatteryStats$Uid$Wakelock;->getWakeTime(I)Landroid/os/BatteryStats$Timer;

    #@106
    move-result-object v19

    #@107
    .line 103
    const/16 v24, 0x2718

    #@109
    move-object/from16 v0, p0

    #@10b
    move-object/from16 v1, p1

    #@10d
    move/from16 v2, v24

    #@10f
    move-object/from16 v3, v19

    #@111
    invoke-direct {v0, v1, v2, v15, v3}, Lcom/android/server/am/HealthStatsBatteryStatsWriter;->addTimers(Landroid/os/health/HealthStatsWriter;ILjava/lang/String;Landroid/os/BatteryStats$Timer;)V

    #@114
    goto :goto_0

    #@115
    .line 108
    .end local v12    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;+Landroid/os/BatteryStats$Uid$Wakelock;>;"
    .end local v15    # "key":Ljava/lang/String;
    .end local v19    # "timer":Landroid/os/BatteryStats$Timer;
    .end local v22    # "wakelock":Landroid/os/BatteryStats$Uid$Wakelock;
    :cond_0
    invoke-virtual/range {p3 .. p3}, Landroid/os/BatteryStats$Uid;->getSyncStats()Landroid/util/ArrayMap;

    #@118
    move-result-object v24

    #@119
    invoke-virtual/range {v24 .. v24}, Landroid/util/ArrayMap;->entrySet()Ljava/util/Set;

    #@11c
    move-result-object v24

    #@11d
    .line 107
    invoke-interface/range {v24 .. v24}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@120
    move-result-object v13

    #@121
    :goto_1
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    #@124
    move-result v24

    #@125
    if-eqz v24, :cond_1

    #@127
    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@12a
    move-result-object v9

    #@12b
    check-cast v9, Ljava/util/Map$Entry;

    #@12d
    .line 109
    .local v9, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;+Landroid/os/BatteryStats$Timer;>;"
    invoke-interface {v9}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    #@130
    move-result-object v24

    #@131
    check-cast v24, Ljava/lang/String;

    #@133
    invoke-interface {v9}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    #@136
    move-result-object v25

    #@137
    check-cast v25, Landroid/os/BatteryStats$Timer;

    #@139
    const/16 v26, 0x2719

    #@13b
    move-object/from16 v0, p0

    #@13d
    move-object/from16 v1, p1

    #@13f
    move/from16 v2, v26

    #@141
    move-object/from16 v3, v24

    #@143
    move-object/from16 v4, v25

    #@145
    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/server/am/HealthStatsBatteryStatsWriter;->addTimers(Landroid/os/health/HealthStatsWriter;ILjava/lang/String;Landroid/os/BatteryStats$Timer;)V

    #@148
    goto :goto_1

    #@149
    .line 114
    .end local v9    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;+Landroid/os/BatteryStats$Timer;>;"
    :cond_1
    invoke-virtual/range {p3 .. p3}, Landroid/os/BatteryStats$Uid;->getJobStats()Landroid/util/ArrayMap;

    #@14c
    move-result-object v24

    #@14d
    invoke-virtual/range {v24 .. v24}, Landroid/util/ArrayMap;->entrySet()Ljava/util/Set;

    #@150
    move-result-object v24

    #@151
    .line 113
    invoke-interface/range {v24 .. v24}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@154
    move-result-object v13

    #@155
    :goto_2
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    #@158
    move-result v24

    #@159
    if-eqz v24, :cond_2

    #@15b
    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@15e
    move-result-object v9

    #@15f
    check-cast v9, Ljava/util/Map$Entry;

    #@161
    .line 115
    .restart local v9    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;+Landroid/os/BatteryStats$Timer;>;"
    invoke-interface {v9}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    #@164
    move-result-object v24

    #@165
    check-cast v24, Ljava/lang/String;

    #@167
    invoke-interface {v9}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    #@16a
    move-result-object v25

    #@16b
    check-cast v25, Landroid/os/BatteryStats$Timer;

    #@16d
    const/16 v26, 0x271a

    #@16f
    move-object/from16 v0, p0

    #@171
    move-object/from16 v1, p1

    #@173
    move/from16 v2, v26

    #@175
    move-object/from16 v3, v24

    #@177
    move-object/from16 v4, v25

    #@179
    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/server/am/HealthStatsBatteryStatsWriter;->addTimers(Landroid/os/health/HealthStatsWriter;ILjava/lang/String;Landroid/os/BatteryStats$Timer;)V

    #@17c
    goto :goto_2

    #@17d
    .line 119
    .end local v9    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;+Landroid/os/BatteryStats$Timer;>;"
    :cond_2
    invoke-virtual/range {p3 .. p3}, Landroid/os/BatteryStats$Uid;->getSensorStats()Landroid/util/SparseArray;

    #@180
    move-result-object v18

    #@181
    .line 120
    .local v18, "sensors":Landroid/util/SparseArray;, "Landroid/util/SparseArray<+Landroid/os/BatteryStats$Uid$Sensor;>;"
    invoke-virtual/range {v18 .. v18}, Landroid/util/SparseArray;->size()I

    #@184
    move-result v6

    #@185
    .line 121
    .local v6, "N":I
    const/4 v14, 0x0

    #@186
    .local v14, "i":I
    :goto_3
    if-ge v14, v6, :cond_4

    #@188
    .line 122
    move-object/from16 v0, v18

    #@18a
    invoke-virtual {v0, v14}, Landroid/util/SparseArray;->keyAt(I)I

    #@18d
    move-result v17

    #@18e
    .line 125
    .local v17, "sensorId":I
    const/16 v24, -0x2710

    #@190
    move/from16 v0, v17

    #@192
    move/from16 v1, v24

    #@194
    if-ne v0, v1, :cond_3

    #@196
    .line 127
    move-object/from16 v0, v18

    #@198
    invoke-virtual {v0, v14}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    #@19b
    move-result-object v24

    #@19c
    check-cast v24, Landroid/os/BatteryStats$Uid$Sensor;

    #@19e
    invoke-virtual/range {v24 .. v24}, Landroid/os/BatteryStats$Uid$Sensor;->getSensorTime()Landroid/os/BatteryStats$Timer;

    #@1a1
    move-result-object v24

    #@1a2
    .line 126
    const/16 v25, 0x271b

    #@1a4
    move-object/from16 v0, p0

    #@1a6
    move-object/from16 v1, p1

    #@1a8
    move/from16 v2, v25

    #@1aa
    move-object/from16 v3, v24

    #@1ac
    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/am/HealthStatsBatteryStatsWriter;->addTimer(Landroid/os/health/HealthStatsWriter;ILandroid/os/BatteryStats$Timer;)V

    #@1af
    .line 121
    :goto_4
    add-int/lit8 v14, v14, 0x1

    #@1b1
    goto :goto_3

    #@1b2
    .line 129
    :cond_3
    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    #@1b5
    move-result-object v25

    #@1b6
    .line 130
    move-object/from16 v0, v18

    #@1b8
    invoke-virtual {v0, v14}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    #@1bb
    move-result-object v24

    #@1bc
    check-cast v24, Landroid/os/BatteryStats$Uid$Sensor;

    #@1be
    invoke-virtual/range {v24 .. v24}, Landroid/os/BatteryStats$Uid$Sensor;->getSensorTime()Landroid/os/BatteryStats$Timer;

    #@1c1
    move-result-object v24

    #@1c2
    .line 129
    const/16 v26, 0x271c

    #@1c4
    move-object/from16 v0, p0

    #@1c6
    move-object/from16 v1, p1

    #@1c8
    move/from16 v2, v26

    #@1ca
    move-object/from16 v3, v25

    #@1cc
    move-object/from16 v4, v24

    #@1ce
    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/server/am/HealthStatsBatteryStatsWriter;->addTimers(Landroid/os/health/HealthStatsWriter;ILjava/lang/String;Landroid/os/BatteryStats$Timer;)V

    #@1d1
    goto :goto_4

    #@1d2
    .line 135
    .end local v17    # "sensorId":I
    :cond_4
    invoke-virtual/range {p3 .. p3}, Landroid/os/BatteryStats$Uid;->getPidStats()Landroid/util/SparseArray;

    #@1d5
    move-result-object v16

    #@1d6
    .line 136
    .local v16, "pids":Landroid/util/SparseArray;, "Landroid/util/SparseArray<+Landroid/os/BatteryStats$Uid$Pid;>;"
    invoke-virtual/range {v16 .. v16}, Landroid/util/SparseArray;->size()I

    #@1d9
    move-result v6

    #@1da
    .line 137
    const/4 v14, 0x0

    #@1db
    :goto_5
    if-ge v14, v6, :cond_5

    #@1dd
    .line 138
    new-instance v23, Landroid/os/health/HealthStatsWriter;

    #@1df
    sget-object v24, Landroid/os/health/PidHealthStats;->CONSTANTS:Landroid/os/health/HealthKeys$Constants;

    #@1e1
    invoke-direct/range {v23 .. v24}, Landroid/os/health/HealthStatsWriter;-><init>(Landroid/os/health/HealthKeys$Constants;)V

    #@1e4
    .line 139
    .local v23, "writer":Landroid/os/health/HealthStatsWriter;
    move-object/from16 v0, v16

    #@1e6
    invoke-virtual {v0, v14}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    #@1e9
    move-result-object v24

    #@1ea
    check-cast v24, Landroid/os/BatteryStats$Uid$Pid;

    #@1ec
    move-object/from16 v0, p0

    #@1ee
    move-object/from16 v1, v23

    #@1f0
    move-object/from16 v2, v24

    #@1f2
    invoke-virtual {v0, v1, v2}, Lcom/android/server/am/HealthStatsBatteryStatsWriter;->writePid(Landroid/os/health/HealthStatsWriter;Landroid/os/BatteryStats$Uid$Pid;)V

    #@1f5
    .line 140
    move-object/from16 v0, v16

    #@1f7
    invoke-virtual {v0, v14}, Landroid/util/SparseArray;->keyAt(I)I

    #@1fa
    move-result v24

    #@1fb
    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    #@1fe
    move-result-object v24

    #@1ff
    const/16 v25, 0x271d

    #@201
    move-object/from16 v0, p1

    #@203
    move/from16 v1, v25

    #@205
    move-object/from16 v2, v24

    #@207
    move-object/from16 v3, v23

    #@209
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/health/HealthStatsWriter;->addStats(ILjava/lang/String;Landroid/os/health/HealthStatsWriter;)V

    #@20c
    .line 137
    add-int/lit8 v14, v14, 0x1

    #@20e
    goto :goto_5

    #@20f
    .line 145
    .end local v23    # "writer":Landroid/os/health/HealthStatsWriter;
    :cond_5
    invoke-virtual/range {p3 .. p3}, Landroid/os/BatteryStats$Uid;->getProcessStats()Landroid/util/ArrayMap;

    #@212
    move-result-object v24

    #@213
    invoke-virtual/range {v24 .. v24}, Landroid/util/ArrayMap;->entrySet()Ljava/util/Set;

    #@216
    move-result-object v24

    #@217
    .line 144
    invoke-interface/range {v24 .. v24}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@21a
    move-result-object v13

    #@21b
    :goto_6
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    #@21e
    move-result v24

    #@21f
    if-eqz v24, :cond_6

    #@221
    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@224
    move-result-object v11

    #@225
    check-cast v11, Ljava/util/Map$Entry;

    #@227
    .line 146
    .local v11, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;+Landroid/os/BatteryStats$Uid$Proc;>;"
    new-instance v23, Landroid/os/health/HealthStatsWriter;

    #@229
    sget-object v24, Landroid/os/health/ProcessHealthStats;->CONSTANTS:Landroid/os/health/HealthKeys$Constants;

    #@22b
    invoke-direct/range {v23 .. v24}, Landroid/os/health/HealthStatsWriter;-><init>(Landroid/os/health/HealthKeys$Constants;)V

    #@22e
    .line 147
    .restart local v23    # "writer":Landroid/os/health/HealthStatsWriter;
    invoke-interface {v11}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    #@231
    move-result-object v24

    #@232
    check-cast v24, Landroid/os/BatteryStats$Uid$Proc;

    #@234
    move-object/from16 v0, p0

    #@236
    move-object/from16 v1, v23

    #@238
    move-object/from16 v2, v24

    #@23a
    invoke-virtual {v0, v1, v2}, Lcom/android/server/am/HealthStatsBatteryStatsWriter;->writeProc(Landroid/os/health/HealthStatsWriter;Landroid/os/BatteryStats$Uid$Proc;)V

    #@23d
    .line 148
    invoke-interface {v11}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    #@240
    move-result-object v24

    #@241
    check-cast v24, Ljava/lang/String;

    #@243
    const/16 v25, 0x271e

    #@245
    move-object/from16 v0, p1

    #@247
    move/from16 v1, v25

    #@249
    move-object/from16 v2, v24

    #@24b
    move-object/from16 v3, v23

    #@24d
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/health/HealthStatsWriter;->addStats(ILjava/lang/String;Landroid/os/health/HealthStatsWriter;)V

    #@250
    goto :goto_6

    #@251
    .line 153
    .end local v11    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;+Landroid/os/BatteryStats$Uid$Proc;>;"
    .end local v23    # "writer":Landroid/os/health/HealthStatsWriter;
    :cond_6
    invoke-virtual/range {p3 .. p3}, Landroid/os/BatteryStats$Uid;->getPackageStats()Landroid/util/ArrayMap;

    #@254
    move-result-object v24

    #@255
    invoke-virtual/range {v24 .. v24}, Landroid/util/ArrayMap;->entrySet()Ljava/util/Set;

    #@258
    move-result-object v24

    #@259
    .line 152
    invoke-interface/range {v24 .. v24}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@25c
    move-result-object v13

    #@25d
    :goto_7
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    #@260
    move-result v24

    #@261
    if-eqz v24, :cond_7

    #@263
    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@266
    move-result-object v10

    #@267
    check-cast v10, Ljava/util/Map$Entry;

    #@269
    .line 154
    .local v10, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;+Landroid/os/BatteryStats$Uid$Pkg;>;"
    new-instance v23, Landroid/os/health/HealthStatsWriter;

    #@26b
    sget-object v24, Landroid/os/health/PackageHealthStats;->CONSTANTS:Landroid/os/health/HealthKeys$Constants;

    #@26d
    invoke-direct/range {v23 .. v24}, Landroid/os/health/HealthStatsWriter;-><init>(Landroid/os/health/HealthKeys$Constants;)V

    #@270
    .line 155
    .restart local v23    # "writer":Landroid/os/health/HealthStatsWriter;
    invoke-interface {v10}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    #@273
    move-result-object v24

    #@274
    check-cast v24, Landroid/os/BatteryStats$Uid$Pkg;

    #@276
    move-object/from16 v0, p0

    #@278
    move-object/from16 v1, v23

    #@27a
    move-object/from16 v2, v24

    #@27c
    invoke-virtual {v0, v1, v2}, Lcom/android/server/am/HealthStatsBatteryStatsWriter;->writePkg(Landroid/os/health/HealthStatsWriter;Landroid/os/BatteryStats$Uid$Pkg;)V

    #@27f
    .line 156
    invoke-interface {v10}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    #@282
    move-result-object v24

    #@283
    check-cast v24, Ljava/lang/String;

    #@285
    const/16 v25, 0x271f

    #@287
    move-object/from16 v0, p1

    #@289
    move/from16 v1, v25

    #@28b
    move-object/from16 v2, v24

    #@28d
    move-object/from16 v3, v23

    #@28f
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/health/HealthStatsWriter;->addStats(ILjava/lang/String;Landroid/os/health/HealthStatsWriter;)V

    #@292
    goto :goto_7

    #@293
    .line 159
    .end local v10    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;+Landroid/os/BatteryStats$Uid$Pkg;>;"
    .end local v23    # "writer":Landroid/os/health/HealthStatsWriter;
    :cond_7
    invoke-virtual/range {p3 .. p3}, Landroid/os/BatteryStats$Uid;->getWifiControllerActivity()Landroid/os/BatteryStats$ControllerActivityCounter;

    #@296
    move-result-object v7

    #@297
    .line 160
    .local v7, "controller":Landroid/os/BatteryStats$ControllerActivityCounter;
    if-eqz v7, :cond_9

    #@299
    .line 163
    invoke-virtual {v7}, Landroid/os/BatteryStats$ControllerActivityCounter;->getIdleTimeCounter()Landroid/os/BatteryStats$LongCounter;

    #@29c
    move-result-object v24

    #@29d
    const/16 v25, 0x2

    #@29f
    invoke-virtual/range {v24 .. v25}, Landroid/os/BatteryStats$LongCounter;->getCountLocked(I)J

    #@2a2
    move-result-wide v24

    #@2a3
    .line 162
    const/16 v26, 0x2720

    #@2a5
    move-object/from16 v0, p1

    #@2a7
    move/from16 v1, v26

    #@2a9
    move-wide/from16 v2, v24

    #@2ab
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/health/HealthStatsWriter;->addMeasurement(IJ)V

    #@2ae
    .line 166
    invoke-virtual {v7}, Landroid/os/BatteryStats$ControllerActivityCounter;->getRxTimeCounter()Landroid/os/BatteryStats$LongCounter;

    #@2b1
    move-result-object v24

    #@2b2
    const/16 v25, 0x2

    #@2b4
    invoke-virtual/range {v24 .. v25}, Landroid/os/BatteryStats$LongCounter;->getCountLocked(I)J

    #@2b7
    move-result-wide v24

    #@2b8
    .line 165
    const/16 v26, 0x2721

    #@2ba
    move-object/from16 v0, p1

    #@2bc
    move/from16 v1, v26

    #@2be
    move-wide/from16 v2, v24

    #@2c0
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/health/HealthStatsWriter;->addMeasurement(IJ)V

    #@2c3
    .line 168
    const-wide/16 v20, 0x0

    #@2c5
    .line 169
    .local v20, "sum":J
    invoke-virtual {v7}, Landroid/os/BatteryStats$ControllerActivityCounter;->getTxTimeCounters()[Landroid/os/BatteryStats$LongCounter;

    #@2c8
    move-result-object v25

    #@2c9
    const/16 v24, 0x0

    #@2cb
    move-object/from16 v0, v25

    #@2cd
    array-length v0, v0

    #@2ce
    move/from16 v26, v0

    #@2d0
    :goto_8
    move/from16 v0, v24

    #@2d2
    move/from16 v1, v26

    #@2d4
    if-ge v0, v1, :cond_8

    #@2d6
    aget-object v8, v25, v24

    #@2d8
    .line 170
    .local v8, "counter":Landroid/os/BatteryStats$LongCounter;
    const/16 v27, 0x2

    #@2da
    move/from16 v0, v27

    #@2dc
    invoke-virtual {v8, v0}, Landroid/os/BatteryStats$LongCounter;->getCountLocked(I)J

    #@2df
    move-result-wide v28

    #@2e0
    add-long v20, v20, v28

    #@2e2
    .line 169
    add-int/lit8 v24, v24, 0x1

    #@2e4
    goto :goto_8

    #@2e5
    .line 172
    .end local v8    # "counter":Landroid/os/BatteryStats$LongCounter;
    :cond_8
    const/16 v24, 0x2722

    #@2e7
    move-object/from16 v0, p1

    #@2e9
    move/from16 v1, v24

    #@2eb
    move-wide/from16 v2, v20

    #@2ed
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/health/HealthStatsWriter;->addMeasurement(IJ)V

    #@2f0
    .line 175
    invoke-virtual {v7}, Landroid/os/BatteryStats$ControllerActivityCounter;->getPowerCounter()Landroid/os/BatteryStats$LongCounter;

    #@2f3
    move-result-object v24

    #@2f4
    const/16 v25, 0x2

    #@2f6
    invoke-virtual/range {v24 .. v25}, Landroid/os/BatteryStats$LongCounter;->getCountLocked(I)J

    #@2f9
    move-result-wide v24

    #@2fa
    .line 174
    const/16 v26, 0x2723

    #@2fc
    move-object/from16 v0, p1

    #@2fe
    move/from16 v1, v26

    #@300
    move-wide/from16 v2, v24

    #@302
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/health/HealthStatsWriter;->addMeasurement(IJ)V

    #@305
    .line 178
    .end local v20    # "sum":J
    :cond_9
    invoke-virtual/range {p3 .. p3}, Landroid/os/BatteryStats$Uid;->getBluetoothControllerActivity()Landroid/os/BatteryStats$ControllerActivityCounter;

    #@308
    move-result-object v7

    #@309
    .line 179
    if-eqz v7, :cond_b

    #@30b
    .line 182
    invoke-virtual {v7}, Landroid/os/BatteryStats$ControllerActivityCounter;->getIdleTimeCounter()Landroid/os/BatteryStats$LongCounter;

    #@30e
    move-result-object v24

    #@30f
    const/16 v25, 0x2

    #@311
    invoke-virtual/range {v24 .. v25}, Landroid/os/BatteryStats$LongCounter;->getCountLocked(I)J

    #@314
    move-result-wide v24

    #@315
    .line 181
    const/16 v26, 0x2724

    #@317
    move-object/from16 v0, p1

    #@319
    move/from16 v1, v26

    #@31b
    move-wide/from16 v2, v24

    #@31d
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/health/HealthStatsWriter;->addMeasurement(IJ)V

    #@320
    .line 185
    invoke-virtual {v7}, Landroid/os/BatteryStats$ControllerActivityCounter;->getRxTimeCounter()Landroid/os/BatteryStats$LongCounter;

    #@323
    move-result-object v24

    #@324
    const/16 v25, 0x2

    #@326
    invoke-virtual/range {v24 .. v25}, Landroid/os/BatteryStats$LongCounter;->getCountLocked(I)J

    #@329
    move-result-wide v24

    #@32a
    .line 184
    const/16 v26, 0x2725

    #@32c
    move-object/from16 v0, p1

    #@32e
    move/from16 v1, v26

    #@330
    move-wide/from16 v2, v24

    #@332
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/health/HealthStatsWriter;->addMeasurement(IJ)V

    #@335
    .line 187
    const-wide/16 v20, 0x0

    #@337
    .line 188
    .restart local v20    # "sum":J
    invoke-virtual {v7}, Landroid/os/BatteryStats$ControllerActivityCounter;->getTxTimeCounters()[Landroid/os/BatteryStats$LongCounter;

    #@33a
    move-result-object v25

    #@33b
    const/16 v24, 0x0

    #@33d
    move-object/from16 v0, v25

    #@33f
    array-length v0, v0

    #@340
    move/from16 v26, v0

    #@342
    :goto_9
    move/from16 v0, v24

    #@344
    move/from16 v1, v26

    #@346
    if-ge v0, v1, :cond_a

    #@348
    aget-object v8, v25, v24

    #@34a
    .line 189
    .restart local v8    # "counter":Landroid/os/BatteryStats$LongCounter;
    const/16 v27, 0x2

    #@34c
    move/from16 v0, v27

    #@34e
    invoke-virtual {v8, v0}, Landroid/os/BatteryStats$LongCounter;->getCountLocked(I)J

    #@351
    move-result-wide v28

    #@352
    add-long v20, v20, v28

    #@354
    .line 188
    add-int/lit8 v24, v24, 0x1

    #@356
    goto :goto_9

    #@357
    .line 191
    .end local v8    # "counter":Landroid/os/BatteryStats$LongCounter;
    :cond_a
    const/16 v24, 0x2726

    #@359
    move-object/from16 v0, p1

    #@35b
    move/from16 v1, v24

    #@35d
    move-wide/from16 v2, v20

    #@35f
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/health/HealthStatsWriter;->addMeasurement(IJ)V

    #@362
    .line 194
    invoke-virtual {v7}, Landroid/os/BatteryStats$ControllerActivityCounter;->getPowerCounter()Landroid/os/BatteryStats$LongCounter;

    #@365
    move-result-object v24

    #@366
    const/16 v25, 0x2

    #@368
    invoke-virtual/range {v24 .. v25}, Landroid/os/BatteryStats$LongCounter;->getCountLocked(I)J

    #@36b
    move-result-wide v24

    #@36c
    .line 193
    const/16 v26, 0x2727

    #@36e
    move-object/from16 v0, p1

    #@370
    move/from16 v1, v26

    #@372
    move-wide/from16 v2, v24

    #@374
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/health/HealthStatsWriter;->addMeasurement(IJ)V

    #@377
    .line 197
    .end local v20    # "sum":J
    :cond_b
    invoke-virtual/range {p3 .. p3}, Landroid/os/BatteryStats$Uid;->getModemControllerActivity()Landroid/os/BatteryStats$ControllerActivityCounter;

    #@37a
    move-result-object v7

    #@37b
    .line 198
    if-eqz v7, :cond_d

    #@37d
    .line 201
    invoke-virtual {v7}, Landroid/os/BatteryStats$ControllerActivityCounter;->getIdleTimeCounter()Landroid/os/BatteryStats$LongCounter;

    #@380
    move-result-object v24

    #@381
    const/16 v25, 0x2

    #@383
    invoke-virtual/range {v24 .. v25}, Landroid/os/BatteryStats$LongCounter;->getCountLocked(I)J

    #@386
    move-result-wide v24

    #@387
    .line 200
    const/16 v26, 0x2728

    #@389
    move-object/from16 v0, p1

    #@38b
    move/from16 v1, v26

    #@38d
    move-wide/from16 v2, v24

    #@38f
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/health/HealthStatsWriter;->addMeasurement(IJ)V

    #@392
    .line 204
    invoke-virtual {v7}, Landroid/os/BatteryStats$ControllerActivityCounter;->getRxTimeCounter()Landroid/os/BatteryStats$LongCounter;

    #@395
    move-result-object v24

    #@396
    const/16 v25, 0x2

    #@398
    invoke-virtual/range {v24 .. v25}, Landroid/os/BatteryStats$LongCounter;->getCountLocked(I)J

    #@39b
    move-result-wide v24

    #@39c
    .line 203
    const/16 v26, 0x2729

    #@39e
    move-object/from16 v0, p1

    #@3a0
    move/from16 v1, v26

    #@3a2
    move-wide/from16 v2, v24

    #@3a4
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/health/HealthStatsWriter;->addMeasurement(IJ)V

    #@3a7
    .line 206
    const-wide/16 v20, 0x0

    #@3a9
    .line 207
    .restart local v20    # "sum":J
    invoke-virtual {v7}, Landroid/os/BatteryStats$ControllerActivityCounter;->getTxTimeCounters()[Landroid/os/BatteryStats$LongCounter;

    #@3ac
    move-result-object v25

    #@3ad
    const/16 v24, 0x0

    #@3af
    move-object/from16 v0, v25

    #@3b1
    array-length v0, v0

    #@3b2
    move/from16 v26, v0

    #@3b4
    :goto_a
    move/from16 v0, v24

    #@3b6
    move/from16 v1, v26

    #@3b8
    if-ge v0, v1, :cond_c

    #@3ba
    aget-object v8, v25, v24

    #@3bc
    .line 208
    .restart local v8    # "counter":Landroid/os/BatteryStats$LongCounter;
    const/16 v27, 0x2

    #@3be
    move/from16 v0, v27

    #@3c0
    invoke-virtual {v8, v0}, Landroid/os/BatteryStats$LongCounter;->getCountLocked(I)J

    #@3c3
    move-result-wide v28

    #@3c4
    add-long v20, v20, v28

    #@3c6
    .line 207
    add-int/lit8 v24, v24, 0x1

    #@3c8
    goto :goto_a

    #@3c9
    .line 210
    .end local v8    # "counter":Landroid/os/BatteryStats$LongCounter;
    :cond_c
    const/16 v24, 0x272a

    #@3cb
    move-object/from16 v0, p1

    #@3cd
    move/from16 v1, v24

    #@3cf
    move-wide/from16 v2, v20

    #@3d1
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/health/HealthStatsWriter;->addMeasurement(IJ)V

    #@3d4
    .line 213
    invoke-virtual {v7}, Landroid/os/BatteryStats$ControllerActivityCounter;->getPowerCounter()Landroid/os/BatteryStats$LongCounter;

    #@3d7
    move-result-object v24

    #@3d8
    const/16 v25, 0x2

    #@3da
    invoke-virtual/range {v24 .. v25}, Landroid/os/BatteryStats$LongCounter;->getCountLocked(I)J

    #@3dd
    move-result-wide v24

    #@3de
    .line 212
    const/16 v26, 0x272b

    #@3e0
    move-object/from16 v0, p1

    #@3e2
    move/from16 v1, v26

    #@3e4
    move-wide/from16 v2, v24

    #@3e6
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/health/HealthStatsWriter;->addMeasurement(IJ)V

    #@3e9
    .line 218
    .end local v20    # "sum":J
    :cond_d
    move-object/from16 v0, p0

    #@3eb
    iget-wide v0, v0, Lcom/android/server/am/HealthStatsBatteryStatsWriter;->mNowRealtimeMs:J

    #@3ed
    move-wide/from16 v24, v0

    #@3ef
    const-wide/16 v26, 0x3e8

    #@3f1
    mul-long v24, v24, v26

    #@3f3
    const/16 v26, 0x2

    #@3f5
    move-object/from16 v0, p3

    #@3f7
    move-wide/from16 v1, v24

    #@3f9
    move/from16 v3, v26

    #@3fb
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/BatteryStats$Uid;->getWifiRunningTime(JI)J

    #@3fe
    move-result-wide v24

    #@3ff
    const-wide/16 v26, 0x3e8

    #@401
    div-long v24, v24, v26

    #@403
    .line 217
    const/16 v26, 0x272c

    #@405
    move-object/from16 v0, p1

    #@407
    move/from16 v1, v26

    #@409
    move-wide/from16 v2, v24

    #@40b
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/health/HealthStatsWriter;->addMeasurement(IJ)V

    #@40e
    .line 222
    move-object/from16 v0, p0

    #@410
    iget-wide v0, v0, Lcom/android/server/am/HealthStatsBatteryStatsWriter;->mNowRealtimeMs:J

    #@412
    move-wide/from16 v24, v0

    #@414
    const-wide/16 v26, 0x3e8

    #@416
    mul-long v24, v24, v26

    #@418
    const/16 v26, 0x2

    #@41a
    move-object/from16 v0, p3

    #@41c
    move-wide/from16 v1, v24

    #@41e
    move/from16 v3, v26

    #@420
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/BatteryStats$Uid;->getFullWifiLockTime(JI)J

    #@423
    move-result-wide v24

    #@424
    const-wide/16 v26, 0x3e8

    #@426
    div-long v24, v24, v26

    #@428
    .line 221
    const/16 v26, 0x272d

    #@42a
    move-object/from16 v0, p1

    #@42c
    move/from16 v1, v26

    #@42e
    move-wide/from16 v2, v24

    #@430
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/health/HealthStatsWriter;->addMeasurement(IJ)V

    #@433
    .line 226
    const/16 v24, 0x2

    #@435
    move-object/from16 v0, p3

    #@437
    move/from16 v1, v24

    #@439
    invoke-virtual {v0, v1}, Landroid/os/BatteryStats$Uid;->getWifiScanCount(I)I

    #@43c
    move-result v24

    #@43d
    .line 227
    move-object/from16 v0, p0

    #@43f
    iget-wide v0, v0, Lcom/android/server/am/HealthStatsBatteryStatsWriter;->mNowRealtimeMs:J

    #@441
    move-wide/from16 v26, v0

    #@443
    const-wide/16 v28, 0x3e8

    #@445
    mul-long v26, v26, v28

    #@447
    const/16 v25, 0x2

    #@449
    move-object/from16 v0, p3

    #@44b
    move-wide/from16 v1, v26

    #@44d
    move/from16 v3, v25

    #@44f
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/BatteryStats$Uid;->getWifiScanTime(JI)J

    #@452
    move-result-wide v26

    #@453
    const-wide/16 v28, 0x3e8

    #@455
    div-long v26, v26, v28

    #@457
    .line 225
    const/16 v25, 0x272e

    #@459
    move-object/from16 v0, p1

    #@45b
    move/from16 v1, v25

    #@45d
    move/from16 v2, v24

    #@45f
    move-wide/from16 v3, v26

    #@461
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/os/health/HealthStatsWriter;->addTimer(IIJ)V

    #@464
    .line 231
    move-object/from16 v0, p0

    #@466
    iget-wide v0, v0, Lcom/android/server/am/HealthStatsBatteryStatsWriter;->mNowRealtimeMs:J

    #@468
    move-wide/from16 v24, v0

    #@46a
    const-wide/16 v26, 0x3e8

    #@46c
    mul-long v24, v24, v26

    #@46e
    const/16 v26, 0x2

    #@470
    move-object/from16 v0, p3

    #@472
    move-wide/from16 v1, v24

    #@474
    move/from16 v3, v26

    #@476
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/BatteryStats$Uid;->getWifiMulticastTime(JI)J

    #@479
    move-result-wide v24

    #@47a
    const-wide/16 v26, 0x3e8

    #@47c
    div-long v24, v24, v26

    #@47e
    .line 230
    const/16 v26, 0x272f

    #@480
    move-object/from16 v0, p1

    #@482
    move/from16 v1, v26

    #@484
    move-wide/from16 v2, v24

    #@486
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/health/HealthStatsWriter;->addMeasurement(IJ)V

    #@489
    .line 234
    invoke-virtual/range {p3 .. p3}, Landroid/os/BatteryStats$Uid;->getAudioTurnedOnTimer()Landroid/os/BatteryStats$Timer;

    #@48c
    move-result-object v24

    #@48d
    const/16 v25, 0x2730

    #@48f
    move-object/from16 v0, p0

    #@491
    move-object/from16 v1, p1

    #@493
    move/from16 v2, v25

    #@495
    move-object/from16 v3, v24

    #@497
    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/am/HealthStatsBatteryStatsWriter;->addTimer(Landroid/os/health/HealthStatsWriter;ILandroid/os/BatteryStats$Timer;)V

    #@49a
    .line 237
    invoke-virtual/range {p3 .. p3}, Landroid/os/BatteryStats$Uid;->getVideoTurnedOnTimer()Landroid/os/BatteryStats$Timer;

    #@49d
    move-result-object v24

    #@49e
    const/16 v25, 0x2731

    #@4a0
    move-object/from16 v0, p0

    #@4a2
    move-object/from16 v1, p1

    #@4a4
    move/from16 v2, v25

    #@4a6
    move-object/from16 v3, v24

    #@4a8
    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/am/HealthStatsBatteryStatsWriter;->addTimer(Landroid/os/health/HealthStatsWriter;ILandroid/os/BatteryStats$Timer;)V

    #@4ab
    .line 240
    invoke-virtual/range {p3 .. p3}, Landroid/os/BatteryStats$Uid;->getFlashlightTurnedOnTimer()Landroid/os/BatteryStats$Timer;

    #@4ae
    move-result-object v24

    #@4af
    const/16 v25, 0x2732

    #@4b1
    move-object/from16 v0, p0

    #@4b3
    move-object/from16 v1, p1

    #@4b5
    move/from16 v2, v25

    #@4b7
    move-object/from16 v3, v24

    #@4b9
    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/am/HealthStatsBatteryStatsWriter;->addTimer(Landroid/os/health/HealthStatsWriter;ILandroid/os/BatteryStats$Timer;)V

    #@4bc
    .line 243
    invoke-virtual/range {p3 .. p3}, Landroid/os/BatteryStats$Uid;->getCameraTurnedOnTimer()Landroid/os/BatteryStats$Timer;

    #@4bf
    move-result-object v24

    #@4c0
    const/16 v25, 0x2733

    #@4c2
    move-object/from16 v0, p0

    #@4c4
    move-object/from16 v1, p1

    #@4c6
    move/from16 v2, v25

    #@4c8
    move-object/from16 v3, v24

    #@4ca
    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/am/HealthStatsBatteryStatsWriter;->addTimer(Landroid/os/health/HealthStatsWriter;ILandroid/os/BatteryStats$Timer;)V

    #@4cd
    .line 247
    invoke-virtual/range {p3 .. p3}, Landroid/os/BatteryStats$Uid;->getForegroundActivityTimer()Landroid/os/BatteryStats$Timer;

    #@4d0
    move-result-object v24

    #@4d1
    .line 246
    const/16 v25, 0x2734

    #@4d3
    move-object/from16 v0, p0

    #@4d5
    move-object/from16 v1, p1

    #@4d7
    move/from16 v2, v25

    #@4d9
    move-object/from16 v3, v24

    #@4db
    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/am/HealthStatsBatteryStatsWriter;->addTimer(Landroid/os/health/HealthStatsWriter;ILandroid/os/BatteryStats$Timer;)V

    #@4de
    .line 250
    invoke-virtual/range {p3 .. p3}, Landroid/os/BatteryStats$Uid;->getBluetoothScanTimer()Landroid/os/BatteryStats$Timer;

    #@4e1
    move-result-object v24

    #@4e2
    const/16 v25, 0x2735

    #@4e4
    move-object/from16 v0, p0

    #@4e6
    move-object/from16 v1, p1

    #@4e8
    move/from16 v2, v25

    #@4ea
    move-object/from16 v3, v24

    #@4ec
    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/am/HealthStatsBatteryStatsWriter;->addTimer(Landroid/os/health/HealthStatsWriter;ILandroid/os/BatteryStats$Timer;)V

    #@4ef
    .line 254
    const/16 v24, 0x0

    #@4f1
    move-object/from16 v0, p3

    #@4f3
    move/from16 v1, v24

    #@4f5
    invoke-virtual {v0, v1}, Landroid/os/BatteryStats$Uid;->getProcessStateTimer(I)Landroid/os/BatteryStats$Timer;

    #@4f8
    move-result-object v24

    #@4f9
    .line 253
    const/16 v25, 0x2736

    #@4fb
    move-object/from16 v0, p0

    #@4fd
    move-object/from16 v1, p1

    #@4ff
    move/from16 v2, v25

    #@501
    move-object/from16 v3, v24

    #@503
    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/am/HealthStatsBatteryStatsWriter;->addTimer(Landroid/os/health/HealthStatsWriter;ILandroid/os/BatteryStats$Timer;)V

    #@506
    .line 258
    const/16 v24, 0x1

    #@508
    move-object/from16 v0, p3

    #@50a
    move/from16 v1, v24

    #@50c
    invoke-virtual {v0, v1}, Landroid/os/BatteryStats$Uid;->getProcessStateTimer(I)Landroid/os/BatteryStats$Timer;

    #@50f
    move-result-object v24

    #@510
    .line 257
    const/16 v25, 0x2737

    #@512
    move-object/from16 v0, p0

    #@514
    move-object/from16 v1, p1

    #@516
    move/from16 v2, v25

    #@518
    move-object/from16 v3, v24

    #@51a
    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/am/HealthStatsBatteryStatsWriter;->addTimer(Landroid/os/health/HealthStatsWriter;ILandroid/os/BatteryStats$Timer;)V

    #@51d
    .line 262
    const/16 v24, 0x2

    #@51f
    move-object/from16 v0, p3

    #@521
    move/from16 v1, v24

    #@523
    invoke-virtual {v0, v1}, Landroid/os/BatteryStats$Uid;->getProcessStateTimer(I)Landroid/os/BatteryStats$Timer;

    #@526
    move-result-object v24

    #@527
    .line 261
    const/16 v25, 0x2738

    #@529
    move-object/from16 v0, p0

    #@52b
    move-object/from16 v1, p1

    #@52d
    move/from16 v2, v25

    #@52f
    move-object/from16 v3, v24

    #@531
    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/am/HealthStatsBatteryStatsWriter;->addTimer(Landroid/os/health/HealthStatsWriter;ILandroid/os/BatteryStats$Timer;)V

    #@534
    .line 266
    const/16 v24, 0x3

    #@536
    move-object/from16 v0, p3

    #@538
    move/from16 v1, v24

    #@53a
    invoke-virtual {v0, v1}, Landroid/os/BatteryStats$Uid;->getProcessStateTimer(I)Landroid/os/BatteryStats$Timer;

    #@53d
    move-result-object v24

    #@53e
    .line 265
    const/16 v25, 0x2739

    #@540
    move-object/from16 v0, p0

    #@542
    move-object/from16 v1, p1

    #@544
    move/from16 v2, v25

    #@546
    move-object/from16 v3, v24

    #@548
    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/am/HealthStatsBatteryStatsWriter;->addTimer(Landroid/os/health/HealthStatsWriter;ILandroid/os/BatteryStats$Timer;)V

    #@54b
    .line 270
    const/16 v24, 0x4

    #@54d
    move-object/from16 v0, p3

    #@54f
    move/from16 v1, v24

    #@551
    invoke-virtual {v0, v1}, Landroid/os/BatteryStats$Uid;->getProcessStateTimer(I)Landroid/os/BatteryStats$Timer;

    #@554
    move-result-object v24

    #@555
    .line 269
    const/16 v25, 0x273a

    #@557
    move-object/from16 v0, p0

    #@559
    move-object/from16 v1, p1

    #@55b
    move/from16 v2, v25

    #@55d
    move-object/from16 v3, v24

    #@55f
    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/am/HealthStatsBatteryStatsWriter;->addTimer(Landroid/os/health/HealthStatsWriter;ILandroid/os/BatteryStats$Timer;)V

    #@562
    .line 274
    const/16 v24, 0x5

    #@564
    move-object/from16 v0, p3

    #@566
    move/from16 v1, v24

    #@568
    invoke-virtual {v0, v1}, Landroid/os/BatteryStats$Uid;->getProcessStateTimer(I)Landroid/os/BatteryStats$Timer;

    #@56b
    move-result-object v24

    #@56c
    .line 273
    const/16 v25, 0x273b

    #@56e
    move-object/from16 v0, p0

    #@570
    move-object/from16 v1, p1

    #@572
    move/from16 v2, v25

    #@574
    move-object/from16 v3, v24

    #@576
    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/am/HealthStatsBatteryStatsWriter;->addTimer(Landroid/os/health/HealthStatsWriter;ILandroid/os/BatteryStats$Timer;)V

    #@579
    .line 277
    invoke-virtual/range {p3 .. p3}, Landroid/os/BatteryStats$Uid;->getVibratorOnTimer()Landroid/os/BatteryStats$Timer;

    #@57c
    move-result-object v24

    #@57d
    const/16 v25, 0x273c

    #@57f
    move-object/from16 v0, p0

    #@581
    move-object/from16 v1, p1

    #@583
    move/from16 v2, v25

    #@585
    move-object/from16 v3, v24

    #@587
    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/am/HealthStatsBatteryStatsWriter;->addTimer(Landroid/os/health/HealthStatsWriter;ILandroid/os/BatteryStats$Timer;)V

    #@58a
    .line 281
    const/16 v24, 0x0

    #@58c
    .line 282
    const/16 v25, 0x2

    #@58e
    .line 281
    move-object/from16 v0, p3

    #@590
    move/from16 v1, v24

    #@592
    move/from16 v2, v25

    #@594
    invoke-virtual {v0, v1, v2}, Landroid/os/BatteryStats$Uid;->getUserActivityCount(II)I

    #@597
    move-result v24

    #@598
    move/from16 v0, v24

    #@59a
    int-to-long v0, v0

    #@59b
    move-wide/from16 v24, v0

    #@59d
    .line 280
    const/16 v26, 0x273d

    #@59f
    move-object/from16 v0, p1

    #@5a1
    move/from16 v1, v26

    #@5a3
    move-wide/from16 v2, v24

    #@5a5
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/health/HealthStatsWriter;->addMeasurement(IJ)V

    #@5a8
    .line 286
    const/16 v24, 0x1

    #@5aa
    .line 287
    const/16 v25, 0x2

    #@5ac
    .line 286
    move-object/from16 v0, p3

    #@5ae
    move/from16 v1, v24

    #@5b0
    move/from16 v2, v25

    #@5b2
    invoke-virtual {v0, v1, v2}, Landroid/os/BatteryStats$Uid;->getUserActivityCount(II)I

    #@5b5
    move-result v24

    #@5b6
    move/from16 v0, v24

    #@5b8
    int-to-long v0, v0

    #@5b9
    move-wide/from16 v24, v0

    #@5bb
    .line 285
    const/16 v26, 0x273e

    #@5bd
    move-object/from16 v0, p1

    #@5bf
    move/from16 v1, v26

    #@5c1
    move-wide/from16 v2, v24

    #@5c3
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/health/HealthStatsWriter;->addMeasurement(IJ)V

    #@5c6
    .line 291
    const/16 v24, 0x2

    #@5c8
    .line 292
    const/16 v25, 0x2

    #@5ca
    .line 291
    move-object/from16 v0, p3

    #@5cc
    move/from16 v1, v24

    #@5ce
    move/from16 v2, v25

    #@5d0
    invoke-virtual {v0, v1, v2}, Landroid/os/BatteryStats$Uid;->getUserActivityCount(II)I

    #@5d3
    move-result v24

    #@5d4
    move/from16 v0, v24

    #@5d6
    int-to-long v0, v0

    #@5d7
    move-wide/from16 v24, v0

    #@5d9
    .line 290
    const/16 v26, 0x273f

    #@5db
    move-object/from16 v0, p1

    #@5dd
    move/from16 v1, v26

    #@5df
    move-wide/from16 v2, v24

    #@5e1
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/health/HealthStatsWriter;->addMeasurement(IJ)V

    #@5e4
    .line 296
    const/16 v24, 0x0

    #@5e6
    .line 297
    const/16 v25, 0x2

    #@5e8
    .line 296
    move-object/from16 v0, p3

    #@5ea
    move/from16 v1, v24

    #@5ec
    move/from16 v2, v25

    #@5ee
    invoke-virtual {v0, v1, v2}, Landroid/os/BatteryStats$Uid;->getNetworkActivityBytes(II)J

    #@5f1
    move-result-wide v24

    #@5f2
    .line 295
    const/16 v26, 0x2740

    #@5f4
    move-object/from16 v0, p1

    #@5f6
    move/from16 v1, v26

    #@5f8
    move-wide/from16 v2, v24

    #@5fa
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/health/HealthStatsWriter;->addMeasurement(IJ)V

    #@5fd
    .line 301
    const/16 v24, 0x1

    #@5ff
    .line 302
    const/16 v25, 0x2

    #@601
    .line 301
    move-object/from16 v0, p3

    #@603
    move/from16 v1, v24

    #@605
    move/from16 v2, v25

    #@607
    invoke-virtual {v0, v1, v2}, Landroid/os/BatteryStats$Uid;->getNetworkActivityBytes(II)J

    #@60a
    move-result-wide v24

    #@60b
    .line 300
    const/16 v26, 0x2741

    #@60d
    move-object/from16 v0, p1

    #@60f
    move/from16 v1, v26

    #@611
    move-wide/from16 v2, v24

    #@613
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/health/HealthStatsWriter;->addMeasurement(IJ)V

    #@616
    .line 306
    const/16 v24, 0x2

    #@618
    .line 307
    const/16 v25, 0x2

    #@61a
    .line 306
    move-object/from16 v0, p3

    #@61c
    move/from16 v1, v24

    #@61e
    move/from16 v2, v25

    #@620
    invoke-virtual {v0, v1, v2}, Landroid/os/BatteryStats$Uid;->getNetworkActivityBytes(II)J

    #@623
    move-result-wide v24

    #@624
    .line 305
    const/16 v26, 0x2742

    #@626
    move-object/from16 v0, p1

    #@628
    move/from16 v1, v26

    #@62a
    move-wide/from16 v2, v24

    #@62c
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/health/HealthStatsWriter;->addMeasurement(IJ)V

    #@62f
    .line 311
    const/16 v24, 0x3

    #@631
    .line 312
    const/16 v25, 0x2

    #@633
    .line 311
    move-object/from16 v0, p3

    #@635
    move/from16 v1, v24

    #@637
    move/from16 v2, v25

    #@639
    invoke-virtual {v0, v1, v2}, Landroid/os/BatteryStats$Uid;->getNetworkActivityBytes(II)J

    #@63c
    move-result-wide v24

    #@63d
    .line 310
    const/16 v26, 0x2743

    #@63f
    move-object/from16 v0, p1

    #@641
    move/from16 v1, v26

    #@643
    move-wide/from16 v2, v24

    #@645
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/health/HealthStatsWriter;->addMeasurement(IJ)V

    #@648
    .line 316
    const/16 v24, 0x4

    #@64a
    .line 317
    const/16 v25, 0x2

    #@64c
    .line 316
    move-object/from16 v0, p3

    #@64e
    move/from16 v1, v24

    #@650
    move/from16 v2, v25

    #@652
    invoke-virtual {v0, v1, v2}, Landroid/os/BatteryStats$Uid;->getNetworkActivityBytes(II)J

    #@655
    move-result-wide v24

    #@656
    .line 315
    const/16 v26, 0x2744

    #@658
    move-object/from16 v0, p1

    #@65a
    move/from16 v1, v26

    #@65c
    move-wide/from16 v2, v24

    #@65e
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/health/HealthStatsWriter;->addMeasurement(IJ)V

    #@661
    .line 321
    const/16 v24, 0x5

    #@663
    .line 322
    const/16 v25, 0x2

    #@665
    .line 321
    move-object/from16 v0, p3

    #@667
    move/from16 v1, v24

    #@669
    move/from16 v2, v25

    #@66b
    invoke-virtual {v0, v1, v2}, Landroid/os/BatteryStats$Uid;->getNetworkActivityBytes(II)J

    #@66e
    move-result-wide v24

    #@66f
    .line 320
    const/16 v26, 0x2745

    #@671
    move-object/from16 v0, p1

    #@673
    move/from16 v1, v26

    #@675
    move-wide/from16 v2, v24

    #@677
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/health/HealthStatsWriter;->addMeasurement(IJ)V

    #@67a
    .line 326
    const/16 v24, 0x0

    #@67c
    .line 327
    const/16 v25, 0x2

    #@67e
    .line 326
    move-object/from16 v0, p3

    #@680
    move/from16 v1, v24

    #@682
    move/from16 v2, v25

    #@684
    invoke-virtual {v0, v1, v2}, Landroid/os/BatteryStats$Uid;->getNetworkActivityPackets(II)J

    #@687
    move-result-wide v24

    #@688
    .line 325
    const/16 v26, 0x2746

    #@68a
    move-object/from16 v0, p1

    #@68c
    move/from16 v1, v26

    #@68e
    move-wide/from16 v2, v24

    #@690
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/health/HealthStatsWriter;->addMeasurement(IJ)V

    #@693
    .line 331
    const/16 v24, 0x1

    #@695
    .line 332
    const/16 v25, 0x2

    #@697
    .line 331
    move-object/from16 v0, p3

    #@699
    move/from16 v1, v24

    #@69b
    move/from16 v2, v25

    #@69d
    invoke-virtual {v0, v1, v2}, Landroid/os/BatteryStats$Uid;->getNetworkActivityPackets(II)J

    #@6a0
    move-result-wide v24

    #@6a1
    .line 330
    const/16 v26, 0x2747

    #@6a3
    move-object/from16 v0, p1

    #@6a5
    move/from16 v1, v26

    #@6a7
    move-wide/from16 v2, v24

    #@6a9
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/health/HealthStatsWriter;->addMeasurement(IJ)V

    #@6ac
    .line 336
    const/16 v24, 0x2

    #@6ae
    .line 337
    const/16 v25, 0x2

    #@6b0
    .line 336
    move-object/from16 v0, p3

    #@6b2
    move/from16 v1, v24

    #@6b4
    move/from16 v2, v25

    #@6b6
    invoke-virtual {v0, v1, v2}, Landroid/os/BatteryStats$Uid;->getNetworkActivityPackets(II)J

    #@6b9
    move-result-wide v24

    #@6ba
    .line 335
    const/16 v26, 0x2748

    #@6bc
    move-object/from16 v0, p1

    #@6be
    move/from16 v1, v26

    #@6c0
    move-wide/from16 v2, v24

    #@6c2
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/health/HealthStatsWriter;->addMeasurement(IJ)V

    #@6c5
    .line 341
    const/16 v24, 0x3

    #@6c7
    .line 342
    const/16 v25, 0x2

    #@6c9
    .line 341
    move-object/from16 v0, p3

    #@6cb
    move/from16 v1, v24

    #@6cd
    move/from16 v2, v25

    #@6cf
    invoke-virtual {v0, v1, v2}, Landroid/os/BatteryStats$Uid;->getNetworkActivityPackets(II)J

    #@6d2
    move-result-wide v24

    #@6d3
    .line 340
    const/16 v26, 0x2749

    #@6d5
    move-object/from16 v0, p1

    #@6d7
    move/from16 v1, v26

    #@6d9
    move-wide/from16 v2, v24

    #@6db
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/health/HealthStatsWriter;->addMeasurement(IJ)V

    #@6de
    .line 346
    const/16 v24, 0x4

    #@6e0
    .line 347
    const/16 v25, 0x2

    #@6e2
    .line 346
    move-object/from16 v0, p3

    #@6e4
    move/from16 v1, v24

    #@6e6
    move/from16 v2, v25

    #@6e8
    invoke-virtual {v0, v1, v2}, Landroid/os/BatteryStats$Uid;->getNetworkActivityPackets(II)J

    #@6eb
    move-result-wide v24

    #@6ec
    .line 345
    const/16 v26, 0x274a

    #@6ee
    move-object/from16 v0, p1

    #@6f0
    move/from16 v1, v26

    #@6f2
    move-wide/from16 v2, v24

    #@6f4
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/health/HealthStatsWriter;->addMeasurement(IJ)V

    #@6f7
    .line 351
    const/16 v24, 0x5

    #@6f9
    .line 352
    const/16 v25, 0x2

    #@6fb
    .line 351
    move-object/from16 v0, p3

    #@6fd
    move/from16 v1, v24

    #@6ff
    move/from16 v2, v25

    #@701
    invoke-virtual {v0, v1, v2}, Landroid/os/BatteryStats$Uid;->getNetworkActivityPackets(II)J

    #@704
    move-result-wide v24

    #@705
    .line 350
    const/16 v26, 0x274b

    #@707
    move-object/from16 v0, p1

    #@709
    move/from16 v1, v26

    #@70b
    move-wide/from16 v2, v24

    #@70d
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/health/HealthStatsWriter;->addMeasurement(IJ)V

    #@710
    .line 356
    const/16 v24, 0x2

    #@712
    move-object/from16 v0, p3

    #@714
    move/from16 v1, v24

    #@716
    invoke-virtual {v0, v1}, Landroid/os/BatteryStats$Uid;->getMobileRadioActiveCount(I)I

    #@719
    move-result v24

    #@71a
    .line 357
    const/16 v25, 0x2

    #@71c
    move-object/from16 v0, p3

    #@71e
    move/from16 v1, v25

    #@720
    invoke-virtual {v0, v1}, Landroid/os/BatteryStats$Uid;->getMobileRadioActiveTime(I)J

    #@723
    move-result-wide v26

    #@724
    .line 355
    const/16 v25, 0x274d

    #@726
    move-object/from16 v0, p1

    #@728
    move/from16 v1, v25

    #@72a
    move/from16 v2, v24

    #@72c
    move-wide/from16 v3, v26

    #@72e
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/os/health/HealthStatsWriter;->addTimer(IIJ)V

    #@731
    .line 361
    const/16 v24, 0x2

    #@733
    move-object/from16 v0, p3

    #@735
    move/from16 v1, v24

    #@737
    invoke-virtual {v0, v1}, Landroid/os/BatteryStats$Uid;->getUserCpuTimeUs(I)J

    #@73a
    move-result-wide v24

    #@73b
    const-wide/16 v26, 0x3e8

    #@73d
    div-long v24, v24, v26

    #@73f
    .line 360
    const/16 v26, 0x274e

    #@741
    move-object/from16 v0, p1

    #@743
    move/from16 v1, v26

    #@745
    move-wide/from16 v2, v24

    #@747
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/health/HealthStatsWriter;->addMeasurement(IJ)V

    #@74a
    .line 365
    const/16 v24, 0x2

    #@74c
    move-object/from16 v0, p3

    #@74e
    move/from16 v1, v24

    #@750
    invoke-virtual {v0, v1}, Landroid/os/BatteryStats$Uid;->getSystemCpuTimeUs(I)J

    #@753
    move-result-wide v24

    #@754
    const-wide/16 v26, 0x3e8

    #@756
    div-long v24, v24, v26

    #@758
    .line 364
    const/16 v26, 0x274f

    #@75a
    move-object/from16 v0, p1

    #@75c
    move/from16 v1, v26

    #@75e
    move-wide/from16 v2, v24

    #@760
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/health/HealthStatsWriter;->addMeasurement(IJ)V

    #@763
    .line 369
    const/16 v24, 0x2

    #@765
    move-object/from16 v0, p3

    #@767
    move/from16 v1, v24

    #@769
    invoke-virtual {v0, v1}, Landroid/os/BatteryStats$Uid;->getCpuPowerMaUs(I)J

    #@76c
    move-result-wide v24

    #@76d
    const-wide/16 v26, 0x3e8

    #@76f
    div-long v24, v24, v26

    #@771
    .line 368
    const/16 v26, 0x2750

    #@773
    move-object/from16 v0, p1

    #@775
    move/from16 v1, v26

    #@777
    move-wide/from16 v2, v24

    #@779
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/health/HealthStatsWriter;->addMeasurement(IJ)V

    #@77c
    .line 49
    return-void
.end method
