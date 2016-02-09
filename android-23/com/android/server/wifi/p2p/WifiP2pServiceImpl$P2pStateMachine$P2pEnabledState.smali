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
    .line 946
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
    .line 950
    iget-object v0, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$P2pEnabledState;->this$1:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    #@3
    invoke-static {v0, v1}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->-wrap29(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;Z)V

    #@6
    .line 951
    iget-object v0, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$P2pEnabledState;->this$1:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    #@8
    iget-object v0, v0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->this$0:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;

    #@a
    invoke-static {v0}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->-get13(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;)Landroid/net/NetworkInfo;

    #@d
    move-result-object v0

    #@e
    invoke-virtual {v0, v1}, Landroid/net/NetworkInfo;->setIsAvailable(Z)V

    #@11
    .line 952
    iget-object v0, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$P2pEnabledState;->this$1:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    #@13
    invoke-static {v0}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->-wrap26(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;)V

    #@16
    .line 953
    iget-object v0, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$P2pEnabledState;->this$1:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    #@18
    invoke-static {v0}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->-wrap15(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;)V

    #@1b
    .line 948
    return-void
.end method

.method public exit()V
    .locals 2

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 1198
    iget-object v0, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$P2pEnabledState;->this$1:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    #@3
    invoke-static {v0, v1}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->-wrap27(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;Z)V

    #@6
    .line 1199
    iget-object v0, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$P2pEnabledState;->this$1:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    #@8
    invoke-static {v0, v1}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->-wrap29(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;Z)V

    #@b
    .line 1200
    iget-object v0, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$P2pEnabledState;->this$1:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    #@d
    iget-object v0, v0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->this$0:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;

    #@f
    invoke-static {v0}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->-get13(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;)Landroid/net/NetworkInfo;

    #@12
    move-result-object v0

    #@13
    invoke-virtual {v0, v1}, Landroid/net/NetworkInfo;->setIsAvailable(Z)V

    #@16
    .line 1202
    iget-object v0, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$P2pEnabledState;->this$1:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    #@18
    iget-object v0, v0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->this$0:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;

    #@1a
    const/4 v1, 0x0

    #@1b
    invoke-static {v0, v1}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->-set8(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;Ljava/lang/String;)Ljava/lang/String;

    #@1e
    .line 1197
    return-void
.end method

