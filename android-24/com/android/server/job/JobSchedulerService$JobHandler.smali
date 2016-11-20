.class Lcom/android/server/job/JobSchedulerService$JobHandler;
.super Landroid/os/Handler;
.source "JobSchedulerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/job/JobSchedulerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "JobHandler"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/job/JobSchedulerService$JobHandler$MaybeReadyJobQueueFunctor;,
        Lcom/android/server/job/JobSchedulerService$JobHandler$ReadyJobQueueFunctor;
    }
.end annotation


# instance fields
.field private final mMaybeQueueFunctor:Lcom/android/server/job/JobSchedulerService$JobHandler$MaybeReadyJobQueueFunctor;

.field private final mReadyQueueFunctor:Lcom/android/server/job/JobSchedulerService$JobHandler$ReadyJobQueueFunctor;

.field final synthetic this$0:Lcom/android/server/job/JobSchedulerService;


# direct methods
.method static synthetic -wrap0(Lcom/android/server/job/JobSchedulerService$JobHandler;Lcom/android/server/job/controllers/JobStatus;)Z
    .locals 1
    .param p1, "job"    # Lcom/android/server/job/controllers/JobStatus;

    #@0
    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/job/JobSchedulerService$JobHandler;->areJobConstraintsNotSatisfiedLocked(Lcom/android/server/job/controllers/JobStatus;)Z

    #@3
    move-result v0

    #@4
    return v0
.end method

.method static synthetic -wrap1(Lcom/android/server/job/JobSchedulerService$JobHandler;Lcom/android/server/job/controllers/JobStatus;)Z
    .locals 1
    .param p1, "job"    # Lcom/android/server/job/controllers/JobStatus;

    #@0
    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/job/JobSchedulerService$JobHandler;->isReadyToBeExecutedLocked(Lcom/android/server/job/controllers/JobStatus;)Z

    #@3
    move-result v0

    #@4
    return v0
.end method

.method public constructor <init>(Lcom/android/server/job/JobSchedulerService;Landroid/os/Looper;)V
    .locals 1
    .param p1, "this$0"    # Lcom/android/server/job/JobSchedulerService;
    .param p2, "looper"    # Landroid/os/Looper;

    #@0
    .prologue
    .line 1018
    iput-object p1, p0, Lcom/android/server/job/JobSchedulerService$JobHandler;->this$0:Lcom/android/server/job/JobSchedulerService;

    #@2
    .line 1019
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    #@5
    .line 1118
    new-instance v0, Lcom/android/server/job/JobSchedulerService$JobHandler$ReadyJobQueueFunctor;

    #@7
    invoke-direct {v0, p0}, Lcom/android/server/job/JobSchedulerService$JobHandler$ReadyJobQueueFunctor;-><init>(Lcom/android/server/job/JobSchedulerService$JobHandler;)V

    #@a
    iput-object v0, p0, Lcom/android/server/job/JobSchedulerService$JobHandler;->mReadyQueueFunctor:Lcom/android/server/job/JobSchedulerService$JobHandler$ReadyJobQueueFunctor;

    #@c
    .line 1214
    new-instance v0, Lcom/android/server/job/JobSchedulerService$JobHandler$MaybeReadyJobQueueFunctor;

    #@e
    invoke-direct {v0, p0}, Lcom/android/server/job/JobSchedulerService$JobHandler$MaybeReadyJobQueueFunctor;-><init>(Lcom/android/server/job/JobSchedulerService$JobHandler;)V

    #@11
    iput-object v0, p0, Lcom/android/server/job/JobSchedulerService$JobHandler;->mMaybeQueueFunctor:Lcom/android/server/job/JobSchedulerService$JobHandler$MaybeReadyJobQueueFunctor;

    #@13
    .line 1018
    return-void
.end method

.method private areJobConstraintsNotSatisfiedLocked(Lcom/android/server/job/controllers/JobStatus;)Z
    .locals 1
    .param p1, "job"    # Lcom/android/server/job/controllers/JobStatus;

    #@0
    .prologue
    .line 1264
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->isReady()Z

    #@3
    move-result v0

    #@4
    if-nez v0, :cond_0

    #@6
    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService$JobHandler;->this$0:Lcom/android/server/job/JobSchedulerService;

    #@8
    invoke-static {v0, p1}, Lcom/android/server/job/JobSchedulerService;->-wrap0(Lcom/android/server/job/JobSchedulerService;Lcom/android/server/job/controllers/JobStatus;)Z

    #@b
    move-result v0

    #@c
    :goto_0
    return v0

    #@d
    :cond_0
    const/4 v0, 0x0

    #@e
    goto :goto_0
