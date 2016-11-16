.class public final Lcom/android/internal/app/procstats/ServiceState;
.super Ljava/lang/Object;
.source "ServiceState.java"


# static fields
.field private static final DEBUG:Z = false

.field public static final SERVICE_BOUND:I = 0x2

.field public static final SERVICE_COUNT:I = 0x4

.field public static final SERVICE_EXEC:I = 0x3

.field public static final SERVICE_RUN:I = 0x0

.field public static final SERVICE_STARTED:I = 0x1

.field private static final TAG:Ljava/lang/String; = "ProcessStats"


# instance fields
.field private mBoundCount:I

.field private mBoundStartTime:J

.field private mBoundState:I

.field private final mDurations:Lcom/android/internal/app/procstats/DurationsTable;

.field private mExecCount:I

.field private mExecStartTime:J

.field private mExecState:I

.field private final mName:Ljava/lang/String;

.field private mOwner:Ljava/lang/Object;

.field private final mPackage:Ljava/lang/String;

.field private mProc:Lcom/android/internal/app/procstats/ProcessState;

.field private final mProcessName:Ljava/lang/String;

.field private mRestarting:Z

.field private mRunCount:I

.field private mRunStartTime:J

.field private mRunState:I

.field private mStarted:Z

.field private mStartedCount:I

.field private mStartedStartTime:J

.field private mStartedState:I


# direct methods
.method public constructor <init>(Lcom/android/internal/app/procstats/ProcessStats;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/app/procstats/ProcessState;)V
    .locals 2
    .param p1, "processStats"    # Lcom/android/internal/app/procstats/ProcessStats;
    .param p2, "pkg"    # Ljava/lang/String;
    .param p3, "name"    # Ljava/lang/String;
    .param p4, "processName"    # Ljava/lang/String;
    .param p5, "proc"    # Lcom/android/internal/app/procstats/ProcessState;

    #@0
    .prologue
    const/4 v0, -0x1

    #@1
    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@4
    .line 65
    iput v0, p0, Lcom/android/internal/app/procstats/ServiceState;->mRunState:I

    #@6
    .line 71
    iput v0, p0, Lcom/android/internal/app/procstats/ServiceState;->mStartedState:I

    #@8
    .line 75
    iput v0, p0, Lcom/android/internal/app/procstats/ServiceState;->mBoundState:I

    #@a
    .line 79
    iput v0, p0, Lcom/android/internal/app/procstats/ServiceState;->mExecState:I

    #@c
    .line 84
    iput-object p2, p0, Lcom/android/internal/app/procstats/ServiceState;->mPackage:Ljava/lang/String;

    #@e
    .line 85
    iput-object p3, p0, Lcom/android/internal/app/procstats/ServiceState;->mName:Ljava/lang/String;

    #@10
    .line 86
    iput-object p4, p0, Lcom/android/internal/app/procstats/ServiceState;->mProcessName:Ljava/lang/String;

    #@12
    .line 87
    iput-object p5, p0, Lcom/android/internal/app/procstats/ServiceState;->mProc:Lcom/android/internal/app/procstats/ProcessState;

    #@14
    .line 88
    new-instance v0, Lcom/android/internal/app/procstats/DurationsTable;

    #@16
    iget-object v1, p1, Lcom/android/internal/app/procstats/ProcessStats;->mTableData:Lcom/android/internal/app/procstats/SparseMappingTable;

    #@18
    invoke-direct {v0, v1}, Lcom/android/internal/app/procstats/DurationsTable;-><init>(Lcom/android/internal/app/procstats/SparseMappingTable;)V

    #@1b
    iput-object v0, p0, Lcom/android/internal/app/procstats/ServiceState;->mDurations:Lcom/android/internal/app/procstats/DurationsTable;

    #@1d
    .line 83
    return-void
.end method

.method private dumpStats(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIJJJZ)V
    .locals 15
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "prefix"    # Ljava/lang/String;
    .param p3, "prefixInner"    # Ljava/lang/String;
    .param p4, "headerPrefix"    # Ljava/lang/String;
    .param p5, "header"    # Ljava/lang/String;
    .param p6, "count"    # I
    .param p7, "serviceType"    # I
    .param p8, "state"    # I
    .param p9, "startTime"    # J
    .param p11, "now"    # J
    .param p13, "totalTime"    # J
    .param p15, "dumpAll"    # Z

    #@0
    .prologue
    .line 390
    if-eqz p6, :cond_0

    #@2
    .line 391
    if-eqz p15, :cond_1

    #@4
    .line 392
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@7
    move-object/from16 v0, p1

    #@9
    move-object/from16 v1, p5

    #@b
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@e
    .line 393
    const-string/jumbo v2, " op count "

    #@11
    move-object/from16 v0, p1

    #@13
    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@16
    move-object/from16 v0, p1

    #@18
    move/from16 v1, p6

    #@1a
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(I)V

    #@1d
    const-string/jumbo v2, ":"

    #@20
    move-object/from16 v0, p1

    #@22
    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@25
    move-object v3, p0

    #@26
    move-object/from16 v4, p1

    #@28
    move-object/from16 v5, p3

    #@2a
    move/from16 v6, p7

    #@2c
    move/from16 v7, p8

    #@2e
    move-wide/from16 v8, p9

    #@30
    move-wide/from16 v10, p11

    #@32
    .line 394
    invoke-virtual/range {v3 .. v11}, Lcom/android/internal/app/procstats/ServiceState;->dumpTime(Ljava/io/PrintWriter;Ljava/lang/String;IIJJ)J

    #@35
    .line 389
    :cond_0
    :goto_0
    return-void

    #@36
    .line 396
    :cond_1
    const/4 v4, 0x0

    #@37
    const/4 v5, 0x0

    #@38
    move-object v3, p0

    #@39
    move/from16 v6, p7

    #@3b
    move/from16 v7, p8

    #@3d
    move-wide/from16 v8, p9

    #@3f
    move-wide/from16 v10, p11

    #@41
    invoke-virtual/range {v3 .. v11}, Lcom/android/internal/app/procstats/ServiceState;->dumpTime(Ljava/io/PrintWriter;Ljava/lang/String;IIJJ)J

    #@44
    move-result-wide v12

    #@45
    .line 397
    .local v12, "myTime":J
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@48
    move-object/from16 v0, p1

    #@4a
    move-object/from16 v1, p4

    #@4c
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@4f
    move-object/from16 v0, p1

    #@51
    move-object/from16 v1, p5

    #@53
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@56
    .line 398
    const-string/jumbo v2, " count "

    #@59
    move-object/from16 v0, p1

    #@5b
    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@5e
    move-object/from16 v0, p1

    #@60
    move/from16 v1, p6

    #@62
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(I)V

    #@65
    .line 399
    const-string/jumbo v2, " / time "

    #@68
    move-object/from16 v0, p1

    #@6a
    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@6d
    .line 400
    long-to-double v2, v12

    #@6e
    move-wide/from16 v0, p13

    #@70
    long-to-double v4, v0

    #@71
    div-double/2addr v2, v4

    #@72
    move-object/from16 v0, p1

    #@74
    invoke-static {v0, v2, v3}, Lcom/android/internal/app/procstats/DumpUtils;->printPercent(Ljava/io/PrintWriter;D)V

    #@77
    .line 401
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    #@7a
    goto :goto_0
.end method

