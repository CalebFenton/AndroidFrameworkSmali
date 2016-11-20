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
    .line 5275
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
    .line 5280
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@2
    invoke-static {v0}, Lcom/android/server/wifi/WifiStateMachine;->-get75(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConnectivityManager;

    #@5
    move-result-object v0

    #@6
    if-eqz v0, :cond_0

    #@8
    .line 5281
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@a
    invoke-static {v0}, Lcom/android/server/wifi/WifiStateMachine;->-get75(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConnectivityManager;

    #@d
    move-result-object v0

    #@e
    const/4 v1, 0x1

    #@f
    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiConnectivityManager;->setWifiEnabled(Z)V

    #@12
    .line 5284
    :cond_0
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@14
    invoke-static {v0}, Lcom/android/server/wifi/WifiStateMachine;->-get81(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiMetrics;

    #@17
    move-result-object v0

    #@18
    const/4 v1, 0x2

    #@19
    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiMetrics;->setWifiState(I)V

    #@1c
    .line 5278
    return-void
.end method

.method public exit()V
    .locals 2

    #@0
    .prologue
    .line 5292
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@2
    invoke-static {v0}, Lcom/android/server/wifi/WifiStateMachine;->-get75(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConnectivityManager;

    #@5
    move-result-object v0

    #@6
    if-eqz v0, :cond_0

    #@8
    .line 5293
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@a
    invoke-static {v0}, Lcom/android/server/wifi/WifiStateMachine;->-get75(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConnectivityManager;

    #@d
    move-result-object v0

    #@e
    const/4 v1, 0x0

    #@f
    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiConnectivityManager;->setWifiEnabled(Z)V

    #@12
    .line 5296
    :cond_0
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@14
    invoke-static {v0}, Lcom/android/server/wifi/WifiStateMachine;->-get81(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiMetrics;

    #@17
    move-result-object v0

    #@18
    const/4 v1, 0x1

    #@19
    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiMetrics;->setWifiState(I)V

    #@1c
    .line 5290
    return-void
.end method

.method public processMessage(Landroid/os/Message;)Z
    .locals 50
    .param p1, "message"    # Landroid/os/Message;

    #@0
    .prologue
    .line 5308
    move-object/from16 v0, p0

    #@2
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@4
    move-object/from16 v45, v0

    #@6
    move-object/from16 v0, v45

    #@8
    move-object/from16 v1, p1

    #@a
    move-object/from16 v2, p0

    #@c
    invoke-static {v0, v1, v2}, Lcom/android/server/wifi/WifiStateMachine;->-wrap28(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;Lcom/android/internal/util/State;)V

    #@f
    .line 5310
    move-object/from16 v0, p1

    #@11
    iget v0, v0, Landroid/os/Message;->what:I

    #@13
    move/from16 v45, v0

    #@15
    sparse-switch v45, :sswitch_data_0

    #@18
    .line 6216
    const/16 v45, 0x0

    #@1a
    return v45

    #@1b
    .line 5312
    :sswitch_0
    move-object/from16 v0, p0

    #@1d
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@1f
    move-object/from16 v45, v0

    #@21
    invoke-static/range {v45 .. v45}, Lcom/android/server/wifi/WifiStateMachine;->-get80(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/BaseWifiLogger;

    #@24
    move-result-object v45

    #@25
    const/16 v46, 0x1

    #@27
    invoke-virtual/range {v45 .. v46}, Lcom/android/server/wifi/BaseWifiLogger;->captureBugReportData(I)V

    #@2a
    .line 5313
    move-object/from16 v0, p0

    #@2c
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@2e
    move-object/from16 v45, v0

    #@30
    const/16 v46, 0x0

    #@32
    invoke-static/range {v45 .. v46}, Lcom/android/server/wifi/WifiStateMachine;->-set0(Lcom/android/server/wifi/WifiStateMachine;Z)Z

    #@35
    .line 5314
    move-object/from16 v0, p1

    #@37
    iget-object v6, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@39
    check-cast v6, Ljava/lang/String;

    #@3b
    .line 5315
    .local v6, "bssid":Ljava/lang/String;
    if-eqz v6, :cond_0

    #@3d
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@40
    move-result v45

    #@41
    if-eqz v45, :cond_1

    #@43
    .line 5317
    :cond_0
    move-object/from16 v0, p0

    #@45
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@47
    move-object/from16 v45, v0

    #@49
    invoke-static/range {v45 .. v45}, Lcom/android/server/wifi/WifiStateMachine;->-get66(Lcom/android/server/wifi/WifiStateMachine;)Ljava/lang/String;

    #@4c
    move-result-object v6

    #@4d
    .line 5319
    :cond_1
    if-eqz v6, :cond_2

    #@4f
    .line 5321
    move-object/from16 v0, p0

    #@51
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@53
    move-object/from16 v45, v0

    #@55
    invoke-static/range {v45 .. v45}, Lcom/android/server/wifi/WifiStateMachine;->-get75(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConnectivityManager;

    #@58
    move-result-object v45

    #@59
    if-eqz v45, :cond_2

    #@5b
    .line 5322
    move-object/from16 v0, p0

    #@5d
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@5f
    move-object/from16 v45, v0

    #@61
    move-object/from16 v0, p0

    #@63
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@65
    move-object/from16 v46, v0

    #@67
    invoke-static/range {v46 .. v46}, Lcom/android/server/wifi/WifiStateMachine;->-get75(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConnectivityManager;

    #@6a
    move-result-object v46

    #@6b
    .line 5323
    const/16 v47, 0x0

    #@6d
    .line 5322
    move-object/from16 v0, v46

    #@6f
    move/from16 v1, v47

    #@71
    invoke-virtual {v0, v6, v1}, Lcom/android/server/wifi/WifiConnectivityManager;->trackBssid(Ljava/lang/String;Z)Z

    #@74
    move-result v46

    #@75
    invoke-static/range {v45 .. v46}, Lcom/android/server/wifi/WifiStateMachine;->-set0(Lcom/android/server/wifi/WifiStateMachine;Z)Z

    #@78
    .line 5327
    :cond_2
    move-object/from16 v0, p0

    #@7a
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@7c
    move-object/from16 v45, v0

    #@7e
    invoke-static/range {v45 .. v45}, Lcom/android/server/wifi/WifiStateMachine;->-get73(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigManager;

    #@81
    move-result-object v45

    #@82
    move-object/from16 v0, p0

    #@84
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@86
    move-object/from16 v46, v0

    #@88
    invoke-static/range {v46 .. v46}, Lcom/android/server/wifi/WifiStateMachine;->-get65(Lcom/android/server/wifi/WifiStateMachine;)I

    #@8b
    move-result v46

    #@8c
    .line 5328
    const/16 v47, 0x2

    #@8e
    .line 5327
    invoke-virtual/range {v45 .. v47}, Lcom/android/server/wifi/WifiConfigManager;->updateNetworkSelectionStatus(II)Z

    #@91
    .line 5331
    move-object/from16 v0, p0

    #@93
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@95
    move-object/from16 v45, v0

    #@97
    invoke-static/range {v45 .. v45}, Lcom/android/server/wifi/WifiStateMachine;->-get59(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/SupplicantStateTracker;

    #@9a
    move-result-object v45

    #@9b
    const v46, 0x2402b

    #@9e
    invoke-virtual/range {v45 .. v46}, Lcom/android/server/wifi/SupplicantStateTracker;->sendMessage(I)V

    #@a1
    .line 5333
    move-object/from16 v0, p0

    #@a3
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@a5
    move-object/from16 v45, v0

    #@a7
    .line 5334
    const/16 v46, 0x2

    #@a9
    .line 5335
    const/16 v47, 0x1

    #@ab
    .line 5333
    invoke-static/range {v45 .. v47}, Lcom/android/server/wifi/WifiStateMachine;->-wrap33(Lcom/android/server/wifi/WifiStateMachine;II)V

    #@ae
    .line 5336
    move-object/from16 v0, p0

    #@b0
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@b2
    move-object/from16 v45, v0

    #@b4
    invoke-static/range {v45 .. v45}, Lcom/android/server/wifi/WifiStateMachine;->-get78(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiLastResortWatchdog;

    #@b7
    move-result-object v45

    #@b8
    move-object/from16 v0, p0

    #@ba
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@bc
    move-object/from16 v46, v0

    #@be
    invoke-static/range {v46 .. v46}, Lcom/android/server/wifi/WifiStateMachine;->-wrap10(Lcom/android/server/wifi/WifiStateMachine;)Ljava/lang/String;

    #@c1
    move-result-object v46

    #@c2
    .line 5338
    const/16 v47, 0x1

    #@c4
    .line 5336
    move-object/from16 v0, v45

    #@c6
    move-object/from16 v1, v46

    #@c8
    move/from16 v2, v47

    #@ca
    invoke-virtual {v0, v1, v6, v2}, Lcom/android/server/wifi/WifiLastResortWatchdog;->noteConnectionFailureAndTriggerIfNeeded(Ljava/lang/String;Ljava/lang/String;I)Z

    #@cd
    .line 6218
    .end local v6    # "bssid":Ljava/lang/String;
    :cond_3
    :goto_0
    const/16 v45, 0x1

    #@cf
    return v45

    #@d0
    .line 5341
    :sswitch_1
    move-object/from16 v0, p0

    #@d2
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@d4
    move-object/from16 v45, v0

    #@d6
    invoke-static/range {v45 .. v45}, Lcom/android/server/wifi/WifiStateMachine;->-get80(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/BaseWifiLogger;

    #@d9
    move-result-object v45

    #@da
    const/16 v46, 0x2

    #@dc
    invoke-virtual/range {v45 .. v46}, Lcom/android/server/wifi/BaseWifiLogger;->captureBugReportData(I)V

    #@df
    .line 5342
    move-object/from16 v0, p0

    #@e1
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@e3
    move-object/from16 v45, v0

    #@e5
    invoke-static/range {v45 .. v45}, Lcom/android/server/wifi/WifiStateMachine;->-get59(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/SupplicantStateTracker;

    #@e8
    move-result-object v45

    #@e9
    const v46, 0x24007

    #@ec
    invoke-virtual/range {v45 .. v46}, Lcom/android/server/wifi/SupplicantStateTracker;->sendMessage(I)V

    #@ef
    .line 5343
    move-object/from16 v0, p0

    #@f1
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@f3
    move-object/from16 v45, v0

    #@f5
    invoke-static/range {v45 .. v45}, Lcom/android/server/wifi/WifiStateMachine;->-get65(Lcom/android/server/wifi/WifiStateMachine;)I

    #@f8
    move-result v45

    #@f9
    const/16 v46, -0x1

    #@fb
    move/from16 v0, v45

    #@fd
    move/from16 v1, v46

    #@ff
    if-eq v0, v1, :cond_4

    #@101
    .line 5344
    move-object/from16 v0, p0

    #@103
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@105
    move-object/from16 v45, v0

    #@107
    invoke-static/range {v45 .. v45}, Lcom/android/server/wifi/WifiStateMachine;->-get73(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigManager;

    #@10a
    move-result-object v45

    #@10b
    move-object/from16 v0, p0

    #@10d
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@10f
    move-object/from16 v46, v0

    #@111
    invoke-static/range {v46 .. v46}, Lcom/android/server/wifi/WifiStateMachine;->-get65(Lcom/android/server/wifi/WifiStateMachine;)I

    #@114
    move-result v46

    #@115
    .line 5345
    const/16 v47, 0x3

    #@117
    .line 5344
    invoke-virtual/range {v45 .. v47}, Lcom/android/server/wifi/WifiConfigManager;->updateNetworkSelectionStatus(II)Z

    #@11a
    .line 5349
    :cond_4
    move-object/from16 v0, p0

    #@11c
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@11e
    move-object/from16 v45, v0

    #@120
    .line 5350
    const/16 v46, 0x3

    #@122
    .line 5351
    const/16 v47, 0x1

    #@124
    .line 5349
    invoke-static/range {v45 .. v47}, Lcom/android/server/wifi/WifiStateMachine;->-wrap33(Lcom/android/server/wifi/WifiStateMachine;II)V

    #@127
    .line 5352
    move-object/from16 v0, p0

    #@129
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@12b
    move-object/from16 v45, v0

    #@12d
    invoke-static/range {v45 .. v45}, Lcom/android/server/wifi/WifiStateMachine;->-get78(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiLastResortWatchdog;

    #@130
    move-result-object v45

    #@131
    move-object/from16 v0, p0

    #@133
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@135
    move-object/from16 v46, v0

    #@137
    invoke-static/range {v46 .. v46}, Lcom/android/server/wifi/WifiStateMachine;->-wrap10(Lcom/android/server/wifi/WifiStateMachine;)Ljava/lang/String;

    #@13a
    move-result-object v46

    #@13b
    .line 5353
    move-object/from16 v0, p0

    #@13d
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@13f
    move-object/from16 v47, v0

    #@141
    invoke-static/range {v47 .. v47}, Lcom/android/server/wifi/WifiStateMachine;->-get66(Lcom/android/server/wifi/WifiStateMachine;)Ljava/lang/String;

    #@144
    move-result-object v47

    #@145
    .line 5354
    const/16 v48, 0x2

    #@147
    .line 5352
    invoke-virtual/range {v45 .. v48}, Lcom/android/server/wifi/WifiLastResortWatchdog;->noteConnectionFailureAndTriggerIfNeeded(Ljava/lang/String;Ljava/lang/String;I)Z

    #@14a
    goto :goto_0

    #@14b
    .line 5357
    :sswitch_2
    const-string/jumbo v45, "WifiStateMachine"

    #@14e
    new-instance v46, Ljava/lang/StringBuilder;

    #@150
    invoke-direct/range {v46 .. v46}, Ljava/lang/StringBuilder;-><init>()V

    #@153
    const-string/jumbo v47, "Supplicant SSID temporary disabled:"

    #@156
    invoke-virtual/range {v46 .. v47}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@159
    move-result-object v46

    #@15a
    .line 5358
    move-object/from16 v0, p0

    #@15c
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@15e
    move-object/from16 v47, v0

    #@160
    invoke-static/range {v47 .. v47}, Lcom/android/server/wifi/WifiStateMachine;->-get73(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigManager;

    #@163
    move-result-object v47

    #@164
    move-object/from16 v0, p1

    #@166
    iget v0, v0, Landroid/os/Message;->arg1:I

    #@168
    move/from16 v48, v0

    #@16a
    invoke-virtual/range {v47 .. v48}, Lcom/android/server/wifi/WifiConfigManager;->getWifiConfiguration(I)Landroid/net/wifi/WifiConfiguration;

    #@16d
    move-result-object v47

    #@16e
    .line 5357
    invoke-virtual/range {v46 .. v47}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@171
    move-result-object v46

    #@172
    invoke-virtual/range {v46 .. v46}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@175
    move-result-object v46

    #@176
    invoke-static/range {v45 .. v46}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@179
    .line 5359
    move-object/from16 v0, p0

    #@17b
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@17d
    move-object/from16 v45, v0

    #@17f
    invoke-static/range {v45 .. v45}, Lcom/android/server/wifi/WifiStateMachine;->-get73(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigManager;

    #@182
    move-result-object v45

    #@183
    .line 5360
    move-object/from16 v0, p1

    #@185
    iget v0, v0, Landroid/os/Message;->arg1:I

    #@187
    move/from16 v46, v0

    #@189
    .line 5361
    const/16 v47, 0x3

    #@18b
    .line 5359
    invoke-virtual/range {v45 .. v47}, Lcom/android/server/wifi/WifiConfigManager;->updateNetworkSelectionStatus(II)Z

    #@18e
    .line 5363
    move-object/from16 v0, p0

    #@190
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@192
    move-object/from16 v45, v0

    #@194
    .line 5364
    const/16 v46, 0x4

    #@196
    .line 5365
    const/16 v47, 0x1

    #@198
    .line 5363
    invoke-static/range {v45 .. v47}, Lcom/android/server/wifi/WifiStateMachine;->-wrap33(Lcom/android/server/wifi/WifiStateMachine;II)V

    #@19b
    .line 5366
    move-object/from16 v0, p0

    #@19d
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@19f
    move-object/from16 v45, v0

    #@1a1
    invoke-static/range {v45 .. v45}, Lcom/android/server/wifi/WifiStateMachine;->-get78(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiLastResortWatchdog;

    #@1a4
    move-result-object v45

    #@1a5
    move-object/from16 v0, p0

    #@1a7
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@1a9
    move-object/from16 v46, v0

    #@1ab
    invoke-static/range {v46 .. v46}, Lcom/android/server/wifi/WifiStateMachine;->-wrap10(Lcom/android/server/wifi/WifiStateMachine;)Ljava/lang/String;

    #@1ae
    move-result-object v46

    #@1af
    .line 5367
    move-object/from16 v0, p0

    #@1b1
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@1b3
    move-object/from16 v47, v0

    #@1b5
    invoke-static/range {v47 .. v47}, Lcom/android/server/wifi/WifiStateMachine;->-get66(Lcom/android/server/wifi/WifiStateMachine;)Ljava/lang/String;

    #@1b8
    move-result-object v47

    #@1b9
    .line 5368
    const/16 v48, 0x2

    #@1bb
    .line 5366
    invoke-virtual/range {v45 .. v48}, Lcom/android/server/wifi/WifiLastResortWatchdog;->noteConnectionFailureAndTriggerIfNeeded(Ljava/lang/String;Ljava/lang/String;I)Z

    #@1be
    goto/16 :goto_0

    #@1c0
    .line 5371
    :sswitch_3
    const-string/jumbo v45, "WifiStateMachine"

    #@1c3
    new-instance v46, Ljava/lang/StringBuilder;

    #@1c5
    invoke-direct/range {v46 .. v46}, Ljava/lang/StringBuilder;-><init>()V

    #@1c8
    const-string/jumbo v47, "Supplicant SSID reenable:"

    #@1cb
    invoke-virtual/range {v46 .. v47}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1ce
    move-result-object v46

    #@1cf
    .line 5372
    move-object/from16 v0, p0

    #@1d1
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@1d3
    move-object/from16 v47, v0

    #@1d5
    invoke-static/range {v47 .. v47}, Lcom/android/server/wifi/WifiStateMachine;->-get73(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigManager;

    #@1d8
    move-result-object v47

    #@1d9
    move-object/from16 v0, p1

    #@1db
    iget v0, v0, Landroid/os/Message;->arg1:I

    #@1dd
    move/from16 v48, v0

    #@1df
    invoke-virtual/range {v47 .. v48}, Lcom/android/server/wifi/WifiConfigManager;->getWifiConfiguration(I)Landroid/net/wifi/WifiConfiguration;

    #@1e2
    move-result-object v47

    #@1e3
    .line 5371
    invoke-virtual/range {v46 .. v47}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@1e6
    move-result-object v46

    #@1e7
    invoke-virtual/range {v46 .. v46}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1ea
    move-result-object v46

    #@1eb
    invoke-static/range {v45 .. v46}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@1ee
    goto/16 :goto_0

    #@1f0
    .line 5377
    :sswitch_4
    move-object/from16 v0, p0

    #@1f2
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@1f4
    move-object/from16 v45, v0

    #@1f6
    move-object/from16 v0, v45

    #@1f8
    move-object/from16 v1, p1

    #@1fa
    invoke-static {v0, v1}, Lcom/android/server/wifi/WifiStateMachine;->-wrap0(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;)Landroid/net/wifi/SupplicantState;

    #@1fd
    move-result-object v36

    #@1fe
    .line 5380
    .local v36, "state":Landroid/net/wifi/SupplicantState;
    invoke-static/range {v36 .. v36}, Landroid/net/wifi/SupplicantState;->isDriverActive(Landroid/net/wifi/SupplicantState;)Z

    #@201
    move-result v45

    #@202
    if-nez v45, :cond_6

    #@204
    .line 5381
    move-object/from16 v0, p0

    #@206
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@208
    move-object/from16 v45, v0

    #@20a
    invoke-static/range {v45 .. v45}, Lcom/android/server/wifi/WifiStateMachine;->-get37(Lcom/android/server/wifi/WifiStateMachine;)Landroid/net/NetworkInfo;

    #@20d
    move-result-object v45

    #@20e
    invoke-virtual/range {v45 .. v45}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    #@211
    move-result-object v45

    #@212
    sget-object v46, Landroid/net/NetworkInfo$State;->DISCONNECTED:Landroid/net/NetworkInfo$State;

    #@214
    move-object/from16 v0, v45

    #@216
    move-object/from16 v1, v46

    #@218
    if-eq v0, v1, :cond_5

    #@21a
    .line 5382
    move-object/from16 v0, p0

    #@21c
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@21e
    move-object/from16 v45, v0

    #@220
    invoke-static/range {v45 .. v45}, Lcom/android/server/wifi/WifiStateMachine;->-wrap23(Lcom/android/server/wifi/WifiStateMachine;)V

    #@223
    .line 5384
    :cond_5
    move-object/from16 v0, p0

    #@225
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@227
    move-object/from16 v45, v0

    #@229
    const-string/jumbo v46, "Detected an interface down, restart driver"

    #@22c
    invoke-virtual/range {v45 .. v46}, Lcom/android/server/wifi/WifiStateMachine;->log(Ljava/lang/String;)V

    #@22f
    .line 5385
    move-object/from16 v0, p0

    #@231
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@233
    move-object/from16 v45, v0

    #@235
    move-object/from16 v0, p0

    #@237
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@239
    move-object/from16 v46, v0

    #@23b
    invoke-static/range {v46 .. v46}, Lcom/android/server/wifi/WifiStateMachine;->-get21(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/internal/util/State;

    #@23e
    move-result-object v46

    #@23f
    invoke-static/range {v45 .. v46}, Lcom/android/server/wifi/WifiStateMachine;->-wrap45(Lcom/android/server/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V

    #@242
    .line 5386
    move-object/from16 v0, p0

    #@244
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@246
    move-object/from16 v45, v0

    #@248
    const v46, 0x2000d

    #@24b
    invoke-virtual/range {v45 .. v46}, Lcom/android/server/wifi/WifiStateMachine;->sendMessage(I)V

    #@24e
    goto/16 :goto_0

    #@250
    .line 5395
    :cond_6
    move-object/from16 v0, p0

    #@252
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@254
    move-object/from16 v45, v0

    #@256
    invoke-static/range {v45 .. v45}, Lcom/android/server/wifi/WifiStateMachine;->-get5(Lcom/android/server/wifi/WifiStateMachine;)Z

    #@259
    move-result v45

    #@25a
    if-nez v45, :cond_8

    #@25c
    sget-object v45, Landroid/net/wifi/SupplicantState;->DISCONNECTED:Landroid/net/wifi/SupplicantState;

    #@25e
    move-object/from16 v0, v36

    #@260
    move-object/from16 v1, v45

    #@262
    if-ne v0, v1, :cond_8

    #@264
    .line 5396
    move-object/from16 v0, p0

    #@266
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@268
    move-object/from16 v45, v0

    #@26a
    invoke-static/range {v45 .. v45}, Lcom/android/server/wifi/WifiStateMachine;->-get37(Lcom/android/server/wifi/WifiStateMachine;)Landroid/net/NetworkInfo;

    #@26d
    move-result-object v45

    #@26e
    invoke-virtual/range {v45 .. v45}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    #@271
    move-result-object v45

    #@272
    sget-object v46, Landroid/net/NetworkInfo$State;->DISCONNECTED:Landroid/net/NetworkInfo$State;

    #@274
    move-object/from16 v0, v45

    #@276
    move-object/from16 v1, v46

    #@278
    if-eq v0, v1, :cond_8

    #@27a
    .line 5397
    invoke-static {}, Lcom/android/server/wifi/WifiStateMachine;->-get0()Z

    #@27d
    move-result v45

    #@27e
    if-eqz v45, :cond_7

    #@280
    move-object/from16 v0, p0

    #@282
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@284
    move-object/from16 v45, v0

    #@286
    const-string/jumbo v46, "Missed CTRL-EVENT-DISCONNECTED, disconnect"

    #@289
    invoke-virtual/range {v45 .. v46}, Lcom/android/server/wifi/WifiStateMachine;->log(Ljava/lang/String;)V

    #@28c
    .line 5398
    :cond_7
    move-object/from16 v0, p0

    #@28e
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@290
    move-object/from16 v45, v0

    #@292
    invoke-static/range {v45 .. v45}, Lcom/android/server/wifi/WifiStateMachine;->-wrap23(Lcom/android/server/wifi/WifiStateMachine;)V

    #@295
    .line 5399
    move-object/from16 v0, p0

    #@297
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@299
    move-object/from16 v45, v0

    #@29b
    move-object/from16 v0, p0

    #@29d
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@29f
    move-object/from16 v46, v0

    #@2a1
    invoke-static/range {v46 .. v46}, Lcom/android/server/wifi/WifiStateMachine;->-get16(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/internal/util/State;

    #@2a4
    move-result-object v46

    #@2a5
    invoke-static/range {v45 .. v46}, Lcom/android/server/wifi/WifiStateMachine;->-wrap45(Lcom/android/server/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V

    #@2a8
    .line 5405
    :cond_8
    sget-object v45, Landroid/net/wifi/SupplicantState;->COMPLETED:Landroid/net/wifi/SupplicantState;

    #@2aa
    move-object/from16 v0, v36

    #@2ac
    move-object/from16 v1, v45

    #@2ae
    if-ne v0, v1, :cond_3

    #@2b0
    .line 5406
    move-object/from16 v0, p0

    #@2b2
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@2b4
    move-object/from16 v45, v0

    #@2b6
    invoke-static/range {v45 .. v45}, Lcom/android/server/wifi/WifiStateMachine;->-get28(Lcom/android/server/wifi/WifiStateMachine;)Landroid/net/ip/IpManager;

    #@2b9
    move-result-object v45

    #@2ba
    invoke-virtual/range {v45 .. v45}, Landroid/net/ip/IpManager;->confirmConfiguration()V

    #@2bd
    goto/16 :goto_0

    #@2bf
    .line 5410
    .end local v36    # "state":Landroid/net/wifi/SupplicantState;
    :sswitch_5
    move-object/from16 v0, p1

    #@2c1
    iget v0, v0, Landroid/os/Message;->arg1:I

    #@2c3
    move/from16 v45, v0

    #@2c5
    const/16 v46, 0x1

    #@2c7
    move/from16 v0, v45

    #@2c9
    move/from16 v1, v46

    #@2cb
    if-ne v0, v1, :cond_9

    #@2cd
    .line 5411
    move-object/from16 v0, p0

    #@2cf
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@2d1
    move-object/from16 v45, v0

    #@2d3
    invoke-static/range {v45 .. v45}, Lcom/android/server/wifi/WifiStateMachine;->-get83(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiNative;

    #@2d6
    move-result-object v45

    #@2d7
    invoke-virtual/range {v45 .. v45}, Lcom/android/server/wifi/WifiNative;->disconnect()Z

    #@2da
    .line 5412
    move-object/from16 v0, p0

    #@2dc
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@2de
    move-object/from16 v45, v0

    #@2e0
    const/16 v46, 0x1

    #@2e2
    invoke-static/range {v45 .. v46}, Lcom/android/server/wifi/WifiStateMachine;->-set32(Lcom/android/server/wifi/WifiStateMachine;Z)Z

    #@2e5
    goto/16 :goto_0

    #@2e7
    .line 5414
    :cond_9
    move-object/from16 v0, p0

    #@2e9
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@2eb
    move-object/from16 v45, v0

    #@2ed
    invoke-static/range {v45 .. v45}, Lcom/android/server/wifi/WifiStateMachine;->-get83(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiNative;

    #@2f0
    move-result-object v45

    #@2f1
    invoke-virtual/range {v45 .. v45}, Lcom/android/server/wifi/WifiNative;->reconnect()Z

    #@2f4
    .line 5415
    move-object/from16 v0, p0

    #@2f6
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@2f8
    move-object/from16 v45, v0

    #@2fa
    const/16 v46, 0x0

    #@2fc
    invoke-static/range {v45 .. v46}, Lcom/android/server/wifi/WifiStateMachine;->-set32(Lcom/android/server/wifi/WifiStateMachine;Z)Z

    #@2ff
    goto/16 :goto_0

    #@301
    .line 5420
    :sswitch_6
    move-object/from16 v0, p0

    #@303
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@305
    move-object/from16 v45, v0

    #@307
    invoke-static/range {v45 .. v45}, Lcom/android/server/wifi/WifiStateMachine;->-get73(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigManager;

    #@30a
    move-result-object v45

    #@30b
    .line 5421
    move-object/from16 v0, p1

    #@30d
    iget v0, v0, Landroid/os/Message;->sendingUid:I

    #@30f
    move/from16 v46, v0

    #@311
    invoke-static/range {v46 .. v46}, Landroid/os/UserHandle;->getUserId(I)I

    #@314
    move-result v46

    #@315
    .line 5420
    invoke-virtual/range {v45 .. v46}, Lcom/android/server/wifi/WifiConfigManager;->isCurrentUserProfile(I)Z

    #@318
    move-result v45

    #@319
    if-nez v45, :cond_a

    #@31b
    .line 5422
    move-object/from16 v0, p0

    #@31d
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@31f
    move-object/from16 v45, v0

    #@321
    new-instance v46, Ljava/lang/StringBuilder;

    #@323
    invoke-direct/range {v46 .. v46}, Ljava/lang/StringBuilder;-><init>()V

    #@326
    const-string/jumbo v47, "Only the current foreground user can modify networks  currentUserId="

    #@329
    invoke-virtual/range {v46 .. v47}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@32c
    move-result-object v46

    #@32d
    .line 5423
    move-object/from16 v0, p0

    #@32f
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@331
    move-object/from16 v47, v0

    #@333
    invoke-static/range {v47 .. v47}, Lcom/android/server/wifi/WifiStateMachine;->-get73(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigManager;

    #@336
    move-result-object v47

    #@337
    invoke-virtual/range {v47 .. v47}, Lcom/android/server/wifi/WifiConfigManager;->getCurrentUserId()I

    #@33a
    move-result v47

    #@33b
    .line 5422
    invoke-virtual/range {v46 .. v47}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@33e
    move-result-object v46

    #@33f
    .line 5424
    const-string/jumbo v47, " sendingUserId="

    #@342
    .line 5422
    invoke-virtual/range {v46 .. v47}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@345
    move-result-object v46

    #@346
    .line 5424
    move-object/from16 v0, p1

    #@348
    iget v0, v0, Landroid/os/Message;->sendingUid:I

    #@34a
    move/from16 v47, v0

    #@34c
    invoke-static/range {v47 .. v47}, Landroid/os/UserHandle;->getUserId(I)I

    #@34f
    move-result v47

    #@350
    .line 5422
    invoke-virtual/range {v46 .. v47}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@353
    move-result-object v46

    #@354
    invoke-virtual/range {v46 .. v46}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@357
    move-result-object v46

    #@358
    invoke-virtual/range {v45 .. v46}, Lcom/android/server/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V

    #@35b
    .line 5425
    move-object/from16 v0, p0

    #@35d
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@35f
    move-object/from16 v45, v0

    #@361
    move-object/from16 v0, p1

    #@363
    iget v0, v0, Landroid/os/Message;->what:I

    #@365
    move/from16 v46, v0

    #@367
    const/16 v47, -0x1

    #@369
    move-object/from16 v0, v45

    #@36b
    move-object/from16 v1, p1

    #@36d
    move/from16 v2, v46

    #@36f
    move/from16 v3, v47

    #@371
    invoke-static {v0, v1, v2, v3}, Lcom/android/server/wifi/WifiStateMachine;->-wrap31(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;II)V

    #@374
    goto/16 :goto_0

    #@376
    .line 5429
    :cond_a
    move-object/from16 v0, p1

    #@378
    iget-object v9, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@37a
    check-cast v9, Landroid/net/wifi/WifiConfiguration;

    #@37c
    .line 5431
    .local v9, "config":Landroid/net/wifi/WifiConfiguration;
    move-object/from16 v0, p0

    #@37e
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@380
    move-object/from16 v45, v0

    #@382
    move-object/from16 v0, p1

    #@384
    iget v0, v0, Landroid/os/Message;->sendingUid:I

    #@386
    move/from16 v46, v0

    #@388
    .line 5432
    const/16 v47, 0x0

    #@38a
    .line 5431
    move-object/from16 v0, v45

    #@38c
    move/from16 v1, v46

    #@38e
    move/from16 v2, v47

    #@390
    invoke-virtual {v0, v9, v1, v2}, Lcom/android/server/wifi/WifiStateMachine;->recordUidIfAuthorized(Landroid/net/wifi/WifiConfiguration;IZ)Z

    #@393
    move-result v45

    #@394
    if-nez v45, :cond_b

    #@396
    .line 5433
    move-object/from16 v0, p0

    #@398
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@39a
    move-object/from16 v45, v0

    #@39c
    new-instance v46, Ljava/lang/StringBuilder;

    #@39e
    invoke-direct/range {v46 .. v46}, Ljava/lang/StringBuilder;-><init>()V

    #@3a1
    const-string/jumbo v47, "Not authorized to update network  config="

    #@3a4
    invoke-virtual/range {v46 .. v47}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3a7
    move-result-object v46

    #@3a8
    .line 5434
    iget-object v0, v9, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    #@3aa
    move-object/from16 v47, v0

    #@3ac
    .line 5433
    invoke-virtual/range {v46 .. v47}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3af
    move-result-object v46

    #@3b0
    .line 5435
    const-string/jumbo v47, " cnid="

    #@3b3
    .line 5433
    invoke-virtual/range {v46 .. v47}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3b6
    move-result-object v46

    #@3b7
    .line 5435
    iget v0, v9, Landroid/net/wifi/WifiConfiguration;->networkId:I

    #@3b9
    move/from16 v47, v0

    #@3bb
    .line 5433
    invoke-virtual/range {v46 .. v47}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@3be
    move-result-object v46

    #@3bf
    .line 5436
    const-string/jumbo v47, " uid="

    #@3c2
    .line 5433
    invoke-virtual/range {v46 .. v47}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3c5
    move-result-object v46

    #@3c6
    .line 5436
    move-object/from16 v0, p1

    #@3c8
    iget v0, v0, Landroid/os/Message;->sendingUid:I

    #@3ca
    move/from16 v47, v0

    #@3cc
    .line 5433
    invoke-virtual/range {v46 .. v47}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@3cf
    move-result-object v46

    #@3d0
    invoke-virtual/range {v46 .. v46}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3d3
    move-result-object v46

    #@3d4
    invoke-static/range {v45 .. v46}, Lcom/android/server/wifi/WifiStateMachine;->-wrap29(Lcom/android/server/wifi/WifiStateMachine;Ljava/lang/String;)V

    #@3d7
    .line 5437
    move-object/from16 v0, p0

    #@3d9
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@3db
    move-object/from16 v45, v0

    #@3dd
    move-object/from16 v0, p1

    #@3df
    iget v0, v0, Landroid/os/Message;->what:I

    #@3e1
    move/from16 v46, v0

    #@3e3
    const/16 v47, -0x1

    #@3e5
    move-object/from16 v0, v45

    #@3e7
    move-object/from16 v1, p1

    #@3e9
    move/from16 v2, v46

    #@3eb
    move/from16 v3, v47

    #@3ed
    invoke-static {v0, v1, v2, v3}, Lcom/android/server/wifi/WifiStateMachine;->-wrap31(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;II)V

    #@3f0
    goto/16 :goto_0

    #@3f2
    .line 5441
    :cond_b
    move-object/from16 v0, p0

    #@3f4
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@3f6
    move-object/from16 v45, v0

    #@3f8
    invoke-static/range {v45 .. v45}, Lcom/android/server/wifi/WifiStateMachine;->-get73(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigManager;

    #@3fb
    move-result-object v45

    #@3fc
    move-object/from16 v0, p1

    #@3fe
    iget v0, v0, Landroid/os/Message;->sendingUid:I

    #@400
    move/from16 v46, v0

    #@402
    move-object/from16 v0, v45

    #@404
    move/from16 v1, v46

    #@406
    invoke-virtual {v0, v9, v1}, Lcom/android/server/wifi/WifiConfigManager;->addOrUpdateNetwork(Landroid/net/wifi/WifiConfiguration;I)I

    #@409
    move-result v29

    #@40a
    .line 5442
    .local v29, "res":I
    if-gez v29, :cond_d

    #@40c
    .line 5443
    move-object/from16 v0, p0

    #@40e
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@410
    move-object/from16 v45, v0

    #@412
    invoke-static {}, Lcom/android/server/wifi/WifiStateMachine;->-get3()I

    #@415
    move-result v46

    #@416
    invoke-static/range {v45 .. v46}, Lcom/android/server/wifi/WifiStateMachine;->-set38(Lcom/android/server/wifi/WifiStateMachine;I)I

    #@419
    .line 5472
    :cond_c
    :goto_1
    move-object/from16 v0, p0

    #@41b
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@41d
    move-object/from16 v45, v0

    #@41f
    const v46, 0x20034

    #@422
    move-object/from16 v0, v45

    #@424
    move-object/from16 v1, p1

    #@426
    move/from16 v2, v46

    #@428
    move/from16 v3, v29

    #@42a
    invoke-static {v0, v1, v2, v3}, Lcom/android/server/wifi/WifiStateMachine;->-wrap31(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;II)V

    #@42d
    goto/16 :goto_0

    #@42f
    .line 5445
    :cond_d
    move-object/from16 v0, p0

    #@431
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@433
    move-object/from16 v45, v0

    #@435
    invoke-virtual/range {v45 .. v45}, Lcom/android/server/wifi/WifiStateMachine;->getCurrentWifiConfiguration()Landroid/net/wifi/WifiConfiguration;

    #@438
    move-result-object v11

    #@439
    .line 5446
    .local v11, "curConfig":Landroid/net/wifi/WifiConfiguration;
    if-eqz v11, :cond_c

    #@43b
    if-eqz v9, :cond_c

    #@43d
    .line 5448
    invoke-virtual {v9}, Landroid/net/wifi/WifiConfiguration;->getNetworkSelectionStatus()Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;

    #@440
    move-result-object v23

    #@441
    .line 5449
    .local v23, "networkStatus":Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;
    iget v0, v11, Landroid/net/wifi/WifiConfiguration;->priority:I

    #@443
    move/from16 v45, v0

    #@445
    iget v0, v9, Landroid/net/wifi/WifiConfiguration;->priority:I

    #@447
    move/from16 v46, v0

    #@449
    move/from16 v0, v45

    #@44b
    move/from16 v1, v46

    #@44d
    if-ge v0, v1, :cond_c

    #@44f
    if-eqz v23, :cond_c

    #@451
    .line 5450
    invoke-virtual/range {v23 .. v23}, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->isNetworkPermanentlyDisabled()Z

    #@454
    move-result v45

    #@455
    if-nez v45, :cond_c

    #@457
    .line 5454
    move-object/from16 v0, p0

    #@459
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@45b
    move-object/from16 v45, v0

    #@45d
    invoke-static/range {v45 .. v45}, Lcom/android/server/wifi/WifiStateMachine;->-get73(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigManager;

    #@460
    move-result-object v45

    #@461
    move-object/from16 v0, v45

    #@463
    move/from16 v1, v29

    #@465
    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiConfigManager;->setAndEnableLastSelectedConfiguration(I)V

    #@468
    .line 5455
    move-object/from16 v0, p0

    #@46a
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@46c
    move-object/from16 v45, v0

    #@46e
    invoke-static/range {v45 .. v45}, Lcom/android/server/wifi/WifiStateMachine;->-get73(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigManager;

    #@471
    move-result-object v45

    #@472
    move-object/from16 v0, p1

    #@474
    iget v0, v0, Landroid/os/Message;->sendingUid:I

    #@476
    move/from16 v46, v0

    #@478
    move-object/from16 v0, v45

    #@47a
    move/from16 v1, v46

    #@47c
    invoke-virtual {v0, v9, v1}, Lcom/android/server/wifi/WifiConfigManager;->updateLastConnectUid(Landroid/net/wifi/WifiConfiguration;I)Z

    #@47f
    .line 5456
    move-object/from16 v0, p0

    #@481
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@483
    move-object/from16 v45, v0

    #@485
    invoke-static/range {v45 .. v45}, Lcom/android/server/wifi/WifiStateMachine;->-get73(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigManager;

    #@488
    move-result-object v45

    #@489
    .line 5457
    move-object/from16 v0, p1

    #@48b
    iget v0, v0, Landroid/os/Message;->sendingUid:I

    #@48d
    move/from16 v46, v0

    #@48f
    .line 5456
    invoke-virtual/range {v45 .. v46}, Lcom/android/server/wifi/WifiConfigManager;->checkConfigOverridePermission(I)Z

    #@492
    move-result v26

    #@493
    .line 5458
    .local v26, "persist":Z
    move-object/from16 v0, p0

    #@495
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@497
    move-object/from16 v45, v0

    #@499
    invoke-static/range {v45 .. v45}, Lcom/android/server/wifi/WifiStateMachine;->-get75(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConnectivityManager;

    #@49c
    move-result-object v45

    #@49d
    if-eqz v45, :cond_e

    #@49f
    .line 5459
    move-object/from16 v0, p0

    #@4a1
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@4a3
    move-object/from16 v45, v0

    #@4a5
    invoke-static/range {v45 .. v45}, Lcom/android/server/wifi/WifiStateMachine;->-get75(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConnectivityManager;

    #@4a8
    move-result-object v45

    #@4a9
    move-object/from16 v0, v45

    #@4ab
    move/from16 v1, v29

    #@4ad
    move/from16 v2, v26

    #@4af
    invoke-virtual {v0, v1, v2}, Lcom/android/server/wifi/WifiConnectivityManager;->connectToUserSelectNetwork(IZ)V

    #@4b2
    .line 5464
    :cond_e
    move-object/from16 v0, p0

    #@4b4
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@4b6
    move-object/from16 v45, v0

    #@4b8
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    #@4bb
    move-result-wide v46

    #@4bc
    invoke-static/range {v45 .. v47}, Lcom/android/server/wifi/WifiStateMachine;->-set1(Lcom/android/server/wifi/WifiStateMachine;J)J

    #@4bf
    .line 5465
    move-object/from16 v0, p0

    #@4c1
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@4c3
    move-object/from16 v45, v0

    #@4c5
    invoke-static/range {v45 .. v45}, Lcom/android/server/wifi/WifiStateMachine;->-get74(Lcom/android/server/wifi/WifiStateMachine;)Landroid/net/wifi/WifiConnectionStatistics;

    #@4c8
    move-result-object v45

    #@4c9
    move-object/from16 v0, v45

    #@4cb
    iget v0, v0, Landroid/net/wifi/WifiConnectionStatistics;->numWifiManagerJoinAttempt:I

    #@4cd
    move/from16 v46, v0

    #@4cf
    add-int/lit8 v46, v46, 0x1

    #@4d1
    move/from16 v0, v46

    #@4d3
    move-object/from16 v1, v45

    #@4d5
    iput v0, v1, Landroid/net/wifi/WifiConnectionStatistics;->numWifiManagerJoinAttempt:I

    #@4d7
    .line 5468
    move-object/from16 v0, p0

    #@4d9
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@4db
    move-object/from16 v45, v0

    #@4dd
    sget-object v46, Lcom/android/server/wifi/WifiStateMachine;->WIFI_WORK_SOURCE:Landroid/os/WorkSource;

    #@4df
    const/16 v47, -0x3

    #@4e1
    const/16 v48, 0x0

    #@4e3
    const/16 v49, 0x0

    #@4e5
    move-object/from16 v0, v45

    #@4e7
    move/from16 v1, v47

    #@4e9
    move/from16 v2, v48

    #@4eb
    move-object/from16 v3, v49

    #@4ed
    move-object/from16 v4, v46

    #@4ef
    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/server/wifi/WifiStateMachine;->startScan(IILandroid/net/wifi/ScanSettings;Landroid/os/WorkSource;)V

    #@4f2
    goto/16 :goto_1

    #@4f4
    .line 5476
    .end local v9    # "config":Landroid/net/wifi/WifiConfiguration;
    .end local v11    # "curConfig":Landroid/net/wifi/WifiConfiguration;
    .end local v23    # "networkStatus":Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;
    .end local v26    # "persist":Z
    .end local v29    # "res":I
    :sswitch_7
    move-object/from16 v0, p0

    #@4f6
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@4f8
    move-object/from16 v45, v0

    #@4fa
    invoke-static/range {v45 .. v45}, Lcom/android/server/wifi/WifiStateMachine;->-get73(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigManager;

    #@4fd
    move-result-object v45

    #@4fe
    .line 5477
    move-object/from16 v0, p1

    #@500
    iget v0, v0, Landroid/os/Message;->sendingUid:I

    #@502
    move/from16 v46, v0

    #@504
    invoke-static/range {v46 .. v46}, Landroid/os/UserHandle;->getUserId(I)I

    #@507
    move-result v46

    #@508
    .line 5476
    invoke-virtual/range {v45 .. v46}, Lcom/android/server/wifi/WifiConfigManager;->isCurrentUserProfile(I)Z

    #@50b
    move-result v45

    #@50c
    if-nez v45, :cond_f

    #@50e
    .line 5478
    move-object/from16 v0, p0

    #@510
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@512
    move-object/from16 v45, v0

    #@514
    new-instance v46, Ljava/lang/StringBuilder;

    #@516
    invoke-direct/range {v46 .. v46}, Ljava/lang/StringBuilder;-><init>()V

    #@519
    const-string/jumbo v47, "Only the current foreground user can modify networks  currentUserId="

    #@51c
    invoke-virtual/range {v46 .. v47}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@51f
    move-result-object v46

    #@520
    .line 5479
    move-object/from16 v0, p0

    #@522
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@524
    move-object/from16 v47, v0

    #@526
    invoke-static/range {v47 .. v47}, Lcom/android/server/wifi/WifiStateMachine;->-get73(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigManager;

    #@529
    move-result-object v47

    #@52a
    invoke-virtual/range {v47 .. v47}, Lcom/android/server/wifi/WifiConfigManager;->getCurrentUserId()I

    #@52d
    move-result v47

    #@52e
    .line 5478
    invoke-virtual/range {v46 .. v47}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@531
    move-result-object v46

    #@532
    .line 5480
    const-string/jumbo v47, " sendingUserId="

    #@535
    .line 5478
    invoke-virtual/range {v46 .. v47}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@538
    move-result-object v46

    #@539
    .line 5480
    move-object/from16 v0, p1

    #@53b
    iget v0, v0, Landroid/os/Message;->sendingUid:I

    #@53d
    move/from16 v47, v0

    #@53f
    invoke-static/range {v47 .. v47}, Landroid/os/UserHandle;->getUserId(I)I

    #@542
    move-result v47

    #@543
    .line 5478
    invoke-virtual/range {v46 .. v47}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@546
    move-result-object v46

    #@547
    invoke-virtual/range {v46 .. v46}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@54a
    move-result-object v46

    #@54b
    invoke-virtual/range {v45 .. v46}, Lcom/android/server/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V

    #@54e
    .line 5481
    move-object/from16 v0, p0

    #@550
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@552
    move-object/from16 v45, v0

    #@554
    move-object/from16 v0, p1

    #@556
    iget v0, v0, Landroid/os/Message;->what:I

    #@558
    move/from16 v46, v0

    #@55a
    const/16 v47, -0x1

    #@55c
    move-object/from16 v0, v45

    #@55e
    move-object/from16 v1, p1

    #@560
    move/from16 v2, v46

    #@562
    move/from16 v3, v47

    #@564
    invoke-static {v0, v1, v2, v3}, Lcom/android/server/wifi/WifiStateMachine;->-wrap31(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;II)V

    #@567
    goto/16 :goto_0

    #@569
    .line 5484
    :cond_f
    move-object/from16 v0, p1

    #@56b
    iget v0, v0, Landroid/os/Message;->arg1:I

    #@56d
    move/from16 v21, v0

    #@56f
    .line 5486
    .local v21, "netId":I
    move-object/from16 v0, p0

    #@571
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@573
    move-object/from16 v45, v0

    #@575
    invoke-static/range {v45 .. v45}, Lcom/android/server/wifi/WifiStateMachine;->-get73(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigManager;

    #@578
    move-result-object v45

    #@579
    move-object/from16 v0, p1

    #@57b
    iget v0, v0, Landroid/os/Message;->sendingUid:I

    #@57d
    move/from16 v46, v0

    #@57f
    .line 5487
    const/16 v47, 0x0

    #@581
    .line 5486
    move-object/from16 v0, v45

    #@583
    move/from16 v1, v46

    #@585
    move/from16 v2, v21

    #@587
    move/from16 v3, v47

    #@589
    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/wifi/WifiConfigManager;->canModifyNetwork(IIZ)Z

    #@58c
    move-result v45

    #@58d
    if-nez v45, :cond_10

    #@58f
    .line 5488
    move-object/from16 v0, p0

    #@591
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@593
    move-object/from16 v45, v0

    #@595
    new-instance v46, Ljava/lang/StringBuilder;

    #@597
    invoke-direct/range {v46 .. v46}, Ljava/lang/StringBuilder;-><init>()V

    #@59a
    const-string/jumbo v47, "Not authorized to remove network  cnid="

    #@59d
    invoke-virtual/range {v46 .. v47}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5a0
    move-result-object v46

    #@5a1
    move-object/from16 v0, v46

    #@5a3
    move/from16 v1, v21

    #@5a5
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@5a8
    move-result-object v46

    #@5a9
    .line 5490
    const-string/jumbo v47, " uid="

    #@5ac
    .line 5488
    invoke-virtual/range {v46 .. v47}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5af
    move-result-object v46

    #@5b0
    .line 5490
    move-object/from16 v0, p1

    #@5b2
    iget v0, v0, Landroid/os/Message;->sendingUid:I

    #@5b4
    move/from16 v47, v0

    #@5b6
    .line 5488
    invoke-virtual/range {v46 .. v47}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@5b9
    move-result-object v46

    #@5ba
    invoke-virtual/range {v46 .. v46}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@5bd
    move-result-object v46

    #@5be
    invoke-static/range {v45 .. v46}, Lcom/android/server/wifi/WifiStateMachine;->-wrap29(Lcom/android/server/wifi/WifiStateMachine;Ljava/lang/String;)V

    #@5c1
    .line 5491
    move-object/from16 v0, p0

    #@5c3
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@5c5
    move-object/from16 v45, v0

    #@5c7
    move-object/from16 v0, p1

    #@5c9
    iget v0, v0, Landroid/os/Message;->what:I

    #@5cb
    move/from16 v46, v0

    #@5cd
    const/16 v47, -0x1

    #@5cf
    move-object/from16 v0, v45

    #@5d1
    move-object/from16 v1, p1

    #@5d3
    move/from16 v2, v46

    #@5d5
    move/from16 v3, v47

    #@5d7
    invoke-static {v0, v1, v2, v3}, Lcom/android/server/wifi/WifiStateMachine;->-wrap31(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;II)V

    #@5da
    goto/16 :goto_0

    #@5dc
    .line 5495
    :cond_10
    move-object/from16 v0, p0

    #@5de
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@5e0
    move-object/from16 v45, v0

    #@5e2
    invoke-static/range {v45 .. v45}, Lcom/android/server/wifi/WifiStateMachine;->-get73(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigManager;

    #@5e5
    move-result-object v45

    #@5e6
    move-object/from16 v0, p1

    #@5e8
    iget v0, v0, Landroid/os/Message;->arg1:I

    #@5ea
    move/from16 v46, v0

    #@5ec
    invoke-virtual/range {v45 .. v46}, Lcom/android/server/wifi/WifiConfigManager;->removeNetwork(I)Z

    #@5ef
    move-result v25

    #@5f0
    .line 5496
    .local v25, "ok":Z
    if-nez v25, :cond_11

    #@5f2
    .line 5497
    move-object/from16 v0, p0

    #@5f4
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@5f6
    move-object/from16 v45, v0

    #@5f8
    invoke-static {}, Lcom/android/server/wifi/WifiStateMachine;->-get3()I

    #@5fb
    move-result v46

    #@5fc
    invoke-static/range {v45 .. v46}, Lcom/android/server/wifi/WifiStateMachine;->-set38(Lcom/android/server/wifi/WifiStateMachine;I)I

    #@5ff
    .line 5499
    :cond_11
    move-object/from16 v0, p0

    #@601
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@603
    move-object/from16 v46, v0

    #@605
    move-object/from16 v0, p1

    #@607
    iget v0, v0, Landroid/os/Message;->what:I

    #@609
    move/from16 v47, v0

    #@60b
    if-eqz v25, :cond_12

    #@60d
    const/16 v45, 0x1

    #@60f
    :goto_2
    move-object/from16 v0, v46

    #@611
    move-object/from16 v1, p1

    #@613
    move/from16 v2, v47

    #@615
    move/from16 v3, v45

    #@617
    invoke-static {v0, v1, v2, v3}, Lcom/android/server/wifi/WifiStateMachine;->-wrap31(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;II)V

    #@61a
    goto/16 :goto_0

    #@61c
    :cond_12
    const/16 v45, -0x1

    #@61e
    goto :goto_2

    #@61f
    .line 5503
    .end local v21    # "netId":I
    .end local v25    # "ok":Z
    :sswitch_8
    move-object/from16 v0, p0

    #@621
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@623
    move-object/from16 v45, v0

    #@625
    invoke-static/range {v45 .. v45}, Lcom/android/server/wifi/WifiStateMachine;->-get73(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigManager;

    #@628
    move-result-object v45

    #@629
    .line 5504
    move-object/from16 v0, p1

    #@62b
    iget v0, v0, Landroid/os/Message;->sendingUid:I

    #@62d
    move/from16 v46, v0

    #@62f
    invoke-static/range {v46 .. v46}, Landroid/os/UserHandle;->getUserId(I)I

    #@632
    move-result v46

    #@633
    .line 5503
    invoke-virtual/range {v45 .. v46}, Lcom/android/server/wifi/WifiConfigManager;->isCurrentUserProfile(I)Z

    #@636
    move-result v45

    #@637
    if-nez v45, :cond_13

    #@639
    .line 5505
    move-object/from16 v0, p0

    #@63b
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@63d
    move-object/from16 v45, v0

    #@63f
    new-instance v46, Ljava/lang/StringBuilder;

    #@641
    invoke-direct/range {v46 .. v46}, Ljava/lang/StringBuilder;-><init>()V

    #@644
    const-string/jumbo v47, "Only the current foreground user can modify networks  currentUserId="

    #@647
    invoke-virtual/range {v46 .. v47}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@64a
    move-result-object v46

    #@64b
    .line 5506
    move-object/from16 v0, p0

    #@64d
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@64f
    move-object/from16 v47, v0

    #@651
    invoke-static/range {v47 .. v47}, Lcom/android/server/wifi/WifiStateMachine;->-get73(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigManager;

    #@654
    move-result-object v47

    #@655
    invoke-virtual/range {v47 .. v47}, Lcom/android/server/wifi/WifiConfigManager;->getCurrentUserId()I

    #@658
    move-result v47

    #@659
    .line 5505
    invoke-virtual/range {v46 .. v47}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@65c
    move-result-object v46

    #@65d
    .line 5507
    const-string/jumbo v47, " sendingUserId="

    #@660
    .line 5505
    invoke-virtual/range {v46 .. v47}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@663
    move-result-object v46

    #@664
    .line 5507
    move-object/from16 v0, p1

    #@666
    iget v0, v0, Landroid/os/Message;->sendingUid:I

    #@668
    move/from16 v47, v0

    #@66a
    invoke-static/range {v47 .. v47}, Landroid/os/UserHandle;->getUserId(I)I

    #@66d
    move-result v47

    #@66e
    .line 5505
    invoke-virtual/range {v46 .. v47}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@671
    move-result-object v46

    #@672
    invoke-virtual/range {v46 .. v46}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@675
    move-result-object v46

    #@676
    invoke-virtual/range {v45 .. v46}, Lcom/android/server/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V

    #@679
    .line 5508
    move-object/from16 v0, p0

    #@67b
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@67d
    move-object/from16 v45, v0

    #@67f
    move-object/from16 v0, p1

    #@681
    iget v0, v0, Landroid/os/Message;->what:I

    #@683
    move/from16 v46, v0

    #@685
    const/16 v47, -0x1

    #@687
    move-object/from16 v0, v45

    #@689
    move-object/from16 v1, p1

    #@68b
    move/from16 v2, v46

    #@68d
    move/from16 v3, v47

    #@68f
    invoke-static {v0, v1, v2, v3}, Lcom/android/server/wifi/WifiStateMachine;->-wrap31(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;II)V

    #@692
    goto/16 :goto_0

    #@694
    .line 5512
    :cond_13
    move-object/from16 v0, p1

    #@696
    iget v0, v0, Landroid/os/Message;->arg2:I

    #@698
    move/from16 v45, v0

    #@69a
    const/16 v46, 0x1

    #@69c
    move/from16 v0, v45

    #@69e
    move/from16 v1, v46

    #@6a0
    if-ne v0, v1, :cond_14

    #@6a2
    const/4 v13, 0x1

    #@6a3
    .line 5513
    .local v13, "disableOthers":Z
    :goto_3
    move-object/from16 v0, p1

    #@6a5
    iget v0, v0, Landroid/os/Message;->arg1:I

    #@6a7
    move/from16 v21, v0

    #@6a9
    .line 5514
    .restart local v21    # "netId":I
    move-object/from16 v0, p0

    #@6ab
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@6ad
    move-object/from16 v45, v0

    #@6af
    invoke-static/range {v45 .. v45}, Lcom/android/server/wifi/WifiStateMachine;->-get73(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigManager;

    #@6b2
    move-result-object v45

    #@6b3
    move-object/from16 v0, v45

    #@6b5
    move/from16 v1, v21

    #@6b7
    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiConfigManager;->getWifiConfiguration(I)Landroid/net/wifi/WifiConfiguration;

    #@6ba
    move-result-object v9

    #@6bb
    .line 5515
    .restart local v9    # "config":Landroid/net/wifi/WifiConfiguration;
    if-nez v9, :cond_15

    #@6bd
    .line 5516
    move-object/from16 v0, p0

    #@6bf
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@6c1
    move-object/from16 v45, v0

    #@6c3
    new-instance v46, Ljava/lang/StringBuilder;

    #@6c5
    invoke-direct/range {v46 .. v46}, Ljava/lang/StringBuilder;-><init>()V

    #@6c8
    const-string/jumbo v47, "No network with id = "

    #@6cb
    invoke-virtual/range {v46 .. v47}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6ce
    move-result-object v46

    #@6cf
    move-object/from16 v0, v46

    #@6d1
    move/from16 v1, v21

    #@6d3
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@6d6
    move-result-object v46

    #@6d7
    invoke-virtual/range {v46 .. v46}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@6da
    move-result-object v46

    #@6db
    invoke-virtual/range {v45 .. v46}, Lcom/android/server/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V

    #@6de
    .line 5517
    move-object/from16 v0, p0

    #@6e0
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@6e2
    move-object/from16 v45, v0

    #@6e4
    invoke-static {}, Lcom/android/server/wifi/WifiStateMachine;->-get3()I

    #@6e7
    move-result v46

    #@6e8
    invoke-static/range {v45 .. v46}, Lcom/android/server/wifi/WifiStateMachine;->-set38(Lcom/android/server/wifi/WifiStateMachine;I)I

    #@6eb
    .line 5518
    move-object/from16 v0, p0

    #@6ed
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@6ef
    move-object/from16 v45, v0

    #@6f1
    move-object/from16 v0, p1

    #@6f3
    iget v0, v0, Landroid/os/Message;->what:I

    #@6f5
    move/from16 v46, v0

    #@6f7
    const/16 v47, -0x1

    #@6f9
    move-object/from16 v0, v45

    #@6fb
    move-object/from16 v1, p1

    #@6fd
    move/from16 v2, v46

    #@6ff
    move/from16 v3, v47

    #@701
    invoke-static {v0, v1, v2, v3}, Lcom/android/server/wifi/WifiStateMachine;->-wrap31(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;II)V

    #@704
    goto/16 :goto_0

    #@706
    .line 5512
    .end local v9    # "config":Landroid/net/wifi/WifiConfiguration;
    .end local v13    # "disableOthers":Z
    .end local v21    # "netId":I
    :cond_14
    const/4 v13, 0x0

    #@707
    .restart local v13    # "disableOthers":Z
    goto :goto_3

    #@708
    .line 5523
    .restart local v9    # "config":Landroid/net/wifi/WifiConfiguration;
    .restart local v21    # "netId":I
    :cond_15
    if-eqz v13, :cond_16

    #@70a
    .line 5525
    move-object/from16 v0, p0

    #@70c
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@70e
    move-object/from16 v45, v0

    #@710
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    #@713
    move-result-wide v46

    #@714
    invoke-static/range {v45 .. v47}, Lcom/android/server/wifi/WifiStateMachine;->-set1(Lcom/android/server/wifi/WifiStateMachine;J)J

    #@717
    .line 5526
    move-object/from16 v0, p0

    #@719
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@71b
    move-object/from16 v45, v0

    #@71d
    invoke-static/range {v45 .. v45}, Lcom/android/server/wifi/WifiStateMachine;->-get74(Lcom/android/server/wifi/WifiStateMachine;)Landroid/net/wifi/WifiConnectionStatistics;

    #@720
    move-result-object v45

    #@721
    move-object/from16 v0, v45

    #@723
    iget v0, v0, Landroid/net/wifi/WifiConnectionStatistics;->numWifiManagerJoinAttempt:I

    #@725
    move/from16 v46, v0

    #@727
    add-int/lit8 v46, v46, 0x1

    #@729
    move/from16 v0, v46

    #@72b
    move-object/from16 v1, v45

    #@72d
    iput v0, v1, Landroid/net/wifi/WifiConnectionStatistics;->numWifiManagerJoinAttempt:I

    #@72f
    .line 5529
    :cond_16
    move-object/from16 v0, p0

    #@731
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@733
    move-object/from16 v45, v0

    #@735
    const-string/jumbo v46, "any"

    #@738
    move-object/from16 v0, v45

    #@73a
    move/from16 v1, v21

    #@73c
    move-object/from16 v2, v46

    #@73e
    invoke-virtual {v0, v1, v2}, Lcom/android/server/wifi/WifiStateMachine;->autoRoamSetBSSID(ILjava/lang/String;)V

    #@741
    .line 5531
    move-object/from16 v0, p0

    #@743
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@745
    move-object/from16 v45, v0

    #@747
    invoke-static/range {v45 .. v45}, Lcom/android/server/wifi/WifiStateMachine;->-get73(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigManager;

    #@74a
    move-result-object v45

    #@74b
    .line 5532
    move-object/from16 v0, p1

    #@74d
    iget v0, v0, Landroid/os/Message;->sendingUid:I

    #@74f
    move/from16 v46, v0

    #@751
    .line 5531
    move-object/from16 v0, v45

    #@753
    move/from16 v1, v46

    #@755
    invoke-virtual {v0, v9, v13, v1}, Lcom/android/server/wifi/WifiConfigManager;->enableNetwork(Landroid/net/wifi/WifiConfiguration;ZI)Z

    #@758
    move-result v25

    #@759
    .line 5533
    .restart local v25    # "ok":Z
    if-nez v25, :cond_18

    #@75b
    .line 5534
    move-object/from16 v0, p0

    #@75d
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@75f
    move-object/from16 v45, v0

    #@761
    invoke-static {}, Lcom/android/server/wifi/WifiStateMachine;->-get3()I

    #@764
    move-result v46

    #@765
    invoke-static/range {v45 .. v46}, Lcom/android/server/wifi/WifiStateMachine;->-set38(Lcom/android/server/wifi/WifiStateMachine;I)I

    #@768
    .line 5539
    :cond_17
    :goto_4
    move-object/from16 v0, p0

    #@76a
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@76c
    move-object/from16 v46, v0

    #@76e
    move-object/from16 v0, p1

    #@770
    iget v0, v0, Landroid/os/Message;->what:I

    #@772
    move/from16 v47, v0

    #@774
    if-eqz v25, :cond_19

    #@776
    const/16 v45, 0x1

    #@778
    :goto_5
    move-object/from16 v0, v46

    #@77a
    move-object/from16 v1, p1

    #@77c
    move/from16 v2, v47

    #@77e
    move/from16 v3, v45

    #@780
    invoke-static {v0, v1, v2, v3}, Lcom/android/server/wifi/WifiStateMachine;->-wrap31(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;II)V

    #@783
    goto/16 :goto_0

    #@785
    .line 5535
    :cond_18
    if-eqz v13, :cond_17

    #@787
    .line 5536
    move-object/from16 v0, p0

    #@789
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@78b
    move-object/from16 v45, v0

    #@78d
    move-object/from16 v0, v45

    #@78f
    move/from16 v1, v21

    #@791
    invoke-static {v0, v1}, Lcom/android/server/wifi/WifiStateMachine;->-set30(Lcom/android/server/wifi/WifiStateMachine;I)I

    #@794
    goto :goto_4

    #@795
    .line 5539
    :cond_19
    const/16 v45, -0x1

    #@797
    goto :goto_5

    #@798
    .line 5542
    .end local v9    # "config":Landroid/net/wifi/WifiConfiguration;
    .end local v13    # "disableOthers":Z
    .end local v21    # "netId":I
    .end local v25    # "ok":Z
    :sswitch_9
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    #@79b
    move-result-wide v38

    #@79c
    .line 5543
    .local v38, "time":J
    move-object/from16 v0, p0

    #@79e
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@7a0
    move-object/from16 v45, v0

    #@7a2
    invoke-static/range {v45 .. v45}, Lcom/android/server/wifi/WifiStateMachine;->-get32(Lcom/android/server/wifi/WifiStateMachine;)J

    #@7a5
    move-result-wide v46

    #@7a6
    sub-long v46, v38, v46

    #@7a8
    const-wide/32 v48, 0x927c0

    #@7ab
    cmp-long v45, v46, v48

    #@7ad
    if-lez v45, :cond_3

    #@7af
    .line 5544
    move-object/from16 v0, p0

    #@7b1
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@7b3
    move-object/from16 v45, v0

    #@7b5
    invoke-static/range {v45 .. v45}, Lcom/android/server/wifi/WifiStateMachine;->-get73(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigManager;

    #@7b8
    move-result-object v45

    #@7b9
    invoke-virtual/range {v45 .. v45}, Lcom/android/server/wifi/WifiConfigManager;->enableAllNetworks()V

    #@7bc
    .line 5545
    move-object/from16 v0, p0

    #@7be
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@7c0
    move-object/from16 v45, v0

    #@7c2
    move-object/from16 v0, v45

    #@7c4
    move-wide/from16 v1, v38

    #@7c6
    invoke-static {v0, v1, v2}, Lcom/android/server/wifi/WifiStateMachine;->-set16(Lcom/android/server/wifi/WifiStateMachine;J)J

    #@7c9
    goto/16 :goto_0

    #@7cb
    .line 5549
    .end local v38    # "time":J
    :sswitch_a
    move-object/from16 v0, p0

    #@7cd
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@7cf
    move-object/from16 v45, v0

    #@7d1
    invoke-static/range {v45 .. v45}, Lcom/android/server/wifi/WifiStateMachine;->-get73(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigManager;

    #@7d4
    move-result-object v45

    #@7d5
    move-object/from16 v0, p1

    #@7d7
    iget v0, v0, Landroid/os/Message;->arg1:I

    #@7d9
    move/from16 v46, v0

    #@7db
    .line 5550
    const/16 v47, 0x9

    #@7dd
    .line 5549
    invoke-virtual/range {v45 .. v47}, Lcom/android/server/wifi/WifiConfigManager;->updateNetworkSelectionStatus(II)Z

    #@7e0
    move-result v45

    #@7e1
    if-eqz v45, :cond_1a

    #@7e3
    .line 5551
    move-object/from16 v0, p0

    #@7e5
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@7e7
    move-object/from16 v45, v0

    #@7e9
    const v46, 0x25013

    #@7ec
    move-object/from16 v0, v45

    #@7ee
    move-object/from16 v1, p1

    #@7f0
    move/from16 v2, v46

    #@7f2
    invoke-static {v0, v1, v2}, Lcom/android/server/wifi/WifiStateMachine;->-wrap30(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;I)V

    #@7f5
    goto/16 :goto_0

    #@7f7
    .line 5553
    :cond_1a
    move-object/from16 v0, p0

    #@7f9
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@7fb
    move-object/from16 v45, v0

    #@7fd
    invoke-static {}, Lcom/android/server/wifi/WifiStateMachine;->-get3()I

    #@800
    move-result v46

    #@801
    invoke-static/range {v45 .. v46}, Lcom/android/server/wifi/WifiStateMachine;->-set38(Lcom/android/server/wifi/WifiStateMachine;I)I

    #@804
    .line 5554
    move-object/from16 v0, p0

    #@806
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@808
    move-object/from16 v45, v0

    #@80a
    const v46, 0x25012

    #@80d
    .line 5555
    const/16 v47, 0x0

    #@80f
    .line 5554
    move-object/from16 v0, v45

    #@811
    move-object/from16 v1, p1

    #@813
    move/from16 v2, v46

    #@815
    move/from16 v3, v47

    #@817
    invoke-static {v0, v1, v2, v3}, Lcom/android/server/wifi/WifiStateMachine;->-wrap31(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;II)V

    #@81a
    goto/16 :goto_0

    #@81c
    .line 5559
    :sswitch_b
    move-object/from16 v0, p0

    #@81e
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@820
    move-object/from16 v45, v0

    #@822
    invoke-static/range {v45 .. v45}, Lcom/android/server/wifi/WifiStateMachine;->-get73(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigManager;

    #@825
    move-result-object v46

    #@826
    move-object/from16 v0, p1

    #@828
    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@82a
    move-object/from16 v45, v0

    #@82c
    check-cast v45, Ljava/lang/String;

    #@82e
    move-object/from16 v0, v46

    #@830
    move-object/from16 v1, v45

    #@832
    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiConfigManager;->disableEphemeralNetwork(Ljava/lang/String;)Landroid/net/wifi/WifiConfiguration;

    #@835
    move-result-object v9

    #@836
    .line 5560
    .restart local v9    # "config":Landroid/net/wifi/WifiConfiguration;
    if-eqz v9, :cond_3

    #@838
    .line 5561
    iget v0, v9, Landroid/net/wifi/WifiConfiguration;->networkId:I

    #@83a
    move/from16 v45, v0

    #@83c
    move-object/from16 v0, p0

    #@83e
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@840
    move-object/from16 v46, v0

    #@842
    invoke-static/range {v46 .. v46}, Lcom/android/server/wifi/WifiStateMachine;->-get33(Lcom/android/server/wifi/WifiStateMachine;)I

    #@845
    move-result v46

    #@846
    move/from16 v0, v45

    #@848
    move/from16 v1, v46

    #@84a
    if-ne v0, v1, :cond_3

    #@84c
    .line 5563
    move-object/from16 v0, p0

    #@84e
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@850
    move-object/from16 v45, v0

    #@852
    const v46, 0x20049

    #@855
    invoke-virtual/range {v45 .. v46}, Lcom/android/server/wifi/WifiStateMachine;->sendMessage(I)V

    #@858
    goto/16 :goto_0

    #@85a
    .line 5568
    .end local v9    # "config":Landroid/net/wifi/WifiConfiguration;
    :sswitch_c
    move-object/from16 v0, p0

    #@85c
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@85e
    move-object/from16 v45, v0

    #@860
    invoke-static/range {v45 .. v45}, Lcom/android/server/wifi/WifiStateMachine;->-get73(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigManager;

    #@863
    move-result-object v46

    #@864
    move-object/from16 v0, p1

    #@866
    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@868
    move-object/from16 v45, v0

    #@86a
    check-cast v45, Ljava/lang/String;

    #@86c
    move-object/from16 v0, v46

    #@86e
    move-object/from16 v1, v45

    #@870
    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiConfigManager;->blackListBssid(Ljava/lang/String;)V

    #@873
    goto/16 :goto_0

    #@875
    .line 5571
    :sswitch_d
    move-object/from16 v0, p0

    #@877
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@879
    move-object/from16 v45, v0

    #@87b
    invoke-static/range {v45 .. v45}, Lcom/android/server/wifi/WifiStateMachine;->-get73(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigManager;

    #@87e
    move-result-object v45

    #@87f
    invoke-virtual/range {v45 .. v45}, Lcom/android/server/wifi/WifiConfigManager;->clearBssidBlacklist()V

    #@882
    goto/16 :goto_0

    #@884
    .line 5574
    :sswitch_e
    move-object/from16 v0, p0

    #@886
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@888
    move-object/from16 v45, v0

    #@88a
    invoke-static/range {v45 .. v45}, Lcom/android/server/wifi/WifiStateMachine;->-get73(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigManager;

    #@88d
    move-result-object v45

    #@88e
    invoke-virtual/range {v45 .. v45}, Lcom/android/server/wifi/WifiConfigManager;->saveConfig()Z

    #@891
    move-result v25

    #@892
    .line 5576
    .restart local v25    # "ok":Z
    invoke-static {}, Lcom/android/server/wifi/WifiStateMachine;->-get0()Z

    #@895
    move-result v45

    #@896
    if-eqz v45, :cond_1b

    #@898
    move-object/from16 v0, p0

    #@89a
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@89c
    move-object/from16 v45, v0

    #@89e
    new-instance v46, Ljava/lang/StringBuilder;

    #@8a0
    invoke-direct/range {v46 .. v46}, Ljava/lang/StringBuilder;-><init>()V

    #@8a3
    const-string/jumbo v47, "did save config "

    #@8a6
    invoke-virtual/range {v46 .. v47}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@8a9
    move-result-object v46

    #@8aa
    move-object/from16 v0, v46

    #@8ac
    move/from16 v1, v25

    #@8ae
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@8b1
    move-result-object v46

    #@8b2
    invoke-virtual/range {v46 .. v46}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@8b5
    move-result-object v46

    #@8b6
    invoke-virtual/range {v45 .. v46}, Lcom/android/server/wifi/WifiStateMachine;->logd(Ljava/lang/String;)V

    #@8b9
    .line 5577
    :cond_1b
    move-object/from16 v0, p0

    #@8bb
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@8bd
    move-object/from16 v46, v0

    #@8bf
    if-eqz v25, :cond_1c

    #@8c1
    const/16 v45, 0x1

    #@8c3
    :goto_6
    const v47, 0x2003a

    #@8c6
    move-object/from16 v0, v46

    #@8c8
    move-object/from16 v1, p1

    #@8ca
    move/from16 v2, v47

    #@8cc
    move/from16 v3, v45

    #@8ce
    invoke-static {v0, v1, v2, v3}, Lcom/android/server/wifi/WifiStateMachine;->-wrap31(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;II)V

    #@8d1
    .line 5580
    move-object/from16 v0, p0

    #@8d3
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@8d5
    move-object/from16 v45, v0

    #@8d7
    invoke-static/range {v45 .. v45}, Lcom/android/server/wifi/WifiStateMachine;->-get8(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/BackupManagerProxy;

    #@8da
    move-result-object v45

    #@8db
    invoke-virtual/range {v45 .. v45}, Lcom/android/server/wifi/BackupManagerProxy;->notifyDataChanged()V

    #@8de
    goto/16 :goto_0

    #@8e0
    .line 5577
    :cond_1c
    const/16 v45, -0x1

    #@8e2
    goto :goto_6

    #@8e3
    .line 5583
    .end local v25    # "ok":Z
    :sswitch_f
    move-object/from16 v0, p0

    #@8e5
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@8e7
    move-object/from16 v45, v0

    #@8e9
    move-object/from16 v0, p1

    #@8eb
    iget v0, v0, Landroid/os/Message;->what:I

    #@8ed
    move/from16 v46, v0

    #@8ef
    .line 5584
    move-object/from16 v0, p0

    #@8f1
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@8f3
    move-object/from16 v47, v0

    #@8f5
    invoke-static/range {v47 .. v47}, Lcom/android/server/wifi/WifiStateMachine;->-get73(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigManager;

    #@8f8
    move-result-object v47

    #@8f9
    invoke-virtual/range {v47 .. v47}, Lcom/android/server/wifi/WifiConfigManager;->getSavedNetworks()Ljava/util/List;

    #@8fc
    move-result-object v47

    #@8fd
    .line 5583
    move-object/from16 v0, v45

    #@8ff
    move-object/from16 v1, p1

    #@901
    move/from16 v2, v46

    #@903
    move-object/from16 v3, v47

    #@905
    invoke-static {v0, v1, v2, v3}, Lcom/android/server/wifi/WifiStateMachine;->-wrap32(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;ILjava/lang/Object;)V

    #@908
    goto/16 :goto_0

    #@90a
    .line 5587
    :sswitch_10
    move-object/from16 v0, p1

    #@90c
    iget v0, v0, Landroid/os/Message;->arg2:I

    #@90e
    move/from16 v22, v0

    #@910
    .line 5588
    .local v22, "networkId":I
    const/16 v16, 0x0

    #@912
    .line 5589
    .local v16, "identitySent":Z
    const/4 v14, -0x1

    #@913
    .line 5591
    .local v14, "eapMethod":I
    move-object/from16 v0, p0

    #@915
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@917
    move-object/from16 v45, v0

    #@919
    invoke-static/range {v45 .. v45}, Lcom/android/server/wifi/WifiStateMachine;->-get89(Lcom/android/server/wifi/WifiStateMachine;)Landroid/net/wifi/WifiConfiguration;

    #@91c
    move-result-object v45

    #@91d
    if-eqz v45, :cond_1d

    #@91f
    .line 5592
    move-object/from16 v0, p0

    #@921
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@923
    move-object/from16 v45, v0

    #@925
    invoke-static/range {v45 .. v45}, Lcom/android/server/wifi/WifiStateMachine;->-get89(Lcom/android/server/wifi/WifiStateMachine;)Landroid/net/wifi/WifiConfiguration;

    #@928
    move-result-object v45

    #@929
    move-object/from16 v0, v45

    #@92b
    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    #@92d
    move-object/from16 v45, v0

    #@92f
    if-eqz v45, :cond_1d

    #@931
    .line 5593
    move-object/from16 v0, p0

    #@933
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@935
    move-object/from16 v45, v0

    #@937
    invoke-static/range {v45 .. v45}, Lcom/android/server/wifi/WifiStateMachine;->-get89(Lcom/android/server/wifi/WifiStateMachine;)Landroid/net/wifi/WifiConfiguration;

    #@93a
    move-result-object v45

    #@93b
    move-object/from16 v0, v45

    #@93d
    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    #@93f
    move-object/from16 v45, v0

    #@941
    invoke-virtual/range {v45 .. v45}, Landroid/net/wifi/WifiEnterpriseConfig;->getEapMethod()I

    #@944
    move-result v14

    #@945
    .line 5597
    :cond_1d
    move-object/from16 v0, p0

    #@947
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@949
    move-object/from16 v45, v0

    #@94b
    invoke-static/range {v45 .. v45}, Lcom/android/server/wifi/WifiStateMachine;->-get89(Lcom/android/server/wifi/WifiStateMachine;)Landroid/net/wifi/WifiConfiguration;

    #@94e
    move-result-object v45

    #@94f
    if-eqz v45, :cond_20

    #@951
    .line 5598
    move-object/from16 v0, p0

    #@953
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@955
    move-object/from16 v45, v0

    #@957
    invoke-static/range {v45 .. v45}, Lcom/android/server/wifi/WifiStateMachine;->-get89(Lcom/android/server/wifi/WifiStateMachine;)Landroid/net/wifi/WifiConfiguration;

    #@95a
    move-result-object v45

    #@95b
    move-object/from16 v0, v45

    #@95d
    iget v0, v0, Landroid/net/wifi/WifiConfiguration;->networkId:I

    #@95f
    move/from16 v45, v0

    #@961
    move/from16 v0, v45

    #@963
    move/from16 v1, v22

    #@965
    if-ne v0, v1, :cond_20

    #@967
    .line 5599
    move-object/from16 v0, p0

    #@969
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@96b
    move-object/from16 v45, v0

    #@96d
    invoke-static/range {v45 .. v45}, Lcom/android/server/wifi/WifiStateMachine;->-get89(Lcom/android/server/wifi/WifiStateMachine;)Landroid/net/wifi/WifiConfiguration;

    #@970
    move-result-object v45

    #@971
    move-object/from16 v0, v45

    #@973
    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    #@975
    move-object/from16 v45, v0

    #@977
    .line 5600
    const/16 v46, 0x3

    #@979
    .line 5599
    invoke-virtual/range {v45 .. v46}, Ljava/util/BitSet;->get(I)Z

    #@97c
    move-result v45

    #@97d
    .line 5597
    if-eqz v45, :cond_20

    #@97f
    .line 5601
    const/16 v45, 0x4

    #@981
    move/from16 v0, v45

    #@983
    if-eq v14, v0, :cond_1e

    #@985
    .line 5602
    const/16 v45, 0x5

    #@987
    move/from16 v0, v45

    #@989
    if-ne v14, v0, :cond_22

    #@98b
    .line 5605
    :cond_1e
    :goto_7
    move-object/from16 v0, p0

    #@98d
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@98f
    move-object/from16 v45, v0

    #@991
    invoke-static/range {v45 .. v45}, Lcom/android/server/wifi/WifiStateMachine;->-get14(Lcom/android/server/wifi/WifiStateMachine;)Landroid/content/Context;

    #@994
    move-result-object v45

    #@995
    const-string/jumbo v46, "phone"

    #@998
    invoke-virtual/range {v45 .. v46}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    #@99b
    move-result-object v37

    #@99c
    .line 5604
    check-cast v37, Landroid/telephony/TelephonyManager;

    #@99e
    .line 5606
    .local v37, "tm":Landroid/telephony/TelephonyManager;
    if-eqz v37, :cond_20

    #@9a0
    .line 5607
    invoke-virtual/range {v37 .. v37}, Landroid/telephony/TelephonyManager;->getSubscriberId()Ljava/lang/String;

    #@9a3
    move-result-object v17

    #@9a4
    .line 5608
    .local v17, "imsi":Ljava/lang/String;
    const-string/jumbo v19, ""

    #@9a7
    .line 5610
    .local v19, "mccMnc":Ljava/lang/String;
    invoke-virtual/range {v37 .. v37}, Landroid/telephony/TelephonyManager;->getSimState()I

    #@9aa
    move-result v45

    #@9ab
    const/16 v46, 0x5

    #@9ad
    move/from16 v0, v45

    #@9af
    move/from16 v1, v46

    #@9b1
    if-ne v0, v1, :cond_1f

    #@9b3
    .line 5611
    invoke-virtual/range {v37 .. v37}, Landroid/telephony/TelephonyManager;->getSimOperator()Ljava/lang/String;

    #@9b6
    move-result-object v19

    #@9b7
    .line 5613
    :cond_1f
    move-object/from16 v0, p0

    #@9b9
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@9bb
    move-object/from16 v45, v0

    #@9bd
    move-object/from16 v0, v45

    #@9bf
    move-object/from16 v1, v17

    #@9c1
    move-object/from16 v2, v19

    #@9c3
    invoke-static {v0, v14, v1, v2}, Lcom/android/server/wifi/WifiStateMachine;->-wrap9(Lcom/android/server/wifi/WifiStateMachine;ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@9c6
    move-result-object v15

    #@9c7
    .line 5615
    .local v15, "identity":Ljava/lang/String;
    invoke-virtual {v15}, Ljava/lang/String;->isEmpty()Z

    #@9ca
    move-result v45

    #@9cb
    if-nez v45, :cond_20

    #@9cd
    .line 5616
    move-object/from16 v0, p0

    #@9cf
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@9d1
    move-object/from16 v45, v0

    #@9d3
    invoke-static/range {v45 .. v45}, Lcom/android/server/wifi/WifiStateMachine;->-get83(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiNative;

    #@9d6
    move-result-object v45

    #@9d7
    move-object/from16 v0, v45

    #@9d9
    move/from16 v1, v22

    #@9db
    invoke-virtual {v0, v1, v15}, Lcom/android/server/wifi/WifiNative;->simIdentityResponse(ILjava/lang/String;)Z

    #@9de
    .line 5617
    const/16 v16, 0x1

    #@9e0
    .line 5621
    .end local v15    # "identity":Ljava/lang/String;
    .end local v17    # "imsi":Ljava/lang/String;
    .end local v19    # "mccMnc":Ljava/lang/String;
    .end local v37    # "tm":Landroid/telephony/TelephonyManager;
    :cond_20
    if-nez v16, :cond_3

    #@9e2
    .line 5623
    move-object/from16 v0, p1

    #@9e4
    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@9e6
    move-object/from16 v35, v0

    #@9e8
    check-cast v35, Ljava/lang/String;

    #@9ea
    .line 5624
    .local v35, "ssid":Ljava/lang/String;
    move-object/from16 v0, p0

    #@9ec
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@9ee
    move-object/from16 v45, v0

    #@9f0
    invoke-static/range {v45 .. v45}, Lcom/android/server/wifi/WifiStateMachine;->-get89(Lcom/android/server/wifi/WifiStateMachine;)Landroid/net/wifi/WifiConfiguration;

    #@9f3
    move-result-object v45

    #@9f4
    if-eqz v45, :cond_21

    #@9f6
    if-eqz v35, :cond_21

    #@9f8
    .line 5625
    move-object/from16 v0, p0

    #@9fa
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@9fc
    move-object/from16 v45, v0

    #@9fe
    invoke-static/range {v45 .. v45}, Lcom/android/server/wifi/WifiStateMachine;->-get89(Lcom/android/server/wifi/WifiStateMachine;)Landroid/net/wifi/WifiConfiguration;

    #@a01
    move-result-object v45

    #@a02
    move-object/from16 v0, v45

    #@a04
    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    #@a06
    move-object/from16 v45, v0

    #@a08
    if-eqz v45, :cond_21

    #@a0a
    .line 5626
    move-object/from16 v0, p0

    #@a0c
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@a0e
    move-object/from16 v45, v0

    #@a10
    invoke-static/range {v45 .. v45}, Lcom/android/server/wifi/WifiStateMachine;->-get89(Lcom/android/server/wifi/WifiStateMachine;)Landroid/net/wifi/WifiConfiguration;

    #@a13
    move-result-object v45

    #@a14
    move-object/from16 v0, v45

    #@a16
    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    #@a18
    move-object/from16 v45, v0

    #@a1a
    new-instance v46, Ljava/lang/StringBuilder;

    #@a1c
    invoke-direct/range {v46 .. v46}, Ljava/lang/StringBuilder;-><init>()V

    #@a1f
    const-string/jumbo v47, "\""

    #@a22
    invoke-virtual/range {v46 .. v47}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a25
    move-result-object v46

    #@a26
    move-object/from16 v0, v46

    #@a28
    move-object/from16 v1, v35

    #@a2a
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a2d
    move-result-object v46

    #@a2e
    const-string/jumbo v47, "\""

    #@a31
    invoke-virtual/range {v46 .. v47}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a34
    move-result-object v46

    #@a35
    invoke-virtual/range {v46 .. v46}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@a38
    move-result-object v46

    #@a39
    invoke-virtual/range {v45 .. v46}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@a3c
    move-result v45

    #@a3d
    .line 5624
    if-eqz v45, :cond_21

    #@a3f
    .line 5627
    move-object/from16 v0, p0

    #@a41
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@a43
    move-object/from16 v45, v0

    #@a45
    invoke-static/range {v45 .. v45}, Lcom/android/server/wifi/WifiStateMachine;->-get73(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigManager;

    #@a48
    move-result-object v45

    #@a49
    move-object/from16 v0, p0

    #@a4b
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@a4d
    move-object/from16 v46, v0

    #@a4f
    invoke-static/range {v46 .. v46}, Lcom/android/server/wifi/WifiStateMachine;->-get89(Lcom/android/server/wifi/WifiStateMachine;)Landroid/net/wifi/WifiConfiguration;

    #@a52
    move-result-object v46

    #@a53
    .line 5628
    const/16 v47, 0x7

    #@a55
    .line 5627
    invoke-virtual/range {v45 .. v47}, Lcom/android/server/wifi/WifiConfigManager;->updateNetworkSelectionStatus(Landroid/net/wifi/WifiConfiguration;I)Z

    #@a58
    .line 5633
    :cond_21
    move-object/from16 v0, p0

    #@a5a
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@a5c
    move-object/from16 v45, v0

    #@a5e
    invoke-static/range {v45 .. v45}, Lcom/android/server/wifi/WifiStateMachine;->-get73(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigManager;

    #@a61
    move-result-object v45

    #@a62
    .line 5634
    const/16 v46, -0x1

    #@a64
    .line 5633
    invoke-virtual/range {v45 .. v46}, Lcom/android/server/wifi/WifiConfigManager;->setAndEnableLastSelectedConfiguration(I)V

    #@a67
    .line 5635
    move-object/from16 v0, p0

    #@a69
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@a6b
    move-object/from16 v45, v0

    #@a6d
    invoke-static/range {v45 .. v45}, Lcom/android/server/wifi/WifiStateMachine;->-get83(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiNative;

    #@a70
    move-result-object v45

    #@a71
    invoke-virtual/range {v45 .. v45}, Lcom/android/server/wifi/WifiNative;->disconnect()Z

    #@a74
    goto/16 :goto_0

    #@a76
    .line 5603
    .end local v35    # "ssid":Ljava/lang/String;
    :cond_22
    const/16 v45, 0x6

    #@a78
    move/from16 v0, v45

    #@a7a
    if-ne v14, v0, :cond_20

    #@a7c
    goto/16 :goto_7

    #@a7e
    .line 5639
    .end local v14    # "eapMethod":I
    .end local v16    # "identitySent":Z
    .end local v22    # "networkId":I
    :sswitch_11
    move-object/from16 v0, p0

    #@a80
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@a82
    move-object/from16 v45, v0

    #@a84
    const-string/jumbo v46, "Received SUP_REQUEST_SIM_AUTH"

    #@a87
    invoke-virtual/range {v45 .. v46}, Lcom/android/server/wifi/WifiStateMachine;->logd(Ljava/lang/String;)V

    #@a8a
    .line 5640
    move-object/from16 v0, p1

    #@a8c
    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@a8e
    move-object/from16 v28, v0

    #@a90
    check-cast v28, Lcom/android/server/wifi/WifiStateMachine$SimAuthRequestData;

    #@a92
    .line 5641
    .local v28, "requestData":Lcom/android/server/wifi/WifiStateMachine$SimAuthRequestData;
    if-eqz v28, :cond_25

    #@a94
    .line 5642
    move-object/from16 v0, v28

    #@a96
    iget v0, v0, Lcom/android/server/wifi/WifiStateMachine$SimAuthRequestData;->protocol:I

    #@a98
    move/from16 v45, v0

    #@a9a
    const/16 v46, 0x4

    #@a9c
    move/from16 v0, v45

    #@a9e
    move/from16 v1, v46

    #@aa0
    if-ne v0, v1, :cond_23

    #@aa2
    .line 5643
    move-object/from16 v0, p0

    #@aa4
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@aa6
    move-object/from16 v45, v0

    #@aa8
    move-object/from16 v0, v45

    #@aaa
    move-object/from16 v1, v28

    #@aac
    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiStateMachine;->handleGsmAuthRequest(Lcom/android/server/wifi/WifiStateMachine$SimAuthRequestData;)V

    #@aaf
    goto/16 :goto_0

    #@ab1
    .line 5644
    :cond_23
    move-object/from16 v0, v28

    #@ab3
    iget v0, v0, Lcom/android/server/wifi/WifiStateMachine$SimAuthRequestData;->protocol:I

    #@ab5
    move/from16 v45, v0

    #@ab7
    const/16 v46, 0x5

    #@ab9
    move/from16 v0, v45

    #@abb
    move/from16 v1, v46

    #@abd
    if-eq v0, v1, :cond_24

    #@abf
    .line 5645
    move-object/from16 v0, v28

    #@ac1
    iget v0, v0, Lcom/android/server/wifi/WifiStateMachine$SimAuthRequestData;->protocol:I

    #@ac3
    move/from16 v45, v0

    #@ac5
    const/16 v46, 0x6

    #@ac7
    move/from16 v0, v45

    #@ac9
    move/from16 v1, v46

    #@acb
    if-ne v0, v1, :cond_3

    #@acd
    .line 5646
    :cond_24
    move-object/from16 v0, p0

    #@acf
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@ad1
    move-object/from16 v45, v0

    #@ad3
    move-object/from16 v0, v45

    #@ad5
    move-object/from16 v1, v28

    #@ad7
    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiStateMachine;->handle3GAuthRequest(Lcom/android/server/wifi/WifiStateMachine$SimAuthRequestData;)V

    #@ada
    goto/16 :goto_0

    #@adc
    .line 5649
    :cond_25
    move-object/from16 v0, p0

    #@ade
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@ae0
    move-object/from16 v45, v0

    #@ae2
    const-string/jumbo v46, "Invalid sim auth request"

    #@ae5
    invoke-virtual/range {v45 .. v46}, Lcom/android/server/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V

    #@ae8
    goto/16 :goto_0

    #@aea
    .line 5653
    .end local v28    # "requestData":Lcom/android/server/wifi/WifiStateMachine$SimAuthRequestData;
    :sswitch_12
    move-object/from16 v0, p0

    #@aec
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@aee
    move-object/from16 v45, v0

    #@af0
    move-object/from16 v0, p1

    #@af2
    iget v0, v0, Landroid/os/Message;->what:I

    #@af4
    move/from16 v46, v0

    #@af6
    .line 5654
    move-object/from16 v0, p0

    #@af8
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@afa
    move-object/from16 v47, v0

    #@afc
    invoke-static/range {v47 .. v47}, Lcom/android/server/wifi/WifiStateMachine;->-get73(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigManager;

    #@aff
    move-result-object v47

    #@b00
    invoke-virtual/range {v47 .. v47}, Lcom/android/server/wifi/WifiConfigManager;->getPrivilegedSavedNetworks()Ljava/util/List;

    #@b03
    move-result-object v47

    #@b04
    .line 5653
    move-object/from16 v0, v45

    #@b06
    move-object/from16 v1, p1

    #@b08
    move/from16 v2, v46

    #@b0a
    move-object/from16 v3, v47

    #@b0c
    invoke-static {v0, v1, v2, v3}, Lcom/android/server/wifi/WifiStateMachine;->-wrap32(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;ILjava/lang/Object;)V

    #@b0f
    goto/16 :goto_0

    #@b11
    .line 5657
    :sswitch_13
    move-object/from16 v0, p0

    #@b13
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@b15
    move-object/from16 v46, v0

    #@b17
    move-object/from16 v0, p1

    #@b19
    iget v0, v0, Landroid/os/Message;->what:I

    #@b1b
    move/from16 v47, v0

    #@b1d
    .line 5658
    move-object/from16 v0, p0

    #@b1f
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@b21
    move-object/from16 v45, v0

    #@b23
    invoke-static/range {v45 .. v45}, Lcom/android/server/wifi/WifiStateMachine;->-get73(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigManager;

    #@b26
    move-result-object v48

    #@b27
    move-object/from16 v0, p1

    #@b29
    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@b2b
    move-object/from16 v45, v0

    #@b2d
    check-cast v45, Landroid/net/wifi/ScanResult;

    #@b2f
    move-object/from16 v0, v48

    #@b31
    move-object/from16 v1, v45

    #@b33
    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiConfigManager;->getMatchingConfig(Landroid/net/wifi/ScanResult;)Landroid/net/wifi/WifiConfiguration;

    #@b36
    move-result-object v45

    #@b37
    .line 5657
    move-object/from16 v0, v46

    #@b39
    move-object/from16 v1, p1

    #@b3b
    move/from16 v2, v47

    #@b3d
    move-object/from16 v3, v45

    #@b3f
    invoke-static {v0, v1, v2, v3}, Lcom/android/server/wifi/WifiStateMachine;->-wrap32(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;ILjava/lang/Object;)V

    #@b42
    goto/16 :goto_0

    #@b44
    .line 5662
    :sswitch_14
    move-object/from16 v0, p0

    #@b46
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@b48
    move-object/from16 v45, v0

    #@b4a
    invoke-static/range {v45 .. v45}, Lcom/android/server/wifi/WifiStateMachine;->-get73(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigManager;

    #@b4d
    move-result-object v45

    #@b4e
    .line 5663
    const/16 v46, -0x1

    #@b50
    .line 5662
    invoke-virtual/range {v45 .. v46}, Lcom/android/server/wifi/WifiConfigManager;->setAndEnableLastSelectedConfiguration(I)V

    #@b53
    .line 5664
    move-object/from16 v0, p0

    #@b55
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@b57
    move-object/from16 v45, v0

    #@b59
    invoke-static/range {v45 .. v45}, Lcom/android/server/wifi/WifiStateMachine;->-get83(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiNative;

    #@b5c
    move-result-object v45

    #@b5d
    invoke-virtual/range {v45 .. v45}, Lcom/android/server/wifi/WifiNative;->disconnect()Z

    #@b60
    goto/16 :goto_0

    #@b62
    .line 5667
    :sswitch_15
    move-object/from16 v0, p0

    #@b64
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@b66
    move-object/from16 v45, v0

    #@b68
    invoke-static/range {v45 .. v45}, Lcom/android/server/wifi/WifiStateMachine;->-get75(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConnectivityManager;

    #@b6b
    move-result-object v45

    #@b6c
    if-eqz v45, :cond_3

    #@b6e
    .line 5668
    move-object/from16 v0, p0

    #@b70
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@b72
    move-object/from16 v45, v0

    #@b74
    invoke-static/range {v45 .. v45}, Lcom/android/server/wifi/WifiStateMachine;->-get75(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConnectivityManager;

    #@b77
    move-result-object v45

    #@b78
    invoke-virtual/range {v45 .. v45}, Lcom/android/server/wifi/WifiConnectivityManager;->forceConnectivityScan()V

    #@b7b
    goto/16 :goto_0

    #@b7d
    .line 5672
    :sswitch_16
    move-object/from16 v0, p0

    #@b7f
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@b81
    move-object/from16 v45, v0

    #@b83
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    #@b86
    move-result-wide v46

    #@b87
    invoke-static/range {v45 .. v47}, Lcom/android/server/wifi/WifiStateMachine;->-set1(Lcom/android/server/wifi/WifiStateMachine;J)J

    #@b8a
    .line 5673
    move-object/from16 v0, p0

    #@b8c
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@b8e
    move-object/from16 v45, v0

    #@b90
    invoke-static/range {v45 .. v45}, Lcom/android/server/wifi/WifiStateMachine;->-get83(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiNative;

    #@b93
    move-result-object v45

    #@b94
    invoke-virtual/range {v45 .. v45}, Lcom/android/server/wifi/WifiNative;->reassociate()Z

    #@b97
    goto/16 :goto_0

    #@b99
    .line 5676
    :sswitch_17
    move-object/from16 v0, p0

    #@b9b
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@b9d
    move-object/from16 v45, v0

    #@b9f
    invoke-static/range {v45 .. v45}, Lcom/android/server/wifi/WifiStateMachine;->-get73(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigManager;

    #@ba2
    move-result-object v45

    #@ba3
    invoke-virtual/range {v45 .. v45}, Lcom/android/server/wifi/WifiConfigManager;->needsUnlockedKeyStore()Z

    #@ba6
    move-result v45

    #@ba7
    if-eqz v45, :cond_3

    #@ba9
    .line 5677
    move-object/from16 v0, p0

    #@bab
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@bad
    move-object/from16 v45, v0

    #@baf
    const-string/jumbo v46, "Reconnecting to give a chance to un-connected TLS networks"

    #@bb2
    invoke-virtual/range {v45 .. v46}, Lcom/android/server/wifi/WifiStateMachine;->logd(Ljava/lang/String;)V

    #@bb5
    .line 5678
    move-object/from16 v0, p0

    #@bb7
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@bb9
    move-object/from16 v45, v0

    #@bbb
    invoke-static/range {v45 .. v45}, Lcom/android/server/wifi/WifiStateMachine;->-get83(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiNative;

    #@bbe
    move-result-object v45

    #@bbf
    invoke-virtual/range {v45 .. v45}, Lcom/android/server/wifi/WifiNative;->disconnect()Z

    #@bc2
    .line 5679
    move-object/from16 v0, p0

    #@bc4
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@bc6
    move-object/from16 v45, v0

    #@bc8
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    #@bcb
    move-result-wide v46

    #@bcc
    invoke-static/range {v45 .. v47}, Lcom/android/server/wifi/WifiStateMachine;->-set1(Lcom/android/server/wifi/WifiStateMachine;J)J

    #@bcf
    .line 5680
    move-object/from16 v0, p0

    #@bd1
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@bd3
    move-object/from16 v45, v0

    #@bd5
    invoke-static/range {v45 .. v45}, Lcom/android/server/wifi/WifiStateMachine;->-get83(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiNative;

    #@bd8
    move-result-object v45

    #@bd9
    invoke-virtual/range {v45 .. v45}, Lcom/android/server/wifi/WifiNative;->reconnect()Z

    #@bdc
    goto/16 :goto_0

    #@bde
    .line 5684
    :sswitch_18
    move-object/from16 v0, p0

    #@be0
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@be2
    move-object/from16 v45, v0

    #@be4
    invoke-static {}, Lcom/android/server/wifi/WifiStateMachine;->-get2()I

    #@be7
    move-result v46

    #@be8
    invoke-static/range {v45 .. v46}, Lcom/android/server/wifi/WifiStateMachine;->-set38(Lcom/android/server/wifi/WifiStateMachine;I)I

    #@beb
    .line 5685
    const/16 v45, 0x1

    #@bed
    return v45

    #@bee
    .line 5695
    :sswitch_19
    const/4 v12, 0x0

    #@bef
    .line 5696
    .local v12, "didDisconnect":Z
    move-object/from16 v0, p0

    #@bf1
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@bf3
    move-object/from16 v45, v0

    #@bf5
    invoke-static/range {v45 .. v45}, Lcom/android/server/wifi/WifiStateMachine;->-wrap8(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/internal/util/IState;

    #@bf8
    move-result-object v45

    #@bf9
    move-object/from16 v0, p0

    #@bfb
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@bfd
    move-object/from16 v46, v0

    #@bff
    invoke-static/range {v46 .. v46}, Lcom/android/server/wifi/WifiStateMachine;->-get16(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/internal/util/State;

    #@c02
    move-result-object v46

    #@c03
    move-object/from16 v0, v45

    #@c05
    move-object/from16 v1, v46

    #@c07
    if-eq v0, v1, :cond_26

    #@c09
    .line 5700
    const/4 v12, 0x1

    #@c0a
    .line 5701
    move-object/from16 v0, p0

    #@c0c
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@c0e
    move-object/from16 v45, v0

    #@c10
    invoke-static/range {v45 .. v45}, Lcom/android/server/wifi/WifiStateMachine;->-get83(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiNative;

    #@c13
    move-result-object v45

    #@c14
    invoke-virtual/range {v45 .. v45}, Lcom/android/server/wifi/WifiNative;->disconnect()Z

    #@c17
    .line 5705
    :cond_26
    move-object/from16 v0, p1

    #@c19
    iget v0, v0, Landroid/os/Message;->arg1:I

    #@c1b
    move/from16 v21, v0

    #@c1d
    .line 5706
    .restart local v21    # "netId":I
    move-object/from16 v0, p0

    #@c1f
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@c21
    move-object/from16 v45, v0

    #@c23
    move-object/from16 v0, v45

    #@c25
    move/from16 v1, v21

    #@c27
    invoke-static {v0, v1}, Lcom/android/server/wifi/WifiStateMachine;->-set30(Lcom/android/server/wifi/WifiStateMachine;I)I

    #@c2a
    .line 5707
    move-object/from16 v0, p0

    #@c2c
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@c2e
    move-object/from16 v46, v0

    #@c30
    move-object/from16 v0, p1

    #@c32
    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@c34
    move-object/from16 v45, v0

    #@c36
    check-cast v45, Ljava/lang/String;

    #@c38
    move-object/from16 v0, v46

    #@c3a
    move-object/from16 v1, v45

    #@c3c
    invoke-static {v0, v1}, Lcom/android/server/wifi/WifiStateMachine;->-set31(Lcom/android/server/wifi/WifiStateMachine;Ljava/lang/String;)Ljava/lang/String;

    #@c3f
    .line 5708
    move-object/from16 v0, p0

    #@c41
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@c43
    move-object/from16 v45, v0

    #@c45
    invoke-static/range {v45 .. v45}, Lcom/android/server/wifi/WifiStateMachine;->-get73(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigManager;

    #@c48
    move-result-object v45

    #@c49
    move-object/from16 v0, v45

    #@c4b
    move/from16 v1, v21

    #@c4d
    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiConfigManager;->getWifiConfiguration(I)Landroid/net/wifi/WifiConfiguration;

    #@c50
    move-result-object v9

    #@c51
    .line 5709
    .restart local v9    # "config":Landroid/net/wifi/WifiConfiguration;
    move-object/from16 v0, p0

    #@c53
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@c55
    move-object/from16 v45, v0

    #@c57
    new-instance v46, Ljava/lang/StringBuilder;

    #@c59
    invoke-direct/range {v46 .. v46}, Ljava/lang/StringBuilder;-><init>()V

    #@c5c
    const-string/jumbo v47, "CMD_AUTO_CONNECT sup state "

    #@c5f
    invoke-virtual/range {v46 .. v47}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@c62
    move-result-object v46

    #@c63
    .line 5710
    move-object/from16 v0, p0

    #@c65
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@c67
    move-object/from16 v47, v0

    #@c69
    invoke-static/range {v47 .. v47}, Lcom/android/server/wifi/WifiStateMachine;->-get59(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/SupplicantStateTracker;

    #@c6c
    move-result-object v47

    #@c6d
    invoke-virtual/range {v47 .. v47}, Lcom/android/server/wifi/SupplicantStateTracker;->getSupplicantStateName()Ljava/lang/String;

    #@c70
    move-result-object v47

    #@c71
    .line 5709
    invoke-virtual/range {v46 .. v47}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@c74
    move-result-object v46

    #@c75
    .line 5711
    const-string/jumbo v47, " my state "

    #@c78
    .line 5709
    invoke-virtual/range {v46 .. v47}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@c7b
    move-result-object v46

    #@c7c
    .line 5711
    move-object/from16 v0, p0

    #@c7e
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@c80
    move-object/from16 v47, v0

    #@c82
    invoke-static/range {v47 .. v47}, Lcom/android/server/wifi/WifiStateMachine;->-wrap8(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/internal/util/IState;

    #@c85
    move-result-object v47

    #@c86
    invoke-interface/range {v47 .. v47}, Lcom/android/internal/util/IState;->getName()Ljava/lang/String;

    #@c89
    move-result-object v47

    #@c8a
    .line 5709
    invoke-virtual/range {v46 .. v47}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@c8d
    move-result-object v46

    #@c8e
    .line 5712
    const-string/jumbo v47, " nid="

    #@c91
    .line 5709
    invoke-virtual/range {v46 .. v47}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@c94
    move-result-object v46

    #@c95
    .line 5712
    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    #@c98
    move-result-object v47

    #@c99
    .line 5709
    invoke-virtual/range {v46 .. v47}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@c9c
    move-result-object v46

    #@c9d
    .line 5713
    const-string/jumbo v47, " roam="

    #@ca0
    .line 5709
    invoke-virtual/range {v46 .. v47}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@ca3
    move-result-object v46

    #@ca4
    .line 5713
    move-object/from16 v0, p0

    #@ca6
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@ca8
    move-object/from16 v47, v0

    #@caa
    invoke-static/range {v47 .. v47}, Lcom/android/server/wifi/WifiStateMachine;->-get7(Lcom/android/server/wifi/WifiStateMachine;)Z

    #@cad
    move-result v47

    #@cae
    invoke-static/range {v47 .. v47}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    #@cb1
    move-result-object v47

    #@cb2
    .line 5709
    invoke-virtual/range {v46 .. v47}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@cb5
    move-result-object v46

    #@cb6
    invoke-virtual/range {v46 .. v46}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@cb9
    move-result-object v46

    #@cba
    invoke-virtual/range {v45 .. v46}, Lcom/android/server/wifi/WifiStateMachine;->logd(Ljava/lang/String;)V

    #@cbd
    .line 5714
    if-nez v9, :cond_27

    #@cbf
    .line 5715
    move-object/from16 v0, p0

    #@cc1
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@cc3
    move-object/from16 v45, v0

    #@cc5
    const-string/jumbo v46, "AUTO_CONNECT and no config, bail out..."

    #@cc8
    invoke-virtual/range {v45 .. v46}, Lcom/android/server/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V

    #@ccb
    goto/16 :goto_0

    #@ccd
    .line 5720
    :cond_27
    move-object/from16 v0, p0

    #@ccf
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@cd1
    move-object/from16 v45, v0

    #@cd3
    move-object/from16 v0, p0

    #@cd5
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@cd7
    move-object/from16 v46, v0

    #@cd9
    invoke-static/range {v46 .. v46}, Lcom/android/server/wifi/WifiStateMachine;->-get66(Lcom/android/server/wifi/WifiStateMachine;)Ljava/lang/String;

    #@cdc
    move-result-object v46

    #@cdd
    move-object/from16 v0, v45

    #@cdf
    move-object/from16 v1, v46

    #@ce1
    invoke-static {v0, v9, v1}, Lcom/android/server/wifi/WifiStateMachine;->-wrap5(Lcom/android/server/wifi/WifiStateMachine;Landroid/net/wifi/WifiConfiguration;Ljava/lang/String;)Z

    #@ce4
    .line 5723
    move-object/from16 v0, p0

    #@ce6
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@ce8
    move-object/from16 v45, v0

    #@cea
    new-instance v46, Ljava/lang/StringBuilder;

    #@cec
    invoke-direct/range {v46 .. v46}, Ljava/lang/StringBuilder;-><init>()V

    #@cef
    const-string/jumbo v47, "CMD_AUTO_CONNECT will save config -> "

    #@cf2
    invoke-virtual/range {v46 .. v47}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@cf5
    move-result-object v46

    #@cf6
    iget-object v0, v9, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    #@cf8
    move-object/from16 v47, v0

    #@cfa
    invoke-virtual/range {v46 .. v47}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@cfd
    move-result-object v46

    #@cfe
    .line 5724
    const-string/jumbo v47, " nid="

    #@d01
    .line 5723
    invoke-virtual/range {v46 .. v47}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@d04
    move-result-object v46

    #@d05
    .line 5724
    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    #@d08
    move-result-object v47

    #@d09
    .line 5723
    invoke-virtual/range {v46 .. v47}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@d0c
    move-result-object v46

    #@d0d
    invoke-virtual/range {v46 .. v46}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@d10
    move-result-object v46

    #@d11
    invoke-virtual/range {v45 .. v46}, Lcom/android/server/wifi/WifiStateMachine;->logd(Ljava/lang/String;)V

    #@d14
    .line 5725
    move-object/from16 v0, p0

    #@d16
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@d18
    move-object/from16 v45, v0

    #@d1a
    invoke-static/range {v45 .. v45}, Lcom/android/server/wifi/WifiStateMachine;->-get73(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigManager;

    #@d1d
    move-result-object v45

    #@d1e
    const/16 v46, -0x1

    #@d20
    move-object/from16 v0, v45

    #@d22
    move/from16 v1, v46

    #@d24
    invoke-virtual {v0, v9, v1}, Lcom/android/server/wifi/WifiConfigManager;->saveNetwork(Landroid/net/wifi/WifiConfiguration;I)Lcom/android/server/wifi/NetworkUpdateResult;

    #@d27
    move-result-object v30

    #@d28
    .line 5726
    .local v30, "result":Lcom/android/server/wifi/NetworkUpdateResult;
    invoke-virtual/range {v30 .. v30}, Lcom/android/server/wifi/NetworkUpdateResult;->getNetworkId()I

    #@d2b
    move-result v21

    #@d2c
    .line 5727
    move-object/from16 v0, p0

    #@d2e
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@d30
    move-object/from16 v45, v0

    #@d32
    new-instance v46, Ljava/lang/StringBuilder;

    #@d34
    invoke-direct/range {v46 .. v46}, Ljava/lang/StringBuilder;-><init>()V

    #@d37
    const-string/jumbo v47, "CMD_AUTO_CONNECT did save config ->  nid="

    #@d3a
    invoke-virtual/range {v46 .. v47}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@d3d
    move-result-object v46

    #@d3e
    .line 5728
    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    #@d41
    move-result-object v47

    #@d42
    .line 5727
    invoke-virtual/range {v46 .. v47}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@d45
    move-result-object v46

    #@d46
    invoke-virtual/range {v46 .. v46}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@d49
    move-result-object v46

    #@d4a
    invoke-virtual/range {v45 .. v46}, Lcom/android/server/wifi/WifiStateMachine;->logd(Ljava/lang/String;)V

    #@d4d
    .line 5731
    move-object/from16 v0, p0

    #@d4f
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@d51
    move-object/from16 v45, v0

    #@d53
    invoke-static/range {v45 .. v45}, Lcom/android/server/wifi/WifiStateMachine;->-get73(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigManager;

    #@d56
    move-result-object v45

    #@d57
    move-object/from16 v0, v45

    #@d59
    move/from16 v1, v21

    #@d5b
    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiConfigManager;->getWifiConfiguration(I)Landroid/net/wifi/WifiConfiguration;

    #@d5e
    move-result-object v9

    #@d5f
    .line 5732
    if-nez v9, :cond_28

    #@d61
    .line 5733
    move-object/from16 v0, p0

    #@d63
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@d65
    move-object/from16 v45, v0

    #@d67
    const-string/jumbo v46, "CMD_AUTO_CONNECT couldn\'t update the config, got null config"

    #@d6a
    invoke-virtual/range {v45 .. v46}, Lcom/android/server/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V

    #@d6d
    goto/16 :goto_0

    #@d6f
    .line 5736
    :cond_28
    iget v0, v9, Landroid/net/wifi/WifiConfiguration;->networkId:I

    #@d71
    move/from16 v45, v0

    #@d73
    move/from16 v0, v21

    #@d75
    move/from16 v1, v45

    #@d77
    if-eq v0, v1, :cond_29

    #@d79
    .line 5737
    move-object/from16 v0, p0

    #@d7b
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@d7d
    move-object/from16 v45, v0

    #@d7f
    new-instance v46, Ljava/lang/StringBuilder;

    #@d81
    invoke-direct/range {v46 .. v46}, Ljava/lang/StringBuilder;-><init>()V

    #@d84
    const-string/jumbo v47, "CMD_AUTO_CONNECT couldn\'t update the config, want nid="

    #@d87
    invoke-virtual/range {v46 .. v47}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@d8a
    move-result-object v46

    #@d8b
    .line 5738
    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    #@d8e
    move-result-object v47

    #@d8f
    .line 5737
    invoke-virtual/range {v46 .. v47}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@d92
    move-result-object v46

    #@d93
    .line 5738
    const-string/jumbo v47, " but got"

    #@d96
    .line 5737
    invoke-virtual/range {v46 .. v47}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@d99
    move-result-object v46

    #@d9a
    .line 5738
    iget v0, v9, Landroid/net/wifi/WifiConfiguration;->networkId:I

    #@d9c
    move/from16 v47, v0

    #@d9e
    .line 5737
    invoke-virtual/range {v46 .. v47}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@da1
    move-result-object v46

    #@da2
    invoke-virtual/range {v46 .. v46}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@da5
    move-result-object v46

    #@da6
    invoke-virtual/range {v45 .. v46}, Lcom/android/server/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V

    #@da9
    goto/16 :goto_0

    #@dab
    .line 5742
    :cond_29
    move-object/from16 v0, p0

    #@dad
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@daf
    move-object/from16 v45, v0

    #@db1
    const/16 v46, 0x0

    #@db3
    move-object/from16 v0, v45

    #@db5
    move-object/from16 v1, p1

    #@db7
    move/from16 v2, v21

    #@db9
    move/from16 v3, v46

    #@dbb
    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/wifi/WifiStateMachine;->deferForUserInput(Landroid/os/Message;IZ)Z

    #@dbe
    move-result v45

    #@dbf
    if-nez v45, :cond_3

    #@dc1
    .line 5744
    move-object/from16 v0, p0

    #@dc3
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@dc5
    move-object/from16 v45, v0

    #@dc7
    invoke-static/range {v45 .. v45}, Lcom/android/server/wifi/WifiStateMachine;->-get73(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigManager;

    #@dca
    move-result-object v45

    #@dcb
    move-object/from16 v0, v45

    #@dcd
    move/from16 v1, v21

    #@dcf
    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiConfigManager;->getWifiConfiguration(I)Landroid/net/wifi/WifiConfiguration;

    #@dd2
    move-result-object v45

    #@dd3
    move-object/from16 v0, v45

    #@dd5
    iget v0, v0, Landroid/net/wifi/WifiConfiguration;->userApproved:I

    #@dd7
    move/from16 v45, v0

    #@dd9
    .line 5745
    const/16 v46, 0x2

    #@ddb
    .line 5744
    move/from16 v0, v45

    #@ddd
    move/from16 v1, v46

    #@ddf
    if-ne v0, v1, :cond_2a

    #@de1
    .line 5746
    move-object/from16 v0, p0

    #@de3
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@de5
    move-object/from16 v45, v0

    #@de7
    const v46, 0x25002

    #@dea
    .line 5747
    const/16 v47, 0x9

    #@dec
    .line 5746
    move-object/from16 v0, v45

    #@dee
    move-object/from16 v1, p1

    #@df0
    move/from16 v2, v46

    #@df2
    move/from16 v3, v47

    #@df4
    invoke-static {v0, v1, v2, v3}, Lcom/android/server/wifi/WifiStateMachine;->-wrap31(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;II)V

    #@df7
    goto/16 :goto_0

    #@df9
    .line 5755
    :cond_2a
    const/16 v18, -0x1

    #@dfb
    .line 5759
    .local v18, "lastConnectUid":I
    move-object/from16 v0, p0

    #@dfd
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@dff
    move-object/from16 v45, v0

    #@e01
    invoke-static/range {v45 .. v45}, Lcom/android/server/wifi/WifiStateMachine;->-get81(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiMetrics;

    #@e04
    move-result-object v45

    #@e05
    move-object/from16 v0, p0

    #@e07
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@e09
    move-object/from16 v46, v0

    #@e0b
    invoke-static/range {v46 .. v46}, Lcom/android/server/wifi/WifiStateMachine;->-get66(Lcom/android/server/wifi/WifiStateMachine;)Ljava/lang/String;

    #@e0e
    move-result-object v46

    #@e0f
    .line 5760
    const/16 v47, 0x5

    #@e11
    .line 5759
    move-object/from16 v0, v45

    #@e13
    move-object/from16 v1, v46

    #@e15
    move/from16 v2, v47

    #@e17
    invoke-virtual {v0, v9, v1, v2}, Lcom/android/server/wifi/WifiMetrics;->startConnectionEvent(Landroid/net/wifi/WifiConfiguration;Ljava/lang/String;I)V

    #@e1a
    .line 5761
    if-nez v12, :cond_2b

    #@e1c
    .line 5763
    move-object/from16 v0, p0

    #@e1e
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@e20
    move-object/from16 v45, v0

    #@e22
    invoke-static/range {v45 .. v45}, Lcom/android/server/wifi/WifiStateMachine;->-get81(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiMetrics;

    #@e25
    move-result-object v45

    #@e26
    .line 5764
    const/16 v46, 0x1

    #@e28
    .line 5763
    invoke-virtual/range {v45 .. v46}, Lcom/android/server/wifi/WifiMetrics;->setConnectionEventRoamType(I)V

    #@e2b
    .line 5767
    :cond_2b
    move-object/from16 v0, p0

    #@e2d
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@e2f
    move-object/from16 v45, v0

    #@e31
    invoke-static/range {v45 .. v45}, Lcom/android/server/wifi/WifiStateMachine;->-get73(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigManager;

    #@e34
    move-result-object v45

    #@e35
    move-object/from16 v0, v45

    #@e37
    invoke-virtual {v0, v9}, Lcom/android/server/wifi/WifiConfigManager;->isLastSelectedConfiguration(Landroid/net/wifi/WifiConfiguration;)Z

    #@e3a
    move-result v45

    #@e3b
    if-eqz v45, :cond_2c

    #@e3d
    .line 5768
    move-object/from16 v0, p0

    #@e3f
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@e41
    move-object/from16 v45, v0

    #@e43
    invoke-static/range {v45 .. v45}, Lcom/android/server/wifi/WifiStateMachine;->-get73(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigManager;

    #@e46
    move-result-object v45

    #@e47
    .line 5769
    iget v0, v9, Landroid/net/wifi/WifiConfiguration;->lastConnectUid:I

    #@e49
    move/from16 v46, v0

    #@e4b
    invoke-static/range {v46 .. v46}, Landroid/os/UserHandle;->getUserId(I)I

    #@e4e
    move-result v46

    #@e4f
    .line 5768
    invoke-virtual/range {v45 .. v46}, Lcom/android/server/wifi/WifiConfigManager;->isCurrentUserProfile(I)Z

    #@e52
    move-result v45

    #@e53
    .line 5767
    if-eqz v45, :cond_2c

    #@e55
    .line 5770
    iget v0, v9, Landroid/net/wifi/WifiConfiguration;->lastConnectUid:I

    #@e57
    move/from16 v18, v0

    #@e59
    .line 5771
    move-object/from16 v0, p0

    #@e5b
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@e5d
    move-object/from16 v45, v0

    #@e5f
    invoke-static/range {v45 .. v45}, Lcom/android/server/wifi/WifiStateMachine;->-get81(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiMetrics;

    #@e62
    move-result-object v45

    #@e63
    .line 5772
    const/16 v46, 0x4

    #@e65
    .line 5771
    invoke-virtual/range {v45 .. v46}, Lcom/android/server/wifi/WifiMetrics;->setConnectionEventRoamType(I)V

    #@e68
    .line 5774
    :cond_2c
    move-object/from16 v0, p0

    #@e6a
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@e6c
    move-object/from16 v45, v0

    #@e6e
    invoke-static/range {v45 .. v45}, Lcom/android/server/wifi/WifiStateMachine;->-get73(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigManager;

    #@e71
    move-result-object v45

    #@e72
    const/16 v46, 0x0

    #@e74
    move-object/from16 v0, v45

    #@e76
    move/from16 v1, v46

    #@e78
    move/from16 v2, v18

    #@e7a
    invoke-virtual {v0, v9, v1, v2}, Lcom/android/server/wifi/WifiConfigManager;->selectNetwork(Landroid/net/wifi/WifiConfiguration;ZI)Z

    #@e7d
    move-result v45

    #@e7e
    if-eqz v45, :cond_31

    #@e80
    .line 5775
    move-object/from16 v0, p0

    #@e82
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@e84
    move-object/from16 v45, v0

    #@e86
    invoke-static/range {v45 .. v45}, Lcom/android/server/wifi/WifiStateMachine;->-get83(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiNative;

    #@e89
    move-result-object v45

    #@e8a
    invoke-virtual/range {v45 .. v45}, Lcom/android/server/wifi/WifiNative;->reconnect()Z

    #@e8d
    move-result v45

    #@e8e
    .line 5774
    if-eqz v45, :cond_31

    #@e90
    .line 5776
    move-object/from16 v0, p0

    #@e92
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@e94
    move-object/from16 v45, v0

    #@e96
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    #@e99
    move-result-wide v46

    #@e9a
    invoke-static/range {v45 .. v47}, Lcom/android/server/wifi/WifiStateMachine;->-set1(Lcom/android/server/wifi/WifiStateMachine;J)J

    #@e9d
    .line 5777
    move-object/from16 v0, p0

    #@e9f
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@ea1
    move-object/from16 v45, v0

    #@ea3
    move-object/from16 v0, p0

    #@ea5
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@ea7
    move-object/from16 v46, v0

    #@ea9
    invoke-static/range {v46 .. v46}, Lcom/android/server/wifi/WifiStateMachine;->-get73(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigManager;

    #@eac
    move-result-object v46

    #@ead
    move-object/from16 v0, v46

    #@eaf
    move/from16 v1, v21

    #@eb1
    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiConfigManager;->getWifiConfiguration(I)Landroid/net/wifi/WifiConfiguration;

    #@eb4
    move-result-object v46

    #@eb5
    invoke-static/range {v45 .. v46}, Lcom/android/server/wifi/WifiStateMachine;->-set39(Lcom/android/server/wifi/WifiStateMachine;Landroid/net/wifi/WifiConfiguration;)Landroid/net/wifi/WifiConfiguration;

    #@eb8
    .line 5778
    move-object/from16 v0, p0

    #@eba
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@ebc
    move-object/from16 v45, v0

    #@ebe
    invoke-static/range {v45 .. v45}, Lcom/android/server/wifi/WifiStateMachine;->-get73(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigManager;

    #@ec1
    move-result-object v45

    #@ec2
    move-object/from16 v0, v45

    #@ec4
    move/from16 v1, v21

    #@ec6
    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiConfigManager;->getWifiConfiguration(I)Landroid/net/wifi/WifiConfiguration;

    #@ec9
    move-result-object v9

    #@eca
    .line 5779
    if-eqz v9, :cond_2d

    #@ecc
    .line 5780
    move-object/from16 v0, p0

    #@ece
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@ed0
    move-object/from16 v45, v0

    #@ed2
    invoke-static/range {v45 .. v45}, Lcom/android/server/wifi/WifiStateMachine;->-get73(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigManager;

    #@ed5
    move-result-object v45

    #@ed6
    move-object/from16 v0, v45

    #@ed8
    invoke-virtual {v0, v9}, Lcom/android/server/wifi/WifiConfigManager;->isLastSelectedConfiguration(Landroid/net/wifi/WifiConfiguration;)Z

    #@edb
    move-result v45

    #@edc
    if-eqz v45, :cond_2f

    #@ede
    .line 5797
    :cond_2d
    :goto_8
    move-object/from16 v0, p0

    #@ee0
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@ee2
    move-object/from16 v45, v0

    #@ee4
    const/16 v46, 0x0

    #@ee6
    invoke-static/range {v45 .. v46}, Lcom/android/server/wifi/WifiStateMachine;->-set5(Lcom/android/server/wifi/WifiStateMachine;Z)Z

    #@ee9
    .line 5798
    move-object/from16 v0, p0

    #@eeb
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@eed
    move-object/from16 v45, v0

    #@eef
    invoke-virtual/range {v45 .. v45}, Lcom/android/server/wifi/WifiStateMachine;->isRoaming()Z

    #@ef2
    move-result v45

    #@ef3
    if-nez v45, :cond_2e

    #@ef5
    move-object/from16 v0, p0

    #@ef7
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@ef9
    move-object/from16 v45, v0

    #@efb
    invoke-static/range {v45 .. v45}, Lcom/android/server/wifi/WifiStateMachine;->-get5(Lcom/android/server/wifi/WifiStateMachine;)Z

    #@efe
    move-result v45

    #@eff
    if-eqz v45, :cond_30

    #@f01
    .line 5799
    :cond_2e
    move-object/from16 v0, p0

    #@f03
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@f05
    move-object/from16 v45, v0

    #@f07
    move-object/from16 v0, p0

    #@f09
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@f0b
    move-object/from16 v46, v0

    #@f0d
    invoke-static/range {v46 .. v46}, Lcom/android/server/wifi/WifiStateMachine;->-get49(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/internal/util/State;

    #@f10
    move-result-object v46

    #@f11
    invoke-static/range {v45 .. v46}, Lcom/android/server/wifi/WifiStateMachine;->-wrap45(Lcom/android/server/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V

    #@f14
    goto/16 :goto_0

    #@f16
    .line 5793
    :cond_2f
    move-object/from16 v0, p0

    #@f18
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@f1a
    move-object/from16 v45, v0

    #@f1c
    invoke-static/range {v45 .. v45}, Lcom/android/server/wifi/WifiStateMachine;->-get73(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigManager;

    #@f1f
    move-result-object v45

    #@f20
    .line 5795
    const/16 v46, -0x1

    #@f22
    .line 5793
    invoke-virtual/range {v45 .. v46}, Lcom/android/server/wifi/WifiConfigManager;->setAndEnableLastSelectedConfiguration(I)V

    #@f25
    goto :goto_8

    #@f26
    .line 5800
    :cond_30
    if-eqz v12, :cond_3

    #@f28
    .line 5801
    move-object/from16 v0, p0

    #@f2a
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@f2c
    move-object/from16 v45, v0

    #@f2e
    move-object/from16 v0, p0

    #@f30
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@f32
    move-object/from16 v46, v0

    #@f34
    invoke-static/range {v46 .. v46}, Lcom/android/server/wifi/WifiStateMachine;->-get17(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/internal/util/State;

    #@f37
    move-result-object v46

    #@f38
    invoke-static/range {v45 .. v46}, Lcom/android/server/wifi/WifiStateMachine;->-wrap45(Lcom/android/server/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V

    #@f3b
    goto/16 :goto_0

    #@f3d
    .line 5804
    :cond_31
    move-object/from16 v0, p0

    #@f3f
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@f41
    move-object/from16 v45, v0

    #@f43
    new-instance v46, Ljava/lang/StringBuilder;

    #@f45
    invoke-direct/range {v46 .. v46}, Ljava/lang/StringBuilder;-><init>()V

    #@f48
    const-string/jumbo v47, "Failed to connect config: "

    #@f4b
    invoke-virtual/range {v46 .. v47}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@f4e
    move-result-object v46

    #@f4f
    move-object/from16 v0, v46

    #@f51
    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@f54
    move-result-object v46

    #@f55
    const-string/jumbo v47, " netId: "

    #@f58
    invoke-virtual/range {v46 .. v47}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@f5b
    move-result-object v46

    #@f5c
    move-object/from16 v0, v46

    #@f5e
    move/from16 v1, v21

    #@f60
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@f63
    move-result-object v46

    #@f64
    invoke-virtual/range {v46 .. v46}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@f67
    move-result-object v46

    #@f68
    invoke-virtual/range {v45 .. v46}, Lcom/android/server/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V

    #@f6b
    .line 5805
    move-object/from16 v0, p0

    #@f6d
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@f6f
    move-object/from16 v45, v0

    #@f71
    const v46, 0x25002

    #@f74
    .line 5806
    const/16 v47, 0x0

    #@f76
    .line 5805
    move-object/from16 v0, v45

    #@f78
    move-object/from16 v1, p1

    #@f7a
    move/from16 v2, v46

    #@f7c
    move/from16 v3, v47

    #@f7e
    invoke-static {v0, v1, v2, v3}, Lcom/android/server/wifi/WifiStateMachine;->-wrap31(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;II)V

    #@f81
    .line 5807
    move-object/from16 v0, p0

    #@f83
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@f85
    move-object/from16 v45, v0

    #@f87
    .line 5808
    const/16 v46, 0x5

    #@f89
    .line 5809
    const/16 v47, 0x1

    #@f8b
    .line 5807
    invoke-static/range {v45 .. v47}, Lcom/android/server/wifi/WifiStateMachine;->-wrap33(Lcom/android/server/wifi/WifiStateMachine;II)V

    #@f8e
    goto/16 :goto_0

    #@f90
    .line 5814
    .end local v9    # "config":Landroid/net/wifi/WifiConfiguration;
    .end local v12    # "didDisconnect":Z
    .end local v18    # "lastConnectUid":I
    .end local v21    # "netId":I
    .end local v30    # "result":Lcom/android/server/wifi/NetworkUpdateResult;
    :sswitch_1a
    move-object/from16 v0, p0

    #@f92
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@f94
    move-object/from16 v45, v0

    #@f96
    invoke-static/range {v45 .. v45}, Lcom/android/server/wifi/WifiStateMachine;->-get73(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigManager;

    #@f99
    move-result-object v46

    #@f9a
    move-object/from16 v0, p1

    #@f9c
    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@f9e
    move-object/from16 v45, v0

    #@fa0
    check-cast v45, Landroid/content/pm/ApplicationInfo;

    #@fa2
    move-object/from16 v0, v46

    #@fa4
    move-object/from16 v1, v45

    #@fa6
    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiConfigManager;->removeNetworksForApp(Landroid/content/pm/ApplicationInfo;)Z

    #@fa9
    goto/16 :goto_0

    #@fab
    .line 5817
    :sswitch_1b
    move-object/from16 v0, p0

    #@fad
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@faf
    move-object/from16 v45, v0

    #@fb1
    invoke-static/range {v45 .. v45}, Lcom/android/server/wifi/WifiStateMachine;->-get73(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigManager;

    #@fb4
    move-result-object v45

    #@fb5
    move-object/from16 v0, p1

    #@fb7
    iget v0, v0, Landroid/os/Message;->arg1:I

    #@fb9
    move/from16 v46, v0

    #@fbb
    invoke-virtual/range {v45 .. v46}, Lcom/android/server/wifi/WifiConfigManager;->removeNetworksForUser(I)Z

    #@fbe
    goto/16 :goto_0

    #@fc0
    .line 5822
    :sswitch_1c
    move-object/from16 v0, p0

    #@fc2
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@fc4
    move-object/from16 v45, v0

    #@fc6
    invoke-static/range {v45 .. v45}, Lcom/android/server/wifi/WifiStateMachine;->-get73(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigManager;

    #@fc9
    move-result-object v45

    #@fca
    .line 5823
    move-object/from16 v0, p1

    #@fcc
    iget v0, v0, Landroid/os/Message;->sendingUid:I

    #@fce
    move/from16 v46, v0

    #@fd0
    invoke-static/range {v46 .. v46}, Landroid/os/UserHandle;->getUserId(I)I

    #@fd3
    move-result v46

    #@fd4
    .line 5822
    invoke-virtual/range {v45 .. v46}, Lcom/android/server/wifi/WifiConfigManager;->isCurrentUserProfile(I)Z

    #@fd7
    move-result v45

    #@fd8
    if-nez v45, :cond_32

    #@fda
    .line 5824
    move-object/from16 v0, p1

    #@fdc
    iget v0, v0, Landroid/os/Message;->sendingUid:I

    #@fde
    move/from16 v45, v0

    #@fe0
    move-object/from16 v0, p0

    #@fe2
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@fe4
    move-object/from16 v46, v0

    #@fe6
    invoke-static/range {v46 .. v46}, Lcom/android/server/wifi/WifiStateMachine;->-get64(Lcom/android/server/wifi/WifiStateMachine;)I

    #@fe9
    move-result v46

    #@fea
    move/from16 v0, v45

    #@fec
    move/from16 v1, v46

    #@fee
    if-eq v0, v1, :cond_32

    #@ff0
    .line 5825
    move-object/from16 v0, p0

    #@ff2
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@ff4
    move-object/from16 v45, v0

    #@ff6
    new-instance v46, Ljava/lang/StringBuilder;

    #@ff8
    invoke-direct/range {v46 .. v46}, Ljava/lang/StringBuilder;-><init>()V

    #@ffb
    const-string/jumbo v47, "Only the current foreground user can modify networks  currentUserId="

    #@ffe
    invoke-virtual/range {v46 .. v47}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1001
    move-result-object v46

    #@1002
    .line 5826
    move-object/from16 v0, p0

    #@1004
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@1006
    move-object/from16 v47, v0

    #@1008
    invoke-static/range {v47 .. v47}, Lcom/android/server/wifi/WifiStateMachine;->-get73(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigManager;

    #@100b
    move-result-object v47

    #@100c
    invoke-virtual/range {v47 .. v47}, Lcom/android/server/wifi/WifiConfigManager;->getCurrentUserId()I

    #@100f
    move-result v47

    #@1010
    .line 5825
    invoke-virtual/range {v46 .. v47}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@1013
    move-result-object v46

    #@1014
    .line 5827
    const-string/jumbo v47, " sendingUserId="

    #@1017
    .line 5825
    invoke-virtual/range {v46 .. v47}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@101a
    move-result-object v46

    #@101b
    .line 5827
    move-object/from16 v0, p1

    #@101d
    iget v0, v0, Landroid/os/Message;->sendingUid:I

    #@101f
    move/from16 v47, v0

    #@1021
    invoke-static/range {v47 .. v47}, Landroid/os/UserHandle;->getUserId(I)I

    #@1024
    move-result v47

    #@1025
    .line 5825
    invoke-virtual/range {v46 .. v47}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@1028
    move-result-object v46

    #@1029
    invoke-virtual/range {v46 .. v46}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@102c
    move-result-object v46

    #@102d
    invoke-virtual/range {v45 .. v46}, Lcom/android/server/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V

    #@1030
    .line 5828
    move-object/from16 v0, p0

    #@1032
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@1034
    move-object/from16 v45, v0

    #@1036
    const v46, 0x25002

    #@1039
    .line 5829
    const/16 v47, 0x9

    #@103b
    .line 5828
    move-object/from16 v0, v45

    #@103d
    move-object/from16 v1, p1

    #@103f
    move/from16 v2, v46

    #@1041
    move/from16 v3, v47

    #@1043
    invoke-static {v0, v1, v2, v3}, Lcom/android/server/wifi/WifiStateMachine;->-wrap31(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;II)V

    #@1046
    goto/16 :goto_0

    #@1048
    .line 5839
    :cond_32
    move-object/from16 v0, p1

    #@104a
    iget v0, v0, Landroid/os/Message;->arg1:I

    #@104c
    move/from16 v21, v0

    #@104e
    .line 5840
    .restart local v21    # "netId":I
    move-object/from16 v0, p1

    #@1050
    iget-object v9, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@1052
    check-cast v9, Landroid/net/wifi/WifiConfiguration;

    #@1054
    .line 5841
    .restart local v9    # "config":Landroid/net/wifi/WifiConfiguration;
    move-object/from16 v0, p0

    #@1056
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@1058
    move-object/from16 v45, v0

    #@105a
    invoke-static/range {v45 .. v45}, Lcom/android/server/wifi/WifiStateMachine;->-get74(Lcom/android/server/wifi/WifiStateMachine;)Landroid/net/wifi/WifiConnectionStatistics;

    #@105d
    move-result-object v45

    #@105e
    move-object/from16 v0, v45

    #@1060
    iget v0, v0, Landroid/net/wifi/WifiConnectionStatistics;->numWifiManagerJoinAttempt:I

    #@1062
    move/from16 v46, v0

    #@1064
    add-int/lit8 v46, v46, 0x1

    #@1066
    move/from16 v0, v46

    #@1068
    move-object/from16 v1, v45

    #@106a
    iput v0, v1, Landroid/net/wifi/WifiConnectionStatistics;->numWifiManagerJoinAttempt:I

    #@106c
    .line 5842
    const/16 v41, 0x0

    #@106e
    .line 5845
    .local v41, "updatedExisting":Z
    if-eqz v9, :cond_35

    #@1070
    .line 5850
    move-object/from16 v0, p0

    #@1072
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@1074
    move-object/from16 v45, v0

    #@1076
    move-object/from16 v0, p1

    #@1078
    iget v0, v0, Landroid/os/Message;->sendingUid:I

    #@107a
    move/from16 v46, v0

    #@107c
    .line 5851
    const/16 v47, 0x1

    #@107e
    .line 5850
    move-object/from16 v0, v45

    #@1080
    move/from16 v1, v46

    #@1082
    move/from16 v2, v47

    #@1084
    invoke-virtual {v0, v9, v1, v2}, Lcom/android/server/wifi/WifiStateMachine;->recordUidIfAuthorized(Landroid/net/wifi/WifiConfiguration;IZ)Z

    #@1087
    move-result v45

    #@1088
    if-nez v45, :cond_33

    #@108a
    .line 5852
    move-object/from16 v0, p0

    #@108c
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@108e
    move-object/from16 v45, v0

    #@1090
    new-instance v46, Ljava/lang/StringBuilder;

    #@1092
    invoke-direct/range {v46 .. v46}, Ljava/lang/StringBuilder;-><init>()V

    #@1095
    const-string/jumbo v47, "Not authorized to update network  config="

    #@1098
    invoke-virtual/range {v46 .. v47}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@109b
    move-result-object v46

    #@109c
    .line 5853
    iget-object v0, v9, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    #@109e
    move-object/from16 v47, v0

    #@10a0
    .line 5852
    invoke-virtual/range {v46 .. v47}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@10a3
    move-result-object v46

    #@10a4
    .line 5854
    const-string/jumbo v47, " cnid="

    #@10a7
    .line 5852
    invoke-virtual/range {v46 .. v47}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@10aa
    move-result-object v46

    #@10ab
    .line 5854
    iget v0, v9, Landroid/net/wifi/WifiConfiguration;->networkId:I

    #@10ad
    move/from16 v47, v0

    #@10af
    .line 5852
    invoke-virtual/range {v46 .. v47}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@10b2
    move-result-object v46

    #@10b3
    .line 5855
    const-string/jumbo v47, " uid="

    #@10b6
    .line 5852
    invoke-virtual/range {v46 .. v47}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@10b9
    move-result-object v46

    #@10ba
    .line 5855
    move-object/from16 v0, p1

    #@10bc
    iget v0, v0, Landroid/os/Message;->sendingUid:I

    #@10be
    move/from16 v47, v0

    #@10c0
    .line 5852
    invoke-virtual/range {v46 .. v47}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@10c3
    move-result-object v46

    #@10c4
    invoke-virtual/range {v46 .. v46}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@10c7
    move-result-object v46

    #@10c8
    invoke-static/range {v45 .. v46}, Lcom/android/server/wifi/WifiStateMachine;->-wrap29(Lcom/android/server/wifi/WifiStateMachine;Ljava/lang/String;)V

    #@10cb
    .line 5856
    move-object/from16 v0, p0

    #@10cd
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@10cf
    move-object/from16 v45, v0

    #@10d1
    const v46, 0x25002

    #@10d4
    .line 5857
    const/16 v47, 0x9

    #@10d6
    .line 5856
    move-object/from16 v0, v45

    #@10d8
    move-object/from16 v1, p1

    #@10da
    move/from16 v2, v46

    #@10dc
    move/from16 v3, v47

    #@10de
    invoke-static {v0, v1, v2, v3}, Lcom/android/server/wifi/WifiStateMachine;->-wrap31(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;II)V

    #@10e1
    goto/16 :goto_0

    #@10e3
    .line 5860
    :cond_33
    const/16 v45, 0x1

    #@10e5
    move/from16 v0, v45

    #@10e7
    invoke-virtual {v9, v0}, Landroid/net/wifi/WifiConfiguration;->configKey(Z)Ljava/lang/String;

    #@10ea
    move-result-object v10

    #@10eb
    .line 5862
    .local v10, "configKey":Ljava/lang/String;
    move-object/from16 v0, p0

    #@10ed
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@10ef
    move-object/from16 v45, v0

    #@10f1
    invoke-static/range {v45 .. v45}, Lcom/android/server/wifi/WifiStateMachine;->-get73(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigManager;

    #@10f4
    move-result-object v45

    #@10f5
    move-object/from16 v0, v45

    #@10f7
    invoke-virtual {v0, v10}, Lcom/android/server/wifi/WifiConfigManager;->getWifiConfiguration(Ljava/lang/String;)Landroid/net/wifi/WifiConfiguration;

    #@10fa
    move-result-object v31

    #@10fb
    .line 5863
    .local v31, "savedConfig":Landroid/net/wifi/WifiConfiguration;
    if-eqz v31, :cond_34

    #@10fd
    .line 5867
    move-object/from16 v9, v31

    #@10ff
    .line 5868
    move-object/from16 v0, p0

    #@1101
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@1103
    move-object/from16 v45, v0

    #@1105
    new-instance v46, Ljava/lang/StringBuilder;

    #@1107
    invoke-direct/range {v46 .. v46}, Ljava/lang/StringBuilder;-><init>()V

    #@110a
    const-string/jumbo v47, "CONNECT_NETWORK updating existing config with id="

    #@110d
    invoke-virtual/range {v46 .. v47}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1110
    move-result-object v46

    #@1111
    .line 5869
    move-object/from16 v0, v31

    #@1113
    iget v0, v0, Landroid/net/wifi/WifiConfiguration;->networkId:I

    #@1115
    move/from16 v47, v0

    #@1117
    .line 5868
    invoke-virtual/range {v46 .. v47}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@111a
    move-result-object v46

    #@111b
    .line 5869
    const-string/jumbo v47, " configKey="

    #@111e
    .line 5868
    invoke-virtual/range {v46 .. v47}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1121
    move-result-object v46

    #@1122
    move-object/from16 v0, v46

    #@1124
    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1127
    move-result-object v46

    #@1128
    invoke-virtual/range {v46 .. v46}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@112b
    move-result-object v46

    #@112c
    invoke-virtual/range {v45 .. v46}, Lcom/android/server/wifi/WifiStateMachine;->logd(Ljava/lang/String;)V

    #@112f
    .line 5870
    const/16 v45, 0x0

    #@1131
    move/from16 v0, v45

    #@1133
    move-object/from16 v1, v31

    #@1135
    iput-boolean v0, v1, Landroid/net/wifi/WifiConfiguration;->ephemeral:Z

    #@1137
    .line 5871
    move-object/from16 v0, p0

    #@1139
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@113b
    move-object/from16 v45, v0

    #@113d
    invoke-static/range {v45 .. v45}, Lcom/android/server/wifi/WifiStateMachine;->-get73(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigManager;

    #@1140
    move-result-object v45

    #@1141
    .line 5872
    const/16 v46, 0x0

    #@1143
    .line 5871
    move-object/from16 v0, v45

    #@1145
    move-object/from16 v1, v31

    #@1147
    move/from16 v2, v46

    #@1149
    invoke-virtual {v0, v1, v2}, Lcom/android/server/wifi/WifiConfigManager;->updateNetworkSelectionStatus(Landroid/net/wifi/WifiConfiguration;I)Z

    #@114c
    .line 5874
    const/16 v41, 0x1

    #@114e
    .line 5877
    :cond_34
    move-object/from16 v0, p0

    #@1150
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@1152
    move-object/from16 v45, v0

    #@1154
    invoke-static/range {v45 .. v45}, Lcom/android/server/wifi/WifiStateMachine;->-get73(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigManager;

    #@1157
    move-result-object v45

    #@1158
    move-object/from16 v0, p1

    #@115a
    iget v0, v0, Landroid/os/Message;->sendingUid:I

    #@115c
    move/from16 v46, v0

    #@115e
    move-object/from16 v0, v45

    #@1160
    move/from16 v1, v46

    #@1162
    invoke-virtual {v0, v9, v1}, Lcom/android/server/wifi/WifiConfigManager;->saveNetwork(Landroid/net/wifi/WifiConfiguration;I)Lcom/android/server/wifi/NetworkUpdateResult;

    #@1165
    move-result-object v30

    #@1166
    .line 5878
    .restart local v30    # "result":Lcom/android/server/wifi/NetworkUpdateResult;
    invoke-virtual/range {v30 .. v30}, Lcom/android/server/wifi/NetworkUpdateResult;->getNetworkId()I

    #@1169
    move-result v21

    #@116a
    .line 5880
    .end local v10    # "configKey":Ljava/lang/String;
    .end local v30    # "result":Lcom/android/server/wifi/NetworkUpdateResult;
    .end local v31    # "savedConfig":Landroid/net/wifi/WifiConfiguration;
    :cond_35
    move-object/from16 v0, p0

    #@116c
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@116e
    move-object/from16 v45, v0

    #@1170
    invoke-static/range {v45 .. v45}, Lcom/android/server/wifi/WifiStateMachine;->-get73(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigManager;

    #@1173
    move-result-object v45

    #@1174
    move-object/from16 v0, v45

    #@1176
    move/from16 v1, v21

    #@1178
    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiConfigManager;->getWifiConfiguration(I)Landroid/net/wifi/WifiConfiguration;

    #@117b
    move-result-object v9

    #@117c
    .line 5881
    if-nez v9, :cond_36

    #@117e
    .line 5882
    move-object/from16 v0, p0

    #@1180
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@1182
    move-object/from16 v45, v0

    #@1184
    new-instance v46, Ljava/lang/StringBuilder;

    #@1186
    invoke-direct/range {v46 .. v46}, Ljava/lang/StringBuilder;-><init>()V

    #@1189
    const-string/jumbo v47, "CONNECT_NETWORK no config for id="

    #@118c
    invoke-virtual/range {v46 .. v47}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@118f
    move-result-object v46

    #@1190
    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    #@1193
    move-result-object v47

    #@1194
    invoke-virtual/range {v46 .. v47}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1197
    move-result-object v46

    #@1198
    const-string/jumbo v47, " "

    #@119b
    invoke-virtual/range {v46 .. v47}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@119e
    move-result-object v46

    #@119f
    .line 5883
    move-object/from16 v0, p0

    #@11a1
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@11a3
    move-object/from16 v47, v0

    #@11a5
    invoke-static/range {v47 .. v47}, Lcom/android/server/wifi/WifiStateMachine;->-get59(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/SupplicantStateTracker;

    #@11a8
    move-result-object v47

    #@11a9
    invoke-virtual/range {v47 .. v47}, Lcom/android/server/wifi/SupplicantStateTracker;->getSupplicantStateName()Ljava/lang/String;

    #@11ac
    move-result-object v47

    #@11ad
    .line 5882
    invoke-virtual/range {v46 .. v47}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@11b0
    move-result-object v46

    #@11b1
    .line 5883
    const-string/jumbo v47, " my state "

    #@11b4
    .line 5882
    invoke-virtual/range {v46 .. v47}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@11b7
    move-result-object v46

    #@11b8
    .line 5884
    move-object/from16 v0, p0

    #@11ba
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@11bc
    move-object/from16 v47, v0

    #@11be
    invoke-static/range {v47 .. v47}, Lcom/android/server/wifi/WifiStateMachine;->-wrap8(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/internal/util/IState;

    #@11c1
    move-result-object v47

    #@11c2
    invoke-interface/range {v47 .. v47}, Lcom/android/internal/util/IState;->getName()Ljava/lang/String;

    #@11c5
    move-result-object v47

    #@11c6
    .line 5882
    invoke-virtual/range {v46 .. v47}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@11c9
    move-result-object v46

    #@11ca
    invoke-virtual/range {v46 .. v46}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@11cd
    move-result-object v46

    #@11ce
    invoke-virtual/range {v45 .. v46}, Lcom/android/server/wifi/WifiStateMachine;->logd(Ljava/lang/String;)V

    #@11d1
    .line 5885
    move-object/from16 v0, p0

    #@11d3
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@11d5
    move-object/from16 v45, v0

    #@11d7
    const v46, 0x25002

    #@11da
    .line 5886
    const/16 v47, 0x0

    #@11dc
    .line 5885
    move-object/from16 v0, v45

    #@11de
    move-object/from16 v1, p1

    #@11e0
    move/from16 v2, v46

    #@11e2
    move/from16 v3, v47

    #@11e4
    invoke-static {v0, v1, v2, v3}, Lcom/android/server/wifi/WifiStateMachine;->-wrap31(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;II)V

    #@11e7
    goto/16 :goto_0

    #@11e9
    .line 5889
    :cond_36
    move-object/from16 v0, p0

    #@11eb
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@11ed
    move-object/from16 v45, v0

    #@11ef
    move-object/from16 v0, v45

    #@11f1
    move/from16 v1, v21

    #@11f3
    invoke-static {v0, v1}, Lcom/android/server/wifi/WifiStateMachine;->-set30(Lcom/android/server/wifi/WifiStateMachine;I)I

    #@11f6
    .line 5890
    move-object/from16 v0, p0

    #@11f8
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@11fa
    move-object/from16 v45, v0

    #@11fc
    const-string/jumbo v46, "any"

    #@11ff
    move-object/from16 v0, v45

    #@1201
    move/from16 v1, v21

    #@1203
    move-object/from16 v2, v46

    #@1205
    invoke-virtual {v0, v1, v2}, Lcom/android/server/wifi/WifiStateMachine;->autoRoamSetBSSID(ILjava/lang/String;)V

    #@1208
    .line 5891
    move-object/from16 v0, p1

    #@120a
    iget v0, v0, Landroid/os/Message;->sendingUid:I

    #@120c
    move/from16 v45, v0

    #@120e
    const/16 v46, 0x3f2

    #@1210
    move/from16 v0, v45

    #@1212
    move/from16 v1, v46

    #@1214
    if-eq v0, v1, :cond_37

    #@1216
    .line 5892
    move-object/from16 v0, p1

    #@1218
    iget v0, v0, Landroid/os/Message;->sendingUid:I

    #@121a
    move/from16 v45, v0

    #@121c
    const/16 v46, 0x3e8

    #@121e
    move/from16 v0, v45

    #@1220
    move/from16 v1, v46

    #@1222
    if-ne v0, v1, :cond_38

    #@1224
    .line 5899
    :cond_37
    move-object/from16 v0, p0

    #@1226
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@1228
    move-object/from16 v45, v0

    #@122a
    const-string/jumbo v46, "CONNECT_NETWORK"

    #@122d
    move-object/from16 v0, v45

    #@122f
    move-object/from16 v1, v46

    #@1231
    invoke-virtual {v0, v9, v1}, Lcom/android/server/wifi/WifiStateMachine;->clearConfigBSSID(Landroid/net/wifi/WifiConfiguration;Ljava/lang/String;)V

    #@1234
    .line 5902
    :cond_38
    move-object/from16 v0, p0

    #@1236
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@1238
    move-object/from16 v45, v0

    #@123a
    const/16 v46, 0x1

    #@123c
    move-object/from16 v0, v45

    #@123e
    move-object/from16 v1, p1

    #@1240
    move/from16 v2, v21

    #@1242
    move/from16 v3, v46

    #@1244
    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/wifi/WifiStateMachine;->deferForUserInput(Landroid/os/Message;IZ)Z

    #@1247
    move-result v45

    #@1248
    if-nez v45, :cond_3

    #@124a
    .line 5904
    move-object/from16 v0, p0

    #@124c
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@124e
    move-object/from16 v45, v0

    #@1250
    invoke-static/range {v45 .. v45}, Lcom/android/server/wifi/WifiStateMachine;->-get73(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigManager;

    #@1253
    move-result-object v45

    #@1254
    move-object/from16 v0, v45

    #@1256
    move/from16 v1, v21

    #@1258
    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiConfigManager;->getWifiConfiguration(I)Landroid/net/wifi/WifiConfiguration;

    #@125b
    move-result-object v45

    #@125c
    move-object/from16 v0, v45

    #@125e
    iget v0, v0, Landroid/net/wifi/WifiConfiguration;->userApproved:I

    #@1260
    move/from16 v45, v0

    #@1262
    .line 5905
    const/16 v46, 0x2

    #@1264
    .line 5904
    move/from16 v0, v45

    #@1266
    move/from16 v1, v46

    #@1268
    if-ne v0, v1, :cond_39

    #@126a
    .line 5906
    move-object/from16 v0, p0

    #@126c
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@126e
    move-object/from16 v45, v0

    #@1270
    const v46, 0x25002

    #@1273
    .line 5907
    const/16 v47, 0x9

    #@1275
    .line 5906
    move-object/from16 v0, v45

    #@1277
    move-object/from16 v1, p1

    #@1279
    move/from16 v2, v46

    #@127b
    move/from16 v3, v47

    #@127d
    invoke-static {v0, v1, v2, v3}, Lcom/android/server/wifi/WifiStateMachine;->-wrap31(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;II)V

    #@1280
    goto/16 :goto_0

    #@1282
    .line 5911
    :cond_39
    move-object/from16 v0, p0

    #@1284
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@1286
    move-object/from16 v45, v0

    #@1288
    const/16 v46, 0x0

    #@128a
    invoke-static/range {v45 .. v46}, Lcom/android/server/wifi/WifiStateMachine;->-set5(Lcom/android/server/wifi/WifiStateMachine;Z)Z

    #@128d
    .line 5916
    move-object/from16 v0, p0

    #@128f
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@1291
    move-object/from16 v45, v0

    #@1293
    invoke-static/range {v45 .. v45}, Lcom/android/server/wifi/WifiStateMachine;->-get73(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigManager;

    #@1296
    move-result-object v45

    #@1297
    move-object/from16 v0, p1

    #@1299
    iget v0, v0, Landroid/os/Message;->sendingUid:I

    #@129b
    move/from16 v46, v0

    #@129d
    invoke-virtual/range {v45 .. v46}, Lcom/android/server/wifi/WifiConfigManager;->checkConfigOverridePermission(I)Z

    #@12a0
    move-result v26

    #@12a1
    .line 5919
    .restart local v26    # "persist":Z
    move-object/from16 v0, p0

    #@12a3
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@12a5
    move-object/from16 v45, v0

    #@12a7
    invoke-static/range {v45 .. v45}, Lcom/android/server/wifi/WifiStateMachine;->-get73(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigManager;

    #@12aa
    move-result-object v45

    #@12ab
    move-object/from16 v0, v45

    #@12ad
    move/from16 v1, v21

    #@12af
    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiConfigManager;->setAndEnableLastSelectedConfiguration(I)V

    #@12b2
    .line 5920
    move-object/from16 v0, p0

    #@12b4
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@12b6
    move-object/from16 v45, v0

    #@12b8
    invoke-static/range {v45 .. v45}, Lcom/android/server/wifi/WifiStateMachine;->-get75(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConnectivityManager;

    #@12bb
    move-result-object v45

    #@12bc
    if-eqz v45, :cond_3a

    #@12be
    .line 5921
    move-object/from16 v0, p0

    #@12c0
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@12c2
    move-object/from16 v45, v0

    #@12c4
    invoke-static/range {v45 .. v45}, Lcom/android/server/wifi/WifiStateMachine;->-get75(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConnectivityManager;

    #@12c7
    move-result-object v45

    #@12c8
    move-object/from16 v0, v45

    #@12ca
    move/from16 v1, v21

    #@12cc
    move/from16 v2, v26

    #@12ce
    invoke-virtual {v0, v1, v2}, Lcom/android/server/wifi/WifiConnectivityManager;->connectToUserSelectNetwork(IZ)V

    #@12d1
    .line 5923
    :cond_3a
    const/4 v12, 0x0

    #@12d2
    .line 5924
    .restart local v12    # "didDisconnect":Z
    move-object/from16 v0, p0

    #@12d4
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@12d6
    move-object/from16 v45, v0

    #@12d8
    invoke-static/range {v45 .. v45}, Lcom/android/server/wifi/WifiStateMachine;->-get33(Lcom/android/server/wifi/WifiStateMachine;)I

    #@12db
    move-result v45

    #@12dc
    const/16 v46, -0x1

    #@12de
    move/from16 v0, v45

    #@12e0
    move/from16 v1, v46

    #@12e2
    if-eq v0, v1, :cond_3b

    #@12e4
    .line 5925
    move-object/from16 v0, p0

    #@12e6
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@12e8
    move-object/from16 v45, v0

    #@12ea
    invoke-static/range {v45 .. v45}, Lcom/android/server/wifi/WifiStateMachine;->-get33(Lcom/android/server/wifi/WifiStateMachine;)I

    #@12ed
    move-result v45

    #@12ee
    move/from16 v0, v45

    #@12f0
    move/from16 v1, v21

    #@12f2
    if-eq v0, v1, :cond_3b

    #@12f4
    .line 5929
    const/4 v12, 0x1

    #@12f5
    .line 5930
    move-object/from16 v0, p0

    #@12f7
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@12f9
    move-object/from16 v45, v0

    #@12fb
    invoke-static/range {v45 .. v45}, Lcom/android/server/wifi/WifiStateMachine;->-get83(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiNative;

    #@12fe
    move-result-object v45

    #@12ff
    invoke-virtual/range {v45 .. v45}, Lcom/android/server/wifi/WifiNative;->disconnect()Z

    #@1302
    .line 5935
    :cond_3b
    move-object/from16 v0, p0

    #@1304
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@1306
    move-object/from16 v45, v0

    #@1308
    invoke-static/range {v45 .. v45}, Lcom/android/server/wifi/WifiStateMachine;->-get81(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiMetrics;

    #@130b
    move-result-object v45

    #@130c
    move-object/from16 v0, p0

    #@130e
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@1310
    move-object/from16 v46, v0

    #@1312
    invoke-static/range {v46 .. v46}, Lcom/android/server/wifi/WifiStateMachine;->-get66(Lcom/android/server/wifi/WifiStateMachine;)Ljava/lang/String;

    #@1315
    move-result-object v46

    #@1316
    .line 5936
    const/16 v47, 0x4

    #@1318
    .line 5935
    move-object/from16 v0, v45

    #@131a
    move-object/from16 v1, v46

    #@131c
    move/from16 v2, v47

    #@131e
    invoke-virtual {v0, v9, v1, v2}, Lcom/android/server/wifi/WifiMetrics;->startConnectionEvent(Landroid/net/wifi/WifiConfiguration;Ljava/lang/String;I)V

    #@1321
    .line 5937
    move-object/from16 v0, p0

    #@1323
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@1325
    move-object/from16 v45, v0

    #@1327
    invoke-static/range {v45 .. v45}, Lcom/android/server/wifi/WifiStateMachine;->-get73(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigManager;

    #@132a
    move-result-object v45

    #@132b
    .line 5938
    move-object/from16 v0, p1

    #@132d
    iget v0, v0, Landroid/os/Message;->sendingUid:I

    #@132f
    move/from16 v46, v0

    #@1331
    .line 5937
    const/16 v47, 0x1

    #@1333
    move-object/from16 v0, v45

    #@1335
    move/from16 v1, v47

    #@1337
    move/from16 v2, v46

    #@1339
    invoke-virtual {v0, v9, v1, v2}, Lcom/android/server/wifi/WifiConfigManager;->selectNetwork(Landroid/net/wifi/WifiConfiguration;ZI)Z

    #@133c
    move-result v45

    #@133d
    if-eqz v45, :cond_3e

    #@133f
    .line 5938
    move-object/from16 v0, p0

    #@1341
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@1343
    move-object/from16 v45, v0

    #@1345
    invoke-static/range {v45 .. v45}, Lcom/android/server/wifi/WifiStateMachine;->-get83(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiNative;

    #@1348
    move-result-object v45

    #@1349
    invoke-virtual/range {v45 .. v45}, Lcom/android/server/wifi/WifiNative;->reconnect()Z

    #@134c
    move-result v45

    #@134d
    .line 5937
    if-eqz v45, :cond_3e

    #@134f
    .line 5939
    move-object/from16 v0, p0

    #@1351
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@1353
    move-object/from16 v45, v0

    #@1355
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    #@1358
    move-result-wide v46

    #@1359
    invoke-static/range {v45 .. v47}, Lcom/android/server/wifi/WifiStateMachine;->-set1(Lcom/android/server/wifi/WifiStateMachine;J)J

    #@135c
    .line 5940
    move-object/from16 v0, p0

    #@135e
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@1360
    move-object/from16 v45, v0

    #@1362
    move-object/from16 v0, p0

    #@1364
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@1366
    move-object/from16 v46, v0

    #@1368
    invoke-static/range {v46 .. v46}, Lcom/android/server/wifi/WifiStateMachine;->-get73(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigManager;

    #@136b
    move-result-object v46

    #@136c
    move-object/from16 v0, v46

    #@136e
    move/from16 v1, v21

    #@1370
    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiConfigManager;->getWifiConfiguration(I)Landroid/net/wifi/WifiConfiguration;

    #@1373
    move-result-object v46

    #@1374
    invoke-static/range {v45 .. v46}, Lcom/android/server/wifi/WifiStateMachine;->-set39(Lcom/android/server/wifi/WifiStateMachine;Landroid/net/wifi/WifiConfiguration;)Landroid/net/wifi/WifiConfiguration;

    #@1377
    .line 5943
    move-object/from16 v0, p0

    #@1379
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@137b
    move-object/from16 v45, v0

    #@137d
    invoke-static/range {v45 .. v45}, Lcom/android/server/wifi/WifiStateMachine;->-get59(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/SupplicantStateTracker;

    #@1380
    move-result-object v45

    #@1381
    const v46, 0x25001

    #@1384
    invoke-virtual/range {v45 .. v46}, Lcom/android/server/wifi/SupplicantStateTracker;->sendMessage(I)V

    #@1387
    .line 5944
    move-object/from16 v0, p0

    #@1389
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@138b
    move-object/from16 v45, v0

    #@138d
    const v46, 0x25003

    #@1390
    move-object/from16 v0, v45

    #@1392
    move-object/from16 v1, p1

    #@1394
    move/from16 v2, v46

    #@1396
    invoke-static {v0, v1, v2}, Lcom/android/server/wifi/WifiStateMachine;->-wrap30(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;I)V

    #@1399
    .line 5945
    if-eqz v12, :cond_3c

    #@139b
    .line 5947
    move-object/from16 v0, p0

    #@139d
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@139f
    move-object/from16 v45, v0

    #@13a1
    move-object/from16 v0, p0

    #@13a3
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@13a5
    move-object/from16 v46, v0

    #@13a7
    invoke-static/range {v46 .. v46}, Lcom/android/server/wifi/WifiStateMachine;->-get17(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/internal/util/State;

    #@13aa
    move-result-object v46

    #@13ab
    invoke-static/range {v45 .. v46}, Lcom/android/server/wifi/WifiStateMachine;->-wrap45(Lcom/android/server/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V

    #@13ae
    goto/16 :goto_0

    #@13b0
    .line 5948
    :cond_3c
    if-eqz v41, :cond_3d

    #@13b2
    move-object/from16 v0, p0

    #@13b4
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@13b6
    move-object/from16 v45, v0

    #@13b8
    invoke-static/range {v45 .. v45}, Lcom/android/server/wifi/WifiStateMachine;->-wrap8(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/internal/util/IState;

    #@13bb
    move-result-object v45

    #@13bc
    move-object/from16 v0, p0

    #@13be
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@13c0
    move-object/from16 v46, v0

    #@13c2
    invoke-static/range {v46 .. v46}, Lcom/android/server/wifi/WifiStateMachine;->-get12(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/internal/util/State;

    #@13c5
    move-result-object v46

    #@13c6
    move-object/from16 v0, v45

    #@13c8
    move-object/from16 v1, v46

    #@13ca
    if-ne v0, v1, :cond_3d

    #@13cc
    .line 5949
    move-object/from16 v0, p0

    #@13ce
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@13d0
    move-object/from16 v45, v0

    #@13d2
    invoke-virtual/range {v45 .. v45}, Lcom/android/server/wifi/WifiStateMachine;->getCurrentWifiConfiguration()Landroid/net/wifi/WifiConfiguration;

    #@13d5
    move-result-object v45

    #@13d6
    move-object/from16 v0, v45

    #@13d8
    iget v0, v0, Landroid/net/wifi/WifiConfiguration;->networkId:I

    #@13da
    move/from16 v45, v0

    #@13dc
    move/from16 v0, v45

    #@13de
    move/from16 v1, v21

    #@13e0
    if-ne v0, v1, :cond_3d

    #@13e2
    .line 5952
    move-object/from16 v0, p0

    #@13e4
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@13e6
    move-object/from16 v45, v0

    #@13e8
    move-object/from16 v0, v45

    #@13ea
    invoke-static {v0, v9}, Lcom/android/server/wifi/WifiStateMachine;->-wrap46(Lcom/android/server/wifi/WifiStateMachine;Landroid/net/wifi/WifiConfiguration;)V

    #@13ed
    goto/16 :goto_0

    #@13ef
    .line 5958
    :cond_3d
    move-object/from16 v0, p0

    #@13f1
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@13f3
    move-object/from16 v45, v0

    #@13f5
    move-object/from16 v0, p0

    #@13f7
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@13f9
    move-object/from16 v46, v0

    #@13fb
    invoke-static/range {v46 .. v46}, Lcom/android/server/wifi/WifiStateMachine;->-get16(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/internal/util/State;

    #@13fe
    move-result-object v46

    #@13ff
    invoke-static/range {v45 .. v46}, Lcom/android/server/wifi/WifiStateMachine;->-wrap45(Lcom/android/server/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V

    #@1402
    goto/16 :goto_0

    #@1404
    .line 5961
    :cond_3e
    move-object/from16 v0, p0

    #@1406
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@1408
    move-object/from16 v45, v0

    #@140a
    new-instance v46, Ljava/lang/StringBuilder;

    #@140c
    invoke-direct/range {v46 .. v46}, Ljava/lang/StringBuilder;-><init>()V

    #@140f
    const-string/jumbo v47, "Failed to connect config: "

    #@1412
    invoke-virtual/range {v46 .. v47}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1415
    move-result-object v46

    #@1416
    move-object/from16 v0, v46

    #@1418
    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@141b
    move-result-object v46

    #@141c
    const-string/jumbo v47, " netId: "

    #@141f
    invoke-virtual/range {v46 .. v47}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1422
    move-result-object v46

    #@1423
    move-object/from16 v0, v46

    #@1425
    move/from16 v1, v21

    #@1427
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@142a
    move-result-object v46

    #@142b
    invoke-virtual/range {v46 .. v46}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@142e
    move-result-object v46

    #@142f
    invoke-virtual/range {v45 .. v46}, Lcom/android/server/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V

    #@1432
    .line 5962
    move-object/from16 v0, p0

    #@1434
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@1436
    move-object/from16 v45, v0

    #@1438
    const v46, 0x25002

    #@143b
    .line 5963
    const/16 v47, 0x0

    #@143d
    .line 5962
    move-object/from16 v0, v45

    #@143f
    move-object/from16 v1, p1

    #@1441
    move/from16 v2, v46

    #@1443
    move/from16 v3, v47

    #@1445
    invoke-static {v0, v1, v2, v3}, Lcom/android/server/wifi/WifiStateMachine;->-wrap31(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;II)V

    #@1448
    .line 5964
    move-object/from16 v0, p0

    #@144a
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@144c
    move-object/from16 v45, v0

    #@144e
    .line 5965
    const/16 v46, 0x5

    #@1450
    .line 5966
    const/16 v47, 0x1

    #@1452
    .line 5964
    invoke-static/range {v45 .. v47}, Lcom/android/server/wifi/WifiStateMachine;->-wrap33(Lcom/android/server/wifi/WifiStateMachine;II)V

    #@1455
    goto/16 :goto_0

    #@1457
    .line 5971
    .end local v9    # "config":Landroid/net/wifi/WifiConfiguration;
    .end local v12    # "didDisconnect":Z
    .end local v21    # "netId":I
    .end local v26    # "persist":Z
    .end local v41    # "updatedExisting":Z
    :sswitch_1d
    move-object/from16 v0, p0

    #@1459
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@145b
    move-object/from16 v45, v0

    #@145d
    invoke-static/range {v45 .. v45}, Lcom/android/server/wifi/WifiStateMachine;->-get74(Lcom/android/server/wifi/WifiStateMachine;)Landroid/net/wifi/WifiConnectionStatistics;

    #@1460
    move-result-object v45

    #@1461
    move-object/from16 v0, v45

    #@1463
    iget v0, v0, Landroid/net/wifi/WifiConnectionStatistics;->numWifiManagerJoinAttempt:I

    #@1465
    move/from16 v46, v0

    #@1467
    add-int/lit8 v46, v46, 0x1

    #@1469
    move/from16 v0, v46

    #@146b
    move-object/from16 v1, v45

    #@146d
    iput v0, v1, Landroid/net/wifi/WifiConnectionStatistics;->numWifiManagerJoinAttempt:I

    #@146f
    .line 5975
    :sswitch_1e
    move-object/from16 v0, p0

    #@1471
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@1473
    move-object/from16 v45, v0

    #@1475
    invoke-static/range {v45 .. v45}, Lcom/android/server/wifi/WifiStateMachine;->-get73(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigManager;

    #@1478
    move-result-object v45

    #@1479
    .line 5976
    move-object/from16 v0, p1

    #@147b
    iget v0, v0, Landroid/os/Message;->sendingUid:I

    #@147d
    move/from16 v46, v0

    #@147f
    invoke-static/range {v46 .. v46}, Landroid/os/UserHandle;->getUserId(I)I

    #@1482
    move-result v46

    #@1483
    .line 5975
    invoke-virtual/range {v45 .. v46}, Lcom/android/server/wifi/WifiConfigManager;->isCurrentUserProfile(I)Z

    #@1486
    move-result v45

    #@1487
    if-nez v45, :cond_3f

    #@1489
    .line 5977
    move-object/from16 v0, p0

    #@148b
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@148d
    move-object/from16 v45, v0

    #@148f
    new-instance v46, Ljava/lang/StringBuilder;

    #@1491
    invoke-direct/range {v46 .. v46}, Ljava/lang/StringBuilder;-><init>()V

    #@1494
    const-string/jumbo v47, "Only the current foreground user can modify networks  currentUserId="

    #@1497
    invoke-virtual/range {v46 .. v47}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@149a
    move-result-object v46

    #@149b
    .line 5978
    move-object/from16 v0, p0

    #@149d
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@149f
    move-object/from16 v47, v0

    #@14a1
    invoke-static/range {v47 .. v47}, Lcom/android/server/wifi/WifiStateMachine;->-get73(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigManager;

    #@14a4
    move-result-object v47

    #@14a5
    invoke-virtual/range {v47 .. v47}, Lcom/android/server/wifi/WifiConfigManager;->getCurrentUserId()I

    #@14a8
    move-result v47

    #@14a9
    .line 5977
    invoke-virtual/range {v46 .. v47}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@14ac
    move-result-object v46

    #@14ad
    .line 5979
    const-string/jumbo v47, " sendingUserId="

    #@14b0
    .line 5977
    invoke-virtual/range {v46 .. v47}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@14b3
    move-result-object v46

    #@14b4
    .line 5979
    move-object/from16 v0, p1

    #@14b6
    iget v0, v0, Landroid/os/Message;->sendingUid:I

    #@14b8
    move/from16 v47, v0

    #@14ba
    invoke-static/range {v47 .. v47}, Landroid/os/UserHandle;->getUserId(I)I

    #@14bd
    move-result v47

    #@14be
    .line 5977
    invoke-virtual/range {v46 .. v47}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@14c1
    move-result-object v46

    #@14c2
    invoke-virtual/range {v46 .. v46}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@14c5
    move-result-object v46

    #@14c6
    invoke-virtual/range {v45 .. v46}, Lcom/android/server/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V

    #@14c9
    .line 5980
    move-object/from16 v0, p0

    #@14cb
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@14cd
    move-object/from16 v45, v0

    #@14cf
    const v46, 0x25008

    #@14d2
    .line 5981
    const/16 v47, 0x9

    #@14d4
    .line 5980
    move-object/from16 v0, v45

    #@14d6
    move-object/from16 v1, p1

    #@14d8
    move/from16 v2, v46

    #@14da
    move/from16 v3, v47

    #@14dc
    invoke-static {v0, v1, v2, v3}, Lcom/android/server/wifi/WifiStateMachine;->-wrap31(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;II)V

    #@14df
    goto/16 :goto_0

    #@14e1
    .line 5985
    :cond_3f
    move-object/from16 v0, p0

    #@14e3
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@14e5
    move-object/from16 v45, v0

    #@14e7
    const/16 v46, 0x0

    #@14e9
    invoke-static/range {v45 .. v46}, Lcom/android/server/wifi/WifiStateMachine;->-set3(Lcom/android/server/wifi/WifiStateMachine;Landroid/net/wifi/WifiConfiguration;)Landroid/net/wifi/WifiConfiguration;

    #@14ec
    .line 5986
    move-object/from16 v0, p1

    #@14ee
    iget-object v9, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@14f0
    check-cast v9, Landroid/net/wifi/WifiConfiguration;

    #@14f2
    .line 5987
    .restart local v9    # "config":Landroid/net/wifi/WifiConfiguration;
    if-nez v9, :cond_40

    #@14f4
    .line 5988
    move-object/from16 v0, p0

    #@14f6
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@14f8
    move-object/from16 v45, v0

    #@14fa
    new-instance v46, Ljava/lang/StringBuilder;

    #@14fc
    invoke-direct/range {v46 .. v46}, Ljava/lang/StringBuilder;-><init>()V

    #@14ff
    const-string/jumbo v47, "ERROR: SAVE_NETWORK with null configuration"

    #@1502
    invoke-virtual/range {v46 .. v47}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1505
    move-result-object v46

    #@1506
    .line 5989
    move-object/from16 v0, p0

    #@1508
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@150a
    move-object/from16 v47, v0

    #@150c
    invoke-static/range {v47 .. v47}, Lcom/android/server/wifi/WifiStateMachine;->-get59(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/SupplicantStateTracker;

    #@150f
    move-result-object v47

    #@1510
    invoke-virtual/range {v47 .. v47}, Lcom/android/server/wifi/SupplicantStateTracker;->getSupplicantStateName()Ljava/lang/String;

    #@1513
    move-result-object v47

    #@1514
    .line 5988
    invoke-virtual/range {v46 .. v47}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1517
    move-result-object v46

    #@1518
    .line 5990
    const-string/jumbo v47, " my state "

    #@151b
    .line 5988
    invoke-virtual/range {v46 .. v47}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@151e
    move-result-object v46

    #@151f
    .line 5990
    move-object/from16 v0, p0

    #@1521
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@1523
    move-object/from16 v47, v0

    #@1525
    invoke-static/range {v47 .. v47}, Lcom/android/server/wifi/WifiStateMachine;->-wrap8(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/internal/util/IState;

    #@1528
    move-result-object v47

    #@1529
    invoke-interface/range {v47 .. v47}, Lcom/android/internal/util/IState;->getName()Ljava/lang/String;

    #@152c
    move-result-object v47

    #@152d
    .line 5988
    invoke-virtual/range {v46 .. v47}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1530
    move-result-object v46

    #@1531
    invoke-virtual/range {v46 .. v46}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1534
    move-result-object v46

    #@1535
    invoke-virtual/range {v45 .. v46}, Lcom/android/server/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V

    #@1538
    .line 5991
    move-object/from16 v0, p0

    #@153a
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@153c
    move-object/from16 v45, v0

    #@153e
    invoke-static {}, Lcom/android/server/wifi/WifiStateMachine;->-get3()I

    #@1541
    move-result v46

    #@1542
    invoke-static/range {v45 .. v46}, Lcom/android/server/wifi/WifiStateMachine;->-set38(Lcom/android/server/wifi/WifiStateMachine;I)I

    #@1545
    .line 5992
    move-object/from16 v0, p0

    #@1547
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@1549
    move-object/from16 v45, v0

    #@154b
    const v46, 0x25008

    #@154e
    .line 5993
    const/16 v47, 0x0

    #@1550
    .line 5992
    move-object/from16 v0, v45

    #@1552
    move-object/from16 v1, p1

    #@1554
    move/from16 v2, v46

    #@1556
    move/from16 v3, v47

    #@1558
    invoke-static {v0, v1, v2, v3}, Lcom/android/server/wifi/WifiStateMachine;->-wrap31(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;II)V

    #@155b
    goto/16 :goto_0

    #@155d
    .line 5996
    :cond_40
    move-object/from16 v0, p0

    #@155f
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@1561
    move-object/from16 v45, v0

    #@1563
    new-instance v46, Landroid/net/wifi/WifiConfiguration;

    #@1565
    move-object/from16 v0, v46

    #@1567
    invoke-direct {v0, v9}, Landroid/net/wifi/WifiConfiguration;-><init>(Landroid/net/wifi/WifiConfiguration;)V

    #@156a
    invoke-static/range {v45 .. v46}, Lcom/android/server/wifi/WifiStateMachine;->-set3(Lcom/android/server/wifi/WifiStateMachine;Landroid/net/wifi/WifiConfiguration;)Landroid/net/wifi/WifiConfiguration;

    #@156d
    .line 5997
    iget v0, v9, Landroid/net/wifi/WifiConfiguration;->networkId:I

    #@156f
    move/from16 v24, v0

    #@1571
    .line 5998
    .local v24, "nid":I
    move-object/from16 v0, p0

    #@1573
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@1575
    move-object/from16 v45, v0

    #@1577
    new-instance v46, Ljava/lang/StringBuilder;

    #@1579
    invoke-direct/range {v46 .. v46}, Ljava/lang/StringBuilder;-><init>()V

    #@157c
    const-string/jumbo v47, "SAVE_NETWORK id="

    #@157f
    invoke-virtual/range {v46 .. v47}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1582
    move-result-object v46

    #@1583
    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    #@1586
    move-result-object v47

    #@1587
    invoke-virtual/range {v46 .. v47}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@158a
    move-result-object v46

    #@158b
    .line 5999
    const-string/jumbo v47, " config="

    #@158e
    .line 5998
    invoke-virtual/range {v46 .. v47}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1591
    move-result-object v46

    #@1592
    .line 5999
    iget-object v0, v9, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    #@1594
    move-object/from16 v47, v0

    #@1596
    .line 5998
    invoke-virtual/range {v46 .. v47}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1599
    move-result-object v46

    #@159a
    .line 6000
    const-string/jumbo v47, " nid="

    #@159d
    .line 5998
    invoke-virtual/range {v46 .. v47}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@15a0
    move-result-object v46

    #@15a1
    .line 6000
    iget v0, v9, Landroid/net/wifi/WifiConfiguration;->networkId:I

    #@15a3
    move/from16 v47, v0

    #@15a5
    .line 5998
    invoke-virtual/range {v46 .. v47}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@15a8
    move-result-object v46

    #@15a9
    .line 6001
    const-string/jumbo v47, " supstate="

    #@15ac
    .line 5998
    invoke-virtual/range {v46 .. v47}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@15af
    move-result-object v46

    #@15b0
    .line 6001
    move-object/from16 v0, p0

    #@15b2
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@15b4
    move-object/from16 v47, v0

    #@15b6
    invoke-static/range {v47 .. v47}, Lcom/android/server/wifi/WifiStateMachine;->-get59(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/SupplicantStateTracker;

    #@15b9
    move-result-object v47

    #@15ba
    invoke-virtual/range {v47 .. v47}, Lcom/android/server/wifi/SupplicantStateTracker;->getSupplicantStateName()Ljava/lang/String;

    #@15bd
    move-result-object v47

    #@15be
    .line 5998
    invoke-virtual/range {v46 .. v47}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@15c1
    move-result-object v46

    #@15c2
    .line 6002
    const-string/jumbo v47, " my state "

    #@15c5
    .line 5998
    invoke-virtual/range {v46 .. v47}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@15c8
    move-result-object v46

    #@15c9
    .line 6002
    move-object/from16 v0, p0

    #@15cb
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@15cd
    move-object/from16 v47, v0

    #@15cf
    invoke-static/range {v47 .. v47}, Lcom/android/server/wifi/WifiStateMachine;->-wrap8(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/internal/util/IState;

    #@15d2
    move-result-object v47

    #@15d3
    invoke-interface/range {v47 .. v47}, Lcom/android/internal/util/IState;->getName()Ljava/lang/String;

    #@15d6
    move-result-object v47

    #@15d7
    .line 5998
    invoke-virtual/range {v46 .. v47}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@15da
    move-result-object v46

    #@15db
    invoke-virtual/range {v46 .. v46}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@15de
    move-result-object v46

    #@15df
    invoke-virtual/range {v45 .. v46}, Lcom/android/server/wifi/WifiStateMachine;->logd(Ljava/lang/String;)V

    #@15e2
    .line 6005
    move-object/from16 v0, p1

    #@15e4
    iget v0, v0, Landroid/os/Message;->what:I

    #@15e6
    move/from16 v45, v0

    #@15e8
    const v46, 0x25007

    #@15eb
    move/from16 v0, v45

    #@15ed
    move/from16 v1, v46

    #@15ef
    if-ne v0, v1, :cond_46

    #@15f1
    const/4 v8, 0x1

    #@15f2
    .line 6006
    .local v8, "checkUid":Z
    :goto_9
    if-eqz v8, :cond_41

    #@15f4
    move-object/from16 v0, p0

    #@15f6
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@15f8
    move-object/from16 v45, v0

    #@15fa
    move-object/from16 v0, p1

    #@15fc
    iget v0, v0, Landroid/os/Message;->sendingUid:I

    #@15fe
    move/from16 v46, v0

    #@1600
    .line 6007
    const/16 v47, 0x0

    #@1602
    .line 6006
    move-object/from16 v0, v45

    #@1604
    move/from16 v1, v46

    #@1606
    move/from16 v2, v47

    #@1608
    invoke-virtual {v0, v9, v1, v2}, Lcom/android/server/wifi/WifiStateMachine;->recordUidIfAuthorized(Landroid/net/wifi/WifiConfiguration;IZ)Z

    #@160b
    move-result v45

    #@160c
    if-eqz v45, :cond_47

    #@160e
    .line 6017
    :cond_41
    move-object/from16 v0, p0

    #@1610
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@1612
    move-object/from16 v45, v0

    #@1614
    invoke-static/range {v45 .. v45}, Lcom/android/server/wifi/WifiStateMachine;->-get73(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigManager;

    #@1617
    move-result-object v45

    #@1618
    const/16 v46, -0x1

    #@161a
    move-object/from16 v0, v45

    #@161c
    move/from16 v1, v46

    #@161e
    invoke-virtual {v0, v9, v1}, Lcom/android/server/wifi/WifiConfigManager;->saveNetwork(Landroid/net/wifi/WifiConfiguration;I)Lcom/android/server/wifi/NetworkUpdateResult;

    #@1621
    move-result-object v30

    #@1622
    .line 6018
    .restart local v30    # "result":Lcom/android/server/wifi/NetworkUpdateResult;
    invoke-virtual/range {v30 .. v30}, Lcom/android/server/wifi/NetworkUpdateResult;->getNetworkId()I

    #@1625
    move-result v45

    #@1626
    const/16 v46, -0x1

    #@1628
    move/from16 v0, v45

    #@162a
    move/from16 v1, v46

    #@162c
    if-eq v0, v1, :cond_49

    #@162e
    .line 6019
    move-object/from16 v0, p0

    #@1630
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@1632
    move-object/from16 v45, v0

    #@1634
    invoke-static/range {v45 .. v45}, Lcom/android/server/wifi/WifiStateMachine;->-get76(Lcom/android/server/wifi/WifiStateMachine;)Landroid/net/wifi/WifiInfo;

    #@1637
    move-result-object v45

    #@1638
    invoke-virtual/range {v45 .. v45}, Landroid/net/wifi/WifiInfo;->getNetworkId()I

    #@163b
    move-result v45

    #@163c
    invoke-virtual/range {v30 .. v30}, Lcom/android/server/wifi/NetworkUpdateResult;->getNetworkId()I

    #@163f
    move-result v46

    #@1640
    move/from16 v0, v45

    #@1642
    move/from16 v1, v46

    #@1644
    if-ne v0, v1, :cond_43

    #@1646
    .line 6020
    invoke-virtual/range {v30 .. v30}, Lcom/android/server/wifi/NetworkUpdateResult;->hasIpChanged()Z

    #@1649
    move-result v45

    #@164a
    if-eqz v45, :cond_42

    #@164c
    .line 6024
    move-object/from16 v0, p0

    #@164e
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@1650
    move-object/from16 v45, v0

    #@1652
    const-string/jumbo v46, "Reconfiguring IP on connection"

    #@1655
    invoke-virtual/range {v45 .. v46}, Lcom/android/server/wifi/WifiStateMachine;->log(Ljava/lang/String;)V

    #@1658
    .line 6027
    move-object/from16 v0, p0

    #@165a
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@165c
    move-object/from16 v45, v0

    #@165e
    move-object/from16 v0, p0

    #@1660
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@1662
    move-object/from16 v46, v0

    #@1664
    invoke-static/range {v46 .. v46}, Lcom/android/server/wifi/WifiStateMachine;->-get41(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/internal/util/State;

    #@1667
    move-result-object v46

    #@1668
    invoke-static/range {v45 .. v46}, Lcom/android/server/wifi/WifiStateMachine;->-wrap45(Lcom/android/server/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V

    #@166b
    .line 6029
    :cond_42
    invoke-virtual/range {v30 .. v30}, Lcom/android/server/wifi/NetworkUpdateResult;->hasProxyChanged()Z

    #@166e
    move-result v45

    #@166f
    if-eqz v45, :cond_43

    #@1671
    .line 6030
    move-object/from16 v0, p0

    #@1673
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@1675
    move-object/from16 v45, v0

    #@1677
    const-string/jumbo v46, "Reconfiguring proxy on connection"

    #@167a
    invoke-virtual/range {v45 .. v46}, Lcom/android/server/wifi/WifiStateMachine;->log(Ljava/lang/String;)V

    #@167d
    .line 6031
    move-object/from16 v0, p0

    #@167f
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@1681
    move-object/from16 v45, v0

    #@1683
    invoke-static/range {v45 .. v45}, Lcom/android/server/wifi/WifiStateMachine;->-get28(Lcom/android/server/wifi/WifiStateMachine;)Landroid/net/ip/IpManager;

    #@1686
    move-result-object v45

    #@1687
    .line 6032
    move-object/from16 v0, p0

    #@1689
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@168b
    move-object/from16 v46, v0

    #@168d
    invoke-static/range {v46 .. v46}, Lcom/android/server/wifi/WifiStateMachine;->-get73(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigManager;

    #@1690
    move-result-object v46

    #@1691
    move-object/from16 v0, p0

    #@1693
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@1695
    move-object/from16 v47, v0

    #@1697
    invoke-static/range {v47 .. v47}, Lcom/android/server/wifi/WifiStateMachine;->-get33(Lcom/android/server/wifi/WifiStateMachine;)I

    #@169a
    move-result v47

    #@169b
    invoke-virtual/range {v46 .. v47}, Lcom/android/server/wifi/WifiConfigManager;->getProxyProperties(I)Landroid/net/ProxyInfo;

    #@169e
    move-result-object v46

    #@169f
    .line 6031
    invoke-virtual/range {v45 .. v46}, Landroid/net/ip/IpManager;->setHttpProxy(Landroid/net/ProxyInfo;)V

    #@16a2
    .line 6035
    :cond_43
    move-object/from16 v0, p0

    #@16a4
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@16a6
    move-object/from16 v45, v0

    #@16a8
    const v46, 0x25009

    #@16ab
    move-object/from16 v0, v45

    #@16ad
    move-object/from16 v1, p1

    #@16af
    move/from16 v2, v46

    #@16b1
    invoke-static {v0, v1, v2}, Lcom/android/server/wifi/WifiStateMachine;->-wrap30(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;I)V

    #@16b4
    .line 6036
    move-object/from16 v0, p0

    #@16b6
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@16b8
    move-object/from16 v45, v0

    #@16ba
    const/16 v46, 0x0

    #@16bc
    move-object/from16 v0, v45

    #@16be
    move/from16 v1, v46

    #@16c0
    invoke-static {v0, v1, v9}, Lcom/android/server/wifi/WifiStateMachine;->-wrap13(Lcom/android/server/wifi/WifiStateMachine;ILandroid/net/wifi/WifiConfiguration;)V

    #@16c3
    .line 6038
    invoke-static {}, Lcom/android/server/wifi/WifiStateMachine;->-get0()Z

    #@16c6
    move-result v45

    #@16c7
    if-eqz v45, :cond_44

    #@16c9
    .line 6039
    move-object/from16 v0, p0

    #@16cb
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@16cd
    move-object/from16 v45, v0

    #@16cf
    new-instance v46, Ljava/lang/StringBuilder;

    #@16d1
    invoke-direct/range {v46 .. v46}, Ljava/lang/StringBuilder;-><init>()V

    #@16d4
    const-string/jumbo v47, "Success save network nid="

    #@16d7
    invoke-virtual/range {v46 .. v47}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@16da
    move-result-object v46

    #@16db
    .line 6040
    invoke-virtual/range {v30 .. v30}, Lcom/android/server/wifi/NetworkUpdateResult;->getNetworkId()I

    #@16de
    move-result v47

    #@16df
    invoke-static/range {v47 .. v47}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    #@16e2
    move-result-object v47

    #@16e3
    .line 6039
    invoke-virtual/range {v46 .. v47}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@16e6
    move-result-object v46

    #@16e7
    invoke-virtual/range {v46 .. v46}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@16ea
    move-result-object v46

    #@16eb
    invoke-virtual/range {v45 .. v46}, Lcom/android/server/wifi/WifiStateMachine;->logd(Ljava/lang/String;)V

    #@16ee
    .line 6048
    :cond_44
    move-object/from16 v0, p1

    #@16f0
    iget v0, v0, Landroid/os/Message;->what:I

    #@16f2
    move/from16 v45, v0

    #@16f4
    const v46, 0x25007

    #@16f7
    move/from16 v0, v45

    #@16f9
    move/from16 v1, v46

    #@16fb
    if-ne v0, v1, :cond_48

    #@16fd
    const/16 v42, 0x1

    #@16ff
    .line 6052
    .local v42, "user":Z
    :goto_a
    move-object/from16 v0, p0

    #@1701
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@1703
    move-object/from16 v45, v0

    #@1705
    invoke-static/range {v45 .. v45}, Lcom/android/server/wifi/WifiStateMachine;->-get73(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigManager;

    #@1708
    move-result-object v45

    #@1709
    .line 6053
    move-object/from16 v0, p1

    #@170b
    iget v0, v0, Landroid/os/Message;->sendingUid:I

    #@170d
    move/from16 v46, v0

    #@170f
    .line 6052
    invoke-virtual/range {v45 .. v46}, Lcom/android/server/wifi/WifiConfigManager;->checkConfigOverridePermission(I)Z

    #@1712
    move-result v27

    #@1713
    .line 6055
    .local v27, "persistConnect":Z
    if-eqz v42, :cond_45

    #@1715
    .line 6056
    move-object/from16 v0, p0

    #@1717
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@1719
    move-object/from16 v45, v0

    #@171b
    invoke-static/range {v45 .. v45}, Lcom/android/server/wifi/WifiStateMachine;->-get73(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigManager;

    #@171e
    move-result-object v45

    #@171f
    move-object/from16 v0, p1

    #@1721
    iget v0, v0, Landroid/os/Message;->sendingUid:I

    #@1723
    move/from16 v46, v0

    #@1725
    move-object/from16 v0, v45

    #@1727
    move/from16 v1, v46

    #@1729
    invoke-virtual {v0, v9, v1}, Lcom/android/server/wifi/WifiConfigManager;->updateLastConnectUid(Landroid/net/wifi/WifiConfiguration;I)Z

    #@172c
    .line 6057
    move-object/from16 v0, p0

    #@172e
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@1730
    move-object/from16 v45, v0

    #@1732
    invoke-static/range {v45 .. v45}, Lcom/android/server/wifi/WifiStateMachine;->-get73(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigManager;

    #@1735
    move-result-object v45

    #@1736
    invoke-virtual/range {v45 .. v45}, Lcom/android/server/wifi/WifiConfigManager;->writeKnownNetworkHistory()V

    #@1739
    .line 6060
    :cond_45
    move-object/from16 v0, p0

    #@173b
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@173d
    move-object/from16 v45, v0

    #@173f
    invoke-static/range {v45 .. v45}, Lcom/android/server/wifi/WifiStateMachine;->-get75(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConnectivityManager;

    #@1742
    move-result-object v45

    #@1743
    if-eqz v45, :cond_3

    #@1745
    .line 6061
    move-object/from16 v0, p0

    #@1747
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@1749
    move-object/from16 v45, v0

    #@174b
    invoke-static/range {v45 .. v45}, Lcom/android/server/wifi/WifiStateMachine;->-get75(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConnectivityManager;

    #@174e
    move-result-object v45

    #@174f
    .line 6062
    invoke-virtual/range {v30 .. v30}, Lcom/android/server/wifi/NetworkUpdateResult;->getNetworkId()I

    #@1752
    move-result v46

    #@1753
    .line 6061
    move-object/from16 v0, v45

    #@1755
    move/from16 v1, v46

    #@1757
    move/from16 v2, v27

    #@1759
    invoke-virtual {v0, v1, v2}, Lcom/android/server/wifi/WifiConnectivityManager;->connectToUserSelectNetwork(IZ)V

    #@175c
    goto/16 :goto_0

    #@175e
    .line 6005
    .end local v8    # "checkUid":Z
    .end local v27    # "persistConnect":Z
    .end local v30    # "result":Lcom/android/server/wifi/NetworkUpdateResult;
    .end local v42    # "user":Z
    :cond_46
    const/4 v8, 0x0

    #@175f
    goto/16 :goto_9

    #@1761
    .line 6008
    .restart local v8    # "checkUid":Z
    :cond_47
    move-object/from16 v0, p0

    #@1763
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@1765
    move-object/from16 v45, v0

    #@1767
    new-instance v46, Ljava/lang/StringBuilder;

    #@1769
    invoke-direct/range {v46 .. v46}, Ljava/lang/StringBuilder;-><init>()V

    #@176c
    const-string/jumbo v47, "Not authorized to update network  config="

    #@176f
    invoke-virtual/range {v46 .. v47}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1772
    move-result-object v46

    #@1773
    .line 6009
    iget-object v0, v9, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    #@1775
    move-object/from16 v47, v0

    #@1777
    .line 6008
    invoke-virtual/range {v46 .. v47}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@177a
    move-result-object v46

    #@177b
    .line 6010
    const-string/jumbo v47, " cnid="

    #@177e
    .line 6008
    invoke-virtual/range {v46 .. v47}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1781
    move-result-object v46

    #@1782
    .line 6010
    iget v0, v9, Landroid/net/wifi/WifiConfiguration;->networkId:I

    #@1784
    move/from16 v47, v0

    #@1786
    .line 6008
    invoke-virtual/range {v46 .. v47}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@1789
    move-result-object v46

    #@178a
    .line 6011
    const-string/jumbo v47, " uid="

    #@178d
    .line 6008
    invoke-virtual/range {v46 .. v47}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1790
    move-result-object v46

    #@1791
    .line 6011
    move-object/from16 v0, p1

    #@1793
    iget v0, v0, Landroid/os/Message;->sendingUid:I

    #@1795
    move/from16 v47, v0

    #@1797
    .line 6008
    invoke-virtual/range {v46 .. v47}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@179a
    move-result-object v46

    #@179b
    invoke-virtual/range {v46 .. v46}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@179e
    move-result-object v46

    #@179f
    invoke-static/range {v45 .. v46}, Lcom/android/server/wifi/WifiStateMachine;->-wrap29(Lcom/android/server/wifi/WifiStateMachine;Ljava/lang/String;)V

    #@17a2
    .line 6012
    move-object/from16 v0, p0

    #@17a4
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@17a6
    move-object/from16 v45, v0

    #@17a8
    const v46, 0x25008

    #@17ab
    .line 6013
    const/16 v47, 0x9

    #@17ad
    .line 6012
    move-object/from16 v0, v45

    #@17af
    move-object/from16 v1, p1

    #@17b1
    move/from16 v2, v46

    #@17b3
    move/from16 v3, v47

    #@17b5
    invoke-static {v0, v1, v2, v3}, Lcom/android/server/wifi/WifiStateMachine;->-wrap31(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;II)V

    #@17b8
    goto/16 :goto_0

    #@17ba
    .line 6048
    .restart local v30    # "result":Lcom/android/server/wifi/NetworkUpdateResult;
    :cond_48
    const/16 v42, 0x0

    #@17bc
    .restart local v42    # "user":Z
    goto/16 :goto_a

    #@17be
    .line 6065
    .end local v42    # "user":Z
    :cond_49
    move-object/from16 v0, p0

    #@17c0
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@17c2
    move-object/from16 v45, v0

    #@17c4
    const-string/jumbo v46, "Failed to save network"

    #@17c7
    invoke-virtual/range {v45 .. v46}, Lcom/android/server/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V

    #@17ca
    .line 6066
    move-object/from16 v0, p0

    #@17cc
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@17ce
    move-object/from16 v45, v0

    #@17d0
    invoke-static {}, Lcom/android/server/wifi/WifiStateMachine;->-get3()I

    #@17d3
    move-result v46

    #@17d4
    invoke-static/range {v45 .. v46}, Lcom/android/server/wifi/WifiStateMachine;->-set38(Lcom/android/server/wifi/WifiStateMachine;I)I

    #@17d7
    .line 6067
    move-object/from16 v0, p0

    #@17d9
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@17db
    move-object/from16 v45, v0

    #@17dd
    const v46, 0x25008

    #@17e0
    .line 6068
    const/16 v47, 0x0

    #@17e2
    .line 6067
    move-object/from16 v0, v45

    #@17e4
    move-object/from16 v1, p1

    #@17e6
    move/from16 v2, v46

    #@17e8
    move/from16 v3, v47

    #@17ea
    invoke-static {v0, v1, v2, v3}, Lcom/android/server/wifi/WifiStateMachine;->-wrap31(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;II)V

    #@17ed
    goto/16 :goto_0

    #@17ef
    .line 6073
    .end local v8    # "checkUid":Z
    .end local v9    # "config":Landroid/net/wifi/WifiConfiguration;
    .end local v24    # "nid":I
    .end local v30    # "result":Lcom/android/server/wifi/NetworkUpdateResult;
    :sswitch_1f
    move-object/from16 v0, p0

    #@17f1
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@17f3
    move-object/from16 v45, v0

    #@17f5
    invoke-static/range {v45 .. v45}, Lcom/android/server/wifi/WifiStateMachine;->-get73(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigManager;

    #@17f8
    move-result-object v45

    #@17f9
    .line 6074
    move-object/from16 v0, p1

    #@17fb
    iget v0, v0, Landroid/os/Message;->sendingUid:I

    #@17fd
    move/from16 v46, v0

    #@17ff
    invoke-static/range {v46 .. v46}, Landroid/os/UserHandle;->getUserId(I)I

    #@1802
    move-result v46

    #@1803
    .line 6073
    invoke-virtual/range {v45 .. v46}, Lcom/android/server/wifi/WifiConfigManager;->isCurrentUserProfile(I)Z

    #@1806
    move-result v45

    #@1807
    if-nez v45, :cond_4a

    #@1809
    .line 6075
    move-object/from16 v0, p0

    #@180b
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@180d
    move-object/from16 v45, v0

    #@180f
    new-instance v46, Ljava/lang/StringBuilder;

    #@1811
    invoke-direct/range {v46 .. v46}, Ljava/lang/StringBuilder;-><init>()V

    #@1814
    const-string/jumbo v47, "Only the current foreground user can modify networks  currentUserId="

    #@1817
    invoke-virtual/range {v46 .. v47}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@181a
    move-result-object v46

    #@181b
    .line 6076
    move-object/from16 v0, p0

    #@181d
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@181f
    move-object/from16 v47, v0

    #@1821
    invoke-static/range {v47 .. v47}, Lcom/android/server/wifi/WifiStateMachine;->-get73(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigManager;

    #@1824
    move-result-object v47

    #@1825
    invoke-virtual/range {v47 .. v47}, Lcom/android/server/wifi/WifiConfigManager;->getCurrentUserId()I

    #@1828
    move-result v47

    #@1829
    .line 6075
    invoke-virtual/range {v46 .. v47}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@182c
    move-result-object v46

    #@182d
    .line 6077
    const-string/jumbo v47, " sendingUserId="

    #@1830
    .line 6075
    invoke-virtual/range {v46 .. v47}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1833
    move-result-object v46

    #@1834
    .line 6077
    move-object/from16 v0, p1

    #@1836
    iget v0, v0, Landroid/os/Message;->sendingUid:I

    #@1838
    move/from16 v47, v0

    #@183a
    invoke-static/range {v47 .. v47}, Landroid/os/UserHandle;->getUserId(I)I

    #@183d
    move-result v47

    #@183e
    .line 6075
    invoke-virtual/range {v46 .. v47}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@1841
    move-result-object v46

    #@1842
    invoke-virtual/range {v46 .. v46}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1845
    move-result-object v46

    #@1846
    invoke-virtual/range {v45 .. v46}, Lcom/android/server/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V

    #@1849
    .line 6078
    move-object/from16 v0, p0

    #@184b
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@184d
    move-object/from16 v45, v0

    #@184f
    const v46, 0x25005

    #@1852
    .line 6079
    const/16 v47, 0x9

    #@1854
    .line 6078
    move-object/from16 v0, v45

    #@1856
    move-object/from16 v1, p1

    #@1858
    move/from16 v2, v46

    #@185a
    move/from16 v3, v47

    #@185c
    invoke-static {v0, v1, v2, v3}, Lcom/android/server/wifi/WifiStateMachine;->-wrap31(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;II)V

    #@185f
    goto/16 :goto_0

    #@1861
    .line 6085
    :cond_4a
    move-object/from16 v0, p0

    #@1863
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@1865
    move-object/from16 v45, v0

    #@1867
    invoke-static/range {v45 .. v45}, Lcom/android/server/wifi/WifiStateMachine;->-get73(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigManager;

    #@186a
    move-result-object v45

    #@186b
    move-object/from16 v0, p1

    #@186d
    iget v0, v0, Landroid/os/Message;->arg1:I

    #@186f
    move/from16 v46, v0

    #@1871
    invoke-virtual/range {v45 .. v46}, Lcom/android/server/wifi/WifiConfigManager;->getWifiConfiguration(I)Landroid/net/wifi/WifiConfiguration;

    #@1874
    move-result-object v40

    #@1875
    .line 6086
    .local v40, "toRemove":Landroid/net/wifi/WifiConfiguration;
    if-nez v40, :cond_4b

    #@1877
    .line 6087
    move-object/from16 v0, p0

    #@1879
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@187b
    move-object/from16 v45, v0

    #@187d
    const/16 v46, 0x0

    #@187f
    invoke-static/range {v45 .. v46}, Lcom/android/server/wifi/WifiStateMachine;->-set2(Lcom/android/server/wifi/WifiStateMachine;Landroid/net/wifi/WifiConfiguration;)Landroid/net/wifi/WifiConfiguration;

    #@1882
    .line 6092
    :goto_b
    move-object/from16 v0, p1

    #@1884
    iget v0, v0, Landroid/os/Message;->arg1:I

    #@1886
    move/from16 v21, v0

    #@1888
    .line 6094
    .restart local v21    # "netId":I
    move-object/from16 v0, p0

    #@188a
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@188c
    move-object/from16 v45, v0

    #@188e
    invoke-static/range {v45 .. v45}, Lcom/android/server/wifi/WifiStateMachine;->-get73(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigManager;

    #@1891
    move-result-object v45

    #@1892
    move-object/from16 v0, p1

    #@1894
    iget v0, v0, Landroid/os/Message;->sendingUid:I

    #@1896
    move/from16 v46, v0

    #@1898
    .line 6095
    const/16 v47, 0x0

    #@189a
    .line 6094
    move-object/from16 v0, v45

    #@189c
    move/from16 v1, v46

    #@189e
    move/from16 v2, v21

    #@18a0
    move/from16 v3, v47

    #@18a2
    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/wifi/WifiConfigManager;->canModifyNetwork(IIZ)Z

    #@18a5
    move-result v45

    #@18a6
    if-nez v45, :cond_4c

    #@18a8
    .line 6096
    move-object/from16 v0, p0

    #@18aa
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@18ac
    move-object/from16 v45, v0

    #@18ae
    new-instance v46, Ljava/lang/StringBuilder;

    #@18b0
    invoke-direct/range {v46 .. v46}, Ljava/lang/StringBuilder;-><init>()V

    #@18b3
    const-string/jumbo v47, "Not authorized to forget network  cnid="

    #@18b6
    invoke-virtual/range {v46 .. v47}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@18b9
    move-result-object v46

    #@18ba
    move-object/from16 v0, v46

    #@18bc
    move/from16 v1, v21

    #@18be
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@18c1
    move-result-object v46

    #@18c2
    .line 6098
    const-string/jumbo v47, " uid="

    #@18c5
    .line 6096
    invoke-virtual/range {v46 .. v47}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@18c8
    move-result-object v46

    #@18c9
    .line 6098
    move-object/from16 v0, p1

    #@18cb
    iget v0, v0, Landroid/os/Message;->sendingUid:I

    #@18cd
    move/from16 v47, v0

    #@18cf
    .line 6096
    invoke-virtual/range {v46 .. v47}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@18d2
    move-result-object v46

    #@18d3
    invoke-virtual/range {v46 .. v46}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@18d6
    move-result-object v46

    #@18d7
    invoke-static/range {v45 .. v46}, Lcom/android/server/wifi/WifiStateMachine;->-wrap29(Lcom/android/server/wifi/WifiStateMachine;Ljava/lang/String;)V

    #@18da
    .line 6099
    move-object/from16 v0, p0

    #@18dc
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@18de
    move-object/from16 v45, v0

    #@18e0
    const v46, 0x25005

    #@18e3
    .line 6100
    const/16 v47, 0x9

    #@18e5
    .line 6099
    move-object/from16 v0, v45

    #@18e7
    move-object/from16 v1, p1

    #@18e9
    move/from16 v2, v46

    #@18eb
    move/from16 v3, v47

    #@18ed
    invoke-static {v0, v1, v2, v3}, Lcom/android/server/wifi/WifiStateMachine;->-wrap31(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;II)V

    #@18f0
    goto/16 :goto_0

    #@18f2
    .line 6089
    .end local v21    # "netId":I
    :cond_4b
    move-object/from16 v0, p0

    #@18f4
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@18f6
    move-object/from16 v45, v0

    #@18f8
    new-instance v46, Landroid/net/wifi/WifiConfiguration;

    #@18fa
    move-object/from16 v0, v46

    #@18fc
    move-object/from16 v1, v40

    #@18fe
    invoke-direct {v0, v1}, Landroid/net/wifi/WifiConfiguration;-><init>(Landroid/net/wifi/WifiConfiguration;)V

    #@1901
    invoke-static/range {v45 .. v46}, Lcom/android/server/wifi/WifiStateMachine;->-set2(Lcom/android/server/wifi/WifiStateMachine;Landroid/net/wifi/WifiConfiguration;)Landroid/net/wifi/WifiConfiguration;

    #@1904
    goto/16 :goto_b

    #@1906
    .line 6104
    .restart local v21    # "netId":I
    :cond_4c
    move-object/from16 v0, p0

    #@1908
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@190a
    move-object/from16 v45, v0

    #@190c
    invoke-static/range {v45 .. v45}, Lcom/android/server/wifi/WifiStateMachine;->-get73(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigManager;

    #@190f
    move-result-object v45

    #@1910
    move-object/from16 v0, p1

    #@1912
    iget v0, v0, Landroid/os/Message;->arg1:I

    #@1914
    move/from16 v46, v0

    #@1916
    invoke-virtual/range {v45 .. v46}, Lcom/android/server/wifi/WifiConfigManager;->forgetNetwork(I)Z

    #@1919
    move-result v45

    #@191a
    if-eqz v45, :cond_4d

    #@191c
    .line 6105
    move-object/from16 v0, p0

    #@191e
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@1920
    move-object/from16 v45, v0

    #@1922
    const v46, 0x25006

    #@1925
    move-object/from16 v0, v45

    #@1927
    move-object/from16 v1, p1

    #@1929
    move/from16 v2, v46

    #@192b
    invoke-static {v0, v1, v2}, Lcom/android/server/wifi/WifiStateMachine;->-wrap30(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;I)V

    #@192e
    .line 6106
    move-object/from16 v0, p0

    #@1930
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@1932
    move-object/from16 v46, v0

    #@1934
    .line 6107
    move-object/from16 v0, p1

    #@1936
    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@1938
    move-object/from16 v45, v0

    #@193a
    check-cast v45, Landroid/net/wifi/WifiConfiguration;

    #@193c
    .line 6106
    const/16 v47, 0x1

    #@193e
    move-object/from16 v0, v46

    #@1940
    move/from16 v1, v47

    #@1942
    move-object/from16 v2, v45

    #@1944
    invoke-static {v0, v1, v2}, Lcom/android/server/wifi/WifiStateMachine;->-wrap13(Lcom/android/server/wifi/WifiStateMachine;ILandroid/net/wifi/WifiConfiguration;)V

    #@1947
    goto/16 :goto_0

    #@1949
    .line 6109
    :cond_4d
    move-object/from16 v0, p0

    #@194b
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@194d
    move-object/from16 v45, v0

    #@194f
    const-string/jumbo v46, "Failed to forget network"

    #@1952
    invoke-virtual/range {v45 .. v46}, Lcom/android/server/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V

    #@1955
    .line 6110
    move-object/from16 v0, p0

    #@1957
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@1959
    move-object/from16 v45, v0

    #@195b
    const v46, 0x25005

    #@195e
    .line 6111
    const/16 v47, 0x0

    #@1960
    .line 6110
    move-object/from16 v0, v45

    #@1962
    move-object/from16 v1, p1

    #@1964
    move/from16 v2, v46

    #@1966
    move/from16 v3, v47

    #@1968
    invoke-static {v0, v1, v2, v3}, Lcom/android/server/wifi/WifiStateMachine;->-wrap31(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;II)V

    #@196b
    goto/16 :goto_0

    #@196d
    .line 6115
    .end local v21    # "netId":I
    .end local v40    # "toRemove":Landroid/net/wifi/WifiConfiguration;
    :sswitch_20
    move-object/from16 v0, p1

    #@196f
    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@1971
    move-object/from16 v43, v0

    #@1973
    check-cast v43, Landroid/net/wifi/WpsInfo;

    #@1975
    .line 6117
    .local v43, "wpsInfo":Landroid/net/wifi/WpsInfo;
    move-object/from16 v0, v43

    #@1977
    iget v0, v0, Landroid/net/wifi/WpsInfo;->setup:I

    #@1979
    move/from16 v45, v0

    #@197b
    packed-switch v45, :pswitch_data_0

    #@197e
    .line 6128
    new-instance v44, Landroid/net/wifi/WpsResult;

    #@1980
    sget-object v45, Landroid/net/wifi/WpsResult$Status;->FAILURE:Landroid/net/wifi/WpsResult$Status;

    #@1982
    invoke-direct/range {v44 .. v45}, Landroid/net/wifi/WpsResult;-><init>(Landroid/net/wifi/WpsResult$Status;)V

    #@1985
    .line 6129
    .local v44, "wpsResult":Landroid/net/wifi/WpsResult;
    move-object/from16 v0, p0

    #@1987
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@1989
    move-object/from16 v45, v0

    #@198b
    const-string/jumbo v46, "Invalid setup for WPS"

    #@198e
    invoke-virtual/range {v45 .. v46}, Lcom/android/server/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V

    #@1991
    .line 6132
    :goto_c
    move-object/from16 v0, p0

    #@1993
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@1995
    move-object/from16 v45, v0

    #@1997
    invoke-static/range {v45 .. v45}, Lcom/android/server/wifi/WifiStateMachine;->-get73(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigManager;

    #@199a
    move-result-object v45

    #@199b
    .line 6133
    const/16 v46, -0x1

    #@199d
    .line 6132
    invoke-virtual/range {v45 .. v46}, Lcom/android/server/wifi/WifiConfigManager;->setAndEnableLastSelectedConfiguration(I)V

    #@19a0
    .line 6134
    move-object/from16 v0, v44

    #@19a2
    iget-object v0, v0, Landroid/net/wifi/WpsResult;->status:Landroid/net/wifi/WpsResult$Status;

    #@19a4
    move-object/from16 v45, v0

    #@19a6
    sget-object v46, Landroid/net/wifi/WpsResult$Status;->SUCCESS:Landroid/net/wifi/WpsResult$Status;

    #@19a8
    move-object/from16 v0, v45

    #@19aa
    move-object/from16 v1, v46

    #@19ac
    if-ne v0, v1, :cond_4e

    #@19ae
    .line 6135
    move-object/from16 v0, p0

    #@19b0
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@19b2
    move-object/from16 v45, v0

    #@19b4
    const v46, 0x2500b

    #@19b7
    move-object/from16 v0, v45

    #@19b9
    move-object/from16 v1, p1

    #@19bb
    move/from16 v2, v46

    #@19bd
    move-object/from16 v3, v44

    #@19bf
    invoke-static {v0, v1, v2, v3}, Lcom/android/server/wifi/WifiStateMachine;->-wrap32(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;ILjava/lang/Object;)V

    #@19c2
    .line 6136
    move-object/from16 v0, p0

    #@19c4
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@19c6
    move-object/from16 v45, v0

    #@19c8
    move-object/from16 v0, p0

    #@19ca
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@19cc
    move-object/from16 v46, v0

    #@19ce
    invoke-static/range {v46 .. v46}, Lcom/android/server/wifi/WifiStateMachine;->-get88(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/internal/util/State;

    #@19d1
    move-result-object v46

    #@19d2
    invoke-static/range {v45 .. v46}, Lcom/android/server/wifi/WifiStateMachine;->-wrap45(Lcom/android/server/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V

    #@19d5
    goto/16 :goto_0

    #@19d7
    .line 6119
    .end local v44    # "wpsResult":Landroid/net/wifi/WpsResult;
    :pswitch_0
    move-object/from16 v0, p0

    #@19d9
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@19db
    move-object/from16 v45, v0

    #@19dd
    invoke-static/range {v45 .. v45}, Lcom/android/server/wifi/WifiStateMachine;->-get73(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigManager;

    #@19e0
    move-result-object v45

    #@19e1
    move-object/from16 v0, v45

    #@19e3
    move-object/from16 v1, v43

    #@19e5
    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiConfigManager;->startWpsPbc(Landroid/net/wifi/WpsInfo;)Landroid/net/wifi/WpsResult;

    #@19e8
    move-result-object v44

    #@19e9
    .restart local v44    # "wpsResult":Landroid/net/wifi/WpsResult;
    goto :goto_c

    #@19ea
    .line 6122
    .end local v44    # "wpsResult":Landroid/net/wifi/WpsResult;
    :pswitch_1
    move-object/from16 v0, p0

    #@19ec
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@19ee
    move-object/from16 v45, v0

    #@19f0
    invoke-static/range {v45 .. v45}, Lcom/android/server/wifi/WifiStateMachine;->-get73(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigManager;

    #@19f3
    move-result-object v45

    #@19f4
    move-object/from16 v0, v45

    #@19f6
    move-object/from16 v1, v43

    #@19f8
    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiConfigManager;->startWpsWithPinFromAccessPoint(Landroid/net/wifi/WpsInfo;)Landroid/net/wifi/WpsResult;

    #@19fb
    move-result-object v44

    #@19fc
    .restart local v44    # "wpsResult":Landroid/net/wifi/WpsResult;
    goto :goto_c

    #@19fd
    .line 6125
    .end local v44    # "wpsResult":Landroid/net/wifi/WpsResult;
    :pswitch_2
    move-object/from16 v0, p0

    #@19ff
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@1a01
    move-object/from16 v45, v0

    #@1a03
    invoke-static/range {v45 .. v45}, Lcom/android/server/wifi/WifiStateMachine;->-get73(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigManager;

    #@1a06
    move-result-object v45

    #@1a07
    move-object/from16 v0, v45

    #@1a09
    move-object/from16 v1, v43

    #@1a0b
    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiConfigManager;->startWpsWithPinFromDevice(Landroid/net/wifi/WpsInfo;)Landroid/net/wifi/WpsResult;

    #@1a0e
    move-result-object v44

    #@1a0f
    .restart local v44    # "wpsResult":Landroid/net/wifi/WpsResult;
    goto :goto_c

    #@1a10
    .line 6138
    :cond_4e
    move-object/from16 v0, p0

    #@1a12
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@1a14
    move-object/from16 v45, v0

    #@1a16
    new-instance v46, Ljava/lang/StringBuilder;

    #@1a18
    invoke-direct/range {v46 .. v46}, Ljava/lang/StringBuilder;-><init>()V

    #@1a1b
    const-string/jumbo v47, "Failed to start WPS with config "

    #@1a1e
    invoke-virtual/range {v46 .. v47}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1a21
    move-result-object v46

    #@1a22
    invoke-virtual/range {v43 .. v43}, Landroid/net/wifi/WpsInfo;->toString()Ljava/lang/String;

    #@1a25
    move-result-object v47

    #@1a26
    invoke-virtual/range {v46 .. v47}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1a29
    move-result-object v46

    #@1a2a
    invoke-virtual/range {v46 .. v46}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1a2d
    move-result-object v46

    #@1a2e
    invoke-virtual/range {v45 .. v46}, Lcom/android/server/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V

    #@1a31
    .line 6139
    move-object/from16 v0, p0

    #@1a33
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@1a35
    move-object/from16 v45, v0

    #@1a37
    const v46, 0x2500c

    #@1a3a
    const/16 v47, 0x0

    #@1a3c
    move-object/from16 v0, v45

    #@1a3e
    move-object/from16 v1, p1

    #@1a40
    move/from16 v2, v46

    #@1a42
    move/from16 v3, v47

    #@1a44
    invoke-static {v0, v1, v2, v3}, Lcom/android/server/wifi/WifiStateMachine;->-wrap31(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;II)V

    #@1a47
    goto/16 :goto_0

    #@1a49
    .line 6145
    .end local v43    # "wpsInfo":Landroid/net/wifi/WpsInfo;
    .end local v44    # "wpsResult":Landroid/net/wifi/WpsResult;
    :sswitch_21
    move-object/from16 v0, p1

    #@1a4b
    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@1a4d
    move-object/from16 v33, v0

    #@1a4f
    check-cast v33, Ljava/lang/String;

    #@1a51
    .line 6146
    .local v33, "someBssid":Ljava/lang/String;
    if-eqz v33, :cond_4f

    #@1a53
    .line 6149
    move-object/from16 v0, p0

    #@1a55
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@1a57
    move-object/from16 v45, v0

    #@1a59
    invoke-static/range {v45 .. v45}, Lcom/android/server/wifi/WifiStateMachine;->-get73(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigManager;

    #@1a5c
    move-result-object v45

    #@1a5d
    move-object/from16 v0, p0

    #@1a5f
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@1a61
    move-object/from16 v46, v0

    #@1a63
    invoke-static/range {v46 .. v46}, Lcom/android/server/wifi/WifiStateMachine;->-get65(Lcom/android/server/wifi/WifiStateMachine;)I

    #@1a66
    move-result v46

    #@1a67
    invoke-virtual/range {v45 .. v46}, Lcom/android/server/wifi/WifiConfigManager;->getWifiConfiguration(I)Landroid/net/wifi/WifiConfiguration;

    #@1a6a
    move-result-object v34

    #@1a6b
    .line 6151
    .local v34, "someConf":Landroid/net/wifi/WifiConfiguration;
    move-object/from16 v0, p0

    #@1a6d
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@1a6f
    move-object/from16 v45, v0

    #@1a71
    invoke-static/range {v45 .. v45}, Lcom/android/server/wifi/WifiStateMachine;->-get73(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigManager;

    #@1a74
    move-result-object v45

    #@1a75
    move-object/from16 v0, v45

    #@1a77
    move-object/from16 v1, v34

    #@1a79
    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiConfigManager;->getScanDetailCache(Landroid/net/wifi/WifiConfiguration;)Lcom/android/server/wifi/ScanDetailCache;

    #@1a7c
    move-result-object v32

    #@1a7d
    .line 6153
    .local v32, "scanDetailCache":Lcom/android/server/wifi/ScanDetailCache;
    if-eqz v32, :cond_4f

    #@1a7f
    .line 6154
    move-object/from16 v0, p0

    #@1a81
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@1a83
    move-object/from16 v45, v0

    #@1a85
    invoke-static/range {v45 .. v45}, Lcom/android/server/wifi/WifiStateMachine;->-get81(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiMetrics;

    #@1a88
    move-result-object v45

    #@1a89
    invoke-virtual/range {v32 .. v33}, Lcom/android/server/wifi/ScanDetailCache;->getScanDetail(Ljava/lang/String;)Lcom/android/server/wifi/ScanDetail;

    #@1a8c
    move-result-object v46

    #@1a8d
    invoke-virtual/range {v45 .. v46}, Lcom/android/server/wifi/WifiMetrics;->setConnectionScanDetail(Lcom/android/server/wifi/ScanDetail;)V

    #@1a90
    .line 6158
    .end local v32    # "scanDetailCache":Lcom/android/server/wifi/ScanDetailCache;
    .end local v34    # "someConf":Landroid/net/wifi/WifiConfiguration;
    :cond_4f
    const/16 v45, 0x0

    #@1a92
    return v45

    #@1a93
    .line 6160
    .end local v33    # "someBssid":Ljava/lang/String;
    :sswitch_22
    invoke-static {}, Lcom/android/server/wifi/WifiStateMachine;->-get0()Z

    #@1a96
    move-result v45

    #@1a97
    if-eqz v45, :cond_50

    #@1a99
    move-object/from16 v0, p0

    #@1a9b
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@1a9d
    move-object/from16 v45, v0

    #@1a9f
    const-string/jumbo v46, "Network connection established"

    #@1aa2
    invoke-virtual/range {v45 .. v46}, Lcom/android/server/wifi/WifiStateMachine;->log(Ljava/lang/String;)V

    #@1aa5
    .line 6161
    :cond_50
    move-object/from16 v0, p0

    #@1aa7
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@1aa9
    move-object/from16 v45, v0

    #@1aab
    move-object/from16 v0, p1

    #@1aad
    iget v0, v0, Landroid/os/Message;->arg1:I

    #@1aaf
    move/from16 v46, v0

    #@1ab1
    invoke-static/range {v45 .. v46}, Lcom/android/server/wifi/WifiStateMachine;->-set17(Lcom/android/server/wifi/WifiStateMachine;I)I

    #@1ab4
    .line 6162
    move-object/from16 v0, p0

    #@1ab6
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@1ab8
    move-object/from16 v46, v0

    #@1aba
    move-object/from16 v0, p1

    #@1abc
    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@1abe
    move-object/from16 v45, v0

    #@1ac0
    check-cast v45, Ljava/lang/String;

    #@1ac2
    move-object/from16 v0, v46

    #@1ac4
    move-object/from16 v1, v45

    #@1ac6
    invoke-static {v0, v1}, Lcom/android/server/wifi/WifiStateMachine;->-set14(Lcom/android/server/wifi/WifiStateMachine;Ljava/lang/String;)Ljava/lang/String;

    #@1ac9
    .line 6164
    move-object/from16 v0, p0

    #@1acb
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@1acd
    move-object/from16 v45, v0

    #@1acf
    invoke-static/range {v45 .. v45}, Lcom/android/server/wifi/WifiStateMachine;->-get76(Lcom/android/server/wifi/WifiStateMachine;)Landroid/net/wifi/WifiInfo;

    #@1ad2
    move-result-object v45

    #@1ad3
    move-object/from16 v0, p0

    #@1ad5
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@1ad7
    move-object/from16 v46, v0

    #@1ad9
    invoke-static/range {v46 .. v46}, Lcom/android/server/wifi/WifiStateMachine;->-get30(Lcom/android/server/wifi/WifiStateMachine;)Ljava/lang/String;

    #@1adc
    move-result-object v46

    #@1add
    invoke-virtual/range {v45 .. v46}, Landroid/net/wifi/WifiInfo;->setBSSID(Ljava/lang/String;)V

    #@1ae0
    .line 6165
    move-object/from16 v0, p0

    #@1ae2
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@1ae4
    move-object/from16 v45, v0

    #@1ae6
    invoke-static/range {v45 .. v45}, Lcom/android/server/wifi/WifiStateMachine;->-get76(Lcom/android/server/wifi/WifiStateMachine;)Landroid/net/wifi/WifiInfo;

    #@1ae9
    move-result-object v45

    #@1aea
    move-object/from16 v0, p0

    #@1aec
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@1aee
    move-object/from16 v46, v0

    #@1af0
    invoke-static/range {v46 .. v46}, Lcom/android/server/wifi/WifiStateMachine;->-get33(Lcom/android/server/wifi/WifiStateMachine;)I

    #@1af3
    move-result v46

    #@1af4
    invoke-virtual/range {v45 .. v46}, Landroid/net/wifi/WifiInfo;->setNetworkId(I)V

    #@1af7
    .line 6166
    move-object/from16 v0, p0

    #@1af9
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@1afb
    move-object/from16 v45, v0

    #@1afd
    invoke-static/range {v45 .. v45}, Lcom/android/server/wifi/WifiStateMachine;->-get86(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiQualifiedNetworkSelector;

    #@1b00
    move-result-object v45

    #@1b01
    .line 6167
    move-object/from16 v0, p0

    #@1b03
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@1b05
    move-object/from16 v46, v0

    #@1b07
    invoke-static/range {v46 .. v46}, Lcom/android/server/wifi/WifiStateMachine;->-get30(Lcom/android/server/wifi/WifiStateMachine;)Ljava/lang/String;

    #@1b0a
    move-result-object v46

    #@1b0b
    const/16 v47, 0x1

    #@1b0d
    .line 6166
    invoke-virtual/range {v45 .. v47}, Lcom/android/server/wifi/WifiQualifiedNetworkSelector;->enableBssidForQualityNetworkSelection(Ljava/lang/String;Z)Z

    #@1b10
    .line 6168
    move-object/from16 v0, p0

    #@1b12
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@1b14
    move-object/from16 v45, v0

    #@1b16
    move-object/from16 v0, p0

    #@1b18
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@1b1a
    move-object/from16 v46, v0

    #@1b1c
    invoke-static/range {v46 .. v46}, Lcom/android/server/wifi/WifiStateMachine;->-get30(Lcom/android/server/wifi/WifiStateMachine;)Ljava/lang/String;

    #@1b1f
    move-result-object v46

    #@1b20
    invoke-static/range {v45 .. v46}, Lcom/android/server/wifi/WifiStateMachine;->-wrap35(Lcom/android/server/wifi/WifiStateMachine;Ljava/lang/String;)V

    #@1b23
    .line 6169
    move-object/from16 v0, p0

    #@1b25
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@1b27
    move-object/from16 v45, v0

    #@1b29
    move-object/from16 v0, p0

    #@1b2b
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@1b2d
    move-object/from16 v46, v0

    #@1b2f
    invoke-static/range {v46 .. v46}, Lcom/android/server/wifi/WifiStateMachine;->-get41(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/internal/util/State;

    #@1b32
    move-result-object v46

    #@1b33
    invoke-static/range {v45 .. v46}, Lcom/android/server/wifi/WifiStateMachine;->-wrap45(Lcom/android/server/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V

    #@1b36
    goto/16 :goto_0

    #@1b38
    .line 6181
    :sswitch_23
    invoke-static {}, Lcom/android/server/wifi/WifiStateMachine;->-get0()Z

    #@1b3b
    move-result v45

    #@1b3c
    if-eqz v45, :cond_51

    #@1b3e
    move-object/from16 v0, p0

    #@1b40
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@1b42
    move-object/from16 v45, v0

    #@1b44
    const-string/jumbo v46, "ConnectModeState: Network connection lost "

    #@1b47
    invoke-virtual/range {v45 .. v46}, Lcom/android/server/wifi/WifiStateMachine;->log(Ljava/lang/String;)V

    #@1b4a
    .line 6182
    :cond_51
    move-object/from16 v0, p0

    #@1b4c
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@1b4e
    move-object/from16 v45, v0

    #@1b50
    invoke-static/range {v45 .. v45}, Lcom/android/server/wifi/WifiStateMachine;->-wrap23(Lcom/android/server/wifi/WifiStateMachine;)V

    #@1b53
    .line 6183
    move-object/from16 v0, p0

    #@1b55
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@1b57
    move-object/from16 v45, v0

    #@1b59
    move-object/from16 v0, p0

    #@1b5b
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@1b5d
    move-object/from16 v46, v0

    #@1b5f
    invoke-static/range {v46 .. v46}, Lcom/android/server/wifi/WifiStateMachine;->-get16(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/internal/util/State;

    #@1b62
    move-result-object v46

    #@1b63
    invoke-static/range {v45 .. v46}, Lcom/android/server/wifi/WifiStateMachine;->-wrap45(Lcom/android/server/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V

    #@1b66
    goto/16 :goto_0

    #@1b68
    .line 6186
    :sswitch_24
    move-object/from16 v0, p0

    #@1b6a
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@1b6c
    move-object/from16 v45, v0

    #@1b6e
    invoke-static/range {v45 .. v45}, Lcom/android/server/wifi/WifiStateMachine;->-get73(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigManager;

    #@1b71
    move-result-object v46

    #@1b72
    move-object/from16 v0, p1

    #@1b74
    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@1b76
    move-object/from16 v45, v0

    #@1b78
    check-cast v45, Ljava/lang/String;

    #@1b7a
    move-object/from16 v0, v46

    #@1b7c
    move-object/from16 v1, v45

    #@1b7e
    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiConfigManager;->addPasspointManagementObject(Ljava/lang/String;)I

    #@1b81
    move-result v29

    #@1b82
    .line 6187
    .restart local v29    # "res":I
    move-object/from16 v0, p0

    #@1b84
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@1b86
    move-object/from16 v45, v0

    #@1b88
    move-object/from16 v0, p1

    #@1b8a
    iget v0, v0, Landroid/os/Message;->what:I

    #@1b8c
    move/from16 v46, v0

    #@1b8e
    move-object/from16 v0, v45

    #@1b90
    move-object/from16 v1, p1

    #@1b92
    move/from16 v2, v46

    #@1b94
    move/from16 v3, v29

    #@1b96
    invoke-static {v0, v1, v2, v3}, Lcom/android/server/wifi/WifiStateMachine;->-wrap31(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;II)V

    #@1b99
    goto/16 :goto_0

    #@1b9b
    .line 6190
    .end local v29    # "res":I
    :sswitch_25
    move-object/from16 v0, p1

    #@1b9d
    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@1b9f
    move-object/from16 v45, v0

    #@1ba1
    if-eqz v45, :cond_52

    #@1ba3
    .line 6191
    move-object/from16 v0, p1

    #@1ba5
    iget-object v7, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@1ba7
    check-cast v7, Landroid/os/Bundle;

    #@1ba9
    .line 6193
    .local v7, "bundle":Landroid/os/Bundle;
    const-string/jumbo v45, "MOS"

    #@1bac
    move-object/from16 v0, v45

    #@1bae
    invoke-virtual {v7, v0}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    #@1bb1
    move-result-object v20

    #@1bb2
    .line 6194
    .local v20, "mos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/net/wifi/PasspointManagementObjectDefinition;>;"
    move-object/from16 v0, p0

    #@1bb4
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@1bb6
    move-object/from16 v45, v0

    #@1bb8
    invoke-static/range {v45 .. v45}, Lcom/android/server/wifi/WifiStateMachine;->-get73(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigManager;

    #@1bbb
    move-result-object v45

    #@1bbc
    const-string/jumbo v46, "FQDN"

    #@1bbf
    move-object/from16 v0, v46

    #@1bc1
    invoke-virtual {v7, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    #@1bc4
    move-result-object v46

    #@1bc5
    move-object/from16 v0, v45

    #@1bc7
    move-object/from16 v1, v46

    #@1bc9
    move-object/from16 v2, v20

    #@1bcb
    invoke-virtual {v0, v1, v2}, Lcom/android/server/wifi/WifiConfigManager;->modifyPasspointMo(Ljava/lang/String;Ljava/util/List;)I

    #@1bce
    move-result v29

    #@1bcf
    .line 6198
    .end local v7    # "bundle":Landroid/os/Bundle;
    .end local v20    # "mos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/net/wifi/PasspointManagementObjectDefinition;>;"
    .restart local v29    # "res":I
    :goto_d
    move-object/from16 v0, p0

    #@1bd1
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@1bd3
    move-object/from16 v45, v0

    #@1bd5
    move-object/from16 v0, p1

    #@1bd7
    iget v0, v0, Landroid/os/Message;->what:I

    #@1bd9
    move/from16 v46, v0

    #@1bdb
    move-object/from16 v0, v45

    #@1bdd
    move-object/from16 v1, p1

    #@1bdf
    move/from16 v2, v46

    #@1be1
    move/from16 v3, v29

    #@1be3
    invoke-static {v0, v1, v2, v3}, Lcom/android/server/wifi/WifiStateMachine;->-wrap31(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;II)V

    #@1be6
    goto/16 :goto_0

    #@1be8
    .line 6196
    .end local v29    # "res":I
    :cond_52
    const/16 v29, 0x0

    #@1bea
    .restart local v29    # "res":I
    goto :goto_d

    #@1beb
    .line 6202
    .end local v29    # "res":I
    :sswitch_26
    move-object/from16 v0, p0

    #@1bed
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@1bef
    move-object/from16 v45, v0

    #@1bf1
    invoke-static/range {v45 .. v45}, Lcom/android/server/wifi/WifiStateMachine;->-get73(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigManager;

    #@1bf4
    move-result-object v46

    #@1bf5
    .line 6203
    move-object/from16 v0, p1

    #@1bf7
    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@1bf9
    move-object/from16 v45, v0

    #@1bfb
    check-cast v45, Landroid/os/Bundle;

    #@1bfd
    const-string/jumbo v47, "BSSID"

    #@1c00
    move-object/from16 v0, v45

    #@1c02
    move-object/from16 v1, v47

    #@1c04
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    #@1c07
    move-result-wide v48

    #@1c08
    .line 6204
    move-object/from16 v0, p1

    #@1c0a
    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@1c0c
    move-object/from16 v45, v0

    #@1c0e
    check-cast v45, Landroid/os/Bundle;

    #@1c10
    const-string/jumbo v47, "FILENAME"

    #@1c13
    move-object/from16 v0, v45

    #@1c15
    move-object/from16 v1, v47

    #@1c17
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    #@1c1a
    move-result-object v45

    #@1c1b
    .line 6202
    move-object/from16 v0, v46

    #@1c1d
    move-wide/from16 v1, v48

    #@1c1f
    move-object/from16 v3, v45

    #@1c21
    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/wifi/WifiConfigManager;->queryPasspointIcon(JLjava/lang/String;)Z

    #@1c24
    move-result v45

    #@1c25
    if-eqz v45, :cond_53

    #@1c27
    .line 6205
    const/16 v29, 0x1

    #@1c29
    .line 6209
    .restart local v29    # "res":I
    :goto_e
    move-object/from16 v0, p0

    #@1c2b
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@1c2d
    move-object/from16 v45, v0

    #@1c2f
    move-object/from16 v0, p1

    #@1c31
    iget v0, v0, Landroid/os/Message;->what:I

    #@1c33
    move/from16 v46, v0

    #@1c35
    move-object/from16 v0, v45

    #@1c37
    move-object/from16 v1, p1

    #@1c39
    move/from16 v2, v46

    #@1c3b
    move/from16 v3, v29

    #@1c3d
    invoke-static {v0, v1, v2, v3}, Lcom/android/server/wifi/WifiStateMachine;->-wrap31(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;II)V

    #@1c40
    goto/16 :goto_0

    #@1c42
    .line 6207
    .end local v29    # "res":I
    :cond_53
    const/16 v29, 0x0

    #@1c44
    .restart local v29    # "res":I
    goto :goto_e

    #@1c45
    .line 6212
    .end local v29    # "res":I
    :sswitch_27
    move-object/from16 v0, p0

    #@1c47
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@1c49
    move-object/from16 v45, v0

    #@1c4b
    invoke-static/range {v45 .. v45}, Lcom/android/server/wifi/WifiStateMachine;->-get73(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigManager;

    #@1c4e
    move-result-object v46

    #@1c4f
    move-object/from16 v0, p1

    #@1c51
    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@1c53
    move-object/from16 v45, v0

    #@1c55
    check-cast v45, Ljava/lang/String;

    #@1c57
    move-object/from16 v0, v46

    #@1c59
    move-object/from16 v1, v45

    #@1c5b
    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiConfigManager;->matchProviderWithCurrentNetwork(Ljava/lang/String;)I

    #@1c5e
    move-result v29

    #@1c5f
    .line 6213
    .restart local v29    # "res":I
    move-object/from16 v0, p0

    #@1c61
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@1c63
    move-object/from16 v45, v0

    #@1c65
    move-object/from16 v0, p1

    #@1c67
    iget v0, v0, Landroid/os/Message;->what:I

    #@1c69
    move/from16 v46, v0

    #@1c6b
    move-object/from16 v0, v45

    #@1c6d
    move-object/from16 v1, p1

    #@1c6f
    move/from16 v2, v46

    #@1c71
    move/from16 v3, v29

    #@1c73
    invoke-static {v0, v1, v2, v3}, Lcom/android/server/wifi/WifiStateMachine;->-wrap31(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;II)V

    #@1c76
    goto/16 :goto_0

    #@1c78
    .line 5310
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
        0x20049 -> :sswitch_14
        0x2004a -> :sswitch_15
        0x2004b -> :sswitch_16
        0x20061 -> :sswitch_1a
        0x20062 -> :sswitch_b
        0x20063 -> :sswitch_13
        0x20066 -> :sswitch_24
        0x20067 -> :sswitch_25
        0x20068 -> :sswitch_26
        0x20069 -> :sswitch_27
        0x2008e -> :sswitch_17
        0x2008f -> :sswitch_19
        0x20091 -> :sswitch_18
        0x20092 -> :sswitch_1e
        0x20093 -> :sswitch_21
        0x20098 -> :sswitch_1b
        0x2300c -> :sswitch_5
        0x24003 -> :sswitch_22
        0x24004 -> :sswitch_23
        0x24006 -> :sswitch_4
        0x24007 -> :sswitch_1
        0x2400d -> :sswitch_2
        0x2400e -> :sswitch_3
        0x2400f -> :sswitch_10
        0x24010 -> :sswitch_11
        0x2402b -> :sswitch_0
        0x25001 -> :sswitch_1c
        0x25004 -> :sswitch_1f
        0x25007 -> :sswitch_1d
        0x2500a -> :sswitch_20
        0x25011 -> :sswitch_a
    .end sparse-switch

    #@1d1a
    .line 6117
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
