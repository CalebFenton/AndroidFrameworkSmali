.class Lcom/android/server/wifi/WifiController$StaDisabledWithScanState;
.super Lcom/android/internal/util/State;
.source "WifiController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifi/WifiController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "StaDisabledWithScanState"
.end annotation


# instance fields
.field private mDeferredEnableSerialNumber:I

.field private mDisabledTimestamp:J

.field private mHaveDeferredEnable:Z

.field final synthetic this$0:Lcom/android/server/wifi/WifiController;


# direct methods
.method constructor <init>(Lcom/android/server/wifi/WifiController;)V
    .locals 1
    .param p1, "this$0"    # Lcom/android/server/wifi/WifiController;

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 520
    iput-object p1, p0, Lcom/android/server/wifi/WifiController$StaDisabledWithScanState;->this$0:Lcom/android/server/wifi/WifiController;

    #@3
    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    #@6
    .line 521
    iput v0, p0, Lcom/android/server/wifi/WifiController$StaDisabledWithScanState;->mDeferredEnableSerialNumber:I

    #@8
    .line 522
    iput-boolean v0, p0, Lcom/android/server/wifi/WifiController$StaDisabledWithScanState;->mHaveDeferredEnable:Z

    #@a
    .line 520
    return-void
.end method

.method private doDeferEnable(Landroid/os/Message;)Z
    .locals 8
    .param p1, "msg"    # Landroid/os/Message;

    #@0
    .prologue
    .line 589
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    #@3
    move-result-wide v4

    #@4
    iget-wide v6, p0, Lcom/android/server/wifi/WifiController$StaDisabledWithScanState;->mDisabledTimestamp:J

    #@6
    sub-long v2, v4, v6

    #@8
    .line 590
    .local v2, "delaySoFar":J
    iget-object v1, p0, Lcom/android/server/wifi/WifiController$StaDisabledWithScanState;->this$0:Lcom/android/server/wifi/WifiController;

    #@a
    invoke-static {v1}, Lcom/android/server/wifi/WifiController;->-get10(Lcom/android/server/wifi/WifiController;)J

    #@d
    move-result-wide v4

    #@e
    cmp-long v1, v2, v4

    #@10
    if-ltz v1, :cond_0

    #@12
    .line 591
    const/4 v1, 0x0

    #@13
    return v1

    #@14
    .line 594
    :cond_0
    iget-object v1, p0, Lcom/android/server/wifi/WifiController$StaDisabledWithScanState;->this$0:Lcom/android/server/wifi/WifiController;

    #@16
    new-instance v4, Ljava/lang/StringBuilder;

    #@18
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@1b
    const-string/jumbo v5, "WifiController msg "

    #@1e
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@21
    move-result-object v4

    #@22
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@25
    move-result-object v4

    #@26
    const-string/jumbo v5, " deferred for "

    #@29
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2c
    move-result-object v4

    #@2d
    .line 595
    iget-object v5, p0, Lcom/android/server/wifi/WifiController$StaDisabledWithScanState;->this$0:Lcom/android/server/wifi/WifiController;

    #@2f
    invoke-static {v5}, Lcom/android/server/wifi/WifiController;->-get10(Lcom/android/server/wifi/WifiController;)J

    #@32
    move-result-wide v6

    #@33
    sub-long/2addr v6, v2

    #@34
    .line 594
    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    #@37
    move-result-object v4

    #@38
    .line 595
    const-string/jumbo v5, "ms"

    #@3b
    .line 594
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3e
    move-result-object v4

    #@3f
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@42
    move-result-object v4

    #@43
    invoke-static {v1, v4}, Lcom/android/server/wifi/WifiController;->-wrap3(Lcom/android/server/wifi/WifiController;Ljava/lang/String;)V

    #@46
    .line 598
    iget-object v1, p0, Lcom/android/server/wifi/WifiController$StaDisabledWithScanState;->this$0:Lcom/android/server/wifi/WifiController;

    #@48
    const v4, 0x2600b

    #@4b
    invoke-virtual {v1, v4}, Lcom/android/server/wifi/WifiController;->obtainMessage(I)Landroid/os/Message;

    #@4e
    move-result-object v0

    #@4f
    .line 599
    .local v0, "deferredMsg":Landroid/os/Message;
    invoke-static {p1}, Landroid/os/Message;->obtain(Landroid/os/Message;)Landroid/os/Message;

    #@52
    move-result-object v1

    #@53
    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@55
    .line 600
    iget v1, p0, Lcom/android/server/wifi/WifiController$StaDisabledWithScanState;->mDeferredEnableSerialNumber:I

    #@57
    add-int/lit8 v1, v1, 0x1

    #@59
    iput v1, p0, Lcom/android/server/wifi/WifiController$StaDisabledWithScanState;->mDeferredEnableSerialNumber:I

    #@5b
    iput v1, v0, Landroid/os/Message;->arg1:I

    #@5d
    .line 601
    iget-object v1, p0, Lcom/android/server/wifi/WifiController$StaDisabledWithScanState;->this$0:Lcom/android/server/wifi/WifiController;

    #@5f
    iget-object v4, p0, Lcom/android/server/wifi/WifiController$StaDisabledWithScanState;->this$0:Lcom/android/server/wifi/WifiController;

    #@61
    invoke-static {v4}, Lcom/android/server/wifi/WifiController;->-get10(Lcom/android/server/wifi/WifiController;)J

    #@64
    move-result-wide v4

    #@65
    sub-long/2addr v4, v2

    #@66
    const-wide/16 v6, 0x5

    #@68
    add-long/2addr v4, v6

    #@69
    invoke-virtual {v1, v0, v4, v5}, Lcom/android/server/wifi/WifiController;->sendMessageDelayed(Landroid/os/Message;J)V

    #@6c
    .line 602
    const/4 v1, 0x1

    #@6d
    return v1
