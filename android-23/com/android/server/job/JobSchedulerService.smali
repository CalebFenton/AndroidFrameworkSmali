.class public Lcom/android/server/job/JobSchedulerService;
.super Lcom/android/server/SystemService;
.source "JobSchedulerService.java"

# interfaces
.implements Lcom/android/server/job/StateChangedListener;
.implements Lcom/android/server/job/JobCompletedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/job/JobSchedulerService$JobHandler;,
        Lcom/android/server/job/JobSchedulerService$JobSchedulerStub;,
        Lcom/android/server/job/JobSchedulerService$1;
    }
.end annotation


# static fields
.field static final DEBUG:Z = false

.field private static final MAX_JOB_CONTEXTS_COUNT:I

.field static final MIN_CHARGING_COUNT:I = 0x1

.field static final MIN_CONNECTIVITY_COUNT:I = 0x2

.field static final MIN_IDLE_COUNT:I = 0x1

.field static final MIN_READY_JOBS_COUNT:I = 0x2

.field static final MSG_CHECK_JOB:I = 0x1

.field static final MSG_JOB_EXPIRED:I = 0x0

.field static final TAG:Ljava/lang/String; = "JobSchedulerService"


# instance fields
.field final mActiveServices:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/server/job/JobServiceContext;",
            ">;"
        }
    .end annotation
.end field

.field mBatteryStats:Lcom/android/internal/app/IBatteryStats;

.field private final mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field mControllers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/server/job/controllers/StateController;",
            ">;"
        }
    .end annotation
.end field

.field mDeviceIdleMode:Z

.field final mHandler:Lcom/android/server/job/JobSchedulerService$JobHandler;

.field final mJobSchedulerStub:Lcom/android/server/job/JobSchedulerService$JobSchedulerStub;

.field final mJobs:Lcom/android/server/job/JobStore;

.field final mPendingJobs:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/job/controllers/JobStatus;",
            ">;"
        }
    .end annotation
.end field

.field mPowerManager:Landroid/os/PowerManager;

.field mReadyToRock:Z

.field final mStartedUsers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static synthetic -wrap0(Lcom/android/server/job/JobSchedulerService;Lcom/android/server/job/controllers/JobStatus;)Z
    .locals 1
    .param p1, "job"    # Lcom/android/server/job/controllers/JobStatus;

    #@0
    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/job/JobSchedulerService;->isCurrentlyActiveLocked(Lcom/android/server/job/controllers/JobStatus;)Z

    #@3
    move-result v0

    #@4
    return v0
.end method

.method static synthetic -wrap1(Lcom/android/server/job/JobSchedulerService;Lcom/android/server/job/controllers/JobStatus;)Z
    .locals 1
    .param p1, "job"    # Lcom/android/server/job/controllers/JobStatus;

    #@0
    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/job/JobSchedulerService;->stopJobOnServiceContextLocked(Lcom/android/server/job/controllers/JobStatus;)Z

    #@3
    move-result v0

    #@4
    return v0
.end method

