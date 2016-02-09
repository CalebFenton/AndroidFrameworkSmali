.class final Ljava/util/Timer$TimerImpl;
.super Ljava/lang/Thread;
.source "Timer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/Timer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "TimerImpl"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/util/Timer$TimerImpl$TimerHeap;
    }
.end annotation


# instance fields
.field private cancelled:Z

.field private finished:Z

.field private tasks:Ljava/util/Timer$TimerImpl$TimerHeap;


# direct methods
.method static synthetic -get0(Ljava/util/Timer$TimerImpl;)Z
    .locals 1

    #@0
    iget-boolean v0, p0, Ljava/util/Timer$TimerImpl;->cancelled:Z

    #@2
    return v0
.end method

.method static synthetic -set0(Ljava/util/Timer$TimerImpl;Z)Z
    .locals 0

    #@0
    iput-boolean p1, p0, Ljava/util/Timer$TimerImpl;->finished:Z

    #@2
    return p1
.end method

.method static synthetic -wrap0(Ljava/util/Timer$TimerImpl;Ljava/util/TimerTask;)V
    .locals 0
    .param p1, "newTask"    # Ljava/util/TimerTask;

    #@0
    .prologue
    invoke-direct {p0, p1}, Ljava/util/Timer$TimerImpl;->insertTask(Ljava/util/TimerTask;)V

    #@3
    return-void
.end method

.method constructor <init>(Ljava/lang/String;Z)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "isDaemon"    # Z

    #@0
    .prologue
    .line 189
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    #@3
    .line 181
    new-instance v0, Ljava/util/Timer$TimerImpl$TimerHeap;

    #@5
    const/4 v1, 0x0

    #@6
    invoke-direct {v0, v1}, Ljava/util/Timer$TimerImpl$TimerHeap;-><init>(Ljava/util/Timer$TimerImpl$TimerHeap;)V

    #@9
    iput-object v0, p0, Ljava/util/Timer$TimerImpl;->tasks:Ljava/util/Timer$TimerImpl$TimerHeap;

    #@b
    .line 190
    invoke-virtual {p0, p1}, Ljava/util/Timer$TimerImpl;->setName(Ljava/lang/String;)V

    #@e
    .line 191
    invoke-virtual {p0, p2}, Ljava/util/Timer$TimerImpl;->setDaemon(Z)V

    #@11
    .line 192
    invoke-virtual {p0}, Ljava/util/Timer$TimerImpl;->start()V

    #@14
    .line 189
    return-void
.end method

.method private insertTask(Ljava/util/TimerTask;)V
    .locals 1
    .param p1, "newTask"    # Ljava/util/TimerTask;

    #@0
    .prologue
    .line 298
    iget-object v0, p0, Ljava/util/Timer$TimerImpl;->tasks:Ljava/util/Timer$TimerImpl$TimerHeap;

    #@2
    invoke-virtual {v0, p1}, Ljava/util/Timer$TimerImpl$TimerHeap;->insert(Ljava/util/TimerTask;)V

    #@5
    .line 299
    invoke-virtual {p0}, Ljava/util/Timer$TimerImpl;->notify()V

    #@8
    .line 296
    return-void
.end method


# virtual methods
.method public declared-synchronized cancel()V
    .locals 1

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 306
    const/4 v0, 0x1

    #@2
    :try_start_0
    iput-boolean v0, p0, Ljava/util/Timer$TimerImpl;->cancelled:Z

    #@4
    .line 307
    iget-object v0, p0, Ljava/util/Timer$TimerImpl;->tasks:Ljava/util/Timer$TimerImpl$TimerHeap;

    #@6
    invoke-virtual {v0}, Ljava/util/Timer$TimerImpl$TimerHeap;->reset()V

    #@9
    .line 308
    invoke-virtual {p0}, Ljava/util/Timer$TimerImpl;->notify()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@c
    monitor-exit p0

    #@d
    .line 305
    return-void

    #@e
    :catchall_0
    move-exception v0

    #@f
    monitor-exit p0

    #@10
    throw v0
.end method

