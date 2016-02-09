.class Lcom/android/server/wifi/WifiStateMachine$ObtainingIpState;
.super Lcom/android/internal/util/State;
.source "WifiStateMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifi/WifiStateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ObtainingIpState"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/wifi/WifiStateMachine;


# direct methods
.method constructor <init>(Lcom/android/server/wifi/WifiStateMachine;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/wifi/WifiStateMachine;

    #@0
    .prologue
    .line 8325
    iput-object p1, p0, Lcom/android/server/wifi/WifiStateMachine$ObtainingIpState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@2
    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    #@5
    return-void
.end method


# virtual methods
.method public enter()V
    .locals 12

    #@0
    .prologue
    const/4 v11, 0x0

    #@1
    const v10, 0x20010

    #@4
    .line 8328
    invoke-static {}, Lcom/android/server/wifi/WifiStateMachine;->-get0()Z

    #@7
    move-result v6

    #@8
    if-eqz v6, :cond_1

    #@a
    .line 8329
    const-string/jumbo v4, ""

    #@d
    .line 8330
    .local v4, "key":Ljava/lang/String;
    iget-object v6, p0, Lcom/android/server/wifi/WifiStateMachine$ObtainingIpState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@f
    invoke-virtual {v6}, Lcom/android/server/wifi/WifiStateMachine;->getCurrentWifiConfiguration()Landroid/net/wifi/WifiConfiguration;

    #@12
    move-result-object v6

    #@13
    if-eqz v6, :cond_0

    #@15
    .line 8331
    iget-object v6, p0, Lcom/android/server/wifi/WifiStateMachine$ObtainingIpState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@17
    invoke-virtual {v6}, Lcom/android/server/wifi/WifiStateMachine;->getCurrentWifiConfiguration()Landroid/net/wifi/WifiConfiguration;

    #@1a
    move-result-object v6

    #@1b
    invoke-virtual {v6}, Landroid/net/wifi/WifiConfiguration;->configKey()Ljava/lang/String;

    #@1e
    move-result-object v4

    #@1f
    .line 8333
    :cond_0
    iget-object v6, p0, Lcom/android/server/wifi/WifiStateMachine$ObtainingIpState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@21
    new-instance v7, Ljava/lang/StringBuilder;

    #@23
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    #@26
    const-string/jumbo v8, "enter ObtainingIpState netId="

    #@29
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2c
    move-result-object v7

    #@2d
    iget-object v8, p0, Lcom/android/server/wifi/WifiStateMachine$ObtainingIpState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@2f
    invoke-static {v8}, Lcom/android/server/wifi/WifiStateMachine;->-get51(Lcom/android/server/wifi/WifiStateMachine;)I

    #@32
    move-result v8

    #@33
    invoke-static {v8}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    #@36
    move-result-object v8

    #@37
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3a
    move-result-object v7

    #@3b
    .line 8334
    const-string/jumbo v8, " "

    #@3e
    .line 8333
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@41
    move-result-object v7

    #@42
    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@45
    move-result-object v7

    #@46
    .line 8334
    const-string/jumbo v8, " "

    #@49
    .line 8333
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4c
    move-result-object v7

    #@4d
    .line 8335
    const-string/jumbo v8, " roam="

    #@50
    .line 8333
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@53
    move-result-object v7

    #@54
    .line 8335
    iget-object v8, p0, Lcom/android/server/wifi/WifiStateMachine$ObtainingIpState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@56
    invoke-static {v8}, Lcom/android/server/wifi/WifiStateMachine;->-get14(Lcom/android/server/wifi/WifiStateMachine;)I

    #@59
    move-result v8

    #@5a
    .line 8333
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@5d
    move-result-object v7

    #@5e
    .line 8336
    const-string/jumbo v8, " static="

    #@61
    .line 8333
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@64
    move-result-object v7

    #@65
    .line 8336
    iget-object v8, p0, Lcom/android/server/wifi/WifiStateMachine$ObtainingIpState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@67
    invoke-static {v8}, Lcom/android/server/wifi/WifiStateMachine;->-get99(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigStore;

    #@6a
    move-result-object v8

    #@6b
    iget-object v9, p0, Lcom/android/server/wifi/WifiStateMachine$ObtainingIpState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@6d
    invoke-static {v9}, Lcom/android/server/wifi/WifiStateMachine;->-get51(Lcom/android/server/wifi/WifiStateMachine;)I

    #@70
    move-result v9

    #@71
    invoke-virtual {v8, v9}, Lcom/android/server/wifi/WifiConfigStore;->isUsingStaticIp(I)Z

    #@74
    move-result v8

    #@75
    .line 8333
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@78
    move-result-object v7

    #@79
    .line 8337
    const-string/jumbo v8, " watchdog= "

    #@7c
    .line 8333
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@7f
    move-result-object v7

    #@80
    .line 8337
    iget-object v8, p0, Lcom/android/server/wifi/WifiStateMachine$ObtainingIpState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@82
    iget v8, v8, Lcom/android/server/wifi/WifiStateMachine;->obtainingIpWatchdogCount:I

    #@84
    .line 8333
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@87
    move-result-object v7

    #@88
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@8b
    move-result-object v7

    #@8c
    invoke-virtual {v6, v7}, Lcom/android/server/wifi/WifiStateMachine;->log(Ljava/lang/String;)V

    #@8f
    .line 8342
    .end local v4    # "key":Ljava/lang/String;
    :cond_1
    iget-object v6, p0, Lcom/android/server/wifi/WifiStateMachine$ObtainingIpState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@91
    invoke-static {v6, v11}, Lcom/android/server/wifi/WifiStateMachine;->-set6(Lcom/android/server/wifi/WifiStateMachine;Z)Z

    #@94
    .line 8345
    iget-object v6, p0, Lcom/android/server/wifi/WifiStateMachine$ObtainingIpState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@96
    sget-object v7, Landroid/net/NetworkInfo$DetailedState;->OBTAINING_IPADDR:Landroid/net/NetworkInfo$DetailedState;

    #@98
    invoke-static {v6, v7}, Lcom/android/server/wifi/WifiStateMachine;->-wrap7(Lcom/android/server/wifi/WifiStateMachine;Landroid/net/NetworkInfo$DetailedState;)Z

    #@9b
    .line 8350
    iget-object v6, p0, Lcom/android/server/wifi/WifiStateMachine$ObtainingIpState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@9d
    const-string/jumbo v7, "ObtainingIpAddress"

    #@a0
    invoke-virtual {v6, v7}, Lcom/android/server/wifi/WifiStateMachine;->clearCurrentConfigBSSID(Ljava/lang/String;)V

    #@a3
    .line 8353
    :try_start_0
    iget-object v6, p0, Lcom/android/server/wifi/WifiStateMachine$ObtainingIpState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@a5
    invoke-static {v6}, Lcom/android/server/wifi/WifiStateMachine;->-get58(Lcom/android/server/wifi/WifiStateMachine;)Landroid/os/INetworkManagementService;

    #@a8
    move-result-object v6

    #@a9
    iget-object v7, p0, Lcom/android/server/wifi/WifiStateMachine$ObtainingIpState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@ab
    invoke-static {v7}, Lcom/android/server/wifi/WifiStateMachine;->-get44(Lcom/android/server/wifi/WifiStateMachine;)Ljava/lang/String;

    #@ae
    move-result-object v7

    #@af
    invoke-interface {v6, v7}, Landroid/os/INetworkManagementService;->enableIpv6(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    #@b2
    .line 8360
    :goto_0
    iget-object v6, p0, Lcom/android/server/wifi/WifiStateMachine$ObtainingIpState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@b4
    invoke-static {v6}, Lcom/android/server/wifi/WifiStateMachine;->-get99(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigStore;

    #@b7
    move-result-object v6

    #@b8
    iget-object v7, p0, Lcom/android/server/wifi/WifiStateMachine$ObtainingIpState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@ba
    invoke-static {v7}, Lcom/android/server/wifi/WifiStateMachine;->-get51(Lcom/android/server/wifi/WifiStateMachine;)I

    #@bd
    move-result v7

    #@be
    invoke-virtual {v6, v7}, Lcom/android/server/wifi/WifiConfigStore;->isUsingStaticIp(I)Z

    #@c1
    move-result v6

    #@c2
    if-nez v6, :cond_3

    #@c4
    .line 8361
    iget-object v6, p0, Lcom/android/server/wifi/WifiStateMachine$ObtainingIpState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@c6
    invoke-virtual {v6}, Lcom/android/server/wifi/WifiStateMachine;->isRoaming()Z

    #@c9
    move-result v6

    #@ca
    if-eqz v6, :cond_2

    #@cc
    .line 8362
    iget-object v6, p0, Lcom/android/server/wifi/WifiStateMachine$ObtainingIpState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@ce
    invoke-virtual {v6}, Lcom/android/server/wifi/WifiStateMachine;->renewDhcp()V

    #@d1
    .line 8370
    :goto_1
    iget-object v6, p0, Lcom/android/server/wifi/WifiStateMachine$ObtainingIpState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@d3
    iget v7, v6, Lcom/android/server/wifi/WifiStateMachine;->obtainingIpWatchdogCount:I

    #@d5
    add-int/lit8 v7, v7, 0x1

    #@d7
    iput v7, v6, Lcom/android/server/wifi/WifiStateMachine;->obtainingIpWatchdogCount:I

    #@d9
    .line 8371
    iget-object v6, p0, Lcom/android/server/wifi/WifiStateMachine$ObtainingIpState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@db
    new-instance v7, Ljava/lang/StringBuilder;

    #@dd
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    #@e0
    const-string/jumbo v8, "Start Dhcp Watchdog "

    #@e3
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@e6
    move-result-object v7

    #@e7
    iget-object v8, p0, Lcom/android/server/wifi/WifiStateMachine$ObtainingIpState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@e9
    iget v8, v8, Lcom/android/server/wifi/WifiStateMachine;->obtainingIpWatchdogCount:I

    #@eb
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@ee
    move-result-object v7

    #@ef
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@f2
    move-result-object v7

    #@f3
    invoke-virtual {v6, v7}, Lcom/android/server/wifi/WifiStateMachine;->logd(Ljava/lang/String;)V

    #@f6
    .line 8373
    iget-object v6, p0, Lcom/android/server/wifi/WifiStateMachine$ObtainingIpState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@f8
    const/4 v7, 0x1

    #@f9
    invoke-virtual {v6, v7}, Lcom/android/server/wifi/WifiStateMachine;->getWifiLinkLayerStats(Z)Landroid/net/wifi/WifiLinkLayerStats;

    #@fc
    .line 8374
    iget-object v6, p0, Lcom/android/server/wifi/WifiStateMachine$ObtainingIpState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@fe
    iget-object v7, p0, Lcom/android/server/wifi/WifiStateMachine$ObtainingIpState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@100
    .line 8375
    iget-object v8, p0, Lcom/android/server/wifi/WifiStateMachine$ObtainingIpState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@102
    iget v8, v8, Lcom/android/server/wifi/WifiStateMachine;->obtainingIpWatchdogCount:I

    #@104
    .line 8374
    const v9, 0x2005d

    #@107
    invoke-virtual {v7, v9, v8, v11}, Lcom/android/server/wifi/WifiStateMachine;->obtainMessage(III)Landroid/os/Message;

    #@10a
    move-result-object v7

    #@10b
    .line 8375
    const-wide/32 v8, 0x9c40

    #@10e
    .line 8374
    invoke-virtual {v6, v7, v8, v9}, Lcom/android/server/wifi/WifiStateMachine;->sendMessageDelayed(Landroid/os/Message;J)V

    #@111
    .line 8327
    :goto_2
    return-void

    #@112
    .line 8356
    :catch_0
    move-exception v2

    #@113
    .line 8357
    .local v2, "e":Ljava/lang/IllegalStateException;
    iget-object v6, p0, Lcom/android/server/wifi/WifiStateMachine$ObtainingIpState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@115
    new-instance v7, Ljava/lang/StringBuilder;

    #@117
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    #@11a
    const-string/jumbo v8, "Failed to enable IPv6: "

    #@11d
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@120
    move-result-object v7

    #@121
    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@124
    move-result-object v7

    #@125
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@128
    move-result-object v7

    #@129
    invoke-virtual {v6, v7}, Lcom/android/server/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V

    #@12c
    goto :goto_0

    #@12d
    .line 8354
    .end local v2    # "e":Ljava/lang/IllegalStateException;
    :catch_1
    move-exception v5

    #@12e
    .line 8355
    .local v5, "re":Landroid/os/RemoteException;
    iget-object v6, p0, Lcom/android/server/wifi/WifiStateMachine$ObtainingIpState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@130
    new-instance v7, Ljava/lang/StringBuilder;

    #@132
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    #@135
    const-string/jumbo v8, "Failed to enable IPv6: "

    #@138
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@13b
    move-result-object v7

    #@13c
    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@13f
    move-result-object v7

    #@140
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@143
    move-result-object v7

    #@144
    invoke-virtual {v6, v7}, Lcom/android/server/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V

    #@147
    goto/16 :goto_0

    #@149
    .line 8367
    .end local v5    # "re":Landroid/os/RemoteException;
    :cond_2
    iget-object v6, p0, Lcom/android/server/wifi/WifiStateMachine$ObtainingIpState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@14b
    iget-object v7, p0, Lcom/android/server/wifi/WifiStateMachine$ObtainingIpState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@14d
    invoke-static {v7}, Lcom/android/server/wifi/WifiStateMachine;->-get44(Lcom/android/server/wifi/WifiStateMachine;)Ljava/lang/String;

    #@150
    move-result-object v7

    #@151
    invoke-static {v6, v7}, Lcom/android/server/wifi/WifiStateMachine;->-wrap4(Lcom/android/server/wifi/WifiStateMachine;Ljava/lang/String;)Z

    #@154
    .line 8368
    iget-object v6, p0, Lcom/android/server/wifi/WifiStateMachine$ObtainingIpState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@156
    invoke-virtual {v6}, Lcom/android/server/wifi/WifiStateMachine;->startDhcp()V

    #@159
    goto/16 :goto_1

    #@15b
    .line 8378
    :cond_3
    iget-object v6, p0, Lcom/android/server/wifi/WifiStateMachine$ObtainingIpState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@15d
    invoke-virtual {v6}, Lcom/android/server/wifi/WifiStateMachine;->stopDhcp()V

    #@160
    .line 8379
    iget-object v6, p0, Lcom/android/server/wifi/WifiStateMachine$ObtainingIpState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@162
    invoke-static {v6}, Lcom/android/server/wifi/WifiStateMachine;->-get99(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigStore;

    #@165
    move-result-object v6

    #@166
    .line 8380
    iget-object v7, p0, Lcom/android/server/wifi/WifiStateMachine$ObtainingIpState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@168
    invoke-static {v7}, Lcom/android/server/wifi/WifiStateMachine;->-get51(Lcom/android/server/wifi/WifiStateMachine;)I

    #@16b
    move-result v7

    #@16c
    .line 8379
    invoke-virtual {v6, v7}, Lcom/android/server/wifi/WifiConfigStore;->getStaticIpConfiguration(I)Landroid/net/StaticIpConfiguration;

    #@16f
    move-result-object v0

    #@170
    .line 8381
    .local v0, "config":Landroid/net/StaticIpConfiguration;
    iget-object v6, v0, Landroid/net/StaticIpConfiguration;->ipAddress:Landroid/net/LinkAddress;

    #@172
    if-nez v6, :cond_4

    #@174
    .line 8382
    iget-object v6, p0, Lcom/android/server/wifi/WifiStateMachine$ObtainingIpState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@176
    const-string/jumbo v7, "Static IP lacks address"

    #@179
    invoke-virtual {v6, v7}, Lcom/android/server/wifi/WifiStateMachine;->logd(Ljava/lang/String;)V

    #@17c
    .line 8383
    iget-object v6, p0, Lcom/android/server/wifi/WifiStateMachine$ObtainingIpState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@17e
    invoke-virtual {v6, v10}, Lcom/android/server/wifi/WifiStateMachine;->sendMessage(I)V

    #@181
    goto :goto_2

    #@182
    .line 8385
    :cond_4
    new-instance v3, Landroid/net/InterfaceConfiguration;

    #@184
    invoke-direct {v3}, Landroid/net/InterfaceConfiguration;-><init>()V

    #@187
    .line 8386
    .local v3, "ifcg":Landroid/net/InterfaceConfiguration;
    iget-object v6, v0, Landroid/net/StaticIpConfiguration;->ipAddress:Landroid/net/LinkAddress;

    #@189
    invoke-virtual {v3, v6}, Landroid/net/InterfaceConfiguration;->setLinkAddress(Landroid/net/LinkAddress;)V

    #@18c
    .line 8387
    invoke-virtual {v3}, Landroid/net/InterfaceConfiguration;->setInterfaceUp()V

    #@18f
    .line 8389
    :try_start_1
    iget-object v6, p0, Lcom/android/server/wifi/WifiStateMachine$ObtainingIpState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@191
    invoke-static {v6}, Lcom/android/server/wifi/WifiStateMachine;->-get58(Lcom/android/server/wifi/WifiStateMachine;)Landroid/os/INetworkManagementService;

    #@194
    move-result-object v6

    #@195
    iget-object v7, p0, Lcom/android/server/wifi/WifiStateMachine$ObtainingIpState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@197
    invoke-static {v7}, Lcom/android/server/wifi/WifiStateMachine;->-get44(Lcom/android/server/wifi/WifiStateMachine;)Ljava/lang/String;

    #@19a
    move-result-object v7

    #@19b
    invoke-interface {v6, v7, v3}, Landroid/os/INetworkManagementService;->setInterfaceConfig(Ljava/lang/String;Landroid/net/InterfaceConfiguration;)V

    #@19e
    .line 8390
    invoke-static {}, Lcom/android/server/wifi/WifiStateMachine;->-get0()Z

    #@1a1
    move-result v6

    #@1a2
    if-eqz v6, :cond_5

    #@1a4
    iget-object v6, p0, Lcom/android/server/wifi/WifiStateMachine$ObtainingIpState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@1a6
    const-string/jumbo v7, "Static IP configuration succeeded"

    #@1a9
    invoke-virtual {v6, v7}, Lcom/android/server/wifi/WifiStateMachine;->log(Ljava/lang/String;)V

    #@1ac
    .line 8391
    :cond_5
    new-instance v1, Landroid/net/DhcpResults;

    #@1ae
    invoke-direct {v1, v0}, Landroid/net/DhcpResults;-><init>(Landroid/net/StaticIpConfiguration;)V

    #@1b1
    .line 8392
    .local v1, "dhcpResults":Landroid/net/DhcpResults;
    iget-object v6, p0, Lcom/android/server/wifi/WifiStateMachine$ObtainingIpState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@1b3
    const v7, 0x2000f

    #@1b6
    invoke-virtual {v6, v7, v1}, Lcom/android/server/wifi/WifiStateMachine;->sendMessage(ILjava/lang/Object;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_3

    #@1b9
    goto/16 :goto_2

    #@1bb
    .line 8393
    .end local v1    # "dhcpResults":Landroid/net/DhcpResults;
    :catch_2
    move-exception v5

    #@1bc
    .line 8394
    .restart local v5    # "re":Landroid/os/RemoteException;
    iget-object v6, p0, Lcom/android/server/wifi/WifiStateMachine$ObtainingIpState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@1be
    new-instance v7, Ljava/lang/StringBuilder;

    #@1c0
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    #@1c3
    const-string/jumbo v8, "Static IP configuration failed: "

    #@1c6
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1c9
    move-result-object v7

    #@1ca
    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@1cd
    move-result-object v7

    #@1ce
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1d1
    move-result-object v7

    #@1d2
    invoke-virtual {v6, v7}, Lcom/android/server/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V

    #@1d5
    .line 8395
    iget-object v6, p0, Lcom/android/server/wifi/WifiStateMachine$ObtainingIpState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@1d7
    invoke-virtual {v6, v10}, Lcom/android/server/wifi/WifiStateMachine;->sendMessage(I)V

    #@1da
    goto/16 :goto_2

    #@1dc
    .line 8396
    .end local v5    # "re":Landroid/os/RemoteException;
    :catch_3
    move-exception v2

    #@1dd
    .line 8397
    .restart local v2    # "e":Ljava/lang/IllegalStateException;
    iget-object v6, p0, Lcom/android/server/wifi/WifiStateMachine$ObtainingIpState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@1df
    new-instance v7, Ljava/lang/StringBuilder;

    #@1e1
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    #@1e4
    const-string/jumbo v8, "Static IP configuration failed: "

    #@1e7
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1ea
    move-result-object v7

    #@1eb
    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@1ee
    move-result-object v7

    #@1ef
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1f2
    move-result-object v7

    #@1f3
    invoke-virtual {v6, v7}, Lcom/android/server/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V

    #@1f6
    .line 8398
    iget-object v6, p0, Lcom/android/server/wifi/WifiStateMachine$ObtainingIpState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@1f8
    invoke-virtual {v6, v10}, Lcom/android/server/wifi/WifiStateMachine;->sendMessage(I)V

    #@1fb
    goto/16 :goto_2
.end method

.method public processMessage(Landroid/os/Message;)Z
    .locals 3
    .param p1, "message"    # Landroid/os/Message;

    #@0
    .prologue
    .line 8405
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$ObtainingIpState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@2
    invoke-virtual {p0}, Lcom/android/server/wifi/WifiStateMachine$ObtainingIpState;->getClass()Ljava/lang/Class;

    #@5
    move-result-object v1

    #@6
    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    #@9
    move-result-object v1

    #@a
    invoke-static {v0, p1, v1}, Lcom/android/server/wifi/WifiStateMachine;->-wrap33(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;Ljava/lang/String;)V

    #@d
    .line 8407
    iget v0, p1, Landroid/os/Message;->what:I

    #@f
    sparse-switch v0, :sswitch_data_0

    #@12
    .line 8444
    const/4 v0, 0x0

    #@13
    return v0

    #@14
    .line 8409
    :sswitch_0
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine$ObtainingIpState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@16
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@18
    check-cast v0, Landroid/net/DhcpResults;

    #@1a
    const v2, 0x2000f

    #@1d
    invoke-static {v1, v0, v2}, Lcom/android/server/wifi/WifiStateMachine;->-wrap25(Lcom/android/server/wifi/WifiStateMachine;Landroid/net/DhcpResults;I)V

    #@20
    .line 8446
    :goto_0
    const/4 v0, 0x1

    #@21
    return v0

    #@22
    .line 8412
    :sswitch_1
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$ObtainingIpState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@24
    const v1, 0x20010

    #@27
    invoke-static {v0, v1}, Lcom/android/server/wifi/WifiStateMachine;->-wrap24(Lcom/android/server/wifi/WifiStateMachine;I)V

    #@2a
    goto :goto_0

    #@2b
    .line 8416
    :sswitch_2
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$ObtainingIpState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@2d
    invoke-static {}, Lcom/android/server/wifi/WifiStateMachine;->-get2()I

    #@30
    move-result v1

    #@31
    invoke-static {v0, v1}, Lcom/android/server/wifi/WifiStateMachine;->-set49(Lcom/android/server/wifi/WifiStateMachine;I)I

    #@34
    goto :goto_0

    #@35
    .line 8420
    :sswitch_3
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$ObtainingIpState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@37
    invoke-static {}, Lcom/android/server/wifi/WifiStateMachine;->-get1()I

    #@3a
    move-result v1

    #@3b
    invoke-static {v0, v1}, Lcom/android/server/wifi/WifiStateMachine;->-set49(Lcom/android/server/wifi/WifiStateMachine;I)I

    #@3e
    .line 8421
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$ObtainingIpState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@40
    invoke-static {v0, p1}, Lcom/android/server/wifi/WifiStateMachine;->-wrap21(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;)V

    #@43
    goto :goto_0

    #@44
    .line 8425
    :sswitch_4
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$ObtainingIpState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@46
    invoke-static {}, Lcom/android/server/wifi/WifiStateMachine;->-get1()I

    #@49
    move-result v1

    #@4a
    invoke-static {v0, v1}, Lcom/android/server/wifi/WifiStateMachine;->-set49(Lcom/android/server/wifi/WifiStateMachine;I)I

    #@4d
    .line 8426
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$ObtainingIpState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@4f
    invoke-static {v0, p1}, Lcom/android/server/wifi/WifiStateMachine;->-wrap21(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;)V

    #@52
    goto :goto_0

    #@53
    .line 8430
    :sswitch_5
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$ObtainingIpState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@55
    invoke-static {}, Lcom/android/server/wifi/WifiStateMachine;->-get1()I

    #@58
    move-result v1

    #@59
    invoke-static {v0, v1}, Lcom/android/server/wifi/WifiStateMachine;->-set49(Lcom/android/server/wifi/WifiStateMachine;I)I

    #@5c
    .line 8431
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$ObtainingIpState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@5e
    invoke-static {v0, p1}, Lcom/android/server/wifi/WifiStateMachine;->-wrap21(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;)V

    #@61
    goto :goto_0

    #@62
    .line 8434
    :sswitch_6
    iget v0, p1, Landroid/os/Message;->arg1:I

    #@64
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine$ObtainingIpState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@66
    iget v1, v1, Lcom/android/server/wifi/WifiStateMachine;->obtainingIpWatchdogCount:I

    #@68
    if-ne v0, v1, :cond_0

    #@6a
    .line 8435
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$ObtainingIpState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@6c
    new-instance v1, Ljava/lang/StringBuilder;

    #@6e
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@71
    const-string/jumbo v2, "ObtainingIpAddress: Watchdog Triggered, count="

    #@74
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@77
    move-result-object v1

    #@78
    .line 8436
    iget-object v2, p0, Lcom/android/server/wifi/WifiStateMachine$ObtainingIpState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@7a
    iget v2, v2, Lcom/android/server/wifi/WifiStateMachine;->obtainingIpWatchdogCount:I

    #@7c
    .line 8435
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@7f
    move-result-object v1

    #@80
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@83
    move-result-object v1

    #@84
    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiStateMachine;->logd(Ljava/lang/String;)V

    #@87
    .line 8437
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$ObtainingIpState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@89
    invoke-static {v0}, Lcom/android/server/wifi/WifiStateMachine;->-wrap26(Lcom/android/server/wifi/WifiStateMachine;)V

    #@8c
    .line 8438
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$ObtainingIpState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@8e
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine$ObtainingIpState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@90
    invoke-static {v1}, Lcom/android/server/wifi/WifiStateMachine;->-get27(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/internal/util/State;

    #@93
    move-result-object v1

    #@94
    invoke-static {v0, v1}, Lcom/android/server/wifi/WifiStateMachine;->-wrap55(Lcom/android/server/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V

    #@97
    goto :goto_0

    #@98
    .line 8441
    :cond_0
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$ObtainingIpState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@9a
    invoke-static {}, Lcom/android/server/wifi/WifiStateMachine;->-get2()I

    #@9d
    move-result v1

    #@9e
    invoke-static {v0, v1}, Lcom/android/server/wifi/WifiStateMachine;->-set49(Lcom/android/server/wifi/WifiStateMachine;I)I

    #@a1
    goto/16 :goto_0

    #@a3
    .line 8407
    nop

    #@a4
    :sswitch_data_0
    .sparse-switch
        0x2000f -> :sswitch_0
        0x20010 -> :sswitch_1
        0x20047 -> :sswitch_5
        0x2004d -> :sswitch_4
        0x2005d -> :sswitch_6
        0x2008f -> :sswitch_2
        0x20091 -> :sswitch_2
        0x20092 -> :sswitch_3
        0x25007 -> :sswitch_3
    .end sparse-switch
.end method
