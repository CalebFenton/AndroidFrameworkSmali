.class public Lcom/android/server/job/controllers/ConnectivityController;
.super Lcom/android/server/job/controllers/StateController;
.source "ConnectivityController.java"

# interfaces
.implements Landroid/net/ConnectivityManager$OnNetworkActiveListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/job/controllers/ConnectivityController$ConnectivityChangedReceiver;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "JobScheduler.Conn"

.field private static mSingleton:Lcom/android/server/job/controllers/ConnectivityController;

.field private static sCreationLock:Ljava/lang/Object;


# instance fields
.field private final mConnectivityChangedReceiver:Landroid/content/BroadcastReceiver;

.field private mNetworkConnected:Z

.field private mNetworkUnmetered:Z

.field private final mTrackedJobs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/server/job/controllers/JobStatus;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static synthetic -get0(Lcom/android/server/job/controllers/ConnectivityController;)Z
    .locals 1

    #@0
    iget-boolean v0, p0, Lcom/android/server/job/controllers/ConnectivityController;->mNetworkConnected:Z

    #@2
    return v0
.end method

.method static synthetic -set0(Lcom/android/server/job/controllers/ConnectivityController;Z)Z
    .locals 0

    #@0
    iput-boolean p1, p0, Lcom/android/server/job/controllers/ConnectivityController;->mNetworkConnected:Z

    #@2
    return p1
.end method

.method static synthetic -set1(Lcom/android/server/job/controllers/ConnectivityController;Z)Z
    .locals 0

    #@0
    iput-boolean p1, p0, Lcom/android/server/job/controllers/ConnectivityController;->mNetworkUnmetered:Z

    #@2
    return p1
.end method

.method static synthetic -wrap0(Lcom/android/server/job/controllers/ConnectivityController;I)V
    .locals 0
    .param p1, "userId"    # I

    #@0
    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/job/controllers/ConnectivityController;->updateTrackedJobs(I)V

    #@3
    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 52
    new-instance v0, Ljava/lang/Object;

    #@2
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    #@5
    sput-object v0, Lcom/android/server/job/controllers/ConnectivityController;->sCreationLock:Ljava/lang/Object;

    #@7
    .line 43
    return-void
.end method

