.class Lcom/android/server/wifi/WifiStateMachine$SupplicantStartingState;
.super Lcom/android/internal/util/State;
.source "WifiStateMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifi/WifiStateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SupplicantStartingState"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/wifi/WifiStateMachine;


# direct methods
.method constructor <init>(Lcom/android/server/wifi/WifiStateMachine;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/wifi/WifiStateMachine;

    #@0
    .prologue
    .line 5733
    iput-object p1, p0, Lcom/android/server/wifi/WifiStateMachine$SupplicantStartingState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@2
    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    #@5
    return-void
.end method

.method private initializeWpsDetails()V
    .locals 4

    #@0
    .prologue
    .line 5736
    const-string/jumbo v1, "ro.product.name"

    #@3
    const-string/jumbo v2, ""

    #@6
    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@9
    move-result-object v0

    #@a
    .line 5737
    .local v0, "detail":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine$SupplicantStartingState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@c
    invoke-static {v1}, Lcom/android/server/wifi/WifiStateMachine;->-get105(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiNative;

    #@f
    move-result-object v1

    #@10
    invoke-virtual {v1, v0}, Lcom/android/server/wifi/WifiNative;->setDeviceName(Ljava/lang/String;)Z

    #@13
    move-result v1

    #@14
    if-nez v1, :cond_0

    #@16
    .line 5738
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine$SupplicantStartingState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@18
    new-instance v2, Ljava/lang/StringBuilder;

    #@1a
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@1d
    const-string/jumbo v3, "Failed to set device name "

    #@20
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@23
    move-result-object v2

    #@24
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@27
    move-result-object v2

    #@28
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2b
    move-result-object v2

    #@2c
    invoke-virtual {v1, v2}, Lcom/android/server/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V

    #@2f
    .line 5740
    :cond_0
    const-string/jumbo v1, "ro.product.manufacturer"

    #@32
    const-string/jumbo v2, ""

    #@35
    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@38
    move-result-object v0

    #@39
    .line 5741
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine$SupplicantStartingState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@3b
    invoke-static {v1}, Lcom/android/server/wifi/WifiStateMachine;->-get105(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiNative;

    #@3e
    move-result-object v1

    #@3f
    invoke-virtual {v1, v0}, Lcom/android/server/wifi/WifiNative;->setManufacturer(Ljava/lang/String;)Z

    #@42
    move-result v1

    #@43
    if-nez v1, :cond_1

    #@45
    .line 5742
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine$SupplicantStartingState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@47
    new-instance v2, Ljava/lang/StringBuilder;

    #@49
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@4c
    const-string/jumbo v3, "Failed to set manufacturer "

    #@4f
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@52
    move-result-object v2

    #@53
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@56
    move-result-object v2

    #@57
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@5a
    move-result-object v2

    #@5b
    invoke-virtual {v1, v2}, Lcom/android/server/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V

    #@5e
    .line 5744
    :cond_1
    const-string/jumbo v1, "ro.product.model"

    #@61
    const-string/jumbo v2, ""

    #@64
    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@67
    move-result-object v0

    #@68
    .line 5745
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine$SupplicantStartingState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@6a
    invoke-static {v1}, Lcom/android/server/wifi/WifiStateMachine;->-get105(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiNative;

    #@6d
    move-result-object v1

    #@6e
    invoke-virtual {v1, v0}, Lcom/android/server/wifi/WifiNative;->setModelName(Ljava/lang/String;)Z

    #@71
    move-result v1

    #@72
    if-nez v1, :cond_2

    #@74
    .line 5746
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine$SupplicantStartingState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@76
    new-instance v2, Ljava/lang/StringBuilder;

    #@78
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@7b
    const-string/jumbo v3, "Failed to set model name "

    #@7e
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@81
    move-result-object v2

    #@82
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@85
    move-result-object v2

    #@86
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@89
    move-result-object v2

    #@8a
    invoke-virtual {v1, v2}, Lcom/android/server/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V

    #@8d
    .line 5748
    :cond_2
    const-string/jumbo v1, "ro.product.model"

    #@90
    const-string/jumbo v2, ""

    #@93
    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@96
    move-result-object v0

    #@97
    .line 5749
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine$SupplicantStartingState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@99
    invoke-static {v1}, Lcom/android/server/wifi/WifiStateMachine;->-get105(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiNative;

    #@9c
    move-result-object v1

    #@9d
    invoke-virtual {v1, v0}, Lcom/android/server/wifi/WifiNative;->setModelNumber(Ljava/lang/String;)Z

    #@a0
    move-result v1

    #@a1
    if-nez v1, :cond_3

    #@a3
    .line 5750
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine$SupplicantStartingState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@a5
    new-instance v2, Ljava/lang/StringBuilder;

    #@a7
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@aa
    const-string/jumbo v3, "Failed to set model number "

    #@ad
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b0
    move-result-object v2

    #@b1
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b4
    move-result-object v2

    #@b5
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@b8
    move-result-object v2

    #@b9
    invoke-virtual {v1, v2}, Lcom/android/server/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V

    #@bc
    .line 5752
    :cond_3
    const-string/jumbo v1, "ro.serialno"

    #@bf
    const-string/jumbo v2, ""

    #@c2
    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@c5
    move-result-object v0

    #@c6
    .line 5753
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine$SupplicantStartingState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@c8
    invoke-static {v1}, Lcom/android/server/wifi/WifiStateMachine;->-get105(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiNative;

    #@cb
    move-result-object v1

    #@cc
    invoke-virtual {v1, v0}, Lcom/android/server/wifi/WifiNative;->setSerialNumber(Ljava/lang/String;)Z

    #@cf
    move-result v1

    #@d0
    if-nez v1, :cond_4

    #@d2
    .line 5754
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine$SupplicantStartingState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@d4
    new-instance v2, Ljava/lang/StringBuilder;

    #@d6
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@d9
    const-string/jumbo v3, "Failed to set serial number "

    #@dc
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@df
    move-result-object v2

    #@e0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@e3
    move-result-object v2

    #@e4
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@e7
    move-result-object v2

    #@e8
    invoke-virtual {v1, v2}, Lcom/android/server/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V

    #@eb
    .line 5756
    :cond_4
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine$SupplicantStartingState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@ed
    invoke-static {v1}, Lcom/android/server/wifi/WifiStateMachine;->-get105(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiNative;

    #@f0
    move-result-object v1

    #@f1
    const-string/jumbo v2, "physical_display virtual_push_button"

    #@f4
    invoke-virtual {v1, v2}, Lcom/android/server/wifi/WifiNative;->setConfigMethods(Ljava/lang/String;)Z

    #@f7
    move-result v1

    #@f8
    if-nez v1, :cond_5

    #@fa
    .line 5757
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine$SupplicantStartingState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@fc
    const-string/jumbo v2, "Failed to set WPS config methods"

    #@ff
    invoke-virtual {v1, v2}, Lcom/android/server/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V

    #@102
    .line 5759
    :cond_5
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine$SupplicantStartingState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@104
    invoke-static {v1}, Lcom/android/server/wifi/WifiStateMachine;->-get105(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiNative;

    #@107
    move-result-object v1

    #@108
    iget-object v2, p0, Lcom/android/server/wifi/WifiStateMachine$SupplicantStartingState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@10a
    invoke-static {v2}, Lcom/android/server/wifi/WifiStateMachine;->-get65(Lcom/android/server/wifi/WifiStateMachine;)Ljava/lang/String;

    #@10d
    move-result-object v2

    #@10e
    invoke-virtual {v1, v2}, Lcom/android/server/wifi/WifiNative;->setDeviceType(Ljava/lang/String;)Z

    #@111
    move-result v1

    #@112
    if-nez v1, :cond_6

    #@114
    .line 5760
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine$SupplicantStartingState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@116
    new-instance v2, Ljava/lang/StringBuilder;

    #@118
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@11b
    const-string/jumbo v3, "Failed to set primary device type "

    #@11e
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@121
    move-result-object v2

    #@122
    iget-object v3, p0, Lcom/android/server/wifi/WifiStateMachine$SupplicantStartingState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@124
    invoke-static {v3}, Lcom/android/server/wifi/WifiStateMachine;->-get65(Lcom/android/server/wifi/WifiStateMachine;)Ljava/lang/String;

    #@127
    move-result-object v3

    #@128
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@12b
    move-result-object v2

    #@12c
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@12f
    move-result-object v2

    #@130
    invoke-virtual {v1, v2}, Lcom/android/server/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V

    #@133
    .line 5734
    :cond_6
    return-void
.end method


# virtual methods
.method public processMessage(Landroid/os/Message;)Z
    .locals 5
    .param p1, "message"    # Landroid/os/Message;

    #@0
    .prologue
    const/4 v4, 0x1

    #@1
    const/4 v2, -0x1

    #@2
    const/4 v3, 0x0

    #@3
    .line 5766
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$SupplicantStartingState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@5
    invoke-virtual {p0}, Lcom/android/server/wifi/WifiStateMachine$SupplicantStartingState;->getClass()Ljava/lang/Class;

    #@8
    move-result-object v1

    #@9
    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    #@c
    move-result-object v1

    #@d
    invoke-static {v0, p1, v1}, Lcom/android/server/wifi/WifiStateMachine;->-wrap33(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;Ljava/lang/String;)V

    #@10
    .line 5768
    iget v0, p1, Landroid/os/Message;->what:I

    #@12
    sparse-switch v0, :sswitch_data_0

    #@15
    .line 5823
    return v3

    #@16
    .line 5770
    :sswitch_0
    invoke-static {}, Lcom/android/server/wifi/WifiStateMachine;->-get0()Z

    #@19
    move-result v0

    #@1a
    if-eqz v0, :cond_0

    #@1c
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$SupplicantStartingState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@1e
    const-string/jumbo v1, "Supplicant connection established"

    #@21
    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiStateMachine;->log(Ljava/lang/String;)V

    #@24
    .line 5771
    :cond_0
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$SupplicantStartingState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@26
    const/4 v1, 0x3

    #@27
    invoke-static {v0, v1}, Lcom/android/server/wifi/WifiStateMachine;->-wrap51(Lcom/android/server/wifi/WifiStateMachine;I)V

    #@2a
    .line 5772
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$SupplicantStartingState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@2c
    invoke-static {v0, v3}, Lcom/android/server/wifi/WifiStateMachine;->-set39(Lcom/android/server/wifi/WifiStateMachine;I)I

    #@2f
    .line 5775
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$SupplicantStartingState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@31
    invoke-static {v0}, Lcom/android/server/wifi/WifiStateMachine;->-get79(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/SupplicantStateTracker;

    #@34
    move-result-object v0

    #@35
    const v1, 0x2006f

    #@38
    invoke-virtual {v0, v1}, Lcom/android/server/wifi/SupplicantStateTracker;->sendMessage(I)V

    #@3b
    .line 5777
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$SupplicantStartingState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@3d
    const/4 v1, 0x0

    #@3e
    invoke-static {v0, v1}, Lcom/android/server/wifi/WifiStateMachine;->-set27(Lcom/android/server/wifi/WifiStateMachine;Ljava/lang/String;)Ljava/lang/String;

    #@41
    .line 5778
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$SupplicantStartingState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@43
    invoke-static {v0, v2}, Lcom/android/server/wifi/WifiStateMachine;->-set30(Lcom/android/server/wifi/WifiStateMachine;I)I

    #@46
    .line 5779
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$SupplicantStartingState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@48
    invoke-static {v0, v2}, Lcom/android/server/wifi/WifiStateMachine;->-set31(Lcom/android/server/wifi/WifiStateMachine;I)I

    #@4b
    .line 5781
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$SupplicantStartingState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@4d
    invoke-static {v0}, Lcom/android/server/wifi/WifiStateMachine;->-get101(Lcom/android/server/wifi/WifiStateMachine;)Landroid/net/wifi/WifiInfo;

    #@50
    move-result-object v0

    #@51
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine$SupplicantStartingState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@53
    invoke-static {v1}, Lcom/android/server/wifi/WifiStateMachine;->-get105(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiNative;

    #@56
    move-result-object v1

    #@57
    invoke-virtual {v1}, Lcom/android/server/wifi/WifiNative;->getMacAddress()Ljava/lang/String;

    #@5a
    move-result-object v1

    #@5b
    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiInfo;->setMacAddress(Ljava/lang/String;)V

    #@5e
    .line 5783
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$SupplicantStartingState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@60
    invoke-static {v0}, Lcom/android/server/wifi/WifiStateMachine;->-wrap45(Lcom/android/server/wifi/WifiStateMachine;)V

    #@63
    .line 5784
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$SupplicantStartingState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@65
    invoke-static {v0}, Lcom/android/server/wifi/WifiStateMachine;->-get105(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiNative;

    #@68
    move-result-object v0

    #@69
    invoke-virtual {v0}, Lcom/android/server/wifi/WifiNative;->enableSaveConfig()V

    #@6c
    .line 5785
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$SupplicantStartingState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@6e
    invoke-static {v0}, Lcom/android/server/wifi/WifiStateMachine;->-get99(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigStore;

    #@71
    move-result-object v0

    #@72
    invoke-virtual {v0}, Lcom/android/server/wifi/WifiConfigStore;->loadAndEnableAllNetworks()V

    #@75
    .line 5786
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$SupplicantStartingState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@77
    invoke-static {v0}, Lcom/android/server/wifi/WifiStateMachine;->-get99(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigStore;

    #@7a
    move-result-object v0

    #@7b
    iget-object v0, v0, Lcom/android/server/wifi/WifiConfigStore;->enableVerboseLogging:Ljava/util/concurrent/atomic/AtomicInteger;

    #@7d
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    #@80
    move-result v0

    #@81
    if-lez v0, :cond_1

    #@83
    .line 5787
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$SupplicantStartingState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@85
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine$SupplicantStartingState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@87
    invoke-static {v1}, Lcom/android/server/wifi/WifiStateMachine;->-get99(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigStore;

    #@8a
    move-result-object v1

    #@8b
    iget-object v1, v1, Lcom/android/server/wifi/WifiConfigStore;->enableVerboseLogging:Ljava/util/concurrent/atomic/AtomicInteger;

    #@8d
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    #@90
    move-result v1

    #@91
    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiStateMachine;->enableVerboseLogging(I)V

    #@94
    .line 5789
    :cond_1
    invoke-direct {p0}, Lcom/android/server/wifi/WifiStateMachine$SupplicantStartingState;->initializeWpsDetails()V

    #@97
    .line 5791
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$SupplicantStartingState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@99
    invoke-static {v0, v4}, Lcom/android/server/wifi/WifiStateMachine;->-wrap43(Lcom/android/server/wifi/WifiStateMachine;Z)V

    #@9c
    .line 5792
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$SupplicantStartingState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@9e
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine$SupplicantStartingState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@a0
    invoke-static {v1}, Lcom/android/server/wifi/WifiStateMachine;->-get30(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/internal/util/State;

    #@a3
    move-result-object v1

    #@a4
    invoke-static {v0, v1}, Lcom/android/server/wifi/WifiStateMachine;->-wrap55(Lcom/android/server/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V

    #@a7
    .line 5825
    :goto_0
    return v4

    #@a8
    .line 5795
    :sswitch_1
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$SupplicantStartingState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@aa
    invoke-static {v0}, Lcom/android/server/wifi/WifiStateMachine;->-get76(Lcom/android/server/wifi/WifiStateMachine;)I

    #@ad
    move-result v1

    #@ae
    add-int/lit8 v1, v1, 0x1

    #@b0
    invoke-static {v0, v1}, Lcom/android/server/wifi/WifiStateMachine;->-set39(Lcom/android/server/wifi/WifiStateMachine;I)I

    #@b3
    move-result v0

    #@b4
    const/4 v1, 0x5

    #@b5
    if-gt v0, v1, :cond_2

    #@b7
    .line 5796
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$SupplicantStartingState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@b9
    const-string/jumbo v1, "Failed to setup control channel, restart supplicant"

    #@bc
    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V

    #@bf
    .line 5797
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$SupplicantStartingState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@c1
    invoke-static {v0}, Lcom/android/server/wifi/WifiStateMachine;->-get104(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiMonitor;

    #@c4
    move-result-object v0

    #@c5
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine$SupplicantStartingState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@c7
    invoke-static {v1}, Lcom/android/server/wifi/WifiStateMachine;->-get62(Lcom/android/server/wifi/WifiStateMachine;)Z

    #@ca
    move-result v1

    #@cb
    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiMonitor;->killSupplicant(Z)V

    #@ce
    .line 5798
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$SupplicantStartingState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@d0
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine$SupplicantStartingState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@d2
    invoke-static {v1}, Lcom/android/server/wifi/WifiStateMachine;->-get43(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/internal/util/State;

    #@d5
    move-result-object v1

    #@d6
    invoke-static {v0, v1}, Lcom/android/server/wifi/WifiStateMachine;->-wrap55(Lcom/android/server/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V

    #@d9
    .line 5799
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$SupplicantStartingState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@db
    const-wide/16 v2, 0x1388

    #@dd
    const v1, 0x2000b

    #@e0
    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/wifi/WifiStateMachine;->sendMessageDelayed(IJ)V

    #@e3
    goto :goto_0

    #@e4
    .line 5801
    :cond_2
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$SupplicantStartingState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@e6
    new-instance v1, Ljava/lang/StringBuilder;

    #@e8
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@eb
    const-string/jumbo v2, "Failed "

    #@ee
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@f1
    move-result-object v1

    #@f2
    iget-object v2, p0, Lcom/android/server/wifi/WifiStateMachine$SupplicantStartingState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@f4
    invoke-static {v2}, Lcom/android/server/wifi/WifiStateMachine;->-get76(Lcom/android/server/wifi/WifiStateMachine;)I

    #@f7
    move-result v2

    #@f8
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@fb
    move-result-object v1

    #@fc
    .line 5802
    const-string/jumbo v2, " times to start supplicant, unload driver"

    #@ff
    .line 5801
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@102
    move-result-object v1

    #@103
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@106
    move-result-object v1

    #@107
    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V

    #@10a
    .line 5803
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$SupplicantStartingState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@10c
    invoke-static {v0, v3}, Lcom/android/server/wifi/WifiStateMachine;->-set39(Lcom/android/server/wifi/WifiStateMachine;I)I

    #@10f
    .line 5804
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$SupplicantStartingState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@111
    const/4 v1, 0x4

    #@112
    invoke-static {v0, v1}, Lcom/android/server/wifi/WifiStateMachine;->-wrap51(Lcom/android/server/wifi/WifiStateMachine;I)V

    #@115
    .line 5805
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$SupplicantStartingState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@117
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine$SupplicantStartingState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@119
    invoke-static {v1}, Lcom/android/server/wifi/WifiStateMachine;->-get43(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/internal/util/State;

    #@11c
    move-result-object v1

    #@11d
    invoke-static {v0, v1}, Lcom/android/server/wifi/WifiStateMachine;->-wrap55(Lcom/android/server/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V

    #@120
    goto :goto_0

    #@121
    .line 5819
    :sswitch_2
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$SupplicantStartingState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@123
    invoke-static {}, Lcom/android/server/wifi/WifiStateMachine;->-get1()I

    #@126
    move-result v1

    #@127
    invoke-static {v0, v1}, Lcom/android/server/wifi/WifiStateMachine;->-set49(Lcom/android/server/wifi/WifiStateMachine;I)I

    #@12a
    .line 5820
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$SupplicantStartingState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@12c
    invoke-static {v0, p1}, Lcom/android/server/wifi/WifiStateMachine;->-wrap21(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;)V

    #@12f
    goto/16 :goto_0

    #@131
    .line 5768
    nop

    #@132
    :sswitch_data_0
    .sparse-switch
        0x2000b -> :sswitch_2
        0x2000c -> :sswitch_2
        0x2000d -> :sswitch_2
        0x2000e -> :sswitch_2
        0x20015 -> :sswitch_2
        0x20018 -> :sswitch_2
        0x20048 -> :sswitch_2
        0x20050 -> :sswitch_2
        0x20054 -> :sswitch_2
        0x20055 -> :sswitch_2
        0x2005a -> :sswitch_2
        0x24001 -> :sswitch_0
        0x24002 -> :sswitch_1
    .end sparse-switch
.end method
