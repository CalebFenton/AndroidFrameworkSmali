.class final Landroid/net/thread/ThreadNetworkController$OperationalDatasetCallbackProxy;
.super Landroid/net/connectivity/android/net/thread/IOperationalDatasetCallback$Stub;
.source "ThreadNetworkController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/thread/ThreadNetworkController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "OperationalDatasetCallbackProxy"
.end annotation


# instance fields
.field private final blacklist mCallback:Landroid/net/thread/ThreadNetworkController$OperationalDatasetCallback;

.field private final blacklist mExecutor:Ljava/util/concurrent/Executor;


# direct methods
.method public static synthetic blacklist $r8$lambda$GOUNbw5u9IHYXEPEnrEMckVx-Bw(Landroid/net/thread/ThreadNetworkController$OperationalDatasetCallbackProxy;Landroid/net/thread/PendingOperationalDataset;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/net/thread/ThreadNetworkController$OperationalDatasetCallbackProxy;->lambda$onPendingOperationalDatasetChanged$1(Landroid/net/thread/PendingOperationalDataset;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$K-gCOZ2f9nzavYpfQUrFttJyWYY(Landroid/net/thread/ThreadNetworkController$OperationalDatasetCallbackProxy;Landroid/net/thread/ActiveOperationalDataset;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/net/thread/ThreadNetworkController$OperationalDatasetCallbackProxy;->lambda$onActiveOperationalDatasetChanged$0(Landroid/net/thread/ActiveOperationalDataset;)V

    return-void
.end method

.method constructor blacklist <init>(Ljava/util/concurrent/Executor;Landroid/net/thread/ThreadNetworkController$OperationalDatasetCallback;)V
    .registers 3
    .param p1, "executor"    # Ljava/util/concurrent/Executor;
    .param p2, "callback"    # Landroid/net/thread/ThreadNetworkController$OperationalDatasetCallback;

    .line 529
    invoke-direct {p0}, Landroid/net/connectivity/android/net/thread/IOperationalDatasetCallback$Stub;-><init>()V

    .line 530
    iput-object p1, p0, Landroid/net/thread/ThreadNetworkController$OperationalDatasetCallbackProxy;->mExecutor:Ljava/util/concurrent/Executor;

    .line 531
    iput-object p2, p0, Landroid/net/thread/ThreadNetworkController$OperationalDatasetCallbackProxy;->mCallback:Landroid/net/thread/ThreadNetworkController$OperationalDatasetCallback;

    .line 532
    return-void
.end method

.method private synthetic blacklist lambda$onActiveOperationalDatasetChanged$0(Landroid/net/thread/ActiveOperationalDataset;)V
    .registers 3
    .param p1, "activeDataset"    # Landroid/net/thread/ActiveOperationalDataset;

    .line 539
    iget-object v0, p0, Landroid/net/thread/ThreadNetworkController$OperationalDatasetCallbackProxy;->mCallback:Landroid/net/thread/ThreadNetworkController$OperationalDatasetCallback;

    invoke-interface {v0, p1}, Landroid/net/thread/ThreadNetworkController$OperationalDatasetCallback;->onActiveOperationalDatasetChanged(Landroid/net/thread/ActiveOperationalDataset;)V

    return-void
.end method

.method private synthetic blacklist lambda$onPendingOperationalDatasetChanged$1(Landroid/net/thread/PendingOperationalDataset;)V
    .registers 3
    .param p1, "pendingDataset"    # Landroid/net/thread/PendingOperationalDataset;

    .line 551
    iget-object v0, p0, Landroid/net/thread/ThreadNetworkController$OperationalDatasetCallbackProxy;->mCallback:Landroid/net/thread/ThreadNetworkController$OperationalDatasetCallback;

    invoke-interface {v0, p1}, Landroid/net/thread/ThreadNetworkController$OperationalDatasetCallback;->onPendingOperationalDatasetChanged(Landroid/net/thread/PendingOperationalDataset;)V

    return-void
.end method


# virtual methods
.method public blacklist onActiveOperationalDatasetChanged(Landroid/net/thread/ActiveOperationalDataset;)V
    .registers 6
    .param p1, "activeDataset"    # Landroid/net/thread/ActiveOperationalDataset;

    .line 537
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 539
    .local v0, "identity":J
    :try_start_4
    iget-object v2, p0, Landroid/net/thread/ThreadNetworkController$OperationalDatasetCallbackProxy;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v3, Landroid/net/thread/ThreadNetworkController$OperationalDatasetCallbackProxy$$ExternalSyntheticLambda1;

    invoke-direct {v3, p0, p1}, Landroid/net/thread/ThreadNetworkController$OperationalDatasetCallbackProxy$$ExternalSyntheticLambda1;-><init>(Landroid/net/thread/ThreadNetworkController$OperationalDatasetCallbackProxy;Landroid/net/thread/ActiveOperationalDataset;)V

    invoke-interface {v2, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_e
    .catchall {:try_start_4 .. :try_end_e} :catchall_13

    .line 541
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 542
    nop

    .line 543
    return-void

    .line 541
    :catchall_13
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 542
    throw v2
.end method

.method public blacklist onPendingOperationalDatasetChanged(Landroid/net/thread/PendingOperationalDataset;)V
    .registers 6
    .param p1, "pendingDataset"    # Landroid/net/thread/PendingOperationalDataset;

    .line 548
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 550
    .local v0, "identity":J
    :try_start_4
    iget-object v2, p0, Landroid/net/thread/ThreadNetworkController$OperationalDatasetCallbackProxy;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v3, Landroid/net/thread/ThreadNetworkController$OperationalDatasetCallbackProxy$$ExternalSyntheticLambda0;

    invoke-direct {v3, p0, p1}, Landroid/net/thread/ThreadNetworkController$OperationalDatasetCallbackProxy$$ExternalSyntheticLambda0;-><init>(Landroid/net/thread/ThreadNetworkController$OperationalDatasetCallbackProxy;Landroid/net/thread/PendingOperationalDataset;)V

    invoke-interface {v2, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_e
    .catchall {:try_start_4 .. :try_end_e} :catchall_13

    .line 553
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 554
    nop

    .line 555
    return-void

    .line 553
    :catchall_13
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 554
    throw v2
.end method
