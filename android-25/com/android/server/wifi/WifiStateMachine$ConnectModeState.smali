.class Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;
.super Lcom/android/internal/util/State;
.source "WifiStateMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifi/WifiStateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ConnectModeState"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/wifi/WifiStateMachine;


# direct methods
.method constructor <init>(Lcom/android/server/wifi/WifiStateMachine;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/wifi/WifiStateMachine;

    #@0
    .prologue
    .line 5357
    iput-object p1, p0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@2
    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    #@5
    return-void
.end method


# virtual methods
.method public enter()V
    .locals 2

    #@0
    .prologue
    .line 5362
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@2
    invoke-static {v0}, Lcom/android/server/wifi/WifiStateMachine;->-get76(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConnectivityManager;

    #@5
    move-result-object v0

    #@6
    if-eqz v0, :cond_0

    #@8
    .line 5363
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@a
    invoke-static {v0}, Lcom/android/server/wifi/WifiStateMachine;->-get76(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConnectivityManager;

    #@d
    move-result-object v0

    #@e
    const/4 v1, 0x1

    #@f
    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiConnectivityManager;->setWifiEnabled(Z)V

    #@12
    .line 5366
    :cond_0
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@14
    invoke-static {v0}, Lcom/android/server/wifi/WifiStateMachine;->-get82(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiMetrics;

    #@17
    move-result-object v0

    #@18
    const/4 v1, 0x2

    #@19
    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiMetrics;->setWifiState(I)V

    #@1c
    .line 5360
    return-void
.end method

.method public exit()V
    .locals 2

    #@0
    .prologue
    .line 5374
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@2
    invoke-static {v0}, Lcom/android/server/wifi/WifiStateMachine;->-get76(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConnectivityManager;

    #@5
    move-result-object v0

    #@6
    if-eqz v0, :cond_0

    #@8
    .line 5375
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@a
    invoke-static {v0}, Lcom/android/server/wifi/WifiStateMachine;->-get76(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConnectivityManager;

    #@d
    move-result-object v0

    #@e
    const/4 v1, 0x0

    #@f
    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiConnectivityManager;->setWifiEnabled(Z)V

    #@12
    .line 5378
    :cond_0
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@14
    invoke-static {v0}, Lcom/android/server/wifi/WifiStateMachine;->-get82(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiMetrics;

    #@17
    move-result-object v0

    #@18
    const/4 v1, 0x1

    #@19
    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiMetrics;->setWifiState(I)V

    #@1c
    .line 5372
    return-void
.end method

.method public processMessage(Landroid/os/Message;)Z
    .locals 47
    .param p1, "message"    # Landroid/os/Message;

    #@0
    .prologue
    .line 5390
    move-object/from16 v0, p0

    #@2
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@4
    move-object/from16 v42, v0

    #@6
    move-object/from16 v0, v42

    #@8
    move-object/from16 v1, p1

    #@a
    move-object/from16 v2, p0

    #@c
    invoke-static {v0, v1, v2}, Lcom/android/server/wifi/WifiStateMachine;->-wrap28(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;Lcom/android/internal/util/State;)V

    #@f
    .line 5392
    move-object/from16 v0, p1

    #@11
    iget v0, v0, Landroid/os/Message;->what:I

    #@13
    move/from16 v42, v0

    #@15
    sparse-switch v42, :sswitch_data_0

    #@18
    .line 6282
    const/16 v42, 0x0

    #@1a
    return v42

    #@1b
    .line 5394
    :sswitch_0
    move-object/from16 v0, p0

    #@1d
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@1f
    move-object/from16 v42, v0

    #@21
    invoke-static/range {v42 .. v42}, Lcom/android/server/wifi/WifiStateMachine;->-get81(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/BaseWifiLogger;

    #@24
    move-result-object v42

    #@25
    const/16 v43, 0x1

    #@27
    invoke-virtual/range {v42 .. v43}, Lcom/android/server/wifi/BaseWifiLogger;->captureBugReportData(I)V

    #@2a
    .line 5395
    move-object/from16 v0, p0

    #@2c
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@2e
    move-object/from16 v42, v0

    #@30
    const/16 v43, 0x0

    #@32
    invoke-static/range {v42 .. v43}, Lcom/android/server/wifi/WifiStateMachine;->-set0(Lcom/android/server/wifi/WifiStateMachine;Z)Z

    #@35
    .line 5396
    move-object/from16 v0, p1

    #@37
    iget-object v6, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@39
    check-cast v6, Ljava/lang/String;

    #@3b
    .line 5397
    .local v6, "bssid":Ljava/lang/String;
    if-eqz v6, :cond_0

    #@3d
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@40
    move-result v42

    #@41
    if-eqz v42, :cond_1

    #@43
    .line 5399
    :cond_0
    move-object/from16 v0, p0

    #@45
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@47
    move-object/from16 v42, v0

    #@49
    invoke-static/range {v42 .. v42}, Lcom/android/server/wifi/WifiStateMachine;->-get66(Lcom/android/server/wifi/WifiStateMachine;)Ljava/lang/String;

    #@4c
    move-result-object v6

    #@4d
    .line 5401
    :cond_1
    if-eqz v6, :cond_2

    #@4f
    .line 5403
    move-object/from16 v0, p0

    #@51
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@53
    move-object/from16 v42, v0

    #@55
    invoke-static/range {v42 .. v42}, Lcom/android/server/wifi/WifiStateMachine;->-get76(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConnectivityManager;

    #@58
    move-result-object v42

    #@59
    if-eqz v42, :cond_2

    #@5b
    .line 5404
    move-object/from16 v0, p0

    #@5d
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@5f
    move-object/from16 v42, v0

    #@61
    move-object/from16 v0, p0

    #@63
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@65
    move-object/from16 v43, v0

    #@67
    invoke-static/range {v43 .. v43}, Lcom/android/server/wifi/WifiStateMachine;->-get76(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConnectivityManager;

    #@6a
    move-result-object v43

    #@6b
    .line 5405
    const/16 v44, 0x0

    #@6d
    .line 5404
    move-object/from16 v0, v43

    #@6f
    move/from16 v1, v44

    #@71
    invoke-virtual {v0, v6, v1}, Lcom/android/server/wifi/WifiConnectivityManager;->trackBssid(Ljava/lang/String;Z)Z

    #@74
    move-result v43

    #@75
    invoke-static/range {v42 .. v43}, Lcom/android/server/wifi/WifiStateMachine;->-set0(Lcom/android/server/wifi/WifiStateMachine;Z)Z

    #@78
    .line 5409
    :cond_2
    move-object/from16 v0, p0

    #@7a
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@7c
    move-object/from16 v42, v0

    #@7e
    invoke-static/range {v42 .. v42}, Lcom/android/server/wifi/WifiStateMachine;->-get74(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigManager;

    #@81
    move-result-object v42

    #@82
    move-object/from16 v0, p0

    #@84
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@86
    move-object/from16 v43, v0

    #@88
    invoke-static/range {v43 .. v43}, Lcom/android/server/wifi/WifiStateMachine;->-get65(Lcom/android/server/wifi/WifiStateMachine;)I

    #@8b
    move-result v43

    #@8c
    .line 5410
    const/16 v44, 0x2

    #@8e
    .line 5409
    invoke-virtual/range {v42 .. v44}, Lcom/android/server/wifi/WifiConfigManager;->updateNetworkSelectionStatus(II)Z

    #@91
    .line 5413
    move-object/from16 v0, p0

    #@93
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@95
    move-object/from16 v42, v0

    #@97
    invoke-static/range {v42 .. v42}, Lcom/android/server/wifi/WifiStateMachine;->-get59(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/SupplicantStateTracker;

    #@9a
    move-result-object v42

    #@9b
    const v43, 0x2402b

    #@9e
    invoke-virtual/range {v42 .. v43}, Lcom/android/server/wifi/SupplicantStateTracker;->sendMessage(I)V

    #@a1
    .line 5415
    move-object/from16 v0, p0

    #@a3
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@a5
    move-object/from16 v42, v0

    #@a7
    .line 5416
    const/16 v43, 0x2

    #@a9
    .line 5417
    const/16 v44, 0x1

    #@ab
    .line 5415
    invoke-static/range {v42 .. v44}, Lcom/android/server/wifi/WifiStateMachine;->-wrap33(Lcom/android/server/wifi/WifiStateMachine;II)V

    #@ae
    .line 5418
    move-object/from16 v0, p0

    #@b0
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@b2
    move-object/from16 v42, v0

    #@b4
    invoke-static/range {v42 .. v42}, Lcom/android/server/wifi/WifiStateMachine;->-get79(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiLastResortWatchdog;

    #@b7
    move-result-object v42

    #@b8
    move-object/from16 v0, p0

    #@ba
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@bc
    move-object/from16 v43, v0

    #@be
    invoke-static/range {v43 .. v43}, Lcom/android/server/wifi/WifiStateMachine;->-wrap10(Lcom/android/server/wifi/WifiStateMachine;)Ljava/lang/String;

    #@c1
    move-result-object v43

    #@c2
    .line 5420
    const/16 v44, 0x1

    #@c4
    .line 5418
    move-object/from16 v0, v42

    #@c6
    move-object/from16 v1, v43

    #@c8
    move/from16 v2, v44

    #@ca
    invoke-virtual {v0, v1, v6, v2}, Lcom/android/server/wifi/WifiLastResortWatchdog;->noteConnectionFailureAndTriggerIfNeeded(Ljava/lang/String;Ljava/lang/String;I)Z

    #@cd
    .line 6284
    .end local v6    # "bssid":Ljava/lang/String;
    :cond_3
    :goto_0
    const/16 v42, 0x1

    #@cf
    return v42

    #@d0
    .line 5423
    :sswitch_1
    move-object/from16 v0, p0

    #@d2
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@d4
    move-object/from16 v42, v0

    #@d6
    invoke-static/range {v42 .. v42}, Lcom/android/server/wifi/WifiStateMachine;->-get81(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/BaseWifiLogger;

    #@d9
    move-result-object v42

    #@da
    const/16 v43, 0x2

    #@dc
    invoke-virtual/range {v42 .. v43}, Lcom/android/server/wifi/BaseWifiLogger;->captureBugReportData(I)V

    #@df
    .line 5424
    move-object/from16 v0, p0

    #@e1
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@e3
    move-object/from16 v42, v0

    #@e5
    invoke-static/range {v42 .. v42}, Lcom/android/server/wifi/WifiStateMachine;->-get59(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/SupplicantStateTracker;

    #@e8
    move-result-object v42

    #@e9
    const v43, 0x24007

    #@ec
    invoke-virtual/range {v42 .. v43}, Lcom/android/server/wifi/SupplicantStateTracker;->sendMessage(I)V

    #@ef
    .line 5425
    move-object/from16 v0, p0

    #@f1
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@f3
    move-object/from16 v42, v0

    #@f5
    invoke-static/range {v42 .. v42}, Lcom/android/server/wifi/WifiStateMachine;->-get65(Lcom/android/server/wifi/WifiStateMachine;)I

    #@f8
    move-result v42

    #@f9
    const/16 v43, -0x1

    #@fb
    move/from16 v0, v42

    #@fd
    move/from16 v1, v43

    #@ff
    if-eq v0, v1, :cond_4

    #@101
    .line 5426
    move-object/from16 v0, p0

    #@103
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@105
    move-object/from16 v42, v0

    #@107
    invoke-static/range {v42 .. v42}, Lcom/android/server/wifi/WifiStateMachine;->-get74(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigManager;

    #@10a
    move-result-object v42

    #@10b
    move-object/from16 v0, p0

    #@10d
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@10f
    move-object/from16 v43, v0

    #@111
    invoke-static/range {v43 .. v43}, Lcom/android/server/wifi/WifiStateMachine;->-get65(Lcom/android/server/wifi/WifiStateMachine;)I

    #@114
    move-result v43

    #@115
    .line 5427
    const/16 v44, 0x3

    #@117
    .line 5426
    invoke-virtual/range {v42 .. v44}, Lcom/android/server/wifi/WifiConfigManager;->updateNetworkSelectionStatus(II)Z

    #@11a
    .line 5431
    :cond_4
    move-object/from16 v0, p0

    #@11c
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@11e
    move-object/from16 v42, v0

    #@120
    .line 5432
    const/16 v43, 0x3

    #@122
    .line 5433
    const/16 v44, 0x1

    #@124
    .line 5431
    invoke-static/range {v42 .. v44}, Lcom/android/server/wifi/WifiStateMachine;->-wrap33(Lcom/android/server/wifi/WifiStateMachine;II)V

    #@127
    .line 5434
    move-object/from16 v0, p0

    #@129
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@12b
    move-object/from16 v42, v0

    #@12d
    invoke-static/range {v42 .. v42}, Lcom/android/server/wifi/WifiStateMachine;->-get79(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiLastResortWatchdog;

    #@130
    move-result-object v42

    #@131
    move-object/from16 v0, p0

    #@133
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@135
    move-object/from16 v43, v0

    #@137
    invoke-static/range {v43 .. v43}, Lcom/android/server/wifi/WifiStateMachine;->-wrap10(Lcom/android/server/wifi/WifiStateMachine;)Ljava/lang/String;

    #@13a
    move-result-object v43

    #@13b
    .line 5435
    move-object/from16 v0, p0

    #@13d
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@13f
    move-object/from16 v44, v0

    #@141
    invoke-static/range {v44 .. v44}, Lcom/android/server/wifi/WifiStateMachine;->-get66(Lcom/android/server/wifi/WifiStateMachine;)Ljava/lang/String;

    #@144
    move-result-object v44

    #@145
    .line 5436
    const/16 v45, 0x2

    #@147
    .line 5434
    invoke-virtual/range {v42 .. v45}, Lcom/android/server/wifi/WifiLastResortWatchdog;->noteConnectionFailureAndTriggerIfNeeded(Ljava/lang/String;Ljava/lang/String;I)Z

    #@14a
    goto :goto_0

    #@14b
    .line 5439
    :sswitch_2
    const-string/jumbo v42, "WifiStateMachine"

    #@14e
    new-instance v43, Ljava/lang/StringBuilder;

    #@150
    invoke-direct/range {v43 .. v43}, Ljava/lang/StringBuilder;-><init>()V

    #@153
    const-string/jumbo v44, "Supplicant SSID temporary disabled:"

    #@156
    invoke-virtual/range {v43 .. v44}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@159
    move-result-object v43

    #@15a
    .line 5440
    move-object/from16 v0, p0

    #@15c
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@15e
    move-object/from16 v44, v0

    #@160
    invoke-static/range {v44 .. v44}, Lcom/android/server/wifi/WifiStateMachine;->-get74(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigManager;

    #@163
    move-result-object v44

    #@164
    move-object/from16 v0, p1

    #@166
    iget v0, v0, Landroid/os/Message;->arg1:I

    #@168
    move/from16 v45, v0

    #@16a
    invoke-virtual/range {v44 .. v45}, Lcom/android/server/wifi/WifiConfigManager;->getWifiConfiguration(I)Landroid/net/wifi/WifiConfiguration;

    #@16d
    move-result-object v44

    #@16e
    .line 5439
    invoke-virtual/range {v43 .. v44}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@171
    move-result-object v43

    #@172
    invoke-virtual/range {v43 .. v43}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@175
    move-result-object v43

    #@176
    invoke-static/range {v42 .. v43}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@179
    .line 5441
    move-object/from16 v0, p0

    #@17b
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@17d
    move-object/from16 v42, v0

    #@17f
    invoke-static/range {v42 .. v42}, Lcom/android/server/wifi/WifiStateMachine;->-get74(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigManager;

    #@182
    move-result-object v42

    #@183
    .line 5442
    move-object/from16 v0, p1

    #@185
    iget v0, v0, Landroid/os/Message;->arg1:I

    #@187
    move/from16 v43, v0

    #@189
    .line 5443
    const/16 v44, 0x3

    #@18b
    .line 5441
    invoke-virtual/range {v42 .. v44}, Lcom/android/server/wifi/WifiConfigManager;->updateNetworkSelectionStatus(II)Z

    #@18e
    .line 5445
    move-object/from16 v0, p0

    #@190
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@192
    move-object/from16 v42, v0

    #@194
    .line 5446
    const/16 v43, 0x4

    #@196
    .line 5447
    const/16 v44, 0x1

    #@198
    .line 5445
    invoke-static/range {v42 .. v44}, Lcom/android/server/wifi/WifiStateMachine;->-wrap33(Lcom/android/server/wifi/WifiStateMachine;II)V

    #@19b
    .line 5448
    move-object/from16 v0, p0

    #@19d
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@19f
    move-object/from16 v42, v0

    #@1a1
    invoke-static/range {v42 .. v42}, Lcom/android/server/wifi/WifiStateMachine;->-get79(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiLastResortWatchdog;

    #@1a4
    move-result-object v42

    #@1a5
    move-object/from16 v0, p0

    #@1a7
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@1a9
    move-object/from16 v43, v0

    #@1ab
    invoke-static/range {v43 .. v43}, Lcom/android/server/wifi/WifiStateMachine;->-wrap10(Lcom/android/server/wifi/WifiStateMachine;)Ljava/lang/String;

    #@1ae
    move-result-object v43

    #@1af
    .line 5449
    move-object/from16 v0, p0

    #@1b1
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@1b3
    move-object/from16 v44, v0

    #@1b5
    invoke-static/range {v44 .. v44}, Lcom/android/server/wifi/WifiStateMachine;->-get66(Lcom/android/server/wifi/WifiStateMachine;)Ljava/lang/String;

    #@1b8
    move-result-object v44

    #@1b9
    .line 5450
    const/16 v45, 0x2

    #@1bb
    .line 5448
    invoke-virtual/range {v42 .. v45}, Lcom/android/server/wifi/WifiLastResortWatchdog;->noteConnectionFailureAndTriggerIfNeeded(Ljava/lang/String;Ljava/lang/String;I)Z

    #@1be
    goto/16 :goto_0

    #@1c0
    .line 5453
    :sswitch_3
    const-string/jumbo v42, "WifiStateMachine"

    #@1c3
    new-instance v43, Ljava/lang/StringBuilder;

    #@1c5
    invoke-direct/range {v43 .. v43}, Ljava/lang/StringBuilder;-><init>()V

    #@1c8
    const-string/jumbo v44, "Supplicant SSID reenable:"

    #@1cb
    invoke-virtual/range {v43 .. v44}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1ce
    move-result-object v43

    #@1cf
    .line 5454
    move-object/from16 v0, p0

    #@1d1
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@1d3
    move-object/from16 v44, v0

    #@1d5
    invoke-static/range {v44 .. v44}, Lcom/android/server/wifi/WifiStateMachine;->-get74(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigManager;

    #@1d8
    move-result-object v44

    #@1d9
    move-object/from16 v0, p1

    #@1db
    iget v0, v0, Landroid/os/Message;->arg1:I

    #@1dd
    move/from16 v45, v0

    #@1df
    invoke-virtual/range {v44 .. v45}, Lcom/android/server/wifi/WifiConfigManager;->getWifiConfiguration(I)Landroid/net/wifi/WifiConfiguration;

    #@1e2
    move-result-object v44

    #@1e3
    .line 5453
    invoke-virtual/range {v43 .. v44}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@1e6
    move-result-object v43

    #@1e7
    invoke-virtual/range {v43 .. v43}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1ea
    move-result-object v43

    #@1eb
    invoke-static/range {v42 .. v43}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@1ee
    goto/16 :goto_0

    #@1f0
    .line 5459
    :sswitch_4
    move-object/from16 v0, p0

    #@1f2
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@1f4
    move-object/from16 v42, v0

    #@1f6
    move-object/from16 v0, v42

    #@1f8
    move-object/from16 v1, p1

    #@1fa
    invoke-static {v0, v1}, Lcom/android/server/wifi/WifiStateMachine;->-wrap0(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;)Landroid/net/wifi/SupplicantState;

    #@1fd
    move-result-object v34

    #@1fe
    .line 5462
    .local v34, "state":Landroid/net/wifi/SupplicantState;
    invoke-static/range {v34 .. v34}, Landroid/net/wifi/SupplicantState;->isDriverActive(Landroid/net/wifi/SupplicantState;)Z

    #@201
    move-result v42

    #@202
    if-nez v42, :cond_6

    #@204
    .line 5463
    move-object/from16 v0, p0

    #@206
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@208
    move-object/from16 v42, v0

    #@20a
    invoke-static/range {v42 .. v42}, Lcom/android/server/wifi/WifiStateMachine;->-get37(Lcom/android/server/wifi/WifiStateMachine;)Landroid/net/NetworkInfo;

    #@20d
    move-result-object v42

    #@20e
    invoke-virtual/range {v42 .. v42}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    #@211
    move-result-object v42

    #@212
    sget-object v43, Landroid/net/NetworkInfo$State;->DISCONNECTED:Landroid/net/NetworkInfo$State;

    #@214
    move-object/from16 v0, v42

    #@216
    move-object/from16 v1, v43

    #@218
    if-eq v0, v1, :cond_5

    #@21a
    .line 5464
    move-object/from16 v0, p0

    #@21c
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@21e
    move-object/from16 v42, v0

    #@220
    invoke-static/range {v42 .. v42}, Lcom/android/server/wifi/WifiStateMachine;->-wrap23(Lcom/android/server/wifi/WifiStateMachine;)V

    #@223
    .line 5466
    :cond_5
    move-object/from16 v0, p0

    #@225
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@227
    move-object/from16 v42, v0

    #@229
    const-string/jumbo v43, "Detected an interface down, restart driver"

    #@22c
    invoke-virtual/range {v42 .. v43}, Lcom/android/server/wifi/WifiStateMachine;->log(Ljava/lang/String;)V

    #@22f
    .line 5467
    move-object/from16 v0, p0

    #@231
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@233
    move-object/from16 v42, v0

    #@235
    move-object/from16 v0, p0

    #@237
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@239
    move-object/from16 v43, v0

    #@23b
    invoke-static/range {v43 .. v43}, Lcom/android/server/wifi/WifiStateMachine;->-get21(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/internal/util/State;

    #@23e
    move-result-object v43

    #@23f
    invoke-static/range {v42 .. v43}, Lcom/android/server/wifi/WifiStateMachine;->-wrap45(Lcom/android/server/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V

    #@242
    .line 5468
    move-object/from16 v0, p0

    #@244
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@246
    move-object/from16 v42, v0

    #@248
    const v43, 0x2000d

    #@24b
    invoke-virtual/range {v42 .. v43}, Lcom/android/server/wifi/WifiStateMachine;->sendMessage(I)V

    #@24e
    goto/16 :goto_0

    #@250
    .line 5477
    :cond_6
    move-object/from16 v0, p0

    #@252
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@254
    move-object/from16 v42, v0

    #@256
    invoke-static/range {v42 .. v42}, Lcom/android/server/wifi/WifiStateMachine;->-get5(Lcom/android/server/wifi/WifiStateMachine;)Z

    #@259
    move-result v42

    #@25a
    if-nez v42, :cond_8

    #@25c
    sget-object v42, Landroid/net/wifi/SupplicantState;->DISCONNECTED:Landroid/net/wifi/SupplicantState;

    #@25e
    move-object/from16 v0, v34

    #@260
    move-object/from16 v1, v42

    #@262
    if-ne v0, v1, :cond_8

    #@264
    .line 5478
    move-object/from16 v0, p0

    #@266
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@268
    move-object/from16 v42, v0

    #@26a
    invoke-static/range {v42 .. v42}, Lcom/android/server/wifi/WifiStateMachine;->-get37(Lcom/android/server/wifi/WifiStateMachine;)Landroid/net/NetworkInfo;

    #@26d
    move-result-object v42

    #@26e
    invoke-virtual/range {v42 .. v42}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    #@271
    move-result-object v42

    #@272
    sget-object v43, Landroid/net/NetworkInfo$State;->DISCONNECTED:Landroid/net/NetworkInfo$State;

    #@274
    move-object/from16 v0, v42

    #@276
    move-object/from16 v1, v43

    #@278
    if-eq v0, v1, :cond_8

    #@27a
    .line 5479
    invoke-static {}, Lcom/android/server/wifi/WifiStateMachine;->-get0()Z

    #@27d
    move-result v42

    #@27e
    if-eqz v42, :cond_7

    #@280
    move-object/from16 v0, p0

    #@282
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@284
    move-object/from16 v42, v0

    #@286
    const-string/jumbo v43, "Missed CTRL-EVENT-DISCONNECTED, disconnect"

    #@289
    invoke-virtual/range {v42 .. v43}, Lcom/android/server/wifi/WifiStateMachine;->log(Ljava/lang/String;)V

    #@28c
    .line 5480
    :cond_7
    move-object/from16 v0, p0

    #@28e
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@290
    move-object/from16 v42, v0

    #@292
    invoke-static/range {v42 .. v42}, Lcom/android/server/wifi/WifiStateMachine;->-wrap23(Lcom/android/server/wifi/WifiStateMachine;)V

    #@295
    .line 5481
    move-object/from16 v0, p0

    #@297
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@299
    move-object/from16 v42, v0

    #@29b
    move-object/from16 v0, p0

    #@29d
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@29f
    move-object/from16 v43, v0

    #@2a1
    invoke-static/range {v43 .. v43}, Lcom/android/server/wifi/WifiStateMachine;->-get16(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/internal/util/State;

    #@2a4
    move-result-object v43

    #@2a5
    invoke-static/range {v42 .. v43}, Lcom/android/server/wifi/WifiStateMachine;->-wrap45(Lcom/android/server/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V

    #@2a8
    .line 5487
    :cond_8
    sget-object v42, Landroid/net/wifi/SupplicantState;->COMPLETED:Landroid/net/wifi/SupplicantState;

    #@2aa
    move-object/from16 v0, v34

    #@2ac
    move-object/from16 v1, v42

    #@2ae
    if-ne v0, v1, :cond_3

    #@2b0
    .line 5488
    move-object/from16 v0, p0

    #@2b2
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@2b4
    move-object/from16 v42, v0

    #@2b6
    invoke-static/range {v42 .. v42}, Lcom/android/server/wifi/WifiStateMachine;->-get28(Lcom/android/server/wifi/WifiStateMachine;)Landroid/net/ip/IpManager;

    #@2b9
    move-result-object v42

    #@2ba
    invoke-virtual/range {v42 .. v42}, Landroid/net/ip/IpManager;->confirmConfiguration()V

    #@2bd
    goto/16 :goto_0

    #@2bf
    .line 5492
    .end local v34    # "state":Landroid/net/wifi/SupplicantState;
    :sswitch_5
    move-object/from16 v0, p1

    #@2c1
    iget v0, v0, Landroid/os/Message;->arg1:I

    #@2c3
    move/from16 v42, v0

    #@2c5
    const/16 v43, 0x1

    #@2c7
    move/from16 v0, v42

    #@2c9
    move/from16 v1, v43

    #@2cb
    if-ne v0, v1, :cond_9

    #@2cd
    .line 5493
    move-object/from16 v0, p0

    #@2cf
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@2d1
    move-object/from16 v42, v0

    #@2d3
    invoke-static/range {v42 .. v42}, Lcom/android/server/wifi/WifiStateMachine;->-get84(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiNative;

    #@2d6
    move-result-object v42

    #@2d7
    invoke-virtual/range {v42 .. v42}, Lcom/android/server/wifi/WifiNative;->disconnect()Z

    #@2da
    .line 5494
    move-object/from16 v0, p0

    #@2dc
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@2de
    move-object/from16 v42, v0

    #@2e0
    const/16 v43, 0x1

    #@2e2
    invoke-static/range {v42 .. v43}, Lcom/android/server/wifi/WifiStateMachine;->-set32(Lcom/android/server/wifi/WifiStateMachine;Z)Z

    #@2e5
    goto/16 :goto_0

    #@2e7
    .line 5496
    :cond_9
    move-object/from16 v0, p0

    #@2e9
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@2eb
    move-object/from16 v42, v0

    #@2ed
    invoke-static/range {v42 .. v42}, Lcom/android/server/wifi/WifiStateMachine;->-get84(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiNative;

    #@2f0
    move-result-object v42

    #@2f1
    invoke-virtual/range {v42 .. v42}, Lcom/android/server/wifi/WifiNative;->reconnect()Z

    #@2f4
    .line 5497
    move-object/from16 v0, p0

    #@2f6
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@2f8
    move-object/from16 v42, v0

    #@2fa
    const/16 v43, 0x0

    #@2fc
    invoke-static/range {v42 .. v43}, Lcom/android/server/wifi/WifiStateMachine;->-set32(Lcom/android/server/wifi/WifiStateMachine;Z)Z

    #@2ff
    goto/16 :goto_0

    #@301
    .line 5502
    :sswitch_6
    move-object/from16 v0, p0

    #@303
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@305
    move-object/from16 v42, v0

    #@307
    invoke-static/range {v42 .. v42}, Lcom/android/server/wifi/WifiStateMachine;->-get74(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigManager;

    #@30a
    move-result-object v42

    #@30b
    .line 5503
    move-object/from16 v0, p1

    #@30d
    iget v0, v0, Landroid/os/Message;->sendingUid:I

    #@30f
    move/from16 v43, v0

    #@311
    invoke-static/range {v43 .. v43}, Landroid/os/UserHandle;->getUserId(I)I

    #@314
    move-result v43

    #@315
    .line 5502
    invoke-virtual/range {v42 .. v43}, Lcom/android/server/wifi/WifiConfigManager;->isCurrentUserProfile(I)Z

    #@318
    move-result v42

    #@319
    if-nez v42, :cond_a

    #@31b
    .line 5504
    move-object/from16 v0, p0

    #@31d
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@31f
    move-object/from16 v42, v0

    #@321
    new-instance v43, Ljava/lang/StringBuilder;

    #@323
    invoke-direct/range {v43 .. v43}, Ljava/lang/StringBuilder;-><init>()V

    #@326
    const-string/jumbo v44, "Only the current foreground user can modify networks  currentUserId="

    #@329
    invoke-virtual/range {v43 .. v44}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@32c
    move-result-object v43

    #@32d
    .line 5505
    move-object/from16 v0, p0

    #@32f
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@331
    move-object/from16 v44, v0

    #@333
    invoke-static/range {v44 .. v44}, Lcom/android/server/wifi/WifiStateMachine;->-get74(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigManager;

    #@336
    move-result-object v44

    #@337
    invoke-virtual/range {v44 .. v44}, Lcom/android/server/wifi/WifiConfigManager;->getCurrentUserId()I

    #@33a
    move-result v44

    #@33b
    .line 5504
    invoke-virtual/range {v43 .. v44}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@33e
    move-result-object v43

    #@33f
    .line 5506
    const-string/jumbo v44, " sendingUserId="

    #@342
    .line 5504
    invoke-virtual/range {v43 .. v44}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@345
    move-result-object v43

    #@346
    .line 5506
    move-object/from16 v0, p1

    #@348
    iget v0, v0, Landroid/os/Message;->sendingUid:I

    #@34a
    move/from16 v44, v0

    #@34c
    invoke-static/range {v44 .. v44}, Landroid/os/UserHandle;->getUserId(I)I

    #@34f
    move-result v44

    #@350
    .line 5504
    invoke-virtual/range {v43 .. v44}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@353
    move-result-object v43

    #@354
    invoke-virtual/range {v43 .. v43}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@357
    move-result-object v43

    #@358
    invoke-virtual/range {v42 .. v43}, Lcom/android/server/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V

    #@35b
    .line 5507
    move-object/from16 v0, p0

    #@35d
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@35f
    move-object/from16 v42, v0

    #@361
    move-object/from16 v0, p1

    #@363
    iget v0, v0, Landroid/os/Message;->what:I

    #@365
    move/from16 v43, v0

    #@367
    const/16 v44, -0x1

    #@369
    move-object/from16 v0, v42

    #@36b
    move-object/from16 v1, p1

    #@36d
    move/from16 v2, v43

    #@36f
    move/from16 v3, v44

    #@371
    invoke-static {v0, v1, v2, v3}, Lcom/android/server/wifi/WifiStateMachine;->-wrap31(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;II)V

    #@374
    goto/16 :goto_0

    #@376
    .line 5511
    :cond_a
    move-object/from16 v0, p1

    #@378
    iget-object v9, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@37a
    check-cast v9, Landroid/net/wifi/WifiConfiguration;

    #@37c
    .line 5513
    .local v9, "config":Landroid/net/wifi/WifiConfiguration;
    move-object/from16 v0, p0

    #@37e
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@380
    move-object/from16 v42, v0

    #@382
    move-object/from16 v0, p1

    #@384
    iget v0, v0, Landroid/os/Message;->sendingUid:I

    #@386
    move/from16 v43, v0

    #@388
    .line 5514
    const/16 v44, 0x0

    #@38a
    .line 5513
    move-object/from16 v0, v42

    #@38c
    move/from16 v1, v43

    #@38e
    move/from16 v2, v44

    #@390
    invoke-virtual {v0, v9, v1, v2}, Lcom/android/server/wifi/WifiStateMachine;->recordUidIfAuthorized(Landroid/net/wifi/WifiConfiguration;IZ)Z

    #@393
    move-result v42

    #@394
    if-nez v42, :cond_b

    #@396
    .line 5515
    move-object/from16 v0, p0

    #@398
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@39a
    move-object/from16 v42, v0

    #@39c
    new-instance v43, Ljava/lang/StringBuilder;

    #@39e
    invoke-direct/range {v43 .. v43}, Ljava/lang/StringBuilder;-><init>()V

    #@3a1
    const-string/jumbo v44, "Not authorized to update network  config="

    #@3a4
    invoke-virtual/range {v43 .. v44}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3a7
    move-result-object v43

    #@3a8
    .line 5516
    iget-object v0, v9, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    #@3aa
    move-object/from16 v44, v0

    #@3ac
    .line 5515
    invoke-virtual/range {v43 .. v44}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3af
    move-result-object v43

    #@3b0
    .line 5517
    const-string/jumbo v44, " cnid="

    #@3b3
    .line 5515
    invoke-virtual/range {v43 .. v44}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3b6
    move-result-object v43

    #@3b7
    .line 5517
    iget v0, v9, Landroid/net/wifi/WifiConfiguration;->networkId:I

    #@3b9
    move/from16 v44, v0

    #@3bb
    .line 5515
    invoke-virtual/range {v43 .. v44}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@3be
    move-result-object v43

    #@3bf
    .line 5518
    const-string/jumbo v44, " uid="

    #@3c2
    .line 5515
    invoke-virtual/range {v43 .. v44}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3c5
    move-result-object v43

    #@3c6
    .line 5518
    move-object/from16 v0, p1

    #@3c8
    iget v0, v0, Landroid/os/Message;->sendingUid:I

    #@3ca
    move/from16 v44, v0

    #@3cc
    .line 5515
    invoke-virtual/range {v43 .. v44}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@3cf
    move-result-object v43

    #@3d0
    invoke-virtual/range {v43 .. v43}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3d3
    move-result-object v43

    #@3d4
    invoke-static/range {v42 .. v43}, Lcom/android/server/wifi/WifiStateMachine;->-wrap29(Lcom/android/server/wifi/WifiStateMachine;Ljava/lang/String;)V

    #@3d7
    .line 5519
    move-object/from16 v0, p0

    #@3d9
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@3db
    move-object/from16 v42, v0

    #@3dd
    move-object/from16 v0, p1

    #@3df
    iget v0, v0, Landroid/os/Message;->what:I

    #@3e1
    move/from16 v43, v0

    #@3e3
    const/16 v44, -0x1

    #@3e5
    move-object/from16 v0, v42

    #@3e7
    move-object/from16 v1, p1

    #@3e9
    move/from16 v2, v43

    #@3eb
    move/from16 v3, v44

    #@3ed
    invoke-static {v0, v1, v2, v3}, Lcom/android/server/wifi/WifiStateMachine;->-wrap31(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;II)V

    #@3f0
    goto/16 :goto_0

    #@3f2
    .line 5523
    :cond_b
    move-object/from16 v0, p0

    #@3f4
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@3f6
    move-object/from16 v42, v0

    #@3f8
    invoke-static/range {v42 .. v42}, Lcom/android/server/wifi/WifiStateMachine;->-get74(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigManager;

    #@3fb
    move-result-object v42

    #@3fc
    move-object/from16 v0, p1

    #@3fe
    iget v0, v0, Landroid/os/Message;->sendingUid:I

    #@400
    move/from16 v43, v0

    #@402
    move-object/from16 v0, v42

    #@404
    move/from16 v1, v43

    #@406
    invoke-virtual {v0, v9, v1}, Lcom/android/server/wifi/WifiConfigManager;->addOrUpdateNetwork(Landroid/net/wifi/WifiConfiguration;I)I

    #@409
    move-result v27

    #@40a
    .line 5524
    .local v27, "res":I
    if-gez v27, :cond_d

    #@40c
    .line 5525
    move-object/from16 v0, p0

    #@40e
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@410
    move-object/from16 v42, v0

    #@412
    invoke-static {}, Lcom/android/server/wifi/WifiStateMachine;->-get3()I

    #@415
    move-result v43

    #@416
    invoke-static/range {v42 .. v43}, Lcom/android/server/wifi/WifiStateMachine;->-set39(Lcom/android/server/wifi/WifiStateMachine;I)I

    #@419
    .line 5554
    :cond_c
    :goto_1
    move-object/from16 v0, p0

    #@41b
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@41d
    move-object/from16 v42, v0

    #@41f
    const v43, 0x20034

    #@422
    move-object/from16 v0, v42

    #@424
    move-object/from16 v1, p1

    #@426
    move/from16 v2, v43

    #@428
    move/from16 v3, v27

    #@42a
    invoke-static {v0, v1, v2, v3}, Lcom/android/server/wifi/WifiStateMachine;->-wrap31(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;II)V

    #@42d
    goto/16 :goto_0

    #@42f
    .line 5527
    :cond_d
    move-object/from16 v0, p0

    #@431
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@433
    move-object/from16 v42, v0

    #@435
    invoke-virtual/range {v42 .. v42}, Lcom/android/server/wifi/WifiStateMachine;->getCurrentWifiConfiguration()Landroid/net/wifi/WifiConfiguration;

    #@438
    move-result-object v11

    #@439
    .line 5528
    .local v11, "curConfig":Landroid/net/wifi/WifiConfiguration;
    if-eqz v11, :cond_c

    #@43b
    if-eqz v9, :cond_c

    #@43d
    .line 5530
    invoke-virtual {v9}, Landroid/net/wifi/WifiConfiguration;->getNetworkSelectionStatus()Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;

    #@440
    move-result-object v21

    #@441
    .line 5531
    .local v21, "networkStatus":Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;
    iget v0, v11, Landroid/net/wifi/WifiConfiguration;->priority:I

    #@443
    move/from16 v42, v0

    #@445
    iget v0, v9, Landroid/net/wifi/WifiConfiguration;->priority:I

    #@447
    move/from16 v43, v0

    #@449
    move/from16 v0, v42

    #@44b
    move/from16 v1, v43

    #@44d
    if-ge v0, v1, :cond_c

    #@44f
    if-eqz v21, :cond_c

    #@451
    .line 5532
    invoke-virtual/range {v21 .. v21}, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->isNetworkPermanentlyDisabled()Z

    #@454
    move-result v42

    #@455
    if-nez v42, :cond_c

    #@457
    .line 5536
    move-object/from16 v0, p0

    #@459
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@45b
    move-object/from16 v42, v0

    #@45d
    invoke-static/range {v42 .. v42}, Lcom/android/server/wifi/WifiStateMachine;->-get74(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigManager;

    #@460
    move-result-object v42

    #@461
    move-object/from16 v0, v42

    #@463
    move/from16 v1, v27

    #@465
    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiConfigManager;->setAndEnableLastSelectedConfiguration(I)V

    #@468
    .line 5537
    move-object/from16 v0, p0

    #@46a
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@46c
    move-object/from16 v42, v0

    #@46e
    invoke-static/range {v42 .. v42}, Lcom/android/server/wifi/WifiStateMachine;->-get74(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigManager;

    #@471
    move-result-object v42

    #@472
    move-object/from16 v0, p1

    #@474
    iget v0, v0, Landroid/os/Message;->sendingUid:I

    #@476
    move/from16 v43, v0

    #@478
    move-object/from16 v0, v42

    #@47a
    move/from16 v1, v43

    #@47c
    invoke-virtual {v0, v9, v1}, Lcom/android/server/wifi/WifiConfigManager;->updateLastConnectUid(Landroid/net/wifi/WifiConfiguration;I)Z

    #@47f
    .line 5538
    move-object/from16 v0, p0

    #@481
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@483
    move-object/from16 v42, v0

    #@485
    invoke-static/range {v42 .. v42}, Lcom/android/server/wifi/WifiStateMachine;->-get74(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigManager;

    #@488
    move-result-object v42

    #@489
    .line 5539
    move-object/from16 v0, p1

    #@48b
    iget v0, v0, Landroid/os/Message;->sendingUid:I

    #@48d
    move/from16 v43, v0

    #@48f
    .line 5538
    invoke-virtual/range {v42 .. v43}, Lcom/android/server/wifi/WifiConfigManager;->checkConfigOverridePermission(I)Z

    #@492
    move-result v24

    #@493
    .line 5540
    .local v24, "persist":Z
    move-object/from16 v0, p0

    #@495
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@497
    move-object/from16 v42, v0

    #@499
    invoke-static/range {v42 .. v42}, Lcom/android/server/wifi/WifiStateMachine;->-get76(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConnectivityManager;

    #@49c
    move-result-object v42

    #@49d
    if-eqz v42, :cond_e

    #@49f
    .line 5541
    move-object/from16 v0, p0

    #@4a1
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@4a3
    move-object/from16 v42, v0

    #@4a5
    invoke-static/range {v42 .. v42}, Lcom/android/server/wifi/WifiStateMachine;->-get76(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConnectivityManager;

    #@4a8
    move-result-object v42

    #@4a9
    move-object/from16 v0, v42

    #@4ab
    move/from16 v1, v27

    #@4ad
    move/from16 v2, v24

    #@4af
    invoke-virtual {v0, v1, v2}, Lcom/android/server/wifi/WifiConnectivityManager;->connectToUserSelectNetwork(IZ)V

    #@4b2
    .line 5546
    :cond_e
    move-object/from16 v0, p0

    #@4b4
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@4b6
    move-object/from16 v42, v0

    #@4b8
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    #@4bb
    move-result-wide v44

    #@4bc
    move-object/from16 v0, v42

    #@4be
    move-wide/from16 v1, v44

    #@4c0
    invoke-static {v0, v1, v2}, Lcom/android/server/wifi/WifiStateMachine;->-set1(Lcom/android/server/wifi/WifiStateMachine;J)J

    #@4c3
    .line 5547
    move-object/from16 v0, p0

    #@4c5
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@4c7
    move-object/from16 v42, v0

    #@4c9
    invoke-static/range {v42 .. v42}, Lcom/android/server/wifi/WifiStateMachine;->-get75(Lcom/android/server/wifi/WifiStateMachine;)Landroid/net/wifi/WifiConnectionStatistics;

    #@4cc
    move-result-object v42

    #@4cd
    move-object/from16 v0, v42

    #@4cf
    iget v0, v0, Landroid/net/wifi/WifiConnectionStatistics;->numWifiManagerJoinAttempt:I

    #@4d1
    move/from16 v43, v0

    #@4d3
    add-int/lit8 v43, v43, 0x1

    #@4d5
    move/from16 v0, v43

    #@4d7
    move-object/from16 v1, v42

    #@4d9
    iput v0, v1, Landroid/net/wifi/WifiConnectionStatistics;->numWifiManagerJoinAttempt:I

    #@4db
    .line 5550
    move-object/from16 v0, p0

    #@4dd
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@4df
    move-object/from16 v42, v0

    #@4e1
    sget-object v43, Lcom/android/server/wifi/WifiStateMachine;->WIFI_WORK_SOURCE:Landroid/os/WorkSource;

    #@4e3
    const/16 v44, -0x3

    #@4e5
    const/16 v45, 0x0

    #@4e7
    const/16 v46, 0x0

    #@4e9
    move-object/from16 v0, v42

    #@4eb
    move/from16 v1, v44

    #@4ed
    move/from16 v2, v45

    #@4ef
    move-object/from16 v3, v46

    #@4f1
    move-object/from16 v4, v43

    #@4f3
    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/server/wifi/WifiStateMachine;->startScan(IILandroid/net/wifi/ScanSettings;Landroid/os/WorkSource;)V

    #@4f6
    goto/16 :goto_1

    #@4f8
    .line 5558
    .end local v9    # "config":Landroid/net/wifi/WifiConfiguration;
    .end local v11    # "curConfig":Landroid/net/wifi/WifiConfiguration;
    .end local v21    # "networkStatus":Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;
    .end local v24    # "persist":Z
    .end local v27    # "res":I
    :sswitch_7
    move-object/from16 v0, p0

    #@4fa
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@4fc
    move-object/from16 v42, v0

    #@4fe
    invoke-static/range {v42 .. v42}, Lcom/android/server/wifi/WifiStateMachine;->-get74(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigManager;

    #@501
    move-result-object v42

    #@502
    .line 5559
    move-object/from16 v0, p1

    #@504
    iget v0, v0, Landroid/os/Message;->sendingUid:I

    #@506
    move/from16 v43, v0

    #@508
    invoke-static/range {v43 .. v43}, Landroid/os/UserHandle;->getUserId(I)I

    #@50b
    move-result v43

    #@50c
    .line 5558
    invoke-virtual/range {v42 .. v43}, Lcom/android/server/wifi/WifiConfigManager;->isCurrentUserProfile(I)Z

    #@50f
    move-result v42

    #@510
    if-nez v42, :cond_f

    #@512
    .line 5560
    move-object/from16 v0, p0

    #@514
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@516
    move-object/from16 v42, v0

    #@518
    new-instance v43, Ljava/lang/StringBuilder;

    #@51a
    invoke-direct/range {v43 .. v43}, Ljava/lang/StringBuilder;-><init>()V

    #@51d
    const-string/jumbo v44, "Only the current foreground user can modify networks  currentUserId="

    #@520
    invoke-virtual/range {v43 .. v44}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@523
    move-result-object v43

    #@524
    .line 5561
    move-object/from16 v0, p0

    #@526
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@528
    move-object/from16 v44, v0

    #@52a
    invoke-static/range {v44 .. v44}, Lcom/android/server/wifi/WifiStateMachine;->-get74(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigManager;

    #@52d
    move-result-object v44

    #@52e
    invoke-virtual/range {v44 .. v44}, Lcom/android/server/wifi/WifiConfigManager;->getCurrentUserId()I

    #@531
    move-result v44

    #@532
    .line 5560
    invoke-virtual/range {v43 .. v44}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@535
    move-result-object v43

    #@536
    .line 5562
    const-string/jumbo v44, " sendingUserId="

    #@539
    .line 5560
    invoke-virtual/range {v43 .. v44}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@53c
    move-result-object v43

    #@53d
    .line 5562
    move-object/from16 v0, p1

    #@53f
    iget v0, v0, Landroid/os/Message;->sendingUid:I

    #@541
    move/from16 v44, v0

    #@543
    invoke-static/range {v44 .. v44}, Landroid/os/UserHandle;->getUserId(I)I

    #@546
    move-result v44

    #@547
    .line 5560
    invoke-virtual/range {v43 .. v44}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@54a
    move-result-object v43

    #@54b
    invoke-virtual/range {v43 .. v43}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@54e
    move-result-object v43

    #@54f
    invoke-virtual/range {v42 .. v43}, Lcom/android/server/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V

    #@552
    .line 5563
    move-object/from16 v0, p0

    #@554
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@556
    move-object/from16 v42, v0

    #@558
    move-object/from16 v0, p1

    #@55a
    iget v0, v0, Landroid/os/Message;->what:I

    #@55c
    move/from16 v43, v0

    #@55e
    const/16 v44, -0x1

    #@560
    move-object/from16 v0, v42

    #@562
    move-object/from16 v1, p1

    #@564
    move/from16 v2, v43

    #@566
    move/from16 v3, v44

    #@568
    invoke-static {v0, v1, v2, v3}, Lcom/android/server/wifi/WifiStateMachine;->-wrap31(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;II)V

    #@56b
    goto/16 :goto_0

    #@56d
    .line 5566
    :cond_f
    move-object/from16 v0, p1

    #@56f
    iget v0, v0, Landroid/os/Message;->arg1:I

    #@571
    move/from16 v19, v0

    #@573
    .line 5568
    .local v19, "netId":I
    move-object/from16 v0, p0

    #@575
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@577
    move-object/from16 v42, v0

    #@579
    invoke-static/range {v42 .. v42}, Lcom/android/server/wifi/WifiStateMachine;->-get74(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigManager;

    #@57c
    move-result-object v42

    #@57d
    move-object/from16 v0, p1

    #@57f
    iget v0, v0, Landroid/os/Message;->sendingUid:I

    #@581
    move/from16 v43, v0

    #@583
    .line 5569
    const/16 v44, 0x0

    #@585
    .line 5568
    move-object/from16 v0, v42

    #@587
    move/from16 v1, v43

    #@589
    move/from16 v2, v19

    #@58b
    move/from16 v3, v44

    #@58d
    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/wifi/WifiConfigManager;->canModifyNetwork(IIZ)Z

    #@590
    move-result v42

    #@591
    if-nez v42, :cond_10

    #@593
    .line 5570
    move-object/from16 v0, p0

    #@595
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@597
    move-object/from16 v42, v0

    #@599
    new-instance v43, Ljava/lang/StringBuilder;

    #@59b
    invoke-direct/range {v43 .. v43}, Ljava/lang/StringBuilder;-><init>()V

    #@59e
    const-string/jumbo v44, "Not authorized to remove network  cnid="

    #@5a1
    invoke-virtual/range {v43 .. v44}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5a4
    move-result-object v43

    #@5a5
    move-object/from16 v0, v43

    #@5a7
    move/from16 v1, v19

    #@5a9
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@5ac
    move-result-object v43

    #@5ad
    .line 5572
    const-string/jumbo v44, " uid="

    #@5b0
    .line 5570
    invoke-virtual/range {v43 .. v44}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5b3
    move-result-object v43

    #@5b4
    .line 5572
    move-object/from16 v0, p1

    #@5b6
    iget v0, v0, Landroid/os/Message;->sendingUid:I

    #@5b8
    move/from16 v44, v0

    #@5ba
    .line 5570
    invoke-virtual/range {v43 .. v44}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@5bd
    move-result-object v43

    #@5be
    invoke-virtual/range {v43 .. v43}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@5c1
    move-result-object v43

    #@5c2
    invoke-static/range {v42 .. v43}, Lcom/android/server/wifi/WifiStateMachine;->-wrap29(Lcom/android/server/wifi/WifiStateMachine;Ljava/lang/String;)V

    #@5c5
    .line 5573
    move-object/from16 v0, p0

    #@5c7
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@5c9
    move-object/from16 v42, v0

    #@5cb
    move-object/from16 v0, p1

    #@5cd
    iget v0, v0, Landroid/os/Message;->what:I

    #@5cf
    move/from16 v43, v0

    #@5d1
    const/16 v44, -0x1

    #@5d3
    move-object/from16 v0, v42

    #@5d5
    move-object/from16 v1, p1

    #@5d7
    move/from16 v2, v43

    #@5d9
    move/from16 v3, v44

    #@5db
    invoke-static {v0, v1, v2, v3}, Lcom/android/server/wifi/WifiStateMachine;->-wrap31(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;II)V

    #@5de
    goto/16 :goto_0

    #@5e0
    .line 5577
    :cond_10
    move-object/from16 v0, p0

    #@5e2
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@5e4
    move-object/from16 v42, v0

    #@5e6
    invoke-static/range {v42 .. v42}, Lcom/android/server/wifi/WifiStateMachine;->-get74(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigManager;

    #@5e9
    move-result-object v42

    #@5ea
    move-object/from16 v0, p1

    #@5ec
    iget v0, v0, Landroid/os/Message;->arg1:I

    #@5ee
    move/from16 v43, v0

    #@5f0
    invoke-virtual/range {v42 .. v43}, Lcom/android/server/wifi/WifiConfigManager;->removeNetwork(I)Z

    #@5f3
    move-result v23

    #@5f4
    .line 5578
    .local v23, "ok":Z
    if-nez v23, :cond_11

    #@5f6
    .line 5579
    move-object/from16 v0, p0

    #@5f8
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@5fa
    move-object/from16 v42, v0

    #@5fc
    invoke-static {}, Lcom/android/server/wifi/WifiStateMachine;->-get3()I

    #@5ff
    move-result v43

    #@600
    invoke-static/range {v42 .. v43}, Lcom/android/server/wifi/WifiStateMachine;->-set39(Lcom/android/server/wifi/WifiStateMachine;I)I

    #@603
    .line 5581
    :cond_11
    move-object/from16 v0, p0

    #@605
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@607
    move-object/from16 v43, v0

    #@609
    move-object/from16 v0, p1

    #@60b
    iget v0, v0, Landroid/os/Message;->what:I

    #@60d
    move/from16 v44, v0

    #@60f
    if-eqz v23, :cond_12

    #@611
    const/16 v42, 0x1

    #@613
    :goto_2
    move-object/from16 v0, v43

    #@615
    move-object/from16 v1, p1

    #@617
    move/from16 v2, v44

    #@619
    move/from16 v3, v42

    #@61b
    invoke-static {v0, v1, v2, v3}, Lcom/android/server/wifi/WifiStateMachine;->-wrap31(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;II)V

    #@61e
    goto/16 :goto_0

    #@620
    :cond_12
    const/16 v42, -0x1

    #@622
    goto :goto_2

    #@623
    .line 5585
    .end local v19    # "netId":I
    .end local v23    # "ok":Z
    :sswitch_8
    move-object/from16 v0, p0

    #@625
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@627
    move-object/from16 v42, v0

    #@629
    invoke-static/range {v42 .. v42}, Lcom/android/server/wifi/WifiStateMachine;->-get74(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigManager;

    #@62c
    move-result-object v42

    #@62d
    .line 5586
    move-object/from16 v0, p1

    #@62f
    iget v0, v0, Landroid/os/Message;->sendingUid:I

    #@631
    move/from16 v43, v0

    #@633
    invoke-static/range {v43 .. v43}, Landroid/os/UserHandle;->getUserId(I)I

    #@636
    move-result v43

    #@637
    .line 5585
    invoke-virtual/range {v42 .. v43}, Lcom/android/server/wifi/WifiConfigManager;->isCurrentUserProfile(I)Z

    #@63a
    move-result v42

    #@63b
    if-nez v42, :cond_13

    #@63d
    .line 5587
    move-object/from16 v0, p0

    #@63f
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@641
    move-object/from16 v42, v0

    #@643
    new-instance v43, Ljava/lang/StringBuilder;

    #@645
    invoke-direct/range {v43 .. v43}, Ljava/lang/StringBuilder;-><init>()V

    #@648
    const-string/jumbo v44, "Only the current foreground user can modify networks  currentUserId="

    #@64b
    invoke-virtual/range {v43 .. v44}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@64e
    move-result-object v43

    #@64f
    .line 5588
    move-object/from16 v0, p0

    #@651
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@653
    move-object/from16 v44, v0

    #@655
    invoke-static/range {v44 .. v44}, Lcom/android/server/wifi/WifiStateMachine;->-get74(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigManager;

    #@658
    move-result-object v44

    #@659
    invoke-virtual/range {v44 .. v44}, Lcom/android/server/wifi/WifiConfigManager;->getCurrentUserId()I

    #@65c
    move-result v44

    #@65d
    .line 5587
    invoke-virtual/range {v43 .. v44}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@660
    move-result-object v43

    #@661
    .line 5589
    const-string/jumbo v44, " sendingUserId="

    #@664
    .line 5587
    invoke-virtual/range {v43 .. v44}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@667
    move-result-object v43

    #@668
    .line 5589
    move-object/from16 v0, p1

    #@66a
    iget v0, v0, Landroid/os/Message;->sendingUid:I

    #@66c
    move/from16 v44, v0

    #@66e
    invoke-static/range {v44 .. v44}, Landroid/os/UserHandle;->getUserId(I)I

    #@671
    move-result v44

    #@672
    .line 5587
    invoke-virtual/range {v43 .. v44}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@675
    move-result-object v43

    #@676
    invoke-virtual/range {v43 .. v43}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@679
    move-result-object v43

    #@67a
    invoke-virtual/range {v42 .. v43}, Lcom/android/server/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V

    #@67d
    .line 5590
    move-object/from16 v0, p0

    #@67f
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@681
    move-object/from16 v42, v0

    #@683
    move-object/from16 v0, p1

    #@685
    iget v0, v0, Landroid/os/Message;->what:I

    #@687
    move/from16 v43, v0

    #@689
    const/16 v44, -0x1

    #@68b
    move-object/from16 v0, v42

    #@68d
    move-object/from16 v1, p1

    #@68f
    move/from16 v2, v43

    #@691
    move/from16 v3, v44

    #@693
    invoke-static {v0, v1, v2, v3}, Lcom/android/server/wifi/WifiStateMachine;->-wrap31(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;II)V

    #@696
    goto/16 :goto_0

    #@698
    .line 5594
    :cond_13
    move-object/from16 v0, p1

    #@69a
    iget v0, v0, Landroid/os/Message;->arg2:I

    #@69c
    move/from16 v42, v0

    #@69e
    const/16 v43, 0x1

    #@6a0
    move/from16 v0, v42

    #@6a2
    move/from16 v1, v43

    #@6a4
    if-ne v0, v1, :cond_14

    #@6a6
    const/4 v13, 0x1

    #@6a7
    .line 5595
    .local v13, "disableOthers":Z
    :goto_3
    move-object/from16 v0, p1

    #@6a9
    iget v0, v0, Landroid/os/Message;->arg1:I

    #@6ab
    move/from16 v19, v0

    #@6ad
    .line 5596
    .restart local v19    # "netId":I
    move-object/from16 v0, p0

    #@6af
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@6b1
    move-object/from16 v42, v0

    #@6b3
    invoke-static/range {v42 .. v42}, Lcom/android/server/wifi/WifiStateMachine;->-get74(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigManager;

    #@6b6
    move-result-object v42

    #@6b7
    move-object/from16 v0, v42

    #@6b9
    move/from16 v1, v19

    #@6bb
    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiConfigManager;->getWifiConfiguration(I)Landroid/net/wifi/WifiConfiguration;

    #@6be
    move-result-object v9

    #@6bf
    .line 5597
    .restart local v9    # "config":Landroid/net/wifi/WifiConfiguration;
    if-nez v9, :cond_15

    #@6c1
    .line 5598
    move-object/from16 v0, p0

    #@6c3
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@6c5
    move-object/from16 v42, v0

    #@6c7
    new-instance v43, Ljava/lang/StringBuilder;

    #@6c9
    invoke-direct/range {v43 .. v43}, Ljava/lang/StringBuilder;-><init>()V

    #@6cc
    const-string/jumbo v44, "No network with id = "

    #@6cf
    invoke-virtual/range {v43 .. v44}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6d2
    move-result-object v43

    #@6d3
    move-object/from16 v0, v43

    #@6d5
    move/from16 v1, v19

    #@6d7
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@6da
    move-result-object v43

    #@6db
    invoke-virtual/range {v43 .. v43}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@6de
    move-result-object v43

    #@6df
    invoke-virtual/range {v42 .. v43}, Lcom/android/server/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V

    #@6e2
    .line 5599
    move-object/from16 v0, p0

    #@6e4
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@6e6
    move-object/from16 v42, v0

    #@6e8
    invoke-static {}, Lcom/android/server/wifi/WifiStateMachine;->-get3()I

    #@6eb
    move-result v43

    #@6ec
    invoke-static/range {v42 .. v43}, Lcom/android/server/wifi/WifiStateMachine;->-set39(Lcom/android/server/wifi/WifiStateMachine;I)I

    #@6ef
    .line 5600
    move-object/from16 v0, p0

    #@6f1
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@6f3
    move-object/from16 v42, v0

    #@6f5
    move-object/from16 v0, p1

    #@6f7
    iget v0, v0, Landroid/os/Message;->what:I

    #@6f9
    move/from16 v43, v0

    #@6fb
    const/16 v44, -0x1

    #@6fd
    move-object/from16 v0, v42

    #@6ff
    move-object/from16 v1, p1

    #@701
    move/from16 v2, v43

    #@703
    move/from16 v3, v44

    #@705
    invoke-static {v0, v1, v2, v3}, Lcom/android/server/wifi/WifiStateMachine;->-wrap31(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;II)V

    #@708
    goto/16 :goto_0

    #@70a
    .line 5594
    .end local v9    # "config":Landroid/net/wifi/WifiConfiguration;
    .end local v13    # "disableOthers":Z
    .end local v19    # "netId":I
    :cond_14
    const/4 v13, 0x0

    #@70b
    .restart local v13    # "disableOthers":Z
    goto :goto_3

    #@70c
    .line 5605
    .restart local v9    # "config":Landroid/net/wifi/WifiConfiguration;
    .restart local v19    # "netId":I
    :cond_15
    if-eqz v13, :cond_16

    #@70e
    .line 5607
    move-object/from16 v0, p0

    #@710
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@712
    move-object/from16 v42, v0

    #@714
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    #@717
    move-result-wide v44

    #@718
    move-object/from16 v0, v42

    #@71a
    move-wide/from16 v1, v44

    #@71c
    invoke-static {v0, v1, v2}, Lcom/android/server/wifi/WifiStateMachine;->-set1(Lcom/android/server/wifi/WifiStateMachine;J)J

    #@71f
    .line 5608
    move-object/from16 v0, p0

    #@721
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@723
    move-object/from16 v42, v0

    #@725
    invoke-static/range {v42 .. v42}, Lcom/android/server/wifi/WifiStateMachine;->-get75(Lcom/android/server/wifi/WifiStateMachine;)Landroid/net/wifi/WifiConnectionStatistics;

    #@728
    move-result-object v42

    #@729
    move-object/from16 v0, v42

    #@72b
    iget v0, v0, Landroid/net/wifi/WifiConnectionStatistics;->numWifiManagerJoinAttempt:I

    #@72d
    move/from16 v43, v0

    #@72f
    add-int/lit8 v43, v43, 0x1

    #@731
    move/from16 v0, v43

    #@733
    move-object/from16 v1, v42

    #@735
    iput v0, v1, Landroid/net/wifi/WifiConnectionStatistics;->numWifiManagerJoinAttempt:I

    #@737
    .line 5611
    :cond_16
    move-object/from16 v0, p0

    #@739
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@73b
    move-object/from16 v42, v0

    #@73d
    const-string/jumbo v43, "any"

    #@740
    move-object/from16 v0, v42

    #@742
    move/from16 v1, v19

    #@744
    move-object/from16 v2, v43

    #@746
    invoke-virtual {v0, v1, v2}, Lcom/android/server/wifi/WifiStateMachine;->autoRoamSetBSSID(ILjava/lang/String;)V

    #@749
    .line 5613
    move-object/from16 v0, p0

    #@74b
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@74d
    move-object/from16 v42, v0

    #@74f
    invoke-static/range {v42 .. v42}, Lcom/android/server/wifi/WifiStateMachine;->-get74(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigManager;

    #@752
    move-result-object v42

    #@753
    .line 5614
    move-object/from16 v0, p1

    #@755
    iget v0, v0, Landroid/os/Message;->sendingUid:I

    #@757
    move/from16 v43, v0

    #@759
    .line 5613
    move-object/from16 v0, v42

    #@75b
    move/from16 v1, v43

    #@75d
    invoke-virtual {v0, v9, v13, v1}, Lcom/android/server/wifi/WifiConfigManager;->enableNetwork(Landroid/net/wifi/WifiConfiguration;ZI)Z

    #@760
    move-result v23

    #@761
    .line 5615
    .restart local v23    # "ok":Z
    if-nez v23, :cond_17

    #@763
    .line 5616
    move-object/from16 v0, p0

    #@765
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@767
    move-object/from16 v42, v0

    #@769
    invoke-static {}, Lcom/android/server/wifi/WifiStateMachine;->-get3()I

    #@76c
    move-result v43

    #@76d
    invoke-static/range {v42 .. v43}, Lcom/android/server/wifi/WifiStateMachine;->-set39(Lcom/android/server/wifi/WifiStateMachine;I)I

    #@770
    .line 5624
    :goto_4
    move-object/from16 v0, p0

    #@772
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@774
    move-object/from16 v43, v0

    #@776
    move-object/from16 v0, p1

    #@778
    iget v0, v0, Landroid/os/Message;->what:I

    #@77a
    move/from16 v44, v0

    #@77c
    if-eqz v23, :cond_19

    #@77e
    const/16 v42, 0x1

    #@780
    :goto_5
    move-object/from16 v0, v43

    #@782
    move-object/from16 v1, p1

    #@784
    move/from16 v2, v44

    #@786
    move/from16 v3, v42

    #@788
    invoke-static {v0, v1, v2, v3}, Lcom/android/server/wifi/WifiStateMachine;->-wrap31(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;II)V

    #@78b
    goto/16 :goto_0

    #@78d
    .line 5618
    :cond_17
    if-eqz v13, :cond_18

    #@78f
    .line 5619
    move-object/from16 v0, p0

    #@791
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@793
    move-object/from16 v42, v0

    #@795
    move-object/from16 v0, v42

    #@797
    move/from16 v1, v19

    #@799
    invoke-static {v0, v1}, Lcom/android/server/wifi/WifiStateMachine;->-set30(Lcom/android/server/wifi/WifiStateMachine;I)I

    #@79c
    .line 5621
    :cond_18
    move-object/from16 v0, p0

    #@79e
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@7a0
    move-object/from16 v42, v0

    #@7a2
    invoke-static/range {v42 .. v42}, Lcom/android/server/wifi/WifiStateMachine;->-get76(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConnectivityManager;

    #@7a5
    move-result-object v42

    #@7a6
    invoke-virtual/range {v42 .. v42}, Lcom/android/server/wifi/WifiConnectivityManager;->forceConnectivityScan()V

    #@7a9
    goto :goto_4

    #@7aa
    .line 5624
    :cond_19
    const/16 v42, -0x1

    #@7ac
    goto :goto_5

    #@7ad
    .line 5627
    .end local v9    # "config":Landroid/net/wifi/WifiConfiguration;
    .end local v13    # "disableOthers":Z
    .end local v19    # "netId":I
    .end local v23    # "ok":Z
    :sswitch_9
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    #@7b0
    move-result-wide v36

    #@7b1
    .line 5628
    .local v36, "time":J
    move-object/from16 v0, p0

    #@7b3
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@7b5
    move-object/from16 v42, v0

    #@7b7
    invoke-static/range {v42 .. v42}, Lcom/android/server/wifi/WifiStateMachine;->-get32(Lcom/android/server/wifi/WifiStateMachine;)J

    #@7ba
    move-result-wide v42

    #@7bb
    sub-long v42, v36, v42

    #@7bd
    const-wide/32 v44, 0x927c0

    #@7c0
    cmp-long v42, v42, v44

    #@7c2
    if-lez v42, :cond_3

    #@7c4
    .line 5629
    move-object/from16 v0, p0

    #@7c6
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@7c8
    move-object/from16 v42, v0

    #@7ca
    invoke-static/range {v42 .. v42}, Lcom/android/server/wifi/WifiStateMachine;->-get74(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigManager;

    #@7cd
    move-result-object v42

    #@7ce
    invoke-virtual/range {v42 .. v42}, Lcom/android/server/wifi/WifiConfigManager;->enableAllNetworks()V

    #@7d1
    .line 5630
    move-object/from16 v0, p0

    #@7d3
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@7d5
    move-object/from16 v42, v0

    #@7d7
    move-object/from16 v0, v42

    #@7d9
    move-wide/from16 v1, v36

    #@7db
    invoke-static {v0, v1, v2}, Lcom/android/server/wifi/WifiStateMachine;->-set16(Lcom/android/server/wifi/WifiStateMachine;J)J

    #@7de
    goto/16 :goto_0

    #@7e0
    .line 5634
    .end local v36    # "time":J
    :sswitch_a
    move-object/from16 v0, p0

    #@7e2
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@7e4
    move-object/from16 v42, v0

    #@7e6
    invoke-static/range {v42 .. v42}, Lcom/android/server/wifi/WifiStateMachine;->-get74(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigManager;

    #@7e9
    move-result-object v42

    #@7ea
    move-object/from16 v0, p1

    #@7ec
    iget v0, v0, Landroid/os/Message;->arg1:I

    #@7ee
    move/from16 v43, v0

    #@7f0
    .line 5635
    const/16 v44, 0x9

    #@7f2
    .line 5634
    invoke-virtual/range {v42 .. v44}, Lcom/android/server/wifi/WifiConfigManager;->updateNetworkSelectionStatus(II)Z

    #@7f5
    move-result v42

    #@7f6
    if-eqz v42, :cond_1a

    #@7f8
    .line 5636
    move-object/from16 v0, p0

    #@7fa
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@7fc
    move-object/from16 v42, v0

    #@7fe
    const v43, 0x25013

    #@801
    move-object/from16 v0, v42

    #@803
    move-object/from16 v1, p1

    #@805
    move/from16 v2, v43

    #@807
    invoke-static {v0, v1, v2}, Lcom/android/server/wifi/WifiStateMachine;->-wrap30(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;I)V

    #@80a
    goto/16 :goto_0

    #@80c
    .line 5638
    :cond_1a
    move-object/from16 v0, p0

    #@80e
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@810
    move-object/from16 v42, v0

    #@812
    invoke-static {}, Lcom/android/server/wifi/WifiStateMachine;->-get3()I

    #@815
    move-result v43

    #@816
    invoke-static/range {v42 .. v43}, Lcom/android/server/wifi/WifiStateMachine;->-set39(Lcom/android/server/wifi/WifiStateMachine;I)I

    #@819
    .line 5639
    move-object/from16 v0, p0

    #@81b
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@81d
    move-object/from16 v42, v0

    #@81f
    const v43, 0x25012

    #@822
    .line 5640
    const/16 v44, 0x0

    #@824
    .line 5639
    move-object/from16 v0, v42

    #@826
    move-object/from16 v1, p1

    #@828
    move/from16 v2, v43

    #@82a
    move/from16 v3, v44

    #@82c
    invoke-static {v0, v1, v2, v3}, Lcom/android/server/wifi/WifiStateMachine;->-wrap31(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;II)V

    #@82f
    goto/16 :goto_0

    #@831
    .line 5644
    :sswitch_b
    move-object/from16 v0, p0

    #@833
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@835
    move-object/from16 v42, v0

    #@837
    invoke-static/range {v42 .. v42}, Lcom/android/server/wifi/WifiStateMachine;->-get74(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigManager;

    #@83a
    move-result-object v43

    #@83b
    move-object/from16 v0, p1

    #@83d
    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@83f
    move-object/from16 v42, v0

    #@841
    check-cast v42, Ljava/lang/String;

    #@843
    move-object/from16 v0, v43

    #@845
    move-object/from16 v1, v42

    #@847
    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiConfigManager;->disableEphemeralNetwork(Ljava/lang/String;)Landroid/net/wifi/WifiConfiguration;

    #@84a
    move-result-object v9

    #@84b
    .line 5645
    .restart local v9    # "config":Landroid/net/wifi/WifiConfiguration;
    if-eqz v9, :cond_3

    #@84d
    .line 5646
    iget v0, v9, Landroid/net/wifi/WifiConfiguration;->networkId:I

    #@84f
    move/from16 v42, v0

    #@851
    move-object/from16 v0, p0

    #@853
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@855
    move-object/from16 v43, v0

    #@857
    invoke-static/range {v43 .. v43}, Lcom/android/server/wifi/WifiStateMachine;->-get33(Lcom/android/server/wifi/WifiStateMachine;)I

    #@85a
    move-result v43

    #@85b
    move/from16 v0, v42

    #@85d
    move/from16 v1, v43

    #@85f
    if-ne v0, v1, :cond_3

    #@861
    .line 5648
    move-object/from16 v0, p0

    #@863
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@865
    move-object/from16 v42, v0

    #@867
    const v43, 0x20049

    #@86a
    invoke-virtual/range {v42 .. v43}, Lcom/android/server/wifi/WifiStateMachine;->sendMessage(I)V

    #@86d
    goto/16 :goto_0

    #@86f
    .line 5653
    .end local v9    # "config":Landroid/net/wifi/WifiConfiguration;
    :sswitch_c
    move-object/from16 v0, p0

    #@871
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@873
    move-object/from16 v42, v0

    #@875
    invoke-static/range {v42 .. v42}, Lcom/android/server/wifi/WifiStateMachine;->-get74(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigManager;

    #@878
    move-result-object v43

    #@879
    move-object/from16 v0, p1

    #@87b
    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@87d
    move-object/from16 v42, v0

    #@87f
    check-cast v42, Ljava/lang/String;

    #@881
    move-object/from16 v0, v43

    #@883
    move-object/from16 v1, v42

    #@885
    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiConfigManager;->blackListBssid(Ljava/lang/String;)V

    #@888
    goto/16 :goto_0

    #@88a
    .line 5656
    :sswitch_d
    move-object/from16 v0, p0

    #@88c
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@88e
    move-object/from16 v42, v0

    #@890
    invoke-static/range {v42 .. v42}, Lcom/android/server/wifi/WifiStateMachine;->-get74(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigManager;

    #@893
    move-result-object v42

    #@894
    invoke-virtual/range {v42 .. v42}, Lcom/android/server/wifi/WifiConfigManager;->clearBssidBlacklist()V

    #@897
    goto/16 :goto_0

    #@899
    .line 5659
    :sswitch_e
    move-object/from16 v0, p0

    #@89b
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@89d
    move-object/from16 v42, v0

    #@89f
    invoke-static/range {v42 .. v42}, Lcom/android/server/wifi/WifiStateMachine;->-get74(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigManager;

    #@8a2
    move-result-object v42

    #@8a3
    invoke-virtual/range {v42 .. v42}, Lcom/android/server/wifi/WifiConfigManager;->saveConfig()Z

    #@8a6
    move-result v23

    #@8a7
    .line 5661
    .restart local v23    # "ok":Z
    invoke-static {}, Lcom/android/server/wifi/WifiStateMachine;->-get0()Z

    #@8aa
    move-result v42

    #@8ab
    if-eqz v42, :cond_1b

    #@8ad
    move-object/from16 v0, p0

    #@8af
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@8b1
    move-object/from16 v42, v0

    #@8b3
    new-instance v43, Ljava/lang/StringBuilder;

    #@8b5
    invoke-direct/range {v43 .. v43}, Ljava/lang/StringBuilder;-><init>()V

    #@8b8
    const-string/jumbo v44, "did save config "

    #@8bb
    invoke-virtual/range {v43 .. v44}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@8be
    move-result-object v43

    #@8bf
    move-object/from16 v0, v43

    #@8c1
    move/from16 v1, v23

    #@8c3
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@8c6
    move-result-object v43

    #@8c7
    invoke-virtual/range {v43 .. v43}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@8ca
    move-result-object v43

    #@8cb
    invoke-virtual/range {v42 .. v43}, Lcom/android/server/wifi/WifiStateMachine;->logd(Ljava/lang/String;)V

    #@8ce
    .line 5662
    :cond_1b
    move-object/from16 v0, p0

    #@8d0
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@8d2
    move-object/from16 v43, v0

    #@8d4
    if-eqz v23, :cond_1c

    #@8d6
    const/16 v42, 0x1

    #@8d8
    :goto_6
    const v44, 0x2003a

    #@8db
    move-object/from16 v0, v43

    #@8dd
    move-object/from16 v1, p1

    #@8df
    move/from16 v2, v44

    #@8e1
    move/from16 v3, v42

    #@8e3
    invoke-static {v0, v1, v2, v3}, Lcom/android/server/wifi/WifiStateMachine;->-wrap31(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;II)V

    #@8e6
    .line 5665
    move-object/from16 v0, p0

    #@8e8
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@8ea
    move-object/from16 v42, v0

    #@8ec
    invoke-static/range {v42 .. v42}, Lcom/android/server/wifi/WifiStateMachine;->-get8(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/BackupManagerProxy;

    #@8ef
    move-result-object v42

    #@8f0
    invoke-virtual/range {v42 .. v42}, Lcom/android/server/wifi/BackupManagerProxy;->notifyDataChanged()V

    #@8f3
    goto/16 :goto_0

    #@8f5
    .line 5662
    :cond_1c
    const/16 v42, -0x1

    #@8f7
    goto :goto_6

    #@8f8
    .line 5668
    .end local v23    # "ok":Z
    :sswitch_f
    move-object/from16 v0, p0

    #@8fa
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@8fc
    move-object/from16 v42, v0

    #@8fe
    move-object/from16 v0, p1

    #@900
    iget v0, v0, Landroid/os/Message;->what:I

    #@902
    move/from16 v43, v0

    #@904
    .line 5669
    move-object/from16 v0, p0

    #@906
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@908
    move-object/from16 v44, v0

    #@90a
    invoke-static/range {v44 .. v44}, Lcom/android/server/wifi/WifiStateMachine;->-get74(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigManager;

    #@90d
    move-result-object v44

    #@90e
    invoke-virtual/range {v44 .. v44}, Lcom/android/server/wifi/WifiConfigManager;->getSavedNetworks()Ljava/util/List;

    #@911
    move-result-object v44

    #@912
    .line 5668
    move-object/from16 v0, v42

    #@914
    move-object/from16 v1, p1

    #@916
    move/from16 v2, v43

    #@918
    move-object/from16 v3, v44

    #@91a
    invoke-static {v0, v1, v2, v3}, Lcom/android/server/wifi/WifiStateMachine;->-wrap32(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;ILjava/lang/Object;)V

    #@91d
    goto/16 :goto_0

    #@91f
    .line 5672
    :sswitch_10
    move-object/from16 v0, p1

    #@921
    iget v0, v0, Landroid/os/Message;->arg2:I

    #@923
    move/from16 v20, v0

    #@925
    .line 5673
    .local v20, "networkId":I
    const/16 v16, 0x0

    #@927
    .line 5674
    .local v16, "identitySent":Z
    const/4 v14, -0x1

    #@928
    .line 5676
    .local v14, "eapMethod":I
    move-object/from16 v0, p0

    #@92a
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@92c
    move-object/from16 v42, v0

    #@92e
    invoke-static/range {v42 .. v42}, Lcom/android/server/wifi/WifiStateMachine;->-get91(Lcom/android/server/wifi/WifiStateMachine;)Landroid/net/wifi/WifiConfiguration;

    #@931
    move-result-object v42

    #@932
    if-eqz v42, :cond_1d

    #@934
    .line 5677
    move-object/from16 v0, p0

    #@936
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@938
    move-object/from16 v42, v0

    #@93a
    invoke-static/range {v42 .. v42}, Lcom/android/server/wifi/WifiStateMachine;->-get91(Lcom/android/server/wifi/WifiStateMachine;)Landroid/net/wifi/WifiConfiguration;

    #@93d
    move-result-object v42

    #@93e
    move-object/from16 v0, v42

    #@940
    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    #@942
    move-object/from16 v42, v0

    #@944
    if-eqz v42, :cond_1d

    #@946
    .line 5678
    move-object/from16 v0, p0

    #@948
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@94a
    move-object/from16 v42, v0

    #@94c
    invoke-static/range {v42 .. v42}, Lcom/android/server/wifi/WifiStateMachine;->-get91(Lcom/android/server/wifi/WifiStateMachine;)Landroid/net/wifi/WifiConfiguration;

    #@94f
    move-result-object v42

    #@950
    move-object/from16 v0, v42

    #@952
    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    #@954
    move-object/from16 v42, v0

    #@956
    invoke-virtual/range {v42 .. v42}, Landroid/net/wifi/WifiEnterpriseConfig;->getEapMethod()I

    #@959
    move-result v14

    #@95a
    .line 5682
    :cond_1d
    move-object/from16 v0, p0

    #@95c
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@95e
    move-object/from16 v42, v0

    #@960
    invoke-static/range {v42 .. v42}, Lcom/android/server/wifi/WifiStateMachine;->-get91(Lcom/android/server/wifi/WifiStateMachine;)Landroid/net/wifi/WifiConfiguration;

    #@963
    move-result-object v42

    #@964
    if-eqz v42, :cond_1e

    #@966
    .line 5683
    move-object/from16 v0, p0

    #@968
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@96a
    move-object/from16 v42, v0

    #@96c
    invoke-static/range {v42 .. v42}, Lcom/android/server/wifi/WifiStateMachine;->-get91(Lcom/android/server/wifi/WifiStateMachine;)Landroid/net/wifi/WifiConfiguration;

    #@96f
    move-result-object v42

    #@970
    move-object/from16 v0, v42

    #@972
    iget v0, v0, Landroid/net/wifi/WifiConfiguration;->networkId:I

    #@974
    move/from16 v42, v0

    #@976
    move/from16 v0, v42

    #@978
    move/from16 v1, v20

    #@97a
    if-ne v0, v1, :cond_1e

    #@97c
    .line 5684
    move-object/from16 v0, p0

    #@97e
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@980
    move-object/from16 v42, v0

    #@982
    invoke-static/range {v42 .. v42}, Lcom/android/server/wifi/WifiStateMachine;->-get91(Lcom/android/server/wifi/WifiStateMachine;)Landroid/net/wifi/WifiConfiguration;

    #@985
    move-result-object v42

    #@986
    move-object/from16 v0, v42

    #@988
    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    #@98a
    move-object/from16 v42, v0

    #@98c
    .line 5685
    const/16 v43, 0x3

    #@98e
    .line 5684
    invoke-virtual/range {v42 .. v43}, Ljava/util/BitSet;->get(I)Z

    #@991
    move-result v42

    #@992
    .line 5682
    if-eqz v42, :cond_1e

    #@994
    .line 5686
    invoke-static {v14}, Lcom/android/server/wifi/util/TelephonyUtil;->isSimEapMethod(I)Z

    #@997
    move-result v42

    #@998
    .line 5682
    if-eqz v42, :cond_1e

    #@99a
    .line 5687
    move-object/from16 v0, p0

    #@99c
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@99e
    move-object/from16 v42, v0

    #@9a0
    invoke-static/range {v42 .. v42}, Lcom/android/server/wifi/WifiStateMachine;->-get14(Lcom/android/server/wifi/WifiStateMachine;)Landroid/content/Context;

    #@9a3
    move-result-object v42

    #@9a4
    move-object/from16 v0, v42

    #@9a6
    invoke-static {v0, v14}, Lcom/android/server/wifi/util/TelephonyUtil;->getSimIdentity(Landroid/content/Context;I)Ljava/lang/String;

    #@9a9
    move-result-object v15

    #@9aa
    .line 5688
    .local v15, "identity":Ljava/lang/String;
    if-eqz v15, :cond_1e

    #@9ac
    .line 5689
    move-object/from16 v0, p0

    #@9ae
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@9b0
    move-object/from16 v42, v0

    #@9b2
    invoke-static/range {v42 .. v42}, Lcom/android/server/wifi/WifiStateMachine;->-get84(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiNative;

    #@9b5
    move-result-object v42

    #@9b6
    move-object/from16 v0, v42

    #@9b8
    move/from16 v1, v20

    #@9ba
    invoke-virtual {v0, v1, v15}, Lcom/android/server/wifi/WifiNative;->simIdentityResponse(ILjava/lang/String;)Z

    #@9bd
    .line 5690
    const/16 v16, 0x1

    #@9bf
    .line 5693
    .end local v15    # "identity":Ljava/lang/String;
    :cond_1e
    if-nez v16, :cond_3

    #@9c1
    .line 5695
    move-object/from16 v0, p1

    #@9c3
    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@9c5
    move-object/from16 v33, v0

    #@9c7
    check-cast v33, Ljava/lang/String;

    #@9c9
    .line 5696
    .local v33, "ssid":Ljava/lang/String;
    move-object/from16 v0, p0

    #@9cb
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@9cd
    move-object/from16 v42, v0

    #@9cf
    invoke-static/range {v42 .. v42}, Lcom/android/server/wifi/WifiStateMachine;->-get91(Lcom/android/server/wifi/WifiStateMachine;)Landroid/net/wifi/WifiConfiguration;

    #@9d2
    move-result-object v42

    #@9d3
    if-eqz v42, :cond_1f

    #@9d5
    if-eqz v33, :cond_1f

    #@9d7
    .line 5697
    move-object/from16 v0, p0

    #@9d9
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@9db
    move-object/from16 v42, v0

    #@9dd
    invoke-static/range {v42 .. v42}, Lcom/android/server/wifi/WifiStateMachine;->-get91(Lcom/android/server/wifi/WifiStateMachine;)Landroid/net/wifi/WifiConfiguration;

    #@9e0
    move-result-object v42

    #@9e1
    move-object/from16 v0, v42

    #@9e3
    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    #@9e5
    move-object/from16 v42, v0

    #@9e7
    if-eqz v42, :cond_1f

    #@9e9
    .line 5698
    move-object/from16 v0, p0

    #@9eb
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@9ed
    move-object/from16 v42, v0

    #@9ef
    invoke-static/range {v42 .. v42}, Lcom/android/server/wifi/WifiStateMachine;->-get91(Lcom/android/server/wifi/WifiStateMachine;)Landroid/net/wifi/WifiConfiguration;

    #@9f2
    move-result-object v42

    #@9f3
    move-object/from16 v0, v42

    #@9f5
    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    #@9f7
    move-object/from16 v42, v0

    #@9f9
    new-instance v43, Ljava/lang/StringBuilder;

    #@9fb
    invoke-direct/range {v43 .. v43}, Ljava/lang/StringBuilder;-><init>()V

    #@9fe
    const-string/jumbo v44, "\""

    #@a01
    invoke-virtual/range {v43 .. v44}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a04
    move-result-object v43

    #@a05
    move-object/from16 v0, v43

    #@a07
    move-object/from16 v1, v33

    #@a09
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a0c
    move-result-object v43

    #@a0d
    const-string/jumbo v44, "\""

    #@a10
    invoke-virtual/range {v43 .. v44}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a13
    move-result-object v43

    #@a14
    invoke-virtual/range {v43 .. v43}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@a17
    move-result-object v43

    #@a18
    invoke-virtual/range {v42 .. v43}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@a1b
    move-result v42

    #@a1c
    .line 5696
    if-eqz v42, :cond_1f

    #@a1e
    .line 5699
    move-object/from16 v0, p0

    #@a20
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@a22
    move-object/from16 v42, v0

    #@a24
    invoke-static/range {v42 .. v42}, Lcom/android/server/wifi/WifiStateMachine;->-get74(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigManager;

    #@a27
    move-result-object v42

    #@a28
    move-object/from16 v0, p0

    #@a2a
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@a2c
    move-object/from16 v43, v0

    #@a2e
    invoke-static/range {v43 .. v43}, Lcom/android/server/wifi/WifiStateMachine;->-get91(Lcom/android/server/wifi/WifiStateMachine;)Landroid/net/wifi/WifiConfiguration;

    #@a31
    move-result-object v43

    #@a32
    .line 5700
    const/16 v44, 0x7

    #@a34
    .line 5699
    invoke-virtual/range {v42 .. v44}, Lcom/android/server/wifi/WifiConfigManager;->updateNetworkSelectionStatus(Landroid/net/wifi/WifiConfiguration;I)Z

    #@a37
    .line 5705
    :cond_1f
    move-object/from16 v0, p0

    #@a39
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@a3b
    move-object/from16 v42, v0

    #@a3d
    invoke-static/range {v42 .. v42}, Lcom/android/server/wifi/WifiStateMachine;->-get74(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigManager;

    #@a40
    move-result-object v42

    #@a41
    .line 5706
    const/16 v43, -0x1

    #@a43
    .line 5705
    invoke-virtual/range {v42 .. v43}, Lcom/android/server/wifi/WifiConfigManager;->setAndEnableLastSelectedConfiguration(I)V

    #@a46
    .line 5707
    move-object/from16 v0, p0

    #@a48
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@a4a
    move-object/from16 v42, v0

    #@a4c
    invoke-static/range {v42 .. v42}, Lcom/android/server/wifi/WifiStateMachine;->-get84(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiNative;

    #@a4f
    move-result-object v42

    #@a50
    invoke-virtual/range {v42 .. v42}, Lcom/android/server/wifi/WifiNative;->disconnect()Z

    #@a53
    goto/16 :goto_0

    #@a55
    .line 5711
    .end local v14    # "eapMethod":I
    .end local v16    # "identitySent":Z
    .end local v20    # "networkId":I
    .end local v33    # "ssid":Ljava/lang/String;
    :sswitch_11
    move-object/from16 v0, p0

    #@a57
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@a59
    move-object/from16 v42, v0

    #@a5b
    const-string/jumbo v43, "Received SUP_REQUEST_SIM_AUTH"

    #@a5e
    invoke-virtual/range {v42 .. v43}, Lcom/android/server/wifi/WifiStateMachine;->logd(Ljava/lang/String;)V

    #@a61
    .line 5712
    move-object/from16 v0, p1

    #@a63
    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@a65
    move-object/from16 v26, v0

    #@a67
    check-cast v26, Lcom/android/server/wifi/WifiStateMachine$SimAuthRequestData;

    #@a69
    .line 5713
    .local v26, "requestData":Lcom/android/server/wifi/WifiStateMachine$SimAuthRequestData;
    if-eqz v26, :cond_22

    #@a6b
    .line 5714
    move-object/from16 v0, v26

    #@a6d
    iget v0, v0, Lcom/android/server/wifi/WifiStateMachine$SimAuthRequestData;->protocol:I

    #@a6f
    move/from16 v42, v0

    #@a71
    const/16 v43, 0x4

    #@a73
    move/from16 v0, v42

    #@a75
    move/from16 v1, v43

    #@a77
    if-ne v0, v1, :cond_20

    #@a79
    .line 5715
    move-object/from16 v0, p0

    #@a7b
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@a7d
    move-object/from16 v42, v0

    #@a7f
    move-object/from16 v0, v42

    #@a81
    move-object/from16 v1, v26

    #@a83
    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiStateMachine;->handleGsmAuthRequest(Lcom/android/server/wifi/WifiStateMachine$SimAuthRequestData;)V

    #@a86
    goto/16 :goto_0

    #@a88
    .line 5716
    :cond_20
    move-object/from16 v0, v26

    #@a8a
    iget v0, v0, Lcom/android/server/wifi/WifiStateMachine$SimAuthRequestData;->protocol:I

    #@a8c
    move/from16 v42, v0

    #@a8e
    const/16 v43, 0x5

    #@a90
    move/from16 v0, v42

    #@a92
    move/from16 v1, v43

    #@a94
    if-eq v0, v1, :cond_21

    #@a96
    .line 5717
    move-object/from16 v0, v26

    #@a98
    iget v0, v0, Lcom/android/server/wifi/WifiStateMachine$SimAuthRequestData;->protocol:I

    #@a9a
    move/from16 v42, v0

    #@a9c
    const/16 v43, 0x6

    #@a9e
    move/from16 v0, v42

    #@aa0
    move/from16 v1, v43

    #@aa2
    if-ne v0, v1, :cond_3

    #@aa4
    .line 5718
    :cond_21
    move-object/from16 v0, p0

    #@aa6
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@aa8
    move-object/from16 v42, v0

    #@aaa
    move-object/from16 v0, v42

    #@aac
    move-object/from16 v1, v26

    #@aae
    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiStateMachine;->handle3GAuthRequest(Lcom/android/server/wifi/WifiStateMachine$SimAuthRequestData;)V

    #@ab1
    goto/16 :goto_0

    #@ab3
    .line 5721
    :cond_22
    move-object/from16 v0, p0

    #@ab5
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@ab7
    move-object/from16 v42, v0

    #@ab9
    const-string/jumbo v43, "Invalid sim auth request"

    #@abc
    invoke-virtual/range {v42 .. v43}, Lcom/android/server/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V

    #@abf
    goto/16 :goto_0

    #@ac1
    .line 5725
    .end local v26    # "requestData":Lcom/android/server/wifi/WifiStateMachine$SimAuthRequestData;
    :sswitch_12
    move-object/from16 v0, p0

    #@ac3
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@ac5
    move-object/from16 v42, v0

    #@ac7
    move-object/from16 v0, p1

    #@ac9
    iget v0, v0, Landroid/os/Message;->what:I

    #@acb
    move/from16 v43, v0

    #@acd
    .line 5726
    move-object/from16 v0, p0

    #@acf
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@ad1
    move-object/from16 v44, v0

    #@ad3
    invoke-static/range {v44 .. v44}, Lcom/android/server/wifi/WifiStateMachine;->-get74(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigManager;

    #@ad6
    move-result-object v44

    #@ad7
    invoke-virtual/range {v44 .. v44}, Lcom/android/server/wifi/WifiConfigManager;->getPrivilegedSavedNetworks()Ljava/util/List;

    #@ada
    move-result-object v44

    #@adb
    .line 5725
    move-object/from16 v0, v42

    #@add
    move-object/from16 v1, p1

    #@adf
    move/from16 v2, v43

    #@ae1
    move-object/from16 v3, v44

    #@ae3
    invoke-static {v0, v1, v2, v3}, Lcom/android/server/wifi/WifiStateMachine;->-wrap32(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;ILjava/lang/Object;)V

    #@ae6
    goto/16 :goto_0

    #@ae8
    .line 5729
    :sswitch_13
    move-object/from16 v0, p0

    #@aea
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@aec
    move-object/from16 v43, v0

    #@aee
    move-object/from16 v0, p1

    #@af0
    iget v0, v0, Landroid/os/Message;->what:I

    #@af2
    move/from16 v44, v0

    #@af4
    .line 5730
    move-object/from16 v0, p0

    #@af6
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@af8
    move-object/from16 v42, v0

    #@afa
    invoke-static/range {v42 .. v42}, Lcom/android/server/wifi/WifiStateMachine;->-get74(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigManager;

    #@afd
    move-result-object v45

    #@afe
    move-object/from16 v0, p1

    #@b00
    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@b02
    move-object/from16 v42, v0

    #@b04
    check-cast v42, Landroid/net/wifi/ScanResult;

    #@b06
    move-object/from16 v0, v45

    #@b08
    move-object/from16 v1, v42

    #@b0a
    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiConfigManager;->getMatchingConfig(Landroid/net/wifi/ScanResult;)Landroid/net/wifi/WifiConfiguration;

    #@b0d
    move-result-object v42

    #@b0e
    .line 5729
    move-object/from16 v0, v43

    #@b10
    move-object/from16 v1, p1

    #@b12
    move/from16 v2, v44

    #@b14
    move-object/from16 v3, v42

    #@b16
    invoke-static {v0, v1, v2, v3}, Lcom/android/server/wifi/WifiStateMachine;->-wrap32(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;ILjava/lang/Object;)V

    #@b19
    goto/16 :goto_0

    #@b1b
    .line 5733
    :sswitch_14
    move-object/from16 v0, p0

    #@b1d
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@b1f
    move-object/from16 v42, v0

    #@b21
    invoke-static/range {v42 .. v42}, Lcom/android/server/wifi/WifiStateMachine;->-get76(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConnectivityManager;

    #@b24
    move-result-object v42

    #@b25
    if-eqz v42, :cond_3

    #@b27
    .line 5734
    move-object/from16 v0, p0

    #@b29
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@b2b
    move-object/from16 v42, v0

    #@b2d
    invoke-static/range {v42 .. v42}, Lcom/android/server/wifi/WifiStateMachine;->-get76(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConnectivityManager;

    #@b30
    move-result-object v42

    #@b31
    invoke-virtual/range {v42 .. v42}, Lcom/android/server/wifi/WifiConnectivityManager;->forceConnectivityScan()V

    #@b34
    goto/16 :goto_0

    #@b36
    .line 5738
    :sswitch_15
    move-object/from16 v0, p0

    #@b38
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@b3a
    move-object/from16 v42, v0

    #@b3c
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    #@b3f
    move-result-wide v44

    #@b40
    move-object/from16 v0, v42

    #@b42
    move-wide/from16 v1, v44

    #@b44
    invoke-static {v0, v1, v2}, Lcom/android/server/wifi/WifiStateMachine;->-set1(Lcom/android/server/wifi/WifiStateMachine;J)J

    #@b47
    .line 5739
    move-object/from16 v0, p0

    #@b49
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@b4b
    move-object/from16 v42, v0

    #@b4d
    invoke-static/range {v42 .. v42}, Lcom/android/server/wifi/WifiStateMachine;->-get84(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiNative;

    #@b50
    move-result-object v42

    #@b51
    invoke-virtual/range {v42 .. v42}, Lcom/android/server/wifi/WifiNative;->reassociate()Z

    #@b54
    goto/16 :goto_0

    #@b56
    .line 5742
    :sswitch_16
    move-object/from16 v0, p0

    #@b58
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@b5a
    move-object/from16 v42, v0

    #@b5c
    invoke-static/range {v42 .. v42}, Lcom/android/server/wifi/WifiStateMachine;->-get74(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigManager;

    #@b5f
    move-result-object v42

    #@b60
    invoke-virtual/range {v42 .. v42}, Lcom/android/server/wifi/WifiConfigManager;->needsUnlockedKeyStore()Z

    #@b63
    move-result v42

    #@b64
    if-eqz v42, :cond_3

    #@b66
    .line 5743
    move-object/from16 v0, p0

    #@b68
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@b6a
    move-object/from16 v42, v0

    #@b6c
    const-string/jumbo v43, "Reconnecting to give a chance to un-connected TLS networks"

    #@b6f
    invoke-virtual/range {v42 .. v43}, Lcom/android/server/wifi/WifiStateMachine;->logd(Ljava/lang/String;)V

    #@b72
    .line 5744
    move-object/from16 v0, p0

    #@b74
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@b76
    move-object/from16 v42, v0

    #@b78
    invoke-static/range {v42 .. v42}, Lcom/android/server/wifi/WifiStateMachine;->-get84(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiNative;

    #@b7b
    move-result-object v42

    #@b7c
    invoke-virtual/range {v42 .. v42}, Lcom/android/server/wifi/WifiNative;->disconnect()Z

    #@b7f
    .line 5745
    move-object/from16 v0, p0

    #@b81
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@b83
    move-object/from16 v42, v0

    #@b85
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    #@b88
    move-result-wide v44

    #@b89
    move-object/from16 v0, v42

    #@b8b
    move-wide/from16 v1, v44

    #@b8d
    invoke-static {v0, v1, v2}, Lcom/android/server/wifi/WifiStateMachine;->-set1(Lcom/android/server/wifi/WifiStateMachine;J)J

    #@b90
    .line 5746
    move-object/from16 v0, p0

    #@b92
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@b94
    move-object/from16 v42, v0

    #@b96
    invoke-static/range {v42 .. v42}, Lcom/android/server/wifi/WifiStateMachine;->-get84(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiNative;

    #@b99
    move-result-object v42

    #@b9a
    invoke-virtual/range {v42 .. v42}, Lcom/android/server/wifi/WifiNative;->reconnect()Z

    #@b9d
    goto/16 :goto_0

    #@b9f
    .line 5750
    :sswitch_17
    move-object/from16 v0, p0

    #@ba1
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@ba3
    move-object/from16 v42, v0

    #@ba5
    invoke-static {}, Lcom/android/server/wifi/WifiStateMachine;->-get2()I

    #@ba8
    move-result v43

    #@ba9
    invoke-static/range {v42 .. v43}, Lcom/android/server/wifi/WifiStateMachine;->-set39(Lcom/android/server/wifi/WifiStateMachine;I)I

    #@bac
    .line 5751
    const/16 v42, 0x1

    #@bae
    return v42

    #@baf
    .line 5761
    :sswitch_18
    const/4 v12, 0x0

    #@bb0
    .line 5762
    .local v12, "didDisconnect":Z
    move-object/from16 v0, p0

    #@bb2
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@bb4
    move-object/from16 v42, v0

    #@bb6
    invoke-static/range {v42 .. v42}, Lcom/android/server/wifi/WifiStateMachine;->-wrap9(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/internal/util/IState;

    #@bb9
    move-result-object v42

    #@bba
    move-object/from16 v0, p0

    #@bbc
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@bbe
    move-object/from16 v43, v0

    #@bc0
    invoke-static/range {v43 .. v43}, Lcom/android/server/wifi/WifiStateMachine;->-get16(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/internal/util/State;

    #@bc3
    move-result-object v43

    #@bc4
    move-object/from16 v0, v42

    #@bc6
    move-object/from16 v1, v43

    #@bc8
    if-eq v0, v1, :cond_23

    #@bca
    .line 5766
    const/4 v12, 0x1

    #@bcb
    .line 5767
    move-object/from16 v0, p0

    #@bcd
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@bcf
    move-object/from16 v42, v0

    #@bd1
    invoke-static/range {v42 .. v42}, Lcom/android/server/wifi/WifiStateMachine;->-get84(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiNative;

    #@bd4
    move-result-object v42

    #@bd5
    invoke-virtual/range {v42 .. v42}, Lcom/android/server/wifi/WifiNative;->disconnect()Z

    #@bd8
    .line 5771
    :cond_23
    move-object/from16 v0, p1

    #@bda
    iget v0, v0, Landroid/os/Message;->arg1:I

    #@bdc
    move/from16 v19, v0

    #@bde
    .line 5772
    .restart local v19    # "netId":I
    move-object/from16 v0, p0

    #@be0
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@be2
    move-object/from16 v42, v0

    #@be4
    move-object/from16 v0, v42

    #@be6
    move/from16 v1, v19

    #@be8
    invoke-static {v0, v1}, Lcom/android/server/wifi/WifiStateMachine;->-set30(Lcom/android/server/wifi/WifiStateMachine;I)I

    #@beb
    .line 5773
    move-object/from16 v0, p0

    #@bed
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@bef
    move-object/from16 v43, v0

    #@bf1
    move-object/from16 v0, p1

    #@bf3
    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@bf5
    move-object/from16 v42, v0

    #@bf7
    check-cast v42, Ljava/lang/String;

    #@bf9
    move-object/from16 v0, v43

    #@bfb
    move-object/from16 v1, v42

    #@bfd
    invoke-static {v0, v1}, Lcom/android/server/wifi/WifiStateMachine;->-set31(Lcom/android/server/wifi/WifiStateMachine;Ljava/lang/String;)Ljava/lang/String;

    #@c00
    .line 5774
    move-object/from16 v0, p0

    #@c02
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@c04
    move-object/from16 v42, v0

    #@c06
    invoke-static/range {v42 .. v42}, Lcom/android/server/wifi/WifiStateMachine;->-get74(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigManager;

    #@c09
    move-result-object v42

    #@c0a
    move-object/from16 v0, v42

    #@c0c
    move/from16 v1, v19

    #@c0e
    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiConfigManager;->getWifiConfiguration(I)Landroid/net/wifi/WifiConfiguration;

    #@c11
    move-result-object v9

    #@c12
    .line 5775
    .restart local v9    # "config":Landroid/net/wifi/WifiConfiguration;
    move-object/from16 v0, p0

    #@c14
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@c16
    move-object/from16 v42, v0

    #@c18
    new-instance v43, Ljava/lang/StringBuilder;

    #@c1a
    invoke-direct/range {v43 .. v43}, Ljava/lang/StringBuilder;-><init>()V

    #@c1d
    const-string/jumbo v44, "CMD_AUTO_CONNECT sup state "

    #@c20
    invoke-virtual/range {v43 .. v44}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@c23
    move-result-object v43

    #@c24
    .line 5776
    move-object/from16 v0, p0

    #@c26
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@c28
    move-object/from16 v44, v0

    #@c2a
    invoke-static/range {v44 .. v44}, Lcom/android/server/wifi/WifiStateMachine;->-get59(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/SupplicantStateTracker;

    #@c2d
    move-result-object v44

    #@c2e
    invoke-virtual/range {v44 .. v44}, Lcom/android/server/wifi/SupplicantStateTracker;->getSupplicantStateName()Ljava/lang/String;

    #@c31
    move-result-object v44

    #@c32
    .line 5775
    invoke-virtual/range {v43 .. v44}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@c35
    move-result-object v43

    #@c36
    .line 5777
    const-string/jumbo v44, " my state "

    #@c39
    .line 5775
    invoke-virtual/range {v43 .. v44}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@c3c
    move-result-object v43

    #@c3d
    .line 5777
    move-object/from16 v0, p0

    #@c3f
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@c41
    move-object/from16 v44, v0

    #@c43
    invoke-static/range {v44 .. v44}, Lcom/android/server/wifi/WifiStateMachine;->-wrap9(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/internal/util/IState;

    #@c46
    move-result-object v44

    #@c47
    invoke-interface/range {v44 .. v44}, Lcom/android/internal/util/IState;->getName()Ljava/lang/String;

    #@c4a
    move-result-object v44

    #@c4b
    .line 5775
    invoke-virtual/range {v43 .. v44}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@c4e
    move-result-object v43

    #@c4f
    .line 5778
    const-string/jumbo v44, " nid="

    #@c52
    .line 5775
    invoke-virtual/range {v43 .. v44}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@c55
    move-result-object v43

    #@c56
    .line 5778
    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    #@c59
    move-result-object v44

    #@c5a
    .line 5775
    invoke-virtual/range {v43 .. v44}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@c5d
    move-result-object v43

    #@c5e
    .line 5779
    const-string/jumbo v44, " roam="

    #@c61
    .line 5775
    invoke-virtual/range {v43 .. v44}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@c64
    move-result-object v43

    #@c65
    .line 5779
    move-object/from16 v0, p0

    #@c67
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@c69
    move-object/from16 v44, v0

    #@c6b
    invoke-static/range {v44 .. v44}, Lcom/android/server/wifi/WifiStateMachine;->-get7(Lcom/android/server/wifi/WifiStateMachine;)Z

    #@c6e
    move-result v44

    #@c6f
    invoke-static/range {v44 .. v44}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    #@c72
    move-result-object v44

    #@c73
    .line 5775
    invoke-virtual/range {v43 .. v44}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@c76
    move-result-object v43

    #@c77
    invoke-virtual/range {v43 .. v43}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@c7a
    move-result-object v43

    #@c7b
    invoke-virtual/range {v42 .. v43}, Lcom/android/server/wifi/WifiStateMachine;->logd(Ljava/lang/String;)V

    #@c7e
    .line 5780
    if-nez v9, :cond_24

    #@c80
    .line 5781
    move-object/from16 v0, p0

    #@c82
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@c84
    move-object/from16 v42, v0

    #@c86
    const-string/jumbo v43, "AUTO_CONNECT and no config, bail out..."

    #@c89
    invoke-virtual/range {v42 .. v43}, Lcom/android/server/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V

    #@c8c
    goto/16 :goto_0

    #@c8e
    .line 5786
    :cond_24
    move-object/from16 v0, p0

    #@c90
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@c92
    move-object/from16 v42, v0

    #@c94
    move-object/from16 v0, p0

    #@c96
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@c98
    move-object/from16 v43, v0

    #@c9a
    invoke-static/range {v43 .. v43}, Lcom/android/server/wifi/WifiStateMachine;->-get66(Lcom/android/server/wifi/WifiStateMachine;)Ljava/lang/String;

    #@c9d
    move-result-object v43

    #@c9e
    move-object/from16 v0, v42

    #@ca0
    move-object/from16 v1, v43

    #@ca2
    invoke-static {v0, v9, v1}, Lcom/android/server/wifi/WifiStateMachine;->-wrap6(Lcom/android/server/wifi/WifiStateMachine;Landroid/net/wifi/WifiConfiguration;Ljava/lang/String;)Z

    #@ca5
    .line 5789
    move-object/from16 v0, p0

    #@ca7
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@ca9
    move-object/from16 v42, v0

    #@cab
    new-instance v43, Ljava/lang/StringBuilder;

    #@cad
    invoke-direct/range {v43 .. v43}, Ljava/lang/StringBuilder;-><init>()V

    #@cb0
    const-string/jumbo v44, "CMD_AUTO_CONNECT will save config -> "

    #@cb3
    invoke-virtual/range {v43 .. v44}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@cb6
    move-result-object v43

    #@cb7
    iget-object v0, v9, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    #@cb9
    move-object/from16 v44, v0

    #@cbb
    invoke-virtual/range {v43 .. v44}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@cbe
    move-result-object v43

    #@cbf
    .line 5790
    const-string/jumbo v44, " nid="

    #@cc2
    .line 5789
    invoke-virtual/range {v43 .. v44}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@cc5
    move-result-object v43

    #@cc6
    .line 5790
    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    #@cc9
    move-result-object v44

    #@cca
    .line 5789
    invoke-virtual/range {v43 .. v44}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@ccd
    move-result-object v43

    #@cce
    invoke-virtual/range {v43 .. v43}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@cd1
    move-result-object v43

    #@cd2
    invoke-virtual/range {v42 .. v43}, Lcom/android/server/wifi/WifiStateMachine;->logd(Ljava/lang/String;)V

    #@cd5
    .line 5791
    move-object/from16 v0, p0

    #@cd7
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@cd9
    move-object/from16 v42, v0

    #@cdb
    invoke-static/range {v42 .. v42}, Lcom/android/server/wifi/WifiStateMachine;->-get74(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigManager;

    #@cde
    move-result-object v42

    #@cdf
    const/16 v43, -0x1

    #@ce1
    move-object/from16 v0, v42

    #@ce3
    move/from16 v1, v43

    #@ce5
    invoke-virtual {v0, v9, v1}, Lcom/android/server/wifi/WifiConfigManager;->saveNetwork(Landroid/net/wifi/WifiConfiguration;I)Lcom/android/server/wifi/NetworkUpdateResult;

    #@ce8
    move-result-object v28

    #@ce9
    .line 5792
    .local v28, "result":Lcom/android/server/wifi/NetworkUpdateResult;
    invoke-virtual/range {v28 .. v28}, Lcom/android/server/wifi/NetworkUpdateResult;->getNetworkId()I

    #@cec
    move-result v19

    #@ced
    .line 5793
    move-object/from16 v0, p0

    #@cef
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@cf1
    move-object/from16 v42, v0

    #@cf3
    new-instance v43, Ljava/lang/StringBuilder;

    #@cf5
    invoke-direct/range {v43 .. v43}, Ljava/lang/StringBuilder;-><init>()V

    #@cf8
    const-string/jumbo v44, "CMD_AUTO_CONNECT did save config ->  nid="

    #@cfb
    invoke-virtual/range {v43 .. v44}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@cfe
    move-result-object v43

    #@cff
    .line 5794
    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    #@d02
    move-result-object v44

    #@d03
    .line 5793
    invoke-virtual/range {v43 .. v44}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@d06
    move-result-object v43

    #@d07
    invoke-virtual/range {v43 .. v43}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@d0a
    move-result-object v43

    #@d0b
    invoke-virtual/range {v42 .. v43}, Lcom/android/server/wifi/WifiStateMachine;->logd(Ljava/lang/String;)V

    #@d0e
    .line 5797
    move-object/from16 v0, p0

    #@d10
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@d12
    move-object/from16 v42, v0

    #@d14
    invoke-static/range {v42 .. v42}, Lcom/android/server/wifi/WifiStateMachine;->-get74(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigManager;

    #@d17
    move-result-object v42

    #@d18
    move-object/from16 v0, v42

    #@d1a
    move/from16 v1, v19

    #@d1c
    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiConfigManager;->getWifiConfiguration(I)Landroid/net/wifi/WifiConfiguration;

    #@d1f
    move-result-object v9

    #@d20
    .line 5798
    if-nez v9, :cond_25

    #@d22
    .line 5799
    move-object/from16 v0, p0

    #@d24
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@d26
    move-object/from16 v42, v0

    #@d28
    const-string/jumbo v43, "CMD_AUTO_CONNECT couldn\'t update the config, got null config"

    #@d2b
    invoke-virtual/range {v42 .. v43}, Lcom/android/server/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V

    #@d2e
    goto/16 :goto_0

    #@d30
    .line 5802
    :cond_25
    iget v0, v9, Landroid/net/wifi/WifiConfiguration;->networkId:I

    #@d32
    move/from16 v42, v0

    #@d34
    move/from16 v0, v19

    #@d36
    move/from16 v1, v42

    #@d38
    if-eq v0, v1, :cond_26

    #@d3a
    .line 5803
    move-object/from16 v0, p0

    #@d3c
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@d3e
    move-object/from16 v42, v0

    #@d40
    new-instance v43, Ljava/lang/StringBuilder;

    #@d42
    invoke-direct/range {v43 .. v43}, Ljava/lang/StringBuilder;-><init>()V

    #@d45
    const-string/jumbo v44, "CMD_AUTO_CONNECT couldn\'t update the config, want nid="

    #@d48
    invoke-virtual/range {v43 .. v44}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@d4b
    move-result-object v43

    #@d4c
    .line 5804
    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    #@d4f
    move-result-object v44

    #@d50
    .line 5803
    invoke-virtual/range {v43 .. v44}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@d53
    move-result-object v43

    #@d54
    .line 5804
    const-string/jumbo v44, " but got"

    #@d57
    .line 5803
    invoke-virtual/range {v43 .. v44}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@d5a
    move-result-object v43

    #@d5b
    .line 5804
    iget v0, v9, Landroid/net/wifi/WifiConfiguration;->networkId:I

    #@d5d
    move/from16 v44, v0

    #@d5f
    .line 5803
    invoke-virtual/range {v43 .. v44}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@d62
    move-result-object v43

    #@d63
    invoke-virtual/range {v43 .. v43}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@d66
    move-result-object v43

    #@d67
    invoke-virtual/range {v42 .. v43}, Lcom/android/server/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V

    #@d6a
    goto/16 :goto_0

    #@d6c
    .line 5808
    :cond_26
    move-object/from16 v0, p0

    #@d6e
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@d70
    move-object/from16 v42, v0

    #@d72
    const/16 v43, 0x0

    #@d74
    move-object/from16 v0, v42

    #@d76
    move-object/from16 v1, p1

    #@d78
    move/from16 v2, v19

    #@d7a
    move/from16 v3, v43

    #@d7c
    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/wifi/WifiStateMachine;->deferForUserInput(Landroid/os/Message;IZ)Z

    #@d7f
    move-result v42

    #@d80
    if-nez v42, :cond_3

    #@d82
    .line 5810
    move-object/from16 v0, p0

    #@d84
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@d86
    move-object/from16 v42, v0

    #@d88
    invoke-static/range {v42 .. v42}, Lcom/android/server/wifi/WifiStateMachine;->-get74(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigManager;

    #@d8b
    move-result-object v42

    #@d8c
    move-object/from16 v0, v42

    #@d8e
    move/from16 v1, v19

    #@d90
    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiConfigManager;->getWifiConfiguration(I)Landroid/net/wifi/WifiConfiguration;

    #@d93
    move-result-object v42

    #@d94
    move-object/from16 v0, v42

    #@d96
    iget v0, v0, Landroid/net/wifi/WifiConfiguration;->userApproved:I

    #@d98
    move/from16 v42, v0

    #@d9a
    .line 5811
    const/16 v43, 0x2

    #@d9c
    .line 5810
    move/from16 v0, v42

    #@d9e
    move/from16 v1, v43

    #@da0
    if-ne v0, v1, :cond_27

    #@da2
    .line 5812
    move-object/from16 v0, p0

    #@da4
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@da6
    move-object/from16 v42, v0

    #@da8
    const v43, 0x25002

    #@dab
    .line 5813
    const/16 v44, 0x9

    #@dad
    .line 5812
    move-object/from16 v0, v42

    #@daf
    move-object/from16 v1, p1

    #@db1
    move/from16 v2, v43

    #@db3
    move/from16 v3, v44

    #@db5
    invoke-static {v0, v1, v2, v3}, Lcom/android/server/wifi/WifiStateMachine;->-wrap31(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;II)V

    #@db8
    goto/16 :goto_0

    #@dba
    .line 5821
    :cond_27
    const/16 v17, -0x1

    #@dbc
    .line 5825
    .local v17, "lastConnectUid":I
    move-object/from16 v0, p0

    #@dbe
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@dc0
    move-object/from16 v42, v0

    #@dc2
    invoke-static/range {v42 .. v42}, Lcom/android/server/wifi/WifiStateMachine;->-get82(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiMetrics;

    #@dc5
    move-result-object v42

    #@dc6
    move-object/from16 v0, p0

    #@dc8
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@dca
    move-object/from16 v43, v0

    #@dcc
    invoke-static/range {v43 .. v43}, Lcom/android/server/wifi/WifiStateMachine;->-get66(Lcom/android/server/wifi/WifiStateMachine;)Ljava/lang/String;

    #@dcf
    move-result-object v43

    #@dd0
    .line 5826
    const/16 v44, 0x5

    #@dd2
    .line 5825
    move-object/from16 v0, v42

    #@dd4
    move-object/from16 v1, v43

    #@dd6
    move/from16 v2, v44

    #@dd8
    invoke-virtual {v0, v9, v1, v2}, Lcom/android/server/wifi/WifiMetrics;->startConnectionEvent(Landroid/net/wifi/WifiConfiguration;Ljava/lang/String;I)V

    #@ddb
    .line 5827
    if-nez v12, :cond_28

    #@ddd
    .line 5829
    move-object/from16 v0, p0

    #@ddf
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@de1
    move-object/from16 v42, v0

    #@de3
    invoke-static/range {v42 .. v42}, Lcom/android/server/wifi/WifiStateMachine;->-get82(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiMetrics;

    #@de6
    move-result-object v42

    #@de7
    .line 5830
    const/16 v43, 0x1

    #@de9
    .line 5829
    invoke-virtual/range {v42 .. v43}, Lcom/android/server/wifi/WifiMetrics;->setConnectionEventRoamType(I)V

    #@dec
    .line 5833
    :cond_28
    move-object/from16 v0, p0

    #@dee
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@df0
    move-object/from16 v42, v0

    #@df2
    invoke-static/range {v42 .. v42}, Lcom/android/server/wifi/WifiStateMachine;->-get74(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigManager;

    #@df5
    move-result-object v42

    #@df6
    move-object/from16 v0, v42

    #@df8
    invoke-virtual {v0, v9}, Lcom/android/server/wifi/WifiConfigManager;->isLastSelectedConfiguration(Landroid/net/wifi/WifiConfiguration;)Z

    #@dfb
    move-result v42

    #@dfc
    if-eqz v42, :cond_29

    #@dfe
    .line 5834
    move-object/from16 v0, p0

    #@e00
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@e02
    move-object/from16 v42, v0

    #@e04
    invoke-static/range {v42 .. v42}, Lcom/android/server/wifi/WifiStateMachine;->-get74(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigManager;

    #@e07
    move-result-object v42

    #@e08
    .line 5835
    iget v0, v9, Landroid/net/wifi/WifiConfiguration;->lastConnectUid:I

    #@e0a
    move/from16 v43, v0

    #@e0c
    invoke-static/range {v43 .. v43}, Landroid/os/UserHandle;->getUserId(I)I

    #@e0f
    move-result v43

    #@e10
    .line 5834
    invoke-virtual/range {v42 .. v43}, Lcom/android/server/wifi/WifiConfigManager;->isCurrentUserProfile(I)Z

    #@e13
    move-result v42

    #@e14
    .line 5833
    if-eqz v42, :cond_29

    #@e16
    .line 5836
    iget v0, v9, Landroid/net/wifi/WifiConfiguration;->lastConnectUid:I

    #@e18
    move/from16 v17, v0

    #@e1a
    .line 5837
    move-object/from16 v0, p0

    #@e1c
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@e1e
    move-object/from16 v42, v0

    #@e20
    invoke-static/range {v42 .. v42}, Lcom/android/server/wifi/WifiStateMachine;->-get82(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiMetrics;

    #@e23
    move-result-object v42

    #@e24
    .line 5838
    const/16 v43, 0x4

    #@e26
    .line 5837
    invoke-virtual/range {v42 .. v43}, Lcom/android/server/wifi/WifiMetrics;->setConnectionEventRoamType(I)V

    #@e29
    .line 5840
    :cond_29
    move-object/from16 v0, p0

    #@e2b
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@e2d
    move-object/from16 v42, v0

    #@e2f
    invoke-static/range {v42 .. v42}, Lcom/android/server/wifi/WifiStateMachine;->-get74(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigManager;

    #@e32
    move-result-object v42

    #@e33
    const/16 v43, 0x0

    #@e35
    move-object/from16 v0, v42

    #@e37
    move/from16 v1, v43

    #@e39
    move/from16 v2, v17

    #@e3b
    invoke-virtual {v0, v9, v1, v2}, Lcom/android/server/wifi/WifiConfigManager;->selectNetwork(Landroid/net/wifi/WifiConfiguration;ZI)Z

    #@e3e
    move-result v42

    #@e3f
    if-eqz v42, :cond_2e

    #@e41
    .line 5841
    move-object/from16 v0, p0

    #@e43
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@e45
    move-object/from16 v42, v0

    #@e47
    invoke-static/range {v42 .. v42}, Lcom/android/server/wifi/WifiStateMachine;->-get84(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiNative;

    #@e4a
    move-result-object v42

    #@e4b
    invoke-virtual/range {v42 .. v42}, Lcom/android/server/wifi/WifiNative;->reconnect()Z

    #@e4e
    move-result v42

    #@e4f
    .line 5840
    if-eqz v42, :cond_2e

    #@e51
    .line 5842
    move-object/from16 v0, p0

    #@e53
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@e55
    move-object/from16 v42, v0

    #@e57
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    #@e5a
    move-result-wide v44

    #@e5b
    move-object/from16 v0, v42

    #@e5d
    move-wide/from16 v1, v44

    #@e5f
    invoke-static {v0, v1, v2}, Lcom/android/server/wifi/WifiStateMachine;->-set1(Lcom/android/server/wifi/WifiStateMachine;J)J

    #@e62
    .line 5843
    move-object/from16 v0, p0

    #@e64
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@e66
    move-object/from16 v42, v0

    #@e68
    move-object/from16 v0, p0

    #@e6a
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@e6c
    move-object/from16 v43, v0

    #@e6e
    invoke-static/range {v43 .. v43}, Lcom/android/server/wifi/WifiStateMachine;->-get74(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigManager;

    #@e71
    move-result-object v43

    #@e72
    move-object/from16 v0, v43

    #@e74
    move/from16 v1, v19

    #@e76
    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiConfigManager;->getWifiConfiguration(I)Landroid/net/wifi/WifiConfiguration;

    #@e79
    move-result-object v43

    #@e7a
    invoke-static/range {v42 .. v43}, Lcom/android/server/wifi/WifiStateMachine;->-set40(Lcom/android/server/wifi/WifiStateMachine;Landroid/net/wifi/WifiConfiguration;)Landroid/net/wifi/WifiConfiguration;

    #@e7d
    .line 5844
    move-object/from16 v0, p0

    #@e7f
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@e81
    move-object/from16 v42, v0

    #@e83
    invoke-static/range {v42 .. v42}, Lcom/android/server/wifi/WifiStateMachine;->-get74(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigManager;

    #@e86
    move-result-object v42

    #@e87
    move-object/from16 v0, v42

    #@e89
    move/from16 v1, v19

    #@e8b
    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiConfigManager;->getWifiConfiguration(I)Landroid/net/wifi/WifiConfiguration;

    #@e8e
    move-result-object v9

    #@e8f
    .line 5845
    if-eqz v9, :cond_2a

    #@e91
    .line 5846
    move-object/from16 v0, p0

    #@e93
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@e95
    move-object/from16 v42, v0

    #@e97
    invoke-static/range {v42 .. v42}, Lcom/android/server/wifi/WifiStateMachine;->-get74(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigManager;

    #@e9a
    move-result-object v42

    #@e9b
    move-object/from16 v0, v42

    #@e9d
    invoke-virtual {v0, v9}, Lcom/android/server/wifi/WifiConfigManager;->isLastSelectedConfiguration(Landroid/net/wifi/WifiConfiguration;)Z

    #@ea0
    move-result v42

    #@ea1
    if-eqz v42, :cond_2c

    #@ea3
    .line 5863
    :cond_2a
    :goto_7
    move-object/from16 v0, p0

    #@ea5
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@ea7
    move-object/from16 v42, v0

    #@ea9
    const/16 v43, 0x0

    #@eab
    invoke-static/range {v42 .. v43}, Lcom/android/server/wifi/WifiStateMachine;->-set5(Lcom/android/server/wifi/WifiStateMachine;Z)Z

    #@eae
    .line 5864
    move-object/from16 v0, p0

    #@eb0
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@eb2
    move-object/from16 v42, v0

    #@eb4
    invoke-virtual/range {v42 .. v42}, Lcom/android/server/wifi/WifiStateMachine;->isRoaming()Z

    #@eb7
    move-result v42

    #@eb8
    if-nez v42, :cond_2b

    #@eba
    move-object/from16 v0, p0

    #@ebc
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@ebe
    move-object/from16 v42, v0

    #@ec0
    invoke-static/range {v42 .. v42}, Lcom/android/server/wifi/WifiStateMachine;->-get5(Lcom/android/server/wifi/WifiStateMachine;)Z

    #@ec3
    move-result v42

    #@ec4
    if-eqz v42, :cond_2d

    #@ec6
    .line 5865
    :cond_2b
    move-object/from16 v0, p0

    #@ec8
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@eca
    move-object/from16 v42, v0

    #@ecc
    move-object/from16 v0, p0

    #@ece
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@ed0
    move-object/from16 v43, v0

    #@ed2
    invoke-static/range {v43 .. v43}, Lcom/android/server/wifi/WifiStateMachine;->-get49(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/internal/util/State;

    #@ed5
    move-result-object v43

    #@ed6
    invoke-static/range {v42 .. v43}, Lcom/android/server/wifi/WifiStateMachine;->-wrap45(Lcom/android/server/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V

    #@ed9
    goto/16 :goto_0

    #@edb
    .line 5859
    :cond_2c
    move-object/from16 v0, p0

    #@edd
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@edf
    move-object/from16 v42, v0

    #@ee1
    invoke-static/range {v42 .. v42}, Lcom/android/server/wifi/WifiStateMachine;->-get74(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigManager;

    #@ee4
    move-result-object v42

    #@ee5
    .line 5861
    const/16 v43, -0x1

    #@ee7
    .line 5859
    invoke-virtual/range {v42 .. v43}, Lcom/android/server/wifi/WifiConfigManager;->setAndEnableLastSelectedConfiguration(I)V

    #@eea
    goto :goto_7

    #@eeb
    .line 5866
    :cond_2d
    if-eqz v12, :cond_3

    #@eed
    .line 5867
    move-object/from16 v0, p0

    #@eef
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@ef1
    move-object/from16 v42, v0

    #@ef3
    move-object/from16 v0, p0

    #@ef5
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@ef7
    move-object/from16 v43, v0

    #@ef9
    invoke-static/range {v43 .. v43}, Lcom/android/server/wifi/WifiStateMachine;->-get17(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/internal/util/State;

    #@efc
    move-result-object v43

    #@efd
    invoke-static/range {v42 .. v43}, Lcom/android/server/wifi/WifiStateMachine;->-wrap45(Lcom/android/server/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V

    #@f00
    goto/16 :goto_0

    #@f02
    .line 5870
    :cond_2e
    move-object/from16 v0, p0

    #@f04
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@f06
    move-object/from16 v42, v0

    #@f08
    new-instance v43, Ljava/lang/StringBuilder;

    #@f0a
    invoke-direct/range {v43 .. v43}, Ljava/lang/StringBuilder;-><init>()V

    #@f0d
    const-string/jumbo v44, "Failed to connect config: "

    #@f10
    invoke-virtual/range {v43 .. v44}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@f13
    move-result-object v43

    #@f14
    move-object/from16 v0, v43

    #@f16
    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@f19
    move-result-object v43

    #@f1a
    const-string/jumbo v44, " netId: "

    #@f1d
    invoke-virtual/range {v43 .. v44}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@f20
    move-result-object v43

    #@f21
    move-object/from16 v0, v43

    #@f23
    move/from16 v1, v19

    #@f25
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@f28
    move-result-object v43

    #@f29
    invoke-virtual/range {v43 .. v43}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@f2c
    move-result-object v43

    #@f2d
    invoke-virtual/range {v42 .. v43}, Lcom/android/server/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V

    #@f30
    .line 5871
    move-object/from16 v0, p0

    #@f32
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@f34
    move-object/from16 v42, v0

    #@f36
    const v43, 0x25002

    #@f39
    .line 5872
    const/16 v44, 0x0

    #@f3b
    .line 5871
    move-object/from16 v0, v42

    #@f3d
    move-object/from16 v1, p1

    #@f3f
    move/from16 v2, v43

    #@f41
    move/from16 v3, v44

    #@f43
    invoke-static {v0, v1, v2, v3}, Lcom/android/server/wifi/WifiStateMachine;->-wrap31(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;II)V

    #@f46
    .line 5873
    move-object/from16 v0, p0

    #@f48
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@f4a
    move-object/from16 v42, v0

    #@f4c
    .line 5874
    const/16 v43, 0x5

    #@f4e
    .line 5875
    const/16 v44, 0x1

    #@f50
    .line 5873
    invoke-static/range {v42 .. v44}, Lcom/android/server/wifi/WifiStateMachine;->-wrap33(Lcom/android/server/wifi/WifiStateMachine;II)V

    #@f53
    goto/16 :goto_0

    #@f55
    .line 5880
    .end local v9    # "config":Landroid/net/wifi/WifiConfiguration;
    .end local v12    # "didDisconnect":Z
    .end local v17    # "lastConnectUid":I
    .end local v19    # "netId":I
    .end local v28    # "result":Lcom/android/server/wifi/NetworkUpdateResult;
    :sswitch_19
    move-object/from16 v0, p0

    #@f57
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@f59
    move-object/from16 v42, v0

    #@f5b
    invoke-static/range {v42 .. v42}, Lcom/android/server/wifi/WifiStateMachine;->-get74(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigManager;

    #@f5e
    move-result-object v43

    #@f5f
    move-object/from16 v0, p1

    #@f61
    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@f63
    move-object/from16 v42, v0

    #@f65
    check-cast v42, Landroid/content/pm/ApplicationInfo;

    #@f67
    move-object/from16 v0, v43

    #@f69
    move-object/from16 v1, v42

    #@f6b
    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiConfigManager;->removeNetworksForApp(Landroid/content/pm/ApplicationInfo;)Z

    #@f6e
    goto/16 :goto_0

    #@f70
    .line 5883
    :sswitch_1a
    move-object/from16 v0, p0

    #@f72
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@f74
    move-object/from16 v42, v0

    #@f76
    invoke-static/range {v42 .. v42}, Lcom/android/server/wifi/WifiStateMachine;->-get74(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigManager;

    #@f79
    move-result-object v42

    #@f7a
    move-object/from16 v0, p1

    #@f7c
    iget v0, v0, Landroid/os/Message;->arg1:I

    #@f7e
    move/from16 v43, v0

    #@f80
    invoke-virtual/range {v42 .. v43}, Lcom/android/server/wifi/WifiConfigManager;->removeNetworksForUser(I)Z

    #@f83
    goto/16 :goto_0

    #@f85
    .line 5888
    :sswitch_1b
    move-object/from16 v0, p0

    #@f87
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@f89
    move-object/from16 v42, v0

    #@f8b
    invoke-static/range {v42 .. v42}, Lcom/android/server/wifi/WifiStateMachine;->-get74(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigManager;

    #@f8e
    move-result-object v42

    #@f8f
    .line 5889
    move-object/from16 v0, p1

    #@f91
    iget v0, v0, Landroid/os/Message;->sendingUid:I

    #@f93
    move/from16 v43, v0

    #@f95
    invoke-static/range {v43 .. v43}, Landroid/os/UserHandle;->getUserId(I)I

    #@f98
    move-result v43

    #@f99
    .line 5888
    invoke-virtual/range {v42 .. v43}, Lcom/android/server/wifi/WifiConfigManager;->isCurrentUserProfile(I)Z

    #@f9c
    move-result v42

    #@f9d
    if-nez v42, :cond_2f

    #@f9f
    .line 5890
    move-object/from16 v0, p1

    #@fa1
    iget v0, v0, Landroid/os/Message;->sendingUid:I

    #@fa3
    move/from16 v42, v0

    #@fa5
    move-object/from16 v0, p0

    #@fa7
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@fa9
    move-object/from16 v43, v0

    #@fab
    invoke-static/range {v43 .. v43}, Lcom/android/server/wifi/WifiStateMachine;->-get64(Lcom/android/server/wifi/WifiStateMachine;)I

    #@fae
    move-result v43

    #@faf
    move/from16 v0, v42

    #@fb1
    move/from16 v1, v43

    #@fb3
    if-eq v0, v1, :cond_2f

    #@fb5
    .line 5891
    move-object/from16 v0, p0

    #@fb7
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@fb9
    move-object/from16 v42, v0

    #@fbb
    new-instance v43, Ljava/lang/StringBuilder;

    #@fbd
    invoke-direct/range {v43 .. v43}, Ljava/lang/StringBuilder;-><init>()V

    #@fc0
    const-string/jumbo v44, "Only the current foreground user can modify networks  currentUserId="

    #@fc3
    invoke-virtual/range {v43 .. v44}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@fc6
    move-result-object v43

    #@fc7
    .line 5892
    move-object/from16 v0, p0

    #@fc9
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@fcb
    move-object/from16 v44, v0

    #@fcd
    invoke-static/range {v44 .. v44}, Lcom/android/server/wifi/WifiStateMachine;->-get74(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigManager;

    #@fd0
    move-result-object v44

    #@fd1
    invoke-virtual/range {v44 .. v44}, Lcom/android/server/wifi/WifiConfigManager;->getCurrentUserId()I

    #@fd4
    move-result v44

    #@fd5
    .line 5891
    invoke-virtual/range {v43 .. v44}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@fd8
    move-result-object v43

    #@fd9
    .line 5893
    const-string/jumbo v44, " sendingUserId="

    #@fdc
    .line 5891
    invoke-virtual/range {v43 .. v44}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@fdf
    move-result-object v43

    #@fe0
    .line 5893
    move-object/from16 v0, p1

    #@fe2
    iget v0, v0, Landroid/os/Message;->sendingUid:I

    #@fe4
    move/from16 v44, v0

    #@fe6
    invoke-static/range {v44 .. v44}, Landroid/os/UserHandle;->getUserId(I)I

    #@fe9
    move-result v44

    #@fea
    .line 5891
    invoke-virtual/range {v43 .. v44}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@fed
    move-result-object v43

    #@fee
    invoke-virtual/range {v43 .. v43}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@ff1
    move-result-object v43

    #@ff2
    invoke-virtual/range {v42 .. v43}, Lcom/android/server/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V

    #@ff5
    .line 5894
    move-object/from16 v0, p0

    #@ff7
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@ff9
    move-object/from16 v42, v0

    #@ffb
    const v43, 0x25002

    #@ffe
    .line 5895
    const/16 v44, 0x9

    #@1000
    .line 5894
    move-object/from16 v0, v42

    #@1002
    move-object/from16 v1, p1

    #@1004
    move/from16 v2, v43

    #@1006
    move/from16 v3, v44

    #@1008
    invoke-static {v0, v1, v2, v3}, Lcom/android/server/wifi/WifiStateMachine;->-wrap31(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;II)V

    #@100b
    goto/16 :goto_0

    #@100d
    .line 5905
    :cond_2f
    move-object/from16 v0, p1

    #@100f
    iget v0, v0, Landroid/os/Message;->arg1:I

    #@1011
    move/from16 v19, v0

    #@1013
    .line 5906
    .restart local v19    # "netId":I
    move-object/from16 v0, p1

    #@1015
    iget-object v9, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@1017
    check-cast v9, Landroid/net/wifi/WifiConfiguration;

    #@1019
    .line 5907
    .restart local v9    # "config":Landroid/net/wifi/WifiConfiguration;
    move-object/from16 v0, p0

    #@101b
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@101d
    move-object/from16 v42, v0

    #@101f
    invoke-static/range {v42 .. v42}, Lcom/android/server/wifi/WifiStateMachine;->-get75(Lcom/android/server/wifi/WifiStateMachine;)Landroid/net/wifi/WifiConnectionStatistics;

    #@1022
    move-result-object v42

    #@1023
    move-object/from16 v0, v42

    #@1025
    iget v0, v0, Landroid/net/wifi/WifiConnectionStatistics;->numWifiManagerJoinAttempt:I

    #@1027
    move/from16 v43, v0

    #@1029
    add-int/lit8 v43, v43, 0x1

    #@102b
    move/from16 v0, v43

    #@102d
    move-object/from16 v1, v42

    #@102f
    iput v0, v1, Landroid/net/wifi/WifiConnectionStatistics;->numWifiManagerJoinAttempt:I

    #@1031
    .line 5908
    const/16 v38, 0x0

    #@1033
    .line 5911
    .local v38, "updatedExisting":Z
    if-eqz v9, :cond_32

    #@1035
    .line 5916
    move-object/from16 v0, p0

    #@1037
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@1039
    move-object/from16 v42, v0

    #@103b
    move-object/from16 v0, p1

    #@103d
    iget v0, v0, Landroid/os/Message;->sendingUid:I

    #@103f
    move/from16 v43, v0

    #@1041
    .line 5917
    const/16 v44, 0x1

    #@1043
    .line 5916
    move-object/from16 v0, v42

    #@1045
    move/from16 v1, v43

    #@1047
    move/from16 v2, v44

    #@1049
    invoke-virtual {v0, v9, v1, v2}, Lcom/android/server/wifi/WifiStateMachine;->recordUidIfAuthorized(Landroid/net/wifi/WifiConfiguration;IZ)Z

    #@104c
    move-result v42

    #@104d
    if-nez v42, :cond_30

    #@104f
    .line 5918
    move-object/from16 v0, p0

    #@1051
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@1053
    move-object/from16 v42, v0

    #@1055
    new-instance v43, Ljava/lang/StringBuilder;

    #@1057
    invoke-direct/range {v43 .. v43}, Ljava/lang/StringBuilder;-><init>()V

    #@105a
    const-string/jumbo v44, "Not authorized to update network  config="

    #@105d
    invoke-virtual/range {v43 .. v44}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1060
    move-result-object v43

    #@1061
    .line 5919
    iget-object v0, v9, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    #@1063
    move-object/from16 v44, v0

    #@1065
    .line 5918
    invoke-virtual/range {v43 .. v44}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1068
    move-result-object v43

    #@1069
    .line 5920
    const-string/jumbo v44, " cnid="

    #@106c
    .line 5918
    invoke-virtual/range {v43 .. v44}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@106f
    move-result-object v43

    #@1070
    .line 5920
    iget v0, v9, Landroid/net/wifi/WifiConfiguration;->networkId:I

    #@1072
    move/from16 v44, v0

    #@1074
    .line 5918
    invoke-virtual/range {v43 .. v44}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@1077
    move-result-object v43

    #@1078
    .line 5921
    const-string/jumbo v44, " uid="

    #@107b
    .line 5918
    invoke-virtual/range {v43 .. v44}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@107e
    move-result-object v43

    #@107f
    .line 5921
    move-object/from16 v0, p1

    #@1081
    iget v0, v0, Landroid/os/Message;->sendingUid:I

    #@1083
    move/from16 v44, v0

    #@1085
    .line 5918
    invoke-virtual/range {v43 .. v44}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@1088
    move-result-object v43

    #@1089
    invoke-virtual/range {v43 .. v43}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@108c
    move-result-object v43

    #@108d
    invoke-static/range {v42 .. v43}, Lcom/android/server/wifi/WifiStateMachine;->-wrap29(Lcom/android/server/wifi/WifiStateMachine;Ljava/lang/String;)V

    #@1090
    .line 5922
    move-object/from16 v0, p0

    #@1092
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@1094
    move-object/from16 v42, v0

    #@1096
    const v43, 0x25002

    #@1099
    .line 5923
    const/16 v44, 0x9

    #@109b
    .line 5922
    move-object/from16 v0, v42

    #@109d
    move-object/from16 v1, p1

    #@109f
    move/from16 v2, v43

    #@10a1
    move/from16 v3, v44

    #@10a3
    invoke-static {v0, v1, v2, v3}, Lcom/android/server/wifi/WifiStateMachine;->-wrap31(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;II)V

    #@10a6
    goto/16 :goto_0

    #@10a8
    .line 5926
    :cond_30
    const/16 v42, 0x1

    #@10aa
    move/from16 v0, v42

    #@10ac
    invoke-virtual {v9, v0}, Landroid/net/wifi/WifiConfiguration;->configKey(Z)Ljava/lang/String;

    #@10af
    move-result-object v10

    #@10b0
    .line 5928
    .local v10, "configKey":Ljava/lang/String;
    move-object/from16 v0, p0

    #@10b2
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@10b4
    move-object/from16 v42, v0

    #@10b6
    invoke-static/range {v42 .. v42}, Lcom/android/server/wifi/WifiStateMachine;->-get74(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigManager;

    #@10b9
    move-result-object v42

    #@10ba
    move-object/from16 v0, v42

    #@10bc
    invoke-virtual {v0, v10}, Lcom/android/server/wifi/WifiConfigManager;->getWifiConfiguration(Ljava/lang/String;)Landroid/net/wifi/WifiConfiguration;

    #@10bf
    move-result-object v29

    #@10c0
    .line 5929
    .local v29, "savedConfig":Landroid/net/wifi/WifiConfiguration;
    if-eqz v29, :cond_31

    #@10c2
    .line 5933
    move-object/from16 v9, v29

    #@10c4
    .line 5934
    move-object/from16 v0, p0

    #@10c6
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@10c8
    move-object/from16 v42, v0

    #@10ca
    new-instance v43, Ljava/lang/StringBuilder;

    #@10cc
    invoke-direct/range {v43 .. v43}, Ljava/lang/StringBuilder;-><init>()V

    #@10cf
    const-string/jumbo v44, "CONNECT_NETWORK updating existing config with id="

    #@10d2
    invoke-virtual/range {v43 .. v44}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@10d5
    move-result-object v43

    #@10d6
    .line 5935
    move-object/from16 v0, v29

    #@10d8
    iget v0, v0, Landroid/net/wifi/WifiConfiguration;->networkId:I

    #@10da
    move/from16 v44, v0

    #@10dc
    .line 5934
    invoke-virtual/range {v43 .. v44}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@10df
    move-result-object v43

    #@10e0
    .line 5935
    const-string/jumbo v44, " configKey="

    #@10e3
    .line 5934
    invoke-virtual/range {v43 .. v44}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@10e6
    move-result-object v43

    #@10e7
    move-object/from16 v0, v43

    #@10e9
    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@10ec
    move-result-object v43

    #@10ed
    invoke-virtual/range {v43 .. v43}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@10f0
    move-result-object v43

    #@10f1
    invoke-virtual/range {v42 .. v43}, Lcom/android/server/wifi/WifiStateMachine;->logd(Ljava/lang/String;)V

    #@10f4
    .line 5936
    const/16 v42, 0x0

    #@10f6
    move/from16 v0, v42

    #@10f8
    move-object/from16 v1, v29

    #@10fa
    iput-boolean v0, v1, Landroid/net/wifi/WifiConfiguration;->ephemeral:Z

    #@10fc
    .line 5937
    move-object/from16 v0, p0

    #@10fe
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@1100
    move-object/from16 v42, v0

    #@1102
    invoke-static/range {v42 .. v42}, Lcom/android/server/wifi/WifiStateMachine;->-get74(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigManager;

    #@1105
    move-result-object v42

    #@1106
    .line 5938
    const/16 v43, 0x0

    #@1108
    .line 5937
    move-object/from16 v0, v42

    #@110a
    move-object/from16 v1, v29

    #@110c
    move/from16 v2, v43

    #@110e
    invoke-virtual {v0, v1, v2}, Lcom/android/server/wifi/WifiConfigManager;->updateNetworkSelectionStatus(Landroid/net/wifi/WifiConfiguration;I)Z

    #@1111
    .line 5940
    const/16 v38, 0x1

    #@1113
    .line 5943
    :cond_31
    move-object/from16 v0, p0

    #@1115
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@1117
    move-object/from16 v42, v0

    #@1119
    invoke-static/range {v42 .. v42}, Lcom/android/server/wifi/WifiStateMachine;->-get74(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigManager;

    #@111c
    move-result-object v42

    #@111d
    move-object/from16 v0, p1

    #@111f
    iget v0, v0, Landroid/os/Message;->sendingUid:I

    #@1121
    move/from16 v43, v0

    #@1123
    move-object/from16 v0, v42

    #@1125
    move/from16 v1, v43

    #@1127
    invoke-virtual {v0, v9, v1}, Lcom/android/server/wifi/WifiConfigManager;->saveNetwork(Landroid/net/wifi/WifiConfiguration;I)Lcom/android/server/wifi/NetworkUpdateResult;

    #@112a
    move-result-object v28

    #@112b
    .line 5944
    .restart local v28    # "result":Lcom/android/server/wifi/NetworkUpdateResult;
    invoke-virtual/range {v28 .. v28}, Lcom/android/server/wifi/NetworkUpdateResult;->getNetworkId()I

    #@112e
    move-result v19

    #@112f
    .line 5946
    .end local v10    # "configKey":Ljava/lang/String;
    .end local v28    # "result":Lcom/android/server/wifi/NetworkUpdateResult;
    .end local v29    # "savedConfig":Landroid/net/wifi/WifiConfiguration;
    :cond_32
    move-object/from16 v0, p0

    #@1131
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@1133
    move-object/from16 v42, v0

    #@1135
    invoke-static/range {v42 .. v42}, Lcom/android/server/wifi/WifiStateMachine;->-get74(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigManager;

    #@1138
    move-result-object v42

    #@1139
    move-object/from16 v0, v42

    #@113b
    move/from16 v1, v19

    #@113d
    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiConfigManager;->getWifiConfiguration(I)Landroid/net/wifi/WifiConfiguration;

    #@1140
    move-result-object v9

    #@1141
    .line 5947
    if-nez v9, :cond_33

    #@1143
    .line 5948
    move-object/from16 v0, p0

    #@1145
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@1147
    move-object/from16 v42, v0

    #@1149
    new-instance v43, Ljava/lang/StringBuilder;

    #@114b
    invoke-direct/range {v43 .. v43}, Ljava/lang/StringBuilder;-><init>()V

    #@114e
    const-string/jumbo v44, "CONNECT_NETWORK no config for id="

    #@1151
    invoke-virtual/range {v43 .. v44}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1154
    move-result-object v43

    #@1155
    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    #@1158
    move-result-object v44

    #@1159
    invoke-virtual/range {v43 .. v44}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@115c
    move-result-object v43

    #@115d
    const-string/jumbo v44, " "

    #@1160
    invoke-virtual/range {v43 .. v44}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1163
    move-result-object v43

    #@1164
    .line 5949
    move-object/from16 v0, p0

    #@1166
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@1168
    move-object/from16 v44, v0

    #@116a
    invoke-static/range {v44 .. v44}, Lcom/android/server/wifi/WifiStateMachine;->-get59(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/SupplicantStateTracker;

    #@116d
    move-result-object v44

    #@116e
    invoke-virtual/range {v44 .. v44}, Lcom/android/server/wifi/SupplicantStateTracker;->getSupplicantStateName()Ljava/lang/String;

    #@1171
    move-result-object v44

    #@1172
    .line 5948
    invoke-virtual/range {v43 .. v44}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1175
    move-result-object v43

    #@1176
    .line 5949
    const-string/jumbo v44, " my state "

    #@1179
    .line 5948
    invoke-virtual/range {v43 .. v44}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@117c
    move-result-object v43

    #@117d
    .line 5950
    move-object/from16 v0, p0

    #@117f
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@1181
    move-object/from16 v44, v0

    #@1183
    invoke-static/range {v44 .. v44}, Lcom/android/server/wifi/WifiStateMachine;->-wrap9(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/internal/util/IState;

    #@1186
    move-result-object v44

    #@1187
    invoke-interface/range {v44 .. v44}, Lcom/android/internal/util/IState;->getName()Ljava/lang/String;

    #@118a
    move-result-object v44

    #@118b
    .line 5948
    invoke-virtual/range {v43 .. v44}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@118e
    move-result-object v43

    #@118f
    invoke-virtual/range {v43 .. v43}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1192
    move-result-object v43

    #@1193
    invoke-virtual/range {v42 .. v43}, Lcom/android/server/wifi/WifiStateMachine;->logd(Ljava/lang/String;)V

    #@1196
    .line 5951
    move-object/from16 v0, p0

    #@1198
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@119a
    move-object/from16 v42, v0

    #@119c
    const v43, 0x25002

    #@119f
    .line 5952
    const/16 v44, 0x0

    #@11a1
    .line 5951
    move-object/from16 v0, v42

    #@11a3
    move-object/from16 v1, p1

    #@11a5
    move/from16 v2, v43

    #@11a7
    move/from16 v3, v44

    #@11a9
    invoke-static {v0, v1, v2, v3}, Lcom/android/server/wifi/WifiStateMachine;->-wrap31(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;II)V

    #@11ac
    goto/16 :goto_0

    #@11ae
    .line 5955
    :cond_33
    move-object/from16 v0, p0

    #@11b0
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@11b2
    move-object/from16 v42, v0

    #@11b4
    move-object/from16 v0, v42

    #@11b6
    move/from16 v1, v19

    #@11b8
    invoke-static {v0, v1}, Lcom/android/server/wifi/WifiStateMachine;->-set30(Lcom/android/server/wifi/WifiStateMachine;I)I

    #@11bb
    .line 5956
    move-object/from16 v0, p0

    #@11bd
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@11bf
    move-object/from16 v42, v0

    #@11c1
    const-string/jumbo v43, "any"

    #@11c4
    move-object/from16 v0, v42

    #@11c6
    move/from16 v1, v19

    #@11c8
    move-object/from16 v2, v43

    #@11ca
    invoke-virtual {v0, v1, v2}, Lcom/android/server/wifi/WifiStateMachine;->autoRoamSetBSSID(ILjava/lang/String;)V

    #@11cd
    .line 5957
    move-object/from16 v0, p1

    #@11cf
    iget v0, v0, Landroid/os/Message;->sendingUid:I

    #@11d1
    move/from16 v42, v0

    #@11d3
    const/16 v43, 0x3f2

    #@11d5
    move/from16 v0, v42

    #@11d7
    move/from16 v1, v43

    #@11d9
    if-eq v0, v1, :cond_34

    #@11db
    .line 5958
    move-object/from16 v0, p1

    #@11dd
    iget v0, v0, Landroid/os/Message;->sendingUid:I

    #@11df
    move/from16 v42, v0

    #@11e1
    const/16 v43, 0x3e8

    #@11e3
    move/from16 v0, v42

    #@11e5
    move/from16 v1, v43

    #@11e7
    if-ne v0, v1, :cond_35

    #@11e9
    .line 5965
    :cond_34
    move-object/from16 v0, p0

    #@11eb
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@11ed
    move-object/from16 v42, v0

    #@11ef
    const-string/jumbo v43, "CONNECT_NETWORK"

    #@11f2
    move-object/from16 v0, v42

    #@11f4
    move-object/from16 v1, v43

    #@11f6
    invoke-virtual {v0, v9, v1}, Lcom/android/server/wifi/WifiStateMachine;->clearConfigBSSID(Landroid/net/wifi/WifiConfiguration;Ljava/lang/String;)V

    #@11f9
    .line 5968
    :cond_35
    move-object/from16 v0, p0

    #@11fb
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@11fd
    move-object/from16 v42, v0

    #@11ff
    const/16 v43, 0x1

    #@1201
    move-object/from16 v0, v42

    #@1203
    move-object/from16 v1, p1

    #@1205
    move/from16 v2, v19

    #@1207
    move/from16 v3, v43

    #@1209
    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/wifi/WifiStateMachine;->deferForUserInput(Landroid/os/Message;IZ)Z

    #@120c
    move-result v42

    #@120d
    if-nez v42, :cond_3

    #@120f
    .line 5970
    move-object/from16 v0, p0

    #@1211
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@1213
    move-object/from16 v42, v0

    #@1215
    invoke-static/range {v42 .. v42}, Lcom/android/server/wifi/WifiStateMachine;->-get74(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigManager;

    #@1218
    move-result-object v42

    #@1219
    move-object/from16 v0, v42

    #@121b
    move/from16 v1, v19

    #@121d
    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiConfigManager;->getWifiConfiguration(I)Landroid/net/wifi/WifiConfiguration;

    #@1220
    move-result-object v42

    #@1221
    move-object/from16 v0, v42

    #@1223
    iget v0, v0, Landroid/net/wifi/WifiConfiguration;->userApproved:I

    #@1225
    move/from16 v42, v0

    #@1227
    .line 5971
    const/16 v43, 0x2

    #@1229
    .line 5970
    move/from16 v0, v42

    #@122b
    move/from16 v1, v43

    #@122d
    if-ne v0, v1, :cond_36

    #@122f
    .line 5972
    move-object/from16 v0, p0

    #@1231
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@1233
    move-object/from16 v42, v0

    #@1235
    const v43, 0x25002

    #@1238
    .line 5973
    const/16 v44, 0x9

    #@123a
    .line 5972
    move-object/from16 v0, v42

    #@123c
    move-object/from16 v1, p1

    #@123e
    move/from16 v2, v43

    #@1240
    move/from16 v3, v44

    #@1242
    invoke-static {v0, v1, v2, v3}, Lcom/android/server/wifi/WifiStateMachine;->-wrap31(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;II)V

    #@1245
    goto/16 :goto_0

    #@1247
    .line 5977
    :cond_36
    move-object/from16 v0, p0

    #@1249
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@124b
    move-object/from16 v42, v0

    #@124d
    const/16 v43, 0x0

    #@124f
    invoke-static/range {v42 .. v43}, Lcom/android/server/wifi/WifiStateMachine;->-set5(Lcom/android/server/wifi/WifiStateMachine;Z)Z

    #@1252
    .line 5982
    move-object/from16 v0, p0

    #@1254
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@1256
    move-object/from16 v42, v0

    #@1258
    invoke-static/range {v42 .. v42}, Lcom/android/server/wifi/WifiStateMachine;->-get74(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigManager;

    #@125b
    move-result-object v42

    #@125c
    move-object/from16 v0, p1

    #@125e
    iget v0, v0, Landroid/os/Message;->sendingUid:I

    #@1260
    move/from16 v43, v0

    #@1262
    invoke-virtual/range {v42 .. v43}, Lcom/android/server/wifi/WifiConfigManager;->checkConfigOverridePermission(I)Z

    #@1265
    move-result v24

    #@1266
    .line 5985
    .restart local v24    # "persist":Z
    move-object/from16 v0, p0

    #@1268
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@126a
    move-object/from16 v42, v0

    #@126c
    invoke-static/range {v42 .. v42}, Lcom/android/server/wifi/WifiStateMachine;->-get74(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigManager;

    #@126f
    move-result-object v42

    #@1270
    move-object/from16 v0, v42

    #@1272
    move/from16 v1, v19

    #@1274
    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiConfigManager;->setAndEnableLastSelectedConfiguration(I)V

    #@1277
    .line 5986
    move-object/from16 v0, p0

    #@1279
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@127b
    move-object/from16 v42, v0

    #@127d
    invoke-static/range {v42 .. v42}, Lcom/android/server/wifi/WifiStateMachine;->-get76(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConnectivityManager;

    #@1280
    move-result-object v42

    #@1281
    if-eqz v42, :cond_37

    #@1283
    .line 5987
    move-object/from16 v0, p0

    #@1285
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@1287
    move-object/from16 v42, v0

    #@1289
    invoke-static/range {v42 .. v42}, Lcom/android/server/wifi/WifiStateMachine;->-get76(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConnectivityManager;

    #@128c
    move-result-object v42

    #@128d
    move-object/from16 v0, v42

    #@128f
    move/from16 v1, v19

    #@1291
    move/from16 v2, v24

    #@1293
    invoke-virtual {v0, v1, v2}, Lcom/android/server/wifi/WifiConnectivityManager;->connectToUserSelectNetwork(IZ)V

    #@1296
    .line 5989
    :cond_37
    const/4 v12, 0x0

    #@1297
    .line 5990
    .restart local v12    # "didDisconnect":Z
    move-object/from16 v0, p0

    #@1299
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@129b
    move-object/from16 v42, v0

    #@129d
    invoke-static/range {v42 .. v42}, Lcom/android/server/wifi/WifiStateMachine;->-get33(Lcom/android/server/wifi/WifiStateMachine;)I

    #@12a0
    move-result v42

    #@12a1
    const/16 v43, -0x1

    #@12a3
    move/from16 v0, v42

    #@12a5
    move/from16 v1, v43

    #@12a7
    if-eq v0, v1, :cond_38

    #@12a9
    .line 5991
    move-object/from16 v0, p0

    #@12ab
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@12ad
    move-object/from16 v42, v0

    #@12af
    invoke-static/range {v42 .. v42}, Lcom/android/server/wifi/WifiStateMachine;->-get33(Lcom/android/server/wifi/WifiStateMachine;)I

    #@12b2
    move-result v42

    #@12b3
    move/from16 v0, v42

    #@12b5
    move/from16 v1, v19

    #@12b7
    if-eq v0, v1, :cond_38

    #@12b9
    .line 5995
    const/4 v12, 0x1

    #@12ba
    .line 5996
    move-object/from16 v0, p0

    #@12bc
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@12be
    move-object/from16 v42, v0

    #@12c0
    invoke-static/range {v42 .. v42}, Lcom/android/server/wifi/WifiStateMachine;->-get84(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiNative;

    #@12c3
    move-result-object v42

    #@12c4
    invoke-virtual/range {v42 .. v42}, Lcom/android/server/wifi/WifiNative;->disconnect()Z

    #@12c7
    .line 6001
    :cond_38
    move-object/from16 v0, p0

    #@12c9
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@12cb
    move-object/from16 v42, v0

    #@12cd
    invoke-static/range {v42 .. v42}, Lcom/android/server/wifi/WifiStateMachine;->-get82(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiMetrics;

    #@12d0
    move-result-object v42

    #@12d1
    move-object/from16 v0, p0

    #@12d3
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@12d5
    move-object/from16 v43, v0

    #@12d7
    invoke-static/range {v43 .. v43}, Lcom/android/server/wifi/WifiStateMachine;->-get66(Lcom/android/server/wifi/WifiStateMachine;)Ljava/lang/String;

    #@12da
    move-result-object v43

    #@12db
    .line 6002
    const/16 v44, 0x4

    #@12dd
    .line 6001
    move-object/from16 v0, v42

    #@12df
    move-object/from16 v1, v43

    #@12e1
    move/from16 v2, v44

    #@12e3
    invoke-virtual {v0, v9, v1, v2}, Lcom/android/server/wifi/WifiMetrics;->startConnectionEvent(Landroid/net/wifi/WifiConfiguration;Ljava/lang/String;I)V

    #@12e6
    .line 6003
    move-object/from16 v0, p0

    #@12e8
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@12ea
    move-object/from16 v42, v0

    #@12ec
    invoke-static/range {v42 .. v42}, Lcom/android/server/wifi/WifiStateMachine;->-get74(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigManager;

    #@12ef
    move-result-object v42

    #@12f0
    .line 6004
    move-object/from16 v0, p1

    #@12f2
    iget v0, v0, Landroid/os/Message;->sendingUid:I

    #@12f4
    move/from16 v43, v0

    #@12f6
    .line 6003
    const/16 v44, 0x1

    #@12f8
    move-object/from16 v0, v42

    #@12fa
    move/from16 v1, v44

    #@12fc
    move/from16 v2, v43

    #@12fe
    invoke-virtual {v0, v9, v1, v2}, Lcom/android/server/wifi/WifiConfigManager;->selectNetwork(Landroid/net/wifi/WifiConfiguration;ZI)Z

    #@1301
    move-result v42

    #@1302
    if-eqz v42, :cond_3b

    #@1304
    .line 6004
    move-object/from16 v0, p0

    #@1306
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@1308
    move-object/from16 v42, v0

    #@130a
    invoke-static/range {v42 .. v42}, Lcom/android/server/wifi/WifiStateMachine;->-get84(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiNative;

    #@130d
    move-result-object v42

    #@130e
    invoke-virtual/range {v42 .. v42}, Lcom/android/server/wifi/WifiNative;->reconnect()Z

    #@1311
    move-result v42

    #@1312
    .line 6003
    if-eqz v42, :cond_3b

    #@1314
    .line 6005
    move-object/from16 v0, p0

    #@1316
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@1318
    move-object/from16 v42, v0

    #@131a
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    #@131d
    move-result-wide v44

    #@131e
    move-object/from16 v0, v42

    #@1320
    move-wide/from16 v1, v44

    #@1322
    invoke-static {v0, v1, v2}, Lcom/android/server/wifi/WifiStateMachine;->-set1(Lcom/android/server/wifi/WifiStateMachine;J)J

    #@1325
    .line 6006
    move-object/from16 v0, p0

    #@1327
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@1329
    move-object/from16 v42, v0

    #@132b
    move-object/from16 v0, p0

    #@132d
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@132f
    move-object/from16 v43, v0

    #@1331
    invoke-static/range {v43 .. v43}, Lcom/android/server/wifi/WifiStateMachine;->-get74(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigManager;

    #@1334
    move-result-object v43

    #@1335
    move-object/from16 v0, v43

    #@1337
    move/from16 v1, v19

    #@1339
    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiConfigManager;->getWifiConfiguration(I)Landroid/net/wifi/WifiConfiguration;

    #@133c
    move-result-object v43

    #@133d
    invoke-static/range {v42 .. v43}, Lcom/android/server/wifi/WifiStateMachine;->-set40(Lcom/android/server/wifi/WifiStateMachine;Landroid/net/wifi/WifiConfiguration;)Landroid/net/wifi/WifiConfiguration;

    #@1340
    .line 6009
    move-object/from16 v0, p0

    #@1342
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@1344
    move-object/from16 v42, v0

    #@1346
    invoke-static/range {v42 .. v42}, Lcom/android/server/wifi/WifiStateMachine;->-get59(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/SupplicantStateTracker;

    #@1349
    move-result-object v42

    #@134a
    const v43, 0x25001

    #@134d
    invoke-virtual/range {v42 .. v43}, Lcom/android/server/wifi/SupplicantStateTracker;->sendMessage(I)V

    #@1350
    .line 6010
    move-object/from16 v0, p0

    #@1352
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@1354
    move-object/from16 v42, v0

    #@1356
    const v43, 0x25003

    #@1359
    move-object/from16 v0, v42

    #@135b
    move-object/from16 v1, p1

    #@135d
    move/from16 v2, v43

    #@135f
    invoke-static {v0, v1, v2}, Lcom/android/server/wifi/WifiStateMachine;->-wrap30(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;I)V

    #@1362
    .line 6011
    if-eqz v12, :cond_39

    #@1364
    .line 6013
    move-object/from16 v0, p0

    #@1366
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@1368
    move-object/from16 v42, v0

    #@136a
    move-object/from16 v0, p0

    #@136c
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@136e
    move-object/from16 v43, v0

    #@1370
    invoke-static/range {v43 .. v43}, Lcom/android/server/wifi/WifiStateMachine;->-get17(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/internal/util/State;

    #@1373
    move-result-object v43

    #@1374
    invoke-static/range {v42 .. v43}, Lcom/android/server/wifi/WifiStateMachine;->-wrap45(Lcom/android/server/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V

    #@1377
    goto/16 :goto_0

    #@1379
    .line 6014
    :cond_39
    if-eqz v38, :cond_3a

    #@137b
    move-object/from16 v0, p0

    #@137d
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@137f
    move-object/from16 v42, v0

    #@1381
    invoke-static/range {v42 .. v42}, Lcom/android/server/wifi/WifiStateMachine;->-wrap9(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/internal/util/IState;

    #@1384
    move-result-object v42

    #@1385
    move-object/from16 v0, p0

    #@1387
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@1389
    move-object/from16 v43, v0

    #@138b
    invoke-static/range {v43 .. v43}, Lcom/android/server/wifi/WifiStateMachine;->-get12(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/internal/util/State;

    #@138e
    move-result-object v43

    #@138f
    move-object/from16 v0, v42

    #@1391
    move-object/from16 v1, v43

    #@1393
    if-ne v0, v1, :cond_3a

    #@1395
    .line 6015
    move-object/from16 v0, p0

    #@1397
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@1399
    move-object/from16 v42, v0

    #@139b
    invoke-virtual/range {v42 .. v42}, Lcom/android/server/wifi/WifiStateMachine;->getCurrentWifiConfiguration()Landroid/net/wifi/WifiConfiguration;

    #@139e
    move-result-object v42

    #@139f
    move-object/from16 v0, v42

    #@13a1
    iget v0, v0, Landroid/net/wifi/WifiConfiguration;->networkId:I

    #@13a3
    move/from16 v42, v0

    #@13a5
    move/from16 v0, v42

    #@13a7
    move/from16 v1, v19

    #@13a9
    if-ne v0, v1, :cond_3a

    #@13ab
    .line 6018
    move-object/from16 v0, p0

    #@13ad
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@13af
    move-object/from16 v42, v0

    #@13b1
    move-object/from16 v0, v42

    #@13b3
    invoke-static {v0, v9}, Lcom/android/server/wifi/WifiStateMachine;->-wrap46(Lcom/android/server/wifi/WifiStateMachine;Landroid/net/wifi/WifiConfiguration;)V

    #@13b6
    goto/16 :goto_0

    #@13b8
    .line 6024
    :cond_3a
    move-object/from16 v0, p0

    #@13ba
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@13bc
    move-object/from16 v42, v0

    #@13be
    move-object/from16 v0, p0

    #@13c0
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@13c2
    move-object/from16 v43, v0

    #@13c4
    invoke-static/range {v43 .. v43}, Lcom/android/server/wifi/WifiStateMachine;->-get16(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/internal/util/State;

    #@13c7
    move-result-object v43

    #@13c8
    invoke-static/range {v42 .. v43}, Lcom/android/server/wifi/WifiStateMachine;->-wrap45(Lcom/android/server/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V

    #@13cb
    goto/16 :goto_0

    #@13cd
    .line 6027
    :cond_3b
    move-object/from16 v0, p0

    #@13cf
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@13d1
    move-object/from16 v42, v0

    #@13d3
    new-instance v43, Ljava/lang/StringBuilder;

    #@13d5
    invoke-direct/range {v43 .. v43}, Ljava/lang/StringBuilder;-><init>()V

    #@13d8
    const-string/jumbo v44, "Failed to connect config: "

    #@13db
    invoke-virtual/range {v43 .. v44}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@13de
    move-result-object v43

    #@13df
    move-object/from16 v0, v43

    #@13e1
    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@13e4
    move-result-object v43

    #@13e5
    const-string/jumbo v44, " netId: "

    #@13e8
    invoke-virtual/range {v43 .. v44}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@13eb
    move-result-object v43

    #@13ec
    move-object/from16 v0, v43

    #@13ee
    move/from16 v1, v19

    #@13f0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@13f3
    move-result-object v43

    #@13f4
    invoke-virtual/range {v43 .. v43}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@13f7
    move-result-object v43

    #@13f8
    invoke-virtual/range {v42 .. v43}, Lcom/android/server/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V

    #@13fb
    .line 6028
    move-object/from16 v0, p0

    #@13fd
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@13ff
    move-object/from16 v42, v0

    #@1401
    const v43, 0x25002

    #@1404
    .line 6029
    const/16 v44, 0x0

    #@1406
    .line 6028
    move-object/from16 v0, v42

    #@1408
    move-object/from16 v1, p1

    #@140a
    move/from16 v2, v43

    #@140c
    move/from16 v3, v44

    #@140e
    invoke-static {v0, v1, v2, v3}, Lcom/android/server/wifi/WifiStateMachine;->-wrap31(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;II)V

    #@1411
    .line 6030
    move-object/from16 v0, p0

    #@1413
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@1415
    move-object/from16 v42, v0

    #@1417
    .line 6031
    const/16 v43, 0x5

    #@1419
    .line 6032
    const/16 v44, 0x1

    #@141b
    .line 6030
    invoke-static/range {v42 .. v44}, Lcom/android/server/wifi/WifiStateMachine;->-wrap33(Lcom/android/server/wifi/WifiStateMachine;II)V

    #@141e
    goto/16 :goto_0

    #@1420
    .line 6037
    .end local v9    # "config":Landroid/net/wifi/WifiConfiguration;
    .end local v12    # "didDisconnect":Z
    .end local v19    # "netId":I
    .end local v24    # "persist":Z
    .end local v38    # "updatedExisting":Z
    :sswitch_1c
    move-object/from16 v0, p0

    #@1422
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@1424
    move-object/from16 v42, v0

    #@1426
    invoke-static/range {v42 .. v42}, Lcom/android/server/wifi/WifiStateMachine;->-get75(Lcom/android/server/wifi/WifiStateMachine;)Landroid/net/wifi/WifiConnectionStatistics;

    #@1429
    move-result-object v42

    #@142a
    move-object/from16 v0, v42

    #@142c
    iget v0, v0, Landroid/net/wifi/WifiConnectionStatistics;->numWifiManagerJoinAttempt:I

    #@142e
    move/from16 v43, v0

    #@1430
    add-int/lit8 v43, v43, 0x1

    #@1432
    move/from16 v0, v43

    #@1434
    move-object/from16 v1, v42

    #@1436
    iput v0, v1, Landroid/net/wifi/WifiConnectionStatistics;->numWifiManagerJoinAttempt:I

    #@1438
    .line 6041
    :sswitch_1d
    move-object/from16 v0, p0

    #@143a
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@143c
    move-object/from16 v42, v0

    #@143e
    invoke-static/range {v42 .. v42}, Lcom/android/server/wifi/WifiStateMachine;->-get74(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigManager;

    #@1441
    move-result-object v42

    #@1442
    .line 6042
    move-object/from16 v0, p1

    #@1444
    iget v0, v0, Landroid/os/Message;->sendingUid:I

    #@1446
    move/from16 v43, v0

    #@1448
    invoke-static/range {v43 .. v43}, Landroid/os/UserHandle;->getUserId(I)I

    #@144b
    move-result v43

    #@144c
    .line 6041
    invoke-virtual/range {v42 .. v43}, Lcom/android/server/wifi/WifiConfigManager;->isCurrentUserProfile(I)Z

    #@144f
    move-result v42

    #@1450
    if-nez v42, :cond_3c

    #@1452
    .line 6043
    move-object/from16 v0, p0

    #@1454
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@1456
    move-object/from16 v42, v0

    #@1458
    new-instance v43, Ljava/lang/StringBuilder;

    #@145a
    invoke-direct/range {v43 .. v43}, Ljava/lang/StringBuilder;-><init>()V

    #@145d
    const-string/jumbo v44, "Only the current foreground user can modify networks  currentUserId="

    #@1460
    invoke-virtual/range {v43 .. v44}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1463
    move-result-object v43

    #@1464
    .line 6044
    move-object/from16 v0, p0

    #@1466
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@1468
    move-object/from16 v44, v0

    #@146a
    invoke-static/range {v44 .. v44}, Lcom/android/server/wifi/WifiStateMachine;->-get74(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigManager;

    #@146d
    move-result-object v44

    #@146e
    invoke-virtual/range {v44 .. v44}, Lcom/android/server/wifi/WifiConfigManager;->getCurrentUserId()I

    #@1471
    move-result v44

    #@1472
    .line 6043
    invoke-virtual/range {v43 .. v44}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@1475
    move-result-object v43

    #@1476
    .line 6045
    const-string/jumbo v44, " sendingUserId="

    #@1479
    .line 6043
    invoke-virtual/range {v43 .. v44}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@147c
    move-result-object v43

    #@147d
    .line 6045
    move-object/from16 v0, p1

    #@147f
    iget v0, v0, Landroid/os/Message;->sendingUid:I

    #@1481
    move/from16 v44, v0

    #@1483
    invoke-static/range {v44 .. v44}, Landroid/os/UserHandle;->getUserId(I)I

    #@1486
    move-result v44

    #@1487
    .line 6043
    invoke-virtual/range {v43 .. v44}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@148a
    move-result-object v43

    #@148b
    invoke-virtual/range {v43 .. v43}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@148e
    move-result-object v43

    #@148f
    invoke-virtual/range {v42 .. v43}, Lcom/android/server/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V

    #@1492
    .line 6046
    move-object/from16 v0, p0

    #@1494
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@1496
    move-object/from16 v42, v0

    #@1498
    const v43, 0x25008

    #@149b
    .line 6047
    const/16 v44, 0x9

    #@149d
    .line 6046
    move-object/from16 v0, v42

    #@149f
    move-object/from16 v1, p1

    #@14a1
    move/from16 v2, v43

    #@14a3
    move/from16 v3, v44

    #@14a5
    invoke-static {v0, v1, v2, v3}, Lcom/android/server/wifi/WifiStateMachine;->-wrap31(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;II)V

    #@14a8
    goto/16 :goto_0

    #@14aa
    .line 6051
    :cond_3c
    move-object/from16 v0, p0

    #@14ac
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@14ae
    move-object/from16 v42, v0

    #@14b0
    const/16 v43, 0x0

    #@14b2
    invoke-static/range {v42 .. v43}, Lcom/android/server/wifi/WifiStateMachine;->-set3(Lcom/android/server/wifi/WifiStateMachine;Landroid/net/wifi/WifiConfiguration;)Landroid/net/wifi/WifiConfiguration;

    #@14b5
    .line 6052
    move-object/from16 v0, p1

    #@14b7
    iget-object v9, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@14b9
    check-cast v9, Landroid/net/wifi/WifiConfiguration;

    #@14bb
    .line 6053
    .restart local v9    # "config":Landroid/net/wifi/WifiConfiguration;
    if-nez v9, :cond_3d

    #@14bd
    .line 6054
    move-object/from16 v0, p0

    #@14bf
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@14c1
    move-object/from16 v42, v0

    #@14c3
    new-instance v43, Ljava/lang/StringBuilder;

    #@14c5
    invoke-direct/range {v43 .. v43}, Ljava/lang/StringBuilder;-><init>()V

    #@14c8
    const-string/jumbo v44, "ERROR: SAVE_NETWORK with null configuration"

    #@14cb
    invoke-virtual/range {v43 .. v44}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@14ce
    move-result-object v43

    #@14cf
    .line 6055
    move-object/from16 v0, p0

    #@14d1
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@14d3
    move-object/from16 v44, v0

    #@14d5
    invoke-static/range {v44 .. v44}, Lcom/android/server/wifi/WifiStateMachine;->-get59(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/SupplicantStateTracker;

    #@14d8
    move-result-object v44

    #@14d9
    invoke-virtual/range {v44 .. v44}, Lcom/android/server/wifi/SupplicantStateTracker;->getSupplicantStateName()Ljava/lang/String;

    #@14dc
    move-result-object v44

    #@14dd
    .line 6054
    invoke-virtual/range {v43 .. v44}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@14e0
    move-result-object v43

    #@14e1
    .line 6056
    const-string/jumbo v44, " my state "

    #@14e4
    .line 6054
    invoke-virtual/range {v43 .. v44}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@14e7
    move-result-object v43

    #@14e8
    .line 6056
    move-object/from16 v0, p0

    #@14ea
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@14ec
    move-object/from16 v44, v0

    #@14ee
    invoke-static/range {v44 .. v44}, Lcom/android/server/wifi/WifiStateMachine;->-wrap9(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/internal/util/IState;

    #@14f1
    move-result-object v44

    #@14f2
    invoke-interface/range {v44 .. v44}, Lcom/android/internal/util/IState;->getName()Ljava/lang/String;

    #@14f5
    move-result-object v44

    #@14f6
    .line 6054
    invoke-virtual/range {v43 .. v44}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@14f9
    move-result-object v43

    #@14fa
    invoke-virtual/range {v43 .. v43}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@14fd
    move-result-object v43

    #@14fe
    invoke-virtual/range {v42 .. v43}, Lcom/android/server/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V

    #@1501
    .line 6057
    move-object/from16 v0, p0

    #@1503
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@1505
    move-object/from16 v42, v0

    #@1507
    invoke-static {}, Lcom/android/server/wifi/WifiStateMachine;->-get3()I

    #@150a
    move-result v43

    #@150b
    invoke-static/range {v42 .. v43}, Lcom/android/server/wifi/WifiStateMachine;->-set39(Lcom/android/server/wifi/WifiStateMachine;I)I

    #@150e
    .line 6058
    move-object/from16 v0, p0

    #@1510
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@1512
    move-object/from16 v42, v0

    #@1514
    const v43, 0x25008

    #@1517
    .line 6059
    const/16 v44, 0x0

    #@1519
    .line 6058
    move-object/from16 v0, v42

    #@151b
    move-object/from16 v1, p1

    #@151d
    move/from16 v2, v43

    #@151f
    move/from16 v3, v44

    #@1521
    invoke-static {v0, v1, v2, v3}, Lcom/android/server/wifi/WifiStateMachine;->-wrap31(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;II)V

    #@1524
    goto/16 :goto_0

    #@1526
    .line 6062
    :cond_3d
    move-object/from16 v0, p0

    #@1528
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@152a
    move-object/from16 v42, v0

    #@152c
    new-instance v43, Landroid/net/wifi/WifiConfiguration;

    #@152e
    move-object/from16 v0, v43

    #@1530
    invoke-direct {v0, v9}, Landroid/net/wifi/WifiConfiguration;-><init>(Landroid/net/wifi/WifiConfiguration;)V

    #@1533
    invoke-static/range {v42 .. v43}, Lcom/android/server/wifi/WifiStateMachine;->-set3(Lcom/android/server/wifi/WifiStateMachine;Landroid/net/wifi/WifiConfiguration;)Landroid/net/wifi/WifiConfiguration;

    #@1536
    .line 6063
    iget v0, v9, Landroid/net/wifi/WifiConfiguration;->networkId:I

    #@1538
    move/from16 v22, v0

    #@153a
    .line 6064
    .local v22, "nid":I
    move-object/from16 v0, p0

    #@153c
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@153e
    move-object/from16 v42, v0

    #@1540
    new-instance v43, Ljava/lang/StringBuilder;

    #@1542
    invoke-direct/range {v43 .. v43}, Ljava/lang/StringBuilder;-><init>()V

    #@1545
    const-string/jumbo v44, "SAVE_NETWORK id="

    #@1548
    invoke-virtual/range {v43 .. v44}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@154b
    move-result-object v43

    #@154c
    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    #@154f
    move-result-object v44

    #@1550
    invoke-virtual/range {v43 .. v44}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1553
    move-result-object v43

    #@1554
    .line 6065
    const-string/jumbo v44, " config="

    #@1557
    .line 6064
    invoke-virtual/range {v43 .. v44}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@155a
    move-result-object v43

    #@155b
    .line 6065
    iget-object v0, v9, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    #@155d
    move-object/from16 v44, v0

    #@155f
    .line 6064
    invoke-virtual/range {v43 .. v44}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1562
    move-result-object v43

    #@1563
    .line 6066
    const-string/jumbo v44, " nid="

    #@1566
    .line 6064
    invoke-virtual/range {v43 .. v44}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1569
    move-result-object v43

    #@156a
    .line 6066
    iget v0, v9, Landroid/net/wifi/WifiConfiguration;->networkId:I

    #@156c
    move/from16 v44, v0

    #@156e
    .line 6064
    invoke-virtual/range {v43 .. v44}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@1571
    move-result-object v43

    #@1572
    .line 6067
    const-string/jumbo v44, " supstate="

    #@1575
    .line 6064
    invoke-virtual/range {v43 .. v44}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1578
    move-result-object v43

    #@1579
    .line 6067
    move-object/from16 v0, p0

    #@157b
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@157d
    move-object/from16 v44, v0

    #@157f
    invoke-static/range {v44 .. v44}, Lcom/android/server/wifi/WifiStateMachine;->-get59(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/SupplicantStateTracker;

    #@1582
    move-result-object v44

    #@1583
    invoke-virtual/range {v44 .. v44}, Lcom/android/server/wifi/SupplicantStateTracker;->getSupplicantStateName()Ljava/lang/String;

    #@1586
    move-result-object v44

    #@1587
    .line 6064
    invoke-virtual/range {v43 .. v44}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@158a
    move-result-object v43

    #@158b
    .line 6068
    const-string/jumbo v44, " my state "

    #@158e
    .line 6064
    invoke-virtual/range {v43 .. v44}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1591
    move-result-object v43

    #@1592
    .line 6068
    move-object/from16 v0, p0

    #@1594
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@1596
    move-object/from16 v44, v0

    #@1598
    invoke-static/range {v44 .. v44}, Lcom/android/server/wifi/WifiStateMachine;->-wrap9(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/internal/util/IState;

    #@159b
    move-result-object v44

    #@159c
    invoke-interface/range {v44 .. v44}, Lcom/android/internal/util/IState;->getName()Ljava/lang/String;

    #@159f
    move-result-object v44

    #@15a0
    .line 6064
    invoke-virtual/range {v43 .. v44}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@15a3
    move-result-object v43

    #@15a4
    invoke-virtual/range {v43 .. v43}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@15a7
    move-result-object v43

    #@15a8
    invoke-virtual/range {v42 .. v43}, Lcom/android/server/wifi/WifiStateMachine;->logd(Ljava/lang/String;)V

    #@15ab
    .line 6071
    move-object/from16 v0, p1

    #@15ad
    iget v0, v0, Landroid/os/Message;->what:I

    #@15af
    move/from16 v42, v0

    #@15b1
    const v43, 0x25007

    #@15b4
    move/from16 v0, v42

    #@15b6
    move/from16 v1, v43

    #@15b8
    if-ne v0, v1, :cond_43

    #@15ba
    const/4 v8, 0x1

    #@15bb
    .line 6072
    .local v8, "checkUid":Z
    :goto_8
    if-eqz v8, :cond_3e

    #@15bd
    move-object/from16 v0, p0

    #@15bf
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@15c1
    move-object/from16 v42, v0

    #@15c3
    move-object/from16 v0, p1

    #@15c5
    iget v0, v0, Landroid/os/Message;->sendingUid:I

    #@15c7
    move/from16 v43, v0

    #@15c9
    .line 6073
    const/16 v44, 0x0

    #@15cb
    .line 6072
    move-object/from16 v0, v42

    #@15cd
    move/from16 v1, v43

    #@15cf
    move/from16 v2, v44

    #@15d1
    invoke-virtual {v0, v9, v1, v2}, Lcom/android/server/wifi/WifiStateMachine;->recordUidIfAuthorized(Landroid/net/wifi/WifiConfiguration;IZ)Z

    #@15d4
    move-result v42

    #@15d5
    if-eqz v42, :cond_44

    #@15d7
    .line 6083
    :cond_3e
    move-object/from16 v0, p0

    #@15d9
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@15db
    move-object/from16 v42, v0

    #@15dd
    invoke-static/range {v42 .. v42}, Lcom/android/server/wifi/WifiStateMachine;->-get74(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigManager;

    #@15e0
    move-result-object v42

    #@15e1
    const/16 v43, -0x1

    #@15e3
    move-object/from16 v0, v42

    #@15e5
    move/from16 v1, v43

    #@15e7
    invoke-virtual {v0, v9, v1}, Lcom/android/server/wifi/WifiConfigManager;->saveNetwork(Landroid/net/wifi/WifiConfiguration;I)Lcom/android/server/wifi/NetworkUpdateResult;

    #@15ea
    move-result-object v28

    #@15eb
    .line 6084
    .restart local v28    # "result":Lcom/android/server/wifi/NetworkUpdateResult;
    invoke-virtual/range {v28 .. v28}, Lcom/android/server/wifi/NetworkUpdateResult;->getNetworkId()I

    #@15ee
    move-result v42

    #@15ef
    const/16 v43, -0x1

    #@15f1
    move/from16 v0, v42

    #@15f3
    move/from16 v1, v43

    #@15f5
    if-eq v0, v1, :cond_46

    #@15f7
    .line 6085
    move-object/from16 v0, p0

    #@15f9
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@15fb
    move-object/from16 v42, v0

    #@15fd
    invoke-static/range {v42 .. v42}, Lcom/android/server/wifi/WifiStateMachine;->-get77(Lcom/android/server/wifi/WifiStateMachine;)Landroid/net/wifi/WifiInfo;

    #@1600
    move-result-object v42

    #@1601
    invoke-virtual/range {v42 .. v42}, Landroid/net/wifi/WifiInfo;->getNetworkId()I

    #@1604
    move-result v42

    #@1605
    invoke-virtual/range {v28 .. v28}, Lcom/android/server/wifi/NetworkUpdateResult;->getNetworkId()I

    #@1608
    move-result v43

    #@1609
    move/from16 v0, v42

    #@160b
    move/from16 v1, v43

    #@160d
    if-ne v0, v1, :cond_40

    #@160f
    .line 6086
    invoke-virtual/range {v28 .. v28}, Lcom/android/server/wifi/NetworkUpdateResult;->hasIpChanged()Z

    #@1612
    move-result v42

    #@1613
    if-eqz v42, :cond_3f

    #@1615
    .line 6090
    move-object/from16 v0, p0

    #@1617
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@1619
    move-object/from16 v42, v0

    #@161b
    const-string/jumbo v43, "Reconfiguring IP on connection"

    #@161e
    invoke-virtual/range {v42 .. v43}, Lcom/android/server/wifi/WifiStateMachine;->log(Ljava/lang/String;)V

    #@1621
    .line 6093
    move-object/from16 v0, p0

    #@1623
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@1625
    move-object/from16 v42, v0

    #@1627
    move-object/from16 v0, p0

    #@1629
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@162b
    move-object/from16 v43, v0

    #@162d
    invoke-static/range {v43 .. v43}, Lcom/android/server/wifi/WifiStateMachine;->-get41(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/internal/util/State;

    #@1630
    move-result-object v43

    #@1631
    invoke-static/range {v42 .. v43}, Lcom/android/server/wifi/WifiStateMachine;->-wrap45(Lcom/android/server/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V

    #@1634
    .line 6095
    :cond_3f
    invoke-virtual/range {v28 .. v28}, Lcom/android/server/wifi/NetworkUpdateResult;->hasProxyChanged()Z

    #@1637
    move-result v42

    #@1638
    if-eqz v42, :cond_40

    #@163a
    .line 6096
    move-object/from16 v0, p0

    #@163c
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@163e
    move-object/from16 v42, v0

    #@1640
    const-string/jumbo v43, "Reconfiguring proxy on connection"

    #@1643
    invoke-virtual/range {v42 .. v43}, Lcom/android/server/wifi/WifiStateMachine;->log(Ljava/lang/String;)V

    #@1646
    .line 6097
    move-object/from16 v0, p0

    #@1648
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@164a
    move-object/from16 v42, v0

    #@164c
    invoke-static/range {v42 .. v42}, Lcom/android/server/wifi/WifiStateMachine;->-get28(Lcom/android/server/wifi/WifiStateMachine;)Landroid/net/ip/IpManager;

    #@164f
    move-result-object v42

    #@1650
    .line 6098
    move-object/from16 v0, p0

    #@1652
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@1654
    move-object/from16 v43, v0

    #@1656
    invoke-static/range {v43 .. v43}, Lcom/android/server/wifi/WifiStateMachine;->-get74(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigManager;

    #@1659
    move-result-object v43

    #@165a
    move-object/from16 v0, p0

    #@165c
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@165e
    move-object/from16 v44, v0

    #@1660
    invoke-static/range {v44 .. v44}, Lcom/android/server/wifi/WifiStateMachine;->-get33(Lcom/android/server/wifi/WifiStateMachine;)I

    #@1663
    move-result v44

    #@1664
    invoke-virtual/range {v43 .. v44}, Lcom/android/server/wifi/WifiConfigManager;->getProxyProperties(I)Landroid/net/ProxyInfo;

    #@1667
    move-result-object v43

    #@1668
    .line 6097
    invoke-virtual/range {v42 .. v43}, Landroid/net/ip/IpManager;->setHttpProxy(Landroid/net/ProxyInfo;)V

    #@166b
    .line 6101
    :cond_40
    move-object/from16 v0, p0

    #@166d
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@166f
    move-object/from16 v42, v0

    #@1671
    const v43, 0x25009

    #@1674
    move-object/from16 v0, v42

    #@1676
    move-object/from16 v1, p1

    #@1678
    move/from16 v2, v43

    #@167a
    invoke-static {v0, v1, v2}, Lcom/android/server/wifi/WifiStateMachine;->-wrap30(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;I)V

    #@167d
    .line 6102
    move-object/from16 v0, p0

    #@167f
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@1681
    move-object/from16 v42, v0

    #@1683
    const/16 v43, 0x0

    #@1685
    move-object/from16 v0, v42

    #@1687
    move/from16 v1, v43

    #@1689
    invoke-static {v0, v1, v9}, Lcom/android/server/wifi/WifiStateMachine;->-wrap13(Lcom/android/server/wifi/WifiStateMachine;ILandroid/net/wifi/WifiConfiguration;)V

    #@168c
    .line 6104
    invoke-static {}, Lcom/android/server/wifi/WifiStateMachine;->-get0()Z

    #@168f
    move-result v42

    #@1690
    if-eqz v42, :cond_41

    #@1692
    .line 6105
    move-object/from16 v0, p0

    #@1694
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@1696
    move-object/from16 v42, v0

    #@1698
    new-instance v43, Ljava/lang/StringBuilder;

    #@169a
    invoke-direct/range {v43 .. v43}, Ljava/lang/StringBuilder;-><init>()V

    #@169d
    const-string/jumbo v44, "Success save network nid="

    #@16a0
    invoke-virtual/range {v43 .. v44}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@16a3
    move-result-object v43

    #@16a4
    .line 6106
    invoke-virtual/range {v28 .. v28}, Lcom/android/server/wifi/NetworkUpdateResult;->getNetworkId()I

    #@16a7
    move-result v44

    #@16a8
    invoke-static/range {v44 .. v44}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    #@16ab
    move-result-object v44

    #@16ac
    .line 6105
    invoke-virtual/range {v43 .. v44}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@16af
    move-result-object v43

    #@16b0
    invoke-virtual/range {v43 .. v43}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@16b3
    move-result-object v43

    #@16b4
    invoke-virtual/range {v42 .. v43}, Lcom/android/server/wifi/WifiStateMachine;->logd(Ljava/lang/String;)V

    #@16b7
    .line 6114
    :cond_41
    move-object/from16 v0, p1

    #@16b9
    iget v0, v0, Landroid/os/Message;->what:I

    #@16bb
    move/from16 v42, v0

    #@16bd
    const v43, 0x25007

    #@16c0
    move/from16 v0, v42

    #@16c2
    move/from16 v1, v43

    #@16c4
    if-ne v0, v1, :cond_45

    #@16c6
    const/16 v39, 0x1

    #@16c8
    .line 6118
    .local v39, "user":Z
    :goto_9
    move-object/from16 v0, p0

    #@16ca
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@16cc
    move-object/from16 v42, v0

    #@16ce
    invoke-static/range {v42 .. v42}, Lcom/android/server/wifi/WifiStateMachine;->-get74(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigManager;

    #@16d1
    move-result-object v42

    #@16d2
    .line 6119
    move-object/from16 v0, p1

    #@16d4
    iget v0, v0, Landroid/os/Message;->sendingUid:I

    #@16d6
    move/from16 v43, v0

    #@16d8
    .line 6118
    invoke-virtual/range {v42 .. v43}, Lcom/android/server/wifi/WifiConfigManager;->checkConfigOverridePermission(I)Z

    #@16db
    move-result v25

    #@16dc
    .line 6121
    .local v25, "persistConnect":Z
    if-eqz v39, :cond_42

    #@16de
    .line 6122
    move-object/from16 v0, p0

    #@16e0
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@16e2
    move-object/from16 v42, v0

    #@16e4
    invoke-static/range {v42 .. v42}, Lcom/android/server/wifi/WifiStateMachine;->-get74(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigManager;

    #@16e7
    move-result-object v42

    #@16e8
    move-object/from16 v0, p1

    #@16ea
    iget v0, v0, Landroid/os/Message;->sendingUid:I

    #@16ec
    move/from16 v43, v0

    #@16ee
    move-object/from16 v0, v42

    #@16f0
    move/from16 v1, v43

    #@16f2
    invoke-virtual {v0, v9, v1}, Lcom/android/server/wifi/WifiConfigManager;->updateLastConnectUid(Landroid/net/wifi/WifiConfiguration;I)Z

    #@16f5
    .line 6123
    move-object/from16 v0, p0

    #@16f7
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@16f9
    move-object/from16 v42, v0

    #@16fb
    invoke-static/range {v42 .. v42}, Lcom/android/server/wifi/WifiStateMachine;->-get74(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigManager;

    #@16fe
    move-result-object v42

    #@16ff
    invoke-virtual/range {v42 .. v42}, Lcom/android/server/wifi/WifiConfigManager;->writeKnownNetworkHistory()V

    #@1702
    .line 6126
    :cond_42
    move-object/from16 v0, p0

    #@1704
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@1706
    move-object/from16 v42, v0

    #@1708
    invoke-static/range {v42 .. v42}, Lcom/android/server/wifi/WifiStateMachine;->-get76(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConnectivityManager;

    #@170b
    move-result-object v42

    #@170c
    if-eqz v42, :cond_3

    #@170e
    .line 6127
    move-object/from16 v0, p0

    #@1710
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@1712
    move-object/from16 v42, v0

    #@1714
    invoke-static/range {v42 .. v42}, Lcom/android/server/wifi/WifiStateMachine;->-get76(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConnectivityManager;

    #@1717
    move-result-object v42

    #@1718
    .line 6128
    invoke-virtual/range {v28 .. v28}, Lcom/android/server/wifi/NetworkUpdateResult;->getNetworkId()I

    #@171b
    move-result v43

    #@171c
    .line 6127
    move-object/from16 v0, v42

    #@171e
    move/from16 v1, v43

    #@1720
    move/from16 v2, v25

    #@1722
    invoke-virtual {v0, v1, v2}, Lcom/android/server/wifi/WifiConnectivityManager;->connectToUserSelectNetwork(IZ)V

    #@1725
    goto/16 :goto_0

    #@1727
    .line 6071
    .end local v8    # "checkUid":Z
    .end local v25    # "persistConnect":Z
    .end local v28    # "result":Lcom/android/server/wifi/NetworkUpdateResult;
    .end local v39    # "user":Z
    :cond_43
    const/4 v8, 0x0

    #@1728
    goto/16 :goto_8

    #@172a
    .line 6074
    .restart local v8    # "checkUid":Z
    :cond_44
    move-object/from16 v0, p0

    #@172c
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@172e
    move-object/from16 v42, v0

    #@1730
    new-instance v43, Ljava/lang/StringBuilder;

    #@1732
    invoke-direct/range {v43 .. v43}, Ljava/lang/StringBuilder;-><init>()V

    #@1735
    const-string/jumbo v44, "Not authorized to update network  config="

    #@1738
    invoke-virtual/range {v43 .. v44}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@173b
    move-result-object v43

    #@173c
    .line 6075
    iget-object v0, v9, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    #@173e
    move-object/from16 v44, v0

    #@1740
    .line 6074
    invoke-virtual/range {v43 .. v44}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1743
    move-result-object v43

    #@1744
    .line 6076
    const-string/jumbo v44, " cnid="

    #@1747
    .line 6074
    invoke-virtual/range {v43 .. v44}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@174a
    move-result-object v43

    #@174b
    .line 6076
    iget v0, v9, Landroid/net/wifi/WifiConfiguration;->networkId:I

    #@174d
    move/from16 v44, v0

    #@174f
    .line 6074
    invoke-virtual/range {v43 .. v44}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@1752
    move-result-object v43

    #@1753
    .line 6077
    const-string/jumbo v44, " uid="

    #@1756
    .line 6074
    invoke-virtual/range {v43 .. v44}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1759
    move-result-object v43

    #@175a
    .line 6077
    move-object/from16 v0, p1

    #@175c
    iget v0, v0, Landroid/os/Message;->sendingUid:I

    #@175e
    move/from16 v44, v0

    #@1760
    .line 6074
    invoke-virtual/range {v43 .. v44}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@1763
    move-result-object v43

    #@1764
    invoke-virtual/range {v43 .. v43}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1767
    move-result-object v43

    #@1768
    invoke-static/range {v42 .. v43}, Lcom/android/server/wifi/WifiStateMachine;->-wrap29(Lcom/android/server/wifi/WifiStateMachine;Ljava/lang/String;)V

    #@176b
    .line 6078
    move-object/from16 v0, p0

    #@176d
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@176f
    move-object/from16 v42, v0

    #@1771
    const v43, 0x25008

    #@1774
    .line 6079
    const/16 v44, 0x9

    #@1776
    .line 6078
    move-object/from16 v0, v42

    #@1778
    move-object/from16 v1, p1

    #@177a
    move/from16 v2, v43

    #@177c
    move/from16 v3, v44

    #@177e
    invoke-static {v0, v1, v2, v3}, Lcom/android/server/wifi/WifiStateMachine;->-wrap31(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;II)V

    #@1781
    goto/16 :goto_0

    #@1783
    .line 6114
    .restart local v28    # "result":Lcom/android/server/wifi/NetworkUpdateResult;
    :cond_45
    const/16 v39, 0x0

    #@1785
    .restart local v39    # "user":Z
    goto/16 :goto_9

    #@1787
    .line 6131
    .end local v39    # "user":Z
    :cond_46
    move-object/from16 v0, p0

    #@1789
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@178b
    move-object/from16 v42, v0

    #@178d
    const-string/jumbo v43, "Failed to save network"

    #@1790
    invoke-virtual/range {v42 .. v43}, Lcom/android/server/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V

    #@1793
    .line 6132
    move-object/from16 v0, p0

    #@1795
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@1797
    move-object/from16 v42, v0

    #@1799
    invoke-static {}, Lcom/android/server/wifi/WifiStateMachine;->-get3()I

    #@179c
    move-result v43

    #@179d
    invoke-static/range {v42 .. v43}, Lcom/android/server/wifi/WifiStateMachine;->-set39(Lcom/android/server/wifi/WifiStateMachine;I)I

    #@17a0
    .line 6133
    move-object/from16 v0, p0

    #@17a2
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@17a4
    move-object/from16 v42, v0

    #@17a6
    const v43, 0x25008

    #@17a9
    .line 6134
    const/16 v44, 0x0

    #@17ab
    .line 6133
    move-object/from16 v0, v42

    #@17ad
    move-object/from16 v1, p1

    #@17af
    move/from16 v2, v43

    #@17b1
    move/from16 v3, v44

    #@17b3
    invoke-static {v0, v1, v2, v3}, Lcom/android/server/wifi/WifiStateMachine;->-wrap31(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;II)V

    #@17b6
    goto/16 :goto_0

    #@17b8
    .line 6139
    .end local v8    # "checkUid":Z
    .end local v9    # "config":Landroid/net/wifi/WifiConfiguration;
    .end local v22    # "nid":I
    .end local v28    # "result":Lcom/android/server/wifi/NetworkUpdateResult;
    :sswitch_1e
    move-object/from16 v0, p0

    #@17ba
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@17bc
    move-object/from16 v42, v0

    #@17be
    invoke-static/range {v42 .. v42}, Lcom/android/server/wifi/WifiStateMachine;->-get74(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigManager;

    #@17c1
    move-result-object v42

    #@17c2
    .line 6140
    move-object/from16 v0, p1

    #@17c4
    iget v0, v0, Landroid/os/Message;->sendingUid:I

    #@17c6
    move/from16 v43, v0

    #@17c8
    invoke-static/range {v43 .. v43}, Landroid/os/UserHandle;->getUserId(I)I

    #@17cb
    move-result v43

    #@17cc
    .line 6139
    invoke-virtual/range {v42 .. v43}, Lcom/android/server/wifi/WifiConfigManager;->isCurrentUserProfile(I)Z

    #@17cf
    move-result v42

    #@17d0
    if-nez v42, :cond_47

    #@17d2
    .line 6141
    move-object/from16 v0, p0

    #@17d4
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@17d6
    move-object/from16 v42, v0

    #@17d8
    new-instance v43, Ljava/lang/StringBuilder;

    #@17da
    invoke-direct/range {v43 .. v43}, Ljava/lang/StringBuilder;-><init>()V

    #@17dd
    const-string/jumbo v44, "Only the current foreground user can modify networks  currentUserId="

    #@17e0
    invoke-virtual/range {v43 .. v44}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@17e3
    move-result-object v43

    #@17e4
    .line 6142
    move-object/from16 v0, p0

    #@17e6
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@17e8
    move-object/from16 v44, v0

    #@17ea
    invoke-static/range {v44 .. v44}, Lcom/android/server/wifi/WifiStateMachine;->-get74(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigManager;

    #@17ed
    move-result-object v44

    #@17ee
    invoke-virtual/range {v44 .. v44}, Lcom/android/server/wifi/WifiConfigManager;->getCurrentUserId()I

    #@17f1
    move-result v44

    #@17f2
    .line 6141
    invoke-virtual/range {v43 .. v44}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@17f5
    move-result-object v43

    #@17f6
    .line 6143
    const-string/jumbo v44, " sendingUserId="

    #@17f9
    .line 6141
    invoke-virtual/range {v43 .. v44}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@17fc
    move-result-object v43

    #@17fd
    .line 6143
    move-object/from16 v0, p1

    #@17ff
    iget v0, v0, Landroid/os/Message;->sendingUid:I

    #@1801
    move/from16 v44, v0

    #@1803
    invoke-static/range {v44 .. v44}, Landroid/os/UserHandle;->getUserId(I)I

    #@1806
    move-result v44

    #@1807
    .line 6141
    invoke-virtual/range {v43 .. v44}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@180a
    move-result-object v43

    #@180b
    invoke-virtual/range {v43 .. v43}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@180e
    move-result-object v43

    #@180f
    invoke-virtual/range {v42 .. v43}, Lcom/android/server/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V

    #@1812
    .line 6144
    move-object/from16 v0, p0

    #@1814
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@1816
    move-object/from16 v42, v0

    #@1818
    const v43, 0x25005

    #@181b
    .line 6145
    const/16 v44, 0x9

    #@181d
    .line 6144
    move-object/from16 v0, v42

    #@181f
    move-object/from16 v1, p1

    #@1821
    move/from16 v2, v43

    #@1823
    move/from16 v3, v44

    #@1825
    invoke-static {v0, v1, v2, v3}, Lcom/android/server/wifi/WifiStateMachine;->-wrap31(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;II)V

    #@1828
    goto/16 :goto_0

    #@182a
    .line 6151
    :cond_47
    move-object/from16 v0, p0

    #@182c
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@182e
    move-object/from16 v42, v0

    #@1830
    invoke-static/range {v42 .. v42}, Lcom/android/server/wifi/WifiStateMachine;->-get74(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigManager;

    #@1833
    move-result-object v42

    #@1834
    move-object/from16 v0, p1

    #@1836
    iget v0, v0, Landroid/os/Message;->arg1:I

    #@1838
    move/from16 v43, v0

    #@183a
    invoke-virtual/range {v42 .. v43}, Lcom/android/server/wifi/WifiConfigManager;->getWifiConfiguration(I)Landroid/net/wifi/WifiConfiguration;

    #@183d
    move-result-object v35

    #@183e
    .line 6152
    .local v35, "toRemove":Landroid/net/wifi/WifiConfiguration;
    if-nez v35, :cond_48

    #@1840
    .line 6153
    move-object/from16 v0, p0

    #@1842
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@1844
    move-object/from16 v42, v0

    #@1846
    const/16 v43, 0x0

    #@1848
    invoke-static/range {v42 .. v43}, Lcom/android/server/wifi/WifiStateMachine;->-set2(Lcom/android/server/wifi/WifiStateMachine;Landroid/net/wifi/WifiConfiguration;)Landroid/net/wifi/WifiConfiguration;

    #@184b
    .line 6158
    :goto_a
    move-object/from16 v0, p1

    #@184d
    iget v0, v0, Landroid/os/Message;->arg1:I

    #@184f
    move/from16 v19, v0

    #@1851
    .line 6160
    .restart local v19    # "netId":I
    move-object/from16 v0, p0

    #@1853
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@1855
    move-object/from16 v42, v0

    #@1857
    invoke-static/range {v42 .. v42}, Lcom/android/server/wifi/WifiStateMachine;->-get74(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigManager;

    #@185a
    move-result-object v42

    #@185b
    move-object/from16 v0, p1

    #@185d
    iget v0, v0, Landroid/os/Message;->sendingUid:I

    #@185f
    move/from16 v43, v0

    #@1861
    .line 6161
    const/16 v44, 0x0

    #@1863
    .line 6160
    move-object/from16 v0, v42

    #@1865
    move/from16 v1, v43

    #@1867
    move/from16 v2, v19

    #@1869
    move/from16 v3, v44

    #@186b
    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/wifi/WifiConfigManager;->canModifyNetwork(IIZ)Z

    #@186e
    move-result v42

    #@186f
    if-nez v42, :cond_49

    #@1871
    .line 6162
    move-object/from16 v0, p0

    #@1873
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@1875
    move-object/from16 v42, v0

    #@1877
    new-instance v43, Ljava/lang/StringBuilder;

    #@1879
    invoke-direct/range {v43 .. v43}, Ljava/lang/StringBuilder;-><init>()V

    #@187c
    const-string/jumbo v44, "Not authorized to forget network  cnid="

    #@187f
    invoke-virtual/range {v43 .. v44}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1882
    move-result-object v43

    #@1883
    move-object/from16 v0, v43

    #@1885
    move/from16 v1, v19

    #@1887
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@188a
    move-result-object v43

    #@188b
    .line 6164
    const-string/jumbo v44, " uid="

    #@188e
    .line 6162
    invoke-virtual/range {v43 .. v44}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1891
    move-result-object v43

    #@1892
    .line 6164
    move-object/from16 v0, p1

    #@1894
    iget v0, v0, Landroid/os/Message;->sendingUid:I

    #@1896
    move/from16 v44, v0

    #@1898
    .line 6162
    invoke-virtual/range {v43 .. v44}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@189b
    move-result-object v43

    #@189c
    invoke-virtual/range {v43 .. v43}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@189f
    move-result-object v43

    #@18a0
    invoke-static/range {v42 .. v43}, Lcom/android/server/wifi/WifiStateMachine;->-wrap29(Lcom/android/server/wifi/WifiStateMachine;Ljava/lang/String;)V

    #@18a3
    .line 6165
    move-object/from16 v0, p0

    #@18a5
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@18a7
    move-object/from16 v42, v0

    #@18a9
    const v43, 0x25005

    #@18ac
    .line 6166
    const/16 v44, 0x9

    #@18ae
    .line 6165
    move-object/from16 v0, v42

    #@18b0
    move-object/from16 v1, p1

    #@18b2
    move/from16 v2, v43

    #@18b4
    move/from16 v3, v44

    #@18b6
    invoke-static {v0, v1, v2, v3}, Lcom/android/server/wifi/WifiStateMachine;->-wrap31(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;II)V

    #@18b9
    goto/16 :goto_0

    #@18bb
    .line 6155
    .end local v19    # "netId":I
    :cond_48
    move-object/from16 v0, p0

    #@18bd
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@18bf
    move-object/from16 v42, v0

    #@18c1
    new-instance v43, Landroid/net/wifi/WifiConfiguration;

    #@18c3
    move-object/from16 v0, v43

    #@18c5
    move-object/from16 v1, v35

    #@18c7
    invoke-direct {v0, v1}, Landroid/net/wifi/WifiConfiguration;-><init>(Landroid/net/wifi/WifiConfiguration;)V

    #@18ca
    invoke-static/range {v42 .. v43}, Lcom/android/server/wifi/WifiStateMachine;->-set2(Lcom/android/server/wifi/WifiStateMachine;Landroid/net/wifi/WifiConfiguration;)Landroid/net/wifi/WifiConfiguration;

    #@18cd
    goto/16 :goto_a

    #@18cf
    .line 6170
    .restart local v19    # "netId":I
    :cond_49
    move-object/from16 v0, p0

    #@18d1
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@18d3
    move-object/from16 v42, v0

    #@18d5
    invoke-static/range {v42 .. v42}, Lcom/android/server/wifi/WifiStateMachine;->-get74(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigManager;

    #@18d8
    move-result-object v42

    #@18d9
    move-object/from16 v0, p1

    #@18db
    iget v0, v0, Landroid/os/Message;->arg1:I

    #@18dd
    move/from16 v43, v0

    #@18df
    invoke-virtual/range {v42 .. v43}, Lcom/android/server/wifi/WifiConfigManager;->forgetNetwork(I)Z

    #@18e2
    move-result v42

    #@18e3
    if-eqz v42, :cond_4a

    #@18e5
    .line 6171
    move-object/from16 v0, p0

    #@18e7
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@18e9
    move-object/from16 v42, v0

    #@18eb
    const v43, 0x25006

    #@18ee
    move-object/from16 v0, v42

    #@18f0
    move-object/from16 v1, p1

    #@18f2
    move/from16 v2, v43

    #@18f4
    invoke-static {v0, v1, v2}, Lcom/android/server/wifi/WifiStateMachine;->-wrap30(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;I)V

    #@18f7
    .line 6172
    move-object/from16 v0, p0

    #@18f9
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@18fb
    move-object/from16 v43, v0

    #@18fd
    .line 6173
    move-object/from16 v0, p1

    #@18ff
    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@1901
    move-object/from16 v42, v0

    #@1903
    check-cast v42, Landroid/net/wifi/WifiConfiguration;

    #@1905
    .line 6172
    const/16 v44, 0x1

    #@1907
    move-object/from16 v0, v43

    #@1909
    move/from16 v1, v44

    #@190b
    move-object/from16 v2, v42

    #@190d
    invoke-static {v0, v1, v2}, Lcom/android/server/wifi/WifiStateMachine;->-wrap13(Lcom/android/server/wifi/WifiStateMachine;ILandroid/net/wifi/WifiConfiguration;)V

    #@1910
    goto/16 :goto_0

    #@1912
    .line 6175
    :cond_4a
    move-object/from16 v0, p0

    #@1914
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@1916
    move-object/from16 v42, v0

    #@1918
    const-string/jumbo v43, "Failed to forget network"

    #@191b
    invoke-virtual/range {v42 .. v43}, Lcom/android/server/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V

    #@191e
    .line 6176
    move-object/from16 v0, p0

    #@1920
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@1922
    move-object/from16 v42, v0

    #@1924
    const v43, 0x25005

    #@1927
    .line 6177
    const/16 v44, 0x0

    #@1929
    .line 6176
    move-object/from16 v0, v42

    #@192b
    move-object/from16 v1, p1

    #@192d
    move/from16 v2, v43

    #@192f
    move/from16 v3, v44

    #@1931
    invoke-static {v0, v1, v2, v3}, Lcom/android/server/wifi/WifiStateMachine;->-wrap31(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;II)V

    #@1934
    goto/16 :goto_0

    #@1936
    .line 6181
    .end local v19    # "netId":I
    .end local v35    # "toRemove":Landroid/net/wifi/WifiConfiguration;
    :sswitch_1f
    move-object/from16 v0, p1

    #@1938
    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@193a
    move-object/from16 v40, v0

    #@193c
    check-cast v40, Landroid/net/wifi/WpsInfo;

    #@193e
    .line 6183
    .local v40, "wpsInfo":Landroid/net/wifi/WpsInfo;
    move-object/from16 v0, v40

    #@1940
    iget v0, v0, Landroid/net/wifi/WpsInfo;->setup:I

    #@1942
    move/from16 v42, v0

    #@1944
    packed-switch v42, :pswitch_data_0

    #@1947
    .line 6194
    new-instance v41, Landroid/net/wifi/WpsResult;

    #@1949
    sget-object v42, Landroid/net/wifi/WpsResult$Status;->FAILURE:Landroid/net/wifi/WpsResult$Status;

    #@194b
    invoke-direct/range {v41 .. v42}, Landroid/net/wifi/WpsResult;-><init>(Landroid/net/wifi/WpsResult$Status;)V

    #@194e
    .line 6195
    .local v41, "wpsResult":Landroid/net/wifi/WpsResult;
    move-object/from16 v0, p0

    #@1950
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@1952
    move-object/from16 v42, v0

    #@1954
    const-string/jumbo v43, "Invalid setup for WPS"

    #@1957
    invoke-virtual/range {v42 .. v43}, Lcom/android/server/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V

    #@195a
    .line 6198
    :goto_b
    move-object/from16 v0, p0

    #@195c
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@195e
    move-object/from16 v42, v0

    #@1960
    invoke-static/range {v42 .. v42}, Lcom/android/server/wifi/WifiStateMachine;->-get74(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigManager;

    #@1963
    move-result-object v42

    #@1964
    .line 6199
    const/16 v43, -0x1

    #@1966
    .line 6198
    invoke-virtual/range {v42 .. v43}, Lcom/android/server/wifi/WifiConfigManager;->setAndEnableLastSelectedConfiguration(I)V

    #@1969
    .line 6200
    move-object/from16 v0, v41

    #@196b
    iget-object v0, v0, Landroid/net/wifi/WpsResult;->status:Landroid/net/wifi/WpsResult$Status;

    #@196d
    move-object/from16 v42, v0

    #@196f
    sget-object v43, Landroid/net/wifi/WpsResult$Status;->SUCCESS:Landroid/net/wifi/WpsResult$Status;

    #@1971
    move-object/from16 v0, v42

    #@1973
    move-object/from16 v1, v43

    #@1975
    if-ne v0, v1, :cond_4b

    #@1977
    .line 6201
    move-object/from16 v0, p0

    #@1979
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@197b
    move-object/from16 v42, v0

    #@197d
    const v43, 0x2500b

    #@1980
    move-object/from16 v0, v42

    #@1982
    move-object/from16 v1, p1

    #@1984
    move/from16 v2, v43

    #@1986
    move-object/from16 v3, v41

    #@1988
    invoke-static {v0, v1, v2, v3}, Lcom/android/server/wifi/WifiStateMachine;->-wrap32(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;ILjava/lang/Object;)V

    #@198b
    .line 6202
    move-object/from16 v0, p0

    #@198d
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@198f
    move-object/from16 v42, v0

    #@1991
    move-object/from16 v0, p0

    #@1993
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@1995
    move-object/from16 v43, v0

    #@1997
    invoke-static/range {v43 .. v43}, Lcom/android/server/wifi/WifiStateMachine;->-get90(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/internal/util/State;

    #@199a
    move-result-object v43

    #@199b
    invoke-static/range {v42 .. v43}, Lcom/android/server/wifi/WifiStateMachine;->-wrap45(Lcom/android/server/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V

    #@199e
    goto/16 :goto_0

    #@19a0
    .line 6185
    .end local v41    # "wpsResult":Landroid/net/wifi/WpsResult;
    :pswitch_0
    move-object/from16 v0, p0

    #@19a2
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@19a4
    move-object/from16 v42, v0

    #@19a6
    invoke-static/range {v42 .. v42}, Lcom/android/server/wifi/WifiStateMachine;->-get74(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigManager;

    #@19a9
    move-result-object v42

    #@19aa
    move-object/from16 v0, v42

    #@19ac
    move-object/from16 v1, v40

    #@19ae
    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiConfigManager;->startWpsPbc(Landroid/net/wifi/WpsInfo;)Landroid/net/wifi/WpsResult;

    #@19b1
    move-result-object v41

    #@19b2
    .restart local v41    # "wpsResult":Landroid/net/wifi/WpsResult;
    goto :goto_b

    #@19b3
    .line 6188
    .end local v41    # "wpsResult":Landroid/net/wifi/WpsResult;
    :pswitch_1
    move-object/from16 v0, p0

    #@19b5
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@19b7
    move-object/from16 v42, v0

    #@19b9
    invoke-static/range {v42 .. v42}, Lcom/android/server/wifi/WifiStateMachine;->-get74(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigManager;

    #@19bc
    move-result-object v42

    #@19bd
    move-object/from16 v0, v42

    #@19bf
    move-object/from16 v1, v40

    #@19c1
    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiConfigManager;->startWpsWithPinFromAccessPoint(Landroid/net/wifi/WpsInfo;)Landroid/net/wifi/WpsResult;

    #@19c4
    move-result-object v41

    #@19c5
    .restart local v41    # "wpsResult":Landroid/net/wifi/WpsResult;
    goto :goto_b

    #@19c6
    .line 6191
    .end local v41    # "wpsResult":Landroid/net/wifi/WpsResult;
    :pswitch_2
    move-object/from16 v0, p0

    #@19c8
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@19ca
    move-object/from16 v42, v0

    #@19cc
    invoke-static/range {v42 .. v42}, Lcom/android/server/wifi/WifiStateMachine;->-get74(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigManager;

    #@19cf
    move-result-object v42

    #@19d0
    move-object/from16 v0, v42

    #@19d2
    move-object/from16 v1, v40

    #@19d4
    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiConfigManager;->startWpsWithPinFromDevice(Landroid/net/wifi/WpsInfo;)Landroid/net/wifi/WpsResult;

    #@19d7
    move-result-object v41

    #@19d8
    .restart local v41    # "wpsResult":Landroid/net/wifi/WpsResult;
    goto :goto_b

    #@19d9
    .line 6204
    :cond_4b
    move-object/from16 v0, p0

    #@19db
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@19dd
    move-object/from16 v42, v0

    #@19df
    new-instance v43, Ljava/lang/StringBuilder;

    #@19e1
    invoke-direct/range {v43 .. v43}, Ljava/lang/StringBuilder;-><init>()V

    #@19e4
    const-string/jumbo v44, "Failed to start WPS with config "

    #@19e7
    invoke-virtual/range {v43 .. v44}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@19ea
    move-result-object v43

    #@19eb
    invoke-virtual/range {v40 .. v40}, Landroid/net/wifi/WpsInfo;->toString()Ljava/lang/String;

    #@19ee
    move-result-object v44

    #@19ef
    invoke-virtual/range {v43 .. v44}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@19f2
    move-result-object v43

    #@19f3
    invoke-virtual/range {v43 .. v43}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@19f6
    move-result-object v43

    #@19f7
    invoke-virtual/range {v42 .. v43}, Lcom/android/server/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V

    #@19fa
    .line 6205
    move-object/from16 v0, p0

    #@19fc
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@19fe
    move-object/from16 v42, v0

    #@1a00
    const v43, 0x2500c

    #@1a03
    const/16 v44, 0x0

    #@1a05
    move-object/from16 v0, v42

    #@1a07
    move-object/from16 v1, p1

    #@1a09
    move/from16 v2, v43

    #@1a0b
    move/from16 v3, v44

    #@1a0d
    invoke-static {v0, v1, v2, v3}, Lcom/android/server/wifi/WifiStateMachine;->-wrap31(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;II)V

    #@1a10
    goto/16 :goto_0

    #@1a12
    .line 6211
    .end local v40    # "wpsInfo":Landroid/net/wifi/WpsInfo;
    .end local v41    # "wpsResult":Landroid/net/wifi/WpsResult;
    :sswitch_20
    move-object/from16 v0, p1

    #@1a14
    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@1a16
    move-object/from16 v31, v0

    #@1a18
    check-cast v31, Ljava/lang/String;

    #@1a1a
    .line 6212
    .local v31, "someBssid":Ljava/lang/String;
    if-eqz v31, :cond_4c

    #@1a1c
    .line 6215
    move-object/from16 v0, p0

    #@1a1e
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@1a20
    move-object/from16 v42, v0

    #@1a22
    invoke-static/range {v42 .. v42}, Lcom/android/server/wifi/WifiStateMachine;->-get74(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigManager;

    #@1a25
    move-result-object v42

    #@1a26
    move-object/from16 v0, p0

    #@1a28
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@1a2a
    move-object/from16 v43, v0

    #@1a2c
    invoke-static/range {v43 .. v43}, Lcom/android/server/wifi/WifiStateMachine;->-get65(Lcom/android/server/wifi/WifiStateMachine;)I

    #@1a2f
    move-result v43

    #@1a30
    invoke-virtual/range {v42 .. v43}, Lcom/android/server/wifi/WifiConfigManager;->getWifiConfiguration(I)Landroid/net/wifi/WifiConfiguration;

    #@1a33
    move-result-object v32

    #@1a34
    .line 6217
    .local v32, "someConf":Landroid/net/wifi/WifiConfiguration;
    move-object/from16 v0, p0

    #@1a36
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@1a38
    move-object/from16 v42, v0

    #@1a3a
    invoke-static/range {v42 .. v42}, Lcom/android/server/wifi/WifiStateMachine;->-get74(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigManager;

    #@1a3d
    move-result-object v42

    #@1a3e
    move-object/from16 v0, v42

    #@1a40
    move-object/from16 v1, v32

    #@1a42
    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiConfigManager;->getScanDetailCache(Landroid/net/wifi/WifiConfiguration;)Lcom/android/server/wifi/ScanDetailCache;

    #@1a45
    move-result-object v30

    #@1a46
    .line 6219
    .local v30, "scanDetailCache":Lcom/android/server/wifi/ScanDetailCache;
    if-eqz v30, :cond_4c

    #@1a48
    .line 6220
    move-object/from16 v0, p0

    #@1a4a
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@1a4c
    move-object/from16 v42, v0

    #@1a4e
    invoke-static/range {v42 .. v42}, Lcom/android/server/wifi/WifiStateMachine;->-get82(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiMetrics;

    #@1a51
    move-result-object v42

    #@1a52
    invoke-virtual/range {v30 .. v31}, Lcom/android/server/wifi/ScanDetailCache;->getScanDetail(Ljava/lang/String;)Lcom/android/server/wifi/ScanDetail;

    #@1a55
    move-result-object v43

    #@1a56
    invoke-virtual/range {v42 .. v43}, Lcom/android/server/wifi/WifiMetrics;->setConnectionScanDetail(Lcom/android/server/wifi/ScanDetail;)V

    #@1a59
    .line 6224
    .end local v30    # "scanDetailCache":Lcom/android/server/wifi/ScanDetailCache;
    .end local v32    # "someConf":Landroid/net/wifi/WifiConfiguration;
    :cond_4c
    const/16 v42, 0x0

    #@1a5b
    return v42

    #@1a5c
    .line 6226
    .end local v31    # "someBssid":Ljava/lang/String;
    :sswitch_21
    invoke-static {}, Lcom/android/server/wifi/WifiStateMachine;->-get0()Z

    #@1a5f
    move-result v42

    #@1a60
    if-eqz v42, :cond_4d

    #@1a62
    move-object/from16 v0, p0

    #@1a64
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@1a66
    move-object/from16 v42, v0

    #@1a68
    const-string/jumbo v43, "Network connection established"

    #@1a6b
    invoke-virtual/range {v42 .. v43}, Lcom/android/server/wifi/WifiStateMachine;->log(Ljava/lang/String;)V

    #@1a6e
    .line 6227
    :cond_4d
    move-object/from16 v0, p0

    #@1a70
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@1a72
    move-object/from16 v42, v0

    #@1a74
    move-object/from16 v0, p1

    #@1a76
    iget v0, v0, Landroid/os/Message;->arg1:I

    #@1a78
    move/from16 v43, v0

    #@1a7a
    invoke-static/range {v42 .. v43}, Lcom/android/server/wifi/WifiStateMachine;->-set17(Lcom/android/server/wifi/WifiStateMachine;I)I

    #@1a7d
    .line 6228
    move-object/from16 v0, p0

    #@1a7f
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@1a81
    move-object/from16 v43, v0

    #@1a83
    move-object/from16 v0, p1

    #@1a85
    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@1a87
    move-object/from16 v42, v0

    #@1a89
    check-cast v42, Ljava/lang/String;

    #@1a8b
    move-object/from16 v0, v43

    #@1a8d
    move-object/from16 v1, v42

    #@1a8f
    invoke-static {v0, v1}, Lcom/android/server/wifi/WifiStateMachine;->-set14(Lcom/android/server/wifi/WifiStateMachine;Ljava/lang/String;)Ljava/lang/String;

    #@1a92
    .line 6230
    move-object/from16 v0, p0

    #@1a94
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@1a96
    move-object/from16 v42, v0

    #@1a98
    invoke-static/range {v42 .. v42}, Lcom/android/server/wifi/WifiStateMachine;->-get77(Lcom/android/server/wifi/WifiStateMachine;)Landroid/net/wifi/WifiInfo;

    #@1a9b
    move-result-object v42

    #@1a9c
    move-object/from16 v0, p0

    #@1a9e
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@1aa0
    move-object/from16 v43, v0

    #@1aa2
    invoke-static/range {v43 .. v43}, Lcom/android/server/wifi/WifiStateMachine;->-get30(Lcom/android/server/wifi/WifiStateMachine;)Ljava/lang/String;

    #@1aa5
    move-result-object v43

    #@1aa6
    invoke-virtual/range {v42 .. v43}, Landroid/net/wifi/WifiInfo;->setBSSID(Ljava/lang/String;)V

    #@1aa9
    .line 6231
    move-object/from16 v0, p0

    #@1aab
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@1aad
    move-object/from16 v42, v0

    #@1aaf
    invoke-static/range {v42 .. v42}, Lcom/android/server/wifi/WifiStateMachine;->-get77(Lcom/android/server/wifi/WifiStateMachine;)Landroid/net/wifi/WifiInfo;

    #@1ab2
    move-result-object v42

    #@1ab3
    move-object/from16 v0, p0

    #@1ab5
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@1ab7
    move-object/from16 v43, v0

    #@1ab9
    invoke-static/range {v43 .. v43}, Lcom/android/server/wifi/WifiStateMachine;->-get33(Lcom/android/server/wifi/WifiStateMachine;)I

    #@1abc
    move-result v43

    #@1abd
    invoke-virtual/range {v42 .. v43}, Landroid/net/wifi/WifiInfo;->setNetworkId(I)V

    #@1ac0
    .line 6232
    move-object/from16 v0, p0

    #@1ac2
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@1ac4
    move-object/from16 v42, v0

    #@1ac6
    invoke-static/range {v42 .. v42}, Lcom/android/server/wifi/WifiStateMachine;->-get87(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiQualifiedNetworkSelector;

    #@1ac9
    move-result-object v42

    #@1aca
    .line 6233
    move-object/from16 v0, p0

    #@1acc
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@1ace
    move-object/from16 v43, v0

    #@1ad0
    invoke-static/range {v43 .. v43}, Lcom/android/server/wifi/WifiStateMachine;->-get30(Lcom/android/server/wifi/WifiStateMachine;)Ljava/lang/String;

    #@1ad3
    move-result-object v43

    #@1ad4
    const/16 v44, 0x1

    #@1ad6
    .line 6232
    invoke-virtual/range {v42 .. v44}, Lcom/android/server/wifi/WifiQualifiedNetworkSelector;->enableBssidForQualityNetworkSelection(Ljava/lang/String;Z)Z

    #@1ad9
    .line 6234
    move-object/from16 v0, p0

    #@1adb
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@1add
    move-object/from16 v42, v0

    #@1adf
    move-object/from16 v0, p0

    #@1ae1
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@1ae3
    move-object/from16 v43, v0

    #@1ae5
    invoke-static/range {v43 .. v43}, Lcom/android/server/wifi/WifiStateMachine;->-get30(Lcom/android/server/wifi/WifiStateMachine;)Ljava/lang/String;

    #@1ae8
    move-result-object v43

    #@1ae9
    invoke-static/range {v42 .. v43}, Lcom/android/server/wifi/WifiStateMachine;->-wrap35(Lcom/android/server/wifi/WifiStateMachine;Ljava/lang/String;)V

    #@1aec
    .line 6235
    move-object/from16 v0, p0

    #@1aee
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@1af0
    move-object/from16 v42, v0

    #@1af2
    move-object/from16 v0, p0

    #@1af4
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@1af6
    move-object/from16 v43, v0

    #@1af8
    invoke-static/range {v43 .. v43}, Lcom/android/server/wifi/WifiStateMachine;->-get41(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/internal/util/State;

    #@1afb
    move-result-object v43

    #@1afc
    invoke-static/range {v42 .. v43}, Lcom/android/server/wifi/WifiStateMachine;->-wrap45(Lcom/android/server/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V

    #@1aff
    goto/16 :goto_0

    #@1b01
    .line 6247
    :sswitch_22
    invoke-static {}, Lcom/android/server/wifi/WifiStateMachine;->-get0()Z

    #@1b04
    move-result v42

    #@1b05
    if-eqz v42, :cond_4e

    #@1b07
    move-object/from16 v0, p0

    #@1b09
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@1b0b
    move-object/from16 v42, v0

    #@1b0d
    const-string/jumbo v43, "ConnectModeState: Network connection lost "

    #@1b10
    invoke-virtual/range {v42 .. v43}, Lcom/android/server/wifi/WifiStateMachine;->log(Ljava/lang/String;)V

    #@1b13
    .line 6248
    :cond_4e
    move-object/from16 v0, p0

    #@1b15
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@1b17
    move-object/from16 v42, v0

    #@1b19
    invoke-static/range {v42 .. v42}, Lcom/android/server/wifi/WifiStateMachine;->-wrap23(Lcom/android/server/wifi/WifiStateMachine;)V

    #@1b1c
    .line 6249
    move-object/from16 v0, p0

    #@1b1e
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@1b20
    move-object/from16 v42, v0

    #@1b22
    move-object/from16 v0, p0

    #@1b24
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@1b26
    move-object/from16 v43, v0

    #@1b28
    invoke-static/range {v43 .. v43}, Lcom/android/server/wifi/WifiStateMachine;->-get16(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/internal/util/State;

    #@1b2b
    move-result-object v43

    #@1b2c
    invoke-static/range {v42 .. v43}, Lcom/android/server/wifi/WifiStateMachine;->-wrap45(Lcom/android/server/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V

    #@1b2f
    goto/16 :goto_0

    #@1b31
    .line 6252
    :sswitch_23
    move-object/from16 v0, p0

    #@1b33
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@1b35
    move-object/from16 v42, v0

    #@1b37
    invoke-static/range {v42 .. v42}, Lcom/android/server/wifi/WifiStateMachine;->-get74(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigManager;

    #@1b3a
    move-result-object v43

    #@1b3b
    move-object/from16 v0, p1

    #@1b3d
    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@1b3f
    move-object/from16 v42, v0

    #@1b41
    check-cast v42, Ljava/lang/String;

    #@1b43
    move-object/from16 v0, v43

    #@1b45
    move-object/from16 v1, v42

    #@1b47
    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiConfigManager;->addPasspointManagementObject(Ljava/lang/String;)I

    #@1b4a
    move-result v27

    #@1b4b
    .line 6253
    .restart local v27    # "res":I
    move-object/from16 v0, p0

    #@1b4d
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@1b4f
    move-object/from16 v42, v0

    #@1b51
    move-object/from16 v0, p1

    #@1b53
    iget v0, v0, Landroid/os/Message;->what:I

    #@1b55
    move/from16 v43, v0

    #@1b57
    move-object/from16 v0, v42

    #@1b59
    move-object/from16 v1, p1

    #@1b5b
    move/from16 v2, v43

    #@1b5d
    move/from16 v3, v27

    #@1b5f
    invoke-static {v0, v1, v2, v3}, Lcom/android/server/wifi/WifiStateMachine;->-wrap31(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;II)V

    #@1b62
    goto/16 :goto_0

    #@1b64
    .line 6256
    .end local v27    # "res":I
    :sswitch_24
    move-object/from16 v0, p1

    #@1b66
    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@1b68
    move-object/from16 v42, v0

    #@1b6a
    if-eqz v42, :cond_4f

    #@1b6c
    .line 6257
    move-object/from16 v0, p1

    #@1b6e
    iget-object v7, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@1b70
    check-cast v7, Landroid/os/Bundle;

    #@1b72
    .line 6259
    .local v7, "bundle":Landroid/os/Bundle;
    const-string/jumbo v42, "MOS"

    #@1b75
    move-object/from16 v0, v42

    #@1b77
    invoke-virtual {v7, v0}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    #@1b7a
    move-result-object v18

    #@1b7b
    .line 6260
    .local v18, "mos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/net/wifi/PasspointManagementObjectDefinition;>;"
    move-object/from16 v0, p0

    #@1b7d
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@1b7f
    move-object/from16 v42, v0

    #@1b81
    invoke-static/range {v42 .. v42}, Lcom/android/server/wifi/WifiStateMachine;->-get74(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigManager;

    #@1b84
    move-result-object v42

    #@1b85
    const-string/jumbo v43, "FQDN"

    #@1b88
    move-object/from16 v0, v43

    #@1b8a
    invoke-virtual {v7, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    #@1b8d
    move-result-object v43

    #@1b8e
    move-object/from16 v0, v42

    #@1b90
    move-object/from16 v1, v43

    #@1b92
    move-object/from16 v2, v18

    #@1b94
    invoke-virtual {v0, v1, v2}, Lcom/android/server/wifi/WifiConfigManager;->modifyPasspointMo(Ljava/lang/String;Ljava/util/List;)I

    #@1b97
    move-result v27

    #@1b98
    .line 6264
    .end local v7    # "bundle":Landroid/os/Bundle;
    .end local v18    # "mos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/net/wifi/PasspointManagementObjectDefinition;>;"
    .restart local v27    # "res":I
    :goto_c
    move-object/from16 v0, p0

    #@1b9a
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@1b9c
    move-object/from16 v42, v0

    #@1b9e
    move-object/from16 v0, p1

    #@1ba0
    iget v0, v0, Landroid/os/Message;->what:I

    #@1ba2
    move/from16 v43, v0

    #@1ba4
    move-object/from16 v0, v42

    #@1ba6
    move-object/from16 v1, p1

    #@1ba8
    move/from16 v2, v43

    #@1baa
    move/from16 v3, v27

    #@1bac
    invoke-static {v0, v1, v2, v3}, Lcom/android/server/wifi/WifiStateMachine;->-wrap31(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;II)V

    #@1baf
    goto/16 :goto_0

    #@1bb1
    .line 6262
    .end local v27    # "res":I
    :cond_4f
    const/16 v27, 0x0

    #@1bb3
    .restart local v27    # "res":I
    goto :goto_c

    #@1bb4
    .line 6268
    .end local v27    # "res":I
    :sswitch_25
    move-object/from16 v0, p0

    #@1bb6
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@1bb8
    move-object/from16 v42, v0

    #@1bba
    invoke-static/range {v42 .. v42}, Lcom/android/server/wifi/WifiStateMachine;->-get74(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigManager;

    #@1bbd
    move-result-object v43

    #@1bbe
    .line 6269
    move-object/from16 v0, p1

    #@1bc0
    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@1bc2
    move-object/from16 v42, v0

    #@1bc4
    check-cast v42, Landroid/os/Bundle;

    #@1bc6
    const-string/jumbo v44, "BSSID"

    #@1bc9
    move-object/from16 v0, v42

    #@1bcb
    move-object/from16 v1, v44

    #@1bcd
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    #@1bd0
    move-result-wide v44

    #@1bd1
    .line 6270
    move-object/from16 v0, p1

    #@1bd3
    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@1bd5
    move-object/from16 v42, v0

    #@1bd7
    check-cast v42, Landroid/os/Bundle;

    #@1bd9
    const-string/jumbo v46, "FILENAME"

    #@1bdc
    move-object/from16 v0, v42

    #@1bde
    move-object/from16 v1, v46

    #@1be0
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    #@1be3
    move-result-object v42

    #@1be4
    .line 6268
    move-object/from16 v0, v43

    #@1be6
    move-wide/from16 v1, v44

    #@1be8
    move-object/from16 v3, v42

    #@1bea
    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/wifi/WifiConfigManager;->queryPasspointIcon(JLjava/lang/String;)Z

    #@1bed
    move-result v42

    #@1bee
    if-eqz v42, :cond_50

    #@1bf0
    .line 6271
    const/16 v27, 0x1

    #@1bf2
    .line 6275
    .restart local v27    # "res":I
    :goto_d
    move-object/from16 v0, p0

    #@1bf4
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@1bf6
    move-object/from16 v42, v0

    #@1bf8
    move-object/from16 v0, p1

    #@1bfa
    iget v0, v0, Landroid/os/Message;->what:I

    #@1bfc
    move/from16 v43, v0

    #@1bfe
    move-object/from16 v0, v42

    #@1c00
    move-object/from16 v1, p1

    #@1c02
    move/from16 v2, v43

    #@1c04
    move/from16 v3, v27

    #@1c06
    invoke-static {v0, v1, v2, v3}, Lcom/android/server/wifi/WifiStateMachine;->-wrap31(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;II)V

    #@1c09
    goto/16 :goto_0

    #@1c0b
    .line 6273
    .end local v27    # "res":I
    :cond_50
    const/16 v27, 0x0

    #@1c0d
    .restart local v27    # "res":I
    goto :goto_d

    #@1c0e
    .line 6278
    .end local v27    # "res":I
    :sswitch_26
    move-object/from16 v0, p0

    #@1c10
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@1c12
    move-object/from16 v42, v0

    #@1c14
    invoke-static/range {v42 .. v42}, Lcom/android/server/wifi/WifiStateMachine;->-get74(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigManager;

    #@1c17
    move-result-object v43

    #@1c18
    move-object/from16 v0, p1

    #@1c1a
    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@1c1c
    move-object/from16 v42, v0

    #@1c1e
    check-cast v42, Ljava/lang/String;

    #@1c20
    move-object/from16 v0, v43

    #@1c22
    move-object/from16 v1, v42

    #@1c24
    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiConfigManager;->matchProviderWithCurrentNetwork(Ljava/lang/String;)I

    #@1c27
    move-result v27

    #@1c28
    .line 6279
    .restart local v27    # "res":I
    move-object/from16 v0, p0

    #@1c2a
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@1c2c
    move-object/from16 v42, v0

    #@1c2e
    move-object/from16 v0, p1

    #@1c30
    iget v0, v0, Landroid/os/Message;->what:I

    #@1c32
    move/from16 v43, v0

    #@1c34
    move-object/from16 v0, v42

    #@1c36
    move-object/from16 v1, p1

    #@1c38
    move/from16 v2, v43

    #@1c3a
    move/from16 v3, v27

    #@1c3c
    invoke-static {v0, v1, v2, v3}, Lcom/android/server/wifi/WifiStateMachine;->-wrap31(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;II)V

    #@1c3f
    goto/16 :goto_0

    #@1c41
    .line 5392
    nop

    #@1c42
    :sswitch_data_0
    .sparse-switch
        0x20034 -> :sswitch_6
        0x20035 -> :sswitch_7
        0x20036 -> :sswitch_8
        0x20037 -> :sswitch_9
        0x20038 -> :sswitch_c
        0x20039 -> :sswitch_d
        0x2003a -> :sswitch_e
        0x2003b -> :sswitch_f
        0x2003e -> :sswitch_12
        0x2004a -> :sswitch_14
        0x2004b -> :sswitch_15
        0x20061 -> :sswitch_19
        0x20062 -> :sswitch_b
        0x20063 -> :sswitch_13
        0x20066 -> :sswitch_23
        0x20067 -> :sswitch_24
        0x20068 -> :sswitch_25
        0x20069 -> :sswitch_26
        0x2008e -> :sswitch_16
        0x2008f -> :sswitch_18
        0x20091 -> :sswitch_17
        0x20092 -> :sswitch_1d
        0x20093 -> :sswitch_20
        0x20098 -> :sswitch_1a
        0x2300c -> :sswitch_5
        0x24003 -> :sswitch_21
        0x24004 -> :sswitch_22
        0x24006 -> :sswitch_4
        0x24007 -> :sswitch_1
        0x2400d -> :sswitch_2
        0x2400e -> :sswitch_3
        0x2400f -> :sswitch_10
        0x24010 -> :sswitch_11
        0x2402b -> :sswitch_0
        0x25001 -> :sswitch_1b
        0x25004 -> :sswitch_1e
        0x25007 -> :sswitch_1c
        0x2500a -> :sswitch_1f
        0x25011 -> :sswitch_a
    .end sparse-switch

    #@1ce0
    .line 6183
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