.method private constructor <init>(Lcom/android/server/job/StateChangedListener;Landroid/content/Context;)V
    .locals 8
    .param p1, "stateChangedListener"    # Lcom/android/server/job/StateChangedListener;
    .param p2, "context"    # Landroid/content/Context;

    #@0
    .prologue
    const/4 v7, 0x0

    #@1
    const/4 v4, 0x0

    #@2
    .line 68
    invoke-direct {p0, p1, p2}, Lcom/android/server/job/controllers/StateController;-><init>(Lcom/android/server/job/StateChangedListener;Landroid/content/Context;)V

    #@5
    .line 47
    new-instance v0, Ljava/util/LinkedList;

    #@7
    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    #@a
    iput-object v0, p0, Lcom/android/server/job/controllers/ConnectivityController;->mTrackedJobs:Ljava/util/List;

    #@c
    .line 49
    new-instance v0, Lcom/android/server/job/controllers/ConnectivityController$ConnectivityChangedReceiver;

    #@e
    invoke-direct {v0, p0}, Lcom/android/server/job/controllers/ConnectivityController$ConnectivityChangedReceiver;-><init>(Lcom/android/server/job/controllers/ConnectivityController;)V

    #@11
    .line 48
    iput-object v0, p0, Lcom/android/server/job/controllers/ConnectivityController;->mConnectivityChangedReceiver:Landroid/content/BroadcastReceiver;

    #@13
    .line 70
    new-instance v3, Landroid/content/IntentFilter;

    #@15
    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    #@18
    .line 71
    .local v3, "intentFilter":Landroid/content/IntentFilter;
    const-string/jumbo v0, "android.net.conn.CONNECTIVITY_CHANGE"

    #@1b
    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    #@1e
    .line 72
    iget-object v0, p0, Lcom/android/server/job/controllers/ConnectivityController;->mContext:Landroid/content/Context;

    #@20
    .line 73
    iget-object v1, p0, Lcom/android/server/job/controllers/ConnectivityController;->mConnectivityChangedReceiver:Landroid/content/BroadcastReceiver;

    #@22
    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    #@24
    move-object v5, v4

    #@25
    .line 72
    invoke-virtual/range {v0 .. v5}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    #@28
    .line 75
    const-string/jumbo v0, "connectivity"

    #@2b
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    #@2e
    move-result-object v6

    #@2f
    check-cast v6, Lcom/android/server/ConnectivityService;

    #@31
    .line 76
    .local v6, "cs":Lcom/android/server/ConnectivityService;
    if-eqz v6, :cond_2

    #@33
    .line 77
    invoke-virtual {v6}, Lcom/android/server/ConnectivityService;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    #@36
    move-result-object v0

    #@37
    if-eqz v0, :cond_0

    #@39
    .line 78
    invoke-virtual {v6}, Lcom/android/server/ConnectivityService;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    #@3c
    move-result-object v0

    #@3d
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    #@40
    move-result v0

    #@41
    iput-boolean v0, p0, Lcom/android/server/job/controllers/ConnectivityController;->mNetworkConnected:Z

    #@43
    .line 80
    :cond_0
    iget-boolean v0, p0, Lcom/android/server/job/controllers/ConnectivityController;->mNetworkConnected:Z

    #@45
    if-eqz v0, :cond_1

    #@47
    invoke-virtual {v6}, Lcom/android/server/ConnectivityService;->isActiveNetworkMetered()Z

    #@4a
    move-result v0

    #@4b
    if-eqz v0, :cond_3

    #@4d
    :cond_1
    move v0, v7

    #@4e
    :goto_0
    iput-boolean v0, p0, Lcom/android/server/job/controllers/ConnectivityController;->mNetworkUnmetered:Z

    #@50
    .line 67
    :cond_2
    return-void

    #@51
    .line 80
    :cond_3
    const/4 v0, 0x1

    #@52
    goto :goto_0
.end method

.method public static get(Lcom/android/server/job/JobSchedulerService;)Lcom/android/server/job/controllers/ConnectivityController;
    .locals 3
    .param p0, "jms"    # Lcom/android/server/job/JobSchedulerService;

    #@0
    .prologue
    .line 59
    sget-object v1, Lcom/android/server/job/controllers/ConnectivityController;->sCreationLock:Ljava/lang/Object;

    #@2
    monitor-enter v1

    #@3
    .line 60
    :try_start_0
    sget-object v0, Lcom/android/server/job/controllers/ConnectivityController;->mSingleton:Lcom/android/server/job/controllers/ConnectivityController;

    #@5
    if-nez v0, :cond_0

    #@7
    .line 61
    new-instance v0, Lcom/android/server/job/controllers/ConnectivityController;

    #@9
    invoke-virtual {p0}, Lcom/android/server/job/JobSchedulerService;->getContext()Landroid/content/Context;

    #@c
    move-result-object v2

    #@d
    invoke-direct {v0, p0, v2}, Lcom/android/server/job/controllers/ConnectivityController;-><init>(Lcom/android/server/job/StateChangedListener;Landroid/content/Context;)V

    #@10
    sput-object v0, Lcom/android/server/job/controllers/ConnectivityController;->mSingleton:Lcom/android/server/job/controllers/ConnectivityController;

    #@12
    .line 63
    :cond_0
    sget-object v0, Lcom/android/server/job/controllers/ConnectivityController;->mSingleton:Lcom/android/server/job/controllers/ConnectivityController;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@14
    monitor-exit v1

    #@15
    return-object v0

    #@16
    .line 59
    :catchall_0
    move-exception v0

    #@17
    monitor-exit v1

    #@18
    throw v0
.end method

