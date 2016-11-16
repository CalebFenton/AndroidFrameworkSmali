.class Lcom/android/server/wifi/WifiController$ApStaDisabledState;
.super Lcom/android/internal/util/State;
.source "WifiController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifi/WifiController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ApStaDisabledState"
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
    .line 432
    iput-object p1, p0, Lcom/android/server/wifi/WifiController$ApStaDisabledState;->this$0:Lcom/android/server/wifi/WifiController;

    #@3
    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    #@6
    .line 433
    iput v0, p0, Lcom/android/server/wifi/WifiController$ApStaDisabledState;->mDeferredEnableSerialNumber:I

    #@8
    .line 434
    iput-boolean v0, p0, Lcom/android/server/wifi/WifiController$ApStaDisabledState;->mHaveDeferredEnable:Z

    #@a
    .line 432
    return-void
.end method

.method private doDeferEnable(Landroid/os/Message;)Z
    .locals 8
    .param p1, "msg"    # Landroid/os/Message;

    #@0
    .prologue
    .line 502
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    #@3
    move-result-wide v4

    #@4
    iget-wide v6, p0, Lcom/android/server/wifi/WifiController$ApStaDisabledState;->mDisabledTimestamp:J

    #@6
    sub-long v2, v4, v6

    #@8
    .line 503
    .local v2, "delaySoFar":J
    iget-object v1, p0, Lcom/android/server/wifi/WifiController$ApStaDisabledState;->this$0:Lcom/android/server/wifi/WifiController;

    #@a
    invoke-static {v1}, Lcom/android/server/wifi/WifiController;->-get12(Lcom/android/server/wifi/WifiController;)J

    #@d
    move-result-wide v4

    #@e
    cmp-long v1, v2, v4

    #@10
    if-ltz v1, :cond_0

    #@12
    .line 504
    const/4 v1, 0x0

    #@13
    return v1

    #@14
    .line 507
    :cond_0
    iget-object v1, p0, Lcom/android/server/wifi/WifiController$ApStaDisabledState;->this$0:Lcom/android/server/wifi/WifiController;

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
    .line 508
    iget-object v5, p0, Lcom/android/server/wifi/WifiController$ApStaDisabledState;->this$0:Lcom/android/server/wifi/WifiController;

    #@2f
    invoke-static {v5}, Lcom/android/server/wifi/WifiController;->-get12(Lcom/android/server/wifi/WifiController;)J

    #@32
    move-result-wide v6

    #@33
    sub-long/2addr v6, v2

    #@34
    .line 507
    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    #@37
    move-result-object v4

    #@38
    .line 508
    const-string/jumbo v5, "ms"

    #@3b
    .line 507
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
    .line 511
    iget-object v1, p0, Lcom/android/server/wifi/WifiController$ApStaDisabledState;->this$0:Lcom/android/server/wifi/WifiController;

    #@48
    const v4, 0x2600b

    #@4b
    invoke-virtual {v1, v4}, Lcom/android/server/wifi/WifiController;->obtainMessage(I)Landroid/os/Message;

    #@4e
    move-result-object v0

    #@4f
    .line 512
    .local v0, "deferredMsg":Landroid/os/Message;
    invoke-static {p1}, Landroid/os/Message;->obtain(Landroid/os/Message;)Landroid/os/Message;

    #@52
    move-result-object v1

    #@53
    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@55
    .line 513
    iget v1, p0, Lcom/android/server/wifi/WifiController$ApStaDisabledState;->mDeferredEnableSerialNumber:I

    #@57
    add-int/lit8 v1, v1, 0x1

    #@59
    iput v1, p0, Lcom/android/server/wifi/WifiController$ApStaDisabledState;->mDeferredEnableSerialNumber:I

    #@5b
    iput v1, v0, Landroid/os/Message;->arg1:I

    #@5d
    .line 514
    iget-object v1, p0, Lcom/android/server/wifi/WifiController$ApStaDisabledState;->this$0:Lcom/android/server/wifi/WifiController;

    #@5f
    iget-object v4, p0, Lcom/android/server/wifi/WifiController$ApStaDisabledState;->this$0:Lcom/android/server/wifi/WifiController;

    #@61
    invoke-static {v4}, Lcom/android/server/wifi/WifiController;->-get12(Lcom/android/server/wifi/WifiController;)J

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
    .line 515
    const/4 v1, 0x1

    #@6d
    return v1
.end method


