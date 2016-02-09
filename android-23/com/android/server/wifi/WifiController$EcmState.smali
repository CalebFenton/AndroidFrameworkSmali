.class Lcom/android/server/wifi/WifiController$EcmState;
.super Lcom/android/internal/util/State;
.source "WifiController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifi/WifiController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "EcmState"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/wifi/WifiController;


# direct methods
.method constructor <init>(Lcom/android/server/wifi/WifiController;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/wifi/WifiController;

    #@0
    .prologue
    .line 636
    iput-object p1, p0, Lcom/android/server/wifi/WifiController$EcmState;->this$0:Lcom/android/server/wifi/WifiController;

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
    .line 639
    iget-object v0, p0, Lcom/android/server/wifi/WifiController$EcmState;->this$0:Lcom/android/server/wifi/WifiController;

    #@2
    iget-object v0, v0, Lcom/android/server/wifi/WifiController;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    #@4
    const/4 v1, 0x0

    #@5
    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiStateMachine;->setSupplicantRunning(Z)V

    #@8
    .line 638
    return-void
.end method

.method public processMessage(Landroid/os/Message;)Z
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 644
    iget v0, p1, Landroid/os/Message;->what:I

    #@3
    const v1, 0x26001

    #@6
    if-ne v0, v1, :cond_3

    #@8
    iget v0, p1, Landroid/os/Message;->arg1:I

    #@a
    if-nez v0, :cond_3

    #@c
    .line 645
    iget-object v0, p0, Lcom/android/server/wifi/WifiController$EcmState;->this$0:Lcom/android/server/wifi/WifiController;

    #@e
    iget-object v0, v0, Lcom/android/server/wifi/WifiController;->mSettingsStore:Lcom/android/server/wifi/WifiSettingsStore;

    #@10
    invoke-virtual {v0}, Lcom/android/server/wifi/WifiSettingsStore;->isWifiToggleEnabled()Z

    #@13
    move-result v0

    #@14
    if-eqz v0, :cond_1

    #@16
    .line 646
    iget-object v0, p0, Lcom/android/server/wifi/WifiController$EcmState;->this$0:Lcom/android/server/wifi/WifiController;

    #@18
    invoke-static {v0}, Lcom/android/server/wifi/WifiController;->-get4(Lcom/android/server/wifi/WifiController;)Z

    #@1b
    move-result v0

    #@1c
    if-nez v0, :cond_0

    #@1e
    .line 647
    iget-object v0, p0, Lcom/android/server/wifi/WifiController$EcmState;->this$0:Lcom/android/server/wifi/WifiController;

    #@20
    iget-object v1, p0, Lcom/android/server/wifi/WifiController$EcmState;->this$0:Lcom/android/server/wifi/WifiController;

    #@22
    invoke-static {v1}, Lcom/android/server/wifi/WifiController;->-get3(Lcom/android/server/wifi/WifiController;)Lcom/android/server/wifi/WifiController$DeviceActiveState;

    #@25
    move-result-object v1

    #@26
    invoke-static {v0, v1}, Lcom/android/server/wifi/WifiController;->-wrap9(Lcom/android/server/wifi/WifiController;Lcom/android/internal/util/IState;)V

    #@29
    .line 656
    :goto_0
    const/4 v0, 0x1

    #@2a
    return v0

    #@2b
    .line 649
    :cond_0
    iget-object v0, p0, Lcom/android/server/wifi/WifiController$EcmState;->this$0:Lcom/android/server/wifi/WifiController;

    #@2d
    invoke-static {v0}, Lcom/android/server/wifi/WifiController;->-wrap1(Lcom/android/server/wifi/WifiController;)V

    #@30
    goto :goto_0

    #@31
    .line 651
    :cond_1
    iget-object v0, p0, Lcom/android/server/wifi/WifiController$EcmState;->this$0:Lcom/android/server/wifi/WifiController;

    #@33
    iget-object v0, v0, Lcom/android/server/wifi/WifiController;->mSettingsStore:Lcom/android/server/wifi/WifiSettingsStore;

    #@35
    invoke-virtual {v0}, Lcom/android/server/wifi/WifiSettingsStore;->isScanAlwaysAvailable()Z

    #@38
    move-result v0

    #@39
    if-eqz v0, :cond_2

    #@3b
    .line 652
    iget-object v0, p0, Lcom/android/server/wifi/WifiController$EcmState;->this$0:Lcom/android/server/wifi/WifiController;

    #@3d
    iget-object v1, p0, Lcom/android/server/wifi/WifiController$EcmState;->this$0:Lcom/android/server/wifi/WifiController;

    #@3f
    invoke-static {v1}, Lcom/android/server/wifi/WifiController;->-get12(Lcom/android/server/wifi/WifiController;)Lcom/android/server/wifi/WifiController$StaDisabledWithScanState;

    #@42
    move-result-object v1

    #@43
    invoke-static {v0, v1}, Lcom/android/server/wifi/WifiController;->-wrap9(Lcom/android/server/wifi/WifiController;Lcom/android/internal/util/IState;)V

    #@46
    goto :goto_0

    #@47
    .line 654
    :cond_2
    iget-object v0, p0, Lcom/android/server/wifi/WifiController$EcmState;->this$0:Lcom/android/server/wifi/WifiController;

    #@49
    iget-object v1, p0, Lcom/android/server/wifi/WifiController$EcmState;->this$0:Lcom/android/server/wifi/WifiController;

    #@4b
    invoke-static {v1}, Lcom/android/server/wifi/WifiController;->-get2(Lcom/android/server/wifi/WifiController;)Lcom/android/server/wifi/WifiController$ApStaDisabledState;

    #@4e
    move-result-object v1

    #@4f
    invoke-static {v0, v1}, Lcom/android/server/wifi/WifiController;->-wrap9(Lcom/android/server/wifi/WifiController;Lcom/android/internal/util/IState;)V

    #@52
    goto :goto_0

    #@53
    .line 658
    :cond_3
    return v2
.end method
