.class Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$P2pEnabledState;
.super Lcom/android/internal/util/State;
.source "WifiP2pServiceImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "P2pEnabledState"
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;


# direct methods
.method constructor <init>(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    #@0
    .prologue
    .line 1054
    iput-object p1, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$P2pEnabledState;->this$1:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    #@2
    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    #@5
    return-void
.end method


# virtual methods
.method public enter()V
    .locals 2

    #@0
    .prologue
    const/4 v1, 0x1

    #@1
    .line 1058
    iget-object v0, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$P2pEnabledState;->this$1:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    #@3
    invoke-static {v0, v1}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->-wrap29(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;Z)V

    #@6
    .line 1059
    iget-object v0, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$P2pEnabledState;->this$1:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    #@8
    iget-object v0, v0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->this$0:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;

    #@a
    invoke-static {v0}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->-get12(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;)Landroid/net/NetworkInfo;

    #@d
    move-result-object v0

    #@e
    invoke-virtual {v0, v1}, Landroid/net/NetworkInfo;->setIsAvailable(Z)V

    #@11
    .line 1060
    iget-object v0, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$P2pEnabledState;->this$1:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    #@13
    invoke-static {v0}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->-wrap26(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;)V

    #@16
    .line 1061
    iget-object v0, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$P2pEnabledState;->this$1:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    #@18
    invoke-static {v0}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->-wrap15(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;)V

    #@1b
    .line 1056
    return-void
.end method

.method public exit()V
    .locals 2

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 1296
    iget-object v0, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$P2pEnabledState;->this$1:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    #@3
    invoke-static {v0, v1}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->-wrap27(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;Z)V

    #@6
    .line 1297
    iget-object v0, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$P2pEnabledState;->this$1:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    #@8
    invoke-static {v0, v1}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->-wrap29(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;Z)V

    #@b
    .line 1298
    iget-object v0, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$P2pEnabledState;->this$1:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    #@d
    iget-object v0, v0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->this$0:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;

    #@f
    invoke-static {v0}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->-get12(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;)Landroid/net/NetworkInfo;

    #@12
    move-result-object v0

    #@13
    invoke-virtual {v0, v1}, Landroid/net/NetworkInfo;->setIsAvailable(Z)V

    #@16
    .line 1295
    return-void
.end method

.method public processMessage(Landroid/os/Message;)Z
    .locals 24
    .param p1, "message"    # Landroid/os/Message;

    #@0
    .prologue
    .line 1067
    move-object/from16 v0, p1

    #@2
    iget v0, v0, Landroid/os/Message;->what:I

    #@4
    move/from16 v20, v0

    #@6
    sparse-switch v20, :sswitch_data_0

    #@9
    .line 1289
    const/16 v20, 0x0

    #@b
    return v20

    #@c
    .line 1069
    :sswitch_0
    move-object/from16 v0, p0

    #@e
    iget-object v0, v0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$P2pEnabledState;->this$1:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    #@10
    move-object/from16 v20, v0

    #@12
    const-string/jumbo v21, "Unexpected loss of p2p socket connection"

    #@15
    invoke-virtual/range {v20 .. v21}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->loge(Ljava/lang/String;)V

    #@18
    .line 1070
    move-object/from16 v0, p0

    #@1a
    iget-object v0, v0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$P2pEnabledState;->this$1:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    #@1c
    move-object/from16 v20, v0

    #@1e
    move-object/from16 v0, p0

    #@20
    iget-object v0, v0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$P2pEnabledState;->this$1:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    #@22
    move-object/from16 v21, v0

    #@24
    invoke-static/range {v21 .. v21}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->-get8(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;)Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$P2pDisabledState;

    #@27
    move-result-object v21

    #@28
    invoke-static/range {v20 .. v21}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->-wrap34(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;Lcom/android/internal/util/IState;)V

    #@2b
    .line 1291
    :cond_0
    :goto_0
    :sswitch_1
    const/16 v20, 0x1

    #@2d
    return v20

    #@2e
    .line 1076
    :sswitch_2
    move-object/from16 v0, p0

    #@30
    iget-object v0, v0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$P2pEnabledState;->this$1:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    #@32
    move-object/from16 v20, v0

    #@34
    invoke-static/range {v20 .. v20}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->-get11(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;)Landroid/net/wifi/p2p/WifiP2pDeviceList;

    #@37
    move-result-object v20

    #@38
    invoke-virtual/range {v20 .. v20}, Landroid/net/wifi/p2p/WifiP2pDeviceList;->clear()Z

    #@3b
    move-result v20

    #@3c
    if-eqz v20, :cond_1

    #@3e
    .line 1077
    move-object/from16 v0, p0

    #@40
    iget-object v0, v0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$P2pEnabledState;->this$1:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    #@42
    move-object/from16 v20, v0

    #@44
    invoke-static/range {v20 .. v20}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->-wrap30(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;)V

    #@47
    .line 1079
    :cond_1
    move-object/from16 v0, p0

    #@49
    iget-object v0, v0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$P2pEnabledState;->this$1:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    #@4b
    move-object/from16 v20, v0

    #@4d
    invoke-static/range {v20 .. v20}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->-get5(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;)Landroid/net/wifi/p2p/WifiP2pGroupList;

    #@50
    move-result-object v20

    #@51
    invoke-virtual/range {v20 .. v20}, Landroid/net/wifi/p2p/WifiP2pGroupList;->clear()Z

    #@54
    move-result v20

    #@55
    if-eqz v20, :cond_2

    #@57
    move-object/from16 v0, p0

    #@59
    iget-object v0, v0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$P2pEnabledState;->this$1:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    #@5b
    move-object/from16 v20, v0

    #@5d
    invoke-static/range {v20 .. v20}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->-wrap28(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;)V

    #@60
    .line 1081
    :cond_2
    move-object/from16 v0, p0

    #@62
    iget-object v0, v0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$P2pEnabledState;->this$1:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    #@64
    move-object/from16 v20, v0

    #@66
    invoke-static/range {v20 .. v20}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->-get18(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;)Lcom/android/server/wifi/WifiMonitor;

    #@69
    move-result-object v20

    #@6a
    move-object/from16 v0, p0

    #@6c
    iget-object v0, v0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$P2pEnabledState;->this$1:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    #@6e
    move-object/from16 v21, v0

    #@70
    invoke-static/range {v21 .. v21}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->-get19(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;)Lcom/android/server/wifi/WifiNative;

    #@73
    move-result-object v21

    #@74
    invoke-virtual/range {v21 .. v21}, Lcom/android/server/wifi/WifiNative;->getInterfaceName()Ljava/lang/String;

    #@77
    move-result-object v21

    #@78
    invoke-virtual/range {v20 .. v21}, Lcom/android/server/wifi/WifiMonitor;->stopMonitoring(Ljava/lang/String;)V

    #@7b
    .line 1082
    move-object/from16 v0, p0

    #@7d
    iget-object v0, v0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$P2pEnabledState;->this$1:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    #@7f
    move-object/from16 v20, v0

    #@81
    move-object/from16 v0, p0

    #@83
    iget-object v0, v0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$P2pEnabledState;->this$1:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    #@85
    move-object/from16 v21, v0

    #@87
    invoke-static/range {v21 .. v21}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->-get9(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;)Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$P2pDisablingState;

    #@8a
    move-result-object v21

    #@8b
    invoke-static/range {v20 .. v21}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->-wrap34(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;Lcom/android/internal/util/IState;)V

    #@8e
    goto :goto_0

    #@8f
    .line 1086
    :sswitch_3
    move-object/from16 v0, p1

    #@91
    iget-object v5, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@93
    check-cast v5, Landroid/net/wifi/p2p/WifiP2pDevice;

    #@95
    .line 1087
    .local v5, "d":Landroid/net/wifi/p2p/WifiP2pDevice;
    if-eqz v5, :cond_3

    #@97
    move-object/from16 v0, p0

    #@99
    iget-object v0, v0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$P2pEnabledState;->this$1:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    #@9b
    move-object/from16 v20, v0

    #@9d
    iget-object v0, v5, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceName:Ljava/lang/String;

    #@9f
    move-object/from16 v21, v0

    #@a1
    invoke-static/range {v20 .. v21}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->-wrap5(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;Ljava/lang/String;)Z

    #@a4
    move-result v20

    #@a5
    if-eqz v20, :cond_3

    #@a7
    .line 1089
    move-object/from16 v0, p0

    #@a9
    iget-object v0, v0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$P2pEnabledState;->this$1:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    #@ab
    move-object/from16 v20, v0

    #@ad
    const v21, 0x22035

    #@b0
    move-object/from16 v0, v20

    #@b2
    move-object/from16 v1, p1

    #@b4
    move/from16 v2, v21

    #@b6
    invoke-static {v0, v1, v2}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->-wrap22(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;Landroid/os/Message;I)V

    #@b9
    goto/16 :goto_0

    #@bb
    .line 1091
    :cond_3
    move-object/from16 v0, p0

    #@bd
    iget-object v0, v0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$P2pEnabledState;->this$1:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    #@bf
    move-object/from16 v20, v0

    #@c1
    const v21, 0x22034

    #@c4
    .line 1092
    const/16 v22, 0x0

    #@c6
    .line 1091
    move-object/from16 v0, v20

    #@c8
    move-object/from16 v1, p1

    #@ca
    move/from16 v2, v21

    #@cc
    move/from16 v3, v22

    #@ce
    invoke-static {v0, v1, v2, v3}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->-wrap23(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;Landroid/os/Message;II)V

    #@d1
    goto/16 :goto_0

    #@d3
    .line 1098
    .end local v5    # "d":Landroid/net/wifi/p2p/WifiP2pDevice;
    :sswitch_4
    move-object/from16 v0, p1

    #@d5
    iget-object v6, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@d7
    check-cast v6, Landroid/net/wifi/p2p/WifiP2pWfdInfo;

    #@d9
    .line 1099
    .local v6, "d":Landroid/net/wifi/p2p/WifiP2pWfdInfo;
    if-eqz v6, :cond_4

    #@db
    move-object/from16 v0, p0

    #@dd
    iget-object v0, v0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$P2pEnabledState;->this$1:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    #@df
    move-object/from16 v20, v0

    #@e1
    move-object/from16 v0, v20

    #@e3
    invoke-static {v0, v6}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->-wrap6(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;Landroid/net/wifi/p2p/WifiP2pWfdInfo;)Z

    #@e6
    move-result v20

    #@e7
    if-eqz v20, :cond_4

    #@e9
    .line 1100
    move-object/from16 v0, p0

    #@eb
    iget-object v0, v0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$P2pEnabledState;->this$1:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    #@ed
    move-object/from16 v20, v0

    #@ef
    const v21, 0x2203d

    #@f2
    move-object/from16 v0, v20

    #@f4
    move-object/from16 v1, p1

    #@f6
    move/from16 v2, v21

    #@f8
    invoke-static {v0, v1, v2}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->-wrap22(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;Landroid/os/Message;I)V

    #@fb
    goto/16 :goto_0

    #@fd
    .line 1102
    :cond_4
    move-object/from16 v0, p0

    #@ff
    iget-object v0, v0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$P2pEnabledState;->this$1:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    #@101
    move-object/from16 v20, v0

    #@103
    const v21, 0x2203c

    #@106
    .line 1103
    const/16 v22, 0x0

    #@108
    .line 1102
    move-object/from16 v0, v20

    #@10a
    move-object/from16 v1, p1

    #@10c
    move/from16 v2, v21

    #@10e
    move/from16 v3, v22

    #@110
    invoke-static {v0, v1, v2, v3}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->-wrap23(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;Landroid/os/Message;II)V

    #@113
    goto/16 :goto_0

    #@115
    .line 1108
    .end local v6    # "d":Landroid/net/wifi/p2p/WifiP2pWfdInfo;
    :sswitch_5
    move-object/from16 v0, p1

    #@117
    iget v0, v0, Landroid/os/Message;->arg1:I

    #@119
    move/from16 v20, v0

    #@11b
    const/16 v21, 0x1

    #@11d
    move/from16 v0, v20

    #@11f
    move/from16 v1, v21

    #@121
    if-ne v0, v1, :cond_7

    #@123
    const/4 v4, 0x1

    #@124
    .line 1109
    .local v4, "blocked":Z
    :goto_1
    move-object/from16 v0, p0

    #@126
    iget-object v0, v0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$P2pEnabledState;->this$1:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    #@128
    move-object/from16 v20, v0

    #@12a
    move-object/from16 v0, v20

    #@12c
    iget-object v0, v0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->this$0:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;

    #@12e
    move-object/from16 v20, v0

    #@130
    invoke-static/range {v20 .. v20}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->-get7(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;)Z

    #@133
    move-result v20

    #@134
    move/from16 v0, v20

    #@136
    if-eq v0, v4, :cond_0

    #@138
    .line 1110
    move-object/from16 v0, p0

    #@13a
    iget-object v0, v0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$P2pEnabledState;->this$1:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    #@13c
    move-object/from16 v20, v0

    #@13e
    move-object/from16 v0, v20

    #@140
    iget-object v0, v0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->this$0:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;

    #@142
    move-object/from16 v20, v0

    #@144
    move-object/from16 v0, v20

    #@146
    invoke-static {v0, v4}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->-set3(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;Z)Z

    #@149
    .line 1111
    if-eqz v4, :cond_5

    #@14b
    move-object/from16 v0, p0

    #@14d
    iget-object v0, v0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$P2pEnabledState;->this$1:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    #@14f
    move-object/from16 v20, v0

    #@151
    move-object/from16 v0, v20

    #@153
    iget-object v0, v0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->this$0:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;

    #@155
    move-object/from16 v20, v0

    #@157
    invoke-static/range {v20 .. v20}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->-get9(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;)Z

    #@15a
    move-result v20

    #@15b
    if-eqz v20, :cond_5

    #@15d
    .line 1112
    move-object/from16 v0, p0

    #@15f
    iget-object v0, v0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$P2pEnabledState;->this$1:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    #@161
    move-object/from16 v20, v0

    #@163
    invoke-static/range {v20 .. v20}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->-get19(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;)Lcom/android/server/wifi/WifiNative;

    #@166
    move-result-object v20

    #@167
    invoke-virtual/range {v20 .. v20}, Lcom/android/server/wifi/WifiNative;->p2pStopFind()Z

    #@16a
    .line 1113
    move-object/from16 v0, p0

    #@16c
    iget-object v0, v0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$P2pEnabledState;->this$1:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    #@16e
    move-object/from16 v20, v0

    #@170
    move-object/from16 v0, v20

    #@172
    iget-object v0, v0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->this$0:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;

    #@174
    move-object/from16 v20, v0

    #@176
    const/16 v21, 0x1

    #@178
    invoke-static/range {v20 .. v21}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->-set4(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;Z)Z

    #@17b
    .line 1115
    :cond_5
    if-nez v4, :cond_6

    #@17d
    move-object/from16 v0, p0

    #@17f
    iget-object v0, v0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$P2pEnabledState;->this$1:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    #@181
    move-object/from16 v20, v0

    #@183
    move-object/from16 v0, v20

    #@185
    iget-object v0, v0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->this$0:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;

    #@187
    move-object/from16 v20, v0

    #@189
    invoke-static/range {v20 .. v20}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->-get8(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;)Z

    #@18c
    move-result v20

    #@18d
    if-eqz v20, :cond_6

    #@18f
    .line 1116
    move-object/from16 v0, p0

    #@191
    iget-object v0, v0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$P2pEnabledState;->this$1:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    #@193
    move-object/from16 v20, v0

    #@195
    move-object/from16 v0, v20

    #@197
    iget-object v0, v0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->this$0:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;

    #@199
    move-object/from16 v20, v0

    #@19b
    const/16 v21, 0x0

    #@19d
    invoke-static/range {v20 .. v21}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->-set4(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;Z)Z

    #@1a0
    .line 1117
    move-object/from16 v0, p0

    #@1a2
    iget-object v0, v0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$P2pEnabledState;->this$1:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    #@1a4
    move-object/from16 v20, v0

    #@1a6
    invoke-static/range {v20 .. v20}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->-get19(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;)Lcom/android/server/wifi/WifiNative;

    #@1a9
    move-result-object v20

    #@1aa
    const/16 v21, 0x78

    #@1ac
    invoke-virtual/range {v20 .. v21}, Lcom/android/server/wifi/WifiNative;->p2pFind(I)Z

    #@1af
    .line 1119
    :cond_6
    if-eqz v4, :cond_0

    #@1b1
    .line 1121
    :try_start_0
    move-object/from16 v0, p1

    #@1b3
    iget-object v11, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@1b5
    check-cast v11, Lcom/android/internal/util/StateMachine;

    #@1b7
    .line 1122
    .local v11, "m":Lcom/android/internal/util/StateMachine;
    move-object/from16 v0, p1

    #@1b9
    iget v0, v0, Landroid/os/Message;->arg2:I

    #@1bb
    move/from16 v20, v0

    #@1bd
    move/from16 v0, v20

    #@1bf
    invoke-virtual {v11, v0}, Lcom/android/internal/util/StateMachine;->sendMessage(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    #@1c2
    goto/16 :goto_0

    #@1c4
    .line 1123
    .end local v11    # "m":Lcom/android/internal/util/StateMachine;
    :catch_0
    move-exception v9

    #@1c5
    .line 1124
    .local v9, "e":Ljava/lang/Exception;
    move-object/from16 v0, p0

    #@1c7
    iget-object v0, v0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$P2pEnabledState;->this$1:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    #@1c9
    move-object/from16 v20, v0

    #@1cb
    new-instance v21, Ljava/lang/StringBuilder;

    #@1cd
    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    #@1d0
    const-string/jumbo v22, "unable to send BLOCK_DISCOVERY response: "

    #@1d3
    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1d6
    move-result-object v21

    #@1d7
    move-object/from16 v0, v21

    #@1d9
    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@1dc
    move-result-object v21

    #@1dd
    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1e0
    move-result-object v21

    #@1e1
    invoke-virtual/range {v20 .. v21}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->loge(Ljava/lang/String;)V

    #@1e4
    goto/16 :goto_0

    #@1e6
    .line 1108
    .end local v4    # "blocked":Z
    .end local v9    # "e":Ljava/lang/Exception;
    :cond_7
    const/4 v4, 0x0

    #@1e7
    .restart local v4    # "blocked":Z
    goto/16 :goto_1

    #@1e9
    .line 1129
    .end local v4    # "blocked":Z
    :sswitch_6
    move-object/from16 v0, p0

    #@1eb
    iget-object v0, v0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$P2pEnabledState;->this$1:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    #@1ed
    move-object/from16 v20, v0

    #@1ef
    move-object/from16 v0, v20

    #@1f1
    iget-object v0, v0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->this$0:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;

    #@1f3
    move-object/from16 v20, v0

    #@1f5
    invoke-static/range {v20 .. v20}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->-get7(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;)Z

    #@1f8
    move-result v20

    #@1f9
    if-eqz v20, :cond_8

    #@1fb
    .line 1130
    move-object/from16 v0, p0

    #@1fd
    iget-object v0, v0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$P2pEnabledState;->this$1:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    #@1ff
    move-object/from16 v20, v0

    #@201
    const v21, 0x22002

    #@204
    .line 1131
    const/16 v22, 0x2

    #@206
    .line 1130
    move-object/from16 v0, v20

    #@208
    move-object/from16 v1, p1

    #@20a
    move/from16 v2, v21

    #@20c
    move/from16 v3, v22

    #@20e
    invoke-static {v0, v1, v2, v3}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->-wrap23(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;Landroid/os/Message;II)V

    #@211
    goto/16 :goto_0

    #@213
    .line 1135
    :cond_8
    move-object/from16 v0, p0

    #@215
    iget-object v0, v0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$P2pEnabledState;->this$1:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    #@217
    move-object/from16 v20, v0

    #@219
    invoke-static/range {v20 .. v20}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->-wrap11(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;)V

    #@21c
    .line 1136
    move-object/from16 v0, p0

    #@21e
    iget-object v0, v0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$P2pEnabledState;->this$1:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    #@220
    move-object/from16 v20, v0

    #@222
    invoke-static/range {v20 .. v20}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->-get19(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;)Lcom/android/server/wifi/WifiNative;

    #@225
    move-result-object v20

    #@226
    const/16 v21, 0x78

    #@228
    invoke-virtual/range {v20 .. v21}, Lcom/android/server/wifi/WifiNative;->p2pFind(I)Z

    #@22b
    move-result v20

    #@22c
    if-eqz v20, :cond_9

    #@22e
    .line 1137
    move-object/from16 v0, p0

    #@230
    iget-object v0, v0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$P2pEnabledState;->this$1:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    #@232
    move-object/from16 v20, v0

    #@234
    const v21, 0x22003

    #@237
    move-object/from16 v0, v20

    #@239
    move-object/from16 v1, p1

    #@23b
    move/from16 v2, v21

    #@23d
    invoke-static {v0, v1, v2}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->-wrap22(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;Landroid/os/Message;I)V

    #@240
    .line 1138
    move-object/from16 v0, p0

    #@242
    iget-object v0, v0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$P2pEnabledState;->this$1:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    #@244
    move-object/from16 v20, v0

    #@246
    const/16 v21, 0x1

    #@248
    invoke-static/range {v20 .. v21}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->-wrap27(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;Z)V

    #@24b
    goto/16 :goto_0

    #@24d
    .line 1140
    :cond_9
    move-object/from16 v0, p0

    #@24f
    iget-object v0, v0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$P2pEnabledState;->this$1:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    #@251
    move-object/from16 v20, v0

    #@253
    const v21, 0x22002

    #@256
    .line 1141
    const/16 v22, 0x0

    #@258
    .line 1140
    move-object/from16 v0, v20

    #@25a
    move-object/from16 v1, p1

    #@25c
    move/from16 v2, v21

    #@25e
    move/from16 v3, v22

    #@260
    invoke-static {v0, v1, v2, v3}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->-wrap23(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;Landroid/os/Message;II)V

    #@263
    goto/16 :goto_0

    #@265
    .line 1145
    :sswitch_7
    move-object/from16 v0, p0

    #@267
    iget-object v0, v0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$P2pEnabledState;->this$1:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    #@269
    move-object/from16 v20, v0

    #@26b
    const/16 v21, 0x0

    #@26d
    invoke-static/range {v20 .. v21}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->-wrap27(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;Z)V

    #@270
    goto/16 :goto_0

    #@272
    .line 1148
    :sswitch_8
    move-object/from16 v0, p0

    #@274
    iget-object v0, v0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$P2pEnabledState;->this$1:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    #@276
    move-object/from16 v20, v0

    #@278
    invoke-static/range {v20 .. v20}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->-get19(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;)Lcom/android/server/wifi/WifiNative;

    #@27b
    move-result-object v20

    #@27c
    invoke-virtual/range {v20 .. v20}, Lcom/android/server/wifi/WifiNative;->p2pStopFind()Z

    #@27f
    move-result v20

    #@280
    if-eqz v20, :cond_a

    #@282
    .line 1149
    move-object/from16 v0, p0

    #@284
    iget-object v0, v0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$P2pEnabledState;->this$1:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    #@286
    move-object/from16 v20, v0

    #@288
    const v21, 0x22006

    #@28b
    move-object/from16 v0, v20

    #@28d
    move-object/from16 v1, p1

    #@28f
    move/from16 v2, v21

    #@291
    invoke-static {v0, v1, v2}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->-wrap22(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;Landroid/os/Message;I)V

    #@294
    goto/16 :goto_0

    #@296
    .line 1151
    :cond_a
    move-object/from16 v0, p0

    #@298
    iget-object v0, v0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$P2pEnabledState;->this$1:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    #@29a
    move-object/from16 v20, v0

    #@29c
    const v21, 0x22005

    #@29f
    .line 1152
    const/16 v22, 0x0

    #@2a1
    .line 1151
    move-object/from16 v0, v20

    #@2a3
    move-object/from16 v1, p1

    #@2a5
    move/from16 v2, v21

    #@2a7
    move/from16 v3, v22

    #@2a9
    invoke-static {v0, v1, v2, v3}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->-wrap23(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;Landroid/os/Message;II)V

    #@2ac
    goto/16 :goto_0

    #@2ae
    .line 1156
    :sswitch_9
    move-object/from16 v0, p0

    #@2b0
    iget-object v0, v0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$P2pEnabledState;->this$1:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    #@2b2
    move-object/from16 v20, v0

    #@2b4
    move-object/from16 v0, v20

    #@2b6
    iget-object v0, v0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->this$0:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;

    #@2b8
    move-object/from16 v20, v0

    #@2ba
    invoke-static/range {v20 .. v20}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->-get7(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;)Z

    #@2bd
    move-result v20

    #@2be
    if-eqz v20, :cond_b

    #@2c0
    .line 1157
    move-object/from16 v0, p0

    #@2c2
    iget-object v0, v0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$P2pEnabledState;->this$1:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    #@2c4
    move-object/from16 v20, v0

    #@2c6
    const v21, 0x2202f

    #@2c9
    .line 1158
    const/16 v22, 0x2

    #@2cb
    .line 1157
    move-object/from16 v0, v20

    #@2cd
    move-object/from16 v1, p1

    #@2cf
    move/from16 v2, v21

    #@2d1
    move/from16 v3, v22

    #@2d3
    invoke-static {v0, v1, v2, v3}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->-wrap23(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;Landroid/os/Message;II)V

    #@2d6
    goto/16 :goto_0

    #@2d8
    .line 1162
    :cond_b
    move-object/from16 v0, p0

    #@2da
    iget-object v0, v0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$P2pEnabledState;->this$1:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    #@2dc
    move-object/from16 v20, v0

    #@2de
    invoke-static/range {v20 .. v20}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->-wrap7(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;)Z

    #@2e1
    move-result v20

    #@2e2
    if-nez v20, :cond_c

    #@2e4
    .line 1163
    move-object/from16 v0, p0

    #@2e6
    iget-object v0, v0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$P2pEnabledState;->this$1:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    #@2e8
    move-object/from16 v20, v0

    #@2ea
    const v21, 0x2202f

    #@2ed
    .line 1164
    const/16 v22, 0x3

    #@2ef
    .line 1163
    move-object/from16 v0, v20

    #@2f1
    move-object/from16 v1, p1

    #@2f3
    move/from16 v2, v21

    #@2f5
    move/from16 v3, v22

    #@2f7
    invoke-static {v0, v1, v2, v3}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->-wrap23(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;Landroid/os/Message;II)V

    #@2fa
    goto/16 :goto_0

    #@2fc
    .line 1167
    :cond_c
    move-object/from16 v0, p0

    #@2fe
    iget-object v0, v0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$P2pEnabledState;->this$1:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    #@300
    move-object/from16 v20, v0

    #@302
    invoke-static/range {v20 .. v20}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->-get19(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;)Lcom/android/server/wifi/WifiNative;

    #@305
    move-result-object v20

    #@306
    const/16 v21, 0x78

    #@308
    invoke-virtual/range {v20 .. v21}, Lcom/android/server/wifi/WifiNative;->p2pFind(I)Z

    #@30b
    move-result v20

    #@30c
    if-eqz v20, :cond_d

    #@30e
    .line 1168
    move-object/from16 v0, p0

    #@310
    iget-object v0, v0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$P2pEnabledState;->this$1:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    #@312
    move-object/from16 v20, v0

    #@314
    const v21, 0x22030

    #@317
    move-object/from16 v0, v20

    #@319
    move-object/from16 v1, p1

    #@31b
    move/from16 v2, v21

    #@31d
    invoke-static {v0, v1, v2}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->-wrap22(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;Landroid/os/Message;I)V

    #@320
    goto/16 :goto_0

    #@322
    .line 1170
    :cond_d
    move-object/from16 v0, p0

    #@324
    iget-object v0, v0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$P2pEnabledState;->this$1:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    #@326
    move-object/from16 v20, v0

    #@328
    const v21, 0x2202f

    #@32b
    .line 1171
    const/16 v22, 0x0

    #@32d
    .line 1170
    move-object/from16 v0, v20

    #@32f
    move-object/from16 v1, p1

    #@331
    move/from16 v2, v21

    #@333
    move/from16 v3, v22

    #@335
    invoke-static {v0, v1, v2, v3}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->-wrap23(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;Landroid/os/Message;II)V

    #@338
    goto/16 :goto_0

    #@33a
    .line 1175
    :sswitch_a
    move-object/from16 v0, p1

    #@33c
    iget-object v8, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@33e
    check-cast v8, Landroid/net/wifi/p2p/WifiP2pDevice;

    #@340
    .line 1176
    .local v8, "device":Landroid/net/wifi/p2p/WifiP2pDevice;
    move-object/from16 v0, p0

    #@342
    iget-object v0, v0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$P2pEnabledState;->this$1:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    #@344
    move-object/from16 v20, v0

    #@346
    move-object/from16 v0, v20

    #@348
    iget-object v0, v0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->this$0:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;

    #@34a
    move-object/from16 v20, v0

    #@34c
    invoke-static/range {v20 .. v20}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->-get18(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;)Landroid/net/wifi/p2p/WifiP2pDevice;

    #@34f
    move-result-object v20

    #@350
    move-object/from16 v0, v20

    #@352
    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;

    #@354
    move-object/from16 v20, v0

    #@356
    iget-object v0, v8, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;

    #@358
    move-object/from16 v21, v0

    #@35a
    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@35d
    move-result v20

    #@35e
    if-nez v20, :cond_0

    #@360
    .line 1177
    move-object/from16 v0, p0

    #@362
    iget-object v0, v0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$P2pEnabledState;->this$1:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    #@364
    move-object/from16 v20, v0

    #@366
    invoke-static/range {v20 .. v20}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->-get11(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;)Landroid/net/wifi/p2p/WifiP2pDeviceList;

    #@369
    move-result-object v20

    #@36a
    move-object/from16 v0, v20

    #@36c
    invoke-virtual {v0, v8}, Landroid/net/wifi/p2p/WifiP2pDeviceList;->updateSupplicantDetails(Landroid/net/wifi/p2p/WifiP2pDevice;)V

    #@36f
    .line 1178
    move-object/from16 v0, p0

    #@371
    iget-object v0, v0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$P2pEnabledState;->this$1:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    #@373
    move-object/from16 v20, v0

    #@375
    invoke-static/range {v20 .. v20}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->-wrap30(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;)V

    #@378
    goto/16 :goto_0

    #@37a
    .line 1181
    .end local v8    # "device":Landroid/net/wifi/p2p/WifiP2pDevice;
    :sswitch_b
    move-object/from16 v0, p1

    #@37c
    iget-object v8, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@37e
    check-cast v8, Landroid/net/wifi/p2p/WifiP2pDevice;

    #@380
    .line 1183
    .restart local v8    # "device":Landroid/net/wifi/p2p/WifiP2pDevice;
    move-object/from16 v0, p0

    #@382
    iget-object v0, v0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$P2pEnabledState;->this$1:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    #@384
    move-object/from16 v20, v0

    #@386
    invoke-static/range {v20 .. v20}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->-get11(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;)Landroid/net/wifi/p2p/WifiP2pDeviceList;

    #@389
    move-result-object v20

    #@38a
    iget-object v0, v8, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;

    #@38c
    move-object/from16 v21, v0

    #@38e
    invoke-virtual/range {v20 .. v21}, Landroid/net/wifi/p2p/WifiP2pDeviceList;->remove(Ljava/lang/String;)Landroid/net/wifi/p2p/WifiP2pDevice;

    #@391
    move-result-object v8

    #@392
    .line 1184
    if-eqz v8, :cond_0

    #@394
    .line 1185
    move-object/from16 v0, p0

    #@396
    iget-object v0, v0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$P2pEnabledState;->this$1:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    #@398
    move-object/from16 v20, v0

    #@39a
    invoke-static/range {v20 .. v20}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->-wrap30(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;)V

    #@39d
    goto/16 :goto_0

    #@39f
    .line 1190
    .end local v8    # "device":Landroid/net/wifi/p2p/WifiP2pDevice;
    :sswitch_c
    move-object/from16 v0, p1

    #@3a1
    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@3a3
    move-object/from16 v19, v0

    #@3a5
    check-cast v19, Landroid/net/wifi/p2p/nsd/WifiP2pServiceInfo;

    #@3a7
    .line 1191
    .local v19, "servInfo":Landroid/net/wifi/p2p/nsd/WifiP2pServiceInfo;
    move-object/from16 v0, p0

    #@3a9
    iget-object v0, v0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$P2pEnabledState;->this$1:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    #@3ab
    move-object/from16 v20, v0

    #@3ad
    move-object/from16 v0, p1

    #@3af
    iget-object v0, v0, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    #@3b1
    move-object/from16 v21, v0

    #@3b3
    move-object/from16 v0, v20

    #@3b5
    move-object/from16 v1, v21

    #@3b7
    move-object/from16 v2, v19

    #@3b9
    invoke-static {v0, v1, v2}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->-wrap0(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;Landroid/os/Messenger;Landroid/net/wifi/p2p/nsd/WifiP2pServiceInfo;)Z

    #@3bc
    move-result v20

    #@3bd
    if-eqz v20, :cond_e

    #@3bf
    .line 1192
    move-object/from16 v0, p0

    #@3c1
    iget-object v0, v0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$P2pEnabledState;->this$1:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    #@3c3
    move-object/from16 v20, v0

    #@3c5
    const v21, 0x2201e

    #@3c8
    move-object/from16 v0, v20

    #@3ca
    move-object/from16 v1, p1

    #@3cc
    move/from16 v2, v21

    #@3ce
    invoke-static {v0, v1, v2}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->-wrap22(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;Landroid/os/Message;I)V

    #@3d1
    goto/16 :goto_0

    #@3d3
    .line 1194
    :cond_e
    move-object/from16 v0, p0

    #@3d5
    iget-object v0, v0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$P2pEnabledState;->this$1:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    #@3d7
    move-object/from16 v20, v0

    #@3d9
    const v21, 0x2201d

    #@3dc
    move-object/from16 v0, v20

    #@3de
    move-object/from16 v1, p1

    #@3e0
    move/from16 v2, v21

    #@3e2
    invoke-static {v0, v1, v2}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->-wrap22(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;Landroid/os/Message;I)V

    #@3e5
    goto/16 :goto_0

    #@3e7
    .line 1199
    .end local v19    # "servInfo":Landroid/net/wifi/p2p/nsd/WifiP2pServiceInfo;
    :sswitch_d
    move-object/from16 v0, p1

    #@3e9
    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@3eb
    move-object/from16 v19, v0

    #@3ed
    check-cast v19, Landroid/net/wifi/p2p/nsd/WifiP2pServiceInfo;

    #@3ef
    .line 1200
    .restart local v19    # "servInfo":Landroid/net/wifi/p2p/nsd/WifiP2pServiceInfo;
    move-object/from16 v0, p0

    #@3f1
    iget-object v0, v0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$P2pEnabledState;->this$1:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    #@3f3
    move-object/from16 v20, v0

    #@3f5
    move-object/from16 v0, p1

    #@3f7
    iget-object v0, v0, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    #@3f9
    move-object/from16 v21, v0

    #@3fb
    move-object/from16 v0, v20

    #@3fd
    move-object/from16 v1, v21

    #@3ff
    move-object/from16 v2, v19

    #@401
    invoke-static {v0, v1, v2}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->-wrap20(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;Landroid/os/Messenger;Landroid/net/wifi/p2p/nsd/WifiP2pServiceInfo;)V

    #@404
    .line 1201
    move-object/from16 v0, p0

    #@406
    iget-object v0, v0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$P2pEnabledState;->this$1:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    #@408
    move-object/from16 v20, v0

    #@40a
    const v21, 0x22021

    #@40d
    move-object/from16 v0, v20

    #@40f
    move-object/from16 v1, p1

    #@411
    move/from16 v2, v21

    #@413
    invoke-static {v0, v1, v2}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->-wrap22(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;Landroid/os/Message;I)V

    #@416
    goto/16 :goto_0

    #@418
    .line 1205
    .end local v19    # "servInfo":Landroid/net/wifi/p2p/nsd/WifiP2pServiceInfo;
    :sswitch_e
    move-object/from16 v0, p0

    #@41a
    iget-object v0, v0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$P2pEnabledState;->this$1:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    #@41c
    move-object/from16 v20, v0

    #@41e
    move-object/from16 v0, p1

    #@420
    iget-object v0, v0, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    #@422
    move-object/from16 v21, v0

    #@424
    invoke-static/range {v20 .. v21}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->-wrap9(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;Landroid/os/Messenger;)V

    #@427
    .line 1206
    move-object/from16 v0, p0

    #@429
    iget-object v0, v0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$P2pEnabledState;->this$1:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    #@42b
    move-object/from16 v20, v0

    #@42d
    const v21, 0x22024

    #@430
    move-object/from16 v0, v20

    #@432
    move-object/from16 v1, p1

    #@434
    move/from16 v2, v21

    #@436
    invoke-static {v0, v1, v2}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->-wrap22(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;Landroid/os/Message;I)V

    #@439
    goto/16 :goto_0

    #@43b
    .line 1210
    :sswitch_f
    move-object/from16 v0, p0

    #@43d
    iget-object v0, v0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$P2pEnabledState;->this$1:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    #@43f
    move-object/from16 v21, v0

    #@441
    move-object/from16 v0, p1

    #@443
    iget-object v0, v0, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    #@445
    move-object/from16 v22, v0

    #@447
    move-object/from16 v0, p1

    #@449
    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@44b
    move-object/from16 v20, v0

    #@44d
    check-cast v20, Landroid/net/wifi/p2p/nsd/WifiP2pServiceRequest;

    #@44f
    move-object/from16 v0, v21

    #@451
    move-object/from16 v1, v22

    #@453
    move-object/from16 v2, v20

    #@455
    invoke-static {v0, v1, v2}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->-wrap1(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;Landroid/os/Messenger;Landroid/net/wifi/p2p/nsd/WifiP2pServiceRequest;)Z

    #@458
    move-result v20

    #@459
    if-nez v20, :cond_f

    #@45b
    .line 1211
    move-object/from16 v0, p0

    #@45d
    iget-object v0, v0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$P2pEnabledState;->this$1:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    #@45f
    move-object/from16 v20, v0

    #@461
    const v21, 0x22026

    #@464
    move-object/from16 v0, v20

    #@466
    move-object/from16 v1, p1

    #@468
    move/from16 v2, v21

    #@46a
    invoke-static {v0, v1, v2}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->-wrap22(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;Landroid/os/Message;I)V

    #@46d
    goto/16 :goto_0

    #@46f
    .line 1214
    :cond_f
    move-object/from16 v0, p0

    #@471
    iget-object v0, v0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$P2pEnabledState;->this$1:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    #@473
    move-object/from16 v20, v0

    #@475
    const v21, 0x22027

    #@478
    move-object/from16 v0, v20

    #@47a
    move-object/from16 v1, p1

    #@47c
    move/from16 v2, v21

    #@47e
    invoke-static {v0, v1, v2}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->-wrap22(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;Landroid/os/Message;I)V

    #@481
    goto/16 :goto_0

    #@483
    .line 1218
    :sswitch_10
    move-object/from16 v0, p0

    #@485
    iget-object v0, v0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$P2pEnabledState;->this$1:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    #@487
    move-object/from16 v21, v0

    #@489
    move-object/from16 v0, p1

    #@48b
    iget-object v0, v0, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    #@48d
    move-object/from16 v22, v0

    #@48f
    move-object/from16 v0, p1

    #@491
    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@493
    move-object/from16 v20, v0

    #@495
    check-cast v20, Landroid/net/wifi/p2p/nsd/WifiP2pServiceRequest;

    #@497
    move-object/from16 v0, v21

    #@499
    move-object/from16 v1, v22

    #@49b
    move-object/from16 v2, v20

    #@49d
    invoke-static {v0, v1, v2}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->-wrap21(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;Landroid/os/Messenger;Landroid/net/wifi/p2p/nsd/WifiP2pServiceRequest;)V

    #@4a0
    .line 1219
    move-object/from16 v0, p0

    #@4a2
    iget-object v0, v0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$P2pEnabledState;->this$1:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    #@4a4
    move-object/from16 v20, v0

    #@4a6
    const v21, 0x2202a

    #@4a9
    move-object/from16 v0, v20

    #@4ab
    move-object/from16 v1, p1

    #@4ad
    move/from16 v2, v21

    #@4af
    invoke-static {v0, v1, v2}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->-wrap22(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;Landroid/os/Message;I)V

    #@4b2
    goto/16 :goto_0

    #@4b4
    .line 1223
    :sswitch_11
    move-object/from16 v0, p0

    #@4b6
    iget-object v0, v0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$P2pEnabledState;->this$1:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    #@4b8
    move-object/from16 v20, v0

    #@4ba
    move-object/from16 v0, p1

    #@4bc
    iget-object v0, v0, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    #@4be
    move-object/from16 v21, v0

    #@4c0
    invoke-static/range {v20 .. v21}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->-wrap10(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;Landroid/os/Messenger;)V

    #@4c3
    .line 1224
    move-object/from16 v0, p0

    #@4c5
    iget-object v0, v0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$P2pEnabledState;->this$1:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    #@4c7
    move-object/from16 v20, v0

    #@4c9
    const v21, 0x2202d

    #@4cc
    move-object/from16 v0, v20

    #@4ce
    move-object/from16 v1, p1

    #@4d0
    move/from16 v2, v21

    #@4d2
    invoke-static {v0, v1, v2}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->-wrap22(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;Landroid/os/Message;I)V

    #@4d5
    goto/16 :goto_0

    #@4d7
    .line 1229
    :sswitch_12
    move-object/from16 v0, p1

    #@4d9
    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@4db
    move-object/from16 v17, v0

    #@4dd
    check-cast v17, Ljava/util/List;

    #@4df
    .line 1230
    .local v17, "sdRespList":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/p2p/nsd/WifiP2pServiceResponse;>;"
    invoke-interface/range {v17 .. v17}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@4e2
    move-result-object v16

    #@4e3
    .local v16, "resp$iterator":Ljava/util/Iterator;
    :goto_2
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    #@4e6
    move-result v20

    #@4e7
    if-eqz v20, :cond_0

    #@4e9
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@4ec
    move-result-object v15

    #@4ed
    check-cast v15, Landroid/net/wifi/p2p/nsd/WifiP2pServiceResponse;

    #@4ef
    .line 1232
    .local v15, "resp":Landroid/net/wifi/p2p/nsd/WifiP2pServiceResponse;
    move-object/from16 v0, p0

    #@4f1
    iget-object v0, v0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$P2pEnabledState;->this$1:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    #@4f3
    move-object/from16 v20, v0

    #@4f5
    invoke-static/range {v20 .. v20}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->-get11(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;)Landroid/net/wifi/p2p/WifiP2pDeviceList;

    #@4f8
    move-result-object v20

    #@4f9
    invoke-virtual {v15}, Landroid/net/wifi/p2p/nsd/WifiP2pServiceResponse;->getSrcDevice()Landroid/net/wifi/p2p/WifiP2pDevice;

    #@4fc
    move-result-object v21

    #@4fd
    move-object/from16 v0, v21

    #@4ff
    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;

    #@501
    move-object/from16 v21, v0

    #@503
    invoke-virtual/range {v20 .. v21}, Landroid/net/wifi/p2p/WifiP2pDeviceList;->get(Ljava/lang/String;)Landroid/net/wifi/p2p/WifiP2pDevice;

    #@506
    move-result-object v7

    #@507
    .line 1233
    .local v7, "dev":Landroid/net/wifi/p2p/WifiP2pDevice;
    invoke-virtual {v15, v7}, Landroid/net/wifi/p2p/nsd/WifiP2pServiceResponse;->setSrcDevice(Landroid/net/wifi/p2p/WifiP2pDevice;)V

    #@50a
    .line 1234
    move-object/from16 v0, p0

    #@50c
    iget-object v0, v0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$P2pEnabledState;->this$1:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    #@50e
    move-object/from16 v20, v0

    #@510
    move-object/from16 v0, v20

    #@512
    invoke-static {v0, v15}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->-wrap31(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;Landroid/net/wifi/p2p/nsd/WifiP2pServiceResponse;)V

    #@515
    goto :goto_2

    #@516
    .line 1239
    .end local v7    # "dev":Landroid/net/wifi/p2p/WifiP2pDevice;
    .end local v15    # "resp":Landroid/net/wifi/p2p/nsd/WifiP2pServiceResponse;
    .end local v16    # "resp$iterator":Ljava/util/Iterator;
    .end local v17    # "sdRespList":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/p2p/nsd/WifiP2pServiceResponse;>;"
    :sswitch_13
    move-object/from16 v0, p0

    #@518
    iget-object v0, v0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$P2pEnabledState;->this$1:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    #@51a
    move-object/from16 v20, v0

    #@51c
    invoke-static/range {v20 .. v20}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->-get5(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;)Landroid/net/wifi/p2p/WifiP2pGroupList;

    #@51f
    move-result-object v20

    #@520
    move-object/from16 v0, p1

    #@522
    iget v0, v0, Landroid/os/Message;->arg1:I

    #@524
    move/from16 v21, v0

    #@526
    invoke-virtual/range {v20 .. v21}, Landroid/net/wifi/p2p/WifiP2pGroupList;->remove(I)V

    #@529
    .line 1240
    move-object/from16 v0, p0

    #@52b
    iget-object v0, v0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$P2pEnabledState;->this$1:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    #@52d
    move-object/from16 v20, v0

    #@52f
    const v21, 0x22038

    #@532
    move-object/from16 v0, v20

    #@534
    move-object/from16 v1, p1

    #@536
    move/from16 v2, v21

    #@538
    invoke-static {v0, v1, v2}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->-wrap22(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;Landroid/os/Message;I)V

    #@53b
    goto/16 :goto_0

    #@53d
    .line 1243
    :sswitch_14
    move-object/from16 v0, p0

    #@53f
    iget-object v0, v0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$P2pEnabledState;->this$1:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    #@541
    move-object/from16 v20, v0

    #@543
    invoke-static/range {v20 .. v20}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->-get19(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;)Lcom/android/server/wifi/WifiNative;

    #@546
    move-result-object v20

    #@547
    move-object/from16 v0, p1

    #@549
    iget v0, v0, Landroid/os/Message;->arg1:I

    #@54b
    move/from16 v21, v0

    #@54d
    invoke-virtual/range {v20 .. v21}, Lcom/android/server/wifi/WifiNative;->setMiracastMode(I)V

    #@550
    goto/16 :goto_0

    #@552
    .line 1247
    :sswitch_15
    move-object/from16 v0, p0

    #@554
    iget-object v0, v0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$P2pEnabledState;->this$1:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    #@556
    move-object/from16 v20, v0

    #@558
    invoke-static/range {v20 .. v20}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->-get19(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;)Lcom/android/server/wifi/WifiNative;

    #@55b
    move-result-object v20

    #@55c
    invoke-virtual/range {v20 .. v20}, Lcom/android/server/wifi/WifiNative;->p2pFlush()Z

    #@55f
    .line 1248
    move-object/from16 v0, p0

    #@561
    iget-object v0, v0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$P2pEnabledState;->this$1:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    #@563
    move-object/from16 v20, v0

    #@565
    invoke-static/range {v20 .. v20}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->-get19(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;)Lcom/android/server/wifi/WifiNative;

    #@568
    move-result-object v20

    #@569
    const/16 v21, 0x1

    #@56b
    const/16 v22, 0x1f4

    #@56d
    const/16 v23, 0x1f4

    #@56f
    invoke-virtual/range {v20 .. v23}, Lcom/android/server/wifi/WifiNative;->p2pExtListen(ZII)Z

    #@572
    move-result v20

    #@573
    if-eqz v20, :cond_10

    #@575
    .line 1249
    move-object/from16 v0, p0

    #@577
    iget-object v0, v0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$P2pEnabledState;->this$1:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    #@579
    move-object/from16 v20, v0

    #@57b
    const v21, 0x22043

    #@57e
    move-object/from16 v0, v20

    #@580
    move-object/from16 v1, p1

    #@582
    move/from16 v2, v21

    #@584
    invoke-static {v0, v1, v2}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->-wrap22(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;Landroid/os/Message;I)V

    #@587
    goto/16 :goto_0

    #@589
    .line 1251
    :cond_10
    move-object/from16 v0, p0

    #@58b
    iget-object v0, v0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$P2pEnabledState;->this$1:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    #@58d
    move-object/from16 v20, v0

    #@58f
    const v21, 0x22042

    #@592
    move-object/from16 v0, v20

    #@594
    move-object/from16 v1, p1

    #@596
    move/from16 v2, v21

    #@598
    invoke-static {v0, v1, v2}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->-wrap22(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;Landroid/os/Message;I)V

    #@59b
    goto/16 :goto_0

    #@59d
    .line 1256
    :sswitch_16
    move-object/from16 v0, p0

    #@59f
    iget-object v0, v0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$P2pEnabledState;->this$1:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    #@5a1
    move-object/from16 v20, v0

    #@5a3
    invoke-static/range {v20 .. v20}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->-get19(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;)Lcom/android/server/wifi/WifiNative;

    #@5a6
    move-result-object v20

    #@5a7
    const/16 v21, 0x0

    #@5a9
    const/16 v22, 0x0

    #@5ab
    const/16 v23, 0x0

    #@5ad
    invoke-virtual/range {v20 .. v23}, Lcom/android/server/wifi/WifiNative;->p2pExtListen(ZII)Z

    #@5b0
    move-result v20

    #@5b1
    if-eqz v20, :cond_11

    #@5b3
    .line 1257
    move-object/from16 v0, p0

    #@5b5
    iget-object v0, v0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$P2pEnabledState;->this$1:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    #@5b7
    move-object/from16 v20, v0

    #@5b9
    const v21, 0x22046

    #@5bc
    move-object/from16 v0, v20

    #@5be
    move-object/from16 v1, p1

    #@5c0
    move/from16 v2, v21

    #@5c2
    invoke-static {v0, v1, v2}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->-wrap22(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;Landroid/os/Message;I)V

    #@5c5
    .line 1261
    :goto_3
    move-object/from16 v0, p0

    #@5c7
    iget-object v0, v0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$P2pEnabledState;->this$1:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    #@5c9
    move-object/from16 v20, v0

    #@5cb
    invoke-static/range {v20 .. v20}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->-get19(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;)Lcom/android/server/wifi/WifiNative;

    #@5ce
    move-result-object v20

    #@5cf
    invoke-virtual/range {v20 .. v20}, Lcom/android/server/wifi/WifiNative;->p2pFlush()Z

    #@5d2
    goto/16 :goto_0

    #@5d4
    .line 1259
    :cond_11
    move-object/from16 v0, p0

    #@5d6
    iget-object v0, v0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$P2pEnabledState;->this$1:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    #@5d8
    move-object/from16 v20, v0

    #@5da
    const v21, 0x22045

    #@5dd
    move-object/from16 v0, v20

    #@5df
    move-object/from16 v1, p1

    #@5e1
    move/from16 v2, v21

    #@5e3
    invoke-static {v0, v1, v2}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->-wrap22(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;Landroid/os/Message;I)V

    #@5e6
    goto :goto_3

    #@5e7
    .line 1264
    :sswitch_17
    move-object/from16 v0, p1

    #@5e9
    iget-object v13, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@5eb
    check-cast v13, Landroid/os/Bundle;

    #@5ed
    .line 1265
    .local v13, "p2pChannels":Landroid/os/Bundle;
    const-string/jumbo v20, "lc"

    #@5f0
    const/16 v21, 0x0

    #@5f2
    move-object/from16 v0, v20

    #@5f4
    move/from16 v1, v21

    #@5f6
    invoke-virtual {v13, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    #@5f9
    move-result v10

    #@5fa
    .line 1266
    .local v10, "lc":I
    const-string/jumbo v20, "oc"

    #@5fd
    const/16 v21, 0x0

    #@5ff
    move-object/from16 v0, v20

    #@601
    move/from16 v1, v21

    #@603
    invoke-virtual {v13, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    #@606
    move-result v12

    #@607
    .line 1268
    .local v12, "oc":I
    move-object/from16 v0, p0

    #@609
    iget-object v0, v0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$P2pEnabledState;->this$1:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    #@60b
    move-object/from16 v20, v0

    #@60d
    invoke-static/range {v20 .. v20}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->-get19(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;)Lcom/android/server/wifi/WifiNative;

    #@610
    move-result-object v20

    #@611
    move-object/from16 v0, v20

    #@613
    invoke-virtual {v0, v10, v12}, Lcom/android/server/wifi/WifiNative;->p2pSetChannel(II)Z

    #@616
    move-result v20

    #@617
    if-eqz v20, :cond_12

    #@619
    .line 1269
    move-object/from16 v0, p0

    #@61b
    iget-object v0, v0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$P2pEnabledState;->this$1:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    #@61d
    move-object/from16 v20, v0

    #@61f
    const v21, 0x22049

    #@622
    move-object/from16 v0, v20

    #@624
    move-object/from16 v1, p1

    #@626
    move/from16 v2, v21

    #@628
    invoke-static {v0, v1, v2}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->-wrap22(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;Landroid/os/Message;I)V

    #@62b
    goto/16 :goto_0

    #@62d
    .line 1271
    :cond_12
    move-object/from16 v0, p0

    #@62f
    iget-object v0, v0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$P2pEnabledState;->this$1:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    #@631
    move-object/from16 v20, v0

    #@633
    const v21, 0x22048

    #@636
    move-object/from16 v0, v20

    #@638
    move-object/from16 v1, p1

    #@63a
    move/from16 v2, v21

    #@63c
    invoke-static {v0, v1, v2}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->-wrap22(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;Landroid/os/Message;I)V

    #@63f
    goto/16 :goto_0

    #@641
    .line 1275
    .end local v10    # "lc":I
    .end local v12    # "oc":I
    .end local v13    # "p2pChannels":Landroid/os/Bundle;
    :sswitch_18
    new-instance v14, Landroid/os/Bundle;

    #@643
    invoke-direct {v14}, Landroid/os/Bundle;-><init>()V

    #@646
    .line 1276
    .local v14, "requestBundle":Landroid/os/Bundle;
    const-string/jumbo v20, "android.net.wifi.p2p.EXTRA_HANDOVER_MESSAGE"

    #@649
    .line 1277
    move-object/from16 v0, p0

    #@64b
    iget-object v0, v0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$P2pEnabledState;->this$1:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    #@64d
    move-object/from16 v21, v0

    #@64f
    invoke-static/range {v21 .. v21}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->-get19(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;)Lcom/android/server/wifi/WifiNative;

    #@652
    move-result-object v21

    #@653
    invoke-virtual/range {v21 .. v21}, Lcom/android/server/wifi/WifiNative;->getNfcHandoverRequest()Ljava/lang/String;

    #@656
    move-result-object v21

    #@657
    .line 1276
    move-object/from16 v0, v20

    #@659
    move-object/from16 v1, v21

    #@65b
    invoke-virtual {v14, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    #@65e
    .line 1278
    move-object/from16 v0, p0

    #@660
    iget-object v0, v0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$P2pEnabledState;->this$1:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    #@662
    move-object/from16 v20, v0

    #@664
    const v21, 0x2204d

    #@667
    move-object/from16 v0, v20

    #@669
    move-object/from16 v1, p1

    #@66b
    move/from16 v2, v21

    #@66d
    invoke-static {v0, v1, v2, v14}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->-wrap24(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;Landroid/os/Message;ILjava/lang/Object;)V

    #@670
    goto/16 :goto_0

    #@672
    .line 1282
    .end local v14    # "requestBundle":Landroid/os/Bundle;
    :sswitch_19
    new-instance v18, Landroid/os/Bundle;

    #@674
    invoke-direct/range {v18 .. v18}, Landroid/os/Bundle;-><init>()V

    #@677
    .line 1283
    .local v18, "selectBundle":Landroid/os/Bundle;
    const-string/jumbo v20, "android.net.wifi.p2p.EXTRA_HANDOVER_MESSAGE"

    #@67a
    .line 1284
    move-object/from16 v0, p0

    #@67c
    iget-object v0, v0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$P2pEnabledState;->this$1:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    #@67e
    move-object/from16 v21, v0

    #@680
    invoke-static/range {v21 .. v21}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->-get19(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;)Lcom/android/server/wifi/WifiNative;

    #@683
    move-result-object v21

    #@684
    invoke-virtual/range {v21 .. v21}, Lcom/android/server/wifi/WifiNative;->getNfcHandoverSelect()Ljava/lang/String;

    #@687
    move-result-object v21

    #@688
    .line 1283
    move-object/from16 v0, v18

    #@68a
    move-object/from16 v1, v20

    #@68c
    move-object/from16 v2, v21

    #@68e
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    #@691
    .line 1285
    move-object/from16 v0, p0

    #@693
    iget-object v0, v0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$P2pEnabledState;->this$1:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    #@695
    move-object/from16 v20, v0

    #@697
    const v21, 0x2204d

    #@69a
    move-object/from16 v0, v20

    #@69c
    move-object/from16 v1, p1

    #@69e
    move/from16 v2, v21

    #@6a0
    move-object/from16 v3, v18

    #@6a2
    invoke-static {v0, v1, v2, v3}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->-wrap24(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;Landroid/os/Message;ILjava/lang/Object;)V

    #@6a5
    goto/16 :goto_0

    #@6a7
    .line 1067
    nop

    #@6a8
    :sswitch_data_0
    .sparse-switch
        0x20083 -> :sswitch_1
        0x20084 -> :sswitch_2
        0x22001 -> :sswitch_6
        0x22004 -> :sswitch_8
        0x2201c -> :sswitch_c
        0x2201f -> :sswitch_d
        0x22022 -> :sswitch_e
        0x22025 -> :sswitch_f
        0x22028 -> :sswitch_10
        0x2202b -> :sswitch_11
        0x2202e -> :sswitch_9
        0x22033 -> :sswitch_3
        0x22036 -> :sswitch_13
        0x2203b -> :sswitch_4
        0x22041 -> :sswitch_15
        0x22044 -> :sswitch_16
        0x22047 -> :sswitch_17
        0x2204b -> :sswitch_18
        0x2204c -> :sswitch_19
        0x2300e -> :sswitch_14
        0x2300f -> :sswitch_5
        0x24002 -> :sswitch_0
        0x24015 -> :sswitch_a
        0x24016 -> :sswitch_b
        0x24025 -> :sswitch_7
        0x24026 -> :sswitch_12
    .end sparse-switch
.end method
