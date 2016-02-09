.class public final Lcom/android/internal/app/ProcessStats$ServiceState;
.super Lcom/android/internal/app/ProcessStats$DurationsTable;
.source "ProcessStats.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/app/ProcessStats;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ServiceState"
.end annotation


# static fields
.field public static final SERVICE_BOUND:I = 0x2

.field static final SERVICE_COUNT:I = 0x4

.field public static final SERVICE_EXEC:I = 0x3

.field public static final SERVICE_RUN:I = 0x0

.field public static final SERVICE_STARTED:I = 0x1


# instance fields
.field mBoundCount:I

.field mBoundStartTime:J

.field public mBoundState:I

.field mExecCount:I

.field mExecStartTime:J

.field public mExecState:I

.field mOwner:Ljava/lang/Object;

.field public final mPackage:Ljava/lang/String;

.field mProc:Lcom/android/internal/app/ProcessStats$ProcessState;

.field public final mProcessName:Ljava/lang/String;

.field mRestarting:Z

.field mRunCount:I

.field mRunStartTime:J

.field public mRunState:I

.field mStarted:Z

.field mStartedCount:I

.field mStartedStartTime:J

.field public mStartedState:I


# direct methods
.method static synthetic -wrap0(Lcom/android/internal/app/ProcessStats$ServiceState;IIJIJ)J
    .locals 2
    .param p1, "opType"    # I
    .param p2, "curState"    # I
    .param p3, "startTime"    # J
    .param p5, "memFactor"    # I
    .param p6, "now"    # J

    #@0
    .prologue
    invoke-direct/range {p0 .. p7}, Lcom/android/internal/app/ProcessStats$ServiceState;->getDuration(IIJIJ)J

    #@3
    move-result-wide v0

    #@4
    return-wide v0
.end method

.method public constructor <init>(Lcom/android/internal/app/ProcessStats;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/app/ProcessStats$ProcessState;)V
    .locals 1
    .param p1, "processStats"    # Lcom/android/internal/app/ProcessStats;
    .param p2, "pkg"    # Ljava/lang/String;
    .param p3, "name"    # Ljava/lang/String;
    .param p4, "processName"    # Ljava/lang/String;
    .param p5, "proc"    # Lcom/android/internal/app/ProcessStats$ProcessState;

    #@0
    .prologue
    const/4 v0, -0x1

    #@1
    .line 3467
    invoke-direct {p0, p1, p3}, Lcom/android/internal/app/ProcessStats$DurationsTable;-><init>(Lcom/android/internal/app/ProcessStats;Ljava/lang/String;)V

    #@4
    .line 3448
    iput v0, p0, Lcom/android/internal/app/ProcessStats$ServiceState;->mRunState:I

    #@6
    .line 3454
    iput v0, p0, Lcom/android/internal/app/ProcessStats$ServiceState;->mStartedState:I

    #@8
    .line 3458
    iput v0, p0, Lcom/android/internal/app/ProcessStats$ServiceState;->mBoundState:I

    #@a
    .line 3462
    iput v0, p0, Lcom/android/internal/app/ProcessStats$ServiceState;->mExecState:I

    #@c
    .line 3468
    iput-object p2, p0, Lcom/android/internal/app/ProcessStats$ServiceState;->mPackage:Ljava/lang/String;

    #@e
    .line 3469
    iput-object p4, p0, Lcom/android/internal/app/ProcessStats$ServiceState;->mProcessName:Ljava/lang/String;

    #@10
    .line 3470
    iput-object p5, p0, Lcom/android/internal/app/ProcessStats$ServiceState;->mProc:Lcom/android/internal/app/ProcessStats$ProcessState;

    #@12
    .line 3466
    return-void
.end method

.method private getDuration(IIJIJ)J
    .locals 6
    .param p1, "opType"    # I
    .param p2, "curState"    # I
    .param p3, "startTime"    # J
    .param p5, "memFactor"    # I
    .param p6, "now"    # J

    #@0
    .prologue
    .line 3695
    mul-int/lit8 v1, p5, 0x4

    #@2
    add-int v0, p1, v1

    #@4
    .line 3696
    .local v0, "state":I
    invoke-virtual {p0, v0, p6, p7}, Lcom/android/internal/app/ProcessStats$ServiceState;->getDuration(IJ)J

    #@7
    move-result-wide v2

    #@8
    .line 3697
    .local v2, "time":J
    if-ne p2, p5, :cond_0

    #@a
    .line 3698
    sub-long v4, p6, p3

    #@c
    add-long/2addr v2, v4

    #@d
    .line 3700
    :cond_0
    return-wide v2
.end method