.method private dumpTimeCheckin(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;IIIJJ)V
    .locals 12
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "label"    # Ljava/lang/String;
    .param p3, "packageName"    # Ljava/lang/String;
    .param p4, "uid"    # I
    .param p5, "vers"    # I
    .param p6, "serviceName"    # Ljava/lang/String;
    .param p7, "serviceType"    # I
    .param p8, "opCount"    # I
    .param p9, "curState"    # I
    .param p10, "curStartTime"    # J
    .param p12, "now"    # J

    #@0
    .prologue
    .line 459
    if-gtz p8, :cond_0

    #@2
    .line 460
    return-void

    #@3
    .line 462
    :cond_0
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@6
    .line 463
    const-string/jumbo v10, ","

    #@9
    invoke-virtual {p1, v10}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@c
    .line 464
    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@f
    .line 465
    const-string/jumbo v10, ","

    #@12
    invoke-virtual {p1, v10}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@15
    .line 466
    move/from16 v0, p4

    #@17
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    #@1a
    .line 467
    const-string/jumbo v10, ","

    #@1d
    invoke-virtual {p1, v10}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@20
    .line 468
    move/from16 v0, p5

    #@22
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    #@25
    .line 469
    const-string/jumbo v10, ","

    #@28
    invoke-virtual {p1, v10}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@2b
    .line 470
    move-object/from16 v0, p6

    #@2d
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@30
    .line 471
    const-string/jumbo v10, ","

    #@33
    invoke-virtual {p1, v10}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@36
    .line 472
    move/from16 v0, p8

    #@38
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    #@3b
    .line 473
    const/4 v3, 0x0

    #@3c
    .line 474
    .local v3, "didCurState":Z
    iget-object v10, p0, Lcom/android/internal/app/procstats/ServiceState;->mDurations:Lcom/android/internal/app/procstats/DurationsTable;

    #@3e
    invoke-virtual {v10}, Lcom/android/internal/app/procstats/DurationsTable;->getKeyCount()I

    #@41
    move-result v2

    #@42
    .line 475
    .local v2, "N":I
    const/4 v4, 0x0

    #@43
    .local v4, "i":I
    :goto_0
    if-ge v4, v2, :cond_3

    #@45
    .line 476
    iget-object v10, p0, Lcom/android/internal/app/procstats/ServiceState;->mDurations:Lcom/android/internal/app/procstats/DurationsTable;

    #@47
    invoke-virtual {v10, v4}, Lcom/android/internal/app/procstats/DurationsTable;->getKeyAt(I)I

    #@4a
    move-result v5

    #@4b
    .line 477
    .local v5, "key":I
    iget-object v10, p0, Lcom/android/internal/app/procstats/ServiceState;->mDurations:Lcom/android/internal/app/procstats/DurationsTable;

    #@4d
    invoke-virtual {v10, v5}, Lcom/android/internal/app/procstats/DurationsTable;->getValue(I)J

    #@50
    move-result-wide v8

    #@51
    .line 478
    .local v8, "time":J
    invoke-static {v5}, Lcom/android/internal/app/procstats/SparseMappingTable;->getIdFromKey(I)B

    #@54
    move-result v7

    #@55
    .line 479
    .local v7, "type":I
    div-int/lit8 v6, v7, 0x4

    #@57
    .line 480
    .local v6, "memFactor":I
    rem-int/lit8 v7, v7, 0x4

    #@59
    .line 481
    move/from16 v0, p7

    #@5b
    if-eq v7, v0, :cond_1

    #@5d
    .line 475
    :goto_1
    add-int/lit8 v4, v4, 0x1

    #@5f
    goto :goto_0

    #@60
    .line 484
    :cond_1
    move/from16 v0, p9

    #@62
    if-ne v0, v6, :cond_2

    #@64
    .line 485
    const/4 v3, 0x1

    #@65
    .line 486
    sub-long v10, p12, p10

    #@67
    add-long/2addr v8, v10

    #@68
    .line 488
    :cond_2
    invoke-static {p1, v6, v8, v9}, Lcom/android/internal/app/procstats/DumpUtils;->printAdjTagAndValue(Ljava/io/PrintWriter;IJ)V

    #@6b
    goto :goto_1

    #@6c
    .line 490
    .end local v5    # "key":I
    .end local v6    # "memFactor":I
    .end local v7    # "type":I
    .end local v8    # "time":J
    :cond_3
    if-nez v3, :cond_4

    #@6e
    const/4 v10, -0x1

    #@6f
    move/from16 v0, p9

    #@71
    if-eq v0, v10, :cond_4

    #@73
    .line 491
    sub-long v10, p12, p10

    #@75
    move/from16 v0, p9

    #@77
    invoke-static {p1, v0, v10, v11}, Lcom/android/internal/app/procstats/DumpUtils;->printAdjTagAndValue(Ljava/io/PrintWriter;IJ)V

    #@7a
    .line 493
    :cond_4
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    #@7d
    .line 458
    return-void
.end method

.method private updateRunning(IJ)V
    .locals 6
    .param p1, "memFactor"    # I
    .param p2, "now"    # J

    #@0
    .prologue
    const/4 v2, -0x1

    #@1
    .line 263
    iget v1, p0, Lcom/android/internal/app/procstats/ServiceState;->mStartedState:I

    #@3
    if-ne v1, v2, :cond_0

    #@5
    iget v1, p0, Lcom/android/internal/app/procstats/ServiceState;->mBoundState:I

    #@7
    if-eq v1, v2, :cond_3

    #@9
    .line 264
    :cond_0
    move v0, p1

    #@a
    .line 265
    .local v0, "state":I
    :goto_0
    iget v1, p0, Lcom/android/internal/app/procstats/ServiceState;->mRunState:I

    #@c
    if-eq v1, v0, :cond_2

    #@e
    .line 266
    iget v1, p0, Lcom/android/internal/app/procstats/ServiceState;->mRunState:I

    #@10
    if-eq v1, v2, :cond_4

    #@12
    .line 267
    iget-object v1, p0, Lcom/android/internal/app/procstats/ServiceState;->mDurations:Lcom/android/internal/app/procstats/DurationsTable;

    #@14
    iget v2, p0, Lcom/android/internal/app/procstats/ServiceState;->mRunState:I

    #@16
    mul-int/lit8 v2, v2, 0x4

    #@18
    add-int/lit8 v2, v2, 0x0

    #@1a
    .line 268
    iget-wide v4, p0, Lcom/android/internal/app/procstats/ServiceState;->mRunStartTime:J

    #@1c
    sub-long v4, p2, v4

    #@1e
    .line 267
    invoke-virtual {v1, v2, v4, v5}, Lcom/android/internal/app/procstats/DurationsTable;->addDuration(IJ)V

    #@21
    .line 272
    :cond_1
    :goto_1
    iput v0, p0, Lcom/android/internal/app/procstats/ServiceState;->mRunState:I

    #@23
    .line 273
    iput-wide p2, p0, Lcom/android/internal/app/procstats/ServiceState;->mRunStartTime:J

    #@25
    .line 262
    :cond_2
    return-void

    #@26
    .line 264
    .end local v0    # "state":I
    :cond_3
    iget v1, p0, Lcom/android/internal/app/procstats/ServiceState;->mExecState:I

    #@28
    if-ne v1, v2, :cond_0

    #@2a
    const/4 v0, -0x1

    #@2b
    .restart local v0    # "state":I
    goto :goto_0

    #@2c
    .line 269
    :cond_4
    if-eq v0, v2, :cond_1

    #@2e
    .line 270
    iget v1, p0, Lcom/android/internal/app/procstats/ServiceState;->mRunCount:I

    #@30
    add-int/lit8 v1, v1, 0x1

    #@32
    iput v1, p0, Lcom/android/internal/app/procstats/ServiceState;->mRunCount:I

    #@34
    goto :goto_1
.end method


# virtual methods
.method public add(Lcom/android/internal/app/procstats/ServiceState;)V
    .locals 2
    .param p1, "other"    # Lcom/android/internal/app/procstats/ServiceState;

    #@0
    .prologue
    .line 204
    iget-object v0, p0, Lcom/android/internal/app/procstats/ServiceState;->mDurations:Lcom/android/internal/app/procstats/DurationsTable;

    #@2
    iget-object v1, p1, Lcom/android/internal/app/procstats/ServiceState;->mDurations:Lcom/android/internal/app/procstats/DurationsTable;

    #@4
    invoke-virtual {v0, v1}, Lcom/android/internal/app/procstats/DurationsTable;->addDurations(Lcom/android/internal/app/procstats/DurationsTable;)V

    #@7
    .line 205
    iget v0, p0, Lcom/android/internal/app/procstats/ServiceState;->mRunCount:I

    #@9
    iget v1, p1, Lcom/android/internal/app/procstats/ServiceState;->mRunCount:I

    #@b
    add-int/2addr v0, v1

    #@c
    iput v0, p0, Lcom/android/internal/app/procstats/ServiceState;->mRunCount:I

    #@e
    .line 206
    iget v0, p0, Lcom/android/internal/app/procstats/ServiceState;->mStartedCount:I

    #@10
    iget v1, p1, Lcom/android/internal/app/procstats/ServiceState;->mStartedCount:I

    #@12
    add-int/2addr v0, v1

    #@13
    iput v0, p0, Lcom/android/internal/app/procstats/ServiceState;->mStartedCount:I

    #@15
    .line 207
    iget v0, p0, Lcom/android/internal/app/procstats/ServiceState;->mBoundCount:I

    #@17
    iget v1, p1, Lcom/android/internal/app/procstats/ServiceState;->mBoundCount:I

    #@19
    add-int/2addr v0, v1

    #@1a
    iput v0, p0, Lcom/android/internal/app/procstats/ServiceState;->mBoundCount:I

    #@1c
    .line 208
    iget v0, p0, Lcom/android/internal/app/procstats/ServiceState;->mExecCount:I

    #@1e
    iget v1, p1, Lcom/android/internal/app/procstats/ServiceState;->mExecCount:I

    #@20
    add-int/2addr v0, v1

    #@21
    iput v0, p0, Lcom/android/internal/app/procstats/ServiceState;->mExecCount:I

    #@23
    .line 203
    return-void
.end method