.method private updateTrackedJobs(I)V
    .locals 8
    .param p1, "userId"    # I

    #@0
    .prologue
    .line 108
    iget-object v6, p0, Lcom/android/server/job/controllers/ConnectivityController;->mTrackedJobs:Ljava/util/List;

    #@2
    monitor-enter v6

    #@3
    .line 109
    const/4 v0, 0x0

    #@4
    .line 110
    .local v0, "changed":Z
    :try_start_0
    iget-object v5, p0, Lcom/android/server/job/controllers/ConnectivityController;->mTrackedJobs:Ljava/util/List;

    #@6
    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@9
    move-result-object v2

    #@a
    .local v2, "js$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    #@d
    move-result v5

    #@e
    if-eqz v5, :cond_2

    #@10
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@13
    move-result-object v1

    #@14
    check-cast v1, Lcom/android/server/job/controllers/JobStatus;

    #@16
    .line 111
    .local v1, "js":Lcom/android/server/job/controllers/JobStatus;
    invoke-virtual {v1}, Lcom/android/server/job/controllers/JobStatus;->getUserId()I

    #@19
    move-result v5

    #@1a
    if-ne v5, p1, :cond_0

    #@1c
    .line 115
    iget-object v5, v1, Lcom/android/server/job/controllers/JobStatus;->connectivityConstraintSatisfied:Ljava/util/concurrent/atomic/AtomicBoolean;

    #@1e
    iget-boolean v7, p0, Lcom/android/server/job/controllers/ConnectivityController;->mNetworkConnected:Z

    #@20
    invoke-virtual {v5, v7}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    #@23
    move-result v3

    #@24
    .line 116
    .local v3, "prevIsConnected":Z
    iget-object v5, v1, Lcom/android/server/job/controllers/JobStatus;->unmeteredConstraintSatisfied:Ljava/util/concurrent/atomic/AtomicBoolean;

    #@26
    iget-boolean v7, p0, Lcom/android/server/job/controllers/ConnectivityController;->mNetworkUnmetered:Z

    #@28
    invoke-virtual {v5, v7}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    #@2b
    move-result v4

    #@2c
    .line 117
    .local v4, "prevIsMetered":Z
    iget-boolean v5, p0, Lcom/android/server/job/controllers/ConnectivityController;->mNetworkConnected:Z

    #@2e
    if-ne v3, v5, :cond_1

    #@30
    iget-boolean v5, p0, Lcom/android/server/job/controllers/ConnectivityController;->mNetworkUnmetered:Z

    #@32
    if-eq v4, v5, :cond_0

    #@34
    .line 118
    :cond_1
    const/4 v0, 0x1

    #@35
    goto :goto_0

    #@36
    .line 121
    .end local v1    # "js":Lcom/android/server/job/controllers/JobStatus;
    .end local v3    # "prevIsConnected":Z
    .end local v4    # "prevIsMetered":Z
    :cond_2
    if-eqz v0, :cond_3

    #@38
    .line 122
    iget-object v5, p0, Lcom/android/server/job/controllers/ConnectivityController;->mStateChangedListener:Lcom/android/server/job/StateChangedListener;

    #@3a
    invoke-interface {v5}, Lcom/android/server/job/StateChangedListener;->onControllerStateChanged()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@3d
    :cond_3
    monitor-exit v6

    #@3e
    .line 107
    return-void

    #@3f
    .line 108
    .end local v2    # "js$iterator":Ljava/util/Iterator;
    :catchall_0
    move-exception v5

    #@40
    monitor-exit v6

    #@41
    throw v5
.end method


