.class Lcom/android/internal/telephony/InboundSmsHandler$DeliveringState;
.super Lcom/android/internal/util/State;
.source "InboundSmsHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/InboundSmsHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "DeliveringState"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/InboundSmsHandler;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/InboundSmsHandler;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/internal/telephony/InboundSmsHandler;

    #@0
    .prologue
    .line 389
    iput-object p1, p0, Lcom/android/internal/telephony/InboundSmsHandler$DeliveringState;->this$0:Lcom/android/internal/telephony/InboundSmsHandler;

    #@2
    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    #@5
    return-void
.end method


# virtual methods
.method public enter()V
    .locals 2

    #@0
    .prologue
    .line 392
    iget-object v0, p0, Lcom/android/internal/telephony/InboundSmsHandler$DeliveringState;->this$0:Lcom/android/internal/telephony/InboundSmsHandler;

    #@2
    const-string/jumbo v1, "entering Delivering state"

    #@5
    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/InboundSmsHandler;->log(Ljava/lang/String;)V

    #@8
    .line 391
    return-void
.end method

.method public exit()V
    .locals 2

    #@0
    .prologue
    .line 397
    iget-object v0, p0, Lcom/android/internal/telephony/InboundSmsHandler$DeliveringState;->this$0:Lcom/android/internal/telephony/InboundSmsHandler;

    #@2
    const-string/jumbo v1, "leaving Delivering state"

    #@5
    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/InboundSmsHandler;->log(Ljava/lang/String;)V

    #@8
    .line 396
    return-void
.end method

