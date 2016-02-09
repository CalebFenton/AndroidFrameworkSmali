.class Landroid/net/DhcpStateMachine$StoppedState;
.super Lcom/android/internal/util/State;
.source "DhcpStateMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/DhcpStateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "StoppedState"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/net/DhcpStateMachine;


# direct methods
.method constructor <init>(Landroid/net/DhcpStateMachine;)V
    .locals 0
    .param p1, "this$0"    # Landroid/net/DhcpStateMachine;

    #@0
    .prologue
    .line 205
    iput-object p1, p0, Landroid/net/DhcpStateMachine$StoppedState;->this$0:Landroid/net/DhcpStateMachine;

    #@2
    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    #@5
    return-void
.end method


# virtual methods
.method public enter()V
    .locals 3

    #@0
    .prologue
    .line 209
    iget-object v0, p0, Landroid/net/DhcpStateMachine$StoppedState;->this$0:Landroid/net/DhcpStateMachine;

    #@2
    invoke-static {v0}, Landroid/net/DhcpStateMachine;->-get6(Landroid/net/DhcpStateMachine;)Ljava/lang/String;

    #@5
    move-result-object v0

    #@6
    invoke-static {v0}, Landroid/net/NetworkUtils;->stopDhcp(Ljava/lang/String;)Z

    #@9
    move-result v0

    #@a
    if-nez v0, :cond_0

    #@c
    .line 210
    const-string/jumbo v0, "DhcpStateMachine"

    #@f
    new-instance v1, Ljava/lang/StringBuilder;

    #@11
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@14
    const-string/jumbo v2, "Failed to stop Dhcp on "

    #@17
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1a
    move-result-object v1

    #@1b
    iget-object v2, p0, Landroid/net/DhcpStateMachine$StoppedState;->this$0:Landroid/net/DhcpStateMachine;

    #@1d
    invoke-static {v2}, Landroid/net/DhcpStateMachine;->-get6(Landroid/net/DhcpStateMachine;)Ljava/lang/String;

    #@20
    move-result-object v2

    #@21
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@24
    move-result-object v1

    #@25
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@28
    move-result-object v1

    #@29
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@2c
    .line 212
    :cond_0
    iget-object v0, p0, Landroid/net/DhcpStateMachine$StoppedState;->this$0:Landroid/net/DhcpStateMachine;

    #@2e
    const/4 v1, 0x0

    #@2f
    invoke-static {v0, v1}, Landroid/net/DhcpStateMachine;->-set0(Landroid/net/DhcpStateMachine;Landroid/net/DhcpResults;)Landroid/net/DhcpResults;

    #@32
    .line 207
    return-void
.end method

.method public processMessage(Landroid/os/Message;)Z
    .locals 3
    .param p1, "message"    # Landroid/os/Message;

    #@0
    .prologue
    .line 217
    const/4 v0, 0x1

    #@1
    .line 219
    .local v0, "retValue":Z
    iget v1, p1, Landroid/os/Message;->what:I

    #@3
    packed-switch v1, :pswitch_data_0

    #@6
    .line 235
    const/4 v0, 0x0

    #@7
    .line 238
    :cond_0
    :goto_0
    :pswitch_0
    return v0

    #@8
    .line 221
    :pswitch_1
    iget-object v1, p0, Landroid/net/DhcpStateMachine$StoppedState;->this$0:Landroid/net/DhcpStateMachine;

    #@a
    invoke-static {v1}, Landroid/net/DhcpStateMachine;->-get8(Landroid/net/DhcpStateMachine;)Z

    #@d
    move-result v1

    #@e
    if-eqz v1, :cond_1

    #@10
    .line 223
    iget-object v1, p0, Landroid/net/DhcpStateMachine$StoppedState;->this$0:Landroid/net/DhcpStateMachine;

    #@12
    invoke-static {v1}, Landroid/net/DhcpStateMachine;->-get3(Landroid/net/DhcpStateMachine;)Lcom/android/internal/util/StateMachine;

    #@15
    move-result-object v1

    #@16
    const v2, 0x30004

    #@19
    invoke-virtual {v1, v2}, Lcom/android/internal/util/StateMachine;->sendMessage(I)V

    #@1c
    .line 224
    iget-object v1, p0, Landroid/net/DhcpStateMachine$StoppedState;->this$0:Landroid/net/DhcpStateMachine;

    #@1e
    iget-object v2, p0, Landroid/net/DhcpStateMachine$StoppedState;->this$0:Landroid/net/DhcpStateMachine;

    #@20
    invoke-static {v2}, Landroid/net/DhcpStateMachine;->-get12(Landroid/net/DhcpStateMachine;)Lcom/android/internal/util/State;

    #@23
    move-result-object v2

    #@24
    invoke-static {v1, v2}, Landroid/net/DhcpStateMachine;->-wrap4(Landroid/net/DhcpStateMachine;Lcom/android/internal/util/IState;)V

    #@27
    goto :goto_0

    #@28
    .line 226
    :cond_1
    iget-object v1, p0, Landroid/net/DhcpStateMachine$StoppedState;->this$0:Landroid/net/DhcpStateMachine;

    #@2a
    invoke-static {v1}, Landroid/net/DhcpStateMachine;->-wrap2(Landroid/net/DhcpStateMachine;)Z

    #@2d
    move-result v1

    #@2e
    if-eqz v1, :cond_0

    #@30
    .line 227
    iget-object v1, p0, Landroid/net/DhcpStateMachine$StoppedState;->this$0:Landroid/net/DhcpStateMachine;

    #@32
    iget-object v2, p0, Landroid/net/DhcpStateMachine$StoppedState;->this$0:Landroid/net/DhcpStateMachine;

    #@34
    invoke-static {v2}, Landroid/net/DhcpStateMachine;->-get9(Landroid/net/DhcpStateMachine;)Lcom/android/internal/util/State;

    #@37
    move-result-object v2

    #@38
    invoke-static {v1, v2}, Landroid/net/DhcpStateMachine;->-wrap4(Landroid/net/DhcpStateMachine;Lcom/android/internal/util/IState;)V

    #@3b
    goto :goto_0

    #@3c
    .line 219
    :pswitch_data_0
    .packed-switch 0x30001
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