.method private updateRunning(IJ)V
    .locals 4
    .param p1, "memFactor"    # I
    .param p2, "now"    # J

    #@0
    .prologue
    const/4 v2, -0x1

    #@1
    .line 3606
    iget v1, p0, Lcom/android/internal/app/ProcessStats$ServiceState;->mStartedState:I

    #@3
    if-ne v1, v2, :cond_0

    #@5
    iget v1, p0, Lcom/android/internal/app/ProcessStats$ServiceState;->mBoundState:I

    #@7
    if-eq v1, v2, :cond_3

    #@9
    .line 3607
    :cond_0
    move v0, p1

    #@a
    .line 3608
    .local v0, "state":I
    :goto_0
    iget v1, p0, Lcom/android/internal/app/ProcessStats$ServiceState;->mRunState:I

    #@c
    if-eq v1, v0, :cond_2

    #@e
    .line 3609
    iget v1, p0, Lcom/android/internal/app/ProcessStats$ServiceState;->mRunState:I

    #@10
    if-eq v1, v2, :cond_4

    #@12
    .line 3610
    iget v1, p0, Lcom/android/internal/app/ProcessStats$ServiceState;->mRunState:I

    #@14
    mul-int/lit8 v1, v1, 0x4

    #@16
    add-int/lit8 v1, v1, 0x0

    #@18
    .line 3611
    iget-wide v2, p0, Lcom/android/internal/app/ProcessStats$ServiceState;->mRunStartTime:J

    #@1a
    sub-long v2, p2, v2

    #@1c
    .line 3610
    invoke-virtual {p0, v1, v2, v3}, Lcom/android/internal/app/ProcessStats$ServiceState;->addDuration(IJ)V

    #@1f
    .line 3615
    :cond_1
    :goto_1
    iput v0, p0, Lcom/android/internal/app/ProcessStats$ServiceState;->mRunState:I

    #@21
    .line 3616
    iput-wide p2, p0, Lcom/android/internal/app/ProcessStats$ServiceState;->mRunStartTime:J

    #@23
    .line 3605
    :cond_2
    return-void

    #@24
    .line 3607
    .end local v0    # "state":I
    :cond_3
    iget v1, p0, Lcom/android/internal/app/ProcessStats$ServiceState;->mExecState:I

    #@26
    if-ne v1, v2, :cond_0

    #@28
    const/4 v0, -0x1

    #@29
    .restart local v0    # "state":I
    goto :goto_0

    #@2a
    .line 3612
    :cond_4
    if-eq v0, v2, :cond_1

    #@2c
    .line 3613
    iget v1, p0, Lcom/android/internal/app/ProcessStats$ServiceState;->mRunCount:I

    #@2e
    add-int/lit8 v1, v1, 0x1

    #@30
    iput v1, p0, Lcom/android/internal/app/ProcessStats$ServiceState;->mRunCount:I

    #@32
    goto :goto_1
.end method


