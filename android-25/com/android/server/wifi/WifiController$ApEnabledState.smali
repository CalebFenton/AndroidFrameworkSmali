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
    .line 669
    iput-object p1, p0, Lcom/android/server/wifi/WifiController$ApEnabledState;->this$0:Lcom/android/server/wifi/WifiController;

    #@2
    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    #@5
    .line 676
    const/4 v0, 0x0

    #@6
    iput-object v0, p0, Lcom/android/server/wifi/WifiController$ApEnabledState;->mPendingState:Lcom/android/internal/util/State;

    #@8
    .line 669
    return-void
.end method

.method private getNextWifiState()Lcom/android/internal/util/State;
    .locals 2

    #@0
    .prologue
    .line 683
    iget-object v0, p0, Lcom/android/server/wifi/WifiController$ApEnabledState;->this$0:Lcom/android/server/wifi/WifiController;

    #@2
    invoke-static {v0}, Lcom/android/server/wifi/WifiController;->-get14(Lcom/android/server/wifi/WifiController;)Lcom/android/server/wifi/WifiSettingsStore;

    #@5
    move-result-object v0

    #@6
    invoke-virtual {v0}, Lcom/android/server/wifi/WifiSettingsStore;->getWifiSavedState()I

    #@9
    move-result v0

    #@a
    const/4 v1, 0x1

    #@b
    if-ne v0, v1, :cond_0

    #@d
    .line 684
    iget-object v0, p0, Lcom/android/server/wifi/WifiController$ApEnabledState;->this$0:Lcom/android/server/wifi/WifiController;

    #@f
    invoke-static {v0}, Lcom/android/server/wifi/WifiController;->-get4(Lcom/android/server/wifi/WifiController;)Lcom/android/server/wifi/WifiController$DeviceActiveState;

    #@12
    move-result-object v0

    #@13
    return-object v0

    #@14
    .line 687
    :cond_0
    iget-object v0, p0, Lcom/android/server/wifi/WifiController$ApEnabledState;->this$0:Lcom/android/server/wifi/WifiController;

    #@16
    invoke-static {v0}, Lcom/android/server/wifi/WifiController;->-get14(Lcom/android/server/wifi/WifiController;)Lcom/android/server/wifi/WifiSettingsStore;

    #@19
    move-result-object v0

    #@1a
    invoke-virtual {v0}, Lcom/android/server/wifi/WifiSettingsStore;->isScanAlwaysAvailable()Z

    #@1d
    move-result v0

    #@1e
    if-eqz v0, :cond_1

    #@20
    .line 688
    iget-object v0, p0, Lcom/android/server/wifi/WifiController$ApEnabledState;->this$0:Lcom/android/server/wifi/WifiController;

    #@22
    invoke-static {v0}, Lcom/android/server/wifi/WifiController;->-get15(Lcom/android/server/wifi/WifiController;)Lcom/android/server/wifi/WifiController$StaDisabledWithScanState;

    #@25
    move-result-object v0

    #@26
    return-object v0

    #@27
    .line 691
    :cond_1
    iget-object v0, p0, Lcom/android/server/wifi/WifiController$ApEnabledState;->this$0:Lcom/android/server/wifi/WifiController;

    #@29
    invoke-static {v0}, Lcom/android/server/wifi/WifiController;->-get2(Lcom/android/server/wifi/WifiController;)Lcom/android/server/wifi/WifiController$ApStaDisabledState;

    #@2c
    move-result-object v0

    #@2d
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
    .line 696
    iget v0, p1, Landroid/os/Message;->what:I

    #@5
    packed-switch v0, :pswitch_data_0

    #@8
    .line 742
    :pswitch_0
    return v1

    #@9
    .line 698
    :pswitch_1
    iget-object v0, p0, Lcom/android/server/wifi/WifiController$ApEnabledState;->this$0:Lcom/android/server/wifi/WifiController;

    #@b
    invoke-static {v0}, Lcom/android/server/wifi/WifiController;->-get14(Lcom/android/server/wifi/WifiController;)Lcom/android/server/wifi/WifiSettingsStore;

    #@e
    move-result-object v0

    #@f
    invoke-virtual {v0}, Lcom/android/server/wifi/WifiSettingsStore;->isAirplaneModeOn()Z

    #@12
    move-result v0

    #@13
    if-eqz v0, :cond_0

    #@15
    .line 699
    iget-object v0, p0, Lcom/android/server/wifi/WifiController$ApEnabledState;->this$0:Lcom/android/server/wifi/WifiController;

    #@17
    invoke-static {v0}, Lcom/android/server/wifi/WifiController;->-get16(Lcom/android/server/wifi/WifiController;)Lcom/android/server/wifi/WifiStateMachine;

    #@1a
    move-result-object v0

    #@1b
    invoke-virtual {v0, v2, v1}, Lcom/android/server/wifi/WifiStateMachine;->setHostApRunning(Landroid/net/wifi/WifiConfiguration;Z)V

    #@1e
    .line 700
    iget-object v0, p0, Lcom/android/server/wifi/WifiController$ApEnabledState;->this$0:Lcom/android/server/wifi/WifiController;

    #@20
    invoke-static {v0}, Lcom/android/server/wifi/WifiController;->-get2(Lcom/android/server/wifi/WifiController;)Lcom/android/server/wifi/WifiController$ApStaDisabledState;

    #@23
    move-result-object v0

    #@24
    iput-object v0, p0, Lcom/android/server/wifi/WifiController$ApEnabledState;->mPendingState:Lcom/android/internal/util/State;

    #@26
    .line 744
    :cond_0
    :goto_0
    return v3

    #@27
    .line 704
    :pswitch_2
    iget-object v0, p0, Lcom/android/server/wifi/WifiController$ApEnabledState;->this$0:Lcom/android/server/wifi/WifiController;

    #@29
    invoke-static {v0}, Lcom/android/server/wifi/WifiController;->-get14(Lcom/android/server/wifi/WifiController;)Lcom/android/server/wifi/WifiSettingsStore;

    #@2c
    move-result-object v0

    #@2d
    invoke-virtual {v0}, Lcom/android/server/wifi/WifiSettingsStore;->isWifiToggleEnabled()Z

    #@30
    move-result v0

    #@31
    if-eqz v0, :cond_0

    #@33
    .line 705
    iget-object v0, p0, Lcom/android/server/wifi/WifiController$ApEnabledState;->this$0:Lcom/android/server/wifi/WifiController;

    #@35
    invoke-static {v0}, Lcom/android/server/wifi/WifiController;->-get16(Lcom/android/server/wifi/WifiController;)Lcom/android/server/wifi/WifiStateMachine;

    #@38
    move-result-object v0

    #@39
    invoke-virtual {v0, v2, v1}, Lcom/android/server/wifi/WifiStateMachine;->setHostApRunning(Landroid/net/wifi/WifiConfiguration;Z)V

    #@3c
    .line 706
    iget-object v0, p0, Lcom/android/server/wifi/WifiController$ApEnabledState;->this$0:Lcom/android/server/wifi/WifiController;

    #@3e
    invoke-static {v0}, Lcom/android/server/wifi/WifiController;->-get4(Lcom/android/server/wifi/WifiController;)Lcom/android/server/wifi/WifiController$DeviceActiveState;

    #@41
    move-result-object v0

    #@42
    iput-object v0, p0, Lcom/android/server/wifi/WifiController$ApEnabledState;->mPendingState:Lcom/android/internal/util/State;

    #@44
    goto :goto_0

    #@45
    .line 710
    :pswitch_3
    iget v0, p1, Landroid/os/Message;->arg1:I

    #@47
    if-nez v0, :cond_0

    #@49
    .line 711
    iget-object v0, p0, Lcom/android/server/wifi/WifiController$ApEnabledState;->this$0:Lcom/android/server/wifi/WifiController;

    #@4b
    invoke-static {v0}, Lcom/android/server/wifi/WifiController;->-get16(Lcom/android/server/wifi/WifiController;)Lcom/android/server/wifi/WifiStateMachine;

    #@4e
    move-result-object v0

    #@4f
    invoke-virtual {v0, v2, v1}, Lcom/android/server/wifi/WifiStateMachine;->setHostApRunning(Landroid/net/wifi/WifiConfiguration;Z)V

    #@52
    .line 712
    invoke-direct {p0}, Lcom/android/server/wifi/WifiController$ApEnabledState;->getNextWifiState()Lcom/android/internal/util/State;

    #@55
    move-result-object v0

    #@56
    iput-object v0, p0, Lcom/android/server/wifi/WifiController$ApEnabledState;->mPendingState:Lcom/android/internal/util/State;

    #@58
    goto :goto_0

    #@59
    .line 716
    :pswitch_4
    iget-object v0, p0, Lcom/android/server/wifi/WifiController$ApEnabledState;->mPendingState:Lcom/android/internal/util/State;

    #@5b
    if-nez v0, :cond_1

    #@5d
    .line 721
    invoke-direct {p0}, Lcom/android/server/wifi/WifiController$ApEnabledState;->getNextWifiState()Lcom/android/internal/util/State;

    #@60
    move-result-object v0

    #@61
    iput-object v0, p0, Lcom/android/server/wifi/WifiController$ApEnabledState;->mPendingState:Lcom/android/internal/util/State;

    #@63
    .line 723
    :cond_1
    iget-object v0, p0, Lcom/android/server/wifi/WifiController$ApEnabledState;->mPendingState:Lcom/android/internal/util/State;

    #@65
    iget-object v1, p0, Lcom/android/server/wifi/WifiController$ApEnabledState;->this$0:Lcom/android/server/wifi/WifiController;

    #@67
    invoke-static {v1}, Lcom/android/server/wifi/WifiController;->-get4(Lcom/android/server/wifi/WifiController;)Lcom/android/server/wifi/WifiController$DeviceActiveState;

    #@6a
    move-result-object v1

    #@6b
    if-ne v0, v1, :cond_2

    #@6d
    iget-object v0, p0, Lcom/android/server/wifi/WifiController$ApEnabledState;->this$0:Lcom/android/server/wifi/WifiController;

    #@6f
    invoke-static {v0}, Lcom/android/server/wifi/WifiController;->-get5(Lcom/android/server/wifi/WifiController;)Z

    #@72
    move-result v0

    #@73
    if-eqz v0, :cond_2

    #@75
    .line 724
    iget-object v0, p0, Lcom/android/server/wifi/WifiController$ApEnabledState;->this$0:Lcom/android/server/wifi/WifiController;

    #@77
    invoke-static {v0}, Lcom/android/server/wifi/WifiController;->-wrap1(Lcom/android/server/wifi/WifiController;)V

    #@7a
    goto :goto_0

    #@7b
    .line 728
    :cond_2
    iget-object v0, p0, Lcom/android/server/wifi/WifiController$ApEnabledState;->this$0:Lcom/android/server/wifi/WifiController;

    #@7d
    iget-object v1, p0, Lcom/android/server/wifi/WifiController$ApEnabledState;->mPendingState:Lcom/android/internal/util/State;

    #@7f
    invoke-static {v0, v1}, Lcom/android/server/wifi/WifiController;->-wrap9(Lcom/android/server/wifi/WifiController;Lcom/android/internal/util/IState;)V

    #@82
    goto :goto_0

    #@83
    .line 733
    :pswitch_5
    iget v0, p1, Landroid/os/Message;->arg1:I

    #@85
    if-ne v0, v3, :cond_0

    #@87
    .line 734
    iget-object v0, p0, Lcom/android/server/wifi/WifiController$ApEnabledState;->this$0:Lcom/android/server/wifi/WifiController;

    #@89
    invoke-static {v0}, Lcom/android/server/wifi/WifiController;->-get16(Lcom/android/server/wifi/WifiController;)Lcom/android/server/wifi/WifiStateMachine;

    #@8c
    move-result-object v0

    #@8d
    invoke-virtual {v0, v2, v1}, Lcom/android/server/wifi/WifiStateMachine;->setHostApRunning(Landroid/net/wifi/WifiConfiguration;Z)V

    #@90
    .line 735
    iget-object v0, p0, Lcom/android/server/wifi/WifiController$ApEnabledState;->this$0:Lcom/android/server/wifi/WifiController;

    #@92
    invoke-static {v0}, Lcom/android/server/wifi/WifiController;->-get6(Lcom/android/server/wifi/WifiController;)Lcom/android/server/wifi/WifiController$EcmState;

    #@95
    move-result-object v0

    #@96
    iput-object v0, p0, Lcom/android/server/wifi/WifiController$ApEnabledState;->mPendingState:Lcom/android/internal/util/State;

    #@98
    goto :goto_0

    #@99
    .line 739
    :pswitch_6
    iget-object v0, p0, Lcom/android/server/wifi/WifiController$ApEnabledState;->this$0:Lcom/android/server/wifi/WifiController;

    #@9b
    invoke-direct {p0}, Lcom/android/server/wifi/WifiController$ApEnabledState;->getNextWifiState()Lcom/android/internal/util/State;

    #@9e
    move-result-object v1

    #@9f
    invoke-static {v0, v1}, Lcom/android/server/wifi/WifiController;->-wrap9(Lcom/android/server/wifi/WifiController;Lcom/android/internal/util/IState;)V

    #@a2
    goto :goto_0

    #@a3
    .line 696
    nop

    #@a4
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
