.class Lcom/android/internal/telephony/InboundSmsHandler$WaitingState;
.super Lcom/android/internal/telephony/State;
.source "InboundSmsHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/InboundSmsHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "WaitingState"
.end annotation


# instance fields
.field private blacklist mLastDeliveredSmsTracker:Lcom/android/internal/telephony/InboundSmsTracker;

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

    .line 610
    iput-object p1, p0, Lcom/android/internal/telephony/InboundSmsHandler$WaitingState;->this$0:Lcom/android/internal/telephony/InboundSmsHandler;

    invoke-direct {p0}, Lcom/android/internal/telephony/State;-><init>()V

    return-void
.end method

.method synthetic constructor blacklist <init>(Lcom/android/internal/telephony/InboundSmsHandler;Lcom/android/internal/telephony/InboundSmsHandler-IA;)V
    .registers 3

    .line 0
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/InboundSmsHandler$WaitingState;-><init>(Lcom/android/internal/telephony/InboundSmsHandler;)V

    return-void
.end method


# virtual methods
.method public blacklist enter()V
    .registers 2

    .line 616
    iget-object p0, p0, Lcom/android/internal/telephony/InboundSmsHandler$WaitingState;->this$0:Lcom/android/internal/telephony/InboundSmsHandler;

    const-string v0, "WaitingState.enter: entering WaitingState"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/InboundSmsHandler;->log(Ljava/lang/String;)V

    return-void
.end method