# virtual methods
.method add(Lcom/android/internal/app/ProcessStats$ServiceState;)V
    .locals 2
    .param p1, "other"    # Lcom/android/internal/app/ProcessStats$ServiceState;

    #@0
    .prologue
    .line 3550
    invoke-virtual {p0, p1}, Lcom/android/internal/app/ProcessStats$ServiceState;->addDurations(Lcom/android/internal/app/ProcessStats$DurationsTable;)V

    #@3
    .line 3551
    iget v0, p0, Lcom/android/internal/app/ProcessStats$ServiceState;->mRunCount:I

    #@5
    iget v1, p1, Lcom/android/internal/app/ProcessStats$ServiceState;->mRunCount:I

    #@7
    add-int/2addr v0, v1

    #@8
    iput v0, p0, Lcom/android/internal/app/ProcessStats$ServiceState;->mRunCount:I

    #@a
    .line 3552
    iget v0, p0, Lcom/android/internal/app/ProcessStats$ServiceState;->mStartedCount:I

    #@c
    iget v1, p1, Lcom/android/internal/app/ProcessStats$ServiceState;->mStartedCount:I

    #@e
    add-int/2addr v0, v1

    #@f
    iput v0, p0, Lcom/android/internal/app/ProcessStats$ServiceState;->mStartedCount:I

    #@11
    .line 3553
    iget v0, p0, Lcom/android/internal/app/ProcessStats$ServiceState;->mBoundCount:I

    #@13
    iget v1, p1, Lcom/android/internal/app/ProcessStats$ServiceState;->mBoundCount:I

    #@15
    add-int/2addr v0, v1

    #@16
    iput v0, p0, Lcom/android/internal/app/ProcessStats$ServiceState;->mBoundCount:I

    #@18
    .line 3554
    iget v0, p0, Lcom/android/internal/app/ProcessStats$ServiceState;->mExecCount:I

    #@1a
    iget v1, p1, Lcom/android/internal/app/ProcessStats$ServiceState;->mExecCount:I

    #@1c
    add-int/2addr v0, v1

    #@1d
    iput v0, p0, Lcom/android/internal/app/ProcessStats$ServiceState;->mExecCount:I

    #@1f
    .line 3549
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
    .line 3474
    iget-object v2, p0, Lcom/android/internal/app/ProcessStats$ServiceState;->mOwner:Ljava/lang/Object;

    #@4
    if-eq v2, p1, :cond_0

    #@6
    .line 3475
    iget-object v2, p0, Lcom/android/internal/app/ProcessStats$ServiceState;->mOwner:Ljava/lang/Object;

    #@8
    if-nez v2, :cond_1

    #@a
    .line 3476
    iput-object p1, p0, Lcom/android/internal/app/ProcessStats$ServiceState;->mOwner:Ljava/lang/Object;

    #@c
    .line 3477
    iget-object v2, p0, Lcom/android/internal/app/ProcessStats$ServiceState;->mProc:Lcom/android/internal/app/ProcessStats$ProcessState;

    #@e
    iget-object v3, p0, Lcom/android/internal/app/ProcessStats$ServiceState;->mName:Ljava/lang/String;

    #@10
    invoke-virtual {v2, v3}, Lcom/android/internal/app/ProcessStats$ProcessState;->incActiveServices(Ljava/lang/String;)V

    #@13
    .line 3473
    :cond_0
    :goto_0
    return-void

    #@14
    .line 3481
    :cond_1
    iput-object p1, p0, Lcom/android/internal/app/ProcessStats$ServiceState;->mOwner:Ljava/lang/Object;

    #@16
    .line 3482
    iget-boolean v2, p0, Lcom/android/internal/app/ProcessStats$ServiceState;->mStarted:Z

    #@18
    if-nez v2, :cond_2

    #@1a
    iget v2, p0, Lcom/android/internal/app/ProcessStats$ServiceState;->mBoundState:I

    #@1c
    if-eq v2, v4, :cond_5

    #@1e
    .line 3483
    :cond_2
    :goto_1
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    #@21
    move-result-wide v0

    #@22
    .line 3484
    .local v0, "now":J
    iget-boolean v2, p0, Lcom/android/internal/app/ProcessStats$ServiceState;->mStarted:Z

    #@24
    if-eqz v2, :cond_3

    #@26
    .line 3488
    invoke-virtual {p0, v3, v3, v0, v1}, Lcom/android/internal/app/ProcessStats$ServiceState;->setStarted(ZIJ)V

    #@29
    .line 3490
    :cond_3
    iget v2, p0, Lcom/android/internal/app/ProcessStats$ServiceState;->mBoundState:I

    #@2b
    if-eq v2, v4, :cond_4

    #@2d
    .line 3494
    invoke-virtual {p0, v3, v3, v0, v1}, Lcom/android/internal/app/ProcessStats$ServiceState;->setBound(ZIJ)V

    #@30
    .line 3496
    :cond_4
    iget v2, p0, Lcom/android/internal/app/ProcessStats$ServiceState;->mExecState:I

    #@32
    if-eq v2, v4, :cond_0

    #@34
    .line 3500
    invoke-virtual {p0, v3, v3, v0, v1}, Lcom/android/internal/app/ProcessStats$ServiceState;->setExecuting(ZIJ)V

    #@37
    goto :goto_0

    #@38
    .line 3482
    .end local v0    # "now":J
    :cond_5
    iget v2, p0, Lcom/android/internal/app/ProcessStats$ServiceState;->mExecState:I

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
    .line 3508
    iget-object v2, p0, Lcom/android/internal/app/ProcessStats$ServiceState;->mOwner:Ljava/lang/Object;

    #@4
    if-ne v2, p1, :cond_7

    #@6
    .line 3509
    iget-object v2, p0, Lcom/android/internal/app/ProcessStats$ServiceState;->mProc:Lcom/android/internal/app/ProcessStats$ProcessState;

    #@8
    iget-object v3, p0, Lcom/android/internal/app/ProcessStats$ServiceState;->mName:Ljava/lang/String;

    #@a
    invoke-virtual {v2, v3}, Lcom/android/internal/app/ProcessStats$ProcessState;->decActiveServices(Ljava/lang/String;)V

    #@d
    .line 3510
    iget-boolean v2, p0, Lcom/android/internal/app/ProcessStats$ServiceState;->mStarted:Z

    #@f
    if-nez v2, :cond_0

    #@11
    iget v2, p0, Lcom/android/internal/app/ProcessStats$ServiceState;->mBoundState:I

    #@13
    if-eq v2, v6, :cond_8

    #@15
    .line 3511
    :cond_0
    :goto_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    #@18
    move-result-wide v0

    #@19
    .line 3512
    .local v0, "now":J
    iget-boolean v2, p0, Lcom/android/internal/app/ProcessStats$ServiceState;->mStarted:Z

    #@1b
    if-eqz v2, :cond_2

    #@1d
    .line 3513
    if-nez p2, :cond_1

    #@1f
    .line 3514
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
    .line 3515
    const-string/jumbo v4, " cleared while started: pkg="

    #@35
    .line 3514
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@38
    move-result-object v3

    #@39
    .line 3515
    iget-object v4, p0, Lcom/android/internal/app/ProcessStats$ServiceState;->mPackage:Ljava/lang/String;

    #@3b
    .line 3514
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3e
    move-result-object v3

    #@3f
    .line 3515
    const-string/jumbo v4, " service="

    #@42
    .line 3514
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@45
    move-result-object v3

    #@46
    .line 3516
    iget-object v4, p0, Lcom/android/internal/app/ProcessStats$ServiceState;->mName:Ljava/lang/String;

    #@48
    .line 3514
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4b
    move-result-object v3

    #@4c
    .line 3516
    const-string/jumbo v4, " proc="

    #@4f
    .line 3514
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@52
    move-result-object v3

    #@53
    .line 3516
    iget-object v4, p0, Lcom/android/internal/app/ProcessStats$ServiceState;->mProc:Lcom/android/internal/app/ProcessStats$ProcessState;

    #@55
    .line 3514
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
    .line 3518
    :cond_1
    invoke-virtual {p0, v5, v5, v0, v1}, Lcom/android/internal/app/ProcessStats$ServiceState;->setStarted(ZIJ)V

    #@63
    .line 3520
    :cond_2
    iget v2, p0, Lcom/android/internal/app/ProcessStats$ServiceState;->mBoundState:I

    #@65
    if-eq v2, v6, :cond_4

    #@67
    .line 3521
    if-nez p2, :cond_3

    #@69
    .line 3522
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
    .line 3523
    const-string/jumbo v4, " cleared while bound: pkg="

    #@7f
    .line 3522
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@82
    move-result-object v3

    #@83
    .line 3523
    iget-object v4, p0, Lcom/android/internal/app/ProcessStats$ServiceState;->mPackage:Ljava/lang/String;

    #@85
    .line 3522
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@88
    move-result-object v3

    #@89
    .line 3523
    const-string/jumbo v4, " service="

    #@8c
    .line 3522
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@8f
    move-result-object v3

    #@90
    .line 3524
    iget-object v4, p0, Lcom/android/internal/app/ProcessStats$ServiceState;->mName:Ljava/lang/String;

    #@92
    .line 3522
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@95
    move-result-object v3

    #@96
    .line 3524
    const-string/jumbo v4, " proc="

    #@99
    .line 3522
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@9c
    move-result-object v3

    #@9d
    .line 3524
    iget-object v4, p0, Lcom/android/internal/app/ProcessStats$ServiceState;->mProc:Lcom/android/internal/app/ProcessStats$ProcessState;

    #@9f
    .line 3522
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
    .line 3526
    :cond_3
    invoke-virtual {p0, v5, v5, v0, v1}, Lcom/android/internal/app/ProcessStats$ServiceState;->setBound(ZIJ)V

    #@ad
    .line 3528
    :cond_4
    iget v2, p0, Lcom/android/internal/app/ProcessStats$ServiceState;->mExecState:I

    #@af
    if-eq v2, v6, :cond_6

    #@b1
    .line 3529
    if-nez p2, :cond_5

    #@b3
    .line 3530
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
    .line 3531
    const-string/jumbo v4, " cleared while exec: pkg="

    #@c9
    .line 3530
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@cc
    move-result-object v3

    #@cd
    .line 3531
    iget-object v4, p0, Lcom/android/internal/app/ProcessStats$ServiceState;->mPackage:Ljava/lang/String;

    #@cf
    .line 3530
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@d2
    move-result-object v3

    #@d3
    .line 3531
    const-string/jumbo v4, " service="

    #@d6
    .line 3530
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@d9
    move-result-object v3

    #@da
    .line 3532
    iget-object v4, p0, Lcom/android/internal/app/ProcessStats$ServiceState;->mName:Ljava/lang/String;

    #@dc
    .line 3530
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@df
    move-result-object v3

    #@e0
    .line 3532
    const-string/jumbo v4, " proc="

    #@e3
    .line 3530
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@e6
    move-result-object v3

    #@e7
    .line 3532
    iget-object v4, p0, Lcom/android/internal/app/ProcessStats$ServiceState;->mProc:Lcom/android/internal/app/ProcessStats$ProcessState;

    #@e9
    .line 3530
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
    .line 3534
    :cond_5
    invoke-virtual {p0, v5, v5, v0, v1}, Lcom/android/internal/app/ProcessStats$ServiceState;->setExecuting(ZIJ)V

    #@f7
    .line 3537
    .end local v0    # "now":J
    :cond_6
    const/4 v2, 0x0

    #@f8
    iput-object v2, p0, Lcom/android/internal/app/ProcessStats$ServiceState;->mOwner:Ljava/lang/Object;

    #@fa
    .line 3507
    :cond_7
    return-void

    #@fb
    .line 3510
    :cond_8
    iget v2, p0, Lcom/android/internal/app/ProcessStats$ServiceState;->mExecState:I

    #@fd
    if-eq v2, v6, :cond_6

    #@ff
    goto/16 :goto_0
