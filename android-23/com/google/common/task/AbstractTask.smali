.class public abstract Landroid_maps_conflict_avoidance/com/google/common/task/AbstractTask;
.super Ljava/lang/Object;
.source "AbstractTask.java"


# static fields
.field private static final EMPTY_TASK_ARRAY:[Landroid_maps_conflict_avoidance/com/google/common/task/AbstractTask;


# instance fields
.field private final name:Ljava/lang/String;

.field private runCounter:I

.field private runCounterLock:Ljava/lang/Object;

.field protected runnable:Ljava/lang/Runnable;

.field protected runner:Landroid_maps_conflict_avoidance/com/google/common/task/TaskRunner;

.field private state:I

.field protected tasks:Ljava/util/Vector;

.field private final varzInsideQueue:Ljava/lang/String;

.field private final varzOutsideQueue:Ljava/lang/String;

.field private final varzTime:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 21
    new-array v0, v0, [Landroid_maps_conflict_avoidance/com/google/common/task/AbstractTask;

    #@3
    sput-object v0, Landroid_maps_conflict_avoidance/com/google/common/task/AbstractTask;->EMPTY_TASK_ARRAY:[Landroid_maps_conflict_avoidance/com/google/common/task/AbstractTask;

    #@5
    return-void
.end method

.method public constructor <init>(Landroid_maps_conflict_avoidance/com/google/common/task/TaskRunner;Ljava/lang/Runnable;Ljava/lang/String;)V
    .locals 2
    .param p1, "runner"    # Landroid_maps_conflict_avoidance/com/google/common/task/TaskRunner;
    .param p2, "runnable"    # Ljava/lang/Runnable;
    .param p3, "name"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 136
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@4
    .line 79
    new-instance v0, Ljava/lang/Object;

    #@6
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    #@9
    iput-object v0, p0, Landroid_maps_conflict_avoidance/com/google/common/task/AbstractTask;->runCounterLock:Ljava/lang/Object;

    #@b
    .line 139
    iput-object p1, p0, Landroid_maps_conflict_avoidance/com/google/common/task/AbstractTask;->runner:Landroid_maps_conflict_avoidance/com/google/common/task/TaskRunner;

    #@d
    .line 140
    iput-object p2, p0, Landroid_maps_conflict_avoidance/com/google/common/task/AbstractTask;->runnable:Ljava/lang/Runnable;

    #@f
    .line 141
    iput-object p3, p0, Landroid_maps_conflict_avoidance/com/google/common/task/AbstractTask;->name:Ljava/lang/String;

    #@11
    .line 152
    iput-object v1, p0, Landroid_maps_conflict_avoidance/com/google/common/task/AbstractTask;->varzOutsideQueue:Ljava/lang/String;

    #@13
    .line 153
    iput-object v1, p0, Landroid_maps_conflict_avoidance/com/google/common/task/AbstractTask;->varzInsideQueue:Ljava/lang/String;

    #@15
    .line 154
    iput-object v1, p0, Landroid_maps_conflict_avoidance/com/google/common/task/AbstractTask;->varzTime:Ljava/lang/String;

    #@17
    .line 156
    return-void
.end method


# virtual methods
.method abstract cancelInternal()I
.end method

.method protected getState()I
    .locals 1

    #@0
    .prologue
    .line 255
    iget v0, p0, Landroid_maps_conflict_avoidance/com/google/common/task/AbstractTask;->state:I

    #@2
    return v0
.end method

.method protected getTasks()[Landroid_maps_conflict_avoidance/com/google/common/task/AbstractTask;
    .locals 2

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 235
    .local v0, "taskArray":[Landroid_maps_conflict_avoidance/com/google/common/task/AbstractTask;
    monitor-enter p0

    #@2
    .line 236
    :try_start_0
    iget-object v1, p0, Landroid_maps_conflict_avoidance/com/google/common/task/AbstractTask;->tasks:Ljava/util/Vector;

    #@4
    if-nez v1, :cond_0

    #@6
    .line 240
    sget-object v0, Landroid_maps_conflict_avoidance/com/google/common/task/AbstractTask;->EMPTY_TASK_ARRAY:[Landroid_maps_conflict_avoidance/com/google/common/task/AbstractTask;

    #@8
    .line 242
    .local v0, "taskArray":[Landroid_maps_conflict_avoidance/com/google/common/task/AbstractTask;
    :goto_0
    monitor-exit p0

    #@9
    .line 243
    return-object v0

    #@a
    .line 237
    .local v0, "taskArray":[Landroid_maps_conflict_avoidance/com/google/common/task/AbstractTask;
    :cond_0
    iget-object v1, p0, Landroid_maps_conflict_avoidance/com/google/common/task/AbstractTask;->tasks:Ljava/util/Vector;

    #@c
    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    #@f
    move-result v1

    #@10
    new-array v0, v1, [Landroid_maps_conflict_avoidance/com/google/common/task/AbstractTask;

    #@12
    .line 238
    .local v0, "taskArray":[Landroid_maps_conflict_avoidance/com/google/common/task/AbstractTask;
    iget-object v1, p0, Landroid_maps_conflict_avoidance/com/google/common/task/AbstractTask;->tasks:Ljava/util/Vector;

    #@14
    invoke-virtual {v1, v0}, Ljava/util/Vector;->copyInto([Ljava/lang/Object;)V

    #@17
    goto :goto_0

    #@18
    .line 242
    .end local v0    # "taskArray":[Landroid_maps_conflict_avoidance/com/google/common/task/AbstractTask;
    :catchall_0
    move-exception v1

    #@19
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1a
    throw v1
.end method

.method protected run()V
    .locals 1

    #@0
    .prologue
    .line 283
    iget-object v0, p0, Landroid_maps_conflict_avoidance/com/google/common/task/AbstractTask;->runnable:Ljava/lang/Runnable;

    #@2
    if-nez v0, :cond_0

    #@4
    .line 286
    :goto_0
    return-void

    #@5
    .line 284
    :cond_0
    iget-object v0, p0, Landroid_maps_conflict_avoidance/com/google/common/task/AbstractTask;->runnable:Ljava/lang/Runnable;

    #@7
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    #@a
    goto :goto_0
.end method

.method runInternal()V
    .locals 5

    #@0
    .prologue
    .line 316
    :try_start_0
    invoke-virtual {p0}, Landroid_maps_conflict_avoidance/com/google/common/task/AbstractTask;->run()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    #@3
    .line 322
    :goto_0
    iget-object v4, p0, Landroid_maps_conflict_avoidance/com/google/common/task/AbstractTask;->runCounterLock:Ljava/lang/Object;

    #@5
    monitor-enter v4

    #@6
    .line 323
    :try_start_1
    iget v3, p0, Landroid_maps_conflict_avoidance/com/google/common/task/AbstractTask;->runCounter:I

    #@8
    add-int/lit8 v3, v3, 0x1

    #@a
    iput v3, p0, Landroid_maps_conflict_avoidance/com/google/common/task/AbstractTask;->runCounter:I

    #@c
    .line 324
    iget-object v3, p0, Landroid_maps_conflict_avoidance/com/google/common/task/AbstractTask;->runCounterLock:Ljava/lang/Object;

    #@e
    invoke-virtual {v3}, Ljava/lang/Object;->notifyAll()V

    #@11
    .line 325
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@12
    .line 327
    invoke-virtual {p0}, Landroid_maps_conflict_avoidance/com/google/common/task/AbstractTask;->getTasks()[Landroid_maps_conflict_avoidance/com/google/common/task/AbstractTask;

    #@15
    move-result-object v1

    #@16
    .local v1, "taskArray":[Landroid_maps_conflict_avoidance/com/google/common/task/AbstractTask;
    const/4 v0, 0x0

    #@17
    .line 329
    .local v0, "i":I
    :goto_1
    array-length v3, v1

    #@18
    if-lt v0, v3, :cond_0

    #@1a
    .line 332
    return-void

    #@1b
    .line 320
    .end local v0    # "i":I
    .end local v1    # "taskArray":[Landroid_maps_conflict_avoidance/com/google/common/task/AbstractTask;
    :catch_0
    move-exception v2

    #@1c
    .line 319
    .local v2, "throwable":Ljava/lang/Throwable;
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    #@1f
    goto :goto_0

    #@20
    .line 325
    .end local v2    # "throwable":Ljava/lang/Throwable;
    :catchall_0
    move-exception v3

    #@21
    :try_start_2
    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@22
    throw v3

    #@23
    .line 330
    .restart local v0    # "i":I
    .restart local v1    # "taskArray":[Landroid_maps_conflict_avoidance/com/google/common/task/AbstractTask;
    :cond_0
    aget-object v3, v1, v0

    #@25
    invoke-virtual {v3}, Landroid_maps_conflict_avoidance/com/google/common/task/AbstractTask;->schedule()V

    #@28
    .line 329
    add-int/lit8 v0, v0, 0x1

    #@2a
    goto :goto_1
.end method

.method public schedule()V
    .locals 2

    #@0
    .prologue
    .line 267
    iget-object v1, p0, Landroid_maps_conflict_avoidance/com/google/common/task/AbstractTask;->runCounterLock:Ljava/lang/Object;

    #@2
    monitor-enter v1

    #@3
    const/4 v0, 0x0

    #@4
    .line 268
    :try_start_0
    iput v0, p0, Landroid_maps_conflict_avoidance/com/google/common/task/AbstractTask;->runCounter:I

    #@6
    .line 269
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@7
    .line 270
    iget-object v0, p0, Landroid_maps_conflict_avoidance/com/google/common/task/AbstractTask;->runner:Landroid_maps_conflict_avoidance/com/google/common/task/TaskRunner;

    #@9
    invoke-virtual {v0, p0}, Landroid_maps_conflict_avoidance/com/google/common/task/TaskRunner;->scheduleTask(Landroid_maps_conflict_avoidance/com/google/common/task/AbstractTask;)V

    #@c
    .line 271
    return-void

    #@d
    .line 269
    :catchall_0
    move-exception v0

    #@e
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@f
    throw v0
.end method

.method abstract scheduleInternal()V
.end method

.method protected setState(I)V
    .locals 0
    .param p1, "state"    # I

    #@0
    .prologue
    .line 260
    iput p1, p0, Landroid_maps_conflict_avoidance/com/google/common/task/AbstractTask;->state:I

    #@2
    .line 261
    return-void
.end method

.method updateFinishTimestamp()V
    .locals 1

    #@0
    .prologue
    .line 372
    iget-object v0, p0, Landroid_maps_conflict_avoidance/com/google/common/task/AbstractTask;->name:Ljava/lang/String;

    #@2
    if-nez v0, :cond_0

    #@4
    .line 377
    :cond_0
    return-void
.end method

.method updateRunnableTimestamp()V
    .locals 1

    #@0
    .prologue
    .line 353
    iget-object v0, p0, Landroid_maps_conflict_avoidance/com/google/common/task/AbstractTask;->name:Ljava/lang/String;

    #@2
    if-nez v0, :cond_0

    #@4
    .line 358
    :cond_0
    return-void
.end method

.method updateScheduleTimestamp()V
    .locals 1

    #@0
    .prologue
    .line 346
    iget-object v0, p0, Landroid_maps_conflict_avoidance/com/google/common/task/AbstractTask;->name:Ljava/lang/String;

    #@2
    if-nez v0, :cond_0

    #@4
    .line 349
    :cond_0
    return-void
.end method

.method updateStartTimestamp()V
    .locals 1

    #@0
    .prologue
    .line 363
    iget-object v0, p0, Landroid_maps_conflict_avoidance/com/google/common/task/AbstractTask;->name:Ljava/lang/String;

    #@2
    if-nez v0, :cond_0

    #@4
    .line 368
    :cond_0
    return-void
.end method
