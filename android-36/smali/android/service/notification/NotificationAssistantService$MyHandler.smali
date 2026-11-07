.class final Landroid/service/notification/NotificationAssistantService$MyHandler;
.super Landroid/os/Handler;
.source "NotificationAssistantService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/service/notification/NotificationAssistantService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "MyHandler"
.end annotation


# static fields
.field public static final blacklist MSG_ON_ACTION_INVOKED:I = 0x7

.field public static final blacklist MSG_ON_ALLOWED_ADJUSTMENTS_CHANGED:I = 0x8

.field public static final blacklist MSG_ON_NOTIFICATIONS_SEEN:I = 0x3

.field public static final blacklist MSG_ON_NOTIFICATION_CLICKED:I = 0xc

.field public static final blacklist MSG_ON_NOTIFICATION_DIRECT_REPLY_SENT:I = 0x5

.field public static final greylist-max-o MSG_ON_NOTIFICATION_ENQUEUED:I = 0x1

.field public static final blacklist MSG_ON_NOTIFICATION_EXPANSION_CHANGED:I = 0x4

.field public static final blacklist MSG_ON_NOTIFICATION_FEEDBACK_RECEIVED:I = 0xd

.field public static final greylist-max-o MSG_ON_NOTIFICATION_SNOOZED:I = 0x2

.field public static final blacklist MSG_ON_NOTIFICATION_VISIBILITY_CHANGED:I = 0xb

.field public static final blacklist MSG_ON_PANEL_HIDDEN:I = 0xa

.field public static final blacklist MSG_ON_PANEL_REVEALED:I = 0x9

.field public static final blacklist MSG_ON_SUGGESTED_REPLY_SENT:I = 0x6


# instance fields
.field final synthetic blacklist this$0:Landroid/service/notification/NotificationAssistantService;


# direct methods
.method public constructor blacklist <init>(Landroid/service/notification/NotificationAssistantService;Landroid/os/Looper;)V
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

    .line 595
    iput-object p1, p0, Landroid/service/notification/NotificationAssistantService$MyHandler;->this$0:Landroid/service/notification/NotificationAssistantService;

    .line 596
    const/4 p1, 0x0

    const/4 v0, 0x0

    invoke-direct {p0, p2, p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;Z)V

    .line 597
    return-void
.end method


