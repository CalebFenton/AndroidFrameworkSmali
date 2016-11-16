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
    .line 2876
    iput-object p1, p0, Lcom/android/server/ConnectivityService$InternalHandler;->this$0:Lcom/android/server/ConnectivityService;

    #@2
    .line 2877
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    #@5
    .line 2876
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
    .line 2882
    iget v5, p1, Landroid/os/Message;->what:I

    #@4
    sparse-switch v5, :sswitch_data_0

    #@7
    .line 2881
    :cond_0
    :goto_0
    return-void

    #@8
    .line 2885
    :sswitch_0
    const/4 v0, 0x0

    #@9
    .line 2886
    .local v0, "causedBy":Ljava/lang/String;
    iget-object v6, p0, Lcom/android/server/ConnectivityService$InternalHandler;->this$0:Lcom/android/server/ConnectivityService;

    #@b
    monitor-enter v6

    #@c
    .line 2887
    :try_start_0
    iget v5, p1, Landroid/os/Message;->arg1:I

    #@e
    iget-object v7, p0, Lcom/android/server/ConnectivityService$InternalHandler;->this$0:Lcom/android/server/ConnectivityService;

    #@10
    invoke-static {v7}, Lcom/android/server/ConnectivityService;->-get5(Lcom/android/server/ConnectivityService;)I

    #@13
    move-result v7

    #@14
    if-ne v5, v7, :cond_1

    #@16
    .line 2888
    iget-object v5, p0, Lcom/android/server/ConnectivityService$InternalHandler;->this$0:Lcom/android/server/ConnectivityService;

    #@18
    invoke-static {v5}, Lcom/android/server/ConnectivityService;->-get3(Lcom/android/server/ConnectivityService;)Landroid/os/PowerManager$WakeLock;

    #@1b
    move-result-object v5

    #@1c
    invoke-virtual {v5}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    #@1f
    move-result v5

    #@20
    .line 2887
    if-eqz v5, :cond_1

    #@22
    .line 2889
    iget-object v5, p0, Lcom/android/server/ConnectivityService$InternalHandler;->this$0:Lcom/android/server/ConnectivityService;

    #@24
    invoke-static {v5}, Lcom/android/server/ConnectivityService;->-get3(Lcom/android/server/ConnectivityService;)Landroid/os/PowerManager$WakeLock;

    #@27
    move-result-object v5

    #@28
    invoke-virtual {v5}, Landroid/os/PowerManager$WakeLock;->release()V

    #@2b
    .line 2890
    iget-object v5, p0, Lcom/android/server/ConnectivityService$InternalHandler;->this$0:Lcom/android/server/ConnectivityService;

    #@2d
    invoke-static {v5}, Lcom/android/server/ConnectivityService;->-get4(Lcom/android/server/ConnectivityService;)Ljava/lang/String;
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
    .line 2886
    .restart local v0    # "causedBy":Ljava/lang/String;
    :catchall_0
    move-exception v5

    #@34
    monitor-exit v6

    #@35
    throw v5

    #@36
    .line 2907
    .end local v0    # "causedBy":Ljava/lang/String;
    :sswitch_1
    iget-object v5, p0, Lcom/android/server/ConnectivityService$InternalHandler;->this$0:Lcom/android/server/ConnectivityService;

    #@38
    invoke-static {v5}, Lcom/android/server/ConnectivityService;->-wrap7(Lcom/android/server/ConnectivityService;)V

    #@3b
    goto :goto_0

    #@3c
    .line 2911
    :sswitch_2
    iget-object v6, p0, Lcom/android/server/ConnectivityService$InternalHandler;->this$0:Lcom/android/server/ConnectivityService;

    #@3e
    iget-object v5, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@40
    check-cast v5, Landroid/net/ProxyInfo;

    #@42
    invoke-static {v6, v5}, Lcom/android/server/ConnectivityService;->-wrap4(Lcom/android/server/ConnectivityService;Landroid/net/ProxyInfo;)V

    #@45
    goto :goto_0

    #@46
    .line 2915
    :sswitch_3
    iget-object v6, p0, Lcom/android/server/ConnectivityService$InternalHandler;->this$0:Lcom/android/server/ConnectivityService;

    #@48
    iget-object v5, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@4a
    check-cast v5, Lcom/android/server/ConnectivityService$NetworkFactoryInfo;

    #@4c
    invoke-static {v6, v5}, Lcom/android/server/ConnectivityService;->-wrap13(Lcom/android/server/ConnectivityService;Lcom/android/server/ConnectivityService$NetworkFactoryInfo;)V

    #@4f
    goto :goto_0

    #@50
    .line 2919
    :sswitch_4
    iget-object v6, p0, Lcom/android/server/ConnectivityService$InternalHandler;->this$0:Lcom/android/server/ConnectivityService;

    #@52
    iget-object v5, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@54
    check-cast v5, Landroid/os/Messenger;

    #@56
    invoke-static {v6, v5}, Lcom/android/server/ConnectivityService;->-wrap22(Lcom/android/server/ConnectivityService;Landroid/os/Messenger;)V

    #@59
    goto :goto_0

    #@5a
    .line 2923
    :sswitch_5
    iget-object v6, p0, Lcom/android/server/ConnectivityService$InternalHandler;->this$0:Lcom/android/server/ConnectivityService;

    #@5c
    iget-object v5, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@5e
    check-cast v5, Lcom/android/server/connectivity/NetworkAgentInfo;

    #@60
    invoke-static {v6, v5}, Lcom/android/server/ConnectivityService;->-wrap12(Lcom/android/server/ConnectivityService;Lcom/android/server/connectivity/NetworkAgentInfo;)V

    #@63
    goto :goto_0

    #@64
    .line 2928
    :sswitch_6
    iget-object v6, p0, Lcom/android/server/ConnectivityService$InternalHandler;->this$0:Lcom/android/server/ConnectivityService;

    #@66
    iget-object v5, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@68
    check-cast v5, Lcom/android/server/ConnectivityService$NetworkRequestInfo;

    #@6a
    invoke-static {v6, v5}, Lcom/android/server/ConnectivityService;->-wrap15(Lcom/android/server/ConnectivityService;Lcom/android/server/ConnectivityService$NetworkRequestInfo;)V

    #@6d
    goto :goto_0

    #@6e
    .line 2933
    :sswitch_7
    iget-object v5, p0, Lcom/android/server/ConnectivityService$InternalHandler;->this$0:Lcom/android/server/ConnectivityService;

    #@70
    invoke-static {v5, p1}, Lcom/android/server/ConnectivityService;->-wrap14(Lcom/android/server/ConnectivityService;Landroid/os/Message;)V

    #@73
    goto :goto_0

    #@74
    .line 2937
    :sswitch_8
    iget-object v6, p0, Lcom/android/server/ConnectivityService$InternalHandler;->this$0:Lcom/android/server/ConnectivityService;

    #@76
    iget-object v5, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@78
    check-cast v5, Landroid/app/PendingIntent;

    #@7a
    iget v7, p1, Landroid/os/Message;->arg1:I

    #@7c
    invoke-static {v6, v5, v7}, Lcom/android/server/ConnectivityService;->-wrap16(Lcom/android/server/ConnectivityService;Landroid/app/PendingIntent;I)V

    #@7f
    goto :goto_0

    #@80
    .line 2941
    :sswitch_9
    iget-object v6, p0, Lcom/android/server/ConnectivityService$InternalHandler;->this$0:Lcom/android/server/ConnectivityService;

    #@82
    iget-object v5, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@84
    check-cast v5, Landroid/net/NetworkRequest;

    #@86
    iget v7, p1, Landroid/os/Message;->arg1:I

    #@88
    invoke-static {v6, v5, v7}, Lcom/android/server/ConnectivityService;->-wrap17(Lcom/android/server/ConnectivityService;Landroid/net/NetworkRequest;I)V

    #@8b
    goto/16 :goto_0

    #@8d
    .line 2945
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
    invoke-static {v9, v5, v6, v7}, Lcom/android/server/ConnectivityService;->-wrap20(Lcom/android/server/ConnectivityService;Landroid/net/Network;ZZ)V

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
    .line 2949
    :sswitch_b
    iget-object v6, p0, Lcom/android/server/ConnectivityService$InternalHandler;->this$0:Lcom/android/server/ConnectivityService;

    #@a7
    iget-object v5, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@a9
    check-cast v5, Landroid/net/Network;

    #@ab
    invoke-static {v6, v5}, Lcom/android/server/ConnectivityService;->-wrap21(Lcom/android/server/ConnectivityService;Landroid/net/Network;)V

    #@ae
    goto/16 :goto_0

    #@b0
    .line 2953
    :sswitch_c
    iget-object v6, p0, Lcom/android/server/ConnectivityService$InternalHandler;->this$0:Lcom/android/server/ConnectivityService;

    #@b2
    iget-object v5, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@b4
    check-cast v5, Landroid/net/Network;

    #@b6
    invoke-static {v6, v5}, Lcom/android/server/ConnectivityService;->-wrap11(Lcom/android/server/ConnectivityService;Landroid/net/Network;)V

    #@b9
    goto/16 :goto_0

    #@bb
    .line 2957
    :sswitch_d
    iget-object v5, p0, Lcom/android/server/ConnectivityService$InternalHandler;->this$0:Lcom/android/server/ConnectivityService;

    #@bd
    invoke-static {v5}, Lcom/android/server/ConnectivityService;->-wrap9(Lcom/android/server/ConnectivityService;)V

    #@c0
    goto/16 :goto_0

    #@c2
    .line 2961
    :sswitch_e
    iget-object v6, p0, Lcom/android/server/ConnectivityService$InternalHandler;->this$0:Lcom/android/server/ConnectivityService;

    #@c4
    iget-object v5, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@c6
    check-cast v5, Landroid/net/NetworkRequest;

    #@c8
    iget v7, p1, Landroid/os/Message;->arg1:I

    #@ca
    invoke-static {v6, v5, v7}, Lcom/android/server/ConnectivityService;->-wrap18(Lcom/android/server/ConnectivityService;Landroid/net/NetworkRequest;I)V

    #@cd
    goto/16 :goto_0

    #@cf
    .line 2964
    :sswitch_f
    iget-object v6, p0, Lcom/android/server/ConnectivityService$InternalHandler;->this$0:Lcom/android/server/ConnectivityService;

    #@d1
    iget-object v5, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@d3
    check-cast v5, Landroid/net/NetworkRequest;

    #@d5
    iget v7, p1, Landroid/os/Message;->arg1:I

    #@d7
    invoke-static {v6, v5, v7}, Lcom/android/server/ConnectivityService;->-wrap19(Lcom/android/server/ConnectivityService;Landroid/net/NetworkRequest;I)V

    #@da
    goto/16 :goto_0

    #@dc
    .line 2968
    :sswitch_10
    iget-object v5, p0, Lcom/android/server/ConnectivityService$InternalHandler;->this$0:Lcom/android/server/ConnectivityService;

    #@de
    invoke-static {v5}, Lcom/android/server/ConnectivityService;->-get1(Lcom/android/server/ConnectivityService;)Lcom/android/server/connectivity/KeepaliveTracker;

    #@e1
    move-result-object v5

    #@e2
    invoke-virtual {v5, p1}, Lcom/android/server/connectivity/KeepaliveTracker;->handleStartKeepalive(Landroid/os/Message;)V

    #@e5
    goto/16 :goto_0

    #@e7
    .line 2973
    :sswitch_11
    iget-object v6, p0, Lcom/android/server/ConnectivityService$InternalHandler;->this$0:Lcom/android/server/ConnectivityService;

    #@e9
    iget-object v5, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@eb
    check-cast v5, Landroid/net/Network;

    #@ed
    invoke-static {v6, v5}, Lcom/android/server/ConnectivityService;->-wrap2(Lcom/android/server/ConnectivityService;Landroid/net/Network;)Lcom/android/server/connectivity/NetworkAgentInfo;

    #@f0
    move-result-object v1

    #@f1
    .line 2974
    .local v1, "nai":Lcom/android/server/connectivity/NetworkAgentInfo;
    iget v4, p1, Landroid/os/Message;->arg1:I

    #@f3
    .line 2975
    .local v4, "slot":I
    iget v3, p1, Landroid/os/Message;->arg2:I

    #@f5
    .line 2976
    .local v3, "reason":I
    iget-object v5, p0, Lcom/android/server/ConnectivityService$InternalHandler;->this$0:Lcom/android/server/ConnectivityService;

    #@f7
    invoke-static {v5}, Lcom/android/server/ConnectivityService;->-get1(Lcom/android/server/ConnectivityService;)Lcom/android/server/connectivity/KeepaliveTracker;

    #@fa
    move-result-object v5

    #@fb
    invoke-virtual {v5, v1, v4, v3}, Lcom/android/server/connectivity/KeepaliveTracker;->handleStopKeepalive(Lcom/android/server/connectivity/NetworkAgentInfo;II)V

    #@fe
    goto/16 :goto_0

    #@100
    .line 2980
    .end local v1    # "nai":Lcom/android/server/connectivity/NetworkAgentInfo;
    .end local v3    # "reason":I
    .end local v4    # "slot":I
    :sswitch_12
    iget-object v5, p0, Lcom/android/server/ConnectivityService$InternalHandler;->this$0:Lcom/android/server/ConnectivityService;

    #@102
    invoke-static {v5}, Lcom/android/server/ConnectivityService;->-get7(Lcom/android/server/ConnectivityService;)Ljava/util/HashMap;

    #@105
    move-result-object v5

    #@106
    invoke-virtual {v5}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    #@109
    move-result-object v5

    #@10a
    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@10d
    move-result-object v2

    #@10e
    .local v2, "nai$iterator":Ljava/util/Iterator;
    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    #@111
    move-result v5

    #@112
    if-eqz v5, :cond_0

    #@114
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@117
    move-result-object v1

    #@118
    check-cast v1, Lcom/android/server/connectivity/NetworkAgentInfo;

    #@11a
    .line 2981
    .restart local v1    # "nai":Lcom/android/server/connectivity/NetworkAgentInfo;
    iget-object v5, v1, Lcom/android/server/connectivity/NetworkAgentInfo;->networkMonitor:Lcom/android/server/connectivity/NetworkMonitor;

    #@11c
    iput-boolean v7, v5, Lcom/android/server/connectivity/NetworkMonitor;->systemReady:Z

    #@11e
    goto :goto_3

    #@11f
    .line 2882
    nop

    #@120
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
        0x19 -> :sswitch_12
        0x1a -> :sswitch_7
        0x1b -> :sswitch_8
        0x1c -> :sswitch_a
        0x1d -> :sswitch_c
        0x1e -> :sswitch_d
        0x1f -> :sswitch_7
        0x20 -> :sswitch_e
        0x21 -> :sswitch_f
        0x23 -> :sswitch_b
        0x8100b -> :sswitch_10
        0x8100c -> :sswitch_11
    .end sparse-switch
.end method