# virtual methods
.method public dumpControllerState(Ljava/io/PrintWriter;)V
    .locals 6
    .param p1, "pw"    # Ljava/io/PrintWriter;

    #@0
    .prologue
    .line 192
    const-string/jumbo v2, "Conn."

    #@3
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@6
    .line 193
    new-instance v2, Ljava/lang/StringBuilder;

    #@8
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@b
    const-string/jumbo v3, "connected: "

    #@e
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@11
    move-result-object v2

    #@12
    iget-boolean v3, p0, Lcom/android/server/job/controllers/ConnectivityController;->mNetworkConnected:Z

    #@14
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@17
    move-result-object v2

    #@18
    const-string/jumbo v3, " unmetered: "

    #@1b
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1e
    move-result-object v2

    #@1f
    iget-boolean v3, p0, Lcom/android/server/job/controllers/ConnectivityController;->mNetworkUnmetered:Z

    #@21
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@24
    move-result-object v2

    #@25
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@28
    move-result-object v2

    #@29
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@2c
    .line 194
    iget-object v2, p0, Lcom/android/server/job/controllers/ConnectivityController;->mTrackedJobs:Ljava/util/List;

    #@2e
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@31
    move-result-object v1

    #@32
    .local v1, "js$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@35
    move-result v2

    #@36
    if-eqz v2, :cond_0

    #@38
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@3b
    move-result-object v0

    #@3c
    check-cast v0, Lcom/android/server/job/controllers/JobStatus;

    #@3e
    .line 195
    .local v0, "js":Lcom/android/server/job/controllers/JobStatus;
    new-instance v2, Ljava/lang/StringBuilder;

    #@40
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@43
    invoke-virtual {v0}, Lcom/android/server/job/controllers/JobStatus;->hashCode()I

    #@46
    move-result v3

    #@47
    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    #@4a
    move-result-object v3

    #@4b
    const/4 v4, 0x0

    #@4c
    const/4 v5, 0x3

    #@4d
    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@50
    move-result-object v3

    #@51
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@54
    move-result-object v2

    #@55
    const-string/jumbo v3, ".."

    #@58
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5b
    move-result-object v2

    #@5c
    .line 196
    const-string/jumbo v3, ": C="

    #@5f
    .line 195
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@62
    move-result-object v2

    #@63
    .line 196
    invoke-virtual {v0}, Lcom/android/server/job/controllers/JobStatus;->hasConnectivityConstraint()Z

    #@66
    move-result v3

    #@67
    .line 195
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@6a
    move-result-object v2

    #@6b
    .line 197
    const-string/jumbo v3, ", UM="

    #@6e
    .line 195
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@71
    move-result-object v2

    #@72
    .line 197
    invoke-virtual {v0}, Lcom/android/server/job/controllers/JobStatus;->hasUnmeteredConstraint()Z

    #@75
    move-result v3

    #@76
    .line 195
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@79
    move-result-object v2

    #@7a
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@7d
    move-result-object v2

    #@7e
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@81
    goto :goto_0

    #@82
    .line 191
    .end local v0    # "js":Lcom/android/server/job/controllers/JobStatus;
    :cond_0
    return-void
.end method

.method public maybeStartTrackingJob(Lcom/android/server/job/controllers/JobStatus;)V
    .locals 3
    .param p1, "jobStatus"    # Lcom/android/server/job/controllers/JobStatus;

    #@0
    .prologue
    .line 86
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->hasConnectivityConstraint()Z

    #@3
    move-result v0

    #@4
    if-nez v0, :cond_0

    #@6
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->hasUnmeteredConstraint()Z

    #@9
    move-result v0

    #@a
    if-eqz v0, :cond_1

    #@c
    .line 87
    :cond_0
    iget-object v1, p0, Lcom/android/server/job/controllers/ConnectivityController;->mTrackedJobs:Ljava/util/List;

    #@e
    monitor-enter v1

    #@f
    .line 88
    :try_start_0
    iget-object v0, p1, Lcom/android/server/job/controllers/JobStatus;->connectivityConstraintSatisfied:Ljava/util/concurrent/atomic/AtomicBoolean;

    #@11
    iget-boolean v2, p0, Lcom/android/server/job/controllers/ConnectivityController;->mNetworkConnected:Z

    #@13
    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    #@16
    .line 89
    iget-object v0, p1, Lcom/android/server/job/controllers/JobStatus;->unmeteredConstraintSatisfied:Ljava/util/concurrent/atomic/AtomicBoolean;

    #@18
    iget-boolean v2, p0, Lcom/android/server/job/controllers/ConnectivityController;->mNetworkUnmetered:Z

    #@1a
    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    #@1d
    .line 90
    iget-object v0, p0, Lcom/android/server/job/controllers/ConnectivityController;->mTrackedJobs:Ljava/util/List;

    #@1f
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@22
    monitor-exit v1

    #@23
    .line 85
    :cond_1
    return-void

    #@24
    .line 87
    :catchall_0
    move-exception v0

    #@25
    monitor-exit v1

    #@26
    throw v0
