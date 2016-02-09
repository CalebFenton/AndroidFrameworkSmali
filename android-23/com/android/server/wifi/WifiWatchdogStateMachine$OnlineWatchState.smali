.class Lcom/android/server/wifi/WifiWatchdogStateMachine$OnlineWatchState;
.super Lcom/android/internal/util/State;
.source "WifiWatchdogStateMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifi/WifiWatchdogStateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "OnlineWatchState"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;


# direct methods
.method constructor <init>(Lcom/android/server/wifi/WifiWatchdogStateMachine;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/wifi/WifiWatchdogStateMachine;

    #@0
    .prologue
    .line 708
    iput-object p1, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$OnlineWatchState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    #@2
    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    #@5
    return-void
.end method

.method private handleRssiChange()V
    .locals 2

    #@0
    .prologue
    .line 721
    iget-object v0, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$OnlineWatchState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    #@2
    invoke-static {v0}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->-get4(Lcom/android/server/wifi/WifiWatchdogStateMachine;)I

    #@5
    move-result v0

    #@6
    const/4 v1, 0x4

    #@7
    if-gt v0, v1, :cond_0

    #@9
    iget-object v0, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$OnlineWatchState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    #@b
    invoke-static {v0}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->-get2(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Lcom/android/server/wifi/WifiWatchdogStateMachine$BssidStatistics;

    #@e
    move-result-object v0

    #@f
    if-eqz v0, :cond_0

    #@11
    .line 722
    iget-object v0, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$OnlineWatchState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    #@13
    iget-object v1, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$OnlineWatchState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    #@15
    invoke-static {v1}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->-get6(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Lcom/android/server/wifi/WifiWatchdogStateMachine$LinkMonitoringState;

    #@18
    move-result-object v1

    #@19
    invoke-static {v0, v1}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->-wrap5(Lcom/android/server/wifi/WifiWatchdogStateMachine;Lcom/android/internal/util/IState;)V

    #@1c
    .line 720
    :cond_0
    return-void
.end method


# virtual methods
.method public enter()V
    .locals 2

    #@0
    .prologue
    .line 712
    iget-object v0, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$OnlineWatchState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    #@2
    invoke-static {v0}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->-get10(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Z

    #@5
    move-result v0

    #@6
    if-eqz v0, :cond_0

    #@8
    .line 714
    invoke-direct {p0}, Lcom/android/server/wifi/WifiWatchdogStateMachine$OnlineWatchState;->handleRssiChange()V

    #@b
    .line 710
    :goto_0
    return-void

    #@c
    .line 716
    :cond_0
    iget-object v0, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$OnlineWatchState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    #@e
    iget-object v1, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$OnlineWatchState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    #@10
    invoke-static {v1}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->-get8(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Lcom/android/server/wifi/WifiWatchdogStateMachine$OnlineState;

    #@13
    move-result-object v1

    #@14
    invoke-static {v0, v1}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->-wrap5(Lcom/android/server/wifi/WifiWatchdogStateMachine;Lcom/android/internal/util/IState;)V

    #@17
    goto :goto_0
.end method

.method public processMessage(Landroid/os/Message;)Z
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    #@0
    .prologue
    .line 730
    iget v0, p1, Landroid/os/Message;->what:I

    #@2
    packed-switch v0, :pswitch_data_0

    #@5
    .line 736
    const/4 v0, 0x0

    #@6
    return v0

    #@7
    .line 732
    :pswitch_0
    iget-object v0, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$OnlineWatchState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    #@9
    iget-object v1, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$OnlineWatchState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    #@b
    iget v2, p1, Landroid/os/Message;->arg1:I

    #@d
    invoke-static {v1, v2}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->-wrap2(Lcom/android/server/wifi/WifiWatchdogStateMachine;I)I

    #@10
    move-result v1

    #@11
    invoke-static {v0, v1}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->-set1(Lcom/android/server/wifi/WifiWatchdogStateMachine;I)I

    #@14
    .line 733
    invoke-direct {p0}, Lcom/android/server/wifi/WifiWatchdogStateMachine$OnlineWatchState;->handleRssiChange()V

    #@17
    .line 738
    const/4 v0, 0x1

    #@18
    return v0

    #@19
    .line 730
    nop

    #@1a
    :pswitch_data_0
    .packed-switch 0x21003
        :pswitch_0
    .end packed-switch
.end method
