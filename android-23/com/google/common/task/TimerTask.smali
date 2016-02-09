.class public Landroid_maps_conflict_avoidance/com/google/common/task/TimerTask;
.super Landroid_maps_conflict_avoidance/com/google/common/task/Task;
.source "TimerTask.java"


# instance fields
.field private count:I

.field private deadline:J

.field private delay:J

.field private isFixedRate:Z

.field private period:J

.field private scheduled:J


# direct methods
.method public constructor <init>(Landroid_maps_conflict_avoidance/com/google/common/task/TaskRunner;Ljava/lang/Runnable;)V
    .locals 1
    .param p1, "runner"    # Landroid_maps_conflict_avoidance/com/google/common/task/TaskRunner;
    .param p2, "runnable"    # Ljava/lang/Runnable;

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 56
    invoke-direct {p0, p1, p2, v0}, Landroid_maps_conflict_avoidance/com/google/common/task/TimerTask;-><init>(Landroid_maps_conflict_avoidance/com/google/common/task/TaskRunner;Ljava/lang/Runnable;Ljava/lang/String;)V

    #@4
    .line 57
    return-void
.end method

.method public constructor <init>(Landroid_maps_conflict_avoidance/com/google/common/task/TaskRunner;Ljava/lang/Runnable;Ljava/lang/String;)V
    .locals 4
    .param p1, "runner"    # Landroid_maps_conflict_avoidance/com/google/common/task/TaskRunner;
    .param p2, "runnable"    # Ljava/lang/Runnable;
    .param p3, "name"    # Ljava/lang/String;

    #@0
    .prologue
    const-wide/16 v2, -0x1

    #@2
    .line 67
    invoke-direct {p0, p1, p2, p3}, Landroid_maps_conflict_avoidance/com/google/common/task/Task;-><init>(Landroid_maps_conflict_avoidance/com/google/common/task/TaskRunner;Ljava/lang/Runnable;Ljava/lang/String;)V

    #@5
    const-wide/16 v0, 0x0

    #@7
    .line 27
    iput-wide v0, p0, Landroid_maps_conflict_avoidance/com/google/common/task/TimerTask;->delay:J

    #@9
    .line 29
    iput-wide v2, p0, Landroid_maps_conflict_avoidance/com/google/common/task/TimerTask;->deadline:J

    #@b
    .line 31
    iput-wide v2, p0, Landroid_maps_conflict_avoidance/com/google/common/task/TimerTask;->period:J

    #@d
    .line 34
    iput-wide v2, p0, Landroid_maps_conflict_avoidance/com/google/common/task/TimerTask;->scheduled:J

    #@f
    const/4 v0, -0x1

    #@10
    .line 36
    iput v0, p0, Landroid_maps_conflict_avoidance/com/google/common/task/TimerTask;->count:I

    #@12
    .line 38
    const/4 v0, 0x0

    #@13
    iput-boolean v0, p0, Landroid_maps_conflict_avoidance/com/google/common/task/TimerTask;->isFixedRate:Z

    #@15
    .line 68
    return-void
.end method


