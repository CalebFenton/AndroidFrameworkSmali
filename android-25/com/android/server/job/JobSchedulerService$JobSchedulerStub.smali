.class final Lcom/android/server/job/JobSchedulerService$JobSchedulerStub;
.super Landroid/app/job/IJobScheduler$Stub;
.source "JobSchedulerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/job/JobSchedulerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "JobSchedulerStub"
.end annotation


# instance fields
.field private final mPersistCache:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/android/server/job/JobSchedulerService;


# direct methods
.method constructor <init>(Lcom/android/server/job/JobSchedulerService;)V
    .locals 1
    .param p1, "this$0"    # Lcom/android/server/job/JobSchedulerService;

    #@0
    .prologue
    .line 1553
    iput-object p1, p0, Lcom/android/server/job/JobSchedulerService$JobSchedulerStub;->this$0:Lcom/android/server/job/JobSchedulerService;

    #@2
    invoke-direct {p0}, Landroid/app/job/IJobScheduler$Stub;-><init>()V

    #@5
    .line 1557
    new-instance v0, Landroid/util/SparseArray;

    #@7
    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    #@a
    iput-object v0, p0, Lcom/android/server/job/JobSchedulerService$JobSchedulerStub;->mPersistCache:Landroid/util/SparseArray;

    #@c
    .line 1553
    return-void
.end method

