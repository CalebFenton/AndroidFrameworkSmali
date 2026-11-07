.class public Landroid/app/JobSchedulerImpl;
.super Landroid/app/job/JobScheduler;
.source "JobSchedulerImpl.java"


# instance fields
.field greylist-max-o mBinder:Landroid/app/job/IJobScheduler;

.field private final blacklist mContext:Landroid/content/Context;

.field private final blacklist mNamespace:Ljava/lang/String;


# direct methods
.method private constructor blacklist <init>(Landroid/app/JobSchedulerImpl;Ljava/lang/String;)V
    .registers 5
    .param p1, "jsi"    # Landroid/app/JobSchedulerImpl;
    .param p2, "namespace"    # Ljava/lang/String;

    .line 64
    iget-object v0, p1, Landroid/app/JobSchedulerImpl;->mContext:Landroid/content/Context;

    iget-object v1, p1, Landroid/app/JobSchedulerImpl;->mBinder:Landroid/app/job/IJobScheduler;

    invoke-direct {p0, v0, v1, p2}, Landroid/app/JobSchedulerImpl;-><init>(Landroid/content/Context;Landroid/app/job/IJobScheduler;Ljava/lang/String;)V

    .line 65
    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;Landroid/app/job/IJobScheduler;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "binder"    # Landroid/app/job/IJobScheduler;

    .line 53
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid/app/JobSchedulerImpl;-><init>(Landroid/content/Context;Landroid/app/job/IJobScheduler;Ljava/lang/String;)V

    .line 54
    return-void
.end method

.method private constructor blacklist <init>(Landroid/content/Context;Landroid/app/job/IJobScheduler;Ljava/lang/String;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "binder"    # Landroid/app/job/IJobScheduler;
    .param p3, "namespace"    # Ljava/lang/String;

    .line 57
    invoke-direct {p0}, Landroid/app/job/JobScheduler;-><init>()V

    .line 58
    iput-object p1, p0, Landroid/app/JobSchedulerImpl;->mContext:Landroid/content/Context;

    .line 59
    iput-object p2, p0, Landroid/app/JobSchedulerImpl;->mBinder:Landroid/app/job/IJobScheduler;

    .line 60
    iput-object p3, p0, Landroid/app/JobSchedulerImpl;->mNamespace:Ljava/lang/String;

    .line 61
    return-void
.end method


# virtual methods
.method public whitelist canRunUserInitiatedJobs()Z
    .registers 3

    .line 200
    :try_start_0
    iget-object v0, p0, Landroid/app/JobSchedulerImpl;->mBinder:Landroid/app/job/IJobScheduler;

    iget-object v1, p0, Landroid/app/JobSchedulerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/app/job/IJobScheduler;->canRunUserInitiatedJobs(Ljava/lang/String;)Z

    move-result v0
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_c} :catch_d

    return v0

    .line 201
    :catch_d
    move-exception v0

    .line 202
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    return v1
.end method

.method public whitelist cancel(I)V
    .registers 4
    .param p1, "jobId"    # I

    .line 116
    :try_start_0
    iget-object v0, p0, Landroid/app/JobSchedulerImpl;->mBinder:Landroid/app/job/IJobScheduler;

    iget-object v1, p0, Landroid/app/JobSchedulerImpl;->mNamespace:Ljava/lang/String;

    invoke-interface {v0, v1, p1}, Landroid/app/job/IJobScheduler;->cancel(Ljava/lang/String;I)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_7} :catch_8

    goto :goto_9

    .line 117
    :catch_8
    move-exception v0

    :goto_9
    nop

    .line 118
    return-void
.end method

.method public whitelist cancelAll()V
    .registers 3

    .line 123
    :try_start_0
    iget-object v0, p0, Landroid/app/JobSchedulerImpl;->mBinder:Landroid/app/job/IJobScheduler;

    iget-object v1, p0, Landroid/app/JobSchedulerImpl;->mNamespace:Ljava/lang/String;

    invoke-interface {v0, v1}, Landroid/app/job/IJobScheduler;->cancelAllInNamespace(Ljava/lang/String;)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_7} :catch_8

    goto :goto_9

    .line 124
    :catch_8
    move-exception v0

    :goto_9
    nop

    .line 125
    return-void
.end method

.method public whitelist cancelInAllNamespaces()V
    .registers 2

    .line 130
    :try_start_0
    iget-object v0, p0, Landroid/app/JobSchedulerImpl;->mBinder:Landroid/app/job/IJobScheduler;

    invoke-interface {v0}, Landroid/app/job/IJobScheduler;->cancelAll()V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    goto :goto_7

    .line 131
    :catch_6
    move-exception v0

    :goto_7
    nop

    .line 132
    return-void
.end method

