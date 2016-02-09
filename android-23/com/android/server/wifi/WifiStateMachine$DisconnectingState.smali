.class Lcom/android/server/wifi/WifiStateMachine$DisconnectingState;
.super Lcom/android/internal/util/State;
.source "WifiStateMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifi/WifiStateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "DisconnectingState"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/wifi/WifiStateMachine;


# direct methods
.method constructor <init>(Lcom/android/server/wifi/WifiStateMachine;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/wifi/WifiStateMachine;

    #@0
    .prologue
    .line 8953
    iput-object p1, p0, Lcom/android/server/wifi/WifiStateMachine$DisconnectingState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

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
    .line 8958
    invoke-static {}, Lcom/android/server/wifi/WifiStateMachine;->-get7()Z

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_0

    #@6
    .line 8959
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$DisconnectingState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@8
    new-instance v1, Ljava/lang/StringBuilder;

    #@a
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@d
    const-string/jumbo v2, " Enter DisconnectingState State scan interval "

    #@10
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@13
    move-result-object v1

    #@14
    .line 8960
    iget-object v2, p0, Lcom/android/server/wifi/WifiStateMachine$DisconnectingState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@16
    invoke-static {v2}, Lcom/android/server/wifi/WifiStateMachine;->-get99(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigStore;

    #@19
    move-result-object v2

    #@1a
    iget-object v2, v2, Lcom/android/server/wifi/WifiConfigStore;->wifiDisconnectedShortScanIntervalMilli:Ljava/util/concurrent/atomic/AtomicInteger;

    #@1c
    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    #@1f
    move-result v2

    #@20
    .line 8959
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@23
    move-result-object v1

    #@24
    .line 8961
    const-string/jumbo v2, " mLegacyPnoEnabled= "

    #@27
    .line 8959
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2a
    move-result-object v1

    #@2b
    .line 8961
    iget-object v2, p0, Lcom/android/server/wifi/WifiStateMachine$DisconnectingState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@2d
    invoke-static {v2}, Lcom/android/server/wifi/WifiStateMachine;->-get52(Lcom/android/server/wifi/WifiStateMachine;)Z

    #@30
    move-result v2

    #@31
    .line 8959
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@34
    move-result-object v1

    #@35
    .line 8962
    const-string/jumbo v2, " screenOn="

    #@38
    .line 8959
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3b
    move-result-object v1

    #@3c
    .line 8962
    iget-object v2, p0, Lcom/android/server/wifi/WifiStateMachine$DisconnectingState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@3e
    invoke-static {v2}, Lcom/android/server/wifi/WifiStateMachine;->-get72(Lcom/android/server/wifi/WifiStateMachine;)Z

    #@41
    move-result v2

    #@42
    .line 8959
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@45
    move-result-object v1

    #@46
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@49
    move-result-object v1

    #@4a
    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiStateMachine;->logd(Ljava/lang/String;)V

    #@4d
    .line 8971
    :cond_0
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$DisconnectingState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@4f
    iget v1, v0, Lcom/android/server/wifi/WifiStateMachine;->disconnectingWatchdogCount:I

    #@51
    add-int/lit8 v1, v1, 0x1

    #@53
    iput v1, v0, Lcom/android/server/wifi/WifiStateMachine;->disconnectingWatchdogCount:I

    #@55
    .line 8972
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$DisconnectingState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@57
    new-instance v1, Ljava/lang/StringBuilder;

    #@59
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@5c
    const-string/jumbo v2, "Start Disconnecting Watchdog "

    #@5f
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@62
    move-result-object v1

    #@63
    iget-object v2, p0, Lcom/android/server/wifi/WifiStateMachine$DisconnectingState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@65
    iget v2, v2, Lcom/android/server/wifi/WifiStateMachine;->disconnectingWatchdogCount:I

    #@67
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@6a
    move-result-object v1

    #@6b
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@6e
    move-result-object v1

    #@6f
    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiStateMachine;->logd(Ljava/lang/String;)V

    #@72
    .line 8973
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$DisconnectingState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@74
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine$DisconnectingState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@76
    .line 8974
    iget-object v2, p0, Lcom/android/server/wifi/WifiStateMachine$DisconnectingState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@78
    iget v2, v2, Lcom/android/server/wifi/WifiStateMachine;->disconnectingWatchdogCount:I

    #@7a
    .line 8973
    const v3, 0x20060

    #@7d
    .line 8974
    const/4 v4, 0x0

    #@7e
    .line 8973
    invoke-virtual {v1, v3, v2, v4}, Lcom/android/server/wifi/WifiStateMachine;->obtainMessage(III)Landroid/os/Message;

    #@81
    move-result-object v1

    #@82
    .line 8974
    const-wide/16 v2, 0x1388

    #@84
    .line 8973
    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/wifi/WifiStateMachine;->sendMessageDelayed(Landroid/os/Message;J)V

    #@87
    .line 8956
    return-void
.end method

.method public processMessage(Landroid/os/Message;)Z
    .locals 3
    .param p1, "message"    # Landroid/os/Message;

    #@0
    .prologue
    const/4 v2, 0x1

    #@1
    .line 8979
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$DisconnectingState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@3
    invoke-virtual {p0}, Lcom/android/server/wifi/WifiStateMachine$DisconnectingState;->getClass()Ljava/lang/Class;

    #@6
    move-result-object v1

    #@7
    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    #@a
    move-result-object v1

    #@b
    invoke-static {v0, p1, v1}, Lcom/android/server/wifi/WifiStateMachine;->-wrap33(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;Ljava/lang/String;)V

    #@e
    .line 8980
    iget v0, p1, Landroid/os/Message;->what:I

    #@10
    sparse-switch v0, :sswitch_data_0

    #@13
    .line 9007
    const/4 v0, 0x0

    #@14
    return v0

    #@15
    .line 8982
    :sswitch_0
    iget v0, p1, Landroid/os/Message;->arg1:I

    #@17
    if-eq v0, v2, :cond_0

    #@19
    .line 8983
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$DisconnectingState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@1b
    invoke-static {v0, p1}, Lcom/android/server/wifi/WifiStateMachine;->-wrap21(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;)V

    #@1e
    .line 9009
    :cond_0
    :goto_0
    return v2

    #@1f
    .line 8987
    :sswitch_1
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$DisconnectingState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@21
    invoke-static {v0, p1}, Lcom/android/server/wifi/WifiStateMachine;->-wrap21(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;)V

    #@24
    .line 8988
    return v2

    #@25
    .line 8990
    :sswitch_2
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$DisconnectingState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@27
    iget v0, v0, Lcom/android/server/wifi/WifiStateMachine;->disconnectingWatchdogCount:I

    #@29
    iget v1, p1, Landroid/os/Message;->arg1:I

    #@2b
    if-ne v0, v1, :cond_0

    #@2d
    .line 8991
    invoke-static {}, Lcom/android/server/wifi/WifiStateMachine;->-get0()Z

    #@30
    move-result v0

    #@31
    if-eqz v0, :cond_1

    #@33
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$DisconnectingState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@35
    const-string/jumbo v1, "disconnecting watchdog! -> disconnect"

    #@38
    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiStateMachine;->log(Ljava/lang/String;)V

    #@3b
    .line 8992
    :cond_1
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$DisconnectingState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@3d
    invoke-static {v0}, Lcom/android/server/wifi/WifiStateMachine;->-wrap28(Lcom/android/server/wifi/WifiStateMachine;)V

    #@40
    .line 8993
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$DisconnectingState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@42
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine$DisconnectingState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@44
    invoke-static {v1}, Lcom/android/server/wifi/WifiStateMachine;->-get26(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/internal/util/State;

    #@47
    move-result-object v1

    #@48
    invoke-static {v0, v1}, Lcom/android/server/wifi/WifiStateMachine;->-wrap55(Lcom/android/server/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V

    #@4b
    goto :goto_0

    #@4c
    .line 9002
    :sswitch_3
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$DisconnectingState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@4e
    invoke-static {v0, p1}, Lcom/android/server/wifi/WifiStateMachine;->-wrap21(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;)V

    #@51
    .line 9003
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$DisconnectingState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@53
    invoke-static {v0}, Lcom/android/server/wifi/WifiStateMachine;->-wrap28(Lcom/android/server/wifi/WifiStateMachine;)V

    #@56
    .line 9004
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$DisconnectingState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@58
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine$DisconnectingState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@5a
    invoke-static {v1}, Lcom/android/server/wifi/WifiStateMachine;->-get26(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/internal/util/State;

    #@5d
    move-result-object v1

    #@5e
    invoke-static {v0, v1}, Lcom/android/server/wifi/WifiStateMachine;->-wrap55(Lcom/android/server/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V

    #@61
    goto :goto_0

    #@62
    .line 8980
    :sswitch_data_0
    .sparse-switch
        0x20047 -> :sswitch_1
        0x20048 -> :sswitch_0
        0x20060 -> :sswitch_2
        0x24006 -> :sswitch_3
    .end sparse-switch
.end method