.method public purge()I
    .locals 2

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 312
    iget-object v0, p0, Ljava/util/Timer$TimerImpl;->tasks:Ljava/util/Timer$TimerImpl$TimerHeap;

    #@3
    invoke-virtual {v0}, Ljava/util/Timer$TimerImpl$TimerHeap;->isEmpty()Z

    #@6
    move-result v0

    #@7
    if-eqz v0, :cond_0

    #@9
    .line 313
    return v1

    #@a
    .line 316
    :cond_0
    iget-object v0, p0, Ljava/util/Timer$TimerImpl;->tasks:Ljava/util/Timer$TimerImpl$TimerHeap;

    #@c
    invoke-static {v0, v1}, Ljava/util/Timer$TimerImpl$TimerHeap;->-set0(Ljava/util/Timer$TimerImpl$TimerHeap;I)I

    #@f
    .line 317
    iget-object v0, p0, Ljava/util/Timer$TimerImpl;->tasks:Ljava/util/Timer$TimerImpl$TimerHeap;

    #@11
    invoke-virtual {v0}, Ljava/util/Timer$TimerImpl$TimerHeap;->deleteIfCancelled()V

    #@14
    .line 318
    iget-object v0, p0, Ljava/util/Timer$TimerImpl;->tasks:Ljava/util/Timer$TimerImpl$TimerHeap;

    #@16
    invoke-static {v0}, Ljava/util/Timer$TimerImpl$TimerHeap;->-get0(Ljava/util/Timer$TimerImpl$TimerHeap;)I

    #@19
    move-result v0

    #@1a
    return v0
.end method

