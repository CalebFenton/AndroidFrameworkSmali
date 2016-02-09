.class Landroid/service/notification/NotificationListenerService$INotificationListenerWrapper;
.super Landroid/service/notification/INotificationListener$Stub;
.source "NotificationListenerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/service/notification/NotificationListenerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "INotificationListenerWrapper"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/service/notification/NotificationListenerService;


# direct methods
.method private constructor <init>(Landroid/service/notification/NotificationListenerService;)V
    .locals 0
    .param p1, "this$0"    # Landroid/service/notification/NotificationListenerService;

    #@0
    .prologue
    .line 679
    iput-object p1, p0, Landroid/service/notification/NotificationListenerService$INotificationListenerWrapper;->this$0:Landroid/service/notification/NotificationListenerService;

    #@2
    invoke-direct {p0}, Landroid/service/notification/INotificationListener$Stub;-><init>()V

    #@5
    return-void
.end method

.method synthetic constructor <init>(Landroid/service/notification/NotificationListenerService;Landroid/service/notification/NotificationListenerService$INotificationListenerWrapper;)V
    .locals 0
    .param p1, "this$0"    # Landroid/service/notification/NotificationListenerService;

    #@0
    .prologue
    invoke-direct {p0, p1}, Landroid/service/notification/NotificationListenerService$INotificationListenerWrapper;-><init>(Landroid/service/notification/NotificationListenerService;)V

    #@3
    return-void
.end method


# virtual methods
.method public onInterruptionFilterChanged(I)V
    .locals 3
    .param p1, "interruptionFilter"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 774
    :try_start_0
    iget-object v1, p0, Landroid/service/notification/NotificationListenerService$INotificationListenerWrapper;->this$0:Landroid/service/notification/NotificationListenerService;

    #@2
    invoke-virtual {v1, p1}, Landroid/service/notification/NotificationListenerService;->onInterruptionFilterChanged(I)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    #@5
    .line 772
    :goto_0
    return-void

    #@6
    .line 775
    :catch_0
    move-exception v0

    #@7
    .line 776
    .local v0, "t":Ljava/lang/Throwable;
    iget-object v1, p0, Landroid/service/notification/NotificationListenerService$INotificationListenerWrapper;->this$0:Landroid/service/notification/NotificationListenerService;

    #@9
    invoke-static {v1}, Landroid/service/notification/NotificationListenerService;->-get0(Landroid/service/notification/NotificationListenerService;)Ljava/lang/String;

    #@c
    move-result-object v1

    #@d
    const-string/jumbo v2, "Error running onInterruptionFilterChanged"

    #@10
    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@13
    goto :goto_0
.end method

