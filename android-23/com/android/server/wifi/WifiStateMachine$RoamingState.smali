.class Lcom/android/server/wifi/WifiStateMachine$RoamingState;
.super Lcom/android/internal/util/State;
.source "WifiStateMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifi/WifiStateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "RoamingState"
.end annotation


# instance fields
.field mAssociated:Z

.field final synthetic this$0:Lcom/android/server/wifi/WifiStateMachine;


# direct methods
.method constructor <init>(Lcom/android/server/wifi/WifiStateMachine;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/wifi/WifiStateMachine;

    #@0
    .prologue
    .line 8509
    iput-object p1, p0, Lcom/android/server/wifi/WifiStateMachine$RoamingState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

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
    .line 8513
    invoke-static {}, Lcom/android/server/wifi/WifiStateMachine;->-get0()Z

    #@4
    move-result v0

    #@5
    if-eqz v0, :cond_0

    #@7
    .line 8514
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$RoamingState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@9
    new-instance v1, Ljava/lang/StringBuilder;

    #@b
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@e
    const-string/jumbo v2, "RoamingState Enter mScreenOn="

    #@11
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@14
    move-result-object v1

    #@15
    .line 8515
    iget-object v2, p0, Lcom/android/server/wifi/WifiStateMachine$RoamingState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@17
    invoke-static {v2}, Lcom/android/server/wifi/WifiStateMachine;->-get72(Lcom/android/server/wifi/WifiStateMachine;)Z

    #@1a
    move-result v2

    #@1b
    .line 8514
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@1e
    move-result-object v1

    #@1f
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@22
    move-result-object v1

    #@23
    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiStateMachine;->log(Ljava/lang/String;)V

    #@26
    .line 8517
    :cond_0
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$RoamingState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@28
    invoke-static {v0, v4}, Lcom/android/server/wifi/WifiStateMachine;->-wrap46(Lcom/android/server/wifi/WifiStateMachine;Z)V

    #@2b
    .line 8520
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$RoamingState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@2d
    iget v1, v0, Lcom/android/server/wifi/WifiStateMachine;->roamWatchdogCount:I

    #@2f
    add-int/lit8 v1, v1, 0x1

    #@31
    iput v1, v0, Lcom/android/server/wifi/WifiStateMachine;->roamWatchdogCount:I

    #@33
    .line 8521
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$RoamingState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@35
    new-instance v1, Ljava/lang/StringBuilder;

    #@37
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@3a
    const-string/jumbo v2, "Start Roam Watchdog "

    #@3d
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@40
    move-result-object v1

    #@41
    iget-object v2, p0, Lcom/android/server/wifi/WifiStateMachine$RoamingState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@43
    iget v2, v2, Lcom/android/server/wifi/WifiStateMachine;->roamWatchdogCount:I

    #@45
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@48
    move-result-object v1

    #@49
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@4c
    move-result-object v1

    #@4d
    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiStateMachine;->logd(Ljava/lang/String;)V

    #@50
    .line 8522
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$RoamingState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@52
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine$RoamingState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@54
    .line 8523
    iget-object v2, p0, Lcom/android/server/wifi/WifiStateMachine$RoamingState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@56
    iget v2, v2, Lcom/android/server/wifi/WifiStateMachine;->roamWatchdogCount:I

    #@58
    .line 8522
    const v3, 0x2005e

    #@5b
    invoke-virtual {v1, v3, v2, v4}, Lcom/android/server/wifi/WifiStateMachine;->obtainMessage(III)Landroid/os/Message;

    #@5e
    move-result-object v1

    #@5f
    .line 8523
    const-wide/16 v2, 0x3a98

    #@61
    .line 8522
    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/wifi/WifiStateMachine;->sendMessageDelayed(Landroid/os/Message;J)V

    #@64
    .line 8524
    iput-boolean v4, p0, Lcom/android/server/wifi/WifiStateMachine$RoamingState;->mAssociated:Z

    #@66
    .line 8512
    return-void
.end method

.method public exit()V
    .locals 2

    #@0
    .prologue
    .line 8647
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$RoamingState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@2
    const-string/jumbo v1, "WifiStateMachine: Leaving Roaming state"

    #@5
    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiStateMachine;->logd(Ljava/lang/String;)V

    #@8
    .line 8646
    return-void
.end method

.method public processMessage(Landroid/os/Message;)Z
    .locals 10
    .param p1, "message"    # Landroid/os/Message;

    #@0
    .prologue
    const/4 v9, 0x3

    #@1
    const/4 v8, 0x0

    #@2
    const/4 v7, 0x1

    #@3
    .line 8528
    iget-object v4, p0, Lcom/android/server/wifi/WifiStateMachine$RoamingState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@5
    invoke-virtual {p0}, Lcom/android/server/wifi/WifiStateMachine$RoamingState;->getClass()Ljava/lang/Class;

    #@8
    move-result-object v5

    #@9
    invoke-virtual {v5}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    #@c
    move-result-object v5

    #@d
    invoke-static {v4, p1, v5}, Lcom/android/server/wifi/WifiStateMachine;->-wrap33(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;Ljava/lang/String;)V

    #@10
    .line 8530
    iget v4, p1, Landroid/os/Message;->what:I

    #@12
    sparse-switch v4, :sswitch_data_0

    #@15
    .line 8640
    return v8

    #@16
    .line 8532
    :sswitch_0
    iget-object v4, p0, Lcom/android/server/wifi/WifiStateMachine$RoamingState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@18
    invoke-virtual {v4}, Lcom/android/server/wifi/WifiStateMachine;->getCurrentWifiConfiguration()Landroid/net/wifi/WifiConfiguration;

    #@1b
    move-result-object v1

    #@1c
    .line 8533
    .local v1, "config":Landroid/net/wifi/WifiConfiguration;
    if-eqz v1, :cond_0

    #@1e
    .line 8534
    iget-object v4, p0, Lcom/android/server/wifi/WifiStateMachine$RoamingState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@20
    invoke-static {v4}, Lcom/android/server/wifi/WifiStateMachine;->-get103(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiLogger;

    #@23
    move-result-object v4

    #@24
    invoke-virtual {v4, v9}, Lcom/android/server/wifi/WifiLogger;->captureBugReportData(I)V

    #@27
    .line 8535
    iget-object v4, p0, Lcom/android/server/wifi/WifiStateMachine$RoamingState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@29
    invoke-static {v4}, Lcom/android/server/wifi/WifiStateMachine;->-get99(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigStore;

    #@2c
    move-result-object v4

    #@2d
    .line 8536
    sget v5, Landroid/net/wifi/WifiConfiguration;->ROAMING_FAILURE_IP_CONFIG:I

    #@2f
    .line 8535
    invoke-virtual {v4, v1, v5}, Lcom/android/server/wifi/WifiConfigStore;->noteRoamingFailure(Landroid/net/wifi/WifiConfiguration;I)V

    #@32
    .line 8538
    :cond_0
    return v8

    #@33
    .line 8540
    .end local v1    # "config":Landroid/net/wifi/WifiConfiguration;
    :sswitch_1
    invoke-static {}, Lcom/android/server/wifi/WifiStateMachine;->-get0()Z

    #@36
    move-result v4

    #@37
    if-eqz v4, :cond_1

    #@39
    iget-object v4, p0, Lcom/android/server/wifi/WifiStateMachine$RoamingState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@3b
    const-string/jumbo v5, "Roaming and Watchdog reports poor link -> ignore"

    #@3e
    invoke-virtual {v4, v5}, Lcom/android/server/wifi/WifiStateMachine;->log(Ljava/lang/String;)V

    #@41
    .line 8541
    :cond_1
    return v7

    #@42
    .line 8543
    :sswitch_2
    invoke-static {}, Lcom/android/server/wifi/WifiStateMachine;->-get0()Z

    #@45
    move-result v4

    #@46
    if-eqz v4, :cond_2

    #@48
    iget-object v4, p0, Lcom/android/server/wifi/WifiStateMachine$RoamingState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@4a
    const-string/jumbo v5, "Roaming and CS doesnt want the network -> ignore"

    #@4d
    invoke-virtual {v4, v5}, Lcom/android/server/wifi/WifiStateMachine;->log(Ljava/lang/String;)V

    #@50
    .line 8544
    :cond_2
    return v7

    #@51
    .line 8546
    :sswitch_3
    iget v4, p1, Landroid/os/Message;->arg1:I

    #@53
    if-eq v4, v7, :cond_3

    #@55
    .line 8547
    iget-object v4, p0, Lcom/android/server/wifi/WifiStateMachine$RoamingState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@57
    invoke-static {v4, p1}, Lcom/android/server/wifi/WifiStateMachine;->-wrap21(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;)V

    #@5a
    .line 8642
    :cond_3
    :goto_0
    return v7

    #@5b
    .line 8558
    :sswitch_4
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@5d
    check-cast v2, Lcom/android/server/wifi/StateChangeResult;

    #@5f
    .line 8559
    .local v2, "stateChangeResult":Lcom/android/server/wifi/StateChangeResult;
    iget-object v4, v2, Lcom/android/server/wifi/StateChangeResult;->state:Landroid/net/wifi/SupplicantState;

    #@61
    sget-object v5, Landroid/net/wifi/SupplicantState;->DISCONNECTED:Landroid/net/wifi/SupplicantState;

    #@63
    if-eq v4, v5, :cond_4

    #@65
    .line 8560
    iget-object v4, v2, Lcom/android/server/wifi/StateChangeResult;->state:Landroid/net/wifi/SupplicantState;

    #@67
    sget-object v5, Landroid/net/wifi/SupplicantState;->INACTIVE:Landroid/net/wifi/SupplicantState;

    #@69
    if-ne v4, v5, :cond_7

    #@6b
    .line 8562
    :cond_4
    :goto_1
    invoke-static {}, Lcom/android/server/wifi/WifiStateMachine;->-get0()Z

    #@6e
    move-result v4

    #@6f
    if-eqz v4, :cond_5

    #@71
    .line 8563
    iget-object v4, p0, Lcom/android/server/wifi/WifiStateMachine$RoamingState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@73
    new-instance v5, Ljava/lang/StringBuilder;

    #@75
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@78
    const-string/jumbo v6, "STATE_CHANGE_EVENT in roaming state "

    #@7b
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@7e
    move-result-object v5

    #@7f
    .line 8564
    invoke-virtual {v2}, Lcom/android/server/wifi/StateChangeResult;->toString()Ljava/lang/String;

    #@82
    move-result-object v6

    #@83
    .line 8563
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@86
    move-result-object v5

    #@87
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@8a
    move-result-object v5

    #@8b
    invoke-virtual {v4, v5}, Lcom/android/server/wifi/WifiStateMachine;->log(Ljava/lang/String;)V

    #@8e
    .line 8566
    :cond_5
    iget-object v4, v2, Lcom/android/server/wifi/StateChangeResult;->BSSID:Ljava/lang/String;

    #@90
    if-eqz v4, :cond_6

    #@92
    .line 8567
    iget-object v4, v2, Lcom/android/server/wifi/StateChangeResult;->BSSID:Ljava/lang/String;

    #@94
    iget-object v5, p0, Lcom/android/server/wifi/WifiStateMachine$RoamingState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@96
    invoke-static {v5}, Lcom/android/server/wifi/WifiStateMachine;->-get84(Lcom/android/server/wifi/WifiStateMachine;)Ljava/lang/String;

    #@99
    move-result-object v5

    #@9a
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@9d
    move-result v4

    #@9e
    .line 8566
    if-eqz v4, :cond_6

    #@a0
    .line 8568
    iget-object v4, p0, Lcom/android/server/wifi/WifiStateMachine$RoamingState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@a2
    invoke-static {v4}, Lcom/android/server/wifi/WifiStateMachine;->-wrap28(Lcom/android/server/wifi/WifiStateMachine;)V

    #@a5
    .line 8569
    iget-object v4, p0, Lcom/android/server/wifi/WifiStateMachine$RoamingState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@a7
    iget-object v5, p0, Lcom/android/server/wifi/WifiStateMachine$RoamingState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@a9
    invoke-static {v5}, Lcom/android/server/wifi/WifiStateMachine;->-get26(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/internal/util/State;

    #@ac
    move-result-object v5

    #@ad
    invoke-static {v4, v5}, Lcom/android/server/wifi/WifiStateMachine;->-wrap55(Lcom/android/server/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V

    #@b0
    .line 8572
    :cond_6
    iget-object v4, v2, Lcom/android/server/wifi/StateChangeResult;->state:Landroid/net/wifi/SupplicantState;

    #@b2
    sget-object v5, Landroid/net/wifi/SupplicantState;->ASSOCIATED:Landroid/net/wifi/SupplicantState;

    #@b4
    if-ne v4, v5, :cond_3

    #@b6
    .line 8574
    iput-boolean v7, p0, Lcom/android/server/wifi/WifiStateMachine$RoamingState;->mAssociated:Z

    #@b8
    .line 8575
    iget-object v4, v2, Lcom/android/server/wifi/StateChangeResult;->BSSID:Ljava/lang/String;

    #@ba
    if-eqz v4, :cond_3

    #@bc
    .line 8576
    iget-object v4, p0, Lcom/android/server/wifi/WifiStateMachine$RoamingState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@be
    iget-object v5, v2, Lcom/android/server/wifi/StateChangeResult;->BSSID:Ljava/lang/String;

    #@c0
    invoke-static {v4, v5}, Lcom/android/server/wifi/WifiStateMachine;->-set42(Lcom/android/server/wifi/WifiStateMachine;Ljava/lang/String;)Ljava/lang/String;

    #@c3
    goto :goto_0

    #@c4
    .line 8561
    :cond_7
    iget-object v4, v2, Lcom/android/server/wifi/StateChangeResult;->state:Landroid/net/wifi/SupplicantState;

    #@c6
    sget-object v5, Landroid/net/wifi/SupplicantState;->INTERFACE_DISABLED:Landroid/net/wifi/SupplicantState;

    #@c8
    if-ne v4, v5, :cond_6

    #@ca
    goto :goto_1

    #@cb
    .line 8581
    .end local v2    # "stateChangeResult":Lcom/android/server/wifi/StateChangeResult;
    :sswitch_5
    iget-object v4, p0, Lcom/android/server/wifi/WifiStateMachine$RoamingState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@cd
    iget v4, v4, Lcom/android/server/wifi/WifiStateMachine;->roamWatchdogCount:I

    #@cf
    iget v5, p1, Landroid/os/Message;->arg1:I

    #@d1
    if-ne v4, v5, :cond_3

    #@d3
    .line 8582
    invoke-static {}, Lcom/android/server/wifi/WifiStateMachine;->-get0()Z

    #@d6
    move-result v4

    #@d7
    if-eqz v4, :cond_8

    #@d9
    iget-object v4, p0, Lcom/android/server/wifi/WifiStateMachine$RoamingState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@db
    const-string/jumbo v5, "roaming watchdog! -> disconnect"

    #@de
    invoke-virtual {v4, v5}, Lcom/android/server/wifi/WifiStateMachine;->log(Ljava/lang/String;)V

    #@e1
    .line 8583
    :cond_8
    iget-object v4, p0, Lcom/android/server/wifi/WifiStateMachine$RoamingState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@e3
    invoke-static {v4}, Lcom/android/server/wifi/WifiStateMachine;->-get66(Lcom/android/server/wifi/WifiStateMachine;)I

    #@e6
    move-result v5

    #@e7
    add-int/lit8 v5, v5, 0x1

    #@e9
    invoke-static {v4, v5}, Lcom/android/server/wifi/WifiStateMachine;->-set35(Lcom/android/server/wifi/WifiStateMachine;I)I

    #@ec
    .line 8584
    iget-object v4, p0, Lcom/android/server/wifi/WifiStateMachine$RoamingState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@ee
    invoke-static {v4}, Lcom/android/server/wifi/WifiStateMachine;->-wrap28(Lcom/android/server/wifi/WifiStateMachine;)V

    #@f1
    .line 8585
    iget-object v4, p0, Lcom/android/server/wifi/WifiStateMachine$RoamingState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@f3
    invoke-static {v4}, Lcom/android/server/wifi/WifiStateMachine;->-get105(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiNative;

    #@f6
    move-result-object v4

    #@f7
    invoke-virtual {v4}, Lcom/android/server/wifi/WifiNative;->disconnect()Z

    #@fa
    .line 8586
    iget-object v4, p0, Lcom/android/server/wifi/WifiStateMachine$RoamingState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@fc
    iget-object v5, p0, Lcom/android/server/wifi/WifiStateMachine$RoamingState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@fe
    invoke-static {v5}, Lcom/android/server/wifi/WifiStateMachine;->-get26(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/internal/util/State;

    #@101
    move-result-object v5

    #@102
    invoke-static {v4, v5}, Lcom/android/server/wifi/WifiStateMachine;->-wrap55(Lcom/android/server/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V

    #@105
    goto/16 :goto_0

    #@107
    .line 8590
    :sswitch_6
    iget-boolean v4, p0, Lcom/android/server/wifi/WifiStateMachine$RoamingState;->mAssociated:Z

    #@109
    if-eqz v4, :cond_a

    #@10b
    .line 8591
    invoke-static {}, Lcom/android/server/wifi/WifiStateMachine;->-get0()Z

    #@10e
    move-result v4

    #@10f
    if-eqz v4, :cond_9

    #@111
    iget-object v4, p0, Lcom/android/server/wifi/WifiStateMachine$RoamingState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@113
    const-string/jumbo v5, "roaming and Network connection established"

    #@116
    invoke-virtual {v4, v5}, Lcom/android/server/wifi/WifiStateMachine;->log(Ljava/lang/String;)V

    #@119
    .line 8592
    :cond_9
    iget-object v4, p0, Lcom/android/server/wifi/WifiStateMachine$RoamingState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@11b
    iget v5, p1, Landroid/os/Message;->arg1:I

    #@11d
    invoke-static {v4, v5}, Lcom/android/server/wifi/WifiStateMachine;->-set30(Lcom/android/server/wifi/WifiStateMachine;I)I

    #@120
    .line 8593
    iget-object v5, p0, Lcom/android/server/wifi/WifiStateMachine$RoamingState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@122
    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@124
    check-cast v4, Ljava/lang/String;

    #@126
    invoke-static {v5, v4}, Lcom/android/server/wifi/WifiStateMachine;->-set27(Lcom/android/server/wifi/WifiStateMachine;Ljava/lang/String;)Ljava/lang/String;

    #@129
    .line 8594
    iget-object v4, p0, Lcom/android/server/wifi/WifiStateMachine$RoamingState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@12b
    invoke-static {v4}, Lcom/android/server/wifi/WifiStateMachine;->-get101(Lcom/android/server/wifi/WifiStateMachine;)Landroid/net/wifi/WifiInfo;

    #@12e
    move-result-object v4

    #@12f
    iget-object v5, p0, Lcom/android/server/wifi/WifiStateMachine$RoamingState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@131
    invoke-static {v5}, Lcom/android/server/wifi/WifiStateMachine;->-get48(Lcom/android/server/wifi/WifiStateMachine;)Ljava/lang/String;

    #@134
    move-result-object v5

    #@135
    invoke-virtual {v4, v5}, Landroid/net/wifi/WifiInfo;->setBSSID(Ljava/lang/String;)V

    #@138
    .line 8595
    iget-object v4, p0, Lcom/android/server/wifi/WifiStateMachine$RoamingState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@13a
    invoke-static {v4}, Lcom/android/server/wifi/WifiStateMachine;->-get101(Lcom/android/server/wifi/WifiStateMachine;)Landroid/net/wifi/WifiInfo;

    #@13d
    move-result-object v4

    #@13e
    iget-object v5, p0, Lcom/android/server/wifi/WifiStateMachine$RoamingState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@140
    invoke-static {v5}, Lcom/android/server/wifi/WifiStateMachine;->-get51(Lcom/android/server/wifi/WifiStateMachine;)I

    #@143
    move-result v5

    #@144
    invoke-virtual {v4, v5}, Landroid/net/wifi/WifiInfo;->setNetworkId(I)V

    #@147
    .line 8596
    iget-object v4, p0, Lcom/android/server/wifi/WifiStateMachine$RoamingState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@149
    invoke-static {v4}, Lcom/android/server/wifi/WifiStateMachine;->-get99(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigStore;

    #@14c
    move-result-object v4

    #@14d
    iget-object v5, p0, Lcom/android/server/wifi/WifiStateMachine$RoamingState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@14f
    invoke-static {v5}, Lcom/android/server/wifi/WifiStateMachine;->-get51(Lcom/android/server/wifi/WifiStateMachine;)I

    #@152
    move-result v5

    #@153
    iget-object v6, p0, Lcom/android/server/wifi/WifiStateMachine$RoamingState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@155
    invoke-static {v6}, Lcom/android/server/wifi/WifiStateMachine;->-get48(Lcom/android/server/wifi/WifiStateMachine;)Ljava/lang/String;

    #@158
    move-result-object v6

    #@159
    invoke-virtual {v4, v5, v6, v7}, Lcom/android/server/wifi/WifiConfigStore;->handleBSSIDBlackList(ILjava/lang/String;Z)Z

    #@15c
    .line 8597
    iget-object v4, p0, Lcom/android/server/wifi/WifiStateMachine$RoamingState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@15e
    iget-object v5, p0, Lcom/android/server/wifi/WifiStateMachine$RoamingState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@160
    invoke-static {v5}, Lcom/android/server/wifi/WifiStateMachine;->-get48(Lcom/android/server/wifi/WifiStateMachine;)Ljava/lang/String;

    #@163
    move-result-object v5

    #@164
    invoke-static {v4, v5}, Lcom/android/server/wifi/WifiStateMachine;->-wrap41(Lcom/android/server/wifi/WifiStateMachine;Ljava/lang/String;)V

    #@167
    .line 8598
    iget-object v4, p0, Lcom/android/server/wifi/WifiStateMachine$RoamingState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@169
    iget-object v5, p0, Lcom/android/server/wifi/WifiStateMachine$RoamingState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@16b
    invoke-static {v5}, Lcom/android/server/wifi/WifiStateMachine;->-get59(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/internal/util/State;

    #@16e
    move-result-object v5

    #@16f
    invoke-static {v4, v5}, Lcom/android/server/wifi/WifiStateMachine;->-wrap55(Lcom/android/server/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V

    #@172
    goto/16 :goto_0

    #@174
    .line 8600
    :cond_a
    iget-object v4, p0, Lcom/android/server/wifi/WifiStateMachine$RoamingState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@176
    invoke-static {}, Lcom/android/server/wifi/WifiStateMachine;->-get2()I

    #@179
    move-result v5

    #@17a
    invoke-static {v4, v5}, Lcom/android/server/wifi/WifiStateMachine;->-set49(Lcom/android/server/wifi/WifiStateMachine;I)I

    #@17d
    goto/16 :goto_0

    #@17f
    .line 8605
    :sswitch_7
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@181
    check-cast v0, Ljava/lang/String;

    #@183
    .line 8607
    .local v0, "bssid":Ljava/lang/String;
    const-string/jumbo v3, ""

    #@186
    .line 8608
    .local v3, "target":Ljava/lang/String;
    iget-object v4, p0, Lcom/android/server/wifi/WifiStateMachine$RoamingState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@188
    invoke-static {v4}, Lcom/android/server/wifi/WifiStateMachine;->-get84(Lcom/android/server/wifi/WifiStateMachine;)Ljava/lang/String;

    #@18b
    move-result-object v4

    #@18c
    if-eqz v4, :cond_b

    #@18e
    iget-object v4, p0, Lcom/android/server/wifi/WifiStateMachine$RoamingState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@190
    invoke-static {v4}, Lcom/android/server/wifi/WifiStateMachine;->-get84(Lcom/android/server/wifi/WifiStateMachine;)Ljava/lang/String;

    #@193
    move-result-object v3

    #@194
    .line 8609
    :cond_b
    iget-object v4, p0, Lcom/android/server/wifi/WifiStateMachine$RoamingState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@196
    new-instance v5, Ljava/lang/StringBuilder;

    #@198
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@19b
    const-string/jumbo v6, "NETWORK_DISCONNECTION_EVENT in roaming state BSSID="

    #@19e
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1a1
    move-result-object v5

    #@1a2
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1a5
    move-result-object v5

    #@1a6
    .line 8611
    const-string/jumbo v6, " target="

    #@1a9
    .line 8609
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1ac
    move-result-object v5

    #@1ad
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1b0
    move-result-object v5

    #@1b1
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1b4
    move-result-object v5

    #@1b5
    invoke-virtual {v4, v5}, Lcom/android/server/wifi/WifiStateMachine;->log(Ljava/lang/String;)V

    #@1b8
    .line 8613
    if-eqz v0, :cond_3

    #@1ba
    iget-object v4, p0, Lcom/android/server/wifi/WifiStateMachine$RoamingState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@1bc
    invoke-static {v4}, Lcom/android/server/wifi/WifiStateMachine;->-get84(Lcom/android/server/wifi/WifiStateMachine;)Ljava/lang/String;

    #@1bf
    move-result-object v4

    #@1c0
    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@1c3
    move-result v4

    #@1c4
    if-eqz v4, :cond_3

    #@1c6
    .line 8614
    iget-object v4, p0, Lcom/android/server/wifi/WifiStateMachine$RoamingState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@1c8
    invoke-static {v4}, Lcom/android/server/wifi/WifiStateMachine;->-wrap28(Lcom/android/server/wifi/WifiStateMachine;)V

    #@1cb
    .line 8615
    iget-object v4, p0, Lcom/android/server/wifi/WifiStateMachine$RoamingState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@1cd
    iget-object v5, p0, Lcom/android/server/wifi/WifiStateMachine$RoamingState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@1cf
    invoke-static {v5}, Lcom/android/server/wifi/WifiStateMachine;->-get26(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/internal/util/State;

    #@1d2
    move-result-object v5

    #@1d3
    invoke-static {v4, v5}, Lcom/android/server/wifi/WifiStateMachine;->-wrap55(Lcom/android/server/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V

    #@1d6
    goto/16 :goto_0

    #@1d8
    .line 8620
    .end local v0    # "bssid":Ljava/lang/String;
    .end local v3    # "target":Ljava/lang/String;
    :sswitch_8
    iget-object v4, p0, Lcom/android/server/wifi/WifiStateMachine$RoamingState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@1da
    new-instance v5, Ljava/lang/StringBuilder;

    #@1dc
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@1df
    const-string/jumbo v6, "SSID_TEMP_DISABLED nid="

    #@1e2
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1e5
    move-result-object v5

    #@1e6
    iget-object v6, p0, Lcom/android/server/wifi/WifiStateMachine$RoamingState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@1e8
    invoke-static {v6}, Lcom/android/server/wifi/WifiStateMachine;->-get51(Lcom/android/server/wifi/WifiStateMachine;)I

    #@1eb
    move-result v6

    #@1ec
    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    #@1ef
    move-result-object v6

    #@1f0
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1f3
    move-result-object v5

    #@1f4
    .line 8621
    const-string/jumbo v6, " id="

    #@1f7
    .line 8620
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1fa
    move-result-object v5

    #@1fb
    .line 8621
    iget v6, p1, Landroid/os/Message;->arg1:I

    #@1fd
    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    #@200
    move-result-object v6

    #@201
    .line 8620
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@204
    move-result-object v5

    #@205
    .line 8622
    const-string/jumbo v6, " isRoaming="

    #@208
    .line 8620
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@20b
    move-result-object v5

    #@20c
    .line 8622
    iget-object v6, p0, Lcom/android/server/wifi/WifiStateMachine$RoamingState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@20e
    invoke-virtual {v6}, Lcom/android/server/wifi/WifiStateMachine;->isRoaming()Z

    #@211
    move-result v6

    #@212
    .line 8620
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@215
    move-result-object v5

    #@216
    .line 8623
    const-string/jumbo v6, " roam="

    #@219
    .line 8620
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@21c
    move-result-object v5

    #@21d
    .line 8623
    iget-object v6, p0, Lcom/android/server/wifi/WifiStateMachine$RoamingState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@21f
    invoke-static {v6}, Lcom/android/server/wifi/WifiStateMachine;->-get14(Lcom/android/server/wifi/WifiStateMachine;)I

    #@222
    move-result v6

    #@223
    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    #@226
    move-result-object v6

    #@227
    .line 8620
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@22a
    move-result-object v5

    #@22b
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@22e
    move-result-object v5

    #@22f
    invoke-virtual {v4, v5}, Lcom/android/server/wifi/WifiStateMachine;->logd(Ljava/lang/String;)V

    #@232
    .line 8624
    iget v4, p1, Landroid/os/Message;->arg1:I

    #@234
    iget-object v5, p0, Lcom/android/server/wifi/WifiStateMachine$RoamingState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@236
    invoke-static {v5}, Lcom/android/server/wifi/WifiStateMachine;->-get51(Lcom/android/server/wifi/WifiStateMachine;)I

    #@239
    move-result v5

    #@23a
    if-ne v4, v5, :cond_d

    #@23c
    .line 8625
    iget-object v4, p0, Lcom/android/server/wifi/WifiStateMachine$RoamingState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@23e
    invoke-virtual {v4}, Lcom/android/server/wifi/WifiStateMachine;->getCurrentWifiConfiguration()Landroid/net/wifi/WifiConfiguration;

    #@241
    move-result-object v1

    #@242
    .line 8626
    .restart local v1    # "config":Landroid/net/wifi/WifiConfiguration;
    if-eqz v1, :cond_c

    #@244
    .line 8627
    iget-object v4, p0, Lcom/android/server/wifi/WifiStateMachine$RoamingState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@246
    invoke-static {v4}, Lcom/android/server/wifi/WifiStateMachine;->-get103(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiLogger;

    #@249
    move-result-object v4

    #@24a
    invoke-virtual {v4, v9}, Lcom/android/server/wifi/WifiLogger;->captureBugReportData(I)V

    #@24d
    .line 8629
    iget-object v4, p0, Lcom/android/server/wifi/WifiStateMachine$RoamingState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@24f
    invoke-static {v4}, Lcom/android/server/wifi/WifiStateMachine;->-get99(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigStore;

    #@252
    move-result-object v4

    #@253
    .line 8630
    sget v5, Landroid/net/wifi/WifiConfiguration;->ROAMING_FAILURE_AUTH_FAILURE:I

    #@255
    .line 8629
    invoke-virtual {v4, v1, v5}, Lcom/android/server/wifi/WifiConfigStore;->noteRoamingFailure(Landroid/net/wifi/WifiConfiguration;I)V

    #@258
    .line 8632
    :cond_c
    iget-object v4, p0, Lcom/android/server/wifi/WifiStateMachine$RoamingState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@25a
    invoke-static {v4}, Lcom/android/server/wifi/WifiStateMachine;->-wrap28(Lcom/android/server/wifi/WifiStateMachine;)V

    #@25d
    .line 8633
    iget-object v4, p0, Lcom/android/server/wifi/WifiStateMachine$RoamingState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@25f
    iget-object v5, p0, Lcom/android/server/wifi/WifiStateMachine$RoamingState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@261
    invoke-static {v5}, Lcom/android/server/wifi/WifiStateMachine;->-get27(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/internal/util/State;

    #@264
    move-result-object v5

    #@265
    invoke-static {v4, v5}, Lcom/android/server/wifi/WifiStateMachine;->-wrap55(Lcom/android/server/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V

    #@268
    .line 8635
    .end local v1    # "config":Landroid/net/wifi/WifiConfiguration;
    :cond_d
    return v8

    #@269
    .line 8637
    :sswitch_9
    iget-object v4, p0, Lcom/android/server/wifi/WifiStateMachine$RoamingState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@26b
    invoke-static {v4, p1}, Lcom/android/server/wifi/WifiStateMachine;->-wrap21(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;)V

    #@26e
    goto/16 :goto_0

    #@270
    .line 8530
    :sswitch_data_0
    .sparse-switch
        0x20047 -> :sswitch_9
        0x20048 -> :sswitch_3
        0x2005e -> :sswitch_5
        0x2008b -> :sswitch_0
        0x20090 -> :sswitch_2
        0x21015 -> :sswitch_1
        0x24003 -> :sswitch_6
        0x24004 -> :sswitch_7
        0x24006 -> :sswitch_4
        0x2400d -> :sswitch_8
    .end sparse-switch
.end method
