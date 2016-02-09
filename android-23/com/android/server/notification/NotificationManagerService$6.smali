.class Lcom/android/server/notification/NotificationManagerService$6;
.super Ljava/lang/Object;
.source "NotificationManagerService.java"

# interfaces
.implements Lcom/android/server/notification/NotificationManagerInternal;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/notification/NotificationManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/notification/NotificationManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/notification/NotificationManagerService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/notification/NotificationManagerService;

    #@0
    .prologue
    .line 1998
    iput-object p1, p0, Lcom/android/server/notification/NotificationManagerService$6;->this$0:Lcom/android/server/notification/NotificationManagerService;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    return-void
.end method


# virtual methods
.method public enqueueNotification(Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;ILandroid/app/Notification;[II)V
    .locals 10
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "opPkg"    # Ljava/lang/String;
    .param p3, "callingUid"    # I
    .param p4, "callingPid"    # I
    .param p5, "tag"    # Ljava/lang/String;
    .param p6, "id"    # I
    .param p7, "notification"    # Landroid/app/Notification;
    .param p8, "idReceived"    # [I
    .param p9, "userId"    # I

    #@0
    .prologue
    .line 2002
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$6;->this$0:Lcom/android/server/notification/NotificationManagerService;

    #@2
    move-object v1, p1

    #@3
    move-object v2, p2

    #@4
    move v3, p3

    #@5
    move v4, p4

    #@6
    move-object v5, p5

    #@7
    move/from16 v6, p6

    #@9
    move-object/from16 v7, p7

    #@b
    move-object/from16 v8, p8

    #@d
    move/from16 v9, p9

    #@f
    invoke-virtual/range {v0 .. v9}, Lcom/android/server/notification/NotificationManagerService;->enqueueNotificationInternal(Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;ILandroid/app/Notification;[II)V

    #@12
    .line 2001
    return-void
.end method

.method public removeForegroundServiceFlagFromNotification(Ljava/lang/String;II)V
    .locals 7
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "notificationId"    # I
    .param p3, "userId"    # I

    #@0
    .prologue
    .line 2009
    invoke-static {}, Lcom/android/server/notification/NotificationManagerService;->-wrap12()V

    #@3
    .line 2010
    iget-object v3, p0, Lcom/android/server/notification/NotificationManagerService$6;->this$0:Lcom/android/server/notification/NotificationManagerService;

    #@5
    iget-object v4, v3, Lcom/android/server/notification/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;

    #@7
    monitor-enter v4

    #@8
    .line 2011
    :try_start_0
    iget-object v3, p0, Lcom/android/server/notification/NotificationManagerService$6;->this$0:Lcom/android/server/notification/NotificationManagerService;

    #@a
    const/4 v5, 0x0

    #@b
    invoke-virtual {v3, p1, v5, p2, p3}, Lcom/android/server/notification/NotificationManagerService;->indexOfNotificationLocked(Ljava/lang/String;Ljava/lang/String;II)I

    #@e
    move-result v0

    #@f
    .line 2012
    .local v0, "i":I
    if-gez v0, :cond_0

    #@11
    .line 2013
    const-string/jumbo v3, "NotificationService"

    #@14
    new-instance v5, Ljava/lang/StringBuilder;

    #@16
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@19
    const-string/jumbo v6, "stripForegroundServiceFlag: Could not find notification with pkg="

    #@1c
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1f
    move-result-object v5

    #@20
    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@23
    move-result-object v5

    #@24
    .line 2014
    const-string/jumbo v6, " / id="

    #@27
    .line 2013
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2a
    move-result-object v5

    #@2b
    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@2e
    move-result-object v5

    #@2f
    .line 2014
    const-string/jumbo v6, " / userId="

    #@32
    .line 2013
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@35
    move-result-object v5

    #@36
    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@39
    move-result-object v5

    #@3a
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3d
    move-result-object v5

    #@3e
    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@41
    monitor-exit v4

    #@42
    .line 2015
    return-void

    #@43
    .line 2017
    :cond_0
    :try_start_1
    iget-object v3, p0, Lcom/android/server/notification/NotificationManagerService$6;->this$0:Lcom/android/server/notification/NotificationManagerService;

    #@45
    iget-object v3, v3, Lcom/android/server/notification/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;

    #@47
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@4a
    move-result-object v1

    #@4b
    check-cast v1, Lcom/android/server/notification/NotificationRecord;

    #@4d
    .line 2018
    .local v1, "r":Lcom/android/server/notification/NotificationRecord;
    iget-object v2, v1, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    #@4f
    .line 2023
    .local v2, "sbn":Landroid/service/notification/StatusBarNotification;
    invoke-virtual {v2}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    #@52
    move-result-object v3

    #@53
    .line 2024
    iget v5, v1, Lcom/android/server/notification/NotificationRecord;->mOriginalFlags:I

    #@55
    and-int/lit8 v5, v5, -0x41

    #@57
    .line 2023
    iput v5, v3, Landroid/app/Notification;->flags:I

    #@59
    .line 2025
    iget-object v3, p0, Lcom/android/server/notification/NotificationManagerService$6;->this$0:Lcom/android/server/notification/NotificationManagerService;

    #@5b
    invoke-static {v3}, Lcom/android/server/notification/NotificationManagerService;->-get15(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/RankingHelper;

    #@5e
    move-result-object v3

    #@5f
    iget-object v5, p0, Lcom/android/server/notification/NotificationManagerService$6;->this$0:Lcom/android/server/notification/NotificationManagerService;

    #@61
    iget-object v5, v5, Lcom/android/server/notification/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;

    #@63
    invoke-virtual {v3, v5}, Lcom/android/server/notification/RankingHelper;->sort(Ljava/util/ArrayList;)V

    #@66
    .line 2026
    iget-object v3, p0, Lcom/android/server/notification/NotificationManagerService$6;->this$0:Lcom/android/server/notification/NotificationManagerService;

    #@68
    invoke-static {v3}, Lcom/android/server/notification/NotificationManagerService;->-get11(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/NotificationManagerService$NotificationListeners;

    #@6b
    move-result-object v3

    #@6c
    invoke-virtual {v3, v2, v2}, Lcom/android/server/notification/NotificationManagerService$NotificationListeners;->notifyPostedLocked(Landroid/service/notification/StatusBarNotification;Landroid/service/notification/StatusBarNotification;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@6f
    monitor-exit v4

    #@70
    .line 2008
    return-void

    #@71
    .line 2010
    .end local v0    # "i":I
    .end local v1    # "r":Lcom/android/server/notification/NotificationRecord;
    .end local v2    # "sbn":Landroid/service/notification/StatusBarNotification;
    :catchall_0
    move-exception v3

    #@72
    monitor-exit v4

    #@73
    throw v3
.end method
