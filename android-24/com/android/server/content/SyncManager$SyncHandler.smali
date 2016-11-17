.class Lcom/android/server/content/SyncManager$SyncHandler;
.super Landroid/os/Handler;
.source "SyncManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/content/SyncManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SyncHandler"
.end annotation


# static fields
.field private static final MESSAGE_ACCOUNTS_UPDATED:I = 0x9

.field private static final MESSAGE_CANCEL:I = 0x6

.field static final MESSAGE_JOBSERVICE_OBJECT:I = 0x7

.field private static final MESSAGE_MONITOR_SYNC:I = 0x8

.field private static final MESSAGE_RELEASE_MESSAGES_FROM_QUEUE:I = 0x2

.field static final MESSAGE_REMOVE_PERIODIC_SYNC:I = 0xe

.field static final MESSAGE_SCHEDULE_SYNC:I = 0xc

.field private static final MESSAGE_SERVICE_CONNECTED:I = 0x4

.field private static final MESSAGE_SERVICE_DISCONNECTED:I = 0x5

.field static final MESSAGE_START_SYNC:I = 0xa

.field static final MESSAGE_STOP_SYNC:I = 0xb

.field private static final MESSAGE_SYNC_FINISHED:I = 0x1

.field static final MESSAGE_UPDATE_PERIODIC_SYNC:I = 0xd


# instance fields
.field public final mSyncTimeTracker:Lcom/android/server/content/SyncManager$SyncTimeTracker;

.field private mUnreadyQueue:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/os/Message;",
            ">;"
        }
    .end annotation
.end field

.field private final mWakeLocks:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/os/PowerManager$WakeLock;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/android/server/content/SyncManager;


# direct methods
.method static synthetic -wrap0(Lcom/android/server/content/SyncManager$SyncHandler;Lcom/android/server/content/SyncOperation;)Landroid/os/PowerManager$WakeLock;
    .locals 1
    .param p1, "operation"    # Lcom/android/server/content/SyncOperation;

    #@0
    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/content/SyncManager$SyncHandler;->getSyncWakeLock(Lcom/android/server/content/SyncOperation;)Landroid/os/PowerManager$WakeLock;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public constructor <init>(Lcom/android/server/content/SyncManager;Landroid/os/Looper;)V
    .locals 3
    .param p1, "this$0"    # Lcom/android/server/content/SyncManager;
    .param p2, "looper"    # Landroid/os/Looper;

    #@0
    .prologue
    .line 2244
    iput-object p1, p0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    #@2
    .line 2245
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    #@5
    .line 2193
    new-instance v0, Lcom/android/server/content/SyncManager$SyncTimeTracker;

    #@7
    iget-object v1, p0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    #@9
    const/4 v2, 0x0

    #@a
    invoke-direct {v0, v1, v2}, Lcom/android/server/content/SyncManager$SyncTimeTracker;-><init>(Lcom/android/server/content/SyncManager;Lcom/android/server/content/SyncManager$SyncTimeTracker;)V

    #@d
    iput-object v0, p0, Lcom/android/server/content/SyncManager$SyncHandler;->mSyncTimeTracker:Lcom/android/server/content/SyncManager$SyncTimeTracker;

    #@f
    .line 2194
    invoke-static {}, Lcom/google/android/collect/Maps;->newHashMap()Ljava/util/HashMap;

    #@12
    move-result-object v0

    #@13
    iput-object v0, p0, Lcom/android/server/content/SyncManager$SyncHandler;->mWakeLocks:Ljava/util/HashMap;

    #@15
    .line 2196
    new-instance v0, Ljava/util/ArrayList;

    #@17
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@1a
    iput-object v0, p0, Lcom/android/server/content/SyncManager$SyncHandler;->mUnreadyQueue:Ljava/util/List;

    #@1c
    .line 2244
    return-void
.end method

