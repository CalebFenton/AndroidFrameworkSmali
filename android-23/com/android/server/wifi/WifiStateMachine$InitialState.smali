.class Lcom/android/server/wifi/WifiStateMachine$InitialState;
.super Lcom/android/internal/util/State;
.source "WifiStateMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifi/WifiStateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "InitialState"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/wifi/WifiStateMachine;


# direct methods
.method constructor <init>(Lcom/android/server/wifi/WifiStateMachine;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/wifi/WifiStateMachine;

    #@0
    .prologue
    .line 5628
    iput-object p1, p0, Lcom/android/server/wifi/WifiStateMachine$InitialState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@2
    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    #@5
    return-void
.end method


# virtual methods
.method public enter()V
    .locals 4

    #@0
    .prologue
    .line 5631
    invoke-static {}, Lcom/android/server/wifi/WifiNative;->stopHal()V

    #@3
    .line 5632
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$InitialState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@5
    invoke-static {v0}, Lcom/android/server/wifi/WifiStateMachine;->-get105(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiNative;

    #@8
    invoke-static {}, Lcom/android/server/wifi/WifiNative;->unloadDriver()Z

    #@b
    .line 5633
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$InitialState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@d
    invoke-static {v0}, Lcom/android/server/wifi/WifiStateMachine;->-get106(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/internal/util/AsyncChannel;

    #@10
    move-result-object v0

    #@11
    if-nez v0, :cond_0

    #@13
    .line 5634
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$InitialState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@15
    new-instance v1, Lcom/android/internal/util/AsyncChannel;

    #@17
    invoke-direct {v1}, Lcom/android/internal/util/AsyncChannel;-><init>()V

    #@1a
    invoke-static {v0, v1}, Lcom/android/server/wifi/WifiStateMachine;->-set48(Lcom/android/server/wifi/WifiStateMachine;Lcom/android/internal/util/AsyncChannel;)Lcom/android/internal/util/AsyncChannel;

    #@1d
    .line 5635
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$InitialState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@1f
    invoke-static {v0}, Lcom/android/server/wifi/WifiStateMachine;->-get106(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/internal/util/AsyncChannel;

    #@22
    move-result-object v0

    #@23
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine$InitialState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@25
    invoke-static {v1}, Lcom/android/server/wifi/WifiStateMachine;->-get20(Lcom/android/server/wifi/WifiStateMachine;)Landroid/content/Context;

    #@28
    move-result-object v1

    #@29
    iget-object v2, p0, Lcom/android/server/wifi/WifiStateMachine$InitialState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@2b
    invoke-virtual {v2}, Lcom/android/server/wifi/WifiStateMachine;->getHandler()Landroid/os/Handler;

    #@2e
    move-result-object v2

    #@2f
    .line 5636
    iget-object v3, p0, Lcom/android/server/wifi/WifiStateMachine$InitialState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@31
    invoke-static {v3}, Lcom/android/server/wifi/WifiStateMachine;->-get107(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;

    #@34
    move-result-object v3

    #@35
    invoke-virtual {v3}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->getP2pStateMachineMessenger()Landroid/os/Messenger;

    #@38
    move-result-object v3

    #@39
    .line 5635
    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/util/AsyncChannel;->connect(Landroid/content/Context;Landroid/os/Handler;Landroid/os/Messenger;)V

    #@3c
    .line 5639
    :cond_0
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$InitialState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@3e
    invoke-static {v0}, Lcom/android/server/wifi/WifiStateMachine;->-get96(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/internal/util/AsyncChannel;

    #@41
    move-result-object v0

    #@42
    if-nez v0, :cond_1

    #@44
    .line 5640
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$InitialState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@46
    new-instance v1, Lcom/android/internal/util/AsyncChannel;

    #@48
    invoke-direct {v1}, Lcom/android/internal/util/AsyncChannel;-><init>()V

    #@4b
    invoke-static {v0, v1}, Lcom/android/server/wifi/WifiStateMachine;->-set46(Lcom/android/server/wifi/WifiStateMachine;Lcom/android/internal/util/AsyncChannel;)Lcom/android/internal/util/AsyncChannel;

    #@4e
    .line 5641
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$InitialState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@50
    .line 5642
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine$InitialState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@52
    invoke-static {v1}, Lcom/android/server/wifi/WifiStateMachine;->-get20(Lcom/android/server/wifi/WifiStateMachine;)Landroid/content/Context;

    #@55
    move-result-object v1

    #@56
    iget-object v2, p0, Lcom/android/server/wifi/WifiStateMachine$InitialState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@58
    invoke-virtual {v2}, Lcom/android/server/wifi/WifiStateMachine;->getHandler()Landroid/os/Handler;

    #@5b
    move-result-object v2

    #@5c
    .line 5641
    invoke-static {v1, v2}, Lcom/android/server/wifi/WifiApConfigStore;->makeWifiApConfigStore(Landroid/content/Context;Landroid/os/Handler;)Lcom/android/server/wifi/WifiApConfigStore;

    #@5f
    move-result-object v1

    #@60
    invoke-static {v0, v1}, Lcom/android/server/wifi/WifiStateMachine;->-set47(Lcom/android/server/wifi/WifiStateMachine;Lcom/android/server/wifi/WifiApConfigStore;)Lcom/android/server/wifi/WifiApConfigStore;

    #@63
    .line 5643
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$InitialState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@65
    invoke-static {v0}, Lcom/android/server/wifi/WifiStateMachine;->-get97(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiApConfigStore;

    #@68
    move-result-object v0

    #@69
    invoke-virtual {v0}, Lcom/android/server/wifi/WifiApConfigStore;->loadApConfiguration()V

    #@6c
    .line 5644
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$InitialState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@6e
    invoke-static {v0}, Lcom/android/server/wifi/WifiStateMachine;->-get96(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/internal/util/AsyncChannel;

    #@71
    move-result-object v0

    #@72
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine$InitialState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@74
    invoke-static {v1}, Lcom/android/server/wifi/WifiStateMachine;->-get20(Lcom/android/server/wifi/WifiStateMachine;)Landroid/content/Context;

    #@77
    move-result-object v1

    #@78
    iget-object v2, p0, Lcom/android/server/wifi/WifiStateMachine$InitialState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@7a
    invoke-virtual {v2}, Lcom/android/server/wifi/WifiStateMachine;->getHandler()Landroid/os/Handler;

    #@7d
    move-result-object v2

    #@7e
    .line 5645
    iget-object v3, p0, Lcom/android/server/wifi/WifiStateMachine$InitialState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@80
    invoke-static {v3}, Lcom/android/server/wifi/WifiStateMachine;->-get97(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiApConfigStore;

    #@83
    move-result-object v3

    #@84
    invoke-virtual {v3}, Lcom/android/server/wifi/WifiApConfigStore;->getMessenger()Landroid/os/Messenger;

    #@87
    move-result-object v3

    #@88
    .line 5644
    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/util/AsyncChannel;->connectSync(Landroid/content/Context;Landroid/os/Handler;Landroid/os/Messenger;)I

    #@8b
    .line 5648
    :cond_1
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$InitialState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@8d
    invoke-static {v0}, Lcom/android/server/wifi/WifiStateMachine;->-get99(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigStore;

    #@90
    move-result-object v0

    #@91
    iget-object v0, v0, Lcom/android/server/wifi/WifiConfigStore;->enableHalBasedPno:Ljava/util/concurrent/atomic/AtomicBoolean;

    #@93
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    #@96
    move-result v0

    #@97
    if-eqz v0, :cond_2

    #@99
    .line 5650
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$InitialState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@9b
    const/4 v1, 0x1

    #@9c
    invoke-static {v0, v1}, Lcom/android/server/wifi/WifiStateMachine;->-set20(Lcom/android/server/wifi/WifiStateMachine;Z)Z

    #@9f
    .line 5630
    :cond_2
    return-void
.end method

.method public processMessage(Landroid/os/Message;)Z
    .locals 7
    .param p1, "message"    # Landroid/os/Message;

    #@0
    .prologue
    const/4 v6, 0x1

    #@1
    const/4 v5, 0x0

    #@2
    .line 5655
    iget-object v3, p0, Lcom/android/server/wifi/WifiStateMachine$InitialState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@4
    invoke-virtual {p0}, Lcom/android/server/wifi/WifiStateMachine$InitialState;->getClass()Ljava/lang/Class;

    #@7
    move-result-object v4

    #@8
    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    #@b
    move-result-object v4

    #@c
    invoke-static {v3, p1, v4}, Lcom/android/server/wifi/WifiStateMachine;->-wrap33(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;Ljava/lang/String;)V

    #@f
    .line 5656
    iget v3, p1, Landroid/os/Message;->what:I

    #@11
    sparse-switch v3, :sswitch_data_0

    #@14
    .line 5727
    return v5

    #@15
    .line 5658
    :sswitch_0
    iget-object v3, p0, Lcom/android/server/wifi/WifiStateMachine$InitialState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@17
    invoke-static {v3}, Lcom/android/server/wifi/WifiStateMachine;->-get105(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiNative;

    #@1a
    invoke-static {}, Lcom/android/server/wifi/WifiNative;->loadDriver()Z

    #@1d
    move-result v3

    #@1e
    if-eqz v3, :cond_3

    #@20
    .line 5660
    :try_start_0
    iget-object v3, p0, Lcom/android/server/wifi/WifiStateMachine$InitialState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@22
    invoke-static {v3}, Lcom/android/server/wifi/WifiStateMachine;->-get58(Lcom/android/server/wifi/WifiStateMachine;)Landroid/os/INetworkManagementService;

    #@25
    move-result-object v3

    #@26
    iget-object v4, p0, Lcom/android/server/wifi/WifiStateMachine$InitialState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@28
    invoke-static {v4}, Lcom/android/server/wifi/WifiStateMachine;->-get44(Lcom/android/server/wifi/WifiStateMachine;)Ljava/lang/String;

    #@2b
    move-result-object v4

    #@2c
    const-string/jumbo v5, "STA"

    #@2f
    invoke-interface {v3, v4, v5}, Landroid/os/INetworkManagementService;->wifiFirmwareReload(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    #@32
    .line 5672
    :goto_0
    :try_start_1
    iget-object v3, p0, Lcom/android/server/wifi/WifiStateMachine$InitialState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@34
    invoke-static {v3}, Lcom/android/server/wifi/WifiStateMachine;->-get58(Lcom/android/server/wifi/WifiStateMachine;)Landroid/os/INetworkManagementService;

    #@37
    move-result-object v3

    #@38
    iget-object v4, p0, Lcom/android/server/wifi/WifiStateMachine$InitialState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@3a
    invoke-static {v4}, Lcom/android/server/wifi/WifiStateMachine;->-get44(Lcom/android/server/wifi/WifiStateMachine;)Ljava/lang/String;

    #@3d
    move-result-object v4

    #@3e
    invoke-interface {v3, v4}, Landroid/os/INetworkManagementService;->setInterfaceDown(Ljava/lang/String;)V

    #@41
    .line 5673
    iget-object v3, p0, Lcom/android/server/wifi/WifiStateMachine$InitialState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@43
    invoke-static {v3}, Lcom/android/server/wifi/WifiStateMachine;->-get58(Lcom/android/server/wifi/WifiStateMachine;)Landroid/os/INetworkManagementService;

    #@46
    move-result-object v3

    #@47
    iget-object v4, p0, Lcom/android/server/wifi/WifiStateMachine$InitialState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@49
    invoke-static {v4}, Lcom/android/server/wifi/WifiStateMachine;->-get44(Lcom/android/server/wifi/WifiStateMachine;)Ljava/lang/String;

    #@4c
    move-result-object v4

    #@4d
    invoke-interface {v3, v4}, Landroid/os/INetworkManagementService;->clearInterfaceAddresses(Ljava/lang/String;)V

    #@50
    .line 5676
    iget-object v3, p0, Lcom/android/server/wifi/WifiStateMachine$InitialState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@52
    invoke-static {v3}, Lcom/android/server/wifi/WifiStateMachine;->-get58(Lcom/android/server/wifi/WifiStateMachine;)Landroid/os/INetworkManagementService;

    #@55
    move-result-object v3

    #@56
    iget-object v4, p0, Lcom/android/server/wifi/WifiStateMachine$InitialState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@58
    invoke-static {v4}, Lcom/android/server/wifi/WifiStateMachine;->-get44(Lcom/android/server/wifi/WifiStateMachine;)Ljava/lang/String;

    #@5b
    move-result-object v4

    #@5c
    const/4 v5, 0x1

    #@5d
    invoke-interface {v3, v4, v5}, Landroid/os/INetworkManagementService;->setInterfaceIpv6PrivacyExtensions(Ljava/lang/String;Z)V

    #@60
    .line 5682
    iget-object v3, p0, Lcom/android/server/wifi/WifiStateMachine$InitialState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@62
    invoke-static {v3}, Lcom/android/server/wifi/WifiStateMachine;->-get58(Lcom/android/server/wifi/WifiStateMachine;)Landroid/os/INetworkManagementService;

    #@65
    move-result-object v3

    #@66
    iget-object v4, p0, Lcom/android/server/wifi/WifiStateMachine$InitialState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@68
    invoke-static {v4}, Lcom/android/server/wifi/WifiStateMachine;->-get44(Lcom/android/server/wifi/WifiStateMachine;)Ljava/lang/String;

    #@6b
    move-result-object v4

    #@6c
    invoke-interface {v3, v4}, Landroid/os/INetworkManagementService;->disableIpv6(Ljava/lang/String;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_1

    #@6f
    .line 5693
    :goto_1
    iget-object v3, p0, Lcom/android/server/wifi/WifiStateMachine$InitialState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@71
    invoke-static {v3}, Lcom/android/server/wifi/WifiStateMachine;->-get104(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiMonitor;

    #@74
    move-result-object v3

    #@75
    iget-object v4, p0, Lcom/android/server/wifi/WifiStateMachine$InitialState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@77
    invoke-static {v4}, Lcom/android/server/wifi/WifiStateMachine;->-get62(Lcom/android/server/wifi/WifiStateMachine;)Z

    #@7a
    move-result v4

    #@7b
    invoke-virtual {v3, v4}, Lcom/android/server/wifi/WifiMonitor;->killSupplicant(Z)V

    #@7e
    .line 5695
    invoke-static {}, Lcom/android/server/wifi/WifiNative;->startHal()Z

    #@81
    move-result v3

    #@82
    if-nez v3, :cond_0

    #@84
    .line 5697
    iget-object v3, p0, Lcom/android/server/wifi/WifiStateMachine$InitialState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@86
    const-string/jumbo v4, "Failed to start HAL"

    #@89
    invoke-virtual {v3, v4}, Lcom/android/server/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V

    #@8c
    .line 5700
    :cond_0
    iget-object v3, p0, Lcom/android/server/wifi/WifiStateMachine$InitialState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@8e
    invoke-static {v3}, Lcom/android/server/wifi/WifiStateMachine;->-get105(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiNative;

    #@91
    iget-object v3, p0, Lcom/android/server/wifi/WifiStateMachine$InitialState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@93
    invoke-static {v3}, Lcom/android/server/wifi/WifiStateMachine;->-get62(Lcom/android/server/wifi/WifiStateMachine;)Z

    #@96
    move-result v3

    #@97
    invoke-static {v3}, Lcom/android/server/wifi/WifiNative;->startSupplicant(Z)Z

    #@9a
    move-result v3

    #@9b
    if-eqz v3, :cond_2

    #@9d
    .line 5701
    iget-object v3, p0, Lcom/android/server/wifi/WifiStateMachine$InitialState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@9f
    const/4 v4, 0x2

    #@a0
    invoke-static {v3, v4}, Lcom/android/server/wifi/WifiStateMachine;->-wrap51(Lcom/android/server/wifi/WifiStateMachine;I)V

    #@a3
    .line 5702
    invoke-static {}, Lcom/android/server/wifi/WifiStateMachine;->-get0()Z

    #@a6
    move-result v3

    #@a7
    if-eqz v3, :cond_1

    #@a9
    iget-object v3, p0, Lcom/android/server/wifi/WifiStateMachine$InitialState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@ab
    const-string/jumbo v4, "Supplicant start successful"

    #@ae
    invoke-virtual {v3, v4}, Lcom/android/server/wifi/WifiStateMachine;->log(Ljava/lang/String;)V

    #@b1
    .line 5703
    :cond_1
    iget-object v3, p0, Lcom/android/server/wifi/WifiStateMachine$InitialState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@b3
    invoke-static {v3}, Lcom/android/server/wifi/WifiStateMachine;->-get104(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiMonitor;

    #@b6
    move-result-object v3

    #@b7
    invoke-virtual {v3}, Lcom/android/server/wifi/WifiMonitor;->startMonitoring()V

    #@ba
    .line 5704
    iget-object v3, p0, Lcom/android/server/wifi/WifiStateMachine$InitialState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@bc
    iget-object v4, p0, Lcom/android/server/wifi/WifiStateMachine$InitialState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@be
    invoke-static {v4}, Lcom/android/server/wifi/WifiStateMachine;->-get78(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/internal/util/State;

    #@c1
    move-result-object v4

    #@c2
    invoke-static {v3, v4}, Lcom/android/server/wifi/WifiStateMachine;->-wrap55(Lcom/android/server/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V

    #@c5
    .line 5729
    :goto_2
    return v6

    #@c6
    .line 5661
    :catch_0
    move-exception v0

    #@c7
    .line 5662
    .local v0, "e":Ljava/lang/Exception;
    iget-object v3, p0, Lcom/android/server/wifi/WifiStateMachine$InitialState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@c9
    new-instance v4, Ljava/lang/StringBuilder;

    #@cb
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@ce
    const-string/jumbo v5, "Failed to reload STA firmware "

    #@d1
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@d4
    move-result-object v4

    #@d5
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@d8
    move-result-object v4

    #@d9
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@dc
    move-result-object v4

    #@dd
    invoke-virtual {v3, v4}, Lcom/android/server/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V

    #@e0
    goto/16 :goto_0

    #@e2
    .line 5685
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v1

    #@e3
    .line 5686
    .local v1, "ie":Ljava/lang/IllegalStateException;
    iget-object v3, p0, Lcom/android/server/wifi/WifiStateMachine$InitialState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@e5
    new-instance v4, Ljava/lang/StringBuilder;

    #@e7
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@ea
    const-string/jumbo v5, "Unable to change interface settings: "

    #@ed
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@f0
    move-result-object v4

    #@f1
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@f4
    move-result-object v4

    #@f5
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@f8
    move-result-object v4

    #@f9
    invoke-virtual {v3, v4}, Lcom/android/server/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V

    #@fc
    goto/16 :goto_1

    #@fe
    .line 5683
    .end local v1    # "ie":Ljava/lang/IllegalStateException;
    :catch_2
    move-exception v2

    #@ff
    .line 5684
    .local v2, "re":Landroid/os/RemoteException;
    iget-object v3, p0, Lcom/android/server/wifi/WifiStateMachine$InitialState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@101
    new-instance v4, Ljava/lang/StringBuilder;

    #@103
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@106
    const-string/jumbo v5, "Unable to change interface settings: "

    #@109
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@10c
    move-result-object v4

    #@10d
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@110
    move-result-object v4

    #@111
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@114
    move-result-object v4

    #@115
    invoke-virtual {v3, v4}, Lcom/android/server/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V

    #@118
    goto/16 :goto_1

    #@11a
    .line 5706
    .end local v2    # "re":Landroid/os/RemoteException;
    :cond_2
    iget-object v3, p0, Lcom/android/server/wifi/WifiStateMachine$InitialState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@11c
    const-string/jumbo v4, "Failed to start supplicant!"

    #@11f
    invoke-virtual {v3, v4}, Lcom/android/server/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V

    #@122
    goto :goto_2

    #@123
    .line 5709
    :cond_3
    iget-object v3, p0, Lcom/android/server/wifi/WifiStateMachine$InitialState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@125
    const-string/jumbo v4, "Failed to load driver"

    #@128
    invoke-virtual {v3, v4}, Lcom/android/server/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V

    #@12b
    goto :goto_2

    #@12c
    .line 5713
    :sswitch_1
    iget-object v3, p0, Lcom/android/server/wifi/WifiStateMachine$InitialState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@12e
    invoke-static {v3}, Lcom/android/server/wifi/WifiStateMachine;->-get105(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiNative;

    #@131
    invoke-static {}, Lcom/android/server/wifi/WifiNative;->loadDriver()Z

    #@134
    move-result v3

    #@135
    if-nez v3, :cond_4

    #@137
    .line 5714
    iget-object v3, p0, Lcom/android/server/wifi/WifiStateMachine$InitialState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@139
    const-string/jumbo v4, "Failed to load driver for softap"

    #@13c
    invoke-virtual {v3, v4}, Lcom/android/server/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V

    #@13f
    goto :goto_2

    #@140
    .line 5716
    :cond_4
    iget-object v3, p0, Lcom/android/server/wifi/WifiStateMachine$InitialState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@142
    invoke-static {v3}, Lcom/android/server/wifi/WifiStateMachine;->-wrap5(Lcom/android/server/wifi/WifiStateMachine;)Z

    #@145
    move-result v3

    #@146
    if-eqz v3, :cond_5

    #@148
    .line 5717
    iget-object v3, p0, Lcom/android/server/wifi/WifiStateMachine$InitialState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@14a
    const/16 v4, 0xc

    #@14c
    invoke-static {v3, v4, v5}, Lcom/android/server/wifi/WifiStateMachine;->-wrap50(Lcom/android/server/wifi/WifiStateMachine;II)V

    #@14f
    .line 5718
    iget-object v3, p0, Lcom/android/server/wifi/WifiStateMachine$InitialState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@151
    iget-object v4, p0, Lcom/android/server/wifi/WifiStateMachine$InitialState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@153
    invoke-static {v4}, Lcom/android/server/wifi/WifiStateMachine;->-get75(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/internal/util/State;

    #@156
    move-result-object v4

    #@157
    invoke-static {v3, v4}, Lcom/android/server/wifi/WifiStateMachine;->-wrap55(Lcom/android/server/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V

    #@15a
    goto/16 :goto_2

    #@15c
    .line 5720
    :cond_5
    iget-object v3, p0, Lcom/android/server/wifi/WifiStateMachine$InitialState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@15e
    const/16 v4, 0xe

    #@160
    invoke-static {v3, v4, v5}, Lcom/android/server/wifi/WifiStateMachine;->-wrap50(Lcom/android/server/wifi/WifiStateMachine;II)V

    #@163
    .line 5722
    iget-object v3, p0, Lcom/android/server/wifi/WifiStateMachine$InitialState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@165
    iget-object v4, p0, Lcom/android/server/wifi/WifiStateMachine$InitialState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@167
    invoke-static {v4}, Lcom/android/server/wifi/WifiStateMachine;->-get43(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/internal/util/State;

    #@16a
    move-result-object v4

    #@16b
    invoke-static {v3, v4}, Lcom/android/server/wifi/WifiStateMachine;->-wrap55(Lcom/android/server/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V

    #@16e
    goto/16 :goto_2

    #@170
    .line 5656
    :sswitch_data_0
    .sparse-switch
        0x2000b -> :sswitch_0
        0x20015 -> :sswitch_1
    .end sparse-switch
.end method
