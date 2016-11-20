.class Lcom/android/server/wifi/WifiStateMachine$L2ConnectedState;
.super Lcom/android/internal/util/State;
.source "WifiStateMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifi/WifiStateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "L2ConnectedState"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/wifi/WifiStateMachine;


# direct methods
.method constructor <init>(Lcom/android/server/wifi/WifiStateMachine;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/wifi/WifiStateMachine;

    #@0
    .prologue
    .line 6448
    iput-object p1, p0, Lcom/android/server/wifi/WifiStateMachine$L2ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

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
    .line 6451
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$L2ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@3
    invoke-static {v0}, Lcom/android/server/wifi/WifiStateMachine;->-get50(Lcom/android/server/wifi/WifiStateMachine;)I

    #@6
    move-result v1

    #@7
    add-int/lit8 v1, v1, 0x1

    #@9
    invoke-static {v0, v1}, Lcom/android/server/wifi/WifiStateMachine;->-set23(Lcom/android/server/wifi/WifiStateMachine;I)I

    #@c
    .line 6452
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$L2ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@e
    invoke-static {v0}, Lcom/android/server/wifi/WifiStateMachine;->-get23(Lcom/android/server/wifi/WifiStateMachine;)Z

    #@11
    move-result v0

    #@12
    if-eqz v0, :cond_0

    #@14
    .line 6453
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$L2ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@16
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine$L2ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@18
    invoke-static {v1}, Lcom/android/server/wifi/WifiStateMachine;->-get50(Lcom/android/server/wifi/WifiStateMachine;)I

    #@1b
    move-result v1

    #@1c
    const v2, 0x20053

    #@1f
    invoke-virtual {v0, v2, v1, v11}, Lcom/android/server/wifi/WifiStateMachine;->sendMessage(III)V

    #@22
    .line 6455
    :cond_0
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$L2ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@24
    invoke-static {v0}, Lcom/android/server/wifi/WifiStateMachine;->-get35(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiStateMachine$WifiNetworkAgent;

    #@27
    move-result-object v0

    #@28
    if-eqz v0, :cond_1

    #@2a
    .line 6456
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$L2ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@2c
    const-string/jumbo v1, "Have NetworkAgent when entering L2Connected"

    #@2f
    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V

    #@32
    .line 6457
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$L2ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@34
    sget-object v1, Landroid/net/NetworkInfo$DetailedState;->DISCONNECTED:Landroid/net/NetworkInfo$DetailedState;

    #@36
    invoke-static {v0, v1}, Lcom/android/server/wifi/WifiStateMachine;->-wrap3(Lcom/android/server/wifi/WifiStateMachine;Landroid/net/NetworkInfo$DetailedState;)Z

    #@39
    .line 6459
    :cond_1
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$L2ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@3b
    sget-object v1, Landroid/net/NetworkInfo$DetailedState;->CONNECTING:Landroid/net/NetworkInfo$DetailedState;

    #@3d
    invoke-static {v0, v1}, Lcom/android/server/wifi/WifiStateMachine;->-wrap3(Lcom/android/server/wifi/WifiStateMachine;Landroid/net/NetworkInfo$DetailedState;)Z

    #@40
    .line 6461
    iget-object v10, p0, Lcom/android/server/wifi/WifiStateMachine$L2ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@42
    new-instance v0, Lcom/android/server/wifi/WifiStateMachine$WifiNetworkAgent;

    #@44
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine$L2ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@46
    iget-object v2, p0, Lcom/android/server/wifi/WifiStateMachine$L2ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@48
    invoke-virtual {v2}, Lcom/android/server/wifi/WifiStateMachine;->getHandler()Landroid/os/Handler;

    #@4b
    move-result-object v2

    #@4c
    invoke-virtual {v2}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    #@4f
    move-result-object v2

    #@50
    iget-object v3, p0, Lcom/android/server/wifi/WifiStateMachine$L2ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@52
    invoke-static {v3}, Lcom/android/server/wifi/WifiStateMachine;->-get14(Lcom/android/server/wifi/WifiStateMachine;)Landroid/content/Context;

    #@55
    move-result-object v3

    #@56
    .line 6462
    const-string/jumbo v4, "WifiNetworkAgent"

    #@59
    iget-object v5, p0, Lcom/android/server/wifi/WifiStateMachine$L2ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@5b
    invoke-static {v5}, Lcom/android/server/wifi/WifiStateMachine;->-get37(Lcom/android/server/wifi/WifiStateMachine;)Landroid/net/NetworkInfo;

    #@5e
    move-result-object v5

    #@5f
    iget-object v6, p0, Lcom/android/server/wifi/WifiStateMachine$L2ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@61
    invoke-static {v6}, Lcom/android/server/wifi/WifiStateMachine;->-get36(Lcom/android/server/wifi/WifiStateMachine;)Landroid/net/NetworkCapabilities;

    #@64
    move-result-object v6

    #@65
    .line 6463
    iget-object v7, p0, Lcom/android/server/wifi/WifiStateMachine$L2ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@67
    invoke-static {v7}, Lcom/android/server/wifi/WifiStateMachine;->-get34(Lcom/android/server/wifi/WifiStateMachine;)Landroid/net/LinkProperties;

    #@6a
    move-result-object v7

    #@6b
    iget-object v8, p0, Lcom/android/server/wifi/WifiStateMachine$L2ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@6d
    invoke-static {v8}, Lcom/android/server/wifi/WifiStateMachine;->-get38(Lcom/android/server/wifi/WifiStateMachine;)Landroid/net/NetworkMisc;

    #@70
    move-result-object v9

    #@71
    const/16 v8, 0x3c

    #@73
    .line 6461
    invoke-direct/range {v0 .. v9}, Lcom/android/server/wifi/WifiStateMachine$WifiNetworkAgent;-><init>(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Looper;Landroid/content/Context;Ljava/lang/String;Landroid/net/NetworkInfo;Landroid/net/NetworkCapabilities;Landroid/net/LinkProperties;ILandroid/net/NetworkMisc;)V

    #@76
    invoke-static {v10, v0}, Lcom/android/server/wifi/WifiStateMachine;->-set19(Lcom/android/server/wifi/WifiStateMachine;Lcom/android/server/wifi/WifiStateMachine$WifiNetworkAgent;)Lcom/android/server/wifi/WifiStateMachine$WifiNetworkAgent;

    #@79
    .line 6468
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$L2ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@7b
    const-string/jumbo v1, "L2ConnectedState"

    #@7e
    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiStateMachine;->clearCurrentConfigBSSID(Ljava/lang/String;)V

    #@81
    .line 6469
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$L2ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@83
    invoke-static {v0}, Lcom/android/server/wifi/WifiStateMachine;->-get15(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiCountryCode;

    #@86
    move-result-object v0

    #@87
    invoke-virtual {v0, v11}, Lcom/android/server/wifi/WifiCountryCode;->setReadyForChange(Z)V

    #@8a
    .line 6470
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$L2ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@8c
    invoke-static {v0}, Lcom/android/server/wifi/WifiStateMachine;->-get81(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiMetrics;

    #@8f
    move-result-object v0

    #@90
    const/4 v1, 0x3

    #@91
    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiMetrics;->setWifiState(I)V

    #@94
    .line 6450
    return-void
.end method

.method public exit()V
    .locals 3

    #@0
    .prologue
    .line 6475
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine$L2ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@2
    invoke-static {v1}, Lcom/android/server/wifi/WifiStateMachine;->-get28(Lcom/android/server/wifi/WifiStateMachine;)Landroid/net/ip/IpManager;

    #@5
    move-result-object v1

    #@6
    invoke-virtual {v1}, Landroid/net/ip/IpManager;->stop()V

    #@9
    .line 6482
    invoke-static {}, Lcom/android/server/wifi/WifiStateMachine;->-get0()Z

    #@c
    move-result v1

    #@d
    if-eqz v1, :cond_0

    #@f
    .line 6483
    new-instance v0, Ljava/lang/StringBuilder;

    #@11
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@14
    .line 6484
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string/jumbo v1, "leaving L2ConnectedState state nid="

    #@17
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1a
    move-result-object v1

    #@1b
    iget-object v2, p0, Lcom/android/server/wifi/WifiStateMachine$L2ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@1d
    invoke-static {v2}, Lcom/android/server/wifi/WifiStateMachine;->-get33(Lcom/android/server/wifi/WifiStateMachine;)I

    #@20
    move-result v2

    #@21
    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    #@24
    move-result-object v2

    #@25
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@28
    .line 6485
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine$L2ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@2a
    invoke-static {v1}, Lcom/android/server/wifi/WifiStateMachine;->-get30(Lcom/android/server/wifi/WifiStateMachine;)Ljava/lang/String;

    #@2d
    move-result-object v1

    #@2e
    if-eqz v1, :cond_0

    #@30
    .line 6486
    const-string/jumbo v1, " "

    #@33
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@36
    move-result-object v1

    #@37
    iget-object v2, p0, Lcom/android/server/wifi/WifiStateMachine$L2ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@39
    invoke-static {v2}, Lcom/android/server/wifi/WifiStateMachine;->-get30(Lcom/android/server/wifi/WifiStateMachine;)Ljava/lang/String;

    #@3c
    move-result-object v2

    #@3d
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@40
    .line 6489
    .end local v0    # "sb":Ljava/lang/StringBuilder;
    :cond_0
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine$L2ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@42
    invoke-static {v1}, Lcom/android/server/wifi/WifiStateMachine;->-get30(Lcom/android/server/wifi/WifiStateMachine;)Ljava/lang/String;

    #@45
    move-result-object v1

    #@46
    if-nez v1, :cond_1

    #@48
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine$L2ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@4a
    invoke-static {v1}, Lcom/android/server/wifi/WifiStateMachine;->-get33(Lcom/android/server/wifi/WifiStateMachine;)I

    #@4d
    move-result v1

    #@4e
    const/4 v2, -0x1

    #@4f
    if-eq v1, v2, :cond_2

    #@51
    .line 6490
    :cond_1
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine$L2ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@53
    invoke-static {v1}, Lcom/android/server/wifi/WifiStateMachine;->-wrap23(Lcom/android/server/wifi/WifiStateMachine;)V

    #@56
    .line 6492
    :cond_2
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine$L2ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@58
    invoke-static {v1}, Lcom/android/server/wifi/WifiStateMachine;->-get15(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiCountryCode;

    #@5b
    move-result-object v1

    #@5c
    const/4 v2, 0x1

    #@5d
    invoke-virtual {v1, v2}, Lcom/android/server/wifi/WifiCountryCode;->setReadyForChange(Z)V

    #@60
    .line 6493
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine$L2ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@62
    invoke-static {v1}, Lcom/android/server/wifi/WifiStateMachine;->-get81(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiMetrics;

    #@65
    move-result-object v1

    #@66
    const/4 v2, 0x2

    #@67
    invoke-virtual {v1, v2}, Lcom/android/server/wifi/WifiMetrics;->setWifiState(I)V

    #@6a
    .line 6474
    return-void
.end method

.method public processMessage(Landroid/os/Message;)Z
    .locals 12
    .param p1, "message"    # Landroid/os/Message;

    #@0
    .prologue
    .line 6498
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$L2ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@2
    invoke-static {v0, p1, p0}, Lcom/android/server/wifi/WifiStateMachine;->-wrap28(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;Lcom/android/internal/util/State;)V

    #@5
    .line 6500
    iget v0, p1, Landroid/os/Message;->what:I

    #@7
    sparse-switch v0, :sswitch_data_0

    #@a
    .line 6688
    const/4 v0, 0x0

    #@b
    return v0

    #@c
    .line 6502
    :sswitch_0
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$L2ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@e
    invoke-virtual {v0}, Lcom/android/server/wifi/WifiStateMachine;->handlePreDhcpSetup()V

    #@11
    .line 6691
    :cond_0
    :goto_0
    const/4 v0, 0x1

    #@12
    return v0

    #@13
    .line 6505
    :sswitch_1
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$L2ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@15
    invoke-static {v0}, Lcom/android/server/wifi/WifiStateMachine;->-get28(Lcom/android/server/wifi/WifiStateMachine;)Landroid/net/ip/IpManager;

    #@18
    move-result-object v0

    #@19
    invoke-virtual {v0}, Landroid/net/ip/IpManager;->completedPreDhcpAction()V

    #@1c
    goto :goto_0

    #@1d
    .line 6508
    :sswitch_2
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$L2ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@1f
    invoke-virtual {v0}, Lcom/android/server/wifi/WifiStateMachine;->handlePostDhcpSetup()V

    #@22
    goto :goto_0

    #@23
    .line 6518
    :sswitch_3
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine$L2ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@25
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@27
    check-cast v0, Landroid/net/DhcpResults;

    #@29
    invoke-static {v1, v0}, Lcom/android/server/wifi/WifiStateMachine;->-wrap20(Lcom/android/server/wifi/WifiStateMachine;Landroid/net/DhcpResults;)V

    #@2c
    .line 6519
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$L2ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@2e
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine$L2ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@30
    invoke-static {v1}, Lcom/android/server/wifi/WifiStateMachine;->-get30(Lcom/android/server/wifi/WifiStateMachine;)Ljava/lang/String;

    #@33
    move-result-object v1

    #@34
    invoke-static {v0, v1}, Lcom/android/server/wifi/WifiStateMachine;->-wrap35(Lcom/android/server/wifi/WifiStateMachine;Ljava/lang/String;)V

    #@37
    goto :goto_0

    #@38
    .line 6523
    :sswitch_4
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$L2ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@3a
    invoke-static {v0}, Lcom/android/server/wifi/WifiStateMachine;->-wrap19(Lcom/android/server/wifi/WifiStateMachine;)V

    #@3d
    goto :goto_0

    #@3e
    .line 6527
    :sswitch_5
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$L2ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@40
    invoke-static {v0}, Lcom/android/server/wifi/WifiStateMachine;->-wrap26(Lcom/android/server/wifi/WifiStateMachine;)V

    #@43
    .line 6528
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$L2ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@45
    .line 6529
    const/4 v1, 0x1

    #@46
    .line 6530
    const/4 v2, 0x1

    #@47
    .line 6528
    invoke-static {v0, v1, v2}, Lcom/android/server/wifi/WifiStateMachine;->-wrap33(Lcom/android/server/wifi/WifiStateMachine;II)V

    #@4a
    .line 6531
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$L2ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@4c
    invoke-static {v0}, Lcom/android/server/wifi/WifiStateMachine;->-wrap34(Lcom/android/server/wifi/WifiStateMachine;)V

    #@4f
    .line 6532
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$L2ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@51
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine$L2ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@53
    invoke-static {v1}, Lcom/android/server/wifi/WifiStateMachine;->-get12(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/internal/util/State;

    #@56
    move-result-object v1

    #@57
    invoke-static {v0, v1}, Lcom/android/server/wifi/WifiStateMachine;->-wrap45(Lcom/android/server/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V

    #@5a
    goto :goto_0

    #@5b
    .line 6536
    :sswitch_6
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$L2ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@5d
    const/4 v1, 0x1

    #@5e
    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiStateMachine;->getWifiLinkLayerStats(Z)Landroid/net/wifi/WifiLinkLayerStats;

    #@61
    .line 6537
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$L2ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@63
    invoke-static {v0}, Lcom/android/server/wifi/WifiStateMachine;->-wrap21(Lcom/android/server/wifi/WifiStateMachine;)V

    #@66
    .line 6538
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$L2ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@68
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine$L2ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@6a
    invoke-static {v1}, Lcom/android/server/wifi/WifiStateMachine;->-get17(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/internal/util/State;

    #@6d
    move-result-object v1

    #@6e
    invoke-static {v0, v1}, Lcom/android/server/wifi/WifiStateMachine;->-wrap45(Lcom/android/server/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V

    #@71
    goto :goto_0

    #@72
    .line 6541
    :sswitch_7
    invoke-static {}, Lcom/android/server/wifi/WifiStateMachine;->-get0()Z

    #@75
    move-result v0

    #@76
    if-eqz v0, :cond_1

    #@78
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@7a
    if-eqz v0, :cond_1

    #@7c
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine$L2ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@7e
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@80
    check-cast v0, Ljava/lang/String;

    #@82
    invoke-virtual {v1, v0}, Lcom/android/server/wifi/WifiStateMachine;->log(Ljava/lang/String;)V

    #@85
    .line 6542
    :cond_1
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$L2ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@87
    invoke-static {v0}, Lcom/android/server/wifi/WifiStateMachine;->-wrap22(Lcom/android/server/wifi/WifiStateMachine;)V

    #@8a
    .line 6543
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$L2ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@8c
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine$L2ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@8e
    invoke-static {v1}, Lcom/android/server/wifi/WifiStateMachine;->-get17(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/internal/util/State;

    #@91
    move-result-object v1

    #@92
    invoke-static {v0, v1}, Lcom/android/server/wifi/WifiStateMachine;->-wrap45(Lcom/android/server/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V

    #@95
    goto/16 :goto_0

    #@97
    .line 6546
    :sswitch_8
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$L2ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@99
    invoke-static {v0}, Lcom/android/server/wifi/WifiStateMachine;->-get83(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiNative;

    #@9c
    move-result-object v0

    #@9d
    invoke-virtual {v0}, Lcom/android/server/wifi/WifiNative;->disconnect()Z

    #@a0
    .line 6547
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$L2ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@a2
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine$L2ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@a4
    invoke-static {v1}, Lcom/android/server/wifi/WifiStateMachine;->-get17(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/internal/util/State;

    #@a7
    move-result-object v1

    #@a8
    invoke-static {v0, v1}, Lcom/android/server/wifi/WifiStateMachine;->-wrap45(Lcom/android/server/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V

    #@ab
    goto/16 :goto_0

    #@ad
    .line 6550
    :sswitch_9
    iget v0, p1, Landroid/os/Message;->arg1:I

    #@af
    const/4 v1, 0x1

    #@b0
    if-ne v0, v1, :cond_0

    #@b2
    .line 6551
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$L2ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@b4
    invoke-static {v0}, Lcom/android/server/wifi/WifiStateMachine;->-get83(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiNative;

    #@b7
    move-result-object v0

    #@b8
    invoke-virtual {v0}, Lcom/android/server/wifi/WifiNative;->disconnect()Z

    #@bb
    .line 6552
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$L2ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@bd
    const/4 v1, 0x1

    #@be
    invoke-static {v0, v1}, Lcom/android/server/wifi/WifiStateMachine;->-set32(Lcom/android/server/wifi/WifiStateMachine;Z)Z

    #@c1
    .line 6553
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$L2ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@c3
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine$L2ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@c5
    invoke-static {v1}, Lcom/android/server/wifi/WifiStateMachine;->-get17(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/internal/util/State;

    #@c8
    move-result-object v1

    #@c9
    invoke-static {v0, v1}, Lcom/android/server/wifi/WifiStateMachine;->-wrap45(Lcom/android/server/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V

    #@cc
    goto/16 :goto_0

    #@ce
    .line 6557
    :sswitch_a
    iget v0, p1, Landroid/os/Message;->arg1:I

    #@d0
    const/4 v1, 0x1

    #@d1
    if-eq v0, v1, :cond_2

    #@d3
    .line 6558
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$L2ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@d5
    const v1, 0x20049

    #@d8
    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiStateMachine;->sendMessage(I)V

    #@db
    .line 6559
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$L2ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@dd
    invoke-static {v0, p1}, Lcom/android/server/wifi/WifiStateMachine;->-wrap16(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;)V

    #@e0
    .line 6560
    iget v0, p1, Landroid/os/Message;->arg1:I

    #@e2
    const/4 v1, 0x3

    #@e3
    if-ne v0, v1, :cond_2

    #@e5
    .line 6561
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$L2ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@e7
    invoke-virtual {v0}, Lcom/android/server/wifi/WifiStateMachine;->noteWifiDisabledWhileAssociated()V

    #@ea
    .line 6564
    :cond_2
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$L2ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@ec
    invoke-static {v0}, Lcom/android/server/wifi/WifiStateMachine;->-get73(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigManager;

    #@ef
    move-result-object v0

    #@f0
    .line 6566
    const/4 v1, -0x1

    #@f1
    .line 6564
    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiConfigManager;->setAndEnableLastSelectedConfiguration(I)V

    #@f4
    goto/16 :goto_0

    #@f6
    .line 6570
    :sswitch_b
    iget v9, p1, Landroid/os/Message;->arg1:I

    #@f8
    .line 6571
    .local v9, "netId":I
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$L2ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@fa
    invoke-static {v0}, Lcom/android/server/wifi/WifiStateMachine;->-get76(Lcom/android/server/wifi/WifiStateMachine;)Landroid/net/wifi/WifiInfo;

    #@fd
    move-result-object v0

    #@fe
    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getNetworkId()I

    #@101
    move-result v0

    #@102
    if-eq v0, v9, :cond_0

    #@104
    .line 6574
    const/4 v0, 0x0

    #@105
    return v0

    #@106
    .line 6576
    .end local v9    # "netId":I
    :sswitch_c
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$L2ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@108
    invoke-static {v0}, Lcom/android/server/wifi/WifiStateMachine;->-get76(Lcom/android/server/wifi/WifiStateMachine;)Landroid/net/wifi/WifiInfo;

    #@10b
    move-result-object v1

    #@10c
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@10e
    check-cast v0, Ljava/lang/String;

    #@110
    invoke-virtual {v1, v0}, Landroid/net/wifi/WifiInfo;->setBSSID(Ljava/lang/String;)V

    #@113
    .line 6577
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$L2ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@115
    iget v1, p1, Landroid/os/Message;->arg1:I

    #@117
    invoke-static {v0, v1}, Lcom/android/server/wifi/WifiStateMachine;->-set17(Lcom/android/server/wifi/WifiStateMachine;I)I

    #@11a
    .line 6578
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$L2ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@11c
    invoke-static {v0}, Lcom/android/server/wifi/WifiStateMachine;->-get76(Lcom/android/server/wifi/WifiStateMachine;)Landroid/net/wifi/WifiInfo;

    #@11f
    move-result-object v0

    #@120
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine$L2ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@122
    invoke-static {v1}, Lcom/android/server/wifi/WifiStateMachine;->-get33(Lcom/android/server/wifi/WifiStateMachine;)I

    #@125
    move-result v1

    #@126
    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiInfo;->setNetworkId(I)V

    #@129
    .line 6579
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$L2ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@12b
    invoke-static {v0}, Lcom/android/server/wifi/WifiStateMachine;->-get30(Lcom/android/server/wifi/WifiStateMachine;)Ljava/lang/String;

    #@12e
    move-result-object v1

    #@12f
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@131
    check-cast v0, Ljava/lang/String;

    #@133
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@136
    move-result v0

    #@137
    if-nez v0, :cond_0

    #@139
    .line 6580
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine$L2ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@13b
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@13d
    check-cast v0, Ljava/lang/String;

    #@13f
    invoke-static {v1, v0}, Lcom/android/server/wifi/WifiStateMachine;->-set14(Lcom/android/server/wifi/WifiStateMachine;Ljava/lang/String;)Ljava/lang/String;

    #@142
    .line 6581
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$L2ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@144
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine$L2ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@146
    invoke-static {v1}, Lcom/android/server/wifi/WifiStateMachine;->-get30(Lcom/android/server/wifi/WifiStateMachine;)Ljava/lang/String;

    #@149
    move-result-object v1

    #@14a
    invoke-static {v0, v1}, Lcom/android/server/wifi/WifiStateMachine;->-wrap35(Lcom/android/server/wifi/WifiStateMachine;Ljava/lang/String;)V

    #@14d
    goto/16 :goto_0

    #@14f
    .line 6585
    :sswitch_d
    iget v0, p1, Landroid/os/Message;->arg1:I

    #@151
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine$L2ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@153
    invoke-static {v1}, Lcom/android/server/wifi/WifiStateMachine;->-get50(Lcom/android/server/wifi/WifiStateMachine;)I

    #@156
    move-result v1

    #@157
    if-ne v0, v1, :cond_0

    #@159
    .line 6586
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$L2ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@15b
    invoke-static {v0}, Lcom/android/server/wifi/WifiStateMachine;->-get73(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigManager;

    #@15e
    move-result-object v0

    #@15f
    iget-object v0, v0, Lcom/android/server/wifi/WifiConfigManager;->mEnableChipWakeUpWhenAssociated:Ljava/util/concurrent/atomic/AtomicBoolean;

    #@161
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    #@164
    move-result v0

    #@165
    if-eqz v0, :cond_6

    #@167
    .line 6587
    invoke-static {}, Lcom/android/server/wifi/WifiStateMachine;->-get0()Z

    #@16a
    move-result v0

    #@16b
    if-eqz v0, :cond_3

    #@16d
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$L2ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@16f
    new-instance v1, Ljava/lang/StringBuilder;

    #@171
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@174
    const-string/jumbo v2, " get link layer stats "

    #@177
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@17a
    move-result-object v1

    #@17b
    iget-object v2, p0, Lcom/android/server/wifi/WifiStateMachine$L2ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@17d
    invoke-static {v2}, Lcom/android/server/wifi/WifiStateMachine;->-get79(Lcom/android/server/wifi/WifiStateMachine;)I

    #@180
    move-result v2

    #@181
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@184
    move-result-object v1

    #@185
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@188
    move-result-object v1

    #@189
    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiStateMachine;->log(Ljava/lang/String;)V

    #@18c
    .line 6588
    :cond_3
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$L2ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@18e
    invoke-static {}, Lcom/android/server/wifi/WifiStateMachine;->-get0()Z

    #@191
    move-result v1

    #@192
    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiStateMachine;->getWifiLinkLayerStats(Z)Landroid/net/wifi/WifiLinkLayerStats;

    #@195
    move-result-object v10

    #@196
    .line 6589
    .local v10, "stats":Landroid/net/wifi/WifiLinkLayerStats;
    if-eqz v10, :cond_5

    #@198
    .line 6591
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$L2ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@19a
    invoke-static {v0}, Lcom/android/server/wifi/WifiStateMachine;->-get76(Lcom/android/server/wifi/WifiStateMachine;)Landroid/net/wifi/WifiInfo;

    #@19d
    move-result-object v0

    #@19e
    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getRssi()I

    #@1a1
    move-result v0

    #@1a2
    const/16 v1, -0x7f

    #@1a4
    if-eq v0, v1, :cond_5

    #@1a6
    .line 6592
    iget v0, v10, Landroid/net/wifi/WifiLinkLayerStats;->rssi_mgmt:I

    #@1a8
    if-eqz v0, :cond_4

    #@1aa
    .line 6593
    iget v0, v10, Landroid/net/wifi/WifiLinkLayerStats;->beacon_rx:I

    #@1ac
    if-nez v0, :cond_5

    #@1ae
    .line 6594
    :cond_4
    const/4 v10, 0x0

    #@1af
    .line 6598
    .end local v10    # "stats":Landroid/net/wifi/WifiLinkLayerStats;
    :cond_5
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$L2ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@1b1
    invoke-static {v0}, Lcom/android/server/wifi/WifiStateMachine;->-wrap18(Lcom/android/server/wifi/WifiStateMachine;)V

    #@1b4
    .line 6599
    iget-object v11, p0, Lcom/android/server/wifi/WifiStateMachine$L2ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@1b6
    .line 6600
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$L2ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@1b8
    invoke-static {v0}, Lcom/android/server/wifi/WifiStateMachine;->-get76(Lcom/android/server/wifi/WifiStateMachine;)Landroid/net/wifi/WifiInfo;

    #@1bb
    move-result-object v0

    #@1bc
    .line 6601
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine$L2ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@1be
    invoke-virtual {v1}, Lcom/android/server/wifi/WifiStateMachine;->getCurrentWifiConfiguration()Landroid/net/wifi/WifiConfiguration;

    #@1c1
    move-result-object v1

    #@1c2
    .line 6602
    iget-object v2, p0, Lcom/android/server/wifi/WifiStateMachine$L2ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@1c4
    invoke-static {v2}, Lcom/android/server/wifi/WifiStateMachine;->-get73(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigManager;

    #@1c7
    move-result-object v2

    #@1c8
    .line 6603
    iget-object v3, p0, Lcom/android/server/wifi/WifiStateMachine$L2ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@1ca
    invoke-static {v3}, Lcom/android/server/wifi/WifiStateMachine;->-get35(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiStateMachine$WifiNetworkAgent;

    #@1cd
    move-result-object v3

    #@1ce
    .line 6604
    iget-object v4, p0, Lcom/android/server/wifi/WifiStateMachine$L2ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@1d0
    iget-object v4, v4, Lcom/android/server/wifi/WifiStateMachine;->mWifiScoreReport:Lcom/android/server/wifi/WifiScoreReport;

    #@1d2
    .line 6605
    iget-object v5, p0, Lcom/android/server/wifi/WifiStateMachine$L2ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@1d4
    invoke-static {v5}, Lcom/android/server/wifi/WifiStateMachine;->-get6(Lcom/android/server/wifi/WifiStateMachine;)I

    #@1d7
    move-result v5

    #@1d8
    .line 6600
    invoke-static/range {v0 .. v5}, Lcom/android/server/wifi/WifiScoreReport;->calculateScore(Landroid/net/wifi/WifiInfo;Landroid/net/wifi/WifiConfiguration;Lcom/android/server/wifi/WifiConfigManager;Landroid/net/NetworkAgent;Lcom/android/server/wifi/WifiScoreReport;I)Lcom/android/server/wifi/WifiScoreReport;

    #@1db
    move-result-object v0

    #@1dc
    .line 6599
    iput-object v0, v11, Lcom/android/server/wifi/WifiStateMachine;->mWifiScoreReport:Lcom/android/server/wifi/WifiScoreReport;

    #@1de
    .line 6607
    :cond_6
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$L2ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@1e0
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine$L2ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@1e2
    .line 6608
    iget-object v2, p0, Lcom/android/server/wifi/WifiStateMachine$L2ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@1e4
    invoke-static {v2}, Lcom/android/server/wifi/WifiStateMachine;->-get50(Lcom/android/server/wifi/WifiStateMachine;)I

    #@1e7
    move-result v2

    #@1e8
    .line 6607
    const v3, 0x20053

    #@1eb
    .line 6608
    const/4 v4, 0x0

    #@1ec
    .line 6607
    invoke-virtual {v1, v3, v2, v4}, Lcom/android/server/wifi/WifiStateMachine;->obtainMessage(III)Landroid/os/Message;

    #@1ef
    move-result-object v1

    #@1f0
    .line 6608
    const-wide/16 v2, 0xbb8

    #@1f2
    .line 6607
    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/wifi/WifiStateMachine;->sendMessageDelayed(Landroid/os/Message;J)V

    #@1f5
    .line 6609
    invoke-static {}, Lcom/android/server/wifi/WifiStateMachine;->-get0()Z

    #@1f8
    move-result v0

    #@1f9
    if-eqz v0, :cond_0

    #@1fb
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$L2ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@1fd
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine$L2ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@1ff
    invoke-static {v1}, Lcom/android/server/wifi/WifiStateMachine;->-get76(Lcom/android/server/wifi/WifiStateMachine;)Landroid/net/wifi/WifiInfo;

    #@202
    move-result-object v1

    #@203
    invoke-virtual {v1}, Landroid/net/wifi/WifiInfo;->getRssi()I

    #@206
    move-result v1

    #@207
    invoke-static {v0, v1}, Lcom/android/server/wifi/WifiStateMachine;->-wrap36(Lcom/android/server/wifi/WifiStateMachine;I)V

    #@20a
    goto/16 :goto_0

    #@20c
    .line 6615
    :sswitch_e
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$L2ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@20e
    invoke-static {v0}, Lcom/android/server/wifi/WifiStateMachine;->-wrap15(Lcom/android/server/wifi/WifiStateMachine;)V

    #@211
    .line 6616
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$L2ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@213
    invoke-static {v0}, Lcom/android/server/wifi/WifiStateMachine;->-get73(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigManager;

    #@216
    move-result-object v0

    #@217
    iget-object v0, v0, Lcom/android/server/wifi/WifiConfigManager;->mEnableRssiPollWhenAssociated:Ljava/util/concurrent/atomic/AtomicBoolean;

    #@219
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    #@21c
    move-result v0

    #@21d
    if-eqz v0, :cond_8

    #@21f
    .line 6617
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine$L2ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@221
    iget v0, p1, Landroid/os/Message;->arg1:I

    #@223
    const/4 v2, 0x1

    #@224
    if-ne v0, v2, :cond_7

    #@226
    const/4 v0, 0x1

    #@227
    :goto_1
    invoke-static {v1, v0}, Lcom/android/server/wifi/WifiStateMachine;->-set10(Lcom/android/server/wifi/WifiStateMachine;Z)Z

    #@22a
    .line 6621
    :goto_2
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$L2ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@22c
    invoke-static {v0}, Lcom/android/server/wifi/WifiStateMachine;->-get50(Lcom/android/server/wifi/WifiStateMachine;)I

    #@22f
    move-result v1

    #@230
    add-int/lit8 v1, v1, 0x1

    #@232
    invoke-static {v0, v1}, Lcom/android/server/wifi/WifiStateMachine;->-set23(Lcom/android/server/wifi/WifiStateMachine;I)I

    #@235
    .line 6622
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$L2ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@237
    invoke-static {v0}, Lcom/android/server/wifi/WifiStateMachine;->-get23(Lcom/android/server/wifi/WifiStateMachine;)Z

    #@23a
    move-result v0

    #@23b
    if-eqz v0, :cond_0

    #@23d
    .line 6624
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$L2ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@23f
    invoke-static {v0}, Lcom/android/server/wifi/WifiStateMachine;->-wrap18(Lcom/android/server/wifi/WifiStateMachine;)V

    #@242
    .line 6625
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$L2ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@244
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine$L2ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@246
    .line 6626
    iget-object v2, p0, Lcom/android/server/wifi/WifiStateMachine$L2ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@248
    invoke-static {v2}, Lcom/android/server/wifi/WifiStateMachine;->-get50(Lcom/android/server/wifi/WifiStateMachine;)I

    #@24b
    move-result v2

    #@24c
    .line 6625
    const v3, 0x20053

    #@24f
    .line 6626
    const/4 v4, 0x0

    #@250
    .line 6625
    invoke-virtual {v1, v3, v2, v4}, Lcom/android/server/wifi/WifiStateMachine;->obtainMessage(III)Landroid/os/Message;

    #@253
    move-result-object v1

    #@254
    .line 6626
    const-wide/16 v2, 0xbb8

    #@256
    .line 6625
    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/wifi/WifiStateMachine;->sendMessageDelayed(Landroid/os/Message;J)V

    #@259
    goto/16 :goto_0

    #@25b
    .line 6617
    :cond_7
    const/4 v0, 0x0

    #@25c
    goto :goto_1

    #@25d
    .line 6619
    :cond_8
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$L2ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@25f
    const/4 v1, 0x0

    #@260
    invoke-static {v0, v1}, Lcom/android/server/wifi/WifiStateMachine;->-set10(Lcom/android/server/wifi/WifiStateMachine;Z)Z

    #@263
    goto :goto_2

    #@264
    .line 6630
    :sswitch_f
    new-instance v8, Landroid/net/wifi/RssiPacketCountInfo;

    #@266
    invoke-direct {v8}, Landroid/net/wifi/RssiPacketCountInfo;-><init>()V

    #@269
    .line 6631
    .local v8, "info":Landroid/net/wifi/RssiPacketCountInfo;
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$L2ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@26b
    invoke-static {v0}, Lcom/android/server/wifi/WifiStateMachine;->-wrap18(Lcom/android/server/wifi/WifiStateMachine;)V

    #@26e
    .line 6632
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$L2ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@270
    invoke-static {v0}, Lcom/android/server/wifi/WifiStateMachine;->-get76(Lcom/android/server/wifi/WifiStateMachine;)Landroid/net/wifi/WifiInfo;

    #@273
    move-result-object v0

    #@274
    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getRssi()I

    #@277
    move-result v0

    #@278
    iput v0, v8, Landroid/net/wifi/RssiPacketCountInfo;->rssi:I

    #@27a
    .line 6633
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$L2ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@27c
    invoke-static {v0, v8}, Lcom/android/server/wifi/WifiStateMachine;->-wrap17(Lcom/android/server/wifi/WifiStateMachine;Landroid/net/wifi/RssiPacketCountInfo;)V

    #@27f
    .line 6634
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$L2ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@281
    const v1, 0x25015

    #@284
    invoke-static {v0, p1, v1, v8}, Lcom/android/server/wifi/WifiStateMachine;->-wrap32(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;ILjava/lang/Object;)V

    #@287
    goto/16 :goto_0

    #@289
    .line 6637
    .end local v8    # "info":Landroid/net/wifi/RssiPacketCountInfo;
    :sswitch_10
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$L2ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@28b
    invoke-static {v0}, Lcom/android/server/wifi/WifiStateMachine;->-get5(Lcom/android/server/wifi/WifiStateMachine;)Z

    #@28e
    move-result v0

    #@28f
    if-nez v0, :cond_9

    #@291
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$L2ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@293
    invoke-static {v0}, Lcom/android/server/wifi/WifiStateMachine;->-get73(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigManager;

    #@296
    move-result-object v0

    #@297
    iget-boolean v0, v0, Lcom/android/server/wifi/WifiConfigManager;->mEnableLinkDebouncing:Z

    #@299
    if-eqz v0, :cond_9

    #@29b
    .line 6640
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$L2ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@29d
    new-instance v1, Ljava/lang/StringBuilder;

    #@29f
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@2a2
    const-string/jumbo v2, "CMD_DELAYED_NETWORK_DISCONNECT and not debouncing - ignore "

    #@2a5
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2a8
    move-result-object v1

    #@2a9
    .line 6641
    iget v2, p1, Landroid/os/Message;->arg1:I

    #@2ab
    .line 6640
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@2ae
    move-result-object v1

    #@2af
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2b2
    move-result-object v1

    #@2b3
    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiStateMachine;->logd(Ljava/lang/String;)V

    #@2b6
    .line 6642
    const/4 v0, 0x1

    #@2b7
    return v0

    #@2b8
    .line 6644
    :cond_9
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$L2ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@2ba
    new-instance v1, Ljava/lang/StringBuilder;

    #@2bc
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@2bf
    const-string/jumbo v2, "CMD_DELAYED_NETWORK_DISCONNECT and debouncing - disconnect "

    #@2c2
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2c5
    move-result-object v1

    #@2c6
    .line 6645
    iget v2, p1, Landroid/os/Message;->arg1:I

    #@2c8
    .line 6644
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@2cb
    move-result-object v1

    #@2cc
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2cf
    move-result-object v1

    #@2d0
    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiStateMachine;->logd(Ljava/lang/String;)V

    #@2d3
    .line 6647
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$L2ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@2d5
    const/4 v1, 0x0

    #@2d6
    invoke-static {v0, v1}, Lcom/android/server/wifi/WifiStateMachine;->-set4(Lcom/android/server/wifi/WifiStateMachine;Z)Z

    #@2d9
    .line 6652
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$L2ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@2db
    invoke-static {v0}, Lcom/android/server/wifi/WifiStateMachine;->-wrap23(Lcom/android/server/wifi/WifiStateMachine;)V

    #@2de
    .line 6653
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$L2ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@2e0
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine$L2ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@2e2
    invoke-static {v1}, Lcom/android/server/wifi/WifiStateMachine;->-get16(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/internal/util/State;

    #@2e5
    move-result-object v1

    #@2e6
    invoke-static {v0, v1}, Lcom/android/server/wifi/WifiStateMachine;->-wrap45(Lcom/android/server/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V

    #@2e9
    goto/16 :goto_0

    #@2eb
    .line 6657
    :sswitch_11
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@2ed
    check-cast v0, Ljava/lang/String;

    #@2ef
    if-nez v0, :cond_a

    #@2f1
    .line 6658
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$L2ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@2f3
    const-string/jumbo v1, "Associated command w/o BSSID"

    #@2f6
    invoke-static {v0, v1}, Lcom/android/server/wifi/WifiStateMachine;->-wrap29(Lcom/android/server/wifi/WifiStateMachine;Ljava/lang/String;)V

    #@2f9
    goto/16 :goto_0

    #@2fb
    .line 6661
    :cond_a
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine$L2ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@2fd
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@2ff
    check-cast v0, Ljava/lang/String;

    #@301
    invoke-static {v1, v0}, Lcom/android/server/wifi/WifiStateMachine;->-set14(Lcom/android/server/wifi/WifiStateMachine;Ljava/lang/String;)Ljava/lang/String;

    #@304
    .line 6662
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$L2ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@306
    invoke-static {v0}, Lcom/android/server/wifi/WifiStateMachine;->-get30(Lcom/android/server/wifi/WifiStateMachine;)Ljava/lang/String;

    #@309
    move-result-object v0

    #@30a
    if-eqz v0, :cond_0

    #@30c
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$L2ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@30e
    invoke-static {v0}, Lcom/android/server/wifi/WifiStateMachine;->-get76(Lcom/android/server/wifi/WifiStateMachine;)Landroid/net/wifi/WifiInfo;

    #@311
    move-result-object v0

    #@312
    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;

    #@315
    move-result-object v0

    #@316
    if-eqz v0, :cond_b

    #@318
    .line 6663
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$L2ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@31a
    invoke-static {v0}, Lcom/android/server/wifi/WifiStateMachine;->-get30(Lcom/android/server/wifi/WifiStateMachine;)Ljava/lang/String;

    #@31d
    move-result-object v0

    #@31e
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine$L2ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@320
    invoke-static {v1}, Lcom/android/server/wifi/WifiStateMachine;->-get76(Lcom/android/server/wifi/WifiStateMachine;)Landroid/net/wifi/WifiInfo;

    #@323
    move-result-object v1

    #@324
    invoke-virtual {v1}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;

    #@327
    move-result-object v1

    #@328
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@32b
    move-result v0

    #@32c
    if-nez v0, :cond_0

    #@32e
    .line 6664
    :cond_b
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$L2ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@330
    invoke-static {v0}, Lcom/android/server/wifi/WifiStateMachine;->-get76(Lcom/android/server/wifi/WifiStateMachine;)Landroid/net/wifi/WifiInfo;

    #@333
    move-result-object v1

    #@334
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@336
    check-cast v0, Ljava/lang/String;

    #@338
    invoke-virtual {v1, v0}, Landroid/net/wifi/WifiInfo;->setBSSID(Ljava/lang/String;)V

    #@33b
    .line 6665
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$L2ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@33d
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine$L2ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@33f
    invoke-static {v1}, Lcom/android/server/wifi/WifiStateMachine;->-get30(Lcom/android/server/wifi/WifiStateMachine;)Ljava/lang/String;

    #@342
    move-result-object v1

    #@343
    invoke-static {v0, v1}, Lcom/android/server/wifi/WifiStateMachine;->-wrap35(Lcom/android/server/wifi/WifiStateMachine;Ljava/lang/String;)V

    #@346
    goto/16 :goto_0

    #@348
    .line 6670
    :sswitch_12
    iget v0, p1, Landroid/os/Message;->arg1:I

    #@34a
    int-to-byte v7, v0

    #@34b
    .line 6671
    .local v7, "currRssi":B
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$L2ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@34d
    iget v1, p1, Landroid/os/Message;->what:I

    #@34f
    invoke-virtual {v0, v7, v1}, Lcom/android/server/wifi/WifiStateMachine;->processRssiThreshold(BI)V

    #@352
    goto/16 :goto_0

    #@354
    .line 6674
    .end local v7    # "currRssi":B
    :sswitch_13
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$L2ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@356
    invoke-virtual {v0}, Lcom/android/server/wifi/WifiStateMachine;->stopRssiMonitoringOffload()I

    #@359
    goto/16 :goto_0

    #@35b
    .line 6677
    :sswitch_14
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$L2ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@35d
    invoke-static {v0}, Lcom/android/server/wifi/WifiStateMachine;->-get33(Lcom/android/server/wifi/WifiStateMachine;)I

    #@360
    move-result v0

    #@361
    const/4 v1, -0x1

    #@362
    if-eq v0, v1, :cond_c

    #@364
    .line 6679
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$L2ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@366
    invoke-static {v0}, Lcom/android/server/wifi/WifiStateMachine;->-get73(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigManager;

    #@369
    move-result-object v0

    #@36a
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine$L2ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@36c
    invoke-static {v1}, Lcom/android/server/wifi/WifiStateMachine;->-get33(Lcom/android/server/wifi/WifiStateMachine;)I

    #@36f
    move-result v1

    #@370
    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiConfigManager;->getWifiConfiguration(I)Landroid/net/wifi/WifiConfiguration;

    #@373
    move-result-object v6

    #@374
    .line 6680
    .local v6, "config":Landroid/net/wifi/WifiConfiguration;
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$L2ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@376
    invoke-static {v0}, Lcom/android/server/wifi/WifiStateMachine;->-get73(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigManager;

    #@379
    move-result-object v0

    #@37a
    invoke-virtual {v0, v6}, Lcom/android/server/wifi/WifiConfigManager;->isSimConfig(Landroid/net/wifi/WifiConfiguration;)Z

    #@37d
    move-result v0

    #@37e
    if-eqz v0, :cond_c

    #@380
    .line 6681
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$L2ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@382
    invoke-static {v0}, Lcom/android/server/wifi/WifiStateMachine;->-get83(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiNative;

    #@385
    move-result-object v0

    #@386
    invoke-virtual {v0}, Lcom/android/server/wifi/WifiNative;->disconnect()Z

    #@389
    .line 6682
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$L2ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@38b
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine$L2ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@38d
    invoke-static {v1}, Lcom/android/server/wifi/WifiStateMachine;->-get17(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/internal/util/State;

    #@390
    move-result-object v1

    #@391
    invoke-static {v0, v1}, Lcom/android/server/wifi/WifiStateMachine;->-wrap45(Lcom/android/server/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V

    #@394
    .line 6686
    .end local v6    # "config":Landroid/net/wifi/WifiConfiguration;
    :cond_c
    const/4 v0, 0x0

    #@395
    return v0

    #@396
    .line 6500
    :sswitch_data_0
    .sparse-switch
        0x20048 -> :sswitch_a
        0x20049 -> :sswitch_8
        0x20052 -> :sswitch_e
        0x20053 -> :sswitch_d
        0x20057 -> :sswitch_10
        0x20065 -> :sswitch_14
        0x2008a -> :sswitch_5
        0x2008b -> :sswitch_6
        0x20093 -> :sswitch_11
        0x20095 -> :sswitch_7
        0x200a2 -> :sswitch_12
        0x200a3 -> :sswitch_13
        0x200a4 -> :sswitch_12
        0x200c8 -> :sswitch_3
        0x200c9 -> :sswitch_4
        0x2300c -> :sswitch_9
        0x24003 -> :sswitch_c
        0x25001 -> :sswitch_b
        0x25014 -> :sswitch_f
        0x30003 -> :sswitch_0
        0x30004 -> :sswitch_2
        0x30006 -> :sswitch_1
    .end sparse-switch
.end method
