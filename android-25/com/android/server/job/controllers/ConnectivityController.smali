.class public Lcom/android/server/job/controllers/ConnectivityController;
.super Lcom/android/server/job/controllers/StateController;
.source "ConnectivityController.java"

# interfaces
.implements Landroid/net/ConnectivityManager$OnNetworkActiveListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/job/controllers/ConnectivityController$1;,
        Lcom/android/server/job/controllers/ConnectivityController$2;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "JobScheduler.Conn"

.field private static mSingleton:Lcom/android/server/job/controllers/ConnectivityController;

.field private static sCreationLock:Ljava/lang/Object;


# instance fields
.field private final mConnManager:Landroid/net/ConnectivityManager;

.field private mConnectivityReceiver:Landroid/content/BroadcastReceiver;

.field private mNetPolicyListener:Landroid/net/INetworkPolicyListener;

.field private final mNetPolicyManager:Landroid/net/NetworkPolicyManager;

.field private final mTrackedJobs:Ljava/util/ArrayList;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/job/controllers/JobStatus;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static synthetic -wrap0(Lcom/android/server/job/controllers/ConnectivityController;I)V
    .locals 0
    .param p1, "uid"    # I

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
    .line 57
    new-instance v0, Ljava/lang/Object;

    #@2
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    #@5
    sput-object v0, Lcom/android/server/job/controllers/ConnectivityController;->sCreationLock:Ljava/lang/Object;

    #@7
    .line 45
    return-void
.end method

.method private constructor <init>(Lcom/android/server/job/StateChangedListener;Landroid/content/Context;Ljava/lang/Object;)V
    .locals 6
    .param p1, "stateChangedListener"    # Lcom/android/server/job/StateChangedListener;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "lock"    # Ljava/lang/Object;

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 70
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/job/controllers/StateController;-><init>(Lcom/android/server/job/StateChangedListener;Landroid/content/Context;Ljava/lang/Object;)V

    #@4
    .line 53
    new-instance v0, Ljava/util/ArrayList;

    #@6
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@9
    iput-object v0, p0, Lcom/android/server/job/controllers/ConnectivityController;->mTrackedJobs:Ljava/util/ArrayList;

    #@b
    .line 154
    new-instance v0, Lcom/android/server/job/controllers/ConnectivityController$1;

    #@d
    invoke-direct {v0, p0}, Lcom/android/server/job/controllers/ConnectivityController$1;-><init>(Lcom/android/server/job/controllers/ConnectivityController;)V

    #@10
    iput-object v0, p0, Lcom/android/server/job/controllers/ConnectivityController;->mConnectivityReceiver:Landroid/content/BroadcastReceiver;

    #@12
    .line 161
    new-instance v0, Lcom/android/server/job/controllers/ConnectivityController$2;

    #@14
    invoke-direct {v0, p0}, Lcom/android/server/job/controllers/ConnectivityController$2;-><init>(Lcom/android/server/job/controllers/ConnectivityController;)V

    #@17
    iput-object v0, p0, Lcom/android/server/job/controllers/ConnectivityController;->mNetPolicyListener:Landroid/net/INetworkPolicyListener;

    #@19
    .line 72
    iget-object v0, p0, Lcom/android/server/job/controllers/ConnectivityController;->mContext:Landroid/content/Context;

    #@1b
    const-class v1, Landroid/net/ConnectivityManager;

    #@1d
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    #@20
    move-result-object v0

    #@21
    check-cast v0, Landroid/net/ConnectivityManager;

    #@23
    iput-object v0, p0, Lcom/android/server/job/controllers/ConnectivityController;->mConnManager:Landroid/net/ConnectivityManager;

    #@25
    .line 73
    iget-object v0, p0, Lcom/android/server/job/controllers/ConnectivityController;->mContext:Landroid/content/Context;

    #@27
    const-class v1, Landroid/net/NetworkPolicyManager;

    #@29
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    #@2c
    move-result-object v0

    #@2d
    check-cast v0, Landroid/net/NetworkPolicyManager;

    #@2f
    iput-object v0, p0, Lcom/android/server/job/controllers/ConnectivityController;->mNetPolicyManager:Landroid/net/NetworkPolicyManager;

    #@31
    .line 75
    new-instance v3, Landroid/content/IntentFilter;

    #@33
    const-string/jumbo v0, "android.net.conn.CONNECTIVITY_CHANGE"

    #@36
    invoke-direct {v3, v0}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    #@39
    .line 76
    .local v3, "intentFilter":Landroid/content/IntentFilter;
    iget-object v0, p0, Lcom/android/server/job/controllers/ConnectivityController;->mContext:Landroid/content/Context;

    #@3b
    .line 77
    iget-object v1, p0, Lcom/android/server/job/controllers/ConnectivityController;->mConnectivityReceiver:Landroid/content/BroadcastReceiver;

    #@3d
    sget-object v2, Landroid/os/UserHandle;->SYSTEM:Landroid/os/UserHandle;

    #@3f
    move-object v5, v4

    #@40
    .line 76
    invoke-virtual/range {v0 .. v5}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    #@43
    .line 79
    iget-object v0, p0, Lcom/android/server/job/controllers/ConnectivityController;->mNetPolicyManager:Landroid/net/NetworkPolicyManager;

    #@45
    iget-object v1, p0, Lcom/android/server/job/controllers/ConnectivityController;->mNetPolicyListener:Landroid/net/INetworkPolicyListener;

    #@47
    invoke-virtual {v0, v1}, Landroid/net/NetworkPolicyManager;->registerListener(Landroid/net/INetworkPolicyListener;)V

    #@4a
    .line 69
    return-void
