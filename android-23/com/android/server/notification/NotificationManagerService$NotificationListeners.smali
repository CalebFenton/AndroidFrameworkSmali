.class public Lcom/android/server/notification/NotificationManagerService$NotificationListeners;
.super Lcom/android/server/notification/ManagedServices;
.source "NotificationManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/notification/NotificationManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "NotificationListeners"
.end annotation


# instance fields
.field private final mLightTrimListeners:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet",
            "<",
            "Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mNotificationGroupsDesired:Z

.field final synthetic this$0:Lcom/android/server/notification/NotificationManagerService;


# direct methods
.method static synthetic -wrap0(Lcom/android/server/notification/NotificationManagerService$NotificationListeners;Ljava/lang/String;)Z
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;

    #@0
    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/notification/NotificationManagerService$NotificationListeners;->isListenerPackage(Ljava/lang/String;)Z

    #@3
    move-result v0

    #@4
    return v0
.end method

.method static synthetic -wrap1(Lcom/android/server/notification/NotificationManagerService$NotificationListeners;Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;I)V
    .locals 0
    .param p1, "info"    # Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;
    .param p2, "interruptionFilter"    # I

    #@0
    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/server/notification/NotificationManagerService$NotificationListeners;->notifyInterruptionFilterChanged(Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;I)V

    #@3
    return-void
.end method

.method static synthetic -wrap2(Lcom/android/server/notification/NotificationManagerService$NotificationListeners;Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;I)V
    .locals 0
    .param p1, "info"    # Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;
    .param p2, "hints"    # I

    #@0
    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/server/notification/NotificationManagerService$NotificationListeners;->notifyListenerHintsChanged(Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;I)V

    #@3
    return-void
.end method

.method static synthetic -wrap3(Lcom/android/server/notification/NotificationManagerService$NotificationListeners;Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;Landroid/service/notification/StatusBarNotification;Landroid/service/notification/NotificationRankingUpdate;)V
    .locals 0
    .param p1, "info"    # Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;
    .param p2, "sbn"    # Landroid/service/notification/StatusBarNotification;
    .param p3, "rankingUpdate"    # Landroid/service/notification/NotificationRankingUpdate;

    #@0
    .prologue
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/notification/NotificationManagerService$NotificationListeners;->notifyPosted(Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;Landroid/service/notification/StatusBarNotification;Landroid/service/notification/NotificationRankingUpdate;)V

    #@3
    return-void
.end method

.method static synthetic -wrap4(Lcom/android/server/notification/NotificationManagerService$NotificationListeners;Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;Landroid/service/notification/NotificationRankingUpdate;)V
    .locals 0
    .param p1, "info"    # Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;
    .param p2, "rankingUpdate"    # Landroid/service/notification/NotificationRankingUpdate;

    #@0
    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/server/notification/NotificationManagerService$NotificationListeners;->notifyRankingUpdate(Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;Landroid/service/notification/NotificationRankingUpdate;)V

    #@3
    return-void
.end method

.method static synthetic -wrap5(Lcom/android/server/notification/NotificationManagerService$NotificationListeners;Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;Landroid/service/notification/StatusBarNotification;Landroid/service/notification/NotificationRankingUpdate;)V
    .locals 0
    .param p1, "info"    # Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;
    .param p2, "sbn"    # Landroid/service/notification/StatusBarNotification;
    .param p3, "rankingUpdate"    # Landroid/service/notification/NotificationRankingUpdate;

    #@0
    .prologue
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/notification/NotificationManagerService$NotificationListeners;->notifyRemoved(Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;Landroid/service/notification/StatusBarNotification;Landroid/service/notification/NotificationRankingUpdate;)V

    #@3
    return-void
.end method

