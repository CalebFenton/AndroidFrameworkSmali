.class Lcom/android/server/ConnectivityService$NetworkStateTrackerHandler;
.super Landroid/os/Handler;
.source "ConnectivityService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/ConnectivityService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "NetworkStateTrackerHandler"
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
    .line 2118
    iput-object p1, p0, Lcom/android/server/ConnectivityService$NetworkStateTrackerHandler;->this$0:Lcom/android/server/ConnectivityService;

    #@2
    .line 2119
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    #@5
    .line 2118
    return-void
.end method

.method private maybeHandleAsyncChannelMessage(Landroid/os/Message;)Z
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    #@0
    .prologue
    .line 2123
    iget v1, p1, Landroid/os/Message;->what:I

    #@2
    packed-switch v1, :pswitch_data_0

    #@5
    .line 2125
    :pswitch_0
    const/4 v1, 0x0

    #@6
    return v1

    #@7
    .line 2127
    :pswitch_1
    iget-object v1, p0, Lcom/android/server/ConnectivityService$NetworkStateTrackerHandler;->this$0:Lcom/android/server/ConnectivityService;

    #@9
    invoke-static {v1, p1}, Lcom/android/server/ConnectivityService;->-wrap6(Lcom/android/server/ConnectivityService;Landroid/os/Message;)V

    #@c
    .line 2140
    :cond_0
    :goto_0
    const/4 v1, 0x1

    #@d
    return v1

    #@e
    .line 2131
    :pswitch_2
    iget-object v1, p0, Lcom/android/server/ConnectivityService$NetworkStateTrackerHandler;->this$0:Lcom/android/server/ConnectivityService;

    #@10
    invoke-static {v1}, Lcom/android/server/ConnectivityService;->-get7(Lcom/android/server/ConnectivityService;)Ljava/util/HashMap;

    #@13
    move-result-object v1

    #@14
    iget-object v2, p1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    #@16
    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@19
    move-result-object v0

    #@1a
    check-cast v0, Lcom/android/server/connectivity/NetworkAgentInfo;

    #@1c
    .line 2132
    .local v0, "nai":Lcom/android/server/connectivity/NetworkAgentInfo;
    if-eqz v0, :cond_0

    #@1e
    iget-object v1, v0, Lcom/android/server/connectivity/NetworkAgentInfo;->asyncChannel:Lcom/android/internal/util/AsyncChannel;

    #@20
    invoke-virtual {v1}, Lcom/android/internal/util/AsyncChannel;->disconnect()V

    #@23
    goto :goto_0

    #@24
    .line 2136
    .end local v0    # "nai":Lcom/android/server/connectivity/NetworkAgentInfo;
    :pswitch_3
    iget-object v1, p0, Lcom/android/server/ConnectivityService$NetworkStateTrackerHandler;->this$0:Lcom/android/server/ConnectivityService;

    #@26
    invoke-static {v1, p1}, Lcom/android/server/ConnectivityService;->-wrap5(Lcom/android/server/ConnectivityService;Landroid/os/Message;)V

    #@29
    goto :goto_0

    #@2a
    .line 2123
    :pswitch_data_0
    .packed-switch 0x11000
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private maybeHandleNetworkAgentInfoMessage(Landroid/os/Message;)Z
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    #@0
    .prologue
    .line 2290
    iget v1, p1, Landroid/os/Message;->what:I

    #@2
    packed-switch v1, :pswitch_data_0

    #@5
    .line 2292
    const/4 v1, 0x0

    #@6
    return v1

    #@7
    .line 2294
    :pswitch_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@9
    check-cast v0, Lcom/android/server/connectivity/NetworkAgentInfo;

    #@b
    .line 2295
    .local v0, "nai":Lcom/android/server/connectivity/NetworkAgentInfo;
    if-eqz v0, :cond_0

    #@d
    iget-object v1, p0, Lcom/android/server/ConnectivityService$NetworkStateTrackerHandler;->this$0:Lcom/android/server/ConnectivityService;

    #@f
    iget v2, p1, Landroid/os/Message;->what:I

    #@11
    invoke-static {v1, v0, v2}, Lcom/android/server/ConnectivityService;->-wrap1(Lcom/android/server/ConnectivityService;Lcom/android/server/connectivity/NetworkAgentInfo;I)Z

    #@14
    move-result v1

    #@15
    if-eqz v1, :cond_0

    #@17
    .line 2296
    iget-object v1, p0, Lcom/android/server/ConnectivityService$NetworkStateTrackerHandler;->this$0:Lcom/android/server/ConnectivityService;

    #@19
    invoke-static {v1, v0}, Lcom/android/server/ConnectivityService;->-wrap8(Lcom/android/server/ConnectivityService;Lcom/android/server/connectivity/NetworkAgentInfo;)V

    #@1c
    .line 2301
    :cond_0
    const/4 v1, 0x1

    #@1d
    return v1

    #@1e
    .line 2290
    :pswitch_data_0
    .packed-switch 0x3e9
        :pswitch_0
    .end packed-switch
