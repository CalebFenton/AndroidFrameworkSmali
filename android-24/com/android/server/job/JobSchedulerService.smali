.class public final Lcom/android/server/job/JobSchedulerService;
.super Lcom/android/server/SystemService;
.source "JobSchedulerService.java"

# interfaces
.implements Lcom/android/server/job/StateChangedListener;
.implements Lcom/android/server/job/JobCompletedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/job/JobSchedulerService$1;,
        Lcom/android/server/job/JobSchedulerService$2;,
        Lcom/android/server/job/JobSchedulerService$Constants;,
        Lcom/android/server/job/JobSchedulerService$JobHandler;,
        Lcom/android/server/job/JobSchedulerService$JobSchedulerStub;,
        Lcom/android/server/job/JobSchedulerService$LocalService;
    }
.end annotation


# static fields
.field public static final DEBUG:Z = false

.field private static final ENFORCE_MAX_JOBS:Z = true

.field private static final MAX_JOBS_PER_APP:I = 0x64

.field private static final MAX_JOB_CONTEXTS_COUNT:I = 0x10

.field static final MSG_CHECK_JOB:I = 0x1

.field static final MSG_CHECK_JOB_GREEDY:I = 0x3

.field static final MSG_JOB_EXPIRED:I = 0x0

.field static final MSG_STOP_JOB:I = 0x2

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

.field final mConstants:Lcom/android/server/job/JobSchedulerService$Constants;

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

.field final mHandler:Lcom/android/server/job/JobSchedulerService$JobHandler;

.field final mJobPackageTracker:Lcom/android/server/job/JobPackageTracker;

.field final mJobSchedulerStub:Lcom/android/server/job/JobSchedulerService$JobSchedulerStub;

.field final mJobs:Lcom/android/server/job/JobStore;

.field mLocalDeviceIdleController:Lcom/android/server/DeviceIdleController$LocalService;

.field final mLock:Ljava/lang/Object;

.field mMaxActiveJobs:I

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

.field mReportedActive:Z

