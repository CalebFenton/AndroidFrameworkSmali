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

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/content/SyncManager$SyncHandler$SyncNotificationInfo;
    }
.end annotation


# static fields
.field private static final MESSAGE_CANCEL:I = 0x6

.field private static final MESSAGE_CHECK_ALARMS:I = 0x3

.field private static final MESSAGE_MONITOR_SYNC:I = 0x8

.field private static final MESSAGE_SERVICE_CONNECTED:I = 0x4

.field private static final MESSAGE_SERVICE_DISCONNECTED:I = 0x5

.field private static final MESSAGE_SYNC_ALARM:I = 0x2

.field private static final MESSAGE_SYNC_EXPIRED:I = 0x7

.field private static final MESSAGE_SYNC_FINISHED:I = 0x1


# instance fields
.field private mAlarmScheduleTime:Ljava/lang/Long;

.field public final mSyncNotificationInfo:Lcom/android/server/content/SyncManager$SyncHandler$SyncNotificationInfo;

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
.method static synthetic -get0(Lcom/android/server/content/SyncManager$SyncHandler;)Ljava/lang/Long;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/content/SyncManager$SyncHandler;->mAlarmScheduleTime:Ljava/lang/Long;

    #@2
    return-object v0
.end method

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
    const/4 v2, 0x0

    #@1
    .line 2194
    iput-object p1, p0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    #@3
    .line 2195
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    #@6
    .line 2100
    new-instance v0, Lcom/android/server/content/SyncManager$SyncHandler$SyncNotificationInfo;

    #@8
    invoke-direct {v0, p0}, Lcom/android/server/content/SyncManager$SyncHandler$SyncNotificationInfo;-><init>(Lcom/android/server/content/SyncManager$SyncHandler;)V

    #@b
    iput-object v0, p0, Lcom/android/server/content/SyncManager$SyncHandler;->mSyncNotificationInfo:Lcom/android/server/content/SyncManager$SyncHandler$SyncNotificationInfo;

    #@d
    .line 2101
    iput-object v2, p0, Lcom/android/server/content/SyncManager$SyncHandler;->mAlarmScheduleTime:Ljava/lang/Long;

    #@f
    .line 2102
    new-instance v0, Lcom/android/server/content/SyncManager$SyncTimeTracker;

    #@11
    iget-object v1, p0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    #@13
    invoke-direct {v0, v1, v2}, Lcom/android/server/content/SyncManager$SyncTimeTracker;-><init>(Lcom/android/server/content/SyncManager;Lcom/android/server/content/SyncManager$SyncTimeTracker;)V

    #@16
    iput-object v0, p0, Lcom/android/server/content/SyncManager$SyncHandler;->mSyncTimeTracker:Lcom/android/server/content/SyncManager$SyncTimeTracker;

    #@18
    .line 2103
    invoke-static {}, Lcom/google/android/collect/Maps;->newHashMap()Ljava/util/HashMap;

    #@1b
    move-result-object v0

    #@1c
    iput-object v0, p0, Lcom/android/server/content/SyncManager$SyncHandler;->mWakeLocks:Ljava/util/HashMap;

    #@1e
    .line 2105
    new-instance v0, Ljava/util/ArrayList;

    #@20
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@23
    iput-object v0, p0, Lcom/android/server/content/SyncManager$SyncHandler;->mUnreadyQueue:Ljava/util/List;

    #@25
    .line 2194
    return-void
.end method