.end method

.method private maybeHandleNetworkAgentMessage(Landroid/os/Message;)V
    .locals 9
    .param p1, "msg"    # Landroid/os/Message;

    #@0
    .prologue
    .line 2144
    iget-object v6, p0, Lcom/android/server/ConnectivityService$NetworkStateTrackerHandler;->this$0:Lcom/android/server/ConnectivityService;

    #@2
    invoke-static {v6}, Lcom/android/server/ConnectivityService;->-get7(Lcom/android/server/ConnectivityService;)Ljava/util/HashMap;

    #@5
    move-result-object v6

    #@6
    iget-object v7, p1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    #@8
    invoke-virtual {v6, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@b
    move-result-object v2

    #@c
    check-cast v2, Lcom/android/server/connectivity/NetworkAgentInfo;

    #@e
    .line 2145
    .local v2, "nai":Lcom/android/server/connectivity/NetworkAgentInfo;
    if-nez v2, :cond_0

    #@10
    .line 2150
    return-void

    #@11
    .line 2153
    :cond_0
    iget v6, p1, Landroid/os/Message;->what:I

    #@13
    packed-switch v6, :pswitch_data_0

    #@16
    .line 2143
    :cond_1
    :goto_0
    :pswitch_0
    return-void

    #@17
    .line 2155
    :pswitch_1
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@19
    check-cast v3, Landroid/net/NetworkCapabilities;

    #@1b
    .line 2156
    .local v3, "networkCapabilities":Landroid/net/NetworkCapabilities;
    const/16 v6, 0x11

    #@1d
    invoke-virtual {v3, v6}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    #@20
    move-result v6

    #@21
    if-nez v6, :cond_2

    #@23
    .line 2157
    const/16 v6, 0x10

    #@25
    invoke-virtual {v3, v6}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    #@28
    move-result v6

    #@29
    .line 2156
    if-nez v6, :cond_2

    #@2b
    .line 2158
    const/16 v6, 0x12

    #@2d
    invoke-virtual {v3, v6}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    #@30
    move-result v6

    #@31
    .line 2156
    if-eqz v6, :cond_3

    #@33
    .line 2159
    :cond_2
    invoke-static {}, Lcom/android/server/ConnectivityService;->-get0()Ljava/lang/String;

    #@36
    move-result-object v6

    #@37
    new-instance v7, Ljava/lang/StringBuilder;

    #@39
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    #@3c
    const-string/jumbo v8, "BUG: "

    #@3f
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@42
    move-result-object v7

    #@43
    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@46
    move-result-object v7

    #@47
    const-string/jumbo v8, " has CS-managed capability."

    #@4a
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4d
    move-result-object v7

    #@4e
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@51
    move-result-object v7

    #@52
    invoke-static {v6, v7}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    #@55
    .line 2161
    :cond_3
    iget-object v6, p0, Lcom/android/server/ConnectivityService$NetworkStateTrackerHandler;->this$0:Lcom/android/server/ConnectivityService;

    #@57
    invoke-virtual {v2}, Lcom/android/server/connectivity/NetworkAgentInfo;->getCurrentScore()I

    #@5a
    move-result v7

    #@5b
    invoke-static {v6, v7, v2, v3}, Lcom/android/server/ConnectivityService;->-wrap33(Lcom/android/server/ConnectivityService;ILcom/android/server/connectivity/NetworkAgentInfo;Landroid/net/NetworkCapabilities;)V

    #@5e
    goto :goto_0

    #@5f
    .line 2170
    .end local v3    # "networkCapabilities":Landroid/net/NetworkCapabilities;
    :pswitch_2
    iget-object v4, v2, Lcom/android/server/connectivity/NetworkAgentInfo;->linkProperties:Landroid/net/LinkProperties;

    #@61
    .line 2171
    .local v4, "oldLp":Landroid/net/LinkProperties;
    monitor-enter v2

    #@62
    .line 2172
    :try_start_0
    iget-object v6, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@64
    check-cast v6, Landroid/net/LinkProperties;

    #@66
    iput-object v6, v2, Lcom/android/server/connectivity/NetworkAgentInfo;->linkProperties:Landroid/net/LinkProperties;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@68
    monitor-exit v2

    #@69
    .line 2174
    iget-boolean v6, v2, Lcom/android/server/connectivity/NetworkAgentInfo;->everConnected:Z

    #@6b
    if-eqz v6, :cond_1

    #@6d
    iget-object v6, p0, Lcom/android/server/ConnectivityService$NetworkStateTrackerHandler;->this$0:Lcom/android/server/ConnectivityService;

    #@6f
    invoke-static {v6, v2, v4}, Lcom/android/server/ConnectivityService;->-wrap35(Lcom/android/server/ConnectivityService;Lcom/android/server/connectivity/NetworkAgentInfo;Landroid/net/LinkProperties;)V

    #@72
    goto :goto_0

    #@73
    .line 2171
    :catchall_0
    move-exception v6

    #@74
    monitor-exit v2

    #@75
    throw v6

    #@76
    .line 2178
    .end local v4    # "oldLp":Landroid/net/LinkProperties;
    :pswitch_3
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@78
    check-cast v1, Landroid/net/NetworkInfo;

    #@7a
    .line 2179
    .local v1, "info":Landroid/net/NetworkInfo;
    iget-object v6, p0, Lcom/android/server/ConnectivityService$NetworkStateTrackerHandler;->this$0:Lcom/android/server/ConnectivityService;

    #@7c
    invoke-static {v6, v2, v1}, Lcom/android/server/ConnectivityService;->-wrap36(Lcom/android/server/ConnectivityService;Lcom/android/server/connectivity/NetworkAgentInfo;Landroid/net/NetworkInfo;)V

    #@7f
    goto :goto_0

    #@80
    .line 2183
    .end local v1    # "info":Landroid/net/NetworkInfo;
    :pswitch_4
    iget-object v5, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@82
    check-cast v5, Ljava/lang/Integer;

    #@84
    .line 2184
    .local v5, "score":Ljava/lang/Integer;
    if-eqz v5, :cond_1

    #@86
    iget-object v6, p0, Lcom/android/server/ConnectivityService$NetworkStateTrackerHandler;->this$0:Lcom/android/server/ConnectivityService;

    #@88
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    #@8b
    move-result v7

    #@8c
    invoke-static {v6, v2, v7}, Lcom/android/server/ConnectivityService;->-wrap37(Lcom/android/server/ConnectivityService;Lcom/android/server/connectivity/NetworkAgentInfo;I)V

    #@8f
    goto :goto_0

    #@90
    .line 2189
    .end local v5    # "score":Ljava/lang/Integer;
    :pswitch_5
    :try_start_1
    iget-object v6, p0, Lcom/android/server/ConnectivityService$NetworkStateTrackerHandler;->this$0:Lcom/android/server/ConnectivityService;

    #@92
    invoke-static {v6}, Lcom/android/server/ConnectivityService;->-get6(Lcom/android/server/ConnectivityService;)Landroid/os/INetworkManagementService;

    #@95
    move-result-object v7

    #@96
    iget-object v6, v2, Lcom/android/server/connectivity/NetworkAgentInfo;->network:Landroid/net/Network;

    #@98
    iget v8, v6, Landroid/net/Network;->netId:I

    #@9a
    iget-object v6, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@9c
    check-cast v6, [Landroid/net/UidRange;

    #@9e
    invoke-interface {v7, v8, v6}, Landroid/os/INetworkManagementService;->addVpnUidRanges(I[Landroid/net/UidRange;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    #@a1
    goto/16 :goto_0

    #@a3
    .line 2190
    :catch_0
    move-exception v0

    #@a4
    .line 2192
    .local v0, "e":Ljava/lang/Exception;
    new-instance v6, Ljava/lang/StringBuilder;

    #@a6
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@a9
    const-string/jumbo v7, "Exception in addVpnUidRanges: "

    #@ac
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@af
    move-result-object v6

    #@b0
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@b3
    move-result-object v6

    #@b4
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@b7
    move-result-object v6

    #@b8
    invoke-static {v6}, Lcom/android/server/ConnectivityService;->-wrap24(Ljava/lang/String;)V

    #@bb
    goto/16 :goto_0

    #@bd
    .line 2198
    .end local v0    # "e":Ljava/lang/Exception;
    :pswitch_6
    :try_start_2
    iget-object v6, p0, Lcom/android/server/ConnectivityService$NetworkStateTrackerHandler;->this$0:Lcom/android/server/ConnectivityService;

    #@bf
    invoke-static {v6}, Lcom/android/server/ConnectivityService;->-get6(Lcom/android/server/ConnectivityService;)Landroid/os/INetworkManagementService;

    #@c2
    move-result-object v7

    #@c3
    iget-object v6, v2, Lcom/android/server/connectivity/NetworkAgentInfo;->network:Landroid/net/Network;

    #@c5
    iget v8, v6, Landroid/net/Network;->netId:I

    #@c7
    iget-object v6, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@c9
    check-cast v6, [Landroid/net/UidRange;

    #@cb
    invoke-interface {v7, v8, v6}, Landroid/os/INetworkManagementService;->removeVpnUidRanges(I[Landroid/net/UidRange;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    #@ce
    goto/16 :goto_0

    #@d0
    .line 2199
    :catch_1
    move-exception v0

    #@d1
    .line 2201
    .restart local v0    # "e":Ljava/lang/Exception;
    new-instance v6, Ljava/lang/StringBuilder;

    #@d3
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@d6
    const-string/jumbo v7, "Exception in removeVpnUidRanges: "

    #@d9
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@dc
    move-result-object v6

    #@dd
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@e0
    move-result-object v6

    #@e1
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@e4
    move-result-object v6

    #@e5
    invoke-static {v6}, Lcom/android/server/ConnectivityService;->-wrap24(Ljava/lang/String;)V

    #@e8
    goto/16 :goto_0

    #@ea
    .line 2206
    .end local v0    # "e":Ljava/lang/Exception;
    :pswitch_7
    iget-boolean v6, v2, Lcom/android/server/connectivity/NetworkAgentInfo;->everConnected:Z

    #@ec
    if-eqz v6, :cond_4

    #@ee
    iget-object v6, v2, Lcom/android/server/connectivity/NetworkAgentInfo;->networkMisc:Landroid/net/NetworkMisc;

    #@f0
    iget-boolean v6, v6, Landroid/net/NetworkMisc;->explicitlySelected:Z

    #@f2
    if-eqz v6, :cond_5

    #@f4
    .line 2209
    :cond_4
    :goto_1
    iget-object v6, v2, Lcom/android/server/connectivity/NetworkAgentInfo;->networkMisc:Landroid/net/NetworkMisc;

    #@f6
    const/4 v7, 0x1

    #@f7
    iput-boolean v7, v6, Landroid/net/NetworkMisc;->explicitlySelected:Z

    #@f9
    .line 2210
    iget-object v7, v2, Lcom/android/server/connectivity/NetworkAgentInfo;->networkMisc:Landroid/net/NetworkMisc;

    #@fb
    iget-object v6, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@fd
    check-cast v6, Ljava/lang/Boolean;

    #@ff
    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    #@102
    move-result v6

    #@103
    iput-boolean v6, v7, Landroid/net/NetworkMisc;->acceptUnvalidated:Z

    #@105
    goto/16 :goto_0

    #@107
    .line 2207
    :cond_5
    const-string/jumbo v6, "ERROR: already-connected network explicitly selected."

    #@10a
    invoke-static {v6}, Lcom/android/server/ConnectivityService;->-wrap24(Ljava/lang/String;)V

    #@10d
    goto :goto_1

    #@10e
    .line 2214
    :pswitch_8
    iget-object v6, p0, Lcom/android/server/ConnectivityService$NetworkStateTrackerHandler;->this$0:Lcom/android/server/ConnectivityService;

    #@110
    invoke-static {v6}, Lcom/android/server/ConnectivityService;->-get1(Lcom/android/server/ConnectivityService;)Lcom/android/server/connectivity/KeepaliveTracker;

    #@113
    move-result-object v6

    #@114
    invoke-virtual {v6, v2, p1}, Lcom/android/server/connectivity/KeepaliveTracker;->handleEventPacketKeepalive(Lcom/android/server/connectivity/NetworkAgentInfo;Landroid/os/Message;)V

    #@117
    goto/16 :goto_0

    #@119
    .line 2153
    nop

    #@11a
    :pswitch_data_0
    .packed-switch 0x81001
        :pswitch_3
        :pswitch_1
        :pswitch_2
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_0
        :pswitch_7
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_8
    .end packed-switch
.end method

.method private maybeHandleNetworkMonitorMessage(Landroid/os/Message;)Z
    .locals 13
    .param p1, "msg"    # Landroid/os/Message;

    #@0
    .prologue
    const/4 v12, 0x1

    #@1
    const/4 v5, 0x0

    #@2
    const/4 v4, 0x0

    #@3
    .line 2221
    iget v0, p1, Landroid/os/Message;->what:I

    #@5
    sparse-switch v0, :sswitch_data_0

    #@8
    .line 2223
    return v5

    #@9
    .line 2226
    :sswitch_0
    iget-object v0, p0, Lcom/android/server/ConnectivityService$NetworkStateTrackerHandler;->this$0:Lcom/android/server/ConnectivityService;

    #@b
    invoke-static {v0}, Lcom/android/server/ConnectivityService;->-get8(Lcom/android/server/ConnectivityService;)Landroid/util/SparseArray;

    #@e
    move-result-object v2

    #@f
    monitor-enter v2

    #@10
    .line 2227
    :try_start_0
    iget-object v0, p0, Lcom/android/server/ConnectivityService$NetworkStateTrackerHandler;->this$0:Lcom/android/server/ConnectivityService;

    #@12
    invoke-static {v0}, Lcom/android/server/ConnectivityService;->-get8(Lcom/android/server/ConnectivityService;)Landroid/util/SparseArray;

    #@15
    move-result-object v0

    #@16
    iget v4, p1, Landroid/os/Message;->arg2:I

    #@18
    invoke-virtual {v0, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    #@1b
    move-result-object v3

    #@1c
    check-cast v3, Lcom/android/server/connectivity/NetworkAgentInfo;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1e
    .local v3, "nai":Lcom/android/server/connectivity/NetworkAgentInfo;
    monitor-exit v2

    #@1f
    .line 2229
    if-eqz v3, :cond_1

    #@21
    .line 2231
    iget v0, p1, Landroid/os/Message;->arg1:I

    #@23
    if-nez v0, :cond_2

    #@25
    const/4 v9, 0x1

    #@26
    .line 2232
    .local v9, "valid":Z
    :goto_0
    iget-boolean v11, v3, Lcom/android/server/connectivity/NetworkAgentInfo;->lastValidated:Z

    #@28
    .line 2233
    .local v11, "wasValidated":Z
    new-instance v0, Ljava/lang/StringBuilder;

    #@2a
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@2d
    invoke-virtual {v3}, Lcom/android/server/connectivity/NetworkAgentInfo;->name()Ljava/lang/String;

    #@30
    move-result-object v2

    #@31
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@34
    move-result-object v0

    #@35
    const-string/jumbo v2, " validation "

    #@38
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3b
    move-result-object v2

    #@3c
    if-eqz v9, :cond_3

    #@3e
    const-string/jumbo v0, "passed"

    #@41
    :goto_1
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@44
    move-result-object v2

    #@45
    .line 2234
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@47
    if-nez v0, :cond_4

    #@49
    const-string/jumbo v0, ""

    #@4c
    .line 2233
    :goto_2
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4f
    move-result-object v0

    #@50
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@53
    move-result-object v0

    #@54
    invoke-static {v0}, Lcom/android/server/ConnectivityService;->-wrap23(Ljava/lang/String;)V

    #@57
    .line 2235
    iget-boolean v0, v3, Lcom/android/server/connectivity/NetworkAgentInfo;->lastValidated:Z

    #@59
    if-eq v9, v0, :cond_0

    #@5b
    .line 2236
    invoke-virtual {v3}, Lcom/android/server/connectivity/NetworkAgentInfo;->getCurrentScore()I

    #@5e
    move-result v7

    #@5f
    .line 2237
    .local v7, "oldScore":I
    iput-boolean v9, v3, Lcom/android/server/connectivity/NetworkAgentInfo;->lastValidated:Z

    #@61
    .line 2238
    iget-boolean v0, v3, Lcom/android/server/connectivity/NetworkAgentInfo;->everValidated:Z

    #@63
    or-int/2addr v0, v9

    #@64
    iput-boolean v0, v3, Lcom/android/server/connectivity/NetworkAgentInfo;->everValidated:Z

    #@66
    .line 2239
    iget-object v0, p0, Lcom/android/server/ConnectivityService$NetworkStateTrackerHandler;->this$0:Lcom/android/server/ConnectivityService;

    #@68
    iget-object v2, v3, Lcom/android/server/connectivity/NetworkAgentInfo;->networkCapabilities:Landroid/net/NetworkCapabilities;

    #@6a
    invoke-static {v0, v7, v3, v2}, Lcom/android/server/ConnectivityService;->-wrap33(Lcom/android/server/ConnectivityService;ILcom/android/server/connectivity/NetworkAgentInfo;Landroid/net/NetworkCapabilities;)V

    #@6d
    .line 2241
    invoke-virtual {v3}, Lcom/android/server/connectivity/NetworkAgentInfo;->getCurrentScore()I

    #@70
    move-result v0

    #@71
    if-eq v7, v0, :cond_0

    #@73
    iget-object v0, p0, Lcom/android/server/ConnectivityService$NetworkStateTrackerHandler;->this$0:Lcom/android/server/ConnectivityService;

    #@75
    invoke-static {v0, v3}, Lcom/android/server/ConnectivityService;->-wrap32(Lcom/android/server/ConnectivityService;Lcom/android/server/connectivity/NetworkAgentInfo;)V

    #@78
    .line 2243
    .end local v7    # "oldScore":I
    :cond_0
    iget-object v0, p0, Lcom/android/server/ConnectivityService$NetworkStateTrackerHandler;->this$0:Lcom/android/server/ConnectivityService;

    #@7a
    invoke-static {v0, v3}, Lcom/android/server/ConnectivityService;->-wrap34(Lcom/android/server/ConnectivityService;Lcom/android/server/connectivity/NetworkAgentInfo;)V

    #@7d
    .line 2245
    new-instance v8, Landroid/os/Bundle;

    #@7f
    invoke-direct {v8}, Landroid/os/Bundle;-><init>()V

    #@82
    .line 2246
    .local v8, "redirectUrlBundle":Landroid/os/Bundle;
    sget-object v2, Landroid/net/NetworkAgent;->REDIRECT_URL_KEY:Ljava/lang/String;

    #@84
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@86
    check-cast v0, Ljava/lang/String;

    #@88
    invoke-virtual {v8, v2, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    #@8b
    .line 2247
    iget-object v2, v3, Lcom/android/server/connectivity/NetworkAgentInfo;->asyncChannel:Lcom/android/internal/util/AsyncChannel;

    #@8d
    .line 2249
    if-eqz v9, :cond_5

    #@8f
    move v0, v12

    #@90
    .line 2248
    :goto_3
    const v4, 0x81007

    #@93
    .line 2247
    invoke-virtual {v2, v4, v0, v5, v8}, Lcom/android/internal/util/AsyncChannel;->sendMessage(IIILjava/lang/Object;)V

    #@96
    .line 2251
    if-eqz v11, :cond_1

    #@98
    iget-boolean v0, v3, Lcom/android/server/connectivity/NetworkAgentInfo;->lastValidated:Z

    #@9a
    if-eqz v0, :cond_6

    #@9c
    .line 2286
    .end local v8    # "redirectUrlBundle":Landroid/os/Bundle;
    .end local v9    # "valid":Z
    .end local v11    # "wasValidated":Z
    :cond_1
    :goto_4
    return v12

    #@9d
    .line 2226
    .end local v3    # "nai":Lcom/android/server/connectivity/NetworkAgentInfo;
    :catchall_0
    move-exception v0

    #@9e
    monitor-exit v2

    #@9f
    throw v0

    #@a0
    .line 2231
    .restart local v3    # "nai":Lcom/android/server/connectivity/NetworkAgentInfo;
    :cond_2
    const/4 v9, 0x0

    #@a1
    .restart local v9    # "valid":Z
    goto :goto_0

    #@a2
    .line 2233
    .restart local v11    # "wasValidated":Z
    :cond_3
    const-string/jumbo v0, "failed"

    #@a5
    goto :goto_1

    #@a6
    .line 2234
    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    #@a8
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@ab
    const-string/jumbo v4, " with redirect to "

    #@ae
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b1
    move-result-object v4

    #@b2
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@b4
    check-cast v0, Ljava/lang/String;

    #@b6
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b9
    move-result-object v0

    #@ba
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@bd
    move-result-object v0

    #@be
    goto :goto_2

    #@bf
    .line 2249
    .restart local v8    # "redirectUrlBundle":Landroid/os/Bundle;
    :cond_5
    const/4 v0, 0x2

    #@c0
    goto :goto_3

    #@c1
    .line 2252
    :cond_6
    iget-object v0, p0, Lcom/android/server/ConnectivityService$NetworkStateTrackerHandler;->this$0:Lcom/android/server/ConnectivityService;

    #@c3
    invoke-static {v0, v3}, Lcom/android/server/ConnectivityService;->-wrap10(Lcom/android/server/ConnectivityService;Lcom/android/server/connectivity/NetworkAgentInfo;)V

    #@c6
    goto :goto_4

    #@c7
    .line 2258
    .end local v3    # "nai":Lcom/android/server/connectivity/NetworkAgentInfo;
    .end local v8    # "redirectUrlBundle":Landroid/os/Bundle;
    .end local v9    # "valid":Z
    .end local v11    # "wasValidated":Z
    :sswitch_1
    iget v1, p1, Landroid/os/Message;->arg2:I

    #@c9
    .line 2259
    .local v1, "netId":I
    iget v0, p1, Landroid/os/Message;->arg1:I

    #@cb
    if-eqz v0, :cond_8

    #@cd
    const/4 v10, 0x1

    #@ce
    .line 2261
    .local v10, "visible":Z
    :goto_5
    iget-object v0, p0, Lcom/android/server/ConnectivityService$NetworkStateTrackerHandler;->this$0:Lcom/android/server/ConnectivityService;

    #@d0
    invoke-static {v0}, Lcom/android/server/ConnectivityService;->-get8(Lcom/android/server/ConnectivityService;)Landroid/util/SparseArray;

    #@d3
    move-result-object v2

    #@d4
    monitor-enter v2

    #@d5
    .line 2262
    :try_start_1
    iget-object v0, p0, Lcom/android/server/ConnectivityService$NetworkStateTrackerHandler;->this$0:Lcom/android/server/ConnectivityService;

    #@d7
    invoke-static {v0}, Lcom/android/server/ConnectivityService;->-get8(Lcom/android/server/ConnectivityService;)Landroid/util/SparseArray;

    #@da
    move-result-object v0

    #@db
    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    #@de
    move-result-object v3

    #@df
    check-cast v3, Lcom/android/server/connectivity/NetworkAgentInfo;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    #@e1
    .restart local v3    # "nai":Lcom/android/server/connectivity/NetworkAgentInfo;
    monitor-exit v2

    #@e2
    .line 2265
    if-eqz v3, :cond_7

    #@e4
    iget-boolean v0, v3, Lcom/android/server/connectivity/NetworkAgentInfo;->lastCaptivePortalDetected:Z

    #@e6
    if-eq v10, v0, :cond_7

    #@e8
    .line 2266
    invoke-virtual {v3}, Lcom/android/server/connectivity/NetworkAgentInfo;->getCurrentScore()I

    #@eb
    move-result v7

    #@ec
    .line 2267
    .restart local v7    # "oldScore":I
    iput-boolean v10, v3, Lcom/android/server/connectivity/NetworkAgentInfo;->lastCaptivePortalDetected:Z

    #@ee
    .line 2268
    iget-boolean v0, v3, Lcom/android/server/connectivity/NetworkAgentInfo;->everCaptivePortalDetected:Z

    #@f0
    or-int/2addr v0, v10

    #@f1
    iput-boolean v0, v3, Lcom/android/server/connectivity/NetworkAgentInfo;->everCaptivePortalDetected:Z

    #@f3
    .line 2269
    iget-object v0, p0, Lcom/android/server/ConnectivityService$NetworkStateTrackerHandler;->this$0:Lcom/android/server/ConnectivityService;

    #@f5
    iget-object v2, v3, Lcom/android/server/connectivity/NetworkAgentInfo;->networkCapabilities:Landroid/net/NetworkCapabilities;

    #@f7
    invoke-static {v0, v7, v3, v2}, Lcom/android/server/ConnectivityService;->-wrap33(Lcom/android/server/ConnectivityService;ILcom/android/server/connectivity/NetworkAgentInfo;Landroid/net/NetworkCapabilities;)V

    #@fa
    .line 2271
    .end local v7    # "oldScore":I
    :cond_7
    if-nez v10, :cond_9

    #@fc
    .line 2272
    iget-object v0, p0, Lcom/android/server/ConnectivityService$NetworkStateTrackerHandler;->this$0:Lcom/android/server/ConnectivityService;

    #@fe
    invoke-static {v0}, Lcom/android/server/ConnectivityService;->-get9(Lcom/android/server/ConnectivityService;)Lcom/android/server/connectivity/NetworkNotificationManager;

    #@101
    move-result-object v0

    #@102
    invoke-virtual {v0, v1}, Lcom/android/server/connectivity/NetworkNotificationManager;->clearNotification(I)V

    #@105
    goto :goto_4

    #@106
    .line 2259
    .end local v3    # "nai":Lcom/android/server/connectivity/NetworkAgentInfo;
    .end local v10    # "visible":Z
    :cond_8
    const/4 v10, 0x0

    #@107
    .restart local v10    # "visible":Z
    goto :goto_5

    #@108
    .line 2261
    :catchall_1
    move-exception v0

    #@109
    monitor-exit v2

    #@10a
    throw v0

    #@10b
    .line 2274
    .restart local v3    # "nai":Lcom/android/server/connectivity/NetworkAgentInfo;
    :cond_9
    if-nez v3, :cond_a

    #@10d
    .line 2275
    const-string/jumbo v0, "EVENT_PROVISIONING_NOTIFICATION from unknown NetworkMonitor"

    #@110
    invoke-static {v0}, Lcom/android/server/ConnectivityService;->-wrap24(Ljava/lang/String;)V

    #@113
    goto :goto_4

    #@114
    .line 2278
    :cond_a
    iget-object v0, v3, Lcom/android/server/connectivity/NetworkAgentInfo;->networkMisc:Landroid/net/NetworkMisc;

    #@116
    iget-boolean v0, v0, Landroid/net/NetworkMisc;->provisioningNotificationDisabled:Z

    #@118
    if-nez v0, :cond_1

    #@11a
    .line 2279
    iget-object v0, p0, Lcom/android/server/ConnectivityService$NetworkStateTrackerHandler;->this$0:Lcom/android/server/ConnectivityService;

    #@11c
    invoke-static {v0}, Lcom/android/server/ConnectivityService;->-get9(Lcom/android/server/ConnectivityService;)Lcom/android/server/connectivity/NetworkNotificationManager;

    #@11f
    move-result-object v0

    #@120
    sget-object v2, Lcom/android/server/connectivity/NetworkNotificationManager$NotificationType;->SIGN_IN:Lcom/android/server/connectivity/NetworkNotificationManager$NotificationType;

    #@122
    .line 2280
    iget-object v5, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@124
    check-cast v5, Landroid/app/PendingIntent;

    #@126
    iget-object v6, v3, Lcom/android/server/connectivity/NetworkAgentInfo;->networkMisc:Landroid/net/NetworkMisc;

    #@128
    iget-boolean v6, v6, Landroid/net/NetworkMisc;->explicitlySelected:Z

    #@12a
    .line 2279
    invoke-virtual/range {v0 .. v6}, Lcom/android/server/connectivity/NetworkNotificationManager;->showNotification(ILcom/android/server/connectivity/NetworkNotificationManager$NotificationType;Lcom/android/server/connectivity/NetworkAgentInfo;Lcom/android/server/connectivity/NetworkAgentInfo;Landroid/app/PendingIntent;Z)V

    #@12d
    goto/16 :goto_4

    #@12f
    .line 2221
    nop

    #@130
    :sswitch_data_0
    .sparse-switch
        0x82002 -> :sswitch_0
        0x8200a -> :sswitch_1
    .end sparse-switch
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .param p1, "msg"    # Landroid/os/Message;

    #@0
    .prologue
    .line 2306
    invoke-direct {p0, p1}, Lcom/android/server/ConnectivityService$NetworkStateTrackerHandler;->maybeHandleAsyncChannelMessage(Landroid/os/Message;)Z

    #@3
    move-result v0

    #@4
    if-nez v0, :cond_0

    #@6
    .line 2307
    invoke-direct {p0, p1}, Lcom/android/server/ConnectivityService$NetworkStateTrackerHandler;->maybeHandleNetworkMonitorMessage(Landroid/os/Message;)Z

    #@9
    move-result v0

    #@a
    if-eqz v0, :cond_1

    #@c
    .line 2305
    :cond_0
    :goto_0
    return-void

    #@d
    .line 2308
    :cond_1
    invoke-direct {p0, p1}, Lcom/android/server/ConnectivityService$NetworkStateTrackerHandler;->maybeHandleNetworkAgentInfoMessage(Landroid/os/Message;)Z

    #@10
    move-result v0

    #@11
    if-nez v0, :cond_0

    #@13
    .line 2309
    invoke-direct {p0, p1}, Lcom/android/server/ConnectivityService$NetworkStateTrackerHandler;->maybeHandleNetworkAgentMessage(Landroid/os/Message;)V

    #@16
    goto :goto_0
.end method