.method public processMessage(Landroid/os/Message;)Z
    .locals 25
    .param p1, "message"    # Landroid/os/Message;

    #@0
    .prologue
    .line 959
    move-object/from16 v0, p1

    #@2
    iget v0, v0, Landroid/os/Message;->what:I

    #@4
    move/from16 v21, v0

    #@6
    sparse-switch v21, :sswitch_data_0

    #@9
    .line 1191
    const/16 v21, 0x0

    #@b
    return v21

    #@c
    .line 961
    :sswitch_0
    move-object/from16 v0, p0

    #@e
    iget-object v0, v0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$P2pEnabledState;->this$1:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    #@10
    move-object/from16 v21, v0

    #@12
    const-string/jumbo v22, "Unexpected loss of p2p socket connection"

    #@15
    invoke-virtual/range {v21 .. v22}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->loge(Ljava/lang/String;)V

    #@18
    .line 962
    move-object/from16 v0, p0

    #@1a
    iget-object v0, v0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$P2pEnabledState;->this$1:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    #@1c
    move-object/from16 v21, v0

    #@1e
    move-object/from16 v0, p0

    #@20
    iget-object v0, v0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$P2pEnabledState;->this$1:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    #@22
    move-object/from16 v22, v0

    #@24
    invoke-static/range {v22 .. v22}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->-get8(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;)Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$P2pDisabledState;

    #@27
    move-result-object v22

    #@28
    invoke-static/range {v21 .. v22}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->-wrap34(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;Lcom/android/internal/util/IState;)V

    #@2b
    .line 1193
    :cond_0
    :goto_0
    :sswitch_1
    const/16 v21, 0x1

    #@2d
    return v21

    #@2e
    .line 968
    :sswitch_2
    move-object/from16 v0, p0

    #@30
    iget-object v0, v0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$P2pEnabledState;->this$1:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    #@32
    move-object/from16 v21, v0

    #@34
    invoke-static/range {v21 .. v21}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->-get11(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;)Landroid/net/wifi/p2p/WifiP2pDeviceList;

    #@37
    move-result-object v21

    #@38
    invoke-virtual/range {v21 .. v21}, Landroid/net/wifi/p2p/WifiP2pDeviceList;->clear()Z

    #@3b
    move-result v21

    #@3c
    if-eqz v21, :cond_1

    #@3e
    .line 969
    move-object/from16 v0, p0

    #@40
    iget-object v0, v0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$P2pEnabledState;->this$1:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    #@42
    move-object/from16 v21, v0

    #@44
    invoke-static/range {v21 .. v21}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->-wrap30(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;)V

    #@47
    .line 971
    :cond_1
    move-object/from16 v0, p0

    #@49
    iget-object v0, v0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$P2pEnabledState;->this$1:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    #@4b
    move-object/from16 v21, v0

    #@4d
    invoke-static/range {v21 .. v21}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->-get5(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;)Landroid/net/wifi/p2p/WifiP2pGroupList;

    #@50
    move-result-object v21

    #@51
    invoke-virtual/range {v21 .. v21}, Landroid/net/wifi/p2p/WifiP2pGroupList;->clear()Z

    #@54
    move-result v21

    #@55
    if-eqz v21, :cond_2

    #@57
    move-object/from16 v0, p0

    #@59
    iget-object v0, v0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$P2pEnabledState;->this$1:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    #@5b
    move-object/from16 v21, v0

    #@5d
    invoke-static/range {v21 .. v21}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->-wrap28(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;)V

    #@60
    .line 973
    :cond_2
    move-object/from16 v0, p0

    #@62
    iget-object v0, v0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$P2pEnabledState;->this$1:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    #@64
    move-object/from16 v21, v0

    #@66
    invoke-static/range {v21 .. v21}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->-get18(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;)Lcom/android/server/wifi/WifiMonitor;

    #@69
    move-result-object v21

    #@6a
    invoke-virtual/range {v21 .. v21}, Lcom/android/server/wifi/WifiMonitor;->stopMonitoring()V

    #@6d
    .line 974
    move-object/from16 v0, p0

    #@6f
    iget-object v0, v0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$P2pEnabledState;->this$1:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    #@71
    move-object/from16 v21, v0

    #@73
    move-object/from16 v0, p0

    #@75
    iget-object v0, v0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$P2pEnabledState;->this$1:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    #@77
    move-object/from16 v22, v0

    #@79
    invoke-static/range {v22 .. v22}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->-get9(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;)Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$P2pDisablingState;

    #@7c
    move-result-object v22

    #@7d
    invoke-static/range {v21 .. v22}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->-wrap34(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;Lcom/android/internal/util/IState;)V

    #@80
    goto :goto_0

    #@81
    .line 978
    :sswitch_3
    move-object/from16 v0, p1

    #@83
    iget-object v6, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@85
    check-cast v6, Landroid/net/wifi/p2p/WifiP2pDevice;

    #@87
    .line 979
    .local v6, "d":Landroid/net/wifi/p2p/WifiP2pDevice;
    if-eqz v6, :cond_3

    #@89
    move-object/from16 v0, p0

    #@8b
    iget-object v0, v0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$P2pEnabledState;->this$1:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    #@8d
    move-object/from16 v21, v0

    #@8f
    iget-object v0, v6, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceName:Ljava/lang/String;

    #@91
    move-object/from16 v22, v0

    #@93
    invoke-static/range {v21 .. v22}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->-wrap5(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;Ljava/lang/String;)Z

    #@96
    move-result v21

    #@97
    if-eqz v21, :cond_3

    #@99
    .line 981
    move-object/from16 v0, p0

    #@9b
    iget-object v0, v0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$P2pEnabledState;->this$1:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    #@9d
    move-object/from16 v21, v0

    #@9f
    const v22, 0x22035

    #@a2
    move-object/from16 v0, v21

    #@a4
    move-object/from16 v1, p1

    #@a6
    move/from16 v2, v22

    #@a8
    invoke-static {v0, v1, v2}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->-wrap22(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;Landroid/os/Message;I)V

    #@ab
    goto :goto_0

    #@ac
    .line 983
    :cond_3
    move-object/from16 v0, p0

    #@ae
    iget-object v0, v0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$P2pEnabledState;->this$1:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    #@b0
    move-object/from16 v21, v0

    #@b2
    const v22, 0x22034

    #@b5
    .line 984
    const/16 v23, 0x0

    #@b7
    .line 983
    move-object/from16 v0, v21

    #@b9
    move-object/from16 v1, p1

    #@bb
    move/from16 v2, v22

    #@bd
    move/from16 v3, v23

    #@bf
    invoke-static {v0, v1, v2, v3}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->-wrap23(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;Landroid/os/Message;II)V

    #@c2
    goto/16 :goto_0

    #@c4
    .line 990
    .end local v6    # "d":Landroid/net/wifi/p2p/WifiP2pDevice;
    :sswitch_4
    move-object/from16 v0, p1

    #@c6
    iget-object v7, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@c8
    check-cast v7, Landroid/net/wifi/p2p/WifiP2pWfdInfo;

    #@ca
    .line 991
    .local v7, "d":Landroid/net/wifi/p2p/WifiP2pWfdInfo;
    if-eqz v7, :cond_4

    #@cc
    move-object/from16 v0, p0

    #@ce
    iget-object v0, v0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$P2pEnabledState;->this$1:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    #@d0
    move-object/from16 v21, v0

    #@d2
    move-object/from16 v0, v21

    #@d4
    invoke-static {v0, v7}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->-wrap6(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;Landroid/net/wifi/p2p/WifiP2pWfdInfo;)Z

    #@d7
    move-result v21

    #@d8
    if-eqz v21, :cond_4

    #@da
    .line 992
    move-object/from16 v0, p0

    #@dc
    iget-object v0, v0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$P2pEnabledState;->this$1:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    #@de
    move-object/from16 v21, v0

    #@e0
    const v22, 0x2203d

    #@e3
    move-object/from16 v0, v21

    #@e5
    move-object/from16 v1, p1

    #@e7
    move/from16 v2, v22

    #@e9
    invoke-static {v0, v1, v2}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->-wrap22(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;Landroid/os/Message;I)V

    #@ec
    goto/16 :goto_0

    #@ee
    .line 994
    :cond_4
    move-object/from16 v0, p0

    #@f0
    iget-object v0, v0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$P2pEnabledState;->this$1:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    #@f2
    move-object/from16 v21, v0

    #@f4
    const v22, 0x2203c

    #@f7
    .line 995
    const/16 v23, 0x0

    #@f9
    .line 994
    move-object/from16 v0, v21

    #@fb
    move-object/from16 v1, p1

    #@fd
    move/from16 v2, v22

    #@ff
    move/from16 v3, v23

    #@101
    invoke-static {v0, v1, v2, v3}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->-wrap23(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;Landroid/os/Message;II)V

    #@104
    goto/16 :goto_0

    #@106
    .line 1000
    .end local v7    # "d":Landroid/net/wifi/p2p/WifiP2pWfdInfo;
    :sswitch_5
    move-object/from16 v0, p1

    #@108
    iget v0, v0, Landroid/os/Message;->arg1:I

    #@10a
    move/from16 v21, v0

    #@10c
    const/16 v22, 0x1

    #@10e
    move/from16 v0, v21

    #@110
    move/from16 v1, v22

    #@112
    if-ne v0, v1, :cond_7

    #@114
    const/4 v4, 0x1

    #@115
    .line 1001
    .local v4, "blocked":Z
    :goto_1
    move-object/from16 v0, p0

    #@117
    iget-object v0, v0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$P2pEnabledState;->this$1:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    #@119
    move-object/from16 v21, v0

    #@11b
    move-object/from16 v0, v21

    #@11d
    iget-object v0, v0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->this$0:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;

    #@11f
    move-object/from16 v21, v0

    #@121
    invoke-static/range {v21 .. v21}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->-get7(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;)Z

    #@124
    move-result v21

    #@125
    move/from16 v0, v21

    #@127
    if-eq v0, v4, :cond_0

    #@129
    .line 1002
    move-object/from16 v0, p0

    #@12b
    iget-object v0, v0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$P2pEnabledState;->this$1:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    #@12d
    move-object/from16 v21, v0

    #@12f
    move-object/from16 v0, v21

    #@131
    iget-object v0, v0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->this$0:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;

    #@133
    move-object/from16 v21, v0

    #@135
    move-object/from16 v0, v21

    #@137
    invoke-static {v0, v4}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->-set3(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;Z)Z

    #@13a
    .line 1003
    if-eqz v4, :cond_5

    #@13c
    move-object/from16 v0, p0

    #@13e
    iget-object v0, v0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$P2pEnabledState;->this$1:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    #@140
    move-object/from16 v21, v0

    #@142
    move-object/from16 v0, v21

    #@144
    iget-object v0, v0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->this$0:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;

    #@146
    move-object/from16 v21, v0

    #@148
    invoke-static/range {v21 .. v21}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->-get9(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;)Z

    #@14b
    move-result v21

    #@14c
    if-eqz v21, :cond_5

    #@14e
    .line 1004
    move-object/from16 v0, p0

    #@150
    iget-object v0, v0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$P2pEnabledState;->this$1:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    #@152
    move-object/from16 v21, v0

    #@154
    invoke-static/range {v21 .. v21}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->-get19(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;)Lcom/android/server/wifi/WifiNative;

    #@157
    move-result-object v21

    #@158
    invoke-virtual/range {v21 .. v21}, Lcom/android/server/wifi/WifiNative;->p2pStopFind()Z

    #@15b
    .line 1005
    move-object/from16 v0, p0

    #@15d
    iget-object v0, v0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$P2pEnabledState;->this$1:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    #@15f
    move-object/from16 v21, v0

    #@161
    move-object/from16 v0, v21

    #@163
    iget-object v0, v0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->this$0:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;

    #@165
    move-object/from16 v21, v0

    #@167
    const/16 v22, 0x1

    #@169
    invoke-static/range {v21 .. v22}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->-set4(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;Z)Z

    #@16c
    .line 1007
    :cond_5
    if-nez v4, :cond_6

    #@16e
    move-object/from16 v0, p0

    #@170
    iget-object v0, v0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$P2pEnabledState;->this$1:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    #@172
    move-object/from16 v21, v0

    #@174
    move-object/from16 v0, v21

    #@176
    iget-object v0, v0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->this$0:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;

    #@178
    move-object/from16 v21, v0

    #@17a
    invoke-static/range {v21 .. v21}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->-get8(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;)Z

    #@17d
    move-result v21

    #@17e
    if-eqz v21, :cond_6

    #@180
    .line 1008
    move-object/from16 v0, p0

    #@182
    iget-object v0, v0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$P2pEnabledState;->this$1:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    #@184
    move-object/from16 v21, v0

    #@186
    move-object/from16 v0, v21

    #@188
    iget-object v0, v0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->this$0:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;

    #@18a
    move-object/from16 v21, v0

    #@18c
    const/16 v22, 0x0

    #@18e
    invoke-static/range {v21 .. v22}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->-set4(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;Z)Z

    #@191
    .line 1009
    move-object/from16 v0, p0

    #@193
    iget-object v0, v0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$P2pEnabledState;->this$1:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    #@195
    move-object/from16 v21, v0

    #@197
    invoke-static/range {v21 .. v21}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->-get19(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;)Lcom/android/server/wifi/WifiNative;

    #@19a
    move-result-object v21

    #@19b
    const/16 v22, 0x78

    #@19d
    invoke-virtual/range {v21 .. v22}, Lcom/android/server/wifi/WifiNative;->p2pFind(I)Z

    #@1a0
    .line 1011
    :cond_6
    if-eqz v4, :cond_0

    #@1a2
    .line 1013
    :try_start_0
    move-object/from16 v0, p1

    #@1a4
    iget-object v12, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@1a6
    check-cast v12, Lcom/android/internal/util/StateMachine;

    #@1a8
    .line 1014
    .local v12, "m":Lcom/android/internal/util/StateMachine;
    move-object/from16 v0, p1

    #@1aa
    iget v0, v0, Landroid/os/Message;->arg2:I

    #@1ac
    move/from16 v21, v0

    #@1ae
    move/from16 v0, v21

    #@1b0
    invoke-virtual {v12, v0}, Lcom/android/internal/util/StateMachine;->sendMessage(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    #@1b3
    goto/16 :goto_0

    #@1b5
    .line 1015
    .end local v12    # "m":Lcom/android/internal/util/StateMachine;
    :catch_0
    move-exception v10

    #@1b6
    .line 1016
    .local v10, "e":Ljava/lang/Exception;
    move-object/from16 v0, p0

    #@1b8
    iget-object v0, v0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$P2pEnabledState;->this$1:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    #@1ba
    move-object/from16 v21, v0

    #@1bc
    new-instance v22, Ljava/lang/StringBuilder;

    #@1be
    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    #@1c1
    const-string/jumbo v23, "unable to send BLOCK_DISCOVERY response: "

    #@1c4
    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1c7
    move-result-object v22

    #@1c8
    move-object/from16 v0, v22

    #@1ca
    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@1cd
    move-result-object v22

    #@1ce
    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1d1
    move-result-object v22

    #@1d2
    invoke-virtual/range {v21 .. v22}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->loge(Ljava/lang/String;)V

    #@1d5
    goto/16 :goto_0

    #@1d7
    .line 1000
    .end local v4    # "blocked":Z
    .end local v10    # "e":Ljava/lang/Exception;
    :cond_7
    const/4 v4, 0x0

    #@1d8
    .restart local v4    # "blocked":Z
    goto/16 :goto_1

    #@1da
    .line 1021
    .end local v4    # "blocked":Z
    :sswitch_6
    move-object/from16 v0, p0

    #@1dc
    iget-object v0, v0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$P2pEnabledState;->this$1:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    #@1de
    move-object/from16 v21, v0

    #@1e0
    move-object/from16 v0, v21

    #@1e2
    iget-object v0, v0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->this$0:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;

    #@1e4
    move-object/from16 v21, v0

    #@1e6
    invoke-static/range {v21 .. v21}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->-get7(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;)Z

    #@1e9
    move-result v21

    #@1ea
    if-eqz v21, :cond_8

    #@1ec
    .line 1022
    move-object/from16 v0, p0

    #@1ee
    iget-object v0, v0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$P2pEnabledState;->this$1:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    #@1f0
    move-object/from16 v21, v0

    #@1f2
    const v22, 0x22002

    #@1f5
    .line 1023
    const/16 v23, 0x2

    #@1f7
    .line 1022
    move-object/from16 v0, v21

    #@1f9
    move-object/from16 v1, p1

    #@1fb
    move/from16 v2, v22

    #@1fd
    move/from16 v3, v23

    #@1ff
    invoke-static {v0, v1, v2, v3}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->-wrap23(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;Landroid/os/Message;II)V

    #@202
    goto/16 :goto_0

    #@204
    .line 1027
    :cond_8
    move-object/from16 v0, p0

    #@206
    iget-object v0, v0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$P2pEnabledState;->this$1:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    #@208
    move-object/from16 v21, v0

    #@20a
    invoke-static/range {v21 .. v21}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->-wrap11(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;)V

    #@20d
    .line 1028
    move-object/from16 v0, p0

    #@20f
    iget-object v0, v0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$P2pEnabledState;->this$1:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    #@211
    move-object/from16 v21, v0

    #@213
    invoke-static/range {v21 .. v21}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->-get19(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;)Lcom/android/server/wifi/WifiNative;

    #@216
    move-result-object v21

    #@217
    const/16 v22, 0x78

    #@219
    invoke-virtual/range {v21 .. v22}, Lcom/android/server/wifi/WifiNative;->p2pFind(I)Z

    #@21c
    move-result v21

    #@21d
    if-eqz v21, :cond_9

    #@21f
    .line 1029
    move-object/from16 v0, p0

    #@221
    iget-object v0, v0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$P2pEnabledState;->this$1:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    #@223
    move-object/from16 v21, v0

    #@225
    const v22, 0x22003

    #@228
    move-object/from16 v0, v21

    #@22a
    move-object/from16 v1, p1

    #@22c
    move/from16 v2, v22

    #@22e
    invoke-static {v0, v1, v2}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->-wrap22(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;Landroid/os/Message;I)V

    #@231
    .line 1030
    move-object/from16 v0, p0

    #@233
    iget-object v0, v0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$P2pEnabledState;->this$1:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    #@235
    move-object/from16 v21, v0

    #@237
    const/16 v22, 0x1

    #@239
    invoke-static/range {v21 .. v22}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->-wrap27(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;Z)V

    #@23c
    goto/16 :goto_0

    #@23e
    .line 1032
    :cond_9
    move-object/from16 v0, p0

    #@240
    iget-object v0, v0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$P2pEnabledState;->this$1:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    #@242
    move-object/from16 v21, v0

    #@244
    const v22, 0x22002

    #@247
    .line 1033
    const/16 v23, 0x0

    #@249
    .line 1032
    move-object/from16 v0, v21

    #@24b
    move-object/from16 v1, p1

    #@24d
    move/from16 v2, v22

    #@24f
    move/from16 v3, v23

    #@251
    invoke-static {v0, v1, v2, v3}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->-wrap23(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;Landroid/os/Message;II)V

    #@254
    goto/16 :goto_0

    #@256
    .line 1037
    :sswitch_7
    move-object/from16 v0, p0

    #@258
    iget-object v0, v0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$P2pEnabledState;->this$1:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    #@25a
    move-object/from16 v21, v0

    #@25c
    const/16 v22, 0x0

    #@25e
    invoke-static/range {v21 .. v22}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->-wrap27(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;Z)V

    #@261
    goto/16 :goto_0

    #@263
    .line 1040
    :sswitch_8
    move-object/from16 v0, p0

    #@265
    iget-object v0, v0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$P2pEnabledState;->this$1:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    #@267
    move-object/from16 v21, v0

    #@269
    invoke-static/range {v21 .. v21}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->-get19(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;)Lcom/android/server/wifi/WifiNative;

    #@26c
    move-result-object v21

    #@26d
    invoke-virtual/range {v21 .. v21}, Lcom/android/server/wifi/WifiNative;->p2pStopFind()Z

    #@270
    move-result v21

    #@271
    if-eqz v21, :cond_a

    #@273
    .line 1041
    move-object/from16 v0, p0

    #@275
    iget-object v0, v0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$P2pEnabledState;->this$1:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    #@277
    move-object/from16 v21, v0

    #@279
    const v22, 0x22006

    #@27c
    move-object/from16 v0, v21

    #@27e
    move-object/from16 v1, p1

    #@280
    move/from16 v2, v22

    #@282
    invoke-static {v0, v1, v2}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->-wrap22(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;Landroid/os/Message;I)V

    #@285
    goto/16 :goto_0

    #@287
    .line 1043
    :cond_a
    move-object/from16 v0, p0

    #@289
    iget-object v0, v0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$P2pEnabledState;->this$1:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    #@28b
    move-object/from16 v21, v0

    #@28d
    const v22, 0x22005

    #@290
    .line 1044
    const/16 v23, 0x0

    #@292
    .line 1043
    move-object/from16 v0, v21

    #@294
    move-object/from16 v1, p1

    #@296
    move/from16 v2, v22

    #@298
    move/from16 v3, v23

    #@29a
    invoke-static {v0, v1, v2, v3}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->-wrap23(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;Landroid/os/Message;II)V

    #@29d
    goto/16 :goto_0

    #@29f
    .line 1048
    :sswitch_9
    move-object/from16 v0, p0

    #@2a1
    iget-object v0, v0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$P2pEnabledState;->this$1:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    #@2a3
    move-object/from16 v21, v0

    #@2a5
    move-object/from16 v0, v21

    #@2a7
    iget-object v0, v0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->this$0:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;

    #@2a9
    move-object/from16 v21, v0

    #@2ab
    invoke-static/range {v21 .. v21}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->-get7(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;)Z

    #@2ae
    move-result v21

    #@2af
    if-eqz v21, :cond_b

    #@2b1
    .line 1049
    move-object/from16 v0, p0

    #@2b3
    iget-object v0, v0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$P2pEnabledState;->this$1:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    #@2b5
    move-object/from16 v21, v0

    #@2b7
    const v22, 0x2202f

    #@2ba
    .line 1050
    const/16 v23, 0x2

    #@2bc
    .line 1049
    move-object/from16 v0, v21

    #@2be
    move-object/from16 v1, p1

    #@2c0
    move/from16 v2, v22

    #@2c2
    move/from16 v3, v23

    #@2c4
    invoke-static {v0, v1, v2, v3}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->-wrap23(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;Landroid/os/Message;II)V

    #@2c7
    goto/16 :goto_0

    #@2c9
    .line 1054
    :cond_b
    move-object/from16 v0, p0

    #@2cb
    iget-object v0, v0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$P2pEnabledState;->this$1:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    #@2cd
    move-object/from16 v21, v0

    #@2cf
    invoke-static/range {v21 .. v21}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->-wrap7(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;)Z

    #@2d2
    move-result v21

    #@2d3
    if-nez v21, :cond_c

    #@2d5
    .line 1055
    move-object/from16 v0, p0

    #@2d7
    iget-object v0, v0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$P2pEnabledState;->this$1:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    #@2d9
    move-object/from16 v21, v0

    #@2db
    const v22, 0x2202f

    #@2de
    .line 1056
    const/16 v23, 0x3

    #@2e0
    .line 1055
    move-object/from16 v0, v21

    #@2e2
    move-object/from16 v1, p1

    #@2e4
    move/from16 v2, v22

    #@2e6
    move/from16 v3, v23

    #@2e8
    invoke-static {v0, v1, v2, v3}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->-wrap23(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;Landroid/os/Message;II)V

    #@2eb
    goto/16 :goto_0

    #@2ed
    .line 1059
    :cond_c
    move-object/from16 v0, p0

    #@2ef
    iget-object v0, v0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$P2pEnabledState;->this$1:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    #@2f1
    move-object/from16 v21, v0

    #@2f3
    invoke-static/range {v21 .. v21}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->-get19(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;)Lcom/android/server/wifi/WifiNative;

    #@2f6
    move-result-object v21

    #@2f7
    const/16 v22, 0x78

    #@2f9
    invoke-virtual/range {v21 .. v22}, Lcom/android/server/wifi/WifiNative;->p2pFind(I)Z

    #@2fc
    move-result v21

    #@2fd
    if-eqz v21, :cond_d

    #@2ff
    .line 1060
    move-object/from16 v0, p0

    #@301
    iget-object v0, v0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$P2pEnabledState;->this$1:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    #@303
    move-object/from16 v21, v0

    #@305
    const v22, 0x22030

    #@308
    move-object/from16 v0, v21

    #@30a
    move-object/from16 v1, p1

    #@30c
    move/from16 v2, v22

    #@30e
    invoke-static {v0, v1, v2}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->-wrap22(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;Landroid/os/Message;I)V

    #@311
    goto/16 :goto_0

    #@313
    .line 1062
    :cond_d
    move-object/from16 v0, p0

    #@315
    iget-object v0, v0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$P2pEnabledState;->this$1:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    #@317
    move-object/from16 v21, v0

    #@319
    const v22, 0x2202f

    #@31c
    .line 1063
    const/16 v23, 0x0

    #@31e
    .line 1062
    move-object/from16 v0, v21

    #@320
    move-object/from16 v1, p1

    #@322
    move/from16 v2, v22

    #@324
    move/from16 v3, v23

    #@326
    invoke-static {v0, v1, v2, v3}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->-wrap23(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;Landroid/os/Message;II)V

    #@329
    goto/16 :goto_0

    #@32b
    .line 1067
    :sswitch_a
    move-object/from16 v0, p1

    #@32d
    iget-object v9, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@32f
    check-cast v9, Landroid/net/wifi/p2p/WifiP2pDevice;

    #@331
    .line 1068
    .local v9, "device":Landroid/net/wifi/p2p/WifiP2pDevice;
    move-object/from16 v0, p0

    #@333
    iget-object v0, v0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$P2pEnabledState;->this$1:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    #@335
    move-object/from16 v21, v0

    #@337
    move-object/from16 v0, v21

    #@339
    iget-object v0, v0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->this$0:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;

    #@33b
    move-object/from16 v21, v0

    #@33d
    invoke-static/range {v21 .. v21}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->-get19(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;)Landroid/net/wifi/p2p/WifiP2pDevice;

    #@340
    move-result-object v21

    #@341
    move-object/from16 v0, v21

    #@343
    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;

    #@345
    move-object/from16 v21, v0

    #@347
    iget-object v0, v9, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;

    #@349
    move-object/from16 v22, v0

    #@34b
    invoke-virtual/range {v21 .. v22}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@34e
    move-result v21

    #@34f
    if-nez v21, :cond_0

    #@351
    .line 1069
    move-object/from16 v0, p0

    #@353
    iget-object v0, v0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$P2pEnabledState;->this$1:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    #@355
    move-object/from16 v21, v0

    #@357
    invoke-static/range {v21 .. v21}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->-get11(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;)Landroid/net/wifi/p2p/WifiP2pDeviceList;

    #@35a
    move-result-object v21

    #@35b
    move-object/from16 v0, v21

    #@35d
    invoke-virtual {v0, v9}, Landroid/net/wifi/p2p/WifiP2pDeviceList;->updateSupplicantDetails(Landroid/net/wifi/p2p/WifiP2pDevice;)V

    #@360
    .line 1070
    move-object/from16 v0, p0

    #@362
    iget-object v0, v0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$P2pEnabledState;->this$1:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    #@364
    move-object/from16 v21, v0

    #@366
    invoke-static/range {v21 .. v21}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->-wrap30(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;)V

    #@369
    goto/16 :goto_0

    #@36b
    .line 1073
    .end local v9    # "device":Landroid/net/wifi/p2p/WifiP2pDevice;
    :sswitch_b
    move-object/from16 v0, p1

    #@36d
    iget-object v9, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@36f
    check-cast v9, Landroid/net/wifi/p2p/WifiP2pDevice;

    #@371
    .line 1075
    .restart local v9    # "device":Landroid/net/wifi/p2p/WifiP2pDevice;
    move-object/from16 v0, p0

    #@373
    iget-object v0, v0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$P2pEnabledState;->this$1:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    #@375
    move-object/from16 v21, v0

    #@377
    invoke-static/range {v21 .. v21}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->-get11(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;)Landroid/net/wifi/p2p/WifiP2pDeviceList;

    #@37a
    move-result-object v21

    #@37b
    iget-object v0, v9, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;

    #@37d
    move-object/from16 v22, v0

    #@37f
    invoke-virtual/range {v21 .. v22}, Landroid/net/wifi/p2p/WifiP2pDeviceList;->remove(Ljava/lang/String;)Landroid/net/wifi/p2p/WifiP2pDevice;

    #@382
    move-result-object v9

    #@383
    .line 1076
    if-eqz v9, :cond_0

    #@385
    .line 1077
    move-object/from16 v0, p0

    #@387
    iget-object v0, v0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$P2pEnabledState;->this$1:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    #@389
    move-object/from16 v21, v0

    #@38b
    invoke-static/range {v21 .. v21}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->-wrap30(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;)V

    #@38e
    goto/16 :goto_0

    #@390
    .line 1082
    .end local v9    # "device":Landroid/net/wifi/p2p/WifiP2pDevice;
    :sswitch_c
    move-object/from16 v0, p1

    #@392
    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@394
    move-object/from16 v20, v0

    #@396
    check-cast v20, Landroid/net/wifi/p2p/nsd/WifiP2pServiceInfo;

    #@398
    .line 1083
    .local v20, "servInfo":Landroid/net/wifi/p2p/nsd/WifiP2pServiceInfo;
    move-object/from16 v0, p0

    #@39a
    iget-object v0, v0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$P2pEnabledState;->this$1:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    #@39c
    move-object/from16 v21, v0

    #@39e
    move-object/from16 v0, p1

    #@3a0
    iget-object v0, v0, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    #@3a2
    move-object/from16 v22, v0

    #@3a4
    move-object/from16 v0, v21

    #@3a6
    move-object/from16 v1, v22

    #@3a8
    move-object/from16 v2, v20

    #@3aa
    invoke-static {v0, v1, v2}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->-wrap0(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;Landroid/os/Messenger;Landroid/net/wifi/p2p/nsd/WifiP2pServiceInfo;)Z

    #@3ad
    move-result v21

    #@3ae
    if-eqz v21, :cond_e

    #@3b0
    .line 1084
    move-object/from16 v0, p0

    #@3b2
    iget-object v0, v0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$P2pEnabledState;->this$1:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    #@3b4
    move-object/from16 v21, v0

    #@3b6
    const v22, 0x2201e

    #@3b9
    move-object/from16 v0, v21

    #@3bb
    move-object/from16 v1, p1

    #@3bd
    move/from16 v2, v22

    #@3bf
    invoke-static {v0, v1, v2}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->-wrap22(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;Landroid/os/Message;I)V

    #@3c2
    goto/16 :goto_0

    #@3c4
    .line 1086
    :cond_e
    move-object/from16 v0, p0

    #@3c6
    iget-object v0, v0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$P2pEnabledState;->this$1:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    #@3c8
    move-object/from16 v21, v0

    #@3ca
    const v22, 0x2201d

    #@3cd
    move-object/from16 v0, v21

    #@3cf
    move-object/from16 v1, p1

    #@3d1
    move/from16 v2, v22

    #@3d3
    invoke-static {v0, v1, v2}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->-wrap22(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;Landroid/os/Message;I)V

    #@3d6
    goto/16 :goto_0

    #@3d8
    .line 1091
    .end local v20    # "servInfo":Landroid/net/wifi/p2p/nsd/WifiP2pServiceInfo;
    :sswitch_d
    move-object/from16 v0, p1

    #@3da
    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@3dc
    move-object/from16 v20, v0

    #@3de
    check-cast v20, Landroid/net/wifi/p2p/nsd/WifiP2pServiceInfo;

    #@3e0
    .line 1092
    .restart local v20    # "servInfo":Landroid/net/wifi/p2p/nsd/WifiP2pServiceInfo;
    move-object/from16 v0, p0

    #@3e2
    iget-object v0, v0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$P2pEnabledState;->this$1:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    #@3e4
    move-object/from16 v21, v0

    #@3e6
    move-object/from16 v0, p1

    #@3e8
    iget-object v0, v0, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    #@3ea
    move-object/from16 v22, v0

    #@3ec
    move-object/from16 v0, v21

    #@3ee
    move-object/from16 v1, v22

    #@3f0
    move-object/from16 v2, v20

    #@3f2
    invoke-static {v0, v1, v2}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->-wrap20(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;Landroid/os/Messenger;Landroid/net/wifi/p2p/nsd/WifiP2pServiceInfo;)V

    #@3f5
    .line 1093
    move-object/from16 v0, p0

    #@3f7
    iget-object v0, v0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$P2pEnabledState;->this$1:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    #@3f9
    move-object/from16 v21, v0

    #@3fb
    const v22, 0x22021

    #@3fe
    move-object/from16 v0, v21

    #@400
    move-object/from16 v1, p1

    #@402
    move/from16 v2, v22

    #@404
    invoke-static {v0, v1, v2}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->-wrap22(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;Landroid/os/Message;I)V

    #@407
    goto/16 :goto_0

    #@409
    .line 1097
    .end local v20    # "servInfo":Landroid/net/wifi/p2p/nsd/WifiP2pServiceInfo;
    :sswitch_e
    move-object/from16 v0, p0

    #@40b
    iget-object v0, v0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$P2pEnabledState;->this$1:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    #@40d
    move-object/from16 v21, v0

    #@40f
    move-object/from16 v0, p1

    #@411
    iget-object v0, v0, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    #@413
    move-object/from16 v22, v0

    #@415
    invoke-static/range {v21 .. v22}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->-wrap9(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;Landroid/os/Messenger;)V

    #@418
    .line 1098
    move-object/from16 v0, p0

    #@41a
    iget-object v0, v0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$P2pEnabledState;->this$1:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    #@41c
    move-object/from16 v21, v0

    #@41e
    const v22, 0x22024

    #@421
    move-object/from16 v0, v21

    #@423
    move-object/from16 v1, p1

    #@425
    move/from16 v2, v22

    #@427
    invoke-static {v0, v1, v2}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->-wrap22(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;Landroid/os/Message;I)V

    #@42a
    goto/16 :goto_0

    #@42c
    .line 1102
    :sswitch_f
    move-object/from16 v0, p0

    #@42e
    iget-object v0, v0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$P2pEnabledState;->this$1:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    #@430
    move-object/from16 v22, v0

    #@432
    move-object/from16 v0, p1

    #@434
    iget-object v0, v0, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    #@436
    move-object/from16 v23, v0

    #@438
    move-object/from16 v0, p1

    #@43a
    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@43c
    move-object/from16 v21, v0

    #@43e
    check-cast v21, Landroid/net/wifi/p2p/nsd/WifiP2pServiceRequest;

    #@440
    move-object/from16 v0, v22

    #@442
    move-object/from16 v1, v23

    #@444
    move-object/from16 v2, v21

    #@446
    invoke-static {v0, v1, v2}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->-wrap1(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;Landroid/os/Messenger;Landroid/net/wifi/p2p/nsd/WifiP2pServiceRequest;)Z

    #@449
    move-result v21

    #@44a
    if-nez v21, :cond_f

    #@44c
    .line 1103
    move-object/from16 v0, p0

    #@44e
    iget-object v0, v0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$P2pEnabledState;->this$1:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    #@450
    move-object/from16 v21, v0

    #@452
    const v22, 0x22026

    #@455
    move-object/from16 v0, v21

    #@457
    move-object/from16 v1, p1

    #@459
    move/from16 v2, v22

    #@45b
    invoke-static {v0, v1, v2}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->-wrap22(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;Landroid/os/Message;I)V

    #@45e
    goto/16 :goto_0

    #@460
    .line 1106
    :cond_f
    move-object/from16 v0, p0

    #@462
    iget-object v0, v0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$P2pEnabledState;->this$1:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    #@464
    move-object/from16 v21, v0

    #@466
    const v22, 0x22027

    #@469
    move-object/from16 v0, v21

    #@46b
    move-object/from16 v1, p1

    #@46d
    move/from16 v2, v22

    #@46f
    invoke-static {v0, v1, v2}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->-wrap22(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;Landroid/os/Message;I)V

    #@472
    goto/16 :goto_0

    #@474
    .line 1110
    :sswitch_10
    move-object/from16 v0, p0

    #@476
    iget-object v0, v0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$P2pEnabledState;->this$1:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    #@478
    move-object/from16 v22, v0

    #@47a
    move-object/from16 v0, p1

    #@47c
    iget-object v0, v0, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    #@47e
    move-object/from16 v23, v0

    #@480
    move-object/from16 v0, p1

    #@482
    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@484
    move-object/from16 v21, v0

    #@486
    check-cast v21, Landroid/net/wifi/p2p/nsd/WifiP2pServiceRequest;

    #@488
    move-object/from16 v0, v22

    #@48a
    move-object/from16 v1, v23

    #@48c
    move-object/from16 v2, v21

    #@48e
    invoke-static {v0, v1, v2}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->-wrap21(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;Landroid/os/Messenger;Landroid/net/wifi/p2p/nsd/WifiP2pServiceRequest;)V

    #@491
    .line 1111
    move-object/from16 v0, p0

    #@493
    iget-object v0, v0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$P2pEnabledState;->this$1:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    #@495
    move-object/from16 v21, v0

    #@497
    const v22, 0x2202a

    #@49a
    move-object/from16 v0, v21

    #@49c
    move-object/from16 v1, p1

    #@49e
    move/from16 v2, v22

    #@4a0
    invoke-static {v0, v1, v2}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->-wrap22(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;Landroid/os/Message;I)V

    #@4a3
    goto/16 :goto_0

    #@4a5
    .line 1115
    :sswitch_11
    move-object/from16 v0, p0

    #@4a7
    iget-object v0, v0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$P2pEnabledState;->this$1:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    #@4a9
    move-object/from16 v21, v0

    #@4ab
    move-object/from16 v0, p1

    #@4ad
    iget-object v0, v0, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    #@4af
    move-object/from16 v22, v0

    #@4b1
    invoke-static/range {v21 .. v22}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->-wrap10(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;Landroid/os/Messenger;)V

    #@4b4
    .line 1116
    move-object/from16 v0, p0

    #@4b6
    iget-object v0, v0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$P2pEnabledState;->this$1:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    #@4b8
    move-object/from16 v21, v0

    #@4ba
    const v22, 0x2202d

    #@4bd
    move-object/from16 v0, v21

    #@4bf
    move-object/from16 v1, p1

    #@4c1
    move/from16 v2, v22

    #@4c3
    invoke-static {v0, v1, v2}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->-wrap22(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;Landroid/os/Message;I)V

    #@4c6
    goto/16 :goto_0

    #@4c8
    .line 1121
    :sswitch_12
    move-object/from16 v0, p1

    #@4ca
    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@4cc
    move-object/from16 v18, v0

    #@4ce
    check-cast v18, Ljava/util/List;

    #@4d0
    .line 1122
    .local v18, "sdRespList":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/p2p/nsd/WifiP2pServiceResponse;>;"
    invoke-interface/range {v18 .. v18}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@4d3
    move-result-object v17

    #@4d4
    .local v17, "resp$iterator":Ljava/util/Iterator;
    :goto_2
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->hasNext()Z

    #@4d7
    move-result v21

    #@4d8
    if-eqz v21, :cond_0

    #@4da
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@4dd
    move-result-object v16

    #@4de
    check-cast v16, Landroid/net/wifi/p2p/nsd/WifiP2pServiceResponse;

    #@4e0
    .line 1124
    .local v16, "resp":Landroid/net/wifi/p2p/nsd/WifiP2pServiceResponse;
    move-object/from16 v0, p0

    #@4e2
    iget-object v0, v0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$P2pEnabledState;->this$1:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    #@4e4
    move-object/from16 v21, v0

    #@4e6
    invoke-static/range {v21 .. v21}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->-get11(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;)Landroid/net/wifi/p2p/WifiP2pDeviceList;

    #@4e9
    move-result-object v21

    #@4ea
    invoke-virtual/range {v16 .. v16}, Landroid/net/wifi/p2p/nsd/WifiP2pServiceResponse;->getSrcDevice()Landroid/net/wifi/p2p/WifiP2pDevice;

    #@4ed
    move-result-object v22

    #@4ee
    move-object/from16 v0, v22

    #@4f0
    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;

    #@4f2
    move-object/from16 v22, v0

    #@4f4
    invoke-virtual/range {v21 .. v22}, Landroid/net/wifi/p2p/WifiP2pDeviceList;->get(Ljava/lang/String;)Landroid/net/wifi/p2p/WifiP2pDevice;

    #@4f7
    move-result-object v8

    #@4f8
    .line 1125
    .local v8, "dev":Landroid/net/wifi/p2p/WifiP2pDevice;
    move-object/from16 v0, v16

    #@4fa
    invoke-virtual {v0, v8}, Landroid/net/wifi/p2p/nsd/WifiP2pServiceResponse;->setSrcDevice(Landroid/net/wifi/p2p/WifiP2pDevice;)V

    #@4fd
    .line 1126
    move-object/from16 v0, p0

    #@4ff
    iget-object v0, v0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$P2pEnabledState;->this$1:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    #@501
    move-object/from16 v21, v0

    #@503
    move-object/from16 v0, v21

    #@505
    move-object/from16 v1, v16

    #@507
    invoke-static {v0, v1}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->-wrap31(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;Landroid/net/wifi/p2p/nsd/WifiP2pServiceResponse;)V

    #@50a
    goto :goto_2

    #@50b
    .line 1131
    .end local v8    # "dev":Landroid/net/wifi/p2p/WifiP2pDevice;
    .end local v16    # "resp":Landroid/net/wifi/p2p/nsd/WifiP2pServiceResponse;
    .end local v17    # "resp$iterator":Ljava/util/Iterator;
    .end local v18    # "sdRespList":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/p2p/nsd/WifiP2pServiceResponse;>;"
    :sswitch_13
    move-object/from16 v0, p0

    #@50d
    iget-object v0, v0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$P2pEnabledState;->this$1:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    #@50f
    move-object/from16 v21, v0

    #@511
    invoke-static/range {v21 .. v21}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->-get5(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;)Landroid/net/wifi/p2p/WifiP2pGroupList;

    #@514
    move-result-object v21

    #@515
    move-object/from16 v0, p1

    #@517
    iget v0, v0, Landroid/os/Message;->arg1:I

    #@519
    move/from16 v22, v0

    #@51b
    invoke-virtual/range {v21 .. v22}, Landroid/net/wifi/p2p/WifiP2pGroupList;->remove(I)V

    #@51e
    .line 1132
    move-object/from16 v0, p0

    #@520
    iget-object v0, v0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$P2pEnabledState;->this$1:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    #@522
    move-object/from16 v21, v0

    #@524
    const v22, 0x22038

    #@527
    move-object/from16 v0, v21

    #@529
    move-object/from16 v1, p1

    #@52b
    move/from16 v2, v22

    #@52d
    invoke-static {v0, v1, v2}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->-wrap22(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;Landroid/os/Message;I)V

    #@530
    goto/16 :goto_0

    #@532
    .line 1135
    :sswitch_14
    move-object/from16 v0, p0

    #@534
    iget-object v0, v0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$P2pEnabledState;->this$1:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    #@536
    move-object/from16 v21, v0

    #@538
    invoke-static/range {v21 .. v21}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->-get19(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;)Lcom/android/server/wifi/WifiNative;

    #@53b
    move-result-object v21

    #@53c
    move-object/from16 v0, p1

    #@53e
    iget v0, v0, Landroid/os/Message;->arg1:I

    #@540
    move/from16 v22, v0

    #@542
    invoke-virtual/range {v21 .. v22}, Lcom/android/server/wifi/WifiNative;->setMiracastMode(I)V

    #@545
    goto/16 :goto_0

    #@547
    .line 1139
    :sswitch_15
    move-object/from16 v0, p0

    #@549
    iget-object v0, v0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$P2pEnabledState;->this$1:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    #@54b
    move-object/from16 v21, v0

    #@54d
    invoke-static/range {v21 .. v21}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->-get19(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;)Lcom/android/server/wifi/WifiNative;

    #@550
    move-result-object v21

    #@551
    invoke-virtual/range {v21 .. v21}, Lcom/android/server/wifi/WifiNative;->p2pFlush()Z

    #@554
    .line 1140
    move-object/from16 v0, p0

    #@556
    iget-object v0, v0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$P2pEnabledState;->this$1:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    #@558
    move-object/from16 v21, v0

    #@55a
    invoke-static/range {v21 .. v21}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->-get19(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;)Lcom/android/server/wifi/WifiNative;

    #@55d
    move-result-object v21

    #@55e
    const/16 v22, 0x1

    #@560
    const/16 v23, 0x1f4

    #@562
    const/16 v24, 0x1f4

    #@564
    invoke-virtual/range {v21 .. v24}, Lcom/android/server/wifi/WifiNative;->p2pExtListen(ZII)Z

    #@567
    move-result v21

    #@568
    if-eqz v21, :cond_10

    #@56a
    .line 1141
    move-object/from16 v0, p0

    #@56c
    iget-object v0, v0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$P2pEnabledState;->this$1:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    #@56e
    move-object/from16 v21, v0

    #@570
    const v22, 0x22043

    #@573
    move-object/from16 v0, v21

    #@575
    move-object/from16 v1, p1

    #@577
    move/from16 v2, v22

    #@579
    invoke-static {v0, v1, v2}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->-wrap22(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;Landroid/os/Message;I)V

    #@57c
    goto/16 :goto_0

    #@57e
    .line 1143
    :cond_10
    move-object/from16 v0, p0

    #@580
    iget-object v0, v0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$P2pEnabledState;->this$1:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    #@582
    move-object/from16 v21, v0

    #@584
    const v22, 0x22042

    #@587
    move-object/from16 v0, v21

    #@589
    move-object/from16 v1, p1

    #@58b
    move/from16 v2, v22

    #@58d
    invoke-static {v0, v1, v2}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->-wrap22(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;Landroid/os/Message;I)V

    #@590
    goto/16 :goto_0

    #@592
    .line 1148
    :sswitch_16
    move-object/from16 v0, p0

    #@594
    iget-object v0, v0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$P2pEnabledState;->this$1:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    #@596
    move-object/from16 v21, v0

    #@598
    invoke-static/range {v21 .. v21}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->-get19(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;)Lcom/android/server/wifi/WifiNative;

    #@59b
    move-result-object v21

    #@59c
    const/16 v22, 0x0

    #@59e
    const/16 v23, 0x0

    #@5a0
    const/16 v24, 0x0

    #@5a2
    invoke-virtual/range {v21 .. v24}, Lcom/android/server/wifi/WifiNative;->p2pExtListen(ZII)Z

    #@5a5
    move-result v21

    #@5a6
    if-eqz v21, :cond_11

    #@5a8
    .line 1149
    move-object/from16 v0, p0

    #@5aa
    iget-object v0, v0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$P2pEnabledState;->this$1:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    #@5ac
    move-object/from16 v21, v0

    #@5ae
    const v22, 0x22046

    #@5b1
    move-object/from16 v0, v21

    #@5b3
    move-object/from16 v1, p1

    #@5b5
    move/from16 v2, v22

    #@5b7
    invoke-static {v0, v1, v2}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->-wrap22(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;Landroid/os/Message;I)V

    #@5ba
    .line 1153
    :goto_3
    move-object/from16 v0, p0

    #@5bc
    iget-object v0, v0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$P2pEnabledState;->this$1:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    #@5be
    move-object/from16 v21, v0

    #@5c0
    invoke-static/range {v21 .. v21}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->-get19(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;)Lcom/android/server/wifi/WifiNative;

    #@5c3
    move-result-object v21

    #@5c4
    invoke-virtual/range {v21 .. v21}, Lcom/android/server/wifi/WifiNative;->p2pFlush()Z

    #@5c7
    goto/16 :goto_0

    #@5c9
    .line 1151
    :cond_11
    move-object/from16 v0, p0

    #@5cb
    iget-object v0, v0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$P2pEnabledState;->this$1:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    #@5cd
    move-object/from16 v21, v0

    #@5cf
    const v22, 0x22045

    #@5d2
    move-object/from16 v0, v21

    #@5d4
    move-object/from16 v1, p1

    #@5d6
    move/from16 v2, v22

    #@5d8
    invoke-static {v0, v1, v2}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->-wrap22(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;Landroid/os/Message;I)V

    #@5db
    goto :goto_3

    #@5dc
    .line 1156
    :sswitch_17
    move-object/from16 v0, p1

    #@5de
    iget-object v14, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@5e0
    check-cast v14, Landroid/os/Bundle;

    #@5e2
    .line 1157
    .local v14, "p2pChannels":Landroid/os/Bundle;
    const-string/jumbo v21, "lc"

    #@5e5
    const/16 v22, 0x0

    #@5e7
    move-object/from16 v0, v21

    #@5e9
    move/from16 v1, v22

    #@5eb
    invoke-virtual {v14, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    #@5ee
    move-result v11

    #@5ef
    .line 1158
    .local v11, "lc":I
    const-string/jumbo v21, "oc"

    #@5f2
    const/16 v22, 0x0

    #@5f4
    move-object/from16 v0, v21

    #@5f6
    move/from16 v1, v22

    #@5f8
    invoke-virtual {v14, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    #@5fb
    move-result v13

    #@5fc
    .line 1160
    .local v13, "oc":I
    move-object/from16 v0, p0

    #@5fe
    iget-object v0, v0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$P2pEnabledState;->this$1:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    #@600
    move-object/from16 v21, v0

    #@602
    invoke-static/range {v21 .. v21}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->-get19(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;)Lcom/android/server/wifi/WifiNative;

    #@605
    move-result-object v21

    #@606
    move-object/from16 v0, v21

    #@608
    invoke-virtual {v0, v11, v13}, Lcom/android/server/wifi/WifiNative;->p2pSetChannel(II)Z

    #@60b
    move-result v21

    #@60c
    if-eqz v21, :cond_12

    #@60e
    .line 1161
    move-object/from16 v0, p0

    #@610
    iget-object v0, v0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$P2pEnabledState;->this$1:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    #@612
    move-object/from16 v21, v0

    #@614
    const v22, 0x22049

    #@617
    move-object/from16 v0, v21

    #@619
    move-object/from16 v1, p1

    #@61b
    move/from16 v2, v22

    #@61d
    invoke-static {v0, v1, v2}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->-wrap22(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;Landroid/os/Message;I)V

    #@620
    goto/16 :goto_0

    #@622
    .line 1163
    :cond_12
    move-object/from16 v0, p0

    #@624
    iget-object v0, v0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$P2pEnabledState;->this$1:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    #@626
    move-object/from16 v21, v0

    #@628
    const v22, 0x22048

    #@62b
    move-object/from16 v0, v21

    #@62d
    move-object/from16 v1, p1

    #@62f
    move/from16 v2, v22

    #@631
    invoke-static {v0, v1, v2}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->-wrap22(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;Landroid/os/Message;I)V

    #@634
    goto/16 :goto_0

    #@636
    .line 1167
    .end local v11    # "lc":I
    .end local v13    # "oc":I
    .end local v14    # "p2pChannels":Landroid/os/Bundle;
    :sswitch_18
    move-object/from16 v0, p1

    #@638
    iget-object v5, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@63a
    check-cast v5, Ljava/lang/String;

    #@63c
    .line 1168
    .local v5, "countryCode":Ljava/lang/String;
    sget-object v21, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    #@63e
    move-object/from16 v0, v21

    #@640
    invoke-virtual {v5, v0}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    #@643
    move-result-object v5

    #@644
    .line 1169
    move-object/from16 v0, p0

    #@646
    iget-object v0, v0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$P2pEnabledState;->this$1:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    #@648
    move-object/from16 v21, v0

    #@64a
    move-object/from16 v0, v21

    #@64c
    iget-object v0, v0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->this$0:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;

    #@64e
    move-object/from16 v21, v0

    #@650
    invoke-static/range {v21 .. v21}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->-get12(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;)Ljava/lang/String;

    #@653
    move-result-object v21

    #@654
    if-eqz v21, :cond_13

    #@656
    .line 1170
    move-object/from16 v0, p0

    #@658
    iget-object v0, v0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$P2pEnabledState;->this$1:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    #@65a
    move-object/from16 v21, v0

    #@65c
    move-object/from16 v0, v21

    #@65e
    iget-object v0, v0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->this$0:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;

    #@660
    move-object/from16 v21, v0

    #@662
    invoke-static/range {v21 .. v21}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->-get12(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;)Ljava/lang/String;

    #@665
    move-result-object v21

    #@666
    move-object/from16 v0, v21

    #@668
    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@66b
    move-result v21

    #@66c
    if-nez v21, :cond_0

    #@66e
    .line 1171
    :cond_13
    move-object/from16 v0, p0

    #@670
    iget-object v0, v0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$P2pEnabledState;->this$1:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    #@672
    move-object/from16 v21, v0

    #@674
    invoke-static/range {v21 .. v21}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->-get19(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;)Lcom/android/server/wifi/WifiNative;

    #@677
    move-result-object v21

    #@678
    move-object/from16 v0, v21

    #@67a
    invoke-virtual {v0, v5}, Lcom/android/server/wifi/WifiNative;->setCountryCode(Ljava/lang/String;)Z

    #@67d
    move-result v21

    #@67e
    if-eqz v21, :cond_0

    #@680
    .line 1172
    move-object/from16 v0, p0

    #@682
    iget-object v0, v0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$P2pEnabledState;->this$1:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    #@684
    move-object/from16 v21, v0

    #@686
    move-object/from16 v0, v21

    #@688
    iget-object v0, v0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->this$0:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;

    #@68a
    move-object/from16 v21, v0

    #@68c
    move-object/from16 v0, v21

    #@68e
    invoke-static {v0, v5}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->-set8(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;Ljava/lang/String;)Ljava/lang/String;

    #@691
    goto/16 :goto_0

    #@693
    .line 1177
    .end local v5    # "countryCode":Ljava/lang/String;
    :sswitch_19
    new-instance v15, Landroid/os/Bundle;

    #@695
    invoke-direct {v15}, Landroid/os/Bundle;-><init>()V

    #@698
    .line 1178
    .local v15, "requestBundle":Landroid/os/Bundle;
    const-string/jumbo v21, "android.net.wifi.p2p.EXTRA_HANDOVER_MESSAGE"

    #@69b
    .line 1179
    move-object/from16 v0, p0

    #@69d
    iget-object v0, v0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$P2pEnabledState;->this$1:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    #@69f
    move-object/from16 v22, v0

    #@6a1
    invoke-static/range {v22 .. v22}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->-get19(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;)Lcom/android/server/wifi/WifiNative;

    #@6a4
    move-result-object v22

    #@6a5
    invoke-virtual/range {v22 .. v22}, Lcom/android/server/wifi/WifiNative;->getNfcHandoverRequest()Ljava/lang/String;

    #@6a8
    move-result-object v22

    #@6a9
    .line 1178
    move-object/from16 v0, v21

    #@6ab
    move-object/from16 v1, v22

    #@6ad
    invoke-virtual {v15, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    #@6b0
    .line 1180
    move-object/from16 v0, p0

    #@6b2
    iget-object v0, v0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$P2pEnabledState;->this$1:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    #@6b4
    move-object/from16 v21, v0

    #@6b6
    const v22, 0x2204d

    #@6b9
    move-object/from16 v0, v21

    #@6bb
    move-object/from16 v1, p1

    #@6bd
    move/from16 v2, v22

    #@6bf
    invoke-static {v0, v1, v2, v15}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->-wrap24(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;Landroid/os/Message;ILjava/lang/Object;)V

    #@6c2
    goto/16 :goto_0

    #@6c4
    .line 1184
    .end local v15    # "requestBundle":Landroid/os/Bundle;
    :sswitch_1a
    new-instance v19, Landroid/os/Bundle;

    #@6c6
    invoke-direct/range {v19 .. v19}, Landroid/os/Bundle;-><init>()V

    #@6c9
    .line 1185
    .local v19, "selectBundle":Landroid/os/Bundle;
    const-string/jumbo v21, "android.net.wifi.p2p.EXTRA_HANDOVER_MESSAGE"

    #@6cc
    .line 1186
    move-object/from16 v0, p0

    #@6ce
    iget-object v0, v0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$P2pEnabledState;->this$1:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    #@6d0
    move-object/from16 v22, v0

    #@6d2
    invoke-static/range {v22 .. v22}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->-get19(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;)Lcom/android/server/wifi/WifiNative;

    #@6d5
    move-result-object v22

    #@6d6
    invoke-virtual/range {v22 .. v22}, Lcom/android/server/wifi/WifiNative;->getNfcHandoverSelect()Ljava/lang/String;

    #@6d9
    move-result-object v22

    #@6da
    .line 1185
    move-object/from16 v0, v19

    #@6dc
    move-object/from16 v1, v21

    #@6de
    move-object/from16 v2, v22

    #@6e0
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    #@6e3
    .line 1187
    move-object/from16 v0, p0

    #@6e5
    iget-object v0, v0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$P2pEnabledState;->this$1:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    #@6e7
    move-object/from16 v21, v0

    #@6e9
    const v22, 0x2204d

    #@6ec
    move-object/from16 v0, v21

    #@6ee
    move-object/from16 v1, p1

    #@6f0
    move/from16 v2, v22

    #@6f2
    move-object/from16 v3, v19

    #@6f4
    invoke-static {v0, v1, v2, v3}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->-wrap24(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;Landroid/os/Message;ILjava/lang/Object;)V

    #@6f7
    goto/16 :goto_0

    #@6f9
    .line 959
    nop

    #@6fa
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
        0x2204b -> :sswitch_19
        0x2204c -> :sswitch_1a
        0x2300e -> :sswitch_14
        0x2300f -> :sswitch_5
        0x23010 -> :sswitch_18
        0x24002 -> :sswitch_0
        0x24015 -> :sswitch_a
        0x24016 -> :sswitch_b
        0x24025 -> :sswitch_7
        0x24026 -> :sswitch_12
    .end sparse-switch
.end method
