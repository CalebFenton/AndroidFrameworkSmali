.class Lcom/android/server/wifi/WifiWatchdogStateMachine$LinkMonitoringState;
.super Lcom/android/internal/util/State;
.source "WifiWatchdogStateMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifi/WifiWatchdogStateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "LinkMonitoringState"
.end annotation


# instance fields
.field private mLastRssi:I

.field private mLastTxBad:I

.field private mLastTxGood:I

.field private mSampleCount:I

.field final synthetic this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;


# direct methods
.method constructor <init>(Lcom/android/server/wifi/WifiWatchdogStateMachine;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/wifi/WifiWatchdogStateMachine;

    #@0
    .prologue
    .line 745
    iput-object p1, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$LinkMonitoringState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    #@2
    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    #@5
    return-void
.end method


# virtual methods
.method public enter()V
    .locals 7

    #@0
    .prologue
    const/4 v6, 0x0

    #@1
    .line 756
    iput v6, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$LinkMonitoringState;->mSampleCount:I

    #@3
    .line 757
    iget-object v0, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$LinkMonitoringState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    #@5
    new-instance v1, Lcom/android/server/wifi/WifiWatchdogStateMachine$VolumeWeightedEMA;

    #@7
    iget-object v2, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$LinkMonitoringState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    #@9
    const-wide/high16 v4, 0x3fe0000000000000L    # 0.5

    #@b
    invoke-direct {v1, v2, v4, v5}, Lcom/android/server/wifi/WifiWatchdogStateMachine$VolumeWeightedEMA;-><init>(Lcom/android/server/wifi/WifiWatchdogStateMachine;D)V

    #@e
    invoke-static {v0, v1}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->-set0(Lcom/android/server/wifi/WifiWatchdogStateMachine;Lcom/android/server/wifi/WifiWatchdogStateMachine$VolumeWeightedEMA;)Lcom/android/server/wifi/WifiWatchdogStateMachine$VolumeWeightedEMA;

    #@11
    .line 758
    iget-object v0, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$LinkMonitoringState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    #@13
    iget-object v1, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$LinkMonitoringState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    #@15
    iget-object v2, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$LinkMonitoringState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    #@17
    invoke-static {v2}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->-get11(Lcom/android/server/wifi/WifiWatchdogStateMachine;)I

    #@1a
    move-result v3

    #@1b
    add-int/lit8 v3, v3, 0x1

    #@1d
    invoke-static {v2, v3}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->-set4(Lcom/android/server/wifi/WifiWatchdogStateMachine;I)I

    #@20
    move-result v2

    #@21
    const v3, 0x2100b

    #@24
    invoke-virtual {v1, v3, v2, v6}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->obtainMessage(III)Landroid/os/Message;

    #@27
    move-result-object v1

    #@28
    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->sendMessage(Landroid/os/Message;)V

    #@2b
    .line 754
    return-void
.end method

.method public processMessage(Landroid/os/Message;)Z
    .locals 21
    .param p1, "msg"    # Landroid/os/Message;

    #@0
    .prologue
    .line 763
    move-object/from16 v0, p1

    #@2
    iget v0, v0, Landroid/os/Message;->what:I

    #@4
    move/from16 v16, v0

    #@6
    sparse-switch v16, :sswitch_data_0

    #@9
    .line 850
    const/16 v16, 0x0

    #@b
    return v16

    #@c
    .line 765
    :sswitch_0
    move-object/from16 v0, p0

    #@e
    iget-object v0, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$LinkMonitoringState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    #@10
    move-object/from16 v16, v0

    #@12
    move-object/from16 v0, p0

    #@14
    iget-object v0, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$LinkMonitoringState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    #@16
    move-object/from16 v17, v0

    #@18
    move-object/from16 v0, p1

    #@1a
    iget v0, v0, Landroid/os/Message;->arg1:I

    #@1c
    move/from16 v18, v0

    #@1e
    invoke-static/range {v17 .. v18}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->-wrap2(Lcom/android/server/wifi/WifiWatchdogStateMachine;I)I

    #@21
    move-result v17

    #@22
    invoke-static/range {v16 .. v17}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->-set1(Lcom/android/server/wifi/WifiWatchdogStateMachine;I)I

    #@25
    .line 766
    move-object/from16 v0, p0

    #@27
    iget-object v0, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$LinkMonitoringState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    #@29
    move-object/from16 v16, v0

    #@2b
    invoke-static/range {v16 .. v16}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->-get4(Lcom/android/server/wifi/WifiWatchdogStateMachine;)I

    #@2e
    move-result v16

    #@2f
    const/16 v17, 0x4

    #@31
    move/from16 v0, v16

    #@33
    move/from16 v1, v17

    #@35
    if-gt v0, v1, :cond_1

    #@37
    .line 852
    :cond_0
    :goto_0
    :sswitch_1
    const/16 v16, 0x1

    #@39
    return v16

    #@3a
    .line 770
    :cond_1
    move-object/from16 v0, p0

    #@3c
    iget-object v0, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$LinkMonitoringState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    #@3e
    move-object/from16 v16, v0

    #@40
    move-object/from16 v0, p0

    #@42
    iget-object v0, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$LinkMonitoringState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    #@44
    move-object/from16 v17, v0

    #@46
    invoke-static/range {v17 .. v17}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->-get9(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Lcom/android/server/wifi/WifiWatchdogStateMachine$OnlineWatchState;

    #@49
    move-result-object v17

    #@4a
    invoke-static/range {v16 .. v17}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->-wrap5(Lcom/android/server/wifi/WifiWatchdogStateMachine;Lcom/android/internal/util/IState;)V

    #@4d
    goto :goto_0

    #@4e
    .line 775
    :sswitch_2
    move-object/from16 v0, p0

    #@50
    iget-object v0, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$LinkMonitoringState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    #@52
    move-object/from16 v16, v0

    #@54
    move-object/from16 v0, p0

    #@56
    iget-object v0, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$LinkMonitoringState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    #@58
    move-object/from16 v17, v0

    #@5a
    invoke-static/range {v17 .. v17}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->-get6(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Lcom/android/server/wifi/WifiWatchdogStateMachine$LinkMonitoringState;

    #@5d
    move-result-object v17

    #@5e
    invoke-static/range {v16 .. v17}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->-wrap5(Lcom/android/server/wifi/WifiWatchdogStateMachine;Lcom/android/internal/util/IState;)V

    #@61
    goto :goto_0

    #@62
    .line 779
    :sswitch_3
    move-object/from16 v0, p0

    #@64
    iget-object v0, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$LinkMonitoringState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    #@66
    move-object/from16 v16, v0

    #@68
    invoke-static/range {v16 .. v16}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->-get5(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Z

    #@6b
    move-result v16

    #@6c
    if-nez v16, :cond_2

    #@6e
    .line 780
    move-object/from16 v0, p0

    #@70
    iget-object v0, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$LinkMonitoringState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    #@72
    move-object/from16 v16, v0

    #@74
    move-object/from16 v0, p0

    #@76
    iget-object v0, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$LinkMonitoringState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    #@78
    move-object/from16 v17, v0

    #@7a
    invoke-static/range {v17 .. v17}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->-get8(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Lcom/android/server/wifi/WifiWatchdogStateMachine$OnlineState;

    #@7d
    move-result-object v17

    #@7e
    invoke-static/range {v16 .. v17}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->-wrap5(Lcom/android/server/wifi/WifiWatchdogStateMachine;Lcom/android/internal/util/IState;)V

    #@81
    goto :goto_0

    #@82
    .line 781
    :cond_2
    move-object/from16 v0, p1

    #@84
    iget v0, v0, Landroid/os/Message;->arg1:I

    #@86
    move/from16 v16, v0

    #@88
    move-object/from16 v0, p0

    #@8a
    iget-object v0, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$LinkMonitoringState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    #@8c
    move-object/from16 v17, v0

    #@8e
    invoke-static/range {v17 .. v17}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->-get11(Lcom/android/server/wifi/WifiWatchdogStateMachine;)I

    #@91
    move-result v17

    #@92
    move/from16 v0, v16

    #@94
    move/from16 v1, v17

    #@96
    if-ne v0, v1, :cond_0

    #@98
    .line 782
    move-object/from16 v0, p0

    #@9a
    iget-object v0, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$LinkMonitoringState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    #@9c
    move-object/from16 v16, v0

    #@9e
    invoke-static/range {v16 .. v16}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->-get16(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Lcom/android/internal/util/AsyncChannel;

    #@a1
    move-result-object v16

    #@a2
    const v17, 0x25014

    #@a5
    invoke-virtual/range {v16 .. v17}, Lcom/android/internal/util/AsyncChannel;->sendMessage(I)V

    #@a8
    .line 783
    move-object/from16 v0, p0

    #@aa
    iget-object v0, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$LinkMonitoringState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    #@ac
    move-object/from16 v16, v0

    #@ae
    move-object/from16 v0, p0

    #@b0
    iget-object v0, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$LinkMonitoringState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    #@b2
    move-object/from16 v17, v0

    #@b4
    move-object/from16 v0, p0

    #@b6
    iget-object v0, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$LinkMonitoringState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    #@b8
    move-object/from16 v18, v0

    #@ba
    invoke-static/range {v18 .. v18}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->-get11(Lcom/android/server/wifi/WifiWatchdogStateMachine;)I

    #@bd
    move-result v19

    #@be
    add-int/lit8 v19, v19, 0x1

    #@c0
    invoke-static/range {v18 .. v19}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->-set4(Lcom/android/server/wifi/WifiWatchdogStateMachine;I)I

    #@c3
    move-result v18

    #@c4
    const v19, 0x2100b

    #@c7
    const/16 v20, 0x0

    #@c9
    move-object/from16 v0, v17

    #@cb
    move/from16 v1, v19

    #@cd
    move/from16 v2, v18

    #@cf
    move/from16 v3, v20

    #@d1
    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->obtainMessage(III)Landroid/os/Message;

    #@d4
    move-result-object v17

    #@d5
    .line 784
    const-wide/16 v18, 0x3e8

    #@d7
    .line 783
    invoke-virtual/range {v16 .. v19}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->sendMessageDelayed(Landroid/os/Message;J)V

    #@da
    goto/16 :goto_0

    #@dc
    .line 789
    :sswitch_4
    move-object/from16 v0, p0

    #@de
    iget-object v0, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$LinkMonitoringState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    #@e0
    move-object/from16 v16, v0

    #@e2
    invoke-static/range {v16 .. v16}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->-get2(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Lcom/android/server/wifi/WifiWatchdogStateMachine$BssidStatistics;

    #@e5
    move-result-object v16

    #@e6
    if-eqz v16, :cond_0

    #@e8
    .line 792
    move-object/from16 v0, p1

    #@ea
    iget-object v7, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@ec
    check-cast v7, Landroid/net/wifi/RssiPacketCountInfo;

    #@ee
    .line 793
    .local v7, "info":Landroid/net/wifi/RssiPacketCountInfo;
    iget v11, v7, Landroid/net/wifi/RssiPacketCountInfo;->rssi:I

    #@f0
    .line 794
    .local v11, "rssi":I
    move-object/from16 v0, p0

    #@f2
    iget v0, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$LinkMonitoringState;->mLastRssi:I

    #@f4
    move/from16 v16, v0

    #@f6
    add-int v16, v16, v11

    #@f8
    div-int/lit8 v10, v16, 0x2

    #@fa
    .line 795
    .local v10, "mrssi":I
    iget v14, v7, Landroid/net/wifi/RssiPacketCountInfo;->txbad:I

    #@fc
    .line 796
    .local v14, "txbad":I
    iget v15, v7, Landroid/net/wifi/RssiPacketCountInfo;->txgood:I

    #@fe
    .line 801
    .local v15, "txgood":I
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    #@101
    move-result-wide v12

    #@102
    .line 802
    .local v12, "now":J
    move-object/from16 v0, p0

    #@104
    iget-object v0, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$LinkMonitoringState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    #@106
    move-object/from16 v16, v0

    #@108
    invoke-static/range {v16 .. v16}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->-get2(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Lcom/android/server/wifi/WifiWatchdogStateMachine$BssidStatistics;

    #@10b
    move-result-object v16

    #@10c
    invoke-static/range {v16 .. v16}, Lcom/android/server/wifi/WifiWatchdogStateMachine$BssidStatistics;->-get4(Lcom/android/server/wifi/WifiWatchdogStateMachine$BssidStatistics;)J

    #@10f
    move-result-wide v16

    #@110
    sub-long v16, v12, v16

    #@112
    const-wide/16 v18, 0x7d0

    #@114
    cmp-long v16, v16, v18

    #@116
    if-gez v16, :cond_3

    #@118
    .line 805
    move-object/from16 v0, p0

    #@11a
    iget v0, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$LinkMonitoringState;->mLastTxBad:I

    #@11c
    move/from16 v16, v0

    #@11e
    sub-int v4, v14, v16

    #@120
    .line 806
    .local v4, "dbad":I
    move-object/from16 v0, p0

    #@122
    iget v0, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$LinkMonitoringState;->mLastTxGood:I

    #@124
    move/from16 v16, v0

    #@126
    sub-int v5, v15, v16

    #@128
    .line 807
    .local v5, "dgood":I
    add-int v6, v4, v5

    #@12a
    .line 809
    .local v6, "dtotal":I
    if-lez v6, :cond_3

    #@12c
    .line 811
    int-to-double v0, v4

    #@12d
    move-wide/from16 v16, v0

    #@12f
    int-to-double v0, v6

    #@130
    move-wide/from16 v18, v0

    #@132
    div-double v8, v16, v18

    #@134
    .line 813
    .local v8, "loss":D
    move-object/from16 v0, p0

    #@136
    iget-object v0, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$LinkMonitoringState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    #@138
    move-object/from16 v16, v0

    #@13a
    invoke-static/range {v16 .. v16}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->-get3(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Lcom/android/server/wifi/WifiWatchdogStateMachine$VolumeWeightedEMA;

    #@13d
    move-result-object v16

    #@13e
    move-object/from16 v0, v16

    #@140
    invoke-virtual {v0, v8, v9, v6}, Lcom/android/server/wifi/WifiWatchdogStateMachine$VolumeWeightedEMA;->update(DI)V

    #@143
    .line 822
    move-object/from16 v0, p0

    #@145
    iget-object v0, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$LinkMonitoringState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    #@147
    move-object/from16 v16, v0

    #@149
    invoke-static/range {v16 .. v16}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->-get2(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Lcom/android/server/wifi/WifiWatchdogStateMachine$BssidStatistics;

    #@14c
    move-result-object v16

    #@14d
    move-object/from16 v0, v16

    #@14f
    invoke-virtual {v0, v10, v8, v9, v6}, Lcom/android/server/wifi/WifiWatchdogStateMachine$BssidStatistics;->updateLoss(IDI)V

    #@152
    .line 825
    move-object/from16 v0, p0

    #@154
    iget-object v0, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$LinkMonitoringState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    #@156
    move-object/from16 v16, v0

    #@158
    invoke-static/range {v16 .. v16}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->-get3(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Lcom/android/server/wifi/WifiWatchdogStateMachine$VolumeWeightedEMA;

    #@15b
    move-result-object v16

    #@15c
    invoke-static/range {v16 .. v16}, Lcom/android/server/wifi/WifiWatchdogStateMachine$VolumeWeightedEMA;->-get0(Lcom/android/server/wifi/WifiWatchdogStateMachine$VolumeWeightedEMA;)D

    #@15f
    move-result-wide v16

    #@160
    const-wide/high16 v18, 0x3fe0000000000000L    # 0.5

    #@162
    cmpl-double v16, v16, v18

    #@164
    if-lez v16, :cond_4

    #@166
    .line 826
    move-object/from16 v0, p0

    #@168
    iget-object v0, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$LinkMonitoringState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    #@16a
    move-object/from16 v16, v0

    #@16c
    invoke-static/range {v16 .. v16}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->-get3(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Lcom/android/server/wifi/WifiWatchdogStateMachine$VolumeWeightedEMA;

    #@16f
    move-result-object v16

    #@170
    invoke-static/range {v16 .. v16}, Lcom/android/server/wifi/WifiWatchdogStateMachine$VolumeWeightedEMA;->-get1(Lcom/android/server/wifi/WifiWatchdogStateMachine$VolumeWeightedEMA;)D

    #@173
    move-result-wide v16

    #@174
    const-wide/high16 v18, 0x4000000000000000L    # 2.0

    #@176
    cmpl-double v16, v16, v18

    #@178
    if-lez v16, :cond_4

    #@17a
    .line 827
    move-object/from16 v0, p0

    #@17c
    iget v0, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$LinkMonitoringState;->mSampleCount:I

    #@17e
    move/from16 v16, v0

    #@180
    add-int/lit8 v16, v16, 0x1

    #@182
    move/from16 v0, v16

    #@184
    move-object/from16 v1, p0

    #@186
    iput v0, v1, Lcom/android/server/wifi/WifiWatchdogStateMachine$LinkMonitoringState;->mSampleCount:I

    #@188
    const/16 v17, 0x3

    #@18a
    move/from16 v0, v16

    #@18c
    move/from16 v1, v17

    #@18e
    if-lt v0, v1, :cond_3

    #@190
    .line 828
    move-object/from16 v0, p0

    #@192
    iget-object v0, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$LinkMonitoringState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    #@194
    move-object/from16 v16, v0

    #@196
    invoke-static/range {v16 .. v16}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->-get2(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Lcom/android/server/wifi/WifiWatchdogStateMachine$BssidStatistics;

    #@199
    move-result-object v16

    #@19a
    move-object/from16 v0, v16

    #@19c
    invoke-virtual {v0, v11}, Lcom/android/server/wifi/WifiWatchdogStateMachine$BssidStatistics;->poorLinkDetected(I)Z

    #@19f
    move-result v16

    #@1a0
    if-eqz v16, :cond_3

    #@1a2
    .line 829
    move-object/from16 v0, p0

    #@1a4
    iget-object v0, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$LinkMonitoringState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    #@1a6
    move-object/from16 v16, v0

    #@1a8
    const/16 v17, 0x0

    #@1aa
    invoke-static/range {v16 .. v17}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->-wrap4(Lcom/android/server/wifi/WifiWatchdogStateMachine;Z)V

    #@1ad
    .line 830
    move-object/from16 v0, p0

    #@1af
    iget-object v0, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$LinkMonitoringState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    #@1b1
    move-object/from16 v16, v0

    #@1b3
    invoke-static/range {v16 .. v16}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->-get11(Lcom/android/server/wifi/WifiWatchdogStateMachine;)I

    #@1b6
    move-result v17

    #@1b7
    add-int/lit8 v17, v17, 0x1

    #@1b9
    invoke-static/range {v16 .. v17}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->-set4(Lcom/android/server/wifi/WifiWatchdogStateMachine;I)I

    #@1bc
    .line 838
    .end local v4    # "dbad":I
    .end local v5    # "dgood":I
    .end local v6    # "dtotal":I
    .end local v8    # "loss":D
    :cond_3
    :goto_1
    move-object/from16 v0, p0

    #@1be
    iget-object v0, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$LinkMonitoringState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    #@1c0
    move-object/from16 v16, v0

    #@1c2
    invoke-static/range {v16 .. v16}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->-get2(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Lcom/android/server/wifi/WifiWatchdogStateMachine$BssidStatistics;

    #@1c5
    move-result-object v16

    #@1c6
    move-object/from16 v0, v16

    #@1c8
    invoke-static {v0, v12, v13}, Lcom/android/server/wifi/WifiWatchdogStateMachine$BssidStatistics;->-set3(Lcom/android/server/wifi/WifiWatchdogStateMachine$BssidStatistics;J)J

    #@1cb
    .line 839
    move-object/from16 v0, p0

    #@1cd
    iput v14, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$LinkMonitoringState;->mLastTxBad:I

    #@1cf
    .line 840
    move-object/from16 v0, p0

    #@1d1
    iput v15, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$LinkMonitoringState;->mLastTxGood:I

    #@1d3
    .line 841
    move-object/from16 v0, p0

    #@1d5
    iput v11, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$LinkMonitoringState;->mLastRssi:I

    #@1d7
    goto/16 :goto_0

    #@1d9
    .line 833
    .restart local v4    # "dbad":I
    .restart local v5    # "dgood":I
    .restart local v6    # "dtotal":I
    .restart local v8    # "loss":D
    :cond_4
    const/16 v16, 0x0

    #@1db
    move/from16 v0, v16

    #@1dd
    move-object/from16 v1, p0

    #@1df
    iput v0, v1, Lcom/android/server/wifi/WifiWatchdogStateMachine$LinkMonitoringState;->mSampleCount:I

    #@1e1
    goto :goto_1

    #@1e2
    .line 763
    :sswitch_data_0
    .sparse-switch
        0x21003 -> :sswitch_0
        0x21007 -> :sswitch_2
        0x2100b -> :sswitch_3
        0x25015 -> :sswitch_4
        0x25016 -> :sswitch_1
    .end sparse-switch
.end method
