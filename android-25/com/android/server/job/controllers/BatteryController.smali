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
    .line 47
    new-instance v0, Ljava/lang/Object;

    #@2
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    #@5
    sput-object v0, Lcom/android/server/job/controllers/BatteryController;->sCreationLock:Ljava/lang/Object;

    #@7
    .line 44
    return-void
.end method

.method private constructor <init>(Lcom/android/server/job/StateChangedListener;Landroid/content/Context;Ljava/lang/Object;)V
    .locals 1
    .param p1, "stateChangedListener"    # Lcom/android/server/job/StateChangedListener;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "lock"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 76
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/job/controllers/StateController;-><init>(Lcom/android/server/job/StateChangedListener;Landroid/content/Context;Ljava/lang/Object;)V

    #@3
    .line 50
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
    .locals 4
    .param p0, "taskManagerService"    # Lcom/android/server/job/JobSchedulerService;

    #@0
    .prologue
    .line 54
    sget-object v1, Lcom/android/server/job/controllers/BatteryController;->sCreationLock:Ljava/lang/Object;

    #@2
    monitor-enter v1

    #@3
    .line 55
    :try_start_0
    sget-object v0, Lcom/android/server/job/controllers/BatteryController;->sController:Lcom/android/server/job/controllers/BatteryController;

    #@5
    if-nez v0, :cond_0

    #@7
    .line 56
    new-instance v0, Lcom/android/server/job/controllers/BatteryController;

    #@9
    .line 57
    invoke-virtual {p0}, Lcom/android/server/job/JobSchedulerService;->getContext()Landroid/content/Context;

    #@c
    move-result-object v2

    #@d
    invoke-virtual {p0}, Lcom/android/server/job/JobSchedulerService;->getLock()Ljava/lang/Object;

    #@10
    move-result-object v3

    #@11
    .line 56
    invoke-direct {v0, p0, v2, v3}, Lcom/android/server/job/controllers/BatteryController;-><init>(Lcom/android/server/job/StateChangedListener;Landroid/content/Context;Ljava/lang/Object;)V

    #@14
    sput-object v0, Lcom/android/server/job/controllers/BatteryController;->sController:Lcom/android/server/job/controllers/BatteryController;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@16
    :cond_0
    monitor-exit v1

    #@17
    .line 60
    sget-object v0, Lcom/android/server/job/controllers/BatteryController;->sController:Lcom/android/server/job/controllers/BatteryController;

    #@19
    return-object v0

    #@1a
    .line 54
    :catchall_0
    move-exception v0

    #@1b
    monitor-exit v1

    #@1c
    throw v0
.end method

.method public static getForTesting(Lcom/android/server/job/StateChangedListener;Landroid/content/Context;)Lcom/android/server/job/controllers/BatteryController;
    .locals 2
    .param p0, "stateChangedListener"    # Lcom/android/server/job/StateChangedListener;
    .param p1, "context"    # Landroid/content/Context;

    #@0
    .prologue
    .line 71
    new-instance v0, Lcom/android/server/job/controllers/BatteryController;

    #@2
    new-instance v1, Ljava/lang/Object;

    #@4
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    #@7
    invoke-direct {v0, p0, p1, v1}, Lcom/android/server/job/controllers/BatteryController;-><init>(Lcom/android/server/job/StateChangedListener;Landroid/content/Context;Ljava/lang/Object;)V

    #@a
    return-object v0
.end method

.method private maybeReportNewChargingState()V
    .locals 7

    #@0
    .prologue
    .line 98
    iget-object v5, p0, Lcom/android/server/job/controllers/BatteryController;->mChargeTracker:Lcom/android/server/job/controllers/BatteryController$ChargingTracker;

    #@2
    invoke-virtual {v5}, Lcom/android/server/job/controllers/BatteryController$ChargingTracker;->isOnStablePower()Z

    #@5
    move-result v2

    #@6
    .line 102
    .local v2, "stablePower":Z
    const/4 v1, 0x0

    #@7
    .line 103
    .local v1, "reportChange":Z
    iget-object v6, p0, Lcom/android/server/job/controllers/BatteryController;->mLock:Ljava/lang/Object;

    #@9
    monitor-enter v6

    #@a
    .line 104
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
    .line 105
    .local v3, "ts":Lcom/android/server/job/controllers/JobStatus;
    invoke-virtual {v3, v2}, Lcom/android/server/job/controllers/JobStatus;->setChargingConstraintSatisfied(Z)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1f
    move-result v0

    #@20
    .line 106
    .local v0, "previous":Z
    if-eq v0, v2, :cond_0

    #@22
    .line 107
    const/4 v1, 0x1

    #@23
    goto :goto_0

    #@24
    .end local v0    # "previous":Z
    .end local v3    # "ts":Lcom/android/server/job/controllers/JobStatus;
    :cond_1
    monitor-exit v6

    #@25
    .line 113
    if-eqz v1, :cond_2

    #@27
    .line 114
    iget-object v5, p0, Lcom/android/server/job/controllers/BatteryController;->mStateChangedListener:Lcom/android/server/job/StateChangedListener;

    #@29
    invoke-interface {v5}, Lcom/android/server/job/StateChangedListener;->onControllerStateChanged()V

    #@2c
    .line 117
    :cond_2
    if-eqz v2, :cond_3

    #@2e
    .line 118
    iget-object v5, p0, Lcom/android/server/job/controllers/BatteryController;->mStateChangedListener:Lcom/android/server/job/StateChangedListener;

    #@30
    const/4 v6, 0x0

    #@31
    invoke-interface {v5, v6}, Lcom/android/server/job/StateChangedListener;->onRunJobNow(Lcom/android/server/job/controllers/JobStatus;)V

    #@34
    .line 97
    :cond_3
    return-void

    #@35
    .line 103
    .end local v4    # "ts$iterator":Ljava/util/Iterator;
    :catchall_0
    move-exception v5

    #@36
    monitor-exit v6

    #@37
    throw v5
