.class Lcom/android/server/wifi/WifiController$StaEnabledState;
.super Lcom/android/internal/util/State;
.source "WifiController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifi/WifiController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "StaEnabledState"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/wifi/WifiController;


# direct methods
.method constructor <init>(Lcom/android/server/wifi/WifiController;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/wifi/WifiController;

    #@0
    .prologue
    .line 482
    iput-object p1, p0, Lcom/android/server/wifi/WifiController$StaEnabledState;->this$0:Lcom/android/server/wifi/WifiController;

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
    .line 485
    iget-object v0, p0, Lcom/android/server/wifi/WifiController$StaEnabledState;->this$0:Lcom/android/server/wifi/WifiController;

    #@2
    iget-object v0, v0, Lcom/android/server/wifi/WifiController;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    #@4
    const/4 v1, 0x1

    #@5
    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiStateMachine;->setSupplicantRunning(Z)V

    #@8
    .line 484
    return-void
.end method

.method public processMessage(Landroid/os/Message;)Z
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    #@0
    .prologue
    const/4 v2, 0x1

    #@1
    .line 489
    iget v0, p1, Landroid/os/Message;->what:I

    #@3
    sparse-switch v0, :sswitch_data_0

    #@6
    .line 513
    :cond_0
    const/4 v0, 0x0

    #@7
    return v0

    #@8
    .line 491
    :sswitch_0
    iget-object v0, p0, Lcom/android/server/wifi/WifiController$StaEnabledState;->this$0:Lcom/android/server/wifi/WifiController;

    #@a
    iget-object v0, v0, Lcom/android/server/wifi/WifiController;->mSettingsStore:Lcom/android/server/wifi/WifiSettingsStore;

    #@c
    invoke-virtual {v0}, Lcom/android/server/wifi/WifiSettingsStore;->isWifiToggleEnabled()Z

    #@f
    move-result v0

    #@10
    if-nez v0, :cond_1

    #@12
    .line 492
    iget-object v0, p0, Lcom/android/server/wifi/WifiController$StaEnabledState;->this$0:Lcom/android/server/wifi/WifiController;

    #@14
    iget-object v0, v0, Lcom/android/server/wifi/WifiController;->mSettingsStore:Lcom/android/server/wifi/WifiSettingsStore;

    #@16
    invoke-virtual {v0}, Lcom/android/server/wifi/WifiSettingsStore;->isScanAlwaysAvailable()Z

    #@19
    move-result v0

    #@1a
    if-eqz v0, :cond_2

    #@1c
    .line 493
    iget-object v0, p0, Lcom/android/server/wifi/WifiController$StaEnabledState;->this$0:Lcom/android/server/wifi/WifiController;

    #@1e
    iget-object v1, p0, Lcom/android/server/wifi/WifiController$StaEnabledState;->this$0:Lcom/android/server/wifi/WifiController;

    #@20
    invoke-static {v1}, Lcom/android/server/wifi/WifiController;->-get12(Lcom/android/server/wifi/WifiController;)Lcom/android/server/wifi/WifiController$StaDisabledWithScanState;

    #@23
    move-result-object v1

    #@24
    invoke-static {v0, v1}, Lcom/android/server/wifi/WifiController;->-wrap9(Lcom/android/server/wifi/WifiController;Lcom/android/internal/util/IState;)V

    #@27
    .line 516
    :cond_1
    :goto_0
    return v2

    #@28
    .line 495
    :cond_2
    iget-object v0, p0, Lcom/android/server/wifi/WifiController$StaEnabledState;->this$0:Lcom/android/server/wifi/WifiController;

    #@2a
    iget-object v1, p0, Lcom/android/server/wifi/WifiController$StaEnabledState;->this$0:Lcom/android/server/wifi/WifiController;

    #@2c
    invoke-static {v1}, Lcom/android/server/wifi/WifiController;->-get2(Lcom/android/server/wifi/WifiController;)Lcom/android/server/wifi/WifiController$ApStaDisabledState;

    #@2f
    move-result-object v1

    #@30
    invoke-static {v0, v1}, Lcom/android/server/wifi/WifiController;->-wrap9(Lcom/android/server/wifi/WifiController;Lcom/android/internal/util/IState;)V

    #@33
    goto :goto_0

    #@34
    .line 503
    :sswitch_1
    iget-object v0, p0, Lcom/android/server/wifi/WifiController$StaEnabledState;->this$0:Lcom/android/server/wifi/WifiController;

    #@36
    iget-object v0, v0, Lcom/android/server/wifi/WifiController;->mSettingsStore:Lcom/android/server/wifi/WifiSettingsStore;

    #@38
    invoke-virtual {v0}, Lcom/android/server/wifi/WifiSettingsStore;->isWifiToggleEnabled()Z

    #@3b
    move-result v0

    #@3c
    if-nez v0, :cond_1

    #@3e
    .line 504
    iget-object v0, p0, Lcom/android/server/wifi/WifiController$StaEnabledState;->this$0:Lcom/android/server/wifi/WifiController;

    #@40
    iget-object v1, p0, Lcom/android/server/wifi/WifiController$StaEnabledState;->this$0:Lcom/android/server/wifi/WifiController;

    #@42
    invoke-static {v1}, Lcom/android/server/wifi/WifiController;->-get2(Lcom/android/server/wifi/WifiController;)Lcom/android/server/wifi/WifiController$ApStaDisabledState;

    #@45
    move-result-object v1

    #@46
    invoke-static {v0, v1}, Lcom/android/server/wifi/WifiController;->-wrap9(Lcom/android/server/wifi/WifiController;Lcom/android/internal/util/IState;)V

    #@49
    goto :goto_0

    #@4a
    .line 508
    :sswitch_2
    iget v0, p1, Landroid/os/Message;->arg1:I

    #@4c
    if-ne v0, v2, :cond_0

    #@4e
    .line 509
    iget-object v0, p0, Lcom/android/server/wifi/WifiController$StaEnabledState;->this$0:Lcom/android/server/wifi/WifiController;

    #@50
    iget-object v1, p0, Lcom/android/server/wifi/WifiController$StaEnabledState;->this$0:Lcom/android/server/wifi/WifiController;

    #@52
    invoke-static {v1}, Lcom/android/server/wifi/WifiController;->-get5(Lcom/android/server/wifi/WifiController;)Lcom/android/server/wifi/WifiController$EcmState;

    #@55
    move-result-object v1

    #@56
    invoke-static {v0, v1}, Lcom/android/server/wifi/WifiController;->-wrap9(Lcom/android/server/wifi/WifiController;Lcom/android/internal/util/IState;)V

    #@59
    goto :goto_0

    #@5a
    .line 489
    :sswitch_data_0
    .sparse-switch
        0x26001 -> :sswitch_2
        0x26008 -> :sswitch_0
        0x26009 -> :sswitch_1
    .end sparse-switch
.end method
