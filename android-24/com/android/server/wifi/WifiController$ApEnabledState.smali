.class Lcom/android/server/wifi/WifiController$ApEnabledState;
.super Lcom/android/internal/util/State;
.source "WifiController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifi/WifiController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ApEnabledState"
.end annotation


# instance fields
.field private mPendingState:Lcom/android/internal/util/State;

.field final synthetic this$0:Lcom/android/server/wifi/WifiController;


# direct methods
.method constructor <init>(Lcom/android/server/wifi/WifiController;)V
    .locals 1
    .param p1, "this$0"    # Lcom/android/server/wifi/WifiController;

    #@0
    .prologue
    .line 656
    iput-object p1, p0, Lcom/android/server/wifi/WifiController$ApEnabledState;->this$0:Lcom/android/server/wifi/WifiController;

    #@2
    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    #@5
    .line 663
    const/4 v0, 0x0

    #@6
    iput-object v0, p0, Lcom/android/server/wifi/WifiController$ApEnabledState;->mPendingState:Lcom/android/internal/util/State;

    #@8
    .line 656
    return-void
.end method

.method private getNextWifiState()Lcom/android/internal/util/State;
    .locals 2

    #@0
    .prologue
    .line 670
    iget-object v0, p0, Lcom/android/server/wifi/WifiController$ApEnabledState;->this$0:Lcom/android/server/wifi/WifiController;

    #@2
    iget-object v0, v0, Lcom/android/server/wifi/WifiController;->mSettingsStore:Lcom/android/server/wifi/WifiSettingsStore;

    #@4
    invoke-virtual {v0}, Lcom/android/server/wifi/WifiSettingsStore;->getWifiSavedState()I

    #@7
    move-result v0

    #@8
    const/4 v1, 0x1

    #@9
    if-ne v0, v1, :cond_0

    #@b
    .line 671
    iget-object v0, p0, Lcom/android/server/wifi/WifiController$ApEnabledState;->this$0:Lcom/android/server/wifi/WifiController;

    #@d
    invoke-static {v0}, Lcom/android/server/wifi/WifiController;->-get4(Lcom/android/server/wifi/WifiController;)Lcom/android/server/wifi/WifiController$DeviceActiveState;

    #@10
    move-result-object v0

    #@11
    return-object v0

    #@12
    .line 674
    :cond_0
    iget-object v0, p0, Lcom/android/server/wifi/WifiController$ApEnabledState;->this$0:Lcom/android/server/wifi/WifiController;

    #@14
    iget-object v0, v0, Lcom/android/server/wifi/WifiController;->mSettingsStore:Lcom/android/server/wifi/WifiSettingsStore;

    #@16
    invoke-virtual {v0}, Lcom/android/server/wifi/WifiSettingsStore;->isScanAlwaysAvailable()Z

    #@19
    move-result v0

    #@1a
    if-eqz v0, :cond_1

    #@1c
    .line 675
    iget-object v0, p0, Lcom/android/server/wifi/WifiController$ApEnabledState;->this$0:Lcom/android/server/wifi/WifiController;

    #@1e
    invoke-static {v0}, Lcom/android/server/wifi/WifiController;->-get14(Lcom/android/server/wifi/WifiController;)Lcom/android/server/wifi/WifiController$StaDisabledWithScanState;

    #@21
    move-result-object v0

    #@22
    return-object v0

    #@23
    .line 678
    :cond_1
    iget-object v0, p0, Lcom/android/server/wifi/WifiController$ApEnabledState;->this$0:Lcom/android/server/wifi/WifiController;

    #@25
    invoke-static {v0}, Lcom/android/server/wifi/WifiController;->-get2(Lcom/android/server/wifi/WifiController;)Lcom/android/server/wifi/WifiController$ApStaDisabledState;

    #@28
    move-result-object v0

    #@29
    return-object v0
.end method