.end method

.method commitStateTime(J)V
    .locals 5
    .param p1, "now"    # J

    #@0
    .prologue
    const/4 v1, -0x1

    #@1
    .line 3586
    iget v0, p0, Lcom/android/internal/app/ProcessStats$ServiceState;->mRunState:I

    #@3
    if-eq v0, v1, :cond_0

    #@5
    .line 3587
    iget v0, p0, Lcom/android/internal/app/ProcessStats$ServiceState;->mRunState:I

    #@7
    mul-int/lit8 v0, v0, 0x4

    #@9
    add-int/lit8 v0, v0, 0x0

    #@b
    iget-wide v2, p0, Lcom/android/internal/app/ProcessStats$ServiceState;->mRunStartTime:J

    #@d
    sub-long v2, p1, v2

    #@f
    invoke-virtual {p0, v0, v2, v3}, Lcom/android/internal/app/ProcessStats$ServiceState;->addDuration(IJ)V

    #@12
    .line 3588
    iput-wide p1, p0, Lcom/android/internal/app/ProcessStats$ServiceState;->mRunStartTime:J

    #@14
    .line 3590
    :cond_0
    iget v0, p0, Lcom/android/internal/app/ProcessStats$ServiceState;->mStartedState:I

    #@16
    if-eq v0, v1, :cond_1

    #@18
    .line 3591
    iget v0, p0, Lcom/android/internal/app/ProcessStats$ServiceState;->mStartedState:I

    #@1a
    mul-int/lit8 v0, v0, 0x4

    #@1c
    add-int/lit8 v0, v0, 0x1

    #@1e
    .line 3592
    iget-wide v2, p0, Lcom/android/internal/app/ProcessStats$ServiceState;->mStartedStartTime:J

    #@20
    sub-long v2, p1, v2

    #@22
    .line 3591
    invoke-virtual {p0, v0, v2, v3}, Lcom/android/internal/app/ProcessStats$ServiceState;->addDuration(IJ)V

    #@25
    .line 3593
    iput-wide p1, p0, Lcom/android/internal/app/ProcessStats$ServiceState;->mStartedStartTime:J

    #@27
    .line 3595
    :cond_1
    iget v0, p0, Lcom/android/internal/app/ProcessStats$ServiceState;->mBoundState:I

    #@29
    if-eq v0, v1, :cond_2

    #@2b
    .line 3596
    iget v0, p0, Lcom/android/internal/app/ProcessStats$ServiceState;->mBoundState:I

    #@2d
    mul-int/lit8 v0, v0, 0x4

    #@2f
    add-int/lit8 v0, v0, 0x2

    #@31
    iget-wide v2, p0, Lcom/android/internal/app/ProcessStats$ServiceState;->mBoundStartTime:J

    #@33
    sub-long v2, p1, v2

    #@35
    invoke-virtual {p0, v0, v2, v3}, Lcom/android/internal/app/ProcessStats$ServiceState;->addDuration(IJ)V

    #@38
    .line 3597
    iput-wide p1, p0, Lcom/android/internal/app/ProcessStats$ServiceState;->mBoundStartTime:J

    #@3a
    .line 3599
    :cond_2
    iget v0, p0, Lcom/android/internal/app/ProcessStats$ServiceState;->mExecState:I

    #@3c
    if-eq v0, v1, :cond_3

    #@3e
    .line 3600
    iget v0, p0, Lcom/android/internal/app/ProcessStats$ServiceState;->mExecState:I

    #@40
    mul-int/lit8 v0, v0, 0x4

    #@42
    add-int/lit8 v0, v0, 0x3

    #@44
    iget-wide v2, p0, Lcom/android/internal/app/ProcessStats$ServiceState;->mExecStartTime:J

    #@46
    sub-long v2, p1, v2

    #@48
    invoke-virtual {p0, v0, v2, v3}, Lcom/android/internal/app/ProcessStats$ServiceState;->addDuration(IJ)V

    #@4b
    .line 3601
    iput-wide p1, p0, Lcom/android/internal/app/ProcessStats$ServiceState;->mExecStartTime:J

    #@4d
    .line 3585
    :cond_3
    return-void
