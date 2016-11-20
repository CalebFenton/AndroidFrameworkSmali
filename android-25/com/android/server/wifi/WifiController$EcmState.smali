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
    .line 748
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
    .line 788
    const/4 v0, 0x0

    #@1
    .line 790
    .local v0, "exitEcm":Z
    iget v1, p0, Lcom/android/server/wifi/WifiController$EcmState;->mEcmEntryCount:I

    #@3
    if-nez v1, :cond_2

    #@5
    .line 791
    iget-object v1, p0, Lcom/android/server/wifi/WifiController$EcmState;->this$0:Lcom/android/server/wifi/WifiController;

    #@7
    const-string/jumbo v2, "mEcmEntryCount is 0; exiting Ecm"

    #@a
    invoke-static {v1, v2}, Lcom/android/server/wifi/WifiController;->-wrap5(Lcom/android/server/wifi/WifiController;Ljava/lang/String;)V

    #@d
    .line 792
    const/4 v0, 0x1

    #@e
    .line 797
    :cond_0
    :goto_0
    if-eqz v0, :cond_1

    #@10
    .line 798
    iget-object v1, p0, Lcom/android/server/wifi/WifiController$EcmState;->this$0:Lcom/android/server/wifi/WifiController;

    #@12
    invoke-static {v1}, Lcom/android/server/wifi/WifiController;->-get14(Lcom/android/server/wifi/WifiController;)Lcom/android/server/wifi/WifiSettingsStore;

    #@15
    move-result-object v1

    #@16
    invoke-virtual {v1}, Lcom/android/server/wifi/WifiSettingsStore;->isWifiToggleEnabled()Z

    #@19
    move-result v1

    #@1a
    if-eqz v1, :cond_4

    #@1c
    .line 799
    iget-object v1, p0, Lcom/android/server/wifi/WifiController$EcmState;->this$0:Lcom/android/server/wifi/WifiController;

    #@1e
    invoke-static {v1}, Lcom/android/server/wifi/WifiController;->-get5(Lcom/android/server/wifi/WifiController;)Z

    #@21
    move-result v1

    #@22
    if-nez v1, :cond_3

    #@24
    .line 800
    iget-object v1, p0, Lcom/android/server/wifi/WifiController$EcmState;->this$0:Lcom/android/server/wifi/WifiController;

    #@26
    iget-object v2, p0, Lcom/android/server/wifi/WifiController$EcmState;->this$0:Lcom/android/server/wifi/WifiController;

    #@28
    invoke-static {v2}, Lcom/android/server/wifi/WifiController;->-get4(Lcom/android/server/wifi/WifiController;)Lcom/android/server/wifi/WifiController$DeviceActiveState;

    #@2b
    move-result-object v2

    #@2c
    invoke-static {v1, v2}, Lcom/android/server/wifi/WifiController;->-wrap9(Lcom/android/server/wifi/WifiController;Lcom/android/internal/util/IState;)V

    #@2f
    .line 787
    :cond_1
    :goto_1
    return-void

    #@30
    .line 793
    :cond_2
    iget v1, p0, Lcom/android/server/wifi/WifiController$EcmState;->mEcmEntryCount:I

    #@32
    add-int/lit8 v1, v1, -0x1

    #@34
    iput v1, p0, Lcom/android/server/wifi/WifiController$EcmState;->mEcmEntryCount:I

    #@36
    if-nez v1, :cond_0

    #@38
    .line 794
    const/4 v0, 0x1

    #@39
    goto :goto_0

    #@3a
    .line 802
    :cond_3
    iget-object v1, p0, Lcom/android/server/wifi/WifiController$EcmState;->this$0:Lcom/android/server/wifi/WifiController;

    #@3c
    invoke-static {v1}, Lcom/android/server/wifi/WifiController;->-wrap1(Lcom/android/server/wifi/WifiController;)V

    #@3f
    goto :goto_1

    #@40
    .line 804
    :cond_4
    iget-object v1, p0, Lcom/android/server/wifi/WifiController$EcmState;->this$0:Lcom/android/server/wifi/WifiController;

    #@42
    invoke-static {v1}, Lcom/android/server/wifi/WifiController;->-get14(Lcom/android/server/wifi/WifiController;)Lcom/android/server/wifi/WifiSettingsStore;

    #@45
    move-result-object v1

    #@46
    invoke-virtual {v1}, Lcom/android/server/wifi/WifiSettingsStore;->isScanAlwaysAvailable()Z

    #@49
    move-result v1

    #@4a
    if-eqz v1, :cond_5

    #@4c
    .line 805
    iget-object v1, p0, Lcom/android/server/wifi/WifiController$EcmState;->this$0:Lcom/android/server/wifi/WifiController;

    #@4e
    iget-object v2, p0, Lcom/android/server/wifi/WifiController$EcmState;->this$0:Lcom/android/server/wifi/WifiController;

    #@50
    invoke-static {v2}, Lcom/android/server/wifi/WifiController;->-get15(Lcom/android/server/wifi/WifiController;)Lcom/android/server/wifi/WifiController$StaDisabledWithScanState;

    #@53
    move-result-object v2

    #@54
    invoke-static {v1, v2}, Lcom/android/server/wifi/WifiController;->-wrap9(Lcom/android/server/wifi/WifiController;Lcom/android/internal/util/IState;)V

    #@57
    goto :goto_1

    #@58
    .line 807
    :cond_5
    iget-object v1, p0, Lcom/android/server/wifi/WifiController$EcmState;->this$0:Lcom/android/server/wifi/WifiController;

    #@5a
    iget-object v2, p0, Lcom/android/server/wifi/WifiController$EcmState;->this$0:Lcom/android/server/wifi/WifiController;

    #@5c
    invoke-static {v2}, Lcom/android/server/wifi/WifiController;->-get2(Lcom/android/server/wifi/WifiController;)Lcom/android/server/wifi/WifiController$ApStaDisabledState;

    #@5f
    move-result-object v2

    #@60
    invoke-static {v1, v2}, Lcom/android/server/wifi/WifiController;->-wrap9(Lcom/android/server/wifi/WifiController;Lcom/android/internal/util/IState;)V

    #@63
    goto :goto_1
