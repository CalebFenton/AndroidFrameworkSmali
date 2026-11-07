.class public abstract Lcom/android/internal/telephony/WakeLockStateMachine;
.super Lcom/android/internal/telephony/StateMachine;
.source "WakeLockStateMachine.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/WakeLockStateMachine$DefaultState;,
        Lcom/android/internal/telephony/WakeLockStateMachine$IdleState;,
        Lcom/android/internal/telephony/WakeLockStateMachine$WaitingState;
    }
.end annotation


# static fields
.field protected static final blacklist DBG:Z

.field protected static final blacklist EVENT_BROADCAST_COMPLETE:I = 0x2

.field public static final blacklist EVENT_NEW_SMS_MESSAGE:I = 0x1


# instance fields
.field protected greylist-max-r mContext:Landroid/content/Context;

.field private final blacklist mDefaultState:Lcom/android/internal/telephony/WakeLockStateMachine$DefaultState;

.field private final greylist-max-r mIdleState:Lcom/android/internal/telephony/WakeLockStateMachine$IdleState;

.field protected greylist-max-r mPhone:Lcom/android/internal/telephony/Phone;

.field protected final blacklist mReceiver:Landroid/content/BroadcastReceiver;

.field protected blacklist mReceiverCount:Ljava/util/concurrent/atomic/AtomicInteger;

.field private final blacklist mWaitingState:Lcom/android/internal/telephony/WakeLockStateMachine$WaitingState;

