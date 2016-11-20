.class Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;
.super Lcom/android/internal/util/State;
.source "WifiStateMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifi/WifiStateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "DriverStartedState"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/wifi/WifiStateMachine;


# direct methods
.method constructor <init>(Lcom/android/server/wifi/WifiStateMachine;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/wifi/WifiStateMachine;

    #@0
    .prologue
    .line 4647
    iput-object p1, p0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

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
    .line 4650
    invoke-static {}, Lcom/android/server/wifi/WifiStateMachine;->-get0()Z

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_0

    #@6
    .line 4651
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@8
    const-string/jumbo v1, "DriverStartedState enter"

    #@b
    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiStateMachine;->logd(Ljava/lang/String;)V

    #@e
    .line 4656
    :cond_0
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@10
    invoke-static {v0}, Lcom/android/server/wifi/WifiStateMachine;->-get87(Lcom/android/server/wifi/WifiStateMachine;)Landroid/net/wifi/WifiScanner;

    #@13
    move-result-object v0

    #@14
    if-nez v0, :cond_1

    #@16
    .line 4657
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@18
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@1a
    invoke-static {v1}, Lcom/android/server/wifi/WifiStateMachine;->-get24(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/FrameworkFacade;

    #@1d
    move-result-object v1

    #@1e
    iget-object v2, p0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@20
    invoke-static {v2}, Lcom/android/server/wifi/WifiStateMachine;->-get14(Lcom/android/server/wifi/WifiStateMachine;)Landroid/content/Context;

    #@23
    move-result-object v2

    #@24
    iget-object v3, p0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@26
    invoke-virtual {v3}, Lcom/android/server/wifi/WifiStateMachine;->getHandler()Landroid/os/Handler;

    #@29
    move-result-object v3

    #@2a
    invoke-virtual {v3}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    #@2d
    move-result-object v3

    #@2e
    invoke-virtual {v1, v2, v3}, Lcom/android/server/wifi/FrameworkFacade;->makeWifiScanner(Landroid/content/Context;Landroid/os/Looper;)Landroid/net/wifi/WifiScanner;

    #@31
    move-result-object v1

    #@32
    invoke-static {v0, v1}, Lcom/android/server/wifi/WifiStateMachine;->-set37(Lcom/android/server/wifi/WifiStateMachine;Landroid/net/wifi/WifiScanner;)Landroid/net/wifi/WifiScanner;

    #@35
    .line 4659
    iget-object v11, p0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@37
    new-instance v0, Lcom/android/server/wifi/WifiConnectivityManager;

    #@39
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@3b
    invoke-static {v1}, Lcom/android/server/wifi/WifiStateMachine;->-get14(Lcom/android/server/wifi/WifiStateMachine;)Landroid/content/Context;

    #@3e
    move-result-object v1

    #@3f
    .line 4660
    iget-object v2, p0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@41
    iget-object v3, p0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@43
    invoke-static {v3}, Lcom/android/server/wifi/WifiStateMachine;->-get87(Lcom/android/server/wifi/WifiStateMachine;)Landroid/net/wifi/WifiScanner;

    #@46
    move-result-object v3

    #@47
    iget-object v4, p0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@49
    invoke-static {v4}, Lcom/android/server/wifi/WifiStateMachine;->-get73(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigManager;

    #@4c
    move-result-object v4

    #@4d
    iget-object v5, p0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@4f
    invoke-static {v5}, Lcom/android/server/wifi/WifiStateMachine;->-get76(Lcom/android/server/wifi/WifiStateMachine;)Landroid/net/wifi/WifiInfo;

    #@52
    move-result-object v5

    #@53
    .line 4661
    iget-object v6, p0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@55
    invoke-static {v6}, Lcom/android/server/wifi/WifiStateMachine;->-get86(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiQualifiedNetworkSelector;

    #@58
    move-result-object v6

    #@59
    iget-object v7, p0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@5b
    invoke-static {v7}, Lcom/android/server/wifi/WifiStateMachine;->-get77(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiInjector;

    #@5e
    move-result-object v7

    #@5f
    .line 4662
    iget-object v8, p0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@61
    invoke-virtual {v8}, Lcom/android/server/wifi/WifiStateMachine;->getHandler()Landroid/os/Handler;

    #@64
    move-result-object v8

    #@65
    invoke-virtual {v8}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    #@68
    move-result-object v8

    #@69
    .line 4659
    invoke-direct/range {v0 .. v8}, Lcom/android/server/wifi/WifiConnectivityManager;-><init>(Landroid/content/Context;Lcom/android/server/wifi/WifiStateMachine;Landroid/net/wifi/WifiScanner;Lcom/android/server/wifi/WifiConfigManager;Landroid/net/wifi/WifiInfo;Lcom/android/server/wifi/WifiQualifiedNetworkSelector;Lcom/android/server/wifi/WifiInjector;Landroid/os/Looper;)V

    #@6c
    invoke-static {v11, v0}, Lcom/android/server/wifi/WifiStateMachine;->-set35(Lcom/android/server/wifi/WifiStateMachine;Lcom/android/server/wifi/WifiConnectivityManager;)Lcom/android/server/wifi/WifiConnectivityManager;

    #@6f
    .line 4665
    :cond_1
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@71
    invoke-static {v0}, Lcom/android/server/wifi/WifiStateMachine;->-get80(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/BaseWifiLogger;

    #@74
    move-result-object v0

    #@75
    invoke-static {}, Lcom/android/server/wifi/WifiStateMachine;->-get0()Z

    #@78
    move-result v1

    #@79
    invoke-virtual {v0, v1}, Lcom/android/server/wifi/BaseWifiLogger;->startLogging(Z)V

    #@7c
    .line 4666
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@7e
    const/4 v1, 0x1

    #@7f
    invoke-static {v0, v1}, Lcom/android/server/wifi/WifiStateMachine;->-set12(Lcom/android/server/wifi/WifiStateMachine;Z)Z

    #@82
    .line 4667
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@84
    const/4 v1, 0x0

    #@85
    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiStateMachine;->updateBatteryWorkSource(Landroid/os/WorkSource;)V

    #@88
    .line 4673
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@8a
    invoke-static {v0}, Lcom/android/server/wifi/WifiStateMachine;->-get83(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiNative;

    #@8d
    move-result-object v0

    #@8e
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@90
    invoke-static {v1}, Lcom/android/server/wifi/WifiStateMachine;->-get9(Lcom/android/server/wifi/WifiStateMachine;)Z

    #@93
    move-result v1

    #@94
    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiNative;->setBluetoothCoexistenceScanMode(Z)Z

    #@97
    .line 4675
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@99
    sget-object v1, Landroid/net/NetworkInfo$DetailedState;->DISCONNECTED:Landroid/net/NetworkInfo$DetailedState;

    #@9b
    invoke-static {v0, v1}, Lcom/android/server/wifi/WifiStateMachine;->-wrap3(Lcom/android/server/wifi/WifiStateMachine;Landroid/net/NetworkInfo$DetailedState;)Z

    #@9e
    .line 4681
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@a0
    invoke-static {v0}, Lcom/android/server/wifi/WifiStateMachine;->-get83(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiNative;

    #@a3
    move-result-object v0

    #@a4
    invoke-virtual {v0}, Lcom/android/server/wifi/WifiNative;->stopFilteringMulticastV4Packets()Z

    #@a7
    .line 4682
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@a9
    invoke-static {v0}, Lcom/android/server/wifi/WifiStateMachine;->-get83(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiNative;

    #@ac
    move-result-object v0

    #@ad
    invoke-virtual {v0}, Lcom/android/server/wifi/WifiNative;->stopFilteringMulticastV6Packets()Z

    #@b0
    .line 4684
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@b2
    invoke-static {v0}, Lcom/android/server/wifi/WifiStateMachine;->-get42(Lcom/android/server/wifi/WifiStateMachine;)I

    #@b5
    move-result v0

    #@b6
    const/4 v1, 0x1

    #@b7
    if-eq v0, v1, :cond_4

    #@b9
    .line 4685
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@bb
    invoke-static {v0}, Lcom/android/server/wifi/WifiStateMachine;->-get83(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiNative;

    #@be
    move-result-object v0

    #@bf
    invoke-virtual {v0}, Lcom/android/server/wifi/WifiNative;->disconnect()Z

    #@c2
    .line 4686
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@c4
    invoke-static {v0}, Lcom/android/server/wifi/WifiStateMachine;->-get73(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigManager;

    #@c7
    move-result-object v0

    #@c8
    invoke-virtual {v0}, Lcom/android/server/wifi/WifiConfigManager;->disableAllNetworksNative()V

    #@cb
    .line 4687
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@cd
    invoke-static {v0}, Lcom/android/server/wifi/WifiStateMachine;->-get42(Lcom/android/server/wifi/WifiStateMachine;)I

    #@d0
    move-result v0

    #@d1
    const/4 v1, 0x3

    #@d2
    if-ne v0, v1, :cond_2

    #@d4
    .line 4688
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@d6
    const/4 v1, 0x1

    #@d7
    invoke-static {v0, v1}, Lcom/android/server/wifi/WifiStateMachine;->-wrap43(Lcom/android/server/wifi/WifiStateMachine;I)V

    #@da
    .line 4690
    :cond_2
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@dc
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@de
    invoke-static {v1}, Lcom/android/server/wifi/WifiStateMachine;->-get51(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/internal/util/State;

    #@e1
    move-result-object v1

    #@e2
    invoke-static {v0, v1}, Lcom/android/server/wifi/WifiStateMachine;->-wrap45(Lcom/android/server/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V

    #@e5
    .line 4705
    :goto_0
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@e7
    invoke-static {v0}, Lcom/android/server/wifi/WifiStateMachine;->-get52(Lcom/android/server/wifi/WifiStateMachine;)Ljava/util/concurrent/atomic/AtomicBoolean;

    #@ea
    move-result-object v0

    #@eb
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    #@ee
    move-result v0

    #@ef
    if-nez v0, :cond_5

    #@f1
    .line 4706
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@f3
    invoke-static {v0}, Lcom/android/server/wifi/WifiStateMachine;->-get14(Lcom/android/server/wifi/WifiStateMachine;)Landroid/content/Context;

    #@f6
    move-result-object v0

    #@f7
    .line 4707
    const-string/jumbo v1, "power"

    #@fa
    .line 4706
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    #@fd
    move-result-object v10

    #@fe
    check-cast v10, Landroid/os/PowerManager;

    #@100
    .line 4708
    .local v10, "powerManager":Landroid/os/PowerManager;
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@102
    invoke-virtual {v10}, Landroid/os/PowerManager;->isScreenOn()Z

    #@105
    move-result v1

    #@106
    invoke-static {v0, v1}, Lcom/android/server/wifi/WifiStateMachine;->-wrap25(Lcom/android/server/wifi/WifiStateMachine;Z)V

    #@109
    .line 4719
    .end local v10    # "powerManager":Landroid/os/PowerManager;
    :goto_1
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@10b
    invoke-static {v0}, Lcom/android/server/wifi/WifiStateMachine;->-get83(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiNative;

    #@10e
    move-result-object v0

    #@10f
    const/4 v1, 0x1

    #@110
    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiNative;->setPowerSave(Z)V

    #@113
    .line 4721
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@115
    invoke-static {v0}, Lcom/android/server/wifi/WifiStateMachine;->-get44(Lcom/android/server/wifi/WifiStateMachine;)Z

    #@118
    move-result v0

    #@119
    if-eqz v0, :cond_3

    #@11b
    .line 4722
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@11d
    invoke-static {v0}, Lcom/android/server/wifi/WifiStateMachine;->-get42(Lcom/android/server/wifi/WifiStateMachine;)I

    #@120
    move-result v0

    #@121
    const/4 v1, 0x1

    #@122
    if-ne v0, v1, :cond_3

    #@124
    .line 4723
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@126
    invoke-static {v0}, Lcom/android/server/wifi/WifiStateMachine;->-get84(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/internal/util/AsyncChannel;

    #@129
    move-result-object v0

    #@12a
    const v1, 0x20083

    #@12d
    invoke-virtual {v0, v1}, Lcom/android/internal/util/AsyncChannel;->sendMessage(I)V

    #@130
    .line 4731
    :cond_3
    new-instance v9, Landroid/content/Intent;

    #@132
    const-string/jumbo v0, "wifi_scan_available"

    #@135
    invoke-direct {v9, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    #@138
    .line 4732
    .local v9, "intent":Landroid/content/Intent;
    const/high16 v0, 0x4000000

    #@13a
    invoke-virtual {v9, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    #@13d
    .line 4733
    const-string/jumbo v0, "scan_enabled"

    #@140
    const/4 v1, 0x3

    #@141
    invoke-virtual {v9, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    #@144
    .line 4734
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@146
    invoke-static {v0}, Lcom/android/server/wifi/WifiStateMachine;->-get14(Lcom/android/server/wifi/WifiStateMachine;)Landroid/content/Context;

    #@149
    move-result-object v0

    #@14a
    sget-object v1, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    #@14c
    invoke-virtual {v0, v9, v1}, Landroid/content/Context;->sendStickyBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    #@14f
    .line 4737
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@151
    invoke-static {v0}, Lcom/android/server/wifi/WifiStateMachine;->-get83(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiNative;

    #@154
    move-result-object v0

    #@155
    const-string/jumbo v1, "wlan0"

    #@158
    const/4 v2, 0x1

    #@159
    invoke-virtual {v0, v1, v2}, Lcom/android/server/wifi/WifiNative;->setWifiLinkLayerStats(Ljava/lang/String;I)V

    #@15c
    .line 4649
    return-void

    #@15d
    .line 4698
    .end local v9    # "intent":Landroid/content/Intent;
    :cond_4
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@15f
    invoke-static {v0}, Lcom/android/server/wifi/WifiStateMachine;->-get83(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiNative;

    #@162
    move-result-object v0

    #@163
    invoke-virtual {v0}, Lcom/android/server/wifi/WifiNative;->status()Ljava/lang/String;

    #@166
    .line 4700
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@168
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@16a
    invoke-static {v1}, Lcom/android/server/wifi/WifiStateMachine;->-get16(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/internal/util/State;

    #@16d
    move-result-object v1

    #@16e
    invoke-static {v0, v1}, Lcom/android/server/wifi/WifiStateMachine;->-wrap45(Lcom/android/server/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V

    #@171
    .line 4701
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@173
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@175
    invoke-static {v1}, Lcom/android/server/wifi/WifiStateMachine;->-get16(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/internal/util/State;

    #@178
    move-result-object v1

    #@179
    invoke-static {v0, v1}, Lcom/android/server/wifi/WifiStateMachine;->-wrap45(Lcom/android/server/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V

    #@17c
    goto/16 :goto_0

    #@17e
    .line 4711
    :cond_5
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@180
    invoke-static {v0}, Lcom/android/server/wifi/WifiStateMachine;->-get83(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiNative;

    #@183
    move-result-object v1

    #@184
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@186
    invoke-static {v0}, Lcom/android/server/wifi/WifiStateMachine;->-get62(Lcom/android/server/wifi/WifiStateMachine;)I

    #@189
    move-result v0

    #@18a
    if-nez v0, :cond_6

    #@18c
    .line 4712
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@18e
    invoke-static {v0}, Lcom/android/server/wifi/WifiStateMachine;->-get69(Lcom/android/server/wifi/WifiStateMachine;)Ljava/util/concurrent/atomic/AtomicBoolean;

    #@191
    move-result-object v0

    #@192
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    #@195
    move-result v0

    #@196
    .line 4711
    :goto_2
    invoke-virtual {v1, v0}, Lcom/android/server/wifi/WifiNative;->setSuspendOptimizations(Z)Z

    #@199
    .line 4717
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@19b
    invoke-static {v0}, Lcom/android/server/wifi/WifiStateMachine;->-get75(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConnectivityManager;

    #@19e
    move-result-object v0

    #@19f
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@1a1
    invoke-static {v1}, Lcom/android/server/wifi/WifiStateMachine;->-get53(Lcom/android/server/wifi/WifiStateMachine;)Z

    #@1a4
    move-result v1

    #@1a5
    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiConnectivityManager;->handleScreenStateChanged(Z)V

    #@1a8
    goto/16 :goto_1

    #@1aa
    .line 4711
    :cond_6
    const/4 v0, 0x0

    #@1ab
    goto :goto_2
.end method

.method public exit()V
    .locals 3

    #@0
    .prologue
    .line 4861
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@2
    invoke-static {v1}, Lcom/android/server/wifi/WifiStateMachine;->-get80(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/BaseWifiLogger;

    #@5
    move-result-object v1

    #@6
    invoke-virtual {v1}, Lcom/android/server/wifi/BaseWifiLogger;->stopLogging()V

    #@9
    .line 4863
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@b
    const/4 v2, 0x0

    #@c
    invoke-static {v1, v2}, Lcom/android/server/wifi/WifiStateMachine;->-set12(Lcom/android/server/wifi/WifiStateMachine;Z)Z

    #@f
    .line 4864
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@11
    const/4 v2, 0x0

    #@12
    invoke-virtual {v1, v2}, Lcom/android/server/wifi/WifiStateMachine;->updateBatteryWorkSource(Landroid/os/WorkSource;)V

    #@15
    .line 4865
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@17
    new-instance v2, Ljava/util/ArrayList;

    #@19
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    #@1c
    invoke-static {v1, v2}, Lcom/android/server/wifi/WifiStateMachine;->-set25(Lcom/android/server/wifi/WifiStateMachine;Ljava/util/List;)Ljava/util/List;

    #@1f
    .line 4867
    new-instance v0, Landroid/content/Intent;

    #@21
    const-string/jumbo v1, "wifi_scan_available"

    #@24
    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    #@27
    .line 4868
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v1, 0x4000000

    #@29
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    #@2c
    .line 4869
    const-string/jumbo v1, "scan_enabled"

    #@2f
    const/4 v2, 0x1

    #@30
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    #@33
    .line 4870
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@35
    invoke-static {v1}, Lcom/android/server/wifi/WifiStateMachine;->-get14(Lcom/android/server/wifi/WifiStateMachine;)Landroid/content/Context;

    #@38
    move-result-object v1

    #@39
    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    #@3b
    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendStickyBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    #@3e
    .line 4871
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@40
    invoke-static {v1}, Lcom/android/server/wifi/WifiStateMachine;->-get10(Lcom/android/server/wifi/WifiStateMachine;)Ljava/util/Queue;

    #@43
    move-result-object v1

    #@44
    invoke-interface {v1}, Ljava/util/Queue;->clear()V

    #@47
    .line 4859
    return-void
.end method

.method public processMessage(Landroid/os/Message;)Z
    .locals 14
    .param p1, "message"    # Landroid/os/Message;

    #@0
    .prologue
    const/4 v13, 0x4

    #@1
    const/4 v12, 0x2

    #@2
    const/4 v11, 0x0

    #@3
    const/4 v10, 0x1

    #@4
    .line 4742
    iget-object v9, p0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@6
    invoke-static {v9, p1, p0}, Lcom/android/server/wifi/WifiStateMachine;->-wrap28(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;Lcom/android/internal/util/State;)V

    #@9
    .line 4744
    iget v9, p1, Landroid/os/Message;->what:I

    #@b
    sparse-switch v9, :sswitch_data_0

    #@e
    .line 4854
    return v11

    #@f
    .line 4746
    :sswitch_0
    iget-object v9, p0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@11
    invoke-static {v9, p1}, Lcom/android/server/wifi/WifiStateMachine;->-wrap24(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;)V

    #@14
    .line 4856
    :cond_0
    :goto_0
    return v10

    #@15
    .line 4749
    :sswitch_1
    iget v1, p1, Landroid/os/Message;->arg1:I

    #@17
    .line 4750
    .local v1, "band":I
    invoke-static {}, Lcom/android/server/wifi/WifiStateMachine;->-get0()Z

    #@1a
    move-result v9

    #@1b
    if-eqz v9, :cond_1

    #@1d
    iget-object v9, p0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@1f
    new-instance v11, Ljava/lang/StringBuilder;

    #@21
    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    #@24
    const-string/jumbo v12, "set frequency band "

    #@27
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2a
    move-result-object v11

    #@2b
    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@2e
    move-result-object v11

    #@2f
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@32
    move-result-object v11

    #@33
    invoke-virtual {v9, v11}, Lcom/android/server/wifi/WifiStateMachine;->log(Ljava/lang/String;)V

    #@36
    .line 4751
    :cond_1
    iget-object v9, p0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@38
    invoke-static {v9}, Lcom/android/server/wifi/WifiStateMachine;->-get83(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiNative;

    #@3b
    move-result-object v9

    #@3c
    invoke-virtual {v9, v1}, Lcom/android/server/wifi/WifiNative;->setBand(I)Z

    #@3f
    move-result v9

    #@40
    if-eqz v9, :cond_3

    #@42
    .line 4753
    invoke-static {}, Lcom/android/server/wifi/WifiStateMachine;->-get0()Z

    #@45
    move-result v9

    #@46
    if-eqz v9, :cond_2

    #@48
    iget-object v9, p0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@4a
    new-instance v11, Ljava/lang/StringBuilder;

    #@4c
    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    #@4f
    const-string/jumbo v12, "did set frequency band "

    #@52
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@55
    move-result-object v11

    #@56
    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@59
    move-result-object v11

    #@5a
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@5d
    move-result-object v11

    #@5e
    invoke-virtual {v9, v11}, Lcom/android/server/wifi/WifiStateMachine;->logd(Ljava/lang/String;)V

    #@61
    .line 4755
    :cond_2
    iget-object v9, p0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@63
    invoke-static {v9}, Lcom/android/server/wifi/WifiStateMachine;->-get25(Lcom/android/server/wifi/WifiStateMachine;)Ljava/util/concurrent/atomic/AtomicInteger;

    #@66
    move-result-object v9

    #@67
    invoke-virtual {v9, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    #@6a
    .line 4757
    iget-object v9, p0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@6c
    invoke-static {v9}, Lcom/android/server/wifi/WifiStateMachine;->-get83(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiNative;

    #@6f
    move-result-object v9

    #@70
    invoke-virtual {v9}, Lcom/android/server/wifi/WifiNative;->bssFlush()V

    #@73
    .line 4759
    invoke-static {}, Lcom/android/server/wifi/WifiStateMachine;->-get0()Z

    #@76
    move-result v9

    #@77
    if-eqz v9, :cond_0

    #@79
    iget-object v9, p0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@7b
    new-instance v11, Ljava/lang/StringBuilder;

    #@7d
    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    #@80
    const-string/jumbo v12, "done set frequency band "

    #@83
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@86
    move-result-object v11

    #@87
    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@8a
    move-result-object v11

    #@8b
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@8e
    move-result-object v11

    #@8f
    invoke-virtual {v9, v11}, Lcom/android/server/wifi/WifiStateMachine;->logd(Ljava/lang/String;)V

    #@92
    goto :goto_0

    #@93
    .line 4762
    :cond_3
    iget-object v9, p0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@95
    new-instance v11, Ljava/lang/StringBuilder;

    #@97
    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    #@9a
    const-string/jumbo v12, "Failed to set frequency band "

    #@9d
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a0
    move-result-object v11

    #@a1
    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@a4
    move-result-object v11

    #@a5
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@a8
    move-result-object v11

    #@a9
    invoke-virtual {v9, v11}, Lcom/android/server/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V

    #@ac
    goto/16 :goto_0

    #@ae
    .line 4766
    .end local v1    # "band":I
    :sswitch_2
    iget-object v12, p0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@b0
    iget v9, p1, Landroid/os/Message;->arg1:I

    #@b2
    if-eqz v9, :cond_4

    #@b4
    move v9, v10

    #@b5
    :goto_1
    invoke-static {v12, v9}, Lcom/android/server/wifi/WifiStateMachine;->-set6(Lcom/android/server/wifi/WifiStateMachine;Z)Z

    #@b8
    .line 4768
    iget-object v9, p0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@ba
    invoke-static {v9}, Lcom/android/server/wifi/WifiStateMachine;->-get83(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiNative;

    #@bd
    move-result-object v9

    #@be
    iget-object v11, p0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@c0
    invoke-static {v11}, Lcom/android/server/wifi/WifiStateMachine;->-get9(Lcom/android/server/wifi/WifiStateMachine;)Z

    #@c3
    move-result v11

    #@c4
    invoke-virtual {v9, v11}, Lcom/android/server/wifi/WifiNative;->setBluetoothCoexistenceScanMode(Z)Z

    #@c7
    goto/16 :goto_0

    #@c9
    :cond_4
    move v9, v11

    #@ca
    .line 4766
    goto :goto_1

    #@cb
    .line 4771
    :sswitch_3
    iget v4, p1, Landroid/os/Message;->arg1:I

    #@cd
    .line 4773
    .local v4, "mode":I
    iget-object v9, p0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@cf
    const-string/jumbo v11, "stop driver"

    #@d2
    invoke-virtual {v9, v11}, Lcom/android/server/wifi/WifiStateMachine;->log(Ljava/lang/String;)V

    #@d5
    .line 4774
    iget-object v9, p0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@d7
    invoke-static {v9}, Lcom/android/server/wifi/WifiStateMachine;->-get73(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigManager;

    #@da
    move-result-object v9

    #@db
    invoke-virtual {v9}, Lcom/android/server/wifi/WifiConfigManager;->disableAllNetworksNative()V

    #@de
    .line 4776
    iget-object v9, p0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@e0
    invoke-static {v9}, Lcom/android/server/wifi/WifiStateMachine;->-wrap8(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/internal/util/IState;

    #@e3
    move-result-object v9

    #@e4
    iget-object v11, p0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@e6
    invoke-static {v11}, Lcom/android/server/wifi/WifiStateMachine;->-get16(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/internal/util/State;

    #@e9
    move-result-object v11

    #@ea
    if-eq v9, v11, :cond_5

    #@ec
    .line 4777
    iget-object v9, p0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@ee
    invoke-static {v9}, Lcom/android/server/wifi/WifiStateMachine;->-get83(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiNative;

    #@f1
    move-result-object v9

    #@f2
    invoke-virtual {v9}, Lcom/android/server/wifi/WifiNative;->disconnect()Z

    #@f5
    .line 4778
    iget-object v9, p0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@f7
    invoke-static {v9}, Lcom/android/server/wifi/WifiStateMachine;->-wrap23(Lcom/android/server/wifi/WifiStateMachine;)V

    #@fa
    .line 4780
    :cond_5
    iget-object v9, p0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@fc
    invoke-static {v9}, Lcom/android/server/wifi/WifiStateMachine;->-get71(Lcom/android/server/wifi/WifiStateMachine;)Landroid/os/PowerManager$WakeLock;

    #@ff
    move-result-object v9

    #@100
    invoke-virtual {v9}, Landroid/os/PowerManager$WakeLock;->acquire()V

    #@103
    .line 4781
    iget-object v9, p0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@105
    invoke-static {v9}, Lcom/android/server/wifi/WifiStateMachine;->-get83(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiNative;

    #@108
    move-result-object v9

    #@109
    invoke-virtual {v9}, Lcom/android/server/wifi/WifiNative;->stopDriver()Z

    #@10c
    .line 4782
    iget-object v9, p0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@10e
    invoke-static {v9}, Lcom/android/server/wifi/WifiStateMachine;->-get71(Lcom/android/server/wifi/WifiStateMachine;)Landroid/os/PowerManager$WakeLock;

    #@111
    move-result-object v9

    #@112
    invoke-virtual {v9}, Landroid/os/PowerManager$WakeLock;->release()V

    #@115
    .line 4783
    iget-object v9, p0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@117
    invoke-static {v9}, Lcom/android/server/wifi/WifiStateMachine;->-get44(Lcom/android/server/wifi/WifiStateMachine;)Z

    #@11a
    move-result v9

    #@11b
    if-eqz v9, :cond_6

    #@11d
    .line 4784
    iget-object v9, p0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@11f
    iget-object v11, p0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@121
    invoke-static {v11}, Lcom/android/server/wifi/WifiStateMachine;->-get70(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/internal/util/State;

    #@124
    move-result-object v11

    #@125
    invoke-static {v9, v11}, Lcom/android/server/wifi/WifiStateMachine;->-wrap45(Lcom/android/server/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V

    #@128
    goto/16 :goto_0

    #@12a
    .line 4786
    :cond_6
    iget-object v9, p0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@12c
    iget-object v11, p0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@12e
    invoke-static {v11}, Lcom/android/server/wifi/WifiStateMachine;->-get22(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/internal/util/State;

    #@131
    move-result-object v11

    #@132
    invoke-static {v9, v11}, Lcom/android/server/wifi/WifiStateMachine;->-wrap45(Lcom/android/server/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V

    #@135
    goto/16 :goto_0

    #@137
    .line 4790
    .end local v4    # "mode":I
    :sswitch_4
    iget-object v9, p0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@139
    invoke-static {v9}, Lcom/android/server/wifi/WifiStateMachine;->-get42(Lcom/android/server/wifi/WifiStateMachine;)I

    #@13c
    move-result v9

    #@13d
    if-ne v9, v10, :cond_0

    #@13f
    .line 4791
    iget-object v9, p0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@141
    invoke-static {v9}, Lcom/android/server/wifi/WifiStateMachine;->-get73(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigManager;

    #@144
    move-result-object v9

    #@145
    invoke-virtual {v9}, Lcom/android/server/wifi/WifiConfigManager;->enableAllNetworks()V

    #@148
    goto/16 :goto_0

    #@14a
    .line 4795
    :sswitch_5
    iget v9, p1, Landroid/os/Message;->arg1:I

    #@14c
    if-ne v9, v10, :cond_7

    #@14e
    .line 4796
    iget-object v9, p0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@150
    invoke-static {v9, v13, v10}, Lcom/android/server/wifi/WifiStateMachine;->-wrap40(Lcom/android/server/wifi/WifiStateMachine;IZ)V

    #@153
    .line 4797
    iget-object v9, p0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@155
    invoke-static {v9}, Lcom/android/server/wifi/WifiStateMachine;->-get63(Lcom/android/server/wifi/WifiStateMachine;)Landroid/os/PowerManager$WakeLock;

    #@158
    move-result-object v9

    #@159
    invoke-virtual {v9}, Landroid/os/PowerManager$WakeLock;->release()V

    #@15c
    goto/16 :goto_0

    #@15e
    .line 4799
    :cond_7
    iget-object v9, p0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@160
    invoke-static {v9, v13, v11}, Lcom/android/server/wifi/WifiStateMachine;->-wrap40(Lcom/android/server/wifi/WifiStateMachine;IZ)V

    #@163
    goto/16 :goto_0

    #@165
    .line 4803
    :sswitch_6
    iget v9, p1, Landroid/os/Message;->arg1:I

    #@167
    if-ne v9, v10, :cond_8

    #@169
    .line 4804
    iget-object v9, p0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@16b
    invoke-static {v9, v12, v11}, Lcom/android/server/wifi/WifiStateMachine;->-wrap40(Lcom/android/server/wifi/WifiStateMachine;IZ)V

    #@16e
    goto/16 :goto_0

    #@170
    .line 4806
    :cond_8
    iget-object v9, p0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@172
    invoke-static {v9, v12, v10}, Lcom/android/server/wifi/WifiStateMachine;->-wrap40(Lcom/android/server/wifi/WifiStateMachine;IZ)V

    #@175
    goto/16 :goto_0

    #@177
    .line 4810
    :sswitch_7
    iget-object v9, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@179
    if-eqz v9, :cond_0

    #@17b
    .line 4811
    iget-object v6, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@17d
    check-cast v6, Ljava/lang/String;

    #@17f
    .line 4812
    .local v6, "remoteAddress":Ljava/lang/String;
    iget v9, p1, Landroid/os/Message;->arg1:I

    #@181
    if-ne v9, v10, :cond_9

    #@183
    const/4 v2, 0x1

    #@184
    .line 4813
    .local v2, "enable":Z
    :goto_2
    iget-object v9, p0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@186
    invoke-static {v9}, Lcom/android/server/wifi/WifiStateMachine;->-get83(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiNative;

    #@189
    move-result-object v9

    #@18a
    invoke-virtual {v9, v6, v2}, Lcom/android/server/wifi/WifiNative;->startTdls(Ljava/lang/String;Z)V

    #@18d
    goto/16 :goto_0

    #@18f
    .line 4812
    .end local v2    # "enable":Z
    :cond_9
    const/4 v2, 0x0

    #@190
    .restart local v2    # "enable":Z
    goto :goto_2

    #@191
    .line 4817
    .end local v2    # "enable":Z
    .end local v6    # "remoteAddress":Ljava/lang/String;
    :sswitch_8
    iget-object v9, p0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@193
    invoke-static {v9}, Lcom/android/server/wifi/WifiStateMachine;->-get73(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigManager;

    #@196
    move-result-object v12

    #@197
    iget-object v9, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@199
    check-cast v9, Ljava/lang/Long;

    #@19b
    iget v13, p1, Landroid/os/Message;->arg1:I

    #@19d
    if-eqz v13, :cond_a

    #@19f
    move v11, v10

    #@1a0
    :cond_a
    invoke-virtual {v12, v9, v11}, Lcom/android/server/wifi/WifiConfigManager;->notifyANQPDone(Ljava/lang/Long;Z)V

    #@1a3
    goto/16 :goto_0

    #@1a5
    .line 4820
    :sswitch_9
    iget v8, p1, Landroid/os/Message;->arg1:I

    #@1a7
    .line 4821
    .local v8, "slot":I
    iget-object v9, p0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@1a9
    invoke-virtual {v9, v8}, Lcom/android/server/wifi/WifiStateMachine;->stopWifiIPPacketOffload(I)I

    #@1ac
    move-result v7

    #@1ad
    .line 4822
    .local v7, "ret":I
    iget-object v9, p0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@1af
    invoke-static {v9}, Lcom/android/server/wifi/WifiStateMachine;->-get35(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiStateMachine$WifiNetworkAgent;

    #@1b2
    move-result-object v9

    #@1b3
    if-eqz v9, :cond_0

    #@1b5
    .line 4823
    iget-object v9, p0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@1b7
    invoke-static {v9}, Lcom/android/server/wifi/WifiStateMachine;->-get35(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiStateMachine$WifiNetworkAgent;

    #@1ba
    move-result-object v9

    #@1bb
    invoke-virtual {v9, v8, v7}, Lcom/android/server/wifi/WifiStateMachine$WifiNetworkAgent;->onPacketKeepaliveEvent(II)V

    #@1be
    goto/16 :goto_0

    #@1c0
    .line 4828
    .end local v7    # "ret":I
    .end local v8    # "slot":I
    :sswitch_a
    iget-object v9, p0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@1c2
    invoke-static {v9}, Lcom/android/server/wifi/WifiStateMachine;->-get73(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigManager;

    #@1c5
    move-result-object v11

    #@1c6
    iget-object v9, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@1c8
    check-cast v9, Lcom/android/server/wifi/hotspot2/IconEvent;

    #@1ca
    invoke-virtual {v11, v9}, Lcom/android/server/wifi/WifiConfigManager;->notifyIconReceived(Lcom/android/server/wifi/hotspot2/IconEvent;)V

    #@1cd
    goto/16 :goto_0

    #@1cf
    .line 4831
    :sswitch_b
    iget-object v11, p0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@1d1
    iget-object v9, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@1d3
    check-cast v9, Lcom/android/server/wifi/WnmData;

    #@1d5
    invoke-static {v11, v9}, Lcom/android/server/wifi/WifiStateMachine;->-wrap48(Lcom/android/server/wifi/WifiStateMachine;Lcom/android/server/wifi/WnmData;)V

    #@1d8
    goto/16 :goto_0

    #@1da
    .line 4834
    :sswitch_c
    iget v9, p1, Landroid/os/Message;->arg1:I

    #@1dc
    if-lez v9, :cond_b

    #@1de
    const/4 v3, 0x1

    #@1df
    .line 4835
    .local v3, "enabled":Z
    :goto_3
    iget-object v9, p0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@1e1
    invoke-static {v9}, Lcom/android/server/wifi/WifiStateMachine;->-get83(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiNative;

    #@1e4
    move-result-object v9

    #@1e5
    invoke-virtual {v9, v3}, Lcom/android/server/wifi/WifiNative;->configureNeighborDiscoveryOffload(Z)Z

    #@1e8
    goto/16 :goto_0

    #@1ea
    .line 4834
    .end local v3    # "enabled":Z
    :cond_b
    const/4 v3, 0x0

    #@1eb
    .restart local v3    # "enabled":Z
    goto :goto_3

    #@1ec
    .line 4838
    .end local v3    # "enabled":Z
    :sswitch_d
    iget-object v9, p0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@1ee
    invoke-static {v9}, Lcom/android/server/wifi/WifiStateMachine;->-get75(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConnectivityManager;

    #@1f1
    move-result-object v9

    #@1f2
    if-eqz v9, :cond_0

    #@1f4
    .line 4839
    iget-object v9, p0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@1f6
    invoke-static {v9}, Lcom/android/server/wifi/WifiStateMachine;->-get75(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConnectivityManager;

    #@1f9
    move-result-object v9

    #@1fa
    iget v12, p1, Landroid/os/Message;->arg1:I

    #@1fc
    if-ne v12, v10, :cond_c

    #@1fe
    move v11, v10

    #@1ff
    :cond_c
    invoke-virtual {v9, v11}, Lcom/android/server/wifi/WifiConnectivityManager;->enable(Z)V

    #@202
    goto/16 :goto_0

    #@204
    .line 4843
    :sswitch_e
    iget v9, p1, Landroid/os/Message;->arg1:I

    #@206
    if-lez v9, :cond_d

    #@208
    const/4 v0, 0x1

    #@209
    .line 4844
    .local v0, "allowed":Z
    :goto_4
    iget-object v9, p0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@20b
    invoke-static {v9}, Lcom/android/server/wifi/WifiStateMachine;->-get73(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigManager;

    #@20e
    move-result-object v9

    #@20f
    invoke-virtual {v9}, Lcom/android/server/wifi/WifiConfigManager;->getEnableAutoJoinWhenAssociated()Z

    #@212
    move-result v5

    #@213
    .line 4845
    .local v5, "old_state":Z
    iget-object v9, p0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@215
    invoke-static {v9}, Lcom/android/server/wifi/WifiStateMachine;->-get73(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigManager;

    #@218
    move-result-object v9

    #@219
    invoke-virtual {v9, v0}, Lcom/android/server/wifi/WifiConfigManager;->setEnableAutoJoinWhenAssociated(Z)V

    #@21c
    .line 4846
    if-nez v5, :cond_0

    #@21e
    if-eqz v0, :cond_0

    #@220
    iget-object v9, p0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@222
    invoke-static {v9}, Lcom/android/server/wifi/WifiStateMachine;->-get53(Lcom/android/server/wifi/WifiStateMachine;)Z

    #@225
    move-result v9

    #@226
    if-eqz v9, :cond_0

    #@228
    .line 4847
    iget-object v9, p0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@22a
    invoke-static {v9}, Lcom/android/server/wifi/WifiStateMachine;->-wrap8(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/internal/util/IState;

    #@22d
    move-result-object v9

    #@22e
    iget-object v11, p0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@230
    invoke-static {v11}, Lcom/android/server/wifi/WifiStateMachine;->-get12(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/internal/util/State;

    #@233
    move-result-object v11

    #@234
    if-ne v9, v11, :cond_0

    #@236
    .line 4848
    iget-object v9, p0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@238
    invoke-static {v9}, Lcom/android/server/wifi/WifiStateMachine;->-get75(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConnectivityManager;

    #@23b
    move-result-object v9

    #@23c
    if-eqz v9, :cond_0

    #@23e
    .line 4849
    iget-object v9, p0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@240
    invoke-static {v9}, Lcom/android/server/wifi/WifiStateMachine;->-get75(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConnectivityManager;

    #@243
    move-result-object v9

    #@244
    invoke-virtual {v9}, Lcom/android/server/wifi/WifiConnectivityManager;->forceConnectivityScan()V

    #@247
    goto/16 :goto_0

    #@249
    .line 4843
    .end local v0    # "allowed":Z
    .end local v5    # "old_state":Z
    :cond_d
    const/4 v0, 0x0

    #@24a
    .restart local v0    # "allowed":Z
    goto :goto_4

    #@24b
    .line 4744
    nop

    #@24c
    :sswitch_data_0
    .sparse-switch
        0x2000d -> :sswitch_4
        0x2000e -> :sswitch_3
        0x2001f -> :sswitch_2
        0x20047 -> :sswitch_0
        0x2004d -> :sswitch_6
        0x20056 -> :sswitch_5
        0x2005a -> :sswitch_1
        0x2005c -> :sswitch_7
        0x200a1 -> :sswitch_9
        0x200a6 -> :sswitch_d
        0x200a7 -> :sswitch_e
        0x200cc -> :sswitch_c
        0x2402c -> :sswitch_8
        0x24035 -> :sswitch_a
        0x2403d -> :sswitch_b
    .end sparse-switch
.end method
