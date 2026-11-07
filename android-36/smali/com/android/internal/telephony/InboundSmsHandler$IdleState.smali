.class Lcom/android/internal/telephony/InboundSmsHandler$IdleState;
.super Lcom/android/internal/telephony/State;
.source "InboundSmsHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/InboundSmsHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "IdleState"
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

    .line 473
    iput-object p1, p0, Lcom/android/internal/telephony/InboundSmsHandler$IdleState;->this$0:Lcom/android/internal/telephony/InboundSmsHandler;

    invoke-direct {p0}, Lcom/android/internal/telephony/State;-><init>()V

    return-void
.end method

.method synthetic constructor blacklist <init>(Lcom/android/internal/telephony/InboundSmsHandler;Lcom/android/internal/telephony/InboundSmsHandler-IA;)V
    .registers 3

    .line 0
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/InboundSmsHandler$IdleState;-><init>(Lcom/android/internal/telephony/InboundSmsHandler;)V

    return-void
.end method


# virtual methods
.method public blacklist enter()V
    .registers 4

    .line 476
    iget-object v0, p0, Lcom/android/internal/telephony/InboundSmsHandler$IdleState;->this$0:Lcom/android/internal/telephony/InboundSmsHandler;

    const-string v1, "IdleState.enter: entering IdleState"

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/InboundSmsHandler;->log(Ljava/lang/String;)V

    .line 477
    iget-object p0, p0, Lcom/android/internal/telephony/InboundSmsHandler$IdleState;->this$0:Lcom/android/internal/telephony/InboundSmsHandler;

    invoke-virtual {p0}, Lcom/android/internal/telephony/InboundSmsHandler;->getWakeLockTimeout()I

    move-result v0

    int-to-long v0, v0

    const/4 v2, 0x5

    invoke-virtual {p0, v2, v0, v1}, Lcom/android/internal/telephony/StateMachine;->sendMessageDelayed(IJ)V

    return-void
.end method

.method public blacklist exit()V
    .registers 2

    .line 482
    iget-object v0, p0, Lcom/android/internal/telephony/InboundSmsHandler$IdleState;->this$0:Lcom/android/internal/telephony/InboundSmsHandler;

    invoke-static {v0}, Lcom/android/internal/telephony/InboundSmsHandler;->-$$Nest$fgetmWakeLock(Lcom/android/internal/telephony/InboundSmsHandler;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 483
    iget-object p0, p0, Lcom/android/internal/telephony/InboundSmsHandler$IdleState;->this$0:Lcom/android/internal/telephony/InboundSmsHandler;

    const-string v0, "IdleState.exit: acquired wakelock, leaving IdleState"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/InboundSmsHandler;->log(Ljava/lang/String;)V

    return-void
.end method

.method public blacklist processMessage(Landroid/os/Message;)Z
    .registers 6

    .line 488
    iget-object v0, p0, Lcom/android/internal/telephony/InboundSmsHandler$IdleState;->this$0:Lcom/android/internal/telephony/InboundSmsHandler;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "IdleState.processMessage: processing "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/internal/telephony/InboundSmsHandler$IdleState;->this$0:Lcom/android/internal/telephony/InboundSmsHandler;

    iget v3, p1, Landroid/os/Message;->what:I

    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/InboundSmsHandler;->getWhatToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/InboundSmsHandler;->log(Ljava/lang/String;)V

    .line 489
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_56

    const/4 v2, 0x2

    if-eq v0, v2, :cond_56

    const/4 v2, 0x4

    if-eq v0, v2, :cond_55

    const/4 v2, 0x5

    if-eq v0, v2, :cond_31

    const/4 v2, 0x7

    if-eq v0, v2, :cond_56

    const/4 p0, 0x0

    return p0

    .line 498
    :cond_31
    iget-object p1, p0, Lcom/android/internal/telephony/InboundSmsHandler$IdleState;->this$0:Lcom/android/internal/telephony/InboundSmsHandler;

    invoke-static {p1}, Lcom/android/internal/telephony/InboundSmsHandler;->-$$Nest$fgetmWakeLock(Lcom/android/internal/telephony/InboundSmsHandler;)Landroid/os/PowerManager$WakeLock;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 500
    iget-object p1, p0, Lcom/android/internal/telephony/InboundSmsHandler$IdleState;->this$0:Lcom/android/internal/telephony/InboundSmsHandler;

    invoke-static {p1}, Lcom/android/internal/telephony/InboundSmsHandler;->-$$Nest$fgetmWakeLock(Lcom/android/internal/telephony/InboundSmsHandler;)Landroid/os/PowerManager$WakeLock;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result p1

    if-eqz p1, :cond_4e

    .line 502
    iget-object p0, p0, Lcom/android/internal/telephony/InboundSmsHandler$IdleState;->this$0:Lcom/android/internal/telephony/InboundSmsHandler;

    const-string p1, "IdleState.processMessage: EVENT_RELEASE_WAKELOCK: mWakeLock is still held after release"

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/InboundSmsHandler;->log(Ljava/lang/String;)V

    goto :goto_55

    .line 505
    :cond_4e
    iget-object p0, p0, Lcom/android/internal/telephony/InboundSmsHandler$IdleState;->this$0:Lcom/android/internal/telephony/InboundSmsHandler;

    const-string p1, "IdleState.processMessage: EVENT_RELEASE_WAKELOCK: mWakeLock released"

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/InboundSmsHandler;->log(Ljava/lang/String;)V

    :cond_55
    :goto_55
    return v1

    .line 493
    :cond_56
    iget-object v0, p0, Lcom/android/internal/telephony/InboundSmsHandler$IdleState;->this$0:Lcom/android/internal/telephony/InboundSmsHandler;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/StateMachine;->deferMessage(Landroid/os/Message;)V

    .line 494
    iget-object p0, p0, Lcom/android/internal/telephony/InboundSmsHandler$IdleState;->this$0:Lcom/android/internal/telephony/InboundSmsHandler;

    invoke-static {p0}, Lcom/android/internal/telephony/InboundSmsHandler;->-$$Nest$fgetmDeliveringState(Lcom/android/internal/telephony/InboundSmsHandler;)Lcom/android/internal/telephony/InboundSmsHandler$DeliveringState;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/StateMachine;->transitionTo(Lcom/android/internal/telephony/IState;)V

    return v1
.end method
