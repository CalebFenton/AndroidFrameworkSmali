.class public Landroid/app/JobSchedulerImpl;
.super Landroid/app/job/JobScheduler;
.source "JobSchedulerImpl.java"


# instance fields
.field mBinder:Landroid/app/job/IJobScheduler;


# direct methods
.method constructor <init>(Landroid/app/job/IJobScheduler;)V
    .locals 0
    .param p1, "binder"    # Landroid/app/job/IJobScheduler;

    #@0
    .prologue
    .line 35
    invoke-direct {p0}, Landroid/app/job/JobScheduler;-><init>()V

    #@3
    .line 36
    iput-object p1, p0, Landroid/app/JobSchedulerImpl;->mBinder:Landroid/app/job/IJobScheduler;

    #@5
    .line 35
    return-void
.end method


# virtual methods
.method public cancel(I)V
    .locals 2
    .param p1, "jobId"    # I

    #@0
    .prologue
    .line 51
    :try_start_0
    iget-object v1, p0, Landroid/app/JobSchedulerImpl;->mBinder:Landroid/app/job/IJobScheduler;

    #@2
    invoke-interface {v1, p1}, Landroid/app/job/IJobScheduler;->cancel(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@5
    .line 49
    :goto_0
    return-void

    #@6
    .line 52
    :catch_0
    move-exception v0

    #@7
    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method public cancelAll()V
    .locals 2

    #@0
    .prologue
    .line 59
    :try_start_0
    iget-object v1, p0, Landroid/app/JobSchedulerImpl;->mBinder:Landroid/app/job/IJobScheduler;

    #@2
    invoke-interface {v1}, Landroid/app/job/IJobScheduler;->cancelAll()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@5
    .line 57
    :goto_0
    return-void

    #@6
    .line 60
    :catch_0
    move-exception v0

    #@7
    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method public getAllPendingJobs()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/app/job/JobInfo;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 67
    :try_start_0
    iget-object v1, p0, Landroid/app/JobSchedulerImpl;->mBinder:Landroid/app/job/IJobScheduler;

    #@2
    invoke-interface {v1}, Landroid/app/job/IJobScheduler;->getAllPendingJobs()Ljava/util/List;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@5
    move-result-object v1

    #@6
    return-object v1

    #@7
    .line 68
    :catch_0
    move-exception v0

    #@8
    .line 69
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    #@9
    return-object v1
.end method

.method public schedule(Landroid/app/job/JobInfo;)I
    .locals 2
    .param p1, "job"    # Landroid/app/job/JobInfo;

    #@0
    .prologue
    .line 42
    :try_start_0
    iget-object v1, p0, Landroid/app/JobSchedulerImpl;->mBinder:Landroid/app/job/IJobScheduler;

    #@2
    invoke-interface {v1, p1}, Landroid/app/job/IJobScheduler;->schedule(Landroid/app/job/JobInfo;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@5
    move-result v1

    #@6
    return v1

    #@7
    .line 43
    :catch_0
    move-exception v0

    #@8
    .line 44
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    #@9
    return v1
.end method
