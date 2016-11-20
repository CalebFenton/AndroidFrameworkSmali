.class Lcom/android/internal/telephony/InboundSmsHandler$DeliveringState;
.super Lcom/android/internal/util/State;
.source "InboundSmsHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/InboundSmsHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DeliveringState"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/InboundSmsHandler;


# direct methods
.method private constructor <init>(Lcom/android/internal/telephony/InboundSmsHandler;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/internal/telephony/InboundSmsHandler;

    #@0
    .prologue
    .line 405
    iput-object p1, p0, Lcom/android/internal/telephony/InboundSmsHandler$DeliveringState;->this$0:Lcom/android/internal/telephony/InboundSmsHandler;

    #@2
    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    #@5
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/internal/telephony/InboundSmsHandler;Lcom/android/internal/telephony/InboundSmsHandler$DeliveringState;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/internal/telephony/InboundSmsHandler;

    #@0
    .prologue
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/InboundSmsHandler$DeliveringState;-><init>(Lcom/android/internal/telephony/InboundSmsHandler;)V

    #@3
    return-void
.end method


# virtual methods
.method public enter()V
    .locals 2

    #@0
    .prologue
    .line 408
    iget-object v0, p0, Lcom/android/internal/telephony/InboundSmsHandler$DeliveringState;->this$0:Lcom/android/internal/telephony/InboundSmsHandler;

    #@2
    const-string/jumbo v1, "entering Delivering state"

    #@5
    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/InboundSmsHandler;->log(Ljava/lang/String;)V

    #@8
    .line 407
    return-void
.end method

.method public exit()V
    .locals 2

    #@0
    .prologue
    .line 413
    iget-object v0, p0, Lcom/android/internal/telephony/InboundSmsHandler$DeliveringState;->this$0:Lcom/android/internal/telephony/InboundSmsHandler;

    #@2
    const-string/jumbo v1, "leaving Delivering state"

    #@5
    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/InboundSmsHandler;->log(Ljava/lang/String;)V

    #@8
    .line 412
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
    .line 418
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
    .line 419
    iget v1, p1, Landroid/os/Message;->what:I

    #@1f
    packed-switch v1, :pswitch_data_0

    #@22
    .line 466
    :pswitch_0
    const/4 v1, 0x0

    #@23
    return v1

    #@24
    .line 422
    :pswitch_1
    iget-object v2, p0, Lcom/android/internal/telephony/InboundSmsHandler$DeliveringState;->this$0:Lcom/android/internal/telephony/InboundSmsHandler;

    #@26
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@28
    check-cast v1, Landroid/os/AsyncResult;

    #@2a
    invoke-static {v2, v1}, Lcom/android/internal/telephony/InboundSmsHandler;->-wrap8(Lcom/android/internal/telephony/InboundSmsHandler;Landroid/os/AsyncResult;)V

    #@2d
    .line 423
    iget-object v1, p0, Lcom/android/internal/telephony/InboundSmsHandler$DeliveringState;->this$0:Lcom/android/internal/telephony/InboundSmsHandler;

    #@2f
    invoke-virtual {v1, v5}, Lcom/android/internal/telephony/InboundSmsHandler;->sendMessage(I)V

    #@32
    .line 424
    return v4

    #@33
    .line 428
    :pswitch_2
    iget-object v2, p0, Lcom/android/internal/telephony/InboundSmsHandler$DeliveringState;->this$0:Lcom/android/internal/telephony/InboundSmsHandler;

    #@35
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@37
    check-cast v1, Landroid/os/AsyncResult;

    #@39
    invoke-static {v2, v1}, Lcom/android/internal/telephony/InboundSmsHandler;->-wrap7(Lcom/android/internal/telephony/InboundSmsHandler;Landroid/os/AsyncResult;)V

    #@3c
    .line 429
    iget-object v1, p0, Lcom/android/internal/telephony/InboundSmsHandler$DeliveringState;->this$0:Lcom/android/internal/telephony/InboundSmsHandler;

    #@3e
    invoke-virtual {v1, v5}, Lcom/android/internal/telephony/InboundSmsHandler;->sendMessage(I)V

    #@41
    .line 430
    return v4

    #@42
    .line 434
    :pswitch_3
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@44
    check-cast v0, Lcom/android/internal/telephony/InboundSmsTracker;

    #@46
    .line 435
    .local v0, "inboundSmsTracker":Lcom/android/internal/telephony/InboundSmsTracker;
    iget-object v1, p0, Lcom/android/internal/telephony/InboundSmsHandler$DeliveringState;->this$0:Lcom/android/internal/telephony/InboundSmsHandler;

    #@48
    invoke-static {v1, v0}, Lcom/android/internal/telephony/InboundSmsHandler;->-wrap2(Lcom/android/internal/telephony/InboundSmsHandler;Lcom/android/internal/telephony/InboundSmsTracker;)Z

    #@4b
    move-result v1

    #@4c
    if-eqz v1, :cond_0

    #@4e
    .line 436
    iget-object v1, p0, Lcom/android/internal/telephony/InboundSmsHandler$DeliveringState;->this$0:Lcom/android/internal/telephony/InboundSmsHandler;

    #@50
    iget-object v2, p0, Lcom/android/internal/telephony/InboundSmsHandler$DeliveringState;->this$0:Lcom/android/internal/telephony/InboundSmsHandler;

    #@52
    invoke-static {v2}, Lcom/android/internal/telephony/InboundSmsHandler;->-get2(Lcom/android/internal/telephony/InboundSmsHandler;)Lcom/android/internal/telephony/InboundSmsHandler$WaitingState;

    #@55
    move-result-object v2

    #@56
    invoke-static {v1, v2}, Lcom/android/internal/telephony/InboundSmsHandler;->-wrap11(Lcom/android/internal/telephony/InboundSmsHandler;Lcom/android/internal/util/IState;)V

    #@59
    .line 446
    :goto_0
    return v4

    #@5a
    .line 442
    :cond_0
    iget-object v1, p0, Lcom/android/internal/telephony/InboundSmsHandler$DeliveringState;->this$0:Lcom/android/internal/telephony/InboundSmsHandler;

    #@5c
    const-string/jumbo v2, "No broadcast sent on processing EVENT_BROADCAST_SMS in Delivering state. Return to Idle state"

    #@5f
    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/InboundSmsHandler;->log(Ljava/lang/String;)V

    #@62
    .line 444
    iget-object v1, p0, Lcom/android/internal/telephony/InboundSmsHandler$DeliveringState;->this$0:Lcom/android/internal/telephony/InboundSmsHandler;

    #@64
    invoke-virtual {v1, v5}, Lcom/android/internal/telephony/InboundSmsHandler;->sendMessage(I)V

    #@67
    goto :goto_0

    #@68
    .line 450
    .end local v0    # "inboundSmsTracker":Lcom/android/internal/telephony/InboundSmsTracker;
    :pswitch_4
    iget-object v1, p0, Lcom/android/internal/telephony/InboundSmsHandler$DeliveringState;->this$0:Lcom/android/internal/telephony/InboundSmsHandler;

    #@6a
    iget-object v2, p0, Lcom/android/internal/telephony/InboundSmsHandler$DeliveringState;->this$0:Lcom/android/internal/telephony/InboundSmsHandler;

    #@6c
    invoke-static {v2}, Lcom/android/internal/telephony/InboundSmsHandler;->-get1(Lcom/android/internal/telephony/InboundSmsHandler;)Lcom/android/internal/telephony/InboundSmsHandler$IdleState;

    #@6f
    move-result-object v2

    #@70
    invoke-static {v1, v2}, Lcom/android/internal/telephony/InboundSmsHandler;->-wrap11(Lcom/android/internal/telephony/InboundSmsHandler;Lcom/android/internal/util/IState;)V

    #@73
    .line 451
    return v4

    #@74
    .line 454
    :pswitch_5
    iget-object v1, p0, Lcom/android/internal/telephony/InboundSmsHandler$DeliveringState;->this$0:Lcom/android/internal/telephony/InboundSmsHandler;

    #@76
    invoke-static {v1}, Lcom/android/internal/telephony/InboundSmsHandler;->-get3(Lcom/android/internal/telephony/InboundSmsHandler;)Landroid/os/PowerManager$WakeLock;

    #@79
    move-result-object v1

    #@7a
    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->release()V

    #@7d
    .line 455
    iget-object v1, p0, Lcom/android/internal/telephony/InboundSmsHandler$DeliveringState;->this$0:Lcom/android/internal/telephony/InboundSmsHandler;

    #@7f
    invoke-static {v1}, Lcom/android/internal/telephony/InboundSmsHandler;->-get3(Lcom/android/internal/telephony/InboundSmsHandler;)Landroid/os/PowerManager$WakeLock;

    #@82
    move-result-object v1

    #@83
    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    #@86
    move-result v1

    #@87
    if-nez v1, :cond_1

    #@89
    .line 457
    iget-object v1, p0, Lcom/android/internal/telephony/InboundSmsHandler$DeliveringState;->this$0:Lcom/android/internal/telephony/InboundSmsHandler;

    #@8b
    const-string/jumbo v2, "mWakeLock released while delivering/broadcasting!"

    #@8e
    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/InboundSmsHandler;->loge(Ljava/lang/String;)V

    #@91
    .line 459
    :cond_1
    return v4

    #@92
    .line 419
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
