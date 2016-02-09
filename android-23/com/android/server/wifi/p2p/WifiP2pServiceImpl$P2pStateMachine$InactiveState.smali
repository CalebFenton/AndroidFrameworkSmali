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
    .line 1206
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
    .line 1210
    iget-object v0, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$InactiveState;->this$1:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    #@2
    invoke-static {v0}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->-get14(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;)Landroid/net/wifi/p2p/WifiP2pConfig;

    #@5
    move-result-object v0

    #@6
    invoke-virtual {v0}, Landroid/net/wifi/p2p/WifiP2pConfig;->invalidate()V

    #@9
    .line 1208
    return-void
.end method

.method public processMessage(Landroid/os/Message;)Z
    .locals 14
    .param p1, "message"    # Landroid/os/Message;

    #@0
    .prologue
    .line 1216
    iget v10, p1, Landroid/os/Message;->what:I

    #@2
    sparse-switch v10, :sswitch_data_0

    #@5
    .line 1404
    const/4 v10, 0x0

    #@6
    return v10

    #@7
    .line 1219
    :sswitch_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@9
    check-cast v0, Landroid/net/wifi/p2p/WifiP2pConfig;

    #@b
    .line 1220
    .local v0, "config":Landroid/net/wifi/p2p/WifiP2pConfig;
    iget-object v10, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$InactiveState;->this$1:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    #@d
    invoke-static {v10, v0}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->-wrap2(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;Landroid/net/wifi/p2p/WifiP2pConfig;)Z

    #@10
    move-result v10

    #@11
    if-eqz v10, :cond_0

    #@13
    .line 1221
    iget-object v10, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$InactiveState;->this$1:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    #@15
    new-instance v11, Ljava/lang/StringBuilder;

    #@17
    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    #@1a
    const-string/jumbo v12, "Dropping connect requeset "

    #@1d
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@20
    move-result-object v11

    #@21
    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@24
    move-result-object v11

    #@25
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@28
    move-result-object v11

    #@29
    invoke-virtual {v10, v11}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->loge(Ljava/lang/String;)V

    #@2c
    .line 1222
    iget-object v10, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$InactiveState;->this$1:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    #@2e
    const v11, 0x22008

    #@31
    invoke-static {v10, p1, v11}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->-wrap22(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;Landroid/os/Message;I)V

    #@34
    .line 1406
    .end local v0    # "config":Landroid/net/wifi/p2p/WifiP2pConfig;
    :goto_0
    :sswitch_1
    const/4 v10, 0x1

    #@35
    return v10

    #@36
    .line 1226
    .restart local v0    # "config":Landroid/net/wifi/p2p/WifiP2pConfig;
    :cond_0
    iget-object v10, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$InactiveState;->this$1:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    #@38
    iget-object v10, v10, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->this$0:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;

    #@3a
    const/4 v11, 0x0

    #@3b
    invoke-static {v10, v11}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->-set0(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;Z)Z

    #@3e
    .line 1227
    iget-object v10, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$InactiveState;->this$1:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    #@40
    invoke-static {v10}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->-get19(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;)Lcom/android/server/wifi/WifiNative;

    #@43
    move-result-object v10

    #@44
    invoke-virtual {v10}, Lcom/android/server/wifi/WifiNative;->p2pStopFind()Z

    #@47
    .line 1228
    iget-object v10, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$InactiveState;->this$1:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    #@49
    invoke-static {v10, v0}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->-wrap3(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;Landroid/net/wifi/p2p/WifiP2pConfig;)Z

    #@4c
    move-result v10

    #@4d
    if-eqz v10, :cond_1

    #@4f
    .line 1229
    iget-object v10, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$InactiveState;->this$1:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    #@51
    iget-object v11, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$InactiveState;->this$1:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    #@53
    invoke-static {v11}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->-get4(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;)Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$GroupNegotiationState;

    #@56
    move-result-object v11

    #@57
    invoke-static {v10, v11}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->-wrap34(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;Lcom/android/internal/util/IState;)V

    #@5a
    .line 1233
    :goto_1
    iget-object v10, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$InactiveState;->this$1:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    #@5c
    invoke-static {v10, v0}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->-set1(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;Landroid/net/wifi/p2p/WifiP2pConfig;)Landroid/net/wifi/p2p/WifiP2pConfig;

    #@5f
    .line 1234
    iget-object v10, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$InactiveState;->this$1:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    #@61
    invoke-static {v10}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->-get11(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;)Landroid/net/wifi/p2p/WifiP2pDeviceList;

    #@64
    move-result-object v10

    #@65
    iget-object v11, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$InactiveState;->this$1:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    #@67
    invoke-static {v11}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->-get14(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;)Landroid/net/wifi/p2p/WifiP2pConfig;

    #@6a
    move-result-object v11

    #@6b
    iget-object v11, v11, Landroid/net/wifi/p2p/WifiP2pConfig;->deviceAddress:Ljava/lang/String;

    #@6d
    const/4 v12, 0x1

    #@6e
    invoke-virtual {v10, v11, v12}, Landroid/net/wifi/p2p/WifiP2pDeviceList;->updateStatus(Ljava/lang/String;I)V

    #@71
    .line 1235
    iget-object v10, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$InactiveState;->this$1:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    #@73
    invoke-static {v10}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->-wrap30(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;)V

    #@76
    .line 1236
    iget-object v10, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$InactiveState;->this$1:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    #@78
    const v11, 0x22009

    #@7b
    invoke-static {v10, p1, v11}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->-wrap22(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;Landroid/os/Message;I)V

    #@7e
    goto :goto_0

    #@7f
    .line 1231
    :cond_1
    iget-object v10, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$InactiveState;->this$1:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    #@81
    iget-object v11, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$InactiveState;->this$1:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    #@83
    invoke-static {v11}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->-get13(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;)Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$ProvisionDiscoveryState;

    #@86
    move-result-object v11

    #@87
    invoke-static {v10, v11}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->-wrap34(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;Lcom/android/internal/util/IState;)V

    #@8a
    goto :goto_1

    #@8b
    .line 1239
    .end local v0    # "config":Landroid/net/wifi/p2p/WifiP2pConfig;
    :sswitch_2
    iget-object v10, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$InactiveState;->this$1:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    #@8d
    invoke-static {v10}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->-get19(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;)Lcom/android/server/wifi/WifiNative;

    #@90
    move-result-object v10

    #@91
    invoke-virtual {v10}, Lcom/android/server/wifi/WifiNative;->p2pStopFind()Z

    #@94
    move-result v10

    #@95
    if-eqz v10, :cond_2

    #@97
    .line 1242
    iget-object v10, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$InactiveState;->this$1:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    #@99
    invoke-static {v10}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->-get19(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;)Lcom/android/server/wifi/WifiNative;

    #@9c
    move-result-object v10

    #@9d
    invoke-virtual {v10}, Lcom/android/server/wifi/WifiNative;->p2pFlush()Z

    #@a0
    .line 1243
    iget-object v10, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$InactiveState;->this$1:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    #@a2
    iget-object v10, v10, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->this$0:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;

    #@a4
    const/4 v11, 0x0

    #@a5
    invoke-static {v10, v11}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->-set9(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;Ljava/lang/String;)Ljava/lang/String;

    #@a8
    .line 1244
    iget-object v10, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$InactiveState;->this$1:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    #@aa
    const v11, 0x22006

    #@ad
    invoke-static {v10, p1, v11}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->-wrap22(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;Landroid/os/Message;I)V

    #@b0
    goto :goto_0

    #@b1
    .line 1246
    :cond_2
    iget-object v10, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$InactiveState;->this$1:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    #@b3
    const v11, 0x22005

    #@b6
    .line 1247
    const/4 v12, 0x0

    #@b7
    .line 1246
    invoke-static {v10, p1, v11, v12}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->-wrap23(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;Landroid/os/Message;II)V

    #@ba
    goto/16 :goto_0

    #@bc
    .line 1251
    :sswitch_3
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@be
    check-cast v0, Landroid/net/wifi/p2p/WifiP2pConfig;

    #@c0
    .line 1252
    .restart local v0    # "config":Landroid/net/wifi/p2p/WifiP2pConfig;
    iget-object v10, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$InactiveState;->this$1:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    #@c2
    invoke-static {v10, v0}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->-wrap2(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;Landroid/net/wifi/p2p/WifiP2pConfig;)Z

    #@c5
    move-result v10

    #@c6
    if-eqz v10, :cond_3

    #@c8
    .line 1253
    iget-object v10, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$InactiveState;->this$1:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    #@ca
    new-instance v11, Ljava/lang/StringBuilder;

    #@cc
    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    #@cf
    const-string/jumbo v12, "Dropping GO neg request "

    #@d2
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@d5
    move-result-object v11

    #@d6
    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@d9
    move-result-object v11

    #@da
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@dd
    move-result-object v11

    #@de
    invoke-virtual {v10, v11}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->loge(Ljava/lang/String;)V

    #@e1
    goto/16 :goto_0

    #@e3
    .line 1256
    :cond_3
    iget-object v10, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$InactiveState;->this$1:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    #@e5
    invoke-static {v10, v0}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->-set1(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;Landroid/net/wifi/p2p/WifiP2pConfig;)Landroid/net/wifi/p2p/WifiP2pConfig;

    #@e8
    .line 1257
    iget-object v10, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$InactiveState;->this$1:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    #@ea
    iget-object v10, v10, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->this$0:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;

    #@ec
    const/4 v11, 0x0

    #@ed
    invoke-static {v10, v11}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->-set0(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;Z)Z

    #@f0
    .line 1258
    iget-object v10, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$InactiveState;->this$1:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    #@f2
    iget-object v10, v10, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->this$0:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;

    #@f4
    const/4 v11, 0x0

    #@f5
    invoke-static {v10, v11}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->-set7(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;Z)Z

    #@f8
    .line 1259
    iget-object v10, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$InactiveState;->this$1:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    #@fa
    iget-object v11, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$InactiveState;->this$1:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    #@fc
    invoke-static {v11}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->-get17(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;)Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$UserAuthorizingNegotiationRequestState;

    #@ff
    move-result-object v11

    #@100
    invoke-static {v10, v11}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->-wrap34(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;Lcom/android/internal/util/IState;)V

    #@103
    goto/16 :goto_0

    #@105
    .line 1262
    .end local v0    # "config":Landroid/net/wifi/p2p/WifiP2pConfig;
    :sswitch_4
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@107
    check-cast v1, Landroid/net/wifi/p2p/WifiP2pGroup;

    #@109
    .line 1263
    .local v1, "group":Landroid/net/wifi/p2p/WifiP2pGroup;
    invoke-virtual {v1}, Landroid/net/wifi/p2p/WifiP2pGroup;->getOwner()Landroid/net/wifi/p2p/WifiP2pDevice;

    #@10c
    move-result-object v7

    #@10d
    .line 1265
    .local v7, "owner":Landroid/net/wifi/p2p/WifiP2pDevice;
    if-nez v7, :cond_4

    #@10f
    .line 1266
    iget-object v10, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$InactiveState;->this$1:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    #@111
    const-string/jumbo v11, "Ignored invitation from null owner"

    #@114
    invoke-virtual {v10, v11}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->loge(Ljava/lang/String;)V

    #@117
    goto/16 :goto_0

    #@119
    .line 1270
    :cond_4
    new-instance v0, Landroid/net/wifi/p2p/WifiP2pConfig;

    #@11b
    invoke-direct {v0}, Landroid/net/wifi/p2p/WifiP2pConfig;-><init>()V

    #@11e
    .line 1271
    .restart local v0    # "config":Landroid/net/wifi/p2p/WifiP2pConfig;
    invoke-virtual {v1}, Landroid/net/wifi/p2p/WifiP2pGroup;->getOwner()Landroid/net/wifi/p2p/WifiP2pDevice;

    #@121
    move-result-object v10

    #@122
    iget-object v10, v10, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;

    #@124
    iput-object v10, v0, Landroid/net/wifi/p2p/WifiP2pConfig;->deviceAddress:Ljava/lang/String;

    #@126
    .line 1273
    iget-object v10, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$InactiveState;->this$1:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    #@128
    invoke-static {v10, v0}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->-wrap2(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;Landroid/net/wifi/p2p/WifiP2pConfig;)Z

    #@12b
    move-result v10

    #@12c
    if-eqz v10, :cond_5

    #@12e
    .line 1274
    iget-object v10, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$InactiveState;->this$1:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    #@130
    new-instance v11, Ljava/lang/StringBuilder;

    #@132
    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    #@135
    const-string/jumbo v12, "Dropping invitation request "

    #@138
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@13b
    move-result-object v11

    #@13c
    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@13f
    move-result-object v11

    #@140
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@143
    move-result-object v11

    #@144
    invoke-virtual {v10, v11}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->loge(Ljava/lang/String;)V

    #@147
    goto/16 :goto_0

    #@149
    .line 1277
    :cond_5
    iget-object v10, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$InactiveState;->this$1:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    #@14b
    invoke-static {v10, v0}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->-set1(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;Landroid/net/wifi/p2p/WifiP2pConfig;)Landroid/net/wifi/p2p/WifiP2pConfig;

    #@14e
    .line 1281
    iget-object v10, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$InactiveState;->this$1:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    #@150
    invoke-static {v10}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->-get11(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;)Landroid/net/wifi/p2p/WifiP2pDeviceList;

    #@153
    move-result-object v10

    #@154
    iget-object v11, v7, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;

    #@156
    invoke-virtual {v10, v11}, Landroid/net/wifi/p2p/WifiP2pDeviceList;->get(Ljava/lang/String;)Landroid/net/wifi/p2p/WifiP2pDevice;

    #@159
    move-result-object v7

    #@15a
    if-eqz v7, :cond_6

    #@15c
    .line 1282
    invoke-virtual {v7}, Landroid/net/wifi/p2p/WifiP2pDevice;->wpsPbcSupported()Z

    #@15f
    move-result v10

    #@160
    if-eqz v10, :cond_7

    #@162
    .line 1283
    iget-object v10, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$InactiveState;->this$1:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    #@164
    invoke-static {v10}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->-get14(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;)Landroid/net/wifi/p2p/WifiP2pConfig;

    #@167
    move-result-object v10

    #@168
    iget-object v10, v10, Landroid/net/wifi/p2p/WifiP2pConfig;->wps:Landroid/net/wifi/WpsInfo;

    #@16a
    const/4 v11, 0x0

    #@16b
    iput v11, v10, Landroid/net/wifi/WpsInfo;->setup:I

    #@16d
    .line 1291
    :cond_6
    :goto_2
    iget-object v10, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$InactiveState;->this$1:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    #@16f
    iget-object v10, v10, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->this$0:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;

    #@171
    const/4 v11, 0x0

    #@172
    invoke-static {v10, v11}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->-set0(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;Z)Z

    #@175
    .line 1292
    iget-object v10, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$InactiveState;->this$1:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    #@177
    iget-object v10, v10, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->this$0:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;

    #@179
    const/4 v11, 0x1

    #@17a
    invoke-static {v10, v11}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->-set7(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;Z)Z

    #@17d
    .line 1293
    iget-object v10, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$InactiveState;->this$1:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    #@17f
    iget-object v11, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$InactiveState;->this$1:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    #@181
    invoke-static {v11}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->-get15(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;)Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$UserAuthorizingInviteRequestState;

    #@184
    move-result-object v11

    #@185
    invoke-static {v10, v11}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->-wrap34(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;Lcom/android/internal/util/IState;)V

    #@188
    goto/16 :goto_0

    #@18a
    .line 1284
    :cond_7
    invoke-virtual {v7}, Landroid/net/wifi/p2p/WifiP2pDevice;->wpsKeypadSupported()Z

    #@18d
    move-result v10

    #@18e
    if-eqz v10, :cond_8

    #@190
    .line 1285
    iget-object v10, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$InactiveState;->this$1:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    #@192
    invoke-static {v10}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->-get14(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;)Landroid/net/wifi/p2p/WifiP2pConfig;

    #@195
    move-result-object v10

    #@196
    iget-object v10, v10, Landroid/net/wifi/p2p/WifiP2pConfig;->wps:Landroid/net/wifi/WpsInfo;

    #@198
    const/4 v11, 0x2

    #@199
    iput v11, v10, Landroid/net/wifi/WpsInfo;->setup:I

    #@19b
    goto :goto_2

    #@19c
    .line 1286
    :cond_8
    invoke-virtual {v7}, Landroid/net/wifi/p2p/WifiP2pDevice;->wpsDisplaySupported()Z

    #@19f
    move-result v10

    #@1a0
    if-eqz v10, :cond_6

    #@1a2
    .line 1287
    iget-object v10, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$InactiveState;->this$1:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    #@1a4
    invoke-static {v10}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->-get14(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;)Landroid/net/wifi/p2p/WifiP2pConfig;

    #@1a7
    move-result-object v10

    #@1a8
    iget-object v10, v10, Landroid/net/wifi/p2p/WifiP2pConfig;->wps:Landroid/net/wifi/WpsInfo;

    #@1aa
    const/4 v11, 0x1

    #@1ab
    iput v11, v10, Landroid/net/wifi/WpsInfo;->setup:I

    #@1ad
    goto :goto_2

    #@1ae
    .line 1304
    .end local v0    # "config":Landroid/net/wifi/p2p/WifiP2pConfig;
    .end local v1    # "group":Landroid/net/wifi/p2p/WifiP2pGroup;
    .end local v7    # "owner":Landroid/net/wifi/p2p/WifiP2pDevice;
    :sswitch_5
    iget-object v10, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$InactiveState;->this$1:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    #@1b0
    iget-object v10, v10, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->this$0:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;

    #@1b2
    const/4 v11, 0x1

    #@1b3
    invoke-static {v10, v11}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->-set0(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;Z)Z

    #@1b6
    .line 1305
    iget v5, p1, Landroid/os/Message;->arg1:I

    #@1b8
    .line 1306
    .local v5, "netId":I
    const/4 v9, 0x0

    #@1b9
    .line 1307
    .local v9, "ret":Z
    const/4 v10, -0x2

    #@1ba
    if-ne v5, v10, :cond_a

    #@1bc
    .line 1309
    iget-object v10, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$InactiveState;->this$1:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    #@1be
    invoke-static {v10}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->-get5(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;)Landroid/net/wifi/p2p/WifiP2pGroupList;

    #@1c1
    move-result-object v10

    #@1c2
    iget-object v11, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$InactiveState;->this$1:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    #@1c4
    iget-object v11, v11, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->this$0:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;

    #@1c6
    invoke-static {v11}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->-get19(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;)Landroid/net/wifi/p2p/WifiP2pDevice;

    #@1c9
    move-result-object v11

    #@1ca
    iget-object v11, v11, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;

    #@1cc
    invoke-virtual {v10, v11}, Landroid/net/wifi/p2p/WifiP2pGroupList;->getNetworkId(Ljava/lang/String;)I

    #@1cf
    move-result v5

    #@1d0
    .line 1310
    const/4 v10, -0x1

    #@1d1
    if-eq v5, v10, :cond_9

    #@1d3
    .line 1311
    iget-object v10, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$InactiveState;->this$1:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    #@1d5
    invoke-static {v10}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->-get19(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;)Lcom/android/server/wifi/WifiNative;

    #@1d8
    move-result-object v10

    #@1d9
    invoke-virtual {v10, v5}, Lcom/android/server/wifi/WifiNative;->p2pGroupAdd(I)Z

    #@1dc
    move-result v9

    #@1dd
    .line 1319
    .local v9, "ret":Z
    :goto_3
    if-eqz v9, :cond_b

    #@1df
    .line 1320
    iget-object v10, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$InactiveState;->this$1:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    #@1e1
    const v11, 0x2200f

    #@1e4
    invoke-static {v10, p1, v11}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->-wrap22(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;Landroid/os/Message;I)V

    #@1e7
    .line 1321
    iget-object v10, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$InactiveState;->this$1:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    #@1e9
    iget-object v11, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$InactiveState;->this$1:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    #@1eb
    invoke-static {v11}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->-get4(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;)Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$GroupNegotiationState;

    #@1ee
    move-result-object v11

    #@1ef
    invoke-static {v10, v11}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->-wrap34(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;Lcom/android/internal/util/IState;)V

    #@1f2
    goto/16 :goto_0

    #@1f4
    .line 1313
    .local v9, "ret":Z
    :cond_9
    iget-object v10, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$InactiveState;->this$1:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    #@1f6
    invoke-static {v10}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->-get19(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;)Lcom/android/server/wifi/WifiNative;

    #@1f9
    move-result-object v10

    #@1fa
    const/4 v11, 0x1

    #@1fb
    invoke-virtual {v10, v11}, Lcom/android/server/wifi/WifiNative;->p2pGroupAdd(Z)Z

    #@1fe
    move-result v9

    #@1ff
    .local v9, "ret":Z
    goto :goto_3

    #@200
    .line 1316
    .local v9, "ret":Z
    :cond_a
    iget-object v10, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$InactiveState;->this$1:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    #@202
    invoke-static {v10}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->-get19(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;)Lcom/android/server/wifi/WifiNative;

    #@205
    move-result-object v10

    #@206
    const/4 v11, 0x0

    #@207
    invoke-virtual {v10, v11}, Lcom/android/server/wifi/WifiNative;->p2pGroupAdd(Z)Z

    #@20a
    move-result v9

    #@20b
    .local v9, "ret":Z
    goto :goto_3

    #@20c
    .line 1323
    :cond_b
    iget-object v10, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$InactiveState;->this$1:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    #@20e
    const v11, 0x2200e

    #@211
    .line 1324
    const/4 v12, 0x0

    #@212
    .line 1323
    invoke-static {v10, p1, v11, v12}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->-wrap23(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;Landroid/os/Message;II)V

    #@215
    goto/16 :goto_0

    #@217
    .line 1329
    .end local v5    # "netId":I
    .end local v9    # "ret":Z
    :sswitch_6
    iget-object v11, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$InactiveState;->this$1:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    #@219
    iget-object v10, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@21b
    check-cast v10, Landroid/net/wifi/p2p/WifiP2pGroup;

    #@21d
    invoke-static {v11, v10}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->-set0(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;Landroid/net/wifi/p2p/WifiP2pGroup;)Landroid/net/wifi/p2p/WifiP2pGroup;

    #@220
    .line 1333
    iget-object v10, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$InactiveState;->this$1:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    #@222
    invoke-static {v10}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->-get1(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;)Landroid/net/wifi/p2p/WifiP2pGroup;

    #@225
    move-result-object v10

    #@226
    invoke-virtual {v10}, Landroid/net/wifi/p2p/WifiP2pGroup;->getNetworkId()I

    #@229
    move-result v10

    #@22a
    const/4 v11, -0x2

    #@22b
    if-ne v10, v11, :cond_c

    #@22d
    .line 1334
    iget-object v10, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$InactiveState;->this$1:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    #@22f
    iget-object v10, v10, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->this$0:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;

    #@231
    const/4 v11, 0x0

    #@232
    invoke-static {v10, v11}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->-set0(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;Z)Z

    #@235
    .line 1335
    iget-object v10, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$InactiveState;->this$1:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    #@237
    invoke-static {v10, p1}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->-wrap12(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;Landroid/os/Message;)V

    #@23a
    .line 1336
    iget-object v10, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$InactiveState;->this$1:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    #@23c
    iget-object v11, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$InactiveState;->this$1:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    #@23e
    invoke-static {v11}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->-get4(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;)Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$GroupNegotiationState;

    #@241
    move-result-object v11

    #@242
    invoke-static {v10, v11}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->-wrap34(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;Lcom/android/internal/util/IState;)V

    #@245
    goto/16 :goto_0

    #@247
    .line 1338
    :cond_c
    iget-object v10, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$InactiveState;->this$1:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    #@249
    new-instance v11, Ljava/lang/StringBuilder;

    #@24b
    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    #@24e
    const-string/jumbo v12, "Unexpected group creation, remove "

    #@251
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@254
    move-result-object v11

    #@255
    iget-object v12, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$InactiveState;->this$1:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    #@257
    invoke-static {v12}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->-get1(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;)Landroid/net/wifi/p2p/WifiP2pGroup;

    #@25a
    move-result-object v12

    #@25b
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@25e
    move-result-object v11

    #@25f
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@262
    move-result-object v11

    #@263
    invoke-virtual {v10, v11}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->loge(Ljava/lang/String;)V

    #@266
    .line 1339
    iget-object v10, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$InactiveState;->this$1:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    #@268
    invoke-static {v10}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->-get19(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;)Lcom/android/server/wifi/WifiNative;

    #@26b
    move-result-object v10

    #@26c
    iget-object v11, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$InactiveState;->this$1:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    #@26e
    invoke-static {v11}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->-get1(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;)Landroid/net/wifi/p2p/WifiP2pGroup;

    #@271
    move-result-object v11

    #@272
    invoke-virtual {v11}, Landroid/net/wifi/p2p/WifiP2pGroup;->getInterface()Ljava/lang/String;

    #@275
    move-result-object v11

    #@276
    invoke-virtual {v10, v11}, Lcom/android/server/wifi/WifiNative;->p2pGroupRemove(Ljava/lang/String;)Z

    #@279
    goto/16 :goto_0

    #@27b
    .line 1344
    :sswitch_7
    iget-object v10, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$InactiveState;->this$1:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    #@27d
    invoke-static {v10}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->-get19(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;)Lcom/android/server/wifi/WifiNative;

    #@280
    move-result-object v10

    #@281
    invoke-virtual {v10}, Lcom/android/server/wifi/WifiNative;->p2pFlush()Z

    #@284
    .line 1345
    iget-object v10, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$InactiveState;->this$1:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    #@286
    invoke-static {v10}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->-get19(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;)Lcom/android/server/wifi/WifiNative;

    #@289
    move-result-object v10

    #@28a
    const/4 v11, 0x1

    #@28b
    const/16 v12, 0x1f4

    #@28d
    const/16 v13, 0x1f4

    #@28f
    invoke-virtual {v10, v11, v12, v13}, Lcom/android/server/wifi/WifiNative;->p2pExtListen(ZII)Z

    #@292
    move-result v10

    #@293
    if-eqz v10, :cond_d

    #@295
    .line 1346
    iget-object v10, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$InactiveState;->this$1:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    #@297
    const v11, 0x22043

    #@29a
    invoke-static {v10, p1, v11}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->-wrap22(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;Landroid/os/Message;I)V

    #@29d
    goto/16 :goto_0

    #@29f
    .line 1348
    :cond_d
    iget-object v10, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$InactiveState;->this$1:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    #@2a1
    const v11, 0x22042

    #@2a4
    invoke-static {v10, p1, v11}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->-wrap22(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;Landroid/os/Message;I)V

    #@2a7
    goto/16 :goto_0

    #@2a9
    .line 1353
    :sswitch_8
    iget-object v10, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$InactiveState;->this$1:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    #@2ab
    invoke-static {v10}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->-get19(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;)Lcom/android/server/wifi/WifiNative;

    #@2ae
    move-result-object v10

    #@2af
    const/4 v11, 0x0

    #@2b0
    const/4 v12, 0x0

    #@2b1
    const/4 v13, 0x0

    #@2b2
    invoke-virtual {v10, v11, v12, v13}, Lcom/android/server/wifi/WifiNative;->p2pExtListen(ZII)Z

    #@2b5
    move-result v10

    #@2b6
    if-eqz v10, :cond_e

    #@2b8
    .line 1354
    iget-object v10, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$InactiveState;->this$1:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    #@2ba
    const v11, 0x22046

    #@2bd
    invoke-static {v10, p1, v11}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->-wrap22(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;Landroid/os/Message;I)V

    #@2c0
    .line 1358
    :goto_4
    iget-object v10, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$InactiveState;->this$1:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    #@2c2
    invoke-static {v10}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->-get19(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;)Lcom/android/server/wifi/WifiNative;

    #@2c5
    move-result-object v10

    #@2c6
    invoke-virtual {v10}, Lcom/android/server/wifi/WifiNative;->p2pFlush()Z

    #@2c9
    goto/16 :goto_0

    #@2cb
    .line 1356
    :cond_e
    iget-object v10, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$InactiveState;->this$1:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    #@2cd
    const v11, 0x22045

    #@2d0
    invoke-static {v10, p1, v11}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->-wrap22(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;Landroid/os/Message;I)V

    #@2d3
    goto :goto_4

    #@2d4
    .line 1361
    :sswitch_9
    iget-object v8, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@2d6
    check-cast v8, Landroid/os/Bundle;

    #@2d8
    .line 1362
    .local v8, "p2pChannels":Landroid/os/Bundle;
    const-string/jumbo v10, "lc"

    #@2db
    const/4 v11, 0x0

    #@2dc
    invoke-virtual {v8, v10, v11}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    #@2df
    move-result v4

    #@2e0
    .line 1363
    .local v4, "lc":I
    const-string/jumbo v10, "oc"

    #@2e3
    const/4 v11, 0x0

    #@2e4
    invoke-virtual {v8, v10, v11}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    #@2e7
    move-result v6

    #@2e8
    .line 1365
    .local v6, "oc":I
    iget-object v10, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$InactiveState;->this$1:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    #@2ea
    invoke-static {v10}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->-get19(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;)Lcom/android/server/wifi/WifiNative;

    #@2ed
    move-result-object v10

    #@2ee
    invoke-virtual {v10, v4, v6}, Lcom/android/server/wifi/WifiNative;->p2pSetChannel(II)Z

    #@2f1
    move-result v10

    #@2f2
    if-eqz v10, :cond_f

    #@2f4
    .line 1366
    iget-object v10, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$InactiveState;->this$1:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    #@2f6
    const v11, 0x22049

    #@2f9
    invoke-static {v10, p1, v11}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->-wrap22(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;Landroid/os/Message;I)V

    #@2fc
    goto/16 :goto_0

    #@2fe
    .line 1368
    :cond_f
    iget-object v10, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$InactiveState;->this$1:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    #@300
    const v11, 0x22048

    #@303
    invoke-static {v10, p1, v11}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->-wrap22(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;Landroid/os/Message;I)V

    #@306
    goto/16 :goto_0

    #@308
    .line 1372
    .end local v4    # "lc":I
    .end local v6    # "oc":I
    .end local v8    # "p2pChannels":Landroid/os/Bundle;
    :sswitch_a
    const/4 v3, 0x0

    #@309
    .line 1374
    .local v3, "handoverSelect":Ljava/lang/String;
    iget-object v10, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@30b
    if-eqz v10, :cond_10

    #@30d
    .line 1375
    iget-object v10, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@30f
    check-cast v10, Landroid/os/Bundle;

    #@311
    .line 1376
    const-string/jumbo v11, "android.net.wifi.p2p.EXTRA_HANDOVER_MESSAGE"

    #@314
    .line 1375
    invoke-virtual {v10, v11}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    #@317
    move-result-object v3

    #@318
    .line 1379
    .end local v3    # "handoverSelect":Ljava/lang/String;
    :cond_10
    if-eqz v3, :cond_11

    #@31a
    .line 1380
    iget-object v10, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$InactiveState;->this$1:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    #@31c
    invoke-static {v10}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->-get19(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;)Lcom/android/server/wifi/WifiNative;

    #@31f
    move-result-object v10

    #@320
    invoke-virtual {v10, v3}, Lcom/android/server/wifi/WifiNative;->initiatorReportNfcHandover(Ljava/lang/String;)Z

    #@323
    move-result v10

    #@324
    .line 1379
    if-eqz v10, :cond_11

    #@326
    .line 1381
    iget-object v10, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$InactiveState;->this$1:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    #@328
    const v11, 0x22050

    #@32b
    invoke-static {v10, p1, v11}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->-wrap22(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;Landroid/os/Message;I)V

    #@32e
    .line 1382
    iget-object v10, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$InactiveState;->this$1:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    #@330
    iget-object v11, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$InactiveState;->this$1:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    #@332
    invoke-static {v11}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->-get3(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;)Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$GroupCreatingState;

    #@335
    move-result-object v11

    #@336
    invoke-static {v10, v11}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->-wrap34(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;Lcom/android/internal/util/IState;)V

    #@339
    goto/16 :goto_0

    #@33b
    .line 1384
    :cond_11
    iget-object v10, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$InactiveState;->this$1:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    #@33d
    const v11, 0x22051

    #@340
    invoke-static {v10, p1, v11}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->-wrap22(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;Landroid/os/Message;I)V

    #@343
    goto/16 :goto_0

    #@345
    .line 1388
    :sswitch_b
    const/4 v2, 0x0

    #@346
    .line 1390
    .local v2, "handoverRequest":Ljava/lang/String;
    iget-object v10, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@348
    if-eqz v10, :cond_12

    #@34a
    .line 1391
    iget-object v10, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@34c
    check-cast v10, Landroid/os/Bundle;

    #@34e
    .line 1392
    const-string/jumbo v11, "android.net.wifi.p2p.EXTRA_HANDOVER_MESSAGE"

    #@351
    .line 1391
    invoke-virtual {v10, v11}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    #@354
    move-result-object v2

    #@355
    .line 1395
    .end local v2    # "handoverRequest":Ljava/lang/String;
    :cond_12
    if-eqz v2, :cond_13

    #@357
    .line 1396
    iget-object v10, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$InactiveState;->this$1:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    #@359
    invoke-static {v10}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->-get19(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;)Lcom/android/server/wifi/WifiNative;

    #@35c
    move-result-object v10

    #@35d
    invoke-virtual {v10, v2}, Lcom/android/server/wifi/WifiNative;->responderReportNfcHandover(Ljava/lang/String;)Z

    #@360
    move-result v10

    #@361
    .line 1395
    if-eqz v10, :cond_13

    #@363
    .line 1397
    iget-object v10, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$InactiveState;->this$1:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    #@365
    const v11, 0x22050

    #@368
    invoke-static {v10, p1, v11}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->-wrap22(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;Landroid/os/Message;I)V

    #@36b
    .line 1398
    iget-object v10, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$InactiveState;->this$1:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    #@36d
    iget-object v11, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$InactiveState;->this$1:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    #@36f
    invoke-static {v11}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->-get3(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;)Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$GroupCreatingState;

    #@372
    move-result-object v11

    #@373
    invoke-static {v10, v11}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->-wrap34(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;Lcom/android/internal/util/IState;)V

    #@376
    goto/16 :goto_0

    #@378
    .line 1400
    :cond_13
    iget-object v10, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$InactiveState;->this$1:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    #@37a
    const v11, 0x22051

    #@37d
    invoke-static {v10, p1, v11}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->-wrap22(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;Landroid/os/Message;I)V

    #@380
    goto/16 :goto_0

    #@382
    .line 1216
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