.method public applyNewOwner(Ljava/lang/Object;)V
    .locals 5
    .param p1, "newOwner"    # Ljava/lang/Object;

    #@0
    .prologue
    const/4 v4, -0x1

    #@1
    const/4 v3, 0x0

    #@2
    .line 128
    iget-object v2, p0, Lcom/android/internal/app/procstats/ServiceState;->mOwner:Ljava/lang/Object;

    #@4
    if-eq v2, p1, :cond_0

    #@6
    .line 129
    iget-object v2, p0, Lcom/android/internal/app/procstats/ServiceState;->mOwner:Ljava/lang/Object;

    #@8
    if-nez v2, :cond_1

    #@a
    .line 130
    iput-object p1, p0, Lcom/android/internal/app/procstats/ServiceState;->mOwner:Ljava/lang/Object;

    #@c
    .line 131
    iget-object v2, p0, Lcom/android/internal/app/procstats/ServiceState;->mProc:Lcom/android/internal/app/procstats/ProcessState;

    #@e
    iget-object v3, p0, Lcom/android/internal/app/procstats/ServiceState;->mName:Ljava/lang/String;

    #@10
    invoke-virtual {v2, v3}, Lcom/android/internal/app/procstats/ProcessState;->incActiveServices(Ljava/lang/String;)V

    #@13
    .line 127
    :cond_0
    :goto_0
    return-void

    #@14
    .line 135
    :cond_1
    iput-object p1, p0, Lcom/android/internal/app/procstats/ServiceState;->mOwner:Ljava/lang/Object;

    #@16
    .line 136
    iget-boolean v2, p0, Lcom/android/internal/app/procstats/ServiceState;->mStarted:Z

    #@18
    if-nez v2, :cond_2

    #@1a
    iget v2, p0, Lcom/android/internal/app/procstats/ServiceState;->mBoundState:I

    #@1c
    if-eq v2, v4, :cond_5

    #@1e
    .line 137
    :cond_2
    :goto_1
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    #@21
    move-result-wide v0

    #@22
    .line 138
    .local v0, "now":J
    iget-boolean v2, p0, Lcom/android/internal/app/procstats/ServiceState;->mStarted:Z

    #@24
    if-eqz v2, :cond_3

    #@26
    .line 142
    invoke-virtual {p0, v3, v3, v0, v1}, Lcom/android/internal/app/procstats/ServiceState;->setStarted(ZIJ)V

    #@29
    .line 144
    :cond_3
    iget v2, p0, Lcom/android/internal/app/procstats/ServiceState;->mBoundState:I

    #@2b
    if-eq v2, v4, :cond_4

    #@2d
    .line 148
    invoke-virtual {p0, v3, v3, v0, v1}, Lcom/android/internal/app/procstats/ServiceState;->setBound(ZIJ)V

    #@30
    .line 150
    :cond_4
    iget v2, p0, Lcom/android/internal/app/procstats/ServiceState;->mExecState:I

    #@32
    if-eq v2, v4, :cond_0

    #@34
    .line 154
    invoke-virtual {p0, v3, v3, v0, v1}, Lcom/android/internal/app/procstats/ServiceState;->setExecuting(ZIJ)V

    #@37
    goto :goto_0

    #@38
    .line 136
    .end local v0    # "now":J
    :cond_5
    iget v2, p0, Lcom/android/internal/app/procstats/ServiceState;->mExecState:I

    #@3a
    if-eq v2, v4, :cond_0

    #@3c
    goto :goto_1
.end method

.method public clearCurrentOwner(Ljava/lang/Object;Z)V
    .locals 7
    .param p1, "owner"    # Ljava/lang/Object;
    .param p2, "silently"    # Z

    #@0
    .prologue
    const/4 v6, -0x1

    #@1
    const/4 v5, 0x0

    #@2
    .line 162
    iget-object v2, p0, Lcom/android/internal/app/procstats/ServiceState;->mOwner:Ljava/lang/Object;

    #@4
    if-ne v2, p1, :cond_7

    #@6
    .line 163
    iget-object v2, p0, Lcom/android/internal/app/procstats/ServiceState;->mProc:Lcom/android/internal/app/procstats/ProcessState;

    #@8
    iget-object v3, p0, Lcom/android/internal/app/procstats/ServiceState;->mName:Ljava/lang/String;

    #@a
    invoke-virtual {v2, v3}, Lcom/android/internal/app/procstats/ProcessState;->decActiveServices(Ljava/lang/String;)V

    #@d
    .line 164
    iget-boolean v2, p0, Lcom/android/internal/app/procstats/ServiceState;->mStarted:Z

    #@f
    if-nez v2, :cond_0

    #@11
    iget v2, p0, Lcom/android/internal/app/procstats/ServiceState;->mBoundState:I

    #@13
    if-eq v2, v6, :cond_8

    #@15
    .line 165
    :cond_0
    :goto_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    #@18
    move-result-wide v0

    #@19
    .line 166
    .local v0, "now":J
    iget-boolean v2, p0, Lcom/android/internal/app/procstats/ServiceState;->mStarted:Z

    #@1b
    if-eqz v2, :cond_2

    #@1d
    .line 167
    if-nez p2, :cond_1

    #@1f
    .line 168
    const-string/jumbo v2, "ProcessStats"

    #@22
    new-instance v3, Ljava/lang/StringBuilder;

    #@24
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@27
    const-string/jumbo v4, "Service owner "

    #@2a
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2d
    move-result-object v3

    #@2e
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@31
    move-result-object v3

    #@32
    .line 169
    const-string/jumbo v4, " cleared while started: pkg="

    #@35
    .line 168
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@38
    move-result-object v3

    #@39
    .line 169
    iget-object v4, p0, Lcom/android/internal/app/procstats/ServiceState;->mPackage:Ljava/lang/String;

    #@3b
    .line 168
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3e
    move-result-object v3

    #@3f
    .line 169
    const-string/jumbo v4, " service="

    #@42
    .line 168
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@45
    move-result-object v3

    #@46
    .line 170
    iget-object v4, p0, Lcom/android/internal/app/procstats/ServiceState;->mName:Ljava/lang/String;

    #@48
    .line 168
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4b
    move-result-object v3

    #@4c
    .line 170
    const-string/jumbo v4, " proc="

    #@4f
    .line 168
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@52
    move-result-object v3

    #@53
    .line 170
    iget-object v4, p0, Lcom/android/internal/app/procstats/ServiceState;->mProc:Lcom/android/internal/app/procstats/ProcessState;

    #@55
    .line 168
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@58
    move-result-object v3

    #@59
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@5c
    move-result-object v3

    #@5d
    invoke-static {v2, v3}, Landroid/util/Slog;->wtfStack(Ljava/lang/String;Ljava/lang/String;)I

    #@60
    .line 172
    :cond_1
    invoke-virtual {p0, v5, v5, v0, v1}, Lcom/android/internal/app/procstats/ServiceState;->setStarted(ZIJ)V

    #@63
    .line 174
    :cond_2
    iget v2, p0, Lcom/android/internal/app/procstats/ServiceState;->mBoundState:I

    #@65
    if-eq v2, v6, :cond_4

    #@67
    .line 175
    if-nez p2, :cond_3

    #@69
    .line 176
    const-string/jumbo v2, "ProcessStats"

    #@6c
    new-instance v3, Ljava/lang/StringBuilder;

    #@6e
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@71
    const-string/jumbo v4, "Service owner "

    #@74
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@77
    move-result-object v3

    #@78
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@7b
    move-result-object v3

    #@7c
    .line 177
    const-string/jumbo v4, " cleared while bound: pkg="

    #@7f
    .line 176
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@82
    move-result-object v3

    #@83
    .line 177
    iget-object v4, p0, Lcom/android/internal/app/procstats/ServiceState;->mPackage:Ljava/lang/String;

    #@85
    .line 176
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@88
    move-result-object v3

    #@89
    .line 177
    const-string/jumbo v4, " service="

    #@8c
    .line 176
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@8f
    move-result-object v3

    #@90
    .line 178
    iget-object v4, p0, Lcom/android/internal/app/procstats/ServiceState;->mName:Ljava/lang/String;

    #@92
    .line 176
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@95
    move-result-object v3

    #@96
    .line 178
    const-string/jumbo v4, " proc="

    #@99
    .line 176
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@9c
    move-result-object v3

    #@9d
    .line 178
    iget-object v4, p0, Lcom/android/internal/app/procstats/ServiceState;->mProc:Lcom/android/internal/app/procstats/ProcessState;

    #@9f
    .line 176
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@a2
    move-result-object v3

    #@a3
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@a6
    move-result-object v3

    #@a7
    invoke-static {v2, v3}, Landroid/util/Slog;->wtfStack(Ljava/lang/String;Ljava/lang/String;)I

    #@aa
    .line 180
    :cond_3
    invoke-virtual {p0, v5, v5, v0, v1}, Lcom/android/internal/app/procstats/ServiceState;->setBound(ZIJ)V

    #@ad
    .line 182
    :cond_4
    iget v2, p0, Lcom/android/internal/app/procstats/ServiceState;->mExecState:I

    #@af
    if-eq v2, v6, :cond_6

    #@b1
    .line 183
    if-nez p2, :cond_5

    #@b3
    .line 184
    const-string/jumbo v2, "ProcessStats"

    #@b6
    new-instance v3, Ljava/lang/StringBuilder;

    #@b8
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@bb
    const-string/jumbo v4, "Service owner "

    #@be
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@c1
    move-result-object v3

    #@c2
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@c5
    move-result-object v3

    #@c6
    .line 185
    const-string/jumbo v4, " cleared while exec: pkg="

    #@c9
    .line 184
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@cc
    move-result-object v3

    #@cd
    .line 185
    iget-object v4, p0, Lcom/android/internal/app/procstats/ServiceState;->mPackage:Ljava/lang/String;

    #@cf
    .line 184
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@d2
    move-result-object v3

    #@d3
    .line 185
    const-string/jumbo v4, " service="

    #@d6
    .line 184
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@d9
    move-result-object v3

    #@da
    .line 186
    iget-object v4, p0, Lcom/android/internal/app/procstats/ServiceState;->mName:Ljava/lang/String;

    #@dc
    .line 184
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@df
    move-result-object v3

    #@e0
    .line 186
    const-string/jumbo v4, " proc="

    #@e3
    .line 184
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@e6
    move-result-object v3

    #@e7
    .line 186
    iget-object v4, p0, Lcom/android/internal/app/procstats/ServiceState;->mProc:Lcom/android/internal/app/procstats/ProcessState;

    #@e9
    .line 184
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@ec
    move-result-object v3

    #@ed
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@f0
    move-result-object v3

    #@f1
    invoke-static {v2, v3}, Landroid/util/Slog;->wtfStack(Ljava/lang/String;Ljava/lang/String;)I

    #@f4
    .line 188
    :cond_5
    invoke-virtual {p0, v5, v5, v0, v1}, Lcom/android/internal/app/procstats/ServiceState;->setExecuting(ZIJ)V

    #@f7
    .line 191
    .end local v0    # "now":J
    :cond_6
    const/4 v2, 0x0

    #@f8
    iput-object v2, p0, Lcom/android/internal/app/procstats/ServiceState;->mOwner:Ljava/lang/Object;

    #@fa
    .line 161
    :cond_7
    return-void

    #@fb
    .line 164
    :cond_8
    iget v2, p0, Lcom/android/internal/app/procstats/ServiceState;->mExecState:I

    #@fd
    if-eq v2, v6, :cond_6

    #@ff
    goto/16 :goto_0
