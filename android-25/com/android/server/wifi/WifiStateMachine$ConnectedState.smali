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
    .line 7075
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
    .line 7079
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@7
    const/16 v1, 0x3e8

    #@9
    invoke-static {v0, v1}, Lcom/android/server/wifi/WifiStateMachine;->-wrap12(Lcom/android/server/wifi/WifiStateMachine;I)Ljava/lang/String;

    #@c
    .line 7080
    invoke-static {}, Lcom/android/server/wifi/WifiStateMachine;->-get0()Z

    #@f
    move-result v0

    #@10
    if-eqz v0, :cond_0

    #@12
    .line 7081
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
    .line 7082
    iget-object v2, p0, Lcom/android/server/wifi/WifiStateMachine$ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@22
    invoke-static {v2}, Lcom/android/server/wifi/WifiStateMachine;->-get53(Lcom/android/server/wifi/WifiStateMachine;)Z

    #@25
    move-result v2

    #@26
    .line 7081
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
    .line 7085
    :cond_0
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@33
    invoke-static {v0}, Lcom/android/server/wifi/WifiStateMachine;->-get76(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConnectivityManager;

    #@36
    move-result-object v0

    #@37
    if-eqz v0, :cond_1

    #@39
    .line 7086
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@3b
    invoke-static {v0}, Lcom/android/server/wifi/WifiStateMachine;->-get76(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConnectivityManager;

    #@3e
    move-result-object v0

    #@3f
    invoke-virtual {v0, v5}, Lcom/android/server/wifi/WifiConnectivityManager;->handleConnectionStateChanged(I)V

    #@42
    .line 7089
    :cond_1
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@44
    invoke-virtual {v0}, Lcom/android/server/wifi/WifiStateMachine;->registerConnected()V

    #@47
    .line 7090
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@49
    invoke-static {v0, v6, v7}, Lcom/android/server/wifi/WifiStateMachine;->-set1(Lcom/android/server/wifi/WifiStateMachine;J)J

    #@4c
    .line 7091
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@4e
    invoke-static {v0, v3}, Lcom/android/server/wifi/WifiStateMachine;->-set40(Lcom/android/server/wifi/WifiStateMachine;Landroid/net/wifi/WifiConfiguration;)Landroid/net/wifi/WifiConfiguration;

    #@51
    .line 7093
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@53
    invoke-static {v0, v4}, Lcom/android/server/wifi/WifiStateMachine;->-set4(Lcom/android/server/wifi/WifiStateMachine;Z)Z

    #@56
    .line 7096
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@58
    invoke-static {v0, v4}, Lcom/android/server/wifi/WifiStateMachine;->-set5(Lcom/android/server/wifi/WifiStateMachine;Z)Z

    #@5b
    .line 7098
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@5d
    invoke-static {v0}, Lcom/android/server/wifi/WifiStateMachine;->-get92(Lcom/android/server/wifi/WifiStateMachine;)Z

    #@60
    move-result v0

    #@61
    if-eqz v0, :cond_2

    #@63
    .line 7099
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@65
    invoke-static {v0}, Lcom/android/server/wifi/WifiStateMachine;->-get93(Lcom/android/server/wifi/WifiStateMachine;)I

    #@68
    move-result v1

    #@69
    add-int/lit8 v1, v1, 0x1

    #@6b
    invoke-static {v0, v1}, Lcom/android/server/wifi/WifiStateMachine;->-set41(Lcom/android/server/wifi/WifiStateMachine;I)I

    #@6e
    .line 7100
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
    .line 7101
    iget-object v2, p0, Lcom/android/server/wifi/WifiStateMachine$ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@7e
    invoke-static {v2}, Lcom/android/server/wifi/WifiStateMachine;->-get93(Lcom/android/server/wifi/WifiStateMachine;)I

    #@81
    move-result v2

    #@82
    .line 7100
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
    .line 7102
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@8f
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine$ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@91
    .line 7103
    iget-object v2, p0, Lcom/android/server/wifi/WifiStateMachine$ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@93
    invoke-static {v2}, Lcom/android/server/wifi/WifiStateMachine;->-get93(Lcom/android/server/wifi/WifiStateMachine;)I

    #@96
    move-result v2

    #@97
    .line 7102
    const v3, 0x20059

    #@9a
    invoke-virtual {v1, v3, v2, v4}, Lcom/android/server/wifi/WifiStateMachine;->obtainMessage(III)Landroid/os/Message;

    #@9d
    move-result-object v1

    #@9e
    .line 7103
    const-wide/16 v2, 0x3a98

    #@a0
    .line 7102
    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/wifi/WifiStateMachine;->sendMessageDelayed(Landroid/os/Message;J)V

    #@a3
    .line 7107
    :cond_2
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@a5
    invoke-static {v0}, Lcom/android/server/wifi/WifiStateMachine;->-get74(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigManager;

    #@a8
    move-result-object v0

    #@a9
    invoke-virtual {v0}, Lcom/android/server/wifi/WifiConfigManager;->enableAllNetworks()V

    #@ac
    .line 7109
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@ae
    invoke-static {v0, v6, v7}, Lcom/android/server/wifi/WifiStateMachine;->-set15(Lcom/android/server/wifi/WifiStateMachine;J)J

    #@b1
    .line 7110
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@b3
    const/4 v1, -0x1

    #@b4
    invoke-static {v0, v1}, Lcom/android/server/wifi/WifiStateMachine;->-set30(Lcom/android/server/wifi/WifiStateMachine;I)I

    #@b7
    .line 7111
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@b9
    invoke-static {v0}, Lcom/android/server/wifi/WifiStateMachine;->-get79(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiLastResortWatchdog;

    #@bc
    move-result-object v0

    #@bd
    invoke-virtual {v0, v5}, Lcom/android/server/wifi/WifiLastResortWatchdog;->connectedStateTransition(Z)V

    #@c0
    .line 7077
    return-void
.end method

.method public exit()V
    .locals 5

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 7365
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@3
    const-string/jumbo v1, "WifiStateMachine: Leaving Connected state"

    #@6
    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiStateMachine;->logd(Ljava/lang/String;)V

    #@9
    .line 7366
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@b
    invoke-static {v0}, Lcom/android/server/wifi/WifiStateMachine;->-get76(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConnectivityManager;

    #@e
    move-result-object v0

    #@f
    if-eqz v0, :cond_0

    #@11
    .line 7367
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@13
    invoke-static {v0}, Lcom/android/server/wifi/WifiStateMachine;->-get76(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConnectivityManager;

    #@16
    move-result-object v0

    #@17
    .line 7368
    const/4 v1, 0x3

    #@18
    .line 7367
    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiConnectivityManager;->handleConnectionStateChanged(I)V

    #@1b
    .line 7371
    :cond_0
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@1d
    const-wide/16 v2, 0x0

    #@1f
    invoke-static {v0, v2, v3}, Lcom/android/server/wifi/WifiStateMachine;->-set15(Lcom/android/server/wifi/WifiStateMachine;J)J

    #@22
    .line 7372
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@24
    invoke-static {v0, v4}, Lcom/android/server/wifi/WifiStateMachine;->-set34(Lcom/android/server/wifi/WifiStateMachine;[Ljava/lang/String;)[Ljava/lang/String;

    #@27
    .line 7373
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@29
    invoke-static {v0}, Lcom/android/server/wifi/WifiStateMachine;->-get79(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiLastResortWatchdog;

    #@2c
    move-result-object v0

    #@2d
    const/4 v1, 0x0

    #@2e
    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiLastResortWatchdog;->connectedStateTransition(Z)V

    #@31
    .line 7364
    return-void
.end method

.method public processMessage(Landroid/os/Message;)Z
    .locals 26
    .param p1, "message"    # Landroid/os/Message;

    #@0
    .prologue
    .line 7115
    const/4 v7, 0x0

    #@1
    .line 7116
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
    .line 7118
    move-object/from16 v0, p1

    #@12
    iget v0, v0, Landroid/os/Message;->what:I

    #@14
    move/from16 v21, v0

    #@16
    sparse-switch v21, :sswitch_data_0

    #@19
    .line 7358
    const/16 v21, 0x0

    #@1b
    return v21

    #@1c
    .line 7120
    :sswitch_0
    move-object/from16 v0, p0

    #@1e
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@20
    move-object/from16 v21, v0

    #@22
    invoke-virtual/range {v21 .. v21}, Lcom/android/server/wifi/WifiStateMachine;->updateAssociatedScanPermission()V

    #@25
    .line 7360
    .end local v7    # "config":Landroid/net/wifi/WifiConfiguration;
    :cond_0
    :goto_0
    const/16 v21, 0x1

    #@27
    return v21

    #@28
    .line 7123
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
    .line 7124
    move-object/from16 v0, p0

    #@32
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@34
    move-object/from16 v21, v0

    #@36
    invoke-static/range {v21 .. v21}, Lcom/android/server/wifi/WifiStateMachine;->-get84(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiNative;

    #@39
    move-result-object v21

    #@3a
    invoke-virtual/range {v21 .. v21}, Lcom/android/server/wifi/WifiNative;->disconnect()Z

    #@3d
    .line 7125
    move-object/from16 v0, p0

    #@3f
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@41
    move-object/from16 v21, v0

    #@43
    move-object/from16 v0, p0

    #@45
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@47
    move-object/from16 v22, v0

    #@49
    invoke-static/range {v22 .. v22}, Lcom/android/server/wifi/WifiStateMachine;->-get17(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/internal/util/State;

    #@4c
    move-result-object v22

    #@4d
    invoke-static/range {v21 .. v22}, Lcom/android/server/wifi/WifiStateMachine;->-wrap45(Lcom/android/server/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V

    #@50
    .line 7150
    .end local v7    # "config":Landroid/net/wifi/WifiConfiguration;
    :cond_1
    :goto_1
    const/16 v21, 0x1

    #@52
    return v21

    #@53
    .line 7126
    .restart local v7    # "config":Landroid/net/wifi/WifiConfiguration;
    :cond_2
    move-object/from16 v0, p1

    #@55
    iget v0, v0, Landroid/os/Message;->arg1:I

    #@57
    move/from16 v21, v0

    #@59
    const/16 v22, 0x2

    #@5b
    move/from16 v0, v21

    #@5d
    move/from16 v1, v22

    #@5f
    if-eq v0, v1, :cond_3

    #@61
    .line 7127
    move-object/from16 v0, p1

    #@63
    iget v0, v0, Landroid/os/Message;->arg1:I

    #@65
    move/from16 v21, v0

    #@67
    const/16 v22, 0x1

    #@69
    move/from16 v0, v21

    #@6b
    move/from16 v1, v22

    #@6d
    if-ne v0, v1, :cond_1

    #@6f
    .line 7128
    :cond_3
    const-string/jumbo v22, "WifiStateMachine"

    #@72
    move-object/from16 v0, p1

    #@74
    iget v0, v0, Landroid/os/Message;->arg1:I

    #@76
    move/from16 v21, v0

    #@78
    const/16 v23, 0x2

    #@7a
    move/from16 v0, v21

    #@7c
    move/from16 v1, v23

    #@7e
    if-ne v0, v1, :cond_6

    #@80
    .line 7129
    const-string/jumbo v21, "NETWORK_STATUS_UNWANTED_DISABLE_AUTOJOIN"

    #@83
    .line 7128
    :goto_2
    move-object/from16 v0, v22

    #@85
    move-object/from16 v1, v21

    #@87
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@8a
    .line 7131
    move-object/from16 v0, p0

    #@8c
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@8e
    move-object/from16 v21, v0

    #@90
    invoke-virtual/range {v21 .. v21}, Lcom/android/server/wifi/WifiStateMachine;->getCurrentWifiConfiguration()Landroid/net/wifi/WifiConfiguration;

    #@93
    move-result-object v7

    #@94
    .line 7132
    .local v7, "config":Landroid/net/wifi/WifiConfiguration;
    if-eqz v7, :cond_1

    #@96
    .line 7134
    move-object/from16 v0, p1

    #@98
    iget v0, v0, Landroid/os/Message;->arg1:I

    #@9a
    move/from16 v21, v0

    #@9c
    const/16 v22, 0x2

    #@9e
    move/from16 v0, v21

    #@a0
    move/from16 v1, v22

    #@a2
    if-ne v0, v1, :cond_5

    #@a4
    .line 7135
    const/16 v21, 0x0

    #@a6
    move/from16 v0, v21

    #@a8
    iput-boolean v0, v7, Landroid/net/wifi/WifiConfiguration;->validatedInternetAccess:Z

    #@aa
    .line 7138
    move-object/from16 v0, p0

    #@ac
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@ae
    move-object/from16 v21, v0

    #@b0
    invoke-static/range {v21 .. v21}, Lcom/android/server/wifi/WifiStateMachine;->-get74(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigManager;

    #@b3
    move-result-object v21

    #@b4
    move-object/from16 v0, v21

    #@b6
    invoke-virtual {v0, v7}, Lcom/android/server/wifi/WifiConfigManager;->isLastSelectedConfiguration(Landroid/net/wifi/WifiConfiguration;)Z

    #@b9
    move-result v21

    #@ba
    if-eqz v21, :cond_4

    #@bc
    .line 7139
    move-object/from16 v0, p0

    #@be
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@c0
    move-object/from16 v21, v0

    #@c2
    invoke-static/range {v21 .. v21}, Lcom/android/server/wifi/WifiStateMachine;->-get74(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigManager;

    #@c5
    move-result-object v21

    #@c6
    .line 7140
    const/16 v22, -0x1

    #@c8
    .line 7139
    invoke-virtual/range {v21 .. v22}, Lcom/android/server/wifi/WifiConfigManager;->setAndEnableLastSelectedConfiguration(I)V

    #@cb
    .line 7142
    :cond_4
    move-object/from16 v0, p0

    #@cd
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@cf
    move-object/from16 v21, v0

    #@d1
    invoke-static/range {v21 .. v21}, Lcom/android/server/wifi/WifiStateMachine;->-get74(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigManager;

    #@d4
    move-result-object v21

    #@d5
    .line 7143
    const/16 v22, 0x8

    #@d7
    .line 7142
    move-object/from16 v0, v21

    #@d9
    move/from16 v1, v22

    #@db
    invoke-virtual {v0, v7, v1}, Lcom/android/server/wifi/WifiConfigManager;->updateNetworkSelectionStatus(Landroid/net/wifi/WifiConfiguration;I)Z

    #@de
    .line 7146
    :cond_5
    iget v0, v7, Landroid/net/wifi/WifiConfiguration;->numNoInternetAccessReports:I

    #@e0
    move/from16 v21, v0

    #@e2
    add-int/lit8 v21, v21, 0x1

    #@e4
    move/from16 v0, v21

    #@e6
    iput v0, v7, Landroid/net/wifi/WifiConfiguration;->numNoInternetAccessReports:I

    #@e8
    .line 7147
    move-object/from16 v0, p0

    #@ea
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@ec
    move-object/from16 v21, v0

    #@ee
    invoke-static/range {v21 .. v21}, Lcom/android/server/wifi/WifiStateMachine;->-get74(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigManager;

    #@f1
    move-result-object v21

    #@f2
    invoke-virtual/range {v21 .. v21}, Lcom/android/server/wifi/WifiConfigManager;->writeKnownNetworkHistory()V

    #@f5
    goto/16 :goto_1

    #@f7
    .line 7130
    .local v7, "config":Landroid/net/wifi/WifiConfiguration;
    :cond_6
    const-string/jumbo v21, "NETWORK_STATUS_UNWANTED_VALIDATION_FAILED"

    #@fa
    goto :goto_2

    #@fb
    .line 7152
    :sswitch_2
    move-object/from16 v0, p1

    #@fd
    iget v0, v0, Landroid/os/Message;->arg1:I

    #@ff
    move/from16 v21, v0

    #@101
    const/16 v22, 0x1

    #@103
    move/from16 v0, v21

    #@105
    move/from16 v1, v22

    #@107
    if-ne v0, v1, :cond_7

    #@109
    .line 7153
    move-object/from16 v0, p0

    #@10b
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@10d
    move-object/from16 v21, v0

    #@10f
    invoke-virtual/range {v21 .. v21}, Lcom/android/server/wifi/WifiStateMachine;->getCurrentWifiConfiguration()Landroid/net/wifi/WifiConfiguration;

    #@112
    move-result-object v7

    #@113
    .line 7154
    .local v7, "config":Landroid/net/wifi/WifiConfiguration;
    if-eqz v7, :cond_7

    #@115
    .line 7156
    const/16 v21, 0x0

    #@117
    move/from16 v0, v21

    #@119
    iput v0, v7, Landroid/net/wifi/WifiConfiguration;->numNoInternetAccessReports:I

    #@11b
    .line 7157
    const/16 v21, 0x1

    #@11d
    move/from16 v0, v21

    #@11f
    iput-boolean v0, v7, Landroid/net/wifi/WifiConfiguration;->validatedInternetAccess:Z

    #@121
    .line 7158
    move-object/from16 v0, p0

    #@123
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@125
    move-object/from16 v21, v0

    #@127
    invoke-static/range {v21 .. v21}, Lcom/android/server/wifi/WifiStateMachine;->-get74(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigManager;

    #@12a
    move-result-object v21

    #@12b
    invoke-virtual/range {v21 .. v21}, Lcom/android/server/wifi/WifiConfigManager;->writeKnownNetworkHistory()V

    #@12e
    .line 7161
    .end local v7    # "config":Landroid/net/wifi/WifiConfiguration;
    :cond_7
    const/16 v21, 0x1

    #@130
    return v21

    #@131
    .line 7163
    .local v7, "config":Landroid/net/wifi/WifiConfiguration;
    :sswitch_3
    move-object/from16 v0, p1

    #@133
    iget v0, v0, Landroid/os/Message;->arg1:I

    #@135
    move/from16 v21, v0

    #@137
    if-eqz v21, :cond_9

    #@139
    const/4 v4, 0x1

    #@13a
    .line 7164
    .local v4, "accept":Z
    :goto_3
    move-object/from16 v0, p0

    #@13c
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@13e
    move-object/from16 v21, v0

    #@140
    invoke-virtual/range {v21 .. v21}, Lcom/android/server/wifi/WifiStateMachine;->getCurrentWifiConfiguration()Landroid/net/wifi/WifiConfiguration;

    #@143
    move-result-object v7

    #@144
    .line 7165
    .local v7, "config":Landroid/net/wifi/WifiConfiguration;
    if-eqz v7, :cond_8

    #@146
    .line 7166
    iput-boolean v4, v7, Landroid/net/wifi/WifiConfiguration;->noInternetAccessExpected:Z

    #@148
    .line 7167
    move-object/from16 v0, p0

    #@14a
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@14c
    move-object/from16 v21, v0

    #@14e
    invoke-static/range {v21 .. v21}, Lcom/android/server/wifi/WifiStateMachine;->-get74(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigManager;

    #@151
    move-result-object v21

    #@152
    invoke-virtual/range {v21 .. v21}, Lcom/android/server/wifi/WifiConfigManager;->writeKnownNetworkHistory()V

    #@155
    .line 7169
    :cond_8
    const/16 v21, 0x1

    #@157
    return v21

    #@158
    .line 7163
    .end local v4    # "accept":Z
    .local v7, "config":Landroid/net/wifi/WifiConfiguration;
    :cond_9
    const/4 v4, 0x0

    #@159
    .restart local v4    # "accept":Z
    goto :goto_3

    #@15a
    .line 7172
    .end local v4    # "accept":Z
    :sswitch_4
    move-object/from16 v0, p1

    #@15c
    iget v0, v0, Landroid/os/Message;->arg1:I

    #@15e
    move/from16 v21, v0

    #@160
    move-object/from16 v0, p0

    #@162
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@164
    move-object/from16 v22, v0

    #@166
    invoke-static/range {v22 .. v22}, Lcom/android/server/wifi/WifiStateMachine;->-get93(Lcom/android/server/wifi/WifiStateMachine;)I

    #@169
    move-result v22

    #@16a
    move/from16 v0, v21

    #@16c
    move/from16 v1, v22

    #@16e
    if-ne v0, v1, :cond_0

    #@170
    .line 7173
    move-object/from16 v0, p0

    #@172
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@174
    move-object/from16 v21, v0

    #@176
    invoke-static/range {v21 .. v21}, Lcom/android/server/wifi/WifiStateMachine;->-get84(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiNative;

    #@179
    move-result-object v21

    #@17a
    invoke-virtual/range {v21 .. v21}, Lcom/android/server/wifi/WifiNative;->disconnect()Z

    #@17d
    goto/16 :goto_0

    #@17f
    .line 7179
    :sswitch_5
    move-object/from16 v0, p0

    #@181
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@183
    move-object/from16 v21, v0

    #@185
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    #@188
    move-result-wide v22

    #@189
    invoke-static/range {v21 .. v23}, Lcom/android/server/wifi/WifiStateMachine;->-set15(Lcom/android/server/wifi/WifiStateMachine;J)J

    #@18c
    .line 7180
    const/16 v21, 0x0

    #@18e
    return v21

    #@18f
    .line 7182
    :sswitch_6
    const-wide/16 v14, 0x0

    #@191
    .line 7183
    .local v14, "lastRoam":J
    move-object/from16 v0, p0

    #@193
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@195
    move-object/from16 v21, v0

    #@197
    .line 7184
    const/16 v22, 0x6

    #@199
    .line 7185
    const/16 v23, 0x1

    #@19b
    .line 7183
    invoke-static/range {v21 .. v23}, Lcom/android/server/wifi/WifiStateMachine;->-wrap33(Lcom/android/server/wifi/WifiStateMachine;II)V

    #@19e
    .line 7186
    move-object/from16 v0, p0

    #@1a0
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@1a2
    move-object/from16 v21, v0

    #@1a4
    invoke-static/range {v21 .. v21}, Lcom/android/server/wifi/WifiStateMachine;->-get31(Lcom/android/server/wifi/WifiStateMachine;)J

    #@1a7
    move-result-wide v22

    #@1a8
    const-wide/16 v24, 0x0

    #@1aa
    cmp-long v21, v22, v24

    #@1ac
    if-eqz v21, :cond_a

    #@1ae
    .line 7188
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    #@1b1
    move-result-wide v22

    #@1b2
    move-object/from16 v0, p0

    #@1b4
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@1b6
    move-object/from16 v21, v0

    #@1b8
    invoke-static/range {v21 .. v21}, Lcom/android/server/wifi/WifiStateMachine;->-get31(Lcom/android/server/wifi/WifiStateMachine;)J

    #@1bb
    move-result-wide v24

    #@1bc
    sub-long v14, v22, v24

    #@1be
    .line 7189
    move-object/from16 v0, p0

    #@1c0
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@1c2
    move-object/from16 v21, v0

    #@1c4
    const-wide/16 v22, 0x0

    #@1c6
    invoke-static/range {v21 .. v23}, Lcom/android/server/wifi/WifiStateMachine;->-set15(Lcom/android/server/wifi/WifiStateMachine;J)J

    #@1c9
    .line 7191
    :cond_a
    move-object/from16 v0, p1

    #@1cb
    iget v0, v0, Landroid/os/Message;->arg2:I

    #@1cd
    move/from16 v21, v0

    #@1cf
    invoke-static/range {v21 .. v21}, Lcom/android/server/wifi/WifiStateMachine;->unexpectedDisconnectedReason(I)Z

    #@1d2
    move-result v21

    #@1d3
    if-eqz v21, :cond_b

    #@1d5
    .line 7192
    move-object/from16 v0, p0

    #@1d7
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@1d9
    move-object/from16 v21, v0

    #@1db
    invoke-static/range {v21 .. v21}, Lcom/android/server/wifi/WifiStateMachine;->-get81(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/BaseWifiLogger;

    #@1de
    move-result-object v21

    #@1df
    .line 7193
    const/16 v22, 0x5

    #@1e1
    .line 7192
    invoke-virtual/range {v21 .. v22}, Lcom/android/server/wifi/BaseWifiLogger;->captureBugReportData(I)V

    #@1e4
    .line 7195
    :cond_b
    move-object/from16 v0, p0

    #@1e6
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@1e8
    move-object/from16 v21, v0

    #@1ea
    invoke-virtual/range {v21 .. v21}, Lcom/android/server/wifi/WifiStateMachine;->getCurrentWifiConfiguration()Landroid/net/wifi/WifiConfiguration;

    #@1ed
    move-result-object v7

    #@1ee
    .line 7196
    .local v7, "config":Landroid/net/wifi/WifiConfiguration;
    move-object/from16 v0, p0

    #@1f0
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@1f2
    move-object/from16 v21, v0

    #@1f4
    invoke-static/range {v21 .. v21}, Lcom/android/server/wifi/WifiStateMachine;->-get53(Lcom/android/server/wifi/WifiStateMachine;)Z

    #@1f7
    move-result v21

    #@1f8
    if-eqz v21, :cond_c

    #@1fa
    .line 7197
    move-object/from16 v0, p0

    #@1fc
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@1fe
    move-object/from16 v21, v0

    #@200
    invoke-static/range {v21 .. v21}, Lcom/android/server/wifi/WifiStateMachine;->-get5(Lcom/android/server/wifi/WifiStateMachine;)Z

    #@203
    move-result v21

    #@204
    if-eqz v21, :cond_d

    #@206
    .line 7230
    :cond_c
    invoke-static {}, Lcom/android/server/wifi/WifiStateMachine;->-get0()Z

    #@209
    move-result v21

    #@20a
    if-eqz v21, :cond_0

    #@20c
    .line 7231
    move-object/from16 v0, p0

    #@20e
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@210
    move-object/from16 v22, v0

    #@212
    new-instance v21, Ljava/lang/StringBuilder;

    #@214
    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    #@217
    const-string/jumbo v23, "NETWORK_DISCONNECTION_EVENT in connected state BSSID="

    #@21a
    move-object/from16 v0, v21

    #@21c
    move-object/from16 v1, v23

    #@21e
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@221
    move-result-object v21

    #@222
    .line 7232
    move-object/from16 v0, p0

    #@224
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@226
    move-object/from16 v23, v0

    #@228
    invoke-static/range {v23 .. v23}, Lcom/android/server/wifi/WifiStateMachine;->-get77(Lcom/android/server/wifi/WifiStateMachine;)Landroid/net/wifi/WifiInfo;

    #@22b
    move-result-object v23

    #@22c
    invoke-virtual/range {v23 .. v23}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;

    #@22f
    move-result-object v23

    #@230
    .line 7231
    move-object/from16 v0, v21

    #@232
    move-object/from16 v1, v23

    #@234
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@237
    move-result-object v21

    #@238
    .line 7233
    const-string/jumbo v23, " RSSI="

    #@23b
    .line 7231
    move-object/from16 v0, v21

    #@23d
    move-object/from16 v1, v23

    #@23f
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@242
    move-result-object v21

    #@243
    .line 7233
    move-object/from16 v0, p0

    #@245
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@247
    move-object/from16 v23, v0

    #@249
    invoke-static/range {v23 .. v23}, Lcom/android/server/wifi/WifiStateMachine;->-get77(Lcom/android/server/wifi/WifiStateMachine;)Landroid/net/wifi/WifiInfo;

    #@24c
    move-result-object v23

    #@24d
    invoke-virtual/range {v23 .. v23}, Landroid/net/wifi/WifiInfo;->getRssi()I

    #@250
    move-result v23

    #@251
    .line 7231
    move-object/from16 v0, v21

    #@253
    move/from16 v1, v23

    #@255
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@258
    move-result-object v21

    #@259
    .line 7234
    const-string/jumbo v23, " freq="

    #@25c
    .line 7231
    move-object/from16 v0, v21

    #@25e
    move-object/from16 v1, v23

    #@260
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@263
    move-result-object v21

    #@264
    .line 7234
    move-object/from16 v0, p0

    #@266
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@268
    move-object/from16 v23, v0

    #@26a
    invoke-static/range {v23 .. v23}, Lcom/android/server/wifi/WifiStateMachine;->-get77(Lcom/android/server/wifi/WifiStateMachine;)Landroid/net/wifi/WifiInfo;

    #@26d
    move-result-object v23

    #@26e
    invoke-virtual/range {v23 .. v23}, Landroid/net/wifi/WifiInfo;->getFrequency()I

    #@271
    move-result v23

    #@272
    .line 7231
    move-object/from16 v0, v21

    #@274
    move/from16 v1, v23

    #@276
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@279
    move-result-object v21

    #@27a
    .line 7235
    const-string/jumbo v23, " was debouncing="

    #@27d
    .line 7231
    move-object/from16 v0, v21

    #@27f
    move-object/from16 v1, v23

    #@281
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@284
    move-result-object v21

    #@285
    .line 7235
    move-object/from16 v0, p0

    #@287
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@289
    move-object/from16 v23, v0

    #@28b
    invoke-static/range {v23 .. v23}, Lcom/android/server/wifi/WifiStateMachine;->-get5(Lcom/android/server/wifi/WifiStateMachine;)Z

    #@28e
    move-result v23

    #@28f
    .line 7231
    move-object/from16 v0, v21

    #@291
    move/from16 v1, v23

    #@293
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@296
    move-result-object v21

    #@297
    .line 7236
    const-string/jumbo v23, " reason="

    #@29a
    .line 7231
    move-object/from16 v0, v21

    #@29c
    move-object/from16 v1, v23

    #@29e
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2a1
    move-result-object v21

    #@2a2
    .line 7236
    move-object/from16 v0, p1

    #@2a4
    iget v0, v0, Landroid/os/Message;->arg2:I

    #@2a6
    move/from16 v23, v0

    #@2a8
    .line 7231
    move-object/from16 v0, v21

    #@2aa
    move/from16 v1, v23

    #@2ac
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@2af
    move-result-object v21

    #@2b0
    .line 7237
    const-string/jumbo v23, " Network Selection Status="

    #@2b3
    .line 7231
    move-object/from16 v0, v21

    #@2b5
    move-object/from16 v1, v23

    #@2b7
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2ba
    move-result-object v23

    #@2bb
    .line 7237
    if-nez v7, :cond_11

    #@2bd
    const-string/jumbo v21, "Unavailable"

    #@2c0
    .line 7231
    :goto_4
    move-object/from16 v0, v23

    #@2c2
    move-object/from16 v1, v21

    #@2c4
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2c7
    move-result-object v21

    #@2c8
    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2cb
    move-result-object v21

    #@2cc
    move-object/from16 v0, v22

    #@2ce
    move-object/from16 v1, v21

    #@2d0
    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiStateMachine;->log(Ljava/lang/String;)V

    #@2d3
    goto/16 :goto_0

    #@2d5
    .line 7198
    :cond_d
    if-eqz v7, :cond_c

    #@2d7
    .line 7199
    invoke-virtual {v7}, Landroid/net/wifi/WifiConfiguration;->getNetworkSelectionStatus()Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;

    #@2da
    move-result-object v21

    #@2db
    invoke-virtual/range {v21 .. v21}, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->isNetworkEnabled()Z

    #@2de
    move-result v21

    #@2df
    .line 7196
    if-eqz v21, :cond_c

    #@2e1
    .line 7200
    move-object/from16 v0, p0

    #@2e3
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@2e5
    move-object/from16 v21, v0

    #@2e7
    invoke-static/range {v21 .. v21}, Lcom/android/server/wifi/WifiStateMachine;->-get74(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigManager;

    #@2ea
    move-result-object v21

    #@2eb
    move-object/from16 v0, v21

    #@2ed
    invoke-virtual {v0, v7}, Lcom/android/server/wifi/WifiConfigManager;->isLastSelectedConfiguration(Landroid/net/wifi/WifiConfiguration;)Z

    #@2f0
    move-result v21

    #@2f1
    if-nez v21, :cond_c

    #@2f3
    .line 7201
    move-object/from16 v0, p1

    #@2f5
    iget v0, v0, Landroid/os/Message;->arg2:I

    #@2f7
    move/from16 v21, v0

    #@2f9
    const/16 v22, 0x3

    #@2fb
    move/from16 v0, v21

    #@2fd
    move/from16 v1, v22

    #@2ff
    if-ne v0, v1, :cond_e

    #@301
    .line 7202
    const-wide/16 v22, 0x0

    #@303
    cmp-long v21, v14, v22

    #@305
    if-lez v21, :cond_c

    #@307
    const-wide/16 v22, 0x7d0

    #@309
    cmp-long v21, v14, v22

    #@30b
    if-gez v21, :cond_c

    #@30d
    .line 7203
    :cond_e
    move-object/from16 v0, p0

    #@30f
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@311
    move-object/from16 v21, v0

    #@313
    invoke-static/range {v21 .. v21}, Lcom/android/server/wifi/WifiStateMachine;->-get77(Lcom/android/server/wifi/WifiStateMachine;)Landroid/net/wifi/WifiInfo;

    #@316
    move-result-object v21

    #@317
    invoke-virtual/range {v21 .. v21}, Landroid/net/wifi/WifiInfo;->getFrequency()I

    #@31a
    move-result v21

    #@31b
    invoke-static/range {v21 .. v21}, Landroid/net/wifi/ScanResult;->is24GHz(I)Z

    #@31e
    move-result v21

    #@31f
    if-eqz v21, :cond_10

    #@321
    .line 7204
    move-object/from16 v0, p0

    #@323
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@325
    move-object/from16 v21, v0

    #@327
    invoke-static/range {v21 .. v21}, Lcom/android/server/wifi/WifiStateMachine;->-get77(Lcom/android/server/wifi/WifiStateMachine;)Landroid/net/wifi/WifiInfo;

    #@32a
    move-result-object v21

    #@32b
    invoke-virtual/range {v21 .. v21}, Landroid/net/wifi/WifiInfo;->getRssi()I

    #@32e
    move-result v21

    #@32f
    .line 7205
    const/16 v22, -0x49

    #@331
    .line 7204
    move/from16 v0, v21

    #@333
    move/from16 v1, v22

    #@335
    if-le v0, v1, :cond_10

    #@337
    .line 7215
    :goto_5
    move-object/from16 v0, p0

    #@339
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@33b
    move-object/from16 v21, v0

    #@33d
    move-object/from16 v0, p0

    #@33f
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@341
    move-object/from16 v22, v0

    #@343
    invoke-virtual/range {v22 .. v22}, Lcom/android/server/wifi/WifiStateMachine;->getCurrentWifiConfiguration()Landroid/net/wifi/WifiConfiguration;

    #@346
    move-result-object v22

    #@347
    invoke-virtual/range {v21 .. v22}, Lcom/android/server/wifi/WifiStateMachine;->startScanForConfiguration(Landroid/net/wifi/WifiConfiguration;)Z

    #@34a
    .line 7216
    move-object/from16 v0, p0

    #@34c
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@34e
    move-object/from16 v21, v0

    #@350
    const/16 v22, 0x1

    #@352
    invoke-static/range {v21 .. v22}, Lcom/android/server/wifi/WifiStateMachine;->-set4(Lcom/android/server/wifi/WifiStateMachine;Z)Z

    #@355
    .line 7218
    move-object/from16 v0, p0

    #@357
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@359
    move-object/from16 v21, v0

    #@35b
    move-object/from16 v0, p0

    #@35d
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@35f
    move-object/from16 v22, v0

    #@361
    .line 7219
    move-object/from16 v0, p0

    #@363
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@365
    move-object/from16 v23, v0

    #@367
    invoke-static/range {v23 .. v23}, Lcom/android/server/wifi/WifiStateMachine;->-get33(Lcom/android/server/wifi/WifiStateMachine;)I

    #@36a
    move-result v23

    #@36b
    .line 7218
    const v24, 0x20057

    #@36e
    .line 7219
    const/16 v25, 0x0

    #@370
    .line 7218
    move-object/from16 v0, v22

    #@372
    move/from16 v1, v24

    #@374
    move/from16 v2, v25

    #@376
    move/from16 v3, v23

    #@378
    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/wifi/WifiStateMachine;->obtainMessage(III)Landroid/os/Message;

    #@37b
    move-result-object v22

    #@37c
    .line 7219
    const-wide/16 v24, 0xfa0

    #@37e
    .line 7218
    move-object/from16 v0, v21

    #@380
    move-object/from16 v1, v22

    #@382
    move-wide/from16 v2, v24

    #@384
    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/wifi/WifiStateMachine;->sendMessageDelayed(Landroid/os/Message;J)V

    #@387
    .line 7220
    invoke-static {}, Lcom/android/server/wifi/WifiStateMachine;->-get0()Z

    #@38a
    move-result v21

    #@38b
    if-eqz v21, :cond_f

    #@38d
    .line 7221
    move-object/from16 v0, p0

    #@38f
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@391
    move-object/from16 v21, v0

    #@393
    new-instance v22, Ljava/lang/StringBuilder;

    #@395
    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    #@398
    const-string/jumbo v23, "NETWORK_DISCONNECTION_EVENT in connected state BSSID="

    #@39b
    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@39e
    move-result-object v22

    #@39f
    .line 7222
    move-object/from16 v0, p0

    #@3a1
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@3a3
    move-object/from16 v23, v0

    #@3a5
    invoke-static/range {v23 .. v23}, Lcom/android/server/wifi/WifiStateMachine;->-get77(Lcom/android/server/wifi/WifiStateMachine;)Landroid/net/wifi/WifiInfo;

    #@3a8
    move-result-object v23

    #@3a9
    invoke-virtual/range {v23 .. v23}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;

    #@3ac
    move-result-object v23

    #@3ad
    .line 7221
    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3b0
    move-result-object v22

    #@3b1
    .line 7223
    const-string/jumbo v23, " RSSI="

    #@3b4
    .line 7221
    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3b7
    move-result-object v22

    #@3b8
    .line 7223
    move-object/from16 v0, p0

    #@3ba
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@3bc
    move-object/from16 v23, v0

    #@3be
    invoke-static/range {v23 .. v23}, Lcom/android/server/wifi/WifiStateMachine;->-get77(Lcom/android/server/wifi/WifiStateMachine;)Landroid/net/wifi/WifiInfo;

    #@3c1
    move-result-object v23

    #@3c2
    invoke-virtual/range {v23 .. v23}, Landroid/net/wifi/WifiInfo;->getRssi()I

    #@3c5
    move-result v23

    #@3c6
    .line 7221
    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@3c9
    move-result-object v22

    #@3ca
    .line 7224
    const-string/jumbo v23, " freq="

    #@3cd
    .line 7221
    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3d0
    move-result-object v22

    #@3d1
    .line 7224
    move-object/from16 v0, p0

    #@3d3
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@3d5
    move-object/from16 v23, v0

    #@3d7
    invoke-static/range {v23 .. v23}, Lcom/android/server/wifi/WifiStateMachine;->-get77(Lcom/android/server/wifi/WifiStateMachine;)Landroid/net/wifi/WifiInfo;

    #@3da
    move-result-object v23

    #@3db
    invoke-virtual/range {v23 .. v23}, Landroid/net/wifi/WifiInfo;->getFrequency()I

    #@3de
    move-result v23

    #@3df
    .line 7221
    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@3e2
    move-result-object v22

    #@3e3
    .line 7225
    const-string/jumbo v23, " reason="

    #@3e6
    .line 7221
    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3e9
    move-result-object v22

    #@3ea
    .line 7225
    move-object/from16 v0, p1

    #@3ec
    iget v0, v0, Landroid/os/Message;->arg2:I

    #@3ee
    move/from16 v23, v0

    #@3f0
    .line 7221
    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@3f3
    move-result-object v22

    #@3f4
    .line 7226
    const-string/jumbo v23, " -> debounce"

    #@3f7
    .line 7221
    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3fa
    move-result-object v22

    #@3fb
    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3fe
    move-result-object v22

    #@3ff
    invoke-virtual/range {v21 .. v22}, Lcom/android/server/wifi/WifiStateMachine;->log(Ljava/lang/String;)V

    #@402
    .line 7228
    :cond_f
    const/16 v21, 0x1

    #@404
    return v21

    #@405
    .line 7206
    :cond_10
    move-object/from16 v0, p0

    #@407
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@409
    move-object/from16 v21, v0

    #@40b
    invoke-static/range {v21 .. v21}, Lcom/android/server/wifi/WifiStateMachine;->-get77(Lcom/android/server/wifi/WifiStateMachine;)Landroid/net/wifi/WifiInfo;

    #@40e
    move-result-object v21

    #@40f
    invoke-virtual/range {v21 .. v21}, Landroid/net/wifi/WifiInfo;->getFrequency()I

    #@412
    move-result v21

    #@413
    invoke-static/range {v21 .. v21}, Landroid/net/wifi/ScanResult;->is5GHz(I)Z

    #@416
    move-result v21

    #@417
    if-eqz v21, :cond_c

    #@419
    .line 7207
    move-object/from16 v0, p0

    #@41b
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@41d
    move-object/from16 v21, v0

    #@41f
    invoke-static/range {v21 .. v21}, Lcom/android/server/wifi/WifiStateMachine;->-get77(Lcom/android/server/wifi/WifiStateMachine;)Landroid/net/wifi/WifiInfo;

    #@422
    move-result-object v21

    #@423
    invoke-virtual/range {v21 .. v21}, Landroid/net/wifi/WifiInfo;->getRssi()I

    #@426
    move-result v21

    #@427
    .line 7208
    move-object/from16 v0, p0

    #@429
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@42b
    move-object/from16 v22, v0

    #@42d
    invoke-static/range {v22 .. v22}, Lcom/android/server/wifi/WifiStateMachine;->-get74(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigManager;

    #@430
    move-result-object v22

    #@431
    move-object/from16 v0, v22

    #@433
    iget-object v0, v0, Lcom/android/server/wifi/WifiConfigManager;->mThresholdQualifiedRssi5:Ljava/util/concurrent/atomic/AtomicInteger;

    #@435
    move-object/from16 v22, v0

    #@437
    invoke-virtual/range {v22 .. v22}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    #@43a
    move-result v22

    #@43b
    .line 7207
    move/from16 v0, v21

    #@43d
    move/from16 v1, v22

    #@43f
    if-le v0, v1, :cond_c

    #@441
    goto/16 :goto_5

    #@443
    .line 7238
    :cond_11
    invoke-virtual {v7}, Landroid/net/wifi/WifiConfiguration;->getNetworkSelectionStatus()Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;

    #@446
    move-result-object v21

    #@447
    invoke-virtual/range {v21 .. v21}, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->getNetworkStatusString()Ljava/lang/String;

    #@44a
    move-result-object v21

    #@44b
    goto/16 :goto_4

    #@44d
    .line 7244
    .end local v14    # "lastRoam":J
    .local v7, "config":Landroid/net/wifi/WifiConfiguration;
    :sswitch_7
    move-object/from16 v0, p0

    #@44f
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@451
    move-object/from16 v21, v0

    #@453
    const-wide/16 v22, 0x0

    #@455
    invoke-static/range {v21 .. v23}, Lcom/android/server/wifi/WifiStateMachine;->-set15(Lcom/android/server/wifi/WifiStateMachine;J)J

    #@458
    .line 7255
    move-object/from16 v0, p1

    #@45a
    iget-object v6, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@45c
    check-cast v6, Landroid/net/wifi/ScanResult;

    #@45e
    .line 7256
    .local v6, "candidate":Landroid/net/wifi/ScanResult;
    const-string/jumbo v5, "any"

    #@461
    .line 7257
    .local v5, "bssid":Ljava/lang/String;
    if-eqz v6, :cond_12

    #@463
    .line 7258
    iget-object v5, v6, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    #@465
    .line 7260
    :cond_12
    move-object/from16 v0, p1

    #@467
    iget v0, v0, Landroid/os/Message;->arg1:I

    #@469
    move/from16 v16, v0

    #@46b
    .line 7261
    .local v16, "netId":I
    const/16 v21, -0x1

    #@46d
    move/from16 v0, v16

    #@46f
    move/from16 v1, v21

    #@471
    if-ne v0, v1, :cond_13

    #@473
    .line 7262
    move-object/from16 v0, p0

    #@475
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@477
    move-object/from16 v21, v0

    #@479
    const-string/jumbo v22, "AUTO_ROAM and no config, bail out..."

    #@47c
    invoke-virtual/range {v21 .. v22}, Lcom/android/server/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V

    #@47f
    goto/16 :goto_0

    #@481
    .line 7265
    :cond_13
    move-object/from16 v0, p0

    #@483
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@485
    move-object/from16 v21, v0

    #@487
    invoke-static/range {v21 .. v21}, Lcom/android/server/wifi/WifiStateMachine;->-get74(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigManager;

    #@48a
    move-result-object v21

    #@48b
    move-object/from16 v0, v21

    #@48d
    move/from16 v1, v16

    #@48f
    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiConfigManager;->getWifiConfiguration(I)Landroid/net/wifi/WifiConfiguration;

    #@492
    move-result-object v7

    #@493
    .line 7268
    .local v7, "config":Landroid/net/wifi/WifiConfiguration;
    move-object/from16 v0, p0

    #@495
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@497
    move-object/from16 v21, v0

    #@499
    move-object/from16 v0, v21

    #@49b
    invoke-static {v0, v7, v5}, Lcom/android/server/wifi/WifiStateMachine;->-wrap6(Lcom/android/server/wifi/WifiStateMachine;Landroid/net/wifi/WifiConfiguration;Ljava/lang/String;)Z

    #@49e
    .line 7269
    move-object/from16 v0, p0

    #@4a0
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@4a2
    move-object/from16 v21, v0

    #@4a4
    move-object/from16 v0, v21

    #@4a6
    move/from16 v1, v16

    #@4a8
    invoke-static {v0, v1}, Lcom/android/server/wifi/WifiStateMachine;->-set30(Lcom/android/server/wifi/WifiStateMachine;I)I

    #@4ab
    .line 7271
    move-object/from16 v0, p0

    #@4ad
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@4af
    move-object/from16 v21, v0

    #@4b1
    new-instance v22, Ljava/lang/StringBuilder;

    #@4b3
    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    #@4b6
    const-string/jumbo v23, "CMD_AUTO_ROAM sup state "

    #@4b9
    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4bc
    move-result-object v22

    #@4bd
    .line 7272
    move-object/from16 v0, p0

    #@4bf
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@4c1
    move-object/from16 v23, v0

    #@4c3
    invoke-static/range {v23 .. v23}, Lcom/android/server/wifi/WifiStateMachine;->-get59(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/SupplicantStateTracker;

    #@4c6
    move-result-object v23

    #@4c7
    invoke-virtual/range {v23 .. v23}, Lcom/android/server/wifi/SupplicantStateTracker;->getSupplicantStateName()Ljava/lang/String;

    #@4ca
    move-result-object v23

    #@4cb
    .line 7271
    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4ce
    move-result-object v22

    #@4cf
    .line 7273
    const-string/jumbo v23, " my state "

    #@4d2
    .line 7271
    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4d5
    move-result-object v22

    #@4d6
    .line 7273
    move-object/from16 v0, p0

    #@4d8
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@4da
    move-object/from16 v23, v0

    #@4dc
    invoke-static/range {v23 .. v23}, Lcom/android/server/wifi/WifiStateMachine;->-wrap9(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/internal/util/IState;

    #@4df
    move-result-object v23

    #@4e0
    invoke-interface/range {v23 .. v23}, Lcom/android/internal/util/IState;->getName()Ljava/lang/String;

    #@4e3
    move-result-object v23

    #@4e4
    .line 7271
    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4e7
    move-result-object v22

    #@4e8
    .line 7274
    const-string/jumbo v23, " nid="

    #@4eb
    .line 7271
    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4ee
    move-result-object v22

    #@4ef
    .line 7274
    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    #@4f2
    move-result-object v23

    #@4f3
    .line 7271
    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4f6
    move-result-object v22

    #@4f7
    .line 7275
    const-string/jumbo v23, " config "

    #@4fa
    .line 7271
    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4fd
    move-result-object v22

    #@4fe
    .line 7275
    invoke-virtual {v7}, Landroid/net/wifi/WifiConfiguration;->configKey()Ljava/lang/String;

    #@501
    move-result-object v23

    #@502
    .line 7271
    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@505
    move-result-object v22

    #@506
    .line 7276
    const-string/jumbo v23, " targetRoamBSSID "

    #@509
    .line 7271
    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@50c
    move-result-object v22

    #@50d
    .line 7276
    move-object/from16 v0, p0

    #@50f
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@511
    move-object/from16 v23, v0

    #@513
    invoke-static/range {v23 .. v23}, Lcom/android/server/wifi/WifiStateMachine;->-get66(Lcom/android/server/wifi/WifiStateMachine;)Ljava/lang/String;

    #@516
    move-result-object v23

    #@517
    .line 7271
    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@51a
    move-result-object v22

    #@51b
    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@51e
    move-result-object v22

    #@51f
    invoke-virtual/range {v21 .. v22}, Lcom/android/server/wifi/WifiStateMachine;->logd(Ljava/lang/String;)V

    #@522
    .line 7282
    move-object/from16 v0, p0

    #@524
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@526
    move-object/from16 v21, v0

    #@528
    invoke-virtual/range {v21 .. v21}, Lcom/android/server/wifi/WifiStateMachine;->getCurrentWifiConfiguration()Landroid/net/wifi/WifiConfiguration;

    #@52b
    move-result-object v8

    #@52c
    .line 7283
    .local v8, "currentConfig":Landroid/net/wifi/WifiConfiguration;
    if-eqz v8, :cond_14

    #@52e
    invoke-virtual {v8, v7}, Landroid/net/wifi/WifiConfiguration;->isLinked(Landroid/net/wifi/WifiConfiguration;)Z

    #@531
    move-result v21

    #@532
    if-eqz v21, :cond_14

    #@534
    .line 7285
    move-object/from16 v0, p0

    #@536
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@538
    move-object/from16 v21, v0

    #@53a
    invoke-static/range {v21 .. v21}, Lcom/android/server/wifi/WifiStateMachine;->-get82(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiMetrics;

    #@53d
    move-result-object v21

    #@53e
    move-object/from16 v0, p0

    #@540
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@542
    move-object/from16 v22, v0

    #@544
    invoke-static/range {v22 .. v22}, Lcom/android/server/wifi/WifiStateMachine;->-get66(Lcom/android/server/wifi/WifiStateMachine;)Ljava/lang/String;

    #@547
    move-result-object v22

    #@548
    .line 7286
    const/16 v23, 0x2

    #@54a
    .line 7285
    move-object/from16 v0, v21

    #@54c
    move-object/from16 v1, v22

    #@54e
    move/from16 v2, v23

    #@550
    invoke-virtual {v0, v7, v1, v2}, Lcom/android/server/wifi/WifiMetrics;->startConnectionEvent(Landroid/net/wifi/WifiConfiguration;Ljava/lang/String;I)V

    #@553
    .line 7293
    :goto_6
    move-object/from16 v0, p0

    #@555
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@557
    move-object/from16 v21, v0

    #@559
    const/16 v22, 0x0

    #@55b
    move-object/from16 v0, v21

    #@55d
    move-object/from16 v1, p1

    #@55f
    move/from16 v2, v16

    #@561
    move/from16 v3, v22

    #@563
    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/wifi/WifiStateMachine;->deferForUserInput(Landroid/os/Message;IZ)Z

    #@566
    move-result v21

    #@567
    if-eqz v21, :cond_15

    #@569
    .line 7294
    move-object/from16 v0, p0

    #@56b
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@56d
    move-object/from16 v21, v0

    #@56f
    .line 7295
    const/16 v22, 0x5

    #@571
    .line 7296
    const/16 v23, 0x1

    #@573
    .line 7294
    invoke-static/range {v21 .. v23}, Lcom/android/server/wifi/WifiStateMachine;->-wrap33(Lcom/android/server/wifi/WifiStateMachine;II)V

    #@576
    goto/16 :goto_0

    #@578
    .line 7289
    :cond_14
    move-object/from16 v0, p0

    #@57a
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@57c
    move-object/from16 v21, v0

    #@57e
    invoke-static/range {v21 .. v21}, Lcom/android/server/wifi/WifiStateMachine;->-get82(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiMetrics;

    #@581
    move-result-object v21

    #@582
    move-object/from16 v0, p0

    #@584
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@586
    move-object/from16 v22, v0

    #@588
    invoke-static/range {v22 .. v22}, Lcom/android/server/wifi/WifiStateMachine;->-get66(Lcom/android/server/wifi/WifiStateMachine;)Ljava/lang/String;

    #@58b
    move-result-object v22

    #@58c
    .line 7290
    const/16 v23, 0x3

    #@58e
    .line 7289
    move-object/from16 v0, v21

    #@590
    move-object/from16 v1, v22

    #@592
    move/from16 v2, v23

    #@594
    invoke-virtual {v0, v7, v1, v2}, Lcom/android/server/wifi/WifiMetrics;->startConnectionEvent(Landroid/net/wifi/WifiConfiguration;Ljava/lang/String;I)V

    #@597
    goto :goto_6

    #@598
    .line 7298
    :cond_15
    move-object/from16 v0, p0

    #@59a
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@59c
    move-object/from16 v21, v0

    #@59e
    invoke-static/range {v21 .. v21}, Lcom/android/server/wifi/WifiStateMachine;->-get74(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigManager;

    #@5a1
    move-result-object v21

    #@5a2
    move-object/from16 v0, v21

    #@5a4
    move/from16 v1, v16

    #@5a6
    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiConfigManager;->getWifiConfiguration(I)Landroid/net/wifi/WifiConfiguration;

    #@5a9
    move-result-object v21

    #@5aa
    move-object/from16 v0, v21

    #@5ac
    iget v0, v0, Landroid/net/wifi/WifiConfiguration;->userApproved:I

    #@5ae
    move/from16 v21, v0

    #@5b0
    .line 7299
    const/16 v22, 0x2

    #@5b2
    .line 7298
    move/from16 v0, v21

    #@5b4
    move/from16 v1, v22

    #@5b6
    if-ne v0, v1, :cond_16

    #@5b8
    .line 7300
    move-object/from16 v0, p0

    #@5ba
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@5bc
    move-object/from16 v21, v0

    #@5be
    const v22, 0x25002

    #@5c1
    .line 7301
    const/16 v23, 0x9

    #@5c3
    .line 7300
    move-object/from16 v0, v21

    #@5c5
    move-object/from16 v1, p1

    #@5c7
    move/from16 v2, v22

    #@5c9
    move/from16 v3, v23

    #@5cb
    invoke-static {v0, v1, v2, v3}, Lcom/android/server/wifi/WifiStateMachine;->-wrap31(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;II)V

    #@5ce
    .line 7302
    move-object/from16 v0, p0

    #@5d0
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@5d2
    move-object/from16 v21, v0

    #@5d4
    .line 7303
    const/16 v22, 0x5

    #@5d6
    .line 7304
    const/16 v23, 0x1

    #@5d8
    .line 7302
    invoke-static/range {v21 .. v23}, Lcom/android/server/wifi/WifiStateMachine;->-wrap33(Lcom/android/server/wifi/WifiStateMachine;II)V

    #@5db
    goto/16 :goto_0

    #@5dd
    .line 7308
    :cond_16
    const/16 v19, 0x0

    #@5df
    .line 7309
    .local v19, "ret":Z
    move-object/from16 v0, p0

    #@5e1
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@5e3
    move-object/from16 v21, v0

    #@5e5
    invoke-static/range {v21 .. v21}, Lcom/android/server/wifi/WifiStateMachine;->-get33(Lcom/android/server/wifi/WifiStateMachine;)I

    #@5e8
    move-result v21

    #@5e9
    move/from16 v0, v21

    #@5eb
    move/from16 v1, v16

    #@5ed
    if-eq v0, v1, :cond_18

    #@5ef
    .line 7310
    move-object/from16 v0, p0

    #@5f1
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@5f3
    move-object/from16 v21, v0

    #@5f5
    invoke-static/range {v21 .. v21}, Lcom/android/server/wifi/WifiStateMachine;->-get74(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigManager;

    #@5f8
    move-result-object v21

    #@5f9
    const/16 v22, 0x0

    #@5fb
    .line 7311
    const/16 v23, -0x1

    #@5fd
    .line 7310
    move-object/from16 v0, v21

    #@5ff
    move/from16 v1, v22

    #@601
    move/from16 v2, v23

    #@603
    invoke-virtual {v0, v7, v1, v2}, Lcom/android/server/wifi/WifiConfigManager;->selectNetwork(Landroid/net/wifi/WifiConfiguration;ZI)Z

    #@606
    move-result v21

    #@607
    if-eqz v21, :cond_17

    #@609
    .line 7311
    move-object/from16 v0, p0

    #@60b
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@60d
    move-object/from16 v21, v0

    #@60f
    invoke-static/range {v21 .. v21}, Lcom/android/server/wifi/WifiStateMachine;->-get84(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiNative;

    #@612
    move-result-object v21

    #@613
    invoke-virtual/range {v21 .. v21}, Lcom/android/server/wifi/WifiNative;->reconnect()Z

    #@616
    move-result v21

    #@617
    .line 7310
    if-eqz v21, :cond_17

    #@619
    .line 7312
    const/16 v19, 0x1

    #@61b
    .line 7317
    .end local v19    # "ret":Z
    :cond_17
    :goto_7
    if-eqz v19, :cond_19

    #@61d
    .line 7318
    move-object/from16 v0, p0

    #@61f
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@621
    move-object/from16 v21, v0

    #@623
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    #@626
    move-result-wide v22

    #@627
    invoke-static/range {v21 .. v23}, Lcom/android/server/wifi/WifiStateMachine;->-set1(Lcom/android/server/wifi/WifiStateMachine;J)J

    #@62a
    .line 7319
    move-object/from16 v0, p0

    #@62c
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@62e
    move-object/from16 v21, v0

    #@630
    move-object/from16 v0, p0

    #@632
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@634
    move-object/from16 v22, v0

    #@636
    invoke-static/range {v22 .. v22}, Lcom/android/server/wifi/WifiStateMachine;->-get74(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigManager;

    #@639
    move-result-object v22

    #@63a
    move-object/from16 v0, v22

    #@63c
    move/from16 v1, v16

    #@63e
    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiConfigManager;->getWifiConfiguration(I)Landroid/net/wifi/WifiConfiguration;

    #@641
    move-result-object v22

    #@642
    invoke-static/range {v21 .. v22}, Lcom/android/server/wifi/WifiStateMachine;->-set40(Lcom/android/server/wifi/WifiStateMachine;Landroid/net/wifi/WifiConfiguration;)Landroid/net/wifi/WifiConfiguration;

    #@645
    .line 7322
    move-object/from16 v0, p0

    #@647
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@649
    move-object/from16 v21, v0

    #@64b
    const/16 v22, 0x1

    #@64d
    invoke-static/range {v21 .. v22}, Lcom/android/server/wifi/WifiStateMachine;->-set5(Lcom/android/server/wifi/WifiStateMachine;Z)Z

    #@650
    .line 7323
    move-object/from16 v0, p0

    #@652
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@654
    move-object/from16 v21, v0

    #@656
    move-object/from16 v0, p0

    #@658
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@65a
    move-object/from16 v22, v0

    #@65c
    invoke-static/range {v22 .. v22}, Lcom/android/server/wifi/WifiStateMachine;->-get49(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/internal/util/State;

    #@65f
    move-result-object v22

    #@660
    invoke-static/range {v21 .. v22}, Lcom/android/server/wifi/WifiStateMachine;->-wrap45(Lcom/android/server/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V

    #@663
    goto/16 :goto_0

    #@665
    .line 7315
    .restart local v19    # "ret":Z
    :cond_18
    move-object/from16 v0, p0

    #@667
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@669
    move-object/from16 v21, v0

    #@66b
    invoke-static/range {v21 .. v21}, Lcom/android/server/wifi/WifiStateMachine;->-get84(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiNative;

    #@66e
    move-result-object v21

    #@66f
    invoke-virtual/range {v21 .. v21}, Lcom/android/server/wifi/WifiNative;->reassociate()Z

    #@672
    move-result v19

    #@673
    .local v19, "ret":Z
    goto :goto_7

    #@674
    .line 7326
    .end local v19    # "ret":Z
    :cond_19
    move-object/from16 v0, p0

    #@676
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@678
    move-object/from16 v21, v0

    #@67a
    new-instance v22, Ljava/lang/StringBuilder;

    #@67c
    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    #@67f
    const-string/jumbo v23, "Failed to connect config: "

    #@682
    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@685
    move-result-object v22

    #@686
    move-object/from16 v0, v22

    #@688
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@68b
    move-result-object v22

    #@68c
    const-string/jumbo v23, " netId: "

    #@68f
    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@692
    move-result-object v22

    #@693
    move-object/from16 v0, v22

    #@695
    move/from16 v1, v16

    #@697
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@69a
    move-result-object v22

    #@69b
    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@69e
    move-result-object v22

    #@69f
    invoke-virtual/range {v21 .. v22}, Lcom/android/server/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V

    #@6a2
    .line 7327
    move-object/from16 v0, p0

    #@6a4
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@6a6
    move-object/from16 v21, v0

    #@6a8
    const v22, 0x25002

    #@6ab
    .line 7328
    const/16 v23, 0x0

    #@6ad
    .line 7327
    move-object/from16 v0, v21

    #@6af
    move-object/from16 v1, p1

    #@6b1
    move/from16 v2, v22

    #@6b3
    move/from16 v3, v23

    #@6b5
    invoke-static {v0, v1, v2, v3}, Lcom/android/server/wifi/WifiStateMachine;->-wrap31(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;II)V

    #@6b8
    .line 7329
    move-object/from16 v0, p0

    #@6ba
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@6bc
    move-object/from16 v21, v0

    #@6be
    invoke-static {}, Lcom/android/server/wifi/WifiStateMachine;->-get3()I

    #@6c1
    move-result v22

    #@6c2
    invoke-static/range {v21 .. v22}, Lcom/android/server/wifi/WifiStateMachine;->-set39(Lcom/android/server/wifi/WifiStateMachine;I)I

    #@6c5
    .line 7330
    move-object/from16 v0, p0

    #@6c7
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@6c9
    move-object/from16 v21, v0

    #@6cb
    .line 7331
    const/16 v22, 0x5

    #@6cd
    .line 7332
    const/16 v23, 0x1

    #@6cf
    .line 7330
    invoke-static/range {v21 .. v23}, Lcom/android/server/wifi/WifiStateMachine;->-wrap33(Lcom/android/server/wifi/WifiStateMachine;II)V

    #@6d2
    goto/16 :goto_0

    #@6d4
    .line 7337
    .end local v5    # "bssid":Ljava/lang/String;
    .end local v6    # "candidate":Landroid/net/wifi/ScanResult;
    .end local v8    # "currentConfig":Landroid/net/wifi/WifiConfiguration;
    .end local v16    # "netId":I
    .local v7, "config":Landroid/net/wifi/WifiConfiguration;
    :sswitch_8
    move-object/from16 v0, p1

    #@6d6
    iget v0, v0, Landroid/os/Message;->arg1:I

    #@6d8
    move/from16 v20, v0

    #@6da
    .line 7338
    .local v20, "slot":I
    move-object/from16 v0, p1

    #@6dc
    iget v13, v0, Landroid/os/Message;->arg2:I

    #@6de
    .line 7339
    .local v13, "intervalSeconds":I
    move-object/from16 v0, p1

    #@6e0
    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@6e2
    move-object/from16 v17, v0

    #@6e4
    check-cast v17, Lcom/android/server/connectivity/KeepalivePacketData;

    #@6e6
    .line 7343
    .local v17, "pkt":Lcom/android/server/connectivity/KeepalivePacketData;
    :try_start_0
    move-object/from16 v0, p0

    #@6e8
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@6ea
    move-object/from16 v21, v0

    #@6ec
    invoke-static/range {v21 .. v21}, Lcom/android/server/wifi/WifiStateMachine;->-get34(Lcom/android/server/wifi/WifiStateMachine;)Landroid/net/LinkProperties;

    #@6ef
    move-result-object v21

    #@6f0
    invoke-virtual/range {v21 .. v21}, Landroid/net/LinkProperties;->getRoutes()Ljava/util/List;

    #@6f3
    move-result-object v21

    #@6f4
    move-object/from16 v0, v17

    #@6f6
    iget-object v0, v0, Lcom/android/server/connectivity/KeepalivePacketData;->dstAddress:Ljava/net/InetAddress;

    #@6f8
    move-object/from16 v22, v0

    #@6fa
    .line 7342
    invoke-static/range {v21 .. v22}, Landroid/net/RouteInfo;->selectBestRoute(Ljava/util/Collection;Ljava/net/InetAddress;)Landroid/net/RouteInfo;

    #@6fd
    move-result-object v21

    #@6fe
    invoke-virtual/range {v21 .. v21}, Landroid/net/RouteInfo;->getGateway()Ljava/net/InetAddress;

    #@701
    move-result-object v12

    #@702
    .line 7344
    .local v12, "gateway":Ljava/net/InetAddress;
    move-object/from16 v0, p0

    #@704
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@706
    move-object/from16 v21, v0

    #@708
    invoke-virtual {v12}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    #@70b
    move-result-object v22

    #@70c
    invoke-static/range {v21 .. v22}, Lcom/android/server/wifi/WifiStateMachine;->-wrap11(Lcom/android/server/wifi/WifiStateMachine;Ljava/lang/String;)Ljava/lang/String;

    #@70f
    move-result-object v10

    #@710
    .line 7345
    .local v10, "dstMacStr":Ljava/lang/String;
    move-object/from16 v0, p0

    #@712
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@714
    move-object/from16 v21, v0

    #@716
    move-object/from16 v0, v21

    #@718
    invoke-static {v0, v10}, Lcom/android/server/wifi/WifiStateMachine;->-wrap8(Lcom/android/server/wifi/WifiStateMachine;Ljava/lang/String;)[B
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    #@71b
    move-result-object v9

    #@71c
    .line 7352
    .local v9, "dstMac":[B
    move-object/from16 v0, v17

    #@71e
    iput-object v9, v0, Lcom/android/server/connectivity/KeepalivePacketData;->dstMac:[B

    #@720
    .line 7353
    move-object/from16 v0, p0

    #@722
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@724
    move-object/from16 v21, v0

    #@726
    move-object/from16 v0, v21

    #@728
    move/from16 v1, v20

    #@72a
    move-object/from16 v2, v17

    #@72c
    invoke-virtual {v0, v1, v2, v13}, Lcom/android/server/wifi/WifiStateMachine;->startWifiIPPacketOffload(ILcom/android/server/connectivity/KeepalivePacketData;I)I

    #@72f
    move-result v18

    #@730
    .line 7354
    .local v18, "result":I
    move-object/from16 v0, p0

    #@732
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@734
    move-object/from16 v21, v0

    #@736
    invoke-static/range {v21 .. v21}, Lcom/android/server/wifi/WifiStateMachine;->-get35(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiStateMachine$WifiNetworkAgent;

    #@739
    move-result-object v21

    #@73a
    move-object/from16 v0, v21

    #@73c
    move/from16 v1, v20

    #@73e
    move/from16 v2, v18

    #@740
    invoke-virtual {v0, v1, v2}, Lcom/android/server/wifi/WifiStateMachine$WifiNetworkAgent;->onPacketKeepaliveEvent(II)V

    #@743
    goto/16 :goto_0

    #@745
    .line 7346
    .end local v9    # "dstMac":[B
    .end local v10    # "dstMacStr":Ljava/lang/String;
    .end local v12    # "gateway":Ljava/net/InetAddress;
    .end local v18    # "result":I
    :catch_0
    move-exception v11

    #@746
    .line 7347
    .local v11, "e":Ljava/lang/RuntimeException;
    move-object/from16 v0, p0

    #@748
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@74a
    move-object/from16 v21, v0

    #@74c
    new-instance v22, Ljava/lang/StringBuilder;

    #@74e
    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    #@751
    const-string/jumbo v23, "Can\'t find MAC address for next hop to "

    #@754
    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@757
    move-result-object v22

    #@758
    move-object/from16 v0, v17

    #@75a
    iget-object v0, v0, Lcom/android/server/connectivity/KeepalivePacketData;->dstAddress:Ljava/net/InetAddress;

    #@75c
    move-object/from16 v23, v0

    #@75e
    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@761
    move-result-object v22

    #@762
    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@765
    move-result-object v22

    #@766
    invoke-virtual/range {v21 .. v22}, Lcom/android/server/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V

    #@769
    .line 7348
    move-object/from16 v0, p0

    #@76b
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@76d
    move-object/from16 v21, v0

    #@76f
    invoke-static/range {v21 .. v21}, Lcom/android/server/wifi/WifiStateMachine;->-get35(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiStateMachine$WifiNetworkAgent;

    #@772
    move-result-object v21

    #@773
    .line 7349
    const/16 v22, -0x15

    #@775
    .line 7348
    move-object/from16 v0, v21

    #@777
    move/from16 v1, v20

    #@779
    move/from16 v2, v22

    #@77b
    invoke-virtual {v0, v1, v2}, Lcom/android/server/wifi/WifiStateMachine$WifiNetworkAgent;->onPacketKeepaliveEvent(II)V

    #@77e
    goto/16 :goto_0

    #@780
    .line 7118
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
