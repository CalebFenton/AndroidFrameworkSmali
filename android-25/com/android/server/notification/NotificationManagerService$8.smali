.class Lcom/android/server/notification/NotificationManagerService$8;
.super Ljava/lang/Object;
.source "NotificationManagerService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/notification/NotificationManagerService;->cancelNotification(IILjava/lang/String;Ljava/lang/String;IIIZIILcom/android/server/notification/ManagedServices$ManagedServiceInfo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/notification/NotificationManagerService;

.field final synthetic val$callingPid:I

.field final synthetic val$callingUid:I

.field final synthetic val$id:I

.field final synthetic val$listener:Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;

.field final synthetic val$mustHaveFlags:I

.field final synthetic val$mustNotHaveFlags:I

.field final synthetic val$pkg:Ljava/lang/String;

.field final synthetic val$reason:I

.field final synthetic val$sendDelete:Z

.field final synthetic val$tag:Ljava/lang/String;

.field final synthetic val$userId:I


# direct methods
.method constructor <init>(Lcom/android/server/notification/NotificationManagerService;Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;IILjava/lang/String;ILjava/lang/String;IIIIZ)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/notification/NotificationManagerService;
    .param p2, "val$listener"    # Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;
    .param p3, "val$callingUid"    # I
    .param p4, "val$callingPid"    # I
    .param p5, "val$pkg"    # Ljava/lang/String;
    .param p6, "val$id"    # I
    .param p7, "val$tag"    # Ljava/lang/String;
    .param p8, "val$userId"    # I
    .param p9, "val$mustHaveFlags"    # I
    .param p10, "val$mustNotHaveFlags"    # I
    .param p11, "val$reason"    # I
    .param p12, "val$sendDelete"    # Z

    #@0
    .prologue
    .line 3404
    iput-object p1, p0, Lcom/android/server/notification/NotificationManagerService$8;->this$0:Lcom/android/server/notification/NotificationManagerService;

    #@2
    iput-object p2, p0, Lcom/android/server/notification/NotificationManagerService$8;->val$listener:Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;

    #@4
    iput p3, p0, Lcom/android/server/notification/NotificationManagerService$8;->val$callingUid:I

    #@6
    iput p4, p0, Lcom/android/server/notification/NotificationManagerService$8;->val$callingPid:I

    #@8
    iput-object p5, p0, Lcom/android/server/notification/NotificationManagerService$8;->val$pkg:Ljava/lang/String;

    #@a
    iput p6, p0, Lcom/android/server/notification/NotificationManagerService$8;->val$id:I

    #@c
    iput-object p7, p0, Lcom/android/server/notification/NotificationManagerService$8;->val$tag:Ljava/lang/String;

    #@e
    iput p8, p0, Lcom/android/server/notification/NotificationManagerService$8;->val$userId:I

    #@10
    iput p9, p0, Lcom/android/server/notification/NotificationManagerService$8;->val$mustHaveFlags:I

    #@12
    iput p10, p0, Lcom/android/server/notification/NotificationManagerService$8;->val$mustNotHaveFlags:I

    #@14
    iput p11, p0, Lcom/android/server/notification/NotificationManagerService$8;->val$reason:I

    #@16
    iput-boolean p12, p0, Lcom/android/server/notification/NotificationManagerService$8;->val$sendDelete:Z

    #@18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@1b
    return-void
.end method


