.class public Lcom/android/server/job/controllers/AppIdleController;
.super Lcom/android/server/job/controllers/StateController;
.source "AppIdleController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/job/controllers/AppIdleController$AppIdleStateChangeListener;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final LOG_TAG:Ljava/lang/String; = "AppIdleController"

.field private static volatile sController:Lcom/android/server/job/controllers/AppIdleController;

.field private static sCreationLock:Ljava/lang/Object;


# instance fields
.field mAppIdleParoleOn:Z

.field final mTrackedTasks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/job/controllers/JobStatus;",
            ">;"
        }
    .end annotation
.end field

.field private final mUsageStatsInternal:Landroid/app/usage/UsageStatsManagerInternal;


# direct methods
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

.method private constructor <init>(Lcom/android/server/job/StateChangedListener;Landroid/content/Context;)V
    .locals 3
    .param p1, "stateChangedListener"    # Lcom/android/server/job/StateChangedListener;
    .param p2, "context"    # Landroid/content/Context;

    #@0
    .prologue
    .line 58
    invoke-direct {p0, p1, p2}, Lcom/android/server/job/controllers/StateController;-><init>(Lcom/android/server/job/StateChangedListener;Landroid/content/Context;)V

    #@3
    .line 44
    new-instance v0, Ljava/util/ArrayList;

    #@5
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@8
    iput-object v0, p0, Lcom/android/server/job/controllers/AppIdleController;->mTrackedTasks:Ljava/util/ArrayList;

    #@a
    .line 59
    const-class v0, Landroid/app/usage/UsageStatsManagerInternal;

    #@c
    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    #@f
    move-result-object v0

    #@10
    check-cast v0, Landroid/app/usage/UsageStatsManagerInternal;

    #@12
    iput-object v0, p0, Lcom/android/server/job/controllers/AppIdleController;->mUsageStatsInternal:Landroid/app/usage/UsageStatsManagerInternal;

    #@14
    .line 60
    iget-object v0, p0, Lcom/android/server/job/controllers/AppIdleController;->mUsageStatsInternal:Landroid/app/usage/UsageStatsManagerInternal;

    #@16
    invoke-virtual {v0}, Landroid/app/usage/UsageStatsManagerInternal;->isAppIdleParoleOn()Z

    #@19
    move-result v0

    #@1a
    iput-boolean v0, p0, Lcom/android/server/job/controllers/AppIdleController;->mAppIdleParoleOn:Z

    #@1c
    .line 61
    iget-object v0, p0, Lcom/android/server/job/controllers/AppIdleController;->mUsageStatsInternal:Landroid/app/usage/UsageStatsManagerInternal;

    #@1e
    new-instance v1, Lcom/android/server/job/controllers/AppIdleController$AppIdleStateChangeListener;

    #@20
    const/4 v2, 0x0

    #@21
    invoke-direct {v1, p0, v2}, Lcom/android/server/job/controllers/AppIdleController$AppIdleStateChangeListener;-><init>(Lcom/android/server/job/controllers/AppIdleController;Lcom/android/server/job/controllers/AppIdleController$AppIdleStateChangeListener;)V

    #@24
    invoke-virtual {v0, v1}, Landroid/app/usage/UsageStatsManagerInternal;->addAppIdleStateChangeListener(Landroid/app/usage/UsageStatsManagerInternal$AppIdleStateChangeListener;)V

    #@27
    .line 57
    return-void
.end method

