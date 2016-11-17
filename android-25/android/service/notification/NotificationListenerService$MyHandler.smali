.class final Landroid/service/notification/NotificationListenerService$MyHandler;
.super Landroid/os/Handler;
.source "NotificationListenerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/service/notification/NotificationListenerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "MyHandler"
.end annotation


# static fields
.field public static final MSG_ON_INTERRUPTION_FILTER_CHANGED:I = 0x6

.field public static final MSG_ON_LISTENER_CONNECTED:I = 0x3

.field public static final MSG_ON_LISTENER_HINTS_CHANGED:I = 0x5

.field public static final MSG_ON_NOTIFICATION_POSTED:I = 0x1

.field public static final MSG_ON_NOTIFICATION_RANKING_UPDATE:I = 0x4

.field public static final MSG_ON_NOTIFICATION_REMOVED:I = 0x2


# instance fields
.field final synthetic this$0:Landroid/service/notification/NotificationListenerService;


# direct methods
.method public constructor <init>(Landroid/service/notification/NotificationListenerService;Landroid/os/Looper;)V
    .locals 2
    .param p1, "this$0"    # Landroid/service/notification/NotificationListenerService;
    .param p2, "looper"    # Landroid/os/Looper;

    #@0
    .prologue
    .line 1426
    iput-object p1, p0, Landroid/service/notification/NotificationListenerService$MyHandler;->this$0:Landroid/service/notification/NotificationListenerService;

    #@2
    .line 1427
    const/4 v0, 0x0

    #@3
    const/4 v1, 0x0

    #@4
    invoke-direct {p0, p2, v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;Z)V

    #@7
    .line 1426
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 6
    .param p1, "msg"    # Landroid/os/Message;

    #@0
    .prologue
    .line 1432
    iget-object v5, p0, Landroid/service/notification/NotificationListenerService$MyHandler;->this$0:Landroid/service/notification/NotificationListenerService;

    #@2
    invoke-static {v5}, Landroid/service/notification/NotificationListenerService;->-get1(Landroid/service/notification/NotificationListenerService;)Z

    #@5
    move-result v5

    #@6
    if-nez v5, :cond_0

    #@8
    .line 1433
    return-void

    #@9
    .line 1435
    :cond_0
    iget v5, p1, Landroid/os/Message;->what:I

    #@b
    packed-switch v5, :pswitch_data_0

    #@e
    .line 1431
    :goto_0
    return-void

    #@f
    .line 1437
    :pswitch_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@11
    check-cast v0, Lcom/android/internal/os/SomeArgs;

    #@13
    .line 1438
    .local v0, "args":Lcom/android/internal/os/SomeArgs;
    iget-object v4, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    #@15
    check-cast v4, Landroid/service/notification/StatusBarNotification;

    #@17
    .line 1439
    .local v4, "sbn":Landroid/service/notification/StatusBarNotification;
    iget-object v3, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    #@19
    check-cast v3, Landroid/service/notification/NotificationListenerService$RankingMap;

    #@1b
    .line 1440
    .local v3, "rankingMap":Landroid/service/notification/NotificationListenerService$RankingMap;
    invoke-virtual {v0}, Lcom/android/internal/os/SomeArgs;->recycle()V

    #@1e
    .line 1441
    iget-object v5, p0, Landroid/service/notification/NotificationListenerService$MyHandler;->this$0:Landroid/service/notification/NotificationListenerService;

    #@20
    invoke-virtual {v5, v4, v3}, Landroid/service/notification/NotificationListenerService;->onNotificationPosted(Landroid/service/notification/StatusBarNotification;Landroid/service/notification/NotificationListenerService$RankingMap;)V

    #@23
    goto :goto_0

    #@24
    .line 1445
    .end local v0    # "args":Lcom/android/internal/os/SomeArgs;
    .end local v3    # "rankingMap":Landroid/service/notification/NotificationListenerService$RankingMap;
    .end local v4    # "sbn":Landroid/service/notification/StatusBarNotification;
    :pswitch_1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@26
    check-cast v0, Lcom/android/internal/os/SomeArgs;

    #@28
    .line 1446
    .restart local v0    # "args":Lcom/android/internal/os/SomeArgs;
    iget-object v4, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    #@2a
    check-cast v4, Landroid/service/notification/StatusBarNotification;

    #@2c
    .line 1447
    .restart local v4    # "sbn":Landroid/service/notification/StatusBarNotification;
    iget-object v3, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    #@2e
    check-cast v3, Landroid/service/notification/NotificationListenerService$RankingMap;

    #@30
    .line 1448
    .restart local v3    # "rankingMap":Landroid/service/notification/NotificationListenerService$RankingMap;
    invoke-virtual {v0}, Lcom/android/internal/os/SomeArgs;->recycle()V

    #@33
    .line 1449
    iget-object v5, p0, Landroid/service/notification/NotificationListenerService$MyHandler;->this$0:Landroid/service/notification/NotificationListenerService;

    #@35
    invoke-virtual {v5, v4, v3}, Landroid/service/notification/NotificationListenerService;->onNotificationRemoved(Landroid/service/notification/StatusBarNotification;Landroid/service/notification/NotificationListenerService$RankingMap;)V

    #@38
    goto :goto_0

    #@39
    .line 1453
    .end local v0    # "args":Lcom/android/internal/os/SomeArgs;
    .end local v3    # "rankingMap":Landroid/service/notification/NotificationListenerService$RankingMap;
    .end local v4    # "sbn":Landroid/service/notification/StatusBarNotification;
    :pswitch_2
    iget-object v5, p0, Landroid/service/notification/NotificationListenerService$MyHandler;->this$0:Landroid/service/notification/NotificationListenerService;

    #@3b
    invoke-virtual {v5}, Landroid/service/notification/NotificationListenerService;->onListenerConnected()V

    #@3e
    goto :goto_0

    #@3f
    .line 1457
    :pswitch_3
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@41
    check-cast v3, Landroid/service/notification/NotificationListenerService$RankingMap;

    #@43
    .line 1458
    .restart local v3    # "rankingMap":Landroid/service/notification/NotificationListenerService$RankingMap;
    iget-object v5, p0, Landroid/service/notification/NotificationListenerService$MyHandler;->this$0:Landroid/service/notification/NotificationListenerService;

    #@45
    invoke-virtual {v5, v3}, Landroid/service/notification/NotificationListenerService;->onNotificationRankingUpdate(Landroid/service/notification/NotificationListenerService$RankingMap;)V

    #@48
    goto :goto_0

    #@49
    .line 1462
    .end local v3    # "rankingMap":Landroid/service/notification/NotificationListenerService$RankingMap;
    :pswitch_4
    iget v1, p1, Landroid/os/Message;->arg1:I

    #@4b
    .line 1463
    .local v1, "hints":I
    iget-object v5, p0, Landroid/service/notification/NotificationListenerService$MyHandler;->this$0:Landroid/service/notification/NotificationListenerService;

    #@4d
    invoke-virtual {v5, v1}, Landroid/service/notification/NotificationListenerService;->onListenerHintsChanged(I)V

    #@50
    goto :goto_0

    #@51
    .line 1467
    .end local v1    # "hints":I
    :pswitch_5
    iget v2, p1, Landroid/os/Message;->arg1:I

    #@53
    .line 1468
    .local v2, "interruptionFilter":I
    iget-object v5, p0, Landroid/service/notification/NotificationListenerService$MyHandler;->this$0:Landroid/service/notification/NotificationListenerService;

    #@55
    invoke-virtual {v5, v2}, Landroid/service/notification/NotificationListenerService;->onInterruptionFilterChanged(I)V

    #@58
    goto :goto_0

    #@59
    .line 1435
    nop

    #@5a
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method