.end method

.method public isInUse()Z
    .locals 1

    #@0
    .prologue
    .line 3542
    iget-object v0, p0, Lcom/android/internal/app/ProcessStats$ServiceState;->mOwner:Ljava/lang/Object;

    #@2
    if-nez v0, :cond_0

    #@4
    iget-boolean v0, p0, Lcom/android/internal/app/ProcessStats$ServiceState;->mRestarting:Z

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
    .line 3546
    iget-boolean v0, p0, Lcom/android/internal/app/ProcessStats$ServiceState;->mRestarting:Z

    #@2
    return v0
.end method

.method readFromParcel(Landroid/os/Parcel;)Z
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    #@0
    .prologue
    .line 3575
    invoke-virtual {p0, p1}, Lcom/android/internal/app/ProcessStats$ServiceState;->readDurationsFromParcel(Landroid/os/Parcel;)Z

    #@3
    move-result v0

    #@4
    if-nez v0, :cond_0

    #@6
    .line 3576
    const/4 v0, 0x0

    #@7
    return v0

    #@8
    .line 3578
    :cond_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@b
    move-result v0

    #@c
    iput v0, p0, Lcom/android/internal/app/ProcessStats$ServiceState;->mRunCount:I

    #@e
    .line 3579
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@11
    move-result v0

    #@12
    iput v0, p0, Lcom/android/internal/app/ProcessStats$ServiceState;->mStartedCount:I

    #@14
    .line 3580
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@17
    move-result v0

    #@18
    iput v0, p0, Lcom/android/internal/app/ProcessStats$ServiceState;->mBoundCount:I

    #@1a
    .line 3581
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@1d
    move-result v0

    #@1e
    iput v0, p0, Lcom/android/internal/app/ProcessStats$ServiceState;->mExecCount:I

    #@20
    .line 3582
    const/4 v0, 0x1

    #@21
    return v0
.end method

.method resetSafely(J)V
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
    .line 3558
    invoke-virtual {p0}, Lcom/android/internal/app/ProcessStats$ServiceState;->resetDurationsSafely()V

    #@6
    .line 3559
    iget v0, p0, Lcom/android/internal/app/ProcessStats$ServiceState;->mRunState:I

    #@8
    if-eq v0, v3, :cond_0

    #@a
    move v0, v1

    #@b
    :goto_0
    iput v0, p0, Lcom/android/internal/app/ProcessStats$ServiceState;->mRunCount:I

    #@d
    .line 3560
    iget v0, p0, Lcom/android/internal/app/ProcessStats$ServiceState;->mStartedState:I

    #@f
    if-eq v0, v3, :cond_1

    #@11
    move v0, v1

    #@12
    :goto_1
    iput v0, p0, Lcom/android/internal/app/ProcessStats$ServiceState;->mStartedCount:I

    #@14
    .line 3561
    iget v0, p0, Lcom/android/internal/app/ProcessStats$ServiceState;->mBoundState:I

    #@16
    if-eq v0, v3, :cond_2

    #@18
    move v0, v1

    #@19
    :goto_2
    iput v0, p0, Lcom/android/internal/app/ProcessStats$ServiceState;->mBoundCount:I

    #@1b
    .line 3562
    iget v0, p0, Lcom/android/internal/app/ProcessStats$ServiceState;->mExecState:I

    #@1d
    if-eq v0, v3, :cond_3

    #@1f
    :goto_3
    iput v1, p0, Lcom/android/internal/app/ProcessStats$ServiceState;->mExecCount:I

    #@21
    .line 3563
    iput-wide p1, p0, Lcom/android/internal/app/ProcessStats$ServiceState;->mExecStartTime:J

    #@23
    iput-wide p1, p0, Lcom/android/internal/app/ProcessStats$ServiceState;->mBoundStartTime:J

    #@25
    iput-wide p1, p0, Lcom/android/internal/app/ProcessStats$ServiceState;->mStartedStartTime:J

    #@27
    iput-wide p1, p0, Lcom/android/internal/app/ProcessStats$ServiceState;->mRunStartTime:J

    #@29
    .line 3557
    return-void

    #@2a
    :cond_0
    move v0, v2

    #@2b
    .line 3559
    goto :goto_0

    #@2c
    :cond_1
    move v0, v2

    #@2d
    .line 3560
    goto :goto_1

    #@2e
    :cond_2
    move v0, v2

    #@2f
    .line 3561
    goto :goto_2

    #@30
    :cond_3
    move v1, v2

    #@31
    .line 3562
    goto :goto_3