# virtual methods
.method declared-synchronized cancelInternal()I
    .locals 5

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    const-wide/16 v2, -0x1

    #@3
    monitor-enter p0

    #@4
    .line 114
    :try_start_0
    iget-object v0, p0, Landroid_maps_conflict_avoidance/com/google/common/task/TimerTask;->runner:Landroid_maps_conflict_avoidance/com/google/common/task/TaskRunner;

    #@6
    invoke-virtual {v0, p0}, Landroid_maps_conflict_avoidance/com/google/common/task/TaskRunner;->cancelTaskInternal(Landroid_maps_conflict_avoidance/com/google/common/task/AbstractTask;)Z

    #@9
    move-result v0

    #@a
    if-nez v0, :cond_0

    #@c
    .line 117
    iget-wide v0, p0, Landroid_maps_conflict_avoidance/com/google/common/task/TimerTask;->scheduled:J

    #@e
    cmp-long v0, v0, v2

    #@10
    if-eqz v0, :cond_1

    #@12
    const-wide/16 v0, -0x1

    #@14
    .line 118
    iput-wide v0, p0, Landroid_maps_conflict_avoidance/com/google/common/task/TimerTask;->scheduled:J

    #@16
    .line 119
    iget v0, p0, Landroid_maps_conflict_avoidance/com/google/common/task/TimerTask;->count:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@18
    monitor-exit p0

    #@19
    return v0

    #@1a
    :cond_0
    const-wide/16 v0, -0x1

    #@1c
    .line 115
    :try_start_1
    iput-wide v0, p0, Landroid_maps_conflict_avoidance/com/google/common/task/TimerTask;->scheduled:J

    #@1e
    .line 116
    iget v0, p0, Landroid_maps_conflict_avoidance/com/google/common/task/TimerTask;->count:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@20
    monitor-exit p0

    #@21
    return v0

    #@22
    :cond_1
    monitor-exit p0

    #@23
    .line 121
    return v4

    #@24
    :catchall_0
    move-exception v0

    #@25
    monitor-exit p0

    #@26
    throw v0
.end method

.method public declared-synchronized getScheduledTime()J
    .locals 2

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 139
    :try_start_0
    iget-wide v0, p0, Landroid_maps_conflict_avoidance/com/google/common/task/TimerTask;->scheduled:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@3
    monitor-exit p0

    #@4
    return-wide v0

    #@5
    :catchall_0
    move-exception v0

    #@6
    monitor-exit p0

    #@7
    throw v0
.end method

.method public declared-synchronized isUnscheduled()Z
    .locals 4

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 146
    :try_start_0
    iget-wide v0, p0, Landroid_maps_conflict_avoidance/com/google/common/task/TimerTask;->scheduled:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@3
    const-wide/16 v2, -0x1

    #@5
    cmp-long v0, v0, v2

    #@7
    if-nez v0, :cond_0

    #@9
    const/4 v0, 0x1

    #@a
    :goto_0
    monitor-exit p0

    #@b
    return v0

    #@c
    :cond_0
    const/4 v0, 0x0

    #@d
    goto :goto_0

    #@e
    :catchall_0
    move-exception v0

    #@f
    monitor-exit p0

    #@10
    throw v0
.end method

