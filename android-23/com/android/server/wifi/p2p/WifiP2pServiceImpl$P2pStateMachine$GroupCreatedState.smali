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
    .line 1834
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
    .line 1839
    iget-object v0, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$GroupCreatedState;->this$1:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    #@3
    invoke-static {v0}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->-get14(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;)Landroid/net/wifi/p2p/WifiP2pConfig;

    #@6
    move-result-object v0

    #@7
    invoke-virtual {v0}, Landroid/net/wifi/p2p/WifiP2pConfig;->invalidate()V

    #@a
    .line 1840
    iget-object v0, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$GroupCreatedState;->this$1:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    #@c
    iget-object v0, v0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->this$0:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;

    #@e
    invoke-static {v0}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->-get13(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;)Landroid/net/NetworkInfo;

    #@11
    move-result-object v0

    #@12
    sget-object v1, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    #@14
    invoke-virtual {v0, v1, v2, v2}, Landroid/net/NetworkInfo;->setDetailedState(Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;Ljava/lang/String;)V

    #@17
    .line 1842
    iget-object v0, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$GroupCreatedState;->this$1:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    #@19
    const/4 v1, 0x0

    #@1a
    invoke-static {v0, v1}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->-wrap36(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;I)V

    #@1d
    .line 1845
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
    .line 1846
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
    .line 1851
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
    .line 1852
    iget-object v0, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$GroupCreatedState;->this$1:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    #@41
    invoke-static {v0}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->-wrap26(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;)V

    #@44
    .line 1836
    :cond_1
    return-void
.end method

.method public exit()V
    .locals 3

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 2067
    iget-object v0, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$GroupCreatedState;->this$1:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    #@3
    const/4 v1, 0x3

    #@4
    invoke-static {v0, v1}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->-wrap36(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;I)V

    #@7
    .line 2068
    iget-object v0, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$GroupCreatedState;->this$1:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    #@9
    invoke-static {v0}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->-wrap25(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;)V

    #@c
    .line 2069
    iget-object v0, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$GroupCreatedState;->this$1:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    #@e
    iget-object v0, v0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->this$0:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;

    #@10
    invoke-static {v0}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->-get13(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;)Landroid/net/NetworkInfo;

    #@13
    move-result-object v0

    #@14
    sget-object v1, Landroid/net/NetworkInfo$DetailedState;->DISCONNECTED:Landroid/net/NetworkInfo$DetailedState;

    #@16
    invoke-virtual {v0, v1, v2, v2}, Landroid/net/NetworkInfo;->setDetailedState(Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;Ljava/lang/String;)V

    #@19
    .line 2070
    iget-object v0, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$GroupCreatedState;->this$1:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    #@1b
    invoke-static {v0}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->-wrap26(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;)V

    #@1e
    .line 2066
    return-void
.end method