.end method

.method public setBound(ZIJ)V
    .locals 5
    .param p1, "bound"    # Z
    .param p2, "memFactor"    # I
    .param p3, "now"    # J

    #@0
    .prologue
    .line 3659
    iget-object v1, p0, Lcom/android/internal/app/ProcessStats$ServiceState;->mOwner:Ljava/lang/Object;

    #@2
    if-nez v1, :cond_0

    #@4
    .line 3660
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
    .line 3662
    :cond_0
    if-eqz p1, :cond_3

    #@27
    move v0, p2

    #@28
    .line 3663
    .local v0, "state":I
    :goto_0
    iget v1, p0, Lcom/android/internal/app/ProcessStats$ServiceState;->mBoundState:I

    #@2a
    if-eq v1, v0, :cond_2

    #@2c
    .line 3664
    iget v1, p0, Lcom/android/internal/app/ProcessStats$ServiceState;->mBoundState:I

    #@2e
    const/4 v2, -0x1

    #@2f
    if-eq v1, v2, :cond_4

    #@31
    .line 3665
    iget v1, p0, Lcom/android/internal/app/ProcessStats$ServiceState;->mBoundState:I

    #@33
    mul-int/lit8 v1, v1, 0x4

    #@35
    add-int/lit8 v1, v1, 0x2

    #@37
    .line 3666
    iget-wide v2, p0, Lcom/android/internal/app/ProcessStats$ServiceState;->mBoundStartTime:J

    #@39
    sub-long v2, p3, v2

    #@3b
    .line 3665
    invoke-virtual {p0, v1, v2, v3}, Lcom/android/internal/app/ProcessStats$ServiceState;->addDuration(IJ)V

    #@3e
    .line 3670
    :cond_1
    :goto_1
    iput v0, p0, Lcom/android/internal/app/ProcessStats$ServiceState;->mBoundState:I

    #@40
    .line 3671
    iput-wide p3, p0, Lcom/android/internal/app/ProcessStats$ServiceState;->mBoundStartTime:J

    #@42
    .line 3672
    invoke-direct {p0, p2, p3, p4}, Lcom/android/internal/app/ProcessStats$ServiceState;->updateRunning(IJ)V

    #@45
    .line 3658
    :cond_2
    return-void

    #@46
    .line 3662
    .end local v0    # "state":I
    :cond_3
    const/4 v0, -0x1

    #@47
    .restart local v0    # "state":I
    goto :goto_0

    #@48
    .line 3667
    :cond_4
    if-eqz p1, :cond_1

    #@4a
    .line 3668
    iget v1, p0, Lcom/android/internal/app/ProcessStats$ServiceState;->mBoundCount:I

    #@4c
    add-int/lit8 v1, v1, 0x1

    #@4e
    iput v1, p0, Lcom/android/internal/app/ProcessStats$ServiceState;->mBoundCount:I

    #@50
    goto :goto_1
.end method