.method public whitelist enqueue(Landroid/app/job/JobInfo;Landroid/app/job/JobWorkItem;)I
    .registers 5
    .param p1, "job"    # Landroid/app/job/JobInfo;
    .param p2, "work"    # Landroid/app/job/JobWorkItem;

    .line 98
    :try_start_0
    iget-object v0, p0, Landroid/app/JobSchedulerImpl;->mBinder:Landroid/app/job/IJobScheduler;

    iget-object v1, p0, Landroid/app/JobSchedulerImpl;->mNamespace:Ljava/lang/String;

    invoke-interface {v0, v1, p1, p2}, Landroid/app/job/IJobScheduler;->enqueue(Ljava/lang/String;Landroid/app/job/JobInfo;Landroid/app/job/JobWorkItem;)I

    move-result v0
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_8} :catch_9

    return v0

    .line 99
    :catch_9
    move-exception v0

    .line 100
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    return v1
.end method

.method public whitelist forNamespace(Ljava/lang/String;)Landroid/app/job/JobScheduler;
    .registers 4
    .param p1, "namespace"    # Ljava/lang/String;

    .line 70
    invoke-static {p1}, Landroid/app/JobSchedulerImpl;->sanitizeNamespace(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 71
    if-eqz p1, :cond_1b

    .line 74
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_12

    .line 77
    new-instance v0, Landroid/app/JobSchedulerImpl;

    invoke-direct {v0, p0, p1}, Landroid/app/JobSchedulerImpl;-><init>(Landroid/app/JobSchedulerImpl;Ljava/lang/String;)V

    return-object v0

    .line 75
    :cond_12
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "namespace cannot be empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 72
    :cond_1b
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "namespace cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist getAllJobSnapshots()Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/app/job/JobSnapshot;",
            ">;"
        }
    .end annotation

    .line 227
    :try_start_0
    iget-object v0, p0, Landroid/app/JobSchedulerImpl;->mBinder:Landroid/app/job/IJobScheduler;

    invoke-interface {v0}, Landroid/app/job/IJobScheduler;->getAllJobSnapshots()Landroid/content/pm/ParceledListSlice;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;

    move-result-object v0
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_a} :catch_b

    return-object v0

    .line 228
    :catch_b
    move-exception v0

    .line 229
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    return-object v1
.end method

.method public whitelist getAllPendingJobs()Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/app/job/JobInfo;",
            ">;"
        }
    .end annotation

    .line 137
    :try_start_0
    iget-object v0, p0, Landroid/app/JobSchedulerImpl;->mBinder:Landroid/app/job/IJobScheduler;

    iget-object v1, p0, Landroid/app/JobSchedulerImpl;->mNamespace:Ljava/lang/String;

    invoke-interface {v0, v1}, Landroid/app/job/IJobScheduler;->getAllPendingJobsInNamespace(Ljava/lang/String;)Landroid/content/pm/ParceledListSlice;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;

    move-result-object v0
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_c} :catch_d

    return-object v0

    .line 138
    :catch_d
    move-exception v0

    .line 139
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    return-object v1
.end method

.method public whitelist getNamespace()Ljava/lang/String;
    .registers 2

    .line 83
    iget-object v0, p0, Landroid/app/JobSchedulerImpl;->mNamespace:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getPendingJob(I)Landroid/app/job/JobInfo;
    .registers 4
    .param p1, "jobId"    # I

    .line 162
    :try_start_0
    iget-object v0, p0, Landroid/app/JobSchedulerImpl;->mBinder:Landroid/app/job/IJobScheduler;

    iget-object v1, p0, Landroid/app/JobSchedulerImpl;->mNamespace:Ljava/lang/String;

    invoke-interface {v0, v1, p1}, Landroid/app/job/IJobScheduler;->getPendingJob(Ljava/lang/String;I)Landroid/app/job/JobInfo;

    move-result-object v0
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_8} :catch_9

    return-object v0

    .line 163
    :catch_9
    move-exception v0

    .line 164
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    return-object v1
.end method

.method public whitelist getPendingJobReason(I)I
    .registers 4
    .param p1, "jobId"    # I

    .line 171
    :try_start_0
    iget-object v0, p0, Landroid/app/JobSchedulerImpl;->mBinder:Landroid/app/job/IJobScheduler;

    iget-object v1, p0, Landroid/app/JobSchedulerImpl;->mNamespace:Ljava/lang/String;

    invoke-interface {v0, v1, p1}, Landroid/app/job/IJobScheduler;->getPendingJobReason(Ljava/lang/String;I)I

    move-result v0
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_8} :catch_9

    return v0

    .line 172
    :catch_9
    move-exception v0

    .line 173
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    return v1
.end method