.method public run()V
    .locals 14

    #@0
    .prologue
    .line 203
    :cond_0
    :goto_0
    monitor-enter p0

    #@1
    .line 205
    :try_start_0
    iget-boolean v8, p0, Ljava/util/Timer$TimerImpl;->cancelled:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@3
    if-eqz v8, :cond_1

    #@5
    monitor-exit p0

    #@6
    .line 206
    return-void

    #@7
    .line 208
    :cond_1
    :try_start_1
    iget-object v8, p0, Ljava/util/Timer$TimerImpl;->tasks:Ljava/util/Timer$TimerImpl$TimerHeap;

    #@9
    invoke-virtual {v8}, Ljava/util/Timer$TimerImpl$TimerHeap;->isEmpty()Z

    #@c
    move-result v8

    #@d
    if-eqz v8, :cond_3

    #@f
    .line 209
    iget-boolean v8, p0, Ljava/util/Timer$TimerImpl;->finished:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@11
    if-eqz v8, :cond_2

    #@13
    monitor-exit p0

    #@14
    .line 210
    return-void

    #@15
    .line 214
    :cond_2
    :try_start_2
    invoke-virtual {p0}, Ljava/util/Timer$TimerImpl;->wait()V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@18
    :goto_1
    monitor-exit p0

    #@19
    goto :goto_0

    #@1a
    .line 215
    :catch_0
    move-exception v2

    #@1b
    .local v2, "ignored":Ljava/lang/InterruptedException;
    goto :goto_1

    #@1c
    .line 220
    .end local v2    # "ignored":Ljava/lang/InterruptedException;
    :cond_3
    :try_start_3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    #@1f
    move-result-wide v0

    #@20
    .line 222
    .local v0, "currentTime":J
    iget-object v8, p0, Ljava/util/Timer$TimerImpl;->tasks:Ljava/util/Timer$TimerImpl$TimerHeap;

    #@22
    invoke-virtual {v8}, Ljava/util/Timer$TimerImpl$TimerHeap;->minimum()Ljava/util/TimerTask;

    #@25
    move-result-object v4

    #@26
    .line 225
    .local v4, "task":Ljava/util/TimerTask;
    iget-object v9, v4, Ljava/util/TimerTask;->lock:Ljava/lang/Object;

    #@28
    monitor-enter v9
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@29
    .line 226
    :try_start_4
    iget-boolean v8, v4, Ljava/util/TimerTask;->cancelled:Z

    #@2b
    if-eqz v8, :cond_4

    #@2d
    .line 227
    iget-object v8, p0, Ljava/util/Timer$TimerImpl;->tasks:Ljava/util/Timer$TimerImpl$TimerHeap;

    #@2f
    const/4 v10, 0x0

    #@30
    invoke-virtual {v8, v10}, Ljava/util/Timer$TimerImpl$TimerHeap;->delete(I)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    #@33
    :try_start_5
    monitor-exit v9
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    #@34
    goto :goto_1

    #@35
    .line 203
    .end local v0    # "currentTime":J
    .end local v4    # "task":Ljava/util/TimerTask;
    :catchall_0
    move-exception v8

    #@36
    monitor-exit p0

    #@37
    throw v8

    #@38
    .line 232
    .restart local v0    # "currentTime":J
    .restart local v4    # "task":Ljava/util/TimerTask;
    :cond_4
    :try_start_6
    iget-wide v10, v4, Ljava/util/TimerTask;->when:J
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    #@3a
    sub-long v6, v10, v0

    #@3c
    .local v6, "timeToSleep":J
    :try_start_7
    monitor-exit v9
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    #@3d
    .line 235
    const-wide/16 v8, 0x0

    #@3f
    cmp-long v8, v6, v8

    #@41
    if-lez v8, :cond_5

    #@43
    .line 238
    :try_start_8
    invoke-virtual {p0, v6, v7}, Ljava/util/Timer$TimerImpl;->wait(J)V
    :try_end_8
    .catch Ljava/lang/InterruptedException; {:try_start_8 .. :try_end_8} :catch_1
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    #@46
    goto :goto_1

    #@47
    .line 239
    :catch_1
    move-exception v2

    #@48
    .restart local v2    # "ignored":Ljava/lang/InterruptedException;
    goto :goto_1

    #@49
    .line 225
    .end local v2    # "ignored":Ljava/lang/InterruptedException;
    .end local v6    # "timeToSleep":J
    :catchall_1
    move-exception v8

    #@4a
    :try_start_9
    monitor-exit v9

    #@4b
    throw v8

    #@4c
    .line 246
    .restart local v6    # "timeToSleep":J
    :cond_5
    iget-object v9, v4, Ljava/util/TimerTask;->lock:Ljava/lang/Object;

    #@4e
    monitor-enter v9
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    #@4f
    .line 247
    const/4 v3, 0x0

    #@50
    .line 248
    .local v3, "pos":I
    :try_start_a
    iget-object v8, p0, Ljava/util/Timer$TimerImpl;->tasks:Ljava/util/Timer$TimerImpl$TimerHeap;

    #@52
    invoke-virtual {v8}, Ljava/util/Timer$TimerImpl$TimerHeap;->minimum()Ljava/util/TimerTask;

    #@55
    move-result-object v8

    #@56
    iget-wide v10, v8, Ljava/util/TimerTask;->when:J

    #@58
    iget-wide v12, v4, Ljava/util/TimerTask;->when:J

    #@5a
    cmp-long v8, v10, v12

    #@5c
    if-eqz v8, :cond_6

    #@5e
    .line 249
    iget-object v8, p0, Ljava/util/Timer$TimerImpl;->tasks:Ljava/util/Timer$TimerImpl$TimerHeap;

    #@60
    invoke-static {v8, v4}, Ljava/util/Timer$TimerImpl$TimerHeap;->-wrap0(Ljava/util/Timer$TimerImpl$TimerHeap;Ljava/util/TimerTask;)I

    #@63
    move-result v3

    #@64
    .line 251
    :cond_6
    iget-boolean v8, v4, Ljava/util/TimerTask;->cancelled:Z

    #@66
    if-eqz v8, :cond_7

    #@68
    .line 252
    iget-object v8, p0, Ljava/util/Timer$TimerImpl;->tasks:Ljava/util/Timer$TimerImpl$TimerHeap;

    #@6a
    iget-object v10, p0, Ljava/util/Timer$TimerImpl;->tasks:Ljava/util/Timer$TimerImpl$TimerHeap;

    #@6c
    invoke-static {v10, v4}, Ljava/util/Timer$TimerImpl$TimerHeap;->-wrap0(Ljava/util/Timer$TimerImpl$TimerHeap;Ljava/util/TimerTask;)I

    #@6f
    move-result v10

    #@70
    invoke-virtual {v8, v10}, Ljava/util/Timer$TimerImpl$TimerHeap;->delete(I)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    #@73
    :try_start_b
    monitor-exit v9
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    #@74
    goto :goto_1

    #@75
    .line 257
    :cond_7
    :try_start_c
    iget-wide v10, v4, Ljava/util/TimerTask;->when:J

    #@77
    invoke-virtual {v4, v10, v11}, Ljava/util/TimerTask;->setScheduledTime(J)V

    #@7a
    .line 260
    iget-object v8, p0, Ljava/util/Timer$TimerImpl;->tasks:Ljava/util/Timer$TimerImpl$TimerHeap;

    #@7c
    invoke-virtual {v8, v3}, Ljava/util/Timer$TimerImpl$TimerHeap;->delete(I)V

    #@7f
    .line 263
    iget-wide v10, v4, Ljava/util/TimerTask;->period:J

    #@81
    const-wide/16 v12, 0x0

    #@83
    cmp-long v8, v10, v12

    #@85
    if-ltz v8, :cond_9

    #@87
    .line 265
    iget-boolean v8, v4, Ljava/util/TimerTask;->fixedRate:Z

    #@89
    if-eqz v8, :cond_8

    #@8b
    .line 267
    iget-wide v10, v4, Ljava/util/TimerTask;->when:J

    #@8d
    iget-wide v12, v4, Ljava/util/TimerTask;->period:J

    #@8f
    add-long/2addr v10, v12

    #@90
    iput-wide v10, v4, Ljava/util/TimerTask;->when:J

    #@92
    .line 275
    :goto_2
    invoke-direct {p0, v4}, Ljava/util/Timer$TimerImpl;->insertTask(Ljava/util/TimerTask;)V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_3

    #@95
    :goto_3
    :try_start_d
    monitor-exit v9
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    #@96
    monitor-exit p0

    #@97
    .line 282
    const/4 v5, 0x0

    #@98
    .line 284
    .local v5, "taskCompletedNormally":Z
    :try_start_e
    invoke-virtual {v4}, Ljava/util/TimerTask;->run()V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_4

    #@9b
    .line 285
    const/4 v5, 0x1

    #@9c
    .line 287
    if-nez v5, :cond_0

    #@9e
    .line 288
    monitor-enter p0

    #@9f
    .line 289
    const/4 v8, 0x1

    #@a0
    :try_start_f
    iput-boolean v8, p0, Ljava/util/Timer$TimerImpl;->cancelled:Z
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_2

    #@a2
    goto/16 :goto_1

    #@a4
    .line 288
    :catchall_2
    move-exception v8

    #@a5
    monitor-exit p0

    #@a6
    throw v8

    #@a7
    .line 270
    .end local v5    # "taskCompletedNormally":Z
    :cond_8
    :try_start_10
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    #@aa
    move-result-wide v10

    #@ab
    .line 271
    iget-wide v12, v4, Ljava/util/TimerTask;->period:J

    #@ad
    .line 270
    add-long/2addr v10, v12

    #@ae
    iput-wide v10, v4, Ljava/util/TimerTask;->when:J
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_3

    #@b0
    goto :goto_2

    #@b1
    .line 246
    :catchall_3
    move-exception v8

    #@b2
    :try_start_11
    monitor-exit v9

    #@b3
    throw v8
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_0

    #@b4
    .line 277
    :cond_9
    const-wide/16 v10, 0x0

    #@b6
    :try_start_12
    iput-wide v10, v4, Ljava/util/TimerTask;->when:J
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_3

    #@b8
    goto :goto_3

    #@b9
    .line 286
    .restart local v5    # "taskCompletedNormally":Z
    :catchall_4
    move-exception v8

    #@ba
    .line 287
    if-nez v5, :cond_a

    #@bc
    .line 288
    monitor-enter p0

    #@bd
    .line 289
    const/4 v9, 0x1

    #@be
    :try_start_13
    iput-boolean v9, p0, Ljava/util/Timer$TimerImpl;->cancelled:Z
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_5

    #@c0
    monitor-exit p0

    #@c1
    .line 286
    :cond_a
    throw v8

    #@c2
    .line 288
    :catchall_5
    move-exception v8

    #@c3
    monitor-exit p0

    #@c4
    throw v8
.end method