.method public static get(Lcom/android/server/job/JobSchedulerService;)Lcom/android/server/job/controllers/AppIdleController;
    .locals 3
    .param p0, "service"    # Lcom/android/server/job/JobSchedulerService;

    #@0
    .prologue
    .line 49
    sget-object v1, Lcom/android/server/job/controllers/AppIdleController;->sCreationLock:Ljava/lang/Object;

    #@2
    monitor-enter v1

    #@3
    .line 50
    :try_start_0
    sget-object v0, Lcom/android/server/job/controllers/AppIdleController;->sController:Lcom/android/server/job/controllers/AppIdleController;

    #@5
    if-nez v0, :cond_0

    #@7
    .line 51
    new-instance v0, Lcom/android/server/job/controllers/AppIdleController;

    #@9
    invoke-virtual {p0}, Lcom/android/server/job/JobSchedulerService;->getContext()Landroid/content/Context;

    #@c
    move-result-object v2

    #@d
    invoke-direct {v0, p0, v2}, Lcom/android/server/job/controllers/AppIdleController;-><init>(Lcom/android/server/job/StateChangedListener;Landroid/content/Context;)V

    #@10
    sput-object v0, Lcom/android/server/job/controllers/AppIdleController;->sController:Lcom/android/server/job/controllers/AppIdleController;

    #@12
    .line 53
    :cond_0
    sget-object v0, Lcom/android/server/job/controllers/AppIdleController;->sController:Lcom/android/server/job/controllers/AppIdleController;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@14
    monitor-exit v1

    #@15
    return-object v0

    #@16
    .line 49
    :catchall_0
    move-exception v0

    #@17
    monitor-exit v1

    #@18
    throw v0
.end method


# virtual methods
.method public dumpControllerState(Ljava/io/PrintWriter;)V
    .locals 5
    .param p1, "pw"    # Ljava/io/PrintWriter;

    #@0
    .prologue
    .line 88
    const-string/jumbo v2, "AppIdle"

    #@3
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@6
    .line 89
    new-instance v2, Ljava/lang/StringBuilder;

    #@8
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@b
    const-string/jumbo v3, "Parole On: "

    #@e
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@11
    move-result-object v2

    #@12
    iget-boolean v3, p0, Lcom/android/server/job/controllers/AppIdleController;->mAppIdleParoleOn:Z

    #@14
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@17
    move-result-object v2

    #@18
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1b
    move-result-object v2

    #@1c
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@1f
    .line 90
    iget-object v3, p0, Lcom/android/server/job/controllers/AppIdleController;->mTrackedTasks:Ljava/util/ArrayList;

    #@21
    monitor-enter v3

    #@22
    .line 91
    :try_start_0
    iget-object v2, p0, Lcom/android/server/job/controllers/AppIdleController;->mTrackedTasks:Ljava/util/ArrayList;

    #@24
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@27
    move-result-object v1

    #@28
    .local v1, "task$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@2b
    move-result v2

    #@2c
    if-eqz v2, :cond_1

    #@2e
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@31
    move-result-object v0

    #@32
    check-cast v0, Lcom/android/server/job/controllers/JobStatus;

    #@34
    .line 92
    .local v0, "task":Lcom/android/server/job/controllers/JobStatus;
    iget-object v2, v0, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    #@36
    invoke-virtual {v2}, Landroid/app/job/JobInfo;->getService()Landroid/content/ComponentName;

    #@39
    move-result-object v2

    #@3a
    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    #@3d
    move-result-object v2

    #@3e
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@41
    .line 93
    new-instance v2, Ljava/lang/StringBuilder;

    #@43
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@46
    const-string/jumbo v4, ":idle="

    #@49
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4c
    move-result-object v4

    #@4d
    iget-object v2, v0, Lcom/android/server/job/controllers/JobStatus;->appNotIdleConstraintSatisfied:Ljava/util/concurrent/atomic/AtomicBoolean;

    #@4f
    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    #@52
    move-result v2

    #@53
    if-eqz v2, :cond_0

    #@55
    const/4 v2, 0x0

    #@56
    :goto_1
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@59
    move-result-object v2

    #@5a
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@5d
    move-result-object v2

    #@5e
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@61
    .line 94
    const-string/jumbo v2, ", "

    #@64
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@67
    goto :goto_0

    #@68
    .line 90
    .end local v0    # "task":Lcom/android/server/job/controllers/JobStatus;
    .end local v1    # "task$iterator":Ljava/util/Iterator;
    :catchall_0
    move-exception v2

    #@69
    monitor-exit v3

    #@6a
    throw v2

    #@6b
    .line 93
    .restart local v0    # "task":Lcom/android/server/job/controllers/JobStatus;
    .restart local v1    # "task$iterator":Ljava/util/Iterator;
    :cond_0
    const/4 v2, 0x1

    #@6c
    goto :goto_1

    #@6d
    .line 96
    .end local v0    # "task":Lcom/android/server/job/controllers/JobStatus;
    :cond_1
    :try_start_1
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@70
    monitor-exit v3

    #@71
    .line 87
    return-void
