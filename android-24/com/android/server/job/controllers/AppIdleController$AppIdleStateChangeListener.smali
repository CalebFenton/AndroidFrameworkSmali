.class Lcom/android/server/job/controllers/AppIdleController$AppIdleStateChangeListener;
.super Landroid/app/usage/UsageStatsManagerInternal$AppIdleStateChangeListener;
.source "AppIdleController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/job/controllers/AppIdleController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AppIdleStateChangeListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/job/controllers/AppIdleController;


# direct methods
.method private constructor <init>(Lcom/android/server/job/controllers/AppIdleController;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/job/controllers/AppIdleController;

    #@0
    .prologue
    .line 173
    iput-object p1, p0, Lcom/android/server/job/controllers/AppIdleController$AppIdleStateChangeListener;->this$0:Lcom/android/server/job/controllers/AppIdleController;

    #@2
    invoke-direct {p0}, Landroid/app/usage/UsageStatsManagerInternal$AppIdleStateChangeListener;-><init>()V

    #@5
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/job/controllers/AppIdleController;Lcom/android/server/job/controllers/AppIdleController$AppIdleStateChangeListener;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/job/controllers/AppIdleController;

    #@0
    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/job/controllers/AppIdleController$AppIdleStateChangeListener;-><init>(Lcom/android/server/job/controllers/AppIdleController;)V

    #@3
    return-void
.end method


# virtual methods
.method public onAppIdleStateChanged(Ljava/lang/String;IZ)V
    .locals 4
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .param p3, "idle"    # Z

    #@0
    .prologue
    .line 177
    const/4 v0, 0x0

    #@1
    .line 178
    .local v0, "changed":Z
    iget-object v2, p0, Lcom/android/server/job/controllers/AppIdleController$AppIdleStateChangeListener;->this$0:Lcom/android/server/job/controllers/AppIdleController;

    #@3
    iget-object v3, v2, Lcom/android/server/job/controllers/AppIdleController;->mLock:Ljava/lang/Object;

    #@5
    monitor-enter v3

    #@6
    .line 179
    :try_start_0
    iget-object v2, p0, Lcom/android/server/job/controllers/AppIdleController$AppIdleStateChangeListener;->this$0:Lcom/android/server/job/controllers/AppIdleController;

    #@8
    iget-boolean v2, v2, Lcom/android/server/job/controllers/AppIdleController;->mAppIdleParoleOn:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@a
    if-eqz v2, :cond_0

    #@c
    monitor-exit v3

    #@d
    .line 180
    return-void

    #@e
    .line 182
    :cond_0
    :try_start_1
    new-instance v1, Lcom/android/server/job/controllers/AppIdleController$PackageUpdateFunc;

    #@10
    invoke-direct {v1, p2, p1, p3}, Lcom/android/server/job/controllers/AppIdleController$PackageUpdateFunc;-><init>(ILjava/lang/String;Z)V

    #@13
    .line 183
    .local v1, "update":Lcom/android/server/job/controllers/AppIdleController$PackageUpdateFunc;
    iget-object v2, p0, Lcom/android/server/job/controllers/AppIdleController$AppIdleStateChangeListener;->this$0:Lcom/android/server/job/controllers/AppIdleController;

    #@15
    invoke-static {v2}, Lcom/android/server/job/controllers/AppIdleController;->-get0(Lcom/android/server/job/controllers/AppIdleController;)Lcom/android/server/job/JobSchedulerService;

    #@18
    move-result-object v2

    #@19
    invoke-virtual {v2}, Lcom/android/server/job/JobSchedulerService;->getJobStore()Lcom/android/server/job/JobStore;

    #@1c
    move-result-object v2

    #@1d
    invoke-virtual {v2, v1}, Lcom/android/server/job/JobStore;->forEachJob(Lcom/android/server/job/JobStore$JobStatusFunctor;)V

    #@20
    .line 184
    iget-boolean v2, v1, Lcom/android/server/job/controllers/AppIdleController$PackageUpdateFunc;->mChanged:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@22
    if-eqz v2, :cond_1

    #@24
    .line 185
    const/4 v0, 0x1

    #@25
    :cond_1
    monitor-exit v3

    #@26
    .line 188
    if-eqz v0, :cond_2

    #@28
    .line 189
    iget-object v2, p0, Lcom/android/server/job/controllers/AppIdleController$AppIdleStateChangeListener;->this$0:Lcom/android/server/job/controllers/AppIdleController;

    #@2a
    iget-object v2, v2, Lcom/android/server/job/controllers/AppIdleController;->mStateChangedListener:Lcom/android/server/job/StateChangedListener;

    #@2c
    invoke-interface {v2}, Lcom/android/server/job/StateChangedListener;->onControllerStateChanged()V

    #@2f
    .line 176
    :cond_2
    return-void

    #@30
    .line 178
    .end local v1    # "update":Lcom/android/server/job/controllers/AppIdleController$PackageUpdateFunc;
    :catchall_0
    move-exception v2

    #@31
    monitor-exit v3

    #@32
    throw v2
.end method

.method public onParoleStateChanged(Z)V
    .locals 1
    .param p1, "isParoleOn"    # Z

    #@0
    .prologue
    .line 198
    iget-object v0, p0, Lcom/android/server/job/controllers/AppIdleController$AppIdleStateChangeListener;->this$0:Lcom/android/server/job/controllers/AppIdleController;

    #@2
    invoke-virtual {v0, p1}, Lcom/android/server/job/controllers/AppIdleController;->setAppIdleParoleOn(Z)V

    #@5
    .line 194
    return-void
.end method
