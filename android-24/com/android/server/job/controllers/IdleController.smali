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
.field private static final TAG:Ljava/lang/String; = "IdleController"

.field private static volatile sController:Lcom/android/server/job/controllers/IdleController;

.field private static sCreationLock:Ljava/lang/Object;


# instance fields
.field mIdleTracker:Lcom/android/server/job/controllers/IdleController$IdlenessTracker;

.field private mIdleWindowSlop:J

.field private mInactivityIdleThreshold:J

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
.method static synthetic -get0(Lcom/android/server/job/controllers/IdleController;)J
    .locals 2

    #@0
    iget-wide v0, p0, Lcom/android/server/job/controllers/IdleController;->mIdleWindowSlop:J

    #@2
    return-wide v0
.end method

.method static synthetic -get1(Lcom/android/server/job/controllers/IdleController;)J
    .locals 2

    #@0
    iget-wide v0, p0, Lcom/android/server/job/controllers/IdleController;->mInactivityIdleThreshold:J

    #@2
    return-wide v0
.end method

.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 47
    new-instance v0, Ljava/lang/Object;

    #@2
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    #@5
    sput-object v0, Lcom/android/server/job/controllers/IdleController;->sCreationLock:Ljava/lang/Object;

    #@7
    .line 36
    return-void
.end method

.method private constructor <init>(Lcom/android/server/job/StateChangedListener;Landroid/content/Context;Ljava/lang/Object;)V
    .locals 1
    .param p1, "stateChangedListener"    # Lcom/android/server/job/StateChangedListener;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "lock"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 61
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/job/controllers/StateController;-><init>(Lcom/android/server/job/StateChangedListener;Landroid/content/Context;Ljava/lang/Object;)V

    #@3
    .line 43
    new-instance v0, Ljava/util/ArrayList;

    #@5
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@8
    iput-object v0, p0, Lcom/android/server/job/controllers/IdleController;->mTrackedTasks:Ljava/util/ArrayList;

    #@a
    .line 62
    invoke-direct {p0}, Lcom/android/server/job/controllers/IdleController;->initIdleStateTracking()V

    #@d
    .line 60
    return-void
.end method

.method public static get(Lcom/android/server/job/JobSchedulerService;)Lcom/android/server/job/controllers/IdleController;
    .locals 4
    .param p0, "service"    # Lcom/android/server/job/JobSchedulerService;

    #@0
    .prologue
    .line 51
    sget-object v1, Lcom/android/server/job/controllers/IdleController;->sCreationLock:Ljava/lang/Object;

    #@2
    monitor-enter v1

    #@3
    .line 52
    :try_start_0
    sget-object v0, Lcom/android/server/job/controllers/IdleController;->sController:Lcom/android/server/job/controllers/IdleController;

    #@5
    if-nez v0, :cond_0

    #@7
    .line 53
    new-instance v0, Lcom/android/server/job/controllers/IdleController;

    #@9
    invoke-virtual {p0}, Lcom/android/server/job/JobSchedulerService;->getContext()Landroid/content/Context;

    #@c
    move-result-object v2

    #@d
    invoke-virtual {p0}, Lcom/android/server/job/JobSchedulerService;->getLock()Ljava/lang/Object;

    #@10
    move-result-object v3

    #@11
    invoke-direct {v0, p0, v2, v3}, Lcom/android/server/job/controllers/IdleController;-><init>(Lcom/android/server/job/StateChangedListener;Landroid/content/Context;Ljava/lang/Object;)V

    #@14
    sput-object v0, Lcom/android/server/job/controllers/IdleController;->sController:Lcom/android/server/job/controllers/IdleController;

    #@16
    .line 55
    :cond_0
    sget-object v0, Lcom/android/server/job/controllers/IdleController;->sController:Lcom/android/server/job/controllers/IdleController;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@18
    monitor-exit v1

    #@19
    return-object v0

    #@1a
    .line 51
    :catchall_0
    move-exception v0

    #@1b
    monitor-exit v1

    #@1c
    throw v0
.end method