.method public whitelist getPendingJobReasons(I)[I
    .registers 4
    .param p1, "jobId"    # I

    .line 181
    :try_start_0
    iget-object v0, p0, Landroid/app/JobSchedulerImpl;->mBinder:Landroid/app/job/IJobScheduler;

    iget-object v1, p0, Landroid/app/JobSchedulerImpl;->mNamespace:Ljava/lang/String;

    invoke-interface {v0, v1, p1}, Landroid/app/job/IJobScheduler;->getPendingJobReasons(Ljava/lang/String;I)[I

    move-result-object v0
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_8} :catch_9

    return-object v0

    .line 182
    :catch_9
    move-exception v0

    .line 183
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    filled-new-array {v1}, [I

    move-result-object v1

    return-object v1
.end method

.method public whitelist getPendingJobReasonsHistory(I)Ljava/util/List;
    .registers 4
    .param p1, "jobId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Landroid/app/job/PendingJobReasonsInfo;",
            ">;"
        }
    .end annotation

    .line 191
    :try_start_0
    iget-object v0, p0, Landroid/app/JobSchedulerImpl;->mBinder:Landroid/app/job/IJobScheduler;

    iget-object v1, p0, Landroid/app/JobSchedulerImpl;->mNamespace:Ljava/lang/String;

    invoke-interface {v0, v1, p1}, Landroid/app/job/IJobScheduler;->getPendingJobReasonsHistory(Ljava/lang/String;I)Ljava/util/List;

    move-result-object v0
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_8} :catch_9

    return-object v0

    .line 192
    :catch_9
    move-exception v0

    .line 193
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v1, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    return-object v1
.end method

.method public whitelist getPendingJobsInAllNamespaces()Ljava/util/Map;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Landroid/app/job/JobInfo;",
            ">;>;"
        }
    .end annotation

    .line 146
    :try_start_0
    iget-object v0, p0, Landroid/app/JobSchedulerImpl;->mBinder:Landroid/app/job/IJobScheduler;

    .line 147
    invoke-interface {v0}, Landroid/app/job/IJobScheduler;->getAllPendingJobs()Ljava/util/Map;

    move-result-object v0

    .line 148
    .local v0, "parceledList":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Landroid/content/pm/ParceledListSlice<Landroid/app/job/JobInfo;>;>;"
    new-instance v1, Landroid/util/ArrayMap;

    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    .line 149
    .local v1, "jobMap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/util/List<Landroid/app/job/JobInfo;>;>;"
    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    .line 150
    .local v2, "keys":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_13
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2e

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 151
    .local v4, "key":Ljava/lang/String;
    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/ParceledListSlice;

    invoke-virtual {v5}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2c
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_2c} :catch_2f

    .line 152
    nop

    .end local v4    # "key":Ljava/lang/String;
    goto :goto_13

    .line 153
    :cond_2e
    return-object v1

    .line 154
    .end local v0    # "parceledList":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Landroid/content/pm/ParceledListSlice<Landroid/app/job/JobInfo;>;>;"
    .end local v1    # "jobMap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/util/List<Landroid/app/job/JobInfo;>;>;"
    .end local v2    # "keys":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :catch_2f
    move-exception v0

    .line 155
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    return-object v1
.end method

.method public blacklist getStartedJobs()Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/app/job/JobInfo;",
            ">;"
        }
    .end annotation

    .line 218
    :try_start_0
    iget-object v0, p0, Landroid/app/JobSchedulerImpl;->mBinder:Landroid/app/job/IJobScheduler;

    invoke-interface {v0}, Landroid/app/job/IJobScheduler;->getStartedJobs()Ljava/util/List;

    move-result-object v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return-object v0

    .line 219
    :catch_7
    move-exception v0

    .line 220
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    return-object v1
.end method

.method public blacklist hasRunUserInitiatedJobsPermission(Ljava/lang/String;I)Z
    .registers 5
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .line 209
    :try_start_0
    iget-object v0, p0, Landroid/app/JobSchedulerImpl;->mBinder:Landroid/app/job/IJobScheduler;

    invoke-interface {v0, p1, p2}, Landroid/app/job/IJobScheduler;->hasRunUserInitiatedJobsPermission(Ljava/lang/String;I)Z

    move-result v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return v0

    .line 210
    :catch_7
    move-exception v0

    .line 211
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    return v1
.end method

