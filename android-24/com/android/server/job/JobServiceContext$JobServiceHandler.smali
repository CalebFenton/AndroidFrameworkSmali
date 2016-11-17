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
    .line 345
    iput-object p1, p0, Lcom/android/server/job/JobServiceContext$JobServiceHandler;->this$0:Lcom/android/server/job/JobServiceContext;

    #@2
    .line 346
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    #@5
    .line 345
    return-void
.end method

.method private closeAndCleanupJobH(Z)V
    .locals 8
    .param p1, "reschedule"    # Z

    #@0
    .prologue
    const/4 v7, 0x1

    #@1
    const/4 v6, 0x4

    #@2
    .line 583
    iget-object v2, p0, Lcom/android/server/job/JobServiceContext$JobServiceHandler;->this$0:Lcom/android/server/job/JobServiceContext;

    #@4
    invoke-static {v2}, Lcom/android/server/job/JobServiceContext;->-get6(Lcom/android/server/job/JobServiceContext;)Ljava/lang/Object;

    #@7
    move-result-object v3

    #@8
    monitor-enter v3

    #@9
    .line 584
    :try_start_0
    iget-object v2, p0, Lcom/android/server/job/JobServiceContext$JobServiceHandler;->this$0:Lcom/android/server/job/JobServiceContext;

    #@b
    iget v2, v2, Lcom/android/server/job/JobServiceContext;->mVerb:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@d
    if-ne v2, v6, :cond_0

    #@f
    monitor-exit v3

    #@10
    .line 585
    return-void

    #@11
    .line 587
    :cond_0
    :try_start_1
    iget-object v2, p0, Lcom/android/server/job/JobServiceContext$JobServiceHandler;->this$0:Lcom/android/server/job/JobServiceContext;

    #@13
    invoke-static {v2}, Lcom/android/server/job/JobServiceContext;->-get8(Lcom/android/server/job/JobServiceContext;)Lcom/android/server/job/controllers/JobStatus;

    #@16
    move-result-object v0

    #@17
    .line 588
    .local v0, "completedJob":Lcom/android/server/job/controllers/JobStatus;
    iget-object v2, p0, Lcom/android/server/job/JobServiceContext$JobServiceHandler;->this$0:Lcom/android/server/job/JobServiceContext;

    #@19
    invoke-static {v2}, Lcom/android/server/job/JobServiceContext;->-get5(Lcom/android/server/job/JobServiceContext;)Lcom/android/server/job/JobPackageTracker;

    #@1c
    move-result-object v2

    #@1d
    invoke-virtual {v2, v0}, Lcom/android/server/job/JobPackageTracker;->noteInactive(Lcom/android/server/job/controllers/JobStatus;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@20
    .line 590
    :try_start_2
    iget-object v2, p0, Lcom/android/server/job/JobServiceContext$JobServiceHandler;->this$0:Lcom/android/server/job/JobServiceContext;

    #@22
    invoke-static {v2}, Lcom/android/server/job/JobServiceContext;->-get1(Lcom/android/server/job/JobServiceContext;)Lcom/android/internal/app/IBatteryStats;

    #@25
    move-result-object v2

    #@26
    iget-object v4, p0, Lcom/android/server/job/JobServiceContext$JobServiceHandler;->this$0:Lcom/android/server/job/JobServiceContext;

    #@28
    invoke-static {v4}, Lcom/android/server/job/JobServiceContext;->-get8(Lcom/android/server/job/JobServiceContext;)Lcom/android/server/job/controllers/JobStatus;

    #@2b
    move-result-object v4

    #@2c
    invoke-virtual {v4}, Lcom/android/server/job/controllers/JobStatus;->getBatteryName()Ljava/lang/String;

    #@2f
    move-result-object v4

    #@30
    .line 591
    iget-object v5, p0, Lcom/android/server/job/JobServiceContext$JobServiceHandler;->this$0:Lcom/android/server/job/JobServiceContext;

    #@32
    invoke-static {v5}, Lcom/android/server/job/JobServiceContext;->-get8(Lcom/android/server/job/JobServiceContext;)Lcom/android/server/job/controllers/JobStatus;

    #@35
    move-result-object v5

    #@36
    invoke-virtual {v5}, Lcom/android/server/job/controllers/JobStatus;->getSourceUid()I

    #@39
    move-result v5

    #@3a
    .line 590
    invoke-interface {v2, v4, v5}, Lcom/android/internal/app/IBatteryStats;->noteJobFinish(Ljava/lang/String;I)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@3d
    .line 595
    :goto_0
    :try_start_3
    iget-object v2, p0, Lcom/android/server/job/JobServiceContext$JobServiceHandler;->this$0:Lcom/android/server/job/JobServiceContext;

    #@3f
    invoke-static {v2}, Lcom/android/server/job/JobServiceContext;->-get9(Lcom/android/server/job/JobServiceContext;)Landroid/os/PowerManager$WakeLock;

    #@42
    move-result-object v2

    #@43
    if-eqz v2, :cond_1

    #@45
    .line 596
    iget-object v2, p0, Lcom/android/server/job/JobServiceContext$JobServiceHandler;->this$0:Lcom/android/server/job/JobServiceContext;

    #@47
    invoke-static {v2}, Lcom/android/server/job/JobServiceContext;->-get9(Lcom/android/server/job/JobServiceContext;)Landroid/os/PowerManager$WakeLock;

    #@4a
    move-result-object v2

    #@4b
    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->release()V

    #@4e
    .line 598
    :cond_1
    iget-object v2, p0, Lcom/android/server/job/JobServiceContext$JobServiceHandler;->this$0:Lcom/android/server/job/JobServiceContext;

    #@50
    invoke-static {v2}, Lcom/android/server/job/JobServiceContext;->-get4(Lcom/android/server/job/JobServiceContext;)Landroid/content/Context;

    #@53
    move-result-object v2

    #@54
    iget-object v4, p0, Lcom/android/server/job/JobServiceContext$JobServiceHandler;->this$0:Lcom/android/server/job/JobServiceContext;

    #@56
    invoke-virtual {v2, v4}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    #@59
    .line 599
    iget-object v2, p0, Lcom/android/server/job/JobServiceContext$JobServiceHandler;->this$0:Lcom/android/server/job/JobServiceContext;

    #@5b
    const/4 v4, 0x0

    #@5c
    invoke-static {v2, v4}, Lcom/android/server/job/JobServiceContext;->-set4(Lcom/android/server/job/JobServiceContext;Landroid/os/PowerManager$WakeLock;)Landroid/os/PowerManager$WakeLock;

    #@5f
    .line 600
    iget-object v2, p0, Lcom/android/server/job/JobServiceContext$JobServiceHandler;->this$0:Lcom/android/server/job/JobServiceContext;

    #@61
    const/4 v4, 0x0

    #@62
    invoke-static {v2, v4}, Lcom/android/server/job/JobServiceContext;->-set3(Lcom/android/server/job/JobServiceContext;Lcom/android/server/job/controllers/JobStatus;)Lcom/android/server/job/controllers/JobStatus;

    #@65
    .line 601
    iget-object v2, p0, Lcom/android/server/job/JobServiceContext$JobServiceHandler;->this$0:Lcom/android/server/job/JobServiceContext;

    #@67
    const/4 v4, 0x0

    #@68
    invoke-static {v2, v4}, Lcom/android/server/job/JobServiceContext;->-set1(Lcom/android/server/job/JobServiceContext;Landroid/app/job/JobParameters;)Landroid/app/job/JobParameters;

    #@6b
    .line 602
    iget-object v2, p0, Lcom/android/server/job/JobServiceContext$JobServiceHandler;->this$0:Lcom/android/server/job/JobServiceContext;

    #@6d
    const/4 v4, 0x4

    #@6e
    iput v4, v2, Lcom/android/server/job/JobServiceContext;->mVerb:I

    #@70
    .line 603
    iget-object v2, p0, Lcom/android/server/job/JobServiceContext$JobServiceHandler;->this$0:Lcom/android/server/job/JobServiceContext;

    #@72
    invoke-static {v2}, Lcom/android/server/job/JobServiceContext;->-get2(Lcom/android/server/job/JobServiceContext;)Ljava/util/concurrent/atomic/AtomicBoolean;

    #@75
    move-result-object v2

    #@76
    const/4 v4, 0x0

    #@77
    invoke-virtual {v2, v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    #@7a
    .line 604
    iget-object v2, p0, Lcom/android/server/job/JobServiceContext$JobServiceHandler;->this$0:Lcom/android/server/job/JobServiceContext;

    #@7c
    const/4 v4, 0x0

    #@7d
    iput-object v4, v2, Lcom/android/server/job/JobServiceContext;->service:Landroid/app/job/IJobService;

    #@7f
    .line 605
    iget-object v2, p0, Lcom/android/server/job/JobServiceContext$JobServiceHandler;->this$0:Lcom/android/server/job/JobServiceContext;

    #@81
    const/4 v4, 0x1

    #@82
    invoke-static {v2, v4}, Lcom/android/server/job/JobServiceContext;->-set0(Lcom/android/server/job/JobServiceContext;Z)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@85
    monitor-exit v3

    #@86
    .line 607
    iget-object v2, p0, Lcom/android/server/job/JobServiceContext$JobServiceHandler;->this$0:Lcom/android/server/job/JobServiceContext;

    #@88
    invoke-static {v2}, Lcom/android/server/job/JobServiceContext;->-wrap0(Lcom/android/server/job/JobServiceContext;)V

    #@8b
    .line 608
    invoke-virtual {p0, v7}, Lcom/android/server/job/JobServiceContext$JobServiceHandler;->removeMessages(I)V

    #@8e
    .line 609
    const/4 v2, 0x2

    #@8f
    invoke-virtual {p0, v2}, Lcom/android/server/job/JobServiceContext$JobServiceHandler;->removeMessages(I)V

    #@92
    .line 610
    const/4 v2, 0x3

    #@93
    invoke-virtual {p0, v2}, Lcom/android/server/job/JobServiceContext$JobServiceHandler;->removeMessages(I)V

    #@96
    .line 611
    invoke-virtual {p0, v6}, Lcom/android/server/job/JobServiceContext$JobServiceHandler;->removeMessages(I)V

    #@99
    .line 612
    iget-object v2, p0, Lcom/android/server/job/JobServiceContext$JobServiceHandler;->this$0:Lcom/android/server/job/JobServiceContext;

    #@9b
    invoke-static {v2}, Lcom/android/server/job/JobServiceContext;->-get3(Lcom/android/server/job/JobServiceContext;)Lcom/android/server/job/JobCompletedListener;

    #@9e
    move-result-object v2

    #@9f
    invoke-interface {v2, v0, p1}, Lcom/android/server/job/JobCompletedListener;->onJobCompleted(Lcom/android/server/job/controllers/JobStatus;Z)V

    #@a2
    .line 581
    return-void

    #@a3
    .line 583
    .end local v0    # "completedJob":Lcom/android/server/job/controllers/JobStatus;
    :catchall_0
    move-exception v2

    #@a4
    monitor-exit v3

    #@a5
    throw v2

    #@a6
    .line 592
    .restart local v0    # "completedJob":Lcom/android/server/job/controllers/JobStatus;
    :catch_0
    move-exception v1

    #@a7
    .local v1, "e":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method private handleCancelH()V
    .locals 3

    #@0
    .prologue
    const/4 v1, 0x1

    #@1
    .line 497
    iget-object v0, p0, Lcom/android/server/job/JobServiceContext$JobServiceHandler;->this$0:Lcom/android/server/job/JobServiceContext;

    #@3
    iget v0, v0, Lcom/android/server/job/JobServiceContext;->mVerb:I

    #@5
    packed-switch v0, :pswitch_data_0

    #@8
    .line 513
    const-string/jumbo v0, "JobServiceContext"

    #@b
    new-instance v1, Ljava/lang/StringBuilder;

    #@d
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@10
    const-string/jumbo v2, "Cancelling a job without a valid verb: "

    #@13
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@16
    move-result-object v1

    #@17
    iget-object v2, p0, Lcom/android/server/job/JobServiceContext$JobServiceHandler;->this$0:Lcom/android/server/job/JobServiceContext;

    #@19
    iget v2, v2, Lcom/android/server/job/JobServiceContext;->mVerb:I

    #@1b
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@1e
    move-result-object v1

    #@1f
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@22
    move-result-object v1

    #@23
    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@26
    .line 492
    :goto_0
    :pswitch_0
    return-void

    #@27
    .line 500
    :pswitch_1
    iget-object v0, p0, Lcom/android/server/job/JobServiceContext$JobServiceHandler;->this$0:Lcom/android/server/job/JobServiceContext;

    #@29
    invoke-static {v0}, Lcom/android/server/job/JobServiceContext;->-get2(Lcom/android/server/job/JobServiceContext;)Ljava/util/concurrent/atomic/AtomicBoolean;

    #@2c
    move-result-object v0

    #@2d
    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    #@30
    goto :goto_0

    #@31
    .line 503
    :pswitch_2
    invoke-virtual {p0, v1}, Lcom/android/server/job/JobServiceContext$JobServiceHandler;->hasMessages(I)Z

    #@34
    move-result v0

    #@35
    if-eqz v0, :cond_0

    #@37
    .line 505
    return-void

    #@38
    .line 507
    :cond_0
    invoke-direct {p0}, Lcom/android/server/job/JobServiceContext$JobServiceHandler;->sendStopMessageH()V

    #@3b
    goto :goto_0

    #@3c
    .line 497
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
    .line 471
    iget-object v0, p0, Lcom/android/server/job/JobServiceContext$JobServiceHandler;->this$0:Lcom/android/server/job/JobServiceContext;

    #@2
    iget v0, v0, Lcom/android/server/job/JobServiceContext;->mVerb:I

    #@4
    packed-switch v0, :pswitch_data_0

    #@7
    .line 477
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
    .line 478
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
    .line 477
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@23
    move-result-object v1

    #@24
    .line 478
    const-string/jumbo v2, "."

    #@27
    .line 477
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
    .line 470
    :goto_0
    return-void

    #@33
    .line 474
    :pswitch_0
    invoke-direct {p0, p1}, Lcom/android/server/job/JobServiceContext$JobServiceHandler;->closeAndCleanupJobH(Z)V

    #@36
    goto :goto_0

    #@37
    .line 471
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
    .line 520
    iget-object v0, p0, Lcom/android/server/job/JobServiceContext$JobServiceHandler;->this$0:Lcom/android/server/job/JobServiceContext;

    #@3
    iget v0, v0, Lcom/android/server/job/JobServiceContext;->mVerb:I

    #@5
    packed-switch v0, :pswitch_data_0

    #@8
    .line 548
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
    .line 549
    iget-object v2, p0, Lcom/android/server/job/JobServiceContext$JobServiceHandler;->this$0:Lcom/android/server/job/JobServiceContext;

    #@19
    invoke-static {v2}, Lcom/android/server/job/JobServiceContext;->-get8(Lcom/android/server/job/JobServiceContext;)Lcom/android/server/job/controllers/JobStatus;

    #@1c
    move-result-object v2

    #@1d
    invoke-virtual {v2}, Lcom/android/server/job/controllers/JobStatus;->toShortString()Ljava/lang/String;

    #@20
    move-result-object v2

    #@21
    .line 548
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@24
    move-result-object v1

    #@25
    .line 549
    const-string/jumbo v2, ", dropping."

    #@28
    .line 548
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
    .line 550
    invoke-direct {p0, v3}, Lcom/android/server/job/JobServiceContext$JobServiceHandler;->closeAndCleanupJobH(Z)V

    #@36
    .line 519
    :goto_0
    return-void

    #@37
    .line 522
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
    invoke-static {v2}, Lcom/android/server/job/JobServiceContext;->-get8(Lcom/android/server/job/JobServiceContext;)Lcom/android/server/job/controllers/JobStatus;

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
    .line 523
    const-string/jumbo v2, ", dropping."

    #@57
    .line 522
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
    .line 524
    invoke-direct {p0, v3}, Lcom/android/server/job/JobServiceContext$JobServiceHandler;->closeAndCleanupJobH(Z)V

    #@65
    goto :goto_0

    #@66
    .line 530
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
    .line 531
    iget-object v2, p0, Lcom/android/server/job/JobServiceContext$JobServiceHandler;->this$0:Lcom/android/server/job/JobServiceContext;

    #@77
    invoke-static {v2}, Lcom/android/server/job/JobServiceContext;->-get8(Lcom/android/server/job/JobServiceContext;)Lcom/android/server/job/controllers/JobStatus;

    #@7a
    move-result-object v2

    #@7b
    invoke-virtual {v2}, Lcom/android/server/job/controllers/JobStatus;->toShortString()Ljava/lang/String;

    #@7e
    move-result-object v2

    #@7f
    .line 530
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
    .line 532
    invoke-direct {p0, v3}, Lcom/android/server/job/JobServiceContext$JobServiceHandler;->closeAndCleanupJobH(Z)V

    #@8d
    goto :goto_0

    #@8e
    .line 536
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
    .line 537
    iget-object v2, p0, Lcom/android/server/job/JobServiceContext$JobServiceHandler;->this$0:Lcom/android/server/job/JobServiceContext;

    #@9f
    invoke-static {v2}, Lcom/android/server/job/JobServiceContext;->-get8(Lcom/android/server/job/JobServiceContext;)Lcom/android/server/job/controllers/JobStatus;

    #@a2
    move-result-object v2

    #@a3
    invoke-virtual {v2}, Lcom/android/server/job/controllers/JobStatus;->toShortString()Ljava/lang/String;

    #@a6
    move-result-object v2

    #@a7
    .line 536
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
    .line 538
    const/4 v0, 0x1

    #@b3
    invoke-direct {p0, v0}, Lcom/android/server/job/JobServiceContext$JobServiceHandler;->closeAndCleanupJobH(Z)V

    #@b6
    goto :goto_0

    #@b7
    .line 542
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
    .line 543
    iget-object v2, p0, Lcom/android/server/job/JobServiceContext$JobServiceHandler;->this$0:Lcom/android/server/job/JobServiceContext;

    #@c8
    invoke-static {v2}, Lcom/android/server/job/JobServiceContext;->-get8(Lcom/android/server/job/JobServiceContext;)Lcom/android/server/job/controllers/JobStatus;

    #@cb
    move-result-object v2

    #@cc
    invoke-virtual {v2}, Lcom/android/server/job/controllers/JobStatus;->toShortString()Ljava/lang/String;

    #@cf
    move-result-object v2

    #@d0
    .line 542
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
    .line 544
    iget-object v0, p0, Lcom/android/server/job/JobServiceContext$JobServiceHandler;->this$0:Lcom/android/server/job/JobServiceContext;

    #@dd
    invoke-static {v0}, Lcom/android/server/job/JobServiceContext;->-get7(Lcom/android/server/job/JobServiceContext;)Landroid/app/job/JobParameters;

    #@e0
    move-result-object v0

    #@e1
    const/4 v1, 0x3

    #@e2
    invoke-virtual {v0, v1}, Landroid/app/job/JobParameters;->setStopReason(I)V

    #@e5
    .line 545
    invoke-direct {p0}, Lcom/android/server/job/JobServiceContext$JobServiceHandler;->sendStopMessageH()V

    #@e8
    goto/16 :goto_0

    #@ea
    .line 520
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
    .line 407
    iget-object v1, p0, Lcom/android/server/job/JobServiceContext$JobServiceHandler;->this$0:Lcom/android/server/job/JobServiceContext;

    #@4
    iget v1, v1, Lcom/android/server/job/JobServiceContext;->mVerb:I

    #@6
    if-eqz v1, :cond_0

    #@8
    .line 408
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
    .line 409
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
    .line 408
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
    .line 410
    invoke-direct {p0, v5}, Lcom/android/server/job/JobServiceContext$JobServiceHandler;->closeAndCleanupJobH(Z)V

    #@2f
    .line 411
    return-void

    #@30
    .line 413
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
    .line 418
    invoke-direct {p0, v2}, Lcom/android/server/job/JobServiceContext$JobServiceHandler;->closeAndCleanupJobH(Z)V

    #@3f
    .line 419
    return-void

    #@40
    .line 422
    :cond_1
    :try_start_0
    iget-object v1, p0, Lcom/android/server/job/JobServiceContext$JobServiceHandler;->this$0:Lcom/android/server/job/JobServiceContext;

    #@42
    const/4 v2, 0x1

    #@43
    iput v2, v1, Lcom/android/server/job/JobServiceContext;->mVerb:I

    #@45
    .line 423
    iget-object v1, p0, Lcom/android/server/job/JobServiceContext$JobServiceHandler;->this$0:Lcom/android/server/job/JobServiceContext;

    #@47
    invoke-static {v1}, Lcom/android/server/job/JobServiceContext;->-wrap1(Lcom/android/server/job/JobServiceContext;)V

    #@4a
    .line 424
    iget-object v1, p0, Lcom/android/server/job/JobServiceContext$JobServiceHandler;->this$0:Lcom/android/server/job/JobServiceContext;

    #@4c
    iget-object v1, v1, Lcom/android/server/job/JobServiceContext;->service:Landroid/app/job/IJobService;

    #@4e
    iget-object v2, p0, Lcom/android/server/job/JobServiceContext$JobServiceHandler;->this$0:Lcom/android/server/job/JobServiceContext;

    #@50
    invoke-static {v2}, Lcom/android/server/job/JobServiceContext;->-get7(Lcom/android/server/job/JobServiceContext;)Landroid/app/job/JobParameters;

    #@53
    move-result-object v2

    #@54
    invoke-interface {v1, v2}, Landroid/app/job/IJobService;->startJob(Landroid/app/job/JobParameters;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@57
    .line 403
    :goto_0
    return-void

    #@58
    .line 425
    :catch_0
    move-exception v0

    #@59
    .line 426
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
    .line 427
    iget-object v3, p0, Lcom/android/server/job/JobServiceContext$JobServiceHandler;->this$0:Lcom/android/server/job/JobServiceContext;

    #@6a
    invoke-static {v3}, Lcom/android/server/job/JobServiceContext;->-get8(Lcom/android/server/job/JobServiceContext;)Lcom/android/server/job/controllers/JobStatus;

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
    .line 426
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@79
    move-result-object v2

    #@7a
    .line 427
    const-string/jumbo v3, "\' "

    #@7d
    .line 426
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
    .line 439
    iget-object v0, p0, Lcom/android/server/job/JobServiceContext$JobServiceHandler;->this$0:Lcom/android/server/job/JobServiceContext;

    #@2
    iget v0, v0, Lcom/android/server/job/JobServiceContext;->mVerb:I

    #@4
    packed-switch v0, :pswitch_data_0

    #@7
    .line 458
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
    .line 459
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
    .line 458
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@23
    move-result-object v1

    #@24
    .line 459
    const-string/jumbo v2, "."

    #@27
    .line 458
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
    .line 460
    return-void

    #@33
    .line 441
    :pswitch_0
    iget-object v0, p0, Lcom/android/server/job/JobServiceContext$JobServiceHandler;->this$0:Lcom/android/server/job/JobServiceContext;

    #@35
    const/4 v1, 0x2

    #@36
    iput v1, v0, Lcom/android/server/job/JobServiceContext;->mVerb:I

    #@38
    .line 442
    if-nez p1, :cond_0

    #@3a
    .line 444
    const/4 v0, 0x0

    #@3b
    invoke-direct {p0, v0}, Lcom/android/server/job/JobServiceContext$JobServiceHandler;->handleFinishedH(Z)V

    #@3e
    .line 445
    return-void

    #@3f
    .line 447
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
    .line 452
    invoke-direct {p0}, Lcom/android/server/job/JobServiceContext$JobServiceHandler;->handleCancelH()V

    #@4e
    .line 453
    return-void

    #@4f
    .line 455
    :cond_1
    iget-object v0, p0, Lcom/android/server/job/JobServiceContext$JobServiceHandler;->this$0:Lcom/android/server/job/JobServiceContext;

    #@51
    invoke-static {v0}, Lcom/android/server/job/JobServiceContext;->-wrap1(Lcom/android/server/job/JobServiceContext;)V

    #@54
    .line 438
    return-void

    #@55
    .line 439
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
    .line 559
    iget-object v1, p0, Lcom/android/server/job/JobServiceContext$JobServiceHandler;->this$0:Lcom/android/server/job/JobServiceContext;

    #@3
    invoke-static {v1}, Lcom/android/server/job/JobServiceContext;->-wrap0(Lcom/android/server/job/JobServiceContext;)V

    #@6
    .line 560
    iget-object v1, p0, Lcom/android/server/job/JobServiceContext$JobServiceHandler;->this$0:Lcom/android/server/job/JobServiceContext;

    #@8
    iget v1, v1, Lcom/android/server/job/JobServiceContext;->mVerb:I

    #@a
    const/4 v2, 0x2

    #@b
    if-eq v1, v2, :cond_0

    #@d
    .line 561
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
    invoke-static {v3}, Lcom/android/server/job/JobServiceContext;->-get8(Lcom/android/server/job/JobServiceContext;)Lcom/android/server/job/controllers/JobStatus;

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
    .line 562
    invoke-direct {p0, v4}, Lcom/android/server/job/JobServiceContext$JobServiceHandler;->closeAndCleanupJobH(Z)V

    #@30
    .line 563
    return-void

    #@31
    .line 566
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/android/server/job/JobServiceContext$JobServiceHandler;->this$0:Lcom/android/server/job/JobServiceContext;

    #@33
    const/4 v2, 0x3

    #@34
    iput v2, v1, Lcom/android/server/job/JobServiceContext;->mVerb:I

    #@36
    .line 567
    iget-object v1, p0, Lcom/android/server/job/JobServiceContext$JobServiceHandler;->this$0:Lcom/android/server/job/JobServiceContext;

    #@38
    invoke-static {v1}, Lcom/android/server/job/JobServiceContext;->-wrap1(Lcom/android/server/job/JobServiceContext;)V

    #@3b
    .line 568
    iget-object v1, p0, Lcom/android/server/job/JobServiceContext$JobServiceHandler;->this$0:Lcom/android/server/job/JobServiceContext;

    #@3d
    iget-object v1, v1, Lcom/android/server/job/JobServiceContext;->service:Landroid/app/job/IJobService;

    #@3f
    iget-object v2, p0, Lcom/android/server/job/JobServiceContext$JobServiceHandler;->this$0:Lcom/android/server/job/JobServiceContext;

    #@41
    invoke-static {v2}, Lcom/android/server/job/JobServiceContext;->-get7(Lcom/android/server/job/JobServiceContext;)Landroid/app/job/JobParameters;

    #@44
    move-result-object v2

    #@45
    invoke-interface {v1, v2}, Landroid/app/job/IJobService;->stopJob(Landroid/app/job/JobParameters;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@48
    .line 558
    :goto_0
    return-void

    #@49
    .line 569
    :catch_0
    move-exception v0

    #@4a
    .line 570
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "JobServiceContext"

    #@4d
    const-string/jumbo v2, "Error sending onStopJob to client."

    #@50
    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@53
    .line 571
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
    const/4 v4, 0x2

    #@1
    const/4 v2, 0x0

    #@2
    const/4 v1, 0x1

    #@3
    .line 351
    iget v3, p1, Landroid/os/Message;->what:I

    #@5
    packed-switch v3, :pswitch_data_0

    #@8
    .line 398
    const-string/jumbo v2, "JobServiceContext"

    #@b
    new-instance v3, Ljava/lang/StringBuilder;

    #@d
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@10
    const-string/jumbo v4, "Unrecognised message: "

    #@13
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@16
    move-result-object v3

    #@17
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@1a
    move-result-object v3

    #@1b
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1e
    move-result-object v3

    #@1f
    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@22
    .line 350
    :cond_0
    :goto_0
    return-void

    #@23
    .line 353
    :pswitch_0
    iget-object v2, p0, Lcom/android/server/job/JobServiceContext$JobServiceHandler;->this$0:Lcom/android/server/job/JobServiceContext;

    #@25
    invoke-static {v2}, Lcom/android/server/job/JobServiceContext;->-wrap0(Lcom/android/server/job/JobServiceContext;)V

    #@28
    .line 354
    invoke-direct {p0}, Lcom/android/server/job/JobServiceContext$JobServiceHandler;->handleServiceBoundH()V

    #@2b
    goto :goto_0

    #@2c
    .line 361
    :pswitch_1
    iget-object v3, p0, Lcom/android/server/job/JobServiceContext$JobServiceHandler;->this$0:Lcom/android/server/job/JobServiceContext;

    #@2e
    invoke-static {v3}, Lcom/android/server/job/JobServiceContext;->-wrap0(Lcom/android/server/job/JobServiceContext;)V

    #@31
    .line 363
    iget-object v3, p0, Lcom/android/server/job/JobServiceContext$JobServiceHandler;->this$0:Lcom/android/server/job/JobServiceContext;

    #@33
    iget v3, v3, Lcom/android/server/job/JobServiceContext;->mVerb:I

    #@35
    if-ne v3, v1, :cond_2

    #@37
    .line 364
    iget v3, p1, Landroid/os/Message;->arg2:I

    #@39
    if-ne v3, v1, :cond_1

    #@3b
    .line 365
    .local v1, "workOngoing":Z
    :goto_1
    invoke-direct {p0, v1}, Lcom/android/server/job/JobServiceContext$JobServiceHandler;->handleStartedH(Z)V

    #@3e
    goto :goto_0

    #@3f
    .end local v1    # "workOngoing":Z
    :cond_1
    move v1, v2

    #@40
    .line 364
    goto :goto_1

    #@41
    .line 366
    :cond_2
    iget-object v3, p0, Lcom/android/server/job/JobServiceContext$JobServiceHandler;->this$0:Lcom/android/server/job/JobServiceContext;

    #@43
    iget v3, v3, Lcom/android/server/job/JobServiceContext;->mVerb:I

    #@45
    if-eq v3, v4, :cond_3

    #@47
    .line 367
    iget-object v3, p0, Lcom/android/server/job/JobServiceContext$JobServiceHandler;->this$0:Lcom/android/server/job/JobServiceContext;

    #@49
    iget v3, v3, Lcom/android/server/job/JobServiceContext;->mVerb:I

    #@4b
    const/4 v4, 0x3

    #@4c
    if-ne v3, v4, :cond_0

    #@4e
    .line 368
    :cond_3
    iget v3, p1, Landroid/os/Message;->arg2:I

    #@50
    if-ne v3, v1, :cond_4

    #@52
    move v0, v1

    #@53
    .line 369
    .local v0, "reschedule":Z
    :goto_2
    invoke-direct {p0, v0}, Lcom/android/server/job/JobServiceContext$JobServiceHandler;->handleFinishedH(Z)V

    #@56
    goto :goto_0

    #@57
    .end local v0    # "reschedule":Z
    :cond_4
    move v0, v2

    #@58
    .line 368
    goto :goto_2

    #@59
    .line 377
    :pswitch_2
    iget-object v2, p0, Lcom/android/server/job/JobServiceContext$JobServiceHandler;->this$0:Lcom/android/server/job/JobServiceContext;

    #@5b
    iget v2, v2, Lcom/android/server/job/JobServiceContext;->mVerb:I

    #@5d
    const/4 v3, 0x4

    #@5e
    if-ne v2, v3, :cond_5

    #@60
    .line 382
    return-void

    #@61
    .line 384
    :cond_5
    iget-object v2, p0, Lcom/android/server/job/JobServiceContext$JobServiceHandler;->this$0:Lcom/android/server/job/JobServiceContext;

    #@63
    invoke-static {v2}, Lcom/android/server/job/JobServiceContext;->-get7(Lcom/android/server/job/JobServiceContext;)Landroid/app/job/JobParameters;

    #@66
    move-result-object v2

    #@67
    iget v3, p1, Landroid/os/Message;->arg1:I

    #@69
    invoke-virtual {v2, v3}, Landroid/app/job/JobParameters;->setStopReason(I)V

    #@6c
    .line 385
    iget v2, p1, Landroid/os/Message;->arg1:I

    #@6e
    if-ne v2, v4, :cond_6

    #@70
    .line 386
    iget-object v3, p0, Lcom/android/server/job/JobServiceContext$JobServiceHandler;->this$0:Lcom/android/server/job/JobServiceContext;

    #@72
    iget-object v2, p0, Lcom/android/server/job/JobServiceContext$JobServiceHandler;->this$0:Lcom/android/server/job/JobServiceContext;

    #@74
    invoke-static {v2}, Lcom/android/server/job/JobServiceContext;->-get8(Lcom/android/server/job/JobServiceContext;)Lcom/android/server/job/controllers/JobStatus;

    #@77
    move-result-object v2

    #@78
    if-eqz v2, :cond_7

    #@7a
    iget-object v2, p0, Lcom/android/server/job/JobServiceContext$JobServiceHandler;->this$0:Lcom/android/server/job/JobServiceContext;

    #@7c
    invoke-static {v2}, Lcom/android/server/job/JobServiceContext;->-get8(Lcom/android/server/job/JobServiceContext;)Lcom/android/server/job/controllers/JobStatus;

    #@7f
    move-result-object v2

    #@80
    invoke-virtual {v2}, Lcom/android/server/job/controllers/JobStatus;->getUid()I

    #@83
    move-result v2

    #@84
    :goto_3
    invoke-static {v3, v2}, Lcom/android/server/job/JobServiceContext;->-set2(Lcom/android/server/job/JobServiceContext;I)I

    #@87
    .line 389
    :cond_6
    invoke-direct {p0}, Lcom/android/server/job/JobServiceContext$JobServiceHandler;->handleCancelH()V

    #@8a
    goto :goto_0

    #@8b
    .line 387
    :cond_7
    const/4 v2, -0x1

    #@8c
    goto :goto_3

    #@8d
    .line 392
    :pswitch_3
    invoke-direct {p0}, Lcom/android/server/job/JobServiceContext$JobServiceHandler;->handleOpTimeoutH()V

    #@90
    goto :goto_0

    #@91
    .line 395
    :pswitch_4
    invoke-direct {p0, v1}, Lcom/android/server/job/JobServiceContext$JobServiceHandler;->closeAndCleanupJobH(Z)V

    #@94
    goto :goto_0

    #@95
    .line 351
    nop

    #@96
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_4
    .end packed-switch
.end method
