.class public Lcom/android/server/job/controllers/AppIdleController;
.super Lcom/android/server/job/controllers/StateController;
.source "AppIdleController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/job/controllers/AppIdleController$AppIdleStateChangeListener;,
        Lcom/android/server/job/controllers/AppIdleController$GlobalUpdateFunc;,
        Lcom/android/server/job/controllers/AppIdleController$PackageUpdateFunc;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final LOG_TAG:Ljava/lang/String; = "AppIdleController"

.field private static volatile sController:Lcom/android/server/job/controllers/AppIdleController;

.field private static sCreationLock:Ljava/lang/Object;


# instance fields
.field mAppIdleParoleOn:Z

.field private mInitializedParoleOn:Z

.field private final mJobSchedulerService:Lcom/android/server/job/JobSchedulerService;

.field private final mUsageStatsInternal:Landroid/app/usage/UsageStatsManagerInternal;


# direct methods
.method static synthetic -get0(Lcom/android/server/job/controllers/AppIdleController;)Lcom/android/server/job/JobSchedulerService;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/job/controllers/AppIdleController;->mJobSchedulerService:Lcom/android/server/job/JobSchedulerService;

    #@2
    return-object v0
.end method

.method static synthetic -get1(Lcom/android/server/job/controllers/AppIdleController;)Landroid/app/usage/UsageStatsManagerInternal;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/job/controllers/AppIdleController;->mUsageStatsInternal:Landroid/app/usage/UsageStatsManagerInternal;

    #@2
    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 42
    new-instance v0, Ljava/lang/Object;

    #@2
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    #@5
    sput-object v0, Lcom/android/server/job/controllers/AppIdleController;->sCreationLock:Ljava/lang/Object;

    #@7
    .line 36
    return-void
.end method

.method private constructor <init>(Lcom/android/server/job/JobSchedulerService;Landroid/content/Context;Ljava/lang/Object;)V
    .locals 3
    .param p1, "service"    # Lcom/android/server/job/JobSchedulerService;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "lock"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 102
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/job/controllers/StateController;-><init>(Lcom/android/server/job/StateChangedListener;Landroid/content/Context;Ljava/lang/Object;)V

    #@3
    .line 103
    iput-object p1, p0, Lcom/android/server/job/controllers/AppIdleController;->mJobSchedulerService:Lcom/android/server/job/JobSchedulerService;

    #@5
    .line 104
    const-class v0, Landroid/app/usage/UsageStatsManagerInternal;

    #@7
    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    #@a
    move-result-object v0

    #@b
    check-cast v0, Landroid/app/usage/UsageStatsManagerInternal;

    #@d
    iput-object v0, p0, Lcom/android/server/job/controllers/AppIdleController;->mUsageStatsInternal:Landroid/app/usage/UsageStatsManagerInternal;

    #@f
    .line 105
    const/4 v0, 0x1

    #@10
    iput-boolean v0, p0, Lcom/android/server/job/controllers/AppIdleController;->mAppIdleParoleOn:Z

    #@12
    .line 106
    iget-object v0, p0, Lcom/android/server/job/controllers/AppIdleController;->mUsageStatsInternal:Landroid/app/usage/UsageStatsManagerInternal;

    #@14
    new-instance v1, Lcom/android/server/job/controllers/AppIdleController$AppIdleStateChangeListener;

    #@16
    const/4 v2, 0x0

    #@17
    invoke-direct {v1, p0, v2}, Lcom/android/server/job/controllers/AppIdleController$AppIdleStateChangeListener;-><init>(Lcom/android/server/job/controllers/AppIdleController;Lcom/android/server/job/controllers/AppIdleController$AppIdleStateChangeListener;)V

    #@1a
    invoke-virtual {v0, v1}, Landroid/app/usage/UsageStatsManagerInternal;->addAppIdleStateChangeListener(Landroid/app/usage/UsageStatsManagerInternal$AppIdleStateChangeListener;)V

    #@1d
    .line 101
    return-void
.end method