.end method

.method public maybeStopTrackingJob(Lcom/android/server/job/controllers/JobStatus;)V
    .locals 2
    .param p1, "jobStatus"    # Lcom/android/server/job/controllers/JobStatus;

    #@0
    .prologue
    .line 97
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->hasConnectivityConstraint()Z

    #@3
    move-result v0

    #@4
    if-nez v0, :cond_0

    #@6
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->hasUnmeteredConstraint()Z

    #@9
    move-result v0

    #@a
    if-eqz v0, :cond_1

    #@c
    .line 98
    :cond_0
    iget-object v1, p0, Lcom/android/server/job/controllers/ConnectivityController;->mTrackedJobs:Ljava/util/List;

    #@e
    monitor-enter v1

    #@f
    .line 99
    :try_start_0
    iget-object v0, p0, Lcom/android/server/job/controllers/ConnectivityController;->mTrackedJobs:Ljava/util/List;

    #@11
    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@14
    monitor-exit v1

    #@15
    .line 96
    :cond_1
    return-void

    #@16
    .line 98
    :catchall_0
    move-exception v0

    #@17
    monitor-exit v1

    #@18
    throw v0
.end method

.method public declared-synchronized onNetworkActive()V
    .locals 4

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 131
    :try_start_0
    iget-object v3, p0, Lcom/android/server/job/controllers/ConnectivityController;->mTrackedJobs:Ljava/util/List;

    #@3
    monitor-enter v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    #@4
    .line 132
    :try_start_1
    iget-object v2, p0, Lcom/android/server/job/controllers/ConnectivityController;->mTrackedJobs:Ljava/util/List;

    #@6
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@9
    move-result-object v1

    #@a
    .local v1, "js$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@d
    move-result v2

    #@e
    if-eqz v2, :cond_1

    #@10
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@13
    move-result-object v0

    #@14
    check-cast v0, Lcom/android/server/job/controllers/JobStatus;

    #@16
    .line 133
    .local v0, "js":Lcom/android/server/job/controllers/JobStatus;
    invoke-virtual {v0}, Lcom/android/server/job/controllers/JobStatus;->isReady()Z

    #@19
    move-result v2

    #@1a
    if-eqz v2, :cond_0

    #@1c
    .line 137
    iget-object v2, p0, Lcom/android/server/job/controllers/ConnectivityController;->mStateChangedListener:Lcom/android/server/job/StateChangedListener;

    #@1e
    invoke-interface {v2, v0}, Lcom/android/server/job/StateChangedListener;->onRunJobNow(Lcom/android/server/job/controllers/JobStatus;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@21
    goto :goto_0

    #@22
    .line 131
    .end local v0    # "js":Lcom/android/server/job/controllers/JobStatus;
    .end local v1    # "js$iterator":Ljava/util/Iterator;
    :catchall_0
    move-exception v2

    #@23
    :try_start_2
    monitor-exit v3

    #@24
    throw v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    #@25
    :catchall_1
    move-exception v2

    #@26
    monitor-exit p0

    #@27
    throw v2

    #@28
    .restart local v1    # "js$iterator":Ljava/util/Iterator;
    :cond_1
    :try_start_3
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    #@29
    monitor-exit p0

    #@2a
    .line 130
    return-void
.end method