.end method


# virtual methods
.method public dumpControllerStateLocked(Ljava/io/PrintWriter;I)V
    .locals 3
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "filterUid"    # I

    #@0
    .prologue
    .line 199
    const-string/jumbo v2, "Battery: stable power = "

    #@3
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@6
    .line 200
    iget-object v2, p0, Lcom/android/server/job/controllers/BatteryController;->mChargeTracker:Lcom/android/server/job/controllers/BatteryController$ChargingTracker;

    #@8
    invoke-virtual {v2}, Lcom/android/server/job/controllers/BatteryController$ChargingTracker;->isOnStablePower()Z

    #@b
    move-result v2

    #@c
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Z)V

    #@f
    .line 201
    const-string/jumbo v2, "Tracking "

    #@12
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@15
    .line 202
    iget-object v2, p0, Lcom/android/server/job/controllers/BatteryController;->mTrackedTasks:Ljava/util/List;

    #@17
    invoke-interface {v2}, Ljava/util/List;->size()I

    #@1a
    move-result v2

    #@1b
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(I)V

    #@1e
    .line 203
    const-string/jumbo v2, ":"

    #@21
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@24
    .line 204
    const/4 v0, 0x0

    #@25
    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lcom/android/server/job/controllers/BatteryController;->mTrackedTasks:Ljava/util/List;

    #@27
    invoke-interface {v2}, Ljava/util/List;->size()I

    #@2a
    move-result v2

    #@2b
    if-ge v0, v2, :cond_1

    #@2d
    .line 205
    iget-object v2, p0, Lcom/android/server/job/controllers/BatteryController;->mTrackedTasks:Ljava/util/List;

    #@2f
    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@32
    move-result-object v1

    #@33
    check-cast v1, Lcom/android/server/job/controllers/JobStatus;

    #@35
    .line 206
    .local v1, "js":Lcom/android/server/job/controllers/JobStatus;
    invoke-virtual {v1, p2}, Lcom/android/server/job/controllers/JobStatus;->shouldDump(I)Z

    #@38
    move-result v2

    #@39
    if-nez v2, :cond_0

    #@3b
    .line 204
    :goto_1
    add-int/lit8 v0, v0, 0x1

    #@3d
    goto :goto_0

    #@3e
    .line 209
    :cond_0
    const-string/jumbo v2, "  #"

    #@41
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@44
    .line 210
    invoke-virtual {v1, p1}, Lcom/android/server/job/controllers/JobStatus;->printUniqueId(Ljava/io/PrintWriter;)V

    #@47
    .line 211
    const-string/jumbo v2, " from "

    #@4a
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@4d
    .line 212
    invoke-virtual {v1}, Lcom/android/server/job/controllers/JobStatus;->getSourceUid()I

    #@50
    move-result v2

    #@51
    invoke-static {p1, v2}, Landroid/os/UserHandle;->formatUid(Ljava/io/PrintWriter;I)V

    #@54
    .line 213
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    #@57
    goto :goto_1

    #@58
    .line 198
    .end local v1    # "js":Lcom/android/server/job/controllers/JobStatus;
    :cond_1
    return-void
.end method

.method public getTracker()Lcom/android/server/job/controllers/BatteryController$ChargingTracker;
    .locals 1

    #@0
    .prologue
    .line 65
    iget-object v0, p0, Lcom/android/server/job/controllers/BatteryController;->mChargeTracker:Lcom/android/server/job/controllers/BatteryController$ChargingTracker;

    #@2
    return-object v0
.end method

.method public maybeStartTrackingJobLocked(Lcom/android/server/job/controllers/JobStatus;Lcom/android/server/job/controllers/JobStatus;)V
    .locals 2
    .param p1, "taskStatus"    # Lcom/android/server/job/controllers/JobStatus;
    .param p2, "lastJob"    # Lcom/android/server/job/controllers/JobStatus;

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
    iget-object v1, p0, Lcom/android/server/job/controllers/BatteryController;->mTrackedTasks:Ljava/util/List;

    #@e
    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@11
    .line 86
    invoke-virtual {p1, v0}, Lcom/android/server/job/controllers/JobStatus;->setChargingConstraintSatisfied(Z)Z

    #@14
    .line 82
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
    .line 92
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->hasChargingConstraint()Z

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_0

    #@6
    .line 93
    iget-object v0, p0, Lcom/android/server/job/controllers/BatteryController;->mTrackedTasks:Ljava/util/List;

    #@8
    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    #@b
    .line 91
    :cond_0
    return-void
.end method
