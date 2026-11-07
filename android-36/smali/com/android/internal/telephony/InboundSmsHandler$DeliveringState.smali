.class Lcom/android/internal/telephony/InboundSmsHandler$DeliveringState;
.super Lcom/android/internal/telephony/State;
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
.field final synthetic blacklist this$0:Lcom/android/internal/telephony/InboundSmsHandler;


# direct methods
.method private constructor blacklist <init>(Lcom/android/internal/telephony/InboundSmsHandler;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            null
        }
    .end annotation

    .line 529
    iput-object p1, p0, Lcom/android/internal/telephony/InboundSmsHandler$DeliveringState;->this$0:Lcom/android/internal/telephony/InboundSmsHandler;

    invoke-direct {p0}, Lcom/android/internal/telephony/State;-><init>()V

    return-void
.end method

.method synthetic constructor blacklist <init>(Lcom/android/internal/telephony/InboundSmsHandler;Lcom/android/internal/telephony/InboundSmsHandler-IA;)V
    .registers 3

    .line 0
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/InboundSmsHandler$DeliveringState;-><init>(Lcom/android/internal/telephony/InboundSmsHandler;)V

    return-void
.end method


# virtual methods
.method public blacklist enter()V
    .registers 2

    .line 532
    iget-object p0, p0, Lcom/android/internal/telephony/InboundSmsHandler$DeliveringState;->this$0:Lcom/android/internal/telephony/InboundSmsHandler;

    const-string v0, "DeliveringState.enter: entering DeliveringState"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/InboundSmsHandler;->log(Ljava/lang/String;)V

    return-void
.end method

.method public blacklist exit()V
    .registers 2

    .line 537
    iget-object p0, p0, Lcom/android/internal/telephony/InboundSmsHandler$DeliveringState;->this$0:Lcom/android/internal/telephony/InboundSmsHandler;

    const-string v0, "DeliveringState.exit: leaving DeliveringState"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/InboundSmsHandler;->log(Ljava/lang/String;)V

    return-void
.end method