.end method

.method private isReadyToBeExecutedLocked(Lcom/android/server/job/controllers/JobStatus;)Z
    .locals 11
    .param p1, "job"    # Lcom/android/server/job/controllers/JobStatus;

    #@0
    .prologue
    const/4 v7, 0x0

    #@1
    .line 1234
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->isReady()Z

    #@4
    move-result v4

    #@5
    .line 1235
    .local v4, "jobReady":Z
    iget-object v8, p0, Lcom/android/server/job/JobSchedulerService$JobHandler;->this$0:Lcom/android/server/job/JobSchedulerService;

    #@7
    iget-object v8, v8, Lcom/android/server/job/JobSchedulerService;->mPendingJobs:Ljava/util/ArrayList;

    #@9
    invoke-virtual {v8, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    #@c
    move-result v3

    #@d
    .line 1236
    .local v3, "jobPending":Z
    iget-object v8, p0, Lcom/android/server/job/JobSchedulerService$JobHandler;->this$0:Lcom/android/server/job/JobSchedulerService;

    #@f
    invoke-static {v8, p1}, Lcom/android/server/job/JobSchedulerService;->-wrap0(Lcom/android/server/job/JobSchedulerService;Lcom/android/server/job/controllers/JobStatus;)Z

    #@12
    move-result v2

    #@13
    .line 1238
    .local v2, "jobActive":Z
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getUserId()I

    #@16
    move-result v5

    #@17
    .line 1239
    .local v5, "userId":I
    iget-object v8, p0, Lcom/android/server/job/JobSchedulerService$JobHandler;->this$0:Lcom/android/server/job/JobSchedulerService;

    #@19
    iget-object v8, v8, Lcom/android/server/job/JobSchedulerService;->mStartedUsers:[I

    #@1b
    invoke-static {v8, v5}, Lcom/android/internal/util/ArrayUtils;->contains([II)Z

    #@1e
    move-result v6

    #@1f
    .line 1242
    .local v6, "userStarted":Z
    :try_start_0
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    #@22
    move-result-object v8

    #@23
    .line 1243
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getServiceComponent()Landroid/content/ComponentName;

    #@26
    move-result-object v9

    #@27
    const/high16 v10, 0x10000000

    #@29
    .line 1242
    invoke-interface {v8, v9, v10, v5}, Landroid/content/pm/IPackageManager;->getServiceInfo(Landroid/content/ComponentName;II)Landroid/content/pm/ServiceInfo;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@2c
    move-result-object v8

    #@2d
    if-eqz v8, :cond_1

    #@2f
    const/4 v0, 0x1

    #@30
    .line 1255
    .local v0, "componentPresent":Z
    :goto_0
    if-eqz v6, :cond_0

    #@32
    if-eqz v0, :cond_0

    #@34
    if-eqz v4, :cond_0

    #@36
    if-eqz v3, :cond_2

    #@38
    :cond_0
    :goto_1
    return v7

    #@39
    .line 1242
    .end local v0    # "componentPresent":Z
    :cond_1
    const/4 v0, 0x0

    #@3a
    .restart local v0    # "componentPresent":Z
    goto :goto_0

    #@3b
    .line 1245
    .end local v0    # "componentPresent":Z
    :catch_0
    move-exception v1

    #@3c
    .line 1246
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    #@3f
    move-result-object v7

    #@40
    throw v7

    #@41
    .line 1255
    .end local v1    # "e":Landroid/os/RemoteException;
    .restart local v0    # "componentPresent":Z
    :cond_2
    if-nez v2, :cond_0

    #@43
    const/4 v7, 0x1

    #@44
    goto :goto_1
.end method

.method private maybeQueueReadyJobsForExecutionLockedH()V
    .locals 2

    #@0
    .prologue
    .line 1219
    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService$JobHandler;->this$0:Lcom/android/server/job/JobSchedulerService;

    #@2
    iget-object v1, p0, Lcom/android/server/job/JobSchedulerService$JobHandler;->this$0:Lcom/android/server/job/JobSchedulerService;

    #@4
    iget-object v1, v1, Lcom/android/server/job/JobSchedulerService;->mPendingJobs:Ljava/util/ArrayList;

    #@6
    invoke-virtual {v0, v1}, Lcom/android/server/job/JobSchedulerService;->noteJobsNonpending(Ljava/util/List;)V

    #@9
    .line 1220
    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService$JobHandler;->this$0:Lcom/android/server/job/JobSchedulerService;

    #@b
    iget-object v0, v0, Lcom/android/server/job/JobSchedulerService;->mPendingJobs:Ljava/util/ArrayList;

    #@d
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    #@10
    .line 1221
    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService$JobHandler;->this$0:Lcom/android/server/job/JobSchedulerService;

    #@12
    iget-object v0, v0, Lcom/android/server/job/JobSchedulerService;->mJobs:Lcom/android/server/job/JobStore;

    #@14
    iget-object v1, p0, Lcom/android/server/job/JobSchedulerService$JobHandler;->mMaybeQueueFunctor:Lcom/android/server/job/JobSchedulerService$JobHandler$MaybeReadyJobQueueFunctor;

    #@16
    invoke-virtual {v0, v1}, Lcom/android/server/job/JobStore;->forEachJob(Lcom/android/server/job/JobStore$JobStatusFunctor;)V

    #@19
    .line 1222
    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService$JobHandler;->mMaybeQueueFunctor:Lcom/android/server/job/JobSchedulerService$JobHandler$MaybeReadyJobQueueFunctor;

    #@1b
    invoke-virtual {v0}, Lcom/android/server/job/JobSchedulerService$JobHandler$MaybeReadyJobQueueFunctor;->postProcess()V

    #@1e
    .line 1216
    return-void
.end method

.method private maybeRunPendingJobsH()V
    .locals 2

    #@0
    .prologue
    .line 1273
    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService$JobHandler;->this$0:Lcom/android/server/job/JobSchedulerService;

    #@2
    iget-object v1, v0, Lcom/android/server/job/JobSchedulerService;->mLock:Ljava/lang/Object;

    #@4
    monitor-enter v1

    #@5
    .line 1277
    :try_start_0
    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService$JobHandler;->this$0:Lcom/android/server/job/JobSchedulerService;

    #@7
    invoke-static {v0}, Lcom/android/server/job/JobSchedulerService;->-wrap3(Lcom/android/server/job/JobSchedulerService;)V

    #@a
    .line 1278
    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService$JobHandler;->this$0:Lcom/android/server/job/JobSchedulerService;

    #@c
    invoke-virtual {v0}, Lcom/android/server/job/JobSchedulerService;->reportActive()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@f
    monitor-exit v1

    #@10
    .line 1272
    return-void

    #@11
    .line 1273
    :catchall_0
    move-exception v0

    #@12
    monitor-exit v1

    #@13
    throw v0
.end method

.method private queueReadyJobsForExecutionLockedH()V
    .locals 2

    #@0
    .prologue
    .line 1076
    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService$JobHandler;->this$0:Lcom/android/server/job/JobSchedulerService;

    #@2
    iget-object v1, p0, Lcom/android/server/job/JobSchedulerService$JobHandler;->this$0:Lcom/android/server/job/JobSchedulerService;

    #@4
    iget-object v1, v1, Lcom/android/server/job/JobSchedulerService;->mPendingJobs:Ljava/util/ArrayList;

    #@6
    invoke-virtual {v0, v1}, Lcom/android/server/job/JobSchedulerService;->noteJobsNonpending(Ljava/util/List;)V

    #@9
    .line 1077
    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService$JobHandler;->this$0:Lcom/android/server/job/JobSchedulerService;

    #@b
    iget-object v0, v0, Lcom/android/server/job/JobSchedulerService;->mPendingJobs:Ljava/util/ArrayList;

    #@d
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    #@10
    .line 1078
    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService$JobHandler;->this$0:Lcom/android/server/job/JobSchedulerService;

    #@12
    iget-object v0, v0, Lcom/android/server/job/JobSchedulerService;->mJobs:Lcom/android/server/job/JobStore;

    #@14
    iget-object v1, p0, Lcom/android/server/job/JobSchedulerService$JobHandler;->mReadyQueueFunctor:Lcom/android/server/job/JobSchedulerService$JobHandler$ReadyJobQueueFunctor;

    #@16
    invoke-virtual {v0, v1}, Lcom/android/server/job/JobStore;->forEachJob(Lcom/android/server/job/JobStore$JobStatusFunctor;)V

    #@19
    .line 1079
    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService$JobHandler;->mReadyQueueFunctor:Lcom/android/server/job/JobSchedulerService$JobHandler$ReadyJobQueueFunctor;

    #@1b
    invoke-virtual {v0}, Lcom/android/server/job/JobSchedulerService$JobHandler$ReadyJobQueueFunctor;->postProcess()V

    #@1e
    .line 1072
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .param p1, "message"    # Landroid/os/Message;

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 1024
    iget-object v1, p0, Lcom/android/server/job/JobSchedulerService$JobHandler;->this$0:Lcom/android/server/job/JobSchedulerService;

    #@3
    iget-object v2, v1, Lcom/android/server/job/JobSchedulerService;->mLock:Ljava/lang/Object;

    #@5
    monitor-enter v2

    #@6
    .line 1025
    :try_start_0
    iget-object v1, p0, Lcom/android/server/job/JobSchedulerService$JobHandler;->this$0:Lcom/android/server/job/JobSchedulerService;

    #@8
    iget-boolean v1, v1, Lcom/android/server/job/JobSchedulerService;->mReadyToRock:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@a
    if-nez v1, :cond_0

    #@c
    monitor-exit v2

    #@d
    .line 1026
    return-void

    #@e
    :cond_0
    monitor-exit v2

    #@f
    .line 1029
    iget v1, p1, Landroid/os/Message;->what:I

    #@11
    packed-switch v1, :pswitch_data_0

    #@14
    .line 1063
    :goto_0
    invoke-direct {p0}, Lcom/android/server/job/JobSchedulerService$JobHandler;->maybeRunPendingJobsH()V

    #@17
    .line 1065
    const/4 v1, 0x1

    #@18
    invoke-virtual {p0, v1}, Lcom/android/server/job/JobSchedulerService$JobHandler;->removeMessages(I)V

    #@1b
    .line 1023
    return-void

    #@1c
    .line 1024
    :catchall_0
    move-exception v1

    #@1d
    monitor-exit v2

    #@1e
    throw v1

    #@1f
    .line 1031
    :pswitch_0
    iget-object v1, p0, Lcom/android/server/job/JobSchedulerService$JobHandler;->this$0:Lcom/android/server/job/JobSchedulerService;

    #@21
    iget-object v2, v1, Lcom/android/server/job/JobSchedulerService;->mLock:Ljava/lang/Object;

    #@23
    monitor-enter v2

    #@24
    .line 1032
    :try_start_1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@26
    check-cast v0, Lcom/android/server/job/controllers/JobStatus;

    #@28
    .line 1035
    .local v0, "runNow":Lcom/android/server/job/controllers/JobStatus;
    if-eqz v0, :cond_1

    #@2a
    iget-object v1, p0, Lcom/android/server/job/JobSchedulerService$JobHandler;->this$0:Lcom/android/server/job/JobSchedulerService;

    #@2c
    iget-object v1, v1, Lcom/android/server/job/JobSchedulerService;->mPendingJobs:Ljava/util/ArrayList;

    #@2e
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    #@31
    move-result v1

    #@32
    if-eqz v1, :cond_2

    #@34
    .line 1040
    :cond_1
    :goto_1
    invoke-direct {p0}, Lcom/android/server/job/JobSchedulerService$JobHandler;->queueReadyJobsForExecutionLockedH()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    #@37
    .end local v0    # "runNow":Lcom/android/server/job/controllers/JobStatus;
    :goto_2
    monitor-exit v2

    #@38
    goto :goto_0

    #@39
    .line 1036
    .restart local v0    # "runNow":Lcom/android/server/job/controllers/JobStatus;
    :cond_2
    :try_start_2
    iget-object v1, p0, Lcom/android/server/job/JobSchedulerService$JobHandler;->this$0:Lcom/android/server/job/JobSchedulerService;

    #@3b
    iget-object v1, v1, Lcom/android/server/job/JobSchedulerService;->mJobs:Lcom/android/server/job/JobStore;

    #@3d
    invoke-virtual {v1, v0}, Lcom/android/server/job/JobStore;->containsJob(Lcom/android/server/job/controllers/JobStatus;)Z

    #@40
    move-result v1

    #@41
    .line 1035
    if-eqz v1, :cond_1

    #@43
    .line 1037
    iget-object v1, p0, Lcom/android/server/job/JobSchedulerService$JobHandler;->this$0:Lcom/android/server/job/JobSchedulerService;

    #@45
    iget-object v1, v1, Lcom/android/server/job/JobSchedulerService;->mJobPackageTracker:Lcom/android/server/job/JobPackageTracker;

    #@47
    invoke-virtual {v1, v0}, Lcom/android/server/job/JobPackageTracker;->notePending(Lcom/android/server/job/controllers/JobStatus;)V

    #@4a
    .line 1038
    iget-object v1, p0, Lcom/android/server/job/JobSchedulerService$JobHandler;->this$0:Lcom/android/server/job/JobSchedulerService;

    #@4c
    iget-object v1, v1, Lcom/android/server/job/JobSchedulerService;->mPendingJobs:Ljava/util/ArrayList;

    #@4e
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    #@51
    goto :goto_1

    #@52
    .line 1031
    .end local v0    # "runNow":Lcom/android/server/job/controllers/JobStatus;
    :catchall_1
    move-exception v1

    #@53
    monitor-exit v2

    #@54
    throw v1

    #@55
    .line 1044
    :pswitch_1
    iget-object v1, p0, Lcom/android/server/job/JobSchedulerService$JobHandler;->this$0:Lcom/android/server/job/JobSchedulerService;

    #@57
    iget-object v2, v1, Lcom/android/server/job/JobSchedulerService;->mLock:Ljava/lang/Object;

    #@59
    monitor-enter v2

    #@5a
    .line 1045
    :try_start_3
    iget-object v1, p0, Lcom/android/server/job/JobSchedulerService$JobHandler;->this$0:Lcom/android/server/job/JobSchedulerService;

    #@5c
    iget-boolean v1, v1, Lcom/android/server/job/JobSchedulerService;->mReportedActive:Z

    #@5e
    if-eqz v1, :cond_3

    #@60
    .line 1047
    invoke-direct {p0}, Lcom/android/server/job/JobSchedulerService$JobHandler;->queueReadyJobsForExecutionLockedH()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    #@63
    goto :goto_2

    #@64
    .line 1044
    :catchall_2
    move-exception v1

    #@65
    monitor-exit v2

    #@66
    throw v1

    #@67
    .line 1050
    :cond_3
    :try_start_4
    invoke-direct {p0}, Lcom/android/server/job/JobSchedulerService$JobHandler;->maybeQueueReadyJobsForExecutionLockedH()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    #@6a
    goto :goto_2

    #@6b
    .line 1055
    :pswitch_2
    iget-object v1, p0, Lcom/android/server/job/JobSchedulerService$JobHandler;->this$0:Lcom/android/server/job/JobSchedulerService;

    #@6d
    iget-object v1, v1, Lcom/android/server/job/JobSchedulerService;->mLock:Ljava/lang/Object;

    #@6f
    monitor-enter v1

    #@70
    .line 1056
    :try_start_5
    invoke-direct {p0}, Lcom/android/server/job/JobSchedulerService$JobHandler;->queueReadyJobsForExecutionLockedH()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    #@73
    monitor-exit v1

    #@74
    goto :goto_0

    #@75
    .line 1055
    :catchall_3
    move-exception v2

    #@76
    monitor-exit v1

    #@77
    throw v2

    #@78
    .line 1060
    :pswitch_3
    iget-object v2, p0, Lcom/android/server/job/JobSchedulerService$JobHandler;->this$0:Lcom/android/server/job/JobSchedulerService;

    #@7a
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@7c
    check-cast v1, Lcom/android/server/job/controllers/JobStatus;

    #@7e
    invoke-static {v2, v1, v3}, Lcom/android/server/job/JobSchedulerService;->-wrap4(Lcom/android/server/job/JobSchedulerService;Lcom/android/server/job/controllers/JobStatus;Lcom/android/server/job/controllers/JobStatus;)V

    #@81
    goto :goto_0

    #@82
    .line 1029
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method
