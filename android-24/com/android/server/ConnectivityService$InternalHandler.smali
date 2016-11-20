.class Lcom/android/server/ConnectivityService$InternalHandler;
.super Landroid/os/Handler;
.source "ConnectivityService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/ConnectivityService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "InternalHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/ConnectivityService;


# direct methods
.method public constructor <init>(Lcom/android/server/ConnectivityService;Landroid/os/Looper;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/ConnectivityService;
    .param p2, "looper"    # Landroid/os/Looper;

    #@0
    .prologue
    .line 2570
    iput-object p1, p0, Lcom/android/server/ConnectivityService$InternalHandler;->this$0:Lcom/android/server/ConnectivityService;

    #@2
    .line 2571
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    #@5
    .line 2570
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 11
    .param p1, "msg"    # Landroid/os/Message;

    #@0
    .prologue
    const/4 v7, 0x1

    #@1
    const/4 v8, 0x0

    #@2
    .line 2576
    iget v5, p1, Landroid/os/Message;->what:I

    #@4
    sparse-switch v5, :sswitch_data_0

    #@7
    .line 2575
    :cond_0
    :goto_0
    return-void

    #@8
    .line 2579
    :sswitch_0
    const/4 v0, 0x0

    #@9
    .line 2580
    .local v0, "causedBy":Ljava/lang/String;
    iget-object v6, p0, Lcom/android/server/ConnectivityService$InternalHandler;->this$0:Lcom/android/server/ConnectivityService;

    #@b
    monitor-enter v6

    #@c
    .line 2581
    :try_start_0
    iget v5, p1, Landroid/os/Message;->arg1:I

    #@e
    iget-object v7, p0, Lcom/android/server/ConnectivityService$InternalHandler;->this$0:Lcom/android/server/ConnectivityService;

    #@10
    invoke-static {v7}, Lcom/android/server/ConnectivityService;->-get4(Lcom/android/server/ConnectivityService;)I

    #@13
    move-result v7

    #@14
    if-ne v5, v7, :cond_1

    #@16
    .line 2582
    iget-object v5, p0, Lcom/android/server/ConnectivityService$InternalHandler;->this$0:Lcom/android/server/ConnectivityService;

    #@18
    invoke-static {v5}, Lcom/android/server/ConnectivityService;->-get2(Lcom/android/server/ConnectivityService;)Landroid/os/PowerManager$WakeLock;

    #@1b
    move-result-object v5

    #@1c
    invoke-virtual {v5}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    #@1f
    move-result v5

    #@20
    .line 2581
    if-eqz v5, :cond_1

    #@22
    .line 2583
    iget-object v5, p0, Lcom/android/server/ConnectivityService$InternalHandler;->this$0:Lcom/android/server/ConnectivityService;

    #@24
    invoke-static {v5}, Lcom/android/server/ConnectivityService;->-get2(Lcom/android/server/ConnectivityService;)Landroid/os/PowerManager$WakeLock;

    #@27
    move-result-object v5

    #@28
    invoke-virtual {v5}, Landroid/os/PowerManager$WakeLock;->release()V

    #@2b
    .line 2584
    iget-object v5, p0, Lcom/android/server/ConnectivityService$InternalHandler;->this$0:Lcom/android/server/ConnectivityService;

    #@2d
    invoke-static {v5}, Lcom/android/server/ConnectivityService;->-get3(Lcom/android/server/ConnectivityService;)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@30
    move-result-object v0

    #@31
    .end local v0    # "causedBy":Ljava/lang/String;
    :cond_1
    monitor-exit v6

    #@32
    goto :goto_0

    #@33
    .line 2580
    .restart local v0    # "causedBy":Ljava/lang/String;
    :catchall_0
    move-exception v5

    #@34
    monitor-exit v6

    #@35
    throw v5

    #@36
    .line 2601
    .end local v0    # "causedBy":Ljava/lang/String;
    :sswitch_1
    iget-object v5, p0, Lcom/android/server/ConnectivityService$InternalHandler;->this$0:Lcom/android/server/ConnectivityService;

    #@38
    invoke-static {v5}, Lcom/android/server/ConnectivityService;->-wrap6(Lcom/android/server/ConnectivityService;)V

    #@3b
    goto :goto_0

    #@3c
    .line 2605
    :sswitch_2
    iget-object v6, p0, Lcom/android/server/ConnectivityService$InternalHandler;->this$0:Lcom/android/server/ConnectivityService;

    #@3e
    iget-object v5, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@40
    check-cast v5, Landroid/net/ProxyInfo;

    #@42
    invoke-static {v6, v5}, Lcom/android/server/ConnectivityService;->-wrap3(Lcom/android/server/ConnectivityService;Landroid/net/ProxyInfo;)V

    #@45
    goto :goto_0

    #@46
    .line 2609
    :sswitch_3
    iget-object v6, p0, Lcom/android/server/ConnectivityService$InternalHandler;->this$0:Lcom/android/server/ConnectivityService;

    #@48
    iget-object v5, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@4a
    check-cast v5, Lcom/android/server/ConnectivityService$NetworkFactoryInfo;

    #@4c
    invoke-static {v6, v5}, Lcom/android/server/ConnectivityService;->-wrap11(Lcom/android/server/ConnectivityService;Lcom/android/server/ConnectivityService$NetworkFactoryInfo;)V

    #@4f
    goto :goto_0

    #@50
    .line 2613
    :sswitch_4
    iget-object v6, p0, Lcom/android/server/ConnectivityService$InternalHandler;->this$0:Lcom/android/server/ConnectivityService;

    #@52
    iget-object v5, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@54
    check-cast v5, Landroid/os/Messenger;

    #@56
    invoke-static {v6, v5}, Lcom/android/server/ConnectivityService;->-wrap17(Lcom/android/server/ConnectivityService;Landroid/os/Messenger;)V

    #@59
    goto :goto_0

    #@5a
    .line 2617
    :sswitch_5
    iget-object v6, p0, Lcom/android/server/ConnectivityService$InternalHandler;->this$0:Lcom/android/server/ConnectivityService;

    #@5c
    iget-object v5, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@5e
    check-cast v5, Lcom/android/server/connectivity/NetworkAgentInfo;

    #@60
    invoke-static {v6, v5}, Lcom/android/server/ConnectivityService;->-wrap10(Lcom/android/server/ConnectivityService;Lcom/android/server/connectivity/NetworkAgentInfo;)V

    #@63
    goto :goto_0

    #@64
    .line 2622
    :sswitch_6
    iget-object v6, p0, Lcom/android/server/ConnectivityService$InternalHandler;->this$0:Lcom/android/server/ConnectivityService;

    #@66
    iget-object v5, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@68
    check-cast v5, Lcom/android/server/ConnectivityService$NetworkRequestInfo;

    #@6a
    invoke-static {v6, v5}, Lcom/android/server/ConnectivityService;->-wrap13(Lcom/android/server/ConnectivityService;Lcom/android/server/ConnectivityService$NetworkRequestInfo;)V

    #@6d
    goto :goto_0

    #@6e
    .line 2627
    :sswitch_7
    iget-object v5, p0, Lcom/android/server/ConnectivityService$InternalHandler;->this$0:Lcom/android/server/ConnectivityService;

    #@70
    invoke-static {v5, p1}, Lcom/android/server/ConnectivityService;->-wrap12(Lcom/android/server/ConnectivityService;Landroid/os/Message;)V

    #@73
    goto :goto_0

    #@74
    .line 2631
    :sswitch_8
    iget-object v6, p0, Lcom/android/server/ConnectivityService$InternalHandler;->this$0:Lcom/android/server/ConnectivityService;

    #@76
    iget-object v5, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@78
    check-cast v5, Landroid/app/PendingIntent;

    #@7a
    iget v7, p1, Landroid/os/Message;->arg1:I

    #@7c
    invoke-static {v6, v5, v7}, Lcom/android/server/ConnectivityService;->-wrap14(Lcom/android/server/ConnectivityService;Landroid/app/PendingIntent;I)V

    #@7f
    goto :goto_0

    #@80
    .line 2635
    :sswitch_9
    iget-object v6, p0, Lcom/android/server/ConnectivityService$InternalHandler;->this$0:Lcom/android/server/ConnectivityService;

    #@82
    iget-object v5, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@84
    check-cast v5, Landroid/net/NetworkRequest;

    #@86
    iget v7, p1, Landroid/os/Message;->arg1:I

    #@88
    invoke-static {v6, v5, v7}, Lcom/android/server/ConnectivityService;->-wrap15(Lcom/android/server/ConnectivityService;Landroid/net/NetworkRequest;I)V

    #@8b
    goto/16 :goto_0

    #@8d
    .line 2639
    :sswitch_a
    iget-object v9, p0, Lcom/android/server/ConnectivityService$InternalHandler;->this$0:Lcom/android/server/ConnectivityService;

    #@8f
    iget-object v5, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@91
    check-cast v5, Landroid/net/Network;

    #@93
    iget v6, p1, Landroid/os/Message;->arg1:I

    #@95
    if-eqz v6, :cond_2

    #@97
    move v6, v7

    #@98
    :goto_1
    iget v10, p1, Landroid/os/Message;->arg2:I

    #@9a
    if-eqz v10, :cond_3

    #@9c
    :goto_2
    invoke-static {v9, v5, v6, v7}, Lcom/android/server/ConnectivityService;->-wrap16(Lcom/android/server/ConnectivityService;Landroid/net/Network;ZZ)V

    #@9f
    goto/16 :goto_0

    #@a1
    :cond_2
    move v6, v8

    #@a2
    goto :goto_1

    #@a3
    :cond_3
    move v7, v8

    #@a4
    goto :goto_2

    #@a5
    .line 2643
    :sswitch_b
    iget-object v6, p0, Lcom/android/server/ConnectivityService$InternalHandler;->this$0:Lcom/android/server/ConnectivityService;

    #@a7
    iget-object v5, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@a9
    check-cast v5, Landroid/net/Network;

    #@ab
    invoke-static {v6, v5}, Lcom/android/server/ConnectivityService;->-wrap9(Lcom/android/server/ConnectivityService;Landroid/net/Network;)V

    #@ae
    goto/16 :goto_0

    #@b0
    .line 2647
    :sswitch_c
    iget-object v5, p0, Lcom/android/server/ConnectivityService$InternalHandler;->this$0:Lcom/android/server/ConnectivityService;

    #@b2
    invoke-static {v5}, Lcom/android/server/ConnectivityService;->-wrap8(Lcom/android/server/ConnectivityService;)V

    #@b5
    goto/16 :goto_0

    #@b7
    .line 2652
    :sswitch_d
    iget-object v5, p0, Lcom/android/server/ConnectivityService$InternalHandler;->this$0:Lcom/android/server/ConnectivityService;

    #@b9
    invoke-static {v5}, Lcom/android/server/ConnectivityService;->-get0(Lcom/android/server/ConnectivityService;)Lcom/android/server/connectivity/KeepaliveTracker;

    #@bc
    move-result-object v5

    #@bd
    invoke-virtual {v5, p1}, Lcom/android/server/connectivity/KeepaliveTracker;->handleStartKeepalive(Landroid/os/Message;)V

    #@c0
    goto/16 :goto_0

    #@c2
    .line 2657
    :sswitch_e
    iget-object v6, p0, Lcom/android/server/ConnectivityService$InternalHandler;->this$0:Lcom/android/server/ConnectivityService;

    #@c4
    iget-object v5, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@c6
    check-cast v5, Landroid/net/Network;

    #@c8
    invoke-static {v6, v5}, Lcom/android/server/ConnectivityService;->-wrap2(Lcom/android/server/ConnectivityService;Landroid/net/Network;)Lcom/android/server/connectivity/NetworkAgentInfo;

    #@cb
    move-result-object v1

    #@cc
    .line 2658
    .local v1, "nai":Lcom/android/server/connectivity/NetworkAgentInfo;
    iget v4, p1, Landroid/os/Message;->arg1:I

    #@ce
    .line 2659
    .local v4, "slot":I
    iget v3, p1, Landroid/os/Message;->arg2:I

    #@d0
    .line 2660
    .local v3, "reason":I
    iget-object v5, p0, Lcom/android/server/ConnectivityService$InternalHandler;->this$0:Lcom/android/server/ConnectivityService;

    #@d2
    invoke-static {v5}, Lcom/android/server/ConnectivityService;->-get0(Lcom/android/server/ConnectivityService;)Lcom/android/server/connectivity/KeepaliveTracker;

    #@d5
    move-result-object v5

    #@d6
    invoke-virtual {v5, v1, v4, v3}, Lcom/android/server/connectivity/KeepaliveTracker;->handleStopKeepalive(Lcom/android/server/connectivity/NetworkAgentInfo;II)V

    #@d9
    goto/16 :goto_0

    #@db
    .line 2664
    .end local v1    # "nai":Lcom/android/server/connectivity/NetworkAgentInfo;
    .end local v3    # "reason":I
    .end local v4    # "slot":I
    :sswitch_f
    iget-object v5, p0, Lcom/android/server/ConnectivityService$InternalHandler;->this$0:Lcom/android/server/ConnectivityService;

    #@dd
    invoke-static {v5}, Lcom/android/server/ConnectivityService;->-get6(Lcom/android/server/ConnectivityService;)Ljava/util/HashMap;

    #@e0
    move-result-object v5

    #@e1
    invoke-virtual {v5}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    #@e4
    move-result-object v5

    #@e5
    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@e8
    move-result-object v2

    #@e9
    .local v2, "nai$iterator":Ljava/util/Iterator;
    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    #@ec
    move-result v5

    #@ed
    if-eqz v5, :cond_0

    #@ef
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@f2
    move-result-object v1

    #@f3
    check-cast v1, Lcom/android/server/connectivity/NetworkAgentInfo;

    #@f5
    .line 2665
    .restart local v1    # "nai":Lcom/android/server/connectivity/NetworkAgentInfo;
    iget-object v5, v1, Lcom/android/server/connectivity/NetworkAgentInfo;->networkMonitor:Lcom/android/server/connectivity/NetworkMonitor;

    #@f7
    iput-boolean v7, v5, Lcom/android/server/connectivity/NetworkMonitor;->systemReady:Z

    #@f9
    goto :goto_3

    #@fa
    .line 2576
    :sswitch_data_0
    .sparse-switch
        0x8 -> :sswitch_0
        0x9 -> :sswitch_1
        0x10 -> :sswitch_2
        0x11 -> :sswitch_3
        0x12 -> :sswitch_5
        0x13 -> :sswitch_6
        0x15 -> :sswitch_6
        0x16 -> :sswitch_9
        0x17 -> :sswitch_4
        0x18 -> :sswitch_0
        0x19 -> :sswitch_f
        0x1a -> :sswitch_7
        0x1b -> :sswitch_8
        0x1c -> :sswitch_a
        0x1d -> :sswitch_b
        0x1e -> :sswitch_c
        0x1f -> :sswitch_7
        0x8100b -> :sswitch_d
        0x8100c -> :sswitch_e
    .end sparse-switch
.end method
