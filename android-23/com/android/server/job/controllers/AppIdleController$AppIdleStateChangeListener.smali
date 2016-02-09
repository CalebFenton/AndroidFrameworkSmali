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
    .line 126
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
    .locals 8
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .param p3, "idle"    # Z

    #@0
    .prologue
    const/4 v5, 0x1

    #@1
    const/4 v4, 0x0

    #@2
    .line 130
    const/4 v0, 0x0

    #@3
    .line 131
    .local v0, "changed":Z
    iget-object v3, p0, Lcom/android/server/job/controllers/AppIdleController$AppIdleStateChangeListener;->this$0:Lcom/android/server/job/controllers/AppIdleController;

    #@5
    iget-object v6, v3, Lcom/android/server/job/controllers/AppIdleController;->mTrackedTasks:Ljava/util/ArrayList;

    #@7
    monitor-enter v6

    #@8
    .line 132
    :try_start_0
    iget-object v3, p0, Lcom/android/server/job/controllers/AppIdleController$AppIdleStateChangeListener;->this$0:Lcom/android/server/job/controllers/AppIdleController;

    #@a
    iget-boolean v3, v3, Lcom/android/server/job/controllers/AppIdleController;->mAppIdleParoleOn:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@c
    if-eqz v3, :cond_0

    #@e
    monitor-exit v6

    #@f
    .line 133
    return-void

    #@10
    .line 135
    :cond_0
    :try_start_1
    iget-object v3, p0, Lcom/android/server/job/controllers/AppIdleController$AppIdleStateChangeListener;->this$0:Lcom/android/server/job/controllers/AppIdleController;

    #@12
    iget-object v3, v3, Lcom/android/server/job/controllers/AppIdleController;->mTrackedTasks:Ljava/util/ArrayList;

    #@14
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@17
    move-result-object v2

    #@18
    .local v2, "task$iterator":Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    #@1b
    move-result v3

    #@1c
    if-eqz v3, :cond_4

    #@1e
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@21
    move-result-object v1

    #@22
    check-cast v1, Lcom/android/server/job/controllers/JobStatus;

    #@24
    .line 136
    .local v1, "task":Lcom/android/server/job/controllers/JobStatus;
    iget-object v3, v1, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    #@26
    invoke-virtual {v3}, Landroid/app/job/JobInfo;->getService()Landroid/content/ComponentName;

    #@29
    move-result-object v3

    #@2a
    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    #@2d
    move-result-object v3

    #@2e
    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@31
    move-result v3

    #@32
    if-eqz v3, :cond_1

    #@34
    .line 137
    invoke-virtual {v1}, Lcom/android/server/job/controllers/JobStatus;->getUserId()I

    #@37
    move-result v3

    #@38
    if-ne v3, p2, :cond_1

    #@3a
    .line 138
    iget-object v3, v1, Lcom/android/server/job/controllers/JobStatus;->appNotIdleConstraintSatisfied:Ljava/util/concurrent/atomic/AtomicBoolean;

    #@3c
    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    #@3f
    move-result v7

    #@40
    if-eqz p3, :cond_2

    #@42
    move v3, v4

    #@43
    :goto_1
    if-eq v7, v3, :cond_1

    #@45
    .line 143
    iget-object v7, v1, Lcom/android/server/job/controllers/JobStatus;->appNotIdleConstraintSatisfied:Ljava/util/concurrent/atomic/AtomicBoolean;

    #@47
    if-eqz p3, :cond_3

    #@49
    move v3, v4

    #@4a
    :goto_2
    invoke-virtual {v7, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@4d
    .line 144
    const/4 v0, 0x1

    #@4e
    goto :goto_0

    #@4f
    :cond_2
    move v3, v5

    #@50
    .line 138
    goto :goto_1

    #@51
    :cond_3
    move v3, v5

    #@52
    .line 143
    goto :goto_2

    #@53
    .end local v1    # "task":Lcom/android/server/job/controllers/JobStatus;
    :cond_4
    monitor-exit v6

    #@54
    .line 149
    if-eqz v0, :cond_5

    #@56
    .line 150
    iget-object v3, p0, Lcom/android/server/job/controllers/AppIdleController$AppIdleStateChangeListener;->this$0:Lcom/android/server/job/controllers/AppIdleController;

    #@58
    iget-object v3, v3, Lcom/android/server/job/controllers/AppIdleController;->mStateChangedListener:Lcom/android/server/job/StateChangedListener;

    #@5a
    invoke-interface {v3}, Lcom/android/server/job/StateChangedListener;->onControllerStateChanged()V

    #@5d
    .line 129
    :cond_5
    return-void

    #@5e
    .line 131
    .end local v2    # "task$iterator":Ljava/util/Iterator;
    :catchall_0
    move-exception v3

    #@5f
    monitor-exit v6

    #@60
    throw v3
.end method

.method public onParoleStateChanged(Z)V
    .locals 1
    .param p1, "isParoleOn"    # Z

    #@0
    .prologue
    .line 159
    iget-object v0, p0, Lcom/android/server/job/controllers/AppIdleController$AppIdleStateChangeListener;->this$0:Lcom/android/server/job/controllers/AppIdleController;

    #@2
    invoke-virtual {v0, p1}, Lcom/android/server/job/controllers/AppIdleController;->setAppIdleParoleOn(Z)V

    #@5
    .line 155
    return-void
.end method
