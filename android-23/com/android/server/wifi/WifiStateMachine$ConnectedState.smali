.class Lcom/android/server/wifi/WifiStateMachine$ConnectedState;
.super Lcom/android/internal/util/State;
.source "WifiStateMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifi/WifiStateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ConnectedState"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/wifi/WifiStateMachine;


# direct methods
.method constructor <init>(Lcom/android/server/wifi/WifiStateMachine;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/wifi/WifiStateMachine;

    #@0
    .prologue
    .line 8651
    iput-object p1, p0, Lcom/android/server/wifi/WifiStateMachine$ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

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
    const-wide/16 v6, 0x0

    #@2
    const/4 v3, 0x0

    #@3
    const/4 v4, 0x0

    #@4
    .line 8655
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@6
    const/16 v1, 0x3e8

    #@8
    invoke-static {v0, v1}, Lcom/android/server/wifi/WifiStateMachine;->-wrap17(Lcom/android/server/wifi/WifiStateMachine;I)Ljava/lang/String;

    #@b
    .line 8656
    invoke-static {}, Lcom/android/server/wifi/WifiStateMachine;->-get0()Z

    #@e
    move-result v0

    #@f
    if-eqz v0, :cond_0

    #@11
    .line 8657
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@13
    new-instance v1, Ljava/lang/StringBuilder;

    #@15
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@18
    const-string/jumbo v2, "Enter ConnectedState  mScreenOn="

    #@1b
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1e
    move-result-object v1

    #@1f
    .line 8658
    iget-object v2, p0, Lcom/android/server/wifi/WifiStateMachine$ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@21
    invoke-static {v2}, Lcom/android/server/wifi/WifiStateMachine;->-get72(Lcom/android/server/wifi/WifiStateMachine;)Z

    #@24
    move-result v2

    #@25
    .line 8657
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@28
    move-result-object v1

    #@29
    .line 8659
    const-string/jumbo v2, " scanperiod="

    #@2c
    .line 8657
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2f
    move-result-object v1

    #@30
    .line 8660
    iget-object v2, p0, Lcom/android/server/wifi/WifiStateMachine$ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@32
    invoke-static {v2}, Lcom/android/server/wifi/WifiStateMachine;->-get99(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigStore;

    #@35
    move-result-object v2

    #@36
    iget-object v2, v2, Lcom/android/server/wifi/WifiConfigStore;->wifiAssociatedShortScanIntervalMilli:Ljava/util/concurrent/atomic/AtomicInteger;

    #@38
    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    #@3b
    move-result v2

    #@3c
    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    #@3f
    move-result-object v2

    #@40
    .line 8657
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@43
    move-result-object v1

    #@44
    .line 8661
    const-string/jumbo v2, " useGscan="

    #@47
    .line 8657
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4a
    move-result-object v1

    #@4b
    .line 8661
    iget-object v2, p0, Lcom/android/server/wifi/WifiStateMachine$ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@4d
    invoke-static {v2}, Lcom/android/server/wifi/WifiStateMachine;->-get39(Lcom/android/server/wifi/WifiStateMachine;)Z

    #@50
    move-result v2

    #@51
    .line 8657
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@54
    move-result-object v1

    #@55
    .line 8661
    const-string/jumbo v2, "/"

    #@58
    .line 8657
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5b
    move-result-object v1

    #@5c
    .line 8662
    iget-object v2, p0, Lcom/android/server/wifi/WifiStateMachine$ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@5e
    invoke-static {v2}, Lcom/android/server/wifi/WifiStateMachine;->-get99(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigStore;

    #@61
    move-result-object v2

    #@62
    iget-object v2, v2, Lcom/android/server/wifi/WifiConfigStore;->enableHalBasedPno:Ljava/util/concurrent/atomic/AtomicBoolean;

    #@64
    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    #@67
    move-result v2

    #@68
    .line 8657
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@6b
    move-result-object v1

    #@6c
    .line 8663
    const-string/jumbo v2, " mHalBasedPnoEnableInDevSettings "

    #@6f
    .line 8657
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@72
    move-result-object v1

    #@73
    .line 8663
    iget-object v2, p0, Lcom/android/server/wifi/WifiStateMachine$ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@75
    invoke-static {v2}, Lcom/android/server/wifi/WifiStateMachine;->-get40(Lcom/android/server/wifi/WifiStateMachine;)Z

    #@78
    move-result v2

    #@79
    .line 8657
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@7c
    move-result-object v1

    #@7d
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@80
    move-result-object v1

    #@81
    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiStateMachine;->log(Ljava/lang/String;)V

    #@84
    .line 8665
    :cond_0
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@86
    invoke-static {v0}, Lcom/android/server/wifi/WifiStateMachine;->-get72(Lcom/android/server/wifi/WifiStateMachine;)Z

    #@89
    move-result v0

    #@8a
    if-eqz v0, :cond_1

    #@8c
    .line 8666
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@8e
    invoke-virtual {v0}, Lcom/android/server/wifi/WifiStateMachine;->getEnableAutoJoinWhenAssociated()Z

    #@91
    move-result v0

    #@92
    .line 8665
    if-eqz v0, :cond_1

    #@94
    .line 8667
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@96
    invoke-virtual {v0}, Lcom/android/server/wifi/WifiStateMachine;->useHalBasedAutoJoinOffload()Z

    #@99
    move-result v0

    #@9a
    if-eqz v0, :cond_3

    #@9c
    .line 8668
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@9e
    const-string/jumbo v1, "connectedEnter"

    #@a1
    invoke-static {v0, v1}, Lcom/android/server/wifi/WifiStateMachine;->-wrap11(Lcom/android/server/wifi/WifiStateMachine;Ljava/lang/String;)Z

    #@a4
    .line 8675
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@a6
    invoke-virtual {v0}, Lcom/android/server/wifi/WifiStateMachine;->registerConnected()V

    #@a9
    .line 8676
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@ab
    invoke-static {v0, v6, v7}, Lcom/android/server/wifi/WifiStateMachine;->-set2(Lcom/android/server/wifi/WifiStateMachine;J)J

    #@ae
    .line 8677
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@b0
    invoke-static {v0, v3}, Lcom/android/server/wifi/WifiStateMachine;->-set51(Lcom/android/server/wifi/WifiStateMachine;Landroid/net/wifi/WifiConfiguration;)Landroid/net/wifi/WifiConfiguration;

    #@b3
    .line 8679
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@b5
    invoke-static {v0, v4}, Lcom/android/server/wifi/WifiStateMachine;->-set6(Lcom/android/server/wifi/WifiStateMachine;Z)Z

    #@b8
    .line 8682
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@ba
    invoke-static {v0, v4}, Lcom/android/server/wifi/WifiStateMachine;->-set7(Lcom/android/server/wifi/WifiStateMachine;I)I

    #@bd
    .line 8684
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@bf
    invoke-static {v0}, Lcom/android/server/wifi/WifiStateMachine;->-get111(Lcom/android/server/wifi/WifiStateMachine;)Z

    #@c2
    move-result v0

    #@c3
    if-eqz v0, :cond_2

    #@c5
    .line 8685
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@c7
    invoke-static {v0}, Lcom/android/server/wifi/WifiStateMachine;->-get112(Lcom/android/server/wifi/WifiStateMachine;)I

    #@ca
    move-result v1

    #@cb
    add-int/lit8 v1, v1, 0x1

    #@cd
    invoke-static {v0, v1}, Lcom/android/server/wifi/WifiStateMachine;->-set52(Lcom/android/server/wifi/WifiStateMachine;I)I

    #@d0
    .line 8686
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@d2
    new-instance v1, Ljava/lang/StringBuilder;

    #@d4
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@d7
    const-string/jumbo v2, "ConnectedState Enter start disconnect test "

    #@da
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@dd
    move-result-object v1

    #@de
    .line 8687
    iget-object v2, p0, Lcom/android/server/wifi/WifiStateMachine$ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@e0
    invoke-static {v2}, Lcom/android/server/wifi/WifiStateMachine;->-get112(Lcom/android/server/wifi/WifiStateMachine;)I

    #@e3
    move-result v2

    #@e4
    .line 8686
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@e7
    move-result-object v1

    #@e8
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@eb
    move-result-object v1

    #@ec
    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiStateMachine;->logd(Ljava/lang/String;)V

    #@ef
    .line 8688
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@f1
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine$ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@f3
    .line 8689
    iget-object v2, p0, Lcom/android/server/wifi/WifiStateMachine$ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@f5
    invoke-static {v2}, Lcom/android/server/wifi/WifiStateMachine;->-get112(Lcom/android/server/wifi/WifiStateMachine;)I

    #@f8
    move-result v2

    #@f9
    .line 8688
    const v3, 0x20059

    #@fc
    invoke-virtual {v1, v3, v2, v4}, Lcom/android/server/wifi/WifiStateMachine;->obtainMessage(III)Landroid/os/Message;

    #@ff
    move-result-object v1

    #@100
    .line 8689
    const-wide/16 v2, 0x3a98

    #@102
    .line 8688
    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/wifi/WifiStateMachine;->sendMessageDelayed(Landroid/os/Message;J)V

    #@105
    .line 8693
    :cond_2
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@107
    invoke-static {v0}, Lcom/android/server/wifi/WifiStateMachine;->-get99(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigStore;

    #@10a
    move-result-object v0

    #@10b
    invoke-virtual {v0}, Lcom/android/server/wifi/WifiConfigStore;->enableAllNetworks()V

    #@10e
    .line 8695
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@110
    invoke-static {v0, v6, v7}, Lcom/android/server/wifi/WifiStateMachine;->-set28(Lcom/android/server/wifi/WifiStateMachine;J)J

    #@113
    .line 8653
    return-void

    #@114
    .line 8671
    :cond_3
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@116
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine$ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@118
    invoke-static {v1}, Lcom/android/server/wifi/WifiStateMachine;->-get99(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigStore;

    #@11b
    move-result-object v1

    #@11c
    iget-object v1, v1, Lcom/android/server/wifi/WifiConfigStore;->wifiAssociatedShortScanIntervalMilli:Ljava/util/concurrent/atomic/AtomicInteger;

    #@11e
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    #@121
    move-result v1

    #@122
    invoke-static {v0, v1, v3, v3}, Lcom/android/server/wifi/WifiStateMachine;->-wrap52(Lcom/android/server/wifi/WifiStateMachine;ILandroid/net/wifi/ScanSettings;Landroid/os/WorkSource;)V

    #@125
    goto/16 :goto_0
.end method

.method public exit()V
    .locals 4

    #@0
    .prologue
    .line 8943
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@2
    const-string/jumbo v1, "WifiStateMachine: Leaving Connected state"

    #@5
    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiStateMachine;->logd(Ljava/lang/String;)V

    #@8
    .line 8944
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@a
    const/4 v1, 0x0

    #@b
    invoke-static {v0, v1}, Lcom/android/server/wifi/WifiStateMachine;->-wrap46(Lcom/android/server/wifi/WifiStateMachine;Z)V

    #@e
    .line 8945
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@10
    const-wide/16 v2, 0x0

    #@12
    invoke-static {v0, v2, v3}, Lcom/android/server/wifi/WifiStateMachine;->-set28(Lcom/android/server/wifi/WifiStateMachine;J)J

    #@15
    .line 8947
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@17
    invoke-static {v0}, Lcom/android/server/wifi/WifiStateMachine;->-wrap14(Lcom/android/server/wifi/WifiStateMachine;)Z

    #@1a
    .line 8949
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@1c
    const/4 v1, 0x0

    #@1d
    invoke-static {v0, v1}, Lcom/android/server/wifi/WifiStateMachine;->-set45(Lcom/android/server/wifi/WifiStateMachine;[Ljava/lang/String;)[Ljava/lang/String;

    #@20
    .line 8942
    return-void
.end method

.method public processMessage(Landroid/os/Message;)Z
    .locals 21
    .param p1, "message"    # Landroid/os/Message;

    #@0
    .prologue
    .line 8701
    const/4 v8, 0x0

    #@1
    .line 8702
    .local v8, "config":Landroid/net/wifi/WifiConfiguration;
    move-object/from16 v0, p0

    #@3
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@5
    move-object/from16 v16, v0

    #@7
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wifi/WifiStateMachine$ConnectedState;->getClass()Ljava/lang/Class;

    #@a
    move-result-object v17

    #@b
    invoke-virtual/range {v17 .. v17}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    #@e
    move-result-object v17

    #@f
    move-object/from16 v0, v16

    #@11
    move-object/from16 v1, p1

    #@13
    move-object/from16 v2, v17

    #@15
    invoke-static {v0, v1, v2}, Lcom/android/server/wifi/WifiStateMachine;->-wrap33(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;Ljava/lang/String;)V

    #@18
    .line 8704
    move-object/from16 v0, p1

    #@1a
    iget v0, v0, Landroid/os/Message;->what:I

    #@1c
    move/from16 v16, v0

    #@1e
    sparse-switch v16, :sswitch_data_0

    #@21
    .line 8936
    const/16 v16, 0x0

    #@23
    return v16

    #@24
    .line 8706
    :sswitch_0
    move-object/from16 v0, p1

    #@26
    iget v0, v0, Landroid/os/Message;->arg2:I

    #@28
    move/from16 v16, v0

    #@2a
    sget v17, Lcom/android/server/wifi/WifiStateMachine;->mRestartAutoJoinOffloadCounter:I

    #@2c
    move/from16 v0, v16

    #@2e
    move/from16 v1, v17

    #@30
    if-ge v0, v1, :cond_0

    #@32
    .line 8707
    move-object/from16 v0, p0

    #@34
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@36
    move-object/from16 v16, v0

    #@38
    invoke-static {}, Lcom/android/server/wifi/WifiStateMachine;->-get5()I

    #@3b
    move-result v17

    #@3c
    invoke-static/range {v16 .. v17}, Lcom/android/server/wifi/WifiStateMachine;->-set49(Lcom/android/server/wifi/WifiStateMachine;I)I

    #@3f
    .line 8708
    const/16 v16, 0x1

    #@41
    return v16

    #@42
    .line 8714
    :cond_0
    move-object/from16 v0, p0

    #@44
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@46
    move-object/from16 v16, v0

    #@48
    invoke-virtual/range {v16 .. v16}, Lcom/android/server/wifi/WifiStateMachine;->useHalBasedAutoJoinOffload()Z

    #@4b
    move-result v16

    #@4c
    if-eqz v16, :cond_1

    #@4e
    .line 8715
    move-object/from16 v0, p0

    #@50
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@52
    move-object/from16 v16, v0

    #@54
    move-object/from16 v0, v16

    #@56
    iget-wide v0, v0, Lcom/android/server/wifi/WifiStateMachine;->mGScanStartTimeMilli:J

    #@58
    move-wide/from16 v16, v0

    #@5a
    const-wide/16 v18, 0x0

    #@5c
    cmp-long v16, v16, v18

    #@5e
    if-nez v16, :cond_2

    #@60
    .line 8717
    move-object/from16 v0, p0

    #@62
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@64
    move-object/from16 v16, v0

    #@66
    const-string/jumbo v17, "connectedRestart"

    #@69
    invoke-static/range {v16 .. v17}, Lcom/android/server/wifi/WifiStateMachine;->-wrap11(Lcom/android/server/wifi/WifiStateMachine;Ljava/lang/String;)Z

    #@6c
    .line 8938
    .end local v8    # "config":Landroid/net/wifi/WifiConfiguration;
    :cond_1
    :goto_0
    const/16 v16, 0x1

    #@6e
    return v16

    #@6f
    .line 8721
    .restart local v8    # "config":Landroid/net/wifi/WifiConfiguration;
    :cond_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    #@72
    move-result-wide v12

    #@73
    .line 8722
    .local v12, "now":J
    move-object/from16 v0, p0

    #@75
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@77
    move-object/from16 v16, v0

    #@79
    move-object/from16 v0, v16

    #@7b
    iget-wide v0, v0, Lcom/android/server/wifi/WifiStateMachine;->mGScanStartTimeMilli:J

    #@7d
    move-wide/from16 v16, v0

    #@7f
    const-wide/16 v18, 0x0

    #@81
    cmp-long v16, v16, v18

    #@83
    if-eqz v16, :cond_1

    #@85
    move-object/from16 v0, p0

    #@87
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@89
    move-object/from16 v16, v0

    #@8b
    move-object/from16 v0, v16

    #@8d
    iget-wide v0, v0, Lcom/android/server/wifi/WifiStateMachine;->mGScanStartTimeMilli:J

    #@8f
    move-wide/from16 v16, v0

    #@91
    cmp-long v16, v12, v16

    #@93
    if-lez v16, :cond_1

    #@95
    .line 8723
    move-object/from16 v0, p0

    #@97
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@99
    move-object/from16 v16, v0

    #@9b
    move-object/from16 v0, v16

    #@9d
    iget-wide v0, v0, Lcom/android/server/wifi/WifiStateMachine;->mGScanStartTimeMilli:J

    #@9f
    move-wide/from16 v16, v0

    #@a1
    sub-long v16, v12, v16

    #@a3
    .line 8724
    const-wide/32 v18, 0x1d4c0

    #@a6
    .line 8723
    cmp-long v16, v16, v18

    #@a8
    if-lez v16, :cond_1

    #@aa
    .line 8725
    move-object/from16 v0, p0

    #@ac
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@ae
    move-object/from16 v16, v0

    #@b0
    move-object/from16 v0, v16

    #@b2
    iget-wide v0, v0, Lcom/android/server/wifi/WifiStateMachine;->mGScanPeriodMilli:J

    #@b4
    move-wide/from16 v16, v0

    #@b6
    .line 8726
    move-object/from16 v0, p0

    #@b8
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@ba
    move-object/from16 v18, v0

    #@bc
    invoke-static/range {v18 .. v18}, Lcom/android/server/wifi/WifiStateMachine;->-get99(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigStore;

    #@bf
    move-result-object v18

    #@c0
    move-object/from16 v0, v18

    #@c2
    iget-object v0, v0, Lcom/android/server/wifi/WifiConfigStore;->wifiDisconnectedLongScanIntervalMilli:Ljava/util/concurrent/atomic/AtomicInteger;

    #@c4
    move-object/from16 v18, v0

    #@c6
    invoke-virtual/range {v18 .. v18}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    #@c9
    move-result v18

    #@ca
    move/from16 v0, v18

    #@cc
    int-to-long v0, v0

    #@cd
    move-wide/from16 v18, v0

    #@cf
    .line 8725
    cmp-long v16, v16, v18

    #@d1
    if-gez v16, :cond_1

    #@d3
    .line 8728
    move-object/from16 v0, p0

    #@d5
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@d7
    move-object/from16 v16, v0

    #@d9
    const-string/jumbo v17, "Connected restart gscan"

    #@dc
    invoke-static/range {v16 .. v17}, Lcom/android/server/wifi/WifiStateMachine;->-wrap9(Lcom/android/server/wifi/WifiStateMachine;Ljava/lang/String;)Z

    #@df
    goto :goto_0

    #@e0
    .line 8734
    .end local v12    # "now":J
    :sswitch_1
    move-object/from16 v0, p0

    #@e2
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@e4
    move-object/from16 v16, v0

    #@e6
    invoke-virtual/range {v16 .. v16}, Lcom/android/server/wifi/WifiStateMachine;->updateAssociatedScanPermission()V

    #@e9
    goto :goto_0

    #@ea
    .line 8737
    :sswitch_2
    invoke-static {}, Lcom/android/server/wifi/WifiStateMachine;->-get0()Z

    #@ed
    move-result v16

    #@ee
    if-eqz v16, :cond_3

    #@f0
    move-object/from16 v0, p0

    #@f2
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@f4
    move-object/from16 v16, v0

    #@f6
    const-string/jumbo v17, "Watchdog reports poor link"

    #@f9
    invoke-virtual/range {v16 .. v17}, Lcom/android/server/wifi/WifiStateMachine;->log(Ljava/lang/String;)V

    #@fc
    .line 8738
    :cond_3
    move-object/from16 v0, p0

    #@fe
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@100
    move-object/from16 v16, v0

    #@102
    move-object/from16 v0, p0

    #@104
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@106
    move-object/from16 v17, v0

    #@108
    invoke-static/range {v17 .. v17}, Lcom/android/server/wifi/WifiStateMachine;->-get93(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/internal/util/State;

    #@10b
    move-result-object v17

    #@10c
    invoke-static/range {v16 .. v17}, Lcom/android/server/wifi/WifiStateMachine;->-wrap55(Lcom/android/server/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V

    #@10f
    goto/16 :goto_0

    #@111
    .line 8741
    :sswitch_3
    move-object/from16 v0, p1

    #@113
    iget v0, v0, Landroid/os/Message;->arg1:I

    #@115
    move/from16 v16, v0

    #@117
    if-nez v16, :cond_5

    #@119
    .line 8742
    move-object/from16 v0, p0

    #@11b
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@11d
    move-object/from16 v16, v0

    #@11f
    invoke-static/range {v16 .. v16}, Lcom/android/server/wifi/WifiStateMachine;->-get99(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigStore;

    #@122
    move-result-object v16

    #@123
    move-object/from16 v0, p0

    #@125
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@127
    move-object/from16 v17, v0

    #@129
    invoke-static/range {v17 .. v17}, Lcom/android/server/wifi/WifiStateMachine;->-get51(Lcom/android/server/wifi/WifiStateMachine;)I

    #@12c
    move-result v17

    #@12d
    move-object/from16 v0, p0

    #@12f
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@131
    move-object/from16 v18, v0

    #@133
    invoke-static/range {v18 .. v18}, Lcom/android/server/wifi/WifiStateMachine;->-get101(Lcom/android/server/wifi/WifiStateMachine;)Landroid/net/wifi/WifiInfo;

    #@136
    move-result-object v18

    #@137
    invoke-virtual/range {v16 .. v18}, Lcom/android/server/wifi/WifiConfigStore;->handleBadNetworkDisconnectReport(ILandroid/net/wifi/WifiInfo;)V

    #@13a
    .line 8743
    move-object/from16 v0, p0

    #@13c
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@13e
    move-object/from16 v16, v0

    #@140
    invoke-static/range {v16 .. v16}, Lcom/android/server/wifi/WifiStateMachine;->-get105(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiNative;

    #@143
    move-result-object v16

    #@144
    invoke-virtual/range {v16 .. v16}, Lcom/android/server/wifi/WifiNative;->disconnect()Z

    #@147
    .line 8744
    move-object/from16 v0, p0

    #@149
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@14b
    move-object/from16 v16, v0

    #@14d
    move-object/from16 v0, p0

    #@14f
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@151
    move-object/from16 v17, v0

    #@153
    invoke-static/range {v17 .. v17}, Lcom/android/server/wifi/WifiStateMachine;->-get27(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/internal/util/State;

    #@156
    move-result-object v17

    #@157
    invoke-static/range {v16 .. v17}, Lcom/android/server/wifi/WifiStateMachine;->-wrap55(Lcom/android/server/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V

    #@15a
    .line 8764
    .end local v8    # "config":Landroid/net/wifi/WifiConfiguration;
    :cond_4
    :goto_1
    const/16 v16, 0x1

    #@15c
    return v16

    #@15d
    .line 8745
    .restart local v8    # "config":Landroid/net/wifi/WifiConfiguration;
    :cond_5
    move-object/from16 v0, p1

    #@15f
    iget v0, v0, Landroid/os/Message;->arg1:I

    #@161
    move/from16 v16, v0

    #@163
    const/16 v17, 0x2

    #@165
    move/from16 v0, v16

    #@167
    move/from16 v1, v17

    #@169
    if-eq v0, v1, :cond_6

    #@16b
    .line 8746
    move-object/from16 v0, p1

    #@16d
    iget v0, v0, Landroid/os/Message;->arg1:I

    #@16f
    move/from16 v16, v0

    #@171
    const/16 v17, 0x1

    #@173
    move/from16 v0, v16

    #@175
    move/from16 v1, v17

    #@177
    if-ne v0, v1, :cond_4

    #@179
    .line 8747
    :cond_6
    move-object/from16 v0, p0

    #@17b
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@17d
    move-object/from16 v16, v0

    #@17f
    invoke-virtual/range {v16 .. v16}, Lcom/android/server/wifi/WifiStateMachine;->getCurrentWifiConfiguration()Landroid/net/wifi/WifiConfiguration;

    #@182
    move-result-object v8

    #@183
    .line 8748
    .local v8, "config":Landroid/net/wifi/WifiConfiguration;
    if-eqz v8, :cond_4

    #@185
    .line 8750
    move-object/from16 v0, p1

    #@187
    iget v0, v0, Landroid/os/Message;->arg1:I

    #@189
    move/from16 v16, v0

    #@18b
    const/16 v17, 0x2

    #@18d
    move/from16 v0, v16

    #@18f
    move/from16 v1, v17

    #@191
    if-ne v0, v1, :cond_7

    #@193
    .line 8751
    const/16 v16, 0x0

    #@195
    move/from16 v0, v16

    #@197
    iput-boolean v0, v8, Landroid/net/wifi/WifiConfiguration;->validatedInternetAccess:Z

    #@199
    .line 8754
    move-object/from16 v0, p0

    #@19b
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@19d
    move-object/from16 v16, v0

    #@19f
    invoke-static/range {v16 .. v16}, Lcom/android/server/wifi/WifiStateMachine;->-get99(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigStore;

    #@1a2
    move-result-object v16

    #@1a3
    move-object/from16 v0, v16

    #@1a5
    invoke-virtual {v0, v8}, Lcom/android/server/wifi/WifiConfigStore;->isLastSelectedConfiguration(Landroid/net/wifi/WifiConfiguration;)Z

    #@1a8
    move-result v16

    #@1a9
    if-eqz v16, :cond_7

    #@1ab
    .line 8755
    move-object/from16 v0, p0

    #@1ad
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@1af
    move-object/from16 v16, v0

    #@1b1
    invoke-static/range {v16 .. v16}, Lcom/android/server/wifi/WifiStateMachine;->-get99(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigStore;

    #@1b4
    move-result-object v16

    #@1b5
    .line 8756
    const/16 v17, -0x1

    #@1b7
    .line 8755
    invoke-virtual/range {v16 .. v17}, Lcom/android/server/wifi/WifiConfigStore;->setLastSelectedConfiguration(I)V

    #@1ba
    .line 8759
    :cond_7
    iget v0, v8, Landroid/net/wifi/WifiConfiguration;->numNoInternetAccessReports:I

    #@1bc
    move/from16 v16, v0

    #@1be
    add-int/lit8 v16, v16, 0x1

    #@1c0
    move/from16 v0, v16

    #@1c2
    iput v0, v8, Landroid/net/wifi/WifiConfiguration;->numNoInternetAccessReports:I

    #@1c4
    .line 8760
    const/16 v16, 0x1

    #@1c6
    move/from16 v0, v16

    #@1c8
    iput-boolean v0, v8, Landroid/net/wifi/WifiConfiguration;->dirty:Z

    #@1ca
    .line 8761
    move-object/from16 v0, p0

    #@1cc
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@1ce
    move-object/from16 v16, v0

    #@1d0
    invoke-static/range {v16 .. v16}, Lcom/android/server/wifi/WifiStateMachine;->-get99(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigStore;

    #@1d3
    move-result-object v16

    #@1d4
    const/16 v17, 0x0

    #@1d6
    invoke-virtual/range {v16 .. v17}, Lcom/android/server/wifi/WifiConfigStore;->writeKnownNetworkHistory(Z)V

    #@1d9
    goto :goto_1

    #@1da
    .line 8766
    .local v8, "config":Landroid/net/wifi/WifiConfiguration;
    :sswitch_4
    move-object/from16 v0, p1

    #@1dc
    iget v0, v0, Landroid/os/Message;->arg1:I

    #@1de
    move/from16 v16, v0

    #@1e0
    const/16 v17, 0x1

    #@1e2
    move/from16 v0, v16

    #@1e4
    move/from16 v1, v17

    #@1e6
    if-ne v0, v1, :cond_a

    #@1e8
    .line 8767
    move-object/from16 v0, p0

    #@1ea
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@1ec
    move-object/from16 v16, v0

    #@1ee
    invoke-virtual/range {v16 .. v16}, Lcom/android/server/wifi/WifiStateMachine;->getCurrentWifiConfiguration()Landroid/net/wifi/WifiConfiguration;

    #@1f1
    move-result-object v8

    #@1f2
    .line 8768
    .local v8, "config":Landroid/net/wifi/WifiConfiguration;
    if-eqz v8, :cond_a

    #@1f4
    .line 8769
    iget-boolean v0, v8, Landroid/net/wifi/WifiConfiguration;->validatedInternetAccess:Z

    #@1f6
    move/from16 v16, v0

    #@1f8
    if-eqz v16, :cond_8

    #@1fa
    .line 8770
    iget v0, v8, Landroid/net/wifi/WifiConfiguration;->numNoInternetAccessReports:I

    #@1fc
    move/from16 v16, v0

    #@1fe
    if-eqz v16, :cond_9

    #@200
    .line 8771
    :cond_8
    const/16 v16, 0x1

    #@202
    move/from16 v0, v16

    #@204
    iput-boolean v0, v8, Landroid/net/wifi/WifiConfiguration;->dirty:Z

    #@206
    .line 8774
    :cond_9
    const/16 v16, 0x0

    #@208
    move/from16 v0, v16

    #@20a
    iput v0, v8, Landroid/net/wifi/WifiConfiguration;->numNoInternetAccessReports:I

    #@20c
    .line 8775
    const/16 v16, 0x1

    #@20e
    move/from16 v0, v16

    #@210
    iput-boolean v0, v8, Landroid/net/wifi/WifiConfiguration;->validatedInternetAccess:Z

    #@212
    .line 8776
    move-object/from16 v0, p0

    #@214
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@216
    move-object/from16 v16, v0

    #@218
    invoke-static/range {v16 .. v16}, Lcom/android/server/wifi/WifiStateMachine;->-get99(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigStore;

    #@21b
    move-result-object v16

    #@21c
    const/16 v17, 0x0

    #@21e
    invoke-virtual/range {v16 .. v17}, Lcom/android/server/wifi/WifiConfigStore;->writeKnownNetworkHistory(Z)V

    #@221
    .line 8779
    .end local v8    # "config":Landroid/net/wifi/WifiConfiguration;
    :cond_a
    const/16 v16, 0x1

    #@223
    return v16

    #@224
    .line 8781
    .local v8, "config":Landroid/net/wifi/WifiConfiguration;
    :sswitch_5
    move-object/from16 v0, p1

    #@226
    iget v0, v0, Landroid/os/Message;->arg1:I

    #@228
    move/from16 v16, v0

    #@22a
    if-eqz v16, :cond_c

    #@22c
    const/4 v4, 0x1

    #@22d
    .line 8782
    .local v4, "accept":Z
    :goto_2
    move-object/from16 v0, p0

    #@22f
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@231
    move-object/from16 v16, v0

    #@233
    invoke-virtual/range {v16 .. v16}, Lcom/android/server/wifi/WifiStateMachine;->getCurrentWifiConfiguration()Landroid/net/wifi/WifiConfiguration;

    #@236
    move-result-object v8

    #@237
    .line 8783
    .local v8, "config":Landroid/net/wifi/WifiConfiguration;
    if-eqz v8, :cond_b

    #@239
    .line 8784
    iput-boolean v4, v8, Landroid/net/wifi/WifiConfiguration;->noInternetAccessExpected:Z

    #@23b
    .line 8786
    :cond_b
    const/16 v16, 0x1

    #@23d
    return v16

    #@23e
    .line 8781
    .end local v4    # "accept":Z
    .local v8, "config":Landroid/net/wifi/WifiConfiguration;
    :cond_c
    const/4 v4, 0x0

    #@23f
    .restart local v4    # "accept":Z
    goto :goto_2

    #@240
    .line 8789
    .end local v4    # "accept":Z
    :sswitch_6
    move-object/from16 v0, p1

    #@242
    iget v0, v0, Landroid/os/Message;->arg1:I

    #@244
    move/from16 v16, v0

    #@246
    move-object/from16 v0, p0

    #@248
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@24a
    move-object/from16 v17, v0

    #@24c
    invoke-static/range {v17 .. v17}, Lcom/android/server/wifi/WifiStateMachine;->-get112(Lcom/android/server/wifi/WifiStateMachine;)I

    #@24f
    move-result v17

    #@250
    move/from16 v0, v16

    #@252
    move/from16 v1, v17

    #@254
    if-ne v0, v1, :cond_1

    #@256
    .line 8790
    move-object/from16 v0, p0

    #@258
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@25a
    move-object/from16 v16, v0

    #@25c
    invoke-static/range {v16 .. v16}, Lcom/android/server/wifi/WifiStateMachine;->-get105(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiNative;

    #@25f
    move-result-object v16

    #@260
    invoke-virtual/range {v16 .. v16}, Lcom/android/server/wifi/WifiNative;->disconnect()Z

    #@263
    goto/16 :goto_0

    #@265
    .line 8796
    :sswitch_7
    move-object/from16 v0, p0

    #@267
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@269
    move-object/from16 v16, v0

    #@26b
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    #@26e
    move-result-wide v18

    #@26f
    move-object/from16 v0, v16

    #@271
    move-wide/from16 v1, v18

    #@273
    invoke-static {v0, v1, v2}, Lcom/android/server/wifi/WifiStateMachine;->-set28(Lcom/android/server/wifi/WifiStateMachine;J)J

    #@276
    .line 8797
    move-object/from16 v0, p1

    #@278
    iget-object v15, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@27a
    check-cast v15, Ljava/lang/String;

    #@27c
    .line 8798
    .local v15, "toBSSID":Ljava/lang/String;
    if-eqz v15, :cond_d

    #@27e
    move-object/from16 v0, p0

    #@280
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@282
    move-object/from16 v16, v0

    #@284
    invoke-static/range {v16 .. v16}, Lcom/android/server/wifi/WifiStateMachine;->-get101(Lcom/android/server/wifi/WifiStateMachine;)Landroid/net/wifi/WifiInfo;

    #@287
    move-result-object v16

    #@288
    invoke-virtual/range {v16 .. v16}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;

    #@28b
    move-result-object v16

    #@28c
    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@28f
    move-result v16

    #@290
    if-eqz v16, :cond_e

    #@292
    .line 8801
    :cond_d
    :goto_3
    const/16 v16, 0x0

    #@294
    return v16

    #@295
    .line 8799
    :cond_e
    move-object/from16 v0, p0

    #@297
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@299
    move-object/from16 v16, v0

    #@29b
    invoke-static/range {v16 .. v16}, Lcom/android/server/wifi/WifiStateMachine;->-get99(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigStore;

    #@29e
    move-result-object v16

    #@29f
    move-object/from16 v0, p0

    #@2a1
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@2a3
    move-object/from16 v17, v0

    #@2a5
    invoke-static/range {v17 .. v17}, Lcom/android/server/wifi/WifiStateMachine;->-get101(Lcom/android/server/wifi/WifiStateMachine;)Landroid/net/wifi/WifiInfo;

    #@2a8
    move-result-object v17

    #@2a9
    invoke-virtual/range {v16 .. v17}, Lcom/android/server/wifi/WifiConfigStore;->driverRoamedFrom(Landroid/net/wifi/WifiInfo;)V

    #@2ac
    goto :goto_3

    #@2ad
    .line 8803
    .end local v15    # "toBSSID":Ljava/lang/String;
    :sswitch_8
    const-wide/16 v10, 0x0

    #@2af
    .line 8804
    .local v10, "lastRoam":J
    move-object/from16 v0, p0

    #@2b1
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@2b3
    move-object/from16 v16, v0

    #@2b5
    invoke-static/range {v16 .. v16}, Lcom/android/server/wifi/WifiStateMachine;->-get49(Lcom/android/server/wifi/WifiStateMachine;)J

    #@2b8
    move-result-wide v16

    #@2b9
    const-wide/16 v18, 0x0

    #@2bb
    cmp-long v16, v16, v18

    #@2bd
    if-eqz v16, :cond_f

    #@2bf
    .line 8806
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    #@2c2
    move-result-wide v16

    #@2c3
    move-object/from16 v0, p0

    #@2c5
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@2c7
    move-object/from16 v18, v0

    #@2c9
    invoke-static/range {v18 .. v18}, Lcom/android/server/wifi/WifiStateMachine;->-get49(Lcom/android/server/wifi/WifiStateMachine;)J

    #@2cc
    move-result-wide v18

    #@2cd
    sub-long v10, v16, v18

    #@2cf
    .line 8807
    move-object/from16 v0, p0

    #@2d1
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@2d3
    move-object/from16 v16, v0

    #@2d5
    const-wide/16 v18, 0x0

    #@2d7
    move-object/from16 v0, v16

    #@2d9
    move-wide/from16 v1, v18

    #@2db
    invoke-static {v0, v1, v2}, Lcom/android/server/wifi/WifiStateMachine;->-set28(Lcom/android/server/wifi/WifiStateMachine;J)J

    #@2de
    .line 8809
    :cond_f
    move-object/from16 v0, p1

    #@2e0
    iget v0, v0, Landroid/os/Message;->arg2:I

    #@2e2
    move/from16 v16, v0

    #@2e4
    invoke-static/range {v16 .. v16}, Lcom/android/server/wifi/WifiStateMachine;->unexpectedDisconnectedReason(I)Z

    #@2e7
    move-result v16

    #@2e8
    if-eqz v16, :cond_10

    #@2ea
    .line 8810
    move-object/from16 v0, p0

    #@2ec
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@2ee
    move-object/from16 v16, v0

    #@2f0
    invoke-static/range {v16 .. v16}, Lcom/android/server/wifi/WifiStateMachine;->-get103(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiLogger;

    #@2f3
    move-result-object v16

    #@2f4
    .line 8811
    const/16 v17, 0x5

    #@2f6
    .line 8810
    invoke-virtual/range {v16 .. v17}, Lcom/android/server/wifi/WifiLogger;->captureBugReportData(I)V

    #@2f9
    .line 8813
    :cond_10
    move-object/from16 v0, p0

    #@2fb
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@2fd
    move-object/from16 v16, v0

    #@2ff
    invoke-virtual/range {v16 .. v16}, Lcom/android/server/wifi/WifiStateMachine;->getCurrentWifiConfiguration()Landroid/net/wifi/WifiConfiguration;

    #@302
    move-result-object v8

    #@303
    .line 8814
    .local v8, "config":Landroid/net/wifi/WifiConfiguration;
    move-object/from16 v0, p0

    #@305
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@307
    move-object/from16 v16, v0

    #@309
    invoke-static/range {v16 .. v16}, Lcom/android/server/wifi/WifiStateMachine;->-get72(Lcom/android/server/wifi/WifiStateMachine;)Z

    #@30c
    move-result v16

    #@30d
    if-eqz v16, :cond_11

    #@30f
    .line 8815
    move-object/from16 v0, p0

    #@311
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@313
    move-object/from16 v16, v0

    #@315
    invoke-static/range {v16 .. v16}, Lcom/android/server/wifi/WifiStateMachine;->-get12(Lcom/android/server/wifi/WifiStateMachine;)Z

    #@318
    move-result v16

    #@319
    if-eqz v16, :cond_13

    #@31b
    .line 8848
    :cond_11
    invoke-static {}, Lcom/android/server/wifi/WifiStateMachine;->-get0()Z

    #@31e
    move-result v16

    #@31f
    if-eqz v16, :cond_1

    #@321
    .line 8849
    const/4 v5, -0x1

    #@322
    .line 8850
    .local v5, "ajst":I
    if-eqz v8, :cond_12

    #@324
    iget v5, v8, Landroid/net/wifi/WifiConfiguration;->autoJoinStatus:I

    #@326
    .line 8851
    :cond_12
    move-object/from16 v0, p0

    #@328
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@32a
    move-object/from16 v16, v0

    #@32c
    new-instance v17, Ljava/lang/StringBuilder;

    #@32e
    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    #@331
    const-string/jumbo v18, "NETWORK_DISCONNECTION_EVENT in connected state BSSID="

    #@334
    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@337
    move-result-object v17

    #@338
    .line 8852
    move-object/from16 v0, p0

    #@33a
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@33c
    move-object/from16 v18, v0

    #@33e
    invoke-static/range {v18 .. v18}, Lcom/android/server/wifi/WifiStateMachine;->-get101(Lcom/android/server/wifi/WifiStateMachine;)Landroid/net/wifi/WifiInfo;

    #@341
    move-result-object v18

    #@342
    invoke-virtual/range {v18 .. v18}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;

    #@345
    move-result-object v18

    #@346
    .line 8851
    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@349
    move-result-object v17

    #@34a
    .line 8853
    const-string/jumbo v18, " RSSI="

    #@34d
    .line 8851
    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@350
    move-result-object v17

    #@351
    .line 8853
    move-object/from16 v0, p0

    #@353
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@355
    move-object/from16 v18, v0

    #@357
    invoke-static/range {v18 .. v18}, Lcom/android/server/wifi/WifiStateMachine;->-get101(Lcom/android/server/wifi/WifiStateMachine;)Landroid/net/wifi/WifiInfo;

    #@35a
    move-result-object v18

    #@35b
    invoke-virtual/range {v18 .. v18}, Landroid/net/wifi/WifiInfo;->getRssi()I

    #@35e
    move-result v18

    #@35f
    .line 8851
    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@362
    move-result-object v17

    #@363
    .line 8854
    const-string/jumbo v18, " freq="

    #@366
    .line 8851
    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@369
    move-result-object v17

    #@36a
    .line 8854
    move-object/from16 v0, p0

    #@36c
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@36e
    move-object/from16 v18, v0

    #@370
    invoke-static/range {v18 .. v18}, Lcom/android/server/wifi/WifiStateMachine;->-get101(Lcom/android/server/wifi/WifiStateMachine;)Landroid/net/wifi/WifiInfo;

    #@373
    move-result-object v18

    #@374
    invoke-virtual/range {v18 .. v18}, Landroid/net/wifi/WifiInfo;->getFrequency()I

    #@377
    move-result v18

    #@378
    .line 8851
    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@37b
    move-result-object v17

    #@37c
    .line 8855
    const-string/jumbo v18, " was debouncing="

    #@37f
    .line 8851
    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@382
    move-result-object v17

    #@383
    .line 8855
    move-object/from16 v0, p0

    #@385
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@387
    move-object/from16 v18, v0

    #@389
    invoke-static/range {v18 .. v18}, Lcom/android/server/wifi/WifiStateMachine;->-get12(Lcom/android/server/wifi/WifiStateMachine;)Z

    #@38c
    move-result v18

    #@38d
    .line 8851
    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@390
    move-result-object v17

    #@391
    .line 8856
    const-string/jumbo v18, " reason="

    #@394
    .line 8851
    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@397
    move-result-object v17

    #@398
    .line 8856
    move-object/from16 v0, p1

    #@39a
    iget v0, v0, Landroid/os/Message;->arg2:I

    #@39c
    move/from16 v18, v0

    #@39e
    .line 8851
    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@3a1
    move-result-object v17

    #@3a2
    .line 8857
    const-string/jumbo v18, " ajst="

    #@3a5
    .line 8851
    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3a8
    move-result-object v17

    #@3a9
    move-object/from16 v0, v17

    #@3ab
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@3ae
    move-result-object v17

    #@3af
    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3b2
    move-result-object v17

    #@3b3
    invoke-virtual/range {v16 .. v17}, Lcom/android/server/wifi/WifiStateMachine;->log(Ljava/lang/String;)V

    #@3b6
    goto/16 :goto_0

    #@3b8
    .line 8816
    .end local v5    # "ajst":I
    :cond_13
    if-eqz v8, :cond_11

    #@3ba
    .line 8817
    iget v0, v8, Landroid/net/wifi/WifiConfiguration;->autoJoinStatus:I

    #@3bc
    move/from16 v16, v0

    #@3be
    if-nez v16, :cond_11

    #@3c0
    .line 8818
    move-object/from16 v0, p0

    #@3c2
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@3c4
    move-object/from16 v16, v0

    #@3c6
    invoke-static/range {v16 .. v16}, Lcom/android/server/wifi/WifiStateMachine;->-get99(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigStore;

    #@3c9
    move-result-object v16

    #@3ca
    move-object/from16 v0, v16

    #@3cc
    invoke-virtual {v0, v8}, Lcom/android/server/wifi/WifiConfigStore;->isLastSelectedConfiguration(Landroid/net/wifi/WifiConfiguration;)Z

    #@3cf
    move-result v16

    #@3d0
    if-nez v16, :cond_11

    #@3d2
    .line 8819
    move-object/from16 v0, p1

    #@3d4
    iget v0, v0, Landroid/os/Message;->arg2:I

    #@3d6
    move/from16 v16, v0

    #@3d8
    const/16 v17, 0x3

    #@3da
    move/from16 v0, v16

    #@3dc
    move/from16 v1, v17

    #@3de
    if-ne v0, v1, :cond_14

    #@3e0
    .line 8820
    const-wide/16 v16, 0x0

    #@3e2
    cmp-long v16, v10, v16

    #@3e4
    if-lez v16, :cond_11

    #@3e6
    const-wide/16 v16, 0x7d0

    #@3e8
    cmp-long v16, v10, v16

    #@3ea
    if-gez v16, :cond_11

    #@3ec
    .line 8821
    :cond_14
    move-object/from16 v0, p0

    #@3ee
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@3f0
    move-object/from16 v16, v0

    #@3f2
    invoke-static/range {v16 .. v16}, Lcom/android/server/wifi/WifiStateMachine;->-get101(Lcom/android/server/wifi/WifiStateMachine;)Landroid/net/wifi/WifiInfo;

    #@3f5
    move-result-object v16

    #@3f6
    invoke-virtual/range {v16 .. v16}, Landroid/net/wifi/WifiInfo;->getFrequency()I

    #@3f9
    move-result v16

    #@3fa
    invoke-static/range {v16 .. v16}, Landroid/net/wifi/ScanResult;->is24GHz(I)Z

    #@3fd
    move-result v16

    #@3fe
    if-eqz v16, :cond_16

    #@400
    .line 8822
    move-object/from16 v0, p0

    #@402
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@404
    move-object/from16 v16, v0

    #@406
    invoke-static/range {v16 .. v16}, Lcom/android/server/wifi/WifiStateMachine;->-get101(Lcom/android/server/wifi/WifiStateMachine;)Landroid/net/wifi/WifiInfo;

    #@409
    move-result-object v16

    #@40a
    invoke-virtual/range {v16 .. v16}, Landroid/net/wifi/WifiInfo;->getRssi()I

    #@40d
    move-result v16

    #@40e
    .line 8823
    sget v17, Landroid/net/wifi/WifiConfiguration;->BAD_RSSI_24:I

    #@410
    .line 8822
    move/from16 v0, v16

    #@412
    move/from16 v1, v17

    #@414
    if-le v0, v1, :cond_16

    #@416
    .line 8833
    :goto_4
    move-object/from16 v0, p0

    #@418
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@41a
    move-object/from16 v16, v0

    #@41c
    move-object/from16 v0, p0

    #@41e
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@420
    move-object/from16 v17, v0

    #@422
    invoke-virtual/range {v17 .. v17}, Lcom/android/server/wifi/WifiStateMachine;->getCurrentWifiConfiguration()Landroid/net/wifi/WifiConfiguration;

    #@425
    move-result-object v17

    #@426
    const/16 v18, 0x0

    #@428
    invoke-virtual/range {v16 .. v18}, Lcom/android/server/wifi/WifiStateMachine;->startScanForConfiguration(Landroid/net/wifi/WifiConfiguration;Z)Z

    #@42b
    .line 8834
    move-object/from16 v0, p0

    #@42d
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@42f
    move-object/from16 v16, v0

    #@431
    const/16 v17, 0x1

    #@433
    invoke-static/range {v16 .. v17}, Lcom/android/server/wifi/WifiStateMachine;->-set6(Lcom/android/server/wifi/WifiStateMachine;Z)Z

    #@436
    .line 8836
    move-object/from16 v0, p0

    #@438
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@43a
    move-object/from16 v16, v0

    #@43c
    move-object/from16 v0, p0

    #@43e
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@440
    move-object/from16 v17, v0

    #@442
    .line 8837
    move-object/from16 v0, p0

    #@444
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@446
    move-object/from16 v18, v0

    #@448
    invoke-static/range {v18 .. v18}, Lcom/android/server/wifi/WifiStateMachine;->-get51(Lcom/android/server/wifi/WifiStateMachine;)I

    #@44b
    move-result v18

    #@44c
    .line 8836
    const v19, 0x20057

    #@44f
    .line 8837
    const/16 v20, 0x0

    #@451
    .line 8836
    move-object/from16 v0, v17

    #@453
    move/from16 v1, v19

    #@455
    move/from16 v2, v20

    #@457
    move/from16 v3, v18

    #@459
    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/wifi/WifiStateMachine;->obtainMessage(III)Landroid/os/Message;

    #@45c
    move-result-object v17

    #@45d
    .line 8837
    const-wide/16 v18, 0x1b58

    #@45f
    .line 8836
    invoke-virtual/range {v16 .. v19}, Lcom/android/server/wifi/WifiStateMachine;->sendMessageDelayed(Landroid/os/Message;J)V

    #@462
    .line 8838
    invoke-static {}, Lcom/android/server/wifi/WifiStateMachine;->-get0()Z

    #@465
    move-result v16

    #@466
    if-eqz v16, :cond_15

    #@468
    .line 8839
    move-object/from16 v0, p0

    #@46a
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@46c
    move-object/from16 v16, v0

    #@46e
    new-instance v17, Ljava/lang/StringBuilder;

    #@470
    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    #@473
    const-string/jumbo v18, "NETWORK_DISCONNECTION_EVENT in connected state BSSID="

    #@476
    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@479
    move-result-object v17

    #@47a
    .line 8840
    move-object/from16 v0, p0

    #@47c
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@47e
    move-object/from16 v18, v0

    #@480
    invoke-static/range {v18 .. v18}, Lcom/android/server/wifi/WifiStateMachine;->-get101(Lcom/android/server/wifi/WifiStateMachine;)Landroid/net/wifi/WifiInfo;

    #@483
    move-result-object v18

    #@484
    invoke-virtual/range {v18 .. v18}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;

    #@487
    move-result-object v18

    #@488
    .line 8839
    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@48b
    move-result-object v17

    #@48c
    .line 8841
    const-string/jumbo v18, " RSSI="

    #@48f
    .line 8839
    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@492
    move-result-object v17

    #@493
    .line 8841
    move-object/from16 v0, p0

    #@495
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@497
    move-object/from16 v18, v0

    #@499
    invoke-static/range {v18 .. v18}, Lcom/android/server/wifi/WifiStateMachine;->-get101(Lcom/android/server/wifi/WifiStateMachine;)Landroid/net/wifi/WifiInfo;

    #@49c
    move-result-object v18

    #@49d
    invoke-virtual/range {v18 .. v18}, Landroid/net/wifi/WifiInfo;->getRssi()I

    #@4a0
    move-result v18

    #@4a1
    .line 8839
    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@4a4
    move-result-object v17

    #@4a5
    .line 8842
    const-string/jumbo v18, " freq="

    #@4a8
    .line 8839
    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4ab
    move-result-object v17

    #@4ac
    .line 8842
    move-object/from16 v0, p0

    #@4ae
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@4b0
    move-object/from16 v18, v0

    #@4b2
    invoke-static/range {v18 .. v18}, Lcom/android/server/wifi/WifiStateMachine;->-get101(Lcom/android/server/wifi/WifiStateMachine;)Landroid/net/wifi/WifiInfo;

    #@4b5
    move-result-object v18

    #@4b6
    invoke-virtual/range {v18 .. v18}, Landroid/net/wifi/WifiInfo;->getFrequency()I

    #@4b9
    move-result v18

    #@4ba
    .line 8839
    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@4bd
    move-result-object v17

    #@4be
    .line 8843
    const-string/jumbo v18, " reason="

    #@4c1
    .line 8839
    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4c4
    move-result-object v17

    #@4c5
    .line 8843
    move-object/from16 v0, p1

    #@4c7
    iget v0, v0, Landroid/os/Message;->arg2:I

    #@4c9
    move/from16 v18, v0

    #@4cb
    .line 8839
    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@4ce
    move-result-object v17

    #@4cf
    .line 8844
    const-string/jumbo v18, " -> debounce"

    #@4d2
    .line 8839
    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4d5
    move-result-object v17

    #@4d6
    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@4d9
    move-result-object v17

    #@4da
    invoke-virtual/range {v16 .. v17}, Lcom/android/server/wifi/WifiStateMachine;->log(Ljava/lang/String;)V

    #@4dd
    .line 8846
    :cond_15
    const/16 v16, 0x1

    #@4df
    return v16

    #@4e0
    .line 8824
    :cond_16
    move-object/from16 v0, p0

    #@4e2
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@4e4
    move-object/from16 v16, v0

    #@4e6
    invoke-static/range {v16 .. v16}, Lcom/android/server/wifi/WifiStateMachine;->-get101(Lcom/android/server/wifi/WifiStateMachine;)Landroid/net/wifi/WifiInfo;

    #@4e9
    move-result-object v16

    #@4ea
    invoke-virtual/range {v16 .. v16}, Landroid/net/wifi/WifiInfo;->getFrequency()I

    #@4ed
    move-result v16

    #@4ee
    invoke-static/range {v16 .. v16}, Landroid/net/wifi/ScanResult;->is5GHz(I)Z

    #@4f1
    move-result v16

    #@4f2
    if-eqz v16, :cond_11

    #@4f4
    .line 8825
    move-object/from16 v0, p0

    #@4f6
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@4f8
    move-object/from16 v16, v0

    #@4fa
    invoke-static/range {v16 .. v16}, Lcom/android/server/wifi/WifiStateMachine;->-get101(Lcom/android/server/wifi/WifiStateMachine;)Landroid/net/wifi/WifiInfo;

    #@4fd
    move-result-object v16

    #@4fe
    invoke-virtual/range {v16 .. v16}, Landroid/net/wifi/WifiInfo;->getRssi()I

    #@501
    move-result v16

    #@502
    .line 8826
    sget v17, Landroid/net/wifi/WifiConfiguration;->BAD_RSSI_5:I

    #@504
    .line 8825
    move/from16 v0, v16

    #@506
    move/from16 v1, v17

    #@508
    if-le v0, v1, :cond_11

    #@50a
    goto/16 :goto_4

    #@50c
    .line 8863
    .end local v10    # "lastRoam":J
    .local v8, "config":Landroid/net/wifi/WifiConfiguration;
    :sswitch_9
    move-object/from16 v0, p0

    #@50e
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@510
    move-object/from16 v16, v0

    #@512
    const-wide/16 v18, 0x0

    #@514
    move-object/from16 v0, v16

    #@516
    move-wide/from16 v1, v18

    #@518
    invoke-static {v0, v1, v2}, Lcom/android/server/wifi/WifiStateMachine;->-set28(Lcom/android/server/wifi/WifiStateMachine;J)J

    #@51b
    .line 8866
    move-object/from16 v0, p1

    #@51d
    iget-object v7, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@51f
    check-cast v7, Landroid/net/wifi/ScanResult;

    #@521
    .line 8867
    .local v7, "candidate":Landroid/net/wifi/ScanResult;
    const-string/jumbo v6, "any"

    #@524
    .line 8868
    .local v6, "bssid":Ljava/lang/String;
    if-eqz v7, :cond_17

    #@526
    invoke-virtual {v7}, Landroid/net/wifi/ScanResult;->is5GHz()Z

    #@529
    move-result v16

    #@52a
    if-eqz v16, :cond_17

    #@52c
    .line 8870
    iget-object v6, v7, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    #@52e
    .line 8872
    :cond_17
    move-object/from16 v0, p0

    #@530
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@532
    move-object/from16 v16, v0

    #@534
    invoke-static/range {v16 .. v16}, Lcom/android/server/wifi/WifiStateMachine;->-get51(Lcom/android/server/wifi/WifiStateMachine;)I

    #@537
    move-result v9

    #@538
    .line 8873
    .local v9, "netId":I
    move-object/from16 v0, p0

    #@53a
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@53c
    move-object/from16 v16, v0

    #@53e
    invoke-virtual/range {v16 .. v16}, Lcom/android/server/wifi/WifiStateMachine;->getCurrentWifiConfiguration()Landroid/net/wifi/WifiConfiguration;

    #@541
    move-result-object v8

    #@542
    .line 8876
    .local v8, "config":Landroid/net/wifi/WifiConfiguration;
    if-nez v8, :cond_18

    #@544
    .line 8877
    move-object/from16 v0, p0

    #@546
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@548
    move-object/from16 v16, v0

    #@54a
    const-string/jumbo v17, "AUTO_ROAM and no config, bail out..."

    #@54d
    invoke-virtual/range {v16 .. v17}, Lcom/android/server/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V

    #@550
    goto/16 :goto_0

    #@552
    .line 8881
    :cond_18
    move-object/from16 v0, p0

    #@554
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@556
    move-object/from16 v16, v0

    #@558
    new-instance v17, Ljava/lang/StringBuilder;

    #@55a
    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    #@55d
    const-string/jumbo v18, "CMD_AUTO_ROAM sup state "

    #@560
    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@563
    move-result-object v17

    #@564
    .line 8882
    move-object/from16 v0, p0

    #@566
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@568
    move-object/from16 v18, v0

    #@56a
    invoke-static/range {v18 .. v18}, Lcom/android/server/wifi/WifiStateMachine;->-get79(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/SupplicantStateTracker;

    #@56d
    move-result-object v18

    #@56e
    invoke-virtual/range {v18 .. v18}, Lcom/android/server/wifi/SupplicantStateTracker;->getSupplicantStateName()Ljava/lang/String;

    #@571
    move-result-object v18

    #@572
    .line 8881
    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@575
    move-result-object v17

    #@576
    .line 8883
    const-string/jumbo v18, " my state "

    #@579
    .line 8881
    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@57c
    move-result-object v17

    #@57d
    .line 8883
    move-object/from16 v0, p0

    #@57f
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@581
    move-object/from16 v18, v0

    #@583
    invoke-static/range {v18 .. v18}, Lcom/android/server/wifi/WifiStateMachine;->-wrap15(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/internal/util/IState;

    #@586
    move-result-object v18

    #@587
    invoke-interface/range {v18 .. v18}, Lcom/android/internal/util/IState;->getName()Ljava/lang/String;

    #@58a
    move-result-object v18

    #@58b
    .line 8881
    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@58e
    move-result-object v17

    #@58f
    .line 8884
    const-string/jumbo v18, " nid="

    #@592
    .line 8881
    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@595
    move-result-object v17

    #@596
    .line 8884
    invoke-static {v9}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    #@599
    move-result-object v18

    #@59a
    .line 8881
    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@59d
    move-result-object v17

    #@59e
    .line 8885
    const-string/jumbo v18, " config "

    #@5a1
    .line 8881
    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5a4
    move-result-object v17

    #@5a5
    .line 8885
    invoke-virtual {v8}, Landroid/net/wifi/WifiConfiguration;->configKey()Ljava/lang/String;

    #@5a8
    move-result-object v18

    #@5a9
    .line 8881
    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5ac
    move-result-object v17

    #@5ad
    .line 8886
    const-string/jumbo v18, " roam="

    #@5b0
    .line 8881
    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5b3
    move-result-object v17

    #@5b4
    .line 8886
    move-object/from16 v0, p1

    #@5b6
    iget v0, v0, Landroid/os/Message;->arg2:I

    #@5b8
    move/from16 v18, v0

    #@5ba
    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    #@5bd
    move-result-object v18

    #@5be
    .line 8881
    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5c1
    move-result-object v17

    #@5c2
    .line 8887
    const-string/jumbo v18, " to "

    #@5c5
    .line 8881
    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5c8
    move-result-object v17

    #@5c9
    move-object/from16 v0, v17

    #@5cb
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5ce
    move-result-object v17

    #@5cf
    .line 8888
    const-string/jumbo v18, " targetRoamBSSID "

    #@5d2
    .line 8881
    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5d5
    move-result-object v17

    #@5d6
    .line 8888
    move-object/from16 v0, p0

    #@5d8
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@5da
    move-object/from16 v18, v0

    #@5dc
    invoke-static/range {v18 .. v18}, Lcom/android/server/wifi/WifiStateMachine;->-get84(Lcom/android/server/wifi/WifiStateMachine;)Ljava/lang/String;

    #@5df
    move-result-object v18

    #@5e0
    .line 8881
    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5e3
    move-result-object v17

    #@5e4
    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@5e7
    move-result-object v17

    #@5e8
    invoke-virtual/range {v16 .. v17}, Lcom/android/server/wifi/WifiStateMachine;->logd(Ljava/lang/String;)V

    #@5eb
    .line 8891
    move-object/from16 v0, p0

    #@5ed
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@5ef
    move-object/from16 v16, v0

    #@5f1
    move-object/from16 v0, v16

    #@5f3
    invoke-virtual {v0, v8, v6}, Lcom/android/server/wifi/WifiStateMachine;->autoRoamSetBSSID(Landroid/net/wifi/WifiConfiguration;Ljava/lang/String;)Z

    #@5f6
    move-result v16

    #@5f7
    if-nez v16, :cond_19

    #@5f9
    move-object/from16 v0, p0

    #@5fb
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@5fd
    move-object/from16 v16, v0

    #@5ff
    invoke-static/range {v16 .. v16}, Lcom/android/server/wifi/WifiStateMachine;->-get12(Lcom/android/server/wifi/WifiStateMachine;)Z

    #@602
    move-result v16

    #@603
    if-eqz v16, :cond_1a

    #@605
    .line 8899
    :cond_19
    move-object/from16 v0, p0

    #@607
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@609
    move-object/from16 v16, v0

    #@60b
    invoke-static/range {v16 .. v16}, Lcom/android/server/wifi/WifiStateMachine;->-get99(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigStore;

    #@60e
    move-result-object v16

    #@60f
    const/16 v17, 0x0

    #@611
    move-object/from16 v0, v16

    #@613
    move/from16 v1, v17

    #@615
    invoke-virtual {v0, v9, v1}, Lcom/android/server/wifi/WifiConfigStore;->enableNetworkWithoutBroadcast(IZ)Z

    #@618
    .line 8901
    move-object/from16 v0, p0

    #@61a
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@61c
    move-object/from16 v16, v0

    #@61e
    const/16 v17, 0x0

    #@620
    move-object/from16 v0, v16

    #@622
    move-object/from16 v1, p1

    #@624
    move/from16 v2, v17

    #@626
    invoke-virtual {v0, v1, v9, v2}, Lcom/android/server/wifi/WifiStateMachine;->deferForUserInput(Landroid/os/Message;IZ)Z

    #@629
    move-result v16

    #@62a
    if-nez v16, :cond_1

    #@62c
    .line 8903
    move-object/from16 v0, p0

    #@62e
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@630
    move-object/from16 v16, v0

    #@632
    invoke-static/range {v16 .. v16}, Lcom/android/server/wifi/WifiStateMachine;->-get99(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigStore;

    #@635
    move-result-object v16

    #@636
    move-object/from16 v0, v16

    #@638
    invoke-virtual {v0, v9}, Lcom/android/server/wifi/WifiConfigStore;->getWifiConfiguration(I)Landroid/net/wifi/WifiConfiguration;

    #@63b
    move-result-object v16

    #@63c
    move-object/from16 v0, v16

    #@63e
    iget v0, v0, Landroid/net/wifi/WifiConfiguration;->userApproved:I

    #@640
    move/from16 v16, v0

    #@642
    .line 8904
    const/16 v17, 0x2

    #@644
    .line 8903
    move/from16 v0, v16

    #@646
    move/from16 v1, v17

    #@648
    if-ne v0, v1, :cond_1b

    #@64a
    .line 8905
    move-object/from16 v0, p0

    #@64c
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@64e
    move-object/from16 v16, v0

    #@650
    const v17, 0x25002

    #@653
    .line 8906
    const/16 v18, 0x9

    #@655
    .line 8905
    move-object/from16 v0, v16

    #@657
    move-object/from16 v1, p1

    #@659
    move/from16 v2, v17

    #@65b
    move/from16 v3, v18

    #@65d
    invoke-static {v0, v1, v2, v3}, Lcom/android/server/wifi/WifiStateMachine;->-wrap37(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;II)V

    #@660
    goto/16 :goto_0

    #@662
    .line 8892
    :cond_1a
    move-object/from16 v0, p0

    #@664
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@666
    move-object/from16 v16, v0

    #@668
    const-string/jumbo v17, "AUTO_ROAM nothing to do"

    #@66b
    invoke-virtual/range {v16 .. v17}, Lcom/android/server/wifi/WifiStateMachine;->logd(Ljava/lang/String;)V

    #@66e
    .line 8894
    move-object/from16 v0, p0

    #@670
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@672
    move-object/from16 v16, v0

    #@674
    invoke-static {}, Lcom/android/server/wifi/WifiStateMachine;->-get2()I

    #@677
    move-result v17

    #@678
    invoke-static/range {v16 .. v17}, Lcom/android/server/wifi/WifiStateMachine;->-set49(Lcom/android/server/wifi/WifiStateMachine;I)I

    #@67b
    goto/16 :goto_0

    #@67d
    .line 8910
    :cond_1b
    const/4 v14, 0x0

    #@67e
    .line 8911
    .local v14, "ret":Z
    move-object/from16 v0, p0

    #@680
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@682
    move-object/from16 v16, v0

    #@684
    invoke-static/range {v16 .. v16}, Lcom/android/server/wifi/WifiStateMachine;->-get51(Lcom/android/server/wifi/WifiStateMachine;)I

    #@687
    move-result v16

    #@688
    move/from16 v0, v16

    #@68a
    if-eq v0, v9, :cond_1d

    #@68c
    .line 8912
    move-object/from16 v0, p0

    #@68e
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@690
    move-object/from16 v16, v0

    #@692
    invoke-static/range {v16 .. v16}, Lcom/android/server/wifi/WifiStateMachine;->-get99(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigStore;

    #@695
    move-result-object v16

    #@696
    const/16 v17, 0x0

    #@698
    .line 8913
    const/16 v18, -0x1

    #@69a
    .line 8912
    move-object/from16 v0, v16

    #@69c
    move/from16 v1, v17

    #@69e
    move/from16 v2, v18

    #@6a0
    invoke-virtual {v0, v8, v1, v2}, Lcom/android/server/wifi/WifiConfigStore;->selectNetwork(Landroid/net/wifi/WifiConfiguration;ZI)Z

    #@6a3
    move-result v16

    #@6a4
    if-eqz v16, :cond_1c

    #@6a6
    .line 8913
    move-object/from16 v0, p0

    #@6a8
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@6aa
    move-object/from16 v16, v0

    #@6ac
    invoke-static/range {v16 .. v16}, Lcom/android/server/wifi/WifiStateMachine;->-get105(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiNative;

    #@6af
    move-result-object v16

    #@6b0
    invoke-virtual/range {v16 .. v16}, Lcom/android/server/wifi/WifiNative;->reconnect()Z

    #@6b3
    move-result v16

    #@6b4
    .line 8912
    if-eqz v16, :cond_1c

    #@6b6
    .line 8914
    const/4 v14, 0x1

    #@6b7
    .line 8919
    .end local v14    # "ret":Z
    :cond_1c
    :goto_5
    if-eqz v14, :cond_1e

    #@6b9
    .line 8920
    move-object/from16 v0, p0

    #@6bb
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@6bd
    move-object/from16 v16, v0

    #@6bf
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    #@6c2
    move-result-wide v18

    #@6c3
    move-object/from16 v0, v16

    #@6c5
    move-wide/from16 v1, v18

    #@6c7
    invoke-static {v0, v1, v2}, Lcom/android/server/wifi/WifiStateMachine;->-set2(Lcom/android/server/wifi/WifiStateMachine;J)J

    #@6ca
    .line 8921
    move-object/from16 v0, p0

    #@6cc
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@6ce
    move-object/from16 v16, v0

    #@6d0
    move-object/from16 v0, p0

    #@6d2
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@6d4
    move-object/from16 v17, v0

    #@6d6
    invoke-static/range {v17 .. v17}, Lcom/android/server/wifi/WifiStateMachine;->-get99(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigStore;

    #@6d9
    move-result-object v17

    #@6da
    move-object/from16 v0, v17

    #@6dc
    invoke-virtual {v0, v9}, Lcom/android/server/wifi/WifiConfigStore;->getWifiConfiguration(I)Landroid/net/wifi/WifiConfiguration;

    #@6df
    move-result-object v17

    #@6e0
    invoke-static/range {v16 .. v17}, Lcom/android/server/wifi/WifiStateMachine;->-set51(Lcom/android/server/wifi/WifiStateMachine;Landroid/net/wifi/WifiConfiguration;)Landroid/net/wifi/WifiConfiguration;

    #@6e3
    .line 8924
    move-object/from16 v0, p0

    #@6e5
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@6e7
    move-object/from16 v16, v0

    #@6e9
    move-object/from16 v0, p1

    #@6eb
    iget v0, v0, Landroid/os/Message;->arg2:I

    #@6ed
    move/from16 v17, v0

    #@6ef
    invoke-static/range {v16 .. v17}, Lcom/android/server/wifi/WifiStateMachine;->-set7(Lcom/android/server/wifi/WifiStateMachine;I)I

    #@6f2
    .line 8925
    move-object/from16 v0, p0

    #@6f4
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@6f6
    move-object/from16 v16, v0

    #@6f8
    move-object/from16 v0, p0

    #@6fa
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@6fc
    move-object/from16 v17, v0

    #@6fe
    invoke-static/range {v17 .. v17}, Lcom/android/server/wifi/WifiStateMachine;->-get67(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/internal/util/State;

    #@701
    move-result-object v17

    #@702
    invoke-static/range {v16 .. v17}, Lcom/android/server/wifi/WifiStateMachine;->-wrap55(Lcom/android/server/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V

    #@705
    goto/16 :goto_0

    #@707
    .line 8917
    .restart local v14    # "ret":Z
    :cond_1d
    move-object/from16 v0, p0

    #@709
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@70b
    move-object/from16 v16, v0

    #@70d
    invoke-static/range {v16 .. v16}, Lcom/android/server/wifi/WifiStateMachine;->-get105(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiNative;

    #@710
    move-result-object v16

    #@711
    invoke-virtual/range {v16 .. v16}, Lcom/android/server/wifi/WifiNative;->reassociate()Z

    #@714
    move-result v14

    #@715
    .local v14, "ret":Z
    goto :goto_5

    #@716
    .line 8928
    .end local v14    # "ret":Z
    :cond_1e
    move-object/from16 v0, p0

    #@718
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@71a
    move-object/from16 v16, v0

    #@71c
    new-instance v17, Ljava/lang/StringBuilder;

    #@71e
    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    #@721
    const-string/jumbo v18, "Failed to connect config: "

    #@724
    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@727
    move-result-object v17

    #@728
    move-object/from16 v0, v17

    #@72a
    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@72d
    move-result-object v17

    #@72e
    const-string/jumbo v18, " netId: "

    #@731
    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@734
    move-result-object v17

    #@735
    move-object/from16 v0, v17

    #@737
    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@73a
    move-result-object v17

    #@73b
    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@73e
    move-result-object v17

    #@73f
    invoke-virtual/range {v16 .. v17}, Lcom/android/server/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V

    #@742
    .line 8929
    move-object/from16 v0, p0

    #@744
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@746
    move-object/from16 v16, v0

    #@748
    const v17, 0x25002

    #@74b
    .line 8930
    const/16 v18, 0x0

    #@74d
    .line 8929
    move-object/from16 v0, v16

    #@74f
    move-object/from16 v1, p1

    #@751
    move/from16 v2, v17

    #@753
    move/from16 v3, v18

    #@755
    invoke-static {v0, v1, v2, v3}, Lcom/android/server/wifi/WifiStateMachine;->-wrap37(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;II)V

    #@758
    .line 8931
    move-object/from16 v0, p0

    #@75a
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@75c
    move-object/from16 v16, v0

    #@75e
    invoke-static {}, Lcom/android/server/wifi/WifiStateMachine;->-get3()I

    #@761
    move-result v17

    #@762
    invoke-static/range {v16 .. v17}, Lcom/android/server/wifi/WifiStateMachine;->-set49(Lcom/android/server/wifi/WifiStateMachine;I)I

    #@765
    goto/16 :goto_0

    #@767
    .line 8704
    nop

    #@768
    :sswitch_data_0
    .sparse-switch
        0x20059 -> :sswitch_6
        0x20090 -> :sswitch_3
        0x20091 -> :sswitch_9
        0x20093 -> :sswitch_7
        0x20094 -> :sswitch_4
        0x20099 -> :sswitch_5
        0x2009a -> :sswitch_0
        0x2009e -> :sswitch_1
        0x21015 -> :sswitch_2
        0x24004 -> :sswitch_8
    .end sparse-switch
.end method
