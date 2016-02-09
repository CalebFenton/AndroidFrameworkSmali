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
    .line 6103
    iput-object p1, p0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

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
    const/high16 v7, 0x40000

    #@2
    const/4 v6, 0x3

    #@3
    const/4 v4, 0x0

    #@4
    const/4 v3, 0x1

    #@5
    .line 6107
    invoke-static {}, Lcom/android/server/wifi/WifiStateMachine;->-get7()Z

    #@8
    move-result v2

    #@9
    if-eqz v2, :cond_0

    #@b
    .line 6108
    iget-object v2, p0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@d
    const-string/jumbo v5, "DriverStartedState enter"

    #@10
    invoke-virtual {v2, v5}, Lcom/android/server/wifi/WifiStateMachine;->logd(Ljava/lang/String;)V

    #@13
    .line 6111
    :cond_0
    iget-object v2, p0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@15
    invoke-static {v2}, Lcom/android/server/wifi/WifiStateMachine;->-get103(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiLogger;

    #@18
    move-result-object v5

    #@19
    iget-object v2, p0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@1b
    invoke-static {v2}, Lcom/android/server/wifi/WifiStateMachine;->-get92(Lcom/android/server/wifi/WifiStateMachine;)I

    #@1e
    move-result v2

    #@1f
    if-lez v2, :cond_5

    #@21
    move v2, v3

    #@22
    :goto_0
    invoke-virtual {v5, v2}, Lcom/android/server/wifi/WifiLogger;->startLogging(Z)V

    #@25
    .line 6112
    iget-object v2, p0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@27
    invoke-static {v2, v3}, Lcom/android/server/wifi/WifiStateMachine;->-set25(Lcom/android/server/wifi/WifiStateMachine;Z)Z

    #@2a
    .line 6113
    iget-object v2, p0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@2c
    invoke-static {v2, v4}, Lcom/android/server/wifi/WifiStateMachine;->-set22(Lcom/android/server/wifi/WifiStateMachine;Z)Z

    #@2f
    .line 6114
    iget-object v2, p0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@31
    invoke-static {v2}, Lcom/android/server/wifi/WifiStateMachine;->-get23(Lcom/android/server/wifi/WifiStateMachine;)I

    #@34
    move-result v5

    #@35
    add-int/lit8 v5, v5, 0x1

    #@37
    invoke-static {v2, v5}, Lcom/android/server/wifi/WifiStateMachine;->-set10(Lcom/android/server/wifi/WifiStateMachine;I)I

    #@3a
    .line 6115
    iget-object v2, p0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@3c
    const/4 v5, 0x0

    #@3d
    invoke-virtual {v2, v5}, Lcom/android/server/wifi/WifiStateMachine;->updateBatteryWorkSource(Landroid/os/WorkSource;)V

    #@40
    .line 6121
    iget-object v2, p0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@42
    invoke-static {v2}, Lcom/android/server/wifi/WifiStateMachine;->-get105(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiNative;

    #@45
    move-result-object v2

    #@46
    iget-object v5, p0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@48
    invoke-static {v5}, Lcom/android/server/wifi/WifiStateMachine;->-get16(Lcom/android/server/wifi/WifiStateMachine;)Z

    #@4b
    move-result v5

    #@4c
    invoke-virtual {v2, v5}, Lcom/android/server/wifi/WifiNative;->setBluetoothCoexistenceScanMode(Z)Z

    #@4f
    .line 6123
    iget-object v2, p0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@51
    sget-object v5, Landroid/net/NetworkInfo$DetailedState;->DISCONNECTED:Landroid/net/NetworkInfo$DetailedState;

    #@53
    invoke-static {v2, v5}, Lcom/android/server/wifi/WifiStateMachine;->-wrap7(Lcom/android/server/wifi/WifiStateMachine;Landroid/net/NetworkInfo$DetailedState;)Z

    #@56
    .line 6126
    iget-object v2, p0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@58
    invoke-static {v2}, Lcom/android/server/wifi/WifiStateMachine;->-get105(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiNative;

    #@5b
    move-result-object v2

    #@5c
    invoke-virtual {v2}, Lcom/android/server/wifi/WifiNative;->stopFilteringMulticastV6Packets()Z

    #@5f
    .line 6129
    iget-object v2, p0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@61
    invoke-static {v2}, Lcom/android/server/wifi/WifiStateMachine;->-get37(Lcom/android/server/wifi/WifiStateMachine;)Ljava/util/concurrent/atomic/AtomicBoolean;

    #@64
    move-result-object v2

    #@65
    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    #@68
    move-result v2

    #@69
    if-eqz v2, :cond_6

    #@6b
    .line 6130
    iget-object v2, p0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@6d
    invoke-static {v2}, Lcom/android/server/wifi/WifiStateMachine;->-get105(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiNative;

    #@70
    move-result-object v2

    #@71
    invoke-virtual {v2}, Lcom/android/server/wifi/WifiNative;->startFilteringMulticastV4Packets()Z

    #@74
    .line 6135
    :goto_1
    iget-object v2, p0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@76
    invoke-static {v2, v4}, Lcom/android/server/wifi/WifiStateMachine;->-set11(Lcom/android/server/wifi/WifiStateMachine;Z)Z

    #@79
    .line 6137
    iget-object v2, p0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@7b
    invoke-static {v2}, Lcom/android/server/wifi/WifiStateMachine;->-get60(Lcom/android/server/wifi/WifiStateMachine;)I

    #@7e
    move-result v2

    #@7f
    if-eq v2, v3, :cond_7

    #@81
    .line 6138
    iget-object v2, p0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@83
    invoke-static {v2}, Lcom/android/server/wifi/WifiStateMachine;->-get105(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiNative;

    #@86
    move-result-object v2

    #@87
    invoke-virtual {v2}, Lcom/android/server/wifi/WifiNative;->disconnect()Z

    #@8a
    .line 6139
    iget-object v2, p0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@8c
    invoke-static {v2}, Lcom/android/server/wifi/WifiStateMachine;->-get99(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigStore;

    #@8f
    move-result-object v2

    #@90
    invoke-virtual {v2}, Lcom/android/server/wifi/WifiConfigStore;->disableAllNetworks()V

    #@93
    .line 6140
    iget-object v2, p0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@95
    invoke-static {v2}, Lcom/android/server/wifi/WifiStateMachine;->-get60(Lcom/android/server/wifi/WifiStateMachine;)I

    #@98
    move-result v2

    #@99
    if-ne v2, v6, :cond_1

    #@9b
    .line 6141
    iget-object v2, p0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@9d
    invoke-static {v2, v3}, Lcom/android/server/wifi/WifiStateMachine;->-wrap51(Lcom/android/server/wifi/WifiStateMachine;I)V

    #@a0
    .line 6143
    :cond_1
    iget-object v2, p0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@a2
    iget-object v5, p0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@a4
    invoke-static {v5}, Lcom/android/server/wifi/WifiStateMachine;->-get69(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/internal/util/State;

    #@a7
    move-result-object v5

    #@a8
    invoke-static {v2, v5}, Lcom/android/server/wifi/WifiStateMachine;->-wrap55(Lcom/android/server/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V

    #@ab
    .line 6158
    :goto_2
    iget-object v2, p0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@ad
    invoke-static {v2}, Lcom/android/server/wifi/WifiStateMachine;->-get71(Lcom/android/server/wifi/WifiStateMachine;)Ljava/util/concurrent/atomic/AtomicBoolean;

    #@b0
    move-result-object v2

    #@b1
    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    #@b4
    move-result v2

    #@b5
    if-nez v2, :cond_8

    #@b7
    .line 6159
    iget-object v2, p0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@b9
    invoke-static {v2}, Lcom/android/server/wifi/WifiStateMachine;->-get20(Lcom/android/server/wifi/WifiStateMachine;)Landroid/content/Context;

    #@bc
    move-result-object v2

    #@bd
    .line 6160
    const-string/jumbo v4, "power"

    #@c0
    .line 6159
    invoke-virtual {v2, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    #@c3
    move-result-object v1

    #@c4
    check-cast v1, Landroid/os/PowerManager;

    #@c6
    .line 6161
    .local v1, "powerManager":Landroid/os/PowerManager;
    iget-object v2, p0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@c8
    invoke-virtual {v1}, Landroid/os/PowerManager;->isScreenOn()Z

    #@cb
    move-result v4

    #@cc
    invoke-static {v2, v4}, Lcom/android/server/wifi/WifiStateMachine;->-wrap30(Lcom/android/server/wifi/WifiStateMachine;Z)V

    #@cf
    .line 6167
    .end local v1    # "powerManager":Landroid/os/PowerManager;
    :goto_3
    iget-object v2, p0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@d1
    invoke-static {v2}, Lcom/android/server/wifi/WifiStateMachine;->-get105(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiNative;

    #@d4
    move-result-object v2

    #@d5
    invoke-virtual {v2, v3}, Lcom/android/server/wifi/WifiNative;->setPowerSave(Z)V

    #@d8
    .line 6169
    iget-object v2, p0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@da
    invoke-static {v2}, Lcom/android/server/wifi/WifiStateMachine;->-get62(Lcom/android/server/wifi/WifiStateMachine;)Z

    #@dd
    move-result v2

    #@de
    if-eqz v2, :cond_2

    #@e0
    .line 6170
    iget-object v2, p0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@e2
    invoke-static {v2}, Lcom/android/server/wifi/WifiStateMachine;->-get60(Lcom/android/server/wifi/WifiStateMachine;)I

    #@e5
    move-result v2

    #@e6
    if-ne v2, v3, :cond_2

    #@e8
    .line 6171
    iget-object v2, p0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@ea
    invoke-static {v2}, Lcom/android/server/wifi/WifiStateMachine;->-get106(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/internal/util/AsyncChannel;

    #@ed
    move-result-object v2

    #@ee
    const v4, 0x20083

    #@f1
    invoke-virtual {v2, v4}, Lcom/android/internal/util/AsyncChannel;->sendMessage(I)V

    #@f4
    .line 6179
    :cond_2
    new-instance v0, Landroid/content/Intent;

    #@f6
    const-string/jumbo v2, "wifi_scan_available"

    #@f9
    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    #@fc
    .line 6180
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v2, 0x4000000

    #@fe
    invoke-virtual {v0, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    #@101
    .line 6181
    const-string/jumbo v2, "scan_enabled"

    #@104
    invoke-virtual {v0, v2, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    #@107
    .line 6182
    iget-object v2, p0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@109
    invoke-static {v2}, Lcom/android/server/wifi/WifiStateMachine;->-get20(Lcom/android/server/wifi/WifiStateMachine;)Landroid/content/Context;

    #@10c
    move-result-object v2

    #@10d
    sget-object v4, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    #@10f
    invoke-virtual {v2, v0, v4}, Landroid/content/Context;->sendStickyBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    #@112
    .line 6184
    iget-object v2, p0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@114
    invoke-static {}, Lcom/android/server/wifi/WifiNative;->getSupportedFeatureSet()I

    #@117
    move-result v4

    #@118
    invoke-static {v2, v4}, Lcom/android/server/wifi/WifiStateMachine;->-set21(Lcom/android/server/wifi/WifiStateMachine;I)I

    #@11b
    .line 6185
    iget-object v2, p0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@11d
    invoke-static {v2}, Lcom/android/server/wifi/WifiStateMachine;->-get41(Lcom/android/server/wifi/WifiStateMachine;)I

    #@120
    move-result v2

    #@121
    and-int/2addr v2, v7

    #@122
    if-ne v2, v7, :cond_3

    #@124
    .line 6187
    iget-object v2, p0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@126
    invoke-static {v2, v3}, Lcom/android/server/wifi/WifiStateMachine;->-set19(Lcom/android/server/wifi/WifiStateMachine;Z)Z

    #@129
    .line 6191
    :cond_3
    iget-object v2, p0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@12b
    invoke-static {v2}, Lcom/android/server/wifi/WifiStateMachine;->-get105(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiNative;

    #@12e
    const-string/jumbo v2, "wlan0"

    #@131
    invoke-static {v2, v3}, Lcom/android/server/wifi/WifiNative;->setWifiLinkLayerStats(Ljava/lang/String;I)V

    #@134
    .line 6193
    invoke-static {}, Lcom/android/server/wifi/WifiStateMachine;->-get7()Z

    #@137
    move-result v2

    #@138
    if-eqz v2, :cond_4

    #@13a
    .line 6194
    iget-object v2, p0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@13c
    new-instance v3, Ljava/lang/StringBuilder;

    #@13e
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@141
    const-string/jumbo v4, "Driverstarted State enter done, epno="

    #@144
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@147
    move-result-object v3

    #@148
    iget-object v4, p0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@14a
    invoke-static {v4}, Lcom/android/server/wifi/WifiStateMachine;->-get39(Lcom/android/server/wifi/WifiStateMachine;)Z

    #@14d
    move-result v4

    #@14e
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@151
    move-result-object v3

    #@152
    .line 6195
    const-string/jumbo v4, " feature="

    #@155
    .line 6194
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@158
    move-result-object v3

    #@159
    .line 6195
    iget-object v4, p0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@15b
    invoke-static {v4}, Lcom/android/server/wifi/WifiStateMachine;->-get41(Lcom/android/server/wifi/WifiStateMachine;)I

    #@15e
    move-result v4

    #@15f
    .line 6194
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@162
    move-result-object v3

    #@163
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@166
    move-result-object v3

    #@167
    invoke-virtual {v2, v3}, Lcom/android/server/wifi/WifiStateMachine;->logd(Ljava/lang/String;)V

    #@16a
    .line 6105
    :cond_4
    return-void

    #@16b
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_5
    move v2, v4

    #@16c
    .line 6111
    goto/16 :goto_0

    #@16e
    .line 6132
    :cond_6
    iget-object v2, p0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@170
    invoke-static {v2}, Lcom/android/server/wifi/WifiStateMachine;->-get105(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiNative;

    #@173
    move-result-object v2

    #@174
    invoke-virtual {v2}, Lcom/android/server/wifi/WifiNative;->stopFilteringMulticastV4Packets()Z

    #@177
    goto/16 :goto_1

    #@179
    .line 6151
    :cond_7
    iget-object v2, p0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@17b
    invoke-static {v2}, Lcom/android/server/wifi/WifiStateMachine;->-get105(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiNative;

    #@17e
    move-result-object v2

    #@17f
    invoke-virtual {v2}, Lcom/android/server/wifi/WifiNative;->status()Ljava/lang/String;

    #@182
    .line 6153
    iget-object v2, p0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@184
    iget-object v5, p0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@186
    invoke-static {v5}, Lcom/android/server/wifi/WifiStateMachine;->-get26(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/internal/util/State;

    #@189
    move-result-object v5

    #@18a
    invoke-static {v2, v5}, Lcom/android/server/wifi/WifiStateMachine;->-wrap55(Lcom/android/server/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V

    #@18d
    .line 6154
    iget-object v2, p0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@18f
    iget-object v5, p0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@191
    invoke-static {v5}, Lcom/android/server/wifi/WifiStateMachine;->-get26(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/internal/util/State;

    #@194
    move-result-object v5

    #@195
    invoke-static {v2, v5}, Lcom/android/server/wifi/WifiStateMachine;->-wrap55(Lcom/android/server/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V

    #@198
    goto/16 :goto_2

    #@19a
    .line 6164
    :cond_8
    iget-object v2, p0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@19c
    invoke-static {v2}, Lcom/android/server/wifi/WifiStateMachine;->-get105(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiNative;

    #@19f
    move-result-object v2

    #@1a0
    iget-object v5, p0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@1a2
    invoke-static {v5}, Lcom/android/server/wifi/WifiStateMachine;->-get82(Lcom/android/server/wifi/WifiStateMachine;)I

    #@1a5
    move-result v5

    #@1a6
    if-nez v5, :cond_9

    #@1a8
    .line 6165
    iget-object v4, p0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@1aa
    invoke-static {v4}, Lcom/android/server/wifi/WifiStateMachine;->-get91(Lcom/android/server/wifi/WifiStateMachine;)Ljava/util/concurrent/atomic/AtomicBoolean;

    #@1ad
    move-result-object v4

    #@1ae
    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    #@1b1
    move-result v4

    #@1b2
    .line 6164
    :cond_9
    invoke-virtual {v2, v4}, Lcom/android/server/wifi/WifiNative;->setSuspendOptimizations(Z)Z

    #@1b5
    goto/16 :goto_3
.end method

.method public exit()V
    .locals 3

    #@0
    .prologue
    .line 6335
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@2
    invoke-static {v1}, Lcom/android/server/wifi/WifiStateMachine;->-get103(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiLogger;

    #@5
    move-result-object v1

    #@6
    invoke-virtual {v1}, Lcom/android/server/wifi/WifiLogger;->stopLogging()V

    #@9
    .line 6337
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@b
    const/4 v2, 0x0

    #@c
    invoke-static {v1, v2}, Lcom/android/server/wifi/WifiStateMachine;->-set25(Lcom/android/server/wifi/WifiStateMachine;Z)Z

    #@f
    .line 6338
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@11
    const/4 v2, 0x0

    #@12
    invoke-virtual {v1, v2}, Lcom/android/server/wifi/WifiStateMachine;->updateBatteryWorkSource(Landroid/os/WorkSource;)V

    #@15
    .line 6339
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@17
    new-instance v2, Ljava/util/ArrayList;

    #@19
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    #@1c
    invoke-static {v1, v2}, Lcom/android/server/wifi/WifiStateMachine;->-set37(Lcom/android/server/wifi/WifiStateMachine;Ljava/util/List;)Ljava/util/List;

    #@1f
    .line 6341
    new-instance v0, Landroid/content/Intent;

    #@21
    const-string/jumbo v1, "wifi_scan_available"

    #@24
    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    #@27
    .line 6342
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v1, 0x4000000

    #@29
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    #@2c
    .line 6343
    const-string/jumbo v1, "scan_enabled"

    #@2f
    const/4 v2, 0x1

    #@30
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    #@33
    .line 6344
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@35
    invoke-static {v1}, Lcom/android/server/wifi/WifiStateMachine;->-get20(Lcom/android/server/wifi/WifiStateMachine;)Landroid/content/Context;

    #@38
    move-result-object v1

    #@39
    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    #@3b
    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendStickyBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    #@3e
    .line 6345
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@40
    invoke-static {v1}, Lcom/android/server/wifi/WifiStateMachine;->-wrap35(Lcom/android/server/wifi/WifiStateMachine;)V

    #@43
    .line 6346
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@45
    invoke-static {v1}, Lcom/android/server/wifi/WifiStateMachine;->-get17(Lcom/android/server/wifi/WifiStateMachine;)Ljava/util/Queue;

    #@48
    move-result-object v1

    #@49
    invoke-interface {v1}, Ljava/util/Queue;->clear()V

    #@4c
    .line 6333
    return-void
.end method

.method public processMessage(Landroid/os/Message;)Z
    .locals 12
    .param p1, "message"    # Landroid/os/Message;

    #@0
    .prologue
    const/4 v11, 0x0

    #@1
    const/4 v10, 0x4

    #@2
    const/4 v9, 0x2

    #@3
    const/4 v7, 0x0

    #@4
    const/4 v6, 0x1

    #@5
    .line 6201
    iget-object v5, p0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@7
    invoke-virtual {p0}, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->getClass()Ljava/lang/Class;

    #@a
    move-result-object v8

    #@b
    invoke-virtual {v8}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    #@e
    move-result-object v8

    #@f
    invoke-static {v5, p1, v8}, Lcom/android/server/wifi/WifiStateMachine;->-wrap33(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;Ljava/lang/String;)V

    #@12
    .line 6203
    iget v5, p1, Landroid/os/Message;->what:I

    #@14
    sparse-switch v5, :sswitch_data_0

    #@17
    .line 6328
    return v7

    #@18
    .line 6205
    :sswitch_0
    iget-object v5, p0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@1a
    invoke-static {v5, v6, p1}, Lcom/android/server/wifi/WifiStateMachine;->-wrap29(Lcom/android/server/wifi/WifiStateMachine;ILandroid/os/Message;)V

    #@1d
    .line 6330
    :cond_0
    :goto_0
    return v6

    #@1e
    .line 6208
    :sswitch_1
    iget v0, p1, Landroid/os/Message;->arg1:I

    #@20
    .line 6209
    .local v0, "band":I
    invoke-static {}, Lcom/android/server/wifi/WifiStateMachine;->-get0()Z

    #@23
    move-result v5

    #@24
    if-eqz v5, :cond_1

    #@26
    iget-object v5, p0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@28
    new-instance v7, Ljava/lang/StringBuilder;

    #@2a
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    #@2d
    const-string/jumbo v8, "set frequency band "

    #@30
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@33
    move-result-object v7

    #@34
    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@37
    move-result-object v7

    #@38
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3b
    move-result-object v7

    #@3c
    invoke-virtual {v5, v7}, Lcom/android/server/wifi/WifiStateMachine;->log(Ljava/lang/String;)V

    #@3f
    .line 6210
    :cond_1
    iget-object v5, p0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@41
    invoke-static {v5}, Lcom/android/server/wifi/WifiStateMachine;->-get105(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiNative;

    #@44
    move-result-object v5

    #@45
    invoke-virtual {v5, v0}, Lcom/android/server/wifi/WifiNative;->setBand(I)Z

    #@48
    move-result v5

    #@49
    if-eqz v5, :cond_3

    #@4b
    .line 6212
    invoke-static {}, Lcom/android/server/wifi/WifiStateMachine;->-get7()Z

    #@4e
    move-result v5

    #@4f
    if-eqz v5, :cond_2

    #@51
    iget-object v5, p0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@53
    new-instance v7, Ljava/lang/StringBuilder;

    #@55
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    #@58
    const-string/jumbo v8, "did set frequency band "

    #@5b
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5e
    move-result-object v7

    #@5f
    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@62
    move-result-object v7

    #@63
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@66
    move-result-object v7

    #@67
    invoke-virtual {v5, v7}, Lcom/android/server/wifi/WifiStateMachine;->logd(Ljava/lang/String;)V

    #@6a
    .line 6214
    :cond_2
    iget-object v5, p0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@6c
    invoke-static {v5}, Lcom/android/server/wifi/WifiStateMachine;->-get38(Lcom/android/server/wifi/WifiStateMachine;)Ljava/util/concurrent/atomic/AtomicInteger;

    #@6f
    move-result-object v5

    #@70
    invoke-virtual {v5, v0}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    #@73
    .line 6216
    iget-object v5, p0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@75
    invoke-static {v5}, Lcom/android/server/wifi/WifiStateMachine;->-get105(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiNative;

    #@78
    move-result-object v5

    #@79
    invoke-virtual {v5}, Lcom/android/server/wifi/WifiNative;->bssFlush()V

    #@7c
    .line 6220
    invoke-static {}, Lcom/android/server/wifi/WifiStateMachine;->-get7()Z

    #@7f
    move-result v5

    #@80
    if-eqz v5, :cond_0

    #@82
    iget-object v5, p0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@84
    new-instance v7, Ljava/lang/StringBuilder;

    #@86
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    #@89
    const-string/jumbo v8, "done set frequency band "

    #@8c
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@8f
    move-result-object v7

    #@90
    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@93
    move-result-object v7

    #@94
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@97
    move-result-object v7

    #@98
    invoke-virtual {v5, v7}, Lcom/android/server/wifi/WifiStateMachine;->logd(Ljava/lang/String;)V

    #@9b
    goto :goto_0

    #@9c
    .line 6223
    :cond_3
    iget-object v5, p0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@9e
    new-instance v7, Ljava/lang/StringBuilder;

    #@a0
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    #@a3
    const-string/jumbo v8, "Failed to set frequency band "

    #@a6
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a9
    move-result-object v7

    #@aa
    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@ad
    move-result-object v7

    #@ae
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@b1
    move-result-object v7

    #@b2
    invoke-virtual {v5, v7}, Lcom/android/server/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V

    #@b5
    goto/16 :goto_0

    #@b7
    .line 6227
    .end local v0    # "band":I
    :sswitch_2
    iget-object v8, p0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@b9
    iget v5, p1, Landroid/os/Message;->arg1:I

    #@bb
    if-eqz v5, :cond_4

    #@bd
    move v5, v6

    #@be
    :goto_1
    invoke-static {v8, v5}, Lcom/android/server/wifi/WifiStateMachine;->-set8(Lcom/android/server/wifi/WifiStateMachine;Z)Z

    #@c1
    .line 6229
    iget-object v5, p0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@c3
    invoke-static {v5}, Lcom/android/server/wifi/WifiStateMachine;->-get105(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiNative;

    #@c6
    move-result-object v5

    #@c7
    iget-object v7, p0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@c9
    invoke-static {v7}, Lcom/android/server/wifi/WifiStateMachine;->-get16(Lcom/android/server/wifi/WifiStateMachine;)Z

    #@cc
    move-result v7

    #@cd
    invoke-virtual {v5, v7}, Lcom/android/server/wifi/WifiNative;->setBluetoothCoexistenceScanMode(Z)Z

    #@d0
    goto/16 :goto_0

    #@d2
    :cond_4
    move v5, v7

    #@d3
    .line 6227
    goto :goto_1

    #@d4
    .line 6232
    :sswitch_3
    iget v3, p1, Landroid/os/Message;->arg1:I

    #@d6
    .line 6235
    .local v3, "mode":I
    iget-object v5, p0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@d8
    invoke-static {v5}, Lcom/android/server/wifi/WifiStateMachine;->-get42(Lcom/android/server/wifi/WifiStateMachine;)Z

    #@db
    move-result v5

    #@dc
    if-eqz v5, :cond_5

    #@de
    .line 6236
    invoke-static {}, Lcom/android/server/wifi/WifiStateMachine;->-get0()Z

    #@e1
    move-result v5

    #@e2
    if-eqz v5, :cond_0

    #@e4
    iget-object v5, p0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@e6
    const-string/jumbo v7, "Already in delayed stop"

    #@e9
    invoke-virtual {v5, v7}, Lcom/android/server/wifi/WifiStateMachine;->log(Ljava/lang/String;)V

    #@ec
    goto/16 :goto_0

    #@ee
    .line 6240
    :cond_5
    iget-object v5, p0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@f0
    invoke-static {v5}, Lcom/android/server/wifi/WifiStateMachine;->-get99(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigStore;

    #@f3
    move-result-object v5

    #@f4
    invoke-virtual {v5}, Lcom/android/server/wifi/WifiConfigStore;->disableAllNetworks()V

    #@f7
    .line 6242
    iget-object v5, p0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@f9
    invoke-static {v5, v6}, Lcom/android/server/wifi/WifiStateMachine;->-set22(Lcom/android/server/wifi/WifiStateMachine;Z)Z

    #@fc
    .line 6243
    iget-object v5, p0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@fe
    invoke-static {v5}, Lcom/android/server/wifi/WifiStateMachine;->-get23(Lcom/android/server/wifi/WifiStateMachine;)I

    #@101
    move-result v8

    #@102
    add-int/lit8 v8, v8, 0x1

    #@104
    invoke-static {v5, v8}, Lcom/android/server/wifi/WifiStateMachine;->-set10(Lcom/android/server/wifi/WifiStateMachine;I)I

    #@107
    .line 6244
    invoke-static {}, Lcom/android/server/wifi/WifiStateMachine;->-get0()Z

    #@10a
    move-result v5

    #@10b
    if-eqz v5, :cond_6

    #@10d
    iget-object v5, p0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@10f
    new-instance v8, Ljava/lang/StringBuilder;

    #@111
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    #@114
    const-string/jumbo v9, "Delayed stop message "

    #@117
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@11a
    move-result-object v8

    #@11b
    iget-object v9, p0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@11d
    invoke-static {v9}, Lcom/android/server/wifi/WifiStateMachine;->-get23(Lcom/android/server/wifi/WifiStateMachine;)I

    #@120
    move-result v9

    #@121
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@124
    move-result-object v8

    #@125
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@128
    move-result-object v8

    #@129
    invoke-virtual {v5, v8}, Lcom/android/server/wifi/WifiStateMachine;->log(Ljava/lang/String;)V

    #@12c
    .line 6247
    :cond_6
    new-instance v1, Landroid/content/Intent;

    #@12e
    const-string/jumbo v5, "com.android.server.WifiManager.action.DELAYED_DRIVER_STOP"

    #@131
    invoke-direct {v1, v5, v11}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    #@134
    .line 6248
    .local v1, "driverStopIntent":Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->getClass()Ljava/lang/Class;

    #@137
    move-result-object v5

    #@138
    invoke-virtual {v5}, Ljava/lang/Class;->getPackage()Ljava/lang/Package;

    #@13b
    move-result-object v5

    #@13c
    invoke-virtual {v5}, Ljava/lang/Package;->getName()Ljava/lang/String;

    #@13f
    move-result-object v5

    #@140
    invoke-virtual {v1, v5}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    #@143
    .line 6249
    const-string/jumbo v5, "DelayedStopCounter"

    #@146
    iget-object v8, p0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@148
    invoke-static {v8}, Lcom/android/server/wifi/WifiStateMachine;->-get23(Lcom/android/server/wifi/WifiStateMachine;)I

    #@14b
    move-result v8

    #@14c
    invoke-virtual {v1, v5, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    #@14f
    .line 6250
    iget-object v5, p0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@151
    iget-object v8, p0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@153
    invoke-static {v8}, Lcom/android/server/wifi/WifiStateMachine;->-get20(Lcom/android/server/wifi/WifiStateMachine;)Landroid/content/Context;

    #@156
    move-result-object v8

    #@157
    .line 6252
    const/high16 v9, 0x8000000

    #@159
    .line 6250
    invoke-static {v8, v7, v1, v9}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    #@15c
    move-result-object v8

    #@15d
    invoke-static {v5, v8}, Lcom/android/server/wifi/WifiStateMachine;->-set17(Lcom/android/server/wifi/WifiStateMachine;Landroid/app/PendingIntent;)Landroid/app/PendingIntent;

    #@160
    .line 6254
    iget-object v5, p0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@162
    invoke-static {v5}, Lcom/android/server/wifi/WifiStateMachine;->-get13(Lcom/android/server/wifi/WifiStateMachine;)Landroid/app/AlarmManager;

    #@165
    move-result-object v5

    #@166
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    #@169
    move-result-wide v8

    #@16a
    .line 6255
    iget-object v10, p0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@16c
    invoke-static {v10}, Lcom/android/server/wifi/WifiStateMachine;->-get32(Lcom/android/server/wifi/WifiStateMachine;)I

    #@16f
    move-result v10

    #@170
    int-to-long v10, v10

    #@171
    .line 6254
    add-long/2addr v8, v10

    #@172
    .line 6255
    iget-object v10, p0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@174
    invoke-static {v10}, Lcom/android/server/wifi/WifiStateMachine;->-get33(Lcom/android/server/wifi/WifiStateMachine;)Landroid/app/PendingIntent;

    #@177
    move-result-object v10

    #@178
    .line 6254
    invoke-virtual {v5, v7, v8, v9, v10}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    #@17b
    goto/16 :goto_0

    #@17d
    .line 6258
    .end local v1    # "driverStopIntent":Landroid/content/Intent;
    .end local v3    # "mode":I
    :sswitch_4
    iget-object v5, p0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@17f
    invoke-static {v5}, Lcom/android/server/wifi/WifiStateMachine;->-get42(Lcom/android/server/wifi/WifiStateMachine;)Z

    #@182
    move-result v5

    #@183
    if-eqz v5, :cond_0

    #@185
    .line 6259
    iget-object v5, p0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@187
    invoke-static {v5, v7}, Lcom/android/server/wifi/WifiStateMachine;->-set22(Lcom/android/server/wifi/WifiStateMachine;Z)Z

    #@18a
    .line 6260
    iget-object v5, p0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@18c
    invoke-static {v5}, Lcom/android/server/wifi/WifiStateMachine;->-get23(Lcom/android/server/wifi/WifiStateMachine;)I

    #@18f
    move-result v7

    #@190
    add-int/lit8 v7, v7, 0x1

    #@192
    invoke-static {v5, v7}, Lcom/android/server/wifi/WifiStateMachine;->-set10(Lcom/android/server/wifi/WifiStateMachine;I)I

    #@195
    .line 6261
    iget-object v5, p0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@197
    invoke-static {v5}, Lcom/android/server/wifi/WifiStateMachine;->-get13(Lcom/android/server/wifi/WifiStateMachine;)Landroid/app/AlarmManager;

    #@19a
    move-result-object v5

    #@19b
    iget-object v7, p0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@19d
    invoke-static {v7}, Lcom/android/server/wifi/WifiStateMachine;->-get33(Lcom/android/server/wifi/WifiStateMachine;)Landroid/app/PendingIntent;

    #@1a0
    move-result-object v7

    #@1a1
    invoke-virtual {v5, v7}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    #@1a4
    .line 6262
    invoke-static {}, Lcom/android/server/wifi/WifiStateMachine;->-get0()Z

    #@1a7
    move-result v5

    #@1a8
    if-eqz v5, :cond_7

    #@1aa
    iget-object v5, p0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@1ac
    const-string/jumbo v7, "Delayed stop ignored due to start"

    #@1af
    invoke-virtual {v5, v7}, Lcom/android/server/wifi/WifiStateMachine;->log(Ljava/lang/String;)V

    #@1b2
    .line 6263
    :cond_7
    iget-object v5, p0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@1b4
    invoke-static {v5}, Lcom/android/server/wifi/WifiStateMachine;->-get60(Lcom/android/server/wifi/WifiStateMachine;)I

    #@1b7
    move-result v5

    #@1b8
    if-ne v5, v6, :cond_0

    #@1ba
    .line 6264
    iget-object v5, p0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@1bc
    invoke-static {v5}, Lcom/android/server/wifi/WifiStateMachine;->-get99(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigStore;

    #@1bf
    move-result-object v5

    #@1c0
    invoke-virtual {v5}, Lcom/android/server/wifi/WifiConfigStore;->enableAllNetworks()V

    #@1c3
    goto/16 :goto_0

    #@1c5
    .line 6269
    :sswitch_5
    invoke-static {}, Lcom/android/server/wifi/WifiStateMachine;->-get0()Z

    #@1c8
    move-result v5

    #@1c9
    if-eqz v5, :cond_8

    #@1cb
    iget-object v5, p0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@1cd
    new-instance v7, Ljava/lang/StringBuilder;

    #@1cf
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    #@1d2
    const-string/jumbo v8, "delayed stop "

    #@1d5
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1d8
    move-result-object v7

    #@1d9
    iget v8, p1, Landroid/os/Message;->arg1:I

    #@1db
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@1de
    move-result-object v7

    #@1df
    const-string/jumbo v8, " "

    #@1e2
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1e5
    move-result-object v7

    #@1e6
    iget-object v8, p0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@1e8
    invoke-static {v8}, Lcom/android/server/wifi/WifiStateMachine;->-get23(Lcom/android/server/wifi/WifiStateMachine;)I

    #@1eb
    move-result v8

    #@1ec
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@1ef
    move-result-object v7

    #@1f0
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1f3
    move-result-object v7

    #@1f4
    invoke-virtual {v5, v7}, Lcom/android/server/wifi/WifiStateMachine;->log(Ljava/lang/String;)V

    #@1f7
    .line 6270
    :cond_8
    iget v5, p1, Landroid/os/Message;->arg1:I

    #@1f9
    iget-object v7, p0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@1fb
    invoke-static {v7}, Lcom/android/server/wifi/WifiStateMachine;->-get23(Lcom/android/server/wifi/WifiStateMachine;)I

    #@1fe
    move-result v7

    #@1ff
    if-ne v5, v7, :cond_0

    #@201
    .line 6271
    iget-object v5, p0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@203
    invoke-static {v5}, Lcom/android/server/wifi/WifiStateMachine;->-wrap15(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/internal/util/IState;

    #@206
    move-result-object v5

    #@207
    iget-object v7, p0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@209
    invoke-static {v7}, Lcom/android/server/wifi/WifiStateMachine;->-get26(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/internal/util/State;

    #@20c
    move-result-object v7

    #@20d
    if-eq v5, v7, :cond_9

    #@20f
    .line 6272
    iget-object v5, p0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@211
    invoke-static {v5}, Lcom/android/server/wifi/WifiStateMachine;->-get105(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiNative;

    #@214
    move-result-object v5

    #@215
    invoke-virtual {v5}, Lcom/android/server/wifi/WifiNative;->disconnect()Z

    #@218
    .line 6273
    iget-object v5, p0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@21a
    invoke-static {v5}, Lcom/android/server/wifi/WifiStateMachine;->-wrap28(Lcom/android/server/wifi/WifiStateMachine;)V

    #@21d
    .line 6275
    :cond_9
    iget-object v5, p0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@21f
    invoke-static {v5}, Lcom/android/server/wifi/WifiStateMachine;->-get95(Lcom/android/server/wifi/WifiStateMachine;)Landroid/os/PowerManager$WakeLock;

    #@222
    move-result-object v5

    #@223
    invoke-virtual {v5}, Landroid/os/PowerManager$WakeLock;->acquire()V

    #@226
    .line 6276
    iget-object v5, p0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@228
    invoke-static {v5}, Lcom/android/server/wifi/WifiStateMachine;->-get105(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiNative;

    #@22b
    move-result-object v5

    #@22c
    invoke-virtual {v5}, Lcom/android/server/wifi/WifiNative;->stopDriver()Z

    #@22f
    .line 6277
    iget-object v5, p0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@231
    invoke-static {v5}, Lcom/android/server/wifi/WifiStateMachine;->-get95(Lcom/android/server/wifi/WifiStateMachine;)Landroid/os/PowerManager$WakeLock;

    #@234
    move-result-object v5

    #@235
    invoke-virtual {v5}, Landroid/os/PowerManager$WakeLock;->release()V

    #@238
    .line 6278
    iget-object v5, p0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@23a
    invoke-static {v5}, Lcom/android/server/wifi/WifiStateMachine;->-get62(Lcom/android/server/wifi/WifiStateMachine;)Z

    #@23d
    move-result v5

    #@23e
    if-eqz v5, :cond_a

    #@240
    .line 6279
    iget-object v5, p0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@242
    iget-object v7, p0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@244
    invoke-static {v7}, Lcom/android/server/wifi/WifiStateMachine;->-get94(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/internal/util/State;

    #@247
    move-result-object v7

    #@248
    invoke-static {v5, v7}, Lcom/android/server/wifi/WifiStateMachine;->-wrap55(Lcom/android/server/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V

    #@24b
    goto/16 :goto_0

    #@24d
    .line 6281
    :cond_a
    iget-object v5, p0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@24f
    iget-object v7, p0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@251
    invoke-static {v7}, Lcom/android/server/wifi/WifiStateMachine;->-get35(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/internal/util/State;

    #@254
    move-result-object v7

    #@255
    invoke-static {v5, v7}, Lcom/android/server/wifi/WifiStateMachine;->-wrap55(Lcom/android/server/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V

    #@258
    goto/16 :goto_0

    #@25a
    .line 6285
    :sswitch_6
    iget v5, p1, Landroid/os/Message;->arg1:I

    #@25c
    if-ne v5, v6, :cond_b

    #@25e
    .line 6286
    iget-object v5, p0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@260
    invoke-static {v5}, Lcom/android/server/wifi/WifiStateMachine;->-get105(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiNative;

    #@263
    move-result-object v5

    #@264
    invoke-virtual {v5}, Lcom/android/server/wifi/WifiNative;->startFilteringMulticastV6Packets()Z

    #@267
    goto/16 :goto_0

    #@269
    .line 6287
    :cond_b
    iget v5, p1, Landroid/os/Message;->arg1:I

    #@26b
    if-nez v5, :cond_c

    #@26d
    .line 6288
    iget-object v5, p0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@26f
    invoke-static {v5}, Lcom/android/server/wifi/WifiStateMachine;->-get105(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiNative;

    #@272
    move-result-object v5

    #@273
    invoke-virtual {v5}, Lcom/android/server/wifi/WifiNative;->startFilteringMulticastV4Packets()Z

    #@276
    goto/16 :goto_0

    #@278
    .line 6290
    :cond_c
    iget-object v5, p0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@27a
    const-string/jumbo v7, "Illegal arugments to CMD_START_PACKET_FILTERING"

    #@27d
    invoke-virtual {v5, v7}, Lcom/android/server/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V

    #@280
    goto/16 :goto_0

    #@282
    .line 6294
    :sswitch_7
    iget v5, p1, Landroid/os/Message;->arg1:I

    #@284
    if-ne v5, v6, :cond_d

    #@286
    .line 6295
    iget-object v5, p0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@288
    invoke-static {v5}, Lcom/android/server/wifi/WifiStateMachine;->-get105(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiNative;

    #@28b
    move-result-object v5

    #@28c
    invoke-virtual {v5}, Lcom/android/server/wifi/WifiNative;->stopFilteringMulticastV6Packets()Z

    #@28f
    goto/16 :goto_0

    #@291
    .line 6296
    :cond_d
    iget v5, p1, Landroid/os/Message;->arg1:I

    #@293
    if-nez v5, :cond_e

    #@295
    .line 6297
    iget-object v5, p0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@297
    invoke-static {v5}, Lcom/android/server/wifi/WifiStateMachine;->-get105(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiNative;

    #@29a
    move-result-object v5

    #@29b
    invoke-virtual {v5}, Lcom/android/server/wifi/WifiNative;->stopFilteringMulticastV4Packets()Z

    #@29e
    goto/16 :goto_0

    #@2a0
    .line 6299
    :cond_e
    iget-object v5, p0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@2a2
    const-string/jumbo v7, "Illegal arugments to CMD_STOP_PACKET_FILTERING"

    #@2a5
    invoke-virtual {v5, v7}, Lcom/android/server/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V

    #@2a8
    goto/16 :goto_0

    #@2aa
    .line 6303
    :sswitch_8
    iget v5, p1, Landroid/os/Message;->arg1:I

    #@2ac
    if-ne v5, v6, :cond_f

    #@2ae
    .line 6304
    iget-object v5, p0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@2b0
    invoke-static {v5, v10, v6}, Lcom/android/server/wifi/WifiStateMachine;->-wrap48(Lcom/android/server/wifi/WifiStateMachine;IZ)V

    #@2b3
    .line 6305
    iget-object v5, p0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@2b5
    invoke-static {v5}, Lcom/android/server/wifi/WifiStateMachine;->-get83(Lcom/android/server/wifi/WifiStateMachine;)Landroid/os/PowerManager$WakeLock;

    #@2b8
    move-result-object v5

    #@2b9
    invoke-virtual {v5}, Landroid/os/PowerManager$WakeLock;->release()V

    #@2bc
    goto/16 :goto_0

    #@2be
    .line 6307
    :cond_f
    iget-object v5, p0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@2c0
    invoke-static {v5, v10, v7}, Lcom/android/server/wifi/WifiStateMachine;->-wrap48(Lcom/android/server/wifi/WifiStateMachine;IZ)V

    #@2c3
    goto/16 :goto_0

    #@2c5
    .line 6311
    :sswitch_9
    iget v5, p1, Landroid/os/Message;->arg1:I

    #@2c7
    if-ne v5, v6, :cond_10

    #@2c9
    .line 6312
    iget-object v5, p0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@2cb
    invoke-static {v5, v9, v7}, Lcom/android/server/wifi/WifiStateMachine;->-wrap48(Lcom/android/server/wifi/WifiStateMachine;IZ)V

    #@2ce
    goto/16 :goto_0

    #@2d0
    .line 6314
    :cond_10
    iget-object v5, p0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@2d2
    invoke-static {v5, v9, v6}, Lcom/android/server/wifi/WifiStateMachine;->-wrap48(Lcom/android/server/wifi/WifiStateMachine;IZ)V

    #@2d5
    goto/16 :goto_0

    #@2d7
    .line 6318
    :sswitch_a
    iget-object v5, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@2d9
    if-eqz v5, :cond_0

    #@2db
    .line 6319
    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@2dd
    check-cast v4, Ljava/lang/String;

    #@2df
    .line 6320
    .local v4, "remoteAddress":Ljava/lang/String;
    iget v5, p1, Landroid/os/Message;->arg1:I

    #@2e1
    if-ne v5, v6, :cond_11

    #@2e3
    const/4 v2, 0x1

    #@2e4
    .line 6321
    .local v2, "enable":Z
    :goto_2
    iget-object v5, p0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@2e6
    invoke-static {v5}, Lcom/android/server/wifi/WifiStateMachine;->-get105(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiNative;

    #@2e9
    move-result-object v5

    #@2ea
    invoke-virtual {v5, v4, v2}, Lcom/android/server/wifi/WifiNative;->startTdls(Ljava/lang/String;Z)V

    #@2ed
    goto/16 :goto_0

    #@2ef
    .line 6320
    .end local v2    # "enable":Z
    :cond_11
    const/4 v2, 0x0

    #@2f0
    .restart local v2    # "enable":Z
    goto :goto_2

    #@2f1
    .line 6325
    .end local v2    # "enable":Z
    .end local v4    # "remoteAddress":Ljava/lang/String;
    :sswitch_b
    iget-object v5, p0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@2f3
    invoke-static {v5}, Lcom/android/server/wifi/WifiStateMachine;->-get99(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigStore;

    #@2f6
    move-result-object v8

    #@2f7
    iget-object v5, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@2f9
    check-cast v5, Ljava/lang/Long;

    #@2fb
    iget v9, p1, Landroid/os/Message;->arg1:I

    #@2fd
    if-eqz v9, :cond_12

    #@2ff
    move v7, v6

    #@300
    :cond_12
    invoke-virtual {v8, v5, v7}, Lcom/android/server/wifi/WifiConfigStore;->notifyANQPDone(Ljava/lang/Long;Z)V

    #@303
    goto/16 :goto_0

    #@305
    .line 6203
    nop

    #@306
    :sswitch_data_0
    .sparse-switch
        0x2000d -> :sswitch_4
        0x2000e -> :sswitch_3
        0x20012 -> :sswitch_5
        0x2001f -> :sswitch_2
        0x20047 -> :sswitch_0
        0x2004d -> :sswitch_9
        0x20054 -> :sswitch_6
        0x20055 -> :sswitch_7
        0x20056 -> :sswitch_8
        0x2005a -> :sswitch_1
        0x2005c -> :sswitch_a
        0x2402c -> :sswitch_b
    .end sparse-switch
.end method