.end method


# virtual methods
.method public enter()V
    .locals 2

    #@0
    .prologue
    .line 756
    iget-object v0, p0, Lcom/android/server/wifi/WifiController$EcmState;->this$0:Lcom/android/server/wifi/WifiController;

    #@2
    invoke-static {v0}, Lcom/android/server/wifi/WifiController;->-get16(Lcom/android/server/wifi/WifiController;)Lcom/android/server/wifi/WifiStateMachine;

    #@5
    move-result-object v0

    #@6
    const/4 v1, 0x0

    #@7
    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiStateMachine;->setSupplicantRunning(Z)V

    #@a
    .line 757
    iget-object v0, p0, Lcom/android/server/wifi/WifiController$EcmState;->this$0:Lcom/android/server/wifi/WifiController;

    #@c
    invoke-static {v0}, Lcom/android/server/wifi/WifiController;->-get16(Lcom/android/server/wifi/WifiController;)Lcom/android/server/wifi/WifiStateMachine;

    #@f
    move-result-object v0

    #@10
    invoke-virtual {v0}, Lcom/android/server/wifi/WifiStateMachine;->clearANQPCache()V

    #@13
    .line 758
    const/4 v0, 0x1

    #@14
    iput v0, p0, Lcom/android/server/wifi/WifiController$EcmState;->mEcmEntryCount:I

    #@16
    .line 755
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
    .line 763
    iget v0, p1, Landroid/os/Message;->what:I

    #@4
    const v1, 0x2600e

    #@7
    if-ne v0, v1, :cond_2

    #@9
    .line 764
    iget v0, p1, Landroid/os/Message;->arg1:I

    #@b
    if-ne v0, v2, :cond_1

    #@d
    .line 766
    iget v0, p0, Lcom/android/server/wifi/WifiController$EcmState;->mEcmEntryCount:I

    #@f
    add-int/lit8 v0, v0, 0x1

    #@11
    iput v0, p0, Lcom/android/server/wifi/WifiController$EcmState;->mEcmEntryCount:I

    #@13
    .line 771
    :cond_0
    :goto_0
    return v2

    #@14
    .line 767
    :cond_1
    iget v0, p1, Landroid/os/Message;->arg1:I

    #@16
    if-nez v0, :cond_0

    #@18
    .line 769
    invoke-direct {p0}, Lcom/android/server/wifi/WifiController$EcmState;->decrementCountAndReturnToAppropriateState()V

    #@1b
    goto :goto_0

    #@1c
    .line 772
    :cond_2
    iget v0, p1, Landroid/os/Message;->what:I

    #@1e
    const v1, 0x26001

    #@21
    if-ne v0, v1, :cond_5

    #@23
    .line 774
    iget v0, p1, Landroid/os/Message;->arg1:I

    #@25
    if-ne v0, v2, :cond_4

    #@27
    .line 776
    iget v0, p0, Lcom/android/server/wifi/WifiController$EcmState;->mEcmEntryCount:I

    #@29
    add-int/lit8 v0, v0, 0x1

    #@2b
    iput v0, p0, Lcom/android/server/wifi/WifiController$EcmState;->mEcmEntryCount:I

    #@2d
    .line 781
    :cond_3
    :goto_1
    return v2

    #@2e
    .line 777
    :cond_4
    iget v0, p1, Landroid/os/Message;->arg1:I

    #@30
    if-nez v0, :cond_3

    #@32
    .line 779
    invoke-direct {p0}, Lcom/android/server/wifi/WifiController$EcmState;->decrementCountAndReturnToAppropriateState()V

    #@35
    goto :goto_1

    #@36
    .line 783
    :cond_5
    return v3
.end method