.end method

.method public static get(Lcom/android/server/job/JobSchedulerService;)Lcom/android/server/job/controllers/ConnectivityController;
    .locals 4
    .param p0, "jms"    # Lcom/android/server/job/JobSchedulerService;

    #@0
    .prologue
    .line 60
    sget-object v1, Lcom/android/server/job/controllers/ConnectivityController;->sCreationLock:Ljava/lang/Object;

    #@2
    monitor-enter v1

    #@3
    .line 61
    :try_start_0
    sget-object v0, Lcom/android/server/job/controllers/ConnectivityController;->mSingleton:Lcom/android/server/job/controllers/ConnectivityController;

    #@5
    if-nez v0, :cond_0

    #@7
    .line 62
    new-instance v0, Lcom/android/server/job/controllers/ConnectivityController;

    #@9
    invoke-virtual {p0}, Lcom/android/server/job/JobSchedulerService;->getContext()Landroid/content/Context;

    #@c
    move-result-object v2

    #@d
    invoke-virtual {p0}, Lcom/android/server/job/JobSchedulerService;->getLock()Ljava/lang/Object;

    #@10
    move-result-object v3

    #@11
    invoke-direct {v0, p0, v2, v3}, Lcom/android/server/job/controllers/ConnectivityController;-><init>(Lcom/android/server/job/StateChangedListener;Landroid/content/Context;Ljava/lang/Object;)V

    #@14
    sput-object v0, Lcom/android/server/job/controllers/ConnectivityController;->mSingleton:Lcom/android/server/job/controllers/ConnectivityController;

    #@16
    .line 64
    :cond_0
    sget-object v0, Lcom/android/server/job/controllers/ConnectivityController;->mSingleton:Lcom/android/server/job/controllers/ConnectivityController;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@18
    monitor-exit v1

    #@19
    return-object v0

    #@1a
    .line 60
    :catchall_0
    move-exception v0

    #@1b
    monitor-exit v1

    #@1c
    throw v0
.end method