.field private final blacklist mWakeLock:Landroid/os/PowerManager$WakeLock;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmIdleState(Lcom/android/internal/telephony/WakeLockStateMachine;)Lcom/android/internal/telephony/WakeLockStateMachine$IdleState;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/internal/telephony/WakeLockStateMachine;->mIdleState:Lcom/android/internal/telephony/WakeLockStateMachine$IdleState;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmWaitingState(Lcom/android/internal/telephony/WakeLockStateMachine;)Lcom/android/internal/telephony/WakeLockStateMachine$WaitingState;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/internal/telephony/WakeLockStateMachine;->mWaitingState:Lcom/android/internal/telephony/WakeLockStateMachine$WaitingState;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmWakeLock(Lcom/android/internal/telephony/WakeLockStateMachine;)Landroid/os/PowerManager$WakeLock;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/internal/telephony/WakeLockStateMachine;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$mreleaseWakeLock(Lcom/android/internal/telephony/WakeLockStateMachine;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/android/internal/telephony/WakeLockStateMachine;->releaseWakeLock()V

    return-void
.end method

.method static constructor blacklist <clinit>()V
    .registers 1

    .line 42
    sget-boolean v0, Lcom/android/internal/telephony/util/TelephonyUtils;->IS_DEBUGGABLE:Z

    sput-boolean v0, Lcom/android/internal/telephony/WakeLockStateMachine;->DBG:Z

    return-void
.end method

.method protected constructor blacklist <init>(Ljava/lang/String;Landroid/content/Context;Lcom/android/internal/telephony/Phone;)V
    .registers 8

    .line 75
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/StateMachine;-><init>(Ljava/lang/String;)V

    .line 64
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/android/internal/telephony/WakeLockStateMachine;->mReceiverCount:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 69
    new-instance v0, Lcom/android/internal/telephony/WakeLockStateMachine$DefaultState;

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/WakeLockStateMachine$DefaultState;-><init>(Lcom/android/internal/telephony/WakeLockStateMachine;)V

    iput-object v0, p0, Lcom/android/internal/telephony/WakeLockStateMachine;->mDefaultState:Lcom/android/internal/telephony/WakeLockStateMachine$DefaultState;

    .line 70
    new-instance v1, Lcom/android/internal/telephony/WakeLockStateMachine$IdleState;

    invoke-direct {v1, p0}, Lcom/android/internal/telephony/WakeLockStateMachine$IdleState;-><init>(Lcom/android/internal/telephony/WakeLockStateMachine;)V

    iput-object v1, p0, Lcom/android/internal/telephony/WakeLockStateMachine;->mIdleState:Lcom/android/internal/telephony/WakeLockStateMachine$IdleState;

    .line 72
    new-instance v2, Lcom/android/internal/telephony/WakeLockStateMachine$WaitingState;

    invoke-direct {v2, p0}, Lcom/android/internal/telephony/WakeLockStateMachine$WaitingState;-><init>(Lcom/android/internal/telephony/WakeLockStateMachine;)V

    iput-object v2, p0, Lcom/android/internal/telephony/WakeLockStateMachine;->mWaitingState:Lcom/android/internal/telephony/WakeLockStateMachine$WaitingState;

    .line 234
    new-instance v3, Lcom/android/internal/telephony/WakeLockStateMachine$1;

    invoke-direct {v3, p0}, Lcom/android/internal/telephony/WakeLockStateMachine$1;-><init>(Lcom/android/internal/telephony/WakeLockStateMachine;)V

    iput-object v3, p0, Lcom/android/internal/telephony/WakeLockStateMachine;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 77
    iput-object p2, p0, Lcom/android/internal/telephony/WakeLockStateMachine;->mContext:Landroid/content/Context;

    .line 78
    iput-object p3, p0, Lcom/android/internal/telephony/WakeLockStateMachine;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 80
    const-string p3, "power"

    invoke-virtual {p2, p3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/os/PowerManager;

    const/4 p3, 0x1

    .line 81
    invoke-virtual {p2, p3, p1}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object p1

    iput-object p1, p0, Lcom/android/internal/telephony/WakeLockStateMachine;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 83
    invoke-virtual {p1}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 85
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/StateMachine;->addState(Lcom/android/internal/telephony/State;)V

    .line 86
    invoke-virtual {p0, v1, v0}, Lcom/android/internal/telephony/StateMachine;->addState(Lcom/android/internal/telephony/State;Lcom/android/internal/telephony/State;)V

    .line 87
    invoke-virtual {p0, v2, v0}, Lcom/android/internal/telephony/StateMachine;->addState(Lcom/android/internal/telephony/State;Lcom/android/internal/telephony/State;)V

    .line 88
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/StateMachine;->setInitialState(Lcom/android/internal/telephony/State;)V

    return-void
.end method

.method private blacklist releaseWakeLock()V
    .registers 2

    .line 92
    iget-object v0, p0, Lcom/android/internal/telephony/WakeLockStateMachine;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 93
    iget-object v0, p0, Lcom/android/internal/telephony/WakeLockStateMachine;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 96
    :cond_d
    iget-object v0, p0, Lcom/android/internal/telephony/WakeLockStateMachine;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 97
    const-string v0, "Wait lock is held after release."

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/WakeLockStateMachine;->loge(Ljava/lang/String;)V

    :cond_1a
    return-void
.end method


# virtual methods
.method public final blacklist dispatchSmsMessage(Ljava/lang/Object;)V
    .registers 3

    const/4 v0, 0x1

    .line 121
    invoke-virtual {p0, v0, p1}, Lcom/android/internal/telephony/StateMachine;->sendMessage(ILjava/lang/Object;)V

    return-void
.end method

.method public final blacklist dispose()V
    .registers 1

    .line 105
    invoke-virtual {p0}, Lcom/android/internal/telephony/StateMachine;->quit()V

    return-void
.end method

.method protected abstract blacklist handleSmsMessage(Landroid/os/Message;)Z
.end method

.method protected greylist-max-r log(Ljava/lang/String;)V
    .registers 2

    .line 250
    invoke-virtual {p0}, Lcom/android/internal/telephony/StateMachine;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, p1}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method protected blacklist loge(Ljava/lang/String;)V
    .registers 2

    .line 259
    invoke-virtual {p0}, Lcom/android/internal/telephony/StateMachine;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, p1}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method protected blacklist loge(Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 3

    .line 269
    invoke-virtual {p0}, Lcom/android/internal/telephony/StateMachine;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, p1, p2}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method protected blacklist onQuitting()V
    .registers 2

    .line 111
    :goto_0
    iget-object v0, p0, Lcom/android/internal/telephony/WakeLockStateMachine;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 112
    iget-object v0, p0, Lcom/android/internal/telephony/WakeLockStateMachine;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    goto :goto_0

    :cond_e
    return-void
.end method