.method public onListenerConnected(Landroid/service/notification/NotificationRankingUpdate;)V
    .locals 4
    .param p1, "update"    # Landroid/service/notification/NotificationRankingUpdate;

    #@0
    .prologue
    .line 740
    iget-object v1, p0, Landroid/service/notification/NotificationListenerService$INotificationListenerWrapper;->this$0:Landroid/service/notification/NotificationListenerService;

    #@2
    invoke-static {v1}, Landroid/service/notification/NotificationListenerService;->-get2(Landroid/service/notification/NotificationListenerService;)Landroid/service/notification/NotificationListenerService$INotificationListenerWrapper;

    #@5
    move-result-object v2

    #@6
    monitor-enter v2

    #@7
    .line 741
    :try_start_0
    iget-object v1, p0, Landroid/service/notification/NotificationListenerService$INotificationListenerWrapper;->this$0:Landroid/service/notification/NotificationListenerService;

    #@9
    invoke-static {v1, p1}, Landroid/service/notification/NotificationListenerService;->-wrap1(Landroid/service/notification/NotificationListenerService;Landroid/service/notification/NotificationRankingUpdate;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@c
    .line 743
    :try_start_1
    iget-object v1, p0, Landroid/service/notification/NotificationListenerService$INotificationListenerWrapper;->this$0:Landroid/service/notification/NotificationListenerService;

    #@e
    invoke-virtual {v1}, Landroid/service/notification/NotificationListenerService;->onListenerConnected()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@11
    :goto_0
    monitor-exit v2

    #@12
    .line 738
    return-void

    #@13
    .line 744
    :catch_0
    move-exception v0

    #@14
    .line 745
    .local v0, "t":Ljava/lang/Throwable;
    :try_start_2
    iget-object v1, p0, Landroid/service/notification/NotificationListenerService$INotificationListenerWrapper;->this$0:Landroid/service/notification/NotificationListenerService;

    #@16
    invoke-static {v1}, Landroid/service/notification/NotificationListenerService;->-get0(Landroid/service/notification/NotificationListenerService;)Ljava/lang/String;

    #@19
    move-result-object v1

    #@1a
    const-string/jumbo v3, "Error running onListenerConnected"

    #@1d
    invoke-static {v1, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@20
    goto :goto_0

    #@21
    .line 740
    .end local v0    # "t":Ljava/lang/Throwable;
    :catchall_0
    move-exception v1

    #@22
    monitor-exit v2

    #@23
    throw v1
.end method

.method public onListenerHintsChanged(I)V
    .locals 3
    .param p1, "hints"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 765
    :try_start_0
    iget-object v1, p0, Landroid/service/notification/NotificationListenerService$INotificationListenerWrapper;->this$0:Landroid/service/notification/NotificationListenerService;

    #@2
    invoke-virtual {v1, p1}, Landroid/service/notification/NotificationListenerService;->onListenerHintsChanged(I)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    #@5
    .line 763
    :goto_0
    return-void

    #@6
    .line 766
    :catch_0
    move-exception v0

    #@7
    .line 767
    .local v0, "t":Ljava/lang/Throwable;
    iget-object v1, p0, Landroid/service/notification/NotificationListenerService$INotificationListenerWrapper;->this$0:Landroid/service/notification/NotificationListenerService;

    #@9
    invoke-static {v1}, Landroid/service/notification/NotificationListenerService;->-get0(Landroid/service/notification/NotificationListenerService;)Ljava/lang/String;

    #@c
    move-result-object v1

    #@d
    const-string/jumbo v2, "Error running onListenerHintsChanged"

    #@10
    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@13
    goto :goto_0
.end method

.method public onNotificationPosted(Landroid/service/notification/IStatusBarNotificationHolder;Landroid/service/notification/NotificationRankingUpdate;)V
    .locals 7
    .param p1, "sbnHolder"    # Landroid/service/notification/IStatusBarNotificationHolder;
    .param p2, "update"    # Landroid/service/notification/NotificationRankingUpdate;

    #@0
    .prologue
    .line 685
    :try_start_0
    invoke-interface {p1}, Landroid/service/notification/IStatusBarNotificationHolder;->get()Landroid/service/notification/StatusBarNotification;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@3
    move-result-object v2

    #@4
    .line 692
    .local v2, "sbn":Landroid/service/notification/StatusBarNotification;
    :try_start_1
    iget-object v4, p0, Landroid/service/notification/NotificationListenerService$INotificationListenerWrapper;->this$0:Landroid/service/notification/NotificationListenerService;

    #@6
    invoke-static {v4}, Landroid/service/notification/NotificationListenerService;->-wrap0(Landroid/service/notification/NotificationListenerService;)Landroid/content/Context;

    #@9
    move-result-object v4

    #@a
    invoke-virtual {v2}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    #@d
    move-result-object v5

    #@e
    invoke-static {v4, v5}, Landroid/app/Notification$Builder;->rebuild(Landroid/content/Context;Landroid/app/Notification;)Landroid/app/Notification;

    #@11
    .line 694
    iget-object v4, p0, Landroid/service/notification/NotificationListenerService$INotificationListenerWrapper;->this$0:Landroid/service/notification/NotificationListenerService;

    #@13
    invoke-virtual {v2}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    #@16
    move-result-object v5

    #@17
    invoke-static {v4, v5}, Landroid/service/notification/NotificationListenerService;->-wrap2(Landroid/service/notification/NotificationListenerService;Landroid/app/Notification;)V
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1

    #@1a
    .line 703
    .end local v2    # "sbn":Landroid/service/notification/StatusBarNotification;
    :goto_0
    iget-object v4, p0, Landroid/service/notification/NotificationListenerService$INotificationListenerWrapper;->this$0:Landroid/service/notification/NotificationListenerService;

    #@1c
    invoke-static {v4}, Landroid/service/notification/NotificationListenerService;->-get2(Landroid/service/notification/NotificationListenerService;)Landroid/service/notification/NotificationListenerService$INotificationListenerWrapper;

    #@1f
    move-result-object v5

    #@20
    monitor-enter v5

    #@21
    .line 704
    :try_start_2
    iget-object v4, p0, Landroid/service/notification/NotificationListenerService$INotificationListenerWrapper;->this$0:Landroid/service/notification/NotificationListenerService;

    #@23
    invoke-static {v4, p2}, Landroid/service/notification/NotificationListenerService;->-wrap1(Landroid/service/notification/NotificationListenerService;Landroid/service/notification/NotificationRankingUpdate;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@26
    .line 706
    if-eqz v2, :cond_0

    #@28
    .line 707
    :try_start_3
    iget-object v4, p0, Landroid/service/notification/NotificationListenerService$INotificationListenerWrapper;->this$0:Landroid/service/notification/NotificationListenerService;

    #@2a
    iget-object v6, p0, Landroid/service/notification/NotificationListenerService$INotificationListenerWrapper;->this$0:Landroid/service/notification/NotificationListenerService;

    #@2c
    invoke-static {v6}, Landroid/service/notification/NotificationListenerService;->-get1(Landroid/service/notification/NotificationListenerService;)Landroid/service/notification/NotificationListenerService$RankingMap;

    #@2f
    move-result-object v6

    #@30
    invoke-virtual {v4, v2, v6}, Landroid/service/notification/NotificationListenerService;->onNotificationPosted(Landroid/service/notification/StatusBarNotification;Landroid/service/notification/NotificationListenerService$RankingMap;)V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@33
    :goto_1
    monitor-exit v5

    #@34
    .line 682
    return-void

    #@35
    .line 686
    :catch_0
    move-exception v0

    #@36
    .line 687
    .local v0, "e":Landroid/os/RemoteException;
    iget-object v4, p0, Landroid/service/notification/NotificationListenerService$INotificationListenerWrapper;->this$0:Landroid/service/notification/NotificationListenerService;

    #@38
    invoke-static {v4}, Landroid/service/notification/NotificationListenerService;->-get0(Landroid/service/notification/NotificationListenerService;)Ljava/lang/String;

    #@3b
    move-result-object v4

    #@3c
    const-string/jumbo v5, "onNotificationPosted: Error receiving StatusBarNotification"

    #@3f
    invoke-static {v4, v5, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@42
    .line 688
    return-void

    #@43
    .line 695
    .end local v0    # "e":Landroid/os/RemoteException;
    .restart local v2    # "sbn":Landroid/service/notification/StatusBarNotification;
    :catch_1
    move-exception v1

    #@44
    .line 697
    .local v1, "e":Ljava/lang/IllegalArgumentException;
    const/4 v2, 0x0

    #@45
    .line 698
    .local v2, "sbn":Landroid/service/notification/StatusBarNotification;
    iget-object v4, p0, Landroid/service/notification/NotificationListenerService$INotificationListenerWrapper;->this$0:Landroid/service/notification/NotificationListenerService;

    #@47
    invoke-static {v4}, Landroid/service/notification/NotificationListenerService;->-get0(Landroid/service/notification/NotificationListenerService;)Ljava/lang/String;

    #@4a
    move-result-object v4

    #@4b
    new-instance v5, Ljava/lang/StringBuilder;

    #@4d
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@50
    const-string/jumbo v6, "onNotificationPosted: can\'t rebuild notification from "

    #@53
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@56
    move-result-object v5

    #@57
    .line 699
    invoke-virtual {v2}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    #@5a
    move-result-object v6

    #@5b
    .line 698
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5e
    move-result-object v5

    #@5f
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@62
    move-result-object v5

    #@63
    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@66
    goto :goto_0

    #@67
    .line 710
    .end local v1    # "e":Ljava/lang/IllegalArgumentException;
    .end local v2    # "sbn":Landroid/service/notification/StatusBarNotification;
    :cond_0
    :try_start_4
    iget-object v4, p0, Landroid/service/notification/NotificationListenerService$INotificationListenerWrapper;->this$0:Landroid/service/notification/NotificationListenerService;

    #@69
    iget-object v6, p0, Landroid/service/notification/NotificationListenerService$INotificationListenerWrapper;->this$0:Landroid/service/notification/NotificationListenerService;

    #@6b
    invoke-static {v6}, Landroid/service/notification/NotificationListenerService;->-get1(Landroid/service/notification/NotificationListenerService;)Landroid/service/notification/NotificationListenerService$RankingMap;

    #@6e
    move-result-object v6

    #@6f
    invoke-virtual {v4, v6}, Landroid/service/notification/NotificationListenerService;->onNotificationRankingUpdate(Landroid/service/notification/NotificationListenerService$RankingMap;)V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    #@72
    goto :goto_1

    #@73
    .line 712
    :catch_2
    move-exception v3

    #@74
    .line 713
    .local v3, "t":Ljava/lang/Throwable;
    :try_start_5
    iget-object v4, p0, Landroid/service/notification/NotificationListenerService$INotificationListenerWrapper;->this$0:Landroid/service/notification/NotificationListenerService;

    #@76
    invoke-static {v4}, Landroid/service/notification/NotificationListenerService;->-get0(Landroid/service/notification/NotificationListenerService;)Ljava/lang/String;

    #@79
    move-result-object v4

    #@7a
    const-string/jumbo v6, "Error running onNotificationPosted"

    #@7d
    invoke-static {v4, v6, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    #@80
    goto :goto_1

    #@81
    .line 703
    .end local v3    # "t":Ljava/lang/Throwable;
    :catchall_0
    move-exception v4

    #@82
    monitor-exit v5

    #@83
    throw v4
.end method

.method public onNotificationRankingUpdate(Landroid/service/notification/NotificationRankingUpdate;)V
    .locals 4
    .param p1, "update"    # Landroid/service/notification/NotificationRankingUpdate;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 753
    iget-object v1, p0, Landroid/service/notification/NotificationListenerService$INotificationListenerWrapper;->this$0:Landroid/service/notification/NotificationListenerService;

    #@2
    invoke-static {v1}, Landroid/service/notification/NotificationListenerService;->-get2(Landroid/service/notification/NotificationListenerService;)Landroid/service/notification/NotificationListenerService$INotificationListenerWrapper;

    #@5
    move-result-object v2

    #@6
    monitor-enter v2

    #@7
    .line 754
    :try_start_0
    iget-object v1, p0, Landroid/service/notification/NotificationListenerService$INotificationListenerWrapper;->this$0:Landroid/service/notification/NotificationListenerService;

    #@9
    invoke-static {v1, p1}, Landroid/service/notification/NotificationListenerService;->-wrap1(Landroid/service/notification/NotificationListenerService;Landroid/service/notification/NotificationRankingUpdate;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@c
    .line 756
    :try_start_1
    iget-object v1, p0, Landroid/service/notification/NotificationListenerService$INotificationListenerWrapper;->this$0:Landroid/service/notification/NotificationListenerService;

    #@e
    iget-object v3, p0, Landroid/service/notification/NotificationListenerService$INotificationListenerWrapper;->this$0:Landroid/service/notification/NotificationListenerService;

    #@10
    invoke-static {v3}, Landroid/service/notification/NotificationListenerService;->-get1(Landroid/service/notification/NotificationListenerService;)Landroid/service/notification/NotificationListenerService$RankingMap;

    #@13
    move-result-object v3

    #@14
    invoke-virtual {v1, v3}, Landroid/service/notification/NotificationListenerService;->onNotificationRankingUpdate(Landroid/service/notification/NotificationListenerService$RankingMap;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@17
    :goto_0
    monitor-exit v2

    #@18
    .line 751
    return-void

    #@19
    .line 757
    :catch_0
    move-exception v0

    #@1a
    .line 758
    .local v0, "t":Ljava/lang/Throwable;
    :try_start_2
    iget-object v1, p0, Landroid/service/notification/NotificationListenerService$INotificationListenerWrapper;->this$0:Landroid/service/notification/NotificationListenerService;

    #@1c
    invoke-static {v1}, Landroid/service/notification/NotificationListenerService;->-get0(Landroid/service/notification/NotificationListenerService;)Ljava/lang/String;

    #@1f
    move-result-object v1

    #@20
    const-string/jumbo v3, "Error running onNotificationRankingUpdate"

    #@23
    invoke-static {v1, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@26
    goto :goto_0

    #@27
    .line 753
    .end local v0    # "t":Ljava/lang/Throwable;
    :catchall_0
    move-exception v1

    #@28
    monitor-exit v2

    #@29
    throw v1
.end method

.method public onNotificationRemoved(Landroid/service/notification/IStatusBarNotificationHolder;Landroid/service/notification/NotificationRankingUpdate;)V
    .locals 6
    .param p1, "sbnHolder"    # Landroid/service/notification/IStatusBarNotificationHolder;
    .param p2, "update"    # Landroid/service/notification/NotificationRankingUpdate;

    #@0
    .prologue
    .line 722
    :try_start_0
    invoke-interface {p1}, Landroid/service/notification/IStatusBarNotificationHolder;->get()Landroid/service/notification/StatusBarNotification;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@3
    move-result-object v1

    #@4
    .line 728
    .local v1, "sbn":Landroid/service/notification/StatusBarNotification;
    iget-object v3, p0, Landroid/service/notification/NotificationListenerService$INotificationListenerWrapper;->this$0:Landroid/service/notification/NotificationListenerService;

    #@6
    invoke-static {v3}, Landroid/service/notification/NotificationListenerService;->-get2(Landroid/service/notification/NotificationListenerService;)Landroid/service/notification/NotificationListenerService$INotificationListenerWrapper;

    #@9
    move-result-object v4

    #@a
    monitor-enter v4

    #@b
    .line 729
    :try_start_1
    iget-object v3, p0, Landroid/service/notification/NotificationListenerService$INotificationListenerWrapper;->this$0:Landroid/service/notification/NotificationListenerService;

    #@d
    invoke-static {v3, p2}, Landroid/service/notification/NotificationListenerService;->-wrap1(Landroid/service/notification/NotificationListenerService;Landroid/service/notification/NotificationRankingUpdate;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@10
    .line 731
    :try_start_2
    iget-object v3, p0, Landroid/service/notification/NotificationListenerService$INotificationListenerWrapper;->this$0:Landroid/service/notification/NotificationListenerService;

    #@12
    iget-object v5, p0, Landroid/service/notification/NotificationListenerService$INotificationListenerWrapper;->this$0:Landroid/service/notification/NotificationListenerService;

    #@14
    invoke-static {v5}, Landroid/service/notification/NotificationListenerService;->-get1(Landroid/service/notification/NotificationListenerService;)Landroid/service/notification/NotificationListenerService$RankingMap;

    #@17
    move-result-object v5

    #@18
    invoke-virtual {v3, v1, v5}, Landroid/service/notification/NotificationListenerService;->onNotificationRemoved(Landroid/service/notification/StatusBarNotification;Landroid/service/notification/NotificationListenerService$RankingMap;)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@1b
    :goto_0
    monitor-exit v4

    #@1c
    .line 719
    return-void

    #@1d
    .line 723
    .end local v1    # "sbn":Landroid/service/notification/StatusBarNotification;
    :catch_0
    move-exception v0

    #@1e
    .line 724
    .local v0, "e":Landroid/os/RemoteException;
    iget-object v3, p0, Landroid/service/notification/NotificationListenerService$INotificationListenerWrapper;->this$0:Landroid/service/notification/NotificationListenerService;

    #@20
    invoke-static {v3}, Landroid/service/notification/NotificationListenerService;->-get0(Landroid/service/notification/NotificationListenerService;)Ljava/lang/String;

    #@23
    move-result-object v3

    #@24
    const-string/jumbo v4, "onNotificationRemoved: Error receiving StatusBarNotification"

    #@27
    invoke-static {v3, v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@2a
    .line 725
    return-void

    #@2b
    .line 732
    .end local v0    # "e":Landroid/os/RemoteException;
    .restart local v1    # "sbn":Landroid/service/notification/StatusBarNotification;
    :catch_1
    move-exception v2

    #@2c
    .line 733
    .local v2, "t":Ljava/lang/Throwable;
    :try_start_3
    iget-object v3, p0, Landroid/service/notification/NotificationListenerService$INotificationListenerWrapper;->this$0:Landroid/service/notification/NotificationListenerService;

    #@2e
    invoke-static {v3}, Landroid/service/notification/NotificationListenerService;->-get0(Landroid/service/notification/NotificationListenerService;)Ljava/lang/String;

    #@31
    move-result-object v3

    #@32
    const-string/jumbo v5, "Error running onNotificationRemoved"

    #@35
    invoke-static {v3, v5, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@38
    goto :goto_0

    #@39
    .line 728
    .end local v2    # "t":Ljava/lang/Throwable;
    :catchall_0
    move-exception v3

    #@3a
    monitor-exit v4

    #@3b
    throw v3
.end method
