.class public Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher$DispatcherServer;
.super Ljava/lang/Object;
.source "DataRequestDispatcher.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "DispatcherServer"
.end annotation


# instance fields
.field protected final headerFlag:B

.field protected volatile serverAddress:Ljava/lang/String;

.field protected serverRequests:Ljava/util/Vector;

.field protected final supportedDataRequests:Ljava/util/Vector;

.field private tempRequests:Ljava/util/Vector;

.field final synthetic this$0:Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher;


# direct methods
.method public constructor <init>(Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher;Ljava/lang/String;Ljava/util/Vector;B)V
    .locals 1
    .param p2, "address"    # Ljava/lang/String;
    .param p3, "protocolList"    # Ljava/util/Vector;
    .param p4, "headerFlag"    # B

    #@0
    .prologue
    .line 1545
    iput-object p1, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher$DispatcherServer;->this$0:Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    .line 1532
    new-instance v0, Ljava/util/Vector;

    #@7
    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    #@a
    iput-object v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher$DispatcherServer;->serverRequests:Ljava/util/Vector;

    #@c
    .line 1546
    iput-object p2, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher$DispatcherServer;->serverAddress:Ljava/lang/String;

    #@e
    .line 1547
    iput-object p3, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher$DispatcherServer;->supportedDataRequests:Ljava/util/Vector;

    #@10
    .line 1548
    int-to-byte v0, p4

    #@11
    iput-byte v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher$DispatcherServer;->headerFlag:B

    #@13
    .line 1549
    return-void
.end method

