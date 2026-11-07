.class Landroid/net/ConnectivityManager$PacketKeepalive$1;
.super Landroid/net/connectivity/android/net/ISocketKeepaliveCallback$Stub;
.source "ConnectivityManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/net/ConnectivityManager$PacketKeepalive;-><init>(Landroid/net/ConnectivityManager;Landroid/net/Network;Landroid/net/ConnectivityManager$PacketKeepaliveCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$1:Landroid/net/ConnectivityManager$PacketKeepalive;

.field final synthetic blacklist val$callback:Landroid/net/ConnectivityManager$PacketKeepaliveCallback;

.field final synthetic blacklist val$this$0:Landroid/net/ConnectivityManager;


# direct methods
.method constructor blacklist <init>(Landroid/net/ConnectivityManager$PacketKeepalive;Landroid/net/ConnectivityManager;Landroid/net/ConnectivityManager$PacketKeepaliveCallback;)V
    .registers 4
    .param p1, "this$1"    # Landroid/net/ConnectivityManager$PacketKeepalive;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010
        }
        names = {
            null,
            null,
            null
        }
    .end annotation

    .line 2493
    iput-object p1, p0, Landroid/net/ConnectivityManager$PacketKeepalive$1;->this$1:Landroid/net/ConnectivityManager$PacketKeepalive;

    iput-object p2, p0, Landroid/net/ConnectivityManager$PacketKeepalive$1;->val$this$0:Landroid/net/ConnectivityManager;

    iput-object p3, p0, Landroid/net/ConnectivityManager$PacketKeepalive$1;->val$callback:Landroid/net/ConnectivityManager$PacketKeepaliveCallback;

    invoke-direct {p0}, Landroid/net/connectivity/android/net/ISocketKeepaliveCallback$Stub;-><init>()V

    return-void
.end method

.method static synthetic blacklist lambda$onError$4(Landroid/net/ConnectivityManager$PacketKeepaliveCallback;I)V
    .registers 2
    .param p0, "callback"    # Landroid/net/ConnectivityManager$PacketKeepaliveCallback;
    .param p1, "error"    # I

    .line 2549
    invoke-virtual {p0, p1}, Landroid/net/ConnectivityManager$PacketKeepaliveCallback;->onError(I)V

    .line 2550
    return-void
.end method

.method static synthetic blacklist lambda$onPaused$3(Landroid/net/ConnectivityManager$PacketKeepaliveCallback;)V
    .registers 1
    .param p0, "callback"    # Landroid/net/ConnectivityManager$PacketKeepaliveCallback;

    .line 2536
    invoke-virtual {p0}, Landroid/net/ConnectivityManager$PacketKeepaliveCallback;->onPaused()V

    .line 2537
    return-void
.end method

.method static synthetic blacklist lambda$onResumed$1(Landroid/net/ConnectivityManager$PacketKeepaliveCallback;)V
    .registers 1
    .param p0, "callback"    # Landroid/net/ConnectivityManager$PacketKeepaliveCallback;

    .line 2511
    invoke-virtual {p0}, Landroid/net/ConnectivityManager$PacketKeepaliveCallback;->onResumed()V

    .line 2512
    return-void
.end method

.method static synthetic blacklist lambda$onStarted$0(Landroid/net/ConnectivityManager$PacketKeepaliveCallback;)V
    .registers 1
    .param p0, "callback"    # Landroid/net/ConnectivityManager$PacketKeepaliveCallback;

    .line 2499
    invoke-virtual {p0}, Landroid/net/ConnectivityManager$PacketKeepaliveCallback;->onStarted()V

    .line 2500
    return-void
.end method

.method static synthetic blacklist lambda$onStopped$2(Landroid/net/ConnectivityManager$PacketKeepaliveCallback;)V
    .registers 1
    .param p0, "callback"    # Landroid/net/ConnectivityManager$PacketKeepaliveCallback;

    .line 2523
    invoke-virtual {p0}, Landroid/net/ConnectivityManager$PacketKeepaliveCallback;->onStopped()V

    .line 2524
    return-void
.end method


# virtual methods
.method public blacklist onDataReceived()V
    .registers 1

    .line 2561
    return-void
.end method

