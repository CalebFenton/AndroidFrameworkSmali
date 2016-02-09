.class Lcom/android/server/job/JobServiceContext$JobServiceHandler;
.super Landroid/os/Handler;
.source "JobServiceContext.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/job/JobServiceContext;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "JobServiceHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/job/JobServiceContext;


# direct methods
.method constructor <init>(Lcom/android/server/job/JobServiceContext;Landroid/os/Looper;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/job/JobServiceContext;
    .param p2, "looper"    # Landroid/os/Looper;

    #@0
    .prologue
    .line 297
    iput-object p1, p0, Lcom/android/server/job/JobServiceContext$JobServiceHandler;->this$0:Lcom/android/server/job/JobServiceContext;

    #@2
    .line 298
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    #@5
    .line 297
    return-void
.end method

.method private closeAndCleanupJobH(Z)V
    .locals 7
    .param p1, "reschedule"    # Z

    #@0
    .prologue
    const/4 v6, 0x1

    #@1
    .line 527
    iget-object v2, p0, Lcom/android/server/job/JobServiceContext$JobServiceHandler;->this$0:Lcom/android/server/job/JobServiceContext;

    #@3
    invoke-static {v2}, Lcom/android/server/job/JobServiceContext;->-get7(Lcom/android/server/job/JobServiceContext;)Lcom/android/server/job/controllers/JobStatus;

    #@6
    move-result-object v0

    #@7
    .line 528
    .local v0, "completedJob":Lcom/android/server/job/controllers/JobStatus;
    iget-object v2, p0, Lcom/android/server/job/JobServiceContext$JobServiceHandler;->this$0:Lcom/android/server/job/JobServiceContext;

    #@9
    invoke-static {v2}, Lcom/android/server/job/JobServiceContext;->-get5(Lcom/android/server/job/JobServiceContext;)Ljava/lang/Object;

    #@c
    move-result-object v3

    #@d
    monitor-enter v3

    #@e
    .line 530
    :try_start_0
    iget-object v2, p0, Lcom/android/server/job/JobServiceContext$JobServiceHandler;->this$0:Lcom/android/server/job/JobServiceContext;

    #@10
    invoke-static {v2}, Lcom/android/server/job/JobServiceContext;->-get1(Lcom/android/server/job/JobServiceContext;)Lcom/android/internal/app/IBatteryStats;

    #@13
    move-result-object v2

    #@14
    iget-object v4, p0, Lcom/android/server/job/JobServiceContext$JobServiceHandler;->this$0:Lcom/android/server/job/JobServiceContext;

    #@16
    invoke-static {v4}, Lcom/android/server/job/JobServiceContext;->-get7(Lcom/android/server/job/JobServiceContext;)Lcom/android/server/job/controllers/JobStatus;

    #@19
    move-result-object v4

    #@1a
    invoke-virtual {v4}, Lcom/android/server/job/controllers/JobStatus;->getName()Ljava/lang/String;

    #@1d
    move-result-object v4

    #@1e
    iget-object v5, p0, Lcom/android/server/job/JobServiceContext$JobServiceHandler;->this$0:Lcom/android/server/job/JobServiceContext;

    #@20
    invoke-static {v5}, Lcom/android/server/job/JobServiceContext;->-get7(Lcom/android/server/job/JobServiceContext;)Lcom/android/server/job/controllers/JobStatus;

    #@23
    move-result-object v5

    #@24
    invoke-virtual {v5}, Lcom/android/server/job/controllers/JobStatus;->getUid()I

    #@27
    move-result v5

    #@28
    invoke-interface {v2, v4, v5}, Lcom/android/internal/app/IBatteryStats;->noteJobFinish(Ljava/lang/String;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@2b
    .line 534
    :goto_0
    :try_start_1
    iget-object v2, p0, Lcom/android/server/job/JobServiceContext$JobServiceHandler;->this$0:Lcom/android/server/job/JobServiceContext;

    #@2d
    invoke-static {v2}, Lcom/android/server/job/JobServiceContext;->-get8(Lcom/android/server/job/JobServiceContext;)Landroid/os/PowerManager$WakeLock;

    #@30
    move-result-object v2

    #@31
    if-eqz v2, :cond_0

    #@33
    .line 535
    iget-object v2, p0, Lcom/android/server/job/JobServiceContext$JobServiceHandler;->this$0:Lcom/android/server/job/JobServiceContext;

    #@35
    invoke-static {v2}, Lcom/android/server/job/JobServiceContext;->-get8(Lcom/android/server/job/JobServiceContext;)Landroid/os/PowerManager$WakeLock;

    #@38
    move-result-object v2

    #@39
    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->release()V

    #@3c
    .line 537
    :cond_0
    iget-object v2, p0, Lcom/android/server/job/JobServiceContext$JobServiceHandler;->this$0:Lcom/android/server/job/JobServiceContext;

    #@3e
    invoke-static {v2}, Lcom/android/server/job/JobServiceContext;->-get4(Lcom/android/server/job/JobServiceContext;)Landroid/content/Context;

    #@41
    move-result-object v2

    #@42
    iget-object v4, p0, Lcom/android/server/job/JobServiceContext$JobServiceHandler;->this$0:Lcom/android/server/job/JobServiceContext;

    #@44
    invoke-virtual {v2, v4}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    #@47
    .line 538
    iget-object v2, p0, Lcom/android/server/job/JobServiceContext$JobServiceHandler;->this$0:Lcom/android/server/job/JobServiceContext;

    #@49
    const/4 v4, 0x0

    #@4a
    invoke-static {v2, v4}, Lcom/android/server/job/JobServiceContext;->-set3(Lcom/android/server/job/JobServiceContext;Landroid/os/PowerManager$WakeLock;)Landroid/os/PowerManager$WakeLock;

    #@4d
    .line 539
    iget-object v2, p0, Lcom/android/server/job/JobServiceContext$JobServiceHandler;->this$0:Lcom/android/server/job/JobServiceContext;

    #@4f
    const/4 v4, 0x0

    #@50
    invoke-static {v2, v4}, Lcom/android/server/job/JobServiceContext;->-set2(Lcom/android/server/job/JobServiceContext;Lcom/android/server/job/controllers/JobStatus;)Lcom/android/server/job/controllers/JobStatus;

    #@53
    .line 540
    iget-object v2, p0, Lcom/android/server/job/JobServiceContext$JobServiceHandler;->this$0:Lcom/android/server/job/JobServiceContext;

    #@55
    const/4 v4, 0x0

    #@56
    invoke-static {v2, v4}, Lcom/android/server/job/JobServiceContext;->-set1(Lcom/android/server/job/JobServiceContext;Landroid/app/job/JobParameters;)Landroid/app/job/JobParameters;

    #@59
    .line 541
    iget-object v2, p0, Lcom/android/server/job/JobServiceContext$JobServiceHandler;->this$0:Lcom/android/server/job/JobServiceContext;

    #@5b
    const/4 v4, -0x1

    #@5c
    iput v4, v2, Lcom/android/server/job/JobServiceContext;->mVerb:I

    #@5e
    .line 542
    iget-object v2, p0, Lcom/android/server/job/JobServiceContext$JobServiceHandler;->this$0:Lcom/android/server/job/JobServiceContext;

    #@60
    invoke-static {v2}, Lcom/android/server/job/JobServiceContext;->-get2(Lcom/android/server/job/JobServiceContext;)Ljava/util/concurrent/atomic/AtomicBoolean;

    #@63
    move-result-object v2

    #@64
    const/4 v4, 0x0

    #@65
    invoke-virtual {v2, v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    #@68
    .line 543
    iget-object v2, p0, Lcom/android/server/job/JobServiceContext$JobServiceHandler;->this$0:Lcom/android/server/job/JobServiceContext;

    #@6a
    const/4 v4, 0x0

    #@6b
    iput-object v4, v2, Lcom/android/server/job/JobServiceContext;->service:Landroid/app/job/IJobService;

    #@6d
    .line 544
    iget-object v2, p0, Lcom/android/server/job/JobServiceContext$JobServiceHandler;->this$0:Lcom/android/server/job/JobServiceContext;

    #@6f
    const/4 v4, 0x1

    #@70
    invoke-static {v2, v4}, Lcom/android/server/job/JobServiceContext;->-set0(Lcom/android/server/job/JobServiceContext;Z)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@73
    monitor-exit v3

    #@74
    .line 546
    iget-object v2, p0, Lcom/android/server/job/JobServiceContext$JobServiceHandler;->this$0:Lcom/android/server/job/JobServiceContext;

    #@76
    invoke-static {v2}, Lcom/android/server/job/JobServiceContext;->-wrap0(Lcom/android/server/job/JobServiceContext;)V

    #@79
    .line 547
    invoke-virtual {p0, v6}, Lcom/android/server/job/JobServiceContext$JobServiceHandler;->removeMessages(I)V

    #@7c
    .line 548
    const/4 v2, 0x2

    #@7d
    invoke-virtual {p0, v2}, Lcom/android/server/job/JobServiceContext$JobServiceHandler;->removeMessages(I)V

    #@80
    .line 549
    const/4 v2, 0x3

    #@81
    invoke-virtual {p0, v2}, Lcom/android/server/job/JobServiceContext$JobServiceHandler;->removeMessages(I)V

    #@84
    .line 550
    const/4 v2, 0x4

    #@85
    invoke-virtual {p0, v2}, Lcom/android/server/job/JobServiceContext$JobServiceHandler;->removeMessages(I)V

    #@88
    .line 551
    iget-object v2, p0, Lcom/android/server/job/JobServiceContext$JobServiceHandler;->this$0:Lcom/android/server/job/JobServiceContext;

    #@8a
    invoke-static {v2}, Lcom/android/server/job/JobServiceContext;->-get3(Lcom/android/server/job/JobServiceContext;)Lcom/android/server/job/JobCompletedListener;

    #@8d
    move-result-object v2

    #@8e
    invoke-interface {v2, v0, p1}, Lcom/android/server/job/JobCompletedListener;->onJobCompleted(Lcom/android/server/job/controllers/JobStatus;Z)V

    #@91
    .line 526
    return-void

    #@92
    .line 528
    :catchall_0
    move-exception v2

    #@93
    monitor-exit v3

    #@94
    throw v2

    #@95
    .line 531
    :catch_0
    move-exception v1

    #@96
    .local v1, "e":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method private handleCancelH()V
    .locals 3

    #@0
    .prologue
    const/4 v1, 0x1

    #@1
    .line 433
    iget-object v0, p0, Lcom/android/server/job/JobServiceContext$JobServiceHandler;->this$0:Lcom/android/server/job/JobServiceContext;

    #@3
    invoke-static {v0}, Lcom/android/server/job/JobServiceContext;->-get7(Lcom/android/server/job/JobServiceContext;)Lcom/android/server/job/controllers/JobStatus;

    #@6
    move-result-object v0

    #@7
    if-nez v0, :cond_0

    #@9
    .line 437
    return-void

    #@a
    .line 443
    :cond_0
    iget-object v0, p0, Lcom/android/server/job/JobServiceContext$JobServiceHandler;->this$0:Lcom/android/server/job/JobServiceContext;

    #@c
    iget v0, v0, Lcom/android/server/job/JobServiceContext;->mVerb:I

    #@e
    packed-switch v0, :pswitch_data_0

    #@11
    .line 459
    const-string/jumbo v0, "JobServiceContext"

    #@14
    new-instance v1, Ljava/lang/StringBuilder;

    #@16
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@19
    const-string/jumbo v2, "Cancelling a job without a valid verb: "

    #@1c
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1f
    move-result-object v1

    #@20
    iget-object v2, p0, Lcom/android/server/job/JobServiceContext$JobServiceHandler;->this$0:Lcom/android/server/job/JobServiceContext;

    #@22
    iget v2, v2, Lcom/android/server/job/JobServiceContext;->mVerb:I

    #@24
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@27
    move-result-object v1

    #@28
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2b
    move-result-object v1

    #@2c
    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@2f
    .line 432
    :goto_0
    :pswitch_0
    return-void

    #@30
    .line 446
    :pswitch_1
    iget-object v0, p0, Lcom/android/server/job/JobServiceContext$JobServiceHandler;->this$0:Lcom/android/server/job/JobServiceContext;

    #@32
    invoke-static {v0}, Lcom/android/server/job/JobServiceContext;->-get2(Lcom/android/server/job/JobServiceContext;)Ljava/util/concurrent/atomic/AtomicBoolean;

    #@35
    move-result-object v0

    #@36
    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    #@39
    goto :goto_0

    #@3a
    .line 449
    :pswitch_2
    invoke-virtual {p0, v1}, Lcom/android/server/job/JobServiceContext$JobServiceHandler;->hasMessages(I)Z

    #@3d
    move-result v0

    #@3e
    if-eqz v0, :cond_1

    #@40
    .line 451
    return-void

    #@41
    .line 453
    :cond_1
    invoke-direct {p0}, Lcom/android/server/job/JobServiceContext$JobServiceHandler;->sendStopMessageH()V

    #@44
    goto :goto_0

    #@45
    .line 443
    nop

    #@46
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method

.method private handleFinishedH(Z)V
    .locals 4
    .param p1, "reschedule"    # Z

    #@0
    .prologue
    .line 411
    iget-object v0, p0, Lcom/android/server/job/JobServiceContext$JobServiceHandler;->this$0:Lcom/android/server/job/JobServiceContext;

    #@2
    iget v0, v0, Lcom/android/server/job/JobServiceContext;->mVerb:I

    #@4
    packed-switch v0, :pswitch_data_0

    #@7
    .line 417
    const-string/jumbo v0, "JobServiceContext"

    #@a
    new-instance v1, Ljava/lang/StringBuilder;

    #@c
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@f
    const-string/jumbo v2, "Got an execution complete message for a job that wasn\'t beingexecuted. Was "

    #@12
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@15
    move-result-object v1

    #@16
    .line 418
    invoke-static {}, Lcom/android/server/job/JobServiceContext;->-get0()[Ljava/lang/String;

    #@19
    move-result-object v2

    #@1a
    iget-object v3, p0, Lcom/android/server/job/JobServiceContext$JobServiceHandler;->this$0:Lcom/android/server/job/JobServiceContext;

    #@1c
    iget v3, v3, Lcom/android/server/job/JobServiceContext;->mVerb:I

    #@1e
    aget-object v2, v2, v3

    #@20
    .line 417
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@23
    move-result-object v1

    #@24
    .line 418
    const-string/jumbo v2, "."

    #@27
    .line 417
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2a
    move-result-object v1

    #@2b
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2e
    move-result-object v1

    #@2f
    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@32
    .line 410
    :goto_0
    return-void

    #@33
    .line 414
    :pswitch_0
    invoke-direct {p0, p1}, Lcom/android/server/job/JobServiceContext$JobServiceHandler;->closeAndCleanupJobH(Z)V

    #@36
    goto :goto_0

    #@37
    .line 411
    nop

    #@38
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private handleOpTimeoutH()V
    .locals 4

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 466
    iget-object v0, p0, Lcom/android/server/job/JobServiceContext$JobServiceHandler;->this$0:Lcom/android/server/job/JobServiceContext;

    #@3
    iget v0, v0, Lcom/android/server/job/JobServiceContext;->mVerb:I

    #@5
    packed-switch v0, :pswitch_data_0

    #@8
    .line 493
    const-string/jumbo v0, "JobServiceContext"

    #@b
    new-instance v1, Ljava/lang/StringBuilder;

    #@d
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@10
    const-string/jumbo v2, "Handling timeout for an invalid job state: "

    #@13
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@16
    move-result-object v1

    #@17
    .line 494
    iget-object v2, p0, Lcom/android/server/job/JobServiceContext$JobServiceHandler;->this$0:Lcom/android/server/job/JobServiceContext;

    #@19
    invoke-static {v2}, Lcom/android/server/job/JobServiceContext;->-get7(Lcom/android/server/job/JobServiceContext;)Lcom/android/server/job/controllers/JobStatus;

    #@1c
    move-result-object v2

    #@1d
    invoke-virtual {v2}, Lcom/android/server/job/controllers/JobStatus;->toShortString()Ljava/lang/String;

    #@20
    move-result-object v2

    #@21
    .line 493
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@24
    move-result-object v1

    #@25
    .line 494
    const-string/jumbo v2, ", dropping."

    #@28
    .line 493
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2b
    move-result-object v1

    #@2c
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2f
    move-result-object v1

    #@30
    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@33
    .line 495
    invoke-direct {p0, v3}, Lcom/android/server/job/JobServiceContext$JobServiceHandler;->closeAndCleanupJobH(Z)V

    #@36
    .line 465
    :goto_0
    return-void

    #@37
    .line 468
    :pswitch_0
    const-string/jumbo v0, "JobServiceContext"

    #@3a
    new-instance v1, Ljava/lang/StringBuilder;

    #@3c
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@3f
    const-string/jumbo v2, "Time-out while trying to bind "

    #@42
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@45
    move-result-object v1

    #@46
    iget-object v2, p0, Lcom/android/server/job/JobServiceContext$JobServiceHandler;->this$0:Lcom/android/server/job/JobServiceContext;

    #@48
    invoke-static {v2}, Lcom/android/server/job/JobServiceContext;->-get7(Lcom/android/server/job/JobServiceContext;)Lcom/android/server/job/controllers/JobStatus;

    #@4b
    move-result-object v2

    #@4c
    invoke-virtual {v2}, Lcom/android/server/job/controllers/JobStatus;->toShortString()Ljava/lang/String;

    #@4f
    move-result-object v2

    #@50
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@53
    move-result-object v1

    #@54
    .line 469
    const-string/jumbo v2, ", dropping."

    #@57
    .line 468
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5a
    move-result-object v1

    #@5b
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@5e
    move-result-object v1

    #@5f
    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@62
    .line 470
    invoke-direct {p0, v3}, Lcom/android/server/job/JobServiceContext$JobServiceHandler;->closeAndCleanupJobH(Z)V

    #@65
    goto :goto_0

    #@66
    .line 476
    :pswitch_1
    const-string/jumbo v0, "JobServiceContext"

    #@69
    new-instance v1, Ljava/lang/StringBuilder;

    #@6b
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@6e
    const-string/jumbo v2, "No response from client for onStartJob \'"

    #@71
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@74
    move-result-object v1

    #@75
    .line 477
    iget-object v2, p0, Lcom/android/server/job/JobServiceContext$JobServiceHandler;->this$0:Lcom/android/server/job/JobServiceContext;

    #@77
    invoke-static {v2}, Lcom/android/server/job/JobServiceContext;->-get7(Lcom/android/server/job/JobServiceContext;)Lcom/android/server/job/controllers/JobStatus;

    #@7a
    move-result-object v2

    #@7b
    invoke-virtual {v2}, Lcom/android/server/job/controllers/JobStatus;->toShortString()Ljava/lang/String;

    #@7e
    move-result-object v2

    #@7f
    .line 476
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@82
    move-result-object v1

    #@83
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@86
    move-result-object v1

    #@87
    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@8a
    .line 478
    invoke-direct {p0, v3}, Lcom/android/server/job/JobServiceContext$JobServiceHandler;->closeAndCleanupJobH(Z)V

    #@8d
    goto :goto_0

    #@8e
    .line 482
    :pswitch_2
    const-string/jumbo v0, "JobServiceContext"

    #@91
    new-instance v1, Ljava/lang/StringBuilder;

    #@93
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@96
    const-string/jumbo v2, "No response from client for onStopJob, \'"

    #@99
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@9c
    move-result-object v1

    #@9d
    .line 483
    iget-object v2, p0, Lcom/android/server/job/JobServiceContext$JobServiceHandler;->this$0:Lcom/android/server/job/JobServiceContext;

    #@9f
    invoke-static {v2}, Lcom/android/server/job/JobServiceContext;->-get7(Lcom/android/server/job/JobServiceContext;)Lcom/android/server/job/controllers/JobStatus;

    #@a2
    move-result-object v2

    #@a3
    invoke-virtual {v2}, Lcom/android/server/job/controllers/JobStatus;->toShortString()Ljava/lang/String;

    #@a6
    move-result-object v2

    #@a7
    .line 482
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@aa
    move-result-object v1

    #@ab
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@ae
    move-result-object v1

    #@af
    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@b2
    .line 484
    const/4 v0, 0x1

    #@b3
    invoke-direct {p0, v0}, Lcom/android/server/job/JobServiceContext$JobServiceHandler;->closeAndCleanupJobH(Z)V

    #@b6
    goto :goto_0

    #@b7
    .line 488
    :pswitch_3
    const-string/jumbo v0, "JobServiceContext"

    #@ba
    new-instance v1, Ljava/lang/StringBuilder;

    #@bc
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@bf
    const-string/jumbo v2, "Client timed out while executing (no jobFinished received). sending onStop. "

    #@c2
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@c5
    move-result-object v1

    #@c6
    .line 489
    iget-object v2, p0, Lcom/android/server/job/JobServiceContext$JobServiceHandler;->this$0:Lcom/android/server/job/JobServiceContext;

    #@c8
    invoke-static {v2}, Lcom/android/server/job/JobServiceContext;->-get7(Lcom/android/server/job/JobServiceContext;)Lcom/android/server/job/controllers/JobStatus;

    #@cb
    move-result-object v2

    #@cc
    invoke-virtual {v2}, Lcom/android/server/job/controllers/JobStatus;->toShortString()Ljava/lang/String;

    #@cf
    move-result-object v2

    #@d0
    .line 488
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@d3
    move-result-object v1

    #@d4
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@d7
    move-result-object v1

    #@d8
    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@db
    .line 490
    invoke-direct {p0}, Lcom/android/server/job/JobServiceContext$JobServiceHandler;->sendStopMessageH()V

    #@de
    goto/16 :goto_0

    #@e0
    .line 466
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method

.method private handleServiceBoundH()V
    .locals 6

    #@0
    .prologue
    const/4 v2, 0x1

    #@1
    const/4 v5, 0x0

    #@2
    .line 347
    iget-object v1, p0, Lcom/android/server/job/JobServiceContext$JobServiceHandler;->this$0:Lcom/android/server/job/JobServiceContext;

    #@4
    iget v1, v1, Lcom/android/server/job/JobServiceContext;->mVerb:I

    #@6
    if-eqz v1, :cond_0

    #@8
    .line 348
    const-string/jumbo v1, "JobServiceContext"

    #@b
    new-instance v2, Ljava/lang/StringBuilder;

    #@d
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@10
    const-string/jumbo v3, "Sending onStartJob for a job that isn\'t pending. "

    #@13
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@16
    move-result-object v2

    #@17
    .line 349
    invoke-static {}, Lcom/android/server/job/JobServiceContext;->-get0()[Ljava/lang/String;

    #@1a
    move-result-object v3

    #@1b
    iget-object v4, p0, Lcom/android/server/job/JobServiceContext$JobServiceHandler;->this$0:Lcom/android/server/job/JobServiceContext;

    #@1d
    iget v4, v4, Lcom/android/server/job/JobServiceContext;->mVerb:I

    #@1f
    aget-object v3, v3, v4

    #@21
    .line 348
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@24
    move-result-object v2

    #@25
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@28
    move-result-object v2

    #@29
    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@2c
    .line 350
    invoke-direct {p0, v5}, Lcom/android/server/job/JobServiceContext$JobServiceHandler;->closeAndCleanupJobH(Z)V

    #@2f
    .line 351
    return-void

    #@30
    .line 353
    :cond_0
    iget-object v1, p0, Lcom/android/server/job/JobServiceContext$JobServiceHandler;->this$0:Lcom/android/server/job/JobServiceContext;

    #@32
    invoke-static {v1}, Lcom/android/server/job/JobServiceContext;->-get2(Lcom/android/server/job/JobServiceContext;)Ljava/util/concurrent/atomic/AtomicBoolean;

    #@35
    move-result-object v1

    #@36
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    #@39
    move-result v1

    #@3a
    if-eqz v1, :cond_1

    #@3c
    .line 358
    invoke-direct {p0, v2}, Lcom/android/server/job/JobServiceContext$JobServiceHandler;->closeAndCleanupJobH(Z)V

    #@3f
    .line 359
    return-void

    #@40
    .line 362
    :cond_1
    :try_start_0
    iget-object v1, p0, Lcom/android/server/job/JobServiceContext$JobServiceHandler;->this$0:Lcom/android/server/job/JobServiceContext;

    #@42
    const/4 v2, 0x1

    #@43
    iput v2, v1, Lcom/android/server/job/JobServiceContext;->mVerb:I

    #@45
    .line 363
    iget-object v1, p0, Lcom/android/server/job/JobServiceContext$JobServiceHandler;->this$0:Lcom/android/server/job/JobServiceContext;

    #@47
    invoke-static {v1}, Lcom/android/server/job/JobServiceContext;->-wrap1(Lcom/android/server/job/JobServiceContext;)V

    #@4a
    .line 364
    iget-object v1, p0, Lcom/android/server/job/JobServiceContext$JobServiceHandler;->this$0:Lcom/android/server/job/JobServiceContext;

    #@4c
    iget-object v1, v1, Lcom/android/server/job/JobServiceContext;->service:Landroid/app/job/IJobService;

    #@4e
    iget-object v2, p0, Lcom/android/server/job/JobServiceContext$JobServiceHandler;->this$0:Lcom/android/server/job/JobServiceContext;

    #@50
    invoke-static {v2}, Lcom/android/server/job/JobServiceContext;->-get6(Lcom/android/server/job/JobServiceContext;)Landroid/app/job/JobParameters;

    #@53
    move-result-object v2

    #@54
    invoke-interface {v1, v2}, Landroid/app/job/IJobService;->startJob(Landroid/app/job/JobParameters;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@57
    .line 343
    :goto_0
    return-void

    #@58
    .line 365
    :catch_0
    move-exception v0

    #@59
    .line 366
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "JobServiceContext"

    #@5c
    new-instance v2, Ljava/lang/StringBuilder;

    #@5e
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@61
    const-string/jumbo v3, "Error sending onStart message to \'"

    #@64
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@67
    move-result-object v2

    #@68
    .line 367
    iget-object v3, p0, Lcom/android/server/job/JobServiceContext$JobServiceHandler;->this$0:Lcom/android/server/job/JobServiceContext;

    #@6a
    invoke-static {v3}, Lcom/android/server/job/JobServiceContext;->-get7(Lcom/android/server/job/JobServiceContext;)Lcom/android/server/job/controllers/JobStatus;

    #@6d
    move-result-object v3

    #@6e
    invoke-virtual {v3}, Lcom/android/server/job/controllers/JobStatus;->getServiceComponent()Landroid/content/ComponentName;

    #@71
    move-result-object v3

    #@72
    invoke-virtual {v3}, Landroid/content/ComponentName;->getShortClassName()Ljava/lang/String;

    #@75
    move-result-object v3

    #@76
    .line 366
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@79
    move-result-object v2

    #@7a
    .line 367
    const-string/jumbo v3, "\' "

    #@7d
    .line 366
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@80
    move-result-object v2

    #@81
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@84
    move-result-object v2

    #@85
    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@88
    goto :goto_0
.end method

.method private handleStartedH(Z)V
    .locals 4
    .param p1, "workOngoing"    # Z

    #@0
    .prologue
    .line 379
    iget-object v0, p0, Lcom/android/server/job/JobServiceContext$JobServiceHandler;->this$0:Lcom/android/server/job/JobServiceContext;

    #@2
    iget v0, v0, Lcom/android/server/job/JobServiceContext;->mVerb:I

    #@4
    packed-switch v0, :pswitch_data_0

    #@7
    .line 398
    const-string/jumbo v0, "JobServiceContext"

    #@a
    new-instance v1, Ljava/lang/StringBuilder;

    #@c
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@f
    const-string/jumbo v2, "Handling started job but job wasn\'t starting! Was "

    #@12
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@15
    move-result-object v1

    #@16
    .line 399
    invoke-static {}, Lcom/android/server/job/JobServiceContext;->-get0()[Ljava/lang/String;

    #@19
    move-result-object v2

    #@1a
    iget-object v3, p0, Lcom/android/server/job/JobServiceContext$JobServiceHandler;->this$0:Lcom/android/server/job/JobServiceContext;

    #@1c
    iget v3, v3, Lcom/android/server/job/JobServiceContext;->mVerb:I

    #@1e
    aget-object v2, v2, v3

    #@20
    .line 398
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@23
    move-result-object v1

    #@24
    .line 399
    const-string/jumbo v2, "."

    #@27
    .line 398
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2a
    move-result-object v1

    #@2b
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2e
    move-result-object v1

    #@2f
    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@32
    .line 400
    return-void

    #@33
    .line 381
    :pswitch_0
    iget-object v0, p0, Lcom/android/server/job/JobServiceContext$JobServiceHandler;->this$0:Lcom/android/server/job/JobServiceContext;

    #@35
    const/4 v1, 0x2

    #@36
    iput v1, v0, Lcom/android/server/job/JobServiceContext;->mVerb:I

    #@38
    .line 382
    if-nez p1, :cond_0

    #@3a
    .line 384
    const/4 v0, 0x0

    #@3b
    invoke-direct {p0, v0}, Lcom/android/server/job/JobServiceContext$JobServiceHandler;->handleFinishedH(Z)V

    #@3e
    .line 385
    return-void

    #@3f
    .line 387
    :cond_0
    iget-object v0, p0, Lcom/android/server/job/JobServiceContext$JobServiceHandler;->this$0:Lcom/android/server/job/JobServiceContext;

    #@41
    invoke-static {v0}, Lcom/android/server/job/JobServiceContext;->-get2(Lcom/android/server/job/JobServiceContext;)Ljava/util/concurrent/atomic/AtomicBoolean;

    #@44
    move-result-object v0

    #@45
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    #@48
    move-result v0

    #@49
    if-eqz v0, :cond_1

    #@4b
    .line 392
    invoke-direct {p0}, Lcom/android/server/job/JobServiceContext$JobServiceHandler;->handleCancelH()V

    #@4e
    .line 393
    return-void

    #@4f
    .line 395
    :cond_1
    iget-object v0, p0, Lcom/android/server/job/JobServiceContext$JobServiceHandler;->this$0:Lcom/android/server/job/JobServiceContext;

    #@51
    invoke-static {v0}, Lcom/android/server/job/JobServiceContext;->-wrap1(Lcom/android/server/job/JobServiceContext;)V

    #@54
    .line 378
    return-void

    #@55
    .line 379
    nop

    #@56
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method private sendStopMessageH()V
    .locals 5

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 504
    iget-object v1, p0, Lcom/android/server/job/JobServiceContext$JobServiceHandler;->this$0:Lcom/android/server/job/JobServiceContext;

    #@3
    invoke-static {v1}, Lcom/android/server/job/JobServiceContext;->-wrap0(Lcom/android/server/job/JobServiceContext;)V

    #@6
    .line 505
    iget-object v1, p0, Lcom/android/server/job/JobServiceContext$JobServiceHandler;->this$0:Lcom/android/server/job/JobServiceContext;

    #@8
    iget v1, v1, Lcom/android/server/job/JobServiceContext;->mVerb:I

    #@a
    const/4 v2, 0x2

    #@b
    if-eq v1, v2, :cond_0

    #@d
    .line 506
    const-string/jumbo v1, "JobServiceContext"

    #@10
    new-instance v2, Ljava/lang/StringBuilder;

    #@12
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@15
    const-string/jumbo v3, "Sending onStopJob for a job that isn\'t started. "

    #@18
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1b
    move-result-object v2

    #@1c
    iget-object v3, p0, Lcom/android/server/job/JobServiceContext$JobServiceHandler;->this$0:Lcom/android/server/job/JobServiceContext;

    #@1e
    invoke-static {v3}, Lcom/android/server/job/JobServiceContext;->-get7(Lcom/android/server/job/JobServiceContext;)Lcom/android/server/job/controllers/JobStatus;

    #@21
    move-result-object v3

    #@22
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@25
    move-result-object v2

    #@26
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@29
    move-result-object v2

    #@2a
    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@2d
    .line 507
    invoke-direct {p0, v4}, Lcom/android/server/job/JobServiceContext$JobServiceHandler;->closeAndCleanupJobH(Z)V

    #@30
    .line 508
    return-void

    #@31
    .line 511
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/android/server/job/JobServiceContext$JobServiceHandler;->this$0:Lcom/android/server/job/JobServiceContext;

    #@33
    const/4 v2, 0x3

    #@34
    iput v2, v1, Lcom/android/server/job/JobServiceContext;->mVerb:I

    #@36
    .line 512
    iget-object v1, p0, Lcom/android/server/job/JobServiceContext$JobServiceHandler;->this$0:Lcom/android/server/job/JobServiceContext;

    #@38
    invoke-static {v1}, Lcom/android/server/job/JobServiceContext;->-wrap1(Lcom/android/server/job/JobServiceContext;)V

    #@3b
    .line 513
    iget-object v1, p0, Lcom/android/server/job/JobServiceContext$JobServiceHandler;->this$0:Lcom/android/server/job/JobServiceContext;

    #@3d
    iget-object v1, v1, Lcom/android/server/job/JobServiceContext;->service:Landroid/app/job/IJobService;

    #@3f
    iget-object v2, p0, Lcom/android/server/job/JobServiceContext$JobServiceHandler;->this$0:Lcom/android/server/job/JobServiceContext;

    #@41
    invoke-static {v2}, Lcom/android/server/job/JobServiceContext;->-get6(Lcom/android/server/job/JobServiceContext;)Landroid/app/job/JobParameters;

    #@44
    move-result-object v2

    #@45
    invoke-interface {v1, v2}, Landroid/app/job/IJobService;->stopJob(Landroid/app/job/JobParameters;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@48
    .line 503
    :goto_0
    return-void

    #@49
    .line 514
    :catch_0
    move-exception v0

    #@4a
    .line 515
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "JobServiceContext"

    #@4d
    const-string/jumbo v2, "Error sending onStopJob to client."

    #@50
    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@53
    .line 516
    invoke-direct {p0, v4}, Lcom/android/server/job/JobServiceContext$JobServiceHandler;->closeAndCleanupJobH(Z)V

    #@56
    goto :goto_0
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5
    .param p1, "message"    # Landroid/os/Message;

    #@0
    .prologue
    const/4 v4, 0x1

    #@1
    .line 303
    iget v2, p1, Landroid/os/Message;->what:I

    #@3
    packed-switch v2, :pswitch_data_0

    #@6
    .line 338
    const-string/jumbo v2, "JobServiceContext"

    #@9
    new-instance v3, Ljava/lang/StringBuilder;

    #@b
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@e
    const-string/jumbo v4, "Unrecognised message: "

    #@11
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@14
    move-result-object v3

    #@15
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@18
    move-result-object v3

    #@19
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1c
    move-result-object v3

    #@1d
    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@20
    .line 302
    :cond_0
    :goto_0
    return-void

    #@21
    .line 305
    :pswitch_0
    iget-object v2, p0, Lcom/android/server/job/JobServiceContext$JobServiceHandler;->this$0:Lcom/android/server/job/JobServiceContext;

    #@23
    invoke-static {v2}, Lcom/android/server/job/JobServiceContext;->-wrap0(Lcom/android/server/job/JobServiceContext;)V

    #@26
    .line 306
    invoke-direct {p0}, Lcom/android/server/job/JobServiceContext$JobServiceHandler;->handleServiceBoundH()V

    #@29
    goto :goto_0

    #@2a
    .line 313
    :pswitch_1
    iget-object v2, p0, Lcom/android/server/job/JobServiceContext$JobServiceHandler;->this$0:Lcom/android/server/job/JobServiceContext;

    #@2c
    invoke-static {v2}, Lcom/android/server/job/JobServiceContext;->-wrap0(Lcom/android/server/job/JobServiceContext;)V

    #@2f
    .line 315
    iget-object v2, p0, Lcom/android/server/job/JobServiceContext$JobServiceHandler;->this$0:Lcom/android/server/job/JobServiceContext;

    #@31
    iget v2, v2, Lcom/android/server/job/JobServiceContext;->mVerb:I

    #@33
    if-ne v2, v4, :cond_2

    #@35
    .line 316
    iget v2, p1, Landroid/os/Message;->arg2:I

    #@37
    if-ne v2, v4, :cond_1

    #@39
    const/4 v1, 0x1

    #@3a
    .line 317
    .local v1, "workOngoing":Z
    :goto_1
    invoke-direct {p0, v1}, Lcom/android/server/job/JobServiceContext$JobServiceHandler;->handleStartedH(Z)V

    #@3d
    goto :goto_0

    #@3e
    .line 316
    .end local v1    # "workOngoing":Z
    :cond_1
    const/4 v1, 0x0

    #@3f
    .restart local v1    # "workOngoing":Z
    goto :goto_1

    #@40
    .line 318
    .end local v1    # "workOngoing":Z
    :cond_2
    iget-object v2, p0, Lcom/android/server/job/JobServiceContext$JobServiceHandler;->this$0:Lcom/android/server/job/JobServiceContext;

    #@42
    iget v2, v2, Lcom/android/server/job/JobServiceContext;->mVerb:I

    #@44
    const/4 v3, 0x2

    #@45
    if-eq v2, v3, :cond_3

    #@47
    .line 319
    iget-object v2, p0, Lcom/android/server/job/JobServiceContext$JobServiceHandler;->this$0:Lcom/android/server/job/JobServiceContext;

    #@49
    iget v2, v2, Lcom/android/server/job/JobServiceContext;->mVerb:I

    #@4b
    const/4 v3, 0x3

    #@4c
    if-ne v2, v3, :cond_0

    #@4e
    .line 320
    :cond_3
    iget v2, p1, Landroid/os/Message;->arg2:I

    #@50
    if-ne v2, v4, :cond_4

    #@52
    const/4 v0, 0x1

    #@53
    .line 321
    .local v0, "reschedule":Z
    :goto_2
    invoke-direct {p0, v0}, Lcom/android/server/job/JobServiceContext$JobServiceHandler;->handleFinishedH(Z)V

    #@56
    goto :goto_0

    #@57
    .line 320
    .end local v0    # "reschedule":Z
    :cond_4
    const/4 v0, 0x0

    #@58
    .restart local v0    # "reschedule":Z
    goto :goto_2

    #@59
    .line 329
    .end local v0    # "reschedule":Z
    :pswitch_2
    invoke-direct {p0}, Lcom/android/server/job/JobServiceContext$JobServiceHandler;->handleCancelH()V

    #@5c
    goto :goto_0

    #@5d
    .line 332
    :pswitch_3
    invoke-direct {p0}, Lcom/android/server/job/JobServiceContext$JobServiceHandler;->handleOpTimeoutH()V

    #@60
    goto :goto_0

    #@61
    .line 335
    :pswitch_4
    invoke-direct {p0, v4}, Lcom/android/server/job/JobServiceContext$JobServiceHandler;->closeAndCleanupJobH(Z)V

    #@64
    goto :goto_0

    #@65
    .line 303
    nop

    #@66
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_4
    .end packed-switch
.end method
