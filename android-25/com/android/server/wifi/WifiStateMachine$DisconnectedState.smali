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
    .line 7437
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
    .line 7442
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$DisconnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@3
    invoke-static {v0}, Lcom/android/server/wifi/WifiStateMachine;->-get68(Lcom/android/server/wifi/WifiStateMachine;)Z

    #@6
    move-result v0

    #@7
    if-eqz v0, :cond_0

    #@9
    .line 7443
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$DisconnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@b
    invoke-static {v0}, Lcom/android/server/wifi/WifiStateMachine;->-get85(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/internal/util/AsyncChannel;

    #@e
    move-result-object v0

    #@f
    const v1, 0x2300d

    #@12
    invoke-virtual {v0, v1}, Lcom/android/internal/util/AsyncChannel;->sendMessage(I)V

    #@15
    .line 7444
    return-void

    #@16
    .line 7447
    :cond_0
    invoke-static {}, Lcom/android/server/wifi/WifiStateMachine;->-get0()Z

    #@19
    move-result v0

    #@1a
    if-eqz v0, :cond_1

    #@1c
    .line 7448
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
    .line 7452
    :cond_1
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$DisconnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@3d
    invoke-static {v0, v4}, Lcom/android/server/wifi/WifiStateMachine;->-set5(Lcom/android/server/wifi/WifiStateMachine;Z)Z

    #@40
    .line 7454
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$DisconnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@42
    invoke-static {v0}, Lcom/android/server/wifi/WifiStateMachine;->-get76(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConnectivityManager;

    #@45
    move-result-object v0

    #@46
    if-eqz v0, :cond_2

    #@48
    .line 7455
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$DisconnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@4a
    invoke-static {v0}, Lcom/android/server/wifi/WifiStateMachine;->-get76(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConnectivityManager;

    #@4d
    move-result-object v0

    #@4e
    .line 7456
    const/4 v1, 0x2

    #@4f
    .line 7455
    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiConnectivityManager;->handleConnectionStateChanged(I)V

    #@52
    .line 7464
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
    .line 7470
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
    .line 7439
    return-void

    #@70
    .line 7465
    :cond_4
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$DisconnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@72
    invoke-static {v0}, Lcom/android/server/wifi/WifiStateMachine;->-get74(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigManager;

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
    .line 7466
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$DisconnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@82
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine$DisconnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@84
    .line 7467
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
    .line 7466
    const v3, 0x20058

    #@93
    invoke-virtual {v1, v3, v2, v4}, Lcom/android/server/wifi/WifiStateMachine;->obtainMessage(III)Landroid/os/Message;

    #@96
    move-result-object v1

    #@97
    .line 7467
    iget-object v2, p0, Lcom/android/server/wifi/WifiStateMachine$DisconnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@99
    invoke-static {v2}, Lcom/android/server/wifi/WifiStateMachine;->-get39(Lcom/android/server/wifi/WifiStateMachine;)I

    #@9c
    move-result v2

    #@9d
    int-to-long v2, v2

    #@9e
    .line 7466
    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/wifi/WifiStateMachine;->sendMessageDelayed(Landroid/os/Message;J)V

    #@a1
    goto :goto_0
.end method

.method public exit()V
    .locals 2

    #@0
    .prologue
    .line 7587
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$DisconnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@2
    invoke-static {v0}, Lcom/android/server/wifi/WifiStateMachine;->-get76(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConnectivityManager;

    #@5
    move-result-object v0

    #@6
    if-eqz v0, :cond_0

    #@8
    .line 7588
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$DisconnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@a
    invoke-static {v0}, Lcom/android/server/wifi/WifiStateMachine;->-get76(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConnectivityManager;

    #@d
    move-result-object v0

    #@e
    .line 7589
    const/4 v1, 0x3

    #@f
    .line 7588
    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiConnectivityManager;->handleConnectionStateChanged(I)V

    #@12
    .line 7586
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
    const/4 v6, 0x1

    #@4
    const/4 v10, -0x1

    #@5
    const/4 v7, 0x0

    #@6
    .line 7474
    const/4 v2, 0x1

    #@7
    .line 7476
    .local v2, "ret":Z
    iget-object v8, p0, Lcom/android/server/wifi/WifiStateMachine$DisconnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@9
    invoke-static {v8, p1, p0}, Lcom/android/server/wifi/WifiStateMachine;->-wrap28(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;Lcom/android/internal/util/State;)V

    #@c
    .line 7478
    iget v8, p1, Landroid/os/Message;->what:I

    #@e
    sparse-switch v8, :sswitch_data_0

    #@11
    .line 7580
    const/4 v2, 0x0

    #@12
    .line 7582
    :cond_0
    :goto_0
    :sswitch_0
    return v2

    #@13
    .line 7480
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
    .line 7481
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
    .line 7482
    iget-object v6, p0, Lcom/android/server/wifi/WifiStateMachine$DisconnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@33
    invoke-static {v6}, Lcom/android/server/wifi/WifiStateMachine;->-get74(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigManager;

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
    .line 7483
    iget-object v6, p0, Lcom/android/server/wifi/WifiStateMachine$DisconnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@43
    sget-object v8, Lcom/android/server/wifi/WifiStateMachine;->WIFI_WORK_SOURCE:Landroid/os/WorkSource;

    #@45
    const/4 v9, 0x0

    #@46
    invoke-virtual {v6, v10, v10, v9, v8}, Lcom/android/server/wifi/WifiStateMachine;->startScan(IILandroid/net/wifi/ScanSettings;Landroid/os/WorkSource;)V

    #@49
    .line 7484
    iget-object v6, p0, Lcom/android/server/wifi/WifiStateMachine$DisconnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@4b
    iget-object v8, p0, Lcom/android/server/wifi/WifiStateMachine$DisconnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@4d
    .line 7485
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
    .line 7484
    invoke-virtual {v8, v11, v9, v7}, Lcom/android/server/wifi/WifiStateMachine;->obtainMessage(III)Landroid/os/Message;

    #@5c
    move-result-object v7

    #@5d
    .line 7485
    iget-object v8, p0, Lcom/android/server/wifi/WifiStateMachine$DisconnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@5f
    invoke-static {v8}, Lcom/android/server/wifi/WifiStateMachine;->-get39(Lcom/android/server/wifi/WifiStateMachine;)I

    #@62
    move-result v8

    #@63
    int-to-long v8, v8

    #@64
    .line 7484
    invoke-virtual {v6, v7, v8, v9}, Lcom/android/server/wifi/WifiStateMachine;->sendMessageDelayed(Landroid/os/Message;J)V

    #@67
    goto :goto_0

    #@68
    .line 7495
    :sswitch_2
    iget-object v6, p0, Lcom/android/server/wifi/WifiStateMachine$DisconnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@6a
    iget-object v8, p0, Lcom/android/server/wifi/WifiStateMachine$DisconnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@6c
    .line 7496
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
    .line 7495
    invoke-virtual {v8, v11, v9, v7}, Lcom/android/server/wifi/WifiStateMachine;->obtainMessage(III)Landroid/os/Message;

    #@7b
    move-result-object v7

    #@7c
    .line 7496
    iget-object v8, p0, Lcom/android/server/wifi/WifiStateMachine$DisconnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@7e
    invoke-static {v8}, Lcom/android/server/wifi/WifiStateMachine;->-get39(Lcom/android/server/wifi/WifiStateMachine;)I

    #@81
    move-result v8

    #@82
    int-to-long v8, v8

    #@83
    .line 7495
    invoke-virtual {v6, v7, v8, v9}, Lcom/android/server/wifi/WifiStateMachine;->sendMessageDelayed(Landroid/os/Message;J)V

    #@86
    .line 7497
    const/4 v2, 0x0

    #@87
    .line 7498
    goto :goto_0

    #@88
    .line 7500
    :sswitch_3
    iget v7, p1, Landroid/os/Message;->arg1:I

    #@8a
    if-eq v7, v6, :cond_2

    #@8c
    .line 7501
    iget-object v7, p0, Lcom/android/server/wifi/WifiStateMachine$DisconnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@8e
    iget v8, p1, Landroid/os/Message;->arg1:I

    #@90
    invoke-static {v7, v8}, Lcom/android/server/wifi/WifiStateMachine;->-set20(Lcom/android/server/wifi/WifiStateMachine;I)I

    #@93
    .line 7502
    iget-object v7, p0, Lcom/android/server/wifi/WifiStateMachine$DisconnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@95
    invoke-static {v7}, Lcom/android/server/wifi/WifiStateMachine;->-get74(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigManager;

    #@98
    move-result-object v7

    #@99
    invoke-virtual {v7}, Lcom/android/server/wifi/WifiConfigManager;->disableAllNetworksNative()V

    #@9c
    .line 7503
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
    .line 7504
    iget-object v7, p0, Lcom/android/server/wifi/WifiStateMachine$DisconnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@a7
    invoke-static {v7}, Lcom/android/server/wifi/WifiStateMachine;->-get85(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/internal/util/AsyncChannel;

    #@aa
    move-result-object v7

    #@ab
    const v8, 0x20084

    #@ae
    invoke-virtual {v7, v8}, Lcom/android/internal/util/AsyncChannel;->sendMessage(I)V

    #@b1
    .line 7505
    iget-object v7, p0, Lcom/android/server/wifi/WifiStateMachine$DisconnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@b3
    invoke-static {v7, v6}, Lcom/android/server/wifi/WifiStateMachine;->-wrap43(Lcom/android/server/wifi/WifiStateMachine;I)V

    #@b6
    .line 7507
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
    .line 7509
    :cond_2
    iget-object v6, p0, Lcom/android/server/wifi/WifiStateMachine$DisconnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@c3
    invoke-static {v6}, Lcom/android/server/wifi/WifiStateMachine;->-get74(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigManager;

    #@c6
    move-result-object v6

    #@c7
    invoke-virtual {v6, v10}, Lcom/android/server/wifi/WifiConfigManager;->setAndEnableLastSelectedConfiguration(I)V

    #@ca
    goto/16 :goto_0

    #@cc
    .line 7514
    :sswitch_4
    iget-object v6, p0, Lcom/android/server/wifi/WifiStateMachine$DisconnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@ce
    invoke-static {v6}, Lcom/android/server/wifi/WifiStateMachine;->-get77(Lcom/android/server/wifi/WifiStateMachine;)Landroid/net/wifi/WifiInfo;

    #@d1
    move-result-object v6

    #@d2
    invoke-virtual {v6}, Landroid/net/wifi/WifiInfo;->getSupplicantState()Landroid/net/wifi/SupplicantState;

    #@d5
    move-result-object v6

    #@d6
    invoke-static {v6}, Landroid/net/wifi/SupplicantState;->isConnecting(Landroid/net/wifi/SupplicantState;)Z

    #@d9
    move-result v6

    #@da
    if-eqz v6, :cond_4

    #@dc
    .line 7515
    invoke-static {}, Lcom/android/server/wifi/WifiStateMachine;->-get0()Z

    #@df
    move-result v6

    #@e0
    if-eqz v6, :cond_3

    #@e2
    .line 7516
    iget-object v6, p0, Lcom/android/server/wifi/WifiStateMachine$DisconnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@e4
    const-string/jumbo v7, "CMD_DISCONNECT when supplicant is connecting - do not ignore"

    #@e7
    invoke-virtual {v6, v7}, Lcom/android/server/wifi/WifiStateMachine;->log(Ljava/lang/String;)V

    #@ea
    .line 7518
    :cond_3
    iget-object v6, p0, Lcom/android/server/wifi/WifiStateMachine$DisconnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@ec
    invoke-static {v6}, Lcom/android/server/wifi/WifiStateMachine;->-get74(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigManager;

    #@ef
    move-result-object v6

    #@f0
    invoke-virtual {v6, v10}, Lcom/android/server/wifi/WifiConfigManager;->setAndEnableLastSelectedConfiguration(I)V

    #@f3
    .line 7520
    iget-object v6, p0, Lcom/android/server/wifi/WifiStateMachine$DisconnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@f5
    invoke-static {v6}, Lcom/android/server/wifi/WifiStateMachine;->-get84(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiNative;

    #@f8
    move-result-object v6

    #@f9
    invoke-virtual {v6}, Lcom/android/server/wifi/WifiNative;->disconnect()Z

    #@fc
    goto/16 :goto_0

    #@fe
    .line 7523
    :cond_4
    invoke-static {}, Lcom/android/server/wifi/WifiStateMachine;->-get0()Z

    #@101
    move-result v6

    #@102
    if-eqz v6, :cond_0

    #@104
    iget-object v6, p0, Lcom/android/server/wifi/WifiStateMachine$DisconnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@106
    const-string/jumbo v7, "Ignore CMD_DISCONNECT when already disconnected."

    #@109
    invoke-virtual {v6, v7}, Lcom/android/server/wifi/WifiStateMachine;->log(Ljava/lang/String;)V

    #@10c
    goto/16 :goto_0

    #@10e
    .line 7530
    :sswitch_5
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@110
    check-cast v3, Lcom/android/server/wifi/StateChangeResult;

    #@112
    .line 7531
    .local v3, "stateChangeResult":Lcom/android/server/wifi/StateChangeResult;
    invoke-static {}, Lcom/android/server/wifi/WifiStateMachine;->-get0()Z

    #@115
    move-result v6

    #@116
    if-eqz v6, :cond_5

    #@118
    .line 7532
    iget-object v6, p0, Lcom/android/server/wifi/WifiStateMachine$DisconnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@11a
    new-instance v7, Ljava/lang/StringBuilder;

    #@11c
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    #@11f
    const-string/jumbo v8, "SUPPLICANT_STATE_CHANGE_EVENT state="

    #@122
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@125
    move-result-object v7

    #@126
    iget-object v8, v3, Lcom/android/server/wifi/StateChangeResult;->state:Landroid/net/wifi/SupplicantState;

    #@128
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@12b
    move-result-object v7

    #@12c
    .line 7533
    const-string/jumbo v8, " -> state= "

    #@12f
    .line 7532
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@132
    move-result-object v7

    #@133
    .line 7533
    iget-object v8, v3, Lcom/android/server/wifi/StateChangeResult;->state:Landroid/net/wifi/SupplicantState;

    #@135
    invoke-static {v8}, Landroid/net/wifi/WifiInfo;->getDetailedStateOf(Landroid/net/wifi/SupplicantState;)Landroid/net/NetworkInfo$DetailedState;

    #@138
    move-result-object v8

    #@139
    .line 7532
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@13c
    move-result-object v7

    #@13d
    .line 7534
    const-string/jumbo v8, " debouncing="

    #@140
    .line 7532
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@143
    move-result-object v7

    #@144
    .line 7534
    iget-object v8, p0, Lcom/android/server/wifi/WifiStateMachine$DisconnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@146
    invoke-static {v8}, Lcom/android/server/wifi/WifiStateMachine;->-get5(Lcom/android/server/wifi/WifiStateMachine;)Z

    #@149
    move-result v8

    #@14a
    .line 7532
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@14d
    move-result-object v7

    #@14e
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@151
    move-result-object v7

    #@152
    invoke-virtual {v6, v7}, Lcom/android/server/wifi/WifiStateMachine;->logd(Ljava/lang/String;)V

    #@155
    .line 7536
    :cond_5
    iget-object v6, p0, Lcom/android/server/wifi/WifiStateMachine$DisconnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@157
    iget-object v7, v3, Lcom/android/server/wifi/StateChangeResult;->state:Landroid/net/wifi/SupplicantState;

    #@159
    invoke-static {v7}, Landroid/net/wifi/WifiInfo;->getDetailedStateOf(Landroid/net/wifi/SupplicantState;)Landroid/net/NetworkInfo$DetailedState;

    #@15c
    move-result-object v7

    #@15d
    invoke-static {v6, v7}, Lcom/android/server/wifi/WifiStateMachine;->-wrap4(Lcom/android/server/wifi/WifiStateMachine;Landroid/net/NetworkInfo$DetailedState;)Z

    #@160
    .line 7538
    const/4 v2, 0x0

    #@161
    .line 7539
    goto/16 :goto_0

    #@163
    .line 7541
    .end local v3    # "stateChangeResult":Lcom/android/server/wifi/StateChangeResult;
    :sswitch_6
    iget-object v7, p0, Lcom/android/server/wifi/WifiStateMachine$DisconnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@165
    invoke-static {v7, p1}, Lcom/android/server/wifi/WifiStateMachine;->-wrap2(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;)Z

    #@168
    move-result v7

    #@169
    if-nez v7, :cond_6

    #@16b
    .line 7543
    iget-object v7, p0, Lcom/android/server/wifi/WifiStateMachine$DisconnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@16d
    invoke-static {}, Lcom/android/server/wifi/WifiStateMachine;->-get4()I

    #@170
    move-result v8

    #@171
    invoke-static {v7, v8}, Lcom/android/server/wifi/WifiStateMachine;->-set39(Lcom/android/server/wifi/WifiStateMachine;I)I

    #@174
    .line 7544
    return v6

    #@175
    .line 7547
    :cond_6
    const/4 v2, 0x0

    #@176
    .line 7548
    goto/16 :goto_0

    #@178
    .line 7550
    :sswitch_7
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@17a
    check-cast v1, Landroid/net/NetworkInfo;

    #@17c
    .line 7551
    .local v1, "info":Landroid/net/NetworkInfo;
    iget-object v6, p0, Lcom/android/server/wifi/WifiStateMachine$DisconnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@17e
    invoke-static {v6}, Lcom/android/server/wifi/WifiStateMachine;->-get43(Lcom/android/server/wifi/WifiStateMachine;)Ljava/util/concurrent/atomic/AtomicBoolean;

    #@181
    move-result-object v6

    #@182
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isConnected()Z

    #@185
    move-result v8

    #@186
    invoke-virtual {v6, v8}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    #@189
    .line 7552
    iget-object v6, p0, Lcom/android/server/wifi/WifiStateMachine$DisconnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@18b
    invoke-static {v6}, Lcom/android/server/wifi/WifiStateMachine;->-get43(Lcom/android/server/wifi/WifiStateMachine;)Ljava/util/concurrent/atomic/AtomicBoolean;

    #@18e
    move-result-object v6

    #@18f
    invoke-virtual {v6}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    #@192
    move-result v6

    #@193
    if-eqz v6, :cond_7

    #@195
    .line 7553
    iget-object v6, p0, Lcom/android/server/wifi/WifiStateMachine$DisconnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@197
    invoke-static {v6}, Lcom/android/server/wifi/WifiStateMachine;->-get14(Lcom/android/server/wifi/WifiStateMachine;)Landroid/content/Context;

    #@19a
    move-result-object v6

    #@19b
    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@19e
    move-result-object v6

    #@19f
    .line 7554
    const v7, 0x10e0031

    #@1a2
    .line 7553
    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getInteger(I)I

    #@1a5
    move-result v0

    #@1a6
    .line 7555
    .local v0, "defaultInterval":I
    iget-object v6, p0, Lcom/android/server/wifi/WifiStateMachine$DisconnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@1a8
    invoke-static {v6}, Lcom/android/server/wifi/WifiStateMachine;->-get24(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/FrameworkFacade;

    #@1ab
    move-result-object v6

    #@1ac
    iget-object v7, p0, Lcom/android/server/wifi/WifiStateMachine$DisconnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@1ae
    invoke-static {v7}, Lcom/android/server/wifi/WifiStateMachine;->-get14(Lcom/android/server/wifi/WifiStateMachine;)Landroid/content/Context;

    #@1b1
    move-result-object v7

    #@1b2
    .line 7556
    const-string/jumbo v8, "wifi_scan_interval_p2p_connected_ms"

    #@1b5
    .line 7557
    int-to-long v10, v0

    #@1b6
    .line 7555
    invoke-virtual {v6, v7, v8, v10, v11}, Lcom/android/server/wifi/FrameworkFacade;->getLongSetting(Landroid/content/Context;Ljava/lang/String;J)J

    #@1b9
    move-result-wide v4

    #@1ba
    .line 7558
    .local v4, "scanIntervalMs":J
    iget-object v6, p0, Lcom/android/server/wifi/WifiStateMachine$DisconnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@1bc
    invoke-static {v6}, Lcom/android/server/wifi/WifiStateMachine;->-get84(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiNative;

    #@1bf
    move-result-object v6

    #@1c0
    long-to-int v7, v4

    #@1c1
    div-int/lit16 v7, v7, 0x3e8

    #@1c3
    invoke-virtual {v6, v7}, Lcom/android/server/wifi/WifiNative;->setScanInterval(I)V

    #@1c6
    goto/16 :goto_0

    #@1c8
    .line 7559
    .end local v0    # "defaultInterval":I
    .end local v4    # "scanIntervalMs":J
    :cond_7
    iget-object v6, p0, Lcom/android/server/wifi/WifiStateMachine$DisconnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@1ca
    invoke-static {v6}, Lcom/android/server/wifi/WifiStateMachine;->-get74(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigManager;

    #@1cd
    move-result-object v6

    #@1ce
    invoke-virtual {v6}, Lcom/android/server/wifi/WifiConfigManager;->getSavedNetworks()Ljava/util/List;

    #@1d1
    move-result-object v6

    #@1d2
    invoke-interface {v6}, Ljava/util/List;->size()I

    #@1d5
    move-result v6

    #@1d6
    if-nez v6, :cond_0

    #@1d8
    .line 7560
    invoke-static {}, Lcom/android/server/wifi/WifiStateMachine;->-get0()Z

    #@1db
    move-result v6

    #@1dc
    if-eqz v6, :cond_8

    #@1de
    iget-object v6, p0, Lcom/android/server/wifi/WifiStateMachine$DisconnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@1e0
    const-string/jumbo v8, "Turn on scanning after p2p disconnected"

    #@1e3
    invoke-virtual {v6, v8}, Lcom/android/server/wifi/WifiStateMachine;->log(Ljava/lang/String;)V

    #@1e6
    .line 7561
    :cond_8
    iget-object v6, p0, Lcom/android/server/wifi/WifiStateMachine$DisconnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@1e8
    iget-object v8, p0, Lcom/android/server/wifi/WifiStateMachine$DisconnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@1ea
    .line 7562
    iget-object v9, p0, Lcom/android/server/wifi/WifiStateMachine$DisconnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@1ec
    invoke-static {v9}, Lcom/android/server/wifi/WifiStateMachine;->-get45(Lcom/android/server/wifi/WifiStateMachine;)I

    #@1ef
    move-result v10

    #@1f0
    add-int/lit8 v10, v10, 0x1

    #@1f2
    invoke-static {v9, v10}, Lcom/android/server/wifi/WifiStateMachine;->-set21(Lcom/android/server/wifi/WifiStateMachine;I)I

    #@1f5
    move-result v9

    #@1f6
    .line 7561
    invoke-virtual {v8, v11, v9, v7}, Lcom/android/server/wifi/WifiStateMachine;->obtainMessage(III)Landroid/os/Message;

    #@1f9
    move-result-object v7

    #@1fa
    .line 7562
    iget-object v8, p0, Lcom/android/server/wifi/WifiStateMachine$DisconnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@1fc
    invoke-static {v8}, Lcom/android/server/wifi/WifiStateMachine;->-get39(Lcom/android/server/wifi/WifiStateMachine;)I

    #@1ff
    move-result v8

    #@200
    int-to-long v8, v8

    #@201
    .line 7561
    invoke-virtual {v6, v7, v8, v9}, Lcom/android/server/wifi/WifiStateMachine;->sendMessageDelayed(Landroid/os/Message;J)V

    #@204
    goto/16 :goto_0

    #@206
    .line 7567
    .end local v1    # "info":Landroid/net/NetworkInfo;
    :sswitch_8
    iget-object v6, p0, Lcom/android/server/wifi/WifiStateMachine$DisconnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@208
    invoke-static {v6}, Lcom/android/server/wifi/WifiStateMachine;->-get68(Lcom/android/server/wifi/WifiStateMachine;)Z

    #@20b
    move-result v6

    #@20c
    if-nez v6, :cond_0

    #@20e
    .line 7573
    const/4 v2, 0x0

    #@20f
    goto/16 :goto_0

    #@211
    .line 7577
    :sswitch_9
    iget-object v8, p0, Lcom/android/server/wifi/WifiStateMachine$DisconnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@213
    iget v9, p1, Landroid/os/Message;->arg1:I

    #@215
    if-eqz v9, :cond_9

    #@217
    :goto_1
    invoke-static {v8, v6}, Lcom/android/server/wifi/WifiStateMachine;->-wrap25(Lcom/android/server/wifi/WifiStateMachine;Z)V

    #@21a
    goto/16 :goto_0

    #@21c
    :cond_9
    move v6, v7

    #@21d
    goto :goto_1

    #@21e
    .line 7478
    :sswitch_data_0
    .sparse-switch
        0x20035 -> :sswitch_2
        0x20047 -> :sswitch_6
        0x20048 -> :sswitch_3
        0x20049 -> :sswitch_4
        0x2004a -> :sswitch_8
        0x2004b -> :sswitch_8
        0x20058 -> :sswitch_1
        0x2005f -> :sswitch_9
        0x20061 -> :sswitch_2
        0x20098 -> :sswitch_2
        0x2300b -> :sswitch_7
        0x24004 -> :sswitch_0
        0x24006 -> :sswitch_5
        0x25004 -> :sswitch_2
    .end sparse-switch
.end method
