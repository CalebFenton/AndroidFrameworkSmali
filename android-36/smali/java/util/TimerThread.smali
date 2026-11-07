.class Ljava/util/TimerThread;
.super Ljava/lang/Thread;
.source "Timer.java"


# instance fields
.field greylist-max-o newTasksMayBeScheduled:Z

.field private greylist-max-o queue:Ljava/util/TaskQueue;


# direct methods
.method constructor greylist-max-o <init>(Ljava/util/TaskQueue;)V
    .registers 3
    .param p1, "queue"    # Ljava/util/TaskQueue;

    .line 571
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 561
    const/4 v0, 0x1

    iput-boolean v0, p0, Ljava/util/TimerThread;->newTasksMayBeScheduled:Z

    .line 572
    iput-object p1, p0, Ljava/util/TimerThread;->queue:Ljava/util/TaskQueue;

    .line 573
    return-void
.end method

.method private greylist-max-o mainLoop()V
    .registers 16

    .line 596
    nop

    :goto_1
    :try_start_1
    iget-object v0, p0, Ljava/util/TimerThread;->queue:Ljava/util/TaskQueue;

    monitor-enter v0
    :try_end_4
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_4} :catch_93

    .line 598
    :goto_4
    :try_start_4
    iget-object v1, p0, Ljava/util/TimerThread;->queue:Ljava/util/TaskQueue;

    invoke-virtual {v1}, Ljava/util/TaskQueue;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_16

    iget-boolean v1, p0, Ljava/util/TimerThread;->newTasksMayBeScheduled:Z

    if-eqz v1, :cond_16

    .line 599
    iget-object v1, p0, Ljava/util/TimerThread;->queue:Ljava/util/TaskQueue;

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V

    goto :goto_4

    .line 600
    :cond_16
    iget-object v1, p0, Ljava/util/TimerThread;->queue:Ljava/util/TaskQueue;

    invoke-virtual {v1}, Ljava/util/TaskQueue;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_20

    .line 601
    monitor-exit v0

    .line 638
    return-void

    .line 605
    :cond_20
    iget-object v1, p0, Ljava/util/TimerThread;->queue:Ljava/util/TaskQueue;

    invoke-virtual {v1}, Ljava/util/TaskQueue;->getMin()Ljava/util/TimerTask;

    move-result-object v1

    .line 606
    .local v1, "task":Ljava/util/TimerTask;
    iget-object v2, v1, Ljava/util/TimerTask;->lock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_29
    .catchall {:try_start_4 .. :try_end_29} :catchall_90

    .line 607
    :try_start_29
    iget v3, v1, Ljava/util/TimerTask;->state:I

    const/4 v4, 0x3

    if-ne v3, v4, :cond_36

    .line 608
    iget-object v3, p0, Ljava/util/TimerThread;->queue:Ljava/util/TaskQueue;

    invoke-virtual {v3}, Ljava/util/TaskQueue;->removeMin()V

    .line 609
    monitor-exit v2
    :try_end_34
    .catchall {:try_start_29 .. :try_end_34} :catchall_8d

    :try_start_34
    monitor-exit v0
    :try_end_35
    .catchall {:try_start_34 .. :try_end_35} :catchall_90

    goto :goto_1

    .line 611
    :cond_36
    :try_start_36
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 612
    .local v3, "now":J
    iget-wide v5, v1, Ljava/util/TimerTask;->nextExecutionTime:J

    .line 613
    .local v5, "execTime":J
    cmp-long v7, v5, v3

    if-gtz v7, :cond_42

    const/4 v7, 0x1

    goto :goto_43

    :cond_42
    const/4 v7, 0x0

    :goto_43
    move v8, v7

    .local v8, "taskFired":Z
    if-eqz v7, :cond_7c

    .line 614
    iget-wide v9, v1, Ljava/util/TimerTask;->period:J

    .line 615
    .local v9, "p":J
    const-wide/16 v11, 0x0

    cmp-long v7, v9, v11

    if-nez v7, :cond_57

    .line 616
    iget-object v7, p0, Ljava/util/TimerThread;->queue:Ljava/util/TaskQueue;

    invoke-virtual {v7}, Ljava/util/TaskQueue;->removeMin()V

    .line 617
    const/4 v7, 0x2

    iput v7, v1, Ljava/util/TimerTask;->state:I

    goto :goto_7c

    .line 618
    :cond_57
    cmp-long v7, v9, v11

    if-gez v7, :cond_63

    .line 619
    iget-object v7, p0, Ljava/util/TimerThread;->queue:Ljava/util/TaskQueue;

    sub-long v11, v3, v9

    invoke-virtual {v7, v11, v12}, Ljava/util/TaskQueue;->rescheduleMin(J)V

    goto :goto_7c

    .line 621
    :cond_63
    add-long v11, v5, v9

    .line 622
    .local v11, "newTime":J
    invoke-static {}, Ljava/util/Timer;->skipMultipleMissedPeriodicTasks()Z

    move-result v7

    if-eqz v7, :cond_77

    sub-long v13, v3, v9

    cmp-long v7, v11, v13

    if-gez v7, :cond_77

    .line 624
    sub-long v13, v3, v5

    add-long/2addr v13, v9

    rem-long/2addr v13, v9

    add-long v11, v3, v13

    .line 626
    :cond_77
    iget-object v7, p0, Ljava/util/TimerThread;->queue:Ljava/util/TaskQueue;

    invoke-virtual {v7, v11, v12}, Ljava/util/TaskQueue;->rescheduleMin(J)V

    .line 629
    .end local v9    # "p":J
    .end local v11    # "newTime":J
    :cond_7c
    :goto_7c
    monitor-exit v2
    :try_end_7d
    .catchall {:try_start_36 .. :try_end_7d} :catchall_8d

    .line 630
    if-nez v8, :cond_86

    .line 631
    :try_start_7f
    iget-object v2, p0, Ljava/util/TimerThread;->queue:Ljava/util/TaskQueue;

    sub-long v9, v5, v3

    invoke-virtual {v2, v9, v10}, Ljava/lang/Object;->wait(J)V

    .line 632
    .end local v3    # "now":J
    .end local v5    # "execTime":J
    :cond_86
    monitor-exit v0
    :try_end_87
    .catchall {:try_start_7f .. :try_end_87} :catchall_90

    .line 633
    if-eqz v8, :cond_94

    .line 634
    :try_start_89
    invoke-virtual {v1}, Ljava/util/TimerTask;->run()V
    :try_end_8c
    .catch Ljava/lang/InterruptedException; {:try_start_89 .. :try_end_8c} :catch_93

    goto :goto_94

    .line 629
    .end local v8    # "taskFired":Z
    :catchall_8d
    move-exception v3

    :try_start_8e
    monitor-exit v2
    :try_end_8f
    .catchall {:try_start_8e .. :try_end_8f} :catchall_8d

    .end local p0    # "this":Ljava/util/TimerThread;
    :try_start_8f
    throw v3

    .line 632
    .end local v1    # "task":Ljava/util/TimerTask;
    .restart local p0    # "this":Ljava/util/TimerThread;
    :catchall_90
    move-exception v1

    monitor-exit v0
    :try_end_92
    .catchall {:try_start_8f .. :try_end_92} :catchall_90

    .end local p0    # "this":Ljava/util/TimerThread;
    :try_start_92
    throw v1
    :try_end_93
    .catch Ljava/lang/InterruptedException; {:try_start_92 .. :try_end_93} :catch_93

    .line 635
    .restart local p0    # "this":Ljava/util/TimerThread;
    :catch_93
    move-exception v0

    .line 636
    :cond_94
    :goto_94
    goto/16 :goto_1
