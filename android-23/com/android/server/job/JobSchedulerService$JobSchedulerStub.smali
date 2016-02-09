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
    .line 762
    iput-object p1, p0, Lcom/android/server/job/JobSchedulerService$JobSchedulerStub;->this$0:Lcom/android/server/job/JobSchedulerService;

    #@2
    invoke-direct {p0}, Landroid/app/job/IJobScheduler$Stub;-><init>()V

    #@5
    .line 766
    new-instance v0, Landroid/util/SparseArray;

    #@7
    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    #@a
    iput-object v0, p0, Lcom/android/server/job/JobSchedulerService$JobSchedulerStub;->mPersistCache:Landroid/util/SparseArray;

    #@c
    .line 762
    return-void
.end method

.method private canPersistJobs(II)Z
    .locals 6
    .param p1, "pid"    # I
    .param p2, "uid"    # I

    #@0
    .prologue
    .line 796
    iget-object v4, p0, Lcom/android/server/job/JobSchedulerService$JobSchedulerStub;->mPersistCache:Landroid/util/SparseArray;

    #@2
    monitor-enter v4

    #@3
    .line 797
    :try_start_0
    iget-object v3, p0, Lcom/android/server/job/JobSchedulerService$JobSchedulerStub;->mPersistCache:Landroid/util/SparseArray;

    #@5
    invoke-virtual {v3, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    #@8
    move-result-object v0

    #@9
    check-cast v0, Ljava/lang/Boolean;

    #@b
    .line 798
    .local v0, "cached":Ljava/lang/Boolean;
    if-eqz v0, :cond_0

    #@d
    .line 799
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@10
    move-result v1

    #@11
    :goto_0
    monitor-exit v4

    #@12
    .line 810
    return v1

    #@13
    .line 804
    :cond_0
    :try_start_1
    iget-object v3, p0, Lcom/android/server/job/JobSchedulerService$JobSchedulerStub;->this$0:Lcom/android/server/job/JobSchedulerService;

    #@15
    invoke-virtual {v3}, Lcom/android/server/job/JobSchedulerService;->getContext()Landroid/content/Context;

    #@18
    move-result-object v3

    #@19
    .line 805
    const-string/jumbo v5, "android.permission.RECEIVE_BOOT_COMPLETED"

    #@1c
    .line 804
    invoke-virtual {v3, v5, p1, p2}, Landroid/content/Context;->checkPermission(Ljava/lang/String;II)I

    #@1f
    move-result v2

    #@20
    .line 806
    .local v2, "result":I
    if-nez v2, :cond_1

    #@22
    const/4 v1, 0x1

    #@23
    .line 807
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
    .line 796
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
    .line 806
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
    .line 772
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    #@3
    move-result-object v1

    #@4
    .line 773
    .local v1, "pm":Landroid/content/pm/IPackageManager;
    invoke-virtual {p2}, Landroid/app/job/JobInfo;->getService()Landroid/content/ComponentName;

    #@7
    move-result-object v2

    #@8
    .line 775
    .local v2, "service":Landroid/content/ComponentName;
    :try_start_0
    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    #@b
    move-result v4

    #@c
    const/4 v5, 0x0

    #@d
    invoke-interface {v1, v2, v5, v4}, Landroid/content/pm/IPackageManager;->getServiceInfo(Landroid/content/ComponentName;II)Landroid/content/pm/ServiceInfo;

    #@10
    move-result-object v3

    #@11
    .line 776
    .local v3, "si":Landroid/content/pm/ServiceInfo;
    if-nez v3, :cond_1

    #@13
    .line 777
    new-instance v4, Ljava/lang/IllegalArgumentException;

    #@15
    new-instance v5, Ljava/lang/StringBuilder;

    #@17
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@1a
    const-string/jumbo v6, "No such service "

    #@1d
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@20
    move-result-object v5

    #@21
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@24
    move-result-object v5

    #@25
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@28
    move-result-object v5

    #@29
    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@2c
    throw v4

    #@2d
    .line 787
    .end local v3    # "si":Landroid/content/pm/ServiceInfo;
    :catch_0
    move-exception v0

    #@2e
    .line 771
    :cond_0
    return-void

    #@2f
    .line 779
    .restart local v3    # "si":Landroid/content/pm/ServiceInfo;
    :cond_1
    iget-object v4, v3, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    #@31
    iget v4, v4, Landroid/content/pm/ApplicationInfo;->uid:I

    #@33
    if-eq v4, p1, :cond_2

    #@35
    .line 780
    new-instance v4, Ljava/lang/IllegalArgumentException;

    #@37
    new-instance v5, Ljava/lang/StringBuilder;

    #@39
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@3c
    const-string/jumbo v6, "uid "

    #@3f
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@42
    move-result-object v5

    #@43
    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@46
    move-result-object v5

    #@47
    .line 781
    const-string/jumbo v6, " cannot schedule job in "

    #@4a
    .line 780
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4d
    move-result-object v5

    #@4e
    .line 781
    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    #@51
    move-result-object v6

    #@52
    .line 780
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@55
    move-result-object v5

    #@56
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@59
    move-result-object v5

    #@5a
    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@5d
    throw v4

    #@5e
    .line 783
    :cond_2
    const-string/jumbo v4, "android.permission.BIND_JOB_SERVICE"

    #@61
    iget-object v5, v3, Landroid/content/pm/ServiceInfo;->permission:Ljava/lang/String;

    #@63
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@66
    move-result v4

    #@67
    if-nez v4, :cond_0

    #@69
    .line 784
    new-instance v4, Ljava/lang/IllegalArgumentException;

    #@6b
    new-instance v5, Ljava/lang/StringBuilder;

    #@6d
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@70
    const-string/jumbo v6, "Scheduled service "

    #@73
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@76
    move-result-object v5

    #@77
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@7a
    move-result-object v5

    #@7b
    .line 785
    const-string/jumbo v6, " does not require android.permission.BIND_JOB_SERVICE permission"

    #@7e
    .line 784
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@81
    move-result-object v5

    #@82
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@85
    move-result-object v5

    #@86
    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@89
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
    .line 864
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    #@3
    move-result v2

    #@4
    .line 866
    .local v2, "uid":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    #@7
    move-result-wide v0

    #@8
    .line 868
    .local v0, "ident":J
    :try_start_0
    iget-object v3, p0, Lcom/android/server/job/JobSchedulerService$JobSchedulerStub;->this$0:Lcom/android/server/job/JobSchedulerService;

    #@a
    invoke-virtual {v3, v2, p1}, Lcom/android/server/job/JobSchedulerService;->cancelJob(II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@d
    .line 870
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@10
    .line 863
    return-void

    #@11
    .line 869
    :catchall_0
    move-exception v3

    #@12
    .line 870
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@15
    .line 869
    throw v3
.end method

.method public cancelAll()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 852
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    #@3
    move-result v2

    #@4
    .line 854
    .local v2, "uid":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    #@7
    move-result-wide v0

    #@8
    .line 856
    .local v0, "ident":J
    :try_start_0
    iget-object v3, p0, Lcom/android/server/job/JobSchedulerService$JobSchedulerStub;->this$0:Lcom/android/server/job/JobSchedulerService;

    #@a
    invoke-virtual {v3, v2}, Lcom/android/server/job/JobSchedulerService;->cancelJobsForUid(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@d
    .line 858
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@10
    .line 851
    return-void

    #@11
    .line 857
    :catchall_0
    move-exception v3

    #@12
    .line 858
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@15
    .line 857
    throw v3
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 5
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    #@0
    .prologue
    .line 879
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
    .line 881
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    #@12
    move-result-wide v0

    #@13
    .line 883
    .local v0, "identityToken":J
    :try_start_0
    iget-object v2, p0, Lcom/android/server/job/JobSchedulerService$JobSchedulerStub;->this$0:Lcom/android/server/job/JobSchedulerService;

    #@15
    invoke-virtual {v2, p2}, Lcom/android/server/job/JobSchedulerService;->dumpInternal(Ljava/io/PrintWriter;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@18
    .line 885
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@1b
    .line 878
    return-void

    #@1c
    .line 884
    :catchall_0
    move-exception v2

    #@1d
    .line 885
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@20
    .line 884
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
    .line 840
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    #@3
    move-result v2

    #@4
    .line 842
    .local v2, "uid":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    #@7
    move-result-wide v0

    #@8
    .line 844
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
    .line 846
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@11
    .line 844
    return-object v3

    #@12
    .line 845
    :catchall_0
    move-exception v3

    #@13
    .line 846
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@16
    .line 845
    throw v3
.end method

.method public schedule(Landroid/app/job/JobInfo;)I
    .locals 6
    .param p1, "job"    # Landroid/app/job/JobInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 819
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    #@3
    move-result v2

    #@4
    .line 820
    .local v2, "pid":I
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    #@7
    move-result v3

    #@8
    .line 822
    .local v3, "uid":I
    invoke-direct {p0, v3, p1}, Lcom/android/server/job/JobSchedulerService$JobSchedulerStub;->enforceValidJobRequest(ILandroid/app/job/JobInfo;)V

    #@b
    .line 823
    invoke-virtual {p1}, Landroid/app/job/JobInfo;->isPersisted()Z

    #@e
    move-result v4

    #@f
    if-eqz v4, :cond_0

    #@11
    .line 824
    invoke-direct {p0, v2, v3}, Lcom/android/server/job/JobSchedulerService$JobSchedulerStub;->canPersistJobs(II)Z

    #@14
    move-result v4

    #@15
    if-nez v4, :cond_0

    #@17
    .line 825
    new-instance v4, Ljava/lang/IllegalArgumentException;

    #@19
    const-string/jumbo v5, "Error: requested job be persisted without holding RECEIVE_BOOT_COMPLETED permission."

    #@1c
    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@1f
    throw v4

    #@20
    .line 830
    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    #@23
    move-result-wide v0

    #@24
    .line 832
    .local v0, "ident":J
    :try_start_0
    iget-object v4, p0, Lcom/android/server/job/JobSchedulerService$JobSchedulerStub;->this$0:Lcom/android/server/job/JobSchedulerService;

    #@26
    invoke-virtual {v4, p1, v3}, Lcom/android/server/job/JobSchedulerService;->schedule(Landroid/app/job/JobInfo;I)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@29
    move-result v4

    #@2a
    .line 834
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@2d
    .line 832
    return v4

    #@2e
    .line 833
    :catchall_0
    move-exception v4

    #@2f
    .line 834
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@32
    .line 833
    throw v4
.end method
