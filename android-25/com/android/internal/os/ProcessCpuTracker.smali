.class public Lcom/android/internal/os/ProcessCpuTracker;
.super Ljava/lang/Object;
.source "ProcessCpuTracker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/os/ProcessCpuTracker$1;,
        Lcom/android/internal/os/ProcessCpuTracker$FilterStats;,
        Lcom/android/internal/os/ProcessCpuTracker$Stats;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final LOAD_AVERAGE_FORMAT:[I

.field private static final PROCESS_FULL_STATS_FORMAT:[I

.field static final PROCESS_FULL_STAT_MAJOR_FAULTS:I = 0x2

.field static final PROCESS_FULL_STAT_MINOR_FAULTS:I = 0x1

.field static final PROCESS_FULL_STAT_STIME:I = 0x4

.field static final PROCESS_FULL_STAT_UTIME:I = 0x3

.field static final PROCESS_FULL_STAT_VSIZE:I = 0x5

.field private static final PROCESS_STATS_FORMAT:[I

.field static final PROCESS_STAT_MAJOR_FAULTS:I = 0x1

.field static final PROCESS_STAT_MINOR_FAULTS:I = 0x0

.field static final PROCESS_STAT_STIME:I = 0x3

.field static final PROCESS_STAT_UTIME:I = 0x2

.field private static final SYSTEM_CPU_FORMAT:[I

.field private static final TAG:Ljava/lang/String; = "ProcessCpuTracker"

.field private static final localLOGV:Z

.field private static final sLoadComparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Lcom/android/internal/os/ProcessCpuTracker$Stats;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mBaseIdleTime:J

.field private mBaseIoWaitTime:J

.field private mBaseIrqTime:J

.field private mBaseSoftIrqTime:J

.field private mBaseSystemTime:J

.field private mBaseUserTime:J

.field private mBuffer:[B

.field private mCurPids:[I

.field private mCurThreadPids:[I

.field private mCurrentSampleRealTime:J

.field private mCurrentSampleTime:J

.field private mCurrentSampleWallTime:J

.field private mFirst:Z

.field private final mIncludeThreads:Z

.field private final mJiffyMillis:J

.field private mLastSampleRealTime:J

.field private mLastSampleTime:J

.field private mLastSampleWallTime:J

.field private mLoad1:F

.field private mLoad15:F

.field private mLoad5:F

.field private final mLoadAverageData:[F

.field private final mProcStats:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/os/ProcessCpuTracker$Stats;",
            ">;"
        }
    .end annotation
.end field

.field private final mProcessFullStatsData:[J

.field private final mProcessFullStatsStringData:[Ljava/lang/String;

.field private final mProcessStatsData:[J

.field private mRelIdleTime:I

.field private mRelIoWaitTime:I

.field private mRelIrqTime:I

.field private mRelSoftIrqTime:I

.field private mRelStatsAreGood:Z

.field private mRelSystemTime:I

.field private mRelUserTime:I

.field private final mSinglePidStatsData:[J

.field private final mSystemCpuData:[J

.field private final mWorkingProcs:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/os/ProcessCpuTracker$Stats;",
            ">;"
        }
    .end annotation
.end field

.field private mWorkingProcsSorted:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    #@0
    .prologue
    const/16 v1, 0x4020

    #@2
    .line 50
    const/16 v0, 0xf

    #@4
    new-array v0, v0, [I

    #@6
    fill-array-data v0, :array_0

    #@9
    sput-object v0, Lcom/android/internal/os/ProcessCpuTracker;->PROCESS_STATS_FORMAT:[I

    #@b
    .line 80
    const/16 v0, 0x17

    #@d
    new-array v0, v0, [I

    #@f
    fill-array-data v0, :array_1

    #@12
    sput-object v0, Lcom/android/internal/os/ProcessCpuTracker;->PROCESS_FULL_STATS_FORMAT:[I

    #@14
    .line 115
    const/16 v0, 0x8

    #@16
    new-array v0, v0, [I

    #@18
    fill-array-data v0, :array_2

    #@1b
    sput-object v0, Lcom/android/internal/os/ProcessCpuTracker;->SYSTEM_CPU_FORMAT:[I

    #@1d
    .line 128
    filled-new-array {v1, v1, v1}, [I

    #@20
    move-result-object v0

    #@21
    sput-object v0, Lcom/android/internal/os/ProcessCpuTracker;->LOAD_AVERAGE_FORMAT:[I

    #@23
    .line 276
    new-instance v0, Lcom/android/internal/os/ProcessCpuTracker$1;

    #@25
    invoke-direct {v0}, Lcom/android/internal/os/ProcessCpuTracker$1;-><init>()V

    #@28
    sput-object v0, Lcom/android/internal/os/ProcessCpuTracker;->sLoadComparator:Ljava/util/Comparator;

    #@2a
    .line 45
    return-void

    #@2b
    .line 50
    nop

    #@2c
    :array_0
    .array-data 4
        0x20
        0x220
        0x20
        0x20
        0x20
        0x20
        0x20
        0x20
        0x20
        0x2020
        0x20
        0x2020
        0x20
        0x2020
        0x2020
    .end array-data

    #@4e
    .line 80
    :array_1
    .array-data 4
        0x20
        0x1220
        0x20
        0x20
        0x20
        0x20
        0x20
        0x20
        0x20
        0x2020
        0x20
        0x2020
        0x20
        0x2020
        0x2020
        0x20
        0x20
        0x20
        0x20
        0x20
        0x20
        0x20
        0x2020
    .end array-data

    #@80
    .line 115
    :array_2
    .array-data 4
        0x120
        0x2020
        0x2020
        0x2020
        0x2020
        0x2020
        0x2020
        0x2020
    .end array-data
.end method

.method public constructor <init>(Z)V
    .locals 6
    .param p1, "includeThreads"    # Z

    #@0
    .prologue
    const/4 v5, 0x6

    #@1
    const/4 v4, 0x4

    #@2
    const/4 v3, 0x0

    #@3
    .line 295
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@6
    .line 74
    new-array v2, v4, [J

    #@8
    iput-object v2, p0, Lcom/android/internal/os/ProcessCpuTracker;->mProcessStatsData:[J

    #@a
    .line 78
    new-array v2, v4, [J

    #@c
    iput-object v2, p0, Lcom/android/internal/os/ProcessCpuTracker;->mSinglePidStatsData:[J

    #@e
    .line 112
    new-array v2, v5, [Ljava/lang/String;

    #@10
    iput-object v2, p0, Lcom/android/internal/os/ProcessCpuTracker;->mProcessFullStatsStringData:[Ljava/lang/String;

    #@12
    .line 113
    new-array v2, v5, [J

    #@14
    iput-object v2, p0, Lcom/android/internal/os/ProcessCpuTracker;->mProcessFullStatsData:[J

    #@16
    .line 126
    const/4 v2, 0x7

    #@17
    new-array v2, v2, [J

    #@19
    iput-object v2, p0, Lcom/android/internal/os/ProcessCpuTracker;->mSystemCpuData:[J

    #@1b
    .line 134
    const/4 v2, 0x3

    #@1c
    new-array v2, v2, [F

    #@1e
    iput-object v2, p0, Lcom/android/internal/os/ProcessCpuTracker;->mLoadAverageData:[F

    #@20
    .line 141
    iput v3, p0, Lcom/android/internal/os/ProcessCpuTracker;->mLoad1:F

    #@22
    .line 142
    iput v3, p0, Lcom/android/internal/os/ProcessCpuTracker;->mLoad5:F

    #@24
    .line 143
    iput v3, p0, Lcom/android/internal/os/ProcessCpuTracker;->mLoad15:F

    #@26
    .line 173
    new-instance v2, Ljava/util/ArrayList;

    #@28
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    #@2b
    iput-object v2, p0, Lcom/android/internal/os/ProcessCpuTracker;->mProcStats:Ljava/util/ArrayList;

    #@2d
    .line 174
    new-instance v2, Ljava/util/ArrayList;

    #@2f
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    #@32
    iput-object v2, p0, Lcom/android/internal/os/ProcessCpuTracker;->mWorkingProcs:Ljava/util/ArrayList;

    #@34
    .line 177
    const/4 v2, 0x1

    #@35
    iput-boolean v2, p0, Lcom/android/internal/os/ProcessCpuTracker;->mFirst:Z

    #@37
    .line 179
    const/16 v2, 0x1000

    #@39
    new-array v2, v2, [B

    #@3b
    iput-object v2, p0, Lcom/android/internal/os/ProcessCpuTracker;->mBuffer:[B

    #@3d
    .line 296
    iput-boolean p1, p0, Lcom/android/internal/os/ProcessCpuTracker;->mIncludeThreads:Z

    #@3f
    .line 297
    sget-object v2, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    #@41
    sget v3, Landroid/system/OsConstants;->_SC_CLK_TCK:I

    #@43
    invoke-interface {v2, v3}, Llibcore/io/Os;->sysconf(I)J

    #@46
    move-result-wide v0

    #@47
    .line 298
    .local v0, "jiffyHz":J
    const-wide/16 v2, 0x3e8

    #@49
    div-long/2addr v2, v0

    #@4a
    iput-wide v2, p0, Lcom/android/internal/os/ProcessCpuTracker;->mJiffyMillis:J

    #@4c
    .line 295
    return-void
.end method

.method private collectStats(Ljava/lang/String;IZ[ILjava/util/ArrayList;)[I
    .locals 30
    .param p1, "statsFile"    # Ljava/lang/String;
    .param p2, "parentPid"    # I
    .param p3, "first"    # Z
    .param p4, "curPids"    # [I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "IZ[I",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/os/ProcessCpuTracker$Stats;",
            ">;)[I"
        }
    .end annotation

    #@0
    .prologue
    .line 416
    .local p5, "allProcs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/os/ProcessCpuTracker$Stats;>;"
    move-object/from16 v0, p1

    #@2
    move-object/from16 v1, p4

    #@4
    invoke-static {v0, v1}, Landroid/os/Process;->getPids(Ljava/lang/String;[I)[I

    #@7
    move-result-object v19

    #@8
    .line 417
    .local v19, "pids":[I
    if-nez v19, :cond_1

    #@a
    const/4 v10, 0x0

    #@b
    .line 418
    .local v10, "NP":I
    :goto_0
    invoke-virtual/range {p5 .. p5}, Ljava/util/ArrayList;->size()I

    #@e
    move-result v11

    #@f
    .line 419
    .local v11, "NS":I
    const/4 v12, 0x0

    #@10
    .line 420
    .local v12, "curStatsIndex":I
    const/4 v13, 0x0

    #@11
    .local v13, "i":I
    :goto_1
    if-ge v13, v10, :cond_0

    #@13
    .line 421
    aget v6, v19, v13

    #@15
    .line 422
    .local v6, "pid":I
    if-gez v6, :cond_2

    #@17
    .line 423
    move v10, v6

    #@18
    .line 581
    .end local v6    # "pid":I
    :cond_0
    :goto_2
    if-ge v12, v11, :cond_f

    #@1a
    .line 583
    move-object/from16 v0, p5

    #@1c
    invoke-virtual {v0, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@1f
    move-result-object v22

    #@20
    check-cast v22, Lcom/android/internal/os/ProcessCpuTracker$Stats;

    #@22
    .line 584
    .local v22, "st":Lcom/android/internal/os/ProcessCpuTracker$Stats;
    const/4 v4, 0x0

    #@23
    move-object/from16 v0, v22

    #@25
    iput v4, v0, Lcom/android/internal/os/ProcessCpuTracker$Stats;->rel_utime:I

    #@27
    .line 585
    const/4 v4, 0x0

    #@28
    move-object/from16 v0, v22

    #@2a
    iput v4, v0, Lcom/android/internal/os/ProcessCpuTracker$Stats;->rel_stime:I

    #@2c
    .line 586
    const/4 v4, 0x0

    #@2d
    move-object/from16 v0, v22

    #@2f
    iput v4, v0, Lcom/android/internal/os/ProcessCpuTracker$Stats;->rel_minfaults:I

    #@31
    .line 587
    const/4 v4, 0x0

    #@32
    move-object/from16 v0, v22

    #@34
    iput v4, v0, Lcom/android/internal/os/ProcessCpuTracker$Stats;->rel_majfaults:I

    #@36
    .line 588
    const/4 v4, 0x1

    #@37
    move-object/from16 v0, v22

    #@39
    iput-boolean v4, v0, Lcom/android/internal/os/ProcessCpuTracker$Stats;->removed:Z

    #@3b
    .line 589
    const/4 v4, 0x1

    #@3c
    move-object/from16 v0, v22

    #@3e
    iput-boolean v4, v0, Lcom/android/internal/os/ProcessCpuTracker$Stats;->working:Z

    #@40
    .line 590
    move-object/from16 v0, p5

    #@42
    invoke-virtual {v0, v12}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    #@45
    .line 591
    add-int/lit8 v11, v11, -0x1

    #@47
    goto :goto_2

    #@48
    .line 417
    .end local v10    # "NP":I
    .end local v11    # "NS":I
    .end local v12    # "curStatsIndex":I
    .end local v13    # "i":I
    .end local v22    # "st":Lcom/android/internal/os/ProcessCpuTracker$Stats;
    :cond_1
    move-object/from16 v0, v19

    #@4a
    array-length v10, v0

    #@4b
    .restart local v10    # "NP":I
    goto :goto_0

    #@4c
    .line 426
    .restart local v6    # "pid":I
    .restart local v11    # "NS":I
    .restart local v12    # "curStatsIndex":I
    .restart local v13    # "i":I
    :cond_2
    if-ge v12, v11, :cond_4

    #@4e
    move-object/from16 v0, p5

    #@50
    invoke-virtual {v0, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@53
    move-result-object v4

    #@54
    check-cast v4, Lcom/android/internal/os/ProcessCpuTracker$Stats;

    #@56
    move-object/from16 v22, v4

    #@58
    .line 428
    .restart local v22    # "st":Lcom/android/internal/os/ProcessCpuTracker$Stats;
    :goto_3
    if-eqz v22, :cond_9

    #@5a
    move-object/from16 v0, v22

    #@5c
    iget v4, v0, Lcom/android/internal/os/ProcessCpuTracker$Stats;->pid:I

    #@5e
    if-ne v4, v6, :cond_9

    #@60
    .line 430
    const/4 v4, 0x0

    #@61
    move-object/from16 v0, v22

    #@63
    iput-boolean v4, v0, Lcom/android/internal/os/ProcessCpuTracker$Stats;->added:Z

    #@65
    .line 431
    const/4 v4, 0x0

    #@66
    move-object/from16 v0, v22

    #@68
    iput-boolean v4, v0, Lcom/android/internal/os/ProcessCpuTracker$Stats;->working:Z

    #@6a
    .line 432
    add-int/lit8 v12, v12, 0x1

    #@6c
    .line 437
    move-object/from16 v0, v22

    #@6e
    iget-boolean v4, v0, Lcom/android/internal/os/ProcessCpuTracker$Stats;->interesting:Z

    #@70
    if-eqz v4, :cond_3

    #@72
    .line 438
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    #@75
    move-result-wide v26

    #@76
    .line 440
    .local v26, "uptime":J
    move-object/from16 v0, p0

    #@78
    iget-object v0, v0, Lcom/android/internal/os/ProcessCpuTracker;->mProcessStatsData:[J

    #@7a
    move-object/from16 v20, v0

    #@7c
    .line 441
    .local v20, "procStats":[J
    move-object/from16 v0, v22

    #@7e
    iget-object v4, v0, Lcom/android/internal/os/ProcessCpuTracker$Stats;->statFile:Ljava/lang/String;

    #@80
    invoke-virtual {v4}, Ljava/lang/String;->toString()Ljava/lang/String;

    #@83
    move-result-object v4

    #@84
    .line 442
    sget-object v5, Lcom/android/internal/os/ProcessCpuTracker;->PROCESS_STATS_FORMAT:[I

    #@86
    const/4 v7, 0x0

    #@87
    const/4 v8, 0x0

    #@88
    .line 441
    move-object/from16 v0, v20

    #@8a
    invoke-static {v4, v5, v7, v0, v8}, Landroid/os/Process;->readProcFile(Ljava/lang/String;[I[Ljava/lang/String;[J[F)Z

    #@8d
    move-result v4

    #@8e
    if-nez v4, :cond_5

    #@90
    .line 420
    .end local v20    # "procStats":[J
    .end local v26    # "uptime":J
    :cond_3
    :goto_4
    add-int/lit8 v13, v13, 0x1

    #@92
    goto/16 :goto_1

    #@94
    .line 426
    .end local v22    # "st":Lcom/android/internal/os/ProcessCpuTracker$Stats;
    :cond_4
    const/16 v22, 0x0

    #@96
    goto :goto_3

    #@97
    .line 446
    .restart local v20    # "procStats":[J
    .restart local v22    # "st":Lcom/android/internal/os/ProcessCpuTracker$Stats;
    .restart local v26    # "uptime":J
    :cond_5
    const/4 v4, 0x0

    #@98
    aget-wide v16, v20, v4

    #@9a
    .line 447
    .local v16, "minfaults":J
    const/4 v4, 0x1

    #@9b
    aget-wide v14, v20, v4

    #@9d
    .line 448
    .local v14, "majfaults":J
    const/4 v4, 0x2

    #@9e
    aget-wide v4, v20, v4

    #@a0
    move-object/from16 v0, p0

    #@a2
    iget-wide v8, v0, Lcom/android/internal/os/ProcessCpuTracker;->mJiffyMillis:J

    #@a4
    mul-long v28, v4, v8

    #@a6
    .line 449
    .local v28, "utime":J
    const/4 v4, 0x3

    #@a7
    aget-wide v4, v20, v4

    #@a9
    move-object/from16 v0, p0

    #@ab
    iget-wide v8, v0, Lcom/android/internal/os/ProcessCpuTracker;->mJiffyMillis:J

    #@ad
    mul-long v24, v4, v8

    #@af
    .line 451
    .local v24, "stime":J
    move-object/from16 v0, v22

    #@b1
    iget-wide v4, v0, Lcom/android/internal/os/ProcessCpuTracker$Stats;->base_utime:J

    #@b3
    cmp-long v4, v28, v4

    #@b5
    if-nez v4, :cond_6

    #@b7
    move-object/from16 v0, v22

    #@b9
    iget-wide v4, v0, Lcom/android/internal/os/ProcessCpuTracker$Stats;->base_stime:J

    #@bb
    cmp-long v4, v24, v4

    #@bd
    if-nez v4, :cond_6

    #@bf
    .line 452
    const/4 v4, 0x0

    #@c0
    move-object/from16 v0, v22

    #@c2
    iput v4, v0, Lcom/android/internal/os/ProcessCpuTracker$Stats;->rel_utime:I

    #@c4
    .line 453
    const/4 v4, 0x0

    #@c5
    move-object/from16 v0, v22

    #@c7
    iput v4, v0, Lcom/android/internal/os/ProcessCpuTracker$Stats;->rel_stime:I

    #@c9
    .line 454
    const/4 v4, 0x0

    #@ca
    move-object/from16 v0, v22

    #@cc
    iput v4, v0, Lcom/android/internal/os/ProcessCpuTracker$Stats;->rel_minfaults:I

    #@ce
    .line 455
    const/4 v4, 0x0

    #@cf
    move-object/from16 v0, v22

    #@d1
    iput v4, v0, Lcom/android/internal/os/ProcessCpuTracker$Stats;->rel_majfaults:I

    #@d3
    .line 456
    move-object/from16 v0, v22

    #@d5
    iget-boolean v4, v0, Lcom/android/internal/os/ProcessCpuTracker$Stats;->active:Z

    #@d7
    if-eqz v4, :cond_3

    #@d9
    .line 457
    const/4 v4, 0x0

    #@da
    move-object/from16 v0, v22

    #@dc
    iput-boolean v4, v0, Lcom/android/internal/os/ProcessCpuTracker$Stats;->active:Z

    #@de
    goto :goto_4

    #@df
    .line 462
    :cond_6
    move-object/from16 v0, v22

    #@e1
    iget-boolean v4, v0, Lcom/android/internal/os/ProcessCpuTracker$Stats;->active:Z

    #@e3
    if-nez v4, :cond_7

    #@e5
    .line 463
    const/4 v4, 0x1

    #@e6
    move-object/from16 v0, v22

    #@e8
    iput-boolean v4, v0, Lcom/android/internal/os/ProcessCpuTracker$Stats;->active:Z

    #@ea
    .line 466
    :cond_7
    if-gez p2, :cond_8

    #@ec
    .line 467
    move-object/from16 v0, v22

    #@ee
    iget-object v4, v0, Lcom/android/internal/os/ProcessCpuTracker$Stats;->cmdlineFile:Ljava/lang/String;

    #@f0
    move-object/from16 v0, p0

    #@f2
    move-object/from16 v1, v22

    #@f4
    invoke-direct {v0, v1, v4}, Lcom/android/internal/os/ProcessCpuTracker;->getName(Lcom/android/internal/os/ProcessCpuTracker$Stats;Ljava/lang/String;)V

    #@f7
    .line 468
    move-object/from16 v0, v22

    #@f9
    iget-object v4, v0, Lcom/android/internal/os/ProcessCpuTracker$Stats;->threadStats:Ljava/util/ArrayList;

    #@fb
    if-eqz v4, :cond_8

    #@fd
    .line 469
    move-object/from16 v0, v22

    #@ff
    iget-object v5, v0, Lcom/android/internal/os/ProcessCpuTracker$Stats;->threadsDir:Ljava/lang/String;

    #@101
    .line 470
    move-object/from16 v0, p0

    #@103
    iget-object v8, v0, Lcom/android/internal/os/ProcessCpuTracker;->mCurThreadPids:[I

    #@105
    move-object/from16 v0, v22

    #@107
    iget-object v9, v0, Lcom/android/internal/os/ProcessCpuTracker$Stats;->threadStats:Ljava/util/ArrayList;

    #@109
    .line 469
    const/4 v7, 0x0

    #@10a
    move-object/from16 v4, p0

    #@10c
    invoke-direct/range {v4 .. v9}, Lcom/android/internal/os/ProcessCpuTracker;->collectStats(Ljava/lang/String;IZ[ILjava/util/ArrayList;)[I

    #@10f
    move-result-object v4

    #@110
    move-object/from16 v0, p0

    #@112
    iput-object v4, v0, Lcom/android/internal/os/ProcessCpuTracker;->mCurThreadPids:[I

    #@114
    .line 480
    :cond_8
    move-object/from16 v0, v22

    #@116
    iget-wide v4, v0, Lcom/android/internal/os/ProcessCpuTracker$Stats;->base_uptime:J

    #@118
    sub-long v4, v26, v4

    #@11a
    move-object/from16 v0, v22

    #@11c
    iput-wide v4, v0, Lcom/android/internal/os/ProcessCpuTracker$Stats;->rel_uptime:J

    #@11e
    .line 481
    move-wide/from16 v0, v26

    #@120
    move-object/from16 v2, v22

    #@122
    iput-wide v0, v2, Lcom/android/internal/os/ProcessCpuTracker$Stats;->base_uptime:J

    #@124
    .line 482
    move-object/from16 v0, v22

    #@126
    iget-wide v4, v0, Lcom/android/internal/os/ProcessCpuTracker$Stats;->base_utime:J

    #@128
    sub-long v4, v28, v4

    #@12a
    long-to-int v4, v4

    #@12b
    move-object/from16 v0, v22

    #@12d
    iput v4, v0, Lcom/android/internal/os/ProcessCpuTracker$Stats;->rel_utime:I

    #@12f
    .line 483
    move-object/from16 v0, v22

    #@131
    iget-wide v4, v0, Lcom/android/internal/os/ProcessCpuTracker$Stats;->base_stime:J

    #@133
    sub-long v4, v24, v4

    #@135
    long-to-int v4, v4

    #@136
    move-object/from16 v0, v22

    #@138
    iput v4, v0, Lcom/android/internal/os/ProcessCpuTracker$Stats;->rel_stime:I

    #@13a
    .line 484
    move-wide/from16 v0, v28

    #@13c
    move-object/from16 v2, v22

    #@13e
    iput-wide v0, v2, Lcom/android/internal/os/ProcessCpuTracker$Stats;->base_utime:J

    #@140
    .line 485
    move-wide/from16 v0, v24

    #@142
    move-object/from16 v2, v22

    #@144
    iput-wide v0, v2, Lcom/android/internal/os/ProcessCpuTracker$Stats;->base_stime:J

    #@146
    .line 486
    move-object/from16 v0, v22

    #@148
    iget-wide v4, v0, Lcom/android/internal/os/ProcessCpuTracker$Stats;->base_minfaults:J

    #@14a
    sub-long v4, v16, v4

    #@14c
    long-to-int v4, v4

    #@14d
    move-object/from16 v0, v22

    #@14f
    iput v4, v0, Lcom/android/internal/os/ProcessCpuTracker$Stats;->rel_minfaults:I

    #@151
    .line 487
    move-object/from16 v0, v22

    #@153
    iget-wide v4, v0, Lcom/android/internal/os/ProcessCpuTracker$Stats;->base_majfaults:J

    #@155
    sub-long v4, v14, v4

    #@157
    long-to-int v4, v4

    #@158
    move-object/from16 v0, v22

    #@15a
    iput v4, v0, Lcom/android/internal/os/ProcessCpuTracker$Stats;->rel_majfaults:I

    #@15c
    .line 488
    move-wide/from16 v0, v16

    #@15e
    move-object/from16 v2, v22

    #@160
    iput-wide v0, v2, Lcom/android/internal/os/ProcessCpuTracker$Stats;->base_minfaults:J

    #@162
    .line 489
    move-object/from16 v0, v22

    #@164
    iput-wide v14, v0, Lcom/android/internal/os/ProcessCpuTracker$Stats;->base_majfaults:J

    #@166
    .line 490
    const/4 v4, 0x1

    #@167
    move-object/from16 v0, v22

    #@169
    iput-boolean v4, v0, Lcom/android/internal/os/ProcessCpuTracker$Stats;->working:Z

    #@16b
    goto/16 :goto_4

    #@16d
    .line 496
    .end local v14    # "majfaults":J
    .end local v16    # "minfaults":J
    .end local v20    # "procStats":[J
    .end local v24    # "stime":J
    .end local v26    # "uptime":J
    .end local v28    # "utime":J
    :cond_9
    if-eqz v22, :cond_a

    #@16f
    move-object/from16 v0, v22

    #@171
    iget v4, v0, Lcom/android/internal/os/ProcessCpuTracker$Stats;->pid:I

    #@173
    if-le v4, v6, :cond_e

    #@175
    .line 498
    :cond_a
    new-instance v22, Lcom/android/internal/os/ProcessCpuTracker$Stats;

    #@177
    .end local v22    # "st":Lcom/android/internal/os/ProcessCpuTracker$Stats;
    move-object/from16 v0, p0

    #@179
    iget-boolean v4, v0, Lcom/android/internal/os/ProcessCpuTracker;->mIncludeThreads:Z

    #@17b
    move-object/from16 v0, v22

    #@17d
    move/from16 v1, p2

    #@17f
    invoke-direct {v0, v6, v1, v4}, Lcom/android/internal/os/ProcessCpuTracker$Stats;-><init>(IIZ)V

    #@182
    .line 499
    .restart local v22    # "st":Lcom/android/internal/os/ProcessCpuTracker$Stats;
    move-object/from16 v0, p5

    #@184
    move-object/from16 v1, v22

    #@186
    invoke-virtual {v0, v12, v1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    #@189
    .line 500
    add-int/lit8 v12, v12, 0x1

    #@18b
    .line 501
    add-int/lit8 v11, v11, 0x1

    #@18d
    .line 506
    move-object/from16 v0, p0

    #@18f
    iget-object v0, v0, Lcom/android/internal/os/ProcessCpuTracker;->mProcessFullStatsStringData:[Ljava/lang/String;

    #@191
    move-object/from16 v21, v0

    #@193
    .line 507
    .local v21, "procStatsString":[Ljava/lang/String;
    move-object/from16 v0, p0

    #@195
    iget-object v0, v0, Lcom/android/internal/os/ProcessCpuTracker;->mProcessFullStatsData:[J

    #@197
    move-object/from16 v20, v0

    #@199
    .line 508
    .restart local v20    # "procStats":[J
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    #@19c
    move-result-wide v4

    #@19d
    move-object/from16 v0, v22

    #@19f
    iput-wide v4, v0, Lcom/android/internal/os/ProcessCpuTracker$Stats;->base_uptime:J

    #@1a1
    .line 509
    move-object/from16 v0, v22

    #@1a3
    iget-object v4, v0, Lcom/android/internal/os/ProcessCpuTracker$Stats;->statFile:Ljava/lang/String;

    #@1a5
    invoke-virtual {v4}, Ljava/lang/String;->toString()Ljava/lang/String;

    #@1a8
    move-result-object v18

    #@1a9
    .line 511
    .local v18, "path":Ljava/lang/String;
    sget-object v4, Lcom/android/internal/os/ProcessCpuTracker;->PROCESS_FULL_STATS_FORMAT:[I

    #@1ab
    .line 512
    const/4 v5, 0x0

    #@1ac
    .line 511
    move-object/from16 v0, v18

    #@1ae
    move-object/from16 v1, v21

    #@1b0
    move-object/from16 v2, v20

    #@1b2
    invoke-static {v0, v4, v1, v2, v5}, Landroid/os/Process;->readProcFile(Ljava/lang/String;[I[Ljava/lang/String;[J[F)Z

    #@1b5
    move-result v4

    #@1b6
    if-eqz v4, :cond_c

    #@1b8
    .line 517
    const/4 v4, 0x5

    #@1b9
    aget-wide v4, v20, v4

    #@1bb
    move-object/from16 v0, v22

    #@1bd
    iput-wide v4, v0, Lcom/android/internal/os/ProcessCpuTracker$Stats;->vsize:J

    #@1bf
    .line 519
    const/4 v4, 0x1

    #@1c0
    move-object/from16 v0, v22

    #@1c2
    iput-boolean v4, v0, Lcom/android/internal/os/ProcessCpuTracker$Stats;->interesting:Z

    #@1c4
    .line 520
    const/4 v4, 0x0

    #@1c5
    aget-object v4, v21, v4

    #@1c7
    move-object/from16 v0, v22

    #@1c9
    iput-object v4, v0, Lcom/android/internal/os/ProcessCpuTracker$Stats;->baseName:Ljava/lang/String;

    #@1cb
    .line 521
    const/4 v4, 0x1

    #@1cc
    aget-wide v4, v20, v4

    #@1ce
    move-object/from16 v0, v22

    #@1d0
    iput-wide v4, v0, Lcom/android/internal/os/ProcessCpuTracker$Stats;->base_minfaults:J

    #@1d2
    .line 522
    const/4 v4, 0x2

    #@1d3
    aget-wide v4, v20, v4

    #@1d5
    move-object/from16 v0, v22

    #@1d7
    iput-wide v4, v0, Lcom/android/internal/os/ProcessCpuTracker$Stats;->base_majfaults:J

    #@1d9
    .line 523
    const/4 v4, 0x3

    #@1da
    aget-wide v4, v20, v4

    #@1dc
    move-object/from16 v0, p0

    #@1de
    iget-wide v8, v0, Lcom/android/internal/os/ProcessCpuTracker;->mJiffyMillis:J

    #@1e0
    mul-long/2addr v4, v8

    #@1e1
    move-object/from16 v0, v22

    #@1e3
    iput-wide v4, v0, Lcom/android/internal/os/ProcessCpuTracker$Stats;->base_utime:J

    #@1e5
    .line 524
    const/4 v4, 0x4

    #@1e6
    aget-wide v4, v20, v4

    #@1e8
    move-object/from16 v0, p0

    #@1ea
    iget-wide v8, v0, Lcom/android/internal/os/ProcessCpuTracker;->mJiffyMillis:J

    #@1ec
    mul-long/2addr v4, v8

    #@1ed
    move-object/from16 v0, v22

    #@1ef
    iput-wide v4, v0, Lcom/android/internal/os/ProcessCpuTracker$Stats;->base_stime:J

    #@1f1
    .line 537
    :goto_5
    if-gez p2, :cond_d

    #@1f3
    .line 538
    move-object/from16 v0, v22

    #@1f5
    iget-object v4, v0, Lcom/android/internal/os/ProcessCpuTracker$Stats;->cmdlineFile:Ljava/lang/String;

    #@1f7
    move-object/from16 v0, p0

    #@1f9
    move-object/from16 v1, v22

    #@1fb
    invoke-direct {v0, v1, v4}, Lcom/android/internal/os/ProcessCpuTracker;->getName(Lcom/android/internal/os/ProcessCpuTracker$Stats;Ljava/lang/String;)V

    #@1fe
    .line 539
    move-object/from16 v0, v22

    #@200
    iget-object v4, v0, Lcom/android/internal/os/ProcessCpuTracker$Stats;->threadStats:Ljava/util/ArrayList;

    #@202
    if-eqz v4, :cond_b

    #@204
    .line 540
    move-object/from16 v0, v22

    #@206
    iget-object v5, v0, Lcom/android/internal/os/ProcessCpuTracker$Stats;->threadsDir:Ljava/lang/String;

    #@208
    .line 541
    move-object/from16 v0, p0

    #@20a
    iget-object v8, v0, Lcom/android/internal/os/ProcessCpuTracker;->mCurThreadPids:[I

    #@20c
    move-object/from16 v0, v22

    #@20e
    iget-object v9, v0, Lcom/android/internal/os/ProcessCpuTracker$Stats;->threadStats:Ljava/util/ArrayList;

    #@210
    .line 540
    const/4 v7, 0x1

    #@211
    move-object/from16 v4, p0

    #@213
    invoke-direct/range {v4 .. v9}, Lcom/android/internal/os/ProcessCpuTracker;->collectStats(Ljava/lang/String;IZ[ILjava/util/ArrayList;)[I

    #@216
    move-result-object v4

    #@217
    move-object/from16 v0, p0

    #@219
    iput-object v4, v0, Lcom/android/internal/os/ProcessCpuTracker;->mCurThreadPids:[I

    #@21b
    .line 552
    :cond_b
    :goto_6
    const/4 v4, 0x0

    #@21c
    move-object/from16 v0, v22

    #@21e
    iput v4, v0, Lcom/android/internal/os/ProcessCpuTracker$Stats;->rel_utime:I

    #@220
    .line 553
    const/4 v4, 0x0

    #@221
    move-object/from16 v0, v22

    #@223
    iput v4, v0, Lcom/android/internal/os/ProcessCpuTracker$Stats;->rel_stime:I

    #@225
    .line 554
    const/4 v4, 0x0

    #@226
    move-object/from16 v0, v22

    #@228
    iput v4, v0, Lcom/android/internal/os/ProcessCpuTracker$Stats;->rel_minfaults:I

    #@22a
    .line 555
    const/4 v4, 0x0

    #@22b
    move-object/from16 v0, v22

    #@22d
    iput v4, v0, Lcom/android/internal/os/ProcessCpuTracker$Stats;->rel_majfaults:I

    #@22f
    .line 556
    const/4 v4, 0x1

    #@230
    move-object/from16 v0, v22

    #@232
    iput-boolean v4, v0, Lcom/android/internal/os/ProcessCpuTracker$Stats;->added:Z

    #@234
    .line 557
    if-nez p3, :cond_3

    #@236
    move-object/from16 v0, v22

    #@238
    iget-boolean v4, v0, Lcom/android/internal/os/ProcessCpuTracker$Stats;->interesting:Z

    #@23a
    if-eqz v4, :cond_3

    #@23c
    .line 558
    const/4 v4, 0x1

    #@23d
    move-object/from16 v0, v22

    #@23f
    iput-boolean v4, v0, Lcom/android/internal/os/ProcessCpuTracker$Stats;->working:Z

    #@241
    goto/16 :goto_4

    #@243
    .line 531
    :cond_c
    const-string/jumbo v4, "ProcessCpuTracker"

    #@246
    new-instance v5, Ljava/lang/StringBuilder;

    #@248
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@24b
    const-string/jumbo v7, "Skipping unknown process pid "

    #@24e
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@251
    move-result-object v5

    #@252
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@255
    move-result-object v5

    #@256
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@259
    move-result-object v5

    #@25a
    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@25d
    .line 532
    const-string/jumbo v4, "<unknown>"

    #@260
    move-object/from16 v0, v22

    #@262
    iput-object v4, v0, Lcom/android/internal/os/ProcessCpuTracker$Stats;->baseName:Ljava/lang/String;

    #@264
    .line 533
    const-wide/16 v4, 0x0

    #@266
    move-object/from16 v0, v22

    #@268
    iput-wide v4, v0, Lcom/android/internal/os/ProcessCpuTracker$Stats;->base_stime:J

    #@26a
    const-wide/16 v4, 0x0

    #@26c
    move-object/from16 v0, v22

    #@26e
    iput-wide v4, v0, Lcom/android/internal/os/ProcessCpuTracker$Stats;->base_utime:J

    #@270
    .line 534
    const-wide/16 v4, 0x0

    #@272
    move-object/from16 v0, v22

    #@274
    iput-wide v4, v0, Lcom/android/internal/os/ProcessCpuTracker$Stats;->base_majfaults:J

    #@276
    const-wide/16 v4, 0x0

    #@278
    move-object/from16 v0, v22

    #@27a
    iput-wide v4, v0, Lcom/android/internal/os/ProcessCpuTracker$Stats;->base_minfaults:J

    #@27c
    goto/16 :goto_5

    #@27e
    .line 543
    :cond_d
    move-object/from16 v0, v22

    #@280
    iget-boolean v4, v0, Lcom/android/internal/os/ProcessCpuTracker$Stats;->interesting:Z

    #@282
    if-eqz v4, :cond_b

    #@284
    .line 544
    move-object/from16 v0, v22

    #@286
    iget-object v4, v0, Lcom/android/internal/os/ProcessCpuTracker$Stats;->baseName:Ljava/lang/String;

    #@288
    move-object/from16 v0, v22

    #@28a
    iput-object v4, v0, Lcom/android/internal/os/ProcessCpuTracker$Stats;->name:Ljava/lang/String;

    #@28c
    .line 545
    move-object/from16 v0, v22

    #@28e
    iget-object v4, v0, Lcom/android/internal/os/ProcessCpuTracker$Stats;->name:Ljava/lang/String;

    #@290
    move-object/from16 v0, p0

    #@292
    invoke-virtual {v0, v4}, Lcom/android/internal/os/ProcessCpuTracker;->onMeasureProcessName(Ljava/lang/String;)I

    #@295
    move-result v4

    #@296
    move-object/from16 v0, v22

    #@298
    iput v4, v0, Lcom/android/internal/os/ProcessCpuTracker$Stats;->nameWidth:I

    #@29a
    goto :goto_6

    #@29b
    .line 564
    .end local v18    # "path":Ljava/lang/String;
    .end local v20    # "procStats":[J
    .end local v21    # "procStatsString":[Ljava/lang/String;
    :cond_e
    const/4 v4, 0x0

    #@29c
    move-object/from16 v0, v22

    #@29e
    iput v4, v0, Lcom/android/internal/os/ProcessCpuTracker$Stats;->rel_utime:I

    #@2a0
    .line 565
    const/4 v4, 0x0

    #@2a1
    move-object/from16 v0, v22

    #@2a3
    iput v4, v0, Lcom/android/internal/os/ProcessCpuTracker$Stats;->rel_stime:I

    #@2a5
    .line 566
    const/4 v4, 0x0

    #@2a6
    move-object/from16 v0, v22

    #@2a8
    iput v4, v0, Lcom/android/internal/os/ProcessCpuTracker$Stats;->rel_minfaults:I

    #@2aa
    .line 567
    const/4 v4, 0x0

    #@2ab
    move-object/from16 v0, v22

    #@2ad
    iput v4, v0, Lcom/android/internal/os/ProcessCpuTracker$Stats;->rel_majfaults:I

    #@2af
    .line 568
    const/4 v4, 0x1

    #@2b0
    move-object/from16 v0, v22

    #@2b2
    iput-boolean v4, v0, Lcom/android/internal/os/ProcessCpuTracker$Stats;->removed:Z

    #@2b4
    .line 569
    const/4 v4, 0x1

    #@2b5
    move-object/from16 v0, v22

    #@2b7
    iput-boolean v4, v0, Lcom/android/internal/os/ProcessCpuTracker$Stats;->working:Z

    #@2b9
    .line 570
    move-object/from16 v0, p5

    #@2bb
    invoke-virtual {v0, v12}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    #@2be
    .line 571
    add-int/lit8 v11, v11, -0x1

    #@2c0
    .line 577
    add-int/lit8 v13, v13, -0x1

    #@2c2
    .line 578
    goto/16 :goto_4

    #@2c4
    .line 595
    .end local v6    # "pid":I
    .end local v22    # "st":Lcom/android/internal/os/ProcessCpuTracker$Stats;
    :cond_f
    return-object v19
.end method

.method private getName(Lcom/android/internal/os/ProcessCpuTracker$Stats;Ljava/lang/String;)V
    .locals 6
    .param p1, "st"    # Lcom/android/internal/os/ProcessCpuTracker$Stats;
    .param p2, "cmdlineFile"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    .line 896
    iget-object v2, p1, Lcom/android/internal/os/ProcessCpuTracker$Stats;->name:Ljava/lang/String;

    #@3
    .line 897
    .local v2, "newName":Ljava/lang/String;
    iget-object v3, p1, Lcom/android/internal/os/ProcessCpuTracker$Stats;->name:Ljava/lang/String;

    #@5
    if-eqz v3, :cond_0

    #@7
    iget-object v3, p1, Lcom/android/internal/os/ProcessCpuTracker$Stats;->name:Ljava/lang/String;

    #@9
    const-string/jumbo v4, "app_process"

    #@c
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@f
    move-result v3

    #@10
    if-nez v3, :cond_0

    #@12
    .line 898
    iget-object v3, p1, Lcom/android/internal/os/ProcessCpuTracker$Stats;->name:Ljava/lang/String;

    #@14
    const-string/jumbo v4, "<pre-initialized>"

    #@17
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@1a
    move-result v3

    #@1b
    .line 897
    if-eqz v3, :cond_2

    #@1d
    .line 899
    :cond_0
    invoke-direct {p0, p2, v5}, Lcom/android/internal/os/ProcessCpuTracker;->readFile(Ljava/lang/String;C)Ljava/lang/String;

    #@20
    move-result-object v0

    #@21
    .line 900
    .local v0, "cmdName":Ljava/lang/String;
    if-eqz v0, :cond_1

    #@23
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    #@26
    move-result v3

    #@27
    const/4 v4, 0x1

    #@28
    if-le v3, v4, :cond_1

    #@2a
    .line 901
    move-object v2, v0

    #@2b
    .line 902
    const-string/jumbo v3, "/"

    #@2e
    invoke-virtual {v0, v3}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    #@31
    move-result v1

    #@32
    .line 903
    .local v1, "i":I
    if-lez v1, :cond_1

    #@34
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    #@37
    move-result v3

    #@38
    add-int/lit8 v3, v3, -0x1

    #@3a
    if-ge v1, v3, :cond_1

    #@3c
    .line 904
    add-int/lit8 v3, v1, 0x1

    #@3e
    invoke-virtual {v0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    #@41
    move-result-object v2

    #@42
    .line 907
    .end local v1    # "i":I
    :cond_1
    if-nez v2, :cond_2

    #@44
    .line 908
    iget-object v2, p1, Lcom/android/internal/os/ProcessCpuTracker$Stats;->baseName:Ljava/lang/String;

    #@46
    .line 911
    .end local v0    # "cmdName":Ljava/lang/String;
    :cond_2
    iget-object v3, p1, Lcom/android/internal/os/ProcessCpuTracker$Stats;->name:Ljava/lang/String;

    #@48
    if-eqz v3, :cond_3

    #@4a
    iget-object v3, p1, Lcom/android/internal/os/ProcessCpuTracker$Stats;->name:Ljava/lang/String;

    #@4c
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@4f
    move-result v3

    #@50
    if-eqz v3, :cond_3

    #@52
    .line 895
    :goto_0
    return-void

    #@53
    .line 912
    :cond_3
    iput-object v2, p1, Lcom/android/internal/os/ProcessCpuTracker$Stats;->name:Ljava/lang/String;

    #@55
    .line 913
    iget-object v3, p1, Lcom/android/internal/os/ProcessCpuTracker$Stats;->name:Ljava/lang/String;

    #@57
    invoke-virtual {p0, v3}, Lcom/android/internal/os/ProcessCpuTracker;->onMeasureProcessName(Ljava/lang/String;)I

    #@5a
    move-result v3

    #@5b
    iput v3, p1, Lcom/android/internal/os/ProcessCpuTracker$Stats;->nameWidth:I

    #@5d
    goto :goto_0
.end method

.method private printProcessCPU(Ljava/io/PrintWriter;Ljava/lang/String;ILjava/lang/String;IIIIIIII)V
    .locals 8
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "prefix"    # Ljava/lang/String;
    .param p3, "pid"    # I
    .param p4, "label"    # Ljava/lang/String;
    .param p5, "totalTime"    # I
    .param p6, "user"    # I
    .param p7, "system"    # I
    .param p8, "iowait"    # I
    .param p9, "irq"    # I
    .param p10, "softIrq"    # I
    .param p11, "minFaults"    # I
    .param p12, "majFaults"    # I

    #@0
    .prologue
    .line 821
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@3
    .line 822
    if-nez p5, :cond_0

    #@5
    const/4 p5, 0x1

    #@6
    .line 823
    :cond_0
    add-int v2, p6, p7

    #@8
    add-int v2, v2, p8

    #@a
    add-int v2, v2, p9

    #@c
    add-int v2, v2, p10

    #@e
    int-to-long v4, v2

    #@f
    int-to-long v6, p5

    #@10
    move-object v2, p0

    #@11
    move-object v3, p1

    #@12
    invoke-direct/range {v2 .. v7}, Lcom/android/internal/os/ProcessCpuTracker;->printRatio(Ljava/io/PrintWriter;JJ)V

    #@15
    .line 824
    const-string/jumbo v2, "% "

    #@18
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@1b
    .line 825
    if-ltz p3, :cond_1

    #@1d
    .line 826
    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->print(I)V

    #@20
    .line 827
    const-string/jumbo v2, "/"

    #@23
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@26
    .line 829
    :cond_1
    invoke-virtual {p1, p4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@29
    .line 830
    const-string/jumbo v2, ": "

    #@2c
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@2f
    .line 831
    int-to-long v4, p6

    #@30
    int-to-long v6, p5

    #@31
    move-object v2, p0

    #@32
    move-object v3, p1

    #@33
    invoke-direct/range {v2 .. v7}, Lcom/android/internal/os/ProcessCpuTracker;->printRatio(Ljava/io/PrintWriter;JJ)V

    #@36
    .line 832
    const-string/jumbo v2, "% user + "

    #@39
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@3c
    .line 833
    int-to-long v4, p7

    #@3d
    int-to-long v6, p5

    #@3e
    move-object v2, p0

    #@3f
    move-object v3, p1

    #@40
    invoke-direct/range {v2 .. v7}, Lcom/android/internal/os/ProcessCpuTracker;->printRatio(Ljava/io/PrintWriter;JJ)V

    #@43
    .line 834
    const-string/jumbo v2, "% kernel"

    #@46
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@49
    .line 835
    if-lez p8, :cond_2

    #@4b
    .line 836
    const-string/jumbo v2, " + "

    #@4e
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@51
    .line 837
    move/from16 v0, p8

    #@53
    int-to-long v4, v0

    #@54
    int-to-long v6, p5

    #@55
    move-object v2, p0

    #@56
    move-object v3, p1

    #@57
    invoke-direct/range {v2 .. v7}, Lcom/android/internal/os/ProcessCpuTracker;->printRatio(Ljava/io/PrintWriter;JJ)V

    #@5a
    .line 838
    const-string/jumbo v2, "% iowait"

    #@5d
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@60
    .line 840
    :cond_2
    if-lez p9, :cond_3

    #@62
    .line 841
    const-string/jumbo v2, " + "

    #@65
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@68
    .line 842
    move/from16 v0, p9

    #@6a
    int-to-long v4, v0

    #@6b
    int-to-long v6, p5

    #@6c
    move-object v2, p0

    #@6d
    move-object v3, p1

    #@6e
    invoke-direct/range {v2 .. v7}, Lcom/android/internal/os/ProcessCpuTracker;->printRatio(Ljava/io/PrintWriter;JJ)V

    #@71
    .line 843
    const-string/jumbo v2, "% irq"

    #@74
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@77
    .line 845
    :cond_3
    if-lez p10, :cond_4

    #@79
    .line 846
    const-string/jumbo v2, " + "

    #@7c
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@7f
    .line 847
    move/from16 v0, p10

    #@81
    int-to-long v4, v0

    #@82
    int-to-long v6, p5

    #@83
    move-object v2, p0

    #@84
    move-object v3, p1

    #@85
    invoke-direct/range {v2 .. v7}, Lcom/android/internal/os/ProcessCpuTracker;->printRatio(Ljava/io/PrintWriter;JJ)V

    #@88
    .line 848
    const-string/jumbo v2, "% softirq"

    #@8b
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@8e
    .line 850
    :cond_4
    if-gtz p11, :cond_5

    #@90
    if-lez p12, :cond_7

    #@92
    .line 851
    :cond_5
    const-string/jumbo v2, " / faults:"

    #@95
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@98
    .line 852
    if-lez p11, :cond_6

    #@9a
    .line 853
    const-string/jumbo v2, " "

    #@9d
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@a0
    .line 854
    move/from16 v0, p11

    #@a2
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    #@a5
    .line 855
    const-string/jumbo v2, " minor"

    #@a8
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@ab
    .line 857
    :cond_6
    if-lez p12, :cond_7

    #@ad
    .line 858
    const-string/jumbo v2, " "

    #@b0
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@b3
    .line 859
    move/from16 v0, p12

    #@b5
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    #@b8
    .line 860
    const-string/jumbo v2, " major"

    #@bb
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@be
    .line 863
    :cond_7
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    #@c1
    .line 820
    return-void
.end method

.method private printRatio(Ljava/io/PrintWriter;JJ)V
    .locals 10
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "numerator"    # J
    .param p4, "denominator"    # J

    #@0
    .prologue
    const-wide/16 v8, 0xa

    #@2
    .line 806
    const-wide/16 v6, 0x3e8

    #@4
    mul-long/2addr v6, p2

    #@5
    div-long v4, v6, p4

    #@7
    .line 807
    .local v4, "thousands":J
    div-long v0, v4, v8

    #@9
    .line 808
    .local v0, "hundreds":J
    invoke-virtual {p1, v0, v1}, Ljava/io/PrintWriter;->print(J)V

    #@c
    .line 809
    cmp-long v6, v0, v8

    #@e
    if-gez v6, :cond_0

    #@10
    .line 810
    mul-long v6, v0, v8

    #@12
    sub-long v2, v4, v6

    #@14
    .line 811
    .local v2, "remainder":J
    const-wide/16 v6, 0x0

    #@16
    cmp-long v6, v2, v6

    #@18
    if-eqz v6, :cond_0

    #@1a
    .line 812
    const/16 v6, 0x2e

    #@1c
    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(C)V

    #@1f
    .line 813
    invoke-virtual {p1, v2, v3}, Ljava/io/PrintWriter;->print(J)V

    #@22
    .line 805
    .end local v2    # "remainder":J
    :cond_0
    return-void
.end method

.method private readFile(Ljava/lang/String;C)Ljava/lang/String;
    .locals 10
    .param p1, "file"    # Ljava/lang/String;
    .param p2, "endChar"    # C

    #@0
    .prologue
    .line 870
    invoke-static {}, Landroid/os/StrictMode;->allowThreadDiskReads()Landroid/os/StrictMode$ThreadPolicy;

    #@3
    move-result-object v6

    #@4
    .line 871
    .local v6, "savedPolicy":Landroid/os/StrictMode$ThreadPolicy;
    const/4 v3, 0x0

    #@5
    .line 873
    .local v3, "is":Ljava/io/FileInputStream;
    :try_start_0
    new-instance v4, Ljava/io/FileInputStream;

    #@7
    invoke-direct {v4, p1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@a
    .line 874
    .end local v3    # "is":Ljava/io/FileInputStream;
    .local v4, "is":Ljava/io/FileInputStream;
    :try_start_1
    iget-object v7, p0, Lcom/android/internal/os/ProcessCpuTracker;->mBuffer:[B

    #@c
    invoke-virtual {v4, v7}, Ljava/io/FileInputStream;->read([B)I

    #@f
    move-result v5

    #@10
    .line 875
    .local v5, "len":I
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V

    #@13
    .line 877
    if-lez v5, :cond_2

    #@15
    .line 879
    const/4 v2, 0x0

    #@16
    .local v2, "i":I
    :goto_0
    if-ge v2, v5, :cond_0

    #@18
    .line 880
    iget-object v7, p0, Lcom/android/internal/os/ProcessCpuTracker;->mBuffer:[B

    #@1a
    aget-byte v7, v7, v2

    #@1c
    if-ne v7, p2, :cond_1

    #@1e
    .line 884
    :cond_0
    new-instance v7, Ljava/lang/String;

    #@20
    iget-object v8, p0, Lcom/android/internal/os/ProcessCpuTracker;->mBuffer:[B

    #@22
    const/4 v9, 0x0

    #@23
    invoke-direct {v7, v8, v9, v2}, Ljava/lang/String;-><init>([BII)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    #@26
    .line 889
    invoke-static {v4}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    #@29
    .line 890
    invoke-static {v6}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    #@2c
    .line 884
    return-object v7

    #@2d
    .line 879
    :cond_1
    add-int/lit8 v2, v2, 0x1

    #@2f
    goto :goto_0

    #@30
    .line 889
    .end local v2    # "i":I
    :cond_2
    invoke-static {v4}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    #@33
    .line 890
    invoke-static {v6}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    #@36
    move-object v3, v4

    #@37
    .line 892
    .end local v4    # "is":Ljava/io/FileInputStream;
    .end local v5    # "len":I
    :goto_1
    const/4 v7, 0x0

    #@38
    return-object v7

    #@39
    .line 887
    .restart local v3    # "is":Ljava/io/FileInputStream;
    :catch_0
    move-exception v1

    #@3a
    .line 889
    .end local v3    # "is":Ljava/io/FileInputStream;
    .local v1, "e":Ljava/io/IOException;
    :goto_2
    invoke-static {v3}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    #@3d
    .line 890
    invoke-static {v6}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    #@40
    goto :goto_1

    #@41
    .line 886
    .end local v1    # "e":Ljava/io/IOException;
    .restart local v3    # "is":Ljava/io/FileInputStream;
    :catch_1
    move-exception v0

    #@42
    .line 889
    .end local v3    # "is":Ljava/io/FileInputStream;
    .local v0, "e":Ljava/io/FileNotFoundException;
    :goto_3
    invoke-static {v3}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    #@45
    .line 890
    invoke-static {v6}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    #@48
    goto :goto_1

    #@49
    .line 888
    .end local v0    # "e":Ljava/io/FileNotFoundException;
    .restart local v3    # "is":Ljava/io/FileInputStream;
    :catchall_0
    move-exception v7

    #@4a
    .line 889
    .end local v3    # "is":Ljava/io/FileInputStream;
    :goto_4
    invoke-static {v3}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    #@4d
    .line 890
    invoke-static {v6}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    #@50
    .line 888
    throw v7

    #@51
    .restart local v4    # "is":Ljava/io/FileInputStream;
    :catchall_1
    move-exception v7

    #@52
    move-object v3, v4

    #@53
    .end local v4    # "is":Ljava/io/FileInputStream;
    .local v3, "is":Ljava/io/FileInputStream;
    goto :goto_4

    #@54
    .line 886
    .end local v3    # "is":Ljava/io/FileInputStream;
    .restart local v4    # "is":Ljava/io/FileInputStream;
    :catch_2
    move-exception v0

    #@55
    .restart local v0    # "e":Ljava/io/FileNotFoundException;
    move-object v3, v4

    #@56
    .end local v4    # "is":Ljava/io/FileInputStream;
    .restart local v3    # "is":Ljava/io/FileInputStream;
    goto :goto_3

    #@57
    .line 887
    .end local v0    # "e":Ljava/io/FileNotFoundException;
    .end local v3    # "is":Ljava/io/FileInputStream;
    .restart local v4    # "is":Ljava/io/FileInputStream;
    :catch_3
    move-exception v1

    #@58
    .restart local v1    # "e":Ljava/io/IOException;
    move-object v3, v4

    #@59
    .end local v4    # "is":Ljava/io/FileInputStream;
    .restart local v3    # "is":Ljava/io/FileInputStream;
    goto :goto_2
.end method


# virtual methods
.method final buildWorkingProcs()V
    .locals 9

    #@0
    .prologue
    const/4 v8, 0x1

    #@1
    .line 671
    iget-boolean v6, p0, Lcom/android/internal/os/ProcessCpuTracker;->mWorkingProcsSorted:Z

    #@3
    if-nez v6, :cond_4

    #@5
    .line 672
    iget-object v6, p0, Lcom/android/internal/os/ProcessCpuTracker;->mWorkingProcs:Ljava/util/ArrayList;

    #@7
    invoke-virtual {v6}, Ljava/util/ArrayList;->clear()V

    #@a
    .line 673
    iget-object v6, p0, Lcom/android/internal/os/ProcessCpuTracker;->mProcStats:Ljava/util/ArrayList;

    #@c
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    #@f
    move-result v1

    #@10
    .line 674
    .local v1, "N":I
    const/4 v2, 0x0

    #@11
    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_3

    #@13
    .line 675
    iget-object v6, p0, Lcom/android/internal/os/ProcessCpuTracker;->mProcStats:Ljava/util/ArrayList;

    #@15
    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@18
    move-result-object v4

    #@19
    check-cast v4, Lcom/android/internal/os/ProcessCpuTracker$Stats;

    #@1b
    .line 676
    .local v4, "stats":Lcom/android/internal/os/ProcessCpuTracker$Stats;
    iget-boolean v6, v4, Lcom/android/internal/os/ProcessCpuTracker$Stats;->working:Z

    #@1d
    if-eqz v6, :cond_2

    #@1f
    .line 677
    iget-object v6, p0, Lcom/android/internal/os/ProcessCpuTracker;->mWorkingProcs:Ljava/util/ArrayList;

    #@21
    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@24
    .line 678
    iget-object v6, v4, Lcom/android/internal/os/ProcessCpuTracker$Stats;->threadStats:Ljava/util/ArrayList;

    #@26
    if-eqz v6, :cond_2

    #@28
    iget-object v6, v4, Lcom/android/internal/os/ProcessCpuTracker$Stats;->threadStats:Ljava/util/ArrayList;

    #@2a
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    #@2d
    move-result v6

    #@2e
    if-le v6, v8, :cond_2

    #@30
    .line 679
    iget-object v6, v4, Lcom/android/internal/os/ProcessCpuTracker$Stats;->workingThreads:Ljava/util/ArrayList;

    #@32
    invoke-virtual {v6}, Ljava/util/ArrayList;->clear()V

    #@35
    .line 680
    iget-object v6, v4, Lcom/android/internal/os/ProcessCpuTracker$Stats;->threadStats:Ljava/util/ArrayList;

    #@37
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    #@3a
    move-result v0

    #@3b
    .line 681
    .local v0, "M":I
    const/4 v3, 0x0

    #@3c
    .local v3, "j":I
    :goto_1
    if-ge v3, v0, :cond_1

    #@3e
    .line 682
    iget-object v6, v4, Lcom/android/internal/os/ProcessCpuTracker$Stats;->threadStats:Ljava/util/ArrayList;

    #@40
    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@43
    move-result-object v5

    #@44
    check-cast v5, Lcom/android/internal/os/ProcessCpuTracker$Stats;

    #@46
    .line 683
    .local v5, "tstats":Lcom/android/internal/os/ProcessCpuTracker$Stats;
    iget-boolean v6, v5, Lcom/android/internal/os/ProcessCpuTracker$Stats;->working:Z

    #@48
    if-eqz v6, :cond_0

    #@4a
    .line 684
    iget-object v6, v4, Lcom/android/internal/os/ProcessCpuTracker$Stats;->workingThreads:Ljava/util/ArrayList;

    #@4c
    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@4f
    .line 681
    :cond_0
    add-int/lit8 v3, v3, 0x1

    #@51
    goto :goto_1

    #@52
    .line 687
    .end local v5    # "tstats":Lcom/android/internal/os/ProcessCpuTracker$Stats;
    :cond_1
    iget-object v6, v4, Lcom/android/internal/os/ProcessCpuTracker$Stats;->workingThreads:Ljava/util/ArrayList;

    #@54
    sget-object v7, Lcom/android/internal/os/ProcessCpuTracker;->sLoadComparator:Ljava/util/Comparator;

    #@56
    invoke-static {v6, v7}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    #@59
    .line 674
    .end local v0    # "M":I
    .end local v3    # "j":I
    :cond_2
    add-int/lit8 v2, v2, 0x1

    #@5b
    goto :goto_0

    #@5c
    .line 691
    .end local v4    # "stats":Lcom/android/internal/os/ProcessCpuTracker$Stats;
    :cond_3
    iget-object v6, p0, Lcom/android/internal/os/ProcessCpuTracker;->mWorkingProcs:Ljava/util/ArrayList;

    #@5e
    sget-object v7, Lcom/android/internal/os/ProcessCpuTracker;->sLoadComparator:Ljava/util/Comparator;

    #@60
    invoke-static {v6, v7}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    #@63
    .line 692
    iput-boolean v8, p0, Lcom/android/internal/os/ProcessCpuTracker;->mWorkingProcsSorted:Z

    #@65
    .line 670
    .end local v1    # "N":I
    .end local v2    # "i":I
    :cond_4
    return-void
.end method

.method public final countStats()I
    .locals 1

    #@0
    .prologue
    .line 697
    iget-object v0, p0, Lcom/android/internal/os/ProcessCpuTracker;->mProcStats:Ljava/util/ArrayList;

    #@2
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public final countWorkingStats()I
    .locals 1

    #@0
    .prologue
    .line 717
    invoke-virtual {p0}, Lcom/android/internal/os/ProcessCpuTracker;->buildWorkingProcs()V

    #@3
    .line 718
    iget-object v0, p0, Lcom/android/internal/os/ProcessCpuTracker;->mWorkingProcs:Ljava/util/ArrayList;

    #@5
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    #@8
    move-result v0

    #@9
    return v0
.end method

.method public getCpuTimeForPid(I)J
    .locals 10
    .param p1, "pid"    # I

    #@0
    .prologue
    .line 603
    iget-object v5, p0, Lcom/android/internal/os/ProcessCpuTracker;->mSinglePidStatsData:[J

    #@2
    monitor-enter v5

    #@3
    .line 604
    :try_start_0
    new-instance v4, Ljava/lang/StringBuilder;

    #@5
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@8
    const-string/jumbo v6, "/proc/"

    #@b
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@e
    move-result-object v4

    #@f
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@12
    move-result-object v4

    #@13
    const-string/jumbo v6, "/stat"

    #@16
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@19
    move-result-object v4

    #@1a
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1d
    move-result-object v0

    #@1e
    .line 605
    .local v0, "statFile":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/internal/os/ProcessCpuTracker;->mSinglePidStatsData:[J

    #@20
    .line 606
    .local v1, "statsData":[J
    sget-object v4, Lcom/android/internal/os/ProcessCpuTracker;->PROCESS_STATS_FORMAT:[I

    #@22
    .line 607
    const/4 v6, 0x0

    #@23
    const/4 v7, 0x0

    #@24
    .line 606
    invoke-static {v0, v4, v6, v1, v7}, Landroid/os/Process;->readProcFile(Ljava/lang/String;[I[Ljava/lang/String;[J[F)Z

    #@27
    move-result v4

    #@28
    if-eqz v4, :cond_0

    #@2a
    .line 608
    const/4 v4, 0x2

    #@2b
    aget-wide v6, v1, v4

    #@2d
    .line 609
    const/4 v4, 0x3

    #@2e
    aget-wide v8, v1, v4

    #@30
    .line 608
    add-long v2, v6, v8

    #@32
    .line 610
    .local v2, "time":J
    iget-wide v6, p0, Lcom/android/internal/os/ProcessCpuTracker;->mJiffyMillis:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@34
    mul-long/2addr v6, v2

    #@35
    monitor-exit v5

    #@36
    return-wide v6

    #@37
    .line 612
    .end local v2    # "time":J
    :cond_0
    const-wide/16 v6, 0x0

    #@39
    monitor-exit v5

    #@3a
    return-wide v6

    #@3b
    .line 603
    .end local v0    # "statFile":Ljava/lang/String;
    .end local v1    # "statsData":[J
    :catchall_0
    move-exception v4

    #@3c
    monitor-exit v5

    #@3d
    throw v4
.end method

.method public final getLastIdleTime()I
    .locals 1

    #@0
    .prologue
    .line 655
    iget v0, p0, Lcom/android/internal/os/ProcessCpuTracker;->mRelIdleTime:I

    #@2
    return v0
.end method

.method public final getLastIoWaitTime()I
    .locals 1

    #@0
    .prologue
    .line 634
    iget v0, p0, Lcom/android/internal/os/ProcessCpuTracker;->mRelIoWaitTime:I

    #@2
    return v0
.end method

.method public final getLastIrqTime()I
    .locals 1

    #@0
    .prologue
    .line 641
    iget v0, p0, Lcom/android/internal/os/ProcessCpuTracker;->mRelIrqTime:I

    #@2
    return v0
.end method

.method public final getLastSoftIrqTime()I
    .locals 1

    #@0
    .prologue
    .line 648
    iget v0, p0, Lcom/android/internal/os/ProcessCpuTracker;->mRelSoftIrqTime:I

    #@2
    return v0
.end method

.method public final getLastSystemTime()I
    .locals 1

    #@0
    .prologue
    .line 627
    iget v0, p0, Lcom/android/internal/os/ProcessCpuTracker;->mRelSystemTime:I

    #@2
    return v0
.end method

.method public final getLastUserTime()I
    .locals 1

    #@0
    .prologue
    .line 620
    iget v0, p0, Lcom/android/internal/os/ProcessCpuTracker;->mRelUserTime:I

    #@2
    return v0
.end method

.method public final getStats(I)Lcom/android/internal/os/ProcessCpuTracker$Stats;
    .locals 1
    .param p1, "index"    # I

    #@0
    .prologue
    .line 701
    iget-object v0, p0, Lcom/android/internal/os/ProcessCpuTracker;->mProcStats:Ljava/util/ArrayList;

    #@2
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Lcom/android/internal/os/ProcessCpuTracker$Stats;

    #@8
    return-object v0
.end method

.method public final getStats(Lcom/android/internal/os/ProcessCpuTracker$FilterStats;)Ljava/util/List;
    .locals 5
    .param p1, "filter"    # Lcom/android/internal/os/ProcessCpuTracker$FilterStats;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/os/ProcessCpuTracker$FilterStats;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/os/ProcessCpuTracker$Stats;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 705
    new-instance v3, Ljava/util/ArrayList;

    #@2
    iget-object v4, p0, Lcom/android/internal/os/ProcessCpuTracker;->mProcStats:Ljava/util/ArrayList;

    #@4
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    #@7
    move-result v4

    #@8
    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    #@b
    .line 706
    .local v3, "statses":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/os/ProcessCpuTracker$Stats;>;"
    iget-object v4, p0, Lcom/android/internal/os/ProcessCpuTracker;->mProcStats:Ljava/util/ArrayList;

    #@d
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    #@10
    move-result v0

    #@11
    .line 707
    .local v0, "N":I
    const/4 v1, 0x0

    #@12
    .local v1, "p":I
    :goto_0
    if-ge v1, v0, :cond_1

    #@14
    .line 708
    iget-object v4, p0, Lcom/android/internal/os/ProcessCpuTracker;->mProcStats:Ljava/util/ArrayList;

    #@16
    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@19
    move-result-object v2

    #@1a
    check-cast v2, Lcom/android/internal/os/ProcessCpuTracker$Stats;

    #@1c
    .line 709
    .local v2, "stats":Lcom/android/internal/os/ProcessCpuTracker$Stats;
    invoke-interface {p1, v2}, Lcom/android/internal/os/ProcessCpuTracker$FilterStats;->needed(Lcom/android/internal/os/ProcessCpuTracker$Stats;)Z

    #@1f
    move-result v4

    #@20
    if-eqz v4, :cond_0

    #@22
    .line 710
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@25
    .line 707
    :cond_0
    add-int/lit8 v1, v1, 0x1

    #@27
    goto :goto_0

    #@28
    .line 713
    .end local v2    # "stats":Lcom/android/internal/os/ProcessCpuTracker$Stats;
    :cond_1
    return-object v3
.end method

.method public final getTotalCpuPercent()F
    .locals 3

    #@0
    .prologue
    .line 663
    iget v1, p0, Lcom/android/internal/os/ProcessCpuTracker;->mRelUserTime:I

    #@2
    iget v2, p0, Lcom/android/internal/os/ProcessCpuTracker;->mRelSystemTime:I

    #@4
    add-int/2addr v1, v2

    #@5
    iget v2, p0, Lcom/android/internal/os/ProcessCpuTracker;->mRelIrqTime:I

    #@7
    add-int/2addr v1, v2

    #@8
    iget v2, p0, Lcom/android/internal/os/ProcessCpuTracker;->mRelIdleTime:I

    #@a
    add-int v0, v1, v2

    #@c
    .line 664
    .local v0, "denom":I
    if-gtz v0, :cond_0

    #@e
    .line 665
    const/4 v1, 0x0

    #@f
    return v1

    #@10
    .line 667
    :cond_0
    iget v1, p0, Lcom/android/internal/os/ProcessCpuTracker;->mRelUserTime:I

    #@12
    iget v2, p0, Lcom/android/internal/os/ProcessCpuTracker;->mRelSystemTime:I

    #@14
    add-int/2addr v1, v2

    #@15
    iget v2, p0, Lcom/android/internal/os/ProcessCpuTracker;->mRelIrqTime:I

    #@17
    add-int/2addr v1, v2

    #@18
    int-to-float v1, v1

    #@19
    const/high16 v2, 0x42c80000    # 100.0f

    #@1b
    mul-float/2addr v1, v2

    #@1c
    int-to-float v2, v0

    #@1d
    div-float/2addr v1, v2

    #@1e
    return v1
.end method

.method public final getWorkingStats(I)Lcom/android/internal/os/ProcessCpuTracker$Stats;
    .locals 1
    .param p1, "index"    # I

    #@0
    .prologue
    .line 722
    iget-object v0, p0, Lcom/android/internal/os/ProcessCpuTracker;->mWorkingProcs:Ljava/util/ArrayList;

    #@2
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Lcom/android/internal/os/ProcessCpuTracker$Stats;

    #@8
    return-object v0
.end method

.method public final hasGoodLastStats()Z
    .locals 1

    #@0
    .prologue
    .line 659
    iget-boolean v0, p0, Lcom/android/internal/os/ProcessCpuTracker;->mRelStatsAreGood:Z

    #@2
    return v0
.end method

.method public init()V
    .locals 1

    #@0
    .prologue
    .line 310
    const/4 v0, 0x1

    #@1
    iput-boolean v0, p0, Lcom/android/internal/os/ProcessCpuTracker;->mFirst:Z

    #@3
    .line 311
    invoke-virtual {p0}, Lcom/android/internal/os/ProcessCpuTracker;->update()V

    #@6
    .line 308
    return-void
.end method

.method public onLoadChanged(FFF)V
    .locals 0
    .param p1, "load1"    # F
    .param p2, "load5"    # F
    .param p3, "load15"    # F

    #@0
    .prologue
    .line 301
    return-void
.end method

.method public onMeasureProcessName(Ljava/lang/String;)I
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    #@0
    .prologue
    .line 305
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public final printCurrentLoad()Ljava/lang/String;
    .locals 4

    #@0
    .prologue
    .line 726
    new-instance v1, Ljava/io/StringWriter;

    #@2
    invoke-direct {v1}, Ljava/io/StringWriter;-><init>()V

    #@5
    .line 727
    .local v1, "sw":Ljava/io/StringWriter;
    new-instance v0, Lcom/android/internal/util/FastPrintWriter;

    #@7
    const/4 v2, 0x0

    #@8
    const/16 v3, 0x80

    #@a
    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/util/FastPrintWriter;-><init>(Ljava/io/Writer;ZI)V

    #@d
    .line 728
    .local v0, "pw":Ljava/io/PrintWriter;
    const-string/jumbo v2, "Load: "

    #@10
    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@13
    .line 729
    iget v2, p0, Lcom/android/internal/os/ProcessCpuTracker;->mLoad1:F

    #@15
    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->print(F)V

    #@18
    .line 730
    const-string/jumbo v2, " / "

    #@1b
    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@1e
    .line 731
    iget v2, p0, Lcom/android/internal/os/ProcessCpuTracker;->mLoad5:F

    #@20
    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->print(F)V

    #@23
    .line 732
    const-string/jumbo v2, " / "

    #@26
    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@29
    .line 733
    iget v2, p0, Lcom/android/internal/os/ProcessCpuTracker;->mLoad15:F

    #@2b
    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(F)V

    #@2e
    .line 734
    invoke-virtual {v0}, Ljava/io/PrintWriter;->flush()V

    #@31
    .line 735
    invoke-virtual {v1}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    #@34
    move-result-object v2

    #@35
    return-object v2
.end method

.method public final printCurrentState(J)Ljava/lang/String;
    .locals 31
    .param p1, "now"    # J

    #@0
    .prologue
    .line 739
    new-instance v19, Ljava/text/SimpleDateFormat;

    #@2
    const-string/jumbo v2, "yyyy-MM-dd HH:mm:ss.SSS"

    #@5
    move-object/from16 v0, v19

    #@7
    invoke-direct {v0, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    #@a
    .line 741
    .local v19, "sdf":Ljava/text/SimpleDateFormat;
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/os/ProcessCpuTracker;->buildWorkingProcs()V

    #@d
    .line 743
    new-instance v27, Ljava/io/StringWriter;

    #@f
    invoke-direct/range {v27 .. v27}, Ljava/io/StringWriter;-><init>()V

    #@12
    .line 744
    .local v27, "sw":Ljava/io/StringWriter;
    new-instance v3, Lcom/android/internal/util/FastPrintWriter;

    #@14
    const/4 v2, 0x0

    #@15
    const/16 v4, 0x400

    #@17
    move-object/from16 v0, v27

    #@19
    invoke-direct {v3, v0, v2, v4}, Lcom/android/internal/util/FastPrintWriter;-><init>(Ljava/io/Writer;ZI)V

    #@1c
    .line 746
    .local v3, "pw":Ljava/io/PrintWriter;
    const-string/jumbo v2, "CPU usage from "

    #@1f
    invoke-virtual {v3, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@22
    .line 747
    move-object/from16 v0, p0

    #@24
    iget-wide v4, v0, Lcom/android/internal/os/ProcessCpuTracker;->mLastSampleTime:J

    #@26
    cmp-long v2, p1, v4

    #@28
    if-lez v2, :cond_1

    #@2a
    .line 748
    move-object/from16 v0, p0

    #@2c
    iget-wide v4, v0, Lcom/android/internal/os/ProcessCpuTracker;->mLastSampleTime:J

    #@2e
    sub-long v4, p1, v4

    #@30
    invoke-virtual {v3, v4, v5}, Ljava/io/PrintWriter;->print(J)V

    #@33
    .line 749
    const-string/jumbo v2, "ms to "

    #@36
    invoke-virtual {v3, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@39
    .line 750
    move-object/from16 v0, p0

    #@3b
    iget-wide v4, v0, Lcom/android/internal/os/ProcessCpuTracker;->mCurrentSampleTime:J

    #@3d
    sub-long v4, p1, v4

    #@3f
    invoke-virtual {v3, v4, v5}, Ljava/io/PrintWriter;->print(J)V

    #@42
    .line 751
    const-string/jumbo v2, "ms ago"

    #@45
    invoke-virtual {v3, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@48
    .line 758
    :goto_0
    const-string/jumbo v2, " ("

    #@4b
    invoke-virtual {v3, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@4e
    .line 759
    new-instance v2, Ljava/util/Date;

    #@50
    move-object/from16 v0, p0

    #@52
    iget-wide v4, v0, Lcom/android/internal/os/ProcessCpuTracker;->mLastSampleWallTime:J

    #@54
    invoke-direct {v2, v4, v5}, Ljava/util/Date;-><init>(J)V

    #@57
    move-object/from16 v0, v19

    #@59
    invoke-virtual {v0, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    #@5c
    move-result-object v2

    #@5d
    invoke-virtual {v3, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@60
    .line 760
    const-string/jumbo v2, " to "

    #@63
    invoke-virtual {v3, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@66
    .line 761
    new-instance v2, Ljava/util/Date;

    #@68
    move-object/from16 v0, p0

    #@6a
    iget-wide v4, v0, Lcom/android/internal/os/ProcessCpuTracker;->mCurrentSampleWallTime:J

    #@6c
    invoke-direct {v2, v4, v5}, Ljava/util/Date;-><init>(J)V

    #@6f
    move-object/from16 v0, v19

    #@71
    invoke-virtual {v0, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    #@74
    move-result-object v2

    #@75
    invoke-virtual {v3, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@78
    .line 762
    const-string/jumbo v2, ")"

    #@7b
    invoke-virtual {v3, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@7e
    .line 764
    move-object/from16 v0, p0

    #@80
    iget-wide v4, v0, Lcom/android/internal/os/ProcessCpuTracker;->mCurrentSampleTime:J

    #@82
    move-object/from16 v0, p0

    #@84
    iget-wide v6, v0, Lcom/android/internal/os/ProcessCpuTracker;->mLastSampleTime:J

    #@86
    sub-long v24, v4, v6

    #@88
    .line 765
    .local v24, "sampleTime":J
    move-object/from16 v0, p0

    #@8a
    iget-wide v4, v0, Lcom/android/internal/os/ProcessCpuTracker;->mCurrentSampleRealTime:J

    #@8c
    move-object/from16 v0, p0

    #@8e
    iget-wide v6, v0, Lcom/android/internal/os/ProcessCpuTracker;->mLastSampleRealTime:J

    #@90
    sub-long v22, v4, v6

    #@92
    .line 766
    .local v22, "sampleRealTime":J
    const-wide/16 v4, 0x0

    #@94
    cmp-long v2, v22, v4

    #@96
    if-lez v2, :cond_2

    #@98
    const-wide/16 v4, 0x64

    #@9a
    mul-long v4, v4, v24

    #@9c
    div-long v20, v4, v22

    #@9e
    .line 767
    .local v20, "percAwake":J
    :goto_1
    const-wide/16 v4, 0x64

    #@a0
    cmp-long v2, v20, v4

    #@a2
    if-eqz v2, :cond_0

    #@a4
    .line 768
    const-string/jumbo v2, " with "

    #@a7
    invoke-virtual {v3, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@aa
    .line 769
    move-wide/from16 v0, v20

    #@ac
    invoke-virtual {v3, v0, v1}, Ljava/io/PrintWriter;->print(J)V

    #@af
    .line 770
    const-string/jumbo v2, "% awake"

    #@b2
    invoke-virtual {v3, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@b5
    .line 772
    :cond_0
    const-string/jumbo v2, ":"

    #@b8
    invoke-virtual {v3, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@bb
    .line 774
    move-object/from16 v0, p0

    #@bd
    iget v2, v0, Lcom/android/internal/os/ProcessCpuTracker;->mRelUserTime:I

    #@bf
    move-object/from16 v0, p0

    #@c1
    iget v4, v0, Lcom/android/internal/os/ProcessCpuTracker;->mRelSystemTime:I

    #@c3
    add-int/2addr v2, v4

    #@c4
    move-object/from16 v0, p0

    #@c6
    iget v4, v0, Lcom/android/internal/os/ProcessCpuTracker;->mRelIoWaitTime:I

    #@c8
    add-int/2addr v2, v4

    #@c9
    .line 775
    move-object/from16 v0, p0

    #@cb
    iget v4, v0, Lcom/android/internal/os/ProcessCpuTracker;->mRelIrqTime:I

    #@cd
    .line 774
    add-int/2addr v2, v4

    #@ce
    .line 775
    move-object/from16 v0, p0

    #@d0
    iget v4, v0, Lcom/android/internal/os/ProcessCpuTracker;->mRelSoftIrqTime:I

    #@d2
    .line 774
    add-int/2addr v2, v4

    #@d3
    .line 775
    move-object/from16 v0, p0

    #@d5
    iget v4, v0, Lcom/android/internal/os/ProcessCpuTracker;->mRelIdleTime:I

    #@d7
    .line 774
    add-int v28, v2, v4

    #@d9
    .line 780
    .local v28, "totalTime":I
    move-object/from16 v0, p0

    #@db
    iget-object v2, v0, Lcom/android/internal/os/ProcessCpuTracker;->mWorkingProcs:Ljava/util/ArrayList;

    #@dd
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    #@e0
    move-result v16

    #@e1
    .line 781
    .local v16, "N":I
    const/16 v17, 0x0

    #@e3
    .local v17, "i":I
    :goto_2
    move/from16 v0, v17

    #@e5
    move/from16 v1, v16

    #@e7
    if-ge v0, v1, :cond_8

    #@e9
    .line 782
    move-object/from16 v0, p0

    #@eb
    iget-object v2, v0, Lcom/android/internal/os/ProcessCpuTracker;->mWorkingProcs:Ljava/util/ArrayList;

    #@ed
    move/from16 v0, v17

    #@ef
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@f2
    move-result-object v26

    #@f3
    check-cast v26, Lcom/android/internal/os/ProcessCpuTracker$Stats;

    #@f5
    .line 783
    .local v26, "st":Lcom/android/internal/os/ProcessCpuTracker$Stats;
    move-object/from16 v0, v26

    #@f7
    iget-boolean v2, v0, Lcom/android/internal/os/ProcessCpuTracker$Stats;->added:Z

    #@f9
    if-eqz v2, :cond_3

    #@fb
    const-string/jumbo v4, " +"

    #@fe
    .line 784
    :goto_3
    move-object/from16 v0, v26

    #@100
    iget v5, v0, Lcom/android/internal/os/ProcessCpuTracker$Stats;->pid:I

    #@102
    move-object/from16 v0, v26

    #@104
    iget-object v6, v0, Lcom/android/internal/os/ProcessCpuTracker$Stats;->name:Ljava/lang/String;

    #@106
    move-object/from16 v0, v26

    #@108
    iget-wide v8, v0, Lcom/android/internal/os/ProcessCpuTracker$Stats;->rel_uptime:J

    #@10a
    long-to-int v7, v8

    #@10b
    .line 785
    move-object/from16 v0, v26

    #@10d
    iget v8, v0, Lcom/android/internal/os/ProcessCpuTracker$Stats;->rel_utime:I

    #@10f
    move-object/from16 v0, v26

    #@111
    iget v9, v0, Lcom/android/internal/os/ProcessCpuTracker$Stats;->rel_stime:I

    #@113
    move-object/from16 v0, v26

    #@115
    iget v13, v0, Lcom/android/internal/os/ProcessCpuTracker$Stats;->rel_minfaults:I

    #@117
    move-object/from16 v0, v26

    #@119
    iget v14, v0, Lcom/android/internal/os/ProcessCpuTracker$Stats;->rel_majfaults:I

    #@11b
    const/4 v10, 0x0

    #@11c
    const/4 v11, 0x0

    #@11d
    const/4 v12, 0x0

    #@11e
    move-object/from16 v2, p0

    #@120
    .line 783
    invoke-direct/range {v2 .. v14}, Lcom/android/internal/os/ProcessCpuTracker;->printProcessCPU(Ljava/io/PrintWriter;Ljava/lang/String;ILjava/lang/String;IIIIIIII)V

    #@123
    .line 786
    move-object/from16 v0, v26

    #@125
    iget-boolean v2, v0, Lcom/android/internal/os/ProcessCpuTracker$Stats;->removed:Z

    #@127
    if-nez v2, :cond_7

    #@129
    move-object/from16 v0, v26

    #@12b
    iget-object v2, v0, Lcom/android/internal/os/ProcessCpuTracker$Stats;->workingThreads:Ljava/util/ArrayList;

    #@12d
    if-eqz v2, :cond_7

    #@12f
    .line 787
    move-object/from16 v0, v26

    #@131
    iget-object v2, v0, Lcom/android/internal/os/ProcessCpuTracker$Stats;->workingThreads:Ljava/util/ArrayList;

    #@133
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    #@136
    move-result v15

    #@137
    .line 788
    .local v15, "M":I
    const/16 v18, 0x0

    #@139
    .local v18, "j":I
    :goto_4
    move/from16 v0, v18

    #@13b
    if-ge v0, v15, :cond_7

    #@13d
    .line 789
    move-object/from16 v0, v26

    #@13f
    iget-object v2, v0, Lcom/android/internal/os/ProcessCpuTracker$Stats;->workingThreads:Ljava/util/ArrayList;

    #@141
    move/from16 v0, v18

    #@143
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@146
    move-result-object v29

    #@147
    check-cast v29, Lcom/android/internal/os/ProcessCpuTracker$Stats;

    #@149
    .line 791
    .local v29, "tst":Lcom/android/internal/os/ProcessCpuTracker$Stats;
    move-object/from16 v0, v29

    #@14b
    iget-boolean v2, v0, Lcom/android/internal/os/ProcessCpuTracker$Stats;->added:Z

    #@14d
    if-eqz v2, :cond_5

    #@14f
    const-string/jumbo v4, "   +"

    #@152
    .line 792
    :goto_5
    move-object/from16 v0, v29

    #@154
    iget v5, v0, Lcom/android/internal/os/ProcessCpuTracker$Stats;->pid:I

    #@156
    move-object/from16 v0, v29

    #@158
    iget-object v6, v0, Lcom/android/internal/os/ProcessCpuTracker$Stats;->name:Ljava/lang/String;

    #@15a
    move-object/from16 v0, v26

    #@15c
    iget-wide v8, v0, Lcom/android/internal/os/ProcessCpuTracker$Stats;->rel_uptime:J

    #@15e
    long-to-int v7, v8

    #@15f
    .line 793
    move-object/from16 v0, v29

    #@161
    iget v8, v0, Lcom/android/internal/os/ProcessCpuTracker$Stats;->rel_utime:I

    #@163
    move-object/from16 v0, v29

    #@165
    iget v9, v0, Lcom/android/internal/os/ProcessCpuTracker$Stats;->rel_stime:I

    #@167
    const/4 v10, 0x0

    #@168
    const/4 v11, 0x0

    #@169
    const/4 v12, 0x0

    #@16a
    const/4 v13, 0x0

    #@16b
    const/4 v14, 0x0

    #@16c
    move-object/from16 v2, p0

    #@16e
    .line 790
    invoke-direct/range {v2 .. v14}, Lcom/android/internal/os/ProcessCpuTracker;->printProcessCPU(Ljava/io/PrintWriter;Ljava/lang/String;ILjava/lang/String;IIIIIIII)V

    #@171
    .line 788
    add-int/lit8 v18, v18, 0x1

    #@173
    goto :goto_4

    #@174
    .line 753
    .end local v15    # "M":I
    .end local v16    # "N":I
    .end local v17    # "i":I
    .end local v18    # "j":I
    .end local v20    # "percAwake":J
    .end local v22    # "sampleRealTime":J
    .end local v24    # "sampleTime":J
    .end local v26    # "st":Lcom/android/internal/os/ProcessCpuTracker$Stats;
    .end local v28    # "totalTime":I
    .end local v29    # "tst":Lcom/android/internal/os/ProcessCpuTracker$Stats;
    :cond_1
    move-object/from16 v0, p0

    #@176
    iget-wide v4, v0, Lcom/android/internal/os/ProcessCpuTracker;->mLastSampleTime:J

    #@178
    sub-long v4, v4, p1

    #@17a
    invoke-virtual {v3, v4, v5}, Ljava/io/PrintWriter;->print(J)V

    #@17d
    .line 754
    const-string/jumbo v2, "ms to "

    #@180
    invoke-virtual {v3, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@183
    .line 755
    move-object/from16 v0, p0

    #@185
    iget-wide v4, v0, Lcom/android/internal/os/ProcessCpuTracker;->mCurrentSampleTime:J

    #@187
    sub-long v4, v4, p1

    #@189
    invoke-virtual {v3, v4, v5}, Ljava/io/PrintWriter;->print(J)V

    #@18c
    .line 756
    const-string/jumbo v2, "ms later"

    #@18f
    invoke-virtual {v3, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@192
    goto/16 :goto_0

    #@194
    .line 766
    .restart local v22    # "sampleRealTime":J
    .restart local v24    # "sampleTime":J
    :cond_2
    const-wide/16 v20, 0x0

    #@196
    goto/16 :goto_1

    #@198
    .line 783
    .restart local v16    # "N":I
    .restart local v17    # "i":I
    .restart local v20    # "percAwake":J
    .restart local v26    # "st":Lcom/android/internal/os/ProcessCpuTracker$Stats;
    .restart local v28    # "totalTime":I
    :cond_3
    move-object/from16 v0, v26

    #@19a
    iget-boolean v2, v0, Lcom/android/internal/os/ProcessCpuTracker$Stats;->removed:Z

    #@19c
    if-eqz v2, :cond_4

    #@19e
    const-string/jumbo v4, " -"

    #@1a1
    goto/16 :goto_3

    #@1a3
    :cond_4
    const-string/jumbo v4, "  "

    #@1a6
    goto/16 :goto_3

    #@1a8
    .line 791
    .restart local v15    # "M":I
    .restart local v18    # "j":I
    .restart local v29    # "tst":Lcom/android/internal/os/ProcessCpuTracker$Stats;
    :cond_5
    move-object/from16 v0, v29

    #@1aa
    iget-boolean v2, v0, Lcom/android/internal/os/ProcessCpuTracker$Stats;->removed:Z

    #@1ac
    if-eqz v2, :cond_6

    #@1ae
    const-string/jumbo v4, "   -"

    #@1b1
    goto :goto_5

    #@1b2
    :cond_6
    const-string/jumbo v4, "    "

    #@1b5
    goto :goto_5

    #@1b6
    .line 781
    .end local v15    # "M":I
    .end local v18    # "j":I
    .end local v29    # "tst":Lcom/android/internal/os/ProcessCpuTracker$Stats;
    :cond_7
    add-int/lit8 v17, v17, 0x1

    #@1b8
    goto/16 :goto_2

    #@1ba
    .line 798
    .end local v26    # "st":Lcom/android/internal/os/ProcessCpuTracker$Stats;
    :cond_8
    const-string/jumbo v4, ""

    #@1bd
    const-string/jumbo v6, "TOTAL"

    #@1c0
    move-object/from16 v0, p0

    #@1c2
    iget v8, v0, Lcom/android/internal/os/ProcessCpuTracker;->mRelUserTime:I

    #@1c4
    move-object/from16 v0, p0

    #@1c6
    iget v9, v0, Lcom/android/internal/os/ProcessCpuTracker;->mRelSystemTime:I

    #@1c8
    .line 799
    move-object/from16 v0, p0

    #@1ca
    iget v10, v0, Lcom/android/internal/os/ProcessCpuTracker;->mRelIoWaitTime:I

    #@1cc
    move-object/from16 v0, p0

    #@1ce
    iget v11, v0, Lcom/android/internal/os/ProcessCpuTracker;->mRelIrqTime:I

    #@1d0
    move-object/from16 v0, p0

    #@1d2
    iget v12, v0, Lcom/android/internal/os/ProcessCpuTracker;->mRelSoftIrqTime:I

    #@1d4
    .line 798
    const/4 v5, -0x1

    #@1d5
    .line 799
    const/4 v13, 0x0

    #@1d6
    const/4 v14, 0x0

    #@1d7
    move-object/from16 v2, p0

    #@1d9
    move/from16 v7, v28

    #@1db
    .line 798
    invoke-direct/range {v2 .. v14}, Lcom/android/internal/os/ProcessCpuTracker;->printProcessCPU(Ljava/io/PrintWriter;Ljava/lang/String;ILjava/lang/String;IIIIIIII)V

    #@1de
    .line 801
    invoke-virtual {v3}, Ljava/io/PrintWriter;->flush()V

    #@1e1
    .line 802
    invoke-virtual/range {v27 .. v27}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    #@1e4
    move-result-object v2

    #@1e5
    return-object v2
.end method

.method public update()V
    .locals 34

    #@0
    .prologue
    .line 317
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    #@3
    move-result-wide v22

    #@4
    .line 318
    .local v22, "nowUptime":J
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    #@7
    move-result-wide v20

    #@8
    .line 319
    .local v20, "nowRealtime":J
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    #@b
    move-result-wide v24

    #@c
    .line 321
    .local v24, "nowWallTime":J
    move-object/from16 v0, p0

    #@e
    iget-object v0, v0, Lcom/android/internal/os/ProcessCpuTracker;->mSystemCpuData:[J

    #@10
    move-object/from16 v27, v0

    #@12
    .line 322
    .local v27, "sysCpu":[J
    const-string/jumbo v4, "/proc/stat"

    #@15
    sget-object v5, Lcom/android/internal/os/ProcessCpuTracker;->SYSTEM_CPU_FORMAT:[I

    #@17
    .line 323
    const/4 v6, 0x0

    #@18
    const/4 v7, 0x0

    #@19
    .line 322
    move-object/from16 v0, v27

    #@1b
    invoke-static {v4, v5, v6, v0, v7}, Landroid/os/Process;->readProcFile(Ljava/lang/String;[I[Ljava/lang/String;[J[F)Z

    #@1e
    move-result v4

    #@1f
    if-eqz v4, :cond_0

    #@21
    .line 325
    const/4 v4, 0x0

    #@22
    aget-wide v4, v27, v4

    #@24
    const/4 v6, 0x1

    #@25
    aget-wide v6, v27, v6

    #@27
    add-long/2addr v4, v6

    #@28
    move-object/from16 v0, p0

    #@2a
    iget-wide v6, v0, Lcom/android/internal/os/ProcessCpuTracker;->mJiffyMillis:J

    #@2c
    mul-long v32, v4, v6

    #@2e
    .line 327
    .local v32, "usertime":J
    const/4 v4, 0x2

    #@2f
    aget-wide v4, v27, v4

    #@31
    move-object/from16 v0, p0

    #@33
    iget-wide v6, v0, Lcom/android/internal/os/ProcessCpuTracker;->mJiffyMillis:J

    #@35
    mul-long v30, v4, v6

    #@37
    .line 329
    .local v30, "systemtime":J
    const/4 v4, 0x3

    #@38
    aget-wide v4, v27, v4

    #@3a
    move-object/from16 v0, p0

    #@3c
    iget-wide v6, v0, Lcom/android/internal/os/ProcessCpuTracker;->mJiffyMillis:J

    #@3e
    mul-long v10, v4, v6

    #@40
    .line 331
    .local v10, "idletime":J
    const/4 v4, 0x4

    #@41
    aget-wide v4, v27, v4

    #@43
    move-object/from16 v0, p0

    #@45
    iget-wide v6, v0, Lcom/android/internal/os/ProcessCpuTracker;->mJiffyMillis:J

    #@47
    mul-long v12, v4, v6

    #@49
    .line 332
    .local v12, "iowaittime":J
    const/4 v4, 0x5

    #@4a
    aget-wide v4, v27, v4

    #@4c
    move-object/from16 v0, p0

    #@4e
    iget-wide v6, v0, Lcom/android/internal/os/ProcessCpuTracker;->mJiffyMillis:J

    #@50
    mul-long v14, v4, v6

    #@52
    .line 333
    .local v14, "irqtime":J
    const/4 v4, 0x6

    #@53
    aget-wide v4, v27, v4

    #@55
    move-object/from16 v0, p0

    #@57
    iget-wide v6, v0, Lcom/android/internal/os/ProcessCpuTracker;->mJiffyMillis:J

    #@59
    mul-long v28, v4, v6

    #@5b
    .line 340
    .local v28, "softirqtime":J
    move-object/from16 v0, p0

    #@5d
    iget-wide v4, v0, Lcom/android/internal/os/ProcessCpuTracker;->mBaseUserTime:J

    #@5f
    sub-long v4, v32, v4

    #@61
    long-to-int v4, v4

    #@62
    move-object/from16 v0, p0

    #@64
    iput v4, v0, Lcom/android/internal/os/ProcessCpuTracker;->mRelUserTime:I

    #@66
    .line 341
    move-object/from16 v0, p0

    #@68
    iget-wide v4, v0, Lcom/android/internal/os/ProcessCpuTracker;->mBaseSystemTime:J

    #@6a
    sub-long v4, v30, v4

    #@6c
    long-to-int v4, v4

    #@6d
    move-object/from16 v0, p0

    #@6f
    iput v4, v0, Lcom/android/internal/os/ProcessCpuTracker;->mRelSystemTime:I

    #@71
    .line 342
    move-object/from16 v0, p0

    #@73
    iget-wide v4, v0, Lcom/android/internal/os/ProcessCpuTracker;->mBaseIoWaitTime:J

    #@75
    sub-long v4, v12, v4

    #@77
    long-to-int v4, v4

    #@78
    move-object/from16 v0, p0

    #@7a
    iput v4, v0, Lcom/android/internal/os/ProcessCpuTracker;->mRelIoWaitTime:I

    #@7c
    .line 343
    move-object/from16 v0, p0

    #@7e
    iget-wide v4, v0, Lcom/android/internal/os/ProcessCpuTracker;->mBaseIrqTime:J

    #@80
    sub-long v4, v14, v4

    #@82
    long-to-int v4, v4

    #@83
    move-object/from16 v0, p0

    #@85
    iput v4, v0, Lcom/android/internal/os/ProcessCpuTracker;->mRelIrqTime:I

    #@87
    .line 344
    move-object/from16 v0, p0

    #@89
    iget-wide v4, v0, Lcom/android/internal/os/ProcessCpuTracker;->mBaseSoftIrqTime:J

    #@8b
    sub-long v4, v28, v4

    #@8d
    long-to-int v4, v4

    #@8e
    move-object/from16 v0, p0

    #@90
    iput v4, v0, Lcom/android/internal/os/ProcessCpuTracker;->mRelSoftIrqTime:I

    #@92
    .line 345
    move-object/from16 v0, p0

    #@94
    iget-wide v4, v0, Lcom/android/internal/os/ProcessCpuTracker;->mBaseIdleTime:J

    #@96
    sub-long v4, v10, v4

    #@98
    long-to-int v4, v4

    #@99
    move-object/from16 v0, p0

    #@9b
    iput v4, v0, Lcom/android/internal/os/ProcessCpuTracker;->mRelIdleTime:I

    #@9d
    .line 346
    const/4 v4, 0x1

    #@9e
    move-object/from16 v0, p0

    #@a0
    iput-boolean v4, v0, Lcom/android/internal/os/ProcessCpuTracker;->mRelStatsAreGood:Z

    #@a2
    .line 358
    move-wide/from16 v0, v32

    #@a4
    move-object/from16 v2, p0

    #@a6
    iput-wide v0, v2, Lcom/android/internal/os/ProcessCpuTracker;->mBaseUserTime:J

    #@a8
    .line 359
    move-wide/from16 v0, v30

    #@aa
    move-object/from16 v2, p0

    #@ac
    iput-wide v0, v2, Lcom/android/internal/os/ProcessCpuTracker;->mBaseSystemTime:J

    #@ae
    .line 360
    move-object/from16 v0, p0

    #@b0
    iput-wide v12, v0, Lcom/android/internal/os/ProcessCpuTracker;->mBaseIoWaitTime:J

    #@b2
    .line 361
    move-object/from16 v0, p0

    #@b4
    iput-wide v14, v0, Lcom/android/internal/os/ProcessCpuTracker;->mBaseIrqTime:J

    #@b6
    .line 362
    move-wide/from16 v0, v28

    #@b8
    move-object/from16 v2, p0

    #@ba
    iput-wide v0, v2, Lcom/android/internal/os/ProcessCpuTracker;->mBaseSoftIrqTime:J

    #@bc
    .line 363
    move-object/from16 v0, p0

    #@be
    iput-wide v10, v0, Lcom/android/internal/os/ProcessCpuTracker;->mBaseIdleTime:J

    #@c0
    .line 378
    .end local v10    # "idletime":J
    .end local v12    # "iowaittime":J
    .end local v14    # "irqtime":J
    .end local v28    # "softirqtime":J
    .end local v30    # "systemtime":J
    .end local v32    # "usertime":J
    :cond_0
    move-object/from16 v0, p0

    #@c2
    iget-wide v4, v0, Lcom/android/internal/os/ProcessCpuTracker;->mCurrentSampleTime:J

    #@c4
    move-object/from16 v0, p0

    #@c6
    iput-wide v4, v0, Lcom/android/internal/os/ProcessCpuTracker;->mLastSampleTime:J

    #@c8
    .line 379
    move-wide/from16 v0, v22

    #@ca
    move-object/from16 v2, p0

    #@cc
    iput-wide v0, v2, Lcom/android/internal/os/ProcessCpuTracker;->mCurrentSampleTime:J

    #@ce
    .line 380
    move-object/from16 v0, p0

    #@d0
    iget-wide v4, v0, Lcom/android/internal/os/ProcessCpuTracker;->mCurrentSampleRealTime:J

    #@d2
    move-object/from16 v0, p0

    #@d4
    iput-wide v4, v0, Lcom/android/internal/os/ProcessCpuTracker;->mLastSampleRealTime:J

    #@d6
    .line 381
    move-wide/from16 v0, v20

    #@d8
    move-object/from16 v2, p0

    #@da
    iput-wide v0, v2, Lcom/android/internal/os/ProcessCpuTracker;->mCurrentSampleRealTime:J

    #@dc
    .line 382
    move-object/from16 v0, p0

    #@de
    iget-wide v4, v0, Lcom/android/internal/os/ProcessCpuTracker;->mCurrentSampleWallTime:J

    #@e0
    move-object/from16 v0, p0

    #@e2
    iput-wide v4, v0, Lcom/android/internal/os/ProcessCpuTracker;->mLastSampleWallTime:J

    #@e4
    .line 383
    move-wide/from16 v0, v24

    #@e6
    move-object/from16 v2, p0

    #@e8
    iput-wide v0, v2, Lcom/android/internal/os/ProcessCpuTracker;->mCurrentSampleWallTime:J

    #@ea
    .line 385
    invoke-static {}, Landroid/os/StrictMode;->allowThreadDiskReads()Landroid/os/StrictMode$ThreadPolicy;

    #@ed
    move-result-object v26

    #@ee
    .line 387
    .local v26, "savedPolicy":Landroid/os/StrictMode$ThreadPolicy;
    :try_start_0
    const-string/jumbo v5, "/proc"

    #@f1
    move-object/from16 v0, p0

    #@f3
    iget-boolean v7, v0, Lcom/android/internal/os/ProcessCpuTracker;->mFirst:Z

    #@f5
    move-object/from16 v0, p0

    #@f7
    iget-object v8, v0, Lcom/android/internal/os/ProcessCpuTracker;->mCurPids:[I

    #@f9
    move-object/from16 v0, p0

    #@fb
    iget-object v9, v0, Lcom/android/internal/os/ProcessCpuTracker;->mProcStats:Ljava/util/ArrayList;

    #@fd
    const/4 v6, -0x1

    #@fe
    move-object/from16 v4, p0

    #@100
    invoke-direct/range {v4 .. v9}, Lcom/android/internal/os/ProcessCpuTracker;->collectStats(Ljava/lang/String;IZ[ILjava/util/ArrayList;)[I

    #@103
    move-result-object v4

    #@104
    move-object/from16 v0, p0

    #@106
    iput-object v4, v0, Lcom/android/internal/os/ProcessCpuTracker;->mCurPids:[I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@108
    .line 389
    invoke-static/range {v26 .. v26}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    #@10b
    .line 392
    move-object/from16 v0, p0

    #@10d
    iget-object v0, v0, Lcom/android/internal/os/ProcessCpuTracker;->mLoadAverageData:[F

    #@10f
    move-object/from16 v19, v0

    #@111
    .line 393
    .local v19, "loadAverages":[F
    const-string/jumbo v4, "/proc/loadavg"

    #@114
    sget-object v5, Lcom/android/internal/os/ProcessCpuTracker;->LOAD_AVERAGE_FORMAT:[I

    #@116
    .line 394
    const/4 v6, 0x0

    #@117
    const/4 v7, 0x0

    #@118
    .line 393
    move-object/from16 v0, v19

    #@11a
    invoke-static {v4, v5, v6, v7, v0}, Landroid/os/Process;->readProcFile(Ljava/lang/String;[I[Ljava/lang/String;[J[F)Z

    #@11d
    move-result v4

    #@11e
    if-eqz v4, :cond_2

    #@120
    .line 395
    const/4 v4, 0x0

    #@121
    aget v16, v19, v4

    #@123
    .line 396
    .local v16, "load1":F
    const/4 v4, 0x1

    #@124
    aget v18, v19, v4

    #@126
    .line 397
    .local v18, "load5":F
    const/4 v4, 0x2

    #@127
    aget v17, v19, v4

    #@129
    .line 398
    .local v17, "load15":F
    move-object/from16 v0, p0

    #@12b
    iget v4, v0, Lcom/android/internal/os/ProcessCpuTracker;->mLoad1:F

    #@12d
    cmpl-float v4, v16, v4

    #@12f
    if-nez v4, :cond_1

    #@131
    move-object/from16 v0, p0

    #@133
    iget v4, v0, Lcom/android/internal/os/ProcessCpuTracker;->mLoad5:F

    #@135
    cmpl-float v4, v18, v4

    #@137
    if-eqz v4, :cond_3

    #@139
    .line 399
    :cond_1
    :goto_0
    move/from16 v0, v16

    #@13b
    move-object/from16 v1, p0

    #@13d
    iput v0, v1, Lcom/android/internal/os/ProcessCpuTracker;->mLoad1:F

    #@13f
    .line 400
    move/from16 v0, v18

    #@141
    move-object/from16 v1, p0

    #@143
    iput v0, v1, Lcom/android/internal/os/ProcessCpuTracker;->mLoad5:F

    #@145
    .line 401
    move/from16 v0, v17

    #@147
    move-object/from16 v1, p0

    #@149
    iput v0, v1, Lcom/android/internal/os/ProcessCpuTracker;->mLoad15:F

    #@14b
    .line 402
    move-object/from16 v0, p0

    #@14d
    move/from16 v1, v16

    #@14f
    move/from16 v2, v18

    #@151
    move/from16 v3, v17

    #@153
    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/os/ProcessCpuTracker;->onLoadChanged(FFF)V

    #@156
    .line 409
    .end local v16    # "load1":F
    .end local v17    # "load15":F
    .end local v18    # "load5":F
    :cond_2
    const/4 v4, 0x0

    #@157
    move-object/from16 v0, p0

    #@159
    iput-boolean v4, v0, Lcom/android/internal/os/ProcessCpuTracker;->mWorkingProcsSorted:Z

    #@15b
    .line 410
    const/4 v4, 0x0

    #@15c
    move-object/from16 v0, p0

    #@15e
    iput-boolean v4, v0, Lcom/android/internal/os/ProcessCpuTracker;->mFirst:Z

    #@160
    .line 314
    return-void

    #@161
    .line 388
    .end local v19    # "loadAverages":[F
    :catchall_0
    move-exception v4

    #@162
    .line 389
    invoke-static/range {v26 .. v26}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    #@165
    .line 388
    throw v4

    #@166
    .line 398
    .restart local v16    # "load1":F
    .restart local v17    # "load15":F
    .restart local v18    # "load5":F
    .restart local v19    # "loadAverages":[F
    :cond_3
    move-object/from16 v0, p0

    #@168
    iget v4, v0, Lcom/android/internal/os/ProcessCpuTracker;->mLoad15:F

    #@16a
    cmpl-float v4, v17, v4

    #@16c
    if-eqz v4, :cond_2

    #@16e
    goto :goto_0
.end method