.method public setExecuting(ZIJ)V
    .locals 5
    .param p1, "executing"    # Z
    .param p2, "memFactor"    # I
    .param p3, "now"    # J

    #@0
    .prologue
    .line 3677
    iget-object v1, p0, Lcom/android/internal/app/ProcessStats$ServiceState;->mOwner:Ljava/lang/Object;

    #@2
    if-nez v1, :cond_0

    #@4
    .line 3678
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
    .line 3680
    :cond_0
    if-eqz p1, :cond_3

    #@27
    move v0, p2

    #@28
    .line 3681
    .local v0, "state":I
    :goto_0
    iget v1, p0, Lcom/android/internal/app/ProcessStats$ServiceState;->mExecState:I

    #@2a
    if-eq v1, v0, :cond_2

    #@2c
    .line 3682
    iget v1, p0, Lcom/android/internal/app/ProcessStats$ServiceState;->mExecState:I

    #@2e
    const/4 v2, -0x1

    #@2f
    if-eq v1, v2, :cond_4

    #@31
    .line 3683
    iget v1, p0, Lcom/android/internal/app/ProcessStats$ServiceState;->mExecState:I

    #@33
    mul-int/lit8 v1, v1, 0x4

    #@35
    add-int/lit8 v1, v1, 0x3

    #@37
    iget-wide v2, p0, Lcom/android/internal/app/ProcessStats$ServiceState;->mExecStartTime:J

    #@39
    sub-long v2, p3, v2

    #@3b
    invoke-virtual {p0, v1, v2, v3}, Lcom/android/internal/app/ProcessStats$ServiceState;->addDuration(IJ)V

    #@3e
    .line 3687
    :cond_1
    :goto_1
    iput v0, p0, Lcom/android/internal/app/ProcessStats$ServiceState;->mExecState:I

    #@40
    .line 3688
    iput-wide p3, p0, Lcom/android/internal/app/ProcessStats$ServiceState;->mExecStartTime:J

    #@42
    .line 3689
    invoke-direct {p0, p2, p3, p4}, Lcom/android/internal/app/ProcessStats$ServiceState;->updateRunning(IJ)V

    #@45
    .line 3676
    :cond_2
    return-void

    #@46
    .line 3680
    .end local v0    # "state":I
    :cond_3
    const/4 v0, -0x1

    #@47
    .restart local v0    # "state":I
    goto :goto_0

    #@48
    .line 3684
    :cond_4
    if-eqz p1, :cond_1

    #@4a
    .line 3685
    iget v1, p0, Lcom/android/internal/app/ProcessStats$ServiceState;->mExecCount:I

    #@4c
    add-int/lit8 v1, v1, 0x1

    #@4e
    iput v1, p0, Lcom/android/internal/app/ProcessStats$ServiceState;->mExecCount:I

    #@50
    goto :goto_1
.end method

.method public setRestarting(ZIJ)V
    .locals 1
    .param p1, "restarting"    # Z
    .param p2, "memFactor"    # I
    .param p3, "now"    # J

    #@0
    .prologue
    .line 3629
    iput-boolean p1, p0, Lcom/android/internal/app/ProcessStats$ServiceState;->mRestarting:Z

    #@2
    .line 3630
    invoke-virtual {p0, p2, p3, p4}, Lcom/android/internal/app/ProcessStats$ServiceState;->updateStartedState(IJ)V

    #@5
    .line 3628
    return-void
.end method

.method public setStarted(ZIJ)V
    .locals 3
    .param p1, "started"    # Z
    .param p2, "memFactor"    # I
    .param p3, "now"    # J

    #@0
    .prologue
    .line 3621
    iget-object v0, p0, Lcom/android/internal/app/ProcessStats$ServiceState;->mOwner:Ljava/lang/Object;

    #@2
    if-nez v0, :cond_0

    #@4
    .line 3622
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
    .line 3624
    :cond_0
    iput-boolean p1, p0, Lcom/android/internal/app/ProcessStats$ServiceState;->mStarted:Z

    #@27
    .line 3625
    invoke-virtual {p0, p2, p3, p4}, Lcom/android/internal/app/ProcessStats$ServiceState;->updateStartedState(IJ)V

    #@2a
    .line 3620
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    #@0
    .prologue
    .line 3704
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
    .line 3705
    const-string/jumbo v1, " "

    #@1b
    .line 3704
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1e
    move-result-object v0

    #@1f
    .line 3705
    iget-object v1, p0, Lcom/android/internal/app/ProcessStats$ServiceState;->mName:Ljava/lang/String;

    #@21
    .line 3704
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@24
    move-result-object v0

    #@25
    .line 3705
    const-string/jumbo v1, " pkg="

    #@28
    .line 3704
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2b
    move-result-object v0

    #@2c
    .line 3705
    iget-object v1, p0, Lcom/android/internal/app/ProcessStats$ServiceState;->mPackage:Ljava/lang/String;

    #@2e
    .line 3704
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@31
    move-result-object v0

    #@32
    .line 3705
    const-string/jumbo v1, " proc="

    #@35
    .line 3704
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@38
    move-result-object v0

    #@39
    .line 3706
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    #@3c
    move-result v1

    #@3d
    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    #@40
    move-result-object v1

    #@41
    .line 3704
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@44
    move-result-object v0

    #@45
    .line 3706
    const-string/jumbo v1, "}"

    #@48
    .line 3704
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

