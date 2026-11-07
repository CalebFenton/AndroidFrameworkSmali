.class Landroid/service/notification/NotificationAssistantService$NotificationAssistantServiceWrapper;
.super Landroid/service/notification/NotificationListenerService$NotificationListenerWrapper;
.source "NotificationAssistantService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/service/notification/NotificationAssistantService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "NotificationAssistantServiceWrapper"
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/service/notification/NotificationAssistantService;


# direct methods
.method private constructor blacklist <init>(Landroid/service/notification/NotificationAssistantService;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            null
        }
    .end annotation

    .line 422
    iput-object p1, p0, Landroid/service/notification/NotificationAssistantService$NotificationAssistantServiceWrapper;->this$0:Landroid/service/notification/NotificationAssistantService;

    invoke-direct {p0, p1}, Landroid/service/notification/NotificationListenerService$NotificationListenerWrapper;-><init>(Landroid/service/notification/NotificationListenerService;)V

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/service/notification/NotificationAssistantService;Landroid/service/notification/NotificationAssistantService-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/service/notification/NotificationAssistantService$NotificationAssistantServiceWrapper;-><init>(Landroid/service/notification/NotificationAssistantService;)V

    return-void
.end method


# virtual methods
.method public blacklist onActionClicked(Ljava/lang/String;Landroid/app/Notification$Action;I)V
    .registers 7
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "action"    # Landroid/app/Notification$Action;
    .param p3, "source"    # I

    .line 542
    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    move-result-object v0

    .line 543
    .local v0, "args":Lcom/android/internal/os/SomeArgs;
    iput-object p1, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    .line 544
    iput-object p2, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    .line 545
    iput p3, v0, Lcom/android/internal/os/SomeArgs;->argi2:I

    .line 546
    iget-object v1, p0, Landroid/service/notification/NotificationAssistantService$NotificationAssistantServiceWrapper;->this$0:Landroid/service/notification/NotificationAssistantService;

    iget-object v1, v1, Landroid/service/notification/NotificationAssistantService;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x7

    invoke-virtual {v1, v2, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 547
    return-void
.end method

.method public blacklist onAllowedAdjustmentsChanged()V
    .registers 3

    .line 558
    iget-object v0, p0, Landroid/service/notification/NotificationAssistantService$NotificationAssistantServiceWrapper;->this$0:Landroid/service/notification/NotificationAssistantService;

    iget-object v0, v0, Landroid/service/notification/NotificationAssistantService;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 559
    return-void
.end method

.method public blacklist onNotificationClicked(Ljava/lang/String;)V
    .registers 5
    .param p1, "key"    # Ljava/lang/String;

    .line 551
    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    move-result-object v0

    .line 552
    .local v0, "args":Lcom/android/internal/os/SomeArgs;
    iput-object p1, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    .line 553
    iget-object v1, p0, Landroid/service/notification/NotificationAssistantService$NotificationAssistantServiceWrapper;->this$0:Landroid/service/notification/NotificationAssistantService;

    iget-object v1, v1, Landroid/service/notification/NotificationAssistantService;->mHandler:Landroid/os/Handler;

    const/16 v2, 0xc

    invoke-virtual {v1, v2, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 554
    return-void
.end method

.method public blacklist onNotificationDirectReply(Ljava/lang/String;)V
    .registers 5
    .param p1, "key"    # Ljava/lang/String;

    .line 525
    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    move-result-object v0

    .line 526
    .local v0, "args":Lcom/android/internal/os/SomeArgs;
    iput-object p1, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    .line 527
    iget-object v1, p0, Landroid/service/notification/NotificationAssistantService$NotificationAssistantServiceWrapper;->this$0:Landroid/service/notification/NotificationAssistantService;

    iget-object v1, v1, Landroid/service/notification/NotificationAssistantService;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x5

    invoke-virtual {v1, v2, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 528
    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 529
    return-void
.end method

.method public blacklist onNotificationEnqueuedWithChannel(Landroid/service/notification/IStatusBarNotificationHolder;Landroid/app/NotificationChannel;Landroid/service/notification/NotificationRankingUpdate;)V
    .registers 7
    .param p1, "sbnHolder"    # Landroid/service/notification/IStatusBarNotificationHolder;
    .param p2, "channel"    # Landroid/app/NotificationChannel;
    .param p3, "update"    # Landroid/service/notification/NotificationRankingUpdate;

    .line 428
    const-string v0, "NotificationAssistants"

    :try_start_2
    invoke-interface {p1}, Landroid/service/notification/IStatusBarNotificationHolder;->get()Landroid/service/notification/StatusBarNotification;

    move-result-object v1
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_6} :catch_14

    .line 432
    .local v1, "sbn":Landroid/service/notification/StatusBarNotification;
    nop

    .line 433
    if-nez v1, :cond_10

    .line 434
    const-string/jumbo v2, "onNotificationEnqueuedWithChannel: Error receiving StatusBarNotification"

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 436
    return-void

    .line 438
    :cond_10
    invoke-virtual {p0, v1, p2, p3}, Landroid/service/notification/NotificationAssistantService$NotificationAssistantServiceWrapper;->onNotificationEnqueuedWithChannelFull(Landroid/service/notification/StatusBarNotification;Landroid/app/NotificationChannel;Landroid/service/notification/NotificationRankingUpdate;)V

    .line 439
    return-void

    .line 429
    .end local v1    # "sbn":Landroid/service/notification/StatusBarNotification;
    :catch_14
    move-exception v1

    .line 430
    .local v1, "e":Landroid/os/RemoteException;
    const-string/jumbo v2, "onNotificationEnqueued: Error receiving StatusBarNotification"

    invoke-static {v0, v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 431
    return-void
.end method

.method public blacklist onNotificationEnqueuedWithChannelFull(Landroid/service/notification/StatusBarNotification;Landroid/app/NotificationChannel;Landroid/service/notification/NotificationRankingUpdate;)V
    .registers 7
    .param p1, "sbn"    # Landroid/service/notification/StatusBarNotification;
    .param p2, "channel"    # Landroid/app/NotificationChannel;
    .param p3, "update"    # Landroid/service/notification/NotificationRankingUpdate;

    .line 444
    iget-object v0, p0, Landroid/service/notification/NotificationAssistantService$NotificationAssistantServiceWrapper;->this$0:Landroid/service/notification/NotificationAssistantService;

    invoke-virtual {v0, p3}, Landroid/service/notification/NotificationAssistantService;->applyUpdateLocked(Landroid/service/notification/NotificationRankingUpdate;)V

    .line 445
    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    move-result-object v0

    .line 446
    .local v0, "args":Lcom/android/internal/os/SomeArgs;
    iput-object p1, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    .line 447
    iput-object p2, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    .line 448
    iget-object v1, p0, Landroid/service/notification/NotificationAssistantService$NotificationAssistantServiceWrapper;->this$0:Landroid/service/notification/NotificationAssistantService;

    invoke-virtual {v1}, Landroid/service/notification/NotificationAssistantService;->getCurrentRanking()Landroid/service/notification/NotificationListenerService$RankingMap;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    .line 449
    iget-object v1, p0, Landroid/service/notification/NotificationAssistantService$NotificationAssistantServiceWrapper;->this$0:Landroid/service/notification/NotificationAssistantService;

    iget-object v1, v1, Landroid/service/notification/NotificationAssistantService;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x1

    invoke-virtual {v1, v2, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 450
    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 451
    return-void
.end method

.method public blacklist onNotificationExpansionChanged(Ljava/lang/String;ZZ)V
    .registers 7
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "isUserAction"    # Z
    .param p3, "isExpanded"    # Z

    .line 515
    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    move-result-object v0

    .line 516
    .local v0, "args":Lcom/android/internal/os/SomeArgs;
    iput-object p1, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    .line 517
    iput p2, v0, Lcom/android/internal/os/SomeArgs;->argi1:I

    .line 518
    iput p3, v0, Lcom/android/internal/os/SomeArgs;->argi2:I

    .line 519
    iget-object v1, p0, Landroid/service/notification/NotificationAssistantService$NotificationAssistantServiceWrapper;->this$0:Landroid/service/notification/NotificationAssistantService;

    iget-object v1, v1, Landroid/service/notification/NotificationAssistantService;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x4

    invoke-virtual {v1, v2, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 520
    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 521
    return-void
.end method

.method public blacklist onNotificationFeedbackReceived(Ljava/lang/String;Landroid/service/notification/NotificationRankingUpdate;Landroid/os/Bundle;)V
    .registers 7
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "update"    # Landroid/service/notification/NotificationRankingUpdate;
    .param p3, "feedback"    # Landroid/os/Bundle;

    .line 564
    iget-object v0, p0, Landroid/service/notification/NotificationAssistantService$NotificationAssistantServiceWrapper;->this$0:Landroid/service/notification/NotificationAssistantService;

    invoke-virtual {v0, p2}, Landroid/service/notification/NotificationAssistantService;->applyUpdateLocked(Landroid/service/notification/NotificationRankingUpdate;)V

    .line 565
    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    move-result-object v0

    .line 566
    .local v0, "args":Lcom/android/internal/os/SomeArgs;
    iput-object p1, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    .line 567
    iget-object v1, p0, Landroid/service/notification/NotificationAssistantService$NotificationAssistantServiceWrapper;->this$0:Landroid/service/notification/NotificationAssistantService;

    invoke-virtual {v1}, Landroid/service/notification/NotificationAssistantService;->getCurrentRanking()Landroid/service/notification/NotificationListenerService$RankingMap;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    .line 568
    iput-object p3, v0, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    .line 569
    iget-object v1, p0, Landroid/service/notification/NotificationAssistantService$NotificationAssistantServiceWrapper;->this$0:Landroid/service/notification/NotificationAssistantService;

    iget-object v1, v1, Landroid/service/notification/NotificationAssistantService;->mHandler:Landroid/os/Handler;

    const/16 v2, 0xd

    invoke-virtual {v1, v2, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 570
    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 571
    return-void
.end method

.method public greylist-max-o onNotificationSnoozedUntilContext(Landroid/service/notification/IStatusBarNotificationHolder;Ljava/lang/String;)V
    .registers 6
    .param p1, "sbnHolder"    # Landroid/service/notification/IStatusBarNotificationHolder;
    .param p2, "snoozeCriterionId"    # Ljava/lang/String;

    .line 458
    const-string/jumbo v0, "onNotificationSnoozed: Error receiving StatusBarNotification"

    const-string v1, "NotificationAssistants"

    :try_start_5
    invoke-interface {p1}, Landroid/service/notification/IStatusBarNotificationHolder;->get()Landroid/service/notification/StatusBarNotification;

    move-result-object v2
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_9} :catch_14

    .line 462
    .local v2, "sbn":Landroid/service/notification/StatusBarNotification;
    nop

    .line 463
    if-nez v2, :cond_10

    .line 464
    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 465
    return-void

    .line 467
    :cond_10
    invoke-virtual {p0, v2, p2}, Landroid/service/notification/NotificationAssistantService$NotificationAssistantServiceWrapper;->onNotificationSnoozedUntilContextFull(Landroid/service/notification/StatusBarNotification;Ljava/lang/String;)V

    .line 468
    return-void

    .line 459
    .end local v2    # "sbn":Landroid/service/notification/StatusBarNotification;
    :catch_14
    move-exception v2

    .line 460
    .local v2, "e":Landroid/os/RemoteException;
    invoke-static {v1, v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 461
    return-void
.end method

.method public blacklist onNotificationSnoozedUntilContextFull(Landroid/service/notification/StatusBarNotification;Ljava/lang/String;)V
    .registers 6
    .param p1, "sbn"    # Landroid/service/notification/StatusBarNotification;
    .param p2, "snoozeCriterionId"    # Ljava/lang/String;

    .line 473
    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    move-result-object v0

    .line 474
    .local v0, "args":Lcom/android/internal/os/SomeArgs;
    iput-object p1, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    .line 475
    iput-object p2, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    .line 476
    iget-object v1, p0, Landroid/service/notification/NotificationAssistantService$NotificationAssistantServiceWrapper;->this$0:Landroid/service/notification/NotificationAssistantService;

    iget-object v1, v1, Landroid/service/notification/NotificationAssistantService;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x2

    invoke-virtual {v1, v2, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 477
    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 478
    return-void
.end method

.method public blacklist onNotificationVisibilityChanged(Ljava/lang/String;Z)V
    .registers 6
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "isVisible"    # Z

    .line 505
    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    move-result-object v0

    .line 506
    .local v0, "args":Lcom/android/internal/os/SomeArgs;
    iput-object p1, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    .line 507
    iput p2, v0, Lcom/android/internal/os/SomeArgs;->argi1:I

    .line 508
    iget-object v1, p0, Landroid/service/notification/NotificationAssistantService$NotificationAssistantServiceWrapper;->this$0:Landroid/service/notification/NotificationAssistantService;

    iget-object v1, v1, Landroid/service/notification/NotificationAssistantService;->mHandler:Landroid/os/Handler;

    const/16 v2, 0xb

    invoke-virtual {v1, v2, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 509
    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 510
    return-void
.end method

.method public blacklist onNotificationsSeen(Ljava/util/List;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 482
    .local p1, "keys":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    move-result-object v0

    .line 483
    .local v0, "args":Lcom/android/internal/os/SomeArgs;
    iput-object p1, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    .line 484
    iget-object v1, p0, Landroid/service/notification/NotificationAssistantService$NotificationAssistantServiceWrapper;->this$0:Landroid/service/notification/NotificationAssistantService;

    iget-object v1, v1, Landroid/service/notification/NotificationAssistantService;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x3

    invoke-virtual {v1, v2, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 485
    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 486
    return-void
.end method

.method public blacklist onPanelHidden()V
    .registers 4

    .line 498
    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    move-result-object v0

    .line 499
    .local v0, "args":Lcom/android/internal/os/SomeArgs;
    iget-object v1, p0, Landroid/service/notification/NotificationAssistantService$NotificationAssistantServiceWrapper;->this$0:Landroid/service/notification/NotificationAssistantService;

    iget-object v1, v1, Landroid/service/notification/NotificationAssistantService;->mHandler:Landroid/os/Handler;

    const/16 v2, 0xa

    invoke-virtual {v1, v2, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 500
    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 501
    return-void
.end method

.method public blacklist onPanelRevealed(I)V
    .registers 5
    .param p1, "items"    # I

    .line 490
    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    move-result-object v0

    .line 491
    .local v0, "args":Lcom/android/internal/os/SomeArgs;
    iput p1, v0, Lcom/android/internal/os/SomeArgs;->argi1:I

    .line 492
    iget-object v1, p0, Landroid/service/notification/NotificationAssistantService$NotificationAssistantServiceWrapper;->this$0:Landroid/service/notification/NotificationAssistantService;

    iget-object v1, v1, Landroid/service/notification/NotificationAssistantService;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x9

    invoke-virtual {v1, v2, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 493
    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 494
    return-void
.end method

.method public blacklist onSuggestedReplySent(Ljava/lang/String;Ljava/lang/CharSequence;I)V
    .registers 7
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "reply"    # Ljava/lang/CharSequence;
    .param p3, "source"    # I

    .line 533
    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    move-result-object v0

    .line 534
    .local v0, "args":Lcom/android/internal/os/SomeArgs;
    iput-object p1, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    .line 535
    iput-object p2, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    .line 536
    iput p3, v0, Lcom/android/internal/os/SomeArgs;->argi2:I

    .line 537
    iget-object v1, p0, Landroid/service/notification/NotificationAssistantService$NotificationAssistantServiceWrapper;->this$0:Landroid/service/notification/NotificationAssistantService;

    iget-object v1, v1, Landroid/service/notification/NotificationAssistantService;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x6

    invoke-virtual {v1, v2, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 538
    return-void
.end method
