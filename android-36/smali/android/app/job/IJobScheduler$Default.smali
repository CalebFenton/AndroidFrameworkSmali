.class public Landroid/app/job/IJobScheduler$Default;
.super Ljava/lang/Object;
.source "IJobScheduler.java"

# interfaces
.implements Landroid/app/job/IJobScheduler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/job/IJobScheduler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Default"
.end annotation


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 2

    .line 92
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist canRunUserInitiatedJobs(Ljava/lang/String;)Z
    .registers 3
    .param p1, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 67
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist cancel(Ljava/lang/String;I)V
    .registers 3
    .param p1, "namespace"    # Ljava/lang/String;
    .param p2, "jobId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 33
    return-void
.end method

.method public blacklist cancelAll()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 36
    return-void
.end method

.method public blacklist cancelAllInNamespace(Ljava/lang/String;)V
    .registers 2
    .param p1, "namespace"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 39
    return-void
.end method

.method public blacklist enqueue(Ljava/lang/String;Landroid/app/job/JobInfo;Landroid/app/job/JobWorkItem;)I
    .registers 5
    .param p1, "namespace"    # Ljava/lang/String;
    .param p2, "job"    # Landroid/app/job/JobInfo;
    .param p3, "work"    # Landroid/app/job/JobWorkItem;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 25
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getAllJobSnapshots()Landroid/content/pm/ParceledListSlice;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 79
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getAllPendingJobs()Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/content/pm/ParceledListSlice<",
            "Landroid/app/job/JobInfo;",
            ">;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 43
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getAllPendingJobsInNamespace(Ljava/lang/String;)Landroid/content/pm/ParceledListSlice;
    .registers 3
    .param p1, "namespace"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Landroid/content/pm/ParceledListSlice<",
            "Landroid/app/job/JobInfo;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 47
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getPendingJob(Ljava/lang/String;I)Landroid/app/job/JobInfo;
    .registers 4
    .param p1, "namespace"    # Ljava/lang/String;
    .param p2, "jobId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 51
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getPendingJobReason(Ljava/lang/String;I)I
    .registers 4
    .param p1, "namespace"    # Ljava/lang/String;
    .param p2, "jobId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 55
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getPendingJobReasons(Ljava/lang/String;I)[I
    .registers 4
    .param p1, "namespace"    # Ljava/lang/String;
    .param p2, "jobId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 59
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getPendingJobReasonsHistory(Ljava/lang/String;I)Ljava/util/List;
    .registers 4
    .param p1, "namespace"    # Ljava/lang/String;
    .param p2, "jobId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/List<",
            "Landroid/app/job/PendingJobReasonsInfo;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 63
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getStartedJobs()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/app/job/JobInfo;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 75
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist hasRunUserInitiatedJobsPermission(Ljava/lang/String;I)Z
    .registers 4
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 71
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist notePendingUserRequestedAppStop(Ljava/lang/String;ILjava/lang/String;)V
    .registers 4
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .param p3, "debugReason"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 89
    return-void
.end method

.method public blacklist registerUserVisibleJobObserver(Landroid/app/job/IUserVisibleJobObserver;)V
    .registers 2
    .param p1, "observer"    # Landroid/app/job/IUserVisibleJobObserver;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 83
    return-void
.end method

.method public blacklist schedule(Ljava/lang/String;Landroid/app/job/JobInfo;)I
    .registers 4
    .param p1, "namespace"    # Ljava/lang/String;
    .param p2, "job"    # Landroid/app/job/JobInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 21
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist scheduleAsPackage(Ljava/lang/String;Landroid/app/job/JobInfo;Ljava/lang/String;ILjava/lang/String;)I
    .registers 7
    .param p1, "namespace"    # Ljava/lang/String;
    .param p2, "job"    # Landroid/app/job/JobInfo;
    .param p3, "packageName"    # Ljava/lang/String;
    .param p4, "userId"    # I
    .param p5, "tag"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 29
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist unregisterUserVisibleJobObserver(Landroid/app/job/IUserVisibleJobObserver;)V
    .registers 2
    .param p1, "observer"    # Landroid/app/job/IUserVisibleJobObserver;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 86
    return-void
.end method
