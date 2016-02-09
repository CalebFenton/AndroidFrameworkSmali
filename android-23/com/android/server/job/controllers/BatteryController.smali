.class public Lcom/android/server/job/controllers/BatteryController;
.super Lcom/android/server/job/controllers/StateController;
.source "BatteryController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/job/controllers/BatteryController$ChargingTracker;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "JobScheduler.Batt"

.field private static volatile sController:Lcom/android/server/job/controllers/BatteryController;

.field private static final sCreationLock:Ljava/lang/Object;


# instance fields
.field private mChargeTracker:Lcom/android/server/job/controllers/BatteryController$ChargingTracker;

.field private mTrackedTasks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/server/job/controllers/JobStatus;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static synthetic -wrap0(Lcom/android/server/job/controllers/BatteryController;)V
    .locals 0

    #@0
    invoke-direct {p0}, Lcom/android/server/job/controllers/BatteryController;->maybeReportNewChargingState()V

    #@3
    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 48
    new-instance v0, Ljava/lang/Object;

    #@2
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    #@5
    sput-object v0, Lcom/android/server/job/controllers/BatteryController;->sCreationLock:Ljava/lang/Object;

    #@7
    .line 45
    return-void
.end method

.method private constructor <init>(Lcom/android/server/job/StateChangedListener;Landroid/content/Context;)V
    .locals 1
    .param p1, "stateChangedListener"    # Lcom/android/server/job/StateChangedListener;
    .param p2, "context"    # Landroid/content/Context;

    #@0
    .prologue
    .line 76
    invoke-direct {p0, p1, p2}, Lcom/android/server/job/controllers/StateController;-><init>(Lcom/android/server/job/StateChangedListener;Landroid/content/Context;)V

    #@3
    .line 51
    new-instance v0, Ljava/util/ArrayList;

    #@5
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@8
    iput-object v0, p0, Lcom/android/server/job/controllers/BatteryController;->mTrackedTasks:Ljava/util/List;

    #@a
    .line 77
    new-instance v0, Lcom/android/server/job/controllers/BatteryController$ChargingTracker;

    #@c
    invoke-direct {v0, p0}, Lcom/android/server/job/controllers/BatteryController$ChargingTracker;-><init>(Lcom/android/server/job/controllers/BatteryController;)V

    #@f
    iput-object v0, p0, Lcom/android/server/job/controllers/BatteryController;->mChargeTracker:Lcom/android/server/job/controllers/BatteryController$ChargingTracker;

    #@11
    .line 78
    iget-object v0, p0, Lcom/android/server/job/controllers/BatteryController;->mChargeTracker:Lcom/android/server/job/controllers/BatteryController$ChargingTracker;

    #@13
    invoke-virtual {v0}, Lcom/android/server/job/controllers/BatteryController$ChargingTracker;->startTracking()V

    #@16
    .line 75
    return-void
.end method

.method public static get(Lcom/android/server/job/JobSchedulerService;)Lcom/android/server/job/controllers/BatteryController;
    .locals 3
    .param p0, "taskManagerService"    # Lcom/android/server/job/JobSchedulerService;

    #@0
    .prologue
    .line 55
    sget-object v1, Lcom/android/server/job/controllers/BatteryController;->sCreationLock:Ljava/lang/Object;

    #@2
    monitor-enter v1

    #@3
    .line 56
    :try_start_0
    sget-object v0, Lcom/android/server/job/controllers/BatteryController;->sController:Lcom/android/server/job/controllers/BatteryController;

    #@5
    if-nez v0, :cond_0

    #@7
    .line 57
    new-instance v0, Lcom/android/server/job/controllers/BatteryController;

    #@9
    .line 58
    invoke-virtual {p0}, Lcom/android/server/job/JobSchedulerService;->getContext()Landroid/content/Context;

    #@c
    move-result-object v2

    #@d
    .line 57
    invoke-direct {v0, p0, v2}, Lcom/android/server/job/controllers/BatteryController;-><init>(Lcom/android/server/job/StateChangedListener;Landroid/content/Context;)V

    #@10
    sput-object v0, Lcom/android/server/job/controllers/BatteryController;->sController:Lcom/android/server/job/controllers/BatteryController;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@12
    :cond_0
    monitor-exit v1

    #@13
    .line 61
    sget-object v0, Lcom/android/server/job/controllers/BatteryController;->sController:Lcom/android/server/job/controllers/BatteryController;

    #@15
    return-object v0

    #@16
    .line 55
    :catchall_0
    move-exception v0

    #@17
    monitor-exit v1

    #@18
    throw v0
.end method

