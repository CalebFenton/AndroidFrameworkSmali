.class public Lcom/android/server/job/controllers/IdleController;
.super Lcom/android/server/job/controllers/StateController;
.source "IdleController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/job/controllers/IdleController$IdlenessTracker;
    }
.end annotation


# static fields
.field private static final ACTION_TRIGGER_IDLE:Ljava/lang/String; = "com.android.server.task.controllers.IdleController.ACTION_TRIGGER_IDLE"

.field private static final IDLE_WINDOW_SLOP:J = 0x493e0L

.field private static final INACTIVITY_IDLE_THRESHOLD:J = 0x4100a0L

.field private static final TAG:Ljava/lang/String; = "IdleController"

.field private static volatile sController:Lcom/android/server/job/controllers/IdleController;

.field private static sCreationLock:Ljava/lang/Object;


# instance fields
.field mIdleTracker:Lcom/android/server/job/controllers/IdleController$IdlenessTracker;

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


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 49
    new-instance v0, Ljava/lang/Object;

    #@2
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    #@5
    sput-object v0, Lcom/android/server/job/controllers/IdleController;->sCreationLock:Ljava/lang/Object;

    #@7
    .line 34
    return-void
.end method

.method private constructor <init>(Lcom/android/server/job/StateChangedListener;Landroid/content/Context;)V
    .locals 1
    .param p1, "stateChangedListener"    # Lcom/android/server/job/StateChangedListener;
    .param p2, "context"    # Landroid/content/Context;

    #@0
    .prologue
    .line 62
    invoke-direct {p0, p1, p2}, Lcom/android/server/job/controllers/StateController;-><init>(Lcom/android/server/job/StateChangedListener;Landroid/content/Context;)V

    #@3
    .line 45
    new-instance v0, Ljava/util/ArrayList;

    #@5
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@8
    iput-object v0, p0, Lcom/android/server/job/controllers/IdleController;->mTrackedTasks:Ljava/util/ArrayList;

    #@a
    .line 63
    invoke-direct {p0}, Lcom/android/server/job/controllers/IdleController;->initIdleStateTracking()V

    #@d
    .line 61
    return-void
.end method

.method public static get(Lcom/android/server/job/JobSchedulerService;)Lcom/android/server/job/controllers/IdleController;
    .locals 3
    .param p0, "service"    # Lcom/android/server/job/JobSchedulerService;

    #@0
    .prologue
    .line 53
    sget-object v1, Lcom/android/server/job/controllers/IdleController;->sCreationLock:Ljava/lang/Object;

    #@2
    monitor-enter v1

    #@3
    .line 54
    :try_start_0
    sget-object v0, Lcom/android/server/job/controllers/IdleController;->sController:Lcom/android/server/job/controllers/IdleController;

    #@5
    if-nez v0, :cond_0

    #@7
    .line 55
    new-instance v0, Lcom/android/server/job/controllers/IdleController;

    #@9
    invoke-virtual {p0}, Lcom/android/server/job/JobSchedulerService;->getContext()Landroid/content/Context;

    #@c
    move-result-object v2

    #@d
    invoke-direct {v0, p0, v2}, Lcom/android/server/job/controllers/IdleController;-><init>(Lcom/android/server/job/StateChangedListener;Landroid/content/Context;)V

    #@10
    sput-object v0, Lcom/android/server/job/controllers/IdleController;->sController:Lcom/android/server/job/controllers/IdleController;

    #@12
    .line 57
    :cond_0
    sget-object v0, Lcom/android/server/job/controllers/IdleController;->sController:Lcom/android/server/job/controllers/IdleController;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@14
    monitor-exit v1

    #@15
    return-object v0

    #@16
    .line 53
    :catchall_0
    move-exception v0

    #@17
    monitor-exit v1

    #@18
    throw v0
.end method