.method public constructor <init>(Lcom/android/server/notification/NotificationManagerService;)V
    .locals 4
    .param p1, "this$0"    # Lcom/android/server/notification/NotificationManagerService;

    #@0
    .prologue
    .line 3227
    iput-object p1, p0, Lcom/android/server/notification/NotificationManagerService$NotificationListeners;->this$0:Lcom/android/server/notification/NotificationManagerService;

    #@2
    .line 3228
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationManagerService;->getContext()Landroid/content/Context;

    #@5
    move-result-object v0

    #@6
    invoke-static {p1}, Lcom/android/server/notification/NotificationManagerService;->-get8(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/NotificationManagerService$WorkerHandler;

    #@9
    move-result-object v1

    #@a
    iget-object v2, p1, Lcom/android/server/notification/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;

    #@c
    invoke-static {p1}, Lcom/android/server/notification/NotificationManagerService;->-get18(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/ManagedServices$UserProfiles;

    #@f
    move-result-object v3

    #@10
    invoke-direct {p0, v0, v1, v2, v3}, Lcom/android/server/notification/ManagedServices;-><init>(Landroid/content/Context;Landroid/os/Handler;Ljava/lang/Object;Lcom/android/server/notification/ManagedServices$UserProfiles;)V

    #@13
    .line 3224
    new-instance v0, Landroid/util/ArraySet;

    #@15
    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    #@18
    iput-object v0, p0, Lcom/android/server/notification/NotificationManagerService$NotificationListeners;->mLightTrimListeners:Landroid/util/ArraySet;

    #@1a
    .line 3227
    return-void
.end method

.method private isListenerPackage(Ljava/lang/String;)Z
    .locals 5
    .param p1, "packageName"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 3461
    if-nez p1, :cond_0

    #@3
    .line 3462
    return v4

    #@4
    .line 3465
    :cond_0
    iget-object v2, p0, Lcom/android/server/notification/NotificationManagerService$NotificationListeners;->this$0:Lcom/android/server/notification/NotificationManagerService;

    #@6
    iget-object v3, v2, Lcom/android/server/notification/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;

    #@8
    monitor-enter v3

    #@9
    .line 3466
    :try_start_0
    iget-object v2, p0, Lcom/android/server/notification/NotificationManagerService$NotificationListeners;->mServices:Ljava/util/ArrayList;

    #@b
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@e
    move-result-object v1

    #@f
    .local v1, "serviceInfo$iterator":Ljava/util/Iterator;
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@12
    move-result v2

    #@13
    if-eqz v2, :cond_2

    #@15
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@18
    move-result-object v0

    #@19
    check-cast v0, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;

    #@1b
    .line 3467
    .local v0, "serviceInfo":Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;
    iget-object v2, v0, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;->component:Landroid/content/ComponentName;

    #@1d
    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    #@20
    move-result-object v2

    #@21
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@24
    move-result v2

    #@25
    if-eqz v2, :cond_1

    #@27
    .line 3468
    const/4 v2, 0x1

    #@28
    monitor-exit v3

    #@29
    return v2

    #@2a
    .end local v0    # "serviceInfo":Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;
    :cond_2
    monitor-exit v3

    #@2b
    .line 3472
    return v4

    #@2c
    .line 3465
    .end local v1    # "serviceInfo$iterator":Ljava/util/Iterator;
    :catchall_0
    move-exception v2

    #@2d
    monitor-exit v3

    #@2e
    throw v2
.end method

.method private notifyInterruptionFilterChanged(Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;I)V
    .locals 5
    .param p1, "info"    # Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;
    .param p2, "interruptionFilter"    # I

    #@0
    .prologue
    .line 3452
    iget-object v1, p1, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;->service:Landroid/os/IInterface;

    #@2
    check-cast v1, Landroid/service/notification/INotificationListener;

    #@4
    .line 3454
    .local v1, "listener":Landroid/service/notification/INotificationListener;
    :try_start_0
    invoke-interface {v1, p2}, Landroid/service/notification/INotificationListener;->onInterruptionFilterChanged(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@7
    .line 3451
    :goto_0
    return-void

    #@8
    .line 3455
    :catch_0
    move-exception v0

    #@9
    .line 3456
    .local v0, "ex":Landroid/os/RemoteException;
    iget-object v2, p0, Lcom/android/server/notification/NotificationManagerService$NotificationListeners;->TAG:Ljava/lang/String;

    #@b
    new-instance v3, Ljava/lang/StringBuilder;

    #@d
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@10
    const-string/jumbo v4, "unable to notify listener (interruption filter): "

    #@13
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@16
    move-result-object v3

    #@17
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@1a
    move-result-object v3

    #@1b
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1e
    move-result-object v3

    #@1f
    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@22
    goto :goto_0
.end method

.method private notifyListenerHintsChanged(Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;I)V
    .locals 5
    .param p1, "info"    # Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;
    .param p2, "hints"    # I

    #@0
    .prologue
    .line 3442
    iget-object v1, p1, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;->service:Landroid/os/IInterface;

    #@2
    check-cast v1, Landroid/service/notification/INotificationListener;

    #@4
    .line 3444
    .local v1, "listener":Landroid/service/notification/INotificationListener;
    :try_start_0
    invoke-interface {v1, p2}, Landroid/service/notification/INotificationListener;->onListenerHintsChanged(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@7
    .line 3441
    :goto_0
    return-void

    #@8
    .line 3445
    :catch_0
    move-exception v0

    #@9
    .line 3446
    .local v0, "ex":Landroid/os/RemoteException;
    iget-object v2, p0, Lcom/android/server/notification/NotificationManagerService$NotificationListeners;->TAG:Ljava/lang/String;

    #@b
    new-instance v3, Ljava/lang/StringBuilder;

    #@d
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@10
    const-string/jumbo v4, "unable to notify listener (listener hints): "

    #@13
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@16
    move-result-object v3

    #@17
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@1a
    move-result-object v3

    #@1b
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1e
    move-result-object v3

    #@1f
    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@22
    goto :goto_0
.end method

.method private notifyPosted(Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;Landroid/service/notification/StatusBarNotification;Landroid/service/notification/NotificationRankingUpdate;)V
    .locals 6
    .param p1, "info"    # Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;
    .param p2, "sbn"    # Landroid/service/notification/StatusBarNotification;
    .param p3, "rankingUpdate"    # Landroid/service/notification/NotificationRankingUpdate;

    #@0
    .prologue
    .line 3408
    iget-object v1, p1, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;->service:Landroid/os/IInterface;

    #@2
    check-cast v1, Landroid/service/notification/INotificationListener;

    #@4
    .line 3409
    .local v1, "listener":Landroid/service/notification/INotificationListener;
    new-instance v2, Lcom/android/server/notification/NotificationManagerService$StatusBarNotificationHolder;

    #@6
    invoke-direct {v2, p2}, Lcom/android/server/notification/NotificationManagerService$StatusBarNotificationHolder;-><init>(Landroid/service/notification/StatusBarNotification;)V

    #@9
    .line 3411
    .local v2, "sbnHolder":Lcom/android/server/notification/NotificationManagerService$StatusBarNotificationHolder;
    :try_start_0
    invoke-interface {v1, v2, p3}, Landroid/service/notification/INotificationListener;->onNotificationPosted(Landroid/service/notification/IStatusBarNotificationHolder;Landroid/service/notification/NotificationRankingUpdate;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@c
    .line 3407
    :goto_0
    return-void

    #@d
    .line 3412
    :catch_0
    move-exception v0

    #@e
    .line 3413
    .local v0, "ex":Landroid/os/RemoteException;
    iget-object v3, p0, Lcom/android/server/notification/NotificationManagerService$NotificationListeners;->TAG:Ljava/lang/String;

    #@10
    new-instance v4, Ljava/lang/StringBuilder;

    #@12
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@15
    const-string/jumbo v5, "unable to notify listener (posted): "

    #@18
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1b
    move-result-object v4

    #@1c
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@1f
    move-result-object v4

    #@20
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@23
    move-result-object v4

    #@24
    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@27
    goto :goto_0
.end method

.method private notifyRankingUpdate(Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;Landroid/service/notification/NotificationRankingUpdate;)V
    .locals 5
    .param p1, "info"    # Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;
    .param p2, "rankingUpdate"    # Landroid/service/notification/NotificationRankingUpdate;

    #@0
    .prologue
    .line 3433
    iget-object v1, p1, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;->service:Landroid/os/IInterface;

    #@2
    check-cast v1, Landroid/service/notification/INotificationListener;

    #@4
    .line 3435
    .local v1, "listener":Landroid/service/notification/INotificationListener;
    :try_start_0
    invoke-interface {v1, p2}, Landroid/service/notification/INotificationListener;->onNotificationRankingUpdate(Landroid/service/notification/NotificationRankingUpdate;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@7
    .line 3432
    :goto_0
    return-void

    #@8
    .line 3436
    :catch_0
    move-exception v0

    #@9
    .line 3437
    .local v0, "ex":Landroid/os/RemoteException;
    iget-object v2, p0, Lcom/android/server/notification/NotificationManagerService$NotificationListeners;->TAG:Ljava/lang/String;

    #@b
    new-instance v3, Ljava/lang/StringBuilder;

    #@d
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@10
    const-string/jumbo v4, "unable to notify listener (ranking update): "

    #@13
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@16
    move-result-object v3

    #@17
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@1a
    move-result-object v3

    #@1b
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1e
    move-result-object v3

    #@1f
    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@22
    goto :goto_0
.end method

.method private notifyRemoved(Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;Landroid/service/notification/StatusBarNotification;Landroid/service/notification/NotificationRankingUpdate;)V
    .locals 6
    .param p1, "info"    # Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;
    .param p2, "sbn"    # Landroid/service/notification/StatusBarNotification;
    .param p3, "rankingUpdate"    # Landroid/service/notification/NotificationRankingUpdate;

    #@0
    .prologue
    .line 3419
    invoke-virtual {p2}, Landroid/service/notification/StatusBarNotification;->getUserId()I

    #@3
    move-result v3

    #@4
    invoke-virtual {p1, v3}, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;->enabledAndUserMatches(I)Z

    #@7
    move-result v3

    #@8
    if-nez v3, :cond_0

    #@a
    .line 3420
    return-void

    #@b
    .line 3422
    :cond_0
    iget-object v1, p1, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;->service:Landroid/os/IInterface;

    #@d
    check-cast v1, Landroid/service/notification/INotificationListener;

    #@f
    .line 3423
    .local v1, "listener":Landroid/service/notification/INotificationListener;
    new-instance v2, Lcom/android/server/notification/NotificationManagerService$StatusBarNotificationHolder;

    #@11
    invoke-direct {v2, p2}, Lcom/android/server/notification/NotificationManagerService$StatusBarNotificationHolder;-><init>(Landroid/service/notification/StatusBarNotification;)V

    #@14
    .line 3425
    .local v2, "sbnHolder":Lcom/android/server/notification/NotificationManagerService$StatusBarNotificationHolder;
    :try_start_0
    invoke-interface {v1, v2, p3}, Landroid/service/notification/INotificationListener;->onNotificationRemoved(Landroid/service/notification/IStatusBarNotificationHolder;Landroid/service/notification/NotificationRankingUpdate;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@17
    .line 3418
    :goto_0
    return-void

    #@18
    .line 3426
    :catch_0
    move-exception v0

    #@19
    .line 3427
    .local v0, "ex":Landroid/os/RemoteException;
    iget-object v3, p0, Lcom/android/server/notification/NotificationManagerService$NotificationListeners;->TAG:Ljava/lang/String;

    #@1b
    new-instance v4, Ljava/lang/StringBuilder;

    #@1d
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@20
    const-string/jumbo v5, "unable to notify listener (removed): "

    #@23
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@26
    move-result-object v4

    #@27
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@2a
    move-result-object v4

    #@2b
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2e
    move-result-object v4

    #@2f
    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@32
    goto :goto_0
.end method

.method private updateNotificationGroupsDesiredLocked()V
    .locals 3

    #@0
    .prologue
    const/4 v1, 0x1

    #@1
    const/4 v2, 0x0

    #@2
    .line 3486
    iput-boolean v1, p0, Lcom/android/server/notification/NotificationManagerService$NotificationListeners;->mNotificationGroupsDesired:Z

    #@4
    .line 3488
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$NotificationListeners;->mServices:Ljava/util/ArrayList;

    #@6
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    #@9
    move-result v0

    #@a
    if-eqz v0, :cond_0

    #@c
    .line 3489
    iput-boolean v2, p0, Lcom/android/server/notification/NotificationManagerService$NotificationListeners;->mNotificationGroupsDesired:Z

    #@e
    .line 3490
    return-void

    #@f
    .line 3493
    :cond_0
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$NotificationListeners;->mServices:Ljava/util/ArrayList;

    #@11
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    #@14
    move-result v0

    #@15
    if-ne v0, v1, :cond_1

    #@17
    .line 3494
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$NotificationListeners;->mServices:Ljava/util/ArrayList;

    #@19
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@1c
    move-result-object v0

    #@1d
    check-cast v0, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;

    #@1f
    iget-object v0, v0, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;->component:Landroid/content/ComponentName;

    #@21
    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    #@24
    move-result-object v0

    #@25
    const-string/jumbo v1, "com.android.systemui"

    #@28
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@2b
    move-result v0

    #@2c
    .line 3493
    if-eqz v0, :cond_1

    #@2e
    .line 3495
    iput-boolean v2, p0, Lcom/android/server/notification/NotificationManagerService$NotificationListeners;->mNotificationGroupsDesired:Z

    #@30
    .line 3496
    return-void

    #@31
    .line 3485
    :cond_1
    return-void
.end method


# virtual methods
.method protected asInterface(Landroid/os/IBinder;)Landroid/os/IInterface;
    .locals 1
    .param p1, "binder"    # Landroid/os/IBinder;

    #@0
    .prologue
    .line 3245
    invoke-static {p1}, Landroid/service/notification/INotificationListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/notification/INotificationListener;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method protected getConfig()Lcom/android/server/notification/ManagedServices$Config;
    .locals 2

    #@0
    .prologue
    .line 3233
    new-instance v0, Lcom/android/server/notification/ManagedServices$Config;

    #@2
    invoke-direct {v0}, Lcom/android/server/notification/ManagedServices$Config;-><init>()V

    #@5
    .line 3234
    .local v0, "c":Lcom/android/server/notification/ManagedServices$Config;
    const-string/jumbo v1, "notification listener"

    #@8
    iput-object v1, v0, Lcom/android/server/notification/ManagedServices$Config;->caption:Ljava/lang/String;

    #@a
    .line 3235
    const-string/jumbo v1, "android.service.notification.NotificationListenerService"

    #@d
    iput-object v1, v0, Lcom/android/server/notification/ManagedServices$Config;->serviceInterface:Ljava/lang/String;

    #@f
    .line 3236
    const-string/jumbo v1, "enabled_notification_listeners"

    #@12
    iput-object v1, v0, Lcom/android/server/notification/ManagedServices$Config;->secureSettingName:Ljava/lang/String;

    #@14
    .line 3237
    const-string/jumbo v1, "android.permission.BIND_NOTIFICATION_LISTENER_SERVICE"

    #@17
    iput-object v1, v0, Lcom/android/server/notification/ManagedServices$Config;->bindPermission:Ljava/lang/String;

    #@19
    .line 3238
    const-string/jumbo v1, "android.settings.ACTION_NOTIFICATION_LISTENER_SETTINGS"

    #@1c
    iput-object v1, v0, Lcom/android/server/notification/ManagedServices$Config;->settingsAction:Ljava/lang/String;

    #@1e
    .line 3239
    const v1, 0x104042e

    #@21
    iput v1, v0, Lcom/android/server/notification/ManagedServices$Config;->clientLabel:I

    #@23
    .line 3240
    return-object v0
.end method

.method public getOnNotificationPostedTrim(Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;)I
    .locals 1
    .param p1, "info"    # Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;

    #@0
    .prologue
    .line 3282
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$NotificationListeners;->mLightTrimListeners:Landroid/util/ArraySet;

    #@2
    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    #@5
    move-result v0

    #@6
    if-eqz v0, :cond_0

    #@8
    const/4 v0, 0x1

    #@9
    :goto_0
    return v0

    #@a
    :cond_0
    const/4 v0, 0x0

    #@b
    goto :goto_0
.end method

.method public notificationGroupsDesired()Z
    .locals 1

    #@0
    .prologue
    .line 3482
    iget-boolean v0, p0, Lcom/android/server/notification/NotificationManagerService$NotificationListeners;->mNotificationGroupsDesired:Z

    #@2
    return v0
.end method

.method public notifyInterruptionFilterChanged(I)V
    .locals 4
    .param p1, "interruptionFilter"    # I

    #@0
    .prologue
    .line 3393
    iget-object v2, p0, Lcom/android/server/notification/NotificationManagerService$NotificationListeners;->mServices:Ljava/util/ArrayList;

    #@2
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@5
    move-result-object v1

    #@6
    .local v1, "serviceInfo$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@9
    move-result v2

    #@a
    if-eqz v2, :cond_1

    #@c
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@f
    move-result-object v0

    #@10
    check-cast v0, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;

    #@12
    .line 3394
    .local v0, "serviceInfo":Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;
    invoke-virtual {v0}, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;->isEnabledForCurrentProfiles()Z

    #@15
    move-result v2

    #@16
    if-eqz v2, :cond_0

    #@18
    .line 3397
    iget-object v2, p0, Lcom/android/server/notification/NotificationManagerService$NotificationListeners;->this$0:Lcom/android/server/notification/NotificationManagerService;

    #@1a
    invoke-static {v2}, Lcom/android/server/notification/NotificationManagerService;->-get8(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/NotificationManagerService$WorkerHandler;

    #@1d
    move-result-object v2

    #@1e
    new-instance v3, Lcom/android/server/notification/NotificationManagerService$NotificationListeners$6;

    #@20
    invoke-direct {v3, p0, v0, p1}, Lcom/android/server/notification/NotificationManagerService$NotificationListeners$6;-><init>(Lcom/android/server/notification/NotificationManagerService$NotificationListeners;Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;I)V

    #@23
    invoke-virtual {v2, v3}, Lcom/android/server/notification/NotificationManagerService$WorkerHandler;->post(Ljava/lang/Runnable;)Z

    #@26
    goto :goto_0

    #@27
    .line 3392
    .end local v0    # "serviceInfo":Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;
    :cond_1
    return-void
.end method

.method public notifyListenerHintsChangedLocked(I)V
    .locals 4
    .param p1, "hints"    # I

    #@0
    .prologue
    .line 3379
    iget-object v2, p0, Lcom/android/server/notification/NotificationManagerService$NotificationListeners;->mServices:Ljava/util/ArrayList;

    #@2
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@5
    move-result-object v1

    #@6
    .local v1, "serviceInfo$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@9
    move-result v2

    #@a
    if-eqz v2, :cond_1

    #@c
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@f
    move-result-object v0

    #@10
    check-cast v0, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;

    #@12
    .line 3380
    .local v0, "serviceInfo":Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;
    invoke-virtual {v0}, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;->isEnabledForCurrentProfiles()Z

    #@15
    move-result v2

    #@16
    if-eqz v2, :cond_0

    #@18
    .line 3383
    iget-object v2, p0, Lcom/android/server/notification/NotificationManagerService$NotificationListeners;->this$0:Lcom/android/server/notification/NotificationManagerService;

    #@1a
    invoke-static {v2}, Lcom/android/server/notification/NotificationManagerService;->-get8(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/NotificationManagerService$WorkerHandler;

    #@1d
    move-result-object v2

    #@1e
    new-instance v3, Lcom/android/server/notification/NotificationManagerService$NotificationListeners$5;

    #@20
    invoke-direct {v3, p0, v0, p1}, Lcom/android/server/notification/NotificationManagerService$NotificationListeners$5;-><init>(Lcom/android/server/notification/NotificationManagerService$NotificationListeners;Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;I)V

    #@23
    invoke-virtual {v2, v3}, Lcom/android/server/notification/NotificationManagerService$WorkerHandler;->post(Ljava/lang/Runnable;)Z

    #@26
    goto :goto_0

    #@27
    .line 3378
    .end local v0    # "serviceInfo":Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;
    :cond_1
    return-void
.end method

.method public notifyPostedLocked(Landroid/service/notification/StatusBarNotification;Landroid/service/notification/StatusBarNotification;)V
    .locals 12
    .param p1, "sbn"    # Landroid/service/notification/StatusBarNotification;
    .param p2, "oldSbn"    # Landroid/service/notification/StatusBarNotification;

    #@0
    .prologue
    .line 3295
    const/4 v4, 0x0

    #@1
    .line 3296
    .local v4, "sbnClone":Landroid/service/notification/StatusBarNotification;
    const/4 v5, 0x0

    #@2
    .line 3298
    .local v5, "sbnCloneLight":Landroid/service/notification/StatusBarNotification;
    iget-object v10, p0, Lcom/android/server/notification/NotificationManagerService$NotificationListeners;->mServices:Ljava/util/ArrayList;

    #@4
    invoke-interface {v10}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@7
    move-result-object v1

    #@8
    .end local v4    # "sbnClone":Landroid/service/notification/StatusBarNotification;
    .end local v5    # "sbnCloneLight":Landroid/service/notification/StatusBarNotification;
    .local v1, "info$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@b
    move-result v10

    #@c
    if-eqz v10, :cond_8

    #@e
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@11
    move-result-object v0

    #@12
    check-cast v0, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;

    #@14
    .line 3299
    .local v0, "info":Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;
    iget-object v10, p0, Lcom/android/server/notification/NotificationManagerService$NotificationListeners;->this$0:Lcom/android/server/notification/NotificationManagerService;

    #@16
    invoke-static {v10, p1, v0}, Lcom/android/server/notification/NotificationManagerService;->-wrap2(Lcom/android/server/notification/NotificationManagerService;Landroid/service/notification/StatusBarNotification;Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;)Z

    #@19
    move-result v7

    #@1a
    .line 3300
    .local v7, "sbnVisible":Z
    if-eqz p2, :cond_4

    #@1c
    iget-object v10, p0, Lcom/android/server/notification/NotificationManagerService$NotificationListeners;->this$0:Lcom/android/server/notification/NotificationManagerService;

    #@1e
    invoke-static {v10, p2, v0}, Lcom/android/server/notification/NotificationManagerService;->-wrap2(Lcom/android/server/notification/NotificationManagerService;Landroid/service/notification/StatusBarNotification;Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;)Z

    #@21
    move-result v3

    #@22
    .line 3302
    :goto_1
    if-nez v3, :cond_1

    #@24
    if-eqz v7, :cond_0

    #@26
    .line 3305
    :cond_1
    iget-object v10, p0, Lcom/android/server/notification/NotificationManagerService$NotificationListeners;->this$0:Lcom/android/server/notification/NotificationManagerService;

    #@28
    invoke-static {v10, v0}, Lcom/android/server/notification/NotificationManagerService;->-wrap0(Lcom/android/server/notification/NotificationManagerService;Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;)Landroid/service/notification/NotificationRankingUpdate;

    #@2b
    move-result-object v9

    #@2c
    .line 3308
    .local v9, "update":Landroid/service/notification/NotificationRankingUpdate;
    if-eqz v3, :cond_2

    #@2e
    if-eqz v7, :cond_5

    #@30
    .line 3319
    :cond_2
    iget-object v10, p0, Lcom/android/server/notification/NotificationManagerService$NotificationListeners;->this$0:Lcom/android/server/notification/NotificationManagerService;

    #@32
    invoke-static {v10}, Lcom/android/server/notification/NotificationManagerService;->-get11(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/NotificationManagerService$NotificationListeners;

    #@35
    move-result-object v10

    #@36
    invoke-virtual {v10, v0}, Lcom/android/server/notification/NotificationManagerService$NotificationListeners;->getOnNotificationPostedTrim(Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;)I

    #@39
    move-result v8

    #@3a
    .line 3321
    .local v8, "trim":I
    const/4 v10, 0x1

    #@3b
    if-ne v8, v10, :cond_6

    #@3d
    if-nez v5, :cond_6

    #@3f
    .line 3322
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->cloneLight()Landroid/service/notification/StatusBarNotification;

    #@42
    move-result-object v5

    #@43
    .line 3327
    :cond_3
    :goto_2
    if-nez v8, :cond_7

    #@45
    move-object v6, v4

    #@46
    .line 3329
    .local v6, "sbnToPost":Landroid/service/notification/StatusBarNotification;
    :goto_3
    iget-object v10, p0, Lcom/android/server/notification/NotificationManagerService$NotificationListeners;->this$0:Lcom/android/server/notification/NotificationManagerService;

    #@48
    invoke-static {v10}, Lcom/android/server/notification/NotificationManagerService;->-get8(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/NotificationManagerService$WorkerHandler;

    #@4b
    move-result-object v10

    #@4c
    new-instance v11, Lcom/android/server/notification/NotificationManagerService$NotificationListeners$2;

    #@4e
    invoke-direct {v11, p0, v0, v6, v9}, Lcom/android/server/notification/NotificationManagerService$NotificationListeners$2;-><init>(Lcom/android/server/notification/NotificationManagerService$NotificationListeners;Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;Landroid/service/notification/StatusBarNotification;Landroid/service/notification/NotificationRankingUpdate;)V

    #@51
    invoke-virtual {v10, v11}, Lcom/android/server/notification/NotificationManagerService$WorkerHandler;->post(Ljava/lang/Runnable;)Z

    #@54
    goto :goto_0

    #@55
    .line 3300
    .end local v6    # "sbnToPost":Landroid/service/notification/StatusBarNotification;
    .end local v8    # "trim":I
    .end local v9    # "update":Landroid/service/notification/NotificationRankingUpdate;
    :cond_4
    const/4 v3, 0x0

    #@56
    .local v3, "oldSbnVisible":Z
    goto :goto_1

    #@57
    .line 3309
    .end local v3    # "oldSbnVisible":Z
    .restart local v9    # "update":Landroid/service/notification/NotificationRankingUpdate;
    :cond_5
    invoke-virtual {p2}, Landroid/service/notification/StatusBarNotification;->cloneLight()Landroid/service/notification/StatusBarNotification;

    #@5a
    move-result-object v2

    #@5b
    .line 3310
    .local v2, "oldSbnLightClone":Landroid/service/notification/StatusBarNotification;
    iget-object v10, p0, Lcom/android/server/notification/NotificationManagerService$NotificationListeners;->this$0:Lcom/android/server/notification/NotificationManagerService;

    #@5d
    invoke-static {v10}, Lcom/android/server/notification/NotificationManagerService;->-get8(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/NotificationManagerService$WorkerHandler;

    #@60
    move-result-object v10

    #@61
    new-instance v11, Lcom/android/server/notification/NotificationManagerService$NotificationListeners$1;

    #@63
    invoke-direct {v11, p0, v0, v2, v9}, Lcom/android/server/notification/NotificationManagerService$NotificationListeners$1;-><init>(Lcom/android/server/notification/NotificationManagerService$NotificationListeners;Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;Landroid/service/notification/StatusBarNotification;Landroid/service/notification/NotificationRankingUpdate;)V

    #@66
    invoke-virtual {v10, v11}, Lcom/android/server/notification/NotificationManagerService$WorkerHandler;->post(Ljava/lang/Runnable;)Z

    #@69
    goto :goto_0

    #@6a
    .line 3323
    .end local v2    # "oldSbnLightClone":Landroid/service/notification/StatusBarNotification;
    .restart local v8    # "trim":I
    :cond_6
    if-nez v8, :cond_3

    #@6c
    if-nez v4, :cond_3

    #@6e
    .line 3324
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->clone()Landroid/service/notification/StatusBarNotification;

    #@71
    move-result-object v4

    #@72
    .local v4, "sbnClone":Landroid/service/notification/StatusBarNotification;
    goto :goto_2

    #@73
    .line 3327
    .end local v4    # "sbnClone":Landroid/service/notification/StatusBarNotification;
    :cond_7
    move-object v6, v5

    #@74
    .restart local v6    # "sbnToPost":Landroid/service/notification/StatusBarNotification;
    goto :goto_3

    #@75
    .line 3293
    .end local v0    # "info":Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;
    .end local v6    # "sbnToPost":Landroid/service/notification/StatusBarNotification;
    .end local v7    # "sbnVisible":Z
    .end local v8    # "trim":I
    .end local v9    # "update":Landroid/service/notification/NotificationRankingUpdate;
    :cond_8
    return-void
.end method

.method public notifyRankingUpdateLocked()V
    .locals 5

    #@0
    .prologue
    .line 3364
    iget-object v3, p0, Lcom/android/server/notification/NotificationManagerService$NotificationListeners;->mServices:Ljava/util/ArrayList;

    #@2
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@5
    move-result-object v1

    #@6
    .local v1, "serviceInfo$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@9
    move-result v3

    #@a
    if-eqz v3, :cond_1

    #@c
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@f
    move-result-object v0

    #@10
    check-cast v0, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;

    #@12
    .line 3365
    .local v0, "serviceInfo":Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;
    invoke-virtual {v0}, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;->isEnabledForCurrentProfiles()Z

    #@15
    move-result v3

    #@16
    if-eqz v3, :cond_0

    #@18
    .line 3368
    iget-object v3, p0, Lcom/android/server/notification/NotificationManagerService$NotificationListeners;->this$0:Lcom/android/server/notification/NotificationManagerService;

    #@1a
    invoke-static {v3, v0}, Lcom/android/server/notification/NotificationManagerService;->-wrap0(Lcom/android/server/notification/NotificationManagerService;Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;)Landroid/service/notification/NotificationRankingUpdate;

    #@1d
    move-result-object v2

    #@1e
    .line 3369
    .local v2, "update":Landroid/service/notification/NotificationRankingUpdate;
    iget-object v3, p0, Lcom/android/server/notification/NotificationManagerService$NotificationListeners;->this$0:Lcom/android/server/notification/NotificationManagerService;

    #@20
    invoke-static {v3}, Lcom/android/server/notification/NotificationManagerService;->-get8(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/NotificationManagerService$WorkerHandler;

    #@23
    move-result-object v3

    #@24
    new-instance v4, Lcom/android/server/notification/NotificationManagerService$NotificationListeners$4;

    #@26
    invoke-direct {v4, p0, v0, v2}, Lcom/android/server/notification/NotificationManagerService$NotificationListeners$4;-><init>(Lcom/android/server/notification/NotificationManagerService$NotificationListeners;Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;Landroid/service/notification/NotificationRankingUpdate;)V

    #@29
    invoke-virtual {v3, v4}, Lcom/android/server/notification/NotificationManagerService$WorkerHandler;->post(Ljava/lang/Runnable;)Z

    #@2c
    goto :goto_0

    #@2d
    .line 3363
    .end local v0    # "serviceInfo":Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;
    .end local v2    # "update":Landroid/service/notification/NotificationRankingUpdate;
    :cond_1
    return-void
.end method

.method public notifyRemovedLocked(Landroid/service/notification/StatusBarNotification;)V
    .locals 6
    .param p1, "sbn"    # Landroid/service/notification/StatusBarNotification;

    #@0
    .prologue
    .line 3345
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->cloneLight()Landroid/service/notification/StatusBarNotification;

    #@3
    move-result-object v2

    #@4
    .line 3346
    .local v2, "sbnLight":Landroid/service/notification/StatusBarNotification;
    iget-object v4, p0, Lcom/android/server/notification/NotificationManagerService$NotificationListeners;->mServices:Ljava/util/ArrayList;

    #@6
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@9
    move-result-object v1

    #@a
    .local v1, "info$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@d
    move-result v4

    #@e
    if-eqz v4, :cond_1

    #@10
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@13
    move-result-object v0

    #@14
    check-cast v0, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;

    #@16
    .line 3347
    .local v0, "info":Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;
    iget-object v4, p0, Lcom/android/server/notification/NotificationManagerService$NotificationListeners;->this$0:Lcom/android/server/notification/NotificationManagerService;

    #@18
    invoke-static {v4, p1, v0}, Lcom/android/server/notification/NotificationManagerService;->-wrap2(Lcom/android/server/notification/NotificationManagerService;Landroid/service/notification/StatusBarNotification;Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;)Z

    #@1b
    move-result v4

    #@1c
    if-eqz v4, :cond_0

    #@1e
    .line 3350
    iget-object v4, p0, Lcom/android/server/notification/NotificationManagerService$NotificationListeners;->this$0:Lcom/android/server/notification/NotificationManagerService;

    #@20
    invoke-static {v4, v0}, Lcom/android/server/notification/NotificationManagerService;->-wrap0(Lcom/android/server/notification/NotificationManagerService;Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;)Landroid/service/notification/NotificationRankingUpdate;

    #@23
    move-result-object v3

    #@24
    .line 3351
    .local v3, "update":Landroid/service/notification/NotificationRankingUpdate;
    iget-object v4, p0, Lcom/android/server/notification/NotificationManagerService$NotificationListeners;->this$0:Lcom/android/server/notification/NotificationManagerService;

    #@26
    invoke-static {v4}, Lcom/android/server/notification/NotificationManagerService;->-get8(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/NotificationManagerService$WorkerHandler;

    #@29
    move-result-object v4

    #@2a
    new-instance v5, Lcom/android/server/notification/NotificationManagerService$NotificationListeners$3;

    #@2c
    invoke-direct {v5, p0, v0, v2, v3}, Lcom/android/server/notification/NotificationManagerService$NotificationListeners$3;-><init>(Lcom/android/server/notification/NotificationManagerService$NotificationListeners;Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;Landroid/service/notification/StatusBarNotification;Landroid/service/notification/NotificationRankingUpdate;)V

    #@2f
    invoke-virtual {v4, v5}, Lcom/android/server/notification/NotificationManagerService$WorkerHandler;->post(Ljava/lang/Runnable;)Z

    #@32
    goto :goto_0

    #@33
    .line 3341
    .end local v0    # "info":Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;
    .end local v3    # "update":Landroid/service/notification/NotificationRankingUpdate;
    :cond_1
    return-void
.end method

.method public onServiceAdded(Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;)V
    .locals 5
    .param p1, "info"    # Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;

    #@0
    .prologue
    .line 3250
    iget-object v1, p1, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;->service:Landroid/os/IInterface;

    #@2
    check-cast v1, Landroid/service/notification/INotificationListener;

    #@4
    .line 3252
    .local v1, "listener":Landroid/service/notification/INotificationListener;
    iget-object v3, p0, Lcom/android/server/notification/NotificationManagerService$NotificationListeners;->this$0:Lcom/android/server/notification/NotificationManagerService;

    #@6
    iget-object v4, v3, Lcom/android/server/notification/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;

    #@8
    monitor-enter v4

    #@9
    .line 3253
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/notification/NotificationManagerService$NotificationListeners;->updateNotificationGroupsDesiredLocked()V

    #@c
    .line 3254
    iget-object v3, p0, Lcom/android/server/notification/NotificationManagerService$NotificationListeners;->this$0:Lcom/android/server/notification/NotificationManagerService;

    #@e
    invoke-static {v3, p1}, Lcom/android/server/notification/NotificationManagerService;->-wrap0(Lcom/android/server/notification/NotificationManagerService;Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;)Landroid/service/notification/NotificationRankingUpdate;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@11
    move-result-object v2

    #@12
    .local v2, "update":Landroid/service/notification/NotificationRankingUpdate;
    monitor-exit v4

    #@13
    .line 3257
    :try_start_1
    invoke-interface {v1, v2}, Landroid/service/notification/INotificationListener;->onListenerConnected(Landroid/service/notification/NotificationRankingUpdate;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    #@16
    .line 3249
    :goto_0
    return-void

    #@17
    .line 3252
    .end local v2    # "update":Landroid/service/notification/NotificationRankingUpdate;
    :catchall_0
    move-exception v3

    #@18
    monitor-exit v4

    #@19
    throw v3

    #@1a
    .line 3258
    .restart local v2    # "update":Landroid/service/notification/NotificationRankingUpdate;
    :catch_0
    move-exception v0

    #@1b
    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method protected onServiceRemovedLocked(Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;)V
    .locals 1
    .param p1, "removed"    # Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;

    #@0
    .prologue
    .line 3265
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$NotificationListeners;->this$0:Lcom/android/server/notification/NotificationManagerService;

    #@2
    invoke-static {v0}, Lcom/android/server/notification/NotificationManagerService;->-get12(Lcom/android/server/notification/NotificationManagerService;)Landroid/util/ArraySet;

    #@5
    move-result-object v0

    #@6
    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    #@9
    move-result v0

    #@a
    if-eqz v0, :cond_0

    #@c
    .line 3266
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$NotificationListeners;->this$0:Lcom/android/server/notification/NotificationManagerService;

    #@e
    invoke-static {v0}, Lcom/android/server/notification/NotificationManagerService;->-wrap26(Lcom/android/server/notification/NotificationManagerService;)V

    #@11
    .line 3267
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$NotificationListeners;->this$0:Lcom/android/server/notification/NotificationManagerService;

    #@13
    invoke-static {v0}, Lcom/android/server/notification/NotificationManagerService;->-wrap24(Lcom/android/server/notification/NotificationManagerService;)V

    #@16
    .line 3269
    :cond_0
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$NotificationListeners;->mLightTrimListeners:Landroid/util/ArraySet;

    #@18
    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    #@1b
    .line 3270
    invoke-direct {p0}, Lcom/android/server/notification/NotificationManagerService$NotificationListeners;->updateNotificationGroupsDesiredLocked()V

    #@1e
    .line 3264
    return-void
.end method

.method public setOnNotificationPostedTrimLocked(Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;I)V
    .locals 1
    .param p1, "info"    # Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;
    .param p2, "trim"    # I

    #@0
    .prologue
    .line 3274
    const/4 v0, 0x1

    #@1
    if-ne p2, v0, :cond_0

    #@3
    .line 3275
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$NotificationListeners;->mLightTrimListeners:Landroid/util/ArraySet;

    #@5
    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    #@8
    .line 3273
    :goto_0
    return-void

    #@9
    .line 3277
    :cond_0
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$NotificationListeners;->mLightTrimListeners:Landroid/util/ArraySet;

    #@b
    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    #@e
    goto :goto_0
.end method
