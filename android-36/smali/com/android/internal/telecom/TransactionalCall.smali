.class public Lcom/android/internal/telecom/TransactionalCall;
.super Ljava/lang/Object;
.source "TransactionalCall.java"


# instance fields
.field private final blacklist mCallAttributes:Landroid/telecom/CallAttributes;

.field private blacklist mCallControl:Landroid/telecom/CallControl;

.field private final blacklist mCallControlCallback:Landroid/telecom/CallControlCallback;

.field private final blacklist mCallId:Ljava/lang/String;

.field private final blacklist mCallStateCallback:Landroid/telecom/CallEventCallback;

.field private final blacklist mExecutor:Ljava/util/concurrent/Executor;

.field private final blacklist mPendingControl:Landroid/os/OutcomeReceiver;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/OutcomeReceiver<",
            "Landroid/telecom/CallControl;",
            "Landroid/telecom/CallException;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor blacklist <init>(Ljava/lang/String;Landroid/telecom/CallAttributes;Ljava/util/concurrent/Executor;Landroid/os/OutcomeReceiver;Landroid/telecom/CallControlCallback;Landroid/telecom/CallEventCallback;)V
    .registers 7
    .param p1, "callId"    # Ljava/lang/String;
    .param p2, "callAttributes"    # Landroid/telecom/CallAttributes;
    .param p3, "executor"    # Ljava/util/concurrent/Executor;
    .param p5, "callControlCallback"    # Landroid/telecom/CallControlCallback;
    .param p6, "callStateCallback"    # Landroid/telecom/CallEventCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/telecom/CallAttributes;",
            "Ljava/util/concurrent/Executor;",
            "Landroid/os/OutcomeReceiver<",
            "Landroid/telecom/CallControl;",
            "Landroid/telecom/CallException;",
            ">;",
            "Landroid/telecom/CallControlCallback;",
            "Landroid/telecom/CallEventCallback;",
            ")V"
        }
    .end annotation

    .line 44
    .local p4, "pendingControl":Landroid/os/OutcomeReceiver;, "Landroid/os/OutcomeReceiver<Landroid/telecom/CallControl;Landroid/telecom/CallException;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iput-object p1, p0, Lcom/android/internal/telecom/TransactionalCall;->mCallId:Ljava/lang/String;

    .line 46
    iput-object p2, p0, Lcom/android/internal/telecom/TransactionalCall;->mCallAttributes:Landroid/telecom/CallAttributes;

    .line 47
    iput-object p3, p0, Lcom/android/internal/telecom/TransactionalCall;->mExecutor:Ljava/util/concurrent/Executor;

    .line 48
    iput-object p4, p0, Lcom/android/internal/telecom/TransactionalCall;->mPendingControl:Landroid/os/OutcomeReceiver;

    .line 49
    iput-object p5, p0, Lcom/android/internal/telecom/TransactionalCall;->mCallControlCallback:Landroid/telecom/CallControlCallback;

    .line 50
    iput-object p6, p0, Lcom/android/internal/telecom/TransactionalCall;->mCallStateCallback:Landroid/telecom/CallEventCallback;

    .line 51
    return-void
.end method


# virtual methods
.method public blacklist getCallAttributes()Landroid/telecom/CallAttributes;
    .registers 2

    .line 67
    iget-object v0, p0, Lcom/android/internal/telecom/TransactionalCall;->mCallAttributes:Landroid/telecom/CallAttributes;

    return-object v0
.end method

.method public blacklist getCallControl()Landroid/telecom/CallControl;
    .registers 2

    .line 59
    iget-object v0, p0, Lcom/android/internal/telecom/TransactionalCall;->mCallControl:Landroid/telecom/CallControl;

    return-object v0
.end method

.method public blacklist getCallControlCallback()Landroid/telecom/CallControlCallback;
    .registers 2

    .line 79
    iget-object v0, p0, Lcom/android/internal/telecom/TransactionalCall;->mCallControlCallback:Landroid/telecom/CallControlCallback;

    return-object v0
.end method

.method public blacklist getCallId()Ljava/lang/String;
    .registers 2

    .line 63
    iget-object v0, p0, Lcom/android/internal/telecom/TransactionalCall;->mCallId:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getCallStateCallback()Landroid/telecom/CallEventCallback;
    .registers 2

    .line 83
    iget-object v0, p0, Lcom/android/internal/telecom/TransactionalCall;->mCallStateCallback:Landroid/telecom/CallEventCallback;

    return-object v0
.end method

.method public blacklist getExecutor()Ljava/util/concurrent/Executor;
    .registers 2

    .line 71
    iget-object v0, p0, Lcom/android/internal/telecom/TransactionalCall;->mExecutor:Ljava/util/concurrent/Executor;

    return-object v0
.end method

.method public blacklist getPendingControl()Landroid/os/OutcomeReceiver;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/os/OutcomeReceiver<",
            "Landroid/telecom/CallControl;",
            "Landroid/telecom/CallException;",
            ">;"
        }
    .end annotation

    .line 75
    iget-object v0, p0, Lcom/android/internal/telecom/TransactionalCall;->mPendingControl:Landroid/os/OutcomeReceiver;

    return-object v0
.end method

.method public blacklist setCallControl(Landroid/telecom/CallControl;)V
    .registers 2
    .param p1, "callControl"    # Landroid/telecom/CallControl;

    .line 55
    iput-object p1, p0, Lcom/android/internal/telecom/TransactionalCall;->mCallControl:Landroid/telecom/CallControl;

    .line 56
    return-void
.end method
