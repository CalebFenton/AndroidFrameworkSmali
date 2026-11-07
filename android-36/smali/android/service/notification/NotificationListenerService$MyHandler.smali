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
.field public static final greylist-max-o MSG_ON_INTERRUPTION_FILTER_CHANGED:I = 0x6

.field public static final greylist-max-o MSG_ON_LISTENER_CONNECTED:I = 0x3

.field public static final greylist-max-o MSG_ON_LISTENER_HINTS_CHANGED:I = 0x5

.field public static final greylist-max-o MSG_ON_NOTIFICATION_CHANNEL_GROUP_MODIFIED:I = 0x8

.field public static final greylist-max-o MSG_ON_NOTIFICATION_CHANNEL_MODIFIED:I = 0x7

.field public static final greylist-max-o MSG_ON_NOTIFICATION_POSTED:I = 0x1

.field public static final greylist-max-o MSG_ON_NOTIFICATION_RANKING_UPDATE:I = 0x4

.field public static final greylist-max-o MSG_ON_NOTIFICATION_REMOVED:I = 0x2

.field public static final blacklist MSG_ON_STATUS_BAR_ICON_BEHAVIOR_CHANGED:I = 0x9


# instance fields
.field final synthetic blacklist this$0:Landroid/service/notification/NotificationListenerService;


# direct methods
.method public constructor blacklist <init>(Landroid/service/notification/NotificationListenerService;Landroid/os/Looper;)V
    .registers 4
    .param p2, "looper"    # Landroid/os/Looper;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x0
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 2479
    iput-object p1, p0, Landroid/service/notification/NotificationListenerService$MyHandler;->this$0:Landroid/service/notification/NotificationListenerService;

    .line 2480
    const/4 p1, 0x0

    const/4 v0, 0x0

    invoke-direct {p0, p2, p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;Z)V

    .line 2481
    return-void
.end method