.method updateStartedState(IJ)V
    .locals 6
    .param p1, "memFactor"    # I
    .param p2, "now"    # J

    #@0
    .prologue
    const/4 v4, -0x1

    #@1
    .line 3634
    iget v3, p0, Lcom/android/internal/app/ProcessStats$ServiceState;->mStartedState:I

    #@3
    if-eq v3, v4, :cond_3

    #@5
    const/4 v2, 0x1

    #@6
    .line 3635
    .local v2, "wasStarted":Z
    :goto_0
    iget-boolean v3, p0, Lcom/android/internal/app/ProcessStats$ServiceState;->mStarted:Z

    #@8
    if-nez v3, :cond_4

    #@a
    iget-boolean v0, p0, Lcom/android/internal/app/ProcessStats$ServiceState;->mRestarting:Z

    #@c
    .line 3636
    :goto_1
    if-eqz v0, :cond_5

    #@e
    move v1, p1

    #@f
    .line 3637
    .local v1, "state":I
    :goto_2
    iget v3, p0, Lcom/android/internal/app/ProcessStats$ServiceState;->mStartedState:I

    #@11
    if-eq v3, v1, :cond_2

    #@13
    .line 3638
    iget v3, p0, Lcom/android/internal/app/ProcessStats$ServiceState;->mStartedState:I

    #@15
    if-eq v3, v4, :cond_6

    #@17
    .line 3639
    iget v3, p0, Lcom/android/internal/app/ProcessStats$ServiceState;->mStartedState:I

    #@19
    mul-int/lit8 v3, v3, 0x4

    #@1b
    add-int/lit8 v3, v3, 0x1

    #@1d
    .line 3640
    iget-wide v4, p0, Lcom/android/internal/app/ProcessStats$ServiceState;->mStartedStartTime:J

    #@1f
    sub-long v4, p2, v4

    #@21
    .line 3639
    invoke-virtual {p0, v3, v4, v5}, Lcom/android/internal/app/ProcessStats$ServiceState;->addDuration(IJ)V

    #@24
    .line 3644
    :cond_0
    :goto_3
    iput v1, p0, Lcom/android/internal/app/ProcessStats$ServiceState;->mStartedState:I

    #@26
    .line 3645
    iput-wide p2, p0, Lcom/android/internal/app/ProcessStats$ServiceState;->mStartedStartTime:J

    #@28
    .line 3646
    iget-object v3, p0, Lcom/android/internal/app/ProcessStats$ServiceState;->mProc:Lcom/android/internal/app/ProcessStats$ProcessState;

    #@2a
    iget-object v4, p0, Lcom/android/internal/app/ProcessStats$ServiceState;->mPackage:Ljava/lang/String;

    #@2c
    invoke-virtual {v3, v4}, Lcom/android/internal/app/ProcessStats$ProcessState;->pullFixedProc(Ljava/lang/String;)Lcom/android/internal/app/ProcessStats$ProcessState;

    #@2f
    move-result-object v3

    #@30
    iput-object v3, p0, Lcom/android/internal/app/ProcessStats$ServiceState;->mProc:Lcom/android/internal/app/ProcessStats$ProcessState;

    #@32
    .line 3647
    if-eq v2, v0, :cond_1

    #@34
    .line 3648
    if-eqz v0, :cond_7

    #@36
    .line 3649
    iget-object v3, p0, Lcom/android/internal/app/ProcessStats$ServiceState;->mProc:Lcom/android/internal/app/ProcessStats$ProcessState;

    #@38
    iget-object v4, p0, Lcom/android/internal/app/ProcessStats$ServiceState;->mName:Ljava/lang/String;

    #@3a
    invoke-virtual {v3, p1, p2, p3, v4}, Lcom/android/internal/app/ProcessStats$ProcessState;->incStartedServices(IJLjava/lang/String;)V

    #@3d
    .line 3654
    :cond_1
    :goto_4
    invoke-direct {p0, p1, p2, p3}, Lcom/android/internal/app/ProcessStats$ServiceState;->updateRunning(IJ)V

    #@40
    .line 3633
    :cond_2
    return-void

    #@41
    .line 3634
    .end local v1    # "state":I
    .end local v2    # "wasStarted":Z
    :cond_3
    const/4 v2, 0x0

    #@42
    .restart local v2    # "wasStarted":Z
    goto :goto_0

    #@43
    .line 3635
    :cond_4
    const/4 v0, 0x1

    #@44
    .local v0, "started":Z
    goto :goto_1

    #@45
    .line 3636
    .end local v0    # "started":Z
    :cond_5
    const/4 v1, -0x1

    #@46
    .restart local v1    # "state":I
    goto :goto_2

    #@47
    .line 3641
    :cond_6
    if-eqz v0, :cond_0

    #@49
    .line 3642
    iget v3, p0, Lcom/android/internal/app/ProcessStats$ServiceState;->mStartedCount:I

    #@4b
    add-int/lit8 v3, v3, 0x1

    #@4d
    iput v3, p0, Lcom/android/internal/app/ProcessStats$ServiceState;->mStartedCount:I

    #@4f
    goto :goto_3

    #@50
    .line 3651
    :cond_7
    iget-object v3, p0, Lcom/android/internal/app/ProcessStats$ServiceState;->mProc:Lcom/android/internal/app/ProcessStats$ProcessState;

    #@52
    iget-object v4, p0, Lcom/android/internal/app/ProcessStats$ServiceState;->mName:Ljava/lang/String;

    #@54
    invoke-virtual {v3, p1, p2, p3, v4}, Lcom/android/internal/app/ProcessStats$ProcessState;->decStartedServices(IJLjava/lang/String;)V

    #@57
    goto :goto_4
.end method

.method writeToParcel(Landroid/os/Parcel;J)V
    .locals 1
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "now"    # J

    #@0
    .prologue
    .line 3567
    invoke-virtual {p0, p1}, Lcom/android/internal/app/ProcessStats$ServiceState;->writeDurationsToParcel(Landroid/os/Parcel;)V

    #@3
    .line 3568
    iget v0, p0, Lcom/android/internal/app/ProcessStats$ServiceState;->mRunCount:I

    #@5
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@8
    .line 3569
    iget v0, p0, Lcom/android/internal/app/ProcessStats$ServiceState;->mStartedCount:I

    #@a
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@d
    .line 3570
    iget v0, p0, Lcom/android/internal/app/ProcessStats$ServiceState;->mBoundCount:I

    #@f
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@12
    .line 3571
    iget v0, p0, Lcom/android/internal/app/ProcessStats$ServiceState;->mExecCount:I

    #@14
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@17
    .line 3566
    return-void
.end method
