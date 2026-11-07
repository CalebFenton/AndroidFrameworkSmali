.class final Landroid/net/thread/ThreadNetworkController$StateCallbackProxy;
.super Landroid/net/connectivity/android/net/thread/IStateCallback$Stub;
.source "ThreadNetworkController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/thread/ThreadNetworkController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "StateCallbackProxy"
.end annotation


# instance fields
.field private final blacklist mCallback:Landroid/net/thread/ThreadNetworkController$StateCallback;

.field private final blacklist mExecutor:Ljava/util/concurrent/Executor;


# direct methods
.method public static synthetic blacklist $r8$lambda$3ZLET1D0c_JgG4wPvkhdxY4Ad_M(Landroid/net/thread/ThreadNetworkController$StateCallbackProxy;I)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/net/thread/ThreadNetworkController$StateCallbackProxy;->lambda$onThreadEnableStateChanged$2(I)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$RCUe2iYcE6JgLm53zdO4eY0i1zo(Landroid/net/thread/ThreadNetworkController$StateCallbackProxy;I)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/net/thread/ThreadNetworkController$StateCallbackProxy;->lambda$onDeviceRoleChanged$0(I)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$fkMmF_VlaHcN0ggvL_VhMlG6ZeI(Landroid/net/thread/ThreadNetworkController$StateCallbackProxy;ILjava/lang/String;Ljava/time/Instant;)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Landroid/net/thread/ThreadNetworkController$StateCallbackProxy;->lambda$onEphemeralKeyStateChanged$3(ILjava/lang/String;Ljava/time/Instant;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$rYyTXRUaOZExPXbRnxtj3d2-XJE(Landroid/net/thread/ThreadNetworkController$StateCallbackProxy;J)V
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/net/thread/ThreadNetworkController$StateCallbackProxy;->lambda$onPartitionIdChanged$1(J)V

    return-void
.end method

.method constructor blacklist <init>(Ljava/util/concurrent/Executor;Landroid/net/thread/ThreadNetworkController$StateCallback;)V
    .registers 3
    .param p1, "executor"    # Ljava/util/concurrent/Executor;
    .param p2, "callback"    # Landroid/net/thread/ThreadNetworkController$StateCallback;

    .line 387
    invoke-direct {p0}, Landroid/net/connectivity/android/net/thread/IStateCallback$Stub;-><init>()V

    .line 388
    iput-object p1, p0, Landroid/net/thread/ThreadNetworkController$StateCallbackProxy;->mExecutor:Ljava/util/concurrent/Executor;

    .line 389
    iput-object p2, p0, Landroid/net/thread/ThreadNetworkController$StateCallbackProxy;->mCallback:Landroid/net/thread/ThreadNetworkController$StateCallback;

    .line 390
    return-void
.end method

.method private synthetic blacklist lambda$onDeviceRoleChanged$0(I)V
    .registers 3
    .param p1, "deviceRole"    # I

    .line 396
    iget-object v0, p0, Landroid/net/thread/ThreadNetworkController$StateCallbackProxy;->mCallback:Landroid/net/thread/ThreadNetworkController$StateCallback;

    invoke-interface {v0, p1}, Landroid/net/thread/ThreadNetworkController$StateCallback;->onDeviceRoleChanged(I)V

    return-void
.end method

.method private synthetic blacklist lambda$onEphemeralKeyStateChanged$3(ILjava/lang/String;Ljava/time/Instant;)V
    .registers 5
    .param p1, "ephemeralKeyState"    # I
    .param p2, "ephemeralKey"    # Ljava/lang/String;
    .param p3, "expiry"    # Ljava/time/Instant;

    .line 436
    iget-object v0, p0, Landroid/net/thread/ThreadNetworkController$StateCallbackProxy;->mCallback:Landroid/net/thread/ThreadNetworkController$StateCallback;

    invoke-interface {v0, p1, p2, p3}, Landroid/net/thread/ThreadNetworkController$StateCallback;->onEphemeralKeyStateChanged(ILjava/lang/String;Ljava/time/Instant;)V

    return-void
.end method

.method private synthetic blacklist lambda$onPartitionIdChanged$1(J)V
    .registers 4
    .param p1, "partitionId"    # J

    .line 406
    iget-object v0, p0, Landroid/net/thread/ThreadNetworkController$StateCallbackProxy;->mCallback:Landroid/net/thread/ThreadNetworkController$StateCallback;

    invoke-interface {v0, p1, p2}, Landroid/net/thread/ThreadNetworkController$StateCallback;->onPartitionIdChanged(J)V

    return-void
.end method

.method private synthetic blacklist lambda$onThreadEnableStateChanged$2(I)V
    .registers 3
    .param p1, "enabled"    # I

    .line 416
    iget-object v0, p0, Landroid/net/thread/ThreadNetworkController$StateCallbackProxy;->mCallback:Landroid/net/thread/ThreadNetworkController$StateCallback;

    invoke-interface {v0, p1}, Landroid/net/thread/ThreadNetworkController$StateCallback;->onThreadEnableStateChanged(I)V

    return-void
.end method


# virtual methods
.method public blacklist onDeviceRoleChanged(I)V
    .registers 6
    .param p1, "deviceRole"    # I

    .line 394
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 396
    .local v0, "identity":J
    :try_start_4
    iget-object v2, p0, Landroid/net/thread/ThreadNetworkController$StateCallbackProxy;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v3, Landroid/net/thread/ThreadNetworkController$StateCallbackProxy$$ExternalSyntheticLambda0;

    invoke-direct {v3, p0, p1}, Landroid/net/thread/ThreadNetworkController$StateCallbackProxy$$ExternalSyntheticLambda0;-><init>(Landroid/net/thread/ThreadNetworkController$StateCallbackProxy;I)V

    invoke-interface {v2, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_e
    .catchall {:try_start_4 .. :try_end_e} :catchall_13

    .line 398
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 399
    nop

    .line 400
    return-void

    .line 398
    :catchall_13
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 399
    throw v2
.end method

.method public blacklist onEphemeralKeyStateChanged(ILjava/lang/String;J)V
    .registers 10
    .param p1, "ephemeralKeyState"    # I
    .param p2, "ephemeralKey"    # Ljava/lang/String;
    .param p3, "lifetimeMillis"    # J

    .line 427
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 429
    .local v0, "identity":J
    if-nez p1, :cond_8

    .line 430
    const/4 v2, 0x0

    goto :goto_10

    .line 431
    :cond_8
    invoke-static {}, Ljava/time/Instant;->now()Ljava/time/Instant;

    move-result-object v2

    invoke-virtual {v2, p3, p4}, Ljava/time/Instant;->plusMillis(J)Ljava/time/Instant;

    move-result-object v2

    :goto_10
    nop

    .line 434
    .local v2, "expiry":Ljava/time/Instant;
    :try_start_11
    iget-object v3, p0, Landroid/net/thread/ThreadNetworkController$StateCallbackProxy;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v4, Landroid/net/thread/ThreadNetworkController$StateCallbackProxy$$ExternalSyntheticLambda1;

    invoke-direct {v4, p0, p1, p2, v2}, Landroid/net/thread/ThreadNetworkController$StateCallbackProxy$$ExternalSyntheticLambda1;-><init>(Landroid/net/thread/ThreadNetworkController$StateCallbackProxy;ILjava/lang/String;Ljava/time/Instant;)V

    invoke-interface {v3, v4}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_1b
    .catchall {:try_start_11 .. :try_end_1b} :catchall_20

    .line 439
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 440
    nop

    .line 441
    return-void

    .line 439
    :catchall_20
    move-exception v3

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 440
    throw v3
.end method

.method public blacklist onPartitionIdChanged(J)V
    .registers 7
    .param p1, "partitionId"    # J

    .line 404
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 406
    .local v0, "identity":J
    :try_start_4
    iget-object v2, p0, Landroid/net/thread/ThreadNetworkController$StateCallbackProxy;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v3, Landroid/net/thread/ThreadNetworkController$StateCallbackProxy$$ExternalSyntheticLambda3;

    invoke-direct {v3, p0, p1, p2}, Landroid/net/thread/ThreadNetworkController$StateCallbackProxy$$ExternalSyntheticLambda3;-><init>(Landroid/net/thread/ThreadNetworkController$StateCallbackProxy;J)V

    invoke-interface {v2, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_e
    .catchall {:try_start_4 .. :try_end_e} :catchall_13

    .line 408
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 409
    nop

    .line 410
    return-void

    .line 408
    :catchall_13
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 409
    throw v2
.end method

.method public blacklist onThreadEnableStateChanged(I)V
    .registers 6
    .param p1, "enabled"    # I

    .line 414
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 416
    .local v0, "identity":J
    :try_start_4
    iget-object v2, p0, Landroid/net/thread/ThreadNetworkController$StateCallbackProxy;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v3, Landroid/net/thread/ThreadNetworkController$StateCallbackProxy$$ExternalSyntheticLambda2;

    invoke-direct {v3, p0, p1}, Landroid/net/thread/ThreadNetworkController$StateCallbackProxy$$ExternalSyntheticLambda2;-><init>(Landroid/net/thread/ThreadNetworkController$StateCallbackProxy;I)V

    invoke-interface {v2, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_e
    .catchall {:try_start_4 .. :try_end_e} :catchall_13

    .line 418
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 419
    nop

    .line 420
    return-void

    .line 418
    :catchall_13
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 419
    throw v2
.end method