.method public blacklist exit()V
    .registers 3

    .line 621
    iget-object v0, p0, Lcom/android/internal/telephony/InboundSmsHandler$WaitingState;->this$0:Lcom/android/internal/telephony/InboundSmsHandler;

    const-string v1, "WaitingState.exit: leaving WaitingState"

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/InboundSmsHandler;->log(Ljava/lang/String;)V

    .line 624
    iget-object v0, p0, Lcom/android/internal/telephony/InboundSmsHandler$WaitingState;->this$0:Lcom/android/internal/telephony/InboundSmsHandler;

    const/16 v1, 0xbb8

    invoke-static {v0, v1}, Lcom/android/internal/telephony/InboundSmsHandler;->-$$Nest$msetWakeLockTimeout(Lcom/android/internal/telephony/InboundSmsHandler;I)V

    .line 625
    iget-object p0, p0, Lcom/android/internal/telephony/InboundSmsHandler$WaitingState;->this$0:Lcom/android/internal/telephony/InboundSmsHandler;

    iget-object p0, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->getIccSmsInterfaceManager()Lcom/android/internal/telephony/IccSmsInterfaceManager;

    move-result-object p0

    iget-object p0, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mDispatchersController:Lcom/android/internal/telephony/SmsDispatchersController;

    const/16 v0, 0x11

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public blacklist processMessage(Landroid/os/Message;)Z
    .registers 7

    .line 631
    iget-object v0, p0, Lcom/android/internal/telephony/InboundSmsHandler$WaitingState;->this$0:Lcom/android/internal/telephony/InboundSmsHandler;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "WaitingState.processMessage: processing "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/internal/telephony/InboundSmsHandler$WaitingState;->this$0:Lcom/android/internal/telephony/InboundSmsHandler;

    iget v3, p1, Landroid/os/Message;->what:I

    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/InboundSmsHandler;->getWhatToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/InboundSmsHandler;->log(Ljava/lang/String;)V

    .line 632
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-eq v0, v1, :cond_62

    const/4 v1, 0x3

    const/4 v3, 0x4

    if-eq v0, v1, :cond_50

    if-eq v0, v3, :cond_4f

    const/16 v1, 0x8

    if-eq v0, v1, :cond_49

    const/16 p1, 0x9

    if-eq v0, p1, :cond_34

    const/4 p0, 0x0

    return p0

    .line 647
    :cond_34
    iget-object p1, p0, Lcom/android/internal/telephony/InboundSmsHandler$WaitingState;->this$0:Lcom/android/internal/telephony/InboundSmsHandler;

    const-string v0, "WaitingState.processMessage: received EVENT_RECEIVER_TIMEOUT"

    invoke-virtual {p1, v0}, Lcom/android/internal/telephony/InboundSmsHandler;->logeWithLocalLog(Ljava/lang/String;)V

    .line 649
    iget-object p1, p0, Lcom/android/internal/telephony/InboundSmsHandler$WaitingState;->mLastDeliveredSmsTracker:Lcom/android/internal/telephony/InboundSmsTracker;

    if-eqz p1, :cond_48

    .line 650
    iget-object p0, p0, Lcom/android/internal/telephony/InboundSmsHandler$WaitingState;->this$0:Lcom/android/internal/telephony/InboundSmsHandler;

    invoke-virtual {p1, p0}, Lcom/android/internal/telephony/InboundSmsTracker;->getSmsBroadcastReceiver(Lcom/android/internal/telephony/InboundSmsHandler;)Lcom/android/internal/telephony/InboundSmsHandler$SmsBroadcastReceiver;

    move-result-object p0

    .line 651
    invoke-virtual {p0}, Lcom/android/internal/telephony/InboundSmsHandler$SmsBroadcastReceiver;->fakeNextAction()V

    :cond_48
    return v2

    .line 667
    :cond_49
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/android/internal/telephony/InboundSmsTracker;

    iput-object p1, p0, Lcom/android/internal/telephony/InboundSmsHandler$WaitingState;->mLastDeliveredSmsTracker:Lcom/android/internal/telephony/InboundSmsTracker;

    :cond_4f
    return v2

    :cond_50
    const/4 p1, 0x0

    .line 656
    iput-object p1, p0, Lcom/android/internal/telephony/InboundSmsHandler$WaitingState;->mLastDeliveredSmsTracker:Lcom/android/internal/telephony/InboundSmsTracker;

    .line 658
    iget-object p1, p0, Lcom/android/internal/telephony/InboundSmsHandler$WaitingState;->this$0:Lcom/android/internal/telephony/InboundSmsHandler;

    invoke-virtual {p1, v3}, Lcom/android/internal/telephony/StateMachine;->sendMessage(I)V

    .line 659
    iget-object p0, p0, Lcom/android/internal/telephony/InboundSmsHandler$WaitingState;->this$0:Lcom/android/internal/telephony/InboundSmsHandler;

    invoke-static {p0}, Lcom/android/internal/telephony/InboundSmsHandler;->-$$Nest$fgetmDeliveringState(Lcom/android/internal/telephony/InboundSmsHandler;)Lcom/android/internal/telephony/InboundSmsHandler$DeliveringState;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/StateMachine;->transitionTo(Lcom/android/internal/telephony/IState;)V

    return v2

    .line 635
    :cond_62
    iget-object v0, p0, Lcom/android/internal/telephony/InboundSmsHandler$WaitingState;->mLastDeliveredSmsTracker:Lcom/android/internal/telephony/InboundSmsTracker;

    if-eqz v0, :cond_b0

    .line 636
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Defer sms broadcast due to undelivered sms,  messageCount = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/telephony/InboundSmsHandler$WaitingState;->mLastDeliveredSmsTracker:Lcom/android/internal/telephony/InboundSmsTracker;

    .line 637
    invoke-virtual {v1}, Lcom/android/internal/telephony/InboundSmsTracker;->getMessageCount()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " destPort = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/telephony/InboundSmsHandler$WaitingState;->mLastDeliveredSmsTracker:Lcom/android/internal/telephony/InboundSmsTracker;

    .line 638
    invoke-virtual {v1}, Lcom/android/internal/telephony/InboundSmsTracker;->getDestPort()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " timestamp = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/telephony/InboundSmsHandler$WaitingState;->mLastDeliveredSmsTracker:Lcom/android/internal/telephony/InboundSmsTracker;

    .line 639
    invoke-virtual {v1}, Lcom/android/internal/telephony/InboundSmsTracker;->getTimestamp()J

    move-result-wide v3

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " currentTimestamp = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 640
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 641
    iget-object v1, p0, Lcom/android/internal/telephony/InboundSmsHandler$WaitingState;->this$0:Lcom/android/internal/telephony/InboundSmsHandler;

    iget-object v3, p0, Lcom/android/internal/telephony/InboundSmsHandler$WaitingState;->mLastDeliveredSmsTracker:Lcom/android/internal/telephony/InboundSmsTracker;

    invoke-virtual {v3}, Lcom/android/internal/telephony/InboundSmsTracker;->getMessageId()J

    move-result-wide v3

    invoke-virtual {v1, v0, v3, v4}, Lcom/android/internal/telephony/InboundSmsHandler;->logWithLocalLog(Ljava/lang/String;J)V

    .line 643
    :cond_b0
    iget-object p0, p0, Lcom/android/internal/telephony/InboundSmsHandler$WaitingState;->this$0:Lcom/android/internal/telephony/InboundSmsHandler;

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/StateMachine;->deferMessage(Landroid/os/Message;)V

    return v2
.end method
