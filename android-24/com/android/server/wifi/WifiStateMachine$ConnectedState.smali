.class Lcom/android/server/wifi/WifiStateMachine$ConnectedState;
.super Lcom/android/internal/util/State;
.source "WifiStateMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifi/WifiStateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ConnectedState"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/wifi/WifiStateMachine;


# direct methods
.method constructor <init>(Lcom/android/server/wifi/WifiStateMachine;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/wifi/WifiStateMachine;

    #@0
    .prologue
    .line 7007
    iput-object p1, p0, Lcom/android/server/wifi/WifiStateMachine$ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@2
    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    #@5
    return-void
.end method


# virtual methods
.method public enter()V
    .locals 8

    #@0
    .prologue
    const-wide/16 v6, 0x0

    #@2
    const/4 v3, 0x0

    #@3
    const/4 v5, 0x1

    #@4
    const/4 v4, 0x0

    #@5
    .line 7011
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@7
    const/16 v1, 0x3e8

    #@9
    invoke-static {v0, v1}, Lcom/android/server/wifi/WifiStateMachine;->-wrap12(Lcom/android/server/wifi/WifiStateMachine;I)Ljava/lang/String;

    #@c
    .line 7012
    invoke-static {}, Lcom/android/server/wifi/WifiStateMachine;->-get0()Z

    #@f
    move-result v0

    #@10
    if-eqz v0, :cond_0

    #@12
    .line 7013
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@14
    new-instance v1, Ljava/lang/StringBuilder;

    #@16
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@19
    const-string/jumbo v2, "Enter ConnectedState  mScreenOn="

    #@1c
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1f
    move-result-object v1

    #@20
    .line 7014
    iget-object v2, p0, Lcom/android/server/wifi/WifiStateMachine$ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@22
    invoke-static {v2}, Lcom/android/server/wifi/WifiStateMachine;->-get53(Lcom/android/server/wifi/WifiStateMachine;)Z

    #@25
    move-result v2

    #@26
    .line 7013
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@29
    move-result-object v1

    #@2a
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2d
    move-result-object v1

    #@2e
    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiStateMachine;->log(Ljava/lang/String;)V

    #@31
    .line 7017
    :cond_0
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@33
    invoke-static {v0}, Lcom/android/server/wifi/WifiStateMachine;->-get75(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConnectivityManager;

    #@36
    move-result-object v0

    #@37
    if-eqz v0, :cond_1

    #@39
    .line 7018
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@3b
    invoke-static {v0}, Lcom/android/server/wifi/WifiStateMachine;->-get75(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConnectivityManager;

    #@3e
    move-result-object v0

    #@3f
    invoke-virtual {v0, v5}, Lcom/android/server/wifi/WifiConnectivityManager;->handleConnectionStateChanged(I)V

    #@42
    .line 7021
    :cond_1
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@44
    invoke-virtual {v0}, Lcom/android/server/wifi/WifiStateMachine;->registerConnected()V

    #@47
    .line 7022
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@49
    invoke-static {v0, v6, v7}, Lcom/android/server/wifi/WifiStateMachine;->-set1(Lcom/android/server/wifi/WifiStateMachine;J)J

    #@4c
    .line 7023
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@4e
    invoke-static {v0, v3}, Lcom/android/server/wifi/WifiStateMachine;->-set39(Lcom/android/server/wifi/WifiStateMachine;Landroid/net/wifi/WifiConfiguration;)Landroid/net/wifi/WifiConfiguration;

    #@51
    .line 7025
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@53
    invoke-static {v0, v4}, Lcom/android/server/wifi/WifiStateMachine;->-set4(Lcom/android/server/wifi/WifiStateMachine;Z)Z

    #@56
    .line 7028
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@58
    invoke-static {v0, v4}, Lcom/android/server/wifi/WifiStateMachine;->-set5(Lcom/android/server/wifi/WifiStateMachine;Z)Z

    #@5b
    .line 7030
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@5d
    invoke-static {v0}, Lcom/android/server/wifi/WifiStateMachine;->-get90(Lcom/android/server/wifi/WifiStateMachine;)Z

    #@60
    move-result v0

    #@61
    if-eqz v0, :cond_2

    #@63
    .line 7031
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@65
    invoke-static {v0}, Lcom/android/server/wifi/WifiStateMachine;->-get91(Lcom/android/server/wifi/WifiStateMachine;)I

    #@68
    move-result v1

    #@69
    add-int/lit8 v1, v1, 0x1

    #@6b
    invoke-static {v0, v1}, Lcom/android/server/wifi/WifiStateMachine;->-set40(Lcom/android/server/wifi/WifiStateMachine;I)I

    #@6e
    .line 7032
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@70
    new-instance v1, Ljava/lang/StringBuilder;

    #@72
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@75
    const-string/jumbo v2, "ConnectedState Enter start disconnect test "

    #@78
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@7b
    move-result-object v1

    #@7c
    .line 7033
    iget-object v2, p0, Lcom/android/server/wifi/WifiStateMachine$ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@7e
    invoke-static {v2}, Lcom/android/server/wifi/WifiStateMachine;->-get91(Lcom/android/server/wifi/WifiStateMachine;)I

    #@81
    move-result v2

    #@82
    .line 7032
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@85
    move-result-object v1

    #@86
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@89
    move-result-object v1

    #@8a
    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiStateMachine;->logd(Ljava/lang/String;)V

    #@8d
    .line 7034
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@8f
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine$ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@91
    .line 7035
    iget-object v2, p0, Lcom/android/server/wifi/WifiStateMachine$ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@93
    invoke-static {v2}, Lcom/android/server/wifi/WifiStateMachine;->-get91(Lcom/android/server/wifi/WifiStateMachine;)I

    #@96
    move-result v2

    #@97
    .line 7034
    const v3, 0x20059

    #@9a
    invoke-virtual {v1, v3, v2, v4}, Lcom/android/server/wifi/WifiStateMachine;->obtainMessage(III)Landroid/os/Message;

    #@9d
    move-result-object v1

    #@9e
    .line 7035
    const-wide/16 v2, 0x3a98

    #@a0
    .line 7034
    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/wifi/WifiStateMachine;->sendMessageDelayed(Landroid/os/Message;J)V

    #@a3
    .line 7039
    :cond_2
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@a5
    invoke-static {v0}, Lcom/android/server/wifi/WifiStateMachine;->-get73(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigManager;

    #@a8
    move-result-object v0

    #@a9
    invoke-virtual {v0}, Lcom/android/server/wifi/WifiConfigManager;->enableAllNetworks()V

    #@ac
    .line 7041
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@ae
    invoke-static {v0, v6, v7}, Lcom/android/server/wifi/WifiStateMachine;->-set15(Lcom/android/server/wifi/WifiStateMachine;J)J

    #@b1
    .line 7042
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@b3
    const/4 v1, -0x1

    #@b4
    invoke-static {v0, v1}, Lcom/android/server/wifi/WifiStateMachine;->-set30(Lcom/android/server/wifi/WifiStateMachine;I)I

    #@b7
    .line 7043
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@b9
    invoke-static {v0}, Lcom/android/server/wifi/WifiStateMachine;->-get78(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiLastResortWatchdog;

    #@bc
    move-result-object v0

    #@bd
    invoke-virtual {v0, v5}, Lcom/android/server/wifi/WifiLastResortWatchdog;->connectedStateTransition(Z)V

    #@c0
    .line 7009
    return-void
.end method

.method public exit()V
    .locals 5

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 7301
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@3
    const-string/jumbo v1, "WifiStateMachine: Leaving Connected state"

    #@6
    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiStateMachine;->logd(Ljava/lang/String;)V

    #@9
    .line 7302
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@b
    invoke-static {v0}, Lcom/android/server/wifi/WifiStateMachine;->-get75(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConnectivityManager;

    #@e
    move-result-object v0

    #@f
    if-eqz v0, :cond_0

    #@11
    .line 7303
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@13
    invoke-static {v0}, Lcom/android/server/wifi/WifiStateMachine;->-get75(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConnectivityManager;

    #@16
    move-result-object v0

    #@17
    .line 7304
    const/4 v1, 0x3

    #@18
    .line 7303
    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiConnectivityManager;->handleConnectionStateChanged(I)V

    #@1b
    .line 7307
    :cond_0
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@1d
    const-wide/16 v2, 0x0

    #@1f
    invoke-static {v0, v2, v3}, Lcom/android/server/wifi/WifiStateMachine;->-set15(Lcom/android/server/wifi/WifiStateMachine;J)J

    #@22
    .line 7308
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@24
    invoke-static {v0, v4}, Lcom/android/server/wifi/WifiStateMachine;->-set33(Lcom/android/server/wifi/WifiStateMachine;[Ljava/lang/String;)[Ljava/lang/String;

    #@27
    .line 7309
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@29
    invoke-static {v0}, Lcom/android/server/wifi/WifiStateMachine;->-get78(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiLastResortWatchdog;

    #@2c
    move-result-object v0

    #@2d
    const/4 v1, 0x0

    #@2e
    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiLastResortWatchdog;->connectedStateTransition(Z)V

    #@31
    .line 7300
    return-void
.end method

.method public processMessage(Landroid/os/Message;)Z
    .locals 26
    .param p1, "message"    # Landroid/os/Message;

    #@0
    .prologue
    .line 7047
    const/4 v7, 0x0

    #@1
    .line 7048
    .local v7, "config":Landroid/net/wifi/WifiConfiguration;
    move-object/from16 v0, p0

    #@3
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@5
    move-object/from16 v21, v0

    #@7
    move-object/from16 v0, v21

    #@9
    move-object/from16 v1, p1

    #@b
    move-object/from16 v2, p0

    #@d
    invoke-static {v0, v1, v2}, Lcom/android/server/wifi/WifiStateMachine;->-wrap28(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;Lcom/android/internal/util/State;)V

    #@10
    .line 7050
    move-object/from16 v0, p1

    #@12
    iget v0, v0, Landroid/os/Message;->what:I

    #@14
    move/from16 v21, v0

    #@16
    sparse-switch v21, :sswitch_data_0

    #@19
    .line 7294
    const/16 v21, 0x0

    #@1b
    return v21

    #@1c
    .line 7052
    :sswitch_0
    move-object/from16 v0, p0

    #@1e
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@20
    move-object/from16 v21, v0

    #@22
    invoke-virtual/range {v21 .. v21}, Lcom/android/server/wifi/WifiStateMachine;->updateAssociatedScanPermission()V

    #@25
    .line 7296
    .end local v7    # "config":Landroid/net/wifi/WifiConfiguration;
    :cond_0
    :goto_0
    const/16 v21, 0x1

    #@27
    return v21

    #@28
    .line 7055
    .restart local v7    # "config":Landroid/net/wifi/WifiConfiguration;
    :sswitch_1
    move-object/from16 v0, p1

    #@2a
    iget v0, v0, Landroid/os/Message;->arg1:I

    #@2c
    move/from16 v21, v0

    #@2e
    if-nez v21, :cond_2

    #@30
    .line 7056
    move-object/from16 v0, p0

    #@32
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@34
    move-object/from16 v21, v0

    #@36
    invoke-static/range {v21 .. v21}, Lcom/android/server/wifi/WifiStateMachine;->-get73(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigManager;

    #@39
    move-result-object v21

    #@3a
    .line 7057
    move-object/from16 v0, p0

    #@3c
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@3e
    move-object/from16 v22, v0

    #@40
    invoke-static/range {v22 .. v22}, Lcom/android/server/wifi/WifiStateMachine;->-get33(Lcom/android/server/wifi/WifiStateMachine;)I

    #@43
    move-result v22

    #@44
    move-object/from16 v0, p0

    #@46
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@48
    move-object/from16 v23, v0

    #@4a
    invoke-static/range {v23 .. v23}, Lcom/android/server/wifi/WifiStateMachine;->-get76(Lcom/android/server/wifi/WifiStateMachine;)Landroid/net/wifi/WifiInfo;

    #@4d
    move-result-object v23

    #@4e
    .line 7056
    invoke-virtual/range {v21 .. v23}, Lcom/android/server/wifi/WifiConfigManager;->handleBadNetworkDisconnectReport(ILandroid/net/wifi/WifiInfo;)V

    #@51
    .line 7058
    move-object/from16 v0, p0

    #@53
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@55
    move-object/from16 v21, v0

    #@57
    invoke-static/range {v21 .. v21}, Lcom/android/server/wifi/WifiStateMachine;->-get83(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiNative;

    #@5a
    move-result-object v21

    #@5b
    invoke-virtual/range {v21 .. v21}, Lcom/android/server/wifi/WifiNative;->disconnect()Z

    #@5e
    .line 7059
    move-object/from16 v0, p0

    #@60
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@62
    move-object/from16 v21, v0

    #@64
    move-object/from16 v0, p0

    #@66
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@68
    move-object/from16 v22, v0

    #@6a
    invoke-static/range {v22 .. v22}, Lcom/android/server/wifi/WifiStateMachine;->-get17(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/internal/util/State;

    #@6d
    move-result-object v22

    #@6e
    invoke-static/range {v21 .. v22}, Lcom/android/server/wifi/WifiStateMachine;->-wrap45(Lcom/android/server/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V

    #@71
    .line 7084
    .end local v7    # "config":Landroid/net/wifi/WifiConfiguration;
    :cond_1
    :goto_1
    const/16 v21, 0x1

    #@73
    return v21

    #@74
    .line 7060
    .restart local v7    # "config":Landroid/net/wifi/WifiConfiguration;
    :cond_2
    move-object/from16 v0, p1

    #@76
    iget v0, v0, Landroid/os/Message;->arg1:I

    #@78
    move/from16 v21, v0

    #@7a
    const/16 v22, 0x2

    #@7c
    move/from16 v0, v21

    #@7e
    move/from16 v1, v22

    #@80
    if-eq v0, v1, :cond_3

    #@82
    .line 7061
    move-object/from16 v0, p1

    #@84
    iget v0, v0, Landroid/os/Message;->arg1:I

    #@86
    move/from16 v21, v0

    #@88
    const/16 v22, 0x1

    #@8a
    move/from16 v0, v21

    #@8c
    move/from16 v1, v22

    #@8e
    if-ne v0, v1, :cond_1

    #@90
    .line 7062
    :cond_3
    const-string/jumbo v22, "WifiStateMachine"

    #@93
    move-object/from16 v0, p1

    #@95
    iget v0, v0, Landroid/os/Message;->arg1:I

    #@97
    move/from16 v21, v0

    #@99
    const/16 v23, 0x2

    #@9b
    move/from16 v0, v21

    #@9d
    move/from16 v1, v23

    #@9f
    if-ne v0, v1, :cond_6

    #@a1
    .line 7063
    const-string/jumbo v21, "NETWORK_STATUS_UNWANTED_DISABLE_AUTOJOIN"

    #@a4
    .line 7062
    :goto_2
    move-object/from16 v0, v22

    #@a6
    move-object/from16 v1, v21

    #@a8
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@ab
    .line 7065
    move-object/from16 v0, p0

    #@ad
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@af
    move-object/from16 v21, v0

    #@b1
    invoke-virtual/range {v21 .. v21}, Lcom/android/server/wifi/WifiStateMachine;->getCurrentWifiConfiguration()Landroid/net/wifi/WifiConfiguration;

    #@b4
    move-result-object v7

    #@b5
    .line 7066
    .local v7, "config":Landroid/net/wifi/WifiConfiguration;
    if-eqz v7, :cond_1

    #@b7
    .line 7068
    move-object/from16 v0, p1

    #@b9
    iget v0, v0, Landroid/os/Message;->arg1:I

    #@bb
    move/from16 v21, v0

    #@bd
    const/16 v22, 0x2

    #@bf
    move/from16 v0, v21

    #@c1
    move/from16 v1, v22

    #@c3
    if-ne v0, v1, :cond_5

    #@c5
    .line 7069
    const/16 v21, 0x0

    #@c7
    move/from16 v0, v21

    #@c9
    iput-boolean v0, v7, Landroid/net/wifi/WifiConfiguration;->validatedInternetAccess:Z

    #@cb
    .line 7072
    move-object/from16 v0, p0

    #@cd
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@cf
    move-object/from16 v21, v0

    #@d1
    invoke-static/range {v21 .. v21}, Lcom/android/server/wifi/WifiStateMachine;->-get73(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigManager;

    #@d4
    move-result-object v21

    #@d5
    move-object/from16 v0, v21

    #@d7
    invoke-virtual {v0, v7}, Lcom/android/server/wifi/WifiConfigManager;->isLastSelectedConfiguration(Landroid/net/wifi/WifiConfiguration;)Z

    #@da
    move-result v21

    #@db
    if-eqz v21, :cond_4

    #@dd
    .line 7073
    move-object/from16 v0, p0

    #@df
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@e1
    move-object/from16 v21, v0

    #@e3
    invoke-static/range {v21 .. v21}, Lcom/android/server/wifi/WifiStateMachine;->-get73(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigManager;

    #@e6
    move-result-object v21

    #@e7
    .line 7074
    const/16 v22, -0x1

    #@e9
    .line 7073
    invoke-virtual/range {v21 .. v22}, Lcom/android/server/wifi/WifiConfigManager;->setAndEnableLastSelectedConfiguration(I)V

    #@ec
    .line 7076
    :cond_4
    move-object/from16 v0, p0

    #@ee
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@f0
    move-object/from16 v21, v0

    #@f2
    invoke-static/range {v21 .. v21}, Lcom/android/server/wifi/WifiStateMachine;->-get73(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigManager;

    #@f5
    move-result-object v21

    #@f6
    .line 7077
    const/16 v22, 0x8

    #@f8
    .line 7076
    move-object/from16 v0, v21

    #@fa
    move/from16 v1, v22

    #@fc
    invoke-virtual {v0, v7, v1}, Lcom/android/server/wifi/WifiConfigManager;->updateNetworkSelectionStatus(Landroid/net/wifi/WifiConfiguration;I)Z

    #@ff
    .line 7080
    :cond_5
    iget v0, v7, Landroid/net/wifi/WifiConfiguration;->numNoInternetAccessReports:I

    #@101
    move/from16 v21, v0

    #@103
    add-int/lit8 v21, v21, 0x1

    #@105
    move/from16 v0, v21

    #@107
    iput v0, v7, Landroid/net/wifi/WifiConfiguration;->numNoInternetAccessReports:I

    #@109
    .line 7081
    move-object/from16 v0, p0

    #@10b
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@10d
    move-object/from16 v21, v0

    #@10f
    invoke-static/range {v21 .. v21}, Lcom/android/server/wifi/WifiStateMachine;->-get73(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigManager;

    #@112
    move-result-object v21

    #@113
    invoke-virtual/range {v21 .. v21}, Lcom/android/server/wifi/WifiConfigManager;->writeKnownNetworkHistory()V

    #@116
    goto/16 :goto_1

    #@118
    .line 7064
    .local v7, "config":Landroid/net/wifi/WifiConfiguration;
    :cond_6
    const-string/jumbo v21, "NETWORK_STATUS_UNWANTED_VALIDATION_FAILED"

    #@11b
    goto :goto_2

    #@11c
    .line 7086
    :sswitch_2
    move-object/from16 v0, p1

    #@11e
    iget v0, v0, Landroid/os/Message;->arg1:I

    #@120
    move/from16 v21, v0

    #@122
    const/16 v22, 0x1

    #@124
    move/from16 v0, v21

    #@126
    move/from16 v1, v22

    #@128
    if-ne v0, v1, :cond_7

    #@12a
    .line 7087
    move-object/from16 v0, p0

    #@12c
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@12e
    move-object/from16 v21, v0

    #@130
    invoke-virtual/range {v21 .. v21}, Lcom/android/server/wifi/WifiStateMachine;->getCurrentWifiConfiguration()Landroid/net/wifi/WifiConfiguration;

    #@133
    move-result-object v7

    #@134
    .line 7088
    .local v7, "config":Landroid/net/wifi/WifiConfiguration;
    if-eqz v7, :cond_7

    #@136
    .line 7090
    const/16 v21, 0x0

    #@138
    move/from16 v0, v21

    #@13a
    iput v0, v7, Landroid/net/wifi/WifiConfiguration;->numNoInternetAccessReports:I

    #@13c
    .line 7091
    const/16 v21, 0x1

    #@13e
    move/from16 v0, v21

    #@140
    iput-boolean v0, v7, Landroid/net/wifi/WifiConfiguration;->validatedInternetAccess:Z

    #@142
    .line 7092
    move-object/from16 v0, p0

    #@144
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@146
    move-object/from16 v21, v0

    #@148
    invoke-static/range {v21 .. v21}, Lcom/android/server/wifi/WifiStateMachine;->-get73(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigManager;

    #@14b
    move-result-object v21

    #@14c
    invoke-virtual/range {v21 .. v21}, Lcom/android/server/wifi/WifiConfigManager;->writeKnownNetworkHistory()V

    #@14f
    .line 7095
    .end local v7    # "config":Landroid/net/wifi/WifiConfiguration;
    :cond_7
    const/16 v21, 0x1

    #@151
    return v21

    #@152
    .line 7097
    .local v7, "config":Landroid/net/wifi/WifiConfiguration;
    :sswitch_3
    move-object/from16 v0, p1

    #@154
    iget v0, v0, Landroid/os/Message;->arg1:I

    #@156
    move/from16 v21, v0

    #@158
    if-eqz v21, :cond_9

    #@15a
    const/4 v4, 0x1

    #@15b
    .line 7098
    .local v4, "accept":Z
    :goto_3
    move-object/from16 v0, p0

    #@15d
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@15f
    move-object/from16 v21, v0

    #@161
    invoke-virtual/range {v21 .. v21}, Lcom/android/server/wifi/WifiStateMachine;->getCurrentWifiConfiguration()Landroid/net/wifi/WifiConfiguration;

    #@164
    move-result-object v7

    #@165
    .line 7099
    .local v7, "config":Landroid/net/wifi/WifiConfiguration;
    if-eqz v7, :cond_8

    #@167
    .line 7100
    iput-boolean v4, v7, Landroid/net/wifi/WifiConfiguration;->noInternetAccessExpected:Z

    #@169
    .line 7101
    move-object/from16 v0, p0

    #@16b
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@16d
    move-object/from16 v21, v0

    #@16f
    invoke-static/range {v21 .. v21}, Lcom/android/server/wifi/WifiStateMachine;->-get73(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigManager;

    #@172
    move-result-object v21

    #@173
    invoke-virtual/range {v21 .. v21}, Lcom/android/server/wifi/WifiConfigManager;->writeKnownNetworkHistory()V

    #@176
    .line 7103
    :cond_8
    const/16 v21, 0x1

    #@178
    return v21

    #@179
    .line 7097
    .end local v4    # "accept":Z
    .local v7, "config":Landroid/net/wifi/WifiConfiguration;
    :cond_9
    const/4 v4, 0x0

    #@17a
    .restart local v4    # "accept":Z
    goto :goto_3

    #@17b
    .line 7106
    .end local v4    # "accept":Z
    :sswitch_4
    move-object/from16 v0, p1

    #@17d
    iget v0, v0, Landroid/os/Message;->arg1:I

    #@17f
    move/from16 v21, v0

    #@181
    move-object/from16 v0, p0

    #@183
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@185
    move-object/from16 v22, v0

    #@187
    invoke-static/range {v22 .. v22}, Lcom/android/server/wifi/WifiStateMachine;->-get91(Lcom/android/server/wifi/WifiStateMachine;)I

    #@18a
    move-result v22

    #@18b
    move/from16 v0, v21

    #@18d
    move/from16 v1, v22

    #@18f
    if-ne v0, v1, :cond_0

    #@191
    .line 7107
    move-object/from16 v0, p0

    #@193
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@195
    move-object/from16 v21, v0

    #@197
    invoke-static/range {v21 .. v21}, Lcom/android/server/wifi/WifiStateMachine;->-get83(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiNative;

    #@19a
    move-result-object v21

    #@19b
    invoke-virtual/range {v21 .. v21}, Lcom/android/server/wifi/WifiNative;->disconnect()Z

    #@19e
    goto/16 :goto_0

    #@1a0
    .line 7113
    :sswitch_5
    move-object/from16 v0, p0

    #@1a2
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@1a4
    move-object/from16 v21, v0

    #@1a6
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    #@1a9
    move-result-wide v22

    #@1aa
    invoke-static/range {v21 .. v23}, Lcom/android/server/wifi/WifiStateMachine;->-set15(Lcom/android/server/wifi/WifiStateMachine;J)J

    #@1ad
    .line 7114
    const/16 v21, 0x0

    #@1af
    return v21

    #@1b0
    .line 7116
    :sswitch_6
    const-wide/16 v14, 0x0

    #@1b2
    .line 7117
    .local v14, "lastRoam":J
    move-object/from16 v0, p0

    #@1b4
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@1b6
    move-object/from16 v21, v0

    #@1b8
    .line 7118
    const/16 v22, 0x6

    #@1ba
    .line 7119
    const/16 v23, 0x1

    #@1bc
    .line 7117
    invoke-static/range {v21 .. v23}, Lcom/android/server/wifi/WifiStateMachine;->-wrap33(Lcom/android/server/wifi/WifiStateMachine;II)V

    #@1bf
    .line 7120
    move-object/from16 v0, p0

    #@1c1
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@1c3
    move-object/from16 v21, v0

    #@1c5
    invoke-static/range {v21 .. v21}, Lcom/android/server/wifi/WifiStateMachine;->-get31(Lcom/android/server/wifi/WifiStateMachine;)J

    #@1c8
    move-result-wide v22

    #@1c9
    const-wide/16 v24, 0x0

    #@1cb
    cmp-long v21, v22, v24

    #@1cd
    if-eqz v21, :cond_a

    #@1cf
    .line 7122
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    #@1d2
    move-result-wide v22

    #@1d3
    move-object/from16 v0, p0

    #@1d5
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@1d7
    move-object/from16 v21, v0

    #@1d9
    invoke-static/range {v21 .. v21}, Lcom/android/server/wifi/WifiStateMachine;->-get31(Lcom/android/server/wifi/WifiStateMachine;)J

    #@1dc
    move-result-wide v24

    #@1dd
    sub-long v14, v22, v24

    #@1df
    .line 7123
    move-object/from16 v0, p0

    #@1e1
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@1e3
    move-object/from16 v21, v0

    #@1e5
    const-wide/16 v22, 0x0

    #@1e7
    invoke-static/range {v21 .. v23}, Lcom/android/server/wifi/WifiStateMachine;->-set15(Lcom/android/server/wifi/WifiStateMachine;J)J

    #@1ea
    .line 7125
    :cond_a
    move-object/from16 v0, p1

    #@1ec
    iget v0, v0, Landroid/os/Message;->arg2:I

    #@1ee
    move/from16 v21, v0

    #@1f0
    invoke-static/range {v21 .. v21}, Lcom/android/server/wifi/WifiStateMachine;->unexpectedDisconnectedReason(I)Z

    #@1f3
    move-result v21

    #@1f4
    if-eqz v21, :cond_b

    #@1f6
    .line 7126
    move-object/from16 v0, p0

    #@1f8
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@1fa
    move-object/from16 v21, v0

    #@1fc
    invoke-static/range {v21 .. v21}, Lcom/android/server/wifi/WifiStateMachine;->-get80(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/BaseWifiLogger;

    #@1ff
    move-result-object v21

    #@200
    .line 7127
    const/16 v22, 0x5

    #@202
    .line 7126
    invoke-virtual/range {v21 .. v22}, Lcom/android/server/wifi/BaseWifiLogger;->captureBugReportData(I)V

    #@205
    .line 7129
    :cond_b
    move-object/from16 v0, p0

    #@207
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@209
    move-object/from16 v21, v0

    #@20b
    invoke-virtual/range {v21 .. v21}, Lcom/android/server/wifi/WifiStateMachine;->getCurrentWifiConfiguration()Landroid/net/wifi/WifiConfiguration;

    #@20e
    move-result-object v7

    #@20f
    .line 7130
    .local v7, "config":Landroid/net/wifi/WifiConfiguration;
    move-object/from16 v0, p0

    #@211
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@213
    move-object/from16 v21, v0

    #@215
    invoke-static/range {v21 .. v21}, Lcom/android/server/wifi/WifiStateMachine;->-get53(Lcom/android/server/wifi/WifiStateMachine;)Z

    #@218
    move-result v21

    #@219
    if-eqz v21, :cond_c

    #@21b
    .line 7131
    move-object/from16 v0, p0

    #@21d
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@21f
    move-object/from16 v21, v0

    #@221
    invoke-static/range {v21 .. v21}, Lcom/android/server/wifi/WifiStateMachine;->-get5(Lcom/android/server/wifi/WifiStateMachine;)Z

    #@224
    move-result v21

    #@225
    if-eqz v21, :cond_d

    #@227
    .line 7164
    :cond_c
    invoke-static {}, Lcom/android/server/wifi/WifiStateMachine;->-get0()Z

    #@22a
    move-result v21

    #@22b
    if-eqz v21, :cond_0

    #@22d
    .line 7165
    move-object/from16 v0, p0

    #@22f
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@231
    move-object/from16 v22, v0

    #@233
    new-instance v21, Ljava/lang/StringBuilder;

    #@235
    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    #@238
    const-string/jumbo v23, "NETWORK_DISCONNECTION_EVENT in connected state BSSID="

    #@23b
    move-object/from16 v0, v21

    #@23d
    move-object/from16 v1, v23

    #@23f
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@242
    move-result-object v21

    #@243
    .line 7166
    move-object/from16 v0, p0

    #@245
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@247
    move-object/from16 v23, v0

    #@249
    invoke-static/range {v23 .. v23}, Lcom/android/server/wifi/WifiStateMachine;->-get76(Lcom/android/server/wifi/WifiStateMachine;)Landroid/net/wifi/WifiInfo;

    #@24c
    move-result-object v23

    #@24d
    invoke-virtual/range {v23 .. v23}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;

    #@250
    move-result-object v23

    #@251
    .line 7165
    move-object/from16 v0, v21

    #@253
    move-object/from16 v1, v23

    #@255
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@258
    move-result-object v21

    #@259
    .line 7167
    const-string/jumbo v23, " RSSI="

    #@25c
    .line 7165
    move-object/from16 v0, v21

    #@25e
    move-object/from16 v1, v23

    #@260
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@263
    move-result-object v21

    #@264
    .line 7167
    move-object/from16 v0, p0

    #@266
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@268
    move-object/from16 v23, v0

    #@26a
    invoke-static/range {v23 .. v23}, Lcom/android/server/wifi/WifiStateMachine;->-get76(Lcom/android/server/wifi/WifiStateMachine;)Landroid/net/wifi/WifiInfo;

    #@26d
    move-result-object v23

    #@26e
    invoke-virtual/range {v23 .. v23}, Landroid/net/wifi/WifiInfo;->getRssi()I

    #@271
    move-result v23

    #@272
    .line 7165
    move-object/from16 v0, v21

    #@274
    move/from16 v1, v23

    #@276
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@279
    move-result-object v21

    #@27a
    .line 7168
    const-string/jumbo v23, " freq="

    #@27d
    .line 7165
    move-object/from16 v0, v21

    #@27f
    move-object/from16 v1, v23

    #@281
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@284
    move-result-object v21

    #@285
    .line 7168
    move-object/from16 v0, p0

    #@287
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@289
    move-object/from16 v23, v0

    #@28b
    invoke-static/range {v23 .. v23}, Lcom/android/server/wifi/WifiStateMachine;->-get76(Lcom/android/server/wifi/WifiStateMachine;)Landroid/net/wifi/WifiInfo;

    #@28e
    move-result-object v23

    #@28f
    invoke-virtual/range {v23 .. v23}, Landroid/net/wifi/WifiInfo;->getFrequency()I

    #@292
    move-result v23

    #@293
    .line 7165
    move-object/from16 v0, v21

    #@295
    move/from16 v1, v23

    #@297
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@29a
    move-result-object v21

    #@29b
    .line 7169
    const-string/jumbo v23, " was debouncing="

    #@29e
    .line 7165
    move-object/from16 v0, v21

    #@2a0
    move-object/from16 v1, v23

    #@2a2
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2a5
    move-result-object v21

    #@2a6
    .line 7169
    move-object/from16 v0, p0

    #@2a8
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@2aa
    move-object/from16 v23, v0

    #@2ac
    invoke-static/range {v23 .. v23}, Lcom/android/server/wifi/WifiStateMachine;->-get5(Lcom/android/server/wifi/WifiStateMachine;)Z

    #@2af
    move-result v23

    #@2b0
    .line 7165
    move-object/from16 v0, v21

    #@2b2
    move/from16 v1, v23

    #@2b4
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@2b7
    move-result-object v21

    #@2b8
    .line 7170
    const-string/jumbo v23, " reason="

    #@2bb
    .line 7165
    move-object/from16 v0, v21

    #@2bd
    move-object/from16 v1, v23

    #@2bf
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2c2
    move-result-object v21

    #@2c3
    .line 7170
    move-object/from16 v0, p1

    #@2c5
    iget v0, v0, Landroid/os/Message;->arg2:I

    #@2c7
    move/from16 v23, v0

    #@2c9
    .line 7165
    move-object/from16 v0, v21

    #@2cb
    move/from16 v1, v23

    #@2cd
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@2d0
    move-result-object v21

    #@2d1
    .line 7171
    const-string/jumbo v23, " Network Selection Status="

    #@2d4
    .line 7165
    move-object/from16 v0, v21

    #@2d6
    move-object/from16 v1, v23

    #@2d8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2db
    move-result-object v23

    #@2dc
    .line 7171
    if-nez v7, :cond_11

    #@2de
    const-string/jumbo v21, "Unavailable"

    #@2e1
    .line 7165
    :goto_4
    move-object/from16 v0, v23

    #@2e3
    move-object/from16 v1, v21

    #@2e5
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2e8
    move-result-object v21

    #@2e9
    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2ec
    move-result-object v21

    #@2ed
    move-object/from16 v0, v22

    #@2ef
    move-object/from16 v1, v21

    #@2f1
    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiStateMachine;->log(Ljava/lang/String;)V

    #@2f4
    goto/16 :goto_0

    #@2f6
    .line 7132
    :cond_d
    if-eqz v7, :cond_c

    #@2f8
    .line 7133
    invoke-virtual {v7}, Landroid/net/wifi/WifiConfiguration;->getNetworkSelectionStatus()Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;

    #@2fb
    move-result-object v21

    #@2fc
    invoke-virtual/range {v21 .. v21}, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->isNetworkEnabled()Z

    #@2ff
    move-result v21

    #@300
    .line 7130
    if-eqz v21, :cond_c

    #@302
    .line 7134
    move-object/from16 v0, p0

    #@304
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@306
    move-object/from16 v21, v0

    #@308
    invoke-static/range {v21 .. v21}, Lcom/android/server/wifi/WifiStateMachine;->-get73(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigManager;

    #@30b
    move-result-object v21

    #@30c
    move-object/from16 v0, v21

    #@30e
    invoke-virtual {v0, v7}, Lcom/android/server/wifi/WifiConfigManager;->isLastSelectedConfiguration(Landroid/net/wifi/WifiConfiguration;)Z

    #@311
    move-result v21

    #@312
    if-nez v21, :cond_c

    #@314
    .line 7135
    move-object/from16 v0, p1

    #@316
    iget v0, v0, Landroid/os/Message;->arg2:I

    #@318
    move/from16 v21, v0

    #@31a
    const/16 v22, 0x3

    #@31c
    move/from16 v0, v21

    #@31e
    move/from16 v1, v22

    #@320
    if-ne v0, v1, :cond_e

    #@322
    .line 7136
    const-wide/16 v22, 0x0

    #@324
    cmp-long v21, v14, v22

    #@326
    if-lez v21, :cond_c

    #@328
    const-wide/16 v22, 0x7d0

    #@32a
    cmp-long v21, v14, v22

    #@32c
    if-gez v21, :cond_c

    #@32e
    .line 7137
    :cond_e
    move-object/from16 v0, p0

    #@330
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@332
    move-object/from16 v21, v0

    #@334
    invoke-static/range {v21 .. v21}, Lcom/android/server/wifi/WifiStateMachine;->-get76(Lcom/android/server/wifi/WifiStateMachine;)Landroid/net/wifi/WifiInfo;

    #@337
    move-result-object v21

    #@338
    invoke-virtual/range {v21 .. v21}, Landroid/net/wifi/WifiInfo;->getFrequency()I

    #@33b
    move-result v21

    #@33c
    invoke-static/range {v21 .. v21}, Landroid/net/wifi/ScanResult;->is24GHz(I)Z

    #@33f
    move-result v21

    #@340
    if-eqz v21, :cond_10

    #@342
    .line 7138
    move-object/from16 v0, p0

    #@344
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@346
    move-object/from16 v21, v0

    #@348
    invoke-static/range {v21 .. v21}, Lcom/android/server/wifi/WifiStateMachine;->-get76(Lcom/android/server/wifi/WifiStateMachine;)Landroid/net/wifi/WifiInfo;

    #@34b
    move-result-object v21

    #@34c
    invoke-virtual/range {v21 .. v21}, Landroid/net/wifi/WifiInfo;->getRssi()I

    #@34f
    move-result v21

    #@350
    .line 7139
    const/16 v22, -0x49

    #@352
    .line 7138
    move/from16 v0, v21

    #@354
    move/from16 v1, v22

    #@356
    if-le v0, v1, :cond_10

    #@358
    .line 7149
    :goto_5
    move-object/from16 v0, p0

    #@35a
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@35c
    move-object/from16 v21, v0

    #@35e
    move-object/from16 v0, p0

    #@360
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@362
    move-object/from16 v22, v0

    #@364
    invoke-virtual/range {v22 .. v22}, Lcom/android/server/wifi/WifiStateMachine;->getCurrentWifiConfiguration()Landroid/net/wifi/WifiConfiguration;

    #@367
    move-result-object v22

    #@368
    invoke-virtual/range {v21 .. v22}, Lcom/android/server/wifi/WifiStateMachine;->startScanForConfiguration(Landroid/net/wifi/WifiConfiguration;)Z

    #@36b
    .line 7150
    move-object/from16 v0, p0

    #@36d
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@36f
    move-object/from16 v21, v0

    #@371
    const/16 v22, 0x1

    #@373
    invoke-static/range {v21 .. v22}, Lcom/android/server/wifi/WifiStateMachine;->-set4(Lcom/android/server/wifi/WifiStateMachine;Z)Z

    #@376
    .line 7152
    move-object/from16 v0, p0

    #@378
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@37a
    move-object/from16 v21, v0

    #@37c
    move-object/from16 v0, p0

    #@37e
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@380
    move-object/from16 v22, v0

    #@382
    .line 7153
    move-object/from16 v0, p0

    #@384
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@386
    move-object/from16 v23, v0

    #@388
    invoke-static/range {v23 .. v23}, Lcom/android/server/wifi/WifiStateMachine;->-get33(Lcom/android/server/wifi/WifiStateMachine;)I

    #@38b
    move-result v23

    #@38c
    .line 7152
    const v24, 0x20057

    #@38f
    .line 7153
    const/16 v25, 0x0

    #@391
    .line 7152
    move-object/from16 v0, v22

    #@393
    move/from16 v1, v24

    #@395
    move/from16 v2, v25

    #@397
    move/from16 v3, v23

    #@399
    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/wifi/WifiStateMachine;->obtainMessage(III)Landroid/os/Message;

    #@39c
    move-result-object v22

    #@39d
    .line 7153
    const-wide/16 v24, 0xfa0

    #@39f
    .line 7152
    move-object/from16 v0, v21

    #@3a1
    move-object/from16 v1, v22

    #@3a3
    move-wide/from16 v2, v24

    #@3a5
    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/wifi/WifiStateMachine;->sendMessageDelayed(Landroid/os/Message;J)V

    #@3a8
    .line 7154
    invoke-static {}, Lcom/android/server/wifi/WifiStateMachine;->-get0()Z

    #@3ab
    move-result v21

    #@3ac
    if-eqz v21, :cond_f

    #@3ae
    .line 7155
    move-object/from16 v0, p0

    #@3b0
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@3b2
    move-object/from16 v21, v0

    #@3b4
    new-instance v22, Ljava/lang/StringBuilder;

    #@3b6
    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    #@3b9
    const-string/jumbo v23, "NETWORK_DISCONNECTION_EVENT in connected state BSSID="

    #@3bc
    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3bf
    move-result-object v22

    #@3c0
    .line 7156
    move-object/from16 v0, p0

    #@3c2
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@3c4
    move-object/from16 v23, v0

    #@3c6
    invoke-static/range {v23 .. v23}, Lcom/android/server/wifi/WifiStateMachine;->-get76(Lcom/android/server/wifi/WifiStateMachine;)Landroid/net/wifi/WifiInfo;

    #@3c9
    move-result-object v23

    #@3ca
    invoke-virtual/range {v23 .. v23}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;

    #@3cd
    move-result-object v23

    #@3ce
    .line 7155
    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3d1
    move-result-object v22

    #@3d2
    .line 7157
    const-string/jumbo v23, " RSSI="

    #@3d5
    .line 7155
    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3d8
    move-result-object v22

    #@3d9
    .line 7157
    move-object/from16 v0, p0

    #@3db
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@3dd
    move-object/from16 v23, v0

    #@3df
    invoke-static/range {v23 .. v23}, Lcom/android/server/wifi/WifiStateMachine;->-get76(Lcom/android/server/wifi/WifiStateMachine;)Landroid/net/wifi/WifiInfo;

    #@3e2
    move-result-object v23

    #@3e3
    invoke-virtual/range {v23 .. v23}, Landroid/net/wifi/WifiInfo;->getRssi()I

    #@3e6
    move-result v23

    #@3e7
    .line 7155
    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@3ea
    move-result-object v22

    #@3eb
    .line 7158
    const-string/jumbo v23, " freq="

    #@3ee
    .line 7155
    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3f1
    move-result-object v22

    #@3f2
    .line 7158
    move-object/from16 v0, p0

    #@3f4
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@3f6
    move-object/from16 v23, v0

    #@3f8
    invoke-static/range {v23 .. v23}, Lcom/android/server/wifi/WifiStateMachine;->-get76(Lcom/android/server/wifi/WifiStateMachine;)Landroid/net/wifi/WifiInfo;

    #@3fb
    move-result-object v23

    #@3fc
    invoke-virtual/range {v23 .. v23}, Landroid/net/wifi/WifiInfo;->getFrequency()I

    #@3ff
    move-result v23

    #@400
    .line 7155
    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@403
    move-result-object v22

    #@404
    .line 7159
    const-string/jumbo v23, " reason="

    #@407
    .line 7155
    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@40a
    move-result-object v22

    #@40b
    .line 7159
    move-object/from16 v0, p1

    #@40d
    iget v0, v0, Landroid/os/Message;->arg2:I

    #@40f
    move/from16 v23, v0

    #@411
    .line 7155
    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@414
    move-result-object v22

    #@415
    .line 7160
    const-string/jumbo v23, " -> debounce"

    #@418
    .line 7155
    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@41b
    move-result-object v22

    #@41c
    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@41f
    move-result-object v22

    #@420
    invoke-virtual/range {v21 .. v22}, Lcom/android/server/wifi/WifiStateMachine;->log(Ljava/lang/String;)V

    #@423
    .line 7162
    :cond_f
    const/16 v21, 0x1

    #@425
    return v21

    #@426
    .line 7140
    :cond_10
    move-object/from16 v0, p0

    #@428
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@42a
    move-object/from16 v21, v0

    #@42c
    invoke-static/range {v21 .. v21}, Lcom/android/server/wifi/WifiStateMachine;->-get76(Lcom/android/server/wifi/WifiStateMachine;)Landroid/net/wifi/WifiInfo;

    #@42f
    move-result-object v21

    #@430
    invoke-virtual/range {v21 .. v21}, Landroid/net/wifi/WifiInfo;->getFrequency()I

    #@433
    move-result v21

    #@434
    invoke-static/range {v21 .. v21}, Landroid/net/wifi/ScanResult;->is5GHz(I)Z

    #@437
    move-result v21

    #@438
    if-eqz v21, :cond_c

    #@43a
    .line 7141
    move-object/from16 v0, p0

    #@43c
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@43e
    move-object/from16 v21, v0

    #@440
    invoke-static/range {v21 .. v21}, Lcom/android/server/wifi/WifiStateMachine;->-get76(Lcom/android/server/wifi/WifiStateMachine;)Landroid/net/wifi/WifiInfo;

    #@443
    move-result-object v21

    #@444
    invoke-virtual/range {v21 .. v21}, Landroid/net/wifi/WifiInfo;->getRssi()I

    #@447
    move-result v21

    #@448
    .line 7142
    move-object/from16 v0, p0

    #@44a
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@44c
    move-object/from16 v22, v0

    #@44e
    invoke-static/range {v22 .. v22}, Lcom/android/server/wifi/WifiStateMachine;->-get73(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigManager;

    #@451
    move-result-object v22

    #@452
    move-object/from16 v0, v22

    #@454
    iget-object v0, v0, Lcom/android/server/wifi/WifiConfigManager;->mThresholdQualifiedRssi5:Ljava/util/concurrent/atomic/AtomicInteger;

    #@456
    move-object/from16 v22, v0

    #@458
    invoke-virtual/range {v22 .. v22}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    #@45b
    move-result v22

    #@45c
    .line 7141
    move/from16 v0, v21

    #@45e
    move/from16 v1, v22

    #@460
    if-le v0, v1, :cond_c

    #@462
    goto/16 :goto_5

    #@464
    .line 7172
    :cond_11
    invoke-virtual {v7}, Landroid/net/wifi/WifiConfiguration;->getNetworkSelectionStatus()Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;

    #@467
    move-result-object v21

    #@468
    invoke-virtual/range {v21 .. v21}, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->getNetworkStatusString()Ljava/lang/String;

    #@46b
    move-result-object v21

    #@46c
    goto/16 :goto_4

    #@46e
    .line 7178
    .end local v14    # "lastRoam":J
    .local v7, "config":Landroid/net/wifi/WifiConfiguration;
    :sswitch_7
    move-object/from16 v0, p0

    #@470
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@472
    move-object/from16 v21, v0

    #@474
    const-wide/16 v22, 0x0

    #@476
    invoke-static/range {v21 .. v23}, Lcom/android/server/wifi/WifiStateMachine;->-set15(Lcom/android/server/wifi/WifiStateMachine;J)J

    #@479
    .line 7189
    move-object/from16 v0, p1

    #@47b
    iget-object v6, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@47d
    check-cast v6, Landroid/net/wifi/ScanResult;

    #@47f
    .line 7190
    .local v6, "candidate":Landroid/net/wifi/ScanResult;
    const-string/jumbo v5, "any"

    #@482
    .line 7191
    .local v5, "bssid":Ljava/lang/String;
    if-eqz v6, :cond_12

    #@484
    .line 7192
    iget-object v5, v6, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    #@486
    .line 7194
    :cond_12
    move-object/from16 v0, p1

    #@488
    iget v0, v0, Landroid/os/Message;->arg1:I

    #@48a
    move/from16 v16, v0

    #@48c
    .line 7195
    .local v16, "netId":I
    const/16 v21, -0x1

    #@48e
    move/from16 v0, v16

    #@490
    move/from16 v1, v21

    #@492
    if-ne v0, v1, :cond_13

    #@494
    .line 7196
    move-object/from16 v0, p0

    #@496
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@498
    move-object/from16 v21, v0

    #@49a
    const-string/jumbo v22, "AUTO_ROAM and no config, bail out..."

    #@49d
    invoke-virtual/range {v21 .. v22}, Lcom/android/server/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V

    #@4a0
    goto/16 :goto_0

    #@4a2
    .line 7199
    :cond_13
    move-object/from16 v0, p0

    #@4a4
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@4a6
    move-object/from16 v21, v0

    #@4a8
    invoke-static/range {v21 .. v21}, Lcom/android/server/wifi/WifiStateMachine;->-get73(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigManager;

    #@4ab
    move-result-object v21

    #@4ac
    move-object/from16 v0, v21

    #@4ae
    move/from16 v1, v16

    #@4b0
    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiConfigManager;->getWifiConfiguration(I)Landroid/net/wifi/WifiConfiguration;

    #@4b3
    move-result-object v7

    #@4b4
    .line 7202
    .local v7, "config":Landroid/net/wifi/WifiConfiguration;
    move-object/from16 v0, p0

    #@4b6
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@4b8
    move-object/from16 v21, v0

    #@4ba
    new-instance v22, Ljava/lang/StringBuilder;

    #@4bc
    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    #@4bf
    const-string/jumbo v23, "CMD_AUTO_ROAM sup state "

    #@4c2
    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4c5
    move-result-object v22

    #@4c6
    .line 7203
    move-object/from16 v0, p0

    #@4c8
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@4ca
    move-object/from16 v23, v0

    #@4cc
    invoke-static/range {v23 .. v23}, Lcom/android/server/wifi/WifiStateMachine;->-get59(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/SupplicantStateTracker;

    #@4cf
    move-result-object v23

    #@4d0
    invoke-virtual/range {v23 .. v23}, Lcom/android/server/wifi/SupplicantStateTracker;->getSupplicantStateName()Ljava/lang/String;

    #@4d3
    move-result-object v23

    #@4d4
    .line 7202
    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4d7
    move-result-object v22

    #@4d8
    .line 7204
    const-string/jumbo v23, " my state "

    #@4db
    .line 7202
    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4de
    move-result-object v22

    #@4df
    .line 7204
    move-object/from16 v0, p0

    #@4e1
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@4e3
    move-object/from16 v23, v0

    #@4e5
    invoke-static/range {v23 .. v23}, Lcom/android/server/wifi/WifiStateMachine;->-wrap8(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/internal/util/IState;

    #@4e8
    move-result-object v23

    #@4e9
    invoke-interface/range {v23 .. v23}, Lcom/android/internal/util/IState;->getName()Ljava/lang/String;

    #@4ec
    move-result-object v23

    #@4ed
    .line 7202
    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4f0
    move-result-object v22

    #@4f1
    .line 7205
    const-string/jumbo v23, " nid="

    #@4f4
    .line 7202
    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4f7
    move-result-object v22

    #@4f8
    .line 7205
    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    #@4fb
    move-result-object v23

    #@4fc
    .line 7202
    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4ff
    move-result-object v22

    #@500
    .line 7206
    const-string/jumbo v23, " config "

    #@503
    .line 7202
    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@506
    move-result-object v22

    #@507
    .line 7206
    invoke-virtual {v7}, Landroid/net/wifi/WifiConfiguration;->configKey()Ljava/lang/String;

    #@50a
    move-result-object v23

    #@50b
    .line 7202
    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@50e
    move-result-object v22

    #@50f
    .line 7207
    const-string/jumbo v23, " roam="

    #@512
    .line 7202
    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@515
    move-result-object v22

    #@516
    .line 7207
    move-object/from16 v0, p1

    #@518
    iget v0, v0, Landroid/os/Message;->arg2:I

    #@51a
    move/from16 v23, v0

    #@51c
    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    #@51f
    move-result-object v23

    #@520
    .line 7202
    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@523
    move-result-object v22

    #@524
    .line 7208
    const-string/jumbo v23, " to "

    #@527
    .line 7202
    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@52a
    move-result-object v22

    #@52b
    move-object/from16 v0, v22

    #@52d
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@530
    move-result-object v22

    #@531
    .line 7209
    const-string/jumbo v23, " targetRoamBSSID "

    #@534
    .line 7202
    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@537
    move-result-object v22

    #@538
    .line 7209
    move-object/from16 v0, p0

    #@53a
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@53c
    move-object/from16 v23, v0

    #@53e
    invoke-static/range {v23 .. v23}, Lcom/android/server/wifi/WifiStateMachine;->-get66(Lcom/android/server/wifi/WifiStateMachine;)Ljava/lang/String;

    #@541
    move-result-object v23

    #@542
    .line 7202
    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@545
    move-result-object v22

    #@546
    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@549
    move-result-object v22

    #@54a
    invoke-virtual/range {v21 .. v22}, Lcom/android/server/wifi/WifiStateMachine;->logd(Ljava/lang/String;)V

    #@54d
    .line 7211
    move-object/from16 v0, p0

    #@54f
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@551
    move-object/from16 v21, v0

    #@553
    move-object/from16 v0, v21

    #@555
    invoke-static {v0, v7, v5}, Lcom/android/server/wifi/WifiStateMachine;->-wrap5(Lcom/android/server/wifi/WifiStateMachine;Landroid/net/wifi/WifiConfiguration;Ljava/lang/String;)Z

    #@558
    .line 7212
    move-object/from16 v0, p0

    #@55a
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@55c
    move-object/from16 v21, v0

    #@55e
    move-object/from16 v0, v21

    #@560
    move/from16 v1, v16

    #@562
    invoke-static {v0, v1}, Lcom/android/server/wifi/WifiStateMachine;->-set30(Lcom/android/server/wifi/WifiStateMachine;I)I

    #@565
    .line 7218
    move-object/from16 v0, p0

    #@567
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@569
    move-object/from16 v21, v0

    #@56b
    invoke-virtual/range {v21 .. v21}, Lcom/android/server/wifi/WifiStateMachine;->getCurrentWifiConfiguration()Landroid/net/wifi/WifiConfiguration;

    #@56e
    move-result-object v8

    #@56f
    .line 7219
    .local v8, "currentConfig":Landroid/net/wifi/WifiConfiguration;
    if-eqz v8, :cond_14

    #@571
    invoke-virtual {v8, v7}, Landroid/net/wifi/WifiConfiguration;->isLinked(Landroid/net/wifi/WifiConfiguration;)Z

    #@574
    move-result v21

    #@575
    if-eqz v21, :cond_14

    #@577
    .line 7221
    move-object/from16 v0, p0

    #@579
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@57b
    move-object/from16 v21, v0

    #@57d
    invoke-static/range {v21 .. v21}, Lcom/android/server/wifi/WifiStateMachine;->-get81(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiMetrics;

    #@580
    move-result-object v21

    #@581
    move-object/from16 v0, p0

    #@583
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@585
    move-object/from16 v22, v0

    #@587
    invoke-static/range {v22 .. v22}, Lcom/android/server/wifi/WifiStateMachine;->-get66(Lcom/android/server/wifi/WifiStateMachine;)Ljava/lang/String;

    #@58a
    move-result-object v22

    #@58b
    .line 7222
    const/16 v23, 0x2

    #@58d
    .line 7221
    move-object/from16 v0, v21

    #@58f
    move-object/from16 v1, v22

    #@591
    move/from16 v2, v23

    #@593
    invoke-virtual {v0, v7, v1, v2}, Lcom/android/server/wifi/WifiMetrics;->startConnectionEvent(Landroid/net/wifi/WifiConfiguration;Ljava/lang/String;I)V

    #@596
    .line 7229
    :goto_6
    move-object/from16 v0, p0

    #@598
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@59a
    move-object/from16 v21, v0

    #@59c
    const/16 v22, 0x0

    #@59e
    move-object/from16 v0, v21

    #@5a0
    move-object/from16 v1, p1

    #@5a2
    move/from16 v2, v16

    #@5a4
    move/from16 v3, v22

    #@5a6
    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/wifi/WifiStateMachine;->deferForUserInput(Landroid/os/Message;IZ)Z

    #@5a9
    move-result v21

    #@5aa
    if-eqz v21, :cond_15

    #@5ac
    .line 7230
    move-object/from16 v0, p0

    #@5ae
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@5b0
    move-object/from16 v21, v0

    #@5b2
    .line 7231
    const/16 v22, 0x5

    #@5b4
    .line 7232
    const/16 v23, 0x1

    #@5b6
    .line 7230
    invoke-static/range {v21 .. v23}, Lcom/android/server/wifi/WifiStateMachine;->-wrap33(Lcom/android/server/wifi/WifiStateMachine;II)V

    #@5b9
    goto/16 :goto_0

    #@5bb
    .line 7225
    :cond_14
    move-object/from16 v0, p0

    #@5bd
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@5bf
    move-object/from16 v21, v0

    #@5c1
    invoke-static/range {v21 .. v21}, Lcom/android/server/wifi/WifiStateMachine;->-get81(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiMetrics;

    #@5c4
    move-result-object v21

    #@5c5
    move-object/from16 v0, p0

    #@5c7
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@5c9
    move-object/from16 v22, v0

    #@5cb
    invoke-static/range {v22 .. v22}, Lcom/android/server/wifi/WifiStateMachine;->-get66(Lcom/android/server/wifi/WifiStateMachine;)Ljava/lang/String;

    #@5ce
    move-result-object v22

    #@5cf
    .line 7226
    const/16 v23, 0x3

    #@5d1
    .line 7225
    move-object/from16 v0, v21

    #@5d3
    move-object/from16 v1, v22

    #@5d5
    move/from16 v2, v23

    #@5d7
    invoke-virtual {v0, v7, v1, v2}, Lcom/android/server/wifi/WifiMetrics;->startConnectionEvent(Landroid/net/wifi/WifiConfiguration;Ljava/lang/String;I)V

    #@5da
    goto :goto_6

    #@5db
    .line 7234
    :cond_15
    move-object/from16 v0, p0

    #@5dd
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@5df
    move-object/from16 v21, v0

    #@5e1
    invoke-static/range {v21 .. v21}, Lcom/android/server/wifi/WifiStateMachine;->-get73(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigManager;

    #@5e4
    move-result-object v21

    #@5e5
    move-object/from16 v0, v21

    #@5e7
    move/from16 v1, v16

    #@5e9
    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiConfigManager;->getWifiConfiguration(I)Landroid/net/wifi/WifiConfiguration;

    #@5ec
    move-result-object v21

    #@5ed
    move-object/from16 v0, v21

    #@5ef
    iget v0, v0, Landroid/net/wifi/WifiConfiguration;->userApproved:I

    #@5f1
    move/from16 v21, v0

    #@5f3
    .line 7235
    const/16 v22, 0x2

    #@5f5
    .line 7234
    move/from16 v0, v21

    #@5f7
    move/from16 v1, v22

    #@5f9
    if-ne v0, v1, :cond_16

    #@5fb
    .line 7236
    move-object/from16 v0, p0

    #@5fd
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@5ff
    move-object/from16 v21, v0

    #@601
    const v22, 0x25002

    #@604
    .line 7237
    const/16 v23, 0x9

    #@606
    .line 7236
    move-object/from16 v0, v21

    #@608
    move-object/from16 v1, p1

    #@60a
    move/from16 v2, v22

    #@60c
    move/from16 v3, v23

    #@60e
    invoke-static {v0, v1, v2, v3}, Lcom/android/server/wifi/WifiStateMachine;->-wrap31(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;II)V

    #@611
    .line 7238
    move-object/from16 v0, p0

    #@613
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@615
    move-object/from16 v21, v0

    #@617
    .line 7239
    const/16 v22, 0x5

    #@619
    .line 7240
    const/16 v23, 0x1

    #@61b
    .line 7238
    invoke-static/range {v21 .. v23}, Lcom/android/server/wifi/WifiStateMachine;->-wrap33(Lcom/android/server/wifi/WifiStateMachine;II)V

    #@61e
    goto/16 :goto_0

    #@620
    .line 7244
    :cond_16
    const/16 v19, 0x0

    #@622
    .line 7245
    .local v19, "ret":Z
    move-object/from16 v0, p0

    #@624
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@626
    move-object/from16 v21, v0

    #@628
    invoke-static/range {v21 .. v21}, Lcom/android/server/wifi/WifiStateMachine;->-get33(Lcom/android/server/wifi/WifiStateMachine;)I

    #@62b
    move-result v21

    #@62c
    move/from16 v0, v21

    #@62e
    move/from16 v1, v16

    #@630
    if-eq v0, v1, :cond_18

    #@632
    .line 7246
    move-object/from16 v0, p0

    #@634
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@636
    move-object/from16 v21, v0

    #@638
    invoke-static/range {v21 .. v21}, Lcom/android/server/wifi/WifiStateMachine;->-get73(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigManager;

    #@63b
    move-result-object v21

    #@63c
    const/16 v22, 0x0

    #@63e
    .line 7247
    const/16 v23, -0x1

    #@640
    .line 7246
    move-object/from16 v0, v21

    #@642
    move/from16 v1, v22

    #@644
    move/from16 v2, v23

    #@646
    invoke-virtual {v0, v7, v1, v2}, Lcom/android/server/wifi/WifiConfigManager;->selectNetwork(Landroid/net/wifi/WifiConfiguration;ZI)Z

    #@649
    move-result v21

    #@64a
    if-eqz v21, :cond_17

    #@64c
    .line 7247
    move-object/from16 v0, p0

    #@64e
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@650
    move-object/from16 v21, v0

    #@652
    invoke-static/range {v21 .. v21}, Lcom/android/server/wifi/WifiStateMachine;->-get83(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiNative;

    #@655
    move-result-object v21

    #@656
    invoke-virtual/range {v21 .. v21}, Lcom/android/server/wifi/WifiNative;->reconnect()Z

    #@659
    move-result v21

    #@65a
    .line 7246
    if-eqz v21, :cond_17

    #@65c
    .line 7248
    const/16 v19, 0x1

    #@65e
    .line 7253
    .end local v19    # "ret":Z
    :cond_17
    :goto_7
    if-eqz v19, :cond_19

    #@660
    .line 7254
    move-object/from16 v0, p0

    #@662
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@664
    move-object/from16 v21, v0

    #@666
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    #@669
    move-result-wide v22

    #@66a
    invoke-static/range {v21 .. v23}, Lcom/android/server/wifi/WifiStateMachine;->-set1(Lcom/android/server/wifi/WifiStateMachine;J)J

    #@66d
    .line 7255
    move-object/from16 v0, p0

    #@66f
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@671
    move-object/from16 v21, v0

    #@673
    move-object/from16 v0, p0

    #@675
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@677
    move-object/from16 v22, v0

    #@679
    invoke-static/range {v22 .. v22}, Lcom/android/server/wifi/WifiStateMachine;->-get73(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigManager;

    #@67c
    move-result-object v22

    #@67d
    move-object/from16 v0, v22

    #@67f
    move/from16 v1, v16

    #@681
    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiConfigManager;->getWifiConfiguration(I)Landroid/net/wifi/WifiConfiguration;

    #@684
    move-result-object v22

    #@685
    invoke-static/range {v21 .. v22}, Lcom/android/server/wifi/WifiStateMachine;->-set39(Lcom/android/server/wifi/WifiStateMachine;Landroid/net/wifi/WifiConfiguration;)Landroid/net/wifi/WifiConfiguration;

    #@688
    .line 7258
    move-object/from16 v0, p0

    #@68a
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@68c
    move-object/from16 v21, v0

    #@68e
    const/16 v22, 0x1

    #@690
    invoke-static/range {v21 .. v22}, Lcom/android/server/wifi/WifiStateMachine;->-set5(Lcom/android/server/wifi/WifiStateMachine;Z)Z

    #@693
    .line 7259
    move-object/from16 v0, p0

    #@695
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@697
    move-object/from16 v21, v0

    #@699
    move-object/from16 v0, p0

    #@69b
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@69d
    move-object/from16 v22, v0

    #@69f
    invoke-static/range {v22 .. v22}, Lcom/android/server/wifi/WifiStateMachine;->-get49(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/internal/util/State;

    #@6a2
    move-result-object v22

    #@6a3
    invoke-static/range {v21 .. v22}, Lcom/android/server/wifi/WifiStateMachine;->-wrap45(Lcom/android/server/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V

    #@6a6
    goto/16 :goto_0

    #@6a8
    .line 7251
    .restart local v19    # "ret":Z
    :cond_18
    move-object/from16 v0, p0

    #@6aa
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@6ac
    move-object/from16 v21, v0

    #@6ae
    invoke-static/range {v21 .. v21}, Lcom/android/server/wifi/WifiStateMachine;->-get83(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiNative;

    #@6b1
    move-result-object v21

    #@6b2
    invoke-virtual/range {v21 .. v21}, Lcom/android/server/wifi/WifiNative;->reassociate()Z

    #@6b5
    move-result v19

    #@6b6
    .local v19, "ret":Z
    goto :goto_7

    #@6b7
    .line 7262
    .end local v19    # "ret":Z
    :cond_19
    move-object/from16 v0, p0

    #@6b9
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@6bb
    move-object/from16 v21, v0

    #@6bd
    new-instance v22, Ljava/lang/StringBuilder;

    #@6bf
    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    #@6c2
    const-string/jumbo v23, "Failed to connect config: "

    #@6c5
    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6c8
    move-result-object v22

    #@6c9
    move-object/from16 v0, v22

    #@6cb
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@6ce
    move-result-object v22

    #@6cf
    const-string/jumbo v23, " netId: "

    #@6d2
    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6d5
    move-result-object v22

    #@6d6
    move-object/from16 v0, v22

    #@6d8
    move/from16 v1, v16

    #@6da
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@6dd
    move-result-object v22

    #@6de
    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@6e1
    move-result-object v22

    #@6e2
    invoke-virtual/range {v21 .. v22}, Lcom/android/server/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V

    #@6e5
    .line 7263
    move-object/from16 v0, p0

    #@6e7
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@6e9
    move-object/from16 v21, v0

    #@6eb
    const v22, 0x25002

    #@6ee
    .line 7264
    const/16 v23, 0x0

    #@6f0
    .line 7263
    move-object/from16 v0, v21

    #@6f2
    move-object/from16 v1, p1

    #@6f4
    move/from16 v2, v22

    #@6f6
    move/from16 v3, v23

    #@6f8
    invoke-static {v0, v1, v2, v3}, Lcom/android/server/wifi/WifiStateMachine;->-wrap31(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;II)V

    #@6fb
    .line 7265
    move-object/from16 v0, p0

    #@6fd
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@6ff
    move-object/from16 v21, v0

    #@701
    invoke-static {}, Lcom/android/server/wifi/WifiStateMachine;->-get3()I

    #@704
    move-result v22

    #@705
    invoke-static/range {v21 .. v22}, Lcom/android/server/wifi/WifiStateMachine;->-set38(Lcom/android/server/wifi/WifiStateMachine;I)I

    #@708
    .line 7266
    move-object/from16 v0, p0

    #@70a
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@70c
    move-object/from16 v21, v0

    #@70e
    .line 7267
    const/16 v22, 0x5

    #@710
    .line 7268
    const/16 v23, 0x1

    #@712
    .line 7266
    invoke-static/range {v21 .. v23}, Lcom/android/server/wifi/WifiStateMachine;->-wrap33(Lcom/android/server/wifi/WifiStateMachine;II)V

    #@715
    goto/16 :goto_0

    #@717
    .line 7273
    .end local v5    # "bssid":Ljava/lang/String;
    .end local v6    # "candidate":Landroid/net/wifi/ScanResult;
    .end local v8    # "currentConfig":Landroid/net/wifi/WifiConfiguration;
    .end local v16    # "netId":I
    .local v7, "config":Landroid/net/wifi/WifiConfiguration;
    :sswitch_8
    move-object/from16 v0, p1

    #@719
    iget v0, v0, Landroid/os/Message;->arg1:I

    #@71b
    move/from16 v20, v0

    #@71d
    .line 7274
    .local v20, "slot":I
    move-object/from16 v0, p1

    #@71f
    iget v13, v0, Landroid/os/Message;->arg2:I

    #@721
    .line 7275
    .local v13, "intervalSeconds":I
    move-object/from16 v0, p1

    #@723
    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@725
    move-object/from16 v17, v0

    #@727
    check-cast v17, Lcom/android/server/connectivity/KeepalivePacketData;

    #@729
    .line 7279
    .local v17, "pkt":Lcom/android/server/connectivity/KeepalivePacketData;
    :try_start_0
    move-object/from16 v0, p0

    #@72b
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@72d
    move-object/from16 v21, v0

    #@72f
    invoke-static/range {v21 .. v21}, Lcom/android/server/wifi/WifiStateMachine;->-get34(Lcom/android/server/wifi/WifiStateMachine;)Landroid/net/LinkProperties;

    #@732
    move-result-object v21

    #@733
    invoke-virtual/range {v21 .. v21}, Landroid/net/LinkProperties;->getRoutes()Ljava/util/List;

    #@736
    move-result-object v21

    #@737
    move-object/from16 v0, v17

    #@739
    iget-object v0, v0, Lcom/android/server/connectivity/KeepalivePacketData;->dstAddress:Ljava/net/InetAddress;

    #@73b
    move-object/from16 v22, v0

    #@73d
    .line 7278
    invoke-static/range {v21 .. v22}, Landroid/net/RouteInfo;->selectBestRoute(Ljava/util/Collection;Ljava/net/InetAddress;)Landroid/net/RouteInfo;

    #@740
    move-result-object v21

    #@741
    invoke-virtual/range {v21 .. v21}, Landroid/net/RouteInfo;->getGateway()Ljava/net/InetAddress;

    #@744
    move-result-object v12

    #@745
    .line 7280
    .local v12, "gateway":Ljava/net/InetAddress;
    move-object/from16 v0, p0

    #@747
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@749
    move-object/from16 v21, v0

    #@74b
    invoke-virtual {v12}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    #@74e
    move-result-object v22

    #@74f
    invoke-static/range {v21 .. v22}, Lcom/android/server/wifi/WifiStateMachine;->-wrap11(Lcom/android/server/wifi/WifiStateMachine;Ljava/lang/String;)Ljava/lang/String;

    #@752
    move-result-object v10

    #@753
    .line 7281
    .local v10, "dstMacStr":Ljava/lang/String;
    move-object/from16 v0, p0

    #@755
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@757
    move-object/from16 v21, v0

    #@759
    move-object/from16 v0, v21

    #@75b
    invoke-static {v0, v10}, Lcom/android/server/wifi/WifiStateMachine;->-wrap7(Lcom/android/server/wifi/WifiStateMachine;Ljava/lang/String;)[B
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    #@75e
    move-result-object v9

    #@75f
    .line 7288
    .local v9, "dstMac":[B
    move-object/from16 v0, v17

    #@761
    iput-object v9, v0, Lcom/android/server/connectivity/KeepalivePacketData;->dstMac:[B

    #@763
    .line 7289
    move-object/from16 v0, p0

    #@765
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@767
    move-object/from16 v21, v0

    #@769
    move-object/from16 v0, v21

    #@76b
    move/from16 v1, v20

    #@76d
    move-object/from16 v2, v17

    #@76f
    invoke-virtual {v0, v1, v2, v13}, Lcom/android/server/wifi/WifiStateMachine;->startWifiIPPacketOffload(ILcom/android/server/connectivity/KeepalivePacketData;I)I

    #@772
    move-result v18

    #@773
    .line 7290
    .local v18, "result":I
    move-object/from16 v0, p0

    #@775
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@777
    move-object/from16 v21, v0

    #@779
    invoke-static/range {v21 .. v21}, Lcom/android/server/wifi/WifiStateMachine;->-get35(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiStateMachine$WifiNetworkAgent;

    #@77c
    move-result-object v21

    #@77d
    move-object/from16 v0, v21

    #@77f
    move/from16 v1, v20

    #@781
    move/from16 v2, v18

    #@783
    invoke-virtual {v0, v1, v2}, Lcom/android/server/wifi/WifiStateMachine$WifiNetworkAgent;->onPacketKeepaliveEvent(II)V

    #@786
    goto/16 :goto_0

    #@788
    .line 7282
    .end local v9    # "dstMac":[B
    .end local v10    # "dstMacStr":Ljava/lang/String;
    .end local v12    # "gateway":Ljava/net/InetAddress;
    .end local v18    # "result":I
    :catch_0
    move-exception v11

    #@789
    .line 7283
    .local v11, "e":Ljava/lang/RuntimeException;
    move-object/from16 v0, p0

    #@78b
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@78d
    move-object/from16 v21, v0

    #@78f
    new-instance v22, Ljava/lang/StringBuilder;

    #@791
    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    #@794
    const-string/jumbo v23, "Can\'t find MAC address for next hop to "

    #@797
    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@79a
    move-result-object v22

    #@79b
    move-object/from16 v0, v17

    #@79d
    iget-object v0, v0, Lcom/android/server/connectivity/KeepalivePacketData;->dstAddress:Ljava/net/InetAddress;

    #@79f
    move-object/from16 v23, v0

    #@7a1
    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@7a4
    move-result-object v22

    #@7a5
    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@7a8
    move-result-object v22

    #@7a9
    invoke-virtual/range {v21 .. v22}, Lcom/android/server/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V

    #@7ac
    .line 7284
    move-object/from16 v0, p0

    #@7ae
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@7b0
    move-object/from16 v21, v0

    #@7b2
    invoke-static/range {v21 .. v21}, Lcom/android/server/wifi/WifiStateMachine;->-get35(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiStateMachine$WifiNetworkAgent;

    #@7b5
    move-result-object v21

    #@7b6
    .line 7285
    const/16 v22, -0x15

    #@7b8
    .line 7284
    move-object/from16 v0, v21

    #@7ba
    move/from16 v1, v20

    #@7bc
    move/from16 v2, v22

    #@7be
    invoke-virtual {v0, v1, v2}, Lcom/android/server/wifi/WifiStateMachine$WifiNetworkAgent;->onPacketKeepaliveEvent(II)V

    #@7c1
    goto/16 :goto_0

    #@7c3
    .line 7050
    nop

    #@7c4
    :sswitch_data_0
    .sparse-switch
        0x20059 -> :sswitch_4
        0x20090 -> :sswitch_1
        0x20091 -> :sswitch_7
        0x20093 -> :sswitch_5
        0x20094 -> :sswitch_2
        0x20099 -> :sswitch_3
        0x2009e -> :sswitch_0
        0x200a0 -> :sswitch_8
        0x24004 -> :sswitch_6
    .end sparse-switch
.end method
