.class Lcom/android/server/wifi/WifiStateMachine$DriverStoppedState;
.super Lcom/android/internal/util/State;
.source "WifiStateMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifi/WifiStateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "DriverStoppedState"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/wifi/WifiStateMachine;


# direct methods
.method constructor <init>(Lcom/android/server/wifi/WifiStateMachine;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/wifi/WifiStateMachine;

    #@0
    .prologue
    .line 6438
    iput-object p1, p0, Lcom/android/server/wifi/WifiStateMachine$DriverStoppedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@2
    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    #@5
    return-void
.end method


# virtual methods
.method public processMessage(Landroid/os/Message;)Z
    .locals 4
    .param p1, "message"    # Landroid/os/Message;

    #@0
    .prologue
    .line 6441
    iget-object v2, p0, Lcom/android/server/wifi/WifiStateMachine$DriverStoppedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@2
    invoke-virtual {p0}, Lcom/android/server/wifi/WifiStateMachine$DriverStoppedState;->getClass()Ljava/lang/Class;

    #@5
    move-result-object v3

    #@6
    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    #@9
    move-result-object v3

    #@a
    invoke-static {v2, p1, v3}, Lcom/android/server/wifi/WifiStateMachine;->-wrap33(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;Ljava/lang/String;)V

    #@d
    .line 6442
    iget v2, p1, Landroid/os/Message;->what:I

    #@f
    sparse-switch v2, :sswitch_data_0

    #@12
    .line 6459
    const/4 v2, 0x0

    #@13
    return v2

    #@14
    .line 6444
    :sswitch_0
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@16
    check-cast v1, Lcom/android/server/wifi/StateChangeResult;

    #@18
    .line 6445
    .local v1, "stateChangeResult":Lcom/android/server/wifi/StateChangeResult;
    iget-object v0, v1, Lcom/android/server/wifi/StateChangeResult;->state:Landroid/net/wifi/SupplicantState;

    #@1a
    .line 6448
    .local v0, "state":Landroid/net/wifi/SupplicantState;
    invoke-static {v0}, Landroid/net/wifi/SupplicantState;->isDriverActive(Landroid/net/wifi/SupplicantState;)Z

    #@1d
    move-result v2

    #@1e
    if-eqz v2, :cond_0

    #@20
    .line 6449
    iget-object v2, p0, Lcom/android/server/wifi/WifiStateMachine$DriverStoppedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@22
    iget-object v3, p0, Lcom/android/server/wifi/WifiStateMachine$DriverStoppedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@24
    invoke-static {v3}, Lcom/android/server/wifi/WifiStateMachine;->-get30(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/internal/util/State;

    #@27
    move-result-object v3

    #@28
    invoke-static {v2, v3}, Lcom/android/server/wifi/WifiStateMachine;->-wrap55(Lcom/android/server/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V

    #@2b
    .line 6461
    .end local v0    # "state":Landroid/net/wifi/SupplicantState;
    .end local v1    # "stateChangeResult":Lcom/android/server/wifi/StateChangeResult;
    :cond_0
    :goto_0
    const/4 v2, 0x1

    #@2c
    return v2

    #@2d
    .line 6453
    :sswitch_1
    iget-object v2, p0, Lcom/android/server/wifi/WifiStateMachine$DriverStoppedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@2f
    invoke-static {v2}, Lcom/android/server/wifi/WifiStateMachine;->-get95(Lcom/android/server/wifi/WifiStateMachine;)Landroid/os/PowerManager$WakeLock;

    #@32
    move-result-object v2

    #@33
    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->acquire()V

    #@36
    .line 6454
    iget-object v2, p0, Lcom/android/server/wifi/WifiStateMachine$DriverStoppedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@38
    invoke-static {v2}, Lcom/android/server/wifi/WifiStateMachine;->-get105(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiNative;

    #@3b
    move-result-object v2

    #@3c
    invoke-virtual {v2}, Lcom/android/server/wifi/WifiNative;->startDriver()Z

    #@3f
    .line 6455
    iget-object v2, p0, Lcom/android/server/wifi/WifiStateMachine$DriverStoppedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@41
    invoke-static {v2}, Lcom/android/server/wifi/WifiStateMachine;->-get95(Lcom/android/server/wifi/WifiStateMachine;)Landroid/os/PowerManager$WakeLock;

    #@44
    move-result-object v2

    #@45
    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->release()V

    #@48
    .line 6456
    iget-object v2, p0, Lcom/android/server/wifi/WifiStateMachine$DriverStoppedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@4a
    iget-object v3, p0, Lcom/android/server/wifi/WifiStateMachine$DriverStoppedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@4c
    invoke-static {v3}, Lcom/android/server/wifi/WifiStateMachine;->-get31(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/internal/util/State;

    #@4f
    move-result-object v3

    #@50
    invoke-static {v2, v3}, Lcom/android/server/wifi/WifiStateMachine;->-wrap55(Lcom/android/server/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V

    #@53
    goto :goto_0

    #@54
    .line 6442
    :sswitch_data_0
    .sparse-switch
        0x2000d -> :sswitch_1
        0x24006 -> :sswitch_0
    .end sparse-switch
.end method
