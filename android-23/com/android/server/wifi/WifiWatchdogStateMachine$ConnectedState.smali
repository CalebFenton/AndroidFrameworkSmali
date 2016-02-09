.class Lcom/android/server/wifi/WifiWatchdogStateMachine$ConnectedState;
.super Lcom/android/internal/util/State;
.source "WifiWatchdogStateMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifi/WifiWatchdogStateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ConnectedState"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;


# direct methods
.method constructor <init>(Lcom/android/server/wifi/WifiWatchdogStateMachine;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/wifi/WifiWatchdogStateMachine;

    #@0
    .prologue
    .line 683
    iput-object p1, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$ConnectedState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    #@2
    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    #@5
    return-void
.end method


# virtual methods
.method public enter()V
    .locals 0

    #@0
    .prologue
    .line 685
    return-void
.end method

.method public processMessage(Landroid/os/Message;)Z
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    #@0
    .prologue
    .line 691
    iget v0, p1, Landroid/os/Message;->what:I

    #@2
    packed-switch v0, :pswitch_data_0

    #@5
    .line 701
    const/4 v0, 0x0

    #@6
    return v0

    #@7
    .line 693
    :pswitch_0
    iget-object v0, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$ConnectedState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    #@9
    invoke-static {v0}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->-wrap7(Lcom/android/server/wifi/WifiWatchdogStateMachine;)V

    #@c
    .line 694
    iget-object v0, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$ConnectedState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    #@e
    invoke-static {v0}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->-get10(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Z

    #@11
    move-result v0

    #@12
    if-eqz v0, :cond_0

    #@14
    .line 695
    iget-object v0, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$ConnectedState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    #@16
    iget-object v1, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$ConnectedState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    #@18
    invoke-static {v1}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->-get9(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Lcom/android/server/wifi/WifiWatchdogStateMachine$OnlineWatchState;

    #@1b
    move-result-object v1

    #@1c
    invoke-static {v0, v1}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->-wrap5(Lcom/android/server/wifi/WifiWatchdogStateMachine;Lcom/android/internal/util/IState;)V

    #@1f
    .line 699
    :goto_0
    const/4 v0, 0x1

    #@20
    return v0

    #@21
    .line 697
    :cond_0
    iget-object v0, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$ConnectedState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    #@23
    iget-object v1, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$ConnectedState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    #@25
    invoke-static {v1}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->-get8(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Lcom/android/server/wifi/WifiWatchdogStateMachine$OnlineState;

    #@28
    move-result-object v1

    #@29
    invoke-static {v0, v1}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->-wrap5(Lcom/android/server/wifi/WifiWatchdogStateMachine;Lcom/android/internal/util/IState;)V

    #@2c
    goto :goto_0

    #@2d
    .line 691
    nop

    #@2e
    :pswitch_data_0
    .packed-switch 0x21006
        :pswitch_0
    .end packed-switch
.end method