# virtual methods
.method public enter()V
    .locals 3

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 439
    iget-object v0, p0, Lcom/android/server/wifi/WifiController$ApStaDisabledState;->this$0:Lcom/android/server/wifi/WifiController;

    #@3
    invoke-static {v0}, Lcom/android/server/wifi/WifiController;->-get16(Lcom/android/server/wifi/WifiController;)Lcom/android/server/wifi/WifiStateMachine;

    #@6
    move-result-object v0

    #@7
    invoke-virtual {v0, v2}, Lcom/android/server/wifi/WifiStateMachine;->setSupplicantRunning(Z)V

    #@a
    .line 441
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    #@d
    move-result-wide v0

    #@e
    iput-wide v0, p0, Lcom/android/server/wifi/WifiController$ApStaDisabledState;->mDisabledTimestamp:J

    #@10
    .line 442
    iget v0, p0, Lcom/android/server/wifi/WifiController$ApStaDisabledState;->mDeferredEnableSerialNumber:I

    #@12
    add-int/lit8 v0, v0, 0x1

    #@14
    iput v0, p0, Lcom/android/server/wifi/WifiController$ApStaDisabledState;->mDeferredEnableSerialNumber:I

    #@16
    .line 443
    iput-boolean v2, p0, Lcom/android/server/wifi/WifiController$ApStaDisabledState;->mHaveDeferredEnable:Z

    #@18
    .line 444
    iget-object v0, p0, Lcom/android/server/wifi/WifiController$ApStaDisabledState;->this$0:Lcom/android/server/wifi/WifiController;

    #@1a
    invoke-static {v0}, Lcom/android/server/wifi/WifiController;->-get16(Lcom/android/server/wifi/WifiController;)Lcom/android/server/wifi/WifiStateMachine;

    #@1d
    move-result-object v0

    #@1e
    invoke-virtual {v0}, Lcom/android/server/wifi/WifiStateMachine;->clearANQPCache()V

    #@21
    .line 438
    return-void
.end method