.method public blacklist onError(I)V
    .registers 7
    .param p1, "error"    # I

    .line 2546
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 2548
    .local v0, "token":J
    :try_start_4
    iget-object v2, p0, Landroid/net/ConnectivityManager$PacketKeepalive$1;->this$1:Landroid/net/ConnectivityManager$PacketKeepalive;

    invoke-static {v2}, Landroid/net/ConnectivityManager$PacketKeepalive;->-$$Nest$fgetmExecutor(Landroid/net/ConnectivityManager$PacketKeepalive;)Ljava/util/concurrent/ExecutorService;

    move-result-object v2

    iget-object v3, p0, Landroid/net/ConnectivityManager$PacketKeepalive$1;->val$callback:Landroid/net/ConnectivityManager$PacketKeepaliveCallback;

    new-instance v4, Landroid/net/ConnectivityManager$PacketKeepalive$1$$ExternalSyntheticLambda2;

    invoke-direct {v4, v3, p1}, Landroid/net/ConnectivityManager$PacketKeepalive$1$$ExternalSyntheticLambda2;-><init>(Landroid/net/ConnectivityManager$PacketKeepaliveCallback;I)V

    invoke-interface {v2, v4}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V
    :try_end_14
    .catchall {:try_start_4 .. :try_end_14} :catchall_22

    .line 2552
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2553
    nop

    .line 2554
    iget-object v2, p0, Landroid/net/ConnectivityManager$PacketKeepalive$1;->this$1:Landroid/net/ConnectivityManager$PacketKeepalive;

    invoke-static {v2}, Landroid/net/ConnectivityManager$PacketKeepalive;->-$$Nest$fgetmExecutor(Landroid/net/ConnectivityManager$PacketKeepalive;)Ljava/util/concurrent/ExecutorService;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    .line 2555
    return-void

    .line 2552
    :catchall_22
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2553
    throw v2
.end method

.method public blacklist onPaused()V
    .registers 6

    .line 2533
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 2535
    .local v0, "token":J
    :try_start_4
    iget-object v2, p0, Landroid/net/ConnectivityManager$PacketKeepalive$1;->this$1:Landroid/net/ConnectivityManager$PacketKeepalive;

    invoke-static {v2}, Landroid/net/ConnectivityManager$PacketKeepalive;->-$$Nest$fgetmExecutor(Landroid/net/ConnectivityManager$PacketKeepalive;)Ljava/util/concurrent/ExecutorService;

    move-result-object v2

    iget-object v3, p0, Landroid/net/ConnectivityManager$PacketKeepalive$1;->val$callback:Landroid/net/ConnectivityManager$PacketKeepaliveCallback;

    new-instance v4, Landroid/net/ConnectivityManager$PacketKeepalive$1$$ExternalSyntheticLambda1;

    invoke-direct {v4, v3}, Landroid/net/ConnectivityManager$PacketKeepalive$1$$ExternalSyntheticLambda1;-><init>(Landroid/net/ConnectivityManager$PacketKeepaliveCallback;)V

    invoke-interface {v2, v4}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V
    :try_end_14
    .catchall {:try_start_4 .. :try_end_14} :catchall_22

    .line 2539
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2540
    nop

    .line 2541
    iget-object v2, p0, Landroid/net/ConnectivityManager$PacketKeepalive$1;->this$1:Landroid/net/ConnectivityManager$PacketKeepalive;

    invoke-static {v2}, Landroid/net/ConnectivityManager$PacketKeepalive;->-$$Nest$fgetmExecutor(Landroid/net/ConnectivityManager$PacketKeepalive;)Ljava/util/concurrent/ExecutorService;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    .line 2542
    return-void

    .line 2539
    :catchall_22
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2540
    throw v2
.end method

