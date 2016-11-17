.class Ljava/util/TimerThread;
.super Ljava/lang/Thread;
.source "Timer.java"


# instance fields
.field newTasksMayBeScheduled:Z

.field private queue:Ljava/util/TaskQueue;


# direct methods
.method constructor <init>(Ljava/util/TaskQueue;)V
    .locals 1
    .param p1, "queue"    # Ljava/util/TaskQueue;

    #@0
    .prologue
    .line 499
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    #@3
    .line 489
    const/4 v0, 0x1

    #@4
    iput-boolean v0, p0, Ljava/util/TimerThread;->newTasksMayBeScheduled:Z

    #@6
    .line 500
    iput-object p1, p0, Ljava/util/TimerThread;->queue:Ljava/util/TaskQueue;

    #@8
    .line 499
    return-void
.end method

.method private mainLoop()V
    .locals 14

    #@0
    .prologue
    const-wide/16 v12, 0x0

    #@2
    .line 523
    :cond_0
    :goto_0
    :try_start_0
    iget-object v10, p0, Ljava/util/TimerThread;->queue:Ljava/util/TaskQueue;

    #@4
    monitor-enter v10
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    #@5
    .line 525
    :goto_1
    :try_start_1
    iget-object v7, p0, Ljava/util/TimerThread;->queue:Ljava/util/TaskQueue;

    #@7
    invoke-virtual {v7}, Ljava/util/TaskQueue;->isEmpty()Z

    #@a
    move-result v7

    #@b
    if-eqz v7, :cond_1

    #@d
    iget-boolean v7, p0, Ljava/util/TimerThread;->newTasksMayBeScheduled:Z

    #@f
    if-eqz v7, :cond_1

    #@11
    .line 526
    iget-object v7, p0, Ljava/util/TimerThread;->queue:Ljava/util/TaskQueue;

    #@13
    invoke-virtual {v7}, Ljava/util/TaskQueue;->wait()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@16
    goto :goto_1

    #@17
    .line 523
    :catchall_0
    move-exception v7

    #@18
    :try_start_2
    monitor-exit v10

    #@19
    throw v7
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0

    #@1a
    .line 556
    :catch_0
    move-exception v2

    #@1b
    .local v2, "e":Ljava/lang/InterruptedException;
    goto :goto_0

    #@1c
    .line 527
    .end local v2    # "e":Ljava/lang/InterruptedException;
    :cond_1
    :try_start_3
    iget-object v7, p0, Ljava/util/TimerThread;->queue:Ljava/util/TaskQueue;

    #@1e
    invoke-virtual {v7}, Ljava/util/TaskQueue;->isEmpty()Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@21
    move-result v7

    #@22
    if-eqz v7, :cond_2

    #@24
    :try_start_4
    monitor-exit v10
    :try_end_4
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_0

    #@25
    .line 518
    return-void

    #@26
    .line 532
    :cond_2
    :try_start_5
    iget-object v7, p0, Ljava/util/TimerThread;->queue:Ljava/util/TaskQueue;

    #@28
    invoke-virtual {v7}, Ljava/util/TaskQueue;->getMin()Ljava/util/TimerTask;

    #@2b
    move-result-object v3

    #@2c
    .line 533
    .local v3, "task":Ljava/util/TimerTask;
    iget-object v11, v3, Ljava/util/TimerTask;->lock:Ljava/lang/Object;

    #@2e
    monitor-enter v11
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    #@2f
    .line 534
    :try_start_6
    iget v7, v3, Ljava/util/TimerTask;->state:I

    #@31
    const/4 v8, 0x3

    #@32
    if-ne v7, v8, :cond_3

    #@34
    .line 535
    iget-object v7, p0, Ljava/util/TimerThread;->queue:Ljava/util/TaskQueue;

    #@36
    invoke-virtual {v7}, Ljava/util/TaskQueue;->removeMin()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    #@39
    :try_start_7
    monitor-exit v11
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    #@3a
    :try_start_8
    monitor-exit v10
    :try_end_8
    .catch Ljava/lang/InterruptedException; {:try_start_8 .. :try_end_8} :catch_0

    #@3b
    goto :goto_0

    #@3c
    .line 538
    :cond_3
    :try_start_9
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    #@3f
    move-result-wide v0

    #@40
    .line 539
    .local v0, "currentTime":J
    iget-wide v4, v3, Ljava/util/TimerTask;->nextExecutionTime:J

    #@42
    .line 540
    .local v4, "executionTime":J
    cmp-long v7, v4, v0

    #@44
    if-gtz v7, :cond_6

    #@46
    const/4 v6, 0x1

    #@47
    .local v6, "taskFired":Z
    :goto_2
    if-eqz v6, :cond_4

    #@49
    .line 541
    iget-wide v8, v3, Ljava/util/TimerTask;->period:J

    #@4b
    cmp-long v7, v8, v12

    #@4d
    if-nez v7, :cond_7

    #@4f
    .line 542
    iget-object v7, p0, Ljava/util/TimerThread;->queue:Ljava/util/TaskQueue;

    #@51
    invoke-virtual {v7}, Ljava/util/TaskQueue;->removeMin()V

    #@54
    .line 543
    const/4 v7, 0x2

    #@55
    iput v7, v3, Ljava/util/TimerTask;->state:I
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    #@57
    :cond_4
    :goto_3
    :try_start_a
    monitor-exit v11

    #@58
    .line 551
    if-nez v6, :cond_5

    #@5a
    .line 552
    iget-object v7, p0, Ljava/util/TimerThread;->queue:Ljava/util/TaskQueue;

    #@5c
    sub-long v8, v4, v0

    #@5e
    invoke-virtual {v7, v8, v9}, Ljava/util/TaskQueue;->wait(J)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    #@61
    :cond_5
    :try_start_b
    monitor-exit v10

    #@62
    .line 554
    if-eqz v6, :cond_0

    #@64
    .line 555
    invoke-virtual {v3}, Ljava/util/TimerTask;->run()V
    :try_end_b
    .catch Ljava/lang/InterruptedException; {:try_start_b .. :try_end_b} :catch_0

    #@67
    goto :goto_0

    #@68
    .line 540
    .end local v6    # "taskFired":Z
    :cond_6
    const/4 v6, 0x0

    #@69
    goto :goto_2

    #@6a
    .line 545
    .restart local v6    # "taskFired":Z
    :cond_7
    :try_start_c
    iget-object v7, p0, Ljava/util/TimerThread;->queue:Ljava/util/TaskQueue;

    #@6c
    .line 546
    iget-wide v8, v3, Ljava/util/TimerTask;->period:J

    #@6e
    cmp-long v8, v8, v12

    #@70
    if-gez v8, :cond_8

    #@72
    iget-wide v8, v3, Ljava/util/TimerTask;->period:J

    #@74
    sub-long v8, v0, v8

    #@76
    .line 545
    :goto_4
    invoke-virtual {v7, v8, v9}, Ljava/util/TaskQueue;->rescheduleMin(J)V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_1

    #@79
    goto :goto_3

    #@7a
    .line 533
    .end local v0    # "currentTime":J
    .end local v4    # "executionTime":J
    .end local v6    # "taskFired":Z
    :catchall_1
    move-exception v7

    #@7b
    :try_start_d
    monitor-exit v11

    #@7c
    throw v7
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    #@7d
    .line 547
    .restart local v0    # "currentTime":J
    .restart local v4    # "executionTime":J
    .restart local v6    # "taskFired":Z
    :cond_8
    :try_start_e
    iget-wide v8, v3, Ljava/util/TimerTask;->period:J
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_1

    #@7f
    add-long/2addr v8, v4

    #@80
    goto :goto_4