.method public processMessage(Landroid/os/Message;)Z
    .locals 6
    .param p1, "msg"    # Landroid/os/Message;

    #@0
    .prologue
    const/4 v5, 0x4

    #@1
    const/4 v4, 0x1

    #@2
    .line 402
    iget-object v1, p0, Lcom/android/internal/telephony/InboundSmsHandler$DeliveringState;->this$0:Lcom/android/internal/telephony/InboundSmsHandler;

    #@4
    new-instance v2, Ljava/lang/StringBuilder;

    #@6
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@9
    const-string/jumbo v3, "DeliveringState.processMessage:"

    #@c
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@f
    move-result-object v2

    #@10
    iget v3, p1, Landroid/os/Message;->what:I

    #@12
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@15
    move-result-object v2

    #@16
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@19
    move-result-object v2

    #@1a
    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/InboundSmsHandler;->log(Ljava/lang/String;)V

    #@1d
    .line 403
    iget v1, p1, Landroid/os/Message;->what:I

    #@1f
    packed-switch v1, :pswitch_data_0

    #@22
    .line 450
    :pswitch_0
    const/4 v1, 0x0

    #@23
    return v1

    #@24
    .line 406
    :pswitch_1
    iget-object v2, p0, Lcom/android/internal/telephony/InboundSmsHandler$DeliveringState;->this$0:Lcom/android/internal/telephony/InboundSmsHandler;

    #@26
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@28
    check-cast v1, Landroid/os/AsyncResult;

    #@2a
    invoke-virtual {v2, v1}, Lcom/android/internal/telephony/InboundSmsHandler;->handleNewSms(Landroid/os/AsyncResult;)V

    #@2d
    .line 407
    iget-object v1, p0, Lcom/android/internal/telephony/InboundSmsHandler$DeliveringState;->this$0:Lcom/android/internal/telephony/InboundSmsHandler;

    #@2f
    invoke-virtual {v1, v5}, Lcom/android/internal/telephony/InboundSmsHandler;->sendMessage(I)V

    #@32
    .line 408
    return v4

    #@33
    .line 412
    :pswitch_2
    iget-object v2, p0, Lcom/android/internal/telephony/InboundSmsHandler$DeliveringState;->this$0:Lcom/android/internal/telephony/InboundSmsHandler;

    #@35
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@37
    check-cast v1, Landroid/os/AsyncResult;

    #@39
    invoke-virtual {v2, v1}, Lcom/android/internal/telephony/InboundSmsHandler;->handleInjectSms(Landroid/os/AsyncResult;)V

    #@3c
    .line 413
    iget-object v1, p0, Lcom/android/internal/telephony/InboundSmsHandler$DeliveringState;->this$0:Lcom/android/internal/telephony/InboundSmsHandler;

    #@3e
    invoke-virtual {v1, v5}, Lcom/android/internal/telephony/InboundSmsHandler;->sendMessage(I)V

    #@41
    .line 414
    return v4

    #@42
    .line 418
    :pswitch_3
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@44
    check-cast v0, Lcom/android/internal/telephony/InboundSmsTracker;

    #@46
    .line 419
    .local v0, "inboundSmsTracker":Lcom/android/internal/telephony/InboundSmsTracker;
    iget-object v1, p0, Lcom/android/internal/telephony/InboundSmsHandler$DeliveringState;->this$0:Lcom/android/internal/telephony/InboundSmsHandler;

    #@48
    invoke-virtual {v1, v0}, Lcom/android/internal/telephony/InboundSmsHandler;->processMessagePart(Lcom/android/internal/telephony/InboundSmsTracker;)Z

    #@4b
    move-result v1

    #@4c
    if-eqz v1, :cond_0

    #@4e
    .line 420
    iget-object v1, p0, Lcom/android/internal/telephony/InboundSmsHandler$DeliveringState;->this$0:Lcom/android/internal/telephony/InboundSmsHandler;

    #@50
    iget-object v2, p0, Lcom/android/internal/telephony/InboundSmsHandler$DeliveringState;->this$0:Lcom/android/internal/telephony/InboundSmsHandler;

    #@52
    iget-object v2, v2, Lcom/android/internal/telephony/InboundSmsHandler;->mWaitingState:Lcom/android/internal/telephony/InboundSmsHandler$WaitingState;

    #@54
    invoke-static {v1, v2}, Lcom/android/internal/telephony/InboundSmsHandler;->-wrap3(Lcom/android/internal/telephony/InboundSmsHandler;Lcom/android/internal/util/IState;)V

    #@57
    .line 430
    :goto_0
    return v4

    #@58
    .line 426
    :cond_0
    iget-object v1, p0, Lcom/android/internal/telephony/InboundSmsHandler$DeliveringState;->this$0:Lcom/android/internal/telephony/InboundSmsHandler;

    #@5a
    const-string/jumbo v2, "No broadcast sent on processing EVENT_BROADCAST_SMS in Delivering state. Return to Idle state"

    #@5d
    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/InboundSmsHandler;->log(Ljava/lang/String;)V

    #@60
    .line 428
    iget-object v1, p0, Lcom/android/internal/telephony/InboundSmsHandler$DeliveringState;->this$0:Lcom/android/internal/telephony/InboundSmsHandler;

    #@62
    invoke-virtual {v1, v5}, Lcom/android/internal/telephony/InboundSmsHandler;->sendMessage(I)V

    #@65
    goto :goto_0

    #@66
    .line 434
    .end local v0    # "inboundSmsTracker":Lcom/android/internal/telephony/InboundSmsTracker;
    :pswitch_4
    iget-object v1, p0, Lcom/android/internal/telephony/InboundSmsHandler$DeliveringState;->this$0:Lcom/android/internal/telephony/InboundSmsHandler;

    #@68
    iget-object v2, p0, Lcom/android/internal/telephony/InboundSmsHandler$DeliveringState;->this$0:Lcom/android/internal/telephony/InboundSmsHandler;

    #@6a
    iget-object v2, v2, Lcom/android/internal/telephony/InboundSmsHandler;->mIdleState:Lcom/android/internal/telephony/InboundSmsHandler$IdleState;

    #@6c
    invoke-static {v1, v2}, Lcom/android/internal/telephony/InboundSmsHandler;->-wrap3(Lcom/android/internal/telephony/InboundSmsHandler;Lcom/android/internal/util/IState;)V

    #@6f
    .line 435
    return v4

    #@70
    .line 438
    :pswitch_5
    iget-object v1, p0, Lcom/android/internal/telephony/InboundSmsHandler$DeliveringState;->this$0:Lcom/android/internal/telephony/InboundSmsHandler;

    #@72
    iget-object v1, v1, Lcom/android/internal/telephony/InboundSmsHandler;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    #@74
    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->release()V

    #@77
    .line 439
    iget-object v1, p0, Lcom/android/internal/telephony/InboundSmsHandler$DeliveringState;->this$0:Lcom/android/internal/telephony/InboundSmsHandler;

    #@79
    iget-object v1, v1, Lcom/android/internal/telephony/InboundSmsHandler;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    #@7b
    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    #@7e
    move-result v1

    #@7f
    if-nez v1, :cond_1

    #@81
    .line 441
    iget-object v1, p0, Lcom/android/internal/telephony/InboundSmsHandler$DeliveringState;->this$0:Lcom/android/internal/telephony/InboundSmsHandler;

    #@83
    const-string/jumbo v2, "mWakeLock released while delivering/broadcasting!"

    #@86
    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/InboundSmsHandler;->loge(Ljava/lang/String;)V

    #@89
    .line 443
    :cond_1
    return v4

    #@8a
    .line 403
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_3
        :pswitch_0
        :pswitch_4
        :pswitch_5
        :pswitch_0
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method