.method private initIdleStateTracking()V
    .locals 2

    #@0
    .prologue
    .line 98
    iget-object v0, p0, Lcom/android/server/job/controllers/IdleController;->mContext:Landroid/content/Context;

    #@2
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@5
    move-result-object v0

    #@6
    .line 99
    const v1, 0x10e009f

    #@9
    .line 98
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    #@c
    move-result v0

    #@d
    int-to-long v0, v0

    #@e
    iput-wide v0, p0, Lcom/android/server/job/controllers/IdleController;->mInactivityIdleThreshold:J

    #@10
    .line 100
    iget-object v0, p0, Lcom/android/server/job/controllers/IdleController;->mContext:Landroid/content/Context;

    #@12
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@15
    move-result-object v0

    #@16
    .line 101
    const v1, 0x10e00a0

    #@19
    .line 100
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    #@1c
    move-result v0

    #@1d
    int-to-long v0, v0

    #@1e
    iput-wide v0, p0, Lcom/android/server/job/controllers/IdleController;->mIdleWindowSlop:J

    #@20
    .line 102
    new-instance v0, Lcom/android/server/job/controllers/IdleController$IdlenessTracker;

    #@22
    invoke-direct {v0, p0}, Lcom/android/server/job/controllers/IdleController$IdlenessTracker;-><init>(Lcom/android/server/job/controllers/IdleController;)V

    #@25
    iput-object v0, p0, Lcom/android/server/job/controllers/IdleController;->mIdleTracker:Lcom/android/server/job/controllers/IdleController$IdlenessTracker;

    #@27
    .line 103
    iget-object v0, p0, Lcom/android/server/job/controllers/IdleController;->mIdleTracker:Lcom/android/server/job/controllers/IdleController$IdlenessTracker;

    #@29
    invoke-virtual {v0}, Lcom/android/server/job/controllers/IdleController$IdlenessTracker;->startTracking()V

    #@2c
    .line 97
    return-void
.end method


# virtual methods
.method public dumpControllerStateLocked(Ljava/io/PrintWriter;I)V
    .locals 3
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "filterUid"    # I

    #@0
    .prologue
    .line 193
    const-string/jumbo v2, "Idle: "

    #@3
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@6
    .line 194
    iget-object v2, p0, Lcom/android/server/job/controllers/IdleController;->mIdleTracker:Lcom/android/server/job/controllers/IdleController$IdlenessTracker;

    #@8
    invoke-virtual {v2}, Lcom/android/server/job/controllers/IdleController$IdlenessTracker;->isIdle()Z

    #@b
    move-result v2

    #@c
    if-eqz v2, :cond_0

    #@e
    const-string/jumbo v2, "true"

    #@11
    :goto_0
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@14
    .line 195
    const-string/jumbo v2, "Tracking "

    #@17
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@1a
    .line 196
    iget-object v2, p0, Lcom/android/server/job/controllers/IdleController;->mTrackedTasks:Ljava/util/ArrayList;

    #@1c
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    #@1f
    move-result v2

    #@20
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(I)V

    #@23
    .line 197
    const-string/jumbo v2, ":"

    #@26
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@29
    .line 198
    const/4 v0, 0x0

    #@2a
    .local v0, "i":I
    :goto_1
    iget-object v2, p0, Lcom/android/server/job/controllers/IdleController;->mTrackedTasks:Ljava/util/ArrayList;

    #@2c
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    #@2f
    move-result v2

    #@30
    if-ge v0, v2, :cond_2

    #@32
    .line 199
    iget-object v2, p0, Lcom/android/server/job/controllers/IdleController;->mTrackedTasks:Ljava/util/ArrayList;

    #@34
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@37
    move-result-object v1

    #@38
    check-cast v1, Lcom/android/server/job/controllers/JobStatus;

    #@3a
    .line 200
    .local v1, "js":Lcom/android/server/job/controllers/JobStatus;
    invoke-virtual {v1, p2}, Lcom/android/server/job/controllers/JobStatus;->shouldDump(I)Z

    #@3d
    move-result v2

    #@3e
    if-nez v2, :cond_1

    #@40
    .line 198
    :goto_2
    add-int/lit8 v0, v0, 0x1

    #@42
    goto :goto_1

    #@43
    .line 194
    .end local v0    # "i":I
    .end local v1    # "js":Lcom/android/server/job/controllers/JobStatus;
    :cond_0
    const-string/jumbo v2, "false"

    #@46
    goto :goto_0

    #@47
    .line 203
    .restart local v0    # "i":I
    .restart local v1    # "js":Lcom/android/server/job/controllers/JobStatus;
    :cond_1
    const-string/jumbo v2, "  #"

    #@4a
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@4d
    .line 204
    invoke-virtual {v1, p1}, Lcom/android/server/job/controllers/JobStatus;->printUniqueId(Ljava/io/PrintWriter;)V

    #@50
    .line 205
    const-string/jumbo v2, " from "

    #@53
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@56
    .line 206
    invoke-virtual {v1}, Lcom/android/server/job/controllers/JobStatus;->getSourceUid()I

    #@59
    move-result v2

    #@5a
    invoke-static {p1, v2}, Landroid/os/UserHandle;->formatUid(Ljava/io/PrintWriter;I)V

    #@5d
    .line 207
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    #@60
    goto :goto_2

    #@61
    .line 192
    .end local v1    # "js":Lcom/android/server/job/controllers/JobStatus;
    :cond_2
    return-void