.end method


# virtual methods
.method public whitelist test-api run()V
    .registers 4

    .line 577
    const/4 v0, 0x0

    :try_start_1
    invoke-direct {p0}, Ljava/util/TimerThread;->mainLoop()V
    :try_end_4
    .catchall {:try_start_1 .. :try_end_4} :catchall_14

    .line 580
    iget-object v1, p0, Ljava/util/TimerThread;->queue:Ljava/util/TaskQueue;

    monitor-enter v1

    .line 581
    :try_start_7
    iput-boolean v0, p0, Ljava/util/TimerThread;->newTasksMayBeScheduled:Z

    .line 582
    iget-object v0, p0, Ljava/util/TimerThread;->queue:Ljava/util/TaskQueue;

    invoke-virtual {v0}, Ljava/util/TaskQueue;->clear()V

    .line 583
    monitor-exit v1

    .line 584
    nop

    .line 585
    return-void

    .line 583
    :catchall_11
    move-exception v0

    monitor-exit v1
    :try_end_13
    .catchall {:try_start_7 .. :try_end_13} :catchall_11

    throw v0

    .line 580
    :catchall_14
    move-exception v1

    iget-object v2, p0, Ljava/util/TimerThread;->queue:Ljava/util/TaskQueue;

    monitor-enter v2

    .line 581
    :try_start_18
    iput-boolean v0, p0, Ljava/util/TimerThread;->newTasksMayBeScheduled:Z

    .line 582
    iget-object v0, p0, Ljava/util/TimerThread;->queue:Ljava/util/TaskQueue;

    invoke-virtual {v0}, Ljava/util/TaskQueue;->clear()V

    .line 583
    monitor-exit v2
    :try_end_20
    .catchall {:try_start_18 .. :try_end_20} :catchall_21

    .line 584
    throw v1

    .line 583
    :catchall_21
    move-exception v0

    :try_start_22
    monitor-exit v2
    :try_end_23
    .catchall {:try_start_22 .. :try_end_23} :catchall_21

    throw v0
.end method