.method private canPersistJobs(II)Z
    .locals 6
    .param p1, "pid"    # I
    .param p2, "uid"    # I

    #@0
    .prologue
    .line 1590
    iget-object v4, p0, Lcom/android/server/job/JobSchedulerService$JobSchedulerStub;->mPersistCache:Landroid/util/SparseArray;

    #@2
    monitor-enter v4

    #@3
    .line 1591
    :try_start_0
    iget-object v3, p0, Lcom/android/server/job/JobSchedulerService$JobSchedulerStub;->mPersistCache:Landroid/util/SparseArray;

    #@5
    invoke-virtual {v3, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    #@8
    move-result-object v0

    #@9
    check-cast v0, Ljava/lang/Boolean;

    #@b
    .line 1592
    .local v0, "cached":Ljava/lang/Boolean;
    if-eqz v0, :cond_0

    #@d
    .line 1593
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@10
    move-result v1

    #@11
    :goto_0
    monitor-exit v4

    #@12
    .line 1604
    return v1

    #@13
    .line 1598
    :cond_0
    :try_start_1
    iget-object v3, p0, Lcom/android/server/job/JobSchedulerService$JobSchedulerStub;->this$0:Lcom/android/server/job/JobSchedulerService;

    #@15
    invoke-virtual {v3}, Lcom/android/server/job/JobSchedulerService;->getContext()Landroid/content/Context;

    #@18
    move-result-object v3

    #@19
    .line 1599
    const-string/jumbo v5, "android.permission.RECEIVE_BOOT_COMPLETED"

    #@1c
    .line 1598
    invoke-virtual {v3, v5, p1, p2}, Landroid/content/Context;->checkPermission(Ljava/lang/String;II)I

    #@1f
    move-result v2

    #@20
    .line 1600
    .local v2, "result":I
    if-nez v2, :cond_1

    #@22
    const/4 v1, 0x1

    #@23
    .line 1601
    .local v1, "canPersist":Z
    :goto_1
    iget-object v3, p0, Lcom/android/server/job/JobSchedulerService$JobSchedulerStub;->mPersistCache:Landroid/util/SparseArray;

    #@25
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    #@28
    move-result-object v5

    #@29
    invoke-virtual {v3, p2, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@2c
    goto :goto_0

    #@2d
    .line 1590
    .end local v0    # "cached":Ljava/lang/Boolean;
    .end local v1    # "canPersist":Z
    .end local v2    # "result":I
    :catchall_0
    move-exception v3

    #@2e
    monitor-exit v4

    #@2f
    throw v3

    #@30
    .line 1600
    .restart local v0    # "cached":Ljava/lang/Boolean;
    .restart local v2    # "result":I
    :cond_1
    const/4 v1, 0x0

    #@31
    .restart local v1    # "canPersist":Z
    goto :goto_1
.end method

.method private enforceValidJobRequest(ILandroid/app/job/JobInfo;)V
    .locals 7
    .param p1, "uid"    # I
    .param p2, "job"    # Landroid/app/job/JobInfo;

    #@0
    .prologue
    .line 1563
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    #@3
    move-result-object v1

    #@4
    .line 1564
    .local v1, "pm":Landroid/content/pm/IPackageManager;
    invoke-virtual {p2}, Landroid/app/job/JobInfo;->getService()Landroid/content/ComponentName;

    #@7
    move-result-object v2

    #@8
    .line 1569
    .local v2, "service":Landroid/content/ComponentName;
    :try_start_0
    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    #@b
    move-result v4

    #@c
    .line 1567
    const/high16 v5, 0xc0000

    #@e
    .line 1566
    invoke-interface {v1, v2, v5, v4}, Landroid/content/pm/IPackageManager;->getServiceInfo(Landroid/content/ComponentName;II)Landroid/content/pm/ServiceInfo;

    #@11
    move-result-object v3

    #@12
    .line 1570
    .local v3, "si":Landroid/content/pm/ServiceInfo;
    if-nez v3, :cond_1

    #@14
    .line 1571
    new-instance v4, Ljava/lang/IllegalArgumentException;

    #@16
    new-instance v5, Ljava/lang/StringBuilder;

    #@18
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@1b
    const-string/jumbo v6, "No such service "

    #@1e
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@21
    move-result-object v5

    #@22
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@25
    move-result-object v5

    #@26
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@29
    move-result-object v5

    #@2a
    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@2d
    throw v4

    #@2e
    .line 1581
    .end local v3    # "si":Landroid/content/pm/ServiceInfo;
    :catch_0
    move-exception v0

    #@2f
    .line 1562
    :cond_0
    return-void

    #@30
    .line 1573
    .restart local v3    # "si":Landroid/content/pm/ServiceInfo;
    :cond_1
    iget-object v4, v3, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    #@32
    iget v4, v4, Landroid/content/pm/ApplicationInfo;->uid:I

    #@34
    if-eq v4, p1, :cond_2

    #@36
    .line 1574
    new-instance v4, Ljava/lang/IllegalArgumentException;

    #@38
    new-instance v5, Ljava/lang/StringBuilder;

    #@3a
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@3d
    const-string/jumbo v6, "uid "

    #@40
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@43
    move-result-object v5

    #@44
    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@47
    move-result-object v5

    #@48
    .line 1575
    const-string/jumbo v6, " cannot schedule job in "

    #@4b
    .line 1574
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4e
    move-result-object v5

    #@4f
    .line 1575
    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    #@52
    move-result-object v6

    #@53
    .line 1574
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@56
    move-result-object v5

    #@57
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@5a
    move-result-object v5

    #@5b
    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@5e
    throw v4

    #@5f
    .line 1577
    :cond_2
    const-string/jumbo v4, "android.permission.BIND_JOB_SERVICE"

    #@62
    iget-object v5, v3, Landroid/content/pm/ServiceInfo;->permission:Ljava/lang/String;

    #@64
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@67
    move-result v4

    #@68
    if-nez v4, :cond_0

    #@6a
    .line 1578
    new-instance v4, Ljava/lang/IllegalArgumentException;

    #@6c
    new-instance v5, Ljava/lang/StringBuilder;

    #@6e
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@71
    const-string/jumbo v6, "Scheduled service "

    #@74
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@77
    move-result-object v5

    #@78
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@7b
    move-result-object v5

    #@7c
    .line 1579
    const-string/jumbo v6, " does not require android.permission.BIND_JOB_SERVICE permission"

    #@7f
    .line 1578
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@82
    move-result-object v5

    #@83
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@86
    move-result-object v5

    #@87
    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@8a
    throw v4
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
.end method


# virtual methods
.method public cancel(I)V
    .locals 4
    .param p1, "jobId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 1709
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    #@3
    move-result v2

    #@4
    .line 1711
    .local v2, "uid":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    #@7
    move-result-wide v0

    #@8
    .line 1713
    .local v0, "ident":J
    :try_start_0
    iget-object v3, p0, Lcom/android/server/job/JobSchedulerService$JobSchedulerStub;->this$0:Lcom/android/server/job/JobSchedulerService;

    #@a
    invoke-virtual {v3, v2, p1}, Lcom/android/server/job/JobSchedulerService;->cancelJob(II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@d
    .line 1715
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@10
    .line 1708
    return-void

    #@11
    .line 1714
    :catchall_0
    move-exception v3

    #@12
    .line 1715
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@15
    .line 1714
    throw v3
.end method

.method public cancelAll()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 1697
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    #@3
    move-result v2

    #@4
    .line 1699
    .local v2, "uid":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    #@7
    move-result-wide v0

    #@8
    .line 1701
    .local v0, "ident":J
    :try_start_0
    iget-object v3, p0, Lcom/android/server/job/JobSchedulerService$JobSchedulerStub;->this$0:Lcom/android/server/job/JobSchedulerService;

    #@a
    const/4 v4, 0x1

    #@b
    invoke-virtual {v3, v2, v4}, Lcom/android/server/job/JobSchedulerService;->cancelJobsForUid(IZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@e
    .line 1703
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@11
    .line 1696
    return-void

    #@12
    .line 1702
    :catchall_0
    move-exception v3

    #@13
    .line 1703
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@16
    .line 1702
    throw v3
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 5
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    #@0
    .prologue
    .line 1724
    iget-object v2, p0, Lcom/android/server/job/JobSchedulerService$JobSchedulerStub;->this$0:Lcom/android/server/job/JobSchedulerService;

    #@2
    invoke-virtual {v2}, Lcom/android/server/job/JobSchedulerService;->getContext()Landroid/content/Context;

    #@5
    move-result-object v2

    #@6
    const-string/jumbo v3, "android.permission.DUMP"

    #@9
    const-string/jumbo v4, "JobSchedulerService"

    #@c
    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    #@f
    .line 1726
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    #@12
    move-result-wide v0

    #@13
    .line 1728
    .local v0, "identityToken":J
    :try_start_0
    iget-object v2, p0, Lcom/android/server/job/JobSchedulerService$JobSchedulerStub;->this$0:Lcom/android/server/job/JobSchedulerService;

    #@15
    invoke-virtual {v2, p2, p3}, Lcom/android/server/job/JobSchedulerService;->dumpInternal(Ljava/io/PrintWriter;[Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@18
    .line 1730
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@1b
    .line 1723
    return-void

    #@1c
    .line 1729
    :catchall_0
    move-exception v2

    #@1d
    .line 1730
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@20
    .line 1729
    throw v2
.end method

.method public getAllPendingJobs()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/app/job/JobInfo;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 1673
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    #@3
    move-result v2

    #@4
    .line 1675
    .local v2, "uid":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    #@7
    move-result-wide v0

    #@8
    .line 1677
    .local v0, "ident":J
    :try_start_0
    iget-object v3, p0, Lcom/android/server/job/JobSchedulerService$JobSchedulerStub;->this$0:Lcom/android/server/job/JobSchedulerService;

    #@a
    invoke-virtual {v3, v2}, Lcom/android/server/job/JobSchedulerService;->getPendingJobs(I)Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@d
    move-result-object v3

    #@e
    .line 1679
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@11
    .line 1677
    return-object v3

    #@12
    .line 1678
    :catchall_0
    move-exception v3

    #@13
    .line 1679
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@16
    .line 1678
    throw v3
.end method

.method public getPendingJob(I)Landroid/app/job/JobInfo;
    .locals 4
    .param p1, "jobId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 1685
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    #@3
    move-result v2

    #@4
    .line 1687
    .local v2, "uid":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    #@7
    move-result-wide v0

    #@8
    .line 1689
    .local v0, "ident":J
    :try_start_0
    iget-object v3, p0, Lcom/android/server/job/JobSchedulerService$JobSchedulerStub;->this$0:Lcom/android/server/job/JobSchedulerService;

    #@a
    invoke-virtual {v3, v2, p1}, Lcom/android/server/job/JobSchedulerService;->getPendingJob(II)Landroid/app/job/JobInfo;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@d
    move-result-object v3

    #@e
    .line 1691
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@11
    .line 1689
    return-object v3

    #@12
    .line 1690
    :catchall_0
    move-exception v3

    #@13
    .line 1691
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@16
    .line 1690
    throw v3
.end method

.method public onShellCommand(Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;[Ljava/lang/String;Landroid/os/ResultReceiver;)V
    .locals 7
    .param p1, "in"    # Ljava/io/FileDescriptor;
    .param p2, "out"    # Ljava/io/FileDescriptor;
    .param p3, "err"    # Ljava/io/FileDescriptor;
    .param p4, "args"    # [Ljava/lang/String;
    .param p5, "resultReceiver"    # Landroid/os/ResultReceiver;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 1737
    new-instance v0, Lcom/android/server/job/JobSchedulerShellCommand;

    #@2
    iget-object v1, p0, Lcom/android/server/job/JobSchedulerService$JobSchedulerStub;->this$0:Lcom/android/server/job/JobSchedulerService;

    #@4
    invoke-direct {v0, v1}, Lcom/android/server/job/JobSchedulerShellCommand;-><init>(Lcom/android/server/job/JobSchedulerService;)V

    #@7
    move-object v1, p0

    #@8
    move-object v2, p1

    #@9
    move-object v3, p2

    #@a
    move-object v4, p3

    #@b
    move-object v5, p4

    #@c
    move-object v6, p5

    #@d
    invoke-virtual/range {v0 .. v6}, Lcom/android/server/job/JobSchedulerShellCommand;->exec(Landroid/os/Binder;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;[Ljava/lang/String;Landroid/os/ResultReceiver;)I

    #@10
    .line 1736
    return-void
.end method

.method public schedule(Landroid/app/job/JobInfo;)I
    .locals 7
    .param p1, "job"    # Landroid/app/job/JobInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 1613
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    #@3
    move-result v2

    #@4
    .line 1614
    .local v2, "pid":I
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    #@7
    move-result v3

    #@8
    .line 1616
    .local v3, "uid":I
    invoke-direct {p0, v3, p1}, Lcom/android/server/job/JobSchedulerService$JobSchedulerStub;->enforceValidJobRequest(ILandroid/app/job/JobInfo;)V

    #@b
    .line 1617
    invoke-virtual {p1}, Landroid/app/job/JobInfo;->isPersisted()Z

    #@e
    move-result v4

    #@f
    if-eqz v4, :cond_0

    #@11
    .line 1618
    invoke-direct {p0, v2, v3}, Lcom/android/server/job/JobSchedulerService$JobSchedulerStub;->canPersistJobs(II)Z

    #@14
    move-result v4

    #@15
    if-nez v4, :cond_0

    #@17
    .line 1619
    new-instance v4, Ljava/lang/IllegalArgumentException;

    #@19
    const-string/jumbo v5, "Error: requested job be persisted without holding RECEIVE_BOOT_COMPLETED permission."

    #@1c
    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@1f
    throw v4

    #@20
    .line 1624
    :cond_0
    invoke-virtual {p1}, Landroid/app/job/JobInfo;->getFlags()I

    #@23
    move-result v4

    #@24
    and-int/lit8 v4, v4, 0x1

    #@26
    if-eqz v4, :cond_1

    #@28
    .line 1625
    iget-object v4, p0, Lcom/android/server/job/JobSchedulerService$JobSchedulerStub;->this$0:Lcom/android/server/job/JobSchedulerService;

    #@2a
    invoke-virtual {v4}, Lcom/android/server/job/JobSchedulerService;->getContext()Landroid/content/Context;

    #@2d
    move-result-object v4

    #@2e
    .line 1626
    const-string/jumbo v5, "android.permission.CONNECTIVITY_INTERNAL"

    #@31
    const-string/jumbo v6, "JobSchedulerService"

    #@34
    .line 1625
    invoke-virtual {v4, v5, v6}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    #@37
    .line 1629
    :cond_1
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    #@3a
    move-result-wide v0

    #@3b
    .line 1631
    .local v0, "ident":J
    :try_start_0
    iget-object v4, p0, Lcom/android/server/job/JobSchedulerService$JobSchedulerStub;->this$0:Lcom/android/server/job/JobSchedulerService;

    #@3d
    invoke-virtual {v4, p1, v3}, Lcom/android/server/job/JobSchedulerService;->schedule(Landroid/app/job/JobInfo;I)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@40
    move-result v4

    #@41
    .line 1633
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@44
    .line 1631
    return v4

    #@45
    .line 1632
    :catchall_0
    move-exception v4

    #@46
    .line 1633
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@49
    .line 1632
    throw v4
.end method

.method public scheduleAsPackage(Landroid/app/job/JobInfo;Ljava/lang/String;ILjava/lang/String;)I
    .locals 9
    .param p1, "job"    # Landroid/app/job/JobInfo;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "userId"    # I
    .param p4, "tag"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 1640
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    #@3
    move-result v2

    #@4
    .line 1646
    .local v2, "callerUid":I
    if-nez p2, :cond_0

    #@6
    .line 1647
    new-instance v0, Ljava/lang/NullPointerException;

    #@8
    const-string/jumbo v1, "Must specify a package for scheduleAsPackage()"

    #@b
    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@e
    throw v0

    #@f
    .line 1650
    :cond_0
    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService$JobSchedulerStub;->this$0:Lcom/android/server/job/JobSchedulerService;

    #@11
    invoke-virtual {v0}, Lcom/android/server/job/JobSchedulerService;->getContext()Landroid/content/Context;

    #@14
    move-result-object v0

    #@15
    .line 1651
    const-string/jumbo v1, "android.permission.UPDATE_DEVICE_STATS"

    #@18
    .line 1650
    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    #@1b
    move-result v8

    #@1c
    .line 1652
    .local v8, "mayScheduleForOthers":I
    if-eqz v8, :cond_1

    #@1e
    .line 1653
    new-instance v0, Ljava/lang/SecurityException;

    #@20
    new-instance v1, Ljava/lang/StringBuilder;

    #@22
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@25
    const-string/jumbo v3, "Caller uid "

    #@28
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2b
    move-result-object v1

    #@2c
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@2f
    move-result-object v1

    #@30
    .line 1654
    const-string/jumbo v3, " not permitted to schedule jobs for other apps"

    #@33
    .line 1653
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@36
    move-result-object v1

    #@37
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3a
    move-result-object v1

    #@3b
    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    #@3e
    throw v0

    #@3f
    .line 1657
    :cond_1
    invoke-virtual {p1}, Landroid/app/job/JobInfo;->getFlags()I

    #@42
    move-result v0

    #@43
    and-int/lit8 v0, v0, 0x1

    #@45
    if-eqz v0, :cond_2

    #@47
    .line 1658
    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService$JobSchedulerStub;->this$0:Lcom/android/server/job/JobSchedulerService;

    #@49
    invoke-virtual {v0}, Lcom/android/server/job/JobSchedulerService;->getContext()Landroid/content/Context;

    #@4c
    move-result-object v0

    #@4d
    .line 1659
    const-string/jumbo v1, "android.permission.CONNECTIVITY_INTERNAL"

    #@50
    const-string/jumbo v3, "JobSchedulerService"

    #@53
    .line 1658
    invoke-virtual {v0, v1, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    #@56
    .line 1662
    :cond_2
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    #@59
    move-result-wide v6

    #@5a
    .line 1664
    .local v6, "ident":J
    :try_start_0
    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService$JobSchedulerStub;->this$0:Lcom/android/server/job/JobSchedulerService;

    #@5c
    move-object v1, p1

    #@5d
    move-object v3, p2

    #@5e
    move v4, p3

    #@5f
    move-object v5, p4

    #@60
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/job/JobSchedulerService;->scheduleAsPackage(Landroid/app/job/JobInfo;ILjava/lang/String;ILjava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@63
    move-result v0

    #@64
    .line 1667
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@67
    .line 1664
    return v0

    #@68
    .line 1666
    :catchall_0
    move-exception v0

    #@69
    .line 1667
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@6c
    .line 1666
    throw v0
.end method
