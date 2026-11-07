.class final Landroid/net/thread/ThreadNetworkController$ActiveDatasetReceiverProxy;
.super Landroid/net/connectivity/android/net/thread/IActiveOperationalDatasetReceiver$Stub;
.source "ThreadNetworkController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/thread/ThreadNetworkController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ActiveDatasetReceiverProxy"
.end annotation


# instance fields
.field final blacklist mExecutor:Ljava/util/concurrent/Executor;

.field final blacklist mResultReceiver:Landroid/os/OutcomeReceiver;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/OutcomeReceiver<",
            "Landroid/net/thread/ActiveOperationalDataset;",
            "Landroid/net/thread/ThreadNetworkException;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic blacklist $r8$lambda$dUZC9MfbY_1MnXsnWt1KqlgKaE8(Landroid/net/thread/ThreadNetworkController$ActiveDatasetReceiverProxy;Landroid/net/thread/ActiveOperationalDataset;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/net/thread/ThreadNetworkController$ActiveDatasetReceiverProxy;->lambda$onSuccess$0(Landroid/net/thread/ActiveOperationalDataset;)V

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
            "Landroid/net/thread/ActiveOperationalDataset;",
            "Landroid/net/thread/ThreadNetworkException;",
            ">;)V"
        }
    .end annotation

    .line 969
    .local p2, "resultReceiver":Landroid/os/OutcomeReceiver;, "Landroid/os/OutcomeReceiver<Landroid/net/thread/ActiveOperationalDataset;Landroid/net/thread/ThreadNetworkException;>;"
    invoke-direct {p0}, Landroid/net/connectivity/android/net/thread/IActiveOperationalDatasetReceiver$Stub;-><init>()V

    .line 970
    iput-object p1, p0, Landroid/net/thread/ThreadNetworkController$ActiveDatasetReceiverProxy;->mExecutor:Ljava/util/concurrent/Executor;

    .line 971
    iput-object p2, p0, Landroid/net/thread/ThreadNetworkController$ActiveDatasetReceiverProxy;->mResultReceiver:Landroid/os/OutcomeReceiver;

    .line 972
    return-void
.end method

.method private synthetic blacklist lambda$onSuccess$0(Landroid/net/thread/ActiveOperationalDataset;)V
    .registers 3
    .param p1, "dataset"    # Landroid/net/thread/ActiveOperationalDataset;

    .line 978
    iget-object v0, p0, Landroid/net/thread/ThreadNetworkController$ActiveDatasetReceiverProxy;->mResultReceiver:Landroid/os/OutcomeReceiver;

    invoke-interface {v0, p1}, Landroid/os/OutcomeReceiver;->onResult(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public blacklist onError(ILjava/lang/String;)V
    .registers 5
    .param p1, "errorCode"    # I
    .param p2, "errorMessage"    # Ljava/lang/String;

    .line 986
    iget-object v0, p0, Landroid/net/thread/ThreadNetworkController$ActiveDatasetReceiverProxy;->mExecutor:Ljava/util/concurrent/Executor;

    iget-object v1, p0, Landroid/net/thread/ThreadNetworkController$ActiveDatasetReceiverProxy;->mResultReceiver:Landroid/os/OutcomeReceiver;

    invoke-static {v0, v1, p1, p2}, Landroid/net/thread/ThreadNetworkController;->-$$Nest$smpropagateError(Ljava/util/concurrent/Executor;Landroid/os/OutcomeReceiver;ILjava/lang/String;)V

    .line 987
    return-void
.end method

.method public blacklist onSuccess(Landroid/net/thread/ActiveOperationalDataset;)V
    .registers 6
    .param p1, "dataset"    # Landroid/net/thread/ActiveOperationalDataset;

    .line 976
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 978
    .local v0, "identity":J
    :try_start_4
    iget-object v2, p0, Landroid/net/thread/ThreadNetworkController$ActiveDatasetReceiverProxy;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v3, Landroid/net/thread/ThreadNetworkController$ActiveDatasetReceiverProxy$$ExternalSyntheticLambda0;

    invoke-direct {v3, p0, p1}, Landroid/net/thread/ThreadNetworkController$ActiveDatasetReceiverProxy$$ExternalSyntheticLambda0;-><init>(Landroid/net/thread/ThreadNetworkController$ActiveDatasetReceiverProxy;Landroid/net/thread/ActiveOperationalDataset;)V

    invoke-interface {v2, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_e
    .catchall {:try_start_4 .. :try_end_e} :catchall_13

    .line 980
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 981
    nop

    .line 982
    return-void

    .line 980
    :catchall_13
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 981
    throw v2
.end method