.end method

.method public commitStateTime(J)V
    .locals 5
    .param p1, "now"    # J

    #@0
    .prologue
    const/4 v4, -0x1

    #@1
    .line 240
    iget v0, p0, Lcom/android/internal/app/procstats/ServiceState;->mRunState:I

    #@3
    if-eq v0, v4, :cond_0

    #@5
    .line 241
    iget-object v0, p0, Lcom/android/internal/app/procstats/ServiceState;->mDurations:Lcom/android/internal/app/procstats/DurationsTable;

    #@7
    iget v1, p0, Lcom/android/internal/app/procstats/ServiceState;->mRunState:I

    #@9
    mul-int/lit8 v1, v1, 0x4

    #@b
    add-int/lit8 v1, v1, 0x0

    #@d
    .line 242
    iget-wide v2, p0, Lcom/android/internal/app/procstats/ServiceState;->mRunStartTime:J

    #@f
    sub-long v2, p1, v2

    #@11
    .line 241
    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/app/procstats/DurationsTable;->addDuration(IJ)V

    #@14
    .line 243
    iput-wide p1, p0, Lcom/android/internal/app/procstats/ServiceState;->mRunStartTime:J

    #@16
    .line 245
    :cond_0
    iget v0, p0, Lcom/android/internal/app/procstats/ServiceState;->mStartedState:I

    #@18
    if-eq v0, v4, :cond_1

    #@1a
    .line 246
    iget-object v0, p0, Lcom/android/internal/app/procstats/ServiceState;->mDurations:Lcom/android/internal/app/procstats/DurationsTable;

    #@1c
    iget v1, p0, Lcom/android/internal/app/procstats/ServiceState;->mStartedState:I

    #@1e
    mul-int/lit8 v1, v1, 0x4

    #@20
    add-int/lit8 v1, v1, 0x1

    #@22
    .line 247
    iget-wide v2, p0, Lcom/android/internal/app/procstats/ServiceState;->mStartedStartTime:J

    #@24
    sub-long v2, p1, v2

    #@26
    .line 246
    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/app/procstats/DurationsTable;->addDuration(IJ)V

    #@29
    .line 248
    iput-wide p1, p0, Lcom/android/internal/app/procstats/ServiceState;->mStartedStartTime:J

    #@2b
    .line 250
    :cond_1
    iget v0, p0, Lcom/android/internal/app/procstats/ServiceState;->mBoundState:I

    #@2d
    if-eq v0, v4, :cond_2

    #@2f
    .line 251
    iget-object v0, p0, Lcom/android/internal/app/procstats/ServiceState;->mDurations:Lcom/android/internal/app/procstats/DurationsTable;

    #@31
    iget v1, p0, Lcom/android/internal/app/procstats/ServiceState;->mBoundState:I

    #@33
    mul-int/lit8 v1, v1, 0x4

    #@35
    add-int/lit8 v1, v1, 0x2

    #@37
    .line 252
    iget-wide v2, p0, Lcom/android/internal/app/procstats/ServiceState;->mBoundStartTime:J

    #@39
    sub-long v2, p1, v2

    #@3b
    .line 251
    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/app/procstats/DurationsTable;->addDuration(IJ)V

    #@3e
    .line 253
    iput-wide p1, p0, Lcom/android/internal/app/procstats/ServiceState;->mBoundStartTime:J

    #@40
    .line 255
    :cond_2
    iget v0, p0, Lcom/android/internal/app/procstats/ServiceState;->mExecState:I

    #@42
    if-eq v0, v4, :cond_3

    #@44
    .line 256
    iget-object v0, p0, Lcom/android/internal/app/procstats/ServiceState;->mDurations:Lcom/android/internal/app/procstats/DurationsTable;

    #@46
    iget v1, p0, Lcom/android/internal/app/procstats/ServiceState;->mExecState:I

    #@48
    mul-int/lit8 v1, v1, 0x4

    #@4a
    add-int/lit8 v1, v1, 0x3

    #@4c
    .line 257
    iget-wide v2, p0, Lcom/android/internal/app/procstats/ServiceState;->mExecStartTime:J

    #@4e
    sub-long v2, p1, v2

    #@50
    .line 256
    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/app/procstats/DurationsTable;->addDuration(IJ)V

    #@53
    .line 258
    iput-wide p1, p0, Lcom/android/internal/app/procstats/ServiceState;->mExecStartTime:J

    #@55
    .line 239
    :cond_3
    return-void
.end method

.method public dumpStats(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJZZ)V
    .locals 19
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "prefix"    # Ljava/lang/String;
    .param p3, "prefixInner"    # Ljava/lang/String;
    .param p4, "headerPrefix"    # Ljava/lang/String;
    .param p5, "now"    # J
    .param p7, "totalTime"    # J
    .param p9, "dumpSummary"    # Z
    .param p10, "dumpAll"    # Z

    #@0
    .prologue
    .line 363
    const-string/jumbo v8, "Running"

    #@3
    .line 364
    move-object/from16 v0, p0

    #@5
    iget v9, v0, Lcom/android/internal/app/procstats/ServiceState;->mRunCount:I

    #@7
    move-object/from16 v0, p0

    #@9
    iget v11, v0, Lcom/android/internal/app/procstats/ServiceState;->mRunState:I

    #@b
    .line 365
    move-object/from16 v0, p0

    #@d
    iget-wide v12, v0, Lcom/android/internal/app/procstats/ServiceState;->mRunStartTime:J

    #@f
    if-eqz p9, :cond_3

    #@11
    move/from16 v18, p10

    #@13
    .line 364
    :goto_0
    const/4 v10, 0x0

    #@14
    move-object/from16 v3, p0

    #@16
    move-object/from16 v4, p1

    #@18
    move-object/from16 v5, p2

    #@1a
    move-object/from16 v6, p3

    #@1c
    move-object/from16 v7, p4

    #@1e
    move-wide/from16 v14, p5

    #@20
    move-wide/from16 v16, p7

    #@22
    .line 363
    invoke-direct/range {v3 .. v18}, Lcom/android/internal/app/procstats/ServiceState;->dumpStats(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIJJJZ)V

    #@25
    .line 366
    const-string/jumbo v8, "Started"

    #@28
    .line 367
    move-object/from16 v0, p0

    #@2a
    iget v9, v0, Lcom/android/internal/app/procstats/ServiceState;->mStartedCount:I

    #@2c
    move-object/from16 v0, p0

    #@2e
    iget v11, v0, Lcom/android/internal/app/procstats/ServiceState;->mStartedState:I

    #@30
    .line 368
    move-object/from16 v0, p0

    #@32
    iget-wide v12, v0, Lcom/android/internal/app/procstats/ServiceState;->mStartedStartTime:J

    #@34
    if-eqz p9, :cond_4

    #@36
    move/from16 v18, p10

    #@38
    .line 367
    :goto_1
    const/4 v10, 0x1

    #@39
    move-object/from16 v3, p0

    #@3b
    move-object/from16 v4, p1

    #@3d
    move-object/from16 v5, p2

    #@3f
    move-object/from16 v6, p3

    #@41
    move-object/from16 v7, p4

    #@43
    move-wide/from16 v14, p5

    #@45
    move-wide/from16 v16, p7

    #@47
    .line 366
    invoke-direct/range {v3 .. v18}, Lcom/android/internal/app/procstats/ServiceState;->dumpStats(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIJJJZ)V

    #@4a
    .line 369
    const-string/jumbo v8, "Bound"

    #@4d
    .line 370
    move-object/from16 v0, p0

    #@4f
    iget v9, v0, Lcom/android/internal/app/procstats/ServiceState;->mBoundCount:I

    #@51
    move-object/from16 v0, p0

    #@53
    iget v11, v0, Lcom/android/internal/app/procstats/ServiceState;->mBoundState:I

    #@55
    .line 371
    move-object/from16 v0, p0

    #@57
    iget-wide v12, v0, Lcom/android/internal/app/procstats/ServiceState;->mBoundStartTime:J

    #@59
    if-eqz p9, :cond_5

    #@5b
    move/from16 v18, p10

    #@5d
    .line 370
    :goto_2
    const/4 v10, 0x2

    #@5e
    move-object/from16 v3, p0

    #@60
    move-object/from16 v4, p1

    #@62
    move-object/from16 v5, p2

    #@64
    move-object/from16 v6, p3

    #@66
    move-object/from16 v7, p4

    #@68
    move-wide/from16 v14, p5

    #@6a
    move-wide/from16 v16, p7

    #@6c
    .line 369
    invoke-direct/range {v3 .. v18}, Lcom/android/internal/app/procstats/ServiceState;->dumpStats(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIJJJZ)V

    #@6f
    .line 372
    const-string/jumbo v8, "Executing"

    #@72
    .line 373
    move-object/from16 v0, p0

    #@74
    iget v9, v0, Lcom/android/internal/app/procstats/ServiceState;->mExecCount:I

    #@76
    move-object/from16 v0, p0

    #@78
    iget v11, v0, Lcom/android/internal/app/procstats/ServiceState;->mExecState:I

    #@7a
    .line 374
    move-object/from16 v0, p0

    #@7c
    iget-wide v12, v0, Lcom/android/internal/app/procstats/ServiceState;->mExecStartTime:J

    #@7e
    if-eqz p9, :cond_6

    #@80
    move/from16 v18, p10

    #@82
    .line 373
    :goto_3
    const/4 v10, 0x3

    #@83
    move-object/from16 v3, p0

    #@85
    move-object/from16 v4, p1

    #@87
    move-object/from16 v5, p2

    #@89
    move-object/from16 v6, p3

    #@8b
    move-object/from16 v7, p4

    #@8d
    move-wide/from16 v14, p5

    #@8f
    move-wide/from16 v16, p7

    #@91
    .line 372
    invoke-direct/range {v3 .. v18}, Lcom/android/internal/app/procstats/ServiceState;->dumpStats(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIJJJZ)V

    #@94
    .line 375
    if-eqz p10, :cond_2

    #@96
    .line 376
    move-object/from16 v0, p0

    #@98
    iget-object v2, v0, Lcom/android/internal/app/procstats/ServiceState;->mOwner:Ljava/lang/Object;

    #@9a
    if-eqz v2, :cond_0

    #@9c
    .line 377
    const-string/jumbo v2, "        mOwner="

    #@9f
    move-object/from16 v0, p1

    #@a1
    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@a4
    move-object/from16 v0, p0

    #@a6
    iget-object v2, v0, Lcom/android/internal/app/procstats/ServiceState;->mOwner:Ljava/lang/Object;

    #@a8
    move-object/from16 v0, p1

    #@aa
    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    #@ad
    .line 379
    :cond_0
    move-object/from16 v0, p0

    #@af
    iget-boolean v2, v0, Lcom/android/internal/app/procstats/ServiceState;->mStarted:Z

    #@b1
    if-nez v2, :cond_1

    #@b3
    move-object/from16 v0, p0

    #@b5
    iget-boolean v2, v0, Lcom/android/internal/app/procstats/ServiceState;->mRestarting:Z

    #@b7
    if-eqz v2, :cond_2

    #@b9
    .line 380
    :cond_1
    const-string/jumbo v2, "        mStarted="

    #@bc
    move-object/from16 v0, p1

    #@be
    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@c1
    move-object/from16 v0, p0

    #@c3
    iget-boolean v2, v0, Lcom/android/internal/app/procstats/ServiceState;->mStarted:Z

    #@c5
    move-object/from16 v0, p1

    #@c7
    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->print(Z)V

    #@ca
    .line 381
    const-string/jumbo v2, " mRestarting="

    #@cd
    move-object/from16 v0, p1

    #@cf
    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@d2
    move-object/from16 v0, p0

    #@d4
    iget-boolean v2, v0, Lcom/android/internal/app/procstats/ServiceState;->mRestarting:Z

    #@d6
    move-object/from16 v0, p1

    #@d8
    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Z)V

    #@db
    .line 362
    :cond_2
    return-void

    #@dc
    .line 365
    :cond_3
    const/16 v18, 0x1

    #@de
    goto/16 :goto_0

    #@e0
    .line 368
    :cond_4
    const/16 v18, 0x1

    #@e2
    goto/16 :goto_1

    #@e4
    .line 371
    :cond_5
    const/16 v18, 0x1

    #@e6
    goto/16 :goto_2

    #@e8
    .line 374
    :cond_6
    const/16 v18, 0x1

    #@ea
    goto :goto_3