.method private updateConstraintsSatisfied(Lcom/android/server/job/controllers/JobStatus;)Z
    .locals 8
    .param p1, "jobStatus"    # Lcom/android/server/job/controllers/JobStatus;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 101
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getFlags()I

    #@4
    move-result v6

    #@5
    and-int/lit8 v6, v6, 0x1

    #@7
    if-eqz v6, :cond_3

    #@9
    const/4 v2, 0x1

    #@a
    .line 102
    .local v2, "ignoreBlocked":Z
    :goto_0
    iget-object v6, p0, Lcom/android/server/job/controllers/ConnectivityController;->mConnManager:Landroid/net/ConnectivityManager;

    #@c
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getSourceUid()I

    #@f
    move-result v7

    #@10
    invoke-virtual {v6, v7, v2}, Landroid/net/ConnectivityManager;->getActiveNetworkInfoForUid(IZ)Landroid/net/NetworkInfo;

    #@13
    move-result-object v3

    #@14
    .line 104
    .local v3, "info":Landroid/net/NetworkInfo;
    if-eqz v3, :cond_0

    #@16
    invoke-virtual {v3}, Landroid/net/NetworkInfo;->isConnected()Z

    #@19
    move-result v1

    #@1a
    .line 105
    .local v1, "connected":Z
    :cond_0
    if-eqz v1, :cond_1

    #@1c
    invoke-virtual {v3}, Landroid/net/NetworkInfo;->isMetered()Z

    #@1f
    move-result v6

    #@20
    if-eqz v6, :cond_4

    #@22
    :cond_1
    const/4 v5, 0x0

    #@23
    .line 106
    .local v5, "unmetered":Z
    :goto_1
    if-eqz v1, :cond_2

    #@25
    invoke-virtual {v3}, Landroid/net/NetworkInfo;->isRoaming()Z

    #@28
    move-result v6

    #@29
    if-eqz v6, :cond_5

    #@2b
    :cond_2
    const/4 v4, 0x0

    #@2c
    .line 109
    .local v4, "notRoaming":Z
    :goto_2
    invoke-virtual {p1, v1}, Lcom/android/server/job/controllers/JobStatus;->setConnectivityConstraintSatisfied(Z)Z

    #@2f
    move-result v0

    #@30
    .line 110
    .local v0, "changed":Z
    invoke-virtual {p1, v5}, Lcom/android/server/job/controllers/JobStatus;->setUnmeteredConstraintSatisfied(Z)Z

    #@33
    move-result v6

    #@34
    or-int/2addr v0, v6

    #@35
    .line 111
    invoke-virtual {p1, v4}, Lcom/android/server/job/controllers/JobStatus;->setNotRoamingConstraintSatisfied(Z)Z

    #@38
    move-result v6

    #@39
    or-int/2addr v0, v6

    #@3a
    .line 112
    return v0

    #@3b
    .line 101
    .end local v0    # "changed":Z
    .end local v1    # "connected":Z
    .end local v2    # "ignoreBlocked":Z
    .end local v3    # "info":Landroid/net/NetworkInfo;
    .end local v4    # "notRoaming":Z
    .end local v5    # "unmetered":Z
    :cond_3
    const/4 v2, 0x0

    #@3c
    .restart local v2    # "ignoreBlocked":Z
    goto :goto_0

    #@3d
    .line 105
    .restart local v1    # "connected":Z
    .restart local v3    # "info":Landroid/net/NetworkInfo;
    :cond_4
    const/4 v5, 0x1

    #@3e
    .restart local v5    # "unmetered":Z
    goto :goto_1

    #@3f
    .line 106
    :cond_5
    const/4 v4, 0x1

    #@40
    .restart local v4    # "notRoaming":Z
    goto :goto_2
.end method

.method private updateTrackedJobs(I)V
    .locals 5
    .param p1, "uid"    # I

    #@0
    .prologue
    .line 122
    iget-object v4, p0, Lcom/android/server/job/controllers/ConnectivityController;->mLock:Ljava/lang/Object;

    #@2
    monitor-enter v4

    #@3
    .line 123
    const/4 v0, 0x0

    #@4
    .line 124
    .local v0, "changed":Z
    const/4 v1, 0x0

    #@5
    .end local v0    # "changed":Z
    .local v1, "i":I
    :goto_0
    :try_start_0
    iget-object v3, p0, Lcom/android/server/job/controllers/ConnectivityController;->mTrackedJobs:Ljava/util/ArrayList;

    #@7
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    #@a
    move-result v3

    #@b
    if-ge v1, v3, :cond_2

    #@d
    .line 125
    iget-object v3, p0, Lcom/android/server/job/controllers/ConnectivityController;->mTrackedJobs:Ljava/util/ArrayList;

    #@f
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@12
    move-result-object v2

    #@13
    check-cast v2, Lcom/android/server/job/controllers/JobStatus;

    #@15
    .line 126
    .local v2, "js":Lcom/android/server/job/controllers/JobStatus;
    const/4 v3, -0x1

    #@16
    if-eq p1, v3, :cond_0

    #@18
    invoke-virtual {v2}, Lcom/android/server/job/controllers/JobStatus;->getSourceUid()I

    #@1b
    move-result v3

    #@1c
    if-ne p1, v3, :cond_1

    #@1e
    .line 127
    :cond_0
    invoke-direct {p0, v2}, Lcom/android/server/job/controllers/ConnectivityController;->updateConstraintsSatisfied(Lcom/android/server/job/controllers/JobStatus;)Z

    #@21
    move-result v3

    #@22
    or-int/2addr v0, v3

    #@23
    .line 124
    :cond_1
    add-int/lit8 v1, v1, 0x1

    #@25
    goto :goto_0

    #@26
    .line 130
    .end local v2    # "js":Lcom/android/server/job/controllers/JobStatus;
    :cond_2
    if-eqz v0, :cond_3

    #@28
    .line 131
    iget-object v3, p0, Lcom/android/server/job/controllers/ConnectivityController;->mStateChangedListener:Lcom/android/server/job/StateChangedListener;

    #@2a
    invoke-interface {v3}, Lcom/android/server/job/StateChangedListener;->onControllerStateChanged()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@2d
    :cond_3
    monitor-exit v4

    #@2e
    .line 121
    return-void

    #@2f
    .line 122
    :catchall_0
    move-exception v3

    #@30
    monitor-exit v4

    #@31
    throw v3