.method private checkNeedToActivate()Z
    .locals 5

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 1650
    iget-object v2, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher$DispatcherServer;->this$0:Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher;

    #@3
    invoke-virtual {v2}, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher;->isSuspended()Z

    #@6
    move-result v2

    #@7
    if-nez v2, :cond_0

    #@9
    .line 1654
    iget-object v3, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher$DispatcherServer;->serverRequests:Ljava/util/Vector;

    #@b
    monitor-enter v3

    #@c
    const/4 v0, 0x0

    #@d
    .line 1655
    .local v0, "i":I
    :goto_0
    :try_start_0
    iget-object v2, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher$DispatcherServer;->serverRequests:Ljava/util/Vector;

    #@f
    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    #@12
    move-result v2

    #@13
    if-lt v0, v2, :cond_1

    #@15
    .line 1661
    monitor-exit v3

    #@16
    .line 1662
    return v4

    #@17
    .line 1651
    .end local v0    # "i":I
    :cond_0
    return v4

    #@18
    .line 1656
    .restart local v0    # "i":I
    :cond_1
    iget-object v2, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher$DispatcherServer;->serverRequests:Ljava/util/Vector;

    #@1a
    invoke-virtual {v2, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    #@1d
    move-result-object v1

    #@1e
    check-cast v1, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequest;

    #@20
    .line 1657
    .local v1, "request":Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequest;
    invoke-interface {v1}, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequest;->isImmediate()Z

    #@23
    move-result v2

    #@24
    if-nez v2, :cond_2

    #@26
    .line 1655
    add-int/lit8 v0, v0, 0x1

    #@28
    goto :goto_0

    #@29
    .line 1658
    :cond_2
    monitor-exit v3

    #@2a
    const/4 v2, 0x1

    #@2b
    return v2

    #@2c
    .line 1661
    .end local v1    # "request":Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequest;
    :catchall_0
    move-exception v2

    #@2d
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@2e
    throw v2
.end method

.method private networkAccessDenied(Ljava/lang/Exception;)V
    .locals 2
    .param p1, "e"    # Ljava/lang/Exception;

    #@0
    .prologue
    const-string/jumbo v0, "REQUEST"

    #@3
    .line 1742
    invoke-static {v0, p1}, Landroid_maps_conflict_avoidance/com/google/common/Log;->logQuietThrowable(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@6
    .line 1746
    iget-object v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher$DispatcherServer;->this$0:Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher;

    #@8
    invoke-virtual {v0}, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher;->stop()V

    #@b
    .line 1749
    iget-object v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher$DispatcherServer;->this$0:Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher;

    #@d
    const/4 v1, 0x0

    #@e
    invoke-virtual {v0, v1}, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher;->maybeNotifyNetworkError(I)V

    #@11
    .line 1750
    return-void
.end method


# virtual methods
.method protected declared-synchronized activate()V
    .locals 4

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 1604
    :try_start_0
    iget-object v1, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher$DispatcherServer;->this$0:Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher;

    #@3
    invoke-virtual {v1}, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher;->canDispatchNow()Z

    #@6
    move-result v1

    #@7
    if-eqz v1, :cond_1

    #@9
    .line 1608
    iget-object v1, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher$DispatcherServer;->this$0:Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher;

    #@b
    # getter for: Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher;->threadDispatchLock:Ljava/lang/Object;
    invoke-static {v1}, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher;->access$200(Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher;)Ljava/lang/Object;

    #@e
    move-result-object v2

    #@f
    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    #@10
    .line 1609
    :try_start_1
    invoke-virtual {p0}, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher$DispatcherServer;->dequeuePendingRequests()Ljava/util/Vector;

    #@13
    move-result-object v1

    #@14
    iput-object v1, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher$DispatcherServer;->tempRequests:Ljava/util/Vector;

    #@16
    .line 1610
    iget-object v1, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher$DispatcherServer;->tempRequests:Ljava/util/Vector;

    #@18
    if-nez v1, :cond_2

    #@1a
    .line 1628
    :cond_0
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@1b
    monitor-exit p0

    #@1c
    .line 1629
    return-void

    #@1d
    :cond_1
    monitor-exit p0

    #@1e
    .line 1605
    return-void

    #@1f
    .line 1611
    :cond_2
    :try_start_2
    iget-object v1, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher$DispatcherServer;->this$0:Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher;

    #@21
    # operator++ for: Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher;->workerThreadCount:I
    invoke-static {v1}, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher;->access$308(Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher;)I

    #@24
    .line 1612
    iget-object v1, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher$DispatcherServer;->tempRequests:Ljava/util/Vector;

    #@26
    invoke-static {v1}, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher;->containsForegroundRequest(Ljava/util/Vector;)Z

    #@29
    move-result v1

    #@2a
    if-nez v1, :cond_3

    #@2c
    .line 1615
    :goto_0
    iget-object v1, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher$DispatcherServer;->tempRequests:Ljava/util/Vector;

    #@2e
    invoke-static {v1}, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher;->containsSubmissionRequest(Ljava/util/Vector;)Z

    #@31
    move-result v1

    #@32
    if-nez v1, :cond_4

    #@34
    .line 1618
    :goto_1
    new-instance v1, Ljava/lang/Thread;

    #@36
    const-string/jumbo v3, "DataRequestDispatcher"

    #@39
    invoke-direct {v1, p0, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    #@3c
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    #@3f
    .line 1620
    :goto_2
    iget-object v1, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher$DispatcherServer;->tempRequests:Ljava/util/Vector;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@41
    if-eqz v1, :cond_0

    #@43
    .line 1622
    :try_start_3
    iget-object v1, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher$DispatcherServer;->this$0:Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher;

    #@45
    # getter for: Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher;->threadDispatchLock:Ljava/lang/Object;
    invoke-static {v1}, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher;->access$200(Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher;)Ljava/lang/Object;

    #@48
    move-result-object v1

    #@49
    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@4c
    goto :goto_2

    #@4d
    .line 1625
    :catch_0
    move-exception v0

    #@4e
    .line 1623
    .local v0, "ignored":Ljava/lang/InterruptedException;
    goto :goto_2

    #@4f
    .line 1613
    .end local v0    # "ignored":Ljava/lang/InterruptedException;
    :cond_3
    :try_start_4
    iget-object v1, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher$DispatcherServer;->this$0:Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher;

    #@51
    # operator++ for: Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher;->workerForegroundThreadCount:I
    invoke-static {v1}, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher;->access$408(Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher;)I

    #@54
    goto :goto_0

    #@55
    .line 1628
    :catchall_0
    move-exception v1

    #@56
    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    #@57
    :try_start_5
    throw v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    #@58
    :catchall_1
    move-exception v1

    #@59
    monitor-exit p0

    #@5a
    throw v1

    #@5b
    .line 1616
    :cond_4
    :try_start_6
    iget-object v1, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher$DispatcherServer;->this$0:Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher;

    #@5d
    # operator++ for: Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher;->workerSubmissionThreadCount:I
    invoke-static {v1}, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher;->access$508(Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    #@60
    goto :goto_1
.end method

.method protected activateIfNeeded()V
    .locals 1

    #@0
    .prologue
    .line 1640
    invoke-direct {p0}, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher$DispatcherServer;->checkNeedToActivate()Z

    #@3
    move-result v0

    #@4
    if-nez v0, :cond_0

    #@6
    .line 1643
    :goto_0
    return-void

    #@7
    .line 1641
    :cond_0
    invoke-virtual {p0}, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher$DispatcherServer;->activate()V

    #@a
    goto :goto_0
.end method

.method public addDataRequest(Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequest;)V
    .locals 1
    .param p1, "dataRequest"    # Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequest;

    #@0
    .prologue
    .line 1565
    iget-object v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher$DispatcherServer;->serverRequests:Ljava/util/Vector;

    #@2
    invoke-virtual {v0, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    #@5
    .line 1566
    invoke-interface {p1}, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequest;->isImmediate()Z

    #@8
    move-result v0

    #@9
    if-nez v0, :cond_1

    #@b
    .line 1569
    :cond_0
    :goto_0
    return-void

    #@c
    .line 1566
    :cond_1
    iget-object v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher$DispatcherServer;->this$0:Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher;

    #@e
    invoke-virtual {v0}, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher;->isSuspended()Z

    #@11
    move-result v0

    #@12
    if-nez v0, :cond_0

    #@14
    .line 1567
    invoke-virtual {p0}, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher$DispatcherServer;->activate()V

    #@17
    goto :goto_0
.end method

.method protected canHandle(I)Z
    .locals 3
    .param p1, "protocolId"    # I

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 1540
    iget-object v1, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher$DispatcherServer;->supportedDataRequests:Ljava/util/Vector;

    #@3
    invoke-virtual {v1}, Ljava/util/Vector;->isEmpty()Z

    #@6
    move-result v1

    #@7
    if-eqz v1, :cond_1

    #@9
    :cond_0
    const/4 v0, 0x1

    #@a
    :goto_0
    return v0

    #@b
    :cond_1
    iget-object v1, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher$DispatcherServer;->supportedDataRequests:Ljava/util/Vector;

    #@d
    new-instance v2, Ljava/lang/Integer;

    #@f
    invoke-direct {v2, p1}, Ljava/lang/Integer;-><init>(I)V

    #@12
    invoke-virtual {v1, v2}, Ljava/util/Vector;->contains(Ljava/lang/Object;)Z

    #@15
    move-result v1

    #@16
    if-nez v1, :cond_0

    #@18
    goto :goto_0
.end method

.method protected dequeuePendingRequests()Ljava/util/Vector;
    .locals 2

    #@0
    .prologue
    .line 1590
    monitor-enter p0

    #@1
    .line 1591
    :try_start_0
    iget-object v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher$DispatcherServer;->serverRequests:Ljava/util/Vector;

    #@3
    .line 1592
    .local v0, "pendingServerRequests":Ljava/util/Vector;
    new-instance v1, Ljava/util/Vector;

    #@5
    invoke-direct {v1}, Ljava/util/Vector;-><init>()V

    #@8
    iput-object v1, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher$DispatcherServer;->serverRequests:Ljava/util/Vector;

    #@a
    .line 1593
    monitor-exit p0

    #@b
    .line 1594
    return-object v0

    #@c
    .line 1593
    .end local v0    # "pendingServerRequests":Ljava/util/Vector;
    :catchall_0
    move-exception v1

    #@d
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@e
    throw v1
.end method

.method public run()V
    .locals 14

    #@0
    .prologue
    const/4 v8, 0x0

    #@1
    .line 1675
    iget-object v7, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher$DispatcherServer;->this$0:Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher;

    #@3
    # getter for: Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher;->threadDispatchLock:Ljava/lang/Object;
    invoke-static {v7}, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher;->access$200(Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher;)Ljava/lang/Object;

    #@6
    move-result-object v9

    #@7
    monitor-enter v9

    #@8
    .line 1676
    :try_start_0
    iget-object v6, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher$DispatcherServer;->tempRequests:Ljava/util/Vector;

    #@a
    .local v6, "requests":Ljava/util/Vector;
    const/4 v7, 0x0

    #@b
    .line 1677
    iput-object v7, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher$DispatcherServer;->tempRequests:Ljava/util/Vector;

    #@d
    .line 1678
    iget-object v7, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher$DispatcherServer;->this$0:Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher;

    #@f
    iget-object v10, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher$DispatcherServer;->this$0:Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher;

    #@11
    # getter for: Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher;->clock:Landroid_maps_conflict_avoidance/com/google/common/Clock;
    invoke-static {v10}, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher;->access$700(Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher;)Landroid_maps_conflict_avoidance/com/google/common/Clock;

    #@14
    move-result-object v10

    #@15
    invoke-interface {v10}, Landroid_maps_conflict_avoidance/com/google/common/Clock;->relativeTimeMillis()J

    #@18
    move-result-wide v10

    #@19
    # setter for: Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher;->lastActiveTime:J
    invoke-static {v7, v10, v11}, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher;->access$602(Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher;J)J

    #@1c
    .line 1680
    iget-object v7, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher$DispatcherServer;->this$0:Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher;

    #@1e
    # getter for: Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher;->threadDispatchLock:Ljava/lang/Object;
    invoke-static {v7}, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher;->access$200(Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher;)Ljava/lang/Object;

    #@21
    move-result-object v7

    #@22
    invoke-virtual {v7}, Ljava/lang/Object;->notifyAll()V

    #@25
    .line 1681
    monitor-exit v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@26
    .line 1686
    invoke-static {v6}, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher;->containsForegroundRequest(Ljava/util/Vector;)Z

    #@29
    move-result v0

    #@2a
    .line 1687
    .local v0, "containsForegroundRequest":Z
    invoke-static {v6}, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher;->containsSubmissionRequest(Ljava/util/Vector;)Z

    #@2d
    move-result v1

    #@2e
    .line 1690
    .local v1, "containsSubmissionRequest":Z
    :goto_0
    :try_start_1
    iget-object v7, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher$DispatcherServer;->this$0:Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher;

    #@30
    iget-boolean v7, v7, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher;->active:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    #@32
    if-nez v7, :cond_1

    #@34
    .line 1721
    :cond_0
    iget-object v7, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher$DispatcherServer;->this$0:Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher;

    #@36
    # getter for: Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher;->threadDispatchLock:Ljava/lang/Object;
    invoke-static {v7}, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher;->access$200(Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher;)Ljava/lang/Object;

    #@39
    move-result-object v8

    #@3a
    monitor-enter v8

    #@3b
    .line 1722
    :try_start_2
    iget-object v7, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher$DispatcherServer;->this$0:Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher;

    #@3d
    # operator-- for: Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher;->workerThreadCount:I
    invoke-static {v7}, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher;->access$310(Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher;)I

    #@40
    .line 1723
    if-nez v0, :cond_4

    #@42
    .line 1726
    :goto_1
    if-nez v1, :cond_5

    #@44
    .line 1729
    :goto_2
    monitor-exit v8
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    #@45
    .line 1732
    invoke-virtual {p0}, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher$DispatcherServer;->activateIfNeeded()V

    #@48
    .line 1734
    return-void

    #@49
    .line 1681
    .end local v0    # "containsForegroundRequest":Z
    .end local v1    # "containsSubmissionRequest":Z
    .end local v6    # "requests":Ljava/util/Vector;
    :catchall_0
    move-exception v7

    #@4a
    :try_start_3
    monitor-exit v9
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@4b
    throw v7

    #@4c
    .line 1690
    .restart local v0    # "containsForegroundRequest":Z
    .restart local v1    # "containsSubmissionRequest":Z
    .restart local v6    # "requests":Ljava/util/Vector;
    :cond_1
    :try_start_4
    invoke-virtual {v6}, Ljava/util/Vector;->size()I

    #@4f
    move-result v7

    #@50
    if-lez v7, :cond_0

    #@52
    .line 1691
    monitor-enter p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    #@53
    .line 1692
    :try_start_5
    iget-object v7, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher$DispatcherServer;->this$0:Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher;

    #@55
    # getter for: Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher;->errorRetryTime:J
    invoke-static {v7}, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher;->access$800(Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher;)J
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    #@58
    move-result-wide v10

    #@59
    const-wide/16 v12, 0x0

    #@5b
    cmp-long v7, v10, v12

    #@5d
    if-gtz v7, :cond_3

    #@5f
    const/4 v7, 0x1

    #@60
    :goto_3
    if-nez v7, :cond_2

    #@62
    .line 1694
    :try_start_6
    iget-object v7, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher$DispatcherServer;->this$0:Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher;

    #@64
    # getter for: Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher;->errorRetryTime:J
    invoke-static {v7}, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher;->access$800(Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher;)J

    #@67
    move-result-wide v10

    #@68
    invoke-virtual {p0, v10, v11}, Ljava/lang/Object;->wait(J)V
    :try_end_6
    .catch Ljava/lang/InterruptedException; {:try_start_6 .. :try_end_6} :catch_4
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    #@6b
    .line 1699
    :cond_2
    :goto_4
    :try_start_7
    monitor-exit p0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    #@6c
    .line 1702
    :try_start_8
    iget-object v7, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher$DispatcherServer;->this$0:Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher;

    #@6e
    invoke-virtual {v7, v6, p0}, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher;->serviceRequests(Ljava/util/Vector;Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher$DispatcherServer;)V

    #@71
    .line 1703
    iget-object v7, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher$DispatcherServer;->this$0:Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher;

    #@73
    iget-object v7, v7, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher;->connectionFactory:Landroid_maps_conflict_avoidance/com/google/common/io/HttpConnectionFactory;

    #@75
    const/4 v9, 0x0

    #@76
    invoke-interface {v7, v9}, Landroid_maps_conflict_avoidance/com/google/common/io/HttpConnectionFactory;->registerNetworkSuccess(Z)Z

    #@79
    .line 1704
    iget-object v7, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher$DispatcherServer;->this$0:Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher;

    #@7b
    # invokes: Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher;->clearNetworkError()V
    invoke-static {v7}, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher;->access$900(Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher;)V

    #@7e
    .line 1705
    iget-object v7, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher$DispatcherServer;->this$0:Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher;

    #@80
    iget-object v9, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher$DispatcherServer;->this$0:Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher;

    #@82
    # getter for: Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher;->clock:Landroid_maps_conflict_avoidance/com/google/common/Clock;
    invoke-static {v9}, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher;->access$700(Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher;)Landroid_maps_conflict_avoidance/com/google/common/Clock;

    #@85
    move-result-object v9

    #@86
    invoke-interface {v9}, Landroid_maps_conflict_avoidance/com/google/common/Clock;->relativeTimeMillis()J

    #@89
    move-result-wide v10

    #@8a
    # setter for: Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher;->lastSuccessTime:J
    invoke-static {v7, v10, v11}, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher;->access$1002(Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher;J)J
    :try_end_8
    .catch Ljava/lang/SecurityException; {:try_start_8 .. :try_end_8} :catch_0
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_1
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_2
    .catch Ljava/lang/OutOfMemoryError; {:try_start_8 .. :try_end_8} :catch_3
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    #@8d
    goto :goto_0

    #@8e
    .line 1718
    :catch_0
    move-exception v5

    #@8f
    .line 1707
    .local v5, "e":Ljava/lang/SecurityException;
    :try_start_9
    invoke-direct {p0, v5}, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher$DispatcherServer;->networkAccessDenied(Ljava/lang/Exception;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    #@92
    goto :goto_0

    #@93
    .line 1733
    .end local v5    # "e":Ljava/lang/SecurityException;
    :catchall_1
    move-exception v7

    #@94
    .line 1721
    iget-object v8, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher$DispatcherServer;->this$0:Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher;

    #@96
    # getter for: Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher;->threadDispatchLock:Ljava/lang/Object;
    invoke-static {v8}, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher;->access$200(Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher;)Ljava/lang/Object;

    #@99
    move-result-object v8

    #@9a
    monitor-enter v8

    #@9b
    .line 1722
    :try_start_a
    iget-object v9, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher$DispatcherServer;->this$0:Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher;

    #@9d
    # operator-- for: Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher;->workerThreadCount:I
    invoke-static {v9}, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher;->access$310(Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher;)I

    #@a0
    .line 1723
    if-nez v0, :cond_6

    #@a2
    .line 1726
    :goto_5
    if-nez v1, :cond_7

    #@a4
    .line 1729
    :goto_6
    monitor-exit v8
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_4

    #@a5
    .line 1732
    invoke-virtual {p0}, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher$DispatcherServer;->activateIfNeeded()V

    #@a8
    throw v7

    #@a9
    :cond_3
    move v7, v8

    #@aa
    .line 1692
    goto :goto_3

    #@ab
    .line 1699
    :catchall_2
    move-exception v7

    #@ac
    :try_start_b
    monitor-exit p0
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_2

    #@ad
    :try_start_c
    throw v7

    #@ae
    .line 1718
    :catch_1
    move-exception v2

    #@af
    .line 1710
    .local v2, "e":Ljava/io/IOException;
    iget-object v7, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher$DispatcherServer;->this$0:Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher;

    #@b1
    const/4 v9, 0x3

    #@b2
    # invokes: Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher;->handleError(ILjava/lang/Throwable;)V
    invoke-static {v7, v9, v2}, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher;->access$1100(Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher;ILjava/lang/Throwable;)V

    #@b5
    goto/16 :goto_0

    #@b7
    .line 1718
    .end local v2    # "e":Ljava/io/IOException;
    :catch_2
    move-exception v3

    #@b8
    .line 1712
    .local v3, "e":Ljava/lang/Exception;
    iget-object v7, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher$DispatcherServer;->this$0:Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher;

    #@ba
    const/4 v9, 0x5

    #@bb
    # invokes: Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher;->handleError(ILjava/lang/Throwable;)V
    invoke-static {v7, v9, v3}, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher;->access$1100(Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher;ILjava/lang/Throwable;)V

    #@be
    const-string/jumbo v7, "REQUEST"

    #@c1
    .line 1714
    invoke-static {v7, v3}, Landroid_maps_conflict_avoidance/com/google/common/Log;->logThrowable(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@c4
    goto/16 :goto_0

    #@c6
    .line 1718
    .end local v3    # "e":Ljava/lang/Exception;
    :catch_3
    move-exception v4

    #@c7
    .line 1716
    .local v4, "e":Ljava/lang/OutOfMemoryError;
    invoke-static {}, Landroid_maps_conflict_avoidance/com/google/common/StaticUtil;->handleOutOfMemory()V

    #@ca
    .line 1717
    iget-object v7, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher$DispatcherServer;->this$0:Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher;

    #@cc
    const/4 v9, 0x5

    #@cd
    # invokes: Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher;->handleError(ILjava/lang/Throwable;)V
    invoke-static {v7, v9, v4}, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher;->access$1100(Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher;ILjava/lang/Throwable;)V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_1

    #@d0
    goto/16 :goto_0

    #@d2
    .line 1724
    .end local v4    # "e":Ljava/lang/OutOfMemoryError;
    :cond_4
    :try_start_d
    iget-object v7, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher$DispatcherServer;->this$0:Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher;

    #@d4
    # operator-- for: Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher;->workerForegroundThreadCount:I
    invoke-static {v7}, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher;->access$410(Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher;)I

    #@d7
    goto/16 :goto_1

    #@d9
    .line 1729
    :catchall_3
    move-exception v7

    #@da
    monitor-exit v8
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_3

    #@db
    throw v7

    #@dc
    .line 1727
    :cond_5
    :try_start_e
    iget-object v7, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher$DispatcherServer;->this$0:Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher;

    #@de
    # operator-- for: Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher;->workerSubmissionThreadCount:I
    invoke-static {v7}, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher;->access$510(Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher;)I
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_3

    #@e1
    goto/16 :goto_2

    #@e3
    .line 1724
    :cond_6
    :try_start_f
    iget-object v9, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher$DispatcherServer;->this$0:Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher;

    #@e5
    # operator-- for: Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher;->workerForegroundThreadCount:I
    invoke-static {v9}, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher;->access$410(Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher;)I

    #@e8
    goto :goto_5

    #@e9
    .line 1729
    :catchall_4
    move-exception v7

    #@ea
    monitor-exit v8
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_4

    #@eb
    throw v7

    #@ec
    .line 1727
    :cond_7
    :try_start_10
    iget-object v9, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher$DispatcherServer;->this$0:Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher;

    #@ee
    # operator-- for: Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher;->workerSubmissionThreadCount:I
    invoke-static {v9}, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher;->access$510(Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher;)I
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_4

    #@f1
    goto :goto_6

    #@f2
    .line 1697
    :catch_4
    move-exception v7

    #@f3
    goto/16 :goto_4
.end method

.method public start()V
    .locals 0

    #@0
    .prologue
    .line 1758
    invoke-virtual {p0}, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher$DispatcherServer;->activateIfNeeded()V

    #@3
    .line 1759
    return-void
.end method