.method public processMessage(Landroid/os/Message;)Z
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    #@0
    .prologue
    const/4 v1, 0x1

    #@1
    const/4 v0, 0x0

    #@2
    .line 448
    iget v2, p1, Landroid/os/Message;->what:I

    #@4
    packed-switch v2, :pswitch_data_0

    #@7
    .line 496
    :pswitch_0
    return v0

    #@8
    .line 451
    :pswitch_1
    iget-object v2, p0, Lcom/android/server/wifi/WifiController$ApStaDisabledState;->this$0:Lcom/android/server/wifi/WifiController;

    #@a
    invoke-static {v2}, Lcom/android/server/wifi/WifiController;->-get14(Lcom/android/server/wifi/WifiController;)Lcom/android/server/wifi/WifiSettingsStore;

    #@d
    move-result-object v2

    #@e
    invoke-virtual {v2}, Lcom/android/server/wifi/WifiSettingsStore;->isWifiToggleEnabled()Z

    #@11
    move-result v2

    #@12
    if-eqz v2, :cond_5

    #@14
    .line 452
    invoke-direct {p0, p1}, Lcom/android/server/wifi/WifiController$ApStaDisabledState;->doDeferEnable(Landroid/os/Message;)Z

    #@17
    move-result v2

    #@18
    if-eqz v2, :cond_3

    #@1a
    .line 453
    iget-boolean v2, p0, Lcom/android/server/wifi/WifiController$ApStaDisabledState;->mHaveDeferredEnable:Z

    #@1c
    if-eqz v2, :cond_0

    #@1e
    .line 455
    iget v2, p0, Lcom/android/server/wifi/WifiController$ApStaDisabledState;->mDeferredEnableSerialNumber:I

    #@20
    add-int/lit8 v2, v2, 0x1

    #@22
    iput v2, p0, Lcom/android/server/wifi/WifiController$ApStaDisabledState;->mDeferredEnableSerialNumber:I

    #@24
    .line 457
    :cond_0
    iget-boolean v2, p0, Lcom/android/server/wifi/WifiController$ApStaDisabledState;->mHaveDeferredEnable:Z

    #@26
    if-eqz v2, :cond_2

    #@28
    :goto_0
    iput-boolean v0, p0, Lcom/android/server/wifi/WifiController$ApStaDisabledState;->mHaveDeferredEnable:Z

    #@2a
    .line 498
    :cond_1
    :goto_1
    return v1

    #@2b
    :cond_2
    move v0, v1

    #@2c
    .line 457
    goto :goto_0

    #@2d
    .line 460
    :cond_3
    iget-object v0, p0, Lcom/android/server/wifi/WifiController$ApStaDisabledState;->this$0:Lcom/android/server/wifi/WifiController;

    #@2f
    invoke-static {v0}, Lcom/android/server/wifi/WifiController;->-get5(Lcom/android/server/wifi/WifiController;)Z

    #@32
    move-result v0

    #@33
    if-nez v0, :cond_4

    #@35
    .line 461
    iget-object v0, p0, Lcom/android/server/wifi/WifiController$ApStaDisabledState;->this$0:Lcom/android/server/wifi/WifiController;

    #@37
    iget-object v2, p0, Lcom/android/server/wifi/WifiController$ApStaDisabledState;->this$0:Lcom/android/server/wifi/WifiController;

    #@39
    invoke-static {v2}, Lcom/android/server/wifi/WifiController;->-get4(Lcom/android/server/wifi/WifiController;)Lcom/android/server/wifi/WifiController$DeviceActiveState;

    #@3c
    move-result-object v2

    #@3d
    invoke-static {v0, v2}, Lcom/android/server/wifi/WifiController;->-wrap9(Lcom/android/server/wifi/WifiController;Lcom/android/internal/util/IState;)V

    #@40
    goto :goto_1

    #@41
    .line 463
    :cond_4
    iget-object v0, p0, Lcom/android/server/wifi/WifiController$ApStaDisabledState;->this$0:Lcom/android/server/wifi/WifiController;

    #@43
    invoke-static {v0}, Lcom/android/server/wifi/WifiController;->-wrap1(Lcom/android/server/wifi/WifiController;)V

    #@46
    goto :goto_1

    #@47
    .line 465
    :cond_5
    iget-object v0, p0, Lcom/android/server/wifi/WifiController$ApStaDisabledState;->this$0:Lcom/android/server/wifi/WifiController;

    #@49
    invoke-static {v0}, Lcom/android/server/wifi/WifiController;->-get14(Lcom/android/server/wifi/WifiController;)Lcom/android/server/wifi/WifiSettingsStore;

    #@4c
    move-result-object v0

    #@4d
    invoke-virtual {v0}, Lcom/android/server/wifi/WifiSettingsStore;->isScanAlwaysAvailable()Z

    #@50
    move-result v0

    #@51
    if-eqz v0, :cond_1

    #@53
    .line 466
    iget-object v0, p0, Lcom/android/server/wifi/WifiController$ApStaDisabledState;->this$0:Lcom/android/server/wifi/WifiController;

    #@55
    iget-object v2, p0, Lcom/android/server/wifi/WifiController$ApStaDisabledState;->this$0:Lcom/android/server/wifi/WifiController;

    #@57
    invoke-static {v2}, Lcom/android/server/wifi/WifiController;->-get15(Lcom/android/server/wifi/WifiController;)Lcom/android/server/wifi/WifiController$StaDisabledWithScanState;

    #@5a
    move-result-object v2

    #@5b
    invoke-static {v0, v2}, Lcom/android/server/wifi/WifiController;->-wrap9(Lcom/android/server/wifi/WifiController;Lcom/android/internal/util/IState;)V

    #@5e
    goto :goto_1

    #@5f
    .line 470
    :pswitch_2
    iget-object v0, p0, Lcom/android/server/wifi/WifiController$ApStaDisabledState;->this$0:Lcom/android/server/wifi/WifiController;

    #@61
    invoke-static {v0}, Lcom/android/server/wifi/WifiController;->-get14(Lcom/android/server/wifi/WifiController;)Lcom/android/server/wifi/WifiSettingsStore;

    #@64
    move-result-object v0

    #@65
    invoke-virtual {v0}, Lcom/android/server/wifi/WifiSettingsStore;->isScanAlwaysAvailable()Z

    #@68
    move-result v0

    #@69
    if-eqz v0, :cond_1

    #@6b
    .line 471
    iget-object v0, p0, Lcom/android/server/wifi/WifiController$ApStaDisabledState;->this$0:Lcom/android/server/wifi/WifiController;

    #@6d
    iget-object v2, p0, Lcom/android/server/wifi/WifiController$ApStaDisabledState;->this$0:Lcom/android/server/wifi/WifiController;

    #@6f
    invoke-static {v2}, Lcom/android/server/wifi/WifiController;->-get15(Lcom/android/server/wifi/WifiController;)Lcom/android/server/wifi/WifiController$StaDisabledWithScanState;

    #@72
    move-result-object v2

    #@73
    invoke-static {v0, v2}, Lcom/android/server/wifi/WifiController;->-wrap9(Lcom/android/server/wifi/WifiController;Lcom/android/internal/util/IState;)V

    #@76
    goto :goto_1

    #@77
    .line 475
    :pswitch_3
    iget v2, p1, Landroid/os/Message;->arg1:I

    #@79
    if-ne v2, v1, :cond_1

    #@7b
    .line 476
    iget v2, p1, Landroid/os/Message;->arg2:I

    #@7d
    if-nez v2, :cond_6

    #@7f
    .line 477
    iget-object v2, p0, Lcom/android/server/wifi/WifiController$ApStaDisabledState;->this$0:Lcom/android/server/wifi/WifiController;

    #@81
    invoke-static {v2}, Lcom/android/server/wifi/WifiController;->-get14(Lcom/android/server/wifi/WifiController;)Lcom/android/server/wifi/WifiSettingsStore;

    #@84
    move-result-object v2

    #@85
    invoke-virtual {v2, v0}, Lcom/android/server/wifi/WifiSettingsStore;->setWifiSavedState(I)V

    #@88
    .line 479
    :cond_6
    iget-object v0, p0, Lcom/android/server/wifi/WifiController$ApStaDisabledState;->this$0:Lcom/android/server/wifi/WifiController;

    #@8a
    invoke-static {v0}, Lcom/android/server/wifi/WifiController;->-get16(Lcom/android/server/wifi/WifiController;)Lcom/android/server/wifi/WifiStateMachine;

    #@8d
    move-result-object v2

    #@8e
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@90
    check-cast v0, Landroid/net/wifi/WifiConfiguration;

    #@92
    invoke-virtual {v2, v0, v1}, Lcom/android/server/wifi/WifiStateMachine;->setHostApRunning(Landroid/net/wifi/WifiConfiguration;Z)V

    #@95
    .line 481
    iget-object v0, p0, Lcom/android/server/wifi/WifiController$ApStaDisabledState;->this$0:Lcom/android/server/wifi/WifiController;

    #@97
    iget-object v2, p0, Lcom/android/server/wifi/WifiController$ApStaDisabledState;->this$0:Lcom/android/server/wifi/WifiController;

    #@99
    invoke-static {v2}, Lcom/android/server/wifi/WifiController;->-get1(Lcom/android/server/wifi/WifiController;)Lcom/android/server/wifi/WifiController$ApEnabledState;

    #@9c
    move-result-object v2

    #@9d
    invoke-static {v0, v2}, Lcom/android/server/wifi/WifiController;->-wrap9(Lcom/android/server/wifi/WifiController;Lcom/android/internal/util/IState;)V

    #@a0
    goto :goto_1

    #@a1
    .line 485
    :pswitch_4
    iget v0, p1, Landroid/os/Message;->arg1:I

    #@a3
    iget v2, p0, Lcom/android/server/wifi/WifiController$ApStaDisabledState;->mDeferredEnableSerialNumber:I

    #@a5
    if-eq v0, v2, :cond_7

    #@a7
    .line 486
    iget-object v0, p0, Lcom/android/server/wifi/WifiController$ApStaDisabledState;->this$0:Lcom/android/server/wifi/WifiController;

    #@a9
    const-string/jumbo v2, "DEFERRED_TOGGLE ignored due to serial mismatch"

    #@ac
    invoke-static {v0, v2}, Lcom/android/server/wifi/WifiController;->-wrap3(Lcom/android/server/wifi/WifiController;Ljava/lang/String;)V

    #@af
    goto/16 :goto_1

    #@b1
    .line 489
    :cond_7
    iget-object v0, p0, Lcom/android/server/wifi/WifiController$ApStaDisabledState;->this$0:Lcom/android/server/wifi/WifiController;

    #@b3
    const-string/jumbo v2, "DEFERRED_TOGGLE handled"

    #@b6
    invoke-static {v0, v2}, Lcom/android/server/wifi/WifiController;->-wrap3(Lcom/android/server/wifi/WifiController;Ljava/lang/String;)V

    #@b9
    .line 490
    iget-object v2, p0, Lcom/android/server/wifi/WifiController$ApStaDisabledState;->this$0:Lcom/android/server/wifi/WifiController;

    #@bb
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@bd
    check-cast v0, Landroid/os/Message;

    #@bf
    invoke-virtual {v2, v0}, Lcom/android/server/wifi/WifiController;->sendMessage(Landroid/os/Message;)V

    #@c2
    goto/16 :goto_1

    #@c4
    .line 493
    :pswitch_5
    iget-object v0, p0, Lcom/android/server/wifi/WifiController$ApStaDisabledState;->this$0:Lcom/android/server/wifi/WifiController;

    #@c6
    iget-object v2, p0, Lcom/android/server/wifi/WifiController$ApStaDisabledState;->this$0:Lcom/android/server/wifi/WifiController;

    #@c8
    invoke-static {v2}, Lcom/android/server/wifi/WifiController;->-get4(Lcom/android/server/wifi/WifiController;)Lcom/android/server/wifi/WifiController$DeviceActiveState;

    #@cb
    move-result-object v2

    #@cc
    invoke-static {v0, v2}, Lcom/android/server/wifi/WifiController;->-wrap9(Lcom/android/server/wifi/WifiController;Lcom/android/internal/util/IState;)V

    #@cf
    goto/16 :goto_1

    #@d1
    .line 448
    nop

    #@d2
    :pswitch_data_0
    .packed-switch 0x26007
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_3
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_5
    .end packed-switch
.end method
