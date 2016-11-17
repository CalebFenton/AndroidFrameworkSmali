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
    .line 1996
    iput-object p1, p0, Lcom/android/server/ConnectivityService$NetworkStateTrackerHandler;->this$0:Lcom/android/server/ConnectivityService;

    #@2
    .line 1997
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    #@5
    .line 1996
    return-void
.end method

.method private maybeHandleAsyncChannelMessage(Landroid/os/Message;)Z
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    #@0
    .prologue
    .line 2001
    iget v1, p1, Landroid/os/Message;->what:I

    #@2
    packed-switch v1, :pswitch_data_0

    #@5
    .line 2003
    :pswitch_0
    const/4 v1, 0x0

    #@6
    return v1

    #@7
    .line 2005
    :pswitch_1
    iget-object v1, p0, Lcom/android/server/ConnectivityService$NetworkStateTrackerHandler;->this$0:Lcom/android/server/ConnectivityService;

    #@9
    invoke-static {v1, p1}, Lcom/android/server/ConnectivityService;->-wrap5(Lcom/android/server/ConnectivityService;Landroid/os/Message;)V

    #@c
    .line 2018
    :cond_0
    :goto_0
    const/4 v1, 0x1

    #@d
    return v1

    #@e
    .line 2009
    :pswitch_2
    iget-object v1, p0, Lcom/android/server/ConnectivityService$NetworkStateTrackerHandler;->this$0:Lcom/android/server/ConnectivityService;

    #@10
    invoke-static {v1}, Lcom/android/server/ConnectivityService;->-get6(Lcom/android/server/ConnectivityService;)Ljava/util/HashMap;

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
    .line 2010
    .local v0, "nai":Lcom/android/server/connectivity/NetworkAgentInfo;
    if-eqz v0, :cond_0

    #@1e
    iget-object v1, v0, Lcom/android/server/connectivity/NetworkAgentInfo;->asyncChannel:Lcom/android/internal/util/AsyncChannel;

    #@20
    invoke-virtual {v1}, Lcom/android/internal/util/AsyncChannel;->disconnect()V

    #@23
    goto :goto_0

    #@24
    .line 2014
    .end local v0    # "nai":Lcom/android/server/connectivity/NetworkAgentInfo;
    :pswitch_3
    iget-object v1, p0, Lcom/android/server/ConnectivityService$NetworkStateTrackerHandler;->this$0:Lcom/android/server/ConnectivityService;

    #@26
    invoke-static {v1, p1}, Lcom/android/server/ConnectivityService;->-wrap4(Lcom/android/server/ConnectivityService;Landroid/os/Message;)V

    #@29
    goto :goto_0

    #@2a
    .line 2001
    :pswitch_data_0
    .packed-switch 0x11000
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private maybeHandleNetworkAgentMessage(Landroid/os/Message;)V
    .locals 9
    .param p1, "msg"    # Landroid/os/Message;

    #@0
    .prologue
    .line 2022
    iget-object v6, p0, Lcom/android/server/ConnectivityService$NetworkStateTrackerHandler;->this$0:Lcom/android/server/ConnectivityService;

    #@2
    invoke-static {v6}, Lcom/android/server/ConnectivityService;->-get6(Lcom/android/server/ConnectivityService;)Ljava/util/HashMap;

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
    .line 2023
    .local v2, "nai":Lcom/android/server/connectivity/NetworkAgentInfo;
    if-nez v2, :cond_0

    #@10
    .line 2028
    return-void

    #@11
    .line 2031
    :cond_0
    iget v6, p1, Landroid/os/Message;->what:I

    #@13
    packed-switch v6, :pswitch_data_0

    #@16
    .line 2021
    :cond_1
    :goto_0
    :pswitch_0
    return-void

    #@17
    .line 2033
    :pswitch_1
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@19
    check-cast v3, Landroid/net/NetworkCapabilities;

    #@1b
    .line 2034
    .local v3, "networkCapabilities":Landroid/net/NetworkCapabilities;
    const/16 v6, 0x11

    #@1d
    invoke-virtual {v3, v6}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    #@20
    move-result v6

    #@21
    if-nez v6, :cond_2

    #@23
    .line 2035
    const/16 v6, 0x10

    #@25
    invoke-virtual {v3, v6}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    #@28
    move-result v6

    #@29
    .line 2034
    if-eqz v6, :cond_3

    #@2b
    .line 2036
    :cond_2
    const-string/jumbo v6, "ConnectivityService"

    #@2e
    new-instance v7, Ljava/lang/StringBuilder;

    #@30
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    #@33
    const-string/jumbo v8, "BUG: "

    #@36
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@39
    move-result-object v7

    #@3a
    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@3d
    move-result-object v7

    #@3e
    const-string/jumbo v8, " has CS-managed capability."

    #@41
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@44
    move-result-object v7

    #@45
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@48
    move-result-object v7

    #@49
    invoke-static {v6, v7}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    #@4c
    .line 2038
    :cond_3
    iget-boolean v6, v2, Lcom/android/server/connectivity/NetworkAgentInfo;->everConnected:Z

    #@4e
    if-eqz v6, :cond_4

    #@50
    iget-object v6, v2, Lcom/android/server/connectivity/NetworkAgentInfo;->networkCapabilities:Landroid/net/NetworkCapabilities;

    #@52
    invoke-virtual {v6, v3}, Landroid/net/NetworkCapabilities;->equalImmutableCapabilities(Landroid/net/NetworkCapabilities;)Z

    #@55
    move-result v6

    #@56
    if-eqz v6, :cond_5

    #@58
    .line 2043
    :cond_4
    :goto_1
    iget-object v6, p0, Lcom/android/server/ConnectivityService$NetworkStateTrackerHandler;->this$0:Lcom/android/server/ConnectivityService;

    #@5a
    invoke-static {v6, v2, v3}, Lcom/android/server/ConnectivityService;->-wrap29(Lcom/android/server/ConnectivityService;Lcom/android/server/connectivity/NetworkAgentInfo;Landroid/net/NetworkCapabilities;)V

    #@5d
    goto :goto_0

    #@5e
    .line 2040
    :cond_5
    const-string/jumbo v6, "ConnectivityService"

    #@61
    new-instance v7, Ljava/lang/StringBuilder;

    #@63
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    #@66
    const-string/jumbo v8, "BUG: "

    #@69
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6c
    move-result-object v7

    #@6d
    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@70
    move-result-object v7

    #@71
    const-string/jumbo v8, " changed immutable capabilities: "

    #@74
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@77
    move-result-object v7

    #@78
    .line 2041
    iget-object v8, v2, Lcom/android/server/connectivity/NetworkAgentInfo;->networkCapabilities:Landroid/net/NetworkCapabilities;

    #@7a
    .line 2040
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@7d
    move-result-object v7

    #@7e
    .line 2041
    const-string/jumbo v8, " -> "

    #@81
    .line 2040
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@84
    move-result-object v7

    #@85
    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@88
    move-result-object v7

    #@89
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@8c
    move-result-object v7

    #@8d
    invoke-static {v6, v7}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    #@90
    goto :goto_1

    #@91
    .line 2052
    .end local v3    # "networkCapabilities":Landroid/net/NetworkCapabilities;
    :pswitch_2
    iget-object v4, v2, Lcom/android/server/connectivity/NetworkAgentInfo;->linkProperties:Landroid/net/LinkProperties;

    #@93
    .line 2053
    .local v4, "oldLp":Landroid/net/LinkProperties;
    monitor-enter v2

    #@94
    .line 2054
    :try_start_0
    iget-object v6, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@96
    check-cast v6, Landroid/net/LinkProperties;

    #@98
    iput-object v6, v2, Lcom/android/server/connectivity/NetworkAgentInfo;->linkProperties:Landroid/net/LinkProperties;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@9a
    monitor-exit v2

    #@9b
    .line 2056
    iget-boolean v6, v2, Lcom/android/server/connectivity/NetworkAgentInfo;->everConnected:Z

    #@9d
    if-eqz v6, :cond_1

    #@9f
    iget-object v6, p0, Lcom/android/server/ConnectivityService$NetworkStateTrackerHandler;->this$0:Lcom/android/server/ConnectivityService;

    #@a1
    invoke-static {v6, v2, v4}, Lcom/android/server/ConnectivityService;->-wrap31(Lcom/android/server/ConnectivityService;Lcom/android/server/connectivity/NetworkAgentInfo;Landroid/net/LinkProperties;)V

    #@a4
    goto/16 :goto_0

    #@a6
    .line 2053
    :catchall_0
    move-exception v6

    #@a7
    monitor-exit v2

    #@a8
    throw v6

    #@a9
    .line 2060
    .end local v4    # "oldLp":Landroid/net/LinkProperties;
    :pswitch_3
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@ab
    check-cast v1, Landroid/net/NetworkInfo;

    #@ad
    .line 2061
    .local v1, "info":Landroid/net/NetworkInfo;
    iget-object v6, p0, Lcom/android/server/ConnectivityService$NetworkStateTrackerHandler;->this$0:Lcom/android/server/ConnectivityService;

    #@af
    invoke-static {v6, v2, v1}, Lcom/android/server/ConnectivityService;->-wrap32(Lcom/android/server/ConnectivityService;Lcom/android/server/connectivity/NetworkAgentInfo;Landroid/net/NetworkInfo;)V

    #@b2
    goto/16 :goto_0

    #@b4
    .line 2065
    .end local v1    # "info":Landroid/net/NetworkInfo;
    :pswitch_4
    iget-object v5, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@b6
    check-cast v5, Ljava/lang/Integer;

    #@b8
    .line 2066
    .local v5, "score":Ljava/lang/Integer;
    if-eqz v5, :cond_1

    #@ba
    iget-object v6, p0, Lcom/android/server/ConnectivityService$NetworkStateTrackerHandler;->this$0:Lcom/android/server/ConnectivityService;

    #@bc
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    #@bf
    move-result v7

    #@c0
    invoke-static {v6, v2, v7}, Lcom/android/server/ConnectivityService;->-wrap33(Lcom/android/server/ConnectivityService;Lcom/android/server/connectivity/NetworkAgentInfo;I)V

    #@c3
    goto/16 :goto_0

    #@c5
    .line 2071
    .end local v5    # "score":Ljava/lang/Integer;
    :pswitch_5
    :try_start_1
    iget-object v6, p0, Lcom/android/server/ConnectivityService$NetworkStateTrackerHandler;->this$0:Lcom/android/server/ConnectivityService;

    #@c7
    invoke-static {v6}, Lcom/android/server/ConnectivityService;->-get5(Lcom/android/server/ConnectivityService;)Landroid/os/INetworkManagementService;

    #@ca
    move-result-object v7

    #@cb
    iget-object v6, v2, Lcom/android/server/connectivity/NetworkAgentInfo;->network:Landroid/net/Network;

    #@cd
    iget v8, v6, Landroid/net/Network;->netId:I

    #@cf
    iget-object v6, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@d1
    check-cast v6, [Landroid/net/UidRange;

    #@d3
    invoke-interface {v7, v8, v6}, Landroid/os/INetworkManagementService;->addVpnUidRanges(I[Landroid/net/UidRange;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    #@d6
    goto/16 :goto_0

    #@d8
    .line 2072
    :catch_0
    move-exception v0

    #@d9
    .line 2074
    .local v0, "e":Ljava/lang/Exception;
    new-instance v6, Ljava/lang/StringBuilder;

    #@db
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@de
    const-string/jumbo v7, "Exception in addVpnUidRanges: "

    #@e1
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@e4
    move-result-object v6

    #@e5
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@e8
    move-result-object v6

    #@e9
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@ec
    move-result-object v6

    #@ed
    invoke-static {v6}, Lcom/android/server/ConnectivityService;->-wrap19(Ljava/lang/String;)V

    #@f0
    goto/16 :goto_0

    #@f2
    .line 2080
    .end local v0    # "e":Ljava/lang/Exception;
    :pswitch_6
    :try_start_2
    iget-object v6, p0, Lcom/android/server/ConnectivityService$NetworkStateTrackerHandler;->this$0:Lcom/android/server/ConnectivityService;

    #@f4
    invoke-static {v6}, Lcom/android/server/ConnectivityService;->-get5(Lcom/android/server/ConnectivityService;)Landroid/os/INetworkManagementService;

    #@f7
    move-result-object v7

    #@f8
    iget-object v6, v2, Lcom/android/server/connectivity/NetworkAgentInfo;->network:Landroid/net/Network;

    #@fa
    iget v8, v6, Landroid/net/Network;->netId:I

    #@fc
    iget-object v6, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@fe
    check-cast v6, [Landroid/net/UidRange;

    #@100
    invoke-interface {v7, v8, v6}, Landroid/os/INetworkManagementService;->removeVpnUidRanges(I[Landroid/net/UidRange;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    #@103
    goto/16 :goto_0

    #@105
    .line 2081
    :catch_1
    move-exception v0

    #@106
    .line 2083
    .restart local v0    # "e":Ljava/lang/Exception;
    new-instance v6, Ljava/lang/StringBuilder;

    #@108
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@10b
    const-string/jumbo v7, "Exception in removeVpnUidRanges: "

    #@10e
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@111
    move-result-object v6

    #@112
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@115
    move-result-object v6

    #@116
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@119
    move-result-object v6

    #@11a
    invoke-static {v6}, Lcom/android/server/ConnectivityService;->-wrap19(Ljava/lang/String;)V

    #@11d
    goto/16 :goto_0

    #@11f
    .line 2088
    .end local v0    # "e":Ljava/lang/Exception;
    :pswitch_7
    iget-boolean v6, v2, Lcom/android/server/connectivity/NetworkAgentInfo;->everConnected:Z

    #@121
    if-eqz v6, :cond_6

    #@123
    iget-object v6, v2, Lcom/android/server/connectivity/NetworkAgentInfo;->networkMisc:Landroid/net/NetworkMisc;

    #@125
    iget-boolean v6, v6, Landroid/net/NetworkMisc;->explicitlySelected:Z

    #@127
    if-eqz v6, :cond_7

    #@129
    .line 2091
    :cond_6
    :goto_2
    iget-object v6, v2, Lcom/android/server/connectivity/NetworkAgentInfo;->networkMisc:Landroid/net/NetworkMisc;

    #@12b
    const/4 v7, 0x1

    #@12c
    iput-boolean v7, v6, Landroid/net/NetworkMisc;->explicitlySelected:Z

    #@12e
    .line 2092
    iget-object v7, v2, Lcom/android/server/connectivity/NetworkAgentInfo;->networkMisc:Landroid/net/NetworkMisc;

    #@130
    iget-object v6, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@132
    check-cast v6, Ljava/lang/Boolean;

    #@134
    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    #@137
    move-result v6

    #@138
    iput-boolean v6, v7, Landroid/net/NetworkMisc;->acceptUnvalidated:Z

    #@13a
    goto/16 :goto_0

    #@13c
    .line 2089
    :cond_7
    const-string/jumbo v6, "ERROR: already-connected network explicitly selected."

    #@13f
    invoke-static {v6}, Lcom/android/server/ConnectivityService;->-wrap19(Ljava/lang/String;)V

    #@142
    goto :goto_2

    #@143
    .line 2096
    :pswitch_8
    iget-object v6, p0, Lcom/android/server/ConnectivityService$NetworkStateTrackerHandler;->this$0:Lcom/android/server/ConnectivityService;

    #@145
    invoke-static {v6}, Lcom/android/server/ConnectivityService;->-get0(Lcom/android/server/ConnectivityService;)Lcom/android/server/connectivity/KeepaliveTracker;

    #@148
    move-result-object v6

    #@149
    invoke-virtual {v6, v2, p1}, Lcom/android/server/connectivity/KeepaliveTracker;->handleEventPacketKeepalive(Lcom/android/server/connectivity/NetworkAgentInfo;Landroid/os/Message;)V

    #@14c
    goto/16 :goto_0

    #@14e
    .line 2031
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
    .locals 14
    .param p1, "msg"    # Landroid/os/Message;

    #@0
    .prologue
    const/4 v13, 0x1

    #@1
    const/4 v3, 0x0

    #@2
    const/4 v1, 0x0

    #@3
    .line 2103
    iget v0, p1, Landroid/os/Message;->what:I

    #@5
    sparse-switch v0, :sswitch_data_0

    #@8
    .line 2105
    return v1

    #@9
    .line 2108
    :sswitch_0
    iget-object v0, p0, Lcom/android/server/ConnectivityService$NetworkStateTrackerHandler;->this$0:Lcom/android/server/ConnectivityService;

    #@b
    invoke-static {v0}, Lcom/android/server/ConnectivityService;->-get7(Lcom/android/server/ConnectivityService;)Landroid/util/SparseArray;

    #@e
    move-result-object v3

    #@f
    monitor-enter v3

    #@10
    .line 2109
    :try_start_0
    iget-object v0, p0, Lcom/android/server/ConnectivityService$NetworkStateTrackerHandler;->this$0:Lcom/android/server/ConnectivityService;

    #@12
    invoke-static {v0}, Lcom/android/server/ConnectivityService;->-get7(Lcom/android/server/ConnectivityService;)Landroid/util/SparseArray;

    #@15
    move-result-object v0

    #@16
    iget v4, p1, Landroid/os/Message;->arg2:I

    #@18
    invoke-virtual {v0, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    #@1b
    move-result-object v8

    #@1c
    check-cast v8, Lcom/android/server/connectivity/NetworkAgentInfo;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1e
    .local v8, "nai":Lcom/android/server/connectivity/NetworkAgentInfo;
    monitor-exit v3

    #@1f
    .line 2111
    if-eqz v8, :cond_1

    #@21
    .line 2113
    iget v0, p1, Landroid/os/Message;->arg1:I

    #@23
    if-nez v0, :cond_2

    #@25
    const/4 v11, 0x1

    #@26
    .line 2114
    .local v11, "valid":Z
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    #@28
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@2b
    invoke-virtual {v8}, Lcom/android/server/connectivity/NetworkAgentInfo;->name()Ljava/lang/String;

    #@2e
    move-result-object v3

    #@2f
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@32
    move-result-object v0

    #@33
    const-string/jumbo v3, " validation "

    #@36
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@39
    move-result-object v3

    #@3a
    if-eqz v11, :cond_3

    #@3c
    const-string/jumbo v0, "passed"

    #@3f
    :goto_1
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@42
    move-result-object v3

    #@43
    .line 2115
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@45
    if-nez v0, :cond_4

    #@47
    const-string/jumbo v0, ""

    #@4a
    .line 2114
    :goto_2
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4d
    move-result-object v0

    #@4e
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@51
    move-result-object v0

    #@52
    invoke-static {v0}, Lcom/android/server/ConnectivityService;->-wrap18(Ljava/lang/String;)V

    #@55
    .line 2116
    iget-boolean v0, v8, Lcom/android/server/connectivity/NetworkAgentInfo;->lastValidated:Z

    #@57
    if-eq v11, v0, :cond_0

    #@59
    .line 2117
    invoke-virtual {v8}, Lcom/android/server/connectivity/NetworkAgentInfo;->getCurrentScore()I

    #@5c
    move-result v9

    #@5d
    .line 2118
    .local v9, "oldScore":I
    iput-boolean v11, v8, Lcom/android/server/connectivity/NetworkAgentInfo;->lastValidated:Z

    #@5f
    .line 2119
    iget-boolean v0, v8, Lcom/android/server/connectivity/NetworkAgentInfo;->everValidated:Z

    #@61
    or-int/2addr v0, v11

    #@62
    iput-boolean v0, v8, Lcom/android/server/connectivity/NetworkAgentInfo;->everValidated:Z

    #@64
    .line 2120
    iget-object v0, p0, Lcom/android/server/ConnectivityService$NetworkStateTrackerHandler;->this$0:Lcom/android/server/ConnectivityService;

    #@66
    iget-object v3, v8, Lcom/android/server/connectivity/NetworkAgentInfo;->networkCapabilities:Landroid/net/NetworkCapabilities;

    #@68
    invoke-static {v0, v8, v3}, Lcom/android/server/ConnectivityService;->-wrap29(Lcom/android/server/ConnectivityService;Lcom/android/server/connectivity/NetworkAgentInfo;Landroid/net/NetworkCapabilities;)V

    #@6b
    .line 2122
    invoke-virtual {v8}, Lcom/android/server/connectivity/NetworkAgentInfo;->getCurrentScore()I

    #@6e
    move-result v0

    #@6f
    if-eq v9, v0, :cond_0

    #@71
    iget-object v0, p0, Lcom/android/server/ConnectivityService$NetworkStateTrackerHandler;->this$0:Lcom/android/server/ConnectivityService;

    #@73
    invoke-static {v0, v8}, Lcom/android/server/ConnectivityService;->-wrap27(Lcom/android/server/ConnectivityService;Lcom/android/server/connectivity/NetworkAgentInfo;)V

    #@76
    .line 2124
    .end local v9    # "oldScore":I
    :cond_0
    iget-object v0, p0, Lcom/android/server/ConnectivityService$NetworkStateTrackerHandler;->this$0:Lcom/android/server/ConnectivityService;

    #@78
    invoke-static {v0, v8}, Lcom/android/server/ConnectivityService;->-wrap30(Lcom/android/server/ConnectivityService;Lcom/android/server/connectivity/NetworkAgentInfo;)V

    #@7b
    .line 2126
    new-instance v10, Landroid/os/Bundle;

    #@7d
    invoke-direct {v10}, Landroid/os/Bundle;-><init>()V

    #@80
    .line 2127
    .local v10, "redirectUrlBundle":Landroid/os/Bundle;
    sget-object v3, Landroid/net/NetworkAgent;->REDIRECT_URL_KEY:Ljava/lang/String;

    #@82
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@84
    check-cast v0, Ljava/lang/String;

    #@86
    invoke-virtual {v10, v3, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    #@89
    .line 2128
    iget-object v3, v8, Lcom/android/server/connectivity/NetworkAgentInfo;->asyncChannel:Lcom/android/internal/util/AsyncChannel;

    #@8b
    .line 2130
    if-eqz v11, :cond_5

    #@8d
    move v0, v13

    #@8e
    .line 2129
    :goto_3
    const v4, 0x81007

    #@91
    .line 2128
    invoke-virtual {v3, v4, v0, v1, v10}, Lcom/android/internal/util/AsyncChannel;->sendMessage(IIILjava/lang/Object;)V

    #@94
    .line 2169
    .end local v10    # "redirectUrlBundle":Landroid/os/Bundle;
    .end local v11    # "valid":Z
    :cond_1
    :goto_4
    return v13

    #@95
    .line 2108
    .end local v8    # "nai":Lcom/android/server/connectivity/NetworkAgentInfo;
    :catchall_0
    move-exception v0

    #@96
    monitor-exit v3

    #@97
    throw v0

    #@98
    .line 2113
    .restart local v8    # "nai":Lcom/android/server/connectivity/NetworkAgentInfo;
    :cond_2
    const/4 v11, 0x0

    #@99
    .restart local v11    # "valid":Z
    goto :goto_0

    #@9a
    .line 2114
    :cond_3
    const-string/jumbo v0, "failed"

    #@9d
    goto :goto_1

    #@9e
    .line 2115
    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    #@a0
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@a3
    const-string/jumbo v4, " with redirect to "

    #@a6
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a9
    move-result-object v4

    #@aa
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@ac
    check-cast v0, Ljava/lang/String;

    #@ae
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b1
    move-result-object v0

    #@b2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@b5
    move-result-object v0

    #@b6
    goto :goto_2

    #@b7
    .line 2130
    .restart local v10    # "redirectUrlBundle":Landroid/os/Bundle;
    :cond_5
    const/4 v0, 0x2

    #@b8
    goto :goto_3

    #@b9
    .line 2136
    .end local v8    # "nai":Lcom/android/server/connectivity/NetworkAgentInfo;
    .end local v10    # "redirectUrlBundle":Landroid/os/Bundle;
    .end local v11    # "valid":Z
    :sswitch_1
    iget-object v8, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@bb
    check-cast v8, Lcom/android/server/connectivity/NetworkAgentInfo;

    #@bd
    .line 2137
    .restart local v8    # "nai":Lcom/android/server/connectivity/NetworkAgentInfo;
    iget-object v0, p0, Lcom/android/server/ConnectivityService$NetworkStateTrackerHandler;->this$0:Lcom/android/server/ConnectivityService;

    #@bf
    iget v1, p1, Landroid/os/Message;->what:I

    #@c1
    invoke-static {v0, v8, v1}, Lcom/android/server/ConnectivityService;->-wrap1(Lcom/android/server/ConnectivityService;Lcom/android/server/connectivity/NetworkAgentInfo;I)Z

    #@c4
    move-result v0

    #@c5
    if-eqz v0, :cond_1

    #@c7
    .line 2138
    iget-object v0, p0, Lcom/android/server/ConnectivityService$NetworkStateTrackerHandler;->this$0:Lcom/android/server/ConnectivityService;

    #@c9
    invoke-static {v0, v8}, Lcom/android/server/ConnectivityService;->-wrap7(Lcom/android/server/ConnectivityService;Lcom/android/server/connectivity/NetworkAgentInfo;)V

    #@cc
    goto :goto_4

    #@cd
    .line 2143
    .end local v8    # "nai":Lcom/android/server/connectivity/NetworkAgentInfo;
    :sswitch_2
    iget v2, p1, Landroid/os/Message;->arg2:I

    #@cf
    .line 2144
    .local v2, "netId":I
    iget v0, p1, Landroid/os/Message;->arg1:I

    #@d1
    if-eqz v0, :cond_7

    #@d3
    const/4 v12, 0x1

    #@d4
    .line 2146
    .local v12, "visible":Z
    :goto_5
    iget-object v0, p0, Lcom/android/server/ConnectivityService$NetworkStateTrackerHandler;->this$0:Lcom/android/server/ConnectivityService;

    #@d6
    invoke-static {v0}, Lcom/android/server/ConnectivityService;->-get7(Lcom/android/server/ConnectivityService;)Landroid/util/SparseArray;

    #@d9
    move-result-object v4

    #@da
    monitor-enter v4

    #@db
    .line 2147
    :try_start_1
    iget-object v0, p0, Lcom/android/server/ConnectivityService$NetworkStateTrackerHandler;->this$0:Lcom/android/server/ConnectivityService;

    #@dd
    invoke-static {v0}, Lcom/android/server/ConnectivityService;->-get7(Lcom/android/server/ConnectivityService;)Landroid/util/SparseArray;

    #@e0
    move-result-object v0

    #@e1
    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    #@e4
    move-result-object v8

    #@e5
    check-cast v8, Lcom/android/server/connectivity/NetworkAgentInfo;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    #@e7
    .restart local v8    # "nai":Lcom/android/server/connectivity/NetworkAgentInfo;
    monitor-exit v4

    #@e8
    .line 2150
    if-eqz v8, :cond_6

    #@ea
    iget-boolean v0, v8, Lcom/android/server/connectivity/NetworkAgentInfo;->lastCaptivePortalDetected:Z

    #@ec
    if-eq v12, v0, :cond_6

    #@ee
    .line 2151
    iput-boolean v12, v8, Lcom/android/server/connectivity/NetworkAgentInfo;->lastCaptivePortalDetected:Z

    #@f0
    .line 2152
    iget-boolean v0, v8, Lcom/android/server/connectivity/NetworkAgentInfo;->everCaptivePortalDetected:Z

    #@f2
    or-int/2addr v0, v12

    #@f3
    iput-boolean v0, v8, Lcom/android/server/connectivity/NetworkAgentInfo;->everCaptivePortalDetected:Z

    #@f5
    .line 2153
    iget-object v0, p0, Lcom/android/server/ConnectivityService$NetworkStateTrackerHandler;->this$0:Lcom/android/server/ConnectivityService;

    #@f7
    iget-object v4, v8, Lcom/android/server/connectivity/NetworkAgentInfo;->networkCapabilities:Landroid/net/NetworkCapabilities;

    #@f9
    invoke-static {v0, v8, v4}, Lcom/android/server/ConnectivityService;->-wrap29(Lcom/android/server/ConnectivityService;Lcom/android/server/connectivity/NetworkAgentInfo;Landroid/net/NetworkCapabilities;)V

    #@fc
    .line 2155
    :cond_6
    if-nez v12, :cond_8

    #@fe
    .line 2156
    iget-object v0, p0, Lcom/android/server/ConnectivityService$NetworkStateTrackerHandler;->this$0:Lcom/android/server/ConnectivityService;

    #@100
    move v4, v1

    #@101
    move-object v5, v3

    #@102
    move-object v6, v3

    #@103
    move v7, v1

    #@104
    invoke-static/range {v0 .. v7}, Lcom/android/server/ConnectivityService;->-wrap28(Lcom/android/server/ConnectivityService;ZILcom/android/server/ConnectivityService$NotificationType;ILjava/lang/String;Landroid/app/PendingIntent;Z)V

    #@107
    goto :goto_4

    #@108
    .line 2144
    .end local v8    # "nai":Lcom/android/server/connectivity/NetworkAgentInfo;
    .end local v12    # "visible":Z
    :cond_7
    const/4 v12, 0x0

    #@109
    .restart local v12    # "visible":Z
    goto :goto_5

    #@10a
    .line 2146
    :catchall_1
    move-exception v0

    #@10b
    monitor-exit v4

    #@10c
    throw v0

    #@10d
    .line 2158
    .restart local v8    # "nai":Lcom/android/server/connectivity/NetworkAgentInfo;
    :cond_8
    if-nez v8, :cond_9

    #@10f
    .line 2159
    const-string/jumbo v0, "EVENT_PROVISIONING_NOTIFICATION from unknown NetworkMonitor"

    #@112
    invoke-static {v0}, Lcom/android/server/ConnectivityService;->-wrap19(Ljava/lang/String;)V

    #@115
    goto/16 :goto_4

    #@117
    .line 2162
    :cond_9
    iget-object v0, p0, Lcom/android/server/ConnectivityService$NetworkStateTrackerHandler;->this$0:Lcom/android/server/ConnectivityService;

    #@119
    sget-object v3, Lcom/android/server/ConnectivityService$NotificationType;->SIGN_IN:Lcom/android/server/ConnectivityService$NotificationType;

    #@11b
    .line 2163
    iget-object v1, v8, Lcom/android/server/connectivity/NetworkAgentInfo;->networkInfo:Landroid/net/NetworkInfo;

    #@11d
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getType()I

    #@120
    move-result v4

    #@121
    iget-object v1, v8, Lcom/android/server/connectivity/NetworkAgentInfo;->networkInfo:Landroid/net/NetworkInfo;

    #@123
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getExtraInfo()Ljava/lang/String;

    #@126
    move-result-object v5

    #@127
    .line 2164
    iget-object v6, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@129
    check-cast v6, Landroid/app/PendingIntent;

    #@12b
    iget-object v1, v8, Lcom/android/server/connectivity/NetworkAgentInfo;->networkMisc:Landroid/net/NetworkMisc;

    #@12d
    iget-boolean v7, v1, Landroid/net/NetworkMisc;->explicitlySelected:Z

    #@12f
    move v1, v13

    #@130
    .line 2162
    invoke-static/range {v0 .. v7}, Lcom/android/server/ConnectivityService;->-wrap28(Lcom/android/server/ConnectivityService;ZILcom/android/server/ConnectivityService$NotificationType;ILjava/lang/String;Landroid/app/PendingIntent;Z)V

    #@133
    goto/16 :goto_4

    #@135
    .line 2103
    nop

    #@136
    :sswitch_data_0
    .sparse-switch
        0x82002 -> :sswitch_0
        0x82005 -> :sswitch_1
        0x8200a -> :sswitch_2
    .end sparse-switch
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .param p1, "msg"    # Landroid/os/Message;

    #@0
    .prologue
    .line 2174
    invoke-direct {p0, p1}, Lcom/android/server/ConnectivityService$NetworkStateTrackerHandler;->maybeHandleAsyncChannelMessage(Landroid/os/Message;)Z

    #@3
    move-result v0

    #@4
    if-nez v0, :cond_0

    #@6
    invoke-direct {p0, p1}, Lcom/android/server/ConnectivityService$NetworkStateTrackerHandler;->maybeHandleNetworkMonitorMessage(Landroid/os/Message;)Z

    #@9
    move-result v0

    #@a
    if-eqz v0, :cond_1

    #@c
    .line 2173
    :cond_0
    :goto_0
    return-void

    #@d
    .line 2175
    :cond_1
    invoke-direct {p0, p1}, Lcom/android/server/ConnectivityService$NetworkStateTrackerHandler;->maybeHandleNetworkAgentMessage(Landroid/os/Message;)V

    #@10
    goto :goto_0
.end method
