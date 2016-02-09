.class public Lcom/android/internal/os/ProcessCpuTracker;
.super Ljava/lang/Object;
.source "ProcessCpuTracker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/os/ProcessCpuTracker$Stats;,
        Lcom/android/internal/os/ProcessCpuTracker$1;
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

.field private mFirst:Z

.field private final mIncludeThreads:Z

.field private final mJiffyMillis:J

.field private mLastSampleRealTime:J

.field private mLastSampleTime:J

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
    .line 47
    const/16 v0, 0xf

    #@4
    new-array v0, v0, [I

    #@6
    fill-array-data v0, :array_0

    #@9
    sput-object v0, Lcom/android/internal/os/ProcessCpuTracker;->PROCESS_STATS_FORMAT:[I

    #@b
    .line 77
    const/16 v0, 0x17

    #@d
    new-array v0, v0, [I

    #@f
    fill-array-data v0, :array_1

    #@12
    sput-object v0, Lcom/android/internal/os/ProcessCpuTracker;->PROCESS_FULL_STATS_FORMAT:[I

    #@14
    .line 112
    const/16 v0, 0x8

    #@16
    new-array v0, v0, [I

    #@18
    fill-array-data v0, :array_2

    #@1b
    sput-object v0, Lcom/android/internal/os/ProcessCpuTracker;->SYSTEM_CPU_FORMAT:[I

    #@1d
    .line 125
    filled-new-array {v1, v1, v1}, [I

    #@20
    move-result-object v0

    #@21
    sput-object v0, Lcom/android/internal/os/ProcessCpuTracker;->LOAD_AVERAGE_FORMAT:[I

    #@23
    .line 265
    new-instance v0, Lcom/android/internal/os/ProcessCpuTracker$1;

    #@25
    invoke-direct {v0}, Lcom/android/internal/os/ProcessCpuTracker$1;-><init>()V

    #@28
    sput-object v0, Lcom/android/internal/os/ProcessCpuTracker;->sLoadComparator:Ljava/util/Comparator;

    #@2a
    .line 42
    return-void

    #@2b
    .line 47
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
    .line 77
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
    .line 112
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
    .line 284
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@6
    .line 71
    new-array v2, v4, [J

    #@8
    iput-object v2, p0, Lcom/android/internal/os/ProcessCpuTracker;->mProcessStatsData:[J

    #@a
    .line 75
    new-array v2, v4, [J

    #@c
    iput-object v2, p0, Lcom/android/internal/os/ProcessCpuTracker;->mSinglePidStatsData:[J

    #@e
    .line 109
    new-array v2, v5, [Ljava/lang/String;

    #@10
    iput-object v2, p0, Lcom/android/internal/os/ProcessCpuTracker;->mProcessFullStatsStringData:[Ljava/lang/String;

    #@12
    .line 110
    new-array v2, v5, [J

    #@14
    iput-object v2, p0, Lcom/android/internal/os/ProcessCpuTracker;->mProcessFullStatsData:[J

    #@16
    .line 123
    const/4 v2, 0x7

    #@17
    new-array v2, v2, [J

    #@19
    iput-object v2, p0, Lcom/android/internal/os/ProcessCpuTracker;->mSystemCpuData:[J

    #@1b
    .line 131
    const/4 v2, 0x3

    #@1c
    new-array v2, v2, [F

    #@1e
    iput-object v2, p0, Lcom/android/internal/os/ProcessCpuTracker;->mLoadAverageData:[F

    #@20
    .line 138
    iput v3, p0, Lcom/android/internal/os/ProcessCpuTracker;->mLoad1:F

    #@22
    .line 139
    iput v3, p0, Lcom/android/internal/os/ProcessCpuTracker;->mLoad5:F

    #@24
    .line 140
    iput v3, p0, Lcom/android/internal/os/ProcessCpuTracker;->mLoad15:F

    #@26
    .line 167
    new-instance v2, Ljava/util/ArrayList;

    #@28
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    #@2b
    iput-object v2, p0, Lcom/android/internal/os/ProcessCpuTracker;->mProcStats:Ljava/util/ArrayList;

    #@2d
    .line 168
    new-instance v2, Ljava/util/ArrayList;

    #@2f
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    #@32
    iput-object v2, p0, Lcom/android/internal/os/ProcessCpuTracker;->mWorkingProcs:Ljava/util/ArrayList;

    #@34
    .line 171
    const/4 v2, 0x1

    #@35
    iput-boolean v2, p0, Lcom/android/internal/os/ProcessCpuTracker;->mFirst:Z

    #@37
    .line 173
    const/16 v2, 0x1000

    #@39
    new-array v2, v2, [B

    #@3b
    iput-object v2, p0, Lcom/android/internal/os/ProcessCpuTracker;->mBuffer:[B

    #@3d
    .line 285
    iput-boolean p1, p0, Lcom/android/internal/os/ProcessCpuTracker;->mIncludeThreads:Z

    #@3f
    .line 286
    sget-object v2, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    #@41
    sget v3, Landroid/system/OsConstants;->_SC_CLK_TCK:I

    #@43
    invoke-interface {v2, v3}, Llibcore/io/Os;->sysconf(I)J

    #@46
    move-result-wide v0

    #@47
    .line 287
    .local v0, "jiffyHz":J
    const-wide/16 v2, 0x3e8

    #@49
    div-long/2addr v2, v0

    #@4a
    iput-wide v2, p0, Lcom/android/internal/os/ProcessCpuTracker;->mJiffyMillis:J

    #@4c
    .line 284
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
    .line 402
    .local p5, "allProcs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/os/ProcessCpuTracker$Stats;>;"
    move-object/from16 v0, p1

    #@2
    move-object/from16 v1, p4

    #@4
    invoke-static {v0, v1}, Landroid/os/Process;->getPids(Ljava/lang/String;[I)[I

    #@7
    move-result-object v19

    #@8
    .line 403
    .local v19, "pids":[I
    if-nez v19, :cond_1

    #@a
    const/4 v10, 0x0

    #@b
    .line 404
    .local v10, "NP":I
    :goto_0
    invoke-virtual/range {p5 .. p5}, Ljava/util/ArrayList;->size()I

    #@e
    move-result v11

    #@f
    .line 405
    .local v11, "NS":I
    const/4 v12, 0x0

    #@10
    .line 406
    .local v12, "curStatsIndex":I
    const/4 v13, 0x0

    #@11
    .local v13, "i":I
    :goto_1
    if-ge v13, v10, :cond_0

    #@13
    .line 407
    aget v6, v19, v13

    #@15
    .line 408
    .local v6, "pid":I
    if-gez v6, :cond_2

    #@17
    .line 409
    move v10, v6

    #@18
    .line 567
    .end local v6    # "pid":I
    :cond_0
    :goto_2
    if-ge v12, v11, :cond_f

    #@1a
    .line 569
    move-object/from16 v0, p5

    #@1c
    invoke-virtual {v0, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@1f
    move-result-object v22

    #@20
    check-cast v22, Lcom/android/internal/os/ProcessCpuTracker$Stats;

    #@22
    .line 570
    .local v22, "st":Lcom/android/internal/os/ProcessCpuTracker$Stats;
    const/4 v4, 0x0

    #@23
    move-object/from16 v0, v22

    #@25
    iput v4, v0, Lcom/android/internal/os/ProcessCpuTracker$Stats;->rel_utime:I

    #@27
    .line 571
    const/4 v4, 0x0

    #@28
    move-object/from16 v0, v22

    #@2a
    iput v4, v0, Lcom/android/internal/os/ProcessCpuTracker$Stats;->rel_stime:I

    #@2c
    .line 572
    const/4 v4, 0x0

    #@2d
    move-object/from16 v0, v22

    #@2f
    iput v4, v0, Lcom/android/internal/os/ProcessCpuTracker$Stats;->rel_minfaults:I

    #@31
    .line 573
    const/4 v4, 0x0

    #@32
    move-object/from16 v0, v22

    #@34
    iput v4, v0, Lcom/android/internal/os/ProcessCpuTracker$Stats;->rel_majfaults:I

    #@36
    .line 574
    const/4 v4, 0x1

    #@37
    move-object/from16 v0, v22

    #@39
    iput-boolean v4, v0, Lcom/android/internal/os/ProcessCpuTracker$Stats;->removed:Z

    #@3b
    .line 575
    const/4 v4, 0x1

    #@3c
    move-object/from16 v0, v22

    #@3e
    iput-boolean v4, v0, Lcom/android/internal/os/ProcessCpuTracker$Stats;->working:Z

    #@40
    .line 576
    move-object/from16 v0, p5

    #@42
    invoke-virtual {v0, v12}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    #@45
    .line 577
    add-int/lit8 v11, v11, -0x1

    #@47
    goto :goto_2

    #@48
    .line 403
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
    .line 412
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
    move-result-object v22

    #@54
    check-cast v22, Lcom/android/internal/os/ProcessCpuTracker$Stats;

    #@56
    .line 414
    :goto_3
    if-eqz v22, :cond_9

    #@58
    move-object/from16 v0, v22

    #@5a
    iget v4, v0, Lcom/android/internal/os/ProcessCpuTracker$Stats;->pid:I

    #@5c
    if-ne v4, v6, :cond_9

    #@5e
    .line 416
    const/4 v4, 0x0

    #@5f
    move-object/from16 v0, v22

    #@61
    iput-boolean v4, v0, Lcom/android/internal/os/ProcessCpuTracker$Stats;->added:Z

    #@63
    .line 417
    const/4 v4, 0x0

    #@64
    move-object/from16 v0, v22

    #@66
    iput-boolean v4, v0, Lcom/android/internal/os/ProcessCpuTracker$Stats;->working:Z

    #@68
    .line 418
    add-int/lit8 v12, v12, 0x1

    #@6a
    .line 423
    move-object/from16 v0, v22

    #@6c
    iget-boolean v4, v0, Lcom/android/internal/os/ProcessCpuTracker$Stats;->interesting:Z

    #@6e
    if-eqz v4, :cond_3

    #@70
    .line 424
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    #@73
    move-result-wide v26

    #@74
    .line 426
    .local v26, "uptime":J
    move-object/from16 v0, p0

    #@76
    iget-object v0, v0, Lcom/android/internal/os/ProcessCpuTracker;->mProcessStatsData:[J

    #@78
    move-object/from16 v20, v0

    #@7a
    .line 427
    .local v20, "procStats":[J
    move-object/from16 v0, v22

    #@7c
    iget-object v4, v0, Lcom/android/internal/os/ProcessCpuTracker$Stats;->statFile:Ljava/lang/String;

    #@7e
    invoke-virtual {v4}, Ljava/lang/String;->toString()Ljava/lang/String;

    #@81
    move-result-object v4

    #@82
    .line 428
    sget-object v5, Lcom/android/internal/os/ProcessCpuTracker;->PROCESS_STATS_FORMAT:[I

    #@84
    const/4 v7, 0x0

    #@85
    const/4 v8, 0x0

    #@86
    .line 427
    move-object/from16 v0, v20

    #@88
    invoke-static {v4, v5, v7, v0, v8}, Landroid/os/Process;->readProcFile(Ljava/lang/String;[I[Ljava/lang/String;[J[F)Z

    #@8b
    move-result v4

    #@8c
    if-nez v4, :cond_5

    #@8e
    .line 406
    .end local v20    # "procStats":[J
    .end local v26    # "uptime":J
    :cond_3
    :goto_4
    add-int/lit8 v13, v13, 0x1

    #@90
    goto :goto_1

    #@91
    .line 412
    :cond_4
    const/16 v22, 0x0

    #@93
    .local v22, "st":Lcom/android/internal/os/ProcessCpuTracker$Stats;
    goto :goto_3

    #@94
    .line 432
    .end local v22    # "st":Lcom/android/internal/os/ProcessCpuTracker$Stats;
    .restart local v20    # "procStats":[J
    .restart local v26    # "uptime":J
    :cond_5
    const/4 v4, 0x0

    #@95
    aget-wide v16, v20, v4

    #@97
    .line 433
    .local v16, "minfaults":J
    const/4 v4, 0x1

    #@98
    aget-wide v14, v20, v4

    #@9a
    .line 434
    .local v14, "majfaults":J
    const/4 v4, 0x2

    #@9b
    aget-wide v4, v20, v4

    #@9d
    move-object/from16 v0, p0

    #@9f
    iget-wide v8, v0, Lcom/android/internal/os/ProcessCpuTracker;->mJiffyMillis:J

    #@a1
    mul-long v28, v4, v8

    #@a3
    .line 435
    .local v28, "utime":J
    const/4 v4, 0x3

    #@a4
    aget-wide v4, v20, v4

    #@a6
    move-object/from16 v0, p0

    #@a8
    iget-wide v8, v0, Lcom/android/internal/os/ProcessCpuTracker;->mJiffyMillis:J

    #@aa
    mul-long v24, v4, v8

    #@ac
    .line 437
    .local v24, "stime":J
    move-object/from16 v0, v22

    #@ae
    iget-wide v4, v0, Lcom/android/internal/os/ProcessCpuTracker$Stats;->base_utime:J

    #@b0
    cmp-long v4, v28, v4

    #@b2
    if-nez v4, :cond_6

    #@b4
    move-object/from16 v0, v22

    #@b6
    iget-wide v4, v0, Lcom/android/internal/os/ProcessCpuTracker$Stats;->base_stime:J

    #@b8
    cmp-long v4, v24, v4

    #@ba
    if-nez v4, :cond_6

    #@bc
    .line 438
    const/4 v4, 0x0

    #@bd
    move-object/from16 v0, v22

    #@bf
    iput v4, v0, Lcom/android/internal/os/ProcessCpuTracker$Stats;->rel_utime:I

    #@c1
    .line 439
    const/4 v4, 0x0

    #@c2
    move-object/from16 v0, v22

    #@c4
    iput v4, v0, Lcom/android/internal/os/ProcessCpuTracker$Stats;->rel_stime:I

    #@c6
    .line 440
    const/4 v4, 0x0

    #@c7
    move-object/from16 v0, v22

    #@c9
    iput v4, v0, Lcom/android/internal/os/ProcessCpuTracker$Stats;->rel_minfaults:I

    #@cb
    .line 441
    const/4 v4, 0x0

    #@cc
    move-object/from16 v0, v22

    #@ce
    iput v4, v0, Lcom/android/internal/os/ProcessCpuTracker$Stats;->rel_majfaults:I

    #@d0
    .line 442
    move-object/from16 v0, v22

    #@d2
    iget-boolean v4, v0, Lcom/android/internal/os/ProcessCpuTracker$Stats;->active:Z

    #@d4
    if-eqz v4, :cond_3

    #@d6
    .line 443
    const/4 v4, 0x0

    #@d7
    move-object/from16 v0, v22

    #@d9
    iput-boolean v4, v0, Lcom/android/internal/os/ProcessCpuTracker$Stats;->active:Z

    #@db
    goto :goto_4

    #@dc
    .line 448
    :cond_6
    move-object/from16 v0, v22

    #@de
    iget-boolean v4, v0, Lcom/android/internal/os/ProcessCpuTracker$Stats;->active:Z

    #@e0
    if-nez v4, :cond_7

    #@e2
    .line 449
    const/4 v4, 0x1

    #@e3
    move-object/from16 v0, v22

    #@e5
    iput-boolean v4, v0, Lcom/android/internal/os/ProcessCpuTracker$Stats;->active:Z

    #@e7
    .line 452
    :cond_7
    if-gez p2, :cond_8

    #@e9
    .line 453
    move-object/from16 v0, v22

    #@eb
    iget-object v4, v0, Lcom/android/internal/os/ProcessCpuTracker$Stats;->cmdlineFile:Ljava/lang/String;

    #@ed
    move-object/from16 v0, p0

    #@ef
    move-object/from16 v1, v22

    #@f1
    invoke-direct {v0, v1, v4}, Lcom/android/internal/os/ProcessCpuTracker;->getName(Lcom/android/internal/os/ProcessCpuTracker$Stats;Ljava/lang/String;)V

    #@f4
    .line 454
    move-object/from16 v0, v22

    #@f6
    iget-object v4, v0, Lcom/android/internal/os/ProcessCpuTracker$Stats;->threadStats:Ljava/util/ArrayList;

    #@f8
    if-eqz v4, :cond_8

    #@fa
    .line 455
    move-object/from16 v0, v22

    #@fc
    iget-object v5, v0, Lcom/android/internal/os/ProcessCpuTracker$Stats;->threadsDir:Ljava/lang/String;

    #@fe
    .line 456
    move-object/from16 v0, p0

    #@100
    iget-object v8, v0, Lcom/android/internal/os/ProcessCpuTracker;->mCurThreadPids:[I

    #@102
    move-object/from16 v0, v22

    #@104
    iget-object v9, v0, Lcom/android/internal/os/ProcessCpuTracker$Stats;->threadStats:Ljava/util/ArrayList;

    #@106
    .line 455
    const/4 v7, 0x0

    #@107
    move-object/from16 v4, p0

    #@109
    invoke-direct/range {v4 .. v9}, Lcom/android/internal/os/ProcessCpuTracker;->collectStats(Ljava/lang/String;IZ[ILjava/util/ArrayList;)[I

    #@10c
    move-result-object v4

    #@10d
    move-object/from16 v0, p0

    #@10f
    iput-object v4, v0, Lcom/android/internal/os/ProcessCpuTracker;->mCurThreadPids:[I

    #@111
    .line 466
    :cond_8
    move-object/from16 v0, v22

    #@113
    iget-wide v4, v0, Lcom/android/internal/os/ProcessCpuTracker$Stats;->base_uptime:J

    #@115
    sub-long v4, v26, v4

    #@117
    move-object/from16 v0, v22

    #@119
    iput-wide v4, v0, Lcom/android/internal/os/ProcessCpuTracker$Stats;->rel_uptime:J

    #@11b
    .line 467
    move-wide/from16 v0, v26

    #@11d
    move-object/from16 v2, v22

    #@11f
    iput-wide v0, v2, Lcom/android/internal/os/ProcessCpuTracker$Stats;->base_uptime:J

    #@121
    .line 468
    move-object/from16 v0, v22

    #@123
    iget-wide v4, v0, Lcom/android/internal/os/ProcessCpuTracker$Stats;->base_utime:J

    #@125
    sub-long v4, v28, v4

    #@127
    long-to-int v4, v4

    #@128
    move-object/from16 v0, v22

    #@12a
    iput v4, v0, Lcom/android/internal/os/ProcessCpuTracker$Stats;->rel_utime:I

    #@12c
    .line 469
    move-object/from16 v0, v22

    #@12e
    iget-wide v4, v0, Lcom/android/internal/os/ProcessCpuTracker$Stats;->base_stime:J

    #@130
    sub-long v4, v24, v4

    #@132
    long-to-int v4, v4

    #@133
    move-object/from16 v0, v22

    #@135
    iput v4, v0, Lcom/android/internal/os/ProcessCpuTracker$Stats;->rel_stime:I

    #@137
    .line 470
    move-wide/from16 v0, v28

    #@139
    move-object/from16 v2, v22

    #@13b
    iput-wide v0, v2, Lcom/android/internal/os/ProcessCpuTracker$Stats;->base_utime:J

    #@13d
    .line 471
    move-wide/from16 v0, v24

    #@13f
    move-object/from16 v2, v22

    #@141
    iput-wide v0, v2, Lcom/android/internal/os/ProcessCpuTracker$Stats;->base_stime:J

    #@143
    .line 472
    move-object/from16 v0, v22

    #@145
    iget-wide v4, v0, Lcom/android/internal/os/ProcessCpuTracker$Stats;->base_minfaults:J

    #@147
    sub-long v4, v16, v4

    #@149
    long-to-int v4, v4

    #@14a
    move-object/from16 v0, v22

    #@14c
    iput v4, v0, Lcom/android/internal/os/ProcessCpuTracker$Stats;->rel_minfaults:I

    #@14e
    .line 473
    move-object/from16 v0, v22

    #@150
    iget-wide v4, v0, Lcom/android/internal/os/ProcessCpuTracker$Stats;->base_majfaults:J

    #@152
    sub-long v4, v14, v4

    #@154
    long-to-int v4, v4

    #@155
    move-object/from16 v0, v22

    #@157
    iput v4, v0, Lcom/android/internal/os/ProcessCpuTracker$Stats;->rel_majfaults:I

    #@159
    .line 474
    move-wide/from16 v0, v16

    #@15b
    move-object/from16 v2, v22

    #@15d
    iput-wide v0, v2, Lcom/android/internal/os/ProcessCpuTracker$Stats;->base_minfaults:J

    #@15f
    .line 475
    move-object/from16 v0, v22

    #@161
    iput-wide v14, v0, Lcom/android/internal/os/ProcessCpuTracker$Stats;->base_majfaults:J

    #@163
    .line 476
    const/4 v4, 0x1

    #@164
    move-object/from16 v0, v22

    #@166
    iput-boolean v4, v0, Lcom/android/internal/os/ProcessCpuTracker$Stats;->working:Z

    #@168
    goto/16 :goto_4

    #@16a
    .line 482
    .end local v14    # "majfaults":J
    .end local v16    # "minfaults":J
    .end local v20    # "procStats":[J
    .end local v24    # "stime":J
    .end local v26    # "uptime":J
    .end local v28    # "utime":J
    :cond_9
    if-eqz v22, :cond_a

    #@16c
    move-object/from16 v0, v22

    #@16e
    iget v4, v0, Lcom/android/internal/os/ProcessCpuTracker$Stats;->pid:I

    #@170
    if-le v4, v6, :cond_e

    #@172
    .line 484
    :cond_a
    new-instance v22, Lcom/android/internal/os/ProcessCpuTracker$Stats;

    #@174
    move-object/from16 v0, p0

    #@176
    iget-boolean v4, v0, Lcom/android/internal/os/ProcessCpuTracker;->mIncludeThreads:Z

    #@178
    move-object/from16 v0, v22

    #@17a
    move/from16 v1, p2

    #@17c
    invoke-direct {v0, v6, v1, v4}, Lcom/android/internal/os/ProcessCpuTracker$Stats;-><init>(IIZ)V

    #@17f
    .line 485
    .local v22, "st":Lcom/android/internal/os/ProcessCpuTracker$Stats;
    move-object/from16 v0, p5

    #@181
    move-object/from16 v1, v22

    #@183
    invoke-virtual {v0, v12, v1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    #@186
    .line 486
    add-int/lit8 v12, v12, 0x1

    #@188
    .line 487
    add-int/lit8 v11, v11, 0x1

    #@18a
    .line 492
    move-object/from16 v0, p0

    #@18c
    iget-object v0, v0, Lcom/android/internal/os/ProcessCpuTracker;->mProcessFullStatsStringData:[Ljava/lang/String;

    #@18e
    move-object/from16 v21, v0

    #@190
    .line 493
    .local v21, "procStatsString":[Ljava/lang/String;
    move-object/from16 v0, p0

    #@192
    iget-object v0, v0, Lcom/android/internal/os/ProcessCpuTracker;->mProcessFullStatsData:[J

    #@194
    move-object/from16 v20, v0

    #@196
    .line 494
    .restart local v20    # "procStats":[J
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    #@199
    move-result-wide v4

    #@19a
    move-object/from16 v0, v22

    #@19c
    iput-wide v4, v0, Lcom/android/internal/os/ProcessCpuTracker$Stats;->base_uptime:J

    #@19e
    .line 495
    move-object/from16 v0, v22

    #@1a0
    iget-object v4, v0, Lcom/android/internal/os/ProcessCpuTracker$Stats;->statFile:Ljava/lang/String;

    #@1a2
    invoke-virtual {v4}, Ljava/lang/String;->toString()Ljava/lang/String;

    #@1a5
    move-result-object v18

    #@1a6
    .line 497
    .local v18, "path":Ljava/lang/String;
    sget-object v4, Lcom/android/internal/os/ProcessCpuTracker;->PROCESS_FULL_STATS_FORMAT:[I

    #@1a8
    .line 498
    const/4 v5, 0x0

    #@1a9
    .line 497
    move-object/from16 v0, v18

    #@1ab
    move-object/from16 v1, v21

    #@1ad
    move-object/from16 v2, v20

    #@1af
    invoke-static {v0, v4, v1, v2, v5}, Landroid/os/Process;->readProcFile(Ljava/lang/String;[I[Ljava/lang/String;[J[F)Z

    #@1b2
    move-result v4

    #@1b3
    if-eqz v4, :cond_c

    #@1b5
    .line 503
    const/4 v4, 0x5

    #@1b6
    aget-wide v4, v20, v4

    #@1b8
    move-object/from16 v0, v22

    #@1ba
    iput-wide v4, v0, Lcom/android/internal/os/ProcessCpuTracker$Stats;->vsize:J

    #@1bc
    .line 505
    const/4 v4, 0x1

    #@1bd
    move-object/from16 v0, v22

    #@1bf
    iput-boolean v4, v0, Lcom/android/internal/os/ProcessCpuTracker$Stats;->interesting:Z

    #@1c1
    .line 506
    const/4 v4, 0x0

    #@1c2
    aget-object v4, v21, v4

    #@1c4
    move-object/from16 v0, v22

    #@1c6
    iput-object v4, v0, Lcom/android/internal/os/ProcessCpuTracker$Stats;->baseName:Ljava/lang/String;

    #@1c8
    .line 507
    const/4 v4, 0x1

    #@1c9
    aget-wide v4, v20, v4

    #@1cb
    move-object/from16 v0, v22

    #@1cd
    iput-wide v4, v0, Lcom/android/internal/os/ProcessCpuTracker$Stats;->base_minfaults:J

    #@1cf
    .line 508
    const/4 v4, 0x2

    #@1d0
    aget-wide v4, v20, v4

    #@1d2
    move-object/from16 v0, v22

    #@1d4
    iput-wide v4, v0, Lcom/android/internal/os/ProcessCpuTracker$Stats;->base_majfaults:J

    #@1d6
    .line 509
    const/4 v4, 0x3

    #@1d7
    aget-wide v4, v20, v4

    #@1d9
    move-object/from16 v0, p0

    #@1db
    iget-wide v8, v0, Lcom/android/internal/os/ProcessCpuTracker;->mJiffyMillis:J

    #@1dd
    mul-long/2addr v4, v8

    #@1de
    move-object/from16 v0, v22

    #@1e0
    iput-wide v4, v0, Lcom/android/internal/os/ProcessCpuTracker$Stats;->base_utime:J

    #@1e2
    .line 510
    const/4 v4, 0x4

    #@1e3
    aget-wide v4, v20, v4

    #@1e5
    move-object/from16 v0, p0

    #@1e7
    iget-wide v8, v0, Lcom/android/internal/os/ProcessCpuTracker;->mJiffyMillis:J

    #@1e9
    mul-long/2addr v4, v8

    #@1ea
    move-object/from16 v0, v22

    #@1ec
    iput-wide v4, v0, Lcom/android/internal/os/ProcessCpuTracker$Stats;->base_stime:J

    #@1ee
    .line 523
    :goto_5
    if-gez p2, :cond_d

    #@1f0
    .line 524
    move-object/from16 v0, v22

    #@1f2
    iget-object v4, v0, Lcom/android/internal/os/ProcessCpuTracker$Stats;->cmdlineFile:Ljava/lang/String;

    #@1f4
    move-object/from16 v0, p0

    #@1f6
    move-object/from16 v1, v22

    #@1f8
    invoke-direct {v0, v1, v4}, Lcom/android/internal/os/ProcessCpuTracker;->getName(Lcom/android/internal/os/ProcessCpuTracker$Stats;Ljava/lang/String;)V

    #@1fb
    .line 525
    move-object/from16 v0, v22

    #@1fd
    iget-object v4, v0, Lcom/android/internal/os/ProcessCpuTracker$Stats;->threadStats:Ljava/util/ArrayList;

    #@1ff
    if-eqz v4, :cond_b

    #@201
    .line 526
    move-object/from16 v0, v22

    #@203
    iget-object v5, v0, Lcom/android/internal/os/ProcessCpuTracker$Stats;->threadsDir:Ljava/lang/String;

    #@205
    .line 527
    move-object/from16 v0, p0

    #@207
    iget-object v8, v0, Lcom/android/internal/os/ProcessCpuTracker;->mCurThreadPids:[I

    #@209
    move-object/from16 v0, v22

    #@20b
    iget-object v9, v0, Lcom/android/internal/os/ProcessCpuTracker$Stats;->threadStats:Ljava/util/ArrayList;

    #@20d
    .line 526
    const/4 v7, 0x1

    #@20e
    move-object/from16 v4, p0

    #@210
    invoke-direct/range {v4 .. v9}, Lcom/android/internal/os/ProcessCpuTracker;->collectStats(Ljava/lang/String;IZ[ILjava/util/ArrayList;)[I

    #@213
    move-result-object v4

    #@214
    move-object/from16 v0, p0

    #@216
    iput-object v4, v0, Lcom/android/internal/os/ProcessCpuTracker;->mCurThreadPids:[I

    #@218
    .line 538
    :cond_b
    :goto_6
    const/4 v4, 0x0

    #@219
    move-object/from16 v0, v22

    #@21b
    iput v4, v0, Lcom/android/internal/os/ProcessCpuTracker$Stats;->rel_utime:I

    #@21d
    .line 539
    const/4 v4, 0x0

    #@21e
    move-object/from16 v0, v22

    #@220
    iput v4, v0, Lcom/android/internal/os/ProcessCpuTracker$Stats;->rel_stime:I

    #@222
    .line 540
    const/4 v4, 0x0

    #@223
    move-object/from16 v0, v22

    #@225
    iput v4, v0, Lcom/android/internal/os/ProcessCpuTracker$Stats;->rel_minfaults:I

    #@227
    .line 541
    const/4 v4, 0x0

    #@228
    move-object/from16 v0, v22

    #@22a
    iput v4, v0, Lcom/android/internal/os/ProcessCpuTracker$Stats;->rel_majfaults:I

    #@22c
    .line 542
    const/4 v4, 0x1

    #@22d
    move-object/from16 v0, v22

    #@22f
    iput-boolean v4, v0, Lcom/android/internal/os/ProcessCpuTracker$Stats;->added:Z

    #@231
    .line 543
    if-nez p3, :cond_3

    #@233
    move-object/from16 v0, v22

    #@235
    iget-boolean v4, v0, Lcom/android/internal/os/ProcessCpuTracker$Stats;->interesting:Z

    #@237
    if-eqz v4, :cond_3

    #@239
    .line 544
    const/4 v4, 0x1

    #@23a
    move-object/from16 v0, v22

    #@23c
    iput-boolean v4, v0, Lcom/android/internal/os/ProcessCpuTracker$Stats;->working:Z

    #@23e
    goto/16 :goto_4

    #@240
    .line 517
    :cond_c
    const-string/jumbo v4, "ProcessCpuTracker"

    #@243
    new-instance v5, Ljava/lang/StringBuilder;

    #@245
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@248
    const-string/jumbo v7, "Skipping unknown process pid "

    #@24b
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@24e
    move-result-object v5

    #@24f
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@252
    move-result-object v5

    #@253
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@256
    move-result-object v5

    #@257
    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@25a
    .line 518
    const-string/jumbo v4, "<unknown>"

    #@25d
    move-object/from16 v0, v22

    #@25f
    iput-object v4, v0, Lcom/android/internal/os/ProcessCpuTracker$Stats;->baseName:Ljava/lang/String;

    #@261
    .line 519
    const-wide/16 v4, 0x0

    #@263
    move-object/from16 v0, v22

    #@265
    iput-wide v4, v0, Lcom/android/internal/os/ProcessCpuTracker$Stats;->base_stime:J

    #@267
    const-wide/16 v4, 0x0

    #@269
    move-object/from16 v0, v22

    #@26b
    iput-wide v4, v0, Lcom/android/internal/os/ProcessCpuTracker$Stats;->base_utime:J

    #@26d
    .line 520
    const-wide/16 v4, 0x0

    #@26f
    move-object/from16 v0, v22

    #@271
    iput-wide v4, v0, Lcom/android/internal/os/ProcessCpuTracker$Stats;->base_majfaults:J

    #@273
    const-wide/16 v4, 0x0

    #@275
    move-object/from16 v0, v22

    #@277
    iput-wide v4, v0, Lcom/android/internal/os/ProcessCpuTracker$Stats;->base_minfaults:J

    #@279
    goto/16 :goto_5

    #@27b
    .line 529
    :cond_d
    move-object/from16 v0, v22

    #@27d
    iget-boolean v4, v0, Lcom/android/internal/os/ProcessCpuTracker$Stats;->interesting:Z

    #@27f
    if-eqz v4, :cond_b

    #@281
    .line 530
    move-object/from16 v0, v22

    #@283
    iget-object v4, v0, Lcom/android/internal/os/ProcessCpuTracker$Stats;->baseName:Ljava/lang/String;

    #@285
    move-object/from16 v0, v22

    #@287
    iput-object v4, v0, Lcom/android/internal/os/ProcessCpuTracker$Stats;->name:Ljava/lang/String;

    #@289
    .line 531
    move-object/from16 v0, v22

    #@28b
    iget-object v4, v0, Lcom/android/internal/os/ProcessCpuTracker$Stats;->name:Ljava/lang/String;

    #@28d
    move-object/from16 v0, p0

    #@28f
    invoke-virtual {v0, v4}, Lcom/android/internal/os/ProcessCpuTracker;->onMeasureProcessName(Ljava/lang/String;)I

    #@292
    move-result v4

    #@293
    move-object/from16 v0, v22

    #@295
    iput v4, v0, Lcom/android/internal/os/ProcessCpuTracker$Stats;->nameWidth:I

    #@297
    goto :goto_6

    #@298
    .line 550
    .end local v18    # "path":Ljava/lang/String;
    .end local v20    # "procStats":[J
    .end local v21    # "procStatsString":[Ljava/lang/String;
    .end local v22    # "st":Lcom/android/internal/os/ProcessCpuTracker$Stats;
    :cond_e
    const/4 v4, 0x0

    #@299
    move-object/from16 v0, v22

    #@29b
    iput v4, v0, Lcom/android/internal/os/ProcessCpuTracker$Stats;->rel_utime:I

    #@29d
    .line 551
    const/4 v4, 0x0

    #@29e
    move-object/from16 v0, v22

    #@2a0
    iput v4, v0, Lcom/android/internal/os/ProcessCpuTracker$Stats;->rel_stime:I

    #@2a2
    .line 552
    const/4 v4, 0x0

    #@2a3
    move-object/from16 v0, v22

    #@2a5
    iput v4, v0, Lcom/android/internal/os/ProcessCpuTracker$Stats;->rel_minfaults:I

    #@2a7
    .line 553
    const/4 v4, 0x0

    #@2a8
    move-object/from16 v0, v22

    #@2aa
    iput v4, v0, Lcom/android/internal/os/ProcessCpuTracker$Stats;->rel_majfaults:I

    #@2ac
    .line 554
    const/4 v4, 0x1

    #@2ad
    move-object/from16 v0, v22

    #@2af
    iput-boolean v4, v0, Lcom/android/internal/os/ProcessCpuTracker$Stats;->removed:Z

    #@2b1
    .line 555
    const/4 v4, 0x1

    #@2b2
    move-object/from16 v0, v22

    #@2b4
    iput-boolean v4, v0, Lcom/android/internal/os/ProcessCpuTracker$Stats;->working:Z

    #@2b6
    .line 556
    move-object/from16 v0, p5

    #@2b8
    invoke-virtual {v0, v12}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    #@2bb
    .line 557
    add-int/lit8 v11, v11, -0x1

    #@2bd
    .line 563
    add-int/lit8 v13, v13, -0x1

    #@2bf
    .line 564
    goto/16 :goto_4

    #@2c1
    .line 581
    .end local v6    # "pid":I
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
    .line 863
    iget-object v2, p1, Lcom/android/internal/os/ProcessCpuTracker$Stats;->name:Ljava/lang/String;

    #@3
    .line 864
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
    .line 865
    iget-object v3, p1, Lcom/android/internal/os/ProcessCpuTracker$Stats;->name:Ljava/lang/String;

    #@14
    const-string/jumbo v4, "<pre-initialized>"

    #@17
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@1a
    move-result v3

    #@1b
    .line 864
    if-eqz v3, :cond_2

    #@1d
    .line 866
    :cond_0
    invoke-direct {p0, p2, v5}, Lcom/android/internal/os/ProcessCpuTracker;->readFile(Ljava/lang/String;C)Ljava/lang/String;

    #@20
    move-result-object v0

    #@21
    .line 867
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
    .line 868
    move-object v2, v0

    #@2b
    .line 869
    const-string/jumbo v3, "/"

    #@2e
    invoke-virtual {v2, v3}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    #@31
    move-result v1

    #@32
    .line 870
    .local v1, "i":I
    if-lez v1, :cond_1

    #@34
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    #@37
    move-result v3

    #@38
    add-int/lit8 v3, v3, -0x1

    #@3a
    if-ge v1, v3, :cond_1

    #@3c
    .line 871
    add-int/lit8 v3, v1, 0x1

    #@3e
    invoke-virtual {v2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    #@41
    move-result-object v2

    #@42
    .line 874
    .end local v1    # "i":I
    :cond_1
    if-nez v2, :cond_2

    #@44
    .line 875
    iget-object v2, p1, Lcom/android/internal/os/ProcessCpuTracker$Stats;->baseName:Ljava/lang/String;

    #@46
    .line 878
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
    .line 862
    :goto_0
    return-void

    #@53
    .line 879
    :cond_3
    iput-object v2, p1, Lcom/android/internal/os/ProcessCpuTracker$Stats;->name:Ljava/lang/String;

    #@55
    .line 880
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
    .line 788
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@3
    .line 789
    if-nez p5, :cond_0

    #@5
    const/4 p5, 0x1

    #@6
    .line 790
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
    .line 791
    const-string/jumbo v2, "% "

    #@18
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@1b
    .line 792
    if-ltz p3, :cond_1

    #@1d
    .line 793
    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->print(I)V

    #@20
    .line 794
    const-string/jumbo v2, "/"

    #@23
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@26
    .line 796
    :cond_1
    invoke-virtual {p1, p4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@29
    .line 797
    const-string/jumbo v2, ": "

    #@2c
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@2f
    .line 798
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
    .line 799
    const-string/jumbo v2, "% user + "

    #@39
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@3c
    .line 800
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
    .line 801
    const-string/jumbo v2, "% kernel"

    #@46
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@49
    .line 802
    if-lez p8, :cond_2

    #@4b
    .line 803
    const-string/jumbo v2, " + "

    #@4e
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@51
    .line 804
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
    .line 805
    const-string/jumbo v2, "% iowait"

    #@5d
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@60
    .line 807
    :cond_2
    if-lez p9, :cond_3

    #@62
    .line 808
    const-string/jumbo v2, " + "

    #@65
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@68
    .line 809
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
    .line 810
    const-string/jumbo v2, "% irq"

    #@74
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@77
    .line 812
    :cond_3
    if-lez p10, :cond_4

    #@79
    .line 813
    const-string/jumbo v2, " + "

    #@7c
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@7f
    .line 814
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
    .line 815
    const-string/jumbo v2, "% softirq"

    #@8b
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@8e
    .line 817
    :cond_4
    if-gtz p11, :cond_5

    #@90
    if-lez p12, :cond_7

    #@92
    .line 818
    :cond_5
    const-string/jumbo v2, " / faults:"

    #@95
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@98
    .line 819
    if-lez p11, :cond_6

    #@9a
    .line 820
    const-string/jumbo v2, " "

    #@9d
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@a0
    .line 821
    move/from16 v0, p11

    #@a2
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    #@a5
    .line 822
    const-string/jumbo v2, " minor"

    #@a8
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@ab
    .line 824
    :cond_6
    if-lez p12, :cond_7

    #@ad
    .line 825
    const-string/jumbo v2, " "

    #@b0
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@b3
    .line 826
    move/from16 v0, p12

    #@b5
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    #@b8
    .line 827
    const-string/jumbo v2, " major"

    #@bb
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@be
    .line 830
    :cond_7
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    #@c1
    .line 787
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
    .line 773
    const-wide/16 v6, 0x3e8

    #@4
    mul-long/2addr v6, p2

    #@5
    div-long v4, v6, p4

    #@7
    .line 774
    .local v4, "thousands":J
    div-long v0, v4, v8

    #@9
    .line 775
    .local v0, "hundreds":J
    invoke-virtual {p1, v0, v1}, Ljava/io/PrintWriter;->print(J)V

    #@c
    .line 776
    cmp-long v6, v0, v8

    #@e
    if-gez v6, :cond_0

    #@10
    .line 777
    mul-long v6, v0, v8

    #@12
    sub-long v2, v4, v6

    #@14
    .line 778
    .local v2, "remainder":J
    const-wide/16 v6, 0x0

    #@16
    cmp-long v6, v2, v6

    #@18
    if-eqz v6, :cond_0

    #@1a
    .line 779
    const/16 v6, 0x2e

    #@1c
    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(C)V

    #@1f
    .line 780
    invoke-virtual {p1, v2, v3}, Ljava/io/PrintWriter;->print(J)V

    #@22
    .line 772
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
    .line 837
    invoke-static {}, Landroid/os/StrictMode;->allowThreadDiskReads()Landroid/os/StrictMode$ThreadPolicy;

    #@3
    move-result-object v6

    #@4
    .line 838
    .local v6, "savedPolicy":Landroid/os/StrictMode$ThreadPolicy;
    const/4 v3, 0x0

    #@5
    .line 840
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
    .line 841
    .end local v3    # "is":Ljava/io/FileInputStream;
    .local v4, "is":Ljava/io/FileInputStream;
    :try_start_1
    iget-object v7, p0, Lcom/android/internal/os/ProcessCpuTracker;->mBuffer:[B

    #@c
    invoke-virtual {v4, v7}, Ljava/io/FileInputStream;->read([B)I

    #@f
    move-result v5

    #@10
    .line 842
    .local v5, "len":I
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V

    #@13
    .line 844
    if-lez v5, :cond_2

    #@15
    .line 846
    const/4 v2, 0x0

    #@16
    .local v2, "i":I
    :goto_0
    if-ge v2, v5, :cond_0

    #@18
    .line 847
    iget-object v7, p0, Lcom/android/internal/os/ProcessCpuTracker;->mBuffer:[B

    #@1a
    aget-byte v7, v7, v2

    #@1c
    if-ne v7, p2, :cond_1

    #@1e
    .line 851
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
    .line 856
    invoke-static {v4}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    #@29
    .line 857
    invoke-static {v6}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    #@2c
    .line 851
    return-object v7

    #@2d
    .line 846
    :cond_1
    add-int/lit8 v2, v2, 0x1

    #@2f
    goto :goto_0

    #@30
    .line 856
    .end local v2    # "i":I
    :cond_2
    invoke-static {v4}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    #@33
    .line 857
    invoke-static {v6}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    #@36
    move-object v3, v4

    #@37
    .line 859
    .end local v4    # "is":Ljava/io/FileInputStream;
    .end local v5    # "len":I
    :goto_1
    const/4 v7, 0x0

    #@38
    return-object v7

    #@39
    .line 854
    .restart local v3    # "is":Ljava/io/FileInputStream;
    :catch_0
    move-exception v1

    #@3a
    .line 856
    .end local v3    # "is":Ljava/io/FileInputStream;
    .local v1, "e":Ljava/io/IOException;
    :goto_2
    invoke-static {v3}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    #@3d
    .line 857
    invoke-static {v6}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    #@40
    goto :goto_1

    #@41
    .line 853
    .end local v1    # "e":Ljava/io/IOException;
    .restart local v3    # "is":Ljava/io/FileInputStream;
    :catch_1
    move-exception v0

    #@42
    .line 856
    .end local v3    # "is":Ljava/io/FileInputStream;
    .local v0, "e":Ljava/io/FileNotFoundException;
    :goto_3
    invoke-static {v3}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    #@45
    .line 857
    invoke-static {v6}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    #@48
    goto :goto_1

    #@49
    .line 855
    .end local v0    # "e":Ljava/io/FileNotFoundException;
    .restart local v3    # "is":Ljava/io/FileInputStream;
    :catchall_0
    move-exception v7

    #@4a
    .line 856
    .end local v3    # "is":Ljava/io/FileInputStream;
    :goto_4
    invoke-static {v3}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    #@4d
    .line 857
    invoke-static {v6}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    #@50
    .line 855
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
    .line 853
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
    .line 854
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
    .line 657
    iget-boolean v6, p0, Lcom/android/internal/os/ProcessCpuTracker;->mWorkingProcsSorted:Z

    #@3
    if-nez v6, :cond_4

    #@5
    .line 658
    iget-object v6, p0, Lcom/android/internal/os/ProcessCpuTracker;->mWorkingProcs:Ljava/util/ArrayList;

    #@7
    invoke-virtual {v6}, Ljava/util/ArrayList;->clear()V

    #@a
    .line 659
    iget-object v6, p0, Lcom/android/internal/os/ProcessCpuTracker;->mProcStats:Ljava/util/ArrayList;

    #@c
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    #@f
    move-result v1

    #@10
    .line 660
    .local v1, "N":I
    const/4 v2, 0x0

    #@11
    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_3

    #@13
    .line 661
    iget-object v6, p0, Lcom/android/internal/os/ProcessCpuTracker;->mProcStats:Ljava/util/ArrayList;

    #@15
    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@18
    move-result-object v4

    #@19
    check-cast v4, Lcom/android/internal/os/ProcessCpuTracker$Stats;

    #@1b
    .line 662
    .local v4, "stats":Lcom/android/internal/os/ProcessCpuTracker$Stats;
    iget-boolean v6, v4, Lcom/android/internal/os/ProcessCpuTracker$Stats;->working:Z

    #@1d
    if-eqz v6, :cond_2

    #@1f
    .line 663
    iget-object v6, p0, Lcom/android/internal/os/ProcessCpuTracker;->mWorkingProcs:Ljava/util/ArrayList;

    #@21
    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@24
    .line 664
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
    .line 665
    iget-object v6, v4, Lcom/android/internal/os/ProcessCpuTracker$Stats;->workingThreads:Ljava/util/ArrayList;

    #@32
    invoke-virtual {v6}, Ljava/util/ArrayList;->clear()V

    #@35
    .line 666
    iget-object v6, v4, Lcom/android/internal/os/ProcessCpuTracker$Stats;->threadStats:Ljava/util/ArrayList;

    #@37
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    #@3a
    move-result v0

    #@3b
    .line 667
    .local v0, "M":I
    const/4 v3, 0x0

    #@3c
    .local v3, "j":I
    :goto_1
    if-ge v3, v0, :cond_1

    #@3e
    .line 668
    iget-object v6, v4, Lcom/android/internal/os/ProcessCpuTracker$Stats;->threadStats:Ljava/util/ArrayList;

    #@40
    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@43
    move-result-object v5

    #@44
    check-cast v5, Lcom/android/internal/os/ProcessCpuTracker$Stats;

    #@46
    .line 669
    .local v5, "tstats":Lcom/android/internal/os/ProcessCpuTracker$Stats;
    iget-boolean v6, v5, Lcom/android/internal/os/ProcessCpuTracker$Stats;->working:Z

    #@48
    if-eqz v6, :cond_0

    #@4a
    .line 670
    iget-object v6, v4, Lcom/android/internal/os/ProcessCpuTracker$Stats;->workingThreads:Ljava/util/ArrayList;

    #@4c
    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@4f
    .line 667
    :cond_0
    add-int/lit8 v3, v3, 0x1

    #@51
    goto :goto_1

    #@52
    .line 673
    .end local v5    # "tstats":Lcom/android/internal/os/ProcessCpuTracker$Stats;
    :cond_1
    iget-object v6, v4, Lcom/android/internal/os/ProcessCpuTracker$Stats;->workingThreads:Ljava/util/ArrayList;

    #@54
    sget-object v7, Lcom/android/internal/os/ProcessCpuTracker;->sLoadComparator:Ljava/util/Comparator;

    #@56
    invoke-static {v6, v7}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    #@59
    .line 660
    .end local v0    # "M":I
    .end local v3    # "j":I
    :cond_2
    add-int/lit8 v2, v2, 0x1

    #@5b
    goto :goto_0

    #@5c
    .line 677
    .end local v4    # "stats":Lcom/android/internal/os/ProcessCpuTracker$Stats;
    :cond_3
    iget-object v6, p0, Lcom/android/internal/os/ProcessCpuTracker;->mWorkingProcs:Ljava/util/ArrayList;

    #@5e
    sget-object v7, Lcom/android/internal/os/ProcessCpuTracker;->sLoadComparator:Ljava/util/Comparator;

    #@60
    invoke-static {v6, v7}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    #@63
    .line 678
    iput-boolean v8, p0, Lcom/android/internal/os/ProcessCpuTracker;->mWorkingProcsSorted:Z

    #@65
    .line 656
    .end local v1    # "N":I
    .end local v2    # "i":I
    :cond_4
    return-void
.end method

.method public final countStats()I
    .locals 1

    #@0
    .prologue
    .line 683
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
    .line 691
    invoke-virtual {p0}, Lcom/android/internal/os/ProcessCpuTracker;->buildWorkingProcs()V

    #@3
    .line 692
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
    .line 589
    iget-object v5, p0, Lcom/android/internal/os/ProcessCpuTracker;->mSinglePidStatsData:[J

    #@2
    monitor-enter v5

    #@3
    .line 590
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
    .line 591
    .local v0, "statFile":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/internal/os/ProcessCpuTracker;->mSinglePidStatsData:[J

    #@20
    .line 592
    .local v1, "statsData":[J
    sget-object v4, Lcom/android/internal/os/ProcessCpuTracker;->PROCESS_STATS_FORMAT:[I

    #@22
    .line 593
    const/4 v6, 0x0

    #@23
    const/4 v7, 0x0

    #@24
    .line 592
    invoke-static {v0, v4, v6, v1, v7}, Landroid/os/Process;->readProcFile(Ljava/lang/String;[I[Ljava/lang/String;[J[F)Z

    #@27
    move-result v4

    #@28
    if-eqz v4, :cond_0

    #@2a
    .line 594
    const/4 v4, 0x2

    #@2b
    aget-wide v6, v1, v4

    #@2d
    .line 595
    const/4 v4, 0x3

    #@2e
    aget-wide v8, v1, v4

    #@30
    .line 594
    add-long v2, v6, v8

    #@32
    .line 596
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
    .line 598
    .end local v2    # "time":J
    :cond_0
    const-wide/16 v6, 0x0

    #@39
    monitor-exit v5

    #@3a
    return-wide v6

    #@3b
    .line 589
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
    .line 641
    iget v0, p0, Lcom/android/internal/os/ProcessCpuTracker;->mRelIdleTime:I

    #@2
    return v0
.end method

.method public final getLastIoWaitTime()I
    .locals 1

    #@0
    .prologue
    .line 620
    iget v0, p0, Lcom/android/internal/os/ProcessCpuTracker;->mRelIoWaitTime:I

    #@2
    return v0
.end method

.method public final getLastIrqTime()I
    .locals 1

    #@0
    .prologue
    .line 627
    iget v0, p0, Lcom/android/internal/os/ProcessCpuTracker;->mRelIrqTime:I

    #@2
    return v0
.end method

.method public final getLastSoftIrqTime()I
    .locals 1

    #@0
    .prologue
    .line 634
    iget v0, p0, Lcom/android/internal/os/ProcessCpuTracker;->mRelSoftIrqTime:I

    #@2
    return v0
.end method

.method public final getLastSystemTime()I
    .locals 1

    #@0
    .prologue
    .line 613
    iget v0, p0, Lcom/android/internal/os/ProcessCpuTracker;->mRelSystemTime:I

    #@2
    return v0
.end method

.method public final getLastUserTime()I
    .locals 1

    #@0
    .prologue
    .line 606
    iget v0, p0, Lcom/android/internal/os/ProcessCpuTracker;->mRelUserTime:I

    #@2
    return v0
.end method

.method public final getStats(I)Lcom/android/internal/os/ProcessCpuTracker$Stats;
    .locals 1
    .param p1, "index"    # I

    #@0
    .prologue
    .line 687
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

.method public final getTotalCpuPercent()F
    .locals 3

    #@0
    .prologue
    .line 649
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
    .line 650
    .local v0, "denom":I
    if-gtz v0, :cond_0

    #@e
    .line 651
    const/4 v1, 0x0

    #@f
    return v1

    #@10
    .line 653
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
    .line 696
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
    .line 645
    iget-boolean v0, p0, Lcom/android/internal/os/ProcessCpuTracker;->mRelStatsAreGood:Z

    #@2
    return v0
.end method

.method public init()V
    .locals 1

    #@0
    .prologue
    .line 299
    const/4 v0, 0x1

    #@1
    iput-boolean v0, p0, Lcom/android/internal/os/ProcessCpuTracker;->mFirst:Z

    #@3
    .line 300
    invoke-virtual {p0}, Lcom/android/internal/os/ProcessCpuTracker;->update()V

    #@6
    .line 297
    return-void
.end method

.method public onLoadChanged(FFF)V
    .locals 0
    .param p1, "load1"    # F
    .param p2, "load5"    # F
    .param p3, "load15"    # F

    #@0
    .prologue
    .line 290
    return-void
.end method

.method public onMeasureProcessName(Ljava/lang/String;)I
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    #@0
    .prologue
    .line 294
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public final printCurrentLoad()Ljava/lang/String;
    .locals 4

    #@0
    .prologue
    .line 700
    new-instance v1, Ljava/io/StringWriter;

    #@2
    invoke-direct {v1}, Ljava/io/StringWriter;-><init>()V

    #@5
    .line 701
    .local v1, "sw":Ljava/io/StringWriter;
    new-instance v0, Lcom/android/internal/util/FastPrintWriter;

    #@7
    const/4 v2, 0x0

    #@8
    const/16 v3, 0x80

    #@a
    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/util/FastPrintWriter;-><init>(Ljava/io/Writer;ZI)V

    #@d
    .line 702
    .local v0, "pw":Ljava/io/PrintWriter;
    const-string/jumbo v2, "Load: "

    #@10
    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@13
    .line 703
    iget v2, p0, Lcom/android/internal/os/ProcessCpuTracker;->mLoad1:F

    #@15
    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->print(F)V

    #@18
    .line 704
    const-string/jumbo v2, " / "

    #@1b
    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@1e
    .line 705
    iget v2, p0, Lcom/android/internal/os/ProcessCpuTracker;->mLoad5:F

    #@20
    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->print(F)V

    #@23
    .line 706
    const-string/jumbo v2, " / "

    #@26
    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@29
    .line 707
    iget v2, p0, Lcom/android/internal/os/ProcessCpuTracker;->mLoad15:F

    #@2b
    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(F)V

    #@2e
    .line 708
    invoke-virtual {v0}, Ljava/io/PrintWriter;->flush()V

    #@31
    .line 709
    invoke-virtual {v1}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    #@34
    move-result-object v2

    #@35
    return-object v2
.end method

.method public final printCurrentState(J)Ljava/lang/String;
    .locals 29
    .param p1, "now"    # J

    #@0
    .prologue
    .line 713
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/os/ProcessCpuTracker;->buildWorkingProcs()V

    #@3
    .line 715
    new-instance v26, Ljava/io/StringWriter;

    #@5
    invoke-direct/range {v26 .. v26}, Ljava/io/StringWriter;-><init>()V

    #@8
    .line 716
    .local v26, "sw":Ljava/io/StringWriter;
    new-instance v3, Lcom/android/internal/util/FastPrintWriter;

    #@a
    const/4 v2, 0x0

    #@b
    const/16 v4, 0x400

    #@d
    move-object/from16 v0, v26

    #@f
    invoke-direct {v3, v0, v2, v4}, Lcom/android/internal/util/FastPrintWriter;-><init>(Ljava/io/Writer;ZI)V

    #@12
    .line 718
    .local v3, "pw":Ljava/io/PrintWriter;
    const-string/jumbo v2, "CPU usage from "

    #@15
    invoke-virtual {v3, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@18
    .line 719
    move-object/from16 v0, p0

    #@1a
    iget-wide v4, v0, Lcom/android/internal/os/ProcessCpuTracker;->mLastSampleTime:J

    #@1c
    cmp-long v2, p1, v4

    #@1e
    if-lez v2, :cond_1

    #@20
    .line 720
    move-object/from16 v0, p0

    #@22
    iget-wide v4, v0, Lcom/android/internal/os/ProcessCpuTracker;->mLastSampleTime:J

    #@24
    sub-long v4, p1, v4

    #@26
    invoke-virtual {v3, v4, v5}, Ljava/io/PrintWriter;->print(J)V

    #@29
    .line 721
    const-string/jumbo v2, "ms to "

    #@2c
    invoke-virtual {v3, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@2f
    .line 722
    move-object/from16 v0, p0

    #@31
    iget-wide v4, v0, Lcom/android/internal/os/ProcessCpuTracker;->mCurrentSampleTime:J

    #@33
    sub-long v4, p1, v4

    #@35
    invoke-virtual {v3, v4, v5}, Ljava/io/PrintWriter;->print(J)V

    #@38
    .line 723
    const-string/jumbo v2, "ms ago"

    #@3b
    invoke-virtual {v3, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@3e
    .line 731
    :goto_0
    move-object/from16 v0, p0

    #@40
    iget-wide v4, v0, Lcom/android/internal/os/ProcessCpuTracker;->mCurrentSampleTime:J

    #@42
    move-object/from16 v0, p0

    #@44
    iget-wide v6, v0, Lcom/android/internal/os/ProcessCpuTracker;->mLastSampleTime:J

    #@46
    sub-long v24, v4, v6

    #@48
    .line 732
    .local v24, "sampleTime":J
    move-object/from16 v0, p0

    #@4a
    iget-wide v4, v0, Lcom/android/internal/os/ProcessCpuTracker;->mCurrentSampleRealTime:J

    #@4c
    move-object/from16 v0, p0

    #@4e
    iget-wide v6, v0, Lcom/android/internal/os/ProcessCpuTracker;->mLastSampleRealTime:J

    #@50
    sub-long v22, v4, v6

    #@52
    .line 733
    .local v22, "sampleRealTime":J
    const-wide/16 v4, 0x0

    #@54
    cmp-long v2, v22, v4

    #@56
    if-lez v2, :cond_2

    #@58
    const-wide/16 v4, 0x64

    #@5a
    mul-long v4, v4, v24

    #@5c
    div-long v20, v4, v22

    #@5e
    .line 734
    .local v20, "percAwake":J
    :goto_1
    const-wide/16 v4, 0x64

    #@60
    cmp-long v2, v20, v4

    #@62
    if-eqz v2, :cond_0

    #@64
    .line 735
    const-string/jumbo v2, " with "

    #@67
    invoke-virtual {v3, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@6a
    .line 736
    move-wide/from16 v0, v20

    #@6c
    invoke-virtual {v3, v0, v1}, Ljava/io/PrintWriter;->print(J)V

    #@6f
    .line 737
    const-string/jumbo v2, "% awake"

    #@72
    invoke-virtual {v3, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@75
    .line 739
    :cond_0
    const-string/jumbo v2, ":"

    #@78
    invoke-virtual {v3, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@7b
    .line 741
    move-object/from16 v0, p0

    #@7d
    iget v2, v0, Lcom/android/internal/os/ProcessCpuTracker;->mRelUserTime:I

    #@7f
    move-object/from16 v0, p0

    #@81
    iget v4, v0, Lcom/android/internal/os/ProcessCpuTracker;->mRelSystemTime:I

    #@83
    add-int/2addr v2, v4

    #@84
    move-object/from16 v0, p0

    #@86
    iget v4, v0, Lcom/android/internal/os/ProcessCpuTracker;->mRelIoWaitTime:I

    #@88
    add-int/2addr v2, v4

    #@89
    .line 742
    move-object/from16 v0, p0

    #@8b
    iget v4, v0, Lcom/android/internal/os/ProcessCpuTracker;->mRelIrqTime:I

    #@8d
    .line 741
    add-int/2addr v2, v4

    #@8e
    .line 742
    move-object/from16 v0, p0

    #@90
    iget v4, v0, Lcom/android/internal/os/ProcessCpuTracker;->mRelSoftIrqTime:I

    #@92
    .line 741
    add-int/2addr v2, v4

    #@93
    .line 742
    move-object/from16 v0, p0

    #@95
    iget v4, v0, Lcom/android/internal/os/ProcessCpuTracker;->mRelIdleTime:I

    #@97
    .line 741
    add-int v27, v2, v4

    #@99
    .line 747
    .local v27, "totalTime":I
    move-object/from16 v0, p0

    #@9b
    iget-object v2, v0, Lcom/android/internal/os/ProcessCpuTracker;->mWorkingProcs:Ljava/util/ArrayList;

    #@9d
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    #@a0
    move-result v16

    #@a1
    .line 748
    .local v16, "N":I
    const/16 v17, 0x0

    #@a3
    .local v17, "i":I
    :goto_2
    move/from16 v0, v17

    #@a5
    move/from16 v1, v16

    #@a7
    if-ge v0, v1, :cond_8

    #@a9
    .line 749
    move-object/from16 v0, p0

    #@ab
    iget-object v2, v0, Lcom/android/internal/os/ProcessCpuTracker;->mWorkingProcs:Ljava/util/ArrayList;

    #@ad
    move/from16 v0, v17

    #@af
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@b2
    move-result-object v19

    #@b3
    check-cast v19, Lcom/android/internal/os/ProcessCpuTracker$Stats;

    #@b5
    .line 750
    .local v19, "st":Lcom/android/internal/os/ProcessCpuTracker$Stats;
    move-object/from16 v0, v19

    #@b7
    iget-boolean v2, v0, Lcom/android/internal/os/ProcessCpuTracker$Stats;->added:Z

    #@b9
    if-eqz v2, :cond_3

    #@bb
    const-string/jumbo v4, " +"

    #@be
    .line 751
    :goto_3
    move-object/from16 v0, v19

    #@c0
    iget v5, v0, Lcom/android/internal/os/ProcessCpuTracker$Stats;->pid:I

    #@c2
    move-object/from16 v0, v19

    #@c4
    iget-object v6, v0, Lcom/android/internal/os/ProcessCpuTracker$Stats;->name:Ljava/lang/String;

    #@c6
    move-object/from16 v0, v19

    #@c8
    iget-wide v8, v0, Lcom/android/internal/os/ProcessCpuTracker$Stats;->rel_uptime:J

    #@ca
    long-to-int v7, v8

    #@cb
    .line 752
    move-object/from16 v0, v19

    #@cd
    iget v8, v0, Lcom/android/internal/os/ProcessCpuTracker$Stats;->rel_utime:I

    #@cf
    move-object/from16 v0, v19

    #@d1
    iget v9, v0, Lcom/android/internal/os/ProcessCpuTracker$Stats;->rel_stime:I

    #@d3
    move-object/from16 v0, v19

    #@d5
    iget v13, v0, Lcom/android/internal/os/ProcessCpuTracker$Stats;->rel_minfaults:I

    #@d7
    move-object/from16 v0, v19

    #@d9
    iget v14, v0, Lcom/android/internal/os/ProcessCpuTracker$Stats;->rel_majfaults:I

    #@db
    const/4 v10, 0x0

    #@dc
    const/4 v11, 0x0

    #@dd
    const/4 v12, 0x0

    #@de
    move-object/from16 v2, p0

    #@e0
    .line 750
    invoke-direct/range {v2 .. v14}, Lcom/android/internal/os/ProcessCpuTracker;->printProcessCPU(Ljava/io/PrintWriter;Ljava/lang/String;ILjava/lang/String;IIIIIIII)V

    #@e3
    .line 753
    move-object/from16 v0, v19

    #@e5
    iget-boolean v2, v0, Lcom/android/internal/os/ProcessCpuTracker$Stats;->removed:Z

    #@e7
    if-nez v2, :cond_7

    #@e9
    move-object/from16 v0, v19

    #@eb
    iget-object v2, v0, Lcom/android/internal/os/ProcessCpuTracker$Stats;->workingThreads:Ljava/util/ArrayList;

    #@ed
    if-eqz v2, :cond_7

    #@ef
    .line 754
    move-object/from16 v0, v19

    #@f1
    iget-object v2, v0, Lcom/android/internal/os/ProcessCpuTracker$Stats;->workingThreads:Ljava/util/ArrayList;

    #@f3
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    #@f6
    move-result v15

    #@f7
    .line 755
    .local v15, "M":I
    const/16 v18, 0x0

    #@f9
    .local v18, "j":I
    :goto_4
    move/from16 v0, v18

    #@fb
    if-ge v0, v15, :cond_7

    #@fd
    .line 756
    move-object/from16 v0, v19

    #@ff
    iget-object v2, v0, Lcom/android/internal/os/ProcessCpuTracker$Stats;->workingThreads:Ljava/util/ArrayList;

    #@101
    move/from16 v0, v18

    #@103
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@106
    move-result-object v28

    #@107
    check-cast v28, Lcom/android/internal/os/ProcessCpuTracker$Stats;

    #@109
    .line 758
    .local v28, "tst":Lcom/android/internal/os/ProcessCpuTracker$Stats;
    move-object/from16 v0, v28

    #@10b
    iget-boolean v2, v0, Lcom/android/internal/os/ProcessCpuTracker$Stats;->added:Z

    #@10d
    if-eqz v2, :cond_5

    #@10f
    const-string/jumbo v4, "   +"

    #@112
    .line 759
    :goto_5
    move-object/from16 v0, v28

    #@114
    iget v5, v0, Lcom/android/internal/os/ProcessCpuTracker$Stats;->pid:I

    #@116
    move-object/from16 v0, v28

    #@118
    iget-object v6, v0, Lcom/android/internal/os/ProcessCpuTracker$Stats;->name:Ljava/lang/String;

    #@11a
    move-object/from16 v0, v19

    #@11c
    iget-wide v8, v0, Lcom/android/internal/os/ProcessCpuTracker$Stats;->rel_uptime:J

    #@11e
    long-to-int v7, v8

    #@11f
    .line 760
    move-object/from16 v0, v28

    #@121
    iget v8, v0, Lcom/android/internal/os/ProcessCpuTracker$Stats;->rel_utime:I

    #@123
    move-object/from16 v0, v28

    #@125
    iget v9, v0, Lcom/android/internal/os/ProcessCpuTracker$Stats;->rel_stime:I

    #@127
    const/4 v10, 0x0

    #@128
    const/4 v11, 0x0

    #@129
    const/4 v12, 0x0

    #@12a
    const/4 v13, 0x0

    #@12b
    const/4 v14, 0x0

    #@12c
    move-object/from16 v2, p0

    #@12e
    .line 757
    invoke-direct/range {v2 .. v14}, Lcom/android/internal/os/ProcessCpuTracker;->printProcessCPU(Ljava/io/PrintWriter;Ljava/lang/String;ILjava/lang/String;IIIIIIII)V

    #@131
    .line 755
    add-int/lit8 v18, v18, 0x1

    #@133
    goto :goto_4

    #@134
    .line 725
    .end local v15    # "M":I
    .end local v16    # "N":I
    .end local v17    # "i":I
    .end local v18    # "j":I
    .end local v19    # "st":Lcom/android/internal/os/ProcessCpuTracker$Stats;
    .end local v20    # "percAwake":J
    .end local v22    # "sampleRealTime":J
    .end local v24    # "sampleTime":J
    .end local v27    # "totalTime":I
    .end local v28    # "tst":Lcom/android/internal/os/ProcessCpuTracker$Stats;
    :cond_1
    move-object/from16 v0, p0

    #@136
    iget-wide v4, v0, Lcom/android/internal/os/ProcessCpuTracker;->mLastSampleTime:J

    #@138
    sub-long v4, v4, p1

    #@13a
    invoke-virtual {v3, v4, v5}, Ljava/io/PrintWriter;->print(J)V

    #@13d
    .line 726
    const-string/jumbo v2, "ms to "

    #@140
    invoke-virtual {v3, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@143
    .line 727
    move-object/from16 v0, p0

    #@145
    iget-wide v4, v0, Lcom/android/internal/os/ProcessCpuTracker;->mCurrentSampleTime:J

    #@147
    sub-long v4, v4, p1

    #@149
    invoke-virtual {v3, v4, v5}, Ljava/io/PrintWriter;->print(J)V

    #@14c
    .line 728
    const-string/jumbo v2, "ms later"

    #@14f
    invoke-virtual {v3, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@152
    goto/16 :goto_0

    #@154
    .line 733
    .restart local v22    # "sampleRealTime":J
    .restart local v24    # "sampleTime":J
    :cond_2
    const-wide/16 v20, 0x0

    #@156
    .restart local v20    # "percAwake":J
    goto/16 :goto_1

    #@158
    .line 750
    .restart local v16    # "N":I
    .restart local v17    # "i":I
    .restart local v19    # "st":Lcom/android/internal/os/ProcessCpuTracker$Stats;
    .restart local v27    # "totalTime":I
    :cond_3
    move-object/from16 v0, v19

    #@15a
    iget-boolean v2, v0, Lcom/android/internal/os/ProcessCpuTracker$Stats;->removed:Z

    #@15c
    if-eqz v2, :cond_4

    #@15e
    const-string/jumbo v4, " -"

    #@161
    goto/16 :goto_3

    #@163
    :cond_4
    const-string/jumbo v4, "  "

    #@166
    goto/16 :goto_3

    #@168
    .line 758
    .restart local v15    # "M":I
    .restart local v18    # "j":I
    .restart local v28    # "tst":Lcom/android/internal/os/ProcessCpuTracker$Stats;
    :cond_5
    move-object/from16 v0, v28

    #@16a
    iget-boolean v2, v0, Lcom/android/internal/os/ProcessCpuTracker$Stats;->removed:Z

    #@16c
    if-eqz v2, :cond_6

    #@16e
    const-string/jumbo v4, "   -"

    #@171
    goto :goto_5

    #@172
    :cond_6
    const-string/jumbo v4, "    "

    #@175
    goto :goto_5

    #@176
    .line 748
    .end local v15    # "M":I
    .end local v18    # "j":I
    .end local v28    # "tst":Lcom/android/internal/os/ProcessCpuTracker$Stats;
    :cond_7
    add-int/lit8 v17, v17, 0x1

    #@178
    goto/16 :goto_2

    #@17a
    .line 765
    .end local v19    # "st":Lcom/android/internal/os/ProcessCpuTracker$Stats;
    :cond_8
    const-string/jumbo v4, ""

    #@17d
    const-string/jumbo v6, "TOTAL"

    #@180
    move-object/from16 v0, p0

    #@182
    iget v8, v0, Lcom/android/internal/os/ProcessCpuTracker;->mRelUserTime:I

    #@184
    move-object/from16 v0, p0

    #@186
    iget v9, v0, Lcom/android/internal/os/ProcessCpuTracker;->mRelSystemTime:I

    #@188
    .line 766
    move-object/from16 v0, p0

    #@18a
    iget v10, v0, Lcom/android/internal/os/ProcessCpuTracker;->mRelIoWaitTime:I

    #@18c
    move-object/from16 v0, p0

    #@18e
    iget v11, v0, Lcom/android/internal/os/ProcessCpuTracker;->mRelIrqTime:I

    #@190
    move-object/from16 v0, p0

    #@192
    iget v12, v0, Lcom/android/internal/os/ProcessCpuTracker;->mRelSoftIrqTime:I

    #@194
    .line 765
    const/4 v5, -0x1

    #@195
    .line 766
    const/4 v13, 0x0

    #@196
    const/4 v14, 0x0

    #@197
    move-object/from16 v2, p0

    #@199
    move/from16 v7, v27

    #@19b
    .line 765
    invoke-direct/range {v2 .. v14}, Lcom/android/internal/os/ProcessCpuTracker;->printProcessCPU(Ljava/io/PrintWriter;Ljava/lang/String;ILjava/lang/String;IIIIIIII)V

    #@19e
    .line 768
    invoke-virtual {v3}, Ljava/io/PrintWriter;->flush()V

    #@1a1
    .line 769
    invoke-virtual/range {v26 .. v26}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    #@1a4
    move-result-object v2

    #@1a5
    return-object v2
.end method

.method public update()V
    .locals 32

    #@0
    .prologue
    .line 306
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    #@3
    move-result-wide v22

    #@4
    .line 307
    .local v22, "nowUptime":J
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    #@7
    move-result-wide v20

    #@8
    .line 309
    .local v20, "nowRealtime":J
    move-object/from16 v0, p0

    #@a
    iget-object v0, v0, Lcom/android/internal/os/ProcessCpuTracker;->mSystemCpuData:[J

    #@c
    move-object/from16 v25, v0

    #@e
    .line 310
    .local v25, "sysCpu":[J
    const-string/jumbo v4, "/proc/stat"

    #@11
    sget-object v5, Lcom/android/internal/os/ProcessCpuTracker;->SYSTEM_CPU_FORMAT:[I

    #@13
    .line 311
    const/4 v6, 0x0

    #@14
    const/4 v7, 0x0

    #@15
    .line 310
    move-object/from16 v0, v25

    #@17
    invoke-static {v4, v5, v6, v0, v7}, Landroid/os/Process;->readProcFile(Ljava/lang/String;[I[Ljava/lang/String;[J[F)Z

    #@1a
    move-result v4

    #@1b
    if-eqz v4, :cond_0

    #@1d
    .line 313
    const/4 v4, 0x0

    #@1e
    aget-wide v4, v25, v4

    #@20
    const/4 v6, 0x1

    #@21
    aget-wide v6, v25, v6

    #@23
    add-long/2addr v4, v6

    #@24
    move-object/from16 v0, p0

    #@26
    iget-wide v6, v0, Lcom/android/internal/os/ProcessCpuTracker;->mJiffyMillis:J

    #@28
    mul-long v30, v4, v6

    #@2a
    .line 315
    .local v30, "usertime":J
    const/4 v4, 0x2

    #@2b
    aget-wide v4, v25, v4

    #@2d
    move-object/from16 v0, p0

    #@2f
    iget-wide v6, v0, Lcom/android/internal/os/ProcessCpuTracker;->mJiffyMillis:J

    #@31
    mul-long v28, v4, v6

    #@33
    .line 317
    .local v28, "systemtime":J
    const/4 v4, 0x3

    #@34
    aget-wide v4, v25, v4

    #@36
    move-object/from16 v0, p0

    #@38
    iget-wide v6, v0, Lcom/android/internal/os/ProcessCpuTracker;->mJiffyMillis:J

    #@3a
    mul-long v10, v4, v6

    #@3c
    .line 319
    .local v10, "idletime":J
    const/4 v4, 0x4

    #@3d
    aget-wide v4, v25, v4

    #@3f
    move-object/from16 v0, p0

    #@41
    iget-wide v6, v0, Lcom/android/internal/os/ProcessCpuTracker;->mJiffyMillis:J

    #@43
    mul-long v12, v4, v6

    #@45
    .line 320
    .local v12, "iowaittime":J
    const/4 v4, 0x5

    #@46
    aget-wide v4, v25, v4

    #@48
    move-object/from16 v0, p0

    #@4a
    iget-wide v6, v0, Lcom/android/internal/os/ProcessCpuTracker;->mJiffyMillis:J

    #@4c
    mul-long v14, v4, v6

    #@4e
    .line 321
    .local v14, "irqtime":J
    const/4 v4, 0x6

    #@4f
    aget-wide v4, v25, v4

    #@51
    move-object/from16 v0, p0

    #@53
    iget-wide v6, v0, Lcom/android/internal/os/ProcessCpuTracker;->mJiffyMillis:J

    #@55
    mul-long v26, v4, v6

    #@57
    .line 328
    .local v26, "softirqtime":J
    move-object/from16 v0, p0

    #@59
    iget-wide v4, v0, Lcom/android/internal/os/ProcessCpuTracker;->mBaseUserTime:J

    #@5b
    sub-long v4, v30, v4

    #@5d
    long-to-int v4, v4

    #@5e
    move-object/from16 v0, p0

    #@60
    iput v4, v0, Lcom/android/internal/os/ProcessCpuTracker;->mRelUserTime:I

    #@62
    .line 329
    move-object/from16 v0, p0

    #@64
    iget-wide v4, v0, Lcom/android/internal/os/ProcessCpuTracker;->mBaseSystemTime:J

    #@66
    sub-long v4, v28, v4

    #@68
    long-to-int v4, v4

    #@69
    move-object/from16 v0, p0

    #@6b
    iput v4, v0, Lcom/android/internal/os/ProcessCpuTracker;->mRelSystemTime:I

    #@6d
    .line 330
    move-object/from16 v0, p0

    #@6f
    iget-wide v4, v0, Lcom/android/internal/os/ProcessCpuTracker;->mBaseIoWaitTime:J

    #@71
    sub-long v4, v12, v4

    #@73
    long-to-int v4, v4

    #@74
    move-object/from16 v0, p0

    #@76
    iput v4, v0, Lcom/android/internal/os/ProcessCpuTracker;->mRelIoWaitTime:I

    #@78
    .line 331
    move-object/from16 v0, p0

    #@7a
    iget-wide v4, v0, Lcom/android/internal/os/ProcessCpuTracker;->mBaseIrqTime:J

    #@7c
    sub-long v4, v14, v4

    #@7e
    long-to-int v4, v4

    #@7f
    move-object/from16 v0, p0

    #@81
    iput v4, v0, Lcom/android/internal/os/ProcessCpuTracker;->mRelIrqTime:I

    #@83
    .line 332
    move-object/from16 v0, p0

    #@85
    iget-wide v4, v0, Lcom/android/internal/os/ProcessCpuTracker;->mBaseSoftIrqTime:J

    #@87
    sub-long v4, v26, v4

    #@89
    long-to-int v4, v4

    #@8a
    move-object/from16 v0, p0

    #@8c
    iput v4, v0, Lcom/android/internal/os/ProcessCpuTracker;->mRelSoftIrqTime:I

    #@8e
    .line 333
    move-object/from16 v0, p0

    #@90
    iget-wide v4, v0, Lcom/android/internal/os/ProcessCpuTracker;->mBaseIdleTime:J

    #@92
    sub-long v4, v10, v4

    #@94
    long-to-int v4, v4

    #@95
    move-object/from16 v0, p0

    #@97
    iput v4, v0, Lcom/android/internal/os/ProcessCpuTracker;->mRelIdleTime:I

    #@99
    .line 334
    const/4 v4, 0x1

    #@9a
    move-object/from16 v0, p0

    #@9c
    iput-boolean v4, v0, Lcom/android/internal/os/ProcessCpuTracker;->mRelStatsAreGood:Z

    #@9e
    .line 346
    move-wide/from16 v0, v30

    #@a0
    move-object/from16 v2, p0

    #@a2
    iput-wide v0, v2, Lcom/android/internal/os/ProcessCpuTracker;->mBaseUserTime:J

    #@a4
    .line 347
    move-wide/from16 v0, v28

    #@a6
    move-object/from16 v2, p0

    #@a8
    iput-wide v0, v2, Lcom/android/internal/os/ProcessCpuTracker;->mBaseSystemTime:J

    #@aa
    .line 348
    move-object/from16 v0, p0

    #@ac
    iput-wide v12, v0, Lcom/android/internal/os/ProcessCpuTracker;->mBaseIoWaitTime:J

    #@ae
    .line 349
    move-object/from16 v0, p0

    #@b0
    iput-wide v14, v0, Lcom/android/internal/os/ProcessCpuTracker;->mBaseIrqTime:J

    #@b2
    .line 350
    move-wide/from16 v0, v26

    #@b4
    move-object/from16 v2, p0

    #@b6
    iput-wide v0, v2, Lcom/android/internal/os/ProcessCpuTracker;->mBaseSoftIrqTime:J

    #@b8
    .line 351
    move-object/from16 v0, p0

    #@ba
    iput-wide v10, v0, Lcom/android/internal/os/ProcessCpuTracker;->mBaseIdleTime:J

    #@bc
    .line 366
    .end local v10    # "idletime":J
    .end local v12    # "iowaittime":J
    .end local v14    # "irqtime":J
    .end local v26    # "softirqtime":J
    .end local v28    # "systemtime":J
    .end local v30    # "usertime":J
    :cond_0
    move-object/from16 v0, p0

    #@be
    iget-wide v4, v0, Lcom/android/internal/os/ProcessCpuTracker;->mCurrentSampleTime:J

    #@c0
    move-object/from16 v0, p0

    #@c2
    iput-wide v4, v0, Lcom/android/internal/os/ProcessCpuTracker;->mLastSampleTime:J

    #@c4
    .line 367
    move-wide/from16 v0, v22

    #@c6
    move-object/from16 v2, p0

    #@c8
    iput-wide v0, v2, Lcom/android/internal/os/ProcessCpuTracker;->mCurrentSampleTime:J

    #@ca
    .line 368
    move-object/from16 v0, p0

    #@cc
    iget-wide v4, v0, Lcom/android/internal/os/ProcessCpuTracker;->mCurrentSampleRealTime:J

    #@ce
    move-object/from16 v0, p0

    #@d0
    iput-wide v4, v0, Lcom/android/internal/os/ProcessCpuTracker;->mLastSampleRealTime:J

    #@d2
    .line 369
    move-wide/from16 v0, v20

    #@d4
    move-object/from16 v2, p0

    #@d6
    iput-wide v0, v2, Lcom/android/internal/os/ProcessCpuTracker;->mCurrentSampleRealTime:J

    #@d8
    .line 371
    invoke-static {}, Landroid/os/StrictMode;->allowThreadDiskReads()Landroid/os/StrictMode$ThreadPolicy;

    #@db
    move-result-object v24

    #@dc
    .line 373
    .local v24, "savedPolicy":Landroid/os/StrictMode$ThreadPolicy;
    :try_start_0
    const-string/jumbo v5, "/proc"

    #@df
    move-object/from16 v0, p0

    #@e1
    iget-boolean v7, v0, Lcom/android/internal/os/ProcessCpuTracker;->mFirst:Z

    #@e3
    move-object/from16 v0, p0

    #@e5
    iget-object v8, v0, Lcom/android/internal/os/ProcessCpuTracker;->mCurPids:[I

    #@e7
    move-object/from16 v0, p0

    #@e9
    iget-object v9, v0, Lcom/android/internal/os/ProcessCpuTracker;->mProcStats:Ljava/util/ArrayList;

    #@eb
    const/4 v6, -0x1

    #@ec
    move-object/from16 v4, p0

    #@ee
    invoke-direct/range {v4 .. v9}, Lcom/android/internal/os/ProcessCpuTracker;->collectStats(Ljava/lang/String;IZ[ILjava/util/ArrayList;)[I

    #@f1
    move-result-object v4

    #@f2
    move-object/from16 v0, p0

    #@f4
    iput-object v4, v0, Lcom/android/internal/os/ProcessCpuTracker;->mCurPids:[I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@f6
    .line 375
    invoke-static/range {v24 .. v24}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    #@f9
    .line 378
    move-object/from16 v0, p0

    #@fb
    iget-object v0, v0, Lcom/android/internal/os/ProcessCpuTracker;->mLoadAverageData:[F

    #@fd
    move-object/from16 v19, v0

    #@ff
    .line 379
    .local v19, "loadAverages":[F
    const-string/jumbo v4, "/proc/loadavg"

    #@102
    sget-object v5, Lcom/android/internal/os/ProcessCpuTracker;->LOAD_AVERAGE_FORMAT:[I

    #@104
    .line 380
    const/4 v6, 0x0

    #@105
    const/4 v7, 0x0

    #@106
    .line 379
    move-object/from16 v0, v19

    #@108
    invoke-static {v4, v5, v6, v7, v0}, Landroid/os/Process;->readProcFile(Ljava/lang/String;[I[Ljava/lang/String;[J[F)Z

    #@10b
    move-result v4

    #@10c
    if-eqz v4, :cond_2

    #@10e
    .line 381
    const/4 v4, 0x0

    #@10f
    aget v16, v19, v4

    #@111
    .line 382
    .local v16, "load1":F
    const/4 v4, 0x1

    #@112
    aget v18, v19, v4

    #@114
    .line 383
    .local v18, "load5":F
    const/4 v4, 0x2

    #@115
    aget v17, v19, v4

    #@117
    .line 384
    .local v17, "load15":F
    move-object/from16 v0, p0

    #@119
    iget v4, v0, Lcom/android/internal/os/ProcessCpuTracker;->mLoad1:F

    #@11b
    cmpl-float v4, v16, v4

    #@11d
    if-nez v4, :cond_1

    #@11f
    move-object/from16 v0, p0

    #@121
    iget v4, v0, Lcom/android/internal/os/ProcessCpuTracker;->mLoad5:F

    #@123
    cmpl-float v4, v18, v4

    #@125
    if-eqz v4, :cond_3

    #@127
    .line 385
    :cond_1
    :goto_0
    move/from16 v0, v16

    #@129
    move-object/from16 v1, p0

    #@12b
    iput v0, v1, Lcom/android/internal/os/ProcessCpuTracker;->mLoad1:F

    #@12d
    .line 386
    move/from16 v0, v18

    #@12f
    move-object/from16 v1, p0

    #@131
    iput v0, v1, Lcom/android/internal/os/ProcessCpuTracker;->mLoad5:F

    #@133
    .line 387
    move/from16 v0, v17

    #@135
    move-object/from16 v1, p0

    #@137
    iput v0, v1, Lcom/android/internal/os/ProcessCpuTracker;->mLoad15:F

    #@139
    .line 388
    move-object/from16 v0, p0

    #@13b
    move/from16 v1, v16

    #@13d
    move/from16 v2, v18

    #@13f
    move/from16 v3, v17

    #@141
    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/os/ProcessCpuTracker;->onLoadChanged(FFF)V

    #@144
    .line 395
    .end local v16    # "load1":F
    .end local v17    # "load15":F
    .end local v18    # "load5":F
    :cond_2
    const/4 v4, 0x0

    #@145
    move-object/from16 v0, p0

    #@147
    iput-boolean v4, v0, Lcom/android/internal/os/ProcessCpuTracker;->mWorkingProcsSorted:Z

    #@149
    .line 396
    const/4 v4, 0x0

    #@14a
    move-object/from16 v0, p0

    #@14c
    iput-boolean v4, v0, Lcom/android/internal/os/ProcessCpuTracker;->mFirst:Z

    #@14e
    .line 303
    return-void

    #@14f
    .line 374
    .end local v19    # "loadAverages":[F
    :catchall_0
    move-exception v4

    #@150
    .line 375
    invoke-static/range {v24 .. v24}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    #@153
    .line 374
    throw v4

    #@154
    .line 384
    .restart local v16    # "load1":F
    .restart local v17    # "load15":F
    .restart local v18    # "load5":F
    .restart local v19    # "loadAverages":[F
    :cond_3
    move-object/from16 v0, p0

    #@156
    iget v4, v0, Lcom/android/internal/os/ProcessCpuTracker;->mLoad15:F

    #@158
    cmpl-float v4, v17, v4

    #@15a
    if-eqz v4, :cond_2

    #@15c
    goto :goto_0
.end method