.end method

.method public maybeStartTrackingJobLocked(Lcom/android/server/job/controllers/JobStatus;Lcom/android/server/job/controllers/JobStatus;)V
    .locals 1
    .param p1, "taskStatus"    # Lcom/android/server/job/controllers/JobStatus;
    .param p2, "lastJob"    # Lcom/android/server/job/controllers/JobStatus;

    #@0
    .prologue
    .line 70
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->hasIdleConstraint()Z

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_0

    #@6
    .line 71
    iget-object v0, p0, Lcom/android/server/job/controllers/IdleController;->mTrackedTasks:Ljava/util/ArrayList;

    #@8
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@b
    .line 72
    iget-object v0, p0, Lcom/android/server/job/controllers/IdleController;->mIdleTracker:Lcom/android/server/job/controllers/IdleController$IdlenessTracker;

    #@d
    invoke-virtual {v0}, Lcom/android/server/job/controllers/IdleController$IdlenessTracker;->isIdle()Z

    #@10
    move-result v0

    #@11
    invoke-virtual {p1, v0}, Lcom/android/server/job/controllers/JobStatus;->setIdleConstraintSatisfied(Z)Z

    #@14
    .line 69
    :cond_0
    return-void
.end method

.method public maybeStopTrackingJobLocked(Lcom/android/server/job/controllers/JobStatus;Lcom/android/server/job/controllers/JobStatus;Z)V
    .locals 1
    .param p1, "taskStatus"    # Lcom/android/server/job/controllers/JobStatus;
    .param p2, "incomingJob"    # Lcom/android/server/job/controllers/JobStatus;
    .param p3, "forUpdate"    # Z

    #@0
    .prologue
    .line 78
    iget-object v0, p0, Lcom/android/server/job/controllers/IdleController;->mTrackedTasks:Ljava/util/ArrayList;

    #@2
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    #@5
    .line 77
    return-void
.end method

.method reportNewIdleState(Z)V
    .locals 4
    .param p1, "isIdle"    # Z

    #@0
    .prologue
    .line 85
    iget-object v3, p0, Lcom/android/server/job/controllers/IdleController;->mLock:Ljava/lang/Object;

    #@2
    monitor-enter v3

    #@3
    .line 86
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
    .line 87
    .local v0, "task":Lcom/android/server/job/controllers/JobStatus;
    invoke-virtual {v0, p1}, Lcom/android/server/job/controllers/JobStatus;->setIdleConstraintSatisfied(Z)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@18
    goto :goto_0

    #@19
    .line 85
    .end local v0    # "task":Lcom/android/server/job/controllers/JobStatus;
    .end local v1    # "task$iterator":Ljava/util/Iterator;
    :catchall_0
    move-exception v2

    #@1a
    monitor-exit v3

    #@1b
    throw v2

    #@1c
    .restart local v1    # "task$iterator":Ljava/util/Iterator;
    :cond_0
    monitor-exit v3

    #@1d
    .line 90
    iget-object v2, p0, Lcom/android/server/job/controllers/IdleController;->mStateChangedListener:Lcom/android/server/job/StateChangedListener;

    #@1f
    invoke-interface {v2}, Lcom/android/server/job/StateChangedListener;->onControllerStateChanged()V

    #@22
    .line 84
    return-void
.end method
