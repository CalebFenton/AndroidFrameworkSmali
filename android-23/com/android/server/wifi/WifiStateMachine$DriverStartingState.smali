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
    .line 6030
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
    .line 6034
    const/4 v0, 0x1

    #@1
    iput v0, p0, Lcom/android/server/wifi/WifiStateMachine$DriverStartingState;->mTries:I

    #@3
    .line 6036
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$DriverStartingState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@5
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine$DriverStartingState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@7
    .line 6037
    iget-object v2, p0, Lcom/android/server/wifi/WifiStateMachine$DriverStartingState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@9
    invoke-static {v2}, Lcom/android/server/wifi/WifiStateMachine;->-get29(Lcom/android/server/wifi/WifiStateMachine;)I

    #@c
    move-result v3

    #@d
    add-int/lit8 v3, v3, 0x1

    #@f
    invoke-static {v2, v3}, Lcom/android/server/wifi/WifiStateMachine;->-set16(Lcom/android/server/wifi/WifiStateMachine;I)I

    #@12
    move-result v2

    #@13
    .line 6036
    const v3, 0x20013

    #@16
    .line 6037
    const/4 v4, 0x0

    #@17
    .line 6036
    invoke-virtual {v1, v3, v2, v4}, Lcom/android/server/wifi/WifiStateMachine;->obtainMessage(III)Landroid/os/Message;

    #@1a
    move-result-object v1

    #@1b
    .line 6037
    const-wide/16 v2, 0x2710

    #@1d
    .line 6036
    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/wifi/WifiStateMachine;->sendMessageDelayed(Landroid/os/Message;J)V

    #@20
    .line 6033
    return-void
.end method