.end method

.method public dumpTime(Ljava/io/PrintWriter;Ljava/lang/String;IIJJ)J
    .locals 23
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "prefix"    # Ljava/lang/String;
    .param p3, "serviceType"    # I
    .param p4, "curState"    # I
    .param p5, "curStartTime"    # J
    .param p7, "now"    # J

    #@0
    .prologue
    .line 408
    const-wide/16 v20, 0x0

    #@2
    .line 409
    .local v20, "totalTime":J
    const/4 v15, -0x1

    #@3
    .line 410
    .local v15, "printedScreen":I
    const/4 v13, 0x0

    #@4
    .local v13, "iscreen":I
    :goto_0
    const/16 v4, 0x8

    #@6
    if-ge v13, v4, :cond_6

    #@8
    .line 411
    const/4 v14, -0x1

    #@9
    .line 412
    .local v14, "printedMem":I
    const/4 v12, 0x0

    #@a
    .local v12, "imem":I
    :goto_1
    const/4 v4, 0x4

    #@b
    if-ge v12, v4, :cond_5

    #@d
    .line 413
    add-int v9, v12, v13

    #@f
    .local v9, "state":I
    move-object/from16 v4, p0

    #@11
    move/from16 v5, p3

    #@13
    move/from16 v6, p4

    #@15
    move-wide/from16 v7, p5

    #@17
    move-wide/from16 v10, p7

    #@19
    .line 414
    invoke-virtual/range {v4 .. v11}, Lcom/android/internal/app/procstats/ServiceState;->getDuration(IIJIJ)J

    #@1c
    move-result-wide v18

    #@1d
    .line 415
    .local v18, "time":J
    const-string/jumbo v16, ""

    #@20
    .line 416
    .local v16, "running":Ljava/lang/String;
    move/from16 v0, p4

    #@22
    if-ne v0, v9, :cond_0

    #@24
    if-eqz p1, :cond_0

    #@26
    .line 417
    const-string/jumbo v16, " (running)"

    #@29
    .line 419
    :cond_0
    const-wide/16 v4, 0x0

    #@2b
    cmp-long v4, v18, v4

    #@2d
    if-eqz v4, :cond_2

    #@2f
    .line 420
    if-eqz p1, :cond_1

    #@31
    .line 421
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@34
    .line 422
    if-eq v15, v13, :cond_3

    #@36
    move v4, v13

    #@37
    :goto_2
    move-object/from16 v0, p1

    #@39
    invoke-static {v0, v4}, Lcom/android/internal/app/procstats/DumpUtils;->printScreenLabel(Ljava/io/PrintWriter;I)V

    #@3c
    .line 424
    move v15, v13

    #@3d
    .line 425
    if-eq v14, v12, :cond_4

    #@3f
    move v4, v12

    #@40
    .line 426
    :goto_3
    const/4 v5, 0x0

    #@41
    .line 425
    move-object/from16 v0, p1

    #@43
    invoke-static {v0, v4, v5}, Lcom/android/internal/app/procstats/DumpUtils;->printMemLabel(Ljava/io/PrintWriter;IC)V

    #@46
    .line 427
    move v14, v12

    #@47
    .line 428
    const-string/jumbo v4, ": "

    #@4a
    move-object/from16 v0, p1

    #@4c
    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@4f
    .line 429
    move-wide/from16 v0, v18

    #@51
    move-object/from16 v2, p1

    #@53
    invoke-static {v0, v1, v2}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    #@56
    move-object/from16 v0, p1

    #@58
    move-object/from16 v1, v16

    #@5a
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@5d
    .line 431
    :cond_1
    add-long v20, v20, v18

    #@5f
    .line 412
    :cond_2
    add-int/lit8 v12, v12, 0x1

    #@61
    goto :goto_1

    #@62
    .line 423
    :cond_3
    const/4 v4, -0x1

    #@63
    goto :goto_2

    #@64
    .line 425
    :cond_4
    const/4 v4, -0x1

    #@65
    goto :goto_3

    #@66
    .line 410
    .end local v9    # "state":I
    .end local v16    # "running":Ljava/lang/String;
    .end local v18    # "time":J
    :cond_5
    add-int/lit8 v13, v13, 0x4

    #@68
    goto :goto_0

    #@69
    .line 435
    .end local v12    # "imem":I
    .end local v14    # "printedMem":I
    :cond_6
    const-wide/16 v4, 0x0

    #@6b
    cmp-long v4, v20, v4

    #@6d
    if-eqz v4, :cond_7

    #@6f
    if-eqz p1, :cond_7

    #@71
    .line 436
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@74
    .line 437
    const-string/jumbo v4, "    TOTAL: "

    #@77
    move-object/from16 v0, p1

    #@79
    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@7c
    .line 438
    move-wide/from16 v0, v20

    #@7e
    move-object/from16 v2, p1

    #@80
    invoke-static {v0, v1, v2}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    #@83
    .line 439
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    #@86
    .line 441
    :cond_7
    return-wide v20
.end method