.method public blacklist onResumed()V
    .registers 6

    .line 2508
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 2510
    .local v0, "token":J
    :try_start_4
    iget-object v2, p0, Landroid/net/ConnectivityManager$PacketKeepalive$1;->this$1:Landroid/net/ConnectivityManager$PacketKeepalive;

    invoke-static {v2}, Landroid/net/ConnectivityManager$PacketKeepalive;->-$$Nest$fgetmExecutor(Landroid/net/ConnectivityManager$PacketKeepalive;)Ljava/util/concurrent/ExecutorService;

    move-result-object v2

    iget-object v3, p0, Landroid/net/ConnectivityManager$PacketKeepalive$1;->val$callback:Landroid/net/ConnectivityManager$PacketKeepaliveCallback;

    new-instance v4, Landroid/net/ConnectivityManager$PacketKeepalive$1$$ExternalSyntheticLambda4;

    invoke-direct {v4, v3}, Landroid/net/ConnectivityManager$PacketKeepalive$1$$ExternalSyntheticLambda4;-><init>(Landroid/net/ConnectivityManager$PacketKeepaliveCallback;)V

    invoke-interface {v2, v4}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V
    :try_end_14
    .catchall {:try_start_4 .. :try_end_14} :catchall_19

    .line 2514
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2515
    nop

    .line 2516
    return-void

    .line 2514
    :catchall_19
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2515
    throw v2
.end method

.method public blacklist onStarted()V
    .registers 6

    .line 2496
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 2498
    .local v0, "token":J
    :try_start_4
    iget-object v2, p0, Landroid/net/ConnectivityManager$PacketKeepalive$1;->this$1:Landroid/net/ConnectivityManager$PacketKeepalive;

    invoke-static {v2}, Landroid/net/ConnectivityManager$PacketKeepalive;->-$$Nest$fgetmExecutor(Landroid/net/ConnectivityManager$PacketKeepalive;)Ljava/util/concurrent/ExecutorService;

    move-result-object v2

    iget-object v3, p0, Landroid/net/ConnectivityManager$PacketKeepalive$1;->val$callback:Landroid/net/ConnectivityManager$PacketKeepaliveCallback;

    new-instance v4, Landroid/net/ConnectivityManager$PacketKeepalive$1$$ExternalSyntheticLambda3;

    invoke-direct {v4, v3}, Landroid/net/ConnectivityManager$PacketKeepalive$1$$ExternalSyntheticLambda3;-><init>(Landroid/net/ConnectivityManager$PacketKeepaliveCallback;)V

    invoke-interface {v2, v4}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V
    :try_end_14
    .catchall {:try_start_4 .. :try_end_14} :catchall_19

    .line 2502
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2503
    nop

    .line 2504
    return-void

    .line 2502
    :catchall_19
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2503
    throw v2
.end method

.method public blacklist onStopped()V
    .registers 6

    .line 2520
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 2522
    .local v0, "token":J
    :try_start_4
    iget-object v2, p0, Landroid/net/ConnectivityManager$PacketKeepalive$1;->this$1:Landroid/net/ConnectivityManager$PacketKeepalive;

    invoke-static {v2}, Landroid/net/ConnectivityManager$PacketKeepalive;->-$$Nest$fgetmExecutor(Landroid/net/ConnectivityManager$PacketKeepalive;)Ljava/util/concurrent/ExecutorService;

    move-result-object v2

    iget-object v3, p0, Landroid/net/ConnectivityManager$PacketKeepalive$1;->val$callback:Landroid/net/ConnectivityManager$PacketKeepaliveCallback;

    new-instance v4, Landroid/net/ConnectivityManager$PacketKeepalive$1$$ExternalSyntheticLambda0;

    invoke-direct {v4, v3}, Landroid/net/ConnectivityManager$PacketKeepalive$1$$ExternalSyntheticLambda0;-><init>(Landroid/net/ConnectivityManager$PacketKeepaliveCallback;)V

    invoke-interface {v2, v4}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V
    :try_end_14
    .catchall {:try_start_4 .. :try_end_14} :catchall_22

    .line 2526
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2527
    nop

    .line 2528
    iget-object v2, p0, Landroid/net/ConnectivityManager$PacketKeepalive$1;->this$1:Landroid/net/ConnectivityManager$PacketKeepalive;

    invoke-static {v2}, Landroid/net/ConnectivityManager$PacketKeepalive;->-$$Nest$fgetmExecutor(Landroid/net/ConnectivityManager$PacketKeepalive;)Ljava/util/concurrent/ExecutorService;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    .line 2529
    return-void

    .line 2526
    :catchall_22
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2527
    throw v2
.end method