# virtual methods
.method public whitelist handleMessage(Landroid/os/Message;)V
    .registers 10
    .param p1, "msg"    # Landroid/os/Message;

    .line 601
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    packed-switch v0, :pswitch_data_142

    goto/16 :goto_140

    .line 708
    :pswitch_9
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/os/SomeArgs;

    .line 709
    .local v0, "args":Lcom/android/internal/os/SomeArgs;
    iget-object v1, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    .line 710
    .local v1, "key":Ljava/lang/String;
    iget-object v2, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v2, Landroid/service/notification/NotificationListenerService$RankingMap;

    .line 711
    .local v2, "ranking":Landroid/service/notification/NotificationListenerService$RankingMap;
    iget-object v3, v0, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    check-cast v3, Landroid/os/Bundle;

    .line 712
    .local v3, "feedback":Landroid/os/Bundle;
    invoke-virtual {v0}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 713
    iget-object v4, p0, Landroid/service/notification/NotificationAssistantService$MyHandler;->this$0:Landroid/service/notification/NotificationAssistantService;

    invoke-virtual {v4, v1, v2, v3}, Landroid/service/notification/NotificationAssistantService;->onNotificationFeedbackReceived(Ljava/lang/String;Landroid/service/notification/NotificationListenerService$RankingMap;Landroid/os/Bundle;)V

    .line 714
    goto/16 :goto_140

    .line 701
    .end local v0    # "args":Lcom/android/internal/os/SomeArgs;
    .end local v1    # "key":Ljava/lang/String;
    .end local v2    # "ranking":Landroid/service/notification/NotificationListenerService$RankingMap;
    .end local v3    # "feedback":Landroid/os/Bundle;
    :pswitch_23
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/os/SomeArgs;

    .line 702
    .restart local v0    # "args":Lcom/android/internal/os/SomeArgs;
    iget-object v1, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    .line 703
    .restart local v1    # "key":Ljava/lang/String;
    invoke-virtual {v0}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 704
    iget-object v2, p0, Landroid/service/notification/NotificationAssistantService$MyHandler;->this$0:Landroid/service/notification/NotificationAssistantService;

    invoke-virtual {v2, v1}, Landroid/service/notification/NotificationAssistantService;->onNotificationClicked(Ljava/lang/String;)V

    .line 705
    goto/16 :goto_140

    .line 693
    .end local v0    # "args":Lcom/android/internal/os/SomeArgs;
    .end local v1    # "key":Ljava/lang/String;
    :pswitch_35
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/os/SomeArgs;

    .line 694
    .restart local v0    # "args":Lcom/android/internal/os/SomeArgs;
    iget-object v3, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    .line 695
    .local v3, "key":Ljava/lang/String;
    iget v4, v0, Lcom/android/internal/os/SomeArgs;->argi1:I

    if-ne v4, v2, :cond_42

    move v1, v2

    .line 696
    .local v1, "isVisible":Z
    :cond_42
    invoke-virtual {v0}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 697
    iget-object v2, p0, Landroid/service/notification/NotificationAssistantService$MyHandler;->this$0:Landroid/service/notification/NotificationAssistantService;

    invoke-virtual {v2, v3, v1}, Landroid/service/notification/NotificationAssistantService;->onNotificationVisibilityChanged(Ljava/lang/String;Z)V

    .line 698
    goto/16 :goto_140

    .line 689
    .end local v0    # "args":Lcom/android/internal/os/SomeArgs;
    .end local v1    # "isVisible":Z
    .end local v3    # "key":Ljava/lang/String;
    :pswitch_4c
    iget-object v0, p0, Landroid/service/notification/NotificationAssistantService$MyHandler;->this$0:Landroid/service/notification/NotificationAssistantService;

    invoke-virtual {v0}, Landroid/service/notification/NotificationAssistantService;->onPanelHidden()V

    .line 690
    goto/16 :goto_140

    .line 682
    :pswitch_53
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/os/SomeArgs;

    .line 683
    .restart local v0    # "args":Lcom/android/internal/os/SomeArgs;
    iget v1, v0, Lcom/android/internal/os/SomeArgs;->argi1:I

    .line 684
    .local v1, "items":I
    invoke-virtual {v0}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 685
    iget-object v2, p0, Landroid/service/notification/NotificationAssistantService$MyHandler;->this$0:Landroid/service/notification/NotificationAssistantService;

    invoke-virtual {v2, v1}, Landroid/service/notification/NotificationAssistantService;->onPanelRevealed(I)V

    .line 686
    goto/16 :goto_140

    .line 678
    .end local v0    # "args":Lcom/android/internal/os/SomeArgs;
    .end local v1    # "items":I
    :pswitch_63
    iget-object v0, p0, Landroid/service/notification/NotificationAssistantService$MyHandler;->this$0:Landroid/service/notification/NotificationAssistantService;

    invoke-virtual {v0}, Landroid/service/notification/NotificationAssistantService;->onAllowedAdjustmentsChanged()V

    .line 679
    goto/16 :goto_140

    .line 669
    :pswitch_6a
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/os/SomeArgs;

    .line 670
    .restart local v0    # "args":Lcom/android/internal/os/SomeArgs;
    iget-object v1, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    .line 671
    .local v1, "key":Ljava/lang/String;
    iget-object v2, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v2, Landroid/app/Notification$Action;

    .line 672
    .local v2, "action":Landroid/app/Notification$Action;
    iget v3, v0, Lcom/android/internal/os/SomeArgs;->argi2:I

    .line 673
    .local v3, "source":I
    invoke-virtual {v0}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 674
    iget-object v4, p0, Landroid/service/notification/NotificationAssistantService$MyHandler;->this$0:Landroid/service/notification/NotificationAssistantService;

    invoke-virtual {v4, v1, v2, v3}, Landroid/service/notification/NotificationAssistantService;->onActionInvoked(Ljava/lang/String;Landroid/app/Notification$Action;I)V

    .line 675
    goto/16 :goto_140

    .line 660
    .end local v0    # "args":Lcom/android/internal/os/SomeArgs;
    .end local v1    # "key":Ljava/lang/String;
    .end local v2    # "action":Landroid/app/Notification$Action;
    .end local v3    # "source":I
    :pswitch_82
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/os/SomeArgs;

    .line 661
    .restart local v0    # "args":Lcom/android/internal/os/SomeArgs;
    iget-object v1, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    .line 662
    .restart local v1    # "key":Ljava/lang/String;
    iget-object v2, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v2, Ljava/lang/CharSequence;

    .line 663
    .local v2, "reply":Ljava/lang/CharSequence;
    iget v3, v0, Lcom/android/internal/os/SomeArgs;->argi2:I

    .line 664
    .restart local v3    # "source":I
    invoke-virtual {v0}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 665
    iget-object v4, p0, Landroid/service/notification/NotificationAssistantService$MyHandler;->this$0:Landroid/service/notification/NotificationAssistantService;

    invoke-virtual {v4, v1, v2, v3}, Landroid/service/notification/NotificationAssistantService;->onSuggestedReplySent(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    .line 666
    goto/16 :goto_140

    .line 653
    .end local v0    # "args":Lcom/android/internal/os/SomeArgs;
    .end local v1    # "key":Ljava/lang/String;
    .end local v2    # "reply":Ljava/lang/CharSequence;
    .end local v3    # "source":I
    :pswitch_9a
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/os/SomeArgs;

    .line 654
    .restart local v0    # "args":Lcom/android/internal/os/SomeArgs;
    iget-object v1, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    .line 655
    .restart local v1    # "key":Ljava/lang/String;
    invoke-virtual {v0}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 656
    iget-object v2, p0, Landroid/service/notification/NotificationAssistantService$MyHandler;->this$0:Landroid/service/notification/NotificationAssistantService;

    invoke-virtual {v2, v1}, Landroid/service/notification/NotificationAssistantService;->onNotificationDirectReplied(Ljava/lang/String;)V

    .line 657
    goto/16 :goto_140

    .line 644
    .end local v0    # "args":Lcom/android/internal/os/SomeArgs;
    .end local v1    # "key":Ljava/lang/String;
    :pswitch_ac
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/os/SomeArgs;

    .line 645
    .restart local v0    # "args":Lcom/android/internal/os/SomeArgs;
    iget-object v3, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    .line 646
    .local v3, "key":Ljava/lang/String;
    iget v4, v0, Lcom/android/internal/os/SomeArgs;->argi1:I

    if-ne v4, v2, :cond_ba

    move v4, v2

    goto :goto_bb

    :cond_ba
    move v4, v1

    .line 647
    .local v4, "isUserAction":Z
    :goto_bb
    iget v5, v0, Lcom/android/internal/os/SomeArgs;->argi2:I

    if-ne v5, v2, :cond_c0

    move v1, v2

    .line 648
    .local v1, "isExpanded":Z
    :cond_c0
    invoke-virtual {v0}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 649
    iget-object v2, p0, Landroid/service/notification/NotificationAssistantService$MyHandler;->this$0:Landroid/service/notification/NotificationAssistantService;

    invoke-virtual {v2, v3, v4, v1}, Landroid/service/notification/NotificationAssistantService;->onNotificationExpansionChanged(Ljava/lang/String;ZZ)V

    .line 650
    goto/16 :goto_140

    .line 637
    .end local v0    # "args":Lcom/android/internal/os/SomeArgs;
    .end local v1    # "isExpanded":Z
    .end local v3    # "key":Ljava/lang/String;
    .end local v4    # "isUserAction":Z
    :pswitch_ca
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/os/SomeArgs;

    .line 638
    .restart local v0    # "args":Lcom/android/internal/os/SomeArgs;
    iget-object v1, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v1, Ljava/util/List;

    .line 639
    .local v1, "keys":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {v0}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 640
    iget-object v2, p0, Landroid/service/notification/NotificationAssistantService$MyHandler;->this$0:Landroid/service/notification/NotificationAssistantService;

    invoke-virtual {v2, v1}, Landroid/service/notification/NotificationAssistantService;->onNotificationsSeen(Ljava/util/List;)V

    .line 641
    goto :goto_140

    .line 629
    .end local v0    # "args":Lcom/android/internal/os/SomeArgs;
    .end local v1    # "keys":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :pswitch_db
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/os/SomeArgs;

    .line 630
    .restart local v0    # "args":Lcom/android/internal/os/SomeArgs;
    iget-object v1, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v1, Landroid/service/notification/StatusBarNotification;

    .line 631
    .local v1, "sbn":Landroid/service/notification/StatusBarNotification;
    iget-object v2, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    .line 632
    .local v2, "snoozeCriterionId":Ljava/lang/String;
    invoke-virtual {v0}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 633
    iget-object v3, p0, Landroid/service/notification/NotificationAssistantService$MyHandler;->this$0:Landroid/service/notification/NotificationAssistantService;

    invoke-virtual {v3, v1, v2}, Landroid/service/notification/NotificationAssistantService;->onNotificationSnoozedUntilContext(Landroid/service/notification/StatusBarNotification;Ljava/lang/String;)V

    .line 634
    goto :goto_140

    .line 603
    .end local v0    # "args":Lcom/android/internal/os/SomeArgs;
    .end local v1    # "sbn":Landroid/service/notification/StatusBarNotification;
    .end local v2    # "snoozeCriterionId":Ljava/lang/String;
    :pswitch_f0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/os/SomeArgs;

    .line 604
    .restart local v0    # "args":Lcom/android/internal/os/SomeArgs;
    iget-object v1, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v1, Landroid/service/notification/StatusBarNotification;

    .line 605
    .restart local v1    # "sbn":Landroid/service/notification/StatusBarNotification;
    iget-object v2, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v2, Landroid/app/NotificationChannel;

    .line 606
    .local v2, "channel":Landroid/app/NotificationChannel;
    iget-object v3, v0, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    check-cast v3, Landroid/service/notification/NotificationListenerService$RankingMap;

    .line 607
    .local v3, "ranking":Landroid/service/notification/NotificationListenerService$RankingMap;
    invoke-virtual {v0}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 608
    iget-object v4, p0, Landroid/service/notification/NotificationAssistantService$MyHandler;->this$0:Landroid/service/notification/NotificationAssistantService;

    invoke-virtual {v4, v1, v2, v3}, Landroid/service/notification/NotificationAssistantService;->onNotificationEnqueued(Landroid/service/notification/StatusBarNotification;Landroid/app/NotificationChannel;Landroid/service/notification/NotificationListenerService$RankingMap;)Landroid/service/notification/Adjustment;

    move-result-object v4

    .line 609
    .local v4, "adjustment":Landroid/service/notification/Adjustment;
    iget-object v5, p0, Landroid/service/notification/NotificationAssistantService$MyHandler;->this$0:Landroid/service/notification/NotificationAssistantService;

    invoke-static {v5, v4}, Landroid/service/notification/NotificationAssistantService;->-$$Nest$msetAdjustmentIssuer(Landroid/service/notification/NotificationAssistantService;Landroid/service/notification/Adjustment;)V

    .line 610
    if-eqz v4, :cond_140

    .line 611
    iget-object v5, p0, Landroid/service/notification/NotificationAssistantService$MyHandler;->this$0:Landroid/service/notification/NotificationAssistantService;

    invoke-virtual {v5}, Landroid/service/notification/NotificationAssistantService;->isBound()Z

    move-result v5

    const-string v6, "NotificationAssistants"

    if-nez v5, :cond_120

    .line 612
    const-string v5, "MSG_ON_NOTIFICATION_ENQUEUED: service not bound, skip."

    invoke-static {v6, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 613
    return-void

    .line 616
    :cond_120
    :try_start_120
    iget-object v5, p0, Landroid/service/notification/NotificationAssistantService$MyHandler;->this$0:Landroid/service/notification/NotificationAssistantService;

    invoke-virtual {v5}, Landroid/service/notification/NotificationAssistantService;->getNotificationInterface()Landroid/app/INotificationManager;

    move-result-object v5

    iget-object v7, p0, Landroid/service/notification/NotificationAssistantService$MyHandler;->this$0:Landroid/service/notification/NotificationAssistantService;

    iget-object v7, v7, Landroid/service/notification/NotificationAssistantService;->mWrapper:Landroid/service/notification/NotificationListenerService$NotificationListenerWrapper;

    invoke-interface {v5, v7, v4}, Landroid/app/INotificationManager;->applyEnqueuedAdjustmentFromAssistant(Landroid/service/notification/INotificationListener;Landroid/service/notification/Adjustment;)V
    :try_end_12d
    .catch Landroid/os/RemoteException; {:try_start_120 .. :try_end_12d} :catch_135
    .catch Ljava/lang/SecurityException; {:try_start_120 .. :try_end_12d} :catch_12e

    goto :goto_134

    .line 621
    :catch_12e
    move-exception v5

    .line 623
    .local v5, "e":Ljava/lang/SecurityException;
    const-string v7, "Enqueue adjustment failed; no longer connected"

    invoke-static {v6, v7, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 624
    .end local v5    # "e":Ljava/lang/SecurityException;
    :goto_134
    goto :goto_140

    .line 618
    :catch_135
    move-exception v5

    .line 619
    .local v5, "ex":Landroid/os/RemoteException;
    const-string v7, "Unable to contact notification manager"

    invoke-static {v6, v7, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 620
    invoke-virtual {v5}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v6

    throw v6

    .line 717
    .end local v0    # "args":Lcom/android/internal/os/SomeArgs;
    .end local v1    # "sbn":Landroid/service/notification/StatusBarNotification;
    .end local v2    # "channel":Landroid/app/NotificationChannel;
    .end local v3    # "ranking":Landroid/service/notification/NotificationListenerService$RankingMap;
    .end local v4    # "adjustment":Landroid/service/notification/Adjustment;
    .end local v5    # "ex":Landroid/os/RemoteException;
    :cond_140
    :goto_140
    return-void

    nop

    :pswitch_data_142
    .packed-switch 0x1
        :pswitch_f0
        :pswitch_db
        :pswitch_ca
        :pswitch_ac
        :pswitch_9a
        :pswitch_82
        :pswitch_6a
        :pswitch_63
        :pswitch_53
        :pswitch_4c
        :pswitch_35
        :pswitch_23
        :pswitch_9
    .end packed-switch
.end method
