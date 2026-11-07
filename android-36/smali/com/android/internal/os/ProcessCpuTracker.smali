.class public Lcom/android/internal/os/ProcessCpuTracker;
.super Ljava/lang/Object;
.source "ProcessCpuTracker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/os/ProcessCpuTracker$Stats;,
        Lcom/android/internal/os/ProcessCpuTracker$FilterStats;
    }
.end annotation


# static fields
.field private static final blacklist DEBUG:Z = false

.field private static final blacklist LOAD_AVERAGE_FORMAT:[I

.field private static final blacklist PROCESS_FULL_STATS_FORMAT:[I

.field static final blacklist PROCESS_FULL_STAT_MAJOR_FAULTS:I = 0x2

.field static final blacklist PROCESS_FULL_STAT_MINOR_FAULTS:I = 0x1

.field static final blacklist PROCESS_FULL_STAT_STIME:I = 0x4

.field static final blacklist PROCESS_FULL_STAT_UTIME:I = 0x3

.field static final blacklist PROCESS_FULL_STAT_VSIZE:I = 0x5

.field private static final blacklist PROCESS_SCHEDSTATS_FORMAT:[I

.field static final blacklist PROCESS_SCHEDSTAT_CPU_DELAY_TIME:I = 0x1

.field static final blacklist PROCESS_SCHEDSTAT_CPU_TIME:I = 0x0

.field private static final blacklist PROCESS_STATS_FORMAT:[I

.field static final blacklist PROCESS_STAT_MAJOR_FAULTS:I = 0x1

.field static final blacklist PROCESS_STAT_MINOR_FAULTS:I = 0x0

.field static final blacklist PROCESS_STAT_STIME:I = 0x3

.field static final blacklist PROCESS_STAT_UTIME:I = 0x2

.field private static final blacklist SYSTEM_CPU_FORMAT:[I

.field private static final blacklist TAG:Ljava/lang/String; = "ProcessCpuTracker"

.field private static final blacklist localLOGV:Z = false

.field private static final blacklist sLoadComparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Lcom/android/internal/os/ProcessCpuTracker$Stats;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private blacklist mBaseIdleTime:J

.field private blacklist mBaseIoWaitTime:J

.field private blacklist mBaseIrqTime:J

.field private blacklist mBaseSoftIrqTime:J

.field private blacklist mBaseSystemTime:J

.field private blacklist mBaseUserTime:J

.field private blacklist mCurPids:[I

.field private blacklist mCurThreadPids:[I

.field private blacklist mCurrentSampleRealTime:J

.field private blacklist mCurrentSampleTime:J

.field private blacklist mCurrentSampleWallTime:J

.field private blacklist mFirst:Z

.field private final blacklist mIncludeThreads:Z

.field private final blacklist mJiffyMillis:J

.field private blacklist mLastSampleRealTime:J

.field private blacklist mLastSampleTime:J

.field private blacklist mLastSampleWallTime:J

.field private blacklist mLoad1:F

.field private blacklist mLoad15:F

.field private blacklist mLoad5:F

.field private final blacklist mLoadAverageData:[F

.field private final blacklist mProcStats:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/internal/os/ProcessCpuTracker$Stats;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mProcessFullStatsData:[J

.field private final blacklist mProcessFullStatsStringData:[Ljava/lang/String;

.field private final blacklist mProcessStatsData:[J

.field private blacklist mRelIdleTime:I

.field private blacklist mRelIoWaitTime:I

.field private blacklist mRelIrqTime:I

.field private blacklist mRelSoftIrqTime:I

.field private blacklist mRelStatsAreGood:Z

.field private blacklist mRelSystemTime:I

.field private blacklist mRelUserTime:I

.field private final blacklist mSystemCpuData:[J

.field private final blacklist mWorkingProcs:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/internal/os/ProcessCpuTracker$Stats;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mWorkingProcsSorted:Z


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 57
    const/16 v0, 0xf

    new-array v0, v0, [I

    fill-array-data v0, :array_34

    sput-object v0, Lcom/android/internal/os/ProcessCpuTracker;->PROCESS_STATS_FORMAT:[I

    .line 83
    const/16 v0, 0x17

    new-array v0, v0, [I

    fill-array-data v0, :array_56

    sput-object v0, Lcom/android/internal/os/ProcessCpuTracker;->PROCESS_FULL_STATS_FORMAT:[I

    .line 118
    const/16 v0, 0x2020

    filled-new-array {v0, v0}, [I

    move-result-object v0

    sput-object v0, Lcom/android/internal/os/ProcessCpuTracker;->PROCESS_SCHEDSTATS_FORMAT:[I

    .line 126
    const/16 v0, 0x8

    new-array v0, v0, [I

    fill-array-data v0, :array_88

    sput-object v0, Lcom/android/internal/os/ProcessCpuTracker;->SYSTEM_CPU_FORMAT:[I

    .line 139
    const/16 v0, 0x4020

    filled-new-array {v0, v0, v0}, [I

    move-result-object v0

    sput-object v0, Lcom/android/internal/os/ProcessCpuTracker;->LOAD_AVERAGE_FORMAT:[I

    .line 299
    new-instance v0, Lcom/android/internal/os/ProcessCpuTracker$1;

    invoke-direct {v0}, Lcom/android/internal/os/ProcessCpuTracker$1;-><init>()V

    sput-object v0, Lcom/android/internal/os/ProcessCpuTracker;->sLoadComparator:Ljava/util/Comparator;

    return-void

    nop

    :array_34
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

    :array_56
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

    :array_88
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

.method public constructor greylist <init>(Z)V
    .registers 6
    .param p1, "includeThreads"    # Z

    .line 319
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 81
    const/4 v0, 0x4

    new-array v0, v0, [J

    iput-object v0, p0, Lcom/android/internal/os/ProcessCpuTracker;->mProcessStatsData:[J

    .line 115
    const/4 v0, 0x6

    new-array v1, v0, [Ljava/lang/String;

    iput-object v1, p0, Lcom/android/internal/os/ProcessCpuTracker;->mProcessFullStatsStringData:[Ljava/lang/String;

    .line 116
    new-array v0, v0, [J

    iput-object v0, p0, Lcom/android/internal/os/ProcessCpuTracker;->mProcessFullStatsData:[J

    .line 137
    const/4 v0, 0x7

    new-array v0, v0, [J

    iput-object v0, p0, Lcom/android/internal/os/ProcessCpuTracker;->mSystemCpuData:[J

    .line 145
    const/4 v0, 0x3

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/android/internal/os/ProcessCpuTracker;->mLoadAverageData:[F

    .line 152
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/os/ProcessCpuTracker;->mLoad1:F

    .line 153
    iput v0, p0, Lcom/android/internal/os/ProcessCpuTracker;->mLoad5:F

    .line 154
    iput v0, p0, Lcom/android/internal/os/ProcessCpuTracker;->mLoad15:F

    .line 184
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/os/ProcessCpuTracker;->mProcStats:Ljava/util/ArrayList;

    .line 185
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/os/ProcessCpuTracker;->mWorkingProcs:Ljava/util/ArrayList;

    .line 188
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/os/ProcessCpuTracker;->mFirst:Z

    .line 320
    iput-boolean p1, p0, Lcom/android/internal/os/ProcessCpuTracker;->mIncludeThreads:Z

    .line 321
    sget v0, Landroid/system/OsConstants;->_SC_CLK_TCK:I

    invoke-static {v0}, Landroid/system/Os;->sysconf(I)J

    move-result-wide v0

    .line 322
    .local v0, "jiffyHz":J
    const-wide/16 v2, 0x3e8

    div-long/2addr v2, v0

    iput-wide v2, p0, Lcom/android/internal/os/ProcessCpuTracker;->mJiffyMillis:J

    .line 323
    return-void
.end method

.method private blacklist collectStats(Ljava/lang/String;IZ[ILjava/util/ArrayList;)[I
    .registers 36
    .param p1, "statsFile"    # Ljava/lang/String;
    .param p2, "parentPid"    # I
    .param p3, "first"    # Z
    .param p4, "curPids"    # [I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "IZ[I",
            "Ljava/util/ArrayList<",
            "Lcom/android/internal/os/ProcessCpuTracker$Stats;",
            ">;)[I"
        }
    .end annotation

    .line 447
    .local p5, "allProcs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/os/ProcessCpuTracker$Stats;>;"
    move-object/from16 v0, p0

    move-object/from16 v7, p5

    move-object/from16 v8, p1

    move-object/from16 v9, p4

    invoke-static {v8, v9}, Landroid/os/Process;->getPids(Ljava/lang/String;[I)[I

    move-result-object v10

    .line 448
    .local v10, "pids":[I
    const/4 v11, 0x0

    if-nez v10, :cond_11

    move v1, v11

    goto :goto_12

    :cond_11
    array-length v1, v10

    :goto_12
    move v12, v1

    .line 449
    .local v12, "NP":I
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 450
    .local v1, "NS":I
    const/4 v2, 0x0

    .line 451
    .local v2, "curStatsIndex":I
    const/4 v3, 0x0

    move v13, v1

    move v14, v3

    .end local v1    # "NS":I
    .local v13, "NS":I
    .local v14, "i":I
    :goto_1b
    if-ge v14, v12, :cond_23d

    .line 452
    aget v1, v10, v14

    .line 453
    .local v1, "pid":I
    if-gez v1, :cond_26

    .line 454
    move v12, v1

    .line 455
    move/from16 v6, p2

    goto/16 :goto_245

    .line 457
    :cond_26
    const/4 v3, 0x0

    if-ge v2, v13, :cond_30

    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/os/ProcessCpuTracker$Stats;

    goto :goto_31

    :cond_30
    move-object v4, v3

    .line 459
    .local v4, "st":Lcom/android/internal/os/ProcessCpuTracker$Stats;
    :goto_31
    const/16 v16, 0x2

    if-eqz v4, :cond_147

    const/16 v17, 0x3

    iget v5, v4, Lcom/android/internal/os/ProcessCpuTracker$Stats;->pid:I

    if-ne v5, v1, :cond_13f

    .line 461
    iput-boolean v11, v4, Lcom/android/internal/os/ProcessCpuTracker$Stats;->added:Z

    .line 462
    iput-boolean v11, v4, Lcom/android/internal/os/ProcessCpuTracker$Stats;->working:Z

    .line 463
    add-int/lit8 v18, v2, 0x1

    .line 468
    .end local v2    # "curStatsIndex":I
    .local v18, "curStatsIndex":I
    iget-boolean v2, v4, Lcom/android/internal/os/ProcessCpuTracker$Stats;->interesting:Z

    if-eqz v2, :cond_12a

    .line 469
    move/from16 v19, v11

    move/from16 v20, v12

    .end local v12    # "NP":I
    .local v20, "NP":I
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v11

    .line 471
    .local v11, "uptime":J
    iget-object v2, v0, Lcom/android/internal/os/ProcessCpuTracker;->mProcessStatsData:[J

    .line 472
    .local v2, "procStats":[J
    iget-object v5, v4, Lcom/android/internal/os/ProcessCpuTracker$Stats;->statFile:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v5

    const/16 v21, 0x1

    sget-object v15, Lcom/android/internal/os/ProcessCpuTracker;->PROCESS_STATS_FORMAT:[I

    invoke-static {v5, v15, v3, v2, v3}, Landroid/os/Process;->readProcFile(Ljava/lang/String;[I[Ljava/lang/String;[J[F)Z

    move-result v3

    if-nez v3, :cond_65

    .line 474
    move/from16 v22, v13

    move/from16 v23, v14

    goto/16 :goto_132

    .line 477
    :cond_65
    move-object v5, v4

    .end local v4    # "st":Lcom/android/internal/os/ProcessCpuTracker$Stats;
    .local v5, "st":Lcom/android/internal/os/ProcessCpuTracker$Stats;
    aget-wide v3, v2, v19

    .line 478
    .local v3, "minfaults":J
    move-wide/from16 v22, v3

    .end local v3    # "minfaults":J
    .local v22, "minfaults":J
    aget-wide v3, v2, v21

    .line 479
    .local v3, "majfaults":J
    aget-wide v15, v2, v16

    move/from16 v24, v1

    move-object/from16 v25, v2

    .end local v1    # "pid":I
    .end local v2    # "procStats":[J
    .local v24, "pid":I
    .local v25, "procStats":[J
    iget-wide v1, v0, Lcom/android/internal/os/ProcessCpuTracker;->mJiffyMillis:J

    mul-long/2addr v15, v1

    .line 480
    .local v15, "utime":J
    aget-wide v1, v25, v17

    move-wide/from16 v26, v1

    iget-wide v1, v0, Lcom/android/internal/os/ProcessCpuTracker;->mJiffyMillis:J

    mul-long v1, v1, v26

    .line 482
    .local v1, "stime":J
    move-wide/from16 v26, v1

    .end local v1    # "stime":J
    .local v26, "stime":J
    iget-wide v1, v5, Lcom/android/internal/os/ProcessCpuTracker$Stats;->base_utime:J

    cmp-long v1, v15, v1

    if-nez v1, :cond_a7

    iget-wide v1, v5, Lcom/android/internal/os/ProcessCpuTracker$Stats;->base_stime:J

    cmp-long v1, v26, v1

    if-nez v1, :cond_a7

    .line 483
    move/from16 v1, v19

    iput v1, v5, Lcom/android/internal/os/ProcessCpuTracker$Stats;->rel_utime:I

    .line 484
    iput v1, v5, Lcom/android/internal/os/ProcessCpuTracker$Stats;->rel_stime:I

    .line 485
    iput v1, v5, Lcom/android/internal/os/ProcessCpuTracker$Stats;->rel_minfaults:I

    .line 486
    iput v1, v5, Lcom/android/internal/os/ProcessCpuTracker$Stats;->rel_majfaults:I

    .line 487
    iget-boolean v2, v5, Lcom/android/internal/os/ProcessCpuTracker$Stats;->active:Z

    if-eqz v2, :cond_a1

    .line 488
    iput-boolean v1, v5, Lcom/android/internal/os/ProcessCpuTracker$Stats;->active:Z

    move/from16 v22, v13

    move/from16 v23, v14

    goto/16 :goto_132

    .line 487
    :cond_a1
    move/from16 v22, v13

    move/from16 v23, v14

    goto/16 :goto_132

    .line 493
    :cond_a7
    iget-boolean v1, v5, Lcom/android/internal/os/ProcessCpuTracker$Stats;->active:Z

    if-nez v1, :cond_af

    .line 494
    move/from16 v1, v21

    iput-boolean v1, v5, Lcom/android/internal/os/ProcessCpuTracker$Stats;->active:Z

    .line 497
    :cond_af
    if-gez p2, :cond_ea

    .line 498
    iget-object v1, v5, Lcom/android/internal/os/ProcessCpuTracker$Stats;->cmdlineFile:Ljava/lang/String;

    invoke-direct {v0, v5, v1}, Lcom/android/internal/os/ProcessCpuTracker;->getName(Lcom/android/internal/os/ProcessCpuTracker$Stats;Ljava/lang/String;)V

    .line 499
    iget-object v1, v5, Lcom/android/internal/os/ProcessCpuTracker$Stats;->threadStats:Ljava/util/ArrayList;

    if-eqz v1, :cond_db

    .line 500
    iget-object v1, v5, Lcom/android/internal/os/ProcessCpuTracker$Stats;->threadsDir:Ljava/lang/String;

    move-wide v2, v3

    .end local v3    # "majfaults":J
    .local v2, "majfaults":J
    iget-object v4, v0, Lcom/android/internal/os/ProcessCpuTracker;->mCurThreadPids:[I

    move-object v0, v5

    .end local v5    # "st":Lcom/android/internal/os/ProcessCpuTracker$Stats;
    .local v0, "st":Lcom/android/internal/os/ProcessCpuTracker$Stats;
    iget-object v5, v0, Lcom/android/internal/os/ProcessCpuTracker$Stats;->threadStats:Ljava/util/ArrayList;

    move-wide/from16 v28, v2

    .end local v2    # "majfaults":J
    .local v28, "majfaults":J
    const/4 v3, 0x0

    move-wide v6, v15

    move-wide/from16 v8, v22

    move/from16 v2, v24

    move-object v15, v0

    move/from16 v22, v13

    move/from16 v23, v14

    move-wide/from16 v13, v26

    move-object/from16 v0, p0

    .end local v0    # "st":Lcom/android/internal/os/ProcessCpuTracker$Stats;
    .end local v14    # "i":I
    .end local v24    # "pid":I
    .end local v26    # "stime":J
    .local v2, "pid":I
    .local v6, "utime":J
    .local v8, "minfaults":J
    .local v13, "stime":J
    .local v15, "st":Lcom/android/internal/os/ProcessCpuTracker$Stats;
    .local v22, "NS":I
    .local v23, "i":I
    invoke-direct/range {v0 .. v5}, Lcom/android/internal/os/ProcessCpuTracker;->collectStats(Ljava/lang/String;IZ[ILjava/util/ArrayList;)[I

    move-result-object v1

    move v4, v2

    .end local v2    # "pid":I
    .local v4, "pid":I
    iput-object v1, v0, Lcom/android/internal/os/ProcessCpuTracker;->mCurThreadPids:[I

    goto :goto_f8

    .line 499
    .end local v4    # "pid":I
    .end local v6    # "utime":J
    .end local v8    # "minfaults":J
    .end local v23    # "i":I
    .end local v28    # "majfaults":J
    .restart local v3    # "majfaults":J
    .restart local v5    # "st":Lcom/android/internal/os/ProcessCpuTracker$Stats;
    .local v13, "NS":I
    .restart local v14    # "i":I
    .local v15, "utime":J
    .local v22, "minfaults":J
    .restart local v24    # "pid":I
    .restart local v26    # "stime":J
    :cond_db
    move-wide/from16 v28, v3

    move-wide v6, v15

    move-wide/from16 v8, v22

    move/from16 v4, v24

    move-object v15, v5

    move/from16 v22, v13

    move/from16 v23, v14

    move-wide/from16 v13, v26

    .end local v3    # "majfaults":J
    .end local v5    # "st":Lcom/android/internal/os/ProcessCpuTracker$Stats;
    .end local v14    # "i":I
    .end local v24    # "pid":I
    .end local v26    # "stime":J
    .restart local v4    # "pid":I
    .restart local v6    # "utime":J
    .restart local v8    # "minfaults":J
    .local v13, "stime":J
    .local v15, "st":Lcom/android/internal/os/ProcessCpuTracker$Stats;
    .local v22, "NS":I
    .restart local v23    # "i":I
    .restart local v28    # "majfaults":J
    goto :goto_f8

    .line 497
    .end local v4    # "pid":I
    .end local v6    # "utime":J
    .end local v8    # "minfaults":J
    .end local v23    # "i":I
    .end local v28    # "majfaults":J
    .restart local v3    # "majfaults":J
    .restart local v5    # "st":Lcom/android/internal/os/ProcessCpuTracker$Stats;
    .local v13, "NS":I
    .restart local v14    # "i":I
    .local v15, "utime":J
    .local v22, "minfaults":J
    .restart local v24    # "pid":I
    .restart local v26    # "stime":J
    :cond_ea
    move-wide/from16 v28, v3

    move-wide v6, v15

    move-wide/from16 v8, v22

    move/from16 v4, v24

    move-object v15, v5

    move/from16 v22, v13

    move/from16 v23, v14

    move-wide/from16 v13, v26

    .line 511
    .end local v3    # "majfaults":J
    .end local v5    # "st":Lcom/android/internal/os/ProcessCpuTracker$Stats;
    .end local v14    # "i":I
    .end local v24    # "pid":I
    .end local v26    # "stime":J
    .restart local v4    # "pid":I
    .restart local v6    # "utime":J
    .restart local v8    # "minfaults":J
    .local v13, "stime":J
    .local v15, "st":Lcom/android/internal/os/ProcessCpuTracker$Stats;
    .local v22, "NS":I
    .restart local v23    # "i":I
    .restart local v28    # "majfaults":J
    :goto_f8
    iget-wide v1, v15, Lcom/android/internal/os/ProcessCpuTracker$Stats;->base_uptime:J

    sub-long v1, v11, v1

    iput-wide v1, v15, Lcom/android/internal/os/ProcessCpuTracker$Stats;->rel_uptime:J

    .line 512
    iput-wide v11, v15, Lcom/android/internal/os/ProcessCpuTracker$Stats;->base_uptime:J

    .line 513
    iget-wide v1, v15, Lcom/android/internal/os/ProcessCpuTracker$Stats;->base_utime:J

    sub-long v1, v6, v1

    long-to-int v1, v1

    iput v1, v15, Lcom/android/internal/os/ProcessCpuTracker$Stats;->rel_utime:I

    .line 514
    iget-wide v1, v15, Lcom/android/internal/os/ProcessCpuTracker$Stats;->base_stime:J

    sub-long v1, v13, v1

    long-to-int v1, v1

    iput v1, v15, Lcom/android/internal/os/ProcessCpuTracker$Stats;->rel_stime:I

    .line 515
    iput-wide v6, v15, Lcom/android/internal/os/ProcessCpuTracker$Stats;->base_utime:J

    .line 516
    iput-wide v13, v15, Lcom/android/internal/os/ProcessCpuTracker$Stats;->base_stime:J

    .line 517
    iget-wide v1, v15, Lcom/android/internal/os/ProcessCpuTracker$Stats;->base_minfaults:J

    sub-long v1, v8, v1

    long-to-int v1, v1

    iput v1, v15, Lcom/android/internal/os/ProcessCpuTracker$Stats;->rel_minfaults:I

    .line 518
    iget-wide v1, v15, Lcom/android/internal/os/ProcessCpuTracker$Stats;->base_majfaults:J

    sub-long v1, v28, v1

    long-to-int v1, v1

    iput v1, v15, Lcom/android/internal/os/ProcessCpuTracker$Stats;->rel_majfaults:I

    .line 519
    iput-wide v8, v15, Lcom/android/internal/os/ProcessCpuTracker$Stats;->base_minfaults:J

    .line 520
    move-wide/from16 v2, v28

    .end local v28    # "majfaults":J
    .local v2, "majfaults":J
    iput-wide v2, v15, Lcom/android/internal/os/ProcessCpuTracker$Stats;->base_majfaults:J

    .line 521
    const/4 v1, 0x1

    iput-boolean v1, v15, Lcom/android/internal/os/ProcessCpuTracker$Stats;->working:Z

    .line 522
    .end local v2    # "majfaults":J
    .end local v6    # "utime":J
    .end local v8    # "minfaults":J
    .end local v11    # "uptime":J
    .end local v13    # "stime":J
    .end local v25    # "procStats":[J
    goto :goto_132

    .line 468
    .end local v15    # "st":Lcom/android/internal/os/ProcessCpuTracker$Stats;
    .end local v20    # "NP":I
    .end local v22    # "NS":I
    .end local v23    # "i":I
    .local v1, "pid":I
    .local v4, "st":Lcom/android/internal/os/ProcessCpuTracker$Stats;
    .restart local v12    # "NP":I
    .local v13, "NS":I
    .restart local v14    # "i":I
    :cond_12a
    move-object v15, v4

    move/from16 v20, v12

    move/from16 v22, v13

    move/from16 v23, v14

    move v4, v1

    .line 451
    .end local v1    # "pid":I
    .end local v4    # "st":Lcom/android/internal/os/ProcessCpuTracker$Stats;
    .end local v12    # "NP":I
    .end local v13    # "NS":I
    .end local v14    # "i":I
    .restart local v20    # "NP":I
    .restart local v22    # "NS":I
    .restart local v23    # "i":I
    :goto_132
    move/from16 v6, p2

    move-object/from16 v7, p5

    move/from16 v2, v18

    move/from16 v13, v22

    move/from16 v14, v23

    const/4 v1, 0x1

    goto/16 :goto_233

    .line 459
    .end local v18    # "curStatsIndex":I
    .end local v20    # "NP":I
    .end local v22    # "NS":I
    .end local v23    # "i":I
    .restart local v1    # "pid":I
    .local v2, "curStatsIndex":I
    .restart local v4    # "st":Lcom/android/internal/os/ProcessCpuTracker$Stats;
    .restart local v12    # "NP":I
    .restart local v13    # "NS":I
    .restart local v14    # "i":I
    :cond_13f
    move-object v15, v4

    move/from16 v20, v12

    move/from16 v22, v13

    move/from16 v23, v14

    goto :goto_150

    :cond_147
    move-object v15, v4

    move/from16 v20, v12

    move/from16 v22, v13

    move/from16 v23, v14

    const/16 v17, 0x3

    :goto_150
    move v4, v1

    .line 527
    .end local v1    # "pid":I
    .end local v12    # "NP":I
    .end local v13    # "NS":I
    .end local v14    # "i":I
    .local v4, "pid":I
    .restart local v15    # "st":Lcom/android/internal/os/ProcessCpuTracker$Stats;
    .restart local v20    # "NP":I
    .restart local v22    # "NS":I
    .restart local v23    # "i":I
    if-eqz v15, :cond_176

    iget v1, v15, Lcom/android/internal/os/ProcessCpuTracker$Stats;->pid:I

    if-le v1, v4, :cond_15a

    move-object/from16 v7, p5

    goto :goto_178

    .line 595
    :cond_15a
    const/4 v1, 0x0

    iput v1, v15, Lcom/android/internal/os/ProcessCpuTracker$Stats;->rel_utime:I

    .line 596
    iput v1, v15, Lcom/android/internal/os/ProcessCpuTracker$Stats;->rel_stime:I

    .line 597
    iput v1, v15, Lcom/android/internal/os/ProcessCpuTracker$Stats;->rel_minfaults:I

    .line 598
    iput v1, v15, Lcom/android/internal/os/ProcessCpuTracker$Stats;->rel_majfaults:I

    .line 599
    const/4 v1, 0x1

    iput-boolean v1, v15, Lcom/android/internal/os/ProcessCpuTracker$Stats;->removed:Z

    .line 600
    iput-boolean v1, v15, Lcom/android/internal/os/ProcessCpuTracker$Stats;->working:Z

    .line 601
    move-object/from16 v7, p5

    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 602
    add-int/lit8 v13, v22, -0x1

    .line 608
    .end local v22    # "NS":I
    .restart local v13    # "NS":I
    add-int/lit8 v14, v23, -0x1

    .line 609
    .end local v23    # "i":I
    .restart local v14    # "i":I
    move/from16 v6, p2

    const/4 v1, 0x1

    goto/16 :goto_233

    .line 527
    .end local v13    # "NS":I
    .end local v14    # "i":I
    .restart local v22    # "NS":I
    .restart local v23    # "i":I
    :cond_176
    move-object/from16 v7, p5

    .line 529
    :goto_178
    new-instance v1, Lcom/android/internal/os/ProcessCpuTracker$Stats;

    iget-boolean v5, v0, Lcom/android/internal/os/ProcessCpuTracker;->mIncludeThreads:Z

    move/from16 v6, p2

    invoke-direct {v1, v4, v6, v5}, Lcom/android/internal/os/ProcessCpuTracker$Stats;-><init>(IIZ)V

    move-object v8, v1

    .line 530
    .end local v15    # "st":Lcom/android/internal/os/ProcessCpuTracker$Stats;
    .local v8, "st":Lcom/android/internal/os/ProcessCpuTracker$Stats;
    invoke-virtual {v7, v2, v8}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 531
    add-int/lit8 v9, v2, 0x1

    .line 532
    .end local v2    # "curStatsIndex":I
    .local v9, "curStatsIndex":I
    add-int/lit8 v13, v22, 0x1

    .line 537
    .end local v22    # "NS":I
    .restart local v13    # "NS":I
    iget-object v11, v0, Lcom/android/internal/os/ProcessCpuTracker;->mProcessFullStatsStringData:[Ljava/lang/String;

    .line 538
    .local v11, "procStatsString":[Ljava/lang/String;
    iget-object v12, v0, Lcom/android/internal/os/ProcessCpuTracker;->mProcessFullStatsData:[J

    .line 539
    .local v12, "procStats":[J
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    iput-wide v1, v8, Lcom/android/internal/os/ProcessCpuTracker$Stats;->base_uptime:J

    .line 540
    iget-object v1, v8, Lcom/android/internal/os/ProcessCpuTracker$Stats;->statFile:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v14

    .line 542
    .local v14, "path":Ljava/lang/String;
    sget-object v1, Lcom/android/internal/os/ProcessCpuTracker;->PROCESS_FULL_STATS_FORMAT:[I

    invoke-static {v14, v1, v11, v12, v3}, Landroid/os/Process;->readProcFile(Ljava/lang/String;[I[Ljava/lang/String;[J[F)Z

    move-result v1

    if-eqz v1, :cond_1c9

    .line 548
    const/4 v1, 0x5

    aget-wide v1, v12, v1

    iput-wide v1, v8, Lcom/android/internal/os/ProcessCpuTracker$Stats;->vsize:J

    .line 550
    const/4 v1, 0x1

    iput-boolean v1, v8, Lcom/android/internal/os/ProcessCpuTracker$Stats;->interesting:Z

    .line 551
    const/16 v19, 0x0

    aget-object v2, v11, v19

    iput-object v2, v8, Lcom/android/internal/os/ProcessCpuTracker$Stats;->baseName:Ljava/lang/String;

    .line 552
    aget-wide v2, v12, v1

    iput-wide v2, v8, Lcom/android/internal/os/ProcessCpuTracker$Stats;->base_minfaults:J

    .line 553
    aget-wide v1, v12, v16

    iput-wide v1, v8, Lcom/android/internal/os/ProcessCpuTracker$Stats;->base_majfaults:J

    .line 554
    aget-wide v1, v12, v17

    move-wide v15, v1

    iget-wide v1, v0, Lcom/android/internal/os/ProcessCpuTracker;->mJiffyMillis:J

    mul-long/2addr v1, v15

    iput-wide v1, v8, Lcom/android/internal/os/ProcessCpuTracker$Stats;->base_utime:J

    .line 555
    const/4 v1, 0x4

    aget-wide v1, v12, v1

    move-wide v15, v1

    iget-wide v1, v0, Lcom/android/internal/os/ProcessCpuTracker;->mJiffyMillis:J

    mul-long/2addr v1, v15

    iput-wide v1, v8, Lcom/android/internal/os/ProcessCpuTracker$Stats;->base_stime:J

    goto :goto_1ef

    .line 562
    :cond_1c9
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Skipping unknown process pid "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ProcessCpuTracker"

    invoke-static {v2, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 563
    const-string v1, "<unknown>"

    iput-object v1, v8, Lcom/android/internal/os/ProcessCpuTracker$Stats;->baseName:Ljava/lang/String;

    .line 564
    const-wide/16 v1, 0x0

    iput-wide v1, v8, Lcom/android/internal/os/ProcessCpuTracker$Stats;->base_stime:J

    iput-wide v1, v8, Lcom/android/internal/os/ProcessCpuTracker$Stats;->base_utime:J

    .line 565
    iput-wide v1, v8, Lcom/android/internal/os/ProcessCpuTracker$Stats;->base_majfaults:J

    iput-wide v1, v8, Lcom/android/internal/os/ProcessCpuTracker$Stats;->base_minfaults:J

    .line 568
    :goto_1ef
    if-gez v6, :cond_20b

    .line 569
    iget-object v1, v8, Lcom/android/internal/os/ProcessCpuTracker$Stats;->cmdlineFile:Ljava/lang/String;

    invoke-direct {v0, v8, v1}, Lcom/android/internal/os/ProcessCpuTracker;->getName(Lcom/android/internal/os/ProcessCpuTracker$Stats;Ljava/lang/String;)V

    .line 570
    iget-object v1, v8, Lcom/android/internal/os/ProcessCpuTracker$Stats;->threadStats:Ljava/util/ArrayList;

    if-eqz v1, :cond_209

    .line 571
    iget-object v1, v8, Lcom/android/internal/os/ProcessCpuTracker$Stats;->threadsDir:Ljava/lang/String;

    move v2, v4

    .end local v4    # "pid":I
    .local v2, "pid":I
    iget-object v4, v0, Lcom/android/internal/os/ProcessCpuTracker;->mCurThreadPids:[I

    iget-object v5, v8, Lcom/android/internal/os/ProcessCpuTracker$Stats;->threadStats:Ljava/util/ArrayList;

    const/4 v3, 0x1

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/os/ProcessCpuTracker;->collectStats(Ljava/lang/String;IZ[ILjava/util/ArrayList;)[I

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/os/ProcessCpuTracker;->mCurThreadPids:[I

    goto :goto_21c

    .line 570
    .end local v2    # "pid":I
    .restart local v4    # "pid":I
    :cond_209
    move v2, v4

    .end local v4    # "pid":I
    .restart local v2    # "pid":I
    goto :goto_21c

    .line 574
    .end local v2    # "pid":I
    .restart local v4    # "pid":I
    :cond_20b
    move v2, v4

    .end local v4    # "pid":I
    .restart local v2    # "pid":I
    iget-boolean v1, v8, Lcom/android/internal/os/ProcessCpuTracker$Stats;->interesting:Z

    if-eqz v1, :cond_21c

    .line 575
    iget-object v1, v8, Lcom/android/internal/os/ProcessCpuTracker$Stats;->baseName:Ljava/lang/String;

    iput-object v1, v8, Lcom/android/internal/os/ProcessCpuTracker$Stats;->name:Ljava/lang/String;

    .line 576
    iget-object v1, v8, Lcom/android/internal/os/ProcessCpuTracker$Stats;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/internal/os/ProcessCpuTracker;->onMeasureProcessName(Ljava/lang/String;)I

    move-result v1

    iput v1, v8, Lcom/android/internal/os/ProcessCpuTracker$Stats;->nameWidth:I

    .line 583
    :cond_21c
    :goto_21c
    const/4 v1, 0x0

    iput v1, v8, Lcom/android/internal/os/ProcessCpuTracker$Stats;->rel_utime:I

    .line 584
    iput v1, v8, Lcom/android/internal/os/ProcessCpuTracker$Stats;->rel_stime:I

    .line 585
    iput v1, v8, Lcom/android/internal/os/ProcessCpuTracker$Stats;->rel_minfaults:I

    .line 586
    iput v1, v8, Lcom/android/internal/os/ProcessCpuTracker$Stats;->rel_majfaults:I

    .line 587
    const/4 v1, 0x1

    iput-boolean v1, v8, Lcom/android/internal/os/ProcessCpuTracker$Stats;->added:Z

    .line 588
    if-nez p3, :cond_230

    iget-boolean v3, v8, Lcom/android/internal/os/ProcessCpuTracker$Stats;->interesting:Z

    if-eqz v3, :cond_230

    .line 589
    iput-boolean v1, v8, Lcom/android/internal/os/ProcessCpuTracker$Stats;->working:Z

    .line 451
    .end local v2    # "pid":I
    .end local v8    # "st":Lcom/android/internal/os/ProcessCpuTracker$Stats;
    .end local v11    # "procStatsString":[Ljava/lang/String;
    .end local v12    # "procStats":[J
    .end local v14    # "path":Ljava/lang/String;
    :cond_230
    move v2, v9

    move/from16 v14, v23

    .end local v9    # "curStatsIndex":I
    .end local v23    # "i":I
    .local v2, "curStatsIndex":I
    .local v14, "i":I
    :goto_233
    add-int/2addr v14, v1

    move-object/from16 v8, p1

    move-object/from16 v9, p4

    move/from16 v12, v20

    const/4 v11, 0x0

    goto/16 :goto_1b

    .end local v20    # "NP":I
    .local v12, "NP":I
    :cond_23d
    move/from16 v6, p2

    move/from16 v20, v12

    move/from16 v22, v13

    move/from16 v23, v14

    .line 612
    .end local v14    # "i":I
    :goto_245
    if-ge v2, v13, :cond_262

    .line 614
    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/os/ProcessCpuTracker$Stats;

    .line 615
    .local v1, "st":Lcom/android/internal/os/ProcessCpuTracker$Stats;
    const/4 v3, 0x0

    iput v3, v1, Lcom/android/internal/os/ProcessCpuTracker$Stats;->rel_utime:I

    .line 616
    iput v3, v1, Lcom/android/internal/os/ProcessCpuTracker$Stats;->rel_stime:I

    .line 617
    iput v3, v1, Lcom/android/internal/os/ProcessCpuTracker$Stats;->rel_minfaults:I

    .line 618
    iput v3, v1, Lcom/android/internal/os/ProcessCpuTracker$Stats;->rel_majfaults:I

    .line 619
    const/4 v4, 0x1

    iput-boolean v4, v1, Lcom/android/internal/os/ProcessCpuTracker$Stats;->removed:Z

    .line 620
    iput-boolean v4, v1, Lcom/android/internal/os/ProcessCpuTracker$Stats;->working:Z

    .line 621
    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 622
    nop

    .end local v1    # "st":Lcom/android/internal/os/ProcessCpuTracker$Stats;
    add-int/lit8 v13, v13, -0x1

    .line 624
    goto :goto_245

    .line 626
    :cond_262
    return-object v10
.end method

.method private static blacklist dumpProcessCpuProto(Landroid/util/proto/ProtoOutputStream;Lcom/android/internal/os/ProcessCpuTracker$Stats;Lcom/android/internal/os/ProcessCpuTracker$Stats;)V
    .registers 9
    .param p0, "proto"    # Landroid/util/proto/ProtoOutputStream;
    .param p1, "st"    # Lcom/android/internal/os/ProcessCpuTracker$Stats;
    .param p2, "proc"    # Lcom/android/internal/os/ProcessCpuTracker$Stats;

    .line 812
    const-wide v0, 0x20b00000010L

    invoke-virtual {p0, v0, v1}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v0

    .line 813
    .local v0, "statToken":J
    const-wide v2, 0x10500000001L

    iget v4, p1, Lcom/android/internal/os/ProcessCpuTracker$Stats;->uid:I

    invoke-virtual {p0, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 814
    const-wide v2, 0x10500000002L

    iget v4, p1, Lcom/android/internal/os/ProcessCpuTracker$Stats;->pid:I

    invoke-virtual {p0, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 815
    const-wide v2, 0x10900000003L

    iget-object v4, p1, Lcom/android/internal/os/ProcessCpuTracker$Stats;->name:Ljava/lang/String;

    invoke-virtual {p0, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 816
    const-wide v2, 0x10800000004L

    iget-boolean v4, p1, Lcom/android/internal/os/ProcessCpuTracker$Stats;->added:Z

    invoke-virtual {p0, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 817
    const-wide v2, 0x10800000005L

    iget-boolean v4, p1, Lcom/android/internal/os/ProcessCpuTracker$Stats;->removed:Z

    invoke-virtual {p0, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 818
    const-wide v2, 0x10500000006L

    iget-wide v4, p1, Lcom/android/internal/os/ProcessCpuTracker$Stats;->rel_uptime:J

    invoke-virtual {p0, v2, v3, v4, v5}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 819
    const-wide v2, 0x10500000007L

    iget v4, p1, Lcom/android/internal/os/ProcessCpuTracker$Stats;->rel_utime:I

    invoke-virtual {p0, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 820
    const-wide v2, 0x10500000008L

    iget v4, p1, Lcom/android/internal/os/ProcessCpuTracker$Stats;->rel_stime:I

    invoke-virtual {p0, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 821
    const-wide v2, 0x10500000009L

    iget v4, p1, Lcom/android/internal/os/ProcessCpuTracker$Stats;->rel_minfaults:I

    invoke-virtual {p0, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 822
    const-wide v2, 0x1050000000aL

    iget v4, p1, Lcom/android/internal/os/ProcessCpuTracker$Stats;->rel_majfaults:I

    invoke-virtual {p0, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 823
    if-eqz p2, :cond_79

    .line 824
    const-wide v2, 0x1050000000bL

    iget v4, p2, Lcom/android/internal/os/ProcessCpuTracker$Stats;->pid:I

    invoke-virtual {p0, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 826
    :cond_79
    invoke-virtual {p0, v0, v1}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 827
    return-void
.end method

.method private blacklist getName(Lcom/android/internal/os/ProcessCpuTracker$Stats;Ljava/lang/String;)V
    .registers 8
    .param p1, "st"    # Lcom/android/internal/os/ProcessCpuTracker$Stats;
    .param p2, "cmdlineFile"    # Ljava/lang/String;

    .line 983
    iget-object v0, p1, Lcom/android/internal/os/ProcessCpuTracker$Stats;->name:Ljava/lang/String;

    .line 984
    .local v0, "newName":Ljava/lang/String;
    iget-object v1, p1, Lcom/android/internal/os/ProcessCpuTracker$Stats;->name:Ljava/lang/String;

    if-eqz v1, :cond_30

    iget-object v1, p1, Lcom/android/internal/os/ProcessCpuTracker$Stats;->name:Ljava/lang/String;

    .line 985
    const-string v2, "app_process"

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_30

    iget-object v1, p1, Lcom/android/internal/os/ProcessCpuTracker$Stats;->name:Ljava/lang/String;

    .line 986
    const-string v2, "<pre-initialized>"

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_30

    iget-object v1, p1, Lcom/android/internal/os/ProcessCpuTracker$Stats;->name:Ljava/lang/String;

    .line 987
    const-string/jumbo v2, "usap32"

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_30

    iget-object v1, p1, Lcom/android/internal/os/ProcessCpuTracker$Stats;->name:Ljava/lang/String;

    .line 988
    const-string/jumbo v2, "usap64"

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_58

    .line 989
    :cond_30
    const/4 v1, 0x0

    invoke-static {p2, v1}, Lcom/android/internal/os/ProcStatsUtil;->readTerminatedProcFile(Ljava/lang/String;B)Ljava/lang/String;

    move-result-object v1

    .line 990
    .local v1, "cmdName":Ljava/lang/String;
    if-eqz v1, :cond_54

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x1

    if-le v2, v3, :cond_54

    .line 991
    move-object v0, v1

    .line 992
    const-string v2, "/"

    invoke-virtual {v0, v2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v2

    .line 993
    .local v2, "i":I
    if-lez v2, :cond_54

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    sub-int/2addr v4, v3

    if-ge v2, v4, :cond_54

    .line 994
    add-int/lit8 v3, v2, 0x1

    invoke-virtual {v0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 997
    .end local v2    # "i":I
    :cond_54
    if-nez v0, :cond_58

    .line 998
    iget-object v0, p1, Lcom/android/internal/os/ProcessCpuTracker$Stats;->baseName:Ljava/lang/String;

    .line 1001
    .end local v1    # "cmdName":Ljava/lang/String;
    :cond_58
    iget-object v1, p1, Lcom/android/internal/os/ProcessCpuTracker$Stats;->name:Ljava/lang/String;

    if-eqz v1, :cond_64

    iget-object v1, p1, Lcom/android/internal/os/ProcessCpuTracker$Stats;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6e

    .line 1002
    :cond_64
    iput-object v0, p1, Lcom/android/internal/os/ProcessCpuTracker$Stats;->name:Ljava/lang/String;

    .line 1003
    iget-object v1, p1, Lcom/android/internal/os/ProcessCpuTracker$Stats;->name:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/android/internal/os/ProcessCpuTracker;->onMeasureProcessName(Ljava/lang/String;)I

    move-result v1

    iput v1, p1, Lcom/android/internal/os/ProcessCpuTracker$Stats;->nameWidth:I

    .line 1005
    :cond_6e
    return-void
.end method

.method private blacklist printProcessCPU(Ljava/io/PrintWriter;Ljava/lang/String;ILjava/lang/String;IIIIIIII)V
    .registers 29
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

    .line 937
    move/from16 v6, p3

    move/from16 v7, p6

    move/from16 v8, p7

    move/from16 v9, p8

    move/from16 v10, p9

    move/from16 v11, p10

    move/from16 v12, p11

    move/from16 v13, p12

    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 938
    if-nez p5, :cond_18

    const/4 v0, 0x1

    move v14, v0

    .end local p5    # "totalTime":I
    .local v0, "totalTime":I
    goto :goto_1a

    .end local v0    # "totalTime":I
    .restart local p5    # "totalTime":I
    :cond_18
    move/from16 v14, p5

    .line 939
    .end local p5    # "totalTime":I
    .local v14, "totalTime":I
    :goto_1a
    add-int v0, v7, v8

    add-int/2addr v0, v9

    add-int/2addr v0, v10

    add-int/2addr v0, v11

    int-to-long v2, v0

    int-to-long v4, v14

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/os/ProcessCpuTracker;->printRatio(Ljava/io/PrintWriter;JJ)V

    .line 940
    const-string v0, "% "

    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 941
    if-ltz v6, :cond_37

    .line 942
    invoke-virtual {v1, v6}, Ljava/io/PrintWriter;->print(I)V

    .line 943
    const-string v0, "/"

    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 945
    :cond_37
    move-object/from16 v15, p4

    invoke-virtual {v1, v15}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 946
    const-string v0, ": "

    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 947
    int-to-long v2, v7

    int-to-long v4, v14

    move-object/from16 v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/os/ProcessCpuTracker;->printRatio(Ljava/io/PrintWriter;JJ)V

    .line 948
    const-string v0, "% user + "

    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 949
    int-to-long v2, v8

    int-to-long v4, v14

    move-object/from16 v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/os/ProcessCpuTracker;->printRatio(Ljava/io/PrintWriter;JJ)V

    .line 950
    const-string v0, "% kernel"

    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 951
    const-string v0, " + "

    if-lez v9, :cond_6e

    .line 952
    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 953
    int-to-long v2, v9

    int-to-long v4, v14

    move-object v6, v0

    move-object/from16 v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/os/ProcessCpuTracker;->printRatio(Ljava/io/PrintWriter;JJ)V

    .line 954
    const-string v0, "% iowait"

    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_6f

    .line 951
    :cond_6e
    move-object v6, v0

    .line 956
    :goto_6f
    if-lez v10, :cond_80

    .line 957
    invoke-virtual {v1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 958
    int-to-long v2, v10

    int-to-long v4, v14

    move-object/from16 v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/os/ProcessCpuTracker;->printRatio(Ljava/io/PrintWriter;JJ)V

    .line 959
    const-string v0, "% irq"

    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 961
    :cond_80
    if-lez v11, :cond_91

    .line 962
    invoke-virtual {v1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 963
    int-to-long v2, v11

    int-to-long v4, v14

    move-object/from16 v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/os/ProcessCpuTracker;->printRatio(Ljava/io/PrintWriter;JJ)V

    .line 964
    const-string v0, "% softirq"

    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 966
    :cond_91
    if-gtz v12, :cond_95

    if-lez v13, :cond_b6

    .line 967
    :cond_95
    const-string v0, " / faults:"

    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 968
    const-string v0, " "

    if-lez v12, :cond_a9

    .line 969
    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 970
    invoke-virtual {v1, v12}, Ljava/io/PrintWriter;->print(I)V

    .line 971
    const-string v2, " minor"

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 973
    :cond_a9
    if-lez v13, :cond_b6

    .line 974
    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 975
    invoke-virtual {v1, v13}, Ljava/io/PrintWriter;->print(I)V

    .line 976
    const-string v0, " major"

    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 979
    :cond_b6
    invoke-virtual {v1}, Ljava/io/PrintWriter;->println()V

    .line 980
    return-void
.end method

.method private blacklist printRatio(Ljava/io/PrintWriter;JJ)V
    .registers 14
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "numerator"    # J
    .param p4, "denominator"    # J

    .line 922
    const-wide/16 v0, 0x3e8

    mul-long/2addr v0, p2

    div-long/2addr v0, p4

    .line 923
    .local v0, "thousands":J
    const-wide/16 v2, 0xa

    div-long v4, v0, v2

    .line 924
    .local v4, "hundreds":J
    invoke-virtual {p1, v4, v5}, Ljava/io/PrintWriter;->print(J)V

    .line 925
    cmp-long v6, v4, v2

    if-gez v6, :cond_20

    .line 926
    mul-long/2addr v2, v4

    sub-long v2, v0, v2

    .line 927
    .local v2, "remainder":J
    const-wide/16 v6, 0x0

    cmp-long v6, v2, v6

    if-eqz v6, :cond_20

    .line 928
    const/16 v6, 0x2e

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(C)V

    .line 929
    invoke-virtual {p1, v2, v3}, Ljava/io/PrintWriter;->print(J)V

    .line 932
    .end local v2    # "remainder":J
    :cond_20
    return-void
.end method

.method private blacklist updateLocked()V
    .registers 26

    .line 348
    move-object/from16 v1, p0

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v7

    .line 349
    .local v7, "nowUptime":J
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v9

    .line 350
    .local v9, "nowRealtime":J
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v11

    .line 352
    .local v11, "nowWallTime":J
    iget-object v13, v1, Lcom/android/internal/os/ProcessCpuTracker;->mSystemCpuData:[J

    .line 353
    .local v13, "sysCpu":[J
    sget-object v0, Lcom/android/internal/os/ProcessCpuTracker;->SYSTEM_CPU_FORMAT:[I

    const-string v2, "/proc/stat"

    const/4 v14, 0x0

    invoke-static {v2, v0, v14, v13, v14}, Landroid/os/Process;->readProcFile(Ljava/lang/String;[I[Ljava/lang/String;[J[F)Z

    move-result v0

    const/4 v15, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v0, :cond_93

    .line 356
    aget-wide v4, v13, v3

    aget-wide v16, v13, v2

    add-long v4, v4, v16

    move-wide/from16 v16, v4

    iget-wide v3, v1, Lcom/android/internal/os/ProcessCpuTracker;->mJiffyMillis:J

    mul-long v4, v16, v3

    .line 358
    .local v4, "usertime":J
    aget-wide v16, v13, v15

    move/from16 v18, v15

    iget-wide v14, v1, Lcom/android/internal/os/ProcessCpuTracker;->mJiffyMillis:J

    mul-long v14, v14, v16

    .line 360
    .local v14, "systemtime":J
    const/4 v3, 0x3

    aget-wide v16, v13, v3

    iget-wide v2, v1, Lcom/android/internal/os/ProcessCpuTracker;->mJiffyMillis:J

    mul-long v2, v2, v16

    .line 362
    .local v2, "idletime":J
    const/16 v16, 0x4

    aget-wide v16, v13, v16

    move-wide/from16 v19, v7

    .end local v7    # "nowUptime":J
    .local v19, "nowUptime":J
    iget-wide v6, v1, Lcom/android/internal/os/ProcessCpuTracker;->mJiffyMillis:J

    mul-long v6, v6, v16

    .line 363
    .local v6, "iowaittime":J
    const/16 v16, 0x5

    aget-wide v16, v13, v16

    move-wide/from16 v21, v9

    .end local v9    # "nowRealtime":J
    .local v21, "nowRealtime":J
    iget-wide v8, v1, Lcom/android/internal/os/ProcessCpuTracker;->mJiffyMillis:J

    mul-long v8, v8, v16

    .line 364
    .local v8, "irqtime":J
    const/16 v16, 0x6

    aget-wide v16, v13, v16

    move-wide/from16 v23, v11

    .end local v11    # "nowWallTime":J
    .local v23, "nowWallTime":J
    iget-wide v10, v1, Lcom/android/internal/os/ProcessCpuTracker;->mJiffyMillis:J

    mul-long v10, v10, v16

    .line 371
    .local v10, "softirqtime":J
    move-object/from16 v16, v13

    .end local v13    # "sysCpu":[J
    .local v16, "sysCpu":[J
    iget-wide v12, v1, Lcom/android/internal/os/ProcessCpuTracker;->mBaseUserTime:J

    sub-long v12, v4, v12

    long-to-int v12, v12

    iput v12, v1, Lcom/android/internal/os/ProcessCpuTracker;->mRelUserTime:I

    .line 372
    iget-wide v12, v1, Lcom/android/internal/os/ProcessCpuTracker;->mBaseSystemTime:J

    sub-long v12, v14, v12

    long-to-int v12, v12

    iput v12, v1, Lcom/android/internal/os/ProcessCpuTracker;->mRelSystemTime:I

    .line 373
    iget-wide v12, v1, Lcom/android/internal/os/ProcessCpuTracker;->mBaseIoWaitTime:J

    sub-long v12, v6, v12

    long-to-int v12, v12

    iput v12, v1, Lcom/android/internal/os/ProcessCpuTracker;->mRelIoWaitTime:I

    .line 374
    iget-wide v12, v1, Lcom/android/internal/os/ProcessCpuTracker;->mBaseIrqTime:J

    sub-long v12, v8, v12

    long-to-int v12, v12

    iput v12, v1, Lcom/android/internal/os/ProcessCpuTracker;->mRelIrqTime:I

    .line 375
    iget-wide v12, v1, Lcom/android/internal/os/ProcessCpuTracker;->mBaseSoftIrqTime:J

    sub-long v12, v10, v12

    long-to-int v12, v12

    iput v12, v1, Lcom/android/internal/os/ProcessCpuTracker;->mRelSoftIrqTime:I

    .line 376
    iget-wide v12, v1, Lcom/android/internal/os/ProcessCpuTracker;->mBaseIdleTime:J

    sub-long v12, v2, v12

    long-to-int v12, v12

    iput v12, v1, Lcom/android/internal/os/ProcessCpuTracker;->mRelIdleTime:I

    .line 377
    const/4 v12, 0x1

    iput-boolean v12, v1, Lcom/android/internal/os/ProcessCpuTracker;->mRelStatsAreGood:Z

    .line 389
    iput-wide v4, v1, Lcom/android/internal/os/ProcessCpuTracker;->mBaseUserTime:J

    .line 390
    iput-wide v14, v1, Lcom/android/internal/os/ProcessCpuTracker;->mBaseSystemTime:J

    .line 391
    iput-wide v6, v1, Lcom/android/internal/os/ProcessCpuTracker;->mBaseIoWaitTime:J

    .line 392
    iput-wide v8, v1, Lcom/android/internal/os/ProcessCpuTracker;->mBaseIrqTime:J

    .line 393
    iput-wide v10, v1, Lcom/android/internal/os/ProcessCpuTracker;->mBaseSoftIrqTime:J

    .line 394
    iput-wide v2, v1, Lcom/android/internal/os/ProcessCpuTracker;->mBaseIdleTime:J

    goto :goto_9e

    .line 353
    .end local v2    # "idletime":J
    .end local v4    # "usertime":J
    .end local v6    # "iowaittime":J
    .end local v8    # "irqtime":J
    .end local v10    # "softirqtime":J
    .end local v14    # "systemtime":J
    .end local v16    # "sysCpu":[J
    .end local v19    # "nowUptime":J
    .end local v21    # "nowRealtime":J
    .end local v23    # "nowWallTime":J
    .restart local v7    # "nowUptime":J
    .restart local v9    # "nowRealtime":J
    .restart local v11    # "nowWallTime":J
    .restart local v13    # "sysCpu":[J
    :cond_93
    move-wide/from16 v19, v7

    move-wide/from16 v21, v9

    move-wide/from16 v23, v11

    move-object/from16 v16, v13

    move/from16 v18, v15

    move v12, v2

    .line 409
    .end local v7    # "nowUptime":J
    .end local v9    # "nowRealtime":J
    .end local v11    # "nowWallTime":J
    .end local v13    # "sysCpu":[J
    .restart local v16    # "sysCpu":[J
    .restart local v19    # "nowUptime":J
    .restart local v21    # "nowRealtime":J
    .restart local v23    # "nowWallTime":J
    :goto_9e
    iget-wide v2, v1, Lcom/android/internal/os/ProcessCpuTracker;->mCurrentSampleTime:J

    iput-wide v2, v1, Lcom/android/internal/os/ProcessCpuTracker;->mLastSampleTime:J

    .line 410
    move-wide/from16 v7, v19

    .end local v19    # "nowUptime":J
    .restart local v7    # "nowUptime":J
    iput-wide v7, v1, Lcom/android/internal/os/ProcessCpuTracker;->mCurrentSampleTime:J

    .line 411
    iget-wide v2, v1, Lcom/android/internal/os/ProcessCpuTracker;->mCurrentSampleRealTime:J

    iput-wide v2, v1, Lcom/android/internal/os/ProcessCpuTracker;->mLastSampleRealTime:J

    .line 412
    move-wide/from16 v9, v21

    .end local v21    # "nowRealtime":J
    .restart local v9    # "nowRealtime":J
    iput-wide v9, v1, Lcom/android/internal/os/ProcessCpuTracker;->mCurrentSampleRealTime:J

    .line 413
    iget-wide v2, v1, Lcom/android/internal/os/ProcessCpuTracker;->mCurrentSampleWallTime:J

    iput-wide v2, v1, Lcom/android/internal/os/ProcessCpuTracker;->mLastSampleWallTime:J

    .line 414
    move-wide/from16 v13, v23

    .end local v23    # "nowWallTime":J
    .local v13, "nowWallTime":J
    iput-wide v13, v1, Lcom/android/internal/os/ProcessCpuTracker;->mCurrentSampleWallTime:J

    .line 416
    invoke-static {}, Landroid/os/StrictMode;->allowThreadDiskReads()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object v11

    .line 418
    .local v11, "savedPolicy":Landroid/os/StrictMode$ThreadPolicy;
    :try_start_ba
    const-string v2, "/proc"

    iget-boolean v4, v1, Lcom/android/internal/os/ProcessCpuTracker;->mFirst:Z

    iget-object v5, v1, Lcom/android/internal/os/ProcessCpuTracker;->mCurPids:[I

    iget-object v6, v1, Lcom/android/internal/os/ProcessCpuTracker;->mProcStats:Ljava/util/ArrayList;

    const/4 v3, -0x1

    const/4 v0, 0x0

    invoke-direct/range {v1 .. v6}, Lcom/android/internal/os/ProcessCpuTracker;->collectStats(Ljava/lang/String;IZ[ILjava/util/ArrayList;)[I

    move-result-object v2

    iput-object v2, v1, Lcom/android/internal/os/ProcessCpuTracker;->mCurPids:[I
    :try_end_ca
    .catchall {:try_start_ba .. :try_end_ca} :catchall_101

    .line 420
    invoke-static {v11}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 421
    nop

    .line 423
    iget-object v2, v1, Lcom/android/internal/os/ProcessCpuTracker;->mLoadAverageData:[F

    .line 424
    .local v2, "loadAverages":[F
    const-string v3, "/proc/loadavg"

    sget-object v4, Lcom/android/internal/os/ProcessCpuTracker;->LOAD_AVERAGE_FORMAT:[I

    const/4 v5, 0x0

    invoke-static {v3, v4, v5, v5, v2}, Landroid/os/Process;->readProcFile(Ljava/lang/String;[I[Ljava/lang/String;[J[F)Z

    move-result v3

    if-eqz v3, :cond_fc

    .line 426
    aget v3, v2, v0

    .line 427
    .local v3, "load1":F
    aget v4, v2, v12

    .line 428
    .local v4, "load5":F
    aget v5, v2, v18

    .line 429
    .local v5, "load15":F
    iget v6, v1, Lcom/android/internal/os/ProcessCpuTracker;->mLoad1:F

    cmpl-float v6, v3, v6

    if-nez v6, :cond_f3

    iget v6, v1, Lcom/android/internal/os/ProcessCpuTracker;->mLoad5:F

    cmpl-float v6, v4, v6

    if-nez v6, :cond_f3

    iget v6, v1, Lcom/android/internal/os/ProcessCpuTracker;->mLoad15:F

    cmpl-float v6, v5, v6

    if-eqz v6, :cond_fc

    .line 430
    :cond_f3
    iput v3, v1, Lcom/android/internal/os/ProcessCpuTracker;->mLoad1:F

    .line 431
    iput v4, v1, Lcom/android/internal/os/ProcessCpuTracker;->mLoad5:F

    .line 432
    iput v5, v1, Lcom/android/internal/os/ProcessCpuTracker;->mLoad15:F

    .line 433
    invoke-virtual {v1, v3, v4, v5}, Lcom/android/internal/os/ProcessCpuTracker;->onLoadChanged(FFF)V

    .line 440
    .end local v3    # "load1":F
    .end local v4    # "load5":F
    .end local v5    # "load15":F
    :cond_fc
    iput-boolean v0, v1, Lcom/android/internal/os/ProcessCpuTracker;->mWorkingProcsSorted:Z

    .line 441
    iput-boolean v0, v1, Lcom/android/internal/os/ProcessCpuTracker;->mFirst:Z

    .line 442
    return-void

    .line 420
    .end local v2    # "loadAverages":[F
    :catchall_101
    move-exception v0

    invoke-static {v11}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 421
    throw v0
.end method


# virtual methods
.method final blacklist buildWorkingProcs()V
    .registers 8

    .line 714
    iget-boolean v0, p0, Lcom/android/internal/os/ProcessCpuTracker;->mWorkingProcsSorted:Z

    if-nez v0, :cond_65

    .line 715
    iget-object v0, p0, Lcom/android/internal/os/ProcessCpuTracker;->mWorkingProcs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 716
    iget-object v0, p0, Lcom/android/internal/os/ProcessCpuTracker;->mProcStats:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 717
    .local v0, "N":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_10
    const/4 v2, 0x1

    if-ge v1, v0, :cond_5c

    .line 718
    iget-object v3, p0, Lcom/android/internal/os/ProcessCpuTracker;->mProcStats:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/os/ProcessCpuTracker$Stats;

    .line 719
    .local v3, "stats":Lcom/android/internal/os/ProcessCpuTracker$Stats;
    iget-boolean v4, v3, Lcom/android/internal/os/ProcessCpuTracker$Stats;->working:Z

    if-eqz v4, :cond_59

    .line 720
    iget-object v4, p0, Lcom/android/internal/os/ProcessCpuTracker;->mWorkingProcs:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 721
    iget-object v4, v3, Lcom/android/internal/os/ProcessCpuTracker$Stats;->threadStats:Ljava/util/ArrayList;

    if-eqz v4, :cond_59

    iget-object v4, v3, Lcom/android/internal/os/ProcessCpuTracker$Stats;->threadStats:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-le v4, v2, :cond_59

    .line 722
    iget-object v2, v3, Lcom/android/internal/os/ProcessCpuTracker$Stats;->workingThreads:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 723
    iget-object v2, v3, Lcom/android/internal/os/ProcessCpuTracker$Stats;->threadStats:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 724
    .local v2, "M":I
    const/4 v4, 0x0

    .local v4, "j":I
    :goto_3c
    if-ge v4, v2, :cond_52

    .line 725
    iget-object v5, v3, Lcom/android/internal/os/ProcessCpuTracker$Stats;->threadStats:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/internal/os/ProcessCpuTracker$Stats;

    .line 726
    .local v5, "tstats":Lcom/android/internal/os/ProcessCpuTracker$Stats;
    iget-boolean v6, v5, Lcom/android/internal/os/ProcessCpuTracker$Stats;->working:Z

    if-eqz v6, :cond_4f

    .line 727
    iget-object v6, v3, Lcom/android/internal/os/ProcessCpuTracker$Stats;->workingThreads:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 724
    .end local v5    # "tstats":Lcom/android/internal/os/ProcessCpuTracker$Stats;
    :cond_4f
    add-int/lit8 v4, v4, 0x1

    goto :goto_3c

    .line 730
    .end local v4    # "j":I
    :cond_52
    iget-object v4, v3, Lcom/android/internal/os/ProcessCpuTracker$Stats;->workingThreads:Ljava/util/ArrayList;

    sget-object v5, Lcom/android/internal/os/ProcessCpuTracker;->sLoadComparator:Ljava/util/Comparator;

    invoke-static {v4, v5}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 717
    .end local v2    # "M":I
    .end local v3    # "stats":Lcom/android/internal/os/ProcessCpuTracker$Stats;
    :cond_59
    add-int/lit8 v1, v1, 0x1

    goto :goto_10

    .line 734
    .end local v1    # "i":I
    :cond_5c
    iget-object v1, p0, Lcom/android/internal/os/ProcessCpuTracker;->mWorkingProcs:Ljava/util/ArrayList;

    sget-object v3, Lcom/android/internal/os/ProcessCpuTracker;->sLoadComparator:Ljava/util/Comparator;

    invoke-static {v1, v3}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 735
    iput-boolean v2, p0, Lcom/android/internal/os/ProcessCpuTracker;->mWorkingProcsSorted:Z

    .line 737
    .end local v0    # "N":I
    :cond_65
    return-void
.end method

.method public final blacklist countStats()I
    .registers 2

    .line 740
    iget-object v0, p0, Lcom/android/internal/os/ProcessCpuTracker;->mProcStats:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public final greylist-max-r countWorkingStats()I
    .registers 2

    .line 761
    invoke-virtual {p0}, Lcom/android/internal/os/ProcessCpuTracker;->buildWorkingProcs()V

    .line 762
    iget-object v0, p0, Lcom/android/internal/os/ProcessCpuTracker;->mWorkingProcs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public final blacklist dumpProto(Ljava/io/FileDescriptor;)V
    .registers 12
    .param p1, "fd"    # Ljava/io/FileDescriptor;

    .line 772
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 773
    .local v0, "now":J
    new-instance v2, Landroid/util/proto/ProtoOutputStream;

    invoke-direct {v2, p1}, Landroid/util/proto/ProtoOutputStream;-><init>(Ljava/io/FileDescriptor;)V

    .line 774
    .local v2, "proto":Landroid/util/proto/ProtoOutputStream;
    const-wide v3, 0x10b00000001L

    invoke-virtual {v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v3

    .line 775
    .local v3, "currentLoadToken":J
    const-wide v5, 0x10200000001L

    iget v7, p0, Lcom/android/internal/os/ProcessCpuTracker;->mLoad1:F

    invoke-virtual {v2, v5, v6, v7}, Landroid/util/proto/ProtoOutputStream;->write(JF)V

    .line 776
    const-wide v5, 0x10200000002L

    iget v7, p0, Lcom/android/internal/os/ProcessCpuTracker;->mLoad5:F

    invoke-virtual {v2, v5, v6, v7}, Landroid/util/proto/ProtoOutputStream;->write(JF)V

    .line 777
    const-wide v5, 0x10200000003L

    iget v7, p0, Lcom/android/internal/os/ProcessCpuTracker;->mLoad15:F

    invoke-virtual {v2, v5, v6, v7}, Landroid/util/proto/ProtoOutputStream;->write(JF)V

    .line 778
    invoke-virtual {v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 780
    invoke-virtual {p0}, Lcom/android/internal/os/ProcessCpuTracker;->buildWorkingProcs()V

    .line 782
    const-wide v5, 0x10300000002L

    invoke-virtual {v2, v5, v6, v0, v1}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 783
    const-wide v5, 0x10300000003L

    iget-wide v7, p0, Lcom/android/internal/os/ProcessCpuTracker;->mLastSampleTime:J

    invoke-virtual {v2, v5, v6, v7, v8}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 784
    const-wide v5, 0x10300000004L

    iget-wide v7, p0, Lcom/android/internal/os/ProcessCpuTracker;->mCurrentSampleTime:J

    invoke-virtual {v2, v5, v6, v7, v8}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 785
    const-wide v5, 0x10300000005L

    iget-wide v7, p0, Lcom/android/internal/os/ProcessCpuTracker;->mLastSampleRealTime:J

    invoke-virtual {v2, v5, v6, v7, v8}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 786
    const-wide v5, 0x10300000006L

    iget-wide v7, p0, Lcom/android/internal/os/ProcessCpuTracker;->mCurrentSampleRealTime:J

    invoke-virtual {v2, v5, v6, v7, v8}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 787
    const-wide v5, 0x10300000007L

    iget-wide v7, p0, Lcom/android/internal/os/ProcessCpuTracker;->mLastSampleWallTime:J

    invoke-virtual {v2, v5, v6, v7, v8}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 788
    const-wide v5, 0x10300000008L

    iget-wide v7, p0, Lcom/android/internal/os/ProcessCpuTracker;->mCurrentSampleWallTime:J

    invoke-virtual {v2, v5, v6, v7, v8}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 790
    const-wide v5, 0x10500000009L

    iget v7, p0, Lcom/android/internal/os/ProcessCpuTracker;->mRelUserTime:I

    invoke-virtual {v2, v5, v6, v7}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 791
    const-wide v5, 0x1050000000aL

    iget v7, p0, Lcom/android/internal/os/ProcessCpuTracker;->mRelSystemTime:I

    invoke-virtual {v2, v5, v6, v7}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 792
    const-wide v5, 0x1050000000bL

    iget v7, p0, Lcom/android/internal/os/ProcessCpuTracker;->mRelIoWaitTime:I

    invoke-virtual {v2, v5, v6, v7}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 793
    const-wide v5, 0x1050000000cL

    iget v7, p0, Lcom/android/internal/os/ProcessCpuTracker;->mRelIrqTime:I

    invoke-virtual {v2, v5, v6, v7}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 794
    const-wide v5, 0x1050000000dL

    iget v7, p0, Lcom/android/internal/os/ProcessCpuTracker;->mRelSoftIrqTime:I

    invoke-virtual {v2, v5, v6, v7}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 795
    const-wide v5, 0x1050000000eL

    iget v7, p0, Lcom/android/internal/os/ProcessCpuTracker;->mRelIdleTime:I

    invoke-virtual {v2, v5, v6, v7}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 796
    iget v5, p0, Lcom/android/internal/os/ProcessCpuTracker;->mRelUserTime:I

    iget v6, p0, Lcom/android/internal/os/ProcessCpuTracker;->mRelSystemTime:I

    add-int/2addr v5, v6

    iget v6, p0, Lcom/android/internal/os/ProcessCpuTracker;->mRelIoWaitTime:I

    add-int/2addr v5, v6

    iget v6, p0, Lcom/android/internal/os/ProcessCpuTracker;->mRelIrqTime:I

    add-int/2addr v5, v6

    iget v6, p0, Lcom/android/internal/os/ProcessCpuTracker;->mRelSoftIrqTime:I

    add-int/2addr v5, v6

    iget v6, p0, Lcom/android/internal/os/ProcessCpuTracker;->mRelIdleTime:I

    add-int/2addr v5, v6

    .line 798
    .local v5, "totalTime":I
    const-wide v6, 0x1050000000fL

    invoke-virtual {v2, v6, v7, v5}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 800
    iget-object v6, p0, Lcom/android/internal/os/ProcessCpuTracker;->mWorkingProcs:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_d5
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_104

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/internal/os/ProcessCpuTracker$Stats;

    .line 801
    .local v7, "st":Lcom/android/internal/os/ProcessCpuTracker$Stats;
    const/4 v8, 0x0

    invoke-static {v2, v7, v8}, Lcom/android/internal/os/ProcessCpuTracker;->dumpProcessCpuProto(Landroid/util/proto/ProtoOutputStream;Lcom/android/internal/os/ProcessCpuTracker$Stats;Lcom/android/internal/os/ProcessCpuTracker$Stats;)V

    .line 802
    iget-boolean v8, v7, Lcom/android/internal/os/ProcessCpuTracker$Stats;->removed:Z

    if-nez v8, :cond_103

    iget-object v8, v7, Lcom/android/internal/os/ProcessCpuTracker$Stats;->workingThreads:Ljava/util/ArrayList;

    if-eqz v8, :cond_103

    .line 803
    iget-object v8, v7, Lcom/android/internal/os/ProcessCpuTracker$Stats;->workingThreads:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_f3
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_103

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/internal/os/ProcessCpuTracker$Stats;

    .line 804
    .local v9, "tst":Lcom/android/internal/os/ProcessCpuTracker$Stats;
    invoke-static {v2, v9, v7}, Lcom/android/internal/os/ProcessCpuTracker;->dumpProcessCpuProto(Landroid/util/proto/ProtoOutputStream;Lcom/android/internal/os/ProcessCpuTracker$Stats;Lcom/android/internal/os/ProcessCpuTracker$Stats;)V

    .line 805
    .end local v9    # "tst":Lcom/android/internal/os/ProcessCpuTracker$Stats;
    goto :goto_f3

    .line 807
    .end local v7    # "st":Lcom/android/internal/os/ProcessCpuTracker$Stats;
    :cond_103
    goto :goto_d5

    .line 808
    :cond_104
    invoke-virtual {v2}, Landroid/util/proto/ProtoOutputStream;->flush()V

    .line 809
    return-void
.end method

.method public blacklist getCpuDelayTimeForPid(I)J
    .registers 8
    .param p1, "pid"    # I

    .line 650
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "/proc/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/schedstat"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 651
    .local v0, "statFile":Ljava/lang/String;
    const/4 v1, 0x4

    new-array v1, v1, [J

    .line 652
    .local v1, "statsData":[J
    sget-object v2, Lcom/android/internal/os/ProcessCpuTracker;->PROCESS_SCHEDSTATS_FORMAT:[I

    const/4 v3, 0x0

    invoke-static {v0, v2, v3, v1, v3}, Landroid/os/Process;->readProcFile(Ljava/lang/String;[I[Ljava/lang/String;[J[F)Z

    move-result v2

    if-eqz v2, :cond_2d

    .line 654
    const/4 v2, 0x1

    aget-wide v2, v1, v2

    const-wide/32 v4, 0xf4240

    div-long/2addr v2, v4

    return-wide v2

    .line 656
    :cond_2d
    const-wide/16 v2, 0x0

    return-wide v2
.end method

.method public blacklist getCpuTimeForPid(I)J
    .registers 8
    .param p1, "pid"    # I

    .line 634
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "/proc/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/stat"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 635
    .local v0, "statFile":Ljava/lang/String;
    const/4 v1, 0x4

    new-array v1, v1, [J

    .line 636
    .local v1, "statsData":[J
    sget-object v2, Lcom/android/internal/os/ProcessCpuTracker;->PROCESS_STATS_FORMAT:[I

    const/4 v3, 0x0

    invoke-static {v0, v2, v3, v1, v3}, Landroid/os/Process;->readProcFile(Ljava/lang/String;[I[Ljava/lang/String;[J[F)Z

    move-result v2

    if-eqz v2, :cond_30

    .line 638
    const/4 v2, 0x2

    aget-wide v2, v1, v2

    const/4 v4, 0x3

    aget-wide v4, v1, v4

    add-long/2addr v2, v4

    .line 640
    .local v2, "time":J
    iget-wide v4, p0, Lcom/android/internal/os/ProcessCpuTracker;->mJiffyMillis:J

    mul-long/2addr v4, v2

    return-wide v4

    .line 642
    .end local v2    # "time":J
    :cond_30
    const-wide/16 v2, 0x0

    return-wide v2
.end method

.method public final blacklist getLastIdleTime()I
    .registers 2

    .line 698
    iget v0, p0, Lcom/android/internal/os/ProcessCpuTracker;->mRelIdleTime:I

    return v0
.end method

.method public final blacklist getLastIoWaitTime()I
    .registers 2

    .line 677
    iget v0, p0, Lcom/android/internal/os/ProcessCpuTracker;->mRelIoWaitTime:I

    return v0
.end method

.method public final blacklist getLastIrqTime()I
    .registers 2

    .line 684
    iget v0, p0, Lcom/android/internal/os/ProcessCpuTracker;->mRelIrqTime:I

    return v0
.end method

.method public final blacklist getLastSoftIrqTime()I
    .registers 2

    .line 691
    iget v0, p0, Lcom/android/internal/os/ProcessCpuTracker;->mRelSoftIrqTime:I

    return v0
.end method

.method public final blacklist getLastSystemTime()I
    .registers 2

    .line 670
    iget v0, p0, Lcom/android/internal/os/ProcessCpuTracker;->mRelSystemTime:I

    return v0
.end method

.method public final blacklist getLastUserTime()I
    .registers 2

    .line 663
    iget v0, p0, Lcom/android/internal/os/ProcessCpuTracker;->mRelUserTime:I

    return v0
.end method

.method public final blacklist getStats(I)Lcom/android/internal/os/ProcessCpuTracker$Stats;
    .registers 3
    .param p1, "index"    # I

    .line 744
    iget-object v0, p0, Lcom/android/internal/os/ProcessCpuTracker;->mProcStats:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/os/ProcessCpuTracker$Stats;

    return-object v0
.end method

.method public final blacklist getStats(Lcom/android/internal/os/ProcessCpuTracker$FilterStats;)Ljava/util/List;
    .registers 7
    .param p1, "filter"    # Lcom/android/internal/os/ProcessCpuTracker$FilterStats;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/os/ProcessCpuTracker$FilterStats;",
            ")",
            "Ljava/util/List<",
            "Lcom/android/internal/os/ProcessCpuTracker$Stats;",
            ">;"
        }
    .end annotation

    .line 748
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/internal/os/ProcessCpuTracker;->mProcStats:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 749
    .local v0, "statses":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/os/ProcessCpuTracker$Stats;>;"
    iget-object v1, p0, Lcom/android/internal/os/ProcessCpuTracker;->mProcStats:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 750
    .local v1, "N":I
    const/4 v2, 0x0

    .local v2, "p":I
    :goto_12
    if-ge v2, v1, :cond_28

    .line 751
    iget-object v3, p0, Lcom/android/internal/os/ProcessCpuTracker;->mProcStats:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/os/ProcessCpuTracker$Stats;

    .line 752
    .local v3, "stats":Lcom/android/internal/os/ProcessCpuTracker$Stats;
    invoke-interface {p1, v3}, Lcom/android/internal/os/ProcessCpuTracker$FilterStats;->needed(Lcom/android/internal/os/ProcessCpuTracker$Stats;)Z

    move-result v4

    if-eqz v4, :cond_25

    .line 753
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 750
    .end local v3    # "stats":Lcom/android/internal/os/ProcessCpuTracker$Stats;
    :cond_25
    add-int/lit8 v2, v2, 0x1

    goto :goto_12

    .line 756
    .end local v2    # "p":I
    :cond_28
    return-object v0
.end method

.method public final blacklist getTotalCpuPercent()F
    .registers 4

    .line 706
    iget v0, p0, Lcom/android/internal/os/ProcessCpuTracker;->mRelUserTime:I

    iget v1, p0, Lcom/android/internal/os/ProcessCpuTracker;->mRelSystemTime:I

    add-int/2addr v0, v1

    iget v1, p0, Lcom/android/internal/os/ProcessCpuTracker;->mRelIrqTime:I

    add-int/2addr v0, v1

    iget v1, p0, Lcom/android/internal/os/ProcessCpuTracker;->mRelIdleTime:I

    add-int/2addr v0, v1

    .line 707
    .local v0, "denom":I
    if-gtz v0, :cond_f

    .line 708
    const/4 v1, 0x0

    return v1

    .line 710
    :cond_f
    iget v1, p0, Lcom/android/internal/os/ProcessCpuTracker;->mRelUserTime:I

    iget v2, p0, Lcom/android/internal/os/ProcessCpuTracker;->mRelSystemTime:I

    add-int/2addr v1, v2

    iget v2, p0, Lcom/android/internal/os/ProcessCpuTracker;->mRelIrqTime:I

    add-int/2addr v1, v2

    int-to-float v1, v1

    const/high16 v2, 0x42c80000    # 100.0f

    mul-float/2addr v1, v2

    int-to-float v2, v0

    div-float/2addr v1, v2

    return v1
.end method

.method public final greylist-max-r getWorkingStats(I)Lcom/android/internal/os/ProcessCpuTracker$Stats;
    .registers 3
    .param p1, "index"    # I

    .line 767
    iget-object v0, p0, Lcom/android/internal/os/ProcessCpuTracker;->mWorkingProcs:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/os/ProcessCpuTracker$Stats;

    return-object v0
.end method

.method public final blacklist hasGoodLastStats()Z
    .registers 2

    .line 702
    iget-boolean v0, p0, Lcom/android/internal/os/ProcessCpuTracker;->mRelStatsAreGood:Z

    return v0
.end method

.method public blacklist init()V
    .registers 2

    .line 334
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/os/ProcessCpuTracker;->mFirst:Z

    .line 335
    invoke-virtual {p0}, Lcom/android/internal/os/ProcessCpuTracker;->update()V

    .line 336
    return-void
.end method

.method public blacklist onLoadChanged(FFF)V
    .registers 4
    .param p1, "load1"    # F
    .param p2, "load5"    # F
    .param p3, "load15"    # F

    .line 326
    return-void
.end method

.method public blacklist onMeasureProcessName(Ljava/lang/String;)I
    .registers 3
    .param p1, "name"    # Ljava/lang/String;

    .line 329
    const/4 v0, 0x0

    return v0
.end method

.method public final blacklist printCurrentLoad()Ljava/lang/String;
    .registers 5

    .line 830
    new-instance v0, Ljava/io/StringWriter;

    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V

    .line 831
    .local v0, "sw":Ljava/io/StringWriter;
    new-instance v1, Lcom/android/internal/util/FastPrintWriter;

    const/4 v2, 0x0

    const/16 v3, 0x80

    invoke-direct {v1, v0, v2, v3}, Lcom/android/internal/util/FastPrintWriter;-><init>(Ljava/io/Writer;ZI)V

    .line 832
    .local v1, "pw":Ljava/io/PrintWriter;
    const-string v2, "Load: "

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 833
    iget v2, p0, Lcom/android/internal/os/ProcessCpuTracker;->mLoad1:F

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->print(F)V

    .line 834
    const-string v2, " / "

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 835
    iget v3, p0, Lcom/android/internal/os/ProcessCpuTracker;->mLoad5:F

    invoke-virtual {v1, v3}, Ljava/io/PrintWriter;->print(F)V

    .line 836
    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 837
    iget v2, p0, Lcom/android/internal/os/ProcessCpuTracker;->mLoad15:F

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(F)V

    .line 838
    invoke-virtual {v1}, Ljava/io/PrintWriter;->flush()V

    .line 839
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public final blacklist printCurrentState(J)Ljava/lang/String;
    .registers 4
    .param p1, "now"    # J

    .line 847
    const v0, 0x7fffffff

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/internal/os/ProcessCpuTracker;->printCurrentState(JI)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final blacklist printCurrentState(JI)Ljava/lang/String;
    .registers 32
    .param p1, "now"    # J
    .param p3, "maxProcessesToDump"    # I

    .line 855
    move-object/from16 v0, p0

    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string/jumbo v2, "yyyy-MM-dd HH:mm:ss.SSS"

    invoke-direct {v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    move-object v13, v1

    .line 857
    .local v13, "sdf":Ljava/text/SimpleDateFormat;
    invoke-virtual {v0}, Lcom/android/internal/os/ProcessCpuTracker;->buildWorkingProcs()V

    .line 859
    new-instance v1, Ljava/io/StringWriter;

    invoke-direct {v1}, Ljava/io/StringWriter;-><init>()V

    move-object v14, v1

    .line 860
    .local v14, "sw":Ljava/io/StringWriter;
    new-instance v1, Lcom/android/internal/util/FastPrintWriter;

    const/4 v2, 0x0

    const/16 v3, 0x400

    invoke-direct {v1, v14, v2, v3}, Lcom/android/internal/util/FastPrintWriter;-><init>(Ljava/io/Writer;ZI)V

    .line 862
    .local v1, "pw":Ljava/io/PrintWriter;
    const-string v2, "CPU usage from "

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 863
    iget-wide v2, v0, Lcom/android/internal/os/ProcessCpuTracker;->mLastSampleTime:J

    cmp-long v2, p1, v2

    const-string v3, "ms to "

    if-lez v2, :cond_40

    .line 864
    iget-wide v4, v0, Lcom/android/internal/os/ProcessCpuTracker;->mLastSampleTime:J

    sub-long v4, p1, v4

    invoke-virtual {v1, v4, v5}, Ljava/io/PrintWriter;->print(J)V

    .line 865
    invoke-virtual {v1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 866
    iget-wide v2, v0, Lcom/android/internal/os/ProcessCpuTracker;->mCurrentSampleTime:J

    sub-long v2, p1, v2

    invoke-virtual {v1, v2, v3}, Ljava/io/PrintWriter;->print(J)V

    .line 867
    const-string v2, "ms ago"

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_56

    .line 869
    :cond_40
    iget-wide v4, v0, Lcom/android/internal/os/ProcessCpuTracker;->mLastSampleTime:J

    sub-long v4, v4, p1

    invoke-virtual {v1, v4, v5}, Ljava/io/PrintWriter;->print(J)V

    .line 870
    invoke-virtual {v1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 871
    iget-wide v2, v0, Lcom/android/internal/os/ProcessCpuTracker;->mCurrentSampleTime:J

    sub-long v2, v2, p1

    invoke-virtual {v1, v2, v3}, Ljava/io/PrintWriter;->print(J)V

    .line 872
    const-string v2, "ms later"

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 874
    :goto_56
    const-string v2, " ("

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 875
    new-instance v2, Ljava/util/Date;

    iget-wide v3, v0, Lcom/android/internal/os/ProcessCpuTracker;->mLastSampleWallTime:J

    invoke-direct {v2, v3, v4}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v13, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 876
    const-string v2, " to "

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 877
    new-instance v2, Ljava/util/Date;

    iget-wide v3, v0, Lcom/android/internal/os/ProcessCpuTracker;->mCurrentSampleWallTime:J

    invoke-direct {v2, v3, v4}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v13, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 878
    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 880
    iget-wide v2, v0, Lcom/android/internal/os/ProcessCpuTracker;->mCurrentSampleTime:J

    iget-wide v4, v0, Lcom/android/internal/os/ProcessCpuTracker;->mLastSampleTime:J

    sub-long v15, v2, v4

    .line 881
    .local v15, "sampleTime":J
    iget-wide v2, v0, Lcom/android/internal/os/ProcessCpuTracker;->mCurrentSampleRealTime:J

    iget-wide v4, v0, Lcom/android/internal/os/ProcessCpuTracker;->mLastSampleRealTime:J

    sub-long v17, v2, v4

    .line 882
    .local v17, "sampleRealTime":J
    const-wide/16 v2, 0x0

    cmp-long v4, v17, v2

    const-wide/16 v5, 0x64

    if-lez v4, :cond_99

    mul-long v2, v15, v5

    div-long v2, v2, v17

    .line 883
    .local v2, "percAwake":J
    :cond_99
    cmp-long v4, v2, v5

    if-eqz v4, :cond_aa

    .line 884
    const-string v4, " with "

    invoke-virtual {v1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 885
    invoke-virtual {v1, v2, v3}, Ljava/io/PrintWriter;->print(J)V

    .line 886
    const-string v4, "% awake"

    invoke-virtual {v1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 888
    :cond_aa
    const-string v4, ":"

    invoke-virtual {v1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 890
    iget v4, v0, Lcom/android/internal/os/ProcessCpuTracker;->mRelUserTime:I

    iget v5, v0, Lcom/android/internal/os/ProcessCpuTracker;->mRelSystemTime:I

    add-int/2addr v4, v5

    iget v5, v0, Lcom/android/internal/os/ProcessCpuTracker;->mRelIoWaitTime:I

    add-int/2addr v4, v5

    iget v5, v0, Lcom/android/internal/os/ProcessCpuTracker;->mRelIrqTime:I

    add-int/2addr v4, v5

    iget v5, v0, Lcom/android/internal/os/ProcessCpuTracker;->mRelSoftIrqTime:I

    add-int/2addr v4, v5

    iget v5, v0, Lcom/android/internal/os/ProcessCpuTracker;->mRelIdleTime:I

    add-int v19, v4, v5

    .line 896
    .local v19, "totalTime":I
    iget-object v4, v0, Lcom/android/internal/os/ProcessCpuTracker;->mWorkingProcs:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    move/from16 v5, p3

    invoke-static {v5, v4}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 897
    .local v4, "dumpedProcessCount":I
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_ce
    if-ge v6, v4, :cond_178

    .line 898
    iget-object v7, v0, Lcom/android/internal/os/ProcessCpuTracker;->mWorkingProcs:Ljava/util/ArrayList;

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/internal/os/ProcessCpuTracker$Stats;

    .line 899
    .local v7, "st":Lcom/android/internal/os/ProcessCpuTracker$Stats;
    iget-boolean v8, v7, Lcom/android/internal/os/ProcessCpuTracker$Stats;->added:Z

    if-eqz v8, :cond_df

    const-string v8, " +"

    goto :goto_e8

    :cond_df
    iget-boolean v8, v7, Lcom/android/internal/os/ProcessCpuTracker$Stats;->removed:Z

    if-eqz v8, :cond_e6

    const-string v8, " -"

    goto :goto_e8

    :cond_e6
    const-string v8, "  "

    :goto_e8
    move-wide v9, v2

    .end local v2    # "percAwake":J
    .local v9, "percAwake":J
    iget v3, v7, Lcom/android/internal/os/ProcessCpuTracker$Stats;->pid:I

    move v2, v4

    .end local v4    # "dumpedProcessCount":I
    .local v2, "dumpedProcessCount":I
    iget-object v4, v7, Lcom/android/internal/os/ProcessCpuTracker$Stats;->name:Ljava/lang/String;

    iget-wide v11, v7, Lcom/android/internal/os/ProcessCpuTracker$Stats;->rel_uptime:J

    long-to-int v11, v11

    move v12, v6

    .end local v6    # "i":I
    .local v12, "i":I
    iget v6, v7, Lcom/android/internal/os/ProcessCpuTracker$Stats;->rel_utime:I

    iget v0, v7, Lcom/android/internal/os/ProcessCpuTracker$Stats;->rel_stime:I

    move v5, v11

    iget v11, v7, Lcom/android/internal/os/ProcessCpuTracker$Stats;->rel_minfaults:I

    move/from16 v20, v12

    .end local v12    # "i":I
    .local v20, "i":I
    iget v12, v7, Lcom/android/internal/os/ProcessCpuTracker$Stats;->rel_majfaults:I

    move/from16 v21, v2

    move-object v2, v8

    .end local v2    # "dumpedProcessCount":I
    .local v21, "dumpedProcessCount":I
    const/4 v8, 0x0

    move-wide/from16 v22, v9

    .end local v9    # "percAwake":J
    .local v22, "percAwake":J
    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object/from16 v24, v13

    move-object v13, v7

    move v7, v0

    move-object/from16 v0, p0

    .end local v7    # "st":Lcom/android/internal/os/ProcessCpuTracker$Stats;
    .local v13, "st":Lcom/android/internal/os/ProcessCpuTracker$Stats;
    .local v24, "sdf":Ljava/text/SimpleDateFormat;
    invoke-direct/range {v0 .. v12}, Lcom/android/internal/os/ProcessCpuTracker;->printProcessCPU(Ljava/io/PrintWriter;Ljava/lang/String;ILjava/lang/String;IIIIIIII)V

    .line 902
    iget-boolean v0, v13, Lcom/android/internal/os/ProcessCpuTracker$Stats;->removed:Z

    if-nez v0, :cond_16a

    iget-object v0, v13, Lcom/android/internal/os/ProcessCpuTracker$Stats;->workingThreads:Ljava/util/ArrayList;

    if-eqz v0, :cond_16a

    .line 903
    iget-object v0, v13, Lcom/android/internal/os/ProcessCpuTracker$Stats;->workingThreads:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 904
    .local v0, "M":I
    const/4 v2, 0x0

    .local v2, "j":I
    :goto_11d
    if-ge v2, v0, :cond_163

    .line 905
    iget-object v3, v13, Lcom/android/internal/os/ProcessCpuTracker$Stats;->workingThreads:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/os/ProcessCpuTracker$Stats;

    .line 906
    .local v3, "tst":Lcom/android/internal/os/ProcessCpuTracker$Stats;
    nop

    .line 907
    iget-boolean v4, v3, Lcom/android/internal/os/ProcessCpuTracker$Stats;->added:Z

    if-eqz v4, :cond_12f

    const-string v4, "   +"

    goto :goto_138

    :cond_12f
    iget-boolean v4, v3, Lcom/android/internal/os/ProcessCpuTracker$Stats;->removed:Z

    if-eqz v4, :cond_136

    const-string v4, "   -"

    goto :goto_138

    :cond_136
    const-string v4, "    "

    :goto_138
    iget v5, v3, Lcom/android/internal/os/ProcessCpuTracker$Stats;->pid:I

    move v6, v2

    move-object v2, v4

    .end local v2    # "j":I
    .local v6, "j":I
    iget-object v4, v3, Lcom/android/internal/os/ProcessCpuTracker$Stats;->name:Ljava/lang/String;

    iget-wide v7, v13, Lcom/android/internal/os/ProcessCpuTracker$Stats;->rel_uptime:J

    long-to-int v7, v7

    move v8, v6

    .end local v6    # "j":I
    .local v8, "j":I
    iget v6, v3, Lcom/android/internal/os/ProcessCpuTracker$Stats;->rel_utime:I

    move v9, v5

    move v5, v7

    iget v7, v3, Lcom/android/internal/os/ProcessCpuTracker$Stats;->rel_stime:I

    .line 906
    move v10, v8

    .end local v8    # "j":I
    .local v10, "j":I
    const/4 v8, 0x0

    move-object v11, v3

    move v3, v9

    .end local v3    # "tst":Lcom/android/internal/os/ProcessCpuTracker$Stats;
    .local v11, "tst":Lcom/android/internal/os/ProcessCpuTracker$Stats;
    const/4 v9, 0x0

    move v12, v10

    .end local v10    # "j":I
    .local v12, "j":I
    const/4 v10, 0x0

    move-object/from16 v25, v11

    .end local v11    # "tst":Lcom/android/internal/os/ProcessCpuTracker$Stats;
    .local v25, "tst":Lcom/android/internal/os/ProcessCpuTracker$Stats;
    const/4 v11, 0x0

    move/from16 v26, v12

    .end local v12    # "j":I
    .local v26, "j":I
    const/4 v12, 0x0

    move-object/from16 v27, v25

    move/from16 v25, v0

    move-object/from16 v0, p0

    .end local v0    # "M":I
    .local v25, "M":I
    .local v27, "tst":Lcom/android/internal/os/ProcessCpuTracker$Stats;
    invoke-direct/range {v0 .. v12}, Lcom/android/internal/os/ProcessCpuTracker;->printProcessCPU(Ljava/io/PrintWriter;Ljava/lang/String;ILjava/lang/String;IIIIIIII)V

    .line 904
    .end local v27    # "tst":Lcom/android/internal/os/ProcessCpuTracker$Stats;
    add-int/lit8 v2, v26, 0x1

    move/from16 v0, v25

    .end local v26    # "j":I
    .restart local v2    # "j":I
    goto :goto_11d

    .end local v25    # "M":I
    .restart local v0    # "M":I
    :cond_163
    move/from16 v25, v0

    move/from16 v26, v2

    move-object/from16 v0, p0

    .end local v0    # "M":I
    .end local v2    # "j":I
    .restart local v25    # "M":I
    .restart local v26    # "j":I
    goto :goto_16c

    .line 902
    .end local v25    # "M":I
    .end local v26    # "j":I
    :cond_16a
    move-object/from16 v0, p0

    .line 897
    .end local v13    # "st":Lcom/android/internal/os/ProcessCpuTracker$Stats;
    :goto_16c
    add-int/lit8 v6, v20, 0x1

    move/from16 v5, p3

    move/from16 v4, v21

    move-wide/from16 v2, v22

    move-object/from16 v13, v24

    .end local v20    # "i":I
    .local v6, "i":I
    goto/16 :goto_ce

    .end local v21    # "dumpedProcessCount":I
    .end local v22    # "percAwake":J
    .end local v24    # "sdf":Ljava/text/SimpleDateFormat;
    .local v2, "percAwake":J
    .restart local v4    # "dumpedProcessCount":I
    .local v13, "sdf":Ljava/text/SimpleDateFormat;
    :cond_178
    move-wide/from16 v22, v2

    move/from16 v21, v4

    move/from16 v20, v6

    .line 914
    .end local v2    # "percAwake":J
    .end local v4    # "dumpedProcessCount":I
    .end local v6    # "i":I
    .restart local v21    # "dumpedProcessCount":I
    .restart local v22    # "percAwake":J
    iget v6, v0, Lcom/android/internal/os/ProcessCpuTracker;->mRelUserTime:I

    iget v7, v0, Lcom/android/internal/os/ProcessCpuTracker;->mRelSystemTime:I

    iget v8, v0, Lcom/android/internal/os/ProcessCpuTracker;->mRelIoWaitTime:I

    iget v9, v0, Lcom/android/internal/os/ProcessCpuTracker;->mRelIrqTime:I

    iget v10, v0, Lcom/android/internal/os/ProcessCpuTracker;->mRelSoftIrqTime:I

    const/4 v11, 0x0

    const/4 v12, 0x0

    const-string v2, ""

    const/4 v3, -0x1

    const-string v4, "TOTAL"

    move/from16 v5, v19

    .end local v19    # "totalTime":I
    .local v5, "totalTime":I
    invoke-direct/range {v0 .. v12}, Lcom/android/internal/os/ProcessCpuTracker;->printProcessCPU(Ljava/io/PrintWriter;Ljava/lang/String;ILjava/lang/String;IIIIIIII)V

    .line 917
    invoke-virtual {v1}, Ljava/io/PrintWriter;->flush()V

    .line 918
    invoke-virtual {v14}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public greylist update()V
    .registers 2

    .line 340
    monitor-enter p0

    .line 341
    :try_start_1
    invoke-direct {p0}, Lcom/android/internal/os/ProcessCpuTracker;->updateLocked()V

    .line 342
    monitor-exit p0

    .line 343
    return-void

    .line 342
    :catchall_6
    move-exception v0

    monitor-exit p0
    :try_end_8
    .catchall {:try_start_1 .. :try_end_8} :catchall_6

    throw v0
.end method