.method public static get(Lcom/android/server/job/JobSchedulerService;)Lcom/android/server/job/controllers/AppIdleController;
    .locals 4
    .param p0, "service"    # Lcom/android/server/job/JobSchedulerService;

    #@0
    .prologue
    .line 92
    sget-object v1, Lcom/android/server/job/controllers/AppIdleController;->sCreationLock:Ljava/lang/Object;

    #@2
    monitor-enter v1

    #@3
    .line 93
    :try_start_0
    sget-object v0, Lcom/android/server/job/controllers/AppIdleController;->sController:Lcom/android/server/job/controllers/AppIdleController;

    #@5
    if-nez v0, :cond_0

    #@7
    .line 94
    new-instance v0, Lcom/android/server/job/controllers/AppIdleController;

    #@9
    invoke-virtual {p0}, Lcom/android/server/job/JobSchedulerService;->getContext()Landroid/content/Context;

    #@c
    move-result-object v2

    #@d
    .line 95
    invoke-virtual {p0}, Lcom/android/server/job/JobSchedulerService;->getLock()Ljava/lang/Object;

    #@10
    move-result-object v3

    #@11
    .line 94
    invoke-direct {v0, p0, v2, v3}, Lcom/android/server/job/controllers/AppIdleController;-><init>(Lcom/android/server/job/JobSchedulerService;Landroid/content/Context;Ljava/lang/Object;)V

    #@14
    sput-object v0, Lcom/android/server/job/controllers/AppIdleController;->sController:Lcom/android/server/job/controllers/AppIdleController;

    #@16
    .line 97
    :cond_0
    sget-object v0, Lcom/android/server/job/controllers/AppIdleController;->sController:Lcom/android/server/job/controllers/AppIdleController;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@18
    monitor-exit v1

    #@19
    return-object v0

    #@1a
    .line 92
    :catchall_0
    move-exception v0

    #@1b
    monitor-exit v1

    #@1c
    throw v0
.end method


# virtual methods
.method public dumpControllerStateLocked(Ljava/io/PrintWriter;I)V
    .locals 2
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "filterUid"    # I

    #@0
    .prologue
    .line 131
    const-string/jumbo v0, "AppIdle: parole on = "

    #@3
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@6
    .line 132
    iget-boolean v0, p0, Lcom/android/server/job/controllers/AppIdleController;->mAppIdleParoleOn:Z

    #@8
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Z)V

    #@b
    .line 133
    iget-object v0, p0, Lcom/android/server/job/controllers/AppIdleController;->mJobSchedulerService:Lcom/android/server/job/JobSchedulerService;

    #@d
    invoke-virtual {v0}, Lcom/android/server/job/JobSchedulerService;->getJobStore()Lcom/android/server/job/JobStore;

    #@10
    move-result-object v0

    #@11
    new-instance v1, Lcom/android/server/job/controllers/AppIdleController$1;

    #@13
    invoke-direct {v1, p0, p2, p1}, Lcom/android/server/job/controllers/AppIdleController$1;-><init>(Lcom/android/server/job/controllers/AppIdleController;ILjava/io/PrintWriter;)V

    #@16
    invoke-virtual {v0, v1}, Lcom/android/server/job/JobStore;->forEachJob(Lcom/android/server/job/JobStore$JobStatusFunctor;)V

    #@19
    .line 130
    return-void
.end method

.method public maybeStartTrackingJobLocked(Lcom/android/server/job/controllers/JobStatus;Lcom/android/server/job/controllers/JobStatus;)V
    .locals 7
    .param p1, "jobStatus"    # Lcom/android/server/job/controllers/JobStatus;
    .param p2, "lastJob"    # Lcom/android/server/job/controllers/JobStatus;

    #@0
    .prologue
    const/4 v3, 0x1

    #@1
    const/4 v2, 0x0

    #@2
    .line 111
    iget-boolean v4, p0, Lcom/android/server/job/controllers/AppIdleController;->mInitializedParoleOn:Z

    #@4
    if-nez v4, :cond_0

    #@6
    .line 112
    iput-boolean v3, p0, Lcom/android/server/job/controllers/AppIdleController;->mInitializedParoleOn:Z

    #@8
    .line 113
    iget-object v4, p0, Lcom/android/server/job/controllers/AppIdleController;->mUsageStatsInternal:Landroid/app/usage/UsageStatsManagerInternal;

    #@a
    invoke-virtual {v4}, Landroid/app/usage/UsageStatsManagerInternal;->isAppIdleParoleOn()Z

    #@d
    move-result v4

    #@e
    iput-boolean v4, p0, Lcom/android/server/job/controllers/AppIdleController;->mAppIdleParoleOn:Z

    #@10
    .line 115
    :cond_0
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getSourcePackageName()Ljava/lang/String;

    #@13
    move-result-object v1

    #@14
    .line 116
    .local v1, "packageName":Ljava/lang/String;
    iget-boolean v4, p0, Lcom/android/server/job/controllers/AppIdleController;->mAppIdleParoleOn:Z

    #@16
    if-nez v4, :cond_1

    #@18
    iget-object v4, p0, Lcom/android/server/job/controllers/AppIdleController;->mUsageStatsInternal:Landroid/app/usage/UsageStatsManagerInternal;

    #@1a
    .line 117
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getSourceUid()I

    #@1d
    move-result v5

    #@1e
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getSourceUserId()I

    #@21
    move-result v6

    #@22
    .line 116
    invoke-virtual {v4, v1, v5, v6}, Landroid/app/usage/UsageStatsManagerInternal;->isAppIdle(Ljava/lang/String;II)Z

    #@25
    move-result v0

    #@26
    .line 122
    .local v0, "appIdle":Z
    :goto_0
    if-eqz v0, :cond_2

    #@28
    :goto_1
    invoke-virtual {p1, v2}, Lcom/android/server/job/controllers/JobStatus;->setAppNotIdleConstraintSatisfied(Z)Z

    #@2b
    .line 110
    return-void

    #@2c
    .end local v0    # "appIdle":Z
    :cond_1
    move v0, v2

    #@2d
    .line 116
    goto :goto_0

    #@2e
    .restart local v0    # "appIdle":Z
    :cond_2
    move v2, v3

    #@2f
    .line 122
    goto :goto_1
