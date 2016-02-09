.class Landroid/net/DhcpStateMachine$RunningState;
.super Lcom/android/internal/util/State;
.source "DhcpStateMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/DhcpStateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "RunningState"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/net/DhcpStateMachine;


# direct methods
.method constructor <init>(Landroid/net/DhcpStateMachine;)V
    .locals 0
    .param p1, "this$0"    # Landroid/net/DhcpStateMachine;

    #@0
    .prologue
    .line 323
    iput-object p1, p0, Landroid/net/DhcpStateMachine$RunningState;->this$0:Landroid/net/DhcpStateMachine;

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
    .line 325
    return-void
.end method

.method public processMessage(Landroid/os/Message;)Z
    .locals 3
    .param p1, "message"    # Landroid/os/Message;

    #@0
    .prologue
    .line 331
    const/4 v0, 0x1

    #@1
    .line 333
    .local v0, "retValue":Z
    iget v1, p1, Landroid/os/Message;->what:I

    #@3
    packed-switch v1, :pswitch_data_0

    #@6
    .line 355
    const/4 v0, 0x0

    #@7
    .line 357
    :goto_0
    :pswitch_0
    return v0

    #@8
    .line 335
    :pswitch_1
    iget-object v1, p0, Landroid/net/DhcpStateMachine$RunningState;->this$0:Landroid/net/DhcpStateMachine;

    #@a
    invoke-static {v1}, Landroid/net/DhcpStateMachine;->-get0(Landroid/net/DhcpStateMachine;)Landroid/app/AlarmManager;

    #@d
    move-result-object v1

    #@e
    iget-object v2, p0, Landroid/net/DhcpStateMachine$RunningState;->this$0:Landroid/net/DhcpStateMachine;

    #@10
    invoke-static {v2}, Landroid/net/DhcpStateMachine;->-get5(Landroid/net/DhcpStateMachine;)Landroid/app/PendingIntent;

    #@13
    move-result-object v2

    #@14
    invoke-virtual {v1, v2}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    #@17
    .line 336
    iget-object v1, p0, Landroid/net/DhcpStateMachine$RunningState;->this$0:Landroid/net/DhcpStateMachine;

    #@19
    iget-object v2, p0, Landroid/net/DhcpStateMachine$RunningState;->this$0:Landroid/net/DhcpStateMachine;

    #@1b
    invoke-static {v2}, Landroid/net/DhcpStateMachine;->-get10(Landroid/net/DhcpStateMachine;)Lcom/android/internal/util/State;

    #@1e
    move-result-object v2

    #@1f
    invoke-static {v1, v2}, Landroid/net/DhcpStateMachine;->-wrap4(Landroid/net/DhcpStateMachine;Lcom/android/internal/util/IState;)V

    #@22
    goto :goto_0

    #@23
    .line 339
    :pswitch_2
    iget-object v1, p0, Landroid/net/DhcpStateMachine$RunningState;->this$0:Landroid/net/DhcpStateMachine;

    #@25
    invoke-static {v1}, Landroid/net/DhcpStateMachine;->-get8(Landroid/net/DhcpStateMachine;)Z

    #@28
    move-result v1

    #@29
    if-eqz v1, :cond_0

    #@2b
    .line 341
    iget-object v1, p0, Landroid/net/DhcpStateMachine$RunningState;->this$0:Landroid/net/DhcpStateMachine;

    #@2d
    invoke-static {v1}, Landroid/net/DhcpStateMachine;->-get3(Landroid/net/DhcpStateMachine;)Lcom/android/internal/util/StateMachine;

    #@30
    move-result-object v1

    #@31
    const v2, 0x30004

    #@34
    invoke-virtual {v1, v2}, Lcom/android/internal/util/StateMachine;->sendMessage(I)V

    #@37
    .line 342
    iget-object v1, p0, Landroid/net/DhcpStateMachine$RunningState;->this$0:Landroid/net/DhcpStateMachine;

    #@39
    iget-object v2, p0, Landroid/net/DhcpStateMachine$RunningState;->this$0:Landroid/net/DhcpStateMachine;

    #@3b
    invoke-static {v2}, Landroid/net/DhcpStateMachine;->-get11(Landroid/net/DhcpStateMachine;)Lcom/android/internal/util/State;

    #@3e
    move-result-object v2

    #@3f
    invoke-static {v1, v2}, Landroid/net/DhcpStateMachine;->-wrap4(Landroid/net/DhcpStateMachine;Lcom/android/internal/util/IState;)V

    #@42
    goto :goto_0

    #@43
    .line 345
    :cond_0
    iget-object v1, p0, Landroid/net/DhcpStateMachine$RunningState;->this$0:Landroid/net/DhcpStateMachine;

    #@45
    invoke-static {v1}, Landroid/net/DhcpStateMachine;->-wrap1(Landroid/net/DhcpStateMachine;)Z

    #@48
    move-result v1

    #@49
    if-nez v1, :cond_1

    #@4b
    .line 346
    iget-object v1, p0, Landroid/net/DhcpStateMachine$RunningState;->this$0:Landroid/net/DhcpStateMachine;

    #@4d
    iget-object v2, p0, Landroid/net/DhcpStateMachine$RunningState;->this$0:Landroid/net/DhcpStateMachine;

    #@4f
    invoke-static {v2}, Landroid/net/DhcpStateMachine;->-get10(Landroid/net/DhcpStateMachine;)Lcom/android/internal/util/State;

    #@52
    move-result-object v2

    #@53
    invoke-static {v1, v2}, Landroid/net/DhcpStateMachine;->-wrap4(Landroid/net/DhcpStateMachine;Lcom/android/internal/util/IState;)V

    #@56
    .line 348
    :cond_1
    iget-object v1, p0, Landroid/net/DhcpStateMachine$RunningState;->this$0:Landroid/net/DhcpStateMachine;

    #@58
    invoke-static {v1}, Landroid/net/DhcpStateMachine;->-get4(Landroid/net/DhcpStateMachine;)Landroid/os/PowerManager$WakeLock;

    #@5b
    move-result-object v1

    #@5c
    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->release()V

    #@5f
    goto :goto_0

    #@60
    .line 333
    :pswitch_data_0
    .packed-switch 0x30001
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
