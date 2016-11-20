.class Lcom/android/server/wifi/WifiStateMachine$DriverStartingState;
.super Lcom/android/internal/util/State;
.source "WifiStateMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifi/WifiStateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "DriverStartingState"
.end annotation


# instance fields
.field private mTries:I

.field final synthetic this$0:Lcom/android/server/wifi/WifiStateMachine;


# direct methods
.method constructor <init>(Lcom/android/server/wifi/WifiStateMachine;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/wifi/WifiStateMachine;

    #@0
    .prologue
    .line 4653
    iput-object p1, p0, Lcom/android/server/wifi/WifiStateMachine$DriverStartingState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@2
    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    #@5
    return-void
.end method


# virtual methods
.method public enter()V
    .locals 5

    #@0
    .prologue
    .line 4657
    const/4 v0, 0x1

    #@1
    iput v0, p0, Lcom/android/server/wifi/WifiStateMachine$DriverStartingState;->mTries:I

    #@3
    .line 4659
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$DriverStartingState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@5
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine$DriverStartingState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@7
    .line 4660
    iget-object v2, p0, Lcom/android/server/wifi/WifiStateMachine$DriverStartingState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@9
    invoke-static {v2}, Lcom/android/server/wifi/WifiStateMachine;->-get18(Lcom/android/server/wifi/WifiStateMachine;)I

    #@c
    move-result v3

    #@d
    add-int/lit8 v3, v3, 0x1

    #@f
    invoke-static {v2, v3}, Lcom/android/server/wifi/WifiStateMachine;->-set9(Lcom/android/server/wifi/WifiStateMachine;I)I

    #@12
    move-result v2

    #@13
    .line 4659
    const v3, 0x20013

    #@16
    .line 4660
    const/4 v4, 0x0

    #@17
    .line 4659
    invoke-virtual {v1, v3, v2, v4}, Lcom/android/server/wifi/WifiStateMachine;->obtainMessage(III)Landroid/os/Message;

    #@1a
    move-result-object v1

    #@1b
    .line 4660
    const-wide/16 v2, 0x2710

    #@1d
    .line 4659
    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/wifi/WifiStateMachine;->sendMessageDelayed(Landroid/os/Message;J)V

    #@20
    .line 4656
    return-void
.end method

.method public processMessage(Landroid/os/Message;)Z
    .locals 7
    .param p1, "message"    # Landroid/os/Message;

    #@0
    .prologue
    const/4 v6, 0x1

    #@1
    const/4 v5, 0x0

    #@2
    .line 4664
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine$DriverStartingState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@4
    invoke-static {v1, p1, p0}, Lcom/android/server/wifi/WifiStateMachine;->-wrap28(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;Lcom/android/internal/util/State;)V

    #@7
    .line 4666
    iget v1, p1, Landroid/os/Message;->what:I

    #@9
    sparse-switch v1, :sswitch_data_0

    #@c
    .line 4718
    return v5

    #@d
    .line 4668
    :sswitch_0
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine$DriverStartingState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@f
    invoke-static {v1, p1}, Lcom/android/server/wifi/WifiStateMachine;->-wrap0(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;)Landroid/net/wifi/SupplicantState;

    #@12
    move-result-object v0

    #@13
    .line 4673
    .local v0, "state":Landroid/net/wifi/SupplicantState;
    invoke-static {v0}, Landroid/net/wifi/SupplicantState;->isDriverActive(Landroid/net/wifi/SupplicantState;)Z

    #@16
    move-result v1

    #@17
    if-eqz v1, :cond_0

    #@19
    .line 4674
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine$DriverStartingState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@1b
    iget-object v2, p0, Lcom/android/server/wifi/WifiStateMachine$DriverStartingState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@1d
    invoke-static {v2}, Lcom/android/server/wifi/WifiStateMachine;->-get19(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/internal/util/State;

    #@20
    move-result-object v2

    #@21
    invoke-static {v1, v2}, Lcom/android/server/wifi/WifiStateMachine;->-wrap45(Lcom/android/server/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V

    #@24
    .line 4720
    .end local v0    # "state":Landroid/net/wifi/SupplicantState;
    :cond_0
    :goto_0
    :sswitch_1
    return v6

    #@25
    .line 4678
    :sswitch_2
    iget v1, p1, Landroid/os/Message;->arg1:I

    #@27
    iget-object v2, p0, Lcom/android/server/wifi/WifiStateMachine$DriverStartingState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@29
    invoke-static {v2}, Lcom/android/server/wifi/WifiStateMachine;->-get18(Lcom/android/server/wifi/WifiStateMachine;)I

    #@2c
    move-result v2

    #@2d
    if-ne v1, v2, :cond_0

    #@2f
    .line 4679
    iget v1, p0, Lcom/android/server/wifi/WifiStateMachine$DriverStartingState;->mTries:I

    #@31
    const/4 v2, 0x2

    #@32
    if-lt v1, v2, :cond_1

    #@34
    .line 4680
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine$DriverStartingState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@36
    new-instance v2, Ljava/lang/StringBuilder;

    #@38
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@3b
    const-string/jumbo v3, "Failed to start driver after "

    #@3e
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@41
    move-result-object v2

    #@42
    iget v3, p0, Lcom/android/server/wifi/WifiStateMachine$DriverStartingState;->mTries:I

    #@44
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@47
    move-result-object v2

    #@48
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@4b
    move-result-object v2

    #@4c
    invoke-virtual {v1, v2}, Lcom/android/server/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V

    #@4f
    .line 4681
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine$DriverStartingState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@51
    invoke-virtual {v1, v5}, Lcom/android/server/wifi/WifiStateMachine;->setSupplicantRunning(Z)V

    #@54
    .line 4682
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine$DriverStartingState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@56
    invoke-virtual {v1, v6}, Lcom/android/server/wifi/WifiStateMachine;->setSupplicantRunning(Z)V

    #@59
    goto :goto_0

    #@5a
    .line 4684
    :cond_1
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine$DriverStartingState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@5c
    const-string/jumbo v2, "Driver start failed, retrying"

    #@5f
    invoke-virtual {v1, v2}, Lcom/android/server/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V

    #@62
    .line 4685
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine$DriverStartingState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@64
    invoke-static {v1}, Lcom/android/server/wifi/WifiStateMachine;->-get72(Lcom/android/server/wifi/WifiStateMachine;)Landroid/os/PowerManager$WakeLock;

    #@67
    move-result-object v1

    #@68
    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->acquire()V

    #@6b
    .line 4686
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine$DriverStartingState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@6d
    invoke-static {v1}, Lcom/android/server/wifi/WifiStateMachine;->-get84(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiNative;

    #@70
    move-result-object v1

    #@71
    invoke-virtual {v1}, Lcom/android/server/wifi/WifiNative;->startDriver()Z

    #@74
    .line 4687
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine$DriverStartingState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@76
    invoke-static {v1}, Lcom/android/server/wifi/WifiStateMachine;->-get72(Lcom/android/server/wifi/WifiStateMachine;)Landroid/os/PowerManager$WakeLock;

    #@79
    move-result-object v1

    #@7a
    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->release()V

    #@7d
    .line 4689
    iget v1, p0, Lcom/android/server/wifi/WifiStateMachine$DriverStartingState;->mTries:I

    #@7f
    add-int/lit8 v1, v1, 0x1

    #@81
    iput v1, p0, Lcom/android/server/wifi/WifiStateMachine$DriverStartingState;->mTries:I

    #@83
    .line 4691
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine$DriverStartingState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@85
    iget-object v2, p0, Lcom/android/server/wifi/WifiStateMachine$DriverStartingState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@87
    .line 4692
    iget-object v3, p0, Lcom/android/server/wifi/WifiStateMachine$DriverStartingState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@89
    invoke-static {v3}, Lcom/android/server/wifi/WifiStateMachine;->-get18(Lcom/android/server/wifi/WifiStateMachine;)I

    #@8c
    move-result v4

    #@8d
    add-int/lit8 v4, v4, 0x1

    #@8f
    invoke-static {v3, v4}, Lcom/android/server/wifi/WifiStateMachine;->-set9(Lcom/android/server/wifi/WifiStateMachine;I)I

    #@92
    move-result v3

    #@93
    .line 4691
    const v4, 0x20013

    #@96
    invoke-virtual {v2, v4, v3, v5}, Lcom/android/server/wifi/WifiStateMachine;->obtainMessage(III)Landroid/os/Message;

    #@99
    move-result-object v2

    #@9a
    .line 4692
    const-wide/16 v4, 0x2710

    #@9c
    .line 4691
    invoke-virtual {v1, v2, v4, v5}, Lcom/android/server/wifi/WifiStateMachine;->sendMessageDelayed(Landroid/os/Message;J)V

    #@9f
    goto :goto_0

    #@a0
    .line 4709
    :sswitch_3
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine$DriverStartingState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@a2
    invoke-static {}, Lcom/android/server/wifi/WifiStateMachine;->-get1()I

    #@a5
    move-result v2

    #@a6
    invoke-static {v1, v2}, Lcom/android/server/wifi/WifiStateMachine;->-set39(Lcom/android/server/wifi/WifiStateMachine;I)I

    #@a9
    .line 4710
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine$DriverStartingState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@ab
    invoke-static {v1, p1}, Lcom/android/server/wifi/WifiStateMachine;->-wrap16(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;)V

    #@ae
    goto/16 :goto_0

    #@b0
    .line 4666
    :sswitch_data_0
    .sparse-switch
        0x2000d -> :sswitch_3
        0x2000e -> :sswitch_3
        0x20013 -> :sswitch_2
        0x20047 -> :sswitch_3
        0x20049 -> :sswitch_3
        0x2004a -> :sswitch_3
        0x2004b -> :sswitch_3
        0x2005a -> :sswitch_3
        0x24003 -> :sswitch_3
        0x24004 -> :sswitch_3
        0x24005 -> :sswitch_1
        0x24006 -> :sswitch_0
        0x24007 -> :sswitch_3
        0x2400a -> :sswitch_3
        0x24011 -> :sswitch_1
        0x2402b -> :sswitch_3
    .end sparse-switch
.end method
