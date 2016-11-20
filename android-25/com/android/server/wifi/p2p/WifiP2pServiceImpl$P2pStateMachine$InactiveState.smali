.class Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$InactiveState;
.super Lcom/android/internal/util/State;
.source "WifiP2pServiceImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "InactiveState"
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;


# direct methods
.method constructor <init>(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    #@0
    .prologue
    .line 1302
    iput-object p1, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$InactiveState;->this$1:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    #@2
    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    #@5
    return-void
.end method


# virtual methods
.method public enter()V
    .locals 1

    #@0
    .prologue
    .line 1306
    iget-object v0, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$InactiveState;->this$1:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    #@2
    invoke-static {v0}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->-get14(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;)Landroid/net/wifi/p2p/WifiP2pConfig;

    #@5
    move-result-object v0

    #@6
    invoke-virtual {v0}, Landroid/net/wifi/p2p/WifiP2pConfig;->invalidate()V

    #@9
    .line 1304
    return-void
.end method

.method public processMessage(Landroid/os/Message;)Z
    .locals 17
    .param p1, "message"    # Landroid/os/Message;

    #@0
    .prologue
    .line 1312
    move-object/from16 v0, p1

    #@2
    iget v13, v0, Landroid/os/Message;->what:I

    #@4
    sparse-switch v13, :sswitch_data_0

    #@7
    .line 1512
    const/4 v13, 0x0

    #@8
    return v13

    #@9
    .line 1315
    :sswitch_0
    move-object/from16 v0, p1

    #@b
    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@d
    check-cast v2, Landroid/net/wifi/p2p/WifiP2pConfig;

    #@f
    .line 1316
    .local v2, "config":Landroid/net/wifi/p2p/WifiP2pConfig;
    move-object/from16 v0, p0

    #@11
    iget-object v13, v0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$InactiveState;->this$1:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    #@13
    invoke-static {v13, v2}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->-wrap2(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;Landroid/net/wifi/p2p/WifiP2pConfig;)Z

    #@16
    move-result v13

    #@17
    if-eqz v13, :cond_0

    #@19
    .line 1317
    move-object/from16 v0, p0

    #@1b
    iget-object v13, v0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$InactiveState;->this$1:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    #@1d
    new-instance v14, Ljava/lang/StringBuilder;

    #@1f
    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    #@22
    const-string/jumbo v15, "Dropping connect requeset "

    #@25
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@28
    move-result-object v14

    #@29
    invoke-virtual {v14, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@2c
    move-result-object v14

    #@2d
    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@30
    move-result-object v14

    #@31
    invoke-virtual {v13, v14}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->loge(Ljava/lang/String;)V

    #@34
    .line 1318
    move-object/from16 v0, p0

    #@36
    iget-object v13, v0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$InactiveState;->this$1:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    #@38
    const v14, 0x22008

    #@3b
    move-object/from16 v0, p1

    #@3d
    invoke-static {v13, v0, v14}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->-wrap22(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;Landroid/os/Message;I)V

    #@40
    .line 1514
    .end local v2    # "config":Landroid/net/wifi/p2p/WifiP2pConfig;
    :goto_0
    :sswitch_1
    const/4 v13, 0x1

    #@41
    return v13

    #@42
    .line 1322
    .restart local v2    # "config":Landroid/net/wifi/p2p/WifiP2pConfig;
    :cond_0
    move-object/from16 v0, p0

    #@44
    iget-object v13, v0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$InactiveState;->this$1:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    #@46
    iget-object v13, v13, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->this$0:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;

    #@48
    const/4 v14, 0x0

    #@49
    invoke-static {v13, v14}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->-set0(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;Z)Z

    #@4c
    .line 1323
    move-object/from16 v0, p0

    #@4e
    iget-object v13, v0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$InactiveState;->this$1:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    #@50
    invoke-static {v13}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->-get19(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;)Lcom/android/server/wifi/WifiNative;

    #@53
    move-result-object v13

    #@54
    invoke-virtual {v13}, Lcom/android/server/wifi/WifiNative;->p2pStopFind()Z

    #@57
    .line 1324
    move-object/from16 v0, p0

    #@59
    iget-object v13, v0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$InactiveState;->this$1:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    #@5b
    invoke-static {v13, v2}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->-wrap3(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;Landroid/net/wifi/p2p/WifiP2pConfig;)Z

    #@5e
    move-result v13

    #@5f
    if-eqz v13, :cond_1

    #@61
    .line 1325
    move-object/from16 v0, p0

    #@63
    iget-object v13, v0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$InactiveState;->this$1:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    #@65
    move-object/from16 v0, p0

    #@67
    iget-object v14, v0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$InactiveState;->this$1:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    #@69
    invoke-static {v14}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->-get4(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;)Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$GroupNegotiationState;

    #@6c
    move-result-object v14

    #@6d
    invoke-static {v13, v14}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->-wrap34(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;Lcom/android/internal/util/IState;)V

    #@70
    .line 1329
    :goto_1
    move-object/from16 v0, p0

    #@72
    iget-object v13, v0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$InactiveState;->this$1:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    #@74
    invoke-static {v13, v2}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->-set1(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;Landroid/net/wifi/p2p/WifiP2pConfig;)Landroid/net/wifi/p2p/WifiP2pConfig;

    #@77
    .line 1330
    move-object/from16 v0, p0

    #@79
    iget-object v13, v0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$InactiveState;->this$1:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    #@7b
    invoke-static {v13}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->-get11(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;)Landroid/net/wifi/p2p/WifiP2pDeviceList;

    #@7e
    move-result-object v13

    #@7f
    move-object/from16 v0, p0

    #@81
    iget-object v14, v0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$InactiveState;->this$1:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    #@83
    invoke-static {v14}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->-get14(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;)Landroid/net/wifi/p2p/WifiP2pConfig;

    #@86
    move-result-object v14

    #@87
    iget-object v14, v14, Landroid/net/wifi/p2p/WifiP2pConfig;->deviceAddress:Ljava/lang/String;

    #@89
    const/4 v15, 0x1

    #@8a
    invoke-virtual {v13, v14, v15}, Landroid/net/wifi/p2p/WifiP2pDeviceList;->updateStatus(Ljava/lang/String;I)V

    #@8d
    .line 1331
    move-object/from16 v0, p0

    #@8f
    iget-object v13, v0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$InactiveState;->this$1:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    #@91
    invoke-static {v13}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->-wrap30(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;)V

    #@94
    .line 1332
    move-object/from16 v0, p0

    #@96
    iget-object v13, v0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$InactiveState;->this$1:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    #@98
    const v14, 0x22009

    #@9b
    move-object/from16 v0, p1

    #@9d
    invoke-static {v13, v0, v14}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->-wrap22(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;Landroid/os/Message;I)V

    #@a0
    goto :goto_0

    #@a1
    .line 1327
    :cond_1
    move-object/from16 v0, p0

    #@a3
    iget-object v13, v0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$InactiveState;->this$1:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    #@a5
    move-object/from16 v0, p0

    #@a7
    iget-object v14, v0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$InactiveState;->this$1:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    #@a9
    invoke-static {v14}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->-get13(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;)Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$ProvisionDiscoveryState;

    #@ac
    move-result-object v14

    #@ad
    invoke-static {v13, v14}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->-wrap34(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;Lcom/android/internal/util/IState;)V

    #@b0
    goto :goto_1

    #@b1
    .line 1335
    .end local v2    # "config":Landroid/net/wifi/p2p/WifiP2pConfig;
    :sswitch_2
    move-object/from16 v0, p0

    #@b3
    iget-object v13, v0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$InactiveState;->this$1:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    #@b5
    invoke-static {v13}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->-get19(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;)Lcom/android/server/wifi/WifiNative;

    #@b8
    move-result-object v13

    #@b9
    invoke-virtual {v13}, Lcom/android/server/wifi/WifiNative;->p2pStopFind()Z

    #@bc
    move-result v13

    #@bd
    if-eqz v13, :cond_2

    #@bf
    .line 1338
    move-object/from16 v0, p0

    #@c1
    iget-object v13, v0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$InactiveState;->this$1:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    #@c3
    invoke-static {v13}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->-get19(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;)Lcom/android/server/wifi/WifiNative;

    #@c6
    move-result-object v13

    #@c7
    invoke-virtual {v13}, Lcom/android/server/wifi/WifiNative;->p2pFlush()Z

    #@ca
    .line 1339
    move-object/from16 v0, p0

    #@cc
    iget-object v13, v0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$InactiveState;->this$1:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    #@ce
    iget-object v13, v13, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->this$0:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;

    #@d0
    const/4 v14, 0x0

    #@d1
    invoke-static {v13, v14}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->-set8(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;Ljava/lang/String;)Ljava/lang/String;

    #@d4
    .line 1340
    move-object/from16 v0, p0

    #@d6
    iget-object v13, v0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$InactiveState;->this$1:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    #@d8
    const v14, 0x22006

    #@db
    move-object/from16 v0, p1

    #@dd
    invoke-static {v13, v0, v14}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->-wrap22(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;Landroid/os/Message;I)V

    #@e0
    goto/16 :goto_0

    #@e2
    .line 1342
    :cond_2
    move-object/from16 v0, p0

    #@e4
    iget-object v13, v0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$InactiveState;->this$1:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    #@e6
    const v14, 0x22005

    #@e9
    .line 1343
    const/4 v15, 0x0

    #@ea
    .line 1342
    move-object/from16 v0, p1

    #@ec
    invoke-static {v13, v0, v14, v15}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->-wrap23(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;Landroid/os/Message;II)V

    #@ef
    goto/16 :goto_0

    #@f1
    .line 1347
    :sswitch_3
    move-object/from16 v0, p1

    #@f3
    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@f5
    check-cast v2, Landroid/net/wifi/p2p/WifiP2pConfig;

    #@f7
    .line 1348
    .restart local v2    # "config":Landroid/net/wifi/p2p/WifiP2pConfig;
    move-object/from16 v0, p0

    #@f9
    iget-object v13, v0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$InactiveState;->this$1:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    #@fb
    invoke-static {v13, v2}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->-wrap2(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;Landroid/net/wifi/p2p/WifiP2pConfig;)Z

    #@fe
    move-result v13

    #@ff
    if-eqz v13, :cond_3

    #@101
    .line 1349
    move-object/from16 v0, p0

    #@103
    iget-object v13, v0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$InactiveState;->this$1:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    #@105
    new-instance v14, Ljava/lang/StringBuilder;

    #@107
    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    #@10a
    const-string/jumbo v15, "Dropping GO neg request "

    #@10d
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@110
    move-result-object v14

    #@111
    invoke-virtual {v14, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@114
    move-result-object v14

    #@115
    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@118
    move-result-object v14

    #@119
    invoke-virtual {v13, v14}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->loge(Ljava/lang/String;)V

    #@11c
    goto/16 :goto_0

    #@11e
    .line 1352
    :cond_3
    move-object/from16 v0, p0

    #@120
    iget-object v13, v0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$InactiveState;->this$1:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    #@122
    invoke-static {v13, v2}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->-set1(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;Landroid/net/wifi/p2p/WifiP2pConfig;)Landroid/net/wifi/p2p/WifiP2pConfig;

    #@125
    .line 1353
    move-object/from16 v0, p0

    #@127
    iget-object v13, v0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$InactiveState;->this$1:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    #@129
    iget-object v13, v13, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->this$0:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;

    #@12b
    const/4 v14, 0x0

    #@12c
    invoke-static {v13, v14}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->-set0(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;Z)Z

    #@12f
    .line 1354
    move-object/from16 v0, p0

    #@131
    iget-object v13, v0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$InactiveState;->this$1:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    #@133
    iget-object v13, v13, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->this$0:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;

    #@135
    const/4 v14, 0x0

    #@136
    invoke-static {v13, v14}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->-set7(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;Z)Z

    #@139
    .line 1355
    move-object/from16 v0, p0

    #@13b
    iget-object v13, v0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$InactiveState;->this$1:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    #@13d
    move-object/from16 v0, p0

    #@13f
    iget-object v14, v0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$InactiveState;->this$1:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    #@141
    invoke-static {v14}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->-get17(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;)Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$UserAuthorizingNegotiationRequestState;

    #@144
    move-result-object v14

    #@145
    invoke-static {v13, v14}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->-wrap34(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;Lcom/android/internal/util/IState;)V

    #@148
    goto/16 :goto_0

    #@14a
    .line 1358
    .end local v2    # "config":Landroid/net/wifi/p2p/WifiP2pConfig;
    :sswitch_4
    move-object/from16 v0, p1

    #@14c
    iget-object v3, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@14e
    check-cast v3, Landroid/net/wifi/p2p/WifiP2pGroup;

    #@150
    .line 1359
    .local v3, "group":Landroid/net/wifi/p2p/WifiP2pGroup;
    invoke-virtual {v3}, Landroid/net/wifi/p2p/WifiP2pGroup;->getOwner()Landroid/net/wifi/p2p/WifiP2pDevice;

    #@153
    move-result-object v10

    #@154
    .line 1361
    .local v10, "owner":Landroid/net/wifi/p2p/WifiP2pDevice;
    if-nez v10, :cond_5

    #@156
    .line 1362
    invoke-virtual {v3}, Landroid/net/wifi/p2p/WifiP2pGroup;->getNetworkId()I

    #@159
    move-result v6

    #@15a
    .line 1363
    .local v6, "id":I
    if-gez v6, :cond_4

    #@15c
    .line 1364
    move-object/from16 v0, p0

    #@15e
    iget-object v13, v0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$InactiveState;->this$1:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    #@160
    const-string/jumbo v14, "Ignored invitation from null owner"

    #@163
    invoke-virtual {v13, v14}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->loge(Ljava/lang/String;)V

    #@166
    goto/16 :goto_0

    #@168
    .line 1368
    :cond_4
    move-object/from16 v0, p0

    #@16a
    iget-object v13, v0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$InactiveState;->this$1:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    #@16c
    invoke-static {v13}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->-get5(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;)Landroid/net/wifi/p2p/WifiP2pGroupList;

    #@16f
    move-result-object v13

    #@170
    invoke-virtual {v13, v6}, Landroid/net/wifi/p2p/WifiP2pGroupList;->getOwnerAddr(I)Ljava/lang/String;

    #@173
    move-result-object v1

    #@174
    .line 1369
    .local v1, "addr":Ljava/lang/String;
    if-eqz v1, :cond_6

    #@176
    .line 1370
    new-instance v13, Landroid/net/wifi/p2p/WifiP2pDevice;

    #@178
    invoke-direct {v13, v1}, Landroid/net/wifi/p2p/WifiP2pDevice;-><init>(Ljava/lang/String;)V

    #@17b
    invoke-virtual {v3, v13}, Landroid/net/wifi/p2p/WifiP2pGroup;->setOwner(Landroid/net/wifi/p2p/WifiP2pDevice;)V

    #@17e
    .line 1371
    invoke-virtual {v3}, Landroid/net/wifi/p2p/WifiP2pGroup;->getOwner()Landroid/net/wifi/p2p/WifiP2pDevice;

    #@181
    move-result-object v10

    #@182
    .line 1378
    .end local v1    # "addr":Ljava/lang/String;
    .end local v6    # "id":I
    :cond_5
    new-instance v2, Landroid/net/wifi/p2p/WifiP2pConfig;

    #@184
    invoke-direct {v2}, Landroid/net/wifi/p2p/WifiP2pConfig;-><init>()V

    #@187
    .line 1379
    .restart local v2    # "config":Landroid/net/wifi/p2p/WifiP2pConfig;
    invoke-virtual {v3}, Landroid/net/wifi/p2p/WifiP2pGroup;->getOwner()Landroid/net/wifi/p2p/WifiP2pDevice;

    #@18a
    move-result-object v13

    #@18b
    iget-object v13, v13, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;

    #@18d
    iput-object v13, v2, Landroid/net/wifi/p2p/WifiP2pConfig;->deviceAddress:Ljava/lang/String;

    #@18f
    .line 1381
    move-object/from16 v0, p0

    #@191
    iget-object v13, v0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$InactiveState;->this$1:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    #@193
    invoke-static {v13, v2}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->-wrap2(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;Landroid/net/wifi/p2p/WifiP2pConfig;)Z

    #@196
    move-result v13

    #@197
    if-eqz v13, :cond_7

    #@199
    .line 1382
    move-object/from16 v0, p0

    #@19b
    iget-object v13, v0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$InactiveState;->this$1:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    #@19d
    new-instance v14, Ljava/lang/StringBuilder;

    #@19f
    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    #@1a2
    const-string/jumbo v15, "Dropping invitation request "

    #@1a5
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1a8
    move-result-object v14

    #@1a9
    invoke-virtual {v14, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@1ac
    move-result-object v14

    #@1ad
    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1b0
    move-result-object v14

    #@1b1
    invoke-virtual {v13, v14}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->loge(Ljava/lang/String;)V

    #@1b4
    goto/16 :goto_0

    #@1b6
    .line 1373
    .end local v2    # "config":Landroid/net/wifi/p2p/WifiP2pConfig;
    .restart local v1    # "addr":Ljava/lang/String;
    .restart local v6    # "id":I
    :cond_6
    move-object/from16 v0, p0

    #@1b8
    iget-object v13, v0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$InactiveState;->this$1:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    #@1ba
    const-string/jumbo v14, "Ignored invitation from null owner"

    #@1bd
    invoke-virtual {v13, v14}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->loge(Ljava/lang/String;)V

    #@1c0
    goto/16 :goto_0

    #@1c2
    .line 1385
    .end local v1    # "addr":Ljava/lang/String;
    .end local v6    # "id":I
    .restart local v2    # "config":Landroid/net/wifi/p2p/WifiP2pConfig;
    :cond_7
    move-object/from16 v0, p0

    #@1c4
    iget-object v13, v0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$InactiveState;->this$1:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    #@1c6
    invoke-static {v13, v2}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->-set1(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;Landroid/net/wifi/p2p/WifiP2pConfig;)Landroid/net/wifi/p2p/WifiP2pConfig;

    #@1c9
    .line 1389
    move-object/from16 v0, p0

    #@1cb
    iget-object v13, v0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$InactiveState;->this$1:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    #@1cd
    invoke-static {v13}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->-get11(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;)Landroid/net/wifi/p2p/WifiP2pDeviceList;

    #@1d0
    move-result-object v13

    #@1d1
    iget-object v14, v10, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;

    #@1d3
    invoke-virtual {v13, v14}, Landroid/net/wifi/p2p/WifiP2pDeviceList;->get(Ljava/lang/String;)Landroid/net/wifi/p2p/WifiP2pDevice;

    #@1d6
    move-result-object v10

    #@1d7
    if-eqz v10, :cond_8

    #@1d9
    .line 1390
    invoke-virtual {v10}, Landroid/net/wifi/p2p/WifiP2pDevice;->wpsPbcSupported()Z

    #@1dc
    move-result v13

    #@1dd
    if-eqz v13, :cond_9

    #@1df
    .line 1391
    move-object/from16 v0, p0

    #@1e1
    iget-object v13, v0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$InactiveState;->this$1:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    #@1e3
    invoke-static {v13}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->-get14(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;)Landroid/net/wifi/p2p/WifiP2pConfig;

    #@1e6
    move-result-object v13

    #@1e7
    iget-object v13, v13, Landroid/net/wifi/p2p/WifiP2pConfig;->wps:Landroid/net/wifi/WpsInfo;

    #@1e9
    const/4 v14, 0x0

    #@1ea
    iput v14, v13, Landroid/net/wifi/WpsInfo;->setup:I

    #@1ec
    .line 1399
    :cond_8
    :goto_2
    move-object/from16 v0, p0

    #@1ee
    iget-object v13, v0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$InactiveState;->this$1:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    #@1f0
    iget-object v13, v13, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->this$0:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;

    #@1f2
    const/4 v14, 0x0

    #@1f3
    invoke-static {v13, v14}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->-set0(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;Z)Z

    #@1f6
    .line 1400
    move-object/from16 v0, p0

    #@1f8
    iget-object v13, v0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$InactiveState;->this$1:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    #@1fa
    iget-object v13, v13, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->this$0:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;

    #@1fc
    const/4 v14, 0x1

    #@1fd
    invoke-static {v13, v14}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->-set7(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;Z)Z

    #@200
    .line 1401
    move-object/from16 v0, p0

    #@202
    iget-object v13, v0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$InactiveState;->this$1:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    #@204
    move-object/from16 v0, p0

    #@206
    iget-object v14, v0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$InactiveState;->this$1:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    #@208
    invoke-static {v14}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->-get15(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;)Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$UserAuthorizingInviteRequestState;

    #@20b
    move-result-object v14

    #@20c
    invoke-static {v13, v14}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->-wrap34(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;Lcom/android/internal/util/IState;)V

    #@20f
    goto/16 :goto_0

    #@211
    .line 1392
    :cond_9
    invoke-virtual {v10}, Landroid/net/wifi/p2p/WifiP2pDevice;->wpsKeypadSupported()Z

    #@214
    move-result v13

    #@215
    if-eqz v13, :cond_a

    #@217
    .line 1393
    move-object/from16 v0, p0

    #@219
    iget-object v13, v0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$InactiveState;->this$1:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    #@21b
    invoke-static {v13}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->-get14(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;)Landroid/net/wifi/p2p/WifiP2pConfig;

    #@21e
    move-result-object v13

    #@21f
    iget-object v13, v13, Landroid/net/wifi/p2p/WifiP2pConfig;->wps:Landroid/net/wifi/WpsInfo;

    #@221
    const/4 v14, 0x2

    #@222
    iput v14, v13, Landroid/net/wifi/WpsInfo;->setup:I

    #@224
    goto :goto_2

    #@225
    .line 1394
    :cond_a
    invoke-virtual {v10}, Landroid/net/wifi/p2p/WifiP2pDevice;->wpsDisplaySupported()Z

    #@228
    move-result v13

    #@229
    if-eqz v13, :cond_8

    #@22b
    .line 1395
    move-object/from16 v0, p0

    #@22d
    iget-object v13, v0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$InactiveState;->this$1:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    #@22f
    invoke-static {v13}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->-get14(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;)Landroid/net/wifi/p2p/WifiP2pConfig;

    #@232
    move-result-object v13

    #@233
    iget-object v13, v13, Landroid/net/wifi/p2p/WifiP2pConfig;->wps:Landroid/net/wifi/WpsInfo;

    #@235
    const/4 v14, 0x1

    #@236
    iput v14, v13, Landroid/net/wifi/WpsInfo;->setup:I

    #@238
    goto :goto_2

    #@239
    .line 1412
    .end local v2    # "config":Landroid/net/wifi/p2p/WifiP2pConfig;
    .end local v3    # "group":Landroid/net/wifi/p2p/WifiP2pGroup;
    .end local v10    # "owner":Landroid/net/wifi/p2p/WifiP2pDevice;
    :sswitch_5
    move-object/from16 v0, p0

    #@23b
    iget-object v13, v0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$InactiveState;->this$1:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    #@23d
    iget-object v13, v13, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->this$0:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;

    #@23f
    const/4 v14, 0x1

    #@240
    invoke-static {v13, v14}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->-set0(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;Z)Z

    #@243
    .line 1413
    move-object/from16 v0, p1

    #@245
    iget v8, v0, Landroid/os/Message;->arg1:I

    #@247
    .line 1414
    .local v8, "netId":I
    const/4 v12, 0x0

    #@248
    .line 1415
    .local v12, "ret":Z
    const/4 v13, -0x2

    #@249
    if-ne v8, v13, :cond_c

    #@24b
    .line 1417
    move-object/from16 v0, p0

    #@24d
    iget-object v13, v0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$InactiveState;->this$1:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    #@24f
    invoke-static {v13}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->-get5(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;)Landroid/net/wifi/p2p/WifiP2pGroupList;

    #@252
    move-result-object v13

    #@253
    move-object/from16 v0, p0

    #@255
    iget-object v14, v0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$InactiveState;->this$1:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    #@257
    iget-object v14, v14, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->this$0:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;

    #@259
    invoke-static {v14}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->-get18(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;)Landroid/net/wifi/p2p/WifiP2pDevice;

    #@25c
    move-result-object v14

    #@25d
    iget-object v14, v14, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;

    #@25f
    invoke-virtual {v13, v14}, Landroid/net/wifi/p2p/WifiP2pGroupList;->getNetworkId(Ljava/lang/String;)I

    #@262
    move-result v8

    #@263
    .line 1418
    const/4 v13, -0x1

    #@264
    if-eq v8, v13, :cond_b

    #@266
    .line 1419
    move-object/from16 v0, p0

    #@268
    iget-object v13, v0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$InactiveState;->this$1:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    #@26a
    invoke-static {v13}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->-get19(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;)Lcom/android/server/wifi/WifiNative;

    #@26d
    move-result-object v13

    #@26e
    invoke-virtual {v13, v8}, Lcom/android/server/wifi/WifiNative;->p2pGroupAdd(I)Z

    #@271
    move-result v12

    #@272
    .line 1427
    .local v12, "ret":Z
    :goto_3
    if-eqz v12, :cond_d

    #@274
    .line 1428
    move-object/from16 v0, p0

    #@276
    iget-object v13, v0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$InactiveState;->this$1:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    #@278
    const v14, 0x2200f

    #@27b
    move-object/from16 v0, p1

    #@27d
    invoke-static {v13, v0, v14}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->-wrap22(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;Landroid/os/Message;I)V

    #@280
    .line 1429
    move-object/from16 v0, p0

    #@282
    iget-object v13, v0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$InactiveState;->this$1:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    #@284
    move-object/from16 v0, p0

    #@286
    iget-object v14, v0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$InactiveState;->this$1:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    #@288
    invoke-static {v14}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->-get4(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;)Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$GroupNegotiationState;

    #@28b
    move-result-object v14

    #@28c
    invoke-static {v13, v14}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->-wrap34(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;Lcom/android/internal/util/IState;)V

    #@28f
    goto/16 :goto_0

    #@291
    .line 1421
    .local v12, "ret":Z
    :cond_b
    move-object/from16 v0, p0

    #@293
    iget-object v13, v0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$InactiveState;->this$1:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    #@295
    invoke-static {v13}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->-get19(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;)Lcom/android/server/wifi/WifiNative;

    #@298
    move-result-object v13

    #@299
    const/4 v14, 0x1

    #@29a
    invoke-virtual {v13, v14}, Lcom/android/server/wifi/WifiNative;->p2pGroupAdd(Z)Z

    #@29d
    move-result v12

    #@29e
    .local v12, "ret":Z
    goto :goto_3

    #@29f
    .line 1424
    .local v12, "ret":Z
    :cond_c
    move-object/from16 v0, p0

    #@2a1
    iget-object v13, v0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$InactiveState;->this$1:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    #@2a3
    invoke-static {v13}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->-get19(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;)Lcom/android/server/wifi/WifiNative;

    #@2a6
    move-result-object v13

    #@2a7
    const/4 v14, 0x0

    #@2a8
    invoke-virtual {v13, v14}, Lcom/android/server/wifi/WifiNative;->p2pGroupAdd(Z)Z

    #@2ab
    move-result v12

    #@2ac
    .local v12, "ret":Z
    goto :goto_3

    #@2ad
    .line 1431
    :cond_d
    move-object/from16 v0, p0

    #@2af
    iget-object v13, v0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$InactiveState;->this$1:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    #@2b1
    const v14, 0x2200e

    #@2b4
    .line 1432
    const/4 v15, 0x0

    #@2b5
    .line 1431
    move-object/from16 v0, p1

    #@2b7
    invoke-static {v13, v0, v14, v15}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->-wrap23(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;Landroid/os/Message;II)V

    #@2ba
    goto/16 :goto_0

    #@2bc
    .line 1437
    .end local v8    # "netId":I
    .end local v12    # "ret":Z
    :sswitch_6
    move-object/from16 v0, p0

    #@2be
    iget-object v14, v0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$InactiveState;->this$1:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    #@2c0
    move-object/from16 v0, p1

    #@2c2
    iget-object v13, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@2c4
    check-cast v13, Landroid/net/wifi/p2p/WifiP2pGroup;

    #@2c6
    invoke-static {v14, v13}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->-set0(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;Landroid/net/wifi/p2p/WifiP2pGroup;)Landroid/net/wifi/p2p/WifiP2pGroup;

    #@2c9
    .line 1441
    move-object/from16 v0, p0

    #@2cb
    iget-object v13, v0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$InactiveState;->this$1:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    #@2cd
    invoke-static {v13}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->-get1(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;)Landroid/net/wifi/p2p/WifiP2pGroup;

    #@2d0
    move-result-object v13

    #@2d1
    invoke-virtual {v13}, Landroid/net/wifi/p2p/WifiP2pGroup;->getNetworkId()I

    #@2d4
    move-result v13

    #@2d5
    const/4 v14, -0x2

    #@2d6
    if-ne v13, v14, :cond_e

    #@2d8
    .line 1442
    move-object/from16 v0, p0

    #@2da
    iget-object v13, v0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$InactiveState;->this$1:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    #@2dc
    iget-object v13, v13, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->this$0:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;

    #@2de
    const/4 v14, 0x0

    #@2df
    invoke-static {v13, v14}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->-set0(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;Z)Z

    #@2e2
    .line 1443
    move-object/from16 v0, p0

    #@2e4
    iget-object v13, v0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$InactiveState;->this$1:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    #@2e6
    move-object/from16 v0, p1

    #@2e8
    invoke-static {v13, v0}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->-wrap12(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;Landroid/os/Message;)V

    #@2eb
    .line 1444
    move-object/from16 v0, p0

    #@2ed
    iget-object v13, v0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$InactiveState;->this$1:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    #@2ef
    move-object/from16 v0, p0

    #@2f1
    iget-object v14, v0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$InactiveState;->this$1:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    #@2f3
    invoke-static {v14}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->-get4(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;)Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$GroupNegotiationState;

    #@2f6
    move-result-object v14

    #@2f7
    invoke-static {v13, v14}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->-wrap34(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;Lcom/android/internal/util/IState;)V

    #@2fa
    goto/16 :goto_0

    #@2fc
    .line 1446
    :cond_e
    move-object/from16 v0, p0

    #@2fe
    iget-object v13, v0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$InactiveState;->this$1:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    #@300
    new-instance v14, Ljava/lang/StringBuilder;

    #@302
    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    #@305
    const-string/jumbo v15, "Unexpected group creation, remove "

    #@308
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@30b
    move-result-object v14

    #@30c
    move-object/from16 v0, p0

    #@30e
    iget-object v15, v0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$InactiveState;->this$1:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    #@310
    invoke-static {v15}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->-get1(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;)Landroid/net/wifi/p2p/WifiP2pGroup;

    #@313
    move-result-object v15

    #@314
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@317
    move-result-object v14

    #@318
    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@31b
    move-result-object v14

    #@31c
    invoke-virtual {v13, v14}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->loge(Ljava/lang/String;)V

    #@31f
    .line 1447
    move-object/from16 v0, p0

    #@321
    iget-object v13, v0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$InactiveState;->this$1:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    #@323
    invoke-static {v13}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->-get19(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;)Lcom/android/server/wifi/WifiNative;

    #@326
    move-result-object v13

    #@327
    move-object/from16 v0, p0

    #@329
    iget-object v14, v0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$InactiveState;->this$1:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    #@32b
    invoke-static {v14}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->-get1(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;)Landroid/net/wifi/p2p/WifiP2pGroup;

    #@32e
    move-result-object v14

    #@32f
    invoke-virtual {v14}, Landroid/net/wifi/p2p/WifiP2pGroup;->getInterface()Ljava/lang/String;

    #@332
    move-result-object v14

    #@333
    invoke-virtual {v13, v14}, Lcom/android/server/wifi/WifiNative;->p2pGroupRemove(Ljava/lang/String;)Z

    #@336
    goto/16 :goto_0

    #@338
    .line 1452
    :sswitch_7
    move-object/from16 v0, p0

    #@33a
    iget-object v13, v0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$InactiveState;->this$1:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    #@33c
    invoke-static {v13}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->-get19(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;)Lcom/android/server/wifi/WifiNative;

    #@33f
    move-result-object v13

    #@340
    invoke-virtual {v13}, Lcom/android/server/wifi/WifiNative;->p2pFlush()Z

    #@343
    .line 1453
    move-object/from16 v0, p0

    #@345
    iget-object v13, v0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$InactiveState;->this$1:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    #@347
    invoke-static {v13}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->-get19(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;)Lcom/android/server/wifi/WifiNative;

    #@34a
    move-result-object v13

    #@34b
    const/4 v14, 0x1

    #@34c
    const/16 v15, 0x1f4

    #@34e
    const/16 v16, 0x1f4

    #@350
    invoke-virtual/range {v13 .. v16}, Lcom/android/server/wifi/WifiNative;->p2pExtListen(ZII)Z

    #@353
    move-result v13

    #@354
    if-eqz v13, :cond_f

    #@356
    .line 1454
    move-object/from16 v0, p0

    #@358
    iget-object v13, v0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$InactiveState;->this$1:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    #@35a
    const v14, 0x22043

    #@35d
    move-object/from16 v0, p1

    #@35f
    invoke-static {v13, v0, v14}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->-wrap22(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;Landroid/os/Message;I)V

    #@362
    goto/16 :goto_0

    #@364
    .line 1456
    :cond_f
    move-object/from16 v0, p0

    #@366
    iget-object v13, v0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$InactiveState;->this$1:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    #@368
    const v14, 0x22042

    #@36b
    move-object/from16 v0, p1

    #@36d
    invoke-static {v13, v0, v14}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->-wrap22(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;Landroid/os/Message;I)V

    #@370
    goto/16 :goto_0

    #@372
    .line 1461
    :sswitch_8
    move-object/from16 v0, p0

    #@374
    iget-object v13, v0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$InactiveState;->this$1:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    #@376
    invoke-static {v13}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->-get19(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;)Lcom/android/server/wifi/WifiNative;

    #@379
    move-result-object v13

    #@37a
    const/4 v14, 0x0

    #@37b
    const/4 v15, 0x0

    #@37c
    const/16 v16, 0x0

    #@37e
    invoke-virtual/range {v13 .. v16}, Lcom/android/server/wifi/WifiNative;->p2pExtListen(ZII)Z

    #@381
    move-result v13

    #@382
    if-eqz v13, :cond_10

    #@384
    .line 1462
    move-object/from16 v0, p0

    #@386
    iget-object v13, v0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$InactiveState;->this$1:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    #@388
    const v14, 0x22046

    #@38b
    move-object/from16 v0, p1

    #@38d
    invoke-static {v13, v0, v14}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->-wrap22(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;Landroid/os/Message;I)V

    #@390
    .line 1466
    :goto_4
    move-object/from16 v0, p0

    #@392
    iget-object v13, v0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$InactiveState;->this$1:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    #@394
    invoke-static {v13}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->-get19(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;)Lcom/android/server/wifi/WifiNative;

    #@397
    move-result-object v13

    #@398
    invoke-virtual {v13}, Lcom/android/server/wifi/WifiNative;->p2pFlush()Z

    #@39b
    goto/16 :goto_0

    #@39d
    .line 1464
    :cond_10
    move-object/from16 v0, p0

    #@39f
    iget-object v13, v0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$InactiveState;->this$1:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    #@3a1
    const v14, 0x22045

    #@3a4
    move-object/from16 v0, p1

    #@3a6
    invoke-static {v13, v0, v14}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->-wrap22(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;Landroid/os/Message;I)V

    #@3a9
    goto :goto_4

    #@3aa
    .line 1469
    :sswitch_9
    move-object/from16 v0, p1

    #@3ac
    iget-object v11, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@3ae
    check-cast v11, Landroid/os/Bundle;

    #@3b0
    .line 1470
    .local v11, "p2pChannels":Landroid/os/Bundle;
    const-string/jumbo v13, "lc"

    #@3b3
    const/4 v14, 0x0

    #@3b4
    invoke-virtual {v11, v13, v14}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    #@3b7
    move-result v7

    #@3b8
    .line 1471
    .local v7, "lc":I
    const-string/jumbo v13, "oc"

    #@3bb
    const/4 v14, 0x0

    #@3bc
    invoke-virtual {v11, v13, v14}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    #@3bf
    move-result v9

    #@3c0
    .line 1473
    .local v9, "oc":I
    move-object/from16 v0, p0

    #@3c2
    iget-object v13, v0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$InactiveState;->this$1:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    #@3c4
    invoke-static {v13}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->-get19(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;)Lcom/android/server/wifi/WifiNative;

    #@3c7
    move-result-object v13

    #@3c8
    invoke-virtual {v13, v7, v9}, Lcom/android/server/wifi/WifiNative;->p2pSetChannel(II)Z

    #@3cb
    move-result v13

    #@3cc
    if-eqz v13, :cond_11

    #@3ce
    .line 1474
    move-object/from16 v0, p0

    #@3d0
    iget-object v13, v0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$InactiveState;->this$1:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    #@3d2
    const v14, 0x22049

    #@3d5
    move-object/from16 v0, p1

    #@3d7
    invoke-static {v13, v0, v14}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->-wrap22(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;Landroid/os/Message;I)V

    #@3da
    goto/16 :goto_0

    #@3dc
    .line 1476
    :cond_11
    move-object/from16 v0, p0

    #@3de
    iget-object v13, v0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$InactiveState;->this$1:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    #@3e0
    const v14, 0x22048

    #@3e3
    move-object/from16 v0, p1

    #@3e5
    invoke-static {v13, v0, v14}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->-wrap22(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;Landroid/os/Message;I)V

    #@3e8
    goto/16 :goto_0

    #@3ea
    .line 1480
    .end local v7    # "lc":I
    .end local v9    # "oc":I
    .end local v11    # "p2pChannels":Landroid/os/Bundle;
    :sswitch_a
    const/4 v5, 0x0

    #@3eb
    .line 1482
    .local v5, "handoverSelect":Ljava/lang/String;
    move-object/from16 v0, p1

    #@3ed
    iget-object v13, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@3ef
    if-eqz v13, :cond_12

    #@3f1
    .line 1483
    move-object/from16 v0, p1

    #@3f3
    iget-object v13, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@3f5
    check-cast v13, Landroid/os/Bundle;

    #@3f7
    .line 1484
    const-string/jumbo v14, "android.net.wifi.p2p.EXTRA_HANDOVER_MESSAGE"

    #@3fa
    .line 1483
    invoke-virtual {v13, v14}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    #@3fd
    move-result-object v5

    #@3fe
    .line 1487
    .end local v5    # "handoverSelect":Ljava/lang/String;
    :cond_12
    if-eqz v5, :cond_13

    #@400
    .line 1488
    move-object/from16 v0, p0

    #@402
    iget-object v13, v0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$InactiveState;->this$1:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    #@404
    invoke-static {v13}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->-get19(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;)Lcom/android/server/wifi/WifiNative;

    #@407
    move-result-object v13

    #@408
    invoke-virtual {v13, v5}, Lcom/android/server/wifi/WifiNative;->initiatorReportNfcHandover(Ljava/lang/String;)Z

    #@40b
    move-result v13

    #@40c
    .line 1487
    if-eqz v13, :cond_13

    #@40e
    .line 1489
    move-object/from16 v0, p0

    #@410
    iget-object v13, v0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$InactiveState;->this$1:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    #@412
    const v14, 0x22050

    #@415
    move-object/from16 v0, p1

    #@417
    invoke-static {v13, v0, v14}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->-wrap22(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;Landroid/os/Message;I)V

    #@41a
    .line 1490
    move-object/from16 v0, p0

    #@41c
    iget-object v13, v0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$InactiveState;->this$1:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    #@41e
    move-object/from16 v0, p0

    #@420
    iget-object v14, v0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$InactiveState;->this$1:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    #@422
    invoke-static {v14}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->-get3(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;)Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$GroupCreatingState;

    #@425
    move-result-object v14

    #@426
    invoke-static {v13, v14}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->-wrap34(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;Lcom/android/internal/util/IState;)V

    #@429
    goto/16 :goto_0

    #@42b
    .line 1492
    :cond_13
    move-object/from16 v0, p0

    #@42d
    iget-object v13, v0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$InactiveState;->this$1:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    #@42f
    const v14, 0x22051

    #@432
    move-object/from16 v0, p1

    #@434
    invoke-static {v13, v0, v14}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->-wrap22(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;Landroid/os/Message;I)V

    #@437
    goto/16 :goto_0

    #@439
    .line 1496
    :sswitch_b
    const/4 v4, 0x0

    #@43a
    .line 1498
    .local v4, "handoverRequest":Ljava/lang/String;
    move-object/from16 v0, p1

    #@43c
    iget-object v13, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@43e
    if-eqz v13, :cond_14

    #@440
    .line 1499
    move-object/from16 v0, p1

    #@442
    iget-object v13, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@444
    check-cast v13, Landroid/os/Bundle;

    #@446
    .line 1500
    const-string/jumbo v14, "android.net.wifi.p2p.EXTRA_HANDOVER_MESSAGE"

    #@449
    .line 1499
    invoke-virtual {v13, v14}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    #@44c
    move-result-object v4

    #@44d
    .line 1503
    .end local v4    # "handoverRequest":Ljava/lang/String;
    :cond_14
    if-eqz v4, :cond_15

    #@44f
    .line 1504
    move-object/from16 v0, p0

    #@451
    iget-object v13, v0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$InactiveState;->this$1:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    #@453
    invoke-static {v13}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->-get19(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;)Lcom/android/server/wifi/WifiNative;

    #@456
    move-result-object v13

    #@457
    invoke-virtual {v13, v4}, Lcom/android/server/wifi/WifiNative;->responderReportNfcHandover(Ljava/lang/String;)Z

    #@45a
    move-result v13

    #@45b
    .line 1503
    if-eqz v13, :cond_15

    #@45d
    .line 1505
    move-object/from16 v0, p0

    #@45f
    iget-object v13, v0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$InactiveState;->this$1:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    #@461
    const v14, 0x22050

    #@464
    move-object/from16 v0, p1

    #@466
    invoke-static {v13, v0, v14}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->-wrap22(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;Landroid/os/Message;I)V

    #@469
    .line 1506
    move-object/from16 v0, p0

    #@46b
    iget-object v13, v0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$InactiveState;->this$1:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    #@46d
    move-object/from16 v0, p0

    #@46f
    iget-object v14, v0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$InactiveState;->this$1:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    #@471
    invoke-static {v14}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->-get3(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;)Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$GroupCreatingState;

    #@474
    move-result-object v14

    #@475
    invoke-static {v13, v14}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->-wrap34(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;Lcom/android/internal/util/IState;)V

    #@478
    goto/16 :goto_0

    #@47a
    .line 1508
    :cond_15
    move-object/from16 v0, p0

    #@47c
    iget-object v13, v0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$InactiveState;->this$1:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    #@47e
    const v14, 0x22051

    #@481
    move-object/from16 v0, p1

    #@483
    invoke-static {v13, v0, v14}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->-wrap22(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;Landroid/os/Message;I)V

    #@486
    goto/16 :goto_0

    #@488
    .line 1312
    :sswitch_data_0
    .sparse-switch
        0x22004 -> :sswitch_2
        0x22007 -> :sswitch_0
        0x2200d -> :sswitch_5
        0x22041 -> :sswitch_7
        0x22044 -> :sswitch_8
        0x22047 -> :sswitch_9
        0x2204e -> :sswitch_a
        0x2204f -> :sswitch_b
        0x24017 -> :sswitch_3
        0x2401d -> :sswitch_6
        0x2401f -> :sswitch_4
        0x24021 -> :sswitch_1
        0x24023 -> :sswitch_1
        0x24024 -> :sswitch_1
    .end sparse-switch
.end method