.method public blacklist processMessage(Landroid/os/Message;)Z
    .registers 8

    .line 542
    iget-object v0, p0, Lcom/android/internal/telephony/InboundSmsHandler$DeliveringState;->this$0:Lcom/android/internal/telephony/InboundSmsHandler;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DeliveringState.processMessage: processing "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/internal/telephony/InboundSmsHandler$DeliveringState;->this$0:Lcom/android/internal/telephony/InboundSmsHandler;

    iget v3, p1, Landroid/os/Message;->what:I

    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/InboundSmsHandler;->getWhatToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/InboundSmsHandler;->log(Ljava/lang/String;)V

    .line 543
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x4

    const/4 v2, 0x1

    if-eq v0, v2, :cond_d7

    const/4 v3, 0x2

    const/16 v4, 0x8

    if-eq v0, v3, :cond_a9

    if-eq v0, v1, :cond_9f

    const/4 v3, 0x5

    if-eq v0, v3, :cond_82

    const/4 v3, 0x7

    const/4 v5, 0x0

    if-eq v0, v3, :cond_6c

    if-eq v0, v4, :cond_53

    .line 595
    iget-object v0, p0, Lcom/android/internal/telephony/InboundSmsHandler$DeliveringState;->this$0:Lcom/android/internal/telephony/InboundSmsHandler;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unhandled msg in delivering state, msg.what = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/internal/telephony/InboundSmsHandler$DeliveringState;->this$0:Lcom/android/internal/telephony/InboundSmsHandler;

    iget p1, p1, Landroid/os/Message;->what:I

    .line 596
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/InboundSmsHandler;->getWhatToString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 595
    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/InboundSmsHandler;->logeWithLocalLog(Ljava/lang/String;)V

    return v5

    .line 588
    :cond_53
    iget-object p0, p0, Lcom/android/internal/telephony/InboundSmsHandler$DeliveringState;->this$0:Lcom/android/internal/telephony/InboundSmsHandler;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "process tracker message in DeliveringState "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    # invokes: Lcom/android/internal/telephony/StateMachine;->logd(Ljava/lang/String;)V
    invoke-static {p0, p1}, Lcom/android/internal/telephony/InboundSmsHandler;->access$000(Lcom/android/internal/telephony/InboundSmsHandler;Ljava/lang/String;)V

    return v2

    .line 552
    :cond_6c
    iget-object v0, p0, Lcom/android/internal/telephony/InboundSmsHandler$DeliveringState;->this$0:Lcom/android/internal/telephony/InboundSmsHandler;

    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Landroid/os/AsyncResult;

    iget v4, p1, Landroid/os/Message;->arg1:I

    if-ne v4, v2, :cond_77

    move v5, v2

    :cond_77
    iget p1, p1, Landroid/os/Message;->arg2:I

    invoke-static {v0, v3, v5, p1}, Lcom/android/internal/telephony/InboundSmsHandler;->-$$Nest$mhandleInjectSms(Lcom/android/internal/telephony/InboundSmsHandler;Landroid/os/AsyncResult;ZI)V

    .line 554
    iget-object p0, p0, Lcom/android/internal/telephony/InboundSmsHandler$DeliveringState;->this$0:Lcom/android/internal/telephony/InboundSmsHandler;

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/StateMachine;->sendMessage(I)V

    return v2

    .line 580
    :cond_82
    iget-object p1, p0, Lcom/android/internal/telephony/InboundSmsHandler$DeliveringState;->this$0:Lcom/android/internal/telephony/InboundSmsHandler;

    invoke-static {p1}, Lcom/android/internal/telephony/InboundSmsHandler;->-$$Nest$fgetmWakeLock(Lcom/android/internal/telephony/InboundSmsHandler;)Landroid/os/PowerManager$WakeLock;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 581
    iget-object p1, p0, Lcom/android/internal/telephony/InboundSmsHandler$DeliveringState;->this$0:Lcom/android/internal/telephony/InboundSmsHandler;

    invoke-static {p1}, Lcom/android/internal/telephony/InboundSmsHandler;->-$$Nest$fgetmWakeLock(Lcom/android/internal/telephony/InboundSmsHandler;)Landroid/os/PowerManager$WakeLock;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result p1

    if-nez p1, :cond_9e

    .line 583
    iget-object p0, p0, Lcom/android/internal/telephony/InboundSmsHandler$DeliveringState;->this$0:Lcom/android/internal/telephony/InboundSmsHandler;

    const-string p1, "mWakeLock released while delivering/broadcasting!"

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/InboundSmsHandler;->loge(Ljava/lang/String;)V

    :cond_9e
    return v2

    .line 576
    :cond_9f
    iget-object p0, p0, Lcom/android/internal/telephony/InboundSmsHandler$DeliveringState;->this$0:Lcom/android/internal/telephony/InboundSmsHandler;

    invoke-static {p0}, Lcom/android/internal/telephony/InboundSmsHandler;->-$$Nest$fgetmIdleState(Lcom/android/internal/telephony/InboundSmsHandler;)Lcom/android/internal/telephony/InboundSmsHandler$IdleState;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/StateMachine;->transitionTo(Lcom/android/internal/telephony/IState;)V

    return v2

    .line 559
    :cond_a9
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/telephony/InboundSmsTracker;

    .line 560
    iget-object v3, p0, Lcom/android/internal/telephony/InboundSmsHandler$DeliveringState;->this$0:Lcom/android/internal/telephony/InboundSmsHandler;

    invoke-static {v3, v0}, Lcom/android/internal/telephony/InboundSmsHandler;->-$$Nest$mprocessMessagePart(Lcom/android/internal/telephony/InboundSmsHandler;Lcom/android/internal/telephony/InboundSmsTracker;)Z

    move-result v0

    if-eqz v0, :cond_ca

    .line 561
    iget-object v0, p0, Lcom/android/internal/telephony/InboundSmsHandler$DeliveringState;->this$0:Lcom/android/internal/telephony/InboundSmsHandler;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v0, v4, p1}, Lcom/android/internal/telephony/StateMachine;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/StateMachine;->sendMessage(Landroid/os/Message;)V

    .line 562
    iget-object p0, p0, Lcom/android/internal/telephony/InboundSmsHandler$DeliveringState;->this$0:Lcom/android/internal/telephony/InboundSmsHandler;

    invoke-static {p0}, Lcom/android/internal/telephony/InboundSmsHandler;->-$$Nest$fgetmWaitingState(Lcom/android/internal/telephony/InboundSmsHandler;)Lcom/android/internal/telephony/InboundSmsHandler$WaitingState;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/StateMachine;->transitionTo(Lcom/android/internal/telephony/IState;)V

    goto :goto_d6

    .line 568
    :cond_ca
    iget-object p1, p0, Lcom/android/internal/telephony/InboundSmsHandler$DeliveringState;->this$0:Lcom/android/internal/telephony/InboundSmsHandler;

    const-string v0, "DeliveringState.processMessage: EVENT_BROADCAST_SMS: No broadcast sent. Return to IdleState"

    invoke-virtual {p1, v0}, Lcom/android/internal/telephony/InboundSmsHandler;->log(Ljava/lang/String;)V

    .line 570
    iget-object p0, p0, Lcom/android/internal/telephony/InboundSmsHandler$DeliveringState;->this$0:Lcom/android/internal/telephony/InboundSmsHandler;

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/StateMachine;->sendMessage(I)V

    :goto_d6
    return v2

    .line 546
    :cond_d7
    iget-object v0, p0, Lcom/android/internal/telephony/InboundSmsHandler$DeliveringState;->this$0:Lcom/android/internal/telephony/InboundSmsHandler;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/os/AsyncResult;

    invoke-static {v0, p1}, Lcom/android/internal/telephony/InboundSmsHandler;->-$$Nest$mhandleNewSms(Lcom/android/internal/telephony/InboundSmsHandler;Landroid/os/AsyncResult;)V

    .line 547
    iget-object p0, p0, Lcom/android/internal/telephony/InboundSmsHandler$DeliveringState;->this$0:Lcom/android/internal/telephony/InboundSmsHandler;

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/StateMachine;->sendMessage(I)V

    return v2
.end method
