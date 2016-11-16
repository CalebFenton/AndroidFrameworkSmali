.class Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$GroupCreatedState;
.super Lcom/android/internal/util/State;
.source "WifiP2pServiceImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "GroupCreatedState"
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;


# direct methods
.method constructor <init>(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    #@0
    .prologue
    .line 1938
    iput-object p1, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$GroupCreatedState;->this$1:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    #@2
    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    #@5
    return-void
.end method


# virtual methods
.method public enter()V
    .locals 3

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 1943
    iget-object v0, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$GroupCreatedState;->this$1:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    #@3
    invoke-static {v0}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->-get14(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;)Landroid/net/wifi/p2p/WifiP2pConfig;

    #@6
    move-result-object v0

    #@7
    invoke-virtual {v0}, Landroid/net/wifi/p2p/WifiP2pConfig;->invalidate()V

    #@a
    .line 1944
    iget-object v0, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$GroupCreatedState;->this$1:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    #@c
    iget-object v0, v0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->this$0:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;

    #@e
    invoke-static {v0}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->-get12(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;)Landroid/net/NetworkInfo;

    #@11
    move-result-object v0

    #@12
    sget-object v1, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    #@14
    invoke-virtual {v0, v1, v2, v2}, Landroid/net/NetworkInfo;->setDetailedState(Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;Ljava/lang/String;)V

    #@17
    .line 1946
    iget-object v0, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$GroupCreatedState;->this$1:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    #@19
    const/4 v1, 0x0

    #@1a
    invoke-static {v0, v1}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->-wrap36(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;I)V

    #@1d
    .line 1949
    iget-object v0, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$GroupCreatedState;->this$1:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    #@1f
    invoke-static {v0}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->-get1(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;)Landroid/net/wifi/p2p/WifiP2pGroup;

    #@22
    move-result-object v0

    #@23
    invoke-virtual {v0}, Landroid/net/wifi/p2p/WifiP2pGroup;->isGroupOwner()Z

    #@26
    move-result v0

    #@27
    if-eqz v0, :cond_0

    #@29
    .line 1950
    iget-object v0, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$GroupCreatedState;->this$1:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    #@2b
    const-string/jumbo v1, "192.168.49.1"

    #@2e
    invoke-static {v1}, Landroid/net/NetworkUtils;->numericToInetAddress(Ljava/lang/String;)Ljava/net/InetAddress;

    #@31
    move-result-object v1

    #@32
    invoke-static {v0, v1}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->-wrap32(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;Ljava/net/InetAddress;)V

    #@35
    .line 1955
    :cond_0
    iget-object v0, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$GroupCreatedState;->this$1:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    #@37
    iget-object v0, v0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->this$0:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;

    #@39
    invoke-static {v0}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->-get2(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;)Z

    #@3c
    move-result v0

    #@3d
    if-eqz v0, :cond_1

    #@3f
    .line 1956
    iget-object v0, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$GroupCreatedState;->this$1:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    #@41
    invoke-static {v0}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->-wrap26(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;)V

    #@44
    .line 1940
    :cond_1
    return-void
.end method

.method public exit()V
    .locals 3

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 2176
    iget-object v0, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$GroupCreatedState;->this$1:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    #@3
    const/4 v1, 0x3

    #@4
    invoke-static {v0, v1}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->-wrap36(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;I)V

    #@7
    .line 2177
    iget-object v0, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$GroupCreatedState;->this$1:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    #@9
    invoke-static {v0}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->-wrap25(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;)V

    #@c
    .line 2178
    iget-object v0, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$GroupCreatedState;->this$1:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    #@e
    iget-object v0, v0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->this$0:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;

    #@10
    invoke-static {v0}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->-get12(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;)Landroid/net/NetworkInfo;

    #@13
    move-result-object v0

    #@14
    sget-object v1, Landroid/net/NetworkInfo$DetailedState;->DISCONNECTED:Landroid/net/NetworkInfo$DetailedState;

    #@16
    invoke-virtual {v0, v1, v2, v2}, Landroid/net/NetworkInfo;->setDetailedState(Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;Ljava/lang/String;)V

    #@19
    .line 2179
    iget-object v0, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$GroupCreatedState;->this$1:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    #@1b
    invoke-static {v0}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->-wrap26(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;)V

    #@1e
    .line 2175
    return-void
.end method

.method public processMessage(Landroid/os/Message;)Z
    .locals 21
    .param p1, "message"    # Landroid/os/Message;

    #@0
    .prologue
    .line 1963
    move-object/from16 v0, p1

    #@2
    iget v0, v0, Landroid/os/Message;->what:I

    #@4
    move/from16 v18, v0

    #@6
    sparse-switch v18, :sswitch_data_0

    #@9
    .line 2170
    const/16 v18, 0x0

    #@b
    return v18

    #@c
    .line 1965
    :sswitch_0
    move-object/from16 v0, p1

    #@e
    iget-object v7, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@10
    check-cast v7, Landroid/net/wifi/p2p/WifiP2pDevice;

    #@12
    .line 1966
    .local v7, "device":Landroid/net/wifi/p2p/WifiP2pDevice;
    iget-object v8, v7, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;

    #@14
    .line 1968
    .local v8, "deviceAddress":Ljava/lang/String;
    move-object/from16 v0, p0

    #@16
    iget-object v0, v0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$GroupCreatedState;->this$1:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    #@18
    move-object/from16 v18, v0

    #@1a
    invoke-static/range {v18 .. v18}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->-get19(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;)Lcom/android/server/wifi/WifiNative;

    #@1d
    move-result-object v18

    #@1e
    move-object/from16 v0, p0

    #@20
    iget-object v0, v0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$GroupCreatedState;->this$1:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    #@22
    move-object/from16 v19, v0

    #@24
    invoke-static/range {v19 .. v19}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->-get1(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;)Landroid/net/wifi/p2p/WifiP2pGroup;

    #@27
    move-result-object v19

    #@28
    invoke-virtual/range {v19 .. v19}, Landroid/net/wifi/p2p/WifiP2pGroup;->getInterface()Ljava/lang/String;

    #@2b
    move-result-object v19

    #@2c
    const/16 v20, 0x0

    #@2e
    invoke-virtual/range {v18 .. v20}, Lcom/android/server/wifi/WifiNative;->setP2pGroupIdle(Ljava/lang/String;I)Z

    #@31
    .line 1969
    if-eqz v8, :cond_2

    #@33
    .line 1970
    move-object/from16 v0, p0

    #@35
    iget-object v0, v0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$GroupCreatedState;->this$1:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    #@37
    move-object/from16 v18, v0

    #@39
    invoke-static/range {v18 .. v18}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->-get11(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;)Landroid/net/wifi/p2p/WifiP2pDeviceList;

    #@3c
    move-result-object v18

    #@3d
    move-object/from16 v0, v18

    #@3f
    invoke-virtual {v0, v8}, Landroid/net/wifi/p2p/WifiP2pDeviceList;->get(Ljava/lang/String;)Landroid/net/wifi/p2p/WifiP2pDevice;

    #@42
    move-result-object v18

    #@43
    if-eqz v18, :cond_1

    #@45
    .line 1971
    move-object/from16 v0, p0

    #@47
    iget-object v0, v0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$GroupCreatedState;->this$1:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    #@49
    move-object/from16 v18, v0

    #@4b
    invoke-static/range {v18 .. v18}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->-get1(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;)Landroid/net/wifi/p2p/WifiP2pGroup;

    #@4e
    move-result-object v18

    #@4f
    move-object/from16 v0, p0

    #@51
    iget-object v0, v0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$GroupCreatedState;->this$1:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    #@53
    move-object/from16 v19, v0

    #@55
    invoke-static/range {v19 .. v19}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->-get11(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;)Landroid/net/wifi/p2p/WifiP2pDeviceList;

    #@58
    move-result-object v19

    #@59
    move-object/from16 v0, v19

    #@5b
    invoke-virtual {v0, v8}, Landroid/net/wifi/p2p/WifiP2pDeviceList;->get(Ljava/lang/String;)Landroid/net/wifi/p2p/WifiP2pDevice;

    #@5e
    move-result-object v19

    #@5f
    invoke-virtual/range {v18 .. v19}, Landroid/net/wifi/p2p/WifiP2pGroup;->addClient(Landroid/net/wifi/p2p/WifiP2pDevice;)V

    #@62
    .line 1975
    :goto_0
    move-object/from16 v0, p0

    #@64
    iget-object v0, v0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$GroupCreatedState;->this$1:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    #@66
    move-object/from16 v18, v0

    #@68
    invoke-static/range {v18 .. v18}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->-get11(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;)Landroid/net/wifi/p2p/WifiP2pDeviceList;

    #@6b
    move-result-object v18

    #@6c
    const/16 v19, 0x0

    #@6e
    move-object/from16 v0, v18

    #@70
    move/from16 v1, v19

    #@72
    invoke-virtual {v0, v8, v1}, Landroid/net/wifi/p2p/WifiP2pDeviceList;->updateStatus(Ljava/lang/String;I)V

    #@75
    .line 1977
    move-object/from16 v0, p0

    #@77
    iget-object v0, v0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$GroupCreatedState;->this$1:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    #@79
    move-object/from16 v18, v0

    #@7b
    invoke-static/range {v18 .. v18}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->-wrap30(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;)V

    #@7e
    .line 1981
    :goto_1
    move-object/from16 v0, p0

    #@80
    iget-object v0, v0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$GroupCreatedState;->this$1:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    #@82
    move-object/from16 v18, v0

    #@84
    invoke-static/range {v18 .. v18}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->-wrap26(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;)V

    #@87
    .line 2172
    .end local v7    # "device":Landroid/net/wifi/p2p/WifiP2pDevice;
    .end local v8    # "deviceAddress":Ljava/lang/String;
    :cond_0
    :goto_2
    const/16 v18, 0x1

    #@89
    return v18

    #@8a
    .line 1973
    .restart local v7    # "device":Landroid/net/wifi/p2p/WifiP2pDevice;
    .restart local v8    # "deviceAddress":Ljava/lang/String;
    :cond_1
    move-object/from16 v0, p0

    #@8c
    iget-object v0, v0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$GroupCreatedState;->this$1:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    #@8e
    move-object/from16 v18, v0

    #@90
    invoke-static/range {v18 .. v18}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->-get1(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;)Landroid/net/wifi/p2p/WifiP2pGroup;

    #@93
    move-result-object v18

    #@94
    move-object/from16 v0, v18

    #@96
    invoke-virtual {v0, v8}, Landroid/net/wifi/p2p/WifiP2pGroup;->addClient(Ljava/lang/String;)V

    #@99
    goto :goto_0

    #@9a
    .line 1979
    :cond_2
    move-object/from16 v0, p0

    #@9c
    iget-object v0, v0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$GroupCreatedState;->this$1:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    #@9e
    move-object/from16 v18, v0

    #@a0
    const-string/jumbo v19, "Connect on null device address, ignore"

    #@a3
    invoke-virtual/range {v18 .. v19}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->loge(Ljava/lang/String;)V

    #@a6
    goto :goto_1

    #@a7
    .line 1984
    .end local v7    # "device":Landroid/net/wifi/p2p/WifiP2pDevice;
    .end local v8    # "deviceAddress":Ljava/lang/String;
    :sswitch_1
    move-object/from16 v0, p1

    #@a9
    iget-object v7, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@ab
    check-cast v7, Landroid/net/wifi/p2p/WifiP2pDevice;

    #@ad
    .line 1985
    .restart local v7    # "device":Landroid/net/wifi/p2p/WifiP2pDevice;
    iget-object v8, v7, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;

    #@af
    .line 1986
    .restart local v8    # "deviceAddress":Ljava/lang/String;
    if-eqz v8, :cond_6

    #@b1
    .line 1987
    move-object/from16 v0, p0

    #@b3
    iget-object v0, v0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$GroupCreatedState;->this$1:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    #@b5
    move-object/from16 v18, v0

    #@b7
    invoke-static/range {v18 .. v18}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->-get11(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;)Landroid/net/wifi/p2p/WifiP2pDeviceList;

    #@ba
    move-result-object v18

    #@bb
    const/16 v19, 0x3

    #@bd
    move-object/from16 v0, v18

    #@bf
    move/from16 v1, v19

    #@c1
    invoke-virtual {v0, v8, v1}, Landroid/net/wifi/p2p/WifiP2pDeviceList;->updateStatus(Ljava/lang/String;I)V

    #@c4
    .line 1988
    move-object/from16 v0, p0

    #@c6
    iget-object v0, v0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$GroupCreatedState;->this$1:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    #@c8
    move-object/from16 v18, v0

    #@ca
    invoke-static/range {v18 .. v18}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->-get1(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;)Landroid/net/wifi/p2p/WifiP2pGroup;

    #@cd
    move-result-object v18

    #@ce
    move-object/from16 v0, v18

    #@d0
    invoke-virtual {v0, v8}, Landroid/net/wifi/p2p/WifiP2pGroup;->removeClient(Ljava/lang/String;)Z

    #@d3
    move-result v18

    #@d4
    if-eqz v18, :cond_5

    #@d6
    .line 1990
    move-object/from16 v0, p0

    #@d8
    iget-object v0, v0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$GroupCreatedState;->this$1:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    #@da
    move-object/from16 v18, v0

    #@dc
    move-object/from16 v0, v18

    #@de
    iget-object v0, v0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->this$0:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;

    #@e0
    move-object/from16 v18, v0

    #@e2
    invoke-static/range {v18 .. v18}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->-get2(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;)Z

    #@e5
    move-result v18

    #@e6
    if-nez v18, :cond_4

    #@e8
    move-object/from16 v0, p0

    #@ea
    iget-object v0, v0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$GroupCreatedState;->this$1:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    #@ec
    move-object/from16 v18, v0

    #@ee
    invoke-static/range {v18 .. v18}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->-get1(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;)Landroid/net/wifi/p2p/WifiP2pGroup;

    #@f1
    move-result-object v18

    #@f2
    invoke-virtual/range {v18 .. v18}, Landroid/net/wifi/p2p/WifiP2pGroup;->isClientListEmpty()Z

    #@f5
    move-result v18

    #@f6
    if-eqz v18, :cond_4

    #@f8
    .line 1991
    move-object/from16 v0, p0

    #@fa
    iget-object v0, v0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$GroupCreatedState;->this$1:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    #@fc
    move-object/from16 v18, v0

    #@fe
    const-string/jumbo v19, "Client list empty, remove non-persistent p2p group"

    #@101
    invoke-virtual/range {v18 .. v19}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->logd(Ljava/lang/String;)V

    #@104
    .line 1992
    move-object/from16 v0, p0

    #@106
    iget-object v0, v0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$GroupCreatedState;->this$1:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    #@108
    move-object/from16 v18, v0

    #@10a
    invoke-static/range {v18 .. v18}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->-get19(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;)Lcom/android/server/wifi/WifiNative;

    #@10d
    move-result-object v18

    #@10e
    move-object/from16 v0, p0

    #@110
    iget-object v0, v0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$GroupCreatedState;->this$1:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    #@112
    move-object/from16 v19, v0

    #@114
    invoke-static/range {v19 .. v19}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->-get1(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;)Landroid/net/wifi/p2p/WifiP2pGroup;

    #@117
    move-result-object v19

    #@118
    invoke-virtual/range {v19 .. v19}, Landroid/net/wifi/p2p/WifiP2pGroup;->getInterface()Ljava/lang/String;

    #@11b
    move-result-object v19

    #@11c
    invoke-virtual/range {v18 .. v19}, Lcom/android/server/wifi/WifiNative;->p2pGroupRemove(Ljava/lang/String;)Z

    #@11f
    .line 2005
    :cond_3
    :goto_3
    move-object/from16 v0, p0

    #@121
    iget-object v0, v0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$GroupCreatedState;->this$1:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    #@123
    move-object/from16 v18, v0

    #@125
    invoke-static/range {v18 .. v18}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->-wrap30(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;)V

    #@128
    goto/16 :goto_2

    #@12a
    .line 1997
    :cond_4
    move-object/from16 v0, p0

    #@12c
    iget-object v0, v0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$GroupCreatedState;->this$1:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    #@12e
    move-object/from16 v18, v0

    #@130
    invoke-static/range {v18 .. v18}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->-wrap26(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;)V

    #@133
    goto :goto_3

    #@134
    .line 2001
    :cond_5
    move-object/from16 v0, p0

    #@136
    iget-object v0, v0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$GroupCreatedState;->this$1:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    #@138
    move-object/from16 v18, v0

    #@13a
    invoke-static/range {v18 .. v18}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->-get1(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;)Landroid/net/wifi/p2p/WifiP2pGroup;

    #@13d
    move-result-object v18

    #@13e
    invoke-virtual/range {v18 .. v18}, Landroid/net/wifi/p2p/WifiP2pGroup;->getClientList()Ljava/util/Collection;

    #@141
    move-result-object v18

    #@142
    invoke-interface/range {v18 .. v18}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@145
    move-result-object v5

    #@146
    .local v5, "c$iterator":Ljava/util/Iterator;
    :goto_4
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    #@149
    move-result v18

    #@14a
    if-eqz v18, :cond_3

    #@14c
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@14f
    move-result-object v4

    #@150
    check-cast v4, Landroid/net/wifi/p2p/WifiP2pDevice;

    #@152
    .local v4, "c":Landroid/net/wifi/p2p/WifiP2pDevice;
    goto :goto_4

    #@153
    .line 2008
    .end local v4    # "c":Landroid/net/wifi/p2p/WifiP2pDevice;
    .end local v5    # "c$iterator":Ljava/util/Iterator;
    :cond_6
    move-object/from16 v0, p0

    #@155
    iget-object v0, v0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$GroupCreatedState;->this$1:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    #@157
    move-object/from16 v18, v0

    #@159
    new-instance v19, Ljava/lang/StringBuilder;

    #@15b
    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    #@15e
    const-string/jumbo v20, "Disconnect on unknown device: "

    #@161
    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@164
    move-result-object v19

    #@165
    move-object/from16 v0, v19

    #@167
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@16a
    move-result-object v19

    #@16b
    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@16e
    move-result-object v19

    #@16f
    invoke-virtual/range {v18 .. v19}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->loge(Ljava/lang/String;)V

    #@172
    goto/16 :goto_2

    #@174
    .line 2012
    .end local v7    # "device":Landroid/net/wifi/p2p/WifiP2pDevice;
    .end local v8    # "deviceAddress":Ljava/lang/String;
    :sswitch_2
    move-object/from16 v0, p0

    #@176
    iget-object v0, v0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$GroupCreatedState;->this$1:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    #@178
    move-object/from16 v18, v0

    #@17a
    invoke-static/range {v18 .. v18}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->-get19(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;)Lcom/android/server/wifi/WifiNative;

    #@17d
    move-result-object v18

    #@17e
    move-object/from16 v0, p0

    #@180
    iget-object v0, v0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$GroupCreatedState;->this$1:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    #@182
    move-object/from16 v19, v0

    #@184
    invoke-static/range {v19 .. v19}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->-get1(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;)Landroid/net/wifi/p2p/WifiP2pGroup;

    #@187
    move-result-object v19

    #@188
    invoke-virtual/range {v19 .. v19}, Landroid/net/wifi/p2p/WifiP2pGroup;->getInterface()Ljava/lang/String;

    #@18b
    move-result-object v19

    #@18c
    const/16 v20, 0x0

    #@18e
    invoke-virtual/range {v18 .. v20}, Lcom/android/server/wifi/WifiNative;->setP2pPowerSave(Ljava/lang/String;Z)Z

    #@191
    .line 2013
    move-object/from16 v0, p0

    #@193
    iget-object v0, v0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$GroupCreatedState;->this$1:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    #@195
    move-object/from16 v18, v0

    #@197
    move-object/from16 v0, v18

    #@199
    iget-object v0, v0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->this$0:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;

    #@19b
    move-object/from16 v18, v0

    #@19d
    invoke-static/range {v18 .. v18}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->-get11(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;)Landroid/net/ip/IpManager;

    #@1a0
    move-result-object v18

    #@1a1
    invoke-virtual/range {v18 .. v18}, Landroid/net/ip/IpManager;->completedPreDhcpAction()V

    #@1a4
    goto/16 :goto_2

    #@1a6
    .line 2016
    :sswitch_3
    move-object/from16 v0, p0

    #@1a8
    iget-object v0, v0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$GroupCreatedState;->this$1:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    #@1aa
    move-object/from16 v18, v0

    #@1ac
    invoke-static/range {v18 .. v18}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->-get19(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;)Lcom/android/server/wifi/WifiNative;

    #@1af
    move-result-object v18

    #@1b0
    move-object/from16 v0, p0

    #@1b2
    iget-object v0, v0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$GroupCreatedState;->this$1:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    #@1b4
    move-object/from16 v19, v0

    #@1b6
    invoke-static/range {v19 .. v19}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->-get1(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;)Landroid/net/wifi/p2p/WifiP2pGroup;

    #@1b9
    move-result-object v19

    #@1ba
    invoke-virtual/range {v19 .. v19}, Landroid/net/wifi/p2p/WifiP2pGroup;->getInterface()Ljava/lang/String;

    #@1bd
    move-result-object v19

    #@1be
    const/16 v20, 0x1

    #@1c0
    invoke-virtual/range {v18 .. v20}, Lcom/android/server/wifi/WifiNative;->setP2pPowerSave(Ljava/lang/String;Z)Z

    #@1c3
    goto/16 :goto_2

    #@1c5
    .line 2019
    :sswitch_4
    move-object/from16 v0, p0

    #@1c7
    iget-object v0, v0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$GroupCreatedState;->this$1:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    #@1c9
    move-object/from16 v18, v0

    #@1cb
    move-object/from16 v0, v18

    #@1cd
    iget-object v0, v0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->this$0:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;

    #@1cf
    move-object/from16 v19, v0

    #@1d1
    move-object/from16 v0, p1

    #@1d3
    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@1d5
    move-object/from16 v18, v0

    #@1d7
    check-cast v18, Landroid/net/DhcpResults;

    #@1d9
    move-object/from16 v0, v19

    #@1db
    move-object/from16 v1, v18

    #@1dd
    invoke-static {v0, v1}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->-set1(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;Landroid/net/DhcpResults;)Landroid/net/DhcpResults;

    #@1e0
    goto/16 :goto_2

    #@1e2
    .line 2023
    :sswitch_5
    move-object/from16 v0, p0

    #@1e4
    iget-object v0, v0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$GroupCreatedState;->this$1:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    #@1e6
    move-object/from16 v18, v0

    #@1e8
    move-object/from16 v0, p0

    #@1ea
    iget-object v0, v0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$GroupCreatedState;->this$1:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    #@1ec
    move-object/from16 v19, v0

    #@1ee
    move-object/from16 v0, v19

    #@1f0
    iget-object v0, v0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->this$0:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;

    #@1f2
    move-object/from16 v19, v0

    #@1f4
    invoke-static/range {v19 .. v19}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->-get5(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;)Landroid/net/DhcpResults;

    #@1f7
    move-result-object v19

    #@1f8
    move-object/from16 v0, v19

    #@1fa
    iget-object v0, v0, Landroid/net/DhcpResults;->serverAddress:Ljava/net/Inet4Address;

    #@1fc
    move-object/from16 v19, v0

    #@1fe
    invoke-static/range {v18 .. v19}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->-wrap32(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;Ljava/net/InetAddress;)V

    #@201
    .line 2024
    move-object/from16 v0, p0

    #@203
    iget-object v0, v0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$GroupCreatedState;->this$1:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    #@205
    move-object/from16 v18, v0

    #@207
    invoke-static/range {v18 .. v18}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->-wrap26(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;)V

    #@20a
    .line 2026
    :try_start_0
    move-object/from16 v0, p0

    #@20c
    iget-object v0, v0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$GroupCreatedState;->this$1:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    #@20e
    move-object/from16 v18, v0

    #@210
    invoke-static/range {v18 .. v18}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->-get1(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;)Landroid/net/wifi/p2p/WifiP2pGroup;

    #@213
    move-result-object v18

    #@214
    invoke-virtual/range {v18 .. v18}, Landroid/net/wifi/p2p/WifiP2pGroup;->getInterface()Ljava/lang/String;

    #@217
    move-result-object v10

    #@218
    .line 2027
    .local v10, "ifname":Ljava/lang/String;
    move-object/from16 v0, p0

    #@21a
    iget-object v0, v0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$GroupCreatedState;->this$1:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    #@21c
    move-object/from16 v18, v0

    #@21e
    move-object/from16 v0, v18

    #@220
    iget-object v0, v0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->this$0:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;

    #@222
    move-object/from16 v18, v0

    #@224
    move-object/from16 v0, v18

    #@226
    iget-object v0, v0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mNwService:Landroid/os/INetworkManagementService;

    #@228
    move-object/from16 v18, v0

    #@22a
    .line 2028
    move-object/from16 v0, p0

    #@22c
    iget-object v0, v0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$GroupCreatedState;->this$1:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    #@22e
    move-object/from16 v19, v0

    #@230
    move-object/from16 v0, v19

    #@232
    iget-object v0, v0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->this$0:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;

    #@234
    move-object/from16 v19, v0

    #@236
    invoke-static/range {v19 .. v19}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->-get5(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;)Landroid/net/DhcpResults;

    #@239
    move-result-object v19

    #@23a
    move-object/from16 v0, v19

    #@23c
    invoke-virtual {v0, v10}, Landroid/net/DhcpResults;->getRoutes(Ljava/lang/String;)Ljava/util/List;

    #@23f
    move-result-object v19

    #@240
    .line 2027
    move-object/from16 v0, v18

    #@242
    move-object/from16 v1, v19

    #@244
    invoke-interface {v0, v10, v1}, Landroid/os/INetworkManagementService;->addInterfaceToLocalNetwork(Ljava/lang/String;Ljava/util/List;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@247
    goto/16 :goto_2

    #@249
    .line 2029
    .end local v10    # "ifname":Ljava/lang/String;
    :catch_0
    move-exception v9

    #@24a
    .line 2030
    .local v9, "e":Landroid/os/RemoteException;
    move-object/from16 v0, p0

    #@24c
    iget-object v0, v0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$GroupCreatedState;->this$1:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    #@24e
    move-object/from16 v18, v0

    #@250
    new-instance v19, Ljava/lang/StringBuilder;

    #@252
    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    #@255
    const-string/jumbo v20, "Failed to add iface to local network "

    #@258
    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@25b
    move-result-object v19

    #@25c
    move-object/from16 v0, v19

    #@25e
    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@261
    move-result-object v19

    #@262
    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@265
    move-result-object v19

    #@266
    invoke-virtual/range {v18 .. v19}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->loge(Ljava/lang/String;)V

    #@269
    goto/16 :goto_2

    #@26b
    .line 2034
    .end local v9    # "e":Landroid/os/RemoteException;
    :sswitch_6
    move-object/from16 v0, p0

    #@26d
    iget-object v0, v0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$GroupCreatedState;->this$1:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    #@26f
    move-object/from16 v18, v0

    #@271
    const-string/jumbo v19, "IP provisioning failed"

    #@274
    invoke-virtual/range {v18 .. v19}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->loge(Ljava/lang/String;)V

    #@277
    .line 2035
    move-object/from16 v0, p0

    #@279
    iget-object v0, v0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$GroupCreatedState;->this$1:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    #@27b
    move-object/from16 v18, v0

    #@27d
    invoke-static/range {v18 .. v18}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->-get19(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;)Lcom/android/server/wifi/WifiNative;

    #@280
    move-result-object v18

    #@281
    move-object/from16 v0, p0

    #@283
    iget-object v0, v0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$GroupCreatedState;->this$1:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    #@285
    move-object/from16 v19, v0

    #@287
    invoke-static/range {v19 .. v19}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->-get1(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;)Landroid/net/wifi/p2p/WifiP2pGroup;

    #@28a
    move-result-object v19

    #@28b
    invoke-virtual/range {v19 .. v19}, Landroid/net/wifi/p2p/WifiP2pGroup;->getInterface()Ljava/lang/String;

    #@28e
    move-result-object v19

    #@28f
    invoke-virtual/range {v18 .. v19}, Lcom/android/server/wifi/WifiNative;->p2pGroupRemove(Ljava/lang/String;)Z

    #@292
    goto/16 :goto_2

    #@294
    .line 2039
    :sswitch_7
    move-object/from16 v0, p0

    #@296
    iget-object v0, v0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$GroupCreatedState;->this$1:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    #@298
    move-object/from16 v18, v0

    #@29a
    invoke-static/range {v18 .. v18}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->-get19(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;)Lcom/android/server/wifi/WifiNative;

    #@29d
    move-result-object v18

    #@29e
    move-object/from16 v0, p0

    #@2a0
    iget-object v0, v0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$GroupCreatedState;->this$1:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    #@2a2
    move-object/from16 v19, v0

    #@2a4
    invoke-static/range {v19 .. v19}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->-get1(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;)Landroid/net/wifi/p2p/WifiP2pGroup;

    #@2a7
    move-result-object v19

    #@2a8
    invoke-virtual/range {v19 .. v19}, Landroid/net/wifi/p2p/WifiP2pGroup;->getInterface()Ljava/lang/String;

    #@2ab
    move-result-object v19

    #@2ac
    invoke-virtual/range {v18 .. v19}, Lcom/android/server/wifi/WifiNative;->p2pGroupRemove(Ljava/lang/String;)Z

    #@2af
    move-result v18

    #@2b0
    if-eqz v18, :cond_7

    #@2b2
    .line 2040
    move-object/from16 v0, p0

    #@2b4
    iget-object v0, v0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$GroupCreatedState;->this$1:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    #@2b6
    move-object/from16 v18, v0

    #@2b8
    move-object/from16 v0, p0

    #@2ba
    iget-object v0, v0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$GroupCreatedState;->this$1:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    #@2bc
    move-object/from16 v19, v0

    #@2be
    invoke-static/range {v19 .. v19}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->-get7(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;)Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$OngoingGroupRemovalState;

    #@2c1
    move-result-object v19

    #@2c2
    invoke-static/range {v18 .. v19}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->-wrap34(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;Lcom/android/internal/util/IState;)V

    #@2c5
    .line 2041
    move-object/from16 v0, p0

    #@2c7
    iget-object v0, v0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$GroupCreatedState;->this$1:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    #@2c9
    move-object/from16 v18, v0

    #@2cb
    const v19, 0x22012

    #@2ce
    move-object/from16 v0, v18

    #@2d0
    move-object/from16 v1, p1

    #@2d2
    move/from16 v2, v19

    #@2d4
    invoke-static {v0, v1, v2}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->-wrap22(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;Landroid/os/Message;I)V

    #@2d7
    goto/16 :goto_2

    #@2d9
    .line 2043
    :cond_7
    move-object/from16 v0, p0

    #@2db
    iget-object v0, v0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$GroupCreatedState;->this$1:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    #@2dd
    move-object/from16 v18, v0

    #@2df
    invoke-static/range {v18 .. v18}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->-wrap14(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;)V

    #@2e2
    .line 2044
    move-object/from16 v0, p0

    #@2e4
    iget-object v0, v0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$GroupCreatedState;->this$1:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    #@2e6
    move-object/from16 v18, v0

    #@2e8
    move-object/from16 v0, p0

    #@2ea
    iget-object v0, v0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$GroupCreatedState;->this$1:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    #@2ec
    move-object/from16 v19, v0

    #@2ee
    invoke-static/range {v19 .. v19}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->-get6(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;)Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$InactiveState;

    #@2f1
    move-result-object v19

    #@2f2
    invoke-static/range {v18 .. v19}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->-wrap34(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;Lcom/android/internal/util/IState;)V

    #@2f5
    .line 2045
    move-object/from16 v0, p0

    #@2f7
    iget-object v0, v0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$GroupCreatedState;->this$1:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    #@2f9
    move-object/from16 v18, v0

    #@2fb
    const v19, 0x22011

    #@2fe
    .line 2046
    const/16 v20, 0x0

    #@300
    .line 2045
    move-object/from16 v0, v18

    #@302
    move-object/from16 v1, p1

    #@304
    move/from16 v2, v19

    #@306
    move/from16 v3, v20

    #@308
    invoke-static {v0, v1, v2, v3}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->-wrap23(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;Landroid/os/Message;II)V

    #@30b
    goto/16 :goto_2

    #@30d
    .line 2062
    :sswitch_8
    move-object/from16 v0, p0

    #@30f
    iget-object v0, v0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$GroupCreatedState;->this$1:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    #@311
    move-object/from16 v18, v0

    #@313
    invoke-static/range {v18 .. v18}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->-wrap14(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;)V

    #@316
    .line 2063
    move-object/from16 v0, p0

    #@318
    iget-object v0, v0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$GroupCreatedState;->this$1:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    #@31a
    move-object/from16 v18, v0

    #@31c
    move-object/from16 v0, p0

    #@31e
    iget-object v0, v0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$GroupCreatedState;->this$1:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    #@320
    move-object/from16 v19, v0

    #@322
    invoke-static/range {v19 .. v19}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->-get6(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;)Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$InactiveState;

    #@325
    move-result-object v19

    #@326
    invoke-static/range {v18 .. v19}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->-wrap34(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;Lcom/android/internal/util/IState;)V

    #@329
    goto/16 :goto_2

    #@32b
    .line 2066
    :sswitch_9
    move-object/from16 v0, p1

    #@32d
    iget-object v7, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@32f
    check-cast v7, Landroid/net/wifi/p2p/WifiP2pDevice;

    #@331
    .line 2068
    .restart local v7    # "device":Landroid/net/wifi/p2p/WifiP2pDevice;
    move-object/from16 v0, p0

    #@333
    iget-object v0, v0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$GroupCreatedState;->this$1:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    #@335
    move-object/from16 v18, v0

    #@337
    invoke-static/range {v18 .. v18}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->-get1(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;)Landroid/net/wifi/p2p/WifiP2pGroup;

    #@33a
    move-result-object v18

    #@33b
    move-object/from16 v0, v18

    #@33d
    invoke-virtual {v0, v7}, Landroid/net/wifi/p2p/WifiP2pGroup;->contains(Landroid/net/wifi/p2p/WifiP2pDevice;)Z

    #@340
    move-result v18

    #@341
    if-eqz v18, :cond_8

    #@343
    .line 2070
    move-object/from16 v0, p0

    #@345
    iget-object v0, v0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$GroupCreatedState;->this$1:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    #@347
    move-object/from16 v18, v0

    #@349
    invoke-static/range {v18 .. v18}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->-get12(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;)Landroid/net/wifi/p2p/WifiP2pDeviceList;

    #@34c
    move-result-object v18

    #@34d
    move-object/from16 v0, v18

    #@34f
    invoke-virtual {v0, v7}, Landroid/net/wifi/p2p/WifiP2pDeviceList;->updateSupplicantDetails(Landroid/net/wifi/p2p/WifiP2pDevice;)V

    #@352
    .line 2071
    const/16 v18, 0x1

    #@354
    return v18

    #@355
    .line 2074
    :cond_8
    const/16 v18, 0x0

    #@357
    return v18

    #@358
    .line 2076
    .end local v7    # "device":Landroid/net/wifi/p2p/WifiP2pDevice;
    :sswitch_a
    move-object/from16 v0, p0

    #@35a
    iget-object v0, v0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$GroupCreatedState;->this$1:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    #@35c
    move-object/from16 v18, v0

    #@35e
    const v19, 0x22010

    #@361
    invoke-virtual/range {v18 .. v19}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->sendMessage(I)V

    #@364
    .line 2077
    move-object/from16 v0, p0

    #@366
    iget-object v0, v0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$GroupCreatedState;->this$1:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    #@368
    move-object/from16 v18, v0

    #@36a
    move-object/from16 v0, v18

    #@36c
    move-object/from16 v1, p1

    #@36e
    invoke-static {v0, v1}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->-wrap12(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;Landroid/os/Message;)V

    #@371
    goto/16 :goto_2

    #@373
    .line 2082
    :sswitch_b
    move-object/from16 v0, p1

    #@375
    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@377
    move-object/from16 v17, v0

    #@379
    check-cast v17, Landroid/net/wifi/WpsInfo;

    #@37b
    .line 2083
    .local v17, "wps":Landroid/net/wifi/WpsInfo;
    if-nez v17, :cond_9

    #@37d
    .line 2084
    move-object/from16 v0, p0

    #@37f
    iget-object v0, v0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$GroupCreatedState;->this$1:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    #@381
    move-object/from16 v18, v0

    #@383
    const v19, 0x2203f

    #@386
    move-object/from16 v0, v18

    #@388
    move-object/from16 v1, p1

    #@38a
    move/from16 v2, v19

    #@38c
    invoke-static {v0, v1, v2}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->-wrap22(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;Landroid/os/Message;I)V

    #@38f
    goto/16 :goto_2

    #@391
    .line 2087
    :cond_9
    const/4 v15, 0x1

    #@392
    .line 2088
    .local v15, "ret":Z
    move-object/from16 v0, v17

    #@394
    iget v0, v0, Landroid/net/wifi/WpsInfo;->setup:I

    #@396
    move/from16 v18, v0

    #@398
    if-nez v18, :cond_a

    #@39a
    .line 2089
    move-object/from16 v0, p0

    #@39c
    iget-object v0, v0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$GroupCreatedState;->this$1:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    #@39e
    move-object/from16 v18, v0

    #@3a0
    invoke-static/range {v18 .. v18}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->-get19(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;)Lcom/android/server/wifi/WifiNative;

    #@3a3
    move-result-object v18

    #@3a4
    move-object/from16 v0, p0

    #@3a6
    iget-object v0, v0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$GroupCreatedState;->this$1:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    #@3a8
    move-object/from16 v19, v0

    #@3aa
    invoke-static/range {v19 .. v19}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->-get1(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;)Landroid/net/wifi/p2p/WifiP2pGroup;

    #@3ad
    move-result-object v19

    #@3ae
    invoke-virtual/range {v19 .. v19}, Landroid/net/wifi/p2p/WifiP2pGroup;->getInterface()Ljava/lang/String;

    #@3b1
    move-result-object v19

    #@3b2
    const/16 v20, 0x0

    #@3b4
    invoke-virtual/range {v18 .. v20}, Lcom/android/server/wifi/WifiNative;->startWpsPbc(Ljava/lang/String;Ljava/lang/String;)Z

    #@3b7
    move-result v15

    #@3b8
    .line 2104
    .end local v15    # "ret":Z
    :goto_5
    move-object/from16 v0, p0

    #@3ba
    iget-object v0, v0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$GroupCreatedState;->this$1:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    #@3bc
    move-object/from16 v19, v0

    #@3be
    if-eqz v15, :cond_c

    #@3c0
    const v18, 0x22040

    #@3c3
    :goto_6
    move-object/from16 v0, v19

    #@3c5
    move-object/from16 v1, p1

    #@3c7
    move/from16 v2, v18

    #@3c9
    invoke-static {v0, v1, v2}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->-wrap22(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;Landroid/os/Message;I)V

    #@3cc
    goto/16 :goto_2

    #@3ce
    .line 2091
    .restart local v15    # "ret":Z
    :cond_a
    move-object/from16 v0, v17

    #@3d0
    iget-object v0, v0, Landroid/net/wifi/WpsInfo;->pin:Ljava/lang/String;

    #@3d2
    move-object/from16 v18, v0

    #@3d4
    if-nez v18, :cond_b

    #@3d6
    .line 2092
    move-object/from16 v0, p0

    #@3d8
    iget-object v0, v0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$GroupCreatedState;->this$1:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    #@3da
    move-object/from16 v18, v0

    #@3dc
    invoke-static/range {v18 .. v18}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->-get19(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;)Lcom/android/server/wifi/WifiNative;

    #@3df
    move-result-object v18

    #@3e0
    move-object/from16 v0, p0

    #@3e2
    iget-object v0, v0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$GroupCreatedState;->this$1:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    #@3e4
    move-object/from16 v19, v0

    #@3e6
    invoke-static/range {v19 .. v19}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->-get1(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;)Landroid/net/wifi/p2p/WifiP2pGroup;

    #@3e9
    move-result-object v19

    #@3ea
    invoke-virtual/range {v19 .. v19}, Landroid/net/wifi/p2p/WifiP2pGroup;->getInterface()Ljava/lang/String;

    #@3ed
    move-result-object v19

    #@3ee
    invoke-virtual/range {v18 .. v19}, Lcom/android/server/wifi/WifiNative;->startWpsPinDisplay(Ljava/lang/String;)Ljava/lang/String;

    #@3f1
    move-result-object v13

    #@3f2
    .line 2094
    .local v13, "pin":Ljava/lang/String;
    :try_start_1
    invoke-static {v13}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    #@3f5
    .line 2095
    move-object/from16 v0, p0

    #@3f7
    iget-object v0, v0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$GroupCreatedState;->this$1:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    #@3f9
    move-object/from16 v18, v0

    #@3fb
    const-string/jumbo v19, "any"

    #@3fe
    move-object/from16 v0, v18

    #@400
    move-object/from16 v1, v19

    #@402
    invoke-static {v0, v13, v1}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->-wrap18(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    #@405
    goto :goto_5

    #@406
    .line 2096
    :catch_1
    move-exception v11

    #@407
    .line 2097
    .local v11, "ignore":Ljava/lang/NumberFormatException;
    const/4 v15, 0x0

    #@408
    goto :goto_5

    #@409
    .line 2100
    .end local v11    # "ignore":Ljava/lang/NumberFormatException;
    .end local v13    # "pin":Ljava/lang/String;
    :cond_b
    move-object/from16 v0, p0

    #@40b
    iget-object v0, v0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$GroupCreatedState;->this$1:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    #@40d
    move-object/from16 v18, v0

    #@40f
    invoke-static/range {v18 .. v18}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->-get19(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;)Lcom/android/server/wifi/WifiNative;

    #@412
    move-result-object v18

    #@413
    move-object/from16 v0, p0

    #@415
    iget-object v0, v0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$GroupCreatedState;->this$1:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    #@417
    move-object/from16 v19, v0

    #@419
    invoke-static/range {v19 .. v19}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->-get1(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;)Landroid/net/wifi/p2p/WifiP2pGroup;

    #@41c
    move-result-object v19

    #@41d
    invoke-virtual/range {v19 .. v19}, Landroid/net/wifi/p2p/WifiP2pGroup;->getInterface()Ljava/lang/String;

    #@420
    move-result-object v19

    #@421
    .line 2101
    move-object/from16 v0, v17

    #@423
    iget-object v0, v0, Landroid/net/wifi/WpsInfo;->pin:Ljava/lang/String;

    #@425
    move-object/from16 v20, v0

    #@427
    .line 2100
    invoke-virtual/range {v18 .. v20}, Lcom/android/server/wifi/WifiNative;->startWpsPinKeypad(Ljava/lang/String;Ljava/lang/String;)Z

    #@42a
    move-result v15

    #@42b
    .local v15, "ret":Z
    goto :goto_5

    #@42c
    .line 2105
    .end local v15    # "ret":Z
    :cond_c
    const v18, 0x2203f

    #@42f
    goto :goto_6

    #@430
    .line 2108
    .end local v17    # "wps":Landroid/net/wifi/WpsInfo;
    :sswitch_c
    move-object/from16 v0, p1

    #@432
    iget-object v6, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@434
    check-cast v6, Landroid/net/wifi/p2p/WifiP2pConfig;

    #@436
    .line 2109
    .local v6, "config":Landroid/net/wifi/p2p/WifiP2pConfig;
    move-object/from16 v0, p0

    #@438
    iget-object v0, v0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$GroupCreatedState;->this$1:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    #@43a
    move-object/from16 v18, v0

    #@43c
    move-object/from16 v0, v18

    #@43e
    invoke-static {v0, v6}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->-wrap2(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;Landroid/net/wifi/p2p/WifiP2pConfig;)Z

    #@441
    move-result v18

    #@442
    if-eqz v18, :cond_d

    #@444
    .line 2110
    move-object/from16 v0, p0

    #@446
    iget-object v0, v0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$GroupCreatedState;->this$1:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    #@448
    move-object/from16 v18, v0

    #@44a
    new-instance v19, Ljava/lang/StringBuilder;

    #@44c
    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    #@44f
    const-string/jumbo v20, "Dropping connect requeset "

    #@452
    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@455
    move-result-object v19

    #@456
    move-object/from16 v0, v19

    #@458
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@45b
    move-result-object v19

    #@45c
    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@45f
    move-result-object v19

    #@460
    invoke-virtual/range {v18 .. v19}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->loge(Ljava/lang/String;)V

    #@463
    .line 2111
    move-object/from16 v0, p0

    #@465
    iget-object v0, v0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$GroupCreatedState;->this$1:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    #@467
    move-object/from16 v18, v0

    #@469
    const v19, 0x22008

    #@46c
    move-object/from16 v0, v18

    #@46e
    move-object/from16 v1, p1

    #@470
    move/from16 v2, v19

    #@472
    invoke-static {v0, v1, v2}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->-wrap22(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;Landroid/os/Message;I)V

    #@475
    goto/16 :goto_2

    #@477
    .line 2114
    :cond_d
    move-object/from16 v0, p0

    #@479
    iget-object v0, v0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$GroupCreatedState;->this$1:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    #@47b
    move-object/from16 v18, v0

    #@47d
    new-instance v19, Ljava/lang/StringBuilder;

    #@47f
    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    #@482
    const-string/jumbo v20, "Inviting device : "

    #@485
    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@488
    move-result-object v19

    #@489
    iget-object v0, v6, Landroid/net/wifi/p2p/WifiP2pConfig;->deviceAddress:Ljava/lang/String;

    #@48b
    move-object/from16 v20, v0

    #@48d
    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@490
    move-result-object v19

    #@491
    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@494
    move-result-object v19

    #@495
    invoke-virtual/range {v18 .. v19}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->logd(Ljava/lang/String;)V

    #@498
    .line 2115
    move-object/from16 v0, p0

    #@49a
    iget-object v0, v0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$GroupCreatedState;->this$1:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    #@49c
    move-object/from16 v18, v0

    #@49e
    move-object/from16 v0, v18

    #@4a0
    invoke-static {v0, v6}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->-set1(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;Landroid/net/wifi/p2p/WifiP2pConfig;)Landroid/net/wifi/p2p/WifiP2pConfig;

    #@4a3
    .line 2116
    move-object/from16 v0, p0

    #@4a5
    iget-object v0, v0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$GroupCreatedState;->this$1:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    #@4a7
    move-object/from16 v18, v0

    #@4a9
    invoke-static/range {v18 .. v18}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->-get19(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;)Lcom/android/server/wifi/WifiNative;

    #@4ac
    move-result-object v18

    #@4ad
    move-object/from16 v0, p0

    #@4af
    iget-object v0, v0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$GroupCreatedState;->this$1:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    #@4b1
    move-object/from16 v19, v0

    #@4b3
    invoke-static/range {v19 .. v19}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->-get1(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;)Landroid/net/wifi/p2p/WifiP2pGroup;

    #@4b6
    move-result-object v19

    #@4b7
    iget-object v0, v6, Landroid/net/wifi/p2p/WifiP2pConfig;->deviceAddress:Ljava/lang/String;

    #@4b9
    move-object/from16 v20, v0

    #@4bb
    invoke-virtual/range {v18 .. v20}, Lcom/android/server/wifi/WifiNative;->p2pInvite(Landroid/net/wifi/p2p/WifiP2pGroup;Ljava/lang/String;)Z

    #@4be
    move-result v18

    #@4bf
    if-eqz v18, :cond_e

    #@4c1
    .line 2117
    move-object/from16 v0, p0

    #@4c3
    iget-object v0, v0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$GroupCreatedState;->this$1:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    #@4c5
    move-object/from16 v18, v0

    #@4c7
    invoke-static/range {v18 .. v18}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->-get11(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;)Landroid/net/wifi/p2p/WifiP2pDeviceList;

    #@4ca
    move-result-object v18

    #@4cb
    iget-object v0, v6, Landroid/net/wifi/p2p/WifiP2pConfig;->deviceAddress:Ljava/lang/String;

    #@4cd
    move-object/from16 v19, v0

    #@4cf
    const/16 v20, 0x1

    #@4d1
    invoke-virtual/range {v18 .. v20}, Landroid/net/wifi/p2p/WifiP2pDeviceList;->updateStatus(Ljava/lang/String;I)V

    #@4d4
    .line 2118
    move-object/from16 v0, p0

    #@4d6
    iget-object v0, v0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$GroupCreatedState;->this$1:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    #@4d8
    move-object/from16 v18, v0

    #@4da
    invoke-static/range {v18 .. v18}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->-wrap30(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;)V

    #@4dd
    .line 2119
    move-object/from16 v0, p0

    #@4df
    iget-object v0, v0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$GroupCreatedState;->this$1:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    #@4e1
    move-object/from16 v18, v0

    #@4e3
    const v19, 0x22009

    #@4e6
    move-object/from16 v0, v18

    #@4e8
    move-object/from16 v1, p1

    #@4ea
    move/from16 v2, v19

    #@4ec
    invoke-static {v0, v1, v2}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->-wrap22(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;Landroid/os/Message;I)V

    #@4ef
    goto/16 :goto_2

    #@4f1
    .line 2121
    :cond_e
    move-object/from16 v0, p0

    #@4f3
    iget-object v0, v0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$GroupCreatedState;->this$1:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    #@4f5
    move-object/from16 v18, v0

    #@4f7
    const v19, 0x22008

    #@4fa
    .line 2122
    const/16 v20, 0x0

    #@4fc
    .line 2121
    move-object/from16 v0, v18

    #@4fe
    move-object/from16 v1, p1

    #@500
    move/from16 v2, v19

    #@502
    move/from16 v3, v20

    #@504
    invoke-static {v0, v1, v2, v3}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->-wrap23(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;Landroid/os/Message;II)V

    #@507
    goto/16 :goto_2

    #@509
    .line 2127
    .end local v6    # "config":Landroid/net/wifi/p2p/WifiP2pConfig;
    :sswitch_d
    move-object/from16 v0, p1

    #@50b
    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@50d
    move-object/from16 v16, v0

    #@50f
    check-cast v16, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStatus;

    #@511
    .line 2128
    .local v16, "status":Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStatus;
    sget-object v18, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStatus;->SUCCESS:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStatus;

    #@513
    move-object/from16 v0, v16

    #@515
    move-object/from16 v1, v18

    #@517
    if-eq v0, v1, :cond_0

    #@519
    .line 2132
    move-object/from16 v0, p0

    #@51b
    iget-object v0, v0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$GroupCreatedState;->this$1:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    #@51d
    move-object/from16 v18, v0

    #@51f
    new-instance v19, Ljava/lang/StringBuilder;

    #@521
    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    #@524
    const-string/jumbo v20, "Invitation result "

    #@527
    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@52a
    move-result-object v19

    #@52b
    move-object/from16 v0, v19

    #@52d
    move-object/from16 v1, v16

    #@52f
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@532
    move-result-object v19

    #@533
    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@536
    move-result-object v19

    #@537
    invoke-virtual/range {v18 .. v19}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->loge(Ljava/lang/String;)V

    #@53a
    .line 2133
    sget-object v18, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStatus;->UNKNOWN_P2P_GROUP:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStatus;

    #@53c
    move-object/from16 v0, v16

    #@53e
    move-object/from16 v1, v18

    #@540
    if-ne v0, v1, :cond_0

    #@542
    .line 2136
    move-object/from16 v0, p0

    #@544
    iget-object v0, v0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$GroupCreatedState;->this$1:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    #@546
    move-object/from16 v18, v0

    #@548
    invoke-static/range {v18 .. v18}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->-get1(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;)Landroid/net/wifi/p2p/WifiP2pGroup;

    #@54b
    move-result-object v18

    #@54c
    invoke-virtual/range {v18 .. v18}, Landroid/net/wifi/p2p/WifiP2pGroup;->getNetworkId()I

    #@54f
    move-result v12

    #@550
    .line 2137
    .local v12, "netId":I
    if-ltz v12, :cond_0

    #@552
    .line 2139
    move-object/from16 v0, p0

    #@554
    iget-object v0, v0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$GroupCreatedState;->this$1:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    #@556
    move-object/from16 v18, v0

    #@558
    .line 2140
    move-object/from16 v0, p0

    #@55a
    iget-object v0, v0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$GroupCreatedState;->this$1:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    #@55c
    move-object/from16 v19, v0

    #@55e
    invoke-static/range {v19 .. v19}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->-get14(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;)Landroid/net/wifi/p2p/WifiP2pConfig;

    #@561
    move-result-object v19

    #@562
    move-object/from16 v0, v19

    #@564
    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pConfig;->deviceAddress:Ljava/lang/String;

    #@566
    move-object/from16 v19, v0

    #@568
    const/16 v20, 0x0

    #@56a
    .line 2139
    move-object/from16 v0, v18

    #@56c
    move-object/from16 v1, v19

    #@56e
    move/from16 v2, v20

    #@570
    invoke-static {v0, v12, v1, v2}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->-wrap4(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;ILjava/lang/String;Z)Z

    #@573
    move-result v18

    #@574
    if-nez v18, :cond_f

    #@576
    .line 2142
    move-object/from16 v0, p0

    #@578
    iget-object v0, v0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$GroupCreatedState;->this$1:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    #@57a
    move-object/from16 v18, v0

    #@57c
    const-string/jumbo v19, "Already removed the client, ignore"

    #@57f
    invoke-virtual/range {v18 .. v19}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->loge(Ljava/lang/String;)V

    #@582
    goto/16 :goto_2

    #@584
    .line 2146
    :cond_f
    move-object/from16 v0, p0

    #@586
    iget-object v0, v0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$GroupCreatedState;->this$1:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    #@588
    move-object/from16 v18, v0

    #@58a
    move-object/from16 v0, p0

    #@58c
    iget-object v0, v0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$GroupCreatedState;->this$1:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    #@58e
    move-object/from16 v19, v0

    #@590
    invoke-static/range {v19 .. v19}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->-get14(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;)Landroid/net/wifi/p2p/WifiP2pConfig;

    #@593
    move-result-object v19

    #@594
    const v20, 0x22007

    #@597
    move-object/from16 v0, v18

    #@599
    move/from16 v1, v20

    #@59b
    move-object/from16 v2, v19

    #@59d
    invoke-virtual {v0, v1, v2}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->sendMessage(ILjava/lang/Object;)V

    #@5a0
    goto/16 :goto_2

    #@5a2
    .line 2153
    .end local v12    # "netId":I
    .end local v16    # "status":Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStatus;
    :sswitch_e
    move-object/from16 v0, p1

    #@5a4
    iget-object v14, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@5a6
    check-cast v14, Landroid/net/wifi/p2p/WifiP2pProvDiscEvent;

    #@5a8
    .line 2154
    .local v14, "provDisc":Landroid/net/wifi/p2p/WifiP2pProvDiscEvent;
    move-object/from16 v0, p0

    #@5aa
    iget-object v0, v0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$GroupCreatedState;->this$1:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    #@5ac
    move-object/from16 v18, v0

    #@5ae
    new-instance v19, Landroid/net/wifi/p2p/WifiP2pConfig;

    #@5b0
    invoke-direct/range {v19 .. v19}, Landroid/net/wifi/p2p/WifiP2pConfig;-><init>()V

    #@5b3
    invoke-static/range {v18 .. v19}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->-set1(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;Landroid/net/wifi/p2p/WifiP2pConfig;)Landroid/net/wifi/p2p/WifiP2pConfig;

    #@5b6
    .line 2155
    move-object/from16 v0, p0

    #@5b8
    iget-object v0, v0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$GroupCreatedState;->this$1:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    #@5ba
    move-object/from16 v18, v0

    #@5bc
    invoke-static/range {v18 .. v18}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->-get14(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;)Landroid/net/wifi/p2p/WifiP2pConfig;

    #@5bf
    move-result-object v18

    #@5c0
    iget-object v0, v14, Landroid/net/wifi/p2p/WifiP2pProvDiscEvent;->device:Landroid/net/wifi/p2p/WifiP2pDevice;

    #@5c2
    move-object/from16 v19, v0

    #@5c4
    move-object/from16 v0, v19

    #@5c6
    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;

    #@5c8
    move-object/from16 v19, v0

    #@5ca
    move-object/from16 v0, v19

    #@5cc
    move-object/from16 v1, v18

    #@5ce
    iput-object v0, v1, Landroid/net/wifi/p2p/WifiP2pConfig;->deviceAddress:Ljava/lang/String;

    #@5d0
    .line 2156
    move-object/from16 v0, p1

    #@5d2
    iget v0, v0, Landroid/os/Message;->what:I

    #@5d4
    move/from16 v18, v0

    #@5d6
    const v19, 0x24023

    #@5d9
    move/from16 v0, v18

    #@5db
    move/from16 v1, v19

    #@5dd
    if-ne v0, v1, :cond_10

    #@5df
    .line 2157
    move-object/from16 v0, p0

    #@5e1
    iget-object v0, v0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$GroupCreatedState;->this$1:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    #@5e3
    move-object/from16 v18, v0

    #@5e5
    invoke-static/range {v18 .. v18}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->-get14(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;)Landroid/net/wifi/p2p/WifiP2pConfig;

    #@5e8
    move-result-object v18

    #@5e9
    move-object/from16 v0, v18

    #@5eb
    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pConfig;->wps:Landroid/net/wifi/WpsInfo;

    #@5ed
    move-object/from16 v18, v0

    #@5ef
    const/16 v19, 0x2

    #@5f1
    move/from16 v0, v19

    #@5f3
    move-object/from16 v1, v18

    #@5f5
    iput v0, v1, Landroid/net/wifi/WpsInfo;->setup:I

    #@5f7
    .line 2164
    :goto_7
    move-object/from16 v0, p0

    #@5f9
    iget-object v0, v0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$GroupCreatedState;->this$1:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    #@5fb
    move-object/from16 v18, v0

    #@5fd
    move-object/from16 v0, p0

    #@5ff
    iget-object v0, v0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$GroupCreatedState;->this$1:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    #@601
    move-object/from16 v19, v0

    #@603
    invoke-static/range {v19 .. v19}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->-get16(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;)Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$UserAuthorizingJoinState;

    #@606
    move-result-object v19

    #@607
    invoke-static/range {v18 .. v19}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->-wrap34(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;Lcom/android/internal/util/IState;)V

    #@60a
    goto/16 :goto_2

    #@60c
    .line 2158
    :cond_10
    move-object/from16 v0, p1

    #@60e
    iget v0, v0, Landroid/os/Message;->what:I

    #@610
    move/from16 v18, v0

    #@612
    const v19, 0x24024

    #@615
    move/from16 v0, v18

    #@617
    move/from16 v1, v19

    #@619
    if-ne v0, v1, :cond_11

    #@61b
    .line 2159
    move-object/from16 v0, p0

    #@61d
    iget-object v0, v0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$GroupCreatedState;->this$1:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    #@61f
    move-object/from16 v18, v0

    #@621
    invoke-static/range {v18 .. v18}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->-get14(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;)Landroid/net/wifi/p2p/WifiP2pConfig;

    #@624
    move-result-object v18

    #@625
    move-object/from16 v0, v18

    #@627
    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pConfig;->wps:Landroid/net/wifi/WpsInfo;

    #@629
    move-object/from16 v18, v0

    #@62b
    const/16 v19, 0x1

    #@62d
    move/from16 v0, v19

    #@62f
    move-object/from16 v1, v18

    #@631
    iput v0, v1, Landroid/net/wifi/WpsInfo;->setup:I

    #@633
    .line 2160
    move-object/from16 v0, p0

    #@635
    iget-object v0, v0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$GroupCreatedState;->this$1:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    #@637
    move-object/from16 v18, v0

    #@639
    invoke-static/range {v18 .. v18}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->-get14(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;)Landroid/net/wifi/p2p/WifiP2pConfig;

    #@63c
    move-result-object v18

    #@63d
    move-object/from16 v0, v18

    #@63f
    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pConfig;->wps:Landroid/net/wifi/WpsInfo;

    #@641
    move-object/from16 v18, v0

    #@643
    iget-object v0, v14, Landroid/net/wifi/p2p/WifiP2pProvDiscEvent;->pin:Ljava/lang/String;

    #@645
    move-object/from16 v19, v0

    #@647
    move-object/from16 v0, v19

    #@649
    move-object/from16 v1, v18

    #@64b
    iput-object v0, v1, Landroid/net/wifi/WpsInfo;->pin:Ljava/lang/String;

    #@64d
    goto :goto_7

    #@64e
    .line 2162
    :cond_11
    move-object/from16 v0, p0

    #@650
    iget-object v0, v0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$GroupCreatedState;->this$1:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    #@652
    move-object/from16 v18, v0

    #@654
    invoke-static/range {v18 .. v18}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->-get14(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;)Landroid/net/wifi/p2p/WifiP2pConfig;

    #@657
    move-result-object v18

    #@658
    move-object/from16 v0, v18

    #@65a
    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pConfig;->wps:Landroid/net/wifi/WpsInfo;

    #@65c
    move-object/from16 v18, v0

    #@65e
    const/16 v19, 0x0

    #@660
    move/from16 v0, v19

    #@662
    move-object/from16 v1, v18

    #@664
    iput v0, v1, Landroid/net/wifi/WpsInfo;->setup:I

    #@666
    goto :goto_7

    #@667
    .line 2167
    .end local v14    # "provDisc":Landroid/net/wifi/p2p/WifiP2pProvDiscEvent;
    :sswitch_f
    move-object/from16 v0, p0

    #@669
    iget-object v0, v0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$GroupCreatedState;->this$1:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    #@66b
    move-object/from16 v18, v0

    #@66d
    const-string/jumbo v19, "Duplicate group creation event notice, ignore"

    #@670
    invoke-virtual/range {v18 .. v19}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->loge(Ljava/lang/String;)V

    #@673
    goto/16 :goto_2

    #@675
    .line 1963
    nop

    #@676
    :sswitch_data_0
    .sparse-switch
        0x20084 -> :sswitch_a
        0x22007 -> :sswitch_c
        0x22010 -> :sswitch_7
        0x2203e -> :sswitch_b
        0x2301e -> :sswitch_2
        0x2301f -> :sswitch_3
        0x23020 -> :sswitch_4
        0x23021 -> :sswitch_5
        0x23022 -> :sswitch_6
        0x24016 -> :sswitch_9
        0x2401d -> :sswitch_f
        0x2401e -> :sswitch_8
        0x24020 -> :sswitch_d
        0x24021 -> :sswitch_e
        0x24023 -> :sswitch_e
        0x24024 -> :sswitch_e
        0x24029 -> :sswitch_1
        0x2402a -> :sswitch_0
    .end sparse-switch
.end method