.method runInternal()V
    .locals 4

    #@0
    .prologue
    const-wide/16 v2, -0x1

    #@2
    .line 218
    monitor-enter p0

    #@3
    .line 219
    :try_start_0
    iget-wide v0, p0, Landroid_maps_conflict_avoidance/com/google/common/task/TimerTask;->period:J

    #@5
    cmp-long v0, v0, v2

    #@7
    if-nez v0, :cond_0

    #@9
    const-wide/16 v0, -0x1

    #@b
    .line 220
    iput-wide v0, p0, Landroid_maps_conflict_avoidance/com/google/common/task/TimerTask;->scheduled:J

    #@d
    .line 236
    :goto_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@e
    .line 238
    invoke-super {p0}, Landroid_maps_conflict_avoidance/com/google/common/task/Task;->runInternal()V

    #@11
    .line 240
    iget-object v0, p0, Landroid_maps_conflict_avoidance/com/google/common/task/TimerTask;->runner:Landroid_maps_conflict_avoidance/com/google/common/task/TaskRunner;

    #@13
    invoke-virtual {v0, p0}, Landroid_maps_conflict_avoidance/com/google/common/task/TaskRunner;->scheduleTask(Landroid_maps_conflict_avoidance/com/google/common/task/AbstractTask;)V

    #@16
    .line 241
    return-void

    #@17
    .line 222
    :cond_0
    :try_start_1
    iget v0, p0, Landroid_maps_conflict_avoidance/com/google/common/task/TimerTask;->count:I

    #@19
    if-gtz v0, :cond_1

    #@1b
    .line 225
    :goto_1
    iget v0, p0, Landroid_maps_conflict_avoidance/com/google/common/task/TimerTask;->count:I

    #@1d
    if-eqz v0, :cond_2

    #@1f
    .line 228
    iget-boolean v0, p0, Landroid_maps_conflict_avoidance/com/google/common/task/TimerTask;->isFixedRate:Z

    #@21
    if-nez v0, :cond_3

    #@23
    .line 231
    invoke-static {}, Landroid_maps_conflict_avoidance/com/google/common/Config;->getInstance()Landroid_maps_conflict_avoidance/com/google/common/Config;

    #@26
    move-result-object v0

    #@27
    invoke-virtual {v0}, Landroid_maps_conflict_avoidance/com/google/common/Config;->getClock()Landroid_maps_conflict_avoidance/com/google/common/Clock;

    #@2a
    move-result-object v0

    #@2b
    invoke-interface {v0}, Landroid_maps_conflict_avoidance/com/google/common/Clock;->currentTimeMillis()J

    #@2e
    move-result-wide v0

    #@2f
    iget-wide v2, p0, Landroid_maps_conflict_avoidance/com/google/common/task/TimerTask;->period:J

    #@31
    add-long/2addr v0, v2

    #@32
    iput-wide v0, p0, Landroid_maps_conflict_avoidance/com/google/common/task/TimerTask;->scheduled:J

    #@34
    goto :goto_0

    #@35
    .line 236
    :catchall_0
    move-exception v0

    #@36
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@37
    throw v0

    #@38
    .line 223
    :cond_1
    :try_start_2
    iget v0, p0, Landroid_maps_conflict_avoidance/com/google/common/task/TimerTask;->count:I

    #@3a
    add-int/lit8 v0, v0, -0x1

    #@3c
    iput v0, p0, Landroid_maps_conflict_avoidance/com/google/common/task/TimerTask;->count:I

    #@3e
    goto :goto_1

    #@3f
    :cond_2
    const-wide/16 v0, -0x1

    #@41
    .line 226
    iput-wide v0, p0, Landroid_maps_conflict_avoidance/com/google/common/task/TimerTask;->scheduled:J

    #@43
    goto :goto_0

    #@44
    .line 229
    :cond_3
    iget-wide v0, p0, Landroid_maps_conflict_avoidance/com/google/common/task/TimerTask;->scheduled:J

    #@46
    iget-wide v2, p0, Landroid_maps_conflict_avoidance/com/google/common/task/TimerTask;->period:J

    #@48
    add-long/2addr v0, v2

    #@49
    iput-wide v0, p0, Landroid_maps_conflict_avoidance/com/google/common/task/TimerTask;->scheduled:J
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@4b
    goto :goto_0
.end method