# virtual methods
.method public processMessage(Landroid/os/Message;)Z
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    #@0
    .prologue
    const/4 v3, 0x1

    #@1
    const/4 v2, 0x0

    #@2
    const/4 v1, 0x0

    #@3
    .line 683
    iget v0, p1, Landroid/os/Message;->what:I

    #@5
    packed-switch v0, :pswitch_data_0

    #@8
    .line 729
    :pswitch_0
    return v1

    #@9
    .line 685
    :pswitch_1
    iget-object v0, p0, Lcom/android/server/wifi/WifiController$ApEnabledState;->this$0:Lcom/android/server/wifi/WifiController;

    #@b
    iget-object v0, v0, Lcom/android/server/wifi/WifiController;->mSettingsStore:Lcom/android/server/wifi/WifiSettingsStore;

    #@d
    invoke-virtual {v0}, Lcom/android/server/wifi/WifiSettingsStore;->isAirplaneModeOn()Z

    #@10
    move-result v0

    #@11
    if-eqz v0, :cond_0

    #@13
    .line 686
    iget-object v0, p0, Lcom/android/server/wifi/WifiController$ApEnabledState;->this$0:Lcom/android/server/wifi/WifiController;

    #@15
    iget-object v0, v0, Lcom/android/server/wifi/WifiController;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    #@17
    invoke-virtual {v0, v2, v1}, Lcom/android/server/wifi/WifiStateMachine;->setHostApRunning(Landroid/net/wifi/WifiConfiguration;Z)V

    #@1a
    .line 687
    iget-object v0, p0, Lcom/android/server/wifi/WifiController$ApEnabledState;->this$0:Lcom/android/server/wifi/WifiController;

    #@1c
    invoke-static {v0}, Lcom/android/server/wifi/WifiController;->-get2(Lcom/android/server/wifi/WifiController;)Lcom/android/server/wifi/WifiController$ApStaDisabledState;

    #@1f
    move-result-object v0

    #@20
    iput-object v0, p0, Lcom/android/server/wifi/WifiController$ApEnabledState;->mPendingState:Lcom/android/internal/util/State;

    #@22
    .line 731
    :cond_0
    :goto_0
    return v3

    #@23
    .line 691
    :pswitch_2
    iget-object v0, p0, Lcom/android/server/wifi/WifiController$ApEnabledState;->this$0:Lcom/android/server/wifi/WifiController;

    #@25
    iget-object v0, v0, Lcom/android/server/wifi/WifiController;->mSettingsStore:Lcom/android/server/wifi/WifiSettingsStore;

    #@27
    invoke-virtual {v0}, Lcom/android/server/wifi/WifiSettingsStore;->isWifiToggleEnabled()Z

    #@2a
    move-result v0

    #@2b
    if-eqz v0, :cond_0

    #@2d
    .line 692
    iget-object v0, p0, Lcom/android/server/wifi/WifiController$ApEnabledState;->this$0:Lcom/android/server/wifi/WifiController;

    #@2f
    iget-object v0, v0, Lcom/android/server/wifi/WifiController;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    #@31
    invoke-virtual {v0, v2, v1}, Lcom/android/server/wifi/WifiStateMachine;->setHostApRunning(Landroid/net/wifi/WifiConfiguration;Z)V

    #@34
    .line 693
    iget-object v0, p0, Lcom/android/server/wifi/WifiController$ApEnabledState;->this$0:Lcom/android/server/wifi/WifiController;

    #@36
    invoke-static {v0}, Lcom/android/server/wifi/WifiController;->-get15(Lcom/android/server/wifi/WifiController;)Lcom/android/server/wifi/WifiController$StaEnabledState;

    #@39
    move-result-object v0

    #@3a
    iput-object v0, p0, Lcom/android/server/wifi/WifiController$ApEnabledState;->mPendingState:Lcom/android/internal/util/State;

    #@3c
    goto :goto_0

    #@3d
    .line 697
    :pswitch_3
    iget v0, p1, Landroid/os/Message;->arg1:I

    #@3f
    if-nez v0, :cond_0

    #@41
    .line 698
    iget-object v0, p0, Lcom/android/server/wifi/WifiController$ApEnabledState;->this$0:Lcom/android/server/wifi/WifiController;

    #@43
    iget-object v0, v0, Lcom/android/server/wifi/WifiController;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    #@45
    invoke-virtual {v0, v2, v1}, Lcom/android/server/wifi/WifiStateMachine;->setHostApRunning(Landroid/net/wifi/WifiConfiguration;Z)V

    #@48
    .line 699
    invoke-direct {p0}, Lcom/android/server/wifi/WifiController$ApEnabledState;->getNextWifiState()Lcom/android/internal/util/State;

    #@4b
    move-result-object v0

    #@4c
    iput-object v0, p0, Lcom/android/server/wifi/WifiController$ApEnabledState;->mPendingState:Lcom/android/internal/util/State;

    #@4e
    goto :goto_0

    #@4f
    .line 703
    :pswitch_4
    iget-object v0, p0, Lcom/android/server/wifi/WifiController$ApEnabledState;->mPendingState:Lcom/android/internal/util/State;

    #@51
    if-nez v0, :cond_1

    #@53
    .line 708
    invoke-direct {p0}, Lcom/android/server/wifi/WifiController$ApEnabledState;->getNextWifiState()Lcom/android/internal/util/State;

    #@56
    move-result-object v0

    #@57
    iput-object v0, p0, Lcom/android/server/wifi/WifiController$ApEnabledState;->mPendingState:Lcom/android/internal/util/State;

    #@59
    .line 710
    :cond_1
    iget-object v0, p0, Lcom/android/server/wifi/WifiController$ApEnabledState;->mPendingState:Lcom/android/internal/util/State;

    #@5b
    iget-object v1, p0, Lcom/android/server/wifi/WifiController$ApEnabledState;->this$0:Lcom/android/server/wifi/WifiController;

    #@5d
    invoke-static {v1}, Lcom/android/server/wifi/WifiController;->-get4(Lcom/android/server/wifi/WifiController;)Lcom/android/server/wifi/WifiController$DeviceActiveState;

    #@60
    move-result-object v1

    #@61
    if-ne v0, v1, :cond_2

    #@63
    iget-object v0, p0, Lcom/android/server/wifi/WifiController$ApEnabledState;->this$0:Lcom/android/server/wifi/WifiController;

    #@65
    invoke-static {v0}, Lcom/android/server/wifi/WifiController;->-get5(Lcom/android/server/wifi/WifiController;)Z

    #@68
    move-result v0

    #@69
    if-eqz v0, :cond_2

    #@6b
    .line 711
    iget-object v0, p0, Lcom/android/server/wifi/WifiController$ApEnabledState;->this$0:Lcom/android/server/wifi/WifiController;

    #@6d
    invoke-static {v0}, Lcom/android/server/wifi/WifiController;->-wrap1(Lcom/android/server/wifi/WifiController;)V

    #@70
    goto :goto_0

    #@71
    .line 715
    :cond_2
    iget-object v0, p0, Lcom/android/server/wifi/WifiController$ApEnabledState;->this$0:Lcom/android/server/wifi/WifiController;

    #@73
    iget-object v1, p0, Lcom/android/server/wifi/WifiController$ApEnabledState;->mPendingState:Lcom/android/internal/util/State;

    #@75
    invoke-static {v0, v1}, Lcom/android/server/wifi/WifiController;->-wrap9(Lcom/android/server/wifi/WifiController;Lcom/android/internal/util/IState;)V

    #@78
    goto :goto_0

    #@79
    .line 720
    :pswitch_5
    iget v0, p1, Landroid/os/Message;->arg1:I

    #@7b
    if-ne v0, v3, :cond_0

    #@7d
    .line 721
    iget-object v0, p0, Lcom/android/server/wifi/WifiController$ApEnabledState;->this$0:Lcom/android/server/wifi/WifiController;

    #@7f
    iget-object v0, v0, Lcom/android/server/wifi/WifiController;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    #@81
    invoke-virtual {v0, v2, v1}, Lcom/android/server/wifi/WifiStateMachine;->setHostApRunning(Landroid/net/wifi/WifiConfiguration;Z)V

    #@84
    .line 722
    iget-object v0, p0, Lcom/android/server/wifi/WifiController$ApEnabledState;->this$0:Lcom/android/server/wifi/WifiController;

    #@86
    invoke-static {v0}, Lcom/android/server/wifi/WifiController;->-get6(Lcom/android/server/wifi/WifiController;)Lcom/android/server/wifi/WifiController$EcmState;

    #@89
    move-result-object v0

    #@8a
    iput-object v0, p0, Lcom/android/server/wifi/WifiController$ApEnabledState;->mPendingState:Lcom/android/internal/util/State;

    #@8c
    goto :goto_0

    #@8d
    .line 726
    :pswitch_6
    iget-object v0, p0, Lcom/android/server/wifi/WifiController$ApEnabledState;->this$0:Lcom/android/server/wifi/WifiController;

    #@8f
    invoke-direct {p0}, Lcom/android/server/wifi/WifiController$ApEnabledState;->getNextWifiState()Lcom/android/internal/util/State;

    #@92
    move-result-object v1

    #@93
    invoke-static {v0, v1}, Lcom/android/server/wifi/WifiController;->-wrap9(Lcom/android/server/wifi/WifiController;Lcom/android/internal/util/IState;)V

    #@96
    goto :goto_0

    #@97
    .line 683
    nop

    #@98
    :pswitch_data_0
    .packed-switch 0x26001
        :pswitch_5
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_6
        :pswitch_5
        :pswitch_4
    .end packed-switch
.end method
