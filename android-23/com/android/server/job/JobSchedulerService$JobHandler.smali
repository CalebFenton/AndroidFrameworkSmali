.class Lcom/android/server/job/JobSchedulerService$JobHandler;
.super Landroid/os/Handler;
.source "JobSchedulerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/job/JobSchedulerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "JobHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/job/JobSchedulerService;


# direct methods
.method public constructor <init>(Lcom/android/server/job/JobSchedulerService;Landroid/os/Looper;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/job/JobSchedulerService;
    .param p2, "looper"    # Landroid/os/Looper;

    #@0
    .prologue
    .line 556
    iput-object p1, p0, Lcom/android/server/job/JobSchedulerService$JobHandler;->this$0:Lcom/android/server/job/JobSchedulerService;

    #@2
    .line 557
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    #@5
    .line 556
    return-void
.end method

.method private isReadyToBeCancelledLocked(Lcom/android/server/job/controllers/JobStatus;)Z
    .locals 1
    .param p1, "job"    # Lcom/android/server/job/controllers/JobStatus;

    #@0
    .prologue
    .line 707
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->isReady()Z

    #@3
    move-result v0

    #@4
    if-nez v0, :cond_0

    #@6
    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService$JobHandler;->this$0:Lcom/android/server/job/JobSchedulerService;

    #@8
    invoke-static {v0, p1}, Lcom/android/server/job/JobSchedulerService;->-wrap0(Lcom/android/server/job/JobSchedulerService;Lcom/android/server/job/controllers/JobStatus;)Z

    #@b
    move-result v0

    #@c
    :goto_0
    return v0

    #@d
    :cond_0
    const/4 v0, 0x0

    #@e
    goto :goto_0
.end method

.method private isReadyToBeExecutedLocked(Lcom/android/server/job/controllers/JobStatus;)Z
    .locals 7
    .param p1, "job"    # Lcom/android/server/job/controllers/JobStatus;

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 689
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->isReady()Z

    #@4
    move-result v2

    #@5
    .line 690
    .local v2, "jobReady":Z
    iget-object v5, p0, Lcom/android/server/job/JobSchedulerService$JobHandler;->this$0:Lcom/android/server/job/JobSchedulerService;

    #@7
    iget-object v5, v5, Lcom/android/server/job/JobSchedulerService;->mPendingJobs:Ljava/util/ArrayList;

    #@9
    invoke-virtual {v5, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    #@c
    move-result v1

    #@d
    .line 691
    .local v1, "jobPending":Z
    iget-object v5, p0, Lcom/android/server/job/JobSchedulerService$JobHandler;->this$0:Lcom/android/server/job/JobSchedulerService;

    #@f
    invoke-static {v5, p1}, Lcom/android/server/job/JobSchedulerService;->-wrap0(Lcom/android/server/job/JobSchedulerService;Lcom/android/server/job/controllers/JobStatus;)Z

    #@12
    move-result v0

    #@13
    .line 692
    .local v0, "jobActive":Z
    iget-object v5, p0, Lcom/android/server/job/JobSchedulerService$JobHandler;->this$0:Lcom/android/server/job/JobSchedulerService;

    #@15
    iget-object v5, v5, Lcom/android/server/job/JobSchedulerService;->mStartedUsers:Ljava/util/ArrayList;

    #@17
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getUserId()I

    #@1a
    move-result v6

    #@1b
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@1e
    move-result-object v6

    #@1f
    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    #@22
    move-result v3

    #@23
    .line 698
    .local v3, "userRunning":Z
    if-eqz v3, :cond_0

    #@25
    if-eqz v2, :cond_0

    #@27
    if-eqz v1, :cond_1

    #@29
    :cond_0
    :goto_0
    return v4

    #@2a
    :cond_1
    if-nez v0, :cond_0

    #@2c
    const/4 v4, 0x1

    #@2d
    goto :goto_0
.end method

.method private maybeQueueReadyJobsForExecutionLockedH()V
    .locals 11

    #@0
    .prologue
    const/4 v10, 0x2

    #@1
    const/4 v9, 0x1

    #@2
    .line 632
    const/4 v1, 0x0

    #@3
    .line 633
    .local v1, "chargingCount":I
    const/4 v4, 0x0

    #@4
    .line 634
    .local v4, "idleCount":I
    const/4 v0, 0x0

    #@5
    .line 635
    .local v0, "backoffCount":I
    const/4 v2, 0x0

    #@6
    .line 636
    .local v2, "connectivityCount":I
    new-instance v7, Ljava/util/ArrayList;

    #@8
    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    #@b
    .line 637
    .local v7, "runnableJobs":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/job/controllers/JobStatus;>;"
    iget-object v8, p0, Lcom/android/server/job/JobSchedulerService$JobHandler;->this$0:Lcom/android/server/job/JobSchedulerService;

    #@d
    iget-object v8, v8, Lcom/android/server/job/JobSchedulerService;->mJobs:Lcom/android/server/job/JobStore;

    #@f
    invoke-virtual {v8}, Lcom/android/server/job/JobStore;->getJobs()Landroid/util/ArraySet;

    #@12
    move-result-object v6

    #@13
    .line 638
    .local v6, "jobs":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/job/controllers/JobStatus;>;"
    const/4 v3, 0x0

    #@14
    .local v3, "i":I
    :goto_0
    invoke-virtual {v6}, Landroid/util/ArraySet;->size()I

    #@17
    move-result v8

    #@18
    if-ge v3, v8, :cond_7

    #@1a
    .line 639
    invoke-virtual {v6, v3}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    #@1d
    move-result-object v5

    #@1e
    check-cast v5, Lcom/android/server/job/controllers/JobStatus;

    #@20
    .line 640
    .local v5, "job":Lcom/android/server/job/controllers/JobStatus;
    invoke-direct {p0, v5}, Lcom/android/server/job/JobSchedulerService$JobHandler;->isReadyToBeExecutedLocked(Lcom/android/server/job/controllers/JobStatus;)Z

    #@23
    move-result v8

    #@24
    if-eqz v8, :cond_6

    #@26
    .line 641
    invoke-virtual {v5}, Lcom/android/server/job/controllers/JobStatus;->getNumFailures()I

    #@29
    move-result v8

    #@2a
    if-lez v8, :cond_0

    #@2c
    .line 642
    add-int/lit8 v0, v0, 0x1

    #@2e
    .line 644
    :cond_0
    invoke-virtual {v5}, Lcom/android/server/job/controllers/JobStatus;->hasIdleConstraint()Z

    #@31
    move-result v8

    #@32
    if-eqz v8, :cond_1

    #@34
    .line 645
    add-int/lit8 v4, v4, 0x1

    #@36
    .line 647
    :cond_1
    invoke-virtual {v5}, Lcom/android/server/job/controllers/JobStatus;->hasConnectivityConstraint()Z

    #@39
    move-result v8

    #@3a
    if-nez v8, :cond_2

    #@3c
    invoke-virtual {v5}, Lcom/android/server/job/controllers/JobStatus;->hasUnmeteredConstraint()Z

    #@3f
    move-result v8

    #@40
    if-eqz v8, :cond_3

    #@42
    .line 648
    :cond_2
    add-int/lit8 v2, v2, 0x1

    #@44
    .line 650
    :cond_3
    invoke-virtual {v5}, Lcom/android/server/job/controllers/JobStatus;->hasChargingConstraint()Z

    #@47
    move-result v8

    #@48
    if-eqz v8, :cond_4

    #@4a
    .line 651
    add-int/lit8 v1, v1, 0x1

    #@4c
    .line 653
    :cond_4
    invoke-interface {v7, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@4f
    .line 638
    :cond_5
    :goto_1
    add-int/lit8 v3, v3, 0x1

    #@51
    goto :goto_0

    #@52
    .line 654
    :cond_6
    invoke-direct {p0, v5}, Lcom/android/server/job/JobSchedulerService$JobHandler;->isReadyToBeCancelledLocked(Lcom/android/server/job/controllers/JobStatus;)Z

    #@55
    move-result v8

    #@56
    if-eqz v8, :cond_5

    #@58
    .line 655
    iget-object v8, p0, Lcom/android/server/job/JobSchedulerService$JobHandler;->this$0:Lcom/android/server/job/JobSchedulerService;

    #@5a
    invoke-static {v8, v5}, Lcom/android/server/job/JobSchedulerService;->-wrap1(Lcom/android/server/job/JobSchedulerService;Lcom/android/server/job/controllers/JobStatus;)Z

    #@5d
    goto :goto_1

    #@5e
    .line 658
    .end local v5    # "job":Lcom/android/server/job/controllers/JobStatus;
    :cond_7
    if-gtz v0, :cond_8

    #@60
    .line 659
    if-lt v4, v9, :cond_9

    #@62
    .line 666
    :cond_8
    const/4 v3, 0x0

    #@63
    :goto_2
    invoke-interface {v7}, Ljava/util/List;->size()I

    #@66
    move-result v8

    #@67
    if-ge v3, v8, :cond_a

    #@69
    .line 667
    iget-object v8, p0, Lcom/android/server/job/JobSchedulerService$JobHandler;->this$0:Lcom/android/server/job/JobSchedulerService;

    #@6b
    iget-object v9, v8, Lcom/android/server/job/JobSchedulerService;->mPendingJobs:Ljava/util/ArrayList;

    #@6d
    invoke-interface {v7, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@70
    move-result-object v8

    #@71
    check-cast v8, Lcom/android/server/job/controllers/JobStatus;

    #@73
    invoke-virtual {v9, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@76
    .line 666
    add-int/lit8 v3, v3, 0x1

    #@78
    goto :goto_2

    #@79
    .line 660
    :cond_9
    if-ge v2, v10, :cond_8

    #@7b
    .line 661
    if-ge v1, v9, :cond_8

    #@7d
    .line 662
    invoke-interface {v7}, Ljava/util/List;->size()I

    #@80
    move-result v8

    #@81
    if-ge v8, v10, :cond_8

    #@83
    .line 631
    :cond_a
    return-void
.end method

.method private maybeRunPendingJobsH()V
    .locals 9

    #@0
    .prologue
    .line 716
    iget-object v6, p0, Lcom/android/server/job/JobSchedulerService$JobHandler;->this$0:Lcom/android/server/job/JobSchedulerService;

    #@2
    iget-object v7, v6, Lcom/android/server/job/JobSchedulerService;->mJobs:Lcom/android/server/job/JobStore;

    #@4
    monitor-enter v7

    #@5
    .line 717
    :try_start_0
    iget-object v6, p0, Lcom/android/server/job/JobSchedulerService$JobHandler;->this$0:Lcom/android/server/job/JobSchedulerService;

    #@7
    iget-boolean v6, v6, Lcom/android/server/job/JobSchedulerService;->mDeviceIdleMode:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@9
    if-eqz v6, :cond_0

    #@b
    monitor-exit v7

    #@c
    .line 719
    return-void

    #@d
    .line 721
    :cond_0
    :try_start_1
    iget-object v6, p0, Lcom/android/server/job/JobSchedulerService$JobHandler;->this$0:Lcom/android/server/job/JobSchedulerService;

    #@f
    iget-object v6, v6, Lcom/android/server/job/JobSchedulerService;->mPendingJobs:Ljava/util/ArrayList;

    #@11
    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    #@14
    move-result-object v2

    #@15
    .line 725
    .local v2, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/job/controllers/JobStatus;>;"
    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    #@18
    move-result v6

    #@19
    if-eqz v6, :cond_6

    #@1b
    .line 726
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@1e
    move-result-object v4

    #@1f
    check-cast v4, Lcom/android/server/job/controllers/JobStatus;

    #@21
    .line 727
    .local v4, "nextPending":Lcom/android/server/job/controllers/JobStatus;
    const/4 v0, 0x0

    #@22
    .line 728
    .local v0, "availableContext":Lcom/android/server/job/JobServiceContext;
    const/4 v1, 0x0

    #@23
    .end local v0    # "availableContext":Lcom/android/server/job/JobServiceContext;
    .local v1, "i":I
    :goto_1
    iget-object v6, p0, Lcom/android/server/job/JobSchedulerService$JobHandler;->this$0:Lcom/android/server/job/JobSchedulerService;

    #@25
    iget-object v6, v6, Lcom/android/server/job/JobSchedulerService;->mActiveServices:Ljava/util/List;

    #@27
    invoke-interface {v6}, Ljava/util/List;->size()I

    #@2a
    move-result v6

    #@2b
    if-ge v1, v6, :cond_2

    #@2d
    .line 729
    iget-object v6, p0, Lcom/android/server/job/JobSchedulerService$JobHandler;->this$0:Lcom/android/server/job/JobSchedulerService;

    #@2f
    iget-object v6, v6, Lcom/android/server/job/JobSchedulerService;->mActiveServices:Ljava/util/List;

    #@31
    invoke-interface {v6, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@34
    move-result-object v3

    #@35
    check-cast v3, Lcom/android/server/job/JobServiceContext;

    #@37
    .line 730
    .local v3, "jsc":Lcom/android/server/job/JobServiceContext;
    invoke-virtual {v3}, Lcom/android/server/job/JobServiceContext;->getRunningJob()Lcom/android/server/job/controllers/JobStatus;

    #@3a
    move-result-object v5

    #@3b
    .line 731
    .local v5, "running":Lcom/android/server/job/controllers/JobStatus;
    if-eqz v5, :cond_4

    #@3d
    invoke-virtual {v4}, Lcom/android/server/job/controllers/JobStatus;->getUid()I

    #@40
    move-result v6

    #@41
    .line 732
    invoke-virtual {v4}, Lcom/android/server/job/controllers/JobStatus;->getJobId()I

    #@44
    move-result v8

    #@45
    .line 731
    invoke-virtual {v5, v6, v8}, Lcom/android/server/job/controllers/JobStatus;->matches(II)Z

    #@48
    move-result v6

    #@49
    if-eqz v6, :cond_4

    #@4b
    .line 734
    const/4 v0, 0x0

    #@4c
    .line 741
    .end local v3    # "jsc":Lcom/android/server/job/JobServiceContext;
    .end local v5    # "running":Lcom/android/server/job/controllers/JobStatus;
    :cond_2
    if-eqz v0, :cond_1

    #@4e
    .line 746
    invoke-virtual {v0, v4}, Lcom/android/server/job/JobServiceContext;->executeRunnableJob(Lcom/android/server/job/controllers/JobStatus;)Z

    #@51
    move-result v6

    #@52
    if-nez v6, :cond_3

    #@54
    .line 750
    iget-object v6, p0, Lcom/android/server/job/JobSchedulerService$JobHandler;->this$0:Lcom/android/server/job/JobSchedulerService;

    #@56
    iget-object v6, v6, Lcom/android/server/job/JobSchedulerService;->mJobs:Lcom/android/server/job/JobStore;

    #@58
    invoke-virtual {v6, v4}, Lcom/android/server/job/JobStore;->remove(Lcom/android/server/job/controllers/JobStatus;)Z

    #@5b
    .line 752
    :cond_3
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@5e
    goto :goto_0

    #@5f
    .line 716
    .end local v1    # "i":I
    .end local v2    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/job/controllers/JobStatus;>;"
    .end local v4    # "nextPending":Lcom/android/server/job/controllers/JobStatus;
    :catchall_0
    move-exception v6

    #@60
    monitor-exit v7

    #@61
    throw v6

    #@62
    .line 737
    .restart local v1    # "i":I
    .restart local v2    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/job/controllers/JobStatus;>;"
    .restart local v3    # "jsc":Lcom/android/server/job/JobServiceContext;
    .restart local v4    # "nextPending":Lcom/android/server/job/controllers/JobStatus;
    .restart local v5    # "running":Lcom/android/server/job/controllers/JobStatus;
    :cond_4
    :try_start_2
    invoke-virtual {v3}, Lcom/android/server/job/JobServiceContext;->isAvailable()Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@65
    move-result v6

    #@66
    if-eqz v6, :cond_5

    #@68
    .line 738
    move-object v0, v3

    #@69
    .line 728
    :cond_5
    add-int/lit8 v1, v1, 0x1

    #@6b
    goto :goto_1

    #@6c
    .end local v1    # "i":I
    .end local v3    # "jsc":Lcom/android/server/job/JobServiceContext;
    .end local v4    # "nextPending":Lcom/android/server/job/controllers/JobStatus;
    .end local v5    # "running":Lcom/android/server/job/controllers/JobStatus;
    :cond_6
    monitor-exit v7

    #@6d
    .line 715
    return-void
.end method

.method private queueReadyJobsForExecutionLockedH()V
    .locals 4

    #@0
    .prologue
    .line 597
    iget-object v3, p0, Lcom/android/server/job/JobSchedulerService$JobHandler;->this$0:Lcom/android/server/job/JobSchedulerService;

    #@2
    iget-object v3, v3, Lcom/android/server/job/JobSchedulerService;->mJobs:Lcom/android/server/job/JobStore;

    #@4
    invoke-virtual {v3}, Lcom/android/server/job/JobStore;->getJobs()Landroid/util/ArraySet;

    #@7
    move-result-object v2

    #@8
    .line 601
    .local v2, "jobs":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/job/controllers/JobStatus;>;"
    const/4 v0, 0x0

    #@9
    .local v0, "i":I
    :goto_0
    invoke-virtual {v2}, Landroid/util/ArraySet;->size()I

    #@c
    move-result v3

    #@d
    if-ge v0, v3, :cond_2

    #@f
    .line 602
    invoke-virtual {v2, v0}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    #@12
    move-result-object v1

    #@13
    check-cast v1, Lcom/android/server/job/controllers/JobStatus;

    #@15
    .line 603
    .local v1, "job":Lcom/android/server/job/controllers/JobStatus;
    invoke-direct {p0, v1}, Lcom/android/server/job/JobSchedulerService$JobHandler;->isReadyToBeExecutedLocked(Lcom/android/server/job/controllers/JobStatus;)Z

    #@18
    move-result v3

    #@19
    if-eqz v3, :cond_1

    #@1b
    .line 607
    iget-object v3, p0, Lcom/android/server/job/JobSchedulerService$JobHandler;->this$0:Lcom/android/server/job/JobSchedulerService;

    #@1d
    iget-object v3, v3, Lcom/android/server/job/JobSchedulerService;->mPendingJobs:Ljava/util/ArrayList;

    #@1f
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@22
    .line 601
    :cond_0
    :goto_1
    add-int/lit8 v0, v0, 0x1

    #@24
    goto :goto_0

    #@25
    .line 608
    :cond_1
    invoke-direct {p0, v1}, Lcom/android/server/job/JobSchedulerService$JobHandler;->isReadyToBeCancelledLocked(Lcom/android/server/job/controllers/JobStatus;)Z

    #@28
    move-result v3

    #@29
    if-eqz v3, :cond_0

    #@2b
    .line 609
    iget-object v3, p0, Lcom/android/server/job/JobSchedulerService$JobHandler;->this$0:Lcom/android/server/job/JobSchedulerService;

    #@2d
    invoke-static {v3, v1}, Lcom/android/server/job/JobSchedulerService;->-wrap1(Lcom/android/server/job/JobSchedulerService;Lcom/android/server/job/controllers/JobStatus;)Z

    #@30
    goto :goto_1

    #@31
    .line 596
    .end local v1    # "job":Lcom/android/server/job/controllers/JobStatus;
    :cond_2
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .param p1, "message"    # Landroid/os/Message;

    #@0
    .prologue
    .line 562
    iget-object v1, p0, Lcom/android/server/job/JobSchedulerService$JobHandler;->this$0:Lcom/android/server/job/JobSchedulerService;

    #@2
    iget-object v2, v1, Lcom/android/server/job/JobSchedulerService;->mJobs:Lcom/android/server/job/JobStore;

    #@4
    monitor-enter v2

    #@5
    .line 563
    :try_start_0
    iget-object v1, p0, Lcom/android/server/job/JobSchedulerService$JobHandler;->this$0:Lcom/android/server/job/JobSchedulerService;

    #@7
    iget-boolean v1, v1, Lcom/android/server/job/JobSchedulerService;->mReadyToRock:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@9
    if-nez v1, :cond_0

    #@b
    monitor-exit v2

    #@c
    .line 564
    return-void

    #@d
    :cond_0
    monitor-exit v2

    #@e
    .line 567
    iget v1, p1, Landroid/os/Message;->what:I

    #@10
    packed-switch v1, :pswitch_data_0

    #@13
    .line 587
    :goto_0
    invoke-direct {p0}, Lcom/android/server/job/JobSchedulerService$JobHandler;->maybeRunPendingJobsH()V

    #@16
    .line 589
    const/4 v1, 0x1

    #@17
    invoke-virtual {p0, v1}, Lcom/android/server/job/JobSchedulerService$JobHandler;->removeMessages(I)V

    #@1a
    .line 561
    return-void

    #@1b
    .line 562
    :catchall_0
    move-exception v1

    #@1c
    monitor-exit v2

    #@1d
    throw v1

    #@1e
    .line 569
    :pswitch_0
    iget-object v1, p0, Lcom/android/server/job/JobSchedulerService$JobHandler;->this$0:Lcom/android/server/job/JobSchedulerService;

    #@20
    iget-object v2, v1, Lcom/android/server/job/JobSchedulerService;->mJobs:Lcom/android/server/job/JobStore;

    #@22
    monitor-enter v2

    #@23
    .line 570
    :try_start_1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@25
    check-cast v0, Lcom/android/server/job/controllers/JobStatus;

    #@27
    .line 573
    .local v0, "runNow":Lcom/android/server/job/controllers/JobStatus;
    if-eqz v0, :cond_1

    #@29
    iget-object v1, p0, Lcom/android/server/job/JobSchedulerService$JobHandler;->this$0:Lcom/android/server/job/JobSchedulerService;

    #@2b
    iget-object v1, v1, Lcom/android/server/job/JobSchedulerService;->mPendingJobs:Ljava/util/ArrayList;

    #@2d
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    #@30
    move-result v1

    #@31
    if-eqz v1, :cond_2

    #@33
    .line 577
    :cond_1
    :goto_1
    invoke-direct {p0}, Lcom/android/server/job/JobSchedulerService$JobHandler;->queueReadyJobsForExecutionLockedH()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    #@36
    monitor-exit v2

    #@37
    goto :goto_0

    #@38
    .line 574
    :cond_2
    :try_start_2
    iget-object v1, p0, Lcom/android/server/job/JobSchedulerService$JobHandler;->this$0:Lcom/android/server/job/JobSchedulerService;

    #@3a
    iget-object v1, v1, Lcom/android/server/job/JobSchedulerService;->mJobs:Lcom/android/server/job/JobStore;

    #@3c
    invoke-virtual {v1, v0}, Lcom/android/server/job/JobStore;->containsJob(Lcom/android/server/job/controllers/JobStatus;)Z

    #@3f
    move-result v1

    #@40
    .line 573
    if-eqz v1, :cond_1

    #@42
    .line 575
    iget-object v1, p0, Lcom/android/server/job/JobSchedulerService$JobHandler;->this$0:Lcom/android/server/job/JobSchedulerService;

    #@44
    iget-object v1, v1, Lcom/android/server/job/JobSchedulerService;->mPendingJobs:Ljava/util/ArrayList;

    #@46
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    #@49
    goto :goto_1

    #@4a
    .line 569
    .end local v0    # "runNow":Lcom/android/server/job/controllers/JobStatus;
    :catchall_1
    move-exception v1

    #@4b
    monitor-exit v2

    #@4c
    throw v1

    #@4d
    .line 581
    :pswitch_1
    iget-object v1, p0, Lcom/android/server/job/JobSchedulerService$JobHandler;->this$0:Lcom/android/server/job/JobSchedulerService;

    #@4f
    iget-object v1, v1, Lcom/android/server/job/JobSchedulerService;->mJobs:Lcom/android/server/job/JobStore;

    #@51
    monitor-enter v1

    #@52
    .line 583
    :try_start_3
    invoke-direct {p0}, Lcom/android/server/job/JobSchedulerService$JobHandler;->maybeQueueReadyJobsForExecutionLockedH()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    #@55
    monitor-exit v1

    #@56
    goto :goto_0

    #@57
    .line 581
    :catchall_2
    move-exception v2

    #@58
    monitor-exit v1

    #@59
    throw v2

    #@5a
    .line 567
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