.method public static getForTesting(Lcom/android/server/job/StateChangedListener;Landroid/content/Context;)Lcom/android/server/job/controllers/BatteryController;
    .locals 1
    .param p0, "stateChangedListener"    # Lcom/android/server/job/StateChangedListener;
    .param p1, "context"    # Landroid/content/Context;

    #@0
    .prologue
    .line 72
    new-instance v0, Lcom/android/server/job/controllers/BatteryController;

    #@2
    invoke-direct {v0, p0, p1}, Lcom/android/server/job/controllers/BatteryController;-><init>(Lcom/android/server/job/StateChangedListener;Landroid/content/Context;)V

    #@5
    return-object v0
.end method

.method private maybeReportNewChargingState()V
    .locals 7

    #@0
    .prologue
    .line 102
    iget-object v5, p0, Lcom/android/server/job/controllers/BatteryController;->mChargeTracker:Lcom/android/server/job/controllers/BatteryController$ChargingTracker;

    #@2
    invoke-virtual {v5}, Lcom/android/server/job/controllers/BatteryController$ChargingTracker;->isOnStablePower()Z

    #@5
    move-result v2

    #@6
    .line 106
    .local v2, "stablePower":Z
    const/4 v1, 0x0

    #@7
    .line 107
    .local v1, "reportChange":Z
    iget-object v6, p0, Lcom/android/server/job/controllers/BatteryController;->mTrackedTasks:Ljava/util/List;

    #@9
    monitor-enter v6

    #@a
    .line 108
    :try_start_0
    iget-object v5, p0, Lcom/android/server/job/controllers/BatteryController;->mTrackedTasks:Ljava/util/List;

    #@c
    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@f
    move-result-object v4

    #@10
    .local v4, "ts$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    #@13
    move-result v5

    #@14
    if-eqz v5, :cond_1

    #@16
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@19
    move-result-object v3

    #@1a
    check-cast v3, Lcom/android/server/job/controllers/JobStatus;

    #@1c
    .line 109
    .local v3, "ts":Lcom/android/server/job/controllers/JobStatus;
    iget-object v5, v3, Lcom/android/server/job/controllers/JobStatus;->chargingConstraintSatisfied:Ljava/util/concurrent/atomic/AtomicBoolean;

    #@1e
    invoke-virtual {v5, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@21
    move-result v0

    #@22
    .line 110
    .local v0, "previous":Z
    if-eq v0, v2, :cond_0

    #@24
    .line 111
    const/4 v1, 0x1

    #@25
    goto :goto_0

    #@26
    .end local v0    # "previous":Z
    .end local v3    # "ts":Lcom/android/server/job/controllers/JobStatus;
    :cond_1
    monitor-exit v6

    #@27
    .line 117
    if-eqz v1, :cond_2

    #@29
    .line 118
    iget-object v5, p0, Lcom/android/server/job/controllers/BatteryController;->mStateChangedListener:Lcom/android/server/job/StateChangedListener;

    #@2b
    invoke-interface {v5}, Lcom/android/server/job/StateChangedListener;->onControllerStateChanged()V

    #@2e
    .line 121
    :cond_2
    if-eqz v2, :cond_3

    #@30
    .line 122
    iget-object v5, p0, Lcom/android/server/job/controllers/BatteryController;->mStateChangedListener:Lcom/android/server/job/StateChangedListener;

    #@32
    const/4 v6, 0x0

    #@33
    invoke-interface {v5, v6}, Lcom/android/server/job/StateChangedListener;->onRunJobNow(Lcom/android/server/job/controllers/JobStatus;)V

    #@36
    .line 101
    :cond_3
    return-void

    #@37
    .line 107
    .end local v4    # "ts$iterator":Ljava/util/Iterator;
    :catchall_0
    move-exception v5

    #@38
    monitor-exit v6

    #@39
    throw v5
.end method


# virtual methods
.method public dumpControllerState(Ljava/io/PrintWriter;)V
    .locals 4
    .param p1, "pw"    # Ljava/io/PrintWriter;

    #@0
    .prologue
    .line 203
    const-string/jumbo v1, "Batt."

    #@3
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@6
    .line 204
    new-instance v1, Ljava/lang/StringBuilder;

    #@8
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@b
    const-string/jumbo v2, "Stable power: "

    #@e
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@11
    move-result-object v1

    #@12
    iget-object v2, p0, Lcom/android/server/job/controllers/BatteryController;->mChargeTracker:Lcom/android/server/job/controllers/BatteryController$ChargingTracker;

    #@14
    invoke-virtual {v2}, Lcom/android/server/job/controllers/BatteryController$ChargingTracker;->isOnStablePower()Z

    #@17
    move-result v2

    #@18
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@1b
    move-result-object v1

    #@1c
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1f
    move-result-object v1

    #@20
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@23
    .line 205
    iget-object v2, p0, Lcom/android/server/job/controllers/BatteryController;->mTrackedTasks:Ljava/util/List;

    #@25
    monitor-enter v2

    #@26
    .line 206
    :try_start_0
    iget-object v1, p0, Lcom/android/server/job/controllers/BatteryController;->mTrackedTasks:Ljava/util/List;

    #@28
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    #@2b
    move-result-object v0

    #@2c
    .line 207
    .local v0, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/job/controllers/JobStatus;>;"
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    #@2f
    move-result v1

    #@30
    if-eqz v1, :cond_0

    #@32
    .line 208
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@35
    move-result-object v1

    #@36
    check-cast v1, Lcom/android/server/job/controllers/JobStatus;

    #@38
    invoke-virtual {v1}, Lcom/android/server/job/controllers/JobStatus;->hashCode()I

    #@3b
    move-result v1

    #@3c
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    #@3f
    move-result-object v1

    #@40
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@43
    .line 210
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    #@46
    move-result v1

    #@47
    if-eqz v1, :cond_1

    #@49
    .line 211
    new-instance v1, Ljava/lang/StringBuilder;

    #@4b
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@4e
    const-string/jumbo v3, ","

    #@51
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@54
    move-result-object v3

    #@55
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@58
    move-result-object v1

    #@59
    check-cast v1, Lcom/android/server/job/controllers/JobStatus;

    #@5b
    invoke-virtual {v1}, Lcom/android/server/job/controllers/JobStatus;->hashCode()I

    #@5e
    move-result v1

    #@5f
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    #@62
    move-result-object v1

    #@63
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@66
    move-result-object v1

    #@67
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@6a
    move-result-object v1

    #@6b
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@6e
    goto :goto_0

    #@6f
    .line 205
    .end local v0    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/job/controllers/JobStatus;>;"
    :catchall_0
    move-exception v1

    #@70
    monitor-exit v2

    #@71
    throw v1

    #@72
    .line 213
    .restart local v0    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/job/controllers/JobStatus;>;"
    :cond_1
    :try_start_1
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@75
    monitor-exit v2

    #@76
    .line 202
    return-void
.end method

.method public getTracker()Lcom/android/server/job/controllers/BatteryController$ChargingTracker;
    .locals 1

    #@0
    .prologue
    .line 66
    iget-object v0, p0, Lcom/android/server/job/controllers/BatteryController;->mChargeTracker:Lcom/android/server/job/controllers/BatteryController$ChargingTracker;

    #@2
    return-object v0
.end method

.method public maybeStartTrackingJob(Lcom/android/server/job/controllers/JobStatus;)V
    .locals 3
    .param p1, "taskStatus"    # Lcom/android/server/job/controllers/JobStatus;

    #@0
    .prologue
    .line 83
    iget-object v1, p0, Lcom/android/server/job/controllers/BatteryController;->mChargeTracker:Lcom/android/server/job/controllers/BatteryController$ChargingTracker;

    #@2
    invoke-virtual {v1}, Lcom/android/server/job/controllers/BatteryController$ChargingTracker;->isOnStablePower()Z

    #@5
    move-result v0

    #@6
    .line 84
    .local v0, "isOnStablePower":Z
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->hasChargingConstraint()Z

    #@9
    move-result v1

    #@a
    if-eqz v1, :cond_0

    #@c
    .line 85
    iget-object v2, p0, Lcom/android/server/job/controllers/BatteryController;->mTrackedTasks:Ljava/util/List;

    #@e
    monitor-enter v2

    #@f
    .line 86
    :try_start_0
    iget-object v1, p0, Lcom/android/server/job/controllers/BatteryController;->mTrackedTasks:Ljava/util/List;

    #@11
    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@14
    .line 87
    iget-object v1, p1, Lcom/android/server/job/controllers/JobStatus;->chargingConstraintSatisfied:Ljava/util/concurrent/atomic/AtomicBoolean;

    #@16
    invoke-virtual {v1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@19
    monitor-exit v2

    #@1a
    .line 82
    :cond_0
    return-void

    #@1b
    .line 85
    :catchall_0
    move-exception v1

    #@1c
    monitor-exit v2

    #@1d
    throw v1
.end method

.method public maybeStopTrackingJob(Lcom/android/server/job/controllers/JobStatus;)V
    .locals 2
    .param p1, "taskStatus"    # Lcom/android/server/job/controllers/JobStatus;

    #@0
    .prologue
    .line 94
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->hasChargingConstraint()Z

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_0

    #@6
    .line 95
    iget-object v1, p0, Lcom/android/server/job/controllers/BatteryController;->mTrackedTasks:Ljava/util/List;

    #@8
    monitor-enter v1

    #@9
    .line 96
    :try_start_0
    iget-object v0, p0, Lcom/android/server/job/controllers/BatteryController;->mTrackedTasks:Ljava/util/List;

    #@b
    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@e
    monitor-exit v1

    #@f
    .line 93
    :cond_0
    return-void

    #@10
    .line 95
    :catchall_0
    move-exception v0

    #@11
    monitor-exit v1

    #@12
    throw v0
.end method
