.class Lcom/android/server/wifi/WifiStateMachine$SupplicantStartedState;
.super Lcom/android/internal/util/State;
.source "WifiStateMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifi/WifiStateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SupplicantStartedState"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/wifi/WifiStateMachine;


# direct methods
.method constructor <init>(Lcom/android/server/wifi/WifiStateMachine;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/wifi/WifiStateMachine;

    #@0
    .prologue
    .line 4483
    iput-object p1, p0, Lcom/android/server/wifi/WifiStateMachine$SupplicantStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

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
    const/4 v5, 0x1

    #@1
    .line 4487
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine$SupplicantStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@3
    invoke-static {v1}, Lcom/android/server/wifi/WifiStateMachine;->-get37(Lcom/android/server/wifi/WifiStateMachine;)Landroid/net/NetworkInfo;

    #@6
    move-result-object v1

    #@7
    invoke-virtual {v1, v5}, Landroid/net/NetworkInfo;->setIsAvailable(Z)V

    #@a
    .line 4488
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine$SupplicantStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@c
    invoke-static {v1}, Lcom/android/server/wifi/WifiStateMachine;->-get35(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiStateMachine$WifiNetworkAgent;

    #@f
    move-result-object v1

    #@10
    if-eqz v1, :cond_0

    #@12
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine$SupplicantStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@14
    invoke-static {v1}, Lcom/android/server/wifi/WifiStateMachine;->-get35(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiStateMachine$WifiNetworkAgent;

    #@17
    move-result-object v1

    #@18
    iget-object v2, p0, Lcom/android/server/wifi/WifiStateMachine$SupplicantStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@1a
    invoke-static {v2}, Lcom/android/server/wifi/WifiStateMachine;->-get37(Lcom/android/server/wifi/WifiStateMachine;)Landroid/net/NetworkInfo;

    #@1d
    move-result-object v2

    #@1e
    invoke-virtual {v1, v2}, Lcom/android/server/wifi/WifiStateMachine$WifiNetworkAgent;->sendNetworkInfo(Landroid/net/NetworkInfo;)V

    #@21
    .line 4490
    :cond_0
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine$SupplicantStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@23
    invoke-static {v1}, Lcom/android/server/wifi/WifiStateMachine;->-get14(Lcom/android/server/wifi/WifiStateMachine;)Landroid/content/Context;

    #@26
    move-result-object v1

    #@27
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@2a
    move-result-object v1

    #@2b
    .line 4491
    const v2, 0x10e002f

    #@2e
    .line 4490
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    #@31
    move-result v0

    #@32
    .line 4493
    .local v0, "defaultInterval":I
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine$SupplicantStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@34
    iget-object v2, p0, Lcom/android/server/wifi/WifiStateMachine$SupplicantStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@36
    invoke-static {v2}, Lcom/android/server/wifi/WifiStateMachine;->-get24(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/FrameworkFacade;

    #@39
    move-result-object v2

    #@3a
    iget-object v3, p0, Lcom/android/server/wifi/WifiStateMachine$SupplicantStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@3c
    invoke-static {v3}, Lcom/android/server/wifi/WifiStateMachine;->-get14(Lcom/android/server/wifi/WifiStateMachine;)Landroid/content/Context;

    #@3f
    move-result-object v3

    #@40
    .line 4494
    const-string/jumbo v4, "wifi_supplicant_scan_interval_ms"

    #@43
    .line 4495
    int-to-long v6, v0

    #@44
    .line 4493
    invoke-virtual {v2, v3, v4, v6, v7}, Lcom/android/server/wifi/FrameworkFacade;->getLongSetting(Landroid/content/Context;Ljava/lang/String;J)J

    #@47
    move-result-wide v2

    #@48
    invoke-static {v1, v2, v3}, Lcom/android/server/wifi/WifiStateMachine;->-set28(Lcom/android/server/wifi/WifiStateMachine;J)J

    #@4b
    .line 4497
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine$SupplicantStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@4d
    invoke-static {v1}, Lcom/android/server/wifi/WifiStateMachine;->-get84(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiNative;

    #@50
    move-result-object v1

    #@51
    iget-object v2, p0, Lcom/android/server/wifi/WifiStateMachine$SupplicantStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@53
    invoke-static {v2}, Lcom/android/server/wifi/WifiStateMachine;->-get57(Lcom/android/server/wifi/WifiStateMachine;)J

    #@56
    move-result-wide v2

    #@57
    long-to-int v2, v2

    #@58
    div-int/lit16 v2, v2, 0x3e8

    #@5a
    invoke-virtual {v1, v2}, Lcom/android/server/wifi/WifiNative;->setScanInterval(I)V

    #@5d
    .line 4498
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine$SupplicantStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@5f
    invoke-static {v1}, Lcom/android/server/wifi/WifiStateMachine;->-get84(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiNative;

    #@62
    move-result-object v1

    #@63
    invoke-virtual {v1, v5}, Lcom/android/server/wifi/WifiNative;->setExternalSim(Z)Z

    #@66
    .line 4501
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine$SupplicantStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@68
    invoke-static {v1}, Lcom/android/server/wifi/WifiStateMachine;->-get84(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiNative;

    #@6b
    move-result-object v1

    #@6c
    invoke-virtual {v1, v5}, Lcom/android/server/wifi/WifiNative;->setDfsFlag(Z)Z

    #@6f
    .line 4503
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine$SupplicantStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@71
    invoke-static {v1}, Lcom/android/server/wifi/WifiStateMachine;->-wrap5(Lcom/android/server/wifi/WifiStateMachine;)Z

    #@74
    .line 4504
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine$SupplicantStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@76
    invoke-static {v1}, Lcom/android/server/wifi/WifiStateMachine;->-get84(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiNative;

    #@79
    move-result-object v1

    #@7a
    const/4 v2, 0x0

    #@7b
    invoke-virtual {v1, v2}, Lcom/android/server/wifi/WifiNative;->enableAutoConnect(Z)V

    #@7e
    .line 4505
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine$SupplicantStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@80
    invoke-static {v1}, Lcom/android/server/wifi/WifiStateMachine;->-get15(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiCountryCode;

    #@83
    move-result-object v1

    #@84
    invoke-virtual {v1, v5}, Lcom/android/server/wifi/WifiCountryCode;->setReadyForChange(Z)V

    #@87
    .line 4485
    return-void
.end method

.method public exit()V
    .locals 3

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 4588
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$SupplicantStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@3
    invoke-static {v0}, Lcom/android/server/wifi/WifiStateMachine;->-get37(Lcom/android/server/wifi/WifiStateMachine;)Landroid/net/NetworkInfo;

    #@6
    move-result-object v0

    #@7
    invoke-virtual {v0, v2}, Landroid/net/NetworkInfo;->setIsAvailable(Z)V

    #@a
    .line 4589
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$SupplicantStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@c
    invoke-static {v0}, Lcom/android/server/wifi/WifiStateMachine;->-get35(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiStateMachine$WifiNetworkAgent;

    #@f
    move-result-object v0

    #@10
    if-eqz v0, :cond_0

    #@12
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$SupplicantStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@14
    invoke-static {v0}, Lcom/android/server/wifi/WifiStateMachine;->-get35(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiStateMachine$WifiNetworkAgent;

    #@17
    move-result-object v0

    #@18
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine$SupplicantStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@1a
    invoke-static {v1}, Lcom/android/server/wifi/WifiStateMachine;->-get37(Lcom/android/server/wifi/WifiStateMachine;)Landroid/net/NetworkInfo;

    #@1d
    move-result-object v1

    #@1e
    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiStateMachine$WifiNetworkAgent;->sendNetworkInfo(Landroid/net/NetworkInfo;)V

    #@21
    .line 4590
    :cond_0
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$SupplicantStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@23
    invoke-static {v0}, Lcom/android/server/wifi/WifiStateMachine;->-get15(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiCountryCode;

    #@26
    move-result-object v0

    #@27
    invoke-virtual {v0, v2}, Lcom/android/server/wifi/WifiCountryCode;->setReadyForChange(Z)V

    #@2a
    .line 4587
    return-void
.end method

.method public processMessage(Landroid/os/Message;)Z
    .locals 9
    .param p1, "message"    # Landroid/os/Message;

    #@0
    .prologue
    const/4 v4, -0x1

    #@1
    const/4 v5, 0x1

    #@2
    const/4 v7, 0x0

    #@3
    .line 4510
    iget-object v6, p0, Lcom/android/server/wifi/WifiStateMachine$SupplicantStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@5
    invoke-static {v6, p1, p0}, Lcom/android/server/wifi/WifiStateMachine;->-wrap28(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;Lcom/android/internal/util/State;)V

    #@8
    .line 4512
    iget v6, p1, Landroid/os/Message;->what:I

    #@a
    sparse-switch v6, :sswitch_data_0

    #@d
    .line 4581
    return v7

    #@e
    .line 4514
    :sswitch_0
    iget-object v4, p0, Lcom/android/server/wifi/WifiStateMachine$SupplicantStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@10
    invoke-static {v4}, Lcom/android/server/wifi/WifiStateMachine;->-get44(Lcom/android/server/wifi/WifiStateMachine;)Z

    #@13
    move-result v4

    #@14
    if-eqz v4, :cond_1

    #@16
    .line 4515
    iget-object v4, p0, Lcom/android/server/wifi/WifiStateMachine$SupplicantStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@18
    iget-object v6, p0, Lcom/android/server/wifi/WifiStateMachine$SupplicantStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@1a
    invoke-static {v6}, Lcom/android/server/wifi/WifiStateMachine;->-get71(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/internal/util/State;

    #@1d
    move-result-object v6

    #@1e
    invoke-static {v4, v6}, Lcom/android/server/wifi/WifiStateMachine;->-wrap45(Lcom/android/server/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V

    #@21
    .line 4583
    :cond_0
    :goto_0
    return v5

    #@22
    .line 4517
    :cond_1
    iget-object v4, p0, Lcom/android/server/wifi/WifiStateMachine$SupplicantStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@24
    iget-object v6, p0, Lcom/android/server/wifi/WifiStateMachine$SupplicantStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@26
    invoke-static {v6}, Lcom/android/server/wifi/WifiStateMachine;->-get61(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/internal/util/State;

    #@29
    move-result-object v6

    #@2a
    invoke-static {v4, v6}, Lcom/android/server/wifi/WifiStateMachine;->-wrap45(Lcom/android/server/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V

    #@2d
    goto :goto_0

    #@2e
    .line 4521
    :sswitch_1
    iget-object v4, p0, Lcom/android/server/wifi/WifiStateMachine$SupplicantStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@30
    const-string/jumbo v6, "Connection lost, restart supplicant"

    #@33
    invoke-virtual {v4, v6}, Lcom/android/server/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V

    #@36
    .line 4522
    iget-object v4, p0, Lcom/android/server/wifi/WifiStateMachine$SupplicantStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@38
    invoke-static {v4, v5}, Lcom/android/server/wifi/WifiStateMachine;->-wrap27(Lcom/android/server/wifi/WifiStateMachine;Z)V

    #@3b
    .line 4523
    iget-object v4, p0, Lcom/android/server/wifi/WifiStateMachine$SupplicantStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@3d
    invoke-static {v4}, Lcom/android/server/wifi/WifiStateMachine;->-wrap23(Lcom/android/server/wifi/WifiStateMachine;)V

    #@40
    .line 4524
    iget-object v4, p0, Lcom/android/server/wifi/WifiStateMachine$SupplicantStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@42
    invoke-static {v4}, Lcom/android/server/wifi/WifiStateMachine;->-get59(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/SupplicantStateTracker;

    #@45
    move-result-object v4

    #@46
    const v6, 0x2006f

    #@49
    invoke-virtual {v4, v6}, Lcom/android/server/wifi/SupplicantStateTracker;->sendMessage(I)V

    #@4c
    .line 4525
    iget-object v4, p0, Lcom/android/server/wifi/WifiStateMachine$SupplicantStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@4e
    invoke-static {v4}, Lcom/android/server/wifi/WifiStateMachine;->-get44(Lcom/android/server/wifi/WifiStateMachine;)Z

    #@51
    move-result v4

    #@52
    if-eqz v4, :cond_2

    #@54
    .line 4526
    iget-object v4, p0, Lcom/android/server/wifi/WifiStateMachine$SupplicantStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@56
    iget-object v6, p0, Lcom/android/server/wifi/WifiStateMachine$SupplicantStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@58
    invoke-static {v6}, Lcom/android/server/wifi/WifiStateMachine;->-get71(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/internal/util/State;

    #@5b
    move-result-object v6

    #@5c
    invoke-static {v4, v6}, Lcom/android/server/wifi/WifiStateMachine;->-wrap45(Lcom/android/server/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V

    #@5f
    .line 4530
    :goto_1
    iget-object v4, p0, Lcom/android/server/wifi/WifiStateMachine$SupplicantStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@61
    const-wide/16 v6, 0x1388

    #@63
    const v8, 0x2000b

    #@66
    invoke-virtual {v4, v8, v6, v7}, Lcom/android/server/wifi/WifiStateMachine;->sendMessageDelayed(IJ)V

    #@69
    goto :goto_0

    #@6a
    .line 4528
    :cond_2
    iget-object v4, p0, Lcom/android/server/wifi/WifiStateMachine$SupplicantStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@6c
    iget-object v6, p0, Lcom/android/server/wifi/WifiStateMachine$SupplicantStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@6e
    invoke-static {v6}, Lcom/android/server/wifi/WifiStateMachine;->-get26(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/internal/util/State;

    #@71
    move-result-object v6

    #@72
    invoke-static {v4, v6}, Lcom/android/server/wifi/WifiStateMachine;->-wrap45(Lcom/android/server/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V

    #@75
    goto :goto_1

    #@76
    .line 4534
    :sswitch_2
    iget-object v4, p0, Lcom/android/server/wifi/WifiStateMachine$SupplicantStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@78
    invoke-virtual {v4}, Lcom/android/server/wifi/WifiStateMachine;->maybeRegisterNetworkFactory()V

    #@7b
    .line 4535
    iget-object v4, p0, Lcom/android/server/wifi/WifiStateMachine$SupplicantStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@7d
    invoke-static {v4}, Lcom/android/server/wifi/WifiStateMachine;->-wrap39(Lcom/android/server/wifi/WifiStateMachine;)V

    #@80
    .line 4536
    iget-object v4, p0, Lcom/android/server/wifi/WifiStateMachine$SupplicantStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@82
    invoke-static {v4}, Lcom/android/server/wifi/WifiStateMachine;->-get29(Lcom/android/server/wifi/WifiStateMachine;)Z

    #@85
    move-result v4

    #@86
    if-nez v4, :cond_3

    #@88
    iget-object v4, p0, Lcom/android/server/wifi/WifiStateMachine$SupplicantStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@8a
    invoke-static {v4}, Lcom/android/server/wifi/WifiStateMachine;->-get54(Lcom/android/server/wifi/WifiStateMachine;)Z

    #@8d
    move-result v4

    #@8e
    if-eqz v4, :cond_4

    #@90
    .line 4538
    :cond_3
    iget v4, p1, Landroid/os/Message;->what:I

    #@92
    const v6, 0x24005

    #@95
    if-ne v4, v6, :cond_5

    #@97
    const/4 v2, 0x1

    #@98
    .line 4539
    .local v2, "scanSucceeded":Z
    :goto_2
    iget-object v4, p0, Lcom/android/server/wifi/WifiStateMachine$SupplicantStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@9a
    invoke-virtual {v4, v2}, Lcom/android/server/wifi/WifiStateMachine;->sendScanResultsAvailableBroadcast(Z)V

    #@9d
    .line 4541
    .end local v2    # "scanSucceeded":Z
    :cond_4
    iget-object v4, p0, Lcom/android/server/wifi/WifiStateMachine$SupplicantStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@9f
    invoke-static {v4, v7}, Lcom/android/server/wifi/WifiStateMachine;->-set26(Lcom/android/server/wifi/WifiStateMachine;Z)Z

    #@a2
    .line 4542
    iget-object v4, p0, Lcom/android/server/wifi/WifiStateMachine$SupplicantStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@a4
    invoke-static {v4, v7}, Lcom/android/server/wifi/WifiStateMachine;->-set13(Lcom/android/server/wifi/WifiStateMachine;Z)Z

    #@a7
    .line 4543
    iget-object v4, p0, Lcom/android/server/wifi/WifiStateMachine$SupplicantStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@a9
    invoke-static {v4, v7}, Lcom/android/server/wifi/WifiStateMachine;->-set11(Lcom/android/server/wifi/WifiStateMachine;Z)Z

    #@ac
    .line 4544
    iget-object v4, p0, Lcom/android/server/wifi/WifiStateMachine$SupplicantStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@ae
    invoke-static {v4}, Lcom/android/server/wifi/WifiStateMachine;->-get10(Lcom/android/server/wifi/WifiStateMachine;)Ljava/util/Queue;

    #@b1
    move-result-object v4

    #@b2
    invoke-interface {v4}, Ljava/util/Queue;->size()I

    #@b5
    move-result v4

    #@b6
    if-lez v4, :cond_0

    #@b8
    .line 4545
    iget-object v6, p0, Lcom/android/server/wifi/WifiStateMachine$SupplicantStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@ba
    iget-object v4, p0, Lcom/android/server/wifi/WifiStateMachine$SupplicantStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@bc
    invoke-static {v4}, Lcom/android/server/wifi/WifiStateMachine;->-get10(Lcom/android/server/wifi/WifiStateMachine;)Ljava/util/Queue;

    #@bf
    move-result-object v4

    #@c0
    invoke-interface {v4}, Ljava/util/Queue;->remove()Ljava/lang/Object;

    #@c3
    move-result-object v4

    #@c4
    check-cast v4, Landroid/os/Message;

    #@c6
    invoke-virtual {v6, v4}, Lcom/android/server/wifi/WifiStateMachine;->sendMessage(Landroid/os/Message;)V

    #@c9
    goto/16 :goto_0

    #@cb
    .line 4538
    :cond_5
    const/4 v2, 0x0

    #@cc
    .restart local v2    # "scanSucceeded":Z
    goto :goto_2

    #@cd
    .line 4548
    .end local v2    # "scanSucceeded":Z
    :sswitch_3
    iget-object v6, p0, Lcom/android/server/wifi/WifiStateMachine$SupplicantStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@cf
    invoke-static {v6}, Lcom/android/server/wifi/WifiStateMachine;->-get84(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiNative;

    #@d2
    move-result-object v6

    #@d3
    invoke-virtual {v6}, Lcom/android/server/wifi/WifiNative;->ping()Z

    #@d6
    move-result v1

    #@d7
    .line 4549
    .local v1, "ok":Z
    iget-object v6, p0, Lcom/android/server/wifi/WifiStateMachine$SupplicantStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@d9
    iget v7, p1, Landroid/os/Message;->what:I

    #@db
    if-eqz v1, :cond_6

    #@dd
    move v4, v5

    #@de
    :cond_6
    invoke-static {v6, p1, v7, v4}, Lcom/android/server/wifi/WifiStateMachine;->-wrap31(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;II)V

    #@e1
    goto/16 :goto_0

    #@e3
    .line 4552
    .end local v1    # "ok":Z
    :sswitch_4
    iget-object v4, p0, Lcom/android/server/wifi/WifiStateMachine$SupplicantStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@e5
    invoke-static {v4}, Lcom/android/server/wifi/WifiStateMachine;->-get84(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiNative;

    #@e8
    move-result-object v4

    #@e9
    invoke-virtual {v4}, Lcom/android/server/wifi/WifiNative;->getFreqCapability()Ljava/lang/String;

    #@ec
    move-result-object v0

    #@ed
    .line 4553
    .local v0, "freqs":Ljava/lang/String;
    iget-object v4, p0, Lcom/android/server/wifi/WifiStateMachine$SupplicantStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@ef
    iget v6, p1, Landroid/os/Message;->what:I

    #@f1
    invoke-static {v4, p1, v6, v0}, Lcom/android/server/wifi/WifiStateMachine;->-wrap32(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;ILjava/lang/Object;)V

    #@f4
    goto/16 :goto_0

    #@f6
    .line 4557
    .end local v0    # "freqs":Ljava/lang/String;
    :sswitch_5
    iget-object v4, p0, Lcom/android/server/wifi/WifiStateMachine$SupplicantStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@f8
    const-string/jumbo v6, "Failed to start soft AP with a running supplicant"

    #@fb
    invoke-virtual {v4, v6}, Lcom/android/server/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V

    #@fe
    .line 4558
    iget-object v4, p0, Lcom/android/server/wifi/WifiStateMachine$SupplicantStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@100
    const/16 v6, 0xe

    #@102
    invoke-static {v4, v6, v7}, Lcom/android/server/wifi/WifiStateMachine;->-wrap42(Lcom/android/server/wifi/WifiStateMachine;II)V

    #@105
    goto/16 :goto_0

    #@107
    .line 4561
    :sswitch_6
    iget-object v6, p0, Lcom/android/server/wifi/WifiStateMachine$SupplicantStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@109
    iget v7, p1, Landroid/os/Message;->arg1:I

    #@10b
    invoke-static {v6, v7}, Lcom/android/server/wifi/WifiStateMachine;->-set20(Lcom/android/server/wifi/WifiStateMachine;I)I

    #@10e
    .line 4562
    iget-object v6, p0, Lcom/android/server/wifi/WifiStateMachine$SupplicantStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@110
    invoke-static {v6}, Lcom/android/server/wifi/WifiStateMachine;->-get74(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigManager;

    #@113
    move-result-object v6

    #@114
    invoke-virtual {v6, v4}, Lcom/android/server/wifi/WifiConfigManager;->setAndEnableLastSelectedConfiguration(I)V

    #@117
    goto/16 :goto_0

    #@119
    .line 4568
    :sswitch_7
    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@11b
    if-eqz v4, :cond_0

    #@11d
    .line 4569
    iget-object v6, p0, Lcom/android/server/wifi/WifiStateMachine$SupplicantStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@11f
    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@121
    check-cast v4, Ljava/lang/String;

    #@123
    invoke-static {v6, v4}, Lcom/android/server/wifi/WifiStateMachine;->-set31(Lcom/android/server/wifi/WifiStateMachine;Ljava/lang/String;)Ljava/lang/String;

    #@126
    goto/16 :goto_0

    #@128
    .line 4573
    :sswitch_8
    iget-object v4, p0, Lcom/android/server/wifi/WifiStateMachine$SupplicantStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@12a
    invoke-static {}, Lcom/android/server/wifi/WifiStateMachine;->-get0()Z

    #@12d
    move-result v6

    #@12e
    invoke-virtual {v4, v6}, Lcom/android/server/wifi/WifiStateMachine;->getWifiLinkLayerStats(Z)Landroid/net/wifi/WifiLinkLayerStats;

    #@131
    move-result-object v3

    #@132
    .line 4574
    .local v3, "stats":Landroid/net/wifi/WifiLinkLayerStats;
    iget-object v4, p0, Lcom/android/server/wifi/WifiStateMachine$SupplicantStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@134
    iget v6, p1, Landroid/os/Message;->what:I

    #@136
    invoke-static {v4, p1, v6, v3}, Lcom/android/server/wifi/WifiStateMachine;->-wrap32(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;ILjava/lang/Object;)V

    #@139
    goto/16 :goto_0

    #@13b
    .line 4577
    .end local v3    # "stats":Landroid/net/wifi/WifiLinkLayerStats;
    :sswitch_9
    iget-object v4, p0, Lcom/android/server/wifi/WifiStateMachine$SupplicantStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@13d
    const-string/jumbo v6, "resetting EAP-SIM/AKA/AKA\' networks since SIM was changed"

    #@140
    invoke-virtual {v4, v6}, Lcom/android/server/wifi/WifiStateMachine;->log(Ljava/lang/String;)V

    #@143
    .line 4578
    iget-object v4, p0, Lcom/android/server/wifi/WifiStateMachine$SupplicantStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@145
    invoke-static {v4}, Lcom/android/server/wifi/WifiStateMachine;->-get74(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigManager;

    #@148
    move-result-object v4

    #@149
    invoke-virtual {v4}, Lcom/android/server/wifi/WifiConfigManager;->resetSimNetworks()V

    #@14c
    goto/16 :goto_0

    #@14e
    .line 4512
    :sswitch_data_0
    .sparse-switch
        0x2000c -> :sswitch_0
        0x20015 -> :sswitch_5
        0x20033 -> :sswitch_3
        0x2003c -> :sswitch_4
        0x2003f -> :sswitch_8
        0x20048 -> :sswitch_6
        0x20065 -> :sswitch_9
        0x2008d -> :sswitch_7
        0x24002 -> :sswitch_1
        0x24005 -> :sswitch_2
        0x24011 -> :sswitch_2
    .end sparse-switch
.end method
