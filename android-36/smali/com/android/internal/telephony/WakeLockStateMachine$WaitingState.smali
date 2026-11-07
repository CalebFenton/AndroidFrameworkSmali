.class Lcom/android/internal/telephony/WakeLockStateMachine$WaitingState;
.super Lcom/android/internal/telephony/State;
.source "WakeLockStateMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/WakeLockStateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "WaitingState"
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

    .line 192
    iput-object p1, p0, Lcom/android/internal/telephony/WakeLockStateMachine$WaitingState;->this$0:Lcom/android/internal/telephony/WakeLockStateMachine;

    invoke-direct {p0}, Lcom/android/internal/telephony/State;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist processMessage(Landroid/os/Message;)Z
    .registers 5

    .line 195
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_49

    const/4 p1, 0x2

    if-eq v0, p1, :cond_38

    const/4 p1, 0x3

    if-eq v0, p1, :cond_2b

    const/4 p1, 0x4

    if-eq v0, p1, :cond_10

    const/4 p0, 0x0

    return p0

    .line 212
    :cond_10
    iget-object p1, p0, Lcom/android/internal/telephony/WakeLockStateMachine$WaitingState;->this$0:Lcom/android/internal/telephony/WakeLockStateMachine;

    const-string v0, "Waiting: broadcast not required"

    invoke-virtual {p1, v0}, Lcom/android/internal/telephony/WakeLockStateMachine;->log(Ljava/lang/String;)V

    .line 213
    iget-object p1, p0, Lcom/android/internal/telephony/WakeLockStateMachine$WaitingState;->this$0:Lcom/android/internal/telephony/WakeLockStateMachine;

    iget-object p1, p1, Lcom/android/internal/telephony/WakeLockStateMachine;->mReceiverCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result p1

    if-nez p1, :cond_2a

    .line 214
    iget-object p0, p0, Lcom/android/internal/telephony/WakeLockStateMachine$WaitingState;->this$0:Lcom/android/internal/telephony/WakeLockStateMachine;

    invoke-static {p0}, Lcom/android/internal/telephony/WakeLockStateMachine;->-$$Nest$fgetmIdleState(Lcom/android/internal/telephony/WakeLockStateMachine;)Lcom/android/internal/telephony/WakeLockStateMachine$IdleState;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/StateMachine;->transitionTo(Lcom/android/internal/telephony/IState;)V

    :cond_2a
    return v1

    .line 207
    :cond_2b
    iget-object p1, p0, Lcom/android/internal/telephony/WakeLockStateMachine$WaitingState;->this$0:Lcom/android/internal/telephony/WakeLockStateMachine;

    const-string v0, "Waiting: release wakelock"

    invoke-virtual {p1, v0}, Lcom/android/internal/telephony/WakeLockStateMachine;->log(Ljava/lang/String;)V

    .line 208
    iget-object p0, p0, Lcom/android/internal/telephony/WakeLockStateMachine$WaitingState;->this$0:Lcom/android/internal/telephony/WakeLockStateMachine;

    invoke-static {p0}, Lcom/android/internal/telephony/WakeLockStateMachine;->-$$Nest$mreleaseWakeLock(Lcom/android/internal/telephony/WakeLockStateMachine;)V

    return v1

    .line 202
    :cond_38
    iget-object p1, p0, Lcom/android/internal/telephony/WakeLockStateMachine$WaitingState;->this$0:Lcom/android/internal/telephony/WakeLockStateMachine;

    const-string v0, "Waiting: broadcast complete, returning to idle"

    invoke-virtual {p1, v0}, Lcom/android/internal/telephony/WakeLockStateMachine;->log(Ljava/lang/String;)V

    .line 203
    iget-object p0, p0, Lcom/android/internal/telephony/WakeLockStateMachine$WaitingState;->this$0:Lcom/android/internal/telephony/WakeLockStateMachine;

    invoke-static {p0}, Lcom/android/internal/telephony/WakeLockStateMachine;->-$$Nest$fgetmIdleState(Lcom/android/internal/telephony/WakeLockStateMachine;)Lcom/android/internal/telephony/WakeLockStateMachine$IdleState;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/StateMachine;->transitionTo(Lcom/android/internal/telephony/IState;)V

    return v1

    .line 197
    :cond_49
    iget-object v0, p0, Lcom/android/internal/telephony/WakeLockStateMachine$WaitingState;->this$0:Lcom/android/internal/telephony/WakeLockStateMachine;

    const-string v2, "Waiting: deferring message until return to idle"

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/WakeLockStateMachine;->log(Ljava/lang/String;)V

    .line 198
    iget-object p0, p0, Lcom/android/internal/telephony/WakeLockStateMachine$WaitingState;->this$0:Lcom/android/internal/telephony/WakeLockStateMachine;

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/StateMachine;->deferMessage(Landroid/os/Message;)V

    return v1
.end method
