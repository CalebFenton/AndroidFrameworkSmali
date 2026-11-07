.class Lcom/android/internal/telephony/WakeLockStateMachine$1;
.super Landroid/content/BroadcastReceiver;
.source "WakeLockStateMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/WakeLockStateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
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

    .line 234
    iput-object p1, p0, Lcom/android/internal/telephony/WakeLockStateMachine$1;->this$0:Lcom/android/internal/telephony/WakeLockStateMachine;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 3

    .line 237
    iget-object p1, p0, Lcom/android/internal/telephony/WakeLockStateMachine$1;->this$0:Lcom/android/internal/telephony/WakeLockStateMachine;

    iget-object p1, p1, Lcom/android/internal/telephony/WakeLockStateMachine;->mReceiverCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result p1

    if-nez p1, :cond_10

    .line 238
    iget-object p0, p0, Lcom/android/internal/telephony/WakeLockStateMachine$1;->this$0:Lcom/android/internal/telephony/WakeLockStateMachine;

    const/4 p1, 0x2

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/StateMachine;->sendMessage(I)V

    :cond_10
    return-void
.end method