.end method

.method public maybeStartTrackingJob(Lcom/android/server/job/controllers/JobStatus;)V
    .locals 5
    .param p1, "jobStatus"    # Lcom/android/server/job/controllers/JobStatus;

    #@0
    .prologue
    .line 66
    iget-object v3, p0, Lcom/android/server/job/controllers/AppIdleController;->mTrackedTasks:Ljava/util/ArrayList;

    #@2
    monitor-enter v3

    #@3
    .line 67
    :try_start_0
    iget-object v2, p0, Lcom/android/server/job/controllers/AppIdleController;->mTrackedTasks:Ljava/util/ArrayList;

    #@5
    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@8
    .line 68
    iget-object v2, p1, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    #@a
    invoke-virtual {v2}, Landroid/app/job/JobInfo;->getService()Landroid/content/ComponentName;

    #@d
    move-result-object v2

    #@e
    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    #@11
    move-result-object v1

    #@12
    .line 69
    .local v1, "packageName":Ljava/lang/String;
    iget-boolean v2, p0, Lcom/android/server/job/controllers/AppIdleController;->mAppIdleParoleOn:Z

    #@14
    if-nez v2, :cond_0

    #@16
    iget-object v2, p0, Lcom/android/server/job/controllers/AppIdleController;->mUsageStatsInternal:Landroid/app/usage/UsageStatsManagerInternal;

    #@18
    .line 70
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getUserId()I

    #@1b
    move-result v4

    #@1c
    .line 69
    invoke-virtual {v2, v1, v4}, Landroid/app/usage/UsageStatsManagerInternal;->isAppIdle(Ljava/lang/String;I)Z

    #@1f
    move-result v0

    #@20
    .line 75
    :goto_0
    iget-object v4, p1, Lcom/android/server/job/controllers/JobStatus;->appNotIdleConstraintSatisfied:Ljava/util/concurrent/atomic/AtomicBoolean;

    #@22
    if-eqz v0, :cond_1

    #@24
    const/4 v2, 0x0

    #@25
    :goto_1
    invoke-virtual {v4, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@28
    monitor-exit v3

    #@29
    .line 65
    return-void

    #@2a
    .line 69
    :cond_0
    const/4 v0, 0x0

    #@2b
    .local v0, "appIdle":Z
    goto :goto_0

    #@2c
    .line 75
    .end local v0    # "appIdle":Z
    :cond_1
    const/4 v2, 0x1

    #@2d
    goto :goto_1

    #@2e
    .line 66
    .end local v1    # "packageName":Ljava/lang/String;
    :catchall_0
    move-exception v2

    #@2f
    monitor-exit v3

    #@30
    throw v2
.end method

.method public maybeStopTrackingJob(Lcom/android/server/job/controllers/JobStatus;)V
    .locals 2
    .param p1, "jobStatus"    # Lcom/android/server/job/controllers/JobStatus;

    #@0
    .prologue
    .line 81
    iget-object v1, p0, Lcom/android/server/job/controllers/AppIdleController;->mTrackedTasks:Ljava/util/ArrayList;

    #@2
    monitor-enter v1

    #@3
    .line 82
    :try_start_0
    iget-object v0, p0, Lcom/android/server/job/controllers/AppIdleController;->mTrackedTasks:Ljava/util/ArrayList;

    #@5
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@8
    monitor-exit v1

    #@9
    .line 80
    return-void

    #@a
    .line 81
    :catchall_0
    move-exception v0

    #@b
    monitor-exit v1

    #@c
    throw v0
.end method

.method setAppIdleParoleOn(Z)V
    .locals 8
    .param p1, "isAppIdleParoleOn"    # Z

    #@0
    .prologue
    .line 102
    const/4 v1, 0x0

    #@1
    .line 103
    .local v1, "changed":Z
    iget-object v6, p0, Lcom/android/server/job/controllers/AppIdleController;->mTrackedTasks:Ljava/util/ArrayList;

    #@3
    monitor-enter v6

    #@4
    .line 104
    :try_start_0
    iget-boolean v5, p0, Lcom/android/server/job/controllers/AppIdleController;->mAppIdleParoleOn:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@6
    if-ne v5, p1, :cond_0

    #@8
    monitor-exit v6

    #@9
    .line 105
    return-void

    #@a
    .line 107
    :cond_0
    :try_start_1
    iput-boolean p1, p0, Lcom/android/server/job/controllers/AppIdleController;->mAppIdleParoleOn:Z

    #@c
    .line 108
    iget-object v5, p0, Lcom/android/server/job/controllers/AppIdleController;->mTrackedTasks:Ljava/util/ArrayList;

    #@e
    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@11
    move-result-object v4

    #@12
    .local v4, "task$iterator":Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    #@15
    move-result v5

    #@16
    if-eqz v5, :cond_4

    #@18
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@1b
    move-result-object v3

    #@1c
    check-cast v3, Lcom/android/server/job/controllers/JobStatus;

    #@1e
    .line 109
    .local v3, "task":Lcom/android/server/job/controllers/JobStatus;
    iget-object v5, v3, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    #@20
    invoke-virtual {v5}, Landroid/app/job/JobInfo;->getService()Landroid/content/ComponentName;

    #@23
    move-result-object v5

    #@24
    invoke-virtual {v5}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    #@27
    move-result-object v2

    #@28
    .line 110
    .local v2, "packageName":Ljava/lang/String;
    iget-boolean v5, p0, Lcom/android/server/job/controllers/AppIdleController;->mAppIdleParoleOn:Z

    #@2a
    if-nez v5, :cond_2

    #@2c
    iget-object v5, p0, Lcom/android/server/job/controllers/AppIdleController;->mUsageStatsInternal:Landroid/app/usage/UsageStatsManagerInternal;

    #@2e
    .line 111
    invoke-virtual {v3}, Lcom/android/server/job/controllers/JobStatus;->getUserId()I

    #@31
    move-result v7

    #@32
    .line 110
    invoke-virtual {v5, v2, v7}, Landroid/app/usage/UsageStatsManagerInternal;->isAppIdle(Ljava/lang/String;I)Z

    #@35
    move-result v0

    #@36
    .line 115
    :goto_1
    iget-object v5, v3, Lcom/android/server/job/controllers/JobStatus;->appNotIdleConstraintSatisfied:Ljava/util/concurrent/atomic/AtomicBoolean;

    #@38
    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    #@3b
    move-result v5

    #@3c
    if-ne v5, v0, :cond_1

    #@3e
    .line 116
    iget-object v7, v3, Lcom/android/server/job/controllers/JobStatus;->appNotIdleConstraintSatisfied:Ljava/util/concurrent/atomic/AtomicBoolean;

    #@40
    if-eqz v0, :cond_3

    #@42
    const/4 v5, 0x0

    #@43
    :goto_2
    invoke-virtual {v7, v5}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@46
    .line 117
    const/4 v1, 0x1

    #@47
    goto :goto_0

    #@48
    .line 110
    :cond_2
    const/4 v0, 0x0

    #@49
    .local v0, "appIdle":Z
    goto :goto_1

    #@4a
    .line 116
    .end local v0    # "appIdle":Z
    :cond_3
    const/4 v5, 0x1

    #@4b
    goto :goto_2

    #@4c
    .end local v2    # "packageName":Ljava/lang/String;
    .end local v3    # "task":Lcom/android/server/job/controllers/JobStatus;
    :cond_4
    monitor-exit v6

    #@4d
    .line 121
    if-eqz v1, :cond_5

    #@4f
    .line 122
    iget-object v5, p0, Lcom/android/server/job/controllers/AppIdleController;->mStateChangedListener:Lcom/android/server/job/StateChangedListener;

    #@51
    invoke-interface {v5}, Lcom/android/server/job/StateChangedListener;->onControllerStateChanged()V

    #@54
    .line 100
    :cond_5
    return-void

    #@55
    .line 103
    .end local v4    # "task$iterator":Ljava/util/Iterator;
    :catchall_0
    move-exception v5

    #@56
    monitor-exit v6

    #@57
    throw v5
.end method
