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
    .line 6514
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
    .line 6517
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
    .line 6518
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$L2ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@e
    invoke-static {v0}, Lcom/android/server/wifi/WifiStateMachine;->-get23(Lcom/android/server/wifi/WifiStateMachine;)Z

    #@11
    move-result v0

    #@12
    if-eqz v0, :cond_0

    #@14
    .line 6519
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
    .line 6521
    :cond_0
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$L2ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@24
    invoke-static {v0}, Lcom/android/server/wifi/WifiStateMachine;->-get35(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiStateMachine$WifiNetworkAgent;

    #@27
    move-result-object v0

    #@28
    if-eqz v0, :cond_1

    #@2a
    .line 6522
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$L2ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@2c
    const-string/jumbo v1, "Have NetworkAgent when entering L2Connected"

    #@2f
    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V

    #@32
    .line 6523
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$L2ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@34
    sget-object v1, Landroid/net/NetworkInfo$DetailedState;->DISCONNECTED:Landroid/net/NetworkInfo$DetailedState;

    #@36
    invoke-static {v0, v1}, Lcom/android/server/wifi/WifiStateMachine;->-wrap4(Lcom/android/server/wifi/WifiStateMachine;Landroid/net/NetworkInfo$DetailedState;)Z

    #@39
    .line 6525
    :cond_1
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$L2ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@3b
    sget-object v1, Landroid/net/NetworkInfo$DetailedState;->CONNECTING:Landroid/net/NetworkInfo$DetailedState;

    #@3d
    invoke-static {v0, v1}, Lcom/android/server/wifi/WifiStateMachine;->-wrap4(Lcom/android/server/wifi/WifiStateMachine;Landroid/net/NetworkInfo$DetailedState;)Z

    #@40
    .line 6527
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
    .line 6528
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
    .line 6529
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
    .line 6527
    invoke-direct/range {v0 .. v9}, Lcom/android/server/wifi/WifiStateMachine$WifiNetworkAgent;-><init>(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Looper;Landroid/content/Context;Ljava/lang/String;Landroid/net/NetworkInfo;Landroid/net/NetworkCapabilities;Landroid/net/LinkProperties;ILandroid/net/NetworkMisc;)V

    #@76
    invoke-static {v10, v0}, Lcom/android/server/wifi/WifiStateMachine;->-set19(Lcom/android/server/wifi/WifiStateMachine;Lcom/android/server/wifi/WifiStateMachine$WifiNetworkAgent;)Lcom/android/server/wifi/WifiStateMachine$WifiNetworkAgent;

    #@79
    .line 6534
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$L2ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@7b
    const-string/jumbo v1, "L2ConnectedState"

    #@7e
    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiStateMachine;->clearCurrentConfigBSSID(Ljava/lang/String;)V

    #@81
    .line 6535
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$L2ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@83
    invoke-static {v0}, Lcom/android/server/wifi/WifiStateMachine;->-get15(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiCountryCode;

    #@86
    move-result-object v0

    #@87
    invoke-virtual {v0, v11}, Lcom/android/server/wifi/WifiCountryCode;->setReadyForChange(Z)V

    #@8a
    .line 6536
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$L2ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@8c
    invoke-static {v0}, Lcom/android/server/wifi/WifiStateMachine;->-get82(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiMetrics;

    #@8f
    move-result-object v0

    #@90
    const/4 v1, 0x3

    #@91
    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiMetrics;->setWifiState(I)V

    #@94
    .line 6516
    return-void
.end method

.method public exit()V
    .locals 3

    #@0
    .prologue
    .line 6541
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine$L2ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@2
    invoke-static {v1}, Lcom/android/server/wifi/WifiStateMachine;->-get28(Lcom/android/server/wifi/WifiStateMachine;)Landroid/net/ip/IpManager;

    #@5
    move-result-object v1

    #@6
    invoke-virtual {v1}, Landroid/net/ip/IpManager;->stop()V

    #@9
    .line 6548
    invoke-static {}, Lcom/android/server/wifi/WifiStateMachine;->-get0()Z

    #@c
    move-result v1

    #@d
    if-eqz v1, :cond_0

    #@f
    .line 6549
    new-instance v0, Ljava/lang/StringBuilder;

    #@11
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@14
    .line 6550
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
    .line 6551
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine$L2ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@2a
    invoke-static {v1}, Lcom/android/server/wifi/WifiStateMachine;->-get30(Lcom/android/server/wifi/WifiStateMachine;)Ljava/lang/String;

    #@2d
    move-result-object v1

    #@2e
    if-eqz v1, :cond_0

    #@30
    .line 6552
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
    .line 6555
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
    .line 6556
    :cond_1
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine$L2ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@53
    invoke-static {v1}, Lcom/android/server/wifi/WifiStateMachine;->-wrap23(Lcom/android/server/wifi/WifiStateMachine;)V

    #@56
    .line 6558
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
    .line 6559
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine$L2ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@62
    invoke-static {v1}, Lcom/android/server/wifi/WifiStateMachine;->-get82(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiMetrics;

    #@65
    move-result-object v1

    #@66
    const/4 v2, 0x2

    #@67
    invoke-virtual {v1, v2}, Lcom/android/server/wifi/WifiMetrics;->setWifiState(I)V

    #@6a
    .line 6540
    return-void
.end method

.method public processMessage(Landroid/os/Message;)Z
    .locals 13
    .param p1, "message"    # Landroid/os/Message;

    #@0
    .prologue
    .line 6564
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$L2ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@2
    invoke-static {v0, p1, p0}, Lcom/android/server/wifi/WifiStateMachine;->-wrap28(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;Lcom/android/internal/util/State;)V

    #@5
    .line 6566
    iget v0, p1, Landroid/os/Message;->what:I

    #@7
    sparse-switch v0, :sswitch_data_0

    #@a
    .line 6756
    const/4 v0, 0x0

    #@b
    return v0

    #@c
    .line 6568
    :sswitch_0
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$L2ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@e
    invoke-virtual {v0}, Lcom/android/server/wifi/WifiStateMachine;->handlePreDhcpSetup()V

    #@11
    .line 6759
    :cond_0
    :goto_0
    const/4 v0, 0x1

    #@12
    return v0

    #@13
    .line 6571
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
    .line 6574
    :sswitch_2
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$L2ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@1f
    invoke-virtual {v0}, Lcom/android/server/wifi/WifiStateMachine;->handlePostDhcpSetup()V

    #@22
    goto :goto_0

    #@23
    .line 6584
    :sswitch_3
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine$L2ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@25
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@27
    check-cast v0, Landroid/net/DhcpResults;

    #@29
    invoke-static {v1, v0}, Lcom/android/server/wifi/WifiStateMachine;->-wrap20(Lcom/android/server/wifi/WifiStateMachine;Landroid/net/DhcpResults;)V

    #@2c
    .line 6585
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
    .line 6589
    :sswitch_4
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$L2ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@3a
    invoke-static {v0}, Lcom/android/server/wifi/WifiStateMachine;->-wrap19(Lcom/android/server/wifi/WifiStateMachine;)V

    #@3d
    goto :goto_0

    #@3e
    .line 6593
    :sswitch_5
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$L2ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@40
    invoke-static {v0}, Lcom/android/server/wifi/WifiStateMachine;->-wrap26(Lcom/android/server/wifi/WifiStateMachine;)V

    #@43
    .line 6594
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$L2ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@45
    .line 6595
    const/4 v1, 0x1

    #@46
    .line 6596
    const/4 v2, 0x1

    #@47
    .line 6594
    invoke-static {v0, v1, v2}, Lcom/android/server/wifi/WifiStateMachine;->-wrap33(Lcom/android/server/wifi/WifiStateMachine;II)V

    #@4a
    .line 6597
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$L2ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@4c
    invoke-static {v0}, Lcom/android/server/wifi/WifiStateMachine;->-wrap34(Lcom/android/server/wifi/WifiStateMachine;)V

    #@4f
    .line 6598
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
    .line 6602
    :sswitch_6
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$L2ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@5d
    const/4 v1, 0x1

    #@5e
    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiStateMachine;->getWifiLinkLayerStats(Z)Landroid/net/wifi/WifiLinkLayerStats;

    #@61
    .line 6603
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$L2ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@63
    invoke-static {v0}, Lcom/android/server/wifi/WifiStateMachine;->-wrap21(Lcom/android/server/wifi/WifiStateMachine;)V

    #@66
    .line 6604
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
    .line 6607
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
    .line 6608
    :cond_1
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$L2ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@87
    invoke-static {v0}, Lcom/android/server/wifi/WifiStateMachine;->-wrap22(Lcom/android/server/wifi/WifiStateMachine;)V

    #@8a
    .line 6609
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
    .line 6612
    :sswitch_8
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$L2ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@99
    invoke-static {v0}, Lcom/android/server/wifi/WifiStateMachine;->-get84(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiNative;

    #@9c
    move-result-object v0

    #@9d
    invoke-virtual {v0}, Lcom/android/server/wifi/WifiNative;->disconnect()Z

    #@a0
    .line 6613
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
    .line 6616
    :sswitch_9
    iget v0, p1, Landroid/os/Message;->arg1:I

    #@af
    const/4 v1, 0x1

    #@b0
    if-ne v0, v1, :cond_0

    #@b2
    .line 6617
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$L2ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@b4
    invoke-static {v0}, Lcom/android/server/wifi/WifiStateMachine;->-get84(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiNative;

    #@b7
    move-result-object v0

    #@b8
    invoke-virtual {v0}, Lcom/android/server/wifi/WifiNative;->disconnect()Z

    #@bb
    .line 6618
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$L2ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@bd
    const/4 v1, 0x1

    #@be
    invoke-static {v0, v1}, Lcom/android/server/wifi/WifiStateMachine;->-set32(Lcom/android/server/wifi/WifiStateMachine;Z)Z

    #@c1
    .line 6619
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
    .line 6623
    :sswitch_a
    iget v0, p1, Landroid/os/Message;->arg1:I

    #@d0
    const/4 v1, 0x1

    #@d1
    if-eq v0, v1, :cond_2

    #@d3
    .line 6624
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$L2ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@d5
    const v1, 0x20049

    #@d8
    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiStateMachine;->sendMessage(I)V

    #@db
    .line 6625
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$L2ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@dd
    invoke-static {v0, p1}, Lcom/android/server/wifi/WifiStateMachine;->-wrap16(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;)V

    #@e0
    .line 6626
    iget v0, p1, Landroid/os/Message;->arg1:I

    #@e2
    const/4 v1, 0x3

    #@e3
    if-ne v0, v1, :cond_2

    #@e5
    .line 6627
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$L2ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@e7
    invoke-virtual {v0}, Lcom/android/server/wifi/WifiStateMachine;->noteWifiDisabledWhileAssociated()V

    #@ea
    .line 6630
    :cond_2
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$L2ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@ec
    invoke-static {v0}, Lcom/android/server/wifi/WifiStateMachine;->-get74(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigManager;

    #@ef
    move-result-object v0

    #@f0
    .line 6632
    const/4 v1, -0x1

    #@f1
    .line 6630
    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiConfigManager;->setAndEnableLastSelectedConfiguration(I)V

    #@f4
    goto/16 :goto_0

    #@f6
    .line 6636
    :sswitch_b
    iget v10, p1, Landroid/os/Message;->arg1:I

    #@f8
    .line 6637
    .local v10, "netId":I
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$L2ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@fa
    invoke-static {v0}, Lcom/android/server/wifi/WifiStateMachine;->-get77(Lcom/android/server/wifi/WifiStateMachine;)Landroid/net/wifi/WifiInfo;

    #@fd
    move-result-object v0

    #@fe
    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getNetworkId()I

    #@101
    move-result v0

    #@102
    if-eq v0, v10, :cond_0

    #@104
    .line 6640
    const/4 v0, 0x0

    #@105
    return v0

    #@106
    .line 6642
    .end local v10    # "netId":I
    :sswitch_c
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$L2ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@108
    invoke-static {v0}, Lcom/android/server/wifi/WifiStateMachine;->-get77(Lcom/android/server/wifi/WifiStateMachine;)Landroid/net/wifi/WifiInfo;

    #@10b
    move-result-object v1

    #@10c
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@10e
    check-cast v0, Ljava/lang/String;

    #@110
    invoke-virtual {v1, v0}, Landroid/net/wifi/WifiInfo;->setBSSID(Ljava/lang/String;)V

    #@113
    .line 6643
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$L2ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@115
    iget v1, p1, Landroid/os/Message;->arg1:I

    #@117
    invoke-static {v0, v1}, Lcom/android/server/wifi/WifiStateMachine;->-set17(Lcom/android/server/wifi/WifiStateMachine;I)I

    #@11a
    .line 6644
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$L2ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@11c
    invoke-static {v0}, Lcom/android/server/wifi/WifiStateMachine;->-get77(Lcom/android/server/wifi/WifiStateMachine;)Landroid/net/wifi/WifiInfo;

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
    .line 6645
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
    .line 6646
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine$L2ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@13b
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@13d
    check-cast v0, Ljava/lang/String;

    #@13f
    invoke-static {v1, v0}, Lcom/android/server/wifi/WifiStateMachine;->-set14(Lcom/android/server/wifi/WifiStateMachine;Ljava/lang/String;)Ljava/lang/String;

    #@142
    .line 6647
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
    .line 6651
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
    .line 6652
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$L2ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@15b
    invoke-static {v0}, Lcom/android/server/wifi/WifiStateMachine;->-get74(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigManager;

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
    .line 6653
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
    invoke-static {v2}, Lcom/android/server/wifi/WifiStateMachine;->-get80(Lcom/android/server/wifi/WifiStateMachine;)I

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
    .line 6654
    :cond_3
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$L2ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@18e
    invoke-static {}, Lcom/android/server/wifi/WifiStateMachine;->-get0()Z

    #@191
    move-result v1

    #@192
    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiStateMachine;->getWifiLinkLayerStats(Z)Landroid/net/wifi/WifiLinkLayerStats;

    #@195
    move-result-object v11

    #@196
    .line 6655
    .local v11, "stats":Landroid/net/wifi/WifiLinkLayerStats;
    if-eqz v11, :cond_5

    #@198
    .line 6657
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$L2ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@19a
    invoke-static {v0}, Lcom/android/server/wifi/WifiStateMachine;->-get77(Lcom/android/server/wifi/WifiStateMachine;)Landroid/net/wifi/WifiInfo;

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
    .line 6658
    iget v0, v11, Landroid/net/wifi/WifiLinkLayerStats;->rssi_mgmt:I

    #@1a8
    if-eqz v0, :cond_4

    #@1aa
    .line 6659
    iget v0, v11, Landroid/net/wifi/WifiLinkLayerStats;->beacon_rx:I

    #@1ac
    if-nez v0, :cond_5

    #@1ae
    .line 6660
    :cond_4
    const/4 v11, 0x0

    #@1af
    .line 6664
    .end local v11    # "stats":Landroid/net/wifi/WifiLinkLayerStats;
    :cond_5
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$L2ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@1b1
    invoke-static {v0}, Lcom/android/server/wifi/WifiStateMachine;->-wrap18(Lcom/android/server/wifi/WifiStateMachine;)V

    #@1b4
    .line 6665
    iget-object v12, p0, Lcom/android/server/wifi/WifiStateMachine$L2ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@1b6
    .line 6666
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$L2ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@1b8
    invoke-static {v0}, Lcom/android/server/wifi/WifiStateMachine;->-get77(Lcom/android/server/wifi/WifiStateMachine;)Landroid/net/wifi/WifiInfo;

    #@1bb
    move-result-object v0

    #@1bc
    .line 6667
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine$L2ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@1be
    invoke-virtual {v1}, Lcom/android/server/wifi/WifiStateMachine;->getCurrentWifiConfiguration()Landroid/net/wifi/WifiConfiguration;

    #@1c1
    move-result-object v1

    #@1c2
    .line 6668
    iget-object v2, p0, Lcom/android/server/wifi/WifiStateMachine$L2ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@1c4
    invoke-static {v2}, Lcom/android/server/wifi/WifiStateMachine;->-get74(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigManager;

    #@1c7
    move-result-object v2

    #@1c8
    .line 6669
    iget-object v3, p0, Lcom/android/server/wifi/WifiStateMachine$L2ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@1ca
    invoke-static {v3}, Lcom/android/server/wifi/WifiStateMachine;->-get35(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiStateMachine$WifiNetworkAgent;

    #@1cd
    move-result-object v3

    #@1ce
    .line 6670
    iget-object v4, p0, Lcom/android/server/wifi/WifiStateMachine$L2ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@1d0
    iget-object v4, v4, Lcom/android/server/wifi/WifiStateMachine;->mWifiScoreReport:Lcom/android/server/wifi/WifiScoreReport;

    #@1d2
    .line 6671
    iget-object v5, p0, Lcom/android/server/wifi/WifiStateMachine$L2ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@1d4
    invoke-static {v5}, Lcom/android/server/wifi/WifiStateMachine;->-get6(Lcom/android/server/wifi/WifiStateMachine;)I

    #@1d7
    move-result v5

    #@1d8
    .line 6672
    iget-object v6, p0, Lcom/android/server/wifi/WifiStateMachine$L2ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@1da
    invoke-static {v6}, Lcom/android/server/wifi/WifiStateMachine;->-get82(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiMetrics;

    #@1dd
    move-result-object v6

    #@1de
    .line 6666
    invoke-static/range {v0 .. v6}, Lcom/android/server/wifi/WifiScoreReport;->calculateScore(Landroid/net/wifi/WifiInfo;Landroid/net/wifi/WifiConfiguration;Lcom/android/server/wifi/WifiConfigManager;Landroid/net/NetworkAgent;Lcom/android/server/wifi/WifiScoreReport;ILcom/android/server/wifi/WifiMetrics;)Lcom/android/server/wifi/WifiScoreReport;

    #@1e1
    move-result-object v0

    #@1e2
    .line 6665
    iput-object v0, v12, Lcom/android/server/wifi/WifiStateMachine;->mWifiScoreReport:Lcom/android/server/wifi/WifiScoreReport;

    #@1e4
    .line 6674
    :cond_6
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$L2ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@1e6
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine$L2ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@1e8
    .line 6675
    iget-object v2, p0, Lcom/android/server/wifi/WifiStateMachine$L2ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@1ea
    invoke-static {v2}, Lcom/android/server/wifi/WifiStateMachine;->-get50(Lcom/android/server/wifi/WifiStateMachine;)I

    #@1ed
    move-result v2

    #@1ee
    .line 6674
    const v3, 0x20053

    #@1f1
    .line 6675
    const/4 v4, 0x0

    #@1f2
    .line 6674
    invoke-virtual {v1, v3, v2, v4}, Lcom/android/server/wifi/WifiStateMachine;->obtainMessage(III)Landroid/os/Message;

    #@1f5
    move-result-object v1

    #@1f6
    .line 6675
    const-wide/16 v2, 0xbb8

    #@1f8
    .line 6674
    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/wifi/WifiStateMachine;->sendMessageDelayed(Landroid/os/Message;J)V

    #@1fb
    .line 6676
    invoke-static {}, Lcom/android/server/wifi/WifiStateMachine;->-get0()Z

    #@1fe
    move-result v0

    #@1ff
    if-eqz v0, :cond_0

    #@201
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$L2ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@203
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine$L2ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@205
    invoke-static {v1}, Lcom/android/server/wifi/WifiStateMachine;->-get77(Lcom/android/server/wifi/WifiStateMachine;)Landroid/net/wifi/WifiInfo;

    #@208
    move-result-object v1

    #@209
    invoke-virtual {v1}, Landroid/net/wifi/WifiInfo;->getRssi()I

    #@20c
    move-result v1

    #@20d
    invoke-static {v0, v1}, Lcom/android/server/wifi/WifiStateMachine;->-wrap36(Lcom/android/server/wifi/WifiStateMachine;I)V

    #@210
    goto/16 :goto_0

    #@212
    .line 6682
    :sswitch_e
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$L2ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@214
    invoke-static {v0}, Lcom/android/server/wifi/WifiStateMachine;->-wrap15(Lcom/android/server/wifi/WifiStateMachine;)V

    #@217
    .line 6683
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$L2ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@219
    invoke-static {v0}, Lcom/android/server/wifi/WifiStateMachine;->-get74(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigManager;

    #@21c
    move-result-object v0

    #@21d
    iget-object v0, v0, Lcom/android/server/wifi/WifiConfigManager;->mEnableRssiPollWhenAssociated:Ljava/util/concurrent/atomic/AtomicBoolean;

    #@21f
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    #@222
    move-result v0

    #@223
    if-eqz v0, :cond_8

    #@225
    .line 6684
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine$L2ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@227
    iget v0, p1, Landroid/os/Message;->arg1:I

    #@229
    const/4 v2, 0x1

    #@22a
    if-ne v0, v2, :cond_7

    #@22c
    const/4 v0, 0x1

    #@22d
    :goto_1
    invoke-static {v1, v0}, Lcom/android/server/wifi/WifiStateMachine;->-set10(Lcom/android/server/wifi/WifiStateMachine;Z)Z

    #@230
    .line 6688
    :goto_2
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$L2ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@232
    invoke-static {v0}, Lcom/android/server/wifi/WifiStateMachine;->-get50(Lcom/android/server/wifi/WifiStateMachine;)I

    #@235
    move-result v1

    #@236
    add-int/lit8 v1, v1, 0x1

    #@238
    invoke-static {v0, v1}, Lcom/android/server/wifi/WifiStateMachine;->-set23(Lcom/android/server/wifi/WifiStateMachine;I)I

    #@23b
    .line 6689
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$L2ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@23d
    invoke-static {v0}, Lcom/android/server/wifi/WifiStateMachine;->-get23(Lcom/android/server/wifi/WifiStateMachine;)Z

    #@240
    move-result v0

    #@241
    if-eqz v0, :cond_0

    #@243
    .line 6691
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$L2ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@245
    invoke-static {v0}, Lcom/android/server/wifi/WifiStateMachine;->-wrap18(Lcom/android/server/wifi/WifiStateMachine;)V

    #@248
    .line 6692
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$L2ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@24a
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine$L2ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@24c
    .line 6693
    iget-object v2, p0, Lcom/android/server/wifi/WifiStateMachine$L2ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@24e
    invoke-static {v2}, Lcom/android/server/wifi/WifiStateMachine;->-get50(Lcom/android/server/wifi/WifiStateMachine;)I

    #@251
    move-result v2

    #@252
    .line 6692
    const v3, 0x20053

    #@255
    .line 6693
    const/4 v4, 0x0

    #@256
    .line 6692
    invoke-virtual {v1, v3, v2, v4}, Lcom/android/server/wifi/WifiStateMachine;->obtainMessage(III)Landroid/os/Message;

    #@259
    move-result-object v1

    #@25a
    .line 6693
    const-wide/16 v2, 0xbb8

    #@25c
    .line 6692
    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/wifi/WifiStateMachine;->sendMessageDelayed(Landroid/os/Message;J)V

    #@25f
    goto/16 :goto_0

    #@261
    .line 6684
    :cond_7
    const/4 v0, 0x0

    #@262
    goto :goto_1

    #@263
    .line 6686
    :cond_8
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$L2ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@265
    const/4 v1, 0x0

    #@266
    invoke-static {v0, v1}, Lcom/android/server/wifi/WifiStateMachine;->-set10(Lcom/android/server/wifi/WifiStateMachine;Z)Z

    #@269
    goto :goto_2

    #@26a
    .line 6697
    :sswitch_f
    new-instance v9, Landroid/net/wifi/RssiPacketCountInfo;

    #@26c
    invoke-direct {v9}, Landroid/net/wifi/RssiPacketCountInfo;-><init>()V

    #@26f
    .line 6698
    .local v9, "info":Landroid/net/wifi/RssiPacketCountInfo;
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$L2ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@271
    invoke-static {v0}, Lcom/android/server/wifi/WifiStateMachine;->-wrap18(Lcom/android/server/wifi/WifiStateMachine;)V

    #@274
    .line 6699
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$L2ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@276
    invoke-static {v0}, Lcom/android/server/wifi/WifiStateMachine;->-get77(Lcom/android/server/wifi/WifiStateMachine;)Landroid/net/wifi/WifiInfo;

    #@279
    move-result-object v0

    #@27a
    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getRssi()I

    #@27d
    move-result v0

    #@27e
    iput v0, v9, Landroid/net/wifi/RssiPacketCountInfo;->rssi:I

    #@280
    .line 6700
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$L2ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@282
    invoke-static {v0, v9}, Lcom/android/server/wifi/WifiStateMachine;->-wrap17(Lcom/android/server/wifi/WifiStateMachine;Landroid/net/wifi/RssiPacketCountInfo;)V

    #@285
    .line 6701
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$L2ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@287
    const v1, 0x25015

    #@28a
    invoke-static {v0, p1, v1, v9}, Lcom/android/server/wifi/WifiStateMachine;->-wrap32(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;ILjava/lang/Object;)V

    #@28d
    goto/16 :goto_0

    #@28f
    .line 6704
    .end local v9    # "info":Landroid/net/wifi/RssiPacketCountInfo;
    :sswitch_10
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$L2ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@291
    invoke-static {v0}, Lcom/android/server/wifi/WifiStateMachine;->-get5(Lcom/android/server/wifi/WifiStateMachine;)Z

    #@294
    move-result v0

    #@295
    if-nez v0, :cond_9

    #@297
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$L2ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@299
    invoke-static {v0}, Lcom/android/server/wifi/WifiStateMachine;->-get74(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigManager;

    #@29c
    move-result-object v0

    #@29d
    iget-boolean v0, v0, Lcom/android/server/wifi/WifiConfigManager;->mEnableLinkDebouncing:Z

    #@29f
    if-eqz v0, :cond_9

    #@2a1
    .line 6707
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$L2ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@2a3
    new-instance v1, Ljava/lang/StringBuilder;

    #@2a5
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@2a8
    const-string/jumbo v2, "CMD_DELAYED_NETWORK_DISCONNECT and not debouncing - ignore "

    #@2ab
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2ae
    move-result-object v1

    #@2af
    .line 6708
    iget v2, p1, Landroid/os/Message;->arg1:I

    #@2b1
    .line 6707
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@2b4
    move-result-object v1

    #@2b5
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2b8
    move-result-object v1

    #@2b9
    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiStateMachine;->logd(Ljava/lang/String;)V

    #@2bc
    .line 6709
    const/4 v0, 0x1

    #@2bd
    return v0

    #@2be
    .line 6711
    :cond_9
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$L2ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@2c0
    new-instance v1, Ljava/lang/StringBuilder;

    #@2c2
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@2c5
    const-string/jumbo v2, "CMD_DELAYED_NETWORK_DISCONNECT and debouncing - disconnect "

    #@2c8
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2cb
    move-result-object v1

    #@2cc
    .line 6712
    iget v2, p1, Landroid/os/Message;->arg1:I

    #@2ce
    .line 6711
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@2d1
    move-result-object v1

    #@2d2
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2d5
    move-result-object v1

    #@2d6
    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiStateMachine;->logd(Ljava/lang/String;)V

    #@2d9
    .line 6714
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$L2ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@2db
    const/4 v1, 0x0

    #@2dc
    invoke-static {v0, v1}, Lcom/android/server/wifi/WifiStateMachine;->-set4(Lcom/android/server/wifi/WifiStateMachine;Z)Z

    #@2df
    .line 6719
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$L2ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@2e1
    invoke-static {v0}, Lcom/android/server/wifi/WifiStateMachine;->-wrap23(Lcom/android/server/wifi/WifiStateMachine;)V

    #@2e4
    .line 6720
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$L2ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@2e6
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine$L2ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@2e8
    invoke-static {v1}, Lcom/android/server/wifi/WifiStateMachine;->-get16(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/internal/util/State;

    #@2eb
    move-result-object v1

    #@2ec
    invoke-static {v0, v1}, Lcom/android/server/wifi/WifiStateMachine;->-wrap45(Lcom/android/server/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V

    #@2ef
    goto/16 :goto_0

    #@2f1
    .line 6724
    :sswitch_11
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@2f3
    check-cast v0, Ljava/lang/String;

    #@2f5
    if-nez v0, :cond_a

    #@2f7
    .line 6725
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$L2ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@2f9
    const-string/jumbo v1, "Associated command w/o BSSID"

    #@2fc
    invoke-static {v0, v1}, Lcom/android/server/wifi/WifiStateMachine;->-wrap29(Lcom/android/server/wifi/WifiStateMachine;Ljava/lang/String;)V

    #@2ff
    goto/16 :goto_0

    #@301
    .line 6728
    :cond_a
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine$L2ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@303
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@305
    check-cast v0, Ljava/lang/String;

    #@307
    invoke-static {v1, v0}, Lcom/android/server/wifi/WifiStateMachine;->-set14(Lcom/android/server/wifi/WifiStateMachine;Ljava/lang/String;)Ljava/lang/String;

    #@30a
    .line 6729
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$L2ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@30c
    invoke-static {v0}, Lcom/android/server/wifi/WifiStateMachine;->-get30(Lcom/android/server/wifi/WifiStateMachine;)Ljava/lang/String;

    #@30f
    move-result-object v0

    #@310
    if-eqz v0, :cond_0

    #@312
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$L2ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@314
    invoke-static {v0}, Lcom/android/server/wifi/WifiStateMachine;->-get77(Lcom/android/server/wifi/WifiStateMachine;)Landroid/net/wifi/WifiInfo;

    #@317
    move-result-object v0

    #@318
    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;

    #@31b
    move-result-object v0

    #@31c
    if-eqz v0, :cond_b

    #@31e
    .line 6730
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$L2ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@320
    invoke-static {v0}, Lcom/android/server/wifi/WifiStateMachine;->-get30(Lcom/android/server/wifi/WifiStateMachine;)Ljava/lang/String;

    #@323
    move-result-object v0

    #@324
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine$L2ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@326
    invoke-static {v1}, Lcom/android/server/wifi/WifiStateMachine;->-get77(Lcom/android/server/wifi/WifiStateMachine;)Landroid/net/wifi/WifiInfo;

    #@329
    move-result-object v1

    #@32a
    invoke-virtual {v1}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;

    #@32d
    move-result-object v1

    #@32e
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@331
    move-result v0

    #@332
    if-nez v0, :cond_0

    #@334
    .line 6731
    :cond_b
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$L2ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@336
    invoke-static {v0}, Lcom/android/server/wifi/WifiStateMachine;->-get77(Lcom/android/server/wifi/WifiStateMachine;)Landroid/net/wifi/WifiInfo;

    #@339
    move-result-object v1

    #@33a
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@33c
    check-cast v0, Ljava/lang/String;

    #@33e
    invoke-virtual {v1, v0}, Landroid/net/wifi/WifiInfo;->setBSSID(Ljava/lang/String;)V

    #@341
    .line 6732
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$L2ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@343
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine$L2ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@345
    invoke-static {v1}, Lcom/android/server/wifi/WifiStateMachine;->-get30(Lcom/android/server/wifi/WifiStateMachine;)Ljava/lang/String;

    #@348
    move-result-object v1

    #@349
    invoke-static {v0, v1}, Lcom/android/server/wifi/WifiStateMachine;->-wrap35(Lcom/android/server/wifi/WifiStateMachine;Ljava/lang/String;)V

    #@34c
    goto/16 :goto_0

    #@34e
    .line 6737
    :sswitch_12
    iget v0, p1, Landroid/os/Message;->arg1:I

    #@350
    int-to-byte v8, v0

    #@351
    .line 6738
    .local v8, "currRssi":B
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$L2ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@353
    iget v1, p1, Landroid/os/Message;->what:I

    #@355
    invoke-virtual {v0, v8, v1}, Lcom/android/server/wifi/WifiStateMachine;->processRssiThreshold(BI)V

    #@358
    goto/16 :goto_0

    #@35a
    .line 6741
    .end local v8    # "currRssi":B
    :sswitch_13
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$L2ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@35c
    invoke-virtual {v0}, Lcom/android/server/wifi/WifiStateMachine;->stopRssiMonitoringOffload()I

    #@35f
    goto/16 :goto_0

    #@361
    .line 6744
    :sswitch_14
    iget v0, p1, Landroid/os/Message;->arg1:I

    #@363
    if-nez v0, :cond_c

    #@365
    .line 6745
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$L2ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@367
    invoke-static {v0}, Lcom/android/server/wifi/WifiStateMachine;->-get33(Lcom/android/server/wifi/WifiStateMachine;)I

    #@36a
    move-result v0

    #@36b
    const/4 v1, -0x1

    #@36c
    if-eq v0, v1, :cond_c

    #@36e
    .line 6747
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$L2ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@370
    invoke-static {v0}, Lcom/android/server/wifi/WifiStateMachine;->-get74(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigManager;

    #@373
    move-result-object v0

    #@374
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine$L2ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@376
    invoke-static {v1}, Lcom/android/server/wifi/WifiStateMachine;->-get33(Lcom/android/server/wifi/WifiStateMachine;)I

    #@379
    move-result v1

    #@37a
    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiConfigManager;->getWifiConfiguration(I)Landroid/net/wifi/WifiConfiguration;

    #@37d
    move-result-object v7

    #@37e
    .line 6748
    .local v7, "config":Landroid/net/wifi/WifiConfiguration;
    invoke-static {v7}, Lcom/android/server/wifi/util/TelephonyUtil;->isSimConfig(Landroid/net/wifi/WifiConfiguration;)Z

    #@381
    move-result v0

    #@382
    if-eqz v0, :cond_c

    #@384
    .line 6749
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$L2ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@386
    invoke-static {v0}, Lcom/android/server/wifi/WifiStateMachine;->-get84(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiNative;

    #@389
    move-result-object v0

    #@38a
    invoke-virtual {v0}, Lcom/android/server/wifi/WifiNative;->disconnect()Z

    #@38d
    .line 6750
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$L2ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@38f
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine$L2ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@391
    invoke-static {v1}, Lcom/android/server/wifi/WifiStateMachine;->-get17(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/internal/util/State;

    #@394
    move-result-object v1

    #@395
    invoke-static {v0, v1}, Lcom/android/server/wifi/WifiStateMachine;->-wrap45(Lcom/android/server/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V

    #@398
    .line 6754
    .end local v7    # "config":Landroid/net/wifi/WifiConfiguration;
    :cond_c
    const/4 v0, 0x0

    #@399
    return v0

    #@39a
    .line 6566
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
