.class Lcom/android/server/wifi/RttService$RttServiceImpl$RttStateMachine$ResponderEnabledState;
.super Lcom/android/internal/util/State;
.source "RttService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifi/RttService$RttServiceImpl$RttStateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ResponderEnabledState"
.end annotation


# instance fields
.field final synthetic this$2:Lcom/android/server/wifi/RttService$RttServiceImpl$RttStateMachine;


# direct methods
.method constructor <init>(Lcom/android/server/wifi/RttService$RttServiceImpl$RttStateMachine;)V
    .locals 0
    .param p1, "this$2"    # Lcom/android/server/wifi/RttService$RttServiceImpl$RttStateMachine;

    #@0
    .prologue
    .line 469
    iput-object p1, p0, Lcom/android/server/wifi/RttService$RttServiceImpl$RttStateMachine$ResponderEnabledState;->this$2:Lcom/android/server/wifi/RttService$RttServiceImpl$RttStateMachine;

    #@2
    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    #@5
    return-void
.end method


# virtual methods
.method public processMessage(Landroid/os/Message;)Z
    .locals 6
    .param p1, "msg"    # Landroid/os/Message;

    #@0
    .prologue
    const/4 v5, 0x1

    #@1
    .line 472
    const-string/jumbo v2, "RttService"

    #@4
    new-instance v3, Ljava/lang/StringBuilder;

    #@6
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@9
    const-string/jumbo v4, "ResponderEnabledState got "

    #@c
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@f
    move-result-object v3

    #@10
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@13
    move-result-object v3

    #@14
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@17
    move-result-object v3

    #@18
    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@1b
    .line 473
    iget-object v2, p0, Lcom/android/server/wifi/RttService$RttServiceImpl$RttStateMachine$ResponderEnabledState;->this$2:Lcom/android/server/wifi/RttService$RttServiceImpl$RttStateMachine;

    #@1d
    iget-object v2, v2, Lcom/android/server/wifi/RttService$RttServiceImpl$RttStateMachine;->this$1:Lcom/android/server/wifi/RttService$RttServiceImpl;

    #@1f
    invoke-static {v2}, Lcom/android/server/wifi/RttService$RttServiceImpl;->-get0(Lcom/android/server/wifi/RttService$RttServiceImpl;)Ljava/util/HashMap;

    #@22
    move-result-object v2

    #@23
    iget-object v3, p1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    #@25
    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@28
    move-result-object v0

    #@29
    check-cast v0, Lcom/android/server/wifi/RttService$RttServiceImpl$ClientInfo;

    #@2b
    .line 474
    .local v0, "ci":Lcom/android/server/wifi/RttService$RttServiceImpl$ClientInfo;
    iget v1, p1, Landroid/os/Message;->arg2:I

    #@2d
    .line 475
    .local v1, "key":I
    iget v2, p1, Landroid/os/Message;->what:I

    #@2f
    packed-switch v2, :pswitch_data_0

    #@32
    .line 502
    :pswitch_0
    const/4 v2, 0x0

    #@33
    return v2

    #@34
    .line 478
    :pswitch_1
    invoke-virtual {v0, v1}, Lcom/android/server/wifi/RttService$RttServiceImpl$ClientInfo;->addResponderRequest(I)V

    #@37
    .line 479
    iget-object v2, p0, Lcom/android/server/wifi/RttService$RttServiceImpl$RttStateMachine$ResponderEnabledState;->this$2:Lcom/android/server/wifi/RttService$RttServiceImpl$RttStateMachine;

    #@39
    iget-object v2, v2, Lcom/android/server/wifi/RttService$RttServiceImpl$RttStateMachine;->mResponderConfig:Landroid/net/wifi/RttManager$ResponderConfig;

    #@3b
    invoke-virtual {v0, v1, v2}, Lcom/android/server/wifi/RttService$RttServiceImpl$ClientInfo;->reportResponderEnableSucceed(ILandroid/net/wifi/RttManager$ResponderConfig;)V

    #@3e
    .line 480
    return v5

    #@3f
    .line 482
    :pswitch_2
    if-eqz v0, :cond_0

    #@41
    .line 483
    invoke-virtual {v0, v1}, Lcom/android/server/wifi/RttService$RttServiceImpl$ClientInfo;->removeResponderRequest(I)V

    #@44
    .line 486
    :cond_0
    iget-object v2, p0, Lcom/android/server/wifi/RttService$RttServiceImpl$RttStateMachine$ResponderEnabledState;->this$2:Lcom/android/server/wifi/RttService$RttServiceImpl$RttStateMachine;

    #@46
    invoke-static {v2}, Lcom/android/server/wifi/RttService$RttServiceImpl$RttStateMachine;->-wrap0(Lcom/android/server/wifi/RttService$RttServiceImpl$RttStateMachine;)Z

    #@49
    move-result v2

    #@4a
    if-nez v2, :cond_2

    #@4c
    .line 487
    iget-object v2, p0, Lcom/android/server/wifi/RttService$RttServiceImpl$RttStateMachine$ResponderEnabledState;->this$2:Lcom/android/server/wifi/RttService$RttServiceImpl$RttStateMachine;

    #@4e
    iget-object v2, v2, Lcom/android/server/wifi/RttService$RttServiceImpl$RttStateMachine;->this$1:Lcom/android/server/wifi/RttService$RttServiceImpl;

    #@50
    invoke-static {v2}, Lcom/android/server/wifi/RttService$RttServiceImpl;->-get4(Lcom/android/server/wifi/RttService$RttServiceImpl;)Lcom/android/server/wifi/WifiNative;

    #@53
    move-result-object v2

    #@54
    invoke-virtual {v2}, Lcom/android/server/wifi/WifiNative;->disableRttResponder()Z

    #@57
    move-result v2

    #@58
    if-nez v2, :cond_1

    #@5a
    .line 488
    const-string/jumbo v2, "RttService"

    #@5d
    const-string/jumbo v3, "disable responder failed"

    #@60
    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@63
    .line 490
    :cond_1
    const-string/jumbo v2, "RttService"

    #@66
    const-string/jumbo v3, "mWifiNative.disableRttResponder called"

    #@69
    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@6c
    .line 491
    iget-object v2, p0, Lcom/android/server/wifi/RttService$RttServiceImpl$RttStateMachine$ResponderEnabledState;->this$2:Lcom/android/server/wifi/RttService$RttServiceImpl$RttStateMachine;

    #@6e
    iget-object v3, p0, Lcom/android/server/wifi/RttService$RttServiceImpl$RttStateMachine$ResponderEnabledState;->this$2:Lcom/android/server/wifi/RttService$RttServiceImpl$RttStateMachine;

    #@70
    iget-object v3, v3, Lcom/android/server/wifi/RttService$RttServiceImpl$RttStateMachine;->mEnabledState:Lcom/android/server/wifi/RttService$RttServiceImpl$RttStateMachine$EnabledState;

    #@72
    invoke-static {v2, v3}, Lcom/android/server/wifi/RttService$RttServiceImpl$RttStateMachine;->-wrap2(Lcom/android/server/wifi/RttService$RttServiceImpl$RttStateMachine;Lcom/android/internal/util/IState;)V

    #@75
    .line 493
    :cond_2
    return v5

    #@76
    .line 497
    :pswitch_3
    iget-object v2, p0, Lcom/android/server/wifi/RttService$RttServiceImpl$RttStateMachine$ResponderEnabledState;->this$2:Lcom/android/server/wifi/RttService$RttServiceImpl$RttStateMachine;

    #@78
    iget-object v2, v2, Lcom/android/server/wifi/RttService$RttServiceImpl$RttStateMachine;->this$1:Lcom/android/server/wifi/RttService$RttServiceImpl;

    #@7a
    .line 499
    const-string/jumbo v3, "Initiator not allowed when responder is turned on"

    #@7d
    .line 498
    const/4 v4, -0x6

    #@7e
    .line 497
    invoke-virtual {v2, p1, v4, v3}, Lcom/android/server/wifi/RttService$RttServiceImpl;->replyFailed(Landroid/os/Message;ILjava/lang/String;)V

    #@81
    .line 500
    return v5

    #@82
    .line 475
    :pswitch_data_0
    .packed-switch 0x27200
        :pswitch_3
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
