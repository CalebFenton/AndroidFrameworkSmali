.class final Landroid/net/thread/ThreadNetworkController$OperationReceiverProxy;
.super Landroid/net/connectivity/android/net/thread/IOperationReceiver$Stub;
.source "ThreadNetworkController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/thread/ThreadNetworkController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "OperationReceiverProxy"
.end annotation


# instance fields
.field final blacklist mExecutor:Ljava/util/concurrent/Executor;

.field final blacklist mResultReceiver:Landroid/os/OutcomeReceiver;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/OutcomeReceiver<",
            "Ljava/lang/Void;",
            "Landroid/net/thread/ThreadNetworkException;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic blacklist $r8$lambda$CMe2OgYTzx7E_qmIVNengmPOtLA(Landroid/net/thread/ThreadNetworkController$OperationReceiverProxy;)V
    .registers 1

    invoke-direct {p0}, Landroid/net/thread/ThreadNetworkController$OperationReceiverProxy;->lambda$onSuccess$0()V

    return-void
.end method

.method constructor blacklist <init>(Ljava/util/concurrent/Executor;Landroid/os/OutcomeReceiver;)V
    .registers 3
    .param p1, "executor"    # Ljava/util/concurrent/Executor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Executor;",
            "Landroid/os/OutcomeReceiver<",
            "Ljava/lang/Void;",
            "Landroid/net/thread/ThreadNetworkException;",
            ">;)V"
        }
    .end annotation

    .line 996
    .local p2, "resultReceiver":Landroid/os/OutcomeReceiver;, "Landroid/os/OutcomeReceiver<Ljava/lang/Void;Landroid/net/thread/ThreadNetworkException;>;"
    invoke-direct {p0}, Landroid/net/connectivity/android/net/thread/IOperationReceiver$Stub;-><init>()V

    .line 997
    iput-object p1, p0, Landroid/net/thread/ThreadNetworkController$OperationReceiverProxy;->mExecutor:Ljava/util/concurrent/Executor;

    .line 998
    iput-object p2, p0, Landroid/net/thread/ThreadNetworkController$OperationReceiverProxy;->mResultReceiver:Landroid/os/OutcomeReceiver;

    .line 999
    return-void
.end method

.method private synthetic blacklist lambda$onSuccess$0()V
    .registers 3

    .line 1005
    iget-object v0, p0, Landroid/net/thread/ThreadNetworkController$OperationReceiverProxy;->mResultReceiver:Landroid/os/OutcomeReceiver;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/os/OutcomeReceiver;->onResult(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public blacklist onError(ILjava/lang/String;)V
    .registers 5
    .param p1, "errorCode"    # I
    .param p2, "errorMessage"    # Ljava/lang/String;

    .line 1013
    iget-object v0, p0, Landroid/net/thread/ThreadNetworkController$OperationReceiverProxy;->mExecutor:Ljava/util/concurrent/Executor;

    iget-object v1, p0, Landroid/net/thread/ThreadNetworkController$OperationReceiverProxy;->mResultReceiver:Landroid/os/OutcomeReceiver;

    invoke-static {v0, v1, p1, p2}, Landroid/net/thread/ThreadNetworkController;->-$$Nest$smpropagateError(Ljava/util/concurrent/Executor;Landroid/os/OutcomeReceiver;ILjava/lang/String;)V

    .line 1014
    return-void
.end method

.method public blacklist onSuccess()V
    .registers 5

    .line 1003
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1005
    .local v0, "identity":J
    :try_start_4
    iget-object v2, p0, Landroid/net/thread/ThreadNetworkController$OperationReceiverProxy;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v3, Landroid/net/thread/ThreadNetworkController$OperationReceiverProxy$$ExternalSyntheticLambda0;

    invoke-direct {v3, p0}, Landroid/net/thread/ThreadNetworkController$OperationReceiverProxy$$ExternalSyntheticLambda0;-><init>(Landroid/net/thread/ThreadNetworkController$OperationReceiverProxy;)V

    invoke-interface {v2, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_e
    .catchall {:try_start_4 .. :try_end_e} :catchall_13

    .line 1007
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1008
    nop

    .line 1009
    return-void

    .line 1007
    :catchall_13
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1008
    throw v2
.end method