.field mStartedUsers:[I

.field mTmpAssignAct:[Z

.field mTmpAssignContextIdToJobMap:[Lcom/android/server/job/controllers/JobStatus;

.field mTmpAssignPreferredUidForContext:[I

.field private final mUidObserver:Landroid/app/IUidObserver;

.field final mUidPriorityOverride:Landroid/util/SparseIntArray;


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

.method static synthetic -wrap1(Lcom/android/server/job/JobSchedulerService;Lcom/android/server/job/controllers/JobStatus;I)Z
    .locals 1
    .param p1, "job"    # Lcom/android/server/job/controllers/JobStatus;
    .param p2, "reason"    # I

    #@0
    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/server/job/JobSchedulerService;->stopJobOnServiceContextLocked(Lcom/android/server/job/controllers/JobStatus;I)Z

    #@3
    move-result v0

    #@4
    return v0
.end method

.method static synthetic -wrap2(Lcom/android/server/job/JobSchedulerService;Landroid/content/Intent;)Ljava/lang/String;
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    #@0
    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/job/JobSchedulerService;->getPackageName(Landroid/content/Intent;)Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method static synthetic -wrap3(Lcom/android/server/job/JobSchedulerService;)V
    .locals 0

    #@0
    invoke-direct {p0}, Lcom/android/server/job/JobSchedulerService;->assignJobsToContextsLocked()V

    #@3
    return-void
.end method

.method static synthetic -wrap4(Lcom/android/server/job/JobSchedulerService;Lcom/android/server/job/controllers/JobStatus;Lcom/android/server/job/controllers/JobStatus;)V
    .locals 0
    .param p1, "cancelled"    # Lcom/android/server/job/controllers/JobStatus;
    .param p2, "incomingJob"    # Lcom/android/server/job/controllers/JobStatus;

    #@0
    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/server/job/JobSchedulerService;->cancelJobImpl(Lcom/android/server/job/controllers/JobStatus;Lcom/android/server/job/controllers/JobStatus;)V

    #@3
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    #@0
    .prologue
    const/16 v1, 0x10

    #@2
    .line 726
    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    #@5
    .line 115
    new-instance v0, Ljava/lang/Object;

    #@7
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    #@a
    iput-object v0, p0, Lcom/android/server/job/JobSchedulerService;->mLock:Ljava/lang/Object;

    #@c
    .line 119
    new-instance v0, Lcom/android/server/job/JobPackageTracker;

    #@e
    invoke-direct {v0}, Lcom/android/server/job/JobPackageTracker;-><init>()V

    #@11
    iput-object v0, p0, Lcom/android/server/job/JobSchedulerService;->mJobPackageTracker:Lcom/android/server/job/JobPackageTracker;

    #@13
    .line 130
    new-instance v0, Ljava/util/ArrayList;

    #@15
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@18
    iput-object v0, p0, Lcom/android/server/job/JobSchedulerService;->mActiveServices:Ljava/util/List;

    #@1a
    .line 137
    new-instance v0, Ljava/util/ArrayList;

    #@1c
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@1f
    iput-object v0, p0, Lcom/android/server/job/JobSchedulerService;->mPendingJobs:Ljava/util/ArrayList;

    #@21
    .line 139
    sget-object v0, Llibcore/util/EmptyArray;->INT:[I

    #@23
    iput-object v0, p0, Lcom/android/server/job/JobSchedulerService;->mStartedUsers:[I

    #@25
    .line 162
    const/4 v0, 0x1

    #@26
    iput v0, p0, Lcom/android/server/job/JobSchedulerService;->mMaxActiveJobs:I

    #@28
    .line 167
    new-instance v0, Landroid/util/SparseIntArray;

    #@2a
    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    #@2d
    iput-object v0, p0, Lcom/android/server/job/JobSchedulerService;->mUidPriorityOverride:Landroid/util/SparseIntArray;

    #@2f
    .line 177
    new-array v0, v1, [Lcom/android/server/job/controllers/JobStatus;

    #@31
    iput-object v0, p0, Lcom/android/server/job/JobSchedulerService;->mTmpAssignContextIdToJobMap:[Lcom/android/server/job/controllers/JobStatus;

    #@33
    .line 181
    new-array v0, v1, [Z

    #@35
    iput-object v0, p0, Lcom/android/server/job/JobSchedulerService;->mTmpAssignAct:[Z

    #@37
    .line 185
    new-array v0, v1, [I

    #@39
    iput-object v0, p0, Lcom/android/server/job/JobSchedulerService;->mTmpAssignPreferredUidForContext:[I

    #@3b
    .line 396
    new-instance v0, Lcom/android/server/job/JobSchedulerService$1;

    #@3d
    invoke-direct {v0, p0}, Lcom/android/server/job/JobSchedulerService$1;-><init>(Lcom/android/server/job/JobSchedulerService;)V

    #@40
    iput-object v0, p0, Lcom/android/server/job/JobSchedulerService;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    #@42
    .line 462
    new-instance v0, Lcom/android/server/job/JobSchedulerService$2;

    #@44
    invoke-direct {v0, p0}, Lcom/android/server/job/JobSchedulerService$2;-><init>(Lcom/android/server/job/JobSchedulerService;)V

    #@47
    iput-object v0, p0, Lcom/android/server/job/JobSchedulerService;->mUidObserver:Landroid/app/IUidObserver;

    #@49
    .line 727
    new-instance v0, Lcom/android/server/job/JobSchedulerService$JobHandler;

    #@4b
    invoke-virtual {p1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    #@4e
    move-result-object v1

    #@4f
    invoke-direct {v0, p0, v1}, Lcom/android/server/job/JobSchedulerService$JobHandler;-><init>(Lcom/android/server/job/JobSchedulerService;Landroid/os/Looper;)V

    #@52
    iput-object v0, p0, Lcom/android/server/job/JobSchedulerService;->mHandler:Lcom/android/server/job/JobSchedulerService$JobHandler;

    #@54
    .line 728
    new-instance v0, Lcom/android/server/job/JobSchedulerService$Constants;

    #@56
    iget-object v1, p0, Lcom/android/server/job/JobSchedulerService;->mHandler:Lcom/android/server/job/JobSchedulerService$JobHandler;

    #@58
    invoke-direct {v0, p0, v1}, Lcom/android/server/job/JobSchedulerService$Constants;-><init>(Lcom/android/server/job/JobSchedulerService;Landroid/os/Handler;)V

    #@5b
    iput-object v0, p0, Lcom/android/server/job/JobSchedulerService;->mConstants:Lcom/android/server/job/JobSchedulerService$Constants;

    #@5d
    .line 729
    new-instance v0, Lcom/android/server/job/JobSchedulerService$JobSchedulerStub;

    #@5f
    invoke-direct {v0, p0}, Lcom/android/server/job/JobSchedulerService$JobSchedulerStub;-><init>(Lcom/android/server/job/JobSchedulerService;)V

    #@62
    iput-object v0, p0, Lcom/android/server/job/JobSchedulerService;->mJobSchedulerStub:Lcom/android/server/job/JobSchedulerService$JobSchedulerStub;

    #@64
    .line 730
    invoke-static {p0}, Lcom/android/server/job/JobStore;->initAndGet(Lcom/android/server/job/JobSchedulerService;)Lcom/android/server/job/JobStore;

    #@67
    move-result-object v0

    #@68
    iput-object v0, p0, Lcom/android/server/job/JobSchedulerService;->mJobs:Lcom/android/server/job/JobStore;

    #@6a
    .line 733
    new-instance v0, Ljava/util/ArrayList;

    #@6c
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@6f
    iput-object v0, p0, Lcom/android/server/job/JobSchedulerService;->mControllers:Ljava/util/List;

    #@71
    .line 734
    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService;->mControllers:Ljava/util/List;

    #@73
    invoke-static {p0}, Lcom/android/server/job/controllers/ConnectivityController;->get(Lcom/android/server/job/JobSchedulerService;)Lcom/android/server/job/controllers/ConnectivityController;

    #@76
    move-result-object v1

    #@77
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@7a
    .line 735
    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService;->mControllers:Ljava/util/List;

    #@7c
    invoke-static {p0}, Lcom/android/server/job/controllers/TimeController;->get(Lcom/android/server/job/JobSchedulerService;)Lcom/android/server/job/controllers/TimeController;

    #@7f
    move-result-object v1

    #@80
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@83
    .line 736
    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService;->mControllers:Ljava/util/List;

    #@85
    invoke-static {p0}, Lcom/android/server/job/controllers/IdleController;->get(Lcom/android/server/job/JobSchedulerService;)Lcom/android/server/job/controllers/IdleController;

    #@88
    move-result-object v1

    #@89
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@8c
    .line 737
    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService;->mControllers:Ljava/util/List;

    #@8e
    invoke-static {p0}, Lcom/android/server/job/controllers/BatteryController;->get(Lcom/android/server/job/JobSchedulerService;)Lcom/android/server/job/controllers/BatteryController;

    #@91
    move-result-object v1

    #@92
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@95
    .line 738
    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService;->mControllers:Ljava/util/List;

    #@97
    invoke-static {p0}, Lcom/android/server/job/controllers/AppIdleController;->get(Lcom/android/server/job/JobSchedulerService;)Lcom/android/server/job/controllers/AppIdleController;

    #@9a
    move-result-object v1

    #@9b
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@9e
    .line 739
    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService;->mControllers:Ljava/util/List;

    #@a0
    invoke-static {p0}, Lcom/android/server/job/controllers/ContentObserverController;->get(Lcom/android/server/job/JobSchedulerService;)Lcom/android/server/job/controllers/ContentObserverController;

    #@a3
    move-result-object v1

    #@a4
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@a7
    .line 740
    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService;->mControllers:Ljava/util/List;

    #@a9
    invoke-static {p0}, Lcom/android/server/job/controllers/DeviceIdleJobsController;->get(Lcom/android/server/job/JobSchedulerService;)Lcom/android/server/job/controllers/DeviceIdleJobsController;

    #@ac
    move-result-object v1

    #@ad
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@b0
    .line 725
    return-void
.end method

.method private adjustJobPriority(ILcom/android/server/job/controllers/JobStatus;)I
    .locals 2
    .param p1, "curPriority"    # I
    .param p2, "job"    # Lcom/android/server/job/controllers/JobStatus;

    #@0
    .prologue
    .line 1284
    const/16 v1, 0x28

    #@2
    if-ge p1, v1, :cond_0

    #@4
    .line 1285
    iget-object v1, p0, Lcom/android/server/job/JobSchedulerService;->mJobPackageTracker:Lcom/android/server/job/JobPackageTracker;

    #@6
    invoke-virtual {v1, p2}, Lcom/android/server/job/JobPackageTracker;->getLoadFactor(Lcom/android/server/job/controllers/JobStatus;)F

    #@9
    move-result v0

    #@a
    .line 1286
    .local v0, "factor":F
    iget-object v1, p0, Lcom/android/server/job/JobSchedulerService;->mConstants:Lcom/android/server/job/JobSchedulerService$Constants;

    #@c
    iget v1, v1, Lcom/android/server/job/JobSchedulerService$Constants;->HEAVY_USE_FACTOR:F

    #@e
    cmpl-float v1, v0, v1

    #@10
    if-ltz v1, :cond_1

    #@12
    .line 1287
    add-int/lit8 p1, p1, -0x50

    #@14
    .line 1292
    .end local v0    # "factor":F
    :cond_0
    :goto_0
    return p1

    #@15
    .line 1288
    .restart local v0    # "factor":F
    :cond_1
    iget-object v1, p0, Lcom/android/server/job/JobSchedulerService;->mConstants:Lcom/android/server/job/JobSchedulerService$Constants;

    #@17
    iget v1, v1, Lcom/android/server/job/JobSchedulerService$Constants;->MODERATE_USE_FACTOR:F

    #@19
    cmpl-float v1, v0, v1

    #@1b
    if-ltz v1, :cond_0

    #@1d
    .line 1289
    add-int/lit8 p1, p1, -0x28

    #@1f
    goto :goto_0
.end method

.method private assignJobsToContextsLocked()V
    .locals 28

    #@0
    .prologue
    .line 1320
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    #@3
    move-result-object v25

    #@4
    invoke-interface/range {v25 .. v25}, Landroid/app/IActivityManager;->getMemoryTrimLevel()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@7
    move-result v13

    #@8
    .line 1324
    .local v13, "memLevel":I
    :goto_0
    packed-switch v13, :pswitch_data_0

    #@b
    .line 1335
    move-object/from16 v0, p0

    #@d
    iget-object v0, v0, Lcom/android/server/job/JobSchedulerService;->mConstants:Lcom/android/server/job/JobSchedulerService$Constants;

    #@f
    move-object/from16 v25, v0

    #@11
    move-object/from16 v0, v25

    #@13
    iget v0, v0, Lcom/android/server/job/JobSchedulerService$Constants;->BG_NORMAL_JOB_COUNT:I

    #@15
    move/from16 v25, v0

    #@17
    move/from16 v0, v25

    #@19
    move-object/from16 v1, p0

    #@1b
    iput v0, v1, Lcom/android/server/job/JobSchedulerService;->mMaxActiveJobs:I

    #@1d
    .line 1339
    :goto_1
    move-object/from16 v0, p0

    #@1f
    iget-object v4, v0, Lcom/android/server/job/JobSchedulerService;->mTmpAssignContextIdToJobMap:[Lcom/android/server/job/controllers/JobStatus;

    #@21
    .line 1340
    .local v4, "contextIdToJobMap":[Lcom/android/server/job/controllers/JobStatus;
    move-object/from16 v0, p0

    #@23
    iget-object v3, v0, Lcom/android/server/job/JobSchedulerService;->mTmpAssignAct:[Z

    #@25
    .line 1341
    .local v3, "act":[Z
    move-object/from16 v0, p0

    #@27
    iget-object v0, v0, Lcom/android/server/job/JobSchedulerService;->mTmpAssignPreferredUidForContext:[I

    #@29
    move-object/from16 v21, v0

    #@2b
    .line 1342
    .local v21, "preferredUidForContext":[I
    const/16 v17, 0x0

    #@2d
    .line 1343
    .local v17, "numActive":I
    const/16 v18, 0x0

    #@2f
    .line 1344
    .local v18, "numForeground":I
    const/4 v6, 0x0

    #@30
    .local v6, "i":I
    :goto_2
    const/16 v25, 0x10

    #@32
    move/from16 v0, v25

    #@34
    if-ge v6, v0, :cond_1

    #@36
    .line 1345
    move-object/from16 v0, p0

    #@38
    iget-object v0, v0, Lcom/android/server/job/JobSchedulerService;->mActiveServices:Ljava/util/List;

    #@3a
    move-object/from16 v25, v0

    #@3c
    move-object/from16 v0, v25

    #@3e
    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@41
    move-result-object v11

    #@42
    check-cast v11, Lcom/android/server/job/JobServiceContext;

    #@44
    .line 1346
    .local v11, "js":Lcom/android/server/job/JobServiceContext;
    invoke-virtual {v11}, Lcom/android/server/job/JobServiceContext;->getRunningJob()Lcom/android/server/job/controllers/JobStatus;

    #@47
    move-result-object v24

    #@48
    .line 1347
    .local v24, "status":Lcom/android/server/job/controllers/JobStatus;
    aput-object v24, v4, v6

    #@4a
    if-eqz v24, :cond_0

    #@4c
    .line 1348
    add-int/lit8 v17, v17, 0x1

    #@4e
    .line 1349
    move-object/from16 v0, v24

    #@50
    iget v0, v0, Lcom/android/server/job/controllers/JobStatus;->lastEvaluatedPriority:I

    #@52
    move/from16 v25, v0

    #@54
    const/16 v26, 0x28

    #@56
    move/from16 v0, v25

    #@58
    move/from16 v1, v26

    #@5a
    if-lt v0, v1, :cond_0

    #@5c
    .line 1350
    add-int/lit8 v18, v18, 0x1

    #@5e
    .line 1353
    :cond_0
    const/16 v25, 0x0

    #@60
    aput-boolean v25, v3, v6

    #@62
    .line 1354
    invoke-virtual {v11}, Lcom/android/server/job/JobServiceContext;->getPreferredUid()I

    #@65
    move-result v25

    #@66
    aput v25, v21, v6

    #@68
    .line 1344
    add-int/lit8 v6, v6, 0x1

    #@6a
    goto :goto_2

    #@6b
    .line 1321
    .end local v3    # "act":[Z
    .end local v4    # "contextIdToJobMap":[Lcom/android/server/job/controllers/JobStatus;
    .end local v6    # "i":I
    .end local v11    # "js":Lcom/android/server/job/JobServiceContext;
    .end local v13    # "memLevel":I
    .end local v17    # "numActive":I
    .end local v18    # "numForeground":I
    .end local v21    # "preferredUidForContext":[I
    .end local v24    # "status":Lcom/android/server/job/controllers/JobStatus;
    :catch_0
    move-exception v5

    #@6c
    .line 1322
    .local v5, "e":Landroid/os/RemoteException;
    const/4 v13, 0x0

    #@6d
    .restart local v13    # "memLevel":I
    goto :goto_0

    #@6e
    .line 1326
    .end local v5    # "e":Landroid/os/RemoteException;
    :pswitch_0
    move-object/from16 v0, p0

    #@70
    iget-object v0, v0, Lcom/android/server/job/JobSchedulerService;->mConstants:Lcom/android/server/job/JobSchedulerService$Constants;

    #@72
    move-object/from16 v25, v0

    #@74
    move-object/from16 v0, v25

    #@76
    iget v0, v0, Lcom/android/server/job/JobSchedulerService$Constants;->BG_MODERATE_JOB_COUNT:I

    #@78
    move/from16 v25, v0

    #@7a
    move/from16 v0, v25

    #@7c
    move-object/from16 v1, p0

    #@7e
    iput v0, v1, Lcom/android/server/job/JobSchedulerService;->mMaxActiveJobs:I

    #@80
    goto :goto_1

    #@81
    .line 1329
    :pswitch_1
    move-object/from16 v0, p0

    #@83
    iget-object v0, v0, Lcom/android/server/job/JobSchedulerService;->mConstants:Lcom/android/server/job/JobSchedulerService$Constants;

    #@85
    move-object/from16 v25, v0

    #@87
    move-object/from16 v0, v25

    #@89
    iget v0, v0, Lcom/android/server/job/JobSchedulerService$Constants;->BG_LOW_JOB_COUNT:I

    #@8b
    move/from16 v25, v0

    #@8d
    move/from16 v0, v25

    #@8f
    move-object/from16 v1, p0

    #@91
    iput v0, v1, Lcom/android/server/job/JobSchedulerService;->mMaxActiveJobs:I

    #@93
    goto :goto_1

    #@94
    .line 1332
    :pswitch_2
    move-object/from16 v0, p0

    #@96
    iget-object v0, v0, Lcom/android/server/job/JobSchedulerService;->mConstants:Lcom/android/server/job/JobSchedulerService$Constants;

    #@98
    move-object/from16 v25, v0

    #@9a
    move-object/from16 v0, v25

    #@9c
    iget v0, v0, Lcom/android/server/job/JobSchedulerService$Constants;->BG_CRITICAL_JOB_COUNT:I

    #@9e
    move/from16 v25, v0

    #@a0
    move/from16 v0, v25

    #@a2
    move-object/from16 v1, p0

    #@a4
    iput v0, v1, Lcom/android/server/job/JobSchedulerService;->mMaxActiveJobs:I

    #@a6
    goto/16 :goto_1

    #@a8
    .line 1359
    .restart local v3    # "act":[Z
    .restart local v4    # "contextIdToJobMap":[Lcom/android/server/job/controllers/JobStatus;
    .restart local v6    # "i":I
    .restart local v17    # "numActive":I
    .restart local v18    # "numForeground":I
    .restart local v21    # "preferredUidForContext":[I
    :cond_1
    const/4 v6, 0x0

    #@a9
    :goto_3
    move-object/from16 v0, p0

    #@ab
    iget-object v0, v0, Lcom/android/server/job/JobSchedulerService;->mPendingJobs:Ljava/util/ArrayList;

    #@ad
    move-object/from16 v25, v0

    #@af
    invoke-virtual/range {v25 .. v25}, Ljava/util/ArrayList;->size()I

    #@b2
    move-result v25

    #@b3
    move/from16 v0, v25

    #@b5
    if-ge v6, v0, :cond_a

    #@b7
    .line 1360
    move-object/from16 v0, p0

    #@b9
    iget-object v0, v0, Lcom/android/server/job/JobSchedulerService;->mPendingJobs:Ljava/util/ArrayList;

    #@bb
    move-object/from16 v25, v0

    #@bd
    move-object/from16 v0, v25

    #@bf
    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@c2
    move-result-object v16

    #@c3
    check-cast v16, Lcom/android/server/job/controllers/JobStatus;

    #@c5
    .line 1363
    .local v16, "nextPending":Lcom/android/server/job/controllers/JobStatus;
    move-object/from16 v0, p0

    #@c7
    move-object/from16 v1, v16

    #@c9
    invoke-virtual {v0, v1, v4}, Lcom/android/server/job/JobSchedulerService;->findJobContextIdFromMap(Lcom/android/server/job/controllers/JobStatus;[Lcom/android/server/job/controllers/JobStatus;)I

    #@cc
    move-result v10

    #@cd
    .line 1364
    .local v10, "jobRunningContext":I
    const/16 v25, -0x1

    #@cf
    move/from16 v0, v25

    #@d1
    if-eq v10, v0, :cond_3

    #@d3
    .line 1359
    :cond_2
    :goto_4
    add-int/lit8 v6, v6, 0x1

    #@d5
    goto :goto_3

    #@d6
    .line 1368
    :cond_3
    move-object/from16 v0, p0

    #@d8
    move-object/from16 v1, v16

    #@da
    invoke-direct {v0, v1}, Lcom/android/server/job/JobSchedulerService;->evaluateJobPriorityLocked(Lcom/android/server/job/controllers/JobStatus;)I

    #@dd
    move-result v23

    #@de
    .line 1369
    .local v23, "priority":I
    move/from16 v0, v23

    #@e0
    move-object/from16 v1, v16

    #@e2
    iput v0, v1, Lcom/android/server/job/controllers/JobStatus;->lastEvaluatedPriority:I

    #@e4
    .line 1374
    const v14, 0x7fffffff

    #@e7
    .line 1375
    .local v14, "minPriority":I
    const/4 v15, -0x1

    #@e8
    .line 1376
    .local v15, "minPriorityContextId":I
    const/4 v8, 0x0

    #@e9
    .local v8, "j":I
    :goto_5
    const/16 v25, 0x10

    #@eb
    move/from16 v0, v25

    #@ed
    if-ge v8, v0, :cond_6

    #@ef
    .line 1377
    aget-object v9, v4, v8

    #@f1
    .line 1378
    .local v9, "job":Lcom/android/server/job/controllers/JobStatus;
    aget v20, v21, v8

    #@f3
    .line 1379
    .local v20, "preferredUid":I
    if-nez v9, :cond_7

    #@f5
    .line 1380
    move-object/from16 v0, p0

    #@f7
    iget v0, v0, Lcom/android/server/job/JobSchedulerService;->mMaxActiveJobs:I

    #@f9
    move/from16 v25, v0

    #@fb
    move/from16 v0, v17

    #@fd
    move/from16 v1, v25

    #@ff
    if-lt v0, v1, :cond_4

    #@101
    .line 1381
    const/16 v25, 0x28

    #@103
    move/from16 v0, v23

    #@105
    move/from16 v1, v25

    #@107
    if-lt v0, v1, :cond_8

    #@109
    .line 1382
    move-object/from16 v0, p0

    #@10b
    iget-object v0, v0, Lcom/android/server/job/JobSchedulerService;->mConstants:Lcom/android/server/job/JobSchedulerService$Constants;

    #@10d
    move-object/from16 v25, v0

    #@10f
    move-object/from16 v0, v25

    #@111
    iget v0, v0, Lcom/android/server/job/JobSchedulerService$Constants;->FG_JOB_COUNT:I

    #@113
    move/from16 v25, v0

    #@115
    move/from16 v0, v18

    #@117
    move/from16 v1, v25

    #@119
    if-ge v0, v1, :cond_8

    #@11b
    .line 1383
    :cond_4
    invoke-virtual/range {v16 .. v16}, Lcom/android/server/job/controllers/JobStatus;->getUid()I

    #@11e
    move-result v25

    #@11f
    move/from16 v0, v20

    #@121
    move/from16 v1, v25

    #@123
    if-eq v0, v1, :cond_5

    #@125
    .line 1384
    const/16 v25, -0x1

    #@127
    move/from16 v0, v20

    #@129
    move/from16 v1, v25

    #@12b
    if-ne v0, v1, :cond_8

    #@12d
    .line 1387
    :cond_5
    move v15, v8

    #@12e
    .line 1406
    .end local v9    # "job":Lcom/android/server/job/controllers/JobStatus;
    .end local v20    # "preferredUid":I
    :cond_6
    const/16 v25, -0x1

    #@130
    move/from16 v0, v25

    #@132
    if-eq v15, v0, :cond_2

    #@134
    .line 1407
    aput-object v16, v4, v15

    #@136
    .line 1408
    const/16 v25, 0x1

    #@138
    aput-boolean v25, v3, v15

    #@13a
    .line 1409
    add-int/lit8 v17, v17, 0x1

    #@13c
    .line 1410
    const/16 v25, 0x28

    #@13e
    move/from16 v0, v23

    #@140
    move/from16 v1, v25

    #@142
    if-lt v0, v1, :cond_2

    #@144
    .line 1411
    add-int/lit8 v18, v18, 0x1

    #@146
    goto :goto_4

    #@147
    .line 1395
    .restart local v9    # "job":Lcom/android/server/job/controllers/JobStatus;
    .restart local v20    # "preferredUid":I
    :cond_7
    invoke-virtual {v9}, Lcom/android/server/job/controllers/JobStatus;->getUid()I

    #@14a
    move-result v25

    #@14b
    invoke-virtual/range {v16 .. v16}, Lcom/android/server/job/controllers/JobStatus;->getUid()I

    #@14e
    move-result v26

    #@14f
    move/from16 v0, v25

    #@151
    move/from16 v1, v26

    #@153
    if-eq v0, v1, :cond_9

    #@155
    .line 1376
    :cond_8
    :goto_6
    add-int/lit8 v8, v8, 0x1

    #@157
    goto :goto_5

    #@158
    .line 1398
    :cond_9
    move-object/from16 v0, p0

    #@15a
    invoke-direct {v0, v9}, Lcom/android/server/job/JobSchedulerService;->evaluateJobPriorityLocked(Lcom/android/server/job/controllers/JobStatus;)I

    #@15d
    move-result v25

    #@15e
    move-object/from16 v0, v16

    #@160
    iget v0, v0, Lcom/android/server/job/controllers/JobStatus;->lastEvaluatedPriority:I

    #@162
    move/from16 v26, v0

    #@164
    move/from16 v0, v25

    #@166
    move/from16 v1, v26

    #@168
    if-ge v0, v1, :cond_8

    #@16a
    .line 1401
    move-object/from16 v0, v16

    #@16c
    iget v0, v0, Lcom/android/server/job/controllers/JobStatus;->lastEvaluatedPriority:I

    #@16e
    move/from16 v25, v0

    #@170
    move/from16 v0, v25

    #@172
    if-le v14, v0, :cond_8

    #@174
    .line 1402
    move-object/from16 v0, v16

    #@176
    iget v14, v0, Lcom/android/server/job/controllers/JobStatus;->lastEvaluatedPriority:I

    #@178
    .line 1403
    move v15, v8

    #@179
    goto :goto_6

    #@17a
    .line 1418
    .end local v8    # "j":I
    .end local v9    # "job":Lcom/android/server/job/controllers/JobStatus;
    .end local v10    # "jobRunningContext":I
    .end local v14    # "minPriority":I
    .end local v15    # "minPriorityContextId":I
    .end local v16    # "nextPending":Lcom/android/server/job/controllers/JobStatus;
    .end local v20    # "preferredUid":I
    .end local v23    # "priority":I
    :cond_a
    move-object/from16 v0, p0

    #@17c
    iget-object v0, v0, Lcom/android/server/job/JobSchedulerService;->mJobPackageTracker:Lcom/android/server/job/JobPackageTracker;

    #@17e
    move-object/from16 v25, v0

    #@180
    move-object/from16 v0, v25

    #@182
    move/from16 v1, v17

    #@184
    move/from16 v2, v18

    #@186
    invoke-virtual {v0, v1, v2}, Lcom/android/server/job/JobPackageTracker;->noteConcurrency(II)V

    #@189
    .line 1419
    const/4 v6, 0x0

    #@18a
    :goto_7
    const/16 v25, 0x10

    #@18c
    move/from16 v0, v25

    #@18e
    if-ge v6, v0, :cond_10

    #@190
    .line 1420
    const/16 v22, 0x0

    #@192
    .line 1421
    .local v22, "preservePreferredUid":Z
    aget-boolean v25, v3, v6

    #@194
    if-eqz v25, :cond_b

    #@196
    .line 1422
    move-object/from16 v0, p0

    #@198
    iget-object v0, v0, Lcom/android/server/job/JobSchedulerService;->mActiveServices:Ljava/util/List;

    #@19a
    move-object/from16 v25, v0

    #@19c
    move-object/from16 v0, v25

    #@19e
    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@1a1
    move-result-object v25

    #@1a2
    check-cast v25, Lcom/android/server/job/JobServiceContext;

    #@1a4
    invoke-virtual/range {v25 .. v25}, Lcom/android/server/job/JobServiceContext;->getRunningJob()Lcom/android/server/job/controllers/JobStatus;

    #@1a7
    move-result-object v12

    #@1a8
    .line 1423
    .local v12, "js":Lcom/android/server/job/controllers/JobStatus;
    if-eqz v12, :cond_d

    #@1aa
    .line 1428
    move-object/from16 v0, p0

    #@1ac
    iget-object v0, v0, Lcom/android/server/job/JobSchedulerService;->mActiveServices:Ljava/util/List;

    #@1ae
    move-object/from16 v25, v0

    #@1b0
    move-object/from16 v0, v25

    #@1b2
    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@1b5
    move-result-object v25

    #@1b6
    check-cast v25, Lcom/android/server/job/JobServiceContext;

    #@1b8
    invoke-virtual/range {v25 .. v25}, Lcom/android/server/job/JobServiceContext;->preemptExecutingJob()V

    #@1bb
    .line 1429
    const/16 v22, 0x1

    #@1bd
    .line 1447
    .end local v12    # "js":Lcom/android/server/job/controllers/JobStatus;
    :cond_b
    :goto_8
    if-nez v22, :cond_c

    #@1bf
    .line 1448
    move-object/from16 v0, p0

    #@1c1
    iget-object v0, v0, Lcom/android/server/job/JobSchedulerService;->mActiveServices:Ljava/util/List;

    #@1c3
    move-object/from16 v25, v0

    #@1c5
    move-object/from16 v0, v25

    #@1c7
    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@1ca
    move-result-object v25

    #@1cb
    check-cast v25, Lcom/android/server/job/JobServiceContext;

    #@1cd
    invoke-virtual/range {v25 .. v25}, Lcom/android/server/job/JobServiceContext;->clearPreferredUid()V

    #@1d0
    .line 1419
    :cond_c
    add-int/lit8 v6, v6, 0x1

    #@1d2
    goto :goto_7

    #@1d3
    .line 1431
    .restart local v12    # "js":Lcom/android/server/job/controllers/JobStatus;
    :cond_d
    aget-object v19, v4, v6

    #@1d5
    .line 1436
    .local v19, "pendingJob":Lcom/android/server/job/controllers/JobStatus;
    const/4 v7, 0x0

    #@1d6
    .local v7, "ic":I
    :goto_9
    move-object/from16 v0, p0

    #@1d8
    iget-object v0, v0, Lcom/android/server/job/JobSchedulerService;->mControllers:Ljava/util/List;

    #@1da
    move-object/from16 v25, v0

    #@1dc
    invoke-interface/range {v25 .. v25}, Ljava/util/List;->size()I

    #@1df
    move-result v25

    #@1e0
    move/from16 v0, v25

    #@1e2
    if-ge v7, v0, :cond_e

    #@1e4
    .line 1437
    move-object/from16 v0, p0

    #@1e6
    iget-object v0, v0, Lcom/android/server/job/JobSchedulerService;->mControllers:Ljava/util/List;

    #@1e8
    move-object/from16 v25, v0

    #@1ea
    move-object/from16 v0, v25

    #@1ec
    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@1ef
    move-result-object v25

    #@1f0
    check-cast v25, Lcom/android/server/job/controllers/StateController;

    #@1f2
    move-object/from16 v0, v25

    #@1f4
    move-object/from16 v1, v19

    #@1f6
    invoke-virtual {v0, v1}, Lcom/android/server/job/controllers/StateController;->prepareForExecutionLocked(Lcom/android/server/job/controllers/JobStatus;)V

    #@1f9
    .line 1436
    add-int/lit8 v7, v7, 0x1

    #@1fb
    goto :goto_9

    #@1fc
    .line 1439
    :cond_e
    move-object/from16 v0, p0

    #@1fe
    iget-object v0, v0, Lcom/android/server/job/JobSchedulerService;->mActiveServices:Ljava/util/List;

    #@200
    move-object/from16 v25, v0

    #@202
    move-object/from16 v0, v25

    #@204
    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@207
    move-result-object v25

    #@208
    check-cast v25, Lcom/android/server/job/JobServiceContext;

    #@20a
    move-object/from16 v0, v25

    #@20c
    move-object/from16 v1, v19

    #@20e
    invoke-virtual {v0, v1}, Lcom/android/server/job/JobServiceContext;->executeRunnableJob(Lcom/android/server/job/controllers/JobStatus;)Z

    #@211
    move-result v25

    #@212
    if-nez v25, :cond_f

    #@214
    .line 1440
    const-string/jumbo v25, "JobSchedulerService"

    #@217
    new-instance v26, Ljava/lang/StringBuilder;

    #@219
    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    #@21c
    const-string/jumbo v27, "Error executing "

    #@21f
    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@222
    move-result-object v26

    #@223
    move-object/from16 v0, v26

    #@225
    move-object/from16 v1, v19

    #@227
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@22a
    move-result-object v26

    #@22b
    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@22e
    move-result-object v26

    #@22f
    invoke-static/range {v25 .. v26}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@232
    .line 1442
    :cond_f
    move-object/from16 v0, p0

    #@234
    iget-object v0, v0, Lcom/android/server/job/JobSchedulerService;->mPendingJobs:Ljava/util/ArrayList;

    #@236
    move-object/from16 v25, v0

    #@238
    move-object/from16 v0, v25

    #@23a
    move-object/from16 v1, v19

    #@23c
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    #@23f
    move-result v25

    #@240
    if-eqz v25, :cond_b

    #@242
    .line 1443
    move-object/from16 v0, p0

    #@244
    iget-object v0, v0, Lcom/android/server/job/JobSchedulerService;->mJobPackageTracker:Lcom/android/server/job/JobPackageTracker;

    #@246
    move-object/from16 v25, v0

    #@248
    move-object/from16 v0, v25

    #@24a
    move-object/from16 v1, v19

    #@24c
    invoke-virtual {v0, v1}, Lcom/android/server/job/JobPackageTracker;->noteNonpending(Lcom/android/server/job/controllers/JobStatus;)V

    #@24f
    goto/16 :goto_8

    #@251
    .line 1313
    .end local v7    # "ic":I
    .end local v12    # "js":Lcom/android/server/job/controllers/JobStatus;
    .end local v19    # "pendingJob":Lcom/android/server/job/controllers/JobStatus;
    .end local v22    # "preservePreferredUid":Z
    :cond_10
    return-void

    #@252
    .line 1324
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private cancelJobImpl(Lcom/android/server/job/controllers/JobStatus;Lcom/android/server/job/controllers/JobStatus;)V
    .locals 2
    .param p1, "cancelled"    # Lcom/android/server/job/controllers/JobStatus;
    .param p2, "incomingJob"    # Lcom/android/server/job/controllers/JobStatus;

    #@0
    .prologue
    .line 634
    const/4 v0, 0x1

    #@1
    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/job/JobSchedulerService;->stopTrackingJob(Lcom/android/server/job/controllers/JobStatus;Lcom/android/server/job/controllers/JobStatus;Z)Z

    #@4
    .line 635
    iget-object v1, p0, Lcom/android/server/job/JobSchedulerService;->mLock:Ljava/lang/Object;

    #@6
    monitor-enter v1

    #@7
    .line 637
    :try_start_0
    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService;->mPendingJobs:Ljava/util/ArrayList;

    #@9
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    #@c
    move-result v0

    #@d
    if-eqz v0, :cond_0

    #@f
    .line 638
    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService;->mJobPackageTracker:Lcom/android/server/job/JobPackageTracker;

    #@11
    invoke-virtual {v0, p1}, Lcom/android/server/job/JobPackageTracker;->noteNonpending(Lcom/android/server/job/controllers/JobStatus;)V

    #@14
    .line 641
    :cond_0
    const/4 v0, 0x0

    #@15
    invoke-direct {p0, p1, v0}, Lcom/android/server/job/JobSchedulerService;->stopJobOnServiceContextLocked(Lcom/android/server/job/controllers/JobStatus;I)Z

    #@18
    .line 642
    invoke-virtual {p0}, Lcom/android/server/job/JobSchedulerService;->reportActive()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1b
    monitor-exit v1

    #@1c
    .line 632
    return-void

    #@1d
    .line 635
    :catchall_0
    move-exception v0

    #@1e
    monitor-exit v1

    #@1f
    throw v0
.end method

.method static dumpHelp(Ljava/io/PrintWriter;)V
    .locals 1
    .param p0, "pw"    # Ljava/io/PrintWriter;

    #@0
    .prologue
    .line 1731
    const-string/jumbo v0, "Job Scheduler (jobscheduler) dump options:"

    #@3
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@6
    .line 1732
    const-string/jumbo v0, "  [-h] [package] ..."

    #@9
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@c
    .line 1733
    const-string/jumbo v0, "    -h: print this help"

    #@f
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@12
    .line 1734
    const-string/jumbo v0, "  [package] is an optional package name to limit the output to."

    #@15
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@18
    .line 1730
    return-void
.end method

.method private evaluateJobPriorityLocked(Lcom/android/server/job/controllers/JobStatus;)I
    .locals 5
    .param p1, "job"    # Lcom/android/server/job/controllers/JobStatus;

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 1296
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getPriority()I

    #@4
    move-result v1

    #@5
    .line 1297
    .local v1, "priority":I
    const/16 v2, 0x1e

    #@7
    if-lt v1, v2, :cond_0

    #@9
    .line 1298
    invoke-direct {p0, v1, p1}, Lcom/android/server/job/JobSchedulerService;->adjustJobPriority(ILcom/android/server/job/controllers/JobStatus;)I

    #@c
    move-result v2

    #@d
    return v2

    #@e
    .line 1300
    :cond_0
    iget-object v2, p0, Lcom/android/server/job/JobSchedulerService;->mUidPriorityOverride:Landroid/util/SparseIntArray;

    #@10
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getSourceUid()I

    #@13
    move-result v3

    #@14
    invoke-virtual {v2, v3, v4}, Landroid/util/SparseIntArray;->get(II)I

    #@17
    move-result v0

    #@18
    .line 1301
    .local v0, "override":I
    if-eqz v0, :cond_1

    #@1a
    .line 1302
    invoke-direct {p0, v0, p1}, Lcom/android/server/job/JobSchedulerService;->adjustJobPriority(ILcom/android/server/job/controllers/JobStatus;)I

    #@1d
    move-result v2

    #@1e
    return v2

    #@1f
    .line 1304
    :cond_1
    invoke-direct {p0, v1, p1}, Lcom/android/server/job/JobSchedulerService;->adjustJobPriority(ILcom/android/server/job/controllers/JobStatus;)I

    #@22
    move-result v2

    #@23
    return v2
.end method

.method private getPackageName(Landroid/content/Intent;)Ljava/lang/String;
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 457
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    #@4
    move-result-object v1

    #@5
    .line 458
    .local v1, "uri":Landroid/net/Uri;
    if-eqz v1, :cond_0

    #@7
    invoke-virtual {v1}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    #@a
    move-result-object v0

    #@b
    .line 459
    .local v0, "pkg":Ljava/lang/String;
    :cond_0
    return-object v0
.end method

.method private getRescheduleJobForFailure(Lcom/android/server/job/controllers/JobStatus;)Lcom/android/server/job/controllers/JobStatus;
    .locals 18
    .param p1, "failureToReschedule"    # Lcom/android/server/job/controllers/JobStatus;

    #@0
    .prologue
    .line 895
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    #@3
    move-result-wide v12

    #@4
    .line 896
    .local v12, "elapsedNowMillis":J
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/job/controllers/JobStatus;->getJob()Landroid/app/job/JobInfo;

    #@7
    move-result-object v15

    #@8
    .line 898
    .local v15, "job":Landroid/app/job/JobInfo;
    invoke-virtual {v15}, Landroid/app/job/JobInfo;->getInitialBackoffMillis()J

    #@b
    move-result-wide v16

    #@c
    .line 899
    .local v16, "initialBackoffMillis":J
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/job/controllers/JobStatus;->getNumFailures()I

    #@f
    move-result v3

    #@10
    add-int/lit8 v8, v3, 0x1

    #@12
    .line 902
    .local v8, "backoffAttempts":I
    invoke-virtual {v15}, Landroid/app/job/JobInfo;->getBackoffPolicy()I

    #@15
    move-result v3

    #@16
    packed-switch v3, :pswitch_data_0

    #@19
    .line 912
    :pswitch_0
    move-wide/from16 v0, v16

    #@1b
    long-to-float v3, v0

    #@1c
    add-int/lit8 v4, v8, -0x1

    #@1e
    invoke-static {v3, v4}, Ljava/lang/Math;->scalb(FI)F

    #@21
    move-result v3

    #@22
    float-to-long v10, v3

    #@23
    .line 916
    .local v10, "delayMillis":J
    :goto_0
    const-wide/32 v4, 0x112a880

    #@26
    invoke-static {v10, v11, v4, v5}, Ljava/lang/Math;->min(JJ)J

    #@29
    move-result-wide v10

    #@2a
    .line 917
    new-instance v2, Lcom/android/server/job/controllers/JobStatus;

    #@2c
    add-long v4, v12, v10

    #@2e
    .line 918
    const-wide v6, 0x7fffffffffffffffL

    #@33
    move-object/from16 v3, p1

    #@35
    .line 917
    invoke-direct/range {v2 .. v8}, Lcom/android/server/job/controllers/JobStatus;-><init>(Lcom/android/server/job/controllers/JobStatus;JJI)V

    #@38
    .line 919
    .local v2, "newJob":Lcom/android/server/job/controllers/JobStatus;
    const/4 v14, 0x0

    #@39
    .local v14, "ic":I
    :goto_1
    move-object/from16 v0, p0

    #@3b
    iget-object v3, v0, Lcom/android/server/job/JobSchedulerService;->mControllers:Ljava/util/List;

    #@3d
    invoke-interface {v3}, Ljava/util/List;->size()I

    #@40
    move-result v3

    #@41
    if-ge v14, v3, :cond_0

    #@43
    .line 920
    move-object/from16 v0, p0

    #@45
    iget-object v3, v0, Lcom/android/server/job/JobSchedulerService;->mControllers:Ljava/util/List;

    #@47
    invoke-interface {v3, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@4a
    move-result-object v9

    #@4b
    check-cast v9, Lcom/android/server/job/controllers/StateController;

    #@4d
    .line 921
    .local v9, "controller":Lcom/android/server/job/controllers/StateController;
    move-object/from16 v0, p1

    #@4f
    invoke-virtual {v9, v2, v0}, Lcom/android/server/job/controllers/StateController;->rescheduleForFailure(Lcom/android/server/job/controllers/JobStatus;Lcom/android/server/job/controllers/JobStatus;)V

    #@52
    .line 919
    add-int/lit8 v14, v14, 0x1

    #@54
    goto :goto_1

    #@55
    .line 904
    .end local v2    # "newJob":Lcom/android/server/job/controllers/JobStatus;
    .end local v9    # "controller":Lcom/android/server/job/controllers/StateController;
    .end local v10    # "delayMillis":J
    .end local v14    # "ic":I
    :pswitch_1
    int-to-long v4, v8

    #@56
    mul-long v10, v16, v4

    #@58
    .line 905
    .restart local v10    # "delayMillis":J
    goto :goto_0

    #@59
    .line 923
    .restart local v2    # "newJob":Lcom/android/server/job/controllers/JobStatus;
    .restart local v14    # "ic":I
    :cond_0
    return-object v2

    #@5a
    .line 902
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private getRescheduleJobForPeriodic(Lcom/android/server/job/controllers/JobStatus;)Lcom/android/server/job/controllers/JobStatus;
    .locals 16
    .param p1, "periodicToReschedule"    # Lcom/android/server/job/controllers/JobStatus;

    #@0
    .prologue
    .line 938
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    #@3
    move-result-wide v8

    #@4
    .line 940
    .local v8, "elapsedNow":J
    const-wide/16 v14, 0x0

    #@6
    .line 943
    .local v14, "runEarly":J
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/job/controllers/JobStatus;->hasDeadlineConstraint()Z

    #@9
    move-result v0

    #@a
    if-eqz v0, :cond_0

    #@c
    .line 944
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/job/controllers/JobStatus;->getLatestRunTimeElapsed()J

    #@f
    move-result-wide v0

    #@10
    sub-long/2addr v0, v8

    #@11
    const-wide/16 v6, 0x0

    #@13
    invoke-static {v0, v1, v6, v7}, Ljava/lang/Math;->max(JJ)J

    #@16
    move-result-wide v14

    #@17
    .line 946
    :cond_0
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/job/controllers/JobStatus;->getJob()Landroid/app/job/JobInfo;

    #@1a
    move-result-object v0

    #@1b
    invoke-virtual {v0}, Landroid/app/job/JobInfo;->getFlexMillis()J

    #@1e
    move-result-wide v10

    #@1f
    .line 947
    .local v10, "flex":J
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/job/controllers/JobStatus;->getJob()Landroid/app/job/JobInfo;

    #@22
    move-result-object v0

    #@23
    invoke-virtual {v0}, Landroid/app/job/JobInfo;->getIntervalMillis()J

    #@26
    move-result-wide v12

    #@27
    .line 948
    .local v12, "period":J
    add-long v0, v8, v14

    #@29
    add-long v4, v0, v12

    #@2b
    .line 949
    .local v4, "newLatestRuntimeElapsed":J
    sub-long v2, v4, v10

    #@2d
    .line 955
    .local v2, "newEarliestRunTimeElapsed":J
    new-instance v0, Lcom/android/server/job/controllers/JobStatus;

    #@2f
    .line 956
    const/4 v6, 0x0

    #@30
    move-object/from16 v1, p1

    #@32
    .line 955
    invoke-direct/range {v0 .. v6}, Lcom/android/server/job/controllers/JobStatus;-><init>(Lcom/android/server/job/controllers/JobStatus;JJI)V

    #@35
    return-object v0
.end method

.method private isCurrentlyActiveLocked(Lcom/android/server/job/controllers/JobStatus;)Z
    .locals 5
    .param p1, "job"    # Lcom/android/server/job/controllers/JobStatus;

    #@0
    .prologue
    .line 858
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
    .line 859
    iget-object v3, p0, Lcom/android/server/job/JobSchedulerService;->mActiveServices:Ljava/util/List;

    #@b
    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@e
    move-result-object v2

    #@f
    check-cast v2, Lcom/android/server/job/JobServiceContext;

    #@11
    .line 860
    .local v2, "serviceContext":Lcom/android/server/job/JobServiceContext;
    invoke-virtual {v2}, Lcom/android/server/job/JobServiceContext;->getRunningJob()Lcom/android/server/job/controllers/JobStatus;

    #@14
    move-result-object v1

    #@15
    .line 861
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
    .line 862
    const/4 v3, 0x1

    #@26
    return v3

    #@27
    .line 858
    :cond_0
    add-int/lit8 v0, v0, 0x1

    #@29
    goto :goto_0

    #@2a
    .line 865
    .end local v1    # "running":Lcom/android/server/job/controllers/JobStatus;
    .end local v2    # "serviceContext":Lcom/android/server/job/JobServiceContext;
    :cond_1
    const/4 v3, 0x0

    #@2b
    return v3
.end method

.method private printContextIdToJobMap([Lcom/android/server/job/controllers/JobStatus;Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p1, "map"    # [Lcom/android/server/job/controllers/JobStatus;
    .param p2, "initial"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v3, -0x1

    #@1
    .line 1706
    new-instance v1, Ljava/lang/StringBuilder;

    #@3
    new-instance v2, Ljava/lang/StringBuilder;

    #@5
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@8
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b
    move-result-object v2

    #@c
    const-string/jumbo v4, ": "

    #@f
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@12
    move-result-object v2

    #@13
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@16
    move-result-object v2

    #@17
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@1a
    .line 1707
    .local v1, "s":Ljava/lang/StringBuilder;
    const/4 v0, 0x0

    #@1b
    .local v0, "i":I
    :goto_0
    array-length v2, p1

    #@1c
    if-ge v0, v2, :cond_2

    #@1e
    .line 1708
    const-string/jumbo v2, "("

    #@21
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@24
    move-result-object v4

    #@25
    .line 1709
    aget-object v2, p1, v0

    #@27
    if-nez v2, :cond_0

    #@29
    move v2, v3

    #@2a
    .line 1708
    :goto_1
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@2d
    move-result-object v4

    #@2e
    .line 1710
    aget-object v2, p1, v0

    #@30
    if-nez v2, :cond_1

    #@32
    move v2, v3

    #@33
    .line 1708
    :goto_2
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@36
    move-result-object v2

    #@37
    .line 1711
    const-string/jumbo v4, ")"

    #@3a
    .line 1708
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3d
    .line 1707
    add-int/lit8 v0, v0, 0x1

    #@3f
    goto :goto_0

    #@40
    .line 1709
    :cond_0
    aget-object v2, p1, v0

    #@42
    invoke-virtual {v2}, Lcom/android/server/job/controllers/JobStatus;->getJobId()I

    #@45
    move-result v2

    #@46
    goto :goto_1

    #@47
    .line 1710
    :cond_1
    aget-object v2, p1, v0

    #@49
    invoke-virtual {v2}, Lcom/android/server/job/controllers/JobStatus;->getUid()I

    #@4c
    move-result v2

    #@4d
    goto :goto_2

    #@4e
    .line 1713
    :cond_2
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@51
    move-result-object v2

    #@52
    return-object v2
.end method

.method private printPendingQueue()Ljava/lang/String;
    .locals 5

    #@0
    .prologue
    .line 1717
    new-instance v2, Ljava/lang/StringBuilder;

    #@2
    const-string/jumbo v3, "Pending queue: "

    #@5
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@8
    .line 1718
    .local v2, "s":Ljava/lang/StringBuilder;
    iget-object v3, p0, Lcom/android/server/job/JobSchedulerService;->mPendingJobs:Ljava/util/ArrayList;

    #@a
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    #@d
    move-result-object v0

    #@e
    .line 1719
    .local v0, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/job/controllers/JobStatus;>;"
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    #@11
    move-result v3

    #@12
    if-eqz v3, :cond_0

    #@14
    .line 1720
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@17
    move-result-object v1

    #@18
    check-cast v1, Lcom/android/server/job/controllers/JobStatus;

    #@1a
    .line 1721
    .local v1, "js":Lcom/android/server/job/controllers/JobStatus;
    const-string/jumbo v3, "("

    #@1d
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@20
    move-result-object v3

    #@21
    .line 1722
    invoke-virtual {v1}, Lcom/android/server/job/controllers/JobStatus;->getJob()Landroid/app/job/JobInfo;

    #@24
    move-result-object v4

    #@25
    invoke-virtual {v4}, Landroid/app/job/JobInfo;->getId()I

    #@28
    move-result v4

    #@29
    .line 1721
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@2c
    move-result-object v3

    #@2d
    .line 1723
    const-string/jumbo v4, ", "

    #@30
    .line 1721
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@33
    move-result-object v3

    #@34
    .line 1724
    invoke-virtual {v1}, Lcom/android/server/job/controllers/JobStatus;->getUid()I

    #@37
    move-result v4

    #@38
    .line 1721
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@3b
    move-result-object v3

    #@3c
    .line 1725
    const-string/jumbo v4, ") "

    #@3f
    .line 1721
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@42
    goto :goto_0

    #@43
    .line 1727
    .end local v1    # "js":Lcom/android/server/job/controllers/JobStatus;
    :cond_0
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@46
    move-result-object v3

    #@47
    return-object v3
.end method

.method private startTrackingJob(Lcom/android/server/job/controllers/JobStatus;Lcom/android/server/job/controllers/JobStatus;)V
    .locals 6
    .param p1, "jobStatus"    # Lcom/android/server/job/controllers/JobStatus;
    .param p2, "lastJob"    # Lcom/android/server/job/controllers/JobStatus;

    #@0
    .prologue
    .line 807
    iget-object v4, p0, Lcom/android/server/job/JobSchedulerService;->mLock:Ljava/lang/Object;

    #@2
    monitor-enter v4

    #@3
    .line 808
    :try_start_0
    iget-object v3, p0, Lcom/android/server/job/JobSchedulerService;->mJobs:Lcom/android/server/job/JobStore;

    #@5
    invoke-virtual {v3, p1}, Lcom/android/server/job/JobStore;->add(Lcom/android/server/job/controllers/JobStatus;)Z

    #@8
    move-result v2

    #@9
    .line 809
    .local v2, "update":Z
    iget-boolean v3, p0, Lcom/android/server/job/JobSchedulerService;->mReadyToRock:Z

    #@b
    if-eqz v3, :cond_1

    #@d
    .line 810
    const/4 v1, 0x0

    #@e
    .local v1, "i":I
    :goto_0
    iget-object v3, p0, Lcom/android/server/job/JobSchedulerService;->mControllers:Ljava/util/List;

    #@10
    invoke-interface {v3}, Ljava/util/List;->size()I

    #@13
    move-result v3

    #@14
    if-ge v1, v3, :cond_1

    #@16
    .line 811
    iget-object v3, p0, Lcom/android/server/job/JobSchedulerService;->mControllers:Ljava/util/List;

    #@18
    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@1b
    move-result-object v0

    #@1c
    check-cast v0, Lcom/android/server/job/controllers/StateController;

    #@1e
    .line 812
    .local v0, "controller":Lcom/android/server/job/controllers/StateController;
    if-eqz v2, :cond_0

    #@20
    .line 813
    const/4 v3, 0x0

    #@21
    const/4 v5, 0x1

    #@22
    invoke-virtual {v0, p1, v3, v5}, Lcom/android/server/job/controllers/StateController;->maybeStopTrackingJobLocked(Lcom/android/server/job/controllers/JobStatus;Lcom/android/server/job/controllers/JobStatus;Z)V

    #@25
    .line 815
    :cond_0
    invoke-virtual {v0, p1, p2}, Lcom/android/server/job/controllers/StateController;->maybeStartTrackingJobLocked(Lcom/android/server/job/controllers/JobStatus;Lcom/android/server/job/controllers/JobStatus;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@28
    .line 810
    add-int/lit8 v1, v1, 0x1

    #@2a
    goto :goto_0

    #@2b
    .end local v0    # "controller":Lcom/android/server/job/controllers/StateController;
    .end local v1    # "i":I
    :cond_1
    monitor-exit v4

    #@2c
    .line 806
    return-void

    #@2d
    .line 807
    .end local v2    # "update":Z
    :catchall_0
    move-exception v3

    #@2e
    monitor-exit v4

    #@2f
    throw v3
.end method

.method private stopJobOnServiceContextLocked(Lcom/android/server/job/controllers/JobStatus;I)Z
    .locals 5
    .param p1, "job"    # Lcom/android/server/job/controllers/JobStatus;
    .param p2, "reason"    # I

    #@0
    .prologue
    .line 841
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
    .line 842
    iget-object v3, p0, Lcom/android/server/job/JobSchedulerService;->mActiveServices:Ljava/util/List;

    #@b
    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@e
    move-result-object v2

    #@f
    check-cast v2, Lcom/android/server/job/JobServiceContext;

    #@11
    .line 843
    .local v2, "jsc":Lcom/android/server/job/JobServiceContext;
    invoke-virtual {v2}, Lcom/android/server/job/JobServiceContext;->getRunningJob()Lcom/android/server/job/controllers/JobStatus;

    #@14
    move-result-object v0

    #@15
    .line 844
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
    .line 845
    invoke-virtual {v2, p2}, Lcom/android/server/job/JobServiceContext;->cancelExecutingJob(I)V

    #@28
    .line 846
    const/4 v3, 0x1

    #@29
    return v3

    #@2a
    .line 841
    :cond_0
    add-int/lit8 v1, v1, 0x1

    #@2c
    goto :goto_0

    #@2d
    .line 849
    .end local v0    # "executing":Lcom/android/server/job/controllers/JobStatus;
    .end local v2    # "jsc":Lcom/android/server/job/JobServiceContext;
    :cond_1
    const/4 v3, 0x0

    #@2e
    return v3
.end method

.method private stopTrackingJob(Lcom/android/server/job/controllers/JobStatus;Lcom/android/server/job/controllers/JobStatus;Z)Z
    .locals 5
    .param p1, "jobStatus"    # Lcom/android/server/job/controllers/JobStatus;
    .param p2, "incomingJob"    # Lcom/android/server/job/controllers/JobStatus;
    .param p3, "writeBack"    # Z

    #@0
    .prologue
    .line 827
    iget-object v4, p0, Lcom/android/server/job/JobSchedulerService;->mLock:Ljava/lang/Object;

    #@2
    monitor-enter v4

    #@3
    .line 829
    :try_start_0
    iget-object v3, p0, Lcom/android/server/job/JobSchedulerService;->mJobs:Lcom/android/server/job/JobStore;

    #@5
    invoke-virtual {v3, p1, p3}, Lcom/android/server/job/JobStore;->remove(Lcom/android/server/job/controllers/JobStatus;Z)Z

    #@8
    move-result v2

    #@9
    .line 830
    .local v2, "removed":Z
    if-eqz v2, :cond_0

    #@b
    iget-boolean v3, p0, Lcom/android/server/job/JobSchedulerService;->mReadyToRock:Z

    #@d
    if-eqz v3, :cond_0

    #@f
    .line 831
    const/4 v1, 0x0

    #@10
    .local v1, "i":I
    :goto_0
    iget-object v3, p0, Lcom/android/server/job/JobSchedulerService;->mControllers:Ljava/util/List;

    #@12
    invoke-interface {v3}, Ljava/util/List;->size()I

    #@15
    move-result v3

    #@16
    if-ge v1, v3, :cond_0

    #@18
    .line 832
    iget-object v3, p0, Lcom/android/server/job/JobSchedulerService;->mControllers:Ljava/util/List;

    #@1a
    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@1d
    move-result-object v0

    #@1e
    check-cast v0, Lcom/android/server/job/controllers/StateController;

    #@20
    .line 833
    .local v0, "controller":Lcom/android/server/job/controllers/StateController;
    const/4 v3, 0x0

    #@21
    invoke-virtual {v0, p1, p2, v3}, Lcom/android/server/job/controllers/StateController;->maybeStopTrackingJobLocked(Lcom/android/server/job/controllers/JobStatus;Lcom/android/server/job/controllers/JobStatus;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@24
    .line 831
    add-int/lit8 v1, v1, 0x1

    #@26
    goto :goto_0

    #@27
    .end local v0    # "controller":Lcom/android/server/job/controllers/StateController;
    .end local v1    # "i":I
    :cond_0
    monitor-exit v4

    #@28
    .line 836
    return v2

    #@29
    .line 827
    .end local v2    # "removed":Z
    :catchall_0
    move-exception v3

    #@2a
    monitor-exit v4

    #@2b
    throw v3
.end method


# virtual methods
.method public cancelJob(II)V
    .locals 4
    .param p1, "uid"    # I
    .param p2, "jobId"    # I

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 624
    iget-object v2, p0, Lcom/android/server/job/JobSchedulerService;->mLock:Ljava/lang/Object;

    #@3
    monitor-enter v2

    #@4
    .line 625
    :try_start_0
    iget-object v1, p0, Lcom/android/server/job/JobSchedulerService;->mJobs:Lcom/android/server/job/JobStore;

    #@6
    invoke-virtual {v1, p1, p2}, Lcom/android/server/job/JobStore;->getJobByUidAndJobId(II)Lcom/android/server/job/controllers/JobStatus;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@9
    move-result-object v0

    #@a
    .local v0, "toCancel":Lcom/android/server/job/controllers/JobStatus;
    monitor-exit v2

    #@b
    .line 627
    if-eqz v0, :cond_0

    #@d
    .line 628
    invoke-direct {p0, v0, v3}, Lcom/android/server/job/JobSchedulerService;->cancelJobImpl(Lcom/android/server/job/controllers/JobStatus;Lcom/android/server/job/controllers/JobStatus;)V

    #@10
    .line 622
    :cond_0
    return-void

    #@11
    .line 624
    .end local v0    # "toCancel":Lcom/android/server/job/controllers/JobStatus;
    :catchall_0
    move-exception v1

    #@12
    monitor-exit v2

    #@13
    throw v1
.end method

.method public cancelJobsForUid(IZ)V
    .locals 7
    .param p1, "uid"    # I
    .param p2, "forceAll"    # Z

    #@0
    .prologue
    .line 596
    iget-object v6, p0, Lcom/android/server/job/JobSchedulerService;->mLock:Ljava/lang/Object;

    #@2
    monitor-enter v6

    #@3
    .line 597
    :try_start_0
    iget-object v5, p0, Lcom/android/server/job/JobSchedulerService;->mJobs:Lcom/android/server/job/JobStore;

    #@5
    invoke-virtual {v5, p1}, Lcom/android/server/job/JobStore;->getJobsByUid(I)Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@8
    move-result-object v2

    #@9
    .local v2, "jobsForUid":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/job/controllers/JobStatus;>;"
    monitor-exit v6

    #@a
    .line 599
    const/4 v1, 0x0

    #@b
    .local v1, "i":I
    :goto_0
    invoke-interface {v2}, Ljava/util/List;->size()I

    #@e
    move-result v5

    #@f
    if-ge v1, v5, :cond_1

    #@11
    .line 600
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@14
    move-result-object v4

    #@15
    check-cast v4, Lcom/android/server/job/controllers/JobStatus;

    #@17
    .line 601
    .local v4, "toRemove":Lcom/android/server/job/controllers/JobStatus;
    if-nez p2, :cond_0

    #@19
    .line 602
    invoke-virtual {v4}, Lcom/android/server/job/controllers/JobStatus;->getServiceComponent()Landroid/content/ComponentName;

    #@1c
    move-result-object v5

    #@1d
    invoke-virtual {v5}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    #@20
    move-result-object v3

    #@21
    .line 604
    .local v3, "packageName":Ljava/lang/String;
    :try_start_1
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    #@24
    move-result-object v5

    #@25
    invoke-interface {v5, p1, v3}, Landroid/app/IActivityManager;->getAppStartMode(ILjava/lang/String;)I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    #@28
    move-result v5

    #@29
    .line 605
    const/4 v6, 0x2

    #@2a
    .line 604
    if-eq v5, v6, :cond_0

    #@2c
    .line 599
    .end local v3    # "packageName":Ljava/lang/String;
    :goto_1
    add-int/lit8 v1, v1, 0x1

    #@2e
    goto :goto_0

    #@2f
    .line 596
    .end local v1    # "i":I
    .end local v2    # "jobsForUid":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/job/controllers/JobStatus;>;"
    .end local v4    # "toRemove":Lcom/android/server/job/controllers/JobStatus;
    :catchall_0
    move-exception v5

    #@30
    monitor-exit v6

    #@31
    throw v5

    #@32
    .line 608
    .restart local v1    # "i":I
    .restart local v2    # "jobsForUid":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/job/controllers/JobStatus;>;"
    .restart local v3    # "packageName":Ljava/lang/String;
    .restart local v4    # "toRemove":Lcom/android/server/job/controllers/JobStatus;
    :catch_0
    move-exception v0

    #@33
    .line 611
    .end local v3    # "packageName":Ljava/lang/String;
    :cond_0
    const/4 v5, 0x0

    #@34
    invoke-direct {p0, v4, v5}, Lcom/android/server/job/JobSchedulerService;->cancelJobImpl(Lcom/android/server/job/controllers/JobStatus;Lcom/android/server/job/controllers/JobStatus;)V

    #@37
    goto :goto_1

    #@38
    .line 594
    .end local v4    # "toRemove":Lcom/android/server/job/controllers/JobStatus;
    :cond_1
    return-void
.end method

.method cancelJobsForUser(I)V
    .locals 5
    .param p1, "userHandle"    # I

    #@0
    .prologue
    .line 577
    iget-object v4, p0, Lcom/android/server/job/JobSchedulerService;->mLock:Ljava/lang/Object;

    #@2
    monitor-enter v4

    #@3
    .line 578
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
    .line 580
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
    .line 581
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@14
    move-result-object v2

    #@15
    check-cast v2, Lcom/android/server/job/controllers/JobStatus;

    #@17
    .line 582
    .local v2, "toRemove":Lcom/android/server/job/controllers/JobStatus;
    const/4 v3, 0x0

    #@18
    invoke-direct {p0, v2, v3}, Lcom/android/server/job/JobSchedulerService;->cancelJobImpl(Lcom/android/server/job/controllers/JobStatus;Lcom/android/server/job/controllers/JobStatus;)V

    #@1b
    .line 580
    add-int/lit8 v0, v0, 0x1

    #@1d
    goto :goto_0

    #@1e
    .line 577
    .end local v0    # "i":I
    .end local v1    # "jobsForUser":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/job/controllers/JobStatus;>;"
    .end local v2    # "toRemove":Lcom/android/server/job/controllers/JobStatus;
    :catchall_0
    move-exception v3

    #@1f
    monitor-exit v4

    #@20
    throw v3

    #@21
    .line 575
    .restart local v0    # "i":I
    .restart local v1    # "jobsForUser":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/job/controllers/JobStatus;>;"
    :cond_0
    return-void
.end method

.method dumpInternal(Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 24
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "args"    # [Ljava/lang/String;

    #@0
    .prologue
    .line 1738
    const/4 v5, -0x1

    #@1
    .line 1739
    .local v5, "filterUid":I
    invoke-static/range {p2 .. p2}, Lcom/android/internal/util/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    #@4
    move-result v19

    #@5
    if-nez v19, :cond_3

    #@7
    .line 1740
    const/4 v13, 0x0

    #@8
    .line 1741
    .local v13, "opti":I
    :goto_0
    move-object/from16 v0, p2

    #@a
    array-length v0, v0

    #@b
    move/from16 v19, v0

    #@d
    move/from16 v0, v19

    #@f
    if-ge v13, v0, :cond_2

    #@11
    .line 1742
    aget-object v4, p2, v13

    #@13
    .line 1743
    .local v4, "arg":Ljava/lang/String;
    const-string/jumbo v19, "-h"

    #@16
    move-object/from16 v0, v19

    #@18
    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@1b
    move-result v19

    #@1c
    if-eqz v19, :cond_0

    #@1e
    .line 1744
    invoke-static/range {p1 .. p1}, Lcom/android/server/job/JobSchedulerService;->dumpHelp(Ljava/io/PrintWriter;)V

    #@21
    .line 1745
    return-void

    #@22
    .line 1746
    :cond_0
    const-string/jumbo v19, "-a"

    #@25
    move-object/from16 v0, v19

    #@27
    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@2a
    move-result v19

    #@2b
    if-eqz v19, :cond_1

    #@2d
    .line 1754
    add-int/lit8 v13, v13, 0x1

    #@2f
    goto :goto_0

    #@30
    .line 1748
    :cond_1
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    #@33
    move-result v19

    #@34
    if-lez v19, :cond_2

    #@36
    const/16 v19, 0x0

    #@38
    move/from16 v0, v19

    #@3a
    invoke-virtual {v4, v0}, Ljava/lang/String;->charAt(I)C

    #@3d
    move-result v19

    #@3e
    const/16 v20, 0x2d

    #@40
    move/from16 v0, v19

    #@42
    move/from16 v1, v20

    #@44
    if-ne v0, v1, :cond_2

    #@46
    .line 1749
    new-instance v19, Ljava/lang/StringBuilder;

    #@48
    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    #@4b
    const-string/jumbo v20, "Unknown option: "

    #@4e
    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@51
    move-result-object v19

    #@52
    move-object/from16 v0, v19

    #@54
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@57
    move-result-object v19

    #@58
    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@5b
    move-result-object v19

    #@5c
    move-object/from16 v0, p1

    #@5e
    move-object/from16 v1, v19

    #@60
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@63
    .line 1750
    return-void

    #@64
    .line 1756
    .end local v4    # "arg":Ljava/lang/String;
    :cond_2
    move-object/from16 v0, p2

    #@66
    array-length v0, v0

    #@67
    move/from16 v19, v0

    #@69
    move/from16 v0, v19

    #@6b
    if-ge v13, v0, :cond_3

    #@6d
    .line 1757
    aget-object v16, p2, v13

    #@6f
    .line 1759
    .local v16, "pkg":Ljava/lang/String;
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/job/JobSchedulerService;->getContext()Landroid/content/Context;

    #@72
    move-result-object v19

    #@73
    invoke-virtual/range {v19 .. v19}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    #@76
    move-result-object v19

    #@77
    .line 1760
    const/16 v20, 0x2000

    #@79
    .line 1759
    move-object/from16 v0, v19

    #@7b
    move-object/from16 v1, v16

    #@7d
    move/from16 v2, v20

    #@7f
    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageUid(Ljava/lang/String;I)I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    #@82
    move-result v5

    #@83
    .line 1768
    .end local v13    # "opti":I
    .end local v16    # "pkg":Ljava/lang/String;
    :cond_3
    invoke-static {v5}, Landroid/os/UserHandle;->getAppId(I)I

    #@86
    move-result v6

    #@87
    .line 1769
    .local v6, "filterUidFinal":I
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    #@8a
    move-result-wide v14

    #@8b
    .line 1770
    .local v14, "now":J
    move-object/from16 v0, p0

    #@8d
    iget-object v0, v0, Lcom/android/server/job/JobSchedulerService;->mLock:Ljava/lang/Object;

    #@8f
    move-object/from16 v20, v0

    #@91
    monitor-enter v20

    #@92
    .line 1771
    :try_start_1
    move-object/from16 v0, p0

    #@94
    iget-object v0, v0, Lcom/android/server/job/JobSchedulerService;->mConstants:Lcom/android/server/job/JobSchedulerService$Constants;

    #@96
    move-object/from16 v19, v0

    #@98
    move-object/from16 v0, v19

    #@9a
    move-object/from16 v1, p1

    #@9c
    invoke-virtual {v0, v1}, Lcom/android/server/job/JobSchedulerService$Constants;->dump(Ljava/io/PrintWriter;)V

    #@9f
    .line 1772
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    #@a2
    .line 1773
    new-instance v19, Ljava/lang/StringBuilder;

    #@a4
    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    #@a7
    const-string/jumbo v21, "Started users: "

    #@aa
    move-object/from16 v0, v19

    #@ac
    move-object/from16 v1, v21

    #@ae
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b1
    move-result-object v19

    #@b2
    move-object/from16 v0, p0

    #@b4
    iget-object v0, v0, Lcom/android/server/job/JobSchedulerService;->mStartedUsers:[I

    #@b6
    move-object/from16 v21, v0

    #@b8
    invoke-static/range {v21 .. v21}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    #@bb
    move-result-object v21

    #@bc
    move-object/from16 v0, v19

    #@be
    move-object/from16 v1, v21

    #@c0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@c3
    move-result-object v19

    #@c4
    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@c7
    move-result-object v19

    #@c8
    move-object/from16 v0, p1

    #@ca
    move-object/from16 v1, v19

    #@cc
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@cf
    .line 1774
    const-string/jumbo v19, "Registered "

    #@d2
    move-object/from16 v0, p1

    #@d4
    move-object/from16 v1, v19

    #@d6
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@d9
    .line 1775
    move-object/from16 v0, p0

    #@db
    iget-object v0, v0, Lcom/android/server/job/JobSchedulerService;->mJobs:Lcom/android/server/job/JobStore;

    #@dd
    move-object/from16 v19, v0

    #@df
    invoke-virtual/range {v19 .. v19}, Lcom/android/server/job/JobStore;->size()I

    #@e2
    move-result v19

    #@e3
    move-object/from16 v0, p1

    #@e5
    move/from16 v1, v19

    #@e7
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(I)V

    #@ea
    .line 1776
    const-string/jumbo v19, " jobs:"

    #@ed
    move-object/from16 v0, p1

    #@ef
    move-object/from16 v1, v19

    #@f1
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@f4
    .line 1777
    move-object/from16 v0, p0

    #@f6
    iget-object v0, v0, Lcom/android/server/job/JobSchedulerService;->mJobs:Lcom/android/server/job/JobStore;

    #@f8
    move-object/from16 v19, v0

    #@fa
    invoke-virtual/range {v19 .. v19}, Lcom/android/server/job/JobStore;->size()I

    #@fd
    move-result v19

    #@fe
    if-lez v19, :cond_5

    #@100
    .line 1778
    move-object/from16 v0, p0

    #@102
    iget-object v0, v0, Lcom/android/server/job/JobSchedulerService;->mJobs:Lcom/android/server/job/JobStore;

    #@104
    move-object/from16 v19, v0

    #@106
    move-object/from16 v0, v19

    #@108
    iget-object v0, v0, Lcom/android/server/job/JobStore;->mJobSet:Lcom/android/server/job/JobStore$JobSet;

    #@10a
    move-object/from16 v19, v0

    #@10c
    invoke-virtual/range {v19 .. v19}, Lcom/android/server/job/JobStore$JobSet;->getAllJobs()Ljava/util/List;

    #@10f
    move-result-object v11

    #@110
    .line 1779
    .local v11, "jobs":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/job/controllers/JobStatus;>;"
    new-instance v19, Lcom/android/server/job/JobSchedulerService$4;

    #@112
    move-object/from16 v0, v19

    #@114
    move-object/from16 v1, p0

    #@116
    invoke-direct {v0, v1}, Lcom/android/server/job/JobSchedulerService$4;-><init>(Lcom/android/server/job/JobSchedulerService;)V

    #@119
    move-object/from16 v0, v19

    #@11b
    invoke-static {v11, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    #@11e
    .line 1792
    invoke-interface {v11}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@121
    move-result-object v10

    #@122
    .local v10, "job$iterator":Ljava/util/Iterator;
    :cond_4
    :goto_1
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    #@125
    move-result v19

    #@126
    if-eqz v19, :cond_6

    #@128
    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@12b
    move-result-object v9

    #@12c
    check-cast v9, Lcom/android/server/job/controllers/JobStatus;

    #@12e
    .line 1793
    .local v9, "job":Lcom/android/server/job/controllers/JobStatus;
    const-string/jumbo v19, "  JOB #"

    #@131
    move-object/from16 v0, p1

    #@133
    move-object/from16 v1, v19

    #@135
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@138
    move-object/from16 v0, p1

    #@13a
    invoke-virtual {v9, v0}, Lcom/android/server/job/controllers/JobStatus;->printUniqueId(Ljava/io/PrintWriter;)V

    #@13d
    const-string/jumbo v19, ": "

    #@140
    move-object/from16 v0, p1

    #@142
    move-object/from16 v1, v19

    #@144
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@147
    .line 1794
    invoke-virtual {v9}, Lcom/android/server/job/controllers/JobStatus;->toShortStringExceptUniqueId()Ljava/lang/String;

    #@14a
    move-result-object v19

    #@14b
    move-object/from16 v0, p1

    #@14d
    move-object/from16 v1, v19

    #@14f
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@152
    .line 1797
    invoke-virtual {v9, v6}, Lcom/android/server/job/controllers/JobStatus;->shouldDump(I)Z

    #@155
    move-result v19

    #@156
    if-eqz v19, :cond_4

    #@158
    .line 1801
    const-string/jumbo v19, "    "

    #@15b
    const/16 v21, 0x1

    #@15d
    move-object/from16 v0, p1

    #@15f
    move-object/from16 v1, v19

    #@161
    move/from16 v2, v21

    #@163
    invoke-virtual {v9, v0, v1, v2}, Lcom/android/server/job/controllers/JobStatus;->dump(Ljava/io/PrintWriter;Ljava/lang/String;Z)V

    #@166
    .line 1802
    const-string/jumbo v19, "    Ready: "

    #@169
    move-object/from16 v0, p1

    #@16b
    move-object/from16 v1, v19

    #@16d
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@170
    .line 1803
    move-object/from16 v0, p0

    #@172
    iget-object v0, v0, Lcom/android/server/job/JobSchedulerService;->mHandler:Lcom/android/server/job/JobSchedulerService$JobHandler;

    #@174
    move-object/from16 v19, v0

    #@176
    move-object/from16 v0, v19

    #@178
    invoke-static {v0, v9}, Lcom/android/server/job/JobSchedulerService$JobHandler;->-wrap1(Lcom/android/server/job/JobSchedulerService$JobHandler;Lcom/android/server/job/controllers/JobStatus;)Z

    #@17b
    move-result v19

    #@17c
    move-object/from16 v0, p1

    #@17e
    move/from16 v1, v19

    #@180
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Z)V

    #@183
    .line 1804
    const-string/jumbo v19, " (job="

    #@186
    move-object/from16 v0, p1

    #@188
    move-object/from16 v1, v19

    #@18a
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@18d
    .line 1805
    invoke-virtual {v9}, Lcom/android/server/job/controllers/JobStatus;->isReady()Z

    #@190
    move-result v19

    #@191
    move-object/from16 v0, p1

    #@193
    move/from16 v1, v19

    #@195
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Z)V

    #@198
    .line 1806
    const-string/jumbo v19, " pending="

    #@19b
    move-object/from16 v0, p1

    #@19d
    move-object/from16 v1, v19

    #@19f
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@1a2
    .line 1807
    move-object/from16 v0, p0

    #@1a4
    iget-object v0, v0, Lcom/android/server/job/JobSchedulerService;->mPendingJobs:Ljava/util/ArrayList;

    #@1a6
    move-object/from16 v19, v0

    #@1a8
    move-object/from16 v0, v19

    #@1aa
    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    #@1ad
    move-result v19

    #@1ae
    move-object/from16 v0, p1

    #@1b0
    move/from16 v1, v19

    #@1b2
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Z)V

    #@1b5
    .line 1808
    const-string/jumbo v19, " active="

    #@1b8
    move-object/from16 v0, p1

    #@1ba
    move-object/from16 v1, v19

    #@1bc
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@1bf
    .line 1809
    move-object/from16 v0, p0

    #@1c1
    invoke-direct {v0, v9}, Lcom/android/server/job/JobSchedulerService;->isCurrentlyActiveLocked(Lcom/android/server/job/controllers/JobStatus;)Z

    #@1c4
    move-result v19

    #@1c5
    move-object/from16 v0, p1

    #@1c7
    move/from16 v1, v19

    #@1c9
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Z)V

    #@1cc
    .line 1810
    const-string/jumbo v19, " user="

    #@1cf
    move-object/from16 v0, p1

    #@1d1
    move-object/from16 v1, v19

    #@1d3
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@1d6
    .line 1811
    move-object/from16 v0, p0

    #@1d8
    iget-object v0, v0, Lcom/android/server/job/JobSchedulerService;->mStartedUsers:[I

    #@1da
    move-object/from16 v19, v0

    #@1dc
    invoke-virtual {v9}, Lcom/android/server/job/controllers/JobStatus;->getUserId()I

    #@1df
    move-result v21

    #@1e0
    move-object/from16 v0, v19

    #@1e2
    move/from16 v1, v21

    #@1e4
    invoke-static {v0, v1}, Lcom/android/internal/util/ArrayUtils;->contains([II)Z

    #@1e7
    move-result v19

    #@1e8
    move-object/from16 v0, p1

    #@1ea
    move/from16 v1, v19

    #@1ec
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Z)V

    #@1ef
    .line 1812
    const-string/jumbo v19, ")"

    #@1f2
    move-object/from16 v0, p1

    #@1f4
    move-object/from16 v1, v19

    #@1f6
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@1f9
    goto/16 :goto_1

    #@1fb
    .line 1770
    .end local v9    # "job":Lcom/android/server/job/controllers/JobStatus;
    .end local v10    # "job$iterator":Ljava/util/Iterator;
    .end local v11    # "jobs":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/job/controllers/JobStatus;>;"
    :catchall_0
    move-exception v19

    #@1fc
    monitor-exit v20

    #@1fd
    throw v19

    #@1fe
    .line 1761
    .end local v6    # "filterUidFinal":I
    .end local v14    # "now":J
    .restart local v13    # "opti":I
    .restart local v16    # "pkg":Ljava/lang/String;
    :catch_0
    move-exception v8

    #@1ff
    .line 1762
    .local v8, "ignored":Landroid/content/pm/PackageManager$NameNotFoundException;
    new-instance v19, Ljava/lang/StringBuilder;

    #@201
    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    #@204
    const-string/jumbo v20, "Invalid package: "

    #@207
    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@20a
    move-result-object v19

    #@20b
    move-object/from16 v0, v19

    #@20d
    move-object/from16 v1, v16

    #@20f
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@212
    move-result-object v19

    #@213
    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@216
    move-result-object v19

    #@217
    move-object/from16 v0, p1

    #@219
    move-object/from16 v1, v19

    #@21b
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@21e
    .line 1763
    return-void

    #@21f
    .line 1815
    .end local v8    # "ignored":Landroid/content/pm/PackageManager$NameNotFoundException;
    .end local v13    # "opti":I
    .end local v16    # "pkg":Ljava/lang/String;
    .restart local v6    # "filterUidFinal":I
    .restart local v14    # "now":J
    :cond_5
    :try_start_2
    const-string/jumbo v19, "  None."

    #@222
    move-object/from16 v0, p1

    #@224
    move-object/from16 v1, v19

    #@226
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@229
    .line 1817
    :cond_6
    const/4 v7, 0x0

    #@22a
    .local v7, "i":I
    :goto_2
    move-object/from16 v0, p0

    #@22c
    iget-object v0, v0, Lcom/android/server/job/JobSchedulerService;->mControllers:Ljava/util/List;

    #@22e
    move-object/from16 v19, v0

    #@230
    invoke-interface/range {v19 .. v19}, Ljava/util/List;->size()I

    #@233
    move-result v19

    #@234
    move/from16 v0, v19

    #@236
    if-ge v7, v0, :cond_7

    #@238
    .line 1818
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    #@23b
    .line 1819
    move-object/from16 v0, p0

    #@23d
    iget-object v0, v0, Lcom/android/server/job/JobSchedulerService;->mControllers:Ljava/util/List;

    #@23f
    move-object/from16 v19, v0

    #@241
    move-object/from16 v0, v19

    #@243
    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@246
    move-result-object v19

    #@247
    check-cast v19, Lcom/android/server/job/controllers/StateController;

    #@249
    move-object/from16 v0, v19

    #@24b
    move-object/from16 v1, p1

    #@24d
    invoke-virtual {v0, v1, v6}, Lcom/android/server/job/controllers/StateController;->dumpControllerStateLocked(Ljava/io/PrintWriter;I)V

    #@250
    .line 1817
    add-int/lit8 v7, v7, 0x1

    #@252
    goto :goto_2

    #@253
    .line 1821
    :cond_7
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    #@256
    .line 1822
    const-string/jumbo v19, "Uid priority overrides:"

    #@259
    move-object/from16 v0, p1

    #@25b
    move-object/from16 v1, v19

    #@25d
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@260
    .line 1823
    const/4 v7, 0x0

    #@261
    :goto_3
    move-object/from16 v0, p0

    #@263
    iget-object v0, v0, Lcom/android/server/job/JobSchedulerService;->mUidPriorityOverride:Landroid/util/SparseIntArray;

    #@265
    move-object/from16 v19, v0

    #@267
    invoke-virtual/range {v19 .. v19}, Landroid/util/SparseIntArray;->size()I

    #@26a
    move-result v19

    #@26b
    move/from16 v0, v19

    #@26d
    if-ge v7, v0, :cond_a

    #@26f
    .line 1824
    move-object/from16 v0, p0

    #@271
    iget-object v0, v0, Lcom/android/server/job/JobSchedulerService;->mUidPriorityOverride:Landroid/util/SparseIntArray;

    #@273
    move-object/from16 v19, v0

    #@275
    move-object/from16 v0, v19

    #@277
    invoke-virtual {v0, v7}, Landroid/util/SparseIntArray;->keyAt(I)I

    #@27a
    move-result v18

    #@27b
    .line 1825
    .local v18, "uid":I
    const/16 v19, -0x1

    #@27d
    move/from16 v0, v19

    #@27f
    if-eq v6, v0, :cond_8

    #@281
    invoke-static/range {v18 .. v18}, Landroid/os/UserHandle;->getAppId(I)I

    #@284
    move-result v19

    #@285
    move/from16 v0, v19

    #@287
    if-ne v6, v0, :cond_9

    #@289
    .line 1826
    :cond_8
    const-string/jumbo v19, "  "

    #@28c
    move-object/from16 v0, p1

    #@28e
    move-object/from16 v1, v19

    #@290
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@293
    invoke-static/range {v18 .. v18}, Landroid/os/UserHandle;->formatUid(I)Ljava/lang/String;

    #@296
    move-result-object v19

    #@297
    move-object/from16 v0, p1

    #@299
    move-object/from16 v1, v19

    #@29b
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@29e
    .line 1827
    const-string/jumbo v19, ": "

    #@2a1
    move-object/from16 v0, p1

    #@2a3
    move-object/from16 v1, v19

    #@2a5
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@2a8
    move-object/from16 v0, p0

    #@2aa
    iget-object v0, v0, Lcom/android/server/job/JobSchedulerService;->mUidPriorityOverride:Landroid/util/SparseIntArray;

    #@2ac
    move-object/from16 v19, v0

    #@2ae
    move-object/from16 v0, v19

    #@2b0
    invoke-virtual {v0, v7}, Landroid/util/SparseIntArray;->valueAt(I)I

    #@2b3
    move-result v19

    #@2b4
    move-object/from16 v0, p1

    #@2b6
    move/from16 v1, v19

    #@2b8
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(I)V

    #@2bb
    .line 1823
    :cond_9
    add-int/lit8 v7, v7, 0x1

    #@2bd
    goto :goto_3

    #@2be
    .line 1830
    .end local v18    # "uid":I
    :cond_a
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    #@2c1
    .line 1831
    move-object/from16 v0, p0

    #@2c3
    iget-object v0, v0, Lcom/android/server/job/JobSchedulerService;->mJobPackageTracker:Lcom/android/server/job/JobPackageTracker;

    #@2c5
    move-object/from16 v19, v0

    #@2c7
    const-string/jumbo v21, ""

    #@2ca
    move-object/from16 v0, v19

    #@2cc
    move-object/from16 v1, p1

    #@2ce
    move-object/from16 v2, v21

    #@2d0
    invoke-virtual {v0, v1, v2, v6}, Lcom/android/server/job/JobPackageTracker;->dump(Ljava/io/PrintWriter;Ljava/lang/String;I)V

    #@2d3
    .line 1832
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    #@2d6
    .line 1833
    move-object/from16 v0, p0

    #@2d8
    iget-object v0, v0, Lcom/android/server/job/JobSchedulerService;->mJobPackageTracker:Lcom/android/server/job/JobPackageTracker;

    #@2da
    move-object/from16 v19, v0

    #@2dc
    const-string/jumbo v21, ""

    #@2df
    move-object/from16 v0, v19

    #@2e1
    move-object/from16 v1, p1

    #@2e3
    move-object/from16 v2, v21

    #@2e5
    invoke-virtual {v0, v1, v2, v6}, Lcom/android/server/job/JobPackageTracker;->dumpHistory(Ljava/io/PrintWriter;Ljava/lang/String;I)Z

    #@2e8
    move-result v19

    #@2e9
    if-eqz v19, :cond_b

    #@2eb
    .line 1834
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    #@2ee
    .line 1836
    :cond_b
    const-string/jumbo v19, "Pending queue:"

    #@2f1
    move-object/from16 v0, p1

    #@2f3
    move-object/from16 v1, v19

    #@2f5
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@2f8
    .line 1837
    const/4 v7, 0x0

    #@2f9
    :goto_4
    move-object/from16 v0, p0

    #@2fb
    iget-object v0, v0, Lcom/android/server/job/JobSchedulerService;->mPendingJobs:Ljava/util/ArrayList;

    #@2fd
    move-object/from16 v19, v0

    #@2ff
    invoke-virtual/range {v19 .. v19}, Ljava/util/ArrayList;->size()I

    #@302
    move-result v19

    #@303
    move/from16 v0, v19

    #@305
    if-ge v7, v0, :cond_d

    #@307
    .line 1838
    move-object/from16 v0, p0

    #@309
    iget-object v0, v0, Lcom/android/server/job/JobSchedulerService;->mPendingJobs:Ljava/util/ArrayList;

    #@30b
    move-object/from16 v19, v0

    #@30d
    move-object/from16 v0, v19

    #@30f
    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@312
    move-result-object v9

    #@313
    check-cast v9, Lcom/android/server/job/controllers/JobStatus;

    #@315
    .line 1839
    .restart local v9    # "job":Lcom/android/server/job/controllers/JobStatus;
    const-string/jumbo v19, "  Pending #"

    #@318
    move-object/from16 v0, p1

    #@31a
    move-object/from16 v1, v19

    #@31c
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@31f
    move-object/from16 v0, p1

    #@321
    invoke-virtual {v0, v7}, Ljava/io/PrintWriter;->print(I)V

    #@324
    const-string/jumbo v19, ": "

    #@327
    move-object/from16 v0, p1

    #@329
    move-object/from16 v1, v19

    #@32b
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@32e
    .line 1840
    invoke-virtual {v9}, Lcom/android/server/job/controllers/JobStatus;->toShortString()Ljava/lang/String;

    #@331
    move-result-object v19

    #@332
    move-object/from16 v0, p1

    #@334
    move-object/from16 v1, v19

    #@336
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@339
    .line 1841
    const-string/jumbo v19, "    "

    #@33c
    const/16 v21, 0x0

    #@33e
    move-object/from16 v0, p1

    #@340
    move-object/from16 v1, v19

    #@342
    move/from16 v2, v21

    #@344
    invoke-virtual {v9, v0, v1, v2}, Lcom/android/server/job/controllers/JobStatus;->dump(Ljava/io/PrintWriter;Ljava/lang/String;Z)V

    #@347
    .line 1842
    move-object/from16 v0, p0

    #@349
    invoke-direct {v0, v9}, Lcom/android/server/job/JobSchedulerService;->evaluateJobPriorityLocked(Lcom/android/server/job/controllers/JobStatus;)I

    #@34c
    move-result v17

    #@34d
    .line 1843
    .local v17, "priority":I
    if-eqz v17, :cond_c

    #@34f
    .line 1844
    const-string/jumbo v19, "    Evaluated priority: "

    #@352
    move-object/from16 v0, p1

    #@354
    move-object/from16 v1, v19

    #@356
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@359
    move-object/from16 v0, p1

    #@35b
    move/from16 v1, v17

    #@35d
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(I)V

    #@360
    .line 1846
    :cond_c
    const-string/jumbo v19, "    Tag: "

    #@363
    move-object/from16 v0, p1

    #@365
    move-object/from16 v1, v19

    #@367
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@36a
    invoke-virtual {v9}, Lcom/android/server/job/controllers/JobStatus;->getTag()Ljava/lang/String;

    #@36d
    move-result-object v19

    #@36e
    move-object/from16 v0, p1

    #@370
    move-object/from16 v1, v19

    #@372
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@375
    .line 1837
    add-int/lit8 v7, v7, 0x1

    #@377
    goto :goto_4

    #@378
    .line 1848
    .end local v9    # "job":Lcom/android/server/job/controllers/JobStatus;
    .end local v17    # "priority":I
    :cond_d
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    #@37b
    .line 1849
    const-string/jumbo v19, "Active jobs:"

    #@37e
    move-object/from16 v0, p1

    #@380
    move-object/from16 v1, v19

    #@382
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@385
    .line 1850
    const/4 v7, 0x0

    #@386
    :goto_5
    move-object/from16 v0, p0

    #@388
    iget-object v0, v0, Lcom/android/server/job/JobSchedulerService;->mActiveServices:Ljava/util/List;

    #@38a
    move-object/from16 v19, v0

    #@38c
    invoke-interface/range {v19 .. v19}, Ljava/util/List;->size()I

    #@38f
    move-result v19

    #@390
    move/from16 v0, v19

    #@392
    if-ge v7, v0, :cond_10

    #@394
    .line 1851
    move-object/from16 v0, p0

    #@396
    iget-object v0, v0, Lcom/android/server/job/JobSchedulerService;->mActiveServices:Ljava/util/List;

    #@398
    move-object/from16 v19, v0

    #@39a
    move-object/from16 v0, v19

    #@39c
    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@39f
    move-result-object v12

    #@3a0
    check-cast v12, Lcom/android/server/job/JobServiceContext;

    #@3a2
    .line 1852
    .local v12, "jsc":Lcom/android/server/job/JobServiceContext;
    const-string/jumbo v19, "  Slot #"

    #@3a5
    move-object/from16 v0, p1

    #@3a7
    move-object/from16 v1, v19

    #@3a9
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@3ac
    move-object/from16 v0, p1

    #@3ae
    invoke-virtual {v0, v7}, Ljava/io/PrintWriter;->print(I)V

    #@3b1
    const-string/jumbo v19, ": "

    #@3b4
    move-object/from16 v0, p1

    #@3b6
    move-object/from16 v1, v19

    #@3b8
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@3bb
    .line 1853
    invoke-virtual {v12}, Lcom/android/server/job/JobServiceContext;->getRunningJob()Lcom/android/server/job/controllers/JobStatus;

    #@3be
    move-result-object v19

    #@3bf
    if-nez v19, :cond_f

    #@3c1
    .line 1854
    const-string/jumbo v19, "inactive"

    #@3c4
    move-object/from16 v0, p1

    #@3c6
    move-object/from16 v1, v19

    #@3c8
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@3cb
    .line 1850
    :cond_e
    :goto_6
    add-int/lit8 v7, v7, 0x1

    #@3cd
    goto :goto_5

    #@3ce
    .line 1857
    :cond_f
    invoke-virtual {v12}, Lcom/android/server/job/JobServiceContext;->getRunningJob()Lcom/android/server/job/controllers/JobStatus;

    #@3d1
    move-result-object v19

    #@3d2
    invoke-virtual/range {v19 .. v19}, Lcom/android/server/job/controllers/JobStatus;->toShortString()Ljava/lang/String;

    #@3d5
    move-result-object v19

    #@3d6
    move-object/from16 v0, p1

    #@3d8
    move-object/from16 v1, v19

    #@3da
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@3dd
    .line 1858
    const-string/jumbo v19, "    Running for: "

    #@3e0
    move-object/from16 v0, p1

    #@3e2
    move-object/from16 v1, v19

    #@3e4
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@3e7
    .line 1859
    invoke-virtual {v12}, Lcom/android/server/job/JobServiceContext;->getExecutionStartTimeElapsed()J

    #@3ea
    move-result-wide v22

    #@3eb
    sub-long v22, v14, v22

    #@3ed
    move-wide/from16 v0, v22

    #@3ef
    move-object/from16 v2, p1

    #@3f1
    invoke-static {v0, v1, v2}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    #@3f4
    .line 1860
    const-string/jumbo v19, ", timeout at: "

    #@3f7
    move-object/from16 v0, p1

    #@3f9
    move-object/from16 v1, v19

    #@3fb
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@3fe
    .line 1861
    invoke-virtual {v12}, Lcom/android/server/job/JobServiceContext;->getTimeoutElapsed()J

    #@401
    move-result-wide v22

    #@402
    sub-long v22, v22, v14

    #@404
    move-wide/from16 v0, v22

    #@406
    move-object/from16 v2, p1

    #@408
    invoke-static {v0, v1, v2}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    #@40b
    .line 1862
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    #@40e
    .line 1863
    invoke-virtual {v12}, Lcom/android/server/job/JobServiceContext;->getRunningJob()Lcom/android/server/job/controllers/JobStatus;

    #@411
    move-result-object v19

    #@412
    const-string/jumbo v21, "    "

    #@415
    const/16 v22, 0x0

    #@417
    move-object/from16 v0, v19

    #@419
    move-object/from16 v1, p1

    #@41b
    move-object/from16 v2, v21

    #@41d
    move/from16 v3, v22

    #@41f
    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/job/controllers/JobStatus;->dump(Ljava/io/PrintWriter;Ljava/lang/String;Z)V

    #@422
    .line 1864
    invoke-virtual {v12}, Lcom/android/server/job/JobServiceContext;->getRunningJob()Lcom/android/server/job/controllers/JobStatus;

    #@425
    move-result-object v19

    #@426
    move-object/from16 v0, p0

    #@428
    move-object/from16 v1, v19

    #@42a
    invoke-direct {v0, v1}, Lcom/android/server/job/JobSchedulerService;->evaluateJobPriorityLocked(Lcom/android/server/job/controllers/JobStatus;)I

    #@42d
    move-result v17

    #@42e
    .line 1865
    .restart local v17    # "priority":I
    if-eqz v17, :cond_e

    #@430
    .line 1866
    const-string/jumbo v19, "    Evaluated priority: "

    #@433
    move-object/from16 v0, p1

    #@435
    move-object/from16 v1, v19

    #@437
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@43a
    move-object/from16 v0, p1

    #@43c
    move/from16 v1, v17

    #@43e
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(I)V

    #@441
    goto :goto_6

    #@442
    .line 1870
    .end local v12    # "jsc":Lcom/android/server/job/JobServiceContext;
    .end local v17    # "priority":I
    :cond_10
    const/16 v19, -0x1

    #@444
    move/from16 v0, v19

    #@446
    if-ne v5, v0, :cond_11

    #@448
    .line 1871
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    #@44b
    .line 1872
    const-string/jumbo v19, "mReadyToRock="

    #@44e
    move-object/from16 v0, p1

    #@450
    move-object/from16 v1, v19

    #@452
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@455
    move-object/from16 v0, p0

    #@457
    iget-boolean v0, v0, Lcom/android/server/job/JobSchedulerService;->mReadyToRock:Z

    #@459
    move/from16 v19, v0

    #@45b
    move-object/from16 v0, p1

    #@45d
    move/from16 v1, v19

    #@45f
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Z)V

    #@462
    .line 1873
    const-string/jumbo v19, "mReportedActive="

    #@465
    move-object/from16 v0, p1

    #@467
    move-object/from16 v1, v19

    #@469
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@46c
    move-object/from16 v0, p0

    #@46e
    iget-boolean v0, v0, Lcom/android/server/job/JobSchedulerService;->mReportedActive:Z

    #@470
    move/from16 v19, v0

    #@472
    move-object/from16 v0, p1

    #@474
    move/from16 v1, v19

    #@476
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Z)V

    #@479
    .line 1874
    const-string/jumbo v19, "mMaxActiveJobs="

    #@47c
    move-object/from16 v0, p1

    #@47e
    move-object/from16 v1, v19

    #@480
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@483
    move-object/from16 v0, p0

    #@485
    iget v0, v0, Lcom/android/server/job/JobSchedulerService;->mMaxActiveJobs:I

    #@487
    move/from16 v19, v0

    #@489
    move-object/from16 v0, p1

    #@48b
    move/from16 v1, v19

    #@48d
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@490
    :cond_11
    monitor-exit v20

    #@491
    .line 1877
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    #@494
    .line 1737
    return-void
.end method

.method executeRunCommand(Ljava/lang/String;IIZ)I
    .locals 7
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .param p3, "jobId"    # I
    .param p4, "force"    # Z

    #@0
    .prologue
    const/4 v6, 0x0

    #@1
    .line 1680
    :try_start_0
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    #@4
    move-result-object v3

    #@5
    const/4 v4, 0x0

    #@6
    invoke-interface {v3, p1, v4, p2}, Landroid/content/pm/IPackageManager;->getPackageUid(Ljava/lang/String;II)I

    #@9
    move-result v2

    #@a
    .line 1681
    .local v2, "uid":I
    if-gez v2, :cond_0

    #@c
    .line 1682
    const/16 v3, -0x3e8

    #@e
    return v3

    #@f
    .line 1685
    :cond_0
    iget-object v4, p0, Lcom/android/server/job/JobSchedulerService;->mLock:Ljava/lang/Object;

    #@11
    monitor-enter v4
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@12
    .line 1686
    :try_start_1
    iget-object v3, p0, Lcom/android/server/job/JobSchedulerService;->mJobs:Lcom/android/server/job/JobStore;

    #@14
    invoke-virtual {v3, v2, p3}, Lcom/android/server/job/JobStore;->getJobByUidAndJobId(II)Lcom/android/server/job/controllers/JobStatus;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@17
    move-result-object v1

    #@18
    .line 1687
    .local v1, "js":Lcom/android/server/job/controllers/JobStatus;
    if-nez v1, :cond_1

    #@1a
    .line 1688
    const/16 v3, -0x3e9

    #@1c
    :try_start_2
    monitor-exit v4
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    #@1d
    return v3

    #@1e
    .line 1691
    :cond_1
    if-eqz p4, :cond_2

    #@20
    const/4 v3, 0x2

    #@21
    :goto_0
    :try_start_3
    iput v3, v1, Lcom/android/server/job/controllers/JobStatus;->overrideState:I

    #@23
    .line 1692
    invoke-virtual {v1}, Lcom/android/server/job/controllers/JobStatus;->isConstraintsSatisfied()Z

    #@26
    move-result v3

    #@27
    if-nez v3, :cond_3

    #@29
    .line 1693
    const/4 v3, 0x0

    #@2a
    iput v3, v1, Lcom/android/server/job/controllers/JobStatus;->overrideState:I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@2c
    .line 1694
    const/16 v3, -0x3ea

    #@2e
    :try_start_4
    monitor-exit v4
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_0

    #@2f
    return v3

    #@30
    .line 1691
    :cond_2
    const/4 v3, 0x1

    #@31
    goto :goto_0

    #@32
    .line 1697
    :cond_3
    :try_start_5
    iget-object v3, p0, Lcom/android/server/job/JobSchedulerService;->mHandler:Lcom/android/server/job/JobSchedulerService$JobHandler;

    #@34
    const/4 v5, 0x3

    #@35
    invoke-virtual {v3, v5}, Lcom/android/server/job/JobSchedulerService$JobHandler;->obtainMessage(I)Landroid/os/Message;

    #@38
    move-result-object v3

    #@39
    invoke-virtual {v3}, Landroid/os/Message;->sendToTarget()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    #@3c
    :try_start_6
    monitor-exit v4

    #@3d
    .line 1702
    .end local v1    # "js":Lcom/android/server/job/controllers/JobStatus;
    .end local v2    # "uid":I
    :goto_1
    return v6

    #@3e
    .line 1685
    .restart local v2    # "uid":I
    :catchall_0
    move-exception v3

    #@3f
    monitor-exit v4

    #@40
    throw v3
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_6} :catch_0

    #@41
    .line 1699
    .end local v2    # "uid":I
    :catch_0
    move-exception v0

    #@42
    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_1
.end method

.method findJobContextIdFromMap(Lcom/android/server/job/controllers/JobStatus;[Lcom/android/server/job/controllers/JobStatus;)I
    .locals 4
    .param p1, "jobStatus"    # Lcom/android/server/job/controllers/JobStatus;
    .param p2, "map"    # [Lcom/android/server/job/controllers/JobStatus;

    #@0
    .prologue
    .line 1454
    const/4 v0, 0x0

    #@1
    .local v0, "i":I
    :goto_0
    array-length v1, p2

    #@2
    if-ge v0, v1, :cond_1

    #@4
    .line 1455
    aget-object v1, p2, v0

    #@6
    if-eqz v1, :cond_0

    #@8
    aget-object v1, p2, v0

    #@a
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getUid()I

    #@d
    move-result v2

    #@e
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getJobId()I

    #@11
    move-result v3

    #@12
    invoke-virtual {v1, v2, v3}, Lcom/android/server/job/controllers/JobStatus;->matches(II)Z

    #@15
    move-result v1

    #@16
    if-eqz v1, :cond_0

    #@18
    .line 1456
    return v0

    #@19
    .line 1454
    :cond_0
    add-int/lit8 v0, v0, 0x1

    #@1b
    goto :goto_0

    #@1c
    .line 1459
    :cond_1
    const/4 v1, -0x1

    #@1d
    return v1
.end method

.method public getJobStore()Lcom/android/server/job/JobStore;
    .locals 1

    #@0
    .prologue
    .line 484
    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService;->mJobs:Lcom/android/server/job/JobStore;

    #@2
    return-object v0
.end method

.method public getLock()Ljava/lang/Object;
    .locals 1

    #@0
    .prologue
    .line 480
    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService;->mLock:Ljava/lang/Object;

    #@2
    return-object v0
.end method

.method public getPendingJob(II)Landroid/app/job/JobInfo;
    .locals 5
    .param p1, "uid"    # I
    .param p2, "jobId"    # I

    #@0
    .prologue
    .line 563
    iget-object v4, p0, Lcom/android/server/job/JobSchedulerService;->mLock:Ljava/lang/Object;

    #@2
    monitor-enter v4

    #@3
    .line 564
    :try_start_0
    iget-object v3, p0, Lcom/android/server/job/JobSchedulerService;->mJobs:Lcom/android/server/job/JobStore;

    #@5
    invoke-virtual {v3, p1}, Lcom/android/server/job/JobStore;->getJobsByUid(I)Ljava/util/List;

    #@8
    move-result-object v2

    #@9
    .line 565
    .local v2, "jobs":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/job/controllers/JobStatus;>;"
    invoke-interface {v2}, Ljava/util/List;->size()I

    #@c
    move-result v3

    #@d
    add-int/lit8 v0, v3, -0x1

    #@f
    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_1

    #@11
    .line 566
    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@14
    move-result-object v1

    #@15
    check-cast v1, Lcom/android/server/job/controllers/JobStatus;

    #@17
    .line 567
    .local v1, "job":Lcom/android/server/job/controllers/JobStatus;
    invoke-virtual {v1}, Lcom/android/server/job/controllers/JobStatus;->getJobId()I

    #@1a
    move-result v3

    #@1b
    if-ne v3, p2, :cond_0

    #@1d
    .line 568
    invoke-virtual {v1}, Lcom/android/server/job/controllers/JobStatus;->getJob()Landroid/app/job/JobInfo;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@20
    move-result-object v3

    #@21
    monitor-exit v4

    #@22
    return-object v3

    #@23
    .line 565
    :cond_0
    add-int/lit8 v0, v0, -0x1

    #@25
    goto :goto_0

    #@26
    .line 571
    .end local v1    # "job":Lcom/android/server/job/controllers/JobStatus;
    :cond_1
    const/4 v3, 0x0

    #@27
    monitor-exit v4

    #@28
    return-object v3

    #@29
    .line 563
    .end local v0    # "i":I
    .end local v2    # "jobs":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/job/controllers/JobStatus;>;"
    :catchall_0
    move-exception v3

    #@2a
    monitor-exit v4

    #@2b
    throw v3
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
    .line 551
    iget-object v5, p0, Lcom/android/server/job/JobSchedulerService;->mLock:Ljava/lang/Object;

    #@2
    monitor-enter v5

    #@3
    .line 552
    :try_start_0
    iget-object v4, p0, Lcom/android/server/job/JobSchedulerService;->mJobs:Lcom/android/server/job/JobStore;

    #@5
    invoke-virtual {v4, p1}, Lcom/android/server/job/JobStore;->getJobsByUid(I)Ljava/util/List;

    #@8
    move-result-object v2

    #@9
    .line 553
    .local v2, "jobs":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/job/controllers/JobStatus;>;"
    new-instance v3, Ljava/util/ArrayList;

    #@b
    invoke-interface {v2}, Ljava/util/List;->size()I

    #@e
    move-result v4

    #@f
    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    #@12
    .line 554
    .local v3, "outList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/job/JobInfo;>;"
    invoke-interface {v2}, Ljava/util/List;->size()I

    #@15
    move-result v4

    #@16
    add-int/lit8 v0, v4, -0x1

    #@18
    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_0

    #@1a
    .line 555
    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@1d
    move-result-object v1

    #@1e
    check-cast v1, Lcom/android/server/job/controllers/JobStatus;

    #@20
    .line 556
    .local v1, "job":Lcom/android/server/job/controllers/JobStatus;
    invoke-virtual {v1}, Lcom/android/server/job/controllers/JobStatus;->getJob()Landroid/app/job/JobInfo;

    #@23
    move-result-object v4

    #@24
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@27
    .line 554
    add-int/lit8 v0, v0, -0x1

    #@29
    goto :goto_0

    #@2a
    .end local v1    # "job":Lcom/android/server/job/controllers/JobStatus;
    :cond_0
    monitor-exit v5

    #@2b
    .line 558
    return-object v3

    #@2c
    .line 551
    .end local v0    # "i":I
    .end local v2    # "jobs":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/job/controllers/JobStatus;>;"
    .end local v3    # "outList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/job/JobInfo;>;"
    :catchall_0
    move-exception v4

    #@2d
    monitor-exit v5

    #@2e
    throw v4
.end method

.method noteJobsNonpending(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/server/job/controllers/JobStatus;",
            ">;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 876
    .local p1, "jobs":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/job/controllers/JobStatus;>;"
    invoke-interface {p1}, Ljava/util/List;->size()I

    #@3
    move-result v2

    #@4
    add-int/lit8 v0, v2, -0x1

    #@6
    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_0

    #@8
    .line 877
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@b
    move-result-object v1

    #@c
    check-cast v1, Lcom/android/server/job/controllers/JobStatus;

    #@e
    .line 878
    .local v1, "job":Lcom/android/server/job/controllers/JobStatus;
    iget-object v2, p0, Lcom/android/server/job/JobSchedulerService;->mJobPackageTracker:Lcom/android/server/job/JobPackageTracker;

    #@10
    invoke-virtual {v2, v1}, Lcom/android/server/job/JobPackageTracker;->noteNonpending(Lcom/android/server/job/controllers/JobStatus;)V

    #@13
    .line 876
    add-int/lit8 v0, v0, -0x1

    #@15
    goto :goto_0

    #@16
    .line 875
    .end local v1    # "job":Lcom/android/server/job/controllers/JobStatus;
    :cond_0
    return-void
.end method

.method noteJobsPending(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/server/job/controllers/JobStatus;",
            ">;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 869
    .local p1, "jobs":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/job/controllers/JobStatus;>;"
    invoke-interface {p1}, Ljava/util/List;->size()I

    #@3
    move-result v2

    #@4
    add-int/lit8 v0, v2, -0x1

    #@6
    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_0

    #@8
    .line 870
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@b
    move-result-object v1

    #@c
    check-cast v1, Lcom/android/server/job/controllers/JobStatus;

    #@e
    .line 871
    .local v1, "job":Lcom/android/server/job/controllers/JobStatus;
    iget-object v2, p0, Lcom/android/server/job/JobSchedulerService;->mJobPackageTracker:Lcom/android/server/job/JobPackageTracker;

    #@10
    invoke-virtual {v2, v1}, Lcom/android/server/job/JobPackageTracker;->notePending(Lcom/android/server/job/controllers/JobStatus;)V

    #@13
    .line 869
    add-int/lit8 v0, v0, -0x1

    #@15
    goto :goto_0

    #@16
    .line 868
    .end local v1    # "job":Lcom/android/server/job/controllers/JobStatus;
    :cond_0
    return-void
.end method

.method public onBootPhase(I)V
    .locals 13
    .param p1, "phase"    # I

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 751
    const/16 v0, 0x1f4

    #@3
    if-ne v0, p1, :cond_1

    #@5
    .line 752
    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService;->mConstants:Lcom/android/server/job/JobSchedulerService$Constants;

    #@7
    invoke-virtual {p0}, Lcom/android/server/job/JobSchedulerService;->getContext()Landroid/content/Context;

    #@a
    move-result-object v1

    #@b
    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    #@e
    move-result-object v1

    #@f
    invoke-virtual {v0, v1}, Lcom/android/server/job/JobSchedulerService$Constants;->start(Landroid/content/ContentResolver;)V

    #@12
    .line 754
    new-instance v3, Landroid/content/IntentFilter;

    #@14
    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    #@17
    .line 755
    .local v3, "filter":Landroid/content/IntentFilter;
    const-string/jumbo v0, "android.intent.action.PACKAGE_REMOVED"

    #@1a
    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    #@1d
    .line 756
    const-string/jumbo v0, "android.intent.action.PACKAGE_CHANGED"

    #@20
    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    #@23
    .line 757
    const-string/jumbo v0, "package"

    #@26
    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    #@29
    .line 758
    invoke-virtual {p0}, Lcom/android/server/job/JobSchedulerService;->getContext()Landroid/content/Context;

    #@2c
    move-result-object v0

    #@2d
    .line 759
    iget-object v1, p0, Lcom/android/server/job/JobSchedulerService;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    #@2f
    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    #@31
    move-object v5, v4

    #@32
    .line 758
    invoke-virtual/range {v0 .. v5}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    #@35
    .line 760
    new-instance v8, Landroid/content/IntentFilter;

    #@37
    const-string/jumbo v0, "android.intent.action.USER_REMOVED"

    #@3a
    invoke-direct {v8, v0}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    #@3d
    .line 761
    .local v8, "userFilter":Landroid/content/IntentFilter;
    invoke-virtual {p0}, Lcom/android/server/job/JobSchedulerService;->getContext()Landroid/content/Context;

    #@40
    move-result-object v5

    #@41
    .line 762
    iget-object v6, p0, Lcom/android/server/job/JobSchedulerService;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    #@43
    sget-object v7, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    #@45
    move-object v9, v4

    #@46
    move-object v10, v4

    #@47
    .line 761
    invoke-virtual/range {v5 .. v10}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    #@4a
    .line 763
    invoke-virtual {p0}, Lcom/android/server/job/JobSchedulerService;->getContext()Landroid/content/Context;

    #@4d
    move-result-object v0

    #@4e
    const-string/jumbo v1, "power"

    #@51
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    #@54
    move-result-object v0

    #@55
    check-cast v0, Landroid/os/PowerManager;

    #@57
    iput-object v0, p0, Lcom/android/server/job/JobSchedulerService;->mPowerManager:Landroid/os/PowerManager;

    #@59
    .line 765
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    #@5c
    move-result-object v0

    #@5d
    iget-object v1, p0, Lcom/android/server/job/JobSchedulerService;->mUidObserver:Landroid/app/IUidObserver;

    #@5f
    .line 766
    const/4 v2, 0x7

    #@60
    .line 765
    invoke-interface {v0, v1, v2}, Landroid/app/IActivityManager;->registerUidObserver(Landroid/app/IUidObserver;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@63
    .line 750
    .end local v3    # "filter":Landroid/content/IntentFilter;
    .end local v8    # "userFilter":Landroid/content/IntentFilter;
    :cond_0
    :goto_0
    return-void

    #@64
    .line 771
    :cond_1
    const/16 v0, 0x258

    #@66
    if-ne p1, v0, :cond_0

    #@68
    .line 772
    iget-object v1, p0, Lcom/android/server/job/JobSchedulerService;->mLock:Ljava/lang/Object;

    #@6a
    monitor-enter v1

    #@6b
    .line 774
    const/4 v0, 0x1

    #@6c
    :try_start_1
    iput-boolean v0, p0, Lcom/android/server/job/JobSchedulerService;->mReadyToRock:Z

    #@6e
    .line 776
    const-string/jumbo v0, "batterystats"

    #@71
    .line 775
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    #@74
    move-result-object v0

    #@75
    invoke-static {v0}, Lcom/android/internal/app/IBatteryStats$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/app/IBatteryStats;

    #@78
    move-result-object v0

    #@79
    iput-object v0, p0, Lcom/android/server/job/JobSchedulerService;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    #@7b
    .line 778
    const-class v0, Lcom/android/server/DeviceIdleController$LocalService;

    #@7d
    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    #@80
    move-result-object v0

    #@81
    check-cast v0, Lcom/android/server/DeviceIdleController$LocalService;

    #@83
    .line 777
    iput-object v0, p0, Lcom/android/server/job/JobSchedulerService;->mLocalDeviceIdleController:Lcom/android/server/DeviceIdleController$LocalService;

    #@85
    .line 780
    const/4 v12, 0x0

    #@86
    .local v12, "i":I
    :goto_1
    const/16 v0, 0x10

    #@88
    if-ge v12, v0, :cond_2

    #@8a
    .line 781
    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService;->mActiveServices:Ljava/util/List;

    #@8c
    .line 782
    new-instance v2, Lcom/android/server/job/JobServiceContext;

    #@8e
    iget-object v4, p0, Lcom/android/server/job/JobSchedulerService;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    #@90
    iget-object v5, p0, Lcom/android/server/job/JobSchedulerService;->mJobPackageTracker:Lcom/android/server/job/JobPackageTracker;

    #@92
    .line 783
    invoke-virtual {p0}, Lcom/android/server/job/JobSchedulerService;->getContext()Landroid/content/Context;

    #@95
    move-result-object v6

    #@96
    invoke-virtual {v6}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    #@99
    move-result-object v6

    #@9a
    .line 782
    invoke-direct {v2, p0, v4, v5, v6}, Lcom/android/server/job/JobServiceContext;-><init>(Lcom/android/server/job/JobSchedulerService;Lcom/android/internal/app/IBatteryStats;Lcom/android/server/job/JobPackageTracker;Landroid/os/Looper;)V

    #@9d
    .line 781
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@a0
    .line 780
    add-int/lit8 v12, v12, 0x1

    #@a2
    goto :goto_1

    #@a3
    .line 786
    :cond_2
    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService;->mJobs:Lcom/android/server/job/JobStore;

    #@a5
    new-instance v2, Lcom/android/server/job/JobSchedulerService$3;

    #@a7
    invoke-direct {v2, p0}, Lcom/android/server/job/JobSchedulerService$3;-><init>(Lcom/android/server/job/JobSchedulerService;)V

    #@aa
    invoke-virtual {v0, v2}, Lcom/android/server/job/JobStore;->forEachJob(Lcom/android/server/job/JobStore$JobStatusFunctor;)V

    #@ad
    .line 796
    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService;->mHandler:Lcom/android/server/job/JobSchedulerService$JobHandler;

    #@af
    const/4 v2, 0x1

    #@b0
    invoke-virtual {v0, v2}, Lcom/android/server/job/JobSchedulerService$JobHandler;->obtainMessage(I)Landroid/os/Message;

    #@b3
    move-result-object v0

    #@b4
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@b7
    monitor-exit v1

    #@b8
    goto :goto_0

    #@b9
    .line 772
    .end local v12    # "i":I
    :catchall_0
    move-exception v0

    #@ba
    monitor-exit v1

    #@bb
    throw v0

    #@bc
    .line 768
    .restart local v3    # "filter":Landroid/content/IntentFilter;
    .restart local v8    # "userFilter":Landroid/content/IntentFilter;
    :catch_0
    move-exception v11

    #@bd
    .local v11, "e":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method public onControllerStateChanged()V
    .locals 2

    #@0
    .prologue
    .line 1008
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
    .line 1007
    return-void
.end method

.method public onDeviceIdleStateChanged(Z)V
    .locals 6
    .param p1, "deviceIdle"    # Z

    #@0
    .prologue
    .line 663
    iget-object v4, p0, Lcom/android/server/job/JobSchedulerService;->mLock:Ljava/lang/Object;

    #@2
    monitor-enter v4

    #@3
    .line 664
    if-eqz p1, :cond_1

    #@5
    .line 667
    const/4 v1, 0x0

    #@6
    .local v1, "i":I
    :goto_0
    :try_start_0
    iget-object v3, p0, Lcom/android/server/job/JobSchedulerService;->mActiveServices:Ljava/util/List;

    #@8
    invoke-interface {v3}, Ljava/util/List;->size()I

    #@b
    move-result v3

    #@c
    if-ge v1, v3, :cond_3

    #@e
    .line 668
    iget-object v3, p0, Lcom/android/server/job/JobSchedulerService;->mActiveServices:Ljava/util/List;

    #@10
    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@13
    move-result-object v2

    #@14
    check-cast v2, Lcom/android/server/job/JobServiceContext;

    #@16
    .line 669
    .local v2, "jsc":Lcom/android/server/job/JobServiceContext;
    invoke-virtual {v2}, Lcom/android/server/job/JobServiceContext;->getRunningJob()Lcom/android/server/job/controllers/JobStatus;

    #@19
    move-result-object v0

    #@1a
    .line 670
    .local v0, "executing":Lcom/android/server/job/controllers/JobStatus;
    if-eqz v0, :cond_0

    #@1c
    .line 671
    invoke-virtual {v0}, Lcom/android/server/job/controllers/JobStatus;->getFlags()I

    #@1f
    move-result v3

    #@20
    and-int/lit8 v3, v3, 0x1

    #@22
    if-nez v3, :cond_0

    #@24
    .line 672
    const/4 v3, 0x4

    #@25
    invoke-virtual {v2, v3}, Lcom/android/server/job/JobServiceContext;->cancelExecutingJob(I)V

    #@28
    .line 667
    :cond_0
    add-int/lit8 v1, v1, 0x1

    #@2a
    goto :goto_0

    #@2b
    .line 677
    .end local v0    # "executing":Lcom/android/server/job/controllers/JobStatus;
    .end local v1    # "i":I
    .end local v2    # "jsc":Lcom/android/server/job/JobServiceContext;
    :cond_1
    iget-boolean v3, p0, Lcom/android/server/job/JobSchedulerService;->mReadyToRock:Z

    #@2d
    if-eqz v3, :cond_2

    #@2f
    .line 678
    iget-object v3, p0, Lcom/android/server/job/JobSchedulerService;->mLocalDeviceIdleController:Lcom/android/server/DeviceIdleController$LocalService;

    #@31
    if-eqz v3, :cond_2

    #@33
    .line 679
    iget-boolean v3, p0, Lcom/android/server/job/JobSchedulerService;->mReportedActive:Z

    #@35
    if-nez v3, :cond_2

    #@37
    .line 680
    const/4 v3, 0x1

    #@38
    iput-boolean v3, p0, Lcom/android/server/job/JobSchedulerService;->mReportedActive:Z

    #@3a
    .line 681
    iget-object v3, p0, Lcom/android/server/job/JobSchedulerService;->mLocalDeviceIdleController:Lcom/android/server/DeviceIdleController$LocalService;

    #@3c
    const/4 v5, 0x1

    #@3d
    invoke-virtual {v3, v5}, Lcom/android/server/DeviceIdleController$LocalService;->setJobsActive(Z)V

    #@40
    .line 685
    :cond_2
    iget-object v3, p0, Lcom/android/server/job/JobSchedulerService;->mHandler:Lcom/android/server/job/JobSchedulerService$JobHandler;

    #@42
    const/4 v5, 0x1

    #@43
    invoke-virtual {v3, v5}, Lcom/android/server/job/JobSchedulerService$JobHandler;->obtainMessage(I)Landroid/os/Message;

    #@46
    move-result-object v3

    #@47
    invoke-virtual {v3}, Landroid/os/Message;->sendToTarget()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@4a
    :cond_3
    monitor-exit v4

    #@4b
    .line 662
    return-void

    #@4c
    .line 663
    :catchall_0
    move-exception v3

    #@4d
    monitor-exit v4

    #@4e
    throw v3
.end method

.method public onJobCompleted(Lcom/android/server/job/controllers/JobStatus;Z)V
    .locals 5
    .param p1, "jobStatus"    # Lcom/android/server/job/controllers/JobStatus;
    .param p2, "needsReschedule"    # Z

    #@0
    .prologue
    const/4 v4, 0x3

    #@1
    .line 975
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getJob()Landroid/app/job/JobInfo;

    #@4
    move-result-object v2

    #@5
    invoke-virtual {v2}, Landroid/app/job/JobInfo;->isPeriodic()Z

    #@8
    move-result v2

    #@9
    if-eqz v2, :cond_0

    #@b
    const/4 v2, 0x0

    #@c
    :goto_0
    const/4 v3, 0x0

    #@d
    invoke-direct {p0, p1, v3, v2}, Lcom/android/server/job/JobSchedulerService;->stopTrackingJob(Lcom/android/server/job/controllers/JobStatus;Lcom/android/server/job/controllers/JobStatus;Z)Z

    #@10
    move-result v2

    #@11
    if-nez v2, :cond_1

    #@13
    .line 981
    iget-object v2, p0, Lcom/android/server/job/JobSchedulerService;->mHandler:Lcom/android/server/job/JobSchedulerService$JobHandler;

    #@15
    invoke-virtual {v2, v4}, Lcom/android/server/job/JobSchedulerService$JobHandler;->obtainMessage(I)Landroid/os/Message;

    #@18
    move-result-object v2

    #@19
    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    #@1c
    .line 982
    return-void

    #@1d
    .line 975
    :cond_0
    const/4 v2, 0x1

    #@1e
    goto :goto_0

    #@1f
    .line 988
    :cond_1
    if-eqz p2, :cond_3

    #@21
    .line 989
    invoke-direct {p0, p1}, Lcom/android/server/job/JobSchedulerService;->getRescheduleJobForFailure(Lcom/android/server/job/controllers/JobStatus;)Lcom/android/server/job/controllers/JobStatus;

    #@24
    move-result-object v0

    #@25
    .line 990
    .local v0, "rescheduled":Lcom/android/server/job/controllers/JobStatus;
    invoke-direct {p0, v0, p1}, Lcom/android/server/job/JobSchedulerService;->startTrackingJob(Lcom/android/server/job/controllers/JobStatus;Lcom/android/server/job/controllers/JobStatus;)V

    #@28
    .line 995
    .end local v0    # "rescheduled":Lcom/android/server/job/controllers/JobStatus;
    :cond_2
    :goto_1
    invoke-virtual {p0}, Lcom/android/server/job/JobSchedulerService;->reportActive()V

    #@2b
    .line 996
    iget-object v2, p0, Lcom/android/server/job/JobSchedulerService;->mHandler:Lcom/android/server/job/JobSchedulerService$JobHandler;

    #@2d
    invoke-virtual {v2, v4}, Lcom/android/server/job/JobSchedulerService$JobHandler;->obtainMessage(I)Landroid/os/Message;

    #@30
    move-result-object v2

    #@31
    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    #@34
    .line 969
    return-void

    #@35
    .line 991
    :cond_3
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getJob()Landroid/app/job/JobInfo;

    #@38
    move-result-object v2

    #@39
    invoke-virtual {v2}, Landroid/app/job/JobInfo;->isPeriodic()Z

    #@3c
    move-result v2

    #@3d
    if-eqz v2, :cond_2

    #@3f
    .line 992
    invoke-direct {p0, p1}, Lcom/android/server/job/JobSchedulerService;->getRescheduleJobForPeriodic(Lcom/android/server/job/controllers/JobStatus;)Lcom/android/server/job/controllers/JobStatus;

    #@42
    move-result-object v1

    #@43
    .line 993
    .local v1, "rescheduledPeriodic":Lcom/android/server/job/controllers/JobStatus;
    invoke-direct {p0, v1, p1}, Lcom/android/server/job/JobSchedulerService;->startTrackingJob(Lcom/android/server/job/controllers/JobStatus;Lcom/android/server/job/controllers/JobStatus;)V

    #@46
    goto :goto_1
.end method

.method public onRunJobNow(Lcom/android/server/job/controllers/JobStatus;)V
    .locals 2
    .param p1, "jobStatus"    # Lcom/android/server/job/controllers/JobStatus;

    #@0
    .prologue
    .line 1013
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
    .line 1012
    return-void
.end method

.method public onStart()V
    .locals 2

    #@0
    .prologue
    .line 745
    const-class v0, Lcom/android/server/job/JobSchedulerInternal;

    #@2
    new-instance v1, Lcom/android/server/job/JobSchedulerService$LocalService;

    #@4
    invoke-direct {v1, p0}, Lcom/android/server/job/JobSchedulerService$LocalService;-><init>(Lcom/android/server/job/JobSchedulerService;)V

    #@7
    invoke-virtual {p0, v0, v1}, Lcom/android/server/job/JobSchedulerService;->publishLocalService(Ljava/lang/Class;Ljava/lang/Object;)V

    #@a
    .line 746
    const-string/jumbo v0, "jobscheduler"

    #@d
    iget-object v1, p0, Lcom/android/server/job/JobSchedulerService;->mJobSchedulerStub:Lcom/android/server/job/JobSchedulerService$JobSchedulerStub;

    #@f
    invoke-virtual {p0, v0, v1}, Lcom/android/server/job/JobSchedulerService;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;)V

    #@12
    .line 744
    return-void
.end method

.method public onStartUser(I)V
    .locals 2
    .param p1, "userHandle"    # I

    #@0
    .prologue
    .line 489
    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService;->mStartedUsers:[I

    #@2
    invoke-static {v0, p1}, Lcom/android/internal/util/ArrayUtils;->appendInt([II)[I

    #@5
    move-result-object v0

    #@6
    iput-object v0, p0, Lcom/android/server/job/JobSchedulerService;->mStartedUsers:[I

    #@8
    .line 491
    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService;->mHandler:Lcom/android/server/job/JobSchedulerService$JobHandler;

    #@a
    const/4 v1, 0x1

    #@b
    invoke-virtual {v0, v1}, Lcom/android/server/job/JobSchedulerService$JobHandler;->obtainMessage(I)Landroid/os/Message;

    #@e
    move-result-object v0

    #@f
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    #@12
    .line 488
    return-void
.end method

.method public onStopUser(I)V
    .locals 1
    .param p1, "userHandle"    # I

    #@0
    .prologue
    .line 502
    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService;->mStartedUsers:[I

    #@2
    invoke-static {v0, p1}, Lcom/android/internal/util/ArrayUtils;->removeInt([II)[I

    #@5
    move-result-object v0

    #@6
    iput-object v0, p0, Lcom/android/server/job/JobSchedulerService;->mStartedUsers:[I

    #@8
    .line 501
    return-void
.end method

.method public onUnlockUser(I)V
    .locals 2
    .param p1, "userHandle"    # I

    #@0
    .prologue
    .line 497
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
    .line 495
    return-void
.end method

.method reportActive()V
    .locals 5

    #@0
    .prologue
    .line 692
    iget-object v4, p0, Lcom/android/server/job/JobSchedulerService;->mPendingJobs:Ljava/util/ArrayList;

    #@2
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    #@5
    move-result v4

    #@6
    if-lez v4, :cond_1

    #@8
    const/4 v0, 0x1

    #@9
    .line 693
    .local v0, "active":Z
    :goto_0
    iget-object v4, p0, Lcom/android/server/job/JobSchedulerService;->mPendingJobs:Ljava/util/ArrayList;

    #@b
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    #@e
    move-result v4

    #@f
    if-gtz v4, :cond_3

    #@11
    .line 694
    const/4 v1, 0x0

    #@12
    .local v1, "i":I
    :goto_1
    iget-object v4, p0, Lcom/android/server/job/JobSchedulerService;->mActiveServices:Ljava/util/List;

    #@14
    invoke-interface {v4}, Ljava/util/List;->size()I

    #@17
    move-result v4

    #@18
    if-ge v1, v4, :cond_3

    #@1a
    .line 695
    iget-object v4, p0, Lcom/android/server/job/JobSchedulerService;->mActiveServices:Ljava/util/List;

    #@1c
    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@1f
    move-result-object v3

    #@20
    check-cast v3, Lcom/android/server/job/JobServiceContext;

    #@22
    .line 696
    .local v3, "jsc":Lcom/android/server/job/JobServiceContext;
    invoke-virtual {v3}, Lcom/android/server/job/JobServiceContext;->getRunningJob()Lcom/android/server/job/controllers/JobStatus;

    #@25
    move-result-object v2

    #@26
    .line 697
    .local v2, "job":Lcom/android/server/job/controllers/JobStatus;
    if-eqz v2, :cond_0

    #@28
    .line 698
    invoke-virtual {v2}, Lcom/android/server/job/controllers/JobStatus;->getJob()Landroid/app/job/JobInfo;

    #@2b
    move-result-object v4

    #@2c
    invoke-virtual {v4}, Landroid/app/job/JobInfo;->getFlags()I

    #@2f
    move-result v4

    #@30
    and-int/lit8 v4, v4, 0x1

    #@32
    if-nez v4, :cond_0

    #@34
    .line 699
    iget-boolean v4, v2, Lcom/android/server/job/controllers/JobStatus;->dozeWhitelisted:Z

    #@36
    if-eqz v4, :cond_2

    #@38
    .line 694
    :cond_0
    add-int/lit8 v1, v1, 0x1

    #@3a
    goto :goto_1

    #@3b
    .line 692
    .end local v0    # "active":Z
    .end local v1    # "i":I
    .end local v2    # "job":Lcom/android/server/job/controllers/JobStatus;
    .end local v3    # "jsc":Lcom/android/server/job/JobServiceContext;
    :cond_1
    const/4 v0, 0x0

    #@3c
    .restart local v0    # "active":Z
    goto :goto_0

    #@3d
    .line 702
    .restart local v1    # "i":I
    .restart local v2    # "job":Lcom/android/server/job/controllers/JobStatus;
    .restart local v3    # "jsc":Lcom/android/server/job/JobServiceContext;
    :cond_2
    const/4 v0, 0x1

    #@3e
    .line 708
    .end local v1    # "i":I
    .end local v2    # "job":Lcom/android/server/job/controllers/JobStatus;
    .end local v3    # "jsc":Lcom/android/server/job/JobServiceContext;
    :cond_3
    iget-boolean v4, p0, Lcom/android/server/job/JobSchedulerService;->mReportedActive:Z

    #@40
    if-eq v4, v0, :cond_4

    #@42
    .line 709
    iput-boolean v0, p0, Lcom/android/server/job/JobSchedulerService;->mReportedActive:Z

    #@44
    .line 710
    iget-object v4, p0, Lcom/android/server/job/JobSchedulerService;->mLocalDeviceIdleController:Lcom/android/server/DeviceIdleController$LocalService;

    #@46
    if-eqz v4, :cond_4

    #@48
    .line 711
    iget-object v4, p0, Lcom/android/server/job/JobSchedulerService;->mLocalDeviceIdleController:Lcom/android/server/DeviceIdleController$LocalService;

    #@4a
    invoke-virtual {v4, v0}, Lcom/android/server/DeviceIdleController$LocalService;->setJobsActive(Z)V

    #@4d
    .line 690
    :cond_4
    return-void
.end method

.method public schedule(Landroid/app/job/JobInfo;I)I
    .locals 6
    .param p1, "job"    # Landroid/app/job/JobInfo;
    .param p2, "uId"    # I

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 513
    const/4 v4, -0x1

    #@2
    move-object v0, p0

    #@3
    move-object v1, p1

    #@4
    move v2, p2

    #@5
    move-object v5, v3

    #@6
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/job/JobSchedulerService;->scheduleAsPackage(Landroid/app/job/JobInfo;ILjava/lang/String;ILjava/lang/String;)I

    #@9
    move-result v0

    #@a
    return v0
.end method

.method public scheduleAsPackage(Landroid/app/job/JobInfo;ILjava/lang/String;ILjava/lang/String;)I
    .locals 7
    .param p1, "job"    # Landroid/app/job/JobInfo;
    .param p2, "uId"    # I
    .param p3, "packageName"    # Ljava/lang/String;
    .param p4, "userId"    # I
    .param p5, "tag"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v6, 0x1

    #@1
    .line 518
    invoke-static {p1, p2, p3, p4, p5}, Lcom/android/server/job/controllers/JobStatus;->createFromJobInfo(Landroid/app/job/JobInfo;ILjava/lang/String;ILjava/lang/String;)Lcom/android/server/job/controllers/JobStatus;

    #@4
    move-result-object v1

    #@5
    .line 520
    .local v1, "jobStatus":Lcom/android/server/job/controllers/JobStatus;
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    #@8
    move-result-object v3

    #@9
    .line 521
    invoke-virtual {p1}, Landroid/app/job/JobInfo;->getService()Landroid/content/ComponentName;

    #@c
    move-result-object v4

    #@d
    invoke-virtual {v4}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    #@10
    move-result-object v4

    #@11
    .line 520
    invoke-interface {v3, p2, v4}, Landroid/app/IActivityManager;->getAppStartMode(ILjava/lang/String;)I

    #@14
    move-result v3

    #@15
    .line 521
    const/4 v4, 0x2

    #@16
    .line 520
    if-ne v3, v4, :cond_0

    #@18
    .line 522
    const-string/jumbo v3, "JobSchedulerService"

    #@1b
    new-instance v4, Ljava/lang/StringBuilder;

    #@1d
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@20
    const-string/jumbo v5, "Not scheduling job "

    #@23
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@26
    move-result-object v4

    #@27
    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@2a
    move-result-object v4

    #@2b
    const-string/jumbo v5, ":"

    #@2e
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@31
    move-result-object v4

    #@32
    invoke-virtual {p1}, Landroid/app/job/JobInfo;->toString()Ljava/lang/String;

    #@35
    move-result-object v5

    #@36
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@39
    move-result-object v4

    #@3a
    .line 523
    const-string/jumbo v5, " -- package not allowed to start"

    #@3d
    .line 522
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@40
    move-result-object v4

    #@41
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@44
    move-result-object v4

    #@45
    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@48
    .line 524
    const/4 v3, 0x0

    #@49
    return v3

    #@4a
    .line 526
    :catch_0
    move-exception v0

    #@4b
    .line 530
    :cond_0
    iget-object v4, p0, Lcom/android/server/job/JobSchedulerService;->mLock:Ljava/lang/Object;

    #@4d
    monitor-enter v4

    #@4e
    .line 532
    if-nez p3, :cond_1

    #@50
    .line 533
    :try_start_1
    iget-object v3, p0, Lcom/android/server/job/JobSchedulerService;->mJobs:Lcom/android/server/job/JobStore;

    #@52
    invoke-virtual {v3, p2}, Lcom/android/server/job/JobStore;->countJobsForUid(I)I

    #@55
    move-result v3

    #@56
    const/16 v5, 0x64

    #@58
    if-le v3, v5, :cond_1

    #@5a
    .line 534
    const-string/jumbo v3, "JobSchedulerService"

    #@5d
    new-instance v5, Ljava/lang/StringBuilder;

    #@5f
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@62
    const-string/jumbo v6, "Too many jobs for uid "

    #@65
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@68
    move-result-object v5

    #@69
    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@6c
    move-result-object v5

    #@6d
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@70
    move-result-object v5

    #@71
    invoke-static {v3, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@74
    .line 535
    new-instance v3, Ljava/lang/IllegalStateException;

    #@76
    const-string/jumbo v5, "Apps may not schedule more than 100 distinct jobs"

    #@79
    invoke-direct {v3, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@7c
    throw v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@7d
    .line 530
    :catchall_0
    move-exception v3

    #@7e
    monitor-exit v4

    #@7f
    throw v3

    #@80
    .line 540
    :cond_1
    :try_start_2
    iget-object v3, p0, Lcom/android/server/job/JobSchedulerService;->mJobs:Lcom/android/server/job/JobStore;

    #@82
    invoke-virtual {p1}, Landroid/app/job/JobInfo;->getId()I

    #@85
    move-result v5

    #@86
    invoke-virtual {v3, p2, v5}, Lcom/android/server/job/JobStore;->getJobByUidAndJobId(II)Lcom/android/server/job/controllers/JobStatus;

    #@89
    move-result-object v2

    #@8a
    .line 541
    .local v2, "toCancel":Lcom/android/server/job/controllers/JobStatus;
    if-eqz v2, :cond_2

    #@8c
    .line 542
    invoke-direct {p0, v2, v1}, Lcom/android/server/job/JobSchedulerService;->cancelJobImpl(Lcom/android/server/job/controllers/JobStatus;Lcom/android/server/job/controllers/JobStatus;)V

    #@8f
    .line 544
    :cond_2
    invoke-direct {p0, v1, v2}, Lcom/android/server/job/JobSchedulerService;->startTrackingJob(Lcom/android/server/job/controllers/JobStatus;Lcom/android/server/job/controllers/JobStatus;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@92
    monitor-exit v4

    #@93
    .line 546
    iget-object v3, p0, Lcom/android/server/job/JobSchedulerService;->mHandler:Lcom/android/server/job/JobSchedulerService$JobHandler;

    #@95
    invoke-virtual {v3, v6}, Lcom/android/server/job/JobSchedulerService$JobHandler;->obtainMessage(I)Landroid/os/Message;

    #@98
    move-result-object v3

    #@99
    invoke-virtual {v3}, Landroid/os/Message;->sendToTarget()V

    #@9c
    .line 547
    return v6
.end method

.method updateUidState(II)V
    .locals 3
    .param p1, "uid"    # I
    .param p2, "procState"    # I

    #@0
    .prologue
    .line 647
    iget-object v1, p0, Lcom/android/server/job/JobSchedulerService;->mLock:Ljava/lang/Object;

    #@2
    monitor-enter v1

    #@3
    .line 648
    const/4 v0, 0x2

    #@4
    if-ne p2, v0, :cond_0

    #@6
    .line 652
    :try_start_0
    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService;->mUidPriorityOverride:Landroid/util/SparseIntArray;

    #@8
    const/16 v2, 0x28

    #@a
    invoke-virtual {v0, p1, v2}, Landroid/util/SparseIntArray;->put(II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@d
    :goto_0
    monitor-exit v1

    #@e
    .line 646
    return-void

    #@f
    .line 653
    :cond_0
    const/4 v0, 0x4

    #@10
    if-gt p2, v0, :cond_1

    #@12
    .line 654
    :try_start_1
    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService;->mUidPriorityOverride:Landroid/util/SparseIntArray;

    #@14
    const/16 v2, 0x1e

    #@16
    invoke-virtual {v0, p1, v2}, Landroid/util/SparseIntArray;->put(II)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@19
    goto :goto_0

    #@1a
    .line 647
    :catchall_0
    move-exception v0

    #@1b
    monitor-exit v1

    #@1c
    throw v0

    #@1d
    .line 656
    :cond_1
    :try_start_2
    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService;->mUidPriorityOverride:Landroid/util/SparseIntArray;

    #@1f
    invoke-virtual {v0, p1}, Landroid/util/SparseIntArray;->delete(I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@22
    goto :goto_0
.end method
