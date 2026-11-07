.class Lcom/android/internal/telephony/WakeLockStateMachine$IdleState;
.super Lcom/android/internal/telephony/State;
.source "WakeLockStateMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/WakeLockStateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "IdleState"
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/android/internal/telephony/WakeLockStateMachine;


# direct methods
.method constructor blacklist <init>(Lcom/android/internal/telephony/WakeLockStateMachine;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 150
    iput-object p1, p0, Lcom/android/internal/telephony/WakeLockStateMachine$IdleState;->this$0:Lcom/android/internal/telephony/WakeLockStateMachine;

    invoke-direct {p0}, Lcom/android/internal/telephony/State;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist enter()V
    .registers 4

    .line 153
    iget-object p0, p0, Lcom/android/internal/telephony/WakeLockStateMachine$IdleState;->this$0:Lcom/android/internal/telephony/WakeLockStateMachine;

    const/4 v0, 0x3

    const-wide/16 v1, 0xbb8

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/internal/telephony/StateMachine;->sendMessageDelayed(IJ)V

    return-void
.end method

.method public blacklist exit()V
    .registers 2

    .line 158
    iget-object v0, p0, Lcom/android/internal/telephony/WakeLockStateMachine$IdleState;->this$0:Lcom/android/internal/telephony/WakeLockStateMachine;

    invoke-static {v0}, Lcom/android/internal/telephony/WakeLockStateMachine;->-$$Nest$fgetmWakeLock(Lcom/android/internal/telephony/WakeLockStateMachine;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 159
    sget-boolean v0, Lcom/android/internal/telephony/WakeLockStateMachine;->DBG:Z

    if-eqz v0, :cond_14

    iget-object p0, p0, Lcom/android/internal/telephony/WakeLockStateMachine$IdleState;->this$0:Lcom/android/internal/telephony/WakeLockStateMachine;

    const-string v0, "Idle: acquired wakelock, leaving Idle state"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/WakeLockStateMachine;->log(Ljava/lang/String;)V

    :cond_14
    return-void
.end method

.method public blacklist processMessage(Landroid/os/Message;)Z
    .registers 5

    .line 164
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_22

    const/4 p1, 0x3

    if-eq v0, p1, :cond_15

    const/4 p1, 0x4

    if-eq v0, p1, :cond_d

    const/4 p0, 0x0

    return p0

    .line 179
    :cond_d
    iget-object p0, p0, Lcom/android/internal/telephony/WakeLockStateMachine$IdleState;->this$0:Lcom/android/internal/telephony/WakeLockStateMachine;

    const-string p1, "Idle: broadcast not required"

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/WakeLockStateMachine;->log(Ljava/lang/String;)V

    return v1

    .line 174
    :cond_15
    iget-object p1, p0, Lcom/android/internal/telephony/WakeLockStateMachine$IdleState;->this$0:Lcom/android/internal/telephony/WakeLockStateMachine;

    const-string v0, "Idle: release wakelock"

    invoke-virtual {p1, v0}, Lcom/android/internal/telephony/WakeLockStateMachine;->log(Ljava/lang/String;)V

    .line 175
    iget-object p0, p0, Lcom/android/internal/telephony/WakeLockStateMachine$IdleState;->this$0:Lcom/android/internal/telephony/WakeLockStateMachine;

    invoke-static {p0}, Lcom/android/internal/telephony/WakeLockStateMachine;->-$$Nest$mreleaseWakeLock(Lcom/android/internal/telephony/WakeLockStateMachine;)V

    return v1

    .line 166
    :cond_22
    iget-object v0, p0, Lcom/android/internal/telephony/WakeLockStateMachine$IdleState;->this$0:Lcom/android/internal/telephony/WakeLockStateMachine;

    const-string v2, "Idle: new cell broadcast message"

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/WakeLockStateMachine;->log(Ljava/lang/String;)V

    .line 168
    iget-object v0, p0, Lcom/android/internal/telephony/WakeLockStateMachine$IdleState;->this$0:Lcom/android/internal/telephony/WakeLockStateMachine;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/WakeLockStateMachine;->handleSmsMessage(Landroid/os/Message;)Z

    move-result p1

    if-eqz p1, :cond_3a

    .line 169
    iget-object p0, p0, Lcom/android/internal/telephony/WakeLockStateMachine$IdleState;->this$0:Lcom/android/internal/telephony/WakeLockStateMachine;

    invoke-static {p0}, Lcom/android/internal/telephony/WakeLockStateMachine;->-$$Nest$fgetmWaitingState(Lcom/android/internal/telephony/WakeLockStateMachine;)Lcom/android/internal/telephony/WakeLockStateMachine$WaitingState;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/StateMachine;->transitionTo(Lcom/android/internal/telephony/IState;)V

    :cond_3a
    return v1
.end method
