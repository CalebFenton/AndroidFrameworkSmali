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
    .line 6986
    iput-object p1, p0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@2
    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    #@5
    return-void
.end method


# virtual methods
.method public enter()V
    .locals 1

    #@0
    .prologue
    .line 6990
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@2
    invoke-virtual {v0}, Lcom/android/server/wifi/WifiStateMachine;->connectScanningService()V

    #@5
    .line 6989
    return-void
.end method

.method public processMessage(Landroid/os/Message;)Z
    .locals 52
    .param p1, "message"    # Landroid/os/Message;

    #@0
    .prologue
    .line 7002
    move-object/from16 v0, p0

    #@2
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@4
    move-object/from16 v47, v0

    #@6
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->getClass()Ljava/lang/Class;

    #@9
    move-result-object v48

    #@a
    invoke-virtual/range {v48 .. v48}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    #@d
    move-result-object v48

    #@e
    move-object/from16 v0, v47

    #@10
    move-object/from16 v1, p1

    #@12
    move-object/from16 v2, v48

    #@14
    invoke-static {v0, v1, v2}, Lcom/android/server/wifi/WifiStateMachine;->-wrap33(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;Ljava/lang/String;)V

    #@17
    .line 7004
    move-object/from16 v0, p1

    #@19
    iget v0, v0, Landroid/os/Message;->what:I

    #@1b
    move/from16 v47, v0

    #@1d
    sparse-switch v47, :sswitch_data_0

    #@20
    .line 7769
    const/16 v47, 0x0

    #@22
    return v47

    #@23
    .line 7006
    :sswitch_0
    move-object/from16 v0, p0

    #@25
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@27
    move-object/from16 v47, v0

    #@29
    invoke-static/range {v47 .. v47}, Lcom/android/server/wifi/WifiStateMachine;->-get103(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiLogger;

    #@2c
    move-result-object v47

    #@2d
    const/16 v48, 0x1

    #@2f
    invoke-virtual/range {v47 .. v48}, Lcom/android/server/wifi/WifiLogger;->captureBugReportData(I)V

    #@32
    .line 7007
    move-object/from16 v0, p0

    #@34
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@36
    move-object/from16 v47, v0

    #@38
    const/16 v48, 0x0

    #@3a
    invoke-static/range {v47 .. v48}, Lcom/android/server/wifi/WifiStateMachine;->-set0(Lcom/android/server/wifi/WifiStateMachine;Z)Z

    #@3d
    .line 7008
    move-object/from16 v0, p1

    #@3f
    iget-object v6, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@41
    check-cast v6, Ljava/lang/String;

    #@43
    .line 7009
    .local v6, "bssid":Ljava/lang/String;
    if-eqz v6, :cond_0

    #@45
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@48
    move-result v47

    #@49
    if-eqz v47, :cond_1

    #@4b
    .line 7011
    :cond_0
    move-object/from16 v0, p0

    #@4d
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@4f
    move-object/from16 v47, v0

    #@51
    invoke-static/range {v47 .. v47}, Lcom/android/server/wifi/WifiStateMachine;->-get84(Lcom/android/server/wifi/WifiStateMachine;)Ljava/lang/String;

    #@54
    move-result-object v6

    #@55
    .line 7013
    :cond_1
    if-eqz v6, :cond_2

    #@57
    .line 7015
    move-object/from16 v0, p0

    #@59
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@5b
    move-object/from16 v47, v0

    #@5d
    invoke-static/range {v47 .. v47}, Lcom/android/server/wifi/WifiStateMachine;->-get70(Lcom/android/server/wifi/WifiStateMachine;)Landroid/util/LruCache;

    #@60
    move-result-object v48

    #@61
    monitor-enter v48

    #@62
    .line 7016
    :try_start_0
    move-object/from16 v0, p0

    #@64
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@66
    move-object/from16 v47, v0

    #@68
    move-object/from16 v0, p0

    #@6a
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@6c
    move-object/from16 v49, v0

    #@6e
    invoke-static/range {v49 .. v49}, Lcom/android/server/wifi/WifiStateMachine;->-get99(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigStore;

    #@71
    move-result-object v49

    #@72
    .line 7017
    move-object/from16 v0, p0

    #@74
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@76
    move-object/from16 v50, v0

    #@78
    invoke-static/range {v50 .. v50}, Lcom/android/server/wifi/WifiStateMachine;->-get51(Lcom/android/server/wifi/WifiStateMachine;)I

    #@7b
    move-result v50

    #@7c
    const/16 v51, 0x0

    #@7e
    .line 7016
    move-object/from16 v0, v49

    #@80
    move/from16 v1, v50

    #@82
    move/from16 v2, v51

    #@84
    invoke-virtual {v0, v1, v6, v2}, Lcom/android/server/wifi/WifiConfigStore;->handleBSSIDBlackList(ILjava/lang/String;Z)Z

    #@87
    move-result v49

    #@88
    move-object/from16 v0, v47

    #@8a
    move/from16 v1, v49

    #@8c
    invoke-static {v0, v1}, Lcom/android/server/wifi/WifiStateMachine;->-set0(Lcom/android/server/wifi/WifiStateMachine;Z)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@8f
    monitor-exit v48

    #@90
    .line 7020
    :cond_2
    move-object/from16 v0, p0

    #@92
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@94
    move-object/from16 v47, v0

    #@96
    invoke-static/range {v47 .. v47}, Lcom/android/server/wifi/WifiStateMachine;->-get79(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/SupplicantStateTracker;

    #@99
    move-result-object v47

    #@9a
    const v48, 0x2402b

    #@9d
    invoke-virtual/range {v47 .. v48}, Lcom/android/server/wifi/SupplicantStateTracker;->sendMessage(I)V

    #@a0
    .line 7771
    .end local v6    # "bssid":Ljava/lang/String;
    :cond_3
    :goto_0
    const/16 v47, 0x1

    #@a2
    return v47

    #@a3
    .line 7015
    .restart local v6    # "bssid":Ljava/lang/String;
    :catchall_0
    move-exception v47

    #@a4
    monitor-exit v48

    #@a5
    throw v47

    #@a6
    .line 7023
    .end local v6    # "bssid":Ljava/lang/String;
    :sswitch_1
    move-object/from16 v0, p0

    #@a8
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@aa
    move-object/from16 v47, v0

    #@ac
    invoke-static/range {v47 .. v47}, Lcom/android/server/wifi/WifiStateMachine;->-get103(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiLogger;

    #@af
    move-result-object v47

    #@b0
    const/16 v48, 0x2

    #@b2
    invoke-virtual/range {v47 .. v48}, Lcom/android/server/wifi/WifiLogger;->captureBugReportData(I)V

    #@b5
    .line 7024
    move-object/from16 v0, p0

    #@b7
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@b9
    move-object/from16 v47, v0

    #@bb
    invoke-static/range {v47 .. v47}, Lcom/android/server/wifi/WifiStateMachine;->-get79(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/SupplicantStateTracker;

    #@be
    move-result-object v47

    #@bf
    const v48, 0x24007

    #@c2
    invoke-virtual/range {v47 .. v48}, Lcom/android/server/wifi/SupplicantStateTracker;->sendMessage(I)V

    #@c5
    goto :goto_0

    #@c6
    .line 7028
    :sswitch_2
    move-object/from16 v0, p1

    #@c8
    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@ca
    move-object/from16 v36, v0

    #@cc
    check-cast v36, Ljava/lang/String;

    #@ce
    .line 7029
    .local v36, "substr":Ljava/lang/String;
    move-object/from16 v0, p1

    #@d0
    iget v0, v0, Landroid/os/Message;->what:I

    #@d2
    move/from16 v47, v0

    #@d4
    const v48, 0x2400d

    #@d7
    move/from16 v0, v47

    #@d9
    move/from16 v1, v48

    #@db
    if-ne v0, v1, :cond_4

    #@dd
    .line 7030
    const-string/jumbo v16, "temp-disabled"

    #@e0
    .line 7031
    .local v16, "en":Ljava/lang/String;
    :goto_1
    move-object/from16 v0, p0

    #@e2
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@e4
    move-object/from16 v47, v0

    #@e6
    new-instance v48, Ljava/lang/StringBuilder;

    #@e8
    invoke-direct/range {v48 .. v48}, Ljava/lang/StringBuilder;-><init>()V

    #@eb
    const-string/jumbo v49, "ConnectModeState SSID state="

    #@ee
    invoke-virtual/range {v48 .. v49}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@f1
    move-result-object v48

    #@f2
    move-object/from16 v0, v48

    #@f4
    move-object/from16 v1, v16

    #@f6
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@f9
    move-result-object v48

    #@fa
    const-string/jumbo v49, " nid="

    #@fd
    invoke-virtual/range {v48 .. v49}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@100
    move-result-object v48

    #@101
    .line 7032
    move-object/from16 v0, p1

    #@103
    iget v0, v0, Landroid/os/Message;->arg1:I

    #@105
    move/from16 v49, v0

    #@107
    invoke-static/range {v49 .. v49}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    #@10a
    move-result-object v49

    #@10b
    .line 7031
    invoke-virtual/range {v48 .. v49}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@10e
    move-result-object v48

    #@10f
    .line 7032
    const-string/jumbo v49, " ["

    #@112
    .line 7031
    invoke-virtual/range {v48 .. v49}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@115
    move-result-object v48

    #@116
    move-object/from16 v0, v48

    #@118
    move-object/from16 v1, v36

    #@11a
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@11d
    move-result-object v48

    #@11e
    .line 7032
    const-string/jumbo v49, "]"

    #@121
    .line 7031
    invoke-virtual/range {v48 .. v49}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@124
    move-result-object v48

    #@125
    invoke-virtual/range {v48 .. v48}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@128
    move-result-object v48

    #@129
    invoke-virtual/range {v47 .. v48}, Lcom/android/server/wifi/WifiStateMachine;->logd(Ljava/lang/String;)V

    #@12c
    .line 7033
    move-object/from16 v0, p0

    #@12e
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@130
    move-object/from16 v47, v0

    #@132
    invoke-static/range {v47 .. v47}, Lcom/android/server/wifi/WifiStateMachine;->-get70(Lcom/android/server/wifi/WifiStateMachine;)Landroid/util/LruCache;

    #@135
    move-result-object v48

    #@136
    monitor-enter v48

    #@137
    .line 7034
    :try_start_1
    move-object/from16 v0, p0

    #@139
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@13b
    move-object/from16 v47, v0

    #@13d
    invoke-static/range {v47 .. v47}, Lcom/android/server/wifi/WifiStateMachine;->-get99(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigStore;

    #@140
    move-result-object v49

    #@141
    move-object/from16 v0, p1

    #@143
    iget v0, v0, Landroid/os/Message;->arg1:I

    #@145
    move/from16 v50, v0

    #@147
    move-object/from16 v0, p1

    #@149
    iget v0, v0, Landroid/os/Message;->what:I

    #@14b
    move/from16 v47, v0

    #@14d
    .line 7035
    const v51, 0x2400e

    #@150
    .line 7034
    move/from16 v0, v47

    #@152
    move/from16 v1, v51

    #@154
    if-ne v0, v1, :cond_5

    #@156
    const/16 v47, 0x1

    #@158
    .line 7035
    :goto_2
    move-object/from16 v0, p0

    #@15a
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@15c
    move-object/from16 v51, v0

    #@15e
    invoke-static/range {v51 .. v51}, Lcom/android/server/wifi/WifiStateMachine;->-get101(Lcom/android/server/wifi/WifiStateMachine;)Landroid/net/wifi/WifiInfo;

    #@161
    move-result-object v51

    #@162
    invoke-virtual/range {v51 .. v51}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;

    #@165
    move-result-object v51

    #@166
    .line 7034
    move-object/from16 v0, v49

    #@168
    move/from16 v1, v50

    #@16a
    move/from16 v2, v47

    #@16c
    move-object/from16 v3, v36

    #@16e
    move-object/from16 v4, v51

    #@170
    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/server/wifi/WifiConfigStore;->handleSSIDStateChange(IZLjava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    #@173
    .end local v16    # "en":Ljava/lang/String;
    .end local v36    # "substr":Ljava/lang/String;
    :goto_3
    monitor-exit v48

    #@174
    goto/16 :goto_0

    #@176
    .line 7030
    .restart local v36    # "substr":Ljava/lang/String;
    :cond_4
    const-string/jumbo v16, "re-enabled"

    #@179
    .restart local v16    # "en":Ljava/lang/String;
    goto/16 :goto_1

    #@17b
    .line 7034
    :cond_5
    const/16 v47, 0x0

    #@17d
    goto :goto_2

    #@17e
    .line 7033
    :catchall_1
    move-exception v47

    #@17f
    monitor-exit v48

    #@180
    throw v47

    #@181
    .line 7039
    .end local v16    # "en":Ljava/lang/String;
    .end local v36    # "substr":Ljava/lang/String;
    :sswitch_3
    move-object/from16 v0, p0

    #@183
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@185
    move-object/from16 v47, v0

    #@187
    move-object/from16 v0, v47

    #@189
    move-object/from16 v1, p1

    #@18b
    invoke-static {v0, v1}, Lcom/android/server/wifi/WifiStateMachine;->-wrap0(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;)Landroid/net/wifi/SupplicantState;

    #@18e
    move-result-object v35

    #@18f
    .line 7042
    .local v35, "state":Landroid/net/wifi/SupplicantState;
    invoke-static/range {v35 .. v35}, Landroid/net/wifi/SupplicantState;->isDriverActive(Landroid/net/wifi/SupplicantState;)Z

    #@192
    move-result v47

    #@193
    if-nez v47, :cond_7

    #@195
    .line 7043
    move-object/from16 v0, p0

    #@197
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@199
    move-object/from16 v47, v0

    #@19b
    invoke-static/range {v47 .. v47}, Lcom/android/server/wifi/WifiStateMachine;->-get56(Lcom/android/server/wifi/WifiStateMachine;)Landroid/net/NetworkInfo;

    #@19e
    move-result-object v47

    #@19f
    invoke-virtual/range {v47 .. v47}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    #@1a2
    move-result-object v47

    #@1a3
    sget-object v48, Landroid/net/NetworkInfo$State;->DISCONNECTED:Landroid/net/NetworkInfo$State;

    #@1a5
    move-object/from16 v0, v47

    #@1a7
    move-object/from16 v1, v48

    #@1a9
    if-eq v0, v1, :cond_6

    #@1ab
    .line 7044
    move-object/from16 v0, p0

    #@1ad
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@1af
    move-object/from16 v47, v0

    #@1b1
    invoke-static/range {v47 .. v47}, Lcom/android/server/wifi/WifiStateMachine;->-wrap28(Lcom/android/server/wifi/WifiStateMachine;)V

    #@1b4
    .line 7046
    :cond_6
    move-object/from16 v0, p0

    #@1b6
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@1b8
    move-object/from16 v47, v0

    #@1ba
    const-string/jumbo v48, "Detected an interface down, restart driver"

    #@1bd
    invoke-virtual/range {v47 .. v48}, Lcom/android/server/wifi/WifiStateMachine;->log(Ljava/lang/String;)V

    #@1c0
    .line 7047
    move-object/from16 v0, p0

    #@1c2
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@1c4
    move-object/from16 v47, v0

    #@1c6
    move-object/from16 v0, p0

    #@1c8
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@1ca
    move-object/from16 v48, v0

    #@1cc
    invoke-static/range {v48 .. v48}, Lcom/android/server/wifi/WifiStateMachine;->-get34(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/internal/util/State;

    #@1cf
    move-result-object v48

    #@1d0
    invoke-static/range {v47 .. v48}, Lcom/android/server/wifi/WifiStateMachine;->-wrap55(Lcom/android/server/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V

    #@1d3
    .line 7048
    move-object/from16 v0, p0

    #@1d5
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@1d7
    move-object/from16 v47, v0

    #@1d9
    const v48, 0x2000d

    #@1dc
    invoke-virtual/range {v47 .. v48}, Lcom/android/server/wifi/WifiStateMachine;->sendMessage(I)V

    #@1df
    goto/16 :goto_0

    #@1e1
    .line 7057
    :cond_7
    move-object/from16 v0, p0

    #@1e3
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@1e5
    move-object/from16 v47, v0

    #@1e7
    invoke-static/range {v47 .. v47}, Lcom/android/server/wifi/WifiStateMachine;->-get12(Lcom/android/server/wifi/WifiStateMachine;)Z

    #@1ea
    move-result v47

    #@1eb
    if-nez v47, :cond_9

    #@1ed
    sget-object v47, Landroid/net/wifi/SupplicantState;->DISCONNECTED:Landroid/net/wifi/SupplicantState;

    #@1ef
    move-object/from16 v0, v35

    #@1f1
    move-object/from16 v1, v47

    #@1f3
    if-ne v0, v1, :cond_9

    #@1f5
    .line 7058
    move-object/from16 v0, p0

    #@1f7
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@1f9
    move-object/from16 v47, v0

    #@1fb
    invoke-static/range {v47 .. v47}, Lcom/android/server/wifi/WifiStateMachine;->-get56(Lcom/android/server/wifi/WifiStateMachine;)Landroid/net/NetworkInfo;

    #@1fe
    move-result-object v47

    #@1ff
    invoke-virtual/range {v47 .. v47}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    #@202
    move-result-object v47

    #@203
    sget-object v48, Landroid/net/NetworkInfo$State;->DISCONNECTED:Landroid/net/NetworkInfo$State;

    #@205
    move-object/from16 v0, v47

    #@207
    move-object/from16 v1, v48

    #@209
    if-eq v0, v1, :cond_9

    #@20b
    .line 7059
    invoke-static {}, Lcom/android/server/wifi/WifiStateMachine;->-get0()Z

    #@20e
    move-result v47

    #@20f
    if-eqz v47, :cond_8

    #@211
    move-object/from16 v0, p0

    #@213
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@215
    move-object/from16 v47, v0

    #@217
    const-string/jumbo v48, "Missed CTRL-EVENT-DISCONNECTED, disconnect"

    #@21a
    invoke-virtual/range {v47 .. v48}, Lcom/android/server/wifi/WifiStateMachine;->log(Ljava/lang/String;)V

    #@21d
    .line 7060
    :cond_8
    move-object/from16 v0, p0

    #@21f
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@221
    move-object/from16 v47, v0

    #@223
    invoke-static/range {v47 .. v47}, Lcom/android/server/wifi/WifiStateMachine;->-wrap28(Lcom/android/server/wifi/WifiStateMachine;)V

    #@226
    .line 7061
    move-object/from16 v0, p0

    #@228
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@22a
    move-object/from16 v47, v0

    #@22c
    move-object/from16 v0, p0

    #@22e
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@230
    move-object/from16 v48, v0

    #@232
    invoke-static/range {v48 .. v48}, Lcom/android/server/wifi/WifiStateMachine;->-get26(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/internal/util/State;

    #@235
    move-result-object v48

    #@236
    invoke-static/range {v47 .. v48}, Lcom/android/server/wifi/WifiStateMachine;->-wrap55(Lcom/android/server/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V

    #@239
    .line 7067
    :cond_9
    sget-object v47, Landroid/net/wifi/SupplicantState;->COMPLETED:Landroid/net/wifi/SupplicantState;

    #@23b
    move-object/from16 v0, v35

    #@23d
    move-object/from16 v1, v47

    #@23f
    if-ne v0, v1, :cond_3

    #@241
    .line 7068
    move-object/from16 v0, p0

    #@243
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@245
    move-object/from16 v47, v0

    #@247
    invoke-static/range {v47 .. v47}, Lcom/android/server/wifi/WifiStateMachine;->-get45(Lcom/android/server/wifi/WifiStateMachine;)Landroid/net/IpReachabilityMonitor;

    #@24a
    move-result-object v47

    #@24b
    if-eqz v47, :cond_3

    #@24d
    .line 7069
    move-object/from16 v0, p0

    #@24f
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@251
    move-object/from16 v47, v0

    #@253
    invoke-static/range {v47 .. v47}, Lcom/android/server/wifi/WifiStateMachine;->-get45(Lcom/android/server/wifi/WifiStateMachine;)Landroid/net/IpReachabilityMonitor;

    #@256
    move-result-object v47

    #@257
    invoke-virtual/range {v47 .. v47}, Landroid/net/IpReachabilityMonitor;->probeAll()V

    #@25a
    goto/16 :goto_0

    #@25c
    .line 7074
    .end local v35    # "state":Landroid/net/wifi/SupplicantState;
    :sswitch_4
    move-object/from16 v0, p1

    #@25e
    iget v0, v0, Landroid/os/Message;->arg1:I

    #@260
    move/from16 v47, v0

    #@262
    const/16 v48, 0x1

    #@264
    move/from16 v0, v47

    #@266
    move/from16 v1, v48

    #@268
    if-ne v0, v1, :cond_a

    #@26a
    .line 7075
    move-object/from16 v0, p0

    #@26c
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@26e
    move-object/from16 v47, v0

    #@270
    invoke-static/range {v47 .. v47}, Lcom/android/server/wifi/WifiStateMachine;->-get105(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiNative;

    #@273
    move-result-object v47

    #@274
    invoke-virtual/range {v47 .. v47}, Lcom/android/server/wifi/WifiNative;->disconnect()Z

    #@277
    .line 7076
    move-object/from16 v0, p0

    #@279
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@27b
    move-object/from16 v47, v0

    #@27d
    const/16 v48, 0x1

    #@27f
    invoke-static/range {v47 .. v48}, Lcom/android/server/wifi/WifiStateMachine;->-set43(Lcom/android/server/wifi/WifiStateMachine;Z)Z

    #@282
    goto/16 :goto_0

    #@284
    .line 7078
    :cond_a
    move-object/from16 v0, p0

    #@286
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@288
    move-object/from16 v47, v0

    #@28a
    invoke-static/range {v47 .. v47}, Lcom/android/server/wifi/WifiStateMachine;->-get105(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiNative;

    #@28d
    move-result-object v47

    #@28e
    invoke-virtual/range {v47 .. v47}, Lcom/android/server/wifi/WifiNative;->reconnect()Z

    #@291
    .line 7079
    move-object/from16 v0, p0

    #@293
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@295
    move-object/from16 v47, v0

    #@297
    const/16 v48, 0x0

    #@299
    invoke-static/range {v47 .. v48}, Lcom/android/server/wifi/WifiStateMachine;->-set43(Lcom/android/server/wifi/WifiStateMachine;Z)Z

    #@29c
    goto/16 :goto_0

    #@29e
    .line 7083
    :sswitch_5
    move-object/from16 v0, p1

    #@2a0
    iget-object v8, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@2a2
    check-cast v8, Landroid/net/wifi/WifiConfiguration;

    #@2a4
    .line 7085
    .local v8, "config":Landroid/net/wifi/WifiConfiguration;
    move-object/from16 v0, p0

    #@2a6
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@2a8
    move-object/from16 v47, v0

    #@2aa
    move-object/from16 v0, p1

    #@2ac
    iget v0, v0, Landroid/os/Message;->sendingUid:I

    #@2ae
    move/from16 v48, v0

    #@2b0
    .line 7086
    const/16 v49, 0x0

    #@2b2
    .line 7085
    move-object/from16 v0, v47

    #@2b4
    move/from16 v1, v48

    #@2b6
    move/from16 v2, v49

    #@2b8
    invoke-virtual {v0, v8, v1, v2}, Lcom/android/server/wifi/WifiStateMachine;->recordUidIfAuthorized(Landroid/net/wifi/WifiConfiguration;IZ)Z

    #@2bb
    move-result v47

    #@2bc
    if-nez v47, :cond_b

    #@2be
    .line 7087
    move-object/from16 v0, p0

    #@2c0
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@2c2
    move-object/from16 v47, v0

    #@2c4
    new-instance v48, Ljava/lang/StringBuilder;

    #@2c6
    invoke-direct/range {v48 .. v48}, Ljava/lang/StringBuilder;-><init>()V

    #@2c9
    const-string/jumbo v49, "Not authorized to update network  config="

    #@2cc
    invoke-virtual/range {v48 .. v49}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2cf
    move-result-object v48

    #@2d0
    .line 7088
    iget-object v0, v8, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    #@2d2
    move-object/from16 v49, v0

    #@2d4
    .line 7087
    invoke-virtual/range {v48 .. v49}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2d7
    move-result-object v48

    #@2d8
    .line 7089
    const-string/jumbo v49, " cnid="

    #@2db
    .line 7087
    invoke-virtual/range {v48 .. v49}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2de
    move-result-object v48

    #@2df
    .line 7089
    iget v0, v8, Landroid/net/wifi/WifiConfiguration;->networkId:I

    #@2e1
    move/from16 v49, v0

    #@2e3
    .line 7087
    invoke-virtual/range {v48 .. v49}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@2e6
    move-result-object v48

    #@2e7
    .line 7090
    const-string/jumbo v49, " uid="

    #@2ea
    .line 7087
    invoke-virtual/range {v48 .. v49}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2ed
    move-result-object v48

    #@2ee
    .line 7090
    move-object/from16 v0, p1

    #@2f0
    iget v0, v0, Landroid/os/Message;->sendingUid:I

    #@2f2
    move/from16 v49, v0

    #@2f4
    .line 7087
    invoke-virtual/range {v48 .. v49}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@2f7
    move-result-object v48

    #@2f8
    invoke-virtual/range {v48 .. v48}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2fb
    move-result-object v48

    #@2fc
    invoke-static/range {v47 .. v48}, Lcom/android/server/wifi/WifiStateMachine;->-wrap34(Lcom/android/server/wifi/WifiStateMachine;Ljava/lang/String;)V

    #@2ff
    .line 7091
    move-object/from16 v0, p0

    #@301
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@303
    move-object/from16 v47, v0

    #@305
    move-object/from16 v0, p1

    #@307
    iget v0, v0, Landroid/os/Message;->what:I

    #@309
    move/from16 v48, v0

    #@30b
    const/16 v49, -0x1

    #@30d
    move-object/from16 v0, v47

    #@30f
    move-object/from16 v1, p1

    #@311
    move/from16 v2, v48

    #@313
    move/from16 v3, v49

    #@315
    invoke-static {v0, v1, v2, v3}, Lcom/android/server/wifi/WifiStateMachine;->-wrap37(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;II)V

    #@318
    goto/16 :goto_0

    #@31a
    .line 7095
    :cond_b
    move-object/from16 v0, p0

    #@31c
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@31e
    move-object/from16 v47, v0

    #@320
    invoke-static/range {v47 .. v47}, Lcom/android/server/wifi/WifiStateMachine;->-get99(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigStore;

    #@323
    move-result-object v47

    #@324
    move-object/from16 v0, p1

    #@326
    iget v0, v0, Landroid/os/Message;->sendingUid:I

    #@328
    move/from16 v48, v0

    #@32a
    move-object/from16 v0, v47

    #@32c
    move/from16 v1, v48

    #@32e
    invoke-virtual {v0, v8, v1}, Lcom/android/server/wifi/WifiConfigStore;->addOrUpdateNetwork(Landroid/net/wifi/WifiConfiguration;I)I

    #@331
    move-result v30

    #@332
    .line 7096
    .local v30, "res":I
    if-gez v30, :cond_d

    #@334
    .line 7097
    move-object/from16 v0, p0

    #@336
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@338
    move-object/from16 v47, v0

    #@33a
    invoke-static {}, Lcom/android/server/wifi/WifiStateMachine;->-get3()I

    #@33d
    move-result v48

    #@33e
    invoke-static/range {v47 .. v48}, Lcom/android/server/wifi/WifiStateMachine;->-set49(Lcom/android/server/wifi/WifiStateMachine;I)I

    #@341
    .line 7120
    :cond_c
    :goto_4
    move-object/from16 v0, p0

    #@343
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@345
    move-object/from16 v47, v0

    #@347
    const v48, 0x20034

    #@34a
    move-object/from16 v0, v47

    #@34c
    move-object/from16 v1, p1

    #@34e
    move/from16 v2, v48

    #@350
    move/from16 v3, v30

    #@352
    invoke-static {v0, v1, v2, v3}, Lcom/android/server/wifi/WifiStateMachine;->-wrap37(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;II)V

    #@355
    goto/16 :goto_0

    #@357
    .line 7099
    :cond_d
    move-object/from16 v0, p0

    #@359
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@35b
    move-object/from16 v47, v0

    #@35d
    invoke-virtual/range {v47 .. v47}, Lcom/android/server/wifi/WifiStateMachine;->getCurrentWifiConfiguration()Landroid/net/wifi/WifiConfiguration;

    #@360
    move-result-object v10

    #@361
    .line 7100
    .local v10, "curConfig":Landroid/net/wifi/WifiConfiguration;
    if-eqz v10, :cond_c

    #@363
    if-eqz v8, :cond_c

    #@365
    .line 7101
    iget v0, v10, Landroid/net/wifi/WifiConfiguration;->priority:I

    #@367
    move/from16 v47, v0

    #@369
    iget v0, v8, Landroid/net/wifi/WifiConfiguration;->priority:I

    #@36b
    move/from16 v48, v0

    #@36d
    move/from16 v0, v47

    #@36f
    move/from16 v1, v48

    #@371
    if-ge v0, v1, :cond_c

    #@373
    .line 7102
    iget v0, v8, Landroid/net/wifi/WifiConfiguration;->status:I

    #@375
    move/from16 v47, v0

    #@377
    const/16 v48, 0x2

    #@379
    move/from16 v0, v47

    #@37b
    move/from16 v1, v48

    #@37d
    if-ne v0, v1, :cond_c

    #@37f
    .line 7106
    move-object/from16 v0, p0

    #@381
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@383
    move-object/from16 v47, v0

    #@385
    invoke-static/range {v47 .. v47}, Lcom/android/server/wifi/WifiStateMachine;->-get99(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigStore;

    #@388
    move-result-object v47

    #@389
    move-object/from16 v0, v47

    #@38b
    move/from16 v1, v30

    #@38d
    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiConfigStore;->setLastSelectedConfiguration(I)V

    #@390
    .line 7107
    move-object/from16 v0, p0

    #@392
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@394
    move-object/from16 v47, v0

    #@396
    invoke-static/range {v47 .. v47}, Lcom/android/server/wifi/WifiStateMachine;->-get99(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigStore;

    #@399
    move-result-object v47

    #@39a
    move-object/from16 v0, p1

    #@39c
    iget v0, v0, Landroid/os/Message;->sendingUid:I

    #@39e
    move/from16 v48, v0

    #@3a0
    move-object/from16 v0, v47

    #@3a2
    move/from16 v1, v48

    #@3a4
    invoke-virtual {v0, v8, v1}, Lcom/android/server/wifi/WifiConfigStore;->updateLastConnectUid(Landroid/net/wifi/WifiConfiguration;I)Z

    #@3a7
    .line 7108
    move-object/from16 v0, p0

    #@3a9
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@3ab
    move-object/from16 v47, v0

    #@3ad
    invoke-static/range {v47 .. v47}, Lcom/android/server/wifi/WifiStateMachine;->-get99(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigStore;

    #@3b0
    move-result-object v47

    #@3b1
    const/16 v48, 0x0

    #@3b3
    invoke-virtual/range {v47 .. v48}, Lcom/android/server/wifi/WifiConfigStore;->writeKnownNetworkHistory(Z)V

    #@3b6
    .line 7111
    move-object/from16 v0, p0

    #@3b8
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@3ba
    move-object/from16 v47, v0

    #@3bc
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    #@3bf
    move-result-wide v48

    #@3c0
    invoke-static/range {v47 .. v49}, Lcom/android/server/wifi/WifiStateMachine;->-set2(Lcom/android/server/wifi/WifiStateMachine;J)J

    #@3c3
    .line 7113
    move-object/from16 v0, p0

    #@3c5
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@3c7
    move-object/from16 v47, v0

    #@3c9
    invoke-static/range {v47 .. v47}, Lcom/android/server/wifi/WifiStateMachine;->-get100(Lcom/android/server/wifi/WifiStateMachine;)Landroid/net/wifi/WifiConnectionStatistics;

    #@3cc
    move-result-object v47

    #@3cd
    move-object/from16 v0, v47

    #@3cf
    iget v0, v0, Landroid/net/wifi/WifiConnectionStatistics;->numWifiManagerJoinAttempt:I

    #@3d1
    move/from16 v48, v0

    #@3d3
    add-int/lit8 v48, v48, 0x1

    #@3d5
    move/from16 v0, v48

    #@3d7
    move-object/from16 v1, v47

    #@3d9
    iput v0, v1, Landroid/net/wifi/WifiConnectionStatistics;->numWifiManagerJoinAttempt:I

    #@3db
    .line 7116
    move-object/from16 v0, p0

    #@3dd
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@3df
    move-object/from16 v47, v0

    #@3e1
    const/16 v48, -0x3

    #@3e3
    const/16 v49, 0x0

    #@3e5
    const/16 v50, 0x0

    #@3e7
    const/16 v51, 0x0

    #@3e9
    invoke-virtual/range {v47 .. v51}, Lcom/android/server/wifi/WifiStateMachine;->startScan(IILandroid/net/wifi/ScanSettings;Landroid/os/WorkSource;)V

    #@3ec
    goto/16 :goto_4

    #@3ee
    .line 7123
    .end local v8    # "config":Landroid/net/wifi/WifiConfiguration;
    .end local v10    # "curConfig":Landroid/net/wifi/WifiConfiguration;
    .end local v30    # "res":I
    :sswitch_6
    move-object/from16 v0, p1

    #@3f0
    iget v0, v0, Landroid/os/Message;->arg1:I

    #@3f2
    move/from16 v23, v0

    #@3f4
    .line 7124
    .local v23, "netId":I
    move-object/from16 v0, p0

    #@3f6
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@3f8
    move-object/from16 v47, v0

    #@3fa
    invoke-static/range {v47 .. v47}, Lcom/android/server/wifi/WifiStateMachine;->-get99(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigStore;

    #@3fd
    move-result-object v47

    #@3fe
    move-object/from16 v0, p1

    #@400
    iget v0, v0, Landroid/os/Message;->sendingUid:I

    #@402
    move/from16 v48, v0

    #@404
    .line 7125
    const/16 v49, 0x0

    #@406
    .line 7124
    move-object/from16 v0, v47

    #@408
    move/from16 v1, v48

    #@40a
    move/from16 v2, v23

    #@40c
    move/from16 v3, v49

    #@40e
    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/wifi/WifiConfigStore;->canModifyNetwork(IIZ)Z

    #@411
    move-result v47

    #@412
    if-nez v47, :cond_e

    #@414
    .line 7126
    move-object/from16 v0, p0

    #@416
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@418
    move-object/from16 v47, v0

    #@41a
    new-instance v48, Ljava/lang/StringBuilder;

    #@41c
    invoke-direct/range {v48 .. v48}, Ljava/lang/StringBuilder;-><init>()V

    #@41f
    const-string/jumbo v49, "Not authorized to remove network  cnid="

    #@422
    invoke-virtual/range {v48 .. v49}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@425
    move-result-object v48

    #@426
    move-object/from16 v0, v48

    #@428
    move/from16 v1, v23

    #@42a
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@42d
    move-result-object v48

    #@42e
    .line 7128
    const-string/jumbo v49, " uid="

    #@431
    .line 7126
    invoke-virtual/range {v48 .. v49}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@434
    move-result-object v48

    #@435
    .line 7128
    move-object/from16 v0, p1

    #@437
    iget v0, v0, Landroid/os/Message;->sendingUid:I

    #@439
    move/from16 v49, v0

    #@43b
    .line 7126
    invoke-virtual/range {v48 .. v49}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@43e
    move-result-object v48

    #@43f
    invoke-virtual/range {v48 .. v48}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@442
    move-result-object v48

    #@443
    invoke-static/range {v47 .. v48}, Lcom/android/server/wifi/WifiStateMachine;->-wrap34(Lcom/android/server/wifi/WifiStateMachine;Ljava/lang/String;)V

    #@446
    .line 7129
    move-object/from16 v0, p0

    #@448
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@44a
    move-object/from16 v47, v0

    #@44c
    move-object/from16 v0, p1

    #@44e
    iget v0, v0, Landroid/os/Message;->what:I

    #@450
    move/from16 v48, v0

    #@452
    const/16 v49, -0x1

    #@454
    move-object/from16 v0, v47

    #@456
    move-object/from16 v1, p1

    #@458
    move/from16 v2, v48

    #@45a
    move/from16 v3, v49

    #@45c
    invoke-static {v0, v1, v2, v3}, Lcom/android/server/wifi/WifiStateMachine;->-wrap37(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;II)V

    #@45f
    goto/16 :goto_0

    #@461
    .line 7133
    :cond_e
    move-object/from16 v0, p0

    #@463
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@465
    move-object/from16 v47, v0

    #@467
    invoke-static/range {v47 .. v47}, Lcom/android/server/wifi/WifiStateMachine;->-get99(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigStore;

    #@46a
    move-result-object v47

    #@46b
    move-object/from16 v0, p1

    #@46d
    iget v0, v0, Landroid/os/Message;->arg1:I

    #@46f
    move/from16 v48, v0

    #@471
    invoke-virtual/range {v47 .. v48}, Lcom/android/server/wifi/WifiConfigStore;->removeNetwork(I)Z

    #@474
    move-result v26

    #@475
    .line 7134
    .local v26, "ok":Z
    if-nez v26, :cond_f

    #@477
    .line 7135
    move-object/from16 v0, p0

    #@479
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@47b
    move-object/from16 v47, v0

    #@47d
    invoke-static {}, Lcom/android/server/wifi/WifiStateMachine;->-get3()I

    #@480
    move-result v48

    #@481
    invoke-static/range {v47 .. v48}, Lcom/android/server/wifi/WifiStateMachine;->-set49(Lcom/android/server/wifi/WifiStateMachine;I)I

    #@484
    .line 7137
    :cond_f
    move-object/from16 v0, p0

    #@486
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@488
    move-object/from16 v48, v0

    #@48a
    move-object/from16 v0, p1

    #@48c
    iget v0, v0, Landroid/os/Message;->what:I

    #@48e
    move/from16 v49, v0

    #@490
    if-eqz v26, :cond_10

    #@492
    const/16 v47, 0x1

    #@494
    :goto_5
    move-object/from16 v0, v48

    #@496
    move-object/from16 v1, p1

    #@498
    move/from16 v2, v49

    #@49a
    move/from16 v3, v47

    #@49c
    invoke-static {v0, v1, v2, v3}, Lcom/android/server/wifi/WifiStateMachine;->-wrap37(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;II)V

    #@49f
    goto/16 :goto_0

    #@4a1
    :cond_10
    const/16 v47, -0x1

    #@4a3
    goto :goto_5

    #@4a4
    .line 7140
    .end local v23    # "netId":I
    .end local v26    # "ok":Z
    :sswitch_7
    move-object/from16 v0, p1

    #@4a6
    iget v0, v0, Landroid/os/Message;->arg2:I

    #@4a8
    move/from16 v47, v0

    #@4aa
    const/16 v48, 0x1

    #@4ac
    move/from16 v0, v47

    #@4ae
    move/from16 v1, v48

    #@4b0
    if-ne v0, v1, :cond_11

    #@4b2
    const/4 v13, 0x1

    #@4b3
    .line 7141
    .local v13, "disableOthers":Z
    :goto_6
    move-object/from16 v0, p1

    #@4b5
    iget v0, v0, Landroid/os/Message;->arg1:I

    #@4b7
    move/from16 v23, v0

    #@4b9
    .line 7142
    .restart local v23    # "netId":I
    move-object/from16 v0, p0

    #@4bb
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@4bd
    move-object/from16 v47, v0

    #@4bf
    invoke-static/range {v47 .. v47}, Lcom/android/server/wifi/WifiStateMachine;->-get99(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigStore;

    #@4c2
    move-result-object v47

    #@4c3
    move-object/from16 v0, v47

    #@4c5
    move/from16 v1, v23

    #@4c7
    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiConfigStore;->getWifiConfiguration(I)Landroid/net/wifi/WifiConfiguration;

    #@4ca
    move-result-object v8

    #@4cb
    .line 7143
    .restart local v8    # "config":Landroid/net/wifi/WifiConfiguration;
    if-nez v8, :cond_12

    #@4cd
    .line 7144
    move-object/from16 v0, p0

    #@4cf
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@4d1
    move-object/from16 v47, v0

    #@4d3
    new-instance v48, Ljava/lang/StringBuilder;

    #@4d5
    invoke-direct/range {v48 .. v48}, Ljava/lang/StringBuilder;-><init>()V

    #@4d8
    const-string/jumbo v49, "No network with id = "

    #@4db
    invoke-virtual/range {v48 .. v49}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4de
    move-result-object v48

    #@4df
    move-object/from16 v0, v48

    #@4e1
    move/from16 v1, v23

    #@4e3
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@4e6
    move-result-object v48

    #@4e7
    invoke-virtual/range {v48 .. v48}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@4ea
    move-result-object v48

    #@4eb
    invoke-virtual/range {v47 .. v48}, Lcom/android/server/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V

    #@4ee
    .line 7145
    move-object/from16 v0, p0

    #@4f0
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@4f2
    move-object/from16 v47, v0

    #@4f4
    invoke-static {}, Lcom/android/server/wifi/WifiStateMachine;->-get3()I

    #@4f7
    move-result v48

    #@4f8
    invoke-static/range {v47 .. v48}, Lcom/android/server/wifi/WifiStateMachine;->-set49(Lcom/android/server/wifi/WifiStateMachine;I)I

    #@4fb
    goto/16 :goto_0

    #@4fd
    .line 7140
    .end local v8    # "config":Landroid/net/wifi/WifiConfiguration;
    .end local v13    # "disableOthers":Z
    .end local v23    # "netId":I
    :cond_11
    const/4 v13, 0x0

    #@4fe
    .restart local v13    # "disableOthers":Z
    goto :goto_6

    #@4ff
    .line 7151
    .restart local v8    # "config":Landroid/net/wifi/WifiConfiguration;
    .restart local v23    # "netId":I
    :cond_12
    if-eqz v13, :cond_13

    #@501
    .line 7152
    move-object/from16 v0, p0

    #@503
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@505
    move-object/from16 v47, v0

    #@507
    invoke-static/range {v47 .. v47}, Lcom/android/server/wifi/WifiStateMachine;->-get98(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiAutoJoinController;

    #@50a
    move-result-object v47

    #@50b
    .line 7153
    const/16 v48, 0x1

    #@50d
    const/16 v49, 0x0

    #@50f
    .line 7152
    move-object/from16 v0, v47

    #@511
    move/from16 v1, v23

    #@513
    move/from16 v2, v48

    #@515
    move/from16 v3, v49

    #@517
    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/wifi/WifiAutoJoinController;->updateConfigurationHistory(IZZ)V

    #@51a
    .line 7156
    move-object/from16 v0, p0

    #@51c
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@51e
    move-object/from16 v47, v0

    #@520
    invoke-static/range {v47 .. v47}, Lcom/android/server/wifi/WifiStateMachine;->-get99(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigStore;

    #@523
    move-result-object v47

    #@524
    move-object/from16 v0, v47

    #@526
    move/from16 v1, v23

    #@528
    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiConfigStore;->setLastSelectedConfiguration(I)V

    #@52b
    .line 7159
    move-object/from16 v0, p0

    #@52d
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@52f
    move-object/from16 v47, v0

    #@531
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    #@534
    move-result-wide v48

    #@535
    invoke-static/range {v47 .. v49}, Lcom/android/server/wifi/WifiStateMachine;->-set2(Lcom/android/server/wifi/WifiStateMachine;J)J

    #@538
    .line 7161
    move-object/from16 v0, p0

    #@53a
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@53c
    move-object/from16 v47, v0

    #@53e
    invoke-static/range {v47 .. v47}, Lcom/android/server/wifi/WifiStateMachine;->-get100(Lcom/android/server/wifi/WifiStateMachine;)Landroid/net/wifi/WifiConnectionStatistics;

    #@541
    move-result-object v47

    #@542
    move-object/from16 v0, v47

    #@544
    iget v0, v0, Landroid/net/wifi/WifiConnectionStatistics;->numWifiManagerJoinAttempt:I

    #@546
    move/from16 v48, v0

    #@548
    add-int/lit8 v48, v48, 0x1

    #@54a
    move/from16 v0, v48

    #@54c
    move-object/from16 v1, v47

    #@54e
    iput v0, v1, Landroid/net/wifi/WifiConnectionStatistics;->numWifiManagerJoinAttempt:I

    #@550
    .line 7164
    :cond_13
    move-object/from16 v0, p0

    #@552
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@554
    move-object/from16 v47, v0

    #@556
    const-string/jumbo v48, "any"

    #@559
    move-object/from16 v0, v47

    #@55b
    move/from16 v1, v23

    #@55d
    move-object/from16 v2, v48

    #@55f
    invoke-virtual {v0, v1, v2}, Lcom/android/server/wifi/WifiStateMachine;->autoRoamSetBSSID(ILjava/lang/String;)V

    #@562
    .line 7166
    move-object/from16 v0, p1

    #@564
    iget v0, v0, Landroid/os/Message;->sendingUid:I

    #@566
    move/from16 v41, v0

    #@568
    .line 7167
    .local v41, "uid":I
    move-object/from16 v0, p0

    #@56a
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@56c
    move-object/from16 v47, v0

    #@56e
    invoke-static/range {v47 .. v47}, Lcom/android/server/wifi/WifiStateMachine;->-get99(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigStore;

    #@571
    move-result-object v47

    #@572
    move-object/from16 v0, v47

    #@574
    move/from16 v1, v23

    #@576
    move/from16 v2, v41

    #@578
    invoke-virtual {v0, v1, v13, v2}, Lcom/android/server/wifi/WifiConfigStore;->enableNetwork(IZI)Z

    #@57b
    move-result v26

    #@57c
    .line 7168
    .restart local v26    # "ok":Z
    if-nez v26, :cond_14

    #@57e
    .line 7169
    move-object/from16 v0, p0

    #@580
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@582
    move-object/from16 v47, v0

    #@584
    invoke-static {}, Lcom/android/server/wifi/WifiStateMachine;->-get3()I

    #@587
    move-result v48

    #@588
    invoke-static/range {v47 .. v48}, Lcom/android/server/wifi/WifiStateMachine;->-set49(Lcom/android/server/wifi/WifiStateMachine;I)I

    #@58b
    .line 7172
    :cond_14
    move-object/from16 v0, p0

    #@58d
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@58f
    move-object/from16 v48, v0

    #@591
    move-object/from16 v0, p1

    #@593
    iget v0, v0, Landroid/os/Message;->what:I

    #@595
    move/from16 v49, v0

    #@597
    if-eqz v26, :cond_15

    #@599
    const/16 v47, 0x1

    #@59b
    :goto_7
    move-object/from16 v0, v48

    #@59d
    move-object/from16 v1, p1

    #@59f
    move/from16 v2, v49

    #@5a1
    move/from16 v3, v47

    #@5a3
    invoke-static {v0, v1, v2, v3}, Lcom/android/server/wifi/WifiStateMachine;->-wrap37(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;II)V

    #@5a6
    goto/16 :goto_0

    #@5a8
    :cond_15
    const/16 v47, -0x1

    #@5aa
    goto :goto_7

    #@5ab
    .line 7175
    .end local v8    # "config":Landroid/net/wifi/WifiConfiguration;
    .end local v13    # "disableOthers":Z
    .end local v23    # "netId":I
    .end local v26    # "ok":Z
    .end local v41    # "uid":I
    :sswitch_8
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    #@5ae
    move-result-wide v38

    #@5af
    .line 7176
    .local v38, "time":J
    move-object/from16 v0, p0

    #@5b1
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@5b3
    move-object/from16 v47, v0

    #@5b5
    invoke-static/range {v47 .. v47}, Lcom/android/server/wifi/WifiStateMachine;->-get50(Lcom/android/server/wifi/WifiStateMachine;)J

    #@5b8
    move-result-wide v48

    #@5b9
    sub-long v48, v38, v48

    #@5bb
    const-wide/32 v50, 0x927c0

    #@5be
    cmp-long v47, v48, v50

    #@5c0
    if-lez v47, :cond_3

    #@5c2
    .line 7177
    move-object/from16 v0, p0

    #@5c4
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@5c6
    move-object/from16 v47, v0

    #@5c8
    invoke-static/range {v47 .. v47}, Lcom/android/server/wifi/WifiStateMachine;->-get99(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigStore;

    #@5cb
    move-result-object v47

    #@5cc
    invoke-virtual/range {v47 .. v47}, Lcom/android/server/wifi/WifiConfigStore;->enableAllNetworks()V

    #@5cf
    .line 7178
    move-object/from16 v0, p0

    #@5d1
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@5d3
    move-object/from16 v47, v0

    #@5d5
    move-object/from16 v0, v47

    #@5d7
    move-wide/from16 v1, v38

    #@5d9
    invoke-static {v0, v1, v2}, Lcom/android/server/wifi/WifiStateMachine;->-set29(Lcom/android/server/wifi/WifiStateMachine;J)J

    #@5dc
    goto/16 :goto_0

    #@5de
    .line 7182
    .end local v38    # "time":J
    :sswitch_9
    move-object/from16 v0, p0

    #@5e0
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@5e2
    move-object/from16 v47, v0

    #@5e4
    invoke-static/range {v47 .. v47}, Lcom/android/server/wifi/WifiStateMachine;->-get99(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigStore;

    #@5e7
    move-result-object v47

    #@5e8
    move-object/from16 v0, p1

    #@5ea
    iget v0, v0, Landroid/os/Message;->arg1:I

    #@5ec
    move/from16 v48, v0

    #@5ee
    .line 7183
    const/16 v49, 0x5

    #@5f0
    .line 7182
    invoke-virtual/range {v47 .. v49}, Lcom/android/server/wifi/WifiConfigStore;->disableNetwork(II)Z

    #@5f3
    move-result v47

    #@5f4
    if-eqz v47, :cond_16

    #@5f6
    .line 7184
    move-object/from16 v0, p0

    #@5f8
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@5fa
    move-object/from16 v47, v0

    #@5fc
    const v48, 0x25013

    #@5ff
    move-object/from16 v0, v47

    #@601
    move-object/from16 v1, p1

    #@603
    move/from16 v2, v48

    #@605
    invoke-static {v0, v1, v2}, Lcom/android/server/wifi/WifiStateMachine;->-wrap36(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;I)V

    #@608
    goto/16 :goto_0

    #@60a
    .line 7186
    :cond_16
    move-object/from16 v0, p0

    #@60c
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@60e
    move-object/from16 v47, v0

    #@610
    invoke-static {}, Lcom/android/server/wifi/WifiStateMachine;->-get3()I

    #@613
    move-result v48

    #@614
    invoke-static/range {v47 .. v48}, Lcom/android/server/wifi/WifiStateMachine;->-set49(Lcom/android/server/wifi/WifiStateMachine;I)I

    #@617
    .line 7187
    move-object/from16 v0, p0

    #@619
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@61b
    move-object/from16 v47, v0

    #@61d
    const v48, 0x25012

    #@620
    .line 7188
    const/16 v49, 0x0

    #@622
    .line 7187
    move-object/from16 v0, v47

    #@624
    move-object/from16 v1, p1

    #@626
    move/from16 v2, v48

    #@628
    move/from16 v3, v49

    #@62a
    invoke-static {v0, v1, v2, v3}, Lcom/android/server/wifi/WifiStateMachine;->-wrap37(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;II)V

    #@62d
    goto/16 :goto_0

    #@62f
    .line 7192
    :sswitch_a
    move-object/from16 v0, p0

    #@631
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@633
    move-object/from16 v47, v0

    #@635
    invoke-static/range {v47 .. v47}, Lcom/android/server/wifi/WifiStateMachine;->-get99(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigStore;

    #@638
    move-result-object v48

    #@639
    move-object/from16 v0, p1

    #@63b
    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@63d
    move-object/from16 v47, v0

    #@63f
    check-cast v47, Ljava/lang/String;

    #@641
    move-object/from16 v0, v48

    #@643
    move-object/from16 v1, v47

    #@645
    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiConfigStore;->disableEphemeralNetwork(Ljava/lang/String;)Landroid/net/wifi/WifiConfiguration;

    #@648
    move-result-object v8

    #@649
    .line 7193
    .restart local v8    # "config":Landroid/net/wifi/WifiConfiguration;
    if-eqz v8, :cond_3

    #@64b
    .line 7194
    iget v0, v8, Landroid/net/wifi/WifiConfiguration;->networkId:I

    #@64d
    move/from16 v47, v0

    #@64f
    move-object/from16 v0, p0

    #@651
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@653
    move-object/from16 v48, v0

    #@655
    invoke-static/range {v48 .. v48}, Lcom/android/server/wifi/WifiStateMachine;->-get51(Lcom/android/server/wifi/WifiStateMachine;)I

    #@658
    move-result v48

    #@659
    move/from16 v0, v47

    #@65b
    move/from16 v1, v48

    #@65d
    if-ne v0, v1, :cond_3

    #@65f
    .line 7196
    move-object/from16 v0, p0

    #@661
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@663
    move-object/from16 v47, v0

    #@665
    const v48, 0x20049

    #@668
    invoke-virtual/range {v47 .. v48}, Lcom/android/server/wifi/WifiStateMachine;->sendMessage(I)V

    #@66b
    goto/16 :goto_0

    #@66d
    .line 7201
    .end local v8    # "config":Landroid/net/wifi/WifiConfiguration;
    :sswitch_b
    move-object/from16 v0, p0

    #@66f
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@671
    move-object/from16 v47, v0

    #@673
    invoke-static/range {v47 .. v47}, Lcom/android/server/wifi/WifiStateMachine;->-get99(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigStore;

    #@676
    move-result-object v48

    #@677
    move-object/from16 v0, p1

    #@679
    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@67b
    move-object/from16 v47, v0

    #@67d
    check-cast v47, Ljava/lang/String;

    #@67f
    move-object/from16 v0, v48

    #@681
    move-object/from16 v1, v47

    #@683
    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiConfigStore;->blackListBssid(Ljava/lang/String;)V

    #@686
    goto/16 :goto_0

    #@688
    .line 7204
    :sswitch_c
    move-object/from16 v0, p0

    #@68a
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@68c
    move-object/from16 v47, v0

    #@68e
    invoke-static/range {v47 .. v47}, Lcom/android/server/wifi/WifiStateMachine;->-get99(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigStore;

    #@691
    move-result-object v47

    #@692
    invoke-virtual/range {v47 .. v47}, Lcom/android/server/wifi/WifiConfigStore;->clearBssidBlacklist()V

    #@695
    goto/16 :goto_0

    #@697
    .line 7207
    :sswitch_d
    move-object/from16 v0, p0

    #@699
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@69b
    move-object/from16 v47, v0

    #@69d
    invoke-static/range {v47 .. v47}, Lcom/android/server/wifi/WifiStateMachine;->-get99(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigStore;

    #@6a0
    move-result-object v47

    #@6a1
    invoke-virtual/range {v47 .. v47}, Lcom/android/server/wifi/WifiConfigStore;->saveConfig()Z

    #@6a4
    move-result v26

    #@6a5
    .line 7209
    .restart local v26    # "ok":Z
    invoke-static {}, Lcom/android/server/wifi/WifiStateMachine;->-get0()Z

    #@6a8
    move-result v47

    #@6a9
    if-eqz v47, :cond_17

    #@6ab
    move-object/from16 v0, p0

    #@6ad
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@6af
    move-object/from16 v47, v0

    #@6b1
    new-instance v48, Ljava/lang/StringBuilder;

    #@6b3
    invoke-direct/range {v48 .. v48}, Ljava/lang/StringBuilder;-><init>()V

    #@6b6
    const-string/jumbo v49, "did save config "

    #@6b9
    invoke-virtual/range {v48 .. v49}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6bc
    move-result-object v48

    #@6bd
    move-object/from16 v0, v48

    #@6bf
    move/from16 v1, v26

    #@6c1
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@6c4
    move-result-object v48

    #@6c5
    invoke-virtual/range {v48 .. v48}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@6c8
    move-result-object v48

    #@6c9
    invoke-virtual/range {v47 .. v48}, Lcom/android/server/wifi/WifiStateMachine;->logd(Ljava/lang/String;)V

    #@6cc
    .line 7210
    :cond_17
    move-object/from16 v0, p0

    #@6ce
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@6d0
    move-object/from16 v48, v0

    #@6d2
    if-eqz v26, :cond_18

    #@6d4
    const/16 v47, 0x1

    #@6d6
    :goto_8
    const v49, 0x2003a

    #@6d9
    move-object/from16 v0, v48

    #@6db
    move-object/from16 v1, p1

    #@6dd
    move/from16 v2, v49

    #@6df
    move/from16 v3, v47

    #@6e1
    invoke-static {v0, v1, v2, v3}, Lcom/android/server/wifi/WifiStateMachine;->-wrap37(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;II)V

    #@6e4
    .line 7214
    const-string/jumbo v47, "backup"

    #@6e7
    invoke-static/range {v47 .. v47}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    #@6ea
    move-result-object v47

    #@6eb
    .line 7213
    invoke-static/range {v47 .. v47}, Landroid/app/backup/IBackupManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/backup/IBackupManager;

    #@6ee
    move-result-object v17

    #@6ef
    .line 7215
    .local v17, "ibm":Landroid/app/backup/IBackupManager;
    if-eqz v17, :cond_3

    #@6f1
    .line 7217
    :try_start_2
    const-string/jumbo v47, "com.android.providers.settings"

    #@6f4
    move-object/from16 v0, v17

    #@6f6
    move-object/from16 v1, v47

    #@6f8
    invoke-interface {v0, v1}, Landroid/app/backup/IBackupManager;->dataChanged(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    #@6fb
    goto/16 :goto_0

    #@6fd
    .line 7218
    :catch_0
    move-exception v14

    #@6fe
    .local v14, "e":Ljava/lang/Exception;
    goto/16 :goto_0

    #@700
    .line 7210
    .end local v14    # "e":Ljava/lang/Exception;
    .end local v17    # "ibm":Landroid/app/backup/IBackupManager;
    :cond_18
    const/16 v47, -0x1

    #@702
    goto :goto_8

    #@703
    .line 7224
    .end local v26    # "ok":Z
    :sswitch_e
    move-object/from16 v0, p0

    #@705
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@707
    move-object/from16 v47, v0

    #@709
    move-object/from16 v0, p1

    #@70b
    iget v0, v0, Landroid/os/Message;->what:I

    #@70d
    move/from16 v48, v0

    #@70f
    .line 7225
    move-object/from16 v0, p0

    #@711
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@713
    move-object/from16 v49, v0

    #@715
    invoke-static/range {v49 .. v49}, Lcom/android/server/wifi/WifiStateMachine;->-get99(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigStore;

    #@718
    move-result-object v49

    #@719
    invoke-virtual/range {v49 .. v49}, Lcom/android/server/wifi/WifiConfigStore;->getConfiguredNetworks()Ljava/util/List;

    #@71c
    move-result-object v49

    #@71d
    .line 7224
    move-object/from16 v0, v47

    #@71f
    move-object/from16 v1, p1

    #@721
    move/from16 v2, v48

    #@723
    move-object/from16 v3, v49

    #@725
    invoke-static {v0, v1, v2, v3}, Lcom/android/server/wifi/WifiStateMachine;->-wrap38(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;ILjava/lang/Object;)V

    #@728
    goto/16 :goto_0

    #@72a
    .line 7228
    :sswitch_f
    move-object/from16 v0, p1

    #@72c
    iget v0, v0, Landroid/os/Message;->arg2:I

    #@72e
    move/from16 v24, v0

    #@730
    .line 7229
    .local v24, "networkId":I
    const/16 v19, 0x0

    #@732
    .line 7230
    .local v19, "identitySent":Z
    const/4 v15, -0x1

    #@733
    .line 7232
    .local v15, "eapMethod":I
    move-object/from16 v0, p0

    #@735
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@737
    move-object/from16 v47, v0

    #@739
    invoke-static/range {v47 .. v47}, Lcom/android/server/wifi/WifiStateMachine;->-get110(Lcom/android/server/wifi/WifiStateMachine;)Landroid/net/wifi/WifiConfiguration;

    #@73c
    move-result-object v47

    #@73d
    if-eqz v47, :cond_19

    #@73f
    .line 7233
    move-object/from16 v0, p0

    #@741
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@743
    move-object/from16 v47, v0

    #@745
    invoke-static/range {v47 .. v47}, Lcom/android/server/wifi/WifiStateMachine;->-get110(Lcom/android/server/wifi/WifiStateMachine;)Landroid/net/wifi/WifiConfiguration;

    #@748
    move-result-object v47

    #@749
    move-object/from16 v0, v47

    #@74b
    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    #@74d
    move-object/from16 v47, v0

    #@74f
    if-eqz v47, :cond_19

    #@751
    .line 7234
    move-object/from16 v0, p0

    #@753
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@755
    move-object/from16 v47, v0

    #@757
    invoke-static/range {v47 .. v47}, Lcom/android/server/wifi/WifiStateMachine;->-get110(Lcom/android/server/wifi/WifiStateMachine;)Landroid/net/wifi/WifiConfiguration;

    #@75a
    move-result-object v47

    #@75b
    move-object/from16 v0, v47

    #@75d
    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    #@75f
    move-object/from16 v47, v0

    #@761
    invoke-virtual/range {v47 .. v47}, Landroid/net/wifi/WifiEnterpriseConfig;->getEapMethod()I

    #@764
    move-result v15

    #@765
    .line 7238
    :cond_19
    move-object/from16 v0, p0

    #@767
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@769
    move-object/from16 v47, v0

    #@76b
    invoke-static/range {v47 .. v47}, Lcom/android/server/wifi/WifiStateMachine;->-get110(Lcom/android/server/wifi/WifiStateMachine;)Landroid/net/wifi/WifiConfiguration;

    #@76e
    move-result-object v47

    #@76f
    if-eqz v47, :cond_1c

    #@771
    .line 7239
    move-object/from16 v0, p0

    #@773
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@775
    move-object/from16 v47, v0

    #@777
    invoke-static/range {v47 .. v47}, Lcom/android/server/wifi/WifiStateMachine;->-get110(Lcom/android/server/wifi/WifiStateMachine;)Landroid/net/wifi/WifiConfiguration;

    #@77a
    move-result-object v47

    #@77b
    move-object/from16 v0, v47

    #@77d
    iget v0, v0, Landroid/net/wifi/WifiConfiguration;->networkId:I

    #@77f
    move/from16 v47, v0

    #@781
    move/from16 v0, v47

    #@783
    move/from16 v1, v24

    #@785
    if-ne v0, v1, :cond_1c

    #@787
    .line 7240
    move-object/from16 v0, p0

    #@789
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@78b
    move-object/from16 v47, v0

    #@78d
    invoke-static/range {v47 .. v47}, Lcom/android/server/wifi/WifiStateMachine;->-get110(Lcom/android/server/wifi/WifiStateMachine;)Landroid/net/wifi/WifiConfiguration;

    #@790
    move-result-object v47

    #@791
    move-object/from16 v0, v47

    #@793
    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    #@795
    move-object/from16 v47, v0

    #@797
    .line 7241
    const/16 v48, 0x3

    #@799
    .line 7240
    invoke-virtual/range {v47 .. v48}, Ljava/util/BitSet;->get(I)Z

    #@79c
    move-result v47

    #@79d
    .line 7238
    if-eqz v47, :cond_1c

    #@79f
    .line 7242
    const/16 v47, 0x4

    #@7a1
    move/from16 v0, v47

    #@7a3
    if-eq v15, v0, :cond_1a

    #@7a5
    .line 7243
    const/16 v47, 0x5

    #@7a7
    move/from16 v0, v47

    #@7a9
    if-ne v15, v0, :cond_1e

    #@7ab
    .line 7246
    :cond_1a
    :goto_9
    move-object/from16 v0, p0

    #@7ad
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@7af
    move-object/from16 v47, v0

    #@7b1
    invoke-static/range {v47 .. v47}, Lcom/android/server/wifi/WifiStateMachine;->-get20(Lcom/android/server/wifi/WifiStateMachine;)Landroid/content/Context;

    #@7b4
    move-result-object v47

    #@7b5
    const-string/jumbo v48, "phone"

    #@7b8
    invoke-virtual/range {v47 .. v48}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    #@7bb
    move-result-object v37

    #@7bc
    .line 7245
    check-cast v37, Landroid/telephony/TelephonyManager;

    #@7be
    .line 7247
    .local v37, "tm":Landroid/telephony/TelephonyManager;
    if-eqz v37, :cond_1c

    #@7c0
    .line 7248
    invoke-virtual/range {v37 .. v37}, Landroid/telephony/TelephonyManager;->getSubscriberId()Ljava/lang/String;

    #@7c3
    move-result-object v20

    #@7c4
    .line 7249
    .local v20, "imsi":Ljava/lang/String;
    const-string/jumbo v22, ""

    #@7c7
    .line 7251
    .local v22, "mccMnc":Ljava/lang/String;
    invoke-virtual/range {v37 .. v37}, Landroid/telephony/TelephonyManager;->getSimState()I

    #@7ca
    move-result v47

    #@7cb
    const/16 v48, 0x5

    #@7cd
    move/from16 v0, v47

    #@7cf
    move/from16 v1, v48

    #@7d1
    if-ne v0, v1, :cond_1b

    #@7d3
    .line 7252
    invoke-virtual/range {v37 .. v37}, Landroid/telephony/TelephonyManager;->getSimOperator()Ljava/lang/String;

    #@7d6
    move-result-object v22

    #@7d7
    .line 7254
    :cond_1b
    move-object/from16 v0, p0

    #@7d9
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@7db
    move-object/from16 v47, v0

    #@7dd
    move-object/from16 v0, v47

    #@7df
    move-object/from16 v1, v20

    #@7e1
    move-object/from16 v2, v22

    #@7e3
    invoke-static {v0, v15, v1, v2}, Lcom/android/server/wifi/WifiStateMachine;->-wrap16(Lcom/android/server/wifi/WifiStateMachine;ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@7e6
    move-result-object v18

    #@7e7
    .line 7256
    .local v18, "identity":Ljava/lang/String;
    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->isEmpty()Z

    #@7ea
    move-result v47

    #@7eb
    if-nez v47, :cond_1c

    #@7ed
    .line 7257
    move-object/from16 v0, p0

    #@7ef
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@7f1
    move-object/from16 v47, v0

    #@7f3
    invoke-static/range {v47 .. v47}, Lcom/android/server/wifi/WifiStateMachine;->-get105(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiNative;

    #@7f6
    move-result-object v47

    #@7f7
    move-object/from16 v0, v47

    #@7f9
    move/from16 v1, v24

    #@7fb
    move-object/from16 v2, v18

    #@7fd
    invoke-virtual {v0, v1, v2}, Lcom/android/server/wifi/WifiNative;->simIdentityResponse(ILjava/lang/String;)Z

    #@800
    .line 7258
    const/16 v19, 0x1

    #@802
    .line 7262
    .end local v18    # "identity":Ljava/lang/String;
    .end local v20    # "imsi":Ljava/lang/String;
    .end local v22    # "mccMnc":Ljava/lang/String;
    .end local v37    # "tm":Landroid/telephony/TelephonyManager;
    :cond_1c
    if-nez v19, :cond_3

    #@804
    .line 7264
    move-object/from16 v0, p1

    #@806
    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@808
    move-object/from16 v34, v0

    #@80a
    check-cast v34, Ljava/lang/String;

    #@80c
    .line 7265
    .local v34, "ssid":Ljava/lang/String;
    move-object/from16 v0, p0

    #@80e
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@810
    move-object/from16 v47, v0

    #@812
    invoke-static/range {v47 .. v47}, Lcom/android/server/wifi/WifiStateMachine;->-get110(Lcom/android/server/wifi/WifiStateMachine;)Landroid/net/wifi/WifiConfiguration;

    #@815
    move-result-object v47

    #@816
    if-eqz v47, :cond_1d

    #@818
    if-eqz v34, :cond_1d

    #@81a
    .line 7266
    move-object/from16 v0, p0

    #@81c
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@81e
    move-object/from16 v47, v0

    #@820
    invoke-static/range {v47 .. v47}, Lcom/android/server/wifi/WifiStateMachine;->-get110(Lcom/android/server/wifi/WifiStateMachine;)Landroid/net/wifi/WifiConfiguration;

    #@823
    move-result-object v47

    #@824
    move-object/from16 v0, v47

    #@826
    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    #@828
    move-object/from16 v47, v0

    #@82a
    if-eqz v47, :cond_1d

    #@82c
    .line 7267
    move-object/from16 v0, p0

    #@82e
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@830
    move-object/from16 v47, v0

    #@832
    invoke-static/range {v47 .. v47}, Lcom/android/server/wifi/WifiStateMachine;->-get110(Lcom/android/server/wifi/WifiStateMachine;)Landroid/net/wifi/WifiConfiguration;

    #@835
    move-result-object v47

    #@836
    move-object/from16 v0, v47

    #@838
    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    #@83a
    move-object/from16 v47, v0

    #@83c
    new-instance v48, Ljava/lang/StringBuilder;

    #@83e
    invoke-direct/range {v48 .. v48}, Ljava/lang/StringBuilder;-><init>()V

    #@841
    const-string/jumbo v49, "\""

    #@844
    invoke-virtual/range {v48 .. v49}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@847
    move-result-object v48

    #@848
    move-object/from16 v0, v48

    #@84a
    move-object/from16 v1, v34

    #@84c
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@84f
    move-result-object v48

    #@850
    const-string/jumbo v49, "\""

    #@853
    invoke-virtual/range {v48 .. v49}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@856
    move-result-object v48

    #@857
    invoke-virtual/range {v48 .. v48}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@85a
    move-result-object v48

    #@85b
    invoke-virtual/range {v47 .. v48}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@85e
    move-result v47

    #@85f
    .line 7265
    if-eqz v47, :cond_1d

    #@861
    .line 7268
    move-object/from16 v0, p0

    #@863
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@865
    move-object/from16 v47, v0

    #@867
    invoke-static/range {v47 .. v47}, Lcom/android/server/wifi/WifiStateMachine;->-get99(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigStore;

    #@86a
    move-result-object v47

    #@86b
    .line 7269
    move-object/from16 v0, p0

    #@86d
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@86f
    move-object/from16 v48, v0

    #@871
    invoke-static/range {v48 .. v48}, Lcom/android/server/wifi/WifiStateMachine;->-get110(Lcom/android/server/wifi/WifiStateMachine;)Landroid/net/wifi/WifiConfiguration;

    #@874
    move-result-object v48

    #@875
    move-object/from16 v0, v48

    #@877
    iget v0, v0, Landroid/net/wifi/WifiConfiguration;->networkId:I

    #@879
    move/from16 v48, v0

    #@87b
    .line 7270
    const-string/jumbo v49, "AUTH_FAILED no identity"

    #@87e
    .line 7269
    const/16 v50, 0x0

    #@880
    .line 7270
    const/16 v51, 0x0

    #@882
    .line 7268
    move-object/from16 v0, v47

    #@884
    move/from16 v1, v48

    #@886
    move/from16 v2, v50

    #@888
    move-object/from16 v3, v49

    #@88a
    move-object/from16 v4, v51

    #@88c
    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/server/wifi/WifiConfigStore;->handleSSIDStateChange(IZLjava/lang/String;Ljava/lang/String;)V

    #@88f
    .line 7274
    :cond_1d
    move-object/from16 v0, p0

    #@891
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@893
    move-object/from16 v47, v0

    #@895
    invoke-static/range {v47 .. v47}, Lcom/android/server/wifi/WifiStateMachine;->-get99(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigStore;

    #@898
    move-result-object v47

    #@899
    .line 7275
    const/16 v48, -0x1

    #@89b
    .line 7274
    invoke-virtual/range {v47 .. v48}, Lcom/android/server/wifi/WifiConfigStore;->setLastSelectedConfiguration(I)V

    #@89e
    .line 7276
    move-object/from16 v0, p0

    #@8a0
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@8a2
    move-object/from16 v47, v0

    #@8a4
    invoke-static/range {v47 .. v47}, Lcom/android/server/wifi/WifiStateMachine;->-get105(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiNative;

    #@8a7
    move-result-object v47

    #@8a8
    invoke-virtual/range {v47 .. v47}, Lcom/android/server/wifi/WifiNative;->disconnect()Z

    #@8ab
    goto/16 :goto_0

    #@8ad
    .line 7244
    .end local v34    # "ssid":Ljava/lang/String;
    :cond_1e
    const/16 v47, 0x6

    #@8af
    move/from16 v0, v47

    #@8b1
    if-ne v15, v0, :cond_1c

    #@8b3
    goto/16 :goto_9

    #@8b5
    .line 7280
    .end local v15    # "eapMethod":I
    .end local v19    # "identitySent":Z
    .end local v24    # "networkId":I
    :sswitch_10
    move-object/from16 v0, p0

    #@8b7
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@8b9
    move-object/from16 v47, v0

    #@8bb
    const-string/jumbo v48, "Received SUP_REQUEST_SIM_AUTH"

    #@8be
    invoke-virtual/range {v47 .. v48}, Lcom/android/server/wifi/WifiStateMachine;->logd(Ljava/lang/String;)V

    #@8c1
    .line 7281
    move-object/from16 v0, p1

    #@8c3
    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@8c5
    move-object/from16 v29, v0

    #@8c7
    check-cast v29, Lcom/android/server/wifi/WifiStateMachine$SimAuthRequestData;

    #@8c9
    .line 7282
    .local v29, "requestData":Lcom/android/server/wifi/WifiStateMachine$SimAuthRequestData;
    if-eqz v29, :cond_21

    #@8cb
    .line 7283
    move-object/from16 v0, v29

    #@8cd
    iget v0, v0, Lcom/android/server/wifi/WifiStateMachine$SimAuthRequestData;->protocol:I

    #@8cf
    move/from16 v47, v0

    #@8d1
    const/16 v48, 0x4

    #@8d3
    move/from16 v0, v47

    #@8d5
    move/from16 v1, v48

    #@8d7
    if-ne v0, v1, :cond_1f

    #@8d9
    .line 7284
    move-object/from16 v0, p0

    #@8db
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@8dd
    move-object/from16 v47, v0

    #@8df
    move-object/from16 v0, v47

    #@8e1
    move-object/from16 v1, v29

    #@8e3
    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiStateMachine;->handleGsmAuthRequest(Lcom/android/server/wifi/WifiStateMachine$SimAuthRequestData;)V

    #@8e6
    goto/16 :goto_0

    #@8e8
    .line 7285
    :cond_1f
    move-object/from16 v0, v29

    #@8ea
    iget v0, v0, Lcom/android/server/wifi/WifiStateMachine$SimAuthRequestData;->protocol:I

    #@8ec
    move/from16 v47, v0

    #@8ee
    const/16 v48, 0x5

    #@8f0
    move/from16 v0, v47

    #@8f2
    move/from16 v1, v48

    #@8f4
    if-eq v0, v1, :cond_20

    #@8f6
    .line 7286
    move-object/from16 v0, v29

    #@8f8
    iget v0, v0, Lcom/android/server/wifi/WifiStateMachine$SimAuthRequestData;->protocol:I

    #@8fa
    move/from16 v47, v0

    #@8fc
    const/16 v48, 0x6

    #@8fe
    move/from16 v0, v47

    #@900
    move/from16 v1, v48

    #@902
    if-ne v0, v1, :cond_3

    #@904
    .line 7287
    :cond_20
    move-object/from16 v0, p0

    #@906
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@908
    move-object/from16 v47, v0

    #@90a
    move-object/from16 v0, v47

    #@90c
    move-object/from16 v1, v29

    #@90e
    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiStateMachine;->handle3GAuthRequest(Lcom/android/server/wifi/WifiStateMachine$SimAuthRequestData;)V

    #@911
    goto/16 :goto_0

    #@913
    .line 7290
    :cond_21
    move-object/from16 v0, p0

    #@915
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@917
    move-object/from16 v47, v0

    #@919
    const-string/jumbo v48, "Invalid sim auth request"

    #@91c
    invoke-virtual/range {v47 .. v48}, Lcom/android/server/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V

    #@91f
    goto/16 :goto_0

    #@921
    .line 7294
    .end local v29    # "requestData":Lcom/android/server/wifi/WifiStateMachine$SimAuthRequestData;
    :sswitch_11
    move-object/from16 v0, p0

    #@923
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@925
    move-object/from16 v47, v0

    #@927
    move-object/from16 v0, p1

    #@929
    iget v0, v0, Landroid/os/Message;->what:I

    #@92b
    move/from16 v48, v0

    #@92d
    .line 7295
    move-object/from16 v0, p0

    #@92f
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@931
    move-object/from16 v49, v0

    #@933
    invoke-static/range {v49 .. v49}, Lcom/android/server/wifi/WifiStateMachine;->-get99(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigStore;

    #@936
    move-result-object v49

    #@937
    invoke-virtual/range {v49 .. v49}, Lcom/android/server/wifi/WifiConfigStore;->getPrivilegedConfiguredNetworks()Ljava/util/List;

    #@93a
    move-result-object v49

    #@93b
    .line 7294
    move-object/from16 v0, v47

    #@93d
    move-object/from16 v1, p1

    #@93f
    move/from16 v2, v48

    #@941
    move-object/from16 v3, v49

    #@943
    invoke-static {v0, v1, v2, v3}, Lcom/android/server/wifi/WifiStateMachine;->-wrap38(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;ILjava/lang/Object;)V

    #@946
    goto/16 :goto_0

    #@948
    .line 7298
    :sswitch_12
    move-object/from16 v0, p0

    #@94a
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@94c
    move-object/from16 v48, v0

    #@94e
    move-object/from16 v0, p1

    #@950
    iget v0, v0, Landroid/os/Message;->what:I

    #@952
    move/from16 v49, v0

    #@954
    .line 7299
    move-object/from16 v0, p0

    #@956
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@958
    move-object/from16 v47, v0

    #@95a
    invoke-static/range {v47 .. v47}, Lcom/android/server/wifi/WifiStateMachine;->-get99(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigStore;

    #@95d
    move-result-object v50

    #@95e
    move-object/from16 v0, p1

    #@960
    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@962
    move-object/from16 v47, v0

    #@964
    check-cast v47, Landroid/net/wifi/ScanResult;

    #@966
    move-object/from16 v0, v50

    #@968
    move-object/from16 v1, v47

    #@96a
    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiConfigStore;->getMatchingConfig(Landroid/net/wifi/ScanResult;)Landroid/net/wifi/WifiConfiguration;

    #@96d
    move-result-object v47

    #@96e
    .line 7298
    move-object/from16 v0, v48

    #@970
    move-object/from16 v1, p1

    #@972
    move/from16 v2, v49

    #@974
    move-object/from16 v3, v47

    #@976
    invoke-static {v0, v1, v2, v3}, Lcom/android/server/wifi/WifiStateMachine;->-wrap38(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;ILjava/lang/Object;)V

    #@979
    goto/16 :goto_0

    #@97b
    .line 7303
    :sswitch_13
    move-object/from16 v0, p0

    #@97d
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@97f
    move-object/from16 v47, v0

    #@981
    invoke-static/range {v47 .. v47}, Lcom/android/server/wifi/WifiStateMachine;->-get99(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigStore;

    #@984
    move-result-object v47

    #@985
    .line 7304
    const/16 v48, -0x1

    #@987
    .line 7303
    invoke-virtual/range {v47 .. v48}, Lcom/android/server/wifi/WifiConfigStore;->setLastSelectedConfiguration(I)V

    #@98a
    .line 7305
    move-object/from16 v0, p0

    #@98c
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@98e
    move-object/from16 v47, v0

    #@990
    invoke-static/range {v47 .. v47}, Lcom/android/server/wifi/WifiStateMachine;->-get105(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiNative;

    #@993
    move-result-object v47

    #@994
    invoke-virtual/range {v47 .. v47}, Lcom/android/server/wifi/WifiNative;->disconnect()Z

    #@997
    goto/16 :goto_0

    #@999
    .line 7308
    :sswitch_14
    move-object/from16 v0, p0

    #@99b
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@99d
    move-object/from16 v47, v0

    #@99f
    invoke-static/range {v47 .. v47}, Lcom/android/server/wifi/WifiStateMachine;->-get98(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiAutoJoinController;

    #@9a2
    move-result-object v47

    #@9a3
    invoke-virtual/range {v47 .. v47}, Lcom/android/server/wifi/WifiAutoJoinController;->attemptAutoJoin()Z

    #@9a6
    goto/16 :goto_0

    #@9a8
    .line 7311
    :sswitch_15
    move-object/from16 v0, p0

    #@9aa
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@9ac
    move-object/from16 v47, v0

    #@9ae
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    #@9b1
    move-result-wide v48

    #@9b2
    invoke-static/range {v47 .. v49}, Lcom/android/server/wifi/WifiStateMachine;->-set2(Lcom/android/server/wifi/WifiStateMachine;J)J

    #@9b5
    .line 7312
    move-object/from16 v0, p0

    #@9b7
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@9b9
    move-object/from16 v47, v0

    #@9bb
    invoke-static/range {v47 .. v47}, Lcom/android/server/wifi/WifiStateMachine;->-get105(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiNative;

    #@9be
    move-result-object v47

    #@9bf
    invoke-virtual/range {v47 .. v47}, Lcom/android/server/wifi/WifiNative;->reassociate()Z

    #@9c2
    goto/16 :goto_0

    #@9c4
    .line 7315
    :sswitch_16
    move-object/from16 v0, p0

    #@9c6
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@9c8
    move-object/from16 v47, v0

    #@9ca
    invoke-static/range {v47 .. v47}, Lcom/android/server/wifi/WifiStateMachine;->-get99(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigStore;

    #@9cd
    move-result-object v47

    #@9ce
    invoke-virtual/range {v47 .. v47}, Lcom/android/server/wifi/WifiConfigStore;->needsUnlockedKeyStore()Z

    #@9d1
    move-result v47

    #@9d2
    if-eqz v47, :cond_3

    #@9d4
    .line 7316
    move-object/from16 v0, p0

    #@9d6
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@9d8
    move-object/from16 v47, v0

    #@9da
    const-string/jumbo v48, "Reconnecting to give a chance to un-connected TLS networks"

    #@9dd
    invoke-virtual/range {v47 .. v48}, Lcom/android/server/wifi/WifiStateMachine;->logd(Ljava/lang/String;)V

    #@9e0
    .line 7317
    move-object/from16 v0, p0

    #@9e2
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@9e4
    move-object/from16 v47, v0

    #@9e6
    invoke-static/range {v47 .. v47}, Lcom/android/server/wifi/WifiStateMachine;->-get105(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiNative;

    #@9e9
    move-result-object v47

    #@9ea
    invoke-virtual/range {v47 .. v47}, Lcom/android/server/wifi/WifiNative;->disconnect()Z

    #@9ed
    .line 7318
    move-object/from16 v0, p0

    #@9ef
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@9f1
    move-object/from16 v47, v0

    #@9f3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    #@9f6
    move-result-wide v48

    #@9f7
    invoke-static/range {v47 .. v49}, Lcom/android/server/wifi/WifiStateMachine;->-set2(Lcom/android/server/wifi/WifiStateMachine;J)J

    #@9fa
    .line 7319
    move-object/from16 v0, p0

    #@9fc
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@9fe
    move-object/from16 v47, v0

    #@a00
    invoke-static/range {v47 .. v47}, Lcom/android/server/wifi/WifiStateMachine;->-get105(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiNative;

    #@a03
    move-result-object v47

    #@a04
    invoke-virtual/range {v47 .. v47}, Lcom/android/server/wifi/WifiNative;->reconnect()Z

    #@a07
    goto/16 :goto_0

    #@a09
    .line 7323
    :sswitch_17
    move-object/from16 v0, p0

    #@a0b
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@a0d
    move-object/from16 v47, v0

    #@a0f
    invoke-static {}, Lcom/android/server/wifi/WifiStateMachine;->-get2()I

    #@a12
    move-result v48

    #@a13
    invoke-static/range {v47 .. v48}, Lcom/android/server/wifi/WifiStateMachine;->-set49(Lcom/android/server/wifi/WifiStateMachine;I)I

    #@a16
    .line 7324
    const/16 v47, 0x1

    #@a18
    return v47

    #@a19
    .line 7334
    :sswitch_18
    const/4 v12, 0x0

    #@a1a
    .line 7335
    .local v12, "didDisconnect":Z
    move-object/from16 v0, p0

    #@a1c
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@a1e
    move-object/from16 v47, v0

    #@a20
    invoke-static/range {v47 .. v47}, Lcom/android/server/wifi/WifiStateMachine;->-wrap15(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/internal/util/IState;

    #@a23
    move-result-object v47

    #@a24
    move-object/from16 v0, p0

    #@a26
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@a28
    move-object/from16 v48, v0

    #@a2a
    invoke-static/range {v48 .. v48}, Lcom/android/server/wifi/WifiStateMachine;->-get26(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/internal/util/State;

    #@a2d
    move-result-object v48

    #@a2e
    move-object/from16 v0, v47

    #@a30
    move-object/from16 v1, v48

    #@a32
    if-eq v0, v1, :cond_22

    #@a34
    .line 7339
    const/4 v12, 0x1

    #@a35
    .line 7340
    move-object/from16 v0, p0

    #@a37
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@a39
    move-object/from16 v47, v0

    #@a3b
    invoke-static/range {v47 .. v47}, Lcom/android/server/wifi/WifiStateMachine;->-get105(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiNative;

    #@a3e
    move-result-object v47

    #@a3f
    invoke-virtual/range {v47 .. v47}, Lcom/android/server/wifi/WifiNative;->disconnect()Z

    #@a42
    .line 7344
    :cond_22
    move-object/from16 v0, p1

    #@a44
    iget-object v8, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@a46
    check-cast v8, Landroid/net/wifi/WifiConfiguration;

    #@a48
    .line 7345
    .restart local v8    # "config":Landroid/net/wifi/WifiConfiguration;
    move-object/from16 v0, p1

    #@a4a
    iget v0, v0, Landroid/os/Message;->arg1:I

    #@a4c
    move/from16 v23, v0

    #@a4e
    .line 7346
    .restart local v23    # "netId":I
    move-object/from16 v0, p1

    #@a50
    iget v0, v0, Landroid/os/Message;->arg2:I

    #@a52
    move/from16 v32, v0

    #@a54
    .line 7347
    .local v32, "roam":I
    move-object/from16 v0, p0

    #@a56
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@a58
    move-object/from16 v47, v0

    #@a5a
    new-instance v48, Ljava/lang/StringBuilder;

    #@a5c
    invoke-direct/range {v48 .. v48}, Ljava/lang/StringBuilder;-><init>()V

    #@a5f
    const-string/jumbo v49, "CMD_AUTO_CONNECT sup state "

    #@a62
    invoke-virtual/range {v48 .. v49}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a65
    move-result-object v48

    #@a66
    .line 7348
    move-object/from16 v0, p0

    #@a68
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@a6a
    move-object/from16 v49, v0

    #@a6c
    invoke-static/range {v49 .. v49}, Lcom/android/server/wifi/WifiStateMachine;->-get79(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/SupplicantStateTracker;

    #@a6f
    move-result-object v49

    #@a70
    invoke-virtual/range {v49 .. v49}, Lcom/android/server/wifi/SupplicantStateTracker;->getSupplicantStateName()Ljava/lang/String;

    #@a73
    move-result-object v49

    #@a74
    .line 7347
    invoke-virtual/range {v48 .. v49}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a77
    move-result-object v48

    #@a78
    .line 7349
    const-string/jumbo v49, " my state "

    #@a7b
    .line 7347
    invoke-virtual/range {v48 .. v49}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a7e
    move-result-object v48

    #@a7f
    .line 7349
    move-object/from16 v0, p0

    #@a81
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@a83
    move-object/from16 v49, v0

    #@a85
    invoke-static/range {v49 .. v49}, Lcom/android/server/wifi/WifiStateMachine;->-wrap15(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/internal/util/IState;

    #@a88
    move-result-object v49

    #@a89
    invoke-interface/range {v49 .. v49}, Lcom/android/internal/util/IState;->getName()Ljava/lang/String;

    #@a8c
    move-result-object v49

    #@a8d
    .line 7347
    invoke-virtual/range {v48 .. v49}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a90
    move-result-object v48

    #@a91
    .line 7350
    const-string/jumbo v49, " nid="

    #@a94
    .line 7347
    invoke-virtual/range {v48 .. v49}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a97
    move-result-object v48

    #@a98
    .line 7350
    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    #@a9b
    move-result-object v49

    #@a9c
    .line 7347
    invoke-virtual/range {v48 .. v49}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a9f
    move-result-object v48

    #@aa0
    .line 7351
    const-string/jumbo v49, " roam="

    #@aa3
    .line 7347
    invoke-virtual/range {v48 .. v49}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@aa6
    move-result-object v48

    #@aa7
    .line 7351
    invoke-static/range {v32 .. v32}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    #@aaa
    move-result-object v49

    #@aab
    .line 7347
    invoke-virtual/range {v48 .. v49}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@aae
    move-result-object v48

    #@aaf
    invoke-virtual/range {v48 .. v48}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@ab2
    move-result-object v48

    #@ab3
    invoke-virtual/range {v47 .. v48}, Lcom/android/server/wifi/WifiStateMachine;->logd(Ljava/lang/String;)V

    #@ab6
    .line 7352
    if-nez v8, :cond_23

    #@ab8
    .line 7353
    move-object/from16 v0, p0

    #@aba
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@abc
    move-object/from16 v47, v0

    #@abe
    const-string/jumbo v48, "AUTO_CONNECT and no config, bail out..."

    #@ac1
    invoke-virtual/range {v47 .. v48}, Lcom/android/server/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V

    #@ac4
    goto/16 :goto_0

    #@ac6
    .line 7358
    :cond_23
    move-object/from16 v0, p0

    #@ac8
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@aca
    move-object/from16 v47, v0

    #@acc
    iget-object v0, v8, Landroid/net/wifi/WifiConfiguration;->BSSID:Ljava/lang/String;

    #@ace
    move-object/from16 v48, v0

    #@ad0
    move-object/from16 v0, v47

    #@ad2
    move/from16 v1, v23

    #@ad4
    move-object/from16 v2, v48

    #@ad6
    invoke-virtual {v0, v1, v2}, Lcom/android/server/wifi/WifiStateMachine;->autoRoamSetBSSID(ILjava/lang/String;)V

    #@ad9
    .line 7361
    move-object/from16 v0, p0

    #@adb
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@add
    move-object/from16 v47, v0

    #@adf
    new-instance v48, Ljava/lang/StringBuilder;

    #@ae1
    invoke-direct/range {v48 .. v48}, Ljava/lang/StringBuilder;-><init>()V

    #@ae4
    const-string/jumbo v49, "CMD_AUTO_CONNECT will save config -> "

    #@ae7
    invoke-virtual/range {v48 .. v49}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@aea
    move-result-object v48

    #@aeb
    iget-object v0, v8, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    #@aed
    move-object/from16 v49, v0

    #@aef
    invoke-virtual/range {v48 .. v49}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@af2
    move-result-object v48

    #@af3
    .line 7362
    const-string/jumbo v49, " nid="

    #@af6
    .line 7361
    invoke-virtual/range {v48 .. v49}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@af9
    move-result-object v48

    #@afa
    .line 7362
    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    #@afd
    move-result-object v49

    #@afe
    .line 7361
    invoke-virtual/range {v48 .. v49}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b01
    move-result-object v48

    #@b02
    invoke-virtual/range {v48 .. v48}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@b05
    move-result-object v48

    #@b06
    invoke-virtual/range {v47 .. v48}, Lcom/android/server/wifi/WifiStateMachine;->logd(Ljava/lang/String;)V

    #@b09
    .line 7363
    move-object/from16 v0, p0

    #@b0b
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@b0d
    move-object/from16 v47, v0

    #@b0f
    invoke-static/range {v47 .. v47}, Lcom/android/server/wifi/WifiStateMachine;->-get99(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigStore;

    #@b12
    move-result-object v47

    #@b13
    const/16 v48, -0x1

    #@b15
    move-object/from16 v0, v47

    #@b17
    move/from16 v1, v48

    #@b19
    invoke-virtual {v0, v8, v1}, Lcom/android/server/wifi/WifiConfigStore;->saveNetwork(Landroid/net/wifi/WifiConfiguration;I)Lcom/android/server/wifi/NetworkUpdateResult;

    #@b1c
    move-result-object v31

    #@b1d
    .line 7364
    .local v31, "result":Lcom/android/server/wifi/NetworkUpdateResult;
    invoke-virtual/range {v31 .. v31}, Lcom/android/server/wifi/NetworkUpdateResult;->getNetworkId()I

    #@b20
    move-result v23

    #@b21
    .line 7365
    move-object/from16 v0, p0

    #@b23
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@b25
    move-object/from16 v47, v0

    #@b27
    new-instance v48, Ljava/lang/StringBuilder;

    #@b29
    invoke-direct/range {v48 .. v48}, Ljava/lang/StringBuilder;-><init>()V

    #@b2c
    const-string/jumbo v49, "CMD_AUTO_CONNECT did save config ->  nid="

    #@b2f
    invoke-virtual/range {v48 .. v49}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b32
    move-result-object v48

    #@b33
    .line 7366
    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    #@b36
    move-result-object v49

    #@b37
    .line 7365
    invoke-virtual/range {v48 .. v49}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b3a
    move-result-object v48

    #@b3b
    invoke-virtual/range {v48 .. v48}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@b3e
    move-result-object v48

    #@b3f
    invoke-virtual/range {v47 .. v48}, Lcom/android/server/wifi/WifiStateMachine;->logd(Ljava/lang/String;)V

    #@b42
    .line 7369
    move-object/from16 v0, p0

    #@b44
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@b46
    move-object/from16 v47, v0

    #@b48
    invoke-static/range {v47 .. v47}, Lcom/android/server/wifi/WifiStateMachine;->-get99(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigStore;

    #@b4b
    move-result-object v47

    #@b4c
    move-object/from16 v0, v47

    #@b4e
    move/from16 v1, v23

    #@b50
    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiConfigStore;->getWifiConfiguration(I)Landroid/net/wifi/WifiConfiguration;

    #@b53
    move-result-object v8

    #@b54
    .line 7370
    if-nez v8, :cond_24

    #@b56
    .line 7371
    move-object/from16 v0, p0

    #@b58
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@b5a
    move-object/from16 v47, v0

    #@b5c
    const-string/jumbo v48, "CMD_AUTO_CONNECT couldn\'t update the config, got null config"

    #@b5f
    invoke-virtual/range {v47 .. v48}, Lcom/android/server/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V

    #@b62
    goto/16 :goto_0

    #@b64
    .line 7374
    :cond_24
    iget v0, v8, Landroid/net/wifi/WifiConfiguration;->networkId:I

    #@b66
    move/from16 v47, v0

    #@b68
    move/from16 v0, v23

    #@b6a
    move/from16 v1, v47

    #@b6c
    if-eq v0, v1, :cond_25

    #@b6e
    .line 7375
    move-object/from16 v0, p0

    #@b70
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@b72
    move-object/from16 v47, v0

    #@b74
    new-instance v48, Ljava/lang/StringBuilder;

    #@b76
    invoke-direct/range {v48 .. v48}, Ljava/lang/StringBuilder;-><init>()V

    #@b79
    const-string/jumbo v49, "CMD_AUTO_CONNECT couldn\'t update the config, want nid="

    #@b7c
    invoke-virtual/range {v48 .. v49}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b7f
    move-result-object v48

    #@b80
    .line 7376
    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    #@b83
    move-result-object v49

    #@b84
    .line 7375
    invoke-virtual/range {v48 .. v49}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b87
    move-result-object v48

    #@b88
    .line 7376
    const-string/jumbo v49, " but got"

    #@b8b
    .line 7375
    invoke-virtual/range {v48 .. v49}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b8e
    move-result-object v48

    #@b8f
    .line 7376
    iget v0, v8, Landroid/net/wifi/WifiConfiguration;->networkId:I

    #@b91
    move/from16 v49, v0

    #@b93
    .line 7375
    invoke-virtual/range {v48 .. v49}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@b96
    move-result-object v48

    #@b97
    invoke-virtual/range {v48 .. v48}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@b9a
    move-result-object v48

    #@b9b
    invoke-virtual/range {v47 .. v48}, Lcom/android/server/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V

    #@b9e
    goto/16 :goto_0

    #@ba0
    .line 7380
    :cond_25
    move-object/from16 v0, p0

    #@ba2
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@ba4
    move-object/from16 v47, v0

    #@ba6
    const/16 v48, 0x0

    #@ba8
    move-object/from16 v0, v47

    #@baa
    move-object/from16 v1, p1

    #@bac
    move/from16 v2, v23

    #@bae
    move/from16 v3, v48

    #@bb0
    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/wifi/WifiStateMachine;->deferForUserInput(Landroid/os/Message;IZ)Z

    #@bb3
    move-result v47

    #@bb4
    if-nez v47, :cond_3

    #@bb6
    .line 7382
    move-object/from16 v0, p0

    #@bb8
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@bba
    move-object/from16 v47, v0

    #@bbc
    invoke-static/range {v47 .. v47}, Lcom/android/server/wifi/WifiStateMachine;->-get99(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigStore;

    #@bbf
    move-result-object v47

    #@bc0
    move-object/from16 v0, v47

    #@bc2
    move/from16 v1, v23

    #@bc4
    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiConfigStore;->getWifiConfiguration(I)Landroid/net/wifi/WifiConfiguration;

    #@bc7
    move-result-object v47

    #@bc8
    move-object/from16 v0, v47

    #@bca
    iget v0, v0, Landroid/net/wifi/WifiConfiguration;->userApproved:I

    #@bcc
    move/from16 v47, v0

    #@bce
    .line 7383
    const/16 v48, 0x2

    #@bd0
    .line 7382
    move/from16 v0, v47

    #@bd2
    move/from16 v1, v48

    #@bd4
    if-ne v0, v1, :cond_26

    #@bd6
    .line 7384
    move-object/from16 v0, p0

    #@bd8
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@bda
    move-object/from16 v47, v0

    #@bdc
    const v48, 0x25002

    #@bdf
    .line 7385
    const/16 v49, 0x9

    #@be1
    .line 7384
    move-object/from16 v0, v47

    #@be3
    move-object/from16 v1, p1

    #@be5
    move/from16 v2, v48

    #@be7
    move/from16 v3, v49

    #@be9
    invoke-static {v0, v1, v2, v3}, Lcom/android/server/wifi/WifiStateMachine;->-wrap37(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;II)V

    #@bec
    goto/16 :goto_0

    #@bee
    .line 7390
    :cond_26
    move-object/from16 v0, p0

    #@bf0
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@bf2
    move-object/from16 v47, v0

    #@bf4
    invoke-static/range {v47 .. v47}, Lcom/android/server/wifi/WifiStateMachine;->-get99(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigStore;

    #@bf7
    move-result-object v47

    #@bf8
    const/16 v48, 0x0

    #@bfa
    move-object/from16 v0, v47

    #@bfc
    move/from16 v1, v23

    #@bfe
    move/from16 v2, v48

    #@c00
    invoke-virtual {v0, v1, v2}, Lcom/android/server/wifi/WifiConfigStore;->enableNetworkWithoutBroadcast(IZ)Z

    #@c03
    .line 7394
    move-object/from16 v0, p0

    #@c05
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@c07
    move-object/from16 v47, v0

    #@c09
    invoke-static/range {v47 .. v47}, Lcom/android/server/wifi/WifiStateMachine;->-get99(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigStore;

    #@c0c
    move-result-object v47

    #@c0d
    move-object/from16 v0, v47

    #@c0f
    invoke-virtual {v0, v8}, Lcom/android/server/wifi/WifiConfigStore;->isLastSelectedConfiguration(Landroid/net/wifi/WifiConfiguration;)Z

    #@c12
    move-result v47

    #@c13
    if-eqz v47, :cond_29

    #@c15
    .line 7395
    iget v0, v8, Landroid/net/wifi/WifiConfiguration;->lastConnectUid:I

    #@c17
    move/from16 v21, v0

    #@c19
    .line 7397
    .local v21, "lastConnectUid":I
    :goto_a
    move-object/from16 v0, p0

    #@c1b
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@c1d
    move-object/from16 v47, v0

    #@c1f
    invoke-static/range {v47 .. v47}, Lcom/android/server/wifi/WifiStateMachine;->-get99(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigStore;

    #@c22
    move-result-object v47

    #@c23
    const/16 v48, 0x0

    #@c25
    move-object/from16 v0, v47

    #@c27
    move/from16 v1, v48

    #@c29
    move/from16 v2, v21

    #@c2b
    invoke-virtual {v0, v8, v1, v2}, Lcom/android/server/wifi/WifiConfigStore;->selectNetwork(Landroid/net/wifi/WifiConfiguration;ZI)Z

    #@c2e
    move-result v47

    #@c2f
    if-eqz v47, :cond_2f

    #@c31
    .line 7398
    move-object/from16 v0, p0

    #@c33
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@c35
    move-object/from16 v47, v0

    #@c37
    invoke-static/range {v47 .. v47}, Lcom/android/server/wifi/WifiStateMachine;->-get105(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiNative;

    #@c3a
    move-result-object v47

    #@c3b
    invoke-virtual/range {v47 .. v47}, Lcom/android/server/wifi/WifiNative;->reconnect()Z

    #@c3e
    move-result v47

    #@c3f
    .line 7397
    if-eqz v47, :cond_2f

    #@c41
    .line 7399
    move-object/from16 v0, p0

    #@c43
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@c45
    move-object/from16 v47, v0

    #@c47
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    #@c4a
    move-result-wide v48

    #@c4b
    invoke-static/range {v47 .. v49}, Lcom/android/server/wifi/WifiStateMachine;->-set2(Lcom/android/server/wifi/WifiStateMachine;J)J

    #@c4e
    .line 7400
    move-object/from16 v0, p0

    #@c50
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@c52
    move-object/from16 v47, v0

    #@c54
    move-object/from16 v0, p0

    #@c56
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@c58
    move-object/from16 v48, v0

    #@c5a
    invoke-static/range {v48 .. v48}, Lcom/android/server/wifi/WifiStateMachine;->-get99(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigStore;

    #@c5d
    move-result-object v48

    #@c5e
    move-object/from16 v0, v48

    #@c60
    move/from16 v1, v23

    #@c62
    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiConfigStore;->getWifiConfiguration(I)Landroid/net/wifi/WifiConfiguration;

    #@c65
    move-result-object v48

    #@c66
    invoke-static/range {v47 .. v48}, Lcom/android/server/wifi/WifiStateMachine;->-set51(Lcom/android/server/wifi/WifiStateMachine;Landroid/net/wifi/WifiConfiguration;)Landroid/net/wifi/WifiConfiguration;

    #@c69
    .line 7401
    move-object/from16 v0, p0

    #@c6b
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@c6d
    move-object/from16 v47, v0

    #@c6f
    invoke-static/range {v47 .. v47}, Lcom/android/server/wifi/WifiStateMachine;->-get99(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigStore;

    #@c72
    move-result-object v47

    #@c73
    move-object/from16 v0, v47

    #@c75
    move/from16 v1, v23

    #@c77
    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiConfigStore;->getWifiConfiguration(I)Landroid/net/wifi/WifiConfiguration;

    #@c7a
    move-result-object v8

    #@c7b
    .line 7402
    if-eqz v8, :cond_27

    #@c7d
    .line 7403
    move-object/from16 v0, p0

    #@c7f
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@c81
    move-object/from16 v47, v0

    #@c83
    invoke-static/range {v47 .. v47}, Lcom/android/server/wifi/WifiStateMachine;->-get99(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigStore;

    #@c86
    move-result-object v47

    #@c87
    move-object/from16 v0, v47

    #@c89
    invoke-virtual {v0, v8}, Lcom/android/server/wifi/WifiConfigStore;->isLastSelectedConfiguration(Landroid/net/wifi/WifiConfiguration;)Z

    #@c8c
    move-result v47

    #@c8d
    if-eqz v47, :cond_2a

    #@c8f
    .line 7419
    :cond_27
    :goto_b
    move-object/from16 v0, p0

    #@c91
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@c93
    move-object/from16 v47, v0

    #@c95
    move-object/from16 v0, v47

    #@c97
    move/from16 v1, v32

    #@c99
    invoke-static {v0, v1}, Lcom/android/server/wifi/WifiStateMachine;->-set7(Lcom/android/server/wifi/WifiStateMachine;I)I

    #@c9c
    .line 7420
    move-object/from16 v0, p0

    #@c9e
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@ca0
    move-object/from16 v47, v0

    #@ca2
    invoke-virtual/range {v47 .. v47}, Lcom/android/server/wifi/WifiStateMachine;->isRoaming()Z

    #@ca5
    move-result v47

    #@ca6
    if-nez v47, :cond_28

    #@ca8
    move-object/from16 v0, p0

    #@caa
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@cac
    move-object/from16 v47, v0

    #@cae
    invoke-static/range {v47 .. v47}, Lcom/android/server/wifi/WifiStateMachine;->-get12(Lcom/android/server/wifi/WifiStateMachine;)Z

    #@cb1
    move-result v47

    #@cb2
    if-eqz v47, :cond_2b

    #@cb4
    .line 7421
    :cond_28
    move-object/from16 v0, p0

    #@cb6
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@cb8
    move-object/from16 v47, v0

    #@cba
    move-object/from16 v0, p0

    #@cbc
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@cbe
    move-object/from16 v48, v0

    #@cc0
    invoke-static/range {v48 .. v48}, Lcom/android/server/wifi/WifiStateMachine;->-get67(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/internal/util/State;

    #@cc3
    move-result-object v48

    #@cc4
    invoke-static/range {v47 .. v48}, Lcom/android/server/wifi/WifiStateMachine;->-wrap55(Lcom/android/server/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V

    #@cc7
    goto/16 :goto_0

    #@cc9
    .line 7395
    .end local v21    # "lastConnectUid":I
    :cond_29
    const/16 v21, -0x1

    #@ccb
    .restart local v21    # "lastConnectUid":I
    goto/16 :goto_a

    #@ccd
    .line 7416
    :cond_2a
    move-object/from16 v0, p0

    #@ccf
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@cd1
    move-object/from16 v47, v0

    #@cd3
    invoke-static/range {v47 .. v47}, Lcom/android/server/wifi/WifiStateMachine;->-get99(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigStore;

    #@cd6
    move-result-object v47

    #@cd7
    .line 7417
    const/16 v48, -0x1

    #@cd9
    .line 7416
    invoke-virtual/range {v47 .. v48}, Lcom/android/server/wifi/WifiConfigStore;->setLastSelectedConfiguration(I)V

    #@cdc
    goto :goto_b

    #@cdd
    .line 7422
    :cond_2b
    if-eqz v12, :cond_2c

    #@cdf
    .line 7423
    move-object/from16 v0, p0

    #@ce1
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@ce3
    move-object/from16 v47, v0

    #@ce5
    move-object/from16 v0, p0

    #@ce7
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@ce9
    move-object/from16 v48, v0

    #@ceb
    invoke-static/range {v48 .. v48}, Lcom/android/server/wifi/WifiStateMachine;->-get27(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/internal/util/State;

    #@cee
    move-result-object v48

    #@cef
    invoke-static/range {v47 .. v48}, Lcom/android/server/wifi/WifiStateMachine;->-wrap55(Lcom/android/server/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V

    #@cf2
    goto/16 :goto_0

    #@cf4
    .line 7426
    :cond_2c
    move-object/from16 v0, p0

    #@cf6
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@cf8
    move-object/from16 v47, v0

    #@cfa
    invoke-static/range {v47 .. v47}, Lcom/android/server/wifi/WifiStateMachine;->-get72(Lcom/android/server/wifi/WifiStateMachine;)Z

    #@cfd
    move-result v47

    #@cfe
    if-nez v47, :cond_2e

    #@d00
    move-object/from16 v0, p0

    #@d02
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@d04
    move-object/from16 v47, v0

    #@d06
    invoke-static/range {v47 .. v47}, Lcom/android/server/wifi/WifiStateMachine;->-get52(Lcom/android/server/wifi/WifiStateMachine;)Z

    #@d09
    move-result v47

    #@d0a
    if-eqz v47, :cond_2e

    #@d0c
    move-object/from16 v0, p0

    #@d0e
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@d10
    move-object/from16 v47, v0

    #@d12
    invoke-static/range {v47 .. v47}, Lcom/android/server/wifi/WifiStateMachine;->-get15(Lcom/android/server/wifi/WifiStateMachine;)Z

    #@d15
    move-result v47

    #@d16
    if-eqz v47, :cond_2e

    #@d18
    .line 7427
    const v11, 0xea60

    #@d1b
    .line 7428
    .local v11, "delay":I
    invoke-static {}, Lcom/android/server/wifi/WifiStateMachine;->-get8()Z

    #@d1e
    move-result v47

    #@d1f
    if-eqz v47, :cond_2d

    #@d21
    .line 7429
    move-object/from16 v0, p0

    #@d23
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@d25
    move-object/from16 v47, v0

    #@d27
    new-instance v48, Ljava/lang/StringBuilder;

    #@d29
    invoke-direct/range {v48 .. v48}, Ljava/lang/StringBuilder;-><init>()V

    #@d2c
    const-string/jumbo v49, "Starting PNO alarm: "

    #@d2f
    invoke-virtual/range {v48 .. v49}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@d32
    move-result-object v48

    #@d33
    move-object/from16 v0, v48

    #@d35
    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@d38
    move-result-object v48

    #@d39
    invoke-virtual/range {v48 .. v48}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@d3c
    move-result-object v48

    #@d3d
    invoke-virtual/range {v47 .. v48}, Lcom/android/server/wifi/WifiStateMachine;->logd(Ljava/lang/String;)V

    #@d40
    .line 7431
    :cond_2d
    move-object/from16 v0, p0

    #@d42
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@d44
    move-object/from16 v47, v0

    #@d46
    invoke-static/range {v47 .. v47}, Lcom/android/server/wifi/WifiStateMachine;->-get13(Lcom/android/server/wifi/WifiStateMachine;)Landroid/app/AlarmManager;

    #@d49
    move-result-object v47

    #@d4a
    .line 7432
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    #@d4d
    move-result-wide v48

    #@d4e
    const-wide/32 v50, 0xea60

    #@d51
    add-long v48, v48, v50

    #@d53
    .line 7433
    move-object/from16 v0, p0

    #@d55
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@d57
    move-object/from16 v50, v0

    #@d59
    invoke-static/range {v50 .. v50}, Lcom/android/server/wifi/WifiStateMachine;->-get64(Lcom/android/server/wifi/WifiStateMachine;)Landroid/app/PendingIntent;

    #@d5c
    move-result-object v50

    #@d5d
    .line 7431
    const/16 v51, 0x0

    #@d5f
    move-object/from16 v0, v47

    #@d61
    move/from16 v1, v51

    #@d63
    move-wide/from16 v2, v48

    #@d65
    move-object/from16 v4, v50

    #@d67
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    #@d6a
    .line 7435
    .end local v11    # "delay":I
    :cond_2e
    sget v47, Lcom/android/server/wifi/WifiStateMachine;->mRestartAutoJoinOffloadCounter:I

    #@d6c
    add-int/lit8 v47, v47, 0x1

    #@d6e
    sput v47, Lcom/android/server/wifi/WifiStateMachine;->mRestartAutoJoinOffloadCounter:I

    #@d70
    goto/16 :goto_0

    #@d72
    .line 7438
    :cond_2f
    move-object/from16 v0, p0

    #@d74
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@d76
    move-object/from16 v47, v0

    #@d78
    new-instance v48, Ljava/lang/StringBuilder;

    #@d7a
    invoke-direct/range {v48 .. v48}, Ljava/lang/StringBuilder;-><init>()V

    #@d7d
    const-string/jumbo v49, "Failed to connect config: "

    #@d80
    invoke-virtual/range {v48 .. v49}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@d83
    move-result-object v48

    #@d84
    move-object/from16 v0, v48

    #@d86
    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@d89
    move-result-object v48

    #@d8a
    const-string/jumbo v49, " netId: "

    #@d8d
    invoke-virtual/range {v48 .. v49}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@d90
    move-result-object v48

    #@d91
    move-object/from16 v0, v48

    #@d93
    move/from16 v1, v23

    #@d95
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@d98
    move-result-object v48

    #@d99
    invoke-virtual/range {v48 .. v48}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@d9c
    move-result-object v48

    #@d9d
    invoke-virtual/range {v47 .. v48}, Lcom/android/server/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V

    #@da0
    .line 7439
    move-object/from16 v0, p0

    #@da2
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@da4
    move-object/from16 v47, v0

    #@da6
    const v48, 0x25002

    #@da9
    .line 7440
    const/16 v49, 0x0

    #@dab
    .line 7439
    move-object/from16 v0, v47

    #@dad
    move-object/from16 v1, p1

    #@daf
    move/from16 v2, v48

    #@db1
    move/from16 v3, v49

    #@db3
    invoke-static {v0, v1, v2, v3}, Lcom/android/server/wifi/WifiStateMachine;->-wrap37(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;II)V

    #@db6
    goto/16 :goto_0

    #@db8
    .line 7445
    .end local v8    # "config":Landroid/net/wifi/WifiConfiguration;
    .end local v12    # "didDisconnect":Z
    .end local v21    # "lastConnectUid":I
    .end local v23    # "netId":I
    .end local v31    # "result":Lcom/android/server/wifi/NetworkUpdateResult;
    .end local v32    # "roam":I
    :sswitch_19
    move-object/from16 v0, p0

    #@dba
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@dbc
    move-object/from16 v47, v0

    #@dbe
    invoke-static/range {v47 .. v47}, Lcom/android/server/wifi/WifiStateMachine;->-get99(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigStore;

    #@dc1
    move-result-object v48

    #@dc2
    move-object/from16 v0, p1

    #@dc4
    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@dc6
    move-object/from16 v47, v0

    #@dc8
    check-cast v47, Landroid/content/pm/ApplicationInfo;

    #@dca
    move-object/from16 v0, v48

    #@dcc
    move-object/from16 v1, v47

    #@dce
    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiConfigStore;->removeNetworksForApp(Landroid/content/pm/ApplicationInfo;)Z

    #@dd1
    goto/16 :goto_0

    #@dd3
    .line 7448
    :sswitch_1a
    move-object/from16 v0, p0

    #@dd5
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@dd7
    move-object/from16 v47, v0

    #@dd9
    invoke-static/range {v47 .. v47}, Lcom/android/server/wifi/WifiStateMachine;->-get99(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigStore;

    #@ddc
    move-result-object v47

    #@ddd
    move-object/from16 v0, p1

    #@ddf
    iget v0, v0, Landroid/os/Message;->arg1:I

    #@de1
    move/from16 v48, v0

    #@de3
    invoke-virtual/range {v47 .. v48}, Lcom/android/server/wifi/WifiConfigStore;->removeNetworksForUser(I)Z

    #@de6
    goto/16 :goto_0

    #@de8
    .line 7457
    :sswitch_1b
    move-object/from16 v0, p1

    #@dea
    iget v0, v0, Landroid/os/Message;->arg1:I

    #@dec
    move/from16 v23, v0

    #@dee
    .line 7458
    .restart local v23    # "netId":I
    move-object/from16 v0, p1

    #@df0
    iget-object v8, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@df2
    check-cast v8, Landroid/net/wifi/WifiConfiguration;

    #@df4
    .line 7459
    .restart local v8    # "config":Landroid/net/wifi/WifiConfiguration;
    move-object/from16 v0, p0

    #@df6
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@df8
    move-object/from16 v47, v0

    #@dfa
    invoke-static/range {v47 .. v47}, Lcom/android/server/wifi/WifiStateMachine;->-get100(Lcom/android/server/wifi/WifiStateMachine;)Landroid/net/wifi/WifiConnectionStatistics;

    #@dfd
    move-result-object v47

    #@dfe
    move-object/from16 v0, v47

    #@e00
    iget v0, v0, Landroid/net/wifi/WifiConnectionStatistics;->numWifiManagerJoinAttempt:I

    #@e02
    move/from16 v48, v0

    #@e04
    add-int/lit8 v48, v48, 0x1

    #@e06
    move/from16 v0, v48

    #@e08
    move-object/from16 v1, v47

    #@e0a
    iput v0, v1, Landroid/net/wifi/WifiConnectionStatistics;->numWifiManagerJoinAttempt:I

    #@e0c
    .line 7460
    const/16 v42, 0x0

    #@e0e
    .line 7463
    .local v42, "updatedExisting":Z
    if-eqz v8, :cond_32

    #@e10
    .line 7468
    move-object/from16 v0, p0

    #@e12
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@e14
    move-object/from16 v47, v0

    #@e16
    move-object/from16 v0, p1

    #@e18
    iget v0, v0, Landroid/os/Message;->sendingUid:I

    #@e1a
    move/from16 v48, v0

    #@e1c
    .line 7469
    const/16 v49, 0x1

    #@e1e
    .line 7468
    move-object/from16 v0, v47

    #@e20
    move/from16 v1, v48

    #@e22
    move/from16 v2, v49

    #@e24
    invoke-virtual {v0, v8, v1, v2}, Lcom/android/server/wifi/WifiStateMachine;->recordUidIfAuthorized(Landroid/net/wifi/WifiConfiguration;IZ)Z

    #@e27
    move-result v47

    #@e28
    if-nez v47, :cond_30

    #@e2a
    .line 7470
    move-object/from16 v0, p0

    #@e2c
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@e2e
    move-object/from16 v47, v0

    #@e30
    new-instance v48, Ljava/lang/StringBuilder;

    #@e32
    invoke-direct/range {v48 .. v48}, Ljava/lang/StringBuilder;-><init>()V

    #@e35
    const-string/jumbo v49, "Not authorized to update network  config="

    #@e38
    invoke-virtual/range {v48 .. v49}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@e3b
    move-result-object v48

    #@e3c
    .line 7471
    iget-object v0, v8, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    #@e3e
    move-object/from16 v49, v0

    #@e40
    .line 7470
    invoke-virtual/range {v48 .. v49}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@e43
    move-result-object v48

    #@e44
    .line 7472
    const-string/jumbo v49, " cnid="

    #@e47
    .line 7470
    invoke-virtual/range {v48 .. v49}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@e4a
    move-result-object v48

    #@e4b
    .line 7472
    iget v0, v8, Landroid/net/wifi/WifiConfiguration;->networkId:I

    #@e4d
    move/from16 v49, v0

    #@e4f
    .line 7470
    invoke-virtual/range {v48 .. v49}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@e52
    move-result-object v48

    #@e53
    .line 7473
    const-string/jumbo v49, " uid="

    #@e56
    .line 7470
    invoke-virtual/range {v48 .. v49}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@e59
    move-result-object v48

    #@e5a
    .line 7473
    move-object/from16 v0, p1

    #@e5c
    iget v0, v0, Landroid/os/Message;->sendingUid:I

    #@e5e
    move/from16 v49, v0

    #@e60
    .line 7470
    invoke-virtual/range {v48 .. v49}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@e63
    move-result-object v48

    #@e64
    invoke-virtual/range {v48 .. v48}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@e67
    move-result-object v48

    #@e68
    invoke-static/range {v47 .. v48}, Lcom/android/server/wifi/WifiStateMachine;->-wrap34(Lcom/android/server/wifi/WifiStateMachine;Ljava/lang/String;)V

    #@e6b
    .line 7474
    move-object/from16 v0, p0

    #@e6d
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@e6f
    move-object/from16 v47, v0

    #@e71
    const v48, 0x25002

    #@e74
    .line 7475
    const/16 v49, 0x9

    #@e76
    .line 7474
    move-object/from16 v0, v47

    #@e78
    move-object/from16 v1, p1

    #@e7a
    move/from16 v2, v48

    #@e7c
    move/from16 v3, v49

    #@e7e
    invoke-static {v0, v1, v2, v3}, Lcom/android/server/wifi/WifiStateMachine;->-wrap37(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;II)V

    #@e81
    goto/16 :goto_0

    #@e83
    .line 7479
    :cond_30
    const/16 v47, 0x1

    #@e85
    move/from16 v0, v47

    #@e87
    invoke-virtual {v8, v0}, Landroid/net/wifi/WifiConfiguration;->configKey(Z)Ljava/lang/String;

    #@e8a
    move-result-object v9

    #@e8b
    .line 7481
    .local v9, "configKey":Ljava/lang/String;
    move-object/from16 v0, p0

    #@e8d
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@e8f
    move-object/from16 v47, v0

    #@e91
    invoke-static/range {v47 .. v47}, Lcom/android/server/wifi/WifiStateMachine;->-get99(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigStore;

    #@e94
    move-result-object v47

    #@e95
    move-object/from16 v0, v47

    #@e97
    invoke-virtual {v0, v9}, Lcom/android/server/wifi/WifiConfigStore;->getWifiConfiguration(Ljava/lang/String;)Landroid/net/wifi/WifiConfiguration;

    #@e9a
    move-result-object v33

    #@e9b
    .line 7482
    .local v33, "savedConfig":Landroid/net/wifi/WifiConfiguration;
    if-eqz v33, :cond_31

    #@e9d
    .line 7486
    move-object/from16 v8, v33

    #@e9f
    .line 7487
    move-object/from16 v0, p0

    #@ea1
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@ea3
    move-object/from16 v47, v0

    #@ea5
    new-instance v48, Ljava/lang/StringBuilder;

    #@ea7
    invoke-direct/range {v48 .. v48}, Ljava/lang/StringBuilder;-><init>()V

    #@eaa
    const-string/jumbo v49, "CONNECT_NETWORK updating existing config with id="

    #@ead
    invoke-virtual/range {v48 .. v49}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@eb0
    move-result-object v48

    #@eb1
    .line 7488
    iget v0, v8, Landroid/net/wifi/WifiConfiguration;->networkId:I

    #@eb3
    move/from16 v49, v0

    #@eb5
    .line 7487
    invoke-virtual/range {v48 .. v49}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@eb8
    move-result-object v48

    #@eb9
    .line 7488
    const-string/jumbo v49, " configKey="

    #@ebc
    .line 7487
    invoke-virtual/range {v48 .. v49}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@ebf
    move-result-object v48

    #@ec0
    move-object/from16 v0, v48

    #@ec2
    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@ec5
    move-result-object v48

    #@ec6
    invoke-virtual/range {v48 .. v48}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@ec9
    move-result-object v48

    #@eca
    invoke-virtual/range {v47 .. v48}, Lcom/android/server/wifi/WifiStateMachine;->logd(Ljava/lang/String;)V

    #@ecd
    .line 7489
    const/16 v47, 0x0

    #@ecf
    move/from16 v0, v47

    #@ed1
    iput-boolean v0, v8, Landroid/net/wifi/WifiConfiguration;->ephemeral:Z

    #@ed3
    .line 7490
    const/16 v47, 0x0

    #@ed5
    move/from16 v0, v47

    #@ed7
    iput v0, v8, Landroid/net/wifi/WifiConfiguration;->autoJoinStatus:I

    #@ed9
    .line 7491
    const/16 v42, 0x1

    #@edb
    .line 7494
    :cond_31
    move-object/from16 v0, p0

    #@edd
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@edf
    move-object/from16 v47, v0

    #@ee1
    invoke-static/range {v47 .. v47}, Lcom/android/server/wifi/WifiStateMachine;->-get99(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigStore;

    #@ee4
    move-result-object v47

    #@ee5
    move-object/from16 v0, p1

    #@ee7
    iget v0, v0, Landroid/os/Message;->sendingUid:I

    #@ee9
    move/from16 v48, v0

    #@eeb
    move-object/from16 v0, v47

    #@eed
    move/from16 v1, v48

    #@eef
    invoke-virtual {v0, v8, v1}, Lcom/android/server/wifi/WifiConfigStore;->saveNetwork(Landroid/net/wifi/WifiConfiguration;I)Lcom/android/server/wifi/NetworkUpdateResult;

    #@ef2
    move-result-object v31

    #@ef3
    .line 7495
    .restart local v31    # "result":Lcom/android/server/wifi/NetworkUpdateResult;
    invoke-virtual/range {v31 .. v31}, Lcom/android/server/wifi/NetworkUpdateResult;->getNetworkId()I

    #@ef6
    move-result v23

    #@ef7
    .line 7497
    .end local v9    # "configKey":Ljava/lang/String;
    .end local v31    # "result":Lcom/android/server/wifi/NetworkUpdateResult;
    .end local v33    # "savedConfig":Landroid/net/wifi/WifiConfiguration;
    :cond_32
    move-object/from16 v0, p0

    #@ef9
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@efb
    move-object/from16 v47, v0

    #@efd
    invoke-static/range {v47 .. v47}, Lcom/android/server/wifi/WifiStateMachine;->-get99(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigStore;

    #@f00
    move-result-object v47

    #@f01
    move-object/from16 v0, v47

    #@f03
    move/from16 v1, v23

    #@f05
    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiConfigStore;->getWifiConfiguration(I)Landroid/net/wifi/WifiConfiguration;

    #@f08
    move-result-object v8

    #@f09
    .line 7499
    if-nez v8, :cond_33

    #@f0b
    .line 7500
    move-object/from16 v0, p0

    #@f0d
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@f0f
    move-object/from16 v47, v0

    #@f11
    new-instance v48, Ljava/lang/StringBuilder;

    #@f13
    invoke-direct/range {v48 .. v48}, Ljava/lang/StringBuilder;-><init>()V

    #@f16
    const-string/jumbo v49, "CONNECT_NETWORK no config for id="

    #@f19
    invoke-virtual/range {v48 .. v49}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@f1c
    move-result-object v48

    #@f1d
    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    #@f20
    move-result-object v49

    #@f21
    invoke-virtual/range {v48 .. v49}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@f24
    move-result-object v48

    #@f25
    const-string/jumbo v49, " "

    #@f28
    invoke-virtual/range {v48 .. v49}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@f2b
    move-result-object v48

    #@f2c
    .line 7501
    move-object/from16 v0, p0

    #@f2e
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@f30
    move-object/from16 v49, v0

    #@f32
    invoke-static/range {v49 .. v49}, Lcom/android/server/wifi/WifiStateMachine;->-get79(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/SupplicantStateTracker;

    #@f35
    move-result-object v49

    #@f36
    invoke-virtual/range {v49 .. v49}, Lcom/android/server/wifi/SupplicantStateTracker;->getSupplicantStateName()Ljava/lang/String;

    #@f39
    move-result-object v49

    #@f3a
    .line 7500
    invoke-virtual/range {v48 .. v49}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@f3d
    move-result-object v48

    #@f3e
    .line 7501
    const-string/jumbo v49, " my state "

    #@f41
    .line 7500
    invoke-virtual/range {v48 .. v49}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@f44
    move-result-object v48

    #@f45
    .line 7502
    move-object/from16 v0, p0

    #@f47
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@f49
    move-object/from16 v49, v0

    #@f4b
    invoke-static/range {v49 .. v49}, Lcom/android/server/wifi/WifiStateMachine;->-wrap15(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/internal/util/IState;

    #@f4e
    move-result-object v49

    #@f4f
    invoke-interface/range {v49 .. v49}, Lcom/android/internal/util/IState;->getName()Ljava/lang/String;

    #@f52
    move-result-object v49

    #@f53
    .line 7500
    invoke-virtual/range {v48 .. v49}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@f56
    move-result-object v48

    #@f57
    invoke-virtual/range {v48 .. v48}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@f5a
    move-result-object v48

    #@f5b
    invoke-virtual/range {v47 .. v48}, Lcom/android/server/wifi/WifiStateMachine;->logd(Ljava/lang/String;)V

    #@f5e
    .line 7503
    move-object/from16 v0, p0

    #@f60
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@f62
    move-object/from16 v47, v0

    #@f64
    const v48, 0x25002

    #@f67
    .line 7504
    const/16 v49, 0x0

    #@f69
    .line 7503
    move-object/from16 v0, v47

    #@f6b
    move-object/from16 v1, p1

    #@f6d
    move/from16 v2, v48

    #@f6f
    move/from16 v3, v49

    #@f71
    invoke-static {v0, v1, v2, v3}, Lcom/android/server/wifi/WifiStateMachine;->-wrap37(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;II)V

    #@f74
    goto/16 :goto_0

    #@f76
    .line 7507
    :cond_33
    iget-boolean v0, v8, Landroid/net/wifi/WifiConfiguration;->autoJoinBailedDueToLowRssi:Z

    #@f78
    move/from16 v47, v0

    #@f7a
    if-eqz v47, :cond_36

    #@f7c
    const-string/jumbo v44, " skipped"

    #@f7f
    .line 7508
    .local v44, "wasSkipped":Ljava/lang/String;
    :goto_c
    move-object/from16 v0, p0

    #@f81
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@f83
    move-object/from16 v47, v0

    #@f85
    new-instance v48, Ljava/lang/StringBuilder;

    #@f87
    invoke-direct/range {v48 .. v48}, Ljava/lang/StringBuilder;-><init>()V

    #@f8a
    const-string/jumbo v49, "CONNECT_NETWORK id="

    #@f8d
    invoke-virtual/range {v48 .. v49}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@f90
    move-result-object v48

    #@f91
    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    #@f94
    move-result-object v49

    #@f95
    invoke-virtual/range {v48 .. v49}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@f98
    move-result-object v48

    #@f99
    .line 7509
    const-string/jumbo v49, " config="

    #@f9c
    .line 7508
    invoke-virtual/range {v48 .. v49}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@f9f
    move-result-object v48

    #@fa0
    .line 7509
    iget-object v0, v8, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    #@fa2
    move-object/from16 v49, v0

    #@fa4
    .line 7508
    invoke-virtual/range {v48 .. v49}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@fa7
    move-result-object v48

    #@fa8
    .line 7510
    const-string/jumbo v49, " cnid="

    #@fab
    .line 7508
    invoke-virtual/range {v48 .. v49}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@fae
    move-result-object v48

    #@faf
    .line 7510
    iget v0, v8, Landroid/net/wifi/WifiConfiguration;->networkId:I

    #@fb1
    move/from16 v49, v0

    #@fb3
    .line 7508
    invoke-virtual/range {v48 .. v49}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@fb6
    move-result-object v48

    #@fb7
    .line 7511
    const-string/jumbo v49, " supstate="

    #@fba
    .line 7508
    invoke-virtual/range {v48 .. v49}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@fbd
    move-result-object v48

    #@fbe
    .line 7511
    move-object/from16 v0, p0

    #@fc0
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@fc2
    move-object/from16 v49, v0

    #@fc4
    invoke-static/range {v49 .. v49}, Lcom/android/server/wifi/WifiStateMachine;->-get79(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/SupplicantStateTracker;

    #@fc7
    move-result-object v49

    #@fc8
    invoke-virtual/range {v49 .. v49}, Lcom/android/server/wifi/SupplicantStateTracker;->getSupplicantStateName()Ljava/lang/String;

    #@fcb
    move-result-object v49

    #@fcc
    .line 7508
    invoke-virtual/range {v48 .. v49}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@fcf
    move-result-object v48

    #@fd0
    .line 7512
    const-string/jumbo v49, " my state "

    #@fd3
    .line 7508
    invoke-virtual/range {v48 .. v49}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@fd6
    move-result-object v48

    #@fd7
    .line 7512
    move-object/from16 v0, p0

    #@fd9
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@fdb
    move-object/from16 v49, v0

    #@fdd
    invoke-static/range {v49 .. v49}, Lcom/android/server/wifi/WifiStateMachine;->-wrap15(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/internal/util/IState;

    #@fe0
    move-result-object v49

    #@fe1
    invoke-interface/range {v49 .. v49}, Lcom/android/internal/util/IState;->getName()Ljava/lang/String;

    #@fe4
    move-result-object v49

    #@fe5
    .line 7508
    invoke-virtual/range {v48 .. v49}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@fe8
    move-result-object v48

    #@fe9
    .line 7513
    const-string/jumbo v49, " uid = "

    #@fec
    .line 7508
    invoke-virtual/range {v48 .. v49}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@fef
    move-result-object v48

    #@ff0
    .line 7513
    move-object/from16 v0, p1

    #@ff2
    iget v0, v0, Landroid/os/Message;->sendingUid:I

    #@ff4
    move/from16 v49, v0

    #@ff6
    .line 7508
    invoke-virtual/range {v48 .. v49}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@ff9
    move-result-object v48

    #@ffa
    move-object/from16 v0, v48

    #@ffc
    move-object/from16 v1, v44

    #@ffe
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1001
    move-result-object v48

    #@1002
    invoke-virtual/range {v48 .. v48}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1005
    move-result-object v48

    #@1006
    invoke-virtual/range {v47 .. v48}, Lcom/android/server/wifi/WifiStateMachine;->logd(Ljava/lang/String;)V

    #@1009
    .line 7517
    move-object/from16 v0, p0

    #@100b
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@100d
    move-object/from16 v47, v0

    #@100f
    const-string/jumbo v48, "any"

    #@1012
    move-object/from16 v0, v47

    #@1014
    move/from16 v1, v23

    #@1016
    move-object/from16 v2, v48

    #@1018
    invoke-virtual {v0, v1, v2}, Lcom/android/server/wifi/WifiStateMachine;->autoRoamSetBSSID(ILjava/lang/String;)V

    #@101b
    .line 7519
    move-object/from16 v0, p1

    #@101d
    iget v0, v0, Landroid/os/Message;->sendingUid:I

    #@101f
    move/from16 v47, v0

    #@1021
    const/16 v48, 0x3f2

    #@1023
    move/from16 v0, v47

    #@1025
    move/from16 v1, v48

    #@1027
    if-eq v0, v1, :cond_34

    #@1029
    .line 7520
    move-object/from16 v0, p1

    #@102b
    iget v0, v0, Landroid/os/Message;->sendingUid:I

    #@102d
    move/from16 v47, v0

    #@102f
    const/16 v48, 0x3e8

    #@1031
    move/from16 v0, v47

    #@1033
    move/from16 v1, v48

    #@1035
    if-ne v0, v1, :cond_35

    #@1037
    .line 7527
    :cond_34
    move-object/from16 v0, p0

    #@1039
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@103b
    move-object/from16 v47, v0

    #@103d
    const-string/jumbo v48, "CONNECT_NETWORK"

    #@1040
    move-object/from16 v0, v47

    #@1042
    move-object/from16 v1, v48

    #@1044
    invoke-virtual {v0, v8, v1}, Lcom/android/server/wifi/WifiStateMachine;->clearConfigBSSID(Landroid/net/wifi/WifiConfiguration;Ljava/lang/String;)V

    #@1047
    .line 7530
    :cond_35
    move-object/from16 v0, p0

    #@1049
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@104b
    move-object/from16 v47, v0

    #@104d
    const/16 v48, 0x1

    #@104f
    move-object/from16 v0, v47

    #@1051
    move-object/from16 v1, p1

    #@1053
    move/from16 v2, v23

    #@1055
    move/from16 v3, v48

    #@1057
    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/wifi/WifiStateMachine;->deferForUserInput(Landroid/os/Message;IZ)Z

    #@105a
    move-result v47

    #@105b
    if-nez v47, :cond_3

    #@105d
    .line 7532
    move-object/from16 v0, p0

    #@105f
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@1061
    move-object/from16 v47, v0

    #@1063
    invoke-static/range {v47 .. v47}, Lcom/android/server/wifi/WifiStateMachine;->-get99(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigStore;

    #@1066
    move-result-object v47

    #@1067
    move-object/from16 v0, v47

    #@1069
    move/from16 v1, v23

    #@106b
    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiConfigStore;->getWifiConfiguration(I)Landroid/net/wifi/WifiConfiguration;

    #@106e
    move-result-object v47

    #@106f
    move-object/from16 v0, v47

    #@1071
    iget v0, v0, Landroid/net/wifi/WifiConfiguration;->userApproved:I

    #@1073
    move/from16 v47, v0

    #@1075
    .line 7533
    const/16 v48, 0x2

    #@1077
    .line 7532
    move/from16 v0, v47

    #@1079
    move/from16 v1, v48

    #@107b
    if-ne v0, v1, :cond_37

    #@107d
    .line 7534
    move-object/from16 v0, p0

    #@107f
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@1081
    move-object/from16 v47, v0

    #@1083
    const v48, 0x25002

    #@1086
    .line 7535
    const/16 v49, 0x9

    #@1088
    .line 7534
    move-object/from16 v0, v47

    #@108a
    move-object/from16 v1, p1

    #@108c
    move/from16 v2, v48

    #@108e
    move/from16 v3, v49

    #@1090
    invoke-static {v0, v1, v2, v3}, Lcom/android/server/wifi/WifiStateMachine;->-wrap37(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;II)V

    #@1093
    goto/16 :goto_0

    #@1095
    .line 7507
    .end local v44    # "wasSkipped":Ljava/lang/String;
    :cond_36
    const-string/jumbo v44, ""

    #@1098
    .restart local v44    # "wasSkipped":Ljava/lang/String;
    goto/16 :goto_c

    #@109a
    .line 7539
    :cond_37
    move-object/from16 v0, p0

    #@109c
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@109e
    move-object/from16 v47, v0

    #@10a0
    const/16 v48, 0x0

    #@10a2
    invoke-static/range {v47 .. v48}, Lcom/android/server/wifi/WifiStateMachine;->-set7(Lcom/android/server/wifi/WifiStateMachine;I)I

    #@10a5
    .line 7543
    move-object/from16 v0, p0

    #@10a7
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@10a9
    move-object/from16 v47, v0

    #@10ab
    invoke-static/range {v47 .. v47}, Lcom/android/server/wifi/WifiStateMachine;->-get99(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigStore;

    #@10ae
    move-result-object v47

    #@10af
    move-object/from16 v0, p1

    #@10b1
    iget v0, v0, Landroid/os/Message;->sendingUid:I

    #@10b3
    move/from16 v48, v0

    #@10b5
    invoke-virtual/range {v47 .. v48}, Lcom/android/server/wifi/WifiConfigStore;->checkConfigOverridePermission(I)Z

    #@10b8
    move-result v27

    #@10b9
    .line 7544
    .local v27, "persist":Z
    move-object/from16 v0, p0

    #@10bb
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@10bd
    move-object/from16 v47, v0

    #@10bf
    invoke-static/range {v47 .. v47}, Lcom/android/server/wifi/WifiStateMachine;->-get98(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiAutoJoinController;

    #@10c2
    move-result-object v47

    #@10c3
    const/16 v48, 0x1

    #@10c5
    move-object/from16 v0, v47

    #@10c7
    move/from16 v1, v23

    #@10c9
    move/from16 v2, v48

    #@10cb
    move/from16 v3, v27

    #@10cd
    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/wifi/WifiAutoJoinController;->updateConfigurationHistory(IZZ)V

    #@10d0
    .line 7546
    move-object/from16 v0, p0

    #@10d2
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@10d4
    move-object/from16 v47, v0

    #@10d6
    invoke-static/range {v47 .. v47}, Lcom/android/server/wifi/WifiStateMachine;->-get99(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigStore;

    #@10d9
    move-result-object v47

    #@10da
    move-object/from16 v0, v47

    #@10dc
    move/from16 v1, v23

    #@10de
    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiConfigStore;->setLastSelectedConfiguration(I)V

    #@10e1
    .line 7548
    const/4 v12, 0x0

    #@10e2
    .line 7549
    .restart local v12    # "didDisconnect":Z
    move-object/from16 v0, p0

    #@10e4
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@10e6
    move-object/from16 v47, v0

    #@10e8
    invoke-static/range {v47 .. v47}, Lcom/android/server/wifi/WifiStateMachine;->-get51(Lcom/android/server/wifi/WifiStateMachine;)I

    #@10eb
    move-result v47

    #@10ec
    const/16 v48, -0x1

    #@10ee
    move/from16 v0, v47

    #@10f0
    move/from16 v1, v48

    #@10f2
    if-eq v0, v1, :cond_38

    #@10f4
    .line 7550
    move-object/from16 v0, p0

    #@10f6
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@10f8
    move-object/from16 v47, v0

    #@10fa
    invoke-static/range {v47 .. v47}, Lcom/android/server/wifi/WifiStateMachine;->-get51(Lcom/android/server/wifi/WifiStateMachine;)I

    #@10fd
    move-result v47

    #@10fe
    move/from16 v0, v47

    #@1100
    move/from16 v1, v23

    #@1102
    if-eq v0, v1, :cond_38

    #@1104
    .line 7554
    const/4 v12, 0x1

    #@1105
    .line 7555
    move-object/from16 v0, p0

    #@1107
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@1109
    move-object/from16 v47, v0

    #@110b
    invoke-static/range {v47 .. v47}, Lcom/android/server/wifi/WifiStateMachine;->-get105(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiNative;

    #@110e
    move-result-object v47

    #@110f
    invoke-virtual/range {v47 .. v47}, Lcom/android/server/wifi/WifiNative;->disconnect()Z

    #@1112
    .line 7559
    :cond_38
    move-object/from16 v0, p0

    #@1114
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@1116
    move-object/from16 v47, v0

    #@1118
    invoke-static/range {v47 .. v47}, Lcom/android/server/wifi/WifiStateMachine;->-get99(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigStore;

    #@111b
    move-result-object v47

    #@111c
    const/16 v48, 0x0

    #@111e
    move-object/from16 v0, v47

    #@1120
    move/from16 v1, v23

    #@1122
    move/from16 v2, v48

    #@1124
    invoke-virtual {v0, v1, v2}, Lcom/android/server/wifi/WifiConfigStore;->enableNetworkWithoutBroadcast(IZ)Z

    #@1127
    .line 7561
    move-object/from16 v0, p0

    #@1129
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@112b
    move-object/from16 v47, v0

    #@112d
    invoke-static/range {v47 .. v47}, Lcom/android/server/wifi/WifiStateMachine;->-get99(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigStore;

    #@1130
    move-result-object v47

    #@1131
    .line 7562
    move-object/from16 v0, p1

    #@1133
    iget v0, v0, Landroid/os/Message;->sendingUid:I

    #@1135
    move/from16 v48, v0

    #@1137
    .line 7561
    const/16 v49, 0x1

    #@1139
    move-object/from16 v0, v47

    #@113b
    move/from16 v1, v49

    #@113d
    move/from16 v2, v48

    #@113f
    invoke-virtual {v0, v8, v1, v2}, Lcom/android/server/wifi/WifiConfigStore;->selectNetwork(Landroid/net/wifi/WifiConfiguration;ZI)Z

    #@1142
    move-result v47

    #@1143
    if-eqz v47, :cond_3b

    #@1145
    .line 7562
    move-object/from16 v0, p0

    #@1147
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@1149
    move-object/from16 v47, v0

    #@114b
    invoke-static/range {v47 .. v47}, Lcom/android/server/wifi/WifiStateMachine;->-get105(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiNative;

    #@114e
    move-result-object v47

    #@114f
    invoke-virtual/range {v47 .. v47}, Lcom/android/server/wifi/WifiNative;->reconnect()Z

    #@1152
    move-result v47

    #@1153
    .line 7561
    if-eqz v47, :cond_3b

    #@1155
    .line 7563
    move-object/from16 v0, p0

    #@1157
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@1159
    move-object/from16 v47, v0

    #@115b
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    #@115e
    move-result-wide v48

    #@115f
    invoke-static/range {v47 .. v49}, Lcom/android/server/wifi/WifiStateMachine;->-set2(Lcom/android/server/wifi/WifiStateMachine;J)J

    #@1162
    .line 7564
    move-object/from16 v0, p0

    #@1164
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@1166
    move-object/from16 v47, v0

    #@1168
    move-object/from16 v0, p0

    #@116a
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@116c
    move-object/from16 v48, v0

    #@116e
    invoke-static/range {v48 .. v48}, Lcom/android/server/wifi/WifiStateMachine;->-get99(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigStore;

    #@1171
    move-result-object v48

    #@1172
    move-object/from16 v0, v48

    #@1174
    move/from16 v1, v23

    #@1176
    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiConfigStore;->getWifiConfiguration(I)Landroid/net/wifi/WifiConfiguration;

    #@1179
    move-result-object v48

    #@117a
    invoke-static/range {v47 .. v48}, Lcom/android/server/wifi/WifiStateMachine;->-set51(Lcom/android/server/wifi/WifiStateMachine;Landroid/net/wifi/WifiConfiguration;)Landroid/net/wifi/WifiConfiguration;

    #@117d
    .line 7567
    move-object/from16 v0, p0

    #@117f
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@1181
    move-object/from16 v47, v0

    #@1183
    invoke-static/range {v47 .. v47}, Lcom/android/server/wifi/WifiStateMachine;->-get79(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/SupplicantStateTracker;

    #@1186
    move-result-object v47

    #@1187
    const v48, 0x25001

    #@118a
    invoke-virtual/range {v47 .. v48}, Lcom/android/server/wifi/SupplicantStateTracker;->sendMessage(I)V

    #@118d
    .line 7568
    move-object/from16 v0, p0

    #@118f
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@1191
    move-object/from16 v47, v0

    #@1193
    const v48, 0x25003

    #@1196
    move-object/from16 v0, v47

    #@1198
    move-object/from16 v1, p1

    #@119a
    move/from16 v2, v48

    #@119c
    invoke-static {v0, v1, v2}, Lcom/android/server/wifi/WifiStateMachine;->-wrap36(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;I)V

    #@119f
    .line 7569
    if-eqz v12, :cond_39

    #@11a1
    .line 7571
    move-object/from16 v0, p0

    #@11a3
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@11a5
    move-object/from16 v47, v0

    #@11a7
    move-object/from16 v0, p0

    #@11a9
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@11ab
    move-object/from16 v48, v0

    #@11ad
    invoke-static/range {v48 .. v48}, Lcom/android/server/wifi/WifiStateMachine;->-get27(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/internal/util/State;

    #@11b0
    move-result-object v48

    #@11b1
    invoke-static/range {v47 .. v48}, Lcom/android/server/wifi/WifiStateMachine;->-wrap55(Lcom/android/server/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V

    #@11b4
    goto/16 :goto_0

    #@11b6
    .line 7572
    :cond_39
    if-eqz v42, :cond_3a

    #@11b8
    move-object/from16 v0, p0

    #@11ba
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@11bc
    move-object/from16 v47, v0

    #@11be
    invoke-static/range {v47 .. v47}, Lcom/android/server/wifi/WifiStateMachine;->-wrap15(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/internal/util/IState;

    #@11c1
    move-result-object v47

    #@11c2
    move-object/from16 v0, p0

    #@11c4
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@11c6
    move-object/from16 v48, v0

    #@11c8
    invoke-static/range {v48 .. v48}, Lcom/android/server/wifi/WifiStateMachine;->-get18(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/internal/util/State;

    #@11cb
    move-result-object v48

    #@11cc
    move-object/from16 v0, v47

    #@11ce
    move-object/from16 v1, v48

    #@11d0
    if-ne v0, v1, :cond_3a

    #@11d2
    .line 7573
    move-object/from16 v0, p0

    #@11d4
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@11d6
    move-object/from16 v47, v0

    #@11d8
    invoke-virtual/range {v47 .. v47}, Lcom/android/server/wifi/WifiStateMachine;->getCurrentWifiConfiguration()Landroid/net/wifi/WifiConfiguration;

    #@11db
    move-result-object v47

    #@11dc
    move-object/from16 v0, v47

    #@11de
    iget v0, v0, Landroid/net/wifi/WifiConfiguration;->networkId:I

    #@11e0
    move/from16 v47, v0

    #@11e2
    move/from16 v0, v47

    #@11e4
    move/from16 v1, v23

    #@11e6
    if-ne v0, v1, :cond_3a

    #@11e8
    .line 7576
    move-object/from16 v0, p0

    #@11ea
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@11ec
    move-object/from16 v47, v0

    #@11ee
    move-object/from16 v0, v47

    #@11f0
    invoke-static {v0, v8}, Lcom/android/server/wifi/WifiStateMachine;->-wrap56(Lcom/android/server/wifi/WifiStateMachine;Landroid/net/wifi/WifiConfiguration;)V

    #@11f3
    goto/16 :goto_0

    #@11f5
    .line 7582
    :cond_3a
    move-object/from16 v0, p0

    #@11f7
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@11f9
    move-object/from16 v47, v0

    #@11fb
    move-object/from16 v0, p0

    #@11fd
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@11ff
    move-object/from16 v48, v0

    #@1201
    invoke-static/range {v48 .. v48}, Lcom/android/server/wifi/WifiStateMachine;->-get26(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/internal/util/State;

    #@1204
    move-result-object v48

    #@1205
    invoke-static/range {v47 .. v48}, Lcom/android/server/wifi/WifiStateMachine;->-wrap55(Lcom/android/server/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V

    #@1208
    goto/16 :goto_0

    #@120a
    .line 7585
    :cond_3b
    move-object/from16 v0, p0

    #@120c
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@120e
    move-object/from16 v47, v0

    #@1210
    new-instance v48, Ljava/lang/StringBuilder;

    #@1212
    invoke-direct/range {v48 .. v48}, Ljava/lang/StringBuilder;-><init>()V

    #@1215
    const-string/jumbo v49, "Failed to connect config: "

    #@1218
    invoke-virtual/range {v48 .. v49}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@121b
    move-result-object v48

    #@121c
    move-object/from16 v0, v48

    #@121e
    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@1221
    move-result-object v48

    #@1222
    const-string/jumbo v49, " netId: "

    #@1225
    invoke-virtual/range {v48 .. v49}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1228
    move-result-object v48

    #@1229
    move-object/from16 v0, v48

    #@122b
    move/from16 v1, v23

    #@122d
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@1230
    move-result-object v48

    #@1231
    invoke-virtual/range {v48 .. v48}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1234
    move-result-object v48

    #@1235
    invoke-virtual/range {v47 .. v48}, Lcom/android/server/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V

    #@1238
    .line 7586
    move-object/from16 v0, p0

    #@123a
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@123c
    move-object/from16 v47, v0

    #@123e
    const v48, 0x25002

    #@1241
    .line 7587
    const/16 v49, 0x0

    #@1243
    .line 7586
    move-object/from16 v0, v47

    #@1245
    move-object/from16 v1, p1

    #@1247
    move/from16 v2, v48

    #@1249
    move/from16 v3, v49

    #@124b
    invoke-static {v0, v1, v2, v3}, Lcom/android/server/wifi/WifiStateMachine;->-wrap37(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;II)V

    #@124e
    goto/16 :goto_0

    #@1250
    .line 7592
    .end local v8    # "config":Landroid/net/wifi/WifiConfiguration;
    .end local v12    # "didDisconnect":Z
    .end local v23    # "netId":I
    .end local v27    # "persist":Z
    .end local v42    # "updatedExisting":Z
    .end local v44    # "wasSkipped":Ljava/lang/String;
    :sswitch_1c
    move-object/from16 v0, p0

    #@1252
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@1254
    move-object/from16 v47, v0

    #@1256
    invoke-static/range {v47 .. v47}, Lcom/android/server/wifi/WifiStateMachine;->-get100(Lcom/android/server/wifi/WifiStateMachine;)Landroid/net/wifi/WifiConnectionStatistics;

    #@1259
    move-result-object v47

    #@125a
    move-object/from16 v0, v47

    #@125c
    iget v0, v0, Landroid/net/wifi/WifiConnectionStatistics;->numWifiManagerJoinAttempt:I

    #@125e
    move/from16 v48, v0

    #@1260
    add-int/lit8 v48, v48, 0x1

    #@1262
    move/from16 v0, v48

    #@1264
    move-object/from16 v1, v47

    #@1266
    iput v0, v1, Landroid/net/wifi/WifiConnectionStatistics;->numWifiManagerJoinAttempt:I

    #@1268
    .line 7595
    :sswitch_1d
    move-object/from16 v0, p0

    #@126a
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@126c
    move-object/from16 v47, v0

    #@126e
    const/16 v48, 0x0

    #@1270
    invoke-static/range {v47 .. v48}, Lcom/android/server/wifi/WifiStateMachine;->-set5(Lcom/android/server/wifi/WifiStateMachine;Landroid/net/wifi/WifiConfiguration;)Landroid/net/wifi/WifiConfiguration;

    #@1273
    .line 7596
    move-object/from16 v0, p1

    #@1275
    iget-object v8, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@1277
    check-cast v8, Landroid/net/wifi/WifiConfiguration;

    #@1279
    .line 7597
    .restart local v8    # "config":Landroid/net/wifi/WifiConfiguration;
    if-nez v8, :cond_3c

    #@127b
    .line 7598
    move-object/from16 v0, p0

    #@127d
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@127f
    move-object/from16 v47, v0

    #@1281
    new-instance v48, Ljava/lang/StringBuilder;

    #@1283
    invoke-direct/range {v48 .. v48}, Ljava/lang/StringBuilder;-><init>()V

    #@1286
    const-string/jumbo v49, "ERROR: SAVE_NETWORK with null configuration"

    #@1289
    invoke-virtual/range {v48 .. v49}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@128c
    move-result-object v48

    #@128d
    .line 7599
    move-object/from16 v0, p0

    #@128f
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@1291
    move-object/from16 v49, v0

    #@1293
    invoke-static/range {v49 .. v49}, Lcom/android/server/wifi/WifiStateMachine;->-get79(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/SupplicantStateTracker;

    #@1296
    move-result-object v49

    #@1297
    invoke-virtual/range {v49 .. v49}, Lcom/android/server/wifi/SupplicantStateTracker;->getSupplicantStateName()Ljava/lang/String;

    #@129a
    move-result-object v49

    #@129b
    .line 7598
    invoke-virtual/range {v48 .. v49}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@129e
    move-result-object v48

    #@129f
    .line 7600
    const-string/jumbo v49, " my state "

    #@12a2
    .line 7598
    invoke-virtual/range {v48 .. v49}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@12a5
    move-result-object v48

    #@12a6
    .line 7600
    move-object/from16 v0, p0

    #@12a8
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@12aa
    move-object/from16 v49, v0

    #@12ac
    invoke-static/range {v49 .. v49}, Lcom/android/server/wifi/WifiStateMachine;->-wrap15(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/internal/util/IState;

    #@12af
    move-result-object v49

    #@12b0
    invoke-interface/range {v49 .. v49}, Lcom/android/internal/util/IState;->getName()Ljava/lang/String;

    #@12b3
    move-result-object v49

    #@12b4
    .line 7598
    invoke-virtual/range {v48 .. v49}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@12b7
    move-result-object v48

    #@12b8
    invoke-virtual/range {v48 .. v48}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@12bb
    move-result-object v48

    #@12bc
    invoke-virtual/range {v47 .. v48}, Lcom/android/server/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V

    #@12bf
    .line 7601
    move-object/from16 v0, p0

    #@12c1
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@12c3
    move-object/from16 v47, v0

    #@12c5
    invoke-static {}, Lcom/android/server/wifi/WifiStateMachine;->-get3()I

    #@12c8
    move-result v48

    #@12c9
    invoke-static/range {v47 .. v48}, Lcom/android/server/wifi/WifiStateMachine;->-set49(Lcom/android/server/wifi/WifiStateMachine;I)I

    #@12cc
    .line 7602
    move-object/from16 v0, p0

    #@12ce
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@12d0
    move-object/from16 v47, v0

    #@12d2
    const v48, 0x25008

    #@12d5
    .line 7603
    const/16 v49, 0x0

    #@12d7
    .line 7602
    move-object/from16 v0, v47

    #@12d9
    move-object/from16 v1, p1

    #@12db
    move/from16 v2, v48

    #@12dd
    move/from16 v3, v49

    #@12df
    invoke-static {v0, v1, v2, v3}, Lcom/android/server/wifi/WifiStateMachine;->-wrap37(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;II)V

    #@12e2
    goto/16 :goto_0

    #@12e4
    .line 7606
    :cond_3c
    move-object/from16 v0, p0

    #@12e6
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@12e8
    move-object/from16 v47, v0

    #@12ea
    new-instance v48, Landroid/net/wifi/WifiConfiguration;

    #@12ec
    move-object/from16 v0, v48

    #@12ee
    invoke-direct {v0, v8}, Landroid/net/wifi/WifiConfiguration;-><init>(Landroid/net/wifi/WifiConfiguration;)V

    #@12f1
    invoke-static/range {v47 .. v48}, Lcom/android/server/wifi/WifiStateMachine;->-set5(Lcom/android/server/wifi/WifiStateMachine;Landroid/net/wifi/WifiConfiguration;)Landroid/net/wifi/WifiConfiguration;

    #@12f4
    .line 7607
    iget v0, v8, Landroid/net/wifi/WifiConfiguration;->networkId:I

    #@12f6
    move/from16 v25, v0

    #@12f8
    .line 7608
    .local v25, "nid":I
    move-object/from16 v0, p0

    #@12fa
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@12fc
    move-object/from16 v47, v0

    #@12fe
    new-instance v48, Ljava/lang/StringBuilder;

    #@1300
    invoke-direct/range {v48 .. v48}, Ljava/lang/StringBuilder;-><init>()V

    #@1303
    const-string/jumbo v49, "SAVE_NETWORK id="

    #@1306
    invoke-virtual/range {v48 .. v49}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1309
    move-result-object v48

    #@130a
    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    #@130d
    move-result-object v49

    #@130e
    invoke-virtual/range {v48 .. v49}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1311
    move-result-object v48

    #@1312
    .line 7609
    const-string/jumbo v49, " config="

    #@1315
    .line 7608
    invoke-virtual/range {v48 .. v49}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1318
    move-result-object v48

    #@1319
    .line 7609
    iget-object v0, v8, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    #@131b
    move-object/from16 v49, v0

    #@131d
    .line 7608
    invoke-virtual/range {v48 .. v49}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1320
    move-result-object v48

    #@1321
    .line 7610
    const-string/jumbo v49, " nid="

    #@1324
    .line 7608
    invoke-virtual/range {v48 .. v49}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1327
    move-result-object v48

    #@1328
    .line 7610
    iget v0, v8, Landroid/net/wifi/WifiConfiguration;->networkId:I

    #@132a
    move/from16 v49, v0

    #@132c
    .line 7608
    invoke-virtual/range {v48 .. v49}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@132f
    move-result-object v48

    #@1330
    .line 7611
    const-string/jumbo v49, " supstate="

    #@1333
    .line 7608
    invoke-virtual/range {v48 .. v49}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1336
    move-result-object v48

    #@1337
    .line 7611
    move-object/from16 v0, p0

    #@1339
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@133b
    move-object/from16 v49, v0

    #@133d
    invoke-static/range {v49 .. v49}, Lcom/android/server/wifi/WifiStateMachine;->-get79(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/SupplicantStateTracker;

    #@1340
    move-result-object v49

    #@1341
    invoke-virtual/range {v49 .. v49}, Lcom/android/server/wifi/SupplicantStateTracker;->getSupplicantStateName()Ljava/lang/String;

    #@1344
    move-result-object v49

    #@1345
    .line 7608
    invoke-virtual/range {v48 .. v49}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1348
    move-result-object v48

    #@1349
    .line 7612
    const-string/jumbo v49, " my state "

    #@134c
    .line 7608
    invoke-virtual/range {v48 .. v49}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@134f
    move-result-object v48

    #@1350
    .line 7612
    move-object/from16 v0, p0

    #@1352
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@1354
    move-object/from16 v49, v0

    #@1356
    invoke-static/range {v49 .. v49}, Lcom/android/server/wifi/WifiStateMachine;->-wrap15(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/internal/util/IState;

    #@1359
    move-result-object v49

    #@135a
    invoke-interface/range {v49 .. v49}, Lcom/android/internal/util/IState;->getName()Ljava/lang/String;

    #@135d
    move-result-object v49

    #@135e
    .line 7608
    invoke-virtual/range {v48 .. v49}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1361
    move-result-object v48

    #@1362
    invoke-virtual/range {v48 .. v48}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1365
    move-result-object v48

    #@1366
    invoke-virtual/range {v47 .. v48}, Lcom/android/server/wifi/WifiStateMachine;->logd(Ljava/lang/String;)V

    #@1369
    .line 7615
    move-object/from16 v0, p1

    #@136b
    iget v0, v0, Landroid/os/Message;->what:I

    #@136d
    move/from16 v47, v0

    #@136f
    const v48, 0x25007

    #@1372
    move/from16 v0, v47

    #@1374
    move/from16 v1, v48

    #@1376
    if-ne v0, v1, :cond_42

    #@1378
    const/4 v7, 0x1

    #@1379
    .line 7616
    .local v7, "checkUid":Z
    :goto_d
    if-eqz v7, :cond_3d

    #@137b
    move-object/from16 v0, p0

    #@137d
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@137f
    move-object/from16 v47, v0

    #@1381
    move-object/from16 v0, p1

    #@1383
    iget v0, v0, Landroid/os/Message;->sendingUid:I

    #@1385
    move/from16 v48, v0

    #@1387
    .line 7617
    const/16 v49, 0x0

    #@1389
    .line 7616
    move-object/from16 v0, v47

    #@138b
    move/from16 v1, v48

    #@138d
    move/from16 v2, v49

    #@138f
    invoke-virtual {v0, v8, v1, v2}, Lcom/android/server/wifi/WifiStateMachine;->recordUidIfAuthorized(Landroid/net/wifi/WifiConfiguration;IZ)Z

    #@1392
    move-result v47

    #@1393
    if-eqz v47, :cond_43

    #@1395
    .line 7627
    :cond_3d
    move-object/from16 v0, p0

    #@1397
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@1399
    move-object/from16 v47, v0

    #@139b
    invoke-static/range {v47 .. v47}, Lcom/android/server/wifi/WifiStateMachine;->-get99(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigStore;

    #@139e
    move-result-object v47

    #@139f
    const/16 v48, -0x1

    #@13a1
    move-object/from16 v0, v47

    #@13a3
    move/from16 v1, v48

    #@13a5
    invoke-virtual {v0, v8, v1}, Lcom/android/server/wifi/WifiConfigStore;->saveNetwork(Landroid/net/wifi/WifiConfiguration;I)Lcom/android/server/wifi/NetworkUpdateResult;

    #@13a8
    move-result-object v31

    #@13a9
    .line 7628
    .restart local v31    # "result":Lcom/android/server/wifi/NetworkUpdateResult;
    invoke-virtual/range {v31 .. v31}, Lcom/android/server/wifi/NetworkUpdateResult;->getNetworkId()I

    #@13ac
    move-result v47

    #@13ad
    const/16 v48, -0x1

    #@13af
    move/from16 v0, v47

    #@13b1
    move/from16 v1, v48

    #@13b3
    if-eq v0, v1, :cond_45

    #@13b5
    .line 7629
    move-object/from16 v0, p0

    #@13b7
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@13b9
    move-object/from16 v47, v0

    #@13bb
    invoke-static/range {v47 .. v47}, Lcom/android/server/wifi/WifiStateMachine;->-get101(Lcom/android/server/wifi/WifiStateMachine;)Landroid/net/wifi/WifiInfo;

    #@13be
    move-result-object v47

    #@13bf
    invoke-virtual/range {v47 .. v47}, Landroid/net/wifi/WifiInfo;->getNetworkId()I

    #@13c2
    move-result v47

    #@13c3
    invoke-virtual/range {v31 .. v31}, Lcom/android/server/wifi/NetworkUpdateResult;->getNetworkId()I

    #@13c6
    move-result v48

    #@13c7
    move/from16 v0, v47

    #@13c9
    move/from16 v1, v48

    #@13cb
    if-ne v0, v1, :cond_3f

    #@13cd
    .line 7630
    invoke-virtual/range {v31 .. v31}, Lcom/android/server/wifi/NetworkUpdateResult;->hasIpChanged()Z

    #@13d0
    move-result v47

    #@13d1
    if-eqz v47, :cond_3e

    #@13d3
    .line 7634
    move-object/from16 v0, p0

    #@13d5
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@13d7
    move-object/from16 v47, v0

    #@13d9
    const-string/jumbo v48, "Reconfiguring IP on connection"

    #@13dc
    invoke-virtual/range {v47 .. v48}, Lcom/android/server/wifi/WifiStateMachine;->log(Ljava/lang/String;)V

    #@13df
    .line 7637
    move-object/from16 v0, p0

    #@13e1
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@13e3
    move-object/from16 v47, v0

    #@13e5
    move-object/from16 v0, p0

    #@13e7
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@13e9
    move-object/from16 v48, v0

    #@13eb
    invoke-static/range {v48 .. v48}, Lcom/android/server/wifi/WifiStateMachine;->-get59(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/internal/util/State;

    #@13ee
    move-result-object v48

    #@13ef
    invoke-static/range {v47 .. v48}, Lcom/android/server/wifi/WifiStateMachine;->-wrap55(Lcom/android/server/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V

    #@13f2
    .line 7639
    :cond_3e
    invoke-virtual/range {v31 .. v31}, Lcom/android/server/wifi/NetworkUpdateResult;->hasProxyChanged()Z

    #@13f5
    move-result v47

    #@13f6
    if-eqz v47, :cond_3f

    #@13f8
    .line 7640
    move-object/from16 v0, p0

    #@13fa
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@13fc
    move-object/from16 v47, v0

    #@13fe
    const-string/jumbo v48, "Reconfiguring proxy on connection"

    #@1401
    invoke-virtual/range {v47 .. v48}, Lcom/android/server/wifi/WifiStateMachine;->log(Ljava/lang/String;)V

    #@1404
    .line 7641
    move-object/from16 v0, p0

    #@1406
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@1408
    move-object/from16 v47, v0

    #@140a
    const v48, 0x2008c

    #@140d
    invoke-static/range {v47 .. v48}, Lcom/android/server/wifi/WifiStateMachine;->-wrap57(Lcom/android/server/wifi/WifiStateMachine;I)V

    #@1410
    .line 7644
    :cond_3f
    move-object/from16 v0, p0

    #@1412
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@1414
    move-object/from16 v47, v0

    #@1416
    const v48, 0x25009

    #@1419
    move-object/from16 v0, v47

    #@141b
    move-object/from16 v1, p1

    #@141d
    move/from16 v2, v48

    #@141f
    invoke-static {v0, v1, v2}, Lcom/android/server/wifi/WifiStateMachine;->-wrap36(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;I)V

    #@1422
    .line 7645
    move-object/from16 v0, p0

    #@1424
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@1426
    move-object/from16 v47, v0

    #@1428
    const/16 v48, 0x0

    #@142a
    move-object/from16 v0, v47

    #@142c
    move/from16 v1, v48

    #@142e
    invoke-static {v0, v1, v8}, Lcom/android/server/wifi/WifiStateMachine;->-wrap18(Lcom/android/server/wifi/WifiStateMachine;ILandroid/net/wifi/WifiConfiguration;)V

    #@1431
    .line 7647
    invoke-static {}, Lcom/android/server/wifi/WifiStateMachine;->-get8()Z

    #@1434
    move-result v47

    #@1435
    if-eqz v47, :cond_40

    #@1437
    .line 7648
    move-object/from16 v0, p0

    #@1439
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@143b
    move-object/from16 v47, v0

    #@143d
    new-instance v48, Ljava/lang/StringBuilder;

    #@143f
    invoke-direct/range {v48 .. v48}, Ljava/lang/StringBuilder;-><init>()V

    #@1442
    const-string/jumbo v49, "Success save network nid="

    #@1445
    invoke-virtual/range {v48 .. v49}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1448
    move-result-object v48

    #@1449
    .line 7649
    invoke-virtual/range {v31 .. v31}, Lcom/android/server/wifi/NetworkUpdateResult;->getNetworkId()I

    #@144c
    move-result v49

    #@144d
    invoke-static/range {v49 .. v49}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    #@1450
    move-result-object v49

    #@1451
    .line 7648
    invoke-virtual/range {v48 .. v49}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1454
    move-result-object v48

    #@1455
    invoke-virtual/range {v48 .. v48}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1458
    move-result-object v48

    #@1459
    invoke-virtual/range {v47 .. v48}, Lcom/android/server/wifi/WifiStateMachine;->logd(Ljava/lang/String;)V

    #@145c
    .line 7652
    :cond_40
    move-object/from16 v0, p0

    #@145e
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@1460
    move-object/from16 v47, v0

    #@1462
    invoke-static/range {v47 .. v47}, Lcom/android/server/wifi/WifiStateMachine;->-get70(Lcom/android/server/wifi/WifiStateMachine;)Landroid/util/LruCache;

    #@1465
    move-result-object v48

    #@1466
    monitor-enter v48

    #@1467
    .line 7658
    :try_start_3
    move-object/from16 v0, p1

    #@1469
    iget v0, v0, Landroid/os/Message;->what:I

    #@146b
    move/from16 v47, v0

    #@146d
    const v49, 0x25007

    #@1470
    move/from16 v0, v47

    #@1472
    move/from16 v1, v49

    #@1474
    if-ne v0, v1, :cond_44

    #@1476
    const/16 v43, 0x1

    #@1478
    .line 7662
    .local v43, "user":Z
    :goto_e
    move-object/from16 v0, p0

    #@147a
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@147c
    move-object/from16 v47, v0

    #@147e
    invoke-static/range {v47 .. v47}, Lcom/android/server/wifi/WifiStateMachine;->-get99(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigStore;

    #@1481
    move-result-object v47

    #@1482
    move-object/from16 v0, p1

    #@1484
    iget v0, v0, Landroid/os/Message;->sendingUid:I

    #@1486
    move/from16 v49, v0

    #@1488
    move-object/from16 v0, v47

    #@148a
    move/from16 v1, v49

    #@148c
    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiConfigStore;->checkConfigOverridePermission(I)Z

    #@148f
    move-result v28

    #@1490
    .line 7664
    .local v28, "persistConnect":Z
    if-eqz v43, :cond_41

    #@1492
    .line 7665
    move-object/from16 v0, p0

    #@1494
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@1496
    move-object/from16 v47, v0

    #@1498
    invoke-static/range {v47 .. v47}, Lcom/android/server/wifi/WifiStateMachine;->-get99(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigStore;

    #@149b
    move-result-object v47

    #@149c
    move-object/from16 v0, p1

    #@149e
    iget v0, v0, Landroid/os/Message;->sendingUid:I

    #@14a0
    move/from16 v49, v0

    #@14a2
    move-object/from16 v0, v47

    #@14a4
    move/from16 v1, v49

    #@14a6
    invoke-virtual {v0, v8, v1}, Lcom/android/server/wifi/WifiConfigStore;->updateLastConnectUid(Landroid/net/wifi/WifiConfiguration;I)Z

    #@14a9
    .line 7666
    move-object/from16 v0, p0

    #@14ab
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@14ad
    move-object/from16 v47, v0

    #@14af
    invoke-static/range {v47 .. v47}, Lcom/android/server/wifi/WifiStateMachine;->-get99(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigStore;

    #@14b2
    move-result-object v47

    #@14b3
    const/16 v49, 0x0

    #@14b5
    move-object/from16 v0, v47

    #@14b7
    move/from16 v1, v49

    #@14b9
    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiConfigStore;->writeKnownNetworkHistory(Z)V

    #@14bc
    .line 7669
    :cond_41
    move-object/from16 v0, p0

    #@14be
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@14c0
    move-object/from16 v47, v0

    #@14c2
    invoke-static/range {v47 .. v47}, Lcom/android/server/wifi/WifiStateMachine;->-get98(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiAutoJoinController;

    #@14c5
    move-result-object v47

    #@14c6
    invoke-virtual/range {v31 .. v31}, Lcom/android/server/wifi/NetworkUpdateResult;->getNetworkId()I

    #@14c9
    move-result v49

    #@14ca
    move-object/from16 v0, v47

    #@14cc
    move/from16 v1, v49

    #@14ce
    move/from16 v2, v43

    #@14d0
    move/from16 v3, v28

    #@14d2
    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/wifi/WifiAutoJoinController;->updateConfigurationHistory(IZZ)V

    #@14d5
    .line 7671
    move-object/from16 v0, p0

    #@14d7
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@14d9
    move-object/from16 v47, v0

    #@14db
    invoke-static/range {v47 .. v47}, Lcom/android/server/wifi/WifiStateMachine;->-get98(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiAutoJoinController;

    #@14de
    move-result-object v47

    #@14df
    invoke-virtual/range {v47 .. v47}, Lcom/android/server/wifi/WifiAutoJoinController;->attemptAutoJoin()Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    #@14e2
    goto/16 :goto_3

    #@14e4
    .line 7652
    .end local v28    # "persistConnect":Z
    .end local v43    # "user":Z
    :catchall_2
    move-exception v47

    #@14e5
    monitor-exit v48

    #@14e6
    throw v47

    #@14e7
    .line 7615
    .end local v7    # "checkUid":Z
    .end local v31    # "result":Lcom/android/server/wifi/NetworkUpdateResult;
    :cond_42
    const/4 v7, 0x0

    #@14e8
    .restart local v7    # "checkUid":Z
    goto/16 :goto_d

    #@14ea
    .line 7618
    :cond_43
    move-object/from16 v0, p0

    #@14ec
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@14ee
    move-object/from16 v47, v0

    #@14f0
    new-instance v48, Ljava/lang/StringBuilder;

    #@14f2
    invoke-direct/range {v48 .. v48}, Ljava/lang/StringBuilder;-><init>()V

    #@14f5
    const-string/jumbo v49, "Not authorized to update network  config="

    #@14f8
    invoke-virtual/range {v48 .. v49}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@14fb
    move-result-object v48

    #@14fc
    .line 7619
    iget-object v0, v8, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    #@14fe
    move-object/from16 v49, v0

    #@1500
    .line 7618
    invoke-virtual/range {v48 .. v49}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1503
    move-result-object v48

    #@1504
    .line 7620
    const-string/jumbo v49, " cnid="

    #@1507
    .line 7618
    invoke-virtual/range {v48 .. v49}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@150a
    move-result-object v48

    #@150b
    .line 7620
    iget v0, v8, Landroid/net/wifi/WifiConfiguration;->networkId:I

    #@150d
    move/from16 v49, v0

    #@150f
    .line 7618
    invoke-virtual/range {v48 .. v49}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@1512
    move-result-object v48

    #@1513
    .line 7621
    const-string/jumbo v49, " uid="

    #@1516
    .line 7618
    invoke-virtual/range {v48 .. v49}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1519
    move-result-object v48

    #@151a
    .line 7621
    move-object/from16 v0, p1

    #@151c
    iget v0, v0, Landroid/os/Message;->sendingUid:I

    #@151e
    move/from16 v49, v0

    #@1520
    .line 7618
    invoke-virtual/range {v48 .. v49}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@1523
    move-result-object v48

    #@1524
    invoke-virtual/range {v48 .. v48}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1527
    move-result-object v48

    #@1528
    invoke-static/range {v47 .. v48}, Lcom/android/server/wifi/WifiStateMachine;->-wrap34(Lcom/android/server/wifi/WifiStateMachine;Ljava/lang/String;)V

    #@152b
    .line 7622
    move-object/from16 v0, p0

    #@152d
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@152f
    move-object/from16 v47, v0

    #@1531
    const v48, 0x25008

    #@1534
    .line 7623
    const/16 v49, 0x9

    #@1536
    .line 7622
    move-object/from16 v0, v47

    #@1538
    move-object/from16 v1, p1

    #@153a
    move/from16 v2, v48

    #@153c
    move/from16 v3, v49

    #@153e
    invoke-static {v0, v1, v2, v3}, Lcom/android/server/wifi/WifiStateMachine;->-wrap37(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;II)V

    #@1541
    goto/16 :goto_0

    #@1543
    .line 7658
    .restart local v31    # "result":Lcom/android/server/wifi/NetworkUpdateResult;
    :cond_44
    const/16 v43, 0x0

    #@1545
    .restart local v43    # "user":Z
    goto/16 :goto_e

    #@1547
    .line 7674
    .end local v43    # "user":Z
    :cond_45
    move-object/from16 v0, p0

    #@1549
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@154b
    move-object/from16 v47, v0

    #@154d
    const-string/jumbo v48, "Failed to save network"

    #@1550
    invoke-virtual/range {v47 .. v48}, Lcom/android/server/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V

    #@1553
    .line 7675
    move-object/from16 v0, p0

    #@1555
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@1557
    move-object/from16 v47, v0

    #@1559
    invoke-static {}, Lcom/android/server/wifi/WifiStateMachine;->-get3()I

    #@155c
    move-result v48

    #@155d
    invoke-static/range {v47 .. v48}, Lcom/android/server/wifi/WifiStateMachine;->-set49(Lcom/android/server/wifi/WifiStateMachine;I)I

    #@1560
    .line 7676
    move-object/from16 v0, p0

    #@1562
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@1564
    move-object/from16 v47, v0

    #@1566
    const v48, 0x25008

    #@1569
    .line 7677
    const/16 v49, 0x0

    #@156b
    .line 7676
    move-object/from16 v0, v47

    #@156d
    move-object/from16 v1, p1

    #@156f
    move/from16 v2, v48

    #@1571
    move/from16 v3, v49

    #@1573
    invoke-static {v0, v1, v2, v3}, Lcom/android/server/wifi/WifiStateMachine;->-wrap37(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;II)V

    #@1576
    goto/16 :goto_0

    #@1578
    .line 7683
    .end local v7    # "checkUid":Z
    .end local v8    # "config":Landroid/net/wifi/WifiConfiguration;
    .end local v25    # "nid":I
    .end local v31    # "result":Lcom/android/server/wifi/NetworkUpdateResult;
    :sswitch_1e
    move-object/from16 v0, p0

    #@157a
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@157c
    move-object/from16 v47, v0

    #@157e
    invoke-static/range {v47 .. v47}, Lcom/android/server/wifi/WifiStateMachine;->-get99(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigStore;

    #@1581
    move-result-object v47

    #@1582
    move-object/from16 v0, p1

    #@1584
    iget v0, v0, Landroid/os/Message;->arg1:I

    #@1586
    move/from16 v48, v0

    #@1588
    invoke-virtual/range {v47 .. v48}, Lcom/android/server/wifi/WifiConfigStore;->getWifiConfiguration(I)Landroid/net/wifi/WifiConfiguration;

    #@158b
    move-result-object v40

    #@158c
    .line 7684
    .local v40, "toRemove":Landroid/net/wifi/WifiConfiguration;
    if-nez v40, :cond_46

    #@158e
    .line 7685
    move-object/from16 v0, p0

    #@1590
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@1592
    move-object/from16 v47, v0

    #@1594
    const/16 v48, 0x0

    #@1596
    invoke-static/range {v47 .. v48}, Lcom/android/server/wifi/WifiStateMachine;->-set3(Lcom/android/server/wifi/WifiStateMachine;Landroid/net/wifi/WifiConfiguration;)Landroid/net/wifi/WifiConfiguration;

    #@1599
    .line 7690
    :goto_f
    move-object/from16 v0, p1

    #@159b
    iget v0, v0, Landroid/os/Message;->arg1:I

    #@159d
    move/from16 v23, v0

    #@159f
    .line 7692
    .restart local v23    # "netId":I
    move-object/from16 v0, p0

    #@15a1
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@15a3
    move-object/from16 v47, v0

    #@15a5
    invoke-static/range {v47 .. v47}, Lcom/android/server/wifi/WifiStateMachine;->-get99(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigStore;

    #@15a8
    move-result-object v47

    #@15a9
    move-object/from16 v0, p1

    #@15ab
    iget v0, v0, Landroid/os/Message;->sendingUid:I

    #@15ad
    move/from16 v48, v0

    #@15af
    .line 7693
    const/16 v49, 0x0

    #@15b1
    .line 7692
    move-object/from16 v0, v47

    #@15b3
    move/from16 v1, v48

    #@15b5
    move/from16 v2, v23

    #@15b7
    move/from16 v3, v49

    #@15b9
    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/wifi/WifiConfigStore;->canModifyNetwork(IIZ)Z

    #@15bc
    move-result v47

    #@15bd
    if-nez v47, :cond_47

    #@15bf
    .line 7694
    move-object/from16 v0, p0

    #@15c1
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@15c3
    move-object/from16 v47, v0

    #@15c5
    new-instance v48, Ljava/lang/StringBuilder;

    #@15c7
    invoke-direct/range {v48 .. v48}, Ljava/lang/StringBuilder;-><init>()V

    #@15ca
    const-string/jumbo v49, "Not authorized to forget network  cnid="

    #@15cd
    invoke-virtual/range {v48 .. v49}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@15d0
    move-result-object v48

    #@15d1
    move-object/from16 v0, v48

    #@15d3
    move/from16 v1, v23

    #@15d5
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@15d8
    move-result-object v48

    #@15d9
    .line 7696
    const-string/jumbo v49, " uid="

    #@15dc
    .line 7694
    invoke-virtual/range {v48 .. v49}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@15df
    move-result-object v48

    #@15e0
    .line 7696
    move-object/from16 v0, p1

    #@15e2
    iget v0, v0, Landroid/os/Message;->sendingUid:I

    #@15e4
    move/from16 v49, v0

    #@15e6
    .line 7694
    invoke-virtual/range {v48 .. v49}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@15e9
    move-result-object v48

    #@15ea
    invoke-virtual/range {v48 .. v48}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@15ed
    move-result-object v48

    #@15ee
    invoke-static/range {v47 .. v48}, Lcom/android/server/wifi/WifiStateMachine;->-wrap34(Lcom/android/server/wifi/WifiStateMachine;Ljava/lang/String;)V

    #@15f1
    .line 7697
    move-object/from16 v0, p0

    #@15f3
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@15f5
    move-object/from16 v47, v0

    #@15f7
    const v48, 0x25005

    #@15fa
    .line 7698
    const/16 v49, 0x9

    #@15fc
    .line 7697
    move-object/from16 v0, v47

    #@15fe
    move-object/from16 v1, p1

    #@1600
    move/from16 v2, v48

    #@1602
    move/from16 v3, v49

    #@1604
    invoke-static {v0, v1, v2, v3}, Lcom/android/server/wifi/WifiStateMachine;->-wrap37(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;II)V

    #@1607
    goto/16 :goto_0

    #@1609
    .line 7687
    .end local v23    # "netId":I
    :cond_46
    move-object/from16 v0, p0

    #@160b
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@160d
    move-object/from16 v47, v0

    #@160f
    new-instance v48, Landroid/net/wifi/WifiConfiguration;

    #@1611
    move-object/from16 v0, v48

    #@1613
    move-object/from16 v1, v40

    #@1615
    invoke-direct {v0, v1}, Landroid/net/wifi/WifiConfiguration;-><init>(Landroid/net/wifi/WifiConfiguration;)V

    #@1618
    invoke-static/range {v47 .. v48}, Lcom/android/server/wifi/WifiStateMachine;->-set3(Lcom/android/server/wifi/WifiStateMachine;Landroid/net/wifi/WifiConfiguration;)Landroid/net/wifi/WifiConfiguration;

    #@161b
    goto/16 :goto_f

    #@161d
    .line 7702
    .restart local v23    # "netId":I
    :cond_47
    move-object/from16 v0, p0

    #@161f
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@1621
    move-object/from16 v47, v0

    #@1623
    invoke-static/range {v47 .. v47}, Lcom/android/server/wifi/WifiStateMachine;->-get99(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigStore;

    #@1626
    move-result-object v47

    #@1627
    move-object/from16 v0, p1

    #@1629
    iget v0, v0, Landroid/os/Message;->arg1:I

    #@162b
    move/from16 v48, v0

    #@162d
    invoke-virtual/range {v47 .. v48}, Lcom/android/server/wifi/WifiConfigStore;->forgetNetwork(I)Z

    #@1630
    move-result v47

    #@1631
    if-eqz v47, :cond_48

    #@1633
    .line 7703
    move-object/from16 v0, p0

    #@1635
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@1637
    move-object/from16 v47, v0

    #@1639
    const v48, 0x25006

    #@163c
    move-object/from16 v0, v47

    #@163e
    move-object/from16 v1, p1

    #@1640
    move/from16 v2, v48

    #@1642
    invoke-static {v0, v1, v2}, Lcom/android/server/wifi/WifiStateMachine;->-wrap36(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;I)V

    #@1645
    .line 7704
    move-object/from16 v0, p0

    #@1647
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@1649
    move-object/from16 v48, v0

    #@164b
    .line 7705
    move-object/from16 v0, p1

    #@164d
    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@164f
    move-object/from16 v47, v0

    #@1651
    check-cast v47, Landroid/net/wifi/WifiConfiguration;

    #@1653
    .line 7704
    const/16 v49, 0x1

    #@1655
    move-object/from16 v0, v48

    #@1657
    move/from16 v1, v49

    #@1659
    move-object/from16 v2, v47

    #@165b
    invoke-static {v0, v1, v2}, Lcom/android/server/wifi/WifiStateMachine;->-wrap18(Lcom/android/server/wifi/WifiStateMachine;ILandroid/net/wifi/WifiConfiguration;)V

    #@165e
    goto/16 :goto_0

    #@1660
    .line 7707
    :cond_48
    move-object/from16 v0, p0

    #@1662
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@1664
    move-object/from16 v47, v0

    #@1666
    const-string/jumbo v48, "Failed to forget network"

    #@1669
    invoke-virtual/range {v47 .. v48}, Lcom/android/server/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V

    #@166c
    .line 7708
    move-object/from16 v0, p0

    #@166e
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@1670
    move-object/from16 v47, v0

    #@1672
    const v48, 0x25005

    #@1675
    .line 7709
    const/16 v49, 0x0

    #@1677
    .line 7708
    move-object/from16 v0, v47

    #@1679
    move-object/from16 v1, p1

    #@167b
    move/from16 v2, v48

    #@167d
    move/from16 v3, v49

    #@167f
    invoke-static {v0, v1, v2, v3}, Lcom/android/server/wifi/WifiStateMachine;->-wrap37(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;II)V

    #@1682
    goto/16 :goto_0

    #@1684
    .line 7713
    .end local v23    # "netId":I
    .end local v40    # "toRemove":Landroid/net/wifi/WifiConfiguration;
    :sswitch_1f
    move-object/from16 v0, p1

    #@1686
    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@1688
    move-object/from16 v45, v0

    #@168a
    check-cast v45, Landroid/net/wifi/WpsInfo;

    #@168c
    .line 7715
    .local v45, "wpsInfo":Landroid/net/wifi/WpsInfo;
    move-object/from16 v0, v45

    #@168e
    iget v0, v0, Landroid/net/wifi/WpsInfo;->setup:I

    #@1690
    move/from16 v47, v0

    #@1692
    packed-switch v47, :pswitch_data_0

    #@1695
    .line 7726
    new-instance v46, Landroid/net/wifi/WpsResult;

    #@1697
    sget-object v47, Landroid/net/wifi/WpsResult$Status;->FAILURE:Landroid/net/wifi/WpsResult$Status;

    #@1699
    invoke-direct/range {v46 .. v47}, Landroid/net/wifi/WpsResult;-><init>(Landroid/net/wifi/WpsResult$Status;)V

    #@169c
    .line 7727
    .local v46, "wpsResult":Landroid/net/wifi/WpsResult;
    move-object/from16 v0, p0

    #@169e
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@16a0
    move-object/from16 v47, v0

    #@16a2
    const-string/jumbo v48, "Invalid setup for WPS"

    #@16a5
    invoke-virtual/range {v47 .. v48}, Lcom/android/server/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V

    #@16a8
    .line 7730
    :goto_10
    move-object/from16 v0, p0

    #@16aa
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@16ac
    move-object/from16 v47, v0

    #@16ae
    invoke-static/range {v47 .. v47}, Lcom/android/server/wifi/WifiStateMachine;->-get99(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigStore;

    #@16b1
    move-result-object v47

    #@16b2
    .line 7731
    const/16 v48, -0x1

    #@16b4
    .line 7730
    invoke-virtual/range {v47 .. v48}, Lcom/android/server/wifi/WifiConfigStore;->setLastSelectedConfiguration(I)V

    #@16b7
    .line 7732
    move-object/from16 v0, v46

    #@16b9
    iget-object v0, v0, Landroid/net/wifi/WpsResult;->status:Landroid/net/wifi/WpsResult$Status;

    #@16bb
    move-object/from16 v47, v0

    #@16bd
    sget-object v48, Landroid/net/wifi/WpsResult$Status;->SUCCESS:Landroid/net/wifi/WpsResult$Status;

    #@16bf
    move-object/from16 v0, v47

    #@16c1
    move-object/from16 v1, v48

    #@16c3
    if-ne v0, v1, :cond_49

    #@16c5
    .line 7733
    move-object/from16 v0, p0

    #@16c7
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@16c9
    move-object/from16 v47, v0

    #@16cb
    const v48, 0x2500b

    #@16ce
    move-object/from16 v0, v47

    #@16d0
    move-object/from16 v1, p1

    #@16d2
    move/from16 v2, v48

    #@16d4
    move-object/from16 v3, v46

    #@16d6
    invoke-static {v0, v1, v2, v3}, Lcom/android/server/wifi/WifiStateMachine;->-wrap38(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;ILjava/lang/Object;)V

    #@16d9
    .line 7734
    move-object/from16 v0, p0

    #@16db
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@16dd
    move-object/from16 v47, v0

    #@16df
    move-object/from16 v0, p0

    #@16e1
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@16e3
    move-object/from16 v48, v0

    #@16e5
    invoke-static/range {v48 .. v48}, Lcom/android/server/wifi/WifiStateMachine;->-get108(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/internal/util/State;

    #@16e8
    move-result-object v48

    #@16e9
    invoke-static/range {v47 .. v48}, Lcom/android/server/wifi/WifiStateMachine;->-wrap55(Lcom/android/server/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V

    #@16ec
    goto/16 :goto_0

    #@16ee
    .line 7717
    .end local v46    # "wpsResult":Landroid/net/wifi/WpsResult;
    :pswitch_0
    move-object/from16 v0, p0

    #@16f0
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@16f2
    move-object/from16 v47, v0

    #@16f4
    invoke-static/range {v47 .. v47}, Lcom/android/server/wifi/WifiStateMachine;->-get99(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigStore;

    #@16f7
    move-result-object v47

    #@16f8
    move-object/from16 v0, v47

    #@16fa
    move-object/from16 v1, v45

    #@16fc
    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiConfigStore;->startWpsPbc(Landroid/net/wifi/WpsInfo;)Landroid/net/wifi/WpsResult;

    #@16ff
    move-result-object v46

    #@1700
    .restart local v46    # "wpsResult":Landroid/net/wifi/WpsResult;
    goto :goto_10

    #@1701
    .line 7720
    .end local v46    # "wpsResult":Landroid/net/wifi/WpsResult;
    :pswitch_1
    move-object/from16 v0, p0

    #@1703
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@1705
    move-object/from16 v47, v0

    #@1707
    invoke-static/range {v47 .. v47}, Lcom/android/server/wifi/WifiStateMachine;->-get99(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigStore;

    #@170a
    move-result-object v47

    #@170b
    move-object/from16 v0, v47

    #@170d
    move-object/from16 v1, v45

    #@170f
    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiConfigStore;->startWpsWithPinFromAccessPoint(Landroid/net/wifi/WpsInfo;)Landroid/net/wifi/WpsResult;

    #@1712
    move-result-object v46

    #@1713
    .restart local v46    # "wpsResult":Landroid/net/wifi/WpsResult;
    goto :goto_10

    #@1714
    .line 7723
    .end local v46    # "wpsResult":Landroid/net/wifi/WpsResult;
    :pswitch_2
    move-object/from16 v0, p0

    #@1716
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@1718
    move-object/from16 v47, v0

    #@171a
    invoke-static/range {v47 .. v47}, Lcom/android/server/wifi/WifiStateMachine;->-get99(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigStore;

    #@171d
    move-result-object v47

    #@171e
    move-object/from16 v0, v47

    #@1720
    move-object/from16 v1, v45

    #@1722
    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiConfigStore;->startWpsWithPinFromDevice(Landroid/net/wifi/WpsInfo;)Landroid/net/wifi/WpsResult;

    #@1725
    move-result-object v46

    #@1726
    .restart local v46    # "wpsResult":Landroid/net/wifi/WpsResult;
    goto :goto_10

    #@1727
    .line 7736
    :cond_49
    move-object/from16 v0, p0

    #@1729
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@172b
    move-object/from16 v47, v0

    #@172d
    new-instance v48, Ljava/lang/StringBuilder;

    #@172f
    invoke-direct/range {v48 .. v48}, Ljava/lang/StringBuilder;-><init>()V

    #@1732
    const-string/jumbo v49, "Failed to start WPS with config "

    #@1735
    invoke-virtual/range {v48 .. v49}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1738
    move-result-object v48

    #@1739
    invoke-virtual/range {v45 .. v45}, Landroid/net/wifi/WpsInfo;->toString()Ljava/lang/String;

    #@173c
    move-result-object v49

    #@173d
    invoke-virtual/range {v48 .. v49}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1740
    move-result-object v48

    #@1741
    invoke-virtual/range {v48 .. v48}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1744
    move-result-object v48

    #@1745
    invoke-virtual/range {v47 .. v48}, Lcom/android/server/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V

    #@1748
    .line 7737
    move-object/from16 v0, p0

    #@174a
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@174c
    move-object/from16 v47, v0

    #@174e
    const v48, 0x2500c

    #@1751
    const/16 v49, 0x0

    #@1753
    move-object/from16 v0, v47

    #@1755
    move-object/from16 v1, p1

    #@1757
    move/from16 v2, v48

    #@1759
    move/from16 v3, v49

    #@175b
    invoke-static {v0, v1, v2, v3}, Lcom/android/server/wifi/WifiStateMachine;->-wrap37(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;II)V

    #@175e
    goto/16 :goto_0

    #@1760
    .line 7741
    .end local v45    # "wpsInfo":Landroid/net/wifi/WpsInfo;
    .end local v46    # "wpsResult":Landroid/net/wifi/WpsResult;
    :sswitch_20
    invoke-static {}, Lcom/android/server/wifi/WifiStateMachine;->-get0()Z

    #@1763
    move-result v47

    #@1764
    if-eqz v47, :cond_4a

    #@1766
    move-object/from16 v0, p0

    #@1768
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@176a
    move-object/from16 v47, v0

    #@176c
    const-string/jumbo v48, "Network connection established"

    #@176f
    invoke-virtual/range {v47 .. v48}, Lcom/android/server/wifi/WifiStateMachine;->log(Ljava/lang/String;)V

    #@1772
    .line 7742
    :cond_4a
    move-object/from16 v0, p0

    #@1774
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@1776
    move-object/from16 v47, v0

    #@1778
    move-object/from16 v0, p1

    #@177a
    iget v0, v0, Landroid/os/Message;->arg1:I

    #@177c
    move/from16 v48, v0

    #@177e
    invoke-static/range {v47 .. v48}, Lcom/android/server/wifi/WifiStateMachine;->-set30(Lcom/android/server/wifi/WifiStateMachine;I)I

    #@1781
    .line 7743
    move-object/from16 v0, p0

    #@1783
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@1785
    move-object/from16 v48, v0

    #@1787
    move-object/from16 v0, p1

    #@1789
    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@178b
    move-object/from16 v47, v0

    #@178d
    check-cast v47, Ljava/lang/String;

    #@178f
    move-object/from16 v0, v48

    #@1791
    move-object/from16 v1, v47

    #@1793
    invoke-static {v0, v1}, Lcom/android/server/wifi/WifiStateMachine;->-set27(Lcom/android/server/wifi/WifiStateMachine;Ljava/lang/String;)Ljava/lang/String;

    #@1796
    .line 7745
    move-object/from16 v0, p0

    #@1798
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@179a
    move-object/from16 v47, v0

    #@179c
    invoke-static/range {v47 .. v47}, Lcom/android/server/wifi/WifiStateMachine;->-get101(Lcom/android/server/wifi/WifiStateMachine;)Landroid/net/wifi/WifiInfo;

    #@179f
    move-result-object v47

    #@17a0
    move-object/from16 v0, p0

    #@17a2
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@17a4
    move-object/from16 v48, v0

    #@17a6
    invoke-static/range {v48 .. v48}, Lcom/android/server/wifi/WifiStateMachine;->-get48(Lcom/android/server/wifi/WifiStateMachine;)Ljava/lang/String;

    #@17a9
    move-result-object v48

    #@17aa
    invoke-virtual/range {v47 .. v48}, Landroid/net/wifi/WifiInfo;->setBSSID(Ljava/lang/String;)V

    #@17ad
    .line 7746
    move-object/from16 v0, p0

    #@17af
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@17b1
    move-object/from16 v47, v0

    #@17b3
    invoke-static/range {v47 .. v47}, Lcom/android/server/wifi/WifiStateMachine;->-get101(Lcom/android/server/wifi/WifiStateMachine;)Landroid/net/wifi/WifiInfo;

    #@17b6
    move-result-object v47

    #@17b7
    move-object/from16 v0, p0

    #@17b9
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@17bb
    move-object/from16 v48, v0

    #@17bd
    invoke-static/range {v48 .. v48}, Lcom/android/server/wifi/WifiStateMachine;->-get51(Lcom/android/server/wifi/WifiStateMachine;)I

    #@17c0
    move-result v48

    #@17c1
    invoke-virtual/range {v47 .. v48}, Landroid/net/wifi/WifiInfo;->setNetworkId(I)V

    #@17c4
    .line 7748
    move-object/from16 v0, p0

    #@17c6
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@17c8
    move-object/from16 v47, v0

    #@17ca
    move-object/from16 v0, p0

    #@17cc
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@17ce
    move-object/from16 v48, v0

    #@17d0
    invoke-static/range {v48 .. v48}, Lcom/android/server/wifi/WifiStateMachine;->-get48(Lcom/android/server/wifi/WifiStateMachine;)Ljava/lang/String;

    #@17d3
    move-result-object v48

    #@17d4
    invoke-static/range {v47 .. v48}, Lcom/android/server/wifi/WifiStateMachine;->-wrap41(Lcom/android/server/wifi/WifiStateMachine;Ljava/lang/String;)V

    #@17d7
    .line 7749
    move-object/from16 v0, p0

    #@17d9
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@17db
    move-object/from16 v47, v0

    #@17dd
    move-object/from16 v0, p0

    #@17df
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@17e1
    move-object/from16 v48, v0

    #@17e3
    invoke-static/range {v48 .. v48}, Lcom/android/server/wifi/WifiStateMachine;->-get59(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/internal/util/State;

    #@17e6
    move-result-object v48

    #@17e7
    invoke-static/range {v47 .. v48}, Lcom/android/server/wifi/WifiStateMachine;->-wrap55(Lcom/android/server/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V

    #@17ea
    goto/16 :goto_0

    #@17ec
    .line 7761
    :sswitch_21
    invoke-static {}, Lcom/android/server/wifi/WifiStateMachine;->-get0()Z

    #@17ef
    move-result v47

    #@17f0
    if-eqz v47, :cond_4b

    #@17f2
    move-object/from16 v0, p0

    #@17f4
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@17f6
    move-object/from16 v47, v0

    #@17f8
    const-string/jumbo v48, "ConnectModeState: Network connection lost "

    #@17fb
    invoke-virtual/range {v47 .. v48}, Lcom/android/server/wifi/WifiStateMachine;->log(Ljava/lang/String;)V

    #@17fe
    .line 7762
    :cond_4b
    move-object/from16 v0, p0

    #@1800
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@1802
    move-object/from16 v47, v0

    #@1804
    invoke-static/range {v47 .. v47}, Lcom/android/server/wifi/WifiStateMachine;->-wrap28(Lcom/android/server/wifi/WifiStateMachine;)V

    #@1807
    .line 7763
    move-object/from16 v0, p0

    #@1809
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@180b
    move-object/from16 v47, v0

    #@180d
    move-object/from16 v0, p0

    #@180f
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@1811
    move-object/from16 v48, v0

    #@1813
    invoke-static/range {v48 .. v48}, Lcom/android/server/wifi/WifiStateMachine;->-get26(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/internal/util/State;

    #@1816
    move-result-object v48

    #@1817
    invoke-static/range {v47 .. v48}, Lcom/android/server/wifi/WifiStateMachine;->-wrap55(Lcom/android/server/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V

    #@181a
    goto/16 :goto_0

    #@181c
    .line 7766
    :sswitch_22
    move-object/from16 v0, p0

    #@181e
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@1820
    move-object/from16 v48, v0

    #@1822
    move-object/from16 v0, p1

    #@1824
    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@1826
    move-object/from16 v47, v0

    #@1828
    check-cast v47, [Landroid/net/wifi/ScanResult;

    #@182a
    move-object/from16 v0, v48

    #@182c
    move-object/from16 v1, v47

    #@182e
    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiStateMachine;->processPnoNetworkFound([Landroid/net/wifi/ScanResult;)V

    #@1831
    goto/16 :goto_0

    #@1833
    .line 7004
    nop

    #@1834
    :sswitch_data_0
    .sparse-switch
        0x20034 -> :sswitch_5
        0x20035 -> :sswitch_6
        0x20036 -> :sswitch_7
        0x20037 -> :sswitch_8
        0x20038 -> :sswitch_b
        0x20039 -> :sswitch_c
        0x2003a -> :sswitch_d
        0x2003b -> :sswitch_e
        0x2003e -> :sswitch_11
        0x20049 -> :sswitch_13
        0x2004a -> :sswitch_14
        0x2004b -> :sswitch_15
        0x20061 -> :sswitch_19
        0x20062 -> :sswitch_a
        0x20063 -> :sswitch_12
        0x2008e -> :sswitch_16
        0x2008f -> :sswitch_18
        0x20091 -> :sswitch_17
        0x20092 -> :sswitch_1d
        0x20098 -> :sswitch_1a
        0x2009c -> :sswitch_22
        0x2300c -> :sswitch_4
        0x24003 -> :sswitch_20
        0x24004 -> :sswitch_21
        0x24006 -> :sswitch_3
        0x24007 -> :sswitch_1
        0x2400d -> :sswitch_2
        0x2400e -> :sswitch_2
        0x2400f -> :sswitch_f
        0x24010 -> :sswitch_10
        0x2402b -> :sswitch_0
        0x25001 -> :sswitch_1b
        0x25004 -> :sswitch_1e
        0x25007 -> :sswitch_1c
        0x2500a -> :sswitch_1f
        0x25011 -> :sswitch_9
    .end sparse-switch

    #@18c6
    .line 7715
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
