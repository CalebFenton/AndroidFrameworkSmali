.class Lcom/android/server/wifi/RttService$RttServiceImpl$RttStateMachine$DefaultState;
.super Lcom/android/internal/util/State;
.source "RttService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifi/RttService$RttServiceImpl$RttStateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "DefaultState"
.end annotation


# instance fields
.field final synthetic this$2:Lcom/android/server/wifi/RttService$RttServiceImpl$RttStateMachine;


# direct methods
.method constructor <init>(Lcom/android/server/wifi/RttService$RttServiceImpl$RttStateMachine;)V
    .locals 0
    .param p1, "this$2"    # Lcom/android/server/wifi/RttService$RttServiceImpl$RttStateMachine;

    #@0
    .prologue
    .line 249
    iput-object p1, p0, Lcom/android/server/wifi/RttService$RttServiceImpl$RttStateMachine$DefaultState;->this$2:Lcom/android/server/wifi/RttService$RttServiceImpl$RttStateMachine;

    #@2
    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    #@5
    return-void
.end method


# virtual methods
.method public processMessage(Landroid/os/Message;)Z
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    #@0
    .prologue
    const/4 v3, 0x1

    #@1
    .line 252
    const-string/jumbo v0, "RttService"

    #@4
    new-instance v1, Ljava/lang/StringBuilder;

    #@6
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@9
    const-string/jumbo v2, "DefaultState got"

    #@c
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@f
    move-result-object v1

    #@10
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@13
    move-result-object v1

    #@14
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@17
    move-result-object v1

    #@18
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@1b
    .line 253
    iget v0, p1, Landroid/os/Message;->what:I

    #@1d
    sparse-switch v0, :sswitch_data_0

    #@20
    .line 266
    const/4 v0, 0x0

    #@21
    return v0

    #@22
    .line 255
    :sswitch_0
    iget-object v0, p0, Lcom/android/server/wifi/RttService$RttServiceImpl$RttStateMachine$DefaultState;->this$2:Lcom/android/server/wifi/RttService$RttServiceImpl$RttStateMachine;

    #@24
    iget-object v1, p0, Lcom/android/server/wifi/RttService$RttServiceImpl$RttStateMachine$DefaultState;->this$2:Lcom/android/server/wifi/RttService$RttServiceImpl$RttStateMachine;

    #@26
    iget-object v1, v1, Lcom/android/server/wifi/RttService$RttServiceImpl$RttStateMachine;->mEnabledState:Lcom/android/server/wifi/RttService$RttServiceImpl$RttStateMachine$EnabledState;

    #@28
    invoke-static {v0, v1}, Lcom/android/server/wifi/RttService$RttServiceImpl$RttStateMachine;->-wrap1(Lcom/android/server/wifi/RttService$RttServiceImpl$RttStateMachine;Lcom/android/internal/util/IState;)V

    #@2b
    .line 268
    :goto_0
    return v3

    #@2c
    .line 258
    :sswitch_1
    iget-object v0, p0, Lcom/android/server/wifi/RttService$RttServiceImpl$RttStateMachine$DefaultState;->this$2:Lcom/android/server/wifi/RttService$RttServiceImpl$RttStateMachine;

    #@2e
    invoke-static {v0, p1}, Lcom/android/server/wifi/RttService$RttServiceImpl$RttStateMachine;->-wrap0(Lcom/android/server/wifi/RttService$RttServiceImpl$RttStateMachine;Landroid/os/Message;)V

    #@31
    goto :goto_0

    #@32
    .line 261
    :sswitch_2
    iget-object v0, p0, Lcom/android/server/wifi/RttService$RttServiceImpl$RttStateMachine$DefaultState;->this$2:Lcom/android/server/wifi/RttService$RttServiceImpl$RttStateMachine;

    #@34
    iget-object v0, v0, Lcom/android/server/wifi/RttService$RttServiceImpl$RttStateMachine;->this$1:Lcom/android/server/wifi/RttService$RttServiceImpl;

    #@36
    const-string/jumbo v1, "Try later"

    #@39
    const/4 v2, -0x2

    #@3a
    invoke-virtual {v0, p1, v2, v1}, Lcom/android/server/wifi/RttService$RttServiceImpl;->replyFailed(Landroid/os/Message;ILjava/lang/String;)V

    #@3d
    goto :goto_0

    #@3e
    .line 264
    :sswitch_3
    return v3

    #@3f
    .line 253
    nop

    #@40
    :sswitch_data_0
    .sparse-switch
        0x27200 -> :sswitch_2
        0x27201 -> :sswitch_3
        0x27300 -> :sswitch_0
        0x27302 -> :sswitch_1
    .end sparse-switch
.end method
