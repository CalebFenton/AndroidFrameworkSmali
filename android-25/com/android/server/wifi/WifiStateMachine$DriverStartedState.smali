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
    .line 4724
    iput-object p1, p0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@2
    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    #@5
    return-void
.end method


# virtual methods
.method public enter()V
    .locals 14

    #@0
    .prologue
    .line 4727
    invoke-static {}, Lcom/android/server/wifi/WifiStateMachine;->-get0()Z

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_0

    #@6
    .line 4728
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@8
    const-string/jumbo v1, "DriverStartedState enter"

    #@b
    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiStateMachine;->logd(Ljava/lang/String;)V

    #@e
    .line 4733
    :cond_0
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@10
    invoke-static {v0}, Lcom/android/server/wifi/WifiStateMachine;->-get89(Lcom/android/server/wifi/WifiStateMachine;)Landroid/net/wifi/WifiScanner;

    #@13
    move-result-object v0

    #@14
    if-nez v0, :cond_1

    #@16
    .line 4734
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
    invoke-static {v0, v1}, Lcom/android/server/wifi/WifiStateMachine;->-set38(Lcom/android/server/wifi/WifiStateMachine;Landroid/net/wifi/WifiScanner;)Landroid/net/wifi/WifiScanner;

    #@35
    .line 4736
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@37
    invoke-static {v0}, Lcom/android/server/wifi/WifiStateMachine;->-get88(Lcom/android/server/wifi/WifiStateMachine;)Ljava/lang/Object;

    #@3a
    move-result-object v12

    #@3b
    monitor-enter v12

    #@3c
    .line 4737
    :try_start_0
    iget-object v13, p0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@3e
    new-instance v0, Lcom/android/server/wifi/WifiConnectivityManager;

    #@40
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@42
    invoke-static {v1}, Lcom/android/server/wifi/WifiStateMachine;->-get14(Lcom/android/server/wifi/WifiStateMachine;)Landroid/content/Context;

    #@45
    move-result-object v1

    #@46
    .line 4738
    iget-object v2, p0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@48
    iget-object v3, p0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@4a
    invoke-static {v3}, Lcom/android/server/wifi/WifiStateMachine;->-get89(Lcom/android/server/wifi/WifiStateMachine;)Landroid/net/wifi/WifiScanner;

    #@4d
    move-result-object v3

    #@4e
    iget-object v4, p0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@50
    invoke-static {v4}, Lcom/android/server/wifi/WifiStateMachine;->-get74(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigManager;

    #@53
    move-result-object v4

    #@54
    iget-object v5, p0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@56
    invoke-static {v5}, Lcom/android/server/wifi/WifiStateMachine;->-get77(Lcom/android/server/wifi/WifiStateMachine;)Landroid/net/wifi/WifiInfo;

    #@59
    move-result-object v5

    #@5a
    .line 4739
    iget-object v6, p0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@5c
    invoke-static {v6}, Lcom/android/server/wifi/WifiStateMachine;->-get87(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiQualifiedNetworkSelector;

    #@5f
    move-result-object v6

    #@60
    iget-object v7, p0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@62
    invoke-static {v7}, Lcom/android/server/wifi/WifiStateMachine;->-get78(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiInjector;

    #@65
    move-result-object v7

    #@66
    .line 4740
    iget-object v8, p0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@68
    invoke-virtual {v8}, Lcom/android/server/wifi/WifiStateMachine;->getHandler()Landroid/os/Handler;

    #@6b
    move-result-object v8

    #@6c
    invoke-virtual {v8}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    #@6f
    move-result-object v8

    #@70
    iget-object v9, p0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@72
    invoke-static {v9}, Lcom/android/server/wifi/WifiStateMachine;->-wrap3(Lcom/android/server/wifi/WifiStateMachine;)Z

    #@75
    move-result v9

    #@76
    .line 4737
    invoke-direct/range {v0 .. v9}, Lcom/android/server/wifi/WifiConnectivityManager;-><init>(Landroid/content/Context;Lcom/android/server/wifi/WifiStateMachine;Landroid/net/wifi/WifiScanner;Lcom/android/server/wifi/WifiConfigManager;Landroid/net/wifi/WifiInfo;Lcom/android/server/wifi/WifiQualifiedNetworkSelector;Lcom/android/server/wifi/WifiInjector;Landroid/os/Looper;Z)V

    #@79
    invoke-static {v13, v0}, Lcom/android/server/wifi/WifiStateMachine;->-set36(Lcom/android/server/wifi/WifiStateMachine;Lcom/android/server/wifi/WifiConnectivityManager;)Lcom/android/server/wifi/WifiConnectivityManager;

    #@7c
    .line 4741
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@7e
    invoke-static {v0}, Lcom/android/server/wifi/WifiStateMachine;->-get76(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConnectivityManager;

    #@81
    move-result-object v1

    #@82
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@84
    invoke-static {v0}, Lcom/android/server/wifi/WifiStateMachine;->-get69(Lcom/android/server/wifi/WifiStateMachine;)I

    #@87
    move-result v0

    #@88
    if-lez v0, :cond_4

    #@8a
    const/4 v0, 0x1

    #@8b
    :goto_0
    invoke-virtual {v1, v0}, Lcom/android/server/wifi/WifiConnectivityManager;->setUntrustedConnectionAllowed(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@8e
    monitor-exit v12

    #@8f
    .line 4745
    :cond_1
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@91
    invoke-static {v0}, Lcom/android/server/wifi/WifiStateMachine;->-get81(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/BaseWifiLogger;

    #@94
    move-result-object v0

    #@95
    invoke-static {}, Lcom/android/server/wifi/WifiStateMachine;->-get0()Z

    #@98
    move-result v1

    #@99
    invoke-virtual {v0, v1}, Lcom/android/server/wifi/BaseWifiLogger;->startLogging(Z)V

    #@9c
    .line 4746
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@9e
    const/4 v1, 0x1

    #@9f
    invoke-static {v0, v1}, Lcom/android/server/wifi/WifiStateMachine;->-set12(Lcom/android/server/wifi/WifiStateMachine;Z)Z

    #@a2
    .line 4747
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@a4
    const/4 v1, 0x0

    #@a5
    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiStateMachine;->updateBatteryWorkSource(Landroid/os/WorkSource;)V

    #@a8
    .line 4753
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@aa
    invoke-static {v0}, Lcom/android/server/wifi/WifiStateMachine;->-get84(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiNative;

    #@ad
    move-result-object v0

    #@ae
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@b0
    invoke-static {v1}, Lcom/android/server/wifi/WifiStateMachine;->-get9(Lcom/android/server/wifi/WifiStateMachine;)Z

    #@b3
    move-result v1

    #@b4
    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiNative;->setBluetoothCoexistenceScanMode(Z)Z

    #@b7
    .line 4755
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@b9
    sget-object v1, Landroid/net/NetworkInfo$DetailedState;->DISCONNECTED:Landroid/net/NetworkInfo$DetailedState;

    #@bb
    invoke-static {v0, v1}, Lcom/android/server/wifi/WifiStateMachine;->-wrap4(Lcom/android/server/wifi/WifiStateMachine;Landroid/net/NetworkInfo$DetailedState;)Z

    #@be
    .line 4761
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@c0
    invoke-static {v0}, Lcom/android/server/wifi/WifiStateMachine;->-get84(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiNative;

    #@c3
    move-result-object v0

    #@c4
    invoke-virtual {v0}, Lcom/android/server/wifi/WifiNative;->stopFilteringMulticastV4Packets()Z

    #@c7
    .line 4762
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@c9
    invoke-static {v0}, Lcom/android/server/wifi/WifiStateMachine;->-get84(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiNative;

    #@cc
    move-result-object v0

    #@cd
    invoke-virtual {v0}, Lcom/android/server/wifi/WifiNative;->stopFilteringMulticastV6Packets()Z

    #@d0
    .line 4764
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@d2
    invoke-static {v0}, Lcom/android/server/wifi/WifiStateMachine;->-get42(Lcom/android/server/wifi/WifiStateMachine;)I

    #@d5
    move-result v0

    #@d6
    const/4 v1, 0x1

    #@d7
    if-eq v0, v1, :cond_5

    #@d9
    .line 4765
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@db
    invoke-static {v0}, Lcom/android/server/wifi/WifiStateMachine;->-get84(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiNative;

    #@de
    move-result-object v0

    #@df
    invoke-virtual {v0}, Lcom/android/server/wifi/WifiNative;->disconnect()Z

    #@e2
    .line 4766
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@e4
    invoke-static {v0}, Lcom/android/server/wifi/WifiStateMachine;->-get74(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigManager;

    #@e7
    move-result-object v0

    #@e8
    invoke-virtual {v0}, Lcom/android/server/wifi/WifiConfigManager;->disableAllNetworksNative()V

    #@eb
    .line 4767
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@ed
    invoke-static {v0}, Lcom/android/server/wifi/WifiStateMachine;->-get42(Lcom/android/server/wifi/WifiStateMachine;)I

    #@f0
    move-result v0

    #@f1
    const/4 v1, 0x3

    #@f2
    if-ne v0, v1, :cond_2

    #@f4
    .line 4768
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@f6
    const/4 v1, 0x1

    #@f7
    invoke-static {v0, v1}, Lcom/android/server/wifi/WifiStateMachine;->-wrap43(Lcom/android/server/wifi/WifiStateMachine;I)V

    #@fa
    .line 4770
    :cond_2
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@fc
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@fe
    invoke-static {v1}, Lcom/android/server/wifi/WifiStateMachine;->-get51(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/internal/util/State;

    #@101
    move-result-object v1

    #@102
    invoke-static {v0, v1}, Lcom/android/server/wifi/WifiStateMachine;->-wrap45(Lcom/android/server/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V

    #@105
    .line 4785
    :goto_1
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@107
    invoke-static {v0}, Lcom/android/server/wifi/WifiStateMachine;->-get52(Lcom/android/server/wifi/WifiStateMachine;)Ljava/util/concurrent/atomic/AtomicBoolean;

    #@10a
    move-result-object v0

    #@10b
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    #@10e
    move-result v0

    #@10f
    if-nez v0, :cond_6

    #@111
    .line 4786
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@113
    invoke-static {v0}, Lcom/android/server/wifi/WifiStateMachine;->-get14(Lcom/android/server/wifi/WifiStateMachine;)Landroid/content/Context;

    #@116
    move-result-object v0

    #@117
    .line 4787
    const-string/jumbo v1, "power"

    #@11a
    .line 4786
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    #@11d
    move-result-object v11

    #@11e
    check-cast v11, Landroid/os/PowerManager;

    #@120
    .line 4788
    .local v11, "powerManager":Landroid/os/PowerManager;
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@122
    invoke-virtual {v11}, Landroid/os/PowerManager;->isScreenOn()Z

    #@125
    move-result v1

    #@126
    invoke-static {v0, v1}, Lcom/android/server/wifi/WifiStateMachine;->-wrap25(Lcom/android/server/wifi/WifiStateMachine;Z)V

    #@129
    .line 4799
    .end local v11    # "powerManager":Landroid/os/PowerManager;
    :goto_2
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@12b
    invoke-static {v0}, Lcom/android/server/wifi/WifiStateMachine;->-get84(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiNative;

    #@12e
    move-result-object v0

    #@12f
    const/4 v1, 0x1

    #@130
    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiNative;->setPowerSave(Z)V

    #@133
    .line 4801
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@135
    invoke-static {v0}, Lcom/android/server/wifi/WifiStateMachine;->-get44(Lcom/android/server/wifi/WifiStateMachine;)Z

    #@138
    move-result v0

    #@139
    if-eqz v0, :cond_3

    #@13b
    .line 4802
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@13d
    invoke-static {v0}, Lcom/android/server/wifi/WifiStateMachine;->-get42(Lcom/android/server/wifi/WifiStateMachine;)I

    #@140
    move-result v0

    #@141
    const/4 v1, 0x1

    #@142
    if-ne v0, v1, :cond_3

    #@144
    .line 4803
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@146
    invoke-static {v0}, Lcom/android/server/wifi/WifiStateMachine;->-get85(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/internal/util/AsyncChannel;

    #@149
    move-result-object v0

    #@14a
    const v1, 0x20083

    #@14d
    invoke-virtual {v0, v1}, Lcom/android/internal/util/AsyncChannel;->sendMessage(I)V

    #@150
    .line 4811
    :cond_3
    new-instance v10, Landroid/content/Intent;

    #@152
    const-string/jumbo v0, "wifi_scan_available"

    #@155
    invoke-direct {v10, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    #@158
    .line 4812
    .local v10, "intent":Landroid/content/Intent;
    const/high16 v0, 0x4000000

    #@15a
    invoke-virtual {v10, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    #@15d
    .line 4813
    const-string/jumbo v0, "scan_enabled"

    #@160
    const/4 v1, 0x3

    #@161
    invoke-virtual {v10, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    #@164
    .line 4814
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@166
    invoke-static {v0}, Lcom/android/server/wifi/WifiStateMachine;->-get14(Lcom/android/server/wifi/WifiStateMachine;)Landroid/content/Context;

    #@169
    move-result-object v0

    #@16a
    sget-object v1, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    #@16c
    invoke-virtual {v0, v10, v1}, Landroid/content/Context;->sendStickyBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    #@16f
    .line 4817
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@171
    invoke-static {v0}, Lcom/android/server/wifi/WifiStateMachine;->-get84(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiNative;

    #@174
    move-result-object v0

    #@175
    const-string/jumbo v1, "wlan0"

    #@178
    const/4 v2, 0x1

    #@179
    invoke-virtual {v0, v1, v2}, Lcom/android/server/wifi/WifiNative;->setWifiLinkLayerStats(Ljava/lang/String;I)V

    #@17c
    .line 4726
    return-void

    #@17d
    .line 4741
    .end local v10    # "intent":Landroid/content/Intent;
    :cond_4
    const/4 v0, 0x0

    #@17e
    goto/16 :goto_0

    #@180
    .line 4736
    :catchall_0
    move-exception v0

    #@181
    monitor-exit v12

    #@182
    throw v0

    #@183
    .line 4778
    :cond_5
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@185
    invoke-static {v0}, Lcom/android/server/wifi/WifiStateMachine;->-get84(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiNative;

    #@188
    move-result-object v0

    #@189
    invoke-virtual {v0}, Lcom/android/server/wifi/WifiNative;->status()Ljava/lang/String;

    #@18c
    .line 4780
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@18e
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@190
    invoke-static {v1}, Lcom/android/server/wifi/WifiStateMachine;->-get16(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/internal/util/State;

    #@193
    move-result-object v1

    #@194
    invoke-static {v0, v1}, Lcom/android/server/wifi/WifiStateMachine;->-wrap45(Lcom/android/server/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V

    #@197
    .line 4781
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@199
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@19b
    invoke-static {v1}, Lcom/android/server/wifi/WifiStateMachine;->-get16(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/internal/util/State;

    #@19e
    move-result-object v1

    #@19f
    invoke-static {v0, v1}, Lcom/android/server/wifi/WifiStateMachine;->-wrap45(Lcom/android/server/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V

    #@1a2
    goto/16 :goto_1

    #@1a4
    .line 4791
    :cond_6
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@1a6
    invoke-static {v0}, Lcom/android/server/wifi/WifiStateMachine;->-get84(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiNative;

    #@1a9
    move-result-object v1

    #@1aa
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@1ac
    invoke-static {v0}, Lcom/android/server/wifi/WifiStateMachine;->-get62(Lcom/android/server/wifi/WifiStateMachine;)I

    #@1af
    move-result v0

    #@1b0
    if-nez v0, :cond_7

    #@1b2
    .line 4792
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@1b4
    invoke-static {v0}, Lcom/android/server/wifi/WifiStateMachine;->-get70(Lcom/android/server/wifi/WifiStateMachine;)Ljava/util/concurrent/atomic/AtomicBoolean;

    #@1b7
    move-result-object v0

    #@1b8
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    #@1bb
    move-result v0

    #@1bc
    .line 4791
    :goto_3
    invoke-virtual {v1, v0}, Lcom/android/server/wifi/WifiNative;->setSuspendOptimizations(Z)Z

    #@1bf
    .line 4797
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@1c1
    invoke-static {v0}, Lcom/android/server/wifi/WifiStateMachine;->-get76(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConnectivityManager;

    #@1c4
    move-result-object v0

    #@1c5
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@1c7
    invoke-static {v1}, Lcom/android/server/wifi/WifiStateMachine;->-get53(Lcom/android/server/wifi/WifiStateMachine;)Z

    #@1ca
    move-result v1

    #@1cb
    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiConnectivityManager;->handleScreenStateChanged(Z)V

    #@1ce
    goto/16 :goto_2

    #@1d0
    .line 4791
    :cond_7
    const/4 v0, 0x0

    #@1d1
    goto :goto_3
.end method

.method public exit()V
    .locals 3

    #@0
    .prologue
    .line 4943
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@2
    invoke-static {v1}, Lcom/android/server/wifi/WifiStateMachine;->-get81(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/BaseWifiLogger;

    #@5
    move-result-object v1

    #@6
    invoke-virtual {v1}, Lcom/android/server/wifi/BaseWifiLogger;->stopLogging()V

    #@9
    .line 4945
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@b
    const/4 v2, 0x0

    #@c
    invoke-static {v1, v2}, Lcom/android/server/wifi/WifiStateMachine;->-set12(Lcom/android/server/wifi/WifiStateMachine;Z)Z

    #@f
    .line 4946
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@11
    const/4 v2, 0x0

    #@12
    invoke-virtual {v1, v2}, Lcom/android/server/wifi/WifiStateMachine;->updateBatteryWorkSource(Landroid/os/WorkSource;)V

    #@15
    .line 4947
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@17
    new-instance v2, Ljava/util/ArrayList;

    #@19
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    #@1c
    invoke-static {v1, v2}, Lcom/android/server/wifi/WifiStateMachine;->-set25(Lcom/android/server/wifi/WifiStateMachine;Ljava/util/List;)Ljava/util/List;

    #@1f
    .line 4949
    new-instance v0, Landroid/content/Intent;

    #@21
    const-string/jumbo v1, "wifi_scan_available"

    #@24
    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    #@27
    .line 4950
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v1, 0x4000000

    #@29
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    #@2c
    .line 4951
    const-string/jumbo v1, "scan_enabled"

    #@2f
    const/4 v2, 0x1

    #@30
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    #@33
    .line 4952
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
    .line 4953
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@40
    invoke-static {v1}, Lcom/android/server/wifi/WifiStateMachine;->-get10(Lcom/android/server/wifi/WifiStateMachine;)Ljava/util/Queue;

    #@43
    move-result-object v1

    #@44
    invoke-interface {v1}, Ljava/util/Queue;->clear()V

    #@47
    .line 4941
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
    .line 4822
    iget-object v9, p0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@6
    invoke-static {v9, p1, p0}, Lcom/android/server/wifi/WifiStateMachine;->-wrap28(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;Lcom/android/internal/util/State;)V

    #@9
    .line 4824
    iget v9, p1, Landroid/os/Message;->what:I

    #@b
    sparse-switch v9, :sswitch_data_0

    #@e
    .line 4936
    return v11

    #@f
    .line 4826
    :sswitch_0
    iget-object v9, p0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@11
    invoke-static {v9, p1}, Lcom/android/server/wifi/WifiStateMachine;->-wrap24(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;)V

    #@14
    .line 4938
    :cond_0
    :goto_0
    return v10

    #@15
    .line 4829
    :sswitch_1
    iget v1, p1, Landroid/os/Message;->arg1:I

    #@17
    .line 4830
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
    .line 4831
    :cond_1
    iget-object v9, p0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@38
    invoke-static {v9}, Lcom/android/server/wifi/WifiStateMachine;->-get84(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiNative;

    #@3b
    move-result-object v9

    #@3c
    invoke-virtual {v9, v1}, Lcom/android/server/wifi/WifiNative;->setBand(I)Z

    #@3f
    move-result v9

    #@40
    if-eqz v9, :cond_3

    #@42
    .line 4833
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
    .line 4835
    :cond_2
    iget-object v9, p0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@63
    invoke-static {v9}, Lcom/android/server/wifi/WifiStateMachine;->-get25(Lcom/android/server/wifi/WifiStateMachine;)Ljava/util/concurrent/atomic/AtomicInteger;

    #@66
    move-result-object v9

    #@67
    invoke-virtual {v9, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    #@6a
    .line 4837
    iget-object v9, p0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@6c
    invoke-static {v9}, Lcom/android/server/wifi/WifiStateMachine;->-get84(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiNative;

    #@6f
    move-result-object v9

    #@70
    invoke-virtual {v9}, Lcom/android/server/wifi/WifiNative;->bssFlush()V

    #@73
    .line 4839
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
    .line 4842
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
    .line 4846
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
    .line 4848
    iget-object v9, p0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@ba
    invoke-static {v9}, Lcom/android/server/wifi/WifiStateMachine;->-get84(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiNative;

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
    .line 4846
    goto :goto_1

    #@cb
    .line 4851
    :sswitch_3
    iget v4, p1, Landroid/os/Message;->arg1:I

    #@cd
    .line 4853
    .local v4, "mode":I
    iget-object v9, p0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@cf
    const-string/jumbo v11, "stop driver"

    #@d2
    invoke-virtual {v9, v11}, Lcom/android/server/wifi/WifiStateMachine;->log(Ljava/lang/String;)V

    #@d5
    .line 4854
    iget-object v9, p0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@d7
    invoke-static {v9}, Lcom/android/server/wifi/WifiStateMachine;->-get74(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigManager;

    #@da
    move-result-object v9

    #@db
    invoke-virtual {v9}, Lcom/android/server/wifi/WifiConfigManager;->disableAllNetworksNative()V

    #@de
    .line 4856
    iget-object v9, p0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@e0
    invoke-static {v9}, Lcom/android/server/wifi/WifiStateMachine;->-wrap9(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/internal/util/IState;

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
    .line 4857
    iget-object v9, p0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@ee
    invoke-static {v9}, Lcom/android/server/wifi/WifiStateMachine;->-get84(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiNative;

    #@f1
    move-result-object v9

    #@f2
    invoke-virtual {v9}, Lcom/android/server/wifi/WifiNative;->disconnect()Z

    #@f5
    .line 4858
    iget-object v9, p0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@f7
    invoke-static {v9}, Lcom/android/server/wifi/WifiStateMachine;->-wrap23(Lcom/android/server/wifi/WifiStateMachine;)V

    #@fa
    .line 4860
    :cond_5
    iget-object v9, p0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@fc
    invoke-static {v9}, Lcom/android/server/wifi/WifiStateMachine;->-get72(Lcom/android/server/wifi/WifiStateMachine;)Landroid/os/PowerManager$WakeLock;

    #@ff
    move-result-object v9

    #@100
    invoke-virtual {v9}, Landroid/os/PowerManager$WakeLock;->acquire()V

    #@103
    .line 4861
    iget-object v9, p0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@105
    invoke-static {v9}, Lcom/android/server/wifi/WifiStateMachine;->-get84(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiNative;

    #@108
    move-result-object v9

    #@109
    invoke-virtual {v9}, Lcom/android/server/wifi/WifiNative;->stopDriver()Z

    #@10c
    .line 4862
    iget-object v9, p0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@10e
    invoke-static {v9}, Lcom/android/server/wifi/WifiStateMachine;->-get72(Lcom/android/server/wifi/WifiStateMachine;)Landroid/os/PowerManager$WakeLock;

    #@111
    move-result-object v9

    #@112
    invoke-virtual {v9}, Landroid/os/PowerManager$WakeLock;->release()V

    #@115
    .line 4863
    iget-object v9, p0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@117
    invoke-static {v9}, Lcom/android/server/wifi/WifiStateMachine;->-get44(Lcom/android/server/wifi/WifiStateMachine;)Z

    #@11a
    move-result v9

    #@11b
    if-eqz v9, :cond_6

    #@11d
    .line 4864
    iget-object v9, p0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@11f
    iget-object v11, p0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@121
    invoke-static {v11}, Lcom/android/server/wifi/WifiStateMachine;->-get71(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/internal/util/State;

    #@124
    move-result-object v11

    #@125
    invoke-static {v9, v11}, Lcom/android/server/wifi/WifiStateMachine;->-wrap45(Lcom/android/server/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V

    #@128
    goto/16 :goto_0

    #@12a
    .line 4866
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
    .line 4870
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
    .line 4871
    iget-object v9, p0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@141
    invoke-static {v9}, Lcom/android/server/wifi/WifiStateMachine;->-get74(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigManager;

    #@144
    move-result-object v9

    #@145
    invoke-virtual {v9}, Lcom/android/server/wifi/WifiConfigManager;->enableAllNetworks()V

    #@148
    goto/16 :goto_0

    #@14a
    .line 4875
    :sswitch_5
    iget v9, p1, Landroid/os/Message;->arg1:I

    #@14c
    if-ne v9, v10, :cond_7

    #@14e
    .line 4876
    iget-object v9, p0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@150
    invoke-static {v9, v13, v10}, Lcom/android/server/wifi/WifiStateMachine;->-wrap40(Lcom/android/server/wifi/WifiStateMachine;IZ)V

    #@153
    .line 4877
    iget v9, p1, Landroid/os/Message;->arg2:I

    #@155
    if-ne v9, v10, :cond_0

    #@157
    .line 4878
    iget-object v9, p0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@159
    invoke-static {v9}, Lcom/android/server/wifi/WifiStateMachine;->-get63(Lcom/android/server/wifi/WifiStateMachine;)Landroid/os/PowerManager$WakeLock;

    #@15c
    move-result-object v9

    #@15d
    invoke-virtual {v9}, Landroid/os/PowerManager$WakeLock;->release()V

    #@160
    goto/16 :goto_0

    #@162
    .line 4881
    :cond_7
    iget-object v9, p0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@164
    invoke-static {v9, v13, v11}, Lcom/android/server/wifi/WifiStateMachine;->-wrap40(Lcom/android/server/wifi/WifiStateMachine;IZ)V

    #@167
    goto/16 :goto_0

    #@169
    .line 4885
    :sswitch_6
    iget v9, p1, Landroid/os/Message;->arg1:I

    #@16b
    if-ne v9, v10, :cond_8

    #@16d
    .line 4886
    iget-object v9, p0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@16f
    invoke-static {v9, v12, v11}, Lcom/android/server/wifi/WifiStateMachine;->-wrap40(Lcom/android/server/wifi/WifiStateMachine;IZ)V

    #@172
    goto/16 :goto_0

    #@174
    .line 4888
    :cond_8
    iget-object v9, p0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@176
    invoke-static {v9, v12, v10}, Lcom/android/server/wifi/WifiStateMachine;->-wrap40(Lcom/android/server/wifi/WifiStateMachine;IZ)V

    #@179
    goto/16 :goto_0

    #@17b
    .line 4892
    :sswitch_7
    iget-object v9, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@17d
    if-eqz v9, :cond_0

    #@17f
    .line 4893
    iget-object v6, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@181
    check-cast v6, Ljava/lang/String;

    #@183
    .line 4894
    .local v6, "remoteAddress":Ljava/lang/String;
    iget v9, p1, Landroid/os/Message;->arg1:I

    #@185
    if-ne v9, v10, :cond_9

    #@187
    const/4 v2, 0x1

    #@188
    .line 4895
    .local v2, "enable":Z
    :goto_2
    iget-object v9, p0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@18a
    invoke-static {v9}, Lcom/android/server/wifi/WifiStateMachine;->-get84(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiNative;

    #@18d
    move-result-object v9

    #@18e
    invoke-virtual {v9, v6, v2}, Lcom/android/server/wifi/WifiNative;->startTdls(Ljava/lang/String;Z)V

    #@191
    goto/16 :goto_0

    #@193
    .line 4894
    .end local v2    # "enable":Z
    :cond_9
    const/4 v2, 0x0

    #@194
    .restart local v2    # "enable":Z
    goto :goto_2

    #@195
    .line 4899
    .end local v2    # "enable":Z
    .end local v6    # "remoteAddress":Ljava/lang/String;
    :sswitch_8
    iget-object v9, p0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@197
    invoke-static {v9}, Lcom/android/server/wifi/WifiStateMachine;->-get74(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigManager;

    #@19a
    move-result-object v12

    #@19b
    iget-object v9, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@19d
    check-cast v9, Ljava/lang/Long;

    #@19f
    iget v13, p1, Landroid/os/Message;->arg1:I

    #@1a1
    if-eqz v13, :cond_a

    #@1a3
    move v11, v10

    #@1a4
    :cond_a
    invoke-virtual {v12, v9, v11}, Lcom/android/server/wifi/WifiConfigManager;->notifyANQPDone(Ljava/lang/Long;Z)V

    #@1a7
    goto/16 :goto_0

    #@1a9
    .line 4902
    :sswitch_9
    iget v8, p1, Landroid/os/Message;->arg1:I

    #@1ab
    .line 4903
    .local v8, "slot":I
    iget-object v9, p0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@1ad
    invoke-virtual {v9, v8}, Lcom/android/server/wifi/WifiStateMachine;->stopWifiIPPacketOffload(I)I

    #@1b0
    move-result v7

    #@1b1
    .line 4904
    .local v7, "ret":I
    iget-object v9, p0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@1b3
    invoke-static {v9}, Lcom/android/server/wifi/WifiStateMachine;->-get35(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiStateMachine$WifiNetworkAgent;

    #@1b6
    move-result-object v9

    #@1b7
    if-eqz v9, :cond_0

    #@1b9
    .line 4905
    iget-object v9, p0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@1bb
    invoke-static {v9}, Lcom/android/server/wifi/WifiStateMachine;->-get35(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiStateMachine$WifiNetworkAgent;

    #@1be
    move-result-object v9

    #@1bf
    invoke-virtual {v9, v8, v7}, Lcom/android/server/wifi/WifiStateMachine$WifiNetworkAgent;->onPacketKeepaliveEvent(II)V

    #@1c2
    goto/16 :goto_0

    #@1c4
    .line 4910
    .end local v7    # "ret":I
    .end local v8    # "slot":I
    :sswitch_a
    iget-object v9, p0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@1c6
    invoke-static {v9}, Lcom/android/server/wifi/WifiStateMachine;->-get74(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigManager;

    #@1c9
    move-result-object v11

    #@1ca
    iget-object v9, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@1cc
    check-cast v9, Lcom/android/server/wifi/hotspot2/IconEvent;

    #@1ce
    invoke-virtual {v11, v9}, Lcom/android/server/wifi/WifiConfigManager;->notifyIconReceived(Lcom/android/server/wifi/hotspot2/IconEvent;)V

    #@1d1
    goto/16 :goto_0

    #@1d3
    .line 4913
    :sswitch_b
    iget-object v11, p0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@1d5
    iget-object v9, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@1d7
    check-cast v9, Lcom/android/server/wifi/WnmData;

    #@1d9
    invoke-static {v11, v9}, Lcom/android/server/wifi/WifiStateMachine;->-wrap48(Lcom/android/server/wifi/WifiStateMachine;Lcom/android/server/wifi/WnmData;)V

    #@1dc
    goto/16 :goto_0

    #@1de
    .line 4916
    :sswitch_c
    iget v9, p1, Landroid/os/Message;->arg1:I

    #@1e0
    if-lez v9, :cond_b

    #@1e2
    const/4 v3, 0x1

    #@1e3
    .line 4917
    .local v3, "enabled":Z
    :goto_3
    iget-object v9, p0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@1e5
    invoke-static {v9}, Lcom/android/server/wifi/WifiStateMachine;->-get84(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiNative;

    #@1e8
    move-result-object v9

    #@1e9
    invoke-virtual {v9, v3}, Lcom/android/server/wifi/WifiNative;->configureNeighborDiscoveryOffload(Z)Z

    #@1ec
    goto/16 :goto_0

    #@1ee
    .line 4916
    .end local v3    # "enabled":Z
    :cond_b
    const/4 v3, 0x0

    #@1ef
    .restart local v3    # "enabled":Z
    goto :goto_3

    #@1f0
    .line 4920
    .end local v3    # "enabled":Z
    :sswitch_d
    iget-object v9, p0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@1f2
    invoke-static {v9}, Lcom/android/server/wifi/WifiStateMachine;->-get76(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConnectivityManager;

    #@1f5
    move-result-object v9

    #@1f6
    if-eqz v9, :cond_0

    #@1f8
    .line 4921
    iget-object v9, p0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@1fa
    invoke-static {v9}, Lcom/android/server/wifi/WifiStateMachine;->-get76(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConnectivityManager;

    #@1fd
    move-result-object v9

    #@1fe
    iget v12, p1, Landroid/os/Message;->arg1:I

    #@200
    if-ne v12, v10, :cond_c

    #@202
    move v11, v10

    #@203
    :cond_c
    invoke-virtual {v9, v11}, Lcom/android/server/wifi/WifiConnectivityManager;->enable(Z)V

    #@206
    goto/16 :goto_0

    #@208
    .line 4925
    :sswitch_e
    iget v9, p1, Landroid/os/Message;->arg1:I

    #@20a
    if-lez v9, :cond_d

    #@20c
    const/4 v0, 0x1

    #@20d
    .line 4926
    .local v0, "allowed":Z
    :goto_4
    iget-object v9, p0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@20f
    invoke-static {v9}, Lcom/android/server/wifi/WifiStateMachine;->-get74(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigManager;

    #@212
    move-result-object v9

    #@213
    invoke-virtual {v9}, Lcom/android/server/wifi/WifiConfigManager;->getEnableAutoJoinWhenAssociated()Z

    #@216
    move-result v5

    #@217
    .line 4927
    .local v5, "old_state":Z
    iget-object v9, p0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@219
    invoke-static {v9}, Lcom/android/server/wifi/WifiStateMachine;->-get74(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigManager;

    #@21c
    move-result-object v9

    #@21d
    invoke-virtual {v9, v0}, Lcom/android/server/wifi/WifiConfigManager;->setEnableAutoJoinWhenAssociated(Z)V

    #@220
    .line 4928
    if-nez v5, :cond_0

    #@222
    if-eqz v0, :cond_0

    #@224
    iget-object v9, p0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@226
    invoke-static {v9}, Lcom/android/server/wifi/WifiStateMachine;->-get53(Lcom/android/server/wifi/WifiStateMachine;)Z

    #@229
    move-result v9

    #@22a
    if-eqz v9, :cond_0

    #@22c
    .line 4929
    iget-object v9, p0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@22e
    invoke-static {v9}, Lcom/android/server/wifi/WifiStateMachine;->-wrap9(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/internal/util/IState;

    #@231
    move-result-object v9

    #@232
    iget-object v11, p0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@234
    invoke-static {v11}, Lcom/android/server/wifi/WifiStateMachine;->-get12(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/internal/util/State;

    #@237
    move-result-object v11

    #@238
    if-ne v9, v11, :cond_0

    #@23a
    .line 4930
    iget-object v9, p0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@23c
    invoke-static {v9}, Lcom/android/server/wifi/WifiStateMachine;->-get76(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConnectivityManager;

    #@23f
    move-result-object v9

    #@240
    if-eqz v9, :cond_0

    #@242
    .line 4931
    iget-object v9, p0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@244
    invoke-static {v9}, Lcom/android/server/wifi/WifiStateMachine;->-get76(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConnectivityManager;

    #@247
    move-result-object v9

    #@248
    invoke-virtual {v9}, Lcom/android/server/wifi/WifiConnectivityManager;->forceConnectivityScan()V

    #@24b
    goto/16 :goto_0

    #@24d
    .line 4925
    .end local v0    # "allowed":Z
    .end local v5    # "old_state":Z
    :cond_d
    const/4 v0, 0x0

    #@24e
    .restart local v0    # "allowed":Z
    goto :goto_4

    #@24f
    .line 4824
    nop

    #@250
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
