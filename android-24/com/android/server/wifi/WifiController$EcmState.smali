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
.field private mEcmEntryCount:I

.field final synthetic this$0:Lcom/android/server/wifi/WifiController;


# direct methods
.method constructor <init>(Lcom/android/server/wifi/WifiController;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/wifi/WifiController;

    #@0
    .prologue
    .line 735
    iput-object p1, p0, Lcom/android/server/wifi/WifiController$EcmState;->this$0:Lcom/android/server/wifi/WifiController;

    #@2
    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    #@5
    return-void
.end method

.method private decrementCountAndReturnToAppropriateState()V
    .locals 3

    #@0
    .prologue
    .line 775
    const/4 v0, 0x0

    #@1
    .line 777
    .local v0, "exitEcm":Z
    iget v1, p0, Lcom/android/server/wifi/WifiController$EcmState;->mEcmEntryCount:I

    #@3
    if-nez v1, :cond_2

    #@5
    .line 778
    iget-object v1, p0, Lcom/android/server/wifi/WifiController$EcmState;->this$0:Lcom/android/server/wifi/WifiController;

    #@7
    const-string/jumbo v2, "mEcmEntryCount is 0; exiting Ecm"

    #@a
    invoke-static {v1, v2}, Lcom/android/server/wifi/WifiController;->-wrap5(Lcom/android/server/wifi/WifiController;Ljava/lang/String;)V

    #@d
    .line 779
    const/4 v0, 0x1

    #@e
    .line 784
    :cond_0
    :goto_0
    if-eqz v0, :cond_1

    #@10
    .line 785
    iget-object v1, p0, Lcom/android/server/wifi/WifiController$EcmState;->this$0:Lcom/android/server/wifi/WifiController;

    #@12
    iget-object v1, v1, Lcom/android/server/wifi/WifiController;->mSettingsStore:Lcom/android/server/wifi/WifiSettingsStore;

    #@14
    invoke-virtual {v1}, Lcom/android/server/wifi/WifiSettingsStore;->isWifiToggleEnabled()Z

    #@17
    move-result v1

    #@18
    if-eqz v1, :cond_4

    #@1a
    .line 786
    iget-object v1, p0, Lcom/android/server/wifi/WifiController$EcmState;->this$0:Lcom/android/server/wifi/WifiController;

    #@1c
    invoke-static {v1}, Lcom/android/server/wifi/WifiController;->-get5(Lcom/android/server/wifi/WifiController;)Z

    #@1f
    move-result v1

    #@20
    if-nez v1, :cond_3

    #@22
    .line 787
    iget-object v1, p0, Lcom/android/server/wifi/WifiController$EcmState;->this$0:Lcom/android/server/wifi/WifiController;

    #@24
    iget-object v2, p0, Lcom/android/server/wifi/WifiController$EcmState;->this$0:Lcom/android/server/wifi/WifiController;

    #@26
    invoke-static {v2}, Lcom/android/server/wifi/WifiController;->-get4(Lcom/android/server/wifi/WifiController;)Lcom/android/server/wifi/WifiController$DeviceActiveState;

    #@29
    move-result-object v2

    #@2a
    invoke-static {v1, v2}, Lcom/android/server/wifi/WifiController;->-wrap9(Lcom/android/server/wifi/WifiController;Lcom/android/internal/util/IState;)V

    #@2d
    .line 774
    :cond_1
    :goto_1
    return-void

    #@2e
    .line 780
    :cond_2
    iget v1, p0, Lcom/android/server/wifi/WifiController$EcmState;->mEcmEntryCount:I

    #@30
    add-int/lit8 v1, v1, -0x1

    #@32
    iput v1, p0, Lcom/android/server/wifi/WifiController$EcmState;->mEcmEntryCount:I

    #@34
    if-nez v1, :cond_0

    #@36
    .line 781
    const/4 v0, 0x1

    #@37
    goto :goto_0

    #@38
    .line 789
    :cond_3
    iget-object v1, p0, Lcom/android/server/wifi/WifiController$EcmState;->this$0:Lcom/android/server/wifi/WifiController;

    #@3a
    invoke-static {v1}, Lcom/android/server/wifi/WifiController;->-wrap1(Lcom/android/server/wifi/WifiController;)V

    #@3d
    goto :goto_1

    #@3e
    .line 791
    :cond_4
    iget-object v1, p0, Lcom/android/server/wifi/WifiController$EcmState;->this$0:Lcom/android/server/wifi/WifiController;

    #@40
    iget-object v1, v1, Lcom/android/server/wifi/WifiController;->mSettingsStore:Lcom/android/server/wifi/WifiSettingsStore;

    #@42
    invoke-virtual {v1}, Lcom/android/server/wifi/WifiSettingsStore;->isScanAlwaysAvailable()Z

    #@45
    move-result v1

    #@46
    if-eqz v1, :cond_5

    #@48
    .line 792
    iget-object v1, p0, Lcom/android/server/wifi/WifiController$EcmState;->this$0:Lcom/android/server/wifi/WifiController;

    #@4a
    iget-object v2, p0, Lcom/android/server/wifi/WifiController$EcmState;->this$0:Lcom/android/server/wifi/WifiController;

    #@4c
    invoke-static {v2}, Lcom/android/server/wifi/WifiController;->-get14(Lcom/android/server/wifi/WifiController;)Lcom/android/server/wifi/WifiController$StaDisabledWithScanState;

    #@4f
    move-result-object v2

    #@50
    invoke-static {v1, v2}, Lcom/android/server/wifi/WifiController;->-wrap9(Lcom/android/server/wifi/WifiController;Lcom/android/internal/util/IState;)V

    #@53
    goto :goto_1

    #@54
    .line 794
    :cond_5
    iget-object v1, p0, Lcom/android/server/wifi/WifiController$EcmState;->this$0:Lcom/android/server/wifi/WifiController;

    #@56
    iget-object v2, p0, Lcom/android/server/wifi/WifiController$EcmState;->this$0:Lcom/android/server/wifi/WifiController;

    #@58
    invoke-static {v2}, Lcom/android/server/wifi/WifiController;->-get2(Lcom/android/server/wifi/WifiController;)Lcom/android/server/wifi/WifiController$ApStaDisabledState;

    #@5b
    move-result-object v2

    #@5c
    invoke-static {v1, v2}, Lcom/android/server/wifi/WifiController;->-wrap9(Lcom/android/server/wifi/WifiController;Lcom/android/internal/util/IState;)V

    #@5f
    goto :goto_1
.end method


# virtual methods
.method public enter()V
    .locals 2

    #@0
    .prologue
    .line 743
    iget-object v0, p0, Lcom/android/server/wifi/WifiController$EcmState;->this$0:Lcom/android/server/wifi/WifiController;

    #@2
    iget-object v0, v0, Lcom/android/server/wifi/WifiController;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    #@4
    const/4 v1, 0x0

    #@5
    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiStateMachine;->setSupplicantRunning(Z)V

    #@8
    .line 744
    iget-object v0, p0, Lcom/android/server/wifi/WifiController$EcmState;->this$0:Lcom/android/server/wifi/WifiController;

    #@a
    iget-object v0, v0, Lcom/android/server/wifi/WifiController;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    #@c
    invoke-virtual {v0}, Lcom/android/server/wifi/WifiStateMachine;->clearANQPCache()V

    #@f
    .line 745
    const/4 v0, 0x1

    #@10
    iput v0, p0, Lcom/android/server/wifi/WifiController$EcmState;->mEcmEntryCount:I

    #@12
    .line 742
    return-void
.end method

.method public processMessage(Landroid/os/Message;)Z
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    const/4 v2, 0x1

    #@2
    .line 750
    iget v0, p1, Landroid/os/Message;->what:I

    #@4
    const v1, 0x2600e

    #@7
    if-ne v0, v1, :cond_2

    #@9
    .line 751
    iget v0, p1, Landroid/os/Message;->arg1:I

    #@b
    if-ne v0, v2, :cond_1

    #@d
    .line 753
    iget v0, p0, Lcom/android/server/wifi/WifiController$EcmState;->mEcmEntryCount:I

    #@f
    add-int/lit8 v0, v0, 0x1

    #@11
    iput v0, p0, Lcom/android/server/wifi/WifiController$EcmState;->mEcmEntryCount:I

    #@13
    .line 758
    :cond_0
    :goto_0
    return v2

    #@14
    .line 754
    :cond_1
    iget v0, p1, Landroid/os/Message;->arg1:I

    #@16
    if-nez v0, :cond_0

    #@18
    .line 756
    invoke-direct {p0}, Lcom/android/server/wifi/WifiController$EcmState;->decrementCountAndReturnToAppropriateState()V

    #@1b
    goto :goto_0

    #@1c
    .line 759
    :cond_2
    iget v0, p1, Landroid/os/Message;->what:I

    #@1e
    const v1, 0x26001

    #@21
    if-ne v0, v1, :cond_5

    #@23
    .line 761
    iget v0, p1, Landroid/os/Message;->arg1:I

    #@25
    if-ne v0, v2, :cond_4

    #@27
    .line 763
    iget v0, p0, Lcom/android/server/wifi/WifiController$EcmState;->mEcmEntryCount:I

    #@29
    add-int/lit8 v0, v0, 0x1

    #@2b
    iput v0, p0, Lcom/android/server/wifi/WifiController$EcmState;->mEcmEntryCount:I

    #@2d
    .line 768
    :cond_3
    :goto_1
    return v2

    #@2e
    .line 764
    :cond_4
    iget v0, p1, Landroid/os/Message;->arg1:I

    #@30
    if-nez v0, :cond_3

    #@32
    .line 766
    invoke-direct {p0}, Lcom/android/server/wifi/WifiController$EcmState;->decrementCountAndReturnToAppropriateState()V

    #@35
    goto :goto_1

    #@36
    .line 770
    :cond_5
    return v3
.end method