.method public dumpTimesCheckin(Ljava/io/PrintWriter;Ljava/lang/String;IILjava/lang/String;J)V
    .locals 14
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "pkgName"    # Ljava/lang/String;
    .param p3, "uid"    # I
    .param p4, "vers"    # I
    .param p5, "serviceName"    # Ljava/lang/String;
    .param p6, "now"    # J

    #@0
    .prologue
    .line 446
    const-string/jumbo v2, "pkgsvc-run"

    #@3
    .line 447
    iget v8, p0, Lcom/android/internal/app/procstats/ServiceState;->mRunCount:I

    #@5
    iget v9, p0, Lcom/android/internal/app/procstats/ServiceState;->mRunState:I

    #@7
    iget-wide v10, p0, Lcom/android/internal/app/procstats/ServiceState;->mRunStartTime:J

    #@9
    const/4 v7, 0x0

    #@a
    move-object v0, p0

    #@b
    move-object v1, p1

    #@c
    move-object/from16 v3, p2

    #@e
    move/from16 v4, p3

    #@10
    move/from16 v5, p4

    #@12
    move-object/from16 v6, p5

    #@14
    move-wide/from16 v12, p6

    #@16
    .line 446
    invoke-direct/range {v0 .. v13}, Lcom/android/internal/app/procstats/ServiceState;->dumpTimeCheckin(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;IIIJJ)V

    #@19
    .line 448
    const-string/jumbo v2, "pkgsvc-start"

    #@1c
    .line 449
    iget v8, p0, Lcom/android/internal/app/procstats/ServiceState;->mStartedCount:I

    #@1e
    iget v9, p0, Lcom/android/internal/app/procstats/ServiceState;->mStartedState:I

    #@20
    iget-wide v10, p0, Lcom/android/internal/app/procstats/ServiceState;->mStartedStartTime:J

    #@22
    const/4 v7, 0x1

    #@23
    move-object v0, p0

    #@24
    move-object v1, p1

    #@25
    move-object/from16 v3, p2

    #@27
    move/from16 v4, p3

    #@29
    move/from16 v5, p4

    #@2b
    move-object/from16 v6, p5

    #@2d
    move-wide/from16 v12, p6

    #@2f
    .line 448
    invoke-direct/range {v0 .. v13}, Lcom/android/internal/app/procstats/ServiceState;->dumpTimeCheckin(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;IIIJJ)V

    #@32
    .line 450
    const-string/jumbo v2, "pkgsvc-bound"

    #@35
    .line 451
    iget v8, p0, Lcom/android/internal/app/procstats/ServiceState;->mBoundCount:I

    #@37
    iget v9, p0, Lcom/android/internal/app/procstats/ServiceState;->mBoundState:I

    #@39
    iget-wide v10, p0, Lcom/android/internal/app/procstats/ServiceState;->mBoundStartTime:J

    #@3b
    const/4 v7, 0x2

    #@3c
    move-object v0, p0

    #@3d
    move-object v1, p1

    #@3e
    move-object/from16 v3, p2

    #@40
    move/from16 v4, p3

    #@42
    move/from16 v5, p4

    #@44
    move-object/from16 v6, p5

    #@46
    move-wide/from16 v12, p6

    #@48
    .line 450
    invoke-direct/range {v0 .. v13}, Lcom/android/internal/app/procstats/ServiceState;->dumpTimeCheckin(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;IIIJJ)V

    #@4b
    .line 452
    const-string/jumbo v2, "pkgsvc-exec"

    #@4e
    .line 453
    iget v8, p0, Lcom/android/internal/app/procstats/ServiceState;->mExecCount:I

    #@50
    iget v9, p0, Lcom/android/internal/app/procstats/ServiceState;->mExecState:I

    #@52
    iget-wide v10, p0, Lcom/android/internal/app/procstats/ServiceState;->mExecStartTime:J

    #@54
    const/4 v7, 0x3

    #@55
    move-object v0, p0

    #@56
    move-object v1, p1

    #@57
    move-object/from16 v3, p2

    #@59
    move/from16 v4, p3

    #@5b
    move/from16 v5, p4

    #@5d
    move-object/from16 v6, p5

    #@5f
    move-wide/from16 v12, p6

    #@61
    .line 452
    invoke-direct/range {v0 .. v13}, Lcom/android/internal/app/procstats/ServiceState;->dumpTimeCheckin(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;IIIJJ)V

    #@64
    .line 445
    return-void
.end method

.method public getDuration(IIJIJ)J
    .locals 6
    .param p1, "opType"    # I
    .param p2, "curState"    # I
    .param p3, "startTime"    # J
    .param p5, "memFactor"    # I
    .param p6, "now"    # J

    #@0
    .prologue
    .line 353
    mul-int/lit8 v1, p5, 0x4

    #@2
    add-int v0, p1, v1

    #@4
    .line 354
    .local v0, "state":I
    iget-object v1, p0, Lcom/android/internal/app/procstats/ServiceState;->mDurations:Lcom/android/internal/app/procstats/DurationsTable;

    #@6
    int-to-byte v4, v0

    #@7
    invoke-virtual {v1, v4}, Lcom/android/internal/app/procstats/DurationsTable;->getValueForId(B)J

    #@a
    move-result-wide v2

    #@b
    .line 355
    .local v2, "time":J
    if-ne p2, p5, :cond_0

    #@d
    .line 356
    sub-long v4, p6, p3

    #@f
    add-long/2addr v2, v4

    #@10
    .line 358
    :cond_0
    return-wide v2
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 100
    iget-object v0, p0, Lcom/android/internal/app/procstats/ServiceState;->mName:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getPackage()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 92
    iget-object v0, p0, Lcom/android/internal/app/procstats/ServiceState;->mPackage:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getProcess()Lcom/android/internal/app/procstats/ProcessState;
    .locals 1

    #@0
    .prologue
    .line 104
    iget-object v0, p0, Lcom/android/internal/app/procstats/ServiceState;->mProc:Lcom/android/internal/app/procstats/ProcessState;

    #@2
    return-object v0
.end method

.method public getProcessName()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 96
    iget-object v0, p0, Lcom/android/internal/app/procstats/ServiceState;->mProcessName:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public isInUse()Z
    .locals 1

    #@0
    .prologue
    .line 196
    iget-object v0, p0, Lcom/android/internal/app/procstats/ServiceState;->mOwner:Ljava/lang/Object;

    #@2
    if-nez v0, :cond_0

    #@4
    iget-boolean v0, p0, Lcom/android/internal/app/procstats/ServiceState;->mRestarting:Z

    #@6
    :goto_0
    return v0

    #@7
    :cond_0
    const/4 v0, 0x1

    #@8
    goto :goto_0
.end method

.method public isRestarting()Z
    .locals 1

    #@0
    .prologue
    .line 200
    iget-boolean v0, p0, Lcom/android/internal/app/procstats/ServiceState;->mRestarting:Z

    #@2
    return v0
.end method

.method public readFromParcel(Landroid/os/Parcel;)Z
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    #@0
    .prologue
    .line 229
    iget-object v0, p0, Lcom/android/internal/app/procstats/ServiceState;->mDurations:Lcom/android/internal/app/procstats/DurationsTable;

    #@2
    invoke-virtual {v0, p1}, Lcom/android/internal/app/procstats/DurationsTable;->readFromParcel(Landroid/os/Parcel;)Z

    #@5
    move-result v0

    #@6
    if-nez v0, :cond_0

    #@8
    .line 230
    const/4 v0, 0x0

    #@9
    return v0

    #@a
    .line 232
    :cond_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@d
    move-result v0

    #@e
    iput v0, p0, Lcom/android/internal/app/procstats/ServiceState;->mRunCount:I

    #@10
    .line 233
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@13
    move-result v0

    #@14
    iput v0, p0, Lcom/android/internal/app/procstats/ServiceState;->mStartedCount:I

    #@16
    .line 234
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@19
    move-result v0

    #@1a
    iput v0, p0, Lcom/android/internal/app/procstats/ServiceState;->mBoundCount:I

    #@1c
    .line 235
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@1f
    move-result v0

    #@20
    iput v0, p0, Lcom/android/internal/app/procstats/ServiceState;->mExecCount:I

    #@22
    .line 236
    const/4 v0, 0x1

    #@23
    return v0
.end method

.method public resetSafely(J)V
    .locals 5
    .param p1, "now"    # J

    #@0
    .prologue
    const/4 v1, 0x1

    #@1
    const/4 v2, 0x0

    #@2
    const/4 v3, -0x1

    #@3
    .line 212
    iget-object v0, p0, Lcom/android/internal/app/procstats/ServiceState;->mDurations:Lcom/android/internal/app/procstats/DurationsTable;

    #@5
    invoke-virtual {v0}, Lcom/android/internal/app/procstats/DurationsTable;->resetTable()V

    #@8
    .line 213
    iget v0, p0, Lcom/android/internal/app/procstats/ServiceState;->mRunState:I

    #@a
    if-eq v0, v3, :cond_0

    #@c
    move v0, v1

    #@d
    :goto_0
    iput v0, p0, Lcom/android/internal/app/procstats/ServiceState;->mRunCount:I

    #@f
    .line 214
    iget v0, p0, Lcom/android/internal/app/procstats/ServiceState;->mStartedState:I

    #@11
    if-eq v0, v3, :cond_1

    #@13
    move v0, v1

    #@14
    :goto_1
    iput v0, p0, Lcom/android/internal/app/procstats/ServiceState;->mStartedCount:I

    #@16
    .line 215
    iget v0, p0, Lcom/android/internal/app/procstats/ServiceState;->mBoundState:I

    #@18
    if-eq v0, v3, :cond_2

    #@1a
    move v0, v1

    #@1b
    :goto_2
    iput v0, p0, Lcom/android/internal/app/procstats/ServiceState;->mBoundCount:I

    #@1d
    .line 216
    iget v0, p0, Lcom/android/internal/app/procstats/ServiceState;->mExecState:I

    #@1f
    if-eq v0, v3, :cond_3

    #@21
    :goto_3
    iput v1, p0, Lcom/android/internal/app/procstats/ServiceState;->mExecCount:I

    #@23
    .line 217
    iput-wide p1, p0, Lcom/android/internal/app/procstats/ServiceState;->mExecStartTime:J

    #@25
    iput-wide p1, p0, Lcom/android/internal/app/procstats/ServiceState;->mBoundStartTime:J

    #@27
    iput-wide p1, p0, Lcom/android/internal/app/procstats/ServiceState;->mStartedStartTime:J

    #@29
    iput-wide p1, p0, Lcom/android/internal/app/procstats/ServiceState;->mRunStartTime:J

    #@2b
    .line 211
    return-void

    #@2c
    :cond_0
    move v0, v2

    #@2d
    .line 213
    goto :goto_0

    #@2e
    :cond_1
    move v0, v2

    #@2f
    .line 214
    goto :goto_1

    #@30
    :cond_2
    move v0, v2

    #@31
    .line 215
    goto :goto_2

    #@32
    :cond_3
    move v1, v2

    #@33
    .line 216
    goto :goto_3