.method private cancelActiveSyncH(Lcom/android/server/content/SyncStorageEngine$EndPoint;Landroid/os/Bundle;)V
    .locals 7
    .param p1, "info"    # Lcom/android/server/content/SyncStorageEngine$EndPoint;
    .param p2, "extras"    # Landroid/os/Bundle;

    #@0
    .prologue
    const/4 v6, 0x0

    #@1
    .line 3000
    new-instance v2, Ljava/util/ArrayList;

    #@3
    iget-object v4, p0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    #@5
    iget-object v4, v4, Lcom/android/server/content/SyncManager;->mActiveSyncContexts:Ljava/util/ArrayList;

    #@7
    invoke-direct {v2, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    #@a
    .line 3001
    .local v2, "activeSyncs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/content/SyncManager$ActiveSyncContext;>;"
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@d
    move-result-object v1

    #@e
    .local v1, "activeSyncContext$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@11
    move-result v4

    #@12
    if-eqz v4, :cond_2

    #@14
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@17
    move-result-object v0

    #@18
    check-cast v0, Lcom/android/server/content/SyncManager$ActiveSyncContext;

    #@1a
    .line 3002
    .local v0, "activeSyncContext":Lcom/android/server/content/SyncManager$ActiveSyncContext;
    if-eqz v0, :cond_0

    #@1c
    .line 3004
    iget-object v4, v0, Lcom/android/server/content/SyncManager$ActiveSyncContext;->mSyncOperation:Lcom/android/server/content/SyncOperation;

    #@1e
    .line 3003
    iget-object v3, v4, Lcom/android/server/content/SyncOperation;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    #@20
    .line 3005
    .local v3, "opInfo":Lcom/android/server/content/SyncStorageEngine$EndPoint;
    invoke-virtual {v3, p1}, Lcom/android/server/content/SyncStorageEngine$EndPoint;->matchesSpec(Lcom/android/server/content/SyncStorageEngine$EndPoint;)Z

    #@23
    move-result v4

    #@24
    if-eqz v4, :cond_0

    #@26
    .line 3008
    if-eqz p2, :cond_1

    #@28
    .line 3009
    iget-object v4, v0, Lcom/android/server/content/SyncManager$ActiveSyncContext;->mSyncOperation:Lcom/android/server/content/SyncOperation;

    #@2a
    iget-object v4, v4, Lcom/android/server/content/SyncOperation;->extras:Landroid/os/Bundle;

    #@2c
    .line 3011
    const/4 v5, 0x0

    #@2d
    .line 3009
    invoke-static {v4, p2, v5}, Lcom/android/server/content/SyncManager;->syncExtrasEquals(Landroid/os/Bundle;Landroid/os/Bundle;Z)Z

    #@30
    move-result v4

    #@31
    if-eqz v4, :cond_0

    #@33
    .line 3014
    :cond_1
    invoke-direct {p0, v6, v0}, Lcom/android/server/content/SyncManager$SyncHandler;->runSyncFinishedOrCanceledH(Landroid/content/SyncResult;Lcom/android/server/content/SyncManager$ActiveSyncContext;)V

    #@36
    goto :goto_0

    #@37
    .line 2998
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
    .line 3123
    invoke-virtual {p1}, Lcom/android/server/content/SyncManager$ActiveSyncContext;->close()V

    #@3
    .line 3124
    iget-object v0, p0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    #@5
    iget-object v0, v0, Lcom/android/server/content/SyncManager;->mActiveSyncContexts:Ljava/util/ArrayList;

    #@7
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    #@a
    .line 3125
    iget-object v0, p0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    #@c
    invoke-static {v0}, Lcom/android/server/content/SyncManager;->-get22(Lcom/android/server/content/SyncManager;)Lcom/android/server/content/SyncStorageEngine;

    #@f
    move-result-object v0

    #@10
    iget-object v1, p1, Lcom/android/server/content/SyncManager$ActiveSyncContext;->mSyncInfo:Landroid/content/SyncInfo;

    #@12
    .line 3126
    iget-object v2, p1, Lcom/android/server/content/SyncManager$ActiveSyncContext;->mSyncOperation:Lcom/android/server/content/SyncOperation;

    #@14
    iget-object v2, v2, Lcom/android/server/content/SyncOperation;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    #@16
    iget v2, v2, Lcom/android/server/content/SyncStorageEngine$EndPoint;->userId:I

    #@18
    .line 3125
    invoke-virtual {v0, v1, v2}, Lcom/android/server/content/SyncStorageEngine;->removeActiveSync(Landroid/content/SyncInfo;I)V

    #@1b
    .line 3128
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
    .line 3129
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
    .line 3130
    invoke-virtual {p1}, Lcom/android/server/content/SyncManager$ActiveSyncContext;->toString()Ljava/lang/String;

    #@37
    move-result-object v2

    #@38
    .line 3129
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3b
    move-result-object v1

    #@3c
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3f
    move-result-object v1

    #@40
    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    #@43
    .line 3132
    :cond_0
    iget-object v0, p0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    #@45
    invoke-static {v0}, Lcom/android/server/content/SyncManager;->-get18(Lcom/android/server/content/SyncManager;)Lcom/android/server/content/SyncManager$SyncHandler;

    #@48
    move-result-object v0

    #@49
    const/4 v1, 0x7

    #@4a
    invoke-virtual {v0, v1, p1}, Lcom/android/server/content/SyncManager$SyncHandler;->removeMessages(ILjava/lang/Object;)V

    #@4d
    .line 3133
    iget-object v0, p0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    #@4f
    invoke-static {v0}, Lcom/android/server/content/SyncManager;->-get18(Lcom/android/server/content/SyncManager;)Lcom/android/server/content/SyncManager$SyncHandler;

    #@52
    move-result-object v0

    #@53
    const/16 v1, 0x8

    #@55
    invoke-virtual {v0, v1, p1}, Lcom/android/server/content/SyncManager$SyncHandler;->removeMessages(ILjava/lang/Object;)V

    #@58
    .line 3122
    return-void
.end method

.method private dispatchSyncOperation(Lcom/android/server/content/SyncOperation;)Z
    .locals 13
    .param p1, "op"    # Lcom/android/server/content/SyncOperation;

    #@0
    .prologue
    .line 2896
    const-string/jumbo v2, "SyncManager"

    #@3
    const/4 v3, 0x2

    #@4
    invoke-static {v2, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    #@7
    move-result v2

    #@8
    if-eqz v2, :cond_0

    #@a
    .line 2897
    const-string/jumbo v2, "SyncManager"

    #@d
    new-instance v3, Ljava/lang/StringBuilder;

    #@f
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@12
    const-string/jumbo v4, "dispatchSyncOperation: we are going to sync "

    #@15
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@18
    move-result-object v3

    #@19
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@1c
    move-result-object v3

    #@1d
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@20
    move-result-object v3

    #@21
    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    #@24
    .line 2898
    const-string/jumbo v2, "SyncManager"

    #@27
    new-instance v3, Ljava/lang/StringBuilder;

    #@29
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@2c
    const-string/jumbo v4, "num active syncs: "

    #@2f
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@32
    move-result-object v3

    #@33
    iget-object v4, p0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    #@35
    iget-object v4, v4, Lcom/android/server/content/SyncManager;->mActiveSyncContexts:Ljava/util/ArrayList;

    #@37
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    #@3a
    move-result v4

    #@3b
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@3e
    move-result-object v3

    #@3f
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@42
    move-result-object v3

    #@43
    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    #@46
    .line 2899
    iget-object v2, p0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    #@48
    iget-object v2, v2, Lcom/android/server/content/SyncManager;->mActiveSyncContexts:Ljava/util/ArrayList;

    #@4a
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@4d
    move-result-object v11

    #@4e
    .local v11, "syncContext$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    #@51
    move-result v2

    #@52
    if-eqz v2, :cond_0

    #@54
    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@57
    move-result-object v10

    #@58
    check-cast v10, Lcom/android/server/content/SyncManager$ActiveSyncContext;

    #@5a
    .line 2900
    .local v10, "syncContext":Lcom/android/server/content/SyncManager$ActiveSyncContext;
    const-string/jumbo v2, "SyncManager"

    #@5d
    invoke-virtual {v10}, Lcom/android/server/content/SyncManager$ActiveSyncContext;->toString()Ljava/lang/String;

    #@60
    move-result-object v3

    #@61
    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    #@64
    goto :goto_0

    #@65
    .line 2906
    .end local v10    # "syncContext":Lcom/android/server/content/SyncManager$ActiveSyncContext;
    .end local v11    # "syncContext$iterator":Ljava/util/Iterator;
    :cond_0
    iget-object v7, p1, Lcom/android/server/content/SyncOperation;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    #@67
    .line 2907
    .local v7, "info":Lcom/android/server/content/SyncStorageEngine$EndPoint;
    iget-boolean v2, v7, Lcom/android/server/content/SyncStorageEngine$EndPoint;->target_provider:Z

    #@69
    if-eqz v2, :cond_4

    #@6b
    .line 2909
    iget-object v2, v7, Lcom/android/server/content/SyncStorageEngine$EndPoint;->provider:Ljava/lang/String;

    #@6d
    iget-object v3, v7, Lcom/android/server/content/SyncStorageEngine$EndPoint;->account:Landroid/accounts/Account;

    #@6f
    iget-object v3, v3, Landroid/accounts/Account;->type:Ljava/lang/String;

    #@71
    invoke-static {v2, v3}, Landroid/content/SyncAdapterType;->newKey(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SyncAdapterType;

    #@74
    move-result-object v9

    #@75
    .line 2911
    .local v9, "syncAdapterType":Landroid/content/SyncAdapterType;
    iget-object v2, p0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    #@77
    iget-object v2, v2, Lcom/android/server/content/SyncManager;->mSyncAdapters:Landroid/content/SyncAdaptersCache;

    #@79
    iget v3, v7, Lcom/android/server/content/SyncStorageEngine$EndPoint;->userId:I

    #@7b
    invoke-virtual {v2, v9, v3}, Landroid/content/SyncAdaptersCache;->getServiceInfo(Ljava/lang/Object;I)Landroid/content/pm/RegisteredServicesCache$ServiceInfo;

    #@7e
    move-result-object v8

    #@7f
    .line 2912
    .local v8, "syncAdapterInfo":Landroid/content/pm/RegisteredServicesCache$ServiceInfo;, "Landroid/content/pm/RegisteredServicesCache$ServiceInfo<Landroid/content/SyncAdapterType;>;"
    if-nez v8, :cond_1

    #@81
    .line 2913
    const-string/jumbo v2, "SyncManager"

    #@84
    new-instance v3, Ljava/lang/StringBuilder;

    #@86
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@89
    const-string/jumbo v4, "can\'t find a sync adapter for "

    #@8c
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@8f
    move-result-object v3

    #@90
    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@93
    move-result-object v3

    #@94
    .line 2914
    const-string/jumbo v4, ", removing settings for it"

    #@97
    .line 2913
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@9a
    move-result-object v3

    #@9b
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@9e
    move-result-object v3

    #@9f
    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@a2
    .line 2915
    iget-object v2, p0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    #@a4
    invoke-static {v2}, Lcom/android/server/content/SyncManager;->-get22(Lcom/android/server/content/SyncManager;)Lcom/android/server/content/SyncStorageEngine;

    #@a7
    move-result-object v2

    #@a8
    invoke-virtual {v2, v7}, Lcom/android/server/content/SyncStorageEngine;->removeAuthority(Lcom/android/server/content/SyncStorageEngine$EndPoint;)V

    #@ab
    .line 2916
    const/4 v2, 0x0

    #@ac
    return v2

    #@ad
    .line 2918
    :cond_1
    iget v6, v8, Landroid/content/pm/RegisteredServicesCache$ServiceInfo;->uid:I

    #@af
    .line 2919
    .local v6, "targetUid":I
    iget-object v12, v8, Landroid/content/pm/RegisteredServicesCache$ServiceInfo;->componentName:Landroid/content/ComponentName;

    #@b1
    .line 2937
    .end local v8    # "syncAdapterInfo":Landroid/content/pm/RegisteredServicesCache$ServiceInfo;, "Landroid/content/pm/RegisteredServicesCache$ServiceInfo<Landroid/content/SyncAdapterType;>;"
    .end local v9    # "syncAdapterType":Landroid/content/SyncAdapterType;
    .local v12, "targetComponent":Landroid/content/ComponentName;
    :goto_1
    new-instance v1, Lcom/android/server/content/SyncManager$ActiveSyncContext;

    #@b3
    iget-object v2, p0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    #@b5
    invoke-virtual {p0, p1}, Lcom/android/server/content/SyncManager$SyncHandler;->insertStartSyncEvent(Lcom/android/server/content/SyncOperation;)J

    #@b8
    move-result-wide v4

    #@b9
    move-object v3, p1

    #@ba
    invoke-direct/range {v1 .. v6}, Lcom/android/server/content/SyncManager$ActiveSyncContext;-><init>(Lcom/android/server/content/SyncManager;Lcom/android/server/content/SyncOperation;JI)V

    #@bd
    .line 2938
    .local v1, "activeSyncContext":Lcom/android/server/content/SyncManager$ActiveSyncContext;
    const-string/jumbo v2, "SyncManager"

    #@c0
    const/4 v3, 0x2

    #@c1
    invoke-static {v2, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    #@c4
    move-result v2

    #@c5
    if-eqz v2, :cond_2

    #@c7
    .line 2939
    const-string/jumbo v2, "SyncManager"

    #@ca
    new-instance v3, Ljava/lang/StringBuilder;

    #@cc
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@cf
    const-string/jumbo v4, "dispatchSyncOperation: starting "

    #@d2
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@d5
    move-result-object v3

    #@d6
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@d9
    move-result-object v3

    #@da
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@dd
    move-result-object v3

    #@de
    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    #@e1
    .line 2942
    :cond_2
    iget-object v2, p0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    #@e3
    invoke-static {v2}, Lcom/android/server/content/SyncManager;->-get22(Lcom/android/server/content/SyncManager;)Lcom/android/server/content/SyncStorageEngine;

    #@e6
    move-result-object v2

    #@e7
    invoke-virtual {v2, v1}, Lcom/android/server/content/SyncStorageEngine;->addActiveSync(Lcom/android/server/content/SyncManager$ActiveSyncContext;)Landroid/content/SyncInfo;

    #@ea
    move-result-object v2

    #@eb
    iput-object v2, v1, Lcom/android/server/content/SyncManager$ActiveSyncContext;->mSyncInfo:Landroid/content/SyncInfo;

    #@ed
    .line 2943
    iget-object v2, p0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    #@ef
    iget-object v2, v2, Lcom/android/server/content/SyncManager;->mActiveSyncContexts:Ljava/util/ArrayList;

    #@f1
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@f4
    .line 2945
    iget-object v2, v1, Lcom/android/server/content/SyncManager$ActiveSyncContext;->mSyncOperation:Lcom/android/server/content/SyncOperation;

    #@f6
    invoke-virtual {v2}, Lcom/android/server/content/SyncOperation;->isExpedited()Z

    #@f9
    move-result v2

    #@fa
    if-nez v2, :cond_3

    #@fc
    .line 2946
    iget-object v2, v1, Lcom/android/server/content/SyncManager$ActiveSyncContext;->mSyncOperation:Lcom/android/server/content/SyncOperation;

    #@fe
    invoke-virtual {v2}, Lcom/android/server/content/SyncOperation;->isManual()Z

    #@101
    move-result v2

    #@102
    if-eqz v2, :cond_5

    #@104
    .line 2952
    :cond_3
    :goto_2
    iget-object v2, p0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    #@106
    invoke-static {v2, v1}, Lcom/android/server/content/SyncManager;->-wrap14(Lcom/android/server/content/SyncManager;Lcom/android/server/content/SyncManager$ActiveSyncContext;)V

    #@109
    .line 2954
    iget v2, v7, Lcom/android/server/content/SyncStorageEngine$EndPoint;->userId:I

    #@10b
    invoke-virtual {v1, v12, v2}, Lcom/android/server/content/SyncManager$ActiveSyncContext;->bindToSyncAdapter(Landroid/content/ComponentName;I)Z

    #@10e
    move-result v2

    #@10f
    if-nez v2, :cond_6

    #@111
    .line 2955
    const-string/jumbo v2, "SyncManager"

    #@114
    new-instance v3, Ljava/lang/StringBuilder;

    #@116
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@119
    const-string/jumbo v4, "Bind attempt failed - target: "

    #@11c
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@11f
    move-result-object v3

    #@120
    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@123
    move-result-object v3

    #@124
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@127
    move-result-object v3

    #@128
    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@12b
    .line 2956
    invoke-direct {p0, v1}, Lcom/android/server/content/SyncManager$SyncHandler;->closeActiveSyncContext(Lcom/android/server/content/SyncManager$ActiveSyncContext;)V

    #@12e
    .line 2957
    const/4 v2, 0x0

    #@12f
    return v2

    #@130
    .line 2924
    .end local v1    # "activeSyncContext":Lcom/android/server/content/SyncManager$ActiveSyncContext;
    .end local v6    # "targetUid":I
    .end local v12    # "targetComponent":Landroid/content/ComponentName;
    :cond_4
    :try_start_0
    iget-object v2, p0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    #@132
    invoke-static {v2}, Lcom/android/server/content/SyncManager;->-get8(Lcom/android/server/content/SyncManager;)Landroid/content/Context;

    #@135
    move-result-object v2

    #@136
    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    #@139
    move-result-object v2

    #@13a
    .line 2925
    iget-object v3, v7, Lcom/android/server/content/SyncStorageEngine$EndPoint;->service:Landroid/content/ComponentName;

    #@13c
    const/4 v4, 0x0

    #@13d
    .line 2924
    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getServiceInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ServiceInfo;

    #@140
    move-result-object v2

    #@141
    iget-object v2, v2, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    #@143
    iget v6, v2, Landroid/content/pm/ApplicationInfo;->uid:I

    #@145
    .line 2928
    .restart local v6    # "targetUid":I
    iget-object v12, v7, Lcom/android/server/content/SyncStorageEngine$EndPoint;->service:Landroid/content/ComponentName;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    #@147
    .restart local v12    # "targetComponent":Landroid/content/ComponentName;
    goto/16 :goto_1

    #@149
    .line 2929
    .end local v6    # "targetUid":I
    .end local v12    # "targetComponent":Landroid/content/ComponentName;
    :catch_0
    move-exception v0

    #@14a
    .line 2930
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string/jumbo v2, "SyncManager"

    #@14d
    new-instance v3, Ljava/lang/StringBuilder;

    #@14f
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@152
    const-string/jumbo v4, "Can\'t find a service for "

    #@155
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@158
    move-result-object v3

    #@159
    iget-object v4, v7, Lcom/android/server/content/SyncStorageEngine$EndPoint;->service:Landroid/content/ComponentName;

    #@15b
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@15e
    move-result-object v3

    #@15f
    .line 2931
    const-string/jumbo v4, ", removing settings for it"

    #@162
    .line 2930
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@165
    move-result-object v3

    #@166
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@169
    move-result-object v3

    #@16a
    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@16d
    .line 2932
    iget-object v2, p0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    #@16f
    invoke-static {v2}, Lcom/android/server/content/SyncManager;->-get22(Lcom/android/server/content/SyncManager;)Lcom/android/server/content/SyncStorageEngine;

    #@172
    move-result-object v2

    #@173
    invoke-virtual {v2, v7}, Lcom/android/server/content/SyncStorageEngine;->removeAuthority(Lcom/android/server/content/SyncStorageEngine$EndPoint;)V

    #@176
    .line 2933
    const/4 v2, 0x0

    #@177
    return v2

    #@178
    .line 2947
    .end local v0    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .restart local v1    # "activeSyncContext":Lcom/android/server/content/SyncManager$ActiveSyncContext;
    .restart local v6    # "targetUid":I
    .restart local v12    # "targetComponent":Landroid/content/ComponentName;
    :cond_5
    iget-object v2, v1, Lcom/android/server/content/SyncManager$ActiveSyncContext;->mSyncOperation:Lcom/android/server/content/SyncOperation;

    #@17a
    invoke-virtual {v2}, Lcom/android/server/content/SyncOperation;->isIgnoreSettings()Z

    #@17d
    move-result v2

    #@17e
    if-nez v2, :cond_3

    #@180
    .line 2948
    iget-object v2, p0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    #@182
    invoke-static {v2, v1}, Lcom/android/server/content/SyncManager;->-wrap15(Lcom/android/server/content/SyncManager;Lcom/android/server/content/SyncManager$ActiveSyncContext;)V

    #@185
    goto/16 :goto_2

    #@187
    .line 2960
    :cond_6
    const/4 v2, 0x1

    #@188
    return v2
.end method

.method private getSyncWakeLock(Lcom/android/server/content/SyncOperation;)Landroid/os/PowerManager$WakeLock;
    .locals 5
    .param p1, "operation"    # Lcom/android/server/content/SyncOperation;

    #@0
    .prologue
    .line 2139
    invoke-virtual {p1}, Lcom/android/server/content/SyncOperation;->wakeLockName()Ljava/lang/String;

    #@3
    move-result-object v2

    #@4
    .line 2140
    .local v2, "wakeLockKey":Ljava/lang/String;
    iget-object v3, p0, Lcom/android/server/content/SyncManager$SyncHandler;->mWakeLocks:Ljava/util/HashMap;

    #@6
    invoke-virtual {v3, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@9
    move-result-object v1

    #@a
    check-cast v1, Landroid/os/PowerManager$WakeLock;

    #@c
    .line 2141
    .local v1, "wakeLock":Landroid/os/PowerManager$WakeLock;
    if-nez v1, :cond_0

    #@e
    .line 2142
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
    .line 2143
    .local v0, "name":Ljava/lang/String;
    iget-object v3, p0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    #@24
    invoke-static {v3}, Lcom/android/server/content/SyncManager;->-get13(Lcom/android/server/content/SyncManager;)Landroid/os/PowerManager;

    #@27
    move-result-object v3

    #@28
    const/4 v4, 0x1

    #@29
    invoke-virtual {v3, v4, v0}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    #@2c
    move-result-object v1

    #@2d
    .line 2144
    const/4 v3, 0x0

    #@2e
    invoke-virtual {v1, v3}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    #@31
    .line 2145
    iget-object v3, p0, Lcom/android/server/content/SyncManager$SyncHandler;->mWakeLocks:Ljava/util/HashMap;

    #@33
    invoke-virtual {v3, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@36
    .line 2147
    .end local v0    # "name":Ljava/lang/String;
    :cond_0
    return-object v1
.end method

.method private installHandleTooManyDeletesNotification(Landroid/accounts/Account;Ljava/lang/String;JI)V
    .locals 17
    .param p1, "account"    # Landroid/accounts/Account;
    .param p2, "authority"    # Ljava/lang/String;
    .param p3, "numDeletes"    # J
    .param p5, "userId"    # I

    #@0
    .prologue
    .line 3241
    move-object/from16 v0, p0

    #@2
    iget-object v2, v0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    #@4
    invoke-static {v2}, Lcom/android/server/content/SyncManager;->-get12(Lcom/android/server/content/SyncManager;)Landroid/app/NotificationManager;

    #@7
    move-result-object v2

    #@8
    if-nez v2, :cond_0

    #@a
    return-void

    #@b
    .line 3243
    :cond_0
    move-object/from16 v0, p0

    #@d
    iget-object v2, v0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    #@f
    invoke-static {v2}, Lcom/android/server/content/SyncManager;->-get8(Lcom/android/server/content/SyncManager;)Landroid/content/Context;

    #@12
    move-result-object v2

    #@13
    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    #@16
    move-result-object v2

    #@17
    .line 3244
    const/4 v3, 0x0

    #@18
    .line 3243
    move-object/from16 v0, p2

    #@1a
    invoke-virtual {v2, v0, v3}, Landroid/content/pm/PackageManager;->resolveContentProvider(Ljava/lang/String;I)Landroid/content/pm/ProviderInfo;

    #@1d
    move-result-object v12

    #@1e
    .line 3245
    .local v12, "providerInfo":Landroid/content/pm/ProviderInfo;
    if-nez v12, :cond_1

    #@20
    .line 3246
    return-void

    #@21
    .line 3248
    :cond_1
    move-object/from16 v0, p0

    #@23
    iget-object v2, v0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    #@25
    invoke-static {v2}, Lcom/android/server/content/SyncManager;->-get8(Lcom/android/server/content/SyncManager;)Landroid/content/Context;

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
    .line 3250
    .local v8, "authorityName":Ljava/lang/CharSequence;
    new-instance v4, Landroid/content/Intent;

    #@33
    move-object/from16 v0, p0

    #@35
    iget-object v2, v0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    #@37
    invoke-static {v2}, Lcom/android/server/content/SyncManager;->-get8(Lcom/android/server/content/SyncManager;)Landroid/content/Context;

    #@3a
    move-result-object v2

    #@3b
    const-class v3, Landroid/content/SyncActivityTooManyDeletes;

    #@3d
    invoke-direct {v4, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    #@40
    .line 3251
    .local v4, "clickIntent":Landroid/content/Intent;
    const-string/jumbo v2, "account"

    #@43
    move-object/from16 v0, p1

    #@45
    invoke-virtual {v4, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    #@48
    .line 3252
    const-string/jumbo v2, "authority"

    #@4b
    move-object/from16 v0, p2

    #@4d
    invoke-virtual {v4, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    #@50
    .line 3253
    const-string/jumbo v2, "provider"

    #@53
    invoke-interface {v8}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    #@56
    move-result-object v3

    #@57
    invoke-virtual {v4, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    #@5a
    .line 3254
    const-string/jumbo v2, "numDeletes"

    #@5d
    move-wide/from16 v0, p3

    #@5f
    invoke-virtual {v4, v2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    #@62
    .line 3256
    move-object/from16 v0, p0

    #@64
    invoke-direct {v0, v4}, Lcom/android/server/content/SyncManager$SyncHandler;->isActivityAvailable(Landroid/content/Intent;)Z

    #@67
    move-result v2

    #@68
    if-nez v2, :cond_2

    #@6a
    .line 3257
    const-string/jumbo v2, "SyncManager"

    #@6d
    const-string/jumbo v3, "No activity found to handle too many deletes."

    #@70
    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@73
    .line 3258
    return-void

    #@74
    .line 3261
    :cond_2
    new-instance v7, Landroid/os/UserHandle;

    #@76
    move/from16 v0, p5

    #@78
    invoke-direct {v7, v0}, Landroid/os/UserHandle;-><init>(I)V

    #@7b
    .line 3263
    .local v7, "user":Landroid/os/UserHandle;
    move-object/from16 v0, p0

    #@7d
    iget-object v2, v0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    #@7f
    invoke-static {v2}, Lcom/android/server/content/SyncManager;->-get8(Lcom/android/server/content/SyncManager;)Landroid/content/Context;

    #@82
    move-result-object v2

    #@83
    const/4 v3, 0x0

    #@84
    .line 3264
    const/high16 v5, 0x10000000

    #@86
    const/4 v6, 0x0

    #@87
    .line 3262
    invoke-static/range {v2 .. v7}, Landroid/app/PendingIntent;->getActivityAsUser(Landroid/content/Context;ILandroid/content/Intent;ILandroid/os/Bundle;Landroid/os/UserHandle;)Landroid/app/PendingIntent;

    #@8a
    move-result-object v11

    #@8b
    .line 3266
    .local v11, "pendingIntent":Landroid/app/PendingIntent;
    move-object/from16 v0, p0

    #@8d
    iget-object v2, v0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    #@8f
    invoke-static {v2}, Lcom/android/server/content/SyncManager;->-get8(Lcom/android/server/content/SyncManager;)Landroid/content/Context;

    #@92
    move-result-object v2

    #@93
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@96
    move-result-object v2

    #@97
    .line 3267
    const v3, 0x10400e4

    #@9a
    .line 3266
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    #@9d
    move-result-object v13

    #@9e
    .line 3269
    .local v13, "tooManyDeletesDescFormat":Ljava/lang/CharSequence;
    move-object/from16 v0, p0

    #@a0
    iget-object v2, v0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    #@a2
    invoke-static {v2, v7}, Lcom/android/server/content/SyncManager;->-wrap0(Lcom/android/server/content/SyncManager;Landroid/os/UserHandle;)Landroid/content/Context;

    #@a5
    move-result-object v9

    #@a6
    .line 3270
    .local v9, "contextForUser":Landroid/content/Context;
    new-instance v2, Landroid/app/Notification$Builder;

    #@a8
    invoke-direct {v2, v9}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    #@ab
    .line 3271
    const v3, 0x108063f

    #@ae
    .line 3270
    invoke-virtual {v2, v3}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    #@b1
    move-result-object v2

    #@b2
    .line 3272
    move-object/from16 v0, p0

    #@b4
    iget-object v3, v0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    #@b6
    invoke-static {v3}, Lcom/android/server/content/SyncManager;->-get8(Lcom/android/server/content/SyncManager;)Landroid/content/Context;

    #@b9
    move-result-object v3

    #@ba
    const v5, 0x10400e2

    #@bd
    invoke-virtual {v3, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    #@c0
    move-result-object v3

    #@c1
    .line 3270
    invoke-virtual {v2, v3}, Landroid/app/Notification$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    #@c4
    move-result-object v2

    #@c5
    .line 3273
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    #@c8
    move-result-wide v14

    #@c9
    .line 3270
    invoke-virtual {v2, v14, v15}, Landroid/app/Notification$Builder;->setWhen(J)Landroid/app/Notification$Builder;

    #@cc
    move-result-object v2

    #@cd
    .line 3275
    const v3, 0x1060059

    #@d0
    .line 3274
    invoke-virtual {v9, v3}, Landroid/content/Context;->getColor(I)I

    #@d3
    move-result v3

    #@d4
    .line 3270
    invoke-virtual {v2, v3}, Landroid/app/Notification$Builder;->setColor(I)Landroid/app/Notification$Builder;

    #@d7
    move-result-object v2

    #@d8
    .line 3277
    const v3, 0x10400e3

    #@db
    .line 3276
    invoke-virtual {v9, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    #@de
    move-result-object v3

    #@df
    .line 3270
    invoke-virtual {v2, v3}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    #@e2
    move-result-object v2

    #@e3
    .line 3279
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
    .line 3270
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
    .line 3282
    .local v10, "notification":Landroid/app/Notification;
    iget v2, v10, Landroid/app/Notification;->flags:I

    #@ff
    or-int/lit8 v2, v2, 0x2

    #@101
    iput v2, v10, Landroid/app/Notification;->flags:I

    #@103
    .line 3283
    move-object/from16 v0, p0

    #@105
    iget-object v2, v0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    #@107
    invoke-static {v2}, Lcom/android/server/content/SyncManager;->-get12(Lcom/android/server/content/SyncManager;)Landroid/app/NotificationManager;

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
    .line 3240
    return-void
.end method

.method private isActivityAvailable(Landroid/content/Intent;)Z
    .locals 7
    .param p1, "intent"    # Landroid/content/Intent;

    #@0
    .prologue
    const/4 v6, 0x0

    #@1
    .line 3294
    iget-object v5, p0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    #@3
    invoke-static {v5}, Lcom/android/server/content/SyncManager;->-get8(Lcom/android/server/content/SyncManager;)Landroid/content/Context;

    #@6
    move-result-object v5

    #@7
    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    #@a
    move-result-object v3

    #@b
    .line 3295
    .local v3, "pm":Landroid/content/pm/PackageManager;
    invoke-virtual {v3, p1, v6}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    #@e
    move-result-object v1

    #@f
    .line 3296
    .local v1, "list":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v1}, Ljava/util/List;->size()I

    #@12
    move-result v2

    #@13
    .line 3297
    .local v2, "listSize":I
    const/4 v0, 0x0

    #@14
    .local v0, "i":I
    :goto_0
    if-ge v0, v2, :cond_1

    #@16
    .line 3298
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@19
    move-result-object v4

    #@1a
    check-cast v4, Landroid/content/pm/ResolveInfo;

    #@1c
    .line 3299
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
    .line 3301
    const/4 v5, 0x1

    #@27
    return v5

    #@28
    .line 3297
    :cond_0
    add-int/lit8 v0, v0, 0x1

    #@2a
    goto :goto_0

    #@2b
    .line 3305
    .end local v4    # "resolveInfo":Landroid/content/pm/ResolveInfo;
    :cond_1
    return v6
.end method

.method private isDispatchable(Lcom/android/server/content/SyncStorageEngine$EndPoint;)Z
    .locals 7
    .param p1, "target"    # Lcom/android/server/content/SyncStorageEngine$EndPoint;

    #@0
    .prologue
    const/4 v6, 0x0

    #@1
    .line 2353
    const-string/jumbo v2, "SyncManager"

    #@4
    const/4 v3, 0x2

    #@5
    invoke-static {v2, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    #@8
    move-result v1

    #@9
    .line 2354
    .local v1, "isLoggable":Z
    iget-boolean v2, p1, Lcom/android/server/content/SyncStorageEngine$EndPoint;->target_provider:Z

    #@b
    if-eqz v2, :cond_4

    #@d
    .line 2356
    iget-object v2, p0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    #@f
    invoke-static {v2}, Lcom/android/server/content/SyncManager;->-get15(Lcom/android/server/content/SyncManager;)[Landroid/accounts/AccountAndUser;

    #@12
    move-result-object v0

    #@13
    .line 2357
    .local v0, "accounts":[Landroid/accounts/AccountAndUser;
    iget-object v2, p0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    #@15
    .line 2358
    iget-object v3, p1, Lcom/android/server/content/SyncStorageEngine$EndPoint;->account:Landroid/accounts/Account;

    #@17
    iget v4, p1, Lcom/android/server/content/SyncStorageEngine$EndPoint;->userId:I

    #@19
    .line 2357
    invoke-static {v2, v0, v3, v4}, Lcom/android/server/content/SyncManager;->-wrap2(Lcom/android/server/content/SyncManager;[Landroid/accounts/AccountAndUser;Landroid/accounts/Account;I)Z

    #@1c
    move-result v2

    #@1d
    if-nez v2, :cond_0

    #@1f
    .line 2359
    return v6

    #@20
    .line 2361
    :cond_0
    iget-object v2, p0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    #@22
    invoke-static {v2}, Lcom/android/server/content/SyncManager;->-get22(Lcom/android/server/content/SyncManager;)Lcom/android/server/content/SyncStorageEngine;

    #@25
    move-result-object v2

    #@26
    iget v3, p1, Lcom/android/server/content/SyncStorageEngine$EndPoint;->userId:I

    #@28
    invoke-virtual {v2, v3}, Lcom/android/server/content/SyncStorageEngine;->getMasterSyncAutomatically(I)Z

    #@2b
    move-result v2

    #@2c
    if-eqz v2, :cond_2

    #@2e
    .line 2362
    iget-object v2, p0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    #@30
    invoke-static {v2}, Lcom/android/server/content/SyncManager;->-get22(Lcom/android/server/content/SyncManager;)Lcom/android/server/content/SyncStorageEngine;

    #@33
    move-result-object v2

    #@34
    .line 2363
    iget-object v3, p1, Lcom/android/server/content/SyncStorageEngine$EndPoint;->account:Landroid/accounts/Account;

    #@36
    .line 2364
    iget v4, p1, Lcom/android/server/content/SyncStorageEngine$EndPoint;->userId:I

    #@38
    .line 2365
    iget-object v5, p1, Lcom/android/server/content/SyncStorageEngine$EndPoint;->provider:Ljava/lang/String;

    #@3a
    .line 2362
    invoke-virtual {v2, v3, v4, v5}, Lcom/android/server/content/SyncStorageEngine;->getSyncAutomatically(Landroid/accounts/Account;ILjava/lang/String;)Z

    #@3d
    move-result v2

    #@3e
    if-eqz v2, :cond_2

    #@40
    .line 2371
    iget-object v2, p0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    #@42
    iget-object v3, p1, Lcom/android/server/content/SyncStorageEngine$EndPoint;->account:Landroid/accounts/Account;

    #@44
    iget v4, p1, Lcom/android/server/content/SyncStorageEngine$EndPoint;->userId:I

    #@46
    iget-object v5, p1, Lcom/android/server/content/SyncStorageEngine$EndPoint;->provider:Ljava/lang/String;

    #@48
    invoke-virtual {v2, v3, v4, v5}, Lcom/android/server/content/SyncManager;->getIsSyncable(Landroid/accounts/Account;ILjava/lang/String;)I

    #@4b
    move-result v2

    #@4c
    if-nez v2, :cond_6

    #@4e
    .line 2373
    if-eqz v1, :cond_1

    #@50
    .line 2374
    const-string/jumbo v2, "SyncManager"

    #@53
    const-string/jumbo v3, "    Not scheduling periodic operation: isSyncable == 0."

    #@56
    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    #@59
    .line 2376
    :cond_1
    return v6

    #@5a
    .line 2366
    :cond_2
    if-eqz v1, :cond_3

    #@5c
    .line 2367
    const-string/jumbo v2, "SyncManager"

    #@5f
    const-string/jumbo v3, "    Not scheduling periodic operation: sync turned off."

    #@62
    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    #@65
    .line 2369
    :cond_3
    return v6

    #@66
    .line 2378
    .end local v0    # "accounts":[Landroid/accounts/AccountAndUser;
    :cond_4
    iget-boolean v2, p1, Lcom/android/server/content/SyncStorageEngine$EndPoint;->target_service:Z

    #@68
    if-eqz v2, :cond_6

    #@6a
    .line 2379
    iget-object v2, p0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    #@6c
    invoke-static {v2}, Lcom/android/server/content/SyncManager;->-get22(Lcom/android/server/content/SyncManager;)Lcom/android/server/content/SyncStorageEngine;

    #@6f
    move-result-object v2

    #@70
    iget-object v3, p1, Lcom/android/server/content/SyncStorageEngine$EndPoint;->service:Landroid/content/ComponentName;

    #@72
    iget v4, p1, Lcom/android/server/content/SyncStorageEngine$EndPoint;->userId:I

    #@74
    invoke-virtual {v2, v3, v4}, Lcom/android/server/content/SyncStorageEngine;->getIsTargetServiceActive(Landroid/content/ComponentName;I)Z

    #@77
    move-result v2

    #@78
    if-eqz v2, :cond_6

    #@7a
    .line 2380
    if-eqz v1, :cond_5

    #@7c
    .line 2381
    const-string/jumbo v2, "SyncManager"

    #@7f
    const-string/jumbo v3, "   Not scheduling periodic operation: isEnabled == 0."

    #@82
    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    #@85
    .line 2383
    :cond_5
    return v6

    #@86
    .line 2386
    :cond_6
    const/4 v2, 0x1

    #@87
    return v2
.end method

.method private isOperationValidLocked(Lcom/android/server/content/SyncOperation;)Z
    .locals 16
    .param p1, "op"    # Lcom/android/server/content/SyncOperation;

    #@0
    .prologue
    .line 2794
    const-string/jumbo v12, "SyncManager"

    #@3
    const/4 v13, 0x2

    #@4
    invoke-static {v12, v13}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    #@7
    move-result v4

    #@8
    .line 2797
    .local v4, "isLoggable":Z
    move-object/from16 v0, p1

    #@a
    iget-object v9, v0, Lcom/android/server/content/SyncOperation;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    #@c
    .line 2798
    .local v9, "target":Lcom/android/server/content/SyncStorageEngine$EndPoint;
    move-object/from16 v0, p0

    #@e
    iget-object v12, v0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    #@10
    invoke-static {v12}, Lcom/android/server/content/SyncManager;->-get22(Lcom/android/server/content/SyncManager;)Lcom/android/server/content/SyncStorageEngine;

    #@13
    move-result-object v12

    #@14
    iget v13, v9, Lcom/android/server/content/SyncStorageEngine$EndPoint;->userId:I

    #@16
    invoke-virtual {v12, v13}, Lcom/android/server/content/SyncStorageEngine;->getMasterSyncAutomatically(I)Z

    #@19
    move-result v8

    #@1a
    .line 2799
    .local v8, "syncEnabled":Z
    iget-boolean v12, v9, Lcom/android/server/content/SyncStorageEngine$EndPoint;->target_provider:Z

    #@1c
    if-eqz v12, :cond_a

    #@1e
    .line 2801
    move-object/from16 v0, p0

    #@20
    iget-object v12, v0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    #@22
    invoke-static {v12}, Lcom/android/server/content/SyncManager;->-get15(Lcom/android/server/content/SyncManager;)[Landroid/accounts/AccountAndUser;

    #@25
    move-result-object v1

    #@26
    .line 2802
    .local v1, "accounts":[Landroid/accounts/AccountAndUser;
    move-object/from16 v0, p0

    #@28
    iget-object v12, v0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    #@2a
    iget-object v13, v9, Lcom/android/server/content/SyncStorageEngine$EndPoint;->account:Landroid/accounts/Account;

    #@2c
    iget v14, v9, Lcom/android/server/content/SyncStorageEngine$EndPoint;->userId:I

    #@2e
    invoke-static {v12, v1, v13, v14}, Lcom/android/server/content/SyncManager;->-wrap2(Lcom/android/server/content/SyncManager;[Landroid/accounts/AccountAndUser;Landroid/accounts/Account;I)Z

    #@31
    move-result v12

    #@32
    if-nez v12, :cond_1

    #@34
    .line 2803
    if-eqz v4, :cond_0

    #@36
    .line 2804
    const-string/jumbo v12, "SyncManager"

    #@39
    const-string/jumbo v13, "    Dropping sync operation: account doesn\'t exist."

    #@3c
    invoke-static {v12, v13}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    #@3f
    .line 2806
    :cond_0
    const/4 v12, 0x0

    #@40
    return v12

    #@41
    .line 2809
    :cond_1
    move-object/from16 v0, p0

    #@43
    iget-object v12, v0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    #@45
    iget-object v13, v9, Lcom/android/server/content/SyncStorageEngine$EndPoint;->account:Landroid/accounts/Account;

    #@47
    iget v14, v9, Lcom/android/server/content/SyncStorageEngine$EndPoint;->userId:I

    #@49
    iget-object v15, v9, Lcom/android/server/content/SyncStorageEngine$EndPoint;->provider:Ljava/lang/String;

    #@4b
    invoke-virtual {v12, v13, v14, v15}, Lcom/android/server/content/SyncManager;->getIsSyncable(Landroid/accounts/Account;ILjava/lang/String;)I

    #@4e
    move-result v6

    #@4f
    .line 2810
    .local v6, "state":I
    if-nez v6, :cond_3

    #@51
    .line 2811
    if-eqz v4, :cond_2

    #@53
    .line 2812
    const-string/jumbo v12, "SyncManager"

    #@56
    const-string/jumbo v13, "    Dropping sync operation: isSyncable == 0."

    #@59
    invoke-static {v12, v13}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    #@5c
    .line 2814
    :cond_2
    const/4 v12, 0x0

    #@5d
    return v12

    #@5e
    .line 2816
    :cond_3
    if-eqz v8, :cond_7

    #@60
    move-object/from16 v0, p0

    #@62
    iget-object v12, v0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    #@64
    invoke-static {v12}, Lcom/android/server/content/SyncManager;->-get22(Lcom/android/server/content/SyncManager;)Lcom/android/server/content/SyncStorageEngine;

    #@67
    move-result-object v12

    #@68
    .line 2817
    iget-object v13, v9, Lcom/android/server/content/SyncStorageEngine$EndPoint;->account:Landroid/accounts/Account;

    #@6a
    iget v14, v9, Lcom/android/server/content/SyncStorageEngine$EndPoint;->userId:I

    #@6c
    iget-object v15, v9, Lcom/android/server/content/SyncStorageEngine$EndPoint;->provider:Ljava/lang/String;

    #@6e
    .line 2816
    invoke-virtual {v12, v13, v14, v15}, Lcom/android/server/content/SyncStorageEngine;->getSyncAutomatically(Landroid/accounts/Account;ILjava/lang/String;)Z

    #@71
    move-result v8

    #@72
    .line 2820
    .end local v8    # "syncEnabled":Z
    :goto_0
    move-object/from16 v0, p0

    #@74
    iget-object v12, v0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    #@76
    iget-object v12, v12, Lcom/android/server/content/SyncManager;->mSyncAdapters:Landroid/content/SyncAdaptersCache;

    #@78
    .line 2822
    iget-object v13, v9, Lcom/android/server/content/SyncStorageEngine$EndPoint;->provider:Ljava/lang/String;

    #@7a
    iget-object v14, v9, Lcom/android/server/content/SyncStorageEngine$EndPoint;->account:Landroid/accounts/Account;

    #@7c
    iget-object v14, v14, Landroid/accounts/Account;->type:Ljava/lang/String;

    #@7e
    .line 2821
    invoke-static {v13, v14}, Landroid/content/SyncAdapterType;->newKey(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SyncAdapterType;

    #@81
    move-result-object v13

    #@82
    .line 2822
    iget v14, v9, Lcom/android/server/content/SyncStorageEngine$EndPoint;->userId:I

    #@84
    .line 2820
    invoke-virtual {v12, v13, v14}, Landroid/content/SyncAdaptersCache;->getServiceInfo(Ljava/lang/Object;I)Landroid/content/pm/RegisteredServicesCache$ServiceInfo;

    #@87
    move-result-object v7

    #@88
    .line 2823
    .local v7, "syncAdapterInfo":Landroid/content/pm/RegisteredServicesCache$ServiceInfo;, "Landroid/content/pm/RegisteredServicesCache$ServiceInfo<Landroid/content/SyncAdapterType;>;"
    if-eqz v7, :cond_8

    #@8a
    .line 2824
    iget v10, v7, Landroid/content/pm/RegisteredServicesCache$ServiceInfo;->uid:I

    #@8c
    .line 2864
    .end local v1    # "accounts":[Landroid/accounts/AccountAndUser;
    .end local v7    # "syncAdapterInfo":Landroid/content/pm/RegisteredServicesCache$ServiceInfo;, "Landroid/content/pm/RegisteredServicesCache$ServiceInfo<Landroid/content/SyncAdapterType;>;"
    .local v10, "targetUid":I
    :goto_1
    move-object/from16 v0, p1

    #@8e
    iget-object v12, v0, Lcom/android/server/content/SyncOperation;->extras:Landroid/os/Bundle;

    #@90
    const-string/jumbo v13, "ignore_settings"

    #@93
    const/4 v14, 0x0

    #@94
    invoke-virtual {v12, v13, v14}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    #@97
    move-result v12

    #@98
    if-nez v12, :cond_10

    #@9a
    .line 2865
    if-gez v6, :cond_11

    #@9c
    const/4 v3, 0x1

    #@9d
    .line 2868
    .local v3, "ignoreSystemConfiguration":Z
    :goto_2
    if-nez v8, :cond_4

    #@9f
    if-eqz v3, :cond_12

    #@a1
    .line 2875
    :cond_4
    move-object/from16 v0, p0

    #@a3
    iget-object v12, v0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    #@a5
    invoke-static {v12}, Lcom/android/server/content/SyncManager;->-wrap1(Lcom/android/server/content/SyncManager;)Landroid/net/ConnectivityManager;

    #@a8
    move-result-object v12

    #@a9
    invoke-virtual {v12, v10}, Landroid/net/ConnectivityManager;->getActiveNetworkInfoForUid(I)Landroid/net/NetworkInfo;

    #@ac
    move-result-object v5

    #@ad
    .line 2877
    .local v5, "networkInfo":Landroid/net/NetworkInfo;
    if-eqz v5, :cond_14

    #@af
    invoke-virtual {v5}, Landroid/net/NetworkInfo;->isConnected()Z

    #@b2
    move-result v11

    #@b3
    .line 2878
    :goto_3
    if-nez v11, :cond_5

    #@b5
    if-eqz v3, :cond_15

    #@b7
    .line 2885
    :cond_5
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/content/SyncOperation;->isNotAllowedOnMetered()Z

    #@ba
    move-result v12

    #@bb
    if-eqz v12, :cond_6

    #@bd
    move-object/from16 v0, p0

    #@bf
    iget-object v12, v0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    #@c1
    invoke-static {v12}, Lcom/android/server/content/SyncManager;->-wrap1(Lcom/android/server/content/SyncManager;)Landroid/net/ConnectivityManager;

    #@c4
    move-result-object v12

    #@c5
    invoke-virtual {v12}, Landroid/net/ConnectivityManager;->isActiveNetworkMetered()Z

    #@c8
    move-result v12

    #@c9
    if-eqz v12, :cond_6

    #@cb
    .line 2886
    if-eqz v3, :cond_17

    #@cd
    .line 2892
    :cond_6
    const/4 v12, 0x1

    #@ce
    return v12

    #@cf
    .line 2816
    .end local v3    # "ignoreSystemConfiguration":Z
    .end local v5    # "networkInfo":Landroid/net/NetworkInfo;
    .end local v10    # "targetUid":I
    .restart local v1    # "accounts":[Landroid/accounts/AccountAndUser;
    .restart local v8    # "syncEnabled":Z
    :cond_7
    const/4 v8, 0x0

    #@d0
    .local v8, "syncEnabled":Z
    goto :goto_0

    #@d1
    .line 2826
    .end local v8    # "syncEnabled":Z
    .restart local v7    # "syncAdapterInfo":Landroid/content/pm/RegisteredServicesCache$ServiceInfo;, "Landroid/content/pm/RegisteredServicesCache$ServiceInfo<Landroid/content/SyncAdapterType;>;"
    :cond_8
    if-eqz v4, :cond_9

    #@d3
    .line 2827
    const-string/jumbo v12, "SyncManager"

    #@d6
    new-instance v13, Ljava/lang/StringBuilder;

    #@d8
    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    #@db
    const-string/jumbo v14, "    Dropping sync operation: No sync adapter registeredfor: "

    #@de
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@e1
    move-result-object v13

    #@e2
    invoke-virtual {v13, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@e5
    move-result-object v13

    #@e6
    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@e9
    move-result-object v13

    #@ea
    invoke-static {v12, v13}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    #@ed
    .line 2830
    :cond_9
    const/4 v12, 0x0

    #@ee
    return v12

    #@ef
    .line 2832
    .end local v1    # "accounts":[Landroid/accounts/AccountAndUser;
    .end local v6    # "state":I
    .end local v7    # "syncAdapterInfo":Landroid/content/pm/RegisteredServicesCache$ServiceInfo;, "Landroid/content/pm/RegisteredServicesCache$ServiceInfo<Landroid/content/SyncAdapterType;>;"
    .local v8, "syncEnabled":Z
    :cond_a
    iget-boolean v12, v9, Lcom/android/server/content/SyncStorageEngine$EndPoint;->target_service:Z

    #@f1
    if-eqz v12, :cond_f

    #@f3
    .line 2833
    move-object/from16 v0, p0

    #@f5
    iget-object v12, v0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    #@f7
    invoke-static {v12}, Lcom/android/server/content/SyncManager;->-get22(Lcom/android/server/content/SyncManager;)Lcom/android/server/content/SyncStorageEngine;

    #@fa
    move-result-object v12

    #@fb
    iget-object v13, v9, Lcom/android/server/content/SyncStorageEngine$EndPoint;->service:Landroid/content/ComponentName;

    #@fd
    iget v14, v9, Lcom/android/server/content/SyncStorageEngine$EndPoint;->userId:I

    #@ff
    invoke-virtual {v12, v13, v14}, Lcom/android/server/content/SyncStorageEngine;->getIsTargetServiceActive(Landroid/content/ComponentName;I)Z

    #@102
    move-result v12

    #@103
    if-eqz v12, :cond_c

    #@105
    .line 2834
    const/4 v6, 0x1

    #@106
    .line 2835
    .restart local v6    # "state":I
    :goto_4
    if-nez v6, :cond_d

    #@108
    .line 2837
    if-eqz v4, :cond_b

    #@10a
    .line 2838
    const-string/jumbo v12, "SyncManager"

    #@10d
    const-string/jumbo v13, "    Dropping sync operation: isActive == 0."

    #@110
    invoke-static {v12, v13}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    #@113
    .line 2840
    :cond_b
    const/4 v12, 0x0

    #@114
    return v12

    #@115
    .line 2834
    .end local v6    # "state":I
    :cond_c
    const/4 v6, 0x0

    #@116
    .restart local v6    # "state":I
    goto :goto_4

    #@117
    .line 2843
    :cond_d
    :try_start_0
    move-object/from16 v0, p0

    #@119
    iget-object v12, v0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    #@11b
    invoke-static {v12}, Lcom/android/server/content/SyncManager;->-get8(Lcom/android/server/content/SyncManager;)Landroid/content/Context;

    #@11e
    move-result-object v12

    #@11f
    invoke-virtual {v12}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    #@122
    move-result-object v12

    #@123
    .line 2844
    iget-object v13, v9, Lcom/android/server/content/SyncStorageEngine$EndPoint;->service:Landroid/content/ComponentName;

    #@125
    const/4 v14, 0x0

    #@126
    .line 2843
    invoke-virtual {v12, v13, v14}, Landroid/content/pm/PackageManager;->getServiceInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ServiceInfo;

    #@129
    move-result-object v12

    #@12a
    iget-object v12, v12, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    #@12c
    iget v10, v12, Landroid/content/pm/ApplicationInfo;->uid:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    #@12e
    .restart local v10    # "targetUid":I
    goto/16 :goto_1

    #@130
    .line 2847
    .end local v10    # "targetUid":I
    :catch_0
    move-exception v2

    #@131
    .line 2848
    .local v2, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    if-eqz v4, :cond_e

    #@133
    .line 2849
    const-string/jumbo v12, "SyncManager"

    #@136
    new-instance v13, Ljava/lang/StringBuilder;

    #@138
    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    #@13b
    const-string/jumbo v14, "    Dropping sync operation: No service registered for: "

    #@13e
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@141
    move-result-object v13

    #@142
    .line 2850
    iget-object v14, v9, Lcom/android/server/content/SyncStorageEngine$EndPoint;->service:Landroid/content/ComponentName;

    #@144
    .line 2849
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@147
    move-result-object v13

    #@148
    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@14b
    move-result-object v13

    #@14c
    invoke-static {v12, v13}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    #@14f
    .line 2852
    :cond_e
    const/4 v12, 0x0

    #@150
    return v12

    #@151
    .line 2855
    .end local v2    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .end local v6    # "state":I
    :cond_f
    const-string/jumbo v12, "SyncManager"

    #@154
    new-instance v13, Ljava/lang/StringBuilder;

    #@156
    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    #@159
    const-string/jumbo v14, "Unknown target for Sync Op: "

    #@15c
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@15f
    move-result-object v13

    #@160
    invoke-virtual {v13, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@163
    move-result-object v13

    #@164
    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@167
    move-result-object v13

    #@168
    invoke-static {v12, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@16b
    .line 2856
    const/4 v12, 0x0

    #@16c
    return v12

    #@16d
    .line 2864
    .end local v8    # "syncEnabled":Z
    .restart local v6    # "state":I
    .restart local v10    # "targetUid":I
    :cond_10
    const/4 v3, 0x1

    #@16e
    .restart local v3    # "ignoreSystemConfiguration":Z
    goto/16 :goto_2

    #@170
    .line 2865
    .end local v3    # "ignoreSystemConfiguration":Z
    :cond_11
    const/4 v3, 0x0

    #@171
    .restart local v3    # "ignoreSystemConfiguration":Z
    goto/16 :goto_2

    #@173
    .line 2869
    :cond_12
    if-eqz v4, :cond_13

    #@175
    .line 2870
    const-string/jumbo v12, "SyncManager"

    #@178
    const-string/jumbo v13, "    Dropping sync operation: disallowed by settings/network."

    #@17b
    invoke-static {v12, v13}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    #@17e
    .line 2872
    :cond_13
    const/4 v12, 0x0

    #@17f
    return v12

    #@180
    .line 2877
    .restart local v5    # "networkInfo":Landroid/net/NetworkInfo;
    :cond_14
    const/4 v11, 0x0

    #@181
    .local v11, "uidNetworkConnected":Z
    goto/16 :goto_3

    #@183
    .line 2879
    .end local v11    # "uidNetworkConnected":Z
    :cond_15
    if-eqz v4, :cond_16

    #@185
    .line 2880
    const-string/jumbo v12, "SyncManager"

    #@188
    const-string/jumbo v13, "    Dropping sync operation: disallowed by settings/network."

    #@18b
    invoke-static {v12, v13}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    #@18e
    .line 2882
    :cond_16
    const/4 v12, 0x0

    #@18f
    return v12

    #@190
    .line 2887
    :cond_17
    if-eqz v4, :cond_18

    #@192
    .line 2888
    const-string/jumbo v12, "SyncManager"

    #@195
    const-string/jumbo v13, "    Dropping sync operation: not allowed on metered network."

    #@198
    invoke-static {v12, v13}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    #@19b
    .line 2890
    :cond_18
    const/4 v12, 0x0

    #@19c
    return v12
.end method

.method private isSyncNotUsingNetworkH(Lcom/android/server/content/SyncManager$ActiveSyncContext;)Z
    .locals 22
    .param p1, "activeSyncContext"    # Lcom/android/server/content/SyncManager$ActiveSyncContext;

    #@0
    .prologue
    .line 2766
    move-object/from16 v0, p0

    #@2
    iget-object v14, v0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    #@4
    move-object/from16 v0, p1

    #@6
    iget v15, v0, Lcom/android/server/content/SyncManager$ActiveSyncContext;->mSyncAdapterUid:I

    #@8
    invoke-static {v14, v15}, Lcom/android/server/content/SyncManager;->-wrap6(Lcom/android/server/content/SyncManager;I)J

    #@b
    move-result-wide v4

    #@c
    .line 2768
    .local v4, "bytesTransferredCurrent":J
    move-object/from16 v0, p1

    #@e
    iget-wide v14, v0, Lcom/android/server/content/SyncManager$ActiveSyncContext;->mBytesTransferredAtLastPoll:J

    #@10
    sub-long v6, v4, v14

    #@12
    .line 2770
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
    .line 2772
    move-wide v12, v6

    #@1d
    .line 2773
    .local v12, "remainder":J
    const-wide/32 v14, 0x100000

    #@20
    div-long v10, v12, v14

    #@22
    .line 2774
    .local v10, "mb":J
    const-wide/32 v14, 0x100000

    #@25
    rem-long/2addr v12, v14

    #@26
    .line 2775
    const-wide/16 v14, 0x400

    #@28
    div-long v8, v12, v14

    #@2a
    .line 2776
    .local v8, "kb":J
    const-wide/16 v14, 0x400

    #@2c
    rem-long/2addr v12, v14

    #@2d
    .line 2777
    move-wide v2, v12

    #@2e
    .line 2778
    .local v2, "b":J
    const-string/jumbo v14, "SyncManager"

    #@31
    .line 2779
    const-string/jumbo v15, "Time since last update: %ds. Delta transferred: %dMBs,%dKBs,%dBs"

    #@34
    .line 2778
    const/16 v16, 0x4

    #@36
    move/from16 v0, v16

    #@38
    new-array v0, v0, [Ljava/lang/Object;

    #@3a
    move-object/from16 v16, v0

    #@3c
    .line 2780
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    #@3f
    move-result-wide v18

    #@40
    .line 2781
    move-object/from16 v0, p1

    #@42
    iget-wide v0, v0, Lcom/android/server/content/SyncManager$ActiveSyncContext;->mLastPolledTimeElapsed:J

    #@44
    move-wide/from16 v20, v0

    #@46
    .line 2780
    sub-long v18, v18, v20

    #@48
    .line 2781
    const-wide/16 v20, 0x3e8

    #@4a
    .line 2780
    div-long v18, v18, v20

    #@4c
    invoke-static/range {v18 .. v19}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    #@4f
    move-result-object v17

    #@50
    const/16 v18, 0x0

    #@52
    aput-object v17, v16, v18

    #@54
    .line 2782
    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    #@57
    move-result-object v17

    #@58
    const/16 v18, 0x1

    #@5a
    aput-object v17, v16, v18

    #@5c
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    #@5f
    move-result-object v17

    #@60
    const/16 v18, 0x2

    #@62
    aput-object v17, v16, v18

    #@64
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    #@67
    move-result-object v17

    #@68
    const/16 v18, 0x3

    #@6a
    aput-object v17, v16, v18

    #@6c
    .line 2778
    invoke-static/range {v15 .. v16}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@6f
    move-result-object v15

    #@70
    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@73
    .line 2785
    .end local v2    # "b":J
    .end local v8    # "kb":J
    .end local v10    # "mb":J
    .end local v12    # "remainder":J
    :cond_0
    const-wide/16 v14, 0xa

    #@75
    cmp-long v14, v6, v14

    #@77
    if-gtz v14, :cond_1

    #@79
    const/4 v14, 0x1

    #@7a
    :goto_0
    return v14

    #@7b
    :cond_1
    const/4 v14, 0x0

    #@7c
    goto :goto_0
.end method

.method private manageSyncAlarmLocked(JJ)V
    .locals 25
    .param p1, "nextPeriodicEventElapsedTime"    # J
    .param p3, "nextPendingEventElapsedTime"    # J

    #@0
    .prologue
    .line 3169
    move-object/from16 v0, p0

    #@2
    iget-object v0, v0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    #@4
    move-object/from16 v17, v0

    #@6
    invoke-static/range {v17 .. v17}, Lcom/android/server/content/SyncManager;->-get9(Lcom/android/server/content/SyncManager;)Z

    #@9
    move-result v17

    #@a
    if-nez v17, :cond_0

    #@c
    return-void

    #@d
    .line 3170
    :cond_0
    move-object/from16 v0, p0

    #@f
    iget-object v0, v0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    #@11
    move-object/from16 v17, v0

    #@13
    invoke-static/range {v17 .. v17}, Lcom/android/server/content/SyncManager;->-get16(Lcom/android/server/content/SyncManager;)Z

    #@16
    move-result v17

    #@17
    if-eqz v17, :cond_1

    #@19
    return-void

    #@1a
    .line 3171
    :cond_1
    move-object/from16 v0, p0

    #@1c
    iget-object v0, v0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    #@1e
    move-object/from16 v17, v0

    #@20
    invoke-static/range {v17 .. v17}, Lcom/android/server/content/SyncManager;->-get10(Lcom/android/server/content/SyncManager;)Z

    #@23
    move-result v17

    #@24
    if-eqz v17, :cond_2

    #@26
    return-void

    #@27
    .line 3174
    :cond_2
    const-wide v12, 0x7fffffffffffffffL

    #@2c
    .line 3175
    .local v12, "earliestTimeoutTime":J
    move-object/from16 v0, p0

    #@2e
    iget-object v0, v0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    #@30
    move-object/from16 v17, v0

    #@32
    move-object/from16 v0, v17

    #@34
    iget-object v0, v0, Lcom/android/server/content/SyncManager;->mActiveSyncContexts:Ljava/util/ArrayList;

    #@36
    move-object/from16 v17, v0

    #@38
    invoke-interface/range {v17 .. v17}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@3b
    move-result-object v8

    #@3c
    .local v8, "currentSyncContext$iterator":Ljava/util/Iterator;
    :cond_3
    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    #@3f
    move-result v17

    #@40
    if-eqz v17, :cond_5

    #@42
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@45
    move-result-object v5

    #@46
    check-cast v5, Lcom/android/server/content/SyncManager$ActiveSyncContext;

    #@48
    .line 3177
    .local v5, "currentSyncContext":Lcom/android/server/content/SyncManager$ActiveSyncContext;
    iget-wide v0, v5, Lcom/android/server/content/SyncManager$ActiveSyncContext;->mTimeoutStartTime:J

    #@4a
    move-wide/from16 v18, v0

    #@4c
    invoke-static {}, Lcom/android/server/content/SyncManager;->-get3()J

    #@4f
    move-result-wide v20

    #@50
    add-long v10, v18, v20

    #@52
    .line 3178
    .local v10, "currentSyncTimeoutTime":J
    const-string/jumbo v17, "SyncManager"

    #@55
    const/16 v18, 0x2

    #@57
    invoke-static/range {v17 .. v18}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    #@5a
    move-result v17

    #@5b
    if-eqz v17, :cond_4

    #@5d
    .line 3179
    const-string/jumbo v17, "SyncManager"

    #@60
    new-instance v18, Ljava/lang/StringBuilder;

    #@62
    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    #@65
    const-string/jumbo v19, "manageSyncAlarm: active sync, mTimeoutStartTime + MAX is "

    #@68
    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6b
    move-result-object v18

    #@6c
    move-object/from16 v0, v18

    #@6e
    invoke-virtual {v0, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    #@71
    move-result-object v18

    #@72
    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@75
    move-result-object v18

    #@76
    invoke-static/range {v17 .. v18}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    #@79
    .line 3182
    :cond_4
    cmp-long v17, v12, v10

    #@7b
    if-lez v17, :cond_3

    #@7d
    .line 3183
    move-wide v12, v10

    #@7e
    goto :goto_0

    #@7f
    .line 3187
    .end local v5    # "currentSyncContext":Lcom/android/server/content/SyncManager$ActiveSyncContext;
    .end local v10    # "currentSyncTimeoutTime":J
    :cond_5
    const-string/jumbo v17, "SyncManager"

    #@82
    const/16 v18, 0x2

    #@84
    invoke-static/range {v17 .. v18}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    #@87
    move-result v17

    #@88
    if-eqz v17, :cond_6

    #@8a
    .line 3188
    const-string/jumbo v17, "SyncManager"

    #@8d
    new-instance v18, Ljava/lang/StringBuilder;

    #@8f
    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    #@92
    const-string/jumbo v19, "manageSyncAlarm: earliestTimeoutTime is "

    #@95
    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@98
    move-result-object v18

    #@99
    move-object/from16 v0, v18

    #@9b
    invoke-virtual {v0, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    #@9e
    move-result-object v18

    #@9f
    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@a2
    move-result-object v18

    #@a3
    invoke-static/range {v17 .. v18}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    #@a6
    .line 3189
    const-string/jumbo v17, "SyncManager"

    #@a9
    new-instance v18, Ljava/lang/StringBuilder;

    #@ab
    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    #@ae
    const-string/jumbo v19, "manageSyncAlarm: nextPeriodicEventElapsedTime is "

    #@b1
    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b4
    move-result-object v18

    #@b5
    move-object/from16 v0, v18

    #@b7
    move-wide/from16 v1, p1

    #@b9
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    #@bc
    move-result-object v18

    #@bd
    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@c0
    move-result-object v18

    #@c1
    invoke-static/range {v17 .. v18}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    #@c4
    .line 3191
    const-string/jumbo v17, "SyncManager"

    #@c7
    new-instance v18, Ljava/lang/StringBuilder;

    #@c9
    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    #@cc
    const-string/jumbo v19, "manageSyncAlarm: nextPendingEventElapsedTime is "

    #@cf
    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@d2
    move-result-object v18

    #@d3
    move-object/from16 v0, v18

    #@d5
    move-wide/from16 v1, p3

    #@d7
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    #@da
    move-result-object v18

    #@db
    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@de
    move-result-object v18

    #@df
    invoke-static/range {v17 .. v18}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    #@e2
    .line 3195
    :cond_6
    move-wide/from16 v0, p1

    #@e4
    invoke-static {v12, v13, v0, v1}, Ljava/lang/Math;->min(JJ)J

    #@e7
    move-result-wide v6

    #@e8
    .line 3196
    .local v6, "alarmTime":J
    move-wide/from16 v0, p3

    #@ea
    invoke-static {v6, v7, v0, v1}, Ljava/lang/Math;->min(JJ)J

    #@ed
    move-result-wide v6

    #@ee
    .line 3199
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    #@f1
    move-result-wide v14

    #@f2
    .line 3200
    .local v14, "now":J
    const-wide/16 v18, 0x7530

    #@f4
    add-long v18, v18, v14

    #@f6
    cmp-long v17, v6, v18

    #@f8
    if-gez v17, :cond_8

    #@fa
    .line 3201
    const-string/jumbo v17, "SyncManager"

    #@fd
    const/16 v18, 0x2

    #@ff
    invoke-static/range {v17 .. v18}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    #@102
    move-result v17

    #@103
    if-eqz v17, :cond_7

    #@105
    .line 3202
    const-string/jumbo v17, "SyncManager"

    #@108
    new-instance v18, Ljava/lang/StringBuilder;

    #@10a
    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    #@10d
    const-string/jumbo v19, "manageSyncAlarm: the alarmTime is too small, "

    #@110
    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@113
    move-result-object v18

    #@114
    move-object/from16 v0, v18

    #@116
    invoke-virtual {v0, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    #@119
    move-result-object v18

    #@11a
    .line 3203
    const-string/jumbo v19, ", setting to "

    #@11d
    .line 3202
    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@120
    move-result-object v18

    #@121
    .line 3203
    const-wide/16 v20, 0x7530

    #@123
    add-long v20, v20, v14

    #@125
    .line 3202
    move-object/from16 v0, v18

    #@127
    move-wide/from16 v1, v20

    #@129
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    #@12c
    move-result-object v18

    #@12d
    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@130
    move-result-object v18

    #@131
    invoke-static/range {v17 .. v18}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    #@134
    .line 3205
    :cond_7
    const-wide/16 v18, 0x7530

    #@136
    add-long v6, v14, v18

    #@138
    .line 3209
    :cond_8
    const/16 v16, 0x0

    #@13a
    .line 3210
    .local v16, "shouldSet":Z
    const/4 v9, 0x0

    #@13b
    .line 3211
    .local v9, "shouldCancel":Z
    move-object/from16 v0, p0

    #@13d
    iget-object v0, v0, Lcom/android/server/content/SyncManager$SyncHandler;->mAlarmScheduleTime:Ljava/lang/Long;

    #@13f
    move-object/from16 v17, v0

    #@141
    if-eqz v17, :cond_d

    #@143
    move-object/from16 v0, p0

    #@145
    iget-object v0, v0, Lcom/android/server/content/SyncManager$SyncHandler;->mAlarmScheduleTime:Ljava/lang/Long;

    #@147
    move-object/from16 v17, v0

    #@149
    invoke-virtual/range {v17 .. v17}, Ljava/lang/Long;->longValue()J

    #@14c
    move-result-wide v18

    #@14d
    cmp-long v17, v14, v18

    #@14f
    if-gez v17, :cond_d

    #@151
    const/4 v4, 0x1

    #@152
    .line 3213
    .local v4, "alarmIsActive":Z
    :goto_1
    const-wide v18, 0x7fffffffffffffffL

    #@157
    cmp-long v17, v6, v18

    #@159
    if-eqz v17, :cond_e

    #@15b
    .line 3215
    if-eqz v4, :cond_9

    #@15d
    move-object/from16 v0, p0

    #@15f
    iget-object v0, v0, Lcom/android/server/content/SyncManager$SyncHandler;->mAlarmScheduleTime:Ljava/lang/Long;

    #@161
    move-object/from16 v17, v0

    #@163
    invoke-virtual/range {v17 .. v17}, Ljava/lang/Long;->longValue()J

    #@166
    move-result-wide v18

    #@167
    cmp-long v17, v6, v18

    #@169
    if-eqz v17, :cond_a

    #@16b
    .line 3216
    :cond_9
    const/16 v16, 0x1

    #@16d
    .line 3223
    .end local v9    # "shouldCancel":Z
    :cond_a
    :goto_2
    move-object/from16 v0, p0

    #@16f
    iget-object v0, v0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    #@171
    move-object/from16 v17, v0

    #@173
    invoke-static/range {v17 .. v17}, Lcom/android/server/content/SyncManager;->-wrap9(Lcom/android/server/content/SyncManager;)V

    #@176
    .line 3224
    if-eqz v16, :cond_f

    #@178
    .line 3225
    const-string/jumbo v17, "SyncManager"

    #@17b
    const/16 v18, 0x2

    #@17d
    invoke-static/range {v17 .. v18}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    #@180
    move-result v17

    #@181
    if-eqz v17, :cond_b

    #@183
    .line 3226
    const-string/jumbo v17, "SyncManager"

    #@186
    new-instance v18, Ljava/lang/StringBuilder;

    #@188
    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    #@18b
    const-string/jumbo v19, "requesting that the alarm manager wake us up at elapsed time "

    #@18e
    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@191
    move-result-object v18

    #@192
    move-object/from16 v0, v18

    #@194
    invoke-virtual {v0, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    #@197
    move-result-object v18

    #@198
    .line 3227
    const-string/jumbo v19, ", now is "

    #@19b
    .line 3226
    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@19e
    move-result-object v18

    #@19f
    move-object/from16 v0, v18

    #@1a1
    invoke-virtual {v0, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    #@1a4
    move-result-object v18

    #@1a5
    .line 3227
    const-string/jumbo v19, ", "

    #@1a8
    .line 3226
    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1ab
    move-result-object v18

    #@1ac
    .line 3227
    sub-long v20, v6, v14

    #@1ae
    const-wide/16 v22, 0x3e8

    #@1b0
    div-long v20, v20, v22

    #@1b2
    .line 3226
    move-object/from16 v0, v18

    #@1b4
    move-wide/from16 v1, v20

    #@1b6
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    #@1b9
    move-result-object v18

    #@1ba
    .line 3228
    const-string/jumbo v19, " secs from now"

    #@1bd
    .line 3226
    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1c0
    move-result-object v18

    #@1c1
    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1c4
    move-result-object v18

    #@1c5
    invoke-static/range {v17 .. v18}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    #@1c8
    .line 3230
    :cond_b
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    #@1cb
    move-result-object v17

    #@1cc
    move-object/from16 v0, v17

    #@1ce
    move-object/from16 v1, p0

    #@1d0
    iput-object v0, v1, Lcom/android/server/content/SyncManager$SyncHandler;->mAlarmScheduleTime:Ljava/lang/Long;

    #@1d2
    .line 3231
    move-object/from16 v0, p0

    #@1d4
    iget-object v0, v0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    #@1d6
    move-object/from16 v17, v0

    #@1d8
    invoke-static/range {v17 .. v17}, Lcom/android/server/content/SyncManager;->-get4(Lcom/android/server/content/SyncManager;)Landroid/app/AlarmManager;

    #@1db
    move-result-object v17

    #@1dc
    .line 3232
    move-object/from16 v0, p0

    #@1de
    iget-object v0, v0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    #@1e0
    move-object/from16 v18, v0

    #@1e2
    invoke-static/range {v18 .. v18}, Lcom/android/server/content/SyncManager;->-get17(Lcom/android/server/content/SyncManager;)Landroid/app/PendingIntent;

    #@1e5
    move-result-object v18

    #@1e6
    .line 3231
    const/16 v19, 0x2

    #@1e8
    move-object/from16 v0, v17

    #@1ea
    move/from16 v1, v19

    #@1ec
    move-object/from16 v2, v18

    #@1ee
    invoke-virtual {v0, v1, v6, v7, v2}, Landroid/app/AlarmManager;->setExact(IJLandroid/app/PendingIntent;)V

    #@1f1
    .line 3166
    :cond_c
    :goto_3
    return-void

    #@1f2
    .line 3211
    .end local v4    # "alarmIsActive":Z
    .restart local v9    # "shouldCancel":Z
    :cond_d
    const/4 v4, 0x0

    #@1f3
    .restart local v4    # "alarmIsActive":Z
    goto/16 :goto_1

    #@1f5
    .line 3219
    :cond_e
    move v9, v4

    #@1f6
    .local v9, "shouldCancel":Z
    goto/16 :goto_2

    #@1f8
    .line 3233
    .end local v9    # "shouldCancel":Z
    :cond_f
    if-eqz v9, :cond_c

    #@1fa
    .line 3234
    const/16 v17, 0x0

    #@1fc
    move-object/from16 v0, v17

    #@1fe
    move-object/from16 v1, p0

    #@200
    iput-object v0, v1, Lcom/android/server/content/SyncManager$SyncHandler;->mAlarmScheduleTime:Ljava/lang/Long;

    #@202
    .line 3235
    move-object/from16 v0, p0

    #@204
    iget-object v0, v0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    #@206
    move-object/from16 v17, v0

    #@208
    invoke-static/range {v17 .. v17}, Lcom/android/server/content/SyncManager;->-get4(Lcom/android/server/content/SyncManager;)Landroid/app/AlarmManager;

    #@20b
    move-result-object v17

    #@20c
    move-object/from16 v0, p0

    #@20e
    iget-object v0, v0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    #@210
    move-object/from16 v18, v0

    #@212
    invoke-static/range {v18 .. v18}, Lcom/android/server/content/SyncManager;->-get17(Lcom/android/server/content/SyncManager;)Landroid/app/PendingIntent;

    #@215
    move-result-object v18

    #@216
    invoke-virtual/range {v17 .. v18}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    #@219
    goto :goto_3
.end method

.method private maybeEmptyUnreadyQueueLocked()V
    .locals 6

    #@0
    .prologue
    .line 2128
    iget-object v1, p0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    #@2
    invoke-static {v1}, Lcom/android/server/content/SyncManager;->-get14(Lcom/android/server/content/SyncManager;)Z

    #@5
    move-result v1

    #@6
    if-eqz v1, :cond_1

    #@8
    iget-object v1, p0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    #@a
    invoke-static {v1}, Lcom/android/server/content/SyncManager;->-get7(Lcom/android/server/content/SyncManager;)Z

    #@d
    move-result v1

    #@e
    if-eqz v1, :cond_1

    #@10
    .line 2130
    const/4 v0, 0x0

    #@11
    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/android/server/content/SyncManager$SyncHandler;->mUnreadyQueue:Ljava/util/List;

    #@13
    invoke-interface {v1}, Ljava/util/List;->size()I

    #@16
    move-result v1

    #@17
    if-ge v0, v1, :cond_0

    #@19
    .line 2131
    iget-object v1, p0, Lcom/android/server/content/SyncManager$SyncHandler;->mUnreadyQueue:Ljava/util/List;

    #@1b
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@1e
    move-result-object v1

    #@1f
    check-cast v1, Landroid/os/Message;

    #@21
    .line 2132
    int-to-long v2, v0

    #@22
    const-wide/16 v4, 0xbb8

    #@24
    mul-long/2addr v2, v4

    #@25
    const-wide/32 v4, 0x1d4c0

    #@28
    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->max(JJ)J

    #@2b
    move-result-wide v2

    #@2c
    .line 2131
    invoke-virtual {p0, v1, v2, v3}, Lcom/android/server/content/SyncManager$SyncHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    #@2f
    .line 2130
    add-int/lit8 v0, v0, 0x1

    #@31
    goto :goto_0

    #@32
    .line 2134
    :cond_0
    const/4 v1, 0x0

    #@33
    iput-object v1, p0, Lcom/android/server/content/SyncManager$SyncHandler;->mUnreadyQueue:Ljava/util/List;

    #@35
    .line 2127
    .end local v0    # "i":I
    :cond_1
    return-void
.end method

.method private maybeStartNextSyncH()J
    .locals 38

    #@0
    .prologue
    .line 2534
    const-string/jumbo v32, "SyncManager"

    #@3
    const/16 v33, 0x2

    #@5
    invoke-static/range {v32 .. v33}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    #@8
    move-result v13

    #@9
    .line 2535
    .local v13, "isLoggable":Z
    if-eqz v13, :cond_0

    #@b
    const-string/jumbo v32, "SyncManager"

    #@e
    const-string/jumbo v33, "maybeStartNextSync"

    #@11
    invoke-static/range {v32 .. v33}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    #@14
    .line 2538
    :cond_0
    move-object/from16 v0, p0

    #@16
    iget-object v0, v0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    #@18
    move-object/from16 v32, v0

    #@1a
    invoke-static/range {v32 .. v32}, Lcom/android/server/content/SyncManager;->-get9(Lcom/android/server/content/SyncManager;)Z

    #@1d
    move-result v32

    #@1e
    if-nez v32, :cond_2

    #@20
    .line 2539
    if-eqz v13, :cond_1

    #@22
    .line 2540
    const-string/jumbo v32, "SyncManager"

    #@25
    const-string/jumbo v33, "maybeStartNextSync: no data connection, skipping"

    #@28
    invoke-static/range {v32 .. v33}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    #@2b
    .line 2542
    :cond_1
    const-wide v32, 0x7fffffffffffffffL

    #@30
    return-wide v32

    #@31
    .line 2545
    :cond_2
    move-object/from16 v0, p0

    #@33
    iget-object v0, v0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    #@35
    move-object/from16 v32, v0

    #@37
    invoke-static/range {v32 .. v32}, Lcom/android/server/content/SyncManager;->-get16(Lcom/android/server/content/SyncManager;)Z

    #@3a
    move-result v32

    #@3b
    if-eqz v32, :cond_4

    #@3d
    .line 2546
    if-eqz v13, :cond_3

    #@3f
    .line 2547
    const-string/jumbo v32, "SyncManager"

    #@42
    const-string/jumbo v33, "maybeStartNextSync: memory low, skipping"

    #@45
    invoke-static/range {v32 .. v33}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    #@48
    .line 2549
    :cond_3
    const-wide v32, 0x7fffffffffffffffL

    #@4d
    return-wide v32

    #@4e
    .line 2552
    :cond_4
    move-object/from16 v0, p0

    #@50
    iget-object v0, v0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    #@52
    move-object/from16 v32, v0

    #@54
    invoke-static/range {v32 .. v32}, Lcom/android/server/content/SyncManager;->-get10(Lcom/android/server/content/SyncManager;)Z

    #@57
    move-result v32

    #@58
    if-eqz v32, :cond_6

    #@5a
    .line 2553
    if-eqz v13, :cond_5

    #@5c
    .line 2554
    const-string/jumbo v32, "SyncManager"

    #@5f
    const-string/jumbo v33, "maybeStartNextSync: device idle, skipping"

    #@62
    invoke-static/range {v32 .. v33}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    #@65
    .line 2556
    :cond_5
    const-wide v32, 0x7fffffffffffffffL

    #@6a
    return-wide v32

    #@6b
    .line 2561
    :cond_6
    move-object/from16 v0, p0

    #@6d
    iget-object v0, v0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    #@6f
    move-object/from16 v32, v0

    #@71
    invoke-static/range {v32 .. v32}, Lcom/android/server/content/SyncManager;->-get15(Lcom/android/server/content/SyncManager;)[Landroid/accounts/AccountAndUser;

    #@74
    move-result-object v32

    #@75
    invoke-static {}, Lcom/android/server/content/SyncManager;->-get0()[Landroid/accounts/AccountAndUser;

    #@78
    move-result-object v33

    #@79
    move-object/from16 v0, v32

    #@7b
    move-object/from16 v1, v33

    #@7d
    if-ne v0, v1, :cond_8

    #@7f
    .line 2562
    if-eqz v13, :cond_7

    #@81
    .line 2563
    const-string/jumbo v32, "SyncManager"

    #@84
    const-string/jumbo v33, "maybeStartNextSync: accounts not known, skipping"

    #@87
    invoke-static/range {v32 .. v33}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    #@8a
    .line 2565
    :cond_7
    const-wide v32, 0x7fffffffffffffffL

    #@8f
    return-wide v32

    #@90
    .line 2571
    :cond_8
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    #@93
    move-result-wide v18

    #@94
    .line 2574
    .local v18, "now":J
    const-wide v16, 0x7fffffffffffffffL

    #@99
    .line 2577
    .local v16, "nextReadyToRunTime":J
    new-instance v24, Ljava/util/ArrayList;

    #@9b
    invoke-direct/range {v24 .. v24}, Ljava/util/ArrayList;-><init>()V

    #@9e
    .line 2578
    .local v24, "operations":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/content/SyncOperation;>;"
    move-object/from16 v0, p0

    #@a0
    iget-object v0, v0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    #@a2
    move-object/from16 v32, v0

    #@a4
    invoke-static/range {v32 .. v32}, Lcom/android/server/content/SyncManager;->-get20(Lcom/android/server/content/SyncManager;)Lcom/android/server/content/SyncQueue;

    #@a7
    move-result-object v33

    #@a8
    monitor-enter v33

    #@a9
    .line 2579
    if-eqz v13, :cond_9

    #@ab
    .line 2580
    :try_start_0
    const-string/jumbo v32, "SyncManager"

    #@ae
    new-instance v34, Ljava/lang/StringBuilder;

    #@b0
    invoke-direct/range {v34 .. v34}, Ljava/lang/StringBuilder;-><init>()V

    #@b3
    const-string/jumbo v35, "build the operation array, syncQueue size is "

    #@b6
    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b9
    move-result-object v34

    #@ba
    .line 2581
    move-object/from16 v0, p0

    #@bc
    iget-object v0, v0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    #@be
    move-object/from16 v35, v0

    #@c0
    invoke-static/range {v35 .. v35}, Lcom/android/server/content/SyncManager;->-get20(Lcom/android/server/content/SyncManager;)Lcom/android/server/content/SyncQueue;

    #@c3
    move-result-object v35

    #@c4
    invoke-virtual/range {v35 .. v35}, Lcom/android/server/content/SyncQueue;->getOperations()Ljava/util/Collection;

    #@c7
    move-result-object v35

    #@c8
    invoke-interface/range {v35 .. v35}, Ljava/util/Collection;->size()I

    #@cb
    move-result v35

    #@cc
    .line 2580
    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@cf
    move-result-object v34

    #@d0
    invoke-virtual/range {v34 .. v34}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@d3
    move-result-object v34

    #@d4
    move-object/from16 v0, v32

    #@d6
    move-object/from16 v1, v34

    #@d8
    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    #@db
    .line 2584
    :cond_9
    move-object/from16 v0, p0

    #@dd
    iget-object v0, v0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    #@df
    move-object/from16 v32, v0

    #@e1
    invoke-static/range {v32 .. v32}, Lcom/android/server/content/SyncManager;->-get20(Lcom/android/server/content/SyncManager;)Lcom/android/server/content/SyncQueue;

    #@e4
    move-result-object v32

    #@e5
    invoke-virtual/range {v32 .. v32}, Lcom/android/server/content/SyncQueue;->getOperations()Ljava/util/Collection;

    #@e8
    move-result-object v32

    #@e9
    invoke-interface/range {v32 .. v32}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    #@ec
    move-result-object v23

    #@ed
    .line 2587
    .local v23, "operationIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/content/SyncOperation;>;"
    move-object/from16 v0, p0

    #@ef
    iget-object v0, v0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    #@f1
    move-object/from16 v32, v0

    #@f3
    invoke-static/range {v32 .. v32}, Lcom/android/server/content/SyncManager;->-get8(Lcom/android/server/content/SyncManager;)Landroid/content/Context;

    #@f6
    move-result-object v32

    #@f7
    const-string/jumbo v34, "activity"

    #@fa
    move-object/from16 v0, v32

    #@fc
    move-object/from16 v1, v34

    #@fe
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    #@101
    move-result-object v8

    #@102
    check-cast v8, Landroid/app/ActivityManager;

    #@104
    .line 2588
    .local v8, "activityManager":Landroid/app/ActivityManager;
    invoke-static {}, Lcom/google/android/collect/Sets;->newHashSet()Ljava/util/HashSet;

    #@107
    move-result-object v26

    #@108
    .line 2589
    .local v26, "removedUsers":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    :cond_a
    :goto_0
    invoke-interface/range {v23 .. v23}, Ljava/util/Iterator;->hasNext()Z

    #@10b
    move-result v32

    #@10c
    if-eqz v32, :cond_11

    #@10e
    .line 2590
    invoke-interface/range {v23 .. v23}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@111
    move-result-object v22

    #@112
    check-cast v22, Lcom/android/server/content/SyncOperation;

    #@114
    .line 2593
    .local v22, "op":Lcom/android/server/content/SyncOperation;
    move-object/from16 v0, v22

    #@116
    iget-object v0, v0, Lcom/android/server/content/SyncOperation;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    #@118
    move-object/from16 v32, v0

    #@11a
    move-object/from16 v0, v32

    #@11c
    iget v0, v0, Lcom/android/server/content/SyncStorageEngine$EndPoint;->userId:I

    #@11e
    move/from16 v32, v0

    #@120
    move/from16 v0, v32

    #@122
    invoke-virtual {v8, v0}, Landroid/app/ActivityManager;->isUserRunning(I)Z

    #@125
    move-result v32

    #@126
    if-nez v32, :cond_c

    #@128
    .line 2594
    move-object/from16 v0, p0

    #@12a
    iget-object v0, v0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    #@12c
    move-object/from16 v32, v0

    #@12e
    invoke-static/range {v32 .. v32}, Lcom/android/server/content/SyncManager;->-get23(Lcom/android/server/content/SyncManager;)Landroid/os/UserManager;

    #@131
    move-result-object v32

    #@132
    move-object/from16 v0, v22

    #@134
    iget-object v0, v0, Lcom/android/server/content/SyncOperation;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    #@136
    move-object/from16 v34, v0

    #@138
    move-object/from16 v0, v34

    #@13a
    iget v0, v0, Lcom/android/server/content/SyncStorageEngine$EndPoint;->userId:I

    #@13c
    move/from16 v34, v0

    #@13e
    move-object/from16 v0, v32

    #@140
    move/from16 v1, v34

    #@142
    invoke-virtual {v0, v1}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    #@145
    move-result-object v31

    #@146
    .line 2595
    .local v31, "userInfo":Landroid/content/pm/UserInfo;
    if-nez v31, :cond_b

    #@148
    .line 2596
    move-object/from16 v0, v22

    #@14a
    iget-object v0, v0, Lcom/android/server/content/SyncOperation;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    #@14c
    move-object/from16 v32, v0

    #@14e
    move-object/from16 v0, v32

    #@150
    iget v0, v0, Lcom/android/server/content/SyncStorageEngine$EndPoint;->userId:I

    #@152
    move/from16 v32, v0

    #@154
    invoke-static/range {v32 .. v32}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@157
    move-result-object v32

    #@158
    move-object/from16 v0, v26

    #@15a
    move-object/from16 v1, v32

    #@15c
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    #@15f
    .line 2598
    :cond_b
    if-eqz v13, :cond_a

    #@161
    .line 2599
    const-string/jumbo v32, "SyncManager"

    #@164
    new-instance v34, Ljava/lang/StringBuilder;

    #@166
    invoke-direct/range {v34 .. v34}, Ljava/lang/StringBuilder;-><init>()V

    #@169
    const-string/jumbo v35, "    Dropping all sync operations for + "

    #@16c
    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@16f
    move-result-object v34

    #@170
    .line 2600
    move-object/from16 v0, v22

    #@172
    iget-object v0, v0, Lcom/android/server/content/SyncOperation;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    #@174
    move-object/from16 v35, v0

    #@176
    move-object/from16 v0, v35

    #@178
    iget v0, v0, Lcom/android/server/content/SyncStorageEngine$EndPoint;->userId:I

    #@17a
    move/from16 v35, v0

    #@17c
    .line 2599
    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@17f
    move-result-object v34

    #@180
    .line 2600
    const-string/jumbo v35, ": user not running."

    #@183
    .line 2599
    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@186
    move-result-object v34

    #@187
    invoke-virtual/range {v34 .. v34}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@18a
    move-result-object v34

    #@18b
    move-object/from16 v0, v32

    #@18d
    move-object/from16 v1, v34

    #@18f
    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@192
    goto/16 :goto_0

    #@194
    .line 2578
    .end local v8    # "activityManager":Landroid/app/ActivityManager;
    .end local v22    # "op":Lcom/android/server/content/SyncOperation;
    .end local v23    # "operationIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/content/SyncOperation;>;"
    .end local v26    # "removedUsers":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    .end local v31    # "userInfo":Landroid/content/pm/UserInfo;
    :catchall_0
    move-exception v32

    #@195
    monitor-exit v33

    #@196
    throw v32

    #@197
    .line 2604
    .restart local v8    # "activityManager":Landroid/app/ActivityManager;
    .restart local v22    # "op":Lcom/android/server/content/SyncOperation;
    .restart local v23    # "operationIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/content/SyncOperation;>;"
    .restart local v26    # "removedUsers":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    :cond_c
    :try_start_1
    move-object/from16 v0, p0

    #@199
    move-object/from16 v1, v22

    #@19b
    invoke-direct {v0, v1}, Lcom/android/server/content/SyncManager$SyncHandler;->isOperationValidLocked(Lcom/android/server/content/SyncOperation;)Z

    #@19e
    move-result v32

    #@19f
    if-nez v32, :cond_d

    #@1a1
    .line 2605
    invoke-interface/range {v23 .. v23}, Ljava/util/Iterator;->remove()V

    #@1a4
    .line 2606
    move-object/from16 v0, p0

    #@1a6
    iget-object v0, v0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    #@1a8
    move-object/from16 v32, v0

    #@1aa
    invoke-static/range {v32 .. v32}, Lcom/android/server/content/SyncManager;->-get22(Lcom/android/server/content/SyncManager;)Lcom/android/server/content/SyncStorageEngine;

    #@1ad
    move-result-object v32

    #@1ae
    move-object/from16 v0, v22

    #@1b0
    iget-object v0, v0, Lcom/android/server/content/SyncOperation;->pendingOperation:Lcom/android/server/content/SyncStorageEngine$PendingOperation;

    #@1b2
    move-object/from16 v34, v0

    #@1b4
    move-object/from16 v0, v32

    #@1b6
    move-object/from16 v1, v34

    #@1b8
    invoke-virtual {v0, v1}, Lcom/android/server/content/SyncStorageEngine;->deleteFromPending(Lcom/android/server/content/SyncStorageEngine$PendingOperation;)Z

    #@1bb
    goto/16 :goto_0

    #@1bd
    .line 2611
    :cond_d
    move-object/from16 v0, v22

    #@1bf
    iget-wide v0, v0, Lcom/android/server/content/SyncOperation;->effectiveRunTime:J

    #@1c1
    move-wide/from16 v34, v0

    #@1c3
    move-object/from16 v0, v22

    #@1c5
    iget-wide v0, v0, Lcom/android/server/content/SyncOperation;->flexTime:J

    #@1c7
    move-wide/from16 v36, v0

    #@1c9
    sub-long v34, v34, v36

    #@1cb
    cmp-long v32, v34, v18

    #@1cd
    if-lez v32, :cond_f

    #@1cf
    .line 2612
    move-object/from16 v0, v22

    #@1d1
    iget-wide v0, v0, Lcom/android/server/content/SyncOperation;->effectiveRunTime:J

    #@1d3
    move-wide/from16 v34, v0

    #@1d5
    cmp-long v32, v16, v34

    #@1d7
    if-lez v32, :cond_e

    #@1d9
    .line 2613
    move-object/from16 v0, v22

    #@1db
    iget-wide v0, v0, Lcom/android/server/content/SyncOperation;->effectiveRunTime:J

    #@1dd
    move-wide/from16 v16, v0

    #@1df
    .line 2615
    :cond_e
    if-eqz v13, :cond_a

    #@1e1
    .line 2616
    const-string/jumbo v32, "SyncManager"

    #@1e4
    new-instance v34, Ljava/lang/StringBuilder;

    #@1e6
    invoke-direct/range {v34 .. v34}, Ljava/lang/StringBuilder;-><init>()V

    #@1e9
    const-string/jumbo v35, "    Not running sync operation: Sync too far in future.effective: "

    #@1ec
    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1ef
    move-result-object v34

    #@1f0
    .line 2617
    move-object/from16 v0, v22

    #@1f2
    iget-wide v0, v0, Lcom/android/server/content/SyncOperation;->effectiveRunTime:J

    #@1f4
    move-wide/from16 v36, v0

    #@1f6
    .line 2616
    move-object/from16 v0, v34

    #@1f8
    move-wide/from16 v1, v36

    #@1fa
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    #@1fd
    move-result-object v34

    #@1fe
    .line 2617
    const-string/jumbo v35, " flex: "

    #@201
    .line 2616
    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@204
    move-result-object v34

    #@205
    .line 2617
    move-object/from16 v0, v22

    #@207
    iget-wide v0, v0, Lcom/android/server/content/SyncOperation;->flexTime:J

    #@209
    move-wide/from16 v36, v0

    #@20b
    .line 2616
    move-object/from16 v0, v34

    #@20d
    move-wide/from16 v1, v36

    #@20f
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    #@212
    move-result-object v34

    #@213
    .line 2618
    const-string/jumbo v35, " now: "

    #@216
    .line 2616
    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@219
    move-result-object v34

    #@21a
    move-object/from16 v0, v34

    #@21c
    move-wide/from16 v1, v18

    #@21e
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    #@221
    move-result-object v34

    #@222
    invoke-virtual/range {v34 .. v34}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@225
    move-result-object v34

    #@226
    move-object/from16 v0, v32

    #@228
    move-object/from16 v1, v34

    #@22a
    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    #@22d
    goto/16 :goto_0

    #@22f
    .line 2622
    :cond_f
    move-object/from16 v0, p0

    #@231
    iget-object v0, v0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    #@233
    move-object/from16 v32, v0

    #@235
    move-object/from16 v0, v22

    #@237
    iget-object v0, v0, Lcom/android/server/content/SyncOperation;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    #@239
    move-object/from16 v34, v0

    #@23b
    move-object/from16 v0, v32

    #@23d
    move-object/from16 v1, v34

    #@23f
    invoke-virtual {v0, v1}, Lcom/android/server/content/SyncManager;->getPackageName(Lcom/android/server/content/SyncStorageEngine$EndPoint;)Ljava/lang/String;

    #@242
    move-result-object v25

    #@243
    .line 2624
    .local v25, "packageName":Ljava/lang/String;
    if-eqz v25, :cond_10

    #@245
    .line 2625
    move-object/from16 v0, p0

    #@247
    iget-object v0, v0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    #@249
    move-object/from16 v32, v0

    #@24b
    invoke-static/range {v32 .. v32}, Lcom/android/server/content/SyncManager;->-get5(Lcom/android/server/content/SyncManager;)Lcom/android/server/content/AppIdleMonitor;

    #@24e
    move-result-object v32

    #@24f
    move-object/from16 v0, v22

    #@251
    iget-object v0, v0, Lcom/android/server/content/SyncOperation;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    #@253
    move-object/from16 v34, v0

    #@255
    move-object/from16 v0, v34

    #@257
    iget v0, v0, Lcom/android/server/content/SyncStorageEngine$EndPoint;->userId:I

    #@259
    move/from16 v34, v0

    #@25b
    move-object/from16 v0, v32

    #@25d
    move-object/from16 v1, v25

    #@25f
    move/from16 v2, v34

    #@261
    invoke-virtual {v0, v1, v2}, Lcom/android/server/content/AppIdleMonitor;->isAppIdle(Ljava/lang/String;I)Z

    #@264
    move-result v32

    #@265
    .line 2624
    if-eqz v32, :cond_10

    #@267
    .line 2626
    move-object/from16 v0, p0

    #@269
    iget-object v0, v0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    #@26b
    move-object/from16 v32, v0

    #@26d
    move-object/from16 v0, v32

    #@26f
    move-object/from16 v1, v22

    #@271
    invoke-static {v0, v1}, Lcom/android/server/content/SyncManager;->-wrap10(Lcom/android/server/content/SyncManager;Lcom/android/server/content/SyncOperation;)V

    #@274
    .line 2627
    const/16 v32, 0x1

    #@276
    move/from16 v0, v32

    #@278
    move-object/from16 v1, v22

    #@27a
    iput-boolean v0, v1, Lcom/android/server/content/SyncOperation;->appIdle:Z

    #@27c
    .line 2628
    if-eqz v13, :cond_a

    #@27e
    .line 2629
    const-string/jumbo v32, "SyncManager"

    #@281
    new-instance v34, Ljava/lang/StringBuilder;

    #@283
    invoke-direct/range {v34 .. v34}, Ljava/lang/StringBuilder;-><init>()V

    #@286
    const-string/jumbo v35, "Sync backing off idle app "

    #@289
    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@28c
    move-result-object v34

    #@28d
    move-object/from16 v0, v34

    #@28f
    move-object/from16 v1, v25

    #@291
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@294
    move-result-object v34

    #@295
    invoke-virtual/range {v34 .. v34}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@298
    move-result-object v34

    #@299
    move-object/from16 v0, v32

    #@29b
    move-object/from16 v1, v34

    #@29d
    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    #@2a0
    goto/16 :goto_0

    #@2a2
    .line 2633
    :cond_10
    const/16 v32, 0x0

    #@2a4
    move/from16 v0, v32

    #@2a6
    move-object/from16 v1, v22

    #@2a8
    iput-boolean v0, v1, Lcom/android/server/content/SyncOperation;->appIdle:Z

    #@2aa
    .line 2636
    move-object/from16 v0, v24

    #@2ac
    move-object/from16 v1, v22

    #@2ae
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@2b1
    goto/16 :goto_0

    #@2b3
    .line 2639
    .end local v22    # "op":Lcom/android/server/content/SyncOperation;
    .end local v25    # "packageName":Ljava/lang/String;
    :cond_11
    invoke-interface/range {v26 .. v26}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@2b6
    move-result-object v30

    #@2b7
    .local v30, "user$iterator":Ljava/util/Iterator;
    :cond_12
    :goto_1
    invoke-interface/range {v30 .. v30}, Ljava/util/Iterator;->hasNext()Z

    #@2ba
    move-result v32

    #@2bb
    if-eqz v32, :cond_13

    #@2bd
    invoke-interface/range {v30 .. v30}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@2c0
    move-result-object v29

    #@2c1
    check-cast v29, Ljava/lang/Integer;

    #@2c3
    .line 2641
    .local v29, "user":Ljava/lang/Integer;
    move-object/from16 v0, p0

    #@2c5
    iget-object v0, v0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    #@2c7
    move-object/from16 v32, v0

    #@2c9
    invoke-static/range {v32 .. v32}, Lcom/android/server/content/SyncManager;->-get23(Lcom/android/server/content/SyncManager;)Landroid/os/UserManager;

    #@2cc
    move-result-object v32

    #@2cd
    invoke-virtual/range {v29 .. v29}, Ljava/lang/Integer;->intValue()I

    #@2d0
    move-result v34

    #@2d1
    move-object/from16 v0, v32

    #@2d3
    move/from16 v1, v34

    #@2d5
    invoke-virtual {v0, v1}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    #@2d8
    move-result-object v32

    #@2d9
    if-nez v32, :cond_12

    #@2db
    .line 2642
    move-object/from16 v0, p0

    #@2dd
    iget-object v0, v0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    #@2df
    move-object/from16 v32, v0

    #@2e1
    invoke-virtual/range {v29 .. v29}, Ljava/lang/Integer;->intValue()I

    #@2e4
    move-result v34

    #@2e5
    move-object/from16 v0, v32

    #@2e7
    move/from16 v1, v34

    #@2e9
    invoke-static {v0, v1}, Lcom/android/server/content/SyncManager;->-wrap11(Lcom/android/server/content/SyncManager;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@2ec
    goto :goto_1

    #@2ed
    .end local v29    # "user":Ljava/lang/Integer;
    :cond_13
    monitor-exit v33

    #@2ee
    .line 2652
    if-eqz v13, :cond_14

    #@2f0
    const-string/jumbo v32, "SyncManager"

    #@2f3
    new-instance v33, Ljava/lang/StringBuilder;

    #@2f5
    invoke-direct/range {v33 .. v33}, Ljava/lang/StringBuilder;-><init>()V

    #@2f8
    const-string/jumbo v34, "sort the candidate operations, size "

    #@2fb
    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2fe
    move-result-object v33

    #@2ff
    invoke-virtual/range {v24 .. v24}, Ljava/util/ArrayList;->size()I

    #@302
    move-result v34

    #@303
    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@306
    move-result-object v33

    #@307
    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@30a
    move-result-object v33

    #@30b
    invoke-static/range {v32 .. v33}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    #@30e
    .line 2653
    :cond_14
    invoke-static/range {v24 .. v24}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    #@311
    .line 2654
    if-eqz v13, :cond_15

    #@313
    const-string/jumbo v32, "SyncManager"

    #@316
    const-string/jumbo v33, "dispatch all ready sync operations"

    #@319
    invoke-static/range {v32 .. v33}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    #@31c
    .line 2655
    :cond_15
    const/4 v12, 0x0

    #@31d
    .local v12, "i":I
    invoke-virtual/range {v24 .. v24}, Ljava/util/ArrayList;->size()I

    #@320
    move-result v4

    #@321
    .local v4, "N":I
    :goto_2
    if-ge v12, v4, :cond_29

    #@323
    .line 2656
    move-object/from16 v0, v24

    #@325
    invoke-virtual {v0, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@328
    move-result-object v9

    #@329
    check-cast v9, Lcom/android/server/content/SyncOperation;

    #@32b
    .line 2657
    .local v9, "candidate":Lcom/android/server/content/SyncOperation;
    invoke-virtual {v9}, Lcom/android/server/content/SyncOperation;->isInitialization()Z

    #@32e
    move-result v10

    #@32f
    .line 2659
    .local v10, "candidateIsInitialization":Z
    const/4 v15, 0x0

    #@330
    .line 2660
    .local v15, "numInit":I
    const/16 v20, 0x0

    #@332
    .line 2661
    .local v20, "numRegular":I
    const/4 v11, 0x0

    #@333
    .line 2662
    .local v11, "conflict":Lcom/android/server/content/SyncManager$ActiveSyncContext;
    const/4 v14, 0x0

    #@334
    .line 2663
    .local v14, "longRunning":Lcom/android/server/content/SyncManager$ActiveSyncContext;
    const/16 v28, 0x0

    #@336
    .line 2664
    .local v28, "toReschedule":Lcom/android/server/content/SyncManager$ActiveSyncContext;
    const/16 v21, 0x0

    #@338
    .line 2666
    .local v21, "oldestNonExpeditedRegular":Lcom/android/server/content/SyncManager$ActiveSyncContext;
    move-object/from16 v0, p0

    #@33a
    iget-object v0, v0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    #@33c
    move-object/from16 v32, v0

    #@33e
    move-object/from16 v0, v32

    #@340
    iget-object v0, v0, Lcom/android/server/content/SyncManager;->mActiveSyncContexts:Ljava/util/ArrayList;

    #@342
    move-object/from16 v32, v0

    #@344
    invoke-interface/range {v32 .. v32}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@347
    move-result-object v7

    #@348
    .end local v11    # "conflict":Lcom/android/server/content/SyncManager$ActiveSyncContext;
    .end local v14    # "longRunning":Lcom/android/server/content/SyncManager$ActiveSyncContext;
    .end local v21    # "oldestNonExpeditedRegular":Lcom/android/server/content/SyncManager$ActiveSyncContext;
    .local v7, "activeSyncContext$iterator":Ljava/util/Iterator;
    :cond_16
    :goto_3
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    #@34b
    move-result v32

    #@34c
    if-eqz v32, :cond_1b

    #@34e
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@351
    move-result-object v6

    #@352
    check-cast v6, Lcom/android/server/content/SyncManager$ActiveSyncContext;

    #@354
    .line 2667
    .local v6, "activeSyncContext":Lcom/android/server/content/SyncManager$ActiveSyncContext;
    iget-object v5, v6, Lcom/android/server/content/SyncManager$ActiveSyncContext;->mSyncOperation:Lcom/android/server/content/SyncOperation;

    #@356
    .line 2668
    .local v5, "activeOp":Lcom/android/server/content/SyncOperation;
    invoke-virtual {v5}, Lcom/android/server/content/SyncOperation;->isInitialization()Z

    #@359
    move-result v32

    #@35a
    if-eqz v32, :cond_18

    #@35c
    .line 2669
    add-int/lit8 v15, v15, 0x1

    #@35e
    .line 2680
    :cond_17
    :goto_4
    invoke-virtual {v5, v9}, Lcom/android/server/content/SyncOperation;->isConflict(Lcom/android/server/content/SyncOperation;)Z

    #@361
    move-result v32

    #@362
    if-eqz v32, :cond_1a

    #@364
    .line 2681
    move-object v11, v6

    #@365
    .local v11, "conflict":Lcom/android/server/content/SyncManager$ActiveSyncContext;
    goto :goto_3

    #@366
    .line 2671
    .end local v11    # "conflict":Lcom/android/server/content/SyncManager$ActiveSyncContext;
    :cond_18
    add-int/lit8 v20, v20, 0x1

    #@368
    .line 2672
    invoke-virtual {v5}, Lcom/android/server/content/SyncOperation;->isExpedited()Z

    #@36b
    move-result v32

    #@36c
    if-nez v32, :cond_17

    #@36e
    .line 2673
    if-eqz v21, :cond_19

    #@370
    .line 2674
    move-object/from16 v0, v21

    #@372
    iget-wide v0, v0, Lcom/android/server/content/SyncManager$ActiveSyncContext;->mStartTime:J

    #@374
    move-wide/from16 v32, v0

    #@376
    .line 2675
    iget-wide v0, v6, Lcom/android/server/content/SyncManager$ActiveSyncContext;->mStartTime:J

    #@378
    move-wide/from16 v34, v0

    #@37a
    .line 2674
    cmp-long v32, v32, v34

    #@37c
    if-lez v32, :cond_17

    #@37e
    .line 2676
    :cond_19
    move-object/from16 v21, v6

    #@380
    .local v21, "oldestNonExpeditedRegular":Lcom/android/server/content/SyncManager$ActiveSyncContext;
    goto :goto_4

    #@381
    .line 2684
    .end local v21    # "oldestNonExpeditedRegular":Lcom/android/server/content/SyncManager$ActiveSyncContext;
    :cond_1a
    invoke-virtual {v5}, Lcom/android/server/content/SyncOperation;->isInitialization()Z

    #@384
    move-result v32

    #@385
    move/from16 v0, v32

    #@387
    if-ne v10, v0, :cond_16

    #@389
    .line 2685
    iget-wide v0, v6, Lcom/android/server/content/SyncManager$ActiveSyncContext;->mStartTime:J

    #@38b
    move-wide/from16 v32, v0

    #@38d
    invoke-static {}, Lcom/android/server/content/SyncManager;->-get3()J

    #@390
    move-result-wide v34

    #@391
    add-long v32, v32, v34

    #@393
    cmp-long v32, v32, v18

    #@395
    if-gez v32, :cond_16

    #@397
    .line 2686
    move-object v14, v6

    #@398
    .local v14, "longRunning":Lcom/android/server/content/SyncManager$ActiveSyncContext;
    goto :goto_3

    #@399
    .line 2692
    .end local v5    # "activeOp":Lcom/android/server/content/SyncOperation;
    .end local v6    # "activeSyncContext":Lcom/android/server/content/SyncManager$ActiveSyncContext;
    .end local v14    # "longRunning":Lcom/android/server/content/SyncManager$ActiveSyncContext;
    :cond_1b
    if-eqz v13, :cond_1c

    #@39b
    .line 2693
    const-string/jumbo v32, "SyncManager"

    #@39e
    new-instance v33, Ljava/lang/StringBuilder;

    #@3a0
    invoke-direct/range {v33 .. v33}, Ljava/lang/StringBuilder;-><init>()V

    #@3a3
    const-string/jumbo v34, "candidate "

    #@3a6
    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3a9
    move-result-object v33

    #@3aa
    add-int/lit8 v34, v12, 0x1

    #@3ac
    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@3af
    move-result-object v33

    #@3b0
    const-string/jumbo v34, " of "

    #@3b3
    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3b6
    move-result-object v33

    #@3b7
    move-object/from16 v0, v33

    #@3b9
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@3bc
    move-result-object v33

    #@3bd
    const-string/jumbo v34, ": "

    #@3c0
    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3c3
    move-result-object v33

    #@3c4
    move-object/from16 v0, v33

    #@3c6
    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@3c9
    move-result-object v33

    #@3ca
    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3cd
    move-result-object v33

    #@3ce
    invoke-static/range {v32 .. v33}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    #@3d1
    .line 2694
    const-string/jumbo v32, "SyncManager"

    #@3d4
    new-instance v33, Ljava/lang/StringBuilder;

    #@3d6
    invoke-direct/range {v33 .. v33}, Ljava/lang/StringBuilder;-><init>()V

    #@3d9
    const-string/jumbo v34, "  numActiveInit="

    #@3dc
    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3df
    move-result-object v33

    #@3e0
    move-object/from16 v0, v33

    #@3e2
    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@3e5
    move-result-object v33

    #@3e6
    const-string/jumbo v34, ", numActiveRegular="

    #@3e9
    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3ec
    move-result-object v33

    #@3ed
    move-object/from16 v0, v33

    #@3ef
    move/from16 v1, v20

    #@3f1
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@3f4
    move-result-object v33

    #@3f5
    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3f8
    move-result-object v33

    #@3f9
    invoke-static/range {v32 .. v33}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    #@3fc
    .line 2695
    const-string/jumbo v32, "SyncManager"

    #@3ff
    new-instance v33, Ljava/lang/StringBuilder;

    #@401
    invoke-direct/range {v33 .. v33}, Ljava/lang/StringBuilder;-><init>()V

    #@404
    const-string/jumbo v34, "  longRunning: "

    #@407
    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@40a
    move-result-object v33

    #@40b
    move-object/from16 v0, v33

    #@40d
    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@410
    move-result-object v33

    #@411
    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@414
    move-result-object v33

    #@415
    invoke-static/range {v32 .. v33}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    #@418
    .line 2696
    const-string/jumbo v32, "SyncManager"

    #@41b
    new-instance v33, Ljava/lang/StringBuilder;

    #@41d
    invoke-direct/range {v33 .. v33}, Ljava/lang/StringBuilder;-><init>()V

    #@420
    const-string/jumbo v34, "  conflict: "

    #@423
    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@426
    move-result-object v33

    #@427
    move-object/from16 v0, v33

    #@429
    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@42c
    move-result-object v33

    #@42d
    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@430
    move-result-object v33

    #@431
    invoke-static/range {v32 .. v33}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    #@434
    .line 2697
    const-string/jumbo v32, "SyncManager"

    #@437
    new-instance v33, Ljava/lang/StringBuilder;

    #@439
    invoke-direct/range {v33 .. v33}, Ljava/lang/StringBuilder;-><init>()V

    #@43c
    const-string/jumbo v34, "  oldestNonExpeditedRegular: "

    #@43f
    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@442
    move-result-object v33

    #@443
    move-object/from16 v0, v33

    #@445
    move-object/from16 v1, v21

    #@447
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@44a
    move-result-object v33

    #@44b
    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@44e
    move-result-object v33

    #@44f
    invoke-static/range {v32 .. v33}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    #@452
    .line 2700
    :cond_1c
    if-eqz v10, :cond_20

    #@454
    .line 2701
    invoke-static {}, Lcom/android/server/content/SyncManager;->-get1()I

    #@457
    move-result v32

    #@458
    move/from16 v0, v32

    #@45a
    if-ge v15, v0, :cond_1f

    #@45c
    const/16 v27, 0x1

    #@45e
    .line 2704
    .local v27, "roomAvailable":Z
    :goto_5
    if-eqz v11, :cond_26

    #@460
    .line 2705
    if-eqz v10, :cond_1d

    #@462
    iget-object v0, v11, Lcom/android/server/content/SyncManager$ActiveSyncContext;->mSyncOperation:Lcom/android/server/content/SyncOperation;

    #@464
    move-object/from16 v32, v0

    #@466
    invoke-virtual/range {v32 .. v32}, Lcom/android/server/content/SyncOperation;->isInitialization()Z

    #@469
    move-result v32

    #@46a
    if-eqz v32, :cond_22

    #@46c
    .line 2712
    :cond_1d
    invoke-virtual {v9}, Lcom/android/server/content/SyncOperation;->isExpedited()Z

    #@46f
    move-result v32

    #@470
    if-eqz v32, :cond_1e

    #@472
    iget-object v0, v11, Lcom/android/server/content/SyncManager$ActiveSyncContext;->mSyncOperation:Lcom/android/server/content/SyncOperation;

    #@474
    move-object/from16 v32, v0

    #@476
    invoke-virtual/range {v32 .. v32}, Lcom/android/server/content/SyncOperation;->isExpedited()Z

    #@479
    move-result v32

    #@47a
    if-eqz v32, :cond_25

    #@47c
    .line 2655
    .end local v28    # "toReschedule":Lcom/android/server/content/SyncManager$ActiveSyncContext;
    :cond_1e
    :goto_6
    add-int/lit8 v12, v12, 0x1

    #@47e
    goto/16 :goto_2

    #@480
    .line 2701
    .end local v27    # "roomAvailable":Z
    .restart local v28    # "toReschedule":Lcom/android/server/content/SyncManager$ActiveSyncContext;
    :cond_1f
    const/16 v27, 0x0

    #@482
    .restart local v27    # "roomAvailable":Z
    goto :goto_5

    #@483
    .line 2702
    .end local v27    # "roomAvailable":Z
    :cond_20
    invoke-static {}, Lcom/android/server/content/SyncManager;->-get2()I

    #@486
    move-result v32

    #@487
    move/from16 v0, v20

    #@489
    move/from16 v1, v32

    #@48b
    if-ge v0, v1, :cond_21

    #@48d
    const/16 v27, 0x1

    #@48f
    .restart local v27    # "roomAvailable":Z
    goto :goto_5

    #@490
    .end local v27    # "roomAvailable":Z
    :cond_21
    const/16 v27, 0x0

    #@492
    .restart local v27    # "roomAvailable":Z
    goto :goto_5

    #@493
    .line 2706
    :cond_22
    invoke-static {}, Lcom/android/server/content/SyncManager;->-get1()I

    #@496
    move-result v32

    #@497
    move/from16 v0, v32

    #@499
    if-ge v15, v0, :cond_1d

    #@49b
    .line 2707
    move-object/from16 v28, v11

    #@49d
    .line 2708
    .local v28, "toReschedule":Lcom/android/server/content/SyncManager$ActiveSyncContext;
    const-string/jumbo v32, "SyncManager"

    #@4a0
    const/16 v33, 0x2

    #@4a2
    invoke-static/range {v32 .. v33}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    #@4a5
    move-result v32

    #@4a6
    if-eqz v32, :cond_23

    #@4a8
    .line 2709
    const-string/jumbo v32, "SyncManager"

    #@4ab
    new-instance v33, Ljava/lang/StringBuilder;

    #@4ad
    invoke-direct/range {v33 .. v33}, Ljava/lang/StringBuilder;-><init>()V

    #@4b0
    const-string/jumbo v34, "canceling and rescheduling sync since an initialization takes higher priority, "

    #@4b3
    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4b6
    move-result-object v33

    #@4b7
    move-object/from16 v0, v33

    #@4b9
    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@4bc
    move-result-object v33

    #@4bd
    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@4c0
    move-result-object v33

    #@4c1
    invoke-static/range {v32 .. v33}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    #@4c4
    .line 2751
    .end local v28    # "toReschedule":Lcom/android/server/content/SyncManager$ActiveSyncContext;
    :cond_23
    :goto_7
    if-eqz v28, :cond_24

    #@4c6
    .line 2752
    const/16 v32, 0x0

    #@4c8
    move-object/from16 v0, p0

    #@4ca
    move-object/from16 v1, v32

    #@4cc
    move-object/from16 v2, v28

    #@4ce
    invoke-direct {v0, v1, v2}, Lcom/android/server/content/SyncManager$SyncHandler;->runSyncFinishedOrCanceledH(Landroid/content/SyncResult;Lcom/android/server/content/SyncManager$ActiveSyncContext;)V

    #@4d1
    .line 2753
    move-object/from16 v0, p0

    #@4d3
    iget-object v0, v0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    #@4d5
    move-object/from16 v32, v0

    #@4d7
    move-object/from16 v0, v28

    #@4d9
    iget-object v0, v0, Lcom/android/server/content/SyncManager$ActiveSyncContext;->mSyncOperation:Lcom/android/server/content/SyncOperation;

    #@4db
    move-object/from16 v33, v0

    #@4dd
    invoke-virtual/range {v32 .. v33}, Lcom/android/server/content/SyncManager;->scheduleSyncOperation(Lcom/android/server/content/SyncOperation;)V

    #@4e0
    .line 2755
    :cond_24
    move-object/from16 v0, p0

    #@4e2
    iget-object v0, v0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    #@4e4
    move-object/from16 v32, v0

    #@4e6
    invoke-static/range {v32 .. v32}, Lcom/android/server/content/SyncManager;->-get20(Lcom/android/server/content/SyncManager;)Lcom/android/server/content/SyncQueue;

    #@4e9
    move-result-object v33

    #@4ea
    monitor-enter v33

    #@4eb
    .line 2756
    :try_start_2
    move-object/from16 v0, p0

    #@4ed
    iget-object v0, v0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    #@4ef
    move-object/from16 v32, v0

    #@4f1
    invoke-static/range {v32 .. v32}, Lcom/android/server/content/SyncManager;->-get20(Lcom/android/server/content/SyncManager;)Lcom/android/server/content/SyncQueue;

    #@4f4
    move-result-object v32

    #@4f5
    move-object/from16 v0, v32

    #@4f7
    invoke-virtual {v0, v9}, Lcom/android/server/content/SyncQueue;->remove(Lcom/android/server/content/SyncOperation;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    #@4fa
    monitor-exit v33

    #@4fb
    .line 2758
    move-object/from16 v0, p0

    #@4fd
    invoke-direct {v0, v9}, Lcom/android/server/content/SyncManager$SyncHandler;->dispatchSyncOperation(Lcom/android/server/content/SyncOperation;)Z

    #@500
    goto/16 :goto_6

    #@502
    .line 2714
    .local v28, "toReschedule":Lcom/android/server/content/SyncManager$ActiveSyncContext;
    :cond_25
    iget-object v0, v11, Lcom/android/server/content/SyncManager$ActiveSyncContext;->mSyncOperation:Lcom/android/server/content/SyncOperation;

    #@504
    move-object/from16 v32, v0

    #@506
    invoke-virtual/range {v32 .. v32}, Lcom/android/server/content/SyncOperation;->isInitialization()Z

    #@509
    move-result v32

    #@50a
    .line 2713
    move/from16 v0, v32

    #@50c
    if-ne v10, v0, :cond_1e

    #@50e
    .line 2715
    move-object/from16 v28, v11

    #@510
    .line 2716
    .local v28, "toReschedule":Lcom/android/server/content/SyncManager$ActiveSyncContext;
    const-string/jumbo v32, "SyncManager"

    #@513
    const/16 v33, 0x2

    #@515
    invoke-static/range {v32 .. v33}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    #@518
    move-result v32

    #@519
    if-eqz v32, :cond_23

    #@51b
    .line 2717
    const-string/jumbo v32, "SyncManager"

    #@51e
    new-instance v33, Ljava/lang/StringBuilder;

    #@520
    invoke-direct/range {v33 .. v33}, Ljava/lang/StringBuilder;-><init>()V

    #@523
    const-string/jumbo v34, "canceling and rescheduling sync since an expedited takes higher priority, "

    #@526
    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@529
    move-result-object v33

    #@52a
    move-object/from16 v0, v33

    #@52c
    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@52f
    move-result-object v33

    #@530
    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@533
    move-result-object v33

    #@534
    invoke-static/range {v32 .. v33}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    #@537
    goto :goto_7

    #@538
    .line 2723
    .local v28, "toReschedule":Lcom/android/server/content/SyncManager$ActiveSyncContext;
    :cond_26
    if-nez v27, :cond_23

    #@53a
    .line 2725
    invoke-virtual {v9}, Lcom/android/server/content/SyncOperation;->isExpedited()Z

    #@53d
    move-result v32

    #@53e
    if-eqz v32, :cond_27

    #@540
    if-eqz v21, :cond_27

    #@542
    .line 2726
    if-eqz v10, :cond_28

    #@544
    .line 2735
    :cond_27
    if-eqz v14, :cond_1e

    #@546
    .line 2737
    iget-object v0, v14, Lcom/android/server/content/SyncManager$ActiveSyncContext;->mSyncOperation:Lcom/android/server/content/SyncOperation;

    #@548
    move-object/from16 v32, v0

    #@54a
    invoke-virtual/range {v32 .. v32}, Lcom/android/server/content/SyncOperation;->isInitialization()Z

    #@54d
    move-result v32

    #@54e
    .line 2736
    move/from16 v0, v32

    #@550
    if-ne v10, v0, :cond_1e

    #@552
    .line 2740
    move-object/from16 v28, v14

    #@554
    .line 2741
    .local v28, "toReschedule":Lcom/android/server/content/SyncManager$ActiveSyncContext;
    const-string/jumbo v32, "SyncManager"

    #@557
    const/16 v33, 0x2

    #@559
    invoke-static/range {v32 .. v33}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    #@55c
    move-result v32

    #@55d
    if-eqz v32, :cond_23

    #@55f
    .line 2742
    const-string/jumbo v32, "SyncManager"

    #@562
    new-instance v33, Ljava/lang/StringBuilder;

    #@564
    invoke-direct/range {v33 .. v33}, Ljava/lang/StringBuilder;-><init>()V

    #@567
    const-string/jumbo v34, "canceling and rescheduling sync since it ran roo long, "

    #@56a
    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@56d
    move-result-object v33

    #@56e
    move-object/from16 v0, v33

    #@570
    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@573
    move-result-object v33

    #@574
    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@577
    move-result-object v33

    #@578
    invoke-static/range {v32 .. v33}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    #@57b
    goto/16 :goto_7

    #@57d
    .line 2730
    .local v28, "toReschedule":Lcom/android/server/content/SyncManager$ActiveSyncContext;
    :cond_28
    move-object/from16 v28, v21

    #@57f
    .line 2731
    .local v28, "toReschedule":Lcom/android/server/content/SyncManager$ActiveSyncContext;
    const-string/jumbo v32, "SyncManager"

    #@582
    const/16 v33, 0x2

    #@584
    invoke-static/range {v32 .. v33}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    #@587
    move-result v32

    #@588
    if-eqz v32, :cond_23

    #@58a
    .line 2732
    const-string/jumbo v32, "SyncManager"

    #@58d
    new-instance v33, Ljava/lang/StringBuilder;

    #@58f
    invoke-direct/range {v33 .. v33}, Ljava/lang/StringBuilder;-><init>()V

    #@592
    const-string/jumbo v34, "canceling and rescheduling sync since an expedited is ready to run, "

    #@595
    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@598
    move-result-object v33

    #@599
    move-object/from16 v0, v33

    #@59b
    move-object/from16 v1, v21

    #@59d
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@5a0
    move-result-object v33

    #@5a1
    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@5a4
    move-result-object v33

    #@5a5
    invoke-static/range {v32 .. v33}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    #@5a8
    goto/16 :goto_7

    #@5aa
    .line 2755
    .end local v28    # "toReschedule":Lcom/android/server/content/SyncManager$ActiveSyncContext;
    :catchall_1
    move-exception v32

    #@5ab
    monitor-exit v33

    #@5ac
    throw v32

    #@5ad
    .line 2761
    .end local v7    # "activeSyncContext$iterator":Ljava/util/Iterator;
    .end local v9    # "candidate":Lcom/android/server/content/SyncOperation;
    .end local v10    # "candidateIsInitialization":Z
    .end local v15    # "numInit":I
    .end local v20    # "numRegular":I
    .end local v27    # "roomAvailable":Z
    :cond_29
    return-wide v16
.end method

.method private runBoundToAdapter(Lcom/android/server/content/SyncManager$ActiveSyncContext;Landroid/os/IBinder;)V
    .locals 8
    .param p1, "activeSyncContext"    # Lcom/android/server/content/SyncManager$ActiveSyncContext;
    .param p2, "syncAdapter"    # Landroid/os/IBinder;

    #@0
    .prologue
    .line 2965
    iget-object v2, p1, Lcom/android/server/content/SyncManager$ActiveSyncContext;->mSyncOperation:Lcom/android/server/content/SyncOperation;

    #@2
    .line 2967
    .local v2, "syncOperation":Lcom/android/server/content/SyncOperation;
    const/4 v3, 0x1

    #@3
    :try_start_0
    iput-boolean v3, p1, Lcom/android/server/content/SyncManager$ActiveSyncContext;->mIsLinkedToDeath:Z

    #@5
    .line 2968
    const/4 v3, 0x0

    #@6
    invoke-interface {p2, p1, v3}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V

    #@9
    .line 2970
    iget-object v3, v2, Lcom/android/server/content/SyncOperation;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    #@b
    iget-boolean v3, v3, Lcom/android/server/content/SyncStorageEngine$EndPoint;->target_provider:Z

    #@d
    if-eqz v3, :cond_1

    #@f
    .line 2971
    invoke-static {p2}, Landroid/content/ISyncAdapter$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/ISyncAdapter;

    #@12
    move-result-object v3

    #@13
    iput-object v3, p1, Lcom/android/server/content/SyncManager$ActiveSyncContext;->mSyncAdapter:Landroid/content/ISyncAdapter;

    #@15
    .line 2972
    iget-object v3, p1, Lcom/android/server/content/SyncManager$ActiveSyncContext;->mSyncAdapter:Landroid/content/ISyncAdapter;

    #@17
    .line 2973
    iget-object v4, v2, Lcom/android/server/content/SyncOperation;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    #@19
    iget-object v4, v4, Lcom/android/server/content/SyncStorageEngine$EndPoint;->provider:Ljava/lang/String;

    #@1b
    .line 2974
    iget-object v5, v2, Lcom/android/server/content/SyncOperation;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    #@1d
    iget-object v5, v5, Lcom/android/server/content/SyncStorageEngine$EndPoint;->account:Landroid/accounts/Account;

    #@1f
    iget-object v6, v2, Lcom/android/server/content/SyncOperation;->extras:Landroid/os/Bundle;

    #@21
    .line 2972
    invoke-interface {v3, p1, v4, v5, v6}, Landroid/content/ISyncAdapter;->startSync(Landroid/content/ISyncContext;Ljava/lang/String;Landroid/accounts/Account;Landroid/os/Bundle;)V

    #@24
    .line 2964
    :cond_0
    :goto_0
    return-void

    #@25
    .line 2975
    :cond_1
    iget-object v3, v2, Lcom/android/server/content/SyncOperation;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    #@27
    iget-boolean v3, v3, Lcom/android/server/content/SyncStorageEngine$EndPoint;->target_service:Z

    #@29
    if-eqz v3, :cond_0

    #@2b
    .line 2977
    invoke-static {p2}, Landroid/content/ISyncServiceAdapter$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/ISyncServiceAdapter;

    #@2e
    move-result-object v3

    #@2f
    .line 2976
    iput-object v3, p1, Lcom/android/server/content/SyncManager$ActiveSyncContext;->mSyncServiceAdapter:Landroid/content/ISyncServiceAdapter;

    #@31
    .line 2978
    iget-object v3, p1, Lcom/android/server/content/SyncManager$ActiveSyncContext;->mSyncServiceAdapter:Landroid/content/ISyncServiceAdapter;

    #@33
    .line 2979
    iget-object v4, v2, Lcom/android/server/content/SyncOperation;->extras:Landroid/os/Bundle;

    #@35
    .line 2978
    invoke-interface {v3, p1, v4}, Landroid/content/ISyncServiceAdapter;->startSync(Landroid/content/ISyncContext;Landroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1

    #@38
    goto :goto_0

    #@39
    .line 2981
    :catch_0
    move-exception v1

    #@3a
    .line 2982
    .local v1, "remoteExc":Landroid/os/RemoteException;
    const-string/jumbo v3, "SyncManager"

    #@3d
    const-string/jumbo v4, "maybeStartNextSync: caught a RemoteException, rescheduling"

    #@40
    invoke-static {v3, v4, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@43
    .line 2983
    invoke-direct {p0, p1}, Lcom/android/server/content/SyncManager$SyncHandler;->closeActiveSyncContext(Lcom/android/server/content/SyncManager$ActiveSyncContext;)V

    #@46
    .line 2984
    iget-object v3, p0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    #@48
    invoke-static {v3, v2}, Lcom/android/server/content/SyncManager;->-wrap10(Lcom/android/server/content/SyncManager;Lcom/android/server/content/SyncOperation;)V

    #@4b
    .line 2985
    iget-object v3, p0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    #@4d
    .line 2986
    new-instance v4, Lcom/android/server/content/SyncOperation;

    #@4f
    const-wide/16 v6, 0x0

    #@51
    invoke-direct {v4, v2, v6, v7}, Lcom/android/server/content/SyncOperation;-><init>(Lcom/android/server/content/SyncOperation;J)V

    #@54
    .line 2985
    invoke-virtual {v3, v4}, Lcom/android/server/content/SyncManager;->scheduleSyncOperation(Lcom/android/server/content/SyncOperation;)V

    #@57
    goto :goto_0

    #@58
    .line 2987
    .end local v1    # "remoteExc":Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    #@59
    .line 2988
    .local v0, "exc":Ljava/lang/RuntimeException;
    invoke-direct {p0, p1}, Lcom/android/server/content/SyncManager$SyncHandler;->closeActiveSyncContext(Lcom/android/server/content/SyncManager$ActiveSyncContext;)V

    #@5c
    .line 2989
    const-string/jumbo v3, "SyncManager"

    #@5f
    new-instance v4, Ljava/lang/StringBuilder;

    #@61
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@64
    const-string/jumbo v5, "Caught RuntimeException while starting the sync "

    #@67
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6a
    move-result-object v4

    #@6b
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@6e
    move-result-object v4

    #@6f
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@72
    move-result-object v4

    #@73
    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@76
    goto :goto_0
.end method

.method private runSyncFinishedOrCanceledH(Landroid/content/SyncResult;Lcom/android/server/content/SyncManager$ActiveSyncContext;)V
    .locals 31
    .param p1, "syncResult"    # Landroid/content/SyncResult;
    .param p2, "activeSyncContext"    # Lcom/android/server/content/SyncManager$ActiveSyncContext;

    #@0
    .prologue
    .line 3021
    const-string/jumbo v3, "SyncManager"

    #@3
    const/4 v4, 0x2

    #@4
    invoke-static {v3, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    #@7
    move-result v30

    #@8
    .line 3023
    .local v30, "isLoggable":Z
    move-object/from16 v0, p2

    #@a
    iget-object v6, v0, Lcom/android/server/content/SyncManager$ActiveSyncContext;->mSyncOperation:Lcom/android/server/content/SyncOperation;

    #@c
    .line 3024
    .local v6, "syncOperation":Lcom/android/server/content/SyncOperation;
    iget-object v0, v6, Lcom/android/server/content/SyncOperation;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    #@e
    move-object/from16 v29, v0

    #@10
    .line 3026
    .local v29, "info":Lcom/android/server/content/SyncStorageEngine$EndPoint;
    move-object/from16 v0, p2

    #@12
    iget-boolean v3, v0, Lcom/android/server/content/SyncManager$ActiveSyncContext;->mIsLinkedToDeath:Z

    #@14
    if-eqz v3, :cond_0

    #@16
    .line 3027
    move-object/from16 v0, v29

    #@18
    iget-boolean v3, v0, Lcom/android/server/content/SyncStorageEngine$EndPoint;->target_provider:Z

    #@1a
    if-eqz v3, :cond_3

    #@1c
    .line 3028
    move-object/from16 v0, p2

    #@1e
    iget-object v3, v0, Lcom/android/server/content/SyncManager$ActiveSyncContext;->mSyncAdapter:Landroid/content/ISyncAdapter;

    #@20
    invoke-interface {v3}, Landroid/content/ISyncAdapter;->asBinder()Landroid/os/IBinder;

    #@23
    move-result-object v3

    #@24
    const/4 v4, 0x0

    #@25
    move-object/from16 v0, p2

    #@27
    invoke-interface {v3, v0, v4}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    #@2a
    .line 3033
    :goto_0
    const/4 v3, 0x0

    #@2b
    move-object/from16 v0, p2

    #@2d
    iput-boolean v3, v0, Lcom/android/server/content/SyncManager$ActiveSyncContext;->mIsLinkedToDeath:Z

    #@2f
    .line 3035
    :cond_0
    move-object/from16 v0, p0

    #@31
    move-object/from16 v1, p2

    #@33
    invoke-direct {v0, v1}, Lcom/android/server/content/SyncManager$SyncHandler;->closeActiveSyncContext(Lcom/android/server/content/SyncManager$ActiveSyncContext;)V

    #@36
    .line 3036
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    #@39
    move-result-wide v4

    #@3a
    move-object/from16 v0, p2

    #@3c
    iget-wide v12, v0, Lcom/android/server/content/SyncManager$ActiveSyncContext;->mStartTime:J

    #@3e
    sub-long v10, v4, v12

    #@40
    .line 3040
    .local v10, "elapsedTime":J
    if-eqz p1, :cond_5

    #@42
    .line 3041
    if-eqz v30, :cond_1

    #@44
    .line 3042
    const-string/jumbo v3, "SyncManager"

    #@47
    new-instance v4, Ljava/lang/StringBuilder;

    #@49
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@4c
    const-string/jumbo v5, "runSyncFinishedOrCanceled [finished]: "

    #@4f
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@52
    move-result-object v4

    #@53
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@56
    move-result-object v4

    #@57
    .line 3043
    const-string/jumbo v5, ", result "

    #@5a
    .line 3042
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5d
    move-result-object v4

    #@5e
    move-object/from16 v0, p1

    #@60
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@63
    move-result-object v4

    #@64
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@67
    move-result-object v4

    #@68
    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    #@6b
    .line 3046
    :cond_1
    invoke-virtual/range {p1 .. p1}, Landroid/content/SyncResult;->hasError()Z

    #@6e
    move-result v3

    #@6f
    if-nez v3, :cond_4

    #@71
    .line 3047
    const-string/jumbo v7, "success"

    #@74
    .line 3049
    .local v7, "historyMessage":Ljava/lang/String;
    const/4 v9, 0x0

    #@75
    .line 3050
    .local v9, "downstreamActivity":I
    const/4 v8, 0x0

    #@76
    .line 3051
    .local v8, "upstreamActivity":I
    move-object/from16 v0, p0

    #@78
    iget-object v3, v0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    #@7a
    invoke-static {v3, v6}, Lcom/android/server/content/SyncManager;->-wrap7(Lcom/android/server/content/SyncManager;Lcom/android/server/content/SyncOperation;)V

    #@7d
    .line 3064
    :goto_1
    move-object/from16 v0, p0

    #@7f
    iget-object v3, v0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    #@81
    move-object/from16 v0, p1

    #@83
    iget-wide v4, v0, Landroid/content/SyncResult;->delayUntil:J

    #@85
    invoke-static {v3, v6, v4, v5}, Lcom/android/server/content/SyncManager;->-wrap19(Lcom/android/server/content/SyncManager;Lcom/android/server/content/SyncOperation;J)V

    #@88
    .line 3087
    :goto_2
    move-object/from16 v0, p2

    #@8a
    iget-wide v4, v0, Lcom/android/server/content/SyncManager$ActiveSyncContext;->mHistoryRowId:J

    #@8c
    move-object/from16 v3, p0

    #@8e
    invoke-virtual/range {v3 .. v11}, Lcom/android/server/content/SyncManager$SyncHandler;->stopSyncEvent(JLcom/android/server/content/SyncOperation;Ljava/lang/String;IIJ)V

    #@91
    .line 3090
    move-object/from16 v0, v29

    #@93
    iget-boolean v3, v0, Lcom/android/server/content/SyncStorageEngine$EndPoint;->target_provider:Z

    #@95
    if-eqz v3, :cond_a

    #@97
    .line 3091
    if-eqz p1, :cond_9

    #@99
    move-object/from16 v0, p1

    #@9b
    iget-boolean v3, v0, Landroid/content/SyncResult;->tooManyDeletions:Z

    #@9d
    if-eqz v3, :cond_9

    #@9f
    .line 3092
    move-object/from16 v0, v29

    #@a1
    iget-object v14, v0, Lcom/android/server/content/SyncStorageEngine$EndPoint;->account:Landroid/accounts/Account;

    #@a3
    .line 3093
    move-object/from16 v0, v29

    #@a5
    iget-object v15, v0, Lcom/android/server/content/SyncStorageEngine$EndPoint;->provider:Ljava/lang/String;

    #@a7
    move-object/from16 v0, p1

    #@a9
    iget-object v3, v0, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    #@ab
    iget-wide v0, v3, Landroid/content/SyncStats;->numDeletes:J

    #@ad
    move-wide/from16 v16, v0

    #@af
    .line 3094
    move-object/from16 v0, v29

    #@b1
    iget v0, v0, Lcom/android/server/content/SyncStorageEngine$EndPoint;->userId:I

    #@b3
    move/from16 v18, v0

    #@b5
    move-object/from16 v13, p0

    #@b7
    .line 3092
    invoke-direct/range {v13 .. v18}, Lcom/android/server/content/SyncManager$SyncHandler;->installHandleTooManyDeletesNotification(Landroid/accounts/Account;Ljava/lang/String;JI)V

    #@ba
    .line 3100
    :goto_3
    if-eqz p1, :cond_2

    #@bc
    move-object/from16 v0, p1

    #@be
    iget-boolean v3, v0, Landroid/content/SyncResult;->fullSyncRequested:Z

    #@c0
    if-eqz v3, :cond_2

    #@c2
    .line 3101
    move-object/from16 v0, p0

    #@c4
    iget-object v3, v0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    #@c6
    .line 3102
    new-instance v13, Lcom/android/server/content/SyncOperation;

    #@c8
    move-object/from16 v0, v29

    #@ca
    iget-object v14, v0, Lcom/android/server/content/SyncStorageEngine$EndPoint;->account:Landroid/accounts/Account;

    #@cc
    move-object/from16 v0, v29

    #@ce
    iget v15, v0, Lcom/android/server/content/SyncStorageEngine$EndPoint;->userId:I

    #@d0
    .line 3103
    iget v0, v6, Lcom/android/server/content/SyncOperation;->reason:I

    #@d2
    move/from16 v16, v0

    #@d4
    .line 3104
    iget v0, v6, Lcom/android/server/content/SyncOperation;->syncSource:I

    #@d6
    move/from16 v17, v0

    #@d8
    move-object/from16 v0, v29

    #@da
    iget-object v0, v0, Lcom/android/server/content/SyncStorageEngine$EndPoint;->provider:Ljava/lang/String;

    #@dc
    move-object/from16 v18, v0

    #@de
    new-instance v19, Landroid/os/Bundle;

    #@e0
    invoke-direct/range {v19 .. v19}, Landroid/os/Bundle;-><init>()V

    #@e3
    .line 3105
    const-wide/16 v20, 0x0

    #@e5
    const-wide/16 v22, 0x0

    #@e7
    .line 3106
    iget-wide v0, v6, Lcom/android/server/content/SyncOperation;->backoff:J

    #@e9
    move-wide/from16 v24, v0

    #@eb
    iget-wide v0, v6, Lcom/android/server/content/SyncOperation;->delayUntil:J

    #@ed
    move-wide/from16 v26, v0

    #@ef
    .line 3107
    iget-boolean v0, v6, Lcom/android/server/content/SyncOperation;->allowParallelSyncs:Z

    #@f1
    move/from16 v28, v0

    #@f3
    .line 3102
    invoke-direct/range {v13 .. v28}, Lcom/android/server/content/SyncOperation;-><init>(Landroid/accounts/Account;IIILjava/lang/String;Landroid/os/Bundle;JJJJZ)V

    #@f6
    .line 3101
    invoke-virtual {v3, v13}, Lcom/android/server/content/SyncManager;->scheduleSyncOperation(Lcom/android/server/content/SyncOperation;)V

    #@f9
    .line 3020
    :cond_2
    :goto_4
    return-void

    #@fa
    .line 3030
    .end local v7    # "historyMessage":Ljava/lang/String;
    .end local v8    # "upstreamActivity":I
    .end local v9    # "downstreamActivity":I
    .end local v10    # "elapsedTime":J
    :cond_3
    move-object/from16 v0, p2

    #@fc
    iget-object v3, v0, Lcom/android/server/content/SyncManager$ActiveSyncContext;->mSyncServiceAdapter:Landroid/content/ISyncServiceAdapter;

    #@fe
    invoke-interface {v3}, Landroid/content/ISyncServiceAdapter;->asBinder()Landroid/os/IBinder;

    #@101
    move-result-object v3

    #@102
    .line 3031
    const/4 v4, 0x0

    #@103
    .line 3030
    move-object/from16 v0, p2

    #@105
    invoke-interface {v3, v0, v4}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    #@108
    goto/16 :goto_0

    #@10a
    .line 3053
    .restart local v10    # "elapsedTime":J
    :cond_4
    const-string/jumbo v3, "SyncManager"

    #@10d
    new-instance v4, Ljava/lang/StringBuilder;

    #@10f
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@112
    const-string/jumbo v5, "failed sync operation "

    #@115
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@118
    move-result-object v4

    #@119
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@11c
    move-result-object v4

    #@11d
    const-string/jumbo v5, ", "

    #@120
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@123
    move-result-object v4

    #@124
    move-object/from16 v0, p1

    #@126
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@129
    move-result-object v4

    #@12a
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@12d
    move-result-object v4

    #@12e
    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@131
    .line 3055
    move-object/from16 v0, p0

    #@133
    iget-object v3, v0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    #@135
    invoke-static {v3, v6}, Lcom/android/server/content/SyncManager;->-wrap10(Lcom/android/server/content/SyncManager;Lcom/android/server/content/SyncOperation;)V

    #@138
    .line 3057
    move-object/from16 v0, p0

    #@13a
    iget-object v3, v0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    #@13c
    move-object/from16 v0, p1

    #@13e
    invoke-virtual {v3, v0, v6}, Lcom/android/server/content/SyncManager;->maybeRescheduleSync(Landroid/content/SyncResult;Lcom/android/server/content/SyncOperation;)V

    #@141
    .line 3059
    invoke-direct/range {p0 .. p1}, Lcom/android/server/content/SyncManager$SyncHandler;->syncResultToErrorNumber(Landroid/content/SyncResult;)I

    #@144
    move-result v3

    #@145
    .line 3058
    invoke-static {v3}, Landroid/content/ContentResolver;->syncErrorToString(I)Ljava/lang/String;

    #@148
    move-result-object v7

    #@149
    .line 3061
    .restart local v7    # "historyMessage":Ljava/lang/String;
    const/4 v9, 0x0

    #@14a
    .line 3062
    .restart local v9    # "downstreamActivity":I
    const/4 v8, 0x0

    #@14b
    .restart local v8    # "upstreamActivity":I
    goto/16 :goto_1

    #@14d
    .line 3066
    .end local v7    # "historyMessage":Ljava/lang/String;
    .end local v8    # "upstreamActivity":I
    .end local v9    # "downstreamActivity":I
    :cond_5
    if-eqz v30, :cond_6

    #@14f
    .line 3067
    const-string/jumbo v3, "SyncManager"

    #@152
    new-instance v4, Ljava/lang/StringBuilder;

    #@154
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@157
    const-string/jumbo v5, "runSyncFinishedOrCanceled [canceled]: "

    #@15a
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@15d
    move-result-object v4

    #@15e
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@161
    move-result-object v4

    #@162
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@165
    move-result-object v4

    #@166
    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    #@169
    .line 3069
    :cond_6
    move-object/from16 v0, p2

    #@16b
    iget-object v3, v0, Lcom/android/server/content/SyncManager$ActiveSyncContext;->mSyncAdapter:Landroid/content/ISyncAdapter;

    #@16d
    if-eqz v3, :cond_8

    #@16f
    .line 3071
    :try_start_0
    move-object/from16 v0, p2

    #@171
    iget-object v3, v0, Lcom/android/server/content/SyncManager$ActiveSyncContext;->mSyncAdapter:Landroid/content/ISyncAdapter;

    #@173
    move-object/from16 v0, p2

    #@175
    invoke-interface {v3, v0}, Landroid/content/ISyncAdapter;->cancelSync(Landroid/content/ISyncContext;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    #@178
    .line 3082
    :cond_7
    :goto_5
    const-string/jumbo v7, "canceled"

    #@17b
    .line 3083
    .restart local v7    # "historyMessage":Ljava/lang/String;
    const/4 v9, 0x0

    #@17c
    .line 3084
    .restart local v9    # "downstreamActivity":I
    const/4 v8, 0x0

    #@17d
    .restart local v8    # "upstreamActivity":I
    goto/16 :goto_2

    #@17f
    .line 3075
    .end local v7    # "historyMessage":Ljava/lang/String;
    .end local v8    # "upstreamActivity":I
    .end local v9    # "downstreamActivity":I
    :cond_8
    move-object/from16 v0, p2

    #@181
    iget-object v3, v0, Lcom/android/server/content/SyncManager$ActiveSyncContext;->mSyncServiceAdapter:Landroid/content/ISyncServiceAdapter;

    #@183
    if-eqz v3, :cond_7

    #@185
    .line 3077
    :try_start_1
    move-object/from16 v0, p2

    #@187
    iget-object v3, v0, Lcom/android/server/content/SyncManager$ActiveSyncContext;->mSyncServiceAdapter:Landroid/content/ISyncServiceAdapter;

    #@189
    move-object/from16 v0, p2

    #@18b
    invoke-interface {v3, v0}, Landroid/content/ISyncServiceAdapter;->cancelSync(Landroid/content/ISyncContext;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    #@18e
    goto :goto_5

    #@18f
    .line 3078
    :catch_0
    move-exception v2

    #@190
    .local v2, "e":Landroid/os/RemoteException;
    goto :goto_5

    #@191
    .line 3096
    .end local v2    # "e":Landroid/os/RemoteException;
    .restart local v7    # "historyMessage":Ljava/lang/String;
    .restart local v8    # "upstreamActivity":I
    .restart local v9    # "downstreamActivity":I
    :cond_9
    move-object/from16 v0, p0

    #@193
    iget-object v3, v0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    #@195
    invoke-static {v3}, Lcom/android/server/content/SyncManager;->-get12(Lcom/android/server/content/SyncManager;)Landroid/app/NotificationManager;

    #@198
    move-result-object v3

    #@199
    .line 3097
    move-object/from16 v0, v29

    #@19b
    iget-object v4, v0, Lcom/android/server/content/SyncStorageEngine$EndPoint;->account:Landroid/accounts/Account;

    #@19d
    invoke-virtual {v4}, Landroid/accounts/Account;->hashCode()I

    #@1a0
    move-result v4

    #@1a1
    move-object/from16 v0, v29

    #@1a3
    iget-object v5, v0, Lcom/android/server/content/SyncStorageEngine$EndPoint;->provider:Ljava/lang/String;

    #@1a5
    invoke-virtual {v5}, Ljava/lang/String;->hashCode()I

    #@1a8
    move-result v5

    #@1a9
    xor-int/2addr v4, v5

    #@1aa
    .line 3098
    new-instance v5, Landroid/os/UserHandle;

    #@1ac
    move-object/from16 v0, v29

    #@1ae
    iget v12, v0, Lcom/android/server/content/SyncStorageEngine$EndPoint;->userId:I

    #@1b0
    invoke-direct {v5, v12}, Landroid/os/UserHandle;-><init>(I)V

    #@1b3
    .line 3096
    const/4 v12, 0x0

    #@1b4
    invoke-virtual {v3, v12, v4, v5}, Landroid/app/NotificationManager;->cancelAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)V

    #@1b7
    goto/16 :goto_3

    #@1b9
    .line 3110
    :cond_a
    if-eqz p1, :cond_2

    #@1bb
    move-object/from16 v0, p1

    #@1bd
    iget-boolean v3, v0, Landroid/content/SyncResult;->fullSyncRequested:Z

    #@1bf
    if-eqz v3, :cond_2

    #@1c1
    .line 3111
    move-object/from16 v0, p0

    #@1c3
    iget-object v3, v0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    #@1c5
    .line 3112
    new-instance v12, Lcom/android/server/content/SyncOperation;

    #@1c7
    move-object/from16 v0, v29

    #@1c9
    iget-object v13, v0, Lcom/android/server/content/SyncStorageEngine$EndPoint;->service:Landroid/content/ComponentName;

    #@1cb
    move-object/from16 v0, v29

    #@1cd
    iget v14, v0, Lcom/android/server/content/SyncStorageEngine$EndPoint;->userId:I

    #@1cf
    .line 3113
    iget v15, v6, Lcom/android/server/content/SyncOperation;->reason:I

    #@1d1
    .line 3114
    iget v0, v6, Lcom/android/server/content/SyncOperation;->syncSource:I

    #@1d3
    move/from16 v16, v0

    #@1d5
    new-instance v17, Landroid/os/Bundle;

    #@1d7
    invoke-direct/range {v17 .. v17}, Landroid/os/Bundle;-><init>()V

    #@1da
    .line 3115
    const-wide/16 v18, 0x0

    #@1dc
    const-wide/16 v20, 0x0

    #@1de
    .line 3116
    iget-wide v0, v6, Lcom/android/server/content/SyncOperation;->backoff:J

    #@1e0
    move-wide/from16 v22, v0

    #@1e2
    iget-wide v0, v6, Lcom/android/server/content/SyncOperation;->delayUntil:J

    #@1e4
    move-wide/from16 v24, v0

    #@1e6
    .line 3112
    invoke-direct/range {v12 .. v25}, Lcom/android/server/content/SyncOperation;-><init>(Landroid/content/ComponentName;IIILandroid/os/Bundle;JJJJ)V

    #@1e9
    .line 3111
    invoke-virtual {v3, v12}, Lcom/android/server/content/SyncManager;->scheduleSyncOperation(Lcom/android/server/content/SyncOperation;)V

    #@1ec
    goto/16 :goto_4

    #@1ee
    .line 3072
    .end local v7    # "historyMessage":Ljava/lang/String;
    .end local v8    # "upstreamActivity":I
    .end local v9    # "downstreamActivity":I
    :catch_1
    move-exception v2

    #@1ef
    .restart local v2    # "e":Landroid/os/RemoteException;
    goto :goto_5
.end method

.method private scheduleReadyPeriodicSyncs()J
    .locals 50

    #@0
    .prologue
    .line 2395
    const-string/jumbo v3, "SyncManager"

    #@3
    const/4 v4, 0x2

    #@4
    invoke-static {v3, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    #@7
    move-result v28

    #@8
    .line 2396
    .local v28, "isLoggable":Z
    if-eqz v28, :cond_0

    #@a
    .line 2397
    const-string/jumbo v3, "SyncManager"

    #@d
    const-string/jumbo v4, "scheduleReadyPeriodicSyncs"

    #@10
    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    #@13
    .line 2399
    :cond_0
    const-wide v22, 0x7fffffffffffffffL

    #@18
    .line 2401
    .local v22, "earliestFuturePollTime":J
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    #@1b
    move-result-wide v34

    #@1c
    .line 2402
    .local v34, "nowAbsolute":J
    move-object/from16 v0, p0

    #@1e
    iget-object v3, v0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    #@20
    invoke-static {v3}, Lcom/android/server/content/SyncManager;->-get21(Lcom/android/server/content/SyncManager;)I

    #@23
    move-result v3

    #@24
    int-to-long v4, v3

    #@25
    sub-long v4, v34, v4

    #@27
    const-wide/16 v6, 0x0

    #@29
    cmp-long v3, v6, v4

    #@2b
    if-gez v3, :cond_2

    #@2d
    .line 2403
    move-object/from16 v0, p0

    #@2f
    iget-object v3, v0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    #@31
    invoke-static {v3}, Lcom/android/server/content/SyncManager;->-get21(Lcom/android/server/content/SyncManager;)I

    #@34
    move-result v3

    #@35
    int-to-long v4, v3

    #@36
    sub-long v42, v34, v4

    #@38
    .line 2405
    .local v42, "shiftedNowAbsolute":J
    :goto_0
    move-object/from16 v0, p0

    #@3a
    iget-object v3, v0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    #@3c
    invoke-static {v3}, Lcom/android/server/content/SyncManager;->-get22(Lcom/android/server/content/SyncManager;)Lcom/android/server/content/SyncStorageEngine;

    #@3f
    move-result-object v3

    #@40
    invoke-virtual {v3}, Lcom/android/server/content/SyncStorageEngine;->getCopyOfAllAuthoritiesWithSyncStatus()Ljava/util/ArrayList;

    #@43
    move-result-object v27

    #@44
    .line 2407
    .local v27, "infos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/util/Pair<Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;Landroid/content/SyncStatusInfo;>;>;"
    invoke-interface/range {v27 .. v27}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@47
    move-result-object v26

    #@48
    .local v26, "info$iterator":Ljava/util/Iterator;
    :cond_1
    :goto_1
    invoke-interface/range {v26 .. v26}, Ljava/util/Iterator;->hasNext()Z

    #@4b
    move-result v3

    #@4c
    if-eqz v3, :cond_11

    #@4e
    invoke-interface/range {v26 .. v26}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@51
    move-result-object v25

    #@52
    check-cast v25, Landroid/util/Pair;

    #@54
    .line 2408
    .local v25, "info":Landroid/util/Pair;, "Landroid/util/Pair<Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;Landroid/content/SyncStatusInfo;>;"
    move-object/from16 v0, v25

    #@56
    iget-object v0, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    #@58
    move-object/from16 v19, v0

    #@5a
    check-cast v19, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;

    #@5c
    .line 2409
    .local v19, "authorityInfo":Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;
    move-object/from16 v0, v25

    #@5e
    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    #@60
    move-object/from16 v39, v0

    #@62
    check-cast v39, Landroid/content/SyncStatusInfo;

    #@64
    .line 2411
    .local v39, "status":Landroid/content/SyncStatusInfo;
    move-object/from16 v0, v19

    #@66
    iget-object v3, v0, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    #@68
    iget-object v3, v3, Lcom/android/server/content/SyncStorageEngine$EndPoint;->provider:Ljava/lang/String;

    #@6a
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@6d
    move-result v3

    #@6e
    if-eqz v3, :cond_3

    #@70
    .line 2412
    const-string/jumbo v3, "SyncManager"

    #@73
    new-instance v4, Ljava/lang/StringBuilder;

    #@75
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@78
    const-string/jumbo v5, "Got an empty provider string. Skipping: "

    #@7b
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@7e
    move-result-object v4

    #@7f
    .line 2413
    move-object/from16 v0, v19

    #@81
    iget-object v5, v0, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    #@83
    iget-object v5, v5, Lcom/android/server/content/SyncStorageEngine$EndPoint;->provider:Ljava/lang/String;

    #@85
    .line 2412
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@88
    move-result-object v4

    #@89
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@8c
    move-result-object v4

    #@8d
    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@90
    goto :goto_1

    #@91
    .line 2403
    .end local v19    # "authorityInfo":Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;
    .end local v25    # "info":Landroid/util/Pair;, "Landroid/util/Pair<Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;Landroid/content/SyncStatusInfo;>;"
    .end local v26    # "info$iterator":Ljava/util/Iterator;
    .end local v27    # "infos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/util/Pair<Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;Landroid/content/SyncStatusInfo;>;>;"
    .end local v39    # "status":Landroid/content/SyncStatusInfo;
    .end local v42    # "shiftedNowAbsolute":J
    :cond_2
    const-wide/16 v42, 0x0

    #@93
    .restart local v42    # "shiftedNowAbsolute":J
    goto :goto_0

    #@94
    .line 2417
    .restart local v19    # "authorityInfo":Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;
    .restart local v25    # "info":Landroid/util/Pair;, "Landroid/util/Pair<Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;Landroid/content/SyncStatusInfo;>;"
    .restart local v26    # "info$iterator":Ljava/util/Iterator;
    .restart local v27    # "infos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/util/Pair<Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;Landroid/content/SyncStatusInfo;>;>;"
    .restart local v39    # "status":Landroid/content/SyncStatusInfo;
    :cond_3
    move-object/from16 v0, v19

    #@96
    iget-object v3, v0, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    #@98
    move-object/from16 v0, p0

    #@9a
    invoke-direct {v0, v3}, Lcom/android/server/content/SyncManager$SyncHandler;->isDispatchable(Lcom/android/server/content/SyncStorageEngine$EndPoint;)Z

    #@9d
    move-result v3

    #@9e
    if-eqz v3, :cond_1

    #@a0
    .line 2421
    const/16 v24, 0x0

    #@a2
    .local v24, "i":I
    move-object/from16 v0, v19

    #@a4
    iget-object v3, v0, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->periodicSyncs:Ljava/util/ArrayList;

    #@a6
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    #@a9
    move-result v2

    #@aa
    .local v2, "N":I
    :goto_2
    move/from16 v0, v24

    #@ac
    if-ge v0, v2, :cond_1

    #@ae
    .line 2422
    move-object/from16 v0, v19

    #@b0
    iget-object v3, v0, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->periodicSyncs:Ljava/util/ArrayList;

    #@b2
    move/from16 v0, v24

    #@b4
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@b7
    move-result-object v44

    #@b8
    check-cast v44, Landroid/content/PeriodicSync;

    #@ba
    .line 2423
    .local v44, "sync":Landroid/content/PeriodicSync;
    move-object/from16 v0, v44

    #@bc
    iget-object v9, v0, Landroid/content/PeriodicSync;->extras:Landroid/os/Bundle;

    #@be
    .line 2424
    .local v9, "extras":Landroid/os/Bundle;
    move-object/from16 v0, v44

    #@c0
    iget-wide v4, v0, Landroid/content/PeriodicSync;->period:J

    #@c2
    const-wide/16 v6, 0x3e8

    #@c4
    mul-long/2addr v4, v6

    #@c5
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    #@c8
    move-result-object v29

    #@c9
    .line 2425
    .local v29, "periodInMillis":Ljava/lang/Long;
    move-object/from16 v0, v44

    #@cb
    iget-wide v4, v0, Landroid/content/PeriodicSync;->flexTime:J

    #@cd
    const-wide/16 v6, 0x3e8

    #@cf
    mul-long/2addr v4, v6

    #@d0
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    #@d3
    move-result-object v21

    #@d4
    .line 2427
    .local v21, "flexInMillis":Ljava/lang/Long;
    invoke-virtual/range {v29 .. v29}, Ljava/lang/Long;->longValue()J

    #@d7
    move-result-wide v4

    #@d8
    const-wide/16 v6, 0x0

    #@da
    cmp-long v3, v4, v6

    #@dc
    if-gtz v3, :cond_5

    #@de
    .line 2421
    :cond_4
    :goto_3
    add-int/lit8 v24, v24, 0x1

    #@e0
    goto :goto_2

    #@e1
    .line 2431
    :cond_5
    move-object/from16 v0, v39

    #@e3
    move/from16 v1, v24

    #@e5
    invoke-virtual {v0, v1}, Landroid/content/SyncStatusInfo;->getPeriodicSyncTime(I)J

    #@e8
    move-result-wide v30

    #@e9
    .line 2433
    .local v30, "lastPollTimeAbsolute":J
    move-object/from16 v0, p0

    #@eb
    iget-object v3, v0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    #@ed
    invoke-static {v3}, Lcom/android/server/content/SyncManager;->-get21(Lcom/android/server/content/SyncManager;)I

    #@f0
    move-result v3

    #@f1
    int-to-long v4, v3

    #@f2
    sub-long v4, v30, v4

    #@f4
    const-wide/16 v6, 0x0

    #@f6
    cmp-long v3, v6, v4

    #@f8
    if-gez v3, :cond_9

    #@fa
    .line 2434
    move-object/from16 v0, p0

    #@fc
    iget-object v3, v0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    #@fe
    invoke-static {v3}, Lcom/android/server/content/SyncManager;->-get21(Lcom/android/server/content/SyncManager;)I

    #@101
    move-result v3

    #@102
    int-to-long v4, v3

    #@103
    sub-long v40, v30, v4

    #@105
    .line 2436
    .local v40, "shiftedLastPollTimeAbsolute":J
    :goto_4
    invoke-virtual/range {v29 .. v29}, Ljava/lang/Long;->longValue()J

    #@108
    move-result-wide v4

    #@109
    invoke-virtual/range {v29 .. v29}, Ljava/lang/Long;->longValue()J

    #@10c
    move-result-wide v6

    #@10d
    rem-long v6, v42, v6

    #@10f
    sub-long v36, v4, v6

    #@111
    .line 2438
    .local v36, "remainingMillis":J
    sub-long v48, v34, v30

    #@113
    .line 2442
    .local v48, "timeSinceLastRunMillis":J
    invoke-virtual/range {v21 .. v21}, Ljava/lang/Long;->longValue()J

    #@116
    move-result-wide v4

    #@117
    cmp-long v3, v36, v4

    #@119
    if-gtz v3, :cond_b

    #@11b
    .line 2443
    invoke-virtual/range {v29 .. v29}, Ljava/lang/Long;->longValue()J

    #@11e
    move-result-wide v4

    #@11f
    invoke-virtual/range {v21 .. v21}, Ljava/lang/Long;->longValue()J

    #@122
    move-result-wide v6

    #@123
    sub-long/2addr v4, v6

    #@124
    cmp-long v3, v48, v4

    #@126
    if-lez v3, :cond_a

    #@128
    const/16 v38, 0x1

    #@12a
    .line 2444
    .local v38, "runEarly":Z
    :goto_5
    if-eqz v28, :cond_6

    #@12c
    .line 2445
    const-string/jumbo v3, "SyncManager"

    #@12f
    new-instance v4, Ljava/lang/StringBuilder;

    #@131
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@134
    const-string/jumbo v5, "sync: "

    #@137
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@13a
    move-result-object v4

    #@13b
    move/from16 v0, v24

    #@13d
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@140
    move-result-object v4

    #@141
    const-string/jumbo v5, " for "

    #@144
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@147
    move-result-object v4

    #@148
    move-object/from16 v0, v19

    #@14a
    iget-object v5, v0, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    #@14c
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@14f
    move-result-object v4

    #@150
    const-string/jumbo v5, "."

    #@153
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@156
    move-result-object v4

    #@157
    .line 2446
    const-string/jumbo v5, " period: "

    #@15a
    .line 2445
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@15d
    move-result-object v4

    #@15e
    move-object/from16 v0, v29

    #@160
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@163
    move-result-object v4

    #@164
    .line 2447
    const-string/jumbo v5, " flex: "

    #@167
    .line 2445
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@16a
    move-result-object v4

    #@16b
    move-object/from16 v0, v21

    #@16d
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@170
    move-result-object v4

    #@171
    .line 2448
    const-string/jumbo v5, " remaining: "

    #@174
    .line 2445
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@177
    move-result-object v4

    #@178
    move-wide/from16 v0, v36

    #@17a
    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    #@17d
    move-result-object v4

    #@17e
    .line 2449
    const-string/jumbo v5, " time_since_last: "

    #@181
    .line 2445
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@184
    move-result-object v4

    #@185
    move-wide/from16 v0, v48

    #@187
    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    #@18a
    move-result-object v4

    #@18b
    .line 2450
    const-string/jumbo v5, " last poll absol: "

    #@18e
    .line 2445
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@191
    move-result-object v4

    #@192
    move-wide/from16 v0, v30

    #@194
    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    #@197
    move-result-object v4

    #@198
    .line 2451
    const-string/jumbo v5, " last poll shifed: "

    #@19b
    .line 2445
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@19e
    move-result-object v4

    #@19f
    move-wide/from16 v0, v40

    #@1a1
    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    #@1a4
    move-result-object v4

    #@1a5
    .line 2452
    const-string/jumbo v5, " shifted now: "

    #@1a8
    .line 2445
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1ab
    move-result-object v4

    #@1ac
    move-wide/from16 v0, v42

    #@1ae
    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    #@1b1
    move-result-object v4

    #@1b2
    .line 2453
    const-string/jumbo v5, " run_early: "

    #@1b5
    .line 2445
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1b8
    move-result-object v4

    #@1b9
    move/from16 v0, v38

    #@1bb
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@1be
    move-result-object v4

    #@1bf
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1c2
    move-result-object v4

    #@1c3
    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    #@1c6
    .line 2468
    :cond_6
    invoke-virtual/range {v29 .. v29}, Ljava/lang/Long;->longValue()J

    #@1c9
    move-result-wide v4

    #@1ca
    cmp-long v3, v36, v4

    #@1cc
    if-eqz v3, :cond_7

    #@1ce
    .line 2469
    cmp-long v3, v30, v34

    #@1d0
    if-lez v3, :cond_c

    #@1d2
    .line 2473
    :cond_7
    :goto_6
    move-object/from16 v0, v19

    #@1d4
    iget-object v0, v0, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    #@1d6
    move-object/from16 v46, v0

    #@1d8
    .line 2475
    .local v46, "target":Lcom/android/server/content/SyncStorageEngine$EndPoint;
    move-object/from16 v0, p0

    #@1da
    iget-object v3, v0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    #@1dc
    invoke-static {v3}, Lcom/android/server/content/SyncManager;->-get22(Lcom/android/server/content/SyncManager;)Lcom/android/server/content/SyncStorageEngine;

    #@1df
    move-result-object v3

    #@1e0
    move-object/from16 v0, v46

    #@1e2
    invoke-virtual {v3, v0}, Lcom/android/server/content/SyncStorageEngine;->getBackoff(Lcom/android/server/content/SyncStorageEngine$EndPoint;)Landroid/util/Pair;

    #@1e5
    move-result-object v20

    #@1e6
    .line 2476
    .local v20, "backoff":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Long;Ljava/lang/Long;>;"
    move-object/from16 v0, p0

    #@1e8
    iget-object v3, v0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    #@1ea
    invoke-static {v3}, Lcom/android/server/content/SyncManager;->-get22(Lcom/android/server/content/SyncManager;)Lcom/android/server/content/SyncStorageEngine;

    #@1ed
    move-result-object v4

    #@1ee
    move-object/from16 v0, v19

    #@1f0
    iget v5, v0, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->ident:I

    #@1f2
    .line 2477
    move-object/from16 v0, v19

    #@1f4
    iget-object v3, v0, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->periodicSyncs:Ljava/util/ArrayList;

    #@1f6
    move/from16 v0, v24

    #@1f8
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@1fb
    move-result-object v3

    #@1fc
    check-cast v3, Landroid/content/PeriodicSync;

    #@1fe
    .line 2476
    move-wide/from16 v0, v34

    #@200
    invoke-virtual {v4, v5, v3, v0, v1}, Lcom/android/server/content/SyncStorageEngine;->setPeriodicSyncTime(ILandroid/content/PeriodicSync;J)V

    #@203
    .line 2479
    move-object/from16 v0, v46

    #@205
    iget-boolean v3, v0, Lcom/android/server/content/SyncStorageEngine$EndPoint;->target_provider:Z

    #@207
    if-eqz v3, :cond_e

    #@209
    .line 2481
    move-object/from16 v0, p0

    #@20b
    iget-object v3, v0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    #@20d
    iget-object v3, v3, Lcom/android/server/content/SyncManager;->mSyncAdapters:Landroid/content/SyncAdaptersCache;

    #@20f
    .line 2483
    move-object/from16 v0, v46

    #@211
    iget-object v4, v0, Lcom/android/server/content/SyncStorageEngine$EndPoint;->provider:Ljava/lang/String;

    #@213
    move-object/from16 v0, v46

    #@215
    iget-object v5, v0, Lcom/android/server/content/SyncStorageEngine$EndPoint;->account:Landroid/accounts/Account;

    #@217
    iget-object v5, v5, Landroid/accounts/Account;->type:Ljava/lang/String;

    #@219
    .line 2482
    invoke-static {v4, v5}, Landroid/content/SyncAdapterType;->newKey(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SyncAdapterType;

    #@21c
    move-result-object v4

    #@21d
    .line 2484
    move-object/from16 v0, v46

    #@21f
    iget v5, v0, Lcom/android/server/content/SyncStorageEngine$EndPoint;->userId:I

    #@221
    .line 2481
    invoke-virtual {v3, v4, v5}, Landroid/content/SyncAdaptersCache;->getServiceInfo(Ljava/lang/Object;I)Landroid/content/pm/RegisteredServicesCache$ServiceInfo;

    #@224
    move-result-object v45

    #@225
    .line 2485
    .local v45, "syncAdapterInfo":Landroid/content/pm/RegisteredServicesCache$ServiceInfo;, "Landroid/content/pm/RegisteredServicesCache$ServiceInfo<Landroid/content/SyncAdapterType;>;"
    if-eqz v45, :cond_4

    #@227
    .line 2488
    move-object/from16 v0, p0

    #@229
    iget-object v0, v0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    #@22b
    move-object/from16 v47, v0

    #@22d
    .line 2489
    new-instance v3, Lcom/android/server/content/SyncOperation;

    #@22f
    move-object/from16 v0, v46

    #@231
    iget-object v4, v0, Lcom/android/server/content/SyncStorageEngine$EndPoint;->account:Landroid/accounts/Account;

    #@233
    move-object/from16 v0, v46

    #@235
    iget v5, v0, Lcom/android/server/content/SyncStorageEngine$EndPoint;->userId:I

    #@237
    .line 2492
    move-object/from16 v0, v46

    #@239
    iget-object v8, v0, Lcom/android/server/content/SyncStorageEngine$EndPoint;->provider:Ljava/lang/String;

    #@23b
    .line 2493
    const-wide/16 v10, 0x0

    #@23d
    const-wide/16 v12, 0x0

    #@23f
    .line 2494
    if-eqz v20, :cond_d

    #@241
    move-object/from16 v0, v20

    #@243
    iget-object v6, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    #@245
    check-cast v6, Ljava/lang/Long;

    #@247
    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    #@24a
    move-result-wide v14

    #@24b
    .line 2495
    :goto_7
    move-object/from16 v0, p0

    #@24d
    iget-object v6, v0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    #@24f
    invoke-static {v6}, Lcom/android/server/content/SyncManager;->-get22(Lcom/android/server/content/SyncManager;)Lcom/android/server/content/SyncStorageEngine;

    #@252
    move-result-object v6

    #@253
    move-object/from16 v0, v46

    #@255
    invoke-virtual {v6, v0}, Lcom/android/server/content/SyncStorageEngine;->getDelayUntilTime(Lcom/android/server/content/SyncStorageEngine$EndPoint;)J

    #@258
    move-result-wide v16

    #@259
    .line 2496
    move-object/from16 v0, v45

    #@25b
    iget-object v6, v0, Landroid/content/pm/RegisteredServicesCache$ServiceInfo;->type:Ljava/lang/Object;

    #@25d
    check-cast v6, Landroid/content/SyncAdapterType;

    #@25f
    invoke-virtual {v6}, Landroid/content/SyncAdapterType;->allowParallelSyncs()Z

    #@262
    move-result v18

    #@263
    .line 2490
    const/4 v6, -0x4

    #@264
    .line 2491
    const/4 v7, 0x4

    #@265
    .line 2489
    invoke-direct/range {v3 .. v18}, Lcom/android/server/content/SyncOperation;-><init>(Landroid/accounts/Account;IIILjava/lang/String;Landroid/os/Bundle;JJJJZ)V

    #@268
    .line 2488
    move-object/from16 v0, v47

    #@26a
    invoke-virtual {v0, v3}, Lcom/android/server/content/SyncManager;->scheduleSyncOperation(Lcom/android/server/content/SyncOperation;)V

    #@26d
    .line 2511
    .end local v20    # "backoff":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Long;Ljava/lang/Long;>;"
    .end local v45    # "syncAdapterInfo":Landroid/content/pm/RegisteredServicesCache$ServiceInfo;, "Landroid/content/pm/RegisteredServicesCache$ServiceInfo<Landroid/content/SyncAdapterType;>;"
    .end local v46    # "target":Lcom/android/server/content/SyncStorageEngine$EndPoint;
    :cond_8
    :goto_8
    if-eqz v38, :cond_10

    #@26f
    .line 2513
    invoke-virtual/range {v29 .. v29}, Ljava/lang/Long;->longValue()J

    #@272
    move-result-wide v4

    #@273
    add-long v4, v4, v34

    #@275
    add-long v32, v4, v36

    #@277
    .line 2517
    .local v32, "nextPollTimeAbsolute":J
    :goto_9
    cmp-long v3, v32, v22

    #@279
    if-gez v3, :cond_4

    #@27b
    .line 2518
    move-wide/from16 v22, v32

    #@27d
    goto/16 :goto_3

    #@27f
    .line 2434
    .end local v32    # "nextPollTimeAbsolute":J
    .end local v36    # "remainingMillis":J
    .end local v38    # "runEarly":Z
    .end local v40    # "shiftedLastPollTimeAbsolute":J
    .end local v48    # "timeSinceLastRunMillis":J
    :cond_9
    const-wide/16 v40, 0x0

    #@281
    .restart local v40    # "shiftedLastPollTimeAbsolute":J
    goto/16 :goto_4

    #@283
    .line 2443
    .restart local v36    # "remainingMillis":J
    .restart local v48    # "timeSinceLastRunMillis":J
    :cond_a
    const/16 v38, 0x0

    #@285
    .restart local v38    # "runEarly":Z
    goto/16 :goto_5

    #@287
    .line 2442
    .end local v38    # "runEarly":Z
    :cond_b
    const/16 v38, 0x0

    #@289
    .restart local v38    # "runEarly":Z
    goto/16 :goto_5

    #@28b
    .line 2470
    :cond_c
    invoke-virtual/range {v29 .. v29}, Ljava/lang/Long;->longValue()J

    #@28e
    move-result-wide v4

    #@28f
    cmp-long v3, v48, v4

    #@291
    if-gez v3, :cond_7

    #@293
    .line 2468
    if-eqz v38, :cond_8

    #@295
    goto/16 :goto_6

    #@297
    .line 2494
    .restart local v20    # "backoff":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Long;Ljava/lang/Long;>;"
    .restart local v45    # "syncAdapterInfo":Landroid/content/pm/RegisteredServicesCache$ServiceInfo;, "Landroid/content/pm/RegisteredServicesCache$ServiceInfo<Landroid/content/SyncAdapterType;>;"
    .restart local v46    # "target":Lcom/android/server/content/SyncStorageEngine$EndPoint;
    :cond_d
    const-wide/16 v14, 0x0

    #@299
    goto :goto_7

    #@29a
    .line 2497
    .end local v45    # "syncAdapterInfo":Landroid/content/pm/RegisteredServicesCache$ServiceInfo;, "Landroid/content/pm/RegisteredServicesCache$ServiceInfo<Landroid/content/SyncAdapterType;>;"
    :cond_e
    move-object/from16 v0, v46

    #@29c
    iget-boolean v3, v0, Lcom/android/server/content/SyncStorageEngine$EndPoint;->target_service:Z

    #@29e
    if-eqz v3, :cond_8

    #@2a0
    .line 2498
    move-object/from16 v0, p0

    #@2a2
    iget-object v0, v0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    #@2a4
    move-object/from16 v18, v0

    #@2a6
    .line 2499
    new-instance v4, Lcom/android/server/content/SyncOperation;

    #@2a8
    move-object/from16 v0, v46

    #@2aa
    iget-object v5, v0, Lcom/android/server/content/SyncStorageEngine$EndPoint;->service:Landroid/content/ComponentName;

    #@2ac
    move-object/from16 v0, v46

    #@2ae
    iget v6, v0, Lcom/android/server/content/SyncStorageEngine$EndPoint;->userId:I

    #@2b0
    .line 2503
    const-wide/16 v10, 0x0

    #@2b2
    .line 2504
    const-wide/16 v12, 0x0

    #@2b4
    .line 2505
    if-eqz v20, :cond_f

    #@2b6
    move-object/from16 v0, v20

    #@2b8
    iget-object v3, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    #@2ba
    check-cast v3, Ljava/lang/Long;

    #@2bc
    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    #@2bf
    move-result-wide v14

    #@2c0
    .line 2506
    :goto_a
    move-object/from16 v0, p0

    #@2c2
    iget-object v3, v0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    #@2c4
    invoke-static {v3}, Lcom/android/server/content/SyncManager;->-get22(Lcom/android/server/content/SyncManager;)Lcom/android/server/content/SyncStorageEngine;

    #@2c7
    move-result-object v3

    #@2c8
    move-object/from16 v0, v46

    #@2ca
    invoke-virtual {v3, v0}, Lcom/android/server/content/SyncStorageEngine;->getDelayUntilTime(Lcom/android/server/content/SyncStorageEngine$EndPoint;)J

    #@2cd
    move-result-wide v16

    #@2ce
    .line 2500
    const/4 v7, -0x4

    #@2cf
    .line 2501
    const/4 v8, 0x4

    #@2d0
    .line 2499
    invoke-direct/range {v4 .. v17}, Lcom/android/server/content/SyncOperation;-><init>(Landroid/content/ComponentName;IIILandroid/os/Bundle;JJJJ)V

    #@2d3
    .line 2498
    move-object/from16 v0, v18

    #@2d5
    invoke-virtual {v0, v4}, Lcom/android/server/content/SyncManager;->scheduleSyncOperation(Lcom/android/server/content/SyncOperation;)V

    #@2d8
    goto :goto_8

    #@2d9
    .line 2505
    :cond_f
    const-wide/16 v14, 0x0

    #@2db
    goto :goto_a

    #@2dc
    .line 2515
    .end local v20    # "backoff":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Long;Ljava/lang/Long;>;"
    .end local v46    # "target":Lcom/android/server/content/SyncStorageEngine$EndPoint;
    :cond_10
    add-long v32, v34, v36

    #@2de
    .restart local v32    # "nextPollTimeAbsolute":J
    goto :goto_9

    #@2df
    .line 2523
    .end local v2    # "N":I
    .end local v9    # "extras":Landroid/os/Bundle;
    .end local v19    # "authorityInfo":Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;
    .end local v21    # "flexInMillis":Ljava/lang/Long;
    .end local v24    # "i":I
    .end local v25    # "info":Landroid/util/Pair;, "Landroid/util/Pair<Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;Landroid/content/SyncStatusInfo;>;"
    .end local v29    # "periodInMillis":Ljava/lang/Long;
    .end local v30    # "lastPollTimeAbsolute":J
    .end local v32    # "nextPollTimeAbsolute":J
    .end local v36    # "remainingMillis":J
    .end local v38    # "runEarly":Z
    .end local v39    # "status":Landroid/content/SyncStatusInfo;
    .end local v40    # "shiftedLastPollTimeAbsolute":J
    .end local v44    # "sync":Landroid/content/PeriodicSync;
    .end local v48    # "timeSinceLastRunMillis":J
    :cond_11
    const-wide v4, 0x7fffffffffffffffL

    #@2e4
    cmp-long v3, v22, v4

    #@2e6
    if-nez v3, :cond_12

    #@2e8
    .line 2524
    const-wide v4, 0x7fffffffffffffffL

    #@2ed
    return-wide v4

    #@2ee
    .line 2528
    :cond_12
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    #@2f1
    move-result-wide v6

    #@2f2
    .line 2529
    cmp-long v3, v22, v34

    #@2f4
    if-gez v3, :cond_13

    #@2f6
    .line 2530
    const-wide/16 v4, 0x0

    #@2f8
    .line 2528
    :goto_b
    add-long/2addr v4, v6

    #@2f9
    return-wide v4

    #@2fa
    .line 2530
    :cond_13
    sub-long v4, v22, v34

    #@2fc
    goto :goto_b
.end method

.method private syncResultToErrorNumber(Landroid/content/SyncResult;)I
    .locals 4
    .param p1, "syncResult"    # Landroid/content/SyncResult;

    #@0
    .prologue
    const-wide/16 v2, 0x0

    #@2
    .line 3146
    iget-boolean v0, p1, Landroid/content/SyncResult;->syncAlreadyInProgress:Z

    #@4
    if-eqz v0, :cond_0

    #@6
    .line 3147
    const/4 v0, 0x1

    #@7
    return v0

    #@8
    .line 3148
    :cond_0
    iget-object v0, p1, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    #@a
    iget-wide v0, v0, Landroid/content/SyncStats;->numAuthExceptions:J

    #@c
    cmp-long v0, v0, v2

    #@e
    if-lez v0, :cond_1

    #@10
    .line 3149
    const/4 v0, 0x2

    #@11
    return v0

    #@12
    .line 3150
    :cond_1
    iget-object v0, p1, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    #@14
    iget-wide v0, v0, Landroid/content/SyncStats;->numIoExceptions:J

    #@16
    cmp-long v0, v0, v2

    #@18
    if-lez v0, :cond_2

    #@1a
    .line 3151
    const/4 v0, 0x3

    #@1b
    return v0

    #@1c
    .line 3152
    :cond_2
    iget-object v0, p1, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    #@1e
    iget-wide v0, v0, Landroid/content/SyncStats;->numParseExceptions:J

    #@20
    cmp-long v0, v0, v2

    #@22
    if-lez v0, :cond_3

    #@24
    .line 3153
    const/4 v0, 0x4

    #@25
    return v0

    #@26
    .line 3154
    :cond_3
    iget-object v0, p1, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    #@28
    iget-wide v0, v0, Landroid/content/SyncStats;->numConflictDetectedExceptions:J

    #@2a
    cmp-long v0, v0, v2

    #@2c
    if-lez v0, :cond_4

    #@2e
    .line 3155
    const/4 v0, 0x5

    #@2f
    return v0

    #@30
    .line 3156
    :cond_4
    iget-boolean v0, p1, Landroid/content/SyncResult;->tooManyDeletions:Z

    #@32
    if-eqz v0, :cond_5

    #@34
    .line 3157
    const/4 v0, 0x6

    #@35
    return v0

    #@36
    .line 3158
    :cond_5
    iget-boolean v0, p1, Landroid/content/SyncResult;->tooManyRetries:Z

    #@38
    if-eqz v0, :cond_6

    #@3a
    .line 3159
    const/4 v0, 0x7

    #@3b
    return v0

    #@3c
    .line 3160
    :cond_6
    iget-boolean v0, p1, Landroid/content/SyncResult;->databaseError:Z

    #@3e
    if-eqz v0, :cond_7

    #@40
    .line 3161
    const/16 v0, 0x8

    #@42
    return v0

    #@43
    .line 3162
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
    .line 2160
    monitor-enter p0

    #@1
    .line 2161
    :try_start_0
    iget-object v0, p0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    #@3
    invoke-static {v0}, Lcom/android/server/content/SyncManager;->-get7(Lcom/android/server/content/SyncManager;)Z

    #@6
    move-result v0

    #@7
    if-eqz v0, :cond_0

    #@9
    iget-object v0, p0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    #@b
    invoke-static {v0}, Lcom/android/server/content/SyncManager;->-get14(Lcom/android/server/content/SyncManager;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@e
    move-result v0

    #@f
    if-eqz v0, :cond_0

    #@11
    .line 2166
    const/4 v0, 0x0

    #@12
    monitor-exit p0

    #@13
    return v0

    #@14
    .line 2163
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/android/server/content/SyncManager$SyncHandler;->mUnreadyQueue:Ljava/util/List;

    #@16
    invoke-static {p1}, Landroid/os/Message;->obtain(Landroid/os/Message;)Landroid/os/Message;

    #@19
    move-result-object v1

    #@1a
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@1d
    .line 2164
    const/4 v0, 0x1

    #@1e
    monitor-exit p0

    #@1f
    return v0

    #@20
    .line 2160
    :catchall_0
    move-exception v0

    #@21
    monitor-exit p0

    #@22
    throw v0
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 24
    .param p1, "msg"    # Landroid/os/Message;

    #@0
    .prologue
    .line 2199
    invoke-direct/range {p0 .. p1}, Lcom/android/server/content/SyncManager$SyncHandler;->tryEnqueueMessageUntilReadyToRun(Landroid/os/Message;)Z

    #@3
    move-result v18

    #@4
    if-eqz v18, :cond_0

    #@6
    .line 2200
    return-void

    #@7
    .line 2203
    :cond_0
    const-wide v6, 0x7fffffffffffffffL

    #@c
    .line 2204
    .local v6, "earliestFuturePollTime":J
    const-wide v14, 0x7fffffffffffffffL

    #@11
    .line 2208
    .local v14, "nextPendingSyncTime":J
    :try_start_0
    move-object/from16 v0, p0

    #@13
    iget-object v0, v0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    #@15
    move-object/from16 v18, v0

    #@17
    move-object/from16 v0, p0

    #@19
    iget-object v0, v0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    #@1b
    move-object/from16 v19, v0

    #@1d
    invoke-static/range {v19 .. v19}, Lcom/android/server/content/SyncManager;->-wrap5(Lcom/android/server/content/SyncManager;)Z

    #@20
    move-result v19

    #@21
    invoke-static/range {v18 .. v19}, Lcom/android/server/content/SyncManager;->-set1(Lcom/android/server/content/SyncManager;Z)Z

    #@24
    .line 2209
    move-object/from16 v0, p0

    #@26
    iget-object v0, v0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    #@28
    move-object/from16 v18, v0

    #@2a
    invoke-static/range {v18 .. v18}, Lcom/android/server/content/SyncManager;->-get19(Lcom/android/server/content/SyncManager;)Landroid/os/PowerManager$WakeLock;

    #@2d
    move-result-object v18

    #@2e
    invoke-virtual/range {v18 .. v18}, Landroid/os/PowerManager$WakeLock;->acquire()V

    #@31
    .line 2214
    invoke-direct/range {p0 .. p0}, Lcom/android/server/content/SyncManager$SyncHandler;->scheduleReadyPeriodicSyncs()J

    #@34
    move-result-wide v6

    #@35
    .line 2215
    move-object/from16 v0, p1

    #@37
    iget v0, v0, Landroid/os/Message;->what:I

    #@39
    move/from16 v18, v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@3b
    packed-switch v18, :pswitch_data_0

    #@3e
    .line 2346
    :cond_1
    :goto_0
    move-object/from16 v0, p0

    #@40
    invoke-direct {v0, v6, v7, v14, v15}, Lcom/android/server/content/SyncManager$SyncHandler;->manageSyncAlarmLocked(JJ)V

    #@43
    .line 2347
    move-object/from16 v0, p0

    #@45
    iget-object v0, v0, Lcom/android/server/content/SyncManager$SyncHandler;->mSyncTimeTracker:Lcom/android/server/content/SyncManager$SyncTimeTracker;

    #@47
    move-object/from16 v18, v0

    #@49
    invoke-virtual/range {v18 .. v18}, Lcom/android/server/content/SyncManager$SyncTimeTracker;->update()V

    #@4c
    .line 2348
    move-object/from16 v0, p0

    #@4e
    iget-object v0, v0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    #@50
    move-object/from16 v18, v0

    #@52
    invoke-static/range {v18 .. v18}, Lcom/android/server/content/SyncManager;->-get19(Lcom/android/server/content/SyncManager;)Landroid/os/PowerManager$WakeLock;

    #@55
    move-result-object v18

    #@56
    invoke-virtual/range {v18 .. v18}, Landroid/os/PowerManager$WakeLock;->release()V

    #@59
    .line 2198
    return-void

    #@5a
    .line 2217
    :pswitch_0
    :try_start_1
    move-object/from16 v0, p1

    #@5c
    iget-object v8, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@5e
    check-cast v8, Lcom/android/server/content/SyncStorageEngine$EndPoint;

    #@60
    .line 2218
    .local v8, "endpoint":Lcom/android/server/content/SyncStorageEngine$EndPoint;
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->peekData()Landroid/os/Bundle;

    #@63
    move-result-object v10

    #@64
    .line 2219
    .local v10, "extras":Landroid/os/Bundle;
    const-string/jumbo v18, "SyncManager"

    #@67
    const/16 v19, 0x3

    #@69
    invoke-static/range {v18 .. v19}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    #@6c
    move-result v18

    #@6d
    if-eqz v18, :cond_2

    #@6f
    .line 2220
    const-string/jumbo v18, "SyncManager"

    #@72
    new-instance v19, Ljava/lang/StringBuilder;

    #@74
    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    #@77
    const-string/jumbo v20, "handleSyncHandlerMessage: MESSAGE_CANCEL: "

    #@7a
    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@7d
    move-result-object v19

    #@7e
    move-object/from16 v0, v19

    #@80
    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@83
    move-result-object v19

    #@84
    .line 2221
    const-string/jumbo v20, " bundle: "

    #@87
    .line 2220
    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@8a
    move-result-object v19

    #@8b
    move-object/from16 v0, v19

    #@8d
    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@90
    move-result-object v19

    #@91
    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@94
    move-result-object v19

    #@95
    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@98
    .line 2223
    :cond_2
    move-object/from16 v0, p0

    #@9a
    invoke-direct {v0, v8, v10}, Lcom/android/server/content/SyncManager$SyncHandler;->cancelActiveSyncH(Lcom/android/server/content/SyncStorageEngine$EndPoint;Landroid/os/Bundle;)V

    #@9d
    .line 2224
    invoke-direct/range {p0 .. p0}, Lcom/android/server/content/SyncManager$SyncHandler;->maybeStartNextSyncH()J

    #@a0
    move-result-wide v14

    #@a1
    goto :goto_0

    #@a2
    .line 2228
    .end local v8    # "endpoint":Lcom/android/server/content/SyncStorageEngine$EndPoint;
    .end local v10    # "extras":Landroid/os/Bundle;
    :pswitch_1
    const-string/jumbo v18, "SyncManager"

    #@a5
    const/16 v19, 0x2

    #@a7
    invoke-static/range {v18 .. v19}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    #@aa
    move-result v18

    #@ab
    if-eqz v18, :cond_3

    #@ad
    .line 2229
    const-string/jumbo v18, "SyncManager"

    #@b0
    const-string/jumbo v19, "handleSyncHandlerMessage: MESSAGE_SYNC_FINISHED"

    #@b3
    invoke-static/range {v18 .. v19}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    #@b6
    .line 2231
    :cond_3
    move-object/from16 v0, p1

    #@b8
    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@ba
    move-object/from16 v16, v0

    #@bc
    check-cast v16, Lcom/android/server/content/SyncManager$SyncHandlerMessagePayload;

    #@be
    .line 2232
    .local v16, "payload":Lcom/android/server/content/SyncManager$SyncHandlerMessagePayload;
    move-object/from16 v0, p0

    #@c0
    iget-object v0, v0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    #@c2
    move-object/from16 v18, v0

    #@c4
    move-object/from16 v0, v16

    #@c6
    iget-object v0, v0, Lcom/android/server/content/SyncManager$SyncHandlerMessagePayload;->activeSyncContext:Lcom/android/server/content/SyncManager$ActiveSyncContext;

    #@c8
    move-object/from16 v19, v0

    #@ca
    invoke-static/range {v18 .. v19}, Lcom/android/server/content/SyncManager;->-wrap4(Lcom/android/server/content/SyncManager;Lcom/android/server/content/SyncManager$ActiveSyncContext;)Z

    #@cd
    move-result v18

    #@ce
    if-nez v18, :cond_4

    #@d0
    .line 2233
    const-string/jumbo v18, "SyncManager"

    #@d3
    new-instance v19, Ljava/lang/StringBuilder;

    #@d5
    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    #@d8
    const-string/jumbo v20, "handleSyncHandlerMessage: dropping since the sync is no longer active: "

    #@db
    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@de
    move-result-object v19

    #@df
    .line 2235
    move-object/from16 v0, v16

    #@e1
    iget-object v0, v0, Lcom/android/server/content/SyncManager$SyncHandlerMessagePayload;->activeSyncContext:Lcom/android/server/content/SyncManager$ActiveSyncContext;

    #@e3
    move-object/from16 v20, v0

    #@e5
    .line 2233
    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@e8
    move-result-object v19

    #@e9
    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@ec
    move-result-object v19

    #@ed
    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@f0
    goto/16 :goto_0

    #@f2
    .line 2345
    .end local v16    # "payload":Lcom/android/server/content/SyncManager$SyncHandlerMessagePayload;
    :catchall_0
    move-exception v18

    #@f3
    .line 2346
    move-object/from16 v0, p0

    #@f5
    invoke-direct {v0, v6, v7, v14, v15}, Lcom/android/server/content/SyncManager$SyncHandler;->manageSyncAlarmLocked(JJ)V

    #@f8
    .line 2347
    move-object/from16 v0, p0

    #@fa
    iget-object v0, v0, Lcom/android/server/content/SyncManager$SyncHandler;->mSyncTimeTracker:Lcom/android/server/content/SyncManager$SyncTimeTracker;

    #@fc
    move-object/from16 v19, v0

    #@fe
    invoke-virtual/range {v19 .. v19}, Lcom/android/server/content/SyncManager$SyncTimeTracker;->update()V

    #@101
    .line 2348
    move-object/from16 v0, p0

    #@103
    iget-object v0, v0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    #@105
    move-object/from16 v19, v0

    #@107
    invoke-static/range {v19 .. v19}, Lcom/android/server/content/SyncManager;->-get19(Lcom/android/server/content/SyncManager;)Landroid/os/PowerManager$WakeLock;

    #@10a
    move-result-object v19

    #@10b
    invoke-virtual/range {v19 .. v19}, Landroid/os/PowerManager$WakeLock;->release()V

    #@10e
    .line 2345
    throw v18

    #@10f
    .line 2238
    .restart local v16    # "payload":Lcom/android/server/content/SyncManager$SyncHandlerMessagePayload;
    :cond_4
    :try_start_2
    move-object/from16 v0, v16

    #@111
    iget-object v0, v0, Lcom/android/server/content/SyncManager$SyncHandlerMessagePayload;->syncResult:Landroid/content/SyncResult;

    #@113
    move-object/from16 v18, v0

    #@115
    .line 2239
    move-object/from16 v0, v16

    #@117
    iget-object v0, v0, Lcom/android/server/content/SyncManager$SyncHandlerMessagePayload;->activeSyncContext:Lcom/android/server/content/SyncManager$ActiveSyncContext;

    #@119
    move-object/from16 v19, v0

    #@11b
    .line 2238
    move-object/from16 v0, p0

    #@11d
    move-object/from16 v1, v18

    #@11f
    move-object/from16 v2, v19

    #@121
    invoke-direct {v0, v1, v2}, Lcom/android/server/content/SyncManager$SyncHandler;->runSyncFinishedOrCanceledH(Landroid/content/SyncResult;Lcom/android/server/content/SyncManager$ActiveSyncContext;)V

    #@124
    .line 2242
    invoke-direct/range {p0 .. p0}, Lcom/android/server/content/SyncManager$SyncHandler;->maybeStartNextSyncH()J

    #@127
    move-result-wide v14

    #@128
    goto/16 :goto_0

    #@12a
    .line 2246
    .end local v16    # "payload":Lcom/android/server/content/SyncManager$SyncHandlerMessagePayload;
    :pswitch_2
    move-object/from16 v0, p1

    #@12c
    iget-object v13, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@12e
    check-cast v13, Lcom/android/server/content/SyncManager$ServiceConnectionData;

    #@130
    .line 2247
    .local v13, "msgData":Lcom/android/server/content/SyncManager$ServiceConnectionData;
    const-string/jumbo v18, "SyncManager"

    #@133
    const/16 v19, 0x2

    #@135
    invoke-static/range {v18 .. v19}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    #@138
    move-result v18

    #@139
    if-eqz v18, :cond_5

    #@13b
    .line 2248
    const-string/jumbo v18, "SyncManager"

    #@13e
    new-instance v19, Ljava/lang/StringBuilder;

    #@140
    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    #@143
    const-string/jumbo v20, "handleSyncHandlerMessage: MESSAGE_SERVICE_CONNECTED: "

    #@146
    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@149
    move-result-object v19

    #@14a
    .line 2249
    iget-object v0, v13, Lcom/android/server/content/SyncManager$ServiceConnectionData;->activeSyncContext:Lcom/android/server/content/SyncManager$ActiveSyncContext;

    #@14c
    move-object/from16 v20, v0

    #@14e
    .line 2248
    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@151
    move-result-object v19

    #@152
    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@155
    move-result-object v19

    #@156
    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@159
    .line 2252
    :cond_5
    move-object/from16 v0, p0

    #@15b
    iget-object v0, v0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    #@15d
    move-object/from16 v18, v0

    #@15f
    iget-object v0, v13, Lcom/android/server/content/SyncManager$ServiceConnectionData;->activeSyncContext:Lcom/android/server/content/SyncManager$ActiveSyncContext;

    #@161
    move-object/from16 v19, v0

    #@163
    invoke-static/range {v18 .. v19}, Lcom/android/server/content/SyncManager;->-wrap4(Lcom/android/server/content/SyncManager;Lcom/android/server/content/SyncManager$ActiveSyncContext;)Z

    #@166
    move-result v18

    #@167
    if-eqz v18, :cond_1

    #@169
    .line 2254
    iget-object v0, v13, Lcom/android/server/content/SyncManager$ServiceConnectionData;->activeSyncContext:Lcom/android/server/content/SyncManager$ActiveSyncContext;

    #@16b
    move-object/from16 v18, v0

    #@16d
    .line 2255
    iget-object v0, v13, Lcom/android/server/content/SyncManager$ServiceConnectionData;->adapter:Landroid/os/IBinder;

    #@16f
    move-object/from16 v19, v0

    #@171
    .line 2253
    move-object/from16 v0, p0

    #@173
    move-object/from16 v1, v18

    #@175
    move-object/from16 v2, v19

    #@177
    invoke-direct {v0, v1, v2}, Lcom/android/server/content/SyncManager$SyncHandler;->runBoundToAdapter(Lcom/android/server/content/SyncManager$ActiveSyncContext;Landroid/os/IBinder;)V

    #@17a
    goto/16 :goto_0

    #@17c
    .line 2262
    .end local v13    # "msgData":Lcom/android/server/content/SyncManager$ServiceConnectionData;
    :pswitch_3
    move-object/from16 v0, p1

    #@17e
    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@180
    move-object/from16 v18, v0

    #@182
    check-cast v18, Lcom/android/server/content/SyncManager$ServiceConnectionData;

    #@184
    .line 2261
    move-object/from16 v0, v18

    #@186
    iget-object v4, v0, Lcom/android/server/content/SyncManager$ServiceConnectionData;->activeSyncContext:Lcom/android/server/content/SyncManager$ActiveSyncContext;

    #@188
    .line 2263
    .local v4, "currentSyncContext":Lcom/android/server/content/SyncManager$ActiveSyncContext;
    const-string/jumbo v18, "SyncManager"

    #@18b
    const/16 v19, 0x2

    #@18d
    invoke-static/range {v18 .. v19}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    #@190
    move-result v18

    #@191
    if-eqz v18, :cond_6

    #@193
    .line 2264
    const-string/jumbo v18, "SyncManager"

    #@196
    new-instance v19, Ljava/lang/StringBuilder;

    #@198
    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    #@19b
    const-string/jumbo v20, "handleSyncHandlerMessage: MESSAGE_SERVICE_DISCONNECTED: "

    #@19e
    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1a1
    move-result-object v19

    #@1a2
    move-object/from16 v0, v19

    #@1a4
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@1a7
    move-result-object v19

    #@1a8
    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1ab
    move-result-object v19

    #@1ac
    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@1af
    .line 2268
    :cond_6
    move-object/from16 v0, p0

    #@1b1
    iget-object v0, v0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    #@1b3
    move-object/from16 v18, v0

    #@1b5
    move-object/from16 v0, v18

    #@1b7
    invoke-static {v0, v4}, Lcom/android/server/content/SyncManager;->-wrap4(Lcom/android/server/content/SyncManager;Lcom/android/server/content/SyncManager$ActiveSyncContext;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@1ba
    move-result v18

    #@1bb
    if-eqz v18, :cond_1

    #@1bd
    .line 2272
    :try_start_3
    iget-object v0, v4, Lcom/android/server/content/SyncManager$ActiveSyncContext;->mSyncAdapter:Landroid/content/ISyncAdapter;

    #@1bf
    move-object/from16 v18, v0

    #@1c1
    if-eqz v18, :cond_8

    #@1c3
    .line 2273
    iget-object v0, v4, Lcom/android/server/content/SyncManager$ActiveSyncContext;->mSyncAdapter:Landroid/content/ISyncAdapter;

    #@1c5
    move-object/from16 v18, v0

    #@1c7
    move-object/from16 v0, v18

    #@1c9
    invoke-interface {v0, v4}, Landroid/content/ISyncAdapter;->cancelSync(Landroid/content/ISyncContext;)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@1cc
    .line 2284
    :cond_7
    :goto_1
    :try_start_4
    new-instance v17, Landroid/content/SyncResult;

    #@1ce
    invoke-direct/range {v17 .. v17}, Landroid/content/SyncResult;-><init>()V

    #@1d1
    .line 2285
    .local v17, "syncResult":Landroid/content/SyncResult;
    move-object/from16 v0, v17

    #@1d3
    iget-object v0, v0, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    #@1d5
    move-object/from16 v18, v0

    #@1d7
    move-object/from16 v0, v18

    #@1d9
    iget-wide v0, v0, Landroid/content/SyncStats;->numIoExceptions:J

    #@1db
    move-wide/from16 v20, v0

    #@1dd
    const-wide/16 v22, 0x1

    #@1df
    add-long v20, v20, v22

    #@1e1
    move-wide/from16 v0, v20

    #@1e3
    move-object/from16 v2, v18

    #@1e5
    iput-wide v0, v2, Landroid/content/SyncStats;->numIoExceptions:J

    #@1e7
    .line 2286
    move-object/from16 v0, p0

    #@1e9
    move-object/from16 v1, v17

    #@1eb
    invoke-direct {v0, v1, v4}, Lcom/android/server/content/SyncManager$SyncHandler;->runSyncFinishedOrCanceledH(Landroid/content/SyncResult;Lcom/android/server/content/SyncManager$ActiveSyncContext;)V

    #@1ee
    .line 2289
    invoke-direct/range {p0 .. p0}, Lcom/android/server/content/SyncManager$SyncHandler;->maybeStartNextSyncH()J
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    #@1f1
    move-result-wide v14

    #@1f2
    goto/16 :goto_0

    #@1f4
    .line 2274
    .end local v17    # "syncResult":Landroid/content/SyncResult;
    :cond_8
    :try_start_5
    iget-object v0, v4, Lcom/android/server/content/SyncManager$ActiveSyncContext;->mSyncServiceAdapter:Landroid/content/ISyncServiceAdapter;

    #@1f6
    move-object/from16 v18, v0

    #@1f8
    if-eqz v18, :cond_7

    #@1fa
    .line 2275
    iget-object v0, v4, Lcom/android/server/content/SyncManager$ActiveSyncContext;->mSyncServiceAdapter:Landroid/content/ISyncServiceAdapter;

    #@1fc
    move-object/from16 v18, v0

    #@1fe
    move-object/from16 v0, v18

    #@200
    invoke-interface {v0, v4}, Landroid/content/ISyncServiceAdapter;->cancelSync(Landroid/content/ISyncContext;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    #@203
    goto :goto_1

    #@204
    .line 2278
    :catch_0
    move-exception v5

    #@205
    .local v5, "e":Landroid/os/RemoteException;
    goto :goto_1

    #@206
    .line 2295
    .end local v4    # "currentSyncContext":Lcom/android/server/content/SyncManager$ActiveSyncContext;
    .end local v5    # "e":Landroid/os/RemoteException;
    :pswitch_4
    :try_start_6
    const-string/jumbo v18, "SyncManager"

    #@209
    const/16 v19, 0x2

    #@20b
    invoke-static/range {v18 .. v19}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    #@20e
    move-result v11

    #@20f
    .line 2296
    .local v11, "isLoggable":Z
    if-eqz v11, :cond_9

    #@211
    .line 2297
    const-string/jumbo v18, "SyncManager"

    #@214
    const-string/jumbo v19, "handleSyncHandlerMessage: MESSAGE_SYNC_ALARM"

    #@217
    invoke-static/range {v18 .. v19}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    #@21a
    .line 2299
    :cond_9
    const/16 v18, 0x0

    #@21c
    move-object/from16 v0, v18

    #@21e
    move-object/from16 v1, p0

    #@220
    iput-object v0, v1, Lcom/android/server/content/SyncManager$SyncHandler;->mAlarmScheduleTime:Ljava/lang/Long;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    #@222
    .line 2301
    :try_start_7
    invoke-direct/range {p0 .. p0}, Lcom/android/server/content/SyncManager$SyncHandler;->maybeStartNextSyncH()J
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    #@225
    move-result-wide v14

    #@226
    .line 2303
    :try_start_8
    move-object/from16 v0, p0

    #@228
    iget-object v0, v0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    #@22a
    move-object/from16 v18, v0

    #@22c
    invoke-static/range {v18 .. v18}, Lcom/android/server/content/SyncManager;->-get11(Lcom/android/server/content/SyncManager;)Landroid/os/PowerManager$WakeLock;

    #@22f
    move-result-object v18

    #@230
    invoke-virtual/range {v18 .. v18}, Landroid/os/PowerManager$WakeLock;->release()V

    #@233
    goto/16 :goto_0

    #@235
    .line 2302
    :catchall_1
    move-exception v18

    #@236
    .line 2303
    move-object/from16 v0, p0

    #@238
    iget-object v0, v0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    #@23a
    move-object/from16 v19, v0

    #@23c
    invoke-static/range {v19 .. v19}, Lcom/android/server/content/SyncManager;->-get11(Lcom/android/server/content/SyncManager;)Landroid/os/PowerManager$WakeLock;

    #@23f
    move-result-object v19

    #@240
    invoke-virtual/range {v19 .. v19}, Landroid/os/PowerManager$WakeLock;->release()V

    #@243
    .line 2302
    throw v18

    #@244
    .line 2309
    .end local v11    # "isLoggable":Z
    :pswitch_5
    const-string/jumbo v18, "SyncManager"

    #@247
    const/16 v19, 0x2

    #@249
    invoke-static/range {v18 .. v19}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    #@24c
    move-result v18

    #@24d
    if-eqz v18, :cond_a

    #@24f
    .line 2310
    const-string/jumbo v18, "SyncManager"

    #@252
    const-string/jumbo v19, "handleSyncHandlerMessage: MESSAGE_CHECK_ALARMS"

    #@255
    invoke-static/range {v18 .. v19}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    #@258
    .line 2312
    :cond_a
    invoke-direct/range {p0 .. p0}, Lcom/android/server/content/SyncManager$SyncHandler;->maybeStartNextSyncH()J

    #@25b
    move-result-wide v14

    #@25c
    goto/16 :goto_0

    #@25e
    .line 2315
    :pswitch_6
    move-object/from16 v0, p1

    #@260
    iget-object v9, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@262
    check-cast v9, Lcom/android/server/content/SyncManager$ActiveSyncContext;

    #@264
    .line 2316
    .local v9, "expiredContext":Lcom/android/server/content/SyncManager$ActiveSyncContext;
    const-string/jumbo v18, "SyncManager"

    #@267
    const/16 v19, 0x3

    #@269
    invoke-static/range {v18 .. v19}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    #@26c
    move-result v18

    #@26d
    if-eqz v18, :cond_b

    #@26f
    .line 2317
    const-string/jumbo v18, "SyncManager"

    #@272
    new-instance v19, Ljava/lang/StringBuilder;

    #@274
    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    #@277
    const-string/jumbo v20, "handleSyncHandlerMessage: MESSAGE_SYNC_EXPIRED: cancelling "

    #@27a
    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@27d
    move-result-object v19

    #@27e
    move-object/from16 v0, v19

    #@280
    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@283
    move-result-object v19

    #@284
    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@287
    move-result-object v19

    #@288
    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@28b
    .line 2321
    :cond_b
    const/16 v18, 0x0

    #@28d
    .line 2320
    move-object/from16 v0, p0

    #@28f
    move-object/from16 v1, v18

    #@291
    invoke-direct {v0, v1, v9}, Lcom/android/server/content/SyncManager$SyncHandler;->runSyncFinishedOrCanceledH(Landroid/content/SyncResult;Lcom/android/server/content/SyncManager$ActiveSyncContext;)V

    #@294
    .line 2323
    invoke-direct/range {p0 .. p0}, Lcom/android/server/content/SyncManager$SyncHandler;->maybeStartNextSyncH()J

    #@297
    move-result-wide v14

    #@298
    goto/16 :goto_0

    #@29a
    .line 2326
    .end local v9    # "expiredContext":Lcom/android/server/content/SyncManager$ActiveSyncContext;
    :pswitch_7
    move-object/from16 v0, p1

    #@29c
    iget-object v12, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@29e
    check-cast v12, Lcom/android/server/content/SyncManager$ActiveSyncContext;

    #@2a0
    .line 2327
    .local v12, "monitoredSyncContext":Lcom/android/server/content/SyncManager$ActiveSyncContext;
    const-string/jumbo v18, "SyncManager"

    #@2a3
    const/16 v19, 0x3

    #@2a5
    invoke-static/range {v18 .. v19}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    #@2a8
    move-result v18

    #@2a9
    if-eqz v18, :cond_c

    #@2ab
    .line 2328
    const-string/jumbo v18, "SyncManager"

    #@2ae
    new-instance v19, Ljava/lang/StringBuilder;

    #@2b0
    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    #@2b3
    const-string/jumbo v20, "handleSyncHandlerMessage: MESSAGE_MONITOR_SYNC: "

    #@2b6
    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2b9
    move-result-object v19

    #@2ba
    .line 2329
    iget-object v0, v12, Lcom/android/server/content/SyncManager$ActiveSyncContext;->mSyncOperation:Lcom/android/server/content/SyncOperation;

    #@2bc
    move-object/from16 v20, v0

    #@2be
    move-object/from16 v0, v20

    #@2c0
    iget-object v0, v0, Lcom/android/server/content/SyncOperation;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    #@2c2
    move-object/from16 v20, v0

    #@2c4
    .line 2328
    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@2c7
    move-result-object v19

    #@2c8
    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2cb
    move-result-object v19

    #@2cc
    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@2cf
    .line 2332
    :cond_c
    move-object/from16 v0, p0

    #@2d1
    invoke-direct {v0, v12}, Lcom/android/server/content/SyncManager$SyncHandler;->isSyncNotUsingNetworkH(Lcom/android/server/content/SyncManager$ActiveSyncContext;)Z

    #@2d4
    move-result v18

    #@2d5
    if-eqz v18, :cond_d

    #@2d7
    .line 2333
    const-string/jumbo v18, "SyncManager"

    #@2da
    .line 2334
    const-string/jumbo v19, "Detected sync making no progress for %s. cancelling."

    #@2dd
    .line 2333
    const/16 v20, 0x1

    #@2df
    move/from16 v0, v20

    #@2e1
    new-array v0, v0, [Ljava/lang/Object;

    #@2e3
    move-object/from16 v20, v0

    #@2e5
    .line 2335
    const/16 v21, 0x0

    #@2e7
    aput-object v12, v20, v21

    #@2e9
    .line 2333
    invoke-static/range {v19 .. v20}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@2ec
    move-result-object v19

    #@2ed
    invoke-static/range {v18 .. v19}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@2f0
    .line 2337
    const/16 v18, 0x0

    #@2f2
    .line 2336
    move-object/from16 v0, p0

    #@2f4
    move-object/from16 v1, v18

    #@2f6
    invoke-direct {v0, v1, v12}, Lcom/android/server/content/SyncManager$SyncHandler;->runSyncFinishedOrCanceledH(Landroid/content/SyncResult;Lcom/android/server/content/SyncManager$ActiveSyncContext;)V

    #@2f9
    goto/16 :goto_0

    #@2fb
    .line 2340
    :cond_d
    move-object/from16 v0, p0

    #@2fd
    iget-object v0, v0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    #@2ff
    move-object/from16 v18, v0

    #@301
    move-object/from16 v0, v18

    #@303
    invoke-static {v0, v12}, Lcom/android/server/content/SyncManager;->-wrap14(Lcom/android/server/content/SyncManager;Lcom/android/server/content/SyncManager$ActiveSyncContext;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    #@306
    goto/16 :goto_0

    #@308
    .line 2215
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_4
        :pswitch_5
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method

.method public insertStartSyncEvent(Lcom/android/server/content/SyncOperation;)J
    .locals 4
    .param p1, "syncOperation"    # Lcom/android/server/content/SyncOperation;

    #@0
    .prologue
    .line 3309
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    #@3
    move-result-wide v0

    #@4
    .line 3311
    .local v0, "now":J
    const/4 v2, 0x0

    #@5
    invoke-virtual {p1, v2}, Lcom/android/server/content/SyncOperation;->toEventLog(I)[Ljava/lang/Object;

    #@8
    move-result-object v2

    #@9
    .line 3310
    const/16 v3, 0xaa0

    #@b
    invoke-static {v3, v2}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    #@e
    .line 3312
    iget-object v2, p0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    #@10
    invoke-static {v2}, Lcom/android/server/content/SyncManager;->-get22(Lcom/android/server/content/SyncManager;)Lcom/android/server/content/SyncStorageEngine;

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
    .line 2108
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
    .line 2109
    const-string/jumbo v0, "SyncManager"

    #@d
    const-string/jumbo v1, "Boot completed, clearing boot queue."

    #@10
    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    #@13
    .line 2111
    :cond_0
    iget-object v0, p0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    #@15
    invoke-static {v0}, Lcom/android/server/content/SyncManager;->-wrap8(Lcom/android/server/content/SyncManager;)V

    #@18
    .line 2112
    monitor-enter p0

    #@19
    .line 2114
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/content/SyncManager$SyncHandler;->maybeEmptyUnreadyQueueLocked()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1c
    monitor-exit p0

    #@1d
    .line 2107
    return-void

    #@1e
    .line 2112
    :catchall_0
    move-exception v0

    #@1f
    monitor-exit p0

    #@20
    throw v0
.end method

.method onDeviceProvisioned()V
    .locals 3

    #@0
    .prologue
    .line 2119
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
    .line 2120
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
    invoke-static {v2}, Lcom/android/server/content/SyncManager;->-get14(Lcom/android/server/content/SyncManager;)Z

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
    .line 2122
    :cond_0
    monitor-enter p0

    #@2b
    .line 2123
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/content/SyncManager$SyncHandler;->maybeEmptyUnreadyQueueLocked()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@2e
    monitor-exit p0

    #@2f
    .line 2118
    return-void

    #@30
    .line 2122
    :catchall_0
    move-exception v0

    #@31
    monitor-exit p0

    #@32
    throw v0
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
    .line 3318
    const/4 v1, 0x1

    #@1
    invoke-virtual {p3, v1}, Lcom/android/server/content/SyncOperation;->toEventLog(I)[Ljava/lang/Object;

    #@4
    move-result-object v1

    #@5
    .line 3317
    const/16 v2, 0xaa0

    #@7
    invoke-static {v2, v1}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    #@a
    .line 3319
    iget-object v1, p0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    #@c
    invoke-static {v1}, Lcom/android/server/content/SyncManager;->-get22(Lcom/android/server/content/SyncManager;)Lcom/android/server/content/SyncStorageEngine;

    #@f
    move-result-object v1

    #@10
    .line 3320
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
    .line 3319
    invoke-virtual/range {v1 .. v10}, Lcom/android/server/content/SyncStorageEngine;->stopSyncEvent(JJLjava/lang/String;JJ)V

    #@1d
    .line 3316
    return-void
.end method