.method public blacklist notePendingUserRequestedAppStop(Ljava/lang/String;ILjava/lang/String;)V
    .registers 5
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .param p3, "debugReason"    # Ljava/lang/String;

    .line 262
    :try_start_0
    iget-object v0, p0, Landroid/app/JobSchedulerImpl;->mBinder:Landroid/app/job/IJobScheduler;

    invoke-interface {v0, p1, p2, p3}, Landroid/app/job/IJobScheduler;->notePendingUserRequestedAppStop(Ljava/lang/String;ILjava/lang/String;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 264
    goto :goto_7

    .line 263
    :catch_6
    move-exception v0

    .line 265
    :goto_7
    return-void
.end method

.method public blacklist registerUserVisibleJobObserver(Landroid/app/job/IUserVisibleJobObserver;)V
    .registers 3
    .param p1, "observer"    # Landroid/app/job/IUserVisibleJobObserver;

    .line 239
    :try_start_0
    iget-object v0, p0, Landroid/app/JobSchedulerImpl;->mBinder:Landroid/app/job/IJobScheduler;

    invoke-interface {v0, p1}, Landroid/app/job/IJobScheduler;->registerUserVisibleJobObserver(Landroid/app/job/IUserVisibleJobObserver;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 241
    goto :goto_7

    .line 240
    :catch_6
    move-exception v0

    .line 242
    :goto_7
    return-void
.end method

.method public whitelist schedule(Landroid/app/job/JobInfo;)I
    .registers 4
    .param p1, "job"    # Landroid/app/job/JobInfo;

    .line 89
    :try_start_0
    iget-object v0, p0, Landroid/app/JobSchedulerImpl;->mBinder:Landroid/app/job/IJobScheduler;

    iget-object v1, p0, Landroid/app/JobSchedulerImpl;->mNamespace:Ljava/lang/String;

    invoke-interface {v0, v1, p1}, Landroid/app/job/IJobScheduler;->schedule(Ljava/lang/String;Landroid/app/job/JobInfo;)I

    move-result v0
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_8} :catch_9

    return v0

    .line 90
    :catch_9
    move-exception v0

    .line 91
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    return v1
.end method

.method public whitelist scheduleAsPackage(Landroid/app/job/JobInfo;Ljava/lang/String;ILjava/lang/String;)I
    .registers 11
    .param p1, "job"    # Landroid/app/job/JobInfo;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "userId"    # I
    .param p4, "tag"    # Ljava/lang/String;

    .line 107
    :try_start_0
    iget-object v0, p0, Landroid/app/JobSchedulerImpl;->mBinder:Landroid/app/job/IJobScheduler;

    iget-object v1, p0, Landroid/app/JobSchedulerImpl;->mNamespace:Ljava/lang/String;
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_4} :catch_10

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move-object v5, p4

    .end local p1    # "job":Landroid/app/job/JobInfo;
    .end local p2    # "packageName":Ljava/lang/String;
    .end local p3    # "userId":I
    .end local p4    # "tag":Ljava/lang/String;
    .local v2, "job":Landroid/app/job/JobInfo;
    .local v3, "packageName":Ljava/lang/String;
    .local v4, "userId":I
    .local v5, "tag":Ljava/lang/String;
    :try_start_8
    invoke-interface/range {v0 .. v5}, Landroid/app/job/IJobScheduler;->scheduleAsPackage(Ljava/lang/String;Landroid/app/job/JobInfo;Ljava/lang/String;ILjava/lang/String;)I

    move-result p1
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_c} :catch_d

    return p1

    .line 108
    :catch_d
    move-exception v0

    move-object p1, v0

    goto :goto_16

    .end local v2    # "job":Landroid/app/job/JobInfo;
    .end local v3    # "packageName":Ljava/lang/String;
    .end local v4    # "userId":I
    .end local v5    # "tag":Ljava/lang/String;
    .restart local p1    # "job":Landroid/app/job/JobInfo;
    .restart local p2    # "packageName":Ljava/lang/String;
    .restart local p3    # "userId":I
    .restart local p4    # "tag":Ljava/lang/String;
    :catch_10
    move-exception v0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move-object v5, p4

    move-object p1, v0

    .line 109
    .end local p2    # "packageName":Ljava/lang/String;
    .end local p3    # "userId":I
    .end local p4    # "tag":Ljava/lang/String;
    .restart local v2    # "job":Landroid/app/job/JobInfo;
    .restart local v3    # "packageName":Ljava/lang/String;
    .restart local v4    # "userId":I
    .restart local v5    # "tag":Ljava/lang/String;
    .local p1, "e":Landroid/os/RemoteException;
    :goto_16
    const/4 p2, 0x0

    return p2
.end method

.method public blacklist unregisterUserVisibleJobObserver(Landroid/app/job/IUserVisibleJobObserver;)V
    .registers 3
    .param p1, "observer"    # Landroid/app/job/IUserVisibleJobObserver;

    .line 250
    :try_start_0
    iget-object v0, p0, Landroid/app/JobSchedulerImpl;->mBinder:Landroid/app/job/IJobScheduler;

    invoke-interface {v0, p1}, Landroid/app/job/IJobScheduler;->unregisterUserVisibleJobObserver(Landroid/app/job/IUserVisibleJobObserver;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 252
    goto :goto_7

    .line 251
    :catch_6
    move-exception v0

    .line 253
    :goto_7
    return-void
.end method