.method private cancelActiveSyncH(Lcom/android/server/content/SyncStorageEngine$EndPoint;Landroid/os/Bundle;)V
    .locals 8
    .param p1, "info"    # Lcom/android/server/content/SyncStorageEngine$EndPoint;
    .param p2, "extras"    # Landroid/os/Bundle;

    #@0
    .prologue
    const/4 v7, 0x0

    #@1
    const/4 v6, 0x0

    #@2
    .line 2842
    new-instance v2, Ljava/util/ArrayList;

    #@4
    iget-object v4, p0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    #@6
    iget-object v4, v4, Lcom/android/server/content/SyncManager;->mActiveSyncContexts:Ljava/util/ArrayList;

    #@8
    invoke-direct {v2, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    #@b
    .line 2843
    .local v2, "activeSyncs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/content/SyncManager$ActiveSyncContext;>;"
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@e
    move-result-object v1

    #@f
    .local v1, "activeSyncContext$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@12
    move-result v4

    #@13
    if-eqz v4, :cond_2

    #@15
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@18
    move-result-object v0

    #@19
    check-cast v0, Lcom/android/server/content/SyncManager$ActiveSyncContext;

    #@1b
    .line 2844
    .local v0, "activeSyncContext":Lcom/android/server/content/SyncManager$ActiveSyncContext;
    if-eqz v0, :cond_0

    #@1d
    .line 2846
    iget-object v4, v0, Lcom/android/server/content/SyncManager$ActiveSyncContext;->mSyncOperation:Lcom/android/server/content/SyncOperation;

    #@1f
    .line 2845
    iget-object v3, v4, Lcom/android/server/content/SyncOperation;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    #@21
    .line 2847
    .local v3, "opInfo":Lcom/android/server/content/SyncStorageEngine$EndPoint;
    invoke-virtual {v3, p1}, Lcom/android/server/content/SyncStorageEngine$EndPoint;->matchesSpec(Lcom/android/server/content/SyncStorageEngine$EndPoint;)Z

    #@24
    move-result v4

    #@25
    if-eqz v4, :cond_0

    #@27
    .line 2850
    if-eqz p2, :cond_1

    #@29
    .line 2851
    iget-object v4, v0, Lcom/android/server/content/SyncManager$ActiveSyncContext;->mSyncOperation:Lcom/android/server/content/SyncOperation;

    #@2b
    iget-object v4, v4, Lcom/android/server/content/SyncOperation;->extras:Landroid/os/Bundle;

    #@2d
    invoke-static {v4, p2, v7}, Lcom/android/server/content/SyncManager;->syncExtrasEquals(Landroid/os/Bundle;Landroid/os/Bundle;Z)Z

    #@30
    move-result v4

    #@31
    if-eqz v4, :cond_0

    #@33
    .line 2856
    :cond_1
    iget-object v4, p0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    #@35
    invoke-static {v4}, Lcom/android/server/content/SyncManager;->-get12(Lcom/android/server/content/SyncManager;)Lcom/android/server/content/SyncJobService;

    #@38
    move-result-object v4

    #@39
    iget-object v5, v0, Lcom/android/server/content/SyncManager$ActiveSyncContext;->mSyncOperation:Lcom/android/server/content/SyncOperation;

    #@3b
    iget v5, v5, Lcom/android/server/content/SyncOperation;->jobId:I

    #@3d
    invoke-virtual {v4, v5, v7}, Lcom/android/server/content/SyncJobService;->callJobFinished(IZ)V

    #@40
    .line 2857
    invoke-direct {p0, v6, v0}, Lcom/android/server/content/SyncManager$SyncHandler;->runSyncFinishedOrCanceledH(Landroid/content/SyncResult;Lcom/android/server/content/SyncManager$ActiveSyncContext;)V

    #@43
    goto :goto_0

    #@44
    .line 2840
    .end local v0    # "activeSyncContext":Lcom/android/server/content/SyncManager$ActiveSyncContext;
    .end local v3    # "opInfo":Lcom/android/server/content/SyncStorageEngine$EndPoint;
    :cond_2
    return-void
.end method

.method private closeActiveSyncContext(Lcom/android/server/content/SyncManager$ActiveSyncContext;)V
    .locals 3
    .param p1, "activeSyncContext"    # Lcom/android/server/content/SyncManager$ActiveSyncContext;

    #@0
    .prologue
    .line 2981
    invoke-virtual {p1}, Lcom/android/server/content/SyncManager$ActiveSyncContext;->close()V

    #@3
    .line 2982
    iget-object v0, p0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    #@5
    iget-object v0, v0, Lcom/android/server/content/SyncManager;->mActiveSyncContexts:Ljava/util/ArrayList;

    #@7
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    #@a
    .line 2983
    iget-object v0, p0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    #@c
    invoke-static {v0}, Lcom/android/server/content/SyncManager;->-get14(Lcom/android/server/content/SyncManager;)Lcom/android/server/content/SyncStorageEngine;

    #@f
    move-result-object v0

    #@10
    iget-object v1, p1, Lcom/android/server/content/SyncManager$ActiveSyncContext;->mSyncInfo:Landroid/content/SyncInfo;

    #@12
    .line 2984
    iget-object v2, p1, Lcom/android/server/content/SyncManager$ActiveSyncContext;->mSyncOperation:Lcom/android/server/content/SyncOperation;

    #@14
    iget-object v2, v2, Lcom/android/server/content/SyncOperation;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    #@16
    iget v2, v2, Lcom/android/server/content/SyncStorageEngine$EndPoint;->userId:I

    #@18
    .line 2983
    invoke-virtual {v0, v1, v2}, Lcom/android/server/content/SyncStorageEngine;->removeActiveSync(Landroid/content/SyncInfo;I)V

    #@1b
    .line 2986
    const-string/jumbo v0, "SyncManager"

    #@1e
    const/4 v1, 0x2

    #@1f
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    #@22
    move-result v0

    #@23
    if-eqz v0, :cond_0

    #@25
    .line 2987
    const-string/jumbo v0, "SyncManager"

    #@28
    new-instance v1, Ljava/lang/StringBuilder;

    #@2a
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@2d
    const-string/jumbo v2, "removing all MESSAGE_MONITOR_SYNC & MESSAGE_SYNC_EXPIRED for "

    #@30
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@33
    move-result-object v1

    #@34
    .line 2988
    invoke-virtual {p1}, Lcom/android/server/content/SyncManager$ActiveSyncContext;->toString()Ljava/lang/String;

    #@37
    move-result-object v2

    #@38
    .line 2987
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3b
    move-result-object v1

    #@3c
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3f
    move-result-object v1

    #@40
    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    #@43
    .line 2990
    :cond_0
    iget-object v0, p0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    #@45
    invoke-static {v0}, Lcom/android/server/content/SyncManager;->-get11(Lcom/android/server/content/SyncManager;)Lcom/android/server/content/SyncManager$SyncHandler;

    #@48
    move-result-object v0

    #@49
    const/16 v1, 0x8

    #@4b
    invoke-virtual {v0, v1, p1}, Lcom/android/server/content/SyncManager$SyncHandler;->removeMessages(ILjava/lang/Object;)V

    #@4e
    .line 2980
    return-void
.end method

.method private deferActiveSyncH(Lcom/android/server/content/SyncManager$ActiveSyncContext;)V
    .locals 4
    .param p1, "asc"    # Lcom/android/server/content/SyncManager$ActiveSyncContext;

    #@0
    .prologue
    .line 2473
    iget-object v0, p1, Lcom/android/server/content/SyncManager$ActiveSyncContext;->mSyncOperation:Lcom/android/server/content/SyncOperation;

    #@2
    .line 2474
    .local v0, "op":Lcom/android/server/content/SyncOperation;
    const/4 v1, 0x0

    #@3
    invoke-direct {p0, v1, p1}, Lcom/android/server/content/SyncManager$SyncHandler;->runSyncFinishedOrCanceledH(Landroid/content/SyncResult;Lcom/android/server/content/SyncManager$ActiveSyncContext;)V

    #@6
    .line 2475
    const-wide/16 v2, 0x2710

    #@8
    invoke-direct {p0, v0, v2, v3}, Lcom/android/server/content/SyncManager$SyncHandler;->deferSyncH(Lcom/android/server/content/SyncOperation;J)V

    #@b
    .line 2472
    return-void
.end method

.method private deferStoppedSyncH(Lcom/android/server/content/SyncOperation;J)V
    .locals 2
    .param p1, "op"    # Lcom/android/server/content/SyncOperation;
    .param p2, "delay"    # J

    #@0
    .prologue
    .line 2462
    iget-boolean v0, p1, Lcom/android/server/content/SyncOperation;->isPeriodic:Z

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 2463
    iget-object v0, p0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    #@6
    invoke-virtual {p1}, Lcom/android/server/content/SyncOperation;->createOneTimeSyncOperation()Lcom/android/server/content/SyncOperation;

    #@9
    move-result-object v1

    #@a
    invoke-static {v0, v1, p2, p3}, Lcom/android/server/content/SyncManager;->-wrap22(Lcom/android/server/content/SyncManager;Lcom/android/server/content/SyncOperation;J)V

    #@d
    .line 2461
    :goto_0
    return-void

    #@e
    .line 2465
    :cond_0
    iget-object v0, p0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    #@10
    invoke-static {v0, p1, p2, p3}, Lcom/android/server/content/SyncManager;->-wrap22(Lcom/android/server/content/SyncManager;Lcom/android/server/content/SyncOperation;J)V

    #@13
    goto :goto_0
.end method

.method private deferSyncH(Lcom/android/server/content/SyncOperation;J)V
    .locals 4
    .param p1, "op"    # Lcom/android/server/content/SyncOperation;
    .param p2, "delay"    # J

    #@0
    .prologue
    .line 2448
    iget-object v0, p0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    #@2
    invoke-static {v0}, Lcom/android/server/content/SyncManager;->-get12(Lcom/android/server/content/SyncManager;)Lcom/android/server/content/SyncJobService;

    #@5
    move-result-object v0

    #@6
    iget v1, p1, Lcom/android/server/content/SyncOperation;->jobId:I

    #@8
    const/4 v2, 0x0

    #@9
    invoke-virtual {v0, v1, v2}, Lcom/android/server/content/SyncJobService;->callJobFinished(IZ)V

    #@c
    .line 2449
    iget-boolean v0, p1, Lcom/android/server/content/SyncOperation;->isPeriodic:Z

    #@e
    if-eqz v0, :cond_0

    #@10
    .line 2450
    iget-object v0, p0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    #@12
    invoke-virtual {p1}, Lcom/android/server/content/SyncOperation;->createOneTimeSyncOperation()Lcom/android/server/content/SyncOperation;

    #@15
    move-result-object v1

    #@16
    invoke-static {v0, v1, p2, p3}, Lcom/android/server/content/SyncManager;->-wrap22(Lcom/android/server/content/SyncManager;Lcom/android/server/content/SyncOperation;J)V

    #@19
    .line 2447
    :goto_0
    return-void

    #@1a
    .line 2455
    :cond_0
    iget-object v0, p0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    #@1c
    invoke-static {v0}, Lcom/android/server/content/SyncManager;->-wrap0(Lcom/android/server/content/SyncManager;)Landroid/app/job/JobScheduler;

    #@1f
    move-result-object v0

    #@20
    iget v1, p1, Lcom/android/server/content/SyncOperation;->jobId:I

    #@22
    invoke-virtual {v0, v1}, Landroid/app/job/JobScheduler;->cancel(I)V

    #@25
    .line 2456
    iget-object v0, p0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    #@27
    invoke-static {v0, p1, p2, p3}, Lcom/android/server/content/SyncManager;->-wrap22(Lcom/android/server/content/SyncManager;Lcom/android/server/content/SyncOperation;J)V

    #@2a
    goto :goto_0
.end method

.method private dispatchSyncOperation(Lcom/android/server/content/SyncOperation;)Z
    .locals 14
    .param p1, "op"    # Lcom/android/server/content/SyncOperation;

    #@0
    .prologue
    const/4 v13, 0x2

    #@1
    const/4 v12, 0x0

    #@2
    .line 2769
    const-string/jumbo v2, "SyncManager"

    #@5
    invoke-static {v2, v13}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    #@8
    move-result v2

    #@9
    if-eqz v2, :cond_0

    #@b
    .line 2770
    const-string/jumbo v2, "SyncManager"

    #@e
    new-instance v3, Ljava/lang/StringBuilder;

    #@10
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@13
    const-string/jumbo v4, "dispatchSyncOperation: we are going to sync "

    #@16
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@19
    move-result-object v3

    #@1a
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@1d
    move-result-object v3

    #@1e
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@21
    move-result-object v3

    #@22
    invoke-static {v2, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    #@25
    .line 2771
    const-string/jumbo v2, "SyncManager"

    #@28
    new-instance v3, Ljava/lang/StringBuilder;

    #@2a
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@2d
    const-string/jumbo v4, "num active syncs: "

    #@30
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@33
    move-result-object v3

    #@34
    iget-object v4, p0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    #@36
    iget-object v4, v4, Lcom/android/server/content/SyncManager;->mActiveSyncContexts:Ljava/util/ArrayList;

    #@38
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    #@3b
    move-result v4

    #@3c
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@3f
    move-result-object v3

    #@40
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@43
    move-result-object v3

    #@44
    invoke-static {v2, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    #@47
    .line 2772
    iget-object v2, p0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    #@49
    iget-object v2, v2, Lcom/android/server/content/SyncManager;->mActiveSyncContexts:Ljava/util/ArrayList;

    #@4b
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@4e
    move-result-object v10

    #@4f
    .local v10, "syncContext$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    #@52
    move-result v2

    #@53
    if-eqz v2, :cond_0

    #@55
    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@58
    move-result-object v9

    #@59
    check-cast v9, Lcom/android/server/content/SyncManager$ActiveSyncContext;

    #@5b
    .line 2773
    .local v9, "syncContext":Lcom/android/server/content/SyncManager$ActiveSyncContext;
    const-string/jumbo v2, "SyncManager"

    #@5e
    invoke-virtual {v9}, Lcom/android/server/content/SyncManager$ActiveSyncContext;->toString()Ljava/lang/String;

    #@61
    move-result-object v3

    #@62
    invoke-static {v2, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    #@65
    goto :goto_0

    #@66
    .line 2779
    .end local v9    # "syncContext":Lcom/android/server/content/SyncManager$ActiveSyncContext;
    .end local v10    # "syncContext$iterator":Ljava/util/Iterator;
    :cond_0
    iget-object v0, p1, Lcom/android/server/content/SyncOperation;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    #@68
    .line 2781
    .local v0, "info":Lcom/android/server/content/SyncStorageEngine$EndPoint;
    iget-object v2, v0, Lcom/android/server/content/SyncStorageEngine$EndPoint;->provider:Ljava/lang/String;

    #@6a
    iget-object v3, v0, Lcom/android/server/content/SyncStorageEngine$EndPoint;->account:Landroid/accounts/Account;

    #@6c
    iget-object v3, v3, Landroid/accounts/Account;->type:Ljava/lang/String;

    #@6e
    invoke-static {v2, v3}, Landroid/content/SyncAdapterType;->newKey(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SyncAdapterType;

    #@71
    move-result-object v8

    #@72
    .line 2783
    .local v8, "syncAdapterType":Landroid/content/SyncAdapterType;
    iget-object v2, p0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    #@74
    iget-object v2, v2, Lcom/android/server/content/SyncManager;->mSyncAdapters:Landroid/content/SyncAdaptersCache;

    #@76
    iget v3, v0, Lcom/android/server/content/SyncStorageEngine$EndPoint;->userId:I

    #@78
    invoke-virtual {v2, v8, v3}, Landroid/content/SyncAdaptersCache;->getServiceInfo(Ljava/lang/Object;I)Landroid/content/pm/RegisteredServicesCache$ServiceInfo;

    #@7b
    move-result-object v7

    #@7c
    .line 2784
    .local v7, "syncAdapterInfo":Landroid/content/pm/RegisteredServicesCache$ServiceInfo;, "Landroid/content/pm/RegisteredServicesCache$ServiceInfo<Landroid/content/SyncAdapterType;>;"
    if-nez v7, :cond_1

    #@7e
    .line 2785
    const-string/jumbo v2, "SyncManager"

    #@81
    new-instance v3, Ljava/lang/StringBuilder;

    #@83
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@86
    const-string/jumbo v4, "can\'t find a sync adapter for "

    #@89
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@8c
    move-result-object v3

    #@8d
    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@90
    move-result-object v3

    #@91
    .line 2786
    const-string/jumbo v4, ", removing settings for it"

    #@94
    .line 2785
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@97
    move-result-object v3

    #@98
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@9b
    move-result-object v3

    #@9c
    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@9f
    .line 2787
    iget-object v2, p0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    #@a1
    invoke-static {v2}, Lcom/android/server/content/SyncManager;->-get14(Lcom/android/server/content/SyncManager;)Lcom/android/server/content/SyncStorageEngine;

    #@a4
    move-result-object v2

    #@a5
    invoke-virtual {v2, v0}, Lcom/android/server/content/SyncStorageEngine;->removeAuthority(Lcom/android/server/content/SyncStorageEngine$EndPoint;)V

    #@a8
    .line 2788
    return v12

    #@a9
    .line 2790
    :cond_1
    iget v6, v7, Landroid/content/pm/RegisteredServicesCache$ServiceInfo;->uid:I

    #@ab
    .line 2791
    .local v6, "targetUid":I
    iget-object v11, v7, Landroid/content/pm/RegisteredServicesCache$ServiceInfo;->componentName:Landroid/content/ComponentName;

    #@ad
    .line 2793
    .local v11, "targetComponent":Landroid/content/ComponentName;
    new-instance v1, Lcom/android/server/content/SyncManager$ActiveSyncContext;

    #@af
    iget-object v2, p0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    #@b1
    invoke-virtual {p0, p1}, Lcom/android/server/content/SyncManager$SyncHandler;->insertStartSyncEvent(Lcom/android/server/content/SyncOperation;)J

    #@b4
    move-result-wide v4

    #@b5
    move-object v3, p1

    #@b6
    invoke-direct/range {v1 .. v6}, Lcom/android/server/content/SyncManager$ActiveSyncContext;-><init>(Lcom/android/server/content/SyncManager;Lcom/android/server/content/SyncOperation;JI)V

    #@b9
    .line 2794
    .local v1, "activeSyncContext":Lcom/android/server/content/SyncManager$ActiveSyncContext;
    const-string/jumbo v2, "SyncManager"

    #@bc
    invoke-static {v2, v13}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    #@bf
    move-result v2

    #@c0
    if-eqz v2, :cond_2

    #@c2
    .line 2795
    const-string/jumbo v2, "SyncManager"

    #@c5
    new-instance v3, Ljava/lang/StringBuilder;

    #@c7
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@ca
    const-string/jumbo v4, "dispatchSyncOperation: starting "

    #@cd
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@d0
    move-result-object v3

    #@d1
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@d4
    move-result-object v3

    #@d5
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@d8
    move-result-object v3

    #@d9
    invoke-static {v2, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    #@dc
    .line 2798
    :cond_2
    iget-object v2, p0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    #@de
    invoke-static {v2}, Lcom/android/server/content/SyncManager;->-get14(Lcom/android/server/content/SyncManager;)Lcom/android/server/content/SyncStorageEngine;

    #@e1
    move-result-object v2

    #@e2
    invoke-virtual {v2, v1}, Lcom/android/server/content/SyncStorageEngine;->addActiveSync(Lcom/android/server/content/SyncManager$ActiveSyncContext;)Landroid/content/SyncInfo;

    #@e5
    move-result-object v2

    #@e6
    iput-object v2, v1, Lcom/android/server/content/SyncManager$ActiveSyncContext;->mSyncInfo:Landroid/content/SyncInfo;

    #@e8
    .line 2799
    iget-object v2, p0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    #@ea
    iget-object v2, v2, Lcom/android/server/content/SyncManager;->mActiveSyncContexts:Ljava/util/ArrayList;

    #@ec
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@ef
    .line 2802
    iget-object v2, p0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    #@f1
    invoke-static {v2, v1}, Lcom/android/server/content/SyncManager;->-wrap17(Lcom/android/server/content/SyncManager;Lcom/android/server/content/SyncManager$ActiveSyncContext;)V

    #@f4
    .line 2804
    iget v2, v0, Lcom/android/server/content/SyncStorageEngine$EndPoint;->userId:I

    #@f6
    invoke-virtual {v1, v11, v2}, Lcom/android/server/content/SyncManager$ActiveSyncContext;->bindToSyncAdapter(Landroid/content/ComponentName;I)Z

    #@f9
    move-result v2

    #@fa
    if-nez v2, :cond_3

    #@fc
    .line 2805
    const-string/jumbo v2, "SyncManager"

    #@ff
    new-instance v3, Ljava/lang/StringBuilder;

    #@101
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@104
    const-string/jumbo v4, "Bind attempt failed - target: "

    #@107
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@10a
    move-result-object v3

    #@10b
    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@10e
    move-result-object v3

    #@10f
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@112
    move-result-object v3

    #@113
    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@116
    .line 2806
    invoke-direct {p0, v1}, Lcom/android/server/content/SyncManager$SyncHandler;->closeActiveSyncContext(Lcom/android/server/content/SyncManager$ActiveSyncContext;)V

    #@119
    .line 2807
    return v12

    #@11a
    .line 2810
    :cond_3
    const/4 v2, 0x1

    #@11b
    return v2
.end method

.method private findActiveSyncContextH(I)Lcom/android/server/content/SyncManager$ActiveSyncContext;
    .locals 5
    .param p1, "jobId"    # I

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 2544
    iget-object v3, p0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    #@3
    iget-object v3, v3, Lcom/android/server/content/SyncManager;->mActiveSyncContexts:Ljava/util/ArrayList;

    #@5
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@8
    move-result-object v1

    #@9
    .local v1, "asc$iterator":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@c
    move-result v3

    #@d
    if-eqz v3, :cond_1

    #@f
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@12
    move-result-object v0

    #@13
    check-cast v0, Lcom/android/server/content/SyncManager$ActiveSyncContext;

    #@15
    .line 2545
    .local v0, "asc":Lcom/android/server/content/SyncManager$ActiveSyncContext;
    iget-object v2, v0, Lcom/android/server/content/SyncManager$ActiveSyncContext;->mSyncOperation:Lcom/android/server/content/SyncOperation;

    #@17
    .line 2546
    .local v2, "op":Lcom/android/server/content/SyncOperation;
    if-eqz v2, :cond_0

    #@19
    iget v3, v2, Lcom/android/server/content/SyncOperation;->jobId:I

    #@1b
    if-ne v3, p1, :cond_0

    #@1d
    .line 2547
    return-object v0

    #@1e
    .line 2550
    .end local v0    # "asc":Lcom/android/server/content/SyncManager$ActiveSyncContext;
    .end local v2    # "op":Lcom/android/server/content/SyncOperation;
    :cond_1
    return-object v4
.end method

.method private getSyncWakeLock(Lcom/android/server/content/SyncOperation;)Landroid/os/PowerManager$WakeLock;
    .locals 5
    .param p1, "operation"    # Lcom/android/server/content/SyncOperation;

    #@0
    .prologue
    .line 2431
    invoke-virtual {p1}, Lcom/android/server/content/SyncOperation;->wakeLockName()Ljava/lang/String;

    #@3
    move-result-object v2

    #@4
    .line 2432
    .local v2, "wakeLockKey":Ljava/lang/String;
    iget-object v3, p0, Lcom/android/server/content/SyncManager$SyncHandler;->mWakeLocks:Ljava/util/HashMap;

    #@6
    invoke-virtual {v3, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@9
    move-result-object v1

    #@a
    check-cast v1, Landroid/os/PowerManager$WakeLock;

    #@c
    .line 2433
    .local v1, "wakeLock":Landroid/os/PowerManager$WakeLock;
    if-nez v1, :cond_0

    #@e
    .line 2434
    new-instance v3, Ljava/lang/StringBuilder;

    #@10
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@13
    const-string/jumbo v4, "*sync*/"

    #@16
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@19
    move-result-object v3

    #@1a
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1d
    move-result-object v3

    #@1e
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@21
    move-result-object v0

    #@22
    .line 2435
    .local v0, "name":Ljava/lang/String;
    iget-object v3, p0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    #@24
    invoke-static {v3}, Lcom/android/server/content/SyncManager;->-get7(Lcom/android/server/content/SyncManager;)Landroid/os/PowerManager;

    #@27
    move-result-object v3

    #@28
    const/4 v4, 0x1

    #@29
    invoke-virtual {v3, v4, v0}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    #@2c
    move-result-object v1

    #@2d
    .line 2436
    const/4 v3, 0x0

    #@2e
    invoke-virtual {v1, v3}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    #@31
    .line 2437
    iget-object v3, p0, Lcom/android/server/content/SyncManager$SyncHandler;->mWakeLocks:Ljava/util/HashMap;

    #@33
    invoke-virtual {v3, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@36
    .line 2439
    .end local v0    # "name":Ljava/lang/String;
    :cond_0
    return-object v1
.end method

.method private handleSyncMessage(Landroid/os/Message;)V
    .locals 23
    .param p1, "msg"    # Landroid/os/Message;

    #@0
    .prologue
    .line 2282
    const-string/jumbo v2, "SyncManager"

    #@3
    const/4 v3, 0x2

    #@4
    invoke-static {v2, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    #@7
    move-result v16

    #@8
    .line 2285
    .local v16, "isLoggable":Z
    :try_start_0
    move-object/from16 v0, p0

    #@a
    iget-object v2, v0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    #@c
    move-object/from16 v0, p0

    #@e
    iget-object v3, v0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    #@10
    invoke-static {v3}, Lcom/android/server/content/SyncManager;->-wrap6(Lcom/android/server/content/SyncManager;)Z

    #@13
    move-result v3

    #@14
    invoke-static {v2, v3}, Lcom/android/server/content/SyncManager;->-set1(Lcom/android/server/content/SyncManager;Z)Z

    #@17
    .line 2286
    move-object/from16 v0, p1

    #@19
    iget v2, v0, Landroid/os/Message;->what:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1b
    packed-switch v2, :pswitch_data_0

    #@1e
    .line 2426
    :cond_0
    :goto_0
    :pswitch_0
    move-object/from16 v0, p0

    #@20
    iget-object v2, v0, Lcom/android/server/content/SyncManager$SyncHandler;->mSyncTimeTracker:Lcom/android/server/content/SyncManager$SyncTimeTracker;

    #@22
    invoke-virtual {v2}, Lcom/android/server/content/SyncManager$SyncTimeTracker;->update()V

    #@25
    .line 2281
    return-void

    #@26
    .line 2288
    :pswitch_1
    :try_start_1
    move-object/from16 v0, p1

    #@28
    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@2a
    move-object/from16 v19, v0

    #@2c
    check-cast v19, Lcom/android/server/content/SyncOperation;

    #@2e
    .line 2289
    .local v19, "op":Lcom/android/server/content/SyncOperation;
    move-object/from16 v0, p0

    #@30
    iget-object v2, v0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    #@32
    move-object/from16 v0, v19

    #@34
    invoke-static {v2, v0}, Lcom/android/server/content/SyncManager;->-wrap21(Lcom/android/server/content/SyncManager;Lcom/android/server/content/SyncOperation;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@37
    goto :goto_0

    #@38
    .line 2425
    .end local v19    # "op":Lcom/android/server/content/SyncOperation;
    :catchall_0
    move-exception v2

    #@39
    .line 2426
    move-object/from16 v0, p0

    #@3b
    iget-object v3, v0, Lcom/android/server/content/SyncManager$SyncHandler;->mSyncTimeTracker:Lcom/android/server/content/SyncManager$SyncTimeTracker;

    #@3d
    invoke-virtual {v3}, Lcom/android/server/content/SyncManager$SyncTimeTracker;->update()V

    #@40
    .line 2425
    throw v2

    #@41
    .line 2293
    :pswitch_2
    :try_start_2
    move-object/from16 v0, p1

    #@43
    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@45
    move-object/from16 v19, v0

    #@47
    check-cast v19, Lcom/android/server/content/SyncOperation;

    #@49
    .line 2294
    .restart local v19    # "op":Lcom/android/server/content/SyncOperation;
    move-object/from16 v0, p0

    #@4b
    move-object/from16 v1, v19

    #@4d
    invoke-direct {v0, v1}, Lcom/android/server/content/SyncManager$SyncHandler;->startSyncH(Lcom/android/server/content/SyncOperation;)V

    #@50
    goto :goto_0

    #@51
    .line 2298
    .end local v19    # "op":Lcom/android/server/content/SyncOperation;
    :pswitch_3
    move-object/from16 v0, p1

    #@53
    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@55
    move-object/from16 v19, v0

    #@57
    check-cast v19, Lcom/android/server/content/SyncOperation;

    #@59
    .line 2299
    .restart local v19    # "op":Lcom/android/server/content/SyncOperation;
    if-eqz v16, :cond_1

    #@5b
    .line 2300
    const-string/jumbo v2, "SyncManager"

    #@5e
    const-string/jumbo v3, "Stop sync received."

    #@61
    invoke-static {v2, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    #@64
    .line 2302
    :cond_1
    move-object/from16 v0, v19

    #@66
    iget v2, v0, Lcom/android/server/content/SyncOperation;->jobId:I

    #@68
    move-object/from16 v0, p0

    #@6a
    invoke-direct {v0, v2}, Lcom/android/server/content/SyncManager$SyncHandler;->findActiveSyncContextH(I)Lcom/android/server/content/SyncManager$ActiveSyncContext;

    #@6d
    move-result-object v10

    #@6e
    .line 2303
    .local v10, "asc":Lcom/android/server/content/SyncManager$ActiveSyncContext;
    if-eqz v10, :cond_0

    #@70
    .line 2304
    const/4 v2, 0x0

    #@71
    move-object/from16 v0, p0

    #@73
    invoke-direct {v0, v2, v10}, Lcom/android/server/content/SyncManager$SyncHandler;->runSyncFinishedOrCanceledH(Landroid/content/SyncResult;Lcom/android/server/content/SyncManager$ActiveSyncContext;)V

    #@76
    .line 2305
    move-object/from16 v0, p1

    #@78
    iget v2, v0, Landroid/os/Message;->arg1:I

    #@7a
    if-eqz v2, :cond_4

    #@7c
    const/16 v21, 0x1

    #@7e
    .line 2306
    .local v21, "reschedule":Z
    :goto_1
    move-object/from16 v0, p1

    #@80
    iget v2, v0, Landroid/os/Message;->arg2:I

    #@82
    if-eqz v2, :cond_5

    #@84
    const/4 v9, 0x1

    #@85
    .line 2307
    .local v9, "applyBackoff":Z
    :goto_2
    if-eqz v16, :cond_2

    #@87
    .line 2308
    const-string/jumbo v2, "SyncManager"

    #@8a
    new-instance v3, Ljava/lang/StringBuilder;

    #@8c
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@8f
    const-string/jumbo v4, "Stopping sync. Reschedule: "

    #@92
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@95
    move-result-object v3

    #@96
    move/from16 v0, v21

    #@98
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@9b
    move-result-object v3

    #@9c
    .line 2309
    const-string/jumbo v4, "Backoff: "

    #@9f
    .line 2308
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a2
    move-result-object v3

    #@a3
    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@a6
    move-result-object v3

    #@a7
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@aa
    move-result-object v3

    #@ab
    invoke-static {v2, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    #@ae
    .line 2311
    :cond_2
    if-eqz v9, :cond_3

    #@b0
    .line 2312
    move-object/from16 v0, p0

    #@b2
    iget-object v2, v0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    #@b4
    move-object/from16 v0, v19

    #@b6
    iget-object v3, v0, Lcom/android/server/content/SyncOperation;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    #@b8
    invoke-static {v2, v3}, Lcom/android/server/content/SyncManager;->-wrap12(Lcom/android/server/content/SyncManager;Lcom/android/server/content/SyncStorageEngine$EndPoint;)V

    #@bb
    .line 2314
    :cond_3
    if-eqz v21, :cond_0

    #@bd
    .line 2315
    const-wide/16 v2, 0x0

    #@bf
    move-object/from16 v0, p0

    #@c1
    move-object/from16 v1, v19

    #@c3
    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/content/SyncManager$SyncHandler;->deferStoppedSyncH(Lcom/android/server/content/SyncOperation;J)V

    #@c6
    goto/16 :goto_0

    #@c8
    .line 2305
    .end local v9    # "applyBackoff":Z
    .end local v21    # "reschedule":Z
    :cond_4
    const/16 v21, 0x0

    #@ca
    .restart local v21    # "reschedule":Z
    goto :goto_1

    #@cb
    .line 2306
    :cond_5
    const/4 v9, 0x0

    #@cc
    .restart local v9    # "applyBackoff":Z
    goto :goto_2

    #@cd
    .line 2322
    .end local v9    # "applyBackoff":Z
    .end local v10    # "asc":Lcom/android/server/content/SyncManager$ActiveSyncContext;
    .end local v19    # "op":Lcom/android/server/content/SyncOperation;
    .end local v21    # "reschedule":Z
    :pswitch_4
    move-object/from16 v0, p1

    #@cf
    iget-object v12, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@d1
    check-cast v12, Lcom/android/server/content/SyncManager$UpdatePeriodicSyncMessagePayload;

    #@d3
    .line 2323
    .local v12, "data":Lcom/android/server/content/SyncManager$UpdatePeriodicSyncMessagePayload;
    iget-object v3, v12, Lcom/android/server/content/SyncManager$UpdatePeriodicSyncMessagePayload;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    #@d5
    iget-wide v4, v12, Lcom/android/server/content/SyncManager$UpdatePeriodicSyncMessagePayload;->pollFrequency:J

    #@d7
    .line 2324
    iget-wide v6, v12, Lcom/android/server/content/SyncManager$UpdatePeriodicSyncMessagePayload;->flex:J

    #@d9
    iget-object v8, v12, Lcom/android/server/content/SyncManager$UpdatePeriodicSyncMessagePayload;->extras:Landroid/os/Bundle;

    #@db
    move-object/from16 v2, p0

    #@dd
    .line 2323
    invoke-direct/range {v2 .. v8}, Lcom/android/server/content/SyncManager$SyncHandler;->updateOrAddPeriodicSyncH(Lcom/android/server/content/SyncStorageEngine$EndPoint;JJLandroid/os/Bundle;)V

    #@e0
    goto/16 :goto_0

    #@e2
    .line 2327
    .end local v12    # "data":Lcom/android/server/content/SyncManager$UpdatePeriodicSyncMessagePayload;
    :pswitch_5
    move-object/from16 v0, p1

    #@e4
    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@e6
    check-cast v2, Lcom/android/server/content/SyncStorageEngine$EndPoint;

    #@e8
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    #@eb
    move-result-object v3

    #@ec
    move-object/from16 v0, p0

    #@ee
    invoke-direct {v0, v2, v3}, Lcom/android/server/content/SyncManager$SyncHandler;->removePeriodicSyncH(Lcom/android/server/content/SyncStorageEngine$EndPoint;Landroid/os/Bundle;)V

    #@f1
    goto/16 :goto_0

    #@f3
    .line 2331
    :pswitch_6
    move-object/from16 v0, p1

    #@f5
    iget-object v14, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@f7
    check-cast v14, Lcom/android/server/content/SyncStorageEngine$EndPoint;

    #@f9
    .line 2332
    .local v14, "endpoint":Lcom/android/server/content/SyncStorageEngine$EndPoint;
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->peekData()Landroid/os/Bundle;

    #@fc
    move-result-object v15

    #@fd
    .line 2333
    .local v15, "extras":Landroid/os/Bundle;
    const-string/jumbo v2, "SyncManager"

    #@100
    const/4 v3, 0x3

    #@101
    invoke-static {v2, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    #@104
    move-result v2

    #@105
    if-eqz v2, :cond_6

    #@107
    .line 2334
    const-string/jumbo v2, "SyncManager"

    #@10a
    new-instance v3, Ljava/lang/StringBuilder;

    #@10c
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@10f
    const-string/jumbo v4, "handleSyncHandlerMessage: MESSAGE_CANCEL: "

    #@112
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@115
    move-result-object v3

    #@116
    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@119
    move-result-object v3

    #@11a
    .line 2335
    const-string/jumbo v4, " bundle: "

    #@11d
    .line 2334
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@120
    move-result-object v3

    #@121
    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@124
    move-result-object v3

    #@125
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@128
    move-result-object v3

    #@129
    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@12c
    .line 2337
    :cond_6
    move-object/from16 v0, p0

    #@12e
    invoke-direct {v0, v14, v15}, Lcom/android/server/content/SyncManager$SyncHandler;->cancelActiveSyncH(Lcom/android/server/content/SyncStorageEngine$EndPoint;Landroid/os/Bundle;)V

    #@131
    goto/16 :goto_0

    #@133
    .line 2342
    .end local v14    # "endpoint":Lcom/android/server/content/SyncStorageEngine$EndPoint;
    .end local v15    # "extras":Landroid/os/Bundle;
    :pswitch_7
    move-object/from16 v0, p1

    #@135
    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@137
    move-object/from16 v20, v0

    #@139
    check-cast v20, Lcom/android/server/content/SyncManager$SyncFinishedOrCancelledMessagePayload;

    #@13b
    .line 2343
    .local v20, "payload":Lcom/android/server/content/SyncManager$SyncFinishedOrCancelledMessagePayload;
    move-object/from16 v0, p0

    #@13d
    iget-object v2, v0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    #@13f
    move-object/from16 v0, v20

    #@141
    iget-object v3, v0, Lcom/android/server/content/SyncManager$SyncFinishedOrCancelledMessagePayload;->activeSyncContext:Lcom/android/server/content/SyncManager$ActiveSyncContext;

    #@143
    invoke-static {v2, v3}, Lcom/android/server/content/SyncManager;->-wrap5(Lcom/android/server/content/SyncManager;Lcom/android/server/content/SyncManager$ActiveSyncContext;)Z

    #@146
    move-result v2

    #@147
    if-nez v2, :cond_7

    #@149
    .line 2344
    const-string/jumbo v2, "SyncManager"

    #@14c
    new-instance v3, Ljava/lang/StringBuilder;

    #@14e
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@151
    const-string/jumbo v4, "handleSyncHandlerMessage: dropping since the sync is no longer active: "

    #@154
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@157
    move-result-object v3

    #@158
    .line 2346
    move-object/from16 v0, v20

    #@15a
    iget-object v4, v0, Lcom/android/server/content/SyncManager$SyncFinishedOrCancelledMessagePayload;->activeSyncContext:Lcom/android/server/content/SyncManager$ActiveSyncContext;

    #@15c
    .line 2344
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@15f
    move-result-object v3

    #@160
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@163
    move-result-object v3

    #@164
    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@167
    goto/16 :goto_0

    #@169
    .line 2349
    :cond_7
    if-eqz v16, :cond_8

    #@16b
    .line 2350
    const-string/jumbo v2, "SyncManager"

    #@16e
    new-instance v3, Ljava/lang/StringBuilder;

    #@170
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@173
    const-string/jumbo v4, "syncFinished"

    #@176
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@179
    move-result-object v3

    #@17a
    move-object/from16 v0, v20

    #@17c
    iget-object v4, v0, Lcom/android/server/content/SyncManager$SyncFinishedOrCancelledMessagePayload;->activeSyncContext:Lcom/android/server/content/SyncManager$ActiveSyncContext;

    #@17e
    iget-object v4, v4, Lcom/android/server/content/SyncManager$ActiveSyncContext;->mSyncOperation:Lcom/android/server/content/SyncOperation;

    #@180
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@183
    move-result-object v3

    #@184
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@187
    move-result-object v3

    #@188
    invoke-static {v2, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    #@18b
    .line 2352
    :cond_8
    move-object/from16 v0, p0

    #@18d
    iget-object v2, v0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    #@18f
    invoke-static {v2}, Lcom/android/server/content/SyncManager;->-get12(Lcom/android/server/content/SyncManager;)Lcom/android/server/content/SyncJobService;

    #@192
    move-result-object v2

    #@193
    .line 2353
    move-object/from16 v0, v20

    #@195
    iget-object v3, v0, Lcom/android/server/content/SyncManager$SyncFinishedOrCancelledMessagePayload;->activeSyncContext:Lcom/android/server/content/SyncManager$ActiveSyncContext;

    #@197
    iget-object v3, v3, Lcom/android/server/content/SyncManager$ActiveSyncContext;->mSyncOperation:Lcom/android/server/content/SyncOperation;

    #@199
    iget v3, v3, Lcom/android/server/content/SyncOperation;->jobId:I

    #@19b
    const/4 v4, 0x0

    #@19c
    .line 2352
    invoke-virtual {v2, v3, v4}, Lcom/android/server/content/SyncJobService;->callJobFinished(IZ)V

    #@19f
    .line 2354
    move-object/from16 v0, v20

    #@1a1
    iget-object v2, v0, Lcom/android/server/content/SyncManager$SyncFinishedOrCancelledMessagePayload;->syncResult:Landroid/content/SyncResult;

    #@1a3
    .line 2355
    move-object/from16 v0, v20

    #@1a5
    iget-object v3, v0, Lcom/android/server/content/SyncManager$SyncFinishedOrCancelledMessagePayload;->activeSyncContext:Lcom/android/server/content/SyncManager$ActiveSyncContext;

    #@1a7
    .line 2354
    move-object/from16 v0, p0

    #@1a9
    invoke-direct {v0, v2, v3}, Lcom/android/server/content/SyncManager$SyncHandler;->runSyncFinishedOrCanceledH(Landroid/content/SyncResult;Lcom/android/server/content/SyncManager$ActiveSyncContext;)V

    #@1ac
    goto/16 :goto_0

    #@1ae
    .line 2359
    .end local v20    # "payload":Lcom/android/server/content/SyncManager$SyncFinishedOrCancelledMessagePayload;
    :pswitch_8
    move-object/from16 v0, p1

    #@1b0
    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@1b2
    move-object/from16 v18, v0

    #@1b4
    check-cast v18, Lcom/android/server/content/SyncManager$ServiceConnectionData;

    #@1b6
    .line 2360
    .local v18, "msgData":Lcom/android/server/content/SyncManager$ServiceConnectionData;
    const-string/jumbo v2, "SyncManager"

    #@1b9
    const/4 v3, 0x2

    #@1ba
    invoke-static {v2, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    #@1bd
    move-result v2

    #@1be
    if-eqz v2, :cond_9

    #@1c0
    .line 2361
    const-string/jumbo v2, "SyncManager"

    #@1c3
    new-instance v3, Ljava/lang/StringBuilder;

    #@1c5
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@1c8
    const-string/jumbo v4, "handleSyncHandlerMessage: MESSAGE_SERVICE_CONNECTED: "

    #@1cb
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1ce
    move-result-object v3

    #@1cf
    .line 2362
    move-object/from16 v0, v18

    #@1d1
    iget-object v4, v0, Lcom/android/server/content/SyncManager$ServiceConnectionData;->activeSyncContext:Lcom/android/server/content/SyncManager$ActiveSyncContext;

    #@1d3
    .line 2361
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@1d6
    move-result-object v3

    #@1d7
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1da
    move-result-object v3

    #@1db
    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@1de
    .line 2365
    :cond_9
    move-object/from16 v0, p0

    #@1e0
    iget-object v2, v0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    #@1e2
    move-object/from16 v0, v18

    #@1e4
    iget-object v3, v0, Lcom/android/server/content/SyncManager$ServiceConnectionData;->activeSyncContext:Lcom/android/server/content/SyncManager$ActiveSyncContext;

    #@1e6
    invoke-static {v2, v3}, Lcom/android/server/content/SyncManager;->-wrap5(Lcom/android/server/content/SyncManager;Lcom/android/server/content/SyncManager$ActiveSyncContext;)Z

    #@1e9
    move-result v2

    #@1ea
    if-eqz v2, :cond_0

    #@1ec
    .line 2367
    move-object/from16 v0, v18

    #@1ee
    iget-object v2, v0, Lcom/android/server/content/SyncManager$ServiceConnectionData;->activeSyncContext:Lcom/android/server/content/SyncManager$ActiveSyncContext;

    #@1f0
    .line 2368
    move-object/from16 v0, v18

    #@1f2
    iget-object v3, v0, Lcom/android/server/content/SyncManager$ServiceConnectionData;->adapter:Landroid/os/IBinder;

    #@1f4
    .line 2366
    move-object/from16 v0, p0

    #@1f6
    invoke-direct {v0, v2, v3}, Lcom/android/server/content/SyncManager$SyncHandler;->runBoundToAdapterH(Lcom/android/server/content/SyncManager$ActiveSyncContext;Landroid/os/IBinder;)V

    #@1f9
    goto/16 :goto_0

    #@1fb
    .line 2375
    .end local v18    # "msgData":Lcom/android/server/content/SyncManager$ServiceConnectionData;
    :pswitch_9
    move-object/from16 v0, p1

    #@1fd
    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@1ff
    check-cast v2, Lcom/android/server/content/SyncManager$ServiceConnectionData;

    #@201
    .line 2374
    iget-object v11, v2, Lcom/android/server/content/SyncManager$ServiceConnectionData;->activeSyncContext:Lcom/android/server/content/SyncManager$ActiveSyncContext;

    #@203
    .line 2376
    .local v11, "currentSyncContext":Lcom/android/server/content/SyncManager$ActiveSyncContext;
    const-string/jumbo v2, "SyncManager"

    #@206
    const/4 v3, 0x2

    #@207
    invoke-static {v2, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    #@20a
    move-result v2

    #@20b
    if-eqz v2, :cond_a

    #@20d
    .line 2377
    const-string/jumbo v2, "SyncManager"

    #@210
    new-instance v3, Ljava/lang/StringBuilder;

    #@212
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@215
    const-string/jumbo v4, "handleSyncHandlerMessage: MESSAGE_SERVICE_DISCONNECTED: "

    #@218
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@21b
    move-result-object v3

    #@21c
    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@21f
    move-result-object v3

    #@220
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@223
    move-result-object v3

    #@224
    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@227
    .line 2381
    :cond_a
    move-object/from16 v0, p0

    #@229
    iget-object v2, v0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    #@22b
    invoke-static {v2, v11}, Lcom/android/server/content/SyncManager;->-wrap5(Lcom/android/server/content/SyncManager;Lcom/android/server/content/SyncManager$ActiveSyncContext;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@22e
    move-result v2

    #@22f
    if-eqz v2, :cond_0

    #@231
    .line 2385
    :try_start_3
    iget-object v2, v11, Lcom/android/server/content/SyncManager$ActiveSyncContext;->mSyncAdapter:Landroid/content/ISyncAdapter;

    #@233
    if-eqz v2, :cond_b

    #@235
    .line 2386
    iget-object v2, v11, Lcom/android/server/content/SyncManager$ActiveSyncContext;->mSyncAdapter:Landroid/content/ISyncAdapter;

    #@237
    invoke-interface {v2, v11}, Landroid/content/ISyncAdapter;->cancelSync(Landroid/content/ISyncContext;)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@23a
    .line 2394
    :cond_b
    :goto_3
    :try_start_4
    new-instance v22, Landroid/content/SyncResult;

    #@23c
    invoke-direct/range {v22 .. v22}, Landroid/content/SyncResult;-><init>()V

    #@23f
    .line 2395
    .local v22, "syncResult":Landroid/content/SyncResult;
    move-object/from16 v0, v22

    #@241
    iget-object v2, v0, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    #@243
    iget-wide v4, v2, Landroid/content/SyncStats;->numIoExceptions:J

    #@245
    const-wide/16 v6, 0x1

    #@247
    add-long/2addr v4, v6

    #@248
    iput-wide v4, v2, Landroid/content/SyncStats;->numIoExceptions:J

    #@24a
    .line 2396
    move-object/from16 v0, p0

    #@24c
    iget-object v2, v0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    #@24e
    invoke-static {v2}, Lcom/android/server/content/SyncManager;->-get12(Lcom/android/server/content/SyncManager;)Lcom/android/server/content/SyncJobService;

    #@251
    move-result-object v2

    #@252
    .line 2397
    iget-object v3, v11, Lcom/android/server/content/SyncManager$ActiveSyncContext;->mSyncOperation:Lcom/android/server/content/SyncOperation;

    #@254
    iget v3, v3, Lcom/android/server/content/SyncOperation;->jobId:I

    #@256
    const/4 v4, 0x0

    #@257
    .line 2396
    invoke-virtual {v2, v3, v4}, Lcom/android/server/content/SyncJobService;->callJobFinished(IZ)V

    #@25a
    .line 2398
    move-object/from16 v0, p0

    #@25c
    move-object/from16 v1, v22

    #@25e
    invoke-direct {v0, v1, v11}, Lcom/android/server/content/SyncManager$SyncHandler;->runSyncFinishedOrCanceledH(Landroid/content/SyncResult;Lcom/android/server/content/SyncManager$ActiveSyncContext;)V

    #@261
    goto/16 :goto_0

    #@263
    .line 2404
    .end local v11    # "currentSyncContext":Lcom/android/server/content/SyncManager$ActiveSyncContext;
    .end local v22    # "syncResult":Landroid/content/SyncResult;
    :pswitch_a
    move-object/from16 v0, p1

    #@265
    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@267
    move-object/from16 v17, v0

    #@269
    check-cast v17, Lcom/android/server/content/SyncManager$ActiveSyncContext;

    #@26b
    .line 2405
    .local v17, "monitoredSyncContext":Lcom/android/server/content/SyncManager$ActiveSyncContext;
    const-string/jumbo v2, "SyncManager"

    #@26e
    const/4 v3, 0x3

    #@26f
    invoke-static {v2, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    #@272
    move-result v2

    #@273
    if-eqz v2, :cond_c

    #@275
    .line 2406
    const-string/jumbo v2, "SyncManager"

    #@278
    new-instance v3, Ljava/lang/StringBuilder;

    #@27a
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@27d
    const-string/jumbo v4, "handleSyncHandlerMessage: MESSAGE_MONITOR_SYNC: "

    #@280
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@283
    move-result-object v3

    #@284
    .line 2407
    move-object/from16 v0, v17

    #@286
    iget-object v4, v0, Lcom/android/server/content/SyncManager$ActiveSyncContext;->mSyncOperation:Lcom/android/server/content/SyncOperation;

    #@288
    iget-object v4, v4, Lcom/android/server/content/SyncOperation;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    #@28a
    .line 2406
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@28d
    move-result-object v3

    #@28e
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@291
    move-result-object v3

    #@292
    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@295
    .line 2410
    :cond_c
    move-object/from16 v0, p0

    #@297
    move-object/from16 v1, v17

    #@299
    invoke-direct {v0, v1}, Lcom/android/server/content/SyncManager$SyncHandler;->isSyncNotUsingNetworkH(Lcom/android/server/content/SyncManager$ActiveSyncContext;)Z

    #@29c
    move-result v2

    #@29d
    if-eqz v2, :cond_d

    #@29f
    .line 2411
    const-string/jumbo v2, "SyncManager"

    #@2a2
    .line 2412
    const-string/jumbo v3, "Detected sync making no progress for %s. cancelling."

    #@2a5
    .line 2411
    const/4 v4, 0x1

    #@2a6
    new-array v4, v4, [Ljava/lang/Object;

    #@2a8
    .line 2413
    const/4 v5, 0x0

    #@2a9
    aput-object v17, v4, v5

    #@2ab
    .line 2411
    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@2ae
    move-result-object v3

    #@2af
    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@2b2
    .line 2414
    move-object/from16 v0, p0

    #@2b4
    iget-object v2, v0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    #@2b6
    invoke-static {v2}, Lcom/android/server/content/SyncManager;->-get12(Lcom/android/server/content/SyncManager;)Lcom/android/server/content/SyncJobService;

    #@2b9
    move-result-object v2

    #@2ba
    .line 2415
    move-object/from16 v0, v17

    #@2bc
    iget-object v3, v0, Lcom/android/server/content/SyncManager$ActiveSyncContext;->mSyncOperation:Lcom/android/server/content/SyncOperation;

    #@2be
    iget v3, v3, Lcom/android/server/content/SyncOperation;->jobId:I

    #@2c0
    const/4 v4, 0x0

    #@2c1
    .line 2414
    invoke-virtual {v2, v3, v4}, Lcom/android/server/content/SyncJobService;->callJobFinished(IZ)V

    #@2c4
    .line 2417
    const/4 v2, 0x0

    #@2c5
    .line 2416
    move-object/from16 v0, p0

    #@2c7
    move-object/from16 v1, v17

    #@2c9
    invoke-direct {v0, v2, v1}, Lcom/android/server/content/SyncManager$SyncHandler;->runSyncFinishedOrCanceledH(Landroid/content/SyncResult;Lcom/android/server/content/SyncManager$ActiveSyncContext;)V

    #@2cc
    goto/16 :goto_0

    #@2ce
    .line 2420
    :cond_d
    move-object/from16 v0, p0

    #@2d0
    iget-object v2, v0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    #@2d2
    move-object/from16 v0, v17

    #@2d4
    invoke-static {v2, v0}, Lcom/android/server/content/SyncManager;->-wrap17(Lcom/android/server/content/SyncManager;Lcom/android/server/content/SyncManager$ActiveSyncContext;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    #@2d7
    goto/16 :goto_0

    #@2d9
    .line 2388
    .end local v17    # "monitoredSyncContext":Lcom/android/server/content/SyncManager$ActiveSyncContext;
    .restart local v11    # "currentSyncContext":Lcom/android/server/content/SyncManager$ActiveSyncContext;
    :catch_0
    move-exception v13

    #@2da
    .local v13, "e":Landroid/os/RemoteException;
    goto/16 :goto_3

    #@2dc
    .line 2286
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_7
        :pswitch_0
        :pswitch_0
        :pswitch_8
        :pswitch_9
        :pswitch_6
        :pswitch_0
        :pswitch_a
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_1
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method private installHandleTooManyDeletesNotification(Landroid/accounts/Account;Ljava/lang/String;JI)V
    .locals 17
    .param p1, "account"    # Landroid/accounts/Account;
    .param p2, "authority"    # Ljava/lang/String;
    .param p3, "numDeletes"    # J
    .param p5, "userId"    # I

    #@0
    .prologue
    .line 3024
    move-object/from16 v0, p0

    #@2
    iget-object v2, v0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    #@4
    invoke-static {v2}, Lcom/android/server/content/SyncManager;->-get6(Lcom/android/server/content/SyncManager;)Landroid/app/NotificationManager;

    #@7
    move-result-object v2

    #@8
    if-nez v2, :cond_0

    #@a
    return-void

    #@b
    .line 3026
    :cond_0
    move-object/from16 v0, p0

    #@d
    iget-object v2, v0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    #@f
    invoke-static {v2}, Lcom/android/server/content/SyncManager;->-get2(Lcom/android/server/content/SyncManager;)Landroid/content/Context;

    #@12
    move-result-object v2

    #@13
    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    #@16
    move-result-object v2

    #@17
    .line 3027
    const/4 v3, 0x0

    #@18
    .line 3026
    move-object/from16 v0, p2

    #@1a
    invoke-virtual {v2, v0, v3}, Landroid/content/pm/PackageManager;->resolveContentProvider(Ljava/lang/String;I)Landroid/content/pm/ProviderInfo;

    #@1d
    move-result-object v12

    #@1e
    .line 3028
    .local v12, "providerInfo":Landroid/content/pm/ProviderInfo;
    if-nez v12, :cond_1

    #@20
    .line 3029
    return-void

    #@21
    .line 3031
    :cond_1
    move-object/from16 v0, p0

    #@23
    iget-object v2, v0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    #@25
    invoke-static {v2}, Lcom/android/server/content/SyncManager;->-get2(Lcom/android/server/content/SyncManager;)Landroid/content/Context;

    #@28
    move-result-object v2

    #@29
    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    #@2c
    move-result-object v2

    #@2d
    invoke-virtual {v12, v2}, Landroid/content/pm/ProviderInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    #@30
    move-result-object v8

    #@31
    .line 3033
    .local v8, "authorityName":Ljava/lang/CharSequence;
    new-instance v4, Landroid/content/Intent;

    #@33
    move-object/from16 v0, p0

    #@35
    iget-object v2, v0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    #@37
    invoke-static {v2}, Lcom/android/server/content/SyncManager;->-get2(Lcom/android/server/content/SyncManager;)Landroid/content/Context;

    #@3a
    move-result-object v2

    #@3b
    const-class v3, Landroid/content/SyncActivityTooManyDeletes;

    #@3d
    invoke-direct {v4, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    #@40
    .line 3034
    .local v4, "clickIntent":Landroid/content/Intent;
    const-string/jumbo v2, "account"

    #@43
    move-object/from16 v0, p1

    #@45
    invoke-virtual {v4, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    #@48
    .line 3035
    const-string/jumbo v2, "authority"

    #@4b
    move-object/from16 v0, p2

    #@4d
    invoke-virtual {v4, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    #@50
    .line 3036
    const-string/jumbo v2, "provider"

    #@53
    invoke-interface {v8}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    #@56
    move-result-object v3

    #@57
    invoke-virtual {v4, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    #@5a
    .line 3037
    const-string/jumbo v2, "numDeletes"

    #@5d
    move-wide/from16 v0, p3

    #@5f
    invoke-virtual {v4, v2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    #@62
    .line 3039
    move-object/from16 v0, p0

    #@64
    invoke-direct {v0, v4}, Lcom/android/server/content/SyncManager$SyncHandler;->isActivityAvailable(Landroid/content/Intent;)Z

    #@67
    move-result v2

    #@68
    if-nez v2, :cond_2

    #@6a
    .line 3040
    const-string/jumbo v2, "SyncManager"

    #@6d
    const-string/jumbo v3, "No activity found to handle too many deletes."

    #@70
    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@73
    .line 3041
    return-void

    #@74
    .line 3044
    :cond_2
    new-instance v7, Landroid/os/UserHandle;

    #@76
    move/from16 v0, p5

    #@78
    invoke-direct {v7, v0}, Landroid/os/UserHandle;-><init>(I)V

    #@7b
    .line 3046
    .local v7, "user":Landroid/os/UserHandle;
    move-object/from16 v0, p0

    #@7d
    iget-object v2, v0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    #@7f
    invoke-static {v2}, Lcom/android/server/content/SyncManager;->-get2(Lcom/android/server/content/SyncManager;)Landroid/content/Context;

    #@82
    move-result-object v2

    #@83
    const/4 v3, 0x0

    #@84
    .line 3047
    const/high16 v5, 0x10000000

    #@86
    const/4 v6, 0x0

    #@87
    .line 3045
    invoke-static/range {v2 .. v7}, Landroid/app/PendingIntent;->getActivityAsUser(Landroid/content/Context;ILandroid/content/Intent;ILandroid/os/Bundle;Landroid/os/UserHandle;)Landroid/app/PendingIntent;

    #@8a
    move-result-object v11

    #@8b
    .line 3049
    .local v11, "pendingIntent":Landroid/app/PendingIntent;
    move-object/from16 v0, p0

    #@8d
    iget-object v2, v0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    #@8f
    invoke-static {v2}, Lcom/android/server/content/SyncManager;->-get2(Lcom/android/server/content/SyncManager;)Landroid/content/Context;

    #@92
    move-result-object v2

    #@93
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@96
    move-result-object v2

    #@97
    .line 3050
    const v3, 0x1040102

    #@9a
    .line 3049
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    #@9d
    move-result-object v13

    #@9e
    .line 3052
    .local v13, "tooManyDeletesDescFormat":Ljava/lang/CharSequence;
    move-object/from16 v0, p0

    #@a0
    iget-object v2, v0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    #@a2
    invoke-static {v2, v7}, Lcom/android/server/content/SyncManager;->-wrap1(Lcom/android/server/content/SyncManager;Landroid/os/UserHandle;)Landroid/content/Context;

    #@a5
    move-result-object v9

    #@a6
    .line 3053
    .local v9, "contextForUser":Landroid/content/Context;
    new-instance v2, Landroid/app/Notification$Builder;

    #@a8
    invoke-direct {v2, v9}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    #@ab
    .line 3054
    const v3, 0x10806bc

    #@ae
    .line 3053
    invoke-virtual {v2, v3}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    #@b1
    move-result-object v2

    #@b2
    .line 3055
    move-object/from16 v0, p0

    #@b4
    iget-object v3, v0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    #@b6
    invoke-static {v3}, Lcom/android/server/content/SyncManager;->-get2(Lcom/android/server/content/SyncManager;)Landroid/content/Context;

    #@b9
    move-result-object v3

    #@ba
    const v5, 0x1040100

    #@bd
    invoke-virtual {v3, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    #@c0
    move-result-object v3

    #@c1
    .line 3053
    invoke-virtual {v2, v3}, Landroid/app/Notification$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    #@c4
    move-result-object v2

    #@c5
    .line 3056
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    #@c8
    move-result-wide v14

    #@c9
    .line 3053
    invoke-virtual {v2, v14, v15}, Landroid/app/Notification$Builder;->setWhen(J)Landroid/app/Notification$Builder;

    #@cc
    move-result-object v2

    #@cd
    .line 3058
    const v3, 0x1060059

    #@d0
    .line 3057
    invoke-virtual {v9, v3}, Landroid/content/Context;->getColor(I)I

    #@d3
    move-result v3

    #@d4
    .line 3053
    invoke-virtual {v2, v3}, Landroid/app/Notification$Builder;->setColor(I)Landroid/app/Notification$Builder;

    #@d7
    move-result-object v2

    #@d8
    .line 3060
    const v3, 0x1040101

    #@db
    .line 3059
    invoke-virtual {v9, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    #@de
    move-result-object v3

    #@df
    .line 3053
    invoke-virtual {v2, v3}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    #@e2
    move-result-object v2

    #@e3
    .line 3062
    invoke-interface {v13}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    #@e6
    move-result-object v3

    #@e7
    const/4 v5, 0x1

    #@e8
    new-array v5, v5, [Ljava/lang/Object;

    #@ea
    const/4 v6, 0x0

    #@eb
    aput-object v8, v5, v6

    #@ed
    invoke-static {v3, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@f0
    move-result-object v3

    #@f1
    .line 3053
    invoke-virtual {v2, v3}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    #@f4
    move-result-object v2

    #@f5
    invoke-virtual {v2, v11}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    #@f8
    move-result-object v2

    #@f9
    invoke-virtual {v2}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    #@fc
    move-result-object v10

    #@fd
    .line 3065
    .local v10, "notification":Landroid/app/Notification;
    iget v2, v10, Landroid/app/Notification;->flags:I

    #@ff
    or-int/lit8 v2, v2, 0x2

    #@101
    iput v2, v10, Landroid/app/Notification;->flags:I

    #@103
    .line 3066
    move-object/from16 v0, p0

    #@105
    iget-object v2, v0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    #@107
    invoke-static {v2}, Lcom/android/server/content/SyncManager;->-get6(Lcom/android/server/content/SyncManager;)Landroid/app/NotificationManager;

    #@10a
    move-result-object v2

    #@10b
    invoke-virtual/range {p1 .. p1}, Landroid/accounts/Account;->hashCode()I

    #@10e
    move-result v3

    #@10f
    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->hashCode()I

    #@112
    move-result v5

    #@113
    xor-int/2addr v3, v5

    #@114
    const/4 v5, 0x0

    #@115
    invoke-virtual {v2, v5, v3, v10, v7}, Landroid/app/NotificationManager;->notifyAsUser(Ljava/lang/String;ILandroid/app/Notification;Landroid/os/UserHandle;)V

    #@118
    .line 3023
    return-void
.end method

.method private isActivityAvailable(Landroid/content/Intent;)Z
    .locals 7
    .param p1, "intent"    # Landroid/content/Intent;

    #@0
    .prologue
    const/4 v6, 0x0

    #@1
    .line 3077
    iget-object v5, p0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    #@3
    invoke-static {v5}, Lcom/android/server/content/SyncManager;->-get2(Lcom/android/server/content/SyncManager;)Landroid/content/Context;

    #@6
    move-result-object v5

    #@7
    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    #@a
    move-result-object v3

    #@b
    .line 3078
    .local v3, "pm":Landroid/content/pm/PackageManager;
    invoke-virtual {v3, p1, v6}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    #@e
    move-result-object v1

    #@f
    .line 3079
    .local v1, "list":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v1}, Ljava/util/List;->size()I

    #@12
    move-result v2

    #@13
    .line 3080
    .local v2, "listSize":I
    const/4 v0, 0x0

    #@14
    .local v0, "i":I
    :goto_0
    if-ge v0, v2, :cond_1

    #@16
    .line 3081
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@19
    move-result-object v4

    #@1a
    check-cast v4, Landroid/content/pm/ResolveInfo;

    #@1c
    .line 3082
    .local v4, "resolveInfo":Landroid/content/pm/ResolveInfo;
    iget-object v5, v4, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    #@1e
    iget-object v5, v5, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    #@20
    iget v5, v5, Landroid/content/pm/ApplicationInfo;->flags:I

    #@22
    and-int/lit8 v5, v5, 0x1

    #@24
    if-eqz v5, :cond_0

    #@26
    .line 3084
    const/4 v5, 0x1

    #@27
    return v5

    #@28
    .line 3080
    :cond_0
    add-int/lit8 v0, v0, 0x1

    #@2a
    goto :goto_0

    #@2b
    .line 3088
    .end local v4    # "resolveInfo":Landroid/content/pm/ResolveInfo;
    :cond_1
    return v6
.end method

.method private isOperationValid(Lcom/android/server/content/SyncOperation;)Z
    .locals 11
    .param p1, "op"    # Lcom/android/server/content/SyncOperation;

    #@0
    .prologue
    const/4 v10, 0x0

    #@1
    .line 2729
    const-string/jumbo v6, "SyncManager"

    #@4
    const/4 v7, 0x2

    #@5
    invoke-static {v6, v7}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    #@8
    move-result v2

    #@9
    .line 2731
    .local v2, "isLoggable":Z
    iget-object v5, p1, Lcom/android/server/content/SyncOperation;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    #@b
    .line 2732
    .local v5, "target":Lcom/android/server/content/SyncStorageEngine$EndPoint;
    iget-object v6, p0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    #@d
    invoke-static {v6}, Lcom/android/server/content/SyncManager;->-get14(Lcom/android/server/content/SyncManager;)Lcom/android/server/content/SyncStorageEngine;

    #@10
    move-result-object v6

    #@11
    iget v7, v5, Lcom/android/server/content/SyncStorageEngine$EndPoint;->userId:I

    #@13
    invoke-virtual {v6, v7}, Lcom/android/server/content/SyncStorageEngine;->getMasterSyncAutomatically(I)Z

    #@16
    move-result v4

    #@17
    .line 2734
    .local v4, "syncEnabled":Z
    iget-object v6, p0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    #@19
    invoke-static {v6}, Lcom/android/server/content/SyncManager;->-get9(Lcom/android/server/content/SyncManager;)[Landroid/accounts/AccountAndUser;

    #@1c
    move-result-object v0

    #@1d
    .line 2735
    .local v0, "accounts":[Landroid/accounts/AccountAndUser;
    iget-object v6, p0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    #@1f
    iget-object v7, v5, Lcom/android/server/content/SyncStorageEngine$EndPoint;->account:Landroid/accounts/Account;

    #@21
    iget v8, v5, Lcom/android/server/content/SyncStorageEngine$EndPoint;->userId:I

    #@23
    invoke-static {v6, v0, v7, v8}, Lcom/android/server/content/SyncManager;->-wrap2(Lcom/android/server/content/SyncManager;[Landroid/accounts/AccountAndUser;Landroid/accounts/Account;I)Z

    #@26
    move-result v6

    #@27
    if-nez v6, :cond_1

    #@29
    .line 2736
    if-eqz v2, :cond_0

    #@2b
    .line 2737
    const-string/jumbo v6, "SyncManager"

    #@2e
    const-string/jumbo v7, "    Dropping sync operation: account doesn\'t exist."

    #@31
    invoke-static {v6, v7}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    #@34
    .line 2739
    :cond_0
    return v10

    #@35
    .line 2742
    :cond_1
    iget-object v6, p0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    #@37
    iget-object v7, v5, Lcom/android/server/content/SyncStorageEngine$EndPoint;->account:Landroid/accounts/Account;

    #@39
    iget v8, v5, Lcom/android/server/content/SyncStorageEngine$EndPoint;->userId:I

    #@3b
    iget-object v9, v5, Lcom/android/server/content/SyncStorageEngine$EndPoint;->provider:Ljava/lang/String;

    #@3d
    invoke-virtual {v6, v7, v8, v9}, Lcom/android/server/content/SyncManager;->getIsSyncable(Landroid/accounts/Account;ILjava/lang/String;)I

    #@40
    move-result v3

    #@41
    .line 2743
    .local v3, "state":I
    if-nez v3, :cond_3

    #@43
    .line 2744
    if-eqz v2, :cond_2

    #@45
    .line 2745
    const-string/jumbo v6, "SyncManager"

    #@48
    const-string/jumbo v7, "    Dropping sync operation: isSyncable == 0."

    #@4b
    invoke-static {v6, v7}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    #@4e
    .line 2747
    :cond_2
    return v10

    #@4f
    .line 2749
    :cond_3
    if-eqz v4, :cond_6

    #@51
    iget-object v6, p0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    #@53
    invoke-static {v6}, Lcom/android/server/content/SyncManager;->-get14(Lcom/android/server/content/SyncManager;)Lcom/android/server/content/SyncStorageEngine;

    #@56
    move-result-object v6

    #@57
    .line 2750
    iget-object v7, v5, Lcom/android/server/content/SyncStorageEngine$EndPoint;->account:Landroid/accounts/Account;

    #@59
    iget v8, v5, Lcom/android/server/content/SyncStorageEngine$EndPoint;->userId:I

    #@5b
    iget-object v9, v5, Lcom/android/server/content/SyncStorageEngine$EndPoint;->provider:Ljava/lang/String;

    #@5d
    .line 2749
    invoke-virtual {v6, v7, v8, v9}, Lcom/android/server/content/SyncStorageEngine;->getSyncAutomatically(Landroid/accounts/Account;ILjava/lang/String;)Z

    #@60
    move-result v4

    #@61
    .line 2756
    .end local v4    # "syncEnabled":Z
    :goto_0
    invoke-virtual {p1}, Lcom/android/server/content/SyncOperation;->isIgnoreSettings()Z

    #@64
    move-result v6

    #@65
    if-nez v6, :cond_4

    #@67
    if-gez v3, :cond_7

    #@69
    :cond_4
    const/4 v1, 0x1

    #@6a
    .line 2759
    .local v1, "ignoreSystemConfiguration":Z
    :goto_1
    if-nez v4, :cond_5

    #@6c
    if-eqz v1, :cond_8

    #@6e
    .line 2765
    :cond_5
    const/4 v6, 0x1

    #@6f
    return v6

    #@70
    .line 2749
    .end local v1    # "ignoreSystemConfiguration":Z
    .restart local v4    # "syncEnabled":Z
    :cond_6
    const/4 v4, 0x0

    #@71
    .local v4, "syncEnabled":Z
    goto :goto_0

    #@72
    .line 2756
    .end local v4    # "syncEnabled":Z
    :cond_7
    const/4 v1, 0x0

    #@73
    .restart local v1    # "ignoreSystemConfiguration":Z
    goto :goto_1

    #@74
    .line 2760
    :cond_8
    if-eqz v2, :cond_9

    #@76
    .line 2761
    const-string/jumbo v6, "SyncManager"

    #@79
    const-string/jumbo v7, "    Dropping sync operation: disallowed by settings/network."

    #@7c
    invoke-static {v6, v7}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    #@7f
    .line 2763
    :cond_9
    return v10
.end method

.method private isSyncNotUsingNetworkH(Lcom/android/server/content/SyncManager$ActiveSyncContext;)Z
    .locals 22
    .param p1, "activeSyncContext"    # Lcom/android/server/content/SyncManager$ActiveSyncContext;

    #@0
    .prologue
    .line 2703
    move-object/from16 v0, p0

    #@2
    iget-object v14, v0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    #@4
    move-object/from16 v0, p1

    #@6
    iget v15, v0, Lcom/android/server/content/SyncManager$ActiveSyncContext;->mSyncAdapterUid:I

    #@8
    invoke-static {v14, v15}, Lcom/android/server/content/SyncManager;->-wrap8(Lcom/android/server/content/SyncManager;I)J

    #@b
    move-result-wide v4

    #@c
    .line 2705
    .local v4, "bytesTransferredCurrent":J
    move-object/from16 v0, p1

    #@e
    iget-wide v14, v0, Lcom/android/server/content/SyncManager$ActiveSyncContext;->mBytesTransferredAtLastPoll:J

    #@10
    sub-long v6, v4, v14

    #@12
    .line 2707
    .local v6, "deltaBytesTransferred":J
    const-string/jumbo v14, "SyncManager"

    #@15
    const/4 v15, 0x3

    #@16
    invoke-static {v14, v15}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    #@19
    move-result v14

    #@1a
    if-eqz v14, :cond_0

    #@1c
    .line 2709
    move-wide v12, v6

    #@1d
    .line 2710
    .local v12, "remainder":J
    const-wide/32 v14, 0x100000

    #@20
    div-long v10, v6, v14

    #@22
    .line 2711
    .local v10, "mb":J
    const-wide/32 v14, 0x100000

    #@25
    rem-long v12, v6, v14

    #@27
    .line 2712
    const-wide/16 v14, 0x400

    #@29
    div-long v8, v12, v14

    #@2b
    .line 2713
    .local v8, "kb":J
    const-wide/16 v14, 0x400

    #@2d
    rem-long/2addr v12, v14

    #@2e
    .line 2714
    move-wide v2, v12

    #@2f
    .line 2715
    .local v2, "b":J
    const-string/jumbo v14, "SyncManager"

    #@32
    .line 2716
    const-string/jumbo v15, "Time since last update: %ds. Delta transferred: %dMBs,%dKBs,%dBs"

    #@35
    .line 2715
    const/16 v16, 0x4

    #@37
    move/from16 v0, v16

    #@39
    new-array v0, v0, [Ljava/lang/Object;

    #@3b
    move-object/from16 v16, v0

    #@3d
    .line 2717
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    #@40
    move-result-wide v18

    #@41
    .line 2718
    move-object/from16 v0, p1

    #@43
    iget-wide v0, v0, Lcom/android/server/content/SyncManager$ActiveSyncContext;->mLastPolledTimeElapsed:J

    #@45
    move-wide/from16 v20, v0

    #@47
    .line 2717
    sub-long v18, v18, v20

    #@49
    .line 2718
    const-wide/16 v20, 0x3e8

    #@4b
    .line 2717
    div-long v18, v18, v20

    #@4d
    invoke-static/range {v18 .. v19}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    #@50
    move-result-object v17

    #@51
    const/16 v18, 0x0

    #@53
    aput-object v17, v16, v18

    #@55
    .line 2719
    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    #@58
    move-result-object v17

    #@59
    const/16 v18, 0x1

    #@5b
    aput-object v17, v16, v18

    #@5d
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    #@60
    move-result-object v17

    #@61
    const/16 v18, 0x2

    #@63
    aput-object v17, v16, v18

    #@65
    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    #@68
    move-result-object v17

    #@69
    const/16 v18, 0x3

    #@6b
    aput-object v17, v16, v18

    #@6d
    .line 2715
    invoke-static/range {v15 .. v16}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@70
    move-result-object v15

    #@71
    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@74
    .line 2722
    .end local v2    # "b":J
    .end local v8    # "kb":J
    .end local v10    # "mb":J
    .end local v12    # "remainder":J
    :cond_0
    const-wide/16 v14, 0xa

    #@76
    cmp-long v14, v6, v14

    #@78
    if-gtz v14, :cond_1

    #@7a
    const/4 v14, 0x1

    #@7b
    :goto_0
    return v14

    #@7c
    :cond_1
    const/4 v14, 0x0

    #@7d
    goto :goto_0
.end method

.method private maybeUpdateSyncPeriodH(Lcom/android/server/content/SyncOperation;JJ)V
    .locals 6
    .param p1, "syncOperation"    # Lcom/android/server/content/SyncOperation;
    .param p2, "pollFrequencyMillis"    # J
    .param p4, "flexMillis"    # J

    #@0
    .prologue
    .line 2613
    iget-wide v2, p1, Lcom/android/server/content/SyncOperation;->periodMillis:J

    #@2
    cmp-long v1, p2, v2

    #@4
    if-nez v1, :cond_0

    #@6
    .line 2614
    iget-wide v2, p1, Lcom/android/server/content/SyncOperation;->flexMillis:J

    #@8
    cmp-long v1, p4, v2

    #@a
    if-eqz v1, :cond_2

    #@c
    .line 2615
    :cond_0
    const-string/jumbo v1, "SyncManager"

    #@f
    const/4 v2, 0x2

    #@10
    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    #@13
    move-result v1

    #@14
    if-eqz v1, :cond_1

    #@16
    .line 2616
    const-string/jumbo v1, "SyncManager"

    #@19
    new-instance v2, Ljava/lang/StringBuilder;

    #@1b
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@1e
    const-string/jumbo v3, "updating period "

    #@21
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@24
    move-result-object v2

    #@25
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@28
    move-result-object v2

    #@29
    const-string/jumbo v3, " to "

    #@2c
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2f
    move-result-object v2

    #@30
    invoke-virtual {v2, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    #@33
    move-result-object v2

    #@34
    .line 2617
    const-string/jumbo v3, " and flex to "

    #@37
    .line 2616
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3a
    move-result-object v2

    #@3b
    invoke-virtual {v2, p4, p5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    #@3e
    move-result-object v2

    #@3f
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@42
    move-result-object v2

    #@43
    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    #@46
    .line 2619
    :cond_1
    new-instance v0, Lcom/android/server/content/SyncOperation;

    #@48
    move-object v1, p1

    #@49
    move-wide v2, p2

    #@4a
    move-wide v4, p4

    #@4b
    invoke-direct/range {v0 .. v5}, Lcom/android/server/content/SyncOperation;-><init>(Lcom/android/server/content/SyncOperation;JJ)V

    #@4e
    .line 2621
    .local v0, "newOp":Lcom/android/server/content/SyncOperation;
    iget v1, p1, Lcom/android/server/content/SyncOperation;->jobId:I

    #@50
    iput v1, v0, Lcom/android/server/content/SyncOperation;->jobId:I

    #@52
    .line 2622
    iget-object v1, p0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    #@54
    invoke-static {v1, v0}, Lcom/android/server/content/SyncManager;->-wrap21(Lcom/android/server/content/SyncManager;Lcom/android/server/content/SyncOperation;)V

    #@57
    .line 2612
    .end local v0    # "newOp":Lcom/android/server/content/SyncOperation;
    :cond_2
    return-void
.end method

.method private removePeriodicSyncH(Lcom/android/server/content/SyncStorageEngine$EndPoint;Landroid/os/Bundle;)V
    .locals 5
    .param p1, "target"    # Lcom/android/server/content/SyncStorageEngine$EndPoint;
    .param p2, "extras"    # Landroid/os/Bundle;

    #@0
    .prologue
    .line 2691
    iget-object v3, p0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    #@2
    invoke-static {v3}, Lcom/android/server/content/SyncManager;->-wrap27(Lcom/android/server/content/SyncManager;)V

    #@5
    .line 2692
    iget-object v3, p0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    #@7
    invoke-static {v3}, Lcom/android/server/content/SyncManager;->-wrap7(Lcom/android/server/content/SyncManager;)Ljava/util/List;

    #@a
    move-result-object v2

    #@b
    .line 2693
    .local v2, "ops":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/content/SyncOperation;>;"
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@e
    move-result-object v1

    #@f
    .local v1, "op$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@12
    move-result v3

    #@13
    if-eqz v3, :cond_1

    #@15
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@18
    move-result-object v0

    #@19
    check-cast v0, Lcom/android/server/content/SyncOperation;

    #@1b
    .line 2694
    .local v0, "op":Lcom/android/server/content/SyncOperation;
    iget-boolean v3, v0, Lcom/android/server/content/SyncOperation;->isPeriodic:Z

    #@1d
    if-eqz v3, :cond_0

    #@1f
    iget-object v3, v0, Lcom/android/server/content/SyncOperation;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    #@21
    invoke-virtual {v3, p1}, Lcom/android/server/content/SyncStorageEngine$EndPoint;->matchesSpec(Lcom/android/server/content/SyncStorageEngine$EndPoint;)Z

    #@24
    move-result v3

    #@25
    if-eqz v3, :cond_0

    #@27
    .line 2695
    iget-object v3, v0, Lcom/android/server/content/SyncOperation;->extras:Landroid/os/Bundle;

    #@29
    const/4 v4, 0x1

    #@2a
    invoke-static {v3, p2, v4}, Lcom/android/server/content/SyncManager;->syncExtrasEquals(Landroid/os/Bundle;Landroid/os/Bundle;Z)Z

    #@2d
    move-result v3

    #@2e
    .line 2694
    if-eqz v3, :cond_0

    #@30
    .line 2696
    invoke-direct {p0, v0}, Lcom/android/server/content/SyncManager$SyncHandler;->removePeriodicSyncInternalH(Lcom/android/server/content/SyncOperation;)V

    #@33
    goto :goto_0

    #@34
    .line 2690
    .end local v0    # "op":Lcom/android/server/content/SyncOperation;
    :cond_1
    return-void
.end method

.method private removePeriodicSyncInternalH(Lcom/android/server/content/SyncOperation;)V
    .locals 8
    .param p1, "syncOperation"    # Lcom/android/server/content/SyncOperation;

    #@0
    .prologue
    const/4 v7, 0x0

    #@1
    .line 2677
    iget-object v4, p0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    #@3
    invoke-static {v4}, Lcom/android/server/content/SyncManager;->-wrap7(Lcom/android/server/content/SyncManager;)Ljava/util/List;

    #@6
    move-result-object v3

    #@7
    .line 2678
    .local v3, "ops":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/content/SyncOperation;>;"
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@a
    move-result-object v2

    #@b
    .local v2, "op$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    #@e
    move-result v4

    #@f
    if-eqz v4, :cond_3

    #@11
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@14
    move-result-object v1

    #@15
    check-cast v1, Lcom/android/server/content/SyncOperation;

    #@17
    .line 2679
    .local v1, "op":Lcom/android/server/content/SyncOperation;
    iget v4, v1, Lcom/android/server/content/SyncOperation;->sourcePeriodicId:I

    #@19
    iget v5, p1, Lcom/android/server/content/SyncOperation;->jobId:I

    #@1b
    if-eq v4, v5, :cond_1

    #@1d
    iget v4, v1, Lcom/android/server/content/SyncOperation;->jobId:I

    #@1f
    iget v5, p1, Lcom/android/server/content/SyncOperation;->jobId:I

    #@21
    if-ne v4, v5, :cond_0

    #@23
    .line 2680
    :cond_1
    iget v4, p1, Lcom/android/server/content/SyncOperation;->jobId:I

    #@25
    invoke-direct {p0, v4}, Lcom/android/server/content/SyncManager$SyncHandler;->findActiveSyncContextH(I)Lcom/android/server/content/SyncManager$ActiveSyncContext;

    #@28
    move-result-object v0

    #@29
    .line 2681
    .local v0, "asc":Lcom/android/server/content/SyncManager$ActiveSyncContext;
    if-eqz v0, :cond_2

    #@2b
    .line 2682
    iget-object v4, p0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    #@2d
    invoke-static {v4}, Lcom/android/server/content/SyncManager;->-get12(Lcom/android/server/content/SyncManager;)Lcom/android/server/content/SyncJobService;

    #@30
    move-result-object v4

    #@31
    iget v5, p1, Lcom/android/server/content/SyncOperation;->jobId:I

    #@33
    const/4 v6, 0x0

    #@34
    invoke-virtual {v4, v5, v6}, Lcom/android/server/content/SyncJobService;->callJobFinished(IZ)V

    #@37
    .line 2683
    invoke-direct {p0, v7, v0}, Lcom/android/server/content/SyncManager$SyncHandler;->runSyncFinishedOrCanceledH(Landroid/content/SyncResult;Lcom/android/server/content/SyncManager$ActiveSyncContext;)V

    #@3a
    .line 2685
    :cond_2
    iget-object v4, p0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    #@3c
    invoke-static {v4}, Lcom/android/server/content/SyncManager;->-wrap0(Lcom/android/server/content/SyncManager;)Landroid/app/job/JobScheduler;

    #@3f
    move-result-object v4

    #@40
    iget v5, v1, Lcom/android/server/content/SyncOperation;->jobId:I

    #@42
    invoke-virtual {v4, v5}, Landroid/app/job/JobScheduler;->cancel(I)V

    #@45
    goto :goto_0

    #@46
    .line 2675
    .end local v0    # "asc":Lcom/android/server/content/SyncManager$ActiveSyncContext;
    .end local v1    # "op":Lcom/android/server/content/SyncOperation;
    :cond_3
    return-void
.end method

.method private reschedulePeriodicSyncH(Lcom/android/server/content/SyncOperation;)V
    .locals 5
    .param p1, "syncOperation"    # Lcom/android/server/content/SyncOperation;

    #@0
    .prologue
    .line 2867
    const/4 v3, 0x0

    #@1
    .line 2868
    .local v3, "periodicSync":Lcom/android/server/content/SyncOperation;
    iget-object v4, p0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    #@3
    invoke-static {v4}, Lcom/android/server/content/SyncManager;->-wrap7(Lcom/android/server/content/SyncManager;)Ljava/util/List;

    #@6
    move-result-object v2

    #@7
    .line 2869
    .local v2, "ops":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/content/SyncOperation;>;"
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@a
    move-result-object v1

    #@b
    .local v1, "op$iterator":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@e
    move-result v4

    #@f
    if-eqz v4, :cond_1

    #@11
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@14
    move-result-object v0

    #@15
    check-cast v0, Lcom/android/server/content/SyncOperation;

    #@17
    .line 2870
    .local v0, "op":Lcom/android/server/content/SyncOperation;
    iget-boolean v4, v0, Lcom/android/server/content/SyncOperation;->isPeriodic:Z

    #@19
    if-eqz v4, :cond_0

    #@1b
    invoke-virtual {p1, v0}, Lcom/android/server/content/SyncOperation;->matchesPeriodicOperation(Lcom/android/server/content/SyncOperation;)Z

    #@1e
    move-result v4

    #@1f
    if-eqz v4, :cond_0

    #@21
    .line 2871
    move-object v3, v0

    #@22
    .line 2875
    .end local v0    # "op":Lcom/android/server/content/SyncOperation;
    .end local v3    # "periodicSync":Lcom/android/server/content/SyncOperation;
    :cond_1
    if-nez v3, :cond_2

    #@24
    .line 2876
    return-void

    #@25
    .line 2878
    :cond_2
    iget-object v4, p0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    #@27
    invoke-static {v4, v3}, Lcom/android/server/content/SyncManager;->-wrap21(Lcom/android/server/content/SyncManager;Lcom/android/server/content/SyncOperation;)V

    #@2a
    .line 2865
    return-void
.end method

.method private runBoundToAdapterH(Lcom/android/server/content/SyncManager$ActiveSyncContext;Landroid/os/IBinder;)V
    .locals 7
    .param p1, "activeSyncContext"    # Lcom/android/server/content/SyncManager$ActiveSyncContext;
    .param p2, "syncAdapter"    # Landroid/os/IBinder;

    #@0
    .prologue
    .line 2815
    iget-object v2, p1, Lcom/android/server/content/SyncManager$ActiveSyncContext;->mSyncOperation:Lcom/android/server/content/SyncOperation;

    #@2
    .line 2817
    .local v2, "syncOperation":Lcom/android/server/content/SyncOperation;
    const/4 v3, 0x1

    #@3
    :try_start_0
    iput-boolean v3, p1, Lcom/android/server/content/SyncManager$ActiveSyncContext;->mIsLinkedToDeath:Z

    #@5
    .line 2818
    const/4 v3, 0x0

    #@6
    invoke-interface {p2, p1, v3}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V

    #@9
    .line 2820
    invoke-static {p2}, Landroid/content/ISyncAdapter$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/ISyncAdapter;

    #@c
    move-result-object v3

    #@d
    iput-object v3, p1, Lcom/android/server/content/SyncManager$ActiveSyncContext;->mSyncAdapter:Landroid/content/ISyncAdapter;

    #@f
    .line 2821
    iget-object v3, p1, Lcom/android/server/content/SyncManager$ActiveSyncContext;->mSyncAdapter:Landroid/content/ISyncAdapter;

    #@11
    .line 2822
    iget-object v4, v2, Lcom/android/server/content/SyncOperation;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    #@13
    iget-object v4, v4, Lcom/android/server/content/SyncStorageEngine$EndPoint;->provider:Ljava/lang/String;

    #@15
    .line 2823
    iget-object v5, v2, Lcom/android/server/content/SyncOperation;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    #@17
    iget-object v5, v5, Lcom/android/server/content/SyncStorageEngine$EndPoint;->account:Landroid/accounts/Account;

    #@19
    iget-object v6, v2, Lcom/android/server/content/SyncOperation;->extras:Landroid/os/Bundle;

    #@1b
    .line 2821
    invoke-interface {v3, p1, v4, v5, v6}, Landroid/content/ISyncAdapter;->startSync(Landroid/content/ISyncContext;Ljava/lang/String;Landroid/accounts/Account;Landroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    #@1e
    .line 2814
    :goto_0
    return-void

    #@1f
    .line 2829
    :catch_0
    move-exception v0

    #@20
    .line 2830
    .local v0, "exc":Ljava/lang/RuntimeException;
    invoke-direct {p0, p1}, Lcom/android/server/content/SyncManager$SyncHandler;->closeActiveSyncContext(Lcom/android/server/content/SyncManager$ActiveSyncContext;)V

    #@23
    .line 2831
    const-string/jumbo v3, "SyncManager"

    #@26
    new-instance v4, Ljava/lang/StringBuilder;

    #@28
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@2b
    const-string/jumbo v5, "Caught RuntimeException while starting the sync "

    #@2e
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@31
    move-result-object v4

    #@32
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@35
    move-result-object v4

    #@36
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@39
    move-result-object v4

    #@3a
    invoke-static {v3, v4, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@3d
    goto :goto_0

    #@3e
    .line 2824
    .end local v0    # "exc":Ljava/lang/RuntimeException;
    :catch_1
    move-exception v1

    #@3f
    .line 2825
    .local v1, "remoteExc":Landroid/os/RemoteException;
    const-string/jumbo v3, "SyncManager"

    #@42
    const-string/jumbo v4, "maybeStartNextSync: caught a RemoteException, rescheduling"

    #@45
    invoke-static {v3, v4, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@48
    .line 2826
    invoke-direct {p0, p1}, Lcom/android/server/content/SyncManager$SyncHandler;->closeActiveSyncContext(Lcom/android/server/content/SyncManager$ActiveSyncContext;)V

    #@4b
    .line 2827
    iget-object v3, p0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    #@4d
    iget-object v4, v2, Lcom/android/server/content/SyncOperation;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    #@4f
    invoke-static {v3, v4}, Lcom/android/server/content/SyncManager;->-wrap12(Lcom/android/server/content/SyncManager;Lcom/android/server/content/SyncStorageEngine$EndPoint;)V

    #@52
    .line 2828
    iget-object v3, p0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    #@54
    invoke-static {v3, v2}, Lcom/android/server/content/SyncManager;->-wrap21(Lcom/android/server/content/SyncManager;Lcom/android/server/content/SyncOperation;)V

    #@57
    goto :goto_0
.end method

.method private runSyncFinishedOrCanceledH(Landroid/content/SyncResult;Lcom/android/server/content/SyncManager$ActiveSyncContext;)V
    .locals 24
    .param p1, "syncResult"    # Landroid/content/SyncResult;
    .param p2, "activeSyncContext"    # Lcom/android/server/content/SyncManager$ActiveSyncContext;

    #@0
    .prologue
    .line 2883
    const-string/jumbo v3, "SyncManager"

    #@3
    const/4 v4, 0x2

    #@4
    invoke-static {v3, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    #@7
    move-result v23

    #@8
    .line 2885
    .local v23, "isLoggable":Z
    move-object/from16 v0, p2

    #@a
    iget-object v6, v0, Lcom/android/server/content/SyncManager$ActiveSyncContext;->mSyncOperation:Lcom/android/server/content/SyncOperation;

    #@c
    .line 2886
    .local v6, "syncOperation":Lcom/android/server/content/SyncOperation;
    iget-object v0, v6, Lcom/android/server/content/SyncOperation;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    #@e
    move-object/from16 v22, v0

    #@10
    .line 2888
    .local v22, "info":Lcom/android/server/content/SyncStorageEngine$EndPoint;
    move-object/from16 v0, p2

    #@12
    iget-boolean v3, v0, Lcom/android/server/content/SyncManager$ActiveSyncContext;->mIsLinkedToDeath:Z

    #@14
    if-eqz v3, :cond_0

    #@16
    .line 2889
    move-object/from16 v0, p2

    #@18
    iget-object v3, v0, Lcom/android/server/content/SyncManager$ActiveSyncContext;->mSyncAdapter:Landroid/content/ISyncAdapter;

    #@1a
    invoke-interface {v3}, Landroid/content/ISyncAdapter;->asBinder()Landroid/os/IBinder;

    #@1d
    move-result-object v3

    #@1e
    const/4 v4, 0x0

    #@1f
    move-object/from16 v0, p2

    #@21
    invoke-interface {v3, v0, v4}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    #@24
    .line 2890
    const/4 v3, 0x0

    #@25
    move-object/from16 v0, p2

    #@27
    iput-boolean v3, v0, Lcom/android/server/content/SyncManager$ActiveSyncContext;->mIsLinkedToDeath:Z

    #@29
    .line 2892
    :cond_0
    move-object/from16 v0, p0

    #@2b
    move-object/from16 v1, p2

    #@2d
    invoke-direct {v0, v1}, Lcom/android/server/content/SyncManager$SyncHandler;->closeActiveSyncContext(Lcom/android/server/content/SyncManager$ActiveSyncContext;)V

    #@30
    .line 2893
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    #@33
    move-result-wide v4

    #@34
    move-object/from16 v0, p2

    #@36
    iget-wide v12, v0, Lcom/android/server/content/SyncManager$ActiveSyncContext;->mStartTime:J

    #@38
    sub-long v10, v4, v12

    #@3a
    .line 2898
    .local v10, "elapsedTime":J
    iget-boolean v3, v6, Lcom/android/server/content/SyncOperation;->isPeriodic:Z

    #@3c
    if-nez v3, :cond_1

    #@3e
    .line 2902
    move-object/from16 v0, p0

    #@40
    iget-object v3, v0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    #@42
    invoke-static {v3}, Lcom/android/server/content/SyncManager;->-wrap0(Lcom/android/server/content/SyncManager;)Landroid/app/job/JobScheduler;

    #@45
    move-result-object v3

    #@46
    iget v4, v6, Lcom/android/server/content/SyncOperation;->jobId:I

    #@48
    invoke-virtual {v3, v4}, Landroid/app/job/JobScheduler;->cancel(I)V

    #@4b
    .line 2905
    :cond_1
    if-eqz p1, :cond_7

    #@4d
    .line 2906
    if-eqz v23, :cond_2

    #@4f
    .line 2907
    const-string/jumbo v3, "SyncManager"

    #@52
    new-instance v4, Ljava/lang/StringBuilder;

    #@54
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@57
    const-string/jumbo v5, "runSyncFinishedOrCanceled [finished]: "

    #@5a
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5d
    move-result-object v4

    #@5e
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@61
    move-result-object v4

    #@62
    .line 2908
    const-string/jumbo v5, ", result "

    #@65
    .line 2907
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@68
    move-result-object v4

    #@69
    move-object/from16 v0, p1

    #@6b
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@6e
    move-result-object v4

    #@6f
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@72
    move-result-object v4

    #@73
    invoke-static {v3, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    #@76
    .line 2911
    :cond_2
    invoke-virtual/range {p1 .. p1}, Landroid/content/SyncResult;->hasError()Z

    #@79
    move-result v3

    #@7a
    if-nez v3, :cond_5

    #@7c
    .line 2912
    const-string/jumbo v7, "success"

    #@7f
    .line 2914
    .local v7, "historyMessage":Ljava/lang/String;
    const/4 v9, 0x0

    #@80
    .line 2915
    .local v9, "downstreamActivity":I
    const/4 v8, 0x0

    #@81
    .line 2916
    .local v8, "upstreamActivity":I
    move-object/from16 v0, p0

    #@83
    iget-object v3, v0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    #@85
    iget-object v4, v6, Lcom/android/server/content/SyncOperation;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    #@87
    invoke-static {v3, v4}, Lcom/android/server/content/SyncManager;->-wrap10(Lcom/android/server/content/SyncManager;Lcom/android/server/content/SyncStorageEngine$EndPoint;)V

    #@8a
    .line 2921
    invoke-virtual {v6}, Lcom/android/server/content/SyncOperation;->isDerivedFromFailedPeriodicSync()Z

    #@8d
    move-result v3

    #@8e
    if-eqz v3, :cond_3

    #@90
    .line 2922
    move-object/from16 v0, p0

    #@92
    invoke-direct {v0, v6}, Lcom/android/server/content/SyncManager$SyncHandler;->reschedulePeriodicSyncH(Lcom/android/server/content/SyncOperation;)V

    #@95
    .line 2941
    :cond_3
    :goto_0
    move-object/from16 v0, p0

    #@97
    iget-object v3, v0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    #@99
    iget-object v4, v6, Lcom/android/server/content/SyncOperation;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    #@9b
    move-object/from16 v0, p1

    #@9d
    iget-wide v12, v0, Landroid/content/SyncResult;->delayUntil:J

    #@9f
    invoke-static {v3, v4, v12, v13}, Lcom/android/server/content/SyncManager;->-wrap25(Lcom/android/server/content/SyncManager;Lcom/android/server/content/SyncStorageEngine$EndPoint;J)V

    #@a2
    .line 2958
    :goto_1
    move-object/from16 v0, p2

    #@a4
    iget-wide v4, v0, Lcom/android/server/content/SyncManager$ActiveSyncContext;->mHistoryRowId:J

    #@a6
    move-object/from16 v3, p0

    #@a8
    invoke-virtual/range {v3 .. v11}, Lcom/android/server/content/SyncManager$SyncHandler;->stopSyncEvent(JLcom/android/server/content/SyncOperation;Ljava/lang/String;IIJ)V

    #@ab
    .line 2961
    if-eqz p1, :cond_a

    #@ad
    move-object/from16 v0, p1

    #@af
    iget-boolean v3, v0, Landroid/content/SyncResult;->tooManyDeletions:Z

    #@b1
    if-eqz v3, :cond_a

    #@b3
    .line 2962
    move-object/from16 v0, v22

    #@b5
    iget-object v14, v0, Lcom/android/server/content/SyncStorageEngine$EndPoint;->account:Landroid/accounts/Account;

    #@b7
    .line 2963
    move-object/from16 v0, v22

    #@b9
    iget-object v15, v0, Lcom/android/server/content/SyncStorageEngine$EndPoint;->provider:Ljava/lang/String;

    #@bb
    move-object/from16 v0, p1

    #@bd
    iget-object v3, v0, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    #@bf
    iget-wide v0, v3, Landroid/content/SyncStats;->numDeletes:J

    #@c1
    move-wide/from16 v16, v0

    #@c3
    .line 2964
    move-object/from16 v0, v22

    #@c5
    iget v0, v0, Lcom/android/server/content/SyncStorageEngine$EndPoint;->userId:I

    #@c7
    move/from16 v18, v0

    #@c9
    move-object/from16 v13, p0

    #@cb
    .line 2962
    invoke-direct/range {v13 .. v18}, Lcom/android/server/content/SyncManager$SyncHandler;->installHandleTooManyDeletesNotification(Landroid/accounts/Account;Ljava/lang/String;JI)V

    #@ce
    .line 2970
    :goto_2
    if-eqz p1, :cond_4

    #@d0
    move-object/from16 v0, p1

    #@d2
    iget-boolean v3, v0, Landroid/content/SyncResult;->fullSyncRequested:Z

    #@d4
    if-eqz v3, :cond_4

    #@d6
    .line 2971
    move-object/from16 v0, p0

    #@d8
    iget-object v3, v0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    #@da
    .line 2972
    new-instance v12, Lcom/android/server/content/SyncOperation;

    #@dc
    move-object/from16 v0, v22

    #@de
    iget-object v13, v0, Lcom/android/server/content/SyncStorageEngine$EndPoint;->account:Landroid/accounts/Account;

    #@e0
    move-object/from16 v0, v22

    #@e2
    iget v14, v0, Lcom/android/server/content/SyncStorageEngine$EndPoint;->userId:I

    #@e4
    .line 2973
    iget v15, v6, Lcom/android/server/content/SyncOperation;->owningUid:I

    #@e6
    iget-object v0, v6, Lcom/android/server/content/SyncOperation;->owningPackage:Ljava/lang/String;

    #@e8
    move-object/from16 v16, v0

    #@ea
    .line 2974
    iget v0, v6, Lcom/android/server/content/SyncOperation;->reason:I

    #@ec
    move/from16 v17, v0

    #@ee
    .line 2975
    iget v0, v6, Lcom/android/server/content/SyncOperation;->syncSource:I

    #@f0
    move/from16 v18, v0

    #@f2
    move-object/from16 v0, v22

    #@f4
    iget-object v0, v0, Lcom/android/server/content/SyncStorageEngine$EndPoint;->provider:Ljava/lang/String;

    #@f6
    move-object/from16 v19, v0

    #@f8
    new-instance v20, Landroid/os/Bundle;

    #@fa
    invoke-direct/range {v20 .. v20}, Landroid/os/Bundle;-><init>()V

    #@fd
    .line 2976
    iget-boolean v0, v6, Lcom/android/server/content/SyncOperation;->allowParallelSyncs:Z

    #@ff
    move/from16 v21, v0

    #@101
    .line 2972
    invoke-direct/range {v12 .. v21}, Lcom/android/server/content/SyncOperation;-><init>(Landroid/accounts/Account;IILjava/lang/String;IILjava/lang/String;Landroid/os/Bundle;Z)V

    #@104
    .line 2971
    invoke-static {v3, v12}, Lcom/android/server/content/SyncManager;->-wrap21(Lcom/android/server/content/SyncManager;Lcom/android/server/content/SyncOperation;)V

    #@107
    .line 2882
    :cond_4
    return-void

    #@108
    .line 2925
    .end local v7    # "historyMessage":Ljava/lang/String;
    .end local v8    # "upstreamActivity":I
    .end local v9    # "downstreamActivity":I
    :cond_5
    const-string/jumbo v3, "SyncManager"

    #@10b
    new-instance v4, Ljava/lang/StringBuilder;

    #@10d
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@110
    const-string/jumbo v5, "failed sync operation "

    #@113
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@116
    move-result-object v4

    #@117
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@11a
    move-result-object v4

    #@11b
    const-string/jumbo v5, ", "

    #@11e
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@121
    move-result-object v4

    #@122
    move-object/from16 v0, p1

    #@124
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@127
    move-result-object v4

    #@128
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@12b
    move-result-object v4

    #@12c
    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@12f
    .line 2927
    move-object/from16 v0, p0

    #@131
    iget-object v3, v0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    #@133
    iget-object v4, v6, Lcom/android/server/content/SyncOperation;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    #@135
    invoke-static {v3, v4}, Lcom/android/server/content/SyncManager;->-wrap12(Lcom/android/server/content/SyncManager;Lcom/android/server/content/SyncStorageEngine$EndPoint;)V

    #@138
    .line 2928
    iget-boolean v3, v6, Lcom/android/server/content/SyncOperation;->isPeriodic:Z

    #@13a
    if-nez v3, :cond_6

    #@13c
    .line 2930
    move-object/from16 v0, p0

    #@13e
    iget-object v3, v0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    #@140
    move-object/from16 v0, p1

    #@142
    invoke-static {v3, v0, v6}, Lcom/android/server/content/SyncManager;->-wrap13(Lcom/android/server/content/SyncManager;Landroid/content/SyncResult;Lcom/android/server/content/SyncOperation;)V

    #@145
    .line 2936
    :goto_3
    invoke-direct/range {p0 .. p1}, Lcom/android/server/content/SyncManager$SyncHandler;->syncResultToErrorNumber(Landroid/content/SyncResult;)I

    #@148
    move-result v3

    #@149
    .line 2935
    invoke-static {v3}, Landroid/content/ContentResolver;->syncErrorToString(I)Ljava/lang/String;

    #@14c
    move-result-object v7

    #@14d
    .line 2938
    .restart local v7    # "historyMessage":Ljava/lang/String;
    const/4 v9, 0x0

    #@14e
    .line 2939
    .restart local v9    # "downstreamActivity":I
    const/4 v8, 0x0

    #@14f
    .restart local v8    # "upstreamActivity":I
    goto/16 :goto_0

    #@151
    .line 2933
    .end local v7    # "historyMessage":Ljava/lang/String;
    .end local v8    # "upstreamActivity":I
    .end local v9    # "downstreamActivity":I
    :cond_6
    move-object/from16 v0, p0

    #@153
    iget-object v3, v0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    #@155
    invoke-virtual {v6}, Lcom/android/server/content/SyncOperation;->createOneTimeSyncOperation()Lcom/android/server/content/SyncOperation;

    #@158
    move-result-object v4

    #@159
    invoke-static {v3, v4}, Lcom/android/server/content/SyncManager;->-wrap18(Lcom/android/server/content/SyncManager;Lcom/android/server/content/SyncOperation;)V

    #@15c
    goto :goto_3

    #@15d
    .line 2943
    :cond_7
    if-eqz v23, :cond_8

    #@15f
    .line 2944
    const-string/jumbo v3, "SyncManager"

    #@162
    new-instance v4, Ljava/lang/StringBuilder;

    #@164
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@167
    const-string/jumbo v5, "runSyncFinishedOrCanceled [canceled]: "

    #@16a
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@16d
    move-result-object v4

    #@16e
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@171
    move-result-object v4

    #@172
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@175
    move-result-object v4

    #@176
    invoke-static {v3, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    #@179
    .line 2946
    :cond_8
    move-object/from16 v0, p2

    #@17b
    iget-object v3, v0, Lcom/android/server/content/SyncManager$ActiveSyncContext;->mSyncAdapter:Landroid/content/ISyncAdapter;

    #@17d
    if-eqz v3, :cond_9

    #@17f
    .line 2948
    :try_start_0
    move-object/from16 v0, p2

    #@181
    iget-object v3, v0, Lcom/android/server/content/SyncManager$ActiveSyncContext;->mSyncAdapter:Landroid/content/ISyncAdapter;

    #@183
    move-object/from16 v0, p2

    #@185
    invoke-interface {v3, v0}, Landroid/content/ISyncAdapter;->cancelSync(Landroid/content/ISyncContext;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@188
    .line 2953
    :cond_9
    :goto_4
    const-string/jumbo v7, "canceled"

    #@18b
    .line 2954
    .restart local v7    # "historyMessage":Ljava/lang/String;
    const/4 v9, 0x0

    #@18c
    .line 2955
    .restart local v9    # "downstreamActivity":I
    const/4 v8, 0x0

    #@18d
    .restart local v8    # "upstreamActivity":I
    goto/16 :goto_1

    #@18f
    .line 2966
    :cond_a
    move-object/from16 v0, p0

    #@191
    iget-object v3, v0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    #@193
    invoke-static {v3}, Lcom/android/server/content/SyncManager;->-get6(Lcom/android/server/content/SyncManager;)Landroid/app/NotificationManager;

    #@196
    move-result-object v3

    #@197
    .line 2967
    move-object/from16 v0, v22

    #@199
    iget-object v4, v0, Lcom/android/server/content/SyncStorageEngine$EndPoint;->account:Landroid/accounts/Account;

    #@19b
    invoke-virtual {v4}, Landroid/accounts/Account;->hashCode()I

    #@19e
    move-result v4

    #@19f
    move-object/from16 v0, v22

    #@1a1
    iget-object v5, v0, Lcom/android/server/content/SyncStorageEngine$EndPoint;->provider:Ljava/lang/String;

    #@1a3
    invoke-virtual {v5}, Ljava/lang/String;->hashCode()I

    #@1a6
    move-result v5

    #@1a7
    xor-int/2addr v4, v5

    #@1a8
    .line 2968
    new-instance v5, Landroid/os/UserHandle;

    #@1aa
    move-object/from16 v0, v22

    #@1ac
    iget v12, v0, Lcom/android/server/content/SyncStorageEngine$EndPoint;->userId:I

    #@1ae
    invoke-direct {v5, v12}, Landroid/os/UserHandle;-><init>(I)V

    #@1b1
    .line 2966
    const/4 v12, 0x0

    #@1b2
    invoke-virtual {v3, v12, v4, v5}, Landroid/app/NotificationManager;->cancelAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)V

    #@1b5
    goto/16 :goto_2

    #@1b7
    .line 2949
    .end local v7    # "historyMessage":Ljava/lang/String;
    .end local v8    # "upstreamActivity":I
    .end local v9    # "downstreamActivity":I
    :catch_0
    move-exception v2

    #@1b8
    .local v2, "e":Landroid/os/RemoteException;
    goto :goto_4
.end method

.method private startSyncH(Lcom/android/server/content/SyncOperation;)V
    .locals 9
    .param p1, "op"    # Lcom/android/server/content/SyncOperation;

    #@0
    .prologue
    const/4 v8, 0x0

    #@1
    .line 2479
    const-string/jumbo v6, "SyncManager"

    #@4
    const/4 v7, 0x2

    #@5
    invoke-static {v6, v7}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    #@8
    move-result v2

    #@9
    .line 2480
    .local v2, "isLoggable":Z
    if-eqz v2, :cond_0

    #@b
    const-string/jumbo v6, "SyncManager"

    #@e
    invoke-virtual {p1}, Lcom/android/server/content/SyncOperation;->toString()Ljava/lang/String;

    #@11
    move-result-object v7

    #@12
    invoke-static {v6, v7}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    #@15
    .line 2482
    :cond_0
    iget-object v6, p0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    #@17
    invoke-static {v6}, Lcom/android/server/content/SyncManager;->-get10(Lcom/android/server/content/SyncManager;)Z

    #@1a
    move-result v6

    #@1b
    if-eqz v6, :cond_1

    #@1d
    .line 2483
    const-wide/32 v6, 0x36ee80

    #@20
    invoke-direct {p0, p1, v6, v7}, Lcom/android/server/content/SyncManager$SyncHandler;->deferSyncH(Lcom/android/server/content/SyncOperation;J)V

    #@23
    .line 2484
    return-void

    #@24
    .line 2487
    :cond_1
    iget-boolean v6, p1, Lcom/android/server/content/SyncOperation;->isPeriodic:Z

    #@26
    if-eqz v6, :cond_6

    #@28
    .line 2490
    iget-object v6, p0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    #@2a
    invoke-static {v6}, Lcom/android/server/content/SyncManager;->-wrap7(Lcom/android/server/content/SyncManager;)Ljava/util/List;

    #@2d
    move-result-object v3

    #@2e
    .line 2491
    .local v3, "ops":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/content/SyncOperation;>;"
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@31
    move-result-object v5

    #@32
    .local v5, "syncOperation$iterator":Ljava/util/Iterator;
    :cond_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    #@35
    move-result v6

    #@36
    if-eqz v6, :cond_3

    #@38
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@3b
    move-result-object v4

    #@3c
    check-cast v4, Lcom/android/server/content/SyncOperation;

    #@3e
    .line 2492
    .local v4, "syncOperation":Lcom/android/server/content/SyncOperation;
    iget v6, v4, Lcom/android/server/content/SyncOperation;->sourcePeriodicId:I

    #@40
    iget v7, p1, Lcom/android/server/content/SyncOperation;->jobId:I

    #@42
    if-ne v6, v7, :cond_2

    #@44
    .line 2493
    iget-object v6, p0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    #@46
    invoke-static {v6}, Lcom/android/server/content/SyncManager;->-get12(Lcom/android/server/content/SyncManager;)Lcom/android/server/content/SyncJobService;

    #@49
    move-result-object v6

    #@4a
    iget v7, p1, Lcom/android/server/content/SyncOperation;->jobId:I

    #@4c
    invoke-virtual {v6, v7, v8}, Lcom/android/server/content/SyncJobService;->callJobFinished(IZ)V

    #@4f
    .line 2494
    return-void

    #@50
    .line 2499
    .end local v4    # "syncOperation":Lcom/android/server/content/SyncOperation;
    :cond_3
    iget-object v6, p0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    #@52
    iget-object v6, v6, Lcom/android/server/content/SyncManager;->mActiveSyncContexts:Ljava/util/ArrayList;

    #@54
    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@57
    move-result-object v1

    #@58
    .local v1, "asc$iterator":Ljava/util/Iterator;
    :cond_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@5b
    move-result v6

    #@5c
    if-eqz v6, :cond_5

    #@5e
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@61
    move-result-object v0

    #@62
    check-cast v0, Lcom/android/server/content/SyncManager$ActiveSyncContext;

    #@64
    .line 2500
    .local v0, "asc":Lcom/android/server/content/SyncManager$ActiveSyncContext;
    iget-object v6, v0, Lcom/android/server/content/SyncManager$ActiveSyncContext;->mSyncOperation:Lcom/android/server/content/SyncOperation;

    #@66
    iget v6, v6, Lcom/android/server/content/SyncOperation;->sourcePeriodicId:I

    #@68
    iget v7, p1, Lcom/android/server/content/SyncOperation;->jobId:I

    #@6a
    if-ne v6, v7, :cond_4

    #@6c
    .line 2501
    iget-object v6, p0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    #@6e
    invoke-static {v6}, Lcom/android/server/content/SyncManager;->-get12(Lcom/android/server/content/SyncManager;)Lcom/android/server/content/SyncJobService;

    #@71
    move-result-object v6

    #@72
    iget v7, p1, Lcom/android/server/content/SyncOperation;->jobId:I

    #@74
    invoke-virtual {v6, v7, v8}, Lcom/android/server/content/SyncJobService;->callJobFinished(IZ)V

    #@77
    .line 2502
    return-void

    #@78
    .line 2506
    .end local v0    # "asc":Lcom/android/server/content/SyncManager$ActiveSyncContext;
    :cond_5
    iget-object v6, p0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    #@7a
    iget-object v7, p1, Lcom/android/server/content/SyncOperation;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    #@7c
    invoke-static {v6, v7}, Lcom/android/server/content/SyncManager;->-wrap3(Lcom/android/server/content/SyncManager;Lcom/android/server/content/SyncStorageEngine$EndPoint;)Z

    #@7f
    move-result v6

    #@80
    if-eqz v6, :cond_6

    #@82
    .line 2507
    const-wide/16 v6, 0x0

    #@84
    invoke-direct {p0, p1, v6, v7}, Lcom/android/server/content/SyncManager$SyncHandler;->deferSyncH(Lcom/android/server/content/SyncOperation;J)V

    #@87
    .line 2508
    return-void

    #@88
    .line 2513
    .end local v1    # "asc$iterator":Ljava/util/Iterator;
    .end local v3    # "ops":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/content/SyncOperation;>;"
    .end local v5    # "syncOperation$iterator":Ljava/util/Iterator;
    :cond_6
    iget-object v6, p0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    #@8a
    iget-object v6, v6, Lcom/android/server/content/SyncManager;->mActiveSyncContexts:Ljava/util/ArrayList;

    #@8c
    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@8f
    move-result-object v1

    #@90
    .restart local v1    # "asc$iterator":Ljava/util/Iterator;
    :cond_7
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@93
    move-result v6

    #@94
    if-eqz v6, :cond_b

    #@96
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@99
    move-result-object v0

    #@9a
    check-cast v0, Lcom/android/server/content/SyncManager$ActiveSyncContext;

    #@9c
    .line 2514
    .restart local v0    # "asc":Lcom/android/server/content/SyncManager$ActiveSyncContext;
    iget-object v6, v0, Lcom/android/server/content/SyncManager$ActiveSyncContext;->mSyncOperation:Lcom/android/server/content/SyncOperation;

    #@9e
    invoke-virtual {v6, p1}, Lcom/android/server/content/SyncOperation;->isConflict(Lcom/android/server/content/SyncOperation;)Z

    #@a1
    move-result v6

    #@a2
    if-eqz v6, :cond_7

    #@a4
    .line 2517
    iget-object v6, v0, Lcom/android/server/content/SyncManager$ActiveSyncContext;->mSyncOperation:Lcom/android/server/content/SyncOperation;

    #@a6
    invoke-virtual {v6}, Lcom/android/server/content/SyncOperation;->findPriority()I

    #@a9
    move-result v6

    #@aa
    invoke-virtual {p1}, Lcom/android/server/content/SyncOperation;->findPriority()I

    #@ad
    move-result v7

    #@ae
    if-lt v6, v7, :cond_9

    #@b0
    .line 2518
    if-eqz v2, :cond_8

    #@b2
    .line 2519
    const-string/jumbo v6, "SyncManager"

    #@b5
    new-instance v7, Ljava/lang/StringBuilder;

    #@b7
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    #@ba
    const-string/jumbo v8, "Rescheduling sync due to conflict "

    #@bd
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@c0
    move-result-object v7

    #@c1
    invoke-virtual {p1}, Lcom/android/server/content/SyncOperation;->toString()Ljava/lang/String;

    #@c4
    move-result-object v8

    #@c5
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@c8
    move-result-object v7

    #@c9
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@cc
    move-result-object v7

    #@cd
    invoke-static {v6, v7}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    #@d0
    .line 2521
    :cond_8
    const-wide/16 v6, 0x2710

    #@d2
    invoke-direct {p0, p1, v6, v7}, Lcom/android/server/content/SyncManager$SyncHandler;->deferSyncH(Lcom/android/server/content/SyncOperation;J)V

    #@d5
    .line 2522
    return-void

    #@d6
    .line 2524
    :cond_9
    if-eqz v2, :cond_a

    #@d8
    .line 2525
    const-string/jumbo v6, "SyncManager"

    #@db
    const-string/jumbo v7, "Pushing back running sync due to a higher priority sync"

    #@de
    invoke-static {v6, v7}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    #@e1
    .line 2527
    :cond_a
    invoke-direct {p0, v0}, Lcom/android/server/content/SyncManager$SyncHandler;->deferActiveSyncH(Lcom/android/server/content/SyncManager$ActiveSyncContext;)V

    #@e4
    .line 2533
    .end local v0    # "asc":Lcom/android/server/content/SyncManager$ActiveSyncContext;
    :cond_b
    invoke-direct {p0, p1}, Lcom/android/server/content/SyncManager$SyncHandler;->isOperationValid(Lcom/android/server/content/SyncOperation;)Z

    #@e7
    move-result v6

    #@e8
    if-eqz v6, :cond_d

    #@ea
    .line 2534
    invoke-direct {p0, p1}, Lcom/android/server/content/SyncManager$SyncHandler;->dispatchSyncOperation(Lcom/android/server/content/SyncOperation;)Z

    #@ed
    move-result v6

    #@ee
    if-nez v6, :cond_c

    #@f0
    .line 2535
    iget-object v6, p0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    #@f2
    invoke-static {v6}, Lcom/android/server/content/SyncManager;->-get12(Lcom/android/server/content/SyncManager;)Lcom/android/server/content/SyncJobService;

    #@f5
    move-result-object v6

    #@f6
    iget v7, p1, Lcom/android/server/content/SyncOperation;->jobId:I

    #@f8
    invoke-virtual {v6, v7, v8}, Lcom/android/server/content/SyncJobService;->callJobFinished(IZ)V

    #@fb
    .line 2540
    :cond_c
    :goto_0
    iget-object v6, p0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    #@fd
    iget-object v7, p1, Lcom/android/server/content/SyncOperation;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    #@ff
    invoke-static {v6, v7}, Lcom/android/server/content/SyncManager;->-wrap24(Lcom/android/server/content/SyncManager;Lcom/android/server/content/SyncStorageEngine$EndPoint;)V

    #@102
    .line 2478
    return-void

    #@103
    .line 2538
    :cond_d
    iget-object v6, p0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    #@105
    invoke-static {v6}, Lcom/android/server/content/SyncManager;->-get12(Lcom/android/server/content/SyncManager;)Lcom/android/server/content/SyncJobService;

    #@108
    move-result-object v6

    #@109
    iget v7, p1, Lcom/android/server/content/SyncOperation;->jobId:I

    #@10b
    invoke-virtual {v6, v7, v8}, Lcom/android/server/content/SyncJobService;->callJobFinished(IZ)V

    #@10e
    goto :goto_0
.end method

.method private syncResultToErrorNumber(Landroid/content/SyncResult;)I
    .locals 4
    .param p1, "syncResult"    # Landroid/content/SyncResult;

    #@0
    .prologue
    const-wide/16 v2, 0x0

    #@2
    .line 3003
    iget-boolean v0, p1, Landroid/content/SyncResult;->syncAlreadyInProgress:Z

    #@4
    if-eqz v0, :cond_0

    #@6
    .line 3004
    const/4 v0, 0x1

    #@7
    return v0

    #@8
    .line 3005
    :cond_0
    iget-object v0, p1, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    #@a
    iget-wide v0, v0, Landroid/content/SyncStats;->numAuthExceptions:J

    #@c
    cmp-long v0, v0, v2

    #@e
    if-lez v0, :cond_1

    #@10
    .line 3006
    const/4 v0, 0x2

    #@11
    return v0

    #@12
    .line 3007
    :cond_1
    iget-object v0, p1, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    #@14
    iget-wide v0, v0, Landroid/content/SyncStats;->numIoExceptions:J

    #@16
    cmp-long v0, v0, v2

    #@18
    if-lez v0, :cond_2

    #@1a
    .line 3008
    const/4 v0, 0x3

    #@1b
    return v0

    #@1c
    .line 3009
    :cond_2
    iget-object v0, p1, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    #@1e
    iget-wide v0, v0, Landroid/content/SyncStats;->numParseExceptions:J

    #@20
    cmp-long v0, v0, v2

    #@22
    if-lez v0, :cond_3

    #@24
    .line 3010
    const/4 v0, 0x4

    #@25
    return v0

    #@26
    .line 3011
    :cond_3
    iget-object v0, p1, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    #@28
    iget-wide v0, v0, Landroid/content/SyncStats;->numConflictDetectedExceptions:J

    #@2a
    cmp-long v0, v0, v2

    #@2c
    if-lez v0, :cond_4

    #@2e
    .line 3012
    const/4 v0, 0x5

    #@2f
    return v0

    #@30
    .line 3013
    :cond_4
    iget-boolean v0, p1, Landroid/content/SyncResult;->tooManyDeletions:Z

    #@32
    if-eqz v0, :cond_5

    #@34
    .line 3014
    const/4 v0, 0x6

    #@35
    return v0

    #@36
    .line 3015
    :cond_5
    iget-boolean v0, p1, Landroid/content/SyncResult;->tooManyRetries:Z

    #@38
    if-eqz v0, :cond_6

    #@3a
    .line 3016
    const/4 v0, 0x7

    #@3b
    return v0

    #@3c
    .line 3017
    :cond_6
    iget-boolean v0, p1, Landroid/content/SyncResult;->databaseError:Z

    #@3e
    if-eqz v0, :cond_7

    #@40
    .line 3018
    const/16 v0, 0x8

    #@42
    return v0

    #@43
    .line 3019
    :cond_7
    new-instance v0, Ljava/lang/IllegalStateException;

    #@45
    new-instance v1, Ljava/lang/StringBuilder;

    #@47
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@4a
    const-string/jumbo v2, "we are not in an error state, "

    #@4d
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@50
    move-result-object v1

    #@51
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@54
    move-result-object v1

    #@55
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@58
    move-result-object v1

    #@59
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@5c
    throw v0
.end method

.method private tryEnqueueMessageUntilReadyToRun(Landroid/os/Message;)Z
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    #@0
    .prologue
    .line 2232
    monitor-enter p0

    #@1
    .line 2233
    :try_start_0
    iget-object v1, p0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    #@3
    invoke-static {v1}, Lcom/android/server/content/SyncManager;->-get1(Lcom/android/server/content/SyncManager;)Z

    #@6
    move-result v1

    #@7
    if-eqz v1, :cond_0

    #@9
    iget-object v1, p0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    #@b
    invoke-static {v1}, Lcom/android/server/content/SyncManager;->-get8(Lcom/android/server/content/SyncManager;)Z

    #@e
    move-result v1

    #@f
    if-eqz v1, :cond_0

    #@11
    iget-object v1, p0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    #@13
    invoke-static {v1}, Lcom/android/server/content/SyncManager;->-get5(Lcom/android/server/content/SyncManager;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@16
    move-result v1

    #@17
    if-eqz v1, :cond_0

    #@19
    .line 2239
    const/4 v1, 0x0

    #@1a
    monitor-exit p0

    #@1b
    return v1

    #@1c
    .line 2235
    :cond_0
    :try_start_1
    invoke-static {p1}, Landroid/os/Message;->obtain(Landroid/os/Message;)Landroid/os/Message;

    #@1f
    move-result-object v0

    #@20
    .line 2236
    .local v0, "m":Landroid/os/Message;
    iget-object v1, p0, Lcom/android/server/content/SyncManager$SyncHandler;->mUnreadyQueue:Ljava/util/List;

    #@22
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@25
    .line 2237
    const/4 v1, 0x1

    #@26
    monitor-exit p0

    #@27
    return v1

    #@28
    .line 2232
    .end local v0    # "m":Landroid/os/Message;
    :catchall_0
    move-exception v1

    #@29
    monitor-exit p0

    #@2a
    throw v1
.end method

.method private updateOrAddPeriodicSyncH(Lcom/android/server/content/SyncStorageEngine$EndPoint;JJLandroid/os/Bundle;)V
    .locals 26
    .param p1, "target"    # Lcom/android/server/content/SyncStorageEngine$EndPoint;
    .param p2, "pollFrequency"    # J
    .param p4, "flex"    # J
    .param p6, "extras"    # Landroid/os/Bundle;

    #@0
    .prologue
    .line 2628
    const-string/jumbo v2, "SyncManager"

    #@3
    const/4 v8, 0x2

    #@4
    invoke-static {v2, v8}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    #@7
    move-result v22

    #@8
    .line 2629
    .local v22, "isLoggable":Z
    move-object/from16 v0, p0

    #@a
    iget-object v2, v0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    #@c
    invoke-static {v2}, Lcom/android/server/content/SyncManager;->-wrap27(Lcom/android/server/content/SyncManager;)V

    #@f
    .line 2630
    const-wide/16 v8, 0x3e8

    #@11
    mul-long v4, p2, v8

    #@13
    .line 2631
    .local v4, "pollFrequencyMillis":J
    const-wide/16 v8, 0x3e8

    #@15
    mul-long v6, p4, v8

    #@17
    .line 2632
    .local v6, "flexMillis":J
    if-eqz v22, :cond_0

    #@19
    .line 2633
    const-string/jumbo v2, "SyncManager"

    #@1c
    new-instance v8, Ljava/lang/StringBuilder;

    #@1e
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    #@21
    const-string/jumbo v9, "Addition to periodic syncs requested: "

    #@24
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@27
    move-result-object v8

    #@28
    move-object/from16 v0, p1

    #@2a
    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@2d
    move-result-object v8

    #@2e
    .line 2634
    const-string/jumbo v9, " period: "

    #@31
    .line 2633
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@34
    move-result-object v8

    #@35
    move-wide/from16 v0, p2

    #@37
    invoke-virtual {v8, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    #@3a
    move-result-object v8

    #@3b
    .line 2635
    const-string/jumbo v9, " flexMillis: "

    #@3e
    .line 2633
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@41
    move-result-object v8

    #@42
    move-wide/from16 v0, p4

    #@44
    invoke-virtual {v8, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    #@47
    move-result-object v8

    #@48
    .line 2636
    const-string/jumbo v9, " extras: "

    #@4b
    .line 2633
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4e
    move-result-object v8

    #@4f
    .line 2636
    invoke-virtual/range {p6 .. p6}, Landroid/os/Bundle;->toString()Ljava/lang/String;

    #@52
    move-result-object v9

    #@53
    .line 2633
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@56
    move-result-object v8

    #@57
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@5a
    move-result-object v8

    #@5b
    invoke-static {v2, v8}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    #@5e
    .line 2638
    :cond_0
    move-object/from16 v0, p0

    #@60
    iget-object v2, v0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    #@62
    invoke-static {v2}, Lcom/android/server/content/SyncManager;->-wrap7(Lcom/android/server/content/SyncManager;)Ljava/util/List;

    #@65
    move-result-object v24

    #@66
    .line 2639
    .local v24, "ops":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/content/SyncOperation;>;"
    invoke-interface/range {v24 .. v24}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@69
    move-result-object v23

    #@6a
    .local v23, "op$iterator":Ljava/util/Iterator;
    :cond_1
    invoke-interface/range {v23 .. v23}, Ljava/util/Iterator;->hasNext()Z

    #@6d
    move-result v2

    #@6e
    if-eqz v2, :cond_2

    #@70
    invoke-interface/range {v23 .. v23}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@73
    move-result-object v3

    #@74
    check-cast v3, Lcom/android/server/content/SyncOperation;

    #@76
    .line 2640
    .local v3, "op":Lcom/android/server/content/SyncOperation;
    iget-boolean v2, v3, Lcom/android/server/content/SyncOperation;->isPeriodic:Z

    #@78
    if-eqz v2, :cond_1

    #@7a
    iget-object v2, v3, Lcom/android/server/content/SyncOperation;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    #@7c
    move-object/from16 v0, p1

    #@7e
    invoke-virtual {v2, v0}, Lcom/android/server/content/SyncStorageEngine$EndPoint;->matchesSpec(Lcom/android/server/content/SyncStorageEngine$EndPoint;)Z

    #@81
    move-result v2

    #@82
    if-eqz v2, :cond_1

    #@84
    .line 2641
    iget-object v2, v3, Lcom/android/server/content/SyncOperation;->extras:Landroid/os/Bundle;

    #@86
    const/4 v8, 0x1

    #@87
    move-object/from16 v0, p6

    #@89
    invoke-static {v2, v0, v8}, Lcom/android/server/content/SyncManager;->syncExtrasEquals(Landroid/os/Bundle;Landroid/os/Bundle;Z)Z

    #@8c
    move-result v2

    #@8d
    .line 2640
    if-eqz v2, :cond_1

    #@8f
    move-object/from16 v2, p0

    #@91
    .line 2642
    invoke-direct/range {v2 .. v7}, Lcom/android/server/content/SyncManager$SyncHandler;->maybeUpdateSyncPeriodH(Lcom/android/server/content/SyncOperation;JJ)V

    #@94
    .line 2643
    return-void

    #@95
    .line 2647
    .end local v3    # "op":Lcom/android/server/content/SyncOperation;
    :cond_2
    if-eqz v22, :cond_3

    #@97
    .line 2648
    const-string/jumbo v2, "SyncManager"

    #@9a
    new-instance v8, Ljava/lang/StringBuilder;

    #@9c
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    #@9f
    const-string/jumbo v9, "Adding new periodic sync: "

    #@a2
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a5
    move-result-object v8

    #@a6
    move-object/from16 v0, p1

    #@a8
    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@ab
    move-result-object v8

    #@ac
    .line 2649
    const-string/jumbo v9, " period: "

    #@af
    .line 2648
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b2
    move-result-object v8

    #@b3
    move-wide/from16 v0, p2

    #@b5
    invoke-virtual {v8, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    #@b8
    move-result-object v8

    #@b9
    .line 2650
    const-string/jumbo v9, " flexMillis: "

    #@bc
    .line 2648
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@bf
    move-result-object v8

    #@c0
    move-wide/from16 v0, p4

    #@c2
    invoke-virtual {v8, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    #@c5
    move-result-object v8

    #@c6
    .line 2651
    const-string/jumbo v9, " extras: "

    #@c9
    .line 2648
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@cc
    move-result-object v8

    #@cd
    .line 2651
    invoke-virtual/range {p6 .. p6}, Landroid/os/Bundle;->toString()Ljava/lang/String;

    #@d0
    move-result-object v9

    #@d1
    .line 2648
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@d4
    move-result-object v8

    #@d5
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@d8
    move-result-object v8

    #@d9
    invoke-static {v2, v8}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    #@dc
    .line 2655
    :cond_3
    move-object/from16 v0, p0

    #@de
    iget-object v2, v0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    #@e0
    iget-object v2, v2, Lcom/android/server/content/SyncManager;->mSyncAdapters:Landroid/content/SyncAdaptersCache;

    #@e2
    .line 2657
    move-object/from16 v0, p1

    #@e4
    iget-object v8, v0, Lcom/android/server/content/SyncStorageEngine$EndPoint;->provider:Ljava/lang/String;

    #@e6
    move-object/from16 v0, p1

    #@e8
    iget-object v9, v0, Lcom/android/server/content/SyncStorageEngine$EndPoint;->account:Landroid/accounts/Account;

    #@ea
    iget-object v9, v9, Landroid/accounts/Account;->type:Ljava/lang/String;

    #@ec
    .line 2656
    invoke-static {v8, v9}, Landroid/content/SyncAdapterType;->newKey(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SyncAdapterType;

    #@ef
    move-result-object v8

    #@f0
    .line 2658
    move-object/from16 v0, p1

    #@f2
    iget v9, v0, Lcom/android/server/content/SyncStorageEngine$EndPoint;->userId:I

    #@f4
    .line 2655
    invoke-virtual {v2, v8, v9}, Landroid/content/SyncAdaptersCache;->getServiceInfo(Ljava/lang/Object;I)Landroid/content/pm/RegisteredServicesCache$ServiceInfo;

    #@f7
    move-result-object v25

    #@f8
    .line 2659
    .local v25, "syncAdapterInfo":Landroid/content/pm/RegisteredServicesCache$ServiceInfo;, "Landroid/content/pm/RegisteredServicesCache$ServiceInfo<Landroid/content/SyncAdapterType;>;"
    if-nez v25, :cond_4

    #@fa
    .line 2660
    return-void

    #@fb
    .line 2663
    :cond_4
    new-instance v3, Lcom/android/server/content/SyncOperation;

    #@fd
    move-object/from16 v0, v25

    #@ff
    iget v10, v0, Landroid/content/pm/RegisteredServicesCache$ServiceInfo;->uid:I

    #@101
    .line 2664
    move-object/from16 v0, v25

    #@103
    iget-object v2, v0, Landroid/content/pm/RegisteredServicesCache$ServiceInfo;->componentName:Landroid/content/ComponentName;

    #@105
    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    #@108
    move-result-object v11

    #@109
    .line 2666
    move-object/from16 v0, v25

    #@10b
    iget-object v2, v0, Landroid/content/pm/RegisteredServicesCache$ServiceInfo;->type:Ljava/lang/Object;

    #@10d
    check-cast v2, Landroid/content/SyncAdapterType;

    #@10f
    invoke-virtual {v2}, Landroid/content/SyncAdapterType;->allowParallelSyncs()Z

    #@112
    move-result v15

    #@113
    .line 2664
    const/4 v12, -0x4

    #@114
    .line 2665
    const/4 v13, 0x4

    #@115
    .line 2666
    const/16 v16, 0x1

    #@117
    const/16 v17, -0x1

    #@119
    move-object v8, v3

    #@11a
    move-object/from16 v9, p1

    #@11c
    move-object/from16 v14, p6

    #@11e
    move-wide/from16 v18, v4

    #@120
    move-wide/from16 v20, v6

    #@122
    .line 2663
    invoke-direct/range {v8 .. v21}, Lcom/android/server/content/SyncOperation;-><init>(Lcom/android/server/content/SyncStorageEngine$EndPoint;ILjava/lang/String;IILandroid/os/Bundle;ZZIJJ)V

    #@125
    .line 2668
    .restart local v3    # "op":Lcom/android/server/content/SyncOperation;
    move-object/from16 v0, p0

    #@127
    iget-object v2, v0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    #@129
    invoke-static {v2, v3}, Lcom/android/server/content/SyncManager;->-wrap21(Lcom/android/server/content/SyncManager;Lcom/android/server/content/SyncOperation;)V

    #@12c
    .line 2669
    move-object/from16 v0, p0

    #@12e
    iget-object v2, v0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    #@130
    invoke-static {v2}, Lcom/android/server/content/SyncManager;->-get14(Lcom/android/server/content/SyncManager;)Lcom/android/server/content/SyncStorageEngine;

    #@133
    move-result-object v2

    #@134
    const/4 v8, 0x1

    #@135
    invoke-virtual {v2, v8}, Lcom/android/server/content/SyncStorageEngine;->reportChange(I)V

    #@138
    .line 2627
    return-void
.end method

.method private updateRunningAccountsH(Lcom/android/server/content/SyncStorageEngine$EndPoint;)V
    .locals 23
    .param p1, "syncTargets"    # Lcom/android/server/content/SyncStorageEngine$EndPoint;

    #@0
    .prologue
    .line 2554
    move-object/from16 v0, p0

    #@2
    iget-object v2, v0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    #@4
    invoke-static {v2}, Lcom/android/server/content/SyncManager;->-get9(Lcom/android/server/content/SyncManager;)[Landroid/accounts/AccountAndUser;

    #@7
    move-result-object v19

    #@8
    .line 2555
    .local v19, "oldAccounts":[Landroid/accounts/AccountAndUser;
    move-object/from16 v0, p0

    #@a
    iget-object v2, v0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    #@c
    invoke-static {}, Lcom/android/server/accounts/AccountManagerService;->getSingleton()Lcom/android/server/accounts/AccountManagerService;

    #@f
    move-result-object v3

    #@10
    invoke-virtual {v3}, Lcom/android/server/accounts/AccountManagerService;->getRunningAccounts()[Landroid/accounts/AccountAndUser;

    #@13
    move-result-object v3

    #@14
    invoke-static {v2, v3}, Lcom/android/server/content/SyncManager;->-set4(Lcom/android/server/content/SyncManager;[Landroid/accounts/AccountAndUser;)[Landroid/accounts/AccountAndUser;

    #@17
    .line 2556
    const-string/jumbo v2, "SyncManager"

    #@1a
    const/4 v3, 0x2

    #@1b
    invoke-static {v2, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    #@1e
    move-result v2

    #@1f
    if-eqz v2, :cond_0

    #@21
    .line 2557
    const-string/jumbo v2, "SyncManager"

    #@24
    const-string/jumbo v3, "Accounts list: "

    #@27
    invoke-static {v2, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    #@2a
    .line 2558
    move-object/from16 v0, p0

    #@2c
    iget-object v2, v0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    #@2e
    invoke-static {v2}, Lcom/android/server/content/SyncManager;->-get9(Lcom/android/server/content/SyncManager;)[Landroid/accounts/AccountAndUser;

    #@31
    move-result-object v3

    #@32
    const/4 v2, 0x0

    #@33
    array-length v4, v3

    #@34
    :goto_0
    if-ge v2, v4, :cond_0

    #@36
    aget-object v14, v3, v2

    #@38
    .line 2559
    .local v14, "acc":Landroid/accounts/AccountAndUser;
    const-string/jumbo v5, "SyncManager"

    #@3b
    invoke-virtual {v14}, Landroid/accounts/AccountAndUser;->toString()Ljava/lang/String;

    #@3e
    move-result-object v6

    #@3f
    invoke-static {v5, v6}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    #@42
    .line 2558
    add-int/lit8 v2, v2, 0x1

    #@44
    goto :goto_0

    #@45
    .line 2562
    .end local v14    # "acc":Landroid/accounts/AccountAndUser;
    :cond_0
    move-object/from16 v0, p0

    #@47
    iget-object v2, v0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    #@49
    invoke-static {v2}, Lcom/android/server/content/SyncManager;->-get1(Lcom/android/server/content/SyncManager;)Z

    #@4c
    move-result v2

    #@4d
    if-eqz v2, :cond_1

    #@4f
    .line 2563
    move-object/from16 v0, p0

    #@51
    iget-object v2, v0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    #@53
    invoke-static {v2}, Lcom/android/server/content/SyncManager;->-wrap11(Lcom/android/server/content/SyncManager;)V

    #@56
    .line 2566
    :cond_1
    move-object/from16 v0, p0

    #@58
    iget-object v2, v0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    #@5a
    invoke-static {v2}, Lcom/android/server/content/SyncManager;->-get9(Lcom/android/server/content/SyncManager;)[Landroid/accounts/AccountAndUser;

    #@5d
    move-result-object v15

    #@5e
    .line 2567
    .local v15, "accounts":[Landroid/accounts/AccountAndUser;
    move-object/from16 v0, p0

    #@60
    iget-object v2, v0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    #@62
    iget-object v2, v2, Lcom/android/server/content/SyncManager;->mActiveSyncContexts:Ljava/util/ArrayList;

    #@64
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@67
    move-result-object v18

    #@68
    .local v18, "currentSyncContext$iterator":Ljava/util/Iterator;
    :cond_2
    :goto_1
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->hasNext()Z

    #@6b
    move-result v2

    #@6c
    if-eqz v2, :cond_3

    #@6e
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@71
    move-result-object v17

    #@72
    check-cast v17, Lcom/android/server/content/SyncManager$ActiveSyncContext;

    #@74
    .line 2568
    .local v17, "currentSyncContext":Lcom/android/server/content/SyncManager$ActiveSyncContext;
    move-object/from16 v0, p0

    #@76
    iget-object v2, v0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    #@78
    .line 2569
    move-object/from16 v0, v17

    #@7a
    iget-object v3, v0, Lcom/android/server/content/SyncManager$ActiveSyncContext;->mSyncOperation:Lcom/android/server/content/SyncOperation;

    #@7c
    iget-object v3, v3, Lcom/android/server/content/SyncOperation;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    #@7e
    iget-object v3, v3, Lcom/android/server/content/SyncStorageEngine$EndPoint;->account:Landroid/accounts/Account;

    #@80
    .line 2570
    move-object/from16 v0, v17

    #@82
    iget-object v4, v0, Lcom/android/server/content/SyncManager$ActiveSyncContext;->mSyncOperation:Lcom/android/server/content/SyncOperation;

    #@84
    iget-object v4, v4, Lcom/android/server/content/SyncOperation;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    #@86
    iget v4, v4, Lcom/android/server/content/SyncStorageEngine$EndPoint;->userId:I

    #@88
    .line 2568
    invoke-static {v2, v15, v3, v4}, Lcom/android/server/content/SyncManager;->-wrap2(Lcom/android/server/content/SyncManager;[Landroid/accounts/AccountAndUser;Landroid/accounts/Account;I)Z

    #@8b
    move-result v2

    #@8c
    if-nez v2, :cond_2

    #@8e
    .line 2571
    const-string/jumbo v2, "SyncManager"

    #@91
    const-string/jumbo v3, "canceling sync since the account is no longer running"

    #@94
    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@97
    .line 2572
    move-object/from16 v0, p0

    #@99
    iget-object v2, v0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    #@9b
    .line 2573
    const/4 v3, 0x0

    #@9c
    .line 2572
    move-object/from16 v0, v17

    #@9e
    invoke-static {v2, v0, v3}, Lcom/android/server/content/SyncManager;->-wrap23(Lcom/android/server/content/SyncManager;Lcom/android/server/content/SyncManager$ActiveSyncContext;Landroid/content/SyncResult;)V

    #@a1
    goto :goto_1

    #@a2
    .line 2578
    .end local v17    # "currentSyncContext":Lcom/android/server/content/SyncManager$ActiveSyncContext;
    :cond_3
    move-object/from16 v0, p0

    #@a4
    iget-object v2, v0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    #@a6
    invoke-static {v2}, Lcom/android/server/content/SyncManager;->-get9(Lcom/android/server/content/SyncManager;)[Landroid/accounts/AccountAndUser;

    #@a9
    move-result-object v3

    #@aa
    const/4 v2, 0x0

    #@ab
    array-length v4, v3

    #@ac
    :goto_2
    if-ge v2, v4, :cond_5

    #@ae
    aget-object v13, v3, v2

    #@b0
    .line 2579
    .local v13, "aau":Landroid/accounts/AccountAndUser;
    move-object/from16 v0, p0

    #@b2
    iget-object v5, v0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    #@b4
    iget-object v6, v13, Landroid/accounts/AccountAndUser;->account:Landroid/accounts/Account;

    #@b6
    iget v7, v13, Landroid/accounts/AccountAndUser;->userId:I

    #@b8
    move-object/from16 v0, v19

    #@ba
    invoke-static {v5, v0, v6, v7}, Lcom/android/server/content/SyncManager;->-wrap2(Lcom/android/server/content/SyncManager;[Landroid/accounts/AccountAndUser;Landroid/accounts/Account;I)Z

    #@bd
    move-result v5

    #@be
    if-nez v5, :cond_7

    #@c0
    .line 2580
    const-string/jumbo v2, "SyncManager"

    #@c3
    const/4 v3, 0x3

    #@c4
    invoke-static {v2, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    #@c7
    move-result v2

    #@c8
    if-eqz v2, :cond_4

    #@ca
    .line 2581
    const-string/jumbo v2, "SyncManager"

    #@cd
    new-instance v3, Ljava/lang/StringBuilder;

    #@cf
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@d2
    const-string/jumbo v4, "Account "

    #@d5
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@d8
    move-result-object v3

    #@d9
    iget-object v4, v13, Landroid/accounts/AccountAndUser;->account:Landroid/accounts/Account;

    #@db
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@de
    move-result-object v3

    #@df
    const-string/jumbo v4, " added, checking sync restore data"

    #@e2
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@e5
    move-result-object v3

    #@e6
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@e9
    move-result-object v3

    #@ea
    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@ed
    .line 2583
    :cond_4
    move-object/from16 v0, p0

    #@ef
    iget-object v2, v0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    #@f1
    invoke-static {v2}, Lcom/android/server/content/SyncManager;->-get2(Lcom/android/server/content/SyncManager;)Landroid/content/Context;

    #@f4
    move-result-object v2

    #@f5
    invoke-static {v2}, Lcom/android/server/backup/AccountSyncSettingsBackupHelper;->accountAdded(Landroid/content/Context;)V

    #@f8
    .line 2589
    .end local v13    # "aau":Landroid/accounts/AccountAndUser;
    :cond_5
    invoke-static {}, Lcom/android/server/accounts/AccountManagerService;->getSingleton()Lcom/android/server/accounts/AccountManagerService;

    #@fb
    move-result-object v2

    #@fc
    invoke-virtual {v2}, Lcom/android/server/accounts/AccountManagerService;->getAllAccounts()[Landroid/accounts/AccountAndUser;

    #@ff
    move-result-object v16

    #@100
    .line 2590
    .local v16, "allAccounts":[Landroid/accounts/AccountAndUser;
    move-object/from16 v0, p0

    #@102
    iget-object v2, v0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    #@104
    invoke-static {v2}, Lcom/android/server/content/SyncManager;->-wrap7(Lcom/android/server/content/SyncManager;)Ljava/util/List;

    #@107
    move-result-object v22

    #@108
    .line 2591
    .local v22, "ops":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/content/SyncOperation;>;"
    invoke-interface/range {v22 .. v22}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@10b
    move-result-object v21

    #@10c
    .local v21, "op$iterator":Ljava/util/Iterator;
    :cond_6
    :goto_3
    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->hasNext()Z

    #@10f
    move-result v2

    #@110
    if-eqz v2, :cond_8

    #@112
    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@115
    move-result-object v20

    #@116
    check-cast v20, Lcom/android/server/content/SyncOperation;

    #@118
    .line 2592
    .local v20, "op":Lcom/android/server/content/SyncOperation;
    move-object/from16 v0, p0

    #@11a
    iget-object v2, v0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    #@11c
    move-object/from16 v0, v20

    #@11e
    iget-object v3, v0, Lcom/android/server/content/SyncOperation;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    #@120
    iget-object v3, v3, Lcom/android/server/content/SyncStorageEngine$EndPoint;->account:Landroid/accounts/Account;

    #@122
    move-object/from16 v0, v20

    #@124
    iget-object v4, v0, Lcom/android/server/content/SyncOperation;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    #@126
    iget v4, v4, Lcom/android/server/content/SyncStorageEngine$EndPoint;->userId:I

    #@128
    move-object/from16 v0, v16

    #@12a
    invoke-static {v2, v0, v3, v4}, Lcom/android/server/content/SyncManager;->-wrap2(Lcom/android/server/content/SyncManager;[Landroid/accounts/AccountAndUser;Landroid/accounts/Account;I)Z

    #@12d
    move-result v2

    #@12e
    if-nez v2, :cond_6

    #@130
    .line 2593
    move-object/from16 v0, p0

    #@132
    iget-object v2, v0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    #@134
    invoke-static {v2}, Lcom/android/server/content/SyncManager;->-wrap0(Lcom/android/server/content/SyncManager;)Landroid/app/job/JobScheduler;

    #@137
    move-result-object v2

    #@138
    move-object/from16 v0, v20

    #@13a
    iget v3, v0, Lcom/android/server/content/SyncOperation;->jobId:I

    #@13c
    invoke-virtual {v2, v3}, Landroid/app/job/JobScheduler;->cancel(I)V

    #@13f
    goto :goto_3

    #@140
    .line 2578
    .end local v16    # "allAccounts":[Landroid/accounts/AccountAndUser;
    .end local v20    # "op":Lcom/android/server/content/SyncOperation;
    .end local v21    # "op$iterator":Ljava/util/Iterator;
    .end local v22    # "ops":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/content/SyncOperation;>;"
    .restart local v13    # "aau":Landroid/accounts/AccountAndUser;
    :cond_7
    add-int/lit8 v2, v2, 0x1

    #@142
    goto/16 :goto_2

    #@144
    .line 2597
    .end local v13    # "aau":Landroid/accounts/AccountAndUser;
    .restart local v16    # "allAccounts":[Landroid/accounts/AccountAndUser;
    .restart local v21    # "op$iterator":Ljava/util/Iterator;
    .restart local v22    # "ops":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/content/SyncOperation;>;"
    :cond_8
    if-eqz p1, :cond_9

    #@146
    .line 2598
    move-object/from16 v0, p0

    #@148
    iget-object v2, v0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    #@14a
    move-object/from16 v0, p1

    #@14c
    iget-object v3, v0, Lcom/android/server/content/SyncStorageEngine$EndPoint;->account:Landroid/accounts/Account;

    #@14e
    move-object/from16 v0, p1

    #@150
    iget v4, v0, Lcom/android/server/content/SyncStorageEngine$EndPoint;->userId:I

    #@152
    .line 2599
    move-object/from16 v0, p1

    #@154
    iget-object v6, v0, Lcom/android/server/content/SyncStorageEngine$EndPoint;->provider:Ljava/lang/String;

    #@156
    const-wide/16 v8, 0x0

    #@158
    const-wide/16 v10, 0x0

    #@15a
    const/4 v5, -0x2

    #@15b
    const/4 v7, 0x0

    #@15c
    .line 2600
    const/4 v12, 0x1

    #@15d
    .line 2598
    invoke-virtual/range {v2 .. v12}, Lcom/android/server/content/SyncManager;->scheduleSync(Landroid/accounts/Account;IILjava/lang/String;Landroid/os/Bundle;JJZ)V

    #@160
    .line 2553
    :cond_9
    return-void
.end method


# virtual methods
.method checkIfDeviceReady()V
    .locals 1

    #@0
    .prologue
    .line 2213
    iget-object v0, p0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    #@2
    invoke-static {v0}, Lcom/android/server/content/SyncManager;->-get8(Lcom/android/server/content/SyncManager;)Z

    #@5
    move-result v0

    #@6
    if-eqz v0, :cond_0

    #@8
    iget-object v0, p0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    #@a
    invoke-static {v0}, Lcom/android/server/content/SyncManager;->-get1(Lcom/android/server/content/SyncManager;)Z

    #@d
    move-result v0

    #@e
    if-eqz v0, :cond_0

    #@10
    iget-object v0, p0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    #@12
    invoke-static {v0}, Lcom/android/server/content/SyncManager;->-get5(Lcom/android/server/content/SyncManager;)Z

    #@15
    move-result v0

    #@16
    if-eqz v0, :cond_0

    #@18
    .line 2214
    monitor-enter p0

    #@19
    .line 2215
    :try_start_0
    iget-object v0, p0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    #@1b
    invoke-static {v0}, Lcom/android/server/content/SyncManager;->-get14(Lcom/android/server/content/SyncManager;)Lcom/android/server/content/SyncStorageEngine;

    #@1e
    move-result-object v0

    #@1f
    invoke-virtual {v0}, Lcom/android/server/content/SyncStorageEngine;->restoreAllPeriodicSyncs()Z

    #@22
    .line 2217
    const/4 v0, 0x2

    #@23
    invoke-virtual {p0, v0}, Lcom/android/server/content/SyncManager$SyncHandler;->obtainMessage(I)Landroid/os/Message;

    #@26
    move-result-object v0

    #@27
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@2a
    monitor-exit p0

    #@2b
    .line 2212
    :cond_0
    return-void

    #@2c
    .line 2214
    :catchall_0
    move-exception v0

    #@2d
    monitor-exit p0

    #@2e
    throw v0
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 6
    .param p1, "msg"    # Landroid/os/Message;

    #@0
    .prologue
    const/4 v5, 0x2

    #@1
    .line 2250
    :try_start_0
    iget-object v3, p0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    #@3
    invoke-static {v3}, Lcom/android/server/content/SyncManager;->-get13(Lcom/android/server/content/SyncManager;)Landroid/os/PowerManager$WakeLock;

    #@6
    move-result-object v3

    #@7
    invoke-virtual {v3}, Landroid/os/PowerManager$WakeLock;->acquire()V

    #@a
    .line 2253
    iget v3, p1, Landroid/os/Message;->what:I

    #@c
    const/4 v4, 0x7

    #@d
    if-ne v3, v4, :cond_1

    #@f
    .line 2254
    const-string/jumbo v3, "SyncManager"

    #@12
    const-string/jumbo v4, "Got SyncJobService instance."

    #@15
    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@18
    .line 2255
    iget-object v4, p0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    #@1a
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@1c
    check-cast v3, Lcom/android/server/content/SyncJobService;

    #@1e
    invoke-static {v4, v3}, Lcom/android/server/content/SyncManager;->-set6(Lcom/android/server/content/SyncManager;Lcom/android/server/content/SyncJobService;)Lcom/android/server/content/SyncJobService;

    #@21
    .line 2256
    iget-object v3, p0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    #@23
    const/4 v4, 0x1

    #@24
    invoke-static {v3, v4}, Lcom/android/server/content/SyncManager;->-set2(Lcom/android/server/content/SyncManager;Z)Z

    #@27
    .line 2257
    invoke-virtual {p0}, Lcom/android/server/content/SyncManager$SyncHandler;->checkIfDeviceReady()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@2a
    .line 2277
    :cond_0
    :goto_0
    iget-object v3, p0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    #@2c
    invoke-static {v3}, Lcom/android/server/content/SyncManager;->-get13(Lcom/android/server/content/SyncManager;)Landroid/os/PowerManager$WakeLock;

    #@2f
    move-result-object v3

    #@30
    invoke-virtual {v3}, Landroid/os/PowerManager$WakeLock;->release()V

    #@33
    .line 2248
    return-void

    #@34
    .line 2258
    :cond_1
    :try_start_1
    iget v3, p1, Landroid/os/Message;->what:I

    #@36
    const/16 v4, 0x9

    #@38
    if-ne v3, v4, :cond_3

    #@3a
    .line 2259
    const-string/jumbo v3, "SyncManager"

    #@3d
    const/4 v4, 0x2

    #@3e
    invoke-static {v3, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    #@41
    move-result v3

    #@42
    if-eqz v3, :cond_2

    #@44
    .line 2260
    const-string/jumbo v3, "SyncManager"

    #@47
    const-string/jumbo v4, "handleSyncHandlerMessage: MESSAGE_ACCOUNTS_UPDATED"

    #@4a
    invoke-static {v3, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    #@4d
    .line 2262
    :cond_2
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@4f
    check-cast v2, Lcom/android/server/content/SyncStorageEngine$EndPoint;

    #@51
    .line 2263
    .local v2, "targets":Lcom/android/server/content/SyncStorageEngine$EndPoint;
    invoke-direct {p0, v2}, Lcom/android/server/content/SyncManager$SyncHandler;->updateRunningAccountsH(Lcom/android/server/content/SyncStorageEngine$EndPoint;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@54
    goto :goto_0

    #@55
    .line 2276
    .end local v2    # "targets":Lcom/android/server/content/SyncStorageEngine$EndPoint;
    :catchall_0
    move-exception v3

    #@56
    .line 2277
    iget-object v4, p0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    #@58
    invoke-static {v4}, Lcom/android/server/content/SyncManager;->-get13(Lcom/android/server/content/SyncManager;)Landroid/os/PowerManager$WakeLock;

    #@5b
    move-result-object v4

    #@5c
    invoke-virtual {v4}, Landroid/os/PowerManager$WakeLock;->release()V

    #@5f
    .line 2276
    throw v3

    #@60
    .line 2264
    :cond_3
    :try_start_2
    iget v3, p1, Landroid/os/Message;->what:I

    #@62
    if-ne v3, v5, :cond_5

    #@64
    .line 2265
    iget-object v3, p0, Lcom/android/server/content/SyncManager$SyncHandler;->mUnreadyQueue:Ljava/util/List;

    #@66
    if-eqz v3, :cond_0

    #@68
    .line 2266
    iget-object v3, p0, Lcom/android/server/content/SyncManager$SyncHandler;->mUnreadyQueue:Ljava/util/List;

    #@6a
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@6d
    move-result-object v1

    #@6e
    .local v1, "m$iterator":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@71
    move-result v3

    #@72
    if-eqz v3, :cond_4

    #@74
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@77
    move-result-object v0

    #@78
    check-cast v0, Landroid/os/Message;

    #@7a
    .line 2267
    .local v0, "m":Landroid/os/Message;
    invoke-direct {p0, v0}, Lcom/android/server/content/SyncManager$SyncHandler;->handleSyncMessage(Landroid/os/Message;)V

    #@7d
    goto :goto_1

    #@7e
    .line 2269
    .end local v0    # "m":Landroid/os/Message;
    :cond_4
    const/4 v3, 0x0

    #@7f
    iput-object v3, p0, Lcom/android/server/content/SyncManager$SyncHandler;->mUnreadyQueue:Ljava/util/List;

    #@81
    goto :goto_0

    #@82
    .line 2271
    .end local v1    # "m$iterator":Ljava/util/Iterator;
    :cond_5
    invoke-direct {p0, p1}, Lcom/android/server/content/SyncManager$SyncHandler;->tryEnqueueMessageUntilReadyToRun(Landroid/os/Message;)Z

    #@85
    move-result v3

    #@86
    if-nez v3, :cond_0

    #@88
    .line 2274
    invoke-direct {p0, p1}, Lcom/android/server/content/SyncManager$SyncHandler;->handleSyncMessage(Landroid/os/Message;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@8b
    goto :goto_0
.end method

.method public insertStartSyncEvent(Lcom/android/server/content/SyncOperation;)J
    .locals 4
    .param p1, "syncOperation"    # Lcom/android/server/content/SyncOperation;

    #@0
    .prologue
    .line 3092
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    #@3
    move-result-wide v0

    #@4
    .line 3094
    .local v0, "now":J
    const/4 v2, 0x0

    #@5
    invoke-virtual {p1, v2}, Lcom/android/server/content/SyncOperation;->toEventLog(I)[Ljava/lang/Object;

    #@8
    move-result-object v2

    #@9
    .line 3093
    const/16 v3, 0xaa0

    #@b
    invoke-static {v3, v2}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    #@e
    .line 3095
    iget-object v2, p0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    #@10
    invoke-static {v2}, Lcom/android/server/content/SyncManager;->-get14(Lcom/android/server/content/SyncManager;)Lcom/android/server/content/SyncStorageEngine;

    #@13
    move-result-object v2

    #@14
    invoke-virtual {v2, p1, v0, v1}, Lcom/android/server/content/SyncStorageEngine;->insertStartSyncEvent(Lcom/android/server/content/SyncOperation;J)J

    #@17
    move-result-wide v2

    #@18
    return-wide v2
.end method

.method onBootCompleted()V
    .locals 2

    #@0
    .prologue
    .line 2199
    const-string/jumbo v0, "SyncManager"

    #@3
    const/4 v1, 0x2

    #@4
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    #@7
    move-result v0

    #@8
    if-eqz v0, :cond_0

    #@a
    .line 2200
    const-string/jumbo v0, "SyncManager"

    #@d
    const-string/jumbo v1, "Boot completed."

    #@10
    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    #@13
    .line 2202
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/content/SyncManager$SyncHandler;->checkIfDeviceReady()V

    #@16
    .line 2198
    return-void
.end method

.method onDeviceProvisioned()V
    .locals 3

    #@0
    .prologue
    .line 2206
    const-string/jumbo v0, "SyncManager"

    #@3
    const/4 v1, 0x3

    #@4
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    #@7
    move-result v0

    #@8
    if-eqz v0, :cond_0

    #@a
    .line 2207
    const-string/jumbo v0, "SyncManager"

    #@d
    new-instance v1, Ljava/lang/StringBuilder;

    #@f
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@12
    const-string/jumbo v2, "mProvisioned="

    #@15
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@18
    move-result-object v1

    #@19
    iget-object v2, p0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    #@1b
    invoke-static {v2}, Lcom/android/server/content/SyncManager;->-get8(Lcom/android/server/content/SyncManager;)Z

    #@1e
    move-result v2

    #@1f
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@22
    move-result-object v1

    #@23
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@26
    move-result-object v1

    #@27
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@2a
    .line 2209
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/content/SyncManager$SyncHandler;->checkIfDeviceReady()V

    #@2d
    .line 2205
    return-void
.end method

.method public stopSyncEvent(JLcom/android/server/content/SyncOperation;Ljava/lang/String;IIJ)V
    .locals 11
    .param p1, "rowId"    # J
    .param p3, "syncOperation"    # Lcom/android/server/content/SyncOperation;
    .param p4, "resultMessage"    # Ljava/lang/String;
    .param p5, "upstreamActivity"    # I
    .param p6, "downstreamActivity"    # I
    .param p7, "elapsedTime"    # J

    #@0
    .prologue
    .line 3101
    const/4 v1, 0x1

    #@1
    invoke-virtual {p3, v1}, Lcom/android/server/content/SyncOperation;->toEventLog(I)[Ljava/lang/Object;

    #@4
    move-result-object v1

    #@5
    .line 3100
    const/16 v2, 0xaa0

    #@7
    invoke-static {v2, v1}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    #@a
    .line 3102
    iget-object v1, p0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    #@c
    invoke-static {v1}, Lcom/android/server/content/SyncManager;->-get14(Lcom/android/server/content/SyncManager;)Lcom/android/server/content/SyncStorageEngine;

    #@f
    move-result-object v1

    #@10
    .line 3103
    move/from16 v0, p6

    #@12
    int-to-long v7, v0

    #@13
    move/from16 v0, p5

    #@15
    int-to-long v9, v0

    #@16
    move-wide v2, p1

    #@17
    move-wide/from16 v4, p7

    #@19
    move-object v6, p4

    #@1a
    .line 3102
    invoke-virtual/range {v1 .. v10}, Lcom/android/server/content/SyncStorageEngine;->stopSyncEvent(JJLjava/lang/String;JJ)V

    #@1d
    .line 3099
    return-void
.end method