.method public schedule()V
    .locals 4

    #@0
    .prologue
    const-wide/16 v2, -0x1

    #@2
    .line 76
    monitor-enter p0

    #@3
    .line 77
    :try_start_0
    iget v0, p0, Landroid_maps_conflict_avoidance/com/google/common/task/TimerTask;->count:I

    #@5
    const/4 v1, -0x1

    #@6
    if-ne v0, v1, :cond_2

    #@8
    .line 78
    :cond_0
    iget-wide v0, p0, Landroid_maps_conflict_avoidance/com/google/common/task/TimerTask;->scheduled:J

    #@a
    cmp-long v0, v0, v2

    #@c
    if-nez v0, :cond_1

    #@e
    .line 79
    iget-wide v0, p0, Landroid_maps_conflict_avoidance/com/google/common/task/TimerTask;->deadline:J

    #@10
    cmp-long v0, v0, v2

    #@12
    if-nez v0, :cond_3

    #@14
    .line 80
    invoke-static {}, Landroid_maps_conflict_avoidance/com/google/common/Config;->getInstance()Landroid_maps_conflict_avoidance/com/google/common/Config;

    #@17
    move-result-object v0

    #@18
    invoke-virtual {v0}, Landroid_maps_conflict_avoidance/com/google/common/Config;->getClock()Landroid_maps_conflict_avoidance/com/google/common/Clock;

    #@1b
    move-result-object v0

    #@1c
    invoke-interface {v0}, Landroid_maps_conflict_avoidance/com/google/common/Clock;->currentTimeMillis()J

    #@1f
    move-result-wide v0

    #@20
    iget-wide v2, p0, Landroid_maps_conflict_avoidance/com/google/common/task/TimerTask;->delay:J

    #@22
    add-long/2addr v0, v2

    #@23
    iput-wide v0, p0, Landroid_maps_conflict_avoidance/com/google/common/task/TimerTask;->scheduled:J

    #@25
    .line 87
    :cond_1
    :goto_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@26
    .line 88
    iget-object v0, p0, Landroid_maps_conflict_avoidance/com/google/common/task/TimerTask;->runner:Landroid_maps_conflict_avoidance/com/google/common/task/TaskRunner;

    #@28
    invoke-virtual {v0, p0}, Landroid_maps_conflict_avoidance/com/google/common/task/TaskRunner;->scheduleTask(Landroid_maps_conflict_avoidance/com/google/common/task/AbstractTask;)V

    #@2b
    .line 89
    return-void

    #@2c
    .line 77
    :cond_2
    :try_start_1
    iget v0, p0, Landroid_maps_conflict_avoidance/com/google/common/task/TimerTask;->count:I

    #@2e
    if-gtz v0, :cond_0

    #@30
    goto :goto_0

    #@31
    .line 83
    :cond_3
    iget-wide v0, p0, Landroid_maps_conflict_avoidance/com/google/common/task/TimerTask;->deadline:J

    #@33
    iget-wide v2, p0, Landroid_maps_conflict_avoidance/com/google/common/task/TimerTask;->delay:J

    #@35
    add-long/2addr v0, v2

    #@36
    iput-wide v0, p0, Landroid_maps_conflict_avoidance/com/google/common/task/TimerTask;->scheduled:J

    #@38
    goto :goto_0

    #@39
    .line 87
    :catchall_0
    move-exception v0

    #@3a
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@3b
    throw v0
.end method

.method declared-synchronized scheduleInternal()V
    .locals 4

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 96
    :try_start_0
    iget-wide v0, p0, Landroid_maps_conflict_avoidance/com/google/common/task/TimerTask;->scheduled:J

    #@3
    const-wide/16 v2, -0x1

    #@5
    cmp-long v0, v0, v2

    #@7
    if-eqz v0, :cond_0

    #@9
    .line 97
    iget-object v0, p0, Landroid_maps_conflict_avoidance/com/google/common/task/TimerTask;->runner:Landroid_maps_conflict_avoidance/com/google/common/task/TaskRunner;

    #@b
    invoke-virtual {v0, p0}, Landroid_maps_conflict_avoidance/com/google/common/task/TaskRunner;->scheduleTimerTaskInternal(Landroid_maps_conflict_avoidance/com/google/common/task/TimerTask;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@e
    :cond_0
    monitor-exit p0

    #@f
    .line 99
    return-void

    #@10
    :catchall_0
    move-exception v0

    #@11
    monitor-exit p0

    #@12
    throw v0
.end method

.method public declared-synchronized setDelay(J)V
    .locals 1
    .param p1, "delay"    # J

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 157
    :try_start_0
    iput-wide p1, p0, Landroid_maps_conflict_avoidance/com/google/common/task/TimerTask;->delay:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@3
    monitor-exit p0

    #@4
    .line 158
    return-void

    #@5
    :catchall_0
    move-exception v0

    #@6
    monitor-exit p0

    #@7
    throw v0
.end method
