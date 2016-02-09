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
    .line 400
    iput-object p1, p0, Lcom/android/server/wifi/WifiController$ApStaDisabledState;->this$0:Lcom/android/server/wifi/WifiController;

    #@3
    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    #@6
    .line 401
    iput v0, p0, Lcom/android/server/wifi/WifiController$ApStaDisabledState;->mDeferredEnableSerialNumber:I

    #@8
    .line 402
    iput-boolean v0, p0, Lcom/android/server/wifi/WifiController$ApStaDisabledState;->mHaveDeferredEnable:Z

    #@a
    .line 400
    return-void
.end method

.method private doDeferEnable(Landroid/os/Message;)Z
    .locals 8
    .param p1, "msg"    # Landroid/os/Message;

    #@0
    .prologue
    .line 464
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    #@3
    move-result-wide v4

    #@4
    iget-wide v6, p0, Lcom/android/server/wifi/WifiController$ApStaDisabledState;->mDisabledTimestamp:J

    #@6
    sub-long v2, v4, v6

    #@8
    .line 465
    .local v2, "delaySoFar":J
    iget-object v1, p0, Lcom/android/server/wifi/WifiController$ApStaDisabledState;->this$0:Lcom/android/server/wifi/WifiController;

    #@a
    invoke-static {v1}, Lcom/android/server/wifi/WifiController;->-get10(Lcom/android/server/wifi/WifiController;)J

    #@d
    move-result-wide v4

    #@e
    cmp-long v1, v2, v4

    #@10
    if-ltz v1, :cond_0

    #@12
    .line 466
    const/4 v1, 0x0

    #@13
    return v1

    #@14
    .line 469
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
    .line 470
    iget-object v5, p0, Lcom/android/server/wifi/WifiController$ApStaDisabledState;->this$0:Lcom/android/server/wifi/WifiController;

    #@2f
    invoke-static {v5}, Lcom/android/server/wifi/WifiController;->-get10(Lcom/android/server/wifi/WifiController;)J

    #@32
    move-result-wide v6

    #@33
    sub-long/2addr v6, v2

    #@34
    .line 469
    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    #@37
    move-result-object v4

    #@38
    .line 470
    const-string/jumbo v5, "ms"

    #@3b
    .line 469
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
    .line 473
    iget-object v1, p0, Lcom/android/server/wifi/WifiController$ApStaDisabledState;->this$0:Lcom/android/server/wifi/WifiController;

    #@48
    const v4, 0x2600b

    #@4b
    invoke-virtual {v1, v4}, Lcom/android/server/wifi/WifiController;->obtainMessage(I)Landroid/os/Message;

    #@4e
    move-result-object v0

    #@4f
    .line 474
    .local v0, "deferredMsg":Landroid/os/Message;
    invoke-static {p1}, Landroid/os/Message;->obtain(Landroid/os/Message;)Landroid/os/Message;

    #@52
    move-result-object v1

    #@53
    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@55
    .line 475
    iget v1, p0, Lcom/android/server/wifi/WifiController$ApStaDisabledState;->mDeferredEnableSerialNumber:I

    #@57
    add-int/lit8 v1, v1, 0x1

    #@59
    iput v1, p0, Lcom/android/server/wifi/WifiController$ApStaDisabledState;->mDeferredEnableSerialNumber:I

    #@5b
    iput v1, v0, Landroid/os/Message;->arg1:I

    #@5d
    .line 476
    iget-object v1, p0, Lcom/android/server/wifi/WifiController$ApStaDisabledState;->this$0:Lcom/android/server/wifi/WifiController;

    #@5f
    iget-object v4, p0, Lcom/android/server/wifi/WifiController$ApStaDisabledState;->this$0:Lcom/android/server/wifi/WifiController;

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
    .line 477
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
    .line 407
    iget-object v0, p0, Lcom/android/server/wifi/WifiController$ApStaDisabledState;->this$0:Lcom/android/server/wifi/WifiController;

    #@3
    iget-object v0, v0, Lcom/android/server/wifi/WifiController;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    #@5
    invoke-virtual {v0, v2}, Lcom/android/server/wifi/WifiStateMachine;->setSupplicantRunning(Z)V

    #@8
    .line 409
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    #@b
    move-result-wide v0

    #@c
    iput-wide v0, p0, Lcom/android/server/wifi/WifiController$ApStaDisabledState;->mDisabledTimestamp:J

    #@e
    .line 410
    iget v0, p0, Lcom/android/server/wifi/WifiController$ApStaDisabledState;->mDeferredEnableSerialNumber:I

    #@10
    add-int/lit8 v0, v0, 0x1

    #@12
    iput v0, p0, Lcom/android/server/wifi/WifiController$ApStaDisabledState;->mDeferredEnableSerialNumber:I

    #@14
    .line 411
    iput-boolean v2, p0, Lcom/android/server/wifi/WifiController$ApStaDisabledState;->mHaveDeferredEnable:Z

    #@16
    .line 412
    iget-object v0, p0, Lcom/android/server/wifi/WifiController$ApStaDisabledState;->this$0:Lcom/android/server/wifi/WifiController;

    #@18
    iget-object v0, v0, Lcom/android/server/wifi/WifiController;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    #@1a
    invoke-virtual {v0}, Lcom/android/server/wifi/WifiStateMachine;->clearANQPCache()V

    #@1d
    .line 406
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
    .line 416
    iget v2, p1, Landroid/os/Message;->what:I

    #@4
    packed-switch v2, :pswitch_data_0

    #@7
    .line 458
    return v0

    #@8
    .line 419
    :pswitch_0
    iget-object v2, p0, Lcom/android/server/wifi/WifiController$ApStaDisabledState;->this$0:Lcom/android/server/wifi/WifiController;

    #@a
    iget-object v2, v2, Lcom/android/server/wifi/WifiController;->mSettingsStore:Lcom/android/server/wifi/WifiSettingsStore;

    #@c
    invoke-virtual {v2}, Lcom/android/server/wifi/WifiSettingsStore;->isWifiToggleEnabled()Z

    #@f
    move-result v2

    #@10
    if-eqz v2, :cond_5

    #@12
    .line 420
    invoke-direct {p0, p1}, Lcom/android/server/wifi/WifiController$ApStaDisabledState;->doDeferEnable(Landroid/os/Message;)Z

    #@15
    move-result v2

    #@16
    if-eqz v2, :cond_3

    #@18
    .line 421
    iget-boolean v2, p0, Lcom/android/server/wifi/WifiController$ApStaDisabledState;->mHaveDeferredEnable:Z

    #@1a
    if-eqz v2, :cond_0

    #@1c
    .line 423
    iget v2, p0, Lcom/android/server/wifi/WifiController$ApStaDisabledState;->mDeferredEnableSerialNumber:I

    #@1e
    add-int/lit8 v2, v2, 0x1

    #@20
    iput v2, p0, Lcom/android/server/wifi/WifiController$ApStaDisabledState;->mDeferredEnableSerialNumber:I

    #@22
    .line 425
    :cond_0
    iget-boolean v2, p0, Lcom/android/server/wifi/WifiController$ApStaDisabledState;->mHaveDeferredEnable:Z

    #@24
    if-eqz v2, :cond_2

    #@26
    :goto_0
    iput-boolean v0, p0, Lcom/android/server/wifi/WifiController$ApStaDisabledState;->mHaveDeferredEnable:Z

    #@28
    .line 460
    :cond_1
    :goto_1
    return v1

    #@29
    :cond_2
    move v0, v1

    #@2a
    .line 425
    goto :goto_0

    #@2b
    .line 428
    :cond_3
    iget-object v0, p0, Lcom/android/server/wifi/WifiController$ApStaDisabledState;->this$0:Lcom/android/server/wifi/WifiController;

    #@2d
    invoke-static {v0}, Lcom/android/server/wifi/WifiController;->-get4(Lcom/android/server/wifi/WifiController;)Z

    #@30
    move-result v0

    #@31
    if-nez v0, :cond_4

    #@33
    .line 429
    iget-object v0, p0, Lcom/android/server/wifi/WifiController$ApStaDisabledState;->this$0:Lcom/android/server/wifi/WifiController;

    #@35
    iget-object v2, p0, Lcom/android/server/wifi/WifiController$ApStaDisabledState;->this$0:Lcom/android/server/wifi/WifiController;

    #@37
    invoke-static {v2}, Lcom/android/server/wifi/WifiController;->-get3(Lcom/android/server/wifi/WifiController;)Lcom/android/server/wifi/WifiController$DeviceActiveState;

    #@3a
    move-result-object v2

    #@3b
    invoke-static {v0, v2}, Lcom/android/server/wifi/WifiController;->-wrap9(Lcom/android/server/wifi/WifiController;Lcom/android/internal/util/IState;)V

    #@3e
    goto :goto_1

    #@3f
    .line 431
    :cond_4
    iget-object v0, p0, Lcom/android/server/wifi/WifiController$ApStaDisabledState;->this$0:Lcom/android/server/wifi/WifiController;

    #@41
    invoke-static {v0}, Lcom/android/server/wifi/WifiController;->-wrap1(Lcom/android/server/wifi/WifiController;)V

    #@44
    goto :goto_1

    #@45
    .line 433
    :cond_5
    iget-object v0, p0, Lcom/android/server/wifi/WifiController$ApStaDisabledState;->this$0:Lcom/android/server/wifi/WifiController;

    #@47
    iget-object v0, v0, Lcom/android/server/wifi/WifiController;->mSettingsStore:Lcom/android/server/wifi/WifiSettingsStore;

    #@49
    invoke-virtual {v0}, Lcom/android/server/wifi/WifiSettingsStore;->isScanAlwaysAvailable()Z

    #@4c
    move-result v0

    #@4d
    if-eqz v0, :cond_1

    #@4f
    .line 434
    iget-object v0, p0, Lcom/android/server/wifi/WifiController$ApStaDisabledState;->this$0:Lcom/android/server/wifi/WifiController;

    #@51
    iget-object v2, p0, Lcom/android/server/wifi/WifiController$ApStaDisabledState;->this$0:Lcom/android/server/wifi/WifiController;

    #@53
    invoke-static {v2}, Lcom/android/server/wifi/WifiController;->-get12(Lcom/android/server/wifi/WifiController;)Lcom/android/server/wifi/WifiController$StaDisabledWithScanState;

    #@56
    move-result-object v2

    #@57
    invoke-static {v0, v2}, Lcom/android/server/wifi/WifiController;->-wrap9(Lcom/android/server/wifi/WifiController;Lcom/android/internal/util/IState;)V

    #@5a
    goto :goto_1

    #@5b
    .line 438
    :pswitch_1
    iget-object v0, p0, Lcom/android/server/wifi/WifiController$ApStaDisabledState;->this$0:Lcom/android/server/wifi/WifiController;

    #@5d
    iget-object v0, v0, Lcom/android/server/wifi/WifiController;->mSettingsStore:Lcom/android/server/wifi/WifiSettingsStore;

    #@5f
    invoke-virtual {v0}, Lcom/android/server/wifi/WifiSettingsStore;->isScanAlwaysAvailable()Z

    #@62
    move-result v0

    #@63
    if-eqz v0, :cond_1

    #@65
    .line 439
    iget-object v0, p0, Lcom/android/server/wifi/WifiController$ApStaDisabledState;->this$0:Lcom/android/server/wifi/WifiController;

    #@67
    iget-object v2, p0, Lcom/android/server/wifi/WifiController$ApStaDisabledState;->this$0:Lcom/android/server/wifi/WifiController;

    #@69
    invoke-static {v2}, Lcom/android/server/wifi/WifiController;->-get12(Lcom/android/server/wifi/WifiController;)Lcom/android/server/wifi/WifiController$StaDisabledWithScanState;

    #@6c
    move-result-object v2

    #@6d
    invoke-static {v0, v2}, Lcom/android/server/wifi/WifiController;->-wrap9(Lcom/android/server/wifi/WifiController;Lcom/android/internal/util/IState;)V

    #@70
    goto :goto_1

    #@71
    .line 443
    :pswitch_2
    iget v0, p1, Landroid/os/Message;->arg1:I

    #@73
    if-ne v0, v1, :cond_1

    #@75
    .line 444
    iget-object v0, p0, Lcom/android/server/wifi/WifiController$ApStaDisabledState;->this$0:Lcom/android/server/wifi/WifiController;

    #@77
    iget-object v2, v0, Lcom/android/server/wifi/WifiController;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    #@79
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@7b
    check-cast v0, Landroid/net/wifi/WifiConfiguration;

    #@7d
    invoke-virtual {v2, v0, v1}, Lcom/android/server/wifi/WifiStateMachine;->setHostApRunning(Landroid/net/wifi/WifiConfiguration;Z)V

    #@80
    .line 446
    iget-object v0, p0, Lcom/android/server/wifi/WifiController$ApStaDisabledState;->this$0:Lcom/android/server/wifi/WifiController;

    #@82
    iget-object v2, p0, Lcom/android/server/wifi/WifiController$ApStaDisabledState;->this$0:Lcom/android/server/wifi/WifiController;

    #@84
    invoke-static {v2}, Lcom/android/server/wifi/WifiController;->-get1(Lcom/android/server/wifi/WifiController;)Lcom/android/server/wifi/WifiController$ApEnabledState;

    #@87
    move-result-object v2

    #@88
    invoke-static {v0, v2}, Lcom/android/server/wifi/WifiController;->-wrap9(Lcom/android/server/wifi/WifiController;Lcom/android/internal/util/IState;)V

    #@8b
    goto :goto_1

    #@8c
    .line 450
    :pswitch_3
    iget v0, p1, Landroid/os/Message;->arg1:I

    #@8e
    iget v2, p0, Lcom/android/server/wifi/WifiController$ApStaDisabledState;->mDeferredEnableSerialNumber:I

    #@90
    if-eq v0, v2, :cond_6

    #@92
    .line 451
    iget-object v0, p0, Lcom/android/server/wifi/WifiController$ApStaDisabledState;->this$0:Lcom/android/server/wifi/WifiController;

    #@94
    const-string/jumbo v2, "DEFERRED_TOGGLE ignored due to serial mismatch"

    #@97
    invoke-static {v0, v2}, Lcom/android/server/wifi/WifiController;->-wrap3(Lcom/android/server/wifi/WifiController;Ljava/lang/String;)V

    #@9a
    goto :goto_1

    #@9b
    .line 454
    :cond_6
    iget-object v0, p0, Lcom/android/server/wifi/WifiController$ApStaDisabledState;->this$0:Lcom/android/server/wifi/WifiController;

    #@9d
    const-string/jumbo v2, "DEFERRED_TOGGLE handled"

    #@a0
    invoke-static {v0, v2}, Lcom/android/server/wifi/WifiController;->-wrap3(Lcom/android/server/wifi/WifiController;Ljava/lang/String;)V

    #@a3
    .line 455
    iget-object v2, p0, Lcom/android/server/wifi/WifiController$ApStaDisabledState;->this$0:Lcom/android/server/wifi/WifiController;

    #@a5
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@a7
    check-cast v0, Landroid/os/Message;

    #@a9
    invoke-virtual {v2, v0}, Lcom/android/server/wifi/WifiController;->sendMessage(Landroid/os/Message;)V

    #@ac
    goto/16 :goto_1

    #@ae
    .line 416
    :pswitch_data_0
    .packed-switch 0x26007
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
