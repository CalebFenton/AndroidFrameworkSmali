.class Lcom/android/server/wifi/WifiWatchdogStateMachine$DefaultState;
.super Lcom/android/internal/util/State;
.source "WifiWatchdogStateMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifi/WifiWatchdogStateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "DefaultState"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;


# direct methods
.method constructor <init>(Lcom/android/server/wifi/WifiWatchdogStateMachine;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/wifi/WifiWatchdogStateMachine;

    #@0
    .prologue
    .line 445
    iput-object p1, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$DefaultState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

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
    .line 447
    return-void
.end method

.method public processMessage(Landroid/os/Message;)Z
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    #@0
    .prologue
    const/4 v3, 0x1

    #@1
    .line 453
    iget v0, p1, Landroid/os/Message;->what:I

    #@3
    sparse-switch v0, :sswitch_data_0

    #@6
    .line 477
    iget-object v0, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$DefaultState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    #@8
    new-instance v1, Ljava/lang/StringBuilder;

    #@a
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@d
    const-string/jumbo v2, "Unhandled message "

    #@10
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@13
    move-result-object v1

    #@14
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@17
    move-result-object v1

    #@18
    const-string/jumbo v2, " in state "

    #@1b
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1e
    move-result-object v1

    #@1f
    iget-object v2, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$DefaultState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    #@21
    invoke-static {v2}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->-wrap1(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Lcom/android/internal/util/IState;

    #@24
    move-result-object v2

    #@25
    invoke-interface {v2}, Lcom/android/internal/util/IState;->getName()Ljava/lang/String;

    #@28
    move-result-object v2

    #@29
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2c
    move-result-object v1

    #@2d
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@30
    move-result-object v1

    #@31
    invoke-static {v0, v1}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->-wrap3(Lcom/android/server/wifi/WifiWatchdogStateMachine;Ljava/lang/String;)V

    #@34
    .line 480
    :goto_0
    :sswitch_0
    return v3

    #@35
    .line 455
    :sswitch_1
    iget-object v0, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$DefaultState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    #@37
    invoke-static {v0}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->-wrap7(Lcom/android/server/wifi/WifiWatchdogStateMachine;)V

    #@3a
    goto :goto_0

    #@3b
    .line 459
    :sswitch_2
    iget-object v0, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$DefaultState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    #@3d
    iget-object v1, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$DefaultState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    #@3f
    iget v2, p1, Landroid/os/Message;->arg1:I

    #@41
    invoke-static {v1, v2}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->-wrap2(Lcom/android/server/wifi/WifiWatchdogStateMachine;I)I

    #@44
    move-result v1

    #@45
    invoke-static {v0, v1}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->-set1(Lcom/android/server/wifi/WifiWatchdogStateMachine;I)I

    #@48
    goto :goto_0

    #@49
    .line 471
    :sswitch_3
    iget-object v0, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$DefaultState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    #@4b
    invoke-static {v0, v3}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->-set2(Lcom/android/server/wifi/WifiWatchdogStateMachine;Z)Z

    #@4e
    goto :goto_0

    #@4f
    .line 474
    :sswitch_4
    iget-object v0, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$DefaultState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    #@51
    const/4 v1, 0x0

    #@52
    invoke-static {v0, v1}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->-set2(Lcom/android/server/wifi/WifiWatchdogStateMachine;Z)Z

    #@55
    goto :goto_0

    #@56
    .line 453
    :sswitch_data_0
    .sparse-switch
        0x21002 -> :sswitch_0
        0x21003 -> :sswitch_2
        0x21004 -> :sswitch_0
        0x21005 -> :sswitch_0
        0x21006 -> :sswitch_1
        0x21007 -> :sswitch_0
        0x21008 -> :sswitch_3
        0x21009 -> :sswitch_4
        0x2100b -> :sswitch_0
        0x25015 -> :sswitch_0
        0x25016 -> :sswitch_0
    .end sparse-switch
.end method
