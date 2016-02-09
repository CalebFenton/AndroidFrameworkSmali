.class Lcom/android/server/wifi/WifiController$DeviceActiveState;
.super Lcom/android/internal/util/State;
.source "WifiController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifi/WifiController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "DeviceActiveState"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/wifi/WifiController;


# direct methods
.method constructor <init>(Lcom/android/server/wifi/WifiController;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/wifi/WifiController;

    #@0
    .prologue
    .line 664
    iput-object p1, p0, Lcom/android/server/wifi/WifiController$DeviceActiveState;->this$0:Lcom/android/server/wifi/WifiController;

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
    const/4 v1, 0x1

    #@1
    .line 667
    iget-object v0, p0, Lcom/android/server/wifi/WifiController$DeviceActiveState;->this$0:Lcom/android/server/wifi/WifiController;

    #@3
    iget-object v0, v0, Lcom/android/server/wifi/WifiController;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    #@5
    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiStateMachine;->setOperationalMode(I)V

    #@8
    .line 668
    iget-object v0, p0, Lcom/android/server/wifi/WifiController$DeviceActiveState;->this$0:Lcom/android/server/wifi/WifiController;

    #@a
    iget-object v0, v0, Lcom/android/server/wifi/WifiController;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    #@c
    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiStateMachine;->setDriverStart(Z)V

    #@f
    .line 669
    iget-object v0, p0, Lcom/android/server/wifi/WifiController$DeviceActiveState;->this$0:Lcom/android/server/wifi/WifiController;

    #@11
    iget-object v0, v0, Lcom/android/server/wifi/WifiController;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    #@13
    const/4 v1, 0x0

    #@14
    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiStateMachine;->setHighPerfModeEnabled(Z)V

    #@17
    .line 666
    return-void
.end method

.method public processMessage(Landroid/os/Message;)Z
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    #@0
    .prologue
    const/4 v2, 0x1

    #@1
    .line 674
    iget v0, p1, Landroid/os/Message;->what:I

    #@3
    const v1, 0x26005

    #@6
    if-ne v0, v1, :cond_1

    #@8
    .line 675
    iget-object v0, p0, Lcom/android/server/wifi/WifiController$DeviceActiveState;->this$0:Lcom/android/server/wifi/WifiController;

    #@a
    invoke-static {v0}, Lcom/android/server/wifi/WifiController;->-wrap1(Lcom/android/server/wifi/WifiController;)V

    #@d
    .line 687
    :cond_0
    const/4 v0, 0x0

    #@e
    return v0

    #@f
    .line 677
    :cond_1
    iget v0, p1, Landroid/os/Message;->what:I

    #@11
    const v1, 0x2600c

    #@14
    if-ne v0, v1, :cond_0

    #@16
    .line 681
    iget-object v0, p0, Lcom/android/server/wifi/WifiController$DeviceActiveState;->this$0:Lcom/android/server/wifi/WifiController;

    #@18
    invoke-static {v0}, Lcom/android/server/wifi/WifiController;->-get6(Lcom/android/server/wifi/WifiController;)Z

    #@1b
    move-result v0

    #@1c
    if-nez v0, :cond_2

    #@1e
    .line 682
    iget-object v0, p0, Lcom/android/server/wifi/WifiController$DeviceActiveState;->this$0:Lcom/android/server/wifi/WifiController;

    #@20
    iget-object v0, v0, Lcom/android/server/wifi/WifiController;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    #@22
    invoke-virtual {v0}, Lcom/android/server/wifi/WifiStateMachine;->reloadTlsNetworksAndReconnect()V

    #@25
    .line 684
    :cond_2
    iget-object v0, p0, Lcom/android/server/wifi/WifiController$DeviceActiveState;->this$0:Lcom/android/server/wifi/WifiController;

    #@27
    invoke-static {v0, v2}, Lcom/android/server/wifi/WifiController;->-set1(Lcom/android/server/wifi/WifiController;Z)Z

    #@2a
    .line 685
    return v2
.end method