.end method


# virtual methods
.method public enter()V
    .locals 3

    #@0
    .prologue
    const/4 v2, 0x1

    #@1
    .line 527
    iget-object v0, p0, Lcom/android/server/wifi/WifiController$StaDisabledWithScanState;->this$0:Lcom/android/server/wifi/WifiController;

    #@3
    iget-object v0, v0, Lcom/android/server/wifi/WifiController;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    #@5
    invoke-virtual {v0, v2}, Lcom/android/server/wifi/WifiStateMachine;->setSupplicantRunning(Z)V

    #@8
    .line 528
    iget-object v0, p0, Lcom/android/server/wifi/WifiController$StaDisabledWithScanState;->this$0:Lcom/android/server/wifi/WifiController;

    #@a
    iget-object v0, v0, Lcom/android/server/wifi/WifiController;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    #@c
    const/4 v1, 0x3

    #@d
    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiStateMachine;->setOperationalMode(I)V

    #@10
    .line 529
    iget-object v0, p0, Lcom/android/server/wifi/WifiController$StaDisabledWithScanState;->this$0:Lcom/android/server/wifi/WifiController;

    #@12
    iget-object v0, v0, Lcom/android/server/wifi/WifiController;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    #@14
    invoke-virtual {v0, v2}, Lcom/android/server/wifi/WifiStateMachine;->setDriverStart(Z)V

    #@17
    .line 531
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    #@1a
    move-result-wide v0

    #@1b
    iput-wide v0, p0, Lcom/android/server/wifi/WifiController$StaDisabledWithScanState;->mDisabledTimestamp:J

    #@1d
    .line 532
    iget v0, p0, Lcom/android/server/wifi/WifiController$StaDisabledWithScanState;->mDeferredEnableSerialNumber:I

    #@1f
    add-int/lit8 v0, v0, 0x1

    #@21
    iput v0, p0, Lcom/android/server/wifi/WifiController$StaDisabledWithScanState;->mDeferredEnableSerialNumber:I

    #@23
    .line 533
    const/4 v0, 0x0

    #@24
    iput-boolean v0, p0, Lcom/android/server/wifi/WifiController$StaDisabledWithScanState;->mHaveDeferredEnable:Z

    #@26
    .line 534
    iget-object v0, p0, Lcom/android/server/wifi/WifiController$StaDisabledWithScanState;->this$0:Lcom/android/server/wifi/WifiController;

    #@28
    iget-object v0, v0, Lcom/android/server/wifi/WifiController;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    #@2a
    invoke-virtual {v0}, Lcom/android/server/wifi/WifiStateMachine;->clearANQPCache()V

    #@2d
    .line 526
    return-void