.end method

.method public setBound(ZIJ)V
    .locals 7
    .param p1, "bound"    # Z
    .param p2, "memFactor"    # I
    .param p3, "now"    # J

    #@0
    .prologue
    .line 316
    iget-object v1, p0, Lcom/android/internal/app/procstats/ServiceState;->mOwner:Ljava/lang/Object;

    #@2
    if-nez v1, :cond_0

    #@4
    .line 317
    const-string/jumbo v1, "ProcessStats"

    #@7
    new-instance v2, Ljava/lang/StringBuilder;

    #@9
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@c
    const-string/jumbo v3, "Binding service "

    #@f
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@12
    move-result-object v2

    #@13
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@16
    move-result-object v2

    #@17
    const-string/jumbo v3, " without owner"

    #@1a
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1d
    move-result-object v2

    #@1e
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@21
    move-result-object v2

    #@22
    invoke-static {v1, v2}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    #@25
    .line 319
    :cond_0
    if-eqz p1, :cond_3

    #@27
    move v0, p2

    #@28
    .line 320
    .local v0, "state":I
    :goto_0
    iget v1, p0, Lcom/android/internal/app/procstats/ServiceState;->mBoundState:I

    #@2a
    if-eq v1, v0, :cond_2

    #@2c
    .line 321
    iget v1, p0, Lcom/android/internal/app/procstats/ServiceState;->mBoundState:I

    #@2e
    const/4 v2, -0x1

    #@2f
    if-eq v1, v2, :cond_4

    #@31
    .line 322
    iget-object v1, p0, Lcom/android/internal/app/procstats/ServiceState;->mDurations:Lcom/android/internal/app/procstats/DurationsTable;

    #@33
    iget v2, p0, Lcom/android/internal/app/procstats/ServiceState;->mBoundState:I

    #@35
    mul-int/lit8 v2, v2, 0x4

    #@37
    add-int/lit8 v2, v2, 0x2

    #@39
    .line 323
    iget-wide v4, p0, Lcom/android/internal/app/procstats/ServiceState;->mBoundStartTime:J

    #@3b
    sub-long v4, p3, v4

    #@3d
    .line 322
    invoke-virtual {v1, v2, v4, v5}, Lcom/android/internal/app/procstats/DurationsTable;->addDuration(IJ)V

    #@40
    .line 327
    :cond_1
    :goto_1
    iput v0, p0, Lcom/android/internal/app/procstats/ServiceState;->mBoundState:I

    #@42
    .line 328
    iput-wide p3, p0, Lcom/android/internal/app/procstats/ServiceState;->mBoundStartTime:J

    #@44
    .line 329
    invoke-direct {p0, p2, p3, p4}, Lcom/android/internal/app/procstats/ServiceState;->updateRunning(IJ)V

    #@47
    .line 315
    :cond_2
    return-void

    #@48
    .line 319
    .end local v0    # "state":I
    :cond_3
    const/4 v0, -0x1

    #@49
    .restart local v0    # "state":I
    goto :goto_0

    #@4a
    .line 324
    :cond_4
    if-eqz p1, :cond_1

    #@4c
    .line 325
    iget v1, p0, Lcom/android/internal/app/procstats/ServiceState;->mBoundCount:I

    #@4e
    add-int/lit8 v1, v1, 0x1

    #@50
    iput v1, p0, Lcom/android/internal/app/procstats/ServiceState;->mBoundCount:I

    #@52
    goto :goto_1
.end method

.method public setExecuting(ZIJ)V
    .locals 7
    .param p1, "executing"    # Z
    .param p2, "memFactor"    # I
    .param p3, "now"    # J

    #@0
    .prologue
    .line 334
    iget-object v1, p0, Lcom/android/internal/app/procstats/ServiceState;->mOwner:Ljava/lang/Object;

    #@2
    if-nez v1, :cond_0

    #@4
    .line 335
    const-string/jumbo v1, "ProcessStats"

    #@7
    new-instance v2, Ljava/lang/StringBuilder;

    #@9
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@c
    const-string/jumbo v3, "Executing service "

    #@f
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@12
    move-result-object v2

    #@13
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@16
    move-result-object v2

    #@17
    const-string/jumbo v3, " without owner"

    #@1a
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1d
    move-result-object v2

    #@1e
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@21
    move-result-object v2

    #@22
    invoke-static {v1, v2}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    #@25
    .line 337
    :cond_0
    if-eqz p1, :cond_3

    #@27
    move v0, p2

    #@28
    .line 338
    .local v0, "state":I
    :goto_0
    iget v1, p0, Lcom/android/internal/app/procstats/ServiceState;->mExecState:I

    #@2a
    if-eq v1, v0, :cond_2

    #@2c
    .line 339
    iget v1, p0, Lcom/android/internal/app/procstats/ServiceState;->mExecState:I

    #@2e
    const/4 v2, -0x1

    #@2f
    if-eq v1, v2, :cond_4

    #@31
    .line 340
    iget-object v1, p0, Lcom/android/internal/app/procstats/ServiceState;->mDurations:Lcom/android/internal/app/procstats/DurationsTable;

    #@33
    iget v2, p0, Lcom/android/internal/app/procstats/ServiceState;->mExecState:I

    #@35
    mul-int/lit8 v2, v2, 0x4

    #@37
    add-int/lit8 v2, v2, 0x3

    #@39
    .line 341
    iget-wide v4, p0, Lcom/android/internal/app/procstats/ServiceState;->mExecStartTime:J

    #@3b
    sub-long v4, p3, v4

    #@3d
    .line 340
    invoke-virtual {v1, v2, v4, v5}, Lcom/android/internal/app/procstats/DurationsTable;->addDuration(IJ)V

    #@40
    .line 345
    :cond_1
    :goto_1
    iput v0, p0, Lcom/android/internal/app/procstats/ServiceState;->mExecState:I

    #@42
    .line 346
    iput-wide p3, p0, Lcom/android/internal/app/procstats/ServiceState;->mExecStartTime:J

    #@44
    .line 347
    invoke-direct {p0, p2, p3, p4}, Lcom/android/internal/app/procstats/ServiceState;->updateRunning(IJ)V

    #@47
    .line 333
    :cond_2
    return-void

    #@48
    .line 337
    .end local v0    # "state":I
    :cond_3
    const/4 v0, -0x1

    #@49
    .restart local v0    # "state":I
    goto :goto_0

    #@4a
    .line 342
    :cond_4
    if-eqz p1, :cond_1

    #@4c
    .line 343
    iget v1, p0, Lcom/android/internal/app/procstats/ServiceState;->mExecCount:I

    #@4e
    add-int/lit8 v1, v1, 0x1

    #@50
    iput v1, p0, Lcom/android/internal/app/procstats/ServiceState;->mExecCount:I

    #@52
    goto :goto_1
.end method

.method public setMemFactor(IJ)V
    .locals 4
    .param p1, "memFactor"    # I
    .param p2, "now"    # J

    #@0
    .prologue
    const/4 v2, -0x1

    #@1
    const/4 v1, 0x1

    #@2
    .line 112
    invoke-virtual {p0}, Lcom/android/internal/app/procstats/ServiceState;->isRestarting()Z

    #@5
    move-result v0

    #@6
    if-eqz v0, :cond_1

    #@8
    .line 113
    invoke-virtual {p0, v1, p1, p2, p3}, Lcom/android/internal/app/procstats/ServiceState;->setRestarting(ZIJ)V

    #@b
    .line 111
    :cond_0
    :goto_0
    return-void

    #@c
    .line 114
    :cond_1
    invoke-virtual {p0}, Lcom/android/internal/app/procstats/ServiceState;->isInUse()Z

    #@f
    move-result v0

    #@10
    if-eqz v0, :cond_0

    #@12
    .line 115
    iget v0, p0, Lcom/android/internal/app/procstats/ServiceState;->mStartedState:I

    #@14
    if-eq v0, v2, :cond_2

    #@16
    .line 116
    invoke-virtual {p0, v1, p1, p2, p3}, Lcom/android/internal/app/procstats/ServiceState;->setStarted(ZIJ)V

    #@19
    .line 118
    :cond_2
    iget v0, p0, Lcom/android/internal/app/procstats/ServiceState;->mBoundState:I

    #@1b
    if-eq v0, v2, :cond_3

    #@1d
    .line 119
    invoke-virtual {p0, v1, p1, p2, p3}, Lcom/android/internal/app/procstats/ServiceState;->setBound(ZIJ)V

    #@20
    .line 121
    :cond_3
    iget v0, p0, Lcom/android/internal/app/procstats/ServiceState;->mExecState:I

    #@22
    if-eq v0, v2, :cond_0

    #@24
    .line 122
    invoke-virtual {p0, v1, p1, p2, p3}, Lcom/android/internal/app/procstats/ServiceState;->setExecuting(ZIJ)V

    #@27
    goto :goto_0
.end method

.method public setProcess(Lcom/android/internal/app/procstats/ProcessState;)V
    .locals 0
    .param p1, "proc"    # Lcom/android/internal/app/procstats/ProcessState;

    #@0
    .prologue
    .line 108
    iput-object p1, p0, Lcom/android/internal/app/procstats/ServiceState;->mProc:Lcom/android/internal/app/procstats/ProcessState;

    #@2
    .line 107
    return-void
.end method

