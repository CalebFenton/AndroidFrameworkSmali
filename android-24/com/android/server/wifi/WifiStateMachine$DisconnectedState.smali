.class Lcom/android/server/wifi/WifiStateMachine$DisconnectedState;
.super Lcom/android/internal/util/State;
.source "WifiStateMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifi/WifiStateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "DisconnectedState"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/wifi/WifiStateMachine;


# direct methods
.method constructor <init>(Lcom/android/server/wifi/WifiStateMachine;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/wifi/WifiStateMachine;

    #@0
    .prologue
    .line 7370
    iput-object p1, p0, Lcom/android/server/wifi/WifiStateMachine$DisconnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@2
    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    #@5
    return-void
.end method


# virtual methods
.method public enter()V
    .locals 5

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 7375
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$DisconnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@3
    invoke-static {v0}, Lcom/android/server/wifi/WifiStateMachine;->-get68(Lcom/android/server/wifi/WifiStateMachine;)Z

    #@6
    move-result v0

    #@7
    if-eqz v0, :cond_0

    #@9
    .line 7376
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$DisconnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@b
    invoke-static {v0}, Lcom/android/server/wifi/WifiStateMachine;->-get84(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/internal/util/AsyncChannel;

    #@e
    move-result-object v0

    #@f
    const v1, 0x2300d

    #@12
    invoke-virtual {v0, v1}, Lcom/android/internal/util/AsyncChannel;->sendMessage(I)V

    #@15
    .line 7377
    return-void

    #@16
    .line 7380
    :cond_0
    invoke-static {}, Lcom/android/server/wifi/WifiStateMachine;->-get0()Z

    #@19
    move-result v0

    #@1a
    if-eqz v0, :cond_1

    #@1c
    .line 7381
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$DisconnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@1e
    new-instance v1, Ljava/lang/StringBuilder;

    #@20
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@23
    const-string/jumbo v2, " Enter DisconnectedState screenOn="

    #@26
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@29
    move-result-object v1

    #@2a
    iget-object v2, p0, Lcom/android/server/wifi/WifiStateMachine$DisconnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@2c
    invoke-static {v2}, Lcom/android/server/wifi/WifiStateMachine;->-get53(Lcom/android/server/wifi/WifiStateMachine;)Z

    #@2f
    move-result v2

    #@30
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@33
    move-result-object v1

    #@34
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@37
    move-result-object v1

    #@38
    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiStateMachine;->logd(Ljava/lang/String;)V

    #@3b
    .line 7385
    :cond_1
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$DisconnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@3d
    invoke-static {v0, v4}, Lcom/android/server/wifi/WifiStateMachine;->-set5(Lcom/android/server/wifi/WifiStateMachine;Z)Z

    #@40
    .line 7387
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$DisconnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@42
    invoke-static {v0}, Lcom/android/server/wifi/WifiStateMachine;->-get75(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConnectivityManager;

    #@45
    move-result-object v0

    #@46
    if-eqz v0, :cond_2

    #@48
    .line 7388
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$DisconnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@4a
    invoke-static {v0}, Lcom/android/server/wifi/WifiStateMachine;->-get75(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConnectivityManager;

    #@4d
    move-result-object v0

    #@4e
    .line 7389
    const/4 v1, 0x2

    #@4f
    .line 7388
    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiConnectivityManager;->handleConnectionStateChanged(I)V

    #@52
    .line 7397
    :cond_2
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$DisconnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@54
    invoke-static {v0}, Lcom/android/server/wifi/WifiStateMachine;->-get39(Lcom/android/server/wifi/WifiStateMachine;)I

    #@57
    move-result v0

    #@58
    if-eqz v0, :cond_3

    #@5a
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$DisconnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@5c
    invoke-static {v0}, Lcom/android/server/wifi/WifiStateMachine;->-get43(Lcom/android/server/wifi/WifiStateMachine;)Ljava/util/concurrent/atomic/AtomicBoolean;

    #@5f
    move-result-object v0

    #@60
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    #@63
    move-result v0

    #@64
    if-eqz v0, :cond_4

    #@66
    .line 7403
    :cond_3
    :goto_0
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$DisconnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@68
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    #@6b
    move-result-wide v2

    #@6c
    invoke-static {v0, v2, v3}, Lcom/android/server/wifi/WifiStateMachine;->-set8(Lcom/android/server/wifi/WifiStateMachine;J)J

    #@6f
    .line 7372
    return-void

    #@70
    .line 7398
    :cond_4
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$DisconnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@72
    invoke-static {v0}, Lcom/android/server/wifi/WifiStateMachine;->-get73(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigManager;

    #@75
    move-result-object v0

    #@76
    invoke-virtual {v0}, Lcom/android/server/wifi/WifiConfigManager;->getSavedNetworks()Ljava/util/List;

    #@79
    move-result-object v0

    #@7a
    invoke-interface {v0}, Ljava/util/List;->size()I

    #@7d
    move-result v0

    #@7e
    if-nez v0, :cond_3

    #@80
    .line 7399
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$DisconnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@82
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine$DisconnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@84
    .line 7400
    iget-object v2, p0, Lcom/android/server/wifi/WifiStateMachine$DisconnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@86
    invoke-static {v2}, Lcom/android/server/wifi/WifiStateMachine;->-get45(Lcom/android/server/wifi/WifiStateMachine;)I

    #@89
    move-result v3

    #@8a
    add-int/lit8 v3, v3, 0x1

    #@8c
    invoke-static {v2, v3}, Lcom/android/server/wifi/WifiStateMachine;->-set21(Lcom/android/server/wifi/WifiStateMachine;I)I

    #@8f
    move-result v2

    #@90
    .line 7399
    const v3, 0x20058

    #@93
    invoke-virtual {v1, v3, v2, v4}, Lcom/android/server/wifi/WifiStateMachine;->obtainMessage(III)Landroid/os/Message;

    #@96
    move-result-object v1

    #@97
    .line 7400
    iget-object v2, p0, Lcom/android/server/wifi/WifiStateMachine$DisconnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@99
    invoke-static {v2}, Lcom/android/server/wifi/WifiStateMachine;->-get39(Lcom/android/server/wifi/WifiStateMachine;)I

    #@9c
    move-result v2

    #@9d
    int-to-long v2, v2

    #@9e
    .line 7399
    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/wifi/WifiStateMachine;->sendMessageDelayed(Landroid/os/Message;J)V

    #@a1
    goto :goto_0
.end method

.method public exit()V
    .locals 2

    #@0
    .prologue
    .line 7508
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$DisconnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@2
    invoke-static {v0}, Lcom/android/server/wifi/WifiStateMachine;->-get75(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConnectivityManager;

    #@5
    move-result-object v0

    #@6
    if-eqz v0, :cond_0

    #@8
    .line 7509
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$DisconnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@a
    invoke-static {v0}, Lcom/android/server/wifi/WifiStateMachine;->-get75(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConnectivityManager;

    #@d
    move-result-object v0

    #@e
    .line 7510
    const/4 v1, 0x3

    #@f
    .line 7509
    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiConnectivityManager;->handleConnectionStateChanged(I)V

    #@12
    .line 7507
    :cond_0
    return-void
.end method

.method public processMessage(Landroid/os/Message;)Z
    .locals 12
    .param p1, "message"    # Landroid/os/Message;

    #@0
    .prologue
    const v11, 0x20058

    #@3
    const/4 v10, -0x1

    #@4
    const/4 v6, 0x1

    #@5
    const/4 v7, 0x0

    #@6
    .line 7407
    const/4 v2, 0x1

    #@7
    .line 7409
    .local v2, "ret":Z
    iget-object v8, p0, Lcom/android/server/wifi/WifiStateMachine$DisconnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@9
    invoke-static {v8, p1, p0}, Lcom/android/server/wifi/WifiStateMachine;->-wrap28(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;Lcom/android/internal/util/State;)V

    #@c
    .line 7411
    iget v8, p1, Landroid/os/Message;->what:I

    #@e
    sparse-switch v8, :sswitch_data_0

    #@11
    .line 7501
    const/4 v2, 0x0

    #@12
    .line 7503
    :cond_0
    :goto_0
    :sswitch_0
    return v2

    #@13
    .line 7413
    :sswitch_1
    iget-object v6, p0, Lcom/android/server/wifi/WifiStateMachine$DisconnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@15
    invoke-static {v6}, Lcom/android/server/wifi/WifiStateMachine;->-get43(Lcom/android/server/wifi/WifiStateMachine;)Ljava/util/concurrent/atomic/AtomicBoolean;

    #@18
    move-result-object v6

    #@19
    invoke-virtual {v6}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    #@1c
    move-result v6

    #@1d
    if-nez v6, :cond_0

    #@1f
    .line 7414
    iget-object v6, p0, Lcom/android/server/wifi/WifiStateMachine$DisconnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@21
    invoke-static {v6}, Lcom/android/server/wifi/WifiStateMachine;->-get39(Lcom/android/server/wifi/WifiStateMachine;)I

    #@24
    move-result v6

    #@25
    if-eqz v6, :cond_0

    #@27
    iget v6, p1, Landroid/os/Message;->arg1:I

    #@29
    iget-object v8, p0, Lcom/android/server/wifi/WifiStateMachine$DisconnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@2b
    invoke-static {v8}, Lcom/android/server/wifi/WifiStateMachine;->-get45(Lcom/android/server/wifi/WifiStateMachine;)I

    #@2e
    move-result v8

    #@2f
    if-ne v6, v8, :cond_0

    #@31
    .line 7415
    iget-object v6, p0, Lcom/android/server/wifi/WifiStateMachine$DisconnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@33
    invoke-static {v6}, Lcom/android/server/wifi/WifiStateMachine;->-get73(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigManager;

    #@36
    move-result-object v6

    #@37
    invoke-virtual {v6}, Lcom/android/server/wifi/WifiConfigManager;->getSavedNetworks()Ljava/util/List;

    #@3a
    move-result-object v6

    #@3b
    invoke-interface {v6}, Ljava/util/List;->size()I

    #@3e
    move-result v6

    #@3f
    if-nez v6, :cond_0

    #@41
    .line 7416
    iget-object v6, p0, Lcom/android/server/wifi/WifiStateMachine$DisconnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@43
    sget-object v8, Lcom/android/server/wifi/WifiStateMachine;->WIFI_WORK_SOURCE:Landroid/os/WorkSource;

    #@45
    const/4 v9, 0x0

    #@46
    invoke-virtual {v6, v10, v10, v9, v8}, Lcom/android/server/wifi/WifiStateMachine;->startScan(IILandroid/net/wifi/ScanSettings;Landroid/os/WorkSource;)V

    #@49
    .line 7417
    iget-object v6, p0, Lcom/android/server/wifi/WifiStateMachine$DisconnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@4b
    iget-object v8, p0, Lcom/android/server/wifi/WifiStateMachine$DisconnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@4d
    .line 7418
    iget-object v9, p0, Lcom/android/server/wifi/WifiStateMachine$DisconnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@4f
    invoke-static {v9}, Lcom/android/server/wifi/WifiStateMachine;->-get45(Lcom/android/server/wifi/WifiStateMachine;)I

    #@52
    move-result v10

    #@53
    add-int/lit8 v10, v10, 0x1

    #@55
    invoke-static {v9, v10}, Lcom/android/server/wifi/WifiStateMachine;->-set21(Lcom/android/server/wifi/WifiStateMachine;I)I

    #@58
    move-result v9

    #@59
    .line 7417
    invoke-virtual {v8, v11, v9, v7}, Lcom/android/server/wifi/WifiStateMachine;->obtainMessage(III)Landroid/os/Message;

    #@5c
    move-result-object v7

    #@5d
    .line 7418
    iget-object v8, p0, Lcom/android/server/wifi/WifiStateMachine$DisconnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@5f
    invoke-static {v8}, Lcom/android/server/wifi/WifiStateMachine;->-get39(Lcom/android/server/wifi/WifiStateMachine;)I

    #@62
    move-result v8

    #@63
    int-to-long v8, v8

    #@64
    .line 7417
    invoke-virtual {v6, v7, v8, v9}, Lcom/android/server/wifi/WifiStateMachine;->sendMessageDelayed(Landroid/os/Message;J)V

    #@67
    goto :goto_0

    #@68
    .line 7428
    :sswitch_2
    iget-object v6, p0, Lcom/android/server/wifi/WifiStateMachine$DisconnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@6a
    iget-object v8, p0, Lcom/android/server/wifi/WifiStateMachine$DisconnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@6c
    .line 7429
    iget-object v9, p0, Lcom/android/server/wifi/WifiStateMachine$DisconnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@6e
    invoke-static {v9}, Lcom/android/server/wifi/WifiStateMachine;->-get45(Lcom/android/server/wifi/WifiStateMachine;)I

    #@71
    move-result v10

    #@72
    add-int/lit8 v10, v10, 0x1

    #@74
    invoke-static {v9, v10}, Lcom/android/server/wifi/WifiStateMachine;->-set21(Lcom/android/server/wifi/WifiStateMachine;I)I

    #@77
    move-result v9

    #@78
    .line 7428
    invoke-virtual {v8, v11, v9, v7}, Lcom/android/server/wifi/WifiStateMachine;->obtainMessage(III)Landroid/os/Message;

    #@7b
    move-result-object v7

    #@7c
    .line 7429
    iget-object v8, p0, Lcom/android/server/wifi/WifiStateMachine$DisconnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@7e
    invoke-static {v8}, Lcom/android/server/wifi/WifiStateMachine;->-get39(Lcom/android/server/wifi/WifiStateMachine;)I

    #@81
    move-result v8

    #@82
    int-to-long v8, v8

    #@83
    .line 7428
    invoke-virtual {v6, v7, v8, v9}, Lcom/android/server/wifi/WifiStateMachine;->sendMessageDelayed(Landroid/os/Message;J)V

    #@86
    .line 7430
    const/4 v2, 0x0

    #@87
    .line 7431
    goto :goto_0

    #@88
    .line 7433
    :sswitch_3
    iget v7, p1, Landroid/os/Message;->arg1:I

    #@8a
    if-eq v7, v6, :cond_2

    #@8c
    .line 7434
    iget-object v7, p0, Lcom/android/server/wifi/WifiStateMachine$DisconnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@8e
    iget v8, p1, Landroid/os/Message;->arg1:I

    #@90
    invoke-static {v7, v8}, Lcom/android/server/wifi/WifiStateMachine;->-set20(Lcom/android/server/wifi/WifiStateMachine;I)I

    #@93
    .line 7435
    iget-object v7, p0, Lcom/android/server/wifi/WifiStateMachine$DisconnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@95
    invoke-static {v7}, Lcom/android/server/wifi/WifiStateMachine;->-get73(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigManager;

    #@98
    move-result-object v7

    #@99
    invoke-virtual {v7}, Lcom/android/server/wifi/WifiConfigManager;->disableAllNetworksNative()V

    #@9c
    .line 7436
    iget-object v7, p0, Lcom/android/server/wifi/WifiStateMachine$DisconnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@9e
    invoke-static {v7}, Lcom/android/server/wifi/WifiStateMachine;->-get42(Lcom/android/server/wifi/WifiStateMachine;)I

    #@a1
    move-result v7

    #@a2
    const/4 v8, 0x3

    #@a3
    if-ne v7, v8, :cond_1

    #@a5
    .line 7437
    iget-object v7, p0, Lcom/android/server/wifi/WifiStateMachine$DisconnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@a7
    invoke-static {v7}, Lcom/android/server/wifi/WifiStateMachine;->-get84(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/internal/util/AsyncChannel;

    #@aa
    move-result-object v7

    #@ab
    const v8, 0x20084

    #@ae
    invoke-virtual {v7, v8}, Lcom/android/internal/util/AsyncChannel;->sendMessage(I)V

    #@b1
    .line 7438
    iget-object v7, p0, Lcom/android/server/wifi/WifiStateMachine$DisconnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@b3
    invoke-static {v7, v6}, Lcom/android/server/wifi/WifiStateMachine;->-wrap43(Lcom/android/server/wifi/WifiStateMachine;I)V

    #@b6
    .line 7440
    :cond_1
    iget-object v6, p0, Lcom/android/server/wifi/WifiStateMachine$DisconnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@b8
    iget-object v7, p0, Lcom/android/server/wifi/WifiStateMachine$DisconnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@ba
    invoke-static {v7}, Lcom/android/server/wifi/WifiStateMachine;->-get51(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/internal/util/State;

    #@bd
    move-result-object v7

    #@be
    invoke-static {v6, v7}, Lcom/android/server/wifi/WifiStateMachine;->-wrap45(Lcom/android/server/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V

    #@c1
    .line 7442
    :cond_2
    iget-object v6, p0, Lcom/android/server/wifi/WifiStateMachine$DisconnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@c3
    invoke-static {v6}, Lcom/android/server/wifi/WifiStateMachine;->-get73(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigManager;

    #@c6
    move-result-object v6

    #@c7
    invoke-virtual {v6, v10}, Lcom/android/server/wifi/WifiConfigManager;->setAndEnableLastSelectedConfiguration(I)V

    #@ca
    goto/16 :goto_0

    #@cc
    .line 7451
    :sswitch_4
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@ce
    check-cast v3, Lcom/android/server/wifi/StateChangeResult;

    #@d0
    .line 7452
    .local v3, "stateChangeResult":Lcom/android/server/wifi/StateChangeResult;
    invoke-static {}, Lcom/android/server/wifi/WifiStateMachine;->-get0()Z

    #@d3
    move-result v6

    #@d4
    if-eqz v6, :cond_3

    #@d6
    .line 7453
    iget-object v6, p0, Lcom/android/server/wifi/WifiStateMachine$DisconnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@d8
    new-instance v7, Ljava/lang/StringBuilder;

    #@da
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    #@dd
    const-string/jumbo v8, "SUPPLICANT_STATE_CHANGE_EVENT state="

    #@e0
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@e3
    move-result-object v7

    #@e4
    iget-object v8, v3, Lcom/android/server/wifi/StateChangeResult;->state:Landroid/net/wifi/SupplicantState;

    #@e6
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@e9
    move-result-object v7

    #@ea
    .line 7454
    const-string/jumbo v8, " -> state= "

    #@ed
    .line 7453
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@f0
    move-result-object v7

    #@f1
    .line 7454
    iget-object v8, v3, Lcom/android/server/wifi/StateChangeResult;->state:Landroid/net/wifi/SupplicantState;

    #@f3
    invoke-static {v8}, Landroid/net/wifi/WifiInfo;->getDetailedStateOf(Landroid/net/wifi/SupplicantState;)Landroid/net/NetworkInfo$DetailedState;

    #@f6
    move-result-object v8

    #@f7
    .line 7453
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@fa
    move-result-object v7

    #@fb
    .line 7455
    const-string/jumbo v8, " debouncing="

    #@fe
    .line 7453
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@101
    move-result-object v7

    #@102
    .line 7455
    iget-object v8, p0, Lcom/android/server/wifi/WifiStateMachine$DisconnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@104
    invoke-static {v8}, Lcom/android/server/wifi/WifiStateMachine;->-get5(Lcom/android/server/wifi/WifiStateMachine;)Z

    #@107
    move-result v8

    #@108
    .line 7453
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@10b
    move-result-object v7

    #@10c
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@10f
    move-result-object v7

    #@110
    invoke-virtual {v6, v7}, Lcom/android/server/wifi/WifiStateMachine;->logd(Ljava/lang/String;)V

    #@113
    .line 7457
    :cond_3
    iget-object v6, p0, Lcom/android/server/wifi/WifiStateMachine$DisconnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@115
    iget-object v7, v3, Lcom/android/server/wifi/StateChangeResult;->state:Landroid/net/wifi/SupplicantState;

    #@117
    invoke-static {v7}, Landroid/net/wifi/WifiInfo;->getDetailedStateOf(Landroid/net/wifi/SupplicantState;)Landroid/net/NetworkInfo$DetailedState;

    #@11a
    move-result-object v7

    #@11b
    invoke-static {v6, v7}, Lcom/android/server/wifi/WifiStateMachine;->-wrap3(Lcom/android/server/wifi/WifiStateMachine;Landroid/net/NetworkInfo$DetailedState;)Z

    #@11e
    .line 7459
    const/4 v2, 0x0

    #@11f
    .line 7460
    goto/16 :goto_0

    #@121
    .line 7462
    .end local v3    # "stateChangeResult":Lcom/android/server/wifi/StateChangeResult;
    :sswitch_5
    iget-object v7, p0, Lcom/android/server/wifi/WifiStateMachine$DisconnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@123
    invoke-static {v7, p1}, Lcom/android/server/wifi/WifiStateMachine;->-wrap2(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;)Z

    #@126
    move-result v7

    #@127
    if-nez v7, :cond_4

    #@129
    .line 7464
    iget-object v7, p0, Lcom/android/server/wifi/WifiStateMachine$DisconnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@12b
    invoke-static {}, Lcom/android/server/wifi/WifiStateMachine;->-get4()I

    #@12e
    move-result v8

    #@12f
    invoke-static {v7, v8}, Lcom/android/server/wifi/WifiStateMachine;->-set38(Lcom/android/server/wifi/WifiStateMachine;I)I

    #@132
    .line 7465
    return v6

    #@133
    .line 7468
    :cond_4
    const/4 v2, 0x0

    #@134
    .line 7469
    goto/16 :goto_0

    #@136
    .line 7471
    :sswitch_6
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@138
    check-cast v1, Landroid/net/NetworkInfo;

    #@13a
    .line 7472
    .local v1, "info":Landroid/net/NetworkInfo;
    iget-object v6, p0, Lcom/android/server/wifi/WifiStateMachine$DisconnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@13c
    invoke-static {v6}, Lcom/android/server/wifi/WifiStateMachine;->-get43(Lcom/android/server/wifi/WifiStateMachine;)Ljava/util/concurrent/atomic/AtomicBoolean;

    #@13f
    move-result-object v6

    #@140
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isConnected()Z

    #@143
    move-result v8

    #@144
    invoke-virtual {v6, v8}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    #@147
    .line 7473
    iget-object v6, p0, Lcom/android/server/wifi/WifiStateMachine$DisconnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@149
    invoke-static {v6}, Lcom/android/server/wifi/WifiStateMachine;->-get43(Lcom/android/server/wifi/WifiStateMachine;)Ljava/util/concurrent/atomic/AtomicBoolean;

    #@14c
    move-result-object v6

    #@14d
    invoke-virtual {v6}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    #@150
    move-result v6

    #@151
    if-eqz v6, :cond_5

    #@153
    .line 7474
    iget-object v6, p0, Lcom/android/server/wifi/WifiStateMachine$DisconnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@155
    invoke-static {v6}, Lcom/android/server/wifi/WifiStateMachine;->-get14(Lcom/android/server/wifi/WifiStateMachine;)Landroid/content/Context;

    #@158
    move-result-object v6

    #@159
    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@15c
    move-result-object v6

    #@15d
    .line 7475
    const v7, 0x10e002e

    #@160
    .line 7474
    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getInteger(I)I

    #@163
    move-result v0

    #@164
    .line 7476
    .local v0, "defaultInterval":I
    iget-object v6, p0, Lcom/android/server/wifi/WifiStateMachine$DisconnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@166
    invoke-static {v6}, Lcom/android/server/wifi/WifiStateMachine;->-get24(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/FrameworkFacade;

    #@169
    move-result-object v6

    #@16a
    iget-object v7, p0, Lcom/android/server/wifi/WifiStateMachine$DisconnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@16c
    invoke-static {v7}, Lcom/android/server/wifi/WifiStateMachine;->-get14(Lcom/android/server/wifi/WifiStateMachine;)Landroid/content/Context;

    #@16f
    move-result-object v7

    #@170
    .line 7477
    const-string/jumbo v8, "wifi_scan_interval_p2p_connected_ms"

    #@173
    .line 7478
    int-to-long v10, v0

    #@174
    .line 7476
    invoke-virtual {v6, v7, v8, v10, v11}, Lcom/android/server/wifi/FrameworkFacade;->getLongSetting(Landroid/content/Context;Ljava/lang/String;J)J

    #@177
    move-result-wide v4

    #@178
    .line 7479
    .local v4, "scanIntervalMs":J
    iget-object v6, p0, Lcom/android/server/wifi/WifiStateMachine$DisconnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@17a
    invoke-static {v6}, Lcom/android/server/wifi/WifiStateMachine;->-get83(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiNative;

    #@17d
    move-result-object v6

    #@17e
    long-to-int v7, v4

    #@17f
    div-int/lit16 v7, v7, 0x3e8

    #@181
    invoke-virtual {v6, v7}, Lcom/android/server/wifi/WifiNative;->setScanInterval(I)V

    #@184
    goto/16 :goto_0

    #@186
    .line 7480
    .end local v0    # "defaultInterval":I
    .end local v4    # "scanIntervalMs":J
    :cond_5
    iget-object v6, p0, Lcom/android/server/wifi/WifiStateMachine$DisconnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@188
    invoke-static {v6}, Lcom/android/server/wifi/WifiStateMachine;->-get73(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigManager;

    #@18b
    move-result-object v6

    #@18c
    invoke-virtual {v6}, Lcom/android/server/wifi/WifiConfigManager;->getSavedNetworks()Ljava/util/List;

    #@18f
    move-result-object v6

    #@190
    invoke-interface {v6}, Ljava/util/List;->size()I

    #@193
    move-result v6

    #@194
    if-nez v6, :cond_0

    #@196
    .line 7481
    invoke-static {}, Lcom/android/server/wifi/WifiStateMachine;->-get0()Z

    #@199
    move-result v6

    #@19a
    if-eqz v6, :cond_6

    #@19c
    iget-object v6, p0, Lcom/android/server/wifi/WifiStateMachine$DisconnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@19e
    const-string/jumbo v8, "Turn on scanning after p2p disconnected"

    #@1a1
    invoke-virtual {v6, v8}, Lcom/android/server/wifi/WifiStateMachine;->log(Ljava/lang/String;)V

    #@1a4
    .line 7482
    :cond_6
    iget-object v6, p0, Lcom/android/server/wifi/WifiStateMachine$DisconnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@1a6
    iget-object v8, p0, Lcom/android/server/wifi/WifiStateMachine$DisconnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@1a8
    .line 7483
    iget-object v9, p0, Lcom/android/server/wifi/WifiStateMachine$DisconnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@1aa
    invoke-static {v9}, Lcom/android/server/wifi/WifiStateMachine;->-get45(Lcom/android/server/wifi/WifiStateMachine;)I

    #@1ad
    move-result v10

    #@1ae
    add-int/lit8 v10, v10, 0x1

    #@1b0
    invoke-static {v9, v10}, Lcom/android/server/wifi/WifiStateMachine;->-set21(Lcom/android/server/wifi/WifiStateMachine;I)I

    #@1b3
    move-result v9

    #@1b4
    .line 7482
    invoke-virtual {v8, v11, v9, v7}, Lcom/android/server/wifi/WifiStateMachine;->obtainMessage(III)Landroid/os/Message;

    #@1b7
    move-result-object v7

    #@1b8
    .line 7483
    iget-object v8, p0, Lcom/android/server/wifi/WifiStateMachine$DisconnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@1ba
    invoke-static {v8}, Lcom/android/server/wifi/WifiStateMachine;->-get39(Lcom/android/server/wifi/WifiStateMachine;)I

    #@1bd
    move-result v8

    #@1be
    int-to-long v8, v8

    #@1bf
    .line 7482
    invoke-virtual {v6, v7, v8, v9}, Lcom/android/server/wifi/WifiStateMachine;->sendMessageDelayed(Landroid/os/Message;J)V

    #@1c2
    goto/16 :goto_0

    #@1c4
    .line 7488
    .end local v1    # "info":Landroid/net/NetworkInfo;
    :sswitch_7
    iget-object v6, p0, Lcom/android/server/wifi/WifiStateMachine$DisconnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@1c6
    invoke-static {v6}, Lcom/android/server/wifi/WifiStateMachine;->-get68(Lcom/android/server/wifi/WifiStateMachine;)Z

    #@1c9
    move-result v6

    #@1ca
    if-nez v6, :cond_0

    #@1cc
    .line 7494
    const/4 v2, 0x0

    #@1cd
    goto/16 :goto_0

    #@1cf
    .line 7498
    :sswitch_8
    iget-object v8, p0, Lcom/android/server/wifi/WifiStateMachine$DisconnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@1d1
    iget v9, p1, Landroid/os/Message;->arg1:I

    #@1d3
    if-eqz v9, :cond_7

    #@1d5
    :goto_1
    invoke-static {v8, v6}, Lcom/android/server/wifi/WifiStateMachine;->-wrap25(Lcom/android/server/wifi/WifiStateMachine;Z)V

    #@1d8
    goto/16 :goto_0

    #@1da
    :cond_7
    move v6, v7

    #@1db
    goto :goto_1

    #@1dc
    .line 7411
    :sswitch_data_0
    .sparse-switch
        0x20035 -> :sswitch_2
        0x20047 -> :sswitch_5
        0x20048 -> :sswitch_3
        0x2004a -> :sswitch_7
        0x2004b -> :sswitch_7
        0x20058 -> :sswitch_1
        0x2005f -> :sswitch_8
        0x20061 -> :sswitch_2
        0x20098 -> :sswitch_2
        0x2300b -> :sswitch_6
        0x24004 -> :sswitch_0
        0x24006 -> :sswitch_4
        0x25004 -> :sswitch_2
    .end sparse-switch
.end method