.end method

.method public processMessage(Landroid/os/Message;)Z
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    const/4 v1, 0x1

    #@2
    .line 539
    iget v2, p1, Landroid/os/Message;->what:I

    #@4
    packed-switch v2, :pswitch_data_0

    #@7
    .line 583
    return v0

    #@8
    .line 541
    :pswitch_0
    iget-object v2, p0, Lcom/android/server/wifi/WifiController$StaDisabledWithScanState;->this$0:Lcom/android/server/wifi/WifiController;

    #@a
    iget-object v2, v2, Lcom/android/server/wifi/WifiController;->mSettingsStore:Lcom/android/server/wifi/WifiSettingsStore;

    #@c
    invoke-virtual {v2}, Lcom/android/server/wifi/WifiSettingsStore;->isWifiToggleEnabled()Z

    #@f
    move-result v2

    #@10
    if-eqz v2, :cond_1

    #@12
    .line 542
    invoke-direct {p0, p1}, Lcom/android/server/wifi/WifiController$StaDisabledWithScanState;->doDeferEnable(Landroid/os/Message;)Z

    #@15
    move-result v2

    #@16
    if-eqz v2, :cond_3

    #@18
    .line 543
    iget-boolean v2, p0, Lcom/android/server/wifi/WifiController$StaDisabledWithScanState;->mHaveDeferredEnable:Z

    #@1a
    if-eqz v2, :cond_0

    #@1c
    .line 545
    iget v2, p0, Lcom/android/server/wifi/WifiController$StaDisabledWithScanState;->mDeferredEnableSerialNumber:I

    #@1e
    add-int/lit8 v2, v2, 0x1

    #@20
    iput v2, p0, Lcom/android/server/wifi/WifiController$StaDisabledWithScanState;->mDeferredEnableSerialNumber:I

    #@22
    .line 547
    :cond_0
    iget-boolean v2, p0, Lcom/android/server/wifi/WifiController$StaDisabledWithScanState;->mHaveDeferredEnable:Z

    #@24
    if-eqz v2, :cond_2

    #@26
    :goto_0
    iput-boolean v0, p0, Lcom/android/server/wifi/WifiController$StaDisabledWithScanState;->mHaveDeferredEnable:Z

    #@28
    .line 585
    :cond_1
    :goto_1
    return v1

    #@29
    :cond_2
    move v0, v1

    #@2a
    .line 547
    goto :goto_0

    #@2b
    .line 550
    :cond_3
    iget-object v0, p0, Lcom/android/server/wifi/WifiController$StaDisabledWithScanState;->this$0:Lcom/android/server/wifi/WifiController;

    #@2d
    invoke-static {v0}, Lcom/android/server/wifi/WifiController;->-get4(Lcom/android/server/wifi/WifiController;)Z

    #@30
    move-result v0

    #@31
    if-nez v0, :cond_4

    #@33
    .line 551
    iget-object v0, p0, Lcom/android/server/wifi/WifiController$StaDisabledWithScanState;->this$0:Lcom/android/server/wifi/WifiController;

    #@35
    iget-object v2, p0, Lcom/android/server/wifi/WifiController$StaDisabledWithScanState;->this$0:Lcom/android/server/wifi/WifiController;

    #@37
    invoke-static {v2}, Lcom/android/server/wifi/WifiController;->-get3(Lcom/android/server/wifi/WifiController;)Lcom/android/server/wifi/WifiController$DeviceActiveState;

    #@3a
    move-result-object v2

    #@3b
    invoke-static {v0, v2}, Lcom/android/server/wifi/WifiController;->-wrap9(Lcom/android/server/wifi/WifiController;Lcom/android/internal/util/IState;)V

    #@3e
    goto :goto_1

    #@3f
    .line 553
    :cond_4
    iget-object v0, p0, Lcom/android/server/wifi/WifiController$StaDisabledWithScanState;->this$0:Lcom/android/server/wifi/WifiController;

    #@41
    invoke-static {v0}, Lcom/android/server/wifi/WifiController;->-wrap1(Lcom/android/server/wifi/WifiController;)V

    #@44
    goto :goto_1

    #@45
    .line 558
    :pswitch_1
    iget-object v0, p0, Lcom/android/server/wifi/WifiController$StaDisabledWithScanState;->this$0:Lcom/android/server/wifi/WifiController;

    #@47
    iget-object v0, v0, Lcom/android/server/wifi/WifiController;->mSettingsStore:Lcom/android/server/wifi/WifiSettingsStore;

    #@49
    invoke-virtual {v0}, Lcom/android/server/wifi/WifiSettingsStore;->isAirplaneModeOn()Z

    #@4c
    move-result v0

    #@4d
    if-eqz v0, :cond_5

    #@4f
    .line 559
    iget-object v0, p0, Lcom/android/server/wifi/WifiController$StaDisabledWithScanState;->this$0:Lcom/android/server/wifi/WifiController;

    #@51
    iget-object v0, v0, Lcom/android/server/wifi/WifiController;->mSettingsStore:Lcom/android/server/wifi/WifiSettingsStore;

    #@53
    invoke-virtual {v0}, Lcom/android/server/wifi/WifiSettingsStore;->isWifiToggleEnabled()Z

    #@56
    move-result v0

    #@57
    if-eqz v0, :cond_6

    #@59
    .line 563
    :cond_5
    :goto_2
    :pswitch_2
    iget-object v0, p0, Lcom/android/server/wifi/WifiController$StaDisabledWithScanState;->this$0:Lcom/android/server/wifi/WifiController;

    #@5b
    iget-object v0, v0, Lcom/android/server/wifi/WifiController;->mSettingsStore:Lcom/android/server/wifi/WifiSettingsStore;

    #@5d
    invoke-virtual {v0}, Lcom/android/server/wifi/WifiSettingsStore;->isScanAlwaysAvailable()Z

    #@60
    move-result v0

    #@61
    if-nez v0, :cond_1

    #@63
    .line 564
    iget-object v0, p0, Lcom/android/server/wifi/WifiController$StaDisabledWithScanState;->this$0:Lcom/android/server/wifi/WifiController;

    #@65
    iget-object v2, p0, Lcom/android/server/wifi/WifiController$StaDisabledWithScanState;->this$0:Lcom/android/server/wifi/WifiController;

    #@67
    invoke-static {v2}, Lcom/android/server/wifi/WifiController;->-get2(Lcom/android/server/wifi/WifiController;)Lcom/android/server/wifi/WifiController$ApStaDisabledState;

    #@6a
    move-result-object v2

    #@6b
    invoke-static {v0, v2}, Lcom/android/server/wifi/WifiController;->-wrap9(Lcom/android/server/wifi/WifiController;Lcom/android/internal/util/IState;)V

    #@6e
    goto :goto_1

    #@6f
    .line 560
    :cond_6
    iget-object v0, p0, Lcom/android/server/wifi/WifiController$StaDisabledWithScanState;->this$0:Lcom/android/server/wifi/WifiController;

    #@71
    iget-object v2, p0, Lcom/android/server/wifi/WifiController$StaDisabledWithScanState;->this$0:Lcom/android/server/wifi/WifiController;

    #@73
    invoke-static {v2}, Lcom/android/server/wifi/WifiController;->-get2(Lcom/android/server/wifi/WifiController;)Lcom/android/server/wifi/WifiController$ApStaDisabledState;

    #@76
    move-result-object v2

    #@77
    invoke-static {v0, v2}, Lcom/android/server/wifi/WifiController;->-wrap9(Lcom/android/server/wifi/WifiController;Lcom/android/internal/util/IState;)V

    #@7a
    goto :goto_2

    #@7b
    .line 569
    :pswitch_3
    iget v0, p1, Landroid/os/Message;->arg1:I

    #@7d
    if-ne v0, v1, :cond_1

    #@7f
    .line 570
    iget-object v0, p0, Lcom/android/server/wifi/WifiController$StaDisabledWithScanState;->this$0:Lcom/android/server/wifi/WifiController;

    #@81
    invoke-static {v0, p1}, Lcom/android/server/wifi/WifiController;->-wrap2(Lcom/android/server/wifi/WifiController;Landroid/os/Message;)V

    #@84
    .line 571
    iget-object v0, p0, Lcom/android/server/wifi/WifiController$StaDisabledWithScanState;->this$0:Lcom/android/server/wifi/WifiController;

    #@86
    iget-object v2, p0, Lcom/android/server/wifi/WifiController$StaDisabledWithScanState;->this$0:Lcom/android/server/wifi/WifiController;

    #@88
    invoke-static {v2}, Lcom/android/server/wifi/WifiController;->-get2(Lcom/android/server/wifi/WifiController;)Lcom/android/server/wifi/WifiController$ApStaDisabledState;

    #@8b
    move-result-object v2

    #@8c
    invoke-static {v0, v2}, Lcom/android/server/wifi/WifiController;->-wrap9(Lcom/android/server/wifi/WifiController;Lcom/android/internal/util/IState;)V

    #@8f
    goto :goto_1

    #@90
    .line 575
    :pswitch_4
    iget v0, p1, Landroid/os/Message;->arg1:I

    #@92
    iget v2, p0, Lcom/android/server/wifi/WifiController$StaDisabledWithScanState;->mDeferredEnableSerialNumber:I

    #@94
    if-eq v0, v2, :cond_7

    #@96
    .line 576
    iget-object v0, p0, Lcom/android/server/wifi/WifiController$StaDisabledWithScanState;->this$0:Lcom/android/server/wifi/WifiController;

    #@98
    const-string/jumbo v2, "DEFERRED_TOGGLE ignored due to serial mismatch"

    #@9b
    invoke-static {v0, v2}, Lcom/android/server/wifi/WifiController;->-wrap3(Lcom/android/server/wifi/WifiController;Ljava/lang/String;)V

    #@9e
    goto :goto_1

    #@9f
    .line 579
    :cond_7
    iget-object v0, p0, Lcom/android/server/wifi/WifiController$StaDisabledWithScanState;->this$0:Lcom/android/server/wifi/WifiController;

    #@a1
    const-string/jumbo v2, "DEFERRED_TOGGLE handled"

    #@a4
    invoke-static {v0, v2}, Lcom/android/server/wifi/WifiController;->-wrap4(Lcom/android/server/wifi/WifiController;Ljava/lang/String;)V

    #@a7
    .line 580
    iget-object v2, p0, Lcom/android/server/wifi/WifiController$StaDisabledWithScanState;->this$0:Lcom/android/server/wifi/WifiController;

    #@a9
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@ab
    check-cast v0, Landroid/os/Message;

    #@ad
    invoke-virtual {v2, v0}, Lcom/android/server/wifi/WifiController;->sendMessage(Landroid/os/Message;)V

    #@b0
    goto/16 :goto_1

    #@b2
    .line 539
    :pswitch_data_0
    .packed-switch 0x26007
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method
