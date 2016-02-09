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
    .line 1895
    iput-object p1, p0, Lcom/android/server/ConnectivityService$NetworkStateTrackerHandler;->this$0:Lcom/android/server/ConnectivityService;

    #@2
    .line 1896
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    #@5
    .line 1895
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 18
    .param p1, "msg"    # Landroid/os/Message;

    #@0
    .prologue
    .line 1902
    move-object/from16 v0, p1

    #@2
    iget v1, v0, Landroid/os/Message;->what:I

    #@4
    sparse-switch v1, :sswitch_data_0

    #@7
    .line 1900
    :cond_0
    :goto_0
    return-void

    #@8
    .line 1904
    :sswitch_0
    move-object/from16 v0, p0

    #@a
    iget-object v1, v0, Lcom/android/server/ConnectivityService$NetworkStateTrackerHandler;->this$0:Lcom/android/server/ConnectivityService;

    #@c
    move-object/from16 v0, p1

    #@e
    invoke-static {v1, v0}, Lcom/android/server/ConnectivityService;->-wrap4(Lcom/android/server/ConnectivityService;Landroid/os/Message;)V

    #@11
    goto :goto_0

    #@12
    .line 1908
    :sswitch_1
    move-object/from16 v0, p0

    #@14
    iget-object v1, v0, Lcom/android/server/ConnectivityService$NetworkStateTrackerHandler;->this$0:Lcom/android/server/ConnectivityService;

    #@16
    invoke-static {v1}, Lcom/android/server/ConnectivityService;->-get6(Lcom/android/server/ConnectivityService;)Ljava/util/HashMap;

    #@19
    move-result-object v1

    #@1a
    move-object/from16 v0, p1

    #@1c
    iget-object v2, v0, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    #@1e
    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@21
    move-result-object v11

    #@22
    check-cast v11, Lcom/android/server/connectivity/NetworkAgentInfo;

    #@24
    .line 1909
    .local v11, "nai":Lcom/android/server/connectivity/NetworkAgentInfo;
    if-eqz v11, :cond_0

    #@26
    iget-object v1, v11, Lcom/android/server/connectivity/NetworkAgentInfo;->asyncChannel:Lcom/android/internal/util/AsyncChannel;

    #@28
    invoke-virtual {v1}, Lcom/android/internal/util/AsyncChannel;->disconnect()V

    #@2b
    goto :goto_0

    #@2c
    .line 1913
    .end local v11    # "nai":Lcom/android/server/connectivity/NetworkAgentInfo;
    :sswitch_2
    move-object/from16 v0, p0

    #@2e
    iget-object v1, v0, Lcom/android/server/ConnectivityService$NetworkStateTrackerHandler;->this$0:Lcom/android/server/ConnectivityService;

    #@30
    move-object/from16 v0, p1

    #@32
    invoke-static {v1, v0}, Lcom/android/server/ConnectivityService;->-wrap3(Lcom/android/server/ConnectivityService;Landroid/os/Message;)V

    #@35
    goto :goto_0

    #@36
    .line 1917
    :sswitch_3
    move-object/from16 v0, p0

    #@38
    iget-object v1, v0, Lcom/android/server/ConnectivityService$NetworkStateTrackerHandler;->this$0:Lcom/android/server/ConnectivityService;

    #@3a
    invoke-static {v1}, Lcom/android/server/ConnectivityService;->-get6(Lcom/android/server/ConnectivityService;)Ljava/util/HashMap;

    #@3d
    move-result-object v1

    #@3e
    move-object/from16 v0, p1

    #@40
    iget-object v2, v0, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    #@42
    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@45
    move-result-object v11

    #@46
    check-cast v11, Lcom/android/server/connectivity/NetworkAgentInfo;

    #@48
    .line 1918
    .restart local v11    # "nai":Lcom/android/server/connectivity/NetworkAgentInfo;
    if-nez v11, :cond_1

    #@4a
    .line 1919
    const-string/jumbo v1, "EVENT_NETWORK_CAPABILITIES_CHANGED from unknown NetworkAgent"

    #@4d
    invoke-static {v1}, Lcom/android/server/ConnectivityService;->-wrap18(Ljava/lang/String;)V

    #@50
    goto :goto_0

    #@51
    .line 1922
    :cond_1
    move-object/from16 v0, p1

    #@53
    iget-object v12, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@55
    check-cast v12, Landroid/net/NetworkCapabilities;

    #@57
    .line 1923
    .local v12, "networkCapabilities":Landroid/net/NetworkCapabilities;
    const/16 v1, 0x11

    #@59
    invoke-virtual {v12, v1}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    #@5c
    move-result v1

    #@5d
    if-nez v1, :cond_2

    #@5f
    .line 1924
    const/16 v1, 0x10

    #@61
    invoke-virtual {v12, v1}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    #@64
    move-result v1

    #@65
    .line 1923
    if-eqz v1, :cond_3

    #@67
    .line 1925
    :cond_2
    const-string/jumbo v1, "ConnectivityService"

    #@6a
    new-instance v2, Ljava/lang/StringBuilder;

    #@6c
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@6f
    const-string/jumbo v4, "BUG: "

    #@72
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@75
    move-result-object v2

    #@76
    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@79
    move-result-object v2

    #@7a
    const-string/jumbo v4, " has stateful capability."

    #@7d
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@80
    move-result-object v2

    #@81
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@84
    move-result-object v2

    #@85
    invoke-static {v1, v2}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    #@88
    .line 1927
    :cond_3
    move-object/from16 v0, p0

    #@8a
    iget-object v1, v0, Lcom/android/server/ConnectivityService$NetworkStateTrackerHandler;->this$0:Lcom/android/server/ConnectivityService;

    #@8c
    invoke-static {v1, v11, v12}, Lcom/android/server/ConnectivityService;->-wrap26(Lcom/android/server/ConnectivityService;Lcom/android/server/connectivity/NetworkAgentInfo;Landroid/net/NetworkCapabilities;)V

    #@8f
    goto/16 :goto_0

    #@91
    .line 1932
    .end local v11    # "nai":Lcom/android/server/connectivity/NetworkAgentInfo;
    .end local v12    # "networkCapabilities":Landroid/net/NetworkCapabilities;
    :sswitch_4
    move-object/from16 v0, p0

    #@93
    iget-object v1, v0, Lcom/android/server/ConnectivityService$NetworkStateTrackerHandler;->this$0:Lcom/android/server/ConnectivityService;

    #@95
    invoke-static {v1}, Lcom/android/server/ConnectivityService;->-get6(Lcom/android/server/ConnectivityService;)Ljava/util/HashMap;

    #@98
    move-result-object v1

    #@99
    move-object/from16 v0, p1

    #@9b
    iget-object v2, v0, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    #@9d
    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@a0
    move-result-object v11

    #@a1
    check-cast v11, Lcom/android/server/connectivity/NetworkAgentInfo;

    #@a3
    .line 1933
    .restart local v11    # "nai":Lcom/android/server/connectivity/NetworkAgentInfo;
    if-nez v11, :cond_4

    #@a5
    .line 1934
    const-string/jumbo v1, "NetworkAgent not found for EVENT_NETWORK_PROPERTIES_CHANGED"

    #@a8
    invoke-static {v1}, Lcom/android/server/ConnectivityService;->-wrap18(Ljava/lang/String;)V

    #@ab
    goto/16 :goto_0

    #@ad
    .line 1940
    :cond_4
    iget-object v13, v11, Lcom/android/server/connectivity/NetworkAgentInfo;->linkProperties:Landroid/net/LinkProperties;

    #@af
    .line 1941
    .local v13, "oldLp":Landroid/net/LinkProperties;
    monitor-enter v11

    #@b0
    .line 1942
    :try_start_0
    move-object/from16 v0, p1

    #@b2
    iget-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@b4
    check-cast v1, Landroid/net/LinkProperties;

    #@b6
    iput-object v1, v11, Lcom/android/server/connectivity/NetworkAgentInfo;->linkProperties:Landroid/net/LinkProperties;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@b8
    monitor-exit v11

    #@b9
    .line 1944
    iget-boolean v1, v11, Lcom/android/server/connectivity/NetworkAgentInfo;->created:Z

    #@bb
    if-eqz v1, :cond_0

    #@bd
    move-object/from16 v0, p0

    #@bf
    iget-object v1, v0, Lcom/android/server/ConnectivityService$NetworkStateTrackerHandler;->this$0:Lcom/android/server/ConnectivityService;

    #@c1
    invoke-static {v1, v11, v13}, Lcom/android/server/ConnectivityService;->-wrap28(Lcom/android/server/ConnectivityService;Lcom/android/server/connectivity/NetworkAgentInfo;Landroid/net/LinkProperties;)V

    #@c4
    goto/16 :goto_0

    #@c6
    .line 1941
    :catchall_0
    move-exception v1

    #@c7
    monitor-exit v11

    #@c8
    throw v1

    #@c9
    .line 1949
    .end local v11    # "nai":Lcom/android/server/connectivity/NetworkAgentInfo;
    .end local v13    # "oldLp":Landroid/net/LinkProperties;
    :sswitch_5
    move-object/from16 v0, p0

    #@cb
    iget-object v1, v0, Lcom/android/server/ConnectivityService$NetworkStateTrackerHandler;->this$0:Lcom/android/server/ConnectivityService;

    #@cd
    invoke-static {v1}, Lcom/android/server/ConnectivityService;->-get6(Lcom/android/server/ConnectivityService;)Ljava/util/HashMap;

    #@d0
    move-result-object v1

    #@d1
    move-object/from16 v0, p1

    #@d3
    iget-object v2, v0, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    #@d5
    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@d8
    move-result-object v11

    #@d9
    check-cast v11, Lcom/android/server/connectivity/NetworkAgentInfo;

    #@db
    .line 1950
    .restart local v11    # "nai":Lcom/android/server/connectivity/NetworkAgentInfo;
    if-nez v11, :cond_5

    #@dd
    .line 1951
    const-string/jumbo v1, "EVENT_NETWORK_INFO_CHANGED from unknown NetworkAgent"

    #@e0
    invoke-static {v1}, Lcom/android/server/ConnectivityService;->-wrap18(Ljava/lang/String;)V

    #@e3
    goto/16 :goto_0

    #@e5
    .line 1954
    :cond_5
    move-object/from16 v0, p1

    #@e7
    iget-object v10, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@e9
    check-cast v10, Landroid/net/NetworkInfo;

    #@eb
    .line 1955
    .local v10, "info":Landroid/net/NetworkInfo;
    move-object/from16 v0, p0

    #@ed
    iget-object v1, v0, Lcom/android/server/ConnectivityService$NetworkStateTrackerHandler;->this$0:Lcom/android/server/ConnectivityService;

    #@ef
    invoke-static {v1, v11, v10}, Lcom/android/server/ConnectivityService;->-wrap29(Lcom/android/server/ConnectivityService;Lcom/android/server/connectivity/NetworkAgentInfo;Landroid/net/NetworkInfo;)V

    #@f2
    goto/16 :goto_0

    #@f4
    .line 1959
    .end local v10    # "info":Landroid/net/NetworkInfo;
    .end local v11    # "nai":Lcom/android/server/connectivity/NetworkAgentInfo;
    :sswitch_6
    move-object/from16 v0, p0

    #@f6
    iget-object v1, v0, Lcom/android/server/ConnectivityService$NetworkStateTrackerHandler;->this$0:Lcom/android/server/ConnectivityService;

    #@f8
    invoke-static {v1}, Lcom/android/server/ConnectivityService;->-get6(Lcom/android/server/ConnectivityService;)Ljava/util/HashMap;

    #@fb
    move-result-object v1

    #@fc
    move-object/from16 v0, p1

    #@fe
    iget-object v2, v0, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    #@100
    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@103
    move-result-object v11

    #@104
    check-cast v11, Lcom/android/server/connectivity/NetworkAgentInfo;

    #@106
    .line 1960
    .restart local v11    # "nai":Lcom/android/server/connectivity/NetworkAgentInfo;
    if-nez v11, :cond_6

    #@108
    .line 1961
    const-string/jumbo v1, "EVENT_NETWORK_SCORE_CHANGED from unknown NetworkAgent"

    #@10b
    invoke-static {v1}, Lcom/android/server/ConnectivityService;->-wrap18(Ljava/lang/String;)V

    #@10e
    goto/16 :goto_0

    #@110
    .line 1964
    :cond_6
    move-object/from16 v0, p1

    #@112
    iget-object v15, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@114
    check-cast v15, Ljava/lang/Integer;

    #@116
    .line 1965
    .local v15, "score":Ljava/lang/Integer;
    if-eqz v15, :cond_0

    #@118
    move-object/from16 v0, p0

    #@11a
    iget-object v1, v0, Lcom/android/server/ConnectivityService$NetworkStateTrackerHandler;->this$0:Lcom/android/server/ConnectivityService;

    #@11c
    invoke-virtual {v15}, Ljava/lang/Integer;->intValue()I

    #@11f
    move-result v2

    #@120
    invoke-static {v1, v11, v2}, Lcom/android/server/ConnectivityService;->-wrap30(Lcom/android/server/ConnectivityService;Lcom/android/server/connectivity/NetworkAgentInfo;I)V

    #@123
    goto/16 :goto_0

    #@125
    .line 1969
    .end local v11    # "nai":Lcom/android/server/connectivity/NetworkAgentInfo;
    .end local v15    # "score":Ljava/lang/Integer;
    :sswitch_7
    move-object/from16 v0, p0

    #@127
    iget-object v1, v0, Lcom/android/server/ConnectivityService$NetworkStateTrackerHandler;->this$0:Lcom/android/server/ConnectivityService;

    #@129
    invoke-static {v1}, Lcom/android/server/ConnectivityService;->-get6(Lcom/android/server/ConnectivityService;)Ljava/util/HashMap;

    #@12c
    move-result-object v1

    #@12d
    move-object/from16 v0, p1

    #@12f
    iget-object v2, v0, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    #@131
    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@134
    move-result-object v11

    #@135
    check-cast v11, Lcom/android/server/connectivity/NetworkAgentInfo;

    #@137
    .line 1970
    .restart local v11    # "nai":Lcom/android/server/connectivity/NetworkAgentInfo;
    if-nez v11, :cond_7

    #@139
    .line 1971
    const-string/jumbo v1, "EVENT_UID_RANGES_ADDED from unknown NetworkAgent"

    #@13c
    invoke-static {v1}, Lcom/android/server/ConnectivityService;->-wrap18(Ljava/lang/String;)V

    #@13f
    goto/16 :goto_0

    #@141
    .line 1975
    :cond_7
    :try_start_1
    move-object/from16 v0, p0

    #@143
    iget-object v1, v0, Lcom/android/server/ConnectivityService$NetworkStateTrackerHandler;->this$0:Lcom/android/server/ConnectivityService;

    #@145
    invoke-static {v1}, Lcom/android/server/ConnectivityService;->-get5(Lcom/android/server/ConnectivityService;)Landroid/os/INetworkManagementService;

    #@148
    move-result-object v2

    #@149
    iget-object v1, v11, Lcom/android/server/connectivity/NetworkAgentInfo;->network:Landroid/net/Network;

    #@14b
    iget v4, v1, Landroid/net/Network;->netId:I

    #@14d
    move-object/from16 v0, p1

    #@14f
    iget-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@151
    check-cast v1, [Landroid/net/UidRange;

    #@153
    invoke-interface {v2, v4, v1}, Landroid/os/INetworkManagementService;->addVpnUidRanges(I[Landroid/net/UidRange;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    #@156
    goto/16 :goto_0

    #@158
    .line 1976
    :catch_0
    move-exception v9

    #@159
    .line 1978
    .local v9, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/StringBuilder;

    #@15b
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@15e
    const-string/jumbo v2, "Exception in addVpnUidRanges: "

    #@161
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@164
    move-result-object v1

    #@165
    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@168
    move-result-object v1

    #@169
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@16c
    move-result-object v1

    #@16d
    invoke-static {v1}, Lcom/android/server/ConnectivityService;->-wrap18(Ljava/lang/String;)V

    #@170
    goto/16 :goto_0

    #@172
    .line 1983
    .end local v9    # "e":Ljava/lang/Exception;
    .end local v11    # "nai":Lcom/android/server/connectivity/NetworkAgentInfo;
    :sswitch_8
    move-object/from16 v0, p0

    #@174
    iget-object v1, v0, Lcom/android/server/ConnectivityService$NetworkStateTrackerHandler;->this$0:Lcom/android/server/ConnectivityService;

    #@176
    invoke-static {v1}, Lcom/android/server/ConnectivityService;->-get6(Lcom/android/server/ConnectivityService;)Ljava/util/HashMap;

    #@179
    move-result-object v1

    #@17a
    move-object/from16 v0, p1

    #@17c
    iget-object v2, v0, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    #@17e
    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@181
    move-result-object v11

    #@182
    check-cast v11, Lcom/android/server/connectivity/NetworkAgentInfo;

    #@184
    .line 1984
    .restart local v11    # "nai":Lcom/android/server/connectivity/NetworkAgentInfo;
    if-nez v11, :cond_8

    #@186
    .line 1985
    const-string/jumbo v1, "EVENT_UID_RANGES_REMOVED from unknown NetworkAgent"

    #@189
    invoke-static {v1}, Lcom/android/server/ConnectivityService;->-wrap18(Ljava/lang/String;)V

    #@18c
    goto/16 :goto_0

    #@18e
    .line 1989
    :cond_8
    :try_start_2
    move-object/from16 v0, p0

    #@190
    iget-object v1, v0, Lcom/android/server/ConnectivityService$NetworkStateTrackerHandler;->this$0:Lcom/android/server/ConnectivityService;

    #@192
    invoke-static {v1}, Lcom/android/server/ConnectivityService;->-get5(Lcom/android/server/ConnectivityService;)Landroid/os/INetworkManagementService;

    #@195
    move-result-object v2

    #@196
    iget-object v1, v11, Lcom/android/server/connectivity/NetworkAgentInfo;->network:Landroid/net/Network;

    #@198
    iget v4, v1, Landroid/net/Network;->netId:I

    #@19a
    move-object/from16 v0, p1

    #@19c
    iget-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@19e
    check-cast v1, [Landroid/net/UidRange;

    #@1a0
    invoke-interface {v2, v4, v1}, Landroid/os/INetworkManagementService;->removeVpnUidRanges(I[Landroid/net/UidRange;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    #@1a3
    goto/16 :goto_0

    #@1a5
    .line 1990
    :catch_1
    move-exception v9

    #@1a6
    .line 1992
    .restart local v9    # "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/StringBuilder;

    #@1a8
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@1ab
    const-string/jumbo v2, "Exception in removeVpnUidRanges: "

    #@1ae
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1b1
    move-result-object v1

    #@1b2
    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@1b5
    move-result-object v1

    #@1b6
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1b9
    move-result-object v1

    #@1ba
    invoke-static {v1}, Lcom/android/server/ConnectivityService;->-wrap18(Ljava/lang/String;)V

    #@1bd
    goto/16 :goto_0

    #@1bf
    .line 1997
    .end local v9    # "e":Ljava/lang/Exception;
    .end local v11    # "nai":Lcom/android/server/connectivity/NetworkAgentInfo;
    :sswitch_9
    move-object/from16 v0, p0

    #@1c1
    iget-object v1, v0, Lcom/android/server/ConnectivityService$NetworkStateTrackerHandler;->this$0:Lcom/android/server/ConnectivityService;

    #@1c3
    invoke-static {v1}, Lcom/android/server/ConnectivityService;->-get6(Lcom/android/server/ConnectivityService;)Ljava/util/HashMap;

    #@1c6
    move-result-object v1

    #@1c7
    move-object/from16 v0, p1

    #@1c9
    iget-object v2, v0, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    #@1cb
    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@1ce
    move-result-object v11

    #@1cf
    check-cast v11, Lcom/android/server/connectivity/NetworkAgentInfo;

    #@1d1
    .line 1998
    .restart local v11    # "nai":Lcom/android/server/connectivity/NetworkAgentInfo;
    if-nez v11, :cond_9

    #@1d3
    .line 1999
    const-string/jumbo v1, "EVENT_SET_EXPLICITLY_SELECTED from unknown NetworkAgent"

    #@1d6
    invoke-static {v1}, Lcom/android/server/ConnectivityService;->-wrap18(Ljava/lang/String;)V

    #@1d9
    goto/16 :goto_0

    #@1db
    .line 2002
    :cond_9
    iget-boolean v1, v11, Lcom/android/server/connectivity/NetworkAgentInfo;->created:Z

    #@1dd
    if-eqz v1, :cond_a

    #@1df
    iget-object v1, v11, Lcom/android/server/connectivity/NetworkAgentInfo;->networkMisc:Landroid/net/NetworkMisc;

    #@1e1
    iget-boolean v1, v1, Landroid/net/NetworkMisc;->explicitlySelected:Z

    #@1e3
    if-eqz v1, :cond_b

    #@1e5
    .line 2005
    :cond_a
    :goto_1
    iget-object v1, v11, Lcom/android/server/connectivity/NetworkAgentInfo;->networkMisc:Landroid/net/NetworkMisc;

    #@1e7
    const/4 v2, 0x1

    #@1e8
    iput-boolean v2, v1, Landroid/net/NetworkMisc;->explicitlySelected:Z

    #@1ea
    .line 2006
    iget-object v2, v11, Lcom/android/server/connectivity/NetworkAgentInfo;->networkMisc:Landroid/net/NetworkMisc;

    #@1ec
    move-object/from16 v0, p1

    #@1ee
    iget-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@1f0
    check-cast v1, Ljava/lang/Boolean;

    #@1f2
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    #@1f5
    move-result v1

    #@1f6
    iput-boolean v1, v2, Landroid/net/NetworkMisc;->acceptUnvalidated:Z

    #@1f8
    goto/16 :goto_0

    #@1fa
    .line 2003
    :cond_b
    const-string/jumbo v1, "ERROR: created network explicitly selected."

    #@1fd
    invoke-static {v1}, Lcom/android/server/ConnectivityService;->-wrap18(Ljava/lang/String;)V

    #@200
    goto :goto_1

    #@201
    .line 2010
    .end local v11    # "nai":Lcom/android/server/connectivity/NetworkAgentInfo;
    :sswitch_a
    move-object/from16 v0, p1

    #@203
    iget-object v11, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@205
    check-cast v11, Lcom/android/server/connectivity/NetworkAgentInfo;

    #@207
    .line 2011
    .restart local v11    # "nai":Lcom/android/server/connectivity/NetworkAgentInfo;
    move-object/from16 v0, p0

    #@209
    iget-object v1, v0, Lcom/android/server/ConnectivityService$NetworkStateTrackerHandler;->this$0:Lcom/android/server/ConnectivityService;

    #@20b
    const-string/jumbo v2, "EVENT_NETWORK_TESTED"

    #@20e
    invoke-static {v1, v11, v2}, Lcom/android/server/ConnectivityService;->-wrap1(Lcom/android/server/ConnectivityService;Lcom/android/server/connectivity/NetworkAgentInfo;Ljava/lang/String;)Z

    #@211
    move-result v1

    #@212
    if-eqz v1, :cond_0

    #@214
    .line 2013
    move-object/from16 v0, p1

    #@216
    iget v1, v0, Landroid/os/Message;->arg1:I

    #@218
    if-nez v1, :cond_d

    #@21a
    const/16 v16, 0x1

    #@21c
    .line 2014
    .local v16, "valid":Z
    :goto_2
    new-instance v1, Ljava/lang/StringBuilder;

    #@21e
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@221
    invoke-virtual {v11}, Lcom/android/server/connectivity/NetworkAgentInfo;->name()Ljava/lang/String;

    #@224
    move-result-object v2

    #@225
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@228
    move-result-object v1

    #@229
    const-string/jumbo v2, " validation "

    #@22c
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@22f
    move-result-object v2

    #@230
    if-eqz v16, :cond_e

    #@232
    const-string/jumbo v1, " passed"

    #@235
    :goto_3
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@238
    move-result-object v1

    #@239
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@23c
    move-result-object v1

    #@23d
    invoke-static {v1}, Lcom/android/server/ConnectivityService;->-wrap17(Ljava/lang/String;)V

    #@240
    .line 2015
    iget-boolean v1, v11, Lcom/android/server/connectivity/NetworkAgentInfo;->lastValidated:Z

    #@242
    move/from16 v0, v16

    #@244
    if-eq v0, v1, :cond_c

    #@246
    .line 2016
    invoke-virtual {v11}, Lcom/android/server/connectivity/NetworkAgentInfo;->getCurrentScore()I

    #@249
    move-result v14

    #@24a
    .line 2017
    .local v14, "oldScore":I
    move/from16 v0, v16

    #@24c
    iput-boolean v0, v11, Lcom/android/server/connectivity/NetworkAgentInfo;->lastValidated:Z

    #@24e
    .line 2018
    iget-boolean v1, v11, Lcom/android/server/connectivity/NetworkAgentInfo;->everValidated:Z

    #@250
    or-int v1, v1, v16

    #@252
    iput-boolean v1, v11, Lcom/android/server/connectivity/NetworkAgentInfo;->everValidated:Z

    #@254
    .line 2019
    move-object/from16 v0, p0

    #@256
    iget-object v1, v0, Lcom/android/server/ConnectivityService$NetworkStateTrackerHandler;->this$0:Lcom/android/server/ConnectivityService;

    #@258
    iget-object v2, v11, Lcom/android/server/connectivity/NetworkAgentInfo;->networkCapabilities:Landroid/net/NetworkCapabilities;

    #@25a
    invoke-static {v1, v11, v2}, Lcom/android/server/ConnectivityService;->-wrap26(Lcom/android/server/ConnectivityService;Lcom/android/server/connectivity/NetworkAgentInfo;Landroid/net/NetworkCapabilities;)V

    #@25d
    .line 2021
    invoke-virtual {v11}, Lcom/android/server/connectivity/NetworkAgentInfo;->getCurrentScore()I

    #@260
    move-result v1

    #@261
    if-eq v14, v1, :cond_c

    #@263
    move-object/from16 v0, p0

    #@265
    iget-object v1, v0, Lcom/android/server/ConnectivityService$NetworkStateTrackerHandler;->this$0:Lcom/android/server/ConnectivityService;

    #@267
    invoke-static {v1, v11}, Lcom/android/server/ConnectivityService;->-wrap24(Lcom/android/server/ConnectivityService;Lcom/android/server/connectivity/NetworkAgentInfo;)V

    #@26a
    .line 2023
    .end local v14    # "oldScore":I
    :cond_c
    move-object/from16 v0, p0

    #@26c
    iget-object v1, v0, Lcom/android/server/ConnectivityService$NetworkStateTrackerHandler;->this$0:Lcom/android/server/ConnectivityService;

    #@26e
    invoke-static {v1, v11}, Lcom/android/server/ConnectivityService;->-wrap27(Lcom/android/server/ConnectivityService;Lcom/android/server/connectivity/NetworkAgentInfo;)V

    #@271
    .line 2025
    iget-object v2, v11, Lcom/android/server/connectivity/NetworkAgentInfo;->asyncChannel:Lcom/android/internal/util/AsyncChannel;

    #@273
    .line 2027
    if-eqz v16, :cond_f

    #@275
    const/4 v1, 0x1

    #@276
    .line 2026
    :goto_4
    const v4, 0x81007

    #@279
    .line 2028
    const/4 v5, 0x0

    #@27a
    const/4 v6, 0x0

    #@27b
    .line 2025
    invoke-virtual {v2, v4, v1, v5, v6}, Lcom/android/internal/util/AsyncChannel;->sendMessage(IIILjava/lang/Object;)V

    #@27e
    goto/16 :goto_0

    #@280
    .line 2013
    .end local v16    # "valid":Z
    :cond_d
    const/16 v16, 0x0

    #@282
    .restart local v16    # "valid":Z
    goto :goto_2

    #@283
    .line 2014
    :cond_e
    const-string/jumbo v1, "failed"

    #@286
    goto :goto_3

    #@287
    .line 2027
    :cond_f
    const/4 v1, 0x2

    #@288
    goto :goto_4

    #@289
    .line 2033
    .end local v11    # "nai":Lcom/android/server/connectivity/NetworkAgentInfo;
    .end local v16    # "valid":Z
    :sswitch_b
    move-object/from16 v0, p1

    #@28b
    iget-object v11, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@28d
    check-cast v11, Lcom/android/server/connectivity/NetworkAgentInfo;

    #@28f
    .line 2034
    .restart local v11    # "nai":Lcom/android/server/connectivity/NetworkAgentInfo;
    move-object/from16 v0, p0

    #@291
    iget-object v1, v0, Lcom/android/server/ConnectivityService$NetworkStateTrackerHandler;->this$0:Lcom/android/server/ConnectivityService;

    #@293
    const-string/jumbo v2, "EVENT_NETWORK_LINGER_COMPLETE"

    #@296
    invoke-static {v1, v11, v2}, Lcom/android/server/ConnectivityService;->-wrap1(Lcom/android/server/ConnectivityService;Lcom/android/server/connectivity/NetworkAgentInfo;Ljava/lang/String;)Z

    #@299
    move-result v1

    #@29a
    if-eqz v1, :cond_0

    #@29c
    .line 2035
    move-object/from16 v0, p0

    #@29e
    iget-object v1, v0, Lcom/android/server/ConnectivityService$NetworkStateTrackerHandler;->this$0:Lcom/android/server/ConnectivityService;

    #@2a0
    invoke-static {v1, v11}, Lcom/android/server/ConnectivityService;->-wrap6(Lcom/android/server/ConnectivityService;Lcom/android/server/connectivity/NetworkAgentInfo;)V

    #@2a3
    goto/16 :goto_0

    #@2a5
    .line 2040
    .end local v11    # "nai":Lcom/android/server/connectivity/NetworkAgentInfo;
    :sswitch_c
    move-object/from16 v0, p1

    #@2a7
    iget v3, v0, Landroid/os/Message;->arg2:I

    #@2a9
    .line 2041
    .local v3, "netId":I
    move-object/from16 v0, p1

    #@2ab
    iget v1, v0, Landroid/os/Message;->arg1:I

    #@2ad
    if-eqz v1, :cond_11

    #@2af
    const/16 v17, 0x1

    #@2b1
    .line 2043
    .local v17, "visible":Z
    :goto_5
    move-object/from16 v0, p0

    #@2b3
    iget-object v1, v0, Lcom/android/server/ConnectivityService$NetworkStateTrackerHandler;->this$0:Lcom/android/server/ConnectivityService;

    #@2b5
    invoke-static {v1}, Lcom/android/server/ConnectivityService;->-get7(Lcom/android/server/ConnectivityService;)Landroid/util/SparseArray;

    #@2b8
    move-result-object v2

    #@2b9
    monitor-enter v2

    #@2ba
    .line 2044
    :try_start_3
    move-object/from16 v0, p0

    #@2bc
    iget-object v1, v0, Lcom/android/server/ConnectivityService$NetworkStateTrackerHandler;->this$0:Lcom/android/server/ConnectivityService;

    #@2be
    invoke-static {v1}, Lcom/android/server/ConnectivityService;->-get7(Lcom/android/server/ConnectivityService;)Landroid/util/SparseArray;

    #@2c1
    move-result-object v1

    #@2c2
    invoke-virtual {v1, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    #@2c5
    move-result-object v11

    #@2c6
    check-cast v11, Lcom/android/server/connectivity/NetworkAgentInfo;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    #@2c8
    .restart local v11    # "nai":Lcom/android/server/connectivity/NetworkAgentInfo;
    monitor-exit v2

    #@2c9
    .line 2047
    if-eqz v11, :cond_10

    #@2cb
    iget-boolean v1, v11, Lcom/android/server/connectivity/NetworkAgentInfo;->lastCaptivePortalDetected:Z

    #@2cd
    move/from16 v0, v17

    #@2cf
    if-eq v0, v1, :cond_10

    #@2d1
    .line 2048
    move/from16 v0, v17

    #@2d3
    iput-boolean v0, v11, Lcom/android/server/connectivity/NetworkAgentInfo;->lastCaptivePortalDetected:Z

    #@2d5
    .line 2049
    iget-boolean v1, v11, Lcom/android/server/connectivity/NetworkAgentInfo;->everCaptivePortalDetected:Z

    #@2d7
    or-int v1, v1, v17

    #@2d9
    iput-boolean v1, v11, Lcom/android/server/connectivity/NetworkAgentInfo;->everCaptivePortalDetected:Z

    #@2db
    .line 2050
    move-object/from16 v0, p0

    #@2dd
    iget-object v1, v0, Lcom/android/server/ConnectivityService$NetworkStateTrackerHandler;->this$0:Lcom/android/server/ConnectivityService;

    #@2df
    iget-object v2, v11, Lcom/android/server/connectivity/NetworkAgentInfo;->networkCapabilities:Landroid/net/NetworkCapabilities;

    #@2e1
    invoke-static {v1, v11, v2}, Lcom/android/server/ConnectivityService;->-wrap26(Lcom/android/server/ConnectivityService;Lcom/android/server/connectivity/NetworkAgentInfo;Landroid/net/NetworkCapabilities;)V

    #@2e4
    .line 2052
    :cond_10
    if-nez v17, :cond_12

    #@2e6
    .line 2053
    move-object/from16 v0, p0

    #@2e8
    iget-object v1, v0, Lcom/android/server/ConnectivityService$NetworkStateTrackerHandler;->this$0:Lcom/android/server/ConnectivityService;

    #@2ea
    const/4 v2, 0x0

    #@2eb
    const/4 v4, 0x0

    #@2ec
    const/4 v5, 0x0

    #@2ed
    const/4 v6, 0x0

    #@2ee
    const/4 v7, 0x0

    #@2ef
    const/4 v8, 0x0

    #@2f0
    invoke-static/range {v1 .. v8}, Lcom/android/server/ConnectivityService;->-wrap25(Lcom/android/server/ConnectivityService;ZILcom/android/server/ConnectivityService$NotificationType;ILjava/lang/String;Landroid/app/PendingIntent;Z)V

    #@2f3
    goto/16 :goto_0

    #@2f5
    .line 2041
    .end local v11    # "nai":Lcom/android/server/connectivity/NetworkAgentInfo;
    .end local v17    # "visible":Z
    :cond_11
    const/16 v17, 0x0

    #@2f7
    .restart local v17    # "visible":Z
    goto :goto_5

    #@2f8
    .line 2043
    :catchall_1
    move-exception v1

    #@2f9
    monitor-exit v2

    #@2fa
    throw v1

    #@2fb
    .line 2055
    .restart local v11    # "nai":Lcom/android/server/connectivity/NetworkAgentInfo;
    :cond_12
    if-nez v11, :cond_13

    #@2fd
    .line 2056
    const-string/jumbo v1, "EVENT_PROVISIONING_NOTIFICATION from unknown NetworkMonitor"

    #@300
    invoke-static {v1}, Lcom/android/server/ConnectivityService;->-wrap18(Ljava/lang/String;)V

    #@303
    goto/16 :goto_0

    #@305
    .line 2059
    :cond_13
    move-object/from16 v0, p0

    #@307
    iget-object v1, v0, Lcom/android/server/ConnectivityService$NetworkStateTrackerHandler;->this$0:Lcom/android/server/ConnectivityService;

    #@309
    sget-object v4, Lcom/android/server/ConnectivityService$NotificationType;->SIGN_IN:Lcom/android/server/ConnectivityService$NotificationType;

    #@30b
    .line 2060
    iget-object v2, v11, Lcom/android/server/connectivity/NetworkAgentInfo;->networkInfo:Landroid/net/NetworkInfo;

    #@30d
    invoke-virtual {v2}, Landroid/net/NetworkInfo;->getType()I

    #@310
    move-result v5

    #@311
    iget-object v2, v11, Lcom/android/server/connectivity/NetworkAgentInfo;->networkInfo:Landroid/net/NetworkInfo;

    #@313
    invoke-virtual {v2}, Landroid/net/NetworkInfo;->getExtraInfo()Ljava/lang/String;

    #@316
    move-result-object v6

    #@317
    .line 2061
    move-object/from16 v0, p1

    #@319
    iget-object v7, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@31b
    check-cast v7, Landroid/app/PendingIntent;

    #@31d
    iget-object v2, v11, Lcom/android/server/connectivity/NetworkAgentInfo;->networkMisc:Landroid/net/NetworkMisc;

    #@31f
    iget-boolean v8, v2, Landroid/net/NetworkMisc;->explicitlySelected:Z

    #@321
    .line 2059
    const/4 v2, 0x1

    #@322
    invoke-static/range {v1 .. v8}, Lcom/android/server/ConnectivityService;->-wrap25(Lcom/android/server/ConnectivityService;ZILcom/android/server/ConnectivityService$NotificationType;ILjava/lang/String;Landroid/app/PendingIntent;Z)V

    #@325
    goto/16 :goto_0

    #@327
    .line 1902
    nop

    #@328
    :sswitch_data_0
    .sparse-switch
        0x11000 -> :sswitch_0
        0x11003 -> :sswitch_1
        0x11004 -> :sswitch_2
        0x81001 -> :sswitch_5
        0x81002 -> :sswitch_3
        0x81003 -> :sswitch_4
        0x81004 -> :sswitch_6
        0x81005 -> :sswitch_7
        0x81006 -> :sswitch_8
        0x81008 -> :sswitch_9
        0x82002 -> :sswitch_a
        0x82005 -> :sswitch_b
        0x8200a -> :sswitch_c
    .end sparse-switch
.end method
