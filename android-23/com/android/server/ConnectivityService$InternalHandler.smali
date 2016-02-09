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
    .line 2426
    iput-object p1, p0, Lcom/android/server/ConnectivityService$InternalHandler;->this$0:Lcom/android/server/ConnectivityService;

    #@2
    .line 2427
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    #@5
    .line 2426
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 10
    .param p1, "msg"    # Landroid/os/Message;

    #@0
    .prologue
    const/4 v6, 0x1

    #@1
    const/4 v7, 0x0

    #@2
    .line 2432
    iget v4, p1, Landroid/os/Message;->what:I

    #@4
    packed-switch v4, :pswitch_data_0

    #@7
    .line 2431
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    #@8
    .line 2435
    :pswitch_1
    const/4 v0, 0x0

    #@9
    .line 2436
    .local v0, "causedBy":Ljava/lang/String;
    iget-object v5, p0, Lcom/android/server/ConnectivityService$InternalHandler;->this$0:Lcom/android/server/ConnectivityService;

    #@b
    monitor-enter v5

    #@c
    .line 2437
    :try_start_0
    iget v4, p1, Landroid/os/Message;->arg1:I

    #@e
    iget-object v6, p0, Lcom/android/server/ConnectivityService$InternalHandler;->this$0:Lcom/android/server/ConnectivityService;

    #@10
    invoke-static {v6}, Lcom/android/server/ConnectivityService;->-get4(Lcom/android/server/ConnectivityService;)I

    #@13
    move-result v6

    #@14
    if-ne v4, v6, :cond_1

    #@16
    .line 2438
    iget-object v4, p0, Lcom/android/server/ConnectivityService$InternalHandler;->this$0:Lcom/android/server/ConnectivityService;

    #@18
    invoke-static {v4}, Lcom/android/server/ConnectivityService;->-get2(Lcom/android/server/ConnectivityService;)Landroid/os/PowerManager$WakeLock;

    #@1b
    move-result-object v4

    #@1c
    invoke-virtual {v4}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    #@1f
    move-result v4

    #@20
    .line 2437
    if-eqz v4, :cond_1

    #@22
    .line 2439
    iget-object v4, p0, Lcom/android/server/ConnectivityService$InternalHandler;->this$0:Lcom/android/server/ConnectivityService;

    #@24
    invoke-static {v4}, Lcom/android/server/ConnectivityService;->-get2(Lcom/android/server/ConnectivityService;)Landroid/os/PowerManager$WakeLock;

    #@27
    move-result-object v4

    #@28
    invoke-virtual {v4}, Landroid/os/PowerManager$WakeLock;->release()V

    #@2b
    .line 2440
    iget-object v4, p0, Lcom/android/server/ConnectivityService$InternalHandler;->this$0:Lcom/android/server/ConnectivityService;

    #@2d
    invoke-static {v4}, Lcom/android/server/ConnectivityService;->-get3(Lcom/android/server/ConnectivityService;)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@30
    move-result-object v0

    #@31
    .local v0, "causedBy":Ljava/lang/String;
    monitor-exit v5

    #@32
    .line 2445
    iget v4, p1, Landroid/os/Message;->what:I

    #@34
    const/16 v5, 0x18

    #@36
    if-ne v4, v5, :cond_2

    #@38
    .line 2446
    const-string/jumbo v4, "Failed to find a new network - expiring NetTransition Wakelock"

    #@3b
    invoke-static {v4}, Lcom/android/server/ConnectivityService;->-wrap17(Ljava/lang/String;)V

    #@3e
    goto :goto_0

    #@3f
    .local v0, "causedBy":Ljava/lang/String;
    :cond_1
    monitor-exit v5

    #@40
    goto :goto_0

    #@41
    .line 2436
    :catchall_0
    move-exception v4

    #@42
    monitor-exit v5

    #@43
    throw v4

    #@44
    .line 2448
    .local v0, "causedBy":Ljava/lang/String;
    :cond_2
    new-instance v4, Ljava/lang/StringBuilder;

    #@46
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@49
    const-string/jumbo v5, "NetTransition Wakelock ("

    #@4c
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4f
    move-result-object v4

    #@50
    if-nez v0, :cond_3

    #@52
    const-string/jumbo v0, "unknown"

    #@55
    .end local v0    # "causedBy":Ljava/lang/String;
    :cond_3
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@58
    move-result-object v4

    #@59
    .line 2449
    const-string/jumbo v5, " cleared because we found a replacement network"

    #@5c
    .line 2448
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5f
    move-result-object v4

    #@60
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@63
    move-result-object v4

    #@64
    invoke-static {v4}, Lcom/android/server/ConnectivityService;->-wrap17(Ljava/lang/String;)V

    #@67
    goto :goto_0

    #@68
    .line 2454
    :pswitch_2
    iget-object v4, p0, Lcom/android/server/ConnectivityService$InternalHandler;->this$0:Lcom/android/server/ConnectivityService;

    #@6a
    invoke-static {v4}, Lcom/android/server/ConnectivityService;->-wrap5(Lcom/android/server/ConnectivityService;)V

    #@6d
    goto :goto_0

    #@6e
    .line 2458
    :pswitch_3
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@70
    check-cast v1, Landroid/content/Intent;

    #@72
    .line 2459
    .local v1, "intent":Landroid/content/Intent;
    iget-object v4, p0, Lcom/android/server/ConnectivityService$InternalHandler;->this$0:Lcom/android/server/ConnectivityService;

    #@74
    invoke-static {v4, v1}, Lcom/android/server/ConnectivityService;->-wrap23(Lcom/android/server/ConnectivityService;Landroid/content/Intent;)V

    #@77
    goto :goto_0

    #@78
    .line 2463
    .end local v1    # "intent":Landroid/content/Intent;
    :pswitch_4
    iget-object v5, p0, Lcom/android/server/ConnectivityService$InternalHandler;->this$0:Lcom/android/server/ConnectivityService;

    #@7a
    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@7c
    check-cast v4, Landroid/net/ProxyInfo;

    #@7e
    invoke-static {v5, v4}, Lcom/android/server/ConnectivityService;->-wrap2(Lcom/android/server/ConnectivityService;Landroid/net/ProxyInfo;)V

    #@81
    goto :goto_0

    #@82
    .line 2467
    :pswitch_5
    iget-object v5, p0, Lcom/android/server/ConnectivityService$InternalHandler;->this$0:Lcom/android/server/ConnectivityService;

    #@84
    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@86
    check-cast v4, Lcom/android/server/ConnectivityService$NetworkFactoryInfo;

    #@88
    invoke-static {v5, v4}, Lcom/android/server/ConnectivityService;->-wrap10(Lcom/android/server/ConnectivityService;Lcom/android/server/ConnectivityService$NetworkFactoryInfo;)V

    #@8b
    goto/16 :goto_0

    #@8d
    .line 2471
    :pswitch_6
    iget-object v5, p0, Lcom/android/server/ConnectivityService$InternalHandler;->this$0:Lcom/android/server/ConnectivityService;

    #@8f
    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@91
    check-cast v4, Landroid/os/Messenger;

    #@93
    invoke-static {v5, v4}, Lcom/android/server/ConnectivityService;->-wrap16(Lcom/android/server/ConnectivityService;Landroid/os/Messenger;)V

    #@96
    goto/16 :goto_0

    #@98
    .line 2475
    :pswitch_7
    iget-object v5, p0, Lcom/android/server/ConnectivityService$InternalHandler;->this$0:Lcom/android/server/ConnectivityService;

    #@9a
    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@9c
    check-cast v4, Lcom/android/server/connectivity/NetworkAgentInfo;

    #@9e
    invoke-static {v5, v4}, Lcom/android/server/ConnectivityService;->-wrap9(Lcom/android/server/ConnectivityService;Lcom/android/server/connectivity/NetworkAgentInfo;)V

    #@a1
    goto/16 :goto_0

    #@a3
    .line 2480
    :pswitch_8
    iget-object v5, p0, Lcom/android/server/ConnectivityService$InternalHandler;->this$0:Lcom/android/server/ConnectivityService;

    #@a5
    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@a7
    check-cast v4, Lcom/android/server/ConnectivityService$NetworkRequestInfo;

    #@a9
    invoke-static {v5, v4}, Lcom/android/server/ConnectivityService;->-wrap12(Lcom/android/server/ConnectivityService;Lcom/android/server/ConnectivityService$NetworkRequestInfo;)V

    #@ac
    goto/16 :goto_0

    #@ae
    .line 2485
    :pswitch_9
    iget-object v4, p0, Lcom/android/server/ConnectivityService$InternalHandler;->this$0:Lcom/android/server/ConnectivityService;

    #@b0
    invoke-static {v4, p1}, Lcom/android/server/ConnectivityService;->-wrap11(Lcom/android/server/ConnectivityService;Landroid/os/Message;)V

    #@b3
    goto/16 :goto_0

    #@b5
    .line 2489
    :pswitch_a
    iget-object v5, p0, Lcom/android/server/ConnectivityService$InternalHandler;->this$0:Lcom/android/server/ConnectivityService;

    #@b7
    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@b9
    check-cast v4, Landroid/app/PendingIntent;

    #@bb
    iget v6, p1, Landroid/os/Message;->arg1:I

    #@bd
    invoke-static {v5, v4, v6}, Lcom/android/server/ConnectivityService;->-wrap13(Lcom/android/server/ConnectivityService;Landroid/app/PendingIntent;I)V

    #@c0
    goto/16 :goto_0

    #@c2
    .line 2493
    :pswitch_b
    iget-object v5, p0, Lcom/android/server/ConnectivityService$InternalHandler;->this$0:Lcom/android/server/ConnectivityService;

    #@c4
    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@c6
    check-cast v4, Landroid/net/NetworkRequest;

    #@c8
    iget v6, p1, Landroid/os/Message;->arg1:I

    #@ca
    invoke-static {v5, v4, v6}, Lcom/android/server/ConnectivityService;->-wrap14(Lcom/android/server/ConnectivityService;Landroid/net/NetworkRequest;I)V

    #@cd
    goto/16 :goto_0

    #@cf
    .line 2497
    :pswitch_c
    iget-object v8, p0, Lcom/android/server/ConnectivityService$InternalHandler;->this$0:Lcom/android/server/ConnectivityService;

    #@d1
    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@d3
    check-cast v4, Landroid/net/Network;

    #@d5
    iget v5, p1, Landroid/os/Message;->arg1:I

    #@d7
    if-eqz v5, :cond_4

    #@d9
    move v5, v6

    #@da
    :goto_1
    iget v9, p1, Landroid/os/Message;->arg2:I

    #@dc
    if-eqz v9, :cond_5

    #@de
    :goto_2
    invoke-static {v8, v4, v5, v6}, Lcom/android/server/ConnectivityService;->-wrap15(Lcom/android/server/ConnectivityService;Landroid/net/Network;ZZ)V

    #@e1
    goto/16 :goto_0

    #@e3
    :cond_4
    move v5, v7

    #@e4
    goto :goto_1

    #@e5
    :cond_5
    move v6, v7

    #@e6
    goto :goto_2

    #@e7
    .line 2501
    :pswitch_d
    iget-object v5, p0, Lcom/android/server/ConnectivityService$InternalHandler;->this$0:Lcom/android/server/ConnectivityService;

    #@e9
    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@eb
    check-cast v4, Landroid/net/Network;

    #@ed
    invoke-static {v5, v4}, Lcom/android/server/ConnectivityService;->-wrap8(Lcom/android/server/ConnectivityService;Landroid/net/Network;)V

    #@f0
    goto/16 :goto_0

    #@f2
    .line 2505
    :pswitch_e
    iget-object v4, p0, Lcom/android/server/ConnectivityService$InternalHandler;->this$0:Lcom/android/server/ConnectivityService;

    #@f4
    invoke-static {v4}, Lcom/android/server/ConnectivityService;->-wrap7(Lcom/android/server/ConnectivityService;)V

    #@f7
    goto/16 :goto_0

    #@f9
    .line 2509
    :pswitch_f
    iget-object v4, p0, Lcom/android/server/ConnectivityService$InternalHandler;->this$0:Lcom/android/server/ConnectivityService;

    #@fb
    invoke-static {v4}, Lcom/android/server/ConnectivityService;->-get6(Lcom/android/server/ConnectivityService;)Ljava/util/HashMap;

    #@fe
    move-result-object v4

    #@ff
    invoke-virtual {v4}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    #@102
    move-result-object v4

    #@103
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@106
    move-result-object v3

    #@107
    .local v3, "nai$iterator":Ljava/util/Iterator;
    :goto_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    #@10a
    move-result v4

    #@10b
    if-eqz v4, :cond_0

    #@10d
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@110
    move-result-object v2

    #@111
    check-cast v2, Lcom/android/server/connectivity/NetworkAgentInfo;

    #@113
    .line 2510
    .local v2, "nai":Lcom/android/server/connectivity/NetworkAgentInfo;
    iget-object v4, v2, Lcom/android/server/connectivity/NetworkAgentInfo;->networkMonitor:Lcom/android/server/connectivity/NetworkMonitor;

    #@115
    iput-boolean v6, v4, Lcom/android/server/connectivity/NetworkMonitor;->systemReady:Z

    #@117
    goto :goto_3

    #@118
    .line 2432
    :pswitch_data_0
    .packed-switch 0x8
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_4
        :pswitch_5
        :pswitch_7
        :pswitch_8
        :pswitch_0
        :pswitch_8
        :pswitch_b
        :pswitch_6
        :pswitch_1
        :pswitch_f
        :pswitch_9
        :pswitch_a
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_9
    .end packed-switch
.end method
