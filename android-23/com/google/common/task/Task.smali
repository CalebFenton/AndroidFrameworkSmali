.class public Landroid_maps_conflict_avoidance/com/google/common/task/Task;
.super Landroid_maps_conflict_avoidance/com/google/common/task/AbstractTask;
.source "Task.java"


# instance fields
.field private priority:I


# direct methods
.method public constructor <init>(Landroid_maps_conflict_avoidance/com/google/common/task/TaskRunner;Ljava/lang/Runnable;Ljava/lang/String;)V
    .locals 1
    .param p1, "runner"    # Landroid_maps_conflict_avoidance/com/google/common/task/TaskRunner;
    .param p2, "runnable"    # Ljava/lang/Runnable;
    .param p3, "name"    # Ljava/lang/String;

    #@0
    .prologue
    .line 58
    invoke-virtual {p1}, Landroid_maps_conflict_avoidance/com/google/common/task/TaskRunner;->getDefaultPriority()I

    #@3
    move-result v0

    #@4
    invoke-direct {p0, p1, p2, p3, v0}, Landroid_maps_conflict_avoidance/com/google/common/task/Task;-><init>(Landroid_maps_conflict_avoidance/com/google/common/task/TaskRunner;Ljava/lang/Runnable;Ljava/lang/String;I)V

    #@7
    .line 59
    return-void
.end method

.method public constructor <init>(Landroid_maps_conflict_avoidance/com/google/common/task/TaskRunner;Ljava/lang/Runnable;Ljava/lang/String;I)V
    .locals 0
    .param p1, "runner"    # Landroid_maps_conflict_avoidance/com/google/common/task/TaskRunner;
    .param p2, "runnable"    # Ljava/lang/Runnable;
    .param p3, "name"    # Ljava/lang/String;
    .param p4, "priority"    # I

    #@0
    .prologue
    .line 70
    invoke-direct {p0, p1, p2, p3}, Landroid_maps_conflict_avoidance/com/google/common/task/AbstractTask;-><init>(Landroid_maps_conflict_avoidance/com/google/common/task/TaskRunner;Ljava/lang/Runnable;Ljava/lang/String;)V

    #@3
    .line 71
    invoke-direct {p0, p4}, Landroid_maps_conflict_avoidance/com/google/common/task/Task;->setPriorityInternal(I)V

    #@6
    .line 72
    return-void
.end method

.method private setPriorityInternal(I)V
    .locals 0
    .param p1, "priority"    # I

    #@0
    .prologue
    .line 132
    iput p1, p0, Landroid_maps_conflict_avoidance/com/google/common/task/Task;->priority:I

    #@2
    .line 133
    return-void
.end method


# virtual methods
.method cancelInternal()I
    .locals 2

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 82
    iget-object v1, p0, Landroid_maps_conflict_avoidance/com/google/common/task/Task;->runner:Landroid_maps_conflict_avoidance/com/google/common/task/TaskRunner;

    #@3
    invoke-virtual {v1, p0}, Landroid_maps_conflict_avoidance/com/google/common/task/TaskRunner;->cancelTaskInternal(Landroid_maps_conflict_avoidance/com/google/common/task/AbstractTask;)Z

    #@6
    move-result v1

    #@7
    if-nez v1, :cond_0

    #@9
    :goto_0
    return v0

    #@a
    :cond_0
    const/4 v0, 0x1

    #@b
    goto :goto_0
.end method

.method public declared-synchronized getPriority()I
    .locals 1

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 110
    :try_start_0
    iget v0, p0, Landroid_maps_conflict_avoidance/com/google/common/task/Task;->priority:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@3
    monitor-exit p0

    #@4
    return v0

    #@5
    :catchall_0
    move-exception v0

    #@6
    monitor-exit p0

    #@7
    throw v0
.end method

.method scheduleInternal()V
    .locals 1

    #@0
    .prologue
    .line 139
    iget-object v0, p0, Landroid_maps_conflict_avoidance/com/google/common/task/Task;->runner:Landroid_maps_conflict_avoidance/com/google/common/task/TaskRunner;

    #@2
    invoke-virtual {v0, p0}, Landroid_maps_conflict_avoidance/com/google/common/task/TaskRunner;->schedulePriorityTaskInternal(Landroid_maps_conflict_avoidance/com/google/common/task/Task;)V

    #@5
    .line 140
    return-void
.end method
