.class Landroid/net/NetworkScoreManager$NetworkScoreCallbackProxy;
.super Landroid/net/INetworkScoreCache$Stub;
.source "NetworkScoreManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/NetworkScoreManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "NetworkScoreCallbackProxy"
.end annotation


# instance fields
.field private final blacklist mCallback:Landroid/net/NetworkScoreManager$NetworkScoreCallback;

.field private final blacklist mExecutor:Ljava/util/concurrent/Executor;


# direct methods
.method public static synthetic blacklist $r8$lambda$BrwBU-t86uPSaVE6votMrC2vE7w(Landroid/net/NetworkScoreManager$NetworkScoreCallbackProxy;Ljava/util/List;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/net/NetworkScoreManager$NetworkScoreCallbackProxy;->lambda$updateScores$0(Ljava/util/List;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$NJZyQDseSfJFYr0AiRb68mkMwhE(Landroid/net/NetworkScoreManager$NetworkScoreCallbackProxy;)V
    .registers 1

    invoke-direct {p0}, Landroid/net/NetworkScoreManager$NetworkScoreCallbackProxy;->lambda$clearScores$1()V

    return-void
.end method

.method constructor blacklist <init>(Landroid/net/NetworkScoreManager;Ljava/util/concurrent/Executor;Landroid/net/NetworkScoreManager$NetworkScoreCallback;)V
    .registers 4
    .param p2, "executor"    # Ljava/util/concurrent/Executor;
    .param p3, "callback"    # Landroid/net/NetworkScoreManager$NetworkScoreCallback;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x0,
            0x0
        }
        names = {
            null,
            null,
            null
        }
    .end annotation

    .line 511
    invoke-direct {p0}, Landroid/net/INetworkScoreCache$Stub;-><init>()V

    .line 512
    iput-object p2, p0, Landroid/net/NetworkScoreManager$NetworkScoreCallbackProxy;->mExecutor:Ljava/util/concurrent/Executor;

    .line 513
    iput-object p3, p0, Landroid/net/NetworkScoreManager$NetworkScoreCallbackProxy;->mCallback:Landroid/net/NetworkScoreManager$NetworkScoreCallback;

    .line 514
    return-void
.end method

.method private synthetic blacklist lambda$clearScores$1()V
    .registers 2

    .line 533
    iget-object v0, p0, Landroid/net/NetworkScoreManager$NetworkScoreCallbackProxy;->mCallback:Landroid/net/NetworkScoreManager$NetworkScoreCallback;

    invoke-virtual {v0}, Landroid/net/NetworkScoreManager$NetworkScoreCallback;->onScoresInvalidated()V

    .line 534
    return-void
.end method

.method private synthetic blacklist lambda$updateScores$0(Ljava/util/List;)V
    .registers 3
    .param p1, "networks"    # Ljava/util/List;

    .line 521
    iget-object v0, p0, Landroid/net/NetworkScoreManager$NetworkScoreCallbackProxy;->mCallback:Landroid/net/NetworkScoreManager$NetworkScoreCallback;

    invoke-virtual {v0, p1}, Landroid/net/NetworkScoreManager$NetworkScoreCallback;->onScoresUpdated(Ljava/util/Collection;)V

    .line 522
    return-void
.end method


# virtual methods
.method public blacklist clearScores()V
    .registers 5

    .line 530
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 532
    .local v0, "token":J
    :try_start_4
    iget-object v2, p0, Landroid/net/NetworkScoreManager$NetworkScoreCallbackProxy;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v3, Landroid/net/NetworkScoreManager$NetworkScoreCallbackProxy$$ExternalSyntheticLambda1;

    invoke-direct {v3, p0}, Landroid/net/NetworkScoreManager$NetworkScoreCallbackProxy$$ExternalSyntheticLambda1;-><init>(Landroid/net/NetworkScoreManager$NetworkScoreCallbackProxy;)V

    invoke-interface {v2, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_e
    .catchall {:try_start_4 .. :try_end_e} :catchall_13

    .line 536
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 537
    nop

    .line 538
    return-void

    .line 536
    :catchall_13
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 537
    throw v2
.end method

.method public blacklist updateScores(Ljava/util/List;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/net/ScoredNetwork;",
            ">;)V"
        }
    .end annotation

    .line 518
    .local p1, "networks":Ljava/util/List;, "Ljava/util/List<Landroid/net/ScoredNetwork;>;"
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 520
    .local v0, "token":J
    :try_start_4
    iget-object v2, p0, Landroid/net/NetworkScoreManager$NetworkScoreCallbackProxy;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v3, Landroid/net/NetworkScoreManager$NetworkScoreCallbackProxy$$ExternalSyntheticLambda0;

    invoke-direct {v3, p0, p1}, Landroid/net/NetworkScoreManager$NetworkScoreCallbackProxy$$ExternalSyntheticLambda0;-><init>(Landroid/net/NetworkScoreManager$NetworkScoreCallbackProxy;Ljava/util/List;)V

    invoke-interface {v2, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_e
    .catchall {:try_start_4 .. :try_end_e} :catchall_13

    .line 524
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 525
    nop

    .line 526
    return-void

    .line 524
    :catchall_13
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 525
    throw v2
.end method
