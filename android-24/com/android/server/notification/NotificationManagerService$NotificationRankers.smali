.class public Lcom/android/server/notification/NotificationManagerService$NotificationRankers;
.super Lcom/android/server/notification/ManagedServices;
.source "NotificationManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/notification/NotificationManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "NotificationRankers"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/notification/NotificationManagerService;


# direct methods
.method static synthetic -wrap0(Lcom/android/server/notification/NotificationManagerService$NotificationRankers;Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;Landroid/service/notification/StatusBarNotification;IZ)V
    .locals 0
    .param p1, "info"    # Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;
    .param p2, "sbn"    # Landroid/service/notification/StatusBarNotification;
    .param p3, "importance"    # I
    .param p4, "fromUser"    # Z

    #@0
    .prologue
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/notification/NotificationManagerService$NotificationRankers;->notifyEnqueued(Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;Landroid/service/notification/StatusBarNotification;IZ)V

    #@3
    return-void
.end method

.method public constructor <init>(Lcom/android/server/notification/NotificationManagerService;)V
    .locals 4
    .param p1, "this$0"    # Lcom/android/server/notification/NotificationManagerService;

    #@0
    .prologue
    .line 3781
    iput-object p1, p0, Lcom/android/server/notification/NotificationManagerService$NotificationRankers;->this$0:Lcom/android/server/notification/NotificationManagerService;

    #@2
    .line 3782
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationManagerService;->getContext()Landroid/content/Context;

    #@5
    move-result-object v0

    #@6
    invoke-static {p1}, Lcom/android/server/notification/NotificationManagerService;->-get8(Lcom/android/server/notification/NotificationManagerService;)Landroid/os/Handler;

    #@9
    move-result-object v1

    #@a
    iget-object v2, p1, Lcom/android/server/notification/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;

    #@c
    invoke-static {p1}, Lcom/android/server/notification/NotificationManagerService;->-get21(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/ManagedServices$UserProfiles;

    #@f
    move-result-object v3

    #@10
    invoke-direct {p0, v0, v1, v2, v3}, Lcom/android/server/notification/ManagedServices;-><init>(Landroid/content/Context;Landroid/os/Handler;Ljava/lang/Object;Lcom/android/server/notification/ManagedServices$UserProfiles;)V

    #@13
    .line 3781
    return-void
.end method

.method private notifyEnqueued(Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;Landroid/service/notification/StatusBarNotification;IZ)V
    .locals 6
    .param p1, "info"    # Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;
    .param p2, "sbn"    # Landroid/service/notification/StatusBarNotification;
    .param p3, "importance"    # I
    .param p4, "fromUser"    # Z

    #@0
    .prologue
    .line 3844
    iget-object v1, p1, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;->service:Landroid/os/IInterface;

    #@2
    check-cast v1, Landroid/service/notification/INotificationListener;

    #@4
    .line 3845
    .local v1, "ranker":Landroid/service/notification/INotificationListener;
    new-instance v2, Lcom/android/server/notification/NotificationManagerService$StatusBarNotificationHolder;

    #@6
    invoke-direct {v2, p2}, Lcom/android/server/notification/NotificationManagerService$StatusBarNotificationHolder;-><init>(Landroid/service/notification/StatusBarNotification;)V

    #@9
    .line 3847
    .local v2, "sbnHolder":Lcom/android/server/notification/NotificationManagerService$StatusBarNotificationHolder;
    :try_start_0
    invoke-interface {v1, v2, p3, p4}, Landroid/service/notification/INotificationListener;->onNotificationEnqueued(Landroid/service/notification/IStatusBarNotificationHolder;IZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@c
    .line 3843
    :goto_0
    return-void

    #@d
    .line 3848
    :catch_0
    move-exception v0

    #@e
    .line 3849
    .local v0, "ex":Landroid/os/RemoteException;
    iget-object v3, p0, Lcom/android/server/notification/NotificationManagerService$NotificationRankers;->TAG:Ljava/lang/String;

    #@10
    new-instance v4, Ljava/lang/StringBuilder;

    #@12
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@15
    const-string/jumbo v5, "unable to notify ranker (enqueued): "

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


# virtual methods
.method protected asInterface(Landroid/os/IBinder;)Landroid/os/IInterface;
    .locals 1
    .param p1, "binder"    # Landroid/os/IBinder;

    #@0
    .prologue
    .line 3799
    invoke-static {p1}, Landroid/service/notification/INotificationListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/notification/INotificationListener;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method protected checkType(Landroid/os/IInterface;)Z
    .locals 1
    .param p1, "service"    # Landroid/os/IInterface;

    #@0
    .prologue
    .line 3804
    instance-of v0, p1, Landroid/service/notification/INotificationListener;

    #@2
    return v0
.end method

.method protected getConfig()Lcom/android/server/notification/ManagedServices$Config;
    .locals 2

    #@0
    .prologue
    .line 3787
    new-instance v0, Lcom/android/server/notification/ManagedServices$Config;

    #@2
    invoke-direct {v0}, Lcom/android/server/notification/ManagedServices$Config;-><init>()V

    #@5
    .line 3788
    .local v0, "c":Lcom/android/server/notification/ManagedServices$Config;
    const-string/jumbo v1, "notification ranker service"

    #@8
    iput-object v1, v0, Lcom/android/server/notification/ManagedServices$Config;->caption:Ljava/lang/String;

    #@a
    .line 3789
    const-string/jumbo v1, "android.service.notification.NotificationRankerService"

    #@d
    iput-object v1, v0, Lcom/android/server/notification/ManagedServices$Config;->serviceInterface:Ljava/lang/String;

    #@f
    .line 3790
    const/4 v1, 0x0

    #@10
    iput-object v1, v0, Lcom/android/server/notification/ManagedServices$Config;->secureSettingName:Ljava/lang/String;

    #@12
    .line 3791
    const-string/jumbo v1, "android.permission.BIND_NOTIFICATION_RANKER_SERVICE"

    #@15
    iput-object v1, v0, Lcom/android/server/notification/ManagedServices$Config;->bindPermission:Ljava/lang/String;

    #@17
    .line 3792
    const-string/jumbo v1, "android.settings.MANAGE_DEFAULT_APPS_SETTINGS"

    #@1a
    iput-object v1, v0, Lcom/android/server/notification/ManagedServices$Config;->settingsAction:Ljava/lang/String;

    #@1c
    .line 3793
    const v1, 0x104046a

    #@1f
    iput v1, v0, Lcom/android/server/notification/ManagedServices$Config;->clientLabel:I

    #@21
    .line 3794
    return-object v0
.end method

.method public isEnabled()Z
    .locals 1

    #@0
    .prologue
    .line 3854
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$NotificationRankers;->mServices:Ljava/util/ArrayList;

    #@2
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    #@5
    move-result v0

    #@6
    if-eqz v0, :cond_0

    #@8
    const/4 v0, 0x0

    #@9
    :goto_0
    return v0

    #@a
    :cond_0
    const/4 v0, 0x1

    #@b
    goto :goto_0
.end method

.method public onNotificationEnqueued(Lcom/android/server/notification/NotificationRecord;)V
    .locals 11
    .param p1, "r"    # Lcom/android/server/notification/NotificationRecord;

    #@0
    .prologue
    .line 3818
    iget-object v7, p1, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    #@2
    .line 3819
    .local v7, "sbn":Landroid/service/notification/StatusBarNotification;
    new-instance v9, Lcom/android/server/notification/NotificationManagerService$TrimCache;

    #@4
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$NotificationRankers;->this$0:Lcom/android/server/notification/NotificationManagerService;

    #@6
    invoke-direct {v9, v0, v7}, Lcom/android/server/notification/NotificationManagerService$TrimCache;-><init>(Lcom/android/server/notification/NotificationManagerService;Landroid/service/notification/StatusBarNotification;)V

    #@9
    .line 3824
    .local v9, "trimCache":Lcom/android/server/notification/NotificationManagerService$TrimCache;
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$NotificationRankers;->mServices:Ljava/util/ArrayList;

    #@b
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@e
    move-result-object v6

    #@f
    .local v6, "info$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    #@12
    move-result v0

    #@13
    if-eqz v0, :cond_1

    #@15
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@18
    move-result-object v2

    #@19
    check-cast v2, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;

    #@1b
    .line 3825
    .local v2, "info":Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$NotificationRankers;->this$0:Lcom/android/server/notification/NotificationManagerService;

    #@1d
    invoke-static {v0, v7, v2}, Lcom/android/server/notification/NotificationManagerService;->-wrap4(Lcom/android/server/notification/NotificationManagerService;Landroid/service/notification/StatusBarNotification;Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;)Z

    #@20
    move-result v8

    #@21
    .line 3826
    .local v8, "sbnVisible":Z
    if-eqz v8, :cond_0

    #@23
    .line 3830
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getImportance()I

    #@26
    move-result v4

    #@27
    .line 3831
    .local v4, "importance":I
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->isImportanceFromUser()Z

    #@2a
    move-result v5

    #@2b
    .line 3832
    .local v5, "fromUser":Z
    invoke-virtual {v9, v2}, Lcom/android/server/notification/NotificationManagerService$TrimCache;->ForListener(Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;)Landroid/service/notification/StatusBarNotification;

    #@2e
    move-result-object v3

    #@2f
    .line 3833
    .local v3, "sbnToPost":Landroid/service/notification/StatusBarNotification;
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$NotificationRankers;->this$0:Lcom/android/server/notification/NotificationManagerService;

    #@31
    invoke-static {v0}, Lcom/android/server/notification/NotificationManagerService;->-get8(Lcom/android/server/notification/NotificationManagerService;)Landroid/os/Handler;

    #@34
    move-result-object v10

    #@35
    new-instance v0, Lcom/android/server/notification/NotificationManagerService$NotificationRankers$1;

    #@37
    move-object v1, p0

    #@38
    invoke-direct/range {v0 .. v5}, Lcom/android/server/notification/NotificationManagerService$NotificationRankers$1;-><init>(Lcom/android/server/notification/NotificationManagerService$NotificationRankers;Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;Landroid/service/notification/StatusBarNotification;IZ)V

    #@3b
    invoke-virtual {v10, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    #@3e
    goto :goto_0

    #@3f
    .line 3817
    .end local v2    # "info":Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;
    .end local v3    # "sbnToPost":Landroid/service/notification/StatusBarNotification;
    .end local v4    # "importance":I
    .end local v5    # "fromUser":Z
    .end local v8    # "sbnVisible":Z
    :cond_1
    return-void
.end method

.method public onPackagesChanged(Z[Ljava/lang/String;)V
    .locals 6
    .param p1, "queryReplace"    # Z
    .param p2, "pkgList"    # [Ljava/lang/String;

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    const/4 v1, 0x0

    #@2
    .line 3871
    iget-boolean v3, p0, Lcom/android/server/notification/NotificationManagerService$NotificationRankers;->DEBUG:Z

    #@4
    if-eqz v3, :cond_0

    #@6
    iget-object v3, p0, Lcom/android/server/notification/NotificationManagerService$NotificationRankers;->TAG:Ljava/lang/String;

    #@8
    new-instance v4, Ljava/lang/StringBuilder;

    #@a
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@d
    const-string/jumbo v5, "onPackagesChanged queryReplace="

    #@10
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@13
    move-result-object v4

    #@14
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@17
    move-result-object v4

    #@18
    .line 3872
    const-string/jumbo v5, " pkgList="

    #@1b
    .line 3871
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1e
    move-result-object v4

    #@1f
    .line 3872
    if-nez p2, :cond_1

    #@21
    .line 3871
    :goto_0
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@24
    move-result-object v1

    #@25
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@28
    move-result-object v1

    #@29
    invoke-static {v3, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@2c
    .line 3873
    :cond_0
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService$NotificationRankers;->this$0:Lcom/android/server/notification/NotificationManagerService;

    #@2e
    invoke-static {v1}, Lcom/android/server/notification/NotificationManagerService;->-get15(Lcom/android/server/notification/NotificationManagerService;)Ljava/lang/String;

    #@31
    move-result-object v1

    #@32
    if-nez v1, :cond_2

    #@34
    .line 3874
    return-void

    #@35
    .line 3872
    :cond_1
    invoke-static {p2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    #@38
    move-result-object v1

    #@39
    goto :goto_0

    #@3a
    .line 3877
    :cond_2
    if-eqz p2, :cond_4

    #@3c
    array-length v1, p2

    #@3d
    if-lez v1, :cond_4

    #@3f
    .line 3878
    array-length v3, p2

    #@40
    move v1, v2

    #@41
    :goto_1
    if-ge v1, v3, :cond_4

    #@43
    aget-object v0, p2, v1

    #@45
    .line 3879
    .local v0, "pkgName":Ljava/lang/String;
    iget-object v2, p0, Lcom/android/server/notification/NotificationManagerService$NotificationRankers;->this$0:Lcom/android/server/notification/NotificationManagerService;

    #@47
    invoke-static {v2}, Lcom/android/server/notification/NotificationManagerService;->-get15(Lcom/android/server/notification/NotificationManagerService;)Ljava/lang/String;

    #@4a
    move-result-object v2

    #@4b
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@4e
    move-result v2

    #@4f
    if-eqz v2, :cond_3

    #@51
    .line 3880
    invoke-virtual {p0}, Lcom/android/server/notification/NotificationManagerService$NotificationRankers;->registerRanker()V

    #@54
    .line 3878
    :cond_3
    add-int/lit8 v1, v1, 0x1

    #@56
    goto :goto_1

    #@57
    .line 3870
    .end local v0    # "pkgName":Ljava/lang/String;
    :cond_4
    return-void
.end method

.method protected onServiceAdded(Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;)V
    .locals 1
    .param p1, "info"    # Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;

    #@0
    .prologue
    .line 3809
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$NotificationRankers;->this$0:Lcom/android/server/notification/NotificationManagerService;

    #@2
    invoke-static {v0}, Lcom/android/server/notification/NotificationManagerService;->-get11(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/NotificationManagerService$NotificationListeners;

    #@5
    move-result-object v0

    #@6
    invoke-virtual {v0, p1}, Lcom/android/server/notification/NotificationManagerService$NotificationListeners;->registerGuestService(Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;)V

    #@9
    .line 3808
    return-void
.end method

.method protected onServiceRemovedLocked(Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;)V
    .locals 3
    .param p1, "removed"    # Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;

    #@0
    .prologue
    .line 3814
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$NotificationRankers;->this$0:Lcom/android/server/notification/NotificationManagerService;

    #@2
    invoke-static {v0}, Lcom/android/server/notification/NotificationManagerService;->-get11(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/NotificationManagerService$NotificationListeners;

    #@5
    move-result-object v0

    #@6
    iget-object v1, p1, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;->service:Landroid/os/IInterface;

    #@8
    iget v2, p1, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;->userid:I

    #@a
    invoke-virtual {v0, v1, v2}, Lcom/android/server/notification/NotificationManagerService$NotificationListeners;->unregisterService(Landroid/os/IInterface;I)V

    #@d
    .line 3813
    return-void
.end method

.method public onUserSwitched(I)V
    .locals 6
    .param p1, "user"    # I

    #@0
    .prologue
    .line 3859
    iget-object v3, p0, Lcom/android/server/notification/NotificationManagerService$NotificationRankers;->this$0:Lcom/android/server/notification/NotificationManagerService;

    #@2
    iget-object v4, v3, Lcom/android/server/notification/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;

    #@4
    monitor-enter v4

    #@5
    .line 3860
    :try_start_0
    iget-object v3, p0, Lcom/android/server/notification/NotificationManagerService$NotificationRankers;->mServices:Ljava/util/ArrayList;

    #@7
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    #@a
    move-result v3

    #@b
    add-int/lit8 v0, v3, -0x1

    #@d
    .line 3861
    .local v0, "i":I
    :goto_0
    add-int/lit8 v1, v0, -0x1

    #@f
    .end local v0    # "i":I
    .local v1, "i":I
    if-lez v0, :cond_0

    #@11
    .line 3862
    iget-object v3, p0, Lcom/android/server/notification/NotificationManagerService$NotificationRankers;->mServices:Ljava/util/ArrayList;

    #@13
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@16
    move-result-object v2

    #@17
    check-cast v2, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;

    #@19
    .line 3863
    .local v2, "info":Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;
    iget-object v3, v2, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;->service:Landroid/os/IInterface;

    #@1b
    iget v5, v2, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;->userid:I

    #@1d
    invoke-virtual {p0, v3, v5}, Lcom/android/server/notification/NotificationManagerService$NotificationRankers;->unregisterService(Landroid/os/IInterface;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@20
    move v0, v1

    #@21
    .end local v1    # "i":I
    .restart local v0    # "i":I
    goto :goto_0

    #@22
    .end local v0    # "i":I
    .end local v2    # "info":Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;
    .restart local v1    # "i":I
    :cond_0
    monitor-exit v4

    #@23
    .line 3866
    invoke-virtual {p0}, Lcom/android/server/notification/NotificationManagerService$NotificationRankers;->registerRanker()V

    #@26
    .line 3858
    return-void

    #@27
    .line 3859
    .end local v1    # "i":I
    :catchall_0
    move-exception v3

    #@28
    monitor-exit v4

    #@29
    throw v3
.end method

.method protected registerRanker()V
    .locals 6

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 3888
    iget-object v3, p0, Lcom/android/server/notification/NotificationManagerService$NotificationRankers;->this$0:Lcom/android/server/notification/NotificationManagerService;

    #@3
    invoke-static {v3}, Lcom/android/server/notification/NotificationManagerService;->-get15(Lcom/android/server/notification/NotificationManagerService;)Ljava/lang/String;

    #@6
    move-result-object v3

    #@7
    if-nez v3, :cond_0

    #@9
    .line 3889
    iget-object v3, p0, Lcom/android/server/notification/NotificationManagerService$NotificationRankers;->TAG:Ljava/lang/String;

    #@b
    const-string/jumbo v4, "could not start ranker service: no package specified!"

    #@e
    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@11
    .line 3890
    return-void

    #@12
    .line 3893
    :cond_0
    iget-object v3, p0, Lcom/android/server/notification/NotificationManagerService$NotificationRankers;->this$0:Lcom/android/server/notification/NotificationManagerService;

    #@14
    invoke-static {v3}, Lcom/android/server/notification/NotificationManagerService;->-get15(Lcom/android/server/notification/NotificationManagerService;)Ljava/lang/String;

    #@17
    move-result-object v3

    #@18
    .line 3892
    invoke-virtual {p0, v3, v4}, Lcom/android/server/notification/NotificationManagerService$NotificationRankers;->queryPackageForServices(Ljava/lang/String;I)Ljava/util/Set;

    #@1b
    move-result-object v2

    #@1c
    .line 3894
    .local v2, "rankerComponents":Ljava/util/Set;, "Ljava/util/Set<Landroid/content/ComponentName;>;"
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    #@1f
    move-result-object v0

    #@20
    .line 3895
    .local v0, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/content/ComponentName;>;"
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    #@23
    move-result v3

    #@24
    if-eqz v3, :cond_2

    #@26
    .line 3896
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@29
    move-result-object v1

    #@2a
    check-cast v1, Landroid/content/ComponentName;

    #@2c
    .line 3897
    .local v1, "rankerComponent":Landroid/content/ComponentName;
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    #@2f
    move-result v3

    #@30
    if-eqz v3, :cond_1

    #@32
    .line 3898
    iget-object v3, p0, Lcom/android/server/notification/NotificationManagerService$NotificationRankers;->TAG:Ljava/lang/String;

    #@34
    new-instance v4, Ljava/lang/StringBuilder;

    #@36
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@39
    const-string/jumbo v5, "found multiple ranker services:"

    #@3c
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3f
    move-result-object v4

    #@40
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@43
    move-result-object v4

    #@44
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@47
    move-result-object v4

    #@48
    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@4b
    .line 3886
    .end local v1    # "rankerComponent":Landroid/content/ComponentName;
    :goto_0
    return-void

    #@4c
    .line 3900
    .restart local v1    # "rankerComponent":Landroid/content/ComponentName;
    :cond_1
    invoke-virtual {p0, v1, v4}, Lcom/android/server/notification/NotificationManagerService$NotificationRankers;->registerSystemService(Landroid/content/ComponentName;I)V

    #@4f
    goto :goto_0

    #@50
    .line 3903
    .end local v1    # "rankerComponent":Landroid/content/ComponentName;
    :cond_2
    iget-object v3, p0, Lcom/android/server/notification/NotificationManagerService$NotificationRankers;->TAG:Ljava/lang/String;

    #@52
    const-string/jumbo v4, "could not start ranker service: none found"

    #@55
    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@58
    goto :goto_0
.end method
