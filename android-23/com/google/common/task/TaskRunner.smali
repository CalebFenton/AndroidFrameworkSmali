.class public Landroid_maps_conflict_avoidance/com/google/common/task/TaskRunner;
.super Ljava/lang/Object;
.source "TaskRunner.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field protected final clock:Landroid_maps_conflict_avoidance/com/google/common/Clock;

.field private defaultPriority:I

.field protected factory:Landroid_maps_conflict_avoidance/com/google/common/lang/ThreadFactory;

.field private maxPriority:I

.field private minPriority:I

.field protected mutex:Ljava/lang/Object;

.field protected name:Ljava/lang/String;

.field protected priorityTaskQueue:Ljava/util/Vector;

.field protected running:Z

.field private final runningTaskMap:Ljava/util/Hashtable;

.field private final taskMap:Ljava/util/Hashtable;

.field protected timerTaskQueue:Ljava/util/Vector;

.field protected workers:[Ljava/lang/Thread;


# direct methods
.method public constructor <init>(Landroid_maps_conflict_avoidance/com/google/common/lang/ThreadFactory;)V
    .locals 2
    .param p1, "factory"    # Landroid_maps_conflict_avoidance/com/google/common/lang/ThreadFactory;

    #@0
    .prologue
    const-string/jumbo v0, "TaskRunner"

    #@3
    const/4 v1, 0x1

    #@4
    .line 60
    invoke-direct {p0, p1, v0, v1}, Landroid_maps_conflict_avoidance/com/google/common/task/TaskRunner;-><init>(Landroid_maps_conflict_avoidance/com/google/common/lang/ThreadFactory;Ljava/lang/String;I)V

    #@7
    .line 61
    return-void
.end method

.method public constructor <init>(Landroid_maps_conflict_avoidance/com/google/common/lang/ThreadFactory;Ljava/lang/String;I)V
    .locals 3
    .param p1, "factory"    # Landroid_maps_conflict_avoidance/com/google/common/lang/ThreadFactory;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "count"    # I

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    const/4 v1, 0x0

    #@2
    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    .line 26
    new-instance v0, Ljava/util/Vector;

    #@7
    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    #@a
    iput-object v0, p0, Landroid_maps_conflict_avoidance/com/google/common/task/TaskRunner;->priorityTaskQueue:Ljava/util/Vector;

    #@c
    .line 27
    new-instance v0, Ljava/util/Vector;

    #@e
    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    #@11
    iput-object v0, p0, Landroid_maps_conflict_avoidance/com/google/common/task/TaskRunner;->timerTaskQueue:Ljava/util/Vector;

    #@13
    .line 28
    new-instance v0, Ljava/lang/Object;

    #@15
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    #@18
    iput-object v0, p0, Landroid_maps_conflict_avoidance/com/google/common/task/TaskRunner;->mutex:Ljava/lang/Object;

    #@1a
    const/16 v0, 0x7f

    #@1c
    .line 35
    iput v0, p0, Landroid_maps_conflict_avoidance/com/google/common/task/TaskRunner;->defaultPriority:I

    #@1e
    const/16 v0, 0xff

    #@20
    .line 36
    iput v0, p0, Landroid_maps_conflict_avoidance/com/google/common/task/TaskRunner;->maxPriority:I

    #@22
    .line 37
    iput v1, p0, Landroid_maps_conflict_avoidance/com/google/common/task/TaskRunner;->minPriority:I

    #@24
    .line 56
    iput-boolean v1, p0, Landroid_maps_conflict_avoidance/com/google/common/task/TaskRunner;->running:Z

    #@26
    .line 70
    iput-object p1, p0, Landroid_maps_conflict_avoidance/com/google/common/task/TaskRunner;->factory:Landroid_maps_conflict_avoidance/com/google/common/lang/ThreadFactory;

    #@28
    .line 71
    iput-object p2, p0, Landroid_maps_conflict_avoidance/com/google/common/task/TaskRunner;->name:Ljava/lang/String;

    #@2a
    .line 72
    new-array v0, p3, [Ljava/lang/Thread;

    #@2c
    iput-object v0, p0, Landroid_maps_conflict_avoidance/com/google/common/task/TaskRunner;->workers:[Ljava/lang/Thread;

    #@2e
    .line 73
    invoke-static {}, Landroid_maps_conflict_avoidance/com/google/common/Config;->getInstance()Landroid_maps_conflict_avoidance/com/google/common/Config;

    #@31
    move-result-object v0

    #@32
    invoke-virtual {v0}, Landroid_maps_conflict_avoidance/com/google/common/Config;->getClock()Landroid_maps_conflict_avoidance/com/google/common/Clock;

    #@35
    move-result-object v0

    #@36
    iput-object v0, p0, Landroid_maps_conflict_avoidance/com/google/common/task/TaskRunner;->clock:Landroid_maps_conflict_avoidance/com/google/common/Clock;

    #@38
    .line 79
    iput-object v2, p0, Landroid_maps_conflict_avoidance/com/google/common/task/TaskRunner;->taskMap:Ljava/util/Hashtable;

    #@3a
    .line 80
    iput-object v2, p0, Landroid_maps_conflict_avoidance/com/google/common/task/TaskRunner;->runningTaskMap:Ljava/util/Hashtable;

    #@3c
    .line 82
    return-void
.end method


# virtual methods
.method public cancelTask(Landroid_maps_conflict_avoidance/com/google/common/task/AbstractTask;)I
    .locals 2
    .param p1, "task"    # Landroid_maps_conflict_avoidance/com/google/common/task/AbstractTask;

    #@0
    .prologue
    .line 235
    iget-object v1, p0, Landroid_maps_conflict_avoidance/com/google/common/task/TaskRunner;->mutex:Ljava/lang/Object;

    #@2
    monitor-enter v1

    #@3
    .line 236
    :try_start_0
    invoke-virtual {p1}, Landroid_maps_conflict_avoidance/com/google/common/task/AbstractTask;->cancelInternal()I

    #@6
    move-result v0

    #@7
    monitor-exit v1

    #@8
    return v0

    #@9
    :catchall_0
    move-exception v0

    #@a
    .line 237
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@b
    throw v0
.end method

.method cancelTaskInternal(Landroid_maps_conflict_avoidance/com/google/common/task/AbstractTask;)Z
    .locals 4
    .param p1, "task"    # Landroid_maps_conflict_avoidance/com/google/common/task/AbstractTask;

    #@0
    .prologue
    const/4 v3, 0x1

    #@1
    const/4 v2, 0x0

    #@2
    .line 246
    iget-object v1, p0, Landroid_maps_conflict_avoidance/com/google/common/task/TaskRunner;->mutex:Ljava/lang/Object;

    #@4
    monitor-enter v1

    #@5
    .line 247
    :try_start_0
    invoke-virtual {p1}, Landroid_maps_conflict_avoidance/com/google/common/task/AbstractTask;->getState()I

    #@8
    move-result v0

    #@9
    packed-switch v0, :pswitch_data_0

    #@c
    .line 268
    monitor-exit v1

    #@d
    return v2

    #@e
    .line 250
    :pswitch_0
    iget-object v0, p0, Landroid_maps_conflict_avoidance/com/google/common/task/TaskRunner;->timerTaskQueue:Ljava/util/Vector;

    #@10
    invoke-virtual {v0, p1}, Ljava/util/Vector;->removeElement(Ljava/lang/Object;)Z

    #@13
    const/4 v0, 0x0

    #@14
    .line 251
    invoke-virtual {p1, v0}, Landroid_maps_conflict_avoidance/com/google/common/task/AbstractTask;->setState(I)V

    #@17
    .line 252
    iget-object v0, p0, Landroid_maps_conflict_avoidance/com/google/common/task/TaskRunner;->mutex:Ljava/lang/Object;

    #@19
    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    #@1c
    .line 253
    monitor-exit v1

    #@1d
    return v3

    #@1e
    .line 257
    :pswitch_1
    iget-object v0, p0, Landroid_maps_conflict_avoidance/com/google/common/task/TaskRunner;->priorityTaskQueue:Ljava/util/Vector;

    #@20
    invoke-virtual {v0, p1}, Ljava/util/Vector;->removeElement(Ljava/lang/Object;)Z

    #@23
    const/4 v0, 0x0

    #@24
    .line 258
    invoke-virtual {p1, v0}, Landroid_maps_conflict_avoidance/com/google/common/task/AbstractTask;->setState(I)V

    #@27
    .line 259
    iget-object v0, p0, Landroid_maps_conflict_avoidance/com/google/common/task/TaskRunner;->mutex:Ljava/lang/Object;

    #@29
    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    #@2c
    .line 260
    monitor-exit v1

    #@2d
    return v3

    #@2e
    :pswitch_2
    const/4 v0, 0x0

    #@2f
    .line 264
    invoke-virtual {p1, v0}, Landroid_maps_conflict_avoidance/com/google/common/task/AbstractTask;->setState(I)V

    #@32
    .line 265
    monitor-exit v1

    #@33
    return v2

    #@34
    .line 268
    :catchall_0
    move-exception v0

    #@35
    .line 270
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@36
    throw v0

    #@37
    .line 247
    nop

    #@38
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method

.method getDefaultPriority()I
    .locals 1

    #@0
    .prologue
    .line 91
    iget v0, p0, Landroid_maps_conflict_avoidance/com/google/common/task/TaskRunner;->defaultPriority:I

    #@2
    return v0
.end method

.method protected getNextTaskToRun()Landroid_maps_conflict_avoidance/com/google/common/task/Task;
    .locals 10

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    const/4 v2, 0x0

    #@2
    .line 319
    .local v2, "task":Landroid_maps_conflict_avoidance/com/google/common/task/Task;
    :goto_0
    iget-object v4, p0, Landroid_maps_conflict_avoidance/com/google/common/task/TaskRunner;->timerTaskQueue:Ljava/util/Vector;

    #@4
    invoke-virtual {v4}, Ljava/util/Vector;->isEmpty()Z

    #@7
    move-result v4

    #@8
    if-eqz v4, :cond_1

    #@a
    .line 339
    :cond_0
    iget-object v4, p0, Landroid_maps_conflict_avoidance/com/google/common/task/TaskRunner;->priorityTaskQueue:Ljava/util/Vector;

    #@c
    invoke-virtual {v4}, Ljava/util/Vector;->isEmpty()Z

    #@f
    move-result v4

    #@10
    if-eqz v4, :cond_3

    #@12
    .line 345
    .end local v2    # "task":Landroid_maps_conflict_avoidance/com/google/common/task/Task;
    :goto_1
    return-object v2

    #@13
    .line 320
    .restart local v2    # "task":Landroid_maps_conflict_avoidance/com/google/common/task/Task;
    :cond_1
    iget-object v4, p0, Landroid_maps_conflict_avoidance/com/google/common/task/TaskRunner;->timerTaskQueue:Ljava/util/Vector;

    #@15
    invoke-virtual {v4, v5}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    #@18
    move-result-object v3

    #@19
    check-cast v3, Landroid_maps_conflict_avoidance/com/google/common/task/TimerTask;

    #@1b
    .line 322
    .local v3, "timerTask":Landroid_maps_conflict_avoidance/com/google/common/task/TimerTask;
    invoke-virtual {v3}, Landroid_maps_conflict_avoidance/com/google/common/task/TimerTask;->getScheduledTime()J

    #@1e
    move-result-wide v6

    #@1f
    iget-object v4, p0, Landroid_maps_conflict_avoidance/com/google/common/task/TaskRunner;->clock:Landroid_maps_conflict_avoidance/com/google/common/Clock;

    #@21
    invoke-interface {v4}, Landroid_maps_conflict_avoidance/com/google/common/Clock;->currentTimeMillis()J

    #@24
    move-result-wide v8

    #@25
    sub-long v0, v6, v8

    #@27
    .local v0, "delta":J
    const-wide/16 v6, 0x0

    #@29
    .line 326
    cmp-long v4, v0, v6

    #@2b
    if-lez v4, :cond_2

    #@2d
    const/4 v4, 0x1

    #@2e
    :goto_2
    if-nez v4, :cond_0

    #@30
    .line 328
    iget-object v4, p0, Landroid_maps_conflict_avoidance/com/google/common/task/TaskRunner;->timerTaskQueue:Ljava/util/Vector;

    #@32
    invoke-virtual {v4, v5}, Ljava/util/Vector;->removeElementAt(I)V

    #@35
    .line 329
    invoke-virtual {p0, v3}, Landroid_maps_conflict_avoidance/com/google/common/task/TaskRunner;->schedulePriorityTaskInternal(Landroid_maps_conflict_avoidance/com/google/common/task/Task;)V

    #@38
    goto :goto_0

    #@39
    :cond_2
    move v4, v5

    #@3a
    .line 326
    goto :goto_2

    #@3b
    .line 340
    .end local v0    # "delta":J
    .end local v3    # "timerTask":Landroid_maps_conflict_avoidance/com/google/common/task/TimerTask;
    :cond_3
    iget-object v4, p0, Landroid_maps_conflict_avoidance/com/google/common/task/TaskRunner;->priorityTaskQueue:Ljava/util/Vector;

    #@3d
    invoke-virtual {v4, v5}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    #@40
    move-result-object v2

    #@41
    .end local v2    # "task":Landroid_maps_conflict_avoidance/com/google/common/task/Task;
    check-cast v2, Landroid_maps_conflict_avoidance/com/google/common/task/Task;

    #@43
    .local v2, "task":Landroid_maps_conflict_avoidance/com/google/common/task/Task;
    const/4 v4, 0x3

    #@44
    .line 341
    invoke-virtual {v2, v4}, Landroid_maps_conflict_avoidance/com/google/common/task/Task;->setState(I)V

    #@47
    .line 342
    iget-object v4, p0, Landroid_maps_conflict_avoidance/com/google/common/task/TaskRunner;->priorityTaskQueue:Ljava/util/Vector;

    #@49
    invoke-virtual {v4, v5}, Ljava/util/Vector;->removeElementAt(I)V

    #@4c
    goto :goto_1
.end method

.method public run()V
    .locals 5

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 359
    :cond_0
    :goto_0
    iget-object v3, p0, Landroid_maps_conflict_avoidance/com/google/common/task/TaskRunner;->mutex:Ljava/lang/Object;

    #@3
    monitor-enter v3

    #@4
    .line 362
    if-nez v0, :cond_1

    #@6
    .line 373
    :goto_1
    :try_start_0
    invoke-virtual {p0}, Landroid_maps_conflict_avoidance/com/google/common/task/TaskRunner;->waitForSomethingToDo()Z

    #@9
    move-result v2

    #@a
    if-eqz v2, :cond_4

    #@c
    .line 378
    invoke-virtual {p0}, Landroid_maps_conflict_avoidance/com/google/common/task/TaskRunner;->getNextTaskToRun()Landroid_maps_conflict_avoidance/com/google/common/task/Task;

    #@f
    move-result-object v0

    #@10
    .line 381
    .local v0, "task":Landroid_maps_conflict_avoidance/com/google/common/task/Task;
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@11
    .line 385
    if-eqz v0, :cond_0

    #@13
    .line 386
    invoke-virtual {v0}, Landroid_maps_conflict_avoidance/com/google/common/task/Task;->updateStartTimestamp()V

    #@16
    .line 388
    :try_start_1
    invoke-virtual {v0}, Landroid_maps_conflict_avoidance/com/google/common/task/Task;->runInternal()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    #@19
    .line 394
    :goto_2
    invoke-virtual {v0}, Landroid_maps_conflict_avoidance/com/google/common/task/Task;->updateFinishTimestamp()V

    #@1c
    goto :goto_0

    #@1d
    .line 364
    .end local v0    # "task":Landroid_maps_conflict_avoidance/com/google/common/task/Task;
    :cond_1
    :try_start_2
    invoke-virtual {v0}, Landroid_maps_conflict_avoidance/com/google/common/task/Task;->getState()I

    #@20
    move-result v2

    #@21
    const/4 v4, 0x4

    #@22
    if-eq v2, v4, :cond_2

    #@24
    .line 367
    invoke-virtual {v0}, Landroid_maps_conflict_avoidance/com/google/common/task/Task;->getState()I

    #@27
    move-result v2

    #@28
    const/4 v4, 0x3

    #@29
    if-eq v2, v4, :cond_3

    #@2b
    :goto_3
    const/4 v0, 0x0

    #@2c
    .line 370
    .local v0, "task":Landroid_maps_conflict_avoidance/com/google/common/task/Task;
    goto :goto_1

    #@2d
    .end local v0    # "task":Landroid_maps_conflict_avoidance/com/google/common/task/Task;
    :cond_2
    const/4 v2, 0x0

    #@2e
    .line 365
    invoke-virtual {v0, v2}, Landroid_maps_conflict_avoidance/com/google/common/task/Task;->setState(I)V

    #@31
    .line 366
    invoke-virtual {v0}, Landroid_maps_conflict_avoidance/com/google/common/task/Task;->scheduleInternal()V

    #@34
    goto :goto_3

    #@35
    .line 381
    :catchall_0
    move-exception v2

    #@36
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@37
    throw v2

    #@38
    :cond_3
    const/4 v2, 0x0

    #@39
    .line 368
    :try_start_3
    invoke-virtual {v0, v2}, Landroid_maps_conflict_avoidance/com/google/common/task/Task;->setState(I)V

    #@3c
    goto :goto_3

    #@3d
    .line 375
    :cond_4
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@3e
    .line 397
    return-void

    #@3f
    .line 392
    .local v0, "task":Landroid_maps_conflict_avoidance/com/google/common/task/Task;
    :catch_0
    move-exception v1

    #@40
    .line 390
    .local v1, "throwable":Ljava/lang/Throwable;
    new-instance v2, Ljava/lang/StringBuilder;

    #@42
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@45
    const-string/jumbo v3, "runtime exception thrown by task ["

    #@48
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4b
    move-result-object v2

    #@4c
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@4f
    move-result-object v2

    #@50
    const-string/jumbo v3, "]"

    #@53
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@56
    move-result-object v2

    #@57
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@5a
    move-result-object v2

    #@5b
    invoke-static {v2, v1}, Landroid_maps_conflict_avoidance/com/google/debug/Log;->logThrowable(Ljava/lang/Object;Ljava/lang/Throwable;)V

    #@5e
    .line 391
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    #@61
    goto :goto_2
.end method

.method schedulePriorityTaskInternal(Landroid_maps_conflict_avoidance/com/google/common/task/Task;)V
    .locals 6
    .param p1, "task"    # Landroid_maps_conflict_avoidance/com/google/common/task/Task;

    #@0
    .prologue
    .line 172
    iget-object v5, p0, Landroid_maps_conflict_avoidance/com/google/common/task/TaskRunner;->mutex:Ljava/lang/Object;

    #@2
    monitor-enter v5

    #@3
    .line 174
    :try_start_0
    invoke-virtual {p1}, Landroid_maps_conflict_avoidance/com/google/common/task/Task;->getPriority()I

    #@6
    move-result v2

    #@7
    .local v2, "priority":I
    const/4 v0, 0x0

    #@8
    .line 176
    .local v0, "lower":I
    iget-object v4, p0, Landroid_maps_conflict_avoidance/com/google/common/task/TaskRunner;->priorityTaskQueue:Ljava/util/Vector;

    #@a
    invoke-virtual {v4}, Ljava/util/Vector;->size()I

    #@d
    move-result v3

    #@e
    .line 177
    .local v3, "upper":I
    :goto_0
    if-lt v0, v3, :cond_0

    #@10
    .line 186
    iget-object v4, p0, Landroid_maps_conflict_avoidance/com/google/common/task/TaskRunner;->priorityTaskQueue:Ljava/util/Vector;

    #@12
    invoke-virtual {v4, p1, v0}, Ljava/util/Vector;->insertElementAt(Ljava/lang/Object;I)V

    #@15
    .line 187
    invoke-virtual {p1}, Landroid_maps_conflict_avoidance/com/google/common/task/Task;->updateRunnableTimestamp()V

    #@18
    const/4 v4, 0x2

    #@19
    .line 188
    invoke-virtual {p1, v4}, Landroid_maps_conflict_avoidance/com/google/common/task/Task;->setState(I)V

    #@1c
    .line 189
    iget-object v4, p0, Landroid_maps_conflict_avoidance/com/google/common/task/TaskRunner;->mutex:Ljava/lang/Object;

    #@1e
    invoke-virtual {v4}, Ljava/lang/Object;->notifyAll()V

    #@21
    .line 190
    monitor-exit v5

    #@22
    .line 191
    return-void

    #@23
    .line 178
    :cond_0
    add-int v4, v0, v3

    #@25
    div-int/lit8 v1, v4, 0x2

    #@27
    .line 179
    .local v1, "midway":I
    iget-object v4, p0, Landroid_maps_conflict_avoidance/com/google/common/task/TaskRunner;->priorityTaskQueue:Ljava/util/Vector;

    #@29
    invoke-virtual {v4, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    #@2c
    move-result-object v4

    #@2d
    check-cast v4, Landroid_maps_conflict_avoidance/com/google/common/task/Task;

    #@2f
    invoke-virtual {v4}, Landroid_maps_conflict_avoidance/com/google/common/task/Task;->getPriority()I

    #@32
    move-result v4

    #@33
    if-le v2, v4, :cond_1

    #@35
    .line 182
    move v3, v1

    #@36
    goto :goto_0

    #@37
    .line 180
    :cond_1
    add-int/lit8 v0, v1, 0x1

    #@39
    goto :goto_0

    #@3a
    .line 190
    .end local v0    # "lower":I
    .end local v1    # "midway":I
    .end local v2    # "priority":I
    .end local v3    # "upper":I
    :catchall_0
    move-exception v4

    #@3b
    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@3c
    throw v4
.end method

.method scheduleTask(Landroid_maps_conflict_avoidance/com/google/common/task/AbstractTask;)V
    .locals 2
    .param p1, "task"    # Landroid_maps_conflict_avoidance/com/google/common/task/AbstractTask;

    #@0
    .prologue
    .line 145
    invoke-virtual {p1}, Landroid_maps_conflict_avoidance/com/google/common/task/AbstractTask;->updateScheduleTimestamp()V

    #@3
    .line 148
    iget-object v1, p0, Landroid_maps_conflict_avoidance/com/google/common/task/TaskRunner;->mutex:Ljava/lang/Object;

    #@5
    monitor-enter v1

    #@6
    .line 149
    :try_start_0
    invoke-virtual {p1}, Landroid_maps_conflict_avoidance/com/google/common/task/AbstractTask;->getState()I

    #@9
    move-result v0

    #@a
    packed-switch v0, :pswitch_data_0

    #@d
    .line 161
    :goto_0
    :pswitch_0
    monitor-exit v1

    #@e
    .line 162
    return-void

    #@f
    .line 151
    :pswitch_1
    invoke-virtual {p1}, Landroid_maps_conflict_avoidance/com/google/common/task/AbstractTask;->scheduleInternal()V

    #@12
    goto :goto_0

    #@13
    .line 161
    :catchall_0
    move-exception v0

    #@14
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@15
    throw v0

    #@16
    :pswitch_2
    const/4 v0, 0x4

    #@17
    .line 155
    :try_start_1
    invoke-virtual {p1, v0}, Landroid_maps_conflict_avoidance/com/google/common/task/AbstractTask;->setState(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@1a
    goto :goto_0

    #@1b
    .line 149
    nop

    #@1c
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method

.method scheduleTimerTaskInternal(Landroid_maps_conflict_avoidance/com/google/common/task/TimerTask;)V
    .locals 10
    .param p1, "task"    # Landroid_maps_conflict_avoidance/com/google/common/task/TimerTask;

    #@0
    .prologue
    const/4 v6, 0x1

    #@1
    .line 201
    iget-object v7, p0, Landroid_maps_conflict_avoidance/com/google/common/task/TaskRunner;->mutex:Ljava/lang/Object;

    #@3
    monitor-enter v7

    #@4
    .line 204
    :try_start_0
    invoke-virtual {p1}, Landroid_maps_conflict_avoidance/com/google/common/task/TimerTask;->getScheduledTime()J

    #@7
    move-result-wide v2

    #@8
    .local v2, "scheduled":J
    const/4 v0, 0x0

    #@9
    .line 206
    .local v0, "lower":I
    iget-object v5, p0, Landroid_maps_conflict_avoidance/com/google/common/task/TaskRunner;->timerTaskQueue:Ljava/util/Vector;

    #@b
    invoke-virtual {v5}, Ljava/util/Vector;->size()I

    #@e
    move-result v4

    #@f
    .line 207
    .local v4, "upper":I
    :goto_0
    if-lt v0, v4, :cond_0

    #@11
    .line 216
    iget-object v5, p0, Landroid_maps_conflict_avoidance/com/google/common/task/TaskRunner;->timerTaskQueue:Ljava/util/Vector;

    #@13
    invoke-virtual {v5, p1, v0}, Ljava/util/Vector;->insertElementAt(Ljava/lang/Object;I)V

    #@16
    const/4 v5, 0x1

    #@17
    .line 217
    invoke-virtual {p1, v5}, Landroid_maps_conflict_avoidance/com/google/common/task/TimerTask;->setState(I)V

    #@1a
    .line 218
    iget-object v5, p0, Landroid_maps_conflict_avoidance/com/google/common/task/TaskRunner;->mutex:Ljava/lang/Object;

    #@1c
    invoke-virtual {v5}, Ljava/lang/Object;->notifyAll()V

    #@1f
    .line 219
    monitor-exit v7

    #@20
    .line 220
    return-void

    #@21
    .line 208
    :cond_0
    add-int v5, v0, v4

    #@23
    div-int/lit8 v1, v5, 0x2

    #@25
    .line 209
    .local v1, "midway":I
    iget-object v5, p0, Landroid_maps_conflict_avoidance/com/google/common/task/TaskRunner;->timerTaskQueue:Ljava/util/Vector;

    #@27
    invoke-virtual {v5, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    #@2a
    move-result-object v5

    #@2b
    check-cast v5, Landroid_maps_conflict_avoidance/com/google/common/task/TimerTask;

    #@2d
    invoke-virtual {v5}, Landroid_maps_conflict_avoidance/com/google/common/task/TimerTask;->getScheduledTime()J

    #@30
    move-result-wide v8

    #@31
    cmp-long v5, v2, v8

    #@33
    if-gez v5, :cond_1

    #@35
    move v5, v6

    #@36
    :goto_1
    if-nez v5, :cond_2

    #@38
    .line 210
    add-int/lit8 v0, v1, 0x1

    #@3a
    goto :goto_0

    #@3b
    .line 209
    :cond_1
    const/4 v5, 0x0

    #@3c
    goto :goto_1

    #@3d
    .line 212
    :cond_2
    move v4, v1

    #@3e
    goto :goto_0

    #@3f
    .line 219
    .end local v0    # "lower":I
    .end local v1    # "midway":I
    .end local v2    # "scheduled":J
    .end local v4    # "upper":I
    :catchall_0
    move-exception v5

    #@40
    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@41
    throw v5
.end method

.method protected waitForSomethingToDo()Z
    .locals 8

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 280
    iget-object v4, p0, Landroid_maps_conflict_avoidance/com/google/common/task/TaskRunner;->priorityTaskQueue:Ljava/util/Vector;

    #@3
    invoke-virtual {v4}, Ljava/util/Vector;->isEmpty()Z

    #@6
    move-result v4

    #@7
    if-nez v4, :cond_1

    #@9
    .line 301
    :cond_0
    :goto_0
    iget-boolean v3, p0, Landroid_maps_conflict_avoidance/com/google/common/task/TaskRunner;->running:Z

    #@b
    return v3

    #@c
    .line 284
    :cond_1
    :try_start_0
    iget-object v4, p0, Landroid_maps_conflict_avoidance/com/google/common/task/TaskRunner;->timerTaskQueue:Ljava/util/Vector;

    #@e
    invoke-virtual {v4}, Ljava/util/Vector;->isEmpty()Z

    #@11
    move-result v4

    #@12
    if-nez v4, :cond_3

    #@14
    .line 288
    iget-object v4, p0, Landroid_maps_conflict_avoidance/com/google/common/task/TaskRunner;->timerTaskQueue:Ljava/util/Vector;

    #@16
    const/4 v5, 0x0

    #@17
    invoke-virtual {v4, v5}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    #@1a
    move-result-object v2

    #@1b
    check-cast v2, Landroid_maps_conflict_avoidance/com/google/common/task/TimerTask;

    #@1d
    .line 291
    .local v2, "timerTask":Landroid_maps_conflict_avoidance/com/google/common/task/TimerTask;
    invoke-virtual {v2}, Landroid_maps_conflict_avoidance/com/google/common/task/TimerTask;->getScheduledTime()J

    #@20
    move-result-wide v4

    #@21
    iget-object v6, p0, Landroid_maps_conflict_avoidance/com/google/common/task/TaskRunner;->clock:Landroid_maps_conflict_avoidance/com/google/common/Clock;

    #@23
    invoke-interface {v6}, Landroid_maps_conflict_avoidance/com/google/common/Clock;->currentTimeMillis()J

    #@26
    move-result-wide v6

    #@27
    sub-long v0, v4, v6

    #@29
    .local v0, "delta":J
    const-wide/16 v4, 0x0

    #@2b
    .line 293
    cmp-long v4, v0, v4

    #@2d
    if-gtz v4, :cond_2

    #@2f
    const/4 v3, 0x1

    #@30
    :cond_2
    if-nez v3, :cond_0

    #@32
    .line 294
    iget-object v3, p0, Landroid_maps_conflict_avoidance/com/google/common/task/TaskRunner;->mutex:Ljava/lang/Object;

    #@34
    invoke-virtual {v3, v0, v1}, Ljava/lang/Object;->wait(J)V

    #@37
    goto :goto_0

    #@38
    .line 299
    .end local v0    # "delta":J
    .end local v2    # "timerTask":Landroid_maps_conflict_avoidance/com/google/common/task/TimerTask;
    :catch_0
    move-exception v3

    #@39
    goto :goto_0

    #@3a
    .line 286
    :cond_3
    iget-object v3, p0, Landroid_maps_conflict_avoidance/com/google/common/task/TaskRunner;->mutex:Ljava/lang/Object;

    #@3c
    invoke-virtual {v3}, Ljava/lang/Object;->wait()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    #@3f
    goto :goto_0
.end method