.end method


# virtual methods
.method public dumpControllerStateLocked(Ljava/io/PrintWriter;I)V
    .locals 3
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "filterUid"    # I

    #@0
    .prologue
    .line 190
    const-string/jumbo v2, "Connectivity."

    #@3
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@6
    .line 191
    const-string/jumbo v2, "Tracking "

    #@9
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@c
    .line 192
    iget-object v2, p0, Lcom/android/server/job/controllers/ConnectivityController;->mTrackedJobs:Ljava/util/ArrayList;

    #@e
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    #@11
    move-result v2

    #@12
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(I)V

    #@15
    .line 193
    const-string/jumbo v2, ":"

    #@18
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@1b
    .line 194
    const/4 v0, 0x0

    #@1c
    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lcom/android/server/job/controllers/ConnectivityController;->mTrackedJobs:Ljava/util/ArrayList;

    #@1e
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    #@21
    move-result v2

    #@22
    if-ge v0, v2, :cond_1

    #@24
    .line 195
    iget-object v2, p0, Lcom/android/server/job/controllers/ConnectivityController;->mTrackedJobs:Ljava/util/ArrayList;

    #@26
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@29
    move-result-object v1

    #@2a
    check-cast v1, Lcom/android/server/job/controllers/JobStatus;

    #@2c
    .line 196
    .local v1, "js":Lcom/android/server/job/controllers/JobStatus;
    invoke-virtual {v1, p2}, Lcom/android/server/job/controllers/JobStatus;->shouldDump(I)Z

    #@2f
    move-result v2

    #@30
    if-eqz v2, :cond_0

    #@32
    .line 197
    const-string/jumbo v2, "  #"

    #@35
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@38
    .line 198
    invoke-virtual {v1, p1}, Lcom/android/server/job/controllers/JobStatus;->printUniqueId(Ljava/io/PrintWriter;)V

    #@3b
    .line 199
    const-string/jumbo v2, " from "

    #@3e
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@41
    .line 200
    invoke-virtual {v1}, Lcom/android/server/job/controllers/JobStatus;->getSourceUid()I

    #@44
    move-result v2

    #@45
    invoke-static {p1, v2}, Landroid/os/UserHandle;->formatUid(Ljava/io/PrintWriter;I)V

    #@48
    .line 201
    const-string/jumbo v2, ": C="

    #@4b
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@4e
    invoke-virtual {v1}, Lcom/android/server/job/controllers/JobStatus;->hasConnectivityConstraint()Z

    #@51
    move-result v2

    #@52
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Z)V

    #@55
    .line 202
    const-string/jumbo v2, ": UM="

    #@58
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@5b
    invoke-virtual {v1}, Lcom/android/server/job/controllers/JobStatus;->hasUnmeteredConstraint()Z

    #@5e
    move-result v2

    #@5f
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Z)V

    #@62
    .line 203
    const-string/jumbo v2, ": NR="

    #@65
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@68
    invoke-virtual {v1}, Lcom/android/server/job/controllers/JobStatus;->hasNotRoamingConstraint()Z

    #@6b
    move-result v2

    #@6c
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Z)V

    #@6f
    .line 194
    :cond_0
    add-int/lit8 v0, v0, 0x1

    #@71
    goto :goto_0

    #@72
    .line 189
    .end local v1    # "js":Lcom/android/server/job/controllers/JobStatus;
    :cond_1
    return-void
