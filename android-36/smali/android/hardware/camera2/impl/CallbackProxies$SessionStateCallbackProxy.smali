.class public Landroid/hardware/camera2/impl/CallbackProxies$SessionStateCallbackProxy;
.super Landroid/hardware/camera2/CameraCaptureSession$StateCallback;
.source "CallbackProxies.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/camera2/impl/CallbackProxies;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SessionStateCallbackProxy"
.end annotation


# instance fields
.field private final greylist-max-o mCallback:Landroid/hardware/camera2/CameraCaptureSession$StateCallback;

.field private final greylist-max-o mExecutor:Ljava/util/concurrent/Executor;


# direct methods
.method public static synthetic blacklist $r8$lambda$6MprumaxRWdG_Jed4-dtWaLUHoA(Landroid/hardware/camera2/impl/CallbackProxies$SessionStateCallbackProxy;Landroid/hardware/camera2/CameraCaptureSession;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/hardware/camera2/impl/CallbackProxies$SessionStateCallbackProxy;->lambda$onReady$2(Landroid/hardware/camera2/CameraCaptureSession;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$6h7km37R0IWtKK2XntIRyXpQj9o(Landroid/hardware/camera2/impl/CallbackProxies$SessionStateCallbackProxy;Landroid/hardware/camera2/CameraCaptureSession;Landroid/view/Surface;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/hardware/camera2/impl/CallbackProxies$SessionStateCallbackProxy;->lambda$onSurfacePrepared$6(Landroid/hardware/camera2/CameraCaptureSession;Landroid/view/Surface;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$VzCpHIb_-X_N8zK3gpnfmJsRWm4(Landroid/hardware/camera2/impl/CallbackProxies$SessionStateCallbackProxy;Landroid/hardware/camera2/CameraCaptureSession;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/hardware/camera2/impl/CallbackProxies$SessionStateCallbackProxy;->lambda$onClosed$5(Landroid/hardware/camera2/CameraCaptureSession;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$_n4IjoKfaLTNPhb0V-jusXTXwVU(Landroid/hardware/camera2/impl/CallbackProxies$SessionStateCallbackProxy;Landroid/hardware/camera2/CameraCaptureSession;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/hardware/camera2/impl/CallbackProxies$SessionStateCallbackProxy;->lambda$onConfigured$0(Landroid/hardware/camera2/CameraCaptureSession;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$f362TqucHTvYFGdSPm8wNRN5KpA(Landroid/hardware/camera2/impl/CallbackProxies$SessionStateCallbackProxy;Landroid/hardware/camera2/CameraCaptureSession;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/hardware/camera2/impl/CallbackProxies$SessionStateCallbackProxy;->lambda$onConfigureFailed$1(Landroid/hardware/camera2/CameraCaptureSession;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$mgV6mCLxzsNuUyI_FEI9NsggPT4(Landroid/hardware/camera2/impl/CallbackProxies$SessionStateCallbackProxy;Landroid/hardware/camera2/CameraCaptureSession;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/hardware/camera2/impl/CallbackProxies$SessionStateCallbackProxy;->lambda$onActive$3(Landroid/hardware/camera2/CameraCaptureSession;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$tdyatCK_MHbw-nZa7bGnsTkd4P0(Landroid/hardware/camera2/impl/CallbackProxies$SessionStateCallbackProxy;Landroid/hardware/camera2/CameraCaptureSession;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/hardware/camera2/impl/CallbackProxies$SessionStateCallbackProxy;->lambda$onCaptureQueueEmpty$4(Landroid/hardware/camera2/CameraCaptureSession;)V

    return-void
.end method

.method public constructor greylist-max-o <init>(Ljava/util/concurrent/Executor;Landroid/hardware/camera2/CameraCaptureSession$StateCallback;)V
    .registers 4
    .param p1, "executor"    # Ljava/util/concurrent/Executor;
    .param p2, "callback"    # Landroid/hardware/camera2/CameraCaptureSession$StateCallback;

    .line 44
    invoke-direct {p0}, Landroid/hardware/camera2/CameraCaptureSession$StateCallback;-><init>()V

    .line 45
    const-string v0, "executor must not be null"

    invoke-static {p1, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/Executor;

    iput-object v0, p0, Landroid/hardware/camera2/impl/CallbackProxies$SessionStateCallbackProxy;->mExecutor:Ljava/util/concurrent/Executor;

    .line 46
    const-string v0, "callback must not be null"

    invoke-static {p2, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/camera2/CameraCaptureSession$StateCallback;

    iput-object v0, p0, Landroid/hardware/camera2/impl/CallbackProxies$SessionStateCallbackProxy;->mCallback:Landroid/hardware/camera2/CameraCaptureSession$StateCallback;

    .line 47
    return-void
.end method

.method private synthetic blacklist lambda$onActive$3(Landroid/hardware/camera2/CameraCaptureSession;)V
    .registers 3
    .param p1, "session"    # Landroid/hardware/camera2/CameraCaptureSession;

    .line 84
    iget-object v0, p0, Landroid/hardware/camera2/impl/CallbackProxies$SessionStateCallbackProxy;->mCallback:Landroid/hardware/camera2/CameraCaptureSession$StateCallback;

    invoke-virtual {v0, p1}, Landroid/hardware/camera2/CameraCaptureSession$StateCallback;->onActive(Landroid/hardware/camera2/CameraCaptureSession;)V

    return-void
.end method

.method private synthetic blacklist lambda$onCaptureQueueEmpty$4(Landroid/hardware/camera2/CameraCaptureSession;)V
    .registers 3
    .param p1, "session"    # Landroid/hardware/camera2/CameraCaptureSession;

    .line 94
    iget-object v0, p0, Landroid/hardware/camera2/impl/CallbackProxies$SessionStateCallbackProxy;->mCallback:Landroid/hardware/camera2/CameraCaptureSession$StateCallback;

    invoke-virtual {v0, p1}, Landroid/hardware/camera2/CameraCaptureSession$StateCallback;->onCaptureQueueEmpty(Landroid/hardware/camera2/CameraCaptureSession;)V

    return-void
.end method

.method private synthetic blacklist lambda$onClosed$5(Landroid/hardware/camera2/CameraCaptureSession;)V
    .registers 3
    .param p1, "session"    # Landroid/hardware/camera2/CameraCaptureSession;

    .line 104
    iget-object v0, p0, Landroid/hardware/camera2/impl/CallbackProxies$SessionStateCallbackProxy;->mCallback:Landroid/hardware/camera2/CameraCaptureSession$StateCallback;

    invoke-virtual {v0, p1}, Landroid/hardware/camera2/CameraCaptureSession$StateCallback;->onClosed(Landroid/hardware/camera2/CameraCaptureSession;)V

    return-void
.end method

.method private synthetic blacklist lambda$onConfigureFailed$1(Landroid/hardware/camera2/CameraCaptureSession;)V
    .registers 3
    .param p1, "session"    # Landroid/hardware/camera2/CameraCaptureSession;

    .line 64
    iget-object v0, p0, Landroid/hardware/camera2/impl/CallbackProxies$SessionStateCallbackProxy;->mCallback:Landroid/hardware/camera2/CameraCaptureSession$StateCallback;

    invoke-virtual {v0, p1}, Landroid/hardware/camera2/CameraCaptureSession$StateCallback;->onConfigureFailed(Landroid/hardware/camera2/CameraCaptureSession;)V

    return-void
.end method

.method private synthetic blacklist lambda$onConfigured$0(Landroid/hardware/camera2/CameraCaptureSession;)V
    .registers 3
    .param p1, "session"    # Landroid/hardware/camera2/CameraCaptureSession;

    .line 53
    iget-object v0, p0, Landroid/hardware/camera2/impl/CallbackProxies$SessionStateCallbackProxy;->mCallback:Landroid/hardware/camera2/CameraCaptureSession$StateCallback;

    invoke-virtual {v0, p1}, Landroid/hardware/camera2/CameraCaptureSession$StateCallback;->onConfigured(Landroid/hardware/camera2/CameraCaptureSession;)V

    return-void
.end method

.method private synthetic blacklist lambda$onReady$2(Landroid/hardware/camera2/CameraCaptureSession;)V
    .registers 3
    .param p1, "session"    # Landroid/hardware/camera2/CameraCaptureSession;

    .line 74
    iget-object v0, p0, Landroid/hardware/camera2/impl/CallbackProxies$SessionStateCallbackProxy;->mCallback:Landroid/hardware/camera2/CameraCaptureSession$StateCallback;

    invoke-virtual {v0, p1}, Landroid/hardware/camera2/CameraCaptureSession$StateCallback;->onReady(Landroid/hardware/camera2/CameraCaptureSession;)V

    return-void
.end method

.method private synthetic blacklist lambda$onSurfacePrepared$6(Landroid/hardware/camera2/CameraCaptureSession;Landroid/view/Surface;)V
    .registers 4
    .param p1, "session"    # Landroid/hardware/camera2/CameraCaptureSession;
    .param p2, "surface"    # Landroid/view/Surface;

    .line 114
    iget-object v0, p0, Landroid/hardware/camera2/impl/CallbackProxies$SessionStateCallbackProxy;->mCallback:Landroid/hardware/camera2/CameraCaptureSession$StateCallback;

    invoke-virtual {v0, p1, p2}, Landroid/hardware/camera2/CameraCaptureSession$StateCallback;->onSurfacePrepared(Landroid/hardware/camera2/CameraCaptureSession;Landroid/view/Surface;)V

    return-void
.end method


# virtual methods
.method public whitelist onActive(Landroid/hardware/camera2/CameraCaptureSession;)V
    .registers 6
    .param p1, "session"    # Landroid/hardware/camera2/CameraCaptureSession;

    .line 82
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 84
    .local v0, "ident":J
    :try_start_4
    iget-object v2, p0, Landroid/hardware/camera2/impl/CallbackProxies$SessionStateCallbackProxy;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v3, Landroid/hardware/camera2/impl/CallbackProxies$SessionStateCallbackProxy$$ExternalSyntheticLambda2;

    invoke-direct {v3, p0, p1}, Landroid/hardware/camera2/impl/CallbackProxies$SessionStateCallbackProxy$$ExternalSyntheticLambda2;-><init>(Landroid/hardware/camera2/impl/CallbackProxies$SessionStateCallbackProxy;Landroid/hardware/camera2/CameraCaptureSession;)V

    invoke-interface {v2, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_e
    .catchall {:try_start_4 .. :try_end_e} :catchall_13

    .line 86
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 87
    nop

    .line 88
    return-void

    .line 86
    :catchall_13
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 87
    throw v2
.end method

.method public whitelist onCaptureQueueEmpty(Landroid/hardware/camera2/CameraCaptureSession;)V
    .registers 6
    .param p1, "session"    # Landroid/hardware/camera2/CameraCaptureSession;

    .line 92
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 94
    .local v0, "ident":J
    :try_start_4
    iget-object v2, p0, Landroid/hardware/camera2/impl/CallbackProxies$SessionStateCallbackProxy;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v3, Landroid/hardware/camera2/impl/CallbackProxies$SessionStateCallbackProxy$$ExternalSyntheticLambda3;

    invoke-direct {v3, p0, p1}, Landroid/hardware/camera2/impl/CallbackProxies$SessionStateCallbackProxy$$ExternalSyntheticLambda3;-><init>(Landroid/hardware/camera2/impl/CallbackProxies$SessionStateCallbackProxy;Landroid/hardware/camera2/CameraCaptureSession;)V

    invoke-interface {v2, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_e
    .catchall {:try_start_4 .. :try_end_e} :catchall_13

    .line 96
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 97
    nop

    .line 98
    return-void

    .line 96
    :catchall_13
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 97
    throw v2
.end method

.method public whitelist onClosed(Landroid/hardware/camera2/CameraCaptureSession;)V
    .registers 6
    .param p1, "session"    # Landroid/hardware/camera2/CameraCaptureSession;

    .line 102
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 104
    .local v0, "ident":J
    :try_start_4
    iget-object v2, p0, Landroid/hardware/camera2/impl/CallbackProxies$SessionStateCallbackProxy;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v3, Landroid/hardware/camera2/impl/CallbackProxies$SessionStateCallbackProxy$$ExternalSyntheticLambda4;

    invoke-direct {v3, p0, p1}, Landroid/hardware/camera2/impl/CallbackProxies$SessionStateCallbackProxy$$ExternalSyntheticLambda4;-><init>(Landroid/hardware/camera2/impl/CallbackProxies$SessionStateCallbackProxy;Landroid/hardware/camera2/CameraCaptureSession;)V

    invoke-interface {v2, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_e
    .catchall {:try_start_4 .. :try_end_e} :catchall_13

    .line 106
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 107
    nop

    .line 108
    return-void

    .line 106
    :catchall_13
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 107
    throw v2
.end method

.method public whitelist onConfigureFailed(Landroid/hardware/camera2/CameraCaptureSession;)V
    .registers 6
    .param p1, "session"    # Landroid/hardware/camera2/CameraCaptureSession;

    .line 62
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 64
    .local v0, "ident":J
    :try_start_4
    iget-object v2, p0, Landroid/hardware/camera2/impl/CallbackProxies$SessionStateCallbackProxy;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v3, Landroid/hardware/camera2/impl/CallbackProxies$SessionStateCallbackProxy$$ExternalSyntheticLambda1;

    invoke-direct {v3, p0, p1}, Landroid/hardware/camera2/impl/CallbackProxies$SessionStateCallbackProxy$$ExternalSyntheticLambda1;-><init>(Landroid/hardware/camera2/impl/CallbackProxies$SessionStateCallbackProxy;Landroid/hardware/camera2/CameraCaptureSession;)V

    invoke-interface {v2, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_e
    .catchall {:try_start_4 .. :try_end_e} :catchall_13

    .line 66
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 67
    nop

    .line 68
    return-void

    .line 66
    :catchall_13
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 67
    throw v2
.end method

.method public whitelist onConfigured(Landroid/hardware/camera2/CameraCaptureSession;)V
    .registers 6
    .param p1, "session"    # Landroid/hardware/camera2/CameraCaptureSession;

    .line 51
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 53
    .local v0, "ident":J
    :try_start_4
    iget-object v2, p0, Landroid/hardware/camera2/impl/CallbackProxies$SessionStateCallbackProxy;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v3, Landroid/hardware/camera2/impl/CallbackProxies$SessionStateCallbackProxy$$ExternalSyntheticLambda5;

    invoke-direct {v3, p0, p1}, Landroid/hardware/camera2/impl/CallbackProxies$SessionStateCallbackProxy$$ExternalSyntheticLambda5;-><init>(Landroid/hardware/camera2/impl/CallbackProxies$SessionStateCallbackProxy;Landroid/hardware/camera2/CameraCaptureSession;)V

    invoke-interface {v2, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_e
    .catchall {:try_start_4 .. :try_end_e} :catchall_13

    .line 55
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 56
    nop

    .line 57
    return-void

    .line 55
    :catchall_13
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 56
    throw v2
.end method

.method public whitelist onReady(Landroid/hardware/camera2/CameraCaptureSession;)V
    .registers 6
    .param p1, "session"    # Landroid/hardware/camera2/CameraCaptureSession;

    .line 72
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 74
    .local v0, "ident":J
    :try_start_4
    iget-object v2, p0, Landroid/hardware/camera2/impl/CallbackProxies$SessionStateCallbackProxy;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v3, Landroid/hardware/camera2/impl/CallbackProxies$SessionStateCallbackProxy$$ExternalSyntheticLambda6;

    invoke-direct {v3, p0, p1}, Landroid/hardware/camera2/impl/CallbackProxies$SessionStateCallbackProxy$$ExternalSyntheticLambda6;-><init>(Landroid/hardware/camera2/impl/CallbackProxies$SessionStateCallbackProxy;Landroid/hardware/camera2/CameraCaptureSession;)V

    invoke-interface {v2, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_e
    .catchall {:try_start_4 .. :try_end_e} :catchall_13

    .line 76
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 77
    nop

    .line 78
    return-void

    .line 76
    :catchall_13
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 77
    throw v2
.end method

.method public whitelist onSurfacePrepared(Landroid/hardware/camera2/CameraCaptureSession;Landroid/view/Surface;)V
    .registers 7
    .param p1, "session"    # Landroid/hardware/camera2/CameraCaptureSession;
    .param p2, "surface"    # Landroid/view/Surface;

    .line 112
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 114
    .local v0, "ident":J
    :try_start_4
    iget-object v2, p0, Landroid/hardware/camera2/impl/CallbackProxies$SessionStateCallbackProxy;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v3, Landroid/hardware/camera2/impl/CallbackProxies$SessionStateCallbackProxy$$ExternalSyntheticLambda0;

    invoke-direct {v3, p0, p1, p2}, Landroid/hardware/camera2/impl/CallbackProxies$SessionStateCallbackProxy$$ExternalSyntheticLambda0;-><init>(Landroid/hardware/camera2/impl/CallbackProxies$SessionStateCallbackProxy;Landroid/hardware/camera2/CameraCaptureSession;Landroid/view/Surface;)V

    invoke-interface {v2, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_e
    .catchall {:try_start_4 .. :try_end_e} :catchall_13

    .line 116
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 117
    nop

    .line 118
    return-void

    .line 116
    :catchall_13
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 117
    throw v2
.end method