# virtual methods
.method public run()V
    .locals 13

    #@0
    .prologue
    .line 3407
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$8;->val$listener:Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;

    #@2
    if-nez v0, :cond_2

    #@4
    const/4 v9, 0x0

    #@5
    .line 3408
    :goto_0
    sget-boolean v0, Lcom/android/server/notification/NotificationManagerService;->DBG:Z

    #@7
    if-eqz v0, :cond_0

    #@9
    iget v0, p0, Lcom/android/server/notification/NotificationManagerService$8;->val$callingUid:I

    #@b
    iget v1, p0, Lcom/android/server/notification/NotificationManagerService$8;->val$callingPid:I

    #@d
    iget-object v2, p0, Lcom/android/server/notification/NotificationManagerService$8;->val$pkg:Ljava/lang/String;

    #@f
    iget v3, p0, Lcom/android/server/notification/NotificationManagerService$8;->val$id:I

    #@11
    iget-object v4, p0, Lcom/android/server/notification/NotificationManagerService$8;->val$tag:Ljava/lang/String;

    #@13
    .line 3409
    iget v5, p0, Lcom/android/server/notification/NotificationManagerService$8;->val$userId:I

    #@15
    iget v6, p0, Lcom/android/server/notification/NotificationManagerService$8;->val$mustHaveFlags:I

    #@17
    iget v7, p0, Lcom/android/server/notification/NotificationManagerService$8;->val$mustNotHaveFlags:I

    #@19
    iget v8, p0, Lcom/android/server/notification/NotificationManagerService$8;->val$reason:I

    #@1b
    .line 3408
    invoke-static/range {v0 .. v9}, Lcom/android/server/EventLogTags;->writeNotificationCancel(IILjava/lang/String;ILjava/lang/String;IIIILjava/lang/String;)V

    #@1e
    .line 3411
    :cond_0
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$8;->this$0:Lcom/android/server/notification/NotificationManagerService;

    #@20
    iget-object v1, v0, Lcom/android/server/notification/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;

    #@22
    monitor-enter v1

    #@23
    .line 3412
    :try_start_0
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$8;->this$0:Lcom/android/server/notification/NotificationManagerService;

    #@25
    iget-object v2, p0, Lcom/android/server/notification/NotificationManagerService$8;->val$pkg:Ljava/lang/String;

    #@27
    iget-object v3, p0, Lcom/android/server/notification/NotificationManagerService$8;->val$tag:Ljava/lang/String;

    #@29
    iget v4, p0, Lcom/android/server/notification/NotificationManagerService$8;->val$id:I

    #@2b
    iget v5, p0, Lcom/android/server/notification/NotificationManagerService$8;->val$userId:I

    #@2d
    invoke-virtual {v0, v2, v3, v4, v5}, Lcom/android/server/notification/NotificationManagerService;->indexOfNotificationLocked(Ljava/lang/String;Ljava/lang/String;II)I

    #@30
    move-result v12

    #@31
    .line 3413
    .local v12, "index":I
    if-ltz v12, :cond_5

    #@33
    .line 3414
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$8;->this$0:Lcom/android/server/notification/NotificationManagerService;

    #@35
    iget-object v0, v0, Lcom/android/server/notification/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;

    #@37
    invoke-virtual {v0, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@3a
    move-result-object v6

    #@3b
    check-cast v6, Lcom/android/server/notification/NotificationRecord;

    #@3d
    .line 3418
    .local v6, "r":Lcom/android/server/notification/NotificationRecord;
    iget v0, p0, Lcom/android/server/notification/NotificationManagerService$8;->val$reason:I

    #@3f
    const/4 v2, 0x1

    #@40
    if-ne v0, v2, :cond_1

    #@42
    .line 3419
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$8;->this$0:Lcom/android/server/notification/NotificationManagerService;

    #@44
    invoke-static {v0}, Lcom/android/server/notification/NotificationManagerService;->-get20(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/NotificationUsageStats;

    #@47
    move-result-object v0

    #@48
    invoke-virtual {v0, v6}, Lcom/android/server/notification/NotificationUsageStats;->registerClickedByUser(Lcom/android/server/notification/NotificationRecord;)V

    #@4b
    .line 3422
    :cond_1
    invoke-virtual {v6}, Lcom/android/server/notification/NotificationRecord;->getNotification()Landroid/app/Notification;

    #@4e
    move-result-object v0

    #@4f
    iget v0, v0, Landroid/app/Notification;->flags:I

    #@51
    iget v2, p0, Lcom/android/server/notification/NotificationManagerService$8;->val$mustHaveFlags:I

    #@53
    and-int/2addr v0, v2

    #@54
    iget v2, p0, Lcom/android/server/notification/NotificationManagerService$8;->val$mustHaveFlags:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@56
    if-eq v0, v2, :cond_3

    #@58
    monitor-exit v1

    #@59
    .line 3423
    return-void

    #@5a
    .line 3407
    .end local v6    # "r":Lcom/android/server/notification/NotificationRecord;
    .end local v12    # "index":I
    :cond_2
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$8;->val$listener:Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;

    #@5c
    iget-object v0, v0, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;->component:Landroid/content/ComponentName;

    #@5e
    invoke-virtual {v0}, Landroid/content/ComponentName;->toShortString()Ljava/lang/String;

    #@61
    move-result-object v9

    #@62
    .local v9, "listenerName":Ljava/lang/String;
    goto :goto_0

    #@63
    .line 3425
    .end local v9    # "listenerName":Ljava/lang/String;
    .restart local v6    # "r":Lcom/android/server/notification/NotificationRecord;
    .restart local v12    # "index":I
    :cond_3
    :try_start_1
    invoke-virtual {v6}, Lcom/android/server/notification/NotificationRecord;->getNotification()Landroid/app/Notification;

    #@66
    move-result-object v0

    #@67
    iget v0, v0, Landroid/app/Notification;->flags:I

    #@69
    iget v2, p0, Lcom/android/server/notification/NotificationManagerService$8;->val$mustNotHaveFlags:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@6b
    and-int/2addr v0, v2

    #@6c
    if-eqz v0, :cond_4

    #@6e
    monitor-exit v1

    #@6f
    .line 3426
    return-void

    #@70
    .line 3429
    :cond_4
    :try_start_2
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$8;->this$0:Lcom/android/server/notification/NotificationManagerService;

    #@72
    iget-object v0, v0, Lcom/android/server/notification/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;

    #@74
    invoke-virtual {v0, v12}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    #@77
    .line 3431
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$8;->this$0:Lcom/android/server/notification/NotificationManagerService;

    #@79
    iget-boolean v2, p0, Lcom/android/server/notification/NotificationManagerService$8;->val$sendDelete:Z

    #@7b
    iget v3, p0, Lcom/android/server/notification/NotificationManagerService$8;->val$reason:I

    #@7d
    invoke-static {v0, v6, v2, v3}, Lcom/android/server/notification/NotificationManagerService;->-wrap14(Lcom/android/server/notification/NotificationManagerService;Lcom/android/server/notification/NotificationRecord;ZI)V

    #@80
    .line 3432
    iget-object v5, p0, Lcom/android/server/notification/NotificationManagerService$8;->this$0:Lcom/android/server/notification/NotificationManagerService;

    #@82
    iget v7, p0, Lcom/android/server/notification/NotificationManagerService$8;->val$callingUid:I

    #@84
    iget v8, p0, Lcom/android/server/notification/NotificationManagerService$8;->val$callingPid:I

    #@86
    .line 3433
    iget-boolean v11, p0, Lcom/android/server/notification/NotificationManagerService$8;->val$sendDelete:Z

    #@88
    const/16 v10, 0xc

    #@8a
    .line 3432
    invoke-static/range {v5 .. v11}, Lcom/android/server/notification/NotificationManagerService;->-wrap13(Lcom/android/server/notification/NotificationManagerService;Lcom/android/server/notification/NotificationRecord;IILjava/lang/String;IZ)V

    #@8d
    .line 3434
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$8;->this$0:Lcom/android/server/notification/NotificationManagerService;

    #@8f
    invoke-virtual {v0}, Lcom/android/server/notification/NotificationManagerService;->updateLightsLocked()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@92
    .end local v6    # "r":Lcom/android/server/notification/NotificationRecord;
    :cond_5
    monitor-exit v1

    #@93
    .line 3406
    return-void

    #@94
    .line 3411
    .end local v12    # "index":I
    :catchall_0
    move-exception v0

    #@95
    monitor-exit v1

    #@96
    throw v0
.end method