.end method


# virtual methods
.method public run()V
    .locals 3

    #@0
    .prologue
    .line 505
    :try_start_0
    invoke-direct {p0}, Ljava/util/TimerThread;->mainLoop()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    #@3
    .line 508
    iget-object v1, p0, Ljava/util/TimerThread;->queue:Ljava/util/TaskQueue;

    #@5
    monitor-enter v1

    #@6
    .line 509
    const/4 v0, 0x0

    #@7
    :try_start_1
    iput-boolean v0, p0, Ljava/util/TimerThread;->newTasksMayBeScheduled:Z

    #@9
    .line 510
    iget-object v0, p0, Ljava/util/TimerThread;->queue:Ljava/util/TaskQueue;

    #@b
    invoke-virtual {v0}, Ljava/util/TaskQueue;->clear()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@e
    monitor-exit v1

    #@f
    .line 503
    return-void

    #@10
    .line 508
    :catchall_0
    move-exception v0

    #@11
    monitor-exit v1

    #@12
    throw v0

    #@13
    .line 506
    :catchall_1
    move-exception v0

    #@14
    .line 508
    iget-object v1, p0, Ljava/util/TimerThread;->queue:Ljava/util/TaskQueue;

    #@16
    monitor-enter v1

    #@17
    .line 509
    const/4 v2, 0x0

    #@18
    :try_start_2
    iput-boolean v2, p0, Ljava/util/TimerThread;->newTasksMayBeScheduled:Z

    #@1a
    .line 510
    iget-object v2, p0, Ljava/util/TimerThread;->queue:Ljava/util/TaskQueue;

    #@1c
    invoke-virtual {v2}, Ljava/util/TaskQueue;->clear()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    #@1f
    monitor-exit v1

    #@20
    .line 506
    throw v0

    #@21
    .line 508
    :catchall_2
    move-exception v0

    #@22
    monitor-exit v1

    #@23
    throw v0
.end method