.method public processMessage(Landroid/os/Message;)Z
    .locals 22
    .param p1, "message"    # Landroid/os/Message;

    #@0
    .prologue
    .line 1859
    move-object/from16 v0, p1

    #@2
    iget v0, v0, Landroid/os/Message;->what:I

    #@4
    move/from16 v19, v0

    #@6
    sparse-switch v19, :sswitch_data_0

    #@9
    .line 2061
    const/16 v19, 0x0

    #@b
    return v19

    #@c
    .line 1861
    :sswitch_0
    move-object/from16 v0, p1

    #@e
    iget-object v7, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@10
    check-cast v7, Landroid/net/wifi/p2p/WifiP2pDevice;

    #@12
    .line 1862
    .local v7, "device":Landroid/net/wifi/p2p/WifiP2pDevice;
    iget-object v8, v7, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;

    #@14
    .line 1864
    .local v8, "deviceAddress":Ljava/lang/String;
    move-object/from16 v0, p0

    #@16
    iget-object v0, v0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$GroupCreatedState;->this$1:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    #@18
    move-object/from16 v19, v0

    #@1a
    invoke-static/range {v19 .. v19}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->-get19(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;)Lcom/android/server/wifi/WifiNative;

    #@1d
    move-result-object v19

    #@1e
    move-object/from16 v0, p0

    #@20
    iget-object v0, v0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$GroupCreatedState;->this$1:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    #@22
    move-object/from16 v20, v0

    #@24
    invoke-static/range {v20 .. v20}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->-get1(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;)Landroid/net/wifi/p2p/WifiP2pGroup;

    #@27
    move-result-object v20

    #@28
    invoke-virtual/range {v20 .. v20}, Landroid/net/wifi/p2p/WifiP2pGroup;->getInterface()Ljava/lang/String;

    #@2b
    move-result-object v20

    #@2c
    const/16 v21, 0x0

    #@2e
    invoke-virtual/range {v19 .. v21}, Lcom/android/server/wifi/WifiNative;->setP2pGroupIdle(Ljava/lang/String;I)Z

    #@31
    .line 1865
    if-eqz v8, :cond_2

    #@33
    .line 1866
    move-object/from16 v0, p0

    #@35
    iget-object v0, v0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$GroupCreatedState;->this$1:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    #@37
    move-object/from16 v19, v0

    #@39
    invoke-static/range {v19 .. v19}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->-get11(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;)Landroid/net/wifi/p2p/WifiP2pDeviceList;

    #@3c
    move-result-object v19

    #@3d
    move-object/from16 v0, v19

    #@3f
    invoke-virtual {v0, v8}, Landroid/net/wifi/p2p/WifiP2pDeviceList;->get(Ljava/lang/String;)Landroid/net/wifi/p2p/WifiP2pDevice;

    #@42
    move-result-object v19

    #@43
    if-eqz v19, :cond_1

    #@45
    .line 1867
    move-object/from16 v0, p0

    #@47
    iget-object v0, v0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$GroupCreatedState;->this$1:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    #@49
    move-object/from16 v19, v0

    #@4b
    invoke-static/range {v19 .. v19}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->-get1(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;)Landroid/net/wifi/p2p/WifiP2pGroup;

    #@4e
    move-result-object v19

    #@4f
    move-object/from16 v0, p0

    #@51
    iget-object v0, v0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$GroupCreatedState;->this$1:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    #@53
    move-object/from16 v20, v0

    #@55
    invoke-static/range {v20 .. v20}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->-get11(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;)Landroid/net/wifi/p2p/WifiP2pDeviceList;

    #@58
    move-result-object v20

    #@59
    move-object/from16 v0, v20

    #@5b
    invoke-virtual {v0, v8}, Landroid/net/wifi/p2p/WifiP2pDeviceList;->get(Ljava/lang/String;)Landroid/net/wifi/p2p/WifiP2pDevice;

    #@5e
    move-result-object v20

    #@5f
    invoke-virtual/range {v19 .. v20}, Landroid/net/wifi/p2p/WifiP2pGroup;->addClient(Landroid/net/wifi/p2p/WifiP2pDevice;)V

    #@62
    .line 1871
    :goto_0
    move-object/from16 v0, p0

    #@64
    iget-object v0, v0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$GroupCreatedState;->this$1:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    #@66
    move-object/from16 v19, v0

    #@68
    invoke-static/range {v19 .. v19}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->-get11(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;)Landroid/net/wifi/p2p/WifiP2pDeviceList;

    #@6b
    move-result-object v19

    #@6c
    const/16 v20, 0x0

    #@6e
    move-object/from16 v0, v19

    #@70
    move/from16 v1, v20

    #@72
    invoke-virtual {v0, v8, v1}, Landroid/net/wifi/p2p/WifiP2pDeviceList;->updateStatus(Ljava/lang/String;I)V

    #@75
    .line 1873
    move-object/from16 v0, p0

    #@77
    iget-object v0, v0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$GroupCreatedState;->this$1:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    #@79
    move-object/from16 v19, v0

    #@7b
    invoke-static/range {v19 .. v19}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->-wrap30(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;)V

    #@7e
    .line 1877
    :goto_1
    move-object/from16 v0, p0

    #@80
    iget-object v0, v0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$GroupCreatedState;->this$1:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    #@82
    move-object/from16 v19, v0

    #@84
    invoke-static/range {v19 .. v19}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->-wrap26(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;)V

    #@87
    .line 2063
    .end local v7    # "device":Landroid/net/wifi/p2p/WifiP2pDevice;
    .end local v8    # "deviceAddress":Ljava/lang/String;
    :cond_0
    :goto_2
    const/16 v19, 0x1

    #@89
    return v19

    #@8a
    .line 1869
    .restart local v7    # "device":Landroid/net/wifi/p2p/WifiP2pDevice;
    .restart local v8    # "deviceAddress":Ljava/lang/String;
    :cond_1
    move-object/from16 v0, p0

    #@8c
    iget-object v0, v0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$GroupCreatedState;->this$1:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    #@8e
    move-object/from16 v19, v0

    #@90
    invoke-static/range {v19 .. v19}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->-get1(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;)Landroid/net/wifi/p2p/WifiP2pGroup;

    #@93
    move-result-object v19

    #@94
    move-object/from16 v0, v19

    #@96
    invoke-virtual {v0, v8}, Landroid/net/wifi/p2p/WifiP2pGroup;->addClient(Ljava/lang/String;)V

    #@99
    goto :goto_0

    #@9a
    .line 1875
    :cond_2
    move-object/from16 v0, p0

    #@9c
    iget-object v0, v0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$GroupCreatedState;->this$1:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    #@9e
    move-object/from16 v19, v0

    #@a0
    const-string/jumbo v20, "Connect on null device address, ignore"

    #@a3
    invoke-virtual/range {v19 .. v20}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->loge(Ljava/lang/String;)V

    #@a6
    goto :goto_1

    #@a7
    .line 1880
    .end local v7    # "device":Landroid/net/wifi/p2p/WifiP2pDevice;
    .end local v8    # "deviceAddress":Ljava/lang/String;
    :sswitch_1
    move-object/from16 v0, p1

    #@a9
    iget-object v7, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@ab
    check-cast v7, Landroid/net/wifi/p2p/WifiP2pDevice;

    #@ad
    .line 1881
    .restart local v7    # "device":Landroid/net/wifi/p2p/WifiP2pDevice;
    iget-object v8, v7, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;

    #@af
    .line 1882
    .restart local v8    # "deviceAddress":Ljava/lang/String;
    if-eqz v8, :cond_6

    #@b1
    .line 1883
    move-object/from16 v0, p0

    #@b3
    iget-object v0, v0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$GroupCreatedState;->this$1:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    #@b5
    move-object/from16 v19, v0

    #@b7
    invoke-static/range {v19 .. v19}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->-get11(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;)Landroid/net/wifi/p2p/WifiP2pDeviceList;

    #@ba
    move-result-object v19

    #@bb
    const/16 v20, 0x3

    #@bd
    move-object/from16 v0, v19

    #@bf
    move/from16 v1, v20

    #@c1
    invoke-virtual {v0, v8, v1}, Landroid/net/wifi/p2p/WifiP2pDeviceList;->updateStatus(Ljava/lang/String;I)V

    #@c4
    .line 1884
    move-object/from16 v0, p0

    #@c6
    iget-object v0, v0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$GroupCreatedState;->this$1:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    #@c8
    move-object/from16 v19, v0

    #@ca
    invoke-static/range {v19 .. v19}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->-get1(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;)Landroid/net/wifi/p2p/WifiP2pGroup;

    #@cd
    move-result-object v19

    #@ce
    move-object/from16 v0, v19

    #@d0
    invoke-virtual {v0, v8}, Landroid/net/wifi/p2p/WifiP2pGroup;->removeClient(Ljava/lang/String;)Z

    #@d3
    move-result v19

    #@d4
    if-eqz v19, :cond_5

    #@d6
    .line 1886
    move-object/from16 v0, p0

    #@d8
    iget-object v0, v0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$GroupCreatedState;->this$1:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    #@da
    move-object/from16 v19, v0

    #@dc
    move-object/from16 v0, v19

    #@de
    iget-object v0, v0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->this$0:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;

    #@e0
    move-object/from16 v19, v0

    #@e2
    invoke-static/range {v19 .. v19}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->-get2(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;)Z

    #@e5
    move-result v19

    #@e6
    if-nez v19, :cond_4

    #@e8
    move-object/from16 v0, p0

    #@ea
    iget-object v0, v0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$GroupCreatedState;->this$1:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    #@ec
    move-object/from16 v19, v0

    #@ee
    invoke-static/range {v19 .. v19}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->-get1(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;)Landroid/net/wifi/p2p/WifiP2pGroup;

    #@f1
    move-result-object v19

    #@f2
    invoke-virtual/range {v19 .. v19}, Landroid/net/wifi/p2p/WifiP2pGroup;->isClientListEmpty()Z

    #@f5
    move-result v19

    #@f6
    if-eqz v19, :cond_4

    #@f8
    .line 1887
    move-object/from16 v0, p0

    #@fa
    iget-object v0, v0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$GroupCreatedState;->this$1:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    #@fc
    move-object/from16 v19, v0

    #@fe
    const-string/jumbo v20, "Client list empty, remove non-persistent p2p group"

    #@101
    invoke-virtual/range {v19 .. v20}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->logd(Ljava/lang/String;)V

    #@104
    .line 1888
    move-object/from16 v0, p0

    #@106
    iget-object v0, v0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$GroupCreatedState;->this$1:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    #@108
    move-object/from16 v19, v0

    #@10a
    invoke-static/range {v19 .. v19}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->-get19(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;)Lcom/android/server/wifi/WifiNative;

    #@10d
    move-result-object v19

    #@10e
    move-object/from16 v0, p0

    #@110
    iget-object v0, v0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$GroupCreatedState;->this$1:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    #@112
    move-object/from16 v20, v0

    #@114
    invoke-static/range {v20 .. v20}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->-get1(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;)Landroid/net/wifi/p2p/WifiP2pGroup;

    #@117
    move-result-object v20

    #@118
    invoke-virtual/range {v20 .. v20}, Landroid/net/wifi/p2p/WifiP2pGroup;->getInterface()Ljava/lang/String;

    #@11b
    move-result-object v20

    #@11c
    invoke-virtual/range {v19 .. v20}, Lcom/android/server/wifi/WifiNative;->p2pGroupRemove(Ljava/lang/String;)Z

    #@11f
    .line 1901
    :cond_3
    :goto_3
    move-object/from16 v0, p0

    #@121
    iget-object v0, v0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$GroupCreatedState;->this$1:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    #@123
    move-object/from16 v19, v0

    #@125
    invoke-static/range {v19 .. v19}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->-wrap30(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;)V

    #@128
    goto/16 :goto_2

    #@12a
    .line 1893
    :cond_4
    move-object/from16 v0, p0

    #@12c
    iget-object v0, v0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$GroupCreatedState;->this$1:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    #@12e
    move-object/from16 v19, v0

    #@130
    invoke-static/range {v19 .. v19}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->-wrap26(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;)V

    #@133
    goto :goto_3

    #@134
    .line 1897
    :cond_5
    move-object/from16 v0, p0

    #@136
    iget-object v0, v0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$GroupCreatedState;->this$1:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    #@138
    move-object/from16 v19, v0

    #@13a
    invoke-static/range {v19 .. v19}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->-get1(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;)Landroid/net/wifi/p2p/WifiP2pGroup;

    #@13d
    move-result-object v19

    #@13e
    invoke-virtual/range {v19 .. v19}, Landroid/net/wifi/p2p/WifiP2pGroup;->getClientList()Ljava/util/Collection;

    #@141
    move-result-object v19

    #@142
    invoke-interface/range {v19 .. v19}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@145
    move-result-object v5

    #@146
    .local v5, "c$iterator":Ljava/util/Iterator;
    :goto_4
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    #@149
    move-result v19

    #@14a
    if-eqz v19, :cond_3

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
    .line 1904
    .end local v4    # "c":Landroid/net/wifi/p2p/WifiP2pDevice;
    .end local v5    # "c$iterator":Ljava/util/Iterator;
    :cond_6
    move-object/from16 v0, p0

    #@155
    iget-object v0, v0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$GroupCreatedState;->this$1:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    #@157
    move-object/from16 v19, v0

    #@159
    new-instance v20, Ljava/lang/StringBuilder;

    #@15b
    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    #@15e
    const-string/jumbo v21, "Disconnect on unknown device: "

    #@161
    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@164
    move-result-object v20

    #@165
    move-object/from16 v0, v20

    #@167
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@16a
    move-result-object v20

    #@16b
    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@16e
    move-result-object v20

    #@16f
    invoke-virtual/range {v19 .. v20}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->loge(Ljava/lang/String;)V

    #@172
    goto/16 :goto_2

    #@174
    .line 1908
    .end local v7    # "device":Landroid/net/wifi/p2p/WifiP2pDevice;
    .end local v8    # "deviceAddress":Ljava/lang/String;
    :sswitch_2
    move-object/from16 v0, p1

    #@176
    iget-object v9, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@178
    check-cast v9, Landroid/net/DhcpResults;

    #@17a
    .line 1909
    .local v9, "dhcpResults":Landroid/net/DhcpResults;
    move-object/from16 v0, p1

    #@17c
    iget v0, v0, Landroid/os/Message;->arg1:I

    #@17e
    move/from16 v19, v0

    #@180
    const/16 v20, 0x1

    #@182
    move/from16 v0, v19

    #@184
    move/from16 v1, v20

    #@186
    if-ne v0, v1, :cond_7

    #@188
    .line 1910
    if-eqz v9, :cond_7

    #@18a
    .line 1912
    move-object/from16 v0, p0

    #@18c
    iget-object v0, v0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$GroupCreatedState;->this$1:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    #@18e
    move-object/from16 v19, v0

    #@190
    iget-object v0, v9, Landroid/net/DhcpResults;->serverAddress:Ljava/net/InetAddress;

    #@192
    move-object/from16 v20, v0

    #@194
    invoke-static/range {v19 .. v20}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->-wrap32(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;Ljava/net/InetAddress;)V

    #@197
    .line 1913
    move-object/from16 v0, p0

    #@199
    iget-object v0, v0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$GroupCreatedState;->this$1:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    #@19b
    move-object/from16 v19, v0

    #@19d
    invoke-static/range {v19 .. v19}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->-wrap26(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;)V

    #@1a0
    .line 1915
    move-object/from16 v0, p0

    #@1a2
    iget-object v0, v0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$GroupCreatedState;->this$1:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    #@1a4
    move-object/from16 v19, v0

    #@1a6
    invoke-static/range {v19 .. v19}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->-get19(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;)Lcom/android/server/wifi/WifiNative;

    #@1a9
    move-result-object v19

    #@1aa
    move-object/from16 v0, p0

    #@1ac
    iget-object v0, v0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$GroupCreatedState;->this$1:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    #@1ae
    move-object/from16 v20, v0

    #@1b0
    invoke-static/range {v20 .. v20}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->-get1(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;)Landroid/net/wifi/p2p/WifiP2pGroup;

    #@1b3
    move-result-object v20

    #@1b4
    invoke-virtual/range {v20 .. v20}, Landroid/net/wifi/p2p/WifiP2pGroup;->getInterface()Ljava/lang/String;

    #@1b7
    move-result-object v20

    #@1b8
    const/16 v21, 0x1

    #@1ba
    invoke-virtual/range {v19 .. v21}, Lcom/android/server/wifi/WifiNative;->setP2pPowerSave(Ljava/lang/String;Z)Z

    #@1bd
    .line 1917
    :try_start_0
    move-object/from16 v0, p0

    #@1bf
    iget-object v0, v0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$GroupCreatedState;->this$1:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    #@1c1
    move-object/from16 v19, v0

    #@1c3
    invoke-static/range {v19 .. v19}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->-get1(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;)Landroid/net/wifi/p2p/WifiP2pGroup;

    #@1c6
    move-result-object v19

    #@1c7
    invoke-virtual/range {v19 .. v19}, Landroid/net/wifi/p2p/WifiP2pGroup;->getInterface()Ljava/lang/String;

    #@1ca
    move-result-object v11

    #@1cb
    .line 1918
    .local v11, "iface":Ljava/lang/String;
    move-object/from16 v0, p0

    #@1cd
    iget-object v0, v0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$GroupCreatedState;->this$1:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    #@1cf
    move-object/from16 v19, v0

    #@1d1
    move-object/from16 v0, v19

    #@1d3
    iget-object v0, v0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->this$0:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;

    #@1d5
    move-object/from16 v19, v0

    #@1d7
    move-object/from16 v0, v19

    #@1d9
    iget-object v0, v0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mNwService:Landroid/os/INetworkManagementService;

    #@1db
    move-object/from16 v19, v0

    #@1dd
    .line 1919
    invoke-virtual {v9, v11}, Landroid/net/DhcpResults;->getRoutes(Ljava/lang/String;)Ljava/util/List;

    #@1e0
    move-result-object v20

    #@1e1
    .line 1918
    move-object/from16 v0, v19

    #@1e3
    move-object/from16 v1, v20

    #@1e5
    invoke-interface {v0, v11, v1}, Landroid/os/INetworkManagementService;->addInterfaceToLocalNetwork(Ljava/lang/String;Ljava/util/List;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@1e8
    goto/16 :goto_2

    #@1ea
    .line 1920
    .end local v11    # "iface":Ljava/lang/String;
    :catch_0
    move-exception v10

    #@1eb
    .line 1921
    .local v10, "e":Landroid/os/RemoteException;
    move-object/from16 v0, p0

    #@1ed
    iget-object v0, v0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$GroupCreatedState;->this$1:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    #@1ef
    move-object/from16 v19, v0

    #@1f1
    new-instance v20, Ljava/lang/StringBuilder;

    #@1f3
    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    #@1f6
    const-string/jumbo v21, "Failed to add iface to local network "

    #@1f9
    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1fc
    move-result-object v20

    #@1fd
    move-object/from16 v0, v20

    #@1ff
    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@202
    move-result-object v20

    #@203
    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@206
    move-result-object v20

    #@207
    invoke-virtual/range {v19 .. v20}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->loge(Ljava/lang/String;)V

    #@20a
    goto/16 :goto_2

    #@20c
    .line 1924
    .end local v10    # "e":Landroid/os/RemoteException;
    :cond_7
    move-object/from16 v0, p0

    #@20e
    iget-object v0, v0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$GroupCreatedState;->this$1:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    #@210
    move-object/from16 v19, v0

    #@212
    const-string/jumbo v20, "DHCP failed"

    #@215
    invoke-virtual/range {v19 .. v20}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->loge(Ljava/lang/String;)V

    #@218
    .line 1925
    move-object/from16 v0, p0

    #@21a
    iget-object v0, v0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$GroupCreatedState;->this$1:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    #@21c
    move-object/from16 v19, v0

    #@21e
    invoke-static/range {v19 .. v19}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->-get19(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;)Lcom/android/server/wifi/WifiNative;

    #@221
    move-result-object v19

    #@222
    move-object/from16 v0, p0

    #@224
    iget-object v0, v0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$GroupCreatedState;->this$1:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    #@226
    move-object/from16 v20, v0

    #@228
    invoke-static/range {v20 .. v20}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->-get1(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;)Landroid/net/wifi/p2p/WifiP2pGroup;

    #@22b
    move-result-object v20

    #@22c
    invoke-virtual/range {v20 .. v20}, Landroid/net/wifi/p2p/WifiP2pGroup;->getInterface()Ljava/lang/String;

    #@22f
    move-result-object v20

    #@230
    invoke-virtual/range {v19 .. v20}, Lcom/android/server/wifi/WifiNative;->p2pGroupRemove(Ljava/lang/String;)Z

    #@233
    goto/16 :goto_2

    #@235
    .line 1930
    .end local v9    # "dhcpResults":Landroid/net/DhcpResults;
    :sswitch_3
    move-object/from16 v0, p0

    #@237
    iget-object v0, v0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$GroupCreatedState;->this$1:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    #@239
    move-object/from16 v19, v0

    #@23b
    invoke-static/range {v19 .. v19}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->-get19(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;)Lcom/android/server/wifi/WifiNative;

    #@23e
    move-result-object v19

    #@23f
    move-object/from16 v0, p0

    #@241
    iget-object v0, v0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$GroupCreatedState;->this$1:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    #@243
    move-object/from16 v20, v0

    #@245
    invoke-static/range {v20 .. v20}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->-get1(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;)Landroid/net/wifi/p2p/WifiP2pGroup;

    #@248
    move-result-object v20

    #@249
    invoke-virtual/range {v20 .. v20}, Landroid/net/wifi/p2p/WifiP2pGroup;->getInterface()Ljava/lang/String;

    #@24c
    move-result-object v20

    #@24d
    invoke-virtual/range {v19 .. v20}, Lcom/android/server/wifi/WifiNative;->p2pGroupRemove(Ljava/lang/String;)Z

    #@250
    move-result v19

    #@251
    if-eqz v19, :cond_8

    #@253
    .line 1931
    move-object/from16 v0, p0

    #@255
    iget-object v0, v0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$GroupCreatedState;->this$1:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    #@257
    move-object/from16 v19, v0

    #@259
    move-object/from16 v0, p0

    #@25b
    iget-object v0, v0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$GroupCreatedState;->this$1:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    #@25d
    move-object/from16 v20, v0

    #@25f
    invoke-static/range {v20 .. v20}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->-get7(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;)Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$OngoingGroupRemovalState;

    #@262
    move-result-object v20

    #@263
    invoke-static/range {v19 .. v20}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->-wrap34(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;Lcom/android/internal/util/IState;)V

    #@266
    .line 1932
    move-object/from16 v0, p0

    #@268
    iget-object v0, v0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$GroupCreatedState;->this$1:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    #@26a
    move-object/from16 v19, v0

    #@26c
    const v20, 0x22012

    #@26f
    move-object/from16 v0, v19

    #@271
    move-object/from16 v1, p1

    #@273
    move/from16 v2, v20

    #@275
    invoke-static {v0, v1, v2}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->-wrap22(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;Landroid/os/Message;I)V

    #@278
    goto/16 :goto_2

    #@27a
    .line 1934
    :cond_8
    move-object/from16 v0, p0

    #@27c
    iget-object v0, v0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$GroupCreatedState;->this$1:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    #@27e
    move-object/from16 v19, v0

    #@280
    invoke-static/range {v19 .. v19}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->-wrap14(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;)V

    #@283
    .line 1935
    move-object/from16 v0, p0

    #@285
    iget-object v0, v0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$GroupCreatedState;->this$1:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    #@287
    move-object/from16 v19, v0

    #@289
    move-object/from16 v0, p0

    #@28b
    iget-object v0, v0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$GroupCreatedState;->this$1:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    #@28d
    move-object/from16 v20, v0

    #@28f
    invoke-static/range {v20 .. v20}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->-get6(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;)Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$InactiveState;

    #@292
    move-result-object v20

    #@293
    invoke-static/range {v19 .. v20}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->-wrap34(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;Lcom/android/internal/util/IState;)V

    #@296
    .line 1936
    move-object/from16 v0, p0

    #@298
    iget-object v0, v0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$GroupCreatedState;->this$1:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    #@29a
    move-object/from16 v19, v0

    #@29c
    const v20, 0x22011

    #@29f
    .line 1937
    const/16 v21, 0x0

    #@2a1
    .line 1936
    move-object/from16 v0, v19

    #@2a3
    move-object/from16 v1, p1

    #@2a5
    move/from16 v2, v20

    #@2a7
    move/from16 v3, v21

    #@2a9
    invoke-static {v0, v1, v2, v3}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->-wrap23(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;Landroid/os/Message;II)V

    #@2ac
    goto/16 :goto_2

    #@2ae
    .line 1953
    :sswitch_4
    move-object/from16 v0, p0

    #@2b0
    iget-object v0, v0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$GroupCreatedState;->this$1:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    #@2b2
    move-object/from16 v19, v0

    #@2b4
    invoke-static/range {v19 .. v19}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->-wrap14(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;)V

    #@2b7
    .line 1954
    move-object/from16 v0, p0

    #@2b9
    iget-object v0, v0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$GroupCreatedState;->this$1:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    #@2bb
    move-object/from16 v19, v0

    #@2bd
    move-object/from16 v0, p0

    #@2bf
    iget-object v0, v0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$GroupCreatedState;->this$1:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    #@2c1
    move-object/from16 v20, v0

    #@2c3
    invoke-static/range {v20 .. v20}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->-get6(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;)Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$InactiveState;

    #@2c6
    move-result-object v20

    #@2c7
    invoke-static/range {v19 .. v20}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->-wrap34(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;Lcom/android/internal/util/IState;)V

    #@2ca
    goto/16 :goto_2

    #@2cc
    .line 1957
    :sswitch_5
    move-object/from16 v0, p1

    #@2ce
    iget-object v7, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@2d0
    check-cast v7, Landroid/net/wifi/p2p/WifiP2pDevice;

    #@2d2
    .line 1959
    .restart local v7    # "device":Landroid/net/wifi/p2p/WifiP2pDevice;
    move-object/from16 v0, p0

    #@2d4
    iget-object v0, v0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$GroupCreatedState;->this$1:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    #@2d6
    move-object/from16 v19, v0

    #@2d8
    invoke-static/range {v19 .. v19}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->-get1(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;)Landroid/net/wifi/p2p/WifiP2pGroup;

    #@2db
    move-result-object v19

    #@2dc
    move-object/from16 v0, v19

    #@2de
    invoke-virtual {v0, v7}, Landroid/net/wifi/p2p/WifiP2pGroup;->contains(Landroid/net/wifi/p2p/WifiP2pDevice;)Z

    #@2e1
    move-result v19

    #@2e2
    if-eqz v19, :cond_9

    #@2e4
    .line 1961
    move-object/from16 v0, p0

    #@2e6
    iget-object v0, v0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$GroupCreatedState;->this$1:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    #@2e8
    move-object/from16 v19, v0

    #@2ea
    invoke-static/range {v19 .. v19}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->-get12(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;)Landroid/net/wifi/p2p/WifiP2pDeviceList;

    #@2ed
    move-result-object v19

    #@2ee
    move-object/from16 v0, v19

    #@2f0
    invoke-virtual {v0, v7}, Landroid/net/wifi/p2p/WifiP2pDeviceList;->updateSupplicantDetails(Landroid/net/wifi/p2p/WifiP2pDevice;)V

    #@2f3
    .line 1962
    const/16 v19, 0x1

    #@2f5
    return v19

    #@2f6
    .line 1965
    :cond_9
    const/16 v19, 0x0

    #@2f8
    return v19

    #@2f9
    .line 1967
    .end local v7    # "device":Landroid/net/wifi/p2p/WifiP2pDevice;
    :sswitch_6
    move-object/from16 v0, p0

    #@2fb
    iget-object v0, v0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$GroupCreatedState;->this$1:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    #@2fd
    move-object/from16 v19, v0

    #@2ff
    const v20, 0x22010

    #@302
    invoke-virtual/range {v19 .. v20}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->sendMessage(I)V

    #@305
    .line 1968
    move-object/from16 v0, p0

    #@307
    iget-object v0, v0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$GroupCreatedState;->this$1:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    #@309
    move-object/from16 v19, v0

    #@30b
    move-object/from16 v0, v19

    #@30d
    move-object/from16 v1, p1

    #@30f
    invoke-static {v0, v1}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->-wrap12(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;Landroid/os/Message;)V

    #@312
    goto/16 :goto_2

    #@314
    .line 1973
    :sswitch_7
    move-object/from16 v0, p1

    #@316
    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@318
    move-object/from16 v18, v0

    #@31a
    check-cast v18, Landroid/net/wifi/WpsInfo;

    #@31c
    .line 1974
    .local v18, "wps":Landroid/net/wifi/WpsInfo;
    if-nez v18, :cond_a

    #@31e
    .line 1975
    move-object/from16 v0, p0

    #@320
    iget-object v0, v0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$GroupCreatedState;->this$1:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    #@322
    move-object/from16 v19, v0

    #@324
    const v20, 0x2203f

    #@327
    move-object/from16 v0, v19

    #@329
    move-object/from16 v1, p1

    #@32b
    move/from16 v2, v20

    #@32d
    invoke-static {v0, v1, v2}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->-wrap22(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;Landroid/os/Message;I)V

    #@330
    goto/16 :goto_2

    #@332
    .line 1978
    :cond_a
    const/16 v16, 0x1

    #@334
    .line 1979
    .local v16, "ret":Z
    move-object/from16 v0, v18

    #@336
    iget v0, v0, Landroid/net/wifi/WpsInfo;->setup:I

    #@338
    move/from16 v19, v0

    #@33a
    if-nez v19, :cond_b

    #@33c
    .line 1980
    move-object/from16 v0, p0

    #@33e
    iget-object v0, v0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$GroupCreatedState;->this$1:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    #@340
    move-object/from16 v19, v0

    #@342
    invoke-static/range {v19 .. v19}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->-get19(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;)Lcom/android/server/wifi/WifiNative;

    #@345
    move-result-object v19

    #@346
    move-object/from16 v0, p0

    #@348
    iget-object v0, v0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$GroupCreatedState;->this$1:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    #@34a
    move-object/from16 v20, v0

    #@34c
    invoke-static/range {v20 .. v20}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->-get1(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;)Landroid/net/wifi/p2p/WifiP2pGroup;

    #@34f
    move-result-object v20

    #@350
    invoke-virtual/range {v20 .. v20}, Landroid/net/wifi/p2p/WifiP2pGroup;->getInterface()Ljava/lang/String;

    #@353
    move-result-object v20

    #@354
    const/16 v21, 0x0

    #@356
    invoke-virtual/range {v19 .. v21}, Lcom/android/server/wifi/WifiNative;->startWpsPbc(Ljava/lang/String;Ljava/lang/String;)Z

    #@359
    move-result v16

    #@35a
    .line 1995
    .end local v16    # "ret":Z
    :goto_5
    move-object/from16 v0, p0

    #@35c
    iget-object v0, v0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$GroupCreatedState;->this$1:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    #@35e
    move-object/from16 v20, v0

    #@360
    if-eqz v16, :cond_d

    #@362
    const v19, 0x22040

    #@365
    :goto_6
    move-object/from16 v0, v20

    #@367
    move-object/from16 v1, p1

    #@369
    move/from16 v2, v19

    #@36b
    invoke-static {v0, v1, v2}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->-wrap22(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;Landroid/os/Message;I)V

    #@36e
    goto/16 :goto_2

    #@370
    .line 1982
    .restart local v16    # "ret":Z
    :cond_b
    move-object/from16 v0, v18

    #@372
    iget-object v0, v0, Landroid/net/wifi/WpsInfo;->pin:Ljava/lang/String;

    #@374
    move-object/from16 v19, v0

    #@376
    if-nez v19, :cond_c

    #@378
    .line 1983
    move-object/from16 v0, p0

    #@37a
    iget-object v0, v0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$GroupCreatedState;->this$1:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    #@37c
    move-object/from16 v19, v0

    #@37e
    invoke-static/range {v19 .. v19}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->-get19(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;)Lcom/android/server/wifi/WifiNative;

    #@381
    move-result-object v19

    #@382
    move-object/from16 v0, p0

    #@384
    iget-object v0, v0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$GroupCreatedState;->this$1:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    #@386
    move-object/from16 v20, v0

    #@388
    invoke-static/range {v20 .. v20}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->-get1(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;)Landroid/net/wifi/p2p/WifiP2pGroup;

    #@38b
    move-result-object v20

    #@38c
    invoke-virtual/range {v20 .. v20}, Landroid/net/wifi/p2p/WifiP2pGroup;->getInterface()Ljava/lang/String;

    #@38f
    move-result-object v20

    #@390
    invoke-virtual/range {v19 .. v20}, Lcom/android/server/wifi/WifiNative;->startWpsPinDisplay(Ljava/lang/String;)Ljava/lang/String;

    #@393
    move-result-object v14

    #@394
    .line 1985
    .local v14, "pin":Ljava/lang/String;
    :try_start_1
    invoke-static {v14}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    #@397
    .line 1986
    move-object/from16 v0, p0

    #@399
    iget-object v0, v0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$GroupCreatedState;->this$1:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    #@39b
    move-object/from16 v19, v0

    #@39d
    const-string/jumbo v20, "any"

    #@3a0
    move-object/from16 v0, v19

    #@3a2
    move-object/from16 v1, v20

    #@3a4
    invoke-static {v0, v14, v1}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->-wrap18(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    #@3a7
    goto :goto_5

    #@3a8
    .line 1987
    :catch_1
    move-exception v12

    #@3a9
    .line 1988
    .local v12, "ignore":Ljava/lang/NumberFormatException;
    const/16 v16, 0x0

    #@3ab
    goto :goto_5

    #@3ac
    .line 1991
    .end local v12    # "ignore":Ljava/lang/NumberFormatException;
    .end local v14    # "pin":Ljava/lang/String;
    :cond_c
    move-object/from16 v0, p0

    #@3ae
    iget-object v0, v0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$GroupCreatedState;->this$1:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    #@3b0
    move-object/from16 v19, v0

    #@3b2
    invoke-static/range {v19 .. v19}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->-get19(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;)Lcom/android/server/wifi/WifiNative;

    #@3b5
    move-result-object v19

    #@3b6
    move-object/from16 v0, p0

    #@3b8
    iget-object v0, v0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$GroupCreatedState;->this$1:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    #@3ba
    move-object/from16 v20, v0

    #@3bc
    invoke-static/range {v20 .. v20}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->-get1(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;)Landroid/net/wifi/p2p/WifiP2pGroup;

    #@3bf
    move-result-object v20

    #@3c0
    invoke-virtual/range {v20 .. v20}, Landroid/net/wifi/p2p/WifiP2pGroup;->getInterface()Ljava/lang/String;

    #@3c3
    move-result-object v20

    #@3c4
    .line 1992
    move-object/from16 v0, v18

    #@3c6
    iget-object v0, v0, Landroid/net/wifi/WpsInfo;->pin:Ljava/lang/String;

    #@3c8
    move-object/from16 v21, v0

    #@3ca
    .line 1991
    invoke-virtual/range {v19 .. v21}, Lcom/android/server/wifi/WifiNative;->startWpsPinKeypad(Ljava/lang/String;Ljava/lang/String;)Z

    #@3cd
    move-result v16

    #@3ce
    .local v16, "ret":Z
    goto :goto_5

    #@3cf
    .line 1996
    .end local v16    # "ret":Z
    :cond_d
    const v19, 0x2203f

    #@3d2
    goto :goto_6

    #@3d3
    .line 1999
    .end local v18    # "wps":Landroid/net/wifi/WpsInfo;
    :sswitch_8
    move-object/from16 v0, p1

    #@3d5
    iget-object v6, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@3d7
    check-cast v6, Landroid/net/wifi/p2p/WifiP2pConfig;

    #@3d9
    .line 2000
    .local v6, "config":Landroid/net/wifi/p2p/WifiP2pConfig;
    move-object/from16 v0, p0

    #@3db
    iget-object v0, v0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$GroupCreatedState;->this$1:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    #@3dd
    move-object/from16 v19, v0

    #@3df
    move-object/from16 v0, v19

    #@3e1
    invoke-static {v0, v6}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->-wrap2(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;Landroid/net/wifi/p2p/WifiP2pConfig;)Z

    #@3e4
    move-result v19

    #@3e5
    if-eqz v19, :cond_e

    #@3e7
    .line 2001
    move-object/from16 v0, p0

    #@3e9
    iget-object v0, v0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$GroupCreatedState;->this$1:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    #@3eb
    move-object/from16 v19, v0

    #@3ed
    new-instance v20, Ljava/lang/StringBuilder;

    #@3ef
    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    #@3f2
    const-string/jumbo v21, "Dropping connect requeset "

    #@3f5
    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3f8
    move-result-object v20

    #@3f9
    move-object/from16 v0, v20

    #@3fb
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@3fe
    move-result-object v20

    #@3ff
    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@402
    move-result-object v20

    #@403
    invoke-virtual/range {v19 .. v20}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->loge(Ljava/lang/String;)V

    #@406
    .line 2002
    move-object/from16 v0, p0

    #@408
    iget-object v0, v0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$GroupCreatedState;->this$1:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    #@40a
    move-object/from16 v19, v0

    #@40c
    const v20, 0x22008

    #@40f
    move-object/from16 v0, v19

    #@411
    move-object/from16 v1, p1

    #@413
    move/from16 v2, v20

    #@415
    invoke-static {v0, v1, v2}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->-wrap22(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;Landroid/os/Message;I)V

    #@418
    goto/16 :goto_2

    #@41a
    .line 2005
    :cond_e
    move-object/from16 v0, p0

    #@41c
    iget-object v0, v0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$GroupCreatedState;->this$1:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    #@41e
    move-object/from16 v19, v0

    #@420
    new-instance v20, Ljava/lang/StringBuilder;

    #@422
    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    #@425
    const-string/jumbo v21, "Inviting device : "

    #@428
    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@42b
    move-result-object v20

    #@42c
    iget-object v0, v6, Landroid/net/wifi/p2p/WifiP2pConfig;->deviceAddress:Ljava/lang/String;

    #@42e
    move-object/from16 v21, v0

    #@430
    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@433
    move-result-object v20

    #@434
    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@437
    move-result-object v20

    #@438
    invoke-virtual/range {v19 .. v20}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->logd(Ljava/lang/String;)V

    #@43b
    .line 2006
    move-object/from16 v0, p0

    #@43d
    iget-object v0, v0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$GroupCreatedState;->this$1:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    #@43f
    move-object/from16 v19, v0

    #@441
    move-object/from16 v0, v19

    #@443
    invoke-static {v0, v6}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->-set1(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;Landroid/net/wifi/p2p/WifiP2pConfig;)Landroid/net/wifi/p2p/WifiP2pConfig;

    #@446
    .line 2007
    move-object/from16 v0, p0

    #@448
    iget-object v0, v0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$GroupCreatedState;->this$1:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    #@44a
    move-object/from16 v19, v0

    #@44c
    invoke-static/range {v19 .. v19}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->-get19(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;)Lcom/android/server/wifi/WifiNative;

    #@44f
    move-result-object v19

    #@450
    move-object/from16 v0, p0

    #@452
    iget-object v0, v0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$GroupCreatedState;->this$1:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    #@454
    move-object/from16 v20, v0

    #@456
    invoke-static/range {v20 .. v20}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->-get1(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;)Landroid/net/wifi/p2p/WifiP2pGroup;

    #@459
    move-result-object v20

    #@45a
    iget-object v0, v6, Landroid/net/wifi/p2p/WifiP2pConfig;->deviceAddress:Ljava/lang/String;

    #@45c
    move-object/from16 v21, v0

    #@45e
    invoke-virtual/range {v19 .. v21}, Lcom/android/server/wifi/WifiNative;->p2pInvite(Landroid/net/wifi/p2p/WifiP2pGroup;Ljava/lang/String;)Z

    #@461
    move-result v19

    #@462
    if-eqz v19, :cond_f

    #@464
    .line 2008
    move-object/from16 v0, p0

    #@466
    iget-object v0, v0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$GroupCreatedState;->this$1:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    #@468
    move-object/from16 v19, v0

    #@46a
    invoke-static/range {v19 .. v19}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->-get11(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;)Landroid/net/wifi/p2p/WifiP2pDeviceList;

    #@46d
    move-result-object v19

    #@46e
    iget-object v0, v6, Landroid/net/wifi/p2p/WifiP2pConfig;->deviceAddress:Ljava/lang/String;

    #@470
    move-object/from16 v20, v0

    #@472
    const/16 v21, 0x1

    #@474
    invoke-virtual/range {v19 .. v21}, Landroid/net/wifi/p2p/WifiP2pDeviceList;->updateStatus(Ljava/lang/String;I)V

    #@477
    .line 2009
    move-object/from16 v0, p0

    #@479
    iget-object v0, v0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$GroupCreatedState;->this$1:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    #@47b
    move-object/from16 v19, v0

    #@47d
    invoke-static/range {v19 .. v19}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->-wrap30(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;)V

    #@480
    .line 2010
    move-object/from16 v0, p0

    #@482
    iget-object v0, v0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$GroupCreatedState;->this$1:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    #@484
    move-object/from16 v19, v0

    #@486
    const v20, 0x22009

    #@489
    move-object/from16 v0, v19

    #@48b
    move-object/from16 v1, p1

    #@48d
    move/from16 v2, v20

    #@48f
    invoke-static {v0, v1, v2}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->-wrap22(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;Landroid/os/Message;I)V

    #@492
    goto/16 :goto_2

    #@494
    .line 2012
    :cond_f
    move-object/from16 v0, p0

    #@496
    iget-object v0, v0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$GroupCreatedState;->this$1:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    #@498
    move-object/from16 v19, v0

    #@49a
    const v20, 0x22008

    #@49d
    .line 2013
    const/16 v21, 0x0

    #@49f
    .line 2012
    move-object/from16 v0, v19

    #@4a1
    move-object/from16 v1, p1

    #@4a3
    move/from16 v2, v20

    #@4a5
    move/from16 v3, v21

    #@4a7
    invoke-static {v0, v1, v2, v3}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->-wrap23(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;Landroid/os/Message;II)V

    #@4aa
    goto/16 :goto_2

    #@4ac
    .line 2018
    .end local v6    # "config":Landroid/net/wifi/p2p/WifiP2pConfig;
    :sswitch_9
    move-object/from16 v0, p1

    #@4ae
    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@4b0
    move-object/from16 v17, v0

    #@4b2
    check-cast v17, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStatus;

    #@4b4
    .line 2019
    .local v17, "status":Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStatus;
    sget-object v19, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStatus;->SUCCESS:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStatus;

    #@4b6
    move-object/from16 v0, v17

    #@4b8
    move-object/from16 v1, v19

    #@4ba
    if-eq v0, v1, :cond_0

    #@4bc
    .line 2023
    move-object/from16 v0, p0

    #@4be
    iget-object v0, v0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$GroupCreatedState;->this$1:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    #@4c0
    move-object/from16 v19, v0

    #@4c2
    new-instance v20, Ljava/lang/StringBuilder;

    #@4c4
    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    #@4c7
    const-string/jumbo v21, "Invitation result "

    #@4ca
    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4cd
    move-result-object v20

    #@4ce
    move-object/from16 v0, v20

    #@4d0
    move-object/from16 v1, v17

    #@4d2
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@4d5
    move-result-object v20

    #@4d6
    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@4d9
    move-result-object v20

    #@4da
    invoke-virtual/range {v19 .. v20}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->loge(Ljava/lang/String;)V

    #@4dd
    .line 2024
    sget-object v19, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStatus;->UNKNOWN_P2P_GROUP:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStatus;

    #@4df
    move-object/from16 v0, v17

    #@4e1
    move-object/from16 v1, v19

    #@4e3
    if-ne v0, v1, :cond_0

    #@4e5
    .line 2027
    move-object/from16 v0, p0

    #@4e7
    iget-object v0, v0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$GroupCreatedState;->this$1:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    #@4e9
    move-object/from16 v19, v0

    #@4eb
    invoke-static/range {v19 .. v19}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->-get1(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;)Landroid/net/wifi/p2p/WifiP2pGroup;

    #@4ee
    move-result-object v19

    #@4ef
    invoke-virtual/range {v19 .. v19}, Landroid/net/wifi/p2p/WifiP2pGroup;->getNetworkId()I

    #@4f2
    move-result v13

    #@4f3
    .line 2028
    .local v13, "netId":I
    if-ltz v13, :cond_0

    #@4f5
    .line 2030
    move-object/from16 v0, p0

    #@4f7
    iget-object v0, v0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$GroupCreatedState;->this$1:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    #@4f9
    move-object/from16 v19, v0

    #@4fb
    .line 2031
    move-object/from16 v0, p0

    #@4fd
    iget-object v0, v0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$GroupCreatedState;->this$1:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    #@4ff
    move-object/from16 v20, v0

    #@501
    invoke-static/range {v20 .. v20}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->-get14(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;)Landroid/net/wifi/p2p/WifiP2pConfig;

    #@504
    move-result-object v20

    #@505
    move-object/from16 v0, v20

    #@507
    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pConfig;->deviceAddress:Ljava/lang/String;

    #@509
    move-object/from16 v20, v0

    #@50b
    const/16 v21, 0x0

    #@50d
    .line 2030
    move-object/from16 v0, v19

    #@50f
    move-object/from16 v1, v20

    #@511
    move/from16 v2, v21

    #@513
    invoke-static {v0, v13, v1, v2}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->-wrap4(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;ILjava/lang/String;Z)Z

    #@516
    move-result v19

    #@517
    if-nez v19, :cond_10

    #@519
    .line 2033
    move-object/from16 v0, p0

    #@51b
    iget-object v0, v0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$GroupCreatedState;->this$1:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    #@51d
    move-object/from16 v19, v0

    #@51f
    const-string/jumbo v20, "Already removed the client, ignore"

    #@522
    invoke-virtual/range {v19 .. v20}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->loge(Ljava/lang/String;)V

    #@525
    goto/16 :goto_2

    #@527
    .line 2037
    :cond_10
    move-object/from16 v0, p0

    #@529
    iget-object v0, v0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$GroupCreatedState;->this$1:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    #@52b
    move-object/from16 v19, v0

    #@52d
    move-object/from16 v0, p0

    #@52f
    iget-object v0, v0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$GroupCreatedState;->this$1:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    #@531
    move-object/from16 v20, v0

    #@533
    invoke-static/range {v20 .. v20}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->-get14(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;)Landroid/net/wifi/p2p/WifiP2pConfig;

    #@536
    move-result-object v20

    #@537
    const v21, 0x22007

    #@53a
    move-object/from16 v0, v19

    #@53c
    move/from16 v1, v21

    #@53e
    move-object/from16 v2, v20

    #@540
    invoke-virtual {v0, v1, v2}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->sendMessage(ILjava/lang/Object;)V

    #@543
    goto/16 :goto_2

    #@545
    .line 2044
    .end local v13    # "netId":I
    .end local v17    # "status":Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStatus;
    :sswitch_a
    move-object/from16 v0, p1

    #@547
    iget-object v15, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@549
    check-cast v15, Landroid/net/wifi/p2p/WifiP2pProvDiscEvent;

    #@54b
    .line 2045
    .local v15, "provDisc":Landroid/net/wifi/p2p/WifiP2pProvDiscEvent;
    move-object/from16 v0, p0

    #@54d
    iget-object v0, v0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$GroupCreatedState;->this$1:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    #@54f
    move-object/from16 v19, v0

    #@551
    new-instance v20, Landroid/net/wifi/p2p/WifiP2pConfig;

    #@553
    invoke-direct/range {v20 .. v20}, Landroid/net/wifi/p2p/WifiP2pConfig;-><init>()V

    #@556
    invoke-static/range {v19 .. v20}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->-set1(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;Landroid/net/wifi/p2p/WifiP2pConfig;)Landroid/net/wifi/p2p/WifiP2pConfig;

    #@559
    .line 2046
    move-object/from16 v0, p0

    #@55b
    iget-object v0, v0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$GroupCreatedState;->this$1:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    #@55d
    move-object/from16 v19, v0

    #@55f
    invoke-static/range {v19 .. v19}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->-get14(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;)Landroid/net/wifi/p2p/WifiP2pConfig;

    #@562
    move-result-object v19

    #@563
    iget-object v0, v15, Landroid/net/wifi/p2p/WifiP2pProvDiscEvent;->device:Landroid/net/wifi/p2p/WifiP2pDevice;

    #@565
    move-object/from16 v20, v0

    #@567
    move-object/from16 v0, v20

    #@569
    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;

    #@56b
    move-object/from16 v20, v0

    #@56d
    move-object/from16 v0, v20

    #@56f
    move-object/from16 v1, v19

    #@571
    iput-object v0, v1, Landroid/net/wifi/p2p/WifiP2pConfig;->deviceAddress:Ljava/lang/String;

    #@573
    .line 2047
    move-object/from16 v0, p1

    #@575
    iget v0, v0, Landroid/os/Message;->what:I

    #@577
    move/from16 v19, v0

    #@579
    const v20, 0x24023

    #@57c
    move/from16 v0, v19

    #@57e
    move/from16 v1, v20

    #@580
    if-ne v0, v1, :cond_11

    #@582
    .line 2048
    move-object/from16 v0, p0

    #@584
    iget-object v0, v0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$GroupCreatedState;->this$1:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    #@586
    move-object/from16 v19, v0

    #@588
    invoke-static/range {v19 .. v19}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->-get14(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;)Landroid/net/wifi/p2p/WifiP2pConfig;

    #@58b
    move-result-object v19

    #@58c
    move-object/from16 v0, v19

    #@58e
    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pConfig;->wps:Landroid/net/wifi/WpsInfo;

    #@590
    move-object/from16 v19, v0

    #@592
    const/16 v20, 0x2

    #@594
    move/from16 v0, v20

    #@596
    move-object/from16 v1, v19

    #@598
    iput v0, v1, Landroid/net/wifi/WpsInfo;->setup:I

    #@59a
    .line 2055
    :goto_7
    move-object/from16 v0, p0

    #@59c
    iget-object v0, v0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$GroupCreatedState;->this$1:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    #@59e
    move-object/from16 v19, v0

    #@5a0
    move-object/from16 v0, p0

    #@5a2
    iget-object v0, v0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$GroupCreatedState;->this$1:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    #@5a4
    move-object/from16 v20, v0

    #@5a6
    invoke-static/range {v20 .. v20}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->-get16(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;)Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$UserAuthorizingJoinState;

    #@5a9
    move-result-object v20

    #@5aa
    invoke-static/range {v19 .. v20}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->-wrap34(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;Lcom/android/internal/util/IState;)V

    #@5ad
    goto/16 :goto_2

    #@5af
    .line 2049
    :cond_11
    move-object/from16 v0, p1

    #@5b1
    iget v0, v0, Landroid/os/Message;->what:I

    #@5b3
    move/from16 v19, v0

    #@5b5
    const v20, 0x24024

    #@5b8
    move/from16 v0, v19

    #@5ba
    move/from16 v1, v20

    #@5bc
    if-ne v0, v1, :cond_12

    #@5be
    .line 2050
    move-object/from16 v0, p0

    #@5c0
    iget-object v0, v0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$GroupCreatedState;->this$1:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    #@5c2
    move-object/from16 v19, v0

    #@5c4
    invoke-static/range {v19 .. v19}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->-get14(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;)Landroid/net/wifi/p2p/WifiP2pConfig;

    #@5c7
    move-result-object v19

    #@5c8
    move-object/from16 v0, v19

    #@5ca
    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pConfig;->wps:Landroid/net/wifi/WpsInfo;

    #@5cc
    move-object/from16 v19, v0

    #@5ce
    const/16 v20, 0x1

    #@5d0
    move/from16 v0, v20

    #@5d2
    move-object/from16 v1, v19

    #@5d4
    iput v0, v1, Landroid/net/wifi/WpsInfo;->setup:I

    #@5d6
    .line 2051
    move-object/from16 v0, p0

    #@5d8
    iget-object v0, v0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$GroupCreatedState;->this$1:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    #@5da
    move-object/from16 v19, v0

    #@5dc
    invoke-static/range {v19 .. v19}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->-get14(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;)Landroid/net/wifi/p2p/WifiP2pConfig;

    #@5df
    move-result-object v19

    #@5e0
    move-object/from16 v0, v19

    #@5e2
    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pConfig;->wps:Landroid/net/wifi/WpsInfo;

    #@5e4
    move-object/from16 v19, v0

    #@5e6
    iget-object v0, v15, Landroid/net/wifi/p2p/WifiP2pProvDiscEvent;->pin:Ljava/lang/String;

    #@5e8
    move-object/from16 v20, v0

    #@5ea
    move-object/from16 v0, v20

    #@5ec
    move-object/from16 v1, v19

    #@5ee
    iput-object v0, v1, Landroid/net/wifi/WpsInfo;->pin:Ljava/lang/String;

    #@5f0
    goto :goto_7

    #@5f1
    .line 2053
    :cond_12
    move-object/from16 v0, p0

    #@5f3
    iget-object v0, v0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$GroupCreatedState;->this$1:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    #@5f5
    move-object/from16 v19, v0

    #@5f7
    invoke-static/range {v19 .. v19}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->-get14(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;)Landroid/net/wifi/p2p/WifiP2pConfig;

    #@5fa
    move-result-object v19

    #@5fb
    move-object/from16 v0, v19

    #@5fd
    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pConfig;->wps:Landroid/net/wifi/WpsInfo;

    #@5ff
    move-object/from16 v19, v0

    #@601
    const/16 v20, 0x0

    #@603
    move/from16 v0, v20

    #@605
    move-object/from16 v1, v19

    #@607
    iput v0, v1, Landroid/net/wifi/WpsInfo;->setup:I

    #@609
    goto :goto_7

    #@60a
    .line 2058
    .end local v15    # "provDisc":Landroid/net/wifi/p2p/WifiP2pProvDiscEvent;
    :sswitch_b
    move-object/from16 v0, p0

    #@60c
    iget-object v0, v0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$GroupCreatedState;->this$1:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    #@60e
    move-object/from16 v19, v0

    #@610
    const-string/jumbo v20, "Duplicate group creation event notice, ignore"

    #@613
    invoke-virtual/range {v19 .. v20}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->loge(Ljava/lang/String;)V

    #@616
    goto/16 :goto_2

    #@618
    .line 1859
    :sswitch_data_0
    .sparse-switch
        0x20084 -> :sswitch_6
        0x22007 -> :sswitch_8
        0x22010 -> :sswitch_3
        0x2203e -> :sswitch_7
        0x24016 -> :sswitch_5
        0x2401d -> :sswitch_b
        0x2401e -> :sswitch_4
        0x24020 -> :sswitch_9
        0x24021 -> :sswitch_a
        0x24023 -> :sswitch_a
        0x24024 -> :sswitch_a
        0x24029 -> :sswitch_1
        0x2402a -> :sswitch_0
        0x30005 -> :sswitch_2
    .end sparse-switch
.end method