.method public setRestarting(ZIJ)V
    .locals 1
    .param p1, "restarting"    # Z
    .param p2, "memFactor"    # I
    .param p3, "now"    # J

    #@0
    .prologue
    .line 286
    iput-boolean p1, p0, Lcom/android/internal/app/procstats/ServiceState;->mRestarting:Z

    #@2
    .line 287
    invoke-virtual {p0, p2, p3, p4}, Lcom/android/internal/app/procstats/ServiceState;->updateStartedState(IJ)V

    #@5
    .line 285
    return-void
.end method

.method public setStarted(ZIJ)V
    .locals 3
    .param p1, "started"    # Z
    .param p2, "memFactor"    # I
    .param p3, "now"    # J

    #@0
    .prologue
    .line 278
    iget-object v0, p0, Lcom/android/internal/app/procstats/ServiceState;->mOwner:Ljava/lang/Object;

    #@2
    if-nez v0, :cond_0

    #@4
    .line 279
    const-string/jumbo v0, "ProcessStats"

    #@7
    new-instance v1, Ljava/lang/StringBuilder;

    #@9
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@c
    const-string/jumbo v2, "Starting service "

    #@f
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@12
    move-result-object v1

    #@13
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@16
    move-result-object v1

    #@17
    const-string/jumbo v2, " without owner"

    #@1a
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1d
    move-result-object v1

    #@1e
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@21
    move-result-object v1

    #@22
    invoke-static {v0, v1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    #@25
    .line 281
    :cond_0
    iput-boolean p1, p0, Lcom/android/internal/app/procstats/ServiceState;->mStarted:Z

    #@27
    .line 282
    invoke-virtual {p0, p2, p3, p4}, Lcom/android/internal/app/procstats/ServiceState;->updateStartedState(IJ)V

    #@2a
    .line 277
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    #@0
    .prologue
    .line 498
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    const-string/jumbo v1, "ServiceState{"

    #@8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b
    move-result-object v0

    #@c
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    #@f
    move-result v1

    #@10
    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    #@13
    move-result-object v1

    #@14
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@17
    move-result-object v0

    #@18
    .line 499
    const-string/jumbo v1, " "

    #@1b
    .line 498
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1e
    move-result-object v0

    #@1f
    .line 499
    iget-object v1, p0, Lcom/android/internal/app/procstats/ServiceState;->mName:Ljava/lang/String;

    #@21
    .line 498
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@24
    move-result-object v0

    #@25
    .line 499
    const-string/jumbo v1, " pkg="

    #@28
    .line 498
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2b
    move-result-object v0

    #@2c
    .line 499
    iget-object v1, p0, Lcom/android/internal/app/procstats/ServiceState;->mPackage:Ljava/lang/String;

    #@2e
    .line 498
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@31
    move-result-object v0

    #@32
    .line 499
    const-string/jumbo v1, " proc="

    #@35
    .line 498
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@38
    move-result-object v0

    #@39
    .line 500
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    #@3c
    move-result v1

    #@3d
    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    #@40
    move-result-object v1

    #@41
    .line 498
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@44
    move-result-object v0

    #@45
    .line 500
    const-string/jumbo v1, "}"

    #@48
    .line 498
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4b
    move-result-object v0

    #@4c
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@4f
    move-result-object v0

    #@50
    return-object v0
.end method

.method public updateStartedState(IJ)V
    .locals 8
    .param p1, "memFactor"    # I
    .param p2, "now"    # J

    #@0
    .prologue
    const/4 v0, 0x1

    #@1
    const/4 v4, -0x1

    #@2
    .line 291
    iget v3, p0, Lcom/android/internal/app/procstats/ServiceState;->mStartedState:I

    #@4
    if-eq v3, v4, :cond_4

    #@6
    const/4 v2, 0x1

    #@7
    .line 292
    .local v2, "wasStarted":Z
    :goto_0
    iget-boolean v3, p0, Lcom/android/internal/app/procstats/ServiceState;->mStarted:Z

    #@9
    if-nez v3, :cond_0

    #@b
    iget-boolean v0, p0, Lcom/android/internal/app/procstats/ServiceState;->mRestarting:Z

    #@d
    .line 293
    .local v0, "started":Z
    :cond_0
    if-eqz v0, :cond_5

    #@f
    move v1, p1

    #@10
    .line 294
    .local v1, "state":I
    :goto_1
    iget v3, p0, Lcom/android/internal/app/procstats/ServiceState;->mStartedState:I

    #@12
    if-eq v3, v1, :cond_3

    #@14
    .line 295
    iget v3, p0, Lcom/android/internal/app/procstats/ServiceState;->mStartedState:I

    #@16
    if-eq v3, v4, :cond_6

    #@18
    .line 296
    iget-object v3, p0, Lcom/android/internal/app/procstats/ServiceState;->mDurations:Lcom/android/internal/app/procstats/DurationsTable;

    #@1a
    iget v4, p0, Lcom/android/internal/app/procstats/ServiceState;->mStartedState:I

    #@1c
    mul-int/lit8 v4, v4, 0x4

    #@1e
    add-int/lit8 v4, v4, 0x1

    #@20
    .line 297
    iget-wide v6, p0, Lcom/android/internal/app/procstats/ServiceState;->mStartedStartTime:J

    #@22
    sub-long v6, p2, v6

    #@24
    .line 296
    invoke-virtual {v3, v4, v6, v7}, Lcom/android/internal/app/procstats/DurationsTable;->addDuration(IJ)V

    #@27
    .line 301
    :cond_1
    :goto_2
    iput v1, p0, Lcom/android/internal/app/procstats/ServiceState;->mStartedState:I

    #@29
    .line 302
    iput-wide p2, p0, Lcom/android/internal/app/procstats/ServiceState;->mStartedStartTime:J

    #@2b
    .line 303
    iget-object v3, p0, Lcom/android/internal/app/procstats/ServiceState;->mProc:Lcom/android/internal/app/procstats/ProcessState;

    #@2d
    iget-object v4, p0, Lcom/android/internal/app/procstats/ServiceState;->mPackage:Ljava/lang/String;

    #@2f
    invoke-virtual {v3, v4}, Lcom/android/internal/app/procstats/ProcessState;->pullFixedProc(Ljava/lang/String;)Lcom/android/internal/app/procstats/ProcessState;

    #@32
    move-result-object v3

    #@33
    iput-object v3, p0, Lcom/android/internal/app/procstats/ServiceState;->mProc:Lcom/android/internal/app/procstats/ProcessState;

    #@35
    .line 304
    if-eq v2, v0, :cond_2

    #@37
    .line 305
    if-eqz v0, :cond_7

    #@39
    .line 306
    iget-object v3, p0, Lcom/android/internal/app/procstats/ServiceState;->mProc:Lcom/android/internal/app/procstats/ProcessState;

    #@3b
    iget-object v4, p0, Lcom/android/internal/app/procstats/ServiceState;->mName:Ljava/lang/String;

    #@3d
    invoke-virtual {v3, p1, p2, p3, v4}, Lcom/android/internal/app/procstats/ProcessState;->incStartedServices(IJLjava/lang/String;)V

    #@40
    .line 311
    :cond_2
    :goto_3
    invoke-direct {p0, p1, p2, p3}, Lcom/android/internal/app/procstats/ServiceState;->updateRunning(IJ)V

    #@43
    .line 290
    :cond_3
    return-void

    #@44
    .line 291
    .end local v0    # "started":Z
    .end local v1    # "state":I
    .end local v2    # "wasStarted":Z
    :cond_4
    const/4 v2, 0x0

    #@45
    .restart local v2    # "wasStarted":Z
    goto :goto_0

    #@46
    .line 293
    .restart local v0    # "started":Z
    :cond_5
    const/4 v1, -0x1

    #@47
    .restart local v1    # "state":I
    goto :goto_1

    #@48
    .line 298
    :cond_6
    if-eqz v0, :cond_1

    #@4a
    .line 299
    iget v3, p0, Lcom/android/internal/app/procstats/ServiceState;->mStartedCount:I

    #@4c
    add-int/lit8 v3, v3, 0x1

    #@4e
    iput v3, p0, Lcom/android/internal/app/procstats/ServiceState;->mStartedCount:I

    #@50
    goto :goto_2

    #@51
    .line 308
    :cond_7
    iget-object v3, p0, Lcom/android/internal/app/procstats/ServiceState;->mProc:Lcom/android/internal/app/procstats/ProcessState;

    #@53
    iget-object v4, p0, Lcom/android/internal/app/procstats/ServiceState;->mName:Ljava/lang/String;

    #@55
    invoke-virtual {v3, p1, p2, p3, v4}, Lcom/android/internal/app/procstats/ProcessState;->decStartedServices(IJLjava/lang/String;)V

    #@58
    goto :goto_3
.end method

.method public writeToParcel(Landroid/os/Parcel;J)V
    .locals 1
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "now"    # J

    #@0
    .prologue
    .line 221
    iget-object v0, p0, Lcom/android/internal/app/procstats/ServiceState;->mDurations:Lcom/android/internal/app/procstats/DurationsTable;

    #@2
    invoke-virtual {v0, p1}, Lcom/android/internal/app/procstats/DurationsTable;->writeToParcel(Landroid/os/Parcel;)V

    #@5
    .line 222
    iget v0, p0, Lcom/android/internal/app/procstats/ServiceState;->mRunCount:I

    #@7
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@a
    .line 223
    iget v0, p0, Lcom/android/internal/app/procstats/ServiceState;->mStartedCount:I

    #@c
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@f
    .line 224
    iget v0, p0, Lcom/android/internal/app/procstats/ServiceState;->mBoundCount:I

    #@11
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@14
    .line 225
    iget v0, p0, Lcom/android/internal/app/procstats/ServiceState;->mExecCount:I

    #@16
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@19
    .line 220
    return-void
.end method