# virtual methods
.method public whitelist handleMessage(Landroid/os/Message;)V
    .registers 8
    .param p1, "msg"    # Landroid/os/Message;

    .line 2485
    iget-object v0, p0, Landroid/service/notification/NotificationListenerService$MyHandler;->this$0:Landroid/service/notification/NotificationListenerService;

    invoke-static {v0}, Landroid/service/notification/NotificationListenerService;->-$$Nest$fgetisConnected(Landroid/service/notification/NotificationListenerService;)Z

    move-result v0

    if-nez v0, :cond_9

    .line 2486
    return-void

    .line 2488
    :cond_9
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_ba

    goto/16 :goto_b8

    .line 2547
    :pswitch_10
    iget-object v0, p0, Landroid/service/notification/NotificationListenerService$MyHandler;->this$0:Landroid/service/notification/NotificationListenerService;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/service/notification/NotificationListenerService;->onSilentStatusBarIconsVisibilityChanged(Z)V

    goto/16 :goto_b8

    .line 2537
    :pswitch_1f
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/os/SomeArgs;

    .line 2538
    .local v0, "args":Lcom/android/internal/os/SomeArgs;
    iget-object v1, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    .line 2539
    .local v1, "pkgName":Ljava/lang/String;
    iget-object v2, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v2, Landroid/os/UserHandle;

    .line 2540
    .local v2, "user":Landroid/os/UserHandle;
    iget-object v3, v0, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    check-cast v3, Landroid/app/NotificationChannelGroup;

    .line 2541
    .local v3, "group":Landroid/app/NotificationChannelGroup;
    iget-object v4, v0, Lcom/android/internal/os/SomeArgs;->arg4:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 2542
    .local v4, "modificationType":I
    invoke-virtual {v0}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 2543
    iget-object v5, p0, Landroid/service/notification/NotificationListenerService$MyHandler;->this$0:Landroid/service/notification/NotificationListenerService;

    invoke-virtual {v5, v1, v2, v3, v4}, Landroid/service/notification/NotificationListenerService;->onNotificationChannelGroupModified(Ljava/lang/String;Landroid/os/UserHandle;Landroid/app/NotificationChannelGroup;I)V

    .line 2544
    .end local v0    # "args":Lcom/android/internal/os/SomeArgs;
    .end local v1    # "pkgName":Ljava/lang/String;
    .end local v2    # "user":Landroid/os/UserHandle;
    .end local v3    # "group":Landroid/app/NotificationChannelGroup;
    .end local v4    # "modificationType":I
    goto/16 :goto_b8

    .line 2527
    :pswitch_41
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/os/SomeArgs;

    .line 2528
    .restart local v0    # "args":Lcom/android/internal/os/SomeArgs;
    iget-object v1, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    .line 2529
    .restart local v1    # "pkgName":Ljava/lang/String;
    iget-object v2, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v2, Landroid/os/UserHandle;

    .line 2530
    .restart local v2    # "user":Landroid/os/UserHandle;
    iget-object v3, v0, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    check-cast v3, Landroid/app/NotificationChannel;

    .line 2531
    .local v3, "channel":Landroid/app/NotificationChannel;
    iget-object v4, v0, Lcom/android/internal/os/SomeArgs;->arg4:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 2532
    .restart local v4    # "modificationType":I
    invoke-virtual {v0}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 2533
    iget-object v5, p0, Landroid/service/notification/NotificationListenerService$MyHandler;->this$0:Landroid/service/notification/NotificationListenerService;

    invoke-virtual {v5, v1, v2, v3, v4}, Landroid/service/notification/NotificationListenerService;->onNotificationChannelModified(Ljava/lang/String;Landroid/os/UserHandle;Landroid/app/NotificationChannel;I)V

    .line 2534
    .end local v0    # "args":Lcom/android/internal/os/SomeArgs;
    .end local v1    # "pkgName":Ljava/lang/String;
    .end local v2    # "user":Landroid/os/UserHandle;
    .end local v3    # "channel":Landroid/app/NotificationChannel;
    .end local v4    # "modificationType":I
    goto :goto_b8

    .line 2522
    :pswitch_62
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 2523
    .local v0, "interruptionFilter":I
    iget-object v1, p0, Landroid/service/notification/NotificationListenerService$MyHandler;->this$0:Landroid/service/notification/NotificationListenerService;

    invoke-virtual {v1, v0}, Landroid/service/notification/NotificationListenerService;->onInterruptionFilterChanged(I)V

    .line 2524
    .end local v0    # "interruptionFilter":I
    goto :goto_b8

    .line 2517
    :pswitch_6a
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 2518
    .local v0, "hints":I
    iget-object v1, p0, Landroid/service/notification/NotificationListenerService$MyHandler;->this$0:Landroid/service/notification/NotificationListenerService;

    invoke-virtual {v1, v0}, Landroid/service/notification/NotificationListenerService;->onListenerHintsChanged(I)V

    .line 2519
    .end local v0    # "hints":I
    goto :goto_b8

    .line 2512
    :pswitch_72
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/service/notification/NotificationListenerService$RankingMap;

    .line 2513
    .local v0, "rankingMap":Landroid/service/notification/NotificationListenerService$RankingMap;
    iget-object v1, p0, Landroid/service/notification/NotificationListenerService$MyHandler;->this$0:Landroid/service/notification/NotificationListenerService;

    invoke-virtual {v1, v0}, Landroid/service/notification/NotificationListenerService;->onNotificationRankingUpdate(Landroid/service/notification/NotificationListenerService$RankingMap;)V

    .line 2514
    .end local v0    # "rankingMap":Landroid/service/notification/NotificationListenerService$RankingMap;
    goto :goto_b8

    .line 2508
    :pswitch_7c
    iget-object v0, p0, Landroid/service/notification/NotificationListenerService$MyHandler;->this$0:Landroid/service/notification/NotificationListenerService;

    invoke-virtual {v0}, Landroid/service/notification/NotificationListenerService;->onListenerConnected()V

    .line 2509
    goto :goto_b8

    .line 2498
    :pswitch_82
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/os/SomeArgs;

    .line 2499
    .local v0, "args":Lcom/android/internal/os/SomeArgs;
    iget-object v1, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v1, Landroid/service/notification/StatusBarNotification;

    .line 2500
    .local v1, "sbn":Landroid/service/notification/StatusBarNotification;
    iget-object v2, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v2, Landroid/service/notification/NotificationListenerService$RankingMap;

    .line 2501
    .local v2, "rankingMap":Landroid/service/notification/NotificationListenerService$RankingMap;
    iget-object v3, v0, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 2502
    .local v3, "reason":I
    iget-object v4, v0, Lcom/android/internal/os/SomeArgs;->arg4:Ljava/lang/Object;

    check-cast v4, Landroid/service/notification/NotificationStats;

    .line 2503
    .local v4, "stats":Landroid/service/notification/NotificationStats;
    invoke-virtual {v0}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 2504
    iget-object v5, p0, Landroid/service/notification/NotificationListenerService$MyHandler;->this$0:Landroid/service/notification/NotificationListenerService;

    invoke-virtual {v5, v1, v2, v4, v3}, Landroid/service/notification/NotificationListenerService;->onNotificationRemoved(Landroid/service/notification/StatusBarNotification;Landroid/service/notification/NotificationListenerService$RankingMap;Landroid/service/notification/NotificationStats;I)V

    .line 2505
    .end local v0    # "args":Lcom/android/internal/os/SomeArgs;
    .end local v1    # "sbn":Landroid/service/notification/StatusBarNotification;
    .end local v2    # "rankingMap":Landroid/service/notification/NotificationListenerService$RankingMap;
    .end local v3    # "reason":I
    .end local v4    # "stats":Landroid/service/notification/NotificationStats;
    goto :goto_b8

    .line 2490
    :pswitch_a3
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/os/SomeArgs;

    .line 2491
    .restart local v0    # "args":Lcom/android/internal/os/SomeArgs;
    iget-object v1, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v1, Landroid/service/notification/StatusBarNotification;

    .line 2492
    .restart local v1    # "sbn":Landroid/service/notification/StatusBarNotification;
    iget-object v2, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v2, Landroid/service/notification/NotificationListenerService$RankingMap;

    .line 2493
    .restart local v2    # "rankingMap":Landroid/service/notification/NotificationListenerService$RankingMap;
    invoke-virtual {v0}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 2494
    iget-object v3, p0, Landroid/service/notification/NotificationListenerService$MyHandler;->this$0:Landroid/service/notification/NotificationListenerService;

    invoke-virtual {v3, v1, v2}, Landroid/service/notification/NotificationListenerService;->onNotificationPosted(Landroid/service/notification/StatusBarNotification;Landroid/service/notification/NotificationListenerService$RankingMap;)V

    .line 2495
    .end local v0    # "args":Lcom/android/internal/os/SomeArgs;
    .end local v1    # "sbn":Landroid/service/notification/StatusBarNotification;
    .end local v2    # "rankingMap":Landroid/service/notification/NotificationListenerService$RankingMap;
    nop

    .line 2550
    :goto_b8
    return-void

    nop

    :pswitch_data_ba
    .packed-switch 0x1
        :pswitch_a3
        :pswitch_82
        :pswitch_7c
        :pswitch_72
        :pswitch_6a
        :pswitch_62
        :pswitch_41
        :pswitch_1f
        :pswitch_10
    .end packed-switch
.end method