.method private initIdleStateTracking()V
    .locals 1

    #@0
    .prologue
    .line 103
    new-instance v0, Lcom/android/server/job/controllers/IdleController$IdlenessTracker;

    #@2
    invoke-direct {v0, p0}, Lcom/android/server/job/controllers/IdleController$IdlenessTracker;-><init>(Lcom/android/server/job/controllers/IdleController;)V

    #@5
    iput-object v0, p0, Lcom/android/server/job/controllers/IdleController;->mIdleTracker:Lcom/android/server/job/controllers/IdleController$IdlenessTracker;

    #@7
    .line 104
    iget-object v0, p0, Lcom/android/server/job/controllers/IdleController;->mIdleTracker:Lcom/android/server/job/controllers/IdleController$IdlenessTracker;

    #@9
    invoke-virtual {v0}, Lcom/android/server/job/controllers/IdleController$IdlenessTracker;->startTracking()V

    #@c
    .line 102
    return-void
.end method


# virtual methods
.method public dumpControllerState(Ljava/io/PrintWriter;)V
    .locals 6
    .param p1, "pw"    # Ljava/io/PrintWriter;

    #@0
    .prologue
    .line 194
    iget-object v3, p0, Lcom/android/server/job/controllers/IdleController;->mTrackedTasks:Ljava/util/ArrayList;

    #@2
    monitor-enter v3

    #@3
    .line 195
    :try_start_0
    const-string/jumbo v2, "Idle: "

    #@6
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@9
    .line 196
    iget-object v2, p0, Lcom/android/server/job/controllers/IdleController;->mIdleTracker:Lcom/android/server/job/controllers/IdleController$IdlenessTracker;

    #@b
    invoke-virtual {v2}, Lcom/android/server/job/controllers/IdleController$IdlenessTracker;->isIdle()Z

    #@e
    move-result v2

    #@f
    if-eqz v2, :cond_0

    #@11
    const-string/jumbo v2, "true"

    #@14
    :goto_0
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@17
    .line 197
    iget-object v2, p0, Lcom/android/server/job/controllers/IdleController;->mTrackedTasks:Ljava/util/ArrayList;

    #@19
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    #@1c
    move-result v2

    #@1d
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(I)V

    #@20
    .line 198
    const/4 v0, 0x0

    #@21
    .local v0, "i":I
    :goto_1
    iget-object v2, p0, Lcom/android/server/job/controllers/IdleController;->mTrackedTasks:Ljava/util/ArrayList;

    #@23
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    #@26
    move-result v2

    #@27
    if-ge v0, v2, :cond_1

    #@29
    .line 199
    iget-object v2, p0, Lcom/android/server/job/controllers/IdleController;->mTrackedTasks:Ljava/util/ArrayList;

    #@2b
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@2e
    move-result-object v1

    #@2f
    check-cast v1, Lcom/android/server/job/controllers/JobStatus;

    #@31
    .line 200
    .local v1, "js":Lcom/android/server/job/controllers/JobStatus;
    const-string/jumbo v2, "  "

    #@34
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@37
    .line 201
    invoke-virtual {v1}, Lcom/android/server/job/controllers/JobStatus;->hashCode()I

    #@3a
    move-result v2

    #@3b
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    #@3e
    move-result-object v2

    #@3f
    const/4 v4, 0x0

    #@40
    const/4 v5, 0x3

    #@41
    invoke-virtual {v2, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@44
    move-result-object v2

    #@45
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@48
    .line 202
    const-string/jumbo v2, ".."

    #@4b
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@4e
    .line 198
    add-int/lit8 v0, v0, 0x1

    #@50
    goto :goto_1

    #@51
    .line 196
    .end local v0    # "i":I
    .end local v1    # "js":Lcom/android/server/job/controllers/JobStatus;
    :cond_0
    const-string/jumbo v2, "false"
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@54
    goto :goto_0

    #@55
    .restart local v0    # "i":I
    :cond_1
    monitor-exit v3

    #@56
    .line 193
    return-void

    #@57
    .line 194
    .end local v0    # "i":I
    :catchall_0
    move-exception v2

    #@58
    monitor-exit v3

    #@59
    throw v2
.end method

.method public maybeStartTrackingJob(Lcom/android/server/job/controllers/JobStatus;)V
    .locals 3
    .param p1, "taskStatus"    # Lcom/android/server/job/controllers/JobStatus;

    #@0
    .prologue
    .line 71
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->hasIdleConstraint()Z

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_0

    #@6
    .line 72
    iget-object v1, p0, Lcom/android/server/job/controllers/IdleController;->mTrackedTasks:Ljava/util/ArrayList;

    #@8
    monitor-enter v1

    #@9
    .line 73
    :try_start_0
    iget-object v0, p0, Lcom/android/server/job/controllers/IdleController;->mTrackedTasks:Ljava/util/ArrayList;

    #@b
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@e
    .line 74
    iget-object v0, p1, Lcom/android/server/job/controllers/JobStatus;->idleConstraintSatisfied:Ljava/util/concurrent/atomic/AtomicBoolean;

    #@10
    iget-object v2, p0, Lcom/android/server/job/controllers/IdleController;->mIdleTracker:Lcom/android/server/job/controllers/IdleController$IdlenessTracker;

    #@12
    invoke-virtual {v2}, Lcom/android/server/job/controllers/IdleController$IdlenessTracker;->isIdle()Z

    #@15
    move-result v2

    #@16
    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@19
    monitor-exit v1

    #@1a
    .line 70
    :cond_0
    return-void

    #@1b
    .line 72
    :catchall_0
    move-exception v0

    #@1c
    monitor-exit v1

    #@1d
    throw v0
.end method

.method public maybeStopTrackingJob(Lcom/android/server/job/controllers/JobStatus;)V
    .locals 2
    .param p1, "taskStatus"    # Lcom/android/server/job/controllers/JobStatus;

    #@0
    .prologue
    .line 81
    iget-object v1, p0, Lcom/android/server/job/controllers/IdleController;->mTrackedTasks:Ljava/util/ArrayList;

    #@2
    monitor-enter v1

    #@3
    .line 82
    :try_start_0
    iget-object v0, p0, Lcom/android/server/job/controllers/IdleController;->mTrackedTasks:Ljava/util/ArrayList;

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

.method reportNewIdleState(Z)V
    .locals 4
    .param p1, "isIdle"    # Z

    #@0
    .prologue
    .line 90
    iget-object v3, p0, Lcom/android/server/job/controllers/IdleController;->mTrackedTasks:Ljava/util/ArrayList;

    #@2
    monitor-enter v3

    #@3
    .line 91
    :try_start_0
    iget-object v2, p0, Lcom/android/server/job/controllers/IdleController;->mTrackedTasks:Ljava/util/ArrayList;

    #@5
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@8
    move-result-object v1

    #@9
    .local v1, "task$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@c
    move-result v2

    #@d
    if-eqz v2, :cond_0

    #@f
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@12
    move-result-object v0

    #@13
    check-cast v0, Lcom/android/server/job/controllers/JobStatus;

    #@15
    .line 92
    .local v0, "task":Lcom/android/server/job/controllers/JobStatus;
    iget-object v2, v0, Lcom/android/server/job/controllers/JobStatus;->idleConstraintSatisfied:Ljava/util/concurrent/atomic/AtomicBoolean;

    #@17
    invoke-virtual {v2, p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1a
    goto :goto_0

    #@1b
    .line 90
    .end local v0    # "task":Lcom/android/server/job/controllers/JobStatus;
    .end local v1    # "task$iterator":Ljava/util/Iterator;
    :catchall_0
    move-exception v2

    #@1c
    monitor-exit v3

    #@1d
    throw v2

    #@1e
    .restart local v1    # "task$iterator":Ljava/util/Iterator;
    :cond_0
    monitor-exit v3

    #@1f
    .line 95
    iget-object v2, p0, Lcom/android/server/job/controllers/IdleController;->mStateChangedListener:Lcom/android/server/job/StateChangedListener;

    #@21
    invoke-interface {v2}, Lcom/android/server/job/StateChangedListener;->onControllerStateChanged()V

    #@24
    .line 89
    return-void
.end method