.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 79
    invoke-static {}, Landroid/app/ActivityManager;->isLowRamDeviceStatic()Z

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_0

    #@6
    const/4 v0, 0x1

    #@7
    .line 78
    :goto_0
    sput v0, Lcom/android/server/job/JobSchedulerService;->MAX_JOB_CONTEXTS_COUNT:I

    #@9
    .line 74
    return-void

    #@a
    .line 79
    :cond_0
    const/4 v0, 0x3

    #@b
    goto :goto_0
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    #@0
    .prologue
    .line 314
    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    #@3
    .line 114
    new-instance v0, Ljava/util/ArrayList;

    #@5
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@8
    iput-object v0, p0, Lcom/android/server/job/JobSchedulerService;->mActiveServices:Ljava/util/List;

    #@a
    .line 121
    new-instance v0, Ljava/util/ArrayList;

    #@c
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@f
    iput-object v0, p0, Lcom/android/server/job/JobSchedulerService;->mPendingJobs:Ljava/util/ArrayList;

    #@11
    .line 123
    new-instance v0, Ljava/util/ArrayList;

    #@13
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@16
    iput-object v0, p0, Lcom/android/server/job/JobSchedulerService;->mStartedUsers:Ljava/util/ArrayList;

    #@18
    .line 145
    new-instance v0, Lcom/android/server/job/JobSchedulerService$1;

    #@1a
    invoke-direct {v0, p0}, Lcom/android/server/job/JobSchedulerService$1;-><init>(Lcom/android/server/job/JobSchedulerService;)V

    #@1d
    iput-object v0, p0, Lcom/android/server/job/JobSchedulerService;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    #@1f
    .line 316
    new-instance v0, Ljava/util/ArrayList;

    #@21
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@24
    iput-object v0, p0, Lcom/android/server/job/JobSchedulerService;->mControllers:Ljava/util/List;

    #@26
    .line 317
    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService;->mControllers:Ljava/util/List;

    #@28
    invoke-static {p0}, Lcom/android/server/job/controllers/ConnectivityController;->get(Lcom/android/server/job/JobSchedulerService;)Lcom/android/server/job/controllers/ConnectivityController;

    #@2b
    move-result-object v1

    #@2c
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@2f
    .line 318
    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService;->mControllers:Ljava/util/List;

    #@31
    invoke-static {p0}, Lcom/android/server/job/controllers/TimeController;->get(Lcom/android/server/job/JobSchedulerService;)Lcom/android/server/job/controllers/TimeController;

    #@34
    move-result-object v1

    #@35
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@38
    .line 319
    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService;->mControllers:Ljava/util/List;

    #@3a
    invoke-static {p0}, Lcom/android/server/job/controllers/IdleController;->get(Lcom/android/server/job/JobSchedulerService;)Lcom/android/server/job/controllers/IdleController;

    #@3d
    move-result-object v1

    #@3e
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@41
    .line 320
    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService;->mControllers:Ljava/util/List;

    #@43
    invoke-static {p0}, Lcom/android/server/job/controllers/BatteryController;->get(Lcom/android/server/job/JobSchedulerService;)Lcom/android/server/job/controllers/BatteryController;

    #@46
    move-result-object v1

    #@47
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@4a
    .line 321
    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService;->mControllers:Ljava/util/List;

    #@4c
    invoke-static {p0}, Lcom/android/server/job/controllers/AppIdleController;->get(Lcom/android/server/job/JobSchedulerService;)Lcom/android/server/job/controllers/AppIdleController;

    #@4f
    move-result-object v1

    #@50
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@53
    .line 323
    new-instance v0, Lcom/android/server/job/JobSchedulerService$JobHandler;

    #@55
    invoke-virtual {p1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    #@58
    move-result-object v1

    #@59
    invoke-direct {v0, p0, v1}, Lcom/android/server/job/JobSchedulerService$JobHandler;-><init>(Lcom/android/server/job/JobSchedulerService;Landroid/os/Looper;)V

    #@5c
    iput-object v0, p0, Lcom/android/server/job/JobSchedulerService;->mHandler:Lcom/android/server/job/JobSchedulerService$JobHandler;

    #@5e
    .line 324
    new-instance v0, Lcom/android/server/job/JobSchedulerService$JobSchedulerStub;

    #@60
    invoke-direct {v0, p0}, Lcom/android/server/job/JobSchedulerService$JobSchedulerStub;-><init>(Lcom/android/server/job/JobSchedulerService;)V

    #@63
    iput-object v0, p0, Lcom/android/server/job/JobSchedulerService;->mJobSchedulerStub:Lcom/android/server/job/JobSchedulerService$JobSchedulerStub;

    #@65
    .line 325
    invoke-static {p0}, Lcom/android/server/job/JobStore;->initAndGet(Lcom/android/server/job/JobSchedulerService;)Lcom/android/server/job/JobStore;

    #@68
    move-result-object v0

    #@69
    iput-object v0, p0, Lcom/android/server/job/JobSchedulerService;->mJobs:Lcom/android/server/job/JobStore;

    #@6b
    .line 313
    return-void
.end method

.method private cancelJobImpl(Lcom/android/server/job/controllers/JobStatus;)V
    .locals 2
    .param p1, "cancelled"    # Lcom/android/server/job/controllers/JobStatus;

    #@0
    .prologue
    .line 261
    invoke-direct {p0, p1}, Lcom/android/server/job/JobSchedulerService;->stopTrackingJob(Lcom/android/server/job/controllers/JobStatus;)Z

    #@3
    .line 262
    iget-object v1, p0, Lcom/android/server/job/JobSchedulerService;->mJobs:Lcom/android/server/job/JobStore;

    #@5
    monitor-enter v1

    #@6
    .line 264
    :try_start_0
    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService;->mPendingJobs:Ljava/util/ArrayList;

    #@8
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    #@b
    .line 266
    invoke-direct {p0, p1}, Lcom/android/server/job/JobSchedulerService;->stopJobOnServiceContextLocked(Lcom/android/server/job/controllers/JobStatus;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@e
    monitor-exit v1

    #@f
    .line 257
    return-void

    #@10
    .line 262
    :catchall_0
    move-exception v0

    #@11
    monitor-exit v1

    #@12
    throw v0
.end method

.method private getRescheduleJobForFailure(Lcom/android/server/job/controllers/JobStatus;)Lcom/android/server/job/controllers/JobStatus;
    .locals 14
    .param p1, "failureToReschedule"    # Lcom/android/server/job/controllers/JobStatus;

    #@0
    .prologue
    .line 455
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    #@3
    move-result-wide v10

    #@4
    .line 456
    .local v10, "elapsedNowMillis":J
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getJob()Landroid/app/job/JobInfo;

    #@7
    move-result-object v7

    #@8
    .line 458
    .local v7, "job":Landroid/app/job/JobInfo;
    invoke-virtual {v7}, Landroid/app/job/JobInfo;->getInitialBackoffMillis()J

    #@b
    move-result-wide v12

    #@c
    .line 459
    .local v12, "initialBackoffMillis":J
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getNumFailures()I

    #@f
    move-result v0

    #@10
    add-int/lit8 v6, v0, 0x1

    #@12
    .line 462
    .local v6, "backoffAttempts":I
    invoke-virtual {v7}, Landroid/app/job/JobInfo;->getBackoffPolicy()I

    #@15
    move-result v0

    #@16
    packed-switch v0, :pswitch_data_0

    #@19
    .line 472
    :pswitch_0
    long-to-float v0, v12

    #@1a
    add-int/lit8 v1, v6, -0x1

    #@1c
    invoke-static {v0, v1}, Ljava/lang/Math;->scalb(FI)F

    #@1f
    move-result v0

    #@20
    float-to-long v8, v0

    #@21
    .line 476
    .local v8, "delayMillis":J
    :goto_0
    const-wide/32 v0, 0x112a880

    #@24
    invoke-static {v8, v9, v0, v1}, Ljava/lang/Math;->min(JJ)J

    #@27
    move-result-wide v8

    #@28
    .line 477
    new-instance v0, Lcom/android/server/job/controllers/JobStatus;

    #@2a
    add-long v2, v10, v8

    #@2c
    .line 478
    const-wide v4, 0x7fffffffffffffffL

    #@31
    move-object v1, p1

    #@32
    .line 477
    invoke-direct/range {v0 .. v6}, Lcom/android/server/job/controllers/JobStatus;-><init>(Lcom/android/server/job/controllers/JobStatus;JJI)V

    #@35
    return-object v0

    #@36
    .line 464
    .end local v8    # "delayMillis":J
    :pswitch_1
    int-to-long v0, v6

    #@37
    mul-long v8, v12, v0

    #@39
    .line 465
    .restart local v8    # "delayMillis":J
    goto :goto_0

    #@3a
    .line 462
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private getRescheduleJobForPeriodic(Lcom/android/server/job/controllers/JobStatus;)Lcom/android/server/job/controllers/JobStatus;
    .locals 14
    .param p1, "periodicToReschedule"    # Lcom/android/server/job/controllers/JobStatus;

    #@0
    .prologue
    .line 492
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    #@3
    move-result-wide v8

    #@4
    .line 494
    .local v8, "elapsedNow":J
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getLatestRunTimeElapsed()J

    #@7
    move-result-wide v0

    #@8
    sub-long/2addr v0, v8

    #@9
    const-wide/16 v6, 0x0

    #@b
    invoke-static {v0, v1, v6, v7}, Ljava/lang/Math;->max(JJ)J

    #@e
    move-result-wide v12

    #@f
    .line 495
    .local v12, "runEarly":J
    add-long v2, v8, v12

    #@11
    .line 496
    .local v2, "newEarliestRunTimeElapsed":J
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getJob()Landroid/app/job/JobInfo;

    #@14
    move-result-object v0

    #@15
    invoke-virtual {v0}, Landroid/app/job/JobInfo;->getIntervalMillis()J

    #@18
    move-result-wide v10

    #@19
    .line 497
    .local v10, "period":J
    add-long v4, v2, v10

    #@1b
    .line 503
    .local v4, "newLatestRuntimeElapsed":J
    new-instance v0, Lcom/android/server/job/controllers/JobStatus;

    #@1d
    .line 504
    const/4 v6, 0x0

    #@1e
    move-object v1, p1

    #@1f
    .line 503
    invoke-direct/range {v0 .. v6}, Lcom/android/server/job/controllers/JobStatus;-><init>(Lcom/android/server/job/controllers/JobStatus;JJI)V

    #@22
    return-object v0
.end method

.method private isCurrentlyActiveLocked(Lcom/android/server/job/controllers/JobStatus;)Z
    .locals 5
    .param p1, "job"    # Lcom/android/server/job/controllers/JobStatus;

    #@0
    .prologue
    .line 435
    const/4 v0, 0x0

    #@1
    .local v0, "i":I
    :goto_0
    iget-object v3, p0, Lcom/android/server/job/JobSchedulerService;->mActiveServices:Ljava/util/List;

    #@3
    invoke-interface {v3}, Ljava/util/List;->size()I

    #@6
    move-result v3

    #@7
    if-ge v0, v3, :cond_1

    #@9
    .line 436
    iget-object v3, p0, Lcom/android/server/job/JobSchedulerService;->mActiveServices:Ljava/util/List;

    #@b
    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@e
    move-result-object v2

    #@f
    check-cast v2, Lcom/android/server/job/JobServiceContext;

    #@11
    .line 437
    .local v2, "serviceContext":Lcom/android/server/job/JobServiceContext;
    invoke-virtual {v2}, Lcom/android/server/job/JobServiceContext;->getRunningJob()Lcom/android/server/job/controllers/JobStatus;

    #@14
    move-result-object v1

    #@15
    .line 438
    .local v1, "running":Lcom/android/server/job/controllers/JobStatus;
    if-eqz v1, :cond_0

    #@17
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getUid()I

    #@1a
    move-result v3

    #@1b
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getJobId()I

    #@1e
    move-result v4

    #@1f
    invoke-virtual {v1, v3, v4}, Lcom/android/server/job/controllers/JobStatus;->matches(II)Z

    #@22
    move-result v3

    #@23
    if-eqz v3, :cond_0

    #@25
    .line 439
    const/4 v3, 0x1

    #@26
    return v3

    #@27
    .line 435
    :cond_0
    add-int/lit8 v0, v0, 0x1

    #@29
    goto :goto_0

    #@2a
    .line 442
    .end local v1    # "running":Lcom/android/server/job/controllers/JobStatus;
    .end local v2    # "serviceContext":Lcom/android/server/job/JobServiceContext;
    :cond_1
    const/4 v3, 0x0

    #@2b
    return v3
.end method

.method private startTrackingJob(Lcom/android/server/job/controllers/JobStatus;)V
    .locals 6
    .param p1, "jobStatus"    # Lcom/android/server/job/controllers/JobStatus;

    #@0
    .prologue
    .line 381
    iget-object v5, p0, Lcom/android/server/job/JobSchedulerService;->mJobs:Lcom/android/server/job/JobStore;

    #@2
    monitor-enter v5

    #@3
    .line 382
    :try_start_0
    iget-object v4, p0, Lcom/android/server/job/JobSchedulerService;->mJobs:Lcom/android/server/job/JobStore;

    #@5
    invoke-virtual {v4, p1}, Lcom/android/server/job/JobStore;->add(Lcom/android/server/job/controllers/JobStatus;)Z

    #@8
    move-result v3

    #@9
    .line 383
    .local v3, "update":Z
    iget-boolean v2, p0, Lcom/android/server/job/JobSchedulerService;->mReadyToRock:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@b
    .local v2, "rocking":Z
    monitor-exit v5

    #@c
    .line 385
    if-eqz v2, :cond_1

    #@e
    .line 386
    const/4 v1, 0x0

    #@f
    .local v1, "i":I
    :goto_0
    iget-object v4, p0, Lcom/android/server/job/JobSchedulerService;->mControllers:Ljava/util/List;

    #@11
    invoke-interface {v4}, Ljava/util/List;->size()I

    #@14
    move-result v4

    #@15
    if-ge v1, v4, :cond_1

    #@17
    .line 387
    iget-object v4, p0, Lcom/android/server/job/JobSchedulerService;->mControllers:Ljava/util/List;

    #@19
    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@1c
    move-result-object v0

    #@1d
    check-cast v0, Lcom/android/server/job/controllers/StateController;

    #@1f
    .line 388
    .local v0, "controller":Lcom/android/server/job/controllers/StateController;
    if-eqz v3, :cond_0

    #@21
    .line 389
    invoke-virtual {v0, p1}, Lcom/android/server/job/controllers/StateController;->maybeStopTrackingJob(Lcom/android/server/job/controllers/JobStatus;)V

    #@24
    .line 391
    :cond_0
    invoke-virtual {v0, p1}, Lcom/android/server/job/controllers/StateController;->maybeStartTrackingJob(Lcom/android/server/job/controllers/JobStatus;)V

    #@27
    .line 386
    add-int/lit8 v1, v1, 0x1

    #@29
    goto :goto_0

    #@2a
    .line 381
    .end local v0    # "controller":Lcom/android/server/job/controllers/StateController;
    .end local v1    # "i":I
    .end local v2    # "rocking":Z
    .end local v3    # "update":Z
    :catchall_0
    move-exception v4

    #@2b
    monitor-exit v5

    #@2c
    throw v4

    #@2d
    .line 378
    .restart local v2    # "rocking":Z
    .restart local v3    # "update":Z
    :cond_1
    return-void
.end method

.method private stopJobOnServiceContextLocked(Lcom/android/server/job/controllers/JobStatus;)Z
    .locals 5
    .param p1, "job"    # Lcom/android/server/job/controllers/JobStatus;

    #@0
    .prologue
    .line 418
    const/4 v1, 0x0

    #@1
    .local v1, "i":I
    :goto_0
    iget-object v3, p0, Lcom/android/server/job/JobSchedulerService;->mActiveServices:Ljava/util/List;

    #@3
    invoke-interface {v3}, Ljava/util/List;->size()I

    #@6
    move-result v3

    #@7
    if-ge v1, v3, :cond_1

    #@9
    .line 419
    iget-object v3, p0, Lcom/android/server/job/JobSchedulerService;->mActiveServices:Ljava/util/List;

    #@b
    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@e
    move-result-object v2

    #@f
    check-cast v2, Lcom/android/server/job/JobServiceContext;

    #@11
    .line 420
    .local v2, "jsc":Lcom/android/server/job/JobServiceContext;
    invoke-virtual {v2}, Lcom/android/server/job/JobServiceContext;->getRunningJob()Lcom/android/server/job/controllers/JobStatus;

    #@14
    move-result-object v0

    #@15
    .line 421
    .local v0, "executing":Lcom/android/server/job/controllers/JobStatus;
    if-eqz v0, :cond_0

    #@17
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getUid()I

    #@1a
    move-result v3

    #@1b
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getJobId()I

    #@1e
    move-result v4

    #@1f
    invoke-virtual {v0, v3, v4}, Lcom/android/server/job/controllers/JobStatus;->matches(II)Z

    #@22
    move-result v3

    #@23
    if-eqz v3, :cond_0

    #@25
    .line 422
    invoke-virtual {v2}, Lcom/android/server/job/JobServiceContext;->cancelExecutingJob()V

    #@28
    .line 423
    const/4 v3, 0x1

    #@29
    return v3

    #@2a
    .line 418
    :cond_0
    add-int/lit8 v1, v1, 0x1

    #@2c
    goto :goto_0

    #@2d
    .line 426
    .end local v0    # "executing":Lcom/android/server/job/controllers/JobStatus;
    .end local v2    # "jsc":Lcom/android/server/job/JobServiceContext;
    :cond_1
    const/4 v3, 0x0

    #@2e
    return v3
.end method

.method private stopTrackingJob(Lcom/android/server/job/controllers/JobStatus;)Z
    .locals 6
    .param p1, "jobStatus"    # Lcom/android/server/job/controllers/JobStatus;

    #@0
    .prologue
    .line 403
    iget-object v5, p0, Lcom/android/server/job/JobSchedulerService;->mJobs:Lcom/android/server/job/JobStore;

    #@2
    monitor-enter v5

    #@3
    .line 405
    :try_start_0
    iget-object v4, p0, Lcom/android/server/job/JobSchedulerService;->mJobs:Lcom/android/server/job/JobStore;

    #@5
    invoke-virtual {v4, p1}, Lcom/android/server/job/JobStore;->remove(Lcom/android/server/job/controllers/JobStatus;)Z

    #@8
    move-result v2

    #@9
    .line 406
    .local v2, "removed":Z
    iget-boolean v3, p0, Lcom/android/server/job/JobSchedulerService;->mReadyToRock:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@b
    .local v3, "rocking":Z
    monitor-exit v5

    #@c
    .line 408
    if-eqz v2, :cond_0

    #@e
    if-eqz v3, :cond_0

    #@10
    .line 409
    const/4 v1, 0x0

    #@11
    .local v1, "i":I
    :goto_0
    iget-object v4, p0, Lcom/android/server/job/JobSchedulerService;->mControllers:Ljava/util/List;

    #@13
    invoke-interface {v4}, Ljava/util/List;->size()I

    #@16
    move-result v4

    #@17
    if-ge v1, v4, :cond_0

    #@19
    .line 410
    iget-object v4, p0, Lcom/android/server/job/JobSchedulerService;->mControllers:Ljava/util/List;

    #@1b
    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@1e
    move-result-object v0

    #@1f
    check-cast v0, Lcom/android/server/job/controllers/StateController;

    #@21
    .line 411
    .local v0, "controller":Lcom/android/server/job/controllers/StateController;
    invoke-virtual {v0, p1}, Lcom/android/server/job/controllers/StateController;->maybeStopTrackingJob(Lcom/android/server/job/controllers/JobStatus;)V

    #@24
    .line 409
    add-int/lit8 v1, v1, 0x1

    #@26
    goto :goto_0

    #@27
    .line 403
    .end local v0    # "controller":Lcom/android/server/job/controllers/StateController;
    .end local v1    # "i":I
    .end local v2    # "removed":Z
    .end local v3    # "rocking":Z
    :catchall_0
    move-exception v4

    #@28
    monitor-exit v5

    #@29
    throw v4

    #@2a
    .line 414
    .restart local v2    # "removed":Z
    .restart local v3    # "rocking":Z
    :cond_0
    return v2
.end method


# virtual methods
.method public cancelJob(II)V
    .locals 3
    .param p1, "uid"    # I
    .param p2, "jobId"    # I

    #@0
    .prologue
    .line 249
    iget-object v2, p0, Lcom/android/server/job/JobSchedulerService;->mJobs:Lcom/android/server/job/JobStore;

    #@2
    monitor-enter v2

    #@3
    .line 250
    :try_start_0
    iget-object v1, p0, Lcom/android/server/job/JobSchedulerService;->mJobs:Lcom/android/server/job/JobStore;

    #@5
    invoke-virtual {v1, p1, p2}, Lcom/android/server/job/JobStore;->getJobByUidAndJobId(II)Lcom/android/server/job/controllers/JobStatus;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@8
    move-result-object v0

    #@9
    .local v0, "toCancel":Lcom/android/server/job/controllers/JobStatus;
    monitor-exit v2

    #@a
    .line 252
    if-eqz v0, :cond_0

    #@c
    .line 253
    invoke-direct {p0, v0}, Lcom/android/server/job/JobSchedulerService;->cancelJobImpl(Lcom/android/server/job/controllers/JobStatus;)V

    #@f
    .line 247
    :cond_0
    return-void

    #@10
    .line 249
    .end local v0    # "toCancel":Lcom/android/server/job/controllers/JobStatus;
    :catchall_0
    move-exception v1

    #@11
    monitor-exit v2

    #@12
    throw v1
.end method

.method public cancelJobsForUid(I)V
    .locals 5
    .param p1, "uid"    # I

    #@0
    .prologue
    .line 231
    iget-object v4, p0, Lcom/android/server/job/JobSchedulerService;->mJobs:Lcom/android/server/job/JobStore;

    #@2
    monitor-enter v4

    #@3
    .line 232
    :try_start_0
    iget-object v3, p0, Lcom/android/server/job/JobSchedulerService;->mJobs:Lcom/android/server/job/JobStore;

    #@5
    invoke-virtual {v3, p1}, Lcom/android/server/job/JobStore;->getJobsByUid(I)Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@8
    move-result-object v1

    #@9
    .local v1, "jobsForUid":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/job/controllers/JobStatus;>;"
    monitor-exit v4

    #@a
    .line 234
    const/4 v0, 0x0

    #@b
    .local v0, "i":I
    :goto_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    #@e
    move-result v3

    #@f
    if-ge v0, v3, :cond_0

    #@11
    .line 235
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@14
    move-result-object v2

    #@15
    check-cast v2, Lcom/android/server/job/controllers/JobStatus;

    #@17
    .line 236
    .local v2, "toRemove":Lcom/android/server/job/controllers/JobStatus;
    invoke-direct {p0, v2}, Lcom/android/server/job/JobSchedulerService;->cancelJobImpl(Lcom/android/server/job/controllers/JobStatus;)V

    #@1a
    .line 234
    add-int/lit8 v0, v0, 0x1

    #@1c
    goto :goto_0

    #@1d
    .line 231
    .end local v0    # "i":I
    .end local v1    # "jobsForUid":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/job/controllers/JobStatus;>;"
    .end local v2    # "toRemove":Lcom/android/server/job/controllers/JobStatus;
    :catchall_0
    move-exception v3

    #@1e
    monitor-exit v4

    #@1f
    throw v3

    #@20
    .line 229
    .restart local v0    # "i":I
    .restart local v1    # "jobsForUid":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/job/controllers/JobStatus;>;"
    :cond_0
    return-void
.end method

.method cancelJobsForUser(I)V
    .locals 5
    .param p1, "userHandle"    # I

    #@0
    .prologue
    .line 214
    iget-object v4, p0, Lcom/android/server/job/JobSchedulerService;->mJobs:Lcom/android/server/job/JobStore;

    #@2
    monitor-enter v4

    #@3
    .line 215
    :try_start_0
    iget-object v3, p0, Lcom/android/server/job/JobSchedulerService;->mJobs:Lcom/android/server/job/JobStore;

    #@5
    invoke-virtual {v3, p1}, Lcom/android/server/job/JobStore;->getJobsByUser(I)Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@8
    move-result-object v1

    #@9
    .local v1, "jobsForUser":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/job/controllers/JobStatus;>;"
    monitor-exit v4

    #@a
    .line 217
    const/4 v0, 0x0

    #@b
    .local v0, "i":I
    :goto_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    #@e
    move-result v3

    #@f
    if-ge v0, v3, :cond_0

    #@11
    .line 218
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@14
    move-result-object v2

    #@15
    check-cast v2, Lcom/android/server/job/controllers/JobStatus;

    #@17
    .line 219
    .local v2, "toRemove":Lcom/android/server/job/controllers/JobStatus;
    invoke-direct {p0, v2}, Lcom/android/server/job/JobSchedulerService;->cancelJobImpl(Lcom/android/server/job/controllers/JobStatus;)V

    #@1a
    .line 217
    add-int/lit8 v0, v0, 0x1

    #@1c
    goto :goto_0

    #@1d
    .line 214
    .end local v0    # "i":I
    .end local v1    # "jobsForUser":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/job/controllers/JobStatus;>;"
    .end local v2    # "toRemove":Lcom/android/server/job/controllers/JobStatus;
    :catchall_0
    move-exception v3

    #@1e
    monitor-exit v4

    #@1f
    throw v3

    #@20
    .line 212
    .restart local v0    # "i":I
    .restart local v1    # "jobsForUser":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/job/controllers/JobStatus;>;"
    :cond_0
    return-void
.end method

.method dumpInternal(Ljava/io/PrintWriter;)V
    .locals 14
    .param p1, "pw"    # Ljava/io/PrintWriter;

    #@0
    .prologue
    .line 891
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    #@3
    move-result-wide v4

    #@4
    .line 892
    .local v4, "now":J
    iget-object v9, p0, Lcom/android/server/job/JobSchedulerService;->mJobs:Lcom/android/server/job/JobStore;

    #@6
    monitor-enter v9

    #@7
    .line 893
    :try_start_0
    const-string/jumbo v8, "Started users: "

    #@a
    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@d
    .line 894
    const/4 v0, 0x0

    #@e
    .local v0, "i":I
    :goto_0
    iget-object v8, p0, Lcom/android/server/job/JobSchedulerService;->mStartedUsers:Ljava/util/ArrayList;

    #@10
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    #@13
    move-result v8

    #@14
    if-ge v0, v8, :cond_0

    #@16
    .line 895
    new-instance v8, Ljava/lang/StringBuilder;

    #@18
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    #@1b
    const-string/jumbo v10, "u"

    #@1e
    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@21
    move-result-object v8

    #@22
    iget-object v10, p0, Lcom/android/server/job/JobSchedulerService;->mStartedUsers:Ljava/util/ArrayList;

    #@24
    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@27
    move-result-object v10

    #@28
    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@2b
    move-result-object v8

    #@2c
    const-string/jumbo v10, " "

    #@2f
    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@32
    move-result-object v8

    #@33
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@36
    move-result-object v8

    #@37
    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@3a
    .line 894
    add-int/lit8 v0, v0, 0x1

    #@3c
    goto :goto_0

    #@3d
    .line 897
    :cond_0
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    #@40
    .line 898
    const-string/jumbo v8, "Registered jobs:"

    #@43
    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@46
    .line 899
    iget-object v8, p0, Lcom/android/server/job/JobSchedulerService;->mJobs:Lcom/android/server/job/JobStore;

    #@48
    invoke-virtual {v8}, Lcom/android/server/job/JobStore;->size()I

    #@4b
    move-result v8

    #@4c
    if-lez v8, :cond_1

    #@4e
    .line 900
    iget-object v8, p0, Lcom/android/server/job/JobSchedulerService;->mJobs:Lcom/android/server/job/JobStore;

    #@50
    invoke-virtual {v8}, Lcom/android/server/job/JobStore;->getJobs()Landroid/util/ArraySet;

    #@53
    move-result-object v2

    #@54
    .line 901
    .local v2, "jobs":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/job/controllers/JobStatus;>;"
    const/4 v0, 0x0

    #@55
    :goto_1
    invoke-virtual {v2}, Landroid/util/ArraySet;->size()I

    #@58
    move-result v8

    #@59
    if-ge v0, v8, :cond_2

    #@5b
    .line 902
    invoke-virtual {v2, v0}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    #@5e
    move-result-object v1

    #@5f
    check-cast v1, Lcom/android/server/job/controllers/JobStatus;

    #@61
    .line 903
    .local v1, "job":Lcom/android/server/job/controllers/JobStatus;
    const-string/jumbo v8, "  "

    #@64
    invoke-virtual {v1, p1, v8}, Lcom/android/server/job/controllers/JobStatus;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    #@67
    .line 901
    add-int/lit8 v0, v0, 0x1

    #@69
    goto :goto_1

    #@6a
    .line 906
    .end local v1    # "job":Lcom/android/server/job/controllers/JobStatus;
    .end local v2    # "jobs":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/job/controllers/JobStatus;>;"
    :cond_1
    const-string/jumbo v8, "  None."

    #@6d
    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@70
    .line 908
    :cond_2
    const/4 v0, 0x0

    #@71
    :goto_2
    iget-object v8, p0, Lcom/android/server/job/JobSchedulerService;->mControllers:Ljava/util/List;

    #@73
    invoke-interface {v8}, Ljava/util/List;->size()I

    #@76
    move-result v8

    #@77
    if-ge v0, v8, :cond_3

    #@79
    .line 909
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    #@7c
    .line 910
    iget-object v8, p0, Lcom/android/server/job/JobSchedulerService;->mControllers:Ljava/util/List;

    #@7e
    invoke-interface {v8, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@81
    move-result-object v8

    #@82
    check-cast v8, Lcom/android/server/job/controllers/StateController;

    #@84
    invoke-virtual {v8, p1}, Lcom/android/server/job/controllers/StateController;->dumpControllerState(Ljava/io/PrintWriter;)V

    #@87
    .line 908
    add-int/lit8 v0, v0, 0x1

    #@89
    goto :goto_2

    #@8a
    .line 912
    :cond_3
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    #@8d
    .line 913
    const-string/jumbo v8, "Pending:"

    #@90
    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@93
    .line 914
    const/4 v0, 0x0

    #@94
    :goto_3
    iget-object v8, p0, Lcom/android/server/job/JobSchedulerService;->mPendingJobs:Ljava/util/ArrayList;

    #@96
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    #@99
    move-result v8

    #@9a
    if-ge v0, v8, :cond_4

    #@9c
    .line 915
    iget-object v8, p0, Lcom/android/server/job/JobSchedulerService;->mPendingJobs:Ljava/util/ArrayList;

    #@9e
    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@a1
    move-result-object v8

    #@a2
    check-cast v8, Lcom/android/server/job/controllers/JobStatus;

    #@a4
    invoke-virtual {v8}, Lcom/android/server/job/controllers/JobStatus;->hashCode()I

    #@a7
    move-result v8

    #@a8
    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->println(I)V

    #@ab
    .line 914
    add-int/lit8 v0, v0, 0x1

    #@ad
    goto :goto_3

    #@ae
    .line 917
    :cond_4
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    #@b1
    .line 918
    const-string/jumbo v8, "Active jobs:"

    #@b4
    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@b7
    .line 919
    const/4 v0, 0x0

    #@b8
    :goto_4
    iget-object v8, p0, Lcom/android/server/job/JobSchedulerService;->mActiveServices:Ljava/util/List;

    #@ba
    invoke-interface {v8}, Ljava/util/List;->size()I

    #@bd
    move-result v8

    #@be
    if-ge v0, v8, :cond_6

    #@c0
    .line 920
    iget-object v8, p0, Lcom/android/server/job/JobSchedulerService;->mActiveServices:Ljava/util/List;

    #@c2
    invoke-interface {v8, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@c5
    move-result-object v3

    #@c6
    check-cast v3, Lcom/android/server/job/JobServiceContext;

    #@c8
    .line 921
    .local v3, "jsc":Lcom/android/server/job/JobServiceContext;
    invoke-virtual {v3}, Lcom/android/server/job/JobServiceContext;->isAvailable()Z

    #@cb
    move-result v8

    #@cc
    if-eqz v8, :cond_5

    #@ce
    .line 919
    :goto_5
    add-int/lit8 v0, v0, 0x1

    #@d0
    goto :goto_4

    #@d1
    .line 924
    :cond_5
    invoke-virtual {v3}, Lcom/android/server/job/JobServiceContext;->getTimeoutElapsed()J

    #@d4
    move-result-wide v6

    #@d5
    .line 925
    .local v6, "timeout":J
    const-string/jumbo v8, "Running for: "

    #@d8
    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@db
    .line 926
    invoke-virtual {v3}, Lcom/android/server/job/JobServiceContext;->getExecutionStartTimeElapsed()J

    #@de
    move-result-wide v10

    #@df
    sub-long v10, v4, v10

    #@e1
    const-wide/16 v12, 0x3e8

    #@e3
    div-long/2addr v10, v12

    #@e4
    invoke-virtual {p1, v10, v11}, Ljava/io/PrintWriter;->print(J)V

    #@e7
    .line 927
    const-string/jumbo v8, "s timeout="

    #@ea
    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@ed
    .line 928
    invoke-virtual {p1, v6, v7}, Ljava/io/PrintWriter;->print(J)V

    #@f0
    .line 929
    const-string/jumbo v8, " fromnow="

    #@f3
    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@f6
    .line 930
    sub-long v10, v6, v4

    #@f8
    invoke-virtual {p1, v10, v11}, Ljava/io/PrintWriter;->println(J)V

    #@fb
    .line 931
    invoke-virtual {v3}, Lcom/android/server/job/JobServiceContext;->getRunningJob()Lcom/android/server/job/controllers/JobStatus;

    #@fe
    move-result-object v8

    #@ff
    const-string/jumbo v10, "  "

    #@102
    invoke-virtual {v8, p1, v10}, Lcom/android/server/job/controllers/JobStatus;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@105
    goto :goto_5

    #@106
    .line 892
    .end local v0    # "i":I
    .end local v3    # "jsc":Lcom/android/server/job/JobServiceContext;
    .end local v6    # "timeout":J
    :catchall_0
    move-exception v8

    #@107
    monitor-exit v9

    #@108
    throw v8

    #@109
    .line 934
    .restart local v0    # "i":I
    :cond_6
    :try_start_1
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    #@10c
    .line 935
    const-string/jumbo v8, "mReadyToRock="

    #@10f
    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@112
    iget-boolean v8, p0, Lcom/android/server/job/JobSchedulerService;->mReadyToRock:Z

    #@114
    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->println(Z)V

    #@117
    .line 936
    const-string/jumbo v8, "mDeviceIdleMode="

    #@11a
    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@11d
    iget-boolean v8, p0, Lcom/android/server/job/JobSchedulerService;->mDeviceIdleMode:Z

    #@11f
    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->println(Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@122
    monitor-exit v9

    #@123
    .line 938
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    #@126
    .line 890
    return-void
.end method

.method public getPendingJobs(I)Ljava/util/List;
    .locals 6
    .param p1, "uid"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Landroid/app/job/JobInfo;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 199
    new-instance v3, Ljava/util/ArrayList;

    #@2
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    #@5
    .line 200
    .local v3, "outList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/job/JobInfo;>;"
    iget-object v5, p0, Lcom/android/server/job/JobSchedulerService;->mJobs:Lcom/android/server/job/JobStore;

    #@7
    monitor-enter v5

    #@8
    .line 201
    :try_start_0
    iget-object v4, p0, Lcom/android/server/job/JobSchedulerService;->mJobs:Lcom/android/server/job/JobStore;

    #@a
    invoke-virtual {v4}, Lcom/android/server/job/JobStore;->getJobs()Landroid/util/ArraySet;

    #@d
    move-result-object v2

    #@e
    .line 202
    .local v2, "jobs":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/job/controllers/JobStatus;>;"
    const/4 v0, 0x0

    #@f
    .local v0, "i":I
    :goto_0
    invoke-virtual {v2}, Landroid/util/ArraySet;->size()I

    #@12
    move-result v4

    #@13
    if-ge v0, v4, :cond_1

    #@15
    .line 203
    invoke-virtual {v2, v0}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    #@18
    move-result-object v1

    #@19
    check-cast v1, Lcom/android/server/job/controllers/JobStatus;

    #@1b
    .line 204
    .local v1, "job":Lcom/android/server/job/controllers/JobStatus;
    invoke-virtual {v1}, Lcom/android/server/job/controllers/JobStatus;->getUid()I

    #@1e
    move-result v4

    #@1f
    if-ne v4, p1, :cond_0

    #@21
    .line 205
    invoke-virtual {v1}, Lcom/android/server/job/controllers/JobStatus;->getJob()Landroid/app/job/JobInfo;

    #@24
    move-result-object v4

    #@25
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@28
    .line 202
    :cond_0
    add-int/lit8 v0, v0, 0x1

    #@2a
    goto :goto_0

    #@2b
    .end local v1    # "job":Lcom/android/server/job/controllers/JobStatus;
    :cond_1
    monitor-exit v5

    #@2c
    .line 209
    return-object v3

    #@2d
    .line 200
    .end local v0    # "i":I
    .end local v2    # "jobs":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/job/controllers/JobStatus;>;"
    :catchall_0
    move-exception v4

    #@2e
    monitor-exit v5

    #@2f
    throw v4
.end method

.method public onBootPhase(I)V
    .locals 14
    .param p1, "phase"    # I

    #@0
    .prologue
    .line 335
    const/16 v0, 0x1f4

    #@2
    if-ne v0, p1, :cond_1

    #@4
    .line 337
    new-instance v3, Landroid/content/IntentFilter;

    #@6
    const-string/jumbo v0, "android.intent.action.PACKAGE_REMOVED"

    #@9
    invoke-direct {v3, v0}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    #@c
    .line 338
    .local v3, "filter":Landroid/content/IntentFilter;
    const-string/jumbo v0, "package"

    #@f
    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    #@12
    .line 339
    invoke-virtual {p0}, Lcom/android/server/job/JobSchedulerService;->getContext()Landroid/content/Context;

    #@15
    move-result-object v0

    #@16
    .line 340
    iget-object v1, p0, Lcom/android/server/job/JobSchedulerService;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    #@18
    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    #@1a
    const/4 v4, 0x0

    #@1b
    const/4 v5, 0x0

    #@1c
    .line 339
    invoke-virtual/range {v0 .. v5}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    #@1f
    .line 341
    new-instance v7, Landroid/content/IntentFilter;

    #@21
    const-string/jumbo v0, "android.intent.action.USER_REMOVED"

    #@24
    invoke-direct {v7, v0}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    #@27
    .line 342
    .local v7, "userFilter":Landroid/content/IntentFilter;
    const-string/jumbo v0, "android.os.action.DEVICE_IDLE_MODE_CHANGED"

    #@2a
    invoke-virtual {v7, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    #@2d
    .line 343
    invoke-virtual {p0}, Lcom/android/server/job/JobSchedulerService;->getContext()Landroid/content/Context;

    #@30
    move-result-object v4

    #@31
    .line 344
    iget-object v5, p0, Lcom/android/server/job/JobSchedulerService;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    #@33
    sget-object v6, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    #@35
    const/4 v8, 0x0

    #@36
    const/4 v9, 0x0

    #@37
    .line 343
    invoke-virtual/range {v4 .. v9}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    #@3a
    .line 345
    invoke-virtual {p0}, Lcom/android/server/job/JobSchedulerService;->getContext()Landroid/content/Context;

    #@3d
    move-result-object v0

    #@3e
    const-string/jumbo v1, "power"

    #@41
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    #@44
    move-result-object v0

    #@45
    check-cast v0, Landroid/os/PowerManager;

    #@47
    iput-object v0, p0, Lcom/android/server/job/JobSchedulerService;->mPowerManager:Landroid/os/PowerManager;

    #@49
    .line 334
    .end local v3    # "filter":Landroid/content/IntentFilter;
    .end local v7    # "userFilter":Landroid/content/IntentFilter;
    :cond_0
    :goto_0
    return-void

    #@4a
    .line 346
    :cond_1
    const/16 v0, 0x258

    #@4c
    if-ne p1, v0, :cond_0

    #@4e
    .line 347
    iget-object v1, p0, Lcom/android/server/job/JobSchedulerService;->mJobs:Lcom/android/server/job/JobStore;

    #@50
    monitor-enter v1

    #@51
    .line 349
    const/4 v0, 0x1

    #@52
    :try_start_0
    iput-boolean v0, p0, Lcom/android/server/job/JobSchedulerService;->mReadyToRock:Z

    #@54
    .line 351
    const-string/jumbo v0, "batterystats"

    #@57
    .line 350
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    #@5a
    move-result-object v0

    #@5b
    invoke-static {v0}, Lcom/android/internal/app/IBatteryStats$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/app/IBatteryStats;

    #@5e
    move-result-object v0

    #@5f
    iput-object v0, p0, Lcom/android/server/job/JobSchedulerService;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    #@61
    .line 353
    const/4 v11, 0x0

    #@62
    .local v11, "i":I
    :goto_1
    sget v0, Lcom/android/server/job/JobSchedulerService;->MAX_JOB_CONTEXTS_COUNT:I

    #@64
    if-ge v11, v0, :cond_2

    #@66
    .line 354
    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService;->mActiveServices:Ljava/util/List;

    #@68
    .line 355
    new-instance v2, Lcom/android/server/job/JobServiceContext;

    #@6a
    iget-object v4, p0, Lcom/android/server/job/JobSchedulerService;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    #@6c
    .line 356
    invoke-virtual {p0}, Lcom/android/server/job/JobSchedulerService;->getContext()Landroid/content/Context;

    #@6f
    move-result-object v5

    #@70
    invoke-virtual {v5}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    #@73
    move-result-object v5

    #@74
    .line 355
    invoke-direct {v2, p0, v4, v5}, Lcom/android/server/job/JobServiceContext;-><init>(Lcom/android/server/job/JobSchedulerService;Lcom/android/internal/app/IBatteryStats;Landroid/os/Looper;)V

    #@77
    .line 354
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@7a
    .line 353
    add-int/lit8 v11, v11, 0x1

    #@7c
    goto :goto_1

    #@7d
    .line 359
    :cond_2
    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService;->mJobs:Lcom/android/server/job/JobStore;

    #@7f
    invoke-virtual {v0}, Lcom/android/server/job/JobStore;->getJobs()Landroid/util/ArraySet;

    #@82
    move-result-object v13

    #@83
    .line 360
    .local v13, "jobs":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/job/controllers/JobStatus;>;"
    const/4 v11, 0x0

    #@84
    :goto_2
    invoke-virtual {v13}, Landroid/util/ArraySet;->size()I

    #@87
    move-result v0

    #@88
    if-ge v11, v0, :cond_4

    #@8a
    .line 361
    invoke-virtual {v13, v11}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    #@8d
    move-result-object v12

    #@8e
    check-cast v12, Lcom/android/server/job/controllers/JobStatus;

    #@90
    .line 362
    .local v12, "job":Lcom/android/server/job/controllers/JobStatus;
    const/4 v10, 0x0

    #@91
    .local v10, "controller":I
    :goto_3
    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService;->mControllers:Ljava/util/List;

    #@93
    invoke-interface {v0}, Ljava/util/List;->size()I

    #@96
    move-result v0

    #@97
    if-ge v10, v0, :cond_3

    #@99
    .line 363
    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService;->mControllers:Ljava/util/List;

    #@9b
    invoke-interface {v0, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@9e
    move-result-object v0

    #@9f
    check-cast v0, Lcom/android/server/job/controllers/StateController;

    #@a1
    iget-boolean v2, p0, Lcom/android/server/job/JobSchedulerService;->mDeviceIdleMode:Z

    #@a3
    invoke-virtual {v0, v2}, Lcom/android/server/job/controllers/StateController;->deviceIdleModeChanged(Z)V

    #@a6
    .line 364
    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService;->mControllers:Ljava/util/List;

    #@a8
    invoke-interface {v0, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@ab
    move-result-object v0

    #@ac
    check-cast v0, Lcom/android/server/job/controllers/StateController;

    #@ae
    invoke-virtual {v0, v12}, Lcom/android/server/job/controllers/StateController;->maybeStartTrackingJob(Lcom/android/server/job/controllers/JobStatus;)V

    #@b1
    .line 362
    add-int/lit8 v10, v10, 0x1

    #@b3
    goto :goto_3

    #@b4
    .line 360
    :cond_3
    add-int/lit8 v11, v11, 0x1

    #@b6
    goto :goto_2

    #@b7
    .line 368
    .end local v10    # "controller":I
    .end local v12    # "job":Lcom/android/server/job/controllers/JobStatus;
    :cond_4
    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService;->mHandler:Lcom/android/server/job/JobSchedulerService$JobHandler;

    #@b9
    const/4 v2, 0x1

    #@ba
    invoke-virtual {v0, v2}, Lcom/android/server/job/JobSchedulerService$JobHandler;->obtainMessage(I)Landroid/os/Message;

    #@bd
    move-result-object v0

    #@be
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@c1
    monitor-exit v1

    #@c2
    goto :goto_0

    #@c3
    .line 347
    .end local v11    # "i":I
    .end local v13    # "jobs":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/job/controllers/JobStatus;>;"
    :catchall_0
    move-exception v0

    #@c4
    monitor-exit v1

    #@c5
    throw v0
.end method

.method public onControllerStateChanged()V
    .locals 2

    #@0
    .prologue
    .line 546
    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService;->mHandler:Lcom/android/server/job/JobSchedulerService$JobHandler;

    #@2
    const/4 v1, 0x1

    #@3
    invoke-virtual {v0, v1}, Lcom/android/server/job/JobSchedulerService$JobHandler;->obtainMessage(I)Landroid/os/Message;

    #@6
    move-result-object v0

    #@7
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    #@a
    .line 545
    return-void
.end method

.method public onJobCompleted(Lcom/android/server/job/controllers/JobStatus;Z)V
    .locals 4
    .param p1, "jobStatus"    # Lcom/android/server/job/controllers/JobStatus;
    .param p2, "needsReschedule"    # Z

    #@0
    .prologue
    .line 521
    invoke-direct {p0, p1}, Lcom/android/server/job/JobSchedulerService;->stopTrackingJob(Lcom/android/server/job/controllers/JobStatus;)Z

    #@3
    move-result v2

    #@4
    if-nez v2, :cond_0

    #@6
    .line 525
    return-void

    #@7
    .line 527
    :cond_0
    if-eqz p2, :cond_2

    #@9
    .line 528
    invoke-direct {p0, p1}, Lcom/android/server/job/JobSchedulerService;->getRescheduleJobForFailure(Lcom/android/server/job/controllers/JobStatus;)Lcom/android/server/job/controllers/JobStatus;

    #@c
    move-result-object v0

    #@d
    .line 529
    .local v0, "rescheduled":Lcom/android/server/job/controllers/JobStatus;
    invoke-direct {p0, v0}, Lcom/android/server/job/JobSchedulerService;->startTrackingJob(Lcom/android/server/job/controllers/JobStatus;)V

    #@10
    .line 534
    .end local v0    # "rescheduled":Lcom/android/server/job/controllers/JobStatus;
    :cond_1
    :goto_0
    iget-object v2, p0, Lcom/android/server/job/JobSchedulerService;->mHandler:Lcom/android/server/job/JobSchedulerService$JobHandler;

    #@12
    const/4 v3, 0x1

    #@13
    invoke-virtual {v2, v3}, Lcom/android/server/job/JobSchedulerService$JobHandler;->obtainMessage(I)Landroid/os/Message;

    #@16
    move-result-object v2

    #@17
    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    #@1a
    .line 517
    return-void

    #@1b
    .line 530
    :cond_2
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getJob()Landroid/app/job/JobInfo;

    #@1e
    move-result-object v2

    #@1f
    invoke-virtual {v2}, Landroid/app/job/JobInfo;->isPeriodic()Z

    #@22
    move-result v2

    #@23
    if-eqz v2, :cond_1

    #@25
    .line 531
    invoke-direct {p0, p1}, Lcom/android/server/job/JobSchedulerService;->getRescheduleJobForPeriodic(Lcom/android/server/job/controllers/JobStatus;)Lcom/android/server/job/controllers/JobStatus;

    #@28
    move-result-object v1

    #@29
    .line 532
    .local v1, "rescheduledPeriodic":Lcom/android/server/job/controllers/JobStatus;
    invoke-direct {p0, v1}, Lcom/android/server/job/JobSchedulerService;->startTrackingJob(Lcom/android/server/job/controllers/JobStatus;)V

    #@2c
    goto :goto_0
.end method

.method public onRunJobNow(Lcom/android/server/job/controllers/JobStatus;)V
    .locals 2
    .param p1, "jobStatus"    # Lcom/android/server/job/controllers/JobStatus;

    #@0
    .prologue
    .line 551
    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService;->mHandler:Lcom/android/server/job/JobSchedulerService$JobHandler;

    #@2
    const/4 v1, 0x0

    #@3
    invoke-virtual {v0, v1, p1}, Lcom/android/server/job/JobSchedulerService$JobHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    #@6
    move-result-object v0

    #@7
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    #@a
    .line 550
    return-void
.end method

.method public onStart()V
    .locals 2

    #@0
    .prologue
    .line 330
    const-string/jumbo v0, "jobscheduler"

    #@3
    iget-object v1, p0, Lcom/android/server/job/JobSchedulerService;->mJobSchedulerStub:Lcom/android/server/job/JobSchedulerService$JobSchedulerStub;

    #@5
    invoke-virtual {p0, v0, v1}, Lcom/android/server/job/JobSchedulerService;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;)V

    #@8
    .line 329
    return-void
.end method

.method public onStartUser(I)V
    .locals 2
    .param p1, "userHandle"    # I

    #@0
    .prologue
    .line 173
    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService;->mStartedUsers:Ljava/util/ArrayList;

    #@2
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@5
    move-result-object v1

    #@6
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@9
    .line 175
    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService;->mHandler:Lcom/android/server/job/JobSchedulerService$JobHandler;

    #@b
    const/4 v1, 0x1

    #@c
    invoke-virtual {v0, v1}, Lcom/android/server/job/JobSchedulerService$JobHandler;->obtainMessage(I)Landroid/os/Message;

    #@f
    move-result-object v0

    #@10
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    #@13
    .line 172
    return-void
.end method

.method public onStopUser(I)V
    .locals 2
    .param p1, "userHandle"    # I

    #@0
    .prologue
    .line 180
    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService;->mStartedUsers:Ljava/util/ArrayList;

    #@2
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@5
    move-result-object v1

    #@6
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    #@9
    .line 179
    return-void
.end method

.method public schedule(Landroid/app/job/JobInfo;I)I
    .locals 3
    .param p1, "job"    # Landroid/app/job/JobInfo;
    .param p2, "uId"    # I

    #@0
    .prologue
    const/4 v2, 0x1

    #@1
    .line 191
    new-instance v0, Lcom/android/server/job/controllers/JobStatus;

    #@3
    invoke-direct {v0, p1, p2}, Lcom/android/server/job/controllers/JobStatus;-><init>(Landroid/app/job/JobInfo;I)V

    #@6
    .line 192
    .local v0, "jobStatus":Lcom/android/server/job/controllers/JobStatus;
    invoke-virtual {p1}, Landroid/app/job/JobInfo;->getId()I

    #@9
    move-result v1

    #@a
    invoke-virtual {p0, p2, v1}, Lcom/android/server/job/JobSchedulerService;->cancelJob(II)V

    #@d
    .line 193
    invoke-direct {p0, v0}, Lcom/android/server/job/JobSchedulerService;->startTrackingJob(Lcom/android/server/job/controllers/JobStatus;)V

    #@10
    .line 194
    iget-object v1, p0, Lcom/android/server/job/JobSchedulerService;->mHandler:Lcom/android/server/job/JobSchedulerService$JobHandler;

    #@12
    invoke-virtual {v1, v2}, Lcom/android/server/job/JobSchedulerService$JobHandler;->obtainMessage(I)Landroid/os/Message;

    #@15
    move-result-object v1

    #@16
    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    #@19
    .line 195
    return v2
.end method

.method updateIdleMode(Z)V
    .locals 8
    .param p1, "enabled"    # Z

    #@0
    .prologue
    .line 271
    const/4 v0, 0x0

    #@1
    .line 273
    .local v0, "changed":Z
    iget-object v6, p0, Lcom/android/server/job/JobSchedulerService;->mJobs:Lcom/android/server/job/JobStore;

    #@3
    monitor-enter v6

    #@4
    .line 274
    :try_start_0
    iget-boolean v5, p0, Lcom/android/server/job/JobSchedulerService;->mDeviceIdleMode:Z

    #@6
    if-eq v5, p1, :cond_0

    #@8
    .line 275
    const/4 v0, 0x1

    #@9
    .line 277
    :cond_0
    iget-boolean v4, p0, Lcom/android/server/job/JobSchedulerService;->mReadyToRock:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@b
    .local v4, "rocking":Z
    monitor-exit v6

    #@c
    .line 279
    if-eqz v0, :cond_5

    #@e
    .line 280
    if-eqz v4, :cond_1

    #@10
    .line 281
    const/4 v2, 0x0

    #@11
    .local v2, "i":I
    :goto_0
    iget-object v5, p0, Lcom/android/server/job/JobSchedulerService;->mControllers:Ljava/util/List;

    #@13
    invoke-interface {v5}, Ljava/util/List;->size()I

    #@16
    move-result v5

    #@17
    if-ge v2, v5, :cond_1

    #@19
    .line 282
    iget-object v5, p0, Lcom/android/server/job/JobSchedulerService;->mControllers:Ljava/util/List;

    #@1b
    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@1e
    move-result-object v5

    #@1f
    check-cast v5, Lcom/android/server/job/controllers/StateController;

    #@21
    invoke-virtual {v5, p1}, Lcom/android/server/job/controllers/StateController;->deviceIdleModeChanged(Z)V

    #@24
    .line 281
    add-int/lit8 v2, v2, 0x1

    #@26
    goto :goto_0

    #@27
    .line 273
    .end local v2    # "i":I
    .end local v4    # "rocking":Z
    :catchall_0
    move-exception v5

    #@28
    monitor-exit v6

    #@29
    throw v5

    #@2a
    .line 285
    .restart local v4    # "rocking":Z
    :cond_1
    iget-object v6, p0, Lcom/android/server/job/JobSchedulerService;->mJobs:Lcom/android/server/job/JobStore;

    #@2c
    monitor-enter v6

    #@2d
    .line 286
    :try_start_1
    iput-boolean p1, p0, Lcom/android/server/job/JobSchedulerService;->mDeviceIdleMode:Z

    #@2f
    .line 287
    if-eqz p1, :cond_3

    #@31
    .line 289
    const/4 v2, 0x0

    #@32
    .restart local v2    # "i":I
    :goto_1
    iget-object v5, p0, Lcom/android/server/job/JobSchedulerService;->mActiveServices:Ljava/util/List;

    #@34
    invoke-interface {v5}, Ljava/util/List;->size()I

    #@37
    move-result v5

    #@38
    if-ge v2, v5, :cond_4

    #@3a
    .line 290
    iget-object v5, p0, Lcom/android/server/job/JobSchedulerService;->mActiveServices:Ljava/util/List;

    #@3c
    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@3f
    move-result-object v3

    #@40
    check-cast v3, Lcom/android/server/job/JobServiceContext;

    #@42
    .line 291
    .local v3, "jsc":Lcom/android/server/job/JobServiceContext;
    invoke-virtual {v3}, Lcom/android/server/job/JobServiceContext;->getRunningJob()Lcom/android/server/job/controllers/JobStatus;

    #@45
    move-result-object v1

    #@46
    .line 292
    .local v1, "executing":Lcom/android/server/job/controllers/JobStatus;
    if-eqz v1, :cond_2

    #@48
    .line 293
    invoke-virtual {v3}, Lcom/android/server/job/JobServiceContext;->cancelExecutingJob()V

    #@4b
    .line 289
    :cond_2
    add-int/lit8 v2, v2, 0x1

    #@4d
    goto :goto_1

    #@4e
    .line 298
    .end local v1    # "executing":Lcom/android/server/job/controllers/JobStatus;
    .end local v2    # "i":I
    .end local v3    # "jsc":Lcom/android/server/job/JobServiceContext;
    :cond_3
    iget-object v5, p0, Lcom/android/server/job/JobSchedulerService;->mHandler:Lcom/android/server/job/JobSchedulerService$JobHandler;

    #@50
    const/4 v7, 0x1

    #@51
    invoke-virtual {v5, v7}, Lcom/android/server/job/JobSchedulerService$JobHandler;->obtainMessage(I)Landroid/os/Message;

    #@54
    move-result-object v5

    #@55
    invoke-virtual {v5}, Landroid/os/Message;->sendToTarget()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    #@58
    :cond_4
    monitor-exit v6

    #@59
    .line 270
    :cond_5
    return-void

    #@5a
    .line 285
    :catchall_1
    move-exception v5

    #@5b
    monitor-exit v6

    #@5c
    throw v5
.end method