.end method

.method public maybeStartTrackingJobLocked(Lcom/android/server/job/controllers/JobStatus;Lcom/android/server/job/controllers/JobStatus;)V
    .locals 1
    .param p1, "jobStatus"    # Lcom/android/server/job/controllers/JobStatus;
    .param p2, "lastJob"    # Lcom/android/server/job/controllers/JobStatus;

    #@0
    .prologue
    .line 84
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
    if-nez v0, :cond_0

    #@c
    .line 85
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->hasNotRoamingConstraint()Z

    #@f
    move-result v0

    #@10
    .line 84
    if-eqz v0, :cond_1

    #@12
    .line 86
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/server/job/controllers/ConnectivityController;->updateConstraintsSatisfied(Lcom/android/server/job/controllers/JobStatus;)Z

    #@15
    .line 87
    iget-object v0, p0, Lcom/android/server/job/controllers/ConnectivityController;->mTrackedJobs:Ljava/util/ArrayList;

    #@17
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@1a
    .line 83
    :cond_1
    return-void
.end method

.method public maybeStopTrackingJobLocked(Lcom/android/server/job/controllers/JobStatus;Lcom/android/server/job/controllers/JobStatus;Z)V
    .locals 1
    .param p1, "jobStatus"    # Lcom/android/server/job/controllers/JobStatus;
    .param p2, "incomingJob"    # Lcom/android/server/job/controllers/JobStatus;
    .param p3, "forUpdate"    # Z

    #@0
    .prologue
    .line 94
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
    if-nez v0, :cond_0

    #@c
    .line 95
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->hasNotRoamingConstraint()Z

    #@f
    move-result v0

    #@10
    .line 94
    if-eqz v0, :cond_1

    #@12
    .line 96
    :cond_0
    iget-object v0, p0, Lcom/android/server/job/controllers/ConnectivityController;->mTrackedJobs:Ljava/util/ArrayList;

    #@14
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    #@17
    .line 93
    :cond_1
    return-void
.end method

.method public declared-synchronized onNetworkActive()V
    .locals 4

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 141
    :try_start_0
    iget-object v3, p0, Lcom/android/server/job/controllers/ConnectivityController;->mLock:Ljava/lang/Object;

    #@3
    monitor-enter v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    #@4
    .line 142
    const/4 v0, 0x0

    #@5
    .local v0, "i":I
    :goto_0
    :try_start_1
    iget-object v2, p0, Lcom/android/server/job/controllers/ConnectivityController;->mTrackedJobs:Ljava/util/ArrayList;

    #@7
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    #@a
    move-result v2

    #@b
    if-ge v0, v2, :cond_1

    #@d
    .line 143
    iget-object v2, p0, Lcom/android/server/job/controllers/ConnectivityController;->mTrackedJobs:Ljava/util/ArrayList;

    #@f
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@12
    move-result-object v1

    #@13
    check-cast v1, Lcom/android/server/job/controllers/JobStatus;

    #@15
    .line 144
    .local v1, "js":Lcom/android/server/job/controllers/JobStatus;
    invoke-virtual {v1}, Lcom/android/server/job/controllers/JobStatus;->isReady()Z

    #@18
    move-result v2

    #@19
    if-eqz v2, :cond_0

    #@1b
    .line 148
    iget-object v2, p0, Lcom/android/server/job/controllers/ConnectivityController;->mStateChangedListener:Lcom/android/server/job/StateChangedListener;

    #@1d
    invoke-interface {v2, v1}, Lcom/android/server/job/StateChangedListener;->onRunJobNow(Lcom/android/server/job/controllers/JobStatus;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@20
    .line 142
    :cond_0
    add-int/lit8 v0, v0, 0x1

    #@22
    goto :goto_0

    #@23
    .end local v1    # "js":Lcom/android/server/job/controllers/JobStatus;
    :cond_1
    :try_start_2
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    #@24
    monitor-exit p0

    #@25
    .line 140
    return-void

    #@26
    .line 141
    :catchall_0
    move-exception v2

    #@27
    :try_start_3
    monitor-exit v3

    #@28
    throw v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    #@29
    .end local v0    # "i":I
    :catchall_1
    move-exception v2

    #@2a
    monitor-exit p0

    #@2b
    throw v2
.end method