.end method

.method public maybeStopTrackingJobLocked(Lcom/android/server/job/controllers/JobStatus;Lcom/android/server/job/controllers/JobStatus;Z)V
    .locals 0
    .param p1, "jobStatus"    # Lcom/android/server/job/controllers/JobStatus;
    .param p2, "incomingJob"    # Lcom/android/server/job/controllers/JobStatus;
    .param p3, "forUpdate"    # Z

    #@0
    .prologue
    .line 126
    return-void
.end method

.method setAppIdleParoleOn(Z)V
    .locals 4
    .param p1, "isAppIdleParoleOn"    # Z

    #@0
    .prologue
    .line 156
    const/4 v0, 0x0

    #@1
    .line 157
    .local v0, "changed":Z
    iget-object v3, p0, Lcom/android/server/job/controllers/AppIdleController;->mLock:Ljava/lang/Object;

    #@3
    monitor-enter v3

    #@4
    .line 158
    :try_start_0
    iget-boolean v2, p0, Lcom/android/server/job/controllers/AppIdleController;->mAppIdleParoleOn:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@6
    if-ne v2, p1, :cond_0

    #@8
    monitor-exit v3

    #@9
    .line 159
    return-void

    #@a
    .line 161
    :cond_0
    :try_start_1
    iput-boolean p1, p0, Lcom/android/server/job/controllers/AppIdleController;->mAppIdleParoleOn:Z

    #@c
    .line 162
    new-instance v1, Lcom/android/server/job/controllers/AppIdleController$GlobalUpdateFunc;

    #@e
    invoke-direct {v1, p0}, Lcom/android/server/job/controllers/AppIdleController$GlobalUpdateFunc;-><init>(Lcom/android/server/job/controllers/AppIdleController;)V

    #@11
    .line 163
    .local v1, "update":Lcom/android/server/job/controllers/AppIdleController$GlobalUpdateFunc;
    iget-object v2, p0, Lcom/android/server/job/controllers/AppIdleController;->mJobSchedulerService:Lcom/android/server/job/JobSchedulerService;

    #@13
    invoke-virtual {v2}, Lcom/android/server/job/JobSchedulerService;->getJobStore()Lcom/android/server/job/JobStore;

    #@16
    move-result-object v2

    #@17
    invoke-virtual {v2, v1}, Lcom/android/server/job/JobStore;->forEachJob(Lcom/android/server/job/JobStore$JobStatusFunctor;)V

    #@1a
    .line 164
    iget-boolean v2, v1, Lcom/android/server/job/controllers/AppIdleController$GlobalUpdateFunc;->mChanged:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@1c
    if-eqz v2, :cond_1

    #@1e
    .line 165
    const/4 v0, 0x1

    #@1f
    :cond_1
    monitor-exit v3

    #@20
    .line 168
    if-eqz v0, :cond_2

    #@22
    .line 169
    iget-object v2, p0, Lcom/android/server/job/controllers/AppIdleController;->mStateChangedListener:Lcom/android/server/job/StateChangedListener;

    #@24
    invoke-interface {v2}, Lcom/android/server/job/StateChangedListener;->onControllerStateChanged()V

    #@27
    .line 154
    :cond_2
    return-void

    #@28
    .line 157
    .end local v1    # "update":Lcom/android/server/job/controllers/AppIdleController$GlobalUpdateFunc;
    :catchall_0
    move-exception v2

    #@29
    monitor-exit v3

    #@2a
    throw v2
.end method