.method public processMessage(Landroid/os/Message;)Z
    .locals 6
    .param p1, "message"    # Landroid/os/Message;

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    .line 6041
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine$DriverStartingState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@3
    invoke-virtual {p0}, Lcom/android/server/wifi/WifiStateMachine$DriverStartingState;->getClass()Ljava/lang/Class;

    #@6
    move-result-object v2

    #@7
    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    #@a
    move-result-object v2

    #@b
    invoke-static {v1, p1, v2}, Lcom/android/server/wifi/WifiStateMachine;->-wrap33(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;Ljava/lang/String;)V

    #@e
    .line 6043
    iget v1, p1, Landroid/os/Message;->what:I

    #@10
    sparse-switch v1, :sswitch_data_0

    #@13
    .line 6097
    return v5

    #@14
    .line 6045
    :sswitch_0
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine$DriverStartingState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@16
    invoke-static {v1, p1}, Lcom/android/server/wifi/WifiStateMachine;->-wrap0(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;)Landroid/net/wifi/SupplicantState;

    #@19
    move-result-object v0

    #@1a
    .line 6050
    .local v0, "state":Landroid/net/wifi/SupplicantState;
    invoke-static {v0}, Landroid/net/wifi/SupplicantState;->isDriverActive(Landroid/net/wifi/SupplicantState;)Z

    #@1d
    move-result v1

    #@1e
    if-eqz v1, :cond_0

    #@20
    .line 6051
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine$DriverStartingState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@22
    iget-object v2, p0, Lcom/android/server/wifi/WifiStateMachine$DriverStartingState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@24
    invoke-static {v2}, Lcom/android/server/wifi/WifiStateMachine;->-get30(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/internal/util/State;

    #@27
    move-result-object v2

    #@28
    invoke-static {v1, v2}, Lcom/android/server/wifi/WifiStateMachine;->-wrap55(Lcom/android/server/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V

    #@2b
    .line 6099
    .end local v0    # "state":Landroid/net/wifi/SupplicantState;
    :cond_0
    :goto_0
    :sswitch_1
    const/4 v1, 0x1

    #@2c
    return v1

    #@2d
    .line 6055
    :sswitch_2
    iget v1, p1, Landroid/os/Message;->arg1:I

    #@2f
    iget-object v2, p0, Lcom/android/server/wifi/WifiStateMachine$DriverStartingState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@31
    invoke-static {v2}, Lcom/android/server/wifi/WifiStateMachine;->-get29(Lcom/android/server/wifi/WifiStateMachine;)I

    #@34
    move-result v2

    #@35
    if-ne v1, v2, :cond_0

    #@37
    .line 6056
    iget v1, p0, Lcom/android/server/wifi/WifiStateMachine$DriverStartingState;->mTries:I

    #@39
    const/4 v2, 0x2

    #@3a
    if-lt v1, v2, :cond_1

    #@3c
    .line 6057
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine$DriverStartingState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@3e
    new-instance v2, Ljava/lang/StringBuilder;

    #@40
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@43
    const-string/jumbo v3, "Failed to start driver after "

    #@46
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@49
    move-result-object v2

    #@4a
    iget v3, p0, Lcom/android/server/wifi/WifiStateMachine$DriverStartingState;->mTries:I

    #@4c
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@4f
    move-result-object v2

    #@50
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@53
    move-result-object v2

    #@54
    invoke-virtual {v1, v2}, Lcom/android/server/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V

    #@57
    .line 6058
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine$DriverStartingState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@59
    iget-object v2, p0, Lcom/android/server/wifi/WifiStateMachine$DriverStartingState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@5b
    invoke-static {v2}, Lcom/android/server/wifi/WifiStateMachine;->-get34(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/internal/util/State;

    #@5e
    move-result-object v2

    #@5f
    invoke-static {v1, v2}, Lcom/android/server/wifi/WifiStateMachine;->-wrap55(Lcom/android/server/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V

    #@62
    goto :goto_0

    #@63
    .line 6060
    :cond_1
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine$DriverStartingState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@65
    const-string/jumbo v2, "Driver start failed, retrying"

    #@68
    invoke-virtual {v1, v2}, Lcom/android/server/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V

    #@6b
    .line 6061
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine$DriverStartingState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@6d
    invoke-static {v1}, Lcom/android/server/wifi/WifiStateMachine;->-get95(Lcom/android/server/wifi/WifiStateMachine;)Landroid/os/PowerManager$WakeLock;

    #@70
    move-result-object v1

    #@71
    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->acquire()V

    #@74
    .line 6062
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine$DriverStartingState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@76
    invoke-static {v1}, Lcom/android/server/wifi/WifiStateMachine;->-get105(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiNative;

    #@79
    move-result-object v1

    #@7a
    invoke-virtual {v1}, Lcom/android/server/wifi/WifiNative;->startDriver()Z

    #@7d
    .line 6063
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine$DriverStartingState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@7f
    invoke-static {v1}, Lcom/android/server/wifi/WifiStateMachine;->-get95(Lcom/android/server/wifi/WifiStateMachine;)Landroid/os/PowerManager$WakeLock;

    #@82
    move-result-object v1

    #@83
    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->release()V

    #@86
    .line 6065
    iget v1, p0, Lcom/android/server/wifi/WifiStateMachine$DriverStartingState;->mTries:I

    #@88
    add-int/lit8 v1, v1, 0x1

    #@8a
    iput v1, p0, Lcom/android/server/wifi/WifiStateMachine$DriverStartingState;->mTries:I

    #@8c
    .line 6067
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine$DriverStartingState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@8e
    iget-object v2, p0, Lcom/android/server/wifi/WifiStateMachine$DriverStartingState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@90
    .line 6068
    iget-object v3, p0, Lcom/android/server/wifi/WifiStateMachine$DriverStartingState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@92
    invoke-static {v3}, Lcom/android/server/wifi/WifiStateMachine;->-get29(Lcom/android/server/wifi/WifiStateMachine;)I

    #@95
    move-result v4

    #@96
    add-int/lit8 v4, v4, 0x1

    #@98
    invoke-static {v3, v4}, Lcom/android/server/wifi/WifiStateMachine;->-set16(Lcom/android/server/wifi/WifiStateMachine;I)I

    #@9b
    move-result v3

    #@9c
    .line 6067
    const v4, 0x20013

    #@9f
    invoke-virtual {v2, v4, v3, v5}, Lcom/android/server/wifi/WifiStateMachine;->obtainMessage(III)Landroid/os/Message;

    #@a2
    move-result-object v2

    #@a3
    .line 6068
    const-wide/16 v4, 0x2710

    #@a5
    .line 6067
    invoke-virtual {v1, v2, v4, v5}, Lcom/android/server/wifi/WifiStateMachine;->sendMessageDelayed(Landroid/os/Message;J)V

    #@a8
    goto :goto_0

    #@a9
    .line 6088
    :sswitch_3
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine$DriverStartingState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@ab
    invoke-static {}, Lcom/android/server/wifi/WifiStateMachine;->-get1()I

    #@ae
    move-result v2

    #@af
    invoke-static {v1, v2}, Lcom/android/server/wifi/WifiStateMachine;->-set49(Lcom/android/server/wifi/WifiStateMachine;I)I

    #@b2
    .line 6089
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine$DriverStartingState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@b4
    invoke-static {v1, p1}, Lcom/android/server/wifi/WifiStateMachine;->-wrap21(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;)V

    #@b7
    goto/16 :goto_0

    #@b9
    .line 6043
    nop

    #@ba
    :sswitch_data_0
    .sparse-switch
        0x2000d -> :sswitch_3
        0x2000e -> :sswitch_3
        0x20013 -> :sswitch_2
        0x20047 -> :sswitch_3
        0x20049 -> :sswitch_3
        0x2004a -> :sswitch_3
        0x2004b -> :sswitch_3
        0x20050 -> :sswitch_3
        0x20054 -> :sswitch_3
        0x20055 -> :sswitch_3
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
